; ModuleID = 'programs_new/Python-new/iobase.bc.ll'
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
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !387, metadata !847), !dbg !848
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !388, metadata !847), !dbg !849
  %0 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !850, !tbaa !843
  %call = call i32 @iobase_closed(%struct._object* %0), !dbg !852
  %tobool = icmp ne i32 %call, 0, !dbg !852
  br i1 %tobool, label %if.then, label %if.end, !dbg !853

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !854, !tbaa !843
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0)), !dbg !856
  store %struct._object* null, %struct._object** %retval, !dbg !857
  br label %return, !dbg !857

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !858, !tbaa !843
  %cmp = icmp eq %struct._object* %2, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), !dbg !860
  br i1 %cmp, label %if.then.1, label %if.else, !dbg !861

if.then.1:                                        ; preds = %if.end
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !862
  br label %return, !dbg !862

if.else:                                          ; preds = %if.end
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !863, !tbaa !864
  %inc = add i64 %3, 1, !dbg !863
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !863, !tbaa !864
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !867
  br label %return, !dbg !867

return:                                           ; preds = %if.else, %if.then.1, %if.then
  %4 = load %struct._object*, %struct._object** %retval, !dbg !868
  ret %struct._object* %4, !dbg !868
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal i32 @iobase_closed(%struct._object* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %closed = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !446, metadata !847), !dbg !869
  %0 = bitcast %struct._object** %res to i8*, !dbg !870
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !870
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !447, metadata !847), !dbg !871
  %1 = bitcast i32* %closed to i8*, !dbg !872
  call void @llvm.lifetime.start(i64 4, i8* %1) #3, !dbg !872
  call void @llvm.dbg.declare(metadata i32* %closed, metadata !448, metadata !847), !dbg !873
  %2 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !874, !tbaa !843
  %3 = load %struct._object*, %struct._object** @_PyIO_str_closed, align 8, !dbg !875, !tbaa !843
  %call = call %struct._object* @PyObject_GetAttr(%struct._object* %2, %struct._object* %3), !dbg !876
  store %struct._object* %call, %struct._object** %res, align 8, !dbg !877, !tbaa !843
  %4 = load %struct._object*, %struct._object** %res, align 8, !dbg !878, !tbaa !843
  %cmp = icmp eq %struct._object* %4, null, !dbg !880
  br i1 %cmp, label %if.then, label %if.end, !dbg !881

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !882
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !882

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %res, align 8, !dbg !883, !tbaa !843
  %call1 = call i32 @PyObject_IsTrue(%struct._object* %5), !dbg !884
  store i32 %call1, i32* %closed, align 4, !dbg !885, !tbaa !886
  br label %do.body, !dbg !888

do.body:                                          ; preds = %if.end
  %6 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !889
  call void @llvm.lifetime.start(i64 8, i8* %6) #3, !dbg !889
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !449, metadata !847), !dbg !891
  %7 = load %struct._object*, %struct._object** %res, align 8, !dbg !892, !tbaa !843
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8, !dbg !891, !tbaa !843
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !893, !tbaa !843
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !895
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !896, !tbaa !864
  %dec = add i64 %9, -1, !dbg !896
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !896, !tbaa !864
  %cmp2 = icmp ne i64 %dec, 0, !dbg !897
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !898

if.then.3:                                        ; preds = %do.body
  br label %if.end.4, !dbg !899

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !901, !tbaa !843
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !903
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !903, !tbaa !904
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4, !dbg !905
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !905, !tbaa !906
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !909, !tbaa !843
  call void %12(%struct._object* %13), !dbg !910
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !911
  call void @llvm.lifetime.end(i64 8, i8* %14) #3, !dbg !911
  br label %do.cond, !dbg !913

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !914

do.end:                                           ; preds = %do.cond
  %15 = load i32, i32* %closed, align 4, !dbg !916, !tbaa !886
  store i32 %15, i32* %retval, !dbg !917
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !917

cleanup:                                          ; preds = %do.end, %if.then
  %16 = bitcast i32* %closed to i8*, !dbg !918
  call void @llvm.lifetime.end(i64 4, i8* %16) #3, !dbg !918
  %17 = bitcast %struct._object** %res to i8*, !dbg !918
  call void @llvm.lifetime.end(i64 8, i8* %17) #3, !dbg !918
  %18 = load i32, i32* %retval, !dbg !918
  ret i32 %18, !dbg !918
}

declare void @PyErr_SetString(%struct._object*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @_PyIOBase_finalize(%struct._object* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %is_zombie = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !391, metadata !847), !dbg !919
  %0 = bitcast i32* %is_zombie to i8*, !dbg !920
  call void @llvm.lifetime.start(i64 4, i8* %0) #3, !dbg !920
  call void @llvm.dbg.declare(metadata i32* %is_zombie, metadata !392, metadata !847), !dbg !921
  %1 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !922, !tbaa !843
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0, !dbg !923
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !923, !tbaa !864
  %cmp = icmp eq i64 %2, 0, !dbg !924
  %conv = zext i1 %cmp to i32, !dbg !924
  store i32 %conv, i32* %is_zombie, align 4, !dbg !925, !tbaa !886
  %3 = load i32, i32* %is_zombie, align 4, !dbg !926, !tbaa !886
  %tobool = icmp ne i32 %3, 0, !dbg !926
  br i1 %tobool, label %if.then, label %if.else, !dbg !928

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !929, !tbaa !843
  %call = call i32 @PyObject_CallFinalizerFromDealloc(%struct._object* %4), !dbg !930
  store i32 %call, i32* %retval, !dbg !931
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !931

if.else:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !932, !tbaa !843
  call void @PyObject_CallFinalizer(%struct._object* %5), !dbg !934
  store i32 0, i32* %retval, !dbg !935
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !935

cleanup:                                          ; preds = %if.else, %if.then
  %6 = bitcast i32* %is_zombie to i8*, !dbg !936
  call void @llvm.lifetime.end(i64 4, i8* %6) #3, !dbg !936
  %7 = load i32, i32* %retval, !dbg !936
  ret i32 %7, !dbg !936
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

declare i32 @PyObject_CallFinalizerFromDealloc(%struct._object*) #2

declare void @PyObject_CallFinalizer(%struct._object*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind uwtable
define %struct._object* @_PyIOBase_check_seekable(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp17 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !395, metadata !847), !dbg !937
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !396, metadata !847), !dbg !938
  %0 = bitcast %struct._object** %res to i8*, !dbg !939
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !939
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !397, metadata !847), !dbg !940
  %1 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !941, !tbaa !843
  %2 = load %struct._object*, %struct._object** @_PyIO_str_seekable, align 8, !dbg !942, !tbaa !843
  %call = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %1, %struct._object* %2, i8* null), !dbg !943
  store %struct._object* %call, %struct._object** %res, align 8, !dbg !940, !tbaa !843
  %3 = load %struct._object*, %struct._object** %res, align 8, !dbg !944, !tbaa !843
  %cmp = icmp eq %struct._object* %3, null, !dbg !946
  br i1 %cmp, label %if.then, label %if.end, !dbg !947

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !948
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !948

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %res, align 8, !dbg !949, !tbaa !843
  %cmp1 = icmp ne %struct._object* %4, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), !dbg !950
  br i1 %cmp1, label %if.then.2, label %if.end.13, !dbg !951

if.then.2:                                        ; preds = %if.end
  br label %do.body, !dbg !952

do.body:                                          ; preds = %if.then.2
  %5 = bitcast %struct._object** %_py_tmp to i8*, !dbg !953
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !953
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !398, metadata !847), !dbg !955
  %6 = load %struct._object*, %struct._object** %res, align 8, !dbg !956, !tbaa !843
  store %struct._object* %6, %struct._object** %_py_tmp, align 8, !dbg !955, !tbaa !843
  %7 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !957, !tbaa !843
  %cmp3 = icmp ne %struct._object* %7, null, !dbg !958
  br i1 %cmp3, label %if.then.4, label %if.end.9, !dbg !959

if.then.4:                                        ; preds = %do.body
  store %struct._object* null, %struct._object** %res, align 8, !dbg !960, !tbaa !843
  br label %do.body.5, !dbg !962

do.body.5:                                        ; preds = %if.then.4
  %8 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !963
  call void @llvm.lifetime.start(i64 8, i8* %8) #3, !dbg !963
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !402, metadata !847), !dbg !965
  %9 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !966, !tbaa !843
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8, !dbg !965, !tbaa !843
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !967, !tbaa !843
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0, !dbg !969
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !970, !tbaa !864
  %dec = add i64 %11, -1, !dbg !970
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !970, !tbaa !864
  %cmp6 = icmp ne i64 %dec, 0, !dbg !971
  br i1 %cmp6, label %if.then.7, label %if.else, !dbg !972

if.then.7:                                        ; preds = %do.body.5
  br label %if.end.8, !dbg !973

if.else:                                          ; preds = %do.body.5
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !975, !tbaa !843
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !977
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !977, !tbaa !904
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4, !dbg !978
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !978, !tbaa !906
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !979, !tbaa !843
  call void %14(%struct._object* %15), !dbg !980
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !981
  call void @llvm.lifetime.end(i64 8, i8* %16) #3, !dbg !981
  br label %do.cond, !dbg !983

do.cond:                                          ; preds = %if.end.8
  br label %do.end, !dbg !984

do.end:                                           ; preds = %do.cond
  br label %if.end.9, !dbg !986

if.end.9:                                         ; preds = %do.end, %do.body
  %17 = bitcast %struct._object** %_py_tmp to i8*, !dbg !988
  call void @llvm.lifetime.end(i64 8, i8* %17) #3, !dbg !988
  br label %do.cond.10, !dbg !991

do.cond.10:                                       ; preds = %if.end.9
  br label %do.end.11, !dbg !992

do.end.11:                                        ; preds = %do.cond.10
  %call12 = call %struct._object* @iobase_unsupported(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0)), !dbg !994
  store %struct._object* null, %struct._object** %retval, !dbg !995
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !995

if.end.13:                                        ; preds = %if.end
  %18 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !996, !tbaa !843
  %cmp14 = icmp eq %struct._object* %18, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), !dbg !997
  br i1 %cmp14, label %if.then.15, label %if.end.28, !dbg !998

if.then.15:                                       ; preds = %if.end.13
  br label %do.body.16, !dbg !999

do.body.16:                                       ; preds = %if.then.15
  %19 = bitcast %struct._object** %_py_decref_tmp17 to i8*, !dbg !1000
  call void @llvm.lifetime.start(i64 8, i8* %19) #3, !dbg !1000
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp17, metadata !406, metadata !847), !dbg !1002
  %20 = load %struct._object*, %struct._object** %res, align 8, !dbg !1003, !tbaa !843
  store %struct._object* %20, %struct._object** %_py_decref_tmp17, align 8, !dbg !1002, !tbaa !843
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8, !dbg !1004, !tbaa !843
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !1006
  %22 = load i64, i64* %ob_refcnt18, align 8, !dbg !1007, !tbaa !864
  %dec19 = add i64 %22, -1, !dbg !1007
  store i64 %dec19, i64* %ob_refcnt18, align 8, !dbg !1007, !tbaa !864
  %cmp20 = icmp ne i64 %dec19, 0, !dbg !1008
  br i1 %cmp20, label %if.then.21, label %if.else.22, !dbg !1009

if.then.21:                                       ; preds = %do.body.16
  br label %if.end.25, !dbg !1010

if.else.22:                                       ; preds = %do.body.16
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8, !dbg !1012, !tbaa !843
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1, !dbg !1014
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8, !dbg !1014, !tbaa !904
  %tp_dealloc24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4, !dbg !1015
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc24, align 8, !dbg !1015, !tbaa !906
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8, !dbg !1016, !tbaa !843
  call void %25(%struct._object* %26), !dbg !1017
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.22, %if.then.21
  %27 = bitcast %struct._object** %_py_decref_tmp17 to i8*, !dbg !1018
  call void @llvm.lifetime.end(i64 8, i8* %27) #3, !dbg !1018
  br label %do.cond.26, !dbg !1020

do.cond.26:                                       ; preds = %if.end.25
  br label %do.end.27, !dbg !1021

do.end.27:                                        ; preds = %do.cond.26
  br label %if.end.28, !dbg !1023

if.end.28:                                        ; preds = %do.end.27, %if.end.13
  %28 = load %struct._object*, %struct._object** %res, align 8, !dbg !1024, !tbaa !843
  store %struct._object* %28, %struct._object** %retval, !dbg !1025
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1025

cleanup:                                          ; preds = %if.end.28, %do.end.11, %if.then
  %29 = bitcast %struct._object** %res to i8*, !dbg !1026
  call void @llvm.lifetime.end(i64 8, i8* %29) #3, !dbg !1026
  %30 = load %struct._object*, %struct._object** %retval, !dbg !1026
  ret %struct._object* %30, !dbg !1026
}

declare %struct._object* @PyObject_CallMethodObjArgs(%struct._object*, %struct._object*, ...) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_unsupported(i8* %message) #0 {
entry:
  %message.addr = alloca i8*, align 8
  %state = alloca %struct._PyIO_State*, align 8
  store i8* %message, i8** %message.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata i8** %message.addr, metadata !455, metadata !847), !dbg !1027
  %0 = bitcast %struct._PyIO_State** %state to i8*, !dbg !1028
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1028
  call void @llvm.dbg.declare(metadata %struct._PyIO_State** %state, metadata !456, metadata !847), !dbg !1029
  %call = call %struct._PyIO_State* @_PyIO_get_module_state(), !dbg !1030
  store %struct._PyIO_State* %call, %struct._PyIO_State** %state, align 8, !dbg !1029, !tbaa !843
  %1 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8, !dbg !1031, !tbaa !843
  %cmp = icmp ne %struct._PyIO_State* %1, null, !dbg !1033
  br i1 %cmp, label %if.then, label %if.end, !dbg !1034

if.then:                                          ; preds = %entry
  %2 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8, !dbg !1035, !tbaa !843
  %unsupported_operation = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %2, i32 0, i32 2, !dbg !1036
  %3 = load %struct._object*, %struct._object** %unsupported_operation, align 8, !dbg !1036, !tbaa !1037
  %4 = load i8*, i8** %message.addr, align 8, !dbg !1039, !tbaa !843
  call void @PyErr_SetString(%struct._object* %3, i8* %4), !dbg !1040
  br label %if.end, !dbg !1040

if.end:                                           ; preds = %if.then, %entry
  %5 = bitcast %struct._PyIO_State** %state to i8*, !dbg !1041
  call void @llvm.lifetime.end(i64 8, i8* %5) #3, !dbg !1041
  ret %struct._object* null, !dbg !1042
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyIOBase_check_readable(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp17 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !412, metadata !847), !dbg !1043
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !413, metadata !847), !dbg !1044
  %0 = bitcast %struct._object** %res to i8*, !dbg !1045
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1045
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !414, metadata !847), !dbg !1046
  %1 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1047, !tbaa !843
  %2 = load %struct._object*, %struct._object** @_PyIO_str_readable, align 8, !dbg !1048, !tbaa !843
  %call = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %1, %struct._object* %2, i8* null), !dbg !1049
  store %struct._object* %call, %struct._object** %res, align 8, !dbg !1046, !tbaa !843
  %3 = load %struct._object*, %struct._object** %res, align 8, !dbg !1050, !tbaa !843
  %cmp = icmp eq %struct._object* %3, null, !dbg !1052
  br i1 %cmp, label %if.then, label %if.end, !dbg !1053

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1054
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1054

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %res, align 8, !dbg !1055, !tbaa !843
  %cmp1 = icmp ne %struct._object* %4, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), !dbg !1056
  br i1 %cmp1, label %if.then.2, label %if.end.13, !dbg !1057

if.then.2:                                        ; preds = %if.end
  br label %do.body, !dbg !1058

do.body:                                          ; preds = %if.then.2
  %5 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1059
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !1059
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !415, metadata !847), !dbg !1061
  %6 = load %struct._object*, %struct._object** %res, align 8, !dbg !1062, !tbaa !843
  store %struct._object* %6, %struct._object** %_py_tmp, align 8, !dbg !1061, !tbaa !843
  %7 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1063, !tbaa !843
  %cmp3 = icmp ne %struct._object* %7, null, !dbg !1064
  br i1 %cmp3, label %if.then.4, label %if.end.9, !dbg !1065

if.then.4:                                        ; preds = %do.body
  store %struct._object* null, %struct._object** %res, align 8, !dbg !1066, !tbaa !843
  br label %do.body.5, !dbg !1068

do.body.5:                                        ; preds = %if.then.4
  %8 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1069
  call void @llvm.lifetime.start(i64 8, i8* %8) #3, !dbg !1069
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !419, metadata !847), !dbg !1071
  %9 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1072, !tbaa !843
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8, !dbg !1071, !tbaa !843
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1073, !tbaa !843
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0, !dbg !1075
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !1076, !tbaa !864
  %dec = add i64 %11, -1, !dbg !1076
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1076, !tbaa !864
  %cmp6 = icmp ne i64 %dec, 0, !dbg !1077
  br i1 %cmp6, label %if.then.7, label %if.else, !dbg !1078

if.then.7:                                        ; preds = %do.body.5
  br label %if.end.8, !dbg !1079

if.else:                                          ; preds = %do.body.5
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1081, !tbaa !843
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !1083
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1083, !tbaa !904
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4, !dbg !1084
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1084, !tbaa !906
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1085, !tbaa !843
  call void %14(%struct._object* %15), !dbg !1086
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1087
  call void @llvm.lifetime.end(i64 8, i8* %16) #3, !dbg !1087
  br label %do.cond, !dbg !1089

do.cond:                                          ; preds = %if.end.8
  br label %do.end, !dbg !1090

do.end:                                           ; preds = %do.cond
  br label %if.end.9, !dbg !1092

if.end.9:                                         ; preds = %do.end, %do.body
  %17 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1094
  call void @llvm.lifetime.end(i64 8, i8* %17) #3, !dbg !1094
  br label %do.cond.10, !dbg !1097

do.cond.10:                                       ; preds = %if.end.9
  br label %do.end.11, !dbg !1098

do.end.11:                                        ; preds = %do.cond.10
  %call12 = call %struct._object* @iobase_unsupported(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0)), !dbg !1100
  store %struct._object* null, %struct._object** %retval, !dbg !1101
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1101

if.end.13:                                        ; preds = %if.end
  %18 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1102, !tbaa !843
  %cmp14 = icmp eq %struct._object* %18, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), !dbg !1103
  br i1 %cmp14, label %if.then.15, label %if.end.28, !dbg !1104

if.then.15:                                       ; preds = %if.end.13
  br label %do.body.16, !dbg !1105

do.body.16:                                       ; preds = %if.then.15
  %19 = bitcast %struct._object** %_py_decref_tmp17 to i8*, !dbg !1106
  call void @llvm.lifetime.start(i64 8, i8* %19) #3, !dbg !1106
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp17, metadata !423, metadata !847), !dbg !1108
  %20 = load %struct._object*, %struct._object** %res, align 8, !dbg !1109, !tbaa !843
  store %struct._object* %20, %struct._object** %_py_decref_tmp17, align 8, !dbg !1108, !tbaa !843
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8, !dbg !1110, !tbaa !843
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !1112
  %22 = load i64, i64* %ob_refcnt18, align 8, !dbg !1113, !tbaa !864
  %dec19 = add i64 %22, -1, !dbg !1113
  store i64 %dec19, i64* %ob_refcnt18, align 8, !dbg !1113, !tbaa !864
  %cmp20 = icmp ne i64 %dec19, 0, !dbg !1114
  br i1 %cmp20, label %if.then.21, label %if.else.22, !dbg !1115

if.then.21:                                       ; preds = %do.body.16
  br label %if.end.25, !dbg !1116

if.else.22:                                       ; preds = %do.body.16
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8, !dbg !1118, !tbaa !843
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1, !dbg !1120
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8, !dbg !1120, !tbaa !904
  %tp_dealloc24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4, !dbg !1121
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc24, align 8, !dbg !1121, !tbaa !906
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8, !dbg !1122, !tbaa !843
  call void %25(%struct._object* %26), !dbg !1123
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.22, %if.then.21
  %27 = bitcast %struct._object** %_py_decref_tmp17 to i8*, !dbg !1124
  call void @llvm.lifetime.end(i64 8, i8* %27) #3, !dbg !1124
  br label %do.cond.26, !dbg !1126

do.cond.26:                                       ; preds = %if.end.25
  br label %do.end.27, !dbg !1127

do.end.27:                                        ; preds = %do.cond.26
  br label %if.end.28, !dbg !1129

if.end.28:                                        ; preds = %do.end.27, %if.end.13
  %28 = load %struct._object*, %struct._object** %res, align 8, !dbg !1130, !tbaa !843
  store %struct._object* %28, %struct._object** %retval, !dbg !1131
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1131

cleanup:                                          ; preds = %if.end.28, %do.end.11, %if.then
  %29 = bitcast %struct._object** %res to i8*, !dbg !1132
  call void @llvm.lifetime.end(i64 8, i8* %29) #3, !dbg !1132
  %30 = load %struct._object*, %struct._object** %retval, !dbg !1132
  ret %struct._object* %30, !dbg !1132
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyIOBase_check_writable(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp17 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !429, metadata !847), !dbg !1133
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !430, metadata !847), !dbg !1134
  %0 = bitcast %struct._object** %res to i8*, !dbg !1135
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1135
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !431, metadata !847), !dbg !1136
  %1 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1137, !tbaa !843
  %2 = load %struct._object*, %struct._object** @_PyIO_str_writable, align 8, !dbg !1138, !tbaa !843
  %call = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %1, %struct._object* %2, i8* null), !dbg !1139
  store %struct._object* %call, %struct._object** %res, align 8, !dbg !1136, !tbaa !843
  %3 = load %struct._object*, %struct._object** %res, align 8, !dbg !1140, !tbaa !843
  %cmp = icmp eq %struct._object* %3, null, !dbg !1142
  br i1 %cmp, label %if.then, label %if.end, !dbg !1143

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1144
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1144

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %res, align 8, !dbg !1145, !tbaa !843
  %cmp1 = icmp ne %struct._object* %4, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), !dbg !1146
  br i1 %cmp1, label %if.then.2, label %if.end.13, !dbg !1147

if.then.2:                                        ; preds = %if.end
  br label %do.body, !dbg !1148

do.body:                                          ; preds = %if.then.2
  %5 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1149
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !1149
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !432, metadata !847), !dbg !1151
  %6 = load %struct._object*, %struct._object** %res, align 8, !dbg !1152, !tbaa !843
  store %struct._object* %6, %struct._object** %_py_tmp, align 8, !dbg !1151, !tbaa !843
  %7 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1153, !tbaa !843
  %cmp3 = icmp ne %struct._object* %7, null, !dbg !1154
  br i1 %cmp3, label %if.then.4, label %if.end.9, !dbg !1155

if.then.4:                                        ; preds = %do.body
  store %struct._object* null, %struct._object** %res, align 8, !dbg !1156, !tbaa !843
  br label %do.body.5, !dbg !1158

do.body.5:                                        ; preds = %if.then.4
  %8 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1159
  call void @llvm.lifetime.start(i64 8, i8* %8) #3, !dbg !1159
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !436, metadata !847), !dbg !1161
  %9 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1162, !tbaa !843
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8, !dbg !1161, !tbaa !843
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1163, !tbaa !843
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0, !dbg !1165
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !1166, !tbaa !864
  %dec = add i64 %11, -1, !dbg !1166
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1166, !tbaa !864
  %cmp6 = icmp ne i64 %dec, 0, !dbg !1167
  br i1 %cmp6, label %if.then.7, label %if.else, !dbg !1168

if.then.7:                                        ; preds = %do.body.5
  br label %if.end.8, !dbg !1169

if.else:                                          ; preds = %do.body.5
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1171, !tbaa !843
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !1173
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1173, !tbaa !904
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4, !dbg !1174
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1174, !tbaa !906
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1175, !tbaa !843
  call void %14(%struct._object* %15), !dbg !1176
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1177
  call void @llvm.lifetime.end(i64 8, i8* %16) #3, !dbg !1177
  br label %do.cond, !dbg !1179

do.cond:                                          ; preds = %if.end.8
  br label %do.end, !dbg !1180

do.end:                                           ; preds = %do.cond
  br label %if.end.9, !dbg !1182

if.end.9:                                         ; preds = %do.end, %do.body
  %17 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1184
  call void @llvm.lifetime.end(i64 8, i8* %17) #3, !dbg !1184
  br label %do.cond.10, !dbg !1187

do.cond.10:                                       ; preds = %if.end.9
  br label %do.end.11, !dbg !1188

do.end.11:                                        ; preds = %do.cond.10
  %call12 = call %struct._object* @iobase_unsupported(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0)), !dbg !1190
  store %struct._object* null, %struct._object** %retval, !dbg !1191
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1191

if.end.13:                                        ; preds = %if.end
  %18 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1192, !tbaa !843
  %cmp14 = icmp eq %struct._object* %18, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), !dbg !1193
  br i1 %cmp14, label %if.then.15, label %if.end.28, !dbg !1194

if.then.15:                                       ; preds = %if.end.13
  br label %do.body.16, !dbg !1195

do.body.16:                                       ; preds = %if.then.15
  %19 = bitcast %struct._object** %_py_decref_tmp17 to i8*, !dbg !1196
  call void @llvm.lifetime.start(i64 8, i8* %19) #3, !dbg !1196
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp17, metadata !440, metadata !847), !dbg !1198
  %20 = load %struct._object*, %struct._object** %res, align 8, !dbg !1199, !tbaa !843
  store %struct._object* %20, %struct._object** %_py_decref_tmp17, align 8, !dbg !1198, !tbaa !843
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8, !dbg !1200, !tbaa !843
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !1202
  %22 = load i64, i64* %ob_refcnt18, align 8, !dbg !1203, !tbaa !864
  %dec19 = add i64 %22, -1, !dbg !1203
  store i64 %dec19, i64* %ob_refcnt18, align 8, !dbg !1203, !tbaa !864
  %cmp20 = icmp ne i64 %dec19, 0, !dbg !1204
  br i1 %cmp20, label %if.then.21, label %if.else.22, !dbg !1205

if.then.21:                                       ; preds = %do.body.16
  br label %if.end.25, !dbg !1206

if.else.22:                                       ; preds = %do.body.16
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8, !dbg !1208, !tbaa !843
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1, !dbg !1210
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8, !dbg !1210, !tbaa !904
  %tp_dealloc24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4, !dbg !1211
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc24, align 8, !dbg !1211, !tbaa !906
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8, !dbg !1212, !tbaa !843
  call void %25(%struct._object* %26), !dbg !1213
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.22, %if.then.21
  %27 = bitcast %struct._object** %_py_decref_tmp17 to i8*, !dbg !1214
  call void @llvm.lifetime.end(i64 8, i8* %27) #3, !dbg !1214
  br label %do.cond.26, !dbg !1216

do.cond.26:                                       ; preds = %if.end.25
  br label %do.end.27, !dbg !1217

do.end.27:                                        ; preds = %do.cond.26
  br label %if.end.28, !dbg !1219

if.end.28:                                        ; preds = %do.end.27, %if.end.13
  %28 = load %struct._object*, %struct._object** %res, align 8, !dbg !1220, !tbaa !843
  store %struct._object* %28, %struct._object** %retval, !dbg !1221
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1221

cleanup:                                          ; preds = %if.end.28, %do.end.11, %if.then
  %29 = bitcast %struct._object** %res to i8*, !dbg !1222
  call void @llvm.lifetime.end(i64 8, i8* %29) #3, !dbg !1222
  %30 = load %struct._object*, %struct._object** %retval, !dbg !1222
  ret %struct._object* %30, !dbg !1222
}

; Function Attrs: nounwind uwtable
define internal void @iobase_dealloc(%struct.iobase* %self) #0 {
entry:
  %self.addr = alloca %struct.iobase*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.iobase* %self, %struct.iobase** %self.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct.iobase** %self.addr, metadata !476, metadata !847), !dbg !1223
  %0 = load %struct.iobase*, %struct.iobase** %self.addr, align 8, !dbg !1224, !tbaa !843
  %1 = bitcast %struct.iobase* %0 to %struct._object*, !dbg !1226
  %call = call i32 @_PyIOBase_finalize(%struct._object* %1), !dbg !1227
  %cmp = icmp slt i32 %call, 0, !dbg !1228
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !1229

if.then:                                          ; preds = %entry
  %2 = load %struct.iobase*, %struct.iobase** %self.addr, align 8, !dbg !1230, !tbaa !843
  %3 = bitcast %struct.iobase* %2 to %struct._object*, !dbg !1233
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !1234
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1234, !tbaa !904
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19, !dbg !1235
  %5 = load i64, i64* %tp_flags, align 8, !dbg !1235, !tbaa !1236
  %and = and i64 %5, 512, !dbg !1237
  %cmp1 = icmp ne i64 %and, 0, !dbg !1238
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !1239

if.then.2:                                        ; preds = %if.then
  %6 = load %struct.iobase*, %struct.iobase** %self.addr, align 8, !dbg !1240, !tbaa !843
  %7 = bitcast %struct.iobase* %6 to %struct._object*, !dbg !1241
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !1242
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8, !dbg !1242, !tbaa !904
  %9 = bitcast %struct._typeobject* %8 to %struct._object*, !dbg !1243
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !1244
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !1245, !tbaa !864
  %inc = add i64 %10, 1, !dbg !1245
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1245, !tbaa !864
  br label %if.end, !dbg !1246

if.end:                                           ; preds = %if.then.2, %if.then
  br label %return, !dbg !1247

if.end.4:                                         ; preds = %entry
  br label %do.body, !dbg !1248

do.body:                                          ; preds = %if.end.4
  %11 = bitcast %union._gc_head** %g to i8*, !dbg !1249
  call void @llvm.lifetime.start(i64 8, i8* %11) #3, !dbg !1249
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !477, metadata !847), !dbg !1251
  %12 = load %struct.iobase*, %struct.iobase** %self.addr, align 8, !dbg !1252, !tbaa !843
  %13 = bitcast %struct.iobase* %12 to %union._gc_head*, !dbg !1253
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %13, i64 -1, !dbg !1254
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8, !dbg !1251, !tbaa !843
  br label %do.body.5, !dbg !1255

do.body.5:                                        ; preds = %do.body
  %14 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1256, !tbaa !843
  %gc = bitcast %union._gc_head* %14 to %struct.anon*, !dbg !1259
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !1260
  %15 = load i64, i64* %gc_refs, align 8, !dbg !1260, !tbaa !1261
  %and6 = and i64 %15, 1, !dbg !1263
  %or = or i64 %and6, -4, !dbg !1264
  %16 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1265, !tbaa !843
  %gc7 = bitcast %union._gc_head* %16 to %struct.anon*, !dbg !1266
  %gc_refs8 = getelementptr inbounds %struct.anon, %struct.anon* %gc7, i32 0, i32 2, !dbg !1267
  store i64 %or, i64* %gc_refs8, align 8, !dbg !1268, !tbaa !1261
  br label %do.cond, !dbg !1269

do.cond:                                          ; preds = %do.body.5
  br label %do.end, !dbg !1270

do.end:                                           ; preds = %do.cond
  %17 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1272, !tbaa !843
  %gc9 = bitcast %union._gc_head* %17 to %struct.anon*, !dbg !1274
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc9, i32 0, i32 0, !dbg !1275
  %18 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !1275, !tbaa !1276
  %19 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1277, !tbaa !843
  %gc10 = bitcast %union._gc_head* %19 to %struct.anon*, !dbg !1278
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 1, !dbg !1279
  %20 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !1279, !tbaa !1280
  %gc11 = bitcast %union._gc_head* %20 to %struct.anon*, !dbg !1281
  %gc_next12 = getelementptr inbounds %struct.anon, %struct.anon* %gc11, i32 0, i32 0, !dbg !1282
  store %union._gc_head* %18, %union._gc_head** %gc_next12, align 8, !dbg !1283, !tbaa !1276
  %21 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1284, !tbaa !843
  %gc13 = bitcast %union._gc_head* %21 to %struct.anon*, !dbg !1285
  %gc_prev14 = getelementptr inbounds %struct.anon, %struct.anon* %gc13, i32 0, i32 1, !dbg !1286
  %22 = load %union._gc_head*, %union._gc_head** %gc_prev14, align 8, !dbg !1286, !tbaa !1280
  %23 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1287, !tbaa !843
  %gc15 = bitcast %union._gc_head* %23 to %struct.anon*, !dbg !1288
  %gc_next16 = getelementptr inbounds %struct.anon, %struct.anon* %gc15, i32 0, i32 0, !dbg !1289
  %24 = load %union._gc_head*, %union._gc_head** %gc_next16, align 8, !dbg !1289, !tbaa !1276
  %gc17 = bitcast %union._gc_head* %24 to %struct.anon*, !dbg !1290
  %gc_prev18 = getelementptr inbounds %struct.anon, %struct.anon* %gc17, i32 0, i32 1, !dbg !1291
  store %union._gc_head* %22, %union._gc_head** %gc_prev18, align 8, !dbg !1292, !tbaa !1280
  %25 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1293, !tbaa !843
  %gc19 = bitcast %union._gc_head* %25 to %struct.anon*, !dbg !1294
  %gc_next20 = getelementptr inbounds %struct.anon, %struct.anon* %gc19, i32 0, i32 0, !dbg !1295
  store %union._gc_head* null, %union._gc_head** %gc_next20, align 8, !dbg !1296, !tbaa !1276
  %26 = bitcast %union._gc_head** %g to i8*, !dbg !1297
  call void @llvm.lifetime.end(i64 8, i8* %26) #3, !dbg !1297
  br label %do.end.22, !dbg !1298

do.end.22:                                        ; preds = %do.end
  %27 = load %struct.iobase*, %struct.iobase** %self.addr, align 8, !dbg !1299, !tbaa !843
  %weakreflist = getelementptr inbounds %struct.iobase, %struct.iobase* %27, i32 0, i32 2, !dbg !1301
  %28 = load %struct._object*, %struct._object** %weakreflist, align 8, !dbg !1301, !tbaa !1302
  %cmp23 = icmp ne %struct._object* %28, null, !dbg !1304
  br i1 %cmp23, label %if.then.24, label %if.end.25, !dbg !1305

if.then.24:                                       ; preds = %do.end.22
  %29 = load %struct.iobase*, %struct.iobase** %self.addr, align 8, !dbg !1306, !tbaa !843
  %30 = bitcast %struct.iobase* %29 to %struct._object*, !dbg !1307
  call void @PyObject_ClearWeakRefs(%struct._object* %30), !dbg !1308
  br label %if.end.25, !dbg !1308

if.end.25:                                        ; preds = %if.then.24, %do.end.22
  br label %do.body.26, !dbg !1309

do.body.26:                                       ; preds = %if.end.25
  %31 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1310
  call void @llvm.lifetime.start(i64 8, i8* %31) #3, !dbg !1310
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !479, metadata !847), !dbg !1312
  %32 = load %struct.iobase*, %struct.iobase** %self.addr, align 8, !dbg !1313, !tbaa !843
  %dict = getelementptr inbounds %struct.iobase, %struct.iobase* %32, i32 0, i32 1, !dbg !1314
  %33 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1314, !tbaa !1315
  store %struct._object* %33, %struct._object** %_py_tmp, align 8, !dbg !1312, !tbaa !843
  %34 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1316, !tbaa !843
  %cmp27 = icmp ne %struct._object* %34, null, !dbg !1317
  br i1 %cmp27, label %if.then.28, label %if.end.38, !dbg !1318

if.then.28:                                       ; preds = %do.body.26
  %35 = load %struct.iobase*, %struct.iobase** %self.addr, align 8, !dbg !1319, !tbaa !843
  %dict29 = getelementptr inbounds %struct.iobase, %struct.iobase* %35, i32 0, i32 1, !dbg !1321
  store %struct._object* null, %struct._object** %dict29, align 8, !dbg !1322, !tbaa !1315
  br label %do.body.30, !dbg !1323

do.body.30:                                       ; preds = %if.then.28
  %36 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1324
  call void @llvm.lifetime.start(i64 8, i8* %36) #3, !dbg !1324
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !481, metadata !847), !dbg !1326
  %37 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1327, !tbaa !843
  store %struct._object* %37, %struct._object** %_py_decref_tmp, align 8, !dbg !1326, !tbaa !843
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1328, !tbaa !843
  %ob_refcnt31 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0, !dbg !1330
  %39 = load i64, i64* %ob_refcnt31, align 8, !dbg !1331, !tbaa !864
  %dec = add i64 %39, -1, !dbg !1331
  store i64 %dec, i64* %ob_refcnt31, align 8, !dbg !1331, !tbaa !864
  %cmp32 = icmp ne i64 %dec, 0, !dbg !1332
  br i1 %cmp32, label %if.then.33, label %if.else, !dbg !1333

if.then.33:                                       ; preds = %do.body.30
  br label %if.end.35, !dbg !1334

if.else:                                          ; preds = %do.body.30
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1336, !tbaa !843
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1, !dbg !1338
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8, !dbg !1338, !tbaa !904
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4, !dbg !1339
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1339, !tbaa !906
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1340, !tbaa !843
  call void %42(%struct._object* %43), !dbg !1341
  br label %if.end.35

if.end.35:                                        ; preds = %if.else, %if.then.33
  %44 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1342
  call void @llvm.lifetime.end(i64 8, i8* %44) #3, !dbg !1342
  br label %do.cond.36, !dbg !1344

do.cond.36:                                       ; preds = %if.end.35
  br label %do.end.37, !dbg !1345

do.end.37:                                        ; preds = %do.cond.36
  br label %if.end.38, !dbg !1347

if.end.38:                                        ; preds = %do.end.37, %do.body.26
  %45 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1349
  call void @llvm.lifetime.end(i64 8, i8* %45) #3, !dbg !1349
  br label %do.end.40, !dbg !1352

do.end.40:                                        ; preds = %if.end.38
  %46 = load %struct.iobase*, %struct.iobase** %self.addr, align 8, !dbg !1353, !tbaa !843
  %47 = bitcast %struct.iobase* %46 to %struct._object*, !dbg !1354
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1, !dbg !1355
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8, !dbg !1355, !tbaa !904
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 38, !dbg !1356
  %49 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !1356, !tbaa !1357
  %50 = load %struct.iobase*, %struct.iobase** %self.addr, align 8, !dbg !1358, !tbaa !843
  %51 = bitcast %struct.iobase* %50 to %struct._object*, !dbg !1359
  %52 = bitcast %struct._object* %51 to i8*, !dbg !1359
  call void %49(i8* %52), !dbg !1360
  br label %return, !dbg !1361

return:                                           ; preds = %do.end.40, %if.end
  ret void, !dbg !1362
}

; Function Attrs: nounwind uwtable
define internal i32 @iobase_traverse(%struct.iobase* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.iobase*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.iobase* %self, %struct.iobase** %self.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct.iobase** %self.addr, metadata !489, metadata !847), !dbg !1364
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !490, metadata !847), !dbg !1365
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !491, metadata !847), !dbg !1366
  br label %do.body, !dbg !1367

do.body:                                          ; preds = %entry
  %0 = load %struct.iobase*, %struct.iobase** %self.addr, align 8, !dbg !1368, !tbaa !843
  %dict = getelementptr inbounds %struct.iobase, %struct.iobase* %0, i32 0, i32 1, !dbg !1370
  %1 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1370, !tbaa !1315
  %tobool = icmp ne %struct._object* %1, null, !dbg !1371
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !1372

if.then:                                          ; preds = %do.body
  %2 = bitcast i32* %vret to i8*, !dbg !1373
  call void @llvm.lifetime.start(i64 4, i8* %2) #3, !dbg !1373
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !492, metadata !847), !dbg !1375
  %3 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !1376, !tbaa !843
  %4 = load %struct.iobase*, %struct.iobase** %self.addr, align 8, !dbg !1377, !tbaa !843
  %dict1 = getelementptr inbounds %struct.iobase, %struct.iobase* %4, i32 0, i32 1, !dbg !1378
  %5 = load %struct._object*, %struct._object** %dict1, align 8, !dbg !1378, !tbaa !1315
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !1379, !tbaa !843
  %call = call i32 %3(%struct._object* %5, i8* %6), !dbg !1376
  store i32 %call, i32* %vret, align 4, !dbg !1375, !tbaa !886
  %7 = load i32, i32* %vret, align 4, !dbg !1380, !tbaa !886
  %tobool2 = icmp ne i32 %7, 0, !dbg !1380
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !1382

if.then.3:                                        ; preds = %if.then
  %8 = load i32, i32* %vret, align 4, !dbg !1383, !tbaa !886
  store i32 %8, i32* %retval, !dbg !1385
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1385

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !1386
  br label %cleanup, !dbg !1386

cleanup:                                          ; preds = %if.end, %if.then.3
  %9 = bitcast i32* %vret to i8*, !dbg !1388
  call void @llvm.lifetime.end(i64 4, i8* %9) #3, !dbg !1388
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 1
  br i1 %SwitchLeaf, label %return, label %NewDefault

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %NewDefault
  br label %if.end.4, !dbg !1391

if.end.4:                                         ; preds = %cleanup.cont, %do.body
  br label %do.end, !dbg !1392

do.end:                                           ; preds = %if.end.4
  store i32 0, i32* %retval, !dbg !1395
  br label %return, !dbg !1395

return:                                           ; preds = %LeafBlock, %do.end
  %10 = load i32, i32* %retval, !dbg !1396
  ret i32 %10, !dbg !1396
}

; Function Attrs: nounwind uwtable
define internal i32 @iobase_clear(%struct.iobase* %self) #0 {
entry:
  %self.addr = alloca %struct.iobase*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.iobase* %self, %struct.iobase** %self.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct.iobase** %self.addr, metadata !500, metadata !847), !dbg !1397
  br label %do.body, !dbg !1398

do.body:                                          ; preds = %entry
  %0 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1399
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1399
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !501, metadata !847), !dbg !1401
  %1 = load %struct.iobase*, %struct.iobase** %self.addr, align 8, !dbg !1402, !tbaa !843
  %dict = getelementptr inbounds %struct.iobase, %struct.iobase* %1, i32 0, i32 1, !dbg !1403
  %2 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1403, !tbaa !1315
  store %struct._object* %2, %struct._object** %_py_tmp, align 8, !dbg !1401, !tbaa !843
  %3 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1404, !tbaa !843
  %cmp = icmp ne %struct._object* %3, null, !dbg !1405
  br i1 %cmp, label %if.then, label %if.end.5, !dbg !1406

if.then:                                          ; preds = %do.body
  %4 = load %struct.iobase*, %struct.iobase** %self.addr, align 8, !dbg !1407, !tbaa !843
  %dict1 = getelementptr inbounds %struct.iobase, %struct.iobase* %4, i32 0, i32 1, !dbg !1409
  store %struct._object* null, %struct._object** %dict1, align 8, !dbg !1410, !tbaa !1315
  br label %do.body.2, !dbg !1411

do.body.2:                                        ; preds = %if.then
  %5 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1412
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !1412
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !503, metadata !847), !dbg !1414
  %6 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1415, !tbaa !843
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8, !dbg !1414, !tbaa !843
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1416, !tbaa !843
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !1418
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !1419, !tbaa !864
  %dec = add i64 %8, -1, !dbg !1419
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1419, !tbaa !864
  %cmp3 = icmp ne i64 %dec, 0, !dbg !1420
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !1421

if.then.4:                                        ; preds = %do.body.2
  br label %if.end, !dbg !1422

if.else:                                          ; preds = %do.body.2
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1424, !tbaa !843
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !1426
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1426, !tbaa !904
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4, !dbg !1427
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1427, !tbaa !906
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1428, !tbaa !843
  call void %11(%struct._object* %12), !dbg !1429
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1430
  call void @llvm.lifetime.end(i64 8, i8* %13) #3, !dbg !1430
  br label %do.cond, !dbg !1432

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1433

do.end:                                           ; preds = %do.cond
  br label %if.end.5, !dbg !1435

if.end.5:                                         ; preds = %do.end, %do.body
  %14 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1437
  call void @llvm.lifetime.end(i64 8, i8* %14) #3, !dbg !1437
  br label %do.end.7, !dbg !1440

do.end.7:                                         ; preds = %if.end.5
  ret i32 0, !dbg !1441
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_iter(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !509, metadata !847), !dbg !1442
  %0 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1443, !tbaa !843
  %call = call %struct._object* @_PyIOBase_check_closed(%struct._object* %0, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0)), !dbg !1445
  %cmp = icmp eq %struct._object* %call, null, !dbg !1446
  br i1 %cmp, label %if.then, label %if.end, !dbg !1447

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1448
  br label %return, !dbg !1448

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1449, !tbaa !843
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0, !dbg !1450
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !1451, !tbaa !864
  %inc = add i64 %2, 1, !dbg !1451
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1451, !tbaa !864
  %3 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1452, !tbaa !843
  store %struct._object* %3, %struct._object** %retval, !dbg !1453
  br label %return, !dbg !1453

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval, !dbg !1454
  ret %struct._object* %4, !dbg !1454
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_iternext(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %line = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !512, metadata !847), !dbg !1455
  %0 = bitcast %struct._object** %line to i8*, !dbg !1456
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1456
  call void @llvm.dbg.declare(metadata %struct._object** %line, metadata !513, metadata !847), !dbg !1457
  %1 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1458, !tbaa !843
  %2 = load %struct._object*, %struct._object** @_PyIO_str_readline, align 8, !dbg !1459, !tbaa !843
  %call = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %1, %struct._object* %2, i8* null), !dbg !1460
  store %struct._object* %call, %struct._object** %line, align 8, !dbg !1457, !tbaa !843
  %3 = load %struct._object*, %struct._object** %line, align 8, !dbg !1461, !tbaa !843
  %cmp = icmp eq %struct._object* %3, null, !dbg !1463
  br i1 %cmp, label %if.then, label %if.end, !dbg !1464

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1465
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1465

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %line, align 8, !dbg !1466, !tbaa !843
  %call1 = call i64 @PyObject_Size(%struct._object* %4), !dbg !1467
  %cmp2 = icmp eq i64 %call1, 0, !dbg !1468
  br i1 %cmp2, label %if.then.3, label %if.end.7, !dbg !1469

if.then.3:                                        ; preds = %if.end
  br label %do.body, !dbg !1470

do.body:                                          ; preds = %if.then.3
  %5 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1471
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !1471
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !514, metadata !847), !dbg !1473
  %6 = load %struct._object*, %struct._object** %line, align 8, !dbg !1474, !tbaa !843
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8, !dbg !1473, !tbaa !843
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1475, !tbaa !843
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !1477
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !1478, !tbaa !864
  %dec = add i64 %8, -1, !dbg !1478
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1478, !tbaa !864
  %cmp4 = icmp ne i64 %dec, 0, !dbg !1479
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !1480

if.then.5:                                        ; preds = %do.body
  br label %if.end.6, !dbg !1481

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1483, !tbaa !843
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !1485
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1485, !tbaa !904
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4, !dbg !1486
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1486, !tbaa !906
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1487, !tbaa !843
  call void %11(%struct._object* %12), !dbg !1488
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1489
  call void @llvm.lifetime.end(i64 8, i8* %13) #3, !dbg !1489
  br label %do.cond, !dbg !1491

do.cond:                                          ; preds = %if.end.6
  br label %do.end, !dbg !1492

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !1494
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1494

if.end.7:                                         ; preds = %if.end
  %14 = load %struct._object*, %struct._object** %line, align 8, !dbg !1495, !tbaa !843
  store %struct._object* %14, %struct._object** %retval, !dbg !1496
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1496

cleanup:                                          ; preds = %if.end.7, %do.end, %if.then
  %15 = bitcast %struct._object** %line to i8*, !dbg !1497
  call void @llvm.lifetime.end(i64 8, i8* %15) #3, !dbg !1497
  %16 = load %struct._object*, %struct._object** %retval, !dbg !1497
  ret %struct._object* %16, !dbg !1497
}

declare %struct._object* @PyType_GenericNew(%struct._typeobject*, %struct._object*, %struct._object*) #2

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
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !682, metadata !847), !dbg !1498
  %0 = bitcast %struct._object** %res to i8*, !dbg !1499
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1499
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !683, metadata !847), !dbg !1500
  %1 = bitcast %struct._object** %error_type to i8*, !dbg !1501
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1501
  call void @llvm.dbg.declare(metadata %struct._object** %error_type, metadata !684, metadata !847), !dbg !1502
  %2 = bitcast %struct._object** %error_value to i8*, !dbg !1501
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1501
  call void @llvm.dbg.declare(metadata %struct._object** %error_value, metadata !685, metadata !847), !dbg !1503
  %3 = bitcast %struct._object** %error_traceback to i8*, !dbg !1501
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !1501
  call void @llvm.dbg.declare(metadata %struct._object** %error_traceback, metadata !686, metadata !847), !dbg !1504
  %4 = bitcast i32* %closed to i8*, !dbg !1505
  call void @llvm.lifetime.start(i64 4, i8* %4) #3, !dbg !1505
  call void @llvm.dbg.declare(metadata i32* %closed, metadata !687, metadata !847), !dbg !1506
  call void @PyErr_Fetch(%struct._object** %error_type, %struct._object** %error_value, %struct._object** %error_traceback), !dbg !1507
  %5 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1508, !tbaa !843
  %6 = load %struct._object*, %struct._object** @_PyIO_str_closed, align 8, !dbg !1509, !tbaa !843
  %call = call %struct._object* @PyObject_GetAttr(%struct._object* %5, %struct._object* %6), !dbg !1510
  store %struct._object* %call, %struct._object** %res, align 8, !dbg !1511, !tbaa !843
  %7 = load %struct._object*, %struct._object** %res, align 8, !dbg !1512, !tbaa !843
  %cmp = icmp eq %struct._object* %7, null, !dbg !1513
  br i1 %cmp, label %if.then, label %if.else, !dbg !1514

if.then:                                          ; preds = %entry
  call void @PyErr_Clear(), !dbg !1515
  store i32 -1, i32* %closed, align 4, !dbg !1517, !tbaa !886
  br label %if.end.8, !dbg !1518

if.else:                                          ; preds = %entry
  %8 = load %struct._object*, %struct._object** %res, align 8, !dbg !1519, !tbaa !843
  %call1 = call i32 @PyObject_IsTrue(%struct._object* %8), !dbg !1520
  store i32 %call1, i32* %closed, align 4, !dbg !1521, !tbaa !886
  br label %do.body, !dbg !1522

do.body:                                          ; preds = %if.else
  %9 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1523
  call void @llvm.lifetime.start(i64 8, i8* %9) #3, !dbg !1523
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !688, metadata !847), !dbg !1525
  %10 = load %struct._object*, %struct._object** %res, align 8, !dbg !1526, !tbaa !843
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8, !dbg !1525, !tbaa !843
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1527, !tbaa !843
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !1529
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !1530, !tbaa !864
  %dec = add i64 %12, -1, !dbg !1530
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1530, !tbaa !864
  %cmp2 = icmp ne i64 %dec, 0, !dbg !1531
  br i1 %cmp2, label %if.then.3, label %if.else.4, !dbg !1532

if.then.3:                                        ; preds = %do.body
  br label %if.end, !dbg !1533

if.else.4:                                        ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1535, !tbaa !843
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !1537
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1537, !tbaa !904
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4, !dbg !1538
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1538, !tbaa !906
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1539, !tbaa !843
  call void %15(%struct._object* %16), !dbg !1540
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1541
  call void @llvm.lifetime.end(i64 8, i8* %17) #3, !dbg !1541
  br label %do.cond, !dbg !1543

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1544

do.end:                                           ; preds = %do.cond
  %18 = load i32, i32* %closed, align 4, !dbg !1546, !tbaa !886
  %cmp5 = icmp eq i32 %18, -1, !dbg !1548
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !1549

if.then.6:                                        ; preds = %do.end
  call void @PyErr_Clear(), !dbg !1550
  br label %if.end.7, !dbg !1550

if.end.7:                                         ; preds = %if.then.6, %do.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then
  %19 = load i32, i32* %closed, align 4, !dbg !1551, !tbaa !886
  %cmp9 = icmp eq i32 %19, 0, !dbg !1552
  br i1 %cmp9, label %if.then.10, label %if.end.31, !dbg !1553

if.then.10:                                       ; preds = %if.end.8
  %20 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1554, !tbaa !843
  %call11 = call i32 @_PyObject_SetAttrId(%struct._object* %20, %struct._Py_Identifier* @iobase_finalize.PyId__finalizing, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0)), !dbg !1556
  %tobool = icmp ne i32 %call11, 0, !dbg !1556
  br i1 %tobool, label %if.then.12, label %if.end.13, !dbg !1557

if.then.12:                                       ; preds = %if.then.10
  call void @PyErr_Clear(), !dbg !1558
  br label %if.end.13, !dbg !1558

if.end.13:                                        ; preds = %if.then.12, %if.then.10
  %21 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1559, !tbaa !843
  %22 = load %struct._object*, %struct._object** @_PyIO_str_close, align 8, !dbg !1560, !tbaa !843
  %call14 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %21, %struct._object* %22, i8* null), !dbg !1561
  store %struct._object* %call14, %struct._object** %res, align 8, !dbg !1562, !tbaa !843
  %23 = load %struct._object*, %struct._object** %res, align 8, !dbg !1563, !tbaa !843
  %cmp15 = icmp eq %struct._object* %23, null, !dbg !1564
  br i1 %cmp15, label %if.then.16, label %if.else.17, !dbg !1565

if.then.16:                                       ; preds = %if.end.13
  call void @PyErr_Clear(), !dbg !1566
  br label %if.end.30, !dbg !1566

if.else.17:                                       ; preds = %if.end.13
  br label %do.body.18, !dbg !1567

do.body.18:                                       ; preds = %if.else.17
  %24 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !1568
  call void @llvm.lifetime.start(i64 8, i8* %24) #3, !dbg !1568
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp19, metadata !692, metadata !847), !dbg !1570
  %25 = load %struct._object*, %struct._object** %res, align 8, !dbg !1571, !tbaa !843
  store %struct._object* %25, %struct._object** %_py_decref_tmp19, align 8, !dbg !1570, !tbaa !843
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !1572, !tbaa !843
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0, !dbg !1574
  %27 = load i64, i64* %ob_refcnt20, align 8, !dbg !1575, !tbaa !864
  %dec21 = add i64 %27, -1, !dbg !1575
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !1575, !tbaa !864
  %cmp22 = icmp ne i64 %dec21, 0, !dbg !1576
  br i1 %cmp22, label %if.then.23, label %if.else.24, !dbg !1577

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.27, !dbg !1578

if.else.24:                                       ; preds = %do.body.18
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !1580, !tbaa !843
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1, !dbg !1582
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !1582, !tbaa !904
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4, !dbg !1583
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !1583, !tbaa !906
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !1584, !tbaa !843
  call void %30(%struct._object* %31), !dbg !1585
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  %32 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !1586
  call void @llvm.lifetime.end(i64 8, i8* %32) #3, !dbg !1586
  br label %do.cond.28, !dbg !1588

do.cond.28:                                       ; preds = %if.end.27
  br label %do.end.29, !dbg !1589

do.end.29:                                        ; preds = %do.cond.28
  br label %if.end.30

if.end.30:                                        ; preds = %do.end.29, %if.then.16
  br label %if.end.31, !dbg !1591

if.end.31:                                        ; preds = %if.end.30, %if.end.8
  %33 = load %struct._object*, %struct._object** %error_type, align 8, !dbg !1592, !tbaa !843
  %34 = load %struct._object*, %struct._object** %error_value, align 8, !dbg !1593, !tbaa !843
  %35 = load %struct._object*, %struct._object** %error_traceback, align 8, !dbg !1594, !tbaa !843
  call void @PyErr_Restore(%struct._object* %33, %struct._object* %34, %struct._object* %35), !dbg !1595
  %36 = bitcast i32* %closed to i8*, !dbg !1596
  call void @llvm.lifetime.end(i64 4, i8* %36) #3, !dbg !1596
  %37 = bitcast %struct._object** %error_traceback to i8*, !dbg !1596
  call void @llvm.lifetime.end(i64 8, i8* %37) #3, !dbg !1596
  %38 = bitcast %struct._object** %error_value to i8*, !dbg !1596
  call void @llvm.lifetime.end(i64 8, i8* %38) #3, !dbg !1596
  %39 = bitcast %struct._object** %error_type to i8*, !dbg !1596
  call void @llvm.lifetime.end(i64 8, i8* %39) #3, !dbg !1596
  %40 = bitcast %struct._object** %res to i8*, !dbg !1596
  call void @llvm.lifetime.end(i64 8, i8* %40) #3, !dbg !1596
  ret void, !dbg !1596
}

declare %struct._object* @PyObject_GetAttr(%struct._object*, %struct._object*) #2

declare i32 @PyObject_IsTrue(%struct._object*) #2

declare %struct._PyIO_State* @_PyIO_get_module_state() #2

declare void @PyObject_ClearWeakRefs(%struct._object*) #2

declare i64 @PyObject_Size(%struct._object*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_seek(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !520, metadata !847), !dbg !1597
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !521, metadata !847), !dbg !1598
  %call = call %struct._object* @iobase_unsupported(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0)), !dbg !1599
  ret %struct._object* %call, !dbg !1600
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_tell(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !524, metadata !847), !dbg !1601
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !525, metadata !847), !dbg !1602
  %0 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1603, !tbaa !843
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %0, %struct._Py_Identifier* @iobase_tell.PyId_seek, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i32 0, i32 1), !dbg !1604
  ret %struct._object* %call, !dbg !1605
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_truncate(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !528, metadata !847), !dbg !1606
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !529, metadata !847), !dbg !1607
  %call = call %struct._object* @iobase_unsupported(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0)), !dbg !1608
  ret %struct._object* %call, !dbg !1609
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_flush(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !532, metadata !847), !dbg !1610
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !533, metadata !847), !dbg !1611
  %0 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1612, !tbaa !843
  %call = call i32 @_PyObject_HasAttrId(%struct._object* %0, %struct._Py_Identifier* @PyId___IOBase_closed), !dbg !1614
  %tobool = icmp ne i32 %call, 0, !dbg !1614
  br i1 %tobool, label %if.then, label %if.end, !dbg !1615

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1616, !tbaa !843
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0)), !dbg !1618
  store %struct._object* null, %struct._object** %retval, !dbg !1619
  br label %return, !dbg !1619

if.end:                                           ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1620, !tbaa !864
  %inc = add i64 %2, 1, !dbg !1620
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1620, !tbaa !864
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1621
  br label %return, !dbg !1621

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval, !dbg !1622
  ret %struct._object* %3, !dbg !1622
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_close(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !536, metadata !847), !dbg !1623
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !537, metadata !847), !dbg !1624
  %0 = bitcast %struct._object** %res to i8*, !dbg !1625
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1625
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !538, metadata !847), !dbg !1626
  %1 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1627, !tbaa !843
  %call = call i32 @_PyObject_HasAttrId(%struct._object* %1, %struct._Py_Identifier* @PyId___IOBase_closed), !dbg !1629
  %tobool = icmp ne i32 %call, 0, !dbg !1629
  br i1 %tobool, label %if.then, label %if.end, !dbg !1630

if.then:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1631, !tbaa !864
  %inc = add i64 %2, 1, !dbg !1631
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1631, !tbaa !864
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1632
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1632

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1633, !tbaa !843
  %4 = load %struct._object*, %struct._object** @_PyIO_str_flush, align 8, !dbg !1634, !tbaa !843
  %call1 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %3, %struct._object* %4, i8* null), !dbg !1635
  store %struct._object* %call1, %struct._object** %res, align 8, !dbg !1636, !tbaa !843
  %5 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1637, !tbaa !843
  %call2 = call i32 @_PyObject_SetAttrId(%struct._object* %5, %struct._Py_Identifier* @PyId___IOBase_closed, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0)), !dbg !1638
  %cmp = icmp slt i32 %call2, 0, !dbg !1639
  br i1 %cmp, label %if.then.3, label %if.end.13, !dbg !1640

if.then.3:                                        ; preds = %if.end
  br label %do.body, !dbg !1641

do.body:                                          ; preds = %if.then.3
  %6 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1642
  call void @llvm.lifetime.start(i64 8, i8* %6) #3, !dbg !1642
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !539, metadata !847), !dbg !1644
  %7 = load %struct._object*, %struct._object** %res, align 8, !dbg !1645, !tbaa !843
  store %struct._object* %7, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1644, !tbaa !843
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1646, !tbaa !843
  %cmp4 = icmp ne %struct._object* %8, null, !dbg !1647
  br i1 %cmp4, label %if.then.5, label %if.end.10, !dbg !1648

if.then.5:                                        ; preds = %do.body
  br label %do.body.6, !dbg !1649

do.body.6:                                        ; preds = %if.then.5
  %9 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1651
  call void @llvm.lifetime.start(i64 8, i8* %9) #3, !dbg !1651
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !543, metadata !847), !dbg !1653
  %10 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1654, !tbaa !843
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8, !dbg !1653, !tbaa !843
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1655, !tbaa !843
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !1657
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !1658, !tbaa !864
  %dec = add i64 %12, -1, !dbg !1658
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1658, !tbaa !864
  %cmp7 = icmp ne i64 %dec, 0, !dbg !1659
  br i1 %cmp7, label %if.then.8, label %if.else, !dbg !1660

if.then.8:                                        ; preds = %do.body.6
  br label %if.end.9, !dbg !1661

if.else:                                          ; preds = %do.body.6
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1663, !tbaa !843
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !1665
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1665, !tbaa !904
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4, !dbg !1666
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1666, !tbaa !906
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1667, !tbaa !843
  call void %15(%struct._object* %16), !dbg !1668
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1669
  call void @llvm.lifetime.end(i64 8, i8* %17) #3, !dbg !1669
  br label %do.cond, !dbg !1671

do.cond:                                          ; preds = %if.end.9
  br label %do.end, !dbg !1672

do.end:                                           ; preds = %do.cond
  br label %if.end.10, !dbg !1674

if.end.10:                                        ; preds = %do.end, %do.body
  %18 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1676
  call void @llvm.lifetime.end(i64 8, i8* %18) #3, !dbg !1676
  br label %do.cond.11, !dbg !1679

do.cond.11:                                       ; preds = %if.end.10
  br label %do.end.12, !dbg !1680

do.end.12:                                        ; preds = %do.cond.11
  store %struct._object* null, %struct._object** %retval, !dbg !1682
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1682

if.end.13:                                        ; preds = %if.end
  %19 = load %struct._object*, %struct._object** %res, align 8, !dbg !1683, !tbaa !843
  %cmp14 = icmp eq %struct._object* %19, null, !dbg !1685
  br i1 %cmp14, label %if.then.15, label %if.end.16, !dbg !1686

if.then.15:                                       ; preds = %if.end.13
  store %struct._object* null, %struct._object** %retval, !dbg !1687
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1687

if.end.16:                                        ; preds = %if.end.13
  br label %do.body.17, !dbg !1688

do.body.17:                                       ; preds = %if.end.16
  %20 = bitcast %struct._object** %_py_decref_tmp18 to i8*, !dbg !1689
  call void @llvm.lifetime.start(i64 8, i8* %20) #3, !dbg !1689
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp18, metadata !546, metadata !847), !dbg !1691
  %21 = load %struct._object*, %struct._object** %res, align 8, !dbg !1692, !tbaa !843
  store %struct._object* %21, %struct._object** %_py_decref_tmp18, align 8, !dbg !1691, !tbaa !843
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8, !dbg !1693, !tbaa !843
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !1695
  %23 = load i64, i64* %ob_refcnt19, align 8, !dbg !1696, !tbaa !864
  %dec20 = add i64 %23, -1, !dbg !1696
  store i64 %dec20, i64* %ob_refcnt19, align 8, !dbg !1696, !tbaa !864
  %cmp21 = icmp ne i64 %dec20, 0, !dbg !1697
  br i1 %cmp21, label %if.then.22, label %if.else.23, !dbg !1698

if.then.22:                                       ; preds = %do.body.17
  br label %if.end.26, !dbg !1699

if.else.23:                                       ; preds = %do.body.17
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8, !dbg !1701, !tbaa !843
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !1703
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8, !dbg !1703, !tbaa !904
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !1704
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8, !dbg !1704, !tbaa !906
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8, !dbg !1705, !tbaa !843
  call void %26(%struct._object* %27), !dbg !1706
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.22
  %28 = bitcast %struct._object** %_py_decref_tmp18 to i8*, !dbg !1707
  call void @llvm.lifetime.end(i64 8, i8* %28) #3, !dbg !1707
  br label %do.cond.27, !dbg !1709

do.cond.27:                                       ; preds = %if.end.26
  br label %do.end.28, !dbg !1710

do.end.28:                                        ; preds = %do.cond.27
  %29 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1712, !tbaa !864
  %inc29 = add i64 %29, 1, !dbg !1712
  store i64 %inc29, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1712, !tbaa !864
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1713
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1713

cleanup:                                          ; preds = %do.end.28, %if.then.15, %do.end.12, %if.then
  %30 = bitcast %struct._object** %res to i8*, !dbg !1714
  call void @llvm.lifetime.end(i64 8, i8* %30) #3, !dbg !1714
  %31 = load %struct._object*, %struct._object** %retval, !dbg !1714
  ret %struct._object* %31, !dbg !1714
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_seekable(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !550, metadata !847), !dbg !1715
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !551, metadata !847), !dbg !1716
  %0 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1717, !tbaa !864
  %inc = add i64 %0, 1, !dbg !1717
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1717, !tbaa !864
  ret %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), !dbg !1718
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_readable(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !554, metadata !847), !dbg !1719
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !555, metadata !847), !dbg !1720
  %0 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1721, !tbaa !864
  %inc = add i64 %0, 1, !dbg !1721
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1721, !tbaa !864
  ret %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), !dbg !1722
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_writable(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !558, metadata !847), !dbg !1723
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !559, metadata !847), !dbg !1724
  %0 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1725, !tbaa !864
  %inc = add i64 %0, 1, !dbg !1725
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1725, !tbaa !864
  ret %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), !dbg !1726
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_fileno(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !562, metadata !847), !dbg !1727
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !563, metadata !847), !dbg !1728
  %call = call %struct._object* @iobase_unsupported(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0)), !dbg !1729
  ret %struct._object* %call, !dbg !1730
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_isatty(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !566, metadata !847), !dbg !1731
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !567, metadata !847), !dbg !1732
  %0 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1733, !tbaa !843
  %call = call %struct._object* @_PyIOBase_check_closed(%struct._object* %0, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0)), !dbg !1735
  %cmp = icmp eq %struct._object* %call, null, !dbg !1736
  br i1 %cmp, label %if.then, label %if.end, !dbg !1737

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1738
  br label %return, !dbg !1738

if.end:                                           ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1739, !tbaa !864
  %inc = add i64 %1, 1, !dbg !1739
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1739, !tbaa !864
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !1740
  br label %return, !dbg !1740

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval, !dbg !1741
  ret %struct._object* %2, !dbg !1741
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_enter(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !570, metadata !847), !dbg !1742
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !571, metadata !847), !dbg !1743
  %0 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1744, !tbaa !843
  %call = call %struct._object* @_PyIOBase_check_closed(%struct._object* %0, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0)), !dbg !1746
  %cmp = icmp eq %struct._object* %call, null, !dbg !1747
  br i1 %cmp, label %if.then, label %if.end, !dbg !1748

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1749
  br label %return, !dbg !1749

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1750, !tbaa !843
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0, !dbg !1751
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !1752, !tbaa !864
  %inc = add i64 %2, 1, !dbg !1752
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1752, !tbaa !864
  %3 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1753, !tbaa !843
  store %struct._object* %3, %struct._object** %retval, !dbg !1754
  br label %return, !dbg !1754

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval, !dbg !1755
  ret %struct._object* %4, !dbg !1755
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_exit(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !574, metadata !847), !dbg !1756
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !575, metadata !847), !dbg !1757
  %0 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1758, !tbaa !843
  %1 = load %struct._object*, %struct._object** @_PyIO_str_close, align 8, !dbg !1759, !tbaa !843
  %call = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %0, %struct._object* %1, i8* null), !dbg !1760
  ret %struct._object* %call, !dbg !1761
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
  %cleanup.dest.slot = alloca i32
  %nreadahead = alloca i64, align 8
  %b = alloca %struct._object*, align 8
  %readahead = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %buf = alloca i8*, align 8
  %_py_decref_tmp65 = alloca %struct._object*, align 8
  %_py_decref_tmp97 = alloca %struct._object*, align 8
  %_py_decref_tmp115 = alloca %struct._object*, align 8
  %_py_decref_tmp135 = alloca %struct._object*, align 8
  %_py_decref_tmp154 = alloca %struct._object*, align 8
  %_py_decref_tmp194 = alloca %struct._object*, align 8
  %_py_decref_tmp207 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !578, metadata !847), !dbg !1762
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !579, metadata !847), !dbg !1763
  %0 = bitcast i64* %limit to i8*, !dbg !1764
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1764
  call void @llvm.dbg.declare(metadata i64* %limit, metadata !580, metadata !847), !dbg !1765
  store i64 -1, i64* %limit, align 8, !dbg !1765, !tbaa !1766
  %1 = bitcast i32* %has_peek to i8*, !dbg !1767
  call void @llvm.lifetime.start(i64 4, i8* %1) #3, !dbg !1767
  call void @llvm.dbg.declare(metadata i32* %has_peek, metadata !581, metadata !847), !dbg !1768
  store i32 0, i32* %has_peek, align 4, !dbg !1768, !tbaa !886
  %2 = bitcast %struct._object** %buffer to i8*, !dbg !1769
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1769
  call void @llvm.dbg.declare(metadata %struct._object** %buffer, metadata !582, metadata !847), !dbg !1770
  %3 = bitcast %struct._object** %result to i8*, !dbg !1769
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !1769
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !583, metadata !847), !dbg !1771
  %4 = bitcast i64* %old_size to i8*, !dbg !1772
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !1772
  call void @llvm.dbg.declare(metadata i64* %old_size, metadata !584, metadata !847), !dbg !1773
  store i64 -1, i64* %old_size, align 8, !dbg !1773, !tbaa !1766
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1774, !tbaa !843
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i32 (%struct._object*, i8*)* @_PyIO_ConvertSsize_t, i64* %limit), !dbg !1776
  %tobool = icmp ne i32 %call, 0, !dbg !1776
  br i1 %tobool, label %if.end, label %if.then, !dbg !1777

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1778
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.219, !dbg !1778

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1780, !tbaa !843
  %call1 = call i32 @_PyObject_HasAttrId(%struct._object* %6, %struct._Py_Identifier* @iobase_readline.PyId_peek), !dbg !1782
  %tobool2 = icmp ne i32 %call1, 0, !dbg !1782
  br i1 %tobool2, label %if.then.3, label %if.end.4, !dbg !1783

if.then.3:                                        ; preds = %if.end
  store i32 1, i32* %has_peek, align 4, !dbg !1784, !tbaa !886
  br label %if.end.4, !dbg !1785

if.end.4:                                         ; preds = %if.then.3, %if.end
  %call5 = call %struct._object* @PyByteArray_FromStringAndSize(i8* null, i64 0), !dbg !1786
  store %struct._object* %call5, %struct._object** %buffer, align 8, !dbg !1787, !tbaa !843
  %7 = load %struct._object*, %struct._object** %buffer, align 8, !dbg !1788, !tbaa !843
  %cmp = icmp eq %struct._object* %7, null, !dbg !1790
  br i1 %cmp, label %if.then.6, label %if.end.7, !dbg !1791

if.then.6:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval, !dbg !1792
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.219, !dbg !1792

if.end.7:                                         ; preds = %if.end.4
  br label %while.cond, !dbg !1793

while.cond:                                       ; preds = %NodeBlock, %cleanup.cont.183, %if.end.7
  %8 = load i64, i64* %limit, align 8, !dbg !1794, !tbaa !1766
  %cmp8 = icmp slt i64 %8, 0, !dbg !1797
  br i1 %cmp8, label %lor.end, label %lor.rhs, !dbg !1798

lor.rhs:                                          ; preds = %while.cond
  %9 = load %struct._object*, %struct._object** %buffer, align 8, !dbg !1799, !tbaa !843
  %10 = bitcast %struct._object* %9 to %struct.PyVarObject*, !dbg !1801
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %10, i32 0, i32 1, !dbg !1802
  %11 = load i64, i64* %ob_size, align 8, !dbg !1802, !tbaa !1803
  %12 = load i64, i64* %limit, align 8, !dbg !1804, !tbaa !1766
  %cmp9 = icmp slt i64 %11, %12, !dbg !1805
  br label %lor.end, !dbg !1798

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %13 = phi i1 [ true, %while.cond ], [ %cmp9, %lor.rhs ]
  br i1 %13, label %while.body, label %while.end, !dbg !1806

while.body:                                       ; preds = %lor.end
  %14 = bitcast i64* %nreadahead to i8*, !dbg !1809
  call void @llvm.lifetime.start(i64 8, i8* %14) #3, !dbg !1809
  call void @llvm.dbg.declare(metadata i64* %nreadahead, metadata !585, metadata !847), !dbg !1810
  store i64 1, i64* %nreadahead, align 8, !dbg !1810, !tbaa !1766
  %15 = bitcast %struct._object** %b to i8*, !dbg !1811
  call void @llvm.lifetime.start(i64 8, i8* %15) #3, !dbg !1811
  call void @llvm.dbg.declare(metadata %struct._object** %b, metadata !587, metadata !847), !dbg !1812
  %16 = load i32, i32* %has_peek, align 4, !dbg !1813, !tbaa !886
  %tobool10 = icmp ne i32 %16, 0, !dbg !1813
  br i1 %tobool10, label %if.then.11, label %if.end.77, !dbg !1814

if.then.11:                                       ; preds = %while.body
  %17 = bitcast %struct._object** %readahead to i8*, !dbg !1815
  call void @llvm.lifetime.start(i64 8, i8* %17) #3, !dbg !1815
  call void @llvm.dbg.declare(metadata %struct._object** %readahead, metadata !588, metadata !847), !dbg !1816
  %18 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1817, !tbaa !843
  %call12 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %18, %struct._Py_Identifier* @iobase_readline.PyId_peek, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i32 1), !dbg !1818
  store %struct._object* %call12, %struct._object** %readahead, align 8, !dbg !1816, !tbaa !843
  %19 = load %struct._object*, %struct._object** %readahead, align 8, !dbg !1819, !tbaa !843
  %cmp13 = icmp eq %struct._object* %19, null, !dbg !1821
  br i1 %cmp13, label %if.then.14, label %if.end.19, !dbg !1822

if.then.14:                                       ; preds = %if.then.11
  %call15 = call i32 @_PyIO_trap_eintr(), !dbg !1823
  %tobool16 = icmp ne i32 %call15, 0, !dbg !1823
  br i1 %tobool16, label %if.then.17, label %if.end.18, !dbg !1826

if.then.17:                                       ; preds = %if.then.14
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1827

if.end.18:                                        ; preds = %if.then.14
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1829

if.end.19:                                        ; preds = %if.then.11
  %20 = load %struct._object*, %struct._object** %readahead, align 8, !dbg !1830, !tbaa !843
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1, !dbg !1831
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1831, !tbaa !904
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 19, !dbg !1832
  %22 = load i64, i64* %tp_flags, align 8, !dbg !1832, !tbaa !1236
  %and = and i64 %22, 134217728, !dbg !1833
  %cmp20 = icmp ne i64 %and, 0, !dbg !1834
  br i1 %cmp20, label %if.end.28, label %if.then.21, !dbg !1835

if.then.21:                                       ; preds = %if.end.19
  %23 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !1836, !tbaa !843
  %24 = load %struct._object*, %struct._object** %readahead, align 8, !dbg !1837, !tbaa !843
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !1838
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8, !dbg !1838, !tbaa !904
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 1, !dbg !1839
  %26 = load i8*, i8** %tp_name, align 8, !dbg !1839, !tbaa !1840
  %call23 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %23, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.30, i32 0, i32 0), i8* %26), !dbg !1841
  br label %do.body, !dbg !1842

do.body:                                          ; preds = %if.then.21
  %27 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1843
  call void @llvm.lifetime.start(i64 8, i8* %27) #3, !dbg !1843
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !591, metadata !847), !dbg !1845
  %28 = load %struct._object*, %struct._object** %readahead, align 8, !dbg !1846, !tbaa !843
  store %struct._object* %28, %struct._object** %_py_decref_tmp, align 8, !dbg !1845, !tbaa !843
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1847, !tbaa !843
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0, !dbg !1849
  %30 = load i64, i64* %ob_refcnt, align 8, !dbg !1850, !tbaa !864
  %dec = add i64 %30, -1, !dbg !1850
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1850, !tbaa !864
  %cmp24 = icmp ne i64 %dec, 0, !dbg !1851
  br i1 %cmp24, label %if.then.25, label %if.else, !dbg !1852

if.then.25:                                       ; preds = %do.body
  br label %if.end.27, !dbg !1853

if.else:                                          ; preds = %do.body
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1855, !tbaa !843
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1, !dbg !1857
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8, !dbg !1857, !tbaa !904
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4, !dbg !1858
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1858, !tbaa !906
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1859, !tbaa !843
  call void %33(%struct._object* %34), !dbg !1860
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.25
  %35 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1861
  call void @llvm.lifetime.end(i64 8, i8* %35) #3, !dbg !1861
  br label %do.cond, !dbg !1863

do.cond:                                          ; preds = %if.end.27
  br label %do.end, !dbg !1864

do.end:                                           ; preds = %do.cond
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1866

if.end.28:                                        ; preds = %if.end.19
  %36 = load %struct._object*, %struct._object** %readahead, align 8, !dbg !1867, !tbaa !843
  %37 = bitcast %struct._object* %36 to %struct.PyVarObject*, !dbg !1868
  %ob_size29 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %37, i32 0, i32 1, !dbg !1869
  %38 = load i64, i64* %ob_size29, align 8, !dbg !1869, !tbaa !1803
  %cmp30 = icmp sgt i64 %38, 0, !dbg !1870
  br i1 %cmp30, label %if.then.31, label %if.end.63, !dbg !1871

if.then.31:                                       ; preds = %if.end.28
  %39 = bitcast i64* %n to i8*, !dbg !1872
  call void @llvm.lifetime.start(i64 8, i8* %39) #3, !dbg !1872
  call void @llvm.dbg.declare(metadata i64* %n, metadata !595, metadata !847), !dbg !1873
  store i64 0, i64* %n, align 8, !dbg !1873, !tbaa !1766
  %40 = bitcast i8** %buf to i8*, !dbg !1874
  call void @llvm.lifetime.start(i64 8, i8* %40) #3, !dbg !1874
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !598, metadata !847), !dbg !1875
  %41 = load %struct._object*, %struct._object** %readahead, align 8, !dbg !1876, !tbaa !843
  %42 = bitcast %struct._object* %41 to %struct.PyBytesObject*, !dbg !1877
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %42, i32 0, i32 2, !dbg !1878
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !1879
  store i8* %arraydecay, i8** %buf, align 8, !dbg !1875, !tbaa !843
  %43 = load i64, i64* %limit, align 8, !dbg !1880, !tbaa !1766
  %cmp32 = icmp sge i64 %43, 0, !dbg !1882
  br i1 %cmp32, label %if.then.33, label %if.else.46, !dbg !1883

if.then.33:                                       ; preds = %if.then.31
  br label %do.body.34, !dbg !1884

do.body.34:                                       ; preds = %do.cond.44, %if.then.33
  %44 = load i64, i64* %n, align 8, !dbg !1886, !tbaa !1766
  %45 = load %struct._object*, %struct._object** %readahead, align 8, !dbg !1889, !tbaa !843
  %46 = bitcast %struct._object* %45 to %struct.PyVarObject*, !dbg !1890
  %ob_size35 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %46, i32 0, i32 1, !dbg !1891
  %47 = load i64, i64* %ob_size35, align 8, !dbg !1891, !tbaa !1803
  %cmp36 = icmp sge i64 %44, %47, !dbg !1892
  br i1 %cmp36, label %if.then.38, label %lor.lhs.false, !dbg !1893

lor.lhs.false:                                    ; preds = %do.body.34
  %48 = load i64, i64* %n, align 8, !dbg !1894, !tbaa !1766
  %49 = load i64, i64* %limit, align 8, !dbg !1896, !tbaa !1766
  %cmp37 = icmp sge i64 %48, %49, !dbg !1897
  br i1 %cmp37, label %if.then.38, label %if.end.39, !dbg !1898

if.then.38:                                       ; preds = %lor.lhs.false, %do.body.34
  br label %do.end.45, !dbg !1899

if.end.39:                                        ; preds = %lor.lhs.false
  %50 = load i64, i64* %n, align 8, !dbg !1900, !tbaa !1766
  %inc = add i64 %50, 1, !dbg !1900
  store i64 %inc, i64* %n, align 8, !dbg !1900, !tbaa !1766
  %51 = load i8*, i8** %buf, align 8, !dbg !1902, !tbaa !843
  %arrayidx = getelementptr i8, i8* %51, i64 %50, !dbg !1902
  %52 = load i8, i8* %arrayidx, align 1, !dbg !1902, !tbaa !1903
  %conv = sext i8 %52 to i32, !dbg !1902
  %cmp40 = icmp eq i32 %conv, 10, !dbg !1904
  br i1 %cmp40, label %if.then.42, label %if.end.43, !dbg !1905

if.then.42:                                       ; preds = %if.end.39
  br label %do.end.45, !dbg !1906

if.end.43:                                        ; preds = %if.end.39
  br label %do.cond.44, !dbg !1907

do.cond.44:                                       ; preds = %if.end.43
  br i1 true, label %do.body.34, label %do.end.45, !dbg !1908

do.end.45:                                        ; preds = %do.cond.44, %if.then.42, %if.then.38
  br label %if.end.62, !dbg !1910

if.else.46:                                       ; preds = %if.then.31
  br label %do.body.47, !dbg !1911

do.body.47:                                       ; preds = %do.cond.60, %if.else.46
  %53 = load i64, i64* %n, align 8, !dbg !1913, !tbaa !1766
  %54 = load %struct._object*, %struct._object** %readahead, align 8, !dbg !1916, !tbaa !843
  %55 = bitcast %struct._object* %54 to %struct.PyVarObject*, !dbg !1917
  %ob_size48 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %55, i32 0, i32 1, !dbg !1918
  %56 = load i64, i64* %ob_size48, align 8, !dbg !1918, !tbaa !1803
  %cmp49 = icmp sge i64 %53, %56, !dbg !1919
  br i1 %cmp49, label %if.then.51, label %if.end.52, !dbg !1920

if.then.51:                                       ; preds = %do.body.47
  br label %do.end.61, !dbg !1921

if.end.52:                                        ; preds = %do.body.47
  %57 = load i64, i64* %n, align 8, !dbg !1922, !tbaa !1766
  %inc53 = add i64 %57, 1, !dbg !1922
  store i64 %inc53, i64* %n, align 8, !dbg !1922, !tbaa !1766
  %58 = load i8*, i8** %buf, align 8, !dbg !1924, !tbaa !843
  %arrayidx54 = getelementptr i8, i8* %58, i64 %57, !dbg !1924
  %59 = load i8, i8* %arrayidx54, align 1, !dbg !1924, !tbaa !1903
  %conv55 = sext i8 %59 to i32, !dbg !1924
  %cmp56 = icmp eq i32 %conv55, 10, !dbg !1925
  br i1 %cmp56, label %if.then.58, label %if.end.59, !dbg !1926

if.then.58:                                       ; preds = %if.end.52
  br label %do.end.61, !dbg !1927

if.end.59:                                        ; preds = %if.end.52
  br label %do.cond.60, !dbg !1928

do.cond.60:                                       ; preds = %if.end.59
  br i1 true, label %do.body.47, label %do.end.61, !dbg !1929

do.end.61:                                        ; preds = %do.cond.60, %if.then.58, %if.then.51
  br label %if.end.62

if.end.62:                                        ; preds = %do.end.61, %do.end.45
  %60 = load i64, i64* %n, align 8, !dbg !1931, !tbaa !1766
  store i64 %60, i64* %nreadahead, align 8, !dbg !1932, !tbaa !1766
  %61 = bitcast i8** %buf to i8*, !dbg !1933
  call void @llvm.lifetime.end(i64 8, i8* %61) #3, !dbg !1933
  %62 = bitcast i64* %n to i8*, !dbg !1933
  call void @llvm.lifetime.end(i64 8, i8* %62) #3, !dbg !1933
  br label %if.end.63, !dbg !1934

if.end.63:                                        ; preds = %if.end.62, %if.end.28
  br label %do.body.64, !dbg !1935

do.body.64:                                       ; preds = %if.end.63
  %63 = bitcast %struct._object** %_py_decref_tmp65 to i8*, !dbg !1936
  call void @llvm.lifetime.start(i64 8, i8* %63) #3, !dbg !1936
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp65, metadata !599, metadata !847), !dbg !1938
  %64 = load %struct._object*, %struct._object** %readahead, align 8, !dbg !1939, !tbaa !843
  store %struct._object* %64, %struct._object** %_py_decref_tmp65, align 8, !dbg !1938, !tbaa !843
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8, !dbg !1940, !tbaa !843
  %ob_refcnt66 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 0, !dbg !1942
  %66 = load i64, i64* %ob_refcnt66, align 8, !dbg !1943, !tbaa !864
  %dec67 = add i64 %66, -1, !dbg !1943
  store i64 %dec67, i64* %ob_refcnt66, align 8, !dbg !1943, !tbaa !864
  %cmp68 = icmp ne i64 %dec67, 0, !dbg !1944
  br i1 %cmp68, label %if.then.70, label %if.else.71, !dbg !1945

if.then.70:                                       ; preds = %do.body.64
  br label %if.end.74, !dbg !1946

if.else.71:                                       ; preds = %do.body.64
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8, !dbg !1948, !tbaa !843
  %ob_type72 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 1, !dbg !1950
  %68 = load %struct._typeobject*, %struct._typeobject** %ob_type72, align 8, !dbg !1950, !tbaa !904
  %tp_dealloc73 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %68, i32 0, i32 4, !dbg !1951
  %69 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc73, align 8, !dbg !1951, !tbaa !906
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8, !dbg !1952, !tbaa !843
  call void %69(%struct._object* %70), !dbg !1953
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.71, %if.then.70
  %71 = bitcast %struct._object** %_py_decref_tmp65 to i8*, !dbg !1954
  call void @llvm.lifetime.end(i64 8, i8* %71) #3, !dbg !1954
  br label %do.cond.75, !dbg !1956

do.cond.75:                                       ; preds = %if.end.74
  br label %do.end.76, !dbg !1957

do.end.76:                                        ; preds = %do.cond.75
  store i32 0, i32* %cleanup.dest.slot, !dbg !1959
  br label %cleanup, !dbg !1959

cleanup:                                          ; preds = %do.end.76, %do.end, %if.end.18, %if.then.17
  %72 = bitcast %struct._object** %readahead to i8*, !dbg !1960
  call void @llvm.lifetime.end(i64 8, i8* %72) #3, !dbg !1960
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.77, !dbg !1962

if.end.77:                                        ; preds = %cleanup.cont, %while.body
  %73 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1963, !tbaa !843
  %74 = load i64, i64* %nreadahead, align 8, !dbg !1964, !tbaa !1766
  %call78 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %73, %struct._Py_Identifier* @PyId_read, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0), i64 %74), !dbg !1965
  store %struct._object* %call78, %struct._object** %b, align 8, !dbg !1966, !tbaa !843
  %75 = load %struct._object*, %struct._object** %b, align 8, !dbg !1967, !tbaa !843
  %cmp79 = icmp eq %struct._object* %75, null, !dbg !1969
  br i1 %cmp79, label %if.then.81, label %if.end.86, !dbg !1970

if.then.81:                                       ; preds = %if.end.77
  %call82 = call i32 @_PyIO_trap_eintr(), !dbg !1971
  %tobool83 = icmp ne i32 %call82, 0, !dbg !1971
  br i1 %tobool83, label %if.then.84, label %if.end.85, !dbg !1974

if.then.84:                                       ; preds = %if.then.81
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.180, !dbg !1975

if.end.85:                                        ; preds = %if.then.81
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.180, !dbg !1977

if.end.86:                                        ; preds = %if.end.77
  %76 = load %struct._object*, %struct._object** %b, align 8, !dbg !1978, !tbaa !843
  %ob_type87 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 1, !dbg !1979
  %77 = load %struct._typeobject*, %struct._typeobject** %ob_type87, align 8, !dbg !1979, !tbaa !904
  %tp_flags88 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %77, i32 0, i32 19, !dbg !1980
  %78 = load i64, i64* %tp_flags88, align 8, !dbg !1980, !tbaa !1236
  %and89 = and i64 %78, 134217728, !dbg !1981
  %cmp90 = icmp ne i64 %and89, 0, !dbg !1982
  br i1 %cmp90, label %if.end.109, label %if.then.92, !dbg !1983

if.then.92:                                       ; preds = %if.end.86
  %79 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !1984, !tbaa !843
  %80 = load %struct._object*, %struct._object** %b, align 8, !dbg !1985, !tbaa !843
  %ob_type93 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 1, !dbg !1986
  %81 = load %struct._typeobject*, %struct._typeobject** %ob_type93, align 8, !dbg !1986, !tbaa !904
  %tp_name94 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %81, i32 0, i32 1, !dbg !1987
  %82 = load i8*, i8** %tp_name94, align 8, !dbg !1987, !tbaa !1840
  %call95 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %79, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.32, i32 0, i32 0), i8* %82), !dbg !1988
  br label %do.body.96, !dbg !1989

do.body.96:                                       ; preds = %if.then.92
  %83 = bitcast %struct._object** %_py_decref_tmp97 to i8*, !dbg !1990
  call void @llvm.lifetime.start(i64 8, i8* %83) #3, !dbg !1990
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp97, metadata !601, metadata !847), !dbg !1992
  %84 = load %struct._object*, %struct._object** %b, align 8, !dbg !1993, !tbaa !843
  store %struct._object* %84, %struct._object** %_py_decref_tmp97, align 8, !dbg !1992, !tbaa !843
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp97, align 8, !dbg !1994, !tbaa !843
  %ob_refcnt98 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 0, !dbg !1996
  %86 = load i64, i64* %ob_refcnt98, align 8, !dbg !1997, !tbaa !864
  %dec99 = add i64 %86, -1, !dbg !1997
  store i64 %dec99, i64* %ob_refcnt98, align 8, !dbg !1997, !tbaa !864
  %cmp100 = icmp ne i64 %dec99, 0, !dbg !1998
  br i1 %cmp100, label %if.then.102, label %if.else.103, !dbg !1999

if.then.102:                                      ; preds = %do.body.96
  br label %if.end.106, !dbg !2000

if.else.103:                                      ; preds = %do.body.96
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp97, align 8, !dbg !2002, !tbaa !843
  %ob_type104 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 1, !dbg !2004
  %88 = load %struct._typeobject*, %struct._typeobject** %ob_type104, align 8, !dbg !2004, !tbaa !904
  %tp_dealloc105 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %88, i32 0, i32 4, !dbg !2005
  %89 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc105, align 8, !dbg !2005, !tbaa !906
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp97, align 8, !dbg !2006, !tbaa !843
  call void %89(%struct._object* %90), !dbg !2007
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.103, %if.then.102
  %91 = bitcast %struct._object** %_py_decref_tmp97 to i8*, !dbg !2008
  call void @llvm.lifetime.end(i64 8, i8* %91) #3, !dbg !2008
  br label %do.cond.107, !dbg !2010

do.cond.107:                                      ; preds = %if.end.106
  br label %do.end.108, !dbg !2011

do.end.108:                                       ; preds = %do.cond.107
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.180, !dbg !2013

if.end.109:                                       ; preds = %if.end.86
  %92 = load %struct._object*, %struct._object** %b, align 8, !dbg !2014, !tbaa !843
  %93 = bitcast %struct._object* %92 to %struct.PyVarObject*, !dbg !2015
  %ob_size110 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %93, i32 0, i32 1, !dbg !2016
  %94 = load i64, i64* %ob_size110, align 8, !dbg !2016, !tbaa !1803
  %cmp111 = icmp eq i64 %94, 0, !dbg !2017
  br i1 %cmp111, label %if.then.113, label %if.end.127, !dbg !2018

if.then.113:                                      ; preds = %if.end.109
  br label %do.body.114, !dbg !2019

do.body.114:                                      ; preds = %if.then.113
  %95 = bitcast %struct._object** %_py_decref_tmp115 to i8*, !dbg !2020
  call void @llvm.lifetime.start(i64 8, i8* %95) #3, !dbg !2020
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp115, metadata !605, metadata !847), !dbg !2022
  %96 = load %struct._object*, %struct._object** %b, align 8, !dbg !2023, !tbaa !843
  store %struct._object* %96, %struct._object** %_py_decref_tmp115, align 8, !dbg !2022, !tbaa !843
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8, !dbg !2024, !tbaa !843
  %ob_refcnt116 = getelementptr inbounds %struct._object, %struct._object* %97, i32 0, i32 0, !dbg !2026
  %98 = load i64, i64* %ob_refcnt116, align 8, !dbg !2027, !tbaa !864
  %dec117 = add i64 %98, -1, !dbg !2027
  store i64 %dec117, i64* %ob_refcnt116, align 8, !dbg !2027, !tbaa !864
  %cmp118 = icmp ne i64 %dec117, 0, !dbg !2028
  br i1 %cmp118, label %if.then.120, label %if.else.121, !dbg !2029

if.then.120:                                      ; preds = %do.body.114
  br label %if.end.124, !dbg !2030

if.else.121:                                      ; preds = %do.body.114
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8, !dbg !2032, !tbaa !843
  %ob_type122 = getelementptr inbounds %struct._object, %struct._object* %99, i32 0, i32 1, !dbg !2034
  %100 = load %struct._typeobject*, %struct._typeobject** %ob_type122, align 8, !dbg !2034, !tbaa !904
  %tp_dealloc123 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %100, i32 0, i32 4, !dbg !2035
  %101 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc123, align 8, !dbg !2035, !tbaa !906
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8, !dbg !2036, !tbaa !843
  call void %101(%struct._object* %102), !dbg !2037
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.121, %if.then.120
  %103 = bitcast %struct._object** %_py_decref_tmp115 to i8*, !dbg !2038
  call void @llvm.lifetime.end(i64 8, i8* %103) #3, !dbg !2038
  br label %do.cond.125, !dbg !2040

do.cond.125:                                      ; preds = %if.end.124
  br label %do.end.126, !dbg !2041

do.end.126:                                       ; preds = %do.cond.125
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.180, !dbg !2043

if.end.127:                                       ; preds = %if.end.109
  %104 = load %struct._object*, %struct._object** %buffer, align 8, !dbg !2044, !tbaa !843
  %105 = bitcast %struct._object* %104 to %struct.PyVarObject*, !dbg !2045
  %ob_size128 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %105, i32 0, i32 1, !dbg !2046
  %106 = load i64, i64* %ob_size128, align 8, !dbg !2046, !tbaa !1803
  store i64 %106, i64* %old_size, align 8, !dbg !2047, !tbaa !1766
  %107 = load %struct._object*, %struct._object** %buffer, align 8, !dbg !2048, !tbaa !843
  %108 = load i64, i64* %old_size, align 8, !dbg !2049, !tbaa !1766
  %109 = load %struct._object*, %struct._object** %b, align 8, !dbg !2050, !tbaa !843
  %110 = bitcast %struct._object* %109 to %struct.PyVarObject*, !dbg !2051
  %ob_size129 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %110, i32 0, i32 1, !dbg !2052
  %111 = load i64, i64* %ob_size129, align 8, !dbg !2052, !tbaa !1803
  %add = add i64 %108, %111, !dbg !2053
  %call130 = call i32 @PyByteArray_Resize(%struct._object* %107, i64 %add), !dbg !2054
  %cmp131 = icmp slt i32 %call130, 0, !dbg !2055
  br i1 %cmp131, label %if.then.133, label %if.end.147, !dbg !2056

if.then.133:                                      ; preds = %if.end.127
  br label %do.body.134, !dbg !2057

do.body.134:                                      ; preds = %if.then.133
  %112 = bitcast %struct._object** %_py_decref_tmp135 to i8*, !dbg !2058
  call void @llvm.lifetime.start(i64 8, i8* %112) #3, !dbg !2058
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp135, metadata !609, metadata !847), !dbg !2060
  %113 = load %struct._object*, %struct._object** %b, align 8, !dbg !2061, !tbaa !843
  store %struct._object* %113, %struct._object** %_py_decref_tmp135, align 8, !dbg !2060, !tbaa !843
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp135, align 8, !dbg !2062, !tbaa !843
  %ob_refcnt136 = getelementptr inbounds %struct._object, %struct._object* %114, i32 0, i32 0, !dbg !2064
  %115 = load i64, i64* %ob_refcnt136, align 8, !dbg !2065, !tbaa !864
  %dec137 = add i64 %115, -1, !dbg !2065
  store i64 %dec137, i64* %ob_refcnt136, align 8, !dbg !2065, !tbaa !864
  %cmp138 = icmp ne i64 %dec137, 0, !dbg !2066
  br i1 %cmp138, label %if.then.140, label %if.else.141, !dbg !2067

if.then.140:                                      ; preds = %do.body.134
  br label %if.end.144, !dbg !2068

if.else.141:                                      ; preds = %do.body.134
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp135, align 8, !dbg !2070, !tbaa !843
  %ob_type142 = getelementptr inbounds %struct._object, %struct._object* %116, i32 0, i32 1, !dbg !2072
  %117 = load %struct._typeobject*, %struct._typeobject** %ob_type142, align 8, !dbg !2072, !tbaa !904
  %tp_dealloc143 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %117, i32 0, i32 4, !dbg !2073
  %118 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc143, align 8, !dbg !2073, !tbaa !906
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp135, align 8, !dbg !2074, !tbaa !843
  call void %118(%struct._object* %119), !dbg !2075
  br label %if.end.144

if.end.144:                                       ; preds = %if.else.141, %if.then.140
  %120 = bitcast %struct._object** %_py_decref_tmp135 to i8*, !dbg !2076
  call void @llvm.lifetime.end(i64 8, i8* %120) #3, !dbg !2076
  br label %do.cond.145, !dbg !2078

do.cond.145:                                      ; preds = %if.end.144
  br label %do.end.146, !dbg !2079

do.end.146:                                       ; preds = %do.cond.145
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.180, !dbg !2081

if.end.147:                                       ; preds = %if.end.127
  %121 = load %struct._object*, %struct._object** %buffer, align 8, !dbg !2082, !tbaa !843
  %122 = bitcast %struct._object* %121 to %struct.PyVarObject*, !dbg !2083
  %ob_size148 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %122, i32 0, i32 1, !dbg !2084
  %123 = load i64, i64* %ob_size148, align 8, !dbg !2084, !tbaa !1803
  %tobool149 = icmp ne i64 %123, 0, !dbg !2085
  br i1 %tobool149, label %cond.true, label %cond.false, !dbg !2085

cond.true:                                        ; preds = %if.end.147
  %124 = load %struct._object*, %struct._object** %buffer, align 8, !dbg !2086, !tbaa !843
  %125 = bitcast %struct._object* %124 to %struct.PyByteArrayObject*, !dbg !2088
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %125, i32 0, i32 3, !dbg !2089
  %126 = load i8*, i8** %ob_start, align 8, !dbg !2089, !tbaa !2090
  br label %cond.end, !dbg !2085

cond.false:                                       ; preds = %if.end.147
  br label %cond.end, !dbg !2092

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %126, %cond.true ], [ getelementptr inbounds ([0 x i8], [0 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ], !dbg !2085
  %127 = load i64, i64* %old_size, align 8, !dbg !2094, !tbaa !1766
  %add.ptr = getelementptr i8, i8* %cond, i64 %127, !dbg !2097
  %128 = load %struct._object*, %struct._object** %b, align 8, !dbg !2098, !tbaa !843
  %129 = bitcast %struct._object* %128 to %struct.PyBytesObject*, !dbg !2099
  %ob_sval150 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %129, i32 0, i32 2, !dbg !2100
  %arraydecay151 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval150, i32 0, i32 0, !dbg !2101
  %130 = load %struct._object*, %struct._object** %b, align 8, !dbg !2102, !tbaa !843
  %131 = bitcast %struct._object* %130 to %struct.PyVarObject*, !dbg !2103
  %ob_size152 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %131, i32 0, i32 1, !dbg !2104
  %132 = load i64, i64* %ob_size152, align 8, !dbg !2104, !tbaa !1803
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %arraydecay151, i64 %132, i32 1, i1 false), !dbg !2105
  br label %do.body.153, !dbg !2106

do.body.153:                                      ; preds = %cond.end
  %133 = bitcast %struct._object** %_py_decref_tmp154 to i8*, !dbg !2107
  call void @llvm.lifetime.start(i64 8, i8* %133) #3, !dbg !2107
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp154, metadata !613, metadata !847), !dbg !2109
  %134 = load %struct._object*, %struct._object** %b, align 8, !dbg !2110, !tbaa !843
  store %struct._object* %134, %struct._object** %_py_decref_tmp154, align 8, !dbg !2109, !tbaa !843
  %135 = load %struct._object*, %struct._object** %_py_decref_tmp154, align 8, !dbg !2111, !tbaa !843
  %ob_refcnt155 = getelementptr inbounds %struct._object, %struct._object* %135, i32 0, i32 0, !dbg !2113
  %136 = load i64, i64* %ob_refcnt155, align 8, !dbg !2114, !tbaa !864
  %dec156 = add i64 %136, -1, !dbg !2114
  store i64 %dec156, i64* %ob_refcnt155, align 8, !dbg !2114, !tbaa !864
  %cmp157 = icmp ne i64 %dec156, 0, !dbg !2115
  br i1 %cmp157, label %if.then.159, label %if.else.160, !dbg !2116

if.then.159:                                      ; preds = %do.body.153
  br label %if.end.163, !dbg !2117

if.else.160:                                      ; preds = %do.body.153
  %137 = load %struct._object*, %struct._object** %_py_decref_tmp154, align 8, !dbg !2119, !tbaa !843
  %ob_type161 = getelementptr inbounds %struct._object, %struct._object* %137, i32 0, i32 1, !dbg !2121
  %138 = load %struct._typeobject*, %struct._typeobject** %ob_type161, align 8, !dbg !2121, !tbaa !904
  %tp_dealloc162 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %138, i32 0, i32 4, !dbg !2122
  %139 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc162, align 8, !dbg !2122, !tbaa !906
  %140 = load %struct._object*, %struct._object** %_py_decref_tmp154, align 8, !dbg !2123, !tbaa !843
  call void %139(%struct._object* %140), !dbg !2124
  br label %if.end.163

if.end.163:                                       ; preds = %if.else.160, %if.then.159
  %141 = bitcast %struct._object** %_py_decref_tmp154 to i8*, !dbg !2125
  call void @llvm.lifetime.end(i64 8, i8* %141) #3, !dbg !2125
  br label %do.cond.164, !dbg !2127

do.cond.164:                                      ; preds = %if.end.163
  br label %do.end.165, !dbg !2128

do.end.165:                                       ; preds = %do.cond.164
  %142 = load %struct._object*, %struct._object** %buffer, align 8, !dbg !2130, !tbaa !843
  %143 = bitcast %struct._object* %142 to %struct.PyVarObject*, !dbg !2132
  %ob_size166 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %143, i32 0, i32 1, !dbg !2133
  %144 = load i64, i64* %ob_size166, align 8, !dbg !2133, !tbaa !1803
  %sub = sub i64 %144, 1, !dbg !2134
  %145 = load %struct._object*, %struct._object** %buffer, align 8, !dbg !2135, !tbaa !843
  %146 = bitcast %struct._object* %145 to %struct.PyVarObject*, !dbg !2136
  %ob_size167 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %146, i32 0, i32 1, !dbg !2137
  %147 = load i64, i64* %ob_size167, align 8, !dbg !2137, !tbaa !1803
  %tobool168 = icmp ne i64 %147, 0, !dbg !2138
  br i1 %tobool168, label %cond.true.169, label %cond.false.171, !dbg !2138

cond.true.169:                                    ; preds = %do.end.165
  %148 = load %struct._object*, %struct._object** %buffer, align 8, !dbg !2139, !tbaa !843
  %149 = bitcast %struct._object* %148 to %struct.PyByteArrayObject*, !dbg !2141
  %ob_start170 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %149, i32 0, i32 3, !dbg !2142
  %150 = load i8*, i8** %ob_start170, align 8, !dbg !2142, !tbaa !2090
  br label %cond.end.172, !dbg !2138

cond.false.171:                                   ; preds = %do.end.165
  br label %cond.end.172, !dbg !2143

cond.end.172:                                     ; preds = %cond.false.171, %cond.true.169
  %cond173 = phi i8* [ %150, %cond.true.169 ], [ getelementptr inbounds ([0 x i8], [0 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.171 ], !dbg !2138
  %arrayidx174 = getelementptr i8, i8* %cond173, i64 %sub, !dbg !2145
  %151 = load i8, i8* %arrayidx174, align 1, !dbg !2145, !tbaa !1903
  %conv175 = sext i8 %151 to i32, !dbg !2145
  %cmp176 = icmp eq i32 %conv175, 10, !dbg !2148
  br i1 %cmp176, label %if.then.178, label %if.end.179, !dbg !2149

if.then.178:                                      ; preds = %cond.end.172
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.180, !dbg !2150

if.end.179:                                       ; preds = %cond.end.172
  store i32 0, i32* %cleanup.dest.slot, !dbg !2151
  br label %cleanup.180, !dbg !2151

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.180

cleanup.180:                                      ; preds = %NewDefault, %if.end.179, %if.then.178, %do.end.146, %do.end.126, %do.end.108, %if.end.85, %if.then.84
  %152 = bitcast %struct._object** %b to i8*, !dbg !2152
  call void @llvm.lifetime.end(i64 8, i8* %152) #3, !dbg !2152
  %153 = bitcast i64* %nreadahead to i8*, !dbg !2152
  call void @llvm.lifetime.end(i64 8, i8* %153) #3, !dbg !2152
  %cleanup.dest.182 = load i32, i32* %cleanup.dest.slot
  br label %NodeBlock.8

NodeBlock.8:                                      ; preds = %cleanup.180
  %Pivot.9 = icmp slt i32 %cleanup.dest.182, 3
  br i1 %Pivot.9, label %NodeBlock, label %NodeBlock.6

NodeBlock.6:                                      ; preds = %NodeBlock.8
  %Pivot.7 = icmp slt i32 %cleanup.dest.182, 4
  br i1 %Pivot.7, label %while.end, label %LeafBlock.4

LeafBlock.4:                                      ; preds = %NodeBlock.6
  %SwitchLeaf5 = icmp eq i32 %cleanup.dest.182, 4
  br i1 %SwitchLeaf5, label %fail, label %NewDefault.1

NodeBlock:                                        ; preds = %NodeBlock.8
  %Pivot = icmp slt i32 %cleanup.dest.182, 2
  br i1 %Pivot, label %LeafBlock.2, label %while.cond

LeafBlock.2:                                      ; preds = %NodeBlock
  %SwitchLeaf3 = icmp eq i32 %cleanup.dest.182, 0
  br i1 %SwitchLeaf3, label %cleanup.cont.183, label %NewDefault.1

cleanup.cont.183:                                 ; preds = %LeafBlock.2
  br label %while.cond, !dbg !1793

while.end:                                        ; preds = %NodeBlock.6, %lor.end
  %154 = load %struct._object*, %struct._object** %buffer, align 8, !dbg !2153, !tbaa !843
  %155 = bitcast %struct._object* %154 to %struct.PyVarObject*, !dbg !2154
  %ob_size184 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %155, i32 0, i32 1, !dbg !2155
  %156 = load i64, i64* %ob_size184, align 8, !dbg !2155, !tbaa !1803
  %tobool185 = icmp ne i64 %156, 0, !dbg !2156
  br i1 %tobool185, label %cond.true.186, label %cond.false.188, !dbg !2156

cond.true.186:                                    ; preds = %while.end
  %157 = load %struct._object*, %struct._object** %buffer, align 8, !dbg !2157, !tbaa !843
  %158 = bitcast %struct._object* %157 to %struct.PyByteArrayObject*, !dbg !2158
  %ob_start187 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %158, i32 0, i32 3, !dbg !2159
  %159 = load i8*, i8** %ob_start187, align 8, !dbg !2159, !tbaa !2090
  br label %cond.end.189, !dbg !2156

cond.false.188:                                   ; preds = %while.end
  br label %cond.end.189, !dbg !2160

cond.end.189:                                     ; preds = %cond.false.188, %cond.true.186
  %cond190 = phi i8* [ %159, %cond.true.186 ], [ getelementptr inbounds ([0 x i8], [0 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.188 ], !dbg !2156
  %160 = load %struct._object*, %struct._object** %buffer, align 8, !dbg !2161, !tbaa !843
  %161 = bitcast %struct._object* %160 to %struct.PyVarObject*, !dbg !2162
  %ob_size191 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %161, i32 0, i32 1, !dbg !2163
  %162 = load i64, i64* %ob_size191, align 8, !dbg !2163, !tbaa !1803
  %call192 = call %struct._object* @PyBytes_FromStringAndSize(i8* %cond190, i64 %162), !dbg !2164
  store %struct._object* %call192, %struct._object** %result, align 8, !dbg !2165, !tbaa !843
  br label %do.body.193, !dbg !2166

do.body.193:                                      ; preds = %cond.end.189
  %163 = bitcast %struct._object** %_py_decref_tmp194 to i8*, !dbg !2167
  call void @llvm.lifetime.start(i64 8, i8* %163) #3, !dbg !2167
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp194, metadata !615, metadata !847), !dbg !2169
  %164 = load %struct._object*, %struct._object** %buffer, align 8, !dbg !2170, !tbaa !843
  store %struct._object* %164, %struct._object** %_py_decref_tmp194, align 8, !dbg !2169, !tbaa !843
  %165 = load %struct._object*, %struct._object** %_py_decref_tmp194, align 8, !dbg !2171, !tbaa !843
  %ob_refcnt195 = getelementptr inbounds %struct._object, %struct._object* %165, i32 0, i32 0, !dbg !2173
  %166 = load i64, i64* %ob_refcnt195, align 8, !dbg !2174, !tbaa !864
  %dec196 = add i64 %166, -1, !dbg !2174
  store i64 %dec196, i64* %ob_refcnt195, align 8, !dbg !2174, !tbaa !864
  %cmp197 = icmp ne i64 %dec196, 0, !dbg !2175
  br i1 %cmp197, label %if.then.199, label %if.else.200, !dbg !2176

if.then.199:                                      ; preds = %do.body.193
  br label %if.end.203, !dbg !2177

if.else.200:                                      ; preds = %do.body.193
  %167 = load %struct._object*, %struct._object** %_py_decref_tmp194, align 8, !dbg !2179, !tbaa !843
  %ob_type201 = getelementptr inbounds %struct._object, %struct._object* %167, i32 0, i32 1, !dbg !2181
  %168 = load %struct._typeobject*, %struct._typeobject** %ob_type201, align 8, !dbg !2181, !tbaa !904
  %tp_dealloc202 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %168, i32 0, i32 4, !dbg !2182
  %169 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc202, align 8, !dbg !2182, !tbaa !906
  %170 = load %struct._object*, %struct._object** %_py_decref_tmp194, align 8, !dbg !2183, !tbaa !843
  call void %169(%struct._object* %170), !dbg !2184
  br label %if.end.203

if.end.203:                                       ; preds = %if.else.200, %if.then.199
  %171 = bitcast %struct._object** %_py_decref_tmp194 to i8*, !dbg !2185
  call void @llvm.lifetime.end(i64 8, i8* %171) #3, !dbg !2185
  br label %do.cond.204, !dbg !2187

do.cond.204:                                      ; preds = %if.end.203
  br label %do.end.205, !dbg !2188

do.end.205:                                       ; preds = %do.cond.204
  %172 = load %struct._object*, %struct._object** %result, align 8, !dbg !2190, !tbaa !843
  store %struct._object* %172, %struct._object** %retval, !dbg !2191
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.219, !dbg !2191

fail:                                             ; preds = %LeafBlock.4
  br label %do.body.206, !dbg !2192

do.body.206:                                      ; preds = %fail
  %173 = bitcast %struct._object** %_py_decref_tmp207 to i8*, !dbg !2193
  call void @llvm.lifetime.start(i64 8, i8* %173) #3, !dbg !2193
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp207, metadata !617, metadata !847), !dbg !2195
  %174 = load %struct._object*, %struct._object** %buffer, align 8, !dbg !2196, !tbaa !843
  store %struct._object* %174, %struct._object** %_py_decref_tmp207, align 8, !dbg !2195, !tbaa !843
  %175 = load %struct._object*, %struct._object** %_py_decref_tmp207, align 8, !dbg !2197, !tbaa !843
  %ob_refcnt208 = getelementptr inbounds %struct._object, %struct._object* %175, i32 0, i32 0, !dbg !2199
  %176 = load i64, i64* %ob_refcnt208, align 8, !dbg !2200, !tbaa !864
  %dec209 = add i64 %176, -1, !dbg !2200
  store i64 %dec209, i64* %ob_refcnt208, align 8, !dbg !2200, !tbaa !864
  %cmp210 = icmp ne i64 %dec209, 0, !dbg !2201
  br i1 %cmp210, label %if.then.212, label %if.else.213, !dbg !2202

if.then.212:                                      ; preds = %do.body.206
  br label %if.end.216, !dbg !2203

if.else.213:                                      ; preds = %do.body.206
  %177 = load %struct._object*, %struct._object** %_py_decref_tmp207, align 8, !dbg !2205, !tbaa !843
  %ob_type214 = getelementptr inbounds %struct._object, %struct._object* %177, i32 0, i32 1, !dbg !2207
  %178 = load %struct._typeobject*, %struct._typeobject** %ob_type214, align 8, !dbg !2207, !tbaa !904
  %tp_dealloc215 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %178, i32 0, i32 4, !dbg !2208
  %179 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc215, align 8, !dbg !2208, !tbaa !906
  %180 = load %struct._object*, %struct._object** %_py_decref_tmp207, align 8, !dbg !2209, !tbaa !843
  call void %179(%struct._object* %180), !dbg !2210
  br label %if.end.216

if.end.216:                                       ; preds = %if.else.213, %if.then.212
  %181 = bitcast %struct._object** %_py_decref_tmp207 to i8*, !dbg !2211
  call void @llvm.lifetime.end(i64 8, i8* %181) #3, !dbg !2211
  br label %do.cond.217, !dbg !2212

do.cond.217:                                      ; preds = %if.end.216
  br label %do.end.218, !dbg !2213

do.end.218:                                       ; preds = %do.cond.217
  store %struct._object* null, %struct._object** %retval, !dbg !2215
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.219, !dbg !2215

NewDefault.1:                                     ; preds = %LeafBlock.4, %LeafBlock.2
  br label %cleanup.219

cleanup.219:                                      ; preds = %NewDefault.1, %do.end.218, %do.end.205, %if.then.6, %if.then
  %182 = bitcast i64* %old_size to i8*, !dbg !2216
  call void @llvm.lifetime.end(i64 8, i8* %182) #3, !dbg !2216
  %183 = bitcast %struct._object** %result to i8*, !dbg !2216
  call void @llvm.lifetime.end(i64 8, i8* %183) #3, !dbg !2216
  %184 = bitcast %struct._object** %buffer to i8*, !dbg !2216
  call void @llvm.lifetime.end(i64 8, i8* %184) #3, !dbg !2216
  %185 = bitcast i32* %has_peek to i8*, !dbg !2216
  call void @llvm.lifetime.end(i64 4, i8* %185) #3, !dbg !2216
  %186 = bitcast i64* %limit to i8*, !dbg !2216
  call void @llvm.lifetime.end(i64 8, i8* %186) #3, !dbg !2216
  %187 = load %struct._object*, %struct._object** %retval, !dbg !2216
  ret %struct._object* %187, !dbg !2216
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
  %cleanup.dest.slot = alloca i32
  %ret = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  %line = alloca %struct._object*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  %_py_decref_tmp50 = alloca %struct._object*, align 8
  %_py_decref_tmp62 = alloca %struct._object*, align 8
  %_py_decref_tmp76 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !621, metadata !847), !dbg !2217
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !622, metadata !847), !dbg !2218
  %0 = bitcast i64* %hint to i8*, !dbg !2219
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2219
  call void @llvm.dbg.declare(metadata i64* %hint, metadata !623, metadata !847), !dbg !2220
  store i64 -1, i64* %hint, align 8, !dbg !2220, !tbaa !1766
  %1 = bitcast i64* %length to i8*, !dbg !2219
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2219
  call void @llvm.dbg.declare(metadata i64* %length, metadata !624, metadata !847), !dbg !2221
  store i64 0, i64* %length, align 8, !dbg !2221, !tbaa !1766
  %2 = bitcast %struct._object** %result to i8*, !dbg !2222
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !2222
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !625, metadata !847), !dbg !2223
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2224, !tbaa !843
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), i32 (%struct._object*, i8*)* @_PyIO_ConvertSsize_t, i64* %hint), !dbg !2226
  %tobool = icmp ne i32 %call, 0, !dbg !2226
  br i1 %tobool, label %if.end, label %if.then, !dbg !2227

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2228
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.91, !dbg !2228

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyList_New(i64 0), !dbg !2230
  store %struct._object* %call1, %struct._object** %result, align 8, !dbg !2231, !tbaa !843
  %4 = load %struct._object*, %struct._object** %result, align 8, !dbg !2232, !tbaa !843
  %cmp = icmp eq %struct._object* %4, null, !dbg !2234
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !2235

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2236
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.91, !dbg !2236

if.end.3:                                         ; preds = %if.end
  %5 = load i64, i64* %hint, align 8, !dbg !2237, !tbaa !1766
  %cmp4 = icmp sle i64 %5, 0, !dbg !2238
  br i1 %cmp4, label %if.then.5, label %if.end.25, !dbg !2239

if.then.5:                                        ; preds = %if.end.3
  %6 = bitcast %struct._object** %ret to i8*, !dbg !2240
  call void @llvm.lifetime.start(i64 8, i8* %6) #3, !dbg !2240
  call void @llvm.dbg.declare(metadata %struct._object** %ret, metadata !626, metadata !847), !dbg !2241
  %7 = load %struct._object*, %struct._object** %result, align 8, !dbg !2242, !tbaa !843
  %8 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !2243, !tbaa !843
  %call6 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %7, %struct._Py_Identifier* @iobase_readlines.PyId_extend, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i32 0, i32 0), %struct._object* %8), !dbg !2244
  store %struct._object* %call6, %struct._object** %ret, align 8, !dbg !2241, !tbaa !843
  %9 = load %struct._object*, %struct._object** %ret, align 8, !dbg !2245, !tbaa !843
  %cmp7 = icmp eq %struct._object* %9, null, !dbg !2246
  br i1 %cmp7, label %if.then.8, label %if.end.12, !dbg !2247

if.then.8:                                        ; preds = %if.then.5
  br label %do.body, !dbg !2248

do.body:                                          ; preds = %if.then.8
  %10 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2249
  call void @llvm.lifetime.start(i64 8, i8* %10) #3, !dbg !2249
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !629, metadata !847), !dbg !2251
  %11 = load %struct._object*, %struct._object** %result, align 8, !dbg !2252, !tbaa !843
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8, !dbg !2251, !tbaa !843
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2253, !tbaa !843
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0, !dbg !2255
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !2256, !tbaa !864
  %dec = add i64 %13, -1, !dbg !2256
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2256, !tbaa !864
  %cmp9 = icmp ne i64 %dec, 0, !dbg !2257
  br i1 %cmp9, label %if.then.10, label %if.else, !dbg !2258

if.then.10:                                       ; preds = %do.body
  br label %if.end.11, !dbg !2259

if.else:                                          ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2261, !tbaa !843
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1, !dbg !2263
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2263, !tbaa !904
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4, !dbg !2264
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2264, !tbaa !906
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2265, !tbaa !843
  call void %16(%struct._object* %17), !dbg !2266
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %18 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2267
  call void @llvm.lifetime.end(i64 8, i8* %18) #3, !dbg !2267
  br label %do.cond, !dbg !2269

do.cond:                                          ; preds = %if.end.11
  br label %do.end, !dbg !2270

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !2272
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2272

if.end.12:                                        ; preds = %if.then.5
  br label %do.body.13, !dbg !2273

do.body.13:                                       ; preds = %if.end.12
  %19 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !2274
  call void @llvm.lifetime.start(i64 8, i8* %19) #3, !dbg !2274
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp14, metadata !633, metadata !847), !dbg !2276
  %20 = load %struct._object*, %struct._object** %ret, align 8, !dbg !2277, !tbaa !843
  store %struct._object* %20, %struct._object** %_py_decref_tmp14, align 8, !dbg !2276, !tbaa !843
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !2278, !tbaa !843
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !2280
  %22 = load i64, i64* %ob_refcnt15, align 8, !dbg !2281, !tbaa !864
  %dec16 = add i64 %22, -1, !dbg !2281
  store i64 %dec16, i64* %ob_refcnt15, align 8, !dbg !2281, !tbaa !864
  %cmp17 = icmp ne i64 %dec16, 0, !dbg !2282
  br i1 %cmp17, label %if.then.18, label %if.else.19, !dbg !2283

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22, !dbg !2284

if.else.19:                                       ; preds = %do.body.13
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !2286, !tbaa !843
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1, !dbg !2288
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8, !dbg !2288, !tbaa !904
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4, !dbg !2289
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8, !dbg !2289, !tbaa !906
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !2290, !tbaa !843
  call void %25(%struct._object* %26), !dbg !2291
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  %27 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !2292
  call void @llvm.lifetime.end(i64 8, i8* %27) #3, !dbg !2292
  br label %do.cond.23, !dbg !2294

do.cond.23:                                       ; preds = %if.end.22
  br label %do.end.24, !dbg !2295

do.end.24:                                        ; preds = %do.cond.23
  %28 = load %struct._object*, %struct._object** %result, align 8, !dbg !2297, !tbaa !843
  store %struct._object* %28, %struct._object** %retval, !dbg !2298
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2298

cleanup:                                          ; preds = %do.end.24, %do.end
  %29 = bitcast %struct._object** %ret to i8*, !dbg !2299
  call void @llvm.lifetime.end(i64 8, i8* %29) #3, !dbg !2299
  br label %cleanup.91

if.end.25:                                        ; preds = %if.end.3
  br label %while.cond, !dbg !2300

while.cond:                                       ; preds = %cleanup.cont, %if.end.25
  br label %while.body, !dbg !2301

while.body:                                       ; preds = %while.cond
  %30 = bitcast %struct._object** %line to i8*, !dbg !2304
  call void @llvm.lifetime.start(i64 8, i8* %30) #3, !dbg !2304
  call void @llvm.dbg.declare(metadata %struct._object** %line, metadata !635, metadata !847), !dbg !2305
  %31 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !2306, !tbaa !843
  %call26 = call %struct._object* @PyIter_Next(%struct._object* %31), !dbg !2307
  store %struct._object* %call26, %struct._object** %line, align 8, !dbg !2305, !tbaa !843
  %32 = load %struct._object*, %struct._object** %line, align 8, !dbg !2308, !tbaa !843
  %cmp27 = icmp eq %struct._object* %32, null, !dbg !2309
  br i1 %cmp27, label %if.then.28, label %if.end.45, !dbg !2310

if.then.28:                                       ; preds = %while.body
  %call29 = call %struct._object* @PyErr_Occurred(), !dbg !2311
  %tobool30 = icmp ne %struct._object* %call29, null, !dbg !2311
  br i1 %tobool30, label %if.then.31, label %if.else.44, !dbg !2312

if.then.31:                                       ; preds = %if.then.28
  br label %do.body.32, !dbg !2313

do.body.32:                                       ; preds = %if.then.31
  %33 = bitcast %struct._object** %_py_decref_tmp33 to i8*, !dbg !2314
  call void @llvm.lifetime.start(i64 8, i8* %33) #3, !dbg !2314
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp33, metadata !637, metadata !847), !dbg !2316
  %34 = load %struct._object*, %struct._object** %result, align 8, !dbg !2317, !tbaa !843
  store %struct._object* %34, %struct._object** %_py_decref_tmp33, align 8, !dbg !2316, !tbaa !843
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8, !dbg !2318, !tbaa !843
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0, !dbg !2320
  %36 = load i64, i64* %ob_refcnt34, align 8, !dbg !2321, !tbaa !864
  %dec35 = add i64 %36, -1, !dbg !2321
  store i64 %dec35, i64* %ob_refcnt34, align 8, !dbg !2321, !tbaa !864
  %cmp36 = icmp ne i64 %dec35, 0, !dbg !2322
  br i1 %cmp36, label %if.then.37, label %if.else.38, !dbg !2323

if.then.37:                                       ; preds = %do.body.32
  br label %if.end.41, !dbg !2324

if.else.38:                                       ; preds = %do.body.32
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8, !dbg !2326, !tbaa !843
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1, !dbg !2328
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8, !dbg !2328, !tbaa !904
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4, !dbg !2329
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8, !dbg !2329, !tbaa !906
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8, !dbg !2330, !tbaa !843
  call void %39(%struct._object* %40), !dbg !2331
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.37
  %41 = bitcast %struct._object** %_py_decref_tmp33 to i8*, !dbg !2332
  call void @llvm.lifetime.end(i64 8, i8* %41) #3, !dbg !2332
  br label %do.cond.42, !dbg !2334

do.cond.42:                                       ; preds = %if.end.41
  br label %do.end.43, !dbg !2335

do.end.43:                                        ; preds = %do.cond.42
  store %struct._object* null, %struct._object** %retval, !dbg !2337
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90, !dbg !2337

if.else.44:                                       ; preds = %if.then.28
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.90, !dbg !2338

if.end.45:                                        ; preds = %while.body
  %42 = load %struct._object*, %struct._object** %result, align 8, !dbg !2339, !tbaa !843
  %43 = load %struct._object*, %struct._object** %line, align 8, !dbg !2340, !tbaa !843
  %call46 = call i32 @PyList_Append(%struct._object* %42, %struct._object* %43), !dbg !2341
  %cmp47 = icmp slt i32 %call46, 0, !dbg !2342
  br i1 %cmp47, label %if.then.48, label %if.end.73, !dbg !2343

if.then.48:                                       ; preds = %if.end.45
  br label %do.body.49, !dbg !2344

do.body.49:                                       ; preds = %if.then.48
  %44 = bitcast %struct._object** %_py_decref_tmp50 to i8*, !dbg !2345
  call void @llvm.lifetime.start(i64 8, i8* %44) #3, !dbg !2345
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp50, metadata !643, metadata !847), !dbg !2347
  %45 = load %struct._object*, %struct._object** %line, align 8, !dbg !2348, !tbaa !843
  store %struct._object* %45, %struct._object** %_py_decref_tmp50, align 8, !dbg !2347, !tbaa !843
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8, !dbg !2349, !tbaa !843
  %ob_refcnt51 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0, !dbg !2351
  %47 = load i64, i64* %ob_refcnt51, align 8, !dbg !2352, !tbaa !864
  %dec52 = add i64 %47, -1, !dbg !2352
  store i64 %dec52, i64* %ob_refcnt51, align 8, !dbg !2352, !tbaa !864
  %cmp53 = icmp ne i64 %dec52, 0, !dbg !2353
  br i1 %cmp53, label %if.then.54, label %if.else.55, !dbg !2354

if.then.54:                                       ; preds = %do.body.49
  br label %if.end.58, !dbg !2355

if.else.55:                                       ; preds = %do.body.49
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8, !dbg !2357, !tbaa !843
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1, !dbg !2359
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8, !dbg !2359, !tbaa !904
  %tp_dealloc57 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4, !dbg !2360
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc57, align 8, !dbg !2360, !tbaa !906
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8, !dbg !2361, !tbaa !843
  call void %50(%struct._object* %51), !dbg !2362
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.55, %if.then.54
  %52 = bitcast %struct._object** %_py_decref_tmp50 to i8*, !dbg !2363
  call void @llvm.lifetime.end(i64 8, i8* %52) #3, !dbg !2363
  br label %do.cond.59, !dbg !2365

do.cond.59:                                       ; preds = %if.end.58
  br label %do.end.60, !dbg !2366

do.end.60:                                        ; preds = %do.cond.59
  br label %do.body.61, !dbg !2368

do.body.61:                                       ; preds = %do.end.60
  %53 = bitcast %struct._object** %_py_decref_tmp62 to i8*, !dbg !2369
  call void @llvm.lifetime.start(i64 8, i8* %53) #3, !dbg !2369
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp62, metadata !647, metadata !847), !dbg !2371
  %54 = load %struct._object*, %struct._object** %result, align 8, !dbg !2372, !tbaa !843
  store %struct._object* %54, %struct._object** %_py_decref_tmp62, align 8, !dbg !2371, !tbaa !843
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8, !dbg !2373, !tbaa !843
  %ob_refcnt63 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0, !dbg !2375
  %56 = load i64, i64* %ob_refcnt63, align 8, !dbg !2376, !tbaa !864
  %dec64 = add i64 %56, -1, !dbg !2376
  store i64 %dec64, i64* %ob_refcnt63, align 8, !dbg !2376, !tbaa !864
  %cmp65 = icmp ne i64 %dec64, 0, !dbg !2377
  br i1 %cmp65, label %if.then.66, label %if.else.67, !dbg !2378

if.then.66:                                       ; preds = %do.body.61
  br label %if.end.70, !dbg !2379

if.else.67:                                       ; preds = %do.body.61
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8, !dbg !2381, !tbaa !843
  %ob_type68 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1, !dbg !2383
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type68, align 8, !dbg !2383, !tbaa !904
  %tp_dealloc69 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4, !dbg !2384
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc69, align 8, !dbg !2384, !tbaa !906
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8, !dbg !2385, !tbaa !843
  call void %59(%struct._object* %60), !dbg !2386
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.67, %if.then.66
  %61 = bitcast %struct._object** %_py_decref_tmp62 to i8*, !dbg !2387
  call void @llvm.lifetime.end(i64 8, i8* %61) #3, !dbg !2387
  br label %do.cond.71, !dbg !2388

do.cond.71:                                       ; preds = %if.end.70
  br label %do.end.72, !dbg !2389

do.end.72:                                        ; preds = %do.cond.71
  store %struct._object* null, %struct._object** %retval, !dbg !2391
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90, !dbg !2391

if.end.73:                                        ; preds = %if.end.45
  %62 = load %struct._object*, %struct._object** %line, align 8, !dbg !2392, !tbaa !843
  %call74 = call i64 @PyObject_Size(%struct._object* %62), !dbg !2393
  %63 = load i64, i64* %length, align 8, !dbg !2394, !tbaa !1766
  %add = add i64 %63, %call74, !dbg !2394
  store i64 %add, i64* %length, align 8, !dbg !2394, !tbaa !1766
  br label %do.body.75, !dbg !2395

do.body.75:                                       ; preds = %if.end.73
  %64 = bitcast %struct._object** %_py_decref_tmp76 to i8*, !dbg !2396
  call void @llvm.lifetime.start(i64 8, i8* %64) #3, !dbg !2396
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp76, metadata !649, metadata !847), !dbg !2398
  %65 = load %struct._object*, %struct._object** %line, align 8, !dbg !2399, !tbaa !843
  store %struct._object* %65, %struct._object** %_py_decref_tmp76, align 8, !dbg !2398, !tbaa !843
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8, !dbg !2400, !tbaa !843
  %ob_refcnt77 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 0, !dbg !2402
  %67 = load i64, i64* %ob_refcnt77, align 8, !dbg !2403, !tbaa !864
  %dec78 = add i64 %67, -1, !dbg !2403
  store i64 %dec78, i64* %ob_refcnt77, align 8, !dbg !2403, !tbaa !864
  %cmp79 = icmp ne i64 %dec78, 0, !dbg !2404
  br i1 %cmp79, label %if.then.80, label %if.else.81, !dbg !2405

if.then.80:                                       ; preds = %do.body.75
  br label %if.end.84, !dbg !2406

if.else.81:                                       ; preds = %do.body.75
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8, !dbg !2408, !tbaa !843
  %ob_type82 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 1, !dbg !2410
  %69 = load %struct._typeobject*, %struct._typeobject** %ob_type82, align 8, !dbg !2410, !tbaa !904
  %tp_dealloc83 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %69, i32 0, i32 4, !dbg !2411
  %70 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc83, align 8, !dbg !2411, !tbaa !906
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8, !dbg !2412, !tbaa !843
  call void %70(%struct._object* %71), !dbg !2413
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.81, %if.then.80
  %72 = bitcast %struct._object** %_py_decref_tmp76 to i8*, !dbg !2414
  call void @llvm.lifetime.end(i64 8, i8* %72) #3, !dbg !2414
  br label %do.cond.85, !dbg !2416

do.cond.85:                                       ; preds = %if.end.84
  br label %do.end.86, !dbg !2417

do.end.86:                                        ; preds = %do.cond.85
  %73 = load i64, i64* %length, align 8, !dbg !2419, !tbaa !1766
  %74 = load i64, i64* %hint, align 8, !dbg !2421, !tbaa !1766
  %cmp87 = icmp sgt i64 %73, %74, !dbg !2422
  br i1 %cmp87, label %if.then.88, label %if.end.89, !dbg !2423

if.then.88:                                       ; preds = %do.end.86
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.90, !dbg !2424

if.end.89:                                        ; preds = %do.end.86
  store i32 0, i32* %cleanup.dest.slot, !dbg !2425
  br label %cleanup.90, !dbg !2425

cleanup.90:                                       ; preds = %if.end.89, %if.then.88, %do.end.72, %if.else.44, %do.end.43
  %75 = bitcast %struct._object** %line to i8*, !dbg !2426
  call void @llvm.lifetime.end(i64 8, i8* %75) #3, !dbg !2426
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %NodeBlock

NodeBlock:                                        ; preds = %cleanup.90
  %Pivot = icmp slt i32 %cleanup.dest, 7
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %cleanup.dest, 7
  br i1 %SwitchLeaf2, label %while.end, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %while.cond, !dbg !2300

while.end:                                        ; preds = %LeafBlock.1
  %76 = load %struct._object*, %struct._object** %result, align 8, !dbg !2427, !tbaa !843
  store %struct._object* %76, %struct._object** %retval, !dbg !2428
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.91, !dbg !2428

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %cleanup.91

cleanup.91:                                       ; preds = %NewDefault, %while.end, %cleanup, %if.then.2, %if.then
  %77 = bitcast %struct._object** %result to i8*, !dbg !2429
  call void @llvm.lifetime.end(i64 8, i8* %77) #3, !dbg !2429
  %78 = bitcast i64* %length to i8*, !dbg !2429
  call void @llvm.lifetime.end(i64 8, i8* %78) #3, !dbg !2429
  %79 = bitcast i64* %hint to i8*, !dbg !2429
  call void @llvm.lifetime.end(i64 8, i8* %79) #3, !dbg !2429
  %80 = load %struct._object*, %struct._object** %retval, !dbg !2429
  ret %struct._object* %80, !dbg !2429
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
  %cleanup.dest.slot = alloca i32
  %line = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp27 = alloca %struct._object*, align 8
  %_py_decref_tmp41 = alloca %struct._object*, align 8
  %_py_decref_tmp54 = alloca %struct._object*, align 8
  %_py_decref_tmp66 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !653, metadata !847), !dbg !2430
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !654, metadata !847), !dbg !2431
  %0 = bitcast %struct._object** %lines to i8*, !dbg !2432
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2432
  call void @llvm.dbg.declare(metadata %struct._object** %lines, metadata !655, metadata !847), !dbg !2433
  %1 = bitcast %struct._object** %iter to i8*, !dbg !2432
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2432
  call void @llvm.dbg.declare(metadata %struct._object** %iter, metadata !656, metadata !847), !dbg !2434
  %2 = bitcast %struct._object** %res to i8*, !dbg !2432
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !2432
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !657, metadata !847), !dbg !2435
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2436, !tbaa !843
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0), %struct._object** %lines), !dbg !2438
  %tobool = icmp ne i32 %call, 0, !dbg !2438
  br i1 %tobool, label %if.end, label %if.then, !dbg !2439

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2440
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.77, !dbg !2440

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !2442, !tbaa !843
  %call1 = call %struct._object* @_PyIOBase_check_closed(%struct._object* %4, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0)), !dbg !2444
  %cmp = icmp eq %struct._object* %call1, null, !dbg !2445
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !2446

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2447
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.77, !dbg !2447

if.end.3:                                         ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %lines, align 8, !dbg !2448, !tbaa !843
  %call4 = call %struct._object* @PyObject_GetIter(%struct._object* %5), !dbg !2449
  store %struct._object* %call4, %struct._object** %iter, align 8, !dbg !2450, !tbaa !843
  %6 = load %struct._object*, %struct._object** %iter, align 8, !dbg !2451, !tbaa !843
  %cmp5 = icmp eq %struct._object* %6, null, !dbg !2453
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !2454

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval, !dbg !2455
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.77, !dbg !2455

if.end.7:                                         ; preds = %if.end.3
  br label %while.cond, !dbg !2456

while.cond:                                       ; preds = %cleanup.cont, %if.end.7
  br label %while.body, !dbg !2457

while.body:                                       ; preds = %while.cond
  %7 = bitcast %struct._object** %line to i8*, !dbg !2460
  call void @llvm.lifetime.start(i64 8, i8* %7) #3, !dbg !2460
  call void @llvm.dbg.declare(metadata %struct._object** %line, metadata !658, metadata !847), !dbg !2461
  %8 = load %struct._object*, %struct._object** %iter, align 8, !dbg !2462, !tbaa !843
  %call8 = call %struct._object* @PyIter_Next(%struct._object* %8), !dbg !2463
  store %struct._object* %call8, %struct._object** %line, align 8, !dbg !2461, !tbaa !843
  %9 = load %struct._object*, %struct._object** %line, align 8, !dbg !2464, !tbaa !843
  %cmp9 = icmp eq %struct._object* %9, null, !dbg !2465
  br i1 %cmp9, label %if.then.10, label %if.end.18, !dbg !2466

if.then.10:                                       ; preds = %while.body
  %call11 = call %struct._object* @PyErr_Occurred(), !dbg !2467
  %tobool12 = icmp ne %struct._object* %call11, null, !dbg !2467
  br i1 %tobool12, label %if.then.13, label %if.else.17, !dbg !2468

if.then.13:                                       ; preds = %if.then.10
  br label %do.body, !dbg !2469

do.body:                                          ; preds = %if.then.13
  %10 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2470
  call void @llvm.lifetime.start(i64 8, i8* %10) #3, !dbg !2470
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !660, metadata !847), !dbg !2472
  %11 = load %struct._object*, %struct._object** %iter, align 8, !dbg !2473, !tbaa !843
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8, !dbg !2472, !tbaa !843
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2474, !tbaa !843
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0, !dbg !2476
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !2477, !tbaa !864
  %dec = add i64 %13, -1, !dbg !2477
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2477, !tbaa !864
  %cmp14 = icmp ne i64 %dec, 0, !dbg !2478
  br i1 %cmp14, label %if.then.15, label %if.else, !dbg !2479

if.then.15:                                       ; preds = %do.body
  br label %if.end.16, !dbg !2480

if.else:                                          ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2482, !tbaa !843
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1, !dbg !2484
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2484, !tbaa !904
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4, !dbg !2485
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2485, !tbaa !906
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2486, !tbaa !843
  call void %16(%struct._object* %17), !dbg !2487
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  %18 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2488
  call void @llvm.lifetime.end(i64 8, i8* %18) #3, !dbg !2488
  br label %do.cond, !dbg !2490

do.cond:                                          ; preds = %if.end.16
  br label %do.end, !dbg !2491

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !2493
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2493

if.else.17:                                       ; preds = %if.then.10
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2494

if.end.18:                                        ; preds = %while.body
  store %struct._object* null, %struct._object** %res, align 8, !dbg !2495, !tbaa !843
  br label %do.body.19, !dbg !2496

do.body.19:                                       ; preds = %land.end, %if.end.18
  %19 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !2497, !tbaa !843
  %20 = load %struct._object*, %struct._object** @_PyIO_str_write, align 8, !dbg !2499, !tbaa !843
  %21 = load %struct._object*, %struct._object** %line, align 8, !dbg !2500, !tbaa !843
  %call20 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %19, %struct._object* %20, %struct._object* %21, i8* null), !dbg !2501
  store %struct._object* %call20, %struct._object** %res, align 8, !dbg !2502, !tbaa !843
  br label %do.cond.21, !dbg !2503

do.cond.21:                                       ; preds = %do.body.19
  %22 = load %struct._object*, %struct._object** %res, align 8, !dbg !2504, !tbaa !843
  %cmp22 = icmp eq %struct._object* %22, null, !dbg !2506
  br i1 %cmp22, label %land.rhs, label %land.end, !dbg !2507

land.rhs:                                         ; preds = %do.cond.21
  %call23 = call i32 @_PyIO_trap_eintr(), !dbg !2508
  %tobool24 = icmp ne i32 %call23, 0, !dbg !2507
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond.21
  %23 = phi i1 [ false, %do.cond.21 ], [ %tobool24, %land.rhs ]
  br i1 %23, label %do.body.19, label %do.end.25, !dbg !2510

do.end.25:                                        ; preds = %land.end
  br label %do.body.26, !dbg !2512

do.body.26:                                       ; preds = %do.end.25
  %24 = bitcast %struct._object** %_py_decref_tmp27 to i8*, !dbg !2513
  call void @llvm.lifetime.start(i64 8, i8* %24) #3, !dbg !2513
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp27, metadata !666, metadata !847), !dbg !2515
  %25 = load %struct._object*, %struct._object** %line, align 8, !dbg !2516, !tbaa !843
  store %struct._object* %25, %struct._object** %_py_decref_tmp27, align 8, !dbg !2515, !tbaa !843
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8, !dbg !2517, !tbaa !843
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0, !dbg !2519
  %27 = load i64, i64* %ob_refcnt28, align 8, !dbg !2520, !tbaa !864
  %dec29 = add i64 %27, -1, !dbg !2520
  store i64 %dec29, i64* %ob_refcnt28, align 8, !dbg !2520, !tbaa !864
  %cmp30 = icmp ne i64 %dec29, 0, !dbg !2521
  br i1 %cmp30, label %if.then.31, label %if.else.32, !dbg !2522

if.then.31:                                       ; preds = %do.body.26
  br label %if.end.35, !dbg !2523

if.else.32:                                       ; preds = %do.body.26
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8, !dbg !2525, !tbaa !843
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1, !dbg !2527
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8, !dbg !2527, !tbaa !904
  %tp_dealloc34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4, !dbg !2528
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc34, align 8, !dbg !2528, !tbaa !906
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8, !dbg !2529, !tbaa !843
  call void %30(%struct._object* %31), !dbg !2530
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.31
  %32 = bitcast %struct._object** %_py_decref_tmp27 to i8*, !dbg !2531
  call void @llvm.lifetime.end(i64 8, i8* %32) #3, !dbg !2531
  br label %do.cond.36, !dbg !2533

do.cond.36:                                       ; preds = %if.end.35
  br label %do.end.37, !dbg !2534

do.end.37:                                        ; preds = %do.cond.36
  %33 = load %struct._object*, %struct._object** %res, align 8, !dbg !2536, !tbaa !843
  %cmp38 = icmp eq %struct._object* %33, null, !dbg !2537
  br i1 %cmp38, label %if.then.39, label %if.end.52, !dbg !2538

if.then.39:                                       ; preds = %do.end.37
  br label %do.body.40, !dbg !2539

do.body.40:                                       ; preds = %if.then.39
  %34 = bitcast %struct._object** %_py_decref_tmp41 to i8*, !dbg !2540
  call void @llvm.lifetime.start(i64 8, i8* %34) #3, !dbg !2540
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp41, metadata !668, metadata !847), !dbg !2542
  %35 = load %struct._object*, %struct._object** %iter, align 8, !dbg !2543, !tbaa !843
  store %struct._object* %35, %struct._object** %_py_decref_tmp41, align 8, !dbg !2542, !tbaa !843
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8, !dbg !2544, !tbaa !843
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0, !dbg !2546
  %37 = load i64, i64* %ob_refcnt42, align 8, !dbg !2547, !tbaa !864
  %dec43 = add i64 %37, -1, !dbg !2547
  store i64 %dec43, i64* %ob_refcnt42, align 8, !dbg !2547, !tbaa !864
  %cmp44 = icmp ne i64 %dec43, 0, !dbg !2548
  br i1 %cmp44, label %if.then.45, label %if.else.46, !dbg !2549

if.then.45:                                       ; preds = %do.body.40
  br label %if.end.49, !dbg !2550

if.else.46:                                       ; preds = %do.body.40
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8, !dbg !2552, !tbaa !843
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1, !dbg !2554
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8, !dbg !2554, !tbaa !904
  %tp_dealloc48 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4, !dbg !2555
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc48, align 8, !dbg !2555, !tbaa !906
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8, !dbg !2556, !tbaa !843
  call void %40(%struct._object* %41), !dbg !2557
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.46, %if.then.45
  %42 = bitcast %struct._object** %_py_decref_tmp41 to i8*, !dbg !2558
  call void @llvm.lifetime.end(i64 8, i8* %42) #3, !dbg !2558
  br label %do.cond.50, !dbg !2560

do.cond.50:                                       ; preds = %if.end.49
  br label %do.end.51, !dbg !2561

do.end.51:                                        ; preds = %do.cond.50
  store %struct._object* null, %struct._object** %retval, !dbg !2563
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2563

if.end.52:                                        ; preds = %do.end.37
  br label %do.body.53, !dbg !2564

do.body.53:                                       ; preds = %if.end.52
  %43 = bitcast %struct._object** %_py_decref_tmp54 to i8*, !dbg !2565
  call void @llvm.lifetime.start(i64 8, i8* %43) #3, !dbg !2565
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp54, metadata !672, metadata !847), !dbg !2567
  %44 = load %struct._object*, %struct._object** %res, align 8, !dbg !2568, !tbaa !843
  store %struct._object* %44, %struct._object** %_py_decref_tmp54, align 8, !dbg !2567, !tbaa !843
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8, !dbg !2569, !tbaa !843
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0, !dbg !2571
  %46 = load i64, i64* %ob_refcnt55, align 8, !dbg !2572, !tbaa !864
  %dec56 = add i64 %46, -1, !dbg !2572
  store i64 %dec56, i64* %ob_refcnt55, align 8, !dbg !2572, !tbaa !864
  %cmp57 = icmp ne i64 %dec56, 0, !dbg !2573
  br i1 %cmp57, label %if.then.58, label %if.else.59, !dbg !2574

if.then.58:                                       ; preds = %do.body.53
  br label %if.end.62, !dbg !2575

if.else.59:                                       ; preds = %do.body.53
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8, !dbg !2577, !tbaa !843
  %ob_type60 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1, !dbg !2579
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type60, align 8, !dbg !2579, !tbaa !904
  %tp_dealloc61 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4, !dbg !2580
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc61, align 8, !dbg !2580, !tbaa !906
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8, !dbg !2581, !tbaa !843
  call void %49(%struct._object* %50), !dbg !2582
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.59, %if.then.58
  %51 = bitcast %struct._object** %_py_decref_tmp54 to i8*, !dbg !2583
  call void @llvm.lifetime.end(i64 8, i8* %51) #3, !dbg !2583
  br label %do.cond.63, !dbg !2584

do.cond.63:                                       ; preds = %if.end.62
  br label %do.end.64, !dbg !2585

do.end.64:                                        ; preds = %do.cond.63
  store i32 0, i32* %cleanup.dest.slot, !dbg !2587
  br label %cleanup, !dbg !2587

cleanup:                                          ; preds = %do.end.64, %do.end.51, %if.else.17, %do.end
  %52 = bitcast %struct._object** %line to i8*, !dbg !2588
  call void @llvm.lifetime.end(i64 8, i8* %52) #3, !dbg !2588
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %NodeBlock

NodeBlock:                                        ; preds = %cleanup
  %Pivot = icmp slt i32 %cleanup.dest, 3
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %cleanup.dest, 3
  br i1 %SwitchLeaf2, label %while.end, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %while.cond, !dbg !2456

while.end:                                        ; preds = %LeafBlock.1
  br label %do.body.65, !dbg !2589

do.body.65:                                       ; preds = %while.end
  %53 = bitcast %struct._object** %_py_decref_tmp66 to i8*, !dbg !2590
  call void @llvm.lifetime.start(i64 8, i8* %53) #3, !dbg !2590
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp66, metadata !674, metadata !847), !dbg !2592
  %54 = load %struct._object*, %struct._object** %iter, align 8, !dbg !2593, !tbaa !843
  store %struct._object* %54, %struct._object** %_py_decref_tmp66, align 8, !dbg !2592, !tbaa !843
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8, !dbg !2594, !tbaa !843
  %ob_refcnt67 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0, !dbg !2596
  %56 = load i64, i64* %ob_refcnt67, align 8, !dbg !2597, !tbaa !864
  %dec68 = add i64 %56, -1, !dbg !2597
  store i64 %dec68, i64* %ob_refcnt67, align 8, !dbg !2597, !tbaa !864
  %cmp69 = icmp ne i64 %dec68, 0, !dbg !2598
  br i1 %cmp69, label %if.then.70, label %if.else.71, !dbg !2599

if.then.70:                                       ; preds = %do.body.65
  br label %if.end.74, !dbg !2600

if.else.71:                                       ; preds = %do.body.65
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8, !dbg !2602, !tbaa !843
  %ob_type72 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1, !dbg !2604
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type72, align 8, !dbg !2604, !tbaa !904
  %tp_dealloc73 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4, !dbg !2605
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc73, align 8, !dbg !2605, !tbaa !906
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8, !dbg !2606, !tbaa !843
  call void %59(%struct._object* %60), !dbg !2607
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.71, %if.then.70
  %61 = bitcast %struct._object** %_py_decref_tmp66 to i8*, !dbg !2608
  call void @llvm.lifetime.end(i64 8, i8* %61) #3, !dbg !2608
  br label %do.cond.75, !dbg !2610

do.cond.75:                                       ; preds = %if.end.74
  br label %do.end.76, !dbg !2611

do.end.76:                                        ; preds = %do.cond.75
  %62 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2613, !tbaa !864
  %inc = add i64 %62, 1, !dbg !2613
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2613, !tbaa !864
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2614
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.77, !dbg !2614

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %cleanup.77

cleanup.77:                                       ; preds = %NewDefault, %do.end.76, %if.then.6, %if.then.2, %if.then
  %63 = bitcast %struct._object** %res to i8*, !dbg !2615
  call void @llvm.lifetime.end(i64 8, i8* %63) #3, !dbg !2615
  %64 = bitcast %struct._object** %iter to i8*, !dbg !2615
  call void @llvm.lifetime.end(i64 8, i8* %64) #3, !dbg !2615
  %65 = bitcast %struct._object** %lines to i8*, !dbg !2615
  call void @llvm.lifetime.end(i64 8, i8* %65) #3, !dbg !2615
  %66 = load %struct._object*, %struct._object** %retval, !dbg !2615
  ret %struct._object* %66, !dbg !2615
}

declare %struct._object* @_PyObject_CallMethodId_SizeT(%struct._object*, %struct._Py_Identifier*, i8*, ...) #2

declare i32 @_PyObject_HasAttrId(%struct._object*, %struct._Py_Identifier*) #2

declare i32 @_PyObject_SetAttrId(%struct._object*, %struct._Py_Identifier*, %struct._object*) #2

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #2

declare i32 @_PyIO_ConvertSsize_t(%struct._object*, i8*) #2

declare %struct._object* @PyByteArray_FromStringAndSize(i8*, i64) #2

declare i32 @_PyIO_trap_eintr() #2

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #2

declare i32 @PyByteArray_Resize(%struct._object*, i64) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #2

declare %struct._object* @PyList_New(i64) #2

declare %struct._object* @PyIter_Next(%struct._object*) #2

declare %struct._object* @PyErr_Occurred() #2

declare i32 @PyList_Append(%struct._object*, %struct._object*) #2

declare %struct._object* @PyObject_GetIter(%struct._object*) #2

declare %struct._object* @PyObject_GenericGetDict(%struct._object*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @iobase_closed_get(%struct._object* %self, i8* %context) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %context.addr = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !678, metadata !847), !dbg !2616
  store i8* %context, i8** %context.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !679, metadata !847), !dbg !2617
  %0 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !2618, !tbaa !843
  %call = call i32 @_PyObject_HasAttrId(%struct._object* %0, %struct._Py_Identifier* @PyId___IOBase_closed), !dbg !2619
  %conv = sext i32 %call to i64, !dbg !2619
  %call1 = call %struct._object* @PyBool_FromLong(i64 %conv), !dbg !2620
  ret %struct._object* %call1, !dbg !2621
}

declare %struct._object* @PyBool_FromLong(i64) #2

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #2

declare void @PyErr_Clear() #2

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @rawiobase_read(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %b = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  %_py_decref_tmp49 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !699, metadata !847), !dbg !2622
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !700, metadata !847), !dbg !2623
  %0 = bitcast i64* %n to i8*, !dbg !2624
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2624
  call void @llvm.dbg.declare(metadata i64* %n, metadata !701, metadata !847), !dbg !2625
  store i64 -1, i64* %n, align 8, !dbg !2625, !tbaa !1766
  %1 = bitcast %struct._object** %b to i8*, !dbg !2626
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2626
  call void @llvm.dbg.declare(metadata %struct._object** %b, metadata !702, metadata !847), !dbg !2627
  %2 = bitcast %struct._object** %res to i8*, !dbg !2626
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !2626
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !703, metadata !847), !dbg !2628
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2629, !tbaa !843
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i64* %n), !dbg !2631
  %tobool = icmp ne i32 %call, 0, !dbg !2631
  br i1 %tobool, label %if.end, label %if.then, !dbg !2632

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2633
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2633

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %n, align 8, !dbg !2635, !tbaa !1766
  %cmp = icmp slt i64 %4, 0, !dbg !2637
  br i1 %cmp, label %if.then.1, label %if.end.3, !dbg !2638

if.then.1:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !2639, !tbaa !843
  %call2 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %5, %struct._Py_Identifier* @rawiobase_read.PyId_readall, i8* null), !dbg !2641
  store %struct._object* %call2, %struct._object** %retval, !dbg !2642
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2642

if.end.3:                                         ; preds = %if.end
  %6 = load i64, i64* %n, align 8, !dbg !2643, !tbaa !1766
  %call4 = call %struct._object* @PyByteArray_FromStringAndSize(i8* null, i64 %6), !dbg !2644
  store %struct._object* %call4, %struct._object** %b, align 8, !dbg !2645, !tbaa !843
  %7 = load %struct._object*, %struct._object** %b, align 8, !dbg !2646, !tbaa !843
  %cmp5 = icmp eq %struct._object* %7, null, !dbg !2648
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !2649

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval, !dbg !2650
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2650

if.end.7:                                         ; preds = %if.end.3
  %8 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !2651, !tbaa !843
  %9 = load %struct._object*, %struct._object** @_PyIO_str_readinto, align 8, !dbg !2652, !tbaa !843
  %10 = load %struct._object*, %struct._object** %b, align 8, !dbg !2653, !tbaa !843
  %call8 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %8, %struct._object* %9, %struct._object* %10, i8* null), !dbg !2654
  store %struct._object* %call8, %struct._object** %res, align 8, !dbg !2655, !tbaa !843
  %11 = load %struct._object*, %struct._object** %res, align 8, !dbg !2656, !tbaa !843
  %cmp9 = icmp eq %struct._object* %11, null, !dbg !2657
  br i1 %cmp9, label %if.then.11, label %lor.lhs.false, !dbg !2658

lor.lhs.false:                                    ; preds = %if.end.7
  %12 = load %struct._object*, %struct._object** %res, align 8, !dbg !2659, !tbaa !843
  %cmp10 = icmp eq %struct._object* %12, @_Py_NoneStruct, !dbg !2661
  br i1 %cmp10, label %if.then.11, label %if.end.15, !dbg !2662

if.then.11:                                       ; preds = %lor.lhs.false, %if.end.7
  br label %do.body, !dbg !2663

do.body:                                          ; preds = %if.then.11
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2664
  call void @llvm.lifetime.start(i64 8, i8* %13) #3, !dbg !2664
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !704, metadata !847), !dbg !2666
  %14 = load %struct._object*, %struct._object** %b, align 8, !dbg !2667, !tbaa !843
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8, !dbg !2666, !tbaa !843
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2668, !tbaa !843
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !2670
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !2671, !tbaa !864
  %dec = add i64 %16, -1, !dbg !2671
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2671, !tbaa !864
  %cmp12 = icmp ne i64 %dec, 0, !dbg !2672
  br i1 %cmp12, label %if.then.13, label %if.else, !dbg !2673

if.then.13:                                       ; preds = %do.body
  br label %if.end.14, !dbg !2674

if.else:                                          ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2676, !tbaa !843
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !2678
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2678, !tbaa !904
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4, !dbg !2679
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2679, !tbaa !906
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2680, !tbaa !843
  call void %19(%struct._object* %20), !dbg !2681
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.13
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2682
  call void @llvm.lifetime.end(i64 8, i8* %21) #3, !dbg !2682
  br label %do.cond, !dbg !2684

do.cond:                                          ; preds = %if.end.14
  br label %do.end, !dbg !2685

do.end:                                           ; preds = %do.cond
  %22 = load %struct._object*, %struct._object** %res, align 8, !dbg !2687, !tbaa !843
  store %struct._object* %22, %struct._object** %retval, !dbg !2688
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2688

if.end.15:                                        ; preds = %lor.lhs.false
  %23 = load %struct._object*, %struct._object** %res, align 8, !dbg !2689, !tbaa !843
  %24 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2690, !tbaa !843
  %call16 = call i64 @PyNumber_AsSsize_t(%struct._object* %23, %struct._object* %24), !dbg !2691
  store i64 %call16, i64* %n, align 8, !dbg !2692, !tbaa !1766
  br label %do.body.17, !dbg !2693

do.body.17:                                       ; preds = %if.end.15
  %25 = bitcast %struct._object** %_py_decref_tmp18 to i8*, !dbg !2694
  call void @llvm.lifetime.start(i64 8, i8* %25) #3, !dbg !2694
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp18, metadata !708, metadata !847), !dbg !2696
  %26 = load %struct._object*, %struct._object** %res, align 8, !dbg !2697, !tbaa !843
  store %struct._object* %26, %struct._object** %_py_decref_tmp18, align 8, !dbg !2696, !tbaa !843
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8, !dbg !2698, !tbaa !843
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0, !dbg !2700
  %28 = load i64, i64* %ob_refcnt19, align 8, !dbg !2701, !tbaa !864
  %dec20 = add i64 %28, -1, !dbg !2701
  store i64 %dec20, i64* %ob_refcnt19, align 8, !dbg !2701, !tbaa !864
  %cmp21 = icmp ne i64 %dec20, 0, !dbg !2702
  br i1 %cmp21, label %if.then.22, label %if.else.23, !dbg !2703

if.then.22:                                       ; preds = %do.body.17
  br label %if.end.26, !dbg !2704

if.else.23:                                       ; preds = %do.body.17
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8, !dbg !2706, !tbaa !843
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1, !dbg !2708
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8, !dbg !2708, !tbaa !904
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4, !dbg !2709
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8, !dbg !2709, !tbaa !906
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8, !dbg !2710, !tbaa !843
  call void %31(%struct._object* %32), !dbg !2711
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.22
  %33 = bitcast %struct._object** %_py_decref_tmp18 to i8*, !dbg !2712
  call void @llvm.lifetime.end(i64 8, i8* %33) #3, !dbg !2712
  br label %do.cond.27, !dbg !2714

do.cond.27:                                       ; preds = %if.end.26
  br label %do.end.28, !dbg !2715

do.end.28:                                        ; preds = %do.cond.27
  %34 = load i64, i64* %n, align 8, !dbg !2717, !tbaa !1766
  %cmp29 = icmp eq i64 %34, -1, !dbg !2718
  br i1 %cmp29, label %land.lhs.true, label %if.end.45, !dbg !2719

land.lhs.true:                                    ; preds = %do.end.28
  %call30 = call %struct._object* @PyErr_Occurred(), !dbg !2720
  %tobool31 = icmp ne %struct._object* %call30, null, !dbg !2720
  br i1 %tobool31, label %if.then.32, label %if.end.45, !dbg !2722

if.then.32:                                       ; preds = %land.lhs.true
  br label %do.body.33, !dbg !2723

do.body.33:                                       ; preds = %if.then.32
  %35 = bitcast %struct._object** %_py_decref_tmp34 to i8*, !dbg !2724
  call void @llvm.lifetime.start(i64 8, i8* %35) #3, !dbg !2724
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp34, metadata !710, metadata !847), !dbg !2726
  %36 = load %struct._object*, %struct._object** %b, align 8, !dbg !2727, !tbaa !843
  store %struct._object* %36, %struct._object** %_py_decref_tmp34, align 8, !dbg !2726, !tbaa !843
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !2728, !tbaa !843
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0, !dbg !2730
  %38 = load i64, i64* %ob_refcnt35, align 8, !dbg !2731, !tbaa !864
  %dec36 = add i64 %38, -1, !dbg !2731
  store i64 %dec36, i64* %ob_refcnt35, align 8, !dbg !2731, !tbaa !864
  %cmp37 = icmp ne i64 %dec36, 0, !dbg !2732
  br i1 %cmp37, label %if.then.38, label %if.else.39, !dbg !2733

if.then.38:                                       ; preds = %do.body.33
  br label %if.end.42, !dbg !2734

if.else.39:                                       ; preds = %do.body.33
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !2736, !tbaa !843
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1, !dbg !2738
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8, !dbg !2738, !tbaa !904
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4, !dbg !2739
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8, !dbg !2739, !tbaa !906
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !2740, !tbaa !843
  call void %41(%struct._object* %42), !dbg !2741
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  %43 = bitcast %struct._object** %_py_decref_tmp34 to i8*, !dbg !2742
  call void @llvm.lifetime.end(i64 8, i8* %43) #3, !dbg !2742
  br label %do.cond.43, !dbg !2744

do.cond.43:                                       ; preds = %if.end.42
  br label %do.end.44, !dbg !2745

do.end.44:                                        ; preds = %do.cond.43
  store %struct._object* null, %struct._object** %retval, !dbg !2747
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2747

if.end.45:                                        ; preds = %land.lhs.true, %do.end.28
  %44 = load %struct._object*, %struct._object** %b, align 8, !dbg !2748, !tbaa !843
  %call46 = call i8* @PyByteArray_AsString(%struct._object* %44), !dbg !2749
  %45 = load i64, i64* %n, align 8, !dbg !2750, !tbaa !1766
  %call47 = call %struct._object* @PyBytes_FromStringAndSize(i8* %call46, i64 %45), !dbg !2751
  store %struct._object* %call47, %struct._object** %res, align 8, !dbg !2752, !tbaa !843
  br label %do.body.48, !dbg !2753

do.body.48:                                       ; preds = %if.end.45
  %46 = bitcast %struct._object** %_py_decref_tmp49 to i8*, !dbg !2754
  call void @llvm.lifetime.start(i64 8, i8* %46) #3, !dbg !2754
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp49, metadata !714, metadata !847), !dbg !2756
  %47 = load %struct._object*, %struct._object** %b, align 8, !dbg !2757, !tbaa !843
  store %struct._object* %47, %struct._object** %_py_decref_tmp49, align 8, !dbg !2756, !tbaa !843
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8, !dbg !2758, !tbaa !843
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0, !dbg !2760
  %49 = load i64, i64* %ob_refcnt50, align 8, !dbg !2761, !tbaa !864
  %dec51 = add i64 %49, -1, !dbg !2761
  store i64 %dec51, i64* %ob_refcnt50, align 8, !dbg !2761, !tbaa !864
  %cmp52 = icmp ne i64 %dec51, 0, !dbg !2762
  br i1 %cmp52, label %if.then.53, label %if.else.54, !dbg !2763

if.then.53:                                       ; preds = %do.body.48
  br label %if.end.57, !dbg !2764

if.else.54:                                       ; preds = %do.body.48
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8, !dbg !2766, !tbaa !843
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1, !dbg !2768
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8, !dbg !2768, !tbaa !904
  %tp_dealloc56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4, !dbg !2769
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc56, align 8, !dbg !2769, !tbaa !906
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8, !dbg !2770, !tbaa !843
  call void %52(%struct._object* %53), !dbg !2771
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.53
  %54 = bitcast %struct._object** %_py_decref_tmp49 to i8*, !dbg !2772
  call void @llvm.lifetime.end(i64 8, i8* %54) #3, !dbg !2772
  br label %do.cond.58, !dbg !2773

do.cond.58:                                       ; preds = %if.end.57
  br label %do.end.59, !dbg !2774

do.end.59:                                        ; preds = %do.cond.58
  %55 = load %struct._object*, %struct._object** %res, align 8, !dbg !2776, !tbaa !843
  store %struct._object* %55, %struct._object** %retval, !dbg !2777
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2777

cleanup:                                          ; preds = %do.end.59, %do.end.44, %do.end, %if.then.6, %if.then.1, %if.then
  %56 = bitcast %struct._object** %res to i8*, !dbg !2778
  call void @llvm.lifetime.end(i64 8, i8* %56) #3, !dbg !2778
  %57 = bitcast %struct._object** %b to i8*, !dbg !2778
  call void @llvm.lifetime.end(i64 8, i8* %57) #3, !dbg !2778
  %58 = bitcast i64* %n to i8*, !dbg !2778
  call void @llvm.lifetime.end(i64 8, i8* %58) #3, !dbg !2778
  %59 = load %struct._object*, %struct._object** %retval, !dbg !2778
  ret %struct._object* %59, !dbg !2778
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
  %cleanup.dest.slot = alloca i32
  %data = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp16 = alloca %struct._object*, align 8
  %_py_decref_tmp29 = alloca %struct._object*, align 8
  %_py_decref_tmp45 = alloca %struct._object*, align 8
  %_py_decref_tmp57 = alloca %struct._object*, align 8
  %_py_decref_tmp73 = alloca %struct._object*, align 8
  %_py_decref_tmp87 = alloca %struct._object*, align 8
  %_py_decref_tmp101 = alloca %struct._object*, align 8
  %_py_decref_tmp115 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !718, metadata !847), !dbg !2779
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !843
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !719, metadata !847), !dbg !2780
  %0 = bitcast i32* %r to i8*, !dbg !2781
  call void @llvm.lifetime.start(i64 4, i8* %0) #3, !dbg !2781
  call void @llvm.dbg.declare(metadata i32* %r, metadata !720, metadata !847), !dbg !2782
  %1 = bitcast %struct._object** %chunks to i8*, !dbg !2783
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2783
  call void @llvm.dbg.declare(metadata %struct._object** %chunks, metadata !721, metadata !847), !dbg !2784
  %call = call %struct._object* @PyList_New(i64 0), !dbg !2785
  store %struct._object* %call, %struct._object** %chunks, align 8, !dbg !2784, !tbaa !843
  %2 = bitcast %struct._object** %result to i8*, !dbg !2786
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !2786
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !722, metadata !847), !dbg !2787
  %3 = load %struct._object*, %struct._object** %chunks, align 8, !dbg !2788, !tbaa !843
  %cmp = icmp eq %struct._object* %3, null, !dbg !2790
  br i1 %cmp, label %if.then, label %if.end, !dbg !2791

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2792
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.126, !dbg !2792

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !2793

while.cond:                                       ; preds = %NodeBlock, %cleanup.cont, %if.end
  br label %while.body, !dbg !2794

while.body:                                       ; preds = %while.cond
  %4 = bitcast %struct._object** %data to i8*, !dbg !2797
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !2797
  call void @llvm.dbg.declare(metadata %struct._object** %data, metadata !723, metadata !847), !dbg !2798
  %5 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !2799, !tbaa !843
  %call1 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %5, %struct._Py_Identifier* @PyId_read, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i32 8192), !dbg !2800
  store %struct._object* %call1, %struct._object** %data, align 8, !dbg !2798, !tbaa !843
  %6 = load %struct._object*, %struct._object** %data, align 8, !dbg !2801, !tbaa !843
  %tobool = icmp ne %struct._object* %6, null, !dbg !2801
  br i1 %tobool, label %if.end.10, label %if.then.2, !dbg !2802

if.then.2:                                        ; preds = %while.body
  %call3 = call i32 @_PyIO_trap_eintr(), !dbg !2803
  %tobool4 = icmp ne i32 %call3, 0, !dbg !2803
  br i1 %tobool4, label %if.then.5, label %if.end.6, !dbg !2805

if.then.5:                                        ; preds = %if.then.2
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2806

if.end.6:                                         ; preds = %if.then.2
  br label %do.body, !dbg !2808

do.body:                                          ; preds = %if.end.6
  %7 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2809
  call void @llvm.lifetime.start(i64 8, i8* %7) #3, !dbg !2809
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !725, metadata !847), !dbg !2811
  %8 = load %struct._object*, %struct._object** %chunks, align 8, !dbg !2812, !tbaa !843
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8, !dbg !2811, !tbaa !843
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2813, !tbaa !843
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !2815
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !2816, !tbaa !864
  %dec = add i64 %10, -1, !dbg !2816
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2816, !tbaa !864
  %cmp7 = icmp ne i64 %dec, 0, !dbg !2817
  br i1 %cmp7, label %if.then.8, label %if.else, !dbg !2818

if.then.8:                                        ; preds = %do.body
  br label %if.end.9, !dbg !2819

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2821, !tbaa !843
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !2823
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2823, !tbaa !904
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4, !dbg !2824
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2824, !tbaa !906
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2825, !tbaa !843
  call void %13(%struct._object* %14), !dbg !2826
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2827
  call void @llvm.lifetime.end(i64 8, i8* %15) #3, !dbg !2827
  br label %do.cond, !dbg !2829

do.cond:                                          ; preds = %if.end.9
  br label %do.end, !dbg !2830

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !2832
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2832

if.end.10:                                        ; preds = %while.body
  %16 = load %struct._object*, %struct._object** %data, align 8, !dbg !2833, !tbaa !843
  %cmp11 = icmp eq %struct._object* %16, @_Py_NoneStruct, !dbg !2834
  br i1 %cmp11, label %if.then.12, label %if.end.40, !dbg !2835

if.then.12:                                       ; preds = %if.end.10
  %17 = load %struct._object*, %struct._object** %chunks, align 8, !dbg !2836, !tbaa !843
  %18 = bitcast %struct._object* %17 to %struct.PyVarObject*, !dbg !2837
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %18, i32 0, i32 1, !dbg !2838
  %19 = load i64, i64* %ob_size, align 8, !dbg !2838, !tbaa !1803
  %cmp13 = icmp eq i64 %19, 0, !dbg !2839
  br i1 %cmp13, label %if.then.14, label %if.end.27, !dbg !2840

if.then.14:                                       ; preds = %if.then.12
  br label %do.body.15, !dbg !2841

do.body.15:                                       ; preds = %if.then.14
  %20 = bitcast %struct._object** %_py_decref_tmp16 to i8*, !dbg !2842
  call void @llvm.lifetime.start(i64 8, i8* %20) #3, !dbg !2842
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp16, metadata !729, metadata !847), !dbg !2844
  %21 = load %struct._object*, %struct._object** %chunks, align 8, !dbg !2845, !tbaa !843
  store %struct._object* %21, %struct._object** %_py_decref_tmp16, align 8, !dbg !2844, !tbaa !843
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8, !dbg !2846, !tbaa !843
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !2848
  %23 = load i64, i64* %ob_refcnt17, align 8, !dbg !2849, !tbaa !864
  %dec18 = add i64 %23, -1, !dbg !2849
  store i64 %dec18, i64* %ob_refcnt17, align 8, !dbg !2849, !tbaa !864
  %cmp19 = icmp ne i64 %dec18, 0, !dbg !2850
  br i1 %cmp19, label %if.then.20, label %if.else.21, !dbg !2851

if.then.20:                                       ; preds = %do.body.15
  br label %if.end.24, !dbg !2852

if.else.21:                                       ; preds = %do.body.15
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8, !dbg !2854, !tbaa !843
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !2856
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8, !dbg !2856, !tbaa !904
  %tp_dealloc23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !2857
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc23, align 8, !dbg !2857, !tbaa !906
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8, !dbg !2858, !tbaa !843
  call void %26(%struct._object* %27), !dbg !2859
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21, %if.then.20
  %28 = bitcast %struct._object** %_py_decref_tmp16 to i8*, !dbg !2860
  call void @llvm.lifetime.end(i64 8, i8* %28) #3, !dbg !2860
  br label %do.cond.25, !dbg !2862

do.cond.25:                                       ; preds = %if.end.24
  br label %do.end.26, !dbg !2863

do.end.26:                                        ; preds = %do.cond.25
  %29 = load %struct._object*, %struct._object** %data, align 8, !dbg !2865, !tbaa !843
  store %struct._object* %29, %struct._object** %retval, !dbg !2866
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2866

if.end.27:                                        ; preds = %if.then.12
  br label %do.body.28, !dbg !2867

do.body.28:                                       ; preds = %if.end.27
  %30 = bitcast %struct._object** %_py_decref_tmp29 to i8*, !dbg !2868
  call void @llvm.lifetime.start(i64 8, i8* %30) #3, !dbg !2868
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp29, metadata !735, metadata !847), !dbg !2870
  %31 = load %struct._object*, %struct._object** %data, align 8, !dbg !2871, !tbaa !843
  store %struct._object* %31, %struct._object** %_py_decref_tmp29, align 8, !dbg !2870, !tbaa !843
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8, !dbg !2872, !tbaa !843
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0, !dbg !2874
  %33 = load i64, i64* %ob_refcnt30, align 8, !dbg !2875, !tbaa !864
  %dec31 = add i64 %33, -1, !dbg !2875
  store i64 %dec31, i64* %ob_refcnt30, align 8, !dbg !2875, !tbaa !864
  %cmp32 = icmp ne i64 %dec31, 0, !dbg !2876
  br i1 %cmp32, label %if.then.33, label %if.else.34, !dbg !2877

if.then.33:                                       ; preds = %do.body.28
  br label %if.end.37, !dbg !2878

if.else.34:                                       ; preds = %do.body.28
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8, !dbg !2880, !tbaa !843
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1, !dbg !2882
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8, !dbg !2882, !tbaa !904
  %tp_dealloc36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4, !dbg !2883
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36, align 8, !dbg !2883, !tbaa !906
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8, !dbg !2884, !tbaa !843
  call void %36(%struct._object* %37), !dbg !2885
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.33
  %38 = bitcast %struct._object** %_py_decref_tmp29 to i8*, !dbg !2886
  call void @llvm.lifetime.end(i64 8, i8* %38) #3, !dbg !2886
  br label %do.cond.38, !dbg !2888

do.cond.38:                                       ; preds = %if.end.37
  br label %do.end.39, !dbg !2889

do.end.39:                                        ; preds = %do.cond.38
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2891

if.end.40:                                        ; preds = %if.end.10
  %39 = load %struct._object*, %struct._object** %data, align 8, !dbg !2892, !tbaa !843
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1, !dbg !2893
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8, !dbg !2893, !tbaa !904
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 19, !dbg !2894
  %41 = load i64, i64* %tp_flags, align 8, !dbg !2894, !tbaa !1236
  %and = and i64 %41, 134217728, !dbg !2895
  %cmp42 = icmp ne i64 %and, 0, !dbg !2896
  br i1 %cmp42, label %if.end.68, label %if.then.43, !dbg !2897

if.then.43:                                       ; preds = %if.end.40
  br label %do.body.44, !dbg !2898

do.body.44:                                       ; preds = %if.then.43
  %42 = bitcast %struct._object** %_py_decref_tmp45 to i8*, !dbg !2899
  call void @llvm.lifetime.start(i64 8, i8* %42) #3, !dbg !2899
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp45, metadata !737, metadata !847), !dbg !2901
  %43 = load %struct._object*, %struct._object** %chunks, align 8, !dbg !2902, !tbaa !843
  store %struct._object* %43, %struct._object** %_py_decref_tmp45, align 8, !dbg !2901, !tbaa !843
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8, !dbg !2903, !tbaa !843
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0, !dbg !2905
  %45 = load i64, i64* %ob_refcnt46, align 8, !dbg !2906, !tbaa !864
  %dec47 = add i64 %45, -1, !dbg !2906
  store i64 %dec47, i64* %ob_refcnt46, align 8, !dbg !2906, !tbaa !864
  %cmp48 = icmp ne i64 %dec47, 0, !dbg !2907
  br i1 %cmp48, label %if.then.49, label %if.else.50, !dbg !2908

if.then.49:                                       ; preds = %do.body.44
  br label %if.end.53, !dbg !2909

if.else.50:                                       ; preds = %do.body.44
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8, !dbg !2911, !tbaa !843
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1, !dbg !2913
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8, !dbg !2913, !tbaa !904
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4, !dbg !2914
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8, !dbg !2914, !tbaa !906
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8, !dbg !2915, !tbaa !843
  call void %48(%struct._object* %49), !dbg !2916
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.49
  %50 = bitcast %struct._object** %_py_decref_tmp45 to i8*, !dbg !2917
  call void @llvm.lifetime.end(i64 8, i8* %50) #3, !dbg !2917
  br label %do.cond.54, !dbg !2919

do.cond.54:                                       ; preds = %if.end.53
  br label %do.end.55, !dbg !2920

do.end.55:                                        ; preds = %do.cond.54
  br label %do.body.56, !dbg !2922

do.body.56:                                       ; preds = %do.end.55
  %51 = bitcast %struct._object** %_py_decref_tmp57 to i8*, !dbg !2923
  call void @llvm.lifetime.start(i64 8, i8* %51) #3, !dbg !2923
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp57, metadata !741, metadata !847), !dbg !2925
  %52 = load %struct._object*, %struct._object** %data, align 8, !dbg !2926, !tbaa !843
  store %struct._object* %52, %struct._object** %_py_decref_tmp57, align 8, !dbg !2925, !tbaa !843
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8, !dbg !2927, !tbaa !843
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0, !dbg !2929
  %54 = load i64, i64* %ob_refcnt58, align 8, !dbg !2930, !tbaa !864
  %dec59 = add i64 %54, -1, !dbg !2930
  store i64 %dec59, i64* %ob_refcnt58, align 8, !dbg !2930, !tbaa !864
  %cmp60 = icmp ne i64 %dec59, 0, !dbg !2931
  br i1 %cmp60, label %if.then.61, label %if.else.62, !dbg !2932

if.then.61:                                       ; preds = %do.body.56
  br label %if.end.65, !dbg !2933

if.else.62:                                       ; preds = %do.body.56
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8, !dbg !2935, !tbaa !843
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1, !dbg !2937
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8, !dbg !2937, !tbaa !904
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4, !dbg !2938
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8, !dbg !2938, !tbaa !906
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8, !dbg !2939, !tbaa !843
  call void %57(%struct._object* %58), !dbg !2940
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.61
  %59 = bitcast %struct._object** %_py_decref_tmp57 to i8*, !dbg !2941
  call void @llvm.lifetime.end(i64 8, i8* %59) #3, !dbg !2941
  br label %do.cond.66, !dbg !2942

do.cond.66:                                       ; preds = %if.end.65
  br label %do.end.67, !dbg !2943

do.end.67:                                        ; preds = %do.cond.66
  %60 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2945, !tbaa !843
  call void @PyErr_SetString(%struct._object* %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.43, i32 0, i32 0)), !dbg !2946
  store %struct._object* null, %struct._object** %retval, !dbg !2947
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2947

if.end.68:                                        ; preds = %if.end.40
  %61 = load %struct._object*, %struct._object** %data, align 8, !dbg !2948, !tbaa !843
  %62 = bitcast %struct._object* %61 to %struct.PyVarObject*, !dbg !2949
  %ob_size69 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %62, i32 0, i32 1, !dbg !2950
  %63 = load i64, i64* %ob_size69, align 8, !dbg !2950, !tbaa !1803
  %cmp70 = icmp eq i64 %63, 0, !dbg !2951
  br i1 %cmp70, label %if.then.71, label %if.end.84, !dbg !2952

if.then.71:                                       ; preds = %if.end.68
  br label %do.body.72, !dbg !2953

do.body.72:                                       ; preds = %if.then.71
  %64 = bitcast %struct._object** %_py_decref_tmp73 to i8*, !dbg !2954
  call void @llvm.lifetime.start(i64 8, i8* %64) #3, !dbg !2954
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp73, metadata !743, metadata !847), !dbg !2956
  %65 = load %struct._object*, %struct._object** %data, align 8, !dbg !2957, !tbaa !843
  store %struct._object* %65, %struct._object** %_py_decref_tmp73, align 8, !dbg !2956, !tbaa !843
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp73, align 8, !dbg !2958, !tbaa !843
  %ob_refcnt74 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 0, !dbg !2960
  %67 = load i64, i64* %ob_refcnt74, align 8, !dbg !2961, !tbaa !864
  %dec75 = add i64 %67, -1, !dbg !2961
  store i64 %dec75, i64* %ob_refcnt74, align 8, !dbg !2961, !tbaa !864
  %cmp76 = icmp ne i64 %dec75, 0, !dbg !2962
  br i1 %cmp76, label %if.then.77, label %if.else.78, !dbg !2963

if.then.77:                                       ; preds = %do.body.72
  br label %if.end.81, !dbg !2964

if.else.78:                                       ; preds = %do.body.72
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp73, align 8, !dbg !2966, !tbaa !843
  %ob_type79 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 1, !dbg !2968
  %69 = load %struct._typeobject*, %struct._typeobject** %ob_type79, align 8, !dbg !2968, !tbaa !904
  %tp_dealloc80 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %69, i32 0, i32 4, !dbg !2969
  %70 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc80, align 8, !dbg !2969, !tbaa !906
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp73, align 8, !dbg !2970, !tbaa !843
  call void %70(%struct._object* %71), !dbg !2971
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.78, %if.then.77
  %72 = bitcast %struct._object** %_py_decref_tmp73 to i8*, !dbg !2972
  call void @llvm.lifetime.end(i64 8, i8* %72) #3, !dbg !2972
  br label %do.cond.82, !dbg !2974

do.cond.82:                                       ; preds = %if.end.81
  br label %do.end.83, !dbg !2975

do.end.83:                                        ; preds = %do.cond.82
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2977

if.end.84:                                        ; preds = %if.end.68
  %73 = load %struct._object*, %struct._object** %chunks, align 8, !dbg !2978, !tbaa !843
  %74 = load %struct._object*, %struct._object** %data, align 8, !dbg !2979, !tbaa !843
  %call85 = call i32 @PyList_Append(%struct._object* %73, %struct._object* %74), !dbg !2980
  store i32 %call85, i32* %r, align 4, !dbg !2981, !tbaa !886
  br label %do.body.86, !dbg !2982

do.body.86:                                       ; preds = %if.end.84
  %75 = bitcast %struct._object** %_py_decref_tmp87 to i8*, !dbg !2983
  call void @llvm.lifetime.start(i64 8, i8* %75) #3, !dbg !2983
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp87, metadata !747, metadata !847), !dbg !2985
  %76 = load %struct._object*, %struct._object** %data, align 8, !dbg !2986, !tbaa !843
  store %struct._object* %76, %struct._object** %_py_decref_tmp87, align 8, !dbg !2985, !tbaa !843
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp87, align 8, !dbg !2987, !tbaa !843
  %ob_refcnt88 = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 0, !dbg !2989
  %78 = load i64, i64* %ob_refcnt88, align 8, !dbg !2990, !tbaa !864
  %dec89 = add i64 %78, -1, !dbg !2990
  store i64 %dec89, i64* %ob_refcnt88, align 8, !dbg !2990, !tbaa !864
  %cmp90 = icmp ne i64 %dec89, 0, !dbg !2991
  br i1 %cmp90, label %if.then.91, label %if.else.92, !dbg !2992

if.then.91:                                       ; preds = %do.body.86
  br label %if.end.95, !dbg !2993

if.else.92:                                       ; preds = %do.body.86
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp87, align 8, !dbg !2995, !tbaa !843
  %ob_type93 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 1, !dbg !2997
  %80 = load %struct._typeobject*, %struct._typeobject** %ob_type93, align 8, !dbg !2997, !tbaa !904
  %tp_dealloc94 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %80, i32 0, i32 4, !dbg !2998
  %81 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc94, align 8, !dbg !2998, !tbaa !906
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp87, align 8, !dbg !2999, !tbaa !843
  call void %81(%struct._object* %82), !dbg !3000
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.92, %if.then.91
  %83 = bitcast %struct._object** %_py_decref_tmp87 to i8*, !dbg !3001
  call void @llvm.lifetime.end(i64 8, i8* %83) #3, !dbg !3001
  br label %do.cond.96, !dbg !3003

do.cond.96:                                       ; preds = %if.end.95
  br label %do.end.97, !dbg !3004

do.end.97:                                        ; preds = %do.cond.96
  %84 = load i32, i32* %r, align 4, !dbg !3006, !tbaa !886
  %cmp98 = icmp slt i32 %84, 0, !dbg !3007
  br i1 %cmp98, label %if.then.99, label %if.end.112, !dbg !3008

if.then.99:                                       ; preds = %do.end.97
  br label %do.body.100, !dbg !3009

do.body.100:                                      ; preds = %if.then.99
  %85 = bitcast %struct._object** %_py_decref_tmp101 to i8*, !dbg !3010
  call void @llvm.lifetime.start(i64 8, i8* %85) #3, !dbg !3010
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp101, metadata !749, metadata !847), !dbg !3012
  %86 = load %struct._object*, %struct._object** %chunks, align 8, !dbg !3013, !tbaa !843
  store %struct._object* %86, %struct._object** %_py_decref_tmp101, align 8, !dbg !3012, !tbaa !843
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8, !dbg !3014, !tbaa !843
  %ob_refcnt102 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 0, !dbg !3016
  %88 = load i64, i64* %ob_refcnt102, align 8, !dbg !3017, !tbaa !864
  %dec103 = add i64 %88, -1, !dbg !3017
  store i64 %dec103, i64* %ob_refcnt102, align 8, !dbg !3017, !tbaa !864
  %cmp104 = icmp ne i64 %dec103, 0, !dbg !3018
  br i1 %cmp104, label %if.then.105, label %if.else.106, !dbg !3019

if.then.105:                                      ; preds = %do.body.100
  br label %if.end.109, !dbg !3020

if.else.106:                                      ; preds = %do.body.100
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8, !dbg !3022, !tbaa !843
  %ob_type107 = getelementptr inbounds %struct._object, %struct._object* %89, i32 0, i32 1, !dbg !3024
  %90 = load %struct._typeobject*, %struct._typeobject** %ob_type107, align 8, !dbg !3024, !tbaa !904
  %tp_dealloc108 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %90, i32 0, i32 4, !dbg !3025
  %91 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc108, align 8, !dbg !3025, !tbaa !906
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8, !dbg !3026, !tbaa !843
  call void %91(%struct._object* %92), !dbg !3027
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.106, %if.then.105
  %93 = bitcast %struct._object** %_py_decref_tmp101 to i8*, !dbg !3028
  call void @llvm.lifetime.end(i64 8, i8* %93) #3, !dbg !3028
  br label %do.cond.110, !dbg !3030

do.cond.110:                                      ; preds = %if.end.109
  br label %do.end.111, !dbg !3031

do.end.111:                                       ; preds = %do.cond.110
  store %struct._object* null, %struct._object** %retval, !dbg !3033
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3033

if.end.112:                                       ; preds = %do.end.97
  store i32 0, i32* %cleanup.dest.slot, !dbg !3034
  br label %cleanup, !dbg !3034

cleanup:                                          ; preds = %if.end.112, %do.end.111, %do.end.83, %do.end.67, %do.end.39, %do.end.26, %do.end, %if.then.5
  %94 = bitcast %struct._object** %data to i8*, !dbg !3035
  call void @llvm.lifetime.end(i64 8, i8* %94) #3, !dbg !3035
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %NodeBlock.3

NodeBlock.3:                                      ; preds = %cleanup
  %Pivot.4 = icmp slt i32 %cleanup.dest, 2
  br i1 %Pivot.4, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.3
  %Pivot = icmp slt i32 %cleanup.dest, 3
  br i1 %Pivot, label %while.cond, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %cleanup.dest, 3
  br i1 %SwitchLeaf2, label %while.end, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock.3
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %while.cond, !dbg !2793

while.end:                                        ; preds = %LeafBlock.1
  %95 = load %struct._object*, %struct._object** @_PyIO_empty_bytes, align 8, !dbg !3036, !tbaa !843
  %96 = load %struct._object*, %struct._object** %chunks, align 8, !dbg !3037, !tbaa !843
  %call113 = call %struct._object* @_PyBytes_Join(%struct._object* %95, %struct._object* %96), !dbg !3038
  store %struct._object* %call113, %struct._object** %result, align 8, !dbg !3039, !tbaa !843
  br label %do.body.114, !dbg !3040

do.body.114:                                      ; preds = %while.end
  %97 = bitcast %struct._object** %_py_decref_tmp115 to i8*, !dbg !3041
  call void @llvm.lifetime.start(i64 8, i8* %97) #3, !dbg !3041
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp115, metadata !753, metadata !847), !dbg !3043
  %98 = load %struct._object*, %struct._object** %chunks, align 8, !dbg !3044, !tbaa !843
  store %struct._object* %98, %struct._object** %_py_decref_tmp115, align 8, !dbg !3043, !tbaa !843
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8, !dbg !3045, !tbaa !843
  %ob_refcnt116 = getelementptr inbounds %struct._object, %struct._object* %99, i32 0, i32 0, !dbg !3047
  %100 = load i64, i64* %ob_refcnt116, align 8, !dbg !3048, !tbaa !864
  %dec117 = add i64 %100, -1, !dbg !3048
  store i64 %dec117, i64* %ob_refcnt116, align 8, !dbg !3048, !tbaa !864
  %cmp118 = icmp ne i64 %dec117, 0, !dbg !3049
  br i1 %cmp118, label %if.then.119, label %if.else.120, !dbg !3050

if.then.119:                                      ; preds = %do.body.114
  br label %if.end.123, !dbg !3051

if.else.120:                                      ; preds = %do.body.114
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8, !dbg !3053, !tbaa !843
  %ob_type121 = getelementptr inbounds %struct._object, %struct._object* %101, i32 0, i32 1, !dbg !3055
  %102 = load %struct._typeobject*, %struct._typeobject** %ob_type121, align 8, !dbg !3055, !tbaa !904
  %tp_dealloc122 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %102, i32 0, i32 4, !dbg !3056
  %103 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc122, align 8, !dbg !3056, !tbaa !906
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8, !dbg !3057, !tbaa !843
  call void %103(%struct._object* %104), !dbg !3058
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.120, %if.then.119
  %105 = bitcast %struct._object** %_py_decref_tmp115 to i8*, !dbg !3059
  call void @llvm.lifetime.end(i64 8, i8* %105) #3, !dbg !3059
  br label %do.cond.124, !dbg !3061

do.cond.124:                                      ; preds = %if.end.123
  br label %do.end.125, !dbg !3062

do.end.125:                                       ; preds = %do.cond.124
  %106 = load %struct._object*, %struct._object** %result, align 8, !dbg !3064, !tbaa !843
  store %struct._object* %106, %struct._object** %retval, !dbg !3065
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.126, !dbg !3065

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %cleanup.126

cleanup.126:                                      ; preds = %NewDefault, %do.end.125, %if.then
  %107 = bitcast %struct._object** %result to i8*, !dbg !3066
  call void @llvm.lifetime.end(i64 8, i8* %107) #3, !dbg !3066
  %108 = bitcast %struct._object** %chunks to i8*, !dbg !3066
  call void @llvm.lifetime.end(i64 8, i8* %108) #3, !dbg !3066
  %109 = bitcast i32* %r to i8*, !dbg !3066
  call void @llvm.lifetime.end(i64 4, i8* %109) #3, !dbg !3066
  %110 = load %struct._object*, %struct._object** %retval, !dbg !3066
  ret %struct._object* %110, !dbg !3066
}

declare i64 @PyNumber_AsSsize_t(%struct._object*, %struct._object*) #2

declare i8* @PyByteArray_AsString(%struct._object*) #2

declare %struct._object* @_PyBytes_Join(%struct._object*, %struct._object*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!840, !841}
!llvm.ident = !{!842}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !383, globals: !755)
!1 = !DIFile(filename: "iobase.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !89, !350, !94, !364, !365, !373}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !6, line: 109, baseType: !7)
!6 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !6, line: 105, size: 128, align: 64, elements: !8)
!8 = !{!9, !17}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !7, file: !6, line: 107, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !11, line: 177, baseType: !12)
!11 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !13, line: 102, baseType: !14)
!13 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !15, line: 181, baseType: !16)
!15 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!47 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!95 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!281 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!282 = !{!283, !284, !286, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !280, file: !281, line: 41, baseType: !28, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !280, file: !281, line: 42, baseType: !285, size: 64, align: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !281, line: 18, baseType: !125)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !280, file: !281, line: 43, baseType: !43, size: 32, align: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !280, file: !281, line: 45, baseType: !28, size: 64, align: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !19, file: !6, line: 390, baseType: !289, size: 64, align: 64, offset: 1920)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !291, line: 18, size: 320, align: 64, elements: !292)
!291 = !DIFile(filename: "Include/structmember.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!292 = !{!293, !294, !295, !296, !297}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !290, file: !291, line: 19, baseType: !51, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !290, file: !291, line: 20, baseType: !43, size: 32, align: 32, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !290, file: !291, line: 21, baseType: !10, size: 64, align: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !290, file: !291, line: 22, baseType: !43, size: 32, align: 32, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !290, file: !291, line: 23, baseType: !51, size: 64, align: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !19, file: !6, line: 391, baseType: !299, size: 64, align: 64, offset: 1984)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !301, line: 11, size: 320, align: 64, elements: !302)
!301 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!352 = !DIFile(filename: "Include/objimpl.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!367 = !DIFile(filename: "Include/bytesobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!368 = !DICompositeType(tag: DW_TAG_structure_type, file: !367, line: 31, size: 320, align: 64, elements: !369)
!369 = !{!370, !371, !372}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !368, file: !367, line: 32, baseType: !22, size: 192, align: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ob_shash", scope: !368, file: !367, line: 33, baseType: !218, size: 64, align: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "ob_sval", scope: !368, file: !367, line: 34, baseType: !80, size: 8, align: 8, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyByteArrayObject", file: !375, line: 30, baseType: !376)
!375 = !DIFile(filename: "Include/bytearrayobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!376 = !DICompositeType(tag: DW_TAG_structure_type, file: !375, line: 23, size: 448, align: 64, elements: !377)
!377 = !{!378, !379, !380, !381, !382}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !376, file: !375, line: 24, baseType: !22, size: 192, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ob_alloc", scope: !376, file: !375, line: 25, baseType: !10, size: 64, align: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ob_bytes", scope: !376, file: !375, line: 26, baseType: !51, size: 64, align: 64, offset: 256)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ob_start", scope: !376, file: !375, line: 27, baseType: !51, size: 64, align: 64, offset: 320)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ob_exports", scope: !376, file: !375, line: 29, baseType: !43, size: 32, align: 32, offset: 384)
!383 = !{!384, !389, !393, !410, !427, !444, !451, !465, !485, !496, !507, !510, !518, !522, !526, !530, !534, !548, !552, !556, !560, !564, !568, !572, !576, !619, !651, !676, !680, !697, !716}
!384 = !DISubprogram(name: "_PyIOBase_check_closed", scope: !385, file: !385, line: 167, type: !126, isLocal: false, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @_PyIOBase_check_closed, variables: !386)
!385 = !DIFile(filename: "./Modules/_io/iobase.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!386 = !{!387, !388}
!387 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !384, file: !385, line: 167, type: !4)
!388 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !384, file: !385, line: 167, type: !4)
!389 = !DISubprogram(name: "_PyIOBase_finalize", scope: !385, file: !385, line: 252, type: !144, isLocal: false, isDefinition: true, scopeLine: 253, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @_PyIOBase_finalize, variables: !390)
!390 = !{!391, !392}
!391 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !389, file: !385, line: 252, type: !4)
!392 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "is_zombie", scope: !389, file: !385, line: 254, type: !43)
!393 = !DISubprogram(name: "_PyIOBase_check_seekable", scope: !385, file: !385, line: 320, type: !126, isLocal: false, isDefinition: true, scopeLine: 321, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @_PyIOBase_check_seekable, variables: !394)
!394 = !{!395, !396, !397, !398, !402, !406}
!395 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !393, file: !385, line: 320, type: !4)
!396 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !393, file: !385, line: 320, type: !4)
!397 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !393, file: !385, line: 322, type: !4)
!398 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !399, file: !385, line: 326, type: !4)
!399 = distinct !DILexicalBlock(scope: !400, file: !385, line: 326, column: 12)
!400 = distinct !DILexicalBlock(scope: !401, file: !385, line: 325, column: 48)
!401 = distinct !DILexicalBlock(scope: !393, file: !385, line: 325, column: 9)
!402 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !403, file: !385, line: 326, type: !4)
!403 = distinct !DILexicalBlock(scope: !404, file: !385, line: 326, column: 105)
!404 = distinct !DILexicalBlock(scope: !405, file: !385, line: 326, column: 80)
!405 = distinct !DILexicalBlock(scope: !399, file: !385, line: 326, column: 57)
!406 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !407, file: !385, line: 331, type: !4)
!407 = distinct !DILexicalBlock(scope: !408, file: !385, line: 331, column: 12)
!408 = distinct !DILexicalBlock(scope: !409, file: !385, line: 330, column: 49)
!409 = distinct !DILexicalBlock(scope: !393, file: !385, line: 330, column: 9)
!410 = !DISubprogram(name: "_PyIOBase_check_readable", scope: !385, file: !385, line: 349, type: !126, isLocal: false, isDefinition: true, scopeLine: 350, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @_PyIOBase_check_readable, variables: !411)
!411 = !{!412, !413, !414, !415, !419, !423}
!412 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !410, file: !385, line: 349, type: !4)
!413 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !410, file: !385, line: 349, type: !4)
!414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !410, file: !385, line: 351, type: !4)
!415 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !416, file: !385, line: 355, type: !4)
!416 = distinct !DILexicalBlock(scope: !417, file: !385, line: 355, column: 12)
!417 = distinct !DILexicalBlock(scope: !418, file: !385, line: 354, column: 48)
!418 = distinct !DILexicalBlock(scope: !410, file: !385, line: 354, column: 9)
!419 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !420, file: !385, line: 355, type: !4)
!420 = distinct !DILexicalBlock(scope: !421, file: !385, line: 355, column: 105)
!421 = distinct !DILexicalBlock(scope: !422, file: !385, line: 355, column: 80)
!422 = distinct !DILexicalBlock(scope: !416, file: !385, line: 355, column: 57)
!423 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !424, file: !385, line: 360, type: !4)
!424 = distinct !DILexicalBlock(scope: !425, file: !385, line: 360, column: 12)
!425 = distinct !DILexicalBlock(scope: !426, file: !385, line: 359, column: 49)
!426 = distinct !DILexicalBlock(scope: !410, file: !385, line: 359, column: 9)
!427 = !DISubprogram(name: "_PyIOBase_check_writable", scope: !385, file: !385, line: 378, type: !126, isLocal: false, isDefinition: true, scopeLine: 379, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @_PyIOBase_check_writable, variables: !428)
!428 = !{!429, !430, !431, !432, !436, !440}
!429 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !427, file: !385, line: 378, type: !4)
!430 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !427, file: !385, line: 378, type: !4)
!431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !427, file: !385, line: 380, type: !4)
!432 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !433, file: !385, line: 384, type: !4)
!433 = distinct !DILexicalBlock(scope: !434, file: !385, line: 384, column: 12)
!434 = distinct !DILexicalBlock(scope: !435, file: !385, line: 383, column: 48)
!435 = distinct !DILexicalBlock(scope: !427, file: !385, line: 383, column: 9)
!436 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !437, file: !385, line: 384, type: !4)
!437 = distinct !DILexicalBlock(scope: !438, file: !385, line: 384, column: 105)
!438 = distinct !DILexicalBlock(scope: !439, file: !385, line: 384, column: 80)
!439 = distinct !DILexicalBlock(scope: !433, file: !385, line: 384, column: 57)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !441, file: !385, line: 389, type: !4)
!441 = distinct !DILexicalBlock(scope: !442, file: !385, line: 389, column: 12)
!442 = distinct !DILexicalBlock(scope: !443, file: !385, line: 388, column: 49)
!443 = distinct !DILexicalBlock(scope: !427, file: !385, line: 388, column: 9)
!444 = !DISubprogram(name: "iobase_closed", scope: !385, file: !385, line: 146, type: !144, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @iobase_closed, variables: !445)
!445 = !{!446, !447, !448, !449}
!446 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !444, file: !385, line: 146, type: !4)
!447 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !444, file: !385, line: 148, type: !4)
!448 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "closed", scope: !444, file: !385, line: 149, type: !43)
!449 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !450, file: !385, line: 156, type: !4)
!450 = distinct !DILexicalBlock(scope: !444, file: !385, line: 156, column: 8)
!451 = !DISubprogram(name: "iobase_unsupported", scope: !385, file: !385, line: 70, type: !452, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*)* @iobase_unsupported, variables: !454)
!452 = !DISubroutineType(types: !453)
!453 = !{!4, !28}
!454 = !{!455, !456}
!455 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "message", arg: 1, scope: !451, file: !385, line: 70, type: !28)
!456 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "state", scope: !451, file: !385, line: 72, type: !457)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64, align: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "_PyIO_State", file: !459, line: 135, baseType: !460)
!459 = !DIFile(filename: "./Modules/_io/_iomodule.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!460 = !DICompositeType(tag: DW_TAG_structure_type, file: !459, line: 130, size: 192, align: 64, elements: !461)
!461 = !{!462, !463, !464}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !460, file: !459, line: 131, baseType: !43, size: 32, align: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "locale_module", scope: !460, file: !459, line: 132, baseType: !4, size: 64, align: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "unsupported_operation", scope: !460, file: !459, line: 134, baseType: !4, size: 64, align: 64, offset: 128)
!465 = !DISubprogram(name: "iobase_dealloc", scope: !385, file: !385, line: 284, type: !466, isLocal: true, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.iobase*)* @iobase_dealloc, variables: !475)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !468}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64, align: 64)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "iobase", file: !385, line: 25, baseType: !470)
!470 = !DICompositeType(tag: DW_TAG_structure_type, file: !385, line: 20, size: 256, align: 64, elements: !471)
!471 = !{!472, !473, !474}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !470, file: !385, line: 21, baseType: !5, size: 128, align: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !470, file: !385, line: 23, baseType: !4, size: 64, align: 64, offset: 128)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "weakreflist", scope: !470, file: !385, line: 24, baseType: !4, size: 64, align: 64, offset: 192)
!475 = !{!476, !477, !479, !481}
!476 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !465, file: !385, line: 284, type: !468)
!477 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !478, file: !385, line: 298, type: !350)
!478 = distinct !DILexicalBlock(scope: !465, file: !385, line: 298, column: 8)
!479 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !480, file: !385, line: 301, type: !4)
!480 = distinct !DILexicalBlock(scope: !465, file: !385, line: 301, column: 8)
!481 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !482, file: !385, line: 301, type: !4)
!482 = distinct !DILexicalBlock(scope: !483, file: !385, line: 301, column: 115)
!483 = distinct !DILexicalBlock(scope: !484, file: !385, line: 301, column: 83)
!484 = distinct !DILexicalBlock(scope: !480, file: !385, line: 301, column: 60)
!485 = !DISubprogram(name: "iobase_traverse", scope: !385, file: !385, line: 268, type: !486, isLocal: true, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.iobase*, i32 (%struct._object*, i8*)*, i8*)* @iobase_traverse, variables: !488)
!486 = !DISubroutineType(types: !487)
!487 = !{!43, !468, !263, !89}
!488 = !{!489, !490, !491, !492}
!489 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !485, file: !385, line: 268, type: !468)
!490 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !485, file: !385, line: 268, type: !263)
!491 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !485, file: !385, line: 268, type: !89)
!492 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !493, file: !385, line: 270, type: !43)
!493 = distinct !DILexicalBlock(scope: !494, file: !385, line: 270, column: 26)
!494 = distinct !DILexicalBlock(scope: !495, file: !385, line: 270, column: 14)
!495 = distinct !DILexicalBlock(scope: !485, file: !385, line: 270, column: 8)
!496 = !DISubprogram(name: "iobase_clear", scope: !385, file: !385, line: 275, type: !497, isLocal: true, isDefinition: true, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.iobase*)* @iobase_clear, variables: !499)
!497 = !DISubroutineType(types: !498)
!498 = !{!43, !468}
!499 = !{!500, !501, !503}
!500 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !496, file: !385, line: 275, type: !468)
!501 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !502, file: !385, line: 277, type: !4)
!502 = distinct !DILexicalBlock(scope: !496, file: !385, line: 277, column: 8)
!503 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !504, file: !385, line: 277, type: !4)
!504 = distinct !DILexicalBlock(scope: !505, file: !385, line: 277, column: 115)
!505 = distinct !DILexicalBlock(scope: !506, file: !385, line: 277, column: 83)
!506 = distinct !DILexicalBlock(scope: !502, file: !385, line: 277, column: 60)
!507 = !DISubprogram(name: "iobase_iter", scope: !385, file: !385, line: 563, type: !116, isLocal: true, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @iobase_iter, variables: !508)
!508 = !{!509}
!509 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !507, file: !385, line: 563, type: !4)
!510 = !DISubprogram(name: "iobase_iternext", scope: !385, file: !385, line: 573, type: !116, isLocal: true, isDefinition: true, scopeLine: 574, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @iobase_iternext, variables: !511)
!511 = !{!512, !513, !514}
!512 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !510, file: !385, line: 573, type: !4)
!513 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "line", scope: !510, file: !385, line: 575, type: !4)
!514 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !515, file: !385, line: 581, type: !4)
!515 = distinct !DILexicalBlock(scope: !516, file: !385, line: 581, column: 12)
!516 = distinct !DILexicalBlock(scope: !517, file: !385, line: 580, column: 35)
!517 = distinct !DILexicalBlock(scope: !510, file: !385, line: 580, column: 9)
!518 = !DISubprogram(name: "iobase_seek", scope: !385, file: !385, line: 94, type: !126, isLocal: true, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @iobase_seek, variables: !519)
!519 = !{!520, !521}
!520 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !518, file: !385, line: 94, type: !4)
!521 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !518, file: !385, line: 94, type: !4)
!522 = !DISubprogram(name: "iobase_tell", scope: !385, file: !385, line: 103, type: !126, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @iobase_tell, variables: !523)
!523 = !{!524, !525}
!524 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !522, file: !385, line: 103, type: !4)
!525 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !522, file: !385, line: 103, type: !4)
!526 = !DISubprogram(name: "iobase_truncate", scope: !385, file: !385, line: 117, type: !126, isLocal: true, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @iobase_truncate, variables: !527)
!527 = !{!528, !529}
!528 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !526, file: !385, line: 117, type: !4)
!529 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !526, file: !385, line: 117, type: !4)
!530 = !DISubprogram(name: "iobase_flush", scope: !385, file: !385, line: 130, type: !126, isLocal: true, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @iobase_flush, variables: !531)
!531 = !{!532, !533}
!532 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !530, file: !385, line: 130, type: !4)
!533 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !530, file: !385, line: 130, type: !4)
!534 = !DISubprogram(name: "iobase_close", scope: !385, file: !385, line: 184, type: !126, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @iobase_close, variables: !535)
!535 = !{!536, !537, !538, !539, !543, !546}
!536 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !534, file: !385, line: 184, type: !4)
!537 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !534, file: !385, line: 184, type: !4)
!538 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !534, file: !385, line: 186, type: !4)
!539 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !540, file: !385, line: 194, type: !4)
!540 = distinct !DILexicalBlock(scope: !541, file: !385, line: 194, column: 12)
!541 = distinct !DILexicalBlock(scope: !542, file: !385, line: 193, column: 95)
!542 = distinct !DILexicalBlock(scope: !534, file: !385, line: 193, column: 9)
!543 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !544, file: !385, line: 194, type: !4)
!544 = distinct !DILexicalBlock(scope: !545, file: !385, line: 194, column: 99)
!545 = distinct !DILexicalBlock(scope: !540, file: !385, line: 194, column: 65)
!546 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !547, file: !385, line: 201, type: !4)
!547 = distinct !DILexicalBlock(scope: !534, file: !385, line: 201, column: 8)
!548 = !DISubprogram(name: "iobase_seekable", scope: !385, file: !385, line: 314, type: !126, isLocal: true, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @iobase_seekable, variables: !549)
!549 = !{!550, !551}
!550 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !548, file: !385, line: 314, type: !4)
!551 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !548, file: !385, line: 314, type: !4)
!552 = !DISubprogram(name: "iobase_readable", scope: !385, file: !385, line: 342, type: !126, isLocal: true, isDefinition: true, scopeLine: 343, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @iobase_readable, variables: !553)
!553 = !{!554, !555}
!554 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !552, file: !385, line: 342, type: !4)
!555 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !552, file: !385, line: 342, type: !4)
!556 = !DISubprogram(name: "iobase_writable", scope: !385, file: !385, line: 371, type: !126, isLocal: true, isDefinition: true, scopeLine: 372, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @iobase_writable, variables: !557)
!557 = !{!558, !559}
!558 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !556, file: !385, line: 371, type: !4)
!559 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !556, file: !385, line: 371, type: !4)
!560 = !DISubprogram(name: "iobase_fileno", scope: !385, file: !385, line: 422, type: !126, isLocal: true, isDefinition: true, scopeLine: 423, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @iobase_fileno, variables: !561)
!561 = !{!562, !563}
!562 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !560, file: !385, line: 422, type: !4)
!563 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !560, file: !385, line: 422, type: !4)
!564 = !DISubprogram(name: "iobase_isatty", scope: !385, file: !385, line: 433, type: !126, isLocal: true, isDefinition: true, scopeLine: 434, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @iobase_isatty, variables: !565)
!565 = !{!566, !567}
!566 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !564, file: !385, line: 433, type: !4)
!567 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !564, file: !385, line: 433, type: !4)
!568 = !DISubprogram(name: "iobase_enter", scope: !385, file: !385, line: 397, type: !126, isLocal: true, isDefinition: true, scopeLine: 398, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @iobase_enter, variables: !569)
!569 = !{!570, !571}
!570 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !568, file: !385, line: 397, type: !4)
!571 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !568, file: !385, line: 397, type: !4)
!572 = !DISubprogram(name: "iobase_exit", scope: !385, file: !385, line: 407, type: !126, isLocal: true, isDefinition: true, scopeLine: 408, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @iobase_exit, variables: !573)
!573 = !{!574, !575}
!574 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !572, file: !385, line: 407, type: !4)
!575 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !572, file: !385, line: 407, type: !4)
!576 = !DISubprogram(name: "iobase_readline", scope: !385, file: !385, line: 452, type: !126, isLocal: true, isDefinition: true, scopeLine: 453, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @iobase_readline, variables: !577)
!577 = !{!578, !579, !580, !581, !582, !583, !584, !585, !587, !588, !591, !595, !598, !599, !601, !605, !609, !613, !615, !617}
!578 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !576, file: !385, line: 452, type: !4)
!579 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !576, file: !385, line: 452, type: !4)
!580 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "limit", scope: !576, file: !385, line: 456, type: !10)
!581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "has_peek", scope: !576, file: !385, line: 457, type: !43)
!582 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffer", scope: !576, file: !385, line: 458, type: !4)
!583 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !576, file: !385, line: 458, type: !4)
!584 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old_size", scope: !576, file: !385, line: 459, type: !10)
!585 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nreadahead", scope: !586, file: !385, line: 474, type: !10)
!586 = distinct !DILexicalBlock(scope: !576, file: !385, line: 473, column: 70)
!587 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !586, file: !385, line: 475, type: !4)
!588 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "readahead", scope: !589, file: !385, line: 478, type: !4)
!589 = distinct !DILexicalBlock(scope: !590, file: !385, line: 477, column: 23)
!590 = distinct !DILexicalBlock(scope: !586, file: !385, line: 477, column: 13)
!591 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !592, file: !385, line: 491, type: !4)
!592 = distinct !DILexicalBlock(scope: !593, file: !385, line: 491, column: 20)
!593 = distinct !DILexicalBlock(scope: !594, file: !385, line: 487, column: 92)
!594 = distinct !DILexicalBlock(scope: !589, file: !385, line: 487, column: 17)
!595 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !596, file: !385, line: 495, type: !10)
!596 = distinct !DILexicalBlock(scope: !597, file: !385, line: 494, column: 76)
!597 = distinct !DILexicalBlock(scope: !589, file: !385, line: 494, column: 17)
!598 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !596, file: !385, line: 496, type: !28)
!599 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !600, file: !385, line: 515, type: !4)
!600 = distinct !DILexicalBlock(scope: !589, file: !385, line: 515, column: 16)
!601 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !602, file: !385, line: 531, type: !4)
!602 = distinct !DILexicalBlock(scope: !603, file: !385, line: 531, column: 16)
!603 = distinct !DILexicalBlock(scope: !604, file: !385, line: 527, column: 80)
!604 = distinct !DILexicalBlock(scope: !586, file: !385, line: 527, column: 13)
!605 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !606, file: !385, line: 535, type: !4)
!606 = distinct !DILexicalBlock(scope: !607, file: !385, line: 535, column: 16)
!607 = distinct !DILexicalBlock(scope: !608, file: !385, line: 534, column: 65)
!608 = distinct !DILexicalBlock(scope: !586, file: !385, line: 534, column: 13)
!609 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !610, file: !385, line: 541, type: !4)
!610 = distinct !DILexicalBlock(scope: !611, file: !385, line: 541, column: 16)
!611 = distinct !DILexicalBlock(scope: !612, file: !385, line: 540, column: 103)
!612 = distinct !DILexicalBlock(scope: !586, file: !385, line: 540, column: 13)
!613 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !614, file: !385, line: 547, type: !4)
!614 = distinct !DILexicalBlock(scope: !586, file: !385, line: 547, column: 12)
!615 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !616, file: !385, line: 555, type: !4)
!616 = distinct !DILexicalBlock(scope: !576, file: !385, line: 555, column: 8)
!617 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !618, file: !385, line: 558, type: !4)
!618 = distinct !DILexicalBlock(scope: !576, file: !385, line: 558, column: 8)
!619 = !DISubprogram(name: "iobase_readlines", scope: !385, file: !385, line: 596, type: !126, isLocal: true, isDefinition: true, scopeLine: 597, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @iobase_readlines, variables: !620)
!620 = !{!621, !622, !623, !624, !625, !626, !629, !633, !635, !637, !643, !647, !649}
!621 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !619, file: !385, line: 596, type: !4)
!622 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !619, file: !385, line: 596, type: !4)
!623 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hint", scope: !619, file: !385, line: 598, type: !10)
!624 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "length", scope: !619, file: !385, line: 598, type: !10)
!625 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !619, file: !385, line: 599, type: !4)
!626 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !627, file: !385, line: 614, type: !4)
!627 = distinct !DILexicalBlock(scope: !628, file: !385, line: 609, column: 20)
!628 = distinct !DILexicalBlock(scope: !619, file: !385, line: 609, column: 9)
!629 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !630, file: !385, line: 617, type: !4)
!630 = distinct !DILexicalBlock(scope: !631, file: !385, line: 617, column: 16)
!631 = distinct !DILexicalBlock(scope: !632, file: !385, line: 616, column: 32)
!632 = distinct !DILexicalBlock(scope: !627, file: !385, line: 616, column: 13)
!633 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !634, file: !385, line: 620, type: !4)
!634 = distinct !DILexicalBlock(scope: !627, file: !385, line: 620, column: 12)
!635 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "line", scope: !636, file: !385, line: 625, type: !4)
!636 = distinct !DILexicalBlock(scope: !619, file: !385, line: 624, column: 15)
!637 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !638, file: !385, line: 628, type: !4)
!638 = distinct !DILexicalBlock(scope: !639, file: !385, line: 628, column: 20)
!639 = distinct !DILexicalBlock(scope: !640, file: !385, line: 627, column: 35)
!640 = distinct !DILexicalBlock(scope: !641, file: !385, line: 627, column: 17)
!641 = distinct !DILexicalBlock(scope: !642, file: !385, line: 626, column: 33)
!642 = distinct !DILexicalBlock(scope: !636, file: !385, line: 626, column: 13)
!643 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !644, file: !385, line: 636, type: !4)
!644 = distinct !DILexicalBlock(scope: !645, file: !385, line: 636, column: 16)
!645 = distinct !DILexicalBlock(scope: !646, file: !385, line: 635, column: 46)
!646 = distinct !DILexicalBlock(scope: !636, file: !385, line: 635, column: 13)
!647 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !648, file: !385, line: 637, type: !4)
!648 = distinct !DILexicalBlock(scope: !645, file: !385, line: 637, column: 16)
!649 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !650, file: !385, line: 641, type: !4)
!650 = distinct !DILexicalBlock(scope: !636, file: !385, line: 641, column: 12)
!651 = !DISubprogram(name: "iobase_writelines", scope: !385, file: !385, line: 650, type: !126, isLocal: true, isDefinition: true, scopeLine: 651, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @iobase_writelines, variables: !652)
!652 = !{!653, !654, !655, !656, !657, !658, !660, !666, !668, !672, !674}
!653 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !651, file: !385, line: 650, type: !4)
!654 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !651, file: !385, line: 650, type: !4)
!655 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lines", scope: !651, file: !385, line: 652, type: !4)
!656 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iter", scope: !651, file: !385, line: 652, type: !4)
!657 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !651, file: !385, line: 652, type: !4)
!658 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "line", scope: !659, file: !385, line: 666, type: !4)
!659 = distinct !DILexicalBlock(scope: !651, file: !385, line: 665, column: 15)
!660 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !661, file: !385, line: 669, type: !4)
!661 = distinct !DILexicalBlock(scope: !662, file: !385, line: 669, column: 20)
!662 = distinct !DILexicalBlock(scope: !663, file: !385, line: 668, column: 35)
!663 = distinct !DILexicalBlock(scope: !664, file: !385, line: 668, column: 17)
!664 = distinct !DILexicalBlock(scope: !665, file: !385, line: 667, column: 33)
!665 = distinct !DILexicalBlock(scope: !659, file: !385, line: 667, column: 13)
!666 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !667, file: !385, line: 680, type: !4)
!667 = distinct !DILexicalBlock(scope: !659, file: !385, line: 680, column: 12)
!668 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !669, file: !385, line: 682, type: !4)
!669 = distinct !DILexicalBlock(scope: !670, file: !385, line: 682, column: 16)
!670 = distinct !DILexicalBlock(scope: !671, file: !385, line: 681, column: 32)
!671 = distinct !DILexicalBlock(scope: !659, file: !385, line: 681, column: 13)
!672 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !673, file: !385, line: 685, type: !4)
!673 = distinct !DILexicalBlock(scope: !659, file: !385, line: 685, column: 12)
!674 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !675, file: !385, line: 687, type: !4)
!675 = distinct !DILexicalBlock(scope: !651, file: !385, line: 687, column: 8)
!676 = !DISubprogram(name: "iobase_closed_get", scope: !385, file: !385, line: 161, type: !307, isLocal: true, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i8*)* @iobase_closed_get, variables: !677)
!677 = !{!678, !679}
!678 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !676, file: !385, line: 161, type: !4)
!679 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "context", arg: 2, scope: !676, file: !385, line: 161, type: !89)
!680 = !DISubprogram(name: "iobase_finalize", scope: !385, file: !385, line: 208, type: !36, isLocal: true, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @iobase_finalize, variables: !681)
!681 = !{!682, !683, !684, !685, !686, !687, !688, !692}
!682 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !680, file: !385, line: 208, type: !4)
!683 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !680, file: !385, line: 210, type: !4)
!684 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "error_type", scope: !680, file: !385, line: 211, type: !4)
!685 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "error_value", scope: !680, file: !385, line: 211, type: !4)
!686 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "error_traceback", scope: !680, file: !385, line: 211, type: !4)
!687 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "closed", scope: !680, file: !385, line: 212, type: !43)
!688 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !689, file: !385, line: 227, type: !4)
!689 = distinct !DILexicalBlock(scope: !690, file: !385, line: 227, column: 12)
!690 = distinct !DILexicalBlock(scope: !691, file: !385, line: 225, column: 10)
!691 = distinct !DILexicalBlock(scope: !680, file: !385, line: 221, column: 9)
!692 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !693, file: !385, line: 244, type: !4)
!693 = distinct !DILexicalBlock(scope: !694, file: !385, line: 244, column: 16)
!694 = distinct !DILexicalBlock(scope: !695, file: !385, line: 241, column: 13)
!695 = distinct !DILexicalBlock(scope: !696, file: !385, line: 231, column: 22)
!696 = distinct !DILexicalBlock(scope: !680, file: !385, line: 231, column: 9)
!697 = !DISubprogram(name: "rawiobase_read", scope: !385, file: !385, line: 799, type: !126, isLocal: true, isDefinition: true, scopeLine: 800, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @rawiobase_read, variables: !698)
!698 = !{!699, !700, !701, !702, !703, !704, !708, !710, !714}
!699 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !697, file: !385, line: 799, type: !4)
!700 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !697, file: !385, line: 799, type: !4)
!701 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !697, file: !385, line: 801, type: !10)
!702 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !697, file: !385, line: 802, type: !4)
!703 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !697, file: !385, line: 802, type: !4)
!704 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !705, file: !385, line: 822, type: !4)
!705 = distinct !DILexicalBlock(scope: !706, file: !385, line: 822, column: 12)
!706 = distinct !DILexicalBlock(scope: !707, file: !385, line: 821, column: 56)
!707 = distinct !DILexicalBlock(scope: !697, file: !385, line: 821, column: 9)
!708 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !709, file: !385, line: 827, type: !4)
!709 = distinct !DILexicalBlock(scope: !697, file: !385, line: 827, column: 8)
!710 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !711, file: !385, line: 829, type: !4)
!711 = distinct !DILexicalBlock(scope: !712, file: !385, line: 829, column: 12)
!712 = distinct !DILexicalBlock(scope: !713, file: !385, line: 828, column: 38)
!713 = distinct !DILexicalBlock(scope: !697, file: !385, line: 828, column: 9)
!714 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !715, file: !385, line: 834, type: !4)
!715 = distinct !DILexicalBlock(scope: !697, file: !385, line: 834, column: 8)
!716 = !DISubprogram(name: "rawiobase_readall", scope: !385, file: !385, line: 843, type: !126, isLocal: true, isDefinition: true, scopeLine: 844, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @rawiobase_readall, variables: !717)
!717 = !{!718, !719, !720, !721, !722, !723, !725, !729, !735, !737, !741, !743, !747, !749, !753}
!718 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !716, file: !385, line: 843, type: !4)
!719 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !716, file: !385, line: 843, type: !4)
!720 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !716, file: !385, line: 845, type: !43)
!721 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "chunks", scope: !716, file: !385, line: 846, type: !4)
!722 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !716, file: !385, line: 847, type: !4)
!723 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !724, file: !385, line: 853, type: !4)
!724 = distinct !DILexicalBlock(scope: !716, file: !385, line: 852, column: 15)
!725 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !726, file: !385, line: 861, type: !4)
!726 = distinct !DILexicalBlock(scope: !727, file: !385, line: 861, column: 16)
!727 = distinct !DILexicalBlock(scope: !728, file: !385, line: 855, column: 20)
!728 = distinct !DILexicalBlock(scope: !724, file: !385, line: 855, column: 13)
!729 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !730, file: !385, line: 866, type: !4)
!730 = distinct !DILexicalBlock(scope: !731, file: !385, line: 866, column: 20)
!731 = distinct !DILexicalBlock(scope: !732, file: !385, line: 865, column: 59)
!732 = distinct !DILexicalBlock(scope: !733, file: !385, line: 865, column: 17)
!733 = distinct !DILexicalBlock(scope: !734, file: !385, line: 864, column: 40)
!734 = distinct !DILexicalBlock(scope: !724, file: !385, line: 864, column: 13)
!735 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !736, file: !385, line: 869, type: !4)
!736 = distinct !DILexicalBlock(scope: !733, file: !385, line: 869, column: 16)
!737 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !738, file: !385, line: 873, type: !4)
!738 = distinct !DILexicalBlock(scope: !739, file: !385, line: 873, column: 16)
!739 = distinct !DILexicalBlock(scope: !740, file: !385, line: 872, column: 83)
!740 = distinct !DILexicalBlock(scope: !724, file: !385, line: 872, column: 13)
!741 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !742, file: !385, line: 874, type: !4)
!742 = distinct !DILexicalBlock(scope: !739, file: !385, line: 874, column: 16)
!743 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !744, file: !385, line: 880, type: !4)
!744 = distinct !DILexicalBlock(scope: !745, file: !385, line: 880, column: 16)
!745 = distinct !DILexicalBlock(scope: !746, file: !385, line: 878, column: 68)
!746 = distinct !DILexicalBlock(scope: !724, file: !385, line: 878, column: 13)
!747 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !748, file: !385, line: 884, type: !4)
!748 = distinct !DILexicalBlock(scope: !724, file: !385, line: 884, column: 12)
!749 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !750, file: !385, line: 886, type: !4)
!750 = distinct !DILexicalBlock(scope: !751, file: !385, line: 886, column: 16)
!751 = distinct !DILexicalBlock(scope: !752, file: !385, line: 885, column: 20)
!752 = distinct !DILexicalBlock(scope: !724, file: !385, line: 885, column: 13)
!753 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !754, file: !385, line: 891, type: !4)
!754 = distinct !DILexicalBlock(scope: !716, file: !385, line: 891, column: 8)
!755 = !{!756, !758, !759, !763, !766, !770, !778, !782, !786, !787, !791, !795, !799, !803, !807, !811, !812, !813, !814, !818, !819, !823, !828, !829, !833, !835, !836}
!756 = !DIGlobalVariable(name: "PyIOBase_Type", scope: !0, file: !385, line: 727, type: !757, isLocal: false, isDefinition: true, variable: { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyIOBase_Type)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !6, line: 422, baseType: !19)
!758 = !DIGlobalVariable(name: "PyRawIOBase_Type", scope: !0, file: !385, line: 901, type: !757, isLocal: false, isDefinition: true, variable: { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyRawIOBase_Type)
!759 = !DIGlobalVariable(name: "iobase_doc", scope: !0, file: !385, line: 27, type: !760, isLocal: true, isDefinition: true, variable: [1242 x i8]* @iobase_doc)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 9936, align: 8, elements: !761)
!761 = !{!762}
!762 = !DISubrange(count: 1242)
!763 = !DIGlobalVariable(name: "iobase_methods", scope: !0, file: !385, line: 691, type: !764, isLocal: true, isDefinition: true, variable: <{ { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } }>* @iobase_methods)
!764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !765, size: 5120, align: 64, elements: !100)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!766 = !DIGlobalVariable(name: "iobase_seek_doc", scope: !0, file: !385, line: 80, type: !767, isLocal: true, isDefinition: true, variable: [386 x i8]* @iobase_seek_doc)
!767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 3088, align: 8, elements: !768)
!768 = !{!769}
!769 = !DISubrange(count: 386)
!770 = !DIGlobalVariable(name: "PyId_seek", scope: !522, file: !385, line: 105, type: !771, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @iobase_tell.PyId_seek)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !6, line: 144, baseType: !772)
!772 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !6, line: 140, size: 192, align: 64, elements: !773)
!773 = !{!774, !776, !777}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !772, file: !6, line: 141, baseType: !775, size: 64, align: 64)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64, align: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !772, file: !6, line: 142, baseType: !28, size: 64, align: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !772, file: !6, line: 143, baseType: !4, size: 64, align: 64, offset: 128)
!778 = !DIGlobalVariable(name: "iobase_tell_doc", scope: !0, file: !385, line: 99, type: !779, isLocal: true, isDefinition: true, variable: [32 x i8]* @iobase_tell_doc)
!779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 256, align: 8, elements: !780)
!780 = !{!781}
!781 = !DISubrange(count: 32)
!782 = !DIGlobalVariable(name: "iobase_truncate_doc", scope: !0, file: !385, line: 110, type: !783, isLocal: true, isDefinition: true, variable: [150 x i8]* @iobase_truncate_doc)
!783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 1200, align: 8, elements: !784)
!784 = !{!785}
!785 = !DISubrange(count: 150)
!786 = !DIGlobalVariable(name: "PyId___IOBase_closed", scope: !0, file: !385, line: 62, type: !771, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyId___IOBase_closed)
!787 = !DIGlobalVariable(name: "iobase_flush_doc", scope: !0, file: !385, line: 124, type: !788, isLocal: true, isDefinition: true, variable: [102 x i8]* @iobase_flush_doc)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 816, align: 8, elements: !789)
!789 = !{!790}
!790 = !DISubrange(count: 102)
!791 = !DIGlobalVariable(name: "iobase_close_doc", scope: !0, file: !385, line: 140, type: !792, isLocal: true, isDefinition: true, variable: [90 x i8]* @iobase_close_doc)
!792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 720, align: 8, elements: !793)
!793 = !{!794}
!794 = !DISubrange(count: 90)
!795 = !DIGlobalVariable(name: "iobase_seekable_doc", scope: !0, file: !385, line: 307, type: !796, isLocal: true, isDefinition: true, variable: [162 x i8]* @iobase_seekable_doc)
!796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 1296, align: 8, elements: !797)
!797 = !{!798}
!798 = !DISubrange(count: 162)
!799 = !DIGlobalVariable(name: "iobase_readable_doc", scope: !0, file: !385, line: 336, type: !800, isLocal: true, isDefinition: true, variable: [97 x i8]* @iobase_readable_doc)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 776, align: 8, elements: !801)
!801 = !{!802}
!802 = !DISubrange(count: 97)
!803 = !DIGlobalVariable(name: "iobase_writable_doc", scope: !0, file: !385, line: 365, type: !804, isLocal: true, isDefinition: true, variable: [98 x i8]* @iobase_writable_doc)
!804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 784, align: 8, elements: !805)
!805 = !{!806}
!806 = !DISubrange(count: 98)
!807 = !DIGlobalVariable(name: "iobase_fileno_doc", scope: !0, file: !385, line: 416, type: !808, isLocal: true, isDefinition: true, variable: [122 x i8]* @iobase_fileno_doc)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 976, align: 8, elements: !809)
!809 = !{!810}
!810 = !DISubrange(count: 122)
!811 = !DIGlobalVariable(name: "iobase_isatty_doc", scope: !0, file: !385, line: 427, type: !792, isLocal: true, isDefinition: true, variable: [90 x i8]* @iobase_isatty_doc)
!812 = !DIGlobalVariable(name: "PyId_peek", scope: !576, file: !385, line: 460, type: !771, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @iobase_readline.PyId_peek)
!813 = !DIGlobalVariable(name: "PyId_read", scope: !0, file: !385, line: 66, type: !771, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyId_read)
!814 = !DIGlobalVariable(name: "iobase_readline_doc", scope: !0, file: !385, line: 442, type: !815, isLocal: true, isDefinition: true, variable: [257 x i8]* @iobase_readline_doc)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2056, align: 8, elements: !816)
!816 = !{!817}
!817 = !DISubrange(count: 257)
!818 = !DIGlobalVariable(name: "PyId_extend", scope: !619, file: !385, line: 613, type: !771, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @iobase_readlines.PyId_extend)
!819 = !DIGlobalVariable(name: "iobase_readlines_doc", scope: !0, file: !385, line: 588, type: !820, isLocal: true, isDefinition: true, variable: [201 x i8]* @iobase_readlines_doc)
!820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 1608, align: 8, elements: !821)
!821 = !{!822}
!822 = !DISubrange(count: 201)
!823 = !DIGlobalVariable(name: "iobase_getset", scope: !0, file: !385, line: 720, type: !824, isLocal: true, isDefinition: true, variable: [3 x %struct.PyGetSetDef]* @iobase_getset)
!824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !825, size: 960, align: 64, elements: !826)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGetSetDef", file: !301, line: 17, baseType: !300)
!826 = !{!827}
!827 = !DISubrange(count: 3)
!828 = !DIGlobalVariable(name: "PyId__finalizing", scope: !680, file: !385, line: 213, type: !771, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @iobase_finalize.PyId__finalizing)
!829 = !DIGlobalVariable(name: "rawiobase_doc", scope: !0, file: !385, line: 783, type: !830, isLocal: true, isDefinition: true, variable: [31 x i8]* @rawiobase_doc)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 248, align: 8, elements: !831)
!831 = !{!832}
!832 = !DISubrange(count: 31)
!833 = !DIGlobalVariable(name: "rawiobase_methods", scope: !0, file: !385, line: 895, type: !834, isLocal: true, isDefinition: true, variable: <{ { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } }>* @rawiobase_methods)
!834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !765, size: 768, align: 64, elements: !826)
!835 = !DIGlobalVariable(name: "PyId_readall", scope: !697, file: !385, line: 809, type: !771, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @rawiobase_read.PyId_readall)
!836 = !DIGlobalVariable(name: "rawiobase_readall_doc", scope: !0, file: !385, line: 839, type: !837, isLocal: true, isDefinition: true, variable: [44 x i8]* @rawiobase_readall_doc)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 352, align: 8, elements: !838)
!838 = !{!839}
!839 = !DISubrange(count: 44)
!840 = !{i32 2, !"Dwarf Version", i32 4}
!841 = !{i32 2, !"Debug Info Version", i32 3}
!842 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!843 = !{!844, !844, i64 0}
!844 = !{!"any pointer", !845, i64 0}
!845 = !{!"omnipotent char", !846, i64 0}
!846 = !{!"Simple C/C++ TBAA"}
!847 = !DIExpression()
!848 = !DILocation(line: 167, column: 34, scope: !384)
!849 = !DILocation(line: 167, column: 50, scope: !384)
!850 = !DILocation(line: 169, column: 23, scope: !851)
!851 = distinct !DILexicalBlock(scope: !384, file: !385, line: 169, column: 9)
!852 = !DILocation(line: 169, column: 9, scope: !851)
!853 = !DILocation(line: 169, column: 9, scope: !384)
!854 = !DILocation(line: 170, column: 25, scope: !855)
!855 = distinct !DILexicalBlock(scope: !851, file: !385, line: 169, column: 30)
!856 = !DILocation(line: 170, column: 9, scope: !855)
!857 = !DILocation(line: 171, column: 9, scope: !855)
!858 = !DILocation(line: 173, column: 9, scope: !859)
!859 = distinct !DILexicalBlock(scope: !384, file: !385, line: 173, column: 9)
!860 = !DILocation(line: 173, column: 14, scope: !859)
!861 = !DILocation(line: 173, column: 9, scope: !384)
!862 = !DILocation(line: 174, column: 9, scope: !859)
!863 = !DILocation(line: 176, column: 62, scope: !859)
!864 = !{!865, !866, i64 0}
!865 = !{!"_object", !866, i64 0, !844, i64 8}
!866 = !{!"long", !845, i64 0}
!867 = !DILocation(line: 176, column: 9, scope: !859)
!868 = !DILocation(line: 177, column: 1, scope: !384)
!869 = !DILocation(line: 146, column: 25, scope: !444)
!870 = !DILocation(line: 148, column: 5, scope: !444)
!871 = !DILocation(line: 148, column: 15, scope: !444)
!872 = !DILocation(line: 149, column: 5, scope: !444)
!873 = !DILocation(line: 149, column: 9, scope: !444)
!874 = !DILocation(line: 152, column: 28, scope: !444)
!875 = !DILocation(line: 152, column: 34, scope: !444)
!876 = !DILocation(line: 152, column: 11, scope: !444)
!877 = !DILocation(line: 152, column: 9, scope: !444)
!878 = !DILocation(line: 153, column: 9, scope: !879)
!879 = distinct !DILexicalBlock(scope: !444, file: !385, line: 153, column: 9)
!880 = !DILocation(line: 153, column: 13, scope: !879)
!881 = !DILocation(line: 153, column: 9, scope: !444)
!882 = !DILocation(line: 154, column: 9, scope: !879)
!883 = !DILocation(line: 155, column: 30, scope: !444)
!884 = !DILocation(line: 155, column: 14, scope: !444)
!885 = !DILocation(line: 155, column: 12, scope: !444)
!886 = !{!887, !887, i64 0}
!887 = !{!"int", !845, i64 0}
!888 = !DILocation(line: 156, column: 5, scope: !444)
!889 = !DILocation(line: 156, column: 10, scope: !890)
!890 = !DILexicalBlockFile(scope: !450, file: !385, discriminator: 1)
!891 = !DILocation(line: 156, column: 20, scope: !450)
!892 = !DILocation(line: 156, column: 50, scope: !450)
!893 = !DILocation(line: 156, column: 64, scope: !894)
!894 = distinct !DILexicalBlock(scope: !450, file: !385, line: 156, column: 61)
!895 = !DILocation(line: 156, column: 81, scope: !894)
!896 = !DILocation(line: 156, column: 61, scope: !894)
!897 = !DILocation(line: 156, column: 91, scope: !894)
!898 = !DILocation(line: 156, column: 61, scope: !450)
!899 = !DILocation(line: 156, column: 61, scope: !900)
!900 = !DILexicalBlockFile(scope: !450, file: !385, discriminator: 2)
!901 = !DILocation(line: 156, column: 122, scope: !902)
!902 = !DILexicalBlockFile(scope: !894, file: !385, discriminator: 3)
!903 = !DILocation(line: 156, column: 140, scope: !894)
!904 = !{!865, !844, i64 8}
!905 = !DILocation(line: 156, column: 150, scope: !894)
!906 = !{!907, !844, i64 48}
!907 = !{!"_typeobject", !908, i64 0, !844, i64 24, !866, i64 32, !866, i64 40, !844, i64 48, !844, i64 56, !844, i64 64, !844, i64 72, !844, i64 80, !844, i64 88, !844, i64 96, !844, i64 104, !844, i64 112, !844, i64 120, !844, i64 128, !844, i64 136, !844, i64 144, !844, i64 152, !844, i64 160, !866, i64 168, !844, i64 176, !844, i64 184, !844, i64 192, !844, i64 200, !866, i64 208, !844, i64 216, !844, i64 224, !844, i64 232, !844, i64 240, !844, i64 248, !844, i64 256, !844, i64 264, !844, i64 272, !844, i64 280, !866, i64 288, !844, i64 296, !844, i64 304, !844, i64 312, !844, i64 320, !844, i64 328, !844, i64 336, !844, i64 344, !844, i64 352, !844, i64 360, !844, i64 368, !844, i64 376, !887, i64 384, !844, i64 392}
!908 = !{!"", !865, i64 0, !866, i64 16}
!909 = !DILocation(line: 156, column: 175, scope: !894)
!910 = !DILocation(line: 156, column: 106, scope: !894)
!911 = !DILocation(line: 156, column: 194, scope: !912)
!912 = !DILexicalBlockFile(scope: !444, file: !385, discriminator: 4)
!913 = !DILocation(line: 156, column: 194, scope: !450)
!914 = !DILocation(line: 156, column: 194, scope: !915)
!915 = !DILexicalBlockFile(scope: !450, file: !385, discriminator: 5)
!916 = !DILocation(line: 157, column: 12, scope: !444)
!917 = !DILocation(line: 157, column: 5, scope: !444)
!918 = !DILocation(line: 158, column: 1, scope: !444)
!919 = !DILocation(line: 252, column: 30, scope: !389)
!920 = !DILocation(line: 254, column: 5, scope: !389)
!921 = !DILocation(line: 254, column: 9, scope: !389)
!922 = !DILocation(line: 258, column: 32, scope: !389)
!923 = !DILocation(line: 258, column: 40, scope: !389)
!924 = !DILocation(line: 258, column: 51, scope: !389)
!925 = !DILocation(line: 258, column: 15, scope: !389)
!926 = !DILocation(line: 259, column: 9, scope: !927)
!927 = distinct !DILexicalBlock(scope: !389, file: !385, line: 259, column: 9)
!928 = !DILocation(line: 259, column: 9, scope: !389)
!929 = !DILocation(line: 260, column: 50, scope: !927)
!930 = !DILocation(line: 260, column: 16, scope: !927)
!931 = !DILocation(line: 260, column: 9, scope: !927)
!932 = !DILocation(line: 262, column: 32, scope: !933)
!933 = distinct !DILexicalBlock(scope: !927, file: !385, line: 261, column: 10)
!934 = !DILocation(line: 262, column: 9, scope: !933)
!935 = !DILocation(line: 263, column: 9, scope: !933)
!936 = !DILocation(line: 265, column: 1, scope: !389)
!937 = !DILocation(line: 320, column: 36, scope: !393)
!938 = !DILocation(line: 320, column: 52, scope: !393)
!939 = !DILocation(line: 322, column: 5, scope: !393)
!940 = !DILocation(line: 322, column: 15, scope: !393)
!941 = !DILocation(line: 322, column: 48, scope: !393)
!942 = !DILocation(line: 322, column: 54, scope: !393)
!943 = !DILocation(line: 322, column: 21, scope: !393)
!944 = !DILocation(line: 323, column: 9, scope: !945)
!945 = distinct !DILexicalBlock(scope: !393, file: !385, line: 323, column: 9)
!946 = !DILocation(line: 323, column: 13, scope: !945)
!947 = !DILocation(line: 323, column: 9, scope: !393)
!948 = !DILocation(line: 324, column: 9, scope: !945)
!949 = !DILocation(line: 325, column: 9, scope: !401)
!950 = !DILocation(line: 325, column: 13, scope: !401)
!951 = !DILocation(line: 325, column: 9, scope: !393)
!952 = !DILocation(line: 326, column: 9, scope: !400)
!953 = !DILocation(line: 326, column: 14, scope: !954)
!954 = !DILexicalBlockFile(scope: !399, file: !385, discriminator: 1)
!955 = !DILocation(line: 326, column: 24, scope: !399)
!956 = !DILocation(line: 326, column: 47, scope: !399)
!957 = !DILocation(line: 326, column: 57, scope: !405)
!958 = !DILocation(line: 326, column: 65, scope: !405)
!959 = !DILocation(line: 326, column: 57, scope: !399)
!960 = !DILocation(line: 326, column: 88, scope: !961)
!961 = !DILexicalBlockFile(scope: !404, file: !385, discriminator: 2)
!962 = !DILocation(line: 326, column: 102, scope: !404)
!963 = !DILocation(line: 326, column: 107, scope: !964)
!964 = !DILexicalBlockFile(scope: !403, file: !385, discriminator: 4)
!965 = !DILocation(line: 326, column: 117, scope: !403)
!966 = !DILocation(line: 326, column: 147, scope: !403)
!967 = !DILocation(line: 326, column: 165, scope: !968)
!968 = distinct !DILexicalBlock(scope: !403, file: !385, line: 326, column: 162)
!969 = !DILocation(line: 326, column: 182, scope: !968)
!970 = !DILocation(line: 326, column: 162, scope: !968)
!971 = !DILocation(line: 326, column: 192, scope: !968)
!972 = !DILocation(line: 326, column: 162, scope: !403)
!973 = !DILocation(line: 326, column: 162, scope: !974)
!974 = !DILexicalBlockFile(scope: !403, file: !385, discriminator: 5)
!975 = !DILocation(line: 326, column: 223, scope: !976)
!976 = !DILexicalBlockFile(scope: !968, file: !385, discriminator: 6)
!977 = !DILocation(line: 326, column: 241, scope: !968)
!978 = !DILocation(line: 326, column: 251, scope: !968)
!979 = !DILocation(line: 326, column: 276, scope: !968)
!980 = !DILocation(line: 326, column: 207, scope: !968)
!981 = !DILocation(line: 326, column: 295, scope: !982)
!982 = !DILexicalBlockFile(scope: !404, file: !385, discriminator: 7)
!983 = !DILocation(line: 326, column: 295, scope: !403)
!984 = !DILocation(line: 326, column: 295, scope: !985)
!985 = !DILexicalBlockFile(scope: !403, file: !385, discriminator: 8)
!986 = !DILocation(line: 326, column: 308, scope: !987)
!987 = !DILexicalBlockFile(scope: !404, file: !385, discriminator: 9)
!988 = !DILocation(line: 326, column: 310, scope: !989)
!989 = !DILexicalBlockFile(scope: !990, file: !385, discriminator: 10)
!990 = !DILexicalBlockFile(scope: !400, file: !385, discriminator: 3)
!991 = !DILocation(line: 326, column: 310, scope: !399)
!992 = !DILocation(line: 326, column: 310, scope: !993)
!993 = !DILexicalBlockFile(scope: !399, file: !385, discriminator: 11)
!994 = !DILocation(line: 327, column: 9, scope: !400)
!995 = !DILocation(line: 328, column: 9, scope: !400)
!996 = !DILocation(line: 330, column: 9, scope: !409)
!997 = !DILocation(line: 330, column: 14, scope: !409)
!998 = !DILocation(line: 330, column: 9, scope: !393)
!999 = !DILocation(line: 331, column: 9, scope: !408)
!1000 = !DILocation(line: 331, column: 14, scope: !1001)
!1001 = !DILexicalBlockFile(scope: !407, file: !385, discriminator: 1)
!1002 = !DILocation(line: 331, column: 24, scope: !407)
!1003 = !DILocation(line: 331, column: 54, scope: !407)
!1004 = !DILocation(line: 331, column: 68, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !407, file: !385, line: 331, column: 65)
!1006 = !DILocation(line: 331, column: 85, scope: !1005)
!1007 = !DILocation(line: 331, column: 65, scope: !1005)
!1008 = !DILocation(line: 331, column: 95, scope: !1005)
!1009 = !DILocation(line: 331, column: 65, scope: !407)
!1010 = !DILocation(line: 331, column: 65, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !407, file: !385, discriminator: 2)
!1012 = !DILocation(line: 331, column: 126, scope: !1013)
!1013 = !DILexicalBlockFile(scope: !1005, file: !385, discriminator: 3)
!1014 = !DILocation(line: 331, column: 144, scope: !1005)
!1015 = !DILocation(line: 331, column: 154, scope: !1005)
!1016 = !DILocation(line: 331, column: 179, scope: !1005)
!1017 = !DILocation(line: 331, column: 110, scope: !1005)
!1018 = !DILocation(line: 331, column: 198, scope: !1019)
!1019 = !DILexicalBlockFile(scope: !408, file: !385, discriminator: 4)
!1020 = !DILocation(line: 331, column: 198, scope: !407)
!1021 = !DILocation(line: 331, column: 198, scope: !1022)
!1022 = !DILexicalBlockFile(scope: !407, file: !385, discriminator: 5)
!1023 = !DILocation(line: 332, column: 5, scope: !408)
!1024 = !DILocation(line: 333, column: 12, scope: !393)
!1025 = !DILocation(line: 333, column: 5, scope: !393)
!1026 = !DILocation(line: 334, column: 1, scope: !393)
!1027 = !DILocation(line: 70, column: 32, scope: !451)
!1028 = !DILocation(line: 72, column: 5, scope: !451)
!1029 = !DILocation(line: 72, column: 18, scope: !451)
!1030 = !DILocation(line: 72, column: 26, scope: !451)
!1031 = !DILocation(line: 73, column: 9, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !451, file: !385, line: 73, column: 9)
!1033 = !DILocation(line: 73, column: 15, scope: !1032)
!1034 = !DILocation(line: 73, column: 9, scope: !451)
!1035 = !DILocation(line: 74, column: 25, scope: !1032)
!1036 = !DILocation(line: 74, column: 32, scope: !1032)
!1037 = !{!1038, !844, i64 16}
!1038 = !{!"", !887, i64 0, !844, i64 8, !844, i64 16}
!1039 = !DILocation(line: 74, column: 55, scope: !1032)
!1040 = !DILocation(line: 74, column: 9, scope: !1032)
!1041 = !DILocation(line: 76, column: 1, scope: !451)
!1042 = !DILocation(line: 75, column: 5, scope: !451)
!1043 = !DILocation(line: 349, column: 36, scope: !410)
!1044 = !DILocation(line: 349, column: 52, scope: !410)
!1045 = !DILocation(line: 351, column: 5, scope: !410)
!1046 = !DILocation(line: 351, column: 15, scope: !410)
!1047 = !DILocation(line: 351, column: 48, scope: !410)
!1048 = !DILocation(line: 351, column: 54, scope: !410)
!1049 = !DILocation(line: 351, column: 21, scope: !410)
!1050 = !DILocation(line: 352, column: 9, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !410, file: !385, line: 352, column: 9)
!1052 = !DILocation(line: 352, column: 13, scope: !1051)
!1053 = !DILocation(line: 352, column: 9, scope: !410)
!1054 = !DILocation(line: 353, column: 9, scope: !1051)
!1055 = !DILocation(line: 354, column: 9, scope: !418)
!1056 = !DILocation(line: 354, column: 13, scope: !418)
!1057 = !DILocation(line: 354, column: 9, scope: !410)
!1058 = !DILocation(line: 355, column: 9, scope: !417)
!1059 = !DILocation(line: 355, column: 14, scope: !1060)
!1060 = !DILexicalBlockFile(scope: !416, file: !385, discriminator: 1)
!1061 = !DILocation(line: 355, column: 24, scope: !416)
!1062 = !DILocation(line: 355, column: 47, scope: !416)
!1063 = !DILocation(line: 355, column: 57, scope: !422)
!1064 = !DILocation(line: 355, column: 65, scope: !422)
!1065 = !DILocation(line: 355, column: 57, scope: !416)
!1066 = !DILocation(line: 355, column: 88, scope: !1067)
!1067 = !DILexicalBlockFile(scope: !421, file: !385, discriminator: 2)
!1068 = !DILocation(line: 355, column: 102, scope: !421)
!1069 = !DILocation(line: 355, column: 107, scope: !1070)
!1070 = !DILexicalBlockFile(scope: !420, file: !385, discriminator: 4)
!1071 = !DILocation(line: 355, column: 117, scope: !420)
!1072 = !DILocation(line: 355, column: 147, scope: !420)
!1073 = !DILocation(line: 355, column: 165, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !420, file: !385, line: 355, column: 162)
!1075 = !DILocation(line: 355, column: 182, scope: !1074)
!1076 = !DILocation(line: 355, column: 162, scope: !1074)
!1077 = !DILocation(line: 355, column: 192, scope: !1074)
!1078 = !DILocation(line: 355, column: 162, scope: !420)
!1079 = !DILocation(line: 355, column: 162, scope: !1080)
!1080 = !DILexicalBlockFile(scope: !420, file: !385, discriminator: 5)
!1081 = !DILocation(line: 355, column: 223, scope: !1082)
!1082 = !DILexicalBlockFile(scope: !1074, file: !385, discriminator: 6)
!1083 = !DILocation(line: 355, column: 241, scope: !1074)
!1084 = !DILocation(line: 355, column: 251, scope: !1074)
!1085 = !DILocation(line: 355, column: 276, scope: !1074)
!1086 = !DILocation(line: 355, column: 207, scope: !1074)
!1087 = !DILocation(line: 355, column: 295, scope: !1088)
!1088 = !DILexicalBlockFile(scope: !421, file: !385, discriminator: 7)
!1089 = !DILocation(line: 355, column: 295, scope: !420)
!1090 = !DILocation(line: 355, column: 295, scope: !1091)
!1091 = !DILexicalBlockFile(scope: !420, file: !385, discriminator: 8)
!1092 = !DILocation(line: 355, column: 308, scope: !1093)
!1093 = !DILexicalBlockFile(scope: !421, file: !385, discriminator: 9)
!1094 = !DILocation(line: 355, column: 310, scope: !1095)
!1095 = !DILexicalBlockFile(scope: !1096, file: !385, discriminator: 10)
!1096 = !DILexicalBlockFile(scope: !417, file: !385, discriminator: 3)
!1097 = !DILocation(line: 355, column: 310, scope: !416)
!1098 = !DILocation(line: 355, column: 310, scope: !1099)
!1099 = !DILexicalBlockFile(scope: !416, file: !385, discriminator: 11)
!1100 = !DILocation(line: 356, column: 9, scope: !417)
!1101 = !DILocation(line: 357, column: 9, scope: !417)
!1102 = !DILocation(line: 359, column: 9, scope: !426)
!1103 = !DILocation(line: 359, column: 14, scope: !426)
!1104 = !DILocation(line: 359, column: 9, scope: !410)
!1105 = !DILocation(line: 360, column: 9, scope: !425)
!1106 = !DILocation(line: 360, column: 14, scope: !1107)
!1107 = !DILexicalBlockFile(scope: !424, file: !385, discriminator: 1)
!1108 = !DILocation(line: 360, column: 24, scope: !424)
!1109 = !DILocation(line: 360, column: 54, scope: !424)
!1110 = !DILocation(line: 360, column: 68, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !424, file: !385, line: 360, column: 65)
!1112 = !DILocation(line: 360, column: 85, scope: !1111)
!1113 = !DILocation(line: 360, column: 65, scope: !1111)
!1114 = !DILocation(line: 360, column: 95, scope: !1111)
!1115 = !DILocation(line: 360, column: 65, scope: !424)
!1116 = !DILocation(line: 360, column: 65, scope: !1117)
!1117 = !DILexicalBlockFile(scope: !424, file: !385, discriminator: 2)
!1118 = !DILocation(line: 360, column: 126, scope: !1119)
!1119 = !DILexicalBlockFile(scope: !1111, file: !385, discriminator: 3)
!1120 = !DILocation(line: 360, column: 144, scope: !1111)
!1121 = !DILocation(line: 360, column: 154, scope: !1111)
!1122 = !DILocation(line: 360, column: 179, scope: !1111)
!1123 = !DILocation(line: 360, column: 110, scope: !1111)
!1124 = !DILocation(line: 360, column: 198, scope: !1125)
!1125 = !DILexicalBlockFile(scope: !425, file: !385, discriminator: 4)
!1126 = !DILocation(line: 360, column: 198, scope: !424)
!1127 = !DILocation(line: 360, column: 198, scope: !1128)
!1128 = !DILexicalBlockFile(scope: !424, file: !385, discriminator: 5)
!1129 = !DILocation(line: 361, column: 5, scope: !425)
!1130 = !DILocation(line: 362, column: 12, scope: !410)
!1131 = !DILocation(line: 362, column: 5, scope: !410)
!1132 = !DILocation(line: 363, column: 1, scope: !410)
!1133 = !DILocation(line: 378, column: 36, scope: !427)
!1134 = !DILocation(line: 378, column: 52, scope: !427)
!1135 = !DILocation(line: 380, column: 5, scope: !427)
!1136 = !DILocation(line: 380, column: 15, scope: !427)
!1137 = !DILocation(line: 380, column: 48, scope: !427)
!1138 = !DILocation(line: 380, column: 54, scope: !427)
!1139 = !DILocation(line: 380, column: 21, scope: !427)
!1140 = !DILocation(line: 381, column: 9, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !427, file: !385, line: 381, column: 9)
!1142 = !DILocation(line: 381, column: 13, scope: !1141)
!1143 = !DILocation(line: 381, column: 9, scope: !427)
!1144 = !DILocation(line: 382, column: 9, scope: !1141)
!1145 = !DILocation(line: 383, column: 9, scope: !435)
!1146 = !DILocation(line: 383, column: 13, scope: !435)
!1147 = !DILocation(line: 383, column: 9, scope: !427)
!1148 = !DILocation(line: 384, column: 9, scope: !434)
!1149 = !DILocation(line: 384, column: 14, scope: !1150)
!1150 = !DILexicalBlockFile(scope: !433, file: !385, discriminator: 1)
!1151 = !DILocation(line: 384, column: 24, scope: !433)
!1152 = !DILocation(line: 384, column: 47, scope: !433)
!1153 = !DILocation(line: 384, column: 57, scope: !439)
!1154 = !DILocation(line: 384, column: 65, scope: !439)
!1155 = !DILocation(line: 384, column: 57, scope: !433)
!1156 = !DILocation(line: 384, column: 88, scope: !1157)
!1157 = !DILexicalBlockFile(scope: !438, file: !385, discriminator: 2)
!1158 = !DILocation(line: 384, column: 102, scope: !438)
!1159 = !DILocation(line: 384, column: 107, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !437, file: !385, discriminator: 4)
!1161 = !DILocation(line: 384, column: 117, scope: !437)
!1162 = !DILocation(line: 384, column: 147, scope: !437)
!1163 = !DILocation(line: 384, column: 165, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !437, file: !385, line: 384, column: 162)
!1165 = !DILocation(line: 384, column: 182, scope: !1164)
!1166 = !DILocation(line: 384, column: 162, scope: !1164)
!1167 = !DILocation(line: 384, column: 192, scope: !1164)
!1168 = !DILocation(line: 384, column: 162, scope: !437)
!1169 = !DILocation(line: 384, column: 162, scope: !1170)
!1170 = !DILexicalBlockFile(scope: !437, file: !385, discriminator: 5)
!1171 = !DILocation(line: 384, column: 223, scope: !1172)
!1172 = !DILexicalBlockFile(scope: !1164, file: !385, discriminator: 6)
!1173 = !DILocation(line: 384, column: 241, scope: !1164)
!1174 = !DILocation(line: 384, column: 251, scope: !1164)
!1175 = !DILocation(line: 384, column: 276, scope: !1164)
!1176 = !DILocation(line: 384, column: 207, scope: !1164)
!1177 = !DILocation(line: 384, column: 295, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !438, file: !385, discriminator: 7)
!1179 = !DILocation(line: 384, column: 295, scope: !437)
!1180 = !DILocation(line: 384, column: 295, scope: !1181)
!1181 = !DILexicalBlockFile(scope: !437, file: !385, discriminator: 8)
!1182 = !DILocation(line: 384, column: 308, scope: !1183)
!1183 = !DILexicalBlockFile(scope: !438, file: !385, discriminator: 9)
!1184 = !DILocation(line: 384, column: 310, scope: !1185)
!1185 = !DILexicalBlockFile(scope: !1186, file: !385, discriminator: 10)
!1186 = !DILexicalBlockFile(scope: !434, file: !385, discriminator: 3)
!1187 = !DILocation(line: 384, column: 310, scope: !433)
!1188 = !DILocation(line: 384, column: 310, scope: !1189)
!1189 = !DILexicalBlockFile(scope: !433, file: !385, discriminator: 11)
!1190 = !DILocation(line: 385, column: 9, scope: !434)
!1191 = !DILocation(line: 386, column: 9, scope: !434)
!1192 = !DILocation(line: 388, column: 9, scope: !443)
!1193 = !DILocation(line: 388, column: 14, scope: !443)
!1194 = !DILocation(line: 388, column: 9, scope: !427)
!1195 = !DILocation(line: 389, column: 9, scope: !442)
!1196 = !DILocation(line: 389, column: 14, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !441, file: !385, discriminator: 1)
!1198 = !DILocation(line: 389, column: 24, scope: !441)
!1199 = !DILocation(line: 389, column: 54, scope: !441)
!1200 = !DILocation(line: 389, column: 68, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !441, file: !385, line: 389, column: 65)
!1202 = !DILocation(line: 389, column: 85, scope: !1201)
!1203 = !DILocation(line: 389, column: 65, scope: !1201)
!1204 = !DILocation(line: 389, column: 95, scope: !1201)
!1205 = !DILocation(line: 389, column: 65, scope: !441)
!1206 = !DILocation(line: 389, column: 65, scope: !1207)
!1207 = !DILexicalBlockFile(scope: !441, file: !385, discriminator: 2)
!1208 = !DILocation(line: 389, column: 126, scope: !1209)
!1209 = !DILexicalBlockFile(scope: !1201, file: !385, discriminator: 3)
!1210 = !DILocation(line: 389, column: 144, scope: !1201)
!1211 = !DILocation(line: 389, column: 154, scope: !1201)
!1212 = !DILocation(line: 389, column: 179, scope: !1201)
!1213 = !DILocation(line: 389, column: 110, scope: !1201)
!1214 = !DILocation(line: 389, column: 198, scope: !1215)
!1215 = !DILexicalBlockFile(scope: !442, file: !385, discriminator: 4)
!1216 = !DILocation(line: 389, column: 198, scope: !441)
!1217 = !DILocation(line: 389, column: 198, scope: !1218)
!1218 = !DILexicalBlockFile(scope: !441, file: !385, discriminator: 5)
!1219 = !DILocation(line: 390, column: 5, scope: !442)
!1220 = !DILocation(line: 391, column: 12, scope: !427)
!1221 = !DILocation(line: 391, column: 5, scope: !427)
!1222 = !DILocation(line: 392, column: 1, scope: !427)
!1223 = !DILocation(line: 284, column: 24, scope: !465)
!1224 = !DILocation(line: 291, column: 41, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !465, file: !385, line: 291, column: 9)
!1226 = !DILocation(line: 291, column: 28, scope: !1225)
!1227 = !DILocation(line: 291, column: 9, scope: !1225)
!1228 = !DILocation(line: 291, column: 47, scope: !1225)
!1229 = !DILocation(line: 291, column: 9, scope: !465)
!1230 = !DILocation(line: 294, column: 30, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !385, line: 294, column: 13)
!1232 = distinct !DILexicalBlock(scope: !1225, file: !385, line: 291, column: 52)
!1233 = !DILocation(line: 294, column: 18, scope: !1231)
!1234 = !DILocation(line: 294, column: 38, scope: !1231)
!1235 = !DILocation(line: 294, column: 49, scope: !1231)
!1236 = !{!907, !866, i64 168}
!1237 = !DILocation(line: 294, column: 58, scope: !1231)
!1238 = !DILocation(line: 294, column: 74, scope: !1231)
!1239 = !DILocation(line: 294, column: 13, scope: !1232)
!1240 = !DILocation(line: 295, column: 43, scope: !1231)
!1241 = !DILocation(line: 295, column: 31, scope: !1231)
!1242 = !DILocation(line: 295, column: 51, scope: !1231)
!1243 = !DILocation(line: 295, column: 16, scope: !1231)
!1244 = !DILocation(line: 295, column: 63, scope: !1231)
!1245 = !DILocation(line: 295, column: 72, scope: !1231)
!1246 = !DILocation(line: 295, column: 13, scope: !1231)
!1247 = !DILocation(line: 296, column: 9, scope: !1232)
!1248 = !DILocation(line: 298, column: 5, scope: !465)
!1249 = !DILocation(line: 298, column: 10, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !478, file: !385, discriminator: 1)
!1251 = !DILocation(line: 298, column: 21, scope: !478)
!1252 = !DILocation(line: 298, column: 40, scope: !478)
!1253 = !DILocation(line: 298, column: 26, scope: !478)
!1254 = !DILocation(line: 298, column: 45, scope: !478)
!1255 = !DILocation(line: 298, column: 64, scope: !478)
!1256 = !DILocation(line: 298, column: 89, scope: !1257)
!1257 = !DILexicalBlockFile(scope: !1258, file: !385, discriminator: 2)
!1258 = distinct !DILexicalBlock(scope: !478, file: !385, line: 298, column: 67)
!1259 = !DILocation(line: 298, column: 93, scope: !1258)
!1260 = !DILocation(line: 298, column: 96, scope: !1258)
!1261 = !{!1262, !866, i64 16}
!1262 = !{!"", !844, i64 0, !844, i64 8, !866, i64 16}
!1263 = !DILocation(line: 298, column: 104, scope: !1258)
!1264 = !DILocation(line: 298, column: 131, scope: !1258)
!1265 = !DILocation(line: 298, column: 70, scope: !1258)
!1266 = !DILocation(line: 298, column: 74, scope: !1258)
!1267 = !DILocation(line: 298, column: 77, scope: !1258)
!1268 = !DILocation(line: 298, column: 85, scope: !1258)
!1269 = !DILocation(line: 298, column: 160, scope: !1258)
!1270 = !DILocation(line: 298, column: 160, scope: !1271)
!1271 = !DILexicalBlockFile(scope: !1258, file: !385, discriminator: 3)
!1272 = !DILocation(line: 298, column: 201, scope: !1273)
!1273 = !DILexicalBlockFile(scope: !478, file: !385, discriminator: 4)
!1274 = !DILocation(line: 298, column: 204, scope: !478)
!1275 = !DILocation(line: 298, column: 207, scope: !478)
!1276 = !{!1262, !844, i64 0}
!1277 = !DILocation(line: 298, column: 173, scope: !478)
!1278 = !DILocation(line: 298, column: 176, scope: !478)
!1279 = !DILocation(line: 298, column: 179, scope: !478)
!1280 = !{!1262, !844, i64 8}
!1281 = !DILocation(line: 298, column: 188, scope: !478)
!1282 = !DILocation(line: 298, column: 191, scope: !478)
!1283 = !DILocation(line: 298, column: 199, scope: !478)
!1284 = !DILocation(line: 298, column: 244, scope: !478)
!1285 = !DILocation(line: 298, column: 247, scope: !478)
!1286 = !DILocation(line: 298, column: 250, scope: !478)
!1287 = !DILocation(line: 298, column: 216, scope: !478)
!1288 = !DILocation(line: 298, column: 219, scope: !478)
!1289 = !DILocation(line: 298, column: 222, scope: !478)
!1290 = !DILocation(line: 298, column: 231, scope: !478)
!1291 = !DILocation(line: 298, column: 234, scope: !478)
!1292 = !DILocation(line: 298, column: 242, scope: !478)
!1293 = !DILocation(line: 298, column: 259, scope: !478)
!1294 = !DILocation(line: 298, column: 262, scope: !478)
!1295 = !DILocation(line: 298, column: 265, scope: !478)
!1296 = !DILocation(line: 298, column: 273, scope: !478)
!1297 = !DILocation(line: 298, column: 287, scope: !465)
!1298 = !DILocation(line: 298, column: 287, scope: !478)
!1299 = !DILocation(line: 299, column: 9, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !465, file: !385, line: 299, column: 9)
!1301 = !DILocation(line: 299, column: 15, scope: !1300)
!1302 = !{!1303, !844, i64 24}
!1303 = !{!"", !865, i64 0, !844, i64 16, !844, i64 24}
!1304 = !DILocation(line: 299, column: 27, scope: !1300)
!1305 = !DILocation(line: 299, column: 9, scope: !465)
!1306 = !DILocation(line: 300, column: 45, scope: !1300)
!1307 = !DILocation(line: 300, column: 32, scope: !1300)
!1308 = !DILocation(line: 300, column: 9, scope: !1300)
!1309 = !DILocation(line: 301, column: 5, scope: !465)
!1310 = !DILocation(line: 301, column: 10, scope: !1311)
!1311 = !DILexicalBlockFile(scope: !480, file: !385, discriminator: 1)
!1312 = !DILocation(line: 301, column: 20, scope: !480)
!1313 = !DILocation(line: 301, column: 43, scope: !480)
!1314 = !DILocation(line: 301, column: 49, scope: !480)
!1315 = !{!1303, !844, i64 16}
!1316 = !DILocation(line: 301, column: 60, scope: !484)
!1317 = !DILocation(line: 301, column: 68, scope: !484)
!1318 = !DILocation(line: 301, column: 60, scope: !480)
!1319 = !DILocation(line: 301, column: 86, scope: !1320)
!1320 = !DILexicalBlockFile(scope: !483, file: !385, discriminator: 2)
!1321 = !DILocation(line: 301, column: 92, scope: !483)
!1322 = !DILocation(line: 301, column: 98, scope: !483)
!1323 = !DILocation(line: 301, column: 112, scope: !483)
!1324 = !DILocation(line: 301, column: 117, scope: !1325)
!1325 = !DILexicalBlockFile(scope: !482, file: !385, discriminator: 4)
!1326 = !DILocation(line: 301, column: 127, scope: !482)
!1327 = !DILocation(line: 301, column: 157, scope: !482)
!1328 = !DILocation(line: 301, column: 175, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !482, file: !385, line: 301, column: 172)
!1330 = !DILocation(line: 301, column: 192, scope: !1329)
!1331 = !DILocation(line: 301, column: 172, scope: !1329)
!1332 = !DILocation(line: 301, column: 202, scope: !1329)
!1333 = !DILocation(line: 301, column: 172, scope: !482)
!1334 = !DILocation(line: 301, column: 172, scope: !1335)
!1335 = !DILexicalBlockFile(scope: !482, file: !385, discriminator: 5)
!1336 = !DILocation(line: 301, column: 233, scope: !1337)
!1337 = !DILexicalBlockFile(scope: !1329, file: !385, discriminator: 6)
!1338 = !DILocation(line: 301, column: 251, scope: !1329)
!1339 = !DILocation(line: 301, column: 261, scope: !1329)
!1340 = !DILocation(line: 301, column: 286, scope: !1329)
!1341 = !DILocation(line: 301, column: 217, scope: !1329)
!1342 = !DILocation(line: 301, column: 305, scope: !1343)
!1343 = !DILexicalBlockFile(scope: !483, file: !385, discriminator: 7)
!1344 = !DILocation(line: 301, column: 305, scope: !482)
!1345 = !DILocation(line: 301, column: 305, scope: !1346)
!1346 = !DILexicalBlockFile(scope: !482, file: !385, discriminator: 8)
!1347 = !DILocation(line: 301, column: 318, scope: !1348)
!1348 = !DILexicalBlockFile(scope: !483, file: !385, discriminator: 9)
!1349 = !DILocation(line: 301, column: 320, scope: !1350)
!1350 = !DILexicalBlockFile(scope: !1351, file: !385, discriminator: 10)
!1351 = !DILexicalBlockFile(scope: !465, file: !385, discriminator: 3)
!1352 = !DILocation(line: 301, column: 320, scope: !480)
!1353 = !DILocation(line: 302, column: 19, scope: !465)
!1354 = !DILocation(line: 302, column: 7, scope: !465)
!1355 = !DILocation(line: 302, column: 27, scope: !465)
!1356 = !DILocation(line: 302, column: 37, scope: !465)
!1357 = !{!907, !844, i64 320}
!1358 = !DILocation(line: 302, column: 58, scope: !465)
!1359 = !DILocation(line: 302, column: 45, scope: !465)
!1360 = !DILocation(line: 302, column: 5, scope: !465)
!1361 = !DILocation(line: 303, column: 1, scope: !465)
!1362 = !DILocation(line: 303, column: 1, scope: !1363)
!1363 = !DILexicalBlockFile(scope: !465, file: !385, discriminator: 1)
!1364 = !DILocation(line: 268, column: 25, scope: !485)
!1365 = !DILocation(line: 268, column: 41, scope: !485)
!1366 = !DILocation(line: 268, column: 54, scope: !485)
!1367 = !DILocation(line: 270, column: 5, scope: !485)
!1368 = !DILocation(line: 270, column: 14, scope: !1369)
!1369 = !DILexicalBlockFile(scope: !494, file: !385, discriminator: 1)
!1370 = !DILocation(line: 270, column: 20, scope: !494)
!1371 = !DILocation(line: 270, column: 14, scope: !494)
!1372 = !DILocation(line: 270, column: 14, scope: !495)
!1373 = !DILocation(line: 270, column: 28, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !493, file: !385, discriminator: 2)
!1375 = !DILocation(line: 270, column: 32, scope: !493)
!1376 = !DILocation(line: 270, column: 39, scope: !493)
!1377 = !DILocation(line: 270, column: 58, scope: !493)
!1378 = !DILocation(line: 270, column: 64, scope: !493)
!1379 = !DILocation(line: 270, column: 71, scope: !493)
!1380 = !DILocation(line: 270, column: 81, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !493, file: !385, line: 270, column: 81)
!1382 = !DILocation(line: 270, column: 81, scope: !493)
!1383 = !DILocation(line: 270, column: 94, scope: !1384)
!1384 = !DILexicalBlockFile(scope: !1381, file: !385, discriminator: 4)
!1385 = !DILocation(line: 270, column: 87, scope: !1381)
!1386 = !DILocation(line: 270, column: 100, scope: !1387)
!1387 = !DILexicalBlockFile(scope: !494, file: !385, discriminator: 5)
!1388 = !DILocation(line: 270, column: 100, scope: !1389)
!1389 = !DILexicalBlockFile(scope: !1390, file: !385, discriminator: 7)
!1390 = !DILexicalBlockFile(scope: !494, file: !385, discriminator: 6)
!1391 = !DILocation(line: 270, column: 100, scope: !493)
!1392 = !DILocation(line: 270, column: 102, scope: !1393)
!1393 = !DILexicalBlockFile(scope: !1394, file: !385, discriminator: 8)
!1394 = !DILexicalBlockFile(scope: !495, file: !385, discriminator: 3)
!1395 = !DILocation(line: 271, column: 5, scope: !485)
!1396 = !DILocation(line: 272, column: 1, scope: !485)
!1397 = !DILocation(line: 275, column: 22, scope: !496)
!1398 = !DILocation(line: 277, column: 5, scope: !496)
!1399 = !DILocation(line: 277, column: 10, scope: !1400)
!1400 = !DILexicalBlockFile(scope: !502, file: !385, discriminator: 1)
!1401 = !DILocation(line: 277, column: 20, scope: !502)
!1402 = !DILocation(line: 277, column: 43, scope: !502)
!1403 = !DILocation(line: 277, column: 49, scope: !502)
!1404 = !DILocation(line: 277, column: 60, scope: !506)
!1405 = !DILocation(line: 277, column: 68, scope: !506)
!1406 = !DILocation(line: 277, column: 60, scope: !502)
!1407 = !DILocation(line: 277, column: 86, scope: !1408)
!1408 = !DILexicalBlockFile(scope: !505, file: !385, discriminator: 2)
!1409 = !DILocation(line: 277, column: 92, scope: !505)
!1410 = !DILocation(line: 277, column: 98, scope: !505)
!1411 = !DILocation(line: 277, column: 112, scope: !505)
!1412 = !DILocation(line: 277, column: 117, scope: !1413)
!1413 = !DILexicalBlockFile(scope: !504, file: !385, discriminator: 4)
!1414 = !DILocation(line: 277, column: 127, scope: !504)
!1415 = !DILocation(line: 277, column: 157, scope: !504)
!1416 = !DILocation(line: 277, column: 175, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !504, file: !385, line: 277, column: 172)
!1418 = !DILocation(line: 277, column: 192, scope: !1417)
!1419 = !DILocation(line: 277, column: 172, scope: !1417)
!1420 = !DILocation(line: 277, column: 202, scope: !1417)
!1421 = !DILocation(line: 277, column: 172, scope: !504)
!1422 = !DILocation(line: 277, column: 172, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !504, file: !385, discriminator: 5)
!1424 = !DILocation(line: 277, column: 233, scope: !1425)
!1425 = !DILexicalBlockFile(scope: !1417, file: !385, discriminator: 6)
!1426 = !DILocation(line: 277, column: 251, scope: !1417)
!1427 = !DILocation(line: 277, column: 261, scope: !1417)
!1428 = !DILocation(line: 277, column: 286, scope: !1417)
!1429 = !DILocation(line: 277, column: 217, scope: !1417)
!1430 = !DILocation(line: 277, column: 305, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !505, file: !385, discriminator: 7)
!1432 = !DILocation(line: 277, column: 305, scope: !504)
!1433 = !DILocation(line: 277, column: 305, scope: !1434)
!1434 = !DILexicalBlockFile(scope: !504, file: !385, discriminator: 8)
!1435 = !DILocation(line: 277, column: 318, scope: !1436)
!1436 = !DILexicalBlockFile(scope: !505, file: !385, discriminator: 9)
!1437 = !DILocation(line: 277, column: 320, scope: !1438)
!1438 = !DILexicalBlockFile(scope: !1439, file: !385, discriminator: 10)
!1439 = !DILexicalBlockFile(scope: !496, file: !385, discriminator: 3)
!1440 = !DILocation(line: 277, column: 320, scope: !502)
!1441 = !DILocation(line: 278, column: 5, scope: !496)
!1442 = !DILocation(line: 563, column: 23, scope: !507)
!1443 = !DILocation(line: 565, column: 32, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !507, file: !385, line: 565, column: 9)
!1445 = !DILocation(line: 565, column: 9, scope: !1444)
!1446 = !DILocation(line: 565, column: 70, scope: !1444)
!1447 = !DILocation(line: 565, column: 9, scope: !507)
!1448 = !DILocation(line: 566, column: 9, scope: !1444)
!1449 = !DILocation(line: 568, column: 21, scope: !507)
!1450 = !DILocation(line: 568, column: 29, scope: !507)
!1451 = !DILocation(line: 568, column: 38, scope: !507)
!1452 = !DILocation(line: 569, column: 12, scope: !507)
!1453 = !DILocation(line: 569, column: 5, scope: !507)
!1454 = !DILocation(line: 570, column: 1, scope: !507)
!1455 = !DILocation(line: 573, column: 27, scope: !510)
!1456 = !DILocation(line: 575, column: 5, scope: !510)
!1457 = !DILocation(line: 575, column: 15, scope: !510)
!1458 = !DILocation(line: 575, column: 49, scope: !510)
!1459 = !DILocation(line: 575, column: 55, scope: !510)
!1460 = !DILocation(line: 575, column: 22, scope: !510)
!1461 = !DILocation(line: 577, column: 9, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !510, file: !385, line: 577, column: 9)
!1463 = !DILocation(line: 577, column: 14, scope: !1462)
!1464 = !DILocation(line: 577, column: 9, scope: !510)
!1465 = !DILocation(line: 578, column: 9, scope: !1462)
!1466 = !DILocation(line: 580, column: 23, scope: !517)
!1467 = !DILocation(line: 580, column: 9, scope: !517)
!1468 = !DILocation(line: 580, column: 29, scope: !517)
!1469 = !DILocation(line: 580, column: 9, scope: !510)
!1470 = !DILocation(line: 581, column: 9, scope: !516)
!1471 = !DILocation(line: 581, column: 14, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !515, file: !385, discriminator: 1)
!1473 = !DILocation(line: 581, column: 24, scope: !515)
!1474 = !DILocation(line: 581, column: 54, scope: !515)
!1475 = !DILocation(line: 581, column: 69, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !515, file: !385, line: 581, column: 66)
!1477 = !DILocation(line: 581, column: 86, scope: !1476)
!1478 = !DILocation(line: 581, column: 66, scope: !1476)
!1479 = !DILocation(line: 581, column: 96, scope: !1476)
!1480 = !DILocation(line: 581, column: 66, scope: !515)
!1481 = !DILocation(line: 581, column: 66, scope: !1482)
!1482 = !DILexicalBlockFile(scope: !515, file: !385, discriminator: 2)
!1483 = !DILocation(line: 581, column: 127, scope: !1484)
!1484 = !DILexicalBlockFile(scope: !1476, file: !385, discriminator: 3)
!1485 = !DILocation(line: 581, column: 145, scope: !1476)
!1486 = !DILocation(line: 581, column: 155, scope: !1476)
!1487 = !DILocation(line: 581, column: 180, scope: !1476)
!1488 = !DILocation(line: 581, column: 111, scope: !1476)
!1489 = !DILocation(line: 581, column: 199, scope: !1490)
!1490 = !DILexicalBlockFile(scope: !516, file: !385, discriminator: 4)
!1491 = !DILocation(line: 581, column: 199, scope: !515)
!1492 = !DILocation(line: 581, column: 199, scope: !1493)
!1493 = !DILexicalBlockFile(scope: !515, file: !385, discriminator: 5)
!1494 = !DILocation(line: 582, column: 9, scope: !516)
!1495 = !DILocation(line: 585, column: 12, scope: !510)
!1496 = !DILocation(line: 585, column: 5, scope: !510)
!1497 = !DILocation(line: 586, column: 1, scope: !510)
!1498 = !DILocation(line: 208, column: 27, scope: !680)
!1499 = !DILocation(line: 210, column: 5, scope: !680)
!1500 = !DILocation(line: 210, column: 15, scope: !680)
!1501 = !DILocation(line: 211, column: 5, scope: !680)
!1502 = !DILocation(line: 211, column: 15, scope: !680)
!1503 = !DILocation(line: 211, column: 28, scope: !680)
!1504 = !DILocation(line: 211, column: 42, scope: !680)
!1505 = !DILocation(line: 212, column: 5, scope: !680)
!1506 = !DILocation(line: 212, column: 9, scope: !680)
!1507 = !DILocation(line: 216, column: 5, scope: !680)
!1508 = !DILocation(line: 220, column: 28, scope: !680)
!1509 = !DILocation(line: 220, column: 34, scope: !680)
!1510 = !DILocation(line: 220, column: 11, scope: !680)
!1511 = !DILocation(line: 220, column: 9, scope: !680)
!1512 = !DILocation(line: 221, column: 9, scope: !691)
!1513 = !DILocation(line: 221, column: 13, scope: !691)
!1514 = !DILocation(line: 221, column: 9, scope: !680)
!1515 = !DILocation(line: 222, column: 9, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !691, file: !385, line: 221, column: 28)
!1517 = !DILocation(line: 223, column: 16, scope: !1516)
!1518 = !DILocation(line: 224, column: 5, scope: !1516)
!1519 = !DILocation(line: 226, column: 34, scope: !690)
!1520 = !DILocation(line: 226, column: 18, scope: !690)
!1521 = !DILocation(line: 226, column: 16, scope: !690)
!1522 = !DILocation(line: 227, column: 9, scope: !690)
!1523 = !DILocation(line: 227, column: 14, scope: !1524)
!1524 = !DILexicalBlockFile(scope: !689, file: !385, discriminator: 1)
!1525 = !DILocation(line: 227, column: 24, scope: !689)
!1526 = !DILocation(line: 227, column: 54, scope: !689)
!1527 = !DILocation(line: 227, column: 68, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !689, file: !385, line: 227, column: 65)
!1529 = !DILocation(line: 227, column: 85, scope: !1528)
!1530 = !DILocation(line: 227, column: 65, scope: !1528)
!1531 = !DILocation(line: 227, column: 95, scope: !1528)
!1532 = !DILocation(line: 227, column: 65, scope: !689)
!1533 = !DILocation(line: 227, column: 65, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !689, file: !385, discriminator: 2)
!1535 = !DILocation(line: 227, column: 126, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !1528, file: !385, discriminator: 3)
!1537 = !DILocation(line: 227, column: 144, scope: !1528)
!1538 = !DILocation(line: 227, column: 154, scope: !1528)
!1539 = !DILocation(line: 227, column: 179, scope: !1528)
!1540 = !DILocation(line: 227, column: 110, scope: !1528)
!1541 = !DILocation(line: 227, column: 198, scope: !1542)
!1542 = !DILexicalBlockFile(scope: !690, file: !385, discriminator: 4)
!1543 = !DILocation(line: 227, column: 198, scope: !689)
!1544 = !DILocation(line: 227, column: 198, scope: !1545)
!1545 = !DILexicalBlockFile(scope: !689, file: !385, discriminator: 5)
!1546 = !DILocation(line: 228, column: 13, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !690, file: !385, line: 228, column: 13)
!1548 = !DILocation(line: 228, column: 20, scope: !1547)
!1549 = !DILocation(line: 228, column: 13, scope: !690)
!1550 = !DILocation(line: 229, column: 13, scope: !1547)
!1551 = !DILocation(line: 231, column: 9, scope: !696)
!1552 = !DILocation(line: 231, column: 16, scope: !696)
!1553 = !DILocation(line: 231, column: 9, scope: !680)
!1554 = !DILocation(line: 234, column: 33, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !695, file: !385, line: 234, column: 13)
!1556 = !DILocation(line: 234, column: 13, scope: !1555)
!1557 = !DILocation(line: 234, column: 13, scope: !695)
!1558 = !DILocation(line: 235, column: 13, scope: !1555)
!1559 = !DILocation(line: 236, column: 55, scope: !695)
!1560 = !DILocation(line: 236, column: 61, scope: !695)
!1561 = !DILocation(line: 236, column: 15, scope: !695)
!1562 = !DILocation(line: 236, column: 13, scope: !695)
!1563 = !DILocation(line: 241, column: 13, scope: !694)
!1564 = !DILocation(line: 241, column: 17, scope: !694)
!1565 = !DILocation(line: 241, column: 13, scope: !695)
!1566 = !DILocation(line: 242, column: 13, scope: !694)
!1567 = !DILocation(line: 244, column: 13, scope: !694)
!1568 = !DILocation(line: 244, column: 18, scope: !1569)
!1569 = !DILexicalBlockFile(scope: !693, file: !385, discriminator: 1)
!1570 = !DILocation(line: 244, column: 28, scope: !693)
!1571 = !DILocation(line: 244, column: 58, scope: !693)
!1572 = !DILocation(line: 244, column: 72, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !693, file: !385, line: 244, column: 69)
!1574 = !DILocation(line: 244, column: 89, scope: !1573)
!1575 = !DILocation(line: 244, column: 69, scope: !1573)
!1576 = !DILocation(line: 244, column: 99, scope: !1573)
!1577 = !DILocation(line: 244, column: 69, scope: !693)
!1578 = !DILocation(line: 244, column: 69, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !693, file: !385, discriminator: 2)
!1580 = !DILocation(line: 244, column: 130, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !1573, file: !385, discriminator: 3)
!1582 = !DILocation(line: 244, column: 148, scope: !1573)
!1583 = !DILocation(line: 244, column: 158, scope: !1573)
!1584 = !DILocation(line: 244, column: 183, scope: !1573)
!1585 = !DILocation(line: 244, column: 114, scope: !1573)
!1586 = !DILocation(line: 244, column: 202, scope: !1587)
!1587 = !DILexicalBlockFile(scope: !694, file: !385, discriminator: 4)
!1588 = !DILocation(line: 244, column: 202, scope: !693)
!1589 = !DILocation(line: 244, column: 202, scope: !1590)
!1590 = !DILexicalBlockFile(scope: !693, file: !385, discriminator: 5)
!1591 = !DILocation(line: 245, column: 5, scope: !695)
!1592 = !DILocation(line: 248, column: 19, scope: !680)
!1593 = !DILocation(line: 248, column: 31, scope: !680)
!1594 = !DILocation(line: 248, column: 44, scope: !680)
!1595 = !DILocation(line: 248, column: 5, scope: !680)
!1596 = !DILocation(line: 249, column: 1, scope: !680)
!1597 = !DILocation(line: 94, column: 23, scope: !518)
!1598 = !DILocation(line: 94, column: 39, scope: !518)
!1599 = !DILocation(line: 96, column: 12, scope: !518)
!1600 = !DILocation(line: 96, column: 5, scope: !518)
!1601 = !DILocation(line: 103, column: 23, scope: !522)
!1602 = !DILocation(line: 103, column: 39, scope: !522)
!1603 = !DILocation(line: 107, column: 41, scope: !522)
!1604 = !DILocation(line: 107, column: 12, scope: !522)
!1605 = !DILocation(line: 107, column: 5, scope: !522)
!1606 = !DILocation(line: 117, column: 27, scope: !526)
!1607 = !DILocation(line: 117, column: 43, scope: !526)
!1608 = !DILocation(line: 119, column: 12, scope: !526)
!1609 = !DILocation(line: 119, column: 5, scope: !526)
!1610 = !DILocation(line: 130, column: 24, scope: !530)
!1611 = !DILocation(line: 130, column: 40, scope: !530)
!1612 = !DILocation(line: 133, column: 29, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !530, file: !385, line: 133, column: 9)
!1614 = !DILocation(line: 133, column: 9, scope: !1613)
!1615 = !DILocation(line: 133, column: 9, scope: !530)
!1616 = !DILocation(line: 134, column: 25, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1613, file: !385, line: 133, column: 59)
!1618 = !DILocation(line: 134, column: 9, scope: !1617)
!1619 = !DILocation(line: 135, column: 9, scope: !1617)
!1620 = !DILocation(line: 137, column: 58, scope: !530)
!1621 = !DILocation(line: 137, column: 5, scope: !530)
!1622 = !DILocation(line: 138, column: 1, scope: !530)
!1623 = !DILocation(line: 184, column: 24, scope: !534)
!1624 = !DILocation(line: 184, column: 40, scope: !534)
!1625 = !DILocation(line: 186, column: 5, scope: !534)
!1626 = !DILocation(line: 186, column: 15, scope: !534)
!1627 = !DILocation(line: 188, column: 29, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !534, file: !385, line: 188, column: 9)
!1629 = !DILocation(line: 188, column: 9, scope: !1628)
!1630 = !DILocation(line: 188, column: 9, scope: !534)
!1631 = !DILocation(line: 189, column: 62, scope: !1628)
!1632 = !DILocation(line: 189, column: 9, scope: !1628)
!1633 = !DILocation(line: 191, column: 38, scope: !534)
!1634 = !DILocation(line: 191, column: 44, scope: !534)
!1635 = !DILocation(line: 191, column: 11, scope: !534)
!1636 = !DILocation(line: 191, column: 9, scope: !534)
!1637 = !DILocation(line: 193, column: 29, scope: !542)
!1638 = !DILocation(line: 193, column: 9, scope: !542)
!1639 = !DILocation(line: 193, column: 90, scope: !542)
!1640 = !DILocation(line: 193, column: 9, scope: !534)
!1641 = !DILocation(line: 194, column: 9, scope: !541)
!1642 = !DILocation(line: 194, column: 14, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !540, file: !385, discriminator: 1)
!1644 = !DILocation(line: 194, column: 24, scope: !540)
!1645 = !DILocation(line: 194, column: 55, scope: !540)
!1646 = !DILocation(line: 194, column: 65, scope: !545)
!1647 = !DILocation(line: 194, column: 81, scope: !545)
!1648 = !DILocation(line: 194, column: 65, scope: !540)
!1649 = !DILocation(line: 194, column: 96, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !545, file: !385, discriminator: 2)
!1651 = !DILocation(line: 194, column: 101, scope: !1652)
!1652 = !DILexicalBlockFile(scope: !544, file: !385, discriminator: 4)
!1653 = !DILocation(line: 194, column: 111, scope: !544)
!1654 = !DILocation(line: 194, column: 141, scope: !544)
!1655 = !DILocation(line: 194, column: 167, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !544, file: !385, line: 194, column: 164)
!1657 = !DILocation(line: 194, column: 184, scope: !1656)
!1658 = !DILocation(line: 194, column: 164, scope: !1656)
!1659 = !DILocation(line: 194, column: 194, scope: !1656)
!1660 = !DILocation(line: 194, column: 164, scope: !544)
!1661 = !DILocation(line: 194, column: 164, scope: !1662)
!1662 = !DILexicalBlockFile(scope: !544, file: !385, discriminator: 5)
!1663 = !DILocation(line: 194, column: 225, scope: !1664)
!1664 = !DILexicalBlockFile(scope: !1656, file: !385, discriminator: 6)
!1665 = !DILocation(line: 194, column: 243, scope: !1656)
!1666 = !DILocation(line: 194, column: 253, scope: !1656)
!1667 = !DILocation(line: 194, column: 278, scope: !1656)
!1668 = !DILocation(line: 194, column: 209, scope: !1656)
!1669 = !DILocation(line: 194, column: 297, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !545, file: !385, discriminator: 7)
!1671 = !DILocation(line: 194, column: 297, scope: !544)
!1672 = !DILocation(line: 194, column: 297, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !544, file: !385, discriminator: 8)
!1674 = !DILocation(line: 194, column: 297, scope: !1675)
!1675 = !DILexicalBlockFile(scope: !544, file: !385, discriminator: 9)
!1676 = !DILocation(line: 194, column: 310, scope: !1677)
!1677 = !DILexicalBlockFile(scope: !1678, file: !385, discriminator: 10)
!1678 = !DILexicalBlockFile(scope: !541, file: !385, discriminator: 3)
!1679 = !DILocation(line: 194, column: 310, scope: !540)
!1680 = !DILocation(line: 194, column: 310, scope: !1681)
!1681 = !DILexicalBlockFile(scope: !540, file: !385, discriminator: 11)
!1682 = !DILocation(line: 195, column: 9, scope: !541)
!1683 = !DILocation(line: 198, column: 9, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !534, file: !385, line: 198, column: 9)
!1685 = !DILocation(line: 198, column: 13, scope: !1684)
!1686 = !DILocation(line: 198, column: 9, scope: !534)
!1687 = !DILocation(line: 199, column: 9, scope: !1684)
!1688 = !DILocation(line: 201, column: 5, scope: !534)
!1689 = !DILocation(line: 201, column: 10, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !547, file: !385, discriminator: 1)
!1691 = !DILocation(line: 201, column: 20, scope: !547)
!1692 = !DILocation(line: 201, column: 50, scope: !547)
!1693 = !DILocation(line: 201, column: 64, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !547, file: !385, line: 201, column: 61)
!1695 = !DILocation(line: 201, column: 81, scope: !1694)
!1696 = !DILocation(line: 201, column: 61, scope: !1694)
!1697 = !DILocation(line: 201, column: 91, scope: !1694)
!1698 = !DILocation(line: 201, column: 61, scope: !547)
!1699 = !DILocation(line: 201, column: 61, scope: !1700)
!1700 = !DILexicalBlockFile(scope: !547, file: !385, discriminator: 2)
!1701 = !DILocation(line: 201, column: 122, scope: !1702)
!1702 = !DILexicalBlockFile(scope: !1694, file: !385, discriminator: 3)
!1703 = !DILocation(line: 201, column: 140, scope: !1694)
!1704 = !DILocation(line: 201, column: 150, scope: !1694)
!1705 = !DILocation(line: 201, column: 175, scope: !1694)
!1706 = !DILocation(line: 201, column: 106, scope: !1694)
!1707 = !DILocation(line: 201, column: 194, scope: !1708)
!1708 = !DILexicalBlockFile(scope: !534, file: !385, discriminator: 4)
!1709 = !DILocation(line: 201, column: 194, scope: !547)
!1710 = !DILocation(line: 201, column: 194, scope: !1711)
!1711 = !DILexicalBlockFile(scope: !547, file: !385, discriminator: 5)
!1712 = !DILocation(line: 202, column: 58, scope: !534)
!1713 = !DILocation(line: 202, column: 5, scope: !534)
!1714 = !DILocation(line: 203, column: 1, scope: !534)
!1715 = !DILocation(line: 314, column: 27, scope: !548)
!1716 = !DILocation(line: 314, column: 43, scope: !548)
!1717 = !DILocation(line: 316, column: 72, scope: !548)
!1718 = !DILocation(line: 316, column: 5, scope: !548)
!1719 = !DILocation(line: 342, column: 27, scope: !552)
!1720 = !DILocation(line: 342, column: 43, scope: !552)
!1721 = !DILocation(line: 344, column: 72, scope: !552)
!1722 = !DILocation(line: 344, column: 5, scope: !552)
!1723 = !DILocation(line: 371, column: 27, scope: !556)
!1724 = !DILocation(line: 371, column: 43, scope: !556)
!1725 = !DILocation(line: 373, column: 72, scope: !556)
!1726 = !DILocation(line: 373, column: 5, scope: !556)
!1727 = !DILocation(line: 422, column: 25, scope: !560)
!1728 = !DILocation(line: 422, column: 41, scope: !560)
!1729 = !DILocation(line: 424, column: 12, scope: !560)
!1730 = !DILocation(line: 424, column: 5, scope: !560)
!1731 = !DILocation(line: 433, column: 25, scope: !564)
!1732 = !DILocation(line: 433, column: 41, scope: !564)
!1733 = !DILocation(line: 435, column: 32, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !564, file: !385, line: 435, column: 9)
!1735 = !DILocation(line: 435, column: 9, scope: !1734)
!1736 = !DILocation(line: 435, column: 70, scope: !1734)
!1737 = !DILocation(line: 435, column: 9, scope: !564)
!1738 = !DILocation(line: 436, column: 9, scope: !1734)
!1739 = !DILocation(line: 437, column: 72, scope: !564)
!1740 = !DILocation(line: 437, column: 5, scope: !564)
!1741 = !DILocation(line: 438, column: 1, scope: !564)
!1742 = !DILocation(line: 397, column: 24, scope: !568)
!1743 = !DILocation(line: 397, column: 40, scope: !568)
!1744 = !DILocation(line: 399, column: 32, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !568, file: !385, line: 399, column: 9)
!1746 = !DILocation(line: 399, column: 9, scope: !1745)
!1747 = !DILocation(line: 399, column: 70, scope: !1745)
!1748 = !DILocation(line: 399, column: 9, scope: !568)
!1749 = !DILocation(line: 400, column: 9, scope: !1745)
!1750 = !DILocation(line: 402, column: 21, scope: !568)
!1751 = !DILocation(line: 402, column: 29, scope: !568)
!1752 = !DILocation(line: 402, column: 38, scope: !568)
!1753 = !DILocation(line: 403, column: 12, scope: !568)
!1754 = !DILocation(line: 403, column: 5, scope: !568)
!1755 = !DILocation(line: 404, column: 1, scope: !568)
!1756 = !DILocation(line: 407, column: 23, scope: !572)
!1757 = !DILocation(line: 407, column: 39, scope: !572)
!1758 = !DILocation(line: 409, column: 39, scope: !572)
!1759 = !DILocation(line: 409, column: 45, scope: !572)
!1760 = !DILocation(line: 409, column: 12, scope: !572)
!1761 = !DILocation(line: 409, column: 5, scope: !572)
!1762 = !DILocation(line: 452, column: 27, scope: !576)
!1763 = !DILocation(line: 452, column: 43, scope: !576)
!1764 = !DILocation(line: 456, column: 5, scope: !576)
!1765 = !DILocation(line: 456, column: 16, scope: !576)
!1766 = !{!866, !866, i64 0}
!1767 = !DILocation(line: 457, column: 5, scope: !576)
!1768 = !DILocation(line: 457, column: 9, scope: !576)
!1769 = !DILocation(line: 458, column: 5, scope: !576)
!1770 = !DILocation(line: 458, column: 15, scope: !576)
!1771 = !DILocation(line: 458, column: 24, scope: !576)
!1772 = !DILocation(line: 459, column: 5, scope: !576)
!1773 = !DILocation(line: 459, column: 16, scope: !576)
!1774 = !DILocation(line: 462, column: 34, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !576, file: !385, line: 462, column: 9)
!1776 = !DILocation(line: 462, column: 10, scope: !1775)
!1777 = !DILocation(line: 462, column: 9, scope: !576)
!1778 = !DILocation(line: 463, column: 9, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1775, file: !385, line: 462, column: 88)
!1780 = !DILocation(line: 466, column: 29, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !576, file: !385, line: 466, column: 9)
!1782 = !DILocation(line: 466, column: 9, scope: !1781)
!1783 = !DILocation(line: 466, column: 9, scope: !576)
!1784 = !DILocation(line: 467, column: 18, scope: !1781)
!1785 = !DILocation(line: 467, column: 9, scope: !1781)
!1786 = !DILocation(line: 469, column: 14, scope: !576)
!1787 = !DILocation(line: 469, column: 12, scope: !576)
!1788 = !DILocation(line: 470, column: 9, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !576, file: !385, line: 470, column: 9)
!1790 = !DILocation(line: 470, column: 16, scope: !1789)
!1791 = !DILocation(line: 470, column: 9, scope: !576)
!1792 = !DILocation(line: 471, column: 9, scope: !1789)
!1793 = !DILocation(line: 473, column: 5, scope: !576)
!1794 = !DILocation(line: 473, column: 12, scope: !1795)
!1795 = !DILexicalBlockFile(scope: !1796, file: !385, discriminator: 5)
!1796 = !DILexicalBlockFile(scope: !576, file: !385, discriminator: 1)
!1797 = !DILocation(line: 473, column: 18, scope: !576)
!1798 = !DILocation(line: 473, column: 22, scope: !576)
!1799 = !DILocation(line: 473, column: 42, scope: !1800)
!1800 = !DILexicalBlockFile(scope: !576, file: !385, discriminator: 3)
!1801 = !DILocation(line: 473, column: 27, scope: !576)
!1802 = !DILocation(line: 473, column: 52, scope: !576)
!1803 = !{!908, !866, i64 16}
!1804 = !DILocation(line: 473, column: 63, scope: !576)
!1805 = !DILocation(line: 473, column: 61, scope: !576)
!1806 = !DILocation(line: 473, column: 5, scope: !1807)
!1807 = !DILexicalBlockFile(scope: !1808, file: !385, discriminator: 4)
!1808 = !DILexicalBlockFile(scope: !576, file: !385, discriminator: 2)
!1809 = !DILocation(line: 474, column: 9, scope: !586)
!1810 = !DILocation(line: 474, column: 20, scope: !586)
!1811 = !DILocation(line: 475, column: 9, scope: !586)
!1812 = !DILocation(line: 475, column: 19, scope: !586)
!1813 = !DILocation(line: 477, column: 13, scope: !590)
!1814 = !DILocation(line: 477, column: 13, scope: !586)
!1815 = !DILocation(line: 478, column: 13, scope: !589)
!1816 = !DILocation(line: 478, column: 23, scope: !589)
!1817 = !DILocation(line: 478, column: 64, scope: !589)
!1818 = !DILocation(line: 478, column: 35, scope: !589)
!1819 = !DILocation(line: 479, column: 17, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !589, file: !385, line: 479, column: 17)
!1821 = !DILocation(line: 479, column: 27, scope: !1820)
!1822 = !DILocation(line: 479, column: 17, scope: !589)
!1823 = !DILocation(line: 482, column: 21, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !385, line: 482, column: 21)
!1825 = distinct !DILexicalBlock(scope: !1820, file: !385, line: 479, column: 42)
!1826 = !DILocation(line: 482, column: 21, scope: !1825)
!1827 = !DILocation(line: 483, column: 21, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1824, file: !385, line: 482, column: 41)
!1829 = !DILocation(line: 485, column: 17, scope: !1825)
!1830 = !DILocation(line: 487, column: 35, scope: !594)
!1831 = !DILocation(line: 487, column: 48, scope: !594)
!1832 = !DILocation(line: 487, column: 59, scope: !594)
!1833 = !DILocation(line: 487, column: 68, scope: !594)
!1834 = !DILocation(line: 487, column: 85, scope: !594)
!1835 = !DILocation(line: 487, column: 17, scope: !589)
!1836 = !DILocation(line: 488, column: 30, scope: !593)
!1837 = !DILocation(line: 490, column: 60, scope: !593)
!1838 = !DILocation(line: 490, column: 73, scope: !593)
!1839 = !DILocation(line: 490, column: 83, scope: !593)
!1840 = !{!907, !844, i64 24}
!1841 = !DILocation(line: 488, column: 17, scope: !593)
!1842 = !DILocation(line: 491, column: 17, scope: !593)
!1843 = !DILocation(line: 491, column: 22, scope: !1844)
!1844 = !DILexicalBlockFile(scope: !592, file: !385, discriminator: 1)
!1845 = !DILocation(line: 491, column: 32, scope: !592)
!1846 = !DILocation(line: 491, column: 62, scope: !592)
!1847 = !DILocation(line: 491, column: 82, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !592, file: !385, line: 491, column: 79)
!1849 = !DILocation(line: 491, column: 99, scope: !1848)
!1850 = !DILocation(line: 491, column: 79, scope: !1848)
!1851 = !DILocation(line: 491, column: 109, scope: !1848)
!1852 = !DILocation(line: 491, column: 79, scope: !592)
!1853 = !DILocation(line: 491, column: 79, scope: !1854)
!1854 = !DILexicalBlockFile(scope: !592, file: !385, discriminator: 2)
!1855 = !DILocation(line: 491, column: 140, scope: !1856)
!1856 = !DILexicalBlockFile(scope: !1848, file: !385, discriminator: 3)
!1857 = !DILocation(line: 491, column: 158, scope: !1848)
!1858 = !DILocation(line: 491, column: 168, scope: !1848)
!1859 = !DILocation(line: 491, column: 193, scope: !1848)
!1860 = !DILocation(line: 491, column: 124, scope: !1848)
!1861 = !DILocation(line: 491, column: 212, scope: !1862)
!1862 = !DILexicalBlockFile(scope: !593, file: !385, discriminator: 4)
!1863 = !DILocation(line: 491, column: 212, scope: !592)
!1864 = !DILocation(line: 491, column: 212, scope: !1865)
!1865 = !DILexicalBlockFile(scope: !592, file: !385, discriminator: 5)
!1866 = !DILocation(line: 492, column: 17, scope: !593)
!1867 = !DILocation(line: 494, column: 48, scope: !597)
!1868 = !DILocation(line: 494, column: 33, scope: !597)
!1869 = !DILocation(line: 494, column: 61, scope: !597)
!1870 = !DILocation(line: 494, column: 71, scope: !597)
!1871 = !DILocation(line: 494, column: 17, scope: !589)
!1872 = !DILocation(line: 495, column: 17, scope: !596)
!1873 = !DILocation(line: 495, column: 28, scope: !596)
!1874 = !DILocation(line: 496, column: 17, scope: !596)
!1875 = !DILocation(line: 496, column: 29, scope: !596)
!1876 = !DILocation(line: 496, column: 70, scope: !596)
!1877 = !DILocation(line: 496, column: 52, scope: !596)
!1878 = !DILocation(line: 496, column: 83, scope: !596)
!1879 = !DILocation(line: 496, column: 50, scope: !596)
!1880 = !DILocation(line: 497, column: 21, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !596, file: !385, line: 497, column: 21)
!1882 = !DILocation(line: 497, column: 27, scope: !1881)
!1883 = !DILocation(line: 497, column: 21, scope: !596)
!1884 = !DILocation(line: 498, column: 21, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1881, file: !385, line: 497, column: 33)
!1886 = !DILocation(line: 499, column: 29, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !385, line: 499, column: 29)
!1888 = distinct !DILexicalBlock(scope: !1885, file: !385, line: 498, column: 24)
!1889 = !DILocation(line: 499, column: 65, scope: !1887)
!1890 = !DILocation(line: 499, column: 50, scope: !1887)
!1891 = !DILocation(line: 499, column: 78, scope: !1887)
!1892 = !DILocation(line: 499, column: 31, scope: !1887)
!1893 = !DILocation(line: 499, column: 88, scope: !1887)
!1894 = !DILocation(line: 499, column: 91, scope: !1895)
!1895 = !DILexicalBlockFile(scope: !1887, file: !385, discriminator: 1)
!1896 = !DILocation(line: 499, column: 96, scope: !1887)
!1897 = !DILocation(line: 499, column: 93, scope: !1887)
!1898 = !DILocation(line: 499, column: 29, scope: !1888)
!1899 = !DILocation(line: 500, column: 29, scope: !1887)
!1900 = !DILocation(line: 501, column: 34, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1888, file: !385, line: 501, column: 29)
!1902 = !DILocation(line: 501, column: 29, scope: !1901)
!1903 = !{!845, !845, i64 0}
!1904 = !DILocation(line: 501, column: 38, scope: !1901)
!1905 = !DILocation(line: 501, column: 29, scope: !1888)
!1906 = !DILocation(line: 502, column: 29, scope: !1901)
!1907 = !DILocation(line: 503, column: 21, scope: !1888)
!1908 = !DILocation(line: 503, column: 21, scope: !1909)
!1909 = !DILexicalBlockFile(scope: !1888, file: !385, discriminator: 1)
!1910 = !DILocation(line: 504, column: 17, scope: !1885)
!1911 = !DILocation(line: 506, column: 21, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1881, file: !385, line: 505, column: 22)
!1913 = !DILocation(line: 507, column: 29, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !385, line: 507, column: 29)
!1915 = distinct !DILexicalBlock(scope: !1912, file: !385, line: 506, column: 24)
!1916 = !DILocation(line: 507, column: 65, scope: !1914)
!1917 = !DILocation(line: 507, column: 50, scope: !1914)
!1918 = !DILocation(line: 507, column: 78, scope: !1914)
!1919 = !DILocation(line: 507, column: 31, scope: !1914)
!1920 = !DILocation(line: 507, column: 29, scope: !1915)
!1921 = !DILocation(line: 508, column: 29, scope: !1914)
!1922 = !DILocation(line: 509, column: 34, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1915, file: !385, line: 509, column: 29)
!1924 = !DILocation(line: 509, column: 29, scope: !1923)
!1925 = !DILocation(line: 509, column: 38, scope: !1923)
!1926 = !DILocation(line: 509, column: 29, scope: !1915)
!1927 = !DILocation(line: 510, column: 29, scope: !1923)
!1928 = !DILocation(line: 511, column: 21, scope: !1915)
!1929 = !DILocation(line: 511, column: 21, scope: !1930)
!1930 = !DILexicalBlockFile(scope: !1915, file: !385, discriminator: 1)
!1931 = !DILocation(line: 513, column: 30, scope: !596)
!1932 = !DILocation(line: 513, column: 28, scope: !596)
!1933 = !DILocation(line: 514, column: 13, scope: !597)
!1934 = !DILocation(line: 514, column: 13, scope: !596)
!1935 = !DILocation(line: 515, column: 13, scope: !589)
!1936 = !DILocation(line: 515, column: 18, scope: !1937)
!1937 = !DILexicalBlockFile(scope: !600, file: !385, discriminator: 1)
!1938 = !DILocation(line: 515, column: 28, scope: !600)
!1939 = !DILocation(line: 515, column: 58, scope: !600)
!1940 = !DILocation(line: 515, column: 78, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !600, file: !385, line: 515, column: 75)
!1942 = !DILocation(line: 515, column: 95, scope: !1941)
!1943 = !DILocation(line: 515, column: 75, scope: !1941)
!1944 = !DILocation(line: 515, column: 105, scope: !1941)
!1945 = !DILocation(line: 515, column: 75, scope: !600)
!1946 = !DILocation(line: 515, column: 75, scope: !1947)
!1947 = !DILexicalBlockFile(scope: !600, file: !385, discriminator: 2)
!1948 = !DILocation(line: 515, column: 136, scope: !1949)
!1949 = !DILexicalBlockFile(scope: !1941, file: !385, discriminator: 3)
!1950 = !DILocation(line: 515, column: 154, scope: !1941)
!1951 = !DILocation(line: 515, column: 164, scope: !1941)
!1952 = !DILocation(line: 515, column: 189, scope: !1941)
!1953 = !DILocation(line: 515, column: 120, scope: !1941)
!1954 = !DILocation(line: 515, column: 208, scope: !1955)
!1955 = !DILexicalBlockFile(scope: !589, file: !385, discriminator: 4)
!1956 = !DILocation(line: 515, column: 208, scope: !600)
!1957 = !DILocation(line: 515, column: 208, scope: !1958)
!1958 = !DILexicalBlockFile(scope: !600, file: !385, discriminator: 5)
!1959 = !DILocation(line: 516, column: 9, scope: !590)
!1960 = !DILocation(line: 516, column: 9, scope: !1961)
!1961 = !DILexicalBlockFile(scope: !590, file: !385, discriminator: 1)
!1962 = !DILocation(line: 516, column: 9, scope: !589)
!1963 = !DILocation(line: 518, column: 42, scope: !586)
!1964 = !DILocation(line: 518, column: 65, scope: !586)
!1965 = !DILocation(line: 518, column: 13, scope: !586)
!1966 = !DILocation(line: 518, column: 11, scope: !586)
!1967 = !DILocation(line: 519, column: 13, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !586, file: !385, line: 519, column: 13)
!1969 = !DILocation(line: 519, column: 15, scope: !1968)
!1970 = !DILocation(line: 519, column: 13, scope: !586)
!1971 = !DILocation(line: 522, column: 17, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !385, line: 522, column: 17)
!1973 = distinct !DILexicalBlock(scope: !1968, file: !385, line: 519, column: 30)
!1974 = !DILocation(line: 522, column: 17, scope: !1973)
!1975 = !DILocation(line: 523, column: 17, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1972, file: !385, line: 522, column: 37)
!1977 = !DILocation(line: 525, column: 13, scope: !1973)
!1978 = !DILocation(line: 527, column: 31, scope: !604)
!1979 = !DILocation(line: 527, column: 36, scope: !604)
!1980 = !DILocation(line: 527, column: 47, scope: !604)
!1981 = !DILocation(line: 527, column: 56, scope: !604)
!1982 = !DILocation(line: 527, column: 73, scope: !604)
!1983 = !DILocation(line: 527, column: 13, scope: !586)
!1984 = !DILocation(line: 528, column: 26, scope: !603)
!1985 = !DILocation(line: 530, column: 56, scope: !603)
!1986 = !DILocation(line: 530, column: 61, scope: !603)
!1987 = !DILocation(line: 530, column: 71, scope: !603)
!1988 = !DILocation(line: 528, column: 13, scope: !603)
!1989 = !DILocation(line: 531, column: 13, scope: !603)
!1990 = !DILocation(line: 531, column: 18, scope: !1991)
!1991 = !DILexicalBlockFile(scope: !602, file: !385, discriminator: 1)
!1992 = !DILocation(line: 531, column: 28, scope: !602)
!1993 = !DILocation(line: 531, column: 58, scope: !602)
!1994 = !DILocation(line: 531, column: 70, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !602, file: !385, line: 531, column: 67)
!1996 = !DILocation(line: 531, column: 87, scope: !1995)
!1997 = !DILocation(line: 531, column: 67, scope: !1995)
!1998 = !DILocation(line: 531, column: 97, scope: !1995)
!1999 = !DILocation(line: 531, column: 67, scope: !602)
!2000 = !DILocation(line: 531, column: 67, scope: !2001)
!2001 = !DILexicalBlockFile(scope: !602, file: !385, discriminator: 2)
!2002 = !DILocation(line: 531, column: 128, scope: !2003)
!2003 = !DILexicalBlockFile(scope: !1995, file: !385, discriminator: 3)
!2004 = !DILocation(line: 531, column: 146, scope: !1995)
!2005 = !DILocation(line: 531, column: 156, scope: !1995)
!2006 = !DILocation(line: 531, column: 181, scope: !1995)
!2007 = !DILocation(line: 531, column: 112, scope: !1995)
!2008 = !DILocation(line: 531, column: 200, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !603, file: !385, discriminator: 4)
!2010 = !DILocation(line: 531, column: 200, scope: !602)
!2011 = !DILocation(line: 531, column: 200, scope: !2012)
!2012 = !DILexicalBlockFile(scope: !602, file: !385, discriminator: 5)
!2013 = !DILocation(line: 532, column: 13, scope: !603)
!2014 = !DILocation(line: 534, column: 44, scope: !608)
!2015 = !DILocation(line: 534, column: 29, scope: !608)
!2016 = !DILocation(line: 534, column: 49, scope: !608)
!2017 = !DILocation(line: 534, column: 59, scope: !608)
!2018 = !DILocation(line: 534, column: 13, scope: !586)
!2019 = !DILocation(line: 535, column: 13, scope: !607)
!2020 = !DILocation(line: 535, column: 18, scope: !2021)
!2021 = !DILexicalBlockFile(scope: !606, file: !385, discriminator: 1)
!2022 = !DILocation(line: 535, column: 28, scope: !606)
!2023 = !DILocation(line: 535, column: 58, scope: !606)
!2024 = !DILocation(line: 535, column: 70, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !606, file: !385, line: 535, column: 67)
!2026 = !DILocation(line: 535, column: 87, scope: !2025)
!2027 = !DILocation(line: 535, column: 67, scope: !2025)
!2028 = !DILocation(line: 535, column: 97, scope: !2025)
!2029 = !DILocation(line: 535, column: 67, scope: !606)
!2030 = !DILocation(line: 535, column: 67, scope: !2031)
!2031 = !DILexicalBlockFile(scope: !606, file: !385, discriminator: 2)
!2032 = !DILocation(line: 535, column: 128, scope: !2033)
!2033 = !DILexicalBlockFile(scope: !2025, file: !385, discriminator: 3)
!2034 = !DILocation(line: 535, column: 146, scope: !2025)
!2035 = !DILocation(line: 535, column: 156, scope: !2025)
!2036 = !DILocation(line: 535, column: 181, scope: !2025)
!2037 = !DILocation(line: 535, column: 112, scope: !2025)
!2038 = !DILocation(line: 535, column: 200, scope: !2039)
!2039 = !DILexicalBlockFile(scope: !607, file: !385, discriminator: 4)
!2040 = !DILocation(line: 535, column: 200, scope: !606)
!2041 = !DILocation(line: 535, column: 200, scope: !2042)
!2042 = !DILexicalBlockFile(scope: !606, file: !385, discriminator: 5)
!2043 = !DILocation(line: 536, column: 13, scope: !607)
!2044 = !DILocation(line: 539, column: 52, scope: !586)
!2045 = !DILocation(line: 539, column: 37, scope: !586)
!2046 = !DILocation(line: 539, column: 62, scope: !586)
!2047 = !DILocation(line: 539, column: 18, scope: !586)
!2048 = !DILocation(line: 540, column: 32, scope: !612)
!2049 = !DILocation(line: 540, column: 40, scope: !612)
!2050 = !DILocation(line: 540, column: 82, scope: !612)
!2051 = !DILocation(line: 540, column: 67, scope: !612)
!2052 = !DILocation(line: 540, column: 87, scope: !612)
!2053 = !DILocation(line: 540, column: 49, scope: !612)
!2054 = !DILocation(line: 540, column: 13, scope: !612)
!2055 = !DILocation(line: 540, column: 98, scope: !612)
!2056 = !DILocation(line: 540, column: 13, scope: !586)
!2057 = !DILocation(line: 541, column: 13, scope: !611)
!2058 = !DILocation(line: 541, column: 18, scope: !2059)
!2059 = !DILexicalBlockFile(scope: !610, file: !385, discriminator: 1)
!2060 = !DILocation(line: 541, column: 28, scope: !610)
!2061 = !DILocation(line: 541, column: 58, scope: !610)
!2062 = !DILocation(line: 541, column: 70, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !610, file: !385, line: 541, column: 67)
!2064 = !DILocation(line: 541, column: 87, scope: !2063)
!2065 = !DILocation(line: 541, column: 67, scope: !2063)
!2066 = !DILocation(line: 541, column: 97, scope: !2063)
!2067 = !DILocation(line: 541, column: 67, scope: !610)
!2068 = !DILocation(line: 541, column: 67, scope: !2069)
!2069 = !DILexicalBlockFile(scope: !610, file: !385, discriminator: 2)
!2070 = !DILocation(line: 541, column: 128, scope: !2071)
!2071 = !DILexicalBlockFile(scope: !2063, file: !385, discriminator: 3)
!2072 = !DILocation(line: 541, column: 146, scope: !2063)
!2073 = !DILocation(line: 541, column: 156, scope: !2063)
!2074 = !DILocation(line: 541, column: 181, scope: !2063)
!2075 = !DILocation(line: 541, column: 112, scope: !2063)
!2076 = !DILocation(line: 541, column: 200, scope: !2077)
!2077 = !DILexicalBlockFile(scope: !611, file: !385, discriminator: 4)
!2078 = !DILocation(line: 541, column: 200, scope: !610)
!2079 = !DILocation(line: 541, column: 200, scope: !2080)
!2080 = !DILexicalBlockFile(scope: !610, file: !385, discriminator: 5)
!2081 = !DILocation(line: 542, column: 13, scope: !611)
!2082 = !DILocation(line: 544, column: 48, scope: !586)
!2083 = !DILocation(line: 544, column: 33, scope: !586)
!2084 = !DILocation(line: 544, column: 58, scope: !586)
!2085 = !DILocation(line: 544, column: 31, scope: !586)
!2086 = !DILocation(line: 544, column: 92, scope: !2087)
!2087 = !DILexicalBlockFile(scope: !586, file: !385, discriminator: 1)
!2088 = !DILocation(line: 544, column: 70, scope: !586)
!2089 = !DILocation(line: 544, column: 102, scope: !586)
!2090 = !{!2091, !844, i64 40}
!2091 = !{!"", !908, i64 0, !866, i64 24, !844, i64 32, !844, i64 40, !887, i64 48}
!2092 = !DILocation(line: 544, column: 31, scope: !2093)
!2093 = !DILexicalBlockFile(scope: !586, file: !385, discriminator: 2)
!2094 = !DILocation(line: 544, column: 142, scope: !2095)
!2095 = !DILexicalBlockFile(scope: !2096, file: !385, discriminator: 4)
!2096 = !DILexicalBlockFile(scope: !586, file: !385, discriminator: 3)
!2097 = !DILocation(line: 544, column: 140, scope: !586)
!2098 = !DILocation(line: 545, column: 51, scope: !586)
!2099 = !DILocation(line: 545, column: 33, scope: !586)
!2100 = !DILocation(line: 545, column: 56, scope: !586)
!2101 = !DILocation(line: 545, column: 31, scope: !586)
!2102 = !DILocation(line: 545, column: 98, scope: !586)
!2103 = !DILocation(line: 545, column: 83, scope: !586)
!2104 = !DILocation(line: 545, column: 103, scope: !586)
!2105 = !DILocation(line: 544, column: 9, scope: !586)
!2106 = !DILocation(line: 547, column: 9, scope: !586)
!2107 = !DILocation(line: 547, column: 14, scope: !2108)
!2108 = !DILexicalBlockFile(scope: !614, file: !385, discriminator: 1)
!2109 = !DILocation(line: 547, column: 24, scope: !614)
!2110 = !DILocation(line: 547, column: 54, scope: !614)
!2111 = !DILocation(line: 547, column: 66, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !614, file: !385, line: 547, column: 63)
!2113 = !DILocation(line: 547, column: 83, scope: !2112)
!2114 = !DILocation(line: 547, column: 63, scope: !2112)
!2115 = !DILocation(line: 547, column: 93, scope: !2112)
!2116 = !DILocation(line: 547, column: 63, scope: !614)
!2117 = !DILocation(line: 547, column: 63, scope: !2118)
!2118 = !DILexicalBlockFile(scope: !614, file: !385, discriminator: 2)
!2119 = !DILocation(line: 547, column: 124, scope: !2120)
!2120 = !DILexicalBlockFile(scope: !2112, file: !385, discriminator: 3)
!2121 = !DILocation(line: 547, column: 142, scope: !2112)
!2122 = !DILocation(line: 547, column: 152, scope: !2112)
!2123 = !DILocation(line: 547, column: 177, scope: !2112)
!2124 = !DILocation(line: 547, column: 108, scope: !2112)
!2125 = !DILocation(line: 547, column: 196, scope: !2126)
!2126 = !DILexicalBlockFile(scope: !586, file: !385, discriminator: 4)
!2127 = !DILocation(line: 547, column: 196, scope: !614)
!2128 = !DILocation(line: 547, column: 196, scope: !2129)
!2129 = !DILexicalBlockFile(scope: !614, file: !385, discriminator: 5)
!2130 = !DILocation(line: 549, column: 169, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !586, file: !385, line: 549, column: 13)
!2132 = !DILocation(line: 549, column: 154, scope: !2131)
!2133 = !DILocation(line: 549, column: 179, scope: !2131)
!2134 = !DILocation(line: 549, column: 189, scope: !2131)
!2135 = !DILocation(line: 549, column: 45, scope: !2131)
!2136 = !DILocation(line: 549, column: 30, scope: !2131)
!2137 = !DILocation(line: 549, column: 55, scope: !2131)
!2138 = !DILocation(line: 549, column: 28, scope: !2131)
!2139 = !DILocation(line: 549, column: 89, scope: !2140)
!2140 = !DILexicalBlockFile(scope: !2131, file: !385, discriminator: 1)
!2141 = !DILocation(line: 549, column: 67, scope: !2131)
!2142 = !DILocation(line: 549, column: 99, scope: !2131)
!2143 = !DILocation(line: 549, column: 28, scope: !2144)
!2144 = !DILexicalBlockFile(scope: !2131, file: !385, discriminator: 2)
!2145 = !DILocation(line: 549, column: 13, scope: !2146)
!2146 = !DILexicalBlockFile(scope: !2147, file: !385, discriminator: 4)
!2147 = !DILexicalBlockFile(scope: !2131, file: !385, discriminator: 3)
!2148 = !DILocation(line: 549, column: 194, scope: !2131)
!2149 = !DILocation(line: 549, column: 13, scope: !586)
!2150 = !DILocation(line: 550, column: 13, scope: !2131)
!2151 = !DILocation(line: 551, column: 5, scope: !576)
!2152 = !DILocation(line: 551, column: 5, scope: !1796)
!2153 = !DILocation(line: 553, column: 72, scope: !576)
!2154 = !DILocation(line: 553, column: 57, scope: !576)
!2155 = !DILocation(line: 553, column: 82, scope: !576)
!2156 = !DILocation(line: 553, column: 55, scope: !576)
!2157 = !DILocation(line: 553, column: 116, scope: !1796)
!2158 = !DILocation(line: 553, column: 94, scope: !576)
!2159 = !DILocation(line: 553, column: 126, scope: !576)
!2160 = !DILocation(line: 553, column: 55, scope: !1808)
!2161 = !DILocation(line: 554, column: 72, scope: !576)
!2162 = !DILocation(line: 554, column: 57, scope: !576)
!2163 = !DILocation(line: 554, column: 82, scope: !576)
!2164 = !DILocation(line: 553, column: 14, scope: !576)
!2165 = !DILocation(line: 553, column: 12, scope: !576)
!2166 = !DILocation(line: 555, column: 5, scope: !576)
!2167 = !DILocation(line: 555, column: 10, scope: !2168)
!2168 = !DILexicalBlockFile(scope: !616, file: !385, discriminator: 1)
!2169 = !DILocation(line: 555, column: 20, scope: !616)
!2170 = !DILocation(line: 555, column: 50, scope: !616)
!2171 = !DILocation(line: 555, column: 67, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !616, file: !385, line: 555, column: 64)
!2173 = !DILocation(line: 555, column: 84, scope: !2172)
!2174 = !DILocation(line: 555, column: 64, scope: !2172)
!2175 = !DILocation(line: 555, column: 94, scope: !2172)
!2176 = !DILocation(line: 555, column: 64, scope: !616)
!2177 = !DILocation(line: 555, column: 64, scope: !2178)
!2178 = !DILexicalBlockFile(scope: !616, file: !385, discriminator: 2)
!2179 = !DILocation(line: 555, column: 125, scope: !2180)
!2180 = !DILexicalBlockFile(scope: !2172, file: !385, discriminator: 3)
!2181 = !DILocation(line: 555, column: 143, scope: !2172)
!2182 = !DILocation(line: 555, column: 153, scope: !2172)
!2183 = !DILocation(line: 555, column: 178, scope: !2172)
!2184 = !DILocation(line: 555, column: 109, scope: !2172)
!2185 = !DILocation(line: 555, column: 197, scope: !2186)
!2186 = !DILexicalBlockFile(scope: !576, file: !385, discriminator: 4)
!2187 = !DILocation(line: 555, column: 197, scope: !616)
!2188 = !DILocation(line: 555, column: 197, scope: !2189)
!2189 = !DILexicalBlockFile(scope: !616, file: !385, discriminator: 5)
!2190 = !DILocation(line: 556, column: 12, scope: !576)
!2191 = !DILocation(line: 556, column: 5, scope: !576)
!2192 = !DILocation(line: 558, column: 5, scope: !576)
!2193 = !DILocation(line: 558, column: 10, scope: !2194)
!2194 = !DILexicalBlockFile(scope: !618, file: !385, discriminator: 1)
!2195 = !DILocation(line: 558, column: 20, scope: !618)
!2196 = !DILocation(line: 558, column: 50, scope: !618)
!2197 = !DILocation(line: 558, column: 67, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !618, file: !385, line: 558, column: 64)
!2199 = !DILocation(line: 558, column: 84, scope: !2198)
!2200 = !DILocation(line: 558, column: 64, scope: !2198)
!2201 = !DILocation(line: 558, column: 94, scope: !2198)
!2202 = !DILocation(line: 558, column: 64, scope: !618)
!2203 = !DILocation(line: 558, column: 64, scope: !2204)
!2204 = !DILexicalBlockFile(scope: !618, file: !385, discriminator: 2)
!2205 = !DILocation(line: 558, column: 125, scope: !2206)
!2206 = !DILexicalBlockFile(scope: !2198, file: !385, discriminator: 3)
!2207 = !DILocation(line: 558, column: 143, scope: !2198)
!2208 = !DILocation(line: 558, column: 153, scope: !2198)
!2209 = !DILocation(line: 558, column: 178, scope: !2198)
!2210 = !DILocation(line: 558, column: 109, scope: !2198)
!2211 = !DILocation(line: 558, column: 197, scope: !2186)
!2212 = !DILocation(line: 558, column: 197, scope: !618)
!2213 = !DILocation(line: 558, column: 197, scope: !2214)
!2214 = !DILexicalBlockFile(scope: !618, file: !385, discriminator: 5)
!2215 = !DILocation(line: 559, column: 5, scope: !576)
!2216 = !DILocation(line: 560, column: 1, scope: !576)
!2217 = !DILocation(line: 596, column: 28, scope: !619)
!2218 = !DILocation(line: 596, column: 44, scope: !619)
!2219 = !DILocation(line: 598, column: 5, scope: !619)
!2220 = !DILocation(line: 598, column: 16, scope: !619)
!2221 = !DILocation(line: 598, column: 27, scope: !619)
!2222 = !DILocation(line: 599, column: 5, scope: !619)
!2223 = !DILocation(line: 599, column: 15, scope: !619)
!2224 = !DILocation(line: 601, column: 34, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !619, file: !385, line: 601, column: 9)
!2226 = !DILocation(line: 601, column: 10, scope: !2225)
!2227 = !DILocation(line: 601, column: 9, scope: !619)
!2228 = !DILocation(line: 602, column: 9, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2225, file: !385, line: 601, column: 88)
!2230 = !DILocation(line: 605, column: 14, scope: !619)
!2231 = !DILocation(line: 605, column: 12, scope: !619)
!2232 = !DILocation(line: 606, column: 9, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !619, file: !385, line: 606, column: 9)
!2234 = !DILocation(line: 606, column: 16, scope: !2233)
!2235 = !DILocation(line: 606, column: 9, scope: !619)
!2236 = !DILocation(line: 607, column: 9, scope: !2233)
!2237 = !DILocation(line: 609, column: 9, scope: !628)
!2238 = !DILocation(line: 609, column: 14, scope: !628)
!2239 = !DILocation(line: 609, column: 9, scope: !619)
!2240 = !DILocation(line: 614, column: 9, scope: !627)
!2241 = !DILocation(line: 614, column: 19, scope: !627)
!2242 = !DILocation(line: 614, column: 54, scope: !627)
!2243 = !DILocation(line: 614, column: 81, scope: !627)
!2244 = !DILocation(line: 614, column: 25, scope: !627)
!2245 = !DILocation(line: 616, column: 13, scope: !632)
!2246 = !DILocation(line: 616, column: 17, scope: !632)
!2247 = !DILocation(line: 616, column: 13, scope: !627)
!2248 = !DILocation(line: 617, column: 13, scope: !631)
!2249 = !DILocation(line: 617, column: 18, scope: !2250)
!2250 = !DILexicalBlockFile(scope: !630, file: !385, discriminator: 1)
!2251 = !DILocation(line: 617, column: 28, scope: !630)
!2252 = !DILocation(line: 617, column: 58, scope: !630)
!2253 = !DILocation(line: 617, column: 75, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !630, file: !385, line: 617, column: 72)
!2255 = !DILocation(line: 617, column: 92, scope: !2254)
!2256 = !DILocation(line: 617, column: 72, scope: !2254)
!2257 = !DILocation(line: 617, column: 102, scope: !2254)
!2258 = !DILocation(line: 617, column: 72, scope: !630)
!2259 = !DILocation(line: 617, column: 72, scope: !2260)
!2260 = !DILexicalBlockFile(scope: !630, file: !385, discriminator: 2)
!2261 = !DILocation(line: 617, column: 133, scope: !2262)
!2262 = !DILexicalBlockFile(scope: !2254, file: !385, discriminator: 3)
!2263 = !DILocation(line: 617, column: 151, scope: !2254)
!2264 = !DILocation(line: 617, column: 161, scope: !2254)
!2265 = !DILocation(line: 617, column: 186, scope: !2254)
!2266 = !DILocation(line: 617, column: 117, scope: !2254)
!2267 = !DILocation(line: 617, column: 205, scope: !2268)
!2268 = !DILexicalBlockFile(scope: !631, file: !385, discriminator: 4)
!2269 = !DILocation(line: 617, column: 205, scope: !630)
!2270 = !DILocation(line: 617, column: 205, scope: !2271)
!2271 = !DILexicalBlockFile(scope: !630, file: !385, discriminator: 5)
!2272 = !DILocation(line: 618, column: 13, scope: !631)
!2273 = !DILocation(line: 620, column: 9, scope: !627)
!2274 = !DILocation(line: 620, column: 14, scope: !2275)
!2275 = !DILexicalBlockFile(scope: !634, file: !385, discriminator: 1)
!2276 = !DILocation(line: 620, column: 24, scope: !634)
!2277 = !DILocation(line: 620, column: 54, scope: !634)
!2278 = !DILocation(line: 620, column: 68, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !634, file: !385, line: 620, column: 65)
!2280 = !DILocation(line: 620, column: 85, scope: !2279)
!2281 = !DILocation(line: 620, column: 65, scope: !2279)
!2282 = !DILocation(line: 620, column: 95, scope: !2279)
!2283 = !DILocation(line: 620, column: 65, scope: !634)
!2284 = !DILocation(line: 620, column: 65, scope: !2285)
!2285 = !DILexicalBlockFile(scope: !634, file: !385, discriminator: 2)
!2286 = !DILocation(line: 620, column: 126, scope: !2287)
!2287 = !DILexicalBlockFile(scope: !2279, file: !385, discriminator: 3)
!2288 = !DILocation(line: 620, column: 144, scope: !2279)
!2289 = !DILocation(line: 620, column: 154, scope: !2279)
!2290 = !DILocation(line: 620, column: 179, scope: !2279)
!2291 = !DILocation(line: 620, column: 110, scope: !2279)
!2292 = !DILocation(line: 620, column: 198, scope: !2293)
!2293 = !DILexicalBlockFile(scope: !627, file: !385, discriminator: 4)
!2294 = !DILocation(line: 620, column: 198, scope: !634)
!2295 = !DILocation(line: 620, column: 198, scope: !2296)
!2296 = !DILexicalBlockFile(scope: !634, file: !385, discriminator: 5)
!2297 = !DILocation(line: 621, column: 16, scope: !627)
!2298 = !DILocation(line: 621, column: 9, scope: !627)
!2299 = !DILocation(line: 622, column: 5, scope: !628)
!2300 = !DILocation(line: 624, column: 5, scope: !619)
!2301 = !DILocation(line: 624, column: 5, scope: !2302)
!2302 = !DILexicalBlockFile(scope: !2303, file: !385, discriminator: 2)
!2303 = !DILexicalBlockFile(scope: !619, file: !385, discriminator: 1)
!2304 = !DILocation(line: 625, column: 9, scope: !636)
!2305 = !DILocation(line: 625, column: 19, scope: !636)
!2306 = !DILocation(line: 625, column: 38, scope: !636)
!2307 = !DILocation(line: 625, column: 26, scope: !636)
!2308 = !DILocation(line: 626, column: 13, scope: !642)
!2309 = !DILocation(line: 626, column: 18, scope: !642)
!2310 = !DILocation(line: 626, column: 13, scope: !636)
!2311 = !DILocation(line: 627, column: 17, scope: !640)
!2312 = !DILocation(line: 627, column: 17, scope: !641)
!2313 = !DILocation(line: 628, column: 17, scope: !639)
!2314 = !DILocation(line: 628, column: 22, scope: !2315)
!2315 = !DILexicalBlockFile(scope: !638, file: !385, discriminator: 1)
!2316 = !DILocation(line: 628, column: 32, scope: !638)
!2317 = !DILocation(line: 628, column: 62, scope: !638)
!2318 = !DILocation(line: 628, column: 79, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !638, file: !385, line: 628, column: 76)
!2320 = !DILocation(line: 628, column: 96, scope: !2319)
!2321 = !DILocation(line: 628, column: 76, scope: !2319)
!2322 = !DILocation(line: 628, column: 106, scope: !2319)
!2323 = !DILocation(line: 628, column: 76, scope: !638)
!2324 = !DILocation(line: 628, column: 76, scope: !2325)
!2325 = !DILexicalBlockFile(scope: !638, file: !385, discriminator: 2)
!2326 = !DILocation(line: 628, column: 137, scope: !2327)
!2327 = !DILexicalBlockFile(scope: !2319, file: !385, discriminator: 3)
!2328 = !DILocation(line: 628, column: 155, scope: !2319)
!2329 = !DILocation(line: 628, column: 165, scope: !2319)
!2330 = !DILocation(line: 628, column: 190, scope: !2319)
!2331 = !DILocation(line: 628, column: 121, scope: !2319)
!2332 = !DILocation(line: 628, column: 209, scope: !2333)
!2333 = !DILexicalBlockFile(scope: !639, file: !385, discriminator: 4)
!2334 = !DILocation(line: 628, column: 209, scope: !638)
!2335 = !DILocation(line: 628, column: 209, scope: !2336)
!2336 = !DILexicalBlockFile(scope: !638, file: !385, discriminator: 5)
!2337 = !DILocation(line: 629, column: 17, scope: !639)
!2338 = !DILocation(line: 632, column: 17, scope: !640)
!2339 = !DILocation(line: 635, column: 27, scope: !646)
!2340 = !DILocation(line: 635, column: 35, scope: !646)
!2341 = !DILocation(line: 635, column: 13, scope: !646)
!2342 = !DILocation(line: 635, column: 41, scope: !646)
!2343 = !DILocation(line: 635, column: 13, scope: !636)
!2344 = !DILocation(line: 636, column: 13, scope: !645)
!2345 = !DILocation(line: 636, column: 18, scope: !2346)
!2346 = !DILexicalBlockFile(scope: !644, file: !385, discriminator: 1)
!2347 = !DILocation(line: 636, column: 28, scope: !644)
!2348 = !DILocation(line: 636, column: 58, scope: !644)
!2349 = !DILocation(line: 636, column: 73, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !644, file: !385, line: 636, column: 70)
!2351 = !DILocation(line: 636, column: 90, scope: !2350)
!2352 = !DILocation(line: 636, column: 70, scope: !2350)
!2353 = !DILocation(line: 636, column: 100, scope: !2350)
!2354 = !DILocation(line: 636, column: 70, scope: !644)
!2355 = !DILocation(line: 636, column: 70, scope: !2356)
!2356 = !DILexicalBlockFile(scope: !644, file: !385, discriminator: 2)
!2357 = !DILocation(line: 636, column: 131, scope: !2358)
!2358 = !DILexicalBlockFile(scope: !2350, file: !385, discriminator: 3)
!2359 = !DILocation(line: 636, column: 149, scope: !2350)
!2360 = !DILocation(line: 636, column: 159, scope: !2350)
!2361 = !DILocation(line: 636, column: 184, scope: !2350)
!2362 = !DILocation(line: 636, column: 115, scope: !2350)
!2363 = !DILocation(line: 636, column: 203, scope: !2364)
!2364 = !DILexicalBlockFile(scope: !645, file: !385, discriminator: 4)
!2365 = !DILocation(line: 636, column: 203, scope: !644)
!2366 = !DILocation(line: 636, column: 203, scope: !2367)
!2367 = !DILexicalBlockFile(scope: !644, file: !385, discriminator: 5)
!2368 = !DILocation(line: 637, column: 13, scope: !645)
!2369 = !DILocation(line: 637, column: 18, scope: !2370)
!2370 = !DILexicalBlockFile(scope: !648, file: !385, discriminator: 1)
!2371 = !DILocation(line: 637, column: 28, scope: !648)
!2372 = !DILocation(line: 637, column: 58, scope: !648)
!2373 = !DILocation(line: 637, column: 75, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !648, file: !385, line: 637, column: 72)
!2375 = !DILocation(line: 637, column: 92, scope: !2374)
!2376 = !DILocation(line: 637, column: 72, scope: !2374)
!2377 = !DILocation(line: 637, column: 102, scope: !2374)
!2378 = !DILocation(line: 637, column: 72, scope: !648)
!2379 = !DILocation(line: 637, column: 72, scope: !2380)
!2380 = !DILexicalBlockFile(scope: !648, file: !385, discriminator: 2)
!2381 = !DILocation(line: 637, column: 133, scope: !2382)
!2382 = !DILexicalBlockFile(scope: !2374, file: !385, discriminator: 3)
!2383 = !DILocation(line: 637, column: 151, scope: !2374)
!2384 = !DILocation(line: 637, column: 161, scope: !2374)
!2385 = !DILocation(line: 637, column: 186, scope: !2374)
!2386 = !DILocation(line: 637, column: 117, scope: !2374)
!2387 = !DILocation(line: 637, column: 205, scope: !2364)
!2388 = !DILocation(line: 637, column: 205, scope: !648)
!2389 = !DILocation(line: 637, column: 205, scope: !2390)
!2390 = !DILexicalBlockFile(scope: !648, file: !385, discriminator: 5)
!2391 = !DILocation(line: 638, column: 13, scope: !645)
!2392 = !DILocation(line: 640, column: 33, scope: !636)
!2393 = !DILocation(line: 640, column: 19, scope: !636)
!2394 = !DILocation(line: 640, column: 16, scope: !636)
!2395 = !DILocation(line: 641, column: 9, scope: !636)
!2396 = !DILocation(line: 641, column: 14, scope: !2397)
!2397 = !DILexicalBlockFile(scope: !650, file: !385, discriminator: 1)
!2398 = !DILocation(line: 641, column: 24, scope: !650)
!2399 = !DILocation(line: 641, column: 54, scope: !650)
!2400 = !DILocation(line: 641, column: 69, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !650, file: !385, line: 641, column: 66)
!2402 = !DILocation(line: 641, column: 86, scope: !2401)
!2403 = !DILocation(line: 641, column: 66, scope: !2401)
!2404 = !DILocation(line: 641, column: 96, scope: !2401)
!2405 = !DILocation(line: 641, column: 66, scope: !650)
!2406 = !DILocation(line: 641, column: 66, scope: !2407)
!2407 = !DILexicalBlockFile(scope: !650, file: !385, discriminator: 2)
!2408 = !DILocation(line: 641, column: 127, scope: !2409)
!2409 = !DILexicalBlockFile(scope: !2401, file: !385, discriminator: 3)
!2410 = !DILocation(line: 641, column: 145, scope: !2401)
!2411 = !DILocation(line: 641, column: 155, scope: !2401)
!2412 = !DILocation(line: 641, column: 180, scope: !2401)
!2413 = !DILocation(line: 641, column: 111, scope: !2401)
!2414 = !DILocation(line: 641, column: 199, scope: !2415)
!2415 = !DILexicalBlockFile(scope: !636, file: !385, discriminator: 4)
!2416 = !DILocation(line: 641, column: 199, scope: !650)
!2417 = !DILocation(line: 641, column: 199, scope: !2418)
!2418 = !DILexicalBlockFile(scope: !650, file: !385, discriminator: 5)
!2419 = !DILocation(line: 643, column: 13, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !636, file: !385, line: 643, column: 13)
!2421 = !DILocation(line: 643, column: 22, scope: !2420)
!2422 = !DILocation(line: 643, column: 20, scope: !2420)
!2423 = !DILocation(line: 643, column: 13, scope: !636)
!2424 = !DILocation(line: 644, column: 13, scope: !2420)
!2425 = !DILocation(line: 645, column: 5, scope: !619)
!2426 = !DILocation(line: 645, column: 5, scope: !2303)
!2427 = !DILocation(line: 646, column: 12, scope: !619)
!2428 = !DILocation(line: 646, column: 5, scope: !619)
!2429 = !DILocation(line: 647, column: 1, scope: !619)
!2430 = !DILocation(line: 650, column: 29, scope: !651)
!2431 = !DILocation(line: 650, column: 45, scope: !651)
!2432 = !DILocation(line: 652, column: 5, scope: !651)
!2433 = !DILocation(line: 652, column: 15, scope: !651)
!2434 = !DILocation(line: 652, column: 23, scope: !651)
!2435 = !DILocation(line: 652, column: 30, scope: !651)
!2436 = !DILocation(line: 654, column: 34, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !651, file: !385, line: 654, column: 9)
!2438 = !DILocation(line: 654, column: 10, scope: !2437)
!2439 = !DILocation(line: 654, column: 9, scope: !651)
!2440 = !DILocation(line: 655, column: 9, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2437, file: !385, line: 654, column: 65)
!2442 = !DILocation(line: 658, column: 32, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !651, file: !385, line: 658, column: 9)
!2444 = !DILocation(line: 658, column: 9, scope: !2443)
!2445 = !DILocation(line: 658, column: 70, scope: !2443)
!2446 = !DILocation(line: 658, column: 9, scope: !651)
!2447 = !DILocation(line: 659, column: 9, scope: !2443)
!2448 = !DILocation(line: 661, column: 29, scope: !651)
!2449 = !DILocation(line: 661, column: 12, scope: !651)
!2450 = !DILocation(line: 661, column: 10, scope: !651)
!2451 = !DILocation(line: 662, column: 9, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !651, file: !385, line: 662, column: 9)
!2453 = !DILocation(line: 662, column: 14, scope: !2452)
!2454 = !DILocation(line: 662, column: 9, scope: !651)
!2455 = !DILocation(line: 663, column: 9, scope: !2452)
!2456 = !DILocation(line: 665, column: 5, scope: !651)
!2457 = !DILocation(line: 665, column: 5, scope: !2458)
!2458 = !DILexicalBlockFile(scope: !2459, file: !385, discriminator: 2)
!2459 = !DILexicalBlockFile(scope: !651, file: !385, discriminator: 1)
!2460 = !DILocation(line: 666, column: 9, scope: !659)
!2461 = !DILocation(line: 666, column: 19, scope: !659)
!2462 = !DILocation(line: 666, column: 38, scope: !659)
!2463 = !DILocation(line: 666, column: 26, scope: !659)
!2464 = !DILocation(line: 667, column: 13, scope: !665)
!2465 = !DILocation(line: 667, column: 18, scope: !665)
!2466 = !DILocation(line: 667, column: 13, scope: !659)
!2467 = !DILocation(line: 668, column: 17, scope: !663)
!2468 = !DILocation(line: 668, column: 17, scope: !664)
!2469 = !DILocation(line: 669, column: 17, scope: !662)
!2470 = !DILocation(line: 669, column: 22, scope: !2471)
!2471 = !DILexicalBlockFile(scope: !661, file: !385, discriminator: 1)
!2472 = !DILocation(line: 669, column: 32, scope: !661)
!2473 = !DILocation(line: 669, column: 62, scope: !661)
!2474 = !DILocation(line: 669, column: 77, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !661, file: !385, line: 669, column: 74)
!2476 = !DILocation(line: 669, column: 94, scope: !2475)
!2477 = !DILocation(line: 669, column: 74, scope: !2475)
!2478 = !DILocation(line: 669, column: 104, scope: !2475)
!2479 = !DILocation(line: 669, column: 74, scope: !661)
!2480 = !DILocation(line: 669, column: 74, scope: !2481)
!2481 = !DILexicalBlockFile(scope: !661, file: !385, discriminator: 2)
!2482 = !DILocation(line: 669, column: 135, scope: !2483)
!2483 = !DILexicalBlockFile(scope: !2475, file: !385, discriminator: 3)
!2484 = !DILocation(line: 669, column: 153, scope: !2475)
!2485 = !DILocation(line: 669, column: 163, scope: !2475)
!2486 = !DILocation(line: 669, column: 188, scope: !2475)
!2487 = !DILocation(line: 669, column: 119, scope: !2475)
!2488 = !DILocation(line: 669, column: 207, scope: !2489)
!2489 = !DILexicalBlockFile(scope: !662, file: !385, discriminator: 4)
!2490 = !DILocation(line: 669, column: 207, scope: !661)
!2491 = !DILocation(line: 669, column: 207, scope: !2492)
!2492 = !DILexicalBlockFile(scope: !661, file: !385, discriminator: 5)
!2493 = !DILocation(line: 670, column: 17, scope: !662)
!2494 = !DILocation(line: 673, column: 17, scope: !663)
!2495 = !DILocation(line: 676, column: 13, scope: !659)
!2496 = !DILocation(line: 677, column: 9, scope: !659)
!2497 = !DILocation(line: 678, column: 46, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !659, file: !385, line: 677, column: 12)
!2499 = !DILocation(line: 678, column: 52, scope: !2498)
!2500 = !DILocation(line: 678, column: 69, scope: !2498)
!2501 = !DILocation(line: 678, column: 19, scope: !2498)
!2502 = !DILocation(line: 678, column: 17, scope: !2498)
!2503 = !DILocation(line: 679, column: 9, scope: !2498)
!2504 = !DILocation(line: 679, column: 18, scope: !2505)
!2505 = !DILexicalBlockFile(scope: !659, file: !385, discriminator: 1)
!2506 = !DILocation(line: 679, column: 22, scope: !659)
!2507 = !DILocation(line: 679, column: 36, scope: !659)
!2508 = !DILocation(line: 679, column: 39, scope: !2509)
!2509 = !DILexicalBlockFile(scope: !659, file: !385, discriminator: 2)
!2510 = !DILocation(line: 679, column: 9, scope: !2511)
!2511 = !DILexicalBlockFile(scope: !2498, file: !385, discriminator: 3)
!2512 = !DILocation(line: 680, column: 9, scope: !659)
!2513 = !DILocation(line: 680, column: 14, scope: !2514)
!2514 = !DILexicalBlockFile(scope: !667, file: !385, discriminator: 1)
!2515 = !DILocation(line: 680, column: 24, scope: !667)
!2516 = !DILocation(line: 680, column: 54, scope: !667)
!2517 = !DILocation(line: 680, column: 69, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !667, file: !385, line: 680, column: 66)
!2519 = !DILocation(line: 680, column: 86, scope: !2518)
!2520 = !DILocation(line: 680, column: 66, scope: !2518)
!2521 = !DILocation(line: 680, column: 96, scope: !2518)
!2522 = !DILocation(line: 680, column: 66, scope: !667)
!2523 = !DILocation(line: 680, column: 66, scope: !2524)
!2524 = !DILexicalBlockFile(scope: !667, file: !385, discriminator: 2)
!2525 = !DILocation(line: 680, column: 127, scope: !2526)
!2526 = !DILexicalBlockFile(scope: !2518, file: !385, discriminator: 3)
!2527 = !DILocation(line: 680, column: 145, scope: !2518)
!2528 = !DILocation(line: 680, column: 155, scope: !2518)
!2529 = !DILocation(line: 680, column: 180, scope: !2518)
!2530 = !DILocation(line: 680, column: 111, scope: !2518)
!2531 = !DILocation(line: 680, column: 199, scope: !2532)
!2532 = !DILexicalBlockFile(scope: !659, file: !385, discriminator: 4)
!2533 = !DILocation(line: 680, column: 199, scope: !667)
!2534 = !DILocation(line: 680, column: 199, scope: !2535)
!2535 = !DILexicalBlockFile(scope: !667, file: !385, discriminator: 5)
!2536 = !DILocation(line: 681, column: 13, scope: !671)
!2537 = !DILocation(line: 681, column: 17, scope: !671)
!2538 = !DILocation(line: 681, column: 13, scope: !659)
!2539 = !DILocation(line: 682, column: 13, scope: !670)
!2540 = !DILocation(line: 682, column: 18, scope: !2541)
!2541 = !DILexicalBlockFile(scope: !669, file: !385, discriminator: 1)
!2542 = !DILocation(line: 682, column: 28, scope: !669)
!2543 = !DILocation(line: 682, column: 58, scope: !669)
!2544 = !DILocation(line: 682, column: 73, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !669, file: !385, line: 682, column: 70)
!2546 = !DILocation(line: 682, column: 90, scope: !2545)
!2547 = !DILocation(line: 682, column: 70, scope: !2545)
!2548 = !DILocation(line: 682, column: 100, scope: !2545)
!2549 = !DILocation(line: 682, column: 70, scope: !669)
!2550 = !DILocation(line: 682, column: 70, scope: !2551)
!2551 = !DILexicalBlockFile(scope: !669, file: !385, discriminator: 2)
!2552 = !DILocation(line: 682, column: 131, scope: !2553)
!2553 = !DILexicalBlockFile(scope: !2545, file: !385, discriminator: 3)
!2554 = !DILocation(line: 682, column: 149, scope: !2545)
!2555 = !DILocation(line: 682, column: 159, scope: !2545)
!2556 = !DILocation(line: 682, column: 184, scope: !2545)
!2557 = !DILocation(line: 682, column: 115, scope: !2545)
!2558 = !DILocation(line: 682, column: 203, scope: !2559)
!2559 = !DILexicalBlockFile(scope: !670, file: !385, discriminator: 4)
!2560 = !DILocation(line: 682, column: 203, scope: !669)
!2561 = !DILocation(line: 682, column: 203, scope: !2562)
!2562 = !DILexicalBlockFile(scope: !669, file: !385, discriminator: 5)
!2563 = !DILocation(line: 683, column: 13, scope: !670)
!2564 = !DILocation(line: 685, column: 9, scope: !659)
!2565 = !DILocation(line: 685, column: 14, scope: !2566)
!2566 = !DILexicalBlockFile(scope: !673, file: !385, discriminator: 1)
!2567 = !DILocation(line: 685, column: 24, scope: !673)
!2568 = !DILocation(line: 685, column: 54, scope: !673)
!2569 = !DILocation(line: 685, column: 68, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !673, file: !385, line: 685, column: 65)
!2571 = !DILocation(line: 685, column: 85, scope: !2570)
!2572 = !DILocation(line: 685, column: 65, scope: !2570)
!2573 = !DILocation(line: 685, column: 95, scope: !2570)
!2574 = !DILocation(line: 685, column: 65, scope: !673)
!2575 = !DILocation(line: 685, column: 65, scope: !2576)
!2576 = !DILexicalBlockFile(scope: !673, file: !385, discriminator: 2)
!2577 = !DILocation(line: 685, column: 126, scope: !2578)
!2578 = !DILexicalBlockFile(scope: !2570, file: !385, discriminator: 3)
!2579 = !DILocation(line: 685, column: 144, scope: !2570)
!2580 = !DILocation(line: 685, column: 154, scope: !2570)
!2581 = !DILocation(line: 685, column: 179, scope: !2570)
!2582 = !DILocation(line: 685, column: 110, scope: !2570)
!2583 = !DILocation(line: 685, column: 198, scope: !2532)
!2584 = !DILocation(line: 685, column: 198, scope: !673)
!2585 = !DILocation(line: 685, column: 198, scope: !2586)
!2586 = !DILexicalBlockFile(scope: !673, file: !385, discriminator: 5)
!2587 = !DILocation(line: 686, column: 5, scope: !651)
!2588 = !DILocation(line: 686, column: 5, scope: !2459)
!2589 = !DILocation(line: 687, column: 5, scope: !651)
!2590 = !DILocation(line: 687, column: 10, scope: !2591)
!2591 = !DILexicalBlockFile(scope: !675, file: !385, discriminator: 1)
!2592 = !DILocation(line: 687, column: 20, scope: !675)
!2593 = !DILocation(line: 687, column: 50, scope: !675)
!2594 = !DILocation(line: 687, column: 65, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !675, file: !385, line: 687, column: 62)
!2596 = !DILocation(line: 687, column: 82, scope: !2595)
!2597 = !DILocation(line: 687, column: 62, scope: !2595)
!2598 = !DILocation(line: 687, column: 92, scope: !2595)
!2599 = !DILocation(line: 687, column: 62, scope: !675)
!2600 = !DILocation(line: 687, column: 62, scope: !2601)
!2601 = !DILexicalBlockFile(scope: !675, file: !385, discriminator: 2)
!2602 = !DILocation(line: 687, column: 123, scope: !2603)
!2603 = !DILexicalBlockFile(scope: !2595, file: !385, discriminator: 3)
!2604 = !DILocation(line: 687, column: 141, scope: !2595)
!2605 = !DILocation(line: 687, column: 151, scope: !2595)
!2606 = !DILocation(line: 687, column: 176, scope: !2595)
!2607 = !DILocation(line: 687, column: 107, scope: !2595)
!2608 = !DILocation(line: 687, column: 195, scope: !2609)
!2609 = !DILexicalBlockFile(scope: !651, file: !385, discriminator: 4)
!2610 = !DILocation(line: 687, column: 195, scope: !675)
!2611 = !DILocation(line: 687, column: 195, scope: !2612)
!2612 = !DILexicalBlockFile(scope: !675, file: !385, discriminator: 5)
!2613 = !DILocation(line: 688, column: 58, scope: !651)
!2614 = !DILocation(line: 688, column: 5, scope: !651)
!2615 = !DILocation(line: 689, column: 1, scope: !651)
!2616 = !DILocation(line: 161, column: 29, scope: !676)
!2617 = !DILocation(line: 161, column: 41, scope: !676)
!2618 = !DILocation(line: 163, column: 48, scope: !676)
!2619 = !DILocation(line: 163, column: 28, scope: !676)
!2620 = !DILocation(line: 163, column: 12, scope: !676)
!2621 = !DILocation(line: 163, column: 5, scope: !676)
!2622 = !DILocation(line: 799, column: 26, scope: !697)
!2623 = !DILocation(line: 799, column: 42, scope: !697)
!2624 = !DILocation(line: 801, column: 5, scope: !697)
!2625 = !DILocation(line: 801, column: 16, scope: !697)
!2626 = !DILocation(line: 802, column: 5, scope: !697)
!2627 = !DILocation(line: 802, column: 15, scope: !697)
!2628 = !DILocation(line: 802, column: 19, scope: !697)
!2629 = !DILocation(line: 804, column: 34, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !697, file: !385, line: 804, column: 9)
!2631 = !DILocation(line: 804, column: 10, scope: !2630)
!2632 = !DILocation(line: 804, column: 9, scope: !697)
!2633 = !DILocation(line: 805, column: 9, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2630, file: !385, line: 804, column: 56)
!2635 = !DILocation(line: 808, column: 9, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !697, file: !385, line: 808, column: 9)
!2637 = !DILocation(line: 808, column: 11, scope: !2636)
!2638 = !DILocation(line: 808, column: 9, scope: !697)
!2639 = !DILocation(line: 811, column: 45, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2636, file: !385, line: 808, column: 16)
!2641 = !DILocation(line: 811, column: 16, scope: !2640)
!2642 = !DILocation(line: 811, column: 9, scope: !2640)
!2643 = !DILocation(line: 816, column: 51, scope: !697)
!2644 = !DILocation(line: 816, column: 9, scope: !697)
!2645 = !DILocation(line: 816, column: 7, scope: !697)
!2646 = !DILocation(line: 817, column: 9, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !697, file: !385, line: 817, column: 9)
!2648 = !DILocation(line: 817, column: 11, scope: !2647)
!2649 = !DILocation(line: 817, column: 9, scope: !697)
!2650 = !DILocation(line: 818, column: 9, scope: !2647)
!2651 = !DILocation(line: 820, column: 38, scope: !697)
!2652 = !DILocation(line: 820, column: 44, scope: !697)
!2653 = !DILocation(line: 820, column: 64, scope: !697)
!2654 = !DILocation(line: 820, column: 11, scope: !697)
!2655 = !DILocation(line: 820, column: 9, scope: !697)
!2656 = !DILocation(line: 821, column: 9, scope: !707)
!2657 = !DILocation(line: 821, column: 13, scope: !707)
!2658 = !DILocation(line: 821, column: 27, scope: !707)
!2659 = !DILocation(line: 821, column: 30, scope: !2660)
!2660 = !DILexicalBlockFile(scope: !707, file: !385, discriminator: 1)
!2661 = !DILocation(line: 821, column: 34, scope: !707)
!2662 = !DILocation(line: 821, column: 9, scope: !697)
!2663 = !DILocation(line: 822, column: 9, scope: !706)
!2664 = !DILocation(line: 822, column: 14, scope: !2665)
!2665 = !DILexicalBlockFile(scope: !705, file: !385, discriminator: 1)
!2666 = !DILocation(line: 822, column: 24, scope: !705)
!2667 = !DILocation(line: 822, column: 54, scope: !705)
!2668 = !DILocation(line: 822, column: 66, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !705, file: !385, line: 822, column: 63)
!2670 = !DILocation(line: 822, column: 83, scope: !2669)
!2671 = !DILocation(line: 822, column: 63, scope: !2669)
!2672 = !DILocation(line: 822, column: 93, scope: !2669)
!2673 = !DILocation(line: 822, column: 63, scope: !705)
!2674 = !DILocation(line: 822, column: 63, scope: !2675)
!2675 = !DILexicalBlockFile(scope: !705, file: !385, discriminator: 2)
!2676 = !DILocation(line: 822, column: 124, scope: !2677)
!2677 = !DILexicalBlockFile(scope: !2669, file: !385, discriminator: 3)
!2678 = !DILocation(line: 822, column: 142, scope: !2669)
!2679 = !DILocation(line: 822, column: 152, scope: !2669)
!2680 = !DILocation(line: 822, column: 177, scope: !2669)
!2681 = !DILocation(line: 822, column: 108, scope: !2669)
!2682 = !DILocation(line: 822, column: 196, scope: !2683)
!2683 = !DILexicalBlockFile(scope: !706, file: !385, discriminator: 4)
!2684 = !DILocation(line: 822, column: 196, scope: !705)
!2685 = !DILocation(line: 822, column: 196, scope: !2686)
!2686 = !DILexicalBlockFile(scope: !705, file: !385, discriminator: 5)
!2687 = !DILocation(line: 823, column: 16, scope: !706)
!2688 = !DILocation(line: 823, column: 9, scope: !706)
!2689 = !DILocation(line: 826, column: 28, scope: !697)
!2690 = !DILocation(line: 826, column: 33, scope: !697)
!2691 = !DILocation(line: 826, column: 9, scope: !697)
!2692 = !DILocation(line: 826, column: 7, scope: !697)
!2693 = !DILocation(line: 827, column: 5, scope: !697)
!2694 = !DILocation(line: 827, column: 10, scope: !2695)
!2695 = !DILexicalBlockFile(scope: !709, file: !385, discriminator: 1)
!2696 = !DILocation(line: 827, column: 20, scope: !709)
!2697 = !DILocation(line: 827, column: 50, scope: !709)
!2698 = !DILocation(line: 827, column: 64, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !709, file: !385, line: 827, column: 61)
!2700 = !DILocation(line: 827, column: 81, scope: !2699)
!2701 = !DILocation(line: 827, column: 61, scope: !2699)
!2702 = !DILocation(line: 827, column: 91, scope: !2699)
!2703 = !DILocation(line: 827, column: 61, scope: !709)
!2704 = !DILocation(line: 827, column: 61, scope: !2705)
!2705 = !DILexicalBlockFile(scope: !709, file: !385, discriminator: 2)
!2706 = !DILocation(line: 827, column: 122, scope: !2707)
!2707 = !DILexicalBlockFile(scope: !2699, file: !385, discriminator: 3)
!2708 = !DILocation(line: 827, column: 140, scope: !2699)
!2709 = !DILocation(line: 827, column: 150, scope: !2699)
!2710 = !DILocation(line: 827, column: 175, scope: !2699)
!2711 = !DILocation(line: 827, column: 106, scope: !2699)
!2712 = !DILocation(line: 827, column: 194, scope: !2713)
!2713 = !DILexicalBlockFile(scope: !697, file: !385, discriminator: 4)
!2714 = !DILocation(line: 827, column: 194, scope: !709)
!2715 = !DILocation(line: 827, column: 194, scope: !2716)
!2716 = !DILexicalBlockFile(scope: !709, file: !385, discriminator: 5)
!2717 = !DILocation(line: 828, column: 9, scope: !713)
!2718 = !DILocation(line: 828, column: 11, scope: !713)
!2719 = !DILocation(line: 828, column: 17, scope: !713)
!2720 = !DILocation(line: 828, column: 20, scope: !2721)
!2721 = !DILexicalBlockFile(scope: !713, file: !385, discriminator: 1)
!2722 = !DILocation(line: 828, column: 9, scope: !697)
!2723 = !DILocation(line: 829, column: 9, scope: !712)
!2724 = !DILocation(line: 829, column: 14, scope: !2725)
!2725 = !DILexicalBlockFile(scope: !711, file: !385, discriminator: 1)
!2726 = !DILocation(line: 829, column: 24, scope: !711)
!2727 = !DILocation(line: 829, column: 54, scope: !711)
!2728 = !DILocation(line: 829, column: 66, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !711, file: !385, line: 829, column: 63)
!2730 = !DILocation(line: 829, column: 83, scope: !2729)
!2731 = !DILocation(line: 829, column: 63, scope: !2729)
!2732 = !DILocation(line: 829, column: 93, scope: !2729)
!2733 = !DILocation(line: 829, column: 63, scope: !711)
!2734 = !DILocation(line: 829, column: 63, scope: !2735)
!2735 = !DILexicalBlockFile(scope: !711, file: !385, discriminator: 2)
!2736 = !DILocation(line: 829, column: 124, scope: !2737)
!2737 = !DILexicalBlockFile(scope: !2729, file: !385, discriminator: 3)
!2738 = !DILocation(line: 829, column: 142, scope: !2729)
!2739 = !DILocation(line: 829, column: 152, scope: !2729)
!2740 = !DILocation(line: 829, column: 177, scope: !2729)
!2741 = !DILocation(line: 829, column: 108, scope: !2729)
!2742 = !DILocation(line: 829, column: 196, scope: !2743)
!2743 = !DILexicalBlockFile(scope: !712, file: !385, discriminator: 4)
!2744 = !DILocation(line: 829, column: 196, scope: !711)
!2745 = !DILocation(line: 829, column: 196, scope: !2746)
!2746 = !DILexicalBlockFile(scope: !711, file: !385, discriminator: 5)
!2747 = !DILocation(line: 830, column: 9, scope: !712)
!2748 = !DILocation(line: 833, column: 58, scope: !697)
!2749 = !DILocation(line: 833, column: 37, scope: !697)
!2750 = !DILocation(line: 833, column: 62, scope: !697)
!2751 = !DILocation(line: 833, column: 11, scope: !697)
!2752 = !DILocation(line: 833, column: 9, scope: !697)
!2753 = !DILocation(line: 834, column: 5, scope: !697)
!2754 = !DILocation(line: 834, column: 10, scope: !2755)
!2755 = !DILexicalBlockFile(scope: !715, file: !385, discriminator: 1)
!2756 = !DILocation(line: 834, column: 20, scope: !715)
!2757 = !DILocation(line: 834, column: 50, scope: !715)
!2758 = !DILocation(line: 834, column: 62, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !715, file: !385, line: 834, column: 59)
!2760 = !DILocation(line: 834, column: 79, scope: !2759)
!2761 = !DILocation(line: 834, column: 59, scope: !2759)
!2762 = !DILocation(line: 834, column: 89, scope: !2759)
!2763 = !DILocation(line: 834, column: 59, scope: !715)
!2764 = !DILocation(line: 834, column: 59, scope: !2765)
!2765 = !DILexicalBlockFile(scope: !715, file: !385, discriminator: 2)
!2766 = !DILocation(line: 834, column: 120, scope: !2767)
!2767 = !DILexicalBlockFile(scope: !2759, file: !385, discriminator: 3)
!2768 = !DILocation(line: 834, column: 138, scope: !2759)
!2769 = !DILocation(line: 834, column: 148, scope: !2759)
!2770 = !DILocation(line: 834, column: 173, scope: !2759)
!2771 = !DILocation(line: 834, column: 104, scope: !2759)
!2772 = !DILocation(line: 834, column: 192, scope: !2713)
!2773 = !DILocation(line: 834, column: 192, scope: !715)
!2774 = !DILocation(line: 834, column: 192, scope: !2775)
!2775 = !DILexicalBlockFile(scope: !715, file: !385, discriminator: 5)
!2776 = !DILocation(line: 835, column: 12, scope: !697)
!2777 = !DILocation(line: 835, column: 5, scope: !697)
!2778 = !DILocation(line: 836, column: 1, scope: !697)
!2779 = !DILocation(line: 843, column: 29, scope: !716)
!2780 = !DILocation(line: 843, column: 45, scope: !716)
!2781 = !DILocation(line: 845, column: 5, scope: !716)
!2782 = !DILocation(line: 845, column: 9, scope: !716)
!2783 = !DILocation(line: 846, column: 5, scope: !716)
!2784 = !DILocation(line: 846, column: 15, scope: !716)
!2785 = !DILocation(line: 846, column: 24, scope: !716)
!2786 = !DILocation(line: 847, column: 5, scope: !716)
!2787 = !DILocation(line: 847, column: 15, scope: !716)
!2788 = !DILocation(line: 849, column: 9, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !716, file: !385, line: 849, column: 9)
!2790 = !DILocation(line: 849, column: 16, scope: !2789)
!2791 = !DILocation(line: 849, column: 9, scope: !716)
!2792 = !DILocation(line: 850, column: 9, scope: !2789)
!2793 = !DILocation(line: 852, column: 5, scope: !716)
!2794 = !DILocation(line: 852, column: 5, scope: !2795)
!2795 = !DILexicalBlockFile(scope: !2796, file: !385, discriminator: 2)
!2796 = !DILexicalBlockFile(scope: !716, file: !385, discriminator: 1)
!2797 = !DILocation(line: 853, column: 9, scope: !724)
!2798 = !DILocation(line: 853, column: 19, scope: !724)
!2799 = !DILocation(line: 853, column: 55, scope: !724)
!2800 = !DILocation(line: 853, column: 26, scope: !724)
!2801 = !DILocation(line: 855, column: 14, scope: !728)
!2802 = !DILocation(line: 855, column: 13, scope: !724)
!2803 = !DILocation(line: 858, column: 17, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !727, file: !385, line: 858, column: 17)
!2805 = !DILocation(line: 858, column: 17, scope: !727)
!2806 = !DILocation(line: 859, column: 17, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2804, file: !385, line: 858, column: 37)
!2808 = !DILocation(line: 861, column: 13, scope: !727)
!2809 = !DILocation(line: 861, column: 18, scope: !2810)
!2810 = !DILexicalBlockFile(scope: !726, file: !385, discriminator: 1)
!2811 = !DILocation(line: 861, column: 28, scope: !726)
!2812 = !DILocation(line: 861, column: 58, scope: !726)
!2813 = !DILocation(line: 861, column: 75, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !726, file: !385, line: 861, column: 72)
!2815 = !DILocation(line: 861, column: 92, scope: !2814)
!2816 = !DILocation(line: 861, column: 72, scope: !2814)
!2817 = !DILocation(line: 861, column: 102, scope: !2814)
!2818 = !DILocation(line: 861, column: 72, scope: !726)
!2819 = !DILocation(line: 861, column: 72, scope: !2820)
!2820 = !DILexicalBlockFile(scope: !726, file: !385, discriminator: 2)
!2821 = !DILocation(line: 861, column: 133, scope: !2822)
!2822 = !DILexicalBlockFile(scope: !2814, file: !385, discriminator: 3)
!2823 = !DILocation(line: 861, column: 151, scope: !2814)
!2824 = !DILocation(line: 861, column: 161, scope: !2814)
!2825 = !DILocation(line: 861, column: 186, scope: !2814)
!2826 = !DILocation(line: 861, column: 117, scope: !2814)
!2827 = !DILocation(line: 861, column: 205, scope: !2828)
!2828 = !DILexicalBlockFile(scope: !727, file: !385, discriminator: 4)
!2829 = !DILocation(line: 861, column: 205, scope: !726)
!2830 = !DILocation(line: 861, column: 205, scope: !2831)
!2831 = !DILexicalBlockFile(scope: !726, file: !385, discriminator: 5)
!2832 = !DILocation(line: 862, column: 13, scope: !727)
!2833 = !DILocation(line: 864, column: 13, scope: !734)
!2834 = !DILocation(line: 864, column: 18, scope: !734)
!2835 = !DILocation(line: 864, column: 13, scope: !724)
!2836 = !DILocation(line: 865, column: 34, scope: !732)
!2837 = !DILocation(line: 865, column: 19, scope: !732)
!2838 = !DILocation(line: 865, column: 44, scope: !732)
!2839 = !DILocation(line: 865, column: 53, scope: !732)
!2840 = !DILocation(line: 865, column: 17, scope: !733)
!2841 = !DILocation(line: 866, column: 17, scope: !731)
!2842 = !DILocation(line: 866, column: 22, scope: !2843)
!2843 = !DILexicalBlockFile(scope: !730, file: !385, discriminator: 1)
!2844 = !DILocation(line: 866, column: 32, scope: !730)
!2845 = !DILocation(line: 866, column: 62, scope: !730)
!2846 = !DILocation(line: 866, column: 79, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !730, file: !385, line: 866, column: 76)
!2848 = !DILocation(line: 866, column: 96, scope: !2847)
!2849 = !DILocation(line: 866, column: 76, scope: !2847)
!2850 = !DILocation(line: 866, column: 106, scope: !2847)
!2851 = !DILocation(line: 866, column: 76, scope: !730)
!2852 = !DILocation(line: 866, column: 76, scope: !2853)
!2853 = !DILexicalBlockFile(scope: !730, file: !385, discriminator: 2)
!2854 = !DILocation(line: 866, column: 137, scope: !2855)
!2855 = !DILexicalBlockFile(scope: !2847, file: !385, discriminator: 3)
!2856 = !DILocation(line: 866, column: 155, scope: !2847)
!2857 = !DILocation(line: 866, column: 165, scope: !2847)
!2858 = !DILocation(line: 866, column: 190, scope: !2847)
!2859 = !DILocation(line: 866, column: 121, scope: !2847)
!2860 = !DILocation(line: 866, column: 209, scope: !2861)
!2861 = !DILexicalBlockFile(scope: !731, file: !385, discriminator: 4)
!2862 = !DILocation(line: 866, column: 209, scope: !730)
!2863 = !DILocation(line: 866, column: 209, scope: !2864)
!2864 = !DILexicalBlockFile(scope: !730, file: !385, discriminator: 5)
!2865 = !DILocation(line: 867, column: 24, scope: !731)
!2866 = !DILocation(line: 867, column: 17, scope: !731)
!2867 = !DILocation(line: 869, column: 13, scope: !733)
!2868 = !DILocation(line: 869, column: 18, scope: !2869)
!2869 = !DILexicalBlockFile(scope: !736, file: !385, discriminator: 1)
!2870 = !DILocation(line: 869, column: 28, scope: !736)
!2871 = !DILocation(line: 869, column: 58, scope: !736)
!2872 = !DILocation(line: 869, column: 73, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !736, file: !385, line: 869, column: 70)
!2874 = !DILocation(line: 869, column: 90, scope: !2873)
!2875 = !DILocation(line: 869, column: 70, scope: !2873)
!2876 = !DILocation(line: 869, column: 100, scope: !2873)
!2877 = !DILocation(line: 869, column: 70, scope: !736)
!2878 = !DILocation(line: 869, column: 70, scope: !2879)
!2879 = !DILexicalBlockFile(scope: !736, file: !385, discriminator: 2)
!2880 = !DILocation(line: 869, column: 131, scope: !2881)
!2881 = !DILexicalBlockFile(scope: !2873, file: !385, discriminator: 3)
!2882 = !DILocation(line: 869, column: 149, scope: !2873)
!2883 = !DILocation(line: 869, column: 159, scope: !2873)
!2884 = !DILocation(line: 869, column: 184, scope: !2873)
!2885 = !DILocation(line: 869, column: 115, scope: !2873)
!2886 = !DILocation(line: 869, column: 203, scope: !2887)
!2887 = !DILexicalBlockFile(scope: !733, file: !385, discriminator: 4)
!2888 = !DILocation(line: 869, column: 203, scope: !736)
!2889 = !DILocation(line: 869, column: 203, scope: !2890)
!2890 = !DILexicalBlockFile(scope: !736, file: !385, discriminator: 5)
!2891 = !DILocation(line: 870, column: 13, scope: !733)
!2892 = !DILocation(line: 872, column: 31, scope: !740)
!2893 = !DILocation(line: 872, column: 39, scope: !740)
!2894 = !DILocation(line: 872, column: 50, scope: !740)
!2895 = !DILocation(line: 872, column: 59, scope: !740)
!2896 = !DILocation(line: 872, column: 76, scope: !740)
!2897 = !DILocation(line: 872, column: 13, scope: !724)
!2898 = !DILocation(line: 873, column: 13, scope: !739)
!2899 = !DILocation(line: 873, column: 18, scope: !2900)
!2900 = !DILexicalBlockFile(scope: !738, file: !385, discriminator: 1)
!2901 = !DILocation(line: 873, column: 28, scope: !738)
!2902 = !DILocation(line: 873, column: 58, scope: !738)
!2903 = !DILocation(line: 873, column: 75, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !738, file: !385, line: 873, column: 72)
!2905 = !DILocation(line: 873, column: 92, scope: !2904)
!2906 = !DILocation(line: 873, column: 72, scope: !2904)
!2907 = !DILocation(line: 873, column: 102, scope: !2904)
!2908 = !DILocation(line: 873, column: 72, scope: !738)
!2909 = !DILocation(line: 873, column: 72, scope: !2910)
!2910 = !DILexicalBlockFile(scope: !738, file: !385, discriminator: 2)
!2911 = !DILocation(line: 873, column: 133, scope: !2912)
!2912 = !DILexicalBlockFile(scope: !2904, file: !385, discriminator: 3)
!2913 = !DILocation(line: 873, column: 151, scope: !2904)
!2914 = !DILocation(line: 873, column: 161, scope: !2904)
!2915 = !DILocation(line: 873, column: 186, scope: !2904)
!2916 = !DILocation(line: 873, column: 117, scope: !2904)
!2917 = !DILocation(line: 873, column: 205, scope: !2918)
!2918 = !DILexicalBlockFile(scope: !739, file: !385, discriminator: 4)
!2919 = !DILocation(line: 873, column: 205, scope: !738)
!2920 = !DILocation(line: 873, column: 205, scope: !2921)
!2921 = !DILexicalBlockFile(scope: !738, file: !385, discriminator: 5)
!2922 = !DILocation(line: 874, column: 13, scope: !739)
!2923 = !DILocation(line: 874, column: 18, scope: !2924)
!2924 = !DILexicalBlockFile(scope: !742, file: !385, discriminator: 1)
!2925 = !DILocation(line: 874, column: 28, scope: !742)
!2926 = !DILocation(line: 874, column: 58, scope: !742)
!2927 = !DILocation(line: 874, column: 73, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !742, file: !385, line: 874, column: 70)
!2929 = !DILocation(line: 874, column: 90, scope: !2928)
!2930 = !DILocation(line: 874, column: 70, scope: !2928)
!2931 = !DILocation(line: 874, column: 100, scope: !2928)
!2932 = !DILocation(line: 874, column: 70, scope: !742)
!2933 = !DILocation(line: 874, column: 70, scope: !2934)
!2934 = !DILexicalBlockFile(scope: !742, file: !385, discriminator: 2)
!2935 = !DILocation(line: 874, column: 131, scope: !2936)
!2936 = !DILexicalBlockFile(scope: !2928, file: !385, discriminator: 3)
!2937 = !DILocation(line: 874, column: 149, scope: !2928)
!2938 = !DILocation(line: 874, column: 159, scope: !2928)
!2939 = !DILocation(line: 874, column: 184, scope: !2928)
!2940 = !DILocation(line: 874, column: 115, scope: !2928)
!2941 = !DILocation(line: 874, column: 203, scope: !2918)
!2942 = !DILocation(line: 874, column: 203, scope: !742)
!2943 = !DILocation(line: 874, column: 203, scope: !2944)
!2944 = !DILexicalBlockFile(scope: !742, file: !385, discriminator: 5)
!2945 = !DILocation(line: 875, column: 29, scope: !739)
!2946 = !DILocation(line: 875, column: 13, scope: !739)
!2947 = !DILocation(line: 876, column: 13, scope: !739)
!2948 = !DILocation(line: 878, column: 44, scope: !746)
!2949 = !DILocation(line: 878, column: 29, scope: !746)
!2950 = !DILocation(line: 878, column: 52, scope: !746)
!2951 = !DILocation(line: 878, column: 62, scope: !746)
!2952 = !DILocation(line: 878, column: 13, scope: !724)
!2953 = !DILocation(line: 880, column: 13, scope: !745)
!2954 = !DILocation(line: 880, column: 18, scope: !2955)
!2955 = !DILexicalBlockFile(scope: !744, file: !385, discriminator: 1)
!2956 = !DILocation(line: 880, column: 28, scope: !744)
!2957 = !DILocation(line: 880, column: 58, scope: !744)
!2958 = !DILocation(line: 880, column: 73, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !744, file: !385, line: 880, column: 70)
!2960 = !DILocation(line: 880, column: 90, scope: !2959)
!2961 = !DILocation(line: 880, column: 70, scope: !2959)
!2962 = !DILocation(line: 880, column: 100, scope: !2959)
!2963 = !DILocation(line: 880, column: 70, scope: !744)
!2964 = !DILocation(line: 880, column: 70, scope: !2965)
!2965 = !DILexicalBlockFile(scope: !744, file: !385, discriminator: 2)
!2966 = !DILocation(line: 880, column: 131, scope: !2967)
!2967 = !DILexicalBlockFile(scope: !2959, file: !385, discriminator: 3)
!2968 = !DILocation(line: 880, column: 149, scope: !2959)
!2969 = !DILocation(line: 880, column: 159, scope: !2959)
!2970 = !DILocation(line: 880, column: 184, scope: !2959)
!2971 = !DILocation(line: 880, column: 115, scope: !2959)
!2972 = !DILocation(line: 880, column: 203, scope: !2973)
!2973 = !DILexicalBlockFile(scope: !745, file: !385, discriminator: 4)
!2974 = !DILocation(line: 880, column: 203, scope: !744)
!2975 = !DILocation(line: 880, column: 203, scope: !2976)
!2976 = !DILexicalBlockFile(scope: !744, file: !385, discriminator: 5)
!2977 = !DILocation(line: 881, column: 13, scope: !745)
!2978 = !DILocation(line: 883, column: 27, scope: !724)
!2979 = !DILocation(line: 883, column: 35, scope: !724)
!2980 = !DILocation(line: 883, column: 13, scope: !724)
!2981 = !DILocation(line: 883, column: 11, scope: !724)
!2982 = !DILocation(line: 884, column: 9, scope: !724)
!2983 = !DILocation(line: 884, column: 14, scope: !2984)
!2984 = !DILexicalBlockFile(scope: !748, file: !385, discriminator: 1)
!2985 = !DILocation(line: 884, column: 24, scope: !748)
!2986 = !DILocation(line: 884, column: 54, scope: !748)
!2987 = !DILocation(line: 884, column: 69, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !748, file: !385, line: 884, column: 66)
!2989 = !DILocation(line: 884, column: 86, scope: !2988)
!2990 = !DILocation(line: 884, column: 66, scope: !2988)
!2991 = !DILocation(line: 884, column: 96, scope: !2988)
!2992 = !DILocation(line: 884, column: 66, scope: !748)
!2993 = !DILocation(line: 884, column: 66, scope: !2994)
!2994 = !DILexicalBlockFile(scope: !748, file: !385, discriminator: 2)
!2995 = !DILocation(line: 884, column: 127, scope: !2996)
!2996 = !DILexicalBlockFile(scope: !2988, file: !385, discriminator: 3)
!2997 = !DILocation(line: 884, column: 145, scope: !2988)
!2998 = !DILocation(line: 884, column: 155, scope: !2988)
!2999 = !DILocation(line: 884, column: 180, scope: !2988)
!3000 = !DILocation(line: 884, column: 111, scope: !2988)
!3001 = !DILocation(line: 884, column: 199, scope: !3002)
!3002 = !DILexicalBlockFile(scope: !724, file: !385, discriminator: 4)
!3003 = !DILocation(line: 884, column: 199, scope: !748)
!3004 = !DILocation(line: 884, column: 199, scope: !3005)
!3005 = !DILexicalBlockFile(scope: !748, file: !385, discriminator: 5)
!3006 = !DILocation(line: 885, column: 13, scope: !752)
!3007 = !DILocation(line: 885, column: 15, scope: !752)
!3008 = !DILocation(line: 885, column: 13, scope: !724)
!3009 = !DILocation(line: 886, column: 13, scope: !751)
!3010 = !DILocation(line: 886, column: 18, scope: !3011)
!3011 = !DILexicalBlockFile(scope: !750, file: !385, discriminator: 1)
!3012 = !DILocation(line: 886, column: 28, scope: !750)
!3013 = !DILocation(line: 886, column: 58, scope: !750)
!3014 = !DILocation(line: 886, column: 75, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !750, file: !385, line: 886, column: 72)
!3016 = !DILocation(line: 886, column: 92, scope: !3015)
!3017 = !DILocation(line: 886, column: 72, scope: !3015)
!3018 = !DILocation(line: 886, column: 102, scope: !3015)
!3019 = !DILocation(line: 886, column: 72, scope: !750)
!3020 = !DILocation(line: 886, column: 72, scope: !3021)
!3021 = !DILexicalBlockFile(scope: !750, file: !385, discriminator: 2)
!3022 = !DILocation(line: 886, column: 133, scope: !3023)
!3023 = !DILexicalBlockFile(scope: !3015, file: !385, discriminator: 3)
!3024 = !DILocation(line: 886, column: 151, scope: !3015)
!3025 = !DILocation(line: 886, column: 161, scope: !3015)
!3026 = !DILocation(line: 886, column: 186, scope: !3015)
!3027 = !DILocation(line: 886, column: 117, scope: !3015)
!3028 = !DILocation(line: 886, column: 205, scope: !3029)
!3029 = !DILexicalBlockFile(scope: !751, file: !385, discriminator: 4)
!3030 = !DILocation(line: 886, column: 205, scope: !750)
!3031 = !DILocation(line: 886, column: 205, scope: !3032)
!3032 = !DILexicalBlockFile(scope: !750, file: !385, discriminator: 5)
!3033 = !DILocation(line: 887, column: 13, scope: !751)
!3034 = !DILocation(line: 889, column: 5, scope: !716)
!3035 = !DILocation(line: 889, column: 5, scope: !2796)
!3036 = !DILocation(line: 890, column: 28, scope: !716)
!3037 = !DILocation(line: 890, column: 47, scope: !716)
!3038 = !DILocation(line: 890, column: 14, scope: !716)
!3039 = !DILocation(line: 890, column: 12, scope: !716)
!3040 = !DILocation(line: 891, column: 5, scope: !716)
!3041 = !DILocation(line: 891, column: 10, scope: !3042)
!3042 = !DILexicalBlockFile(scope: !754, file: !385, discriminator: 1)
!3043 = !DILocation(line: 891, column: 20, scope: !754)
!3044 = !DILocation(line: 891, column: 50, scope: !754)
!3045 = !DILocation(line: 891, column: 67, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !754, file: !385, line: 891, column: 64)
!3047 = !DILocation(line: 891, column: 84, scope: !3046)
!3048 = !DILocation(line: 891, column: 64, scope: !3046)
!3049 = !DILocation(line: 891, column: 94, scope: !3046)
!3050 = !DILocation(line: 891, column: 64, scope: !754)
!3051 = !DILocation(line: 891, column: 64, scope: !3052)
!3052 = !DILexicalBlockFile(scope: !754, file: !385, discriminator: 2)
!3053 = !DILocation(line: 891, column: 125, scope: !3054)
!3054 = !DILexicalBlockFile(scope: !3046, file: !385, discriminator: 3)
!3055 = !DILocation(line: 891, column: 143, scope: !3046)
!3056 = !DILocation(line: 891, column: 153, scope: !3046)
!3057 = !DILocation(line: 891, column: 178, scope: !3046)
!3058 = !DILocation(line: 891, column: 109, scope: !3046)
!3059 = !DILocation(line: 891, column: 197, scope: !3060)
!3060 = !DILexicalBlockFile(scope: !716, file: !385, discriminator: 4)
!3061 = !DILocation(line: 891, column: 197, scope: !754)
!3062 = !DILocation(line: 891, column: 197, scope: !3063)
!3063 = !DILexicalBlockFile(scope: !754, file: !385, discriminator: 5)
!3064 = !DILocation(line: 892, column: 12, scope: !716)
!3065 = !DILocation(line: 892, column: 5, scope: !716)
!3066 = !DILocation(line: 893, column: 1, scope: !716)
