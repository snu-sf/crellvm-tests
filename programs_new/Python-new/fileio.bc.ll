; ModuleID = 'irs-onlybc/fileio.bc'
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
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }

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
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !395, metadata !958), !dbg !959
  %0 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !960, !tbaa !954
  %1 = bitcast %struct._object* %0 to %struct.fileio*, !dbg !961
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %1, i32 0, i32 1, !dbg !962
  %2 = load i32, i32* %fd, align 4, !dbg !962, !tbaa !963
  %cmp = icmp slt i32 %2, 0, !dbg !968
  %conv = zext i1 %cmp to i32, !dbg !968
  ret i32 %conv, !dbg !969
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal void @fileio_dealloc(%struct.fileio* %self) #0 {
entry:
  %self.addr = alloca %struct.fileio*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct.fileio** %self.addr, metadata !400, metadata !958), !dbg !970
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !971, !tbaa !954
  %finalizing = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i32 0, i32 3, !dbg !972
  store i8 1, i8* %finalizing, align 1, !dbg !973, !tbaa !974
  %1 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !975, !tbaa !954
  %2 = bitcast %struct.fileio* %1 to %struct._object*, !dbg !977
  %call = call i32 @_PyIOBase_finalize(%struct._object* %2), !dbg !978
  %cmp = icmp slt i32 %call, 0, !dbg !979
  br i1 %cmp, label %if.then, label %if.end, !dbg !980

if.then:                                          ; preds = %entry
  br label %return, !dbg !981

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !982

do.body:                                          ; preds = %if.end
  %3 = bitcast %union._gc_head** %g to i8*, !dbg !983
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !983
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !401, metadata !958), !dbg !985
  %4 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !986, !tbaa !954
  %5 = bitcast %struct.fileio* %4 to %union._gc_head*, !dbg !987
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %5, i64 -1, !dbg !988
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8, !dbg !985, !tbaa !954
  br label %do.body.1, !dbg !989

do.body.1:                                        ; preds = %do.body
  %6 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !990, !tbaa !954
  %gc = bitcast %union._gc_head* %6 to %struct.anon*, !dbg !993
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !994
  %7 = load i64, i64* %gc_refs, align 8, !dbg !994, !tbaa !995
  %and = and i64 %7, 1, !dbg !997
  %or = or i64 %and, -4, !dbg !998
  %8 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !999, !tbaa !954
  %gc2 = bitcast %union._gc_head* %8 to %struct.anon*, !dbg !1000
  %gc_refs3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2, !dbg !1001
  store i64 %or, i64* %gc_refs3, align 8, !dbg !1002, !tbaa !995
  br label %do.cond, !dbg !1003

do.cond:                                          ; preds = %do.body.1
  br label %do.end, !dbg !1004

do.end:                                           ; preds = %do.cond
  %9 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1006, !tbaa !954
  %gc4 = bitcast %union._gc_head* %9 to %struct.anon*, !dbg !1008
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 0, !dbg !1009
  %10 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !1009, !tbaa !1010
  %11 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1011, !tbaa !954
  %gc5 = bitcast %union._gc_head* %11 to %struct.anon*, !dbg !1012
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 1, !dbg !1013
  %12 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !1013, !tbaa !1014
  %gc6 = bitcast %union._gc_head* %12 to %struct.anon*, !dbg !1015
  %gc_next7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 0, !dbg !1016
  store %union._gc_head* %10, %union._gc_head** %gc_next7, align 8, !dbg !1017, !tbaa !1010
  %13 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1018, !tbaa !954
  %gc8 = bitcast %union._gc_head* %13 to %struct.anon*, !dbg !1019
  %gc_prev9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1, !dbg !1020
  %14 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8, !dbg !1020, !tbaa !1014
  %15 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1021, !tbaa !954
  %gc10 = bitcast %union._gc_head* %15 to %struct.anon*, !dbg !1022
  %gc_next11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 0, !dbg !1023
  %16 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8, !dbg !1023, !tbaa !1010
  %gc12 = bitcast %union._gc_head* %16 to %struct.anon*, !dbg !1024
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 1, !dbg !1025
  store %union._gc_head* %14, %union._gc_head** %gc_prev13, align 8, !dbg !1026, !tbaa !1014
  %17 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1027, !tbaa !954
  %gc14 = bitcast %union._gc_head* %17 to %struct.anon*, !dbg !1028
  %gc_next15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 0, !dbg !1029
  store %union._gc_head* null, %union._gc_head** %gc_next15, align 8, !dbg !1030, !tbaa !1010
  %18 = bitcast %union._gc_head** %g to i8*, !dbg !1031
  call void @llvm.lifetime.end(i64 8, i8* %18) #3, !dbg !1031
  br label %do.end.17, !dbg !1032

do.end.17:                                        ; preds = %do.end
  %19 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !1033, !tbaa !954
  %weakreflist = getelementptr inbounds %struct.fileio, %struct.fileio* %19, i32 0, i32 4, !dbg !1035
  %20 = load %struct._object*, %struct._object** %weakreflist, align 8, !dbg !1035, !tbaa !1036
  %cmp18 = icmp ne %struct._object* %20, null, !dbg !1037
  br i1 %cmp18, label %if.then.19, label %if.end.20, !dbg !1038

if.then.19:                                       ; preds = %do.end.17
  %21 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !1039, !tbaa !954
  %22 = bitcast %struct.fileio* %21 to %struct._object*, !dbg !1040
  call void @PyObject_ClearWeakRefs(%struct._object* %22), !dbg !1041
  br label %if.end.20, !dbg !1041

if.end.20:                                        ; preds = %if.then.19, %do.end.17
  br label %do.body.21, !dbg !1042

do.body.21:                                       ; preds = %if.end.20
  %23 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1043
  call void @llvm.lifetime.start(i64 8, i8* %23) #3, !dbg !1043
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !403, metadata !958), !dbg !1045
  %24 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !1046, !tbaa !954
  %dict = getelementptr inbounds %struct.fileio, %struct.fileio* %24, i32 0, i32 5, !dbg !1047
  %25 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1047, !tbaa !1048
  store %struct._object* %25, %struct._object** %_py_tmp, align 8, !dbg !1045, !tbaa !954
  %26 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1049, !tbaa !954
  %cmp22 = icmp ne %struct._object* %26, null, !dbg !1050
  br i1 %cmp22, label %if.then.23, label %if.end.31, !dbg !1051

if.then.23:                                       ; preds = %do.body.21
  %27 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !1052, !tbaa !954
  %dict24 = getelementptr inbounds %struct.fileio, %struct.fileio* %27, i32 0, i32 5, !dbg !1054
  store %struct._object* null, %struct._object** %dict24, align 8, !dbg !1055, !tbaa !1048
  br label %do.body.25, !dbg !1056

do.body.25:                                       ; preds = %if.then.23
  %28 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1057
  call void @llvm.lifetime.start(i64 8, i8* %28) #3, !dbg !1057
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !405, metadata !958), !dbg !1059
  %29 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1060, !tbaa !954
  store %struct._object* %29, %struct._object** %_py_decref_tmp, align 8, !dbg !1059, !tbaa !954
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1061, !tbaa !954
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0, !dbg !1063
  %31 = load i64, i64* %ob_refcnt, align 8, !dbg !1064, !tbaa !1065
  %dec = add i64 %31, -1, !dbg !1064
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1064, !tbaa !1065
  %cmp26 = icmp ne i64 %dec, 0, !dbg !1066
  br i1 %cmp26, label %if.then.27, label %if.else, !dbg !1067

if.then.27:                                       ; preds = %do.body.25
  br label %if.end.28, !dbg !1068

if.else:                                          ; preds = %do.body.25
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1070, !tbaa !954
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1, !dbg !1072
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1072, !tbaa !1073
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4, !dbg !1074
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1074, !tbaa !1075
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1078, !tbaa !954
  call void %34(%struct._object* %35), !dbg !1079
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.27
  %36 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1080
  call void @llvm.lifetime.end(i64 8, i8* %36) #3, !dbg !1080
  br label %do.cond.29, !dbg !1082

do.cond.29:                                       ; preds = %if.end.28
  br label %do.end.30, !dbg !1083

do.end.30:                                        ; preds = %do.cond.29
  br label %if.end.31, !dbg !1085

if.end.31:                                        ; preds = %do.end.30, %do.body.21
  %37 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1087
  call void @llvm.lifetime.end(i64 8, i8* %37) #3, !dbg !1087
  br label %do.end.33, !dbg !1090

do.end.33:                                        ; preds = %if.end.31
  %38 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !1091, !tbaa !954
  %39 = bitcast %struct.fileio* %38 to %struct._object*, !dbg !1092
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1, !dbg !1093
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8, !dbg !1093, !tbaa !1073
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 38, !dbg !1094
  %41 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !1094, !tbaa !1095
  %42 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !1096, !tbaa !954
  %43 = bitcast %struct.fileio* %42 to %struct._object*, !dbg !1097
  %44 = bitcast %struct._object* %43 to i8*, !dbg !1097
  call void %41(i8* %44), !dbg !1098
  br label %return, !dbg !1099

return:                                           ; preds = %do.end.33, %if.then
  ret void, !dbg !1100
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_repr(%struct.fileio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.fileio*, align 8
  %nameobj = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct.fileio** %self.addr, metadata !413, metadata !958), !dbg !1102
  %0 = bitcast %struct._object** %nameobj to i8*, !dbg !1103
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1103
  call void @llvm.dbg.declare(metadata %struct._object** %nameobj, metadata !414, metadata !958), !dbg !1104
  %1 = bitcast %struct._object** %res to i8*, !dbg !1103
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1103
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !415, metadata !958), !dbg !1105
  %2 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !1106, !tbaa !954
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %2, i32 0, i32 1, !dbg !1108
  %3 = load i32, i32* %fd, align 4, !dbg !1108, !tbaa !963
  %cmp = icmp slt i32 %3, 0, !dbg !1109
  br i1 %cmp, label %if.then, label %if.end, !dbg !1110

if.then:                                          ; preds = %entry
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0)), !dbg !1111
  store %struct._object* %call, %struct._object** %retval, !dbg !1112
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1112

if.end:                                           ; preds = %entry
  %4 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !1113, !tbaa !954
  %5 = bitcast %struct.fileio* %4 to %struct._object*, !dbg !1114
  %call1 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %5, %struct._Py_Identifier* @PyId_name), !dbg !1115
  store %struct._object* %call1, %struct._object** %nameobj, align 8, !dbg !1116, !tbaa !954
  %6 = load %struct._object*, %struct._object** %nameobj, align 8, !dbg !1117, !tbaa !954
  %cmp2 = icmp eq %struct._object* %6, null, !dbg !1118
  br i1 %cmp2, label %if.then.3, label %if.else.10, !dbg !1119

if.then.3:                                        ; preds = %if.end
  %7 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8, !dbg !1120, !tbaa !954
  %call4 = call i32 @PyErr_ExceptionMatches(%struct._object* %7), !dbg !1123
  %tobool = icmp ne i32 %call4, 0, !dbg !1123
  br i1 %tobool, label %if.then.5, label %if.else, !dbg !1124

if.then.5:                                        ; preds = %if.then.3
  call void @PyErr_Clear(), !dbg !1125
  br label %if.end.6, !dbg !1125

if.else:                                          ; preds = %if.then.3
  store %struct._object* null, %struct._object** %retval, !dbg !1126
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1126

if.end.6:                                         ; preds = %if.then.5
  %8 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !1127, !tbaa !954
  %fd7 = getelementptr inbounds %struct.fileio, %struct.fileio* %8, i32 0, i32 1, !dbg !1128
  %9 = load i32, i32* %fd7, align 4, !dbg !1128, !tbaa !963
  %10 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !1129, !tbaa !954
  %call8 = call i8* @mode_string(%struct.fileio* %10), !dbg !1130
  %call9 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 %9, i8* %call8), !dbg !1131
  store %struct._object* %call9, %struct._object** %res, align 8, !dbg !1132, !tbaa !954
  br label %if.end.17, !dbg !1133

if.else.10:                                       ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %nameobj, align 8, !dbg !1134, !tbaa !954
  %12 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !1135, !tbaa !954
  %call11 = call i8* @mode_string(%struct.fileio* %12), !dbg !1136
  %call12 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), %struct._object* %11, i8* %call11), !dbg !1137
  store %struct._object* %call12, %struct._object** %res, align 8, !dbg !1138, !tbaa !954
  br label %do.body, !dbg !1139

do.body:                                          ; preds = %if.else.10
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1140
  call void @llvm.lifetime.start(i64 8, i8* %13) #3, !dbg !1140
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !416, metadata !958), !dbg !1142
  %14 = load %struct._object*, %struct._object** %nameobj, align 8, !dbg !1143, !tbaa !954
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8, !dbg !1142, !tbaa !954
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1144, !tbaa !954
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !1146
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !1147, !tbaa !1065
  %dec = add i64 %16, -1, !dbg !1147
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1147, !tbaa !1065
  %cmp13 = icmp ne i64 %dec, 0, !dbg !1148
  br i1 %cmp13, label %if.then.14, label %if.else.15, !dbg !1149

if.then.14:                                       ; preds = %do.body
  br label %if.end.16, !dbg !1150

if.else.15:                                       ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1152, !tbaa !954
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !1154
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1154, !tbaa !1073
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4, !dbg !1155
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1155, !tbaa !1075
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1156, !tbaa !954
  call void %19(%struct._object* %20), !dbg !1157
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.15, %if.then.14
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1158
  call void @llvm.lifetime.end(i64 8, i8* %21) #3, !dbg !1158
  br label %do.cond, !dbg !1160

do.cond:                                          ; preds = %if.end.16
  br label %do.end, !dbg !1161

do.end:                                           ; preds = %do.cond
  br label %if.end.17

if.end.17:                                        ; preds = %do.end, %if.end.6
  %22 = load %struct._object*, %struct._object** %res, align 8, !dbg !1163, !tbaa !954
  store %struct._object* %22, %struct._object** %retval, !dbg !1164
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1164

cleanup:                                          ; preds = %if.end.17, %if.else, %if.then
  %23 = bitcast %struct._object** %res to i8*, !dbg !1165
  call void @llvm.lifetime.end(i64 8, i8* %23) #3, !dbg !1165
  %24 = bitcast %struct._object** %nameobj to i8*, !dbg !1165
  call void @llvm.lifetime.end(i64 8, i8* %24) #3, !dbg !1165
  %25 = load %struct._object*, %struct._object** %retval, !dbg !1165
  ret %struct._object* %25, !dbg !1165
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define internal i32 @fileio_traverse(%struct.fileio* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.fileio*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct.fileio** %self.addr, metadata !429, metadata !958), !dbg !1166
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !430, metadata !958), !dbg !1167
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !431, metadata !958), !dbg !1168
  br label %do.body, !dbg !1169

do.body:                                          ; preds = %entry
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !1170, !tbaa !954
  %dict = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i32 0, i32 5, !dbg !1172
  %1 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1172, !tbaa !1048
  %tobool = icmp ne %struct._object* %1, null, !dbg !1173
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !1174

if.then:                                          ; preds = %do.body
  %2 = bitcast i32* %vret to i8*, !dbg !1175
  call void @llvm.lifetime.start(i64 4, i8* %2) #3, !dbg !1175
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !432, metadata !958), !dbg !1177
  %3 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !1178, !tbaa !954
  %4 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !1179, !tbaa !954
  %dict1 = getelementptr inbounds %struct.fileio, %struct.fileio* %4, i32 0, i32 5, !dbg !1180
  %5 = load %struct._object*, %struct._object** %dict1, align 8, !dbg !1180, !tbaa !1048
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !1181, !tbaa !954
  %call = call i32 %3(%struct._object* %5, i8* %6), !dbg !1178
  store i32 %call, i32* %vret, align 4, !dbg !1177, !tbaa !1182
  %7 = load i32, i32* %vret, align 4, !dbg !1183, !tbaa !1182
  %tobool2 = icmp ne i32 %7, 0, !dbg !1183
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !1185

if.then.3:                                        ; preds = %if.then
  %8 = load i32, i32* %vret, align 4, !dbg !1186, !tbaa !1182
  store i32 %8, i32* %retval, !dbg !1188
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1188

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !1189
  br label %cleanup, !dbg !1189

cleanup:                                          ; preds = %if.end, %if.then.3
  %9 = bitcast i32* %vret to i8*, !dbg !1191
  call void @llvm.lifetime.end(i64 4, i8* %9) #3, !dbg !1191
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.4, !dbg !1194

if.end.4:                                         ; preds = %cleanup.cont, %do.body
  br label %do.end, !dbg !1195

do.end:                                           ; preds = %if.end.4
  store i32 0, i32* %retval, !dbg !1198
  br label %return, !dbg !1198

return:                                           ; preds = %do.end, %cleanup
  %10 = load i32, i32* %retval, !dbg !1199
  ret i32 %10, !dbg !1199

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @fileio_clear(%struct.fileio* %self) #0 {
entry:
  %self.addr = alloca %struct.fileio*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct.fileio** %self.addr, metadata !440, metadata !958), !dbg !1200
  br label %do.body, !dbg !1201

do.body:                                          ; preds = %entry
  %0 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1202
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1202
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !441, metadata !958), !dbg !1204
  %1 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !1205, !tbaa !954
  %dict = getelementptr inbounds %struct.fileio, %struct.fileio* %1, i32 0, i32 5, !dbg !1206
  %2 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1206, !tbaa !1048
  store %struct._object* %2, %struct._object** %_py_tmp, align 8, !dbg !1204, !tbaa !954
  %3 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1207, !tbaa !954
  %cmp = icmp ne %struct._object* %3, null, !dbg !1208
  br i1 %cmp, label %if.then, label %if.end.5, !dbg !1209

if.then:                                          ; preds = %do.body
  %4 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !1210, !tbaa !954
  %dict1 = getelementptr inbounds %struct.fileio, %struct.fileio* %4, i32 0, i32 5, !dbg !1212
  store %struct._object* null, %struct._object** %dict1, align 8, !dbg !1213, !tbaa !1048
  br label %do.body.2, !dbg !1214

do.body.2:                                        ; preds = %if.then
  %5 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1215
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !1215
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !443, metadata !958), !dbg !1217
  %6 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1218, !tbaa !954
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8, !dbg !1217, !tbaa !954
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1219, !tbaa !954
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !1221
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !1222, !tbaa !1065
  %dec = add i64 %8, -1, !dbg !1222
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1222, !tbaa !1065
  %cmp3 = icmp ne i64 %dec, 0, !dbg !1223
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !1224

if.then.4:                                        ; preds = %do.body.2
  br label %if.end, !dbg !1225

if.else:                                          ; preds = %do.body.2
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1227, !tbaa !954
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !1229
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1229, !tbaa !1073
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4, !dbg !1230
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1230, !tbaa !1075
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1231, !tbaa !954
  call void %11(%struct._object* %12), !dbg !1232
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1233
  call void @llvm.lifetime.end(i64 8, i8* %13) #3, !dbg !1233
  br label %do.cond, !dbg !1235

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1236

do.end:                                           ; preds = %do.cond
  br label %if.end.5, !dbg !1238

if.end.5:                                         ; preds = %do.end, %do.body
  %14 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1240
  call void @llvm.lifetime.end(i64 8, i8* %14) #3, !dbg !1240
  br label %do.end.7, !dbg !1243

do.end.7:                                         ; preds = %if.end.5
  ret i32 0, !dbg !1244
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
  %cleanup.dest.slot = alloca i32
  %_save = alloca %struct._ts*, align 8
  %fdobj = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp161 = alloca %struct._object*, align 8
  %pos = alloca %struct._object*, align 8
  %_py_decref_tmp216 = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp247 = alloca %struct._object*, align 8
  store %struct._object* %oself, %struct._object** %oself.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct._object** %oself.addr, metadata !792, metadata !958), !dbg !1245
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !793, metadata !958), !dbg !1246
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !794, metadata !958), !dbg !1247
  %0 = bitcast %struct.fileio** %self to i8*, !dbg !1248
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1248
  call void @llvm.dbg.declare(metadata %struct.fileio** %self, metadata !795, metadata !958), !dbg !1249
  %1 = load %struct._object*, %struct._object** %oself.addr, align 8, !dbg !1250, !tbaa !954
  %2 = bitcast %struct._object* %1 to %struct.fileio*, !dbg !1251
  store %struct.fileio* %2, %struct.fileio** %self, align 8, !dbg !1249, !tbaa !954
  %3 = bitcast i8** %name to i8*, !dbg !1252
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !1252
  call void @llvm.dbg.declare(metadata i8** %name, metadata !796, metadata !958), !dbg !1253
  store i8* null, i8** %name, align 8, !dbg !1253, !tbaa !954
  %4 = bitcast %struct._object** %nameobj to i8*, !dbg !1254
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !1254
  call void @llvm.dbg.declare(metadata %struct._object** %nameobj, metadata !797, metadata !958), !dbg !1255
  %5 = bitcast %struct._object** %stringobj to i8*, !dbg !1254
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !1254
  call void @llvm.dbg.declare(metadata %struct._object** %stringobj, metadata !798, metadata !958), !dbg !1256
  store %struct._object* null, %struct._object** %stringobj, align 8, !dbg !1256, !tbaa !954
  %6 = bitcast %struct._object** %opener to i8*, !dbg !1254
  call void @llvm.lifetime.start(i64 8, i8* %6) #3, !dbg !1254
  call void @llvm.dbg.declare(metadata %struct._object** %opener, metadata !799, metadata !958), !dbg !1257
  store %struct._object* @_Py_NoneStruct, %struct._object** %opener, align 8, !dbg !1257, !tbaa !954
  %7 = bitcast i8** %mode to i8*, !dbg !1258
  call void @llvm.lifetime.start(i64 8, i8* %7) #3, !dbg !1258
  call void @llvm.dbg.declare(metadata i8** %mode, metadata !800, metadata !958), !dbg !1259
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0), i8** %mode, align 8, !dbg !1259, !tbaa !954
  %8 = bitcast i8** %s to i8*, !dbg !1260
  call void @llvm.lifetime.start(i64 8, i8* %8) #3, !dbg !1260
  call void @llvm.dbg.declare(metadata i8** %s, metadata !801, metadata !958), !dbg !1261
  %9 = bitcast i32* %ret to i8*, !dbg !1262
  call void @llvm.lifetime.start(i64 4, i8* %9) #3, !dbg !1262
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !802, metadata !958), !dbg !1263
  store i32 0, i32* %ret, align 4, !dbg !1263, !tbaa !1182
  %10 = bitcast i32* %rwa to i8*, !dbg !1264
  call void @llvm.lifetime.start(i64 4, i8* %10) #3, !dbg !1264
  call void @llvm.dbg.declare(metadata i32* %rwa, metadata !803, metadata !958), !dbg !1265
  store i32 0, i32* %rwa, align 4, !dbg !1265, !tbaa !1182
  %11 = bitcast i32* %plus to i8*, !dbg !1264
  call void @llvm.lifetime.start(i64 4, i8* %11) #3, !dbg !1264
  call void @llvm.dbg.declare(metadata i32* %plus, metadata !804, metadata !958), !dbg !1266
  store i32 0, i32* %plus, align 4, !dbg !1266, !tbaa !1182
  %12 = bitcast i32* %flags to i8*, !dbg !1267
  call void @llvm.lifetime.start(i64 4, i8* %12) #3, !dbg !1267
  call void @llvm.dbg.declare(metadata i32* %flags, metadata !805, metadata !958), !dbg !1268
  store i32 0, i32* %flags, align 4, !dbg !1268, !tbaa !1182
  %13 = bitcast i32* %fd to i8*, !dbg !1269
  call void @llvm.lifetime.start(i64 4, i8* %13) #3, !dbg !1269
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !806, metadata !958), !dbg !1270
  store i32 -1, i32* %fd, align 4, !dbg !1270, !tbaa !1182
  %14 = bitcast i32* %closefd to i8*, !dbg !1271
  call void @llvm.lifetime.start(i64 4, i8* %14) #3, !dbg !1271
  call void @llvm.dbg.declare(metadata i32* %closefd, metadata !807, metadata !958), !dbg !1272
  store i32 1, i32* %closefd, align 4, !dbg !1272, !tbaa !1182
  %15 = bitcast i32* %fd_is_own to i8*, !dbg !1273
  call void @llvm.lifetime.start(i64 4, i8* %15) #3, !dbg !1273
  call void @llvm.dbg.declare(metadata i32* %fd_is_own, metadata !808, metadata !958), !dbg !1274
  store i32 0, i32* %fd_is_own, align 4, !dbg !1274, !tbaa !1182
  %16 = bitcast i32** %atomic_flag_works to i8*, !dbg !1275
  call void @llvm.lifetime.start(i64 8, i8* %16) #3, !dbg !1275
  call void @llvm.dbg.declare(metadata i32** %atomic_flag_works, metadata !809, metadata !958), !dbg !1276
  store i32* @_Py_open_cloexec_works, i32** %atomic_flag_works, align 8, !dbg !1276, !tbaa !954
  %17 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1277, !tbaa !954
  %fd1 = getelementptr inbounds %struct.fileio, %struct.fileio* %17, i32 0, i32 1, !dbg !1279
  %18 = load i32, i32* %fd1, align 4, !dbg !1279, !tbaa !963
  %cmp = icmp sge i32 %18, 0, !dbg !1280
  br i1 %cmp, label %if.then, label %if.end.8, !dbg !1281

if.then:                                          ; preds = %entry
  %19 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1282, !tbaa !954
  %closefd2 = getelementptr inbounds %struct.fileio, %struct.fileio* %19, i32 0, i32 2, !dbg !1285
  %bf.load = load i8, i8* %closefd2, align 4, !dbg !1285
  %bf.lshr = lshr i8 %bf.load, 6, !dbg !1285
  %bf.clear = and i8 %bf.lshr, 1, !dbg !1285
  %bf.cast = zext i8 %bf.clear to i32, !dbg !1285
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !1282
  br i1 %tobool, label %if.then.3, label %if.else, !dbg !1286

if.then.3:                                        ; preds = %if.then
  %20 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1287, !tbaa !954
  %call = call i32 @internal_close(%struct.fileio* %20), !dbg !1290
  %cmp4 = icmp slt i32 %call, 0, !dbg !1291
  br i1 %cmp4, label %if.then.5, label %if.end, !dbg !1292

if.then.5:                                        ; preds = %if.then.3
  store i32 -1, i32* %retval, !dbg !1293
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.262, !dbg !1293

if.end:                                           ; preds = %if.then.3
  br label %if.end.7, !dbg !1294

if.else:                                          ; preds = %if.then
  %21 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1295, !tbaa !954
  %fd6 = getelementptr inbounds %struct.fileio, %struct.fileio* %21, i32 0, i32 1, !dbg !1296
  store i32 -1, i32* %fd6, align 4, !dbg !1297, !tbaa !963
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.end
  br label %if.end.8, !dbg !1298

if.end.8:                                         ; preds = %if.end.7, %entry
  %22 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1299, !tbaa !954
  %23 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !1301, !tbaa !954
  %call9 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %22, %struct._object* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i32 0, i32 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @fileio_init.kwlist, i32 0, i32 0), %struct._object** %nameobj, i8** %mode, i32* %closefd, %struct._object** %opener), !dbg !1302
  %tobool10 = icmp ne i32 %call9, 0, !dbg !1302
  br i1 %tobool10, label %if.end.12, label %if.then.11, !dbg !1303

if.then.11:                                       ; preds = %if.end.8
  store i32 -1, i32* %retval, !dbg !1304
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.262, !dbg !1304

if.end.12:                                        ; preds = %if.end.8
  %24 = load %struct._object*, %struct._object** %nameobj, align 8, !dbg !1305, !tbaa !954
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !1307
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1307, !tbaa !1073
  %cmp13 = icmp eq %struct._typeobject* %25, @PyFloat_Type, !dbg !1308
  br i1 %cmp13, label %if.then.17, label %lor.lhs.false, !dbg !1309

lor.lhs.false:                                    ; preds = %if.end.12
  %26 = load %struct._object*, %struct._object** %nameobj, align 8, !dbg !1310, !tbaa !954
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1, !dbg !1312
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8, !dbg !1312, !tbaa !1073
  %call15 = call i32 @PyType_IsSubtype(%struct._typeobject* %27, %struct._typeobject* @PyFloat_Type), !dbg !1313
  %tobool16 = icmp ne i32 %call15, 0, !dbg !1313
  br i1 %tobool16, label %if.then.17, label %if.end.18, !dbg !1314

if.then.17:                                       ; preds = %lor.lhs.false, %if.end.12
  %28 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1315, !tbaa !954
  call void @PyErr_SetString(%struct._object* %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.52, i32 0, i32 0)), !dbg !1317
  store i32 -1, i32* %retval, !dbg !1318
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.262, !dbg !1318

if.end.18:                                        ; preds = %lor.lhs.false
  %29 = load %struct._object*, %struct._object** %nameobj, align 8, !dbg !1319, !tbaa !954
  %call19 = call i32 @_PyLong_AsInt(%struct._object* %29), !dbg !1320
  store i32 %call19, i32* %fd, align 4, !dbg !1321, !tbaa !1182
  %30 = load i32, i32* %fd, align 4, !dbg !1322, !tbaa !1182
  %cmp20 = icmp slt i32 %30, 0, !dbg !1324
  br i1 %cmp20, label %if.then.21, label %if.end.26, !dbg !1325

if.then.21:                                       ; preds = %if.end.18
  %call22 = call %struct._object* @PyErr_Occurred(), !dbg !1326
  %tobool23 = icmp ne %struct._object* %call22, null, !dbg !1326
  br i1 %tobool23, label %if.end.25, label %if.then.24, !dbg !1329

if.then.24:                                       ; preds = %if.then.21
  %31 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1330, !tbaa !954
  call void @PyErr_SetString(%struct._object* %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.53, i32 0, i32 0)), !dbg !1332
  store i32 -1, i32* %retval, !dbg !1333
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.262, !dbg !1333

if.end.25:                                        ; preds = %if.then.21
  call void @PyErr_Clear(), !dbg !1334
  br label %if.end.26, !dbg !1335

if.end.26:                                        ; preds = %if.end.25, %if.end.18
  %32 = load i32, i32* %fd, align 4, !dbg !1336, !tbaa !1182
  %cmp27 = icmp slt i32 %32, 0, !dbg !1338
  br i1 %cmp27, label %if.then.28, label %if.end.33, !dbg !1339

if.then.28:                                       ; preds = %if.end.26
  %33 = load %struct._object*, %struct._object** %nameobj, align 8, !dbg !1340, !tbaa !954
  %34 = bitcast %struct._object** %stringobj to i8*, !dbg !1343
  %call29 = call i32 @PyUnicode_FSConverter(%struct._object* %33, i8* %34), !dbg !1344
  %tobool30 = icmp ne i32 %call29, 0, !dbg !1344
  br i1 %tobool30, label %if.end.32, label %if.then.31, !dbg !1345

if.then.31:                                       ; preds = %if.then.28
  store i32 -1, i32* %retval, !dbg !1346
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.262, !dbg !1346

if.end.32:                                        ; preds = %if.then.28
  %35 = load %struct._object*, %struct._object** %stringobj, align 8, !dbg !1348, !tbaa !954
  %36 = bitcast %struct._object* %35 to %struct.PyBytesObject*, !dbg !1349
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %36, i32 0, i32 2, !dbg !1350
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !1351
  store i8* %arraydecay, i8** %name, align 8, !dbg !1352, !tbaa !954
  br label %if.end.33, !dbg !1353

if.end.33:                                        ; preds = %if.end.32, %if.end.26
  %37 = load i8*, i8** %mode, align 8, !dbg !1354, !tbaa !954
  store i8* %37, i8** %s, align 8, !dbg !1355, !tbaa !954
  br label %while.cond, !dbg !1356

while.cond:                                       ; preds = %sw.epilog, %if.end.33
  %38 = load i8*, i8** %s, align 8, !dbg !1357, !tbaa !954
  %39 = load i8, i8* %38, align 1, !dbg !1360, !tbaa !1361
  %tobool34 = icmp ne i8 %39, 0, !dbg !1356
  br i1 %tobool34, label %while.body, label %while.end, !dbg !1356

while.body:                                       ; preds = %while.cond
  %40 = load i8*, i8** %s, align 8, !dbg !1362, !tbaa !954
  %incdec.ptr = getelementptr i8, i8* %40, i32 1, !dbg !1362
  store i8* %incdec.ptr, i8** %s, align 8, !dbg !1362, !tbaa !954
  %41 = load i8, i8* %40, align 1, !dbg !1364, !tbaa !1361
  %conv = sext i8 %41 to i32, !dbg !1364
  switch i32 %conv, label %sw.default [
    i32 120, label %sw.bb
    i32 114, label %sw.bb.43
    i32 119, label %sw.bb.50
    i32 97, label %sw.bb.59
    i32 98, label %sw.epilog
    i32 43, label %sw.bb.71
  ], !dbg !1365

sw.bb:                                            ; preds = %while.body
  %42 = load i32, i32* %rwa, align 4, !dbg !1366, !tbaa !1182
  %tobool35 = icmp ne i32 %42, 0, !dbg !1366
  br i1 %tobool35, label %if.then.36, label %if.end.37, !dbg !1369

if.then.36:                                       ; preds = %sw.bb
  br label %bad_mode, !dbg !1370

bad_mode:                                         ; preds = %if.then.85, %if.then.73, %if.then.61, %if.then.52, %if.then.45, %if.then.36
  %43 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1372, !tbaa !954
  call void @PyErr_SetString(%struct._object* %43, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.54, i32 0, i32 0)), !dbg !1374
  br label %error, !dbg !1375

if.end.37:                                        ; preds = %sw.bb
  store i32 1, i32* %rwa, align 4, !dbg !1376, !tbaa !1182
  %44 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1377, !tbaa !954
  %created = getelementptr inbounds %struct.fileio, %struct.fileio* %44, i32 0, i32 2, !dbg !1378
  %bf.load38 = load i8, i8* %created, align 4, !dbg !1379
  %bf.clear39 = and i8 %bf.load38, -2, !dbg !1379
  %bf.set = or i8 %bf.clear39, 1, !dbg !1379
  store i8 %bf.set, i8* %created, align 4, !dbg !1379
  %45 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1380, !tbaa !954
  %writable = getelementptr inbounds %struct.fileio, %struct.fileio* %45, i32 0, i32 2, !dbg !1381
  %bf.load40 = load i8, i8* %writable, align 4, !dbg !1382
  %bf.clear41 = and i8 %bf.load40, -5, !dbg !1382
  %bf.set42 = or i8 %bf.clear41, 4, !dbg !1382
  store i8 %bf.set42, i8* %writable, align 4, !dbg !1382
  %46 = load i32, i32* %flags, align 4, !dbg !1383, !tbaa !1182
  %or = or i32 %46, 192, !dbg !1383
  store i32 %or, i32* %flags, align 4, !dbg !1383, !tbaa !1182
  br label %sw.epilog, !dbg !1384

sw.bb.43:                                         ; preds = %while.body
  %47 = load i32, i32* %rwa, align 4, !dbg !1385, !tbaa !1182
  %tobool44 = icmp ne i32 %47, 0, !dbg !1385
  br i1 %tobool44, label %if.then.45, label %if.end.46, !dbg !1387

if.then.45:                                       ; preds = %sw.bb.43
  br label %bad_mode, !dbg !1388

if.end.46:                                        ; preds = %sw.bb.43
  store i32 1, i32* %rwa, align 4, !dbg !1389, !tbaa !1182
  %48 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1390, !tbaa !954
  %readable = getelementptr inbounds %struct.fileio, %struct.fileio* %48, i32 0, i32 2, !dbg !1391
  %bf.load47 = load i8, i8* %readable, align 4, !dbg !1392
  %bf.clear48 = and i8 %bf.load47, -3, !dbg !1392
  %bf.set49 = or i8 %bf.clear48, 2, !dbg !1392
  store i8 %bf.set49, i8* %readable, align 4, !dbg !1392
  br label %sw.epilog, !dbg !1393

sw.bb.50:                                         ; preds = %while.body
  %49 = load i32, i32* %rwa, align 4, !dbg !1394, !tbaa !1182
  %tobool51 = icmp ne i32 %49, 0, !dbg !1394
  br i1 %tobool51, label %if.then.52, label %if.end.53, !dbg !1396

if.then.52:                                       ; preds = %sw.bb.50
  br label %bad_mode, !dbg !1397

if.end.53:                                        ; preds = %sw.bb.50
  store i32 1, i32* %rwa, align 4, !dbg !1398, !tbaa !1182
  %50 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1399, !tbaa !954
  %writable54 = getelementptr inbounds %struct.fileio, %struct.fileio* %50, i32 0, i32 2, !dbg !1400
  %bf.load55 = load i8, i8* %writable54, align 4, !dbg !1401
  %bf.clear56 = and i8 %bf.load55, -5, !dbg !1401
  %bf.set57 = or i8 %bf.clear56, 4, !dbg !1401
  store i8 %bf.set57, i8* %writable54, align 4, !dbg !1401
  %51 = load i32, i32* %flags, align 4, !dbg !1402, !tbaa !1182
  %or58 = or i32 %51, 576, !dbg !1402
  store i32 %or58, i32* %flags, align 4, !dbg !1402, !tbaa !1182
  br label %sw.epilog, !dbg !1403

sw.bb.59:                                         ; preds = %while.body
  %52 = load i32, i32* %rwa, align 4, !dbg !1404, !tbaa !1182
  %tobool60 = icmp ne i32 %52, 0, !dbg !1404
  br i1 %tobool60, label %if.then.61, label %if.end.62, !dbg !1406

if.then.61:                                       ; preds = %sw.bb.59
  br label %bad_mode, !dbg !1407

if.end.62:                                        ; preds = %sw.bb.59
  store i32 1, i32* %rwa, align 4, !dbg !1408, !tbaa !1182
  %53 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1409, !tbaa !954
  %writable63 = getelementptr inbounds %struct.fileio, %struct.fileio* %53, i32 0, i32 2, !dbg !1410
  %bf.load64 = load i8, i8* %writable63, align 4, !dbg !1411
  %bf.clear65 = and i8 %bf.load64, -5, !dbg !1411
  %bf.set66 = or i8 %bf.clear65, 4, !dbg !1411
  store i8 %bf.set66, i8* %writable63, align 4, !dbg !1411
  %54 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1412, !tbaa !954
  %appending = getelementptr inbounds %struct.fileio, %struct.fileio* %54, i32 0, i32 2, !dbg !1413
  %bf.load67 = load i8, i8* %appending, align 4, !dbg !1414
  %bf.clear68 = and i8 %bf.load67, -9, !dbg !1414
  %bf.set69 = or i8 %bf.clear68, 8, !dbg !1414
  store i8 %bf.set69, i8* %appending, align 4, !dbg !1414
  %55 = load i32, i32* %flags, align 4, !dbg !1415, !tbaa !1182
  %or70 = or i32 %55, 1088, !dbg !1415
  store i32 %or70, i32* %flags, align 4, !dbg !1415, !tbaa !1182
  br label %sw.epilog, !dbg !1416

sw.bb.71:                                         ; preds = %while.body
  %56 = load i32, i32* %plus, align 4, !dbg !1417, !tbaa !1182
  %tobool72 = icmp ne i32 %56, 0, !dbg !1417
  br i1 %tobool72, label %if.then.73, label %if.end.74, !dbg !1419

if.then.73:                                       ; preds = %sw.bb.71
  br label %bad_mode, !dbg !1420

if.end.74:                                        ; preds = %sw.bb.71
  %57 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1421, !tbaa !954
  %writable75 = getelementptr inbounds %struct.fileio, %struct.fileio* %57, i32 0, i32 2, !dbg !1422
  %bf.load76 = load i8, i8* %writable75, align 4, !dbg !1423
  %bf.clear77 = and i8 %bf.load76, -5, !dbg !1423
  %bf.set78 = or i8 %bf.clear77, 4, !dbg !1423
  store i8 %bf.set78, i8* %writable75, align 4, !dbg !1423
  %58 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1424, !tbaa !954
  %readable79 = getelementptr inbounds %struct.fileio, %struct.fileio* %58, i32 0, i32 2, !dbg !1425
  %bf.load80 = load i8, i8* %readable79, align 4, !dbg !1426
  %bf.clear81 = and i8 %bf.load80, -3, !dbg !1426
  %bf.set82 = or i8 %bf.clear81, 2, !dbg !1426
  store i8 %bf.set82, i8* %readable79, align 4, !dbg !1426
  store i32 1, i32* %plus, align 4, !dbg !1427, !tbaa !1182
  br label %sw.epilog, !dbg !1428

sw.default:                                       ; preds = %while.body
  %59 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1429, !tbaa !954
  %60 = load i8*, i8** %mode, align 8, !dbg !1430, !tbaa !954
  %call83 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.55, i32 0, i32 0), i8* %60), !dbg !1431
  br label %error, !dbg !1432

sw.epilog:                                        ; preds = %if.end.74, %while.body, %if.end.62, %if.end.53, %if.end.46, %if.end.37
  br label %while.cond, !dbg !1356

while.end:                                        ; preds = %while.cond
  %61 = load i32, i32* %rwa, align 4, !dbg !1433, !tbaa !1182
  %tobool84 = icmp ne i32 %61, 0, !dbg !1433
  br i1 %tobool84, label %if.end.86, label %if.then.85, !dbg !1435

if.then.85:                                       ; preds = %while.end
  br label %bad_mode, !dbg !1436

if.end.86:                                        ; preds = %while.end
  %62 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1437, !tbaa !954
  %readable87 = getelementptr inbounds %struct.fileio, %struct.fileio* %62, i32 0, i32 2, !dbg !1439
  %bf.load88 = load i8, i8* %readable87, align 4, !dbg !1439
  %bf.lshr89 = lshr i8 %bf.load88, 1, !dbg !1439
  %bf.clear90 = and i8 %bf.lshr89, 1, !dbg !1439
  %bf.cast91 = zext i8 %bf.clear90 to i32, !dbg !1439
  %tobool92 = icmp ne i32 %bf.cast91, 0, !dbg !1437
  br i1 %tobool92, label %land.lhs.true, label %if.else.101, !dbg !1440

land.lhs.true:                                    ; preds = %if.end.86
  %63 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1441, !tbaa !954
  %writable93 = getelementptr inbounds %struct.fileio, %struct.fileio* %63, i32 0, i32 2, !dbg !1443
  %bf.load94 = load i8, i8* %writable93, align 4, !dbg !1443
  %bf.lshr95 = lshr i8 %bf.load94, 2, !dbg !1443
  %bf.clear96 = and i8 %bf.lshr95, 1, !dbg !1443
  %bf.cast97 = zext i8 %bf.clear96 to i32, !dbg !1443
  %tobool98 = icmp ne i32 %bf.cast97, 0, !dbg !1444
  br i1 %tobool98, label %if.then.99, label %if.else.101, !dbg !1445

if.then.99:                                       ; preds = %land.lhs.true
  %64 = load i32, i32* %flags, align 4, !dbg !1446, !tbaa !1182
  %or100 = or i32 %64, 2, !dbg !1446
  store i32 %or100, i32* %flags, align 4, !dbg !1446, !tbaa !1182
  br label %if.end.112, !dbg !1447

if.else.101:                                      ; preds = %land.lhs.true, %if.end.86
  %65 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1448, !tbaa !954
  %readable102 = getelementptr inbounds %struct.fileio, %struct.fileio* %65, i32 0, i32 2, !dbg !1450
  %bf.load103 = load i8, i8* %readable102, align 4, !dbg !1450
  %bf.lshr104 = lshr i8 %bf.load103, 1, !dbg !1450
  %bf.clear105 = and i8 %bf.lshr104, 1, !dbg !1450
  %bf.cast106 = zext i8 %bf.clear105 to i32, !dbg !1450
  %tobool107 = icmp ne i32 %bf.cast106, 0, !dbg !1448
  br i1 %tobool107, label %if.then.108, label %if.else.109, !dbg !1451

if.then.108:                                      ; preds = %if.else.101
  %66 = load i32, i32* %flags, align 4, !dbg !1452, !tbaa !1182
  store i32 %66, i32* %flags, align 4, !dbg !1452, !tbaa !1182
  br label %if.end.111, !dbg !1453

if.else.109:                                      ; preds = %if.else.101
  %67 = load i32, i32* %flags, align 4, !dbg !1454, !tbaa !1182
  %or110 = or i32 %67, 1, !dbg !1454
  store i32 %or110, i32* %flags, align 4, !dbg !1454, !tbaa !1182
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.109, %if.then.108
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.then.99
  %68 = load i32, i32* %flags, align 4, !dbg !1455, !tbaa !1182
  %or113 = or i32 %68, 524288, !dbg !1455
  store i32 %or113, i32* %flags, align 4, !dbg !1455, !tbaa !1182
  %69 = load i32, i32* %fd, align 4, !dbg !1456, !tbaa !1182
  %cmp114 = icmp sge i32 %69, 0, !dbg !1457
  br i1 %cmp114, label %if.then.116, label %if.else.126, !dbg !1458

if.then.116:                                      ; preds = %if.end.112
  %70 = load i32, i32* %fd, align 4, !dbg !1459, !tbaa !1182
  %call117 = call i32 @check_fd(i32 %70), !dbg !1462
  %tobool118 = icmp ne i32 %call117, 0, !dbg !1462
  br i1 %tobool118, label %if.then.119, label %if.end.120, !dbg !1463

if.then.119:                                      ; preds = %if.then.116
  br label %error, !dbg !1464

if.end.120:                                       ; preds = %if.then.116
  %71 = load i32, i32* %fd, align 4, !dbg !1465, !tbaa !1182
  %72 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1466, !tbaa !954
  %fd121 = getelementptr inbounds %struct.fileio, %struct.fileio* %72, i32 0, i32 1, !dbg !1467
  store i32 %71, i32* %fd121, align 4, !dbg !1468, !tbaa !963
  %73 = load i32, i32* %closefd, align 4, !dbg !1469, !tbaa !1182
  %74 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1470, !tbaa !954
  %closefd122 = getelementptr inbounds %struct.fileio, %struct.fileio* %74, i32 0, i32 2, !dbg !1471
  %75 = trunc i32 %73 to i8, !dbg !1472
  %bf.load123 = load i8, i8* %closefd122, align 4, !dbg !1472
  %bf.value = and i8 %75, 1, !dbg !1472
  %bf.shl = shl i8 %bf.value, 6, !dbg !1472
  %bf.clear124 = and i8 %bf.load123, -65, !dbg !1472
  %bf.set125 = or i8 %bf.clear124, %bf.shl, !dbg !1472
  store i8 %bf.set125, i8* %closefd122, align 4, !dbg !1472
  %bf.result.cast = zext i8 %bf.value to i32, !dbg !1472
  br label %if.end.191, !dbg !1473

if.else.126:                                      ; preds = %if.end.112
  %76 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1474, !tbaa !954
  %closefd127 = getelementptr inbounds %struct.fileio, %struct.fileio* %76, i32 0, i32 2, !dbg !1475
  %bf.load128 = load i8, i8* %closefd127, align 4, !dbg !1476
  %bf.clear129 = and i8 %bf.load128, -65, !dbg !1476
  %bf.set130 = or i8 %bf.clear129, 64, !dbg !1476
  store i8 %bf.set130, i8* %closefd127, align 4, !dbg !1476
  %77 = load i32, i32* %closefd, align 4, !dbg !1477, !tbaa !1182
  %tobool131 = icmp ne i32 %77, 0, !dbg !1477
  br i1 %tobool131, label %if.end.133, label %if.then.132, !dbg !1479

if.then.132:                                      ; preds = %if.else.126
  %78 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1480, !tbaa !954
  call void @PyErr_SetString(%struct._object* %78, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.56, i32 0, i32 0)), !dbg !1482
  br label %error, !dbg !1483

if.end.133:                                       ; preds = %if.else.126
  %call134 = call i32* @__errno_location() #1, !dbg !1484
  store i32 0, i32* %call134, align 4, !dbg !1485, !tbaa !1182
  %79 = load %struct._object*, %struct._object** %opener, align 8, !dbg !1486, !tbaa !954
  %cmp135 = icmp eq %struct._object* %79, @_Py_NoneStruct, !dbg !1487
  br i1 %cmp135, label %if.then.137, label %if.else.141, !dbg !1488

if.then.137:                                      ; preds = %if.end.133
  %80 = bitcast %struct._ts** %_save to i8*, !dbg !1489
  call void @llvm.lifetime.start(i64 8, i8* %80) #3, !dbg !1489
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !811, metadata !958), !dbg !1490
  %call138 = call %struct._ts* @PyEval_SaveThread(), !dbg !1491
  store %struct._ts* %call138, %struct._ts** %_save, align 8, !dbg !1492, !tbaa !954
  %81 = load i8*, i8** %name, align 8, !dbg !1493, !tbaa !954
  %82 = load i32, i32* %flags, align 4, !dbg !1494, !tbaa !1182
  %call139 = call i32 (i8*, i32, ...) @open64(i8* %81, i32 %82, i32 438), !dbg !1495
  %83 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1496, !tbaa !954
  %fd140 = getelementptr inbounds %struct.fileio, %struct.fileio* %83, i32 0, i32 1, !dbg !1497
  store i32 %call139, i32* %fd140, align 4, !dbg !1498, !tbaa !963
  %84 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !1499, !tbaa !954
  call void @PyEval_RestoreThread(%struct._ts* %84), !dbg !1500
  %85 = bitcast %struct._ts** %_save to i8*, !dbg !1501
  call void @llvm.lifetime.end(i64 8, i8* %85) #3, !dbg !1501
  br label %if.end.178, !dbg !1502

if.else.141:                                      ; preds = %if.end.133
  %86 = bitcast %struct._object** %fdobj to i8*, !dbg !1503
  call void @llvm.lifetime.start(i64 8, i8* %86) #3, !dbg !1503
  call void @llvm.dbg.declare(metadata %struct._object** %fdobj, metadata !817, metadata !958), !dbg !1504
  store i32* null, i32** %atomic_flag_works, align 8, !dbg !1505, !tbaa !954
  %87 = load %struct._object*, %struct._object** %opener, align 8, !dbg !1506, !tbaa !954
  %88 = load %struct._object*, %struct._object** %nameobj, align 8, !dbg !1507, !tbaa !954
  %89 = load i32, i32* %flags, align 4, !dbg !1508, !tbaa !1182
  %call142 = call %struct._object* (%struct._object*, i8*, ...) @_PyObject_CallFunction_SizeT(%struct._object* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0), %struct._object* %88, i32 %89), !dbg !1509
  store %struct._object* %call142, %struct._object** %fdobj, align 8, !dbg !1510, !tbaa !954
  %90 = load %struct._object*, %struct._object** %fdobj, align 8, !dbg !1511, !tbaa !954
  %cmp143 = icmp eq %struct._object* %90, null, !dbg !1513
  br i1 %cmp143, label %if.then.145, label %if.end.146, !dbg !1514

if.then.145:                                      ; preds = %if.else.141
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1515

if.end.146:                                       ; preds = %if.else.141
  %91 = load %struct._object*, %struct._object** %fdobj, align 8, !dbg !1516, !tbaa !954
  %ob_type147 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 1, !dbg !1517
  %92 = load %struct._typeobject*, %struct._typeobject** %ob_type147, align 8, !dbg !1517, !tbaa !1073
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %92, i32 0, i32 19, !dbg !1518
  %93 = load i64, i64* %tp_flags, align 8, !dbg !1518, !tbaa !1519
  %and = and i64 %93, 16777216, !dbg !1520
  %cmp148 = icmp ne i64 %and, 0, !dbg !1521
  br i1 %cmp148, label %if.end.157, label %if.then.150, !dbg !1522

if.then.150:                                      ; preds = %if.end.146
  br label %do.body, !dbg !1523

do.body:                                          ; preds = %if.then.150
  %94 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1524
  call void @llvm.lifetime.start(i64 8, i8* %94) #3, !dbg !1524
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !819, metadata !958), !dbg !1526
  %95 = load %struct._object*, %struct._object** %fdobj, align 8, !dbg !1527, !tbaa !954
  store %struct._object* %95, %struct._object** %_py_decref_tmp, align 8, !dbg !1526, !tbaa !954
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1528, !tbaa !954
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %96, i32 0, i32 0, !dbg !1530
  %97 = load i64, i64* %ob_refcnt, align 8, !dbg !1531, !tbaa !1065
  %dec = add i64 %97, -1, !dbg !1531
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1531, !tbaa !1065
  %cmp151 = icmp ne i64 %dec, 0, !dbg !1532
  br i1 %cmp151, label %if.then.153, label %if.else.154, !dbg !1533

if.then.153:                                      ; preds = %do.body
  br label %if.end.156, !dbg !1534

if.else.154:                                      ; preds = %do.body
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1536, !tbaa !954
  %ob_type155 = getelementptr inbounds %struct._object, %struct._object* %98, i32 0, i32 1, !dbg !1538
  %99 = load %struct._typeobject*, %struct._typeobject** %ob_type155, align 8, !dbg !1538, !tbaa !1073
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %99, i32 0, i32 4, !dbg !1539
  %100 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1539, !tbaa !1075
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1540, !tbaa !954
  call void %100(%struct._object* %101), !dbg !1541
  br label %if.end.156

if.end.156:                                       ; preds = %if.else.154, %if.then.153
  %102 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1542
  call void @llvm.lifetime.end(i64 8, i8* %102) #3, !dbg !1542
  br label %do.cond, !dbg !1544

do.cond:                                          ; preds = %if.end.156
  br label %do.end, !dbg !1545

do.end:                                           ; preds = %do.cond
  %103 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1547, !tbaa !954
  call void @PyErr_SetString(%struct._object* %103, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.58, i32 0, i32 0)), !dbg !1548
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1549

if.end.157:                                       ; preds = %if.end.146
  %104 = load %struct._object*, %struct._object** %fdobj, align 8, !dbg !1550, !tbaa !954
  %call158 = call i32 @_PyLong_AsInt(%struct._object* %104), !dbg !1551
  %105 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1552, !tbaa !954
  %fd159 = getelementptr inbounds %struct.fileio, %struct.fileio* %105, i32 0, i32 1, !dbg !1553
  store i32 %call158, i32* %fd159, align 4, !dbg !1554, !tbaa !963
  br label %do.body.160, !dbg !1555

do.body.160:                                      ; preds = %if.end.157
  %106 = bitcast %struct._object** %_py_decref_tmp161 to i8*, !dbg !1556
  call void @llvm.lifetime.start(i64 8, i8* %106) #3, !dbg !1556
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp161, metadata !823, metadata !958), !dbg !1558
  %107 = load %struct._object*, %struct._object** %fdobj, align 8, !dbg !1559, !tbaa !954
  store %struct._object* %107, %struct._object** %_py_decref_tmp161, align 8, !dbg !1558, !tbaa !954
  %108 = load %struct._object*, %struct._object** %_py_decref_tmp161, align 8, !dbg !1560, !tbaa !954
  %ob_refcnt162 = getelementptr inbounds %struct._object, %struct._object* %108, i32 0, i32 0, !dbg !1562
  %109 = load i64, i64* %ob_refcnt162, align 8, !dbg !1563, !tbaa !1065
  %dec163 = add i64 %109, -1, !dbg !1563
  store i64 %dec163, i64* %ob_refcnt162, align 8, !dbg !1563, !tbaa !1065
  %cmp164 = icmp ne i64 %dec163, 0, !dbg !1564
  br i1 %cmp164, label %if.then.166, label %if.else.167, !dbg !1565

if.then.166:                                      ; preds = %do.body.160
  br label %if.end.170, !dbg !1566

if.else.167:                                      ; preds = %do.body.160
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp161, align 8, !dbg !1568, !tbaa !954
  %ob_type168 = getelementptr inbounds %struct._object, %struct._object* %110, i32 0, i32 1, !dbg !1570
  %111 = load %struct._typeobject*, %struct._typeobject** %ob_type168, align 8, !dbg !1570, !tbaa !1073
  %tp_dealloc169 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %111, i32 0, i32 4, !dbg !1571
  %112 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc169, align 8, !dbg !1571, !tbaa !1075
  %113 = load %struct._object*, %struct._object** %_py_decref_tmp161, align 8, !dbg !1572, !tbaa !954
  call void %112(%struct._object* %113), !dbg !1573
  br label %if.end.170

if.end.170:                                       ; preds = %if.else.167, %if.then.166
  %114 = bitcast %struct._object** %_py_decref_tmp161 to i8*, !dbg !1574
  call void @llvm.lifetime.end(i64 8, i8* %114) #3, !dbg !1574
  br label %do.cond.171, !dbg !1576

do.cond.171:                                      ; preds = %if.end.170
  br label %do.end.172, !dbg !1577

do.end.172:                                       ; preds = %do.cond.171
  %115 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1579, !tbaa !954
  %fd173 = getelementptr inbounds %struct.fileio, %struct.fileio* %115, i32 0, i32 1, !dbg !1581
  %116 = load i32, i32* %fd173, align 4, !dbg !1581, !tbaa !963
  %cmp174 = icmp eq i32 %116, -1, !dbg !1582
  br i1 %cmp174, label %if.then.176, label %if.end.177, !dbg !1583

if.then.176:                                      ; preds = %do.end.172
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1584

if.end.177:                                       ; preds = %do.end.172
  store i32 0, i32* %cleanup.dest.slot, !dbg !1586
  br label %cleanup, !dbg !1586

cleanup:                                          ; preds = %if.then.176, %do.end, %if.then.145, %if.end.177
  %117 = bitcast %struct._object** %fdobj to i8*, !dbg !1587
  call void @llvm.lifetime.end(i64 8, i8* %117) #3, !dbg !1587
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.262 [
    i32 0, label %cleanup.cont
    i32 6, label %error
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.178

if.end.178:                                       ; preds = %cleanup.cont, %if.then.137
  store i32 1, i32* %fd_is_own, align 4, !dbg !1589, !tbaa !1182
  %118 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1590, !tbaa !954
  %fd179 = getelementptr inbounds %struct.fileio, %struct.fileio* %118, i32 0, i32 1, !dbg !1592
  %119 = load i32, i32* %fd179, align 4, !dbg !1592, !tbaa !963
  %cmp180 = icmp slt i32 %119, 0, !dbg !1593
  br i1 %cmp180, label %if.then.182, label %if.end.184, !dbg !1594

if.then.182:                                      ; preds = %if.end.178
  %120 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !1595, !tbaa !954
  %121 = load %struct._object*, %struct._object** %nameobj, align 8, !dbg !1597, !tbaa !954
  %call183 = call %struct._object* @PyErr_SetFromErrnoWithFilenameObject(%struct._object* %120, %struct._object* %121), !dbg !1598
  br label %error, !dbg !1599

if.end.184:                                       ; preds = %if.end.178
  %122 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1600, !tbaa !954
  %fd185 = getelementptr inbounds %struct.fileio, %struct.fileio* %122, i32 0, i32 1, !dbg !1602
  %123 = load i32, i32* %fd185, align 4, !dbg !1602, !tbaa !963
  %124 = load i32*, i32** %atomic_flag_works, align 8, !dbg !1603, !tbaa !954
  %call186 = call i32 @_Py_set_inheritable(i32 %123, i32 0, i32* %124), !dbg !1604
  %cmp187 = icmp slt i32 %call186, 0, !dbg !1605
  br i1 %cmp187, label %if.then.189, label %if.end.190, !dbg !1606

if.then.189:                                      ; preds = %if.end.184
  br label %error, !dbg !1607

if.end.190:                                       ; preds = %if.end.184
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190, %if.end.120
  %125 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1608, !tbaa !954
  %126 = load %struct._object*, %struct._object** %nameobj, align 8, !dbg !1610, !tbaa !954
  %call192 = call i32 @dircheck(%struct.fileio* %125, %struct._object* %126), !dbg !1611
  %cmp193 = icmp slt i32 %call192, 0, !dbg !1612
  br i1 %cmp193, label %if.then.195, label %if.end.196, !dbg !1613

if.then.195:                                      ; preds = %if.end.191
  br label %error, !dbg !1614

if.end.196:                                       ; preds = %if.end.191
  %127 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1615, !tbaa !954
  %128 = bitcast %struct.fileio* %127 to %struct._object*, !dbg !1617
  %129 = load %struct._object*, %struct._object** %nameobj, align 8, !dbg !1618, !tbaa !954
  %call197 = call i32 @_PyObject_SetAttrId(%struct._object* %128, %struct._Py_Identifier* @PyId_name, %struct._object* %129), !dbg !1619
  %cmp198 = icmp slt i32 %call197, 0, !dbg !1620
  br i1 %cmp198, label %if.then.200, label %if.end.201, !dbg !1621

if.then.200:                                      ; preds = %if.end.196
  br label %error, !dbg !1622

if.end.201:                                       ; preds = %if.end.196
  %130 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1623, !tbaa !954
  %appending202 = getelementptr inbounds %struct.fileio, %struct.fileio* %130, i32 0, i32 2, !dbg !1624
  %bf.load203 = load i8, i8* %appending202, align 4, !dbg !1624
  %bf.lshr204 = lshr i8 %bf.load203, 3, !dbg !1624
  %bf.clear205 = and i8 %bf.lshr204, 1, !dbg !1624
  %bf.cast206 = zext i8 %bf.clear205 to i32, !dbg !1624
  %tobool207 = icmp ne i32 %bf.cast206, 0, !dbg !1623
  br i1 %tobool207, label %if.then.208, label %if.end.231, !dbg !1625

if.then.208:                                      ; preds = %if.end.201
  %131 = bitcast %struct._object** %pos to i8*, !dbg !1626
  call void @llvm.lifetime.start(i64 8, i8* %131) #3, !dbg !1626
  call void @llvm.dbg.declare(metadata %struct._object** %pos, metadata !825, metadata !958), !dbg !1627
  %132 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1628, !tbaa !954
  %fd209 = getelementptr inbounds %struct.fileio, %struct.fileio* %132, i32 0, i32 1, !dbg !1629
  %133 = load i32, i32* %fd209, align 4, !dbg !1629, !tbaa !963
  %call210 = call %struct._object* @portable_lseek(i32 %133, %struct._object* null, i32 2), !dbg !1630
  store %struct._object* %call210, %struct._object** %pos, align 8, !dbg !1627, !tbaa !954
  %134 = load %struct._object*, %struct._object** %pos, align 8, !dbg !1631, !tbaa !954
  %cmp211 = icmp eq %struct._object* %134, null, !dbg !1633
  br i1 %cmp211, label %if.then.213, label %if.end.214, !dbg !1634

if.then.213:                                      ; preds = %if.then.208
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.228, !dbg !1635

if.end.214:                                       ; preds = %if.then.208
  br label %do.body.215, !dbg !1636

do.body.215:                                      ; preds = %if.end.214
  %135 = bitcast %struct._object** %_py_decref_tmp216 to i8*, !dbg !1637
  call void @llvm.lifetime.start(i64 8, i8* %135) #3, !dbg !1637
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp216, metadata !828, metadata !958), !dbg !1639
  %136 = load %struct._object*, %struct._object** %pos, align 8, !dbg !1640, !tbaa !954
  store %struct._object* %136, %struct._object** %_py_decref_tmp216, align 8, !dbg !1639, !tbaa !954
  %137 = load %struct._object*, %struct._object** %_py_decref_tmp216, align 8, !dbg !1641, !tbaa !954
  %ob_refcnt217 = getelementptr inbounds %struct._object, %struct._object* %137, i32 0, i32 0, !dbg !1643
  %138 = load i64, i64* %ob_refcnt217, align 8, !dbg !1644, !tbaa !1065
  %dec218 = add i64 %138, -1, !dbg !1644
  store i64 %dec218, i64* %ob_refcnt217, align 8, !dbg !1644, !tbaa !1065
  %cmp219 = icmp ne i64 %dec218, 0, !dbg !1645
  br i1 %cmp219, label %if.then.221, label %if.else.222, !dbg !1646

if.then.221:                                      ; preds = %do.body.215
  br label %if.end.225, !dbg !1647

if.else.222:                                      ; preds = %do.body.215
  %139 = load %struct._object*, %struct._object** %_py_decref_tmp216, align 8, !dbg !1649, !tbaa !954
  %ob_type223 = getelementptr inbounds %struct._object, %struct._object* %139, i32 0, i32 1, !dbg !1651
  %140 = load %struct._typeobject*, %struct._typeobject** %ob_type223, align 8, !dbg !1651, !tbaa !1073
  %tp_dealloc224 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %140, i32 0, i32 4, !dbg !1652
  %141 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc224, align 8, !dbg !1652, !tbaa !1075
  %142 = load %struct._object*, %struct._object** %_py_decref_tmp216, align 8, !dbg !1653, !tbaa !954
  call void %141(%struct._object* %142), !dbg !1654
  br label %if.end.225

if.end.225:                                       ; preds = %if.else.222, %if.then.221
  %143 = bitcast %struct._object** %_py_decref_tmp216 to i8*, !dbg !1655
  call void @llvm.lifetime.end(i64 8, i8* %143) #3, !dbg !1655
  br label %do.cond.226, !dbg !1657

do.cond.226:                                      ; preds = %if.end.225
  br label %do.end.227, !dbg !1658

do.end.227:                                       ; preds = %do.cond.226
  store i32 0, i32* %cleanup.dest.slot, !dbg !1660
  br label %cleanup.228, !dbg !1660

cleanup.228:                                      ; preds = %if.then.213, %do.end.227
  %144 = bitcast %struct._object** %pos to i8*, !dbg !1661
  call void @llvm.lifetime.end(i64 8, i8* %144) #3, !dbg !1661
  %cleanup.dest.229 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.229, label %cleanup.262 [
    i32 0, label %cleanup.cont.230
    i32 6, label %error
  ]

cleanup.cont.230:                                 ; preds = %cleanup.228
  br label %if.end.231, !dbg !1663

if.end.231:                                       ; preds = %cleanup.cont.230, %if.end.201
  br label %done, !dbg !1664

error:                                            ; preds = %cleanup.228, %cleanup, %if.then.200, %if.then.195, %if.then.189, %if.then.182, %if.then.132, %if.then.119, %sw.default, %bad_mode
  store i32 -1, i32* %ret, align 4, !dbg !1665, !tbaa !1182
  %145 = load i32, i32* %fd_is_own, align 4, !dbg !1666, !tbaa !1182
  %tobool232 = icmp ne i32 %145, 0, !dbg !1666
  br i1 %tobool232, label %if.end.235, label %if.then.233, !dbg !1668

if.then.233:                                      ; preds = %error
  %146 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1669, !tbaa !954
  %fd234 = getelementptr inbounds %struct.fileio, %struct.fileio* %146, i32 0, i32 1, !dbg !1670
  store i32 -1, i32* %fd234, align 4, !dbg !1671, !tbaa !963
  br label %if.end.235, !dbg !1669

if.end.235:                                       ; preds = %if.then.233, %error
  %147 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1672, !tbaa !954
  %fd236 = getelementptr inbounds %struct.fileio, %struct.fileio* %147, i32 0, i32 1, !dbg !1674
  %148 = load i32, i32* %fd236, align 4, !dbg !1674, !tbaa !963
  %cmp237 = icmp sge i32 %148, 0, !dbg !1675
  br i1 %cmp237, label %if.then.239, label %if.end.241, !dbg !1676

if.then.239:                                      ; preds = %if.end.235
  %149 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1677, !tbaa !954
  %call240 = call i32 @internal_close(%struct.fileio* %149), !dbg !1678
  br label %if.end.241, !dbg !1678

if.end.241:                                       ; preds = %if.then.239, %if.end.235
  br label %done, !dbg !1679

done:                                             ; preds = %if.end.241, %if.end.231
  br label %do.body.242, !dbg !1681

do.body.242:                                      ; preds = %done
  %150 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1682
  call void @llvm.lifetime.start(i64 8, i8* %150) #3, !dbg !1682
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !830, metadata !958), !dbg !1684
  %151 = load %struct._object*, %struct._object** %stringobj, align 8, !dbg !1685, !tbaa !954
  store %struct._object* %151, %struct._object** %_py_tmp, align 8, !dbg !1684, !tbaa !954
  %152 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1686, !tbaa !954
  %cmp243 = icmp ne %struct._object* %152, null, !dbg !1687
  br i1 %cmp243, label %if.then.245, label %if.end.259, !dbg !1688

if.then.245:                                      ; preds = %do.body.242
  store %struct._object* null, %struct._object** %stringobj, align 8, !dbg !1689, !tbaa !954
  br label %do.body.246, !dbg !1691

do.body.246:                                      ; preds = %if.then.245
  %153 = bitcast %struct._object** %_py_decref_tmp247 to i8*, !dbg !1692
  call void @llvm.lifetime.start(i64 8, i8* %153) #3, !dbg !1692
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp247, metadata !832, metadata !958), !dbg !1694
  %154 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1695, !tbaa !954
  store %struct._object* %154, %struct._object** %_py_decref_tmp247, align 8, !dbg !1694, !tbaa !954
  %155 = load %struct._object*, %struct._object** %_py_decref_tmp247, align 8, !dbg !1696, !tbaa !954
  %ob_refcnt248 = getelementptr inbounds %struct._object, %struct._object* %155, i32 0, i32 0, !dbg !1698
  %156 = load i64, i64* %ob_refcnt248, align 8, !dbg !1699, !tbaa !1065
  %dec249 = add i64 %156, -1, !dbg !1699
  store i64 %dec249, i64* %ob_refcnt248, align 8, !dbg !1699, !tbaa !1065
  %cmp250 = icmp ne i64 %dec249, 0, !dbg !1700
  br i1 %cmp250, label %if.then.252, label %if.else.253, !dbg !1701

if.then.252:                                      ; preds = %do.body.246
  br label %if.end.256, !dbg !1702

if.else.253:                                      ; preds = %do.body.246
  %157 = load %struct._object*, %struct._object** %_py_decref_tmp247, align 8, !dbg !1704, !tbaa !954
  %ob_type254 = getelementptr inbounds %struct._object, %struct._object* %157, i32 0, i32 1, !dbg !1706
  %158 = load %struct._typeobject*, %struct._typeobject** %ob_type254, align 8, !dbg !1706, !tbaa !1073
  %tp_dealloc255 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %158, i32 0, i32 4, !dbg !1707
  %159 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc255, align 8, !dbg !1707, !tbaa !1075
  %160 = load %struct._object*, %struct._object** %_py_decref_tmp247, align 8, !dbg !1708, !tbaa !954
  call void %159(%struct._object* %160), !dbg !1709
  br label %if.end.256

if.end.256:                                       ; preds = %if.else.253, %if.then.252
  %161 = bitcast %struct._object** %_py_decref_tmp247 to i8*, !dbg !1710
  call void @llvm.lifetime.end(i64 8, i8* %161) #3, !dbg !1710
  br label %do.cond.257, !dbg !1712

do.cond.257:                                      ; preds = %if.end.256
  br label %do.end.258, !dbg !1713

do.end.258:                                       ; preds = %do.cond.257
  br label %if.end.259, !dbg !1715

if.end.259:                                       ; preds = %do.end.258, %do.body.242
  %162 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1717
  call void @llvm.lifetime.end(i64 8, i8* %162) #3, !dbg !1717
  br label %do.cond.260, !dbg !1720

do.cond.260:                                      ; preds = %if.end.259
  br label %do.end.261, !dbg !1721

do.end.261:                                       ; preds = %do.cond.260
  %163 = load i32, i32* %ret, align 4, !dbg !1723, !tbaa !1182
  store i32 %163, i32* %retval, !dbg !1724
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.262, !dbg !1724

cleanup.262:                                      ; preds = %do.end.261, %cleanup.228, %cleanup, %if.then.31, %if.then.24, %if.then.17, %if.then.11, %if.then.5
  %164 = bitcast i32** %atomic_flag_works to i8*, !dbg !1725
  call void @llvm.lifetime.end(i64 8, i8* %164) #3, !dbg !1725
  %165 = bitcast i32* %fd_is_own to i8*, !dbg !1725
  call void @llvm.lifetime.end(i64 4, i8* %165) #3, !dbg !1725
  %166 = bitcast i32* %closefd to i8*, !dbg !1725
  call void @llvm.lifetime.end(i64 4, i8* %166) #3, !dbg !1725
  %167 = bitcast i32* %fd to i8*, !dbg !1725
  call void @llvm.lifetime.end(i64 4, i8* %167) #3, !dbg !1725
  %168 = bitcast i32* %flags to i8*, !dbg !1725
  call void @llvm.lifetime.end(i64 4, i8* %168) #3, !dbg !1725
  %169 = bitcast i32* %plus to i8*, !dbg !1725
  call void @llvm.lifetime.end(i64 4, i8* %169) #3, !dbg !1725
  %170 = bitcast i32* %rwa to i8*, !dbg !1725
  call void @llvm.lifetime.end(i64 4, i8* %170) #3, !dbg !1725
  %171 = bitcast i32* %ret to i8*, !dbg !1725
  call void @llvm.lifetime.end(i64 4, i8* %171) #3, !dbg !1725
  %172 = bitcast i8** %s to i8*, !dbg !1725
  call void @llvm.lifetime.end(i64 8, i8* %172) #3, !dbg !1725
  %173 = bitcast i8** %mode to i8*, !dbg !1725
  call void @llvm.lifetime.end(i64 8, i8* %173) #3, !dbg !1725
  %174 = bitcast %struct._object** %opener to i8*, !dbg !1725
  call void @llvm.lifetime.end(i64 8, i8* %174) #3, !dbg !1725
  %175 = bitcast %struct._object** %stringobj to i8*, !dbg !1725
  call void @llvm.lifetime.end(i64 8, i8* %175) #3, !dbg !1725
  %176 = bitcast %struct._object** %nameobj to i8*, !dbg !1725
  call void @llvm.lifetime.end(i64 8, i8* %176) #3, !dbg !1725
  %177 = bitcast i8** %name to i8*, !dbg !1725
  call void @llvm.lifetime.end(i64 8, i8* %177) #3, !dbg !1725
  %178 = bitcast %struct.fileio** %self to i8*, !dbg !1725
  call void @llvm.lifetime.end(i64 8, i8* %178) #3, !dbg !1725
  %179 = load i32, i32* %retval, !dbg !1725
  ret i32 %179, !dbg !1725
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %self = alloca %struct.fileio*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !864, metadata !958), !dbg !1726
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !865, metadata !958), !dbg !1727
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !866, metadata !958), !dbg !1728
  %0 = bitcast %struct.fileio** %self to i8*, !dbg !1729
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1729
  call void @llvm.dbg.declare(metadata %struct.fileio** %self, metadata !867, metadata !958), !dbg !1730
  %1 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1731, !tbaa !954
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 36, !dbg !1732
  %2 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8, !dbg !1732, !tbaa !1733
  %3 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1734, !tbaa !954
  %call = call %struct._object* %2(%struct._typeobject* %3, i64 0), !dbg !1731
  %4 = bitcast %struct._object* %call to %struct.fileio*, !dbg !1735
  store %struct.fileio* %4, %struct.fileio** %self, align 8, !dbg !1736, !tbaa !954
  %5 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1737, !tbaa !954
  %cmp = icmp ne %struct.fileio* %5, null, !dbg !1739
  br i1 %cmp, label %if.then, label %if.end, !dbg !1740

if.then:                                          ; preds = %entry
  %6 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1741, !tbaa !954
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %6, i32 0, i32 1, !dbg !1743
  store i32 -1, i32* %fd, align 4, !dbg !1744, !tbaa !963
  %7 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1745, !tbaa !954
  %created = getelementptr inbounds %struct.fileio, %struct.fileio* %7, i32 0, i32 2, !dbg !1746
  %bf.load = load i8, i8* %created, align 4, !dbg !1747
  %bf.clear = and i8 %bf.load, -2, !dbg !1747
  store i8 %bf.clear, i8* %created, align 4, !dbg !1747
  %8 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1748, !tbaa !954
  %readable = getelementptr inbounds %struct.fileio, %struct.fileio* %8, i32 0, i32 2, !dbg !1749
  %bf.load1 = load i8, i8* %readable, align 4, !dbg !1750
  %bf.clear2 = and i8 %bf.load1, -3, !dbg !1750
  store i8 %bf.clear2, i8* %readable, align 4, !dbg !1750
  %9 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1751, !tbaa !954
  %writable = getelementptr inbounds %struct.fileio, %struct.fileio* %9, i32 0, i32 2, !dbg !1752
  %bf.load3 = load i8, i8* %writable, align 4, !dbg !1753
  %bf.clear4 = and i8 %bf.load3, -5, !dbg !1753
  store i8 %bf.clear4, i8* %writable, align 4, !dbg !1753
  %10 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1754, !tbaa !954
  %appending = getelementptr inbounds %struct.fileio, %struct.fileio* %10, i32 0, i32 2, !dbg !1755
  %bf.load5 = load i8, i8* %appending, align 4, !dbg !1756
  %bf.clear6 = and i8 %bf.load5, -9, !dbg !1756
  store i8 %bf.clear6, i8* %appending, align 4, !dbg !1756
  %11 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1757, !tbaa !954
  %seekable = getelementptr inbounds %struct.fileio, %struct.fileio* %11, i32 0, i32 2, !dbg !1758
  %bf.load7 = load i8, i8* %seekable, align 4, !dbg !1759
  %bf.clear8 = and i8 %bf.load7, -49, !dbg !1759
  %bf.set = or i8 %bf.clear8, 48, !dbg !1759
  store i8 %bf.set, i8* %seekable, align 4, !dbg !1759
  %12 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1760, !tbaa !954
  %closefd = getelementptr inbounds %struct.fileio, %struct.fileio* %12, i32 0, i32 2, !dbg !1761
  %bf.load9 = load i8, i8* %closefd, align 4, !dbg !1762
  %bf.clear10 = and i8 %bf.load9, -65, !dbg !1762
  %bf.set11 = or i8 %bf.clear10, 64, !dbg !1762
  store i8 %bf.set11, i8* %closefd, align 4, !dbg !1762
  %13 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1763, !tbaa !954
  %weakreflist = getelementptr inbounds %struct.fileio, %struct.fileio* %13, i32 0, i32 4, !dbg !1764
  store %struct._object* null, %struct._object** %weakreflist, align 8, !dbg !1765, !tbaa !1036
  br label %if.end, !dbg !1766

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct.fileio*, %struct.fileio** %self, align 8, !dbg !1767, !tbaa !954
  %15 = bitcast %struct.fileio* %14 to %struct._object*, !dbg !1768
  %16 = bitcast %struct.fileio** %self to i8*, !dbg !1769
  call void @llvm.lifetime.end(i64 8, i8* %16) #3, !dbg !1769
  ret %struct._object* %15, !dbg !1770
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
define internal i8* @mode_string(%struct.fileio* %self) #0 {
entry:
  %retval = alloca i8*, align 8
  %self.addr = alloca %struct.fileio*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct.fileio** %self.addr, metadata !424, metadata !958), !dbg !1771
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !1772, !tbaa !954
  %created = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i32 0, i32 2, !dbg !1774
  %bf.load = load i8, i8* %created, align 4, !dbg !1774
  %bf.clear = and i8 %bf.load, 1, !dbg !1774
  %bf.cast = zext i8 %bf.clear to i32, !dbg !1774
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !1772
  br i1 %tobool, label %if.then, label %if.end, !dbg !1775

if.then:                                          ; preds = %entry
  %1 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !1776, !tbaa !954
  %readable = getelementptr inbounds %struct.fileio, %struct.fileio* %1, i32 0, i32 2, !dbg !1779
  %bf.load1 = load i8, i8* %readable, align 4, !dbg !1779
  %bf.lshr = lshr i8 %bf.load1, 1, !dbg !1779
  %bf.clear2 = and i8 %bf.lshr, 1, !dbg !1779
  %bf.cast3 = zext i8 %bf.clear2 to i32, !dbg !1779
  %tobool4 = icmp ne i32 %bf.cast3, 0, !dbg !1776
  br i1 %tobool4, label %if.then.5, label %if.else, !dbg !1780

if.then.5:                                        ; preds = %if.then
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8** %retval, !dbg !1781
  br label %return, !dbg !1781

if.else:                                          ; preds = %if.then
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8** %retval, !dbg !1782
  br label %return, !dbg !1782

if.end:                                           ; preds = %entry
  %2 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !1783, !tbaa !954
  %appending = getelementptr inbounds %struct.fileio, %struct.fileio* %2, i32 0, i32 2, !dbg !1785
  %bf.load6 = load i8, i8* %appending, align 4, !dbg !1785
  %bf.lshr7 = lshr i8 %bf.load6, 3, !dbg !1785
  %bf.clear8 = and i8 %bf.lshr7, 1, !dbg !1785
  %bf.cast9 = zext i8 %bf.clear8 to i32, !dbg !1785
  %tobool10 = icmp ne i32 %bf.cast9, 0, !dbg !1783
  br i1 %tobool10, label %if.then.11, label %if.else.20, !dbg !1786

if.then.11:                                       ; preds = %if.end
  %3 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !1787, !tbaa !954
  %readable12 = getelementptr inbounds %struct.fileio, %struct.fileio* %3, i32 0, i32 2, !dbg !1790
  %bf.load13 = load i8, i8* %readable12, align 4, !dbg !1790
  %bf.lshr14 = lshr i8 %bf.load13, 1, !dbg !1790
  %bf.clear15 = and i8 %bf.lshr14, 1, !dbg !1790
  %bf.cast16 = zext i8 %bf.clear15 to i32, !dbg !1790
  %tobool17 = icmp ne i32 %bf.cast16, 0, !dbg !1787
  br i1 %tobool17, label %if.then.18, label %if.else.19, !dbg !1791

if.then.18:                                       ; preds = %if.then.11
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8** %retval, !dbg !1792
  br label %return, !dbg !1792

if.else.19:                                       ; preds = %if.then.11
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8** %retval, !dbg !1793
  br label %return, !dbg !1793

if.else.20:                                       ; preds = %if.end
  %4 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !1794, !tbaa !954
  %readable21 = getelementptr inbounds %struct.fileio, %struct.fileio* %4, i32 0, i32 2, !dbg !1796
  %bf.load22 = load i8, i8* %readable21, align 4, !dbg !1796
  %bf.lshr23 = lshr i8 %bf.load22, 1, !dbg !1796
  %bf.clear24 = and i8 %bf.lshr23, 1, !dbg !1796
  %bf.cast25 = zext i8 %bf.clear24 to i32, !dbg !1796
  %tobool26 = icmp ne i32 %bf.cast25, 0, !dbg !1794
  br i1 %tobool26, label %if.then.27, label %if.else.35, !dbg !1797

if.then.27:                                       ; preds = %if.else.20
  %5 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !1798, !tbaa !954
  %writable = getelementptr inbounds %struct.fileio, %struct.fileio* %5, i32 0, i32 2, !dbg !1801
  %bf.load28 = load i8, i8* %writable, align 4, !dbg !1801
  %bf.lshr29 = lshr i8 %bf.load28, 2, !dbg !1801
  %bf.clear30 = and i8 %bf.lshr29, 1, !dbg !1801
  %bf.cast31 = zext i8 %bf.clear30 to i32, !dbg !1801
  %tobool32 = icmp ne i32 %bf.cast31, 0, !dbg !1798
  br i1 %tobool32, label %if.then.33, label %if.else.34, !dbg !1802

if.then.33:                                       ; preds = %if.then.27
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8** %retval, !dbg !1803
  br label %return, !dbg !1803

if.else.34:                                       ; preds = %if.then.27
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8** %retval, !dbg !1804
  br label %return, !dbg !1804

if.else.35:                                       ; preds = %if.else.20
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8** %retval, !dbg !1805
  br label %return, !dbg !1805

return:                                           ; preds = %if.else.35, %if.else.34, %if.then.33, %if.else.19, %if.then.18, %if.else, %if.then.5
  %6 = load i8*, i8** %retval, !dbg !1806
  ret i8* %6, !dbg !1806
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
  %cleanup.dest.slot = alloca i32
  %_save = alloca %struct._ts*, align 8
  %err = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp41 = alloca %struct._object*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct.fileio** %self.addr, metadata !451, metadata !958), !dbg !1807
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !452, metadata !958), !dbg !1808
  %0 = bitcast i8** %ptr to i8*, !dbg !1809
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1809
  call void @llvm.dbg.declare(metadata i8** %ptr, metadata !453, metadata !958), !dbg !1810
  %1 = bitcast i64* %n to i8*, !dbg !1811
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1811
  call void @llvm.dbg.declare(metadata i64* %n, metadata !454, metadata !958), !dbg !1812
  %2 = bitcast i64* %size to i8*, !dbg !1813
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1813
  call void @llvm.dbg.declare(metadata i64* %size, metadata !455, metadata !958), !dbg !1814
  store i64 -1, i64* %size, align 8, !dbg !1814, !tbaa !1815
  %3 = bitcast %struct._object** %bytes to i8*, !dbg !1816
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !1816
  call void @llvm.dbg.declare(metadata %struct._object** %bytes, metadata !456, metadata !958), !dbg !1817
  %4 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !1818, !tbaa !954
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %4, i32 0, i32 1, !dbg !1820
  %5 = load i32, i32* %fd, align 4, !dbg !1820, !tbaa !963
  %cmp = icmp slt i32 %5, 0, !dbg !1821
  br i1 %cmp, label %if.then, label %if.end, !dbg !1822

if.then:                                          ; preds = %entry
  %call = call %struct._object* @err_closed(), !dbg !1823
  store %struct._object* %call, %struct._object** %retval, !dbg !1824
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.57, !dbg !1824

if.end:                                           ; preds = %entry
  %6 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !1825, !tbaa !954
  %readable = getelementptr inbounds %struct.fileio, %struct.fileio* %6, i32 0, i32 2, !dbg !1827
  %bf.load = load i8, i8* %readable, align 4, !dbg !1827
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !1827
  %bf.clear = and i8 %bf.lshr, 1, !dbg !1827
  %bf.cast = zext i8 %bf.clear to i32, !dbg !1827
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !1825
  br i1 %tobool, label %if.end.3, label %if.then.1, !dbg !1828

if.then.1:                                        ; preds = %if.end
  %call2 = call %struct._object* @err_mode(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0)), !dbg !1829
  store %struct._object* %call2, %struct._object** %retval, !dbg !1830
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.57, !dbg !1830

if.end.3:                                         ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1831, !tbaa !954
  %call4 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i32 (%struct._object*, i8*)* @_PyIO_ConvertSsize_t, i64* %size), !dbg !1833
  %tobool5 = icmp ne i32 %call4, 0, !dbg !1833
  br i1 %tobool5, label %if.end.7, label %if.then.6, !dbg !1834

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval, !dbg !1835
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.57, !dbg !1835

if.end.7:                                         ; preds = %if.end.3
  %8 = load i64, i64* %size, align 8, !dbg !1836, !tbaa !1815
  %cmp8 = icmp slt i64 %8, 0, !dbg !1838
  br i1 %cmp8, label %if.then.9, label %if.end.11, !dbg !1839

if.then.9:                                        ; preds = %if.end.7
  %9 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !1840, !tbaa !954
  %call10 = call %struct._object* @fileio_readall(%struct.fileio* %9), !dbg !1842
  store %struct._object* %call10, %struct._object** %retval, !dbg !1843
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.57, !dbg !1843

if.end.11:                                        ; preds = %if.end.7
  %10 = load i64, i64* %size, align 8, !dbg !1844, !tbaa !1815
  %call12 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %10), !dbg !1845
  store %struct._object* %call12, %struct._object** %bytes, align 8, !dbg !1846, !tbaa !954
  %11 = load %struct._object*, %struct._object** %bytes, align 8, !dbg !1847, !tbaa !954
  %cmp13 = icmp eq %struct._object* %11, null, !dbg !1849
  br i1 %cmp13, label %if.then.14, label %if.end.15, !dbg !1850

if.then.14:                                       ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval, !dbg !1851
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.57, !dbg !1851

if.end.15:                                        ; preds = %if.end.11
  %12 = load %struct._object*, %struct._object** %bytes, align 8, !dbg !1852, !tbaa !954
  %13 = bitcast %struct._object* %12 to %struct.PyBytesObject*, !dbg !1853
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %13, i32 0, i32 2, !dbg !1854
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !1855
  store i8* %arraydecay, i8** %ptr, align 8, !dbg !1856, !tbaa !954
  %14 = bitcast %struct._ts** %_save to i8*, !dbg !1857
  call void @llvm.lifetime.start(i64 8, i8* %14) #3, !dbg !1857
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !457, metadata !958), !dbg !1858
  %call16 = call %struct._ts* @PyEval_SaveThread(), !dbg !1859
  store %struct._ts* %call16, %struct._ts** %_save, align 8, !dbg !1860, !tbaa !954
  %call17 = call i32* @__errno_location() #1, !dbg !1861
  store i32 0, i32* %call17, align 4, !dbg !1862, !tbaa !1182
  %15 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !1863, !tbaa !954
  %fd18 = getelementptr inbounds %struct.fileio, %struct.fileio* %15, i32 0, i32 1, !dbg !1864
  %16 = load i32, i32* %fd18, align 4, !dbg !1864, !tbaa !963
  %17 = load i8*, i8** %ptr, align 8, !dbg !1865, !tbaa !954
  %18 = load i64, i64* %size, align 8, !dbg !1866, !tbaa !1815
  %call19 = call i64 @read(i32 %16, i8* %17, i64 %18), !dbg !1867
  store i64 %call19, i64* %n, align 8, !dbg !1868, !tbaa !1815
  %19 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !1869, !tbaa !954
  call void @PyEval_RestoreThread(%struct._ts* %19), !dbg !1870
  %20 = bitcast %struct._ts** %_save to i8*, !dbg !1871
  call void @llvm.lifetime.end(i64 8, i8* %20) #3, !dbg !1871
  %21 = load i64, i64* %n, align 8, !dbg !1872, !tbaa !1815
  %cmp20 = icmp slt i64 %21, 0, !dbg !1873
  br i1 %cmp20, label %if.then.21, label %if.end.31, !dbg !1874

if.then.21:                                       ; preds = %if.end.15
  %22 = bitcast i32* %err to i8*, !dbg !1875
  call void @llvm.lifetime.start(i64 4, i8* %22) #3, !dbg !1875
  call void @llvm.dbg.declare(metadata i32* %err, metadata !519, metadata !958), !dbg !1876
  %call22 = call i32* @__errno_location() #1, !dbg !1877
  %23 = load i32, i32* %call22, align 4, !dbg !1878, !tbaa !1182
  store i32 %23, i32* %err, align 4, !dbg !1876, !tbaa !1182
  br label %do.body, !dbg !1879

do.body:                                          ; preds = %if.then.21
  %24 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1880
  call void @llvm.lifetime.start(i64 8, i8* %24) #3, !dbg !1880
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !522, metadata !958), !dbg !1882
  %25 = load %struct._object*, %struct._object** %bytes, align 8, !dbg !1883, !tbaa !954
  store %struct._object* %25, %struct._object** %_py_decref_tmp, align 8, !dbg !1882, !tbaa !954
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1884, !tbaa !954
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0, !dbg !1886
  %27 = load i64, i64* %ob_refcnt, align 8, !dbg !1887, !tbaa !1065
  %dec = add i64 %27, -1, !dbg !1887
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1887, !tbaa !1065
  %cmp23 = icmp ne i64 %dec, 0, !dbg !1888
  br i1 %cmp23, label %if.then.24, label %if.else, !dbg !1889

if.then.24:                                       ; preds = %do.body
  br label %if.end.25, !dbg !1890

if.else:                                          ; preds = %do.body
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1892, !tbaa !954
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1, !dbg !1894
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1894, !tbaa !1073
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4, !dbg !1895
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1895, !tbaa !1075
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1896, !tbaa !954
  call void %30(%struct._object* %31), !dbg !1897
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.24
  %32 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1898
  call void @llvm.lifetime.end(i64 8, i8* %32) #3, !dbg !1898
  br label %do.cond, !dbg !1900

do.cond:                                          ; preds = %if.end.25
  br label %do.end, !dbg !1901

do.end:                                           ; preds = %do.cond
  %33 = load i32, i32* %err, align 4, !dbg !1903, !tbaa !1182
  %cmp26 = icmp eq i32 %33, 11, !dbg !1905
  br i1 %cmp26, label %if.then.27, label %if.end.28, !dbg !1906

if.then.27:                                       ; preds = %do.end
  %34 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1907, !tbaa !1065
  %inc = add i64 %34, 1, !dbg !1907
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1907, !tbaa !1065
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1908
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1908

if.end.28:                                        ; preds = %do.end
  %35 = load i32, i32* %err, align 4, !dbg !1909, !tbaa !1182
  %call29 = call i32* @__errno_location() #1, !dbg !1910
  store i32 %35, i32* %call29, align 4, !dbg !1911, !tbaa !1182
  %36 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !1912, !tbaa !954
  %call30 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %36), !dbg !1913
  store %struct._object* null, %struct._object** %retval, !dbg !1914
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1914

cleanup:                                          ; preds = %if.end.28, %if.then.27
  %37 = bitcast i32* %err to i8*, !dbg !1915
  call void @llvm.lifetime.end(i64 4, i8* %37) #3, !dbg !1915
  br label %cleanup.57

if.end.31:                                        ; preds = %if.end.15
  %38 = load i64, i64* %n, align 8, !dbg !1916, !tbaa !1815
  %39 = load i64, i64* %size, align 8, !dbg !1917, !tbaa !1815
  %cmp32 = icmp ne i64 %38, %39, !dbg !1918
  br i1 %cmp32, label %if.then.33, label %if.end.56, !dbg !1919

if.then.33:                                       ; preds = %if.end.31
  %40 = load i64, i64* %n, align 8, !dbg !1920, !tbaa !1815
  %call34 = call i32 @_PyBytes_Resize(%struct._object** %bytes, i64 %40), !dbg !1921
  %cmp35 = icmp slt i32 %call34, 0, !dbg !1922
  br i1 %cmp35, label %if.then.36, label %if.end.55, !dbg !1923

if.then.36:                                       ; preds = %if.then.33
  br label %do.body.37, !dbg !1924

do.body.37:                                       ; preds = %if.then.36
  %41 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1925
  call void @llvm.lifetime.start(i64 8, i8* %41) #3, !dbg !1925
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !524, metadata !958), !dbg !1927
  %42 = load %struct._object*, %struct._object** %bytes, align 8, !dbg !1928, !tbaa !954
  store %struct._object* %42, %struct._object** %_py_tmp, align 8, !dbg !1927, !tbaa !954
  %43 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1929, !tbaa !954
  %cmp38 = icmp ne %struct._object* %43, null, !dbg !1930
  br i1 %cmp38, label %if.then.39, label %if.end.52, !dbg !1931

if.then.39:                                       ; preds = %do.body.37
  store %struct._object* null, %struct._object** %bytes, align 8, !dbg !1932, !tbaa !954
  br label %do.body.40, !dbg !1934

do.body.40:                                       ; preds = %if.then.39
  %44 = bitcast %struct._object** %_py_decref_tmp41 to i8*, !dbg !1935
  call void @llvm.lifetime.start(i64 8, i8* %44) #3, !dbg !1935
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp41, metadata !530, metadata !958), !dbg !1937
  %45 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1938, !tbaa !954
  store %struct._object* %45, %struct._object** %_py_decref_tmp41, align 8, !dbg !1937, !tbaa !954
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8, !dbg !1939, !tbaa !954
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0, !dbg !1941
  %47 = load i64, i64* %ob_refcnt42, align 8, !dbg !1942, !tbaa !1065
  %dec43 = add i64 %47, -1, !dbg !1942
  store i64 %dec43, i64* %ob_refcnt42, align 8, !dbg !1942, !tbaa !1065
  %cmp44 = icmp ne i64 %dec43, 0, !dbg !1943
  br i1 %cmp44, label %if.then.45, label %if.else.46, !dbg !1944

if.then.45:                                       ; preds = %do.body.40
  br label %if.end.49, !dbg !1945

if.else.46:                                       ; preds = %do.body.40
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8, !dbg !1947, !tbaa !954
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1, !dbg !1949
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8, !dbg !1949, !tbaa !1073
  %tp_dealloc48 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4, !dbg !1950
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc48, align 8, !dbg !1950, !tbaa !1075
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8, !dbg !1951, !tbaa !954
  call void %50(%struct._object* %51), !dbg !1952
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.46, %if.then.45
  %52 = bitcast %struct._object** %_py_decref_tmp41 to i8*, !dbg !1953
  call void @llvm.lifetime.end(i64 8, i8* %52) #3, !dbg !1953
  br label %do.cond.50, !dbg !1955

do.cond.50:                                       ; preds = %if.end.49
  br label %do.end.51, !dbg !1956

do.end.51:                                        ; preds = %do.cond.50
  br label %if.end.52, !dbg !1958

if.end.52:                                        ; preds = %do.end.51, %do.body.37
  %53 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1960
  call void @llvm.lifetime.end(i64 8, i8* %53) #3, !dbg !1960
  br label %do.cond.53, !dbg !1963

do.cond.53:                                       ; preds = %if.end.52
  br label %do.end.54, !dbg !1964

do.end.54:                                        ; preds = %do.cond.53
  store %struct._object* null, %struct._object** %retval, !dbg !1966
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.57, !dbg !1966

if.end.55:                                        ; preds = %if.then.33
  br label %if.end.56, !dbg !1967

if.end.56:                                        ; preds = %if.end.55, %if.end.31
  %54 = load %struct._object*, %struct._object** %bytes, align 8, !dbg !1968, !tbaa !954
  store %struct._object* %54, %struct._object** %retval, !dbg !1969
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.57, !dbg !1969

cleanup.57:                                       ; preds = %if.end.56, %do.end.54, %cleanup, %if.then.14, %if.then.9, %if.then.6, %if.then.1, %if.then
  %55 = bitcast %struct._object** %bytes to i8*, !dbg !1970
  call void @llvm.lifetime.end(i64 8, i8* %55) #3, !dbg !1970
  %56 = bitcast i64* %size to i8*, !dbg !1970
  call void @llvm.lifetime.end(i64 8, i8* %56) #3, !dbg !1970
  %57 = bitcast i64* %n to i8*, !dbg !1970
  call void @llvm.lifetime.end(i64 8, i8* %57) #3, !dbg !1970
  %58 = bitcast i8** %ptr to i8*, !dbg !1970
  call void @llvm.lifetime.end(i64 8, i8* %58) #3, !dbg !1970
  %59 = load %struct._object*, %struct._object** %retval, !dbg !1970
  ret %struct._object* %59, !dbg !1970
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_save = alloca %struct._ts*, align 8
  %_py_decref_tmp57 = alloca %struct._object*, align 8
  %_py_decref_tmp77 = alloca %struct._object*, align 8
  %_py_decref_tmp90 = alloca %struct._object*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct.fileio** %self.addr, metadata !552, metadata !958), !dbg !1971
  %0 = bitcast %struct.stat* %st to i8*, !dbg !1972
  call void @llvm.lifetime.start(i64 144, i8* %0) #3, !dbg !1972
  call void @llvm.dbg.declare(metadata %struct.stat* %st, metadata !553, metadata !958), !dbg !1973
  %1 = bitcast i64* %pos to i8*, !dbg !1974
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1974
  call void @llvm.dbg.declare(metadata i64* %pos, metadata !590, metadata !958), !dbg !1975
  %2 = bitcast i64* %end to i8*, !dbg !1974
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1974
  call void @llvm.dbg.declare(metadata i64* %end, metadata !591, metadata !958), !dbg !1976
  %3 = bitcast %struct._object** %result to i8*, !dbg !1977
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !1977
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !592, metadata !958), !dbg !1978
  %4 = bitcast i64* %bytes_read to i8*, !dbg !1979
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !1979
  call void @llvm.dbg.declare(metadata i64* %bytes_read, metadata !593, metadata !958), !dbg !1980
  store i64 0, i64* %bytes_read, align 8, !dbg !1980, !tbaa !1815
  %5 = bitcast i64* %n to i8*, !dbg !1981
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !1981
  call void @llvm.dbg.declare(metadata i64* %n, metadata !594, metadata !958), !dbg !1982
  %6 = bitcast i64* %bufsize to i8*, !dbg !1983
  call void @llvm.lifetime.start(i64 8, i8* %6) #3, !dbg !1983
  call void @llvm.dbg.declare(metadata i64* %bufsize, metadata !595, metadata !958), !dbg !1984
  %7 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !1985, !tbaa !954
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %7, i32 0, i32 1, !dbg !1987
  %8 = load i32, i32* %fd, align 4, !dbg !1987, !tbaa !963
  %cmp = icmp slt i32 %8, 0, !dbg !1988
  br i1 %cmp, label %if.then, label %if.end, !dbg !1989

if.then:                                          ; preds = %entry
  %call = call %struct._object* @err_closed(), !dbg !1990
  store %struct._object* %call, %struct._object** %retval, !dbg !1991
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1991

if.end:                                           ; preds = %entry
  %9 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !1992, !tbaa !954
  %fd1 = getelementptr inbounds %struct.fileio, %struct.fileio* %9, i32 0, i32 1, !dbg !1993
  %10 = load i32, i32* %fd1, align 4, !dbg !1993, !tbaa !963
  %call2 = call i64 @lseek64(i32 %10, i64 0, i32 1) #3, !dbg !1994
  store i64 %call2, i64* %pos, align 8, !dbg !1995, !tbaa !1815
  %11 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !1996, !tbaa !954
  %fd3 = getelementptr inbounds %struct.fileio, %struct.fileio* %11, i32 0, i32 1, !dbg !1998
  %12 = load i32, i32* %fd3, align 4, !dbg !1998, !tbaa !963
  %call4 = call i32 bitcast (i32 (i32, %struct.stat64*)* @fstat64 to i32 (i32, %struct.stat*)*)(i32 %12, %struct.stat* %st) #3, !dbg !1999
  %cmp5 = icmp eq i32 %call4, 0, !dbg !2000
  br i1 %cmp5, label %if.then.6, label %if.else, !dbg !2001

if.then.6:                                        ; preds = %if.end
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8, !dbg !2002
  %13 = load i64, i64* %st_size, align 8, !dbg !2002, !tbaa !2003
  store i64 %13, i64* %end, align 8, !dbg !2006, !tbaa !1815
  br label %if.end.7, !dbg !2007

if.else:                                          ; preds = %if.end
  store i64 -1, i64* %end, align 8, !dbg !2008, !tbaa !1815
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  %14 = load i64, i64* %end, align 8, !dbg !2009, !tbaa !1815
  %cmp8 = icmp sgt i64 %14, 0, !dbg !2011
  br i1 %cmp8, label %land.lhs.true, label %if.else.16, !dbg !2012

land.lhs.true:                                    ; preds = %if.end.7
  %15 = load i64, i64* %end, align 8, !dbg !2013, !tbaa !1815
  %16 = load i64, i64* %pos, align 8, !dbg !2015, !tbaa !1815
  %cmp9 = icmp sge i64 %15, %16, !dbg !2016
  br i1 %cmp9, label %land.lhs.true.10, label %if.else.16, !dbg !2017

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %17 = load i64, i64* %pos, align 8, !dbg !2018, !tbaa !1815
  %cmp11 = icmp sge i64 %17, 0, !dbg !2020
  br i1 %cmp11, label %land.lhs.true.12, label %if.else.16, !dbg !2021

land.lhs.true.12:                                 ; preds = %land.lhs.true.10
  %18 = load i64, i64* %end, align 8, !dbg !2022, !tbaa !1815
  %19 = load i64, i64* %pos, align 8, !dbg !2024, !tbaa !1815
  %sub = sub i64 %18, %19, !dbg !2025
  %cmp13 = icmp slt i64 %sub, 9223372036854775807, !dbg !2026
  br i1 %cmp13, label %if.then.14, label %if.else.16, !dbg !2027

if.then.14:                                       ; preds = %land.lhs.true.12
  %20 = load i64, i64* %end, align 8, !dbg !2028, !tbaa !1815
  %21 = load i64, i64* %pos, align 8, !dbg !2030, !tbaa !1815
  %sub15 = sub i64 %20, %21, !dbg !2031
  %add = add i64 %sub15, 1, !dbg !2032
  store i64 %add, i64* %bufsize, align 8, !dbg !2033, !tbaa !1815
  br label %if.end.17, !dbg !2034

if.else.16:                                       ; preds = %land.lhs.true.12, %land.lhs.true.10, %land.lhs.true, %if.end.7
  store i64 8192, i64* %bufsize, align 8, !dbg !2035, !tbaa !1815
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.16, %if.then.14
  %22 = load i64, i64* %bufsize, align 8, !dbg !2037, !tbaa !1815
  %call18 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %22), !dbg !2038
  store %struct._object* %call18, %struct._object** %result, align 8, !dbg !2039, !tbaa !954
  %23 = load %struct._object*, %struct._object** %result, align 8, !dbg !2040, !tbaa !954
  %cmp19 = icmp eq %struct._object* %23, null, !dbg !2042
  br i1 %cmp19, label %if.then.20, label %if.end.21, !dbg !2043

if.then.20:                                       ; preds = %if.end.17
  store %struct._object* null, %struct._object** %retval, !dbg !2044
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2044

if.end.21:                                        ; preds = %if.end.17
  br label %while.cond, !dbg !2045

while.cond:                                       ; preds = %if.end.102, %if.end.68, %if.end.21
  br label %while.body, !dbg !2046

while.body:                                       ; preds = %while.cond
  %24 = load i64, i64* %bytes_read, align 8, !dbg !2049, !tbaa !1815
  %25 = load i64, i64* %bufsize, align 8, !dbg !2050, !tbaa !1815
  %cmp22 = icmp sge i64 %24, %25, !dbg !2051
  br i1 %cmp22, label %if.then.23, label %if.end.40, !dbg !2052

if.then.23:                                       ; preds = %while.body
  %26 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2053, !tbaa !954
  %27 = load i64, i64* %bytes_read, align 8, !dbg !2054, !tbaa !1815
  %call24 = call i64 @new_buffersize(%struct.fileio* %26, i64 %27), !dbg !2055
  store i64 %call24, i64* %bufsize, align 8, !dbg !2056, !tbaa !1815
  %28 = load i64, i64* %bufsize, align 8, !dbg !2057, !tbaa !1815
  %cmp25 = icmp ugt i64 %28, 9223372036854775807, !dbg !2058
  br i1 %cmp25, label %if.then.27, label %lor.lhs.false, !dbg !2059

lor.lhs.false:                                    ; preds = %if.then.23
  %29 = load i64, i64* %bufsize, align 8, !dbg !2060, !tbaa !1815
  %cmp26 = icmp ule i64 %29, 0, !dbg !2062
  br i1 %cmp26, label %if.then.27, label %if.end.32, !dbg !2063

if.then.27:                                       ; preds = %lor.lhs.false, %if.then.23
  %30 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2064, !tbaa !954
  call void @PyErr_SetString(%struct._object* %30, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.31, i32 0, i32 0)), !dbg !2065
  br label %do.body, !dbg !2066

do.body:                                          ; preds = %if.then.27
  %31 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2067
  call void @llvm.lifetime.start(i64 8, i8* %31) #3, !dbg !2067
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !596, metadata !958), !dbg !2069
  %32 = load %struct._object*, %struct._object** %result, align 8, !dbg !2070, !tbaa !954
  store %struct._object* %32, %struct._object** %_py_decref_tmp, align 8, !dbg !2069, !tbaa !954
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2071, !tbaa !954
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0, !dbg !2073
  %34 = load i64, i64* %ob_refcnt, align 8, !dbg !2074, !tbaa !1065
  %dec = add i64 %34, -1, !dbg !2074
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2074, !tbaa !1065
  %cmp28 = icmp ne i64 %dec, 0, !dbg !2075
  br i1 %cmp28, label %if.then.29, label %if.else.30, !dbg !2076

if.then.29:                                       ; preds = %do.body
  br label %if.end.31, !dbg !2077

if.else.30:                                       ; preds = %do.body
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2079, !tbaa !954
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1, !dbg !2081
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2081, !tbaa !1073
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4, !dbg !2082
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2082, !tbaa !1075
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2083, !tbaa !954
  call void %37(%struct._object* %38), !dbg !2084
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.30, %if.then.29
  %39 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2085
  call void @llvm.lifetime.end(i64 8, i8* %39) #3, !dbg !2085
  br label %do.cond, !dbg !2087

do.cond:                                          ; preds = %if.end.31
  br label %do.end, !dbg !2088

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !2090
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2090

if.end.32:                                        ; preds = %lor.lhs.false
  %40 = load %struct._object*, %struct._object** %result, align 8, !dbg !2091, !tbaa !954
  %41 = bitcast %struct._object* %40 to %struct.PyVarObject*, !dbg !2093
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %41, i32 0, i32 1, !dbg !2094
  %42 = load i64, i64* %ob_size, align 8, !dbg !2094, !tbaa !2095
  %43 = load i64, i64* %bufsize, align 8, !dbg !2096, !tbaa !1815
  %cmp33 = icmp slt i64 %42, %43, !dbg !2097
  br i1 %cmp33, label %if.then.34, label %if.end.39, !dbg !2098

if.then.34:                                       ; preds = %if.end.32
  %44 = load i64, i64* %bufsize, align 8, !dbg !2099, !tbaa !1815
  %call35 = call i32 @_PyBytes_Resize(%struct._object** %result, i64 %44), !dbg !2102
  %cmp36 = icmp slt i32 %call35, 0, !dbg !2103
  br i1 %cmp36, label %if.then.37, label %if.end.38, !dbg !2104

if.then.37:                                       ; preds = %if.then.34
  store %struct._object* null, %struct._object** %retval, !dbg !2105
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2105

if.end.38:                                        ; preds = %if.then.34
  br label %if.end.39, !dbg !2106

if.end.39:                                        ; preds = %if.end.38, %if.end.32
  br label %if.end.40, !dbg !2107

if.end.40:                                        ; preds = %if.end.39, %while.body
  %45 = bitcast %struct._ts** %_save to i8*, !dbg !2108
  call void @llvm.lifetime.start(i64 8, i8* %45) #3, !dbg !2108
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !603, metadata !958), !dbg !2109
  %call41 = call %struct._ts* @PyEval_SaveThread(), !dbg !2110
  store %struct._ts* %call41, %struct._ts** %_save, align 8, !dbg !2111, !tbaa !954
  %call42 = call i32* @__errno_location() #1, !dbg !2112
  store i32 0, i32* %call42, align 4, !dbg !2113, !tbaa !1182
  %46 = load i64, i64* %bufsize, align 8, !dbg !2114, !tbaa !1815
  %47 = load i64, i64* %bytes_read, align 8, !dbg !2115, !tbaa !1815
  %sub43 = sub i64 %46, %47, !dbg !2116
  store i64 %sub43, i64* %n, align 8, !dbg !2117, !tbaa !1815
  %48 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2118, !tbaa !954
  %fd44 = getelementptr inbounds %struct.fileio, %struct.fileio* %48, i32 0, i32 1, !dbg !2119
  %49 = load i32, i32* %fd44, align 4, !dbg !2119, !tbaa !963
  %50 = load %struct._object*, %struct._object** %result, align 8, !dbg !2120, !tbaa !954
  %51 = bitcast %struct._object* %50 to %struct.PyBytesObject*, !dbg !2121
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %51, i32 0, i32 2, !dbg !2122
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !2123
  %52 = load i64, i64* %bytes_read, align 8, !dbg !2124, !tbaa !1815
  %add.ptr = getelementptr i8, i8* %arraydecay, i64 %52, !dbg !2125
  %53 = load i64, i64* %n, align 8, !dbg !2126, !tbaa !1815
  %call45 = call i64 @read(i32 %49, i8* %add.ptr, i64 %53), !dbg !2127
  store i64 %call45, i64* %n, align 8, !dbg !2128, !tbaa !1815
  %54 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !2129, !tbaa !954
  call void @PyEval_RestoreThread(%struct._ts* %54), !dbg !2130
  %55 = bitcast %struct._ts** %_save to i8*, !dbg !2131
  call void @llvm.lifetime.end(i64 8, i8* %55) #3, !dbg !2131
  %56 = load i64, i64* %n, align 8, !dbg !2132, !tbaa !1815
  %cmp46 = icmp eq i64 %56, 0, !dbg !2134
  br i1 %cmp46, label %if.then.47, label %if.end.48, !dbg !2135

if.then.47:                                       ; preds = %if.end.40
  br label %while.end, !dbg !2136

if.end.48:                                        ; preds = %if.end.40
  %57 = load i64, i64* %n, align 8, !dbg !2137, !tbaa !1815
  %cmp49 = icmp slt i64 %57, 0, !dbg !2138
  br i1 %cmp49, label %if.then.50, label %if.end.102, !dbg !2139

if.then.50:                                       ; preds = %if.end.48
  %call51 = call i32* @__errno_location() #1, !dbg !2140
  %58 = load i32, i32* %call51, align 4, !dbg !2141, !tbaa !1182
  %cmp52 = icmp eq i32 %58, 4, !dbg !2142
  br i1 %cmp52, label %if.then.53, label %if.end.69, !dbg !2143

if.then.53:                                       ; preds = %if.then.50
  %call54 = call i32 @PyErr_CheckSignals(), !dbg !2144
  %tobool = icmp ne i32 %call54, 0, !dbg !2144
  br i1 %tobool, label %if.then.55, label %if.end.68, !dbg !2145

if.then.55:                                       ; preds = %if.then.53
  br label %do.body.56, !dbg !2146

do.body.56:                                       ; preds = %if.then.55
  %59 = bitcast %struct._object** %_py_decref_tmp57 to i8*, !dbg !2147
  call void @llvm.lifetime.start(i64 8, i8* %59) #3, !dbg !2147
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp57, metadata !605, metadata !958), !dbg !2149
  %60 = load %struct._object*, %struct._object** %result, align 8, !dbg !2150, !tbaa !954
  store %struct._object* %60, %struct._object** %_py_decref_tmp57, align 8, !dbg !2149, !tbaa !954
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8, !dbg !2151, !tbaa !954
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 0, !dbg !2153
  %62 = load i64, i64* %ob_refcnt58, align 8, !dbg !2154, !tbaa !1065
  %dec59 = add i64 %62, -1, !dbg !2154
  store i64 %dec59, i64* %ob_refcnt58, align 8, !dbg !2154, !tbaa !1065
  %cmp60 = icmp ne i64 %dec59, 0, !dbg !2155
  br i1 %cmp60, label %if.then.61, label %if.else.62, !dbg !2156

if.then.61:                                       ; preds = %do.body.56
  br label %if.end.65, !dbg !2157

if.else.62:                                       ; preds = %do.body.56
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8, !dbg !2159, !tbaa !954
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 1, !dbg !2161
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8, !dbg !2161, !tbaa !1073
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %64, i32 0, i32 4, !dbg !2162
  %65 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8, !dbg !2162, !tbaa !1075
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8, !dbg !2163, !tbaa !954
  call void %65(%struct._object* %66), !dbg !2164
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.61
  %67 = bitcast %struct._object** %_py_decref_tmp57 to i8*, !dbg !2165
  call void @llvm.lifetime.end(i64 8, i8* %67) #3, !dbg !2165
  br label %do.cond.66, !dbg !2167

do.cond.66:                                       ; preds = %if.end.65
  br label %do.end.67, !dbg !2168

do.end.67:                                        ; preds = %do.cond.66
  store %struct._object* null, %struct._object** %retval, !dbg !2170
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2170

if.end.68:                                        ; preds = %if.then.53
  br label %while.cond, !dbg !2171

if.end.69:                                        ; preds = %if.then.50
  %68 = load i64, i64* %bytes_read, align 8, !dbg !2172, !tbaa !1815
  %cmp70 = icmp sgt i64 %68, 0, !dbg !2174
  br i1 %cmp70, label %if.then.71, label %if.end.72, !dbg !2175

if.then.71:                                       ; preds = %if.end.69
  br label %while.end, !dbg !2176

if.end.72:                                        ; preds = %if.end.69
  %call73 = call i32* @__errno_location() #1, !dbg !2177
  %69 = load i32, i32* %call73, align 4, !dbg !2178, !tbaa !1182
  %cmp74 = icmp eq i32 %69, 11, !dbg !2179
  br i1 %cmp74, label %if.then.75, label %if.end.88, !dbg !2180

if.then.75:                                       ; preds = %if.end.72
  br label %do.body.76, !dbg !2181

do.body.76:                                       ; preds = %if.then.75
  %70 = bitcast %struct._object** %_py_decref_tmp77 to i8*, !dbg !2182
  call void @llvm.lifetime.start(i64 8, i8* %70) #3, !dbg !2182
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp77, metadata !613, metadata !958), !dbg !2184
  %71 = load %struct._object*, %struct._object** %result, align 8, !dbg !2185, !tbaa !954
  store %struct._object* %71, %struct._object** %_py_decref_tmp77, align 8, !dbg !2184, !tbaa !954
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8, !dbg !2186, !tbaa !954
  %ob_refcnt78 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 0, !dbg !2188
  %73 = load i64, i64* %ob_refcnt78, align 8, !dbg !2189, !tbaa !1065
  %dec79 = add i64 %73, -1, !dbg !2189
  store i64 %dec79, i64* %ob_refcnt78, align 8, !dbg !2189, !tbaa !1065
  %cmp80 = icmp ne i64 %dec79, 0, !dbg !2190
  br i1 %cmp80, label %if.then.81, label %if.else.82, !dbg !2191

if.then.81:                                       ; preds = %do.body.76
  br label %if.end.85, !dbg !2192

if.else.82:                                       ; preds = %do.body.76
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8, !dbg !2194, !tbaa !954
  %ob_type83 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 1, !dbg !2196
  %75 = load %struct._typeobject*, %struct._typeobject** %ob_type83, align 8, !dbg !2196, !tbaa !1073
  %tp_dealloc84 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %75, i32 0, i32 4, !dbg !2197
  %76 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc84, align 8, !dbg !2197, !tbaa !1075
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8, !dbg !2198, !tbaa !954
  call void %76(%struct._object* %77), !dbg !2199
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.82, %if.then.81
  %78 = bitcast %struct._object** %_py_decref_tmp77 to i8*, !dbg !2200
  call void @llvm.lifetime.end(i64 8, i8* %78) #3, !dbg !2200
  br label %do.cond.86, !dbg !2202

do.cond.86:                                       ; preds = %if.end.85
  br label %do.end.87, !dbg !2203

do.end.87:                                        ; preds = %do.cond.86
  %79 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2205, !tbaa !1065
  %inc = add i64 %79, 1, !dbg !2205
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2205, !tbaa !1065
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2206
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2206

if.end.88:                                        ; preds = %if.end.72
  br label %do.body.89, !dbg !2207

do.body.89:                                       ; preds = %if.end.88
  %80 = bitcast %struct._object** %_py_decref_tmp90 to i8*, !dbg !2208
  call void @llvm.lifetime.start(i64 8, i8* %80) #3, !dbg !2208
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp90, metadata !617, metadata !958), !dbg !2210
  %81 = load %struct._object*, %struct._object** %result, align 8, !dbg !2211, !tbaa !954
  store %struct._object* %81, %struct._object** %_py_decref_tmp90, align 8, !dbg !2210, !tbaa !954
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8, !dbg !2212, !tbaa !954
  %ob_refcnt91 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 0, !dbg !2214
  %83 = load i64, i64* %ob_refcnt91, align 8, !dbg !2215, !tbaa !1065
  %dec92 = add i64 %83, -1, !dbg !2215
  store i64 %dec92, i64* %ob_refcnt91, align 8, !dbg !2215, !tbaa !1065
  %cmp93 = icmp ne i64 %dec92, 0, !dbg !2216
  br i1 %cmp93, label %if.then.94, label %if.else.95, !dbg !2217

if.then.94:                                       ; preds = %do.body.89
  br label %if.end.98, !dbg !2218

if.else.95:                                       ; preds = %do.body.89
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8, !dbg !2220, !tbaa !954
  %ob_type96 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 1, !dbg !2222
  %85 = load %struct._typeobject*, %struct._typeobject** %ob_type96, align 8, !dbg !2222, !tbaa !1073
  %tp_dealloc97 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %85, i32 0, i32 4, !dbg !2223
  %86 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc97, align 8, !dbg !2223, !tbaa !1075
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8, !dbg !2224, !tbaa !954
  call void %86(%struct._object* %87), !dbg !2225
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.95, %if.then.94
  %88 = bitcast %struct._object** %_py_decref_tmp90 to i8*, !dbg !2226
  call void @llvm.lifetime.end(i64 8, i8* %88) #3, !dbg !2226
  br label %do.cond.99, !dbg !2228

do.cond.99:                                       ; preds = %if.end.98
  br label %do.end.100, !dbg !2229

do.end.100:                                       ; preds = %do.cond.99
  %89 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !2231, !tbaa !954
  %call101 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %89), !dbg !2232
  store %struct._object* null, %struct._object** %retval, !dbg !2233
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2233

if.end.102:                                       ; preds = %if.end.48
  %90 = load i64, i64* %n, align 8, !dbg !2234, !tbaa !1815
  %91 = load i64, i64* %bytes_read, align 8, !dbg !2235, !tbaa !1815
  %add103 = add i64 %91, %90, !dbg !2235
  store i64 %add103, i64* %bytes_read, align 8, !dbg !2235, !tbaa !1815
  %92 = load i64, i64* %n, align 8, !dbg !2236, !tbaa !1815
  %93 = load i64, i64* %pos, align 8, !dbg !2237, !tbaa !1815
  %add104 = add i64 %93, %92, !dbg !2237
  store i64 %add104, i64* %pos, align 8, !dbg !2237, !tbaa !1815
  br label %while.cond, !dbg !2045

while.end:                                        ; preds = %if.then.71, %if.then.47
  %94 = load %struct._object*, %struct._object** %result, align 8, !dbg !2238, !tbaa !954
  %95 = bitcast %struct._object* %94 to %struct.PyVarObject*, !dbg !2240
  %ob_size105 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %95, i32 0, i32 1, !dbg !2241
  %96 = load i64, i64* %ob_size105, align 8, !dbg !2241, !tbaa !2095
  %97 = load i64, i64* %bytes_read, align 8, !dbg !2242, !tbaa !1815
  %cmp106 = icmp sgt i64 %96, %97, !dbg !2243
  br i1 %cmp106, label %if.then.107, label %if.end.112, !dbg !2244

if.then.107:                                      ; preds = %while.end
  %98 = load i64, i64* %bytes_read, align 8, !dbg !2245, !tbaa !1815
  %call108 = call i32 @_PyBytes_Resize(%struct._object** %result, i64 %98), !dbg !2248
  %cmp109 = icmp slt i32 %call108, 0, !dbg !2249
  br i1 %cmp109, label %if.then.110, label %if.end.111, !dbg !2250

if.then.110:                                      ; preds = %if.then.107
  store %struct._object* null, %struct._object** %retval, !dbg !2251
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2251

if.end.111:                                       ; preds = %if.then.107
  br label %if.end.112, !dbg !2252

if.end.112:                                       ; preds = %if.end.111, %while.end
  %99 = load %struct._object*, %struct._object** %result, align 8, !dbg !2253, !tbaa !954
  store %struct._object* %99, %struct._object** %retval, !dbg !2254
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2254

cleanup:                                          ; preds = %if.end.112, %if.then.110, %do.end.100, %do.end.87, %do.end.67, %if.then.37, %do.end, %if.then.20, %if.then
  %100 = bitcast i64* %bufsize to i8*, !dbg !2255
  call void @llvm.lifetime.end(i64 8, i8* %100) #3, !dbg !2255
  %101 = bitcast i64* %n to i8*, !dbg !2255
  call void @llvm.lifetime.end(i64 8, i8* %101) #3, !dbg !2255
  %102 = bitcast i64* %bytes_read to i8*, !dbg !2255
  call void @llvm.lifetime.end(i64 8, i8* %102) #3, !dbg !2255
  %103 = bitcast %struct._object** %result to i8*, !dbg !2255
  call void @llvm.lifetime.end(i64 8, i8* %103) #3, !dbg !2255
  %104 = bitcast i64* %end to i8*, !dbg !2255
  call void @llvm.lifetime.end(i64 8, i8* %104) #3, !dbg !2255
  %105 = bitcast i64* %pos to i8*, !dbg !2255
  call void @llvm.lifetime.end(i64 8, i8* %105) #3, !dbg !2255
  %106 = bitcast %struct.stat* %st to i8*, !dbg !2255
  call void @llvm.lifetime.end(i64 144, i8* %106) #3, !dbg !2255
  %107 = load %struct._object*, %struct._object** %retval, !dbg !2255
  ret %struct._object* %107, !dbg !2255
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
  %cleanup.dest.slot = alloca i32
  %_save = alloca %struct._ts*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct.fileio** %self.addr, metadata !655, metadata !958), !dbg !2256
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !656, metadata !958), !dbg !2257
  %0 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !2258
  call void @llvm.lifetime.start(i64 80, i8* %0) #3, !dbg !2258
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %pbuf, metadata !657, metadata !958), !dbg !2259
  %1 = bitcast i64* %n to i8*, !dbg !2260
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2260
  call void @llvm.dbg.declare(metadata i64* %n, metadata !658, metadata !958), !dbg !2261
  %2 = bitcast i64* %len to i8*, !dbg !2260
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !2260
  call void @llvm.dbg.declare(metadata i64* %len, metadata !659, metadata !958), !dbg !2262
  %3 = bitcast i32* %err to i8*, !dbg !2263
  call void @llvm.lifetime.start(i64 4, i8* %3) #3, !dbg !2263
  call void @llvm.dbg.declare(metadata i32* %err, metadata !660, metadata !958), !dbg !2264
  %4 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2265, !tbaa !954
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %4, i32 0, i32 1, !dbg !2267
  %5 = load i32, i32* %fd, align 4, !dbg !2267, !tbaa !963
  %cmp = icmp slt i32 %5, 0, !dbg !2268
  br i1 %cmp, label %if.then, label %if.end, !dbg !2269

if.then:                                          ; preds = %entry
  %call = call %struct._object* @err_closed(), !dbg !2270
  store %struct._object* %call, %struct._object** %retval, !dbg !2271
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2271

if.end:                                           ; preds = %entry
  %6 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2272, !tbaa !954
  %readable = getelementptr inbounds %struct.fileio, %struct.fileio* %6, i32 0, i32 2, !dbg !2274
  %bf.load = load i8, i8* %readable, align 4, !dbg !2274
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !2274
  %bf.clear = and i8 %bf.lshr, 1, !dbg !2274
  %bf.cast = zext i8 %bf.clear to i32, !dbg !2274
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !2272
  br i1 %tobool, label %if.end.3, label %if.then.1, !dbg !2275

if.then.1:                                        ; preds = %if.end
  %call2 = call %struct._object* @err_mode(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0)), !dbg !2276
  store %struct._object* %call2, %struct._object** %retval, !dbg !2277
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2277

if.end.3:                                         ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2278, !tbaa !954
  %call4 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), %struct.bufferinfo* %pbuf), !dbg !2280
  %tobool5 = icmp ne i32 %call4, 0, !dbg !2280
  br i1 %tobool5, label %if.end.7, label %if.then.6, !dbg !2281

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval, !dbg !2282
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2282

if.end.7:                                         ; preds = %if.end.3
  %len8 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2, !dbg !2283
  %8 = load i64, i64* %len8, align 8, !dbg !2283, !tbaa !2284
  store i64 %8, i64* %len, align 8, !dbg !2286, !tbaa !1815
  %9 = bitcast %struct._ts** %_save to i8*, !dbg !2287
  call void @llvm.lifetime.start(i64 8, i8* %9) #3, !dbg !2287
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !661, metadata !958), !dbg !2288
  %call9 = call %struct._ts* @PyEval_SaveThread(), !dbg !2289
  store %struct._ts* %call9, %struct._ts** %_save, align 8, !dbg !2290, !tbaa !954
  %call10 = call i32* @__errno_location() #1, !dbg !2291
  store i32 0, i32* %call10, align 4, !dbg !2292, !tbaa !1182
  %10 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2293, !tbaa !954
  %fd11 = getelementptr inbounds %struct.fileio, %struct.fileio* %10, i32 0, i32 1, !dbg !2294
  %11 = load i32, i32* %fd11, align 4, !dbg !2294, !tbaa !963
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0, !dbg !2295
  %12 = load i8*, i8** %buf, align 8, !dbg !2295, !tbaa !2296
  %13 = load i64, i64* %len, align 8, !dbg !2297, !tbaa !1815
  %call12 = call i64 @read(i32 %11, i8* %12, i64 %13), !dbg !2298
  store i64 %call12, i64* %n, align 8, !dbg !2299, !tbaa !1815
  %14 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !2300, !tbaa !954
  call void @PyEval_RestoreThread(%struct._ts* %14), !dbg !2301
  %15 = bitcast %struct._ts** %_save to i8*, !dbg !2302
  call void @llvm.lifetime.end(i64 8, i8* %15) #3, !dbg !2302
  %call13 = call i32* @__errno_location() #1, !dbg !2303
  %16 = load i32, i32* %call13, align 4, !dbg !2304, !tbaa !1182
  store i32 %16, i32* %err, align 4, !dbg !2305, !tbaa !1182
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf), !dbg !2306
  %17 = load i64, i64* %n, align 8, !dbg !2307, !tbaa !1815
  %cmp14 = icmp slt i64 %17, 0, !dbg !2309
  br i1 %cmp14, label %if.then.15, label %if.end.21, !dbg !2310

if.then.15:                                       ; preds = %if.end.7
  %18 = load i32, i32* %err, align 4, !dbg !2311, !tbaa !1182
  %cmp16 = icmp eq i32 %18, 11, !dbg !2314
  br i1 %cmp16, label %if.then.17, label %if.end.18, !dbg !2315

if.then.17:                                       ; preds = %if.then.15
  %19 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2316, !tbaa !1065
  %inc = add i64 %19, 1, !dbg !2316
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2316, !tbaa !1065
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2317
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2317

if.end.18:                                        ; preds = %if.then.15
  %20 = load i32, i32* %err, align 4, !dbg !2318, !tbaa !1182
  %call19 = call i32* @__errno_location() #1, !dbg !2319
  store i32 %20, i32* %call19, align 4, !dbg !2320, !tbaa !1182
  %21 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !2321, !tbaa !954
  %call20 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %21), !dbg !2322
  store %struct._object* null, %struct._object** %retval, !dbg !2323
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2323

if.end.21:                                        ; preds = %if.end.7
  %22 = load i64, i64* %n, align 8, !dbg !2324, !tbaa !1815
  %call22 = call %struct._object* @PyLong_FromSsize_t(i64 %22), !dbg !2325
  store %struct._object* %call22, %struct._object** %retval, !dbg !2326
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2326

cleanup:                                          ; preds = %if.end.21, %if.end.18, %if.then.17, %if.then.6, %if.then.1, %if.then
  %23 = bitcast i32* %err to i8*, !dbg !2327
  call void @llvm.lifetime.end(i64 4, i8* %23) #3, !dbg !2327
  %24 = bitcast i64* %len to i8*, !dbg !2327
  call void @llvm.lifetime.end(i64 8, i8* %24) #3, !dbg !2327
  %25 = bitcast i64* %n to i8*, !dbg !2327
  call void @llvm.lifetime.end(i64 8, i8* %25) #3, !dbg !2327
  %26 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !2327
  call void @llvm.lifetime.end(i64 80, i8* %26) #3, !dbg !2327
  %27 = load %struct._object*, %struct._object** %retval, !dbg !2327
  ret %struct._object* %27, !dbg !2327
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
  %cleanup.dest.slot = alloca i32
  %_save = alloca %struct._ts*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct.fileio** %self.addr, metadata !667, metadata !958), !dbg !2328
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !668, metadata !958), !dbg !2329
  %0 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !2330
  call void @llvm.lifetime.start(i64 80, i8* %0) #3, !dbg !2330
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %pbuf, metadata !669, metadata !958), !dbg !2331
  %1 = bitcast i64* %n to i8*, !dbg !2332
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2332
  call void @llvm.dbg.declare(metadata i64* %n, metadata !670, metadata !958), !dbg !2333
  %2 = bitcast i64* %len to i8*, !dbg !2332
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !2332
  call void @llvm.dbg.declare(metadata i64* %len, metadata !671, metadata !958), !dbg !2334
  %3 = bitcast i32* %err to i8*, !dbg !2335
  call void @llvm.lifetime.start(i64 4, i8* %3) #3, !dbg !2335
  call void @llvm.dbg.declare(metadata i32* %err, metadata !672, metadata !958), !dbg !2336
  %4 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2337, !tbaa !954
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %4, i32 0, i32 1, !dbg !2339
  %5 = load i32, i32* %fd, align 4, !dbg !2339, !tbaa !963
  %cmp = icmp slt i32 %5, 0, !dbg !2340
  br i1 %cmp, label %if.then, label %if.end, !dbg !2341

if.then:                                          ; preds = %entry
  %call = call %struct._object* @err_closed(), !dbg !2342
  store %struct._object* %call, %struct._object** %retval, !dbg !2343
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2343

if.end:                                           ; preds = %entry
  %6 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2344, !tbaa !954
  %writable = getelementptr inbounds %struct.fileio, %struct.fileio* %6, i32 0, i32 2, !dbg !2346
  %bf.load = load i8, i8* %writable, align 4, !dbg !2346
  %bf.lshr = lshr i8 %bf.load, 2, !dbg !2346
  %bf.clear = and i8 %bf.lshr, 1, !dbg !2346
  %bf.cast = zext i8 %bf.clear to i32, !dbg !2346
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !2344
  br i1 %tobool, label %if.end.3, label %if.then.1, !dbg !2347

if.then.1:                                        ; preds = %if.end
  %call2 = call %struct._object* @err_mode(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0)), !dbg !2348
  store %struct._object* %call2, %struct._object** %retval, !dbg !2349
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2349

if.end.3:                                         ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2350, !tbaa !954
  %call4 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), %struct.bufferinfo* %pbuf), !dbg !2352
  %tobool5 = icmp ne i32 %call4, 0, !dbg !2352
  br i1 %tobool5, label %if.end.7, label %if.then.6, !dbg !2353

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval, !dbg !2354
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2354

if.end.7:                                         ; preds = %if.end.3
  %8 = bitcast %struct._ts** %_save to i8*, !dbg !2355
  call void @llvm.lifetime.start(i64 8, i8* %8) #3, !dbg !2355
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !673, metadata !958), !dbg !2356
  %call8 = call %struct._ts* @PyEval_SaveThread(), !dbg !2357
  store %struct._ts* %call8, %struct._ts** %_save, align 8, !dbg !2358, !tbaa !954
  %call9 = call i32* @__errno_location() #1, !dbg !2359
  store i32 0, i32* %call9, align 4, !dbg !2360, !tbaa !1182
  %len10 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2, !dbg !2361
  %9 = load i64, i64* %len10, align 8, !dbg !2361, !tbaa !2284
  store i64 %9, i64* %len, align 8, !dbg !2362, !tbaa !1815
  %10 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2363, !tbaa !954
  %fd11 = getelementptr inbounds %struct.fileio, %struct.fileio* %10, i32 0, i32 1, !dbg !2364
  %11 = load i32, i32* %fd11, align 4, !dbg !2364, !tbaa !963
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0, !dbg !2365
  %12 = load i8*, i8** %buf, align 8, !dbg !2365, !tbaa !2296
  %13 = load i64, i64* %len, align 8, !dbg !2366, !tbaa !1815
  %call12 = call i64 @write(i32 %11, i8* %12, i64 %13), !dbg !2367
  store i64 %call12, i64* %n, align 8, !dbg !2368, !tbaa !1815
  %14 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !2369, !tbaa !954
  call void @PyEval_RestoreThread(%struct._ts* %14), !dbg !2370
  %15 = bitcast %struct._ts** %_save to i8*, !dbg !2371
  call void @llvm.lifetime.end(i64 8, i8* %15) #3, !dbg !2371
  %call13 = call i32* @__errno_location() #1, !dbg !2372
  %16 = load i32, i32* %call13, align 4, !dbg !2373, !tbaa !1182
  store i32 %16, i32* %err, align 4, !dbg !2374, !tbaa !1182
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf), !dbg !2375
  %17 = load i64, i64* %n, align 8, !dbg !2376, !tbaa !1815
  %cmp14 = icmp slt i64 %17, 0, !dbg !2378
  br i1 %cmp14, label %if.then.15, label %if.end.21, !dbg !2379

if.then.15:                                       ; preds = %if.end.7
  %18 = load i32, i32* %err, align 4, !dbg !2380, !tbaa !1182
  %cmp16 = icmp eq i32 %18, 11, !dbg !2383
  br i1 %cmp16, label %if.then.17, label %if.end.18, !dbg !2384

if.then.17:                                       ; preds = %if.then.15
  %19 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2385, !tbaa !1065
  %inc = add i64 %19, 1, !dbg !2385
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2385, !tbaa !1065
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2386
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2386

if.end.18:                                        ; preds = %if.then.15
  %20 = load i32, i32* %err, align 4, !dbg !2387, !tbaa !1182
  %call19 = call i32* @__errno_location() #1, !dbg !2388
  store i32 %20, i32* %call19, align 4, !dbg !2389, !tbaa !1182
  %21 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !2390, !tbaa !954
  %call20 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %21), !dbg !2391
  store %struct._object* null, %struct._object** %retval, !dbg !2392
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2392

if.end.21:                                        ; preds = %if.end.7
  %22 = load i64, i64* %n, align 8, !dbg !2393, !tbaa !1815
  %call22 = call %struct._object* @PyLong_FromSsize_t(i64 %22), !dbg !2394
  store %struct._object* %call22, %struct._object** %retval, !dbg !2395
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2395

cleanup:                                          ; preds = %if.end.21, %if.end.18, %if.then.17, %if.then.6, %if.then.1, %if.then
  %23 = bitcast i32* %err to i8*, !dbg !2396
  call void @llvm.lifetime.end(i64 4, i8* %23) #3, !dbg !2396
  %24 = bitcast i64* %len to i8*, !dbg !2396
  call void @llvm.lifetime.end(i64 8, i8* %24) #3, !dbg !2396
  %25 = bitcast i64* %n to i8*, !dbg !2396
  call void @llvm.lifetime.end(i64 8, i8* %25) #3, !dbg !2396
  %26 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !2396
  call void @llvm.lifetime.end(i64 80, i8* %26) #3, !dbg !2396
  %27 = load %struct._object*, %struct._object** %retval, !dbg !2396
  ret %struct._object* %27, !dbg !2396
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_seek(%struct.fileio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.fileio*, align 8
  %args.addr = alloca %struct._object*, align 8
  %posobj = alloca %struct._object*, align 8
  %whence = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct.fileio** %self.addr, metadata !679, metadata !958), !dbg !2397
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !680, metadata !958), !dbg !2398
  %0 = bitcast %struct._object** %posobj to i8*, !dbg !2399
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2399
  call void @llvm.dbg.declare(metadata %struct._object** %posobj, metadata !681, metadata !958), !dbg !2400
  %1 = bitcast i32* %whence to i8*, !dbg !2401
  call void @llvm.lifetime.start(i64 4, i8* %1) #3, !dbg !2401
  call void @llvm.dbg.declare(metadata i32* %whence, metadata !682, metadata !958), !dbg !2402
  store i32 0, i32* %whence, align 4, !dbg !2402, !tbaa !1182
  %2 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2403, !tbaa !954
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %2, i32 0, i32 1, !dbg !2405
  %3 = load i32, i32* %fd, align 4, !dbg !2405, !tbaa !963
  %cmp = icmp slt i32 %3, 0, !dbg !2406
  br i1 %cmp, label %if.then, label %if.end, !dbg !2407

if.then:                                          ; preds = %entry
  %call = call %struct._object* @err_closed(), !dbg !2408
  store %struct._object* %call, %struct._object** %retval, !dbg !2409
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2409

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2410, !tbaa !954
  %call1 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), %struct._object** %posobj, i32* %whence), !dbg !2412
  %tobool = icmp ne i32 %call1, 0, !dbg !2412
  br i1 %tobool, label %if.end.3, label %if.then.2, !dbg !2413

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2414
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2414

if.end.3:                                         ; preds = %if.end
  %5 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2415, !tbaa !954
  %fd4 = getelementptr inbounds %struct.fileio, %struct.fileio* %5, i32 0, i32 1, !dbg !2416
  %6 = load i32, i32* %fd4, align 4, !dbg !2416, !tbaa !963
  %7 = load %struct._object*, %struct._object** %posobj, align 8, !dbg !2417, !tbaa !954
  %8 = load i32, i32* %whence, align 4, !dbg !2418, !tbaa !1182
  %call5 = call %struct._object* @portable_lseek(i32 %6, %struct._object* %7, i32 %8), !dbg !2419
  store %struct._object* %call5, %struct._object** %retval, !dbg !2420
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2420

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %9 = bitcast i32* %whence to i8*, !dbg !2421
  call void @llvm.lifetime.end(i64 4, i8* %9) #3, !dbg !2421
  %10 = bitcast %struct._object** %posobj to i8*, !dbg !2421
  call void @llvm.lifetime.end(i64 8, i8* %10) #3, !dbg !2421
  %11 = load %struct._object*, %struct._object** %retval, !dbg !2421
  ret %struct._object* %11, !dbg !2421
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_tell(%struct.fileio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.fileio*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct.fileio** %self.addr, metadata !698, metadata !958), !dbg !2422
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !699, metadata !958), !dbg !2423
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2424, !tbaa !954
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i32 0, i32 1, !dbg !2426
  %1 = load i32, i32* %fd, align 4, !dbg !2426, !tbaa !963
  %cmp = icmp slt i32 %1, 0, !dbg !2427
  br i1 %cmp, label %if.then, label %if.end, !dbg !2428

if.then:                                          ; preds = %entry
  %call = call %struct._object* @err_closed(), !dbg !2429
  store %struct._object* %call, %struct._object** %retval, !dbg !2430
  br label %return, !dbg !2430

if.end:                                           ; preds = %entry
  %2 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2431, !tbaa !954
  %fd1 = getelementptr inbounds %struct.fileio, %struct.fileio* %2, i32 0, i32 1, !dbg !2432
  %3 = load i32, i32* %fd1, align 4, !dbg !2432, !tbaa !963
  %call2 = call %struct._object* @portable_lseek(i32 %3, %struct._object* null, i32 1), !dbg !2433
  store %struct._object* %call2, %struct._object** %retval, !dbg !2434
  br label %return, !dbg !2434

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval, !dbg !2435
  ret %struct._object* %4, !dbg !2435
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_save = alloca %struct._ts*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct.fileio** %self.addr, metadata !702, metadata !958), !dbg !2436
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !703, metadata !958), !dbg !2437
  %0 = bitcast %struct._object** %posobj to i8*, !dbg !2438
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2438
  call void @llvm.dbg.declare(metadata %struct._object** %posobj, metadata !704, metadata !958), !dbg !2439
  store %struct._object* null, %struct._object** %posobj, align 8, !dbg !2439, !tbaa !954
  %1 = bitcast i64* %pos to i8*, !dbg !2440
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2440
  call void @llvm.dbg.declare(metadata i64* %pos, metadata !705, metadata !958), !dbg !2441
  %2 = bitcast i32* %ret to i8*, !dbg !2442
  call void @llvm.lifetime.start(i64 4, i8* %2) #3, !dbg !2442
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !706, metadata !958), !dbg !2443
  %3 = bitcast i32* %fd to i8*, !dbg !2444
  call void @llvm.lifetime.start(i64 4, i8* %3) #3, !dbg !2444
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !707, metadata !958), !dbg !2445
  %4 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2446, !tbaa !954
  %fd1 = getelementptr inbounds %struct.fileio, %struct.fileio* %4, i32 0, i32 1, !dbg !2447
  %5 = load i32, i32* %fd1, align 4, !dbg !2447, !tbaa !963
  store i32 %5, i32* %fd, align 4, !dbg !2448, !tbaa !1182
  %6 = load i32, i32* %fd, align 4, !dbg !2449, !tbaa !1182
  %cmp = icmp slt i32 %6, 0, !dbg !2451
  br i1 %cmp, label %if.then, label %if.end, !dbg !2452

if.then:                                          ; preds = %entry
  %call = call %struct._object* @err_closed(), !dbg !2453
  store %struct._object* %call, %struct._object** %retval, !dbg !2454
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2454

if.end:                                           ; preds = %entry
  %7 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2455, !tbaa !954
  %writable = getelementptr inbounds %struct.fileio, %struct.fileio* %7, i32 0, i32 2, !dbg !2457
  %bf.load = load i8, i8* %writable, align 4, !dbg !2457
  %bf.lshr = lshr i8 %bf.load, 2, !dbg !2457
  %bf.clear = and i8 %bf.lshr, 1, !dbg !2457
  %bf.cast = zext i8 %bf.clear to i32, !dbg !2457
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !2455
  br i1 %tobool, label %if.end.4, label %if.then.2, !dbg !2458

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct._object* @err_mode(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0)), !dbg !2459
  store %struct._object* %call3, %struct._object** %retval, !dbg !2460
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2460

if.end.4:                                         ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2461, !tbaa !954
  %call5 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0), %struct._object** %posobj), !dbg !2463
  %tobool6 = icmp ne i32 %call5, 0, !dbg !2463
  br i1 %tobool6, label %if.end.8, label %if.then.7, !dbg !2464

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval, !dbg !2465
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2465

if.end.8:                                         ; preds = %if.end.4
  %9 = load %struct._object*, %struct._object** %posobj, align 8, !dbg !2466, !tbaa !954
  %cmp9 = icmp eq %struct._object* %9, @_Py_NoneStruct, !dbg !2468
  br i1 %cmp9, label %if.then.11, label %lor.lhs.false, !dbg !2469

lor.lhs.false:                                    ; preds = %if.end.8
  %10 = load %struct._object*, %struct._object** %posobj, align 8, !dbg !2470, !tbaa !954
  %cmp10 = icmp eq %struct._object* %10, null, !dbg !2472
  br i1 %cmp10, label %if.then.11, label %if.else, !dbg !2473

if.then.11:                                       ; preds = %lor.lhs.false, %if.end.8
  %11 = load i32, i32* %fd, align 4, !dbg !2474, !tbaa !1182
  %call12 = call %struct._object* @portable_lseek(i32 %11, %struct._object* null, i32 1), !dbg !2476
  store %struct._object* %call12, %struct._object** %posobj, align 8, !dbg !2477, !tbaa !954
  %12 = load %struct._object*, %struct._object** %posobj, align 8, !dbg !2478, !tbaa !954
  %cmp13 = icmp eq %struct._object* %12, null, !dbg !2480
  br i1 %cmp13, label %if.then.14, label %if.end.15, !dbg !2481

if.then.14:                                       ; preds = %if.then.11
  store %struct._object* null, %struct._object** %retval, !dbg !2482
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2482

if.end.15:                                        ; preds = %if.then.11
  br label %if.end.16, !dbg !2483

if.else:                                          ; preds = %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %posobj, align 8, !dbg !2484, !tbaa !954
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !2486
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !2487, !tbaa !1065
  %inc = add i64 %14, 1, !dbg !2487
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2487, !tbaa !1065
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.end.15
  %15 = load %struct._object*, %struct._object** %posobj, align 8, !dbg !2488, !tbaa !954
  %call17 = call i64 @PyLong_AsLong(%struct._object* %15), !dbg !2489
  store i64 %call17, i64* %pos, align 8, !dbg !2490, !tbaa !1815
  %call18 = call %struct._object* @PyErr_Occurred(), !dbg !2491
  %tobool19 = icmp ne %struct._object* %call18, null, !dbg !2491
  br i1 %tobool19, label %if.then.20, label %if.end.26, !dbg !2492

if.then.20:                                       ; preds = %if.end.16
  br label %do.body, !dbg !2493

do.body:                                          ; preds = %if.then.20
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2494
  call void @llvm.lifetime.start(i64 8, i8* %16) #3, !dbg !2494
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !708, metadata !958), !dbg !2496
  %17 = load %struct._object*, %struct._object** %posobj, align 8, !dbg !2497, !tbaa !954
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8, !dbg !2496, !tbaa !954
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2498, !tbaa !954
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0, !dbg !2500
  %19 = load i64, i64* %ob_refcnt21, align 8, !dbg !2501, !tbaa !1065
  %dec = add i64 %19, -1, !dbg !2501
  store i64 %dec, i64* %ob_refcnt21, align 8, !dbg !2501, !tbaa !1065
  %cmp22 = icmp ne i64 %dec, 0, !dbg !2502
  br i1 %cmp22, label %if.then.23, label %if.else.24, !dbg !2503

if.then.23:                                       ; preds = %do.body
  br label %if.end.25, !dbg !2504

if.else.24:                                       ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2506, !tbaa !954
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1, !dbg !2508
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2508, !tbaa !1073
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4, !dbg !2509
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2509, !tbaa !1075
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2510, !tbaa !954
  call void %22(%struct._object* %23), !dbg !2511
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.23
  %24 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2512
  call void @llvm.lifetime.end(i64 8, i8* %24) #3, !dbg !2512
  br label %do.cond, !dbg !2514

do.cond:                                          ; preds = %if.end.25
  br label %do.end, !dbg !2515

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !2517
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2517

if.end.26:                                        ; preds = %if.end.16
  %25 = bitcast %struct._ts** %_save to i8*, !dbg !2518
  call void @llvm.lifetime.start(i64 8, i8* %25) #3, !dbg !2518
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !712, metadata !958), !dbg !2519
  %call27 = call %struct._ts* @PyEval_SaveThread(), !dbg !2520
  store %struct._ts* %call27, %struct._ts** %_save, align 8, !dbg !2521, !tbaa !954
  %call28 = call i32* @__errno_location() #1, !dbg !2522
  store i32 0, i32* %call28, align 4, !dbg !2523, !tbaa !1182
  %26 = load i32, i32* %fd, align 4, !dbg !2524, !tbaa !1182
  %27 = load i64, i64* %pos, align 8, !dbg !2525, !tbaa !1815
  %call29 = call i32 @ftruncate64(i32 %26, i64 %27) #3, !dbg !2526
  store i32 %call29, i32* %ret, align 4, !dbg !2527, !tbaa !1182
  %28 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !2528, !tbaa !954
  call void @PyEval_RestoreThread(%struct._ts* %28), !dbg !2529
  %29 = bitcast %struct._ts** %_save to i8*, !dbg !2530
  call void @llvm.lifetime.end(i64 8, i8* %29) #3, !dbg !2530
  %30 = load i32, i32* %ret, align 4, !dbg !2531, !tbaa !1182
  %cmp30 = icmp ne i32 %30, 0, !dbg !2532
  br i1 %cmp30, label %if.then.31, label %if.end.45, !dbg !2533

if.then.31:                                       ; preds = %if.end.26
  br label %do.body.32, !dbg !2534

do.body.32:                                       ; preds = %if.then.31
  %31 = bitcast %struct._object** %_py_decref_tmp33 to i8*, !dbg !2535
  call void @llvm.lifetime.start(i64 8, i8* %31) #3, !dbg !2535
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp33, metadata !714, metadata !958), !dbg !2537
  %32 = load %struct._object*, %struct._object** %posobj, align 8, !dbg !2538, !tbaa !954
  store %struct._object* %32, %struct._object** %_py_decref_tmp33, align 8, !dbg !2537, !tbaa !954
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8, !dbg !2539, !tbaa !954
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0, !dbg !2541
  %34 = load i64, i64* %ob_refcnt34, align 8, !dbg !2542, !tbaa !1065
  %dec35 = add i64 %34, -1, !dbg !2542
  store i64 %dec35, i64* %ob_refcnt34, align 8, !dbg !2542, !tbaa !1065
  %cmp36 = icmp ne i64 %dec35, 0, !dbg !2543
  br i1 %cmp36, label %if.then.37, label %if.else.38, !dbg !2544

if.then.37:                                       ; preds = %do.body.32
  br label %if.end.41, !dbg !2545

if.else.38:                                       ; preds = %do.body.32
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8, !dbg !2547, !tbaa !954
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1, !dbg !2549
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8, !dbg !2549, !tbaa !1073
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4, !dbg !2550
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8, !dbg !2550, !tbaa !1075
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8, !dbg !2551, !tbaa !954
  call void %37(%struct._object* %38), !dbg !2552
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.37
  %39 = bitcast %struct._object** %_py_decref_tmp33 to i8*, !dbg !2553
  call void @llvm.lifetime.end(i64 8, i8* %39) #3, !dbg !2553
  br label %do.cond.42, !dbg !2555

do.cond.42:                                       ; preds = %if.end.41
  br label %do.end.43, !dbg !2556

do.end.43:                                        ; preds = %do.cond.42
  %40 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !2558, !tbaa !954
  %call44 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %40), !dbg !2559
  store %struct._object* null, %struct._object** %retval, !dbg !2560
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2560

if.end.45:                                        ; preds = %if.end.26
  %41 = load %struct._object*, %struct._object** %posobj, align 8, !dbg !2561, !tbaa !954
  store %struct._object* %41, %struct._object** %retval, !dbg !2562
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2562

cleanup:                                          ; preds = %if.end.45, %do.end.43, %do.end, %if.then.14, %if.then.7, %if.then.2, %if.then
  %42 = bitcast i32* %fd to i8*, !dbg !2563
  call void @llvm.lifetime.end(i64 4, i8* %42) #3, !dbg !2563
  %43 = bitcast i32* %ret to i8*, !dbg !2563
  call void @llvm.lifetime.end(i64 4, i8* %43) #3, !dbg !2563
  %44 = bitcast i64* %pos to i8*, !dbg !2563
  call void @llvm.lifetime.end(i64 8, i8* %44) #3, !dbg !2563
  %45 = bitcast %struct._object** %posobj to i8*, !dbg !2563
  call void @llvm.lifetime.end(i64 8, i8* %45) #3, !dbg !2563
  %46 = load %struct._object*, %struct._object** %retval, !dbg !2563
  ret %struct._object* %46, !dbg !2563
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_close(%struct.fileio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.fileio*, align 8
  %r = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct.fileio** %self.addr, metadata !720, metadata !958), !dbg !2564
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2565, !tbaa !954
  %closefd = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i32 0, i32 2, !dbg !2567
  %bf.load = load i8, i8* %closefd, align 4, !dbg !2567
  %bf.lshr = lshr i8 %bf.load, 6, !dbg !2567
  %bf.clear = and i8 %bf.lshr, 1, !dbg !2567
  %bf.cast = zext i8 %bf.clear to i32, !dbg !2567
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !2565
  br i1 %tobool, label %if.end, label %if.then, !dbg !2568

if.then:                                          ; preds = %entry
  %1 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2569, !tbaa !954
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %1, i32 0, i32 1, !dbg !2571
  store i32 -1, i32* %fd, align 4, !dbg !2572, !tbaa !963
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2573, !tbaa !1065
  %inc = add i64 %2, 1, !dbg !2573
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2573, !tbaa !1065
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2574
  br label %return, !dbg !2574

if.end:                                           ; preds = %entry
  %3 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2575, !tbaa !954
  %finalizing = getelementptr inbounds %struct.fileio, %struct.fileio* %3, i32 0, i32 3, !dbg !2576
  %4 = load i8, i8* %finalizing, align 1, !dbg !2576, !tbaa !974
  %tobool1 = icmp ne i8 %4, 0, !dbg !2575
  br i1 %tobool1, label %if.then.2, label %if.end.9, !dbg !2577

if.then.2:                                        ; preds = %if.end
  %5 = bitcast %struct._object** %r to i8*, !dbg !2578
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !2578
  call void @llvm.dbg.declare(metadata %struct._object** %r, metadata !721, metadata !958), !dbg !2579
  %6 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2580, !tbaa !954
  %7 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2581, !tbaa !954
  %8 = bitcast %struct.fileio* %7 to %struct._object*, !dbg !2582
  %call = call %struct._object* @fileio_dealloc_warn(%struct.fileio* %6, %struct._object* %8), !dbg !2583
  store %struct._object* %call, %struct._object** %r, align 8, !dbg !2579, !tbaa !954
  %9 = load %struct._object*, %struct._object** %r, align 8, !dbg !2584, !tbaa !954
  %tobool3 = icmp ne %struct._object* %9, null, !dbg !2584
  br i1 %tobool3, label %if.then.4, label %if.else.7, !dbg !2585

if.then.4:                                        ; preds = %if.then.2
  br label %do.body, !dbg !2586

do.body:                                          ; preds = %if.then.4
  %10 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2587
  call void @llvm.lifetime.start(i64 8, i8* %10) #3, !dbg !2587
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !724, metadata !958), !dbg !2589
  %11 = load %struct._object*, %struct._object** %r, align 8, !dbg !2590, !tbaa !954
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8, !dbg !2589, !tbaa !954
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2591, !tbaa !954
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0, !dbg !2593
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !2594, !tbaa !1065
  %dec = add i64 %13, -1, !dbg !2594
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2594, !tbaa !1065
  %cmp = icmp ne i64 %dec, 0, !dbg !2595
  br i1 %cmp, label %if.then.5, label %if.else, !dbg !2596

if.then.5:                                        ; preds = %do.body
  br label %if.end.6, !dbg !2597

if.else:                                          ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2599, !tbaa !954
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1, !dbg !2601
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2601, !tbaa !1073
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4, !dbg !2602
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2602, !tbaa !1075
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2603, !tbaa !954
  call void %16(%struct._object* %17), !dbg !2604
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  %18 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2605
  call void @llvm.lifetime.end(i64 8, i8* %18) #3, !dbg !2605
  br label %do.cond, !dbg !2607

do.cond:                                          ; preds = %if.end.6
  br label %do.end, !dbg !2608

do.end:                                           ; preds = %do.cond
  br label %if.end.8, !dbg !2610

if.else.7:                                        ; preds = %if.then.2
  call void @PyErr_Clear(), !dbg !2612
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.7, %do.end
  %19 = bitcast %struct._object** %r to i8*, !dbg !2613
  call void @llvm.lifetime.end(i64 8, i8* %19) #3, !dbg !2613
  br label %if.end.9, !dbg !2614

if.end.9:                                         ; preds = %if.end.8, %if.end
  %20 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2615, !tbaa !954
  %call10 = call i32 @internal_close(%struct.fileio* %20), !dbg !2616
  %call11 = call i32* @__errno_location() #1, !dbg !2617
  store i32 %call10, i32* %call11, align 4, !dbg !2618, !tbaa !1182
  %call12 = call i32* @__errno_location() #1, !dbg !2619
  %21 = load i32, i32* %call12, align 4, !dbg !2621, !tbaa !1182
  %cmp13 = icmp slt i32 %21, 0, !dbg !2622
  br i1 %cmp13, label %if.then.14, label %if.end.15, !dbg !2623

if.then.14:                                       ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval, !dbg !2624
  br label %return, !dbg !2624

if.end.15:                                        ; preds = %if.end.9
  %22 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2625, !tbaa !954
  %call16 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyRawIOBase_Type, i32 0, i32 0, i32 0), %struct._Py_Identifier* @fileio_close.PyId_close, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0), %struct.fileio* %22), !dbg !2626
  store %struct._object* %call16, %struct._object** %retval, !dbg !2627
  br label %return, !dbg !2627

return:                                           ; preds = %if.end.15, %if.then.14, %if.then
  %23 = load %struct._object*, %struct._object** %retval, !dbg !2628
  ret %struct._object* %23, !dbg !2628
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_seekable(%struct.fileio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.fileio*, align 8
  %pos = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct.fileio** %self.addr, metadata !741, metadata !958), !dbg !2629
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2630, !tbaa !954
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i32 0, i32 1, !dbg !2632
  %1 = load i32, i32* %fd, align 4, !dbg !2632, !tbaa !963
  %cmp = icmp slt i32 %1, 0, !dbg !2633
  br i1 %cmp, label %if.then, label %if.end, !dbg !2634

if.then:                                          ; preds = %entry
  %call = call %struct._object* @err_closed(), !dbg !2635
  store %struct._object* %call, %struct._object** %retval, !dbg !2636
  br label %return, !dbg !2636

if.end:                                           ; preds = %entry
  %2 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2637, !tbaa !954
  %seekable = getelementptr inbounds %struct.fileio, %struct.fileio* %2, i32 0, i32 2, !dbg !2638
  %bf.load = load i8, i8* %seekable, align 4, !dbg !2638
  %bf.shl = shl i8 %bf.load, 2, !dbg !2638
  %bf.ashr = ashr i8 %bf.shl, 6, !dbg !2638
  %bf.cast = sext i8 %bf.ashr to i32, !dbg !2638
  %cmp1 = icmp slt i32 %bf.cast, 0, !dbg !2639
  br i1 %cmp1, label %if.then.2, label %if.end.17, !dbg !2640

if.then.2:                                        ; preds = %if.end
  %3 = bitcast %struct._object** %pos to i8*, !dbg !2641
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !2641
  call void @llvm.dbg.declare(metadata %struct._object** %pos, metadata !742, metadata !958), !dbg !2642
  %4 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2643, !tbaa !954
  %fd3 = getelementptr inbounds %struct.fileio, %struct.fileio* %4, i32 0, i32 1, !dbg !2644
  %5 = load i32, i32* %fd3, align 4, !dbg !2644, !tbaa !963
  %call4 = call %struct._object* @portable_lseek(i32 %5, %struct._object* null, i32 1), !dbg !2645
  store %struct._object* %call4, %struct._object** %pos, align 8, !dbg !2642, !tbaa !954
  %6 = load %struct._object*, %struct._object** %pos, align 8, !dbg !2646, !tbaa !954
  %cmp5 = icmp eq %struct._object* %6, null, !dbg !2647
  br i1 %cmp5, label %if.then.6, label %if.else, !dbg !2648

if.then.6:                                        ; preds = %if.then.2
  call void @PyErr_Clear(), !dbg !2649
  %7 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2651, !tbaa !954
  %seekable7 = getelementptr inbounds %struct.fileio, %struct.fileio* %7, i32 0, i32 2, !dbg !2652
  %bf.load8 = load i8, i8* %seekable7, align 4, !dbg !2653
  %bf.clear = and i8 %bf.load8, -49, !dbg !2653
  store i8 %bf.clear, i8* %seekable7, align 4, !dbg !2653
  br label %if.end.16, !dbg !2654

if.else:                                          ; preds = %if.then.2
  br label %do.body, !dbg !2655

do.body:                                          ; preds = %if.else
  %8 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2656
  call void @llvm.lifetime.start(i64 8, i8* %8) #3, !dbg !2656
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !745, metadata !958), !dbg !2658
  %9 = load %struct._object*, %struct._object** %pos, align 8, !dbg !2659, !tbaa !954
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8, !dbg !2658, !tbaa !954
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2660, !tbaa !954
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0, !dbg !2662
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !2663, !tbaa !1065
  %dec = add i64 %11, -1, !dbg !2663
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2663, !tbaa !1065
  %cmp9 = icmp ne i64 %dec, 0, !dbg !2664
  br i1 %cmp9, label %if.then.10, label %if.else.11, !dbg !2665

if.then.10:                                       ; preds = %do.body
  br label %if.end.12, !dbg !2666

if.else.11:                                       ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2668, !tbaa !954
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !2670
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2670, !tbaa !1073
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4, !dbg !2671
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2671, !tbaa !1075
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2672, !tbaa !954
  call void %14(%struct._object* %15), !dbg !2673
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.11, %if.then.10
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2674
  call void @llvm.lifetime.end(i64 8, i8* %16) #3, !dbg !2674
  br label %do.cond, !dbg !2676

do.cond:                                          ; preds = %if.end.12
  br label %do.end, !dbg !2677

do.end:                                           ; preds = %do.cond
  %17 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2679, !tbaa !954
  %seekable13 = getelementptr inbounds %struct.fileio, %struct.fileio* %17, i32 0, i32 2, !dbg !2680
  %bf.load14 = load i8, i8* %seekable13, align 4, !dbg !2681
  %bf.clear15 = and i8 %bf.load14, -49, !dbg !2681
  %bf.set = or i8 %bf.clear15, 16, !dbg !2681
  store i8 %bf.set, i8* %seekable13, align 4, !dbg !2681
  br label %if.end.16

if.end.16:                                        ; preds = %do.end, %if.then.6
  %18 = bitcast %struct._object** %pos to i8*, !dbg !2682
  call void @llvm.lifetime.end(i64 8, i8* %18) #3, !dbg !2682
  br label %if.end.17, !dbg !2683

if.end.17:                                        ; preds = %if.end.16, %if.end
  %19 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2684, !tbaa !954
  %seekable18 = getelementptr inbounds %struct.fileio, %struct.fileio* %19, i32 0, i32 2, !dbg !2685
  %bf.load19 = load i8, i8* %seekable18, align 4, !dbg !2685
  %bf.shl20 = shl i8 %bf.load19, 2, !dbg !2685
  %bf.ashr21 = ashr i8 %bf.shl20, 6, !dbg !2685
  %bf.cast22 = sext i8 %bf.ashr21 to i32, !dbg !2685
  %conv = sext i32 %bf.cast22 to i64, !dbg !2686
  %call23 = call %struct._object* @PyBool_FromLong(i64 %conv), !dbg !2687
  store %struct._object* %call23, %struct._object** %retval, !dbg !2688
  br label %return, !dbg !2688

return:                                           ; preds = %if.end.17, %if.then
  %20 = load %struct._object*, %struct._object** %retval, !dbg !2689
  ret %struct._object* %20, !dbg !2689
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_readable(%struct.fileio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.fileio*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct.fileio** %self.addr, metadata !751, metadata !958), !dbg !2690
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2691, !tbaa !954
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i32 0, i32 1, !dbg !2693
  %1 = load i32, i32* %fd, align 4, !dbg !2693, !tbaa !963
  %cmp = icmp slt i32 %1, 0, !dbg !2694
  br i1 %cmp, label %if.then, label %if.end, !dbg !2695

if.then:                                          ; preds = %entry
  %call = call %struct._object* @err_closed(), !dbg !2696
  store %struct._object* %call, %struct._object** %retval, !dbg !2697
  br label %return, !dbg !2697

if.end:                                           ; preds = %entry
  %2 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2698, !tbaa !954
  %readable = getelementptr inbounds %struct.fileio, %struct.fileio* %2, i32 0, i32 2, !dbg !2699
  %bf.load = load i8, i8* %readable, align 4, !dbg !2699
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !2699
  %bf.clear = and i8 %bf.lshr, 1, !dbg !2699
  %bf.cast = zext i8 %bf.clear to i32, !dbg !2699
  %conv = zext i32 %bf.cast to i64, !dbg !2700
  %call1 = call %struct._object* @PyBool_FromLong(i64 %conv), !dbg !2701
  store %struct._object* %call1, %struct._object** %retval, !dbg !2702
  br label %return, !dbg !2702

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval, !dbg !2703
  ret %struct._object* %3, !dbg !2703
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_writable(%struct.fileio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.fileio*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct.fileio** %self.addr, metadata !754, metadata !958), !dbg !2704
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2705, !tbaa !954
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i32 0, i32 1, !dbg !2707
  %1 = load i32, i32* %fd, align 4, !dbg !2707, !tbaa !963
  %cmp = icmp slt i32 %1, 0, !dbg !2708
  br i1 %cmp, label %if.then, label %if.end, !dbg !2709

if.then:                                          ; preds = %entry
  %call = call %struct._object* @err_closed(), !dbg !2710
  store %struct._object* %call, %struct._object** %retval, !dbg !2711
  br label %return, !dbg !2711

if.end:                                           ; preds = %entry
  %2 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2712, !tbaa !954
  %writable = getelementptr inbounds %struct.fileio, %struct.fileio* %2, i32 0, i32 2, !dbg !2713
  %bf.load = load i8, i8* %writable, align 4, !dbg !2713
  %bf.lshr = lshr i8 %bf.load, 2, !dbg !2713
  %bf.clear = and i8 %bf.lshr, 1, !dbg !2713
  %bf.cast = zext i8 %bf.clear to i32, !dbg !2713
  %conv = zext i32 %bf.cast to i64, !dbg !2714
  %call1 = call %struct._object* @PyBool_FromLong(i64 %conv), !dbg !2715
  store %struct._object* %call1, %struct._object** %retval, !dbg !2716
  br label %return, !dbg !2716

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval, !dbg !2717
  ret %struct._object* %3, !dbg !2717
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_fileno(%struct.fileio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.fileio*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct.fileio** %self.addr, metadata !757, metadata !958), !dbg !2718
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2719, !tbaa !954
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i32 0, i32 1, !dbg !2721
  %1 = load i32, i32* %fd, align 4, !dbg !2721, !tbaa !963
  %cmp = icmp slt i32 %1, 0, !dbg !2722
  br i1 %cmp, label %if.then, label %if.end, !dbg !2723

if.then:                                          ; preds = %entry
  %call = call %struct._object* @err_closed(), !dbg !2724
  store %struct._object* %call, %struct._object** %retval, !dbg !2725
  br label %return, !dbg !2725

if.end:                                           ; preds = %entry
  %2 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2726, !tbaa !954
  %fd1 = getelementptr inbounds %struct.fileio, %struct.fileio* %2, i32 0, i32 1, !dbg !2727
  %3 = load i32, i32* %fd1, align 4, !dbg !2727, !tbaa !963
  %conv = sext i32 %3 to i64, !dbg !2728
  %call2 = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !2729
  store %struct._object* %call2, %struct._object** %retval, !dbg !2730
  br label %return, !dbg !2730

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval, !dbg !2731
  ret %struct._object* %4, !dbg !2731
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_isatty(%struct.fileio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.fileio*, align 8
  %res = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_save = alloca %struct._ts*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct.fileio** %self.addr, metadata !760, metadata !958), !dbg !2732
  %0 = bitcast i64* %res to i8*, !dbg !2733
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2733
  call void @llvm.dbg.declare(metadata i64* %res, metadata !761, metadata !958), !dbg !2734
  %1 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2735, !tbaa !954
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %1, i32 0, i32 1, !dbg !2737
  %2 = load i32, i32* %fd, align 4, !dbg !2737, !tbaa !963
  %cmp = icmp slt i32 %2, 0, !dbg !2738
  br i1 %cmp, label %if.then, label %if.end, !dbg !2739

if.then:                                          ; preds = %entry
  %call = call %struct._object* @err_closed(), !dbg !2740
  store %struct._object* %call, %struct._object** %retval, !dbg !2741
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2741

if.end:                                           ; preds = %entry
  %3 = bitcast %struct._ts** %_save to i8*, !dbg !2742
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !2742
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !762, metadata !958), !dbg !2743
  %call1 = call %struct._ts* @PyEval_SaveThread(), !dbg !2744
  store %struct._ts* %call1, %struct._ts** %_save, align 8, !dbg !2745, !tbaa !954
  %4 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2746, !tbaa !954
  %fd2 = getelementptr inbounds %struct.fileio, %struct.fileio* %4, i32 0, i32 1, !dbg !2747
  %5 = load i32, i32* %fd2, align 4, !dbg !2747, !tbaa !963
  %call3 = call i32 @isatty(i32 %5) #3, !dbg !2748
  %conv = sext i32 %call3 to i64, !dbg !2748
  store i64 %conv, i64* %res, align 8, !dbg !2749, !tbaa !1815
  %6 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !2750, !tbaa !954
  call void @PyEval_RestoreThread(%struct._ts* %6), !dbg !2751
  %7 = bitcast %struct._ts** %_save to i8*, !dbg !2752
  call void @llvm.lifetime.end(i64 8, i8* %7) #3, !dbg !2752
  %8 = load i64, i64* %res, align 8, !dbg !2753, !tbaa !1815
  %call4 = call %struct._object* @PyBool_FromLong(i64 %8), !dbg !2754
  store %struct._object* %call4, %struct._object** %retval, !dbg !2755
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2755

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast i64* %res to i8*, !dbg !2756
  call void @llvm.lifetime.end(i64 8, i8* %9) #3, !dbg !2756
  %10 = load %struct._object*, %struct._object** %retval, !dbg !2756
  ret %struct._object* %10, !dbg !2756
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_dealloc_warn(%struct.fileio* %self, %struct._object* %source) #0 {
entry:
  %self.addr = alloca %struct.fileio*, align 8
  %source.addr = alloca %struct._object*, align 8
  %exc = alloca %struct._object*, align 8
  %val = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct.fileio** %self.addr, metadata !766, metadata !958), !dbg !2757
  store %struct._object* %source, %struct._object** %source.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct._object** %source.addr, metadata !767, metadata !958), !dbg !2758
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2759, !tbaa !954
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i32 0, i32 1, !dbg !2760
  %1 = load i32, i32* %fd, align 4, !dbg !2760, !tbaa !963
  %cmp = icmp sge i32 %1, 0, !dbg !2761
  br i1 %cmp, label %land.lhs.true, label %if.end.7, !dbg !2762

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2763, !tbaa !954
  %closefd = getelementptr inbounds %struct.fileio, %struct.fileio* %2, i32 0, i32 2, !dbg !2765
  %bf.load = load i8, i8* %closefd, align 4, !dbg !2765
  %bf.lshr = lshr i8 %bf.load, 6, !dbg !2765
  %bf.clear = and i8 %bf.lshr, 1, !dbg !2765
  %bf.cast = zext i8 %bf.clear to i32, !dbg !2765
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !2766
  br i1 %tobool, label %if.then, label %if.end.7, !dbg !2767

if.then:                                          ; preds = %land.lhs.true
  %3 = bitcast %struct._object** %exc to i8*, !dbg !2768
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !2768
  call void @llvm.dbg.declare(metadata %struct._object** %exc, metadata !768, metadata !958), !dbg !2769
  %4 = bitcast %struct._object** %val to i8*, !dbg !2768
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !2768
  call void @llvm.dbg.declare(metadata %struct._object** %val, metadata !771, metadata !958), !dbg !2770
  %5 = bitcast %struct._object** %tb to i8*, !dbg !2768
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !2768
  call void @llvm.dbg.declare(metadata %struct._object** %tb, metadata !772, metadata !958), !dbg !2771
  call void @PyErr_Fetch(%struct._object** %exc, %struct._object** %val, %struct._object** %tb), !dbg !2772
  %6 = load %struct._object*, %struct._object** @PyExc_ResourceWarning, align 8, !dbg !2773, !tbaa !954
  %7 = load %struct._object*, %struct._object** %source.addr, align 8, !dbg !2775, !tbaa !954
  %call = call i32 (%struct._object*, i64, i8*, ...) @PyErr_WarnFormat(%struct._object* %6, i64 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i32 0, i32 0), %struct._object* %7), !dbg !2776
  %tobool1 = icmp ne i32 %call, 0, !dbg !2776
  br i1 %tobool1, label %if.then.2, label %if.end.6, !dbg !2777

if.then.2:                                        ; preds = %if.then
  %8 = load %struct._object*, %struct._object** @PyExc_Warning, align 8, !dbg !2778, !tbaa !954
  %call3 = call i32 @PyErr_ExceptionMatches(%struct._object* %8), !dbg !2781
  %tobool4 = icmp ne i32 %call3, 0, !dbg !2781
  br i1 %tobool4, label %if.then.5, label %if.end, !dbg !2782

if.then.5:                                        ; preds = %if.then.2
  %9 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2783, !tbaa !954
  %10 = bitcast %struct.fileio* %9 to %struct._object*, !dbg !2784
  call void @PyErr_WriteUnraisable(%struct._object* %10), !dbg !2785
  br label %if.end, !dbg !2785

if.end:                                           ; preds = %if.then.5, %if.then.2
  br label %if.end.6, !dbg !2786

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load %struct._object*, %struct._object** %exc, align 8, !dbg !2787, !tbaa !954
  %12 = load %struct._object*, %struct._object** %val, align 8, !dbg !2788, !tbaa !954
  %13 = load %struct._object*, %struct._object** %tb, align 8, !dbg !2789, !tbaa !954
  call void @PyErr_Restore(%struct._object* %11, %struct._object* %12, %struct._object* %13), !dbg !2790
  %14 = bitcast %struct._object** %tb to i8*, !dbg !2791
  call void @llvm.lifetime.end(i64 8, i8* %14) #3, !dbg !2791
  %15 = bitcast %struct._object** %val to i8*, !dbg !2791
  call void @llvm.lifetime.end(i64 8, i8* %15) #3, !dbg !2791
  %16 = bitcast %struct._object** %exc to i8*, !dbg !2791
  call void @llvm.lifetime.end(i64 8, i8* %16) #3, !dbg !2791
  br label %if.end.7, !dbg !2792

if.end.7:                                         ; preds = %if.end.6, %land.lhs.true, %entry
  %17 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2793, !tbaa !1065
  %inc = add i64 %17, 1, !dbg !2793
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2793, !tbaa !1065
  ret %struct._object* @_Py_NoneStruct, !dbg !2794
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_getstate(%struct.fileio* %self) #0 {
entry:
  %self.addr = alloca %struct.fileio*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct.fileio** %self.addr, metadata !775, metadata !958), !dbg !2795
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2796, !tbaa !954
  %1 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2797, !tbaa !954
  %2 = bitcast %struct.fileio* %1 to %struct._object*, !dbg !2798
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !2799
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2799, !tbaa !1073
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 1, !dbg !2800
  %4 = load i8*, i8** %tp_name, align 8, !dbg !2800, !tbaa !2801
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.40, i32 0, i32 0), i8* %4), !dbg !2802
  ret %struct._object* null, !dbg !2803
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @err_closed() #0 {
entry:
  %0 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2804, !tbaa !954
  call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i32 0, i32 0)), !dbg !2805
  ret %struct._object* null, !dbg !2806
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @err_mode(i8* %action) #0 {
entry:
  %action.addr = alloca i8*, align 8
  %state = alloca %struct._PyIO_State*, align 8
  store i8* %action, i8** %action.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata i8** %action.addr, metadata !541, metadata !958), !dbg !2807
  %0 = bitcast %struct._PyIO_State** %state to i8*, !dbg !2808
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2808
  call void @llvm.dbg.declare(metadata %struct._PyIO_State** %state, metadata !542, metadata !958), !dbg !2809
  %call = call %struct._PyIO_State* @_PyIO_get_module_state(), !dbg !2810
  store %struct._PyIO_State* %call, %struct._PyIO_State** %state, align 8, !dbg !2809, !tbaa !954
  %1 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8, !dbg !2811, !tbaa !954
  %cmp = icmp ne %struct._PyIO_State* %1, null, !dbg !2813
  br i1 %cmp, label %if.then, label %if.end, !dbg !2814

if.then:                                          ; preds = %entry
  %2 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8, !dbg !2815, !tbaa !954
  %unsupported_operation = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %2, i32 0, i32 2, !dbg !2816
  %3 = load %struct._object*, %struct._object** %unsupported_operation, align 8, !dbg !2816, !tbaa !2817
  %4 = load i8*, i8** %action.addr, align 8, !dbg !2819, !tbaa !954
  %call1 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i32 0, i32 0), i8* %4), !dbg !2820
  br label %if.end, !dbg !2820

if.end:                                           ; preds = %if.then, %entry
  %5 = bitcast %struct._PyIO_State** %state to i8*, !dbg !2821
  call void @llvm.lifetime.end(i64 8, i8* %5) #3, !dbg !2821
  ret %struct._object* null, !dbg !2822
}

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #2

declare i32 @_PyIO_ConvertSsize_t(%struct._object*, i8*) #2

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #2

declare %struct._ts* @PyEval_SaveThread() #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare i64 @read(i32, i8*, i64) #2

declare void @PyEval_RestoreThread(%struct._ts*) #2

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #2

declare i32 @_PyBytes_Resize(%struct._object**, i64) #2

declare void @PyErr_SetString(%struct._object*, i8*) #2

declare %struct._PyIO_State* @_PyIO_get_module_state() #2

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #2

; Function Attrs: nounwind
declare i64 @lseek64(i32, i64, i32) #5

; Function Attrs: nounwind uwtable
define internal i64 @new_buffersize(%struct.fileio* %self, i64 %currentsize) #0 {
entry:
  %self.addr = alloca %struct.fileio*, align 8
  %currentsize.addr = alloca i64, align 8
  %addend = alloca i64, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct.fileio** %self.addr, metadata !650, metadata !958), !dbg !2823
  store i64 %currentsize, i64* %currentsize.addr, align 8, !tbaa !1815
  call void @llvm.dbg.declare(metadata i64* %currentsize.addr, metadata !651, metadata !958), !dbg !2824
  %0 = bitcast i64* %addend to i8*, !dbg !2825
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2825
  call void @llvm.dbg.declare(metadata i64* %addend, metadata !652, metadata !958), !dbg !2826
  %1 = load i64, i64* %currentsize.addr, align 8, !dbg !2827, !tbaa !1815
  %cmp = icmp ugt i64 %1, 65536, !dbg !2829
  br i1 %cmp, label %if.then, label %if.else, !dbg !2830

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %currentsize.addr, align 8, !dbg !2831, !tbaa !1815
  %shr = lshr i64 %2, 3, !dbg !2832
  store i64 %shr, i64* %addend, align 8, !dbg !2833, !tbaa !1815
  br label %if.end, !dbg !2834

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %currentsize.addr, align 8, !dbg !2835, !tbaa !1815
  %add = add i64 256, %3, !dbg !2836
  store i64 %add, i64* %addend, align 8, !dbg !2837, !tbaa !1815
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i64, i64* %addend, align 8, !dbg !2838, !tbaa !1815
  %cmp1 = icmp ult i64 %4, 8192, !dbg !2840
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !2841

if.then.2:                                        ; preds = %if.end
  store i64 8192, i64* %addend, align 8, !dbg !2842, !tbaa !1815
  br label %if.end.3, !dbg !2843

if.end.3:                                         ; preds = %if.then.2, %if.end
  %5 = load i64, i64* %addend, align 8, !dbg !2844, !tbaa !1815
  %6 = load i64, i64* %currentsize.addr, align 8, !dbg !2845, !tbaa !1815
  %add4 = add i64 %5, %6, !dbg !2846
  %7 = bitcast i64* %addend to i8*, !dbg !2847
  call void @llvm.lifetime.end(i64 8, i8* %7) #3, !dbg !2847
  ret i64 %add4, !dbg !2848
}

declare i32 @PyErr_CheckSignals() #2

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @fstat64(i32 %__fd, %struct.stat64* nonnull %__statbuf) #6 {
entry:
  %__fd.addr = alloca i32, align 4
  %__statbuf.addr = alloca %struct.stat64*, align 8
  store i32 %__fd, i32* %__fd.addr, align 4, !tbaa !1182
  call void @llvm.dbg.declare(metadata i32* %__fd.addr, metadata !644, metadata !958), !dbg !2849
  store %struct.stat64* %__statbuf, %struct.stat64** %__statbuf.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct.stat64** %__statbuf.addr, metadata !645, metadata !958), !dbg !2850
  %0 = load i32, i32* %__fd.addr, align 4, !dbg !2851, !tbaa !1182
  %1 = load %struct.stat64*, %struct.stat64** %__statbuf.addr, align 8, !dbg !2852, !tbaa !954
  %call = call i32 @__fxstat64(i32 1, i32 %0, %struct.stat64* %1) #3, !dbg !2853
  ret i32 %call, !dbg !2854
}

; Function Attrs: nounwind
declare i32 @__fxstat64(i32, i32, %struct.stat64*) #5

declare void @PyBuffer_Release(%struct.bufferinfo*) #2

declare %struct._object* @PyLong_FromSsize_t(i64) #2

declare i64 @write(i32, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @portable_lseek(i32 %fd, %struct._object* %posobj, i32 %whence) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %fd.addr = alloca i32, align 4
  %posobj.addr = alloca %struct._object*, align 8
  %whence.addr = alloca i32, align 4
  %pos = alloca i64, align 8
  %res = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_save = alloca %struct._ts*, align 8
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !1182
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !687, metadata !958), !dbg !2855
  store %struct._object* %posobj, %struct._object** %posobj.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct._object** %posobj.addr, metadata !688, metadata !958), !dbg !2856
  store i32 %whence, i32* %whence.addr, align 4, !tbaa !1182
  call void @llvm.dbg.declare(metadata i32* %whence.addr, metadata !689, metadata !958), !dbg !2857
  %0 = bitcast i64* %pos to i8*, !dbg !2858
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2858
  call void @llvm.dbg.declare(metadata i64* %pos, metadata !690, metadata !958), !dbg !2859
  %1 = bitcast i64* %res to i8*, !dbg !2858
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2858
  call void @llvm.dbg.declare(metadata i64* %res, metadata !691, metadata !958), !dbg !2860
  %2 = load i32, i32* %whence.addr, align 4, !dbg !2861, !tbaa !1182
  switch i32 %2, label %sw.epilog [
  ], !dbg !2862

sw.epilog:                                        ; preds = %entry
  %3 = load %struct._object*, %struct._object** %posobj.addr, align 8, !dbg !2863, !tbaa !954
  %cmp = icmp eq %struct._object* %3, null, !dbg !2865
  br i1 %cmp, label %if.then, label %if.else, !dbg !2866

if.then:                                          ; preds = %sw.epilog
  store i64 0, i64* %pos, align 8, !dbg !2867, !tbaa !1815
  br label %if.end.9, !dbg !2868

if.else:                                          ; preds = %sw.epilog
  %4 = load %struct._object*, %struct._object** %posobj.addr, align 8, !dbg !2869, !tbaa !954
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !2872
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2872, !tbaa !1073
  %cmp1 = icmp eq %struct._typeobject* %5, @PyFloat_Type, !dbg !2873
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false, !dbg !2874

lor.lhs.false:                                    ; preds = %if.else
  %6 = load %struct._object*, %struct._object** %posobj.addr, align 8, !dbg !2875, !tbaa !954
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1, !dbg !2877
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8, !dbg !2877, !tbaa !1073
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %7, %struct._typeobject* @PyFloat_Type), !dbg !2878
  %tobool = icmp ne i32 %call, 0, !dbg !2878
  br i1 %tobool, label %if.then.3, label %if.end, !dbg !2879

if.then.3:                                        ; preds = %lor.lhs.false, %if.else
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2880, !tbaa !954
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i32 0, i32 0)), !dbg !2882
  store %struct._object* null, %struct._object** %retval, !dbg !2883
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2883

if.end:                                           ; preds = %lor.lhs.false
  %9 = load %struct._object*, %struct._object** %posobj.addr, align 8, !dbg !2884, !tbaa !954
  %call4 = call i64 @PyLong_AsLong(%struct._object* %9), !dbg !2885
  store i64 %call4, i64* %pos, align 8, !dbg !2886, !tbaa !1815
  %call5 = call %struct._object* @PyErr_Occurred(), !dbg !2887
  %tobool6 = icmp ne %struct._object* %call5, null, !dbg !2887
  br i1 %tobool6, label %if.then.7, label %if.end.8, !dbg !2889

if.then.7:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2890
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2890

if.end.8:                                         ; preds = %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then
  %10 = bitcast %struct._ts** %_save to i8*, !dbg !2891
  call void @llvm.lifetime.start(i64 8, i8* %10) #3, !dbg !2891
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !692, metadata !958), !dbg !2892
  %call10 = call %struct._ts* @PyEval_SaveThread(), !dbg !2893
  store %struct._ts* %call10, %struct._ts** %_save, align 8, !dbg !2894, !tbaa !954
  %11 = load i32, i32* %fd.addr, align 4, !dbg !2895, !tbaa !1182
  %12 = load i64, i64* %pos, align 8, !dbg !2896, !tbaa !1815
  %13 = load i32, i32* %whence.addr, align 4, !dbg !2897, !tbaa !1182
  %call11 = call i64 @lseek64(i32 %11, i64 %12, i32 %13) #3, !dbg !2898
  store i64 %call11, i64* %res, align 8, !dbg !2899, !tbaa !1815
  %14 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !2900, !tbaa !954
  call void @PyEval_RestoreThread(%struct._ts* %14), !dbg !2901
  %15 = bitcast %struct._ts** %_save to i8*, !dbg !2902
  call void @llvm.lifetime.end(i64 8, i8* %15) #3, !dbg !2902
  %16 = load i64, i64* %res, align 8, !dbg !2903, !tbaa !1815
  %cmp12 = icmp slt i64 %16, 0, !dbg !2905
  br i1 %cmp12, label %if.then.13, label %if.end.15, !dbg !2906

if.then.13:                                       ; preds = %if.end.9
  %17 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !2907, !tbaa !954
  %call14 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %17), !dbg !2908
  store %struct._object* %call14, %struct._object** %retval, !dbg !2909
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2909

if.end.15:                                        ; preds = %if.end.9
  %18 = load i64, i64* %res, align 8, !dbg !2910, !tbaa !1815
  %call16 = call %struct._object* @PyLong_FromLong(i64 %18), !dbg !2911
  store %struct._object* %call16, %struct._object** %retval, !dbg !2912
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2912

cleanup:                                          ; preds = %if.end.15, %if.then.13, %if.then.7, %if.then.3
  %19 = bitcast i64* %res to i8*, !dbg !2913
  call void @llvm.lifetime.end(i64 8, i8* %19) #3, !dbg !2913
  %20 = bitcast i64* %pos to i8*, !dbg !2913
  call void @llvm.lifetime.end(i64 8, i8* %20) #3, !dbg !2913
  %21 = load %struct._object*, %struct._object** %retval, !dbg !2913
  ret %struct._object* %21, !dbg !2913
}

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #2

declare i64 @PyLong_AsLong(%struct._object*) #2

declare %struct._object* @PyErr_Occurred() #2

declare %struct._object* @PyLong_FromLong(i64) #2

; Function Attrs: nounwind
declare i32 @ftruncate64(i32, i64) #5

; Function Attrs: nounwind uwtable
define internal i32 @internal_close(%struct.fileio* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.fileio*, align 8
  %err = alloca i32, align 4
  %save_errno = alloca i32, align 4
  %fd1 = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct.fileio** %self.addr, metadata !729, metadata !958), !dbg !2914
  %0 = bitcast i32* %err to i8*, !dbg !2915
  call void @llvm.lifetime.start(i64 4, i8* %0) #3, !dbg !2915
  call void @llvm.dbg.declare(metadata i32* %err, metadata !730, metadata !958), !dbg !2916
  store i32 0, i32* %err, align 4, !dbg !2916, !tbaa !1182
  %1 = bitcast i32* %save_errno to i8*, !dbg !2917
  call void @llvm.lifetime.start(i64 4, i8* %1) #3, !dbg !2917
  call void @llvm.dbg.declare(metadata i32* %save_errno, metadata !731, metadata !958), !dbg !2918
  store i32 0, i32* %save_errno, align 4, !dbg !2918, !tbaa !1182
  %2 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2919, !tbaa !954
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %2, i32 0, i32 1, !dbg !2920
  %3 = load i32, i32* %fd, align 4, !dbg !2920, !tbaa !963
  %cmp = icmp sge i32 %3, 0, !dbg !2921
  br i1 %cmp, label %if.then, label %if.end.8, !dbg !2922

if.then:                                          ; preds = %entry
  %4 = bitcast i32* %fd1 to i8*, !dbg !2923
  call void @llvm.lifetime.start(i64 4, i8* %4) #3, !dbg !2923
  call void @llvm.dbg.declare(metadata i32* %fd1, metadata !732, metadata !958), !dbg !2924
  %5 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2925, !tbaa !954
  %fd2 = getelementptr inbounds %struct.fileio, %struct.fileio* %5, i32 0, i32 1, !dbg !2926
  %6 = load i32, i32* %fd2, align 4, !dbg !2926, !tbaa !963
  store i32 %6, i32* %fd1, align 4, !dbg !2924, !tbaa !1182
  %7 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2927, !tbaa !954
  %fd3 = getelementptr inbounds %struct.fileio, %struct.fileio* %7, i32 0, i32 1, !dbg !2928
  store i32 -1, i32* %fd3, align 4, !dbg !2929, !tbaa !963
  %8 = bitcast %struct._ts** %_save to i8*, !dbg !2930
  call void @llvm.lifetime.start(i64 8, i8* %8) #3, !dbg !2930
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !735, metadata !958), !dbg !2931
  %call = call %struct._ts* @PyEval_SaveThread(), !dbg !2932
  store %struct._ts* %call, %struct._ts** %_save, align 8, !dbg !2933, !tbaa !954
  %9 = load i32, i32* %fd1, align 4, !dbg !2934, !tbaa !1182
  %call4 = call i32 @close(i32 %9), !dbg !2935
  store i32 %call4, i32* %err, align 4, !dbg !2936, !tbaa !1182
  %10 = load i32, i32* %err, align 4, !dbg !2937, !tbaa !1182
  %cmp5 = icmp slt i32 %10, 0, !dbg !2939
  br i1 %cmp5, label %if.then.6, label %if.end, !dbg !2940

if.then.6:                                        ; preds = %if.then
  %call7 = call i32* @__errno_location() #1, !dbg !2941
  %11 = load i32, i32* %call7, align 4, !dbg !2942, !tbaa !1182
  store i32 %11, i32* %save_errno, align 4, !dbg !2943, !tbaa !1182
  br label %if.end, !dbg !2944

if.end:                                           ; preds = %if.then.6, %if.then
  %12 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !2945, !tbaa !954
  call void @PyEval_RestoreThread(%struct._ts* %12), !dbg !2946
  %13 = bitcast %struct._ts** %_save to i8*, !dbg !2947
  call void @llvm.lifetime.end(i64 8, i8* %13) #3, !dbg !2947
  %14 = bitcast i32* %fd1 to i8*, !dbg !2948
  call void @llvm.lifetime.end(i64 4, i8* %14) #3, !dbg !2948
  br label %if.end.8, !dbg !2949

if.end.8:                                         ; preds = %if.end, %entry
  %15 = load i32, i32* %err, align 4, !dbg !2950, !tbaa !1182
  %cmp9 = icmp slt i32 %15, 0, !dbg !2952
  br i1 %cmp9, label %if.then.10, label %if.end.13, !dbg !2953

if.then.10:                                       ; preds = %if.end.8
  %16 = load i32, i32* %save_errno, align 4, !dbg !2954, !tbaa !1182
  %call11 = call i32* @__errno_location() #1, !dbg !2956
  store i32 %16, i32* %call11, align 4, !dbg !2957, !tbaa !1182
  %17 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !2958, !tbaa !954
  %call12 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %17), !dbg !2959
  store i32 -1, i32* %retval, !dbg !2960
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2960

if.end.13:                                        ; preds = %if.end.8
  store i32 0, i32* %retval, !dbg !2961
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2961

cleanup:                                          ; preds = %if.end.13, %if.then.10
  %18 = bitcast i32* %save_errno to i8*, !dbg !2962
  call void @llvm.lifetime.end(i64 4, i8* %18) #3, !dbg !2962
  %19 = bitcast i32* %err to i8*, !dbg !2962
  call void @llvm.lifetime.end(i64 4, i8* %19) #3, !dbg !2962
  %20 = load i32, i32* %retval, !dbg !2962
  ret i32 %20, !dbg !2962
}

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
define internal %struct._object* @get_closed(%struct.fileio* %self, i8* %closure) #0 {
entry:
  %self.addr = alloca %struct.fileio*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct.fileio** %self.addr, metadata !780, metadata !958), !dbg !2963
  store i8* %closure, i8** %closure.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata i8** %closure.addr, metadata !781, metadata !958), !dbg !2964
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2965, !tbaa !954
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i32 0, i32 1, !dbg !2966
  %1 = load i32, i32* %fd, align 4, !dbg !2966, !tbaa !963
  %cmp = icmp slt i32 %1, 0, !dbg !2967
  %conv = zext i1 %cmp to i32, !dbg !2967
  %conv1 = sext i32 %conv to i64, !dbg !2968
  %call = call %struct._object* @PyBool_FromLong(i64 %conv1), !dbg !2969
  ret %struct._object* %call, !dbg !2970
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_closefd(%struct.fileio* %self, i8* %closure) #0 {
entry:
  %self.addr = alloca %struct.fileio*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct.fileio** %self.addr, metadata !784, metadata !958), !dbg !2971
  store i8* %closure, i8** %closure.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata i8** %closure.addr, metadata !785, metadata !958), !dbg !2972
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2973, !tbaa !954
  %closefd = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i32 0, i32 2, !dbg !2974
  %bf.load = load i8, i8* %closefd, align 4, !dbg !2974
  %bf.lshr = lshr i8 %bf.load, 6, !dbg !2974
  %bf.clear = and i8 %bf.lshr, 1, !dbg !2974
  %bf.cast = zext i8 %bf.clear to i32, !dbg !2974
  %conv = zext i32 %bf.cast to i64, !dbg !2975
  %call = call %struct._object* @PyBool_FromLong(i64 %conv), !dbg !2976
  ret %struct._object* %call, !dbg !2977
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_mode(%struct.fileio* %self, i8* %closure) #0 {
entry:
  %self.addr = alloca %struct.fileio*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct.fileio** %self.addr, metadata !788, metadata !958), !dbg !2978
  store i8* %closure, i8** %closure.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata i8** %closure.addr, metadata !789, metadata !958), !dbg !2979
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !2980, !tbaa !954
  %call = call i8* @mode_string(%struct.fileio* %0), !dbg !2981
  %call1 = call %struct._object* @PyUnicode_FromString(i8* %call), !dbg !2982
  ret %struct._object* %call1, !dbg !2983
}

declare %struct._object* @PyUnicode_FromString(i8*) #2

declare i32 @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object*, %struct._object*, i8*, i8**, ...) #2

declare i32 @_PyLong_AsInt(%struct._object*) #2

declare i32 @PyUnicode_FSConverter(%struct._object*, i8*) #2

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
  %cleanup.dest.slot = alloca i32
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !1182
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !840, metadata !958), !dbg !2984
  %0 = bitcast %struct.stat* %buf to i8*, !dbg !2985
  call void @llvm.lifetime.start(i64 144, i8* %0) #3, !dbg !2985
  call void @llvm.dbg.declare(metadata %struct.stat* %buf, metadata !841, metadata !958), !dbg !2986
  %1 = load i32, i32* %fd.addr, align 4, !dbg !2987, !tbaa !1182
  %call = call i32 bitcast (i32 (i32, %struct.stat64*)* @fstat64 to i32 (i32, %struct.stat*)*)(i32 %1, %struct.stat* %buf) #3, !dbg !2988
  %cmp = icmp slt i32 %call, 0, !dbg !2989
  br i1 %cmp, label %land.lhs.true, label %if.end.13, !dbg !2990

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32* @__errno_location() #1, !dbg !2991
  %2 = load i32, i32* %call1, align 4, !dbg !2993, !tbaa !1182
  %cmp2 = icmp eq i32 %2, 9, !dbg !2994
  br i1 %cmp2, label %if.then, label %if.end.13, !dbg !2995

if.then:                                          ; preds = %land.lhs.true
  %3 = bitcast %struct._object** %exc to i8*, !dbg !2996
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !2996
  call void @llvm.dbg.declare(metadata %struct._object** %exc, metadata !842, metadata !958), !dbg !2997
  %4 = bitcast i8** %msg to i8*, !dbg !2998
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !2998
  call void @llvm.dbg.declare(metadata i8** %msg, metadata !845, metadata !958), !dbg !2999
  %call3 = call i8* @strerror(i32 9) #3, !dbg !3000
  store i8* %call3, i8** %msg, align 8, !dbg !2999, !tbaa !954
  %5 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !3001, !tbaa !954
  %6 = load i8*, i8** %msg, align 8, !dbg !3002, !tbaa !954
  %call4 = call %struct._object* (%struct._object*, i8*, ...) @_PyObject_CallFunction_SizeT(%struct._object* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i32 9, i8* %6), !dbg !3003
  store %struct._object* %call4, %struct._object** %exc, align 8, !dbg !3004, !tbaa !954
  %7 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !3005, !tbaa !954
  %8 = load %struct._object*, %struct._object** %exc, align 8, !dbg !3006, !tbaa !954
  call void @PyErr_SetObject(%struct._object* %7, %struct._object* %8), !dbg !3007
  br label %do.body, !dbg !3008

do.body:                                          ; preds = %if.then
  %9 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3009
  call void @llvm.lifetime.start(i64 8, i8* %9) #3, !dbg !3009
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !846, metadata !958), !dbg !3011
  %10 = load %struct._object*, %struct._object** %exc, align 8, !dbg !3012, !tbaa !954
  store %struct._object* %10, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3011, !tbaa !954
  %11 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3013, !tbaa !954
  %cmp5 = icmp ne %struct._object* %11, null, !dbg !3014
  br i1 %cmp5, label %if.then.6, label %if.end.10, !dbg !3015

if.then.6:                                        ; preds = %do.body
  br label %do.body.7, !dbg !3016

do.body.7:                                        ; preds = %if.then.6
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3018
  call void @llvm.lifetime.start(i64 8, i8* %12) #3, !dbg !3018
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !848, metadata !958), !dbg !3020
  %13 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3021, !tbaa !954
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8, !dbg !3020, !tbaa !954
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3022, !tbaa !954
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0, !dbg !3024
  %15 = load i64, i64* %ob_refcnt, align 8, !dbg !3025, !tbaa !1065
  %dec = add i64 %15, -1, !dbg !3025
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3025, !tbaa !1065
  %cmp8 = icmp ne i64 %dec, 0, !dbg !3026
  br i1 %cmp8, label %if.then.9, label %if.else, !dbg !3027

if.then.9:                                        ; preds = %do.body.7
  br label %if.end, !dbg !3028

if.else:                                          ; preds = %do.body.7
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3030, !tbaa !954
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1, !dbg !3032
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3032, !tbaa !1073
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4, !dbg !3033
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3033, !tbaa !1075
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3034, !tbaa !954
  call void %18(%struct._object* %19), !dbg !3035
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3036
  call void @llvm.lifetime.end(i64 8, i8* %20) #3, !dbg !3036
  br label %do.cond, !dbg !3038

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !3039

do.end:                                           ; preds = %do.cond
  br label %if.end.10, !dbg !3041

if.end.10:                                        ; preds = %do.end, %do.body
  %21 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3043
  call void @llvm.lifetime.end(i64 8, i8* %21) #3, !dbg !3043
  br label %do.cond.11, !dbg !3046

do.cond.11:                                       ; preds = %if.end.10
  br label %do.end.12, !dbg !3047

do.end.12:                                        ; preds = %do.cond.11
  store i32 -1, i32* %retval, !dbg !3049
  store i32 1, i32* %cleanup.dest.slot
  %22 = bitcast i8** %msg to i8*, !dbg !3050
  call void @llvm.lifetime.end(i64 8, i8* %22) #3, !dbg !3050
  %23 = bitcast %struct._object** %exc to i8*, !dbg !3050
  call void @llvm.lifetime.end(i64 8, i8* %23) #3, !dbg !3050
  br label %cleanup

if.end.13:                                        ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval, !dbg !3051
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3051

cleanup:                                          ; preds = %if.end.13, %do.end.12
  %24 = bitcast %struct.stat* %buf to i8*, !dbg !3052
  call void @llvm.lifetime.end(i64 144, i8* %24) #3, !dbg !3052
  %25 = load i32, i32* %retval, !dbg !3052
  ret i32 %25, !dbg !3052
}

declare i32 @open64(i8*, i32, ...) #2

declare %struct._object* @_PyObject_CallFunction_SizeT(%struct._object*, i8*, ...) #2

declare %struct._object* @PyErr_SetFromErrnoWithFilenameObject(%struct._object*, %struct._object*) #2

declare i32 @_Py_set_inheritable(i32, i32, i32*) #2

; Function Attrs: nounwind uwtable
define internal i32 @dircheck(%struct.fileio* %self, %struct._object* %nameobj) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.fileio*, align 8
  %nameobj.addr = alloca %struct._object*, align 8
  %buf = alloca %struct.stat, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct.fileio** %self.addr, metadata !855, metadata !958), !dbg !3053
  store %struct._object* %nameobj, %struct._object** %nameobj.addr, align 8, !tbaa !954
  call void @llvm.dbg.declare(metadata %struct._object** %nameobj.addr, metadata !856, metadata !958), !dbg !3054
  %0 = bitcast %struct.stat* %buf to i8*, !dbg !3055
  call void @llvm.lifetime.start(i64 144, i8* %0) #3, !dbg !3055
  call void @llvm.dbg.declare(metadata %struct.stat* %buf, metadata !857, metadata !958), !dbg !3056
  %1 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !3057, !tbaa !954
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %1, i32 0, i32 1, !dbg !3059
  %2 = load i32, i32* %fd, align 4, !dbg !3059, !tbaa !963
  %cmp = icmp slt i32 %2, 0, !dbg !3060
  br i1 %cmp, label %if.then, label %if.end, !dbg !3061

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !3062
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3062

if.end:                                           ; preds = %entry
  %3 = load %struct.fileio*, %struct.fileio** %self.addr, align 8, !dbg !3063, !tbaa !954
  %fd1 = getelementptr inbounds %struct.fileio, %struct.fileio* %3, i32 0, i32 1, !dbg !3065
  %4 = load i32, i32* %fd1, align 4, !dbg !3065, !tbaa !963
  %call = call i32 bitcast (i32 (i32, %struct.stat64*)* @fstat64 to i32 (i32, %struct.stat*)*)(i32 %4, %struct.stat* %buf) #3, !dbg !3066
  %cmp2 = icmp eq i32 %call, 0, !dbg !3067
  br i1 %cmp2, label %land.lhs.true, label %if.end.7, !dbg !3068

land.lhs.true:                                    ; preds = %if.end
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 3, !dbg !3069
  %5 = load i32, i32* %st_mode, align 4, !dbg !3069, !tbaa !3071
  %and = and i32 %5, 61440, !dbg !3072
  %cmp3 = icmp eq i32 %and, 16384, !dbg !3073
  br i1 %cmp3, label %if.then.4, label %if.end.7, !dbg !3074

if.then.4:                                        ; preds = %land.lhs.true
  %call5 = call i32* @__errno_location() #1, !dbg !3075
  store i32 21, i32* %call5, align 4, !dbg !3077, !tbaa !1182
  %6 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !3078, !tbaa !954
  %7 = load %struct._object*, %struct._object** %nameobj.addr, align 8, !dbg !3079, !tbaa !954
  %call6 = call %struct._object* @PyErr_SetFromErrnoWithFilenameObject(%struct._object* %6, %struct._object* %7), !dbg !3080
  store i32 -1, i32* %retval, !dbg !3081
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3081

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  store i32 0, i32* %retval, !dbg !3082
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3082

cleanup:                                          ; preds = %if.end.7, %if.then.4, %if.then
  %8 = bitcast %struct.stat* %buf to i8*, !dbg !3083
  call void @llvm.lifetime.end(i64 144, i8* %8) #3, !dbg !3083
  %9 = load i32, i32* %retval, !dbg !3083
  ret i32 %9, !dbg !3083
}

declare i32 @_PyObject_SetAttrId(%struct._object*, %struct._Py_Identifier*, %struct._object*) #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #5

declare void @PyErr_SetObject(%struct._object*, %struct._object*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!951, !952}
!llvm.ident = !{!953}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !392, globals: !868)
!1 = !DIFile(filename: "fileio.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !43, !366, !100, !95, !380, !388, !15, !391, !21}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "fileio", file: !6, line: 58, baseType: !7)
!6 = !DIFile(filename: "./Modules/_io/fileio.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!7 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 46, size: 320, align: 64, elements: !8)
!8 = !{!9, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !7, file: !6, line: 47, baseType: !10, size: 128, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !11, line: 109, baseType: !12)
!11 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !11, line: 105, size: 128, align: 64, elements: !13)
!13 = !{!14, !22}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !12, file: !11, line: 107, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !16, line: 177, baseType: !17)
!16 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !18, line: 102, baseType: !19)
!18 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !20, line: 181, baseType: !21)
!20 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!21 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !12, file: !11, line: 108, baseType: !23, size: 64, align: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !11, line: 334, size: 3200, align: 64, elements: !25)
!25 = !{!26, !32, !36, !37, !38, !44, !108, !113, !118, !119, !124, !176, !207, !219, !225, !226, !227, !229, !231, !262, !263, !264, !273, !274, !279, !280, !282, !284, !294, !304, !322, !323, !324, !326, !328, !329, !331, !336, !341, !346, !347, !348, !349, !350, !351, !352, !353, !355}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !24, file: !11, line: 335, baseType: !27, size: 192, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !11, line: 114, baseType: !28)
!28 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 111, size: 192, align: 64, elements: !29)
!29 = !{!30, !31}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !28, file: !11, line: 112, baseType: !10, size: 128, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !28, file: !11, line: 113, baseType: !15, size: 64, align: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !24, file: !11, line: 336, baseType: !33, size: 64, align: 64, offset: 192)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !24, file: !11, line: 337, baseType: !15, size: 64, align: 64, offset: 256)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !24, file: !11, line: 337, baseType: !15, size: 64, align: 64, offset: 320)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !24, file: !11, line: 341, baseType: !39, size: 64, align: 64, offset: 384)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !11, line: 308, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !24, file: !11, line: 342, baseType: !45, size: 64, align: 64, offset: 448)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !11, line: 314, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{!49, !43, !50, !49}
!49 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !18, line: 48, baseType: !52)
!52 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !53, line: 246, size: 1728, align: 64, elements: !54)
!53 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!54 = !{!55, !56, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !76, !77, !78, !79, !81, !83, !85, !89, !92, !94, !96, !97, !98, !99, !103, !104}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !52, file: !53, line: 247, baseType: !49, size: 32, align: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !52, file: !53, line: 252, baseType: !57, size: 64, align: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !52, file: !53, line: 253, baseType: !57, size: 64, align: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !52, file: !53, line: 254, baseType: !57, size: 64, align: 64, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !52, file: !53, line: 255, baseType: !57, size: 64, align: 64, offset: 256)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !52, file: !53, line: 256, baseType: !57, size: 64, align: 64, offset: 320)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !52, file: !53, line: 257, baseType: !57, size: 64, align: 64, offset: 384)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !52, file: !53, line: 258, baseType: !57, size: 64, align: 64, offset: 448)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !52, file: !53, line: 259, baseType: !57, size: 64, align: 64, offset: 512)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !52, file: !53, line: 261, baseType: !57, size: 64, align: 64, offset: 576)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !52, file: !53, line: 262, baseType: !57, size: 64, align: 64, offset: 640)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !52, file: !53, line: 263, baseType: !57, size: 64, align: 64, offset: 704)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !52, file: !53, line: 265, baseType: !69, size: 64, align: 64, offset: 768)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !53, line: 161, size: 192, align: 64, elements: !71)
!71 = !{!72, !73, !75}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !70, file: !53, line: 162, baseType: !69, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !70, file: !53, line: 163, baseType: !74, size: 64, align: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !70, file: !53, line: 167, baseType: !49, size: 32, align: 32, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !52, file: !53, line: 267, baseType: !74, size: 64, align: 64, offset: 832)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !52, file: !53, line: 269, baseType: !49, size: 32, align: 32, offset: 896)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !52, file: !53, line: 273, baseType: !49, size: 32, align: 32, offset: 928)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !52, file: !53, line: 275, baseType: !80, size: 64, align: 64, offset: 960)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !20, line: 140, baseType: !21)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !52, file: !53, line: 279, baseType: !82, size: 16, align: 16, offset: 1024)
!82 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !52, file: !53, line: 280, baseType: !84, size: 8, align: 8, offset: 1040)
!84 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !52, file: !53, line: 281, baseType: !86, size: 8, align: 8, offset: 1048)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 8, align: 8, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 1)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !52, file: !53, line: 285, baseType: !90, size: 64, align: 64, offset: 1088)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !53, line: 155, baseType: null)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !52, file: !53, line: 294, baseType: !93, size: 64, align: 64, offset: 1152)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !20, line: 141, baseType: !21)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !52, file: !53, line: 303, baseType: !95, size: 64, align: 64, offset: 1216)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !52, file: !53, line: 304, baseType: !95, size: 64, align: 64, offset: 1280)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !52, file: !53, line: 305, baseType: !95, size: 64, align: 64, offset: 1344)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !52, file: !53, line: 306, baseType: !95, size: 64, align: 64, offset: 1408)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !52, file: !53, line: 307, baseType: !100, size: 64, align: 64, offset: 1472)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !101, line: 62, baseType: !102)
!101 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!102 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !52, file: !53, line: 309, baseType: !49, size: 32, align: 32, offset: 1536)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !52, file: !53, line: 311, baseType: !105, size: 160, align: 8, offset: 1568)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 160, align: 8, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 20)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !24, file: !11, line: 343, baseType: !109, size: 64, align: 64, offset: 512)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !11, line: 316, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{!43, !43, !57}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !24, file: !11, line: 344, baseType: !114, size: 64, align: 64, offset: 576)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !11, line: 318, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!49, !43, !57, !43}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !24, file: !11, line: 345, baseType: !95, size: 64, align: 64, offset: 640)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !24, file: !11, line: 346, baseType: !120, size: 64, align: 64, offset: 704)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !11, line: 320, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!43, !43}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !24, file: !11, line: 350, baseType: !125, size: 64, align: 64, offset: 768)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !11, line: 278, baseType: !127)
!127 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 236, size: 2176, align: 64, elements: !128)
!128 = !{!129, !134, !135, !136, !137, !138, !143, !145, !146, !147, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !127, file: !11, line: 241, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !11, line: 166, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!43, !43, !43}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !127, file: !11, line: 242, baseType: !130, size: 64, align: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !127, file: !11, line: 243, baseType: !130, size: 64, align: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !127, file: !11, line: 244, baseType: !130, size: 64, align: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !127, file: !11, line: 245, baseType: !130, size: 64, align: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !127, file: !11, line: 246, baseType: !139, size: 64, align: 64, offset: 320)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !11, line: 167, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!43, !43, !43, !43}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !127, file: !11, line: 247, baseType: !144, size: 64, align: 64, offset: 384)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !11, line: 165, baseType: !121)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !127, file: !11, line: 248, baseType: !144, size: 64, align: 64, offset: 448)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !127, file: !11, line: 249, baseType: !144, size: 64, align: 64, offset: 512)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !127, file: !11, line: 250, baseType: !148, size: 64, align: 64, offset: 576)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !11, line: 168, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!49, !43}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !127, file: !11, line: 251, baseType: !144, size: 64, align: 64, offset: 640)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !127, file: !11, line: 252, baseType: !130, size: 64, align: 64, offset: 704)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !127, file: !11, line: 253, baseType: !130, size: 64, align: 64, offset: 768)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !127, file: !11, line: 254, baseType: !130, size: 64, align: 64, offset: 832)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !127, file: !11, line: 255, baseType: !130, size: 64, align: 64, offset: 896)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !127, file: !11, line: 256, baseType: !130, size: 64, align: 64, offset: 960)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !127, file: !11, line: 257, baseType: !144, size: 64, align: 64, offset: 1024)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !127, file: !11, line: 258, baseType: !95, size: 64, align: 64, offset: 1088)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !127, file: !11, line: 259, baseType: !144, size: 64, align: 64, offset: 1152)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !127, file: !11, line: 261, baseType: !130, size: 64, align: 64, offset: 1216)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !127, file: !11, line: 262, baseType: !130, size: 64, align: 64, offset: 1280)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !127, file: !11, line: 263, baseType: !130, size: 64, align: 64, offset: 1344)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !127, file: !11, line: 264, baseType: !130, size: 64, align: 64, offset: 1408)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !127, file: !11, line: 265, baseType: !139, size: 64, align: 64, offset: 1472)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !127, file: !11, line: 266, baseType: !130, size: 64, align: 64, offset: 1536)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !127, file: !11, line: 267, baseType: !130, size: 64, align: 64, offset: 1600)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !127, file: !11, line: 268, baseType: !130, size: 64, align: 64, offset: 1664)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !127, file: !11, line: 269, baseType: !130, size: 64, align: 64, offset: 1728)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !127, file: !11, line: 270, baseType: !130, size: 64, align: 64, offset: 1792)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !127, file: !11, line: 272, baseType: !130, size: 64, align: 64, offset: 1856)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !127, file: !11, line: 273, baseType: !130, size: 64, align: 64, offset: 1920)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !127, file: !11, line: 274, baseType: !130, size: 64, align: 64, offset: 1984)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !127, file: !11, line: 275, baseType: !130, size: 64, align: 64, offset: 2048)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !127, file: !11, line: 277, baseType: !144, size: 64, align: 64, offset: 2112)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !24, file: !11, line: 351, baseType: !177, size: 64, align: 64, offset: 832)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !11, line: 292, baseType: !179)
!179 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 280, size: 640, align: 64, elements: !180)
!180 = !{!181, !186, !187, !192, !193, !194, !199, !200, !205, !206}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !179, file: !11, line: 281, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !11, line: 169, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!15, !43}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !179, file: !11, line: 282, baseType: !130, size: 64, align: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !179, file: !11, line: 283, baseType: !188, size: 64, align: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !11, line: 170, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!43, !43, !15}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !179, file: !11, line: 284, baseType: !188, size: 64, align: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !179, file: !11, line: 285, baseType: !95, size: 64, align: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !179, file: !11, line: 286, baseType: !195, size: 64, align: 64, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !11, line: 172, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!49, !43, !15, !43}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !179, file: !11, line: 287, baseType: !95, size: 64, align: 64, offset: 384)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !179, file: !11, line: 288, baseType: !201, size: 64, align: 64, offset: 448)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !11, line: 231, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!49, !43, !43}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !179, file: !11, line: 290, baseType: !130, size: 64, align: 64, offset: 512)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !179, file: !11, line: 291, baseType: !188, size: 64, align: 64, offset: 576)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !24, file: !11, line: 352, baseType: !208, size: 64, align: 64, offset: 896)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !11, line: 298, baseType: !210)
!210 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 294, size: 192, align: 64, elements: !211)
!211 = !{!212, !213, !214}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !210, file: !11, line: 295, baseType: !182, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !210, file: !11, line: 296, baseType: !130, size: 64, align: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !210, file: !11, line: 297, baseType: !215, size: 64, align: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !11, line: 174, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!49, !43, !43, !43}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !24, file: !11, line: 356, baseType: !220, size: 64, align: 64, offset: 960)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !11, line: 321, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!224, !43}
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !16, line: 186, baseType: !15)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !24, file: !11, line: 357, baseType: !139, size: 64, align: 64, offset: 1024)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !24, file: !11, line: 358, baseType: !120, size: 64, align: 64, offset: 1088)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !24, file: !11, line: 359, baseType: !228, size: 64, align: 64, offset: 1152)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !11, line: 317, baseType: !131)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !24, file: !11, line: 360, baseType: !230, size: 64, align: 64, offset: 1216)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !11, line: 319, baseType: !216)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !24, file: !11, line: 363, baseType: !232, size: 64, align: 64, offset: 1280)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !11, line: 304, baseType: !234)
!234 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 301, size: 128, align: 64, elements: !235)
!235 = !{!236, !257}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !234, file: !11, line: 302, baseType: !237, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !11, line: 193, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!49, !43, !241, !49}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !11, line: 191, baseType: !243)
!243 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !11, line: 178, size: 640, align: 64, elements: !244)
!244 = !{!245, !246, !247, !248, !249, !250, !251, !252, !254, !255, !256}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !243, file: !11, line: 179, baseType: !95, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !243, file: !11, line: 180, baseType: !43, size: 64, align: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !243, file: !11, line: 181, baseType: !15, size: 64, align: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !243, file: !11, line: 182, baseType: !15, size: 64, align: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !243, file: !11, line: 184, baseType: !49, size: 32, align: 32, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !243, file: !11, line: 185, baseType: !49, size: 32, align: 32, offset: 288)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !243, file: !11, line: 186, baseType: !57, size: 64, align: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !243, file: !11, line: 187, baseType: !253, size: 64, align: 64, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !243, file: !11, line: 188, baseType: !253, size: 64, align: 64, offset: 448)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !243, file: !11, line: 189, baseType: !253, size: 64, align: 64, offset: 512)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !243, file: !11, line: 190, baseType: !95, size: 64, align: 64, offset: 576)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !234, file: !11, line: 303, baseType: !258, size: 64, align: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !11, line: 194, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !43, !241}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !24, file: !11, line: 366, baseType: !102, size: 64, align: 64, offset: 1344)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !24, file: !11, line: 368, baseType: !33, size: 64, align: 64, offset: 1408)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !24, file: !11, line: 372, baseType: !265, size: 64, align: 64, offset: 1472)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !11, line: 233, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!49, !43, !269, !95}
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !11, line: 232, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!49, !43, !95}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !24, file: !11, line: 375, baseType: !148, size: 64, align: 64, offset: 1536)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !24, file: !11, line: 379, baseType: !275, size: 64, align: 64, offset: 1600)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !11, line: 322, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!43, !43, !43, !49}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !24, file: !11, line: 382, baseType: !15, size: 64, align: 64, offset: 1664)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !24, file: !11, line: 385, baseType: !281, size: 64, align: 64, offset: 1728)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !11, line: 323, baseType: !121)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !24, file: !11, line: 386, baseType: !283, size: 64, align: 64, offset: 1792)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !11, line: 324, baseType: !121)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !24, file: !11, line: 389, baseType: !285, size: 64, align: 64, offset: 1856)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !287, line: 40, size: 256, align: 64, elements: !288)
!287 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!288 = !{!289, !290, !292, !293}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !286, file: !287, line: 41, baseType: !33, size: 64, align: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !286, file: !287, line: 42, baseType: !291, size: 64, align: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !287, line: 18, baseType: !131)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !286, file: !287, line: 43, baseType: !49, size: 32, align: 32, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !286, file: !287, line: 45, baseType: !33, size: 64, align: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !24, file: !11, line: 390, baseType: !295, size: 64, align: 64, offset: 1920)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !297, line: 18, size: 320, align: 64, elements: !298)
!297 = !DIFile(filename: "Include/structmember.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!298 = !{!299, !300, !301, !302, !303}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !296, file: !297, line: 19, baseType: !57, size: 64, align: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !296, file: !297, line: 20, baseType: !49, size: 32, align: 32, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !296, file: !297, line: 21, baseType: !15, size: 64, align: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !296, file: !297, line: 22, baseType: !49, size: 32, align: 32, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !296, file: !297, line: 23, baseType: !57, size: 64, align: 64, offset: 256)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !24, file: !11, line: 391, baseType: !305, size: 64, align: 64, offset: 1984)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64, align: 64)
!306 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !307, line: 11, size: 320, align: 64, elements: !308)
!307 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!308 = !{!309, !310, !315, !320, !321}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !306, file: !307, line: 12, baseType: !57, size: 64, align: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !306, file: !307, line: 13, baseType: !311, size: 64, align: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !307, line: 8, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64, align: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!43, !43, !95}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !306, file: !307, line: 14, baseType: !316, size: 64, align: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !307, line: 9, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64, align: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!49, !43, !43, !95}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !306, file: !307, line: 15, baseType: !57, size: 64, align: 64, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !306, file: !307, line: 16, baseType: !95, size: 64, align: 64, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !24, file: !11, line: 392, baseType: !23, size: 64, align: 64, offset: 2048)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !24, file: !11, line: 393, baseType: !43, size: 64, align: 64, offset: 2112)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !24, file: !11, line: 394, baseType: !325, size: 64, align: 64, offset: 2176)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !11, line: 325, baseType: !140)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !24, file: !11, line: 395, baseType: !327, size: 64, align: 64, offset: 2240)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !11, line: 326, baseType: !216)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !24, file: !11, line: 396, baseType: !15, size: 64, align: 64, offset: 2304)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !24, file: !11, line: 397, baseType: !330, size: 64, align: 64, offset: 2368)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !11, line: 327, baseType: !216)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !24, file: !11, line: 398, baseType: !332, size: 64, align: 64, offset: 2432)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !11, line: 329, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64, align: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!43, !23, !15}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !24, file: !11, line: 399, baseType: !337, size: 64, align: 64, offset: 2496)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !11, line: 328, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!43, !23, !43, !43}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !24, file: !11, line: 400, baseType: !342, size: 64, align: 64, offset: 2560)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !11, line: 307, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64, align: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !95}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !24, file: !11, line: 401, baseType: !148, size: 64, align: 64, offset: 2624)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !24, file: !11, line: 402, baseType: !43, size: 64, align: 64, offset: 2688)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !24, file: !11, line: 403, baseType: !43, size: 64, align: 64, offset: 2752)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !24, file: !11, line: 404, baseType: !43, size: 64, align: 64, offset: 2816)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !24, file: !11, line: 405, baseType: !43, size: 64, align: 64, offset: 2880)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !24, file: !11, line: 406, baseType: !43, size: 64, align: 64, offset: 2944)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !24, file: !11, line: 407, baseType: !39, size: 64, align: 64, offset: 3008)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !24, file: !11, line: 410, baseType: !354, size: 32, align: 32, offset: 3072)
!354 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !24, file: !11, line: 412, baseType: !39, size: 64, align: 64, offset: 3136)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !7, file: !6, line: 48, baseType: !49, size: 32, align: 32, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !7, file: !6, line: 49, baseType: !354, size: 1, align: 32, offset: 160)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "readable", scope: !7, file: !6, line: 50, baseType: !354, size: 1, align: 32, offset: 161)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !7, file: !6, line: 51, baseType: !354, size: 1, align: 32, offset: 162)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "appending", scope: !7, file: !6, line: 52, baseType: !354, size: 1, align: 32, offset: 163)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "seekable", scope: !7, file: !6, line: 53, baseType: !49, size: 2, align: 32, offset: 164)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "closefd", scope: !7, file: !6, line: 54, baseType: !354, size: 1, align: 32, offset: 166)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "finalizing", scope: !7, file: !6, line: 55, baseType: !35, size: 8, align: 8, offset: 168)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "weakreflist", scope: !7, file: !6, line: 56, baseType: !43, size: 64, align: 64, offset: 192)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !7, file: !6, line: 57, baseType: !43, size: 64, align: 64, offset: 256)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64, align: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGC_Head", file: !368, line: 253, baseType: !369)
!368 = !DIFile(filename: "Include/objimpl.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!369 = !DICompositeType(tag: DW_TAG_union_type, name: "_gc_head", file: !368, line: 246, size: 192, align: 64, elements: !370)
!370 = !{!371, !378}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !369, file: !368, line: 251, baseType: !372, size: 192, align: 64)
!372 = !DICompositeType(tag: DW_TAG_structure_type, scope: !369, file: !368, line: 247, size: 192, align: 64, elements: !373)
!373 = !{!374, !376, !377}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "gc_next", scope: !372, file: !368, line: 248, baseType: !375, size: 64, align: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "gc_prev", scope: !372, file: !368, line: 249, baseType: !375, size: 64, align: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "gc_refs", scope: !372, file: !368, line: 250, baseType: !15, size: 64, align: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !369, file: !368, line: 252, baseType: !379, size: 64, align: 64)
!379 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64, align: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBytesObject", file: !382, line: 41, baseType: !383)
!382 = !DIFile(filename: "Include/bytesobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!383 = !DICompositeType(tag: DW_TAG_structure_type, file: !382, line: 31, size: 320, align: 64, elements: !384)
!384 = !{!385, !386, !387}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !383, file: !382, line: 32, baseType: !27, size: 192, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ob_shash", scope: !383, file: !382, line: 33, baseType: !224, size: 64, align: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "ob_sval", scope: !383, file: !382, line: 34, baseType: !86, size: 8, align: 8, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_off_t", file: !389, line: 94, baseType: !390)
!389 = !DIFile(filename: "./Modules/_io/_iomodule.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !18, line: 92, baseType: !93)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!392 = !{!393, !396, !409, !420, !425, !436, !447, !534, !537, !550, !619, !646, !653, !665, !677, !683, !696, !700, !718, !727, !739, !749, !752, !755, !758, !764, !773, !776, !782, !786, !790, !836, !851, !858}
!393 = !DISubprogram(name: "_PyFileIO_closed", scope: !6, file: !6, line: 67, type: !150, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @_PyFileIO_closed, variables: !394)
!394 = !{!395}
!395 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !393, file: !6, line: 67, type: !43)
!396 = !DISubprogram(name: "fileio_dealloc", scope: !6, file: !6, line: 474, type: !397, isLocal: true, isDefinition: true, scopeLine: 475, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.fileio*)* @fileio_dealloc, variables: !399)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !4}
!399 = !{!400, !401, !403, !405}
!400 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !396, file: !6, line: 474, type: !4)
!401 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !402, file: !6, line: 479, type: !366)
!402 = distinct !DILexicalBlock(scope: !396, file: !6, line: 479, column: 8)
!403 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !404, file: !6, line: 482, type: !43)
!404 = distinct !DILexicalBlock(scope: !396, file: !6, line: 482, column: 8)
!405 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !406, file: !6, line: 482, type: !43)
!406 = distinct !DILexicalBlock(scope: !407, file: !6, line: 482, column: 115)
!407 = distinct !DILexicalBlock(scope: !408, file: !6, line: 482, column: 83)
!408 = distinct !DILexicalBlock(scope: !404, file: !6, line: 482, column: 60)
!409 = !DISubprogram(name: "fileio_repr", scope: !6, file: !6, line: 1041, type: !410, isLocal: true, isDefinition: true, scopeLine: 1042, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*)* @fileio_repr, variables: !412)
!410 = !DISubroutineType(types: !411)
!411 = !{!43, !4}
!412 = !{!413, !414, !415, !416}
!413 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !409, file: !6, line: 1041, type: !4)
!414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nameobj", scope: !409, file: !6, line: 1043, type: !43)
!415 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !409, file: !6, line: 1043, type: !43)
!416 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !417, file: !6, line: 1060, type: !43)
!417 = distinct !DILexicalBlock(scope: !418, file: !6, line: 1060, column: 12)
!418 = distinct !DILexicalBlock(scope: !419, file: !6, line: 1057, column: 10)
!419 = distinct !DILexicalBlock(scope: !409, file: !6, line: 1049, column: 9)
!420 = !DISubprogram(name: "mode_string", scope: !6, file: !6, line: 1016, type: !421, isLocal: true, isDefinition: true, scopeLine: 1017, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct.fileio*)* @mode_string, variables: !423)
!421 = !DISubroutineType(types: !422)
!422 = !{!57, !4}
!423 = !{!424}
!424 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !420, file: !6, line: 1016, type: !4)
!425 = !DISubprogram(name: "fileio_traverse", scope: !6, file: !6, line: 460, type: !426, isLocal: true, isDefinition: true, scopeLine: 461, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.fileio*, i32 (%struct._object*, i8*)*, i8*)* @fileio_traverse, variables: !428)
!426 = !DISubroutineType(types: !427)
!427 = !{!49, !4, !269, !95}
!428 = !{!429, !430, !431, !432}
!429 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !425, file: !6, line: 460, type: !4)
!430 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !425, file: !6, line: 460, type: !269)
!431 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !425, file: !6, line: 460, type: !95)
!432 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !433, file: !6, line: 462, type: !49)
!433 = distinct !DILexicalBlock(scope: !434, file: !6, line: 462, column: 26)
!434 = distinct !DILexicalBlock(scope: !435, file: !6, line: 462, column: 14)
!435 = distinct !DILexicalBlock(scope: !425, file: !6, line: 462, column: 8)
!436 = !DISubprogram(name: "fileio_clear", scope: !6, file: !6, line: 467, type: !437, isLocal: true, isDefinition: true, scopeLine: 468, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.fileio*)* @fileio_clear, variables: !439)
!437 = !DISubroutineType(types: !438)
!438 = !{!49, !4}
!439 = !{!440, !441, !443}
!440 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !436, file: !6, line: 467, type: !4)
!441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !442, file: !6, line: 469, type: !43)
!442 = distinct !DILexicalBlock(scope: !436, file: !6, line: 469, column: 8)
!443 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !444, file: !6, line: 469, type: !43)
!444 = distinct !DILexicalBlock(scope: !445, file: !6, line: 469, column: 115)
!445 = distinct !DILexicalBlock(scope: !446, file: !6, line: 469, column: 83)
!446 = distinct !DILexicalBlock(scope: !442, file: !6, line: 469, column: 60)
!447 = !DISubprogram(name: "fileio_read", scope: !6, file: !6, line: 718, type: !448, isLocal: true, isDefinition: true, scopeLine: 719, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*, %struct._object*)* @fileio_read, variables: !450)
!448 = !DISubroutineType(types: !449)
!449 = !{!43, !4, !43}
!450 = !{!451, !452, !453, !454, !455, !456, !457, !519, !522, !524, !530}
!451 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !447, file: !6, line: 718, type: !4)
!452 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !447, file: !6, line: 718, type: !43)
!453 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !447, file: !6, line: 720, type: !57)
!454 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !447, file: !6, line: 721, type: !15)
!455 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !447, file: !6, line: 722, type: !15)
!456 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes", scope: !447, file: !6, line: 723, type: !43)
!457 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !458, file: !6, line: 747, type: !461)
!458 = distinct !DILexicalBlock(scope: !459, file: !6, line: 747, column: 9)
!459 = distinct !DILexicalBlock(scope: !460, file: !6, line: 746, column: 14)
!460 = distinct !DILexicalBlock(scope: !447, file: !6, line: 746, column: 9)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64, align: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !463, line: 139, baseType: !464)
!463 = !DIFile(filename: "Include/pystate.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!464 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !463, line: 69, size: 1536, align: 64, elements: !465)
!465 = !{!466, !468, !469, !489, !492, !493, !494, !495, !496, !497, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !464, file: !463, line: 72, baseType: !467, size: 64, align: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64, align: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !464, file: !463, line: 73, baseType: !467, size: 64, align: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !464, file: !463, line: 74, baseType: !470, size: 64, align: 64, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64, align: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !463, line: 44, baseType: !472)
!472 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !463, line: 19, size: 832, align: 64, elements: !473)
!473 = !{!474, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !472, file: !463, line: 21, baseType: !475, size: 64, align: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64, align: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !472, file: !463, line: 22, baseType: !467, size: 64, align: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !472, file: !463, line: 24, baseType: !43, size: 64, align: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !472, file: !463, line: 25, baseType: !43, size: 64, align: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !472, file: !463, line: 26, baseType: !43, size: 64, align: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !472, file: !463, line: 27, baseType: !43, size: 64, align: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !472, file: !463, line: 28, baseType: !43, size: 64, align: 64, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !472, file: !463, line: 30, baseType: !43, size: 64, align: 64, offset: 448)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !472, file: !463, line: 31, baseType: !43, size: 64, align: 64, offset: 512)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !472, file: !463, line: 32, baseType: !43, size: 64, align: 64, offset: 576)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !472, file: !463, line: 33, baseType: !49, size: 32, align: 32, offset: 640)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !472, file: !463, line: 34, baseType: !49, size: 32, align: 32, offset: 672)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !472, file: !463, line: 37, baseType: !49, size: 32, align: 32, offset: 704)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !472, file: !463, line: 43, baseType: !43, size: 64, align: 64, offset: 768)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !464, file: !463, line: 76, baseType: !490, size: 64, align: 64, offset: 192)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64, align: 64)
!491 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !463, line: 50, flags: DIFlagFwdDecl)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !464, file: !463, line: 77, baseType: !49, size: 32, align: 32, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !464, file: !463, line: 78, baseType: !35, size: 8, align: 8, offset: 288)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !464, file: !463, line: 80, baseType: !35, size: 8, align: 8, offset: 296)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !464, file: !463, line: 85, baseType: !49, size: 32, align: 32, offset: 320)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !464, file: !463, line: 86, baseType: !49, size: 32, align: 32, offset: 352)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !464, file: !463, line: 88, baseType: !498, size: 64, align: 64, offset: 384)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !463, line: 54, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64, align: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!49, !43, !490, !49, !43}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !464, file: !463, line: 89, baseType: !498, size: 64, align: 64, offset: 448)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !464, file: !463, line: 90, baseType: !43, size: 64, align: 64, offset: 512)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !464, file: !463, line: 91, baseType: !43, size: 64, align: 64, offset: 576)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !464, file: !463, line: 93, baseType: !43, size: 64, align: 64, offset: 640)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !464, file: !463, line: 94, baseType: !43, size: 64, align: 64, offset: 704)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !464, file: !463, line: 95, baseType: !43, size: 64, align: 64, offset: 768)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !464, file: !463, line: 97, baseType: !43, size: 64, align: 64, offset: 832)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !464, file: !463, line: 98, baseType: !43, size: 64, align: 64, offset: 896)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !464, file: !463, line: 99, baseType: !43, size: 64, align: 64, offset: 960)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !464, file: !463, line: 101, baseType: !43, size: 64, align: 64, offset: 1024)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !464, file: !463, line: 103, baseType: !49, size: 32, align: 32, offset: 1088)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !464, file: !463, line: 105, baseType: !43, size: 64, align: 64, offset: 1152)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !464, file: !463, line: 106, baseType: !21, size: 64, align: 64, offset: 1216)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !464, file: !463, line: 108, baseType: !49, size: 32, align: 32, offset: 1280)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !464, file: !463, line: 109, baseType: !43, size: 64, align: 64, offset: 1344)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !464, file: !463, line: 134, baseType: !343, size: 64, align: 64, offset: 1408)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !464, file: !463, line: 135, baseType: !95, size: 64, align: 64, offset: 1472)
!519 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !520, file: !6, line: 759, type: !49)
!520 = distinct !DILexicalBlock(scope: !521, file: !6, line: 758, column: 16)
!521 = distinct !DILexicalBlock(scope: !447, file: !6, line: 758, column: 9)
!522 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !523, file: !6, line: 760, type: !43)
!523 = distinct !DILexicalBlock(scope: !520, file: !6, line: 760, column: 12)
!524 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !525, file: !6, line: 770, type: !43)
!525 = distinct !DILexicalBlock(scope: !526, file: !6, line: 770, column: 16)
!526 = distinct !DILexicalBlock(scope: !527, file: !6, line: 769, column: 45)
!527 = distinct !DILexicalBlock(scope: !528, file: !6, line: 769, column: 13)
!528 = distinct !DILexicalBlock(scope: !529, file: !6, line: 768, column: 20)
!529 = distinct !DILexicalBlock(scope: !447, file: !6, line: 768, column: 9)
!530 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !531, file: !6, line: 770, type: !43)
!531 = distinct !DILexicalBlock(scope: !532, file: !6, line: 770, column: 113)
!532 = distinct !DILexicalBlock(scope: !533, file: !6, line: 770, column: 86)
!533 = distinct !DILexicalBlock(scope: !525, file: !6, line: 770, column: 63)
!534 = !DISubprogram(name: "err_closed", scope: !6, file: !6, line: 487, type: !535, isLocal: true, isDefinition: true, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @err_closed, variables: !2)
!535 = !DISubroutineType(types: !536)
!536 = !{!43}
!537 = !DISubprogram(name: "err_mode", scope: !6, file: !6, line: 494, type: !538, isLocal: true, isDefinition: true, scopeLine: 495, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*)* @err_mode, variables: !540)
!538 = !DISubroutineType(types: !539)
!539 = !{!43, !57}
!540 = !{!541, !542}
!541 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "action", arg: 1, scope: !537, file: !6, line: 494, type: !57)
!542 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "state", scope: !537, file: !6, line: 496, type: !543)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64, align: 64)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "_PyIO_State", file: !389, line: 135, baseType: !545)
!545 = !DICompositeType(tag: DW_TAG_structure_type, file: !389, line: 130, size: 192, align: 64, elements: !546)
!546 = !{!547, !548, !549}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !545, file: !389, line: 131, baseType: !49, size: 32, align: 32)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "locale_module", scope: !545, file: !389, line: 132, baseType: !43, size: 64, align: 64, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "unsupported_operation", scope: !545, file: !389, line: 134, baseType: !43, size: 64, align: 64, offset: 128)
!550 = !DISubprogram(name: "fileio_readall", scope: !6, file: !6, line: 619, type: !410, isLocal: true, isDefinition: true, scopeLine: 620, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*)* @fileio_readall, variables: !551)
!551 = !{!552, !553, !590, !591, !592, !593, !594, !595, !596, !603, !605, !613, !617}
!552 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !550, file: !6, line: 619, type: !4)
!553 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "st", scope: !550, file: !6, line: 621, type: !554)
!554 = !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !555, line: 46, size: 1152, align: 64, elements: !556)
!555 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!556 = !{!557, !559, !561, !563, !565, !567, !569, !570, !571, !572, !574, !576, !584, !585, !586}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !554, file: !555, line: 48, baseType: !558, size: 64, align: 64)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !20, line: 133, baseType: !102)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !554, file: !555, line: 53, baseType: !560, size: 64, align: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !20, line: 136, baseType: !102)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !554, file: !555, line: 61, baseType: !562, size: 64, align: 64, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !20, line: 139, baseType: !102)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !554, file: !555, line: 62, baseType: !564, size: 32, align: 32, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !20, line: 138, baseType: !354)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !554, file: !555, line: 64, baseType: !566, size: 32, align: 32, offset: 224)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !20, line: 134, baseType: !354)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !554, file: !555, line: 65, baseType: !568, size: 32, align: 32, offset: 256)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !20, line: 135, baseType: !354)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !554, file: !555, line: 67, baseType: !49, size: 32, align: 32, offset: 288)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !554, file: !555, line: 69, baseType: !558, size: 64, align: 64, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !554, file: !555, line: 74, baseType: !80, size: 64, align: 64, offset: 384)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !554, file: !555, line: 78, baseType: !573, size: 64, align: 64, offset: 448)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !20, line: 162, baseType: !21)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !554, file: !555, line: 80, baseType: !575, size: 64, align: 64, offset: 512)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !20, line: 167, baseType: !21)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !554, file: !555, line: 91, baseType: !577, size: 128, align: 64, offset: 576)
!577 = !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !578, line: 120, size: 128, align: 64, elements: !579)
!578 = !DIFile(filename: "/usr/include/time.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!579 = !{!580, !582}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !577, file: !578, line: 122, baseType: !581, size: 64, align: 64)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !20, line: 148, baseType: !21)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !577, file: !578, line: 123, baseType: !583, size: 64, align: 64, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !20, line: 184, baseType: !21)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !554, file: !555, line: 92, baseType: !577, size: 128, align: 64, offset: 704)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !554, file: !555, line: 93, baseType: !577, size: 128, align: 64, offset: 832)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !554, file: !555, line: 106, baseType: !587, size: 192, align: 64, offset: 960)
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !583, size: 192, align: 64, elements: !588)
!588 = !{!589}
!589 = !DISubrange(count: 3)
!590 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !550, file: !6, line: 622, type: !388)
!591 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end", scope: !550, file: !6, line: 622, type: !388)
!592 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !550, file: !6, line: 623, type: !43)
!593 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes_read", scope: !550, file: !6, line: 624, type: !15)
!594 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !550, file: !6, line: 625, type: !15)
!595 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bufsize", scope: !550, file: !6, line: 626, type: !100)
!596 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !597, file: !6, line: 664, type: !43)
!597 = distinct !DILexicalBlock(scope: !598, file: !6, line: 664, column: 20)
!598 = distinct !DILexicalBlock(scope: !599, file: !6, line: 660, column: 76)
!599 = distinct !DILexicalBlock(scope: !600, file: !6, line: 660, column: 17)
!600 = distinct !DILexicalBlock(scope: !601, file: !6, line: 658, column: 48)
!601 = distinct !DILexicalBlock(scope: !602, file: !6, line: 658, column: 13)
!602 = distinct !DILexicalBlock(scope: !550, file: !6, line: 657, column: 15)
!603 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !604, file: !6, line: 673, type: !461)
!604 = distinct !DILexicalBlock(scope: !602, file: !6, line: 673, column: 9)
!605 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !606, file: !6, line: 689, type: !43)
!606 = distinct !DILexicalBlock(scope: !607, file: !6, line: 689, column: 24)
!607 = distinct !DILexicalBlock(scope: !608, file: !6, line: 688, column: 43)
!608 = distinct !DILexicalBlock(scope: !609, file: !6, line: 688, column: 21)
!609 = distinct !DILexicalBlock(scope: !610, file: !6, line: 687, column: 46)
!610 = distinct !DILexicalBlock(scope: !611, file: !6, line: 687, column: 17)
!611 = distinct !DILexicalBlock(scope: !612, file: !6, line: 686, column: 20)
!612 = distinct !DILexicalBlock(scope: !602, file: !6, line: 686, column: 13)
!613 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !614, file: !6, line: 697, type: !43)
!614 = distinct !DILexicalBlock(scope: !615, file: !6, line: 697, column: 20)
!615 = distinct !DILexicalBlock(scope: !616, file: !6, line: 696, column: 47)
!616 = distinct !DILexicalBlock(scope: !611, file: !6, line: 696, column: 17)
!617 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !618, file: !6, line: 700, type: !43)
!618 = distinct !DILexicalBlock(scope: !611, file: !6, line: 700, column: 16)
!619 = !DISubprogram(name: "fstat64", scope: !620, file: !620, line: 517, type: !621, isLocal: false, isDefinition: true, scopeLine: 518, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.stat64*)* @fstat64, variables: !643)
!620 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!621 = !DISubroutineType(types: !622)
!622 = !{!49, !49, !623}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64, align: 64)
!624 = !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !555, line: 119, size: 1152, align: 64, elements: !625)
!625 = !{!626, !627, !629, !630, !631, !632, !633, !634, !635, !636, !637, !639, !640, !641, !642}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !624, file: !555, line: 121, baseType: !558, size: 64, align: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !624, file: !555, line: 123, baseType: !628, size: 64, align: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !20, line: 137, baseType: !102)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !624, file: !555, line: 124, baseType: !562, size: 64, align: 64, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !624, file: !555, line: 125, baseType: !564, size: 32, align: 32, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !624, file: !555, line: 132, baseType: !566, size: 32, align: 32, offset: 224)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !624, file: !555, line: 133, baseType: !568, size: 32, align: 32, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !624, file: !555, line: 135, baseType: !49, size: 32, align: 32, offset: 288)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !624, file: !555, line: 136, baseType: !558, size: 64, align: 64, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !624, file: !555, line: 137, baseType: !80, size: 64, align: 64, offset: 384)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !624, file: !555, line: 143, baseType: !573, size: 64, align: 64, offset: 448)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !624, file: !555, line: 144, baseType: !638, size: 64, align: 64, offset: 512)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !20, line: 168, baseType: !21)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !624, file: !555, line: 152, baseType: !577, size: 128, align: 64, offset: 576)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !624, file: !555, line: 153, baseType: !577, size: 128, align: 64, offset: 704)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !624, file: !555, line: 154, baseType: !577, size: 128, align: 64, offset: 832)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !624, file: !555, line: 164, baseType: !587, size: 192, align: 64, offset: 960)
!643 = !{!644, !645}
!644 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__fd", arg: 1, scope: !619, file: !620, line: 517, type: !49)
!645 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__statbuf", arg: 2, scope: !619, file: !620, line: 517, type: !623)
!646 = !DISubprogram(name: "new_buffersize", scope: !6, file: !6, line: 600, type: !647, isLocal: true, isDefinition: true, scopeLine: 601, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.fileio*, i64)* @new_buffersize, variables: !649)
!647 = !DISubroutineType(types: !648)
!648 = !{!100, !4, !100}
!649 = !{!650, !651, !652}
!650 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !646, file: !6, line: 600, type: !4)
!651 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "currentsize", arg: 2, scope: !646, file: !6, line: 600, type: !100)
!652 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "addend", scope: !646, file: !6, line: 602, type: !100)
!653 = !DISubprogram(name: "fileio_readinto", scope: !6, file: !6, line: 546, type: !448, isLocal: true, isDefinition: true, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*, %struct._object*)* @fileio_readinto, variables: !654)
!654 = !{!655, !656, !657, !658, !659, !660, !661}
!655 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !653, file: !6, line: 546, type: !4)
!656 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !653, file: !6, line: 546, type: !43)
!657 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !653, file: !6, line: 548, type: !242)
!658 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !653, file: !6, line: 549, type: !15)
!659 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !653, file: !6, line: 549, type: !15)
!660 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !653, file: !6, line: 550, type: !49)
!661 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !662, file: !6, line: 562, type: !461)
!662 = distinct !DILexicalBlock(scope: !663, file: !6, line: 562, column: 9)
!663 = distinct !DILexicalBlock(scope: !664, file: !6, line: 560, column: 14)
!664 = distinct !DILexicalBlock(scope: !653, file: !6, line: 560, column: 9)
!665 = !DISubprogram(name: "fileio_write", scope: !6, file: !6, line: 779, type: !448, isLocal: true, isDefinition: true, scopeLine: 780, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*, %struct._object*)* @fileio_write, variables: !666)
!666 = !{!667, !668, !669, !670, !671, !672, !673}
!667 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !665, file: !6, line: 779, type: !4)
!668 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !665, file: !6, line: 779, type: !43)
!669 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !665, file: !6, line: 781, type: !242)
!670 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !665, file: !6, line: 782, type: !15)
!671 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !665, file: !6, line: 782, type: !15)
!672 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !665, file: !6, line: 783, type: !49)
!673 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !674, file: !6, line: 794, type: !461)
!674 = distinct !DILexicalBlock(scope: !675, file: !6, line: 794, column: 9)
!675 = distinct !DILexicalBlock(scope: !676, file: !6, line: 793, column: 14)
!676 = distinct !DILexicalBlock(scope: !665, file: !6, line: 793, column: 9)
!677 = !DISubprogram(name: "fileio_seek", scope: !6, file: !6, line: 889, type: !448, isLocal: true, isDefinition: true, scopeLine: 890, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*, %struct._object*)* @fileio_seek, variables: !678)
!678 = !{!679, !680, !681, !682}
!679 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !677, file: !6, line: 889, type: !4)
!680 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !677, file: !6, line: 889, type: !43)
!681 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "posobj", scope: !677, file: !6, line: 891, type: !43)
!682 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "whence", scope: !677, file: !6, line: 892, type: !49)
!683 = !DISubprogram(name: "portable_lseek", scope: !6, file: !6, line: 833, type: !684, isLocal: true, isDefinition: true, scopeLine: 834, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i32, %struct._object*, i32)* @portable_lseek, variables: !686)
!684 = !DISubroutineType(types: !685)
!685 = !{!43, !49, !43, !49}
!686 = !{!687, !688, !689, !690, !691, !692}
!687 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !683, file: !6, line: 833, type: !49)
!688 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "posobj", arg: 2, scope: !683, file: !6, line: 833, type: !43)
!689 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "whence", arg: 3, scope: !683, file: !6, line: 833, type: !49)
!690 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !683, file: !6, line: 835, type: !388)
!691 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !683, file: !6, line: 835, type: !388)
!692 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !693, file: !6, line: 869, type: !461)
!693 = distinct !DILexicalBlock(scope: !694, file: !6, line: 869, column: 9)
!694 = distinct !DILexicalBlock(scope: !695, file: !6, line: 868, column: 14)
!695 = distinct !DILexicalBlock(scope: !683, file: !6, line: 868, column: 9)
!696 = !DISubprogram(name: "fileio_tell", scope: !6, file: !6, line: 904, type: !448, isLocal: true, isDefinition: true, scopeLine: 905, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*, %struct._object*)* @fileio_tell, variables: !697)
!697 = !{!698, !699}
!698 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !696, file: !6, line: 904, type: !4)
!699 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !696, file: !6, line: 904, type: !43)
!700 = !DISubprogram(name: "fileio_truncate", scope: !6, file: !6, line: 914, type: !448, isLocal: true, isDefinition: true, scopeLine: 915, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*, %struct._object*)* @fileio_truncate, variables: !701)
!701 = !{!702, !703, !704, !705, !706, !707, !708, !712, !714}
!702 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !700, file: !6, line: 914, type: !4)
!703 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !700, file: !6, line: 914, type: !43)
!704 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "posobj", scope: !700, file: !6, line: 916, type: !43)
!705 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !700, file: !6, line: 918, type: !388)
!706 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !700, file: !6, line: 920, type: !49)
!707 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !700, file: !6, line: 921, type: !49)
!708 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !709, file: !6, line: 994, type: !43)
!709 = distinct !DILexicalBlock(scope: !710, file: !6, line: 994, column: 12)
!710 = distinct !DILexicalBlock(scope: !711, file: !6, line: 993, column: 26)
!711 = distinct !DILexicalBlock(scope: !700, file: !6, line: 993, column: 9)
!712 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !713, file: !6, line: 998, type: !461)
!713 = distinct !DILexicalBlock(scope: !700, file: !6, line: 998, column: 5)
!714 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !715, file: !6, line: 1006, type: !43)
!715 = distinct !DILexicalBlock(scope: !716, file: !6, line: 1006, column: 12)
!716 = distinct !DILexicalBlock(scope: !717, file: !6, line: 1005, column: 19)
!717 = distinct !DILexicalBlock(scope: !700, file: !6, line: 1005, column: 9)
!718 = !DISubprogram(name: "fileio_close", scope: !6, file: !6, line: 127, type: !410, isLocal: true, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*)* @fileio_close, variables: !719)
!719 = !{!720, !721, !724}
!720 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !718, file: !6, line: 127, type: !4)
!721 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !722, file: !6, line: 135, type: !43)
!722 = distinct !DILexicalBlock(scope: !723, file: !6, line: 134, column: 27)
!723 = distinct !DILexicalBlock(scope: !718, file: !6, line: 134, column: 9)
!724 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !725, file: !6, line: 137, type: !43)
!725 = distinct !DILexicalBlock(scope: !726, file: !6, line: 137, column: 16)
!726 = distinct !DILexicalBlock(scope: !722, file: !6, line: 136, column: 13)
!727 = !DISubprogram(name: "internal_close", scope: !6, file: !6, line: 99, type: !437, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.fileio*)* @internal_close, variables: !728)
!728 = !{!729, !730, !731, !732, !735}
!729 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !727, file: !6, line: 99, type: !4)
!730 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !727, file: !6, line: 101, type: !49)
!731 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "save_errno", scope: !727, file: !6, line: 102, type: !49)
!732 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !733, file: !6, line: 104, type: !49)
!733 = distinct !DILexicalBlock(scope: !734, file: !6, line: 103, column: 24)
!734 = distinct !DILexicalBlock(scope: !727, file: !6, line: 103, column: 9)
!735 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !736, file: !6, line: 108, type: !461)
!736 = distinct !DILexicalBlock(scope: !737, file: !6, line: 108, column: 13)
!737 = distinct !DILexicalBlock(scope: !738, file: !6, line: 107, column: 18)
!738 = distinct !DILexicalBlock(scope: !733, file: !6, line: 107, column: 13)
!739 = !DISubprogram(name: "fileio_seekable", scope: !6, file: !6, line: 528, type: !410, isLocal: true, isDefinition: true, scopeLine: 529, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*)* @fileio_seekable, variables: !740)
!740 = !{!741, !742, !745}
!741 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !739, file: !6, line: 528, type: !4)
!742 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !743, file: !6, line: 533, type: !43)
!743 = distinct !DILexicalBlock(scope: !744, file: !6, line: 532, column: 29)
!744 = distinct !DILexicalBlock(scope: !739, file: !6, line: 532, column: 9)
!745 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !746, file: !6, line: 538, type: !43)
!746 = distinct !DILexicalBlock(scope: !747, file: !6, line: 538, column: 16)
!747 = distinct !DILexicalBlock(scope: !748, file: !6, line: 537, column: 16)
!748 = distinct !DILexicalBlock(scope: !743, file: !6, line: 534, column: 13)
!749 = !DISubprogram(name: "fileio_readable", scope: !6, file: !6, line: 512, type: !410, isLocal: true, isDefinition: true, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*)* @fileio_readable, variables: !750)
!750 = !{!751}
!751 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !749, file: !6, line: 512, type: !4)
!752 = !DISubprogram(name: "fileio_writable", scope: !6, file: !6, line: 520, type: !410, isLocal: true, isDefinition: true, scopeLine: 521, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*)* @fileio_writable, variables: !753)
!753 = !{!754}
!754 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !752, file: !6, line: 520, type: !4)
!755 = !DISubprogram(name: "fileio_fileno", scope: !6, file: !6, line: 504, type: !410, isLocal: true, isDefinition: true, scopeLine: 505, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*)* @fileio_fileno, variables: !756)
!756 = !{!757}
!757 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !755, file: !6, line: 504, type: !4)
!758 = !DISubprogram(name: "fileio_isatty", scope: !6, file: !6, line: 1066, type: !410, isLocal: true, isDefinition: true, scopeLine: 1067, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*)* @fileio_isatty, variables: !759)
!759 = !{!760, !761, !762}
!760 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !758, file: !6, line: 1066, type: !4)
!761 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !758, file: !6, line: 1068, type: !21)
!762 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !763, file: !6, line: 1072, type: !461)
!763 = distinct !DILexicalBlock(scope: !758, file: !6, line: 1072, column: 5)
!764 = !DISubprogram(name: "fileio_dealloc_warn", scope: !6, file: !6, line: 76, type: !448, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*, %struct._object*)* @fileio_dealloc_warn, variables: !765)
!765 = !{!766, !767, !768, !771, !772}
!766 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !764, file: !6, line: 76, type: !4)
!767 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "source", arg: 2, scope: !764, file: !6, line: 76, type: !43)
!768 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exc", scope: !769, file: !6, line: 79, type: !43)
!769 = distinct !DILexicalBlock(scope: !770, file: !6, line: 78, column: 41)
!770 = distinct !DILexicalBlock(scope: !764, file: !6, line: 78, column: 9)
!771 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !769, file: !6, line: 79, type: !43)
!772 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tb", scope: !769, file: !6, line: 79, type: !43)
!773 = !DISubprogram(name: "fileio_getstate", scope: !6, file: !6, line: 1079, type: !410, isLocal: true, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*)* @fileio_getstate, variables: !774)
!774 = !{!775}
!775 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !773, file: !6, line: 1079, type: !4)
!776 = !DISubprogram(name: "get_closed", scope: !6, file: !6, line: 1193, type: !777, isLocal: true, isDefinition: true, scopeLine: 1194, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*, i8*)* @get_closed, variables: !779)
!777 = !DISubroutineType(types: !778)
!778 = !{!43, !4, !95}
!779 = !{!780, !781}
!780 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !776, file: !6, line: 1193, type: !4)
!781 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !776, file: !6, line: 1193, type: !95)
!782 = !DISubprogram(name: "get_closefd", scope: !6, file: !6, line: 1199, type: !777, isLocal: true, isDefinition: true, scopeLine: 1200, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*, i8*)* @get_closefd, variables: !783)
!783 = !{!784, !785}
!784 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !782, file: !6, line: 1199, type: !4)
!785 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !782, file: !6, line: 1199, type: !95)
!786 = !DISubprogram(name: "get_mode", scope: !6, file: !6, line: 1205, type: !777, isLocal: true, isDefinition: true, scopeLine: 1206, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*, i8*)* @get_mode, variables: !787)
!787 = !{!788, !789}
!788 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !786, file: !6, line: 1205, type: !4)
!789 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !786, file: !6, line: 1205, type: !95)
!790 = !DISubprogram(name: "fileio_init", scope: !6, file: !6, line: 214, type: !217, isLocal: true, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*, %struct._object*)* @fileio_init, variables: !791)
!791 = !{!792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !811, !817, !819, !823, !825, !828, !830, !832}
!792 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "oself", arg: 1, scope: !790, file: !6, line: 214, type: !43)
!793 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !790, file: !6, line: 214, type: !43)
!794 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !790, file: !6, line: 214, type: !43)
!795 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !790, file: !6, line: 216, type: !4)
!796 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !790, file: !6, line: 218, type: !33)
!797 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nameobj", scope: !790, file: !6, line: 219, type: !43)
!798 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stringobj", scope: !790, file: !6, line: 219, type: !43)
!799 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "opener", scope: !790, file: !6, line: 219, type: !43)
!800 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !790, file: !6, line: 220, type: !57)
!801 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !790, file: !6, line: 221, type: !57)
!802 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !790, file: !6, line: 225, type: !49)
!803 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rwa", scope: !790, file: !6, line: 226, type: !49)
!804 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "plus", scope: !790, file: !6, line: 226, type: !49)
!805 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "flags", scope: !790, file: !6, line: 227, type: !49)
!806 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !790, file: !6, line: 228, type: !49)
!807 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "closefd", scope: !790, file: !6, line: 229, type: !49)
!808 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd_is_own", scope: !790, file: !6, line: 230, type: !49)
!809 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_flag_works", scope: !790, file: !6, line: 232, type: !810)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!811 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !812, file: !6, line: 378, type: !461)
!812 = distinct !DILexicalBlock(scope: !813, file: !6, line: 378, column: 13)
!813 = distinct !DILexicalBlock(scope: !814, file: !6, line: 377, column: 42)
!814 = distinct !DILexicalBlock(scope: !815, file: !6, line: 377, column: 13)
!815 = distinct !DILexicalBlock(scope: !816, file: !6, line: 368, column: 10)
!816 = distinct !DILexicalBlock(scope: !790, file: !6, line: 362, column: 9)
!817 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdobj", scope: !818, file: !6, line: 389, type: !43)
!818 = distinct !DILexicalBlock(scope: !814, file: !6, line: 388, column: 14)
!819 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !820, file: !6, line: 400, type: !43)
!820 = distinct !DILexicalBlock(scope: !821, file: !6, line: 400, column: 20)
!821 = distinct !DILexicalBlock(scope: !822, file: !6, line: 399, column: 88)
!822 = distinct !DILexicalBlock(scope: !818, file: !6, line: 399, column: 17)
!823 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !824, file: !6, line: 407, type: !43)
!824 = distinct !DILexicalBlock(scope: !818, file: !6, line: 407, column: 16)
!825 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !826, file: !6, line: 439, type: !43)
!826 = distinct !DILexicalBlock(scope: !827, file: !6, line: 435, column: 26)
!827 = distinct !DILexicalBlock(scope: !790, file: !6, line: 435, column: 9)
!828 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !829, file: !6, line: 442, type: !43)
!829 = distinct !DILexicalBlock(scope: !826, file: !6, line: 442, column: 12)
!830 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !831, file: !6, line: 455, type: !43)
!831 = distinct !DILexicalBlock(scope: !790, file: !6, line: 455, column: 8)
!832 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !833, file: !6, line: 455, type: !43)
!833 = distinct !DILexicalBlock(scope: !834, file: !6, line: 455, column: 113)
!834 = distinct !DILexicalBlock(scope: !835, file: !6, line: 455, column: 82)
!835 = distinct !DILexicalBlock(scope: !831, file: !6, line: 455, column: 59)
!836 = !DISubprogram(name: "check_fd", scope: !6, file: !6, line: 192, type: !837, isLocal: true, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @check_fd, variables: !839)
!837 = !DISubroutineType(types: !838)
!838 = !{!49, !49}
!839 = !{!840, !841, !842, !845, !846, !848}
!840 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !836, file: !6, line: 192, type: !49)
!841 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !836, file: !6, line: 195, type: !554)
!842 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exc", scope: !843, file: !6, line: 197, type: !43)
!843 = distinct !DILexicalBlock(scope: !844, file: !6, line: 196, column: 71)
!844 = distinct !DILexicalBlock(scope: !836, file: !6, line: 196, column: 9)
!845 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msg", scope: !843, file: !6, line: 198, type: !57)
!846 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !847, file: !6, line: 202, type: !43)
!847 = distinct !DILexicalBlock(scope: !843, file: !6, line: 202, column: 12)
!848 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !849, file: !6, line: 202, type: !43)
!849 = distinct !DILexicalBlock(scope: !850, file: !6, line: 202, column: 99)
!850 = distinct !DILexicalBlock(scope: !847, file: !6, line: 202, column: 65)
!851 = !DISubprogram(name: "dircheck", scope: !6, file: !6, line: 176, type: !852, isLocal: true, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.fileio*, %struct._object*)* @dircheck, variables: !854)
!852 = !DISubroutineType(types: !853)
!853 = !{!49, !4, !43}
!854 = !{!855, !856, !857}
!855 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !851, file: !6, line: 176, type: !4)
!856 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nameobj", arg: 2, scope: !851, file: !6, line: 176, type: !43)
!857 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !851, file: !6, line: 179, type: !554)
!858 = !DISubprogram(name: "fileio_new", scope: !6, file: !6, line: 150, type: !859, isLocal: true, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @fileio_new, variables: !863)
!859 = !DISubroutineType(types: !860)
!860 = !{!43, !861, !43, !43}
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64, align: 64)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !11, line: 422, baseType: !24)
!863 = !{!864, !865, !866, !867}
!864 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !858, file: !6, line: 150, type: !861)
!865 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !858, file: !6, line: 150, type: !43)
!866 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !858, file: !6, line: 150, type: !43)
!867 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !858, file: !6, line: 152, type: !4)
!868 = !{!869, !870, !878, !882, !887, !891, !895, !899, !903, !907, !911, !912, !913, !917, !921, !925, !929, !933, !937, !942, !947}
!869 = !DIGlobalVariable(name: "PyFileIO_Type", scope: !0, file: !6, line: 1223, type: !862, isLocal: false, isDefinition: true, variable: { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFileIO_Type)
!870 = !DIGlobalVariable(name: "PyId_name", scope: !0, file: !6, line: 62, type: !871, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyId_name)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !11, line: 144, baseType: !872)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !11, line: 140, size: 192, align: 64, elements: !873)
!873 = !{!874, !876, !877}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !872, file: !11, line: 141, baseType: !875, size: 64, align: 64)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64, align: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !872, file: !11, line: 142, baseType: !33, size: 64, align: 64, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !872, file: !11, line: 143, baseType: !43, size: 64, align: 64, offset: 128)
!878 = !DIGlobalVariable(name: "fileio_doc", scope: !0, file: !6, line: 1087, type: !879, isLocal: true, isDefinition: true, variable: [845 x i8]* @fileio_doc)
!879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 6760, align: 8, elements: !880)
!880 = !{!881}
!881 = !DISubrange(count: 845)
!882 = !DIGlobalVariable(name: "fileio_methods", scope: !0, file: !6, line: 1169, type: !883, isLocal: true, isDefinition: true, variable: [16 x %struct.PyMethodDef]* @fileio_methods)
!883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !884, size: 4096, align: 64, elements: !885)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !287, line: 47, baseType: !286)
!885 = !{!886}
!886 = !DISubrange(count: 16)
!887 = !DIGlobalVariable(name: "read_doc", scope: !0, file: !6, line: 1102, type: !888, isLocal: true, isDefinition: true, variable: [232 x i8]* @read_doc)
!888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 1856, align: 8, elements: !889)
!889 = !{!890}
!890 = !DISubrange(count: 232)
!891 = !DIGlobalVariable(name: "readall_doc", scope: !0, file: !6, line: 1109, type: !892, isLocal: true, isDefinition: true, variable: [199 x i8]* @readall_doc)
!892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 1592, align: 8, elements: !893)
!893 = !{!894}
!894 = !DISubrange(count: 199)
!895 = !DIGlobalVariable(name: "readinto_doc", scope: !0, file: !6, line: 1148, type: !896, isLocal: true, isDefinition: true, variable: [44 x i8]* @readinto_doc)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 352, align: 8, elements: !897)
!897 = !{!898}
!898 = !DISubrange(count: 44)
!899 = !DIGlobalVariable(name: "write_doc", scope: !0, file: !6, line: 1115, type: !900, isLocal: true, isDefinition: true, variable: [189 x i8]* @write_doc)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 1512, align: 8, elements: !901)
!901 = !{!902}
!902 = !DISubrange(count: 189)
!903 = !DIGlobalVariable(name: "seek_doc", scope: !0, file: !6, line: 1126, type: !904, isLocal: true, isDefinition: true, variable: [439 x i8]* @seek_doc)
!904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 3512, align: 8, elements: !905)
!905 = !{!906}
!906 = !DISubrange(count: 439)
!907 = !DIGlobalVariable(name: "tell_doc", scope: !0, file: !6, line: 1145, type: !908, isLocal: true, isDefinition: true, variable: [38 x i8]* @tell_doc)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 304, align: 8, elements: !909)
!909 = !{!910}
!910 = !DISubrange(count: 38)
!911 = !DIGlobalVariable(name: "truncate_doc", scope: !0, file: !6, line: 1138, type: !892, isLocal: true, isDefinition: true, variable: [199 x i8]* @truncate_doc)
!912 = !DIGlobalVariable(name: "PyId_close", scope: !718, file: !6, line: 129, type: !871, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @fileio_close.PyId_close)
!913 = !DIGlobalVariable(name: "close_doc", scope: !0, file: !6, line: 1151, type: !914, isLocal: true, isDefinition: true, variable: [172 x i8]* @close_doc)
!914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 1376, align: 8, elements: !915)
!915 = !{!916}
!916 = !DISubrange(count: 172)
!917 = !DIGlobalVariable(name: "seekable_doc", scope: !0, file: !6, line: 1160, type: !918, isLocal: true, isDefinition: true, variable: [58 x i8]* @seekable_doc)
!918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 464, align: 8, elements: !919)
!919 = !{!920}
!920 = !DISubrange(count: 58)
!921 = !DIGlobalVariable(name: "readable_doc", scope: !0, file: !6, line: 1163, type: !922, isLocal: true, isDefinition: true, variable: [61 x i8]* @readable_doc)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 488, align: 8, elements: !923)
!923 = !{!924}
!924 = !DISubrange(count: 61)
!925 = !DIGlobalVariable(name: "writable_doc", scope: !0, file: !6, line: 1166, type: !926, isLocal: true, isDefinition: true, variable: [62 x i8]* @writable_doc)
!926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 496, align: 8, elements: !927)
!927 = !{!928}
!928 = !DISubrange(count: 62)
!929 = !DIGlobalVariable(name: "fileno_doc", scope: !0, file: !6, line: 1121, type: !930, isLocal: true, isDefinition: true, variable: [108 x i8]* @fileno_doc)
!930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 864, align: 8, elements: !931)
!931 = !{!932}
!932 = !DISubrange(count: 108)
!933 = !DIGlobalVariable(name: "isatty_doc", scope: !0, file: !6, line: 1157, type: !934, isLocal: true, isDefinition: true, variable: [66 x i8]* @isatty_doc)
!934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 528, align: 8, elements: !935)
!935 = !{!936}
!936 = !DISubrange(count: 66)
!937 = !DIGlobalVariable(name: "fileio_members", scope: !0, file: !6, line: 1218, type: !938, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMemberDef]* @fileio_members)
!938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !939, size: 640, align: 64, elements: !940)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemberDef", file: !297, line: 24, baseType: !296)
!940 = !{!941}
!941 = !DISubrange(count: 2)
!942 = !DIGlobalVariable(name: "fileio_getsetlist", scope: !0, file: !6, line: 1210, type: !943, isLocal: true, isDefinition: true, variable: [4 x %struct.PyGetSetDef]* @fileio_getsetlist)
!943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !944, size: 1280, align: 64, elements: !945)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGetSetDef", file: !307, line: 17, baseType: !306)
!945 = !{!946}
!946 = !DISubrange(count: 4)
!947 = !DIGlobalVariable(name: "kwlist", scope: !790, file: !6, line: 217, type: !948, isLocal: true, isDefinition: true, variable: [5 x i8*]* @fileio_init.kwlist)
!948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 320, align: 64, elements: !949)
!949 = !{!950}
!950 = !DISubrange(count: 5)
!951 = !{i32 2, !"Dwarf Version", i32 4}
!952 = !{i32 2, !"Debug Info Version", i32 3}
!953 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!954 = !{!955, !955, i64 0}
!955 = !{!"any pointer", !956, i64 0}
!956 = !{!"omnipotent char", !957, i64 0}
!957 = !{!"Simple C/C++ TBAA"}
!958 = !DIExpression()
!959 = !DILocation(line: 67, column: 28, scope: !393)
!960 = !DILocation(line: 69, column: 23, scope: !393)
!961 = !DILocation(line: 69, column: 13, scope: !393)
!962 = !DILocation(line: 69, column: 30, scope: !393)
!963 = !{!964, !967, i64 16}
!964 = !{!"", !965, i64 0, !967, i64 16, !967, i64 20, !967, i64 20, !967, i64 20, !967, i64 20, !967, i64 20, !967, i64 20, !956, i64 21, !955, i64 24, !955, i64 32}
!965 = !{!"_object", !966, i64 0, !955, i64 8}
!966 = !{!"long", !956, i64 0}
!967 = !{!"int", !956, i64 0}
!968 = !DILocation(line: 69, column: 33, scope: !393)
!969 = !DILocation(line: 69, column: 5, scope: !393)
!970 = !DILocation(line: 474, column: 24, scope: !396)
!971 = !DILocation(line: 476, column: 5, scope: !396)
!972 = !DILocation(line: 476, column: 11, scope: !396)
!973 = !DILocation(line: 476, column: 22, scope: !396)
!974 = !{!964, !956, i64 21}
!975 = !DILocation(line: 477, column: 41, scope: !976)
!976 = distinct !DILexicalBlock(scope: !396, file: !6, line: 477, column: 9)
!977 = !DILocation(line: 477, column: 28, scope: !976)
!978 = !DILocation(line: 477, column: 9, scope: !976)
!979 = !DILocation(line: 477, column: 47, scope: !976)
!980 = !DILocation(line: 477, column: 9, scope: !396)
!981 = !DILocation(line: 478, column: 9, scope: !976)
!982 = !DILocation(line: 479, column: 5, scope: !396)
!983 = !DILocation(line: 479, column: 10, scope: !984)
!984 = !DILexicalBlockFile(scope: !402, file: !6, discriminator: 1)
!985 = !DILocation(line: 479, column: 21, scope: !402)
!986 = !DILocation(line: 479, column: 40, scope: !402)
!987 = !DILocation(line: 479, column: 26, scope: !402)
!988 = !DILocation(line: 479, column: 45, scope: !402)
!989 = !DILocation(line: 479, column: 64, scope: !402)
!990 = !DILocation(line: 479, column: 89, scope: !991)
!991 = !DILexicalBlockFile(scope: !992, file: !6, discriminator: 2)
!992 = distinct !DILexicalBlock(scope: !402, file: !6, line: 479, column: 67)
!993 = !DILocation(line: 479, column: 93, scope: !992)
!994 = !DILocation(line: 479, column: 96, scope: !992)
!995 = !{!996, !966, i64 16}
!996 = !{!"", !955, i64 0, !955, i64 8, !966, i64 16}
!997 = !DILocation(line: 479, column: 104, scope: !992)
!998 = !DILocation(line: 479, column: 131, scope: !992)
!999 = !DILocation(line: 479, column: 70, scope: !992)
!1000 = !DILocation(line: 479, column: 74, scope: !992)
!1001 = !DILocation(line: 479, column: 77, scope: !992)
!1002 = !DILocation(line: 479, column: 85, scope: !992)
!1003 = !DILocation(line: 479, column: 160, scope: !992)
!1004 = !DILocation(line: 479, column: 160, scope: !1005)
!1005 = !DILexicalBlockFile(scope: !992, file: !6, discriminator: 3)
!1006 = !DILocation(line: 479, column: 201, scope: !1007)
!1007 = !DILexicalBlockFile(scope: !402, file: !6, discriminator: 4)
!1008 = !DILocation(line: 479, column: 204, scope: !402)
!1009 = !DILocation(line: 479, column: 207, scope: !402)
!1010 = !{!996, !955, i64 0}
!1011 = !DILocation(line: 479, column: 173, scope: !402)
!1012 = !DILocation(line: 479, column: 176, scope: !402)
!1013 = !DILocation(line: 479, column: 179, scope: !402)
!1014 = !{!996, !955, i64 8}
!1015 = !DILocation(line: 479, column: 188, scope: !402)
!1016 = !DILocation(line: 479, column: 191, scope: !402)
!1017 = !DILocation(line: 479, column: 199, scope: !402)
!1018 = !DILocation(line: 479, column: 244, scope: !402)
!1019 = !DILocation(line: 479, column: 247, scope: !402)
!1020 = !DILocation(line: 479, column: 250, scope: !402)
!1021 = !DILocation(line: 479, column: 216, scope: !402)
!1022 = !DILocation(line: 479, column: 219, scope: !402)
!1023 = !DILocation(line: 479, column: 222, scope: !402)
!1024 = !DILocation(line: 479, column: 231, scope: !402)
!1025 = !DILocation(line: 479, column: 234, scope: !402)
!1026 = !DILocation(line: 479, column: 242, scope: !402)
!1027 = !DILocation(line: 479, column: 259, scope: !402)
!1028 = !DILocation(line: 479, column: 262, scope: !402)
!1029 = !DILocation(line: 479, column: 265, scope: !402)
!1030 = !DILocation(line: 479, column: 273, scope: !402)
!1031 = !DILocation(line: 479, column: 287, scope: !396)
!1032 = !DILocation(line: 479, column: 287, scope: !402)
!1033 = !DILocation(line: 480, column: 9, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !396, file: !6, line: 480, column: 9)
!1035 = !DILocation(line: 480, column: 15, scope: !1034)
!1036 = !{!964, !955, i64 24}
!1037 = !DILocation(line: 480, column: 27, scope: !1034)
!1038 = !DILocation(line: 480, column: 9, scope: !396)
!1039 = !DILocation(line: 481, column: 45, scope: !1034)
!1040 = !DILocation(line: 481, column: 32, scope: !1034)
!1041 = !DILocation(line: 481, column: 9, scope: !1034)
!1042 = !DILocation(line: 482, column: 5, scope: !396)
!1043 = !DILocation(line: 482, column: 10, scope: !1044)
!1044 = !DILexicalBlockFile(scope: !404, file: !6, discriminator: 1)
!1045 = !DILocation(line: 482, column: 20, scope: !404)
!1046 = !DILocation(line: 482, column: 43, scope: !404)
!1047 = !DILocation(line: 482, column: 49, scope: !404)
!1048 = !{!964, !955, i64 32}
!1049 = !DILocation(line: 482, column: 60, scope: !408)
!1050 = !DILocation(line: 482, column: 68, scope: !408)
!1051 = !DILocation(line: 482, column: 60, scope: !404)
!1052 = !DILocation(line: 482, column: 86, scope: !1053)
!1053 = !DILexicalBlockFile(scope: !407, file: !6, discriminator: 2)
!1054 = !DILocation(line: 482, column: 92, scope: !407)
!1055 = !DILocation(line: 482, column: 98, scope: !407)
!1056 = !DILocation(line: 482, column: 112, scope: !407)
!1057 = !DILocation(line: 482, column: 117, scope: !1058)
!1058 = !DILexicalBlockFile(scope: !406, file: !6, discriminator: 4)
!1059 = !DILocation(line: 482, column: 127, scope: !406)
!1060 = !DILocation(line: 482, column: 157, scope: !406)
!1061 = !DILocation(line: 482, column: 175, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !406, file: !6, line: 482, column: 172)
!1063 = !DILocation(line: 482, column: 192, scope: !1062)
!1064 = !DILocation(line: 482, column: 172, scope: !1062)
!1065 = !{!965, !966, i64 0}
!1066 = !DILocation(line: 482, column: 202, scope: !1062)
!1067 = !DILocation(line: 482, column: 172, scope: !406)
!1068 = !DILocation(line: 482, column: 172, scope: !1069)
!1069 = !DILexicalBlockFile(scope: !406, file: !6, discriminator: 5)
!1070 = !DILocation(line: 482, column: 233, scope: !1071)
!1071 = !DILexicalBlockFile(scope: !1062, file: !6, discriminator: 6)
!1072 = !DILocation(line: 482, column: 251, scope: !1062)
!1073 = !{!965, !955, i64 8}
!1074 = !DILocation(line: 482, column: 261, scope: !1062)
!1075 = !{!1076, !955, i64 48}
!1076 = !{!"_typeobject", !1077, i64 0, !955, i64 24, !966, i64 32, !966, i64 40, !955, i64 48, !955, i64 56, !955, i64 64, !955, i64 72, !955, i64 80, !955, i64 88, !955, i64 96, !955, i64 104, !955, i64 112, !955, i64 120, !955, i64 128, !955, i64 136, !955, i64 144, !955, i64 152, !955, i64 160, !966, i64 168, !955, i64 176, !955, i64 184, !955, i64 192, !955, i64 200, !966, i64 208, !955, i64 216, !955, i64 224, !955, i64 232, !955, i64 240, !955, i64 248, !955, i64 256, !955, i64 264, !955, i64 272, !955, i64 280, !966, i64 288, !955, i64 296, !955, i64 304, !955, i64 312, !955, i64 320, !955, i64 328, !955, i64 336, !955, i64 344, !955, i64 352, !955, i64 360, !955, i64 368, !955, i64 376, !967, i64 384, !955, i64 392}
!1077 = !{!"", !965, i64 0, !966, i64 16}
!1078 = !DILocation(line: 482, column: 286, scope: !1062)
!1079 = !DILocation(line: 482, column: 217, scope: !1062)
!1080 = !DILocation(line: 482, column: 305, scope: !1081)
!1081 = !DILexicalBlockFile(scope: !407, file: !6, discriminator: 7)
!1082 = !DILocation(line: 482, column: 305, scope: !406)
!1083 = !DILocation(line: 482, column: 305, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !406, file: !6, discriminator: 8)
!1085 = !DILocation(line: 482, column: 318, scope: !1086)
!1086 = !DILexicalBlockFile(scope: !407, file: !6, discriminator: 9)
!1087 = !DILocation(line: 482, column: 320, scope: !1088)
!1088 = !DILexicalBlockFile(scope: !1089, file: !6, discriminator: 10)
!1089 = !DILexicalBlockFile(scope: !396, file: !6, discriminator: 3)
!1090 = !DILocation(line: 482, column: 320, scope: !404)
!1091 = !DILocation(line: 483, column: 19, scope: !396)
!1092 = !DILocation(line: 483, column: 7, scope: !396)
!1093 = !DILocation(line: 483, column: 27, scope: !396)
!1094 = !DILocation(line: 483, column: 37, scope: !396)
!1095 = !{!1076, !955, i64 320}
!1096 = !DILocation(line: 483, column: 57, scope: !396)
!1097 = !DILocation(line: 483, column: 45, scope: !396)
!1098 = !DILocation(line: 483, column: 5, scope: !396)
!1099 = !DILocation(line: 484, column: 1, scope: !396)
!1100 = !DILocation(line: 484, column: 1, scope: !1101)
!1101 = !DILexicalBlockFile(scope: !396, file: !6, discriminator: 1)
!1102 = !DILocation(line: 1041, column: 21, scope: !409)
!1103 = !DILocation(line: 1043, column: 5, scope: !409)
!1104 = !DILocation(line: 1043, column: 15, scope: !409)
!1105 = !DILocation(line: 1043, column: 25, scope: !409)
!1106 = !DILocation(line: 1045, column: 9, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !409, file: !6, line: 1045, column: 9)
!1108 = !DILocation(line: 1045, column: 15, scope: !1107)
!1109 = !DILocation(line: 1045, column: 18, scope: !1107)
!1110 = !DILocation(line: 1045, column: 9, scope: !409)
!1111 = !DILocation(line: 1046, column: 16, scope: !1107)
!1112 = !DILocation(line: 1046, column: 9, scope: !1107)
!1113 = !DILocation(line: 1048, column: 48, scope: !409)
!1114 = !DILocation(line: 1048, column: 35, scope: !409)
!1115 = !DILocation(line: 1048, column: 15, scope: !409)
!1116 = !DILocation(line: 1048, column: 13, scope: !409)
!1117 = !DILocation(line: 1049, column: 9, scope: !419)
!1118 = !DILocation(line: 1049, column: 17, scope: !419)
!1119 = !DILocation(line: 1049, column: 9, scope: !409)
!1120 = !DILocation(line: 1050, column: 36, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !6, line: 1050, column: 13)
!1122 = distinct !DILexicalBlock(scope: !419, file: !6, line: 1049, column: 32)
!1123 = !DILocation(line: 1050, column: 13, scope: !1121)
!1124 = !DILocation(line: 1050, column: 13, scope: !1122)
!1125 = !DILocation(line: 1051, column: 13, scope: !1121)
!1126 = !DILocation(line: 1053, column: 13, scope: !1121)
!1127 = !DILocation(line: 1055, column: 36, scope: !1122)
!1128 = !DILocation(line: 1055, column: 42, scope: !1122)
!1129 = !DILocation(line: 1055, column: 58, scope: !1122)
!1130 = !DILocation(line: 1055, column: 46, scope: !1122)
!1131 = !DILocation(line: 1054, column: 15, scope: !1122)
!1132 = !DILocation(line: 1054, column: 13, scope: !1122)
!1133 = !DILocation(line: 1056, column: 5, scope: !1122)
!1134 = !DILocation(line: 1059, column: 36, scope: !418)
!1135 = !DILocation(line: 1059, column: 57, scope: !418)
!1136 = !DILocation(line: 1059, column: 45, scope: !418)
!1137 = !DILocation(line: 1058, column: 15, scope: !418)
!1138 = !DILocation(line: 1058, column: 13, scope: !418)
!1139 = !DILocation(line: 1060, column: 9, scope: !418)
!1140 = !DILocation(line: 1060, column: 14, scope: !1141)
!1141 = !DILexicalBlockFile(scope: !417, file: !6, discriminator: 1)
!1142 = !DILocation(line: 1060, column: 24, scope: !417)
!1143 = !DILocation(line: 1060, column: 54, scope: !417)
!1144 = !DILocation(line: 1060, column: 72, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !417, file: !6, line: 1060, column: 69)
!1146 = !DILocation(line: 1060, column: 89, scope: !1145)
!1147 = !DILocation(line: 1060, column: 69, scope: !1145)
!1148 = !DILocation(line: 1060, column: 99, scope: !1145)
!1149 = !DILocation(line: 1060, column: 69, scope: !417)
!1150 = !DILocation(line: 1060, column: 69, scope: !1151)
!1151 = !DILexicalBlockFile(scope: !417, file: !6, discriminator: 2)
!1152 = !DILocation(line: 1060, column: 130, scope: !1153)
!1153 = !DILexicalBlockFile(scope: !1145, file: !6, discriminator: 3)
!1154 = !DILocation(line: 1060, column: 148, scope: !1145)
!1155 = !DILocation(line: 1060, column: 158, scope: !1145)
!1156 = !DILocation(line: 1060, column: 183, scope: !1145)
!1157 = !DILocation(line: 1060, column: 114, scope: !1145)
!1158 = !DILocation(line: 1060, column: 202, scope: !1159)
!1159 = !DILexicalBlockFile(scope: !418, file: !6, discriminator: 4)
!1160 = !DILocation(line: 1060, column: 202, scope: !417)
!1161 = !DILocation(line: 1060, column: 202, scope: !1162)
!1162 = !DILexicalBlockFile(scope: !417, file: !6, discriminator: 5)
!1163 = !DILocation(line: 1062, column: 12, scope: !409)
!1164 = !DILocation(line: 1062, column: 5, scope: !409)
!1165 = !DILocation(line: 1063, column: 1, scope: !409)
!1166 = !DILocation(line: 460, column: 25, scope: !425)
!1167 = !DILocation(line: 460, column: 41, scope: !425)
!1168 = !DILocation(line: 460, column: 54, scope: !425)
!1169 = !DILocation(line: 462, column: 5, scope: !425)
!1170 = !DILocation(line: 462, column: 14, scope: !1171)
!1171 = !DILexicalBlockFile(scope: !434, file: !6, discriminator: 1)
!1172 = !DILocation(line: 462, column: 20, scope: !434)
!1173 = !DILocation(line: 462, column: 14, scope: !434)
!1174 = !DILocation(line: 462, column: 14, scope: !435)
!1175 = !DILocation(line: 462, column: 28, scope: !1176)
!1176 = !DILexicalBlockFile(scope: !433, file: !6, discriminator: 2)
!1177 = !DILocation(line: 462, column: 32, scope: !433)
!1178 = !DILocation(line: 462, column: 39, scope: !433)
!1179 = !DILocation(line: 462, column: 58, scope: !433)
!1180 = !DILocation(line: 462, column: 64, scope: !433)
!1181 = !DILocation(line: 462, column: 71, scope: !433)
!1182 = !{!967, !967, i64 0}
!1183 = !DILocation(line: 462, column: 81, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !433, file: !6, line: 462, column: 81)
!1185 = !DILocation(line: 462, column: 81, scope: !433)
!1186 = !DILocation(line: 462, column: 94, scope: !1187)
!1187 = !DILexicalBlockFile(scope: !1184, file: !6, discriminator: 4)
!1188 = !DILocation(line: 462, column: 87, scope: !1184)
!1189 = !DILocation(line: 462, column: 100, scope: !1190)
!1190 = !DILexicalBlockFile(scope: !434, file: !6, discriminator: 5)
!1191 = !DILocation(line: 462, column: 100, scope: !1192)
!1192 = !DILexicalBlockFile(scope: !1193, file: !6, discriminator: 7)
!1193 = !DILexicalBlockFile(scope: !434, file: !6, discriminator: 6)
!1194 = !DILocation(line: 462, column: 100, scope: !433)
!1195 = !DILocation(line: 462, column: 102, scope: !1196)
!1196 = !DILexicalBlockFile(scope: !1197, file: !6, discriminator: 8)
!1197 = !DILexicalBlockFile(scope: !435, file: !6, discriminator: 3)
!1198 = !DILocation(line: 463, column: 5, scope: !425)
!1199 = !DILocation(line: 464, column: 1, scope: !425)
!1200 = !DILocation(line: 467, column: 22, scope: !436)
!1201 = !DILocation(line: 469, column: 5, scope: !436)
!1202 = !DILocation(line: 469, column: 10, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !442, file: !6, discriminator: 1)
!1204 = !DILocation(line: 469, column: 20, scope: !442)
!1205 = !DILocation(line: 469, column: 43, scope: !442)
!1206 = !DILocation(line: 469, column: 49, scope: !442)
!1207 = !DILocation(line: 469, column: 60, scope: !446)
!1208 = !DILocation(line: 469, column: 68, scope: !446)
!1209 = !DILocation(line: 469, column: 60, scope: !442)
!1210 = !DILocation(line: 469, column: 86, scope: !1211)
!1211 = !DILexicalBlockFile(scope: !445, file: !6, discriminator: 2)
!1212 = !DILocation(line: 469, column: 92, scope: !445)
!1213 = !DILocation(line: 469, column: 98, scope: !445)
!1214 = !DILocation(line: 469, column: 112, scope: !445)
!1215 = !DILocation(line: 469, column: 117, scope: !1216)
!1216 = !DILexicalBlockFile(scope: !444, file: !6, discriminator: 4)
!1217 = !DILocation(line: 469, column: 127, scope: !444)
!1218 = !DILocation(line: 469, column: 157, scope: !444)
!1219 = !DILocation(line: 469, column: 175, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !444, file: !6, line: 469, column: 172)
!1221 = !DILocation(line: 469, column: 192, scope: !1220)
!1222 = !DILocation(line: 469, column: 172, scope: !1220)
!1223 = !DILocation(line: 469, column: 202, scope: !1220)
!1224 = !DILocation(line: 469, column: 172, scope: !444)
!1225 = !DILocation(line: 469, column: 172, scope: !1226)
!1226 = !DILexicalBlockFile(scope: !444, file: !6, discriminator: 5)
!1227 = !DILocation(line: 469, column: 233, scope: !1228)
!1228 = !DILexicalBlockFile(scope: !1220, file: !6, discriminator: 6)
!1229 = !DILocation(line: 469, column: 251, scope: !1220)
!1230 = !DILocation(line: 469, column: 261, scope: !1220)
!1231 = !DILocation(line: 469, column: 286, scope: !1220)
!1232 = !DILocation(line: 469, column: 217, scope: !1220)
!1233 = !DILocation(line: 469, column: 305, scope: !1234)
!1234 = !DILexicalBlockFile(scope: !445, file: !6, discriminator: 7)
!1235 = !DILocation(line: 469, column: 305, scope: !444)
!1236 = !DILocation(line: 469, column: 305, scope: !1237)
!1237 = !DILexicalBlockFile(scope: !444, file: !6, discriminator: 8)
!1238 = !DILocation(line: 469, column: 318, scope: !1239)
!1239 = !DILexicalBlockFile(scope: !445, file: !6, discriminator: 9)
!1240 = !DILocation(line: 469, column: 320, scope: !1241)
!1241 = !DILexicalBlockFile(scope: !1242, file: !6, discriminator: 10)
!1242 = !DILexicalBlockFile(scope: !436, file: !6, discriminator: 3)
!1243 = !DILocation(line: 469, column: 320, scope: !442)
!1244 = !DILocation(line: 470, column: 5, scope: !436)
!1245 = !DILocation(line: 214, column: 23, scope: !790)
!1246 = !DILocation(line: 214, column: 40, scope: !790)
!1247 = !DILocation(line: 214, column: 56, scope: !790)
!1248 = !DILocation(line: 216, column: 5, scope: !790)
!1249 = !DILocation(line: 216, column: 13, scope: !790)
!1250 = !DILocation(line: 216, column: 31, scope: !790)
!1251 = !DILocation(line: 216, column: 20, scope: !790)
!1252 = !DILocation(line: 218, column: 5, scope: !790)
!1253 = !DILocation(line: 218, column: 17, scope: !790)
!1254 = !DILocation(line: 219, column: 5, scope: !790)
!1255 = !DILocation(line: 219, column: 15, scope: !790)
!1256 = !DILocation(line: 219, column: 25, scope: !790)
!1257 = !DILocation(line: 219, column: 50, scope: !790)
!1258 = !DILocation(line: 220, column: 5, scope: !790)
!1259 = !DILocation(line: 220, column: 11, scope: !790)
!1260 = !DILocation(line: 221, column: 5, scope: !790)
!1261 = !DILocation(line: 221, column: 11, scope: !790)
!1262 = !DILocation(line: 225, column: 5, scope: !790)
!1263 = !DILocation(line: 225, column: 9, scope: !790)
!1264 = !DILocation(line: 226, column: 5, scope: !790)
!1265 = !DILocation(line: 226, column: 9, scope: !790)
!1266 = !DILocation(line: 226, column: 18, scope: !790)
!1267 = !DILocation(line: 227, column: 5, scope: !790)
!1268 = !DILocation(line: 227, column: 9, scope: !790)
!1269 = !DILocation(line: 228, column: 5, scope: !790)
!1270 = !DILocation(line: 228, column: 9, scope: !790)
!1271 = !DILocation(line: 229, column: 5, scope: !790)
!1272 = !DILocation(line: 229, column: 9, scope: !790)
!1273 = !DILocation(line: 230, column: 5, scope: !790)
!1274 = !DILocation(line: 230, column: 9, scope: !790)
!1275 = !DILocation(line: 232, column: 5, scope: !790)
!1276 = !DILocation(line: 232, column: 10, scope: !790)
!1277 = !DILocation(line: 238, column: 9, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !790, file: !6, line: 238, column: 9)
!1279 = !DILocation(line: 238, column: 15, scope: !1278)
!1280 = !DILocation(line: 238, column: 18, scope: !1278)
!1281 = !DILocation(line: 238, column: 9, scope: !790)
!1282 = !DILocation(line: 239, column: 13, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !6, line: 239, column: 13)
!1284 = distinct !DILexicalBlock(scope: !1278, file: !6, line: 238, column: 24)
!1285 = !DILocation(line: 239, column: 19, scope: !1283)
!1286 = !DILocation(line: 239, column: 13, scope: !1284)
!1287 = !DILocation(line: 241, column: 32, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !6, line: 241, column: 17)
!1289 = distinct !DILexicalBlock(scope: !1283, file: !6, line: 239, column: 28)
!1290 = !DILocation(line: 241, column: 17, scope: !1288)
!1291 = !DILocation(line: 241, column: 38, scope: !1288)
!1292 = !DILocation(line: 241, column: 17, scope: !1289)
!1293 = !DILocation(line: 242, column: 17, scope: !1288)
!1294 = !DILocation(line: 243, column: 9, scope: !1289)
!1295 = !DILocation(line: 245, column: 13, scope: !1283)
!1296 = !DILocation(line: 245, column: 19, scope: !1283)
!1297 = !DILocation(line: 245, column: 22, scope: !1283)
!1298 = !DILocation(line: 246, column: 5, scope: !1284)
!1299 = !DILocation(line: 248, column: 45, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !790, file: !6, line: 248, column: 9)
!1301 = !DILocation(line: 248, column: 51, scope: !1300)
!1302 = !DILocation(line: 248, column: 10, scope: !1300)
!1303 = !DILocation(line: 248, column: 9, scope: !790)
!1304 = !DILocation(line: 251, column: 9, scope: !1300)
!1305 = !DILocation(line: 253, column: 24, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !790, file: !6, line: 253, column: 9)
!1307 = !DILocation(line: 253, column: 35, scope: !1306)
!1308 = !DILocation(line: 253, column: 44, scope: !1306)
!1309 = !DILocation(line: 253, column: 63, scope: !1306)
!1310 = !DILocation(line: 253, column: 97, scope: !1311)
!1311 = !DILexicalBlockFile(scope: !1306, file: !6, discriminator: 1)
!1312 = !DILocation(line: 253, column: 108, scope: !1306)
!1313 = !DILocation(line: 253, column: 66, scope: !1306)
!1314 = !DILocation(line: 253, column: 9, scope: !790)
!1315 = !DILocation(line: 254, column: 25, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1306, file: !6, line: 253, column: 137)
!1317 = !DILocation(line: 254, column: 9, scope: !1316)
!1318 = !DILocation(line: 256, column: 9, scope: !1316)
!1319 = !DILocation(line: 259, column: 24, scope: !790)
!1320 = !DILocation(line: 259, column: 10, scope: !790)
!1321 = !DILocation(line: 259, column: 8, scope: !790)
!1322 = !DILocation(line: 260, column: 9, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !790, file: !6, line: 260, column: 9)
!1324 = !DILocation(line: 260, column: 12, scope: !1323)
!1325 = !DILocation(line: 260, column: 9, scope: !790)
!1326 = !DILocation(line: 261, column: 14, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !6, line: 261, column: 13)
!1328 = distinct !DILexicalBlock(scope: !1323, file: !6, line: 260, column: 17)
!1329 = !DILocation(line: 261, column: 13, scope: !1328)
!1330 = !DILocation(line: 262, column: 29, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1327, file: !6, line: 261, column: 32)
!1332 = !DILocation(line: 262, column: 13, scope: !1331)
!1333 = !DILocation(line: 264, column: 13, scope: !1331)
!1334 = !DILocation(line: 266, column: 9, scope: !1328)
!1335 = !DILocation(line: 267, column: 5, scope: !1328)
!1336 = !DILocation(line: 282, column: 9, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !790, file: !6, line: 282, column: 9)
!1338 = !DILocation(line: 282, column: 12, scope: !1337)
!1339 = !DILocation(line: 282, column: 9, scope: !790)
!1340 = !DILocation(line: 284, column: 36, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !6, line: 284, column: 13)
!1342 = distinct !DILexicalBlock(scope: !1337, file: !6, line: 283, column: 5)
!1343 = !DILocation(line: 284, column: 45, scope: !1341)
!1344 = !DILocation(line: 284, column: 14, scope: !1341)
!1345 = !DILocation(line: 284, column: 13, scope: !1342)
!1346 = !DILocation(line: 285, column: 13, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1341, file: !6, line: 284, column: 58)
!1348 = !DILocation(line: 287, column: 51, scope: !1342)
!1349 = !DILocation(line: 287, column: 33, scope: !1342)
!1350 = !DILocation(line: 287, column: 64, scope: !1342)
!1351 = !DILocation(line: 287, column: 31, scope: !1342)
!1352 = !DILocation(line: 287, column: 14, scope: !1342)
!1353 = !DILocation(line: 288, column: 5, scope: !1342)
!1354 = !DILocation(line: 290, column: 9, scope: !790)
!1355 = !DILocation(line: 290, column: 7, scope: !790)
!1356 = !DILocation(line: 291, column: 5, scope: !790)
!1357 = !DILocation(line: 291, column: 13, scope: !1358)
!1358 = !DILexicalBlockFile(scope: !1359, file: !6, discriminator: 2)
!1359 = !DILexicalBlockFile(scope: !790, file: !6, discriminator: 1)
!1360 = !DILocation(line: 291, column: 12, scope: !790)
!1361 = !{!956, !956, i64 0}
!1362 = !DILocation(line: 292, column: 19, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !790, file: !6, line: 291, column: 16)
!1364 = !DILocation(line: 292, column: 17, scope: !1363)
!1365 = !DILocation(line: 292, column: 9, scope: !1363)
!1366 = !DILocation(line: 294, column: 17, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !6, line: 294, column: 17)
!1368 = distinct !DILexicalBlock(scope: !1363, file: !6, line: 292, column: 23)
!1369 = !DILocation(line: 294, column: 17, scope: !1368)
!1370 = !DILocation(line: 294, column: 22, scope: !1371)
!1371 = !DILexicalBlockFile(scope: !1367, file: !6, discriminator: 1)
!1372 = !DILocation(line: 296, column: 33, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1367, file: !6, line: 294, column: 22)
!1374 = !DILocation(line: 296, column: 17, scope: !1373)
!1375 = !DILocation(line: 299, column: 17, scope: !1373)
!1376 = !DILocation(line: 301, column: 17, scope: !1368)
!1377 = !DILocation(line: 302, column: 13, scope: !1368)
!1378 = !DILocation(line: 302, column: 19, scope: !1368)
!1379 = !DILocation(line: 302, column: 27, scope: !1368)
!1380 = !DILocation(line: 303, column: 13, scope: !1368)
!1381 = !DILocation(line: 303, column: 19, scope: !1368)
!1382 = !DILocation(line: 303, column: 28, scope: !1368)
!1383 = !DILocation(line: 304, column: 19, scope: !1368)
!1384 = !DILocation(line: 305, column: 13, scope: !1368)
!1385 = !DILocation(line: 307, column: 17, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1368, file: !6, line: 307, column: 17)
!1387 = !DILocation(line: 307, column: 17, scope: !1368)
!1388 = !DILocation(line: 308, column: 17, scope: !1386)
!1389 = !DILocation(line: 309, column: 17, scope: !1368)
!1390 = !DILocation(line: 310, column: 13, scope: !1368)
!1391 = !DILocation(line: 310, column: 19, scope: !1368)
!1392 = !DILocation(line: 310, column: 28, scope: !1368)
!1393 = !DILocation(line: 311, column: 13, scope: !1368)
!1394 = !DILocation(line: 313, column: 17, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1368, file: !6, line: 313, column: 17)
!1396 = !DILocation(line: 313, column: 17, scope: !1368)
!1397 = !DILocation(line: 314, column: 17, scope: !1395)
!1398 = !DILocation(line: 315, column: 17, scope: !1368)
!1399 = !DILocation(line: 316, column: 13, scope: !1368)
!1400 = !DILocation(line: 316, column: 19, scope: !1368)
!1401 = !DILocation(line: 316, column: 28, scope: !1368)
!1402 = !DILocation(line: 317, column: 19, scope: !1368)
!1403 = !DILocation(line: 318, column: 13, scope: !1368)
!1404 = !DILocation(line: 320, column: 17, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1368, file: !6, line: 320, column: 17)
!1406 = !DILocation(line: 320, column: 17, scope: !1368)
!1407 = !DILocation(line: 321, column: 17, scope: !1405)
!1408 = !DILocation(line: 322, column: 17, scope: !1368)
!1409 = !DILocation(line: 323, column: 13, scope: !1368)
!1410 = !DILocation(line: 323, column: 19, scope: !1368)
!1411 = !DILocation(line: 323, column: 28, scope: !1368)
!1412 = !DILocation(line: 324, column: 13, scope: !1368)
!1413 = !DILocation(line: 324, column: 19, scope: !1368)
!1414 = !DILocation(line: 324, column: 29, scope: !1368)
!1415 = !DILocation(line: 325, column: 19, scope: !1368)
!1416 = !DILocation(line: 326, column: 13, scope: !1368)
!1417 = !DILocation(line: 330, column: 17, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1368, file: !6, line: 330, column: 17)
!1419 = !DILocation(line: 330, column: 17, scope: !1368)
!1420 = !DILocation(line: 331, column: 17, scope: !1418)
!1421 = !DILocation(line: 332, column: 30, scope: !1368)
!1422 = !DILocation(line: 332, column: 36, scope: !1368)
!1423 = !DILocation(line: 332, column: 45, scope: !1368)
!1424 = !DILocation(line: 332, column: 13, scope: !1368)
!1425 = !DILocation(line: 332, column: 19, scope: !1368)
!1426 = !DILocation(line: 332, column: 28, scope: !1368)
!1427 = !DILocation(line: 333, column: 18, scope: !1368)
!1428 = !DILocation(line: 334, column: 13, scope: !1368)
!1429 = !DILocation(line: 336, column: 26, scope: !1368)
!1430 = !DILocation(line: 337, column: 50, scope: !1368)
!1431 = !DILocation(line: 336, column: 13, scope: !1368)
!1432 = !DILocation(line: 338, column: 13, scope: !1368)
!1433 = !DILocation(line: 342, column: 10, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !790, file: !6, line: 342, column: 9)
!1435 = !DILocation(line: 342, column: 9, scope: !790)
!1436 = !DILocation(line: 343, column: 9, scope: !1434)
!1437 = !DILocation(line: 345, column: 9, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !790, file: !6, line: 345, column: 9)
!1439 = !DILocation(line: 345, column: 15, scope: !1438)
!1440 = !DILocation(line: 345, column: 24, scope: !1438)
!1441 = !DILocation(line: 345, column: 27, scope: !1442)
!1442 = !DILexicalBlockFile(scope: !1438, file: !6, discriminator: 1)
!1443 = !DILocation(line: 345, column: 33, scope: !1438)
!1444 = !DILocation(line: 345, column: 27, scope: !1438)
!1445 = !DILocation(line: 345, column: 9, scope: !790)
!1446 = !DILocation(line: 346, column: 15, scope: !1438)
!1447 = !DILocation(line: 346, column: 9, scope: !1438)
!1448 = !DILocation(line: 347, column: 14, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1438, file: !6, line: 347, column: 14)
!1450 = !DILocation(line: 347, column: 20, scope: !1449)
!1451 = !DILocation(line: 347, column: 14, scope: !1438)
!1452 = !DILocation(line: 348, column: 15, scope: !1449)
!1453 = !DILocation(line: 348, column: 9, scope: !1449)
!1454 = !DILocation(line: 350, column: 15, scope: !1449)
!1455 = !DILocation(line: 359, column: 11, scope: !790)
!1456 = !DILocation(line: 362, column: 9, scope: !816)
!1457 = !DILocation(line: 362, column: 12, scope: !816)
!1458 = !DILocation(line: 362, column: 9, scope: !790)
!1459 = !DILocation(line: 363, column: 22, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !6, line: 363, column: 13)
!1461 = distinct !DILexicalBlock(scope: !816, file: !6, line: 362, column: 18)
!1462 = !DILocation(line: 363, column: 13, scope: !1460)
!1463 = !DILocation(line: 363, column: 13, scope: !1461)
!1464 = !DILocation(line: 364, column: 13, scope: !1460)
!1465 = !DILocation(line: 365, column: 20, scope: !1461)
!1466 = !DILocation(line: 365, column: 9, scope: !1461)
!1467 = !DILocation(line: 365, column: 15, scope: !1461)
!1468 = !DILocation(line: 365, column: 18, scope: !1461)
!1469 = !DILocation(line: 366, column: 25, scope: !1461)
!1470 = !DILocation(line: 366, column: 9, scope: !1461)
!1471 = !DILocation(line: 366, column: 15, scope: !1461)
!1472 = !DILocation(line: 366, column: 23, scope: !1461)
!1473 = !DILocation(line: 367, column: 5, scope: !1461)
!1474 = !DILocation(line: 369, column: 9, scope: !815)
!1475 = !DILocation(line: 369, column: 15, scope: !815)
!1476 = !DILocation(line: 369, column: 23, scope: !815)
!1477 = !DILocation(line: 370, column: 14, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !815, file: !6, line: 370, column: 13)
!1479 = !DILocation(line: 370, column: 13, scope: !815)
!1480 = !DILocation(line: 371, column: 29, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1478, file: !6, line: 370, column: 23)
!1482 = !DILocation(line: 371, column: 13, scope: !1481)
!1483 = !DILocation(line: 373, column: 13, scope: !1481)
!1484 = !DILocation(line: 376, column: 11, scope: !815)
!1485 = !DILocation(line: 376, column: 32, scope: !815)
!1486 = !DILocation(line: 377, column: 13, scope: !814)
!1487 = !DILocation(line: 377, column: 20, scope: !814)
!1488 = !DILocation(line: 377, column: 13, scope: !815)
!1489 = !DILocation(line: 378, column: 15, scope: !812)
!1490 = !DILocation(line: 378, column: 30, scope: !812)
!1491 = !DILocation(line: 378, column: 45, scope: !812)
!1492 = !DILocation(line: 378, column: 43, scope: !812)
!1493 = !DILocation(line: 384, column: 33, scope: !812)
!1494 = !DILocation(line: 384, column: 39, scope: !812)
!1495 = !DILocation(line: 384, column: 28, scope: !812)
!1496 = !DILocation(line: 384, column: 17, scope: !812)
!1497 = !DILocation(line: 384, column: 23, scope: !812)
!1498 = !DILocation(line: 384, column: 26, scope: !812)
!1499 = !DILocation(line: 386, column: 34, scope: !812)
!1500 = !DILocation(line: 386, column: 13, scope: !812)
!1501 = !DILocation(line: 386, column: 42, scope: !813)
!1502 = !DILocation(line: 387, column: 9, scope: !813)
!1503 = !DILocation(line: 389, column: 13, scope: !818)
!1504 = !DILocation(line: 389, column: 23, scope: !818)
!1505 = !DILocation(line: 393, column: 31, scope: !818)
!1506 = !DILocation(line: 396, column: 50, scope: !818)
!1507 = !DILocation(line: 396, column: 64, scope: !818)
!1508 = !DILocation(line: 396, column: 73, scope: !818)
!1509 = !DILocation(line: 396, column: 21, scope: !818)
!1510 = !DILocation(line: 396, column: 19, scope: !818)
!1511 = !DILocation(line: 397, column: 17, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !818, file: !6, line: 397, column: 17)
!1513 = !DILocation(line: 397, column: 23, scope: !1512)
!1514 = !DILocation(line: 397, column: 17, scope: !818)
!1515 = !DILocation(line: 398, column: 17, scope: !1512)
!1516 = !DILocation(line: 399, column: 35, scope: !822)
!1517 = !DILocation(line: 399, column: 44, scope: !822)
!1518 = !DILocation(line: 399, column: 55, scope: !822)
!1519 = !{!1076, !966, i64 168}
!1520 = !DILocation(line: 399, column: 64, scope: !822)
!1521 = !DILocation(line: 399, column: 81, scope: !822)
!1522 = !DILocation(line: 399, column: 17, scope: !818)
!1523 = !DILocation(line: 400, column: 17, scope: !821)
!1524 = !DILocation(line: 400, column: 22, scope: !1525)
!1525 = !DILexicalBlockFile(scope: !820, file: !6, discriminator: 1)
!1526 = !DILocation(line: 400, column: 32, scope: !820)
!1527 = !DILocation(line: 400, column: 62, scope: !820)
!1528 = !DILocation(line: 400, column: 78, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !820, file: !6, line: 400, column: 75)
!1530 = !DILocation(line: 400, column: 95, scope: !1529)
!1531 = !DILocation(line: 400, column: 75, scope: !1529)
!1532 = !DILocation(line: 400, column: 105, scope: !1529)
!1533 = !DILocation(line: 400, column: 75, scope: !820)
!1534 = !DILocation(line: 400, column: 75, scope: !1535)
!1535 = !DILexicalBlockFile(scope: !820, file: !6, discriminator: 2)
!1536 = !DILocation(line: 400, column: 136, scope: !1537)
!1537 = !DILexicalBlockFile(scope: !1529, file: !6, discriminator: 3)
!1538 = !DILocation(line: 400, column: 154, scope: !1529)
!1539 = !DILocation(line: 400, column: 164, scope: !1529)
!1540 = !DILocation(line: 400, column: 189, scope: !1529)
!1541 = !DILocation(line: 400, column: 120, scope: !1529)
!1542 = !DILocation(line: 400, column: 208, scope: !1543)
!1543 = !DILexicalBlockFile(scope: !821, file: !6, discriminator: 4)
!1544 = !DILocation(line: 400, column: 208, scope: !820)
!1545 = !DILocation(line: 400, column: 208, scope: !1546)
!1546 = !DILexicalBlockFile(scope: !820, file: !6, discriminator: 5)
!1547 = !DILocation(line: 401, column: 33, scope: !821)
!1548 = !DILocation(line: 401, column: 17, scope: !821)
!1549 = !DILocation(line: 403, column: 17, scope: !821)
!1550 = !DILocation(line: 406, column: 38, scope: !818)
!1551 = !DILocation(line: 406, column: 24, scope: !818)
!1552 = !DILocation(line: 406, column: 13, scope: !818)
!1553 = !DILocation(line: 406, column: 19, scope: !818)
!1554 = !DILocation(line: 406, column: 22, scope: !818)
!1555 = !DILocation(line: 407, column: 13, scope: !818)
!1556 = !DILocation(line: 407, column: 18, scope: !1557)
!1557 = !DILexicalBlockFile(scope: !824, file: !6, discriminator: 1)
!1558 = !DILocation(line: 407, column: 28, scope: !824)
!1559 = !DILocation(line: 407, column: 58, scope: !824)
!1560 = !DILocation(line: 407, column: 74, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !824, file: !6, line: 407, column: 71)
!1562 = !DILocation(line: 407, column: 91, scope: !1561)
!1563 = !DILocation(line: 407, column: 71, scope: !1561)
!1564 = !DILocation(line: 407, column: 101, scope: !1561)
!1565 = !DILocation(line: 407, column: 71, scope: !824)
!1566 = !DILocation(line: 407, column: 71, scope: !1567)
!1567 = !DILexicalBlockFile(scope: !824, file: !6, discriminator: 2)
!1568 = !DILocation(line: 407, column: 132, scope: !1569)
!1569 = !DILexicalBlockFile(scope: !1561, file: !6, discriminator: 3)
!1570 = !DILocation(line: 407, column: 150, scope: !1561)
!1571 = !DILocation(line: 407, column: 160, scope: !1561)
!1572 = !DILocation(line: 407, column: 185, scope: !1561)
!1573 = !DILocation(line: 407, column: 116, scope: !1561)
!1574 = !DILocation(line: 407, column: 204, scope: !1575)
!1575 = !DILexicalBlockFile(scope: !818, file: !6, discriminator: 4)
!1576 = !DILocation(line: 407, column: 204, scope: !824)
!1577 = !DILocation(line: 407, column: 204, scope: !1578)
!1578 = !DILexicalBlockFile(scope: !824, file: !6, discriminator: 5)
!1579 = !DILocation(line: 408, column: 17, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !818, file: !6, line: 408, column: 17)
!1581 = !DILocation(line: 408, column: 23, scope: !1580)
!1582 = !DILocation(line: 408, column: 26, scope: !1580)
!1583 = !DILocation(line: 408, column: 17, scope: !818)
!1584 = !DILocation(line: 409, column: 17, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1580, file: !6, line: 408, column: 33)
!1586 = !DILocation(line: 411, column: 9, scope: !814)
!1587 = !DILocation(line: 411, column: 9, scope: !1588)
!1588 = !DILexicalBlockFile(scope: !814, file: !6, discriminator: 1)
!1589 = !DILocation(line: 413, column: 19, scope: !815)
!1590 = !DILocation(line: 414, column: 13, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !815, file: !6, line: 414, column: 13)
!1592 = !DILocation(line: 414, column: 19, scope: !1591)
!1593 = !DILocation(line: 414, column: 22, scope: !1591)
!1594 = !DILocation(line: 414, column: 13, scope: !815)
!1595 = !DILocation(line: 415, column: 50, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1591, file: !6, line: 414, column: 27)
!1597 = !DILocation(line: 415, column: 65, scope: !1596)
!1598 = !DILocation(line: 415, column: 13, scope: !1596)
!1599 = !DILocation(line: 416, column: 13, scope: !1596)
!1600 = !DILocation(line: 420, column: 33, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !815, file: !6, line: 420, column: 13)
!1602 = !DILocation(line: 420, column: 39, scope: !1601)
!1603 = !DILocation(line: 420, column: 46, scope: !1601)
!1604 = !DILocation(line: 420, column: 13, scope: !1601)
!1605 = !DILocation(line: 420, column: 65, scope: !1601)
!1606 = !DILocation(line: 420, column: 13, scope: !815)
!1607 = !DILocation(line: 421, column: 13, scope: !1601)
!1608 = !DILocation(line: 424, column: 18, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !790, file: !6, line: 424, column: 9)
!1610 = !DILocation(line: 424, column: 24, scope: !1609)
!1611 = !DILocation(line: 424, column: 9, scope: !1609)
!1612 = !DILocation(line: 424, column: 33, scope: !1609)
!1613 = !DILocation(line: 424, column: 9, scope: !790)
!1614 = !DILocation(line: 425, column: 9, scope: !1609)
!1615 = !DILocation(line: 432, column: 41, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !790, file: !6, line: 432, column: 9)
!1617 = !DILocation(line: 432, column: 29, scope: !1616)
!1618 = !DILocation(line: 432, column: 59, scope: !1616)
!1619 = !DILocation(line: 432, column: 9, scope: !1616)
!1620 = !DILocation(line: 432, column: 68, scope: !1616)
!1621 = !DILocation(line: 432, column: 9, scope: !790)
!1622 = !DILocation(line: 433, column: 9, scope: !1616)
!1623 = !DILocation(line: 435, column: 9, scope: !827)
!1624 = !DILocation(line: 435, column: 15, scope: !827)
!1625 = !DILocation(line: 435, column: 9, scope: !790)
!1626 = !DILocation(line: 439, column: 9, scope: !826)
!1627 = !DILocation(line: 439, column: 19, scope: !826)
!1628 = !DILocation(line: 439, column: 40, scope: !826)
!1629 = !DILocation(line: 439, column: 46, scope: !826)
!1630 = !DILocation(line: 439, column: 25, scope: !826)
!1631 = !DILocation(line: 440, column: 13, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !826, file: !6, line: 440, column: 13)
!1633 = !DILocation(line: 440, column: 17, scope: !1632)
!1634 = !DILocation(line: 440, column: 13, scope: !826)
!1635 = !DILocation(line: 441, column: 13, scope: !1632)
!1636 = !DILocation(line: 442, column: 9, scope: !826)
!1637 = !DILocation(line: 442, column: 14, scope: !1638)
!1638 = !DILexicalBlockFile(scope: !829, file: !6, discriminator: 1)
!1639 = !DILocation(line: 442, column: 24, scope: !829)
!1640 = !DILocation(line: 442, column: 54, scope: !829)
!1641 = !DILocation(line: 442, column: 68, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !829, file: !6, line: 442, column: 65)
!1643 = !DILocation(line: 442, column: 85, scope: !1642)
!1644 = !DILocation(line: 442, column: 65, scope: !1642)
!1645 = !DILocation(line: 442, column: 95, scope: !1642)
!1646 = !DILocation(line: 442, column: 65, scope: !829)
!1647 = !DILocation(line: 442, column: 65, scope: !1648)
!1648 = !DILexicalBlockFile(scope: !829, file: !6, discriminator: 2)
!1649 = !DILocation(line: 442, column: 126, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1642, file: !6, discriminator: 3)
!1651 = !DILocation(line: 442, column: 144, scope: !1642)
!1652 = !DILocation(line: 442, column: 154, scope: !1642)
!1653 = !DILocation(line: 442, column: 179, scope: !1642)
!1654 = !DILocation(line: 442, column: 110, scope: !1642)
!1655 = !DILocation(line: 442, column: 198, scope: !1656)
!1656 = !DILexicalBlockFile(scope: !826, file: !6, discriminator: 4)
!1657 = !DILocation(line: 442, column: 198, scope: !829)
!1658 = !DILocation(line: 442, column: 198, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !829, file: !6, discriminator: 5)
!1660 = !DILocation(line: 443, column: 5, scope: !827)
!1661 = !DILocation(line: 443, column: 5, scope: !1662)
!1662 = !DILexicalBlockFile(scope: !827, file: !6, discriminator: 1)
!1663 = !DILocation(line: 443, column: 5, scope: !826)
!1664 = !DILocation(line: 445, column: 5, scope: !790)
!1665 = !DILocation(line: 448, column: 9, scope: !790)
!1666 = !DILocation(line: 449, column: 10, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !790, file: !6, line: 449, column: 9)
!1668 = !DILocation(line: 449, column: 9, scope: !790)
!1669 = !DILocation(line: 450, column: 9, scope: !1667)
!1670 = !DILocation(line: 450, column: 15, scope: !1667)
!1671 = !DILocation(line: 450, column: 18, scope: !1667)
!1672 = !DILocation(line: 451, column: 9, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !790, file: !6, line: 451, column: 9)
!1674 = !DILocation(line: 451, column: 15, scope: !1673)
!1675 = !DILocation(line: 451, column: 18, scope: !1673)
!1676 = !DILocation(line: 451, column: 9, scope: !790)
!1677 = !DILocation(line: 452, column: 24, scope: !1673)
!1678 = !DILocation(line: 452, column: 9, scope: !1673)
!1679 = !DILocation(line: 451, column: 21, scope: !1680)
!1680 = !DILexicalBlockFile(scope: !1673, file: !6, discriminator: 1)
!1681 = !DILocation(line: 455, column: 5, scope: !790)
!1682 = !DILocation(line: 455, column: 10, scope: !1683)
!1683 = !DILexicalBlockFile(scope: !831, file: !6, discriminator: 1)
!1684 = !DILocation(line: 455, column: 20, scope: !831)
!1685 = !DILocation(line: 455, column: 43, scope: !831)
!1686 = !DILocation(line: 455, column: 59, scope: !835)
!1687 = !DILocation(line: 455, column: 67, scope: !835)
!1688 = !DILocation(line: 455, column: 59, scope: !831)
!1689 = !DILocation(line: 455, column: 96, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !834, file: !6, discriminator: 2)
!1691 = !DILocation(line: 455, column: 110, scope: !834)
!1692 = !DILocation(line: 455, column: 115, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !833, file: !6, discriminator: 4)
!1694 = !DILocation(line: 455, column: 125, scope: !833)
!1695 = !DILocation(line: 455, column: 155, scope: !833)
!1696 = !DILocation(line: 455, column: 173, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !833, file: !6, line: 455, column: 170)
!1698 = !DILocation(line: 455, column: 190, scope: !1697)
!1699 = !DILocation(line: 455, column: 170, scope: !1697)
!1700 = !DILocation(line: 455, column: 200, scope: !1697)
!1701 = !DILocation(line: 455, column: 170, scope: !833)
!1702 = !DILocation(line: 455, column: 170, scope: !1703)
!1703 = !DILexicalBlockFile(scope: !833, file: !6, discriminator: 5)
!1704 = !DILocation(line: 455, column: 231, scope: !1705)
!1705 = !DILexicalBlockFile(scope: !1697, file: !6, discriminator: 6)
!1706 = !DILocation(line: 455, column: 249, scope: !1697)
!1707 = !DILocation(line: 455, column: 259, scope: !1697)
!1708 = !DILocation(line: 455, column: 284, scope: !1697)
!1709 = !DILocation(line: 455, column: 215, scope: !1697)
!1710 = !DILocation(line: 455, column: 303, scope: !1711)
!1711 = !DILexicalBlockFile(scope: !834, file: !6, discriminator: 7)
!1712 = !DILocation(line: 455, column: 303, scope: !833)
!1713 = !DILocation(line: 455, column: 303, scope: !1714)
!1714 = !DILexicalBlockFile(scope: !833, file: !6, discriminator: 8)
!1715 = !DILocation(line: 455, column: 316, scope: !1716)
!1716 = !DILexicalBlockFile(scope: !834, file: !6, discriminator: 9)
!1717 = !DILocation(line: 455, column: 318, scope: !1718)
!1718 = !DILexicalBlockFile(scope: !1719, file: !6, discriminator: 10)
!1719 = !DILexicalBlockFile(scope: !790, file: !6, discriminator: 3)
!1720 = !DILocation(line: 455, column: 318, scope: !831)
!1721 = !DILocation(line: 455, column: 318, scope: !1722)
!1722 = !DILexicalBlockFile(scope: !831, file: !6, discriminator: 11)
!1723 = !DILocation(line: 456, column: 12, scope: !790)
!1724 = !DILocation(line: 456, column: 5, scope: !790)
!1725 = !DILocation(line: 457, column: 1, scope: !790)
!1726 = !DILocation(line: 150, column: 26, scope: !858)
!1727 = !DILocation(line: 150, column: 42, scope: !858)
!1728 = !DILocation(line: 150, column: 58, scope: !858)
!1729 = !DILocation(line: 152, column: 5, scope: !858)
!1730 = !DILocation(line: 152, column: 13, scope: !858)
!1731 = !DILocation(line: 156, column: 23, scope: !858)
!1732 = !DILocation(line: 156, column: 29, scope: !858)
!1733 = !{!1076, !955, i64 304}
!1734 = !DILocation(line: 156, column: 38, scope: !858)
!1735 = !DILocation(line: 156, column: 12, scope: !858)
!1736 = !DILocation(line: 156, column: 10, scope: !858)
!1737 = !DILocation(line: 157, column: 9, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !858, file: !6, line: 157, column: 9)
!1739 = !DILocation(line: 157, column: 14, scope: !1738)
!1740 = !DILocation(line: 157, column: 9, scope: !858)
!1741 = !DILocation(line: 158, column: 9, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1738, file: !6, line: 157, column: 29)
!1743 = !DILocation(line: 158, column: 15, scope: !1742)
!1744 = !DILocation(line: 158, column: 18, scope: !1742)
!1745 = !DILocation(line: 159, column: 9, scope: !1742)
!1746 = !DILocation(line: 159, column: 15, scope: !1742)
!1747 = !DILocation(line: 159, column: 23, scope: !1742)
!1748 = !DILocation(line: 160, column: 9, scope: !1742)
!1749 = !DILocation(line: 160, column: 15, scope: !1742)
!1750 = !DILocation(line: 160, column: 24, scope: !1742)
!1751 = !DILocation(line: 161, column: 9, scope: !1742)
!1752 = !DILocation(line: 161, column: 15, scope: !1742)
!1753 = !DILocation(line: 161, column: 24, scope: !1742)
!1754 = !DILocation(line: 162, column: 9, scope: !1742)
!1755 = !DILocation(line: 162, column: 15, scope: !1742)
!1756 = !DILocation(line: 162, column: 25, scope: !1742)
!1757 = !DILocation(line: 163, column: 9, scope: !1742)
!1758 = !DILocation(line: 163, column: 15, scope: !1742)
!1759 = !DILocation(line: 163, column: 24, scope: !1742)
!1760 = !DILocation(line: 164, column: 9, scope: !1742)
!1761 = !DILocation(line: 164, column: 15, scope: !1742)
!1762 = !DILocation(line: 164, column: 23, scope: !1742)
!1763 = !DILocation(line: 165, column: 9, scope: !1742)
!1764 = !DILocation(line: 165, column: 15, scope: !1742)
!1765 = !DILocation(line: 165, column: 27, scope: !1742)
!1766 = !DILocation(line: 166, column: 5, scope: !1742)
!1767 = !DILocation(line: 168, column: 25, scope: !858)
!1768 = !DILocation(line: 168, column: 12, scope: !858)
!1769 = !DILocation(line: 169, column: 1, scope: !858)
!1770 = !DILocation(line: 168, column: 5, scope: !858)
!1771 = !DILocation(line: 1016, column: 21, scope: !420)
!1772 = !DILocation(line: 1018, column: 9, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !420, file: !6, line: 1018, column: 9)
!1774 = !DILocation(line: 1018, column: 15, scope: !1773)
!1775 = !DILocation(line: 1018, column: 9, scope: !420)
!1776 = !DILocation(line: 1019, column: 13, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !6, line: 1019, column: 13)
!1778 = distinct !DILexicalBlock(scope: !1773, file: !6, line: 1018, column: 24)
!1779 = !DILocation(line: 1019, column: 19, scope: !1777)
!1780 = !DILocation(line: 1019, column: 13, scope: !1778)
!1781 = !DILocation(line: 1020, column: 13, scope: !1777)
!1782 = !DILocation(line: 1022, column: 13, scope: !1777)
!1783 = !DILocation(line: 1024, column: 9, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !420, file: !6, line: 1024, column: 9)
!1785 = !DILocation(line: 1024, column: 15, scope: !1784)
!1786 = !DILocation(line: 1024, column: 9, scope: !420)
!1787 = !DILocation(line: 1025, column: 13, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !6, line: 1025, column: 13)
!1789 = distinct !DILexicalBlock(scope: !1784, file: !6, line: 1024, column: 26)
!1790 = !DILocation(line: 1025, column: 19, scope: !1788)
!1791 = !DILocation(line: 1025, column: 13, scope: !1789)
!1792 = !DILocation(line: 1026, column: 13, scope: !1788)
!1793 = !DILocation(line: 1028, column: 13, scope: !1788)
!1794 = !DILocation(line: 1030, column: 14, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1784, file: !6, line: 1030, column: 14)
!1796 = !DILocation(line: 1030, column: 20, scope: !1795)
!1797 = !DILocation(line: 1030, column: 14, scope: !1784)
!1798 = !DILocation(line: 1031, column: 13, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !6, line: 1031, column: 13)
!1800 = distinct !DILexicalBlock(scope: !1795, file: !6, line: 1030, column: 30)
!1801 = !DILocation(line: 1031, column: 19, scope: !1799)
!1802 = !DILocation(line: 1031, column: 13, scope: !1800)
!1803 = !DILocation(line: 1032, column: 13, scope: !1799)
!1804 = !DILocation(line: 1034, column: 13, scope: !1799)
!1805 = !DILocation(line: 1037, column: 9, scope: !1795)
!1806 = !DILocation(line: 1038, column: 1, scope: !420)
!1807 = !DILocation(line: 718, column: 21, scope: !447)
!1808 = !DILocation(line: 718, column: 37, scope: !447)
!1809 = !DILocation(line: 720, column: 5, scope: !447)
!1810 = !DILocation(line: 720, column: 11, scope: !447)
!1811 = !DILocation(line: 721, column: 5, scope: !447)
!1812 = !DILocation(line: 721, column: 16, scope: !447)
!1813 = !DILocation(line: 722, column: 5, scope: !447)
!1814 = !DILocation(line: 722, column: 16, scope: !447)
!1815 = !{!966, !966, i64 0}
!1816 = !DILocation(line: 723, column: 5, scope: !447)
!1817 = !DILocation(line: 723, column: 15, scope: !447)
!1818 = !DILocation(line: 725, column: 9, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !447, file: !6, line: 725, column: 9)
!1820 = !DILocation(line: 725, column: 15, scope: !1819)
!1821 = !DILocation(line: 725, column: 18, scope: !1819)
!1822 = !DILocation(line: 725, column: 9, scope: !447)
!1823 = !DILocation(line: 726, column: 16, scope: !1819)
!1824 = !DILocation(line: 726, column: 9, scope: !1819)
!1825 = !DILocation(line: 727, column: 10, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !447, file: !6, line: 727, column: 9)
!1827 = !DILocation(line: 727, column: 16, scope: !1826)
!1828 = !DILocation(line: 727, column: 9, scope: !447)
!1829 = !DILocation(line: 728, column: 16, scope: !1826)
!1830 = !DILocation(line: 728, column: 9, scope: !1826)
!1831 = !DILocation(line: 730, column: 34, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !447, file: !6, line: 730, column: 9)
!1833 = !DILocation(line: 730, column: 10, scope: !1832)
!1834 = !DILocation(line: 730, column: 9, scope: !447)
!1835 = !DILocation(line: 731, column: 9, scope: !1832)
!1836 = !DILocation(line: 733, column: 9, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !447, file: !6, line: 733, column: 9)
!1838 = !DILocation(line: 733, column: 14, scope: !1837)
!1839 = !DILocation(line: 733, column: 9, scope: !447)
!1840 = !DILocation(line: 734, column: 31, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1837, file: !6, line: 733, column: 19)
!1842 = !DILocation(line: 734, column: 16, scope: !1841)
!1843 = !DILocation(line: 734, column: 9, scope: !1841)
!1844 = !DILocation(line: 741, column: 51, scope: !447)
!1845 = !DILocation(line: 741, column: 13, scope: !447)
!1846 = !DILocation(line: 741, column: 11, scope: !447)
!1847 = !DILocation(line: 742, column: 9, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !447, file: !6, line: 742, column: 9)
!1849 = !DILocation(line: 742, column: 15, scope: !1848)
!1850 = !DILocation(line: 742, column: 9, scope: !447)
!1851 = !DILocation(line: 743, column: 9, scope: !1848)
!1852 = !DILocation(line: 744, column: 46, scope: !447)
!1853 = !DILocation(line: 744, column: 28, scope: !447)
!1854 = !DILocation(line: 744, column: 55, scope: !447)
!1855 = !DILocation(line: 744, column: 26, scope: !447)
!1856 = !DILocation(line: 744, column: 9, scope: !447)
!1857 = !DILocation(line: 747, column: 11, scope: !458)
!1858 = !DILocation(line: 747, column: 26, scope: !458)
!1859 = !DILocation(line: 747, column: 41, scope: !458)
!1860 = !DILocation(line: 747, column: 39, scope: !458)
!1861 = !DILocation(line: 748, column: 11, scope: !458)
!1862 = !DILocation(line: 748, column: 32, scope: !458)
!1863 = !DILocation(line: 752, column: 18, scope: !458)
!1864 = !DILocation(line: 752, column: 24, scope: !458)
!1865 = !DILocation(line: 752, column: 28, scope: !458)
!1866 = !DILocation(line: 752, column: 33, scope: !458)
!1867 = !DILocation(line: 752, column: 13, scope: !458)
!1868 = !DILocation(line: 752, column: 11, scope: !458)
!1869 = !DILocation(line: 754, column: 30, scope: !458)
!1870 = !DILocation(line: 754, column: 9, scope: !458)
!1871 = !DILocation(line: 754, column: 38, scope: !459)
!1872 = !DILocation(line: 758, column: 9, scope: !521)
!1873 = !DILocation(line: 758, column: 11, scope: !521)
!1874 = !DILocation(line: 758, column: 9, scope: !447)
!1875 = !DILocation(line: 759, column: 9, scope: !520)
!1876 = !DILocation(line: 759, column: 13, scope: !520)
!1877 = !DILocation(line: 759, column: 21, scope: !520)
!1878 = !DILocation(line: 759, column: 20, scope: !520)
!1879 = !DILocation(line: 760, column: 9, scope: !520)
!1880 = !DILocation(line: 760, column: 14, scope: !1881)
!1881 = !DILexicalBlockFile(scope: !523, file: !6, discriminator: 1)
!1882 = !DILocation(line: 760, column: 24, scope: !523)
!1883 = !DILocation(line: 760, column: 54, scope: !523)
!1884 = !DILocation(line: 760, column: 70, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !523, file: !6, line: 760, column: 67)
!1886 = !DILocation(line: 760, column: 87, scope: !1885)
!1887 = !DILocation(line: 760, column: 67, scope: !1885)
!1888 = !DILocation(line: 760, column: 97, scope: !1885)
!1889 = !DILocation(line: 760, column: 67, scope: !523)
!1890 = !DILocation(line: 760, column: 67, scope: !1891)
!1891 = !DILexicalBlockFile(scope: !523, file: !6, discriminator: 2)
!1892 = !DILocation(line: 760, column: 128, scope: !1893)
!1893 = !DILexicalBlockFile(scope: !1885, file: !6, discriminator: 3)
!1894 = !DILocation(line: 760, column: 146, scope: !1885)
!1895 = !DILocation(line: 760, column: 156, scope: !1885)
!1896 = !DILocation(line: 760, column: 181, scope: !1885)
!1897 = !DILocation(line: 760, column: 112, scope: !1885)
!1898 = !DILocation(line: 760, column: 200, scope: !1899)
!1899 = !DILexicalBlockFile(scope: !520, file: !6, discriminator: 4)
!1900 = !DILocation(line: 760, column: 200, scope: !523)
!1901 = !DILocation(line: 760, column: 200, scope: !1902)
!1902 = !DILexicalBlockFile(scope: !523, file: !6, discriminator: 5)
!1903 = !DILocation(line: 761, column: 13, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !520, file: !6, line: 761, column: 13)
!1905 = !DILocation(line: 761, column: 17, scope: !1904)
!1906 = !DILocation(line: 761, column: 13, scope: !520)
!1907 = !DILocation(line: 762, column: 66, scope: !1904)
!1908 = !DILocation(line: 762, column: 13, scope: !1904)
!1909 = !DILocation(line: 763, column: 34, scope: !520)
!1910 = !DILocation(line: 763, column: 11, scope: !520)
!1911 = !DILocation(line: 763, column: 32, scope: !520)
!1912 = !DILocation(line: 764, column: 28, scope: !520)
!1913 = !DILocation(line: 764, column: 9, scope: !520)
!1914 = !DILocation(line: 765, column: 9, scope: !520)
!1915 = !DILocation(line: 766, column: 5, scope: !521)
!1916 = !DILocation(line: 768, column: 9, scope: !529)
!1917 = !DILocation(line: 768, column: 14, scope: !529)
!1918 = !DILocation(line: 768, column: 11, scope: !529)
!1919 = !DILocation(line: 768, column: 9, scope: !447)
!1920 = !DILocation(line: 769, column: 37, scope: !527)
!1921 = !DILocation(line: 769, column: 13, scope: !527)
!1922 = !DILocation(line: 769, column: 40, scope: !527)
!1923 = !DILocation(line: 769, column: 13, scope: !528)
!1924 = !DILocation(line: 770, column: 13, scope: !526)
!1925 = !DILocation(line: 770, column: 18, scope: !1926)
!1926 = !DILexicalBlockFile(scope: !525, file: !6, discriminator: 1)
!1927 = !DILocation(line: 770, column: 28, scope: !525)
!1928 = !DILocation(line: 770, column: 51, scope: !525)
!1929 = !DILocation(line: 770, column: 63, scope: !533)
!1930 = !DILocation(line: 770, column: 71, scope: !533)
!1931 = !DILocation(line: 770, column: 63, scope: !525)
!1932 = !DILocation(line: 770, column: 96, scope: !1933)
!1933 = !DILexicalBlockFile(scope: !532, file: !6, discriminator: 2)
!1934 = !DILocation(line: 770, column: 110, scope: !532)
!1935 = !DILocation(line: 770, column: 115, scope: !1936)
!1936 = !DILexicalBlockFile(scope: !531, file: !6, discriminator: 4)
!1937 = !DILocation(line: 770, column: 125, scope: !531)
!1938 = !DILocation(line: 770, column: 155, scope: !531)
!1939 = !DILocation(line: 770, column: 173, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !531, file: !6, line: 770, column: 170)
!1941 = !DILocation(line: 770, column: 190, scope: !1940)
!1942 = !DILocation(line: 770, column: 170, scope: !1940)
!1943 = !DILocation(line: 770, column: 200, scope: !1940)
!1944 = !DILocation(line: 770, column: 170, scope: !531)
!1945 = !DILocation(line: 770, column: 170, scope: !1946)
!1946 = !DILexicalBlockFile(scope: !531, file: !6, discriminator: 5)
!1947 = !DILocation(line: 770, column: 231, scope: !1948)
!1948 = !DILexicalBlockFile(scope: !1940, file: !6, discriminator: 6)
!1949 = !DILocation(line: 770, column: 249, scope: !1940)
!1950 = !DILocation(line: 770, column: 259, scope: !1940)
!1951 = !DILocation(line: 770, column: 284, scope: !1940)
!1952 = !DILocation(line: 770, column: 215, scope: !1940)
!1953 = !DILocation(line: 770, column: 303, scope: !1954)
!1954 = !DILexicalBlockFile(scope: !532, file: !6, discriminator: 7)
!1955 = !DILocation(line: 770, column: 303, scope: !531)
!1956 = !DILocation(line: 770, column: 303, scope: !1957)
!1957 = !DILexicalBlockFile(scope: !531, file: !6, discriminator: 8)
!1958 = !DILocation(line: 770, column: 316, scope: !1959)
!1959 = !DILexicalBlockFile(scope: !532, file: !6, discriminator: 9)
!1960 = !DILocation(line: 770, column: 318, scope: !1961)
!1961 = !DILexicalBlockFile(scope: !1962, file: !6, discriminator: 10)
!1962 = !DILexicalBlockFile(scope: !526, file: !6, discriminator: 3)
!1963 = !DILocation(line: 770, column: 318, scope: !525)
!1964 = !DILocation(line: 770, column: 318, scope: !1965)
!1965 = !DILexicalBlockFile(scope: !525, file: !6, discriminator: 11)
!1966 = !DILocation(line: 771, column: 13, scope: !526)
!1967 = !DILocation(line: 773, column: 5, scope: !528)
!1968 = !DILocation(line: 775, column: 25, scope: !447)
!1969 = !DILocation(line: 775, column: 5, scope: !447)
!1970 = !DILocation(line: 776, column: 1, scope: !447)
!1971 = !DILocation(line: 619, column: 24, scope: !550)
!1972 = !DILocation(line: 621, column: 5, scope: !550)
!1973 = !DILocation(line: 621, column: 17, scope: !550)
!1974 = !DILocation(line: 622, column: 5, scope: !550)
!1975 = !DILocation(line: 622, column: 14, scope: !550)
!1976 = !DILocation(line: 622, column: 19, scope: !550)
!1977 = !DILocation(line: 623, column: 5, scope: !550)
!1978 = !DILocation(line: 623, column: 15, scope: !550)
!1979 = !DILocation(line: 624, column: 5, scope: !550)
!1980 = !DILocation(line: 624, column: 16, scope: !550)
!1981 = !DILocation(line: 625, column: 5, scope: !550)
!1982 = !DILocation(line: 625, column: 16, scope: !550)
!1983 = !DILocation(line: 626, column: 5, scope: !550)
!1984 = !DILocation(line: 626, column: 12, scope: !550)
!1985 = !DILocation(line: 628, column: 9, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !550, file: !6, line: 628, column: 9)
!1987 = !DILocation(line: 628, column: 15, scope: !1986)
!1988 = !DILocation(line: 628, column: 18, scope: !1986)
!1989 = !DILocation(line: 628, column: 9, scope: !550)
!1990 = !DILocation(line: 629, column: 16, scope: !1986)
!1991 = !DILocation(line: 629, column: 9, scope: !1986)
!1992 = !DILocation(line: 636, column: 17, scope: !550)
!1993 = !DILocation(line: 636, column: 23, scope: !550)
!1994 = !DILocation(line: 636, column: 11, scope: !550)
!1995 = !DILocation(line: 636, column: 9, scope: !550)
!1996 = !DILocation(line: 638, column: 15, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !550, file: !6, line: 638, column: 9)
!1998 = !DILocation(line: 638, column: 21, scope: !1997)
!1999 = !DILocation(line: 638, column: 9, scope: !1997)
!2000 = !DILocation(line: 638, column: 30, scope: !1997)
!2001 = !DILocation(line: 638, column: 9, scope: !550)
!2002 = !DILocation(line: 639, column: 18, scope: !1997)
!2003 = !{!2004, !966, i64 48}
!2004 = !{!"stat", !966, i64 0, !966, i64 8, !966, i64 16, !967, i64 24, !967, i64 28, !967, i64 32, !967, i64 36, !966, i64 40, !966, i64 48, !966, i64 56, !966, i64 64, !2005, i64 72, !2005, i64 88, !2005, i64 104, !956, i64 120}
!2005 = !{!"timespec", !966, i64 0, !966, i64 8}
!2006 = !DILocation(line: 639, column: 13, scope: !1997)
!2007 = !DILocation(line: 639, column: 9, scope: !1997)
!2008 = !DILocation(line: 641, column: 13, scope: !1997)
!2009 = !DILocation(line: 643, column: 9, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !550, file: !6, line: 643, column: 9)
!2011 = !DILocation(line: 643, column: 13, scope: !2010)
!2012 = !DILocation(line: 643, column: 17, scope: !2010)
!2013 = !DILocation(line: 643, column: 20, scope: !2014)
!2014 = !DILexicalBlockFile(scope: !2010, file: !6, discriminator: 1)
!2015 = !DILocation(line: 643, column: 27, scope: !2010)
!2016 = !DILocation(line: 643, column: 24, scope: !2010)
!2017 = !DILocation(line: 643, column: 31, scope: !2010)
!2018 = !DILocation(line: 643, column: 34, scope: !2019)
!2019 = !DILexicalBlockFile(scope: !2010, file: !6, discriminator: 2)
!2020 = !DILocation(line: 643, column: 38, scope: !2010)
!2021 = !DILocation(line: 643, column: 43, scope: !2010)
!2022 = !DILocation(line: 643, column: 46, scope: !2023)
!2023 = !DILexicalBlockFile(scope: !2010, file: !6, discriminator: 3)
!2024 = !DILocation(line: 643, column: 52, scope: !2010)
!2025 = !DILocation(line: 643, column: 50, scope: !2010)
!2026 = !DILocation(line: 643, column: 56, scope: !2010)
!2027 = !DILocation(line: 643, column: 9, scope: !550)
!2028 = !DILocation(line: 648, column: 28, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2010, file: !6, line: 643, column: 91)
!2030 = !DILocation(line: 648, column: 34, scope: !2029)
!2031 = !DILocation(line: 648, column: 32, scope: !2029)
!2032 = !DILocation(line: 648, column: 38, scope: !2029)
!2033 = !DILocation(line: 648, column: 17, scope: !2029)
!2034 = !DILocation(line: 649, column: 5, scope: !2029)
!2035 = !DILocation(line: 650, column: 17, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2010, file: !6, line: 649, column: 12)
!2037 = !DILocation(line: 653, column: 52, scope: !550)
!2038 = !DILocation(line: 653, column: 14, scope: !550)
!2039 = !DILocation(line: 653, column: 12, scope: !550)
!2040 = !DILocation(line: 654, column: 9, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !550, file: !6, line: 654, column: 9)
!2042 = !DILocation(line: 654, column: 16, scope: !2041)
!2043 = !DILocation(line: 654, column: 9, scope: !550)
!2044 = !DILocation(line: 655, column: 9, scope: !2041)
!2045 = !DILocation(line: 657, column: 5, scope: !550)
!2046 = !DILocation(line: 657, column: 5, scope: !2047)
!2047 = !DILexicalBlockFile(scope: !2048, file: !6, discriminator: 2)
!2048 = !DILexicalBlockFile(scope: !550, file: !6, discriminator: 1)
!2049 = !DILocation(line: 658, column: 13, scope: !601)
!2050 = !DILocation(line: 658, column: 39, scope: !601)
!2051 = !DILocation(line: 658, column: 24, scope: !601)
!2052 = !DILocation(line: 658, column: 13, scope: !602)
!2053 = !DILocation(line: 659, column: 38, scope: !600)
!2054 = !DILocation(line: 659, column: 44, scope: !600)
!2055 = !DILocation(line: 659, column: 23, scope: !600)
!2056 = !DILocation(line: 659, column: 21, scope: !600)
!2057 = !DILocation(line: 660, column: 17, scope: !599)
!2058 = !DILocation(line: 660, column: 25, scope: !599)
!2059 = !DILocation(line: 660, column: 59, scope: !599)
!2060 = !DILocation(line: 660, column: 62, scope: !2061)
!2061 = !DILexicalBlockFile(scope: !599, file: !6, discriminator: 1)
!2062 = !DILocation(line: 660, column: 70, scope: !599)
!2063 = !DILocation(line: 660, column: 17, scope: !600)
!2064 = !DILocation(line: 661, column: 33, scope: !598)
!2065 = !DILocation(line: 661, column: 17, scope: !598)
!2066 = !DILocation(line: 664, column: 17, scope: !598)
!2067 = !DILocation(line: 664, column: 22, scope: !2068)
!2068 = !DILexicalBlockFile(scope: !597, file: !6, discriminator: 1)
!2069 = !DILocation(line: 664, column: 32, scope: !597)
!2070 = !DILocation(line: 664, column: 62, scope: !597)
!2071 = !DILocation(line: 664, column: 79, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !597, file: !6, line: 664, column: 76)
!2073 = !DILocation(line: 664, column: 96, scope: !2072)
!2074 = !DILocation(line: 664, column: 76, scope: !2072)
!2075 = !DILocation(line: 664, column: 106, scope: !2072)
!2076 = !DILocation(line: 664, column: 76, scope: !597)
!2077 = !DILocation(line: 664, column: 76, scope: !2078)
!2078 = !DILexicalBlockFile(scope: !597, file: !6, discriminator: 2)
!2079 = !DILocation(line: 664, column: 137, scope: !2080)
!2080 = !DILexicalBlockFile(scope: !2072, file: !6, discriminator: 3)
!2081 = !DILocation(line: 664, column: 155, scope: !2072)
!2082 = !DILocation(line: 664, column: 165, scope: !2072)
!2083 = !DILocation(line: 664, column: 190, scope: !2072)
!2084 = !DILocation(line: 664, column: 121, scope: !2072)
!2085 = !DILocation(line: 664, column: 209, scope: !2086)
!2086 = !DILexicalBlockFile(scope: !598, file: !6, discriminator: 4)
!2087 = !DILocation(line: 664, column: 209, scope: !597)
!2088 = !DILocation(line: 664, column: 209, scope: !2089)
!2089 = !DILexicalBlockFile(scope: !597, file: !6, discriminator: 5)
!2090 = !DILocation(line: 665, column: 17, scope: !598)
!2091 = !DILocation(line: 668, column: 48, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !600, file: !6, line: 668, column: 17)
!2093 = !DILocation(line: 668, column: 33, scope: !2092)
!2094 = !DILocation(line: 668, column: 58, scope: !2092)
!2095 = !{!1077, !966, i64 16}
!2096 = !DILocation(line: 668, column: 82, scope: !2092)
!2097 = !DILocation(line: 668, column: 68, scope: !2092)
!2098 = !DILocation(line: 668, column: 17, scope: !600)
!2099 = !DILocation(line: 669, column: 46, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !6, line: 669, column: 21)
!2101 = distinct !DILexicalBlock(scope: !2092, file: !6, line: 668, column: 91)
!2102 = !DILocation(line: 669, column: 21, scope: !2100)
!2103 = !DILocation(line: 669, column: 55, scope: !2100)
!2104 = !DILocation(line: 669, column: 21, scope: !2101)
!2105 = !DILocation(line: 670, column: 21, scope: !2100)
!2106 = !DILocation(line: 671, column: 13, scope: !2101)
!2107 = !DILocation(line: 672, column: 9, scope: !600)
!2108 = !DILocation(line: 673, column: 11, scope: !604)
!2109 = !DILocation(line: 673, column: 26, scope: !604)
!2110 = !DILocation(line: 673, column: 41, scope: !604)
!2111 = !DILocation(line: 673, column: 39, scope: !604)
!2112 = !DILocation(line: 674, column: 11, scope: !604)
!2113 = !DILocation(line: 674, column: 32, scope: !604)
!2114 = !DILocation(line: 675, column: 13, scope: !604)
!2115 = !DILocation(line: 675, column: 23, scope: !604)
!2116 = !DILocation(line: 675, column: 21, scope: !604)
!2117 = !DILocation(line: 675, column: 11, scope: !604)
!2118 = !DILocation(line: 681, column: 18, scope: !604)
!2119 = !DILocation(line: 681, column: 24, scope: !604)
!2120 = !DILocation(line: 681, column: 63, scope: !604)
!2121 = !DILocation(line: 681, column: 45, scope: !604)
!2122 = !DILocation(line: 681, column: 73, scope: !604)
!2123 = !DILocation(line: 681, column: 43, scope: !604)
!2124 = !DILocation(line: 681, column: 85, scope: !604)
!2125 = !DILocation(line: 681, column: 83, scope: !604)
!2126 = !DILocation(line: 681, column: 97, scope: !604)
!2127 = !DILocation(line: 681, column: 13, scope: !604)
!2128 = !DILocation(line: 681, column: 11, scope: !604)
!2129 = !DILocation(line: 683, column: 30, scope: !604)
!2130 = !DILocation(line: 683, column: 9, scope: !604)
!2131 = !DILocation(line: 683, column: 38, scope: !602)
!2132 = !DILocation(line: 684, column: 13, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !602, file: !6, line: 684, column: 13)
!2134 = !DILocation(line: 684, column: 15, scope: !2133)
!2135 = !DILocation(line: 684, column: 13, scope: !602)
!2136 = !DILocation(line: 685, column: 13, scope: !2133)
!2137 = !DILocation(line: 686, column: 13, scope: !612)
!2138 = !DILocation(line: 686, column: 15, scope: !612)
!2139 = !DILocation(line: 686, column: 13, scope: !602)
!2140 = !DILocation(line: 687, column: 19, scope: !610)
!2141 = !DILocation(line: 687, column: 18, scope: !610)
!2142 = !DILocation(line: 687, column: 40, scope: !610)
!2143 = !DILocation(line: 687, column: 17, scope: !611)
!2144 = !DILocation(line: 688, column: 21, scope: !608)
!2145 = !DILocation(line: 688, column: 21, scope: !609)
!2146 = !DILocation(line: 689, column: 21, scope: !607)
!2147 = !DILocation(line: 689, column: 26, scope: !2148)
!2148 = !DILexicalBlockFile(scope: !606, file: !6, discriminator: 1)
!2149 = !DILocation(line: 689, column: 36, scope: !606)
!2150 = !DILocation(line: 689, column: 66, scope: !606)
!2151 = !DILocation(line: 689, column: 83, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !606, file: !6, line: 689, column: 80)
!2153 = !DILocation(line: 689, column: 100, scope: !2152)
!2154 = !DILocation(line: 689, column: 80, scope: !2152)
!2155 = !DILocation(line: 689, column: 110, scope: !2152)
!2156 = !DILocation(line: 689, column: 80, scope: !606)
!2157 = !DILocation(line: 689, column: 80, scope: !2158)
!2158 = !DILexicalBlockFile(scope: !606, file: !6, discriminator: 2)
!2159 = !DILocation(line: 689, column: 141, scope: !2160)
!2160 = !DILexicalBlockFile(scope: !2152, file: !6, discriminator: 3)
!2161 = !DILocation(line: 689, column: 159, scope: !2152)
!2162 = !DILocation(line: 689, column: 169, scope: !2152)
!2163 = !DILocation(line: 689, column: 194, scope: !2152)
!2164 = !DILocation(line: 689, column: 125, scope: !2152)
!2165 = !DILocation(line: 689, column: 213, scope: !2166)
!2166 = !DILexicalBlockFile(scope: !607, file: !6, discriminator: 4)
!2167 = !DILocation(line: 689, column: 213, scope: !606)
!2168 = !DILocation(line: 689, column: 213, scope: !2169)
!2169 = !DILexicalBlockFile(scope: !606, file: !6, discriminator: 5)
!2170 = !DILocation(line: 690, column: 21, scope: !607)
!2171 = !DILocation(line: 692, column: 17, scope: !609)
!2172 = !DILocation(line: 694, column: 17, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !611, file: !6, line: 694, column: 17)
!2174 = !DILocation(line: 694, column: 28, scope: !2173)
!2175 = !DILocation(line: 694, column: 17, scope: !611)
!2176 = !DILocation(line: 695, column: 17, scope: !2173)
!2177 = !DILocation(line: 696, column: 19, scope: !616)
!2178 = !DILocation(line: 696, column: 18, scope: !616)
!2179 = !DILocation(line: 696, column: 40, scope: !616)
!2180 = !DILocation(line: 696, column: 17, scope: !611)
!2181 = !DILocation(line: 697, column: 17, scope: !615)
!2182 = !DILocation(line: 697, column: 22, scope: !2183)
!2183 = !DILexicalBlockFile(scope: !614, file: !6, discriminator: 1)
!2184 = !DILocation(line: 697, column: 32, scope: !614)
!2185 = !DILocation(line: 697, column: 62, scope: !614)
!2186 = !DILocation(line: 697, column: 79, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !614, file: !6, line: 697, column: 76)
!2188 = !DILocation(line: 697, column: 96, scope: !2187)
!2189 = !DILocation(line: 697, column: 76, scope: !2187)
!2190 = !DILocation(line: 697, column: 106, scope: !2187)
!2191 = !DILocation(line: 697, column: 76, scope: !614)
!2192 = !DILocation(line: 697, column: 76, scope: !2193)
!2193 = !DILexicalBlockFile(scope: !614, file: !6, discriminator: 2)
!2194 = !DILocation(line: 697, column: 137, scope: !2195)
!2195 = !DILexicalBlockFile(scope: !2187, file: !6, discriminator: 3)
!2196 = !DILocation(line: 697, column: 155, scope: !2187)
!2197 = !DILocation(line: 697, column: 165, scope: !2187)
!2198 = !DILocation(line: 697, column: 190, scope: !2187)
!2199 = !DILocation(line: 697, column: 121, scope: !2187)
!2200 = !DILocation(line: 697, column: 209, scope: !2201)
!2201 = !DILexicalBlockFile(scope: !615, file: !6, discriminator: 4)
!2202 = !DILocation(line: 697, column: 209, scope: !614)
!2203 = !DILocation(line: 697, column: 209, scope: !2204)
!2204 = !DILexicalBlockFile(scope: !614, file: !6, discriminator: 5)
!2205 = !DILocation(line: 698, column: 70, scope: !615)
!2206 = !DILocation(line: 698, column: 17, scope: !615)
!2207 = !DILocation(line: 700, column: 13, scope: !611)
!2208 = !DILocation(line: 700, column: 18, scope: !2209)
!2209 = !DILexicalBlockFile(scope: !618, file: !6, discriminator: 1)
!2210 = !DILocation(line: 700, column: 28, scope: !618)
!2211 = !DILocation(line: 700, column: 58, scope: !618)
!2212 = !DILocation(line: 700, column: 75, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !618, file: !6, line: 700, column: 72)
!2214 = !DILocation(line: 700, column: 92, scope: !2213)
!2215 = !DILocation(line: 700, column: 72, scope: !2213)
!2216 = !DILocation(line: 700, column: 102, scope: !2213)
!2217 = !DILocation(line: 700, column: 72, scope: !618)
!2218 = !DILocation(line: 700, column: 72, scope: !2219)
!2219 = !DILexicalBlockFile(scope: !618, file: !6, discriminator: 2)
!2220 = !DILocation(line: 700, column: 133, scope: !2221)
!2221 = !DILexicalBlockFile(scope: !2213, file: !6, discriminator: 3)
!2222 = !DILocation(line: 700, column: 151, scope: !2213)
!2223 = !DILocation(line: 700, column: 161, scope: !2213)
!2224 = !DILocation(line: 700, column: 186, scope: !2213)
!2225 = !DILocation(line: 700, column: 117, scope: !2213)
!2226 = !DILocation(line: 700, column: 205, scope: !2227)
!2227 = !DILexicalBlockFile(scope: !611, file: !6, discriminator: 4)
!2228 = !DILocation(line: 700, column: 205, scope: !618)
!2229 = !DILocation(line: 700, column: 205, scope: !2230)
!2230 = !DILexicalBlockFile(scope: !618, file: !6, discriminator: 5)
!2231 = !DILocation(line: 701, column: 32, scope: !611)
!2232 = !DILocation(line: 701, column: 13, scope: !611)
!2233 = !DILocation(line: 702, column: 13, scope: !611)
!2234 = !DILocation(line: 704, column: 23, scope: !602)
!2235 = !DILocation(line: 704, column: 20, scope: !602)
!2236 = !DILocation(line: 705, column: 16, scope: !602)
!2237 = !DILocation(line: 705, column: 13, scope: !602)
!2238 = !DILocation(line: 708, column: 40, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !550, file: !6, line: 708, column: 9)
!2240 = !DILocation(line: 708, column: 25, scope: !2239)
!2241 = !DILocation(line: 708, column: 50, scope: !2239)
!2242 = !DILocation(line: 708, column: 62, scope: !2239)
!2243 = !DILocation(line: 708, column: 60, scope: !2239)
!2244 = !DILocation(line: 708, column: 9, scope: !550)
!2245 = !DILocation(line: 709, column: 38, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !6, line: 709, column: 13)
!2247 = distinct !DILexicalBlock(scope: !2239, file: !6, line: 708, column: 74)
!2248 = !DILocation(line: 709, column: 13, scope: !2246)
!2249 = !DILocation(line: 709, column: 50, scope: !2246)
!2250 = !DILocation(line: 709, column: 13, scope: !2247)
!2251 = !DILocation(line: 710, column: 13, scope: !2246)
!2252 = !DILocation(line: 711, column: 5, scope: !2247)
!2253 = !DILocation(line: 712, column: 12, scope: !550)
!2254 = !DILocation(line: 712, column: 5, scope: !550)
!2255 = !DILocation(line: 713, column: 1, scope: !550)
!2256 = !DILocation(line: 546, column: 25, scope: !653)
!2257 = !DILocation(line: 546, column: 41, scope: !653)
!2258 = !DILocation(line: 548, column: 5, scope: !653)
!2259 = !DILocation(line: 548, column: 15, scope: !653)
!2260 = !DILocation(line: 549, column: 5, scope: !653)
!2261 = !DILocation(line: 549, column: 16, scope: !653)
!2262 = !DILocation(line: 549, column: 19, scope: !653)
!2263 = !DILocation(line: 550, column: 5, scope: !653)
!2264 = !DILocation(line: 550, column: 9, scope: !653)
!2265 = !DILocation(line: 552, column: 9, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !653, file: !6, line: 552, column: 9)
!2267 = !DILocation(line: 552, column: 15, scope: !2266)
!2268 = !DILocation(line: 552, column: 18, scope: !2266)
!2269 = !DILocation(line: 552, column: 9, scope: !653)
!2270 = !DILocation(line: 553, column: 16, scope: !2266)
!2271 = !DILocation(line: 553, column: 9, scope: !2266)
!2272 = !DILocation(line: 554, column: 10, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !653, file: !6, line: 554, column: 9)
!2274 = !DILocation(line: 554, column: 16, scope: !2273)
!2275 = !DILocation(line: 554, column: 9, scope: !653)
!2276 = !DILocation(line: 555, column: 16, scope: !2273)
!2277 = !DILocation(line: 555, column: 9, scope: !2273)
!2278 = !DILocation(line: 557, column: 34, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !653, file: !6, line: 557, column: 9)
!2280 = !DILocation(line: 557, column: 10, scope: !2279)
!2281 = !DILocation(line: 557, column: 9, scope: !653)
!2282 = !DILocation(line: 558, column: 9, scope: !2279)
!2283 = !DILocation(line: 561, column: 20, scope: !663)
!2284 = !{!2285, !966, i64 16}
!2285 = !{!"bufferinfo", !955, i64 0, !955, i64 8, !966, i64 16, !966, i64 24, !967, i64 32, !967, i64 36, !955, i64 40, !955, i64 48, !955, i64 56, !955, i64 64, !955, i64 72}
!2286 = !DILocation(line: 561, column: 13, scope: !663)
!2287 = !DILocation(line: 562, column: 11, scope: !662)
!2288 = !DILocation(line: 562, column: 26, scope: !662)
!2289 = !DILocation(line: 562, column: 41, scope: !662)
!2290 = !DILocation(line: 562, column: 39, scope: !662)
!2291 = !DILocation(line: 563, column: 11, scope: !662)
!2292 = !DILocation(line: 563, column: 32, scope: !662)
!2293 = !DILocation(line: 569, column: 18, scope: !662)
!2294 = !DILocation(line: 569, column: 24, scope: !662)
!2295 = !DILocation(line: 569, column: 33, scope: !662)
!2296 = !{!2285, !955, i64 0}
!2297 = !DILocation(line: 569, column: 38, scope: !662)
!2298 = !DILocation(line: 569, column: 13, scope: !662)
!2299 = !DILocation(line: 569, column: 11, scope: !662)
!2300 = !DILocation(line: 571, column: 30, scope: !662)
!2301 = !DILocation(line: 571, column: 9, scope: !662)
!2302 = !DILocation(line: 571, column: 38, scope: !663)
!2303 = !DILocation(line: 574, column: 13, scope: !653)
!2304 = !DILocation(line: 574, column: 12, scope: !653)
!2305 = !DILocation(line: 574, column: 9, scope: !653)
!2306 = !DILocation(line: 575, column: 5, scope: !653)
!2307 = !DILocation(line: 576, column: 9, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !653, file: !6, line: 576, column: 9)
!2309 = !DILocation(line: 576, column: 11, scope: !2308)
!2310 = !DILocation(line: 576, column: 9, scope: !653)
!2311 = !DILocation(line: 577, column: 13, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2313, file: !6, line: 577, column: 13)
!2313 = distinct !DILexicalBlock(scope: !2308, file: !6, line: 576, column: 16)
!2314 = !DILocation(line: 577, column: 17, scope: !2312)
!2315 = !DILocation(line: 577, column: 13, scope: !2313)
!2316 = !DILocation(line: 578, column: 66, scope: !2312)
!2317 = !DILocation(line: 578, column: 13, scope: !2312)
!2318 = !DILocation(line: 579, column: 34, scope: !2313)
!2319 = !DILocation(line: 579, column: 11, scope: !2313)
!2320 = !DILocation(line: 579, column: 32, scope: !2313)
!2321 = !DILocation(line: 580, column: 28, scope: !2313)
!2322 = !DILocation(line: 580, column: 9, scope: !2313)
!2323 = !DILocation(line: 581, column: 9, scope: !2313)
!2324 = !DILocation(line: 584, column: 31, scope: !653)
!2325 = !DILocation(line: 584, column: 12, scope: !653)
!2326 = !DILocation(line: 584, column: 5, scope: !653)
!2327 = !DILocation(line: 585, column: 1, scope: !653)
!2328 = !DILocation(line: 779, column: 22, scope: !665)
!2329 = !DILocation(line: 779, column: 38, scope: !665)
!2330 = !DILocation(line: 781, column: 5, scope: !665)
!2331 = !DILocation(line: 781, column: 15, scope: !665)
!2332 = !DILocation(line: 782, column: 5, scope: !665)
!2333 = !DILocation(line: 782, column: 16, scope: !665)
!2334 = !DILocation(line: 782, column: 19, scope: !665)
!2335 = !DILocation(line: 783, column: 5, scope: !665)
!2336 = !DILocation(line: 783, column: 9, scope: !665)
!2337 = !DILocation(line: 785, column: 9, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !665, file: !6, line: 785, column: 9)
!2339 = !DILocation(line: 785, column: 15, scope: !2338)
!2340 = !DILocation(line: 785, column: 18, scope: !2338)
!2341 = !DILocation(line: 785, column: 9, scope: !665)
!2342 = !DILocation(line: 786, column: 16, scope: !2338)
!2343 = !DILocation(line: 786, column: 9, scope: !2338)
!2344 = !DILocation(line: 787, column: 10, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !665, file: !6, line: 787, column: 9)
!2346 = !DILocation(line: 787, column: 16, scope: !2345)
!2347 = !DILocation(line: 787, column: 9, scope: !665)
!2348 = !DILocation(line: 788, column: 16, scope: !2345)
!2349 = !DILocation(line: 788, column: 9, scope: !2345)
!2350 = !DILocation(line: 790, column: 34, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !665, file: !6, line: 790, column: 9)
!2352 = !DILocation(line: 790, column: 10, scope: !2351)
!2353 = !DILocation(line: 790, column: 9, scope: !665)
!2354 = !DILocation(line: 791, column: 9, scope: !2351)
!2355 = !DILocation(line: 794, column: 11, scope: !674)
!2356 = !DILocation(line: 794, column: 26, scope: !674)
!2357 = !DILocation(line: 794, column: 41, scope: !674)
!2358 = !DILocation(line: 794, column: 39, scope: !674)
!2359 = !DILocation(line: 795, column: 11, scope: !674)
!2360 = !DILocation(line: 795, column: 32, scope: !674)
!2361 = !DILocation(line: 796, column: 20, scope: !674)
!2362 = !DILocation(line: 796, column: 13, scope: !674)
!2363 = !DILocation(line: 809, column: 19, scope: !674)
!2364 = !DILocation(line: 809, column: 25, scope: !674)
!2365 = !DILocation(line: 809, column: 34, scope: !674)
!2366 = !DILocation(line: 809, column: 39, scope: !674)
!2367 = !DILocation(line: 809, column: 13, scope: !674)
!2368 = !DILocation(line: 809, column: 11, scope: !674)
!2369 = !DILocation(line: 811, column: 30, scope: !674)
!2370 = !DILocation(line: 811, column: 9, scope: !674)
!2371 = !DILocation(line: 811, column: 38, scope: !675)
!2372 = !DILocation(line: 814, column: 13, scope: !665)
!2373 = !DILocation(line: 814, column: 12, scope: !665)
!2374 = !DILocation(line: 814, column: 9, scope: !665)
!2375 = !DILocation(line: 816, column: 5, scope: !665)
!2376 = !DILocation(line: 818, column: 9, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !665, file: !6, line: 818, column: 9)
!2378 = !DILocation(line: 818, column: 11, scope: !2377)
!2379 = !DILocation(line: 818, column: 9, scope: !665)
!2380 = !DILocation(line: 819, column: 13, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !6, line: 819, column: 13)
!2382 = distinct !DILexicalBlock(scope: !2377, file: !6, line: 818, column: 16)
!2383 = !DILocation(line: 819, column: 17, scope: !2381)
!2384 = !DILocation(line: 819, column: 13, scope: !2382)
!2385 = !DILocation(line: 820, column: 66, scope: !2381)
!2386 = !DILocation(line: 820, column: 13, scope: !2381)
!2387 = !DILocation(line: 821, column: 34, scope: !2382)
!2388 = !DILocation(line: 821, column: 11, scope: !2382)
!2389 = !DILocation(line: 821, column: 32, scope: !2382)
!2390 = !DILocation(line: 822, column: 28, scope: !2382)
!2391 = !DILocation(line: 822, column: 9, scope: !2382)
!2392 = !DILocation(line: 823, column: 9, scope: !2382)
!2393 = !DILocation(line: 826, column: 31, scope: !665)
!2394 = !DILocation(line: 826, column: 12, scope: !665)
!2395 = !DILocation(line: 826, column: 5, scope: !665)
!2396 = !DILocation(line: 827, column: 1, scope: !665)
!2397 = !DILocation(line: 889, column: 21, scope: !677)
!2398 = !DILocation(line: 889, column: 37, scope: !677)
!2399 = !DILocation(line: 891, column: 5, scope: !677)
!2400 = !DILocation(line: 891, column: 15, scope: !677)
!2401 = !DILocation(line: 892, column: 5, scope: !677)
!2402 = !DILocation(line: 892, column: 9, scope: !677)
!2403 = !DILocation(line: 894, column: 9, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !677, file: !6, line: 894, column: 9)
!2405 = !DILocation(line: 894, column: 15, scope: !2404)
!2406 = !DILocation(line: 894, column: 18, scope: !2404)
!2407 = !DILocation(line: 894, column: 9, scope: !677)
!2408 = !DILocation(line: 895, column: 16, scope: !2404)
!2409 = !DILocation(line: 895, column: 9, scope: !2404)
!2410 = !DILocation(line: 897, column: 34, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !677, file: !6, line: 897, column: 9)
!2412 = !DILocation(line: 897, column: 10, scope: !2411)
!2413 = !DILocation(line: 897, column: 9, scope: !677)
!2414 = !DILocation(line: 898, column: 9, scope: !2411)
!2415 = !DILocation(line: 900, column: 27, scope: !677)
!2416 = !DILocation(line: 900, column: 33, scope: !677)
!2417 = !DILocation(line: 900, column: 37, scope: !677)
!2418 = !DILocation(line: 900, column: 45, scope: !677)
!2419 = !DILocation(line: 900, column: 12, scope: !677)
!2420 = !DILocation(line: 900, column: 5, scope: !677)
!2421 = !DILocation(line: 901, column: 1, scope: !677)
!2422 = !DILocation(line: 904, column: 21, scope: !696)
!2423 = !DILocation(line: 904, column: 37, scope: !696)
!2424 = !DILocation(line: 906, column: 9, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !696, file: !6, line: 906, column: 9)
!2426 = !DILocation(line: 906, column: 15, scope: !2425)
!2427 = !DILocation(line: 906, column: 18, scope: !2425)
!2428 = !DILocation(line: 906, column: 9, scope: !696)
!2429 = !DILocation(line: 907, column: 16, scope: !2425)
!2430 = !DILocation(line: 907, column: 9, scope: !2425)
!2431 = !DILocation(line: 909, column: 27, scope: !696)
!2432 = !DILocation(line: 909, column: 33, scope: !696)
!2433 = !DILocation(line: 909, column: 12, scope: !696)
!2434 = !DILocation(line: 909, column: 5, scope: !696)
!2435 = !DILocation(line: 910, column: 1, scope: !696)
!2436 = !DILocation(line: 914, column: 25, scope: !700)
!2437 = !DILocation(line: 914, column: 41, scope: !700)
!2438 = !DILocation(line: 916, column: 5, scope: !700)
!2439 = !DILocation(line: 916, column: 15, scope: !700)
!2440 = !DILocation(line: 918, column: 5, scope: !700)
!2441 = !DILocation(line: 918, column: 14, scope: !700)
!2442 = !DILocation(line: 920, column: 5, scope: !700)
!2443 = !DILocation(line: 920, column: 9, scope: !700)
!2444 = !DILocation(line: 921, column: 5, scope: !700)
!2445 = !DILocation(line: 921, column: 9, scope: !700)
!2446 = !DILocation(line: 923, column: 10, scope: !700)
!2447 = !DILocation(line: 923, column: 16, scope: !700)
!2448 = !DILocation(line: 923, column: 8, scope: !700)
!2449 = !DILocation(line: 924, column: 9, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !700, file: !6, line: 924, column: 9)
!2451 = !DILocation(line: 924, column: 12, scope: !2450)
!2452 = !DILocation(line: 924, column: 9, scope: !700)
!2453 = !DILocation(line: 925, column: 16, scope: !2450)
!2454 = !DILocation(line: 925, column: 9, scope: !2450)
!2455 = !DILocation(line: 926, column: 10, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !700, file: !6, line: 926, column: 9)
!2457 = !DILocation(line: 926, column: 16, scope: !2456)
!2458 = !DILocation(line: 926, column: 9, scope: !700)
!2459 = !DILocation(line: 927, column: 16, scope: !2456)
!2460 = !DILocation(line: 927, column: 9, scope: !2456)
!2461 = !DILocation(line: 929, column: 34, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !700, file: !6, line: 929, column: 9)
!2463 = !DILocation(line: 929, column: 10, scope: !2462)
!2464 = !DILocation(line: 929, column: 9, scope: !700)
!2465 = !DILocation(line: 930, column: 9, scope: !2462)
!2466 = !DILocation(line: 932, column: 9, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !700, file: !6, line: 932, column: 9)
!2468 = !DILocation(line: 932, column: 16, scope: !2467)
!2469 = !DILocation(line: 932, column: 37, scope: !2467)
!2470 = !DILocation(line: 932, column: 40, scope: !2471)
!2471 = !DILexicalBlockFile(scope: !2467, file: !6, discriminator: 1)
!2472 = !DILocation(line: 932, column: 47, scope: !2467)
!2473 = !DILocation(line: 932, column: 9, scope: !700)
!2474 = !DILocation(line: 934, column: 33, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2467, file: !6, line: 932, column: 62)
!2476 = !DILocation(line: 934, column: 18, scope: !2475)
!2477 = !DILocation(line: 934, column: 16, scope: !2475)
!2478 = !DILocation(line: 935, column: 13, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2475, file: !6, line: 935, column: 13)
!2480 = !DILocation(line: 935, column: 20, scope: !2479)
!2481 = !DILocation(line: 935, column: 13, scope: !2475)
!2482 = !DILocation(line: 936, column: 13, scope: !2479)
!2483 = !DILocation(line: 937, column: 5, scope: !2475)
!2484 = !DILocation(line: 939, column: 25, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2467, file: !6, line: 938, column: 10)
!2486 = !DILocation(line: 939, column: 35, scope: !2485)
!2487 = !DILocation(line: 939, column: 44, scope: !2485)
!2488 = !DILocation(line: 991, column: 25, scope: !700)
!2489 = !DILocation(line: 991, column: 11, scope: !700)
!2490 = !DILocation(line: 991, column: 9, scope: !700)
!2491 = !DILocation(line: 993, column: 9, scope: !711)
!2492 = !DILocation(line: 993, column: 9, scope: !700)
!2493 = !DILocation(line: 994, column: 9, scope: !710)
!2494 = !DILocation(line: 994, column: 14, scope: !2495)
!2495 = !DILexicalBlockFile(scope: !709, file: !6, discriminator: 1)
!2496 = !DILocation(line: 994, column: 24, scope: !709)
!2497 = !DILocation(line: 994, column: 54, scope: !709)
!2498 = !DILocation(line: 994, column: 71, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !709, file: !6, line: 994, column: 68)
!2500 = !DILocation(line: 994, column: 88, scope: !2499)
!2501 = !DILocation(line: 994, column: 68, scope: !2499)
!2502 = !DILocation(line: 994, column: 98, scope: !2499)
!2503 = !DILocation(line: 994, column: 68, scope: !709)
!2504 = !DILocation(line: 994, column: 68, scope: !2505)
!2505 = !DILexicalBlockFile(scope: !709, file: !6, discriminator: 2)
!2506 = !DILocation(line: 994, column: 129, scope: !2507)
!2507 = !DILexicalBlockFile(scope: !2499, file: !6, discriminator: 3)
!2508 = !DILocation(line: 994, column: 147, scope: !2499)
!2509 = !DILocation(line: 994, column: 157, scope: !2499)
!2510 = !DILocation(line: 994, column: 182, scope: !2499)
!2511 = !DILocation(line: 994, column: 113, scope: !2499)
!2512 = !DILocation(line: 994, column: 201, scope: !2513)
!2513 = !DILexicalBlockFile(scope: !710, file: !6, discriminator: 4)
!2514 = !DILocation(line: 994, column: 201, scope: !709)
!2515 = !DILocation(line: 994, column: 201, scope: !2516)
!2516 = !DILexicalBlockFile(scope: !709, file: !6, discriminator: 5)
!2517 = !DILocation(line: 995, column: 9, scope: !710)
!2518 = !DILocation(line: 998, column: 7, scope: !713)
!2519 = !DILocation(line: 998, column: 22, scope: !713)
!2520 = !DILocation(line: 998, column: 37, scope: !713)
!2521 = !DILocation(line: 998, column: 35, scope: !713)
!2522 = !DILocation(line: 999, column: 7, scope: !713)
!2523 = !DILocation(line: 999, column: 28, scope: !713)
!2524 = !DILocation(line: 1000, column: 21, scope: !713)
!2525 = !DILocation(line: 1000, column: 25, scope: !713)
!2526 = !DILocation(line: 1000, column: 11, scope: !713)
!2527 = !DILocation(line: 1000, column: 9, scope: !713)
!2528 = !DILocation(line: 1001, column: 26, scope: !713)
!2529 = !DILocation(line: 1001, column: 5, scope: !713)
!2530 = !DILocation(line: 1001, column: 34, scope: !700)
!2531 = !DILocation(line: 1005, column: 9, scope: !717)
!2532 = !DILocation(line: 1005, column: 13, scope: !717)
!2533 = !DILocation(line: 1005, column: 9, scope: !700)
!2534 = !DILocation(line: 1006, column: 9, scope: !716)
!2535 = !DILocation(line: 1006, column: 14, scope: !2536)
!2536 = !DILexicalBlockFile(scope: !715, file: !6, discriminator: 1)
!2537 = !DILocation(line: 1006, column: 24, scope: !715)
!2538 = !DILocation(line: 1006, column: 54, scope: !715)
!2539 = !DILocation(line: 1006, column: 71, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !715, file: !6, line: 1006, column: 68)
!2541 = !DILocation(line: 1006, column: 88, scope: !2540)
!2542 = !DILocation(line: 1006, column: 68, scope: !2540)
!2543 = !DILocation(line: 1006, column: 98, scope: !2540)
!2544 = !DILocation(line: 1006, column: 68, scope: !715)
!2545 = !DILocation(line: 1006, column: 68, scope: !2546)
!2546 = !DILexicalBlockFile(scope: !715, file: !6, discriminator: 2)
!2547 = !DILocation(line: 1006, column: 129, scope: !2548)
!2548 = !DILexicalBlockFile(scope: !2540, file: !6, discriminator: 3)
!2549 = !DILocation(line: 1006, column: 147, scope: !2540)
!2550 = !DILocation(line: 1006, column: 157, scope: !2540)
!2551 = !DILocation(line: 1006, column: 182, scope: !2540)
!2552 = !DILocation(line: 1006, column: 113, scope: !2540)
!2553 = !DILocation(line: 1006, column: 201, scope: !2554)
!2554 = !DILexicalBlockFile(scope: !716, file: !6, discriminator: 4)
!2555 = !DILocation(line: 1006, column: 201, scope: !715)
!2556 = !DILocation(line: 1006, column: 201, scope: !2557)
!2557 = !DILexicalBlockFile(scope: !715, file: !6, discriminator: 5)
!2558 = !DILocation(line: 1007, column: 28, scope: !716)
!2559 = !DILocation(line: 1007, column: 9, scope: !716)
!2560 = !DILocation(line: 1008, column: 9, scope: !716)
!2561 = !DILocation(line: 1011, column: 12, scope: !700)
!2562 = !DILocation(line: 1011, column: 5, scope: !700)
!2563 = !DILocation(line: 1012, column: 1, scope: !700)
!2564 = !DILocation(line: 127, column: 22, scope: !718)
!2565 = !DILocation(line: 130, column: 10, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !718, file: !6, line: 130, column: 9)
!2567 = !DILocation(line: 130, column: 16, scope: !2566)
!2568 = !DILocation(line: 130, column: 9, scope: !718)
!2569 = !DILocation(line: 131, column: 9, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2566, file: !6, line: 130, column: 25)
!2571 = !DILocation(line: 131, column: 15, scope: !2570)
!2572 = !DILocation(line: 131, column: 18, scope: !2570)
!2573 = !DILocation(line: 132, column: 62, scope: !2570)
!2574 = !DILocation(line: 132, column: 9, scope: !2570)
!2575 = !DILocation(line: 134, column: 9, scope: !723)
!2576 = !DILocation(line: 134, column: 15, scope: !723)
!2577 = !DILocation(line: 134, column: 9, scope: !718)
!2578 = !DILocation(line: 135, column: 9, scope: !722)
!2579 = !DILocation(line: 135, column: 19, scope: !722)
!2580 = !DILocation(line: 135, column: 43, scope: !722)
!2581 = !DILocation(line: 135, column: 62, scope: !722)
!2582 = !DILocation(line: 135, column: 49, scope: !722)
!2583 = !DILocation(line: 135, column: 23, scope: !722)
!2584 = !DILocation(line: 136, column: 13, scope: !726)
!2585 = !DILocation(line: 136, column: 13, scope: !722)
!2586 = !DILocation(line: 137, column: 13, scope: !726)
!2587 = !DILocation(line: 137, column: 18, scope: !2588)
!2588 = !DILexicalBlockFile(scope: !725, file: !6, discriminator: 1)
!2589 = !DILocation(line: 137, column: 28, scope: !725)
!2590 = !DILocation(line: 137, column: 58, scope: !725)
!2591 = !DILocation(line: 137, column: 70, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !725, file: !6, line: 137, column: 67)
!2593 = !DILocation(line: 137, column: 87, scope: !2592)
!2594 = !DILocation(line: 137, column: 67, scope: !2592)
!2595 = !DILocation(line: 137, column: 97, scope: !2592)
!2596 = !DILocation(line: 137, column: 67, scope: !725)
!2597 = !DILocation(line: 137, column: 67, scope: !2598)
!2598 = !DILexicalBlockFile(scope: !725, file: !6, discriminator: 2)
!2599 = !DILocation(line: 137, column: 128, scope: !2600)
!2600 = !DILexicalBlockFile(scope: !2592, file: !6, discriminator: 3)
!2601 = !DILocation(line: 137, column: 146, scope: !2592)
!2602 = !DILocation(line: 137, column: 156, scope: !2592)
!2603 = !DILocation(line: 137, column: 181, scope: !2592)
!2604 = !DILocation(line: 137, column: 112, scope: !2592)
!2605 = !DILocation(line: 137, column: 200, scope: !2606)
!2606 = !DILexicalBlockFile(scope: !726, file: !6, discriminator: 4)
!2607 = !DILocation(line: 137, column: 200, scope: !725)
!2608 = !DILocation(line: 137, column: 200, scope: !2609)
!2609 = !DILexicalBlockFile(scope: !725, file: !6, discriminator: 5)
!2610 = !DILocation(line: 137, column: 200, scope: !2611)
!2611 = !DILexicalBlockFile(scope: !725, file: !6, discriminator: 6)
!2612 = !DILocation(line: 139, column: 13, scope: !726)
!2613 = !DILocation(line: 140, column: 5, scope: !723)
!2614 = !DILocation(line: 140, column: 5, scope: !722)
!2615 = !DILocation(line: 141, column: 45, scope: !718)
!2616 = !DILocation(line: 141, column: 30, scope: !718)
!2617 = !DILocation(line: 141, column: 7, scope: !718)
!2618 = !DILocation(line: 141, column: 28, scope: !718)
!2619 = !DILocation(line: 142, column: 11, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !718, file: !6, line: 142, column: 9)
!2621 = !DILocation(line: 142, column: 10, scope: !2620)
!2622 = !DILocation(line: 142, column: 32, scope: !2620)
!2623 = !DILocation(line: 142, column: 9, scope: !718)
!2624 = !DILocation(line: 143, column: 9, scope: !2620)
!2625 = !DILocation(line: 146, column: 53, scope: !718)
!2626 = !DILocation(line: 145, column: 12, scope: !718)
!2627 = !DILocation(line: 145, column: 5, scope: !718)
!2628 = !DILocation(line: 147, column: 1, scope: !718)
!2629 = !DILocation(line: 528, column: 25, scope: !739)
!2630 = !DILocation(line: 530, column: 9, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !739, file: !6, line: 530, column: 9)
!2632 = !DILocation(line: 530, column: 15, scope: !2631)
!2633 = !DILocation(line: 530, column: 18, scope: !2631)
!2634 = !DILocation(line: 530, column: 9, scope: !739)
!2635 = !DILocation(line: 531, column: 16, scope: !2631)
!2636 = !DILocation(line: 531, column: 9, scope: !2631)
!2637 = !DILocation(line: 532, column: 9, scope: !744)
!2638 = !DILocation(line: 532, column: 15, scope: !744)
!2639 = !DILocation(line: 532, column: 24, scope: !744)
!2640 = !DILocation(line: 532, column: 9, scope: !739)
!2641 = !DILocation(line: 533, column: 9, scope: !743)
!2642 = !DILocation(line: 533, column: 19, scope: !743)
!2643 = !DILocation(line: 533, column: 40, scope: !743)
!2644 = !DILocation(line: 533, column: 46, scope: !743)
!2645 = !DILocation(line: 533, column: 25, scope: !743)
!2646 = !DILocation(line: 534, column: 13, scope: !748)
!2647 = !DILocation(line: 534, column: 17, scope: !748)
!2648 = !DILocation(line: 534, column: 13, scope: !743)
!2649 = !DILocation(line: 535, column: 13, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !748, file: !6, line: 534, column: 32)
!2651 = !DILocation(line: 536, column: 13, scope: !2650)
!2652 = !DILocation(line: 536, column: 19, scope: !2650)
!2653 = !DILocation(line: 536, column: 28, scope: !2650)
!2654 = !DILocation(line: 537, column: 9, scope: !2650)
!2655 = !DILocation(line: 538, column: 13, scope: !747)
!2656 = !DILocation(line: 538, column: 18, scope: !2657)
!2657 = !DILexicalBlockFile(scope: !746, file: !6, discriminator: 1)
!2658 = !DILocation(line: 538, column: 28, scope: !746)
!2659 = !DILocation(line: 538, column: 58, scope: !746)
!2660 = !DILocation(line: 538, column: 72, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !746, file: !6, line: 538, column: 69)
!2662 = !DILocation(line: 538, column: 89, scope: !2661)
!2663 = !DILocation(line: 538, column: 69, scope: !2661)
!2664 = !DILocation(line: 538, column: 99, scope: !2661)
!2665 = !DILocation(line: 538, column: 69, scope: !746)
!2666 = !DILocation(line: 538, column: 69, scope: !2667)
!2667 = !DILexicalBlockFile(scope: !746, file: !6, discriminator: 2)
!2668 = !DILocation(line: 538, column: 130, scope: !2669)
!2669 = !DILexicalBlockFile(scope: !2661, file: !6, discriminator: 3)
!2670 = !DILocation(line: 538, column: 148, scope: !2661)
!2671 = !DILocation(line: 538, column: 158, scope: !2661)
!2672 = !DILocation(line: 538, column: 183, scope: !2661)
!2673 = !DILocation(line: 538, column: 114, scope: !2661)
!2674 = !DILocation(line: 538, column: 202, scope: !2675)
!2675 = !DILexicalBlockFile(scope: !747, file: !6, discriminator: 4)
!2676 = !DILocation(line: 538, column: 202, scope: !746)
!2677 = !DILocation(line: 538, column: 202, scope: !2678)
!2678 = !DILexicalBlockFile(scope: !746, file: !6, discriminator: 5)
!2679 = !DILocation(line: 539, column: 13, scope: !747)
!2680 = !DILocation(line: 539, column: 19, scope: !747)
!2681 = !DILocation(line: 539, column: 28, scope: !747)
!2682 = !DILocation(line: 541, column: 5, scope: !744)
!2683 = !DILocation(line: 541, column: 5, scope: !743)
!2684 = !DILocation(line: 542, column: 35, scope: !739)
!2685 = !DILocation(line: 542, column: 41, scope: !739)
!2686 = !DILocation(line: 542, column: 28, scope: !739)
!2687 = !DILocation(line: 542, column: 12, scope: !739)
!2688 = !DILocation(line: 542, column: 5, scope: !739)
!2689 = !DILocation(line: 543, column: 1, scope: !739)
!2690 = !DILocation(line: 512, column: 25, scope: !749)
!2691 = !DILocation(line: 514, column: 9, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !749, file: !6, line: 514, column: 9)
!2693 = !DILocation(line: 514, column: 15, scope: !2692)
!2694 = !DILocation(line: 514, column: 18, scope: !2692)
!2695 = !DILocation(line: 514, column: 9, scope: !749)
!2696 = !DILocation(line: 515, column: 16, scope: !2692)
!2697 = !DILocation(line: 515, column: 9, scope: !2692)
!2698 = !DILocation(line: 516, column: 35, scope: !749)
!2699 = !DILocation(line: 516, column: 41, scope: !749)
!2700 = !DILocation(line: 516, column: 28, scope: !749)
!2701 = !DILocation(line: 516, column: 12, scope: !749)
!2702 = !DILocation(line: 516, column: 5, scope: !749)
!2703 = !DILocation(line: 517, column: 1, scope: !749)
!2704 = !DILocation(line: 520, column: 25, scope: !752)
!2705 = !DILocation(line: 522, column: 9, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !752, file: !6, line: 522, column: 9)
!2707 = !DILocation(line: 522, column: 15, scope: !2706)
!2708 = !DILocation(line: 522, column: 18, scope: !2706)
!2709 = !DILocation(line: 522, column: 9, scope: !752)
!2710 = !DILocation(line: 523, column: 16, scope: !2706)
!2711 = !DILocation(line: 523, column: 9, scope: !2706)
!2712 = !DILocation(line: 524, column: 35, scope: !752)
!2713 = !DILocation(line: 524, column: 41, scope: !752)
!2714 = !DILocation(line: 524, column: 28, scope: !752)
!2715 = !DILocation(line: 524, column: 12, scope: !752)
!2716 = !DILocation(line: 524, column: 5, scope: !752)
!2717 = !DILocation(line: 525, column: 1, scope: !752)
!2718 = !DILocation(line: 504, column: 23, scope: !755)
!2719 = !DILocation(line: 506, column: 9, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !755, file: !6, line: 506, column: 9)
!2721 = !DILocation(line: 506, column: 15, scope: !2720)
!2722 = !DILocation(line: 506, column: 18, scope: !2720)
!2723 = !DILocation(line: 506, column: 9, scope: !755)
!2724 = !DILocation(line: 507, column: 16, scope: !2720)
!2725 = !DILocation(line: 507, column: 9, scope: !2720)
!2726 = !DILocation(line: 508, column: 35, scope: !755)
!2727 = !DILocation(line: 508, column: 41, scope: !755)
!2728 = !DILocation(line: 508, column: 28, scope: !755)
!2729 = !DILocation(line: 508, column: 12, scope: !755)
!2730 = !DILocation(line: 508, column: 5, scope: !755)
!2731 = !DILocation(line: 509, column: 1, scope: !755)
!2732 = !DILocation(line: 1066, column: 23, scope: !758)
!2733 = !DILocation(line: 1068, column: 5, scope: !758)
!2734 = !DILocation(line: 1068, column: 10, scope: !758)
!2735 = !DILocation(line: 1070, column: 9, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !758, file: !6, line: 1070, column: 9)
!2737 = !DILocation(line: 1070, column: 15, scope: !2736)
!2738 = !DILocation(line: 1070, column: 18, scope: !2736)
!2739 = !DILocation(line: 1070, column: 9, scope: !758)
!2740 = !DILocation(line: 1071, column: 16, scope: !2736)
!2741 = !DILocation(line: 1071, column: 9, scope: !2736)
!2742 = !DILocation(line: 1072, column: 7, scope: !763)
!2743 = !DILocation(line: 1072, column: 22, scope: !763)
!2744 = !DILocation(line: 1072, column: 37, scope: !763)
!2745 = !DILocation(line: 1072, column: 35, scope: !763)
!2746 = !DILocation(line: 1073, column: 18, scope: !763)
!2747 = !DILocation(line: 1073, column: 24, scope: !763)
!2748 = !DILocation(line: 1073, column: 11, scope: !763)
!2749 = !DILocation(line: 1073, column: 9, scope: !763)
!2750 = !DILocation(line: 1074, column: 26, scope: !763)
!2751 = !DILocation(line: 1074, column: 5, scope: !763)
!2752 = !DILocation(line: 1074, column: 34, scope: !758)
!2753 = !DILocation(line: 1075, column: 28, scope: !758)
!2754 = !DILocation(line: 1075, column: 12, scope: !758)
!2755 = !DILocation(line: 1075, column: 5, scope: !758)
!2756 = !DILocation(line: 1076, column: 1, scope: !758)
!2757 = !DILocation(line: 76, column: 29, scope: !764)
!2758 = !DILocation(line: 76, column: 45, scope: !764)
!2759 = !DILocation(line: 78, column: 9, scope: !770)
!2760 = !DILocation(line: 78, column: 15, scope: !770)
!2761 = !DILocation(line: 78, column: 18, scope: !770)
!2762 = !DILocation(line: 78, column: 23, scope: !770)
!2763 = !DILocation(line: 78, column: 26, scope: !2764)
!2764 = !DILexicalBlockFile(scope: !770, file: !6, discriminator: 1)
!2765 = !DILocation(line: 78, column: 32, scope: !770)
!2766 = !DILocation(line: 78, column: 26, scope: !770)
!2767 = !DILocation(line: 78, column: 9, scope: !764)
!2768 = !DILocation(line: 79, column: 9, scope: !769)
!2769 = !DILocation(line: 79, column: 19, scope: !769)
!2770 = !DILocation(line: 79, column: 25, scope: !769)
!2771 = !DILocation(line: 79, column: 31, scope: !769)
!2772 = !DILocation(line: 80, column: 9, scope: !769)
!2773 = !DILocation(line: 81, column: 30, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !769, file: !6, line: 81, column: 13)
!2775 = !DILocation(line: 82, column: 50, scope: !2774)
!2776 = !DILocation(line: 81, column: 13, scope: !2774)
!2777 = !DILocation(line: 81, column: 13, scope: !769)
!2778 = !DILocation(line: 84, column: 40, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !6, line: 84, column: 17)
!2780 = distinct !DILexicalBlock(scope: !2774, file: !6, line: 82, column: 59)
!2781 = !DILocation(line: 84, column: 17, scope: !2779)
!2782 = !DILocation(line: 84, column: 17, scope: !2780)
!2783 = !DILocation(line: 85, column: 52, scope: !2779)
!2784 = !DILocation(line: 85, column: 39, scope: !2779)
!2785 = !DILocation(line: 85, column: 17, scope: !2779)
!2786 = !DILocation(line: 86, column: 9, scope: !2780)
!2787 = !DILocation(line: 87, column: 23, scope: !769)
!2788 = !DILocation(line: 87, column: 28, scope: !769)
!2789 = !DILocation(line: 87, column: 33, scope: !769)
!2790 = !DILocation(line: 87, column: 9, scope: !769)
!2791 = !DILocation(line: 88, column: 5, scope: !770)
!2792 = !DILocation(line: 88, column: 5, scope: !769)
!2793 = !DILocation(line: 89, column: 58, scope: !764)
!2794 = !DILocation(line: 89, column: 5, scope: !764)
!2795 = !DILocation(line: 1079, column: 25, scope: !773)
!2796 = !DILocation(line: 1081, column: 18, scope: !773)
!2797 = !DILocation(line: 1082, column: 64, scope: !773)
!2798 = !DILocation(line: 1082, column: 52, scope: !773)
!2799 = !DILocation(line: 1082, column: 72, scope: !773)
!2800 = !DILocation(line: 1082, column: 82, scope: !773)
!2801 = !{!1076, !955, i64 24}
!2802 = !DILocation(line: 1081, column: 5, scope: !773)
!2803 = !DILocation(line: 1083, column: 5, scope: !773)
!2804 = !DILocation(line: 489, column: 21, scope: !534)
!2805 = !DILocation(line: 489, column: 5, scope: !534)
!2806 = !DILocation(line: 490, column: 5, scope: !534)
!2807 = !DILocation(line: 494, column: 16, scope: !537)
!2808 = !DILocation(line: 496, column: 5, scope: !537)
!2809 = !DILocation(line: 496, column: 18, scope: !537)
!2810 = !DILocation(line: 496, column: 26, scope: !537)
!2811 = !DILocation(line: 497, column: 9, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !537, file: !6, line: 497, column: 9)
!2813 = !DILocation(line: 497, column: 15, scope: !2812)
!2814 = !DILocation(line: 497, column: 9, scope: !537)
!2815 = !DILocation(line: 498, column: 22, scope: !2812)
!2816 = !DILocation(line: 498, column: 29, scope: !2812)
!2817 = !{!2818, !955, i64 16}
!2818 = !{!"", !967, i64 0, !955, i64 8, !955, i64 16}
!2819 = !DILocation(line: 499, column: 46, scope: !2812)
!2820 = !DILocation(line: 498, column: 9, scope: !2812)
!2821 = !DILocation(line: 501, column: 1, scope: !537)
!2822 = !DILocation(line: 500, column: 5, scope: !537)
!2823 = !DILocation(line: 600, column: 24, scope: !646)
!2824 = !DILocation(line: 600, column: 37, scope: !646)
!2825 = !DILocation(line: 602, column: 5, scope: !646)
!2826 = !DILocation(line: 602, column: 12, scope: !646)
!2827 = !DILocation(line: 608, column: 9, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !646, file: !6, line: 608, column: 9)
!2829 = !DILocation(line: 608, column: 21, scope: !2828)
!2830 = !DILocation(line: 608, column: 9, scope: !646)
!2831 = !DILocation(line: 609, column: 18, scope: !2828)
!2832 = !DILocation(line: 609, column: 30, scope: !2828)
!2833 = !DILocation(line: 609, column: 16, scope: !2828)
!2834 = !DILocation(line: 609, column: 9, scope: !2828)
!2835 = !DILocation(line: 611, column: 24, scope: !2828)
!2836 = !DILocation(line: 611, column: 22, scope: !2828)
!2837 = !DILocation(line: 611, column: 16, scope: !2828)
!2838 = !DILocation(line: 612, column: 9, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !646, file: !6, line: 612, column: 9)
!2840 = !DILocation(line: 612, column: 16, scope: !2839)
!2841 = !DILocation(line: 612, column: 9, scope: !646)
!2842 = !DILocation(line: 614, column: 16, scope: !2839)
!2843 = !DILocation(line: 614, column: 9, scope: !2839)
!2844 = !DILocation(line: 615, column: 12, scope: !646)
!2845 = !DILocation(line: 615, column: 21, scope: !646)
!2846 = !DILocation(line: 615, column: 19, scope: !646)
!2847 = !DILocation(line: 616, column: 1, scope: !646)
!2848 = !DILocation(line: 615, column: 5, scope: !646)
!2849 = !DILocation(line: 517, column: 45, scope: !619)
!2850 = !DILocation(line: 517, column: 66, scope: !619)
!2851 = !DILocation(line: 519, column: 25, scope: !619)
!2852 = !DILocation(line: 519, column: 31, scope: !619)
!2853 = !DILocation(line: 519, column: 10, scope: !619)
!2854 = !DILocation(line: 519, column: 3, scope: !619)
!2855 = !DILocation(line: 833, column: 20, scope: !683)
!2856 = !DILocation(line: 833, column: 34, scope: !683)
!2857 = !DILocation(line: 833, column: 46, scope: !683)
!2858 = !DILocation(line: 835, column: 5, scope: !683)
!2859 = !DILocation(line: 835, column: 14, scope: !683)
!2860 = !DILocation(line: 835, column: 19, scope: !683)
!2861 = !DILocation(line: 839, column: 13, scope: !683)
!2862 = !DILocation(line: 839, column: 5, scope: !683)
!2863 = !DILocation(line: 852, column: 9, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !683, file: !6, line: 852, column: 9)
!2865 = !DILocation(line: 852, column: 16, scope: !2864)
!2866 = !DILocation(line: 852, column: 9, scope: !683)
!2867 = !DILocation(line: 853, column: 13, scope: !2864)
!2868 = !DILocation(line: 853, column: 9, scope: !2864)
!2869 = !DILocation(line: 855, column: 27, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !6, line: 855, column: 12)
!2871 = distinct !DILexicalBlock(scope: !2864, file: !6, line: 854, column: 10)
!2872 = !DILocation(line: 855, column: 37, scope: !2870)
!2873 = !DILocation(line: 855, column: 46, scope: !2870)
!2874 = !DILocation(line: 855, column: 65, scope: !2870)
!2875 = !DILocation(line: 855, column: 99, scope: !2876)
!2876 = !DILexicalBlockFile(scope: !2870, file: !6, discriminator: 1)
!2877 = !DILocation(line: 855, column: 109, scope: !2870)
!2878 = !DILocation(line: 855, column: 68, scope: !2870)
!2879 = !DILocation(line: 855, column: 12, scope: !2871)
!2880 = !DILocation(line: 856, column: 29, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2870, file: !6, line: 855, column: 138)
!2882 = !DILocation(line: 856, column: 13, scope: !2881)
!2883 = !DILocation(line: 857, column: 13, scope: !2881)
!2884 = !DILocation(line: 862, column: 29, scope: !2871)
!2885 = !DILocation(line: 862, column: 15, scope: !2871)
!2886 = !DILocation(line: 862, column: 13, scope: !2871)
!2887 = !DILocation(line: 864, column: 13, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2871, file: !6, line: 864, column: 13)
!2889 = !DILocation(line: 864, column: 13, scope: !2871)
!2890 = !DILocation(line: 865, column: 13, scope: !2888)
!2891 = !DILocation(line: 869, column: 11, scope: !693)
!2892 = !DILocation(line: 869, column: 26, scope: !693)
!2893 = !DILocation(line: 869, column: 41, scope: !693)
!2894 = !DILocation(line: 869, column: 39, scope: !693)
!2895 = !DILocation(line: 873, column: 21, scope: !693)
!2896 = !DILocation(line: 873, column: 25, scope: !693)
!2897 = !DILocation(line: 873, column: 30, scope: !693)
!2898 = !DILocation(line: 873, column: 15, scope: !693)
!2899 = !DILocation(line: 873, column: 13, scope: !693)
!2900 = !DILocation(line: 875, column: 30, scope: !693)
!2901 = !DILocation(line: 875, column: 9, scope: !693)
!2902 = !DILocation(line: 875, column: 38, scope: !694)
!2903 = !DILocation(line: 878, column: 9, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !683, file: !6, line: 878, column: 9)
!2905 = !DILocation(line: 878, column: 13, scope: !2904)
!2906 = !DILocation(line: 878, column: 9, scope: !683)
!2907 = !DILocation(line: 879, column: 35, scope: !2904)
!2908 = !DILocation(line: 879, column: 16, scope: !2904)
!2909 = !DILocation(line: 879, column: 9, scope: !2904)
!2910 = !DILocation(line: 884, column: 28, scope: !683)
!2911 = !DILocation(line: 884, column: 12, scope: !683)
!2912 = !DILocation(line: 884, column: 5, scope: !683)
!2913 = !DILocation(line: 886, column: 1, scope: !683)
!2914 = !DILocation(line: 99, column: 24, scope: !727)
!2915 = !DILocation(line: 101, column: 5, scope: !727)
!2916 = !DILocation(line: 101, column: 9, scope: !727)
!2917 = !DILocation(line: 102, column: 5, scope: !727)
!2918 = !DILocation(line: 102, column: 9, scope: !727)
!2919 = !DILocation(line: 103, column: 9, scope: !734)
!2920 = !DILocation(line: 103, column: 15, scope: !734)
!2921 = !DILocation(line: 103, column: 18, scope: !734)
!2922 = !DILocation(line: 103, column: 9, scope: !727)
!2923 = !DILocation(line: 104, column: 9, scope: !733)
!2924 = !DILocation(line: 104, column: 13, scope: !733)
!2925 = !DILocation(line: 104, column: 18, scope: !733)
!2926 = !DILocation(line: 104, column: 24, scope: !733)
!2927 = !DILocation(line: 105, column: 9, scope: !733)
!2928 = !DILocation(line: 105, column: 15, scope: !733)
!2929 = !DILocation(line: 105, column: 18, scope: !733)
!2930 = !DILocation(line: 108, column: 15, scope: !736)
!2931 = !DILocation(line: 108, column: 30, scope: !736)
!2932 = !DILocation(line: 108, column: 45, scope: !736)
!2933 = !DILocation(line: 108, column: 43, scope: !736)
!2934 = !DILocation(line: 109, column: 25, scope: !736)
!2935 = !DILocation(line: 109, column: 19, scope: !736)
!2936 = !DILocation(line: 109, column: 17, scope: !736)
!2937 = !DILocation(line: 110, column: 17, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !736, file: !6, line: 110, column: 17)
!2939 = !DILocation(line: 110, column: 21, scope: !2938)
!2940 = !DILocation(line: 110, column: 17, scope: !736)
!2941 = !DILocation(line: 111, column: 32, scope: !2938)
!2942 = !DILocation(line: 111, column: 31, scope: !2938)
!2943 = !DILocation(line: 111, column: 28, scope: !2938)
!2944 = !DILocation(line: 111, column: 17, scope: !2938)
!2945 = !DILocation(line: 112, column: 34, scope: !736)
!2946 = !DILocation(line: 112, column: 13, scope: !736)
!2947 = !DILocation(line: 112, column: 42, scope: !737)
!2948 = !DILocation(line: 117, column: 5, scope: !734)
!2949 = !DILocation(line: 117, column: 5, scope: !733)
!2950 = !DILocation(line: 118, column: 9, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !727, file: !6, line: 118, column: 9)
!2952 = !DILocation(line: 118, column: 13, scope: !2951)
!2953 = !DILocation(line: 118, column: 9, scope: !727)
!2954 = !DILocation(line: 119, column: 34, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2951, file: !6, line: 118, column: 18)
!2956 = !DILocation(line: 119, column: 11, scope: !2955)
!2957 = !DILocation(line: 119, column: 32, scope: !2955)
!2958 = !DILocation(line: 120, column: 28, scope: !2955)
!2959 = !DILocation(line: 120, column: 9, scope: !2955)
!2960 = !DILocation(line: 121, column: 9, scope: !2955)
!2961 = !DILocation(line: 123, column: 5, scope: !727)
!2962 = !DILocation(line: 124, column: 1, scope: !727)
!2963 = !DILocation(line: 1193, column: 20, scope: !776)
!2964 = !DILocation(line: 1193, column: 32, scope: !776)
!2965 = !DILocation(line: 1195, column: 35, scope: !776)
!2966 = !DILocation(line: 1195, column: 41, scope: !776)
!2967 = !DILocation(line: 1195, column: 44, scope: !776)
!2968 = !DILocation(line: 1195, column: 28, scope: !776)
!2969 = !DILocation(line: 1195, column: 12, scope: !776)
!2970 = !DILocation(line: 1195, column: 5, scope: !776)
!2971 = !DILocation(line: 1199, column: 21, scope: !782)
!2972 = !DILocation(line: 1199, column: 33, scope: !782)
!2973 = !DILocation(line: 1201, column: 35, scope: !782)
!2974 = !DILocation(line: 1201, column: 41, scope: !782)
!2975 = !DILocation(line: 1201, column: 28, scope: !782)
!2976 = !DILocation(line: 1201, column: 12, scope: !782)
!2977 = !DILocation(line: 1201, column: 5, scope: !782)
!2978 = !DILocation(line: 1205, column: 18, scope: !786)
!2979 = !DILocation(line: 1205, column: 30, scope: !786)
!2980 = !DILocation(line: 1207, column: 45, scope: !786)
!2981 = !DILocation(line: 1207, column: 33, scope: !786)
!2982 = !DILocation(line: 1207, column: 12, scope: !786)
!2983 = !DILocation(line: 1207, column: 5, scope: !786)
!2984 = !DILocation(line: 192, column: 14, scope: !836)
!2985 = !DILocation(line: 195, column: 5, scope: !836)
!2986 = !DILocation(line: 195, column: 17, scope: !836)
!2987 = !DILocation(line: 196, column: 24, scope: !844)
!2988 = !DILocation(line: 196, column: 18, scope: !844)
!2989 = !DILocation(line: 196, column: 34, scope: !844)
!2990 = !DILocation(line: 196, column: 38, scope: !844)
!2991 = !DILocation(line: 196, column: 43, scope: !2992)
!2992 = !DILexicalBlockFile(scope: !844, file: !6, discriminator: 1)
!2993 = !DILocation(line: 196, column: 42, scope: !844)
!2994 = !DILocation(line: 196, column: 64, scope: !844)
!2995 = !DILocation(line: 196, column: 9, scope: !836)
!2996 = !DILocation(line: 197, column: 9, scope: !843)
!2997 = !DILocation(line: 197, column: 19, scope: !843)
!2998 = !DILocation(line: 198, column: 9, scope: !843)
!2999 = !DILocation(line: 198, column: 15, scope: !843)
!3000 = !DILocation(line: 198, column: 21, scope: !843)
!3001 = !DILocation(line: 199, column: 44, scope: !843)
!3002 = !DILocation(line: 200, column: 40, scope: !843)
!3003 = !DILocation(line: 199, column: 15, scope: !843)
!3004 = !DILocation(line: 199, column: 13, scope: !843)
!3005 = !DILocation(line: 201, column: 25, scope: !843)
!3006 = !DILocation(line: 201, column: 40, scope: !843)
!3007 = !DILocation(line: 201, column: 9, scope: !843)
!3008 = !DILocation(line: 202, column: 9, scope: !843)
!3009 = !DILocation(line: 202, column: 14, scope: !3010)
!3010 = !DILexicalBlockFile(scope: !847, file: !6, discriminator: 1)
!3011 = !DILocation(line: 202, column: 24, scope: !847)
!3012 = !DILocation(line: 202, column: 55, scope: !847)
!3013 = !DILocation(line: 202, column: 65, scope: !850)
!3014 = !DILocation(line: 202, column: 81, scope: !850)
!3015 = !DILocation(line: 202, column: 65, scope: !847)
!3016 = !DILocation(line: 202, column: 96, scope: !3017)
!3017 = !DILexicalBlockFile(scope: !850, file: !6, discriminator: 2)
!3018 = !DILocation(line: 202, column: 101, scope: !3019)
!3019 = !DILexicalBlockFile(scope: !849, file: !6, discriminator: 4)
!3020 = !DILocation(line: 202, column: 111, scope: !849)
!3021 = !DILocation(line: 202, column: 141, scope: !849)
!3022 = !DILocation(line: 202, column: 167, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !849, file: !6, line: 202, column: 164)
!3024 = !DILocation(line: 202, column: 184, scope: !3023)
!3025 = !DILocation(line: 202, column: 164, scope: !3023)
!3026 = !DILocation(line: 202, column: 194, scope: !3023)
!3027 = !DILocation(line: 202, column: 164, scope: !849)
!3028 = !DILocation(line: 202, column: 164, scope: !3029)
!3029 = !DILexicalBlockFile(scope: !849, file: !6, discriminator: 5)
!3030 = !DILocation(line: 202, column: 225, scope: !3031)
!3031 = !DILexicalBlockFile(scope: !3023, file: !6, discriminator: 6)
!3032 = !DILocation(line: 202, column: 243, scope: !3023)
!3033 = !DILocation(line: 202, column: 253, scope: !3023)
!3034 = !DILocation(line: 202, column: 278, scope: !3023)
!3035 = !DILocation(line: 202, column: 209, scope: !3023)
!3036 = !DILocation(line: 202, column: 297, scope: !3037)
!3037 = !DILexicalBlockFile(scope: !850, file: !6, discriminator: 7)
!3038 = !DILocation(line: 202, column: 297, scope: !849)
!3039 = !DILocation(line: 202, column: 297, scope: !3040)
!3040 = !DILexicalBlockFile(scope: !849, file: !6, discriminator: 8)
!3041 = !DILocation(line: 202, column: 297, scope: !3042)
!3042 = !DILexicalBlockFile(scope: !849, file: !6, discriminator: 9)
!3043 = !DILocation(line: 202, column: 310, scope: !3044)
!3044 = !DILexicalBlockFile(scope: !3045, file: !6, discriminator: 10)
!3045 = !DILexicalBlockFile(scope: !843, file: !6, discriminator: 3)
!3046 = !DILocation(line: 202, column: 310, scope: !847)
!3047 = !DILocation(line: 202, column: 310, scope: !3048)
!3048 = !DILexicalBlockFile(scope: !847, file: !6, discriminator: 11)
!3049 = !DILocation(line: 203, column: 9, scope: !843)
!3050 = !DILocation(line: 204, column: 5, scope: !844)
!3051 = !DILocation(line: 206, column: 5, scope: !836)
!3052 = !DILocation(line: 207, column: 1, scope: !836)
!3053 = !DILocation(line: 176, column: 18, scope: !851)
!3054 = !DILocation(line: 176, column: 34, scope: !851)
!3055 = !DILocation(line: 179, column: 5, scope: !851)
!3056 = !DILocation(line: 179, column: 17, scope: !851)
!3057 = !DILocation(line: 180, column: 9, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !851, file: !6, line: 180, column: 9)
!3059 = !DILocation(line: 180, column: 15, scope: !3058)
!3060 = !DILocation(line: 180, column: 18, scope: !3058)
!3061 = !DILocation(line: 180, column: 9, scope: !851)
!3062 = !DILocation(line: 181, column: 9, scope: !3058)
!3063 = !DILocation(line: 182, column: 15, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !851, file: !6, line: 182, column: 9)
!3065 = !DILocation(line: 182, column: 21, scope: !3064)
!3066 = !DILocation(line: 182, column: 9, scope: !3064)
!3067 = !DILocation(line: 182, column: 31, scope: !3064)
!3068 = !DILocation(line: 182, column: 36, scope: !3064)
!3069 = !DILocation(line: 182, column: 47, scope: !3070)
!3070 = !DILexicalBlockFile(scope: !3064, file: !6, discriminator: 1)
!3071 = !{!2004, !967, i64 24}
!3072 = !DILocation(line: 182, column: 57, scope: !3064)
!3073 = !DILocation(line: 182, column: 68, scope: !3064)
!3074 = !DILocation(line: 182, column: 9, scope: !851)
!3075 = !DILocation(line: 183, column: 11, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3064, file: !6, line: 182, column: 83)
!3077 = !DILocation(line: 183, column: 32, scope: !3076)
!3078 = !DILocation(line: 184, column: 46, scope: !3076)
!3079 = !DILocation(line: 184, column: 61, scope: !3076)
!3080 = !DILocation(line: 184, column: 9, scope: !3076)
!3081 = !DILocation(line: 185, column: 9, scope: !3076)
!3082 = !DILocation(line: 188, column: 5, scope: !851)
!3083 = !DILocation(line: 189, column: 1, scope: !851)
