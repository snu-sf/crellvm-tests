; ModuleID = 'iobase.o.bc'
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
define %struct._object* @_PyIOBase_check_closed(%struct._object* %self, %struct._object* readnone %args) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !386, metadata !842), !dbg !843
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !387, metadata !842), !dbg !844
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !445, metadata !842) #2, !dbg !845
  %0 = load %struct._object*, %struct._object** @_PyIO_str_closed, align 8, !dbg !848, !tbaa !849
  %call.i = tail call %struct._object* @PyObject_GetAttr(%struct._object* %self, %struct._object* %0) #2, !dbg !853
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !446, metadata !842) #2, !dbg !854
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !855
  br i1 %cmp.i, label %if.end, label %if.end.i, !dbg !857

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @PyObject_IsTrue(%struct._object* %call.i) #2, !dbg !858
  tail call void @llvm.dbg.value(metadata i32 %call1.i, i64 0, metadata !447, metadata !842) #2, !dbg !859
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !448, metadata !842) #2, !dbg !860
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !862
  %1 = load i64, i64* %ob_refcnt.i, align 8, !dbg !862, !tbaa !864
  %dec.i = add i64 %1, -1, !dbg !862
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !862, !tbaa !864
  %cmp2.i = icmp eq i64 %dec.i, 0, !dbg !862
  br i1 %cmp2.i, label %if.else.i, label %iobase_closed.exit, !dbg !867

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !868
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !868, !tbaa !870
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !868
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !868, !tbaa !871
  tail call void %3(%struct._object* %call.i) #2, !dbg !868
  br label %iobase_closed.exit, !dbg !875

iobase_closed.exit:                               ; preds = %if.end.i, %if.else.i
  %tobool = icmp eq i32 %call1.i, 0, !dbg !875
  br i1 %tobool, label %if.end, label %if.then, !dbg !876

if.then:                                          ; preds = %iobase_closed.exit
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !877, !tbaa !849
  tail call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0)) #2, !dbg !879
  br label %return, !dbg !880

if.end:                                           ; preds = %entry, %iobase_closed.exit
  %cmp = icmp eq %struct._object* %args, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), !dbg !881
  br i1 %cmp, label %return, label %if.else, !dbg !883

if.else:                                          ; preds = %if.end
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !884, !tbaa !864
  %inc = add i64 %5, 1, !dbg !884
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !884, !tbaa !864
  br label %return, !dbg !884

return:                                           ; preds = %if.end, %if.else, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ @_Py_NoneStruct, %if.else ], [ @_Py_NoneStruct, %if.end ]
  ret %struct._object* %retval.0, !dbg !885
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @_PyIOBase_finalize(%struct._object* %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !390, metadata !842), !dbg !886
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %self, i64 0, i32 0, !dbg !887
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !887, !tbaa !864
  %cmp = icmp eq i64 %0, 0, !dbg !888
  br i1 %cmp, label %if.then, label %if.else, !dbg !889

if.then:                                          ; preds = %entry
  %call = tail call i32 @PyObject_CallFinalizerFromDealloc(%struct._object* %self) #2, !dbg !890
  br label %cleanup, !dbg !892

if.else:                                          ; preds = %entry
  tail call void @PyObject_CallFinalizer(%struct._object* %self) #2, !dbg !893
  br label %cleanup, !dbg !895

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.else ]
  ret i32 %retval.0, !dbg !896
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @PyObject_CallFinalizerFromDealloc(%struct._object*) #1

declare void @PyObject_CallFinalizer(%struct._object*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define %struct._object* @_PyIOBase_check_seekable(%struct._object* %self, %struct._object* readnone %args) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !394, metadata !842), !dbg !897
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !395, metadata !842), !dbg !898
  %0 = load %struct._object*, %struct._object** @_PyIO_str_seekable, align 8, !dbg !899, !tbaa !849
  %call = tail call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %self, %struct._object* %0, i8* null) #2, !dbg !900
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !396, metadata !842), !dbg !901
  %cmp = icmp eq %struct._object* %call, null, !dbg !902
  br i1 %cmp, label %cleanup, label %if.end, !dbg !904

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct._object* %call, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), !dbg !905
  br i1 %cmp1, label %if.end.13, label %if.then.4, !dbg !906

if.then.4:                                        ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !397, metadata !842), !dbg !907
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !396, metadata !842), !dbg !901
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !401, metadata !842), !dbg !909
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !911
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !911, !tbaa !864
  %dec = add i64 %1, -1, !dbg !911
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !911, !tbaa !864
  %cmp6 = icmp eq i64 %dec, 0, !dbg !911
  br i1 %cmp6, label %if.else, label %if.end.9, !dbg !913

if.else:                                          ; preds = %if.then.4
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !914
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !914, !tbaa !870
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !914
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !914, !tbaa !871
  tail call void %3(%struct._object* %call) #2, !dbg !914
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.4
  %call.i = tail call %struct._PyIO_State* @_PyIO_get_module_state() #2, !dbg !916
  tail call void @llvm.dbg.value(metadata %struct._PyIO_State* %call.i, i64 0, metadata !455, metadata !842) #2, !dbg !918
  %cmp.i = icmp eq %struct._PyIO_State* %call.i, null, !dbg !919
  br i1 %cmp.i, label %cleanup, label %if.then.i, !dbg !921

if.then.i:                                        ; preds = %if.end.9
  %unsupported_operation.i = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %call.i, i64 0, i32 2, !dbg !922
  %4 = load %struct._object*, %struct._object** %unsupported_operation.i, align 8, !dbg !922, !tbaa !923
  tail call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)) #2, !dbg !925
  br label %cleanup, !dbg !925

if.end.13:                                        ; preds = %if.end
  %cmp14 = icmp eq %struct._object* %args, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), !dbg !926
  br i1 %cmp14, label %do.body.16, label %cleanup, !dbg !927

do.body.16:                                       ; preds = %if.end.13
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !405, metadata !842), !dbg !928
  %5 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !930, !tbaa !864
  %dec19 = add i64 %5, -1, !dbg !930
  store i64 %dec19, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !930, !tbaa !864
  %cmp20 = icmp eq i64 %dec19, 0, !dbg !930
  br i1 %cmp20, label %if.else.22, label %cleanup, !dbg !932

if.else.22:                                       ; preds = %do.body.16
  %6 = load %struct._typeobject*, %struct._typeobject** getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 1), align 8, !dbg !933, !tbaa !870
  %tp_dealloc24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !933
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc24, align 8, !dbg !933, !tbaa !871
  tail call void %7(%struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0)) #2, !dbg !933
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.9, %if.end.13, %do.body.16, %if.else.22, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %if.else.22 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %do.body.16 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %if.end.13 ], [ null, %if.end.9 ], [ null, %if.then.i ]
  ret %struct._object* %retval.0, !dbg !935
}

declare %struct._object* @PyObject_CallMethodObjArgs(%struct._object*, %struct._object*, ...) #1

; Function Attrs: nounwind uwtable
define %struct._object* @_PyIOBase_check_readable(%struct._object* %self, %struct._object* readnone %args) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !411, metadata !842), !dbg !936
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !412, metadata !842), !dbg !937
  %0 = load %struct._object*, %struct._object** @_PyIO_str_readable, align 8, !dbg !938, !tbaa !849
  %call = tail call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %self, %struct._object* %0, i8* null) #2, !dbg !939
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !413, metadata !842), !dbg !940
  %cmp = icmp eq %struct._object* %call, null, !dbg !941
  br i1 %cmp, label %cleanup, label %if.end, !dbg !943

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct._object* %call, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), !dbg !944
  br i1 %cmp1, label %if.end.13, label %if.then.4, !dbg !945

if.then.4:                                        ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !414, metadata !842), !dbg !946
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !413, metadata !842), !dbg !940
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !418, metadata !842), !dbg !948
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !950
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !950, !tbaa !864
  %dec = add i64 %1, -1, !dbg !950
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !950, !tbaa !864
  %cmp6 = icmp eq i64 %dec, 0, !dbg !950
  br i1 %cmp6, label %if.else, label %if.end.9, !dbg !952

if.else:                                          ; preds = %if.then.4
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !953
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !953, !tbaa !870
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !953
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !953, !tbaa !871
  tail call void %3(%struct._object* %call) #2, !dbg !953
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.4
  %call.i = tail call %struct._PyIO_State* @_PyIO_get_module_state() #2, !dbg !955
  tail call void @llvm.dbg.value(metadata %struct._PyIO_State* %call.i, i64 0, metadata !455, metadata !842) #2, !dbg !957
  %cmp.i = icmp eq %struct._PyIO_State* %call.i, null, !dbg !958
  br i1 %cmp.i, label %cleanup, label %if.then.i, !dbg !959

if.then.i:                                        ; preds = %if.end.9
  %unsupported_operation.i = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %call.i, i64 0, i32 2, !dbg !960
  %4 = load %struct._object*, %struct._object** %unsupported_operation.i, align 8, !dbg !960, !tbaa !923
  tail call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0)) #2, !dbg !961
  br label %cleanup, !dbg !961

if.end.13:                                        ; preds = %if.end
  %cmp14 = icmp eq %struct._object* %args, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), !dbg !962
  br i1 %cmp14, label %do.body.16, label %cleanup, !dbg !963

do.body.16:                                       ; preds = %if.end.13
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !422, metadata !842), !dbg !964
  %5 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !966, !tbaa !864
  %dec19 = add i64 %5, -1, !dbg !966
  store i64 %dec19, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !966, !tbaa !864
  %cmp20 = icmp eq i64 %dec19, 0, !dbg !966
  br i1 %cmp20, label %if.else.22, label %cleanup, !dbg !968

if.else.22:                                       ; preds = %do.body.16
  %6 = load %struct._typeobject*, %struct._typeobject** getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 1), align 8, !dbg !969, !tbaa !870
  %tp_dealloc24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !969
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc24, align 8, !dbg !969, !tbaa !871
  tail call void %7(%struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0)) #2, !dbg !969
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.9, %if.end.13, %do.body.16, %if.else.22, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %if.else.22 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %do.body.16 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %if.end.13 ], [ null, %if.end.9 ], [ null, %if.then.i ]
  ret %struct._object* %retval.0, !dbg !971
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyIOBase_check_writable(%struct._object* %self, %struct._object* readnone %args) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !428, metadata !842), !dbg !972
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !429, metadata !842), !dbg !973
  %0 = load %struct._object*, %struct._object** @_PyIO_str_writable, align 8, !dbg !974, !tbaa !849
  %call = tail call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %self, %struct._object* %0, i8* null) #2, !dbg !975
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !430, metadata !842), !dbg !976
  %cmp = icmp eq %struct._object* %call, null, !dbg !977
  br i1 %cmp, label %cleanup, label %if.end, !dbg !979

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct._object* %call, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), !dbg !980
  br i1 %cmp1, label %if.end.13, label %if.then.4, !dbg !981

if.then.4:                                        ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !431, metadata !842), !dbg !982
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !430, metadata !842), !dbg !976
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !435, metadata !842), !dbg !984
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !986
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !986, !tbaa !864
  %dec = add i64 %1, -1, !dbg !986
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !986, !tbaa !864
  %cmp6 = icmp eq i64 %dec, 0, !dbg !986
  br i1 %cmp6, label %if.else, label %if.end.9, !dbg !988

if.else:                                          ; preds = %if.then.4
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !989
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !989, !tbaa !870
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !989
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !989, !tbaa !871
  tail call void %3(%struct._object* %call) #2, !dbg !989
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.4
  %call.i = tail call %struct._PyIO_State* @_PyIO_get_module_state() #2, !dbg !991
  tail call void @llvm.dbg.value(metadata %struct._PyIO_State* %call.i, i64 0, metadata !455, metadata !842) #2, !dbg !993
  %cmp.i = icmp eq %struct._PyIO_State* %call.i, null, !dbg !994
  br i1 %cmp.i, label %cleanup, label %if.then.i, !dbg !995

if.then.i:                                        ; preds = %if.end.9
  %unsupported_operation.i = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %call.i, i64 0, i32 2, !dbg !996
  %4 = load %struct._object*, %struct._object** %unsupported_operation.i, align 8, !dbg !996, !tbaa !923
  tail call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0)) #2, !dbg !997
  br label %cleanup, !dbg !997

if.end.13:                                        ; preds = %if.end
  %cmp14 = icmp eq %struct._object* %args, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), !dbg !998
  br i1 %cmp14, label %do.body.16, label %cleanup, !dbg !999

do.body.16:                                       ; preds = %if.end.13
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !439, metadata !842), !dbg !1000
  %5 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1002, !tbaa !864
  %dec19 = add i64 %5, -1, !dbg !1002
  store i64 %dec19, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1002, !tbaa !864
  %cmp20 = icmp eq i64 %dec19, 0, !dbg !1002
  br i1 %cmp20, label %if.else.22, label %cleanup, !dbg !1004

if.else.22:                                       ; preds = %do.body.16
  %6 = load %struct._typeobject*, %struct._typeobject** getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 1), align 8, !dbg !1005, !tbaa !870
  %tp_dealloc24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !1005
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc24, align 8, !dbg !1005, !tbaa !871
  tail call void %7(%struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0)) #2, !dbg !1005
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.9, %if.end.13, %do.body.16, %if.else.22, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %if.else.22 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %do.body.16 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %if.end.13 ], [ null, %if.end.9 ], [ null, %if.then.i ]
  ret %struct._object* %retval.0, !dbg !1007
}

; Function Attrs: nounwind uwtable
define internal void @iobase_dealloc(%struct.iobase* %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.iobase* %self, i64 0, metadata !475, metadata !842), !dbg !1008
  %0 = getelementptr inbounds %struct.iobase, %struct.iobase* %self, i64 0, i32 0, !dbg !1009
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !390, metadata !842) #2, !dbg !1011
  %ob_refcnt.i = getelementptr inbounds %struct.iobase, %struct.iobase* %self, i64 0, i32 0, i32 0, !dbg !1013
  %1 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1013, !tbaa !864
  %cmp.i = icmp eq i64 %1, 0, !dbg !1014
  br i1 %cmp.i, label %_PyIOBase_finalize.exit, label %_PyIOBase_finalize.exit.thread, !dbg !1015

_PyIOBase_finalize.exit.thread:                   ; preds = %entry
  tail call void @PyObject_CallFinalizer(%struct._object* %0) #2, !dbg !1016
  br label %do.body, !dbg !1017

_PyIOBase_finalize.exit:                          ; preds = %entry
  %call.i = tail call i32 @PyObject_CallFinalizerFromDealloc(%struct._object* %0) #2, !dbg !1018
  %cmp = icmp slt i32 %call.i, 0, !dbg !1019
  br i1 %cmp, label %if.then, label %do.body, !dbg !1017

if.then:                                          ; preds = %_PyIOBase_finalize.exit
  %ob_type = getelementptr inbounds %struct.iobase, %struct.iobase* %self, i64 0, i32 0, i32 1, !dbg !1020
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1020, !tbaa !870
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 19, !dbg !1020
  %3 = load i64, i64* %tp_flags, align 8, !dbg !1020, !tbaa !1023
  %and = and i64 %3, 512, !dbg !1020
  %cmp1 = icmp eq i64 %and, 0, !dbg !1020
  br i1 %cmp1, label %return, label %if.then.2, !dbg !1024

if.then.2:                                        ; preds = %if.then
  %ob_refcnt = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 0, i32 0, i32 0, !dbg !1025
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !1025, !tbaa !864
  %inc = add i64 %4, 1, !dbg !1025
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1025, !tbaa !864
  br label %return, !dbg !1025

do.body:                                          ; preds = %_PyIOBase_finalize.exit.thread, %_PyIOBase_finalize.exit
  %add.ptr = getelementptr %struct.iobase, %struct.iobase* %self, i64 -1, i32 0, i32 1, !dbg !1026
  %gc_refs = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 2, !dbg !1028
  %5 = bitcast %struct._typeobject** %gc_refs to i64*, !dbg !1028
  %6 = load i64, i64* %5, align 8, !dbg !1028, !tbaa !1031
  %and6 = and i64 %6, 1, !dbg !1028
  %or = or i64 %and6, -4, !dbg !1028
  store i64 %or, i64* %5, align 8, !dbg !1028, !tbaa !1031
  %gc_next = bitcast %struct._typeobject** %add.ptr to %union._gc_head**, !dbg !1033
  %7 = bitcast %struct._typeobject** %add.ptr to i64*, !dbg !1033
  %8 = load i64, i64* %7, align 8, !dbg !1033, !tbaa !1035
  %gc_prev = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 1, !dbg !1033
  %9 = bitcast %struct._typeobject** %gc_prev to i64**, !dbg !1033
  %10 = load i64*, i64** %9, align 8, !dbg !1033, !tbaa !1036
  store i64 %8, i64* %10, align 8, !dbg !1033, !tbaa !1035
  %11 = ptrtoint i64* %10 to i64, !dbg !1033
  %12 = bitcast %struct._typeobject** %add.ptr to %struct.anon**, !dbg !1033
  %13 = load %struct.anon*, %struct.anon** %12, align 8, !dbg !1033, !tbaa !1035
  %gc_prev18 = getelementptr inbounds %struct.anon, %struct.anon* %13, i64 0, i32 1, !dbg !1033
  %14 = bitcast %union._gc_head** %gc_prev18 to i64*, !dbg !1033
  store i64 %11, i64* %14, align 8, !dbg !1033, !tbaa !1036
  store %union._gc_head* null, %union._gc_head** %gc_next, align 8, !dbg !1033, !tbaa !1035
  %weakreflist = getelementptr inbounds %struct.iobase, %struct.iobase* %self, i64 0, i32 2, !dbg !1037
  %15 = load %struct._object*, %struct._object** %weakreflist, align 8, !dbg !1037, !tbaa !1039
  %cmp23 = icmp eq %struct._object* %15, null, !dbg !1041
  br i1 %cmp23, label %do.body.26, label %if.then.24, !dbg !1042

if.then.24:                                       ; preds = %do.body
  tail call void @PyObject_ClearWeakRefs(%struct._object* %0) #2, !dbg !1043
  br label %do.body.26, !dbg !1043

do.body.26:                                       ; preds = %do.body, %if.then.24
  %dict = getelementptr inbounds %struct.iobase, %struct.iobase* %self, i64 0, i32 1, !dbg !1044
  %16 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1044, !tbaa !1046
  tail call void @llvm.dbg.value(metadata %struct._object* %16, i64 0, metadata !478, metadata !842), !dbg !1044
  %cmp27 = icmp eq %struct._object* %16, null, !dbg !1047
  br i1 %cmp27, label %if.end.38, label %if.then.28, !dbg !1048

if.then.28:                                       ; preds = %do.body.26
  store %struct._object* null, %struct._object** %dict, align 8, !dbg !1049, !tbaa !1046
  tail call void @llvm.dbg.value(metadata %struct._object* %16, i64 0, metadata !480, metadata !842), !dbg !1051
  %ob_refcnt31 = getelementptr inbounds %struct._object, %struct._object* %16, i64 0, i32 0, !dbg !1053
  %17 = load i64, i64* %ob_refcnt31, align 8, !dbg !1053, !tbaa !864
  %dec = add i64 %17, -1, !dbg !1053
  store i64 %dec, i64* %ob_refcnt31, align 8, !dbg !1053, !tbaa !864
  %cmp32 = icmp eq i64 %dec, 0, !dbg !1053
  br i1 %cmp32, label %if.else, label %if.end.38, !dbg !1055

if.else:                                          ; preds = %if.then.28
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %16, i64 0, i32 1, !dbg !1056
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8, !dbg !1056, !tbaa !870
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i64 0, i32 4, !dbg !1056
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1056, !tbaa !871
  tail call void %19(%struct._object* %16) #2, !dbg !1056
  br label %if.end.38

if.end.38:                                        ; preds = %if.else, %if.then.28, %do.body.26
  %ob_type41 = getelementptr inbounds %struct.iobase, %struct.iobase* %self, i64 0, i32 0, i32 1, !dbg !1058
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8, !dbg !1058, !tbaa !870
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i64 0, i32 38, !dbg !1059
  %21 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !1059, !tbaa !1060
  %22 = bitcast %struct.iobase* %self to i8*, !dbg !1061
  tail call void %21(i8* %22) #2, !dbg !1058
  br label %return, !dbg !1062

return:                                           ; preds = %if.then, %if.then.2, %if.end.38
  ret void, !dbg !1063
}

; Function Attrs: nounwind uwtable
define internal i32 @iobase_traverse(%struct.iobase* nocapture readonly %self, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.iobase* %self, i64 0, metadata !488, metadata !842), !dbg !1065
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !489, metadata !842), !dbg !1066
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !490, metadata !842), !dbg !1067
  %dict = getelementptr inbounds %struct.iobase, %struct.iobase* %self, i64 0, i32 1, !dbg !1068
  %0 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1068, !tbaa !1046
  %tobool = icmp eq %struct._object* %0, null, !dbg !1068
  br i1 %tobool, label %do.end, label %if.then, !dbg !1070

if.then:                                          ; preds = %entry
  %call = tail call i32 %visit(%struct._object* %0, i8* %arg) #2, !dbg !1071
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !491, metadata !842), !dbg !1071
  %tobool2 = icmp eq i32 %call, 0, !dbg !1073
  br i1 %tobool2, label %do.end, label %return

do.end:                                           ; preds = %entry, %if.then
  br label %return, !dbg !1075

return:                                           ; preds = %if.then, %do.end
  %retval.1 = phi i32 [ 0, %do.end ], [ %call, %if.then ]
  ret i32 %retval.1, !dbg !1076
}

; Function Attrs: nounwind uwtable
define internal i32 @iobase_clear(%struct.iobase* nocapture %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.iobase* %self, i64 0, metadata !499, metadata !842), !dbg !1077
  %dict = getelementptr inbounds %struct.iobase, %struct.iobase* %self, i64 0, i32 1, !dbg !1078
  %0 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1078, !tbaa !1046
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !500, metadata !842), !dbg !1078
  %cmp = icmp eq %struct._object* %0, null, !dbg !1080
  br i1 %cmp, label %if.end.5, label %if.then, !dbg !1081

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %dict, align 8, !dbg !1082, !tbaa !1046
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !502, metadata !842), !dbg !1084
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !1086
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !1086, !tbaa !864
  %dec = add i64 %1, -1, !dbg !1086
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1086, !tbaa !864
  %cmp3 = icmp eq i64 %dec, 0, !dbg !1086
  br i1 %cmp3, label %if.else, label %if.end.5, !dbg !1088

if.else:                                          ; preds = %if.then
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 1, !dbg !1089
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1089, !tbaa !870
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !1089
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1089, !tbaa !871
  tail call void %3(%struct._object* %0) #2, !dbg !1089
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then, %entry
  ret i32 0, !dbg !1091
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_iter(%struct._object* %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !508, metadata !842), !dbg !1092
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !386, metadata !842) #2, !dbg !1093
  tail call void @llvm.dbg.value(metadata %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), i64 0, metadata !387, metadata !842) #2, !dbg !1096
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !445, metadata !842) #2, !dbg !1097
  %0 = load %struct._object*, %struct._object** @_PyIO_str_closed, align 8, !dbg !1099, !tbaa !849
  %call.i.i = tail call %struct._object* @PyObject_GetAttr(%struct._object* %self, %struct._object* %0) #2, !dbg !1100
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.i, i64 0, metadata !446, metadata !842) #2, !dbg !1101
  %cmp.i.i = icmp eq %struct._object* %call.i.i, null, !dbg !1102
  br i1 %cmp.i.i, label %if.end, label %if.end.i.i, !dbg !1103

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = tail call i32 @PyObject_IsTrue(%struct._object* %call.i.i) #2, !dbg !1104
  tail call void @llvm.dbg.value(metadata i32 %call1.i.i, i64 0, metadata !447, metadata !842) #2, !dbg !1105
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.i, i64 0, metadata !448, metadata !842) #2, !dbg !1106
  %ob_refcnt.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 0, i32 0, !dbg !1107
  %1 = load i64, i64* %ob_refcnt.i.i, align 8, !dbg !1107, !tbaa !864
  %dec.i.i = add i64 %1, -1, !dbg !1107
  store i64 %dec.i.i, i64* %ob_refcnt.i.i, align 8, !dbg !1107, !tbaa !864
  %cmp2.i.i = icmp eq i64 %dec.i.i, 0, !dbg !1107
  br i1 %cmp2.i.i, label %if.else.i.i, label %iobase_closed.exit.i, !dbg !1108

if.else.i.i:                                      ; preds = %if.end.i.i
  %ob_type.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 0, i32 1, !dbg !1109
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.i, align 8, !dbg !1109, !tbaa !870
  %tp_dealloc.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !1109
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.i, align 8, !dbg !1109, !tbaa !871
  tail call void %3(%struct._object* %call.i.i) #2, !dbg !1109
  br label %iobase_closed.exit.i, !dbg !1110

iobase_closed.exit.i:                             ; preds = %if.else.i.i, %if.end.i.i
  %tobool.i = icmp eq i32 %call1.i.i, 0, !dbg !1110
  br i1 %tobool.i, label %if.end, label %_PyIOBase_check_closed.exit, !dbg !1111

_PyIOBase_check_closed.exit:                      ; preds = %iobase_closed.exit.i
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1112, !tbaa !849
  tail call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0)) #2, !dbg !1113
  br label %return, !dbg !1114

if.end:                                           ; preds = %iobase_closed.exit.i, %entry
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %self, i64 0, i32 0, !dbg !1115
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !1115, !tbaa !864
  %inc = add i64 %5, 1, !dbg !1115
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1115, !tbaa !864
  br label %return, !dbg !1116

return:                                           ; preds = %_PyIOBase_check_closed.exit, %if.end
  %retval.0 = phi %struct._object* [ %self, %if.end ], [ null, %_PyIOBase_check_closed.exit ]
  ret %struct._object* %retval.0, !dbg !1117
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_iternext(%struct._object* %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !511, metadata !842), !dbg !1118
  %0 = load %struct._object*, %struct._object** @_PyIO_str_readline, align 8, !dbg !1119, !tbaa !849
  %call = tail call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %self, %struct._object* %0, i8* null) #2, !dbg !1120
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !512, metadata !842), !dbg !1121
  %cmp = icmp eq %struct._object* %call, null, !dbg !1122
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1124

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @PyObject_Size(%struct._object* %call) #2, !dbg !1125
  %cmp2 = icmp eq i64 %call1, 0, !dbg !1126
  br i1 %cmp2, label %do.body, label %cleanup, !dbg !1127

do.body:                                          ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !513, metadata !842), !dbg !1128
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1130
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !1130, !tbaa !864
  %dec = add i64 %1, -1, !dbg !1130
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1130, !tbaa !864
  %cmp4 = icmp eq i64 %dec, 0, !dbg !1130
  br i1 %cmp4, label %if.else, label %cleanup, !dbg !1132

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1133
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1133, !tbaa !870
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !1133
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1133, !tbaa !871
  tail call void %3(%struct._object* %call) #2, !dbg !1133
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else, %do.body, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %do.body ], [ null, %if.else ], [ %call, %if.end ]
  ret %struct._object* %retval.0, !dbg !1135
}

declare %struct._object* @PyType_GenericNew(%struct._typeobject*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal void @iobase_finalize(%struct._object* %self) #0 {
entry:
  %error_type = alloca %struct._object*, align 8
  %error_value = alloca %struct._object*, align 8
  %error_traceback = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !681, metadata !842), !dbg !1136
  %0 = bitcast %struct._object** %error_type to i8*, !dbg !1137
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1137
  %1 = bitcast %struct._object** %error_value to i8*, !dbg !1137
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1137
  %2 = bitcast %struct._object** %error_traceback to i8*, !dbg !1137
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1137
  tail call void @llvm.dbg.value(metadata %struct._object** %error_type, i64 0, metadata !683, metadata !842), !dbg !1138
  tail call void @llvm.dbg.value(metadata %struct._object** %error_value, i64 0, metadata !684, metadata !842), !dbg !1139
  tail call void @llvm.dbg.value(metadata %struct._object** %error_traceback, i64 0, metadata !685, metadata !842), !dbg !1140
  call void @PyErr_Fetch(%struct._object** nonnull %error_type, %struct._object** nonnull %error_value, %struct._object** nonnull %error_traceback) #2, !dbg !1141
  %3 = load %struct._object*, %struct._object** @_PyIO_str_closed, align 8, !dbg !1142, !tbaa !849
  %call = call %struct._object* @PyObject_GetAttr(%struct._object* %self, %struct._object* %3) #2, !dbg !1143
  call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !682, metadata !842), !dbg !1144
  %cmp = icmp eq %struct._object* %call, null, !dbg !1145
  br i1 %cmp, label %if.then, label %if.else, !dbg !1146

if.then:                                          ; preds = %entry
  call void @PyErr_Clear() #2, !dbg !1147
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !686, metadata !842), !dbg !1149
  br label %if.end.31, !dbg !1150

if.else:                                          ; preds = %entry
  %call1 = call i32 @PyObject_IsTrue(%struct._object* %call) #2, !dbg !1151
  call void @llvm.dbg.value(metadata i32 %call1, i64 0, metadata !686, metadata !842), !dbg !1149
  call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !687, metadata !842), !dbg !1152
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1154
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !1154, !tbaa !864
  %dec = add i64 %4, -1, !dbg !1154
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1154, !tbaa !864
  %cmp2 = icmp eq i64 %dec, 0, !dbg !1154
  br i1 %cmp2, label %if.else.4, label %if.end, !dbg !1156

if.else.4:                                        ; preds = %if.else
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1157
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1157, !tbaa !870
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !1157
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1157, !tbaa !871
  call void %6(%struct._object* %call) #2, !dbg !1157
  br label %if.end

if.end:                                           ; preds = %if.else, %if.else.4
  switch i32 %call1, label %if.end.31 [
    i32 -1, label %if.then.6
    i32 0, label %if.then.10
  ], !dbg !1159

if.then.6:                                        ; preds = %if.end
  call void @PyErr_Clear() #2, !dbg !1160
  br label %if.end.31, !dbg !1160

if.then.10:                                       ; preds = %if.end
  %call11 = call i32 @_PyObject_SetAttrId(%struct._object* %self, %struct._Py_Identifier* nonnull @iobase_finalize.PyId__finalizing, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0)) #2, !dbg !1162
  %tobool = icmp eq i32 %call11, 0, !dbg !1162
  br i1 %tobool, label %if.end.13, label %if.then.12, !dbg !1164

if.then.12:                                       ; preds = %if.then.10
  call void @PyErr_Clear() #2, !dbg !1165
  br label %if.end.13, !dbg !1165

if.end.13:                                        ; preds = %if.then.10, %if.then.12
  %7 = load %struct._object*, %struct._object** @_PyIO_str_close, align 8, !dbg !1166, !tbaa !849
  %call14 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %self, %struct._object* %7, i8* null) #2, !dbg !1167
  call void @llvm.dbg.value(metadata %struct._object* %call14, i64 0, metadata !682, metadata !842), !dbg !1144
  %cmp15 = icmp eq %struct._object* %call14, null, !dbg !1168
  br i1 %cmp15, label %if.then.16, label %do.body.18, !dbg !1169

if.then.16:                                       ; preds = %if.end.13
  call void @PyErr_Clear() #2, !dbg !1170
  br label %if.end.31, !dbg !1170

do.body.18:                                       ; preds = %if.end.13
  call void @llvm.dbg.value(metadata %struct._object* %call14, i64 0, metadata !691, metadata !842), !dbg !1171
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %call14, i64 0, i32 0, !dbg !1173
  %8 = load i64, i64* %ob_refcnt20, align 8, !dbg !1173, !tbaa !864
  %dec21 = add i64 %8, -1, !dbg !1173
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !1173, !tbaa !864
  %cmp22 = icmp eq i64 %dec21, 0, !dbg !1173
  br i1 %cmp22, label %if.else.24, label %if.end.31, !dbg !1175

if.else.24:                                       ; preds = %do.body.18
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %call14, i64 0, i32 1, !dbg !1176
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !1176, !tbaa !870
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 4, !dbg !1176
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !1176, !tbaa !871
  call void %10(%struct._object* %call14) #2, !dbg !1176
  br label %if.end.31

if.end.31:                                        ; preds = %if.end, %if.then.6, %if.then, %if.else.24, %do.body.18, %if.then.16
  call void @llvm.dbg.value(metadata %struct._object** %error_type, i64 0, metadata !683, metadata !842), !dbg !1138
  %11 = load %struct._object*, %struct._object** %error_type, align 8, !dbg !1178, !tbaa !849
  call void @llvm.dbg.value(metadata %struct._object** %error_value, i64 0, metadata !684, metadata !842), !dbg !1139
  %12 = load %struct._object*, %struct._object** %error_value, align 8, !dbg !1179, !tbaa !849
  call void @llvm.dbg.value(metadata %struct._object** %error_traceback, i64 0, metadata !685, metadata !842), !dbg !1140
  %13 = load %struct._object*, %struct._object** %error_traceback, align 8, !dbg !1180, !tbaa !849
  call void @PyErr_Restore(%struct._object* %11, %struct._object* %12, %struct._object* %13) #2, !dbg !1181
  call void @llvm.lifetime.end(i64 8, i8* %2) #2, !dbg !1182
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1182
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1182
  ret void, !dbg !1182
}

declare %struct._object* @PyObject_GetAttr(%struct._object*, %struct._object*) #1

declare i32 @PyObject_IsTrue(%struct._object*) #1

declare %struct._PyIO_State* @_PyIO_get_module_state() #1

declare void @PyObject_ClearWeakRefs(%struct._object*) #1

declare i64 @PyObject_Size(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal noalias %struct._object* @iobase_seek(%struct._object* nocapture readnone %self, %struct._object* nocapture readnone %args) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !519, metadata !842), !dbg !1183
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !520, metadata !842), !dbg !1184
  %call.i = tail call %struct._PyIO_State* @_PyIO_get_module_state() #2, !dbg !1185
  tail call void @llvm.dbg.value(metadata %struct._PyIO_State* %call.i, i64 0, metadata !455, metadata !842) #2, !dbg !1187
  %cmp.i = icmp eq %struct._PyIO_State* %call.i, null, !dbg !1188
  br i1 %cmp.i, label %iobase_unsupported.exit, label %if.then.i, !dbg !1189

if.then.i:                                        ; preds = %entry
  %unsupported_operation.i = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %call.i, i64 0, i32 2, !dbg !1190
  %0 = load %struct._object*, %struct._object** %unsupported_operation.i, align 8, !dbg !1190, !tbaa !923
  tail call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #2, !dbg !1191
  br label %iobase_unsupported.exit, !dbg !1191

iobase_unsupported.exit:                          ; preds = %entry, %if.then.i
  ret %struct._object* null, !dbg !1192
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_tell(%struct._object* %self, %struct._object* nocapture readnone %args) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !523, metadata !842), !dbg !1193
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !524, metadata !842), !dbg !1194
  %call = tail call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %self, %struct._Py_Identifier* nonnull @iobase_tell.PyId_seek, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i32 0, i32 1) #2, !dbg !1195
  ret %struct._object* %call, !dbg !1196
}

; Function Attrs: nounwind uwtable
define internal noalias %struct._object* @iobase_truncate(%struct._object* nocapture readnone %self, %struct._object* nocapture readnone %args) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !527, metadata !842), !dbg !1197
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !528, metadata !842), !dbg !1198
  %call.i = tail call %struct._PyIO_State* @_PyIO_get_module_state() #2, !dbg !1199
  tail call void @llvm.dbg.value(metadata %struct._PyIO_State* %call.i, i64 0, metadata !455, metadata !842) #2, !dbg !1201
  %cmp.i = icmp eq %struct._PyIO_State* %call.i, null, !dbg !1202
  br i1 %cmp.i, label %iobase_unsupported.exit, label %if.then.i, !dbg !1203

if.then.i:                                        ; preds = %entry
  %unsupported_operation.i = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %call.i, i64 0, i32 2, !dbg !1204
  %0 = load %struct._object*, %struct._object** %unsupported_operation.i, align 8, !dbg !1204, !tbaa !923
  tail call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)) #2, !dbg !1205
  br label %iobase_unsupported.exit, !dbg !1205

iobase_unsupported.exit:                          ; preds = %entry, %if.then.i
  ret %struct._object* null, !dbg !1206
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_flush(%struct._object* %self, %struct._object* nocapture readnone %args) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !531, metadata !842), !dbg !1207
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !532, metadata !842), !dbg !1208
  %call = tail call i32 @_PyObject_HasAttrId(%struct._object* %self, %struct._Py_Identifier* nonnull @PyId___IOBase_closed) #2, !dbg !1209
  %tobool = icmp eq i32 %call, 0, !dbg !1209
  br i1 %tobool, label %if.end, label %if.then, !dbg !1211

if.then:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1212, !tbaa !849
  tail call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0)) #2, !dbg !1214
  br label %return, !dbg !1215

if.end:                                           ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1216, !tbaa !864
  %inc = add i64 %1, 1, !dbg !1216
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1216, !tbaa !864
  br label %return, !dbg !1216

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ @_Py_NoneStruct, %if.end ]
  ret %struct._object* %retval.0, !dbg !1217
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_close(%struct._object* %self, %struct._object* nocapture readnone %args) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !535, metadata !842), !dbg !1218
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !536, metadata !842), !dbg !1219
  %call = tail call i32 @_PyObject_HasAttrId(%struct._object* %self, %struct._Py_Identifier* nonnull @PyId___IOBase_closed) #2, !dbg !1220
  %tobool = icmp eq i32 %call, 0, !dbg !1220
  br i1 %tobool, label %if.end, label %if.then, !dbg !1222

if.then:                                          ; preds = %entry
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1223, !tbaa !864
  %inc = add i64 %0, 1, !dbg !1223
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1223, !tbaa !864
  br label %cleanup, !dbg !1223

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** @_PyIO_str_flush, align 8, !dbg !1224, !tbaa !849
  %call1 = tail call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %self, %struct._object* %1, i8* null) #2, !dbg !1225
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !537, metadata !842), !dbg !1226
  %call2 = tail call i32 @_PyObject_SetAttrId(%struct._object* %self, %struct._Py_Identifier* nonnull @PyId___IOBase_closed, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0)) #2, !dbg !1227
  %cmp = icmp slt i32 %call2, 0, !dbg !1228
  %cmp4 = icmp eq %struct._object* %call1, null, !dbg !1229
  br i1 %cmp, label %do.body, label %if.end.13, !dbg !1230

do.body:                                          ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !538, metadata !842), !dbg !1231
  br i1 %cmp4, label %cleanup, label %do.body.6, !dbg !1233

do.body.6:                                        ; preds = %do.body
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !542, metadata !842), !dbg !1234
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !1236
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !1236, !tbaa !864
  %dec = add i64 %2, -1, !dbg !1236
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1236, !tbaa !864
  %cmp7 = icmp eq i64 %dec, 0, !dbg !1236
  br i1 %cmp7, label %if.else, label %cleanup, !dbg !1238

if.else:                                          ; preds = %do.body.6
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !1239
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1239, !tbaa !870
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !1239
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1239, !tbaa !871
  tail call void %4(%struct._object* %call1) #2, !dbg !1239
  br label %cleanup

if.end.13:                                        ; preds = %if.end
  br i1 %cmp4, label %cleanup, label %do.body.17, !dbg !1241

do.body.17:                                       ; preds = %if.end.13
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !545, metadata !842), !dbg !1242
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !1244
  %5 = load i64, i64* %ob_refcnt19, align 8, !dbg !1244, !tbaa !864
  %dec20 = add i64 %5, -1, !dbg !1244
  store i64 %dec20, i64* %ob_refcnt19, align 8, !dbg !1244, !tbaa !864
  %cmp21 = icmp eq i64 %dec20, 0, !dbg !1244
  br i1 %cmp21, label %if.else.23, label %if.end.26, !dbg !1246

if.else.23:                                       ; preds = %do.body.17
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !1247
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8, !dbg !1247, !tbaa !870
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !1247
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8, !dbg !1247, !tbaa !871
  tail call void %7(%struct._object* %call1) #2, !dbg !1247
  br label %if.end.26

if.end.26:                                        ; preds = %do.body.17, %if.else.23
  %8 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1249, !tbaa !864
  %inc29 = add i64 %8, 1, !dbg !1249
  store i64 %inc29, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1249, !tbaa !864
  br label %cleanup, !dbg !1249

cleanup:                                          ; preds = %if.end.13, %do.body, %do.body.6, %if.else, %if.end.26, %if.then
  %retval.0 = phi %struct._object* [ @_Py_NoneStruct, %if.then ], [ @_Py_NoneStruct, %if.end.26 ], [ null, %if.else ], [ null, %do.body.6 ], [ null, %do.body ], [ null, %if.end.13 ]
  ret %struct._object* %retval.0, !dbg !1250
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_seekable(%struct._object* nocapture readnone %self, %struct._object* nocapture readnone %args) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !549, metadata !842), !dbg !1251
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !550, metadata !842), !dbg !1252
  %0 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1253, !tbaa !864
  %inc = add i64 %0, 1, !dbg !1253
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1253, !tbaa !864
  ret %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), !dbg !1253
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_readable(%struct._object* nocapture readnone %self, %struct._object* nocapture readnone %args) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !553, metadata !842), !dbg !1254
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !554, metadata !842), !dbg !1255
  %0 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1256, !tbaa !864
  %inc = add i64 %0, 1, !dbg !1256
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1256, !tbaa !864
  ret %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), !dbg !1256
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_writable(%struct._object* nocapture readnone %self, %struct._object* nocapture readnone %args) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !557, metadata !842), !dbg !1257
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !558, metadata !842), !dbg !1258
  %0 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1259, !tbaa !864
  %inc = add i64 %0, 1, !dbg !1259
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1259, !tbaa !864
  ret %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), !dbg !1259
}

; Function Attrs: nounwind uwtable
define internal noalias %struct._object* @iobase_fileno(%struct._object* nocapture readnone %self, %struct._object* nocapture readnone %args) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !561, metadata !842), !dbg !1260
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !562, metadata !842), !dbg !1261
  %call.i = tail call %struct._PyIO_State* @_PyIO_get_module_state() #2, !dbg !1262
  tail call void @llvm.dbg.value(metadata %struct._PyIO_State* %call.i, i64 0, metadata !455, metadata !842) #2, !dbg !1264
  %cmp.i = icmp eq %struct._PyIO_State* %call.i, null, !dbg !1265
  br i1 %cmp.i, label %iobase_unsupported.exit, label %if.then.i, !dbg !1266

if.then.i:                                        ; preds = %entry
  %unsupported_operation.i = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %call.i, i64 0, i32 2, !dbg !1267
  %0 = load %struct._object*, %struct._object** %unsupported_operation.i, align 8, !dbg !1267, !tbaa !923
  tail call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0)) #2, !dbg !1268
  br label %iobase_unsupported.exit, !dbg !1268

iobase_unsupported.exit:                          ; preds = %entry, %if.then.i
  ret %struct._object* null, !dbg !1269
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_isatty(%struct._object* %self, %struct._object* nocapture readnone %args) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !565, metadata !842), !dbg !1270
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !566, metadata !842), !dbg !1271
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !386, metadata !842) #2, !dbg !1272
  tail call void @llvm.dbg.value(metadata %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), i64 0, metadata !387, metadata !842) #2, !dbg !1275
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !445, metadata !842) #2, !dbg !1276
  %0 = load %struct._object*, %struct._object** @_PyIO_str_closed, align 8, !dbg !1278, !tbaa !849
  %call.i.i = tail call %struct._object* @PyObject_GetAttr(%struct._object* %self, %struct._object* %0) #2, !dbg !1279
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.i, i64 0, metadata !446, metadata !842) #2, !dbg !1280
  %cmp.i.i = icmp eq %struct._object* %call.i.i, null, !dbg !1281
  br i1 %cmp.i.i, label %if.end, label %if.end.i.i, !dbg !1282

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = tail call i32 @PyObject_IsTrue(%struct._object* %call.i.i) #2, !dbg !1283
  tail call void @llvm.dbg.value(metadata i32 %call1.i.i, i64 0, metadata !447, metadata !842) #2, !dbg !1284
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.i, i64 0, metadata !448, metadata !842) #2, !dbg !1285
  %ob_refcnt.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 0, i32 0, !dbg !1286
  %1 = load i64, i64* %ob_refcnt.i.i, align 8, !dbg !1286, !tbaa !864
  %dec.i.i = add i64 %1, -1, !dbg !1286
  store i64 %dec.i.i, i64* %ob_refcnt.i.i, align 8, !dbg !1286, !tbaa !864
  %cmp2.i.i = icmp eq i64 %dec.i.i, 0, !dbg !1286
  br i1 %cmp2.i.i, label %if.else.i.i, label %iobase_closed.exit.i, !dbg !1287

if.else.i.i:                                      ; preds = %if.end.i.i
  %ob_type.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 0, i32 1, !dbg !1288
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.i, align 8, !dbg !1288, !tbaa !870
  %tp_dealloc.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !1288
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.i, align 8, !dbg !1288, !tbaa !871
  tail call void %3(%struct._object* %call.i.i) #2, !dbg !1288
  br label %iobase_closed.exit.i, !dbg !1289

iobase_closed.exit.i:                             ; preds = %if.else.i.i, %if.end.i.i
  %tobool.i = icmp eq i32 %call1.i.i, 0, !dbg !1289
  br i1 %tobool.i, label %if.end, label %_PyIOBase_check_closed.exit, !dbg !1290

_PyIOBase_check_closed.exit:                      ; preds = %iobase_closed.exit.i
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1291, !tbaa !849
  tail call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0)) #2, !dbg !1292
  br label %return, !dbg !1293

if.end:                                           ; preds = %iobase_closed.exit.i, %entry
  %5 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1294, !tbaa !864
  %inc = add i64 %5, 1, !dbg !1294
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1294, !tbaa !864
  br label %return, !dbg !1294

return:                                           ; preds = %_PyIOBase_check_closed.exit, %if.end
  %retval.0 = phi %struct._object* [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.end ], [ null, %_PyIOBase_check_closed.exit ]
  ret %struct._object* %retval.0, !dbg !1295
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_enter(%struct._object* %self, %struct._object* nocapture readnone %args) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !569, metadata !842), !dbg !1296
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !570, metadata !842), !dbg !1297
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !386, metadata !842) #2, !dbg !1298
  tail call void @llvm.dbg.value(metadata %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), i64 0, metadata !387, metadata !842) #2, !dbg !1301
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !445, metadata !842) #2, !dbg !1302
  %0 = load %struct._object*, %struct._object** @_PyIO_str_closed, align 8, !dbg !1304, !tbaa !849
  %call.i.i = tail call %struct._object* @PyObject_GetAttr(%struct._object* %self, %struct._object* %0) #2, !dbg !1305
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.i, i64 0, metadata !446, metadata !842) #2, !dbg !1306
  %cmp.i.i = icmp eq %struct._object* %call.i.i, null, !dbg !1307
  br i1 %cmp.i.i, label %if.end, label %if.end.i.i, !dbg !1308

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = tail call i32 @PyObject_IsTrue(%struct._object* %call.i.i) #2, !dbg !1309
  tail call void @llvm.dbg.value(metadata i32 %call1.i.i, i64 0, metadata !447, metadata !842) #2, !dbg !1310
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.i, i64 0, metadata !448, metadata !842) #2, !dbg !1311
  %ob_refcnt.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 0, i32 0, !dbg !1312
  %1 = load i64, i64* %ob_refcnt.i.i, align 8, !dbg !1312, !tbaa !864
  %dec.i.i = add i64 %1, -1, !dbg !1312
  store i64 %dec.i.i, i64* %ob_refcnt.i.i, align 8, !dbg !1312, !tbaa !864
  %cmp2.i.i = icmp eq i64 %dec.i.i, 0, !dbg !1312
  br i1 %cmp2.i.i, label %if.else.i.i, label %iobase_closed.exit.i, !dbg !1313

if.else.i.i:                                      ; preds = %if.end.i.i
  %ob_type.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 0, i32 1, !dbg !1314
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.i, align 8, !dbg !1314, !tbaa !870
  %tp_dealloc.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !1314
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.i, align 8, !dbg !1314, !tbaa !871
  tail call void %3(%struct._object* %call.i.i) #2, !dbg !1314
  br label %iobase_closed.exit.i, !dbg !1315

iobase_closed.exit.i:                             ; preds = %if.else.i.i, %if.end.i.i
  %tobool.i = icmp eq i32 %call1.i.i, 0, !dbg !1315
  br i1 %tobool.i, label %if.end, label %_PyIOBase_check_closed.exit, !dbg !1316

_PyIOBase_check_closed.exit:                      ; preds = %iobase_closed.exit.i
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1317, !tbaa !849
  tail call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0)) #2, !dbg !1318
  br label %return, !dbg !1319

if.end:                                           ; preds = %iobase_closed.exit.i, %entry
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %self, i64 0, i32 0, !dbg !1320
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !1320, !tbaa !864
  %inc = add i64 %5, 1, !dbg !1320
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1320, !tbaa !864
  br label %return, !dbg !1321

return:                                           ; preds = %_PyIOBase_check_closed.exit, %if.end
  %retval.0 = phi %struct._object* [ %self, %if.end ], [ null, %_PyIOBase_check_closed.exit ]
  ret %struct._object* %retval.0, !dbg !1322
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_exit(%struct._object* %self, %struct._object* nocapture readnone %args) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !573, metadata !842), !dbg !1323
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !574, metadata !842), !dbg !1324
  %0 = load %struct._object*, %struct._object** @_PyIO_str_close, align 8, !dbg !1325, !tbaa !849
  %call = tail call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %self, %struct._object* %0, i8* null) #2, !dbg !1326
  ret %struct._object* %call, !dbg !1327
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_readline(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %limit = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !577, metadata !842), !dbg !1328
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !578, metadata !842), !dbg !1329
  %0 = bitcast i64* %limit to i8*, !dbg !1330
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1330
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !579, metadata !842), !dbg !1331
  store i64 -1, i64* %limit, align 8, !dbg !1331, !tbaa !1332
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !580, metadata !842), !dbg !1333
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !583, metadata !842), !dbg !1334
  tail call void @llvm.dbg.value(metadata i64* %limit, i64 0, metadata !579, metadata !842), !dbg !1331
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0), i32 (%struct._object*, i8*)* nonnull @_PyIO_ConvertSsize_t, i64* nonnull %limit) #2, !dbg !1335
  %tobool = icmp eq i32 %call, 0, !dbg !1335
  br i1 %tobool, label %cleanup.219, label %if.end, !dbg !1337

if.end:                                           ; preds = %entry
  %call1 = call i32 @_PyObject_HasAttrId(%struct._object* %self, %struct._Py_Identifier* nonnull @iobase_readline.PyId_peek) #2, !dbg !1338
  %tobool2 = icmp eq i32 %call1, 0, !dbg !1338
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !580, metadata !842), !dbg !1333
  %call5 = call %struct._object* @PyByteArray_FromStringAndSize(i8* null, i64 0) #2, !dbg !1340
  call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !581, metadata !842), !dbg !1341
  %cmp = icmp eq %struct._object* %call5, null, !dbg !1342
  br i1 %cmp, label %cleanup.219, label %while.cond.preheader, !dbg !1344

while.cond.preheader:                             ; preds = %if.end
  %1 = getelementptr inbounds %struct._object, %struct._object* %call5, i64 1, i32 0, !dbg !1345
  %ob_start170 = getelementptr inbounds %struct._object, %struct._object* %call5, i64 2, i32 1, !dbg !1346
  %2 = bitcast %struct._typeobject** %ob_start170 to i8**, !dbg !1346
  br label %while.cond, !dbg !1331

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.preheader
  call void @llvm.dbg.value(metadata i64* %limit, i64 0, metadata !579, metadata !842), !dbg !1331
  %3 = load i64, i64* %limit, align 8, !dbg !1349, !tbaa !1332
  %cmp8 = icmp slt i64 %3, 0, !dbg !1352
  br i1 %cmp8, label %while.body, label %lor.rhs, !dbg !1353

lor.rhs:                                          ; preds = %while.cond
  %4 = load i64, i64* %1, align 8, !dbg !1354, !tbaa !1356
  %cmp9 = icmp slt i64 %4, %3, !dbg !1357
  br i1 %cmp9, label %while.body, label %while.end.loopexit, !dbg !1358

while.body:                                       ; preds = %while.cond, %lor.rhs
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !584, metadata !842), !dbg !1361
  br i1 %tobool2, label %if.end.77, label %if.then.11, !dbg !1362

if.then.11:                                       ; preds = %while.body
  %call12 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %self, %struct._Py_Identifier* nonnull @iobase_readline.PyId_peek, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i32 1) #2, !dbg !1363
  call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !587, metadata !842), !dbg !1364
  %cmp13 = icmp eq %struct._object* %call12, null, !dbg !1365
  br i1 %cmp13, label %if.then.14, label %if.end.19, !dbg !1367

if.then.14:                                       ; preds = %if.then.11
  %call15 = call i32 @_PyIO_trap_eintr() #2, !dbg !1368
  %tobool16 = icmp eq i32 %call15, 0, !dbg !1368
  %.299 = select i1 %tobool16, i32 4, i32 2, !dbg !1371
  br label %cleanup.180, !dbg !1371

if.end.19:                                        ; preds = %if.then.11
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call12, i64 0, i32 1, !dbg !1372
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1373, !tbaa !870
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 19, !dbg !1372
  %6 = load i64, i64* %tp_flags, align 8, !dbg !1372, !tbaa !1023
  %and = and i64 %6, 134217728, !dbg !1372
  %cmp20 = icmp eq i64 %and, 0, !dbg !1372
  br i1 %cmp20, label %if.then.21, label %if.end.28, !dbg !1376

if.then.21:                                       ; preds = %if.end.19
  %.lcssa354 = phi %struct._typeobject* [ %5, %if.end.19 ]
  %ob_type.lcssa = phi %struct._typeobject** [ %ob_type, %if.end.19 ]
  %call12.lcssa = phi %struct._object* [ %call12, %if.end.19 ]
  %7 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !1377, !tbaa !849
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %.lcssa354, i64 0, i32 1, !dbg !1378
  %8 = load i8*, i8** %tp_name, align 8, !dbg !1378, !tbaa !1379
  %call23 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %7, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.30, i64 0, i64 0), i8* %8) #2, !dbg !1380
  call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !590, metadata !842), !dbg !1381
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call12.lcssa, i64 0, i32 0, !dbg !1383
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !1383, !tbaa !864
  %dec = add i64 %9, -1, !dbg !1383
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1383, !tbaa !864
  %cmp24 = icmp eq i64 %dec, 0, !dbg !1383
  br i1 %cmp24, label %if.else, label %do.body.206, !dbg !1385

if.else:                                          ; preds = %if.then.21
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type.lcssa, align 8, !dbg !1386, !tbaa !870
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !1386
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1386, !tbaa !871
  call void %11(%struct._object* %call12.lcssa) #2, !dbg !1386
  br label %do.body.206

if.end.28:                                        ; preds = %if.end.19
  %12 = getelementptr inbounds %struct._object, %struct._object* %call12, i64 1, i32 0, !dbg !1388
  %13 = load i64, i64* %12, align 8, !dbg !1389, !tbaa !1356
  %cmp30 = icmp sgt i64 %13, 0, !dbg !1394
  br i1 %cmp30, label %if.then.31, label %do.body.64, !dbg !1395

if.then.31:                                       ; preds = %if.end.28
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !594, metadata !842), !dbg !1396
  %ob_sval = getelementptr inbounds %struct._object, %struct._object* %call12, i64 2, !dbg !1397
  %arraydecay = bitcast %struct._object* %ob_sval to i8*, !dbg !1397
  call void @llvm.dbg.value(metadata i8* %arraydecay, i64 0, metadata !597, metadata !842), !dbg !1398
  call void @llvm.dbg.value(metadata i64* %limit, i64 0, metadata !579, metadata !842), !dbg !1331
  %14 = load i64, i64* %limit, align 8, !tbaa !1332
  %cmp32 = icmp sgt i64 %14, -1, !dbg !1399
  br i1 %cmp32, label %do.body.34.preheader, label %do.body.47.preheader, !dbg !1400

do.body.47.preheader:                             ; preds = %if.then.31
  br label %do.body.47, !dbg !1401

do.body.34.preheader:                             ; preds = %if.then.31
  br label %do.body.34, !dbg !1405

do.body.34:                                       ; preds = %do.body.34.preheader, %if.end.39
  %n.0 = phi i64 [ %inc, %if.end.39 ], [ 0, %do.body.34.preheader ]
  %cmp36 = icmp slt i64 %n.0, %13, !dbg !1405
  %cmp37 = icmp slt i64 %n.0, %14, !dbg !1406
  %or.cond = and i1 %cmp36, %cmp37, !dbg !1407
  call void @llvm.dbg.value(metadata i64* %limit, i64 0, metadata !579, metadata !842), !dbg !1331
  br i1 %or.cond, label %if.end.39, label %do.body.64.loopexit, !dbg !1407

if.end.39:                                        ; preds = %do.body.34
  %inc = add nuw i64 %n.0, 1, !dbg !1408
  call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !594, metadata !842), !dbg !1396
  %arrayidx = getelementptr i8, i8* %arraydecay, i64 %n.0, !dbg !1410
  %15 = load i8, i8* %arrayidx, align 1, !dbg !1410, !tbaa !1411
  %cmp40 = icmp eq i8 %15, 10, !dbg !1412
  br i1 %cmp40, label %do.body.64.loopexit, label %do.body.34, !dbg !1413

do.body.47:                                       ; preds = %do.body.47.preheader, %if.end.52
  %n.1 = phi i64 [ %inc53, %if.end.52 ], [ 0, %do.body.47.preheader ]
  %cmp49 = icmp slt i64 %n.1, %13, !dbg !1401
  br i1 %cmp49, label %if.end.52, label %do.body.64.loopexit344, !dbg !1414

if.end.52:                                        ; preds = %do.body.47
  %inc53 = add nuw i64 %n.1, 1, !dbg !1415
  call void @llvm.dbg.value(metadata i64 %inc53, i64 0, metadata !594, metadata !842), !dbg !1396
  %arrayidx54 = getelementptr i8, i8* %arraydecay, i64 %n.1, !dbg !1417
  %16 = load i8, i8* %arrayidx54, align 1, !dbg !1417, !tbaa !1411
  %cmp56 = icmp eq i8 %16, 10, !dbg !1418
  br i1 %cmp56, label %do.body.64.loopexit344, label %do.body.47, !dbg !1419

do.body.64.loopexit:                              ; preds = %do.body.34, %if.end.39
  %nreadahead.0.ph = phi i64 [ %n.0, %do.body.34 ], [ %inc, %if.end.39 ]
  br label %do.body.64, !dbg !1420

do.body.64.loopexit344:                           ; preds = %do.body.47, %if.end.52
  %nreadahead.0.ph345 = phi i64 [ %n.1, %do.body.47 ], [ %inc53, %if.end.52 ]
  br label %do.body.64, !dbg !1420

do.body.64:                                       ; preds = %do.body.64.loopexit344, %do.body.64.loopexit, %if.end.28
  %nreadahead.0 = phi i64 [ 1, %if.end.28 ], [ %nreadahead.0.ph, %do.body.64.loopexit ], [ %nreadahead.0.ph345, %do.body.64.loopexit344 ]
  call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !598, metadata !842), !dbg !1420
  %ob_refcnt66 = getelementptr inbounds %struct._object, %struct._object* %call12, i64 0, i32 0, !dbg !1422
  %17 = load i64, i64* %ob_refcnt66, align 8, !dbg !1422, !tbaa !864
  %dec67 = add i64 %17, -1, !dbg !1422
  store i64 %dec67, i64* %ob_refcnt66, align 8, !dbg !1422, !tbaa !864
  %cmp68 = icmp eq i64 %dec67, 0, !dbg !1422
  br i1 %cmp68, label %if.else.71, label %if.end.77, !dbg !1423

if.else.71:                                       ; preds = %do.body.64
  %tp_dealloc73 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !1373
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc73, align 8, !dbg !1373, !tbaa !871
  call void %18(%struct._object* %call12) #2, !dbg !1373
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.71, %do.body.64, %while.body
  %nreadahead.2 = phi i64 [ 1, %while.body ], [ %nreadahead.0, %do.body.64 ], [ %nreadahead.0, %if.else.71 ]
  %call78 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %self, %struct._Py_Identifier* nonnull @PyId_read, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i64 %nreadahead.2) #2, !dbg !1424
  call void @llvm.dbg.value(metadata %struct._object* %call78, i64 0, metadata !586, metadata !842), !dbg !1425
  %cmp79 = icmp eq %struct._object* %call78, null, !dbg !1426
  br i1 %cmp79, label %if.then.81, label %if.end.86, !dbg !1428

if.then.81:                                       ; preds = %if.end.77
  %call82 = call i32 @_PyIO_trap_eintr() #2, !dbg !1429
  %tobool83 = icmp eq i32 %call82, 0, !dbg !1429
  %.300 = select i1 %tobool83, i32 4, i32 2, !dbg !1432
  br label %cleanup.180, !dbg !1432

if.end.86:                                        ; preds = %if.end.77
  %ob_type87 = getelementptr inbounds %struct._object, %struct._object* %call78, i64 0, i32 1, !dbg !1433
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type87, align 8, !dbg !1434, !tbaa !870
  %tp_flags88 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i64 0, i32 19, !dbg !1433
  %20 = load i64, i64* %tp_flags88, align 8, !dbg !1433, !tbaa !1023
  %and89 = and i64 %20, 134217728, !dbg !1433
  %cmp90 = icmp eq i64 %and89, 0, !dbg !1433
  br i1 %cmp90, label %if.then.92, label %if.end.109, !dbg !1437

if.then.92:                                       ; preds = %if.end.86
  %.lcssa359 = phi %struct._typeobject* [ %19, %if.end.86 ]
  %ob_type87.lcssa = phi %struct._typeobject** [ %ob_type87, %if.end.86 ]
  %call78.lcssa = phi %struct._object* [ %call78, %if.end.86 ]
  %21 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !1438, !tbaa !849
  %tp_name94 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %.lcssa359, i64 0, i32 1, !dbg !1439
  %22 = load i8*, i8** %tp_name94, align 8, !dbg !1439, !tbaa !1379
  %call95 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %21, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.32, i64 0, i64 0), i8* %22) #2, !dbg !1440
  call void @llvm.dbg.value(metadata %struct._object* %call78, i64 0, metadata !600, metadata !842), !dbg !1441
  %ob_refcnt98 = getelementptr inbounds %struct._object, %struct._object* %call78.lcssa, i64 0, i32 0, !dbg !1443
  %23 = load i64, i64* %ob_refcnt98, align 8, !dbg !1443, !tbaa !864
  %dec99 = add i64 %23, -1, !dbg !1443
  store i64 %dec99, i64* %ob_refcnt98, align 8, !dbg !1443, !tbaa !864
  %cmp100 = icmp eq i64 %dec99, 0, !dbg !1443
  br i1 %cmp100, label %if.else.103, label %do.body.206, !dbg !1445

if.else.103:                                      ; preds = %if.then.92
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type87.lcssa, align 8, !dbg !1446, !tbaa !870
  %tp_dealloc105 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i64 0, i32 4, !dbg !1446
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc105, align 8, !dbg !1446, !tbaa !871
  call void %25(%struct._object* %call78.lcssa) #2, !dbg !1446
  br label %do.body.206

if.end.109:                                       ; preds = %if.end.86
  %26 = getelementptr inbounds %struct._object, %struct._object* %call78, i64 1, i32 0, !dbg !1448
  %27 = load i64, i64* %26, align 8, !dbg !1448, !tbaa !1356
  %cmp111 = icmp eq i64 %27, 0, !dbg !1449
  br i1 %cmp111, label %do.body.114, label %if.end.127, !dbg !1450

do.body.114:                                      ; preds = %if.end.109
  %.lcssa360 = phi %struct._typeobject* [ %19, %if.end.109 ]
  %call78.lcssa355 = phi %struct._object* [ %call78, %if.end.109 ]
  call void @llvm.dbg.value(metadata %struct._object* %call78, i64 0, metadata !604, metadata !842), !dbg !1451
  %ob_refcnt116 = getelementptr inbounds %struct._object, %struct._object* %call78.lcssa355, i64 0, i32 0, !dbg !1453
  %28 = load i64, i64* %ob_refcnt116, align 8, !dbg !1453, !tbaa !864
  %dec117 = add i64 %28, -1, !dbg !1453
  store i64 %dec117, i64* %ob_refcnt116, align 8, !dbg !1453, !tbaa !864
  %cmp118 = icmp eq i64 %dec117, 0, !dbg !1453
  br i1 %cmp118, label %if.else.121, label %while.endthread-pre-split, !dbg !1454

if.else.121:                                      ; preds = %do.body.114
  %tp_dealloc123 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %.lcssa360, i64 0, i32 4, !dbg !1434
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc123, align 8, !dbg !1434, !tbaa !871
  call void %29(%struct._object* %call78.lcssa355) #2, !dbg !1434
  br label %while.endthread-pre-split

if.end.127:                                       ; preds = %if.end.109
  %30 = load i64, i64* %1, align 8, !dbg !1345, !tbaa !1356
  call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !583, metadata !842), !dbg !1334
  %add = add i64 %30, %27, !dbg !1455
  %call130 = call i32 @PyByteArray_Resize(%struct._object* %call5, i64 %add) #2, !dbg !1456
  %cmp131 = icmp slt i32 %call130, 0, !dbg !1457
  br i1 %cmp131, label %do.body.134, label %if.end.147, !dbg !1458

do.body.134:                                      ; preds = %if.end.127
  %ob_type87.lcssa358 = phi %struct._typeobject** [ %ob_type87, %if.end.127 ]
  %call78.lcssa356 = phi %struct._object* [ %call78, %if.end.127 ]
  call void @llvm.dbg.value(metadata %struct._object* %call78, i64 0, metadata !608, metadata !842), !dbg !1459
  %ob_refcnt136 = getelementptr inbounds %struct._object, %struct._object* %call78.lcssa356, i64 0, i32 0, !dbg !1461
  %31 = load i64, i64* %ob_refcnt136, align 8, !dbg !1461, !tbaa !864
  %dec137 = add i64 %31, -1, !dbg !1461
  store i64 %dec137, i64* %ob_refcnt136, align 8, !dbg !1461, !tbaa !864
  %cmp138 = icmp eq i64 %dec137, 0, !dbg !1461
  br i1 %cmp138, label %if.else.141, label %do.body.206, !dbg !1463

if.else.141:                                      ; preds = %do.body.134
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type87.lcssa358, align 8, !dbg !1464, !tbaa !870
  %tp_dealloc143 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i64 0, i32 4, !dbg !1464
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc143, align 8, !dbg !1464, !tbaa !871
  call void %33(%struct._object* %call78.lcssa356) #2, !dbg !1464
  br label %do.body.206

if.end.147:                                       ; preds = %if.end.127
  %34 = load i64, i64* %1, align 8, !dbg !1466, !tbaa !1356
  %tobool149 = icmp eq i64 %34, 0, !dbg !1466
  br i1 %tobool149, label %cond.end, label %cond.true, !dbg !1466

cond.true:                                        ; preds = %if.end.147
  %35 = load i8*, i8** %2, align 8, !dbg !1467, !tbaa !1469
  br label %cond.end, !dbg !1467

cond.end:                                         ; preds = %if.end.147, %cond.true
  %cond = phi i8* [ %35, %cond.true ], [ getelementptr inbounds ([0 x i8], [0 x i8]* @_PyByteArray_empty_string, i64 0, i64 0), %if.end.147 ], !dbg !1466
  %add.ptr = getelementptr i8, i8* %cond, i64 %30, !dbg !1471
  %ob_sval150 = getelementptr inbounds %struct._object, %struct._object* %call78, i64 2, !dbg !1472
  %arraydecay151 = bitcast %struct._object* %ob_sval150 to i8*, !dbg !1472
  %36 = load i64, i64* %26, align 8, !dbg !1473, !tbaa !1356
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %arraydecay151, i64 %36, i32 1, i1 false), !dbg !1474
  call void @llvm.dbg.value(metadata %struct._object* %call78, i64 0, metadata !612, metadata !842), !dbg !1475
  %ob_refcnt155 = getelementptr inbounds %struct._object, %struct._object* %call78, i64 0, i32 0, !dbg !1477
  %37 = load i64, i64* %ob_refcnt155, align 8, !dbg !1477, !tbaa !864
  %dec156 = add i64 %37, -1, !dbg !1477
  store i64 %dec156, i64* %ob_refcnt155, align 8, !dbg !1477, !tbaa !864
  %cmp157 = icmp eq i64 %dec156, 0, !dbg !1477
  br i1 %cmp157, label %if.else.160, label %if.end.163, !dbg !1479

if.else.160:                                      ; preds = %cond.end
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type87, align 8, !dbg !1480, !tbaa !870
  %tp_dealloc162 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i64 0, i32 4, !dbg !1480
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc162, align 8, !dbg !1480, !tbaa !871
  call void %39(%struct._object* %call78) #2, !dbg !1480
  br label %if.end.163

if.end.163:                                       ; preds = %cond.end, %if.else.160
  %40 = load i64, i64* %1, align 8, !dbg !1482, !tbaa !1356
  %sub = add i64 %40, -1, !dbg !1483
  %tobool168 = icmp eq i64 %40, 0, !dbg !1484
  br i1 %tobool168, label %cond.end.172, label %cond.true.169, !dbg !1484

cond.true.169:                                    ; preds = %if.end.163
  %41 = load i8*, i8** %2, align 8, !dbg !1346, !tbaa !1469
  br label %cond.end.172, !dbg !1346

cond.end.172:                                     ; preds = %if.end.163, %cond.true.169
  %cond173 = phi i8* [ %41, %cond.true.169 ], [ getelementptr inbounds ([0 x i8], [0 x i8]* @_PyByteArray_empty_string, i64 0, i64 0), %if.end.163 ], !dbg !1484
  %arrayidx174 = getelementptr i8, i8* %cond173, i64 %sub, !dbg !1485
  %42 = load i8, i8* %arrayidx174, align 1, !dbg !1485, !tbaa !1411
  %cmp176 = icmp eq i8 %42, 10, !dbg !1488
  %.301 = select i1 %cmp176, i32 3, i32 0, !dbg !1489
  br label %cleanup.180, !dbg !1489

cleanup.180:                                      ; preds = %if.then.14, %cond.end.172, %if.then.81
  %cleanup.dest.slot.1 = phi i32 [ %.300, %if.then.81 ], [ %.301, %cond.end.172 ], [ %.299, %if.then.14 ]
  switch i32 %cleanup.dest.slot.1, label %cleanup.219.loopexit [
    i32 0, label %while.cond.backedge
    i32 2, label %while.cond.backedge
    i32 3, label %while.endthread-pre-split.loopexit
    i32 4, label %do.body.206.loopexit
  ]

while.cond.backedge:                              ; preds = %cleanup.180, %cleanup.180
  br label %while.cond, !dbg !1331

while.endthread-pre-split.loopexit:               ; preds = %cleanup.180
  br label %while.endthread-pre-split, !dbg !1490

while.endthread-pre-split:                        ; preds = %while.endthread-pre-split.loopexit, %do.body.114, %if.else.121
  %.pr = load i64, i64* %1, align 8, !dbg !1490, !tbaa !1356
  br label %while.end, !dbg !1490

while.end.loopexit:                               ; preds = %lor.rhs
  %.lcssa = phi i64 [ %4, %lor.rhs ]
  br label %while.end, !dbg !1491

while.end:                                        ; preds = %while.end.loopexit, %while.endthread-pre-split
  %43 = phi i64 [ %.pr, %while.endthread-pre-split ], [ %.lcssa, %while.end.loopexit ], !dbg !1490
  %tobool185 = icmp eq i64 %43, 0, !dbg !1491
  br i1 %tobool185, label %cond.end.189, label %cond.true.186, !dbg !1491

cond.true.186:                                    ; preds = %while.end
  %44 = load i8*, i8** %2, align 8, !dbg !1492, !tbaa !1469
  br label %cond.end.189, !dbg !1492

cond.end.189:                                     ; preds = %while.end, %cond.true.186
  %cond190 = phi i8* [ %44, %cond.true.186 ], [ getelementptr inbounds ([0 x i8], [0 x i8]* @_PyByteArray_empty_string, i64 0, i64 0), %while.end ], !dbg !1491
  %call192 = call %struct._object* @PyBytes_FromStringAndSize(i8* %cond190, i64 %43) #2, !dbg !1493
  call void @llvm.dbg.value(metadata %struct._object* %call192, i64 0, metadata !582, metadata !842), !dbg !1494
  call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !614, metadata !842), !dbg !1495
  %ob_refcnt195 = getelementptr inbounds %struct._object, %struct._object* %call5, i64 0, i32 0, !dbg !1497
  %45 = load i64, i64* %ob_refcnt195, align 8, !dbg !1497, !tbaa !864
  %dec196 = add i64 %45, -1, !dbg !1497
  store i64 %dec196, i64* %ob_refcnt195, align 8, !dbg !1497, !tbaa !864
  %cmp197 = icmp eq i64 %dec196, 0, !dbg !1497
  br i1 %cmp197, label %if.else.200, label %cleanup.219, !dbg !1499

if.else.200:                                      ; preds = %cond.end.189
  %ob_type201 = getelementptr inbounds %struct._object, %struct._object* %call5, i64 0, i32 1, !dbg !1500
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type201, align 8, !dbg !1500, !tbaa !870
  %tp_dealloc202 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i64 0, i32 4, !dbg !1500
  %47 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc202, align 8, !dbg !1500, !tbaa !871
  call void %47(%struct._object* %call5) #2, !dbg !1500
  br label %cleanup.219

do.body.206.loopexit:                             ; preds = %cleanup.180
  br label %do.body.206, !dbg !1502

do.body.206:                                      ; preds = %do.body.206.loopexit, %if.then.21, %if.else, %if.else.141, %do.body.134, %if.else.103, %if.then.92
  call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !616, metadata !842), !dbg !1502
  %ob_refcnt208 = getelementptr inbounds %struct._object, %struct._object* %call5, i64 0, i32 0, !dbg !1504
  %48 = load i64, i64* %ob_refcnt208, align 8, !dbg !1504, !tbaa !864
  %dec209 = add i64 %48, -1, !dbg !1504
  store i64 %dec209, i64* %ob_refcnt208, align 8, !dbg !1504, !tbaa !864
  %cmp210 = icmp eq i64 %dec209, 0, !dbg !1504
  br i1 %cmp210, label %if.else.213, label %cleanup.219, !dbg !1506

if.else.213:                                      ; preds = %do.body.206
  %ob_type214 = getelementptr inbounds %struct._object, %struct._object* %call5, i64 0, i32 1, !dbg !1507
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type214, align 8, !dbg !1507, !tbaa !870
  %tp_dealloc215 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i64 0, i32 4, !dbg !1507
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc215, align 8, !dbg !1507, !tbaa !871
  call void %50(%struct._object* %call5) #2, !dbg !1507
  br label %cleanup.219

cleanup.219.loopexit:                             ; preds = %cleanup.180
  br label %cleanup.219, !dbg !1509

cleanup.219:                                      ; preds = %cleanup.219.loopexit, %if.else.213, %do.body.206, %if.else.200, %cond.end.189, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.end ], [ %call192, %cond.end.189 ], [ %call192, %if.else.200 ], [ null, %do.body.206 ], [ null, %if.else.213 ], [ undef, %cleanup.219.loopexit ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1509
  ret %struct._object* %retval.0, !dbg !1509
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_readlines(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %hint = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !620, metadata !842), !dbg !1510
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !621, metadata !842), !dbg !1511
  %0 = bitcast i64* %hint to i8*, !dbg !1512
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1512
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !622, metadata !842), !dbg !1513
  store i64 -1, i64* %hint, align 8, !dbg !1513, !tbaa !1332
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !623, metadata !842), !dbg !1514
  tail call void @llvm.dbg.value(metadata i64* %hint, i64 0, metadata !622, metadata !842), !dbg !1513
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0), i32 (%struct._object*, i8*)* nonnull @_PyIO_ConvertSsize_t, i64* nonnull %hint) #2, !dbg !1515
  %tobool = icmp eq i32 %call, 0, !dbg !1515
  br i1 %tobool, label %cleanup.91, label %if.end, !dbg !1517

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyList_New(i64 0) #2, !dbg !1518
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !624, metadata !842), !dbg !1519
  %cmp = icmp eq %struct._object* %call1, null, !dbg !1520
  br i1 %cmp, label %cleanup.91, label %if.end.3, !dbg !1522

if.end.3:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i64* %hint, i64 0, metadata !622, metadata !842), !dbg !1513
  %1 = load i64, i64* %hint, align 8, !dbg !1523, !tbaa !1332
  %cmp4 = icmp slt i64 %1, 1, !dbg !1524
  br i1 %cmp4, label %if.then.5, label %while.body.preheader, !dbg !1525

while.body.preheader:                             ; preds = %if.end.3
  br label %while.body, !dbg !1526

if.then.5:                                        ; preds = %if.end.3
  %call6 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %call1, %struct._Py_Identifier* nonnull @iobase_readlines.PyId_extend, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), %struct._object* %self) #2, !dbg !1527
  call void @llvm.dbg.value(metadata %struct._object* %call6, i64 0, metadata !625, metadata !842), !dbg !1528
  %cmp7 = icmp eq %struct._object* %call6, null, !dbg !1529
  br i1 %cmp7, label %do.body, label %do.body.13, !dbg !1530

do.body:                                          ; preds = %if.then.5
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !628, metadata !842), !dbg !1531
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !1533
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !1533, !tbaa !864
  %dec = add i64 %2, -1, !dbg !1533
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1533, !tbaa !864
  %cmp9 = icmp eq i64 %dec, 0, !dbg !1533
  br i1 %cmp9, label %if.else, label %cleanup.91, !dbg !1535

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !1536
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1536, !tbaa !870
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !1536
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1536, !tbaa !871
  call void %4(%struct._object* %call1) #2, !dbg !1536
  br label %cleanup.91

do.body.13:                                       ; preds = %if.then.5
  call void @llvm.dbg.value(metadata %struct._object* %call6, i64 0, metadata !632, metadata !842), !dbg !1538
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %call6, i64 0, i32 0, !dbg !1540
  %5 = load i64, i64* %ob_refcnt15, align 8, !dbg !1540, !tbaa !864
  %dec16 = add i64 %5, -1, !dbg !1540
  store i64 %dec16, i64* %ob_refcnt15, align 8, !dbg !1540, !tbaa !864
  %cmp17 = icmp eq i64 %dec16, 0, !dbg !1540
  br i1 %cmp17, label %if.else.19, label %cleanup.91, !dbg !1542

if.else.19:                                       ; preds = %do.body.13
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %call6, i64 0, i32 1, !dbg !1543
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8, !dbg !1543, !tbaa !870
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !1543
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8, !dbg !1543, !tbaa !871
  call void %7(%struct._object* %call6) #2, !dbg !1543
  br label %cleanup.91

while.body:                                       ; preds = %while.body.preheader, %cleanup.90
  %length.0 = phi i64 [ %add, %cleanup.90 ], [ 0, %while.body.preheader ]
  %call26 = call %struct._object* @PyIter_Next(%struct._object* %self) #2, !dbg !1526
  call void @llvm.dbg.value(metadata %struct._object* %call26, i64 0, metadata !634, metadata !842), !dbg !1545
  %cmp27 = icmp eq %struct._object* %call26, null, !dbg !1546
  br i1 %cmp27, label %if.then.28, label %if.end.45, !dbg !1547

if.then.28:                                       ; preds = %while.body
  %call29 = call %struct._object* @PyErr_Occurred() #2, !dbg !1548
  %tobool30 = icmp eq %struct._object* %call29, null, !dbg !1548
  br i1 %tobool30, label %cleanup.91, label %do.body.32, !dbg !1549

do.body.32:                                       ; preds = %if.then.28
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !636, metadata !842), !dbg !1550
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !1552
  %8 = load i64, i64* %ob_refcnt34, align 8, !dbg !1552, !tbaa !864
  %dec35 = add i64 %8, -1, !dbg !1552
  store i64 %dec35, i64* %ob_refcnt34, align 8, !dbg !1552, !tbaa !864
  %cmp36 = icmp eq i64 %dec35, 0, !dbg !1552
  br i1 %cmp36, label %if.else.38, label %cleanup.91, !dbg !1554

if.else.38:                                       ; preds = %do.body.32
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !1555
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8, !dbg !1555, !tbaa !870
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 4, !dbg !1555
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8, !dbg !1555, !tbaa !871
  call void %10(%struct._object* %call1) #2, !dbg !1555
  br label %cleanup.91

if.end.45:                                        ; preds = %while.body
  %call46 = call i32 @PyList_Append(%struct._object* %call1, %struct._object* %call26) #2, !dbg !1557
  %cmp47 = icmp slt i32 %call46, 0, !dbg !1558
  br i1 %cmp47, label %do.body.49, label %if.end.73, !dbg !1559

do.body.49:                                       ; preds = %if.end.45
  %call26.lcssa141 = phi %struct._object* [ %call26, %if.end.45 ]
  call void @llvm.dbg.value(metadata %struct._object* %call26, i64 0, metadata !642, metadata !842), !dbg !1560
  %ob_refcnt51 = getelementptr inbounds %struct._object, %struct._object* %call26.lcssa141, i64 0, i32 0, !dbg !1562
  %11 = load i64, i64* %ob_refcnt51, align 8, !dbg !1562, !tbaa !864
  %dec52 = add i64 %11, -1, !dbg !1562
  store i64 %dec52, i64* %ob_refcnt51, align 8, !dbg !1562, !tbaa !864
  %cmp53 = icmp eq i64 %dec52, 0, !dbg !1562
  br i1 %cmp53, label %if.else.55, label %if.end.58, !dbg !1564

if.else.55:                                       ; preds = %do.body.49
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %call26.lcssa141, i64 0, i32 1, !dbg !1565
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8, !dbg !1565, !tbaa !870
  %tp_dealloc57 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !1565
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc57, align 8, !dbg !1565, !tbaa !871
  call void %13(%struct._object* %call26.lcssa141) #2, !dbg !1565
  br label %if.end.58

if.end.58:                                        ; preds = %do.body.49, %if.else.55
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !646, metadata !842), !dbg !1567
  %ob_refcnt63 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !1569
  %14 = load i64, i64* %ob_refcnt63, align 8, !dbg !1569, !tbaa !864
  %dec64 = add i64 %14, -1, !dbg !1569
  store i64 %dec64, i64* %ob_refcnt63, align 8, !dbg !1569, !tbaa !864
  %cmp65 = icmp eq i64 %dec64, 0, !dbg !1569
  br i1 %cmp65, label %if.else.67, label %cleanup.91, !dbg !1571

if.else.67:                                       ; preds = %if.end.58
  %ob_type68 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !1572
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type68, align 8, !dbg !1572, !tbaa !870
  %tp_dealloc69 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i64 0, i32 4, !dbg !1572
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc69, align 8, !dbg !1572, !tbaa !871
  call void %16(%struct._object* %call1) #2, !dbg !1572
  br label %cleanup.91

if.end.73:                                        ; preds = %if.end.45
  %call74 = call i64 @PyObject_Size(%struct._object* %call26) #2, !dbg !1574
  %add = add i64 %call74, %length.0, !dbg !1575
  call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !623, metadata !842), !dbg !1514
  call void @llvm.dbg.value(metadata %struct._object* %call26, i64 0, metadata !648, metadata !842), !dbg !1576
  %ob_refcnt77 = getelementptr inbounds %struct._object, %struct._object* %call26, i64 0, i32 0, !dbg !1578
  %17 = load i64, i64* %ob_refcnt77, align 8, !dbg !1578, !tbaa !864
  %dec78 = add i64 %17, -1, !dbg !1578
  store i64 %dec78, i64* %ob_refcnt77, align 8, !dbg !1578, !tbaa !864
  %cmp79 = icmp eq i64 %dec78, 0, !dbg !1578
  br i1 %cmp79, label %if.else.81, label %cleanup.90, !dbg !1580

if.else.81:                                       ; preds = %if.end.73
  %ob_type82 = getelementptr inbounds %struct._object, %struct._object* %call26, i64 0, i32 1, !dbg !1581
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type82, align 8, !dbg !1581, !tbaa !870
  %tp_dealloc83 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i64 0, i32 4, !dbg !1581
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc83, align 8, !dbg !1581, !tbaa !871
  call void %19(%struct._object* %call26) #2, !dbg !1581
  br label %cleanup.90

cleanup.90:                                       ; preds = %if.else.81, %if.end.73
  call void @llvm.dbg.value(metadata i64* %hint, i64 0, metadata !622, metadata !842), !dbg !1513
  %20 = load i64, i64* %hint, align 8, !dbg !1583, !tbaa !1332
  %cmp87 = icmp sgt i64 %add, %20, !dbg !1585
  br i1 %cmp87, label %cleanup.91.loopexit, label %while.body

cleanup.91.loopexit:                              ; preds = %cleanup.90
  br label %cleanup.91, !dbg !1586

cleanup.91:                                       ; preds = %cleanup.91.loopexit, %if.then.28, %if.else.67, %if.end.58, %if.else.38, %do.body.32, %do.body, %if.else, %do.body.13, %if.else.19, %if.end, %entry
  %retval.3 = phi %struct._object* [ null, %entry ], [ null, %if.end ], [ null, %do.body ], [ null, %if.else ], [ %call1, %do.body.13 ], [ %call1, %if.else.19 ], [ null, %do.body.32 ], [ null, %if.else.38 ], [ null, %if.end.58 ], [ null, %if.else.67 ], [ %call1, %if.then.28 ], [ %call1, %cleanup.91.loopexit ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1586
  ret %struct._object* %retval.3, !dbg !1586
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_writelines(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %lines = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !652, metadata !842), !dbg !1587
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !653, metadata !842), !dbg !1588
  %0 = bitcast %struct._object** %lines to i8*, !dbg !1589
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1589
  tail call void @llvm.dbg.value(metadata %struct._object** %lines, i64 0, metadata !654, metadata !842), !dbg !1590
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), %struct._object** nonnull %lines) #2, !dbg !1591
  %tobool = icmp eq i32 %call, 0, !dbg !1591
  br i1 %tobool, label %cleanup.77, label %if.end, !dbg !1593

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !386, metadata !842) #2, !dbg !1594
  call void @llvm.dbg.value(metadata %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), i64 0, metadata !387, metadata !842) #2, !dbg !1597
  call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !445, metadata !842) #2, !dbg !1598
  %1 = load %struct._object*, %struct._object** @_PyIO_str_closed, align 8, !dbg !1600, !tbaa !849
  %call.i.i = call %struct._object* @PyObject_GetAttr(%struct._object* %self, %struct._object* %1) #2, !dbg !1601
  call void @llvm.dbg.value(metadata %struct._object* %call.i.i, i64 0, metadata !446, metadata !842) #2, !dbg !1602
  %cmp.i.i = icmp eq %struct._object* %call.i.i, null, !dbg !1603
  br i1 %cmp.i.i, label %if.end.3, label %if.end.i.i, !dbg !1604

if.end.i.i:                                       ; preds = %if.end
  %call1.i.i = call i32 @PyObject_IsTrue(%struct._object* %call.i.i) #2, !dbg !1605
  call void @llvm.dbg.value(metadata i32 %call1.i.i, i64 0, metadata !447, metadata !842) #2, !dbg !1606
  call void @llvm.dbg.value(metadata %struct._object* %call.i.i, i64 0, metadata !448, metadata !842) #2, !dbg !1607
  %ob_refcnt.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 0, i32 0, !dbg !1608
  %2 = load i64, i64* %ob_refcnt.i.i, align 8, !dbg !1608, !tbaa !864
  %dec.i.i = add i64 %2, -1, !dbg !1608
  store i64 %dec.i.i, i64* %ob_refcnt.i.i, align 8, !dbg !1608, !tbaa !864
  %cmp2.i.i = icmp eq i64 %dec.i.i, 0, !dbg !1608
  br i1 %cmp2.i.i, label %if.else.i.i, label %iobase_closed.exit.i, !dbg !1609

if.else.i.i:                                      ; preds = %if.end.i.i
  %ob_type.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 0, i32 1, !dbg !1610
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.i, align 8, !dbg !1610, !tbaa !870
  %tp_dealloc.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !1610
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.i, align 8, !dbg !1610, !tbaa !871
  call void %4(%struct._object* %call.i.i) #2, !dbg !1610
  br label %iobase_closed.exit.i, !dbg !1611

iobase_closed.exit.i:                             ; preds = %if.else.i.i, %if.end.i.i
  %tobool.i = icmp eq i32 %call1.i.i, 0, !dbg !1611
  br i1 %tobool.i, label %if.end.3, label %_PyIOBase_check_closed.exit, !dbg !1612

_PyIOBase_check_closed.exit:                      ; preds = %iobase_closed.exit.i
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1613, !tbaa !849
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0)) #2, !dbg !1614
  br label %cleanup.77, !dbg !1615

if.end.3:                                         ; preds = %iobase_closed.exit.i, %if.end
  call void @llvm.dbg.value(metadata %struct._object** %lines, i64 0, metadata !654, metadata !842), !dbg !1590
  %6 = load %struct._object*, %struct._object** %lines, align 8, !dbg !1616, !tbaa !849
  %call4 = call %struct._object* @PyObject_GetIter(%struct._object* %6) #2, !dbg !1617
  call void @llvm.dbg.value(metadata %struct._object* %call4, i64 0, metadata !655, metadata !842), !dbg !1618
  %cmp5 = icmp eq %struct._object* %call4, null, !dbg !1619
  br i1 %cmp5, label %cleanup.77, label %while.body.preheader, !dbg !1621

while.body.preheader:                             ; preds = %if.end.3
  %call8.110 = call %struct._object* @PyIter_Next(%struct._object* %call4) #2, !dbg !1622
  call void @llvm.dbg.value(metadata %struct._object* %call8.110, i64 0, metadata !657, metadata !842), !dbg !1623
  %cmp9.111 = icmp eq %struct._object* %call8.110, null, !dbg !1624
  br i1 %cmp9.111, label %if.then.10, label %do.body.19.preheader.preheader, !dbg !1625

do.body.19.preheader.preheader:                   ; preds = %while.body.preheader
  br label %do.body.19.preheader, !dbg !1626

do.body.19.preheader:                             ; preds = %do.body.19.preheader.preheader, %while.body.backedge
  %call8112 = phi %struct._object* [ %call8, %while.body.backedge ], [ %call8.110, %do.body.19.preheader.preheader ]
  br label %do.body.19, !dbg !1626

if.then.10.loopexit:                              ; preds = %while.body.backedge
  br label %if.then.10, !dbg !1628

if.then.10:                                       ; preds = %if.then.10.loopexit, %while.body.preheader
  %call11 = call %struct._object* @PyErr_Occurred() #2, !dbg !1628
  %tobool12 = icmp eq %struct._object* %call11, null, !dbg !1628
  %ob_refcnt67 = getelementptr inbounds %struct._object, %struct._object* %call4, i64 0, i32 0, !dbg !1629
  %7 = load i64, i64* %ob_refcnt67, align 8, !dbg !1629, !tbaa !864
  %dec68 = add i64 %7, -1, !dbg !1629
  store i64 %dec68, i64* %ob_refcnt67, align 8, !dbg !1629, !tbaa !864
  %cmp69 = icmp eq i64 %dec68, 0, !dbg !1629
  br i1 %tobool12, label %do.body.65, label %do.body, !dbg !1631

do.body:                                          ; preds = %if.then.10
  call void @llvm.dbg.value(metadata %struct._object* %call4, i64 0, metadata !659, metadata !842), !dbg !1632
  br i1 %cmp69, label %if.else, label %cleanup.77, !dbg !1634

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call4, i64 0, i32 1, !dbg !1635
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1635, !tbaa !870
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !1635
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1635, !tbaa !871
  call void %9(%struct._object* %call4) #2, !dbg !1635
  br label %cleanup.77

do.body.19:                                       ; preds = %do.body.19.preheader, %land.rhs
  %10 = load %struct._object*, %struct._object** @_PyIO_str_write, align 8, !dbg !1626, !tbaa !849
  %call20 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %self, %struct._object* %10, %struct._object* %call8112, i8* null) #2, !dbg !1638
  call void @llvm.dbg.value(metadata %struct._object* %call20, i64 0, metadata !656, metadata !842), !dbg !1639
  %cmp22 = icmp eq %struct._object* %call20, null, !dbg !1640
  br i1 %cmp22, label %land.rhs, label %do.body.26, !dbg !1641

land.rhs:                                         ; preds = %do.body.19
  %call23 = call i32 @_PyIO_trap_eintr() #2, !dbg !1642
  %tobool24 = icmp eq i32 %call23, 0, !dbg !1641
  br i1 %tobool24, label %do.body.26, label %do.body.19, !dbg !1644

do.body.26:                                       ; preds = %land.rhs, %do.body.19
  %cmp22.lcssa = phi i1 [ true, %land.rhs ], [ false, %do.body.19 ]
  %call20.lcssa = phi %struct._object* [ null, %land.rhs ], [ %call20, %do.body.19 ]
  call void @llvm.dbg.value(metadata %struct._object* %call8, i64 0, metadata !665, metadata !842), !dbg !1646
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %call8112, i64 0, i32 0, !dbg !1648
  %11 = load i64, i64* %ob_refcnt28, align 8, !dbg !1648, !tbaa !864
  %dec29 = add i64 %11, -1, !dbg !1648
  store i64 %dec29, i64* %ob_refcnt28, align 8, !dbg !1648, !tbaa !864
  %cmp30 = icmp eq i64 %dec29, 0, !dbg !1648
  br i1 %cmp30, label %if.else.32, label %if.end.35, !dbg !1650

if.else.32:                                       ; preds = %do.body.26
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %call8112, i64 0, i32 1, !dbg !1651
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8, !dbg !1651, !tbaa !870
  %tp_dealloc34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !1651
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc34, align 8, !dbg !1651, !tbaa !871
  call void %13(%struct._object* %call8112) #2, !dbg !1651
  br label %if.end.35

if.end.35:                                        ; preds = %do.body.26, %if.else.32
  br i1 %cmp22.lcssa, label %do.body.40, label %do.body.53, !dbg !1653

do.body.40:                                       ; preds = %if.end.35
  call void @llvm.dbg.value(metadata %struct._object* %call4, i64 0, metadata !667, metadata !842), !dbg !1654
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %call4, i64 0, i32 0, !dbg !1656
  %14 = load i64, i64* %ob_refcnt42, align 8, !dbg !1656, !tbaa !864
  %dec43 = add i64 %14, -1, !dbg !1656
  store i64 %dec43, i64* %ob_refcnt42, align 8, !dbg !1656, !tbaa !864
  %cmp44 = icmp eq i64 %dec43, 0, !dbg !1656
  br i1 %cmp44, label %if.else.46, label %cleanup.77, !dbg !1658

if.else.46:                                       ; preds = %do.body.40
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %call4, i64 0, i32 1, !dbg !1659
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8, !dbg !1659, !tbaa !870
  %tp_dealloc48 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i64 0, i32 4, !dbg !1659
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc48, align 8, !dbg !1659, !tbaa !871
  call void %16(%struct._object* %call4) #2, !dbg !1659
  br label %cleanup.77

do.body.53:                                       ; preds = %if.end.35
  call void @llvm.dbg.value(metadata %struct._object* %call20, i64 0, metadata !671, metadata !842), !dbg !1661
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %call20.lcssa, i64 0, i32 0, !dbg !1663
  %17 = load i64, i64* %ob_refcnt55, align 8, !dbg !1663, !tbaa !864
  %dec56 = add i64 %17, -1, !dbg !1663
  store i64 %dec56, i64* %ob_refcnt55, align 8, !dbg !1663, !tbaa !864
  %cmp57 = icmp eq i64 %dec56, 0, !dbg !1663
  br i1 %cmp57, label %if.else.59, label %while.body.backedge, !dbg !1665

while.body.backedge:                              ; preds = %do.body.53, %if.else.59
  %call8 = call %struct._object* @PyIter_Next(%struct._object* %call4) #2, !dbg !1622
  call void @llvm.dbg.value(metadata %struct._object* %call8, i64 0, metadata !657, metadata !842), !dbg !1623
  %cmp9 = icmp eq %struct._object* %call8, null, !dbg !1624
  br i1 %cmp9, label %if.then.10.loopexit, label %do.body.19.preheader, !dbg !1625

if.else.59:                                       ; preds = %do.body.53
  %ob_type60 = getelementptr inbounds %struct._object, %struct._object* %call20.lcssa, i64 0, i32 1, !dbg !1666
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type60, align 8, !dbg !1666, !tbaa !870
  %tp_dealloc61 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i64 0, i32 4, !dbg !1666
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc61, align 8, !dbg !1666, !tbaa !871
  call void %19(%struct._object* %call20.lcssa) #2, !dbg !1666
  br label %while.body.backedge

do.body.65:                                       ; preds = %if.then.10
  call void @llvm.dbg.value(metadata %struct._object* %call4, i64 0, metadata !673, metadata !842), !dbg !1668
  br i1 %cmp69, label %if.else.71, label %if.end.74, !dbg !1670

if.else.71:                                       ; preds = %do.body.65
  %ob_type72 = getelementptr inbounds %struct._object, %struct._object* %call4, i64 0, i32 1, !dbg !1671
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type72, align 8, !dbg !1671, !tbaa !870
  %tp_dealloc73 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i64 0, i32 4, !dbg !1671
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc73, align 8, !dbg !1671, !tbaa !871
  call void %21(%struct._object* %call4) #2, !dbg !1671
  br label %if.end.74

if.end.74:                                        ; preds = %do.body.65, %if.else.71
  %22 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1673, !tbaa !864
  %inc = add i64 %22, 1, !dbg !1673
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1673, !tbaa !864
  br label %cleanup.77, !dbg !1673

cleanup.77:                                       ; preds = %if.else.46, %do.body.40, %if.else, %do.body, %_PyIOBase_check_closed.exit, %if.end.3, %entry, %if.end.74
  %retval.2 = phi %struct._object* [ @_Py_NoneStruct, %if.end.74 ], [ null, %entry ], [ null, %_PyIOBase_check_closed.exit ], [ null, %if.end.3 ], [ null, %do.body ], [ null, %if.else ], [ null, %do.body.40 ], [ null, %if.else.46 ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1674
  ret %struct._object* %retval.2, !dbg !1674
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
define internal %struct._object* @iobase_closed_get(%struct._object* %self, i8* nocapture readnone %context) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !677, metadata !842), !dbg !1675
  tail call void @llvm.dbg.value(metadata i8* %context, i64 0, metadata !678, metadata !842), !dbg !1676
  %call = tail call i32 @_PyObject_HasAttrId(%struct._object* %self, %struct._Py_Identifier* nonnull @PyId___IOBase_closed) #2, !dbg !1677
  %conv = sext i32 %call to i64, !dbg !1677
  %call1 = tail call %struct._object* @PyBool_FromLong(i64 %conv) #2, !dbg !1678
  ret %struct._object* %call1, !dbg !1679
}

declare %struct._object* @PyBool_FromLong(i64) #1

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #1

declare void @PyErr_Clear() #1

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @rawiobase_read(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %n = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !698, metadata !842), !dbg !1680
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !699, metadata !842), !dbg !1681
  %0 = bitcast i64* %n to i8*, !dbg !1682
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1682
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !700, metadata !842), !dbg !1683
  store i64 -1, i64* %n, align 8, !dbg !1683, !tbaa !1332
  tail call void @llvm.dbg.value(metadata i64* %n, i64 0, metadata !700, metadata !842), !dbg !1683
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0), i64* nonnull %n) #2, !dbg !1684
  %tobool = icmp eq i32 %call, 0, !dbg !1684
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1686

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i64* %n, i64 0, metadata !700, metadata !842), !dbg !1683
  %1 = load i64, i64* %n, align 8, !dbg !1687, !tbaa !1332
  %cmp = icmp slt i64 %1, 0, !dbg !1689
  br i1 %cmp, label %if.then.1, label %if.end.3, !dbg !1690

if.then.1:                                        ; preds = %if.end
  %call2 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %self, %struct._Py_Identifier* nonnull @rawiobase_read.PyId_readall, i8* null) #2, !dbg !1691
  br label %cleanup, !dbg !1693

if.end.3:                                         ; preds = %if.end
  %call4 = call %struct._object* @PyByteArray_FromStringAndSize(i8* null, i64 %1) #2, !dbg !1694
  call void @llvm.dbg.value(metadata %struct._object* %call4, i64 0, metadata !701, metadata !842), !dbg !1695
  %cmp5 = icmp eq %struct._object* %call4, null, !dbg !1696
  br i1 %cmp5, label %cleanup, label %if.end.7, !dbg !1698

if.end.7:                                         ; preds = %if.end.3
  %2 = load %struct._object*, %struct._object** @_PyIO_str_readinto, align 8, !dbg !1699, !tbaa !849
  %call8 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %self, %struct._object* %2, %struct._object* %call4, i8* null) #2, !dbg !1700
  call void @llvm.dbg.value(metadata %struct._object* %call8, i64 0, metadata !702, metadata !842), !dbg !1701
  %cmp9 = icmp eq %struct._object* %call8, null, !dbg !1702
  %cmp10 = icmp eq %struct._object* %call8, @_Py_NoneStruct, !dbg !1703
  %or.cond = or i1 %cmp9, %cmp10, !dbg !1704
  br i1 %or.cond, label %do.body, label %if.end.15, !dbg !1704

do.body:                                          ; preds = %if.end.7
  call void @llvm.dbg.value(metadata %struct._object* %call4, i64 0, metadata !703, metadata !842), !dbg !1705
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call4, i64 0, i32 0, !dbg !1707
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !1707, !tbaa !864
  %dec = add i64 %3, -1, !dbg !1707
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1707, !tbaa !864
  %cmp12 = icmp eq i64 %dec, 0, !dbg !1707
  br i1 %cmp12, label %if.else, label %cleanup, !dbg !1709

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call4, i64 0, i32 1, !dbg !1710
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1710, !tbaa !870
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 4, !dbg !1710
  %5 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1710, !tbaa !871
  call void %5(%struct._object* %call4) #2, !dbg !1710
  br label %cleanup

if.end.15:                                        ; preds = %if.end.7
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1712, !tbaa !849
  %call16 = call i64 @PyNumber_AsSsize_t(%struct._object* %call8, %struct._object* %6) #2, !dbg !1713
  call void @llvm.dbg.value(metadata i64 %call16, i64 0, metadata !700, metadata !842), !dbg !1683
  store i64 %call16, i64* %n, align 8, !dbg !1714, !tbaa !1332
  call void @llvm.dbg.value(metadata %struct._object* %call8, i64 0, metadata !707, metadata !842), !dbg !1715
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %call8, i64 0, i32 0, !dbg !1717
  %7 = load i64, i64* %ob_refcnt19, align 8, !dbg !1717, !tbaa !864
  %dec20 = add i64 %7, -1, !dbg !1717
  store i64 %dec20, i64* %ob_refcnt19, align 8, !dbg !1717, !tbaa !864
  %cmp21 = icmp eq i64 %dec20, 0, !dbg !1717
  br i1 %cmp21, label %if.else.23, label %if.end.26, !dbg !1719

if.else.23:                                       ; preds = %if.end.15
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %call8, i64 0, i32 1, !dbg !1720
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8, !dbg !1720, !tbaa !870
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !1720
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8, !dbg !1720, !tbaa !871
  call void %9(%struct._object* %call8) #2, !dbg !1720
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.15, %if.else.23
  call void @llvm.dbg.value(metadata i64* %n, i64 0, metadata !700, metadata !842), !dbg !1683
  %10 = load i64, i64* %n, align 8, !dbg !1722, !tbaa !1332
  %cmp29 = icmp eq i64 %10, -1, !dbg !1723
  br i1 %cmp29, label %land.lhs.true, label %if.end.45, !dbg !1724

land.lhs.true:                                    ; preds = %if.end.26
  %call30 = call %struct._object* @PyErr_Occurred() #2, !dbg !1725
  %tobool31 = icmp eq %struct._object* %call30, null, !dbg !1725
  br i1 %tobool31, label %if.end.45, label %do.body.33, !dbg !1727

do.body.33:                                       ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct._object* %call4, i64 0, metadata !709, metadata !842), !dbg !1728
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %call4, i64 0, i32 0, !dbg !1730
  %11 = load i64, i64* %ob_refcnt35, align 8, !dbg !1730, !tbaa !864
  %dec36 = add i64 %11, -1, !dbg !1730
  store i64 %dec36, i64* %ob_refcnt35, align 8, !dbg !1730, !tbaa !864
  %cmp37 = icmp eq i64 %dec36, 0, !dbg !1730
  br i1 %cmp37, label %if.else.39, label %cleanup, !dbg !1732

if.else.39:                                       ; preds = %do.body.33
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %call4, i64 0, i32 1, !dbg !1733
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8, !dbg !1733, !tbaa !870
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !1733
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8, !dbg !1733, !tbaa !871
  call void %13(%struct._object* %call4) #2, !dbg !1733
  br label %cleanup

if.end.45:                                        ; preds = %land.lhs.true, %if.end.26
  %call46 = call i8* @PyByteArray_AsString(%struct._object* %call4) #2, !dbg !1735
  call void @llvm.dbg.value(metadata i64* %n, i64 0, metadata !700, metadata !842), !dbg !1683
  %14 = load i64, i64* %n, align 8, !dbg !1736, !tbaa !1332
  %call47 = call %struct._object* @PyBytes_FromStringAndSize(i8* %call46, i64 %14) #2, !dbg !1737
  call void @llvm.dbg.value(metadata %struct._object* %call47, i64 0, metadata !702, metadata !842), !dbg !1701
  call void @llvm.dbg.value(metadata %struct._object* %call4, i64 0, metadata !713, metadata !842), !dbg !1738
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %call4, i64 0, i32 0, !dbg !1740
  %15 = load i64, i64* %ob_refcnt50, align 8, !dbg !1740, !tbaa !864
  %dec51 = add i64 %15, -1, !dbg !1740
  store i64 %dec51, i64* %ob_refcnt50, align 8, !dbg !1740, !tbaa !864
  %cmp52 = icmp eq i64 %dec51, 0, !dbg !1740
  br i1 %cmp52, label %if.else.54, label %cleanup, !dbg !1742

if.else.54:                                       ; preds = %if.end.45
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %call4, i64 0, i32 1, !dbg !1743
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8, !dbg !1743, !tbaa !870
  %tp_dealloc56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i64 0, i32 4, !dbg !1743
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc56, align 8, !dbg !1743, !tbaa !871
  call void %17(%struct._object* %call4) #2, !dbg !1743
  br label %cleanup

cleanup:                                          ; preds = %if.else.54, %if.end.45, %if.else.39, %do.body.33, %if.else, %do.body, %if.end.3, %entry, %if.then.1
  %retval.0 = phi %struct._object* [ %call2, %if.then.1 ], [ null, %entry ], [ null, %if.end.3 ], [ %call8, %do.body ], [ %call8, %if.else ], [ null, %do.body.33 ], [ null, %if.else.39 ], [ %call47, %if.end.45 ], [ %call47, %if.else.54 ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1745
  ret %struct._object* %retval.0, !dbg !1745
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @rawiobase_readall(%struct._object* %self, %struct._object* nocapture readnone %args) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !717, metadata !842), !dbg !1746
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !718, metadata !842), !dbg !1747
  %call = tail call %struct._object* @PyList_New(i64 0) #2, !dbg !1748
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !720, metadata !842), !dbg !1749
  %cmp = icmp eq %struct._object* %call, null, !dbg !1750
  br i1 %cmp, label %cleanup.126, label %while.body.preheader, !dbg !1752

while.body.preheader:                             ; preds = %entry
  br label %while.body, !dbg !1753

while.body:                                       ; preds = %while.body.backedge, %while.body.preheader
  %call1 = tail call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %self, %struct._Py_Identifier* nonnull @PyId_read, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i32 8192) #2, !dbg !1753
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !722, metadata !842), !dbg !1754
  %tobool = icmp eq %struct._object* %call1, null, !dbg !1755
  br i1 %tobool, label %if.then.2, label %if.end.10, !dbg !1756

if.then.2:                                        ; preds = %while.body
  %call3 = tail call i32 @_PyIO_trap_eintr() #2, !dbg !1757
  %tobool4 = icmp eq i32 %call3, 0, !dbg !1757
  br i1 %tobool4, label %do.body, label %while.body.backedge, !dbg !1759

while.body.backedge:                              ; preds = %if.then.2, %if.end.95
  br label %while.body, !dbg !1753

do.body:                                          ; preds = %if.then.2
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !724, metadata !842), !dbg !1760
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1762
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !1762, !tbaa !864
  %dec = add i64 %0, -1, !dbg !1762
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1762, !tbaa !864
  %cmp7 = icmp eq i64 %dec, 0, !dbg !1762
  br i1 %cmp7, label %if.else, label %cleanup.126, !dbg !1764

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1765
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1765, !tbaa !870
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !1765
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1765, !tbaa !871
  tail call void %2(%struct._object* %call) #2, !dbg !1765
  br label %cleanup.126

if.end.10:                                        ; preds = %while.body
  %cmp11 = icmp eq %struct._object* %call1, @_Py_NoneStruct, !dbg !1767
  br i1 %cmp11, label %if.then.12, label %if.end.40, !dbg !1768

if.then.12:                                       ; preds = %if.end.10
  %3 = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, i32 0, !dbg !1769
  %4 = load i64, i64* %3, align 8, !dbg !1769, !tbaa !1356
  %cmp13 = icmp eq i64 %4, 0, !dbg !1770
  br i1 %cmp13, label %do.body.15, label %do.body.28, !dbg !1771

do.body.15:                                       ; preds = %if.then.12
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !728, metadata !842), !dbg !1772
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1774
  %5 = load i64, i64* %ob_refcnt17, align 8, !dbg !1774, !tbaa !864
  %dec18 = add i64 %5, -1, !dbg !1774
  store i64 %dec18, i64* %ob_refcnt17, align 8, !dbg !1774, !tbaa !864
  %cmp19 = icmp eq i64 %dec18, 0, !dbg !1774
  br i1 %cmp19, label %if.else.21, label %cleanup.126, !dbg !1776

if.else.21:                                       ; preds = %do.body.15
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1777
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8, !dbg !1777, !tbaa !870
  %tp_dealloc23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !1777
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc23, align 8, !dbg !1777, !tbaa !871
  tail call void %7(%struct._object* %call) #2, !dbg !1777
  br label %cleanup.126

do.body.28:                                       ; preds = %if.then.12
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !734, metadata !842), !dbg !1779
  %8 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1781, !tbaa !864
  %dec31 = add i64 %8, -1, !dbg !1781
  store i64 %dec31, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1781, !tbaa !864
  %cmp32 = icmp eq i64 %dec31, 0, !dbg !1781
  br i1 %cmp32, label %if.else.34, label %while.end, !dbg !1783

if.else.34:                                       ; preds = %do.body.28
  %9 = load %struct._typeobject*, %struct._typeobject** getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 1), align 8, !dbg !1784, !tbaa !870
  %tp_dealloc36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 4, !dbg !1784
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36, align 8, !dbg !1784, !tbaa !871
  tail call void %10(%struct._object* nonnull @_Py_NoneStruct) #2, !dbg !1784
  br label %while.end

if.end.40:                                        ; preds = %if.end.10
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !1786
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8, !dbg !1787, !tbaa !870
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 19, !dbg !1786
  %12 = load i64, i64* %tp_flags, align 8, !dbg !1786, !tbaa !1023
  %and = and i64 %12, 134217728, !dbg !1786
  %cmp42 = icmp eq i64 %and, 0, !dbg !1786
  br i1 %cmp42, label %do.body.44, label %if.end.68, !dbg !1790

do.body.44:                                       ; preds = %if.end.40
  %ob_type41.lcssa = phi %struct._typeobject** [ %ob_type41, %if.end.40 ]
  %call1.lcssa217 = phi %struct._object* [ %call1, %if.end.40 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !736, metadata !842), !dbg !1791
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1793
  %13 = load i64, i64* %ob_refcnt46, align 8, !dbg !1793, !tbaa !864
  %dec47 = add i64 %13, -1, !dbg !1793
  store i64 %dec47, i64* %ob_refcnt46, align 8, !dbg !1793, !tbaa !864
  %cmp48 = icmp eq i64 %dec47, 0, !dbg !1793
  br i1 %cmp48, label %if.else.50, label %if.end.53, !dbg !1795

if.else.50:                                       ; preds = %do.body.44
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1796
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8, !dbg !1796, !tbaa !870
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !1796
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8, !dbg !1796, !tbaa !871
  tail call void %15(%struct._object* %call) #2, !dbg !1796
  br label %if.end.53

if.end.53:                                        ; preds = %do.body.44, %if.else.50
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !740, metadata !842), !dbg !1798
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %call1.lcssa217, i64 0, i32 0, !dbg !1800
  %16 = load i64, i64* %ob_refcnt58, align 8, !dbg !1800, !tbaa !864
  %dec59 = add i64 %16, -1, !dbg !1800
  store i64 %dec59, i64* %ob_refcnt58, align 8, !dbg !1800, !tbaa !864
  %cmp60 = icmp eq i64 %dec59, 0, !dbg !1800
  br i1 %cmp60, label %if.else.62, label %if.end.65, !dbg !1802

if.else.62:                                       ; preds = %if.end.53
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type41.lcssa, align 8, !dbg !1803, !tbaa !870
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 4, !dbg !1803
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8, !dbg !1803, !tbaa !871
  tail call void %18(%struct._object* %call1.lcssa217) #2, !dbg !1803
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.53, %if.else.62
  %19 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1805, !tbaa !849
  tail call void @PyErr_SetString(%struct._object* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.43, i64 0, i64 0)) #2, !dbg !1806
  br label %cleanup.126, !dbg !1807

if.end.68:                                        ; preds = %if.end.40
  %20 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 1, i32 0, !dbg !1808
  %21 = load i64, i64* %20, align 8, !dbg !1808, !tbaa !1356
  %cmp70 = icmp eq i64 %21, 0, !dbg !1809
  br i1 %cmp70, label %do.body.72, label %if.end.84, !dbg !1810

do.body.72:                                       ; preds = %if.end.68
  %.lcssa223 = phi %struct._typeobject* [ %11, %if.end.68 ]
  %call1.lcssa218 = phi %struct._object* [ %call1, %if.end.68 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !742, metadata !842), !dbg !1811
  %ob_refcnt74 = getelementptr inbounds %struct._object, %struct._object* %call1.lcssa218, i64 0, i32 0, !dbg !1813
  %22 = load i64, i64* %ob_refcnt74, align 8, !dbg !1813, !tbaa !864
  %dec75 = add i64 %22, -1, !dbg !1813
  store i64 %dec75, i64* %ob_refcnt74, align 8, !dbg !1813, !tbaa !864
  %cmp76 = icmp eq i64 %dec75, 0, !dbg !1813
  br i1 %cmp76, label %if.else.78, label %while.end, !dbg !1814

if.else.78:                                       ; preds = %do.body.72
  %tp_dealloc80 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %.lcssa223, i64 0, i32 4, !dbg !1787
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc80, align 8, !dbg !1787, !tbaa !871
  tail call void %23(%struct._object* %call1.lcssa218) #2, !dbg !1787
  br label %while.end

if.end.84:                                        ; preds = %if.end.68
  %call85 = tail call i32 @PyList_Append(%struct._object* %call, %struct._object* %call1) #2, !dbg !1815
  tail call void @llvm.dbg.value(metadata i32 %call85, i64 0, metadata !719, metadata !842), !dbg !1816
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !746, metadata !842), !dbg !1817
  %ob_refcnt88 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !1819
  %24 = load i64, i64* %ob_refcnt88, align 8, !dbg !1819, !tbaa !864
  %dec89 = add i64 %24, -1, !dbg !1819
  store i64 %dec89, i64* %ob_refcnt88, align 8, !dbg !1819, !tbaa !864
  %cmp90 = icmp eq i64 %dec89, 0, !dbg !1819
  br i1 %cmp90, label %if.else.92, label %if.end.95, !dbg !1821

if.else.92:                                       ; preds = %if.end.84
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8, !dbg !1822, !tbaa !870
  %tp_dealloc94 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i64 0, i32 4, !dbg !1822
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc94, align 8, !dbg !1822, !tbaa !871
  tail call void %26(%struct._object* %call1) #2, !dbg !1822
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.84, %if.else.92
  %cmp98 = icmp slt i32 %call85, 0, !dbg !1824
  br i1 %cmp98, label %do.body.100, label %while.body.backedge, !dbg !1825

do.body.100:                                      ; preds = %if.end.95
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !748, metadata !842), !dbg !1826
  %ob_refcnt102 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1828
  %27 = load i64, i64* %ob_refcnt102, align 8, !dbg !1828, !tbaa !864
  %dec103 = add i64 %27, -1, !dbg !1828
  store i64 %dec103, i64* %ob_refcnt102, align 8, !dbg !1828, !tbaa !864
  %cmp104 = icmp eq i64 %dec103, 0, !dbg !1828
  br i1 %cmp104, label %if.else.106, label %cleanup.126, !dbg !1830

if.else.106:                                      ; preds = %do.body.100
  %ob_type107 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1831
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type107, align 8, !dbg !1831, !tbaa !870
  %tp_dealloc108 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i64 0, i32 4, !dbg !1831
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc108, align 8, !dbg !1831, !tbaa !871
  tail call void %29(%struct._object* %call) #2, !dbg !1831
  br label %cleanup.126

while.end:                                        ; preds = %do.body.28, %if.else.34, %do.body.72, %if.else.78
  %30 = load %struct._object*, %struct._object** @_PyIO_empty_bytes, align 8, !dbg !1833, !tbaa !849
  %call113 = tail call %struct._object* @_PyBytes_Join(%struct._object* %30, %struct._object* %call) #2, !dbg !1834
  tail call void @llvm.dbg.value(metadata %struct._object* %call113, i64 0, metadata !721, metadata !842), !dbg !1835
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !752, metadata !842), !dbg !1836
  %ob_refcnt116 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1838
  %31 = load i64, i64* %ob_refcnt116, align 8, !dbg !1838, !tbaa !864
  %dec117 = add i64 %31, -1, !dbg !1838
  store i64 %dec117, i64* %ob_refcnt116, align 8, !dbg !1838, !tbaa !864
  %cmp118 = icmp eq i64 %dec117, 0, !dbg !1838
  br i1 %cmp118, label %if.else.120, label %cleanup.126, !dbg !1840

if.else.120:                                      ; preds = %while.end
  %ob_type121 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1841
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type121, align 8, !dbg !1841, !tbaa !870
  %tp_dealloc122 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i64 0, i32 4, !dbg !1841
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc122, align 8, !dbg !1841, !tbaa !871
  tail call void %33(%struct._object* %call) #2, !dbg !1841
  br label %cleanup.126

cleanup.126:                                      ; preds = %if.else.106, %do.body.100, %if.else.21, %do.body.15, %if.else, %do.body, %if.end.65, %if.else.120, %while.end, %entry
  %retval.2 = phi %struct._object* [ null, %entry ], [ %call113, %while.end ], [ %call113, %if.else.120 ], [ null, %if.else.106 ], [ null, %do.body.100 ], [ @_Py_NoneStruct, %if.else.21 ], [ @_Py_NoneStruct, %do.body.15 ], [ null, %if.else ], [ null, %do.body ], [ null, %if.end.65 ]
  ret %struct._object* %retval.2, !dbg !1843
}

declare i64 @PyNumber_AsSsize_t(%struct._object*, %struct._object*) #1

declare i8* @PyByteArray_AsString(%struct._object*) #1

declare %struct._object* @_PyBytes_Join(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!839, !840}
!llvm.ident = !{!841}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !383, globals: !754)
!1 = !DIFile(filename: "./Modules/_io/iobase.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !89, !350, !94, !364, !365, !373}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !6, line: 109, baseType: !7)
!6 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !6, line: 105, size: 128, align: 64, elements: !8)
!8 = !{!9, !17}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !7, file: !6, line: 107, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !11, line: 177, baseType: !12)
!11 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !13, line: 102, baseType: !14)
!13 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !15, line: 181, baseType: !16)
!15 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!16 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !7, file: !6, line: 108, baseType: !18, size: 64, align: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !6, line: 334, size: 3200, align: 64, elements: !20)
!20 = !{!21, !27, !31, !32, !33, !38, !102, !107, !112, !113, !118, !170, !201, !213, !219, !220, !221, !223, !225, !256, !257, !258, !267, !268, !273, !274, !276, !278, !288, !298, !316, !317, !318, !320, !322, !323, !325, !330, !335, !340, !341, !342, !343, !344, !345, !346, !347, !349}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !19, file: !6, line: 335, baseType: !22, size: 192, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !6, line: 114, baseType: !23)
!23 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 111, size: 192, align: 64, elements: !24)
!24 = !{!25, !26}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !23, file: !6, line: 112, baseType: !5, size: 128, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !23, file: !6, line: 113, baseType: !10, size: 64, align: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !19, file: !6, line: 336, baseType: !28, size: 64, align: 64, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !19, file: !6, line: 337, baseType: !10, size: 64, align: 64, offset: 256)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !19, file: !6, line: 337, baseType: !10, size: 64, align: 64, offset: 320)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !19, file: !6, line: 341, baseType: !34, size: 64, align: 64, offset: 384)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !6, line: 308, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !4}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !19, file: !6, line: 342, baseType: !39, size: 64, align: 64, offset: 448)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !6, line: 314, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{!43, !4, !44, !43}
!43 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !13, line: 48, baseType: !46)
!46 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !47, line: 246, size: 1728, align: 64, elements: !48)
!47 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!48 = !{!49, !50, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !70, !71, !72, !73, !75, !77, !79, !83, !86, !88, !90, !91, !92, !93, !97, !98}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !46, file: !47, line: 247, baseType: !43, size: 32, align: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !46, file: !47, line: 252, baseType: !51, size: 64, align: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !46, file: !47, line: 253, baseType: !51, size: 64, align: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !46, file: !47, line: 254, baseType: !51, size: 64, align: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !46, file: !47, line: 255, baseType: !51, size: 64, align: 64, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !46, file: !47, line: 256, baseType: !51, size: 64, align: 64, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !46, file: !47, line: 257, baseType: !51, size: 64, align: 64, offset: 384)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !46, file: !47, line: 258, baseType: !51, size: 64, align: 64, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !46, file: !47, line: 259, baseType: !51, size: 64, align: 64, offset: 512)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !46, file: !47, line: 261, baseType: !51, size: 64, align: 64, offset: 576)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !46, file: !47, line: 262, baseType: !51, size: 64, align: 64, offset: 640)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !46, file: !47, line: 263, baseType: !51, size: 64, align: 64, offset: 704)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !46, file: !47, line: 265, baseType: !63, size: 64, align: 64, offset: 768)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !47, line: 161, size: 192, align: 64, elements: !65)
!65 = !{!66, !67, !69}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !64, file: !47, line: 162, baseType: !63, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !64, file: !47, line: 163, baseType: !68, size: 64, align: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !64, file: !47, line: 167, baseType: !43, size: 32, align: 32, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !46, file: !47, line: 267, baseType: !68, size: 64, align: 64, offset: 832)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !46, file: !47, line: 269, baseType: !43, size: 32, align: 32, offset: 896)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !46, file: !47, line: 273, baseType: !43, size: 32, align: 32, offset: 928)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !46, file: !47, line: 275, baseType: !74, size: 64, align: 64, offset: 960)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !15, line: 140, baseType: !16)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !46, file: !47, line: 279, baseType: !76, size: 16, align: 16, offset: 1024)
!76 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !46, file: !47, line: 280, baseType: !78, size: 8, align: 8, offset: 1040)
!78 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !46, file: !47, line: 281, baseType: !80, size: 8, align: 8, offset: 1048)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 8, align: 8, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 1)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !46, file: !47, line: 285, baseType: !84, size: 64, align: 64, offset: 1088)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !47, line: 155, baseType: null)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !46, file: !47, line: 294, baseType: !87, size: 64, align: 64, offset: 1152)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !15, line: 141, baseType: !16)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !46, file: !47, line: 303, baseType: !89, size: 64, align: 64, offset: 1216)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !46, file: !47, line: 304, baseType: !89, size: 64, align: 64, offset: 1280)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !46, file: !47, line: 305, baseType: !89, size: 64, align: 64, offset: 1344)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !46, file: !47, line: 306, baseType: !89, size: 64, align: 64, offset: 1408)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !46, file: !47, line: 307, baseType: !94, size: 64, align: 64, offset: 1472)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 62, baseType: !96)
!95 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!96 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !46, file: !47, line: 309, baseType: !43, size: 32, align: 32, offset: 1536)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !46, file: !47, line: 311, baseType: !99, size: 160, align: 8, offset: 1568)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 160, align: 8, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 20)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !19, file: !6, line: 343, baseType: !103, size: 64, align: 64, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !6, line: 316, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!4, !4, !51}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !19, file: !6, line: 344, baseType: !108, size: 64, align: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !6, line: 318, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!43, !4, !51, !4}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !19, file: !6, line: 345, baseType: !89, size: 64, align: 64, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !19, file: !6, line: 346, baseType: !114, size: 64, align: 64, offset: 704)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !6, line: 320, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!4, !4}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !19, file: !6, line: 350, baseType: !119, size: 64, align: 64, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !6, line: 278, baseType: !121)
!121 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 236, size: 2176, align: 64, elements: !122)
!122 = !{!123, !128, !129, !130, !131, !132, !137, !139, !140, !141, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !121, file: !6, line: 241, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !6, line: 166, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!4, !4, !4}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !121, file: !6, line: 242, baseType: !124, size: 64, align: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !121, file: !6, line: 243, baseType: !124, size: 64, align: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !121, file: !6, line: 244, baseType: !124, size: 64, align: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !121, file: !6, line: 245, baseType: !124, size: 64, align: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !121, file: !6, line: 246, baseType: !133, size: 64, align: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !6, line: 167, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!4, !4, !4, !4}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !121, file: !6, line: 247, baseType: !138, size: 64, align: 64, offset: 384)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !6, line: 165, baseType: !115)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !121, file: !6, line: 248, baseType: !138, size: 64, align: 64, offset: 448)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !121, file: !6, line: 249, baseType: !138, size: 64, align: 64, offset: 512)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !121, file: !6, line: 250, baseType: !142, size: 64, align: 64, offset: 576)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !6, line: 168, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!43, !4}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !121, file: !6, line: 251, baseType: !138, size: 64, align: 64, offset: 640)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !121, file: !6, line: 252, baseType: !124, size: 64, align: 64, offset: 704)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !121, file: !6, line: 253, baseType: !124, size: 64, align: 64, offset: 768)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !121, file: !6, line: 254, baseType: !124, size: 64, align: 64, offset: 832)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !121, file: !6, line: 255, baseType: !124, size: 64, align: 64, offset: 896)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !121, file: !6, line: 256, baseType: !124, size: 64, align: 64, offset: 960)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !121, file: !6, line: 257, baseType: !138, size: 64, align: 64, offset: 1024)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !121, file: !6, line: 258, baseType: !89, size: 64, align: 64, offset: 1088)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !121, file: !6, line: 259, baseType: !138, size: 64, align: 64, offset: 1152)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !121, file: !6, line: 261, baseType: !124, size: 64, align: 64, offset: 1216)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !121, file: !6, line: 262, baseType: !124, size: 64, align: 64, offset: 1280)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !121, file: !6, line: 263, baseType: !124, size: 64, align: 64, offset: 1344)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !121, file: !6, line: 264, baseType: !124, size: 64, align: 64, offset: 1408)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !121, file: !6, line: 265, baseType: !133, size: 64, align: 64, offset: 1472)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !121, file: !6, line: 266, baseType: !124, size: 64, align: 64, offset: 1536)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !121, file: !6, line: 267, baseType: !124, size: 64, align: 64, offset: 1600)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !121, file: !6, line: 268, baseType: !124, size: 64, align: 64, offset: 1664)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !121, file: !6, line: 269, baseType: !124, size: 64, align: 64, offset: 1728)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !121, file: !6, line: 270, baseType: !124, size: 64, align: 64, offset: 1792)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !121, file: !6, line: 272, baseType: !124, size: 64, align: 64, offset: 1856)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !121, file: !6, line: 273, baseType: !124, size: 64, align: 64, offset: 1920)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !121, file: !6, line: 274, baseType: !124, size: 64, align: 64, offset: 1984)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !121, file: !6, line: 275, baseType: !124, size: 64, align: 64, offset: 2048)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !121, file: !6, line: 277, baseType: !138, size: 64, align: 64, offset: 2112)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !19, file: !6, line: 351, baseType: !171, size: 64, align: 64, offset: 832)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !6, line: 292, baseType: !173)
!173 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 280, size: 640, align: 64, elements: !174)
!174 = !{!175, !180, !181, !186, !187, !188, !193, !194, !199, !200}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !173, file: !6, line: 281, baseType: !176, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !6, line: 169, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!10, !4}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !173, file: !6, line: 282, baseType: !124, size: 64, align: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !173, file: !6, line: 283, baseType: !182, size: 64, align: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !6, line: 170, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!4, !4, !10}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !173, file: !6, line: 284, baseType: !182, size: 64, align: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !173, file: !6, line: 285, baseType: !89, size: 64, align: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !173, file: !6, line: 286, baseType: !189, size: 64, align: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !6, line: 172, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!43, !4, !10, !4}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !173, file: !6, line: 287, baseType: !89, size: 64, align: 64, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !173, file: !6, line: 288, baseType: !195, size: 64, align: 64, offset: 448)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !6, line: 231, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!43, !4, !4}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !173, file: !6, line: 290, baseType: !124, size: 64, align: 64, offset: 512)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !173, file: !6, line: 291, baseType: !182, size: 64, align: 64, offset: 576)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !19, file: !6, line: 352, baseType: !202, size: 64, align: 64, offset: 896)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !6, line: 298, baseType: !204)
!204 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 294, size: 192, align: 64, elements: !205)
!205 = !{!206, !207, !208}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !204, file: !6, line: 295, baseType: !176, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !204, file: !6, line: 296, baseType: !124, size: 64, align: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !204, file: !6, line: 297, baseType: !209, size: 64, align: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !6, line: 174, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!43, !4, !4, !4}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !19, file: !6, line: 356, baseType: !214, size: 64, align: 64, offset: 960)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !6, line: 321, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!218, !4}
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !11, line: 186, baseType: !10)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !19, file: !6, line: 357, baseType: !133, size: 64, align: 64, offset: 1024)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !19, file: !6, line: 358, baseType: !114, size: 64, align: 64, offset: 1088)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !19, file: !6, line: 359, baseType: !222, size: 64, align: 64, offset: 1152)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !6, line: 317, baseType: !125)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !19, file: !6, line: 360, baseType: !224, size: 64, align: 64, offset: 1216)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !6, line: 319, baseType: !210)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !19, file: !6, line: 363, baseType: !226, size: 64, align: 64, offset: 1280)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !6, line: 304, baseType: !228)
!228 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 301, size: 128, align: 64, elements: !229)
!229 = !{!230, !251}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !228, file: !6, line: 302, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !6, line: 193, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!43, !4, !235, !43}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !6, line: 191, baseType: !237)
!237 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !6, line: 178, size: 640, align: 64, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !248, !249, !250}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !237, file: !6, line: 179, baseType: !89, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !237, file: !6, line: 180, baseType: !4, size: 64, align: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !237, file: !6, line: 181, baseType: !10, size: 64, align: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !237, file: !6, line: 182, baseType: !10, size: 64, align: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !237, file: !6, line: 184, baseType: !43, size: 32, align: 32, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !237, file: !6, line: 185, baseType: !43, size: 32, align: 32, offset: 288)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !237, file: !6, line: 186, baseType: !51, size: 64, align: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !237, file: !6, line: 187, baseType: !247, size: 64, align: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !237, file: !6, line: 188, baseType: !247, size: 64, align: 64, offset: 448)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !237, file: !6, line: 189, baseType: !247, size: 64, align: 64, offset: 512)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !237, file: !6, line: 190, baseType: !89, size: 64, align: 64, offset: 576)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !228, file: !6, line: 303, baseType: !252, size: 64, align: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !6, line: 194, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !4, !235}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !19, file: !6, line: 366, baseType: !96, size: 64, align: 64, offset: 1344)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !19, file: !6, line: 368, baseType: !28, size: 64, align: 64, offset: 1408)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !19, file: !6, line: 372, baseType: !259, size: 64, align: 64, offset: 1472)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !6, line: 233, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!43, !4, !263, !89}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !6, line: 232, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!43, !4, !89}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !19, file: !6, line: 375, baseType: !142, size: 64, align: 64, offset: 1536)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !19, file: !6, line: 379, baseType: !269, size: 64, align: 64, offset: 1600)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !6, line: 322, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!4, !4, !4, !43}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !19, file: !6, line: 382, baseType: !10, size: 64, align: 64, offset: 1664)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !19, file: !6, line: 385, baseType: !275, size: 64, align: 64, offset: 1728)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !6, line: 323, baseType: !115)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !19, file: !6, line: 386, baseType: !277, size: 64, align: 64, offset: 1792)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !6, line: 324, baseType: !115)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !19, file: !6, line: 389, baseType: !279, size: 64, align: 64, offset: 1856)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !281, line: 40, size: 256, align: 64, elements: !282)
!281 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!282 = !{!283, !284, !286, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !280, file: !281, line: 41, baseType: !28, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !280, file: !281, line: 42, baseType: !285, size: 64, align: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !281, line: 18, baseType: !125)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !280, file: !281, line: 43, baseType: !43, size: 32, align: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !280, file: !281, line: 45, baseType: !28, size: 64, align: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !19, file: !6, line: 390, baseType: !289, size: 64, align: 64, offset: 1920)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !291, line: 18, size: 320, align: 64, elements: !292)
!291 = !DIFile(filename: "Include/structmember.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!292 = !{!293, !294, !295, !296, !297}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !290, file: !291, line: 19, baseType: !51, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !290, file: !291, line: 20, baseType: !43, size: 32, align: 32, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !290, file: !291, line: 21, baseType: !10, size: 64, align: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !290, file: !291, line: 22, baseType: !43, size: 32, align: 32, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !290, file: !291, line: 23, baseType: !51, size: 64, align: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !19, file: !6, line: 391, baseType: !299, size: 64, align: 64, offset: 1984)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !301, line: 11, size: 320, align: 64, elements: !302)
!301 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!302 = !{!303, !304, !309, !314, !315}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !300, file: !301, line: 12, baseType: !51, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !300, file: !301, line: 13, baseType: !305, size: 64, align: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !301, line: 8, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!4, !4, !89}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !300, file: !301, line: 14, baseType: !310, size: 64, align: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !301, line: 9, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!43, !4, !4, !89}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !300, file: !301, line: 15, baseType: !51, size: 64, align: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !300, file: !301, line: 16, baseType: !89, size: 64, align: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !19, file: !6, line: 392, baseType: !18, size: 64, align: 64, offset: 2048)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !19, file: !6, line: 393, baseType: !4, size: 64, align: 64, offset: 2112)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !19, file: !6, line: 394, baseType: !319, size: 64, align: 64, offset: 2176)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !6, line: 325, baseType: !134)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !19, file: !6, line: 395, baseType: !321, size: 64, align: 64, offset: 2240)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !6, line: 326, baseType: !210)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !19, file: !6, line: 396, baseType: !10, size: 64, align: 64, offset: 2304)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !19, file: !6, line: 397, baseType: !324, size: 64, align: 64, offset: 2368)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !6, line: 327, baseType: !210)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !19, file: !6, line: 398, baseType: !326, size: 64, align: 64, offset: 2432)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !6, line: 329, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!4, !18, !10}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !19, file: !6, line: 399, baseType: !331, size: 64, align: 64, offset: 2496)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !6, line: 328, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!4, !18, !4, !4}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !19, file: !6, line: 400, baseType: !336, size: 64, align: 64, offset: 2560)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !6, line: 307, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !89}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !19, file: !6, line: 401, baseType: !142, size: 64, align: 64, offset: 2624)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !19, file: !6, line: 402, baseType: !4, size: 64, align: 64, offset: 2688)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !19, file: !6, line: 403, baseType: !4, size: 64, align: 64, offset: 2752)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !19, file: !6, line: 404, baseType: !4, size: 64, align: 64, offset: 2816)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !19, file: !6, line: 405, baseType: !4, size: 64, align: 64, offset: 2880)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !19, file: !6, line: 406, baseType: !4, size: 64, align: 64, offset: 2944)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !19, file: !6, line: 407, baseType: !34, size: 64, align: 64, offset: 3008)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !19, file: !6, line: 410, baseType: !348, size: 32, align: 32, offset: 3072)
!348 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !19, file: !6, line: 412, baseType: !34, size: 64, align: 64, offset: 3136)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGC_Head", file: !352, line: 253, baseType: !353)
!352 = !DIFile(filename: "Include/objimpl.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!353 = !DICompositeType(tag: DW_TAG_union_type, name: "_gc_head", file: !352, line: 246, size: 192, align: 64, elements: !354)
!354 = !{!355, !362}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !353, file: !352, line: 251, baseType: !356, size: 192, align: 64)
!356 = !DICompositeType(tag: DW_TAG_structure_type, scope: !353, file: !352, line: 247, size: 192, align: 64, elements: !357)
!357 = !{!358, !360, !361}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "gc_next", scope: !356, file: !352, line: 248, baseType: !359, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "gc_prev", scope: !356, file: !352, line: 249, baseType: !359, size: 64, align: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "gc_refs", scope: !356, file: !352, line: 250, baseType: !10, size: 64, align: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !353, file: !352, line: 252, baseType: !363, size: 64, align: 64)
!363 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBytesObject", file: !367, line: 41, baseType: !368)
!367 = !DIFile(filename: "Include/bytesobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!368 = !DICompositeType(tag: DW_TAG_structure_type, file: !367, line: 31, size: 320, align: 64, elements: !369)
!369 = !{!370, !371, !372}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !368, file: !367, line: 32, baseType: !22, size: 192, align: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ob_shash", scope: !368, file: !367, line: 33, baseType: !218, size: 64, align: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "ob_sval", scope: !368, file: !367, line: 34, baseType: !80, size: 8, align: 8, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyByteArrayObject", file: !375, line: 30, baseType: !376)
!375 = !DIFile(filename: "Include/bytearrayobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!376 = !DICompositeType(tag: DW_TAG_structure_type, file: !375, line: 23, size: 448, align: 64, elements: !377)
!377 = !{!378, !379, !380, !381, !382}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !376, file: !375, line: 24, baseType: !22, size: 192, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ob_alloc", scope: !376, file: !375, line: 25, baseType: !10, size: 64, align: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ob_bytes", scope: !376, file: !375, line: 26, baseType: !51, size: 64, align: 64, offset: 256)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ob_start", scope: !376, file: !375, line: 27, baseType: !51, size: 64, align: 64, offset: 320)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ob_exports", scope: !376, file: !375, line: 29, baseType: !43, size: 32, align: 32, offset: 384)
!383 = !{!384, !388, !392, !409, !426, !443, !450, !464, !484, !495, !506, !509, !517, !521, !525, !529, !533, !547, !551, !555, !559, !563, !567, !571, !575, !618, !650, !675, !679, !696, !715}
!384 = !DISubprogram(name: "_PyIOBase_check_closed", scope: !1, file: !1, line: 167, type: !126, isLocal: false, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @_PyIOBase_check_closed, variables: !385)
!385 = !{!386, !387}
!386 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !384, file: !1, line: 167, type: !4)
!387 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !384, file: !1, line: 167, type: !4)
!388 = !DISubprogram(name: "_PyIOBase_finalize", scope: !1, file: !1, line: 252, type: !144, isLocal: false, isDefinition: true, scopeLine: 253, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @_PyIOBase_finalize, variables: !389)
!389 = !{!390, !391}
!390 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !388, file: !1, line: 252, type: !4)
!391 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "is_zombie", scope: !388, file: !1, line: 254, type: !43)
!392 = !DISubprogram(name: "_PyIOBase_check_seekable", scope: !1, file: !1, line: 320, type: !126, isLocal: false, isDefinition: true, scopeLine: 321, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @_PyIOBase_check_seekable, variables: !393)
!393 = !{!394, !395, !396, !397, !401, !405}
!394 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !392, file: !1, line: 320, type: !4)
!395 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !392, file: !1, line: 320, type: !4)
!396 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !392, file: !1, line: 322, type: !4)
!397 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !398, file: !1, line: 326, type: !4)
!398 = distinct !DILexicalBlock(scope: !399, file: !1, line: 326, column: 9)
!399 = distinct !DILexicalBlock(scope: !400, file: !1, line: 325, column: 25)
!400 = distinct !DILexicalBlock(scope: !392, file: !1, line: 325, column: 9)
!401 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !402, file: !1, line: 326, type: !4)
!402 = distinct !DILexicalBlock(scope: !403, file: !1, line: 326, column: 9)
!403 = distinct !DILexicalBlock(scope: !404, file: !1, line: 326, column: 9)
!404 = distinct !DILexicalBlock(scope: !398, file: !1, line: 326, column: 9)
!405 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !406, file: !1, line: 331, type: !4)
!406 = distinct !DILexicalBlock(scope: !407, file: !1, line: 331, column: 9)
!407 = distinct !DILexicalBlock(scope: !408, file: !1, line: 330, column: 26)
!408 = distinct !DILexicalBlock(scope: !392, file: !1, line: 330, column: 9)
!409 = !DISubprogram(name: "_PyIOBase_check_readable", scope: !1, file: !1, line: 349, type: !126, isLocal: false, isDefinition: true, scopeLine: 350, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @_PyIOBase_check_readable, variables: !410)
!410 = !{!411, !412, !413, !414, !418, !422}
!411 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !409, file: !1, line: 349, type: !4)
!412 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !409, file: !1, line: 349, type: !4)
!413 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !409, file: !1, line: 351, type: !4)
!414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !415, file: !1, line: 355, type: !4)
!415 = distinct !DILexicalBlock(scope: !416, file: !1, line: 355, column: 9)
!416 = distinct !DILexicalBlock(scope: !417, file: !1, line: 354, column: 25)
!417 = distinct !DILexicalBlock(scope: !409, file: !1, line: 354, column: 9)
!418 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !419, file: !1, line: 355, type: !4)
!419 = distinct !DILexicalBlock(scope: !420, file: !1, line: 355, column: 9)
!420 = distinct !DILexicalBlock(scope: !421, file: !1, line: 355, column: 9)
!421 = distinct !DILexicalBlock(scope: !415, file: !1, line: 355, column: 9)
!422 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !423, file: !1, line: 360, type: !4)
!423 = distinct !DILexicalBlock(scope: !424, file: !1, line: 360, column: 9)
!424 = distinct !DILexicalBlock(scope: !425, file: !1, line: 359, column: 26)
!425 = distinct !DILexicalBlock(scope: !409, file: !1, line: 359, column: 9)
!426 = !DISubprogram(name: "_PyIOBase_check_writable", scope: !1, file: !1, line: 378, type: !126, isLocal: false, isDefinition: true, scopeLine: 379, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @_PyIOBase_check_writable, variables: !427)
!427 = !{!428, !429, !430, !431, !435, !439}
!428 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !426, file: !1, line: 378, type: !4)
!429 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !426, file: !1, line: 378, type: !4)
!430 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !426, file: !1, line: 380, type: !4)
!431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !432, file: !1, line: 384, type: !4)
!432 = distinct !DILexicalBlock(scope: !433, file: !1, line: 384, column: 9)
!433 = distinct !DILexicalBlock(scope: !434, file: !1, line: 383, column: 25)
!434 = distinct !DILexicalBlock(scope: !426, file: !1, line: 383, column: 9)
!435 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !436, file: !1, line: 384, type: !4)
!436 = distinct !DILexicalBlock(scope: !437, file: !1, line: 384, column: 9)
!437 = distinct !DILexicalBlock(scope: !438, file: !1, line: 384, column: 9)
!438 = distinct !DILexicalBlock(scope: !432, file: !1, line: 384, column: 9)
!439 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !440, file: !1, line: 389, type: !4)
!440 = distinct !DILexicalBlock(scope: !441, file: !1, line: 389, column: 9)
!441 = distinct !DILexicalBlock(scope: !442, file: !1, line: 388, column: 26)
!442 = distinct !DILexicalBlock(scope: !426, file: !1, line: 388, column: 9)
!443 = !DISubprogram(name: "iobase_closed", scope: !1, file: !1, line: 146, type: !144, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, variables: !444)
!444 = !{!445, !446, !447, !448}
!445 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !443, file: !1, line: 146, type: !4)
!446 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !443, file: !1, line: 148, type: !4)
!447 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "closed", scope: !443, file: !1, line: 149, type: !43)
!448 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !449, file: !1, line: 156, type: !4)
!449 = distinct !DILexicalBlock(scope: !443, file: !1, line: 156, column: 5)
!450 = !DISubprogram(name: "iobase_unsupported", scope: !1, file: !1, line: 70, type: !451, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, variables: !453)
!451 = !DISubroutineType(types: !452)
!452 = !{!4, !28}
!453 = !{!454, !455}
!454 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "message", arg: 1, scope: !450, file: !1, line: 70, type: !28)
!455 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "state", scope: !450, file: !1, line: 72, type: !456)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64, align: 64)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "_PyIO_State", file: !458, line: 135, baseType: !459)
!458 = !DIFile(filename: "./Modules/_io/_iomodule.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!459 = !DICompositeType(tag: DW_TAG_structure_type, file: !458, line: 130, size: 192, align: 64, elements: !460)
!460 = !{!461, !462, !463}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !459, file: !458, line: 131, baseType: !43, size: 32, align: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "locale_module", scope: !459, file: !458, line: 132, baseType: !4, size: 64, align: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "unsupported_operation", scope: !459, file: !458, line: 134, baseType: !4, size: 64, align: 64, offset: 128)
!464 = !DISubprogram(name: "iobase_dealloc", scope: !1, file: !1, line: 284, type: !465, isLocal: true, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.iobase*)* @iobase_dealloc, variables: !474)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !467}
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64, align: 64)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "iobase", file: !1, line: 25, baseType: !469)
!469 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 20, size: 256, align: 64, elements: !470)
!470 = !{!471, !472, !473}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !469, file: !1, line: 21, baseType: !5, size: 128, align: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !469, file: !1, line: 23, baseType: !4, size: 64, align: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "weakreflist", scope: !469, file: !1, line: 24, baseType: !4, size: 64, align: 64, offset: 192)
!474 = !{!475, !476, !478, !480}
!475 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !464, file: !1, line: 284, type: !467)
!476 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !477, file: !1, line: 298, type: !350)
!477 = distinct !DILexicalBlock(scope: !464, file: !1, line: 298, column: 5)
!478 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !479, file: !1, line: 301, type: !4)
!479 = distinct !DILexicalBlock(scope: !464, file: !1, line: 301, column: 5)
!480 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !481, file: !1, line: 301, type: !4)
!481 = distinct !DILexicalBlock(scope: !482, file: !1, line: 301, column: 5)
!482 = distinct !DILexicalBlock(scope: !483, file: !1, line: 301, column: 5)
!483 = distinct !DILexicalBlock(scope: !479, file: !1, line: 301, column: 5)
!484 = !DISubprogram(name: "iobase_traverse", scope: !1, file: !1, line: 268, type: !485, isLocal: true, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.iobase*, i32 (%struct._object*, i8*)*, i8*)* @iobase_traverse, variables: !487)
!485 = !DISubroutineType(types: !486)
!486 = !{!43, !467, !263, !89}
!487 = !{!488, !489, !490, !491}
!488 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !484, file: !1, line: 268, type: !467)
!489 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !484, file: !1, line: 268, type: !263)
!490 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !484, file: !1, line: 268, type: !89)
!491 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !492, file: !1, line: 270, type: !43)
!492 = distinct !DILexicalBlock(scope: !493, file: !1, line: 270, column: 5)
!493 = distinct !DILexicalBlock(scope: !494, file: !1, line: 270, column: 5)
!494 = distinct !DILexicalBlock(scope: !484, file: !1, line: 270, column: 5)
!495 = !DISubprogram(name: "iobase_clear", scope: !1, file: !1, line: 275, type: !496, isLocal: true, isDefinition: true, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.iobase*)* @iobase_clear, variables: !498)
!496 = !DISubroutineType(types: !497)
!497 = !{!43, !467}
!498 = !{!499, !500, !502}
!499 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !495, file: !1, line: 275, type: !467)
!500 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !501, file: !1, line: 277, type: !4)
!501 = distinct !DILexicalBlock(scope: !495, file: !1, line: 277, column: 5)
!502 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !503, file: !1, line: 277, type: !4)
!503 = distinct !DILexicalBlock(scope: !504, file: !1, line: 277, column: 5)
!504 = distinct !DILexicalBlock(scope: !505, file: !1, line: 277, column: 5)
!505 = distinct !DILexicalBlock(scope: !501, file: !1, line: 277, column: 5)
!506 = !DISubprogram(name: "iobase_iter", scope: !1, file: !1, line: 563, type: !116, isLocal: true, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @iobase_iter, variables: !507)
!507 = !{!508}
!508 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !506, file: !1, line: 563, type: !4)
!509 = !DISubprogram(name: "iobase_iternext", scope: !1, file: !1, line: 573, type: !116, isLocal: true, isDefinition: true, scopeLine: 574, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @iobase_iternext, variables: !510)
!510 = !{!511, !512, !513}
!511 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !509, file: !1, line: 573, type: !4)
!512 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "line", scope: !509, file: !1, line: 575, type: !4)
!513 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !514, file: !1, line: 581, type: !4)
!514 = distinct !DILexicalBlock(scope: !515, file: !1, line: 581, column: 9)
!515 = distinct !DILexicalBlock(scope: !516, file: !1, line: 580, column: 35)
!516 = distinct !DILexicalBlock(scope: !509, file: !1, line: 580, column: 9)
!517 = !DISubprogram(name: "iobase_seek", scope: !1, file: !1, line: 94, type: !126, isLocal: true, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @iobase_seek, variables: !518)
!518 = !{!519, !520}
!519 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !517, file: !1, line: 94, type: !4)
!520 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !517, file: !1, line: 94, type: !4)
!521 = !DISubprogram(name: "iobase_tell", scope: !1, file: !1, line: 103, type: !126, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @iobase_tell, variables: !522)
!522 = !{!523, !524}
!523 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !521, file: !1, line: 103, type: !4)
!524 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !521, file: !1, line: 103, type: !4)
!525 = !DISubprogram(name: "iobase_truncate", scope: !1, file: !1, line: 117, type: !126, isLocal: true, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @iobase_truncate, variables: !526)
!526 = !{!527, !528}
!527 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !525, file: !1, line: 117, type: !4)
!528 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !525, file: !1, line: 117, type: !4)
!529 = !DISubprogram(name: "iobase_flush", scope: !1, file: !1, line: 130, type: !126, isLocal: true, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @iobase_flush, variables: !530)
!530 = !{!531, !532}
!531 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !529, file: !1, line: 130, type: !4)
!532 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !529, file: !1, line: 130, type: !4)
!533 = !DISubprogram(name: "iobase_close", scope: !1, file: !1, line: 184, type: !126, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @iobase_close, variables: !534)
!534 = !{!535, !536, !537, !538, !542, !545}
!535 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !533, file: !1, line: 184, type: !4)
!536 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !533, file: !1, line: 184, type: !4)
!537 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !533, file: !1, line: 186, type: !4)
!538 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !539, file: !1, line: 194, type: !4)
!539 = distinct !DILexicalBlock(scope: !540, file: !1, line: 194, column: 9)
!540 = distinct !DILexicalBlock(scope: !541, file: !1, line: 193, column: 72)
!541 = distinct !DILexicalBlock(scope: !533, file: !1, line: 193, column: 9)
!542 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !543, file: !1, line: 194, type: !4)
!543 = distinct !DILexicalBlock(scope: !544, file: !1, line: 194, column: 9)
!544 = distinct !DILexicalBlock(scope: !539, file: !1, line: 194, column: 9)
!545 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !546, file: !1, line: 201, type: !4)
!546 = distinct !DILexicalBlock(scope: !533, file: !1, line: 201, column: 5)
!547 = !DISubprogram(name: "iobase_seekable", scope: !1, file: !1, line: 314, type: !126, isLocal: true, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @iobase_seekable, variables: !548)
!548 = !{!549, !550}
!549 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !547, file: !1, line: 314, type: !4)
!550 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !547, file: !1, line: 314, type: !4)
!551 = !DISubprogram(name: "iobase_readable", scope: !1, file: !1, line: 342, type: !126, isLocal: true, isDefinition: true, scopeLine: 343, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @iobase_readable, variables: !552)
!552 = !{!553, !554}
!553 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !551, file: !1, line: 342, type: !4)
!554 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !551, file: !1, line: 342, type: !4)
!555 = !DISubprogram(name: "iobase_writable", scope: !1, file: !1, line: 371, type: !126, isLocal: true, isDefinition: true, scopeLine: 372, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @iobase_writable, variables: !556)
!556 = !{!557, !558}
!557 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !555, file: !1, line: 371, type: !4)
!558 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !555, file: !1, line: 371, type: !4)
!559 = !DISubprogram(name: "iobase_fileno", scope: !1, file: !1, line: 422, type: !126, isLocal: true, isDefinition: true, scopeLine: 423, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @iobase_fileno, variables: !560)
!560 = !{!561, !562}
!561 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !559, file: !1, line: 422, type: !4)
!562 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !559, file: !1, line: 422, type: !4)
!563 = !DISubprogram(name: "iobase_isatty", scope: !1, file: !1, line: 433, type: !126, isLocal: true, isDefinition: true, scopeLine: 434, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @iobase_isatty, variables: !564)
!564 = !{!565, !566}
!565 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !563, file: !1, line: 433, type: !4)
!566 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !563, file: !1, line: 433, type: !4)
!567 = !DISubprogram(name: "iobase_enter", scope: !1, file: !1, line: 397, type: !126, isLocal: true, isDefinition: true, scopeLine: 398, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @iobase_enter, variables: !568)
!568 = !{!569, !570}
!569 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !567, file: !1, line: 397, type: !4)
!570 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !567, file: !1, line: 397, type: !4)
!571 = !DISubprogram(name: "iobase_exit", scope: !1, file: !1, line: 407, type: !126, isLocal: true, isDefinition: true, scopeLine: 408, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @iobase_exit, variables: !572)
!572 = !{!573, !574}
!573 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !571, file: !1, line: 407, type: !4)
!574 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !571, file: !1, line: 407, type: !4)
!575 = !DISubprogram(name: "iobase_readline", scope: !1, file: !1, line: 452, type: !126, isLocal: true, isDefinition: true, scopeLine: 453, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @iobase_readline, variables: !576)
!576 = !{!577, !578, !579, !580, !581, !582, !583, !584, !586, !587, !590, !594, !597, !598, !600, !604, !608, !612, !614, !616}
!577 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !575, file: !1, line: 452, type: !4)
!578 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !575, file: !1, line: 452, type: !4)
!579 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "limit", scope: !575, file: !1, line: 456, type: !10)
!580 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "has_peek", scope: !575, file: !1, line: 457, type: !43)
!581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffer", scope: !575, file: !1, line: 458, type: !4)
!582 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !575, file: !1, line: 458, type: !4)
!583 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old_size", scope: !575, file: !1, line: 459, type: !10)
!584 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nreadahead", scope: !585, file: !1, line: 474, type: !10)
!585 = distinct !DILexicalBlock(scope: !575, file: !1, line: 473, column: 50)
!586 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !585, file: !1, line: 475, type: !4)
!587 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "readahead", scope: !588, file: !1, line: 478, type: !4)
!588 = distinct !DILexicalBlock(scope: !589, file: !1, line: 477, column: 23)
!589 = distinct !DILexicalBlock(scope: !585, file: !1, line: 477, column: 13)
!590 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !591, file: !1, line: 491, type: !4)
!591 = distinct !DILexicalBlock(scope: !592, file: !1, line: 491, column: 17)
!592 = distinct !DILexicalBlock(scope: !593, file: !1, line: 487, column: 44)
!593 = distinct !DILexicalBlock(scope: !588, file: !1, line: 487, column: 17)
!594 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !595, file: !1, line: 495, type: !10)
!595 = distinct !DILexicalBlock(scope: !596, file: !1, line: 494, column: 50)
!596 = distinct !DILexicalBlock(scope: !588, file: !1, line: 494, column: 17)
!597 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !595, file: !1, line: 496, type: !28)
!598 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !599, file: !1, line: 515, type: !4)
!599 = distinct !DILexicalBlock(scope: !588, file: !1, line: 515, column: 13)
!600 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !601, file: !1, line: 531, type: !4)
!601 = distinct !DILexicalBlock(scope: !602, file: !1, line: 531, column: 13)
!602 = distinct !DILexicalBlock(scope: !603, file: !1, line: 527, column: 32)
!603 = distinct !DILexicalBlock(scope: !585, file: !1, line: 527, column: 13)
!604 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !605, file: !1, line: 535, type: !4)
!605 = distinct !DILexicalBlock(scope: !606, file: !1, line: 535, column: 13)
!606 = distinct !DILexicalBlock(scope: !607, file: !1, line: 534, column: 39)
!607 = distinct !DILexicalBlock(scope: !585, file: !1, line: 534, column: 13)
!608 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !609, file: !1, line: 541, type: !4)
!609 = distinct !DILexicalBlock(scope: !610, file: !1, line: 541, column: 13)
!610 = distinct !DILexicalBlock(scope: !611, file: !1, line: 540, column: 77)
!611 = distinct !DILexicalBlock(scope: !585, file: !1, line: 540, column: 13)
!612 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !613, file: !1, line: 547, type: !4)
!613 = distinct !DILexicalBlock(scope: !585, file: !1, line: 547, column: 9)
!614 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !615, file: !1, line: 555, type: !4)
!615 = distinct !DILexicalBlock(scope: !575, file: !1, line: 555, column: 5)
!616 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !617, file: !1, line: 558, type: !4)
!617 = distinct !DILexicalBlock(scope: !575, file: !1, line: 558, column: 5)
!618 = !DISubprogram(name: "iobase_readlines", scope: !1, file: !1, line: 596, type: !126, isLocal: true, isDefinition: true, scopeLine: 597, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @iobase_readlines, variables: !619)
!619 = !{!620, !621, !622, !623, !624, !625, !628, !632, !634, !636, !642, !646, !648}
!620 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !618, file: !1, line: 596, type: !4)
!621 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !618, file: !1, line: 596, type: !4)
!622 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hint", scope: !618, file: !1, line: 598, type: !10)
!623 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "length", scope: !618, file: !1, line: 598, type: !10)
!624 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !618, file: !1, line: 599, type: !4)
!625 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !626, file: !1, line: 614, type: !4)
!626 = distinct !DILexicalBlock(scope: !627, file: !1, line: 609, column: 20)
!627 = distinct !DILexicalBlock(scope: !618, file: !1, line: 609, column: 9)
!628 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !629, file: !1, line: 617, type: !4)
!629 = distinct !DILexicalBlock(scope: !630, file: !1, line: 617, column: 13)
!630 = distinct !DILexicalBlock(scope: !631, file: !1, line: 616, column: 26)
!631 = distinct !DILexicalBlock(scope: !626, file: !1, line: 616, column: 13)
!632 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !633, file: !1, line: 620, type: !4)
!633 = distinct !DILexicalBlock(scope: !626, file: !1, line: 620, column: 9)
!634 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "line", scope: !635, file: !1, line: 625, type: !4)
!635 = distinct !DILexicalBlock(scope: !618, file: !1, line: 624, column: 15)
!636 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !637, file: !1, line: 628, type: !4)
!637 = distinct !DILexicalBlock(scope: !638, file: !1, line: 628, column: 17)
!638 = distinct !DILexicalBlock(scope: !639, file: !1, line: 627, column: 35)
!639 = distinct !DILexicalBlock(scope: !640, file: !1, line: 627, column: 17)
!640 = distinct !DILexicalBlock(scope: !641, file: !1, line: 626, column: 27)
!641 = distinct !DILexicalBlock(scope: !635, file: !1, line: 626, column: 13)
!642 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !643, file: !1, line: 636, type: !4)
!643 = distinct !DILexicalBlock(scope: !644, file: !1, line: 636, column: 13)
!644 = distinct !DILexicalBlock(scope: !645, file: !1, line: 635, column: 46)
!645 = distinct !DILexicalBlock(scope: !635, file: !1, line: 635, column: 13)
!646 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !647, file: !1, line: 637, type: !4)
!647 = distinct !DILexicalBlock(scope: !644, file: !1, line: 637, column: 13)
!648 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !649, file: !1, line: 641, type: !4)
!649 = distinct !DILexicalBlock(scope: !635, file: !1, line: 641, column: 9)
!650 = !DISubprogram(name: "iobase_writelines", scope: !1, file: !1, line: 650, type: !126, isLocal: true, isDefinition: true, scopeLine: 651, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @iobase_writelines, variables: !651)
!651 = !{!652, !653, !654, !655, !656, !657, !659, !665, !667, !671, !673}
!652 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !650, file: !1, line: 650, type: !4)
!653 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !650, file: !1, line: 650, type: !4)
!654 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lines", scope: !650, file: !1, line: 652, type: !4)
!655 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iter", scope: !650, file: !1, line: 652, type: !4)
!656 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !650, file: !1, line: 652, type: !4)
!657 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "line", scope: !658, file: !1, line: 666, type: !4)
!658 = distinct !DILexicalBlock(scope: !650, file: !1, line: 665, column: 15)
!659 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !660, file: !1, line: 669, type: !4)
!660 = distinct !DILexicalBlock(scope: !661, file: !1, line: 669, column: 17)
!661 = distinct !DILexicalBlock(scope: !662, file: !1, line: 668, column: 35)
!662 = distinct !DILexicalBlock(scope: !663, file: !1, line: 668, column: 17)
!663 = distinct !DILexicalBlock(scope: !664, file: !1, line: 667, column: 27)
!664 = distinct !DILexicalBlock(scope: !658, file: !1, line: 667, column: 13)
!665 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !666, file: !1, line: 680, type: !4)
!666 = distinct !DILexicalBlock(scope: !658, file: !1, line: 680, column: 9)
!667 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !668, file: !1, line: 682, type: !4)
!668 = distinct !DILexicalBlock(scope: !669, file: !1, line: 682, column: 13)
!669 = distinct !DILexicalBlock(scope: !670, file: !1, line: 681, column: 26)
!670 = distinct !DILexicalBlock(scope: !658, file: !1, line: 681, column: 13)
!671 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !672, file: !1, line: 685, type: !4)
!672 = distinct !DILexicalBlock(scope: !658, file: !1, line: 685, column: 9)
!673 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !674, file: !1, line: 687, type: !4)
!674 = distinct !DILexicalBlock(scope: !650, file: !1, line: 687, column: 5)
!675 = !DISubprogram(name: "iobase_closed_get", scope: !1, file: !1, line: 161, type: !307, isLocal: true, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i8*)* @iobase_closed_get, variables: !676)
!676 = !{!677, !678}
!677 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !675, file: !1, line: 161, type: !4)
!678 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "context", arg: 2, scope: !675, file: !1, line: 161, type: !89)
!679 = !DISubprogram(name: "iobase_finalize", scope: !1, file: !1, line: 208, type: !36, isLocal: true, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @iobase_finalize, variables: !680)
!680 = !{!681, !682, !683, !684, !685, !686, !687, !691}
!681 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !679, file: !1, line: 208, type: !4)
!682 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !679, file: !1, line: 210, type: !4)
!683 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "error_type", scope: !679, file: !1, line: 211, type: !4)
!684 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "error_value", scope: !679, file: !1, line: 211, type: !4)
!685 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "error_traceback", scope: !679, file: !1, line: 211, type: !4)
!686 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "closed", scope: !679, file: !1, line: 212, type: !43)
!687 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !688, file: !1, line: 227, type: !4)
!688 = distinct !DILexicalBlock(scope: !689, file: !1, line: 227, column: 9)
!689 = distinct !DILexicalBlock(scope: !690, file: !1, line: 225, column: 10)
!690 = distinct !DILexicalBlock(scope: !679, file: !1, line: 221, column: 9)
!691 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !692, file: !1, line: 244, type: !4)
!692 = distinct !DILexicalBlock(scope: !693, file: !1, line: 244, column: 13)
!693 = distinct !DILexicalBlock(scope: !694, file: !1, line: 241, column: 13)
!694 = distinct !DILexicalBlock(scope: !695, file: !1, line: 231, column: 22)
!695 = distinct !DILexicalBlock(scope: !679, file: !1, line: 231, column: 9)
!696 = !DISubprogram(name: "rawiobase_read", scope: !1, file: !1, line: 799, type: !126, isLocal: true, isDefinition: true, scopeLine: 800, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @rawiobase_read, variables: !697)
!697 = !{!698, !699, !700, !701, !702, !703, !707, !709, !713}
!698 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !696, file: !1, line: 799, type: !4)
!699 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !696, file: !1, line: 799, type: !4)
!700 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !696, file: !1, line: 801, type: !10)
!701 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !696, file: !1, line: 802, type: !4)
!702 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !696, file: !1, line: 802, type: !4)
!703 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !704, file: !1, line: 822, type: !4)
!704 = distinct !DILexicalBlock(scope: !705, file: !1, line: 822, column: 9)
!705 = distinct !DILexicalBlock(scope: !706, file: !1, line: 821, column: 40)
!706 = distinct !DILexicalBlock(scope: !696, file: !1, line: 821, column: 9)
!707 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !708, file: !1, line: 827, type: !4)
!708 = distinct !DILexicalBlock(scope: !696, file: !1, line: 827, column: 5)
!709 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !710, file: !1, line: 829, type: !4)
!710 = distinct !DILexicalBlock(scope: !711, file: !1, line: 829, column: 9)
!711 = distinct !DILexicalBlock(scope: !712, file: !1, line: 828, column: 38)
!712 = distinct !DILexicalBlock(scope: !696, file: !1, line: 828, column: 9)
!713 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !714, file: !1, line: 834, type: !4)
!714 = distinct !DILexicalBlock(scope: !696, file: !1, line: 834, column: 5)
!715 = !DISubprogram(name: "rawiobase_readall", scope: !1, file: !1, line: 843, type: !126, isLocal: true, isDefinition: true, scopeLine: 844, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @rawiobase_readall, variables: !716)
!716 = !{!717, !718, !719, !720, !721, !722, !724, !728, !734, !736, !740, !742, !746, !748, !752}
!717 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !715, file: !1, line: 843, type: !4)
!718 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !715, file: !1, line: 843, type: !4)
!719 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !715, file: !1, line: 845, type: !43)
!720 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "chunks", scope: !715, file: !1, line: 846, type: !4)
!721 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !715, file: !1, line: 847, type: !4)
!722 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !723, file: !1, line: 853, type: !4)
!723 = distinct !DILexicalBlock(scope: !715, file: !1, line: 852, column: 15)
!724 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !725, file: !1, line: 861, type: !4)
!725 = distinct !DILexicalBlock(scope: !726, file: !1, line: 861, column: 13)
!726 = distinct !DILexicalBlock(scope: !727, file: !1, line: 855, column: 20)
!727 = distinct !DILexicalBlock(scope: !723, file: !1, line: 855, column: 13)
!728 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !729, file: !1, line: 866, type: !4)
!729 = distinct !DILexicalBlock(scope: !730, file: !1, line: 866, column: 17)
!730 = distinct !DILexicalBlock(scope: !731, file: !1, line: 865, column: 47)
!731 = distinct !DILexicalBlock(scope: !732, file: !1, line: 865, column: 17)
!732 = distinct !DILexicalBlock(scope: !733, file: !1, line: 864, column: 30)
!733 = distinct !DILexicalBlock(scope: !723, file: !1, line: 864, column: 13)
!734 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !735, file: !1, line: 869, type: !4)
!735 = distinct !DILexicalBlock(scope: !732, file: !1, line: 869, column: 13)
!736 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !737, file: !1, line: 873, type: !4)
!737 = distinct !DILexicalBlock(scope: !738, file: !1, line: 873, column: 13)
!738 = distinct !DILexicalBlock(scope: !739, file: !1, line: 872, column: 35)
!739 = distinct !DILexicalBlock(scope: !723, file: !1, line: 872, column: 13)
!740 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !741, file: !1, line: 874, type: !4)
!741 = distinct !DILexicalBlock(scope: !738, file: !1, line: 874, column: 13)
!742 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !743, file: !1, line: 880, type: !4)
!743 = distinct !DILexicalBlock(scope: !744, file: !1, line: 880, column: 13)
!744 = distinct !DILexicalBlock(scope: !745, file: !1, line: 878, column: 42)
!745 = distinct !DILexicalBlock(scope: !723, file: !1, line: 878, column: 13)
!746 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !747, file: !1, line: 884, type: !4)
!747 = distinct !DILexicalBlock(scope: !723, file: !1, line: 884, column: 9)
!748 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !749, file: !1, line: 886, type: !4)
!749 = distinct !DILexicalBlock(scope: !750, file: !1, line: 886, column: 13)
!750 = distinct !DILexicalBlock(scope: !751, file: !1, line: 885, column: 20)
!751 = distinct !DILexicalBlock(scope: !723, file: !1, line: 885, column: 13)
!752 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !753, file: !1, line: 891, type: !4)
!753 = distinct !DILexicalBlock(scope: !715, file: !1, line: 891, column: 5)
!754 = !{!755, !757, !758, !762, !765, !769, !777, !781, !785, !786, !790, !794, !798, !802, !806, !810, !811, !812, !813, !817, !818, !822, !827, !828, !832, !834, !835}
!755 = !DIGlobalVariable(name: "PyIOBase_Type", scope: !0, file: !1, line: 727, type: !756, isLocal: false, isDefinition: true, variable: { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyIOBase_Type)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !6, line: 422, baseType: !19)
!757 = !DIGlobalVariable(name: "PyRawIOBase_Type", scope: !0, file: !1, line: 901, type: !756, isLocal: false, isDefinition: true, variable: { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyRawIOBase_Type)
!758 = !DIGlobalVariable(name: "iobase_doc", scope: !0, file: !1, line: 27, type: !759, isLocal: true, isDefinition: true, variable: [1242 x i8]* @iobase_doc)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 9936, align: 8, elements: !760)
!760 = !{!761}
!761 = !DISubrange(count: 1242)
!762 = !DIGlobalVariable(name: "iobase_methods", scope: !0, file: !1, line: 691, type: !763, isLocal: true, isDefinition: true, variable: <{ { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } }>* @iobase_methods)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !764, size: 5120, align: 64, elements: !100)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!765 = !DIGlobalVariable(name: "iobase_seek_doc", scope: !0, file: !1, line: 80, type: !766, isLocal: true, isDefinition: true, variable: [386 x i8]* @iobase_seek_doc)
!766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 3088, align: 8, elements: !767)
!767 = !{!768}
!768 = !DISubrange(count: 386)
!769 = !DIGlobalVariable(name: "PyId_seek", scope: !521, file: !1, line: 105, type: !770, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @iobase_tell.PyId_seek)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !6, line: 144, baseType: !771)
!771 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !6, line: 140, size: 192, align: 64, elements: !772)
!772 = !{!773, !775, !776}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !771, file: !6, line: 141, baseType: !774, size: 64, align: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64, align: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !771, file: !6, line: 142, baseType: !28, size: 64, align: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !771, file: !6, line: 143, baseType: !4, size: 64, align: 64, offset: 128)
!777 = !DIGlobalVariable(name: "iobase_tell_doc", scope: !0, file: !1, line: 99, type: !778, isLocal: true, isDefinition: true, variable: [32 x i8]* @iobase_tell_doc)
!778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 256, align: 8, elements: !779)
!779 = !{!780}
!780 = !DISubrange(count: 32)
!781 = !DIGlobalVariable(name: "iobase_truncate_doc", scope: !0, file: !1, line: 110, type: !782, isLocal: true, isDefinition: true, variable: [150 x i8]* @iobase_truncate_doc)
!782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 1200, align: 8, elements: !783)
!783 = !{!784}
!784 = !DISubrange(count: 150)
!785 = !DIGlobalVariable(name: "PyId___IOBase_closed", scope: !0, file: !1, line: 62, type: !770, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyId___IOBase_closed)
!786 = !DIGlobalVariable(name: "iobase_flush_doc", scope: !0, file: !1, line: 124, type: !787, isLocal: true, isDefinition: true, variable: [102 x i8]* @iobase_flush_doc)
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 816, align: 8, elements: !788)
!788 = !{!789}
!789 = !DISubrange(count: 102)
!790 = !DIGlobalVariable(name: "iobase_close_doc", scope: !0, file: !1, line: 140, type: !791, isLocal: true, isDefinition: true, variable: [90 x i8]* @iobase_close_doc)
!791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 720, align: 8, elements: !792)
!792 = !{!793}
!793 = !DISubrange(count: 90)
!794 = !DIGlobalVariable(name: "iobase_seekable_doc", scope: !0, file: !1, line: 307, type: !795, isLocal: true, isDefinition: true, variable: [162 x i8]* @iobase_seekable_doc)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 1296, align: 8, elements: !796)
!796 = !{!797}
!797 = !DISubrange(count: 162)
!798 = !DIGlobalVariable(name: "iobase_readable_doc", scope: !0, file: !1, line: 336, type: !799, isLocal: true, isDefinition: true, variable: [97 x i8]* @iobase_readable_doc)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 776, align: 8, elements: !800)
!800 = !{!801}
!801 = !DISubrange(count: 97)
!802 = !DIGlobalVariable(name: "iobase_writable_doc", scope: !0, file: !1, line: 365, type: !803, isLocal: true, isDefinition: true, variable: [98 x i8]* @iobase_writable_doc)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 784, align: 8, elements: !804)
!804 = !{!805}
!805 = !DISubrange(count: 98)
!806 = !DIGlobalVariable(name: "iobase_fileno_doc", scope: !0, file: !1, line: 416, type: !807, isLocal: true, isDefinition: true, variable: [122 x i8]* @iobase_fileno_doc)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 976, align: 8, elements: !808)
!808 = !{!809}
!809 = !DISubrange(count: 122)
!810 = !DIGlobalVariable(name: "iobase_isatty_doc", scope: !0, file: !1, line: 427, type: !791, isLocal: true, isDefinition: true, variable: [90 x i8]* @iobase_isatty_doc)
!811 = !DIGlobalVariable(name: "PyId_peek", scope: !575, file: !1, line: 460, type: !770, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @iobase_readline.PyId_peek)
!812 = !DIGlobalVariable(name: "PyId_read", scope: !0, file: !1, line: 66, type: !770, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyId_read)
!813 = !DIGlobalVariable(name: "iobase_readline_doc", scope: !0, file: !1, line: 442, type: !814, isLocal: true, isDefinition: true, variable: [257 x i8]* @iobase_readline_doc)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2056, align: 8, elements: !815)
!815 = !{!816}
!816 = !DISubrange(count: 257)
!817 = !DIGlobalVariable(name: "PyId_extend", scope: !618, file: !1, line: 613, type: !770, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @iobase_readlines.PyId_extend)
!818 = !DIGlobalVariable(name: "iobase_readlines_doc", scope: !0, file: !1, line: 588, type: !819, isLocal: true, isDefinition: true, variable: [201 x i8]* @iobase_readlines_doc)
!819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 1608, align: 8, elements: !820)
!820 = !{!821}
!821 = !DISubrange(count: 201)
!822 = !DIGlobalVariable(name: "iobase_getset", scope: !0, file: !1, line: 720, type: !823, isLocal: true, isDefinition: true, variable: [3 x %struct.PyGetSetDef]* @iobase_getset)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !824, size: 960, align: 64, elements: !825)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGetSetDef", file: !301, line: 17, baseType: !300)
!825 = !{!826}
!826 = !DISubrange(count: 3)
!827 = !DIGlobalVariable(name: "PyId__finalizing", scope: !679, file: !1, line: 213, type: !770, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @iobase_finalize.PyId__finalizing)
!828 = !DIGlobalVariable(name: "rawiobase_doc", scope: !0, file: !1, line: 783, type: !829, isLocal: true, isDefinition: true, variable: [31 x i8]* @rawiobase_doc)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 248, align: 8, elements: !830)
!830 = !{!831}
!831 = !DISubrange(count: 31)
!832 = !DIGlobalVariable(name: "rawiobase_methods", scope: !0, file: !1, line: 895, type: !833, isLocal: true, isDefinition: true, variable: <{ { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } }>* @rawiobase_methods)
!833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !764, size: 768, align: 64, elements: !825)
!834 = !DIGlobalVariable(name: "PyId_readall", scope: !696, file: !1, line: 809, type: !770, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @rawiobase_read.PyId_readall)
!835 = !DIGlobalVariable(name: "rawiobase_readall_doc", scope: !0, file: !1, line: 839, type: !836, isLocal: true, isDefinition: true, variable: [44 x i8]* @rawiobase_readall_doc)
!836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 352, align: 8, elements: !837)
!837 = !{!838}
!838 = !DISubrange(count: 44)
!839 = !{i32 2, !"Dwarf Version", i32 4}
!840 = !{i32 2, !"Debug Info Version", i32 3}
!841 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!842 = !DIExpression()
!843 = !DILocation(line: 167, column: 34, scope: !384)
!844 = !DILocation(line: 167, column: 50, scope: !384)
!845 = !DILocation(line: 146, column: 25, scope: !443, inlinedAt: !846)
!846 = distinct !DILocation(line: 169, column: 9, scope: !847)
!847 = distinct !DILexicalBlock(scope: !384, file: !1, line: 169, column: 9)
!848 = !DILocation(line: 152, column: 34, scope: !443, inlinedAt: !846)
!849 = !{!850, !850, i64 0}
!850 = !{!"any pointer", !851, i64 0}
!851 = !{!"omnipotent char", !852, i64 0}
!852 = !{!"Simple C/C++ TBAA"}
!853 = !DILocation(line: 152, column: 11, scope: !443, inlinedAt: !846)
!854 = !DILocation(line: 148, column: 15, scope: !443, inlinedAt: !846)
!855 = !DILocation(line: 153, column: 13, scope: !856, inlinedAt: !846)
!856 = distinct !DILexicalBlock(scope: !443, file: !1, line: 153, column: 9)
!857 = !DILocation(line: 153, column: 9, scope: !443, inlinedAt: !846)
!858 = !DILocation(line: 155, column: 14, scope: !443, inlinedAt: !846)
!859 = !DILocation(line: 149, column: 9, scope: !443, inlinedAt: !846)
!860 = !DILocation(line: 156, column: 5, scope: !861, inlinedAt: !846)
!861 = !DILexicalBlockFile(scope: !449, file: !1, discriminator: 1)
!862 = !DILocation(line: 156, column: 5, scope: !863, inlinedAt: !846)
!863 = distinct !DILexicalBlock(scope: !449, file: !1, line: 156, column: 5)
!864 = !{!865, !866, i64 0}
!865 = !{!"_object", !866, i64 0, !850, i64 8}
!866 = !{!"long", !851, i64 0}
!867 = !DILocation(line: 156, column: 5, scope: !449, inlinedAt: !846)
!868 = !DILocation(line: 156, column: 5, scope: !869, inlinedAt: !846)
!869 = !DILexicalBlockFile(scope: !863, file: !1, discriminator: 3)
!870 = !{!865, !850, i64 8}
!871 = !{!872, !850, i64 48}
!872 = !{!"_typeobject", !873, i64 0, !850, i64 24, !866, i64 32, !866, i64 40, !850, i64 48, !850, i64 56, !850, i64 64, !850, i64 72, !850, i64 80, !850, i64 88, !850, i64 96, !850, i64 104, !850, i64 112, !850, i64 120, !850, i64 128, !850, i64 136, !850, i64 144, !850, i64 152, !850, i64 160, !866, i64 168, !850, i64 176, !850, i64 184, !850, i64 192, !850, i64 200, !866, i64 208, !850, i64 216, !850, i64 224, !850, i64 232, !850, i64 240, !850, i64 248, !850, i64 256, !850, i64 264, !850, i64 272, !850, i64 280, !866, i64 288, !850, i64 296, !850, i64 304, !850, i64 312, !850, i64 320, !850, i64 328, !850, i64 336, !850, i64 344, !850, i64 352, !850, i64 360, !850, i64 368, !850, i64 376, !874, i64 384, !850, i64 392}
!873 = !{!"", !865, i64 0, !866, i64 16}
!874 = !{!"int", !851, i64 0}
!875 = !DILocation(line: 169, column: 9, scope: !847)
!876 = !DILocation(line: 169, column: 9, scope: !384)
!877 = !DILocation(line: 170, column: 25, scope: !878)
!878 = distinct !DILexicalBlock(scope: !847, file: !1, line: 169, column: 30)
!879 = !DILocation(line: 170, column: 9, scope: !878)
!880 = !DILocation(line: 171, column: 9, scope: !878)
!881 = !DILocation(line: 173, column: 14, scope: !882)
!882 = distinct !DILexicalBlock(scope: !384, file: !1, line: 173, column: 9)
!883 = !DILocation(line: 173, column: 9, scope: !384)
!884 = !DILocation(line: 176, column: 9, scope: !882)
!885 = !DILocation(line: 177, column: 1, scope: !384)
!886 = !DILocation(line: 252, column: 30, scope: !388)
!887 = !DILocation(line: 258, column: 18, scope: !388)
!888 = !DILocation(line: 258, column: 34, scope: !388)
!889 = !DILocation(line: 259, column: 9, scope: !388)
!890 = !DILocation(line: 260, column: 16, scope: !891)
!891 = distinct !DILexicalBlock(scope: !388, file: !1, line: 259, column: 9)
!892 = !DILocation(line: 260, column: 9, scope: !891)
!893 = !DILocation(line: 262, column: 9, scope: !894)
!894 = distinct !DILexicalBlock(scope: !891, file: !1, line: 261, column: 10)
!895 = !DILocation(line: 263, column: 9, scope: !894)
!896 = !DILocation(line: 265, column: 1, scope: !388)
!897 = !DILocation(line: 320, column: 36, scope: !392)
!898 = !DILocation(line: 320, column: 52, scope: !392)
!899 = !DILocation(line: 322, column: 55, scope: !392)
!900 = !DILocation(line: 322, column: 22, scope: !392)
!901 = !DILocation(line: 322, column: 15, scope: !392)
!902 = !DILocation(line: 323, column: 13, scope: !903)
!903 = distinct !DILexicalBlock(scope: !392, file: !1, line: 323, column: 9)
!904 = !DILocation(line: 323, column: 9, scope: !392)
!905 = !DILocation(line: 325, column: 13, scope: !400)
!906 = !DILocation(line: 325, column: 9, scope: !392)
!907 = !DILocation(line: 326, column: 9, scope: !908)
!908 = !DILexicalBlockFile(scope: !398, file: !1, discriminator: 1)
!909 = !DILocation(line: 326, column: 9, scope: !910)
!910 = !DILexicalBlockFile(scope: !402, file: !1, discriminator: 4)
!911 = !DILocation(line: 326, column: 9, scope: !912)
!912 = distinct !DILexicalBlock(scope: !402, file: !1, line: 326, column: 9)
!913 = !DILocation(line: 326, column: 9, scope: !402)
!914 = !DILocation(line: 326, column: 9, scope: !915)
!915 = !DILexicalBlockFile(scope: !912, file: !1, discriminator: 6)
!916 = !DILocation(line: 72, column: 26, scope: !450, inlinedAt: !917)
!917 = distinct !DILocation(line: 327, column: 9, scope: !399)
!918 = !DILocation(line: 72, column: 18, scope: !450, inlinedAt: !917)
!919 = !DILocation(line: 73, column: 15, scope: !920, inlinedAt: !917)
!920 = distinct !DILexicalBlock(scope: !450, file: !1, line: 73, column: 9)
!921 = !DILocation(line: 73, column: 9, scope: !450, inlinedAt: !917)
!922 = !DILocation(line: 74, column: 32, scope: !920, inlinedAt: !917)
!923 = !{!924, !850, i64 16}
!924 = !{!"", !874, i64 0, !850, i64 8, !850, i64 16}
!925 = !DILocation(line: 74, column: 9, scope: !920, inlinedAt: !917)
!926 = !DILocation(line: 330, column: 14, scope: !408)
!927 = !DILocation(line: 330, column: 9, scope: !392)
!928 = !DILocation(line: 331, column: 9, scope: !929)
!929 = !DILexicalBlockFile(scope: !406, file: !1, discriminator: 1)
!930 = !DILocation(line: 331, column: 9, scope: !931)
!931 = distinct !DILexicalBlock(scope: !406, file: !1, line: 331, column: 9)
!932 = !DILocation(line: 331, column: 9, scope: !406)
!933 = !DILocation(line: 331, column: 9, scope: !934)
!934 = !DILexicalBlockFile(scope: !931, file: !1, discriminator: 3)
!935 = !DILocation(line: 334, column: 1, scope: !392)
!936 = !DILocation(line: 349, column: 36, scope: !409)
!937 = !DILocation(line: 349, column: 52, scope: !409)
!938 = !DILocation(line: 351, column: 55, scope: !409)
!939 = !DILocation(line: 351, column: 22, scope: !409)
!940 = !DILocation(line: 351, column: 15, scope: !409)
!941 = !DILocation(line: 352, column: 13, scope: !942)
!942 = distinct !DILexicalBlock(scope: !409, file: !1, line: 352, column: 9)
!943 = !DILocation(line: 352, column: 9, scope: !409)
!944 = !DILocation(line: 354, column: 13, scope: !417)
!945 = !DILocation(line: 354, column: 9, scope: !409)
!946 = !DILocation(line: 355, column: 9, scope: !947)
!947 = !DILexicalBlockFile(scope: !415, file: !1, discriminator: 1)
!948 = !DILocation(line: 355, column: 9, scope: !949)
!949 = !DILexicalBlockFile(scope: !419, file: !1, discriminator: 4)
!950 = !DILocation(line: 355, column: 9, scope: !951)
!951 = distinct !DILexicalBlock(scope: !419, file: !1, line: 355, column: 9)
!952 = !DILocation(line: 355, column: 9, scope: !419)
!953 = !DILocation(line: 355, column: 9, scope: !954)
!954 = !DILexicalBlockFile(scope: !951, file: !1, discriminator: 6)
!955 = !DILocation(line: 72, column: 26, scope: !450, inlinedAt: !956)
!956 = distinct !DILocation(line: 356, column: 9, scope: !416)
!957 = !DILocation(line: 72, column: 18, scope: !450, inlinedAt: !956)
!958 = !DILocation(line: 73, column: 15, scope: !920, inlinedAt: !956)
!959 = !DILocation(line: 73, column: 9, scope: !450, inlinedAt: !956)
!960 = !DILocation(line: 74, column: 32, scope: !920, inlinedAt: !956)
!961 = !DILocation(line: 74, column: 9, scope: !920, inlinedAt: !956)
!962 = !DILocation(line: 359, column: 14, scope: !425)
!963 = !DILocation(line: 359, column: 9, scope: !409)
!964 = !DILocation(line: 360, column: 9, scope: !965)
!965 = !DILexicalBlockFile(scope: !423, file: !1, discriminator: 1)
!966 = !DILocation(line: 360, column: 9, scope: !967)
!967 = distinct !DILexicalBlock(scope: !423, file: !1, line: 360, column: 9)
!968 = !DILocation(line: 360, column: 9, scope: !423)
!969 = !DILocation(line: 360, column: 9, scope: !970)
!970 = !DILexicalBlockFile(scope: !967, file: !1, discriminator: 3)
!971 = !DILocation(line: 363, column: 1, scope: !409)
!972 = !DILocation(line: 378, column: 36, scope: !426)
!973 = !DILocation(line: 378, column: 52, scope: !426)
!974 = !DILocation(line: 380, column: 55, scope: !426)
!975 = !DILocation(line: 380, column: 22, scope: !426)
!976 = !DILocation(line: 380, column: 15, scope: !426)
!977 = !DILocation(line: 381, column: 13, scope: !978)
!978 = distinct !DILexicalBlock(scope: !426, file: !1, line: 381, column: 9)
!979 = !DILocation(line: 381, column: 9, scope: !426)
!980 = !DILocation(line: 383, column: 13, scope: !434)
!981 = !DILocation(line: 383, column: 9, scope: !426)
!982 = !DILocation(line: 384, column: 9, scope: !983)
!983 = !DILexicalBlockFile(scope: !432, file: !1, discriminator: 1)
!984 = !DILocation(line: 384, column: 9, scope: !985)
!985 = !DILexicalBlockFile(scope: !436, file: !1, discriminator: 4)
!986 = !DILocation(line: 384, column: 9, scope: !987)
!987 = distinct !DILexicalBlock(scope: !436, file: !1, line: 384, column: 9)
!988 = !DILocation(line: 384, column: 9, scope: !436)
!989 = !DILocation(line: 384, column: 9, scope: !990)
!990 = !DILexicalBlockFile(scope: !987, file: !1, discriminator: 6)
!991 = !DILocation(line: 72, column: 26, scope: !450, inlinedAt: !992)
!992 = distinct !DILocation(line: 385, column: 9, scope: !433)
!993 = !DILocation(line: 72, column: 18, scope: !450, inlinedAt: !992)
!994 = !DILocation(line: 73, column: 15, scope: !920, inlinedAt: !992)
!995 = !DILocation(line: 73, column: 9, scope: !450, inlinedAt: !992)
!996 = !DILocation(line: 74, column: 32, scope: !920, inlinedAt: !992)
!997 = !DILocation(line: 74, column: 9, scope: !920, inlinedAt: !992)
!998 = !DILocation(line: 388, column: 14, scope: !442)
!999 = !DILocation(line: 388, column: 9, scope: !426)
!1000 = !DILocation(line: 389, column: 9, scope: !1001)
!1001 = !DILexicalBlockFile(scope: !440, file: !1, discriminator: 1)
!1002 = !DILocation(line: 389, column: 9, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !440, file: !1, line: 389, column: 9)
!1004 = !DILocation(line: 389, column: 9, scope: !440)
!1005 = !DILocation(line: 389, column: 9, scope: !1006)
!1006 = !DILexicalBlockFile(scope: !1003, file: !1, discriminator: 3)
!1007 = !DILocation(line: 392, column: 1, scope: !426)
!1008 = !DILocation(line: 284, column: 24, scope: !464)
!1009 = !DILocation(line: 291, column: 28, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !464, file: !1, line: 291, column: 9)
!1011 = !DILocation(line: 252, column: 30, scope: !388, inlinedAt: !1012)
!1012 = distinct !DILocation(line: 291, column: 9, scope: !1010)
!1013 = !DILocation(line: 258, column: 18, scope: !388, inlinedAt: !1012)
!1014 = !DILocation(line: 258, column: 34, scope: !388, inlinedAt: !1012)
!1015 = !DILocation(line: 259, column: 9, scope: !388, inlinedAt: !1012)
!1016 = !DILocation(line: 262, column: 9, scope: !894, inlinedAt: !1012)
!1017 = !DILocation(line: 291, column: 9, scope: !464)
!1018 = !DILocation(line: 260, column: 16, scope: !891, inlinedAt: !1012)
!1019 = !DILocation(line: 291, column: 47, scope: !1010)
!1020 = !DILocation(line: 294, column: 13, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !1, line: 294, column: 13)
!1022 = distinct !DILexicalBlock(scope: !1010, file: !1, line: 291, column: 52)
!1023 = !{!872, !866, i64 168}
!1024 = !DILocation(line: 294, column: 13, scope: !1022)
!1025 = !DILocation(line: 295, column: 13, scope: !1021)
!1026 = !DILocation(line: 298, column: 5, scope: !1027)
!1027 = !DILexicalBlockFile(scope: !477, file: !1, discriminator: 1)
!1028 = !DILocation(line: 298, column: 5, scope: !1029)
!1029 = !DILexicalBlockFile(scope: !1030, file: !1, discriminator: 2)
!1030 = distinct !DILexicalBlock(scope: !477, file: !1, line: 298, column: 5)
!1031 = !{!1032, !866, i64 16}
!1032 = !{!"", !850, i64 0, !850, i64 8, !866, i64 16}
!1033 = !DILocation(line: 298, column: 5, scope: !1034)
!1034 = !DILexicalBlockFile(scope: !477, file: !1, discriminator: 4)
!1035 = !{!1032, !850, i64 0}
!1036 = !{!1032, !850, i64 8}
!1037 = !DILocation(line: 299, column: 15, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !464, file: !1, line: 299, column: 9)
!1039 = !{!1040, !850, i64 24}
!1040 = !{!"", !865, i64 0, !850, i64 16, !850, i64 24}
!1041 = !DILocation(line: 299, column: 27, scope: !1038)
!1042 = !DILocation(line: 299, column: 9, scope: !464)
!1043 = !DILocation(line: 300, column: 9, scope: !1038)
!1044 = !DILocation(line: 301, column: 5, scope: !1045)
!1045 = !DILexicalBlockFile(scope: !479, file: !1, discriminator: 1)
!1046 = !{!1040, !850, i64 16}
!1047 = !DILocation(line: 301, column: 5, scope: !483)
!1048 = !DILocation(line: 301, column: 5, scope: !479)
!1049 = !DILocation(line: 301, column: 5, scope: !1050)
!1050 = !DILexicalBlockFile(scope: !482, file: !1, discriminator: 2)
!1051 = !DILocation(line: 301, column: 5, scope: !1052)
!1052 = !DILexicalBlockFile(scope: !481, file: !1, discriminator: 4)
!1053 = !DILocation(line: 301, column: 5, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !481, file: !1, line: 301, column: 5)
!1055 = !DILocation(line: 301, column: 5, scope: !481)
!1056 = !DILocation(line: 301, column: 5, scope: !1057)
!1057 = !DILexicalBlockFile(scope: !1054, file: !1, discriminator: 6)
!1058 = !DILocation(line: 302, column: 5, scope: !464)
!1059 = !DILocation(line: 302, column: 20, scope: !464)
!1060 = !{!872, !850, i64 320}
!1061 = !DILocation(line: 302, column: 28, scope: !464)
!1062 = !DILocation(line: 303, column: 1, scope: !464)
!1063 = !DILocation(line: 303, column: 1, scope: !1064)
!1064 = !DILexicalBlockFile(scope: !464, file: !1, discriminator: 1)
!1065 = !DILocation(line: 268, column: 25, scope: !484)
!1066 = !DILocation(line: 268, column: 41, scope: !484)
!1067 = !DILocation(line: 268, column: 54, scope: !484)
!1068 = !DILocation(line: 270, column: 5, scope: !1069)
!1069 = !DILexicalBlockFile(scope: !493, file: !1, discriminator: 1)
!1070 = !DILocation(line: 270, column: 5, scope: !494)
!1071 = !DILocation(line: 270, column: 5, scope: !1072)
!1072 = !DILexicalBlockFile(scope: !492, file: !1, discriminator: 2)
!1073 = !DILocation(line: 270, column: 5, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !492, file: !1, line: 270, column: 5)
!1075 = !DILocation(line: 271, column: 5, scope: !484)
!1076 = !DILocation(line: 272, column: 1, scope: !484)
!1077 = !DILocation(line: 275, column: 22, scope: !495)
!1078 = !DILocation(line: 277, column: 5, scope: !1079)
!1079 = !DILexicalBlockFile(scope: !501, file: !1, discriminator: 1)
!1080 = !DILocation(line: 277, column: 5, scope: !505)
!1081 = !DILocation(line: 277, column: 5, scope: !501)
!1082 = !DILocation(line: 277, column: 5, scope: !1083)
!1083 = !DILexicalBlockFile(scope: !504, file: !1, discriminator: 2)
!1084 = !DILocation(line: 277, column: 5, scope: !1085)
!1085 = !DILexicalBlockFile(scope: !503, file: !1, discriminator: 4)
!1086 = !DILocation(line: 277, column: 5, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !503, file: !1, line: 277, column: 5)
!1088 = !DILocation(line: 277, column: 5, scope: !503)
!1089 = !DILocation(line: 277, column: 5, scope: !1090)
!1090 = !DILexicalBlockFile(scope: !1087, file: !1, discriminator: 6)
!1091 = !DILocation(line: 278, column: 5, scope: !495)
!1092 = !DILocation(line: 563, column: 23, scope: !506)
!1093 = !DILocation(line: 167, column: 34, scope: !384, inlinedAt: !1094)
!1094 = distinct !DILocation(line: 565, column: 9, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !506, file: !1, line: 565, column: 9)
!1096 = !DILocation(line: 167, column: 50, scope: !384, inlinedAt: !1094)
!1097 = !DILocation(line: 146, column: 25, scope: !443, inlinedAt: !1098)
!1098 = distinct !DILocation(line: 169, column: 9, scope: !847, inlinedAt: !1094)
!1099 = !DILocation(line: 152, column: 34, scope: !443, inlinedAt: !1098)
!1100 = !DILocation(line: 152, column: 11, scope: !443, inlinedAt: !1098)
!1101 = !DILocation(line: 148, column: 15, scope: !443, inlinedAt: !1098)
!1102 = !DILocation(line: 153, column: 13, scope: !856, inlinedAt: !1098)
!1103 = !DILocation(line: 153, column: 9, scope: !443, inlinedAt: !1098)
!1104 = !DILocation(line: 155, column: 14, scope: !443, inlinedAt: !1098)
!1105 = !DILocation(line: 149, column: 9, scope: !443, inlinedAt: !1098)
!1106 = !DILocation(line: 156, column: 5, scope: !861, inlinedAt: !1098)
!1107 = !DILocation(line: 156, column: 5, scope: !863, inlinedAt: !1098)
!1108 = !DILocation(line: 156, column: 5, scope: !449, inlinedAt: !1098)
!1109 = !DILocation(line: 156, column: 5, scope: !869, inlinedAt: !1098)
!1110 = !DILocation(line: 169, column: 9, scope: !847, inlinedAt: !1094)
!1111 = !DILocation(line: 169, column: 9, scope: !384, inlinedAt: !1094)
!1112 = !DILocation(line: 170, column: 25, scope: !878, inlinedAt: !1094)
!1113 = !DILocation(line: 170, column: 9, scope: !878, inlinedAt: !1094)
!1114 = !DILocation(line: 565, column: 9, scope: !506)
!1115 = !DILocation(line: 568, column: 5, scope: !506)
!1116 = !DILocation(line: 569, column: 5, scope: !506)
!1117 = !DILocation(line: 570, column: 1, scope: !506)
!1118 = !DILocation(line: 573, column: 27, scope: !509)
!1119 = !DILocation(line: 575, column: 55, scope: !509)
!1120 = !DILocation(line: 575, column: 22, scope: !509)
!1121 = !DILocation(line: 575, column: 15, scope: !509)
!1122 = !DILocation(line: 577, column: 14, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !509, file: !1, line: 577, column: 9)
!1124 = !DILocation(line: 577, column: 9, scope: !509)
!1125 = !DILocation(line: 580, column: 9, scope: !516)
!1126 = !DILocation(line: 580, column: 29, scope: !516)
!1127 = !DILocation(line: 580, column: 9, scope: !509)
!1128 = !DILocation(line: 581, column: 9, scope: !1129)
!1129 = !DILexicalBlockFile(scope: !514, file: !1, discriminator: 1)
!1130 = !DILocation(line: 581, column: 9, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !514, file: !1, line: 581, column: 9)
!1132 = !DILocation(line: 581, column: 9, scope: !514)
!1133 = !DILocation(line: 581, column: 9, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !1131, file: !1, discriminator: 3)
!1135 = !DILocation(line: 586, column: 1, scope: !509)
!1136 = !DILocation(line: 208, column: 27, scope: !679)
!1137 = !DILocation(line: 211, column: 5, scope: !679)
!1138 = !DILocation(line: 211, column: 15, scope: !679)
!1139 = !DILocation(line: 211, column: 28, scope: !679)
!1140 = !DILocation(line: 211, column: 42, scope: !679)
!1141 = !DILocation(line: 216, column: 5, scope: !679)
!1142 = !DILocation(line: 220, column: 34, scope: !679)
!1143 = !DILocation(line: 220, column: 11, scope: !679)
!1144 = !DILocation(line: 210, column: 15, scope: !679)
!1145 = !DILocation(line: 221, column: 13, scope: !690)
!1146 = !DILocation(line: 221, column: 9, scope: !679)
!1147 = !DILocation(line: 222, column: 9, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !690, file: !1, line: 221, column: 22)
!1149 = !DILocation(line: 212, column: 9, scope: !679)
!1150 = !DILocation(line: 224, column: 5, scope: !1148)
!1151 = !DILocation(line: 226, column: 18, scope: !689)
!1152 = !DILocation(line: 227, column: 9, scope: !1153)
!1153 = !DILexicalBlockFile(scope: !688, file: !1, discriminator: 1)
!1154 = !DILocation(line: 227, column: 9, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !688, file: !1, line: 227, column: 9)
!1156 = !DILocation(line: 227, column: 9, scope: !688)
!1157 = !DILocation(line: 227, column: 9, scope: !1158)
!1158 = !DILexicalBlockFile(scope: !1155, file: !1, discriminator: 3)
!1159 = !DILocation(line: 228, column: 13, scope: !689)
!1160 = !DILocation(line: 229, column: 13, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !689, file: !1, line: 228, column: 13)
!1162 = !DILocation(line: 234, column: 13, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !694, file: !1, line: 234, column: 13)
!1164 = !DILocation(line: 234, column: 13, scope: !694)
!1165 = !DILocation(line: 235, column: 13, scope: !1163)
!1166 = !DILocation(line: 236, column: 61, scope: !694)
!1167 = !DILocation(line: 236, column: 15, scope: !694)
!1168 = !DILocation(line: 241, column: 17, scope: !693)
!1169 = !DILocation(line: 241, column: 13, scope: !694)
!1170 = !DILocation(line: 242, column: 13, scope: !693)
!1171 = !DILocation(line: 244, column: 13, scope: !1172)
!1172 = !DILexicalBlockFile(scope: !692, file: !1, discriminator: 1)
!1173 = !DILocation(line: 244, column: 13, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !692, file: !1, line: 244, column: 13)
!1175 = !DILocation(line: 244, column: 13, scope: !692)
!1176 = !DILocation(line: 244, column: 13, scope: !1177)
!1177 = !DILexicalBlockFile(scope: !1174, file: !1, discriminator: 3)
!1178 = !DILocation(line: 248, column: 19, scope: !679)
!1179 = !DILocation(line: 248, column: 31, scope: !679)
!1180 = !DILocation(line: 248, column: 44, scope: !679)
!1181 = !DILocation(line: 248, column: 5, scope: !679)
!1182 = !DILocation(line: 249, column: 1, scope: !679)
!1183 = !DILocation(line: 94, column: 23, scope: !517)
!1184 = !DILocation(line: 94, column: 39, scope: !517)
!1185 = !DILocation(line: 72, column: 26, scope: !450, inlinedAt: !1186)
!1186 = distinct !DILocation(line: 96, column: 12, scope: !517)
!1187 = !DILocation(line: 72, column: 18, scope: !450, inlinedAt: !1186)
!1188 = !DILocation(line: 73, column: 15, scope: !920, inlinedAt: !1186)
!1189 = !DILocation(line: 73, column: 9, scope: !450, inlinedAt: !1186)
!1190 = !DILocation(line: 74, column: 32, scope: !920, inlinedAt: !1186)
!1191 = !DILocation(line: 74, column: 9, scope: !920, inlinedAt: !1186)
!1192 = !DILocation(line: 96, column: 5, scope: !517)
!1193 = !DILocation(line: 103, column: 23, scope: !521)
!1194 = !DILocation(line: 103, column: 39, scope: !521)
!1195 = !DILocation(line: 107, column: 12, scope: !521)
!1196 = !DILocation(line: 107, column: 5, scope: !521)
!1197 = !DILocation(line: 117, column: 27, scope: !525)
!1198 = !DILocation(line: 117, column: 43, scope: !525)
!1199 = !DILocation(line: 72, column: 26, scope: !450, inlinedAt: !1200)
!1200 = distinct !DILocation(line: 119, column: 12, scope: !525)
!1201 = !DILocation(line: 72, column: 18, scope: !450, inlinedAt: !1200)
!1202 = !DILocation(line: 73, column: 15, scope: !920, inlinedAt: !1200)
!1203 = !DILocation(line: 73, column: 9, scope: !450, inlinedAt: !1200)
!1204 = !DILocation(line: 74, column: 32, scope: !920, inlinedAt: !1200)
!1205 = !DILocation(line: 74, column: 9, scope: !920, inlinedAt: !1200)
!1206 = !DILocation(line: 119, column: 5, scope: !525)
!1207 = !DILocation(line: 130, column: 24, scope: !529)
!1208 = !DILocation(line: 130, column: 40, scope: !529)
!1209 = !DILocation(line: 133, column: 9, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !529, file: !1, line: 133, column: 9)
!1211 = !DILocation(line: 133, column: 9, scope: !529)
!1212 = !DILocation(line: 134, column: 25, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1210, file: !1, line: 133, column: 26)
!1214 = !DILocation(line: 134, column: 9, scope: !1213)
!1215 = !DILocation(line: 135, column: 9, scope: !1213)
!1216 = !DILocation(line: 137, column: 5, scope: !529)
!1217 = !DILocation(line: 138, column: 1, scope: !529)
!1218 = !DILocation(line: 184, column: 24, scope: !533)
!1219 = !DILocation(line: 184, column: 40, scope: !533)
!1220 = !DILocation(line: 188, column: 9, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !533, file: !1, line: 188, column: 9)
!1222 = !DILocation(line: 188, column: 9, scope: !533)
!1223 = !DILocation(line: 189, column: 9, scope: !1221)
!1224 = !DILocation(line: 191, column: 44, scope: !533)
!1225 = !DILocation(line: 191, column: 11, scope: !533)
!1226 = !DILocation(line: 186, column: 15, scope: !533)
!1227 = !DILocation(line: 193, column: 9, scope: !541)
!1228 = !DILocation(line: 193, column: 67, scope: !541)
!1229 = !DILocation(line: 194, column: 9, scope: !544)
!1230 = !DILocation(line: 193, column: 9, scope: !533)
!1231 = !DILocation(line: 194, column: 9, scope: !1232)
!1232 = !DILexicalBlockFile(scope: !539, file: !1, discriminator: 1)
!1233 = !DILocation(line: 194, column: 9, scope: !539)
!1234 = !DILocation(line: 194, column: 9, scope: !1235)
!1235 = !DILexicalBlockFile(scope: !543, file: !1, discriminator: 4)
!1236 = !DILocation(line: 194, column: 9, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !543, file: !1, line: 194, column: 9)
!1238 = !DILocation(line: 194, column: 9, scope: !543)
!1239 = !DILocation(line: 194, column: 9, scope: !1240)
!1240 = !DILexicalBlockFile(scope: !1237, file: !1, discriminator: 6)
!1241 = !DILocation(line: 198, column: 9, scope: !533)
!1242 = !DILocation(line: 201, column: 5, scope: !1243)
!1243 = !DILexicalBlockFile(scope: !546, file: !1, discriminator: 1)
!1244 = !DILocation(line: 201, column: 5, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !546, file: !1, line: 201, column: 5)
!1246 = !DILocation(line: 201, column: 5, scope: !546)
!1247 = !DILocation(line: 201, column: 5, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !1245, file: !1, discriminator: 3)
!1249 = !DILocation(line: 202, column: 5, scope: !533)
!1250 = !DILocation(line: 203, column: 1, scope: !533)
!1251 = !DILocation(line: 314, column: 27, scope: !547)
!1252 = !DILocation(line: 314, column: 43, scope: !547)
!1253 = !DILocation(line: 316, column: 5, scope: !547)
!1254 = !DILocation(line: 342, column: 27, scope: !551)
!1255 = !DILocation(line: 342, column: 43, scope: !551)
!1256 = !DILocation(line: 344, column: 5, scope: !551)
!1257 = !DILocation(line: 371, column: 27, scope: !555)
!1258 = !DILocation(line: 371, column: 43, scope: !555)
!1259 = !DILocation(line: 373, column: 5, scope: !555)
!1260 = !DILocation(line: 422, column: 25, scope: !559)
!1261 = !DILocation(line: 422, column: 41, scope: !559)
!1262 = !DILocation(line: 72, column: 26, scope: !450, inlinedAt: !1263)
!1263 = distinct !DILocation(line: 424, column: 12, scope: !559)
!1264 = !DILocation(line: 72, column: 18, scope: !450, inlinedAt: !1263)
!1265 = !DILocation(line: 73, column: 15, scope: !920, inlinedAt: !1263)
!1266 = !DILocation(line: 73, column: 9, scope: !450, inlinedAt: !1263)
!1267 = !DILocation(line: 74, column: 32, scope: !920, inlinedAt: !1263)
!1268 = !DILocation(line: 74, column: 9, scope: !920, inlinedAt: !1263)
!1269 = !DILocation(line: 424, column: 5, scope: !559)
!1270 = !DILocation(line: 433, column: 25, scope: !563)
!1271 = !DILocation(line: 433, column: 41, scope: !563)
!1272 = !DILocation(line: 167, column: 34, scope: !384, inlinedAt: !1273)
!1273 = distinct !DILocation(line: 435, column: 9, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !563, file: !1, line: 435, column: 9)
!1275 = !DILocation(line: 167, column: 50, scope: !384, inlinedAt: !1273)
!1276 = !DILocation(line: 146, column: 25, scope: !443, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 169, column: 9, scope: !847, inlinedAt: !1273)
!1278 = !DILocation(line: 152, column: 34, scope: !443, inlinedAt: !1277)
!1279 = !DILocation(line: 152, column: 11, scope: !443, inlinedAt: !1277)
!1280 = !DILocation(line: 148, column: 15, scope: !443, inlinedAt: !1277)
!1281 = !DILocation(line: 153, column: 13, scope: !856, inlinedAt: !1277)
!1282 = !DILocation(line: 153, column: 9, scope: !443, inlinedAt: !1277)
!1283 = !DILocation(line: 155, column: 14, scope: !443, inlinedAt: !1277)
!1284 = !DILocation(line: 149, column: 9, scope: !443, inlinedAt: !1277)
!1285 = !DILocation(line: 156, column: 5, scope: !861, inlinedAt: !1277)
!1286 = !DILocation(line: 156, column: 5, scope: !863, inlinedAt: !1277)
!1287 = !DILocation(line: 156, column: 5, scope: !449, inlinedAt: !1277)
!1288 = !DILocation(line: 156, column: 5, scope: !869, inlinedAt: !1277)
!1289 = !DILocation(line: 169, column: 9, scope: !847, inlinedAt: !1273)
!1290 = !DILocation(line: 169, column: 9, scope: !384, inlinedAt: !1273)
!1291 = !DILocation(line: 170, column: 25, scope: !878, inlinedAt: !1273)
!1292 = !DILocation(line: 170, column: 9, scope: !878, inlinedAt: !1273)
!1293 = !DILocation(line: 435, column: 9, scope: !563)
!1294 = !DILocation(line: 437, column: 5, scope: !563)
!1295 = !DILocation(line: 438, column: 1, scope: !563)
!1296 = !DILocation(line: 397, column: 24, scope: !567)
!1297 = !DILocation(line: 397, column: 40, scope: !567)
!1298 = !DILocation(line: 167, column: 34, scope: !384, inlinedAt: !1299)
!1299 = distinct !DILocation(line: 399, column: 9, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !567, file: !1, line: 399, column: 9)
!1301 = !DILocation(line: 167, column: 50, scope: !384, inlinedAt: !1299)
!1302 = !DILocation(line: 146, column: 25, scope: !443, inlinedAt: !1303)
!1303 = distinct !DILocation(line: 169, column: 9, scope: !847, inlinedAt: !1299)
!1304 = !DILocation(line: 152, column: 34, scope: !443, inlinedAt: !1303)
!1305 = !DILocation(line: 152, column: 11, scope: !443, inlinedAt: !1303)
!1306 = !DILocation(line: 148, column: 15, scope: !443, inlinedAt: !1303)
!1307 = !DILocation(line: 153, column: 13, scope: !856, inlinedAt: !1303)
!1308 = !DILocation(line: 153, column: 9, scope: !443, inlinedAt: !1303)
!1309 = !DILocation(line: 155, column: 14, scope: !443, inlinedAt: !1303)
!1310 = !DILocation(line: 149, column: 9, scope: !443, inlinedAt: !1303)
!1311 = !DILocation(line: 156, column: 5, scope: !861, inlinedAt: !1303)
!1312 = !DILocation(line: 156, column: 5, scope: !863, inlinedAt: !1303)
!1313 = !DILocation(line: 156, column: 5, scope: !449, inlinedAt: !1303)
!1314 = !DILocation(line: 156, column: 5, scope: !869, inlinedAt: !1303)
!1315 = !DILocation(line: 169, column: 9, scope: !847, inlinedAt: !1299)
!1316 = !DILocation(line: 169, column: 9, scope: !384, inlinedAt: !1299)
!1317 = !DILocation(line: 170, column: 25, scope: !878, inlinedAt: !1299)
!1318 = !DILocation(line: 170, column: 9, scope: !878, inlinedAt: !1299)
!1319 = !DILocation(line: 399, column: 9, scope: !567)
!1320 = !DILocation(line: 402, column: 5, scope: !567)
!1321 = !DILocation(line: 403, column: 5, scope: !567)
!1322 = !DILocation(line: 404, column: 1, scope: !567)
!1323 = !DILocation(line: 407, column: 23, scope: !571)
!1324 = !DILocation(line: 407, column: 39, scope: !571)
!1325 = !DILocation(line: 409, column: 45, scope: !571)
!1326 = !DILocation(line: 409, column: 12, scope: !571)
!1327 = !DILocation(line: 409, column: 5, scope: !571)
!1328 = !DILocation(line: 452, column: 27, scope: !575)
!1329 = !DILocation(line: 452, column: 43, scope: !575)
!1330 = !DILocation(line: 456, column: 5, scope: !575)
!1331 = !DILocation(line: 456, column: 16, scope: !575)
!1332 = !{!866, !866, i64 0}
!1333 = !DILocation(line: 457, column: 9, scope: !575)
!1334 = !DILocation(line: 459, column: 16, scope: !575)
!1335 = !DILocation(line: 462, column: 10, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !575, file: !1, line: 462, column: 9)
!1337 = !DILocation(line: 462, column: 9, scope: !575)
!1338 = !DILocation(line: 466, column: 9, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !575, file: !1, line: 466, column: 9)
!1340 = !DILocation(line: 469, column: 14, scope: !575)
!1341 = !DILocation(line: 458, column: 15, scope: !575)
!1342 = !DILocation(line: 470, column: 16, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !575, file: !1, line: 470, column: 9)
!1344 = !DILocation(line: 470, column: 9, scope: !575)
!1345 = !DILocation(line: 539, column: 20, scope: !585)
!1346 = !DILocation(line: 549, column: 13, scope: !1347)
!1347 = !DILexicalBlockFile(scope: !1348, file: !1, discriminator: 1)
!1348 = distinct !DILexicalBlock(scope: !585, file: !1, line: 549, column: 13)
!1349 = !DILocation(line: 473, column: 12, scope: !1350)
!1350 = !DILexicalBlockFile(scope: !1351, file: !1, discriminator: 5)
!1351 = !DILexicalBlockFile(scope: !575, file: !1, discriminator: 1)
!1352 = !DILocation(line: 473, column: 18, scope: !575)
!1353 = !DILocation(line: 473, column: 22, scope: !575)
!1354 = !DILocation(line: 473, column: 25, scope: !1355)
!1355 = !DILexicalBlockFile(scope: !575, file: !1, discriminator: 3)
!1356 = !{!873, !866, i64 16}
!1357 = !DILocation(line: 473, column: 41, scope: !575)
!1358 = !DILocation(line: 473, column: 5, scope: !1359)
!1359 = !DILexicalBlockFile(scope: !1360, file: !1, discriminator: 4)
!1360 = !DILexicalBlockFile(scope: !575, file: !1, discriminator: 2)
!1361 = !DILocation(line: 474, column: 20, scope: !585)
!1362 = !DILocation(line: 477, column: 13, scope: !585)
!1363 = !DILocation(line: 478, column: 35, scope: !588)
!1364 = !DILocation(line: 478, column: 23, scope: !588)
!1365 = !DILocation(line: 479, column: 27, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !588, file: !1, line: 479, column: 17)
!1367 = !DILocation(line: 479, column: 17, scope: !588)
!1368 = !DILocation(line: 482, column: 21, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !1, line: 482, column: 21)
!1370 = distinct !DILexicalBlock(scope: !1366, file: !1, line: 479, column: 36)
!1371 = !DILocation(line: 485, column: 17, scope: !1370)
!1372 = !DILocation(line: 487, column: 18, scope: !593)
!1373 = !DILocation(line: 515, column: 13, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !1375, file: !1, discriminator: 3)
!1375 = distinct !DILexicalBlock(scope: !599, file: !1, line: 515, column: 13)
!1376 = !DILocation(line: 487, column: 17, scope: !588)
!1377 = !DILocation(line: 488, column: 30, scope: !592)
!1378 = !DILocation(line: 490, column: 66, scope: !592)
!1379 = !{!872, !850, i64 24}
!1380 = !DILocation(line: 488, column: 17, scope: !592)
!1381 = !DILocation(line: 491, column: 17, scope: !1382)
!1382 = !DILexicalBlockFile(scope: !591, file: !1, discriminator: 1)
!1383 = !DILocation(line: 491, column: 17, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !591, file: !1, line: 491, column: 17)
!1385 = !DILocation(line: 491, column: 17, scope: !591)
!1386 = !DILocation(line: 491, column: 17, scope: !1387)
!1387 = !DILexicalBlockFile(scope: !1384, file: !1, discriminator: 3)
!1388 = !DILocation(line: 494, column: 17, scope: !596)
!1389 = !DILocation(line: 499, column: 34, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !1, line: 499, column: 29)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !1, line: 498, column: 24)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !1, line: 497, column: 33)
!1393 = distinct !DILexicalBlock(scope: !595, file: !1, line: 497, column: 21)
!1394 = !DILocation(line: 494, column: 45, scope: !596)
!1395 = !DILocation(line: 494, column: 17, scope: !588)
!1396 = !DILocation(line: 495, column: 28, scope: !595)
!1397 = !DILocation(line: 496, column: 35, scope: !595)
!1398 = !DILocation(line: 496, column: 29, scope: !595)
!1399 = !DILocation(line: 497, column: 27, scope: !1393)
!1400 = !DILocation(line: 497, column: 21, scope: !595)
!1401 = !DILocation(line: 507, column: 31, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !1, line: 507, column: 29)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !1, line: 506, column: 24)
!1404 = distinct !DILexicalBlock(scope: !1393, file: !1, line: 505, column: 22)
!1405 = !DILocation(line: 499, column: 31, scope: !1390)
!1406 = !DILocation(line: 499, column: 67, scope: !1390)
!1407 = !DILocation(line: 499, column: 62, scope: !1390)
!1408 = !DILocation(line: 501, column: 34, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1391, file: !1, line: 501, column: 29)
!1410 = !DILocation(line: 501, column: 29, scope: !1409)
!1411 = !{!851, !851, i64 0}
!1412 = !DILocation(line: 501, column: 38, scope: !1409)
!1413 = !DILocation(line: 501, column: 29, scope: !1391)
!1414 = !DILocation(line: 507, column: 29, scope: !1403)
!1415 = !DILocation(line: 509, column: 34, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1403, file: !1, line: 509, column: 29)
!1417 = !DILocation(line: 509, column: 29, scope: !1416)
!1418 = !DILocation(line: 509, column: 38, scope: !1416)
!1419 = !DILocation(line: 509, column: 29, scope: !1403)
!1420 = !DILocation(line: 515, column: 13, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !599, file: !1, discriminator: 1)
!1422 = !DILocation(line: 515, column: 13, scope: !1375)
!1423 = !DILocation(line: 515, column: 13, scope: !599)
!1424 = !DILocation(line: 518, column: 13, scope: !585)
!1425 = !DILocation(line: 475, column: 19, scope: !585)
!1426 = !DILocation(line: 519, column: 15, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !585, file: !1, line: 519, column: 13)
!1428 = !DILocation(line: 519, column: 13, scope: !585)
!1429 = !DILocation(line: 522, column: 17, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !1, line: 522, column: 17)
!1431 = distinct !DILexicalBlock(scope: !1427, file: !1, line: 519, column: 24)
!1432 = !DILocation(line: 525, column: 13, scope: !1431)
!1433 = !DILocation(line: 527, column: 14, scope: !603)
!1434 = !DILocation(line: 535, column: 13, scope: !1435)
!1435 = !DILexicalBlockFile(scope: !1436, file: !1, discriminator: 3)
!1436 = distinct !DILexicalBlock(scope: !605, file: !1, line: 535, column: 13)
!1437 = !DILocation(line: 527, column: 13, scope: !585)
!1438 = !DILocation(line: 528, column: 26, scope: !602)
!1439 = !DILocation(line: 530, column: 54, scope: !602)
!1440 = !DILocation(line: 528, column: 13, scope: !602)
!1441 = !DILocation(line: 531, column: 13, scope: !1442)
!1442 = !DILexicalBlockFile(scope: !601, file: !1, discriminator: 1)
!1443 = !DILocation(line: 531, column: 13, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !601, file: !1, line: 531, column: 13)
!1445 = !DILocation(line: 531, column: 13, scope: !601)
!1446 = !DILocation(line: 531, column: 13, scope: !1447)
!1447 = !DILexicalBlockFile(scope: !1444, file: !1, discriminator: 3)
!1448 = !DILocation(line: 534, column: 13, scope: !607)
!1449 = !DILocation(line: 534, column: 33, scope: !607)
!1450 = !DILocation(line: 534, column: 13, scope: !585)
!1451 = !DILocation(line: 535, column: 13, scope: !1452)
!1452 = !DILexicalBlockFile(scope: !605, file: !1, discriminator: 1)
!1453 = !DILocation(line: 535, column: 13, scope: !1436)
!1454 = !DILocation(line: 535, column: 13, scope: !605)
!1455 = !DILocation(line: 540, column: 49, scope: !611)
!1456 = !DILocation(line: 540, column: 13, scope: !611)
!1457 = !DILocation(line: 540, column: 72, scope: !611)
!1458 = !DILocation(line: 540, column: 13, scope: !585)
!1459 = !DILocation(line: 541, column: 13, scope: !1460)
!1460 = !DILexicalBlockFile(scope: !609, file: !1, discriminator: 1)
!1461 = !DILocation(line: 541, column: 13, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !609, file: !1, line: 541, column: 13)
!1463 = !DILocation(line: 541, column: 13, scope: !609)
!1464 = !DILocation(line: 541, column: 13, scope: !1465)
!1465 = !DILexicalBlockFile(scope: !1462, file: !1, discriminator: 3)
!1466 = !DILocation(line: 544, column: 16, scope: !585)
!1467 = !DILocation(line: 544, column: 16, scope: !1468)
!1468 = !DILexicalBlockFile(scope: !585, file: !1, discriminator: 1)
!1469 = !{!1470, !850, i64 40}
!1470 = !{!"", !873, i64 0, !866, i64 24, !850, i64 32, !850, i64 40, !874, i64 48}
!1471 = !DILocation(line: 544, column: 46, scope: !585)
!1472 = !DILocation(line: 545, column: 16, scope: !585)
!1473 = !DILocation(line: 545, column: 38, scope: !585)
!1474 = !DILocation(line: 544, column: 9, scope: !585)
!1475 = !DILocation(line: 547, column: 9, scope: !1476)
!1476 = !DILexicalBlockFile(scope: !613, file: !1, discriminator: 1)
!1477 = !DILocation(line: 547, column: 9, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !613, file: !1, line: 547, column: 9)
!1479 = !DILocation(line: 547, column: 9, scope: !613)
!1480 = !DILocation(line: 547, column: 9, scope: !1481)
!1481 = !DILexicalBlockFile(scope: !1478, file: !1, discriminator: 3)
!1482 = !DILocation(line: 549, column: 43, scope: !1348)
!1483 = !DILocation(line: 549, column: 72, scope: !1348)
!1484 = !DILocation(line: 549, column: 13, scope: !1348)
!1485 = !DILocation(line: 549, column: 13, scope: !1486)
!1486 = !DILexicalBlockFile(scope: !1487, file: !1, discriminator: 4)
!1487 = !DILexicalBlockFile(scope: !1348, file: !1, discriminator: 3)
!1488 = !DILocation(line: 549, column: 77, scope: !1348)
!1489 = !DILocation(line: 550, column: 13, scope: !1348)
!1490 = !DILocation(line: 554, column: 40, scope: !575)
!1491 = !DILocation(line: 553, column: 40, scope: !575)
!1492 = !DILocation(line: 553, column: 40, scope: !1351)
!1493 = !DILocation(line: 553, column: 14, scope: !575)
!1494 = !DILocation(line: 458, column: 24, scope: !575)
!1495 = !DILocation(line: 555, column: 5, scope: !1496)
!1496 = !DILexicalBlockFile(scope: !615, file: !1, discriminator: 1)
!1497 = !DILocation(line: 555, column: 5, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !615, file: !1, line: 555, column: 5)
!1499 = !DILocation(line: 555, column: 5, scope: !615)
!1500 = !DILocation(line: 555, column: 5, scope: !1501)
!1501 = !DILexicalBlockFile(scope: !1498, file: !1, discriminator: 3)
!1502 = !DILocation(line: 558, column: 5, scope: !1503)
!1503 = !DILexicalBlockFile(scope: !617, file: !1, discriminator: 1)
!1504 = !DILocation(line: 558, column: 5, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !617, file: !1, line: 558, column: 5)
!1506 = !DILocation(line: 558, column: 5, scope: !617)
!1507 = !DILocation(line: 558, column: 5, scope: !1508)
!1508 = !DILexicalBlockFile(scope: !1505, file: !1, discriminator: 3)
!1509 = !DILocation(line: 560, column: 1, scope: !575)
!1510 = !DILocation(line: 596, column: 28, scope: !618)
!1511 = !DILocation(line: 596, column: 44, scope: !618)
!1512 = !DILocation(line: 598, column: 5, scope: !618)
!1513 = !DILocation(line: 598, column: 16, scope: !618)
!1514 = !DILocation(line: 598, column: 27, scope: !618)
!1515 = !DILocation(line: 601, column: 10, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !618, file: !1, line: 601, column: 9)
!1517 = !DILocation(line: 601, column: 9, scope: !618)
!1518 = !DILocation(line: 605, column: 14, scope: !618)
!1519 = !DILocation(line: 599, column: 15, scope: !618)
!1520 = !DILocation(line: 606, column: 16, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !618, file: !1, line: 606, column: 9)
!1522 = !DILocation(line: 606, column: 9, scope: !618)
!1523 = !DILocation(line: 609, column: 9, scope: !627)
!1524 = !DILocation(line: 609, column: 14, scope: !627)
!1525 = !DILocation(line: 609, column: 9, scope: !618)
!1526 = !DILocation(line: 625, column: 26, scope: !635)
!1527 = !DILocation(line: 614, column: 25, scope: !626)
!1528 = !DILocation(line: 614, column: 19, scope: !626)
!1529 = !DILocation(line: 616, column: 17, scope: !631)
!1530 = !DILocation(line: 616, column: 13, scope: !626)
!1531 = !DILocation(line: 617, column: 13, scope: !1532)
!1532 = !DILexicalBlockFile(scope: !629, file: !1, discriminator: 1)
!1533 = !DILocation(line: 617, column: 13, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !629, file: !1, line: 617, column: 13)
!1535 = !DILocation(line: 617, column: 13, scope: !629)
!1536 = !DILocation(line: 617, column: 13, scope: !1537)
!1537 = !DILexicalBlockFile(scope: !1534, file: !1, discriminator: 3)
!1538 = !DILocation(line: 620, column: 9, scope: !1539)
!1539 = !DILexicalBlockFile(scope: !633, file: !1, discriminator: 1)
!1540 = !DILocation(line: 620, column: 9, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !633, file: !1, line: 620, column: 9)
!1542 = !DILocation(line: 620, column: 9, scope: !633)
!1543 = !DILocation(line: 620, column: 9, scope: !1544)
!1544 = !DILexicalBlockFile(scope: !1541, file: !1, discriminator: 3)
!1545 = !DILocation(line: 625, column: 19, scope: !635)
!1546 = !DILocation(line: 626, column: 18, scope: !641)
!1547 = !DILocation(line: 626, column: 13, scope: !635)
!1548 = !DILocation(line: 627, column: 17, scope: !639)
!1549 = !DILocation(line: 627, column: 17, scope: !640)
!1550 = !DILocation(line: 628, column: 17, scope: !1551)
!1551 = !DILexicalBlockFile(scope: !637, file: !1, discriminator: 1)
!1552 = !DILocation(line: 628, column: 17, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !637, file: !1, line: 628, column: 17)
!1554 = !DILocation(line: 628, column: 17, scope: !637)
!1555 = !DILocation(line: 628, column: 17, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !1553, file: !1, discriminator: 3)
!1557 = !DILocation(line: 635, column: 13, scope: !645)
!1558 = !DILocation(line: 635, column: 41, scope: !645)
!1559 = !DILocation(line: 635, column: 13, scope: !635)
!1560 = !DILocation(line: 636, column: 13, scope: !1561)
!1561 = !DILexicalBlockFile(scope: !643, file: !1, discriminator: 1)
!1562 = !DILocation(line: 636, column: 13, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !643, file: !1, line: 636, column: 13)
!1564 = !DILocation(line: 636, column: 13, scope: !643)
!1565 = !DILocation(line: 636, column: 13, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !1563, file: !1, discriminator: 3)
!1567 = !DILocation(line: 637, column: 13, scope: !1568)
!1568 = !DILexicalBlockFile(scope: !647, file: !1, discriminator: 1)
!1569 = !DILocation(line: 637, column: 13, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !647, file: !1, line: 637, column: 13)
!1571 = !DILocation(line: 637, column: 13, scope: !647)
!1572 = !DILocation(line: 637, column: 13, scope: !1573)
!1573 = !DILexicalBlockFile(scope: !1570, file: !1, discriminator: 3)
!1574 = !DILocation(line: 640, column: 19, scope: !635)
!1575 = !DILocation(line: 640, column: 16, scope: !635)
!1576 = !DILocation(line: 641, column: 9, scope: !1577)
!1577 = !DILexicalBlockFile(scope: !649, file: !1, discriminator: 1)
!1578 = !DILocation(line: 641, column: 9, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !649, file: !1, line: 641, column: 9)
!1580 = !DILocation(line: 641, column: 9, scope: !649)
!1581 = !DILocation(line: 641, column: 9, scope: !1582)
!1582 = !DILexicalBlockFile(scope: !1579, file: !1, discriminator: 3)
!1583 = !DILocation(line: 643, column: 22, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !635, file: !1, line: 643, column: 13)
!1585 = !DILocation(line: 643, column: 20, scope: !1584)
!1586 = !DILocation(line: 647, column: 1, scope: !618)
!1587 = !DILocation(line: 650, column: 29, scope: !650)
!1588 = !DILocation(line: 650, column: 45, scope: !650)
!1589 = !DILocation(line: 652, column: 5, scope: !650)
!1590 = !DILocation(line: 652, column: 15, scope: !650)
!1591 = !DILocation(line: 654, column: 10, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !650, file: !1, line: 654, column: 9)
!1593 = !DILocation(line: 654, column: 9, scope: !650)
!1594 = !DILocation(line: 167, column: 34, scope: !384, inlinedAt: !1595)
!1595 = distinct !DILocation(line: 658, column: 9, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !650, file: !1, line: 658, column: 9)
!1597 = !DILocation(line: 167, column: 50, scope: !384, inlinedAt: !1595)
!1598 = !DILocation(line: 146, column: 25, scope: !443, inlinedAt: !1599)
!1599 = distinct !DILocation(line: 169, column: 9, scope: !847, inlinedAt: !1595)
!1600 = !DILocation(line: 152, column: 34, scope: !443, inlinedAt: !1599)
!1601 = !DILocation(line: 152, column: 11, scope: !443, inlinedAt: !1599)
!1602 = !DILocation(line: 148, column: 15, scope: !443, inlinedAt: !1599)
!1603 = !DILocation(line: 153, column: 13, scope: !856, inlinedAt: !1599)
!1604 = !DILocation(line: 153, column: 9, scope: !443, inlinedAt: !1599)
!1605 = !DILocation(line: 155, column: 14, scope: !443, inlinedAt: !1599)
!1606 = !DILocation(line: 149, column: 9, scope: !443, inlinedAt: !1599)
!1607 = !DILocation(line: 156, column: 5, scope: !861, inlinedAt: !1599)
!1608 = !DILocation(line: 156, column: 5, scope: !863, inlinedAt: !1599)
!1609 = !DILocation(line: 156, column: 5, scope: !449, inlinedAt: !1599)
!1610 = !DILocation(line: 156, column: 5, scope: !869, inlinedAt: !1599)
!1611 = !DILocation(line: 169, column: 9, scope: !847, inlinedAt: !1595)
!1612 = !DILocation(line: 169, column: 9, scope: !384, inlinedAt: !1595)
!1613 = !DILocation(line: 170, column: 25, scope: !878, inlinedAt: !1595)
!1614 = !DILocation(line: 170, column: 9, scope: !878, inlinedAt: !1595)
!1615 = !DILocation(line: 658, column: 9, scope: !650)
!1616 = !DILocation(line: 661, column: 29, scope: !650)
!1617 = !DILocation(line: 661, column: 12, scope: !650)
!1618 = !DILocation(line: 652, column: 23, scope: !650)
!1619 = !DILocation(line: 662, column: 14, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !650, file: !1, line: 662, column: 9)
!1621 = !DILocation(line: 662, column: 9, scope: !650)
!1622 = !DILocation(line: 666, column: 26, scope: !658)
!1623 = !DILocation(line: 666, column: 19, scope: !658)
!1624 = !DILocation(line: 667, column: 18, scope: !664)
!1625 = !DILocation(line: 667, column: 13, scope: !658)
!1626 = !DILocation(line: 678, column: 52, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !658, file: !1, line: 677, column: 12)
!1628 = !DILocation(line: 668, column: 17, scope: !662)
!1629 = !DILocation(line: 687, column: 5, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !674, file: !1, line: 687, column: 5)
!1631 = !DILocation(line: 668, column: 17, scope: !663)
!1632 = !DILocation(line: 669, column: 17, scope: !1633)
!1633 = !DILexicalBlockFile(scope: !660, file: !1, discriminator: 1)
!1634 = !DILocation(line: 669, column: 17, scope: !660)
!1635 = !DILocation(line: 669, column: 17, scope: !1636)
!1636 = !DILexicalBlockFile(scope: !1637, file: !1, discriminator: 3)
!1637 = distinct !DILexicalBlock(scope: !660, file: !1, line: 669, column: 17)
!1638 = !DILocation(line: 678, column: 19, scope: !1627)
!1639 = !DILocation(line: 652, column: 30, scope: !650)
!1640 = !DILocation(line: 679, column: 22, scope: !658)
!1641 = !DILocation(line: 679, column: 30, scope: !658)
!1642 = !DILocation(line: 679, column: 33, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !658, file: !1, discriminator: 2)
!1644 = !DILocation(line: 679, column: 9, scope: !1645)
!1645 = !DILexicalBlockFile(scope: !1627, file: !1, discriminator: 3)
!1646 = !DILocation(line: 680, column: 9, scope: !1647)
!1647 = !DILexicalBlockFile(scope: !666, file: !1, discriminator: 1)
!1648 = !DILocation(line: 680, column: 9, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !666, file: !1, line: 680, column: 9)
!1650 = !DILocation(line: 680, column: 9, scope: !666)
!1651 = !DILocation(line: 680, column: 9, scope: !1652)
!1652 = !DILexicalBlockFile(scope: !1649, file: !1, discriminator: 3)
!1653 = !DILocation(line: 681, column: 13, scope: !658)
!1654 = !DILocation(line: 682, column: 13, scope: !1655)
!1655 = !DILexicalBlockFile(scope: !668, file: !1, discriminator: 1)
!1656 = !DILocation(line: 682, column: 13, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !668, file: !1, line: 682, column: 13)
!1658 = !DILocation(line: 682, column: 13, scope: !668)
!1659 = !DILocation(line: 682, column: 13, scope: !1660)
!1660 = !DILexicalBlockFile(scope: !1657, file: !1, discriminator: 3)
!1661 = !DILocation(line: 685, column: 9, scope: !1662)
!1662 = !DILexicalBlockFile(scope: !672, file: !1, discriminator: 1)
!1663 = !DILocation(line: 685, column: 9, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !672, file: !1, line: 685, column: 9)
!1665 = !DILocation(line: 685, column: 9, scope: !672)
!1666 = !DILocation(line: 685, column: 9, scope: !1667)
!1667 = !DILexicalBlockFile(scope: !1664, file: !1, discriminator: 3)
!1668 = !DILocation(line: 687, column: 5, scope: !1669)
!1669 = !DILexicalBlockFile(scope: !674, file: !1, discriminator: 1)
!1670 = !DILocation(line: 687, column: 5, scope: !674)
!1671 = !DILocation(line: 687, column: 5, scope: !1672)
!1672 = !DILexicalBlockFile(scope: !1630, file: !1, discriminator: 3)
!1673 = !DILocation(line: 688, column: 5, scope: !650)
!1674 = !DILocation(line: 689, column: 1, scope: !650)
!1675 = !DILocation(line: 161, column: 29, scope: !675)
!1676 = !DILocation(line: 161, column: 41, scope: !675)
!1677 = !DILocation(line: 163, column: 28, scope: !675)
!1678 = !DILocation(line: 163, column: 12, scope: !675)
!1679 = !DILocation(line: 163, column: 5, scope: !675)
!1680 = !DILocation(line: 799, column: 26, scope: !696)
!1681 = !DILocation(line: 799, column: 42, scope: !696)
!1682 = !DILocation(line: 801, column: 5, scope: !696)
!1683 = !DILocation(line: 801, column: 16, scope: !696)
!1684 = !DILocation(line: 804, column: 10, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !696, file: !1, line: 804, column: 9)
!1686 = !DILocation(line: 804, column: 9, scope: !696)
!1687 = !DILocation(line: 808, column: 9, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !696, file: !1, line: 808, column: 9)
!1689 = !DILocation(line: 808, column: 11, scope: !1688)
!1690 = !DILocation(line: 808, column: 9, scope: !696)
!1691 = !DILocation(line: 811, column: 16, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1688, file: !1, line: 808, column: 16)
!1693 = !DILocation(line: 811, column: 9, scope: !1692)
!1694 = !DILocation(line: 816, column: 9, scope: !696)
!1695 = !DILocation(line: 802, column: 15, scope: !696)
!1696 = !DILocation(line: 817, column: 11, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !696, file: !1, line: 817, column: 9)
!1698 = !DILocation(line: 817, column: 9, scope: !696)
!1699 = !DILocation(line: 820, column: 44, scope: !696)
!1700 = !DILocation(line: 820, column: 11, scope: !696)
!1701 = !DILocation(line: 802, column: 19, scope: !696)
!1702 = !DILocation(line: 821, column: 13, scope: !706)
!1703 = !DILocation(line: 821, column: 28, scope: !706)
!1704 = !DILocation(line: 821, column: 21, scope: !706)
!1705 = !DILocation(line: 822, column: 9, scope: !1706)
!1706 = !DILexicalBlockFile(scope: !704, file: !1, discriminator: 1)
!1707 = !DILocation(line: 822, column: 9, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !704, file: !1, line: 822, column: 9)
!1709 = !DILocation(line: 822, column: 9, scope: !704)
!1710 = !DILocation(line: 822, column: 9, scope: !1711)
!1711 = !DILexicalBlockFile(scope: !1708, file: !1, discriminator: 3)
!1712 = !DILocation(line: 826, column: 33, scope: !696)
!1713 = !DILocation(line: 826, column: 9, scope: !696)
!1714 = !DILocation(line: 826, column: 7, scope: !696)
!1715 = !DILocation(line: 827, column: 5, scope: !1716)
!1716 = !DILexicalBlockFile(scope: !708, file: !1, discriminator: 1)
!1717 = !DILocation(line: 827, column: 5, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !708, file: !1, line: 827, column: 5)
!1719 = !DILocation(line: 827, column: 5, scope: !708)
!1720 = !DILocation(line: 827, column: 5, scope: !1721)
!1721 = !DILexicalBlockFile(scope: !1718, file: !1, discriminator: 3)
!1722 = !DILocation(line: 828, column: 9, scope: !712)
!1723 = !DILocation(line: 828, column: 11, scope: !712)
!1724 = !DILocation(line: 828, column: 17, scope: !712)
!1725 = !DILocation(line: 828, column: 20, scope: !1726)
!1726 = !DILexicalBlockFile(scope: !712, file: !1, discriminator: 1)
!1727 = !DILocation(line: 828, column: 9, scope: !696)
!1728 = !DILocation(line: 829, column: 9, scope: !1729)
!1729 = !DILexicalBlockFile(scope: !710, file: !1, discriminator: 1)
!1730 = !DILocation(line: 829, column: 9, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !710, file: !1, line: 829, column: 9)
!1732 = !DILocation(line: 829, column: 9, scope: !710)
!1733 = !DILocation(line: 829, column: 9, scope: !1734)
!1734 = !DILexicalBlockFile(scope: !1731, file: !1, discriminator: 3)
!1735 = !DILocation(line: 833, column: 37, scope: !696)
!1736 = !DILocation(line: 833, column: 62, scope: !696)
!1737 = !DILocation(line: 833, column: 11, scope: !696)
!1738 = !DILocation(line: 834, column: 5, scope: !1739)
!1739 = !DILexicalBlockFile(scope: !714, file: !1, discriminator: 1)
!1740 = !DILocation(line: 834, column: 5, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !714, file: !1, line: 834, column: 5)
!1742 = !DILocation(line: 834, column: 5, scope: !714)
!1743 = !DILocation(line: 834, column: 5, scope: !1744)
!1744 = !DILexicalBlockFile(scope: !1741, file: !1, discriminator: 3)
!1745 = !DILocation(line: 836, column: 1, scope: !696)
!1746 = !DILocation(line: 843, column: 29, scope: !715)
!1747 = !DILocation(line: 843, column: 45, scope: !715)
!1748 = !DILocation(line: 846, column: 24, scope: !715)
!1749 = !DILocation(line: 846, column: 15, scope: !715)
!1750 = !DILocation(line: 849, column: 16, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !715, file: !1, line: 849, column: 9)
!1752 = !DILocation(line: 849, column: 9, scope: !715)
!1753 = !DILocation(line: 853, column: 26, scope: !723)
!1754 = !DILocation(line: 853, column: 19, scope: !723)
!1755 = !DILocation(line: 855, column: 14, scope: !727)
!1756 = !DILocation(line: 855, column: 13, scope: !723)
!1757 = !DILocation(line: 858, column: 17, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !726, file: !1, line: 858, column: 17)
!1759 = !DILocation(line: 858, column: 17, scope: !726)
!1760 = !DILocation(line: 861, column: 13, scope: !1761)
!1761 = !DILexicalBlockFile(scope: !725, file: !1, discriminator: 1)
!1762 = !DILocation(line: 861, column: 13, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !725, file: !1, line: 861, column: 13)
!1764 = !DILocation(line: 861, column: 13, scope: !725)
!1765 = !DILocation(line: 861, column: 13, scope: !1766)
!1766 = !DILexicalBlockFile(scope: !1763, file: !1, discriminator: 3)
!1767 = !DILocation(line: 864, column: 18, scope: !733)
!1768 = !DILocation(line: 864, column: 13, scope: !723)
!1769 = !DILocation(line: 865, column: 17, scope: !731)
!1770 = !DILocation(line: 865, column: 41, scope: !731)
!1771 = !DILocation(line: 865, column: 17, scope: !732)
!1772 = !DILocation(line: 866, column: 17, scope: !1773)
!1773 = !DILexicalBlockFile(scope: !729, file: !1, discriminator: 1)
!1774 = !DILocation(line: 866, column: 17, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !729, file: !1, line: 866, column: 17)
!1776 = !DILocation(line: 866, column: 17, scope: !729)
!1777 = !DILocation(line: 866, column: 17, scope: !1778)
!1778 = !DILexicalBlockFile(scope: !1775, file: !1, discriminator: 3)
!1779 = !DILocation(line: 869, column: 13, scope: !1780)
!1780 = !DILexicalBlockFile(scope: !735, file: !1, discriminator: 1)
!1781 = !DILocation(line: 869, column: 13, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !735, file: !1, line: 869, column: 13)
!1783 = !DILocation(line: 869, column: 13, scope: !735)
!1784 = !DILocation(line: 869, column: 13, scope: !1785)
!1785 = !DILexicalBlockFile(scope: !1782, file: !1, discriminator: 3)
!1786 = !DILocation(line: 872, column: 14, scope: !739)
!1787 = !DILocation(line: 880, column: 13, scope: !1788)
!1788 = !DILexicalBlockFile(scope: !1789, file: !1, discriminator: 3)
!1789 = distinct !DILexicalBlock(scope: !743, file: !1, line: 880, column: 13)
!1790 = !DILocation(line: 872, column: 13, scope: !723)
!1791 = !DILocation(line: 873, column: 13, scope: !1792)
!1792 = !DILexicalBlockFile(scope: !737, file: !1, discriminator: 1)
!1793 = !DILocation(line: 873, column: 13, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !737, file: !1, line: 873, column: 13)
!1795 = !DILocation(line: 873, column: 13, scope: !737)
!1796 = !DILocation(line: 873, column: 13, scope: !1797)
!1797 = !DILexicalBlockFile(scope: !1794, file: !1, discriminator: 3)
!1798 = !DILocation(line: 874, column: 13, scope: !1799)
!1799 = !DILexicalBlockFile(scope: !741, file: !1, discriminator: 1)
!1800 = !DILocation(line: 874, column: 13, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !741, file: !1, line: 874, column: 13)
!1802 = !DILocation(line: 874, column: 13, scope: !741)
!1803 = !DILocation(line: 874, column: 13, scope: !1804)
!1804 = !DILexicalBlockFile(scope: !1801, file: !1, discriminator: 3)
!1805 = !DILocation(line: 875, column: 29, scope: !738)
!1806 = !DILocation(line: 875, column: 13, scope: !738)
!1807 = !DILocation(line: 876, column: 13, scope: !738)
!1808 = !DILocation(line: 878, column: 13, scope: !745)
!1809 = !DILocation(line: 878, column: 36, scope: !745)
!1810 = !DILocation(line: 878, column: 13, scope: !723)
!1811 = !DILocation(line: 880, column: 13, scope: !1812)
!1812 = !DILexicalBlockFile(scope: !743, file: !1, discriminator: 1)
!1813 = !DILocation(line: 880, column: 13, scope: !1789)
!1814 = !DILocation(line: 880, column: 13, scope: !743)
!1815 = !DILocation(line: 883, column: 13, scope: !723)
!1816 = !DILocation(line: 845, column: 9, scope: !715)
!1817 = !DILocation(line: 884, column: 9, scope: !1818)
!1818 = !DILexicalBlockFile(scope: !747, file: !1, discriminator: 1)
!1819 = !DILocation(line: 884, column: 9, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !747, file: !1, line: 884, column: 9)
!1821 = !DILocation(line: 884, column: 9, scope: !747)
!1822 = !DILocation(line: 884, column: 9, scope: !1823)
!1823 = !DILexicalBlockFile(scope: !1820, file: !1, discriminator: 3)
!1824 = !DILocation(line: 885, column: 15, scope: !751)
!1825 = !DILocation(line: 885, column: 13, scope: !723)
!1826 = !DILocation(line: 886, column: 13, scope: !1827)
!1827 = !DILexicalBlockFile(scope: !749, file: !1, discriminator: 1)
!1828 = !DILocation(line: 886, column: 13, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !749, file: !1, line: 886, column: 13)
!1830 = !DILocation(line: 886, column: 13, scope: !749)
!1831 = !DILocation(line: 886, column: 13, scope: !1832)
!1832 = !DILexicalBlockFile(scope: !1829, file: !1, discriminator: 3)
!1833 = !DILocation(line: 890, column: 28, scope: !715)
!1834 = !DILocation(line: 890, column: 14, scope: !715)
!1835 = !DILocation(line: 847, column: 15, scope: !715)
!1836 = !DILocation(line: 891, column: 5, scope: !1837)
!1837 = !DILexicalBlockFile(scope: !753, file: !1, discriminator: 1)
!1838 = !DILocation(line: 891, column: 5, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !753, file: !1, line: 891, column: 5)
!1840 = !DILocation(line: 891, column: 5, scope: !753)
!1841 = !DILocation(line: 891, column: 5, scope: !1842)
!1842 = !DILexicalBlockFile(scope: !1839, file: !1, discriminator: 3)
!1843 = !DILocation(line: 893, column: 1, scope: !715)
