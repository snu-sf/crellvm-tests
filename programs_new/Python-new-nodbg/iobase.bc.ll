; ModuleID = './iobase.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, {}*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PyNumberMethods = type { {}*, {}*, {}*, {}*, {}*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*)*, {}*, {}*, {}*, {}*, {}*, %struct._object* (%struct._object*)*, i8*, %struct._object* (%struct._object*)*, {}*, {}*, {}*, {}*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, %struct._object* (%struct._object*)* }
%struct.PySequenceMethods = type { i64 (%struct._object*)*, {}*, %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)*, i8*, i32 (%struct._object*, i64, %struct._object*)*, i8*, i32 (%struct._object*, %struct._object*)*, {}*, %struct._object* (%struct._object*, i64)* }
%struct.PyMappingMethods = type { i64 (%struct._object*)*, {}*, i32 (%struct._object*, %struct._object*, %struct._object*)* }
%struct.PyBufferProcs = type { i32 (%struct._object*, %struct.bufferinfo*, i32)*, void (%struct._object*, %struct.bufferinfo*)* }
%struct.bufferinfo = type { i8*, %struct._object*, i64, i64, i32, i32, i8*, i64*, i64*, i64*, i8* }
%struct.PyMethodDef = type { i8*, {}*, i32, i8* }
%struct.PyMemberDef = type { i8*, i32, i64, i32, i8* }
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct._PyIO_State = type { i32, %struct._object*, %struct._object* }
%struct.iobase = type { %struct._object, %struct._object*, %struct._object* }
%union._gc_head = type { %struct.anon }
%struct.anon = type { %union._gc_head*, %union._gc_head*, i64 }
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }
%struct.PyByteArrayObject = type { %struct.PyVarObject, i64, i8*, i8*, i32 }

@PyExc_ValueError = external global %struct._object*, align 8
@.str = private unnamed_addr constant [30 x i8] c"I/O operation on closed file.\00", align 1
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_NoneStruct = external global %struct._object, align 8
@_PyIO_str_seekable = external global %struct._object*, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"File or stream is not seekable.\00", align 1
@_PyIO_str_readable = external global %struct._object*, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"File or stream is not readable.\00", align 1
@_PyIO_str_writable = external global %struct._object*, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"File or stream is not writable.\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"_io._IOBase\00", align 1
@iobase_doc = internal global [1242 x i8] c"The abstract base class for all I/O classes, acting on streams of\0Abytes. There is no public constructor.\0A\0AThis class provides dummy implementations for many methods that\0Aderived classes can override selectively; the default implementations\0Arepresent a file that cannot be read, written or seeked.\0A\0AEven though IOBase does not declare read, readinto, or write because\0Atheir signatures will vary, implementations and clients should\0Aconsider those methods part of the interface. Also, implementations\0Amay raise UnsupportedOperation when operations they do not support are\0Acalled.\0A\0AThe basic type used for binary data read from or written to a file is\0Abytes. bytearrays are accepted too, and in some cases (such as\0Areadinto) needed. Text I/O classes work with str data.\0A\0ANote that calling any method (except additional calls to close(),\0Awhich are ignored) on a closed stream should raise a ValueError.\0A\0AIOBase (and its subclasses) support the iterator protocol, meaning\0Athat an IOBase object can be iterated over yielding the lines in a\0Astream.\0A\0AIOBase also supports the :keyword:`with` statement. In this example,\0Afp is closed after the suite of the with statement is complete:\0A\0Awith open('spam.txt', 'r') as fp:\0A    fp.write('Spam and eggs!')\0A\00", align 16
@iobase_getset = internal global [3 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* @PyObject_GenericGetDict, i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* @iobase_closed_get, i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@PyIOBase_Type = global { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* } { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i64 32, i64 0, void (%struct._object*)* bitcast (void (%struct.iobase*)* @iobase_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279553, i8* getelementptr inbounds ([1242 x i8], [1242 x i8]* @iobase_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.iobase*, i32 (%struct._object*, i8*)*, i8*)* @iobase_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.iobase*)* @iobase_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 24, %struct._object* (%struct._object*)* @iobase_iter, %struct._object* (%struct._object*)* @iobase_iternext, %struct.PyMethodDef* getelementptr inbounds ([20 x %struct.PyMethodDef], [20 x %struct.PyMethodDef]* bitcast (<{ { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } }>* @iobase_methods to [20 x %struct.PyMethodDef]*), i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* getelementptr inbounds ([3 x %struct.PyGetSetDef], [3 x %struct.PyGetSetDef]* @iobase_getset, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyType_GenericNew, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* @iobase_finalize }, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"_io._RawIOBase\00", align 1
@rawiobase_doc = internal global [31 x i8] c"Base class for raw binary I/O.\00", align 16
@PyRawIOBase_Type = global { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* } { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i64 0, i64 0, void (%struct._object*)* null, i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 263169, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @rawiobase_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* bitcast (<{ { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } }>* @rawiobase_methods to [3 x %struct.PyMethodDef]*), i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyIOBase_Type to %struct._typeobject*), %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@_PyIO_str_closed = external global %struct._object*, align 8
@_PyIO_str_readline = external global %struct._object*, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"seek\00", align 1
@iobase_seek_doc = internal global [386 x i8] c"Change stream position.\0A\0AChange the stream position to the given byte offset. The offset is\0Ainterpreted relative to the position indicated by whence.  Values\0Afor whence are:\0A\0A* 0 -- start of stream (the default); offset should be zero or positive\0A* 1 -- current stream position; offset may be negative\0A* 2 -- end of stream; offset is usually negative\0A\0AReturn the new absolute position.\00", align 16
@.str.7 = private unnamed_addr constant [5 x i8] c"tell\00", align 1
@iobase_tell_doc = internal global [32 x i8] c"Return current stream position.\00", align 16
@.str.8 = private unnamed_addr constant [9 x i8] c"truncate\00", align 1
@iobase_truncate_doc = internal global [150 x i8] c"Truncate file to size bytes.\0A\0AFile pointer is left unchanged.  Size defaults to the current IO\0Aposition as reported by tell().  Returns the new size.\00", align 16
@.str.9 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@iobase_flush_doc = internal global [102 x i8] c"Flush write buffers, if applicable.\0A\0AThis is not implemented for read-only and non-blocking streams.\0A\00", align 16
@.str.10 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@iobase_close_doc = internal global [90 x i8] c"Flush and close the IO object.\0A\0AThis method has no effect if the file is already closed.\0A\00", align 16
@.str.11 = private unnamed_addr constant [9 x i8] c"seekable\00", align 1
@iobase_seekable_doc = internal global [162 x i8] c"Return whether object supports random access.\0A\0AIf False, seek(), tell() and truncate() will raise UnsupportedOperation.\0AThis method may need to do a test seek().\00", align 16
@.str.12 = private unnamed_addr constant [9 x i8] c"readable\00", align 1
@iobase_readable_doc = internal global [97 x i8] c"Return whether object was opened for reading.\0A\0AIf False, read() will raise UnsupportedOperation.\00", align 16
@.str.13 = private unnamed_addr constant [9 x i8] c"writable\00", align 1
@iobase_writable_doc = internal global [98 x i8] c"Return whether object was opened for writing.\0A\0AIf False, write() will raise UnsupportedOperation.\00", align 16
@.str.14 = private unnamed_addr constant [13 x i8] c"_checkClosed\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"_checkSeekable\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"_checkReadable\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"_checkWritable\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"fileno\00", align 1
@iobase_fileno_doc = internal global [122 x i8] c"Returns underlying file descriptor if one exists.\0A\0AAn IOError is raised if the IO object does not use a file descriptor.\0A\00", align 16
@.str.19 = private unnamed_addr constant [7 x i8] c"isatty\00", align 1
@iobase_isatty_doc = internal global [90 x i8] c"Return whether this is an 'interactive' stream.\0A\0AReturn False if it can't be determined.\0A\00", align 16
@.str.20 = private unnamed_addr constant [10 x i8] c"__enter__\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"__exit__\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"readline\00", align 1
@iobase_readline_doc = internal global [257 x i8] c"Read and return a line from the stream.\0A\0AIf limit is specified, at most limit bytes will be read.\0A\0AThe line terminator is always b'\5Cn' for binary files; for text\0Afiles, the newlines argument to open can be used to select the line\0Aterminator(s) recognized.\0A\00", align 16
@.str.23 = private unnamed_addr constant [10 x i8] c"readlines\00", align 1
@iobase_readlines_doc = internal global [201 x i8] c"Return a list of lines from the stream.\0A\0Ahint can be specified to control the number of lines read: no more\0Alines will be read if the total size (in bytes/characters) of all\0Alines so far exceeds hint.\00", align 16
@.str.24 = private unnamed_addr constant [11 x i8] c"writelines\00", align 1
@iobase_methods = internal global <{ { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } }> <{ { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @iobase_seek, i32 1, i8* getelementptr inbounds ([386 x i8], [386 x i8]* @iobase_seek_doc, i32 0, i32 0) }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @iobase_tell, i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @iobase_tell_doc, i32 0, i32 0) }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @iobase_truncate, i32 1, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @iobase_truncate_doc, i32 0, i32 0) }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @iobase_flush, i32 4, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @iobase_flush_doc, i32 0, i32 0) }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @iobase_close, i32 4, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @iobase_close_doc, i32 0, i32 0) }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @iobase_seekable, i32 4, i8* getelementptr inbounds ([162 x i8], [162 x i8]* @iobase_seekable_doc, i32 0, i32 0) }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @iobase_readable, i32 4, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @iobase_readable_doc, i32 0, i32 0) }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @iobase_writable, i32 4, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @iobase_writable_doc, i32 0, i32 0) }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @_PyIOBase_check_closed, i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @_PyIOBase_check_seekable, i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @_PyIOBase_check_readable, i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @_PyIOBase_check_writable, i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @iobase_fileno, i32 4, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @iobase_fileno_doc, i32 0, i32 0) }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @iobase_isatty, i32 4, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @iobase_isatty_doc, i32 0, i32 0) }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @iobase_enter, i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @iobase_exit, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @iobase_readline, i32 1, i8* getelementptr inbounds ([257 x i8], [257 x i8]* @iobase_readline_doc, i32 0, i32 0) }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @iobase_readlines, i32 1, i8* getelementptr inbounds ([201 x i8], [201 x i8]* @iobase_readlines_doc, i32 0, i32 0) }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @iobase_writelines, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } zeroinitializer }>, align 16
@iobase_tell.PyId_seek = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), %struct._object* null }, align 8
@.str.25 = private unnamed_addr constant [3 x i8] c"ii\00", align 1
@PyId___IOBase_closed = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), %struct._object* null }, align 8
@.str.26 = private unnamed_addr constant [16 x i8] c"__IOBase_closed\00", align 1
@_PyIO_str_flush = external global %struct._object*, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@_PyIO_str_close = external global %struct._object*, align 8
@iobase_readline.PyId_peek = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), %struct._object* null }, align 8
@.str.27 = private unnamed_addr constant [5 x i8] c"peek\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"|O&:readline\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@PyExc_IOError = external global %struct._object*, align 8
@.str.30 = private unnamed_addr constant [57 x i8] c"peek() should have returned a bytes object, not '%.200s'\00", align 1
@PyId_read = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), %struct._object* null }, align 8
@.str.31 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.32 = private unnamed_addr constant [57 x i8] c"read() should have returned a bytes object, not '%.200s'\00", align 1
@_PyByteArray_empty_string = external global [0 x i8], align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"|O&:readlines\00", align 1
@iobase_readlines.PyId_extend = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), %struct._object* null }, align 8
@.str.35 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"O:writelines\00", align 1
@_PyIO_str_write = external global %struct._object*, align 8
@.str.38 = private unnamed_addr constant [9 x i8] c"__dict__\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@iobase_finalize.PyId__finalizing = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), %struct._object* null }, align 8
@.str.40 = private unnamed_addr constant [12 x i8] c"_finalizing\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"readall\00", align 1
@rawiobase_readall_doc = internal global [44 x i8] c"Read until EOF, using multiple read() call.\00", align 16
@rawiobase_methods = internal global <{ { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } }> <{ { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @rawiobase_read, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @rawiobase_readall, i32 4, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @rawiobase_readall_doc, i32 0, i32 0) }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } zeroinitializer }>, align 16
@.str.42 = private unnamed_addr constant [8 x i8] c"|n:read\00", align 1
@rawiobase_read.PyId_readall = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), %struct._object* null }, align 8
@_PyIO_str_readinto = external global %struct._object*, align 8
@PyExc_TypeError = external global %struct._object*, align 8
@.str.43 = private unnamed_addr constant [27 x i8] c"read() should return bytes\00", align 1
@_PyIO_empty_bytes = external global %struct._object*, align 8

; Function Attrs: nounwind uwtable
define %struct._object* @_PyIOBase_check_closed(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %call = call i32 @iobase_closed(%struct._object* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %cmp = icmp eq %struct._object* %2, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0)
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.1, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal i32 @iobase_closed(%struct._object* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %closed = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = load %struct._object*, %struct._object** @_PyIO_str_closed, align 8
  %call = call %struct._object* @PyObject_GetAttr(%struct._object* %0, %struct._object* %1)
  store %struct._object* %call, %struct._object** %res, align 8
  %2 = load %struct._object*, %struct._object** %res, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %res, align 8
  %call1 = call i32 @PyObject_IsTrue(%struct._object* %3)
  store i32 %call1, i32* %closed, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %res, align 8
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
  %11 = load i32, i32* %closed, align 4
  store i32 %11, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @_PyIOBase_finalize(%struct._object* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %is_zombie = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 0
  %1 = load i64, i64* %ob_refcnt, align 8
  %cmp = icmp eq i64 %1, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %is_zombie, align 4
  %2 = load i32, i32* %is_zombie, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %self.addr, align 8
  %call = call i32 @PyObject_CallFinalizerFromDealloc(%struct._object* %3)
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %self.addr, align 8
  call void @PyObject_CallFinalizer(%struct._object* %4)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare i32 @PyObject_CallFinalizerFromDealloc(%struct._object*) #1

declare void @PyObject_CallFinalizer(%struct._object*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @_PyIOBase_check_seekable(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp16 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = load %struct._object*, %struct._object** @_PyIO_str_seekable, align 8
  %call = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %0, %struct._object* %1, i8* null)
  store %struct._object* %call, %struct._object** %res, align 8
  %2 = load %struct._object*, %struct._object** %res, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %res, align 8
  %cmp1 = icmp ne %struct._object* %3, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0)
  br i1 %cmp1, label %if.then.2, label %if.end.12

if.then.2:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.2
  %4 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %4, %struct._object** %_py_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp3 = icmp ne %struct._object* %5, null
  br i1 %cmp3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %do.body
  store %struct._object* null, %struct._object** %res, align 8
  br label %do.body.5

do.body.5:                                        ; preds = %if.then.4
  %6 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body.5
  br label %if.end.8

if.else:                                          ; preds = %do.body.5
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %if.end.9

if.end.9:                                         ; preds = %do.end, %do.body
  br label %do.end.10

do.end.10:                                        ; preds = %if.end.9
  %call11 = call %struct._object* @iobase_unsupported(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %13 = load %struct._object*, %struct._object** %args.addr, align 8
  %cmp13 = icmp eq %struct._object* %13, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0)
  br i1 %cmp13, label %if.then.14, label %if.end.26

if.then.14:                                       ; preds = %if.end.12
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.14
  %14 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp16, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt17, align 8
  %dec18 = add i64 %16, -1
  store i64 %dec18, i64* %ob_refcnt17, align 8
  %cmp19 = icmp ne i64 %dec18, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.15
  br label %if.end.24

if.else.21:                                       ; preds = %do.body.15
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %tp_dealloc23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc23, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  call void %19(%struct._object* %20)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21, %if.then.20
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  br label %if.end.26

if.end.26:                                        ; preds = %do.end.25, %if.end.12
  %21 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %21, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.26, %do.end.10, %if.then
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
}

declare %struct._object* @PyObject_CallMethodObjArgs(%struct._object*, %struct._object*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_unsupported(i8* %message) #0 {
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

; Function Attrs: nounwind uwtable
define %struct._object* @_PyIOBase_check_readable(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp16 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = load %struct._object*, %struct._object** @_PyIO_str_readable, align 8
  %call = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %0, %struct._object* %1, i8* null)
  store %struct._object* %call, %struct._object** %res, align 8
  %2 = load %struct._object*, %struct._object** %res, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %res, align 8
  %cmp1 = icmp ne %struct._object* %3, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0)
  br i1 %cmp1, label %if.then.2, label %if.end.12

if.then.2:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.2
  %4 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %4, %struct._object** %_py_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp3 = icmp ne %struct._object* %5, null
  br i1 %cmp3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %do.body
  store %struct._object* null, %struct._object** %res, align 8
  br label %do.body.5

do.body.5:                                        ; preds = %if.then.4
  %6 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body.5
  br label %if.end.8

if.else:                                          ; preds = %do.body.5
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %if.end.9

if.end.9:                                         ; preds = %do.end, %do.body
  br label %do.end.10

do.end.10:                                        ; preds = %if.end.9
  %call11 = call %struct._object* @iobase_unsupported(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %13 = load %struct._object*, %struct._object** %args.addr, align 8
  %cmp13 = icmp eq %struct._object* %13, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0)
  br i1 %cmp13, label %if.then.14, label %if.end.26

if.then.14:                                       ; preds = %if.end.12
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.14
  %14 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp16, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt17, align 8
  %dec18 = add i64 %16, -1
  store i64 %dec18, i64* %ob_refcnt17, align 8
  %cmp19 = icmp ne i64 %dec18, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.15
  br label %if.end.24

if.else.21:                                       ; preds = %do.body.15
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %tp_dealloc23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc23, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  call void %19(%struct._object* %20)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21, %if.then.20
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  br label %if.end.26

if.end.26:                                        ; preds = %do.end.25, %if.end.12
  %21 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %21, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.26, %do.end.10, %if.then
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyIOBase_check_writable(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp16 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = load %struct._object*, %struct._object** @_PyIO_str_writable, align 8
  %call = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %0, %struct._object* %1, i8* null)
  store %struct._object* %call, %struct._object** %res, align 8
  %2 = load %struct._object*, %struct._object** %res, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %res, align 8
  %cmp1 = icmp ne %struct._object* %3, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0)
  br i1 %cmp1, label %if.then.2, label %if.end.12

if.then.2:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.2
  %4 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %4, %struct._object** %_py_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp3 = icmp ne %struct._object* %5, null
  br i1 %cmp3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %do.body
  store %struct._object* null, %struct._object** %res, align 8
  br label %do.body.5

do.body.5:                                        ; preds = %if.then.4
  %6 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body.5
  br label %if.end.8

if.else:                                          ; preds = %do.body.5
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %if.end.9

if.end.9:                                         ; preds = %do.end, %do.body
  br label %do.end.10

do.end.10:                                        ; preds = %if.end.9
  %call11 = call %struct._object* @iobase_unsupported(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %13 = load %struct._object*, %struct._object** %args.addr, align 8
  %cmp13 = icmp eq %struct._object* %13, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0)
  br i1 %cmp13, label %if.then.14, label %if.end.26

if.then.14:                                       ; preds = %if.end.12
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.14
  %14 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp16, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt17, align 8
  %dec18 = add i64 %16, -1
  store i64 %dec18, i64* %ob_refcnt17, align 8
  %cmp19 = icmp ne i64 %dec18, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.15
  br label %if.end.24

if.else.21:                                       ; preds = %do.body.15
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %tp_dealloc23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc23, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  call void %19(%struct._object* %20)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21, %if.then.20
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  br label %if.end.26

if.end.26:                                        ; preds = %do.end.25, %if.end.12
  %21 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %21, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.26, %do.end.10, %if.then
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
}

; Function Attrs: nounwind uwtable
define internal void @iobase_dealloc(%struct.iobase* %self) #0 {
entry:
  %self.addr = alloca %struct.iobase*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.iobase* %self, %struct.iobase** %self.addr, align 8
  %0 = load %struct.iobase*, %struct.iobase** %self.addr, align 8
  %1 = bitcast %struct.iobase* %0 to %struct._object*
  %call = call i32 @_PyIOBase_finalize(%struct._object* %1)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %2 = load %struct.iobase*, %struct.iobase** %self.addr, align 8
  %3 = bitcast %struct.iobase* %2 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 512
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %6 = load %struct.iobase*, %struct.iobase** %self.addr, align 8
  %7 = bitcast %struct.iobase* %6 to %struct._object*
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %9 = bitcast %struct._typeobject* %8 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %return

if.end.4:                                         ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %11 = load %struct.iobase*, %struct.iobase** %self.addr, align 8
  %12 = bitcast %struct.iobase* %11 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %12, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  br label %do.body.5

do.body.5:                                        ; preds = %do.body
  %13 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %13 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %14 = load i64, i64* %gc_refs, align 8
  %and6 = and i64 %14, 1
  %or = or i64 %and6, -4
  %15 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc7 = bitcast %union._gc_head* %15 to %struct.anon*
  %gc_refs8 = getelementptr inbounds %struct.anon, %struct.anon* %gc7, i32 0, i32 2
  store i64 %or, i64* %gc_refs8, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.5
  %16 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc9 = bitcast %union._gc_head* %16 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc9, i32 0, i32 0
  %17 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  %18 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc10 = bitcast %union._gc_head* %18 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 1
  %19 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %gc11 = bitcast %union._gc_head* %19 to %struct.anon*
  %gc_next12 = getelementptr inbounds %struct.anon, %struct.anon* %gc11, i32 0, i32 0
  store %union._gc_head* %17, %union._gc_head** %gc_next12, align 8
  %20 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc13 = bitcast %union._gc_head* %20 to %struct.anon*
  %gc_prev14 = getelementptr inbounds %struct.anon, %struct.anon* %gc13, i32 0, i32 1
  %21 = load %union._gc_head*, %union._gc_head** %gc_prev14, align 8
  %22 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc15 = bitcast %union._gc_head* %22 to %struct.anon*
  %gc_next16 = getelementptr inbounds %struct.anon, %struct.anon* %gc15, i32 0, i32 0
  %23 = load %union._gc_head*, %union._gc_head** %gc_next16, align 8
  %gc17 = bitcast %union._gc_head* %23 to %struct.anon*
  %gc_prev18 = getelementptr inbounds %struct.anon, %struct.anon* %gc17, i32 0, i32 1
  store %union._gc_head* %21, %union._gc_head** %gc_prev18, align 8
  %24 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc19 = bitcast %union._gc_head* %24 to %struct.anon*
  %gc_next20 = getelementptr inbounds %struct.anon, %struct.anon* %gc19, i32 0, i32 0
  store %union._gc_head* null, %union._gc_head** %gc_next20, align 8
  br label %do.end.21

do.end.21:                                        ; preds = %do.end
  %25 = load %struct.iobase*, %struct.iobase** %self.addr, align 8
  %weakreflist = getelementptr inbounds %struct.iobase, %struct.iobase* %25, i32 0, i32 2
  %26 = load %struct._object*, %struct._object** %weakreflist, align 8
  %cmp22 = icmp ne %struct._object* %26, null
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %do.end.21
  %27 = load %struct.iobase*, %struct.iobase** %self.addr, align 8
  %28 = bitcast %struct.iobase* %27 to %struct._object*
  call void @PyObject_ClearWeakRefs(%struct._object* %28)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %do.end.21
  br label %do.body.25

do.body.25:                                       ; preds = %if.end.24
  %29 = load %struct.iobase*, %struct.iobase** %self.addr, align 8
  %dict = getelementptr inbounds %struct.iobase, %struct.iobase* %29, i32 0, i32 1
  %30 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %30, %struct._object** %_py_tmp, align 8
  %31 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp26 = icmp ne %struct._object* %31, null
  br i1 %cmp26, label %if.then.27, label %if.end.36

if.then.27:                                       ; preds = %do.body.25
  %32 = load %struct.iobase*, %struct.iobase** %self.addr, align 8
  %dict28 = getelementptr inbounds %struct.iobase, %struct.iobase* %32, i32 0, i32 1
  store %struct._object* null, %struct._object** %dict28, align 8
  br label %do.body.29

do.body.29:                                       ; preds = %if.then.27
  %33 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt30, align 8
  %dec = add i64 %35, -1
  store i64 %dec, i64* %ob_refcnt30, align 8
  %cmp31 = icmp ne i64 %dec, 0
  br i1 %cmp31, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %do.body.29
  br label %if.end.34

if.else:                                          ; preds = %do.body.29
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %38(%struct._object* %39)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %if.then.32
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  br label %if.end.36

if.end.36:                                        ; preds = %do.end.35, %do.body.25
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  %40 = load %struct.iobase*, %struct.iobase** %self.addr, align 8
  %41 = bitcast %struct.iobase* %40 to %struct._object*
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 38
  %43 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %44 = load %struct.iobase*, %struct.iobase** %self.addr, align 8
  %45 = bitcast %struct.iobase* %44 to %struct._object*
  %46 = bitcast %struct._object* %45 to i8*
  call void %43(i8* %46)
  br label %return

return:                                           ; preds = %do.end.37, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @iobase_traverse(%struct.iobase* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.iobase*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  store %struct.iobase* %self, %struct.iobase** %self.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.iobase*, %struct.iobase** %self.addr, align 8
  %dict = getelementptr inbounds %struct.iobase, %struct.iobase* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %dict, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.iobase*, %struct.iobase** %self.addr, align 8
  %dict1 = getelementptr inbounds %struct.iobase, %struct.iobase* %3, i32 0, i32 1
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
define internal i32 @iobase_clear(%struct.iobase* %self) #0 {
entry:
  %self.addr = alloca %struct.iobase*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.iobase* %self, %struct.iobase** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.iobase*, %struct.iobase** %self.addr, align 8
  %dict = getelementptr inbounds %struct.iobase, %struct.iobase* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %1, %struct._object** %_py_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %3 = load %struct.iobase*, %struct.iobase** %self.addr, align 8
  %dict1 = getelementptr inbounds %struct.iobase, %struct.iobase* %3, i32 0, i32 1
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
define internal %struct._object* @iobase_iter(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %call = call %struct._object* @_PyIOBase_check_closed(%struct._object* %0, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0))
  %cmp = icmp eq %struct._object* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0
  %2 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %3 = load %struct._object*, %struct._object** %self.addr, align 8
  store %struct._object* %3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_iternext(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %line = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = load %struct._object*, %struct._object** @_PyIO_str_readline, align 8
  %call = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %0, %struct._object* %1, i8* null)
  store %struct._object* %call, %struct._object** %line, align 8
  %2 = load %struct._object*, %struct._object** %line, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %line, align 8
  %call1 = call i64 @PyObject_Size(%struct._object* %3)
  %cmp2 = icmp eq i64 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %4 = load %struct._object*, %struct._object** %line, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %line, align 8
  store %struct._object* %11, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %do.end, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

declare %struct._object* @PyType_GenericNew(%struct._typeobject*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal void @iobase_finalize(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %error_type = alloca %struct._object*, align 8
  %error_value = alloca %struct._object*, align 8
  %error_traceback = alloca %struct._object*, align 8
  %closed = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  call void @PyErr_Fetch(%struct._object** %error_type, %struct._object** %error_value, %struct._object** %error_traceback)
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = load %struct._object*, %struct._object** @_PyIO_str_closed, align 8
  %call = call %struct._object* @PyObject_GetAttr(%struct._object* %0, %struct._object* %1)
  store %struct._object* %call, %struct._object** %res, align 8
  %2 = load %struct._object*, %struct._object** %res, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @PyErr_Clear()
  store i32 -1, i32* %closed, align 4
  br label %if.end.8

if.else:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %res, align 8
  %call1 = call i32 @PyObject_IsTrue(%struct._object* %3)
  store i32 %call1, i32* %closed, align 4
  br label %do.body

do.body:                                          ; preds = %if.else
  %4 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body
  br label %if.end

if.else.4:                                        ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  %11 = load i32, i32* %closed, align 4
  %cmp5 = icmp eq i32 %11, -1
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %do.end
  call void @PyErr_Clear()
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %do.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then
  %12 = load i32, i32* %closed, align 4
  %cmp9 = icmp eq i32 %12, 0
  br i1 %cmp9, label %if.then.10, label %if.end.30

if.then.10:                                       ; preds = %if.end.8
  %13 = load %struct._object*, %struct._object** %self.addr, align 8
  %call11 = call i32 @_PyObject_SetAttrId(%struct._object* %13, %struct._Py_Identifier* @iobase_finalize.PyId__finalizing, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0))
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.10
  call void @PyErr_Clear()
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.10
  %14 = load %struct._object*, %struct._object** %self.addr, align 8
  %15 = load %struct._object*, %struct._object** @_PyIO_str_close, align 8
  %call14 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %14, %struct._object* %15, i8* null)
  store %struct._object* %call14, %struct._object** %res, align 8
  %16 = load %struct._object*, %struct._object** %res, align 8
  %cmp15 = icmp eq %struct._object* %16, null
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.end.13
  call void @PyErr_Clear()
  br label %if.end.29

if.else.17:                                       ; preds = %if.end.13
  br label %do.body.18

do.body.18:                                       ; preds = %if.else.17
  %17 = load %struct._object*, %struct._object** %res, align 8
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
  br label %if.end.29

if.end.29:                                        ; preds = %do.end.28, %if.then.16
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.8
  %24 = load %struct._object*, %struct._object** %error_type, align 8
  %25 = load %struct._object*, %struct._object** %error_value, align 8
  %26 = load %struct._object*, %struct._object** %error_traceback, align 8
  call void @PyErr_Restore(%struct._object* %24, %struct._object* %25, %struct._object* %26)
  ret void
}

declare %struct._object* @PyObject_GetAttr(%struct._object*, %struct._object*) #1

declare i32 @PyObject_IsTrue(%struct._object*) #1

declare %struct._PyIO_State* @_PyIO_get_module_state() #1

declare void @PyObject_ClearWeakRefs(%struct._object*) #1

declare i64 @PyObject_Size(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_seek(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %call = call %struct._object* @iobase_unsupported(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_tell(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %0, %struct._Py_Identifier* @iobase_tell.PyId_seek, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i32 0, i32 1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_truncate(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %call = call %struct._object* @iobase_unsupported(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_flush(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %call = call i32 @_PyObject_HasAttrId(%struct._object* %0, %struct._Py_Identifier* @PyId___IOBase_closed)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_close(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp17 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %call = call i32 @_PyObject_HasAttrId(%struct._object* %0, %struct._Py_Identifier* @PyId___IOBase_closed)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %self.addr, align 8
  %3 = load %struct._object*, %struct._object** @_PyIO_str_flush, align 8
  %call1 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %2, %struct._object* %3, i8* null)
  store %struct._object* %call1, %struct._object** %res, align 8
  %4 = load %struct._object*, %struct._object** %self.addr, align 8
  %call2 = call i32 @_PyObject_SetAttrId(%struct._object* %4, %struct._Py_Identifier* @PyId___IOBase_closed, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0))
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then.3, label %if.end.12

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %5 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %5, %struct._object** %_py_xdecref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp4 = icmp ne %struct._object* %6, null
  br i1 %cmp4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %do.body
  br label %do.body.6

do.body.6:                                        ; preds = %if.then.5
  %7 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body.6
  br label %if.end.9

if.else:                                          ; preds = %do.body.6
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  br label %if.end.10

if.end.10:                                        ; preds = %do.end, %do.body
  br label %do.end.11

do.end.11:                                        ; preds = %if.end.10
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %14 = load %struct._object*, %struct._object** %res, align 8
  %cmp13 = icmp eq %struct._object* %14, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.12
  br label %do.body.16

do.body.16:                                       ; preds = %if.end.15
  %15 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp17, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt18, align 8
  %dec19 = add i64 %17, -1
  store i64 %dec19, i64* %ob_refcnt18, align 8
  %cmp20 = icmp ne i64 %dec19, 0
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body.16
  br label %if.end.25

if.else.22:                                       ; preds = %do.body.16
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_dealloc24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc24, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8
  call void %20(%struct._object* %21)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.22, %if.then.21
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  %22 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc27 = add i64 %22, 1
  store i64 %inc27, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.26, %if.then.14, %do.end.11, %if.then
  %23 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %23
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_seekable(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  ret %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_readable(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  ret %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_writable(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  ret %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_fileno(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %call = call %struct._object* @iobase_unsupported(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_isatty(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %call = call %struct._object* @_PyIOBase_check_closed(%struct._object* %0, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0))
  %cmp = icmp eq %struct._object* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_enter(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %call = call %struct._object* @_PyIOBase_check_closed(%struct._object* %0, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0))
  %cmp = icmp eq %struct._object* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0
  %2 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %3 = load %struct._object*, %struct._object** %self.addr, align 8
  store %struct._object* %3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_exit(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = load %struct._object*, %struct._object** @_PyIO_str_close, align 8
  %call = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %0, %struct._object* %1, i8* null)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_readline(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %limit = alloca i64, align 8
  %has_peek = alloca i32, align 4
  %buffer = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %old_size = alloca i64, align 8
  %nreadahead = alloca i64, align 8
  %b = alloca %struct._object*, align 8
  %readahead = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %buf = alloca i8*, align 8
  %_py_decref_tmp64 = alloca %struct._object*, align 8
  %_py_decref_tmp96 = alloca %struct._object*, align 8
  %_py_decref_tmp114 = alloca %struct._object*, align 8
  %_py_decref_tmp134 = alloca %struct._object*, align 8
  %_py_decref_tmp153 = alloca %struct._object*, align 8
  %_py_decref_tmp189 = alloca %struct._object*, align 8
  %_py_decref_tmp202 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 -1, i64* %limit, align 8
  store i32 0, i32* %has_peek, align 4
  store i64 -1, i64* %old_size, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i32 (%struct._object*, i8*)* @_PyIO_ConvertSsize_t, i64* %limit)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %self.addr, align 8
  %call1 = call i32 @_PyObject_HasAttrId(%struct._object* %1, %struct._Py_Identifier* @iobase_readline.PyId_peek)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 1, i32* %has_peek, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %call5 = call %struct._object* @PyByteArray_FromStringAndSize(i8* null, i64 0)
  store %struct._object* %call5, %struct._object** %buffer, align 8
  %2 = load %struct._object*, %struct._object** %buffer, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.4
  br label %while.cond

while.cond:                                       ; preds = %if.end.178, %if.then.83, %if.then.17, %if.end.7
  %3 = load i64, i64* %limit, align 8
  %cmp8 = icmp slt i64 %3, 0
  br i1 %cmp8, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %4 = load %struct._object*, %struct._object** %buffer, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ob_size, align 8
  %7 = load i64, i64* %limit, align 8
  %cmp9 = icmp slt i64 %6, %7
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %8 = phi i1 [ true, %while.cond ], [ %cmp9, %lor.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  store i64 1, i64* %nreadahead, align 8
  %9 = load i32, i32* %has_peek, align 4
  %tobool10 = icmp ne i32 %9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.76

if.then.11:                                       ; preds = %while.body
  %10 = load %struct._object*, %struct._object** %self.addr, align 8
  %call12 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %10, %struct._Py_Identifier* @iobase_readline.PyId_peek, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i32 1)
  store %struct._object* %call12, %struct._object** %readahead, align 8
  %11 = load %struct._object*, %struct._object** %readahead, align 8
  %cmp13 = icmp eq %struct._object* %11, null
  br i1 %cmp13, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %if.then.11
  %call15 = call i32 @_PyIO_trap_eintr()
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.14
  br label %while.cond

if.end.18:                                        ; preds = %if.then.14
  br label %fail

if.end.19:                                        ; preds = %if.then.11
  %12 = load %struct._object*, %struct._object** %readahead, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 19
  %14 = load i64, i64* %tp_flags, align 8
  %and = and i64 %14, 134217728
  %cmp20 = icmp ne i64 %and, 0
  br i1 %cmp20, label %if.end.28, label %if.then.21

if.then.21:                                       ; preds = %if.end.19
  %15 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %16 = load %struct._object*, %struct._object** %readahead, align 8
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 1
  %18 = load i8*, i8** %tp_name, align 8
  %call23 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %15, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.30, i32 0, i32 0), i8* %18)
  br label %do.body

do.body:                                          ; preds = %if.then.21
  %19 = load %struct._object*, %struct._object** %readahead, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp24 = icmp ne i64 %dec, 0
  br i1 %cmp24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %do.body
  br label %if.end.27

if.else:                                          ; preds = %do.body
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %24(%struct._object* %25)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.25
  br label %do.end

do.end:                                           ; preds = %if.end.27
  br label %fail

if.end.28:                                        ; preds = %if.end.19
  %26 = load %struct._object*, %struct._object** %readahead, align 8
  %27 = bitcast %struct._object* %26 to %struct.PyVarObject*
  %ob_size29 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %27, i32 0, i32 1
  %28 = load i64, i64* %ob_size29, align 8
  %cmp30 = icmp sgt i64 %28, 0
  br i1 %cmp30, label %if.then.31, label %if.end.62

if.then.31:                                       ; preds = %if.end.28
  store i64 0, i64* %n, align 8
  %29 = load %struct._object*, %struct._object** %readahead, align 8
  %30 = bitcast %struct._object* %29 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %30, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %buf, align 8
  %31 = load i64, i64* %limit, align 8
  %cmp32 = icmp sge i64 %31, 0
  br i1 %cmp32, label %if.then.33, label %if.else.45

if.then.33:                                       ; preds = %if.then.31
  br label %do.body.34

do.body.34:                                       ; preds = %do.cond, %if.then.33
  %32 = load i64, i64* %n, align 8
  %33 = load %struct._object*, %struct._object** %readahead, align 8
  %34 = bitcast %struct._object* %33 to %struct.PyVarObject*
  %ob_size35 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %34, i32 0, i32 1
  %35 = load i64, i64* %ob_size35, align 8
  %cmp36 = icmp sge i64 %32, %35
  br i1 %cmp36, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.34
  %36 = load i64, i64* %n, align 8
  %37 = load i64, i64* %limit, align 8
  %cmp37 = icmp sge i64 %36, %37
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %lor.lhs.false, %do.body.34
  br label %do.end.44

if.end.39:                                        ; preds = %lor.lhs.false
  %38 = load i64, i64* %n, align 8
  %inc = add i64 %38, 1
  store i64 %inc, i64* %n, align 8
  %39 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr i8, i8* %39, i64 %38
  %40 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %40 to i32
  %cmp40 = icmp eq i32 %conv, 10
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.39
  br label %do.end.44

if.end.43:                                        ; preds = %if.end.39
  br label %do.cond

do.cond:                                          ; preds = %if.end.43
  br i1 true, label %do.body.34, label %do.end.44

do.end.44:                                        ; preds = %do.cond, %if.then.42, %if.then.38
  br label %if.end.61

if.else.45:                                       ; preds = %if.then.31
  br label %do.body.46

do.body.46:                                       ; preds = %do.cond.59, %if.else.45
  %41 = load i64, i64* %n, align 8
  %42 = load %struct._object*, %struct._object** %readahead, align 8
  %43 = bitcast %struct._object* %42 to %struct.PyVarObject*
  %ob_size47 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %43, i32 0, i32 1
  %44 = load i64, i64* %ob_size47, align 8
  %cmp48 = icmp sge i64 %41, %44
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %do.body.46
  br label %do.end.60

if.end.51:                                        ; preds = %do.body.46
  %45 = load i64, i64* %n, align 8
  %inc52 = add i64 %45, 1
  store i64 %inc52, i64* %n, align 8
  %46 = load i8*, i8** %buf, align 8
  %arrayidx53 = getelementptr i8, i8* %46, i64 %45
  %47 = load i8, i8* %arrayidx53, align 1
  %conv54 = sext i8 %47 to i32
  %cmp55 = icmp eq i32 %conv54, 10
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.51
  br label %do.end.60

if.end.58:                                        ; preds = %if.end.51
  br label %do.cond.59

do.cond.59:                                       ; preds = %if.end.58
  br i1 true, label %do.body.46, label %do.end.60

do.end.60:                                        ; preds = %do.cond.59, %if.then.57, %if.then.50
  br label %if.end.61

if.end.61:                                        ; preds = %do.end.60, %do.end.44
  %48 = load i64, i64* %n, align 8
  store i64 %48, i64* %nreadahead, align 8
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.end.28
  br label %do.body.63

do.body.63:                                       ; preds = %if.end.62
  %49 = load %struct._object*, %struct._object** %readahead, align 8
  store %struct._object* %49, %struct._object** %_py_decref_tmp64, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  %ob_refcnt65 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0
  %51 = load i64, i64* %ob_refcnt65, align 8
  %dec66 = add i64 %51, -1
  store i64 %dec66, i64* %ob_refcnt65, align 8
  %cmp67 = icmp ne i64 %dec66, 0
  br i1 %cmp67, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %do.body.63
  br label %if.end.73

if.else.70:                                       ; preds = %do.body.63
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  %ob_type71 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type71, align 8
  %tp_dealloc72 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc72, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  call void %54(%struct._object* %55)
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.70, %if.then.69
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.73
  br label %if.end.76

if.end.76:                                        ; preds = %do.end.75, %while.body
  %56 = load %struct._object*, %struct._object** %self.addr, align 8
  %57 = load i64, i64* %nreadahead, align 8
  %call77 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %56, %struct._Py_Identifier* @PyId_read, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0), i64 %57)
  store %struct._object* %call77, %struct._object** %b, align 8
  %58 = load %struct._object*, %struct._object** %b, align 8
  %cmp78 = icmp eq %struct._object* %58, null
  br i1 %cmp78, label %if.then.80, label %if.end.85

if.then.80:                                       ; preds = %if.end.76
  %call81 = call i32 @_PyIO_trap_eintr()
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.then.80
  br label %while.cond

if.end.84:                                        ; preds = %if.then.80
  br label %fail

if.end.85:                                        ; preds = %if.end.76
  %59 = load %struct._object*, %struct._object** %b, align 8
  %ob_type86 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 1
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type86, align 8
  %tp_flags87 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i32 0, i32 19
  %61 = load i64, i64* %tp_flags87, align 8
  %and88 = and i64 %61, 134217728
  %cmp89 = icmp ne i64 %and88, 0
  br i1 %cmp89, label %if.end.108, label %if.then.91

if.then.91:                                       ; preds = %if.end.85
  %62 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %63 = load %struct._object*, %struct._object** %b, align 8
  %ob_type92 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 1
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type92, align 8
  %tp_name93 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %64, i32 0, i32 1
  %65 = load i8*, i8** %tp_name93, align 8
  %call94 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %62, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.32, i32 0, i32 0), i8* %65)
  br label %do.body.95

do.body.95:                                       ; preds = %if.then.91
  %66 = load %struct._object*, %struct._object** %b, align 8
  store %struct._object* %66, %struct._object** %_py_decref_tmp96, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8
  %ob_refcnt97 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 0
  %68 = load i64, i64* %ob_refcnt97, align 8
  %dec98 = add i64 %68, -1
  store i64 %dec98, i64* %ob_refcnt97, align 8
  %cmp99 = icmp ne i64 %dec98, 0
  br i1 %cmp99, label %if.then.101, label %if.else.102

if.then.101:                                      ; preds = %do.body.95
  br label %if.end.105

if.else.102:                                      ; preds = %do.body.95
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8
  %ob_type103 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 1
  %70 = load %struct._typeobject*, %struct._typeobject** %ob_type103, align 8
  %tp_dealloc104 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %70, i32 0, i32 4
  %71 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc104, align 8
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8
  call void %71(%struct._object* %72)
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.102, %if.then.101
  br label %do.end.107

do.end.107:                                       ; preds = %if.end.105
  br label %fail

if.end.108:                                       ; preds = %if.end.85
  %73 = load %struct._object*, %struct._object** %b, align 8
  %74 = bitcast %struct._object* %73 to %struct.PyVarObject*
  %ob_size109 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %74, i32 0, i32 1
  %75 = load i64, i64* %ob_size109, align 8
  %cmp110 = icmp eq i64 %75, 0
  br i1 %cmp110, label %if.then.112, label %if.end.126

if.then.112:                                      ; preds = %if.end.108
  br label %do.body.113

do.body.113:                                      ; preds = %if.then.112
  %76 = load %struct._object*, %struct._object** %b, align 8
  store %struct._object* %76, %struct._object** %_py_decref_tmp114, align 8
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp114, align 8
  %ob_refcnt115 = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 0
  %78 = load i64, i64* %ob_refcnt115, align 8
  %dec116 = add i64 %78, -1
  store i64 %dec116, i64* %ob_refcnt115, align 8
  %cmp117 = icmp ne i64 %dec116, 0
  br i1 %cmp117, label %if.then.119, label %if.else.120

if.then.119:                                      ; preds = %do.body.113
  br label %if.end.123

if.else.120:                                      ; preds = %do.body.113
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp114, align 8
  %ob_type121 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 1
  %80 = load %struct._typeobject*, %struct._typeobject** %ob_type121, align 8
  %tp_dealloc122 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %80, i32 0, i32 4
  %81 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc122, align 8
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp114, align 8
  call void %81(%struct._object* %82)
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.120, %if.then.119
  br label %do.end.125

do.end.125:                                       ; preds = %if.end.123
  br label %while.end

if.end.126:                                       ; preds = %if.end.108
  %83 = load %struct._object*, %struct._object** %buffer, align 8
  %84 = bitcast %struct._object* %83 to %struct.PyVarObject*
  %ob_size127 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %84, i32 0, i32 1
  %85 = load i64, i64* %ob_size127, align 8
  store i64 %85, i64* %old_size, align 8
  %86 = load %struct._object*, %struct._object** %buffer, align 8
  %87 = load i64, i64* %old_size, align 8
  %88 = load %struct._object*, %struct._object** %b, align 8
  %89 = bitcast %struct._object* %88 to %struct.PyVarObject*
  %ob_size128 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %89, i32 0, i32 1
  %90 = load i64, i64* %ob_size128, align 8
  %add = add i64 %87, %90
  %call129 = call i32 @PyByteArray_Resize(%struct._object* %86, i64 %add)
  %cmp130 = icmp slt i32 %call129, 0
  br i1 %cmp130, label %if.then.132, label %if.end.146

if.then.132:                                      ; preds = %if.end.126
  br label %do.body.133

do.body.133:                                      ; preds = %if.then.132
  %91 = load %struct._object*, %struct._object** %b, align 8
  store %struct._object* %91, %struct._object** %_py_decref_tmp134, align 8
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp134, align 8
  %ob_refcnt135 = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 0
  %93 = load i64, i64* %ob_refcnt135, align 8
  %dec136 = add i64 %93, -1
  store i64 %dec136, i64* %ob_refcnt135, align 8
  %cmp137 = icmp ne i64 %dec136, 0
  br i1 %cmp137, label %if.then.139, label %if.else.140

if.then.139:                                      ; preds = %do.body.133
  br label %if.end.143

if.else.140:                                      ; preds = %do.body.133
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp134, align 8
  %ob_type141 = getelementptr inbounds %struct._object, %struct._object* %94, i32 0, i32 1
  %95 = load %struct._typeobject*, %struct._typeobject** %ob_type141, align 8
  %tp_dealloc142 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %95, i32 0, i32 4
  %96 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc142, align 8
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp134, align 8
  call void %96(%struct._object* %97)
  br label %if.end.143

if.end.143:                                       ; preds = %if.else.140, %if.then.139
  br label %do.end.145

do.end.145:                                       ; preds = %if.end.143
  br label %fail

if.end.146:                                       ; preds = %if.end.126
  %98 = load %struct._object*, %struct._object** %buffer, align 8
  %99 = bitcast %struct._object* %98 to %struct.PyVarObject*
  %ob_size147 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %99, i32 0, i32 1
  %100 = load i64, i64* %ob_size147, align 8
  %tobool148 = icmp ne i64 %100, 0
  br i1 %tobool148, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.146
  %101 = load %struct._object*, %struct._object** %buffer, align 8
  %102 = bitcast %struct._object* %101 to %struct.PyByteArrayObject*
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %102, i32 0, i32 3
  %103 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.146
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %103, %cond.true ], [ getelementptr inbounds ([0 x i8], [0 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %104 = load i64, i64* %old_size, align 8
  %add.ptr = getelementptr i8, i8* %cond, i64 %104
  %105 = load %struct._object*, %struct._object** %b, align 8
  %106 = bitcast %struct._object* %105 to %struct.PyBytesObject*
  %ob_sval149 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %106, i32 0, i32 2
  %arraydecay150 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval149, i32 0, i32 0
  %107 = load %struct._object*, %struct._object** %b, align 8
  %108 = bitcast %struct._object* %107 to %struct.PyVarObject*
  %ob_size151 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %108, i32 0, i32 1
  %109 = load i64, i64* %ob_size151, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %arraydecay150, i64 %109, i32 1, i1 false)
  br label %do.body.152

do.body.152:                                      ; preds = %cond.end
  %110 = load %struct._object*, %struct._object** %b, align 8
  store %struct._object* %110, %struct._object** %_py_decref_tmp153, align 8
  %111 = load %struct._object*, %struct._object** %_py_decref_tmp153, align 8
  %ob_refcnt154 = getelementptr inbounds %struct._object, %struct._object* %111, i32 0, i32 0
  %112 = load i64, i64* %ob_refcnt154, align 8
  %dec155 = add i64 %112, -1
  store i64 %dec155, i64* %ob_refcnt154, align 8
  %cmp156 = icmp ne i64 %dec155, 0
  br i1 %cmp156, label %if.then.158, label %if.else.159

if.then.158:                                      ; preds = %do.body.152
  br label %if.end.162

if.else.159:                                      ; preds = %do.body.152
  %113 = load %struct._object*, %struct._object** %_py_decref_tmp153, align 8
  %ob_type160 = getelementptr inbounds %struct._object, %struct._object* %113, i32 0, i32 1
  %114 = load %struct._typeobject*, %struct._typeobject** %ob_type160, align 8
  %tp_dealloc161 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %114, i32 0, i32 4
  %115 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc161, align 8
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp153, align 8
  call void %115(%struct._object* %116)
  br label %if.end.162

if.end.162:                                       ; preds = %if.else.159, %if.then.158
  br label %do.end.164

do.end.164:                                       ; preds = %if.end.162
  %117 = load %struct._object*, %struct._object** %buffer, align 8
  %118 = bitcast %struct._object* %117 to %struct.PyVarObject*
  %ob_size165 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %118, i32 0, i32 1
  %119 = load i64, i64* %ob_size165, align 8
  %sub = sub i64 %119, 1
  %120 = load %struct._object*, %struct._object** %buffer, align 8
  %121 = bitcast %struct._object* %120 to %struct.PyVarObject*
  %ob_size166 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %121, i32 0, i32 1
  %122 = load i64, i64* %ob_size166, align 8
  %tobool167 = icmp ne i64 %122, 0
  br i1 %tobool167, label %cond.true.168, label %cond.false.170

cond.true.168:                                    ; preds = %do.end.164
  %123 = load %struct._object*, %struct._object** %buffer, align 8
  %124 = bitcast %struct._object* %123 to %struct.PyByteArrayObject*
  %ob_start169 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %124, i32 0, i32 3
  %125 = load i8*, i8** %ob_start169, align 8
  br label %cond.end.171

cond.false.170:                                   ; preds = %do.end.164
  br label %cond.end.171

cond.end.171:                                     ; preds = %cond.false.170, %cond.true.168
  %cond172 = phi i8* [ %125, %cond.true.168 ], [ getelementptr inbounds ([0 x i8], [0 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.170 ]
  %arrayidx173 = getelementptr i8, i8* %cond172, i64 %sub
  %126 = load i8, i8* %arrayidx173, align 1
  %conv174 = sext i8 %126 to i32
  %cmp175 = icmp eq i32 %conv174, 10
  br i1 %cmp175, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %cond.end.171
  br label %while.end

if.end.178:                                       ; preds = %cond.end.171
  br label %while.cond

while.end:                                        ; preds = %if.then.177, %do.end.125, %lor.end
  %127 = load %struct._object*, %struct._object** %buffer, align 8
  %128 = bitcast %struct._object* %127 to %struct.PyVarObject*
  %ob_size179 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %128, i32 0, i32 1
  %129 = load i64, i64* %ob_size179, align 8
  %tobool180 = icmp ne i64 %129, 0
  br i1 %tobool180, label %cond.true.181, label %cond.false.183

cond.true.181:                                    ; preds = %while.end
  %130 = load %struct._object*, %struct._object** %buffer, align 8
  %131 = bitcast %struct._object* %130 to %struct.PyByteArrayObject*
  %ob_start182 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %131, i32 0, i32 3
  %132 = load i8*, i8** %ob_start182, align 8
  br label %cond.end.184

cond.false.183:                                   ; preds = %while.end
  br label %cond.end.184

cond.end.184:                                     ; preds = %cond.false.183, %cond.true.181
  %cond185 = phi i8* [ %132, %cond.true.181 ], [ getelementptr inbounds ([0 x i8], [0 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.183 ]
  %133 = load %struct._object*, %struct._object** %buffer, align 8
  %134 = bitcast %struct._object* %133 to %struct.PyVarObject*
  %ob_size186 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %134, i32 0, i32 1
  %135 = load i64, i64* %ob_size186, align 8
  %call187 = call %struct._object* @PyBytes_FromStringAndSize(i8* %cond185, i64 %135)
  store %struct._object* %call187, %struct._object** %result, align 8
  br label %do.body.188

do.body.188:                                      ; preds = %cond.end.184
  %136 = load %struct._object*, %struct._object** %buffer, align 8
  store %struct._object* %136, %struct._object** %_py_decref_tmp189, align 8
  %137 = load %struct._object*, %struct._object** %_py_decref_tmp189, align 8
  %ob_refcnt190 = getelementptr inbounds %struct._object, %struct._object* %137, i32 0, i32 0
  %138 = load i64, i64* %ob_refcnt190, align 8
  %dec191 = add i64 %138, -1
  store i64 %dec191, i64* %ob_refcnt190, align 8
  %cmp192 = icmp ne i64 %dec191, 0
  br i1 %cmp192, label %if.then.194, label %if.else.195

if.then.194:                                      ; preds = %do.body.188
  br label %if.end.198

if.else.195:                                      ; preds = %do.body.188
  %139 = load %struct._object*, %struct._object** %_py_decref_tmp189, align 8
  %ob_type196 = getelementptr inbounds %struct._object, %struct._object* %139, i32 0, i32 1
  %140 = load %struct._typeobject*, %struct._typeobject** %ob_type196, align 8
  %tp_dealloc197 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %140, i32 0, i32 4
  %141 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc197, align 8
  %142 = load %struct._object*, %struct._object** %_py_decref_tmp189, align 8
  call void %141(%struct._object* %142)
  br label %if.end.198

if.end.198:                                       ; preds = %if.else.195, %if.then.194
  br label %do.end.200

do.end.200:                                       ; preds = %if.end.198
  %143 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %143, %struct._object** %retval
  br label %return

fail:                                             ; preds = %do.end.145, %do.end.107, %if.end.84, %do.end, %if.end.18
  br label %do.body.201

do.body.201:                                      ; preds = %fail
  %144 = load %struct._object*, %struct._object** %buffer, align 8
  store %struct._object* %144, %struct._object** %_py_decref_tmp202, align 8
  %145 = load %struct._object*, %struct._object** %_py_decref_tmp202, align 8
  %ob_refcnt203 = getelementptr inbounds %struct._object, %struct._object* %145, i32 0, i32 0
  %146 = load i64, i64* %ob_refcnt203, align 8
  %dec204 = add i64 %146, -1
  store i64 %dec204, i64* %ob_refcnt203, align 8
  %cmp205 = icmp ne i64 %dec204, 0
  br i1 %cmp205, label %if.then.207, label %if.else.208

if.then.207:                                      ; preds = %do.body.201
  br label %if.end.211

if.else.208:                                      ; preds = %do.body.201
  %147 = load %struct._object*, %struct._object** %_py_decref_tmp202, align 8
  %ob_type209 = getelementptr inbounds %struct._object, %struct._object* %147, i32 0, i32 1
  %148 = load %struct._typeobject*, %struct._typeobject** %ob_type209, align 8
  %tp_dealloc210 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %148, i32 0, i32 4
  %149 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc210, align 8
  %150 = load %struct._object*, %struct._object** %_py_decref_tmp202, align 8
  call void %149(%struct._object* %150)
  br label %if.end.211

if.end.211:                                       ; preds = %if.else.208, %if.then.207
  br label %do.end.213

do.end.213:                                       ; preds = %if.end.211
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.213, %do.end.200, %if.then.6, %if.then
  %151 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %151
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_readlines(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %hint = alloca i64, align 8
  %length = alloca i64, align 8
  %result = alloca %struct._object*, align 8
  %ret = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  %line = alloca %struct._object*, align 8
  %_py_decref_tmp32 = alloca %struct._object*, align 8
  %_py_decref_tmp48 = alloca %struct._object*, align 8
  %_py_decref_tmp59 = alloca %struct._object*, align 8
  %_py_decref_tmp72 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 -1, i64* %hint, align 8
  store i64 0, i64* %length, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), i32 (%struct._object*, i8*)* @_PyIO_ConvertSsize_t, i64* %hint)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call1, %struct._object** %result, align 8
  %1 = load %struct._object*, %struct._object** %result, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = load i64, i64* %hint, align 8
  %cmp4 = icmp sle i64 %2, 0
  br i1 %cmp4, label %if.then.5, label %if.end.24

if.then.5:                                        ; preds = %if.end.3
  %3 = load %struct._object*, %struct._object** %result, align 8
  %4 = load %struct._object*, %struct._object** %self.addr, align 8
  %call6 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %3, %struct._Py_Identifier* @iobase_readlines.PyId_extend, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i32 0, i32 0), %struct._object* %4)
  store %struct._object* %call6, %struct._object** %ret, align 8
  %5 = load %struct._object*, %struct._object** %ret, align 8
  %cmp7 = icmp eq %struct._object* %5, null
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.then.5
  br label %do.body

do.body:                                          ; preds = %if.then.8
  %6 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body
  br label %if.end.11

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.then.5
  br label %do.body.13

do.body.13:                                       ; preds = %if.end.12
  %13 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp14, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt15, align 8
  %dec16 = add i64 %15, -1
  store i64 %dec16, i64* %ob_refcnt15, align 8
  %cmp17 = icmp ne i64 %dec16, 0
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22

if.else.19:                                       ; preds = %do.body.13
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  call void %18(%struct._object* %19)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %20 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %20, %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %if.end.3
  br label %while.body

while.body:                                       ; preds = %if.end.24, %if.end.84
  %21 = load %struct._object*, %struct._object** %self.addr, align 8
  %call25 = call %struct._object* @PyIter_Next(%struct._object* %21)
  store %struct._object* %call25, %struct._object** %line, align 8
  %22 = load %struct._object*, %struct._object** %line, align 8
  %cmp26 = icmp eq %struct._object* %22, null
  br i1 %cmp26, label %if.then.27, label %if.end.43

if.then.27:                                       ; preds = %while.body
  %call28 = call %struct._object* @PyErr_Occurred()
  %tobool29 = icmp ne %struct._object* %call28, null
  br i1 %tobool29, label %if.then.30, label %if.else.42

if.then.30:                                       ; preds = %if.then.27
  br label %do.body.31

do.body.31:                                       ; preds = %if.then.30
  %23 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp32, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt33, align 8
  %dec34 = add i64 %25, -1
  store i64 %dec34, i64* %ob_refcnt33, align 8
  %cmp35 = icmp ne i64 %dec34, 0
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %do.body.31
  br label %if.end.40

if.else.37:                                       ; preds = %do.body.31
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  call void %28(%struct._object* %29)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.then.36
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.42:                                       ; preds = %if.then.27
  br label %while.end

if.end.43:                                        ; preds = %while.body
  %30 = load %struct._object*, %struct._object** %result, align 8
  %31 = load %struct._object*, %struct._object** %line, align 8
  %call44 = call i32 @PyList_Append(%struct._object* %30, %struct._object* %31)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.then.46, label %if.end.69

if.then.46:                                       ; preds = %if.end.43
  br label %do.body.47

do.body.47:                                       ; preds = %if.then.46
  %32 = load %struct._object*, %struct._object** %line, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp48, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  %ob_refcnt49 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt49, align 8
  %dec50 = add i64 %34, -1
  store i64 %dec50, i64* %ob_refcnt49, align 8
  %cmp51 = icmp ne i64 %dec50, 0
  br i1 %cmp51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %do.body.47
  br label %if.end.56

if.else.53:                                       ; preds = %do.body.47
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  %ob_type54 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type54, align 8
  %tp_dealloc55 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc55, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  call void %37(%struct._object* %38)
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.53, %if.then.52
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  br label %do.body.58

do.body.58:                                       ; preds = %do.end.57
  %39 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %39, %struct._object** %_py_decref_tmp59, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  %ob_refcnt60 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt60, align 8
  %dec61 = add i64 %41, -1
  store i64 %dec61, i64* %ob_refcnt60, align 8
  %cmp62 = icmp ne i64 %dec61, 0
  br i1 %cmp62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %do.body.58
  br label %if.end.67

if.else.64:                                       ; preds = %do.body.58
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  %ob_type65 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type65, align 8
  %tp_dealloc66 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc66, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  call void %44(%struct._object* %45)
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.64, %if.then.63
  br label %do.end.68

do.end.68:                                        ; preds = %if.end.67
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.69:                                        ; preds = %if.end.43
  %46 = load %struct._object*, %struct._object** %line, align 8
  %call70 = call i64 @PyObject_Size(%struct._object* %46)
  %47 = load i64, i64* %length, align 8
  %add = add i64 %47, %call70
  store i64 %add, i64* %length, align 8
  br label %do.body.71

do.body.71:                                       ; preds = %if.end.69
  %48 = load %struct._object*, %struct._object** %line, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp72, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8
  %ob_refcnt73 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt73, align 8
  %dec74 = add i64 %50, -1
  store i64 %dec74, i64* %ob_refcnt73, align 8
  %cmp75 = icmp ne i64 %dec74, 0
  br i1 %cmp75, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %do.body.71
  br label %if.end.80

if.else.77:                                       ; preds = %do.body.71
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8
  %ob_type78 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type78, align 8
  %tp_dealloc79 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc79, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8
  call void %53(%struct._object* %54)
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.77, %if.then.76
  br label %do.end.81

do.end.81:                                        ; preds = %if.end.80
  %55 = load i64, i64* %length, align 8
  %56 = load i64, i64* %hint, align 8
  %cmp82 = icmp sgt i64 %55, %56
  br i1 %cmp82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %do.end.81
  br label %while.end

if.end.84:                                        ; preds = %do.end.81
  br label %while.body

while.end:                                        ; preds = %if.then.83, %if.else.42
  %57 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %57, %struct._object** %retval
  br label %return

return:                                           ; preds = %while.end, %do.end.68, %do.end.41, %do.end.23, %do.end, %if.then.2, %if.then
  %58 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %58
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_writelines(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %lines = alloca %struct._object*, align 8
  %iter = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %line = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp40 = alloca %struct._object*, align 8
  %_py_decref_tmp53 = alloca %struct._object*, align 8
  %_py_decref_tmp65 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0), %struct._object** %lines)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %self.addr, align 8
  %call1 = call %struct._object* @_PyIOBase_check_closed(%struct._object* %1, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0))
  %cmp = icmp eq %struct._object* %call1, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %lines, align 8
  %call4 = call %struct._object* @PyObject_GetIter(%struct._object* %2)
  store %struct._object* %call4, %struct._object** %iter, align 8
  %3 = load %struct._object*, %struct._object** %iter, align 8
  %cmp5 = icmp eq %struct._object* %3, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  br label %while.body

while.body:                                       ; preds = %if.end.7, %do.end.63
  %4 = load %struct._object*, %struct._object** %iter, align 8
  %call8 = call %struct._object* @PyIter_Next(%struct._object* %4)
  store %struct._object* %call8, %struct._object** %line, align 8
  %5 = load %struct._object*, %struct._object** %line, align 8
  %cmp9 = icmp eq %struct._object* %5, null
  br i1 %cmp9, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %while.body
  %call11 = call %struct._object* @PyErr_Occurred()
  %tobool12 = icmp ne %struct._object* %call11, null
  br i1 %tobool12, label %if.then.13, label %if.else.17

if.then.13:                                       ; preds = %if.then.10
  br label %do.body

do.body:                                          ; preds = %if.then.13
  %6 = load %struct._object*, %struct._object** %iter, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.body
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.16
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.17:                                       ; preds = %if.then.10
  br label %while.end

if.end.18:                                        ; preds = %while.body
  store %struct._object* null, %struct._object** %res, align 8
  br label %do.body.19

do.body.19:                                       ; preds = %land.end, %if.end.18
  %13 = load %struct._object*, %struct._object** %self.addr, align 8
  %14 = load %struct._object*, %struct._object** @_PyIO_str_write, align 8
  %15 = load %struct._object*, %struct._object** %line, align 8
  %call20 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %13, %struct._object* %14, %struct._object* %15, i8* null)
  store %struct._object* %call20, %struct._object** %res, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body.19
  %16 = load %struct._object*, %struct._object** %res, align 8
  %cmp21 = icmp eq %struct._object* %16, null
  br i1 %cmp21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %call22 = call i32 @_PyIO_trap_eintr()
  %tobool23 = icmp ne i32 %call22, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %17 = phi i1 [ false, %do.cond ], [ %tobool23, %land.rhs ]
  br i1 %17, label %do.body.19, label %do.end.24

do.end.24:                                        ; preds = %land.end
  br label %do.body.25

do.body.25:                                       ; preds = %do.end.24
  %18 = load %struct._object*, %struct._object** %line, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp26, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt27, align 8
  %dec28 = add i64 %20, -1
  store i64 %dec28, i64* %ob_refcnt27, align 8
  %cmp29 = icmp ne i64 %dec28, 0
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %do.body.25
  br label %if.end.34

if.else.31:                                       ; preds = %do.body.25
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  call void %23(%struct._object* %24)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.30
  br label %do.end.36

do.end.36:                                        ; preds = %if.end.34
  %25 = load %struct._object*, %struct._object** %res, align 8
  %cmp37 = icmp eq %struct._object* %25, null
  br i1 %cmp37, label %if.then.38, label %if.end.51

if.then.38:                                       ; preds = %do.end.36
  br label %do.body.39

do.body.39:                                       ; preds = %if.then.38
  %26 = load %struct._object*, %struct._object** %iter, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp40, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt41, align 8
  %dec42 = add i64 %28, -1
  store i64 %dec42, i64* %ob_refcnt41, align 8
  %cmp43 = icmp ne i64 %dec42, 0
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.48

if.else.45:                                       ; preds = %do.body.39
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8
  %tp_dealloc47 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc47, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  call void %31(%struct._object* %32)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.45, %if.then.44
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.48
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.51:                                        ; preds = %do.end.36
  br label %do.body.52

do.body.52:                                       ; preds = %if.end.51
  %33 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp53, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_refcnt54 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt54, align 8
  %dec55 = add i64 %35, -1
  store i64 %dec55, i64* %ob_refcnt54, align 8
  %cmp56 = icmp ne i64 %dec55, 0
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %do.body.52
  br label %if.end.61

if.else.58:                                       ; preds = %do.body.52
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_type59 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type59, align 8
  %tp_dealloc60 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc60, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  call void %38(%struct._object* %39)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %if.then.57
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.61
  br label %while.body

while.end:                                        ; preds = %if.else.17
  br label %do.body.64

do.body.64:                                       ; preds = %while.end
  %40 = load %struct._object*, %struct._object** %iter, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp65, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_refcnt66 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt66, align 8
  %dec67 = add i64 %42, -1
  store i64 %dec67, i64* %ob_refcnt66, align 8
  %cmp68 = icmp ne i64 %dec67, 0
  br i1 %cmp68, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %do.body.64
  br label %if.end.73

if.else.70:                                       ; preds = %do.body.64
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_type71 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type71, align 8
  %tp_dealloc72 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc72, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  call void %45(%struct._object* %46)
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.70, %if.then.69
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.73
  %47 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %47, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.75, %do.end.50, %do.end, %if.then.6, %if.then.2, %if.then
  %48 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %48
}

declare %struct._object* @_PyObject_CallMethodId_SizeT(%struct._object*, %struct._Py_Identifier*, i8*, ...) #1

declare i32 @_PyObject_HasAttrId(%struct._object*, %struct._Py_Identifier*) #1

declare i32 @_PyObject_SetAttrId(%struct._object*, %struct._Py_Identifier*, %struct._object*) #1

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #1

declare i32 @_PyIO_ConvertSsize_t(%struct._object*, i8*) #1

declare %struct._object* @PyByteArray_FromStringAndSize(i8*, i64) #1

declare i32 @_PyIO_trap_eintr() #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare i32 @PyByteArray_Resize(%struct._object*, i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

declare %struct._object* @PyList_New(i64) #1

declare %struct._object* @PyIter_Next(%struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare i32 @PyList_Append(%struct._object*, %struct._object*) #1

declare %struct._object* @PyObject_GetIter(%struct._object*) #1

declare %struct._object* @PyObject_GenericGetDict(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_closed_get(%struct._object* %self, i8* %context) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %context.addr = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %call = call i32 @_PyObject_HasAttrId(%struct._object* %0, %struct._Py_Identifier* @PyId___IOBase_closed)
  %conv = sext i32 %call to i64
  %call1 = call %struct._object* @PyBool_FromLong(i64 %conv)
  ret %struct._object* %call1
}

declare %struct._object* @PyBool_FromLong(i64) #1

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #1

declare void @PyErr_Clear() #1

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @rawiobase_read(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %b = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  %_py_decref_tmp47 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 -1, i64* %n, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i64* %n)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %n, align 8
  %cmp = icmp slt i64 %1, 0
  br i1 %cmp, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %self.addr, align 8
  %call2 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %2, %struct._Py_Identifier* @rawiobase_read.PyId_readall, i8* null)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load i64, i64* %n, align 8
  %call4 = call %struct._object* @PyByteArray_FromStringAndSize(i8* null, i64 %3)
  store %struct._object* %call4, %struct._object** %b, align 8
  %4 = load %struct._object*, %struct._object** %b, align 8
  %cmp5 = icmp eq %struct._object* %4, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %5 = load %struct._object*, %struct._object** %self.addr, align 8
  %6 = load %struct._object*, %struct._object** @_PyIO_str_readinto, align 8
  %7 = load %struct._object*, %struct._object** %b, align 8
  %call8 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %5, %struct._object* %6, %struct._object* %7, i8* null)
  store %struct._object* %call8, %struct._object** %res, align 8
  %8 = load %struct._object*, %struct._object** %res, align 8
  %cmp9 = icmp eq %struct._object* %8, null
  br i1 %cmp9, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.7
  %9 = load %struct._object*, %struct._object** %res, align 8
  %cmp10 = icmp eq %struct._object* %9, @_Py_NoneStruct
  br i1 %cmp10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %lor.lhs.false, %if.end.7
  br label %do.body

do.body:                                          ; preds = %if.then.11
  %10 = load %struct._object*, %struct._object** %b, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp12 = icmp ne i64 %dec, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.body
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.14
  %17 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %17, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %lor.lhs.false
  %18 = load %struct._object*, %struct._object** %res, align 8
  %19 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call16 = call i64 @PyNumber_AsSsize_t(%struct._object* %18, %struct._object* %19)
  store i64 %call16, i64* %n, align 8
  br label %do.body.17

do.body.17:                                       ; preds = %if.end.15
  %20 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp18, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt19, align 8
  %dec20 = add i64 %22, -1
  store i64 %dec20, i64* %ob_refcnt19, align 8
  %cmp21 = icmp ne i64 %dec20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.17
  br label %if.end.26

if.else.23:                                       ; preds = %do.body.17
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  call void %25(%struct._object* %26)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.22
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  %27 = load i64, i64* %n, align 8
  %cmp28 = icmp eq i64 %27, -1
  br i1 %cmp28, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %do.end.27
  %call29 = call %struct._object* @PyErr_Occurred()
  %tobool30 = icmp ne %struct._object* %call29, null
  br i1 %tobool30, label %if.then.31, label %if.end.43

if.then.31:                                       ; preds = %land.lhs.true
  br label %do.body.32

do.body.32:                                       ; preds = %if.then.31
  %28 = load %struct._object*, %struct._object** %b, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp33, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt34, align 8
  %dec35 = add i64 %30, -1
  store i64 %dec35, i64* %ob_refcnt34, align 8
  %cmp36 = icmp ne i64 %dec35, 0
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %do.body.32
  br label %if.end.41

if.else.38:                                       ; preds = %do.body.32
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  call void %33(%struct._object* %34)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.37
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.43:                                        ; preds = %land.lhs.true, %do.end.27
  %35 = load %struct._object*, %struct._object** %b, align 8
  %call44 = call i8* @PyByteArray_AsString(%struct._object* %35)
  %36 = load i64, i64* %n, align 8
  %call45 = call %struct._object* @PyBytes_FromStringAndSize(i8* %call44, i64 %36)
  store %struct._object* %call45, %struct._object** %res, align 8
  br label %do.body.46

do.body.46:                                       ; preds = %if.end.43
  %37 = load %struct._object*, %struct._object** %b, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp47, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8
  %ob_refcnt48 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt48, align 8
  %dec49 = add i64 %39, -1
  store i64 %dec49, i64* %ob_refcnt48, align 8
  %cmp50 = icmp ne i64 %dec49, 0
  br i1 %cmp50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %do.body.46
  br label %if.end.55

if.else.52:                                       ; preds = %do.body.46
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8
  %ob_type53 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type53, align 8
  %tp_dealloc54 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc54, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8
  call void %42(%struct._object* %43)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.52, %if.then.51
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  %44 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %44, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.56, %do.end.42, %do.end, %if.then.6, %if.then.1, %if.then
  %45 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %45
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @rawiobase_readall(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %r = alloca i32, align 4
  %chunks = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %data = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp16 = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  %_py_decref_tmp43 = alloca %struct._object*, align 8
  %_py_decref_tmp54 = alloca %struct._object*, align 8
  %_py_decref_tmp69 = alloca %struct._object*, align 8
  %_py_decref_tmp82 = alloca %struct._object*, align 8
  %_py_decref_tmp95 = alloca %struct._object*, align 8
  %_py_decref_tmp108 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %call = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call, %struct._object** %chunks, align 8
  %0 = load %struct._object*, %struct._object** %chunks, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end, %if.then.5, %if.end.105
  %1 = load %struct._object*, %struct._object** %self.addr, align 8
  %call1 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %1, %struct._Py_Identifier* @PyId_read, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i32 8192)
  store %struct._object* %call1, %struct._object** %data, align 8
  %2 = load %struct._object*, %struct._object** %data, align 8
  %tobool = icmp ne %struct._object* %2, null
  br i1 %tobool, label %if.end.10, label %if.then.2

if.then.2:                                        ; preds = %while.body
  %call3 = call i32 @_PyIO_trap_eintr()
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.2
  br label %while.body

if.end.6:                                         ; preds = %if.then.2
  br label %do.body

do.body:                                          ; preds = %if.end.6
  %3 = load %struct._object*, %struct._object** %chunks, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %while.body
  %10 = load %struct._object*, %struct._object** %data, align 8
  %cmp11 = icmp eq %struct._object* %10, @_Py_NoneStruct
  br i1 %cmp11, label %if.then.12, label %if.end.38

if.then.12:                                       ; preds = %if.end.10
  %11 = load %struct._object*, %struct._object** %chunks, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1
  %13 = load i64, i64* %ob_size, align 8
  %cmp13 = icmp eq i64 %13, 0
  br i1 %cmp13, label %if.then.14, label %if.end.26

if.then.14:                                       ; preds = %if.then.12
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.14
  %14 = load %struct._object*, %struct._object** %chunks, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp16, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt17, align 8
  %dec18 = add i64 %16, -1
  store i64 %dec18, i64* %ob_refcnt17, align 8
  %cmp19 = icmp ne i64 %dec18, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.15
  br label %if.end.24

if.else.21:                                       ; preds = %do.body.15
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %tp_dealloc23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc23, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  call void %19(%struct._object* %20)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21, %if.then.20
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  %21 = load %struct._object*, %struct._object** %data, align 8
  store %struct._object* %21, %struct._object** %retval
  br label %return

if.end.26:                                        ; preds = %if.then.12
  br label %do.body.27

do.body.27:                                       ; preds = %if.end.26
  %22 = load %struct._object*, %struct._object** %data, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp28, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt29, align 8
  %dec30 = add i64 %24, -1
  store i64 %dec30, i64* %ob_refcnt29, align 8
  %cmp31 = icmp ne i64 %dec30, 0
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body.27
  br label %if.end.36

if.else.33:                                       ; preds = %do.body.27
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  call void %27(%struct._object* %28)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  br label %while.end

if.end.38:                                        ; preds = %if.end.10
  %29 = load %struct._object*, %struct._object** %data, align 8
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 19
  %31 = load i64, i64* %tp_flags, align 8
  %and = and i64 %31, 134217728
  %cmp40 = icmp ne i64 %and, 0
  br i1 %cmp40, label %if.end.64, label %if.then.41

if.then.41:                                       ; preds = %if.end.38
  br label %do.body.42

do.body.42:                                       ; preds = %if.then.41
  %32 = load %struct._object*, %struct._object** %chunks, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp43, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_refcnt44 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt44, align 8
  %dec45 = add i64 %34, -1
  store i64 %dec45, i64* %ob_refcnt44, align 8
  %cmp46 = icmp ne i64 %dec45, 0
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %do.body.42
  br label %if.end.51

if.else.48:                                       ; preds = %do.body.42
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8
  %tp_dealloc50 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  call void %37(%struct._object* %38)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.48, %if.then.47
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  br label %do.body.53

do.body.53:                                       ; preds = %do.end.52
  %39 = load %struct._object*, %struct._object** %data, align 8
  store %struct._object* %39, %struct._object** %_py_decref_tmp54, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt55, align 8
  %dec56 = add i64 %41, -1
  store i64 %dec56, i64* %ob_refcnt55, align 8
  %cmp57 = icmp ne i64 %dec56, 0
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %do.body.53
  br label %if.end.62

if.else.59:                                       ; preds = %do.body.53
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_type60 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type60, align 8
  %tp_dealloc61 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc61, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  call void %44(%struct._object* %45)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.59, %if.then.58
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.62
  %46 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.43, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.64:                                        ; preds = %if.end.38
  %47 = load %struct._object*, %struct._object** %data, align 8
  %48 = bitcast %struct._object* %47 to %struct.PyVarObject*
  %ob_size65 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %48, i32 0, i32 1
  %49 = load i64, i64* %ob_size65, align 8
  %cmp66 = icmp eq i64 %49, 0
  br i1 %cmp66, label %if.then.67, label %if.end.79

if.then.67:                                       ; preds = %if.end.64
  br label %do.body.68

do.body.68:                                       ; preds = %if.then.67
  %50 = load %struct._object*, %struct._object** %data, align 8
  store %struct._object* %50, %struct._object** %_py_decref_tmp69, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  %ob_refcnt70 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0
  %52 = load i64, i64* %ob_refcnt70, align 8
  %dec71 = add i64 %52, -1
  store i64 %dec71, i64* %ob_refcnt70, align 8
  %cmp72 = icmp ne i64 %dec71, 0
  br i1 %cmp72, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %do.body.68
  br label %if.end.77

if.else.74:                                       ; preds = %do.body.68
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  %ob_type75 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type75, align 8
  %tp_dealloc76 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 4
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc76, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  call void %55(%struct._object* %56)
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.74, %if.then.73
  br label %do.end.78

do.end.78:                                        ; preds = %if.end.77
  br label %while.end

if.end.79:                                        ; preds = %if.end.64
  %57 = load %struct._object*, %struct._object** %chunks, align 8
  %58 = load %struct._object*, %struct._object** %data, align 8
  %call80 = call i32 @PyList_Append(%struct._object* %57, %struct._object* %58)
  store i32 %call80, i32* %r, align 4
  br label %do.body.81

do.body.81:                                       ; preds = %if.end.79
  %59 = load %struct._object*, %struct._object** %data, align 8
  store %struct._object* %59, %struct._object** %_py_decref_tmp82, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  %ob_refcnt83 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0
  %61 = load i64, i64* %ob_refcnt83, align 8
  %dec84 = add i64 %61, -1
  store i64 %dec84, i64* %ob_refcnt83, align 8
  %cmp85 = icmp ne i64 %dec84, 0
  br i1 %cmp85, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %do.body.81
  br label %if.end.90

if.else.87:                                       ; preds = %do.body.81
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  %ob_type88 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 1
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type88, align 8
  %tp_dealloc89 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i32 0, i32 4
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc89, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  call void %64(%struct._object* %65)
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.87, %if.then.86
  br label %do.end.91

do.end.91:                                        ; preds = %if.end.90
  %66 = load i32, i32* %r, align 4
  %cmp92 = icmp slt i32 %66, 0
  br i1 %cmp92, label %if.then.93, label %if.end.105

if.then.93:                                       ; preds = %do.end.91
  br label %do.body.94

do.body.94:                                       ; preds = %if.then.93
  %67 = load %struct._object*, %struct._object** %chunks, align 8
  store %struct._object* %67, %struct._object** %_py_decref_tmp95, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8
  %ob_refcnt96 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 0
  %69 = load i64, i64* %ob_refcnt96, align 8
  %dec97 = add i64 %69, -1
  store i64 %dec97, i64* %ob_refcnt96, align 8
  %cmp98 = icmp ne i64 %dec97, 0
  br i1 %cmp98, label %if.then.99, label %if.else.100

if.then.99:                                       ; preds = %do.body.94
  br label %if.end.103

if.else.100:                                      ; preds = %do.body.94
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8
  %ob_type101 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 1
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type101, align 8
  %tp_dealloc102 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %71, i32 0, i32 4
  %72 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc102, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8
  call void %72(%struct._object* %73)
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.100, %if.then.99
  br label %do.end.104

do.end.104:                                       ; preds = %if.end.103
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.105:                                       ; preds = %do.end.91
  br label %while.body

while.end:                                        ; preds = %do.end.78, %do.end.37
  %74 = load %struct._object*, %struct._object** @_PyIO_empty_bytes, align 8
  %75 = load %struct._object*, %struct._object** %chunks, align 8
  %call106 = call %struct._object* @_PyBytes_Join(%struct._object* %74, %struct._object* %75)
  store %struct._object* %call106, %struct._object** %result, align 8
  br label %do.body.107

do.body.107:                                      ; preds = %while.end
  %76 = load %struct._object*, %struct._object** %chunks, align 8
  store %struct._object* %76, %struct._object** %_py_decref_tmp108, align 8
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp108, align 8
  %ob_refcnt109 = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 0
  %78 = load i64, i64* %ob_refcnt109, align 8
  %dec110 = add i64 %78, -1
  store i64 %dec110, i64* %ob_refcnt109, align 8
  %cmp111 = icmp ne i64 %dec110, 0
  br i1 %cmp111, label %if.then.112, label %if.else.113

if.then.112:                                      ; preds = %do.body.107
  br label %if.end.116

if.else.113:                                      ; preds = %do.body.107
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp108, align 8
  %ob_type114 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 1
  %80 = load %struct._typeobject*, %struct._typeobject** %ob_type114, align 8
  %tp_dealloc115 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %80, i32 0, i32 4
  %81 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc115, align 8
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp108, align 8
  call void %81(%struct._object* %82)
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.113, %if.then.112
  br label %do.end.117

do.end.117:                                       ; preds = %if.end.116
  %83 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %83, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.117, %do.end.104, %do.end.63, %do.end.25, %do.end, %if.then
  %84 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %84
}

declare i64 @PyNumber_AsSsize_t(%struct._object*, %struct._object*) #1

declare i8* @PyByteArray_AsString(%struct._object*) #1

declare %struct._object* @_PyBytes_Join(%struct._object*, %struct._object*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
