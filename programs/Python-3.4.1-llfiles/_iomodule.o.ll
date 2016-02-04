; ModuleID = '_iomodule.o.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyMemberDef = type { i8*, i32, i64, i32, i8* }
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct._PyIO_State = type { i32, %struct._object*, %struct._object* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }

@PyExc_OverflowError = external global %struct._object*, align 8
@.str = private unnamed_addr constant [49 x i8] c"cannot fit '%.200s' into an offset-sized integer\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@PyExc_TypeError = external global %struct._object*, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"integer argument expected, got '%.200s'\00", align 1
@_PyIO_Module = global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([1473 x i8], [1473 x i8]* @module_doc, i32 0, i32 0), i64 24, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @module_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @iomodule_traverse, i32 (%struct._object*)* @iomodule_clear, void (i8*)* bitcast (void (%struct._object*)* @iomodule_free to void (i8*)*) }, align 8
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"could not find io module state (interpreter shutdown?)\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"_bootlocale\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@module_doc = internal global [1473 x i8] c"The io module provides the Python interfaces to stream handling. The\0Abuiltin open function is defined in this module.\0A\0AAt the top of the I/O hierarchy is the abstract base class IOBase. It\0Adefines the basic interface to a stream. Note, however, that there is no\0Aseparation between reading and writing to streams; implementations are\0Aallowed to raise an IOError if they do not support a given operation.\0A\0AExtending IOBase is RawIOBase which deals simply with the reading and\0Awriting of raw bytes to a stream. FileIO subclasses RawIOBase to provide\0Aan interface to OS files.\0A\0ABufferedIOBase deals with buffering on a raw byte stream (RawIOBase). Its\0Asubclasses, BufferedWriter, BufferedReader, and BufferedRWPair buffer\0Astreams that are readable, writable, and both respectively.\0ABufferedRandom provides a buffered interface to random access\0Astreams. BytesIO is a simple stream of in-memory bytes.\0A\0AAnother IOBase subclass, TextIOBase, deals with the encoding and decoding\0Aof streams into text. TextIOWrapper, which extends it, is a buffered text\0Ainterface to a buffered raw stream (`BufferedIOBase`). Finally, StringIO\0Ais a in-memory stream for text.\0A\0AArgument names are not part of the specification, and only the arguments\0Aof open() are intended to be used as keyword arguments.\0A\0Adata:\0A\0ADEFAULT_BUFFER_SIZE\0A\0A   An int containing the default buffer size used by the module's buffered\0A   I/O classes. open() uses the file's blksize (as obtained by os.stat) if\0A   possible.\0A\00", align 16
@module_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @io_open to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([6355 x i8], [6355 x i8]* @open_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.5 = private unnamed_addr constant [20 x i8] c"DEFAULT_BUFFER_SIZE\00", align 1
@PyType_Type = external global %struct._typeobject, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"s(OO){}\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"UnsupportedOperation\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@PyExc_IOError = external global %struct._object*, align 8
@PyExc_BlockingIOError = external global %struct._object*, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"BlockingIOError\00", align 1
@PyIOBase_Type = external global %struct._typeobject, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"_IOBase\00", align 1
@PyRawIOBase_Type = external global %struct._typeobject, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"_RawIOBase\00", align 1
@PyBufferedIOBase_Type = external global %struct._typeobject, align 8
@.str.11 = private unnamed_addr constant [16 x i8] c"_BufferedIOBase\00", align 1
@PyTextIOBase_Type = external global %struct._typeobject, align 8
@.str.12 = private unnamed_addr constant [12 x i8] c"_TextIOBase\00", align 1
@PyFileIO_Type = external global %struct._typeobject, align 8
@.str.13 = private unnamed_addr constant [7 x i8] c"FileIO\00", align 1
@PyBytesIO_Type = external global %struct._typeobject, align 8
@.str.14 = private unnamed_addr constant [8 x i8] c"BytesIO\00", align 1
@_PyBytesIOBuffer_Type = external global %struct._typeobject, align 8
@PyStringIO_Type = external global %struct._typeobject, align 8
@.str.15 = private unnamed_addr constant [9 x i8] c"StringIO\00", align 1
@PyBufferedReader_Type = external global %struct._typeobject, align 8
@.str.16 = private unnamed_addr constant [15 x i8] c"BufferedReader\00", align 1
@PyBufferedWriter_Type = external global %struct._typeobject, align 8
@.str.17 = private unnamed_addr constant [15 x i8] c"BufferedWriter\00", align 1
@PyBufferedRWPair_Type = external global %struct._typeobject, align 8
@.str.18 = private unnamed_addr constant [15 x i8] c"BufferedRWPair\00", align 1
@PyBufferedRandom_Type = external global %struct._typeobject, align 8
@.str.19 = private unnamed_addr constant [15 x i8] c"BufferedRandom\00", align 1
@PyTextIOWrapper_Type = external global %struct._typeobject, align 8
@.str.20 = private unnamed_addr constant [14 x i8] c"TextIOWrapper\00", align 1
@PyIncrementalNewlineDecoder_Type = external global %struct._typeobject, align 8
@.str.21 = private unnamed_addr constant [26 x i8] c"IncrementalNewlineDecoder\00", align 1
@_PyIO_str_close = common global %struct._object* null, align 8
@.str.22 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@_PyIO_str_closed = common global %struct._object* null, align 8
@.str.23 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@_PyIO_str_decode = common global %struct._object* null, align 8
@.str.24 = private unnamed_addr constant [7 x i8] c"decode\00", align 1
@_PyIO_str_encode = common global %struct._object* null, align 8
@.str.25 = private unnamed_addr constant [7 x i8] c"encode\00", align 1
@_PyIO_str_fileno = common global %struct._object* null, align 8
@.str.26 = private unnamed_addr constant [7 x i8] c"fileno\00", align 1
@_PyIO_str_flush = common global %struct._object* null, align 8
@.str.27 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@_PyIO_str_getstate = common global %struct._object* null, align 8
@.str.28 = private unnamed_addr constant [9 x i8] c"getstate\00", align 1
@_PyIO_str_isatty = common global %struct._object* null, align 8
@.str.29 = private unnamed_addr constant [7 x i8] c"isatty\00", align 1
@_PyIO_str_newlines = common global %struct._object* null, align 8
@.str.30 = private unnamed_addr constant [9 x i8] c"newlines\00", align 1
@_PyIO_str_read = common global %struct._object* null, align 8
@.str.31 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@_PyIO_str_read1 = common global %struct._object* null, align 8
@.str.32 = private unnamed_addr constant [6 x i8] c"read1\00", align 1
@_PyIO_str_readable = common global %struct._object* null, align 8
@.str.33 = private unnamed_addr constant [9 x i8] c"readable\00", align 1
@_PyIO_str_readall = common global %struct._object* null, align 8
@.str.34 = private unnamed_addr constant [8 x i8] c"readall\00", align 1
@_PyIO_str_readinto = common global %struct._object* null, align 8
@.str.35 = private unnamed_addr constant [9 x i8] c"readinto\00", align 1
@_PyIO_str_readline = common global %struct._object* null, align 8
@.str.36 = private unnamed_addr constant [9 x i8] c"readline\00", align 1
@_PyIO_str_reset = common global %struct._object* null, align 8
@.str.37 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@_PyIO_str_seek = common global %struct._object* null, align 8
@.str.38 = private unnamed_addr constant [5 x i8] c"seek\00", align 1
@_PyIO_str_seekable = common global %struct._object* null, align 8
@.str.39 = private unnamed_addr constant [9 x i8] c"seekable\00", align 1
@_PyIO_str_setstate = common global %struct._object* null, align 8
@.str.40 = private unnamed_addr constant [9 x i8] c"setstate\00", align 1
@_PyIO_str_tell = common global %struct._object* null, align 8
@.str.41 = private unnamed_addr constant [5 x i8] c"tell\00", align 1
@_PyIO_str_truncate = common global %struct._object* null, align 8
@.str.42 = private unnamed_addr constant [9 x i8] c"truncate\00", align 1
@_PyIO_str_write = common global %struct._object* null, align 8
@.str.43 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@_PyIO_str_writable = common global %struct._object* null, align 8
@.str.44 = private unnamed_addr constant [9 x i8] c"writable\00", align 1
@_PyIO_str_nl = common global %struct._object* null, align 8
@.str.45 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_PyIO_empty_str = common global %struct._object* null, align 8
@_PyIO_empty_bytes = common global %struct._object* null, align 8
@_PyIO_zero = common global %struct._object* null, align 8
@.str.46 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@open_doc = internal global [6355 x i8] c"open(file, mode='r', buffering=-1, encoding=None,\0A     errors=None, newline=None, closefd=True, opener=None) -> file object\0A\0AOpen file and return a stream.  Raise IOError upon failure.\0A\0Afile is either a text or byte string giving the name (and the path\0Aif the file isn't in the current working directory) of the file to\0Abe opened or an integer file descriptor of the file to be\0Awrapped. (If a file descriptor is given, it is closed when the\0Areturned I/O object is closed, unless closefd is set to False.)\0A\0Amode is an optional string that specifies the mode in which the file\0Ais opened. It defaults to 'r' which means open for reading in text\0Amode.  Other common values are 'w' for writing (truncating the file if\0Ait already exists), 'x' for creating and writing to a new file, and\0A'a' for appending (which on some Unix systems, means that all writes\0Aappend to the end of the file regardless of the current seek position).\0AIn text mode, if encoding is not specified the encoding used is platform\0Adependent: locale.getpreferredencoding(False) is called to get the\0Acurrent locale encoding. (For reading and writing raw bytes use binary\0Amode and leave encoding unspecified.) The available modes are:\0A\0A========= ===============================================================\0ACharacter Meaning\0A--------- ---------------------------------------------------------------\0A'r'       open for reading (default)\0A'w'       open for writing, truncating the file first\0A'x'       create a new file and open it for writing\0A'a'       open for writing, appending to the end of the file if it exists\0A'b'       binary mode\0A't'       text mode (default)\0A'+'       open a disk file for updating (reading and writing)\0A'U'       universal newline mode (deprecated)\0A========= ===============================================================\0A\0AThe default mode is 'rt' (open for reading text). For binary random\0Aaccess, the mode 'w+b' opens and truncates the file to 0 bytes, while\0A'r+b' opens the file without truncation. The 'x' mode implies 'w' and\0Araises an `FileExistsError` if the file already exists.\0A\0APython distinguishes between files opened in binary and text modes,\0Aeven when the underlying operating system doesn't. Files opened in\0Abinary mode (appending 'b' to the mode argument) return contents as\0Abytes objects without any decoding. In text mode (the default, or when\0A't' is appended to the mode argument), the contents of the file are\0Areturned as strings, the bytes having been first decoded using a\0Aplatform-dependent encoding or using the specified encoding if given.\0A\0A'U' mode is deprecated and will raise an exception in future versions\0Aof Python.  It has no effect in Python 3.  Use newline to control\0Auniversal newlines mode.\0A\0Abuffering is an optional integer used to set the buffering policy.\0APass 0 to switch buffering off (only allowed in binary mode), 1 to select\0Aline buffering (only usable in text mode), and an integer > 1 to indicate\0Athe size of a fixed-size chunk buffer.  When no buffering argument is\0Agiven, the default buffering policy works as follows:\0A\0A* Binary files are buffered in fixed-size chunks; the size of the buffer\0A  is chosen using a heuristic trying to determine the underlying device's\0A  \22block size\22 and falling back on `io.DEFAULT_BUFFER_SIZE`.\0A  On many systems, the buffer will typically be 4096 or 8192 bytes long.\0A\0A* \22Interactive\22 text files (files for which isatty() returns True)\0A  use line buffering.  Other text files use the policy described above\0A  for binary files.\0A\0Aencoding is the name of the encoding used to decode or encode the\0Afile. This should only be used in text mode. The default encoding is\0Aplatform dependent, but any encoding supported by Python can be\0Apassed.  See the codecs module for the list of supported encodings.\0A\0Aerrors is an optional string that specifies how encoding errors are to\0Abe handled---this argument should not be used in binary mode. Pass\0A'strict' to raise a ValueError exception if there is an encoding error\0A(the default of None has the same effect), or pass 'ignore' to ignore\0Aerrors. (Note that ignoring encoding errors can lead to data loss.)\0ASee the documentation for codecs.register or run 'help(codecs.Codec)'\0Afor a list of the permitted encoding error strings.\0A\0Anewline controls how universal newlines works (it only applies to text\0Amode). It can be None, '', '\5Cn', '\5Cr', and '\5Cr\5Cn'.  It works as\0Afollows:\0A\0A* On input, if newline is None, universal newlines mode is\0A  enabled. Lines in the input can end in '\5Cn', '\5Cr', or '\5Cr\5Cn', and\0A  these are translated into '\5Cn' before being returned to the\0A  caller. If it is '', universal newline mode is enabled, but line\0A  endings are returned to the caller untranslated. If it has any of\0A  the other legal values, input lines are only terminated by the given\0A  string, and the line ending is returned to the caller untranslated.\0A\0A* On output, if newline is None, any '\5Cn' characters written are\0A  translated to the system default line separator, os.linesep. If\0A  newline is '' or '\5Cn', no translation takes place. If newline is any\0A  of the other legal values, any '\5Cn' characters written are translated\0A  to the given string.\0A\0AIf closefd is False, the underlying file descriptor will be kept open\0Awhen the file is closed. This does not work when a file name is given\0Aand must be True in that case.\0A\0AA custom opener can be used by passing a callable as *opener*. The\0Aunderlying file descriptor for the file object is then obtained by\0Acalling *opener* with (*file*, *flags*). *opener* must return an open\0Afile descriptor (passing os.open as *opener* results in functionality\0Asimilar to passing None).\0A\0Aopen() returns a file object whose type depends on the mode, and\0Athrough which the standard file operations such as reading and writing\0Aare performed. When open() is used to open a file in a text mode ('w',\0A'r', 'wt', 'rt', etc.), it returns a TextIOWrapper. When used to open\0Aa file in a binary mode, the returned class varies: in read binary\0Amode, it returns a BufferedReader; in write binary and append binary\0Amodes, it returns a BufferedWriter, and in read/write mode, it returns\0Aa BufferedRandom.\0A\0AIt is also possible to use a string or bytearray as a file for both\0Areading and writing. For strings StringIO can be used like a file\0Aopened in a text mode, and for bytes a BytesIO can be used like a file\0Aopened in a binary mode.\0A\00", align 16
@.str.47 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"buffering\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"errors\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"newline\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"closefd\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"opener\00", align 1
@io_open.kwlist = private unnamed_addr constant [9 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i8* null], align 16
@.str.55 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@io_open.PyId_isatty = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), %struct._object* null }, align 8
@io_open.PyId_fileno = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), %struct._object* null }, align 8
@io_open.PyId_mode = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), %struct._object* null }, align 8
@.str.56 = private unnamed_addr constant [15 x i8] c"O|sizzziO:open\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"invalid file: %R\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"invalid mode: '%s'\00", align 1
@.str.59 = private unnamed_addr constant [37 x i8] c"can't use U and writing mode at once\00", align 1
@PyExc_DeprecationWarning = external global %struct._object*, align 8
@.str.60 = private unnamed_addr constant [23 x i8] c"'U' mode is deprecated\00", align 1
@.str.61 = private unnamed_addr constant [40 x i8] c"can't have text and binary mode at once\00", align 1
@.str.62 = private unnamed_addr constant [55 x i8] c"must have exactly one of create/read/write/append mode\00", align 1
@.str.63 = private unnamed_addr constant [46 x i8] c"binary mode doesn't take an encoding argument\00", align 1
@.str.64 = private unnamed_addr constant [44 x i8] c"binary mode doesn't take an errors argument\00", align 1
@.str.65 = private unnamed_addr constant [44 x i8] c"binary mode doesn't take a newline argument\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"OsiO\00", align 1
@.str.67 = private unnamed_addr constant [23 x i8] c"invalid buffering size\00", align 1
@.str.68 = private unnamed_addr constant [31 x i8] c"can't have unbuffered text I/O\00", align 1
@.str.69 = private unnamed_addr constant [19 x i8] c"unknown mode: '%s'\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"Oi\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"Osssi\00", align 1

; Function Attrs: nounwind uwtable
define i64 @PyNumber_AsOff_t(%struct._object* %item, %struct._object* %err) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %item, i64 0, metadata !376, metadata !749), !dbg !750
  tail call void @llvm.dbg.value(metadata %struct._object* %err, i64 0, metadata !377, metadata !749), !dbg !751
  %call = tail call %struct._object* @PyNumber_Index(%struct._object* %item) #2, !dbg !752
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !380, metadata !749), !dbg !753
  %cmp = icmp eq %struct._object* %call, null, !dbg !754
  br i1 %cmp, label %cleanup, label %if.end, !dbg !756

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @PyLong_AsSsize_t(%struct._object* %call) #2, !dbg !757
  tail call void @llvm.dbg.value(metadata i64 %call1, i64 0, metadata !378, metadata !749), !dbg !758
  %cmp2 = icmp eq i64 %call1, -1, !dbg !759
  br i1 %cmp2, label %lor.lhs.false, label %do.body, !dbg !761

lor.lhs.false:                                    ; preds = %if.end
  %call3 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !762
  tail call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !379, metadata !749), !dbg !764
  %tobool = icmp eq %struct._object* %call3, null, !dbg !765
  br i1 %tobool, label %do.body, label %if.end.5, !dbg !766

if.end.5:                                         ; preds = %lor.lhs.false
  %0 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !767, !tbaa !769
  %call6 = tail call i32 @PyErr_GivenExceptionMatches(%struct._object* %call3, %struct._object* %0) #2, !dbg !773
  %tobool7 = icmp eq i32 %call6, 0, !dbg !773
  br i1 %tobool7, label %do.body, label %if.end.9, !dbg !774

if.end.9:                                         ; preds = %if.end.5
  tail call void @PyErr_Clear() #2, !dbg !775
  %tobool10 = icmp eq %struct._object* %err, null, !dbg !776
  br i1 %tobool10, label %if.then.11, label %if.else.16, !dbg !778

if.then.11:                                       ; preds = %if.end.9
  %call12 = tail call i32 @_PyLong_Sign(%struct._object* %call) #2, !dbg !779
  %cmp13 = icmp slt i32 %call12, 0, !dbg !782
  %. = select i1 %cmp13, i64 -9223372036854775808, i64 9223372036854775807, !dbg !783
  br label %do.body, !dbg !783

if.else.16:                                       ; preds = %if.end.9
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %item, i64 0, i32 1, !dbg !784
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !784, !tbaa !786
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 1, !dbg !789
  %2 = load i8*, i8** %tp_name, align 8, !dbg !789, !tbaa !790
  %call17 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %err, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %2) #2, !dbg !794
  br label %do.body

do.body:                                          ; preds = %if.then.11, %if.end.5, %lor.lhs.false, %if.end, %if.else.16
  %result.0 = phi i64 [ %call1, %if.end ], [ -1, %if.else.16 ], [ -1, %if.end.5 ], [ -1, %lor.lhs.false ], [ %., %if.then.11 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !381, metadata !749), !dbg !795
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !797
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !797, !tbaa !799
  %dec = add i64 %3, -1, !dbg !797
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !797, !tbaa !799
  %cmp19 = icmp eq i64 %dec, 0, !dbg !797
  br i1 %cmp19, label %if.else.21, label %cleanup, !dbg !800

if.else.21:                                       ; preds = %do.body
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !801
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8, !dbg !801, !tbaa !786
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 4, !dbg !801
  %5 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !801, !tbaa !803
  tail call void %5(%struct._object* %call) #2, !dbg !801
  br label %cleanup

cleanup:                                          ; preds = %if.else.21, %do.body, %entry
  %retval.0 = phi i64 [ -1, %entry ], [ %result.0, %do.body ], [ %result.0, %if.else.21 ]
  ret i64 %retval.0, !dbg !804
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare %struct._object* @PyNumber_Index(%struct._object*) #3

declare i64 @PyLong_AsSsize_t(%struct._object*) #3

declare %struct._object* @PyErr_Occurred() #3

declare i32 @PyErr_GivenExceptionMatches(%struct._object*, %struct._object*) #3

declare void @PyErr_Clear() #3

declare i32 @_PyLong_Sign(%struct._object*) #3

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @_PyIO_ConvertSsize_t(%struct._object* %obj, i8* nocapture %result) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !385, metadata !749), !dbg !805
  tail call void @llvm.dbg.value(metadata i8* %result, i64 0, metadata !386, metadata !749), !dbg !806
  %cmp = icmp eq %struct._object* %obj, @_Py_NoneStruct, !dbg !807
  br i1 %cmp, label %if.end.10, label %if.else, !dbg !809

if.else:                                          ; preds = %entry
  %call = tail call i32 @PyNumber_Check(%struct._object* %obj) #2, !dbg !810
  %tobool = icmp eq i32 %call, 0, !dbg !810
  br i1 %tobool, label %if.else.7, label %if.then.1, !dbg !812

if.then.1:                                        ; preds = %if.else
  %0 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !813, !tbaa !769
  %call2 = tail call i64 @PyNumber_AsSsize_t(%struct._object* %obj, %struct._object* %0) #2, !dbg !815
  tail call void @llvm.dbg.value(metadata i64 %call2, i64 0, metadata !387, metadata !749), !dbg !816
  %cmp3 = icmp eq i64 %call2, -1, !dbg !817
  br i1 %cmp3, label %land.lhs.true, label %if.end.10, !dbg !819

land.lhs.true:                                    ; preds = %if.then.1
  %call4 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !820
  %tobool5 = icmp eq %struct._object* %call4, null, !dbg !820
  br i1 %tobool5, label %if.end.10, label %cleanup, !dbg !822

if.else.7:                                        ; preds = %if.else
  %1 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !823, !tbaa !769
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %obj, i64 0, i32 1, !dbg !825
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !825, !tbaa !786
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 1, !dbg !826
  %3 = load i8*, i8** %tp_name, align 8, !dbg !826, !tbaa !790
  %call8 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %3) #2, !dbg !827
  br label %cleanup, !dbg !828

if.end.10:                                        ; preds = %entry, %land.lhs.true, %if.then.1
  %limit.0 = phi i64 [ -1, %land.lhs.true ], [ %call2, %if.then.1 ], [ -1, %entry ]
  %4 = bitcast i8* %result to i64*, !dbg !829
  store i64 %limit.0, i64* %4, align 8, !dbg !830, !tbaa !831
  br label %cleanup, !dbg !832

cleanup:                                          ; preds = %land.lhs.true, %if.end.10, %if.else.7
  %retval.0 = phi i32 [ 1, %if.end.10 ], [ 0, %if.else.7 ], [ 0, %land.lhs.true ]
  ret i32 %retval.0, !dbg !833
}

declare i32 @PyNumber_Check(%struct._object*) #3

declare i64 @PyNumber_AsSsize_t(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define %struct._PyIO_State* @_PyIO_get_module_state() #0 {
entry:
  %call = tail call %struct._object* @PyState_FindModule(%struct.PyModuleDef* nonnull @_PyIO_Module) #2, !dbg !834
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !392, metadata !749), !dbg !835
  %cmp = icmp eq %struct._object* %call, null, !dbg !836
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !838

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i8* @PyModule_GetState(%struct._object* %call) #2, !dbg !839
  tail call void @llvm.dbg.value(metadata %struct._PyIO_State* %1, i64 0, metadata !393, metadata !749), !dbg !841
  %cmp2 = icmp eq i8* %call1, null, !dbg !842
  br i1 %cmp2, label %if.then, label %if.end, !dbg !843

if.then:                                          ; preds = %lor.lhs.false, %entry
  %0 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !844, !tbaa !769
  tail call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0)) #2, !dbg !846
  br label %cleanup, !dbg !847

if.end:                                           ; preds = %lor.lhs.false
  %1 = bitcast i8* %call1 to %struct._PyIO_State*, !dbg !839
  br label %cleanup, !dbg !848

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct._PyIO_State* [ null, %if.then ], [ %1, %if.end ]
  ret %struct._PyIO_State* %retval.0, !dbg !849
}

declare %struct._object* @PyState_FindModule(%struct.PyModuleDef*) #3

declare i8* @PyModule_GetState(%struct._object*) #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @_PyIO_get_locale_module(%struct._PyIO_State* nocapture %state) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._PyIO_State* %state, i64 0, metadata !398, metadata !749), !dbg !850
  %locale_module = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %state, i64 0, i32 1, !dbg !851
  %0 = load %struct._object*, %struct._object** %locale_module, align 8, !dbg !851, !tbaa !852
  %cmp = icmp eq %struct._object* %0, null, !dbg !854
  br i1 %cmp, label %if.end.20, label %if.then, !dbg !855

if.then:                                          ; preds = %entry
  %wr_object = getelementptr inbounds %struct._object, %struct._object* %0, i64 1, !dbg !856
  %1 = bitcast %struct._object* %wr_object to %struct._object**, !dbg !856
  %2 = load %struct._object*, %struct._object** %1, align 8, !dbg !856, !tbaa !857
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 0, !dbg !856
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !859, !tbaa !799
  %cmp563 = icmp eq %struct._object* %2, @_Py_NoneStruct, !dbg !862
  %not.cmp2 = icmp slt i64 %3, 1, !dbg !862
  %cmp5 = or i1 %cmp563, %not.cmp2, !dbg !862
  br i1 %cmp5, label %if.then.10, label %if.then.6, !dbg !863

if.then.6:                                        ; preds = %if.then
  %inc = add i64 %3, 1, !dbg !859
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !859, !tbaa !799
  br label %cleanup, !dbg !864

if.then.10:                                       ; preds = %if.then
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !400, metadata !749), !dbg !865
  store %struct._object* null, %struct._object** %locale_module, align 8, !dbg !867, !tbaa !852
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !404, metadata !749), !dbg !869
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !871
  %4 = load i64, i64* %ob_refcnt13, align 8, !dbg !871, !tbaa !799
  %dec = add i64 %4, -1, !dbg !871
  store i64 %dec, i64* %ob_refcnt13, align 8, !dbg !871, !tbaa !799
  %cmp14 = icmp eq i64 %dec, 0, !dbg !871
  br i1 %cmp14, label %if.else, label %if.end.20, !dbg !873

if.else:                                          ; preds = %if.then.10
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 1, !dbg !874
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !874, !tbaa !786
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !874
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !874, !tbaa !803
  tail call void %6(%struct._object* %0) #2, !dbg !874
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.10, %if.else, %entry
  %call = tail call %struct._object* @PyImport_ImportModule(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)) #2, !dbg !876
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !399, metadata !749), !dbg !877
  %cmp21 = icmp eq %struct._object* %call, null, !dbg !878
  br i1 %cmp21, label %cleanup, label %if.end.23, !dbg !880

if.end.23:                                        ; preds = %if.end.20
  %call24 = tail call %struct._object* @PyWeakref_NewRef(%struct._object* %call, %struct._object* null) #2, !dbg !881
  store %struct._object* %call24, %struct._object** %locale_module, align 8, !dbg !882, !tbaa !852
  %cmp27 = icmp eq %struct._object* %call24, null, !dbg !883
  br i1 %cmp27, label %do.body.29, label %cleanup, !dbg !884

do.body.29:                                       ; preds = %if.end.23
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !408, metadata !749), !dbg !885
  %ob_refcnt31 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !887
  %7 = load i64, i64* %ob_refcnt31, align 8, !dbg !887, !tbaa !799
  %dec32 = add i64 %7, -1, !dbg !887
  store i64 %dec32, i64* %ob_refcnt31, align 8, !dbg !887, !tbaa !799
  %cmp33 = icmp eq i64 %dec32, 0, !dbg !887
  br i1 %cmp33, label %if.else.35, label %cleanup, !dbg !889

if.else.35:                                       ; preds = %do.body.29
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !890
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8, !dbg !890, !tbaa !786
  %tp_dealloc37 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !890
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc37, align 8, !dbg !890, !tbaa !803
  tail call void %9(%struct._object* %call) #2, !dbg !890
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %if.else.35, %do.body.29, %if.end.20, %if.then.6
  %retval.0 = phi %struct._object* [ %2, %if.then.6 ], [ null, %if.end.20 ], [ null, %do.body.29 ], [ null, %if.else.35 ], [ %call, %if.end.23 ]
  ret %struct._object* %retval.0, !dbg !892
}

declare %struct._object* @PyImport_ImportModule(i8*) #3

declare %struct._object* @PyWeakref_NewRef(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @iomodule_traverse(%struct._object* %mod, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %mod, i64 0, metadata !639, metadata !749), !dbg !893
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !640, metadata !749), !dbg !894
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !641, metadata !749), !dbg !895
  %call = tail call i8* @PyModule_GetState(%struct._object* %mod) #2, !dbg !896
  %initialized = bitcast i8* %call to i32*, !dbg !897
  %0 = load i32, i32* %initialized, align 4, !dbg !897, !tbaa !899
  %tobool = icmp eq i32 %0, 0, !dbg !900
  br i1 %tobool, label %cleanup.27, label %if.end, !dbg !901

if.end:                                           ; preds = %entry
  %locale_module = getelementptr inbounds i8, i8* %call, i64 8, !dbg !902
  %1 = bitcast i8* %locale_module to %struct._object**, !dbg !902
  %2 = load %struct._object*, %struct._object** %1, align 8, !dbg !902, !tbaa !852
  %cmp = icmp eq %struct._object* %2, null, !dbg !903
  br i1 %cmp, label %do.body.12, label %if.then.4, !dbg !904

if.then.4:                                        ; preds = %if.end
  %call6 = tail call i32 %visit(%struct._object* %2, i8* %arg) #2, !dbg !905
  tail call void @llvm.dbg.value(metadata i32 %call6, i64 0, metadata !643, metadata !749), !dbg !905
  %tobool7 = icmp eq i32 %call6, 0, !dbg !907
  br i1 %tobool7, label %do.body.12, label %cleanup.27

do.body.12:                                       ; preds = %if.end, %if.then.4
  %unsupported_operation = getelementptr inbounds i8, i8* %call, i64 16, !dbg !909
  %3 = bitcast i8* %unsupported_operation to %struct._object**, !dbg !909
  %4 = load %struct._object*, %struct._object** %3, align 8, !dbg !909, !tbaa !911
  %tobool13 = icmp eq %struct._object* %4, null, !dbg !909
  br i1 %tobool13, label %do.end.26, label %if.then.14, !dbg !912

if.then.14:                                       ; preds = %do.body.12
  %call17 = tail call i32 %visit(%struct._object* %4, i8* %arg) #2, !dbg !913
  tail call void @llvm.dbg.value(metadata i32 %call17, i64 0, metadata !649, metadata !749), !dbg !913
  %tobool18 = icmp eq i32 %call17, 0, !dbg !915
  br i1 %tobool18, label %do.end.26, label %cleanup.27

do.end.26:                                        ; preds = %do.body.12, %if.then.14
  br label %cleanup.27, !dbg !917

cleanup.27:                                       ; preds = %entry, %if.then.4, %if.then.14, %do.end.26
  %retval.3 = phi i32 [ 0, %do.end.26 ], [ %call17, %if.then.14 ], [ %call6, %if.then.4 ], [ 0, %entry ]
  ret i32 %retval.3, !dbg !918
}

; Function Attrs: nounwind uwtable
define internal i32 @iomodule_clear(%struct._object* %mod) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %mod, i64 0, metadata !655, metadata !749), !dbg !919
  %call = tail call i8* @PyModule_GetState(%struct._object* %mod) #2, !dbg !920
  %initialized = bitcast i8* %call to i32*, !dbg !921
  %0 = load i32, i32* %initialized, align 4, !dbg !921, !tbaa !899
  %tobool = icmp eq i32 %0, 0, !dbg !923
  br i1 %tobool, label %cleanup, label %if.end, !dbg !924

if.end:                                           ; preds = %entry
  %locale_module = getelementptr inbounds i8, i8* %call, i64 8, !dbg !925
  %1 = bitcast i8* %locale_module to %struct._object**, !dbg !925
  %2 = load %struct._object*, %struct._object** %1, align 8, !dbg !925, !tbaa !852
  %cmp = icmp eq %struct._object* %2, null, !dbg !926
  br i1 %cmp, label %do.body.14, label %if.then.4, !dbg !927

if.then.4:                                        ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !657, metadata !749), !dbg !928
  store %struct._object* null, %struct._object** %1, align 8, !dbg !930, !tbaa !852
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !660, metadata !749), !dbg !932
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 0, !dbg !934
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !934, !tbaa !799
  %dec = add i64 %3, -1, !dbg !934
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !934, !tbaa !799
  %cmp7 = icmp eq i64 %dec, 0, !dbg !934
  br i1 %cmp7, label %if.else, label %do.body.14, !dbg !936

if.else:                                          ; preds = %if.then.4
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 1, !dbg !937
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !937, !tbaa !786
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 4, !dbg !937
  %5 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !937, !tbaa !803
  tail call void %5(%struct._object* %2) #2, !dbg !937
  br label %do.body.14

do.body.14:                                       ; preds = %if.then.4, %if.else, %if.end
  %unsupported_operation = getelementptr inbounds i8, i8* %call, i64 16, !dbg !939
  %6 = bitcast i8* %unsupported_operation to %struct._object**, !dbg !939
  %7 = load %struct._object*, %struct._object** %6, align 8, !dbg !939, !tbaa !911
  tail call void @llvm.dbg.value(metadata %struct._object* %7, i64 0, metadata !664, metadata !749), !dbg !939
  %cmp16 = icmp eq %struct._object* %7, null, !dbg !941
  br i1 %cmp16, label %cleanup, label %if.then.17, !dbg !942

if.then.17:                                       ; preds = %do.body.14
  store %struct._object* null, %struct._object** %6, align 8, !dbg !943, !tbaa !911
  tail call void @llvm.dbg.value(metadata %struct._object* %7, i64 0, metadata !666, metadata !749), !dbg !945
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %7, i64 0, i32 0, !dbg !947
  %8 = load i64, i64* %ob_refcnt21, align 8, !dbg !947, !tbaa !799
  %dec22 = add i64 %8, -1, !dbg !947
  store i64 %dec22, i64* %ob_refcnt21, align 8, !dbg !947, !tbaa !799
  %cmp23 = icmp eq i64 %dec22, 0, !dbg !947
  br i1 %cmp23, label %if.else.25, label %cleanup, !dbg !949

if.else.25:                                       ; preds = %if.then.17
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %7, i64 0, i32 1, !dbg !950
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8, !dbg !950, !tbaa !786
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 4, !dbg !950
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8, !dbg !950, !tbaa !803
  tail call void %10(%struct._object* %7) #2, !dbg !950
  br label %cleanup

cleanup:                                          ; preds = %do.body.14, %if.then.17, %if.else.25, %entry
  ret i32 0, !dbg !952
}

; Function Attrs: nounwind uwtable
define internal void @iomodule_free(%struct._object* %mod) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %mod, i64 0, metadata !672, metadata !749), !dbg !953
  tail call void @llvm.dbg.value(metadata %struct._object* %mod, i64 0, metadata !655, metadata !749) #2, !dbg !954
  %call.i = tail call i8* @PyModule_GetState(%struct._object* %mod) #2, !dbg !956
  %initialized.i = bitcast i8* %call.i to i32*, !dbg !957
  %0 = load i32, i32* %initialized.i, align 4, !dbg !957, !tbaa !899
  %tobool.i = icmp eq i32 %0, 0, !dbg !958
  br i1 %tobool.i, label %iomodule_clear.exit, label %if.end.i, !dbg !959

if.end.i:                                         ; preds = %entry
  %locale_module.i = getelementptr inbounds i8, i8* %call.i, i64 8, !dbg !960
  %1 = bitcast i8* %locale_module.i to %struct._object**, !dbg !960
  %2 = load %struct._object*, %struct._object** %1, align 8, !dbg !960, !tbaa !852
  %cmp.i = icmp eq %struct._object* %2, null, !dbg !961
  br i1 %cmp.i, label %do.body.14.i, label %if.then.4.i, !dbg !962

if.then.4.i:                                      ; preds = %if.end.i
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !657, metadata !749) #2, !dbg !963
  store %struct._object* null, %struct._object** %1, align 8, !dbg !964, !tbaa !852
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !660, metadata !749) #2, !dbg !965
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 0, !dbg !966
  %3 = load i64, i64* %ob_refcnt.i, align 8, !dbg !966, !tbaa !799
  %dec.i = add i64 %3, -1, !dbg !966
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !966, !tbaa !799
  %cmp7.i = icmp eq i64 %dec.i, 0, !dbg !966
  br i1 %cmp7.i, label %if.else.i, label %do.body.14.i, !dbg !967

if.else.i:                                        ; preds = %if.then.4.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 1, !dbg !968
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !968, !tbaa !786
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 4, !dbg !968
  %5 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !968, !tbaa !803
  tail call void %5(%struct._object* %2) #2, !dbg !968
  br label %do.body.14.i, !dbg !969

do.body.14.i:                                     ; preds = %if.else.i, %if.then.4.i, %if.end.i
  %unsupported_operation.i = getelementptr inbounds i8, i8* %call.i, i64 16, !dbg !970
  %6 = bitcast i8* %unsupported_operation.i to %struct._object**, !dbg !970
  %7 = load %struct._object*, %struct._object** %6, align 8, !dbg !970, !tbaa !911
  tail call void @llvm.dbg.value(metadata %struct._object* %7, i64 0, metadata !664, metadata !749) #2, !dbg !970
  %cmp16.i = icmp eq %struct._object* %7, null, !dbg !971
  br i1 %cmp16.i, label %iomodule_clear.exit, label %if.then.17.i, !dbg !972

if.then.17.i:                                     ; preds = %do.body.14.i
  store %struct._object* null, %struct._object** %6, align 8, !dbg !973, !tbaa !911
  tail call void @llvm.dbg.value(metadata %struct._object* %7, i64 0, metadata !666, metadata !749) #2, !dbg !974
  %ob_refcnt21.i = getelementptr inbounds %struct._object, %struct._object* %7, i64 0, i32 0, !dbg !975
  %8 = load i64, i64* %ob_refcnt21.i, align 8, !dbg !975, !tbaa !799
  %dec22.i = add i64 %8, -1, !dbg !975
  store i64 %dec22.i, i64* %ob_refcnt21.i, align 8, !dbg !975, !tbaa !799
  %cmp23.i = icmp eq i64 %dec22.i, 0, !dbg !975
  br i1 %cmp23.i, label %if.else.25.i, label %iomodule_clear.exit, !dbg !976

if.else.25.i:                                     ; preds = %if.then.17.i
  %ob_type26.i = getelementptr inbounds %struct._object, %struct._object* %7, i64 0, i32 1, !dbg !977
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type26.i, align 8, !dbg !977, !tbaa !786
  %tp_dealloc27.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 4, !dbg !977
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27.i, align 8, !dbg !977, !tbaa !803
  tail call void %10(%struct._object* %7) #2, !dbg !977
  br label %iomodule_clear.exit, !dbg !969

iomodule_clear.exit:                              ; preds = %entry, %do.body.14.i, %if.then.17.i, %if.else.25.i
  ret void, !dbg !978
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__io() #0 {
entry:
  %call = tail call %struct._object* @PyModule_Create2(%struct.PyModuleDef* nonnull @_PyIO_Module, i32 1013) #2, !dbg !979
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !416, metadata !749), !dbg !980
  tail call void @llvm.dbg.value(metadata %struct._PyIO_State* null, i64 0, metadata !417, metadata !749), !dbg !981
  %cmp = icmp eq %struct._object* %call, null, !dbg !982
  br i1 %cmp, label %cleanup, label %if.end, !dbg !984

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @PyModule_GetState(%struct._object* %call) #2, !dbg !985
  %initialized = bitcast i8* %call1 to i32*, !dbg !986
  store i32 0, i32* %initialized, align 4, !dbg !987, !tbaa !899
  %call2 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i64 8192) #2, !dbg !988
  %cmp3 = icmp slt i32 %call2, 0, !dbg !990
  br i1 %cmp3, label %if.end.do.body.453_crit_edge, label %if.end.5, !dbg !991

if.end.do.body.453_crit_edge:                     ; preds = %if.end
  %.pre = getelementptr inbounds i8, i8* %call1, i64 16, !dbg !992
  %.pre559 = bitcast i8* %.pre to %struct._object**, !dbg !992
  br label %do.body.453, !dbg !991

if.end.5:                                         ; preds = %if.end
  %0 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !994, !tbaa !769
  %1 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !995, !tbaa !769
  %call6 = tail call %struct._object* (%struct._object*, i8*, ...) @_PyObject_CallFunction_SizeT(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyType_Type, i64 0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), %struct._object* %0, %struct._object* %1) #2, !dbg !996
  %unsupported_operation = getelementptr inbounds i8, i8* %call1, i64 16, !dbg !998
  %2 = bitcast i8* %unsupported_operation to %struct._object**, !dbg !998
  store %struct._object* %call6, %struct._object** %2, align 8, !dbg !999, !tbaa !911
  %cmp8 = icmp eq %struct._object* %call6, null, !dbg !1000
  br i1 %cmp8, label %do.body.453, label %if.end.10, !dbg !1002

if.end.10:                                        ; preds = %if.end.5
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call6, i64 0, i32 0, !dbg !1003
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !1003, !tbaa !799
  %inc = add i64 %3, 1, !dbg !1003
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1003, !tbaa !799
  %call13 = tail call i32 @PyModule_AddObject(%struct._object* %call, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), %struct._object* %call6) #2, !dbg !1004
  %cmp14 = icmp slt i32 %call13, 0, !dbg !1005
  br i1 %cmp14, label %do.body.453, label %if.end.16, !dbg !1006

if.end.16:                                        ; preds = %if.end.10
  %4 = load %struct._object*, %struct._object** @PyExc_BlockingIOError, align 8, !dbg !1007, !tbaa !769
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 0, !dbg !1007
  %5 = load i64, i64* %ob_refcnt17, align 8, !dbg !1007, !tbaa !799
  %inc18 = add i64 %5, 1, !dbg !1007
  store i64 %inc18, i64* %ob_refcnt17, align 8, !dbg !1007, !tbaa !799
  %call19 = tail call i32 @PyModule_AddObject(%struct._object* %call, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), %struct._object* %4) #2, !dbg !1008
  %cmp20 = icmp slt i32 %call19, 0, !dbg !1010
  br i1 %cmp20, label %do.body.453, label %if.end.22, !dbg !1011

if.end.22:                                        ; preds = %if.end.16
  %call23 = tail call i32 @PyType_Ready(%struct._typeobject* nonnull @PyIOBase_Type) #2, !dbg !1012
  %cmp24 = icmp slt i32 %call23, 0, !dbg !1012
  br i1 %cmp24, label %do.body.453, label %if.end.26, !dbg !1014

if.end.26:                                        ; preds = %if.end.22
  %6 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyIOBase_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1015, !tbaa !799
  %inc27 = add i64 %6, 1, !dbg !1015
  store i64 %inc27, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyIOBase_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1015, !tbaa !799
  %call28 = tail call i32 @PyModule_AddObject(%struct._object* %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyIOBase_Type, i64 0, i32 0, i32 0)) #2, !dbg !1017
  %cmp29 = icmp slt i32 %call28, 0, !dbg !1017
  br i1 %cmp29, label %do.body, label %if.end.35, !dbg !1014

do.body:                                          ; preds = %if.end.26
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !418, metadata !749), !dbg !1018
  %7 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyIOBase_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1020, !tbaa !799
  %dec = add i64 %7, -1, !dbg !1020
  store i64 %dec, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyIOBase_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1020, !tbaa !799
  %cmp32 = icmp eq i64 %dec, 0, !dbg !1020
  br i1 %cmp32, label %if.else, label %do.body.453, !dbg !1022

if.else:                                          ; preds = %do.body
  %8 = load %struct._typeobject*, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyIOBase_Type, i64 0, i32 0, i32 0, i32 1), align 8, !dbg !1023, !tbaa !786
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !1023
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1023, !tbaa !803
  tail call void %9(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyIOBase_Type, i64 0, i32 0, i32 0)) #2, !dbg !1023
  br label %do.body.453

if.end.35:                                        ; preds = %if.end.26
  %call36 = tail call i32 @PyType_Ready(%struct._typeobject* nonnull @PyRawIOBase_Type) #2, !dbg !1025
  %cmp37 = icmp slt i32 %call36, 0, !dbg !1025
  br i1 %cmp37, label %do.body.453, label %if.end.39, !dbg !1027

if.end.39:                                        ; preds = %if.end.35
  %10 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyRawIOBase_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1028, !tbaa !799
  %inc40 = add i64 %10, 1, !dbg !1028
  store i64 %inc40, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyRawIOBase_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1028, !tbaa !799
  %call41 = tail call i32 @PyModule_AddObject(%struct._object* %call, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyRawIOBase_Type, i64 0, i32 0, i32 0)) #2, !dbg !1029
  %cmp42 = icmp slt i32 %call41, 0, !dbg !1029
  br i1 %cmp42, label %do.body.44, label %if.end.56, !dbg !1027

do.body.44:                                       ; preds = %if.end.39
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !422, metadata !749), !dbg !1030
  %11 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyRawIOBase_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1032, !tbaa !799
  %dec47 = add i64 %11, -1, !dbg !1032
  store i64 %dec47, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyRawIOBase_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1032, !tbaa !799
  %cmp48 = icmp eq i64 %dec47, 0, !dbg !1032
  br i1 %cmp48, label %if.else.50, label %do.body.453, !dbg !1034

if.else.50:                                       ; preds = %do.body.44
  %12 = load %struct._typeobject*, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyRawIOBase_Type, i64 0, i32 0, i32 0, i32 1), align 8, !dbg !1035, !tbaa !786
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !1035
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8, !dbg !1035, !tbaa !803
  tail call void %13(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyRawIOBase_Type, i64 0, i32 0, i32 0)) #2, !dbg !1035
  br label %do.body.453

if.end.56:                                        ; preds = %if.end.39
  %call57 = tail call i32 @PyType_Ready(%struct._typeobject* nonnull @PyBufferedIOBase_Type) #2, !dbg !1037
  %cmp58 = icmp slt i32 %call57, 0, !dbg !1037
  br i1 %cmp58, label %do.body.453, label %if.end.60, !dbg !1039

if.end.60:                                        ; preds = %if.end.56
  %14 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedIOBase_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1040, !tbaa !799
  %inc61 = add i64 %14, 1, !dbg !1040
  store i64 %inc61, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedIOBase_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1040, !tbaa !799
  %call62 = tail call i32 @PyModule_AddObject(%struct._object* %call, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedIOBase_Type, i64 0, i32 0, i32 0)) #2, !dbg !1041
  %cmp63 = icmp slt i32 %call62, 0, !dbg !1041
  br i1 %cmp63, label %do.body.65, label %if.end.77, !dbg !1039

do.body.65:                                       ; preds = %if.end.60
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !426, metadata !749), !dbg !1042
  %15 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedIOBase_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1044, !tbaa !799
  %dec68 = add i64 %15, -1, !dbg !1044
  store i64 %dec68, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedIOBase_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1044, !tbaa !799
  %cmp69 = icmp eq i64 %dec68, 0, !dbg !1044
  br i1 %cmp69, label %if.else.71, label %do.body.453, !dbg !1046

if.else.71:                                       ; preds = %do.body.65
  %16 = load %struct._typeobject*, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedIOBase_Type, i64 0, i32 0, i32 0, i32 1), align 8, !dbg !1047, !tbaa !786
  %tp_dealloc73 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i64 0, i32 4, !dbg !1047
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc73, align 8, !dbg !1047, !tbaa !803
  tail call void %17(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedIOBase_Type, i64 0, i32 0, i32 0)) #2, !dbg !1047
  br label %do.body.453

if.end.77:                                        ; preds = %if.end.60
  %call78 = tail call i32 @PyType_Ready(%struct._typeobject* nonnull @PyTextIOBase_Type) #2, !dbg !1049
  %cmp79 = icmp slt i32 %call78, 0, !dbg !1049
  br i1 %cmp79, label %do.body.453, label %if.end.81, !dbg !1051

if.end.81:                                        ; preds = %if.end.77
  %18 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOBase_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1052, !tbaa !799
  %inc82 = add i64 %18, 1, !dbg !1052
  store i64 %inc82, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOBase_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1052, !tbaa !799
  %call83 = tail call i32 @PyModule_AddObject(%struct._object* %call, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOBase_Type, i64 0, i32 0, i32 0)) #2, !dbg !1053
  %cmp84 = icmp slt i32 %call83, 0, !dbg !1053
  br i1 %cmp84, label %do.body.86, label %if.end.98, !dbg !1051

do.body.86:                                       ; preds = %if.end.81
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !430, metadata !749), !dbg !1054
  %19 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOBase_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1056, !tbaa !799
  %dec89 = add i64 %19, -1, !dbg !1056
  store i64 %dec89, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOBase_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1056, !tbaa !799
  %cmp90 = icmp eq i64 %dec89, 0, !dbg !1056
  br i1 %cmp90, label %if.else.92, label %do.body.453, !dbg !1058

if.else.92:                                       ; preds = %do.body.86
  %20 = load %struct._typeobject*, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOBase_Type, i64 0, i32 0, i32 0, i32 1), align 8, !dbg !1059, !tbaa !786
  %tp_dealloc94 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i64 0, i32 4, !dbg !1059
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc94, align 8, !dbg !1059, !tbaa !803
  tail call void %21(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOBase_Type, i64 0, i32 0, i32 0)) #2, !dbg !1059
  br label %do.body.453

if.end.98:                                        ; preds = %if.end.81
  store %struct._typeobject* @PyRawIOBase_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyFileIO_Type, i64 0, i32 30), align 8, !dbg !1061, !tbaa !1062
  %call99 = tail call i32 @PyType_Ready(%struct._typeobject* nonnull @PyFileIO_Type) #2, !dbg !1063
  %cmp100 = icmp slt i32 %call99, 0, !dbg !1063
  br i1 %cmp100, label %do.body.453, label %if.end.102, !dbg !1065

if.end.102:                                       ; preds = %if.end.98
  %22 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyFileIO_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1066, !tbaa !799
  %inc103 = add i64 %22, 1, !dbg !1066
  store i64 %inc103, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyFileIO_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1066, !tbaa !799
  %call104 = tail call i32 @PyModule_AddObject(%struct._object* %call, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyFileIO_Type, i64 0, i32 0, i32 0)) #2, !dbg !1067
  %cmp105 = icmp slt i32 %call104, 0, !dbg !1067
  br i1 %cmp105, label %do.body.107, label %if.end.119, !dbg !1065

do.body.107:                                      ; preds = %if.end.102
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !434, metadata !749), !dbg !1068
  %23 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyFileIO_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1070, !tbaa !799
  %dec110 = add i64 %23, -1, !dbg !1070
  store i64 %dec110, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyFileIO_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1070, !tbaa !799
  %cmp111 = icmp eq i64 %dec110, 0, !dbg !1070
  br i1 %cmp111, label %if.else.113, label %do.body.453, !dbg !1072

if.else.113:                                      ; preds = %do.body.107
  %24 = load %struct._typeobject*, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyFileIO_Type, i64 0, i32 0, i32 0, i32 1), align 8, !dbg !1073, !tbaa !786
  %tp_dealloc115 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i64 0, i32 4, !dbg !1073
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc115, align 8, !dbg !1073, !tbaa !803
  tail call void %25(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyFileIO_Type, i64 0, i32 0, i32 0)) #2, !dbg !1073
  br label %do.body.453

if.end.119:                                       ; preds = %if.end.102
  store %struct._typeobject* @PyBufferedIOBase_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBytesIO_Type, i64 0, i32 30), align 8, !dbg !1075, !tbaa !1062
  %call120 = tail call i32 @PyType_Ready(%struct._typeobject* nonnull @PyBytesIO_Type) #2, !dbg !1076
  %cmp121 = icmp slt i32 %call120, 0, !dbg !1076
  br i1 %cmp121, label %do.body.453, label %if.end.123, !dbg !1078

if.end.123:                                       ; preds = %if.end.119
  %26 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBytesIO_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1079, !tbaa !799
  %inc124 = add i64 %26, 1, !dbg !1079
  store i64 %inc124, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBytesIO_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1079, !tbaa !799
  %call125 = tail call i32 @PyModule_AddObject(%struct._object* %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBytesIO_Type, i64 0, i32 0, i32 0)) #2, !dbg !1080
  %cmp126 = icmp slt i32 %call125, 0, !dbg !1080
  br i1 %cmp126, label %do.body.128, label %if.end.140, !dbg !1078

do.body.128:                                      ; preds = %if.end.123
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !438, metadata !749), !dbg !1081
  %27 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBytesIO_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1083, !tbaa !799
  %dec131 = add i64 %27, -1, !dbg !1083
  store i64 %dec131, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBytesIO_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1083, !tbaa !799
  %cmp132 = icmp eq i64 %dec131, 0, !dbg !1083
  br i1 %cmp132, label %if.else.134, label %do.body.453, !dbg !1085

if.else.134:                                      ; preds = %do.body.128
  %28 = load %struct._typeobject*, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBytesIO_Type, i64 0, i32 0, i32 0, i32 1), align 8, !dbg !1086, !tbaa !786
  %tp_dealloc136 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i64 0, i32 4, !dbg !1086
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc136, align 8, !dbg !1086, !tbaa !803
  tail call void %29(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBytesIO_Type, i64 0, i32 0, i32 0)) #2, !dbg !1086
  br label %do.body.453

if.end.140:                                       ; preds = %if.end.123
  %call141 = tail call i32 @PyType_Ready(%struct._typeobject* nonnull @_PyBytesIOBuffer_Type) #2, !dbg !1088
  %cmp142 = icmp slt i32 %call141, 0, !dbg !1090
  br i1 %cmp142, label %do.body.453, label %if.end.144, !dbg !1091

if.end.144:                                       ; preds = %if.end.140
  store %struct._typeobject* @PyTextIOBase_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyStringIO_Type, i64 0, i32 30), align 8, !dbg !1092, !tbaa !1062
  %call145 = tail call i32 @PyType_Ready(%struct._typeobject* nonnull @PyStringIO_Type) #2, !dbg !1093
  %cmp146 = icmp slt i32 %call145, 0, !dbg !1093
  br i1 %cmp146, label %do.body.453, label %if.end.148, !dbg !1095

if.end.148:                                       ; preds = %if.end.144
  %30 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyStringIO_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1096, !tbaa !799
  %inc149 = add i64 %30, 1, !dbg !1096
  store i64 %inc149, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyStringIO_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1096, !tbaa !799
  %call150 = tail call i32 @PyModule_AddObject(%struct._object* %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyStringIO_Type, i64 0, i32 0, i32 0)) #2, !dbg !1097
  %cmp151 = icmp slt i32 %call150, 0, !dbg !1097
  br i1 %cmp151, label %do.body.153, label %if.end.165, !dbg !1095

do.body.153:                                      ; preds = %if.end.148
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !442, metadata !749), !dbg !1098
  %31 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyStringIO_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1100, !tbaa !799
  %dec156 = add i64 %31, -1, !dbg !1100
  store i64 %dec156, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyStringIO_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1100, !tbaa !799
  %cmp157 = icmp eq i64 %dec156, 0, !dbg !1100
  br i1 %cmp157, label %if.else.159, label %do.body.453, !dbg !1102

if.else.159:                                      ; preds = %do.body.153
  %32 = load %struct._typeobject*, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyStringIO_Type, i64 0, i32 0, i32 0, i32 1), align 8, !dbg !1103, !tbaa !786
  %tp_dealloc161 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i64 0, i32 4, !dbg !1103
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc161, align 8, !dbg !1103, !tbaa !803
  tail call void %33(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyStringIO_Type, i64 0, i32 0, i32 0)) #2, !dbg !1103
  br label %do.body.453

if.end.165:                                       ; preds = %if.end.148
  store %struct._typeobject* @PyBufferedIOBase_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedReader_Type, i64 0, i32 30), align 8, !dbg !1105, !tbaa !1062
  %call166 = tail call i32 @PyType_Ready(%struct._typeobject* nonnull @PyBufferedReader_Type) #2, !dbg !1106
  %cmp167 = icmp slt i32 %call166, 0, !dbg !1106
  br i1 %cmp167, label %do.body.453, label %if.end.169, !dbg !1108

if.end.169:                                       ; preds = %if.end.165
  %34 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedReader_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1109, !tbaa !799
  %inc170 = add i64 %34, 1, !dbg !1109
  store i64 %inc170, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedReader_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1109, !tbaa !799
  %call171 = tail call i32 @PyModule_AddObject(%struct._object* %call, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedReader_Type, i64 0, i32 0, i32 0)) #2, !dbg !1110
  %cmp172 = icmp slt i32 %call171, 0, !dbg !1110
  br i1 %cmp172, label %do.body.174, label %if.end.186, !dbg !1108

do.body.174:                                      ; preds = %if.end.169
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !446, metadata !749), !dbg !1111
  %35 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedReader_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1113, !tbaa !799
  %dec177 = add i64 %35, -1, !dbg !1113
  store i64 %dec177, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedReader_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1113, !tbaa !799
  %cmp178 = icmp eq i64 %dec177, 0, !dbg !1113
  br i1 %cmp178, label %if.else.180, label %do.body.453, !dbg !1115

if.else.180:                                      ; preds = %do.body.174
  %36 = load %struct._typeobject*, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedReader_Type, i64 0, i32 0, i32 0, i32 1), align 8, !dbg !1116, !tbaa !786
  %tp_dealloc182 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i64 0, i32 4, !dbg !1116
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc182, align 8, !dbg !1116, !tbaa !803
  tail call void %37(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedReader_Type, i64 0, i32 0, i32 0)) #2, !dbg !1116
  br label %do.body.453

if.end.186:                                       ; preds = %if.end.169
  store %struct._typeobject* @PyBufferedIOBase_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedWriter_Type, i64 0, i32 30), align 8, !dbg !1118, !tbaa !1062
  %call187 = tail call i32 @PyType_Ready(%struct._typeobject* nonnull @PyBufferedWriter_Type) #2, !dbg !1119
  %cmp188 = icmp slt i32 %call187, 0, !dbg !1119
  br i1 %cmp188, label %do.body.453, label %if.end.190, !dbg !1121

if.end.190:                                       ; preds = %if.end.186
  %38 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedWriter_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1122, !tbaa !799
  %inc191 = add i64 %38, 1, !dbg !1122
  store i64 %inc191, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedWriter_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1122, !tbaa !799
  %call192 = tail call i32 @PyModule_AddObject(%struct._object* %call, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedWriter_Type, i64 0, i32 0, i32 0)) #2, !dbg !1123
  %cmp193 = icmp slt i32 %call192, 0, !dbg !1123
  br i1 %cmp193, label %do.body.195, label %if.end.207, !dbg !1121

do.body.195:                                      ; preds = %if.end.190
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !450, metadata !749), !dbg !1124
  %39 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedWriter_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1126, !tbaa !799
  %dec198 = add i64 %39, -1, !dbg !1126
  store i64 %dec198, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedWriter_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1126, !tbaa !799
  %cmp199 = icmp eq i64 %dec198, 0, !dbg !1126
  br i1 %cmp199, label %if.else.201, label %do.body.453, !dbg !1128

if.else.201:                                      ; preds = %do.body.195
  %40 = load %struct._typeobject*, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedWriter_Type, i64 0, i32 0, i32 0, i32 1), align 8, !dbg !1129, !tbaa !786
  %tp_dealloc203 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i64 0, i32 4, !dbg !1129
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc203, align 8, !dbg !1129, !tbaa !803
  tail call void %41(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedWriter_Type, i64 0, i32 0, i32 0)) #2, !dbg !1129
  br label %do.body.453

if.end.207:                                       ; preds = %if.end.190
  store %struct._typeobject* @PyBufferedIOBase_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRWPair_Type, i64 0, i32 30), align 8, !dbg !1131, !tbaa !1062
  %call208 = tail call i32 @PyType_Ready(%struct._typeobject* nonnull @PyBufferedRWPair_Type) #2, !dbg !1132
  %cmp209 = icmp slt i32 %call208, 0, !dbg !1132
  br i1 %cmp209, label %do.body.453, label %if.end.211, !dbg !1134

if.end.211:                                       ; preds = %if.end.207
  %42 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRWPair_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1135, !tbaa !799
  %inc212 = add i64 %42, 1, !dbg !1135
  store i64 %inc212, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRWPair_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1135, !tbaa !799
  %call213 = tail call i32 @PyModule_AddObject(%struct._object* %call, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRWPair_Type, i64 0, i32 0, i32 0)) #2, !dbg !1136
  %cmp214 = icmp slt i32 %call213, 0, !dbg !1136
  br i1 %cmp214, label %do.body.216, label %if.end.228, !dbg !1134

do.body.216:                                      ; preds = %if.end.211
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !454, metadata !749), !dbg !1137
  %43 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRWPair_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1139, !tbaa !799
  %dec219 = add i64 %43, -1, !dbg !1139
  store i64 %dec219, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRWPair_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1139, !tbaa !799
  %cmp220 = icmp eq i64 %dec219, 0, !dbg !1139
  br i1 %cmp220, label %if.else.222, label %do.body.453, !dbg !1141

if.else.222:                                      ; preds = %do.body.216
  %44 = load %struct._typeobject*, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRWPair_Type, i64 0, i32 0, i32 0, i32 1), align 8, !dbg !1142, !tbaa !786
  %tp_dealloc224 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i64 0, i32 4, !dbg !1142
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc224, align 8, !dbg !1142, !tbaa !803
  tail call void %45(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRWPair_Type, i64 0, i32 0, i32 0)) #2, !dbg !1142
  br label %do.body.453

if.end.228:                                       ; preds = %if.end.211
  store %struct._typeobject* @PyBufferedIOBase_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRandom_Type, i64 0, i32 30), align 8, !dbg !1144, !tbaa !1062
  %call229 = tail call i32 @PyType_Ready(%struct._typeobject* nonnull @PyBufferedRandom_Type) #2, !dbg !1145
  %cmp230 = icmp slt i32 %call229, 0, !dbg !1145
  br i1 %cmp230, label %do.body.453, label %if.end.232, !dbg !1147

if.end.232:                                       ; preds = %if.end.228
  %46 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRandom_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1148, !tbaa !799
  %inc233 = add i64 %46, 1, !dbg !1148
  store i64 %inc233, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRandom_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1148, !tbaa !799
  %call234 = tail call i32 @PyModule_AddObject(%struct._object* %call, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRandom_Type, i64 0, i32 0, i32 0)) #2, !dbg !1149
  %cmp235 = icmp slt i32 %call234, 0, !dbg !1149
  br i1 %cmp235, label %do.body.237, label %if.end.249, !dbg !1147

do.body.237:                                      ; preds = %if.end.232
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !458, metadata !749), !dbg !1150
  %47 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRandom_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1152, !tbaa !799
  %dec240 = add i64 %47, -1, !dbg !1152
  store i64 %dec240, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRandom_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1152, !tbaa !799
  %cmp241 = icmp eq i64 %dec240, 0, !dbg !1152
  br i1 %cmp241, label %if.else.243, label %do.body.453, !dbg !1154

if.else.243:                                      ; preds = %do.body.237
  %48 = load %struct._typeobject*, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRandom_Type, i64 0, i32 0, i32 0, i32 1), align 8, !dbg !1155, !tbaa !786
  %tp_dealloc245 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i64 0, i32 4, !dbg !1155
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc245, align 8, !dbg !1155, !tbaa !803
  tail call void %49(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRandom_Type, i64 0, i32 0, i32 0)) #2, !dbg !1155
  br label %do.body.453

if.end.249:                                       ; preds = %if.end.232
  store %struct._typeobject* @PyTextIOBase_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOWrapper_Type, i64 0, i32 30), align 8, !dbg !1157, !tbaa !1062
  %call250 = tail call i32 @PyType_Ready(%struct._typeobject* nonnull @PyTextIOWrapper_Type) #2, !dbg !1158
  %cmp251 = icmp slt i32 %call250, 0, !dbg !1158
  br i1 %cmp251, label %do.body.453, label %if.end.253, !dbg !1160

if.end.253:                                       ; preds = %if.end.249
  %50 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOWrapper_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1161, !tbaa !799
  %inc254 = add i64 %50, 1, !dbg !1161
  store i64 %inc254, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOWrapper_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1161, !tbaa !799
  %call255 = tail call i32 @PyModule_AddObject(%struct._object* %call, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOWrapper_Type, i64 0, i32 0, i32 0)) #2, !dbg !1162
  %cmp256 = icmp slt i32 %call255, 0, !dbg !1162
  br i1 %cmp256, label %do.body.258, label %if.end.270, !dbg !1160

do.body.258:                                      ; preds = %if.end.253
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !462, metadata !749), !dbg !1163
  %51 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOWrapper_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1165, !tbaa !799
  %dec261 = add i64 %51, -1, !dbg !1165
  store i64 %dec261, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOWrapper_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1165, !tbaa !799
  %cmp262 = icmp eq i64 %dec261, 0, !dbg !1165
  br i1 %cmp262, label %if.else.264, label %do.body.453, !dbg !1167

if.else.264:                                      ; preds = %do.body.258
  %52 = load %struct._typeobject*, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOWrapper_Type, i64 0, i32 0, i32 0, i32 1), align 8, !dbg !1168, !tbaa !786
  %tp_dealloc266 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i64 0, i32 4, !dbg !1168
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc266, align 8, !dbg !1168, !tbaa !803
  tail call void %53(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOWrapper_Type, i64 0, i32 0, i32 0)) #2, !dbg !1168
  br label %do.body.453

if.end.270:                                       ; preds = %if.end.253
  %call271 = tail call i32 @PyType_Ready(%struct._typeobject* nonnull @PyIncrementalNewlineDecoder_Type) #2, !dbg !1170
  %cmp272 = icmp slt i32 %call271, 0, !dbg !1170
  br i1 %cmp272, label %do.body.453, label %if.end.274, !dbg !1172

if.end.274:                                       ; preds = %if.end.270
  %54 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyIncrementalNewlineDecoder_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1173, !tbaa !799
  %inc275 = add i64 %54, 1, !dbg !1173
  store i64 %inc275, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyIncrementalNewlineDecoder_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1173, !tbaa !799
  %call276 = tail call i32 @PyModule_AddObject(%struct._object* %call, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyIncrementalNewlineDecoder_Type, i64 0, i32 0, i32 0)) #2, !dbg !1174
  %cmp277 = icmp slt i32 %call276, 0, !dbg !1174
  br i1 %cmp277, label %do.body.279, label %if.end.291, !dbg !1172

do.body.279:                                      ; preds = %if.end.274
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !466, metadata !749), !dbg !1175
  %55 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyIncrementalNewlineDecoder_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1177, !tbaa !799
  %dec282 = add i64 %55, -1, !dbg !1177
  store i64 %dec282, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyIncrementalNewlineDecoder_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1177, !tbaa !799
  %cmp283 = icmp eq i64 %dec282, 0, !dbg !1177
  br i1 %cmp283, label %if.else.285, label %do.body.453, !dbg !1179

if.else.285:                                      ; preds = %do.body.279
  %56 = load %struct._typeobject*, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyIncrementalNewlineDecoder_Type, i64 0, i32 0, i32 0, i32 1), align 8, !dbg !1180, !tbaa !786
  %tp_dealloc287 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i64 0, i32 4, !dbg !1180
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc287, align 8, !dbg !1180, !tbaa !803
  tail call void %57(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyIncrementalNewlineDecoder_Type, i64 0, i32 0, i32 0)) #2, !dbg !1180
  br label %do.body.453

if.end.291:                                       ; preds = %if.end.274
  %58 = load %struct._object*, %struct._object** @_PyIO_str_close, align 8, !dbg !1182, !tbaa !769
  %tobool = icmp eq %struct._object* %58, null, !dbg !1182
  br i1 %tobool, label %land.lhs.true, label %if.end.295, !dbg !1182

land.lhs.true:                                    ; preds = %if.end.291
  %call292 = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0)) #2, !dbg !1184
  store %struct._object* %call292, %struct._object** @_PyIO_str_close, align 8, !dbg !1184, !tbaa !769
  %tobool293 = icmp eq %struct._object* %call292, null, !dbg !1184
  br i1 %tobool293, label %do.body.453, label %if.end.295, !dbg !1186

if.end.295:                                       ; preds = %land.lhs.true, %if.end.291
  %59 = load %struct._object*, %struct._object** @_PyIO_str_closed, align 8, !dbg !1187, !tbaa !769
  %tobool296 = icmp eq %struct._object* %59, null, !dbg !1187
  br i1 %tobool296, label %land.lhs.true.297, label %if.end.301, !dbg !1187

land.lhs.true.297:                                ; preds = %if.end.295
  %call298 = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #2, !dbg !1189
  store %struct._object* %call298, %struct._object** @_PyIO_str_closed, align 8, !dbg !1189, !tbaa !769
  %tobool299 = icmp eq %struct._object* %call298, null, !dbg !1189
  br i1 %tobool299, label %do.body.453, label %if.end.301, !dbg !1191

if.end.301:                                       ; preds = %land.lhs.true.297, %if.end.295
  %60 = load %struct._object*, %struct._object** @_PyIO_str_decode, align 8, !dbg !1192, !tbaa !769
  %tobool302 = icmp eq %struct._object* %60, null, !dbg !1192
  br i1 %tobool302, label %land.lhs.true.303, label %if.end.307, !dbg !1192

land.lhs.true.303:                                ; preds = %if.end.301
  %call304 = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0)) #2, !dbg !1194
  store %struct._object* %call304, %struct._object** @_PyIO_str_decode, align 8, !dbg !1194, !tbaa !769
  %tobool305 = icmp eq %struct._object* %call304, null, !dbg !1194
  br i1 %tobool305, label %do.body.453, label %if.end.307, !dbg !1196

if.end.307:                                       ; preds = %land.lhs.true.303, %if.end.301
  %61 = load %struct._object*, %struct._object** @_PyIO_str_encode, align 8, !dbg !1197, !tbaa !769
  %tobool308 = icmp eq %struct._object* %61, null, !dbg !1197
  br i1 %tobool308, label %land.lhs.true.309, label %if.end.313, !dbg !1197

land.lhs.true.309:                                ; preds = %if.end.307
  %call310 = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0)) #2, !dbg !1199
  store %struct._object* %call310, %struct._object** @_PyIO_str_encode, align 8, !dbg !1199, !tbaa !769
  %tobool311 = icmp eq %struct._object* %call310, null, !dbg !1199
  br i1 %tobool311, label %do.body.453, label %if.end.313, !dbg !1201

if.end.313:                                       ; preds = %land.lhs.true.309, %if.end.307
  %62 = load %struct._object*, %struct._object** @_PyIO_str_fileno, align 8, !dbg !1202, !tbaa !769
  %tobool314 = icmp eq %struct._object* %62, null, !dbg !1202
  br i1 %tobool314, label %land.lhs.true.315, label %if.end.319, !dbg !1202

land.lhs.true.315:                                ; preds = %if.end.313
  %call316 = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0)) #2, !dbg !1204
  store %struct._object* %call316, %struct._object** @_PyIO_str_fileno, align 8, !dbg !1204, !tbaa !769
  %tobool317 = icmp eq %struct._object* %call316, null, !dbg !1204
  br i1 %tobool317, label %do.body.453, label %if.end.319, !dbg !1206

if.end.319:                                       ; preds = %land.lhs.true.315, %if.end.313
  %63 = load %struct._object*, %struct._object** @_PyIO_str_flush, align 8, !dbg !1207, !tbaa !769
  %tobool320 = icmp eq %struct._object* %63, null, !dbg !1207
  br i1 %tobool320, label %land.lhs.true.321, label %if.end.325, !dbg !1207

land.lhs.true.321:                                ; preds = %if.end.319
  %call322 = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0)) #2, !dbg !1209
  store %struct._object* %call322, %struct._object** @_PyIO_str_flush, align 8, !dbg !1209, !tbaa !769
  %tobool323 = icmp eq %struct._object* %call322, null, !dbg !1209
  br i1 %tobool323, label %do.body.453, label %if.end.325, !dbg !1211

if.end.325:                                       ; preds = %land.lhs.true.321, %if.end.319
  %64 = load %struct._object*, %struct._object** @_PyIO_str_getstate, align 8, !dbg !1212, !tbaa !769
  %tobool326 = icmp eq %struct._object* %64, null, !dbg !1212
  br i1 %tobool326, label %land.lhs.true.327, label %if.end.331, !dbg !1212

land.lhs.true.327:                                ; preds = %if.end.325
  %call328 = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0)) #2, !dbg !1214
  store %struct._object* %call328, %struct._object** @_PyIO_str_getstate, align 8, !dbg !1214, !tbaa !769
  %tobool329 = icmp eq %struct._object* %call328, null, !dbg !1214
  br i1 %tobool329, label %do.body.453, label %if.end.331, !dbg !1216

if.end.331:                                       ; preds = %land.lhs.true.327, %if.end.325
  %65 = load %struct._object*, %struct._object** @_PyIO_str_isatty, align 8, !dbg !1217, !tbaa !769
  %tobool332 = icmp eq %struct._object* %65, null, !dbg !1217
  br i1 %tobool332, label %land.lhs.true.333, label %if.end.337, !dbg !1217

land.lhs.true.333:                                ; preds = %if.end.331
  %call334 = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0)) #2, !dbg !1219
  store %struct._object* %call334, %struct._object** @_PyIO_str_isatty, align 8, !dbg !1219, !tbaa !769
  %tobool335 = icmp eq %struct._object* %call334, null, !dbg !1219
  br i1 %tobool335, label %do.body.453, label %if.end.337, !dbg !1221

if.end.337:                                       ; preds = %land.lhs.true.333, %if.end.331
  %66 = load %struct._object*, %struct._object** @_PyIO_str_newlines, align 8, !dbg !1222, !tbaa !769
  %tobool338 = icmp eq %struct._object* %66, null, !dbg !1222
  br i1 %tobool338, label %land.lhs.true.339, label %if.end.343, !dbg !1222

land.lhs.true.339:                                ; preds = %if.end.337
  %call340 = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0)) #2, !dbg !1224
  store %struct._object* %call340, %struct._object** @_PyIO_str_newlines, align 8, !dbg !1224, !tbaa !769
  %tobool341 = icmp eq %struct._object* %call340, null, !dbg !1224
  br i1 %tobool341, label %do.body.453, label %if.end.343, !dbg !1226

if.end.343:                                       ; preds = %land.lhs.true.339, %if.end.337
  %67 = load %struct._object*, %struct._object** @_PyIO_str_read, align 8, !dbg !1227, !tbaa !769
  %tobool344 = icmp eq %struct._object* %67, null, !dbg !1227
  br i1 %tobool344, label %land.lhs.true.345, label %if.end.349, !dbg !1227

land.lhs.true.345:                                ; preds = %if.end.343
  %call346 = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0)) #2, !dbg !1229
  store %struct._object* %call346, %struct._object** @_PyIO_str_read, align 8, !dbg !1229, !tbaa !769
  %tobool347 = icmp eq %struct._object* %call346, null, !dbg !1229
  br i1 %tobool347, label %do.body.453, label %if.end.349, !dbg !1231

if.end.349:                                       ; preds = %land.lhs.true.345, %if.end.343
  %68 = load %struct._object*, %struct._object** @_PyIO_str_read1, align 8, !dbg !1232, !tbaa !769
  %tobool350 = icmp eq %struct._object* %68, null, !dbg !1232
  br i1 %tobool350, label %land.lhs.true.351, label %if.end.355, !dbg !1232

land.lhs.true.351:                                ; preds = %if.end.349
  %call352 = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0)) #2, !dbg !1234
  store %struct._object* %call352, %struct._object** @_PyIO_str_read1, align 8, !dbg !1234, !tbaa !769
  %tobool353 = icmp eq %struct._object* %call352, null, !dbg !1234
  br i1 %tobool353, label %do.body.453, label %if.end.355, !dbg !1236

if.end.355:                                       ; preds = %land.lhs.true.351, %if.end.349
  %69 = load %struct._object*, %struct._object** @_PyIO_str_readable, align 8, !dbg !1237, !tbaa !769
  %tobool356 = icmp eq %struct._object* %69, null, !dbg !1237
  br i1 %tobool356, label %land.lhs.true.357, label %if.end.361, !dbg !1237

land.lhs.true.357:                                ; preds = %if.end.355
  %call358 = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0)) #2, !dbg !1239
  store %struct._object* %call358, %struct._object** @_PyIO_str_readable, align 8, !dbg !1239, !tbaa !769
  %tobool359 = icmp eq %struct._object* %call358, null, !dbg !1239
  br i1 %tobool359, label %do.body.453, label %if.end.361, !dbg !1241

if.end.361:                                       ; preds = %land.lhs.true.357, %if.end.355
  %70 = load %struct._object*, %struct._object** @_PyIO_str_readall, align 8, !dbg !1242, !tbaa !769
  %tobool362 = icmp eq %struct._object* %70, null, !dbg !1242
  br i1 %tobool362, label %land.lhs.true.363, label %if.end.367, !dbg !1242

land.lhs.true.363:                                ; preds = %if.end.361
  %call364 = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0)) #2, !dbg !1244
  store %struct._object* %call364, %struct._object** @_PyIO_str_readall, align 8, !dbg !1244, !tbaa !769
  %tobool365 = icmp eq %struct._object* %call364, null, !dbg !1244
  br i1 %tobool365, label %do.body.453, label %if.end.367, !dbg !1246

if.end.367:                                       ; preds = %land.lhs.true.363, %if.end.361
  %71 = load %struct._object*, %struct._object** @_PyIO_str_readinto, align 8, !dbg !1247, !tbaa !769
  %tobool368 = icmp eq %struct._object* %71, null, !dbg !1247
  br i1 %tobool368, label %land.lhs.true.369, label %if.end.373, !dbg !1247

land.lhs.true.369:                                ; preds = %if.end.367
  %call370 = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0)) #2, !dbg !1249
  store %struct._object* %call370, %struct._object** @_PyIO_str_readinto, align 8, !dbg !1249, !tbaa !769
  %tobool371 = icmp eq %struct._object* %call370, null, !dbg !1249
  br i1 %tobool371, label %do.body.453, label %if.end.373, !dbg !1251

if.end.373:                                       ; preds = %land.lhs.true.369, %if.end.367
  %72 = load %struct._object*, %struct._object** @_PyIO_str_readline, align 8, !dbg !1252, !tbaa !769
  %tobool374 = icmp eq %struct._object* %72, null, !dbg !1252
  br i1 %tobool374, label %land.lhs.true.375, label %if.end.379, !dbg !1252

land.lhs.true.375:                                ; preds = %if.end.373
  %call376 = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0)) #2, !dbg !1254
  store %struct._object* %call376, %struct._object** @_PyIO_str_readline, align 8, !dbg !1254, !tbaa !769
  %tobool377 = icmp eq %struct._object* %call376, null, !dbg !1254
  br i1 %tobool377, label %do.body.453, label %if.end.379, !dbg !1256

if.end.379:                                       ; preds = %land.lhs.true.375, %if.end.373
  %73 = load %struct._object*, %struct._object** @_PyIO_str_reset, align 8, !dbg !1257, !tbaa !769
  %tobool380 = icmp eq %struct._object* %73, null, !dbg !1257
  br i1 %tobool380, label %land.lhs.true.381, label %if.end.385, !dbg !1257

land.lhs.true.381:                                ; preds = %if.end.379
  %call382 = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0)) #2, !dbg !1259
  store %struct._object* %call382, %struct._object** @_PyIO_str_reset, align 8, !dbg !1259, !tbaa !769
  %tobool383 = icmp eq %struct._object* %call382, null, !dbg !1259
  br i1 %tobool383, label %do.body.453, label %if.end.385, !dbg !1261

if.end.385:                                       ; preds = %land.lhs.true.381, %if.end.379
  %74 = load %struct._object*, %struct._object** @_PyIO_str_seek, align 8, !dbg !1262, !tbaa !769
  %tobool386 = icmp eq %struct._object* %74, null, !dbg !1262
  br i1 %tobool386, label %land.lhs.true.387, label %if.end.391, !dbg !1262

land.lhs.true.387:                                ; preds = %if.end.385
  %call388 = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0)) #2, !dbg !1264
  store %struct._object* %call388, %struct._object** @_PyIO_str_seek, align 8, !dbg !1264, !tbaa !769
  %tobool389 = icmp eq %struct._object* %call388, null, !dbg !1264
  br i1 %tobool389, label %do.body.453, label %if.end.391, !dbg !1266

if.end.391:                                       ; preds = %land.lhs.true.387, %if.end.385
  %75 = load %struct._object*, %struct._object** @_PyIO_str_seekable, align 8, !dbg !1267, !tbaa !769
  %tobool392 = icmp eq %struct._object* %75, null, !dbg !1267
  br i1 %tobool392, label %land.lhs.true.393, label %if.end.397, !dbg !1267

land.lhs.true.393:                                ; preds = %if.end.391
  %call394 = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i64 0, i64 0)) #2, !dbg !1269
  store %struct._object* %call394, %struct._object** @_PyIO_str_seekable, align 8, !dbg !1269, !tbaa !769
  %tobool395 = icmp eq %struct._object* %call394, null, !dbg !1269
  br i1 %tobool395, label %do.body.453, label %if.end.397, !dbg !1271

if.end.397:                                       ; preds = %land.lhs.true.393, %if.end.391
  %76 = load %struct._object*, %struct._object** @_PyIO_str_setstate, align 8, !dbg !1272, !tbaa !769
  %tobool398 = icmp eq %struct._object* %76, null, !dbg !1272
  br i1 %tobool398, label %land.lhs.true.399, label %if.end.403, !dbg !1272

land.lhs.true.399:                                ; preds = %if.end.397
  %call400 = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0)) #2, !dbg !1274
  store %struct._object* %call400, %struct._object** @_PyIO_str_setstate, align 8, !dbg !1274, !tbaa !769
  %tobool401 = icmp eq %struct._object* %call400, null, !dbg !1274
  br i1 %tobool401, label %do.body.453, label %if.end.403, !dbg !1276

if.end.403:                                       ; preds = %land.lhs.true.399, %if.end.397
  %77 = load %struct._object*, %struct._object** @_PyIO_str_tell, align 8, !dbg !1277, !tbaa !769
  %tobool404 = icmp eq %struct._object* %77, null, !dbg !1277
  br i1 %tobool404, label %land.lhs.true.405, label %if.end.409, !dbg !1277

land.lhs.true.405:                                ; preds = %if.end.403
  %call406 = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0)) #2, !dbg !1279
  store %struct._object* %call406, %struct._object** @_PyIO_str_tell, align 8, !dbg !1279, !tbaa !769
  %tobool407 = icmp eq %struct._object* %call406, null, !dbg !1279
  br i1 %tobool407, label %do.body.453, label %if.end.409, !dbg !1281

if.end.409:                                       ; preds = %land.lhs.true.405, %if.end.403
  %78 = load %struct._object*, %struct._object** @_PyIO_str_truncate, align 8, !dbg !1282, !tbaa !769
  %tobool410 = icmp eq %struct._object* %78, null, !dbg !1282
  br i1 %tobool410, label %land.lhs.true.411, label %if.end.415, !dbg !1282

land.lhs.true.411:                                ; preds = %if.end.409
  %call412 = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i64 0, i64 0)) #2, !dbg !1284
  store %struct._object* %call412, %struct._object** @_PyIO_str_truncate, align 8, !dbg !1284, !tbaa !769
  %tobool413 = icmp eq %struct._object* %call412, null, !dbg !1284
  br i1 %tobool413, label %do.body.453, label %if.end.415, !dbg !1286

if.end.415:                                       ; preds = %land.lhs.true.411, %if.end.409
  %79 = load %struct._object*, %struct._object** @_PyIO_str_write, align 8, !dbg !1287, !tbaa !769
  %tobool416 = icmp eq %struct._object* %79, null, !dbg !1287
  br i1 %tobool416, label %land.lhs.true.417, label %if.end.421, !dbg !1287

land.lhs.true.417:                                ; preds = %if.end.415
  %call418 = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0)) #2, !dbg !1289
  store %struct._object* %call418, %struct._object** @_PyIO_str_write, align 8, !dbg !1289, !tbaa !769
  %tobool419 = icmp eq %struct._object* %call418, null, !dbg !1289
  br i1 %tobool419, label %do.body.453, label %if.end.421, !dbg !1291

if.end.421:                                       ; preds = %land.lhs.true.417, %if.end.415
  %80 = load %struct._object*, %struct._object** @_PyIO_str_writable, align 8, !dbg !1292, !tbaa !769
  %tobool422 = icmp eq %struct._object* %80, null, !dbg !1292
  br i1 %tobool422, label %land.lhs.true.423, label %if.end.427, !dbg !1292

land.lhs.true.423:                                ; preds = %if.end.421
  %call424 = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i64 0, i64 0)) #2, !dbg !1294
  store %struct._object* %call424, %struct._object** @_PyIO_str_writable, align 8, !dbg !1294, !tbaa !769
  %tobool425 = icmp eq %struct._object* %call424, null, !dbg !1294
  br i1 %tobool425, label %do.body.453, label %if.end.427, !dbg !1296

if.end.427:                                       ; preds = %land.lhs.true.423, %if.end.421
  %81 = load %struct._object*, %struct._object** @_PyIO_str_nl, align 8, !dbg !1297, !tbaa !769
  %tobool428 = icmp eq %struct._object* %81, null, !dbg !1297
  br i1 %tobool428, label %land.lhs.true.429, label %if.end.433, !dbg !1299

land.lhs.true.429:                                ; preds = %if.end.427
  %call430 = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0)) #2, !dbg !1300
  store %struct._object* %call430, %struct._object** @_PyIO_str_nl, align 8, !dbg !1301, !tbaa !769
  %tobool431 = icmp eq %struct._object* %call430, null, !dbg !1301
  br i1 %tobool431, label %do.body.453, label %if.end.433, !dbg !1302

if.end.433:                                       ; preds = %land.lhs.true.429, %if.end.427
  %82 = load %struct._object*, %struct._object** @_PyIO_empty_str, align 8, !dbg !1303, !tbaa !769
  %tobool434 = icmp eq %struct._object* %82, null, !dbg !1303
  br i1 %tobool434, label %land.lhs.true.435, label %if.end.439, !dbg !1305

land.lhs.true.435:                                ; preds = %if.end.433
  %call436 = tail call %struct._object* @PyUnicode_FromStringAndSize(i8* null, i64 0) #2, !dbg !1306
  store %struct._object* %call436, %struct._object** @_PyIO_empty_str, align 8, !dbg !1307, !tbaa !769
  %tobool437 = icmp eq %struct._object* %call436, null, !dbg !1307
  br i1 %tobool437, label %do.body.453, label %if.end.439, !dbg !1308

if.end.439:                                       ; preds = %land.lhs.true.435, %if.end.433
  %83 = load %struct._object*, %struct._object** @_PyIO_empty_bytes, align 8, !dbg !1309, !tbaa !769
  %tobool440 = icmp eq %struct._object* %83, null, !dbg !1309
  br i1 %tobool440, label %land.lhs.true.441, label %if.end.445, !dbg !1311

land.lhs.true.441:                                ; preds = %if.end.439
  %call442 = tail call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 0) #2, !dbg !1312
  store %struct._object* %call442, %struct._object** @_PyIO_empty_bytes, align 8, !dbg !1313, !tbaa !769
  %tobool443 = icmp eq %struct._object* %call442, null, !dbg !1313
  br i1 %tobool443, label %do.body.453, label %if.end.445, !dbg !1314

if.end.445:                                       ; preds = %land.lhs.true.441, %if.end.439
  %84 = load %struct._object*, %struct._object** @_PyIO_zero, align 8, !dbg !1315, !tbaa !769
  %tobool446 = icmp eq %struct._object* %84, null, !dbg !1315
  br i1 %tobool446, label %land.lhs.true.447, label %if.end.451, !dbg !1317

land.lhs.true.447:                                ; preds = %if.end.445
  %call448 = tail call %struct._object* @PyLong_FromLong(i64 0) #2, !dbg !1318
  store %struct._object* %call448, %struct._object** @_PyIO_zero, align 8, !dbg !1319, !tbaa !769
  %tobool449 = icmp eq %struct._object* %call448, null, !dbg !1319
  br i1 %tobool449, label %do.body.453, label %if.end.451, !dbg !1320

if.end.451:                                       ; preds = %land.lhs.true.447, %if.end.445
  store i32 1, i32* %initialized, align 4, !dbg !1321, !tbaa !899
  br label %cleanup, !dbg !1322

do.body.453:                                      ; preds = %if.end.do.body.453_crit_edge, %if.else.285, %do.body.279, %if.else.264, %do.body.258, %if.else.243, %do.body.237, %if.else.222, %do.body.216, %if.else.201, %do.body.195, %if.else.180, %do.body.174, %if.else.159, %do.body.153, %if.else.134, %do.body.128, %if.else.113, %do.body.107, %if.else.92, %do.body.86, %if.else.71, %do.body.65, %if.else.50, %do.body.44, %if.else, %do.body, %land.lhs.true.447, %land.lhs.true.441, %land.lhs.true.435, %land.lhs.true.429, %land.lhs.true.423, %land.lhs.true.417, %land.lhs.true.411, %land.lhs.true.405, %land.lhs.true.399, %land.lhs.true.393, %land.lhs.true.387, %land.lhs.true.381, %land.lhs.true.375, %land.lhs.true.369, %land.lhs.true.363, %land.lhs.true.357, %land.lhs.true.351, %land.lhs.true.345, %land.lhs.true.339, %land.lhs.true.333, %land.lhs.true.327, %land.lhs.true.321, %land.lhs.true.315, %land.lhs.true.309, %land.lhs.true.303, %land.lhs.true.297, %land.lhs.true, %if.end.5, %if.end.10, %if.end.16, %if.end.22, %if.end.35, %if.end.56, %if.end.77, %if.end.98, %if.end.119, %if.end.140, %if.end.144, %if.end.165, %if.end.186, %if.end.207, %if.end.228, %if.end.249, %if.end.270
  %.pre-phi = phi %struct._object** [ %.pre559, %if.end.do.body.453_crit_edge ], [ %2, %if.else.285 ], [ %2, %do.body.279 ], [ %2, %if.else.264 ], [ %2, %do.body.258 ], [ %2, %if.else.243 ], [ %2, %do.body.237 ], [ %2, %if.else.222 ], [ %2, %do.body.216 ], [ %2, %if.else.201 ], [ %2, %do.body.195 ], [ %2, %if.else.180 ], [ %2, %do.body.174 ], [ %2, %if.else.159 ], [ %2, %do.body.153 ], [ %2, %if.else.134 ], [ %2, %do.body.128 ], [ %2, %if.else.113 ], [ %2, %do.body.107 ], [ %2, %if.else.92 ], [ %2, %do.body.86 ], [ %2, %if.else.71 ], [ %2, %do.body.65 ], [ %2, %if.else.50 ], [ %2, %do.body.44 ], [ %2, %if.else ], [ %2, %do.body ], [ %2, %land.lhs.true.447 ], [ %2, %land.lhs.true.441 ], [ %2, %land.lhs.true.435 ], [ %2, %land.lhs.true.429 ], [ %2, %land.lhs.true.423 ], [ %2, %land.lhs.true.417 ], [ %2, %land.lhs.true.411 ], [ %2, %land.lhs.true.405 ], [ %2, %land.lhs.true.399 ], [ %2, %land.lhs.true.393 ], [ %2, %land.lhs.true.387 ], [ %2, %land.lhs.true.381 ], [ %2, %land.lhs.true.375 ], [ %2, %land.lhs.true.369 ], [ %2, %land.lhs.true.363 ], [ %2, %land.lhs.true.357 ], [ %2, %land.lhs.true.351 ], [ %2, %land.lhs.true.345 ], [ %2, %land.lhs.true.339 ], [ %2, %land.lhs.true.333 ], [ %2, %land.lhs.true.327 ], [ %2, %land.lhs.true.321 ], [ %2, %land.lhs.true.315 ], [ %2, %land.lhs.true.309 ], [ %2, %land.lhs.true.303 ], [ %2, %land.lhs.true.297 ], [ %2, %land.lhs.true ], [ %2, %if.end.5 ], [ %2, %if.end.10 ], [ %2, %if.end.16 ], [ %2, %if.end.22 ], [ %2, %if.end.35 ], [ %2, %if.end.56 ], [ %2, %if.end.77 ], [ %2, %if.end.98 ], [ %2, %if.end.119 ], [ %2, %if.end.140 ], [ %2, %if.end.144 ], [ %2, %if.end.165 ], [ %2, %if.end.186 ], [ %2, %if.end.207 ], [ %2, %if.end.228 ], [ %2, %if.end.249 ], [ %2, %if.end.270 ], !dbg !992
  %85 = load %struct._object*, %struct._object** %.pre-phi, align 8, !dbg !992, !tbaa !911
  tail call void @llvm.dbg.value(metadata %struct._object* %85, i64 0, metadata !470, metadata !749), !dbg !992
  %cmp455 = icmp eq %struct._object* %85, null, !dbg !1323
  br i1 %cmp455, label %if.end.469, label %do.body.457, !dbg !1324

do.body.457:                                      ; preds = %do.body.453
  tail call void @llvm.dbg.value(metadata %struct._object* %85, i64 0, metadata !472, metadata !749), !dbg !1325
  %ob_refcnt459 = getelementptr inbounds %struct._object, %struct._object* %85, i64 0, i32 0, !dbg !1327
  %86 = load i64, i64* %ob_refcnt459, align 8, !dbg !1327, !tbaa !799
  %dec460 = add i64 %86, -1, !dbg !1327
  store i64 %dec460, i64* %ob_refcnt459, align 8, !dbg !1327, !tbaa !799
  %cmp461 = icmp eq i64 %dec460, 0, !dbg !1327
  br i1 %cmp461, label %if.else.463, label %if.end.469, !dbg !1329

if.else.463:                                      ; preds = %do.body.457
  %ob_type464 = getelementptr inbounds %struct._object, %struct._object* %85, i64 0, i32 1, !dbg !1330
  %87 = load %struct._typeobject*, %struct._typeobject** %ob_type464, align 8, !dbg !1330, !tbaa !786
  %tp_dealloc465 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %87, i64 0, i32 4, !dbg !1330
  %88 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc465, align 8, !dbg !1330, !tbaa !803
  tail call void %88(%struct._object* %85) #2, !dbg !1330
  br label %if.end.469

if.end.469:                                       ; preds = %if.else.463, %do.body.457, %do.body.453
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !475, metadata !749), !dbg !1332
  %ob_refcnt474 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1334
  %89 = load i64, i64* %ob_refcnt474, align 8, !dbg !1334, !tbaa !799
  %dec475 = add i64 %89, -1, !dbg !1334
  store i64 %dec475, i64* %ob_refcnt474, align 8, !dbg !1334, !tbaa !799
  %cmp476 = icmp eq i64 %dec475, 0, !dbg !1334
  br i1 %cmp476, label %if.else.478, label %cleanup, !dbg !1336

if.else.478:                                      ; preds = %if.end.469
  %ob_type479 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1337
  %90 = load %struct._typeobject*, %struct._typeobject** %ob_type479, align 8, !dbg !1337, !tbaa !786
  %tp_dealloc480 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %90, i64 0, i32 4, !dbg !1337
  %91 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc480, align 8, !dbg !1337, !tbaa !803
  tail call void %91(%struct._object* %call) #2, !dbg !1337
  br label %cleanup

cleanup:                                          ; preds = %if.else.478, %if.end.469, %entry, %if.end.451
  %retval.0 = phi %struct._object* [ %call, %if.end.451 ], [ null, %entry ], [ null, %if.end.469 ], [ null, %if.else.478 ]
  ret %struct._object* %retval.0, !dbg !1339
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #3

declare i32 @PyModule_AddIntConstant(%struct._object*, i8*, i64) #3

declare %struct._object* @_PyObject_CallFunction_SizeT(%struct._object*, i8*, ...) #3

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #3

declare i32 @PyType_Ready(%struct._typeobject*) #3

declare %struct._object* @PyUnicode_InternFromString(i8*) #3

declare %struct._object* @PyUnicode_FromStringAndSize(i8*, i64) #3

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #3

declare %struct._object* @PyLong_FromLong(i64) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @io_open(%struct._object* nocapture readnone %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %kwlist = alloca [9 x i8*], align 16
  %file = alloca %struct._object*, align 8
  %opener = alloca %struct._object*, align 8
  %mode = alloca i8*, align 8
  %buffering = alloca i32, align 4
  %closefd = alloca i32, align 4
  %encoding = alloca i8*, align 8
  %errors = alloca i8*, align 8
  %newline = alloca i8*, align 8
  %rawmode = alloca [6 x i8], align 1
  %st = alloca %struct.stat, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !479, metadata !749), !dbg !1340
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !480, metadata !749), !dbg !1341
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !481, metadata !749), !dbg !1342
  %0 = bitcast [9 x i8*]* %kwlist to i8*, !dbg !1343
  call void @llvm.lifetime.start(i64 72, i8* %0) #2, !dbg !1343
  tail call void @llvm.dbg.declare(metadata [9 x i8*]* %kwlist, metadata !482, metadata !749), !dbg !1344
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([9 x i8*]* @io_open.kwlist to i8*), i64 72, i32 16, i1 false), !dbg !1344
  %1 = bitcast %struct._object** %file to i8*, !dbg !1345
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1345
  %2 = bitcast %struct._object** %opener to i8*, !dbg !1345
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1345
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !487, metadata !749), !dbg !1346
  store %struct._object* @_Py_NoneStruct, %struct._object** %opener, align 8, !dbg !1346, !tbaa !769
  %3 = bitcast i8** %mode to i8*, !dbg !1347
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1347
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !488, metadata !749), !dbg !1348
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0), i8** %mode, align 8, !dbg !1348, !tbaa !769
  %4 = bitcast i32* %buffering to i8*, !dbg !1349
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !1349
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !489, metadata !749), !dbg !1350
  store i32 -1, i32* %buffering, align 4, !dbg !1350, !tbaa !1351
  %5 = bitcast i32* %closefd to i8*, !dbg !1349
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !1349
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !490, metadata !749), !dbg !1352
  store i32 1, i32* %closefd, align 4, !dbg !1352, !tbaa !1351
  %6 = bitcast i8** %encoding to i8*, !dbg !1353
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !1353
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !491, metadata !749), !dbg !1354
  store i8* null, i8** %encoding, align 8, !dbg !1354, !tbaa !769
  %7 = bitcast i8** %errors to i8*, !dbg !1353
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !1353
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !492, metadata !749), !dbg !1355
  store i8* null, i8** %errors, align 8, !dbg !1355, !tbaa !769
  %8 = bitcast i8** %newline to i8*, !dbg !1353
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !1353
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !493, metadata !749), !dbg !1356
  store i8* null, i8** %newline, align 8, !dbg !1356, !tbaa !769
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !495, metadata !749), !dbg !1357
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !496, metadata !749), !dbg !1358
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !497, metadata !749), !dbg !1359
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !498, metadata !749), !dbg !1360
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !499, metadata !749), !dbg !1361
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !500, metadata !749), !dbg !1362
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !501, metadata !749), !dbg !1363
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !502, metadata !749), !dbg !1364
  %9 = getelementptr inbounds [6 x i8], [6 x i8]* %rawmode, i64 0, i64 0, !dbg !1365
  call void @llvm.lifetime.start(i64 6, i8* %9) #2, !dbg !1365
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %rawmode, metadata !503, metadata !749), !dbg !1366
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !511, metadata !749), !dbg !1367
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !512, metadata !749), !dbg !1368
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !513, metadata !749), !dbg !1369
  %arraydecay = getelementptr inbounds [9 x i8*], [9 x i8*]* %kwlist, i64 0, i64 0, !dbg !1370
  tail call void @llvm.dbg.value(metadata %struct._object** %file, i64 0, metadata !486, metadata !749), !dbg !1372
  tail call void @llvm.dbg.value(metadata %struct._object** %opener, i64 0, metadata !487, metadata !749), !dbg !1346
  tail call void @llvm.dbg.value(metadata i8** %mode, i64 0, metadata !488, metadata !749), !dbg !1348
  tail call void @llvm.dbg.value(metadata i32* %buffering, i64 0, metadata !489, metadata !749), !dbg !1350
  tail call void @llvm.dbg.value(metadata i32* %closefd, i64 0, metadata !490, metadata !749), !dbg !1352
  tail call void @llvm.dbg.value(metadata i8** %encoding, i64 0, metadata !491, metadata !749), !dbg !1354
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !492, metadata !749), !dbg !1355
  tail call void @llvm.dbg.value(metadata i8** %newline, i64 0, metadata !493, metadata !749), !dbg !1356
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %args, %struct._object* %kwds, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i64 0, i64 0), i8** %arraydecay, %struct._object** nonnull %file, i8** nonnull %mode, i32* nonnull %buffering, i8** nonnull %encoding, i8** nonnull %errors, i8** nonnull %newline, i32* nonnull %closefd, %struct._object** nonnull %opener) #2, !dbg !1373
  %tobool = icmp eq i32 %call, 0, !dbg !1373
  br i1 %tobool, label %cleanup.402, label %if.end, !dbg !1374

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %file, i64 0, metadata !486, metadata !749), !dbg !1372
  %10 = load %struct._object*, %struct._object** %file, align 8, !dbg !1375, !tbaa !769
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 1, !dbg !1375
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1375, !tbaa !786
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 19, !dbg !1375
  %12 = load i64, i64* %tp_flags, align 8, !dbg !1375, !tbaa !1377
  %13 = and i64 %12, 402653184, !dbg !1378
  %14 = icmp eq i64 %13, 0, !dbg !1378
  br i1 %14, label %land.lhs.true.5, label %for.cond.preheader, !dbg !1378

for.cond.preheader:                               ; preds = %land.lhs.true.5, %if.end
  call void @llvm.dbg.value(metadata i8** %mode, i64 0, metadata !488, metadata !749), !dbg !1348
  %15 = load i8*, i8** %mode, align 8, !dbg !1379, !tbaa !769
  %strlenfirst = load i8, i8* %15, align 1, !dbg !1382
  %cmp12.585 = icmp eq i8 %strlenfirst, 0, !dbg !1383
  br i1 %cmp12.585, label %if.end.70.thread, label %for.body.preheader, !dbg !1384

for.body.preheader:                               ; preds = %for.cond.preheader
  br label %for.body, !dbg !1385

if.end.70.thread:                                 ; preds = %for.cond.preheader
  call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !507, metadata !749), !dbg !1386
  store i8 0, i8* %9, align 1, !dbg !1387, !tbaa !1388
  br label %if.end.75, !dbg !1389

land.lhs.true.5:                                  ; preds = %if.end
  %call6 = call i32 @PyNumber_Check(%struct._object* %10) #2, !dbg !1391
  %tobool7 = icmp eq i32 %call6, 0, !dbg !1391
  br i1 %tobool7, label %if.then.8, label %for.cond.preheader, !dbg !1392

if.then.8:                                        ; preds = %land.lhs.true.5
  %16 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1393, !tbaa !769
  call void @llvm.dbg.value(metadata %struct._object** %file, i64 0, metadata !486, metadata !749), !dbg !1372
  %17 = load %struct._object*, %struct._object** %file, align 8, !dbg !1395, !tbaa !769
  %call9 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), %struct._object* %17) #2, !dbg !1396
  br label %cleanup.402, !dbg !1397

for.cond:                                         ; preds = %cond.false
  %conv = zext i32 %inc to i64, !dbg !1398
  call void @llvm.dbg.value(metadata i8** %mode, i64 0, metadata !488, metadata !749), !dbg !1348
  %call11 = call i64 @strlen(i8* %15) #6, !dbg !1382
  %cmp12 = icmp ult i64 %conv, %call11, !dbg !1383
  br i1 %cmp12, label %for.cond.for.body_crit_edge, label %for.end, !dbg !1384

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  %arrayidx.phi.trans.insert = getelementptr i8, i8* %15, i64 %conv, !dbg !1385
  %.pre = load i8, i8* %arrayidx.phi.trans.insert, align 1, !dbg !1385, !tbaa !1388
  br label %for.body, !dbg !1384

for.body:                                         ; preds = %for.body.preheader, %for.cond.for.body_crit_edge
  %18 = phi i8 [ %.pre, %for.cond.for.body_crit_edge ], [ %strlenfirst, %for.body.preheader ], !dbg !1385
  %conv595 = phi i64 [ %conv, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.0594 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %creating.0593 = phi i32 [ %creating.1, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %reading.0592 = phi i32 [ %reading.1, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %writing.0591 = phi i32 [ %writing.1, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %appending.0590 = phi i32 [ %appending.1, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %updating.0589 = phi i32 [ %updating.1, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %text.0588 = phi i32 [ %text.1, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %binary.0587 = phi i32 [ %binary.1, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %universal.0586 = phi i32 [ %universal.1, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i8, i8* %15, i64 %conv595, !dbg !1385
  call void @llvm.dbg.value(metadata i8 %18, i64 0, metadata !514, metadata !749), !dbg !1401
  %conv14 = sext i8 %18 to i32, !dbg !1402
  switch i32 %conv14, label %cleanup [
    i32 120, label %cond.false
    i32 114, label %sw.bb.15
    i32 119, label %sw.bb.16
    i32 97, label %sw.bb.17
    i32 43, label %sw.bb.18
    i32 116, label %sw.bb.19
    i32 98, label %sw.bb.20
    i32 85, label %sw.bb.21
  ], !dbg !1403

sw.bb.15:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !496, metadata !749), !dbg !1358
  br label %cond.false, !dbg !1404

sw.bb.16:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !497, metadata !749), !dbg !1359
  br label %cond.false, !dbg !1406

sw.bb.17:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !498, metadata !749), !dbg !1360
  br label %cond.false, !dbg !1407

sw.bb.18:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !499, metadata !749), !dbg !1361
  br label %cond.false, !dbg !1408

sw.bb.19:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !500, metadata !749), !dbg !1362
  br label %cond.false, !dbg !1409

sw.bb.20:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !501, metadata !749), !dbg !1363
  br label %cond.false, !dbg !1410

sw.bb.21:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !502, metadata !749), !dbg !1364
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !496, metadata !749), !dbg !1358
  br label %cond.false, !dbg !1411

cond.false:                                       ; preds = %for.body, %sw.bb.15, %sw.bb.16, %sw.bb.17, %sw.bb.18, %sw.bb.19, %sw.bb.20, %sw.bb.21
  %universal.1 = phi i32 [ 1, %sw.bb.21 ], [ %universal.0586, %sw.bb.20 ], [ %universal.0586, %sw.bb.19 ], [ %universal.0586, %sw.bb.18 ], [ %universal.0586, %sw.bb.17 ], [ %universal.0586, %sw.bb.16 ], [ %universal.0586, %sw.bb.15 ], [ %universal.0586, %for.body ]
  %binary.1 = phi i32 [ %binary.0587, %sw.bb.21 ], [ 1, %sw.bb.20 ], [ %binary.0587, %sw.bb.19 ], [ %binary.0587, %sw.bb.18 ], [ %binary.0587, %sw.bb.17 ], [ %binary.0587, %sw.bb.16 ], [ %binary.0587, %sw.bb.15 ], [ %binary.0587, %for.body ]
  %text.1 = phi i32 [ %text.0588, %sw.bb.21 ], [ %text.0588, %sw.bb.20 ], [ 1, %sw.bb.19 ], [ %text.0588, %sw.bb.18 ], [ %text.0588, %sw.bb.17 ], [ %text.0588, %sw.bb.16 ], [ %text.0588, %sw.bb.15 ], [ %text.0588, %for.body ]
  %updating.1 = phi i32 [ %updating.0589, %sw.bb.21 ], [ %updating.0589, %sw.bb.20 ], [ %updating.0589, %sw.bb.19 ], [ 1, %sw.bb.18 ], [ %updating.0589, %sw.bb.17 ], [ %updating.0589, %sw.bb.16 ], [ %updating.0589, %sw.bb.15 ], [ %updating.0589, %for.body ]
  %appending.1 = phi i32 [ %appending.0590, %sw.bb.21 ], [ %appending.0590, %sw.bb.20 ], [ %appending.0590, %sw.bb.19 ], [ %appending.0590, %sw.bb.18 ], [ 1, %sw.bb.17 ], [ %appending.0590, %sw.bb.16 ], [ %appending.0590, %sw.bb.15 ], [ %appending.0590, %for.body ]
  %writing.1 = phi i32 [ %writing.0591, %sw.bb.21 ], [ %writing.0591, %sw.bb.20 ], [ %writing.0591, %sw.bb.19 ], [ %writing.0591, %sw.bb.18 ], [ %writing.0591, %sw.bb.17 ], [ 1, %sw.bb.16 ], [ %writing.0591, %sw.bb.15 ], [ %writing.0591, %for.body ]
  %reading.1 = phi i32 [ 1, %sw.bb.21 ], [ %reading.0592, %sw.bb.20 ], [ %reading.0592, %sw.bb.19 ], [ %reading.0592, %sw.bb.18 ], [ %reading.0592, %sw.bb.17 ], [ %reading.0592, %sw.bb.16 ], [ 1, %sw.bb.15 ], [ %reading.0592, %for.body ]
  %creating.1 = phi i32 [ %creating.0593, %sw.bb.21 ], [ %creating.0593, %sw.bb.20 ], [ %creating.0593, %sw.bb.19 ], [ %creating.0593, %sw.bb.18 ], [ %creating.0593, %sw.bb.17 ], [ %creating.0593, %sw.bb.16 ], [ %creating.0593, %sw.bb.15 ], [ 1, %for.body ]
  call void @llvm.dbg.value(metadata i8** %mode, i64 0, metadata !488, metadata !749), !dbg !1348
  %add.ptr32 = getelementptr i8, i8* %arrayidx, i64 1, !dbg !1412
  %call34 = call i8* @strchr(i8* %add.ptr32, i32 %conv14) #2, !dbg !1412
  %tobool35 = icmp eq i8* %call34, null, !dbg !1412
  %inc = add i32 %i.0594, 1, !dbg !1415
  call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !494, metadata !749), !dbg !1416
  br i1 %tobool35, label %for.cond, label %cleanup, !dbg !1417

cleanup:                                          ; preds = %for.body, %cond.false
  %19 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1418, !tbaa !769
  call void @llvm.dbg.value(metadata i8** %mode, i64 0, metadata !488, metadata !749), !dbg !1348
  %call37 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i64 0, i64 0), i8* %15) #2, !dbg !1419
  br label %cleanup.402

for.end:                                          ; preds = %for.cond
  %creating.1.lcssa = phi i32 [ %creating.1, %for.cond ]
  %reading.1.lcssa = phi i32 [ %reading.1, %for.cond ]
  %writing.1.lcssa = phi i32 [ %writing.1, %for.cond ]
  %appending.1.lcssa = phi i32 [ %appending.1, %for.cond ]
  %updating.1.lcssa = phi i32 [ %updating.1, %for.cond ]
  %text.1.lcssa = phi i32 [ %text.1, %for.cond ]
  %binary.1.lcssa = phi i32 [ %binary.1, %for.cond ]
  %universal.1.lcssa = phi i32 [ %universal.1, %for.cond ]
  call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !507, metadata !749), !dbg !1386
  %tobool40 = icmp eq i32 %creating.1.lcssa, 0, !dbg !1420
  br i1 %tobool40, label %if.end.42, label %if.then.41, !dbg !1422

if.then.41:                                       ; preds = %for.end
  %incdec.ptr = getelementptr [6 x i8], [6 x i8]* %rawmode, i64 0, i64 1, !dbg !1423
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !507, metadata !749), !dbg !1386
  store i8 120, i8* %9, align 1, !dbg !1425, !tbaa !1388
  br label %if.end.42, !dbg !1426

if.end.42:                                        ; preds = %for.end, %if.then.41
  %creating.0.lcssa604 = phi i32 [ %creating.1.lcssa, %if.then.41 ], [ 0, %for.end ]
  %20 = phi i64 [ 1, %if.then.41 ], [ 0, %for.end ]
  %m.0 = phi i8* [ %incdec.ptr, %if.then.41 ], [ %9, %for.end ]
  %tobool43 = icmp eq i32 %reading.1.lcssa, 0, !dbg !1427
  br i1 %tobool43, label %if.end.46, label %if.then.44, !dbg !1429

if.then.44:                                       ; preds = %if.end.42
  %21 = getelementptr [6 x i8], [6 x i8]* %rawmode, i64 0, i64 %20, !dbg !1423
  %incdec.ptr45 = getelementptr i8, i8* %21, i64 1, !dbg !1430
  call void @llvm.dbg.value(metadata i8* %incdec.ptr45, i64 0, metadata !507, metadata !749), !dbg !1386
  store i8 114, i8* %m.0, align 1, !dbg !1432, !tbaa !1388
  br label %if.end.46, !dbg !1433

if.end.46:                                        ; preds = %if.end.42, %if.then.44
  %reading.0.lcssa605619 = phi i32 [ %reading.1.lcssa, %if.then.44 ], [ 0, %if.end.42 ]
  %m.1 = phi i8* [ %incdec.ptr45, %if.then.44 ], [ %m.0, %if.end.42 ]
  %tobool47 = icmp eq i32 %writing.1.lcssa, 0, !dbg !1434
  br i1 %tobool47, label %if.end.50, label %if.then.48, !dbg !1436

if.then.48:                                       ; preds = %if.end.46
  %incdec.ptr49 = getelementptr i8, i8* %m.1, i64 1, !dbg !1437
  call void @llvm.dbg.value(metadata i8* %incdec.ptr49, i64 0, metadata !507, metadata !749), !dbg !1386
  store i8 119, i8* %m.1, align 1, !dbg !1439, !tbaa !1388
  br label %if.end.50, !dbg !1440

if.end.50:                                        ; preds = %if.end.46, %if.then.48
  %writing.0.lcssa606618624 = phi i32 [ %writing.1.lcssa, %if.then.48 ], [ 0, %if.end.46 ]
  %m.2 = phi i8* [ %incdec.ptr49, %if.then.48 ], [ %m.1, %if.end.46 ]
  %tobool51 = icmp eq i32 %appending.1.lcssa, 0, !dbg !1441
  br i1 %tobool51, label %if.end.54, label %if.then.52, !dbg !1443

if.then.52:                                       ; preds = %if.end.50
  %incdec.ptr53 = getelementptr i8, i8* %m.2, i64 1, !dbg !1444
  call void @llvm.dbg.value(metadata i8* %incdec.ptr53, i64 0, metadata !507, metadata !749), !dbg !1386
  store i8 97, i8* %m.2, align 1, !dbg !1446, !tbaa !1388
  br label %if.end.54, !dbg !1447

if.end.54:                                        ; preds = %if.end.50, %if.then.52
  %appending.0.lcssa607617625635 = phi i32 [ %appending.1.lcssa, %if.then.52 ], [ 0, %if.end.50 ]
  %m.3 = phi i8* [ %incdec.ptr53, %if.then.52 ], [ %m.2, %if.end.50 ]
  %tobool55 = icmp eq i32 %updating.1.lcssa, 0, !dbg !1448
  br i1 %tobool55, label %if.end.58, label %if.then.56, !dbg !1450

if.then.56:                                       ; preds = %if.end.54
  %incdec.ptr57 = getelementptr i8, i8* %m.3, i64 1, !dbg !1451
  call void @llvm.dbg.value(metadata i8* %incdec.ptr57, i64 0, metadata !507, metadata !749), !dbg !1386
  store i8 43, i8* %m.3, align 1, !dbg !1453, !tbaa !1388
  br label %if.end.58, !dbg !1454

if.end.58:                                        ; preds = %if.end.54, %if.then.56
  %tobool55647 = phi i1 [ true, %if.then.56 ], [ false, %if.end.54 ]
  %m.4 = phi i8* [ %incdec.ptr57, %if.then.56 ], [ %m.3, %if.end.54 ]
  store i8 0, i8* %m.4, align 1, !dbg !1387, !tbaa !1388
  %tobool59 = icmp eq i32 %universal.1.lcssa, 0, !dbg !1455
  br i1 %tobool59, label %if.end.70, label %if.then.60, !dbg !1457

if.then.60:                                       ; preds = %if.end.58
  %22 = or i32 %writing.0.lcssa606618624, %appending.0.lcssa607617625635, !dbg !1458
  %23 = icmp eq i32 %22, 0, !dbg !1458
  br i1 %23, label %if.end.64, label %if.then.63, !dbg !1458

if.then.63:                                       ; preds = %if.then.60
  %24 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1461, !tbaa !769
  call void @PyErr_SetString(%struct._object* %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.59, i64 0, i64 0)) #2, !dbg !1463
  br label %cleanup.402, !dbg !1464

if.end.64:                                        ; preds = %if.then.60
  %25 = load %struct._object*, %struct._object** @PyExc_DeprecationWarning, align 8, !dbg !1465, !tbaa !769
  %call65 = call i32 @PyErr_WarnEx(%struct._object* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.60, i64 0, i64 0), i64 1) #2, !dbg !1467
  %cmp66 = icmp slt i32 %call65, 0, !dbg !1468
  br i1 %cmp66, label %cleanup.402, label %if.end.70, !dbg !1469

if.end.70:                                        ; preds = %if.end.64, %if.end.58
  %reading.4 = phi i32 [ %reading.0.lcssa605619, %if.end.58 ], [ 1, %if.end.64 ]
  %tobool71 = icmp ne i32 %text.1.lcssa, 0, !dbg !1470
  %tobool73 = icmp ne i32 %binary.1.lcssa, 0, !dbg !1471
  %or.cond428 = and i1 %tobool73, %tobool71, !dbg !1389
  br i1 %or.cond428, label %if.then.74, label %if.end.75, !dbg !1389

if.then.74:                                       ; preds = %if.end.70
  %26 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1473, !tbaa !769
  call void @PyErr_SetString(%struct._object* %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.61, i64 0, i64 0)) #2, !dbg !1475
  br label %cleanup.402, !dbg !1476

if.end.75:                                        ; preds = %if.end.70.thread, %if.end.70
  %tobool73663 = phi i1 [ false, %if.end.70.thread ], [ %tobool73, %if.end.70 ]
  %reading.4662 = phi i32 [ 0, %if.end.70.thread ], [ %reading.4, %if.end.70 ]
  %tobool55647649661 = phi i1 [ false, %if.end.70.thread ], [ %tobool55647, %if.end.70 ]
  %appending.0.lcssa607617625635643652660 = phi i32 [ 0, %if.end.70.thread ], [ %appending.0.lcssa607617625635, %if.end.70 ]
  %writing.0.lcssa606618624636642653659 = phi i32 [ 0, %if.end.70.thread ], [ %writing.0.lcssa606618624, %if.end.70 ]
  %creating.0.lcssa604620622638640654658 = phi i32 [ 0, %if.end.70.thread ], [ %creating.0.lcssa604, %if.end.70 ]
  %add = add i32 %writing.0.lcssa606618624636642653659, %appending.0.lcssa607617625635643652660, !dbg !1477
  %add76 = add i32 %add, %creating.0.lcssa604620622638640654658, !dbg !1479
  %add77 = add i32 %add76, %reading.4662, !dbg !1480
  %cmp78 = icmp sgt i32 %add77, 1, !dbg !1481
  br i1 %cmp78, label %if.then.80, label %if.end.81, !dbg !1482

if.then.80:                                       ; preds = %if.end.75
  %27 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1483, !tbaa !769
  call void @PyErr_SetString(%struct._object* %27, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.62, i64 0, i64 0)) #2, !dbg !1485
  br label %cleanup.402, !dbg !1486

if.end.81:                                        ; preds = %if.end.75
  call void @llvm.dbg.value(metadata i8** %encoding, i64 0, metadata !491, metadata !749), !dbg !1354
  %28 = load i8*, i8** %encoding, align 8
  %cmp84 = icmp ne i8* %28, null, !dbg !1487
  %or.cond429 = and i1 %tobool73663, %cmp84, !dbg !1489
  br i1 %or.cond429, label %if.then.86, label %if.end.87, !dbg !1489

if.then.86:                                       ; preds = %if.end.81
  %29 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1490, !tbaa !769
  call void @PyErr_SetString(%struct._object* %29, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.63, i64 0, i64 0)) #2, !dbg !1492
  br label %cleanup.402, !dbg !1493

if.end.87:                                        ; preds = %if.end.81
  call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !492, metadata !749), !dbg !1355
  %30 = load i8*, i8** %errors, align 8
  %cmp90 = icmp ne i8* %30, null, !dbg !1494
  %or.cond430 = and i1 %tobool73663, %cmp90, !dbg !1496
  br i1 %or.cond430, label %if.then.92, label %if.end.93, !dbg !1496

if.then.92:                                       ; preds = %if.end.87
  %31 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1497, !tbaa !769
  call void @PyErr_SetString(%struct._object* %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.64, i64 0, i64 0)) #2, !dbg !1499
  br label %cleanup.402, !dbg !1500

if.end.93:                                        ; preds = %if.end.87
  call void @llvm.dbg.value(metadata i8** %newline, i64 0, metadata !493, metadata !749), !dbg !1356
  %32 = load i8*, i8** %newline, align 8
  %cmp96 = icmp ne i8* %32, null, !dbg !1501
  %or.cond431 = and i1 %tobool73663, %cmp96, !dbg !1503
  br i1 %or.cond431, label %if.then.98, label %if.end.99, !dbg !1503

if.then.98:                                       ; preds = %if.end.93
  %33 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1504, !tbaa !769
  call void @PyErr_SetString(%struct._object* %33, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.65, i64 0, i64 0)) #2, !dbg !1506
  br label %cleanup.402, !dbg !1507

if.end.99:                                        ; preds = %if.end.93
  call void @llvm.dbg.value(metadata %struct._object** %file, i64 0, metadata !486, metadata !749), !dbg !1372
  %34 = load %struct._object*, %struct._object** %file, align 8, !dbg !1508, !tbaa !769
  call void @llvm.dbg.value(metadata i32* %closefd, i64 0, metadata !490, metadata !749), !dbg !1352
  %35 = load i32, i32* %closefd, align 4, !dbg !1509, !tbaa !1351
  call void @llvm.dbg.value(metadata %struct._object** %opener, i64 0, metadata !487, metadata !749), !dbg !1346
  %36 = load %struct._object*, %struct._object** %opener, align 8, !dbg !1510, !tbaa !769
  %call101 = call %struct._object* (%struct._object*, i8*, ...) @_PyObject_CallFunction_SizeT(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyFileIO_Type, i64 0, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), %struct._object* %34, i8* %9, i32 %35, %struct._object* %36) #2, !dbg !1511
  call void @llvm.dbg.value(metadata %struct._object* %call101, i64 0, metadata !510, metadata !749), !dbg !1512
  %cmp102 = icmp eq %struct._object* %call101, null, !dbg !1513
  br i1 %cmp102, label %cleanup.402, label %if.end.105, !dbg !1515

if.end.105:                                       ; preds = %if.end.99
  call void @llvm.dbg.value(metadata i8** %mode, i64 0, metadata !488, metadata !749), !dbg !1348
  %37 = load i8*, i8** %mode, align 8, !dbg !1516, !tbaa !769
  %call106 = call %struct._object* @PyUnicode_FromString(i8* %37) #2, !dbg !1517
  call void @llvm.dbg.value(metadata %struct._object* %call106, i64 0, metadata !511, metadata !749), !dbg !1367
  %cmp107 = icmp eq %struct._object* %call106, null, !dbg !1518
  br i1 %cmp107, label %do.body.323, label %if.end.110, !dbg !1520

if.end.110:                                       ; preds = %if.end.105
  %call111 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %call101, %struct._Py_Identifier* nonnull @io_open.PyId_isatty, i8* null) #2, !dbg !1521
  call void @llvm.dbg.value(metadata %struct._object* %call111, i64 0, metadata !518, metadata !749), !dbg !1522
  %cmp112 = icmp eq %struct._object* %call111, null, !dbg !1523
  br i1 %cmp112, label %do.body.323, label %if.end.115, !dbg !1525

if.end.115:                                       ; preds = %if.end.110
  %call116 = call i64 @PyLong_AsLong(%struct._object* %call111) #2, !dbg !1526
  %conv117 = trunc i64 %call116 to i32, !dbg !1526
  call void @llvm.dbg.value(metadata i32 %conv117, i64 0, metadata !509, metadata !749), !dbg !1527
  call void @llvm.dbg.value(metadata %struct._object* %call111, i64 0, metadata !520, metadata !749), !dbg !1528
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call111, i64 0, i32 0, !dbg !1530
  %38 = load i64, i64* %ob_refcnt, align 8, !dbg !1530, !tbaa !799
  %dec = add i64 %38, -1, !dbg !1530
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1530, !tbaa !799
  %cmp118 = icmp eq i64 %dec, 0, !dbg !1530
  br i1 %cmp118, label %if.else, label %if.end.122, !dbg !1532

if.else:                                          ; preds = %if.end.115
  %ob_type121 = getelementptr inbounds %struct._object, %struct._object* %call111, i64 0, i32 1, !dbg !1533
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type121, align 8, !dbg !1533, !tbaa !786
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i64 0, i32 4, !dbg !1533
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1533, !tbaa !803
  call void %40(%struct._object* %call111) #2, !dbg !1533
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.115, %if.else
  %cmp123 = icmp eq i32 %conv117, -1, !dbg !1535
  br i1 %cmp123, label %land.lhs.true.125, label %cleanup.cont.132, !dbg !1537

land.lhs.true.125:                                ; preds = %if.end.122
  %call126 = call %struct._object* @PyErr_Occurred() #2, !dbg !1538
  %tobool127 = icmp eq %struct._object* %call126, null, !dbg !1538
  br i1 %tobool127, label %cleanup.cont.132, label %do.body.323, !dbg !1540

cleanup.cont.132:                                 ; preds = %land.lhs.true.125, %if.end.122
  call void @llvm.dbg.value(metadata i32* %buffering, i64 0, metadata !489, metadata !749), !dbg !1350
  %41 = load i32, i32* %buffering, align 4, !dbg !1541, !tbaa !1351
  %cmp133 = icmp eq i32 %41, 1, !dbg !1542
  br i1 %cmp133, label %if.end.142.thread, label %lor.lhs.false.135, !dbg !1544

lor.lhs.false.135:                                ; preds = %cleanup.cont.132
  %cmp136 = icmp slt i32 %41, 0, !dbg !1545
  %tobool139 = icmp ne i32 %conv117, 0, !dbg !1546
  %or.cond432 = and i1 %tobool139, %cmp136, !dbg !1548
  br i1 %or.cond432, label %if.end.142.thread, label %if.end.142, !dbg !1548

if.end.142.thread:                                ; preds = %cleanup.cont.132, %lor.lhs.false.135
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !489, metadata !749), !dbg !1350
  store i32 -1, i32* %buffering, align 4, !dbg !1549, !tbaa !1351
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !508, metadata !749), !dbg !1551
  call void @llvm.dbg.value(metadata i32* %buffering, i64 0, metadata !489, metadata !749), !dbg !1350
  br label %if.then.145, !dbg !1552

if.end.142:                                       ; preds = %lor.lhs.false.135
  call void @llvm.dbg.value(metadata i32* %buffering, i64 0, metadata !489, metadata !749), !dbg !1350
  br i1 %cmp136, label %if.then.145, label %if.end.193, !dbg !1552

if.then.145:                                      ; preds = %if.end.142.thread, %if.end.142
  %line_buffering.0562 = phi i32 [ 1, %if.end.142.thread ], [ 0, %if.end.142 ]
  call void @llvm.dbg.value(metadata i32 8192, i64 0, metadata !489, metadata !749), !dbg !1350
  store i32 8192, i32* %buffering, align 4, !dbg !1553, !tbaa !1351
  %42 = bitcast %struct.stat* %st to i8*, !dbg !1554
  call void @llvm.lifetime.start(i64 144, i8* %42) #2, !dbg !1554
  %call147 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %call101, %struct._Py_Identifier* nonnull @io_open.PyId_fileno, i8* null) #2, !dbg !1555
  call void @llvm.dbg.value(metadata %struct._object* %call147, i64 0, metadata !563, metadata !749), !dbg !1556
  %cmp148 = icmp eq %struct._object* %call147, null, !dbg !1557
  br i1 %cmp148, label %cleanup.184, label %if.end.151, !dbg !1559

if.end.151:                                       ; preds = %if.then.145
  %call152 = call i64 @PyLong_AsLong(%struct._object* %call147) #2, !dbg !1560
  call void @llvm.dbg.value(metadata i64 %call152, i64 0, metadata !562, metadata !749), !dbg !1561
  call void @llvm.dbg.value(metadata %struct._object* %call147, i64 0, metadata !564, metadata !749), !dbg !1562
  %ob_refcnt155 = getelementptr inbounds %struct._object, %struct._object* %call147, i64 0, i32 0, !dbg !1564
  %43 = load i64, i64* %ob_refcnt155, align 8, !dbg !1564, !tbaa !799
  %dec156 = add i64 %43, -1, !dbg !1564
  store i64 %dec156, i64* %ob_refcnt155, align 8, !dbg !1564, !tbaa !799
  %cmp157 = icmp eq i64 %dec156, 0, !dbg !1564
  br i1 %cmp157, label %if.else.160, label %if.end.163, !dbg !1566

if.else.160:                                      ; preds = %if.end.151
  %ob_type161 = getelementptr inbounds %struct._object, %struct._object* %call147, i64 0, i32 1, !dbg !1567
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type161, align 8, !dbg !1567, !tbaa !786
  %tp_dealloc162 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i64 0, i32 4, !dbg !1567
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc162, align 8, !dbg !1567, !tbaa !803
  call void %45(%struct._object* %call147) #2, !dbg !1567
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.151, %if.else.160
  %cmp166 = icmp eq i64 %call152, -1, !dbg !1569
  br i1 %cmp166, label %land.lhs.true.168, label %if.end.172, !dbg !1571

land.lhs.true.168:                                ; preds = %if.end.163
  %call169 = call %struct._object* @PyErr_Occurred() #2, !dbg !1572
  %tobool170 = icmp eq %struct._object* %call169, null, !dbg !1572
  br i1 %tobool170, label %if.end.172, label %cleanup.184, !dbg !1574

if.end.172:                                       ; preds = %land.lhs.true.168, %if.end.163
  %conv173 = trunc i64 %call152 to i32, !dbg !1575
  call void @llvm.dbg.value(metadata %struct.stat* %st, i64 0, metadata !522, metadata !749), !dbg !1577
  %46 = bitcast %struct.stat* %st to %struct.stat64*, !dbg !1578
  call void @llvm.dbg.value(metadata i32 %conv173, i64 0, metadata !635, metadata !749) #2, !dbg !1579
  call void @llvm.dbg.value(metadata %struct.stat64* %46, i64 0, metadata !636, metadata !749) #2, !dbg !1579
  %call.i = call i32 @__fxstat64(i32 1, i32 %conv173, %struct.stat64* nonnull %46) #2, !dbg !1581
  %cmp175 = icmp sgt i32 %call.i, -1, !dbg !1582
  br i1 %cmp175, label %land.lhs.true.177, label %if.end.189, !dbg !1583

land.lhs.true.177:                                ; preds = %if.end.172
  %st_blksize = getelementptr inbounds %struct.stat, %struct.stat* %st, i64 0, i32 9, !dbg !1584
  %47 = load i64, i64* %st_blksize, align 8, !dbg !1584, !tbaa !1586
  %cmp178 = icmp sgt i64 %47, 1, !dbg !1589
  br i1 %cmp178, label %if.then.180, label %if.end.189, !dbg !1590

if.then.180:                                      ; preds = %land.lhs.true.177
  %conv182 = trunc i64 %47 to i32, !dbg !1591
  call void @llvm.dbg.value(metadata i32 %conv182, i64 0, metadata !489, metadata !749), !dbg !1350
  store i32 %conv182, i32* %buffering, align 4, !dbg !1592, !tbaa !1351
  br label %if.end.189, !dbg !1593

cleanup.184:                                      ; preds = %land.lhs.true.168, %if.then.145
  call void @llvm.lifetime.end(i64 144, i8* %42) #2, !dbg !1594
  br label %do.body.323

if.end.189:                                       ; preds = %if.then.180, %land.lhs.true.177, %if.end.172
  call void @llvm.lifetime.end(i64 144, i8* %42) #2, !dbg !1594
  %.pr563 = load i32, i32* %buffering, align 4, !dbg !1596, !tbaa !1351
  call void @llvm.dbg.value(metadata i32* %buffering, i64 0, metadata !489, metadata !749), !dbg !1350
  %cmp190 = icmp slt i32 %.pr563, 0, !dbg !1598
  br i1 %cmp190, label %if.then.192, label %if.end.193, !dbg !1599

if.then.192:                                      ; preds = %if.end.189
  %48 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1600, !tbaa !769
  call void @PyErr_SetString(%struct._object* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.67, i64 0, i64 0)) #2, !dbg !1602
  br label %do.body.323, !dbg !1603

if.end.193:                                       ; preds = %if.end.142, %if.end.189
  %line_buffering.0561565 = phi i32 [ %line_buffering.0562, %if.end.189 ], [ 0, %if.end.142 ]
  %49 = phi i32 [ %.pr563, %if.end.189 ], [ %41, %if.end.142 ], !dbg !1604
  %cmp194 = icmp eq i32 %49, 0, !dbg !1605
  br i1 %cmp194, label %if.then.196, label %if.end.213, !dbg !1606

if.then.196:                                      ; preds = %if.end.193
  br i1 %tobool73663, label %do.body.200, label %if.then.198, !dbg !1607

if.then.198:                                      ; preds = %if.then.196
  %50 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1608, !tbaa !769
  call void @PyErr_SetString(%struct._object* %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #2, !dbg !1611
  br label %do.body.323, !dbg !1612

do.body.200:                                      ; preds = %if.then.196
  call void @llvm.dbg.value(metadata %struct._object* %call106, i64 0, metadata !566, metadata !749), !dbg !1613
  %ob_refcnt202 = getelementptr inbounds %struct._object, %struct._object* %call106, i64 0, i32 0, !dbg !1615
  %51 = load i64, i64* %ob_refcnt202, align 8, !dbg !1615, !tbaa !799
  %dec203 = add i64 %51, -1, !dbg !1615
  store i64 %dec203, i64* %ob_refcnt202, align 8, !dbg !1615, !tbaa !799
  %cmp204 = icmp eq i64 %dec203, 0, !dbg !1615
  br i1 %cmp204, label %if.else.207, label %cleanup.402, !dbg !1617

if.else.207:                                      ; preds = %do.body.200
  %ob_type208 = getelementptr inbounds %struct._object, %struct._object* %call106, i64 0, i32 1, !dbg !1618
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type208, align 8, !dbg !1618, !tbaa !786
  %tp_dealloc209 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i64 0, i32 4, !dbg !1618
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc209, align 8, !dbg !1618, !tbaa !803
  call void %53(%struct._object* %call106) #2, !dbg !1618
  br label %cleanup.402

if.end.213:                                       ; preds = %if.end.193
  br i1 %tobool55647649661, label %if.then.238, label %if.else.216, !dbg !1620

if.else.216:                                      ; preds = %if.end.213
  %54 = or i32 %writing.0.lcssa606618624636642653659, %appending.0.lcssa607617625635643652660, !dbg !1621
  %55 = or i32 %54, %creating.0.lcssa604620622638640654658, !dbg !1621
  %56 = icmp eq i32 %55, 0, !dbg !1621
  br i1 %56, label %if.else.223, label %if.then.238, !dbg !1621

if.else.223:                                      ; preds = %if.else.216
  %tobool224 = icmp eq i32 %reading.4662, 0, !dbg !1624
  br i1 %tobool224, label %cleanup.232, label %if.then.238, !dbg !1626

cleanup.232:                                      ; preds = %if.else.223
  %57 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1627, !tbaa !769
  call void @llvm.dbg.value(metadata i8** %mode, i64 0, metadata !488, metadata !749), !dbg !1348
  %58 = load i8*, i8** %mode, align 8, !dbg !1629, !tbaa !769
  %call227 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.69, i64 0, i64 0), i8* %58) #2, !dbg !1630
  br label %do.body.323

if.then.238:                                      ; preds = %if.else.223, %if.else.216, %if.end.213
  %Buffered_class.0 = phi %struct._object* [ getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRandom_Type, i64 0, i32 0, i32 0), %if.end.213 ], [ getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedWriter_Type, i64 0, i32 0, i32 0), %if.else.216 ], [ getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedReader_Type, i64 0, i32 0, i32 0), %if.else.223 ]
  call void @llvm.dbg.value(metadata i32* %buffering, i64 0, metadata !489, metadata !749), !dbg !1350
  %call231 = call %struct._object* (%struct._object*, i8*, ...) @_PyObject_CallFunction_SizeT(%struct._object* %Buffered_class.0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i64 0, i64 0), %struct._object* %call101, i32 %49) #2, !dbg !1631
  call void @llvm.dbg.value(metadata %struct._object* %call231, i64 0, metadata !512, metadata !749), !dbg !1368
  call void @llvm.dbg.value(metadata %struct._object* %call101, i64 0, metadata !572, metadata !749), !dbg !1632
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !510, metadata !749), !dbg !1512
  call void @llvm.dbg.value(metadata %struct._object* %call101, i64 0, metadata !574, metadata !749), !dbg !1634
  %ob_refcnt241 = getelementptr inbounds %struct._object, %struct._object* %call101, i64 0, i32 0, !dbg !1636
  %59 = load i64, i64* %ob_refcnt241, align 8, !dbg !1636, !tbaa !799
  %dec242 = add i64 %59, -1, !dbg !1636
  store i64 %dec242, i64* %ob_refcnt241, align 8, !dbg !1636, !tbaa !799
  %cmp243 = icmp eq i64 %dec242, 0, !dbg !1636
  br i1 %cmp243, label %if.else.246, label %if.end.252, !dbg !1638

if.else.246:                                      ; preds = %if.then.238
  %ob_type247 = getelementptr inbounds %struct._object, %struct._object* %call101, i64 0, i32 1, !dbg !1639
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type247, align 8, !dbg !1639, !tbaa !786
  %tp_dealloc248 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i64 0, i32 4, !dbg !1639
  %61 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc248, align 8, !dbg !1639, !tbaa !803
  call void %61(%struct._object* %call101) #2, !dbg !1639
  br label %if.end.252

if.end.252:                                       ; preds = %if.else.246, %if.then.238
  %cmp255 = icmp eq %struct._object* %call231, null, !dbg !1641
  br i1 %cmp255, label %if.end.336, label %if.end.258, !dbg !1643

if.end.258:                                       ; preds = %if.end.252
  br i1 %tobool73663, label %do.body.261, label %if.then.280, !dbg !1644

do.body.261:                                      ; preds = %if.end.258
  call void @llvm.dbg.value(metadata %struct._object* %call106, i64 0, metadata !578, metadata !749), !dbg !1645
  %ob_refcnt263 = getelementptr inbounds %struct._object, %struct._object* %call106, i64 0, i32 0, !dbg !1647
  %62 = load i64, i64* %ob_refcnt263, align 8, !dbg !1647, !tbaa !799
  %dec264 = add i64 %62, -1, !dbg !1647
  store i64 %dec264, i64* %ob_refcnt263, align 8, !dbg !1647, !tbaa !799
  %cmp265 = icmp eq i64 %dec264, 0, !dbg !1647
  br i1 %cmp265, label %if.else.268, label %cleanup.402, !dbg !1649

if.else.268:                                      ; preds = %do.body.261
  %ob_type269 = getelementptr inbounds %struct._object, %struct._object* %call106, i64 0, i32 1, !dbg !1650
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type269, align 8, !dbg !1650, !tbaa !786
  %tp_dealloc270 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i64 0, i32 4, !dbg !1650
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc270, align 8, !dbg !1650, !tbaa !803
  call void %64(%struct._object* %call106) #2, !dbg !1650
  br label %cleanup.402

if.then.280:                                      ; preds = %if.end.258
  call void @llvm.dbg.value(metadata i8** %encoding, i64 0, metadata !491, metadata !749), !dbg !1354
  %65 = load i8*, i8** %encoding, align 8, !dbg !1652, !tbaa !769
  call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !492, metadata !749), !dbg !1355
  %66 = load i8*, i8** %errors, align 8, !dbg !1653, !tbaa !769
  call void @llvm.dbg.value(metadata i8** %newline, i64 0, metadata !493, metadata !749), !dbg !1356
  %67 = load i8*, i8** %newline, align 8, !dbg !1654, !tbaa !769
  %call275 = call %struct._object* (%struct._object*, i8*, ...) @_PyObject_CallFunction_SizeT(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOWrapper_Type, i64 0, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i64 0, i64 0), %struct._object* %call231, i8* %65, i8* %66, i8* %67, i32 %line_buffering.0561565) #2, !dbg !1655
  call void @llvm.dbg.value(metadata %struct._object* %call275, i64 0, metadata !513, metadata !749), !dbg !1369
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !582, metadata !749), !dbg !1656
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !512, metadata !749), !dbg !1368
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !584, metadata !749), !dbg !1658
  %ob_refcnt283 = getelementptr inbounds %struct._object, %struct._object* %call231, i64 0, i32 0, !dbg !1660
  %68 = load i64, i64* %ob_refcnt283, align 8, !dbg !1660, !tbaa !799
  %dec284 = add i64 %68, -1, !dbg !1660
  store i64 %dec284, i64* %ob_refcnt283, align 8, !dbg !1660, !tbaa !799
  %cmp285 = icmp eq i64 %dec284, 0, !dbg !1660
  br i1 %cmp285, label %if.else.288, label %if.end.294, !dbg !1662

if.else.288:                                      ; preds = %if.then.280
  %ob_type289 = getelementptr inbounds %struct._object, %struct._object* %call231, i64 0, i32 1, !dbg !1663
  %69 = load %struct._typeobject*, %struct._typeobject** %ob_type289, align 8, !dbg !1663, !tbaa !786
  %tp_dealloc290 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %69, i64 0, i32 4, !dbg !1663
  %70 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc290, align 8, !dbg !1663, !tbaa !803
  call void %70(%struct._object* %call231) #2, !dbg !1663
  br label %if.end.294

if.end.294:                                       ; preds = %if.else.288, %if.then.280
  %cmp297 = icmp eq %struct._object* %call275, null, !dbg !1665
  br i1 %cmp297, label %if.end.336, label %if.end.300, !dbg !1667

if.end.300:                                       ; preds = %if.end.294
  %call301 = call i32 @_PyObject_SetAttrId(%struct._object* %call275, %struct._Py_Identifier* nonnull @io_open.PyId_mode, %struct._object* %call106) #2, !dbg !1668
  %cmp302 = icmp slt i32 %call301, 0, !dbg !1670
  br i1 %cmp302, label %if.end.336, label %do.body.306, !dbg !1671

do.body.306:                                      ; preds = %if.end.300
  call void @llvm.dbg.value(metadata %struct._object* %call106, i64 0, metadata !588, metadata !749), !dbg !1672
  %ob_refcnt308 = getelementptr inbounds %struct._object, %struct._object* %call106, i64 0, i32 0, !dbg !1674
  %71 = load i64, i64* %ob_refcnt308, align 8, !dbg !1674, !tbaa !799
  %dec309 = add i64 %71, -1, !dbg !1674
  store i64 %dec309, i64* %ob_refcnt308, align 8, !dbg !1674, !tbaa !799
  %cmp310 = icmp eq i64 %dec309, 0, !dbg !1674
  br i1 %cmp310, label %if.else.313, label %cleanup.402, !dbg !1676

if.else.313:                                      ; preds = %do.body.306
  %ob_type314 = getelementptr inbounds %struct._object, %struct._object* %call106, i64 0, i32 1, !dbg !1677
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type314, align 8, !dbg !1677, !tbaa !786
  %tp_dealloc315 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %72, i64 0, i32 4, !dbg !1677
  %73 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc315, align 8, !dbg !1677, !tbaa !803
  call void %73(%struct._object* %call106) #2, !dbg !1677
  br label %cleanup.402

do.body.323:                                      ; preds = %if.then.198, %if.then.192, %cleanup.184, %cleanup.232, %land.lhs.true.125, %if.end.110, %if.end.105
  call void @llvm.dbg.value(metadata %struct._object* %call101, i64 0, metadata !592, metadata !749), !dbg !1679
  %ob_refcnt325 = getelementptr inbounds %struct._object, %struct._object* %call101, i64 0, i32 0, !dbg !1681
  %74 = load i64, i64* %ob_refcnt325, align 8, !dbg !1681, !tbaa !799
  %dec326 = add i64 %74, -1, !dbg !1681
  store i64 %dec326, i64* %ob_refcnt325, align 8, !dbg !1681, !tbaa !799
  %cmp327 = icmp eq i64 %dec326, 0, !dbg !1681
  br i1 %cmp327, label %if.else.330, label %if.end.336, !dbg !1683

if.else.330:                                      ; preds = %do.body.323
  %ob_type331 = getelementptr inbounds %struct._object, %struct._object* %call101, i64 0, i32 1, !dbg !1684
  %75 = load %struct._typeobject*, %struct._typeobject** %ob_type331, align 8, !dbg !1684, !tbaa !786
  %tp_dealloc332 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %75, i64 0, i32 4, !dbg !1684
  %76 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc332, align 8, !dbg !1684, !tbaa !803
  call void %76(%struct._object* %call101) #2, !dbg !1684
  br label %if.end.336

if.end.336:                                       ; preds = %if.end.300, %if.end.294, %if.end.252, %if.else.330, %do.body.323
  %wrapper.0568 = phi %struct._object* [ null, %if.else.330 ], [ null, %do.body.323 ], [ %call275, %if.end.300 ], [ null, %if.end.294 ], [ null, %if.end.252 ]
  call void @llvm.dbg.value(metadata %struct._object* %call106, i64 0, metadata !595, metadata !749), !dbg !1686
  br i1 %cmp107, label %if.end.378, label %do.body.344, !dbg !1688

do.body.344:                                      ; preds = %if.end.336
  call void @llvm.dbg.value(metadata %struct._object* %call106, i64 0, metadata !597, metadata !749), !dbg !1689
  %ob_refcnt346 = getelementptr inbounds %struct._object, %struct._object* %call106, i64 0, i32 0, !dbg !1691
  %77 = load i64, i64* %ob_refcnt346, align 8, !dbg !1691, !tbaa !799
  %dec347 = add i64 %77, -1, !dbg !1691
  store i64 %dec347, i64* %ob_refcnt346, align 8, !dbg !1691, !tbaa !799
  %cmp348 = icmp eq i64 %dec347, 0, !dbg !1691
  br i1 %cmp348, label %if.else.351, label %if.end.378, !dbg !1693

if.else.351:                                      ; preds = %do.body.344
  %ob_type352 = getelementptr inbounds %struct._object, %struct._object* %call106, i64 0, i32 1, !dbg !1694
  %78 = load %struct._typeobject*, %struct._typeobject** %ob_type352, align 8, !dbg !1694, !tbaa !786
  %tp_dealloc353 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %78, i64 0, i32 4, !dbg !1694
  %79 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc353, align 8, !dbg !1694, !tbaa !803
  call void %79(%struct._object* %call106) #2, !dbg !1694
  br label %if.end.378

if.end.378:                                       ; preds = %if.end.336, %do.body.344, %if.else.351
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !605, metadata !749), !dbg !1696
  %cmp383 = icmp eq %struct._object* %wrapper.0568, null, !dbg !1698
  br i1 %cmp383, label %cleanup.402, label %do.body.386, !dbg !1699

do.body.386:                                      ; preds = %if.end.378
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !607, metadata !749), !dbg !1700
  %ob_refcnt388 = getelementptr inbounds %struct._object, %struct._object* %wrapper.0568, i64 0, i32 0, !dbg !1702
  %80 = load i64, i64* %ob_refcnt388, align 8, !dbg !1702, !tbaa !799
  %dec389 = add i64 %80, -1, !dbg !1702
  store i64 %dec389, i64* %ob_refcnt388, align 8, !dbg !1702, !tbaa !799
  %cmp390 = icmp eq i64 %dec389, 0, !dbg !1702
  br i1 %cmp390, label %if.else.393, label %cleanup.402, !dbg !1704

if.else.393:                                      ; preds = %do.body.386
  %ob_type394 = getelementptr inbounds %struct._object, %struct._object* %wrapper.0568, i64 0, i32 1, !dbg !1705
  %81 = load %struct._typeobject*, %struct._typeobject** %ob_type394, align 8, !dbg !1705, !tbaa !786
  %tp_dealloc395 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %81, i64 0, i32 4, !dbg !1705
  %82 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc395, align 8, !dbg !1705, !tbaa !803
  call void %82(%struct._object* %wrapper.0568) #2, !dbg !1705
  br label %cleanup.402

cleanup.402:                                      ; preds = %cleanup, %if.end.378, %do.body.386, %if.else.393, %if.else.313, %do.body.306, %if.else.268, %do.body.261, %if.else.207, %do.body.200, %if.end.99, %if.end.64, %entry, %if.then.98, %if.then.92, %if.then.86, %if.then.80, %if.then.74, %if.then.63, %if.then.8
  %retval.2 = phi %struct._object* [ null, %cleanup ], [ null, %if.then.63 ], [ null, %if.then.74 ], [ null, %if.then.80 ], [ null, %if.then.86 ], [ null, %if.then.92 ], [ null, %if.then.98 ], [ null, %if.then.8 ], [ null, %entry ], [ null, %if.end.64 ], [ null, %if.end.99 ], [ %call101, %do.body.200 ], [ %call101, %if.else.207 ], [ %call231, %do.body.261 ], [ %call231, %if.else.268 ], [ %call275, %do.body.306 ], [ %call275, %if.else.313 ], [ null, %if.else.393 ], [ null, %do.body.386 ], [ null, %if.end.378 ]
  call void @llvm.lifetime.end(i64 6, i8* %9) #2, !dbg !1707
  call void @llvm.lifetime.end(i64 8, i8* %8) #2, !dbg !1707
  call void @llvm.lifetime.end(i64 8, i8* %7) #2, !dbg !1707
  call void @llvm.lifetime.end(i64 8, i8* %6) #2, !dbg !1707
  call void @llvm.lifetime.end(i64 4, i8* %5) #2, !dbg !1707
  call void @llvm.lifetime.end(i64 4, i8* %4) #2, !dbg !1707
  call void @llvm.lifetime.end(i64 8, i8* %3) #2, !dbg !1707
  call void @llvm.lifetime.end(i64 8, i8* %2) #2, !dbg !1707
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1707
  call void @llvm.lifetime.end(i64 72, i8* %0) #2, !dbg !1707
  ret %struct._object* %retval.2, !dbg !1707
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object*, %struct._object*, i8*, i8**, ...) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare i32 @PyErr_WarnEx(%struct._object*, i8*, i64) #3

declare %struct._object* @PyUnicode_FromString(i8*) #3

declare %struct._object* @_PyObject_CallMethodId_SizeT(%struct._object*, %struct._Py_Identifier*, i8*, ...) #3

declare i64 @PyLong_AsLong(%struct._object*) #3

declare i32 @_PyObject_SetAttrId(%struct._object*, %struct._Py_Identifier*, %struct._object*) #3

; Function Attrs: nounwind
declare i32 @__fxstat64(i32, i32, %struct.stat64*) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!746, !747}
!llvm.ident = !{!748}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !369, globals: !673)
!1 = !DIFile(filename: "./Modules/_io/_iomodule.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !12, !15, !247, !350, !358, !55}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !6, line: 177, baseType: !7)
!6 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !8, line: 102, baseType: !9)
!8 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !10, line: 181, baseType: !11)
!10 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!11 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !13, line: 62, baseType: !14)
!13 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!14 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !17, line: 109, baseType: !18)
!17 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!18 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !17, line: 105, size: 128, align: 64, elements: !19)
!19 = !{!20, !21}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !18, file: !17, line: 107, baseType: !5, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !18, file: !17, line: 108, baseType: !22, size: 64, align: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !17, line: 334, size: 3200, align: 64, elements: !24)
!24 = !{!25, !31, !35, !36, !37, !42, !102, !107, !112, !113, !118, !170, !201, !213, !219, !220, !221, !223, !225, !256, !257, !258, !267, !268, !273, !274, !276, !278, !288, !298, !316, !317, !318, !320, !322, !323, !325, !330, !335, !340, !341, !342, !343, !344, !345, !346, !347, !349}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !23, file: !17, line: 335, baseType: !26, size: 192, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !17, line: 114, baseType: !27)
!27 = !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 111, size: 192, align: 64, elements: !28)
!28 = !{!29, !30}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !27, file: !17, line: 112, baseType: !16, size: 128, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !27, file: !17, line: 113, baseType: !5, size: 64, align: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !23, file: !17, line: 336, baseType: !32, size: 64, align: 64, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !23, file: !17, line: 337, baseType: !5, size: 64, align: 64, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !23, file: !17, line: 337, baseType: !5, size: 64, align: 64, offset: 320)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !23, file: !17, line: 341, baseType: !38, size: 64, align: 64, offset: 384)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !17, line: 308, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !15}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !23, file: !17, line: 342, baseType: !43, size: 64, align: 64, offset: 448)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !17, line: 314, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{!47, !15, !48, !47}
!47 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !8, line: 48, baseType: !50)
!50 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !51, line: 246, size: 1728, align: 64, elements: !52)
!51 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!52 = !{!53, !54, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !74, !75, !76, !77, !79, !81, !83, !87, !90, !92, !93, !94, !95, !96, !97, !98}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !50, file: !51, line: 247, baseType: !47, size: 32, align: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !50, file: !51, line: 252, baseType: !55, size: 64, align: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !50, file: !51, line: 253, baseType: !55, size: 64, align: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !50, file: !51, line: 254, baseType: !55, size: 64, align: 64, offset: 192)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !50, file: !51, line: 255, baseType: !55, size: 64, align: 64, offset: 256)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !50, file: !51, line: 256, baseType: !55, size: 64, align: 64, offset: 320)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !50, file: !51, line: 257, baseType: !55, size: 64, align: 64, offset: 384)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !50, file: !51, line: 258, baseType: !55, size: 64, align: 64, offset: 448)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !50, file: !51, line: 259, baseType: !55, size: 64, align: 64, offset: 512)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !50, file: !51, line: 261, baseType: !55, size: 64, align: 64, offset: 576)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !50, file: !51, line: 262, baseType: !55, size: 64, align: 64, offset: 640)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !50, file: !51, line: 263, baseType: !55, size: 64, align: 64, offset: 704)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !50, file: !51, line: 265, baseType: !67, size: 64, align: 64, offset: 768)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !51, line: 161, size: 192, align: 64, elements: !69)
!69 = !{!70, !71, !73}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !68, file: !51, line: 162, baseType: !67, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !68, file: !51, line: 163, baseType: !72, size: 64, align: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !68, file: !51, line: 167, baseType: !47, size: 32, align: 32, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !50, file: !51, line: 267, baseType: !72, size: 64, align: 64, offset: 832)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !50, file: !51, line: 269, baseType: !47, size: 32, align: 32, offset: 896)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !50, file: !51, line: 273, baseType: !47, size: 32, align: 32, offset: 928)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !50, file: !51, line: 275, baseType: !78, size: 64, align: 64, offset: 960)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !10, line: 140, baseType: !11)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !50, file: !51, line: 279, baseType: !80, size: 16, align: 16, offset: 1024)
!80 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !50, file: !51, line: 280, baseType: !82, size: 8, align: 8, offset: 1040)
!82 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !50, file: !51, line: 281, baseType: !84, size: 8, align: 8, offset: 1048)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 8, align: 8, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 1)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !50, file: !51, line: 285, baseType: !88, size: 64, align: 64, offset: 1088)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !51, line: 155, baseType: null)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !50, file: !51, line: 294, baseType: !91, size: 64, align: 64, offset: 1152)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !10, line: 141, baseType: !11)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !50, file: !51, line: 303, baseType: !4, size: 64, align: 64, offset: 1216)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !50, file: !51, line: 304, baseType: !4, size: 64, align: 64, offset: 1280)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !50, file: !51, line: 305, baseType: !4, size: 64, align: 64, offset: 1344)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !50, file: !51, line: 306, baseType: !4, size: 64, align: 64, offset: 1408)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !50, file: !51, line: 307, baseType: !12, size: 64, align: 64, offset: 1472)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !50, file: !51, line: 309, baseType: !47, size: 32, align: 32, offset: 1536)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !50, file: !51, line: 311, baseType: !99, size: 160, align: 8, offset: 1568)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 160, align: 8, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 20)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !23, file: !17, line: 343, baseType: !103, size: 64, align: 64, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !17, line: 316, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!15, !15, !55}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !23, file: !17, line: 344, baseType: !108, size: 64, align: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !17, line: 318, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!47, !15, !55, !15}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !23, file: !17, line: 345, baseType: !4, size: 64, align: 64, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !23, file: !17, line: 346, baseType: !114, size: 64, align: 64, offset: 704)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !17, line: 320, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!15, !15}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !23, file: !17, line: 350, baseType: !119, size: 64, align: 64, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !17, line: 278, baseType: !121)
!121 = !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 236, size: 2176, align: 64, elements: !122)
!122 = !{!123, !128, !129, !130, !131, !132, !137, !139, !140, !141, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !121, file: !17, line: 241, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !17, line: 166, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!15, !15, !15}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !121, file: !17, line: 242, baseType: !124, size: 64, align: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !121, file: !17, line: 243, baseType: !124, size: 64, align: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !121, file: !17, line: 244, baseType: !124, size: 64, align: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !121, file: !17, line: 245, baseType: !124, size: 64, align: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !121, file: !17, line: 246, baseType: !133, size: 64, align: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !17, line: 167, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!15, !15, !15, !15}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !121, file: !17, line: 247, baseType: !138, size: 64, align: 64, offset: 384)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !17, line: 165, baseType: !115)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !121, file: !17, line: 248, baseType: !138, size: 64, align: 64, offset: 448)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !121, file: !17, line: 249, baseType: !138, size: 64, align: 64, offset: 512)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !121, file: !17, line: 250, baseType: !142, size: 64, align: 64, offset: 576)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !17, line: 168, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!47, !15}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !121, file: !17, line: 251, baseType: !138, size: 64, align: 64, offset: 640)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !121, file: !17, line: 252, baseType: !124, size: 64, align: 64, offset: 704)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !121, file: !17, line: 253, baseType: !124, size: 64, align: 64, offset: 768)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !121, file: !17, line: 254, baseType: !124, size: 64, align: 64, offset: 832)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !121, file: !17, line: 255, baseType: !124, size: 64, align: 64, offset: 896)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !121, file: !17, line: 256, baseType: !124, size: 64, align: 64, offset: 960)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !121, file: !17, line: 257, baseType: !138, size: 64, align: 64, offset: 1024)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !121, file: !17, line: 258, baseType: !4, size: 64, align: 64, offset: 1088)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !121, file: !17, line: 259, baseType: !138, size: 64, align: 64, offset: 1152)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !121, file: !17, line: 261, baseType: !124, size: 64, align: 64, offset: 1216)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !121, file: !17, line: 262, baseType: !124, size: 64, align: 64, offset: 1280)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !121, file: !17, line: 263, baseType: !124, size: 64, align: 64, offset: 1344)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !121, file: !17, line: 264, baseType: !124, size: 64, align: 64, offset: 1408)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !121, file: !17, line: 265, baseType: !133, size: 64, align: 64, offset: 1472)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !121, file: !17, line: 266, baseType: !124, size: 64, align: 64, offset: 1536)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !121, file: !17, line: 267, baseType: !124, size: 64, align: 64, offset: 1600)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !121, file: !17, line: 268, baseType: !124, size: 64, align: 64, offset: 1664)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !121, file: !17, line: 269, baseType: !124, size: 64, align: 64, offset: 1728)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !121, file: !17, line: 270, baseType: !124, size: 64, align: 64, offset: 1792)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !121, file: !17, line: 272, baseType: !124, size: 64, align: 64, offset: 1856)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !121, file: !17, line: 273, baseType: !124, size: 64, align: 64, offset: 1920)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !121, file: !17, line: 274, baseType: !124, size: 64, align: 64, offset: 1984)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !121, file: !17, line: 275, baseType: !124, size: 64, align: 64, offset: 2048)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !121, file: !17, line: 277, baseType: !138, size: 64, align: 64, offset: 2112)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !23, file: !17, line: 351, baseType: !171, size: 64, align: 64, offset: 832)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !17, line: 292, baseType: !173)
!173 = !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 280, size: 640, align: 64, elements: !174)
!174 = !{!175, !180, !181, !186, !187, !188, !193, !194, !199, !200}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !173, file: !17, line: 281, baseType: !176, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !17, line: 169, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!5, !15}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !173, file: !17, line: 282, baseType: !124, size: 64, align: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !173, file: !17, line: 283, baseType: !182, size: 64, align: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !17, line: 170, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!15, !15, !5}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !173, file: !17, line: 284, baseType: !182, size: 64, align: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !173, file: !17, line: 285, baseType: !4, size: 64, align: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !173, file: !17, line: 286, baseType: !189, size: 64, align: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !17, line: 172, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!47, !15, !5, !15}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !173, file: !17, line: 287, baseType: !4, size: 64, align: 64, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !173, file: !17, line: 288, baseType: !195, size: 64, align: 64, offset: 448)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !17, line: 231, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!47, !15, !15}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !173, file: !17, line: 290, baseType: !124, size: 64, align: 64, offset: 512)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !173, file: !17, line: 291, baseType: !182, size: 64, align: 64, offset: 576)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !23, file: !17, line: 352, baseType: !202, size: 64, align: 64, offset: 896)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !17, line: 298, baseType: !204)
!204 = !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 294, size: 192, align: 64, elements: !205)
!205 = !{!206, !207, !208}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !204, file: !17, line: 295, baseType: !176, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !204, file: !17, line: 296, baseType: !124, size: 64, align: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !204, file: !17, line: 297, baseType: !209, size: 64, align: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !17, line: 174, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!47, !15, !15, !15}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !23, file: !17, line: 356, baseType: !214, size: 64, align: 64, offset: 960)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !17, line: 321, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!218, !15}
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !6, line: 186, baseType: !5)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !23, file: !17, line: 357, baseType: !133, size: 64, align: 64, offset: 1024)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !23, file: !17, line: 358, baseType: !114, size: 64, align: 64, offset: 1088)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !23, file: !17, line: 359, baseType: !222, size: 64, align: 64, offset: 1152)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !17, line: 317, baseType: !125)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !23, file: !17, line: 360, baseType: !224, size: 64, align: 64, offset: 1216)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !17, line: 319, baseType: !210)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !23, file: !17, line: 363, baseType: !226, size: 64, align: 64, offset: 1280)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !17, line: 304, baseType: !228)
!228 = !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 301, size: 128, align: 64, elements: !229)
!229 = !{!230, !251}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !228, file: !17, line: 302, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !17, line: 193, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!47, !15, !235, !47}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !17, line: 191, baseType: !237)
!237 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !17, line: 178, size: 640, align: 64, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !248, !249, !250}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !237, file: !17, line: 179, baseType: !4, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !237, file: !17, line: 180, baseType: !15, size: 64, align: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !237, file: !17, line: 181, baseType: !5, size: 64, align: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !237, file: !17, line: 182, baseType: !5, size: 64, align: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !237, file: !17, line: 184, baseType: !47, size: 32, align: 32, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !237, file: !17, line: 185, baseType: !47, size: 32, align: 32, offset: 288)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !237, file: !17, line: 186, baseType: !55, size: 64, align: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !237, file: !17, line: 187, baseType: !247, size: 64, align: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !237, file: !17, line: 188, baseType: !247, size: 64, align: 64, offset: 448)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !237, file: !17, line: 189, baseType: !247, size: 64, align: 64, offset: 512)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !237, file: !17, line: 190, baseType: !4, size: 64, align: 64, offset: 576)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !228, file: !17, line: 303, baseType: !252, size: 64, align: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !17, line: 194, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !15, !235}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !23, file: !17, line: 366, baseType: !14, size: 64, align: 64, offset: 1344)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !23, file: !17, line: 368, baseType: !32, size: 64, align: 64, offset: 1408)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !23, file: !17, line: 372, baseType: !259, size: 64, align: 64, offset: 1472)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !17, line: 233, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!47, !15, !263, !4}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !17, line: 232, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!47, !15, !4}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !23, file: !17, line: 375, baseType: !142, size: 64, align: 64, offset: 1536)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !23, file: !17, line: 379, baseType: !269, size: 64, align: 64, offset: 1600)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !17, line: 322, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!15, !15, !15, !47}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !23, file: !17, line: 382, baseType: !5, size: 64, align: 64, offset: 1664)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !23, file: !17, line: 385, baseType: !275, size: 64, align: 64, offset: 1728)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !17, line: 323, baseType: !115)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !23, file: !17, line: 386, baseType: !277, size: 64, align: 64, offset: 1792)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !17, line: 324, baseType: !115)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !23, file: !17, line: 389, baseType: !279, size: 64, align: 64, offset: 1856)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !281, line: 40, size: 256, align: 64, elements: !282)
!281 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!282 = !{!283, !284, !286, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !280, file: !281, line: 41, baseType: !32, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !280, file: !281, line: 42, baseType: !285, size: 64, align: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !281, line: 18, baseType: !125)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !280, file: !281, line: 43, baseType: !47, size: 32, align: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !280, file: !281, line: 45, baseType: !32, size: 64, align: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !23, file: !17, line: 390, baseType: !289, size: 64, align: 64, offset: 1920)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !291, line: 18, size: 320, align: 64, elements: !292)
!291 = !DIFile(filename: "Include/structmember.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!292 = !{!293, !294, !295, !296, !297}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !290, file: !291, line: 19, baseType: !55, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !290, file: !291, line: 20, baseType: !47, size: 32, align: 32, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !290, file: !291, line: 21, baseType: !5, size: 64, align: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !290, file: !291, line: 22, baseType: !47, size: 32, align: 32, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !290, file: !291, line: 23, baseType: !55, size: 64, align: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !23, file: !17, line: 391, baseType: !299, size: 64, align: 64, offset: 1984)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !301, line: 11, size: 320, align: 64, elements: !302)
!301 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!302 = !{!303, !304, !309, !314, !315}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !300, file: !301, line: 12, baseType: !55, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !300, file: !301, line: 13, baseType: !305, size: 64, align: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !301, line: 8, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!15, !15, !4}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !300, file: !301, line: 14, baseType: !310, size: 64, align: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !301, line: 9, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!47, !15, !15, !4}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !300, file: !301, line: 15, baseType: !55, size: 64, align: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !300, file: !301, line: 16, baseType: !4, size: 64, align: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !23, file: !17, line: 392, baseType: !22, size: 64, align: 64, offset: 2048)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !23, file: !17, line: 393, baseType: !15, size: 64, align: 64, offset: 2112)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !23, file: !17, line: 394, baseType: !319, size: 64, align: 64, offset: 2176)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !17, line: 325, baseType: !134)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !23, file: !17, line: 395, baseType: !321, size: 64, align: 64, offset: 2240)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !17, line: 326, baseType: !210)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !23, file: !17, line: 396, baseType: !5, size: 64, align: 64, offset: 2304)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !23, file: !17, line: 397, baseType: !324, size: 64, align: 64, offset: 2368)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !17, line: 327, baseType: !210)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !23, file: !17, line: 398, baseType: !326, size: 64, align: 64, offset: 2432)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !17, line: 329, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!15, !22, !5}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !23, file: !17, line: 399, baseType: !331, size: 64, align: 64, offset: 2496)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !17, line: 328, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!15, !22, !15, !15}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !23, file: !17, line: 400, baseType: !336, size: 64, align: 64, offset: 2560)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !17, line: 307, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !4}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !23, file: !17, line: 401, baseType: !142, size: 64, align: 64, offset: 2624)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !23, file: !17, line: 402, baseType: !15, size: 64, align: 64, offset: 2688)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !23, file: !17, line: 403, baseType: !15, size: 64, align: 64, offset: 2752)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !23, file: !17, line: 404, baseType: !15, size: 64, align: 64, offset: 2816)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !23, file: !17, line: 405, baseType: !15, size: 64, align: 64, offset: 2880)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !23, file: !17, line: 406, baseType: !15, size: 64, align: 64, offset: 2944)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !23, file: !17, line: 407, baseType: !38, size: 64, align: 64, offset: 3008)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !23, file: !17, line: 410, baseType: !348, size: 32, align: 32, offset: 3072)
!348 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !23, file: !17, line: 412, baseType: !38, size: 64, align: 64, offset: 3136)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "_PyIO_State", file: !352, line: 135, baseType: !353)
!352 = !DIFile(filename: "./Modules/_io/_iomodule.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!353 = !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 130, size: 192, align: 64, elements: !354)
!354 = !{!355, !356, !357}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !353, file: !352, line: 131, baseType: !47, size: 32, align: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "locale_module", scope: !353, file: !352, line: 132, baseType: !15, size: 64, align: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "unsupported_operation", scope: !353, file: !352, line: 134, baseType: !15, size: 64, align: 64, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyWeakReference", file: !360, line: 10, baseType: !361)
!360 = !DIFile(filename: "Include/weakrefobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!361 = !DICompositeType(tag: DW_TAG_structure_type, name: "_PyWeakReference", file: !360, line: 16, size: 448, align: 64, elements: !362)
!362 = !{!363, !364, !365, !366, !367, !368}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !361, file: !360, line: 17, baseType: !16, size: 128, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "wr_object", scope: !361, file: !360, line: 23, baseType: !15, size: 64, align: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "wr_callback", scope: !361, file: !360, line: 26, baseType: !15, size: 64, align: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !361, file: !360, line: 31, baseType: !218, size: 64, align: 64, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "wr_prev", scope: !361, file: !360, line: 38, baseType: !358, size: 64, align: 64, offset: 320)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "wr_next", scope: !361, file: !360, line: 39, baseType: !358, size: 64, align: 64, offset: 384)
!369 = !{!370, !383, !388, !394, !412, !477, !610, !637, !653, !670}
!370 = !DISubprogram(name: "PyNumber_AsOff_t", scope: !1, file: !1, line: 475, type: !371, isLocal: false, isDefinition: true, scopeLine: 476, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct._object*, %struct._object*)* @PyNumber_AsOff_t, variables: !375)
!371 = !DISubroutineType(types: !372)
!372 = !{!373, !15, !15}
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_off_t", file: !352, line: 94, baseType: !374)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !8, line: 92, baseType: !91)
!375 = !{!376, !377, !378, !379, !380, !381}
!376 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "item", arg: 1, scope: !370, file: !1, line: 475, type: !15)
!377 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "err", arg: 2, scope: !370, file: !1, line: 475, type: !15)
!378 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !370, file: !1, line: 477, type: !373)
!379 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "runerr", scope: !370, file: !1, line: 478, type: !15)
!380 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !370, file: !1, line: 479, type: !15)
!381 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !382, file: !1, line: 514, type: !15)
!382 = distinct !DILexicalBlock(scope: !370, file: !1, line: 514, column: 5)
!383 = !DISubprogram(name: "_PyIO_ConvertSsize_t", scope: !1, file: !1, line: 521, type: !265, isLocal: false, isDefinition: true, scopeLine: 521, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*)* @_PyIO_ConvertSsize_t, variables: !384)
!384 = !{!385, !386, !387}
!385 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !383, file: !1, line: 521, type: !15)
!386 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "result", arg: 2, scope: !383, file: !1, line: 521, type: !4)
!387 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "limit", scope: !383, file: !1, line: 522, type: !5)
!388 = !DISubprogram(name: "_PyIO_get_module_state", scope: !1, file: !1, line: 543, type: !389, isLocal: false, isDefinition: true, scopeLine: 544, flags: DIFlagPrototyped, isOptimized: true, function: %struct._PyIO_State* ()* @_PyIO_get_module_state, variables: !391)
!389 = !DISubroutineType(types: !390)
!390 = !{!350}
!391 = !{!392, !393}
!392 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mod", scope: !388, file: !1, line: 545, type: !15)
!393 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "state", scope: !388, file: !1, line: 546, type: !350)
!394 = !DISubprogram(name: "_PyIO_get_locale_module", scope: !1, file: !1, line: 557, type: !395, isLocal: false, isDefinition: true, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._PyIO_State*)* @_PyIO_get_locale_module, variables: !397)
!395 = !DISubroutineType(types: !396)
!396 = !{!15, !350}
!397 = !{!398, !399, !400, !404, !408}
!398 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !394, file: !1, line: 557, type: !350)
!399 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mod", scope: !394, file: !1, line: 559, type: !15)
!400 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !401, file: !1, line: 567, type: !15)
!401 = distinct !DILexicalBlock(scope: !402, file: !1, line: 567, column: 9)
!402 = distinct !DILexicalBlock(scope: !403, file: !1, line: 560, column: 39)
!403 = distinct !DILexicalBlock(scope: !394, file: !1, line: 560, column: 9)
!404 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !405, file: !1, line: 567, type: !15)
!405 = distinct !DILexicalBlock(scope: !406, file: !1, line: 567, column: 9)
!406 = distinct !DILexicalBlock(scope: !407, file: !1, line: 567, column: 9)
!407 = distinct !DILexicalBlock(scope: !401, file: !1, line: 567, column: 9)
!408 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !409, file: !1, line: 574, type: !15)
!409 = distinct !DILexicalBlock(scope: !410, file: !1, line: 574, column: 9)
!410 = distinct !DILexicalBlock(scope: !411, file: !1, line: 573, column: 39)
!411 = distinct !DILexicalBlock(scope: !394, file: !1, line: 573, column: 9)
!412 = !DISubprogram(name: "PyInit__io", scope: !1, file: !1, line: 633, type: !413, isLocal: false, isDefinition: true, scopeLine: 634, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit__io, variables: !415)
!413 = !DISubroutineType(types: !414)
!414 = !{!15}
!415 = !{!416, !417, !418, !422, !426, !430, !434, !438, !442, !446, !450, !454, !458, !462, !466, !470, !472, !475}
!416 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !412, file: !1, line: 635, type: !15)
!417 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "state", scope: !412, file: !1, line: 636, type: !350)
!418 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !419, file: !1, line: 675, type: !15)
!419 = distinct !DILexicalBlock(scope: !420, file: !1, line: 675, column: 5)
!420 = distinct !DILexicalBlock(scope: !421, file: !1, line: 675, column: 5)
!421 = distinct !DILexicalBlock(scope: !412, file: !1, line: 675, column: 5)
!422 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !423, file: !1, line: 676, type: !15)
!423 = distinct !DILexicalBlock(scope: !424, file: !1, line: 676, column: 5)
!424 = distinct !DILexicalBlock(scope: !425, file: !1, line: 676, column: 5)
!425 = distinct !DILexicalBlock(scope: !412, file: !1, line: 676, column: 5)
!426 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !427, file: !1, line: 677, type: !15)
!427 = distinct !DILexicalBlock(scope: !428, file: !1, line: 677, column: 5)
!428 = distinct !DILexicalBlock(scope: !429, file: !1, line: 677, column: 5)
!429 = distinct !DILexicalBlock(scope: !412, file: !1, line: 677, column: 5)
!430 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !431, file: !1, line: 678, type: !15)
!431 = distinct !DILexicalBlock(scope: !432, file: !1, line: 678, column: 5)
!432 = distinct !DILexicalBlock(scope: !433, file: !1, line: 678, column: 5)
!433 = distinct !DILexicalBlock(scope: !412, file: !1, line: 678, column: 5)
!434 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !435, file: !1, line: 683, type: !15)
!435 = distinct !DILexicalBlock(scope: !436, file: !1, line: 683, column: 5)
!436 = distinct !DILexicalBlock(scope: !437, file: !1, line: 683, column: 5)
!437 = distinct !DILexicalBlock(scope: !412, file: !1, line: 683, column: 5)
!438 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !439, file: !1, line: 687, type: !15)
!439 = distinct !DILexicalBlock(scope: !440, file: !1, line: 687, column: 5)
!440 = distinct !DILexicalBlock(scope: !441, file: !1, line: 687, column: 5)
!441 = distinct !DILexicalBlock(scope: !412, file: !1, line: 687, column: 5)
!442 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !443, file: !1, line: 693, type: !15)
!443 = distinct !DILexicalBlock(scope: !444, file: !1, line: 693, column: 5)
!444 = distinct !DILexicalBlock(scope: !445, file: !1, line: 693, column: 5)
!445 = distinct !DILexicalBlock(scope: !412, file: !1, line: 693, column: 5)
!446 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !447, file: !1, line: 697, type: !15)
!447 = distinct !DILexicalBlock(scope: !448, file: !1, line: 697, column: 5)
!448 = distinct !DILexicalBlock(scope: !449, file: !1, line: 697, column: 5)
!449 = distinct !DILexicalBlock(scope: !412, file: !1, line: 697, column: 5)
!450 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !451, file: !1, line: 701, type: !15)
!451 = distinct !DILexicalBlock(scope: !452, file: !1, line: 701, column: 5)
!452 = distinct !DILexicalBlock(scope: !453, file: !1, line: 701, column: 5)
!453 = distinct !DILexicalBlock(scope: !412, file: !1, line: 701, column: 5)
!454 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !455, file: !1, line: 705, type: !15)
!455 = distinct !DILexicalBlock(scope: !456, file: !1, line: 705, column: 5)
!456 = distinct !DILexicalBlock(scope: !457, file: !1, line: 705, column: 5)
!457 = distinct !DILexicalBlock(scope: !412, file: !1, line: 705, column: 5)
!458 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !459, file: !1, line: 709, type: !15)
!459 = distinct !DILexicalBlock(scope: !460, file: !1, line: 709, column: 5)
!460 = distinct !DILexicalBlock(scope: !461, file: !1, line: 709, column: 5)
!461 = distinct !DILexicalBlock(scope: !412, file: !1, line: 709, column: 5)
!462 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !463, file: !1, line: 713, type: !15)
!463 = distinct !DILexicalBlock(scope: !464, file: !1, line: 713, column: 5)
!464 = distinct !DILexicalBlock(scope: !465, file: !1, line: 713, column: 5)
!465 = distinct !DILexicalBlock(scope: !412, file: !1, line: 713, column: 5)
!466 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !467, file: !1, line: 716, type: !15)
!467 = distinct !DILexicalBlock(scope: !468, file: !1, line: 716, column: 5)
!468 = distinct !DILexicalBlock(scope: !469, file: !1, line: 716, column: 5)
!469 = distinct !DILexicalBlock(scope: !412, file: !1, line: 716, column: 5)
!470 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !471, file: !1, line: 767, type: !15)
!471 = distinct !DILexicalBlock(scope: !412, file: !1, line: 767, column: 5)
!472 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !473, file: !1, line: 767, type: !15)
!473 = distinct !DILexicalBlock(scope: !474, file: !1, line: 767, column: 5)
!474 = distinct !DILexicalBlock(scope: !471, file: !1, line: 767, column: 5)
!475 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !476, file: !1, line: 768, type: !15)
!476 = distinct !DILexicalBlock(scope: !412, file: !1, line: 768, column: 5)
!477 = !DISubprogram(name: "io_open", scope: !1, file: !1, line: 221, type: !135, isLocal: true, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @io_open, variables: !478)
!478 = !{!479, !480, !481, !482, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !507, !508, !509, !510, !511, !512, !513, !514, !518, !520, !522, !562, !563, !564, !566, !570, !572, !574, !578, !582, !584, !588, !590, !592, !595, !597, !600, !602, !605, !607}
!479 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !477, file: !1, line: 221, type: !15)
!480 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !477, file: !1, line: 221, type: !15)
!481 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !477, file: !1, line: 221, type: !15)
!482 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kwlist", scope: !477, file: !1, line: 223, type: !483)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 576, align: 64, elements: !484)
!484 = !{!485}
!485 = !DISubrange(count: 9)
!486 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "file", scope: !477, file: !1, line: 226, type: !15)
!487 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "opener", scope: !477, file: !1, line: 226, type: !15)
!488 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !477, file: !1, line: 227, type: !55)
!489 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffering", scope: !477, file: !1, line: 228, type: !47)
!490 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "closefd", scope: !477, file: !1, line: 228, type: !47)
!491 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "encoding", scope: !477, file: !1, line: 229, type: !55)
!492 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !477, file: !1, line: 229, type: !55)
!493 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newline", scope: !477, file: !1, line: 229, type: !55)
!494 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !477, file: !1, line: 230, type: !348)
!495 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "creating", scope: !477, file: !1, line: 232, type: !47)
!496 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "reading", scope: !477, file: !1, line: 232, type: !47)
!497 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "writing", scope: !477, file: !1, line: 232, type: !47)
!498 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "appending", scope: !477, file: !1, line: 232, type: !47)
!499 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "updating", scope: !477, file: !1, line: 232, type: !47)
!500 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "text", scope: !477, file: !1, line: 233, type: !47)
!501 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "binary", scope: !477, file: !1, line: 233, type: !47)
!502 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "universal", scope: !477, file: !1, line: 233, type: !47)
!503 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rawmode", scope: !477, file: !1, line: 235, type: !504)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 48, align: 8, elements: !505)
!505 = !{!506}
!506 = !DISubrange(count: 6)
!507 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !477, file: !1, line: 235, type: !55)
!508 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "line_buffering", scope: !477, file: !1, line: 236, type: !47)
!509 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "isatty", scope: !477, file: !1, line: 236, type: !47)
!510 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "raw", scope: !477, file: !1, line: 238, type: !15)
!511 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modeobj", scope: !477, file: !1, line: 238, type: !15)
!512 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffer", scope: !477, file: !1, line: 238, type: !15)
!513 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wrapper", scope: !477, file: !1, line: 238, type: !15)
!514 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !515, file: !1, line: 260, type: !34)
!515 = distinct !DILexicalBlock(scope: !516, file: !1, line: 259, column: 40)
!516 = distinct !DILexicalBlock(scope: !517, file: !1, line: 259, column: 5)
!517 = distinct !DILexicalBlock(scope: !477, file: !1, line: 259, column: 5)
!518 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !519, file: !1, line: 364, type: !15)
!519 = distinct !DILexicalBlock(scope: !477, file: !1, line: 363, column: 5)
!520 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !521, file: !1, line: 368, type: !15)
!521 = distinct !DILexicalBlock(scope: !519, file: !1, line: 368, column: 9)
!522 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "st", scope: !523, file: !1, line: 384, type: !526)
!523 = distinct !DILexicalBlock(scope: !524, file: !1, line: 383, column: 9)
!524 = distinct !DILexicalBlock(scope: !525, file: !1, line: 380, column: 24)
!525 = distinct !DILexicalBlock(scope: !477, file: !1, line: 380, column: 9)
!526 = !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !527, line: 46, size: 1152, align: 64, elements: !528)
!527 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!528 = !{!529, !531, !533, !535, !537, !539, !541, !542, !543, !544, !546, !548, !556, !557, !558}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !526, file: !527, line: 48, baseType: !530, size: 64, align: 64)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !10, line: 133, baseType: !14)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !526, file: !527, line: 53, baseType: !532, size: 64, align: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !10, line: 136, baseType: !14)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !526, file: !527, line: 61, baseType: !534, size: 64, align: 64, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !10, line: 139, baseType: !14)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !526, file: !527, line: 62, baseType: !536, size: 32, align: 32, offset: 192)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !10, line: 138, baseType: !348)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !526, file: !527, line: 64, baseType: !538, size: 32, align: 32, offset: 224)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !10, line: 134, baseType: !348)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !526, file: !527, line: 65, baseType: !540, size: 32, align: 32, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !10, line: 135, baseType: !348)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !526, file: !527, line: 67, baseType: !47, size: 32, align: 32, offset: 288)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !526, file: !527, line: 69, baseType: !530, size: 64, align: 64, offset: 320)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !526, file: !527, line: 74, baseType: !78, size: 64, align: 64, offset: 384)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !526, file: !527, line: 78, baseType: !545, size: 64, align: 64, offset: 448)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !10, line: 162, baseType: !11)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !526, file: !527, line: 80, baseType: !547, size: 64, align: 64, offset: 512)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !10, line: 167, baseType: !11)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !526, file: !527, line: 91, baseType: !549, size: 128, align: 64, offset: 576)
!549 = !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !550, line: 120, size: 128, align: 64, elements: !551)
!550 = !DIFile(filename: "/usr/include/time.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!551 = !{!552, !554}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !549, file: !550, line: 122, baseType: !553, size: 64, align: 64)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !10, line: 148, baseType: !11)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !549, file: !550, line: 123, baseType: !555, size: 64, align: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !10, line: 184, baseType: !11)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !526, file: !527, line: 92, baseType: !549, size: 128, align: 64, offset: 704)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !526, file: !527, line: 93, baseType: !549, size: 128, align: 64, offset: 832)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !526, file: !527, line: 106, baseType: !559, size: 192, align: 64, offset: 960)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !555, size: 192, align: 64, elements: !560)
!560 = !{!561}
!561 = !DISubrange(count: 3)
!562 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fileno", scope: !523, file: !1, line: 385, type: !11)
!563 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !523, file: !1, line: 386, type: !15)
!564 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !565, file: !1, line: 391, type: !15)
!565 = distinct !DILexicalBlock(scope: !523, file: !1, line: 391, column: 13)
!566 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !567, file: !1, line: 414, type: !15)
!567 = distinct !DILexicalBlock(scope: !568, file: !1, line: 414, column: 9)
!568 = distinct !DILexicalBlock(scope: !569, file: !1, line: 407, column: 25)
!569 = distinct !DILexicalBlock(scope: !477, file: !1, line: 407, column: 9)
!570 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Buffered_class", scope: !571, file: !1, line: 420, type: !15)
!571 = distinct !DILexicalBlock(scope: !477, file: !1, line: 419, column: 5)
!572 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !573, file: !1, line: 436, type: !15)
!573 = distinct !DILexicalBlock(scope: !477, file: !1, line: 436, column: 5)
!574 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !575, file: !1, line: 436, type: !15)
!575 = distinct !DILexicalBlock(scope: !576, file: !1, line: 436, column: 5)
!576 = distinct !DILexicalBlock(scope: !577, file: !1, line: 436, column: 5)
!577 = distinct !DILexicalBlock(scope: !573, file: !1, line: 436, column: 5)
!578 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !579, file: !1, line: 443, type: !15)
!579 = distinct !DILexicalBlock(scope: !580, file: !1, line: 443, column: 9)
!580 = distinct !DILexicalBlock(scope: !581, file: !1, line: 442, column: 17)
!581 = distinct !DILexicalBlock(scope: !477, file: !1, line: 442, column: 9)
!582 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !583, file: !1, line: 453, type: !15)
!583 = distinct !DILexicalBlock(scope: !477, file: !1, line: 453, column: 5)
!584 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !585, file: !1, line: 453, type: !15)
!585 = distinct !DILexicalBlock(scope: !586, file: !1, line: 453, column: 5)
!586 = distinct !DILexicalBlock(scope: !587, file: !1, line: 453, column: 5)
!587 = distinct !DILexicalBlock(scope: !583, file: !1, line: 453, column: 5)
!588 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !589, file: !1, line: 459, type: !15)
!589 = distinct !DILexicalBlock(scope: !477, file: !1, line: 459, column: 5)
!590 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !591, file: !1, line: 463, type: !15)
!591 = distinct !DILexicalBlock(scope: !477, file: !1, line: 463, column: 5)
!592 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !593, file: !1, line: 463, type: !15)
!593 = distinct !DILexicalBlock(scope: !594, file: !1, line: 463, column: 5)
!594 = distinct !DILexicalBlock(scope: !591, file: !1, line: 463, column: 5)
!595 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !596, file: !1, line: 464, type: !15)
!596 = distinct !DILexicalBlock(scope: !477, file: !1, line: 464, column: 5)
!597 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !598, file: !1, line: 464, type: !15)
!598 = distinct !DILexicalBlock(scope: !599, file: !1, line: 464, column: 5)
!599 = distinct !DILexicalBlock(scope: !596, file: !1, line: 464, column: 5)
!600 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !601, file: !1, line: 465, type: !15)
!601 = distinct !DILexicalBlock(scope: !477, file: !1, line: 465, column: 5)
!602 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !603, file: !1, line: 465, type: !15)
!603 = distinct !DILexicalBlock(scope: !604, file: !1, line: 465, column: 5)
!604 = distinct !DILexicalBlock(scope: !601, file: !1, line: 465, column: 5)
!605 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !606, file: !1, line: 466, type: !15)
!606 = distinct !DILexicalBlock(scope: !477, file: !1, line: 466, column: 5)
!607 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !608, file: !1, line: 466, type: !15)
!608 = distinct !DILexicalBlock(scope: !609, file: !1, line: 466, column: 5)
!609 = distinct !DILexicalBlock(scope: !606, file: !1, line: 466, column: 5)
!610 = !DISubprogram(name: "fstat64", scope: !611, file: !611, line: 517, type: !612, isLocal: false, isDefinition: true, scopeLine: 518, flags: DIFlagPrototyped, isOptimized: true, variables: !634)
!611 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!612 = !DISubroutineType(types: !613)
!613 = !{!47, !47, !614}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64, align: 64)
!615 = !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !527, line: 119, size: 1152, align: 64, elements: !616)
!616 = !{!617, !618, !620, !621, !622, !623, !624, !625, !626, !627, !628, !630, !631, !632, !633}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !615, file: !527, line: 121, baseType: !530, size: 64, align: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !615, file: !527, line: 123, baseType: !619, size: 64, align: 64, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !10, line: 137, baseType: !14)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !615, file: !527, line: 124, baseType: !534, size: 64, align: 64, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !615, file: !527, line: 125, baseType: !536, size: 32, align: 32, offset: 192)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !615, file: !527, line: 132, baseType: !538, size: 32, align: 32, offset: 224)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !615, file: !527, line: 133, baseType: !540, size: 32, align: 32, offset: 256)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !615, file: !527, line: 135, baseType: !47, size: 32, align: 32, offset: 288)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !615, file: !527, line: 136, baseType: !530, size: 64, align: 64, offset: 320)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !615, file: !527, line: 137, baseType: !78, size: 64, align: 64, offset: 384)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !615, file: !527, line: 143, baseType: !545, size: 64, align: 64, offset: 448)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !615, file: !527, line: 144, baseType: !629, size: 64, align: 64, offset: 512)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !10, line: 168, baseType: !11)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !615, file: !527, line: 152, baseType: !549, size: 128, align: 64, offset: 576)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !615, file: !527, line: 153, baseType: !549, size: 128, align: 64, offset: 704)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !615, file: !527, line: 154, baseType: !549, size: 128, align: 64, offset: 832)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !615, file: !527, line: 164, baseType: !559, size: 192, align: 64, offset: 960)
!634 = !{!635, !636}
!635 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__fd", arg: 1, scope: !610, file: !611, line: 517, type: !47)
!636 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__statbuf", arg: 2, scope: !610, file: !611, line: 517, type: !614)
!637 = !DISubprogram(name: "iomodule_traverse", scope: !1, file: !1, line: 582, type: !261, isLocal: true, isDefinition: true, scopeLine: 582, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @iomodule_traverse, variables: !638)
!638 = !{!639, !640, !641, !642, !643, !649}
!639 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mod", arg: 1, scope: !637, file: !1, line: 582, type: !15)
!640 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !637, file: !1, line: 582, type: !263)
!641 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !637, file: !1, line: 582, type: !4)
!642 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "state", scope: !637, file: !1, line: 583, type: !350)
!643 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !644, file: !1, line: 587, type: !47)
!644 = distinct !DILexicalBlock(scope: !645, file: !1, line: 587, column: 9)
!645 = distinct !DILexicalBlock(scope: !646, file: !1, line: 587, column: 9)
!646 = distinct !DILexicalBlock(scope: !647, file: !1, line: 587, column: 9)
!647 = distinct !DILexicalBlock(scope: !648, file: !1, line: 586, column: 39)
!648 = distinct !DILexicalBlock(scope: !637, file: !1, line: 586, column: 9)
!649 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !650, file: !1, line: 589, type: !47)
!650 = distinct !DILexicalBlock(scope: !651, file: !1, line: 589, column: 5)
!651 = distinct !DILexicalBlock(scope: !652, file: !1, line: 589, column: 5)
!652 = distinct !DILexicalBlock(scope: !637, file: !1, line: 589, column: 5)
!653 = !DISubprogram(name: "iomodule_clear", scope: !1, file: !1, line: 595, type: !144, isLocal: true, isDefinition: true, scopeLine: 595, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @iomodule_clear, variables: !654)
!654 = !{!655, !656, !657, !660, !664, !666}
!655 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mod", arg: 1, scope: !653, file: !1, line: 595, type: !15)
!656 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "state", scope: !653, file: !1, line: 596, type: !350)
!657 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !658, file: !1, line: 600, type: !15)
!658 = distinct !DILexicalBlock(scope: !659, file: !1, line: 600, column: 9)
!659 = distinct !DILexicalBlock(scope: !653, file: !1, line: 599, column: 9)
!660 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !661, file: !1, line: 600, type: !15)
!661 = distinct !DILexicalBlock(scope: !662, file: !1, line: 600, column: 9)
!662 = distinct !DILexicalBlock(scope: !663, file: !1, line: 600, column: 9)
!663 = distinct !DILexicalBlock(scope: !658, file: !1, line: 600, column: 9)
!664 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !665, file: !1, line: 601, type: !15)
!665 = distinct !DILexicalBlock(scope: !653, file: !1, line: 601, column: 5)
!666 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !667, file: !1, line: 601, type: !15)
!667 = distinct !DILexicalBlock(scope: !668, file: !1, line: 601, column: 5)
!668 = distinct !DILexicalBlock(scope: !669, file: !1, line: 601, column: 5)
!669 = distinct !DILexicalBlock(scope: !665, file: !1, line: 601, column: 5)
!670 = !DISubprogram(name: "iomodule_free", scope: !1, file: !1, line: 606, type: !40, isLocal: true, isDefinition: true, scopeLine: 606, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @iomodule_free, variables: !671)
!671 = !{!672}
!672 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mod", arg: 1, scope: !670, file: !1, line: 606, type: !15)
!673 = !{!674, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !728, !732, !740, !741, !742}
!674 = !DIGlobalVariable(name: "_PyIO_Module", scope: !0, file: !1, line: 620, type: !675, isLocal: false, isDefinition: true, variable: %struct.PyModuleDef* @_PyIO_Module)
!675 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !676, line: 47, size: 832, align: 64, elements: !677)
!676 = !DIFile(filename: "Include/moduleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!677 = !{!678, !687, !688, !689, !690, !693, !694, !695, !696}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !675, file: !676, line: 48, baseType: !679, size: 320, align: 64)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !676, line: 38, baseType: !680)
!680 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !676, line: 33, size: 320, align: 64, elements: !681)
!681 = !{!682, !683, !685, !686}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !680, file: !676, line: 34, baseType: !16, size: 128, align: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !680, file: !676, line: 35, baseType: !684, size: 64, align: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64, align: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !680, file: !676, line: 36, baseType: !5, size: 64, align: 64, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !680, file: !676, line: 37, baseType: !15, size: 64, align: 64, offset: 256)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !675, file: !676, line: 49, baseType: !32, size: 64, align: 64, offset: 320)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !675, file: !676, line: 50, baseType: !32, size: 64, align: 64, offset: 384)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !675, file: !676, line: 51, baseType: !5, size: 64, align: 64, offset: 448)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !675, file: !676, line: 52, baseType: !691, size: 64, align: 64, offset: 512)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64, align: 64)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !675, file: !676, line: 53, baseType: !142, size: 64, align: 64, offset: 576)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !675, file: !676, line: 54, baseType: !259, size: 64, align: 64, offset: 640)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !675, file: !676, line: 55, baseType: !142, size: 64, align: 64, offset: 704)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !675, file: !676, line: 56, baseType: !336, size: 64, align: 64, offset: 768)
!697 = !DIGlobalVariable(name: "_PyIO_str_close", scope: !0, file: !1, line: 26, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_close)
!698 = !DIGlobalVariable(name: "_PyIO_str_closed", scope: !0, file: !1, line: 27, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_closed)
!699 = !DIGlobalVariable(name: "_PyIO_str_decode", scope: !0, file: !1, line: 28, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_decode)
!700 = !DIGlobalVariable(name: "_PyIO_str_encode", scope: !0, file: !1, line: 29, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_encode)
!701 = !DIGlobalVariable(name: "_PyIO_str_fileno", scope: !0, file: !1, line: 30, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_fileno)
!702 = !DIGlobalVariable(name: "_PyIO_str_flush", scope: !0, file: !1, line: 31, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_flush)
!703 = !DIGlobalVariable(name: "_PyIO_str_getstate", scope: !0, file: !1, line: 32, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_getstate)
!704 = !DIGlobalVariable(name: "_PyIO_str_isatty", scope: !0, file: !1, line: 33, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_isatty)
!705 = !DIGlobalVariable(name: "_PyIO_str_newlines", scope: !0, file: !1, line: 34, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_newlines)
!706 = !DIGlobalVariable(name: "_PyIO_str_nl", scope: !0, file: !1, line: 35, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_nl)
!707 = !DIGlobalVariable(name: "_PyIO_str_read", scope: !0, file: !1, line: 36, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_read)
!708 = !DIGlobalVariable(name: "_PyIO_str_read1", scope: !0, file: !1, line: 37, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_read1)
!709 = !DIGlobalVariable(name: "_PyIO_str_readable", scope: !0, file: !1, line: 38, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_readable)
!710 = !DIGlobalVariable(name: "_PyIO_str_readall", scope: !0, file: !1, line: 39, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_readall)
!711 = !DIGlobalVariable(name: "_PyIO_str_readinto", scope: !0, file: !1, line: 40, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_readinto)
!712 = !DIGlobalVariable(name: "_PyIO_str_readline", scope: !0, file: !1, line: 41, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_readline)
!713 = !DIGlobalVariable(name: "_PyIO_str_reset", scope: !0, file: !1, line: 42, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_reset)
!714 = !DIGlobalVariable(name: "_PyIO_str_seek", scope: !0, file: !1, line: 43, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_seek)
!715 = !DIGlobalVariable(name: "_PyIO_str_seekable", scope: !0, file: !1, line: 44, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_seekable)
!716 = !DIGlobalVariable(name: "_PyIO_str_setstate", scope: !0, file: !1, line: 45, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_setstate)
!717 = !DIGlobalVariable(name: "_PyIO_str_tell", scope: !0, file: !1, line: 46, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_tell)
!718 = !DIGlobalVariable(name: "_PyIO_str_truncate", scope: !0, file: !1, line: 47, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_truncate)
!719 = !DIGlobalVariable(name: "_PyIO_str_writable", scope: !0, file: !1, line: 48, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_writable)
!720 = !DIGlobalVariable(name: "_PyIO_str_write", scope: !0, file: !1, line: 49, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_write)
!721 = !DIGlobalVariable(name: "_PyIO_empty_str", scope: !0, file: !1, line: 51, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_empty_str)
!722 = !DIGlobalVariable(name: "_PyIO_empty_bytes", scope: !0, file: !1, line: 52, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_empty_bytes)
!723 = !DIGlobalVariable(name: "_PyIO_zero", scope: !0, file: !1, line: 53, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_zero)
!724 = !DIGlobalVariable(name: "module_doc", scope: !0, file: !1, line: 56, type: !725, isLocal: true, isDefinition: true, variable: [1473 x i8]* @module_doc)
!725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 11784, align: 8, elements: !726)
!726 = !{!727}
!727 = !DISubrange(count: 1473)
!728 = !DIGlobalVariable(name: "module_methods", scope: !0, file: !1, line: 615, type: !729, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @module_methods)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !692, size: 512, align: 64, elements: !730)
!730 = !{!731}
!731 = !DISubrange(count: 2)
!732 = !DIGlobalVariable(name: "PyId_isatty", scope: !477, file: !1, line: 240, type: !733, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @io_open.PyId_isatty)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !17, line: 144, baseType: !734)
!734 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !17, line: 140, size: 192, align: 64, elements: !735)
!735 = !{!736, !738, !739}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !734, file: !17, line: 141, baseType: !737, size: 64, align: 64)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64, align: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !734, file: !17, line: 142, baseType: !32, size: 64, align: 64, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !734, file: !17, line: 143, baseType: !15, size: 64, align: 64, offset: 128)
!740 = !DIGlobalVariable(name: "PyId_fileno", scope: !477, file: !1, line: 241, type: !733, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @io_open.PyId_fileno)
!741 = !DIGlobalVariable(name: "PyId_mode", scope: !477, file: !1, line: 242, type: !733, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @io_open.PyId_mode)
!742 = !DIGlobalVariable(name: "open_doc", scope: !0, file: !1, line: 96, type: !743, isLocal: true, isDefinition: true, variable: [6355 x i8]* @open_doc)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 50840, align: 8, elements: !744)
!744 = !{!745}
!745 = !DISubrange(count: 6355)
!746 = !{i32 2, !"Dwarf Version", i32 4}
!747 = !{i32 2, !"Debug Info Version", i32 3}
!748 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!749 = !DIExpression()
!750 = !DILocation(line: 475, column: 28, scope: !370)
!751 = !DILocation(line: 475, column: 44, scope: !370)
!752 = !DILocation(line: 479, column: 23, scope: !370)
!753 = !DILocation(line: 479, column: 15, scope: !370)
!754 = !DILocation(line: 480, column: 15, scope: !755)
!755 = distinct !DILexicalBlock(scope: !370, file: !1, line: 480, column: 9)
!756 = !DILocation(line: 480, column: 9, scope: !370)
!757 = !DILocation(line: 484, column: 14, scope: !370)
!758 = !DILocation(line: 477, column: 14, scope: !370)
!759 = !DILocation(line: 485, column: 16, scope: !760)
!760 = distinct !DILexicalBlock(scope: !370, file: !1, line: 485, column: 9)
!761 = !DILocation(line: 485, column: 22, scope: !760)
!762 = !DILocation(line: 485, column: 36, scope: !763)
!763 = !DILexicalBlockFile(scope: !760, file: !1, discriminator: 1)
!764 = !DILocation(line: 478, column: 15, scope: !370)
!765 = !DILocation(line: 485, column: 34, scope: !760)
!766 = !DILocation(line: 485, column: 9, scope: !370)
!767 = !DILocation(line: 489, column: 46, scope: !768)
!768 = distinct !DILexicalBlock(scope: !370, file: !1, line: 489, column: 9)
!769 = !{!770, !770, i64 0}
!770 = !{!"any pointer", !771, i64 0}
!771 = !{!"omnipotent char", !772, i64 0}
!772 = !{!"Simple C/C++ TBAA"}
!773 = !DILocation(line: 489, column: 10, scope: !768)
!774 = !DILocation(line: 489, column: 9, scope: !370)
!775 = !DILocation(line: 492, column: 5, scope: !370)
!776 = !DILocation(line: 496, column: 10, scope: !777)
!777 = distinct !DILexicalBlock(scope: !370, file: !1, line: 496, column: 9)
!778 = !DILocation(line: 496, column: 9, scope: !370)
!779 = !DILocation(line: 501, column: 13, scope: !780)
!780 = distinct !DILexicalBlock(scope: !781, file: !1, line: 501, column: 13)
!781 = distinct !DILexicalBlock(scope: !777, file: !1, line: 496, column: 15)
!782 = !DILocation(line: 501, column: 33, scope: !780)
!783 = !DILocation(line: 502, column: 13, scope: !780)
!784 = !DILocation(line: 510, column: 28, scope: !785)
!785 = distinct !DILexicalBlock(scope: !777, file: !1, line: 506, column: 10)
!786 = !{!787, !770, i64 8}
!787 = !{!"_object", !788, i64 0, !770, i64 8}
!788 = !{!"long", !771, i64 0}
!789 = !DILocation(line: 510, column: 37, scope: !785)
!790 = !{!791, !770, i64 24}
!791 = !{!"_typeobject", !792, i64 0, !770, i64 24, !788, i64 32, !788, i64 40, !770, i64 48, !770, i64 56, !770, i64 64, !770, i64 72, !770, i64 80, !770, i64 88, !770, i64 96, !770, i64 104, !770, i64 112, !770, i64 120, !770, i64 128, !770, i64 136, !770, i64 144, !770, i64 152, !770, i64 160, !788, i64 168, !770, i64 176, !770, i64 184, !770, i64 192, !770, i64 200, !788, i64 208, !770, i64 216, !770, i64 224, !770, i64 232, !770, i64 240, !770, i64 248, !770, i64 256, !770, i64 264, !770, i64 272, !770, i64 280, !788, i64 288, !770, i64 296, !770, i64 304, !770, i64 312, !770, i64 320, !770, i64 328, !770, i64 336, !770, i64 344, !770, i64 352, !770, i64 360, !770, i64 368, !770, i64 376, !793, i64 384, !770, i64 392}
!792 = !{!"", !787, i64 0, !788, i64 16}
!793 = !{!"int", !771, i64 0}
!794 = !DILocation(line: 508, column: 9, scope: !785)
!795 = !DILocation(line: 514, column: 5, scope: !796)
!796 = !DILexicalBlockFile(scope: !382, file: !1, discriminator: 1)
!797 = !DILocation(line: 514, column: 5, scope: !798)
!798 = distinct !DILexicalBlock(scope: !382, file: !1, line: 514, column: 5)
!799 = !{!787, !788, i64 0}
!800 = !DILocation(line: 514, column: 5, scope: !382)
!801 = !DILocation(line: 514, column: 5, scope: !802)
!802 = !DILexicalBlockFile(scope: !798, file: !1, discriminator: 3)
!803 = !{!791, !770, i64 48}
!804 = !DILocation(line: 516, column: 1, scope: !370)
!805 = !DILocation(line: 521, column: 32, scope: !383)
!806 = !DILocation(line: 521, column: 43, scope: !383)
!807 = !DILocation(line: 523, column: 13, scope: !808)
!808 = distinct !DILexicalBlock(scope: !383, file: !1, line: 523, column: 9)
!809 = !DILocation(line: 523, column: 9, scope: !383)
!810 = !DILocation(line: 526, column: 14, scope: !811)
!811 = distinct !DILexicalBlock(scope: !808, file: !1, line: 526, column: 14)
!812 = !DILocation(line: 526, column: 14, scope: !808)
!813 = !DILocation(line: 527, column: 41, scope: !814)
!814 = distinct !DILexicalBlock(scope: !811, file: !1, line: 526, column: 35)
!815 = !DILocation(line: 527, column: 17, scope: !814)
!816 = !DILocation(line: 522, column: 16, scope: !383)
!817 = !DILocation(line: 528, column: 19, scope: !818)
!818 = distinct !DILexicalBlock(scope: !814, file: !1, line: 528, column: 13)
!819 = !DILocation(line: 528, column: 25, scope: !818)
!820 = !DILocation(line: 528, column: 28, scope: !821)
!821 = !DILexicalBlockFile(scope: !818, file: !1, discriminator: 1)
!822 = !DILocation(line: 528, column: 13, scope: !814)
!823 = !DILocation(line: 532, column: 22, scope: !824)
!824 = distinct !DILexicalBlock(scope: !811, file: !1, line: 531, column: 10)
!825 = !DILocation(line: 534, column: 22, scope: !824)
!826 = !DILocation(line: 534, column: 36, scope: !824)
!827 = !DILocation(line: 532, column: 9, scope: !824)
!828 = !DILocation(line: 535, column: 9, scope: !824)
!829 = !DILocation(line: 537, column: 7, scope: !383)
!830 = !DILocation(line: 537, column: 29, scope: !383)
!831 = !{!788, !788, i64 0}
!832 = !DILocation(line: 538, column: 5, scope: !383)
!833 = !DILocation(line: 539, column: 1, scope: !383)
!834 = !DILocation(line: 545, column: 21, scope: !388)
!835 = !DILocation(line: 545, column: 15, scope: !388)
!836 = !DILocation(line: 547, column: 13, scope: !837)
!837 = distinct !DILexicalBlock(scope: !388, file: !1, line: 547, column: 9)
!838 = !DILocation(line: 547, column: 21, scope: !837)
!839 = !DILocation(line: 547, column: 33, scope: !840)
!840 = !DILexicalBlockFile(scope: !837, file: !1, discriminator: 1)
!841 = !DILocation(line: 546, column: 18, scope: !388)
!842 = !DILocation(line: 547, column: 52, scope: !837)
!843 = !DILocation(line: 547, column: 9, scope: !388)
!844 = !DILocation(line: 548, column: 25, scope: !845)
!845 = distinct !DILexicalBlock(scope: !837, file: !1, line: 547, column: 61)
!846 = !DILocation(line: 548, column: 9, scope: !845)
!847 = !DILocation(line: 551, column: 9, scope: !845)
!848 = !DILocation(line: 553, column: 5, scope: !388)
!849 = !DILocation(line: 554, column: 1, scope: !388)
!850 = !DILocation(line: 557, column: 38, scope: !394)
!851 = !DILocation(line: 560, column: 16, scope: !403)
!852 = !{!853, !770, i64 8}
!853 = !{!"", !793, i64 0, !770, i64 8, !770, i64 16}
!854 = !DILocation(line: 560, column: 30, scope: !403)
!855 = !DILocation(line: 560, column: 9, scope: !394)
!856 = !DILocation(line: 562, column: 15, scope: !402)
!857 = !{!858, !770, i64 16}
!858 = !{!"_PyWeakReference", !787, i64 0, !770, i64 16, !770, i64 24, !788, i64 32, !770, i64 40, !770, i64 48}
!859 = !DILocation(line: 564, column: 13, scope: !860)
!860 = distinct !DILexicalBlock(scope: !861, file: !1, line: 563, column: 29)
!861 = distinct !DILexicalBlock(scope: !402, file: !1, line: 563, column: 13)
!862 = !DILocation(line: 563, column: 17, scope: !861)
!863 = !DILocation(line: 563, column: 13, scope: !402)
!864 = !DILocation(line: 565, column: 13, scope: !860)
!865 = !DILocation(line: 567, column: 9, scope: !866)
!866 = !DILexicalBlockFile(scope: !401, file: !1, discriminator: 1)
!867 = !DILocation(line: 567, column: 9, scope: !868)
!868 = !DILexicalBlockFile(scope: !406, file: !1, discriminator: 2)
!869 = !DILocation(line: 567, column: 9, scope: !870)
!870 = !DILexicalBlockFile(scope: !405, file: !1, discriminator: 4)
!871 = !DILocation(line: 567, column: 9, scope: !872)
!872 = distinct !DILexicalBlock(scope: !405, file: !1, line: 567, column: 9)
!873 = !DILocation(line: 567, column: 9, scope: !405)
!874 = !DILocation(line: 567, column: 9, scope: !875)
!875 = !DILexicalBlockFile(scope: !872, file: !1, discriminator: 6)
!876 = !DILocation(line: 569, column: 11, scope: !394)
!877 = !DILocation(line: 559, column: 15, scope: !394)
!878 = !DILocation(line: 570, column: 13, scope: !879)
!879 = distinct !DILexicalBlock(scope: !394, file: !1, line: 570, column: 9)
!880 = !DILocation(line: 570, column: 9, scope: !394)
!881 = !DILocation(line: 572, column: 28, scope: !394)
!882 = !DILocation(line: 572, column: 26, scope: !394)
!883 = !DILocation(line: 573, column: 30, scope: !411)
!884 = !DILocation(line: 573, column: 9, scope: !394)
!885 = !DILocation(line: 574, column: 9, scope: !886)
!886 = !DILexicalBlockFile(scope: !409, file: !1, discriminator: 1)
!887 = !DILocation(line: 574, column: 9, scope: !888)
!888 = distinct !DILexicalBlock(scope: !409, file: !1, line: 574, column: 9)
!889 = !DILocation(line: 574, column: 9, scope: !409)
!890 = !DILocation(line: 574, column: 9, scope: !891)
!891 = !DILexicalBlockFile(scope: !888, file: !1, discriminator: 3)
!892 = !DILocation(line: 578, column: 1, scope: !394)
!893 = !DILocation(line: 582, column: 29, scope: !637)
!894 = !DILocation(line: 582, column: 44, scope: !637)
!895 = !DILocation(line: 582, column: 57, scope: !637)
!896 = !DILocation(line: 583, column: 26, scope: !637)
!897 = !DILocation(line: 584, column: 17, scope: !898)
!898 = distinct !DILexicalBlock(scope: !637, file: !1, line: 584, column: 9)
!899 = !{!853, !793, i64 0}
!900 = !DILocation(line: 584, column: 10, scope: !898)
!901 = !DILocation(line: 584, column: 9, scope: !637)
!902 = !DILocation(line: 586, column: 16, scope: !648)
!903 = !DILocation(line: 586, column: 30, scope: !648)
!904 = !DILocation(line: 586, column: 9, scope: !637)
!905 = !DILocation(line: 587, column: 9, scope: !906)
!906 = !DILexicalBlockFile(scope: !644, file: !1, discriminator: 2)
!907 = !DILocation(line: 587, column: 9, scope: !908)
!908 = distinct !DILexicalBlock(scope: !644, file: !1, line: 587, column: 9)
!909 = !DILocation(line: 589, column: 5, scope: !910)
!910 = !DILexicalBlockFile(scope: !651, file: !1, discriminator: 1)
!911 = !{!853, !770, i64 16}
!912 = !DILocation(line: 589, column: 5, scope: !652)
!913 = !DILocation(line: 589, column: 5, scope: !914)
!914 = !DILexicalBlockFile(scope: !650, file: !1, discriminator: 2)
!915 = !DILocation(line: 589, column: 5, scope: !916)
!916 = distinct !DILexicalBlock(scope: !650, file: !1, line: 589, column: 5)
!917 = !DILocation(line: 590, column: 5, scope: !637)
!918 = !DILocation(line: 591, column: 1, scope: !637)
!919 = !DILocation(line: 595, column: 26, scope: !653)
!920 = !DILocation(line: 596, column: 26, scope: !653)
!921 = !DILocation(line: 597, column: 17, scope: !922)
!922 = distinct !DILexicalBlock(scope: !653, file: !1, line: 597, column: 9)
!923 = !DILocation(line: 597, column: 10, scope: !922)
!924 = !DILocation(line: 597, column: 9, scope: !653)
!925 = !DILocation(line: 599, column: 16, scope: !659)
!926 = !DILocation(line: 599, column: 30, scope: !659)
!927 = !DILocation(line: 599, column: 9, scope: !653)
!928 = !DILocation(line: 600, column: 9, scope: !929)
!929 = !DILexicalBlockFile(scope: !658, file: !1, discriminator: 1)
!930 = !DILocation(line: 600, column: 9, scope: !931)
!931 = !DILexicalBlockFile(scope: !662, file: !1, discriminator: 2)
!932 = !DILocation(line: 600, column: 9, scope: !933)
!933 = !DILexicalBlockFile(scope: !661, file: !1, discriminator: 4)
!934 = !DILocation(line: 600, column: 9, scope: !935)
!935 = distinct !DILexicalBlock(scope: !661, file: !1, line: 600, column: 9)
!936 = !DILocation(line: 600, column: 9, scope: !661)
!937 = !DILocation(line: 600, column: 9, scope: !938)
!938 = !DILexicalBlockFile(scope: !935, file: !1, discriminator: 6)
!939 = !DILocation(line: 601, column: 5, scope: !940)
!940 = !DILexicalBlockFile(scope: !665, file: !1, discriminator: 1)
!941 = !DILocation(line: 601, column: 5, scope: !669)
!942 = !DILocation(line: 601, column: 5, scope: !665)
!943 = !DILocation(line: 601, column: 5, scope: !944)
!944 = !DILexicalBlockFile(scope: !668, file: !1, discriminator: 2)
!945 = !DILocation(line: 601, column: 5, scope: !946)
!946 = !DILexicalBlockFile(scope: !667, file: !1, discriminator: 4)
!947 = !DILocation(line: 601, column: 5, scope: !948)
!948 = distinct !DILexicalBlock(scope: !667, file: !1, line: 601, column: 5)
!949 = !DILocation(line: 601, column: 5, scope: !667)
!950 = !DILocation(line: 601, column: 5, scope: !951)
!951 = !DILexicalBlockFile(scope: !948, file: !1, discriminator: 6)
!952 = !DILocation(line: 603, column: 1, scope: !653)
!953 = !DILocation(line: 606, column: 25, scope: !670)
!954 = !DILocation(line: 595, column: 26, scope: !653, inlinedAt: !955)
!955 = distinct !DILocation(line: 607, column: 5, scope: !670)
!956 = !DILocation(line: 596, column: 26, scope: !653, inlinedAt: !955)
!957 = !DILocation(line: 597, column: 17, scope: !922, inlinedAt: !955)
!958 = !DILocation(line: 597, column: 10, scope: !922, inlinedAt: !955)
!959 = !DILocation(line: 597, column: 9, scope: !653, inlinedAt: !955)
!960 = !DILocation(line: 599, column: 16, scope: !659, inlinedAt: !955)
!961 = !DILocation(line: 599, column: 30, scope: !659, inlinedAt: !955)
!962 = !DILocation(line: 599, column: 9, scope: !653, inlinedAt: !955)
!963 = !DILocation(line: 600, column: 9, scope: !929, inlinedAt: !955)
!964 = !DILocation(line: 600, column: 9, scope: !931, inlinedAt: !955)
!965 = !DILocation(line: 600, column: 9, scope: !933, inlinedAt: !955)
!966 = !DILocation(line: 600, column: 9, scope: !935, inlinedAt: !955)
!967 = !DILocation(line: 600, column: 9, scope: !661, inlinedAt: !955)
!968 = !DILocation(line: 600, column: 9, scope: !938, inlinedAt: !955)
!969 = !DILocation(line: 607, column: 5, scope: !670)
!970 = !DILocation(line: 601, column: 5, scope: !940, inlinedAt: !955)
!971 = !DILocation(line: 601, column: 5, scope: !669, inlinedAt: !955)
!972 = !DILocation(line: 601, column: 5, scope: !665, inlinedAt: !955)
!973 = !DILocation(line: 601, column: 5, scope: !944, inlinedAt: !955)
!974 = !DILocation(line: 601, column: 5, scope: !946, inlinedAt: !955)
!975 = !DILocation(line: 601, column: 5, scope: !948, inlinedAt: !955)
!976 = !DILocation(line: 601, column: 5, scope: !667, inlinedAt: !955)
!977 = !DILocation(line: 601, column: 5, scope: !951, inlinedAt: !955)
!978 = !DILocation(line: 608, column: 1, scope: !670)
!979 = !DILocation(line: 635, column: 19, scope: !412)
!980 = !DILocation(line: 635, column: 15, scope: !412)
!981 = !DILocation(line: 636, column: 18, scope: !412)
!982 = !DILocation(line: 637, column: 11, scope: !983)
!983 = distinct !DILexicalBlock(scope: !412, file: !1, line: 637, column: 9)
!984 = !DILocation(line: 637, column: 9, scope: !412)
!985 = !DILocation(line: 639, column: 13, scope: !412)
!986 = !DILocation(line: 640, column: 12, scope: !412)
!987 = !DILocation(line: 640, column: 24, scope: !412)
!988 = !DILocation(line: 652, column: 9, scope: !989)
!989 = distinct !DILexicalBlock(scope: !412, file: !1, line: 652, column: 9)
!990 = !DILocation(line: 652, column: 54, scope: !989)
!991 = !DILocation(line: 652, column: 9, scope: !412)
!992 = !DILocation(line: 767, column: 5, scope: !993)
!993 = !DILexicalBlockFile(scope: !471, file: !1, discriminator: 1)
!994 = !DILocation(line: 658, column: 33, scope: !412)
!995 = !DILocation(line: 658, column: 51, scope: !412)
!996 = !DILocation(line: 663, column: 35, scope: !997)
!997 = distinct !DILexicalBlock(scope: !412, file: !1, line: 662, column: 9)
!998 = !DILocation(line: 656, column: 12, scope: !412)
!999 = !DILocation(line: 656, column: 34, scope: !412)
!1000 = !DILocation(line: 659, column: 38, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !412, file: !1, line: 659, column: 9)
!1002 = !DILocation(line: 659, column: 9, scope: !412)
!1003 = !DILocation(line: 661, column: 5, scope: !412)
!1004 = !DILocation(line: 662, column: 9, scope: !997)
!1005 = !DILocation(line: 663, column: 58, scope: !997)
!1006 = !DILocation(line: 662, column: 9, scope: !412)
!1007 = !DILocation(line: 667, column: 5, scope: !412)
!1008 = !DILocation(line: 668, column: 9, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !412, file: !1, line: 668, column: 9)
!1010 = !DILocation(line: 669, column: 64, scope: !1009)
!1011 = !DILocation(line: 668, column: 9, scope: !412)
!1012 = !DILocation(line: 675, column: 5, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !412, file: !1, line: 675, column: 5)
!1014 = !DILocation(line: 675, column: 5, scope: !412)
!1015 = !DILocation(line: 675, column: 5, scope: !1016)
!1016 = !DILexicalBlockFile(scope: !412, file: !1, discriminator: 2)
!1017 = !DILocation(line: 675, column: 5, scope: !421)
!1018 = !DILocation(line: 675, column: 5, scope: !1019)
!1019 = !DILexicalBlockFile(scope: !419, file: !1, discriminator: 4)
!1020 = !DILocation(line: 675, column: 5, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !419, file: !1, line: 675, column: 5)
!1022 = !DILocation(line: 675, column: 5, scope: !419)
!1023 = !DILocation(line: 675, column: 5, scope: !1024)
!1024 = !DILexicalBlockFile(scope: !1021, file: !1, discriminator: 6)
!1025 = !DILocation(line: 676, column: 5, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !412, file: !1, line: 676, column: 5)
!1027 = !DILocation(line: 676, column: 5, scope: !412)
!1028 = !DILocation(line: 676, column: 5, scope: !1016)
!1029 = !DILocation(line: 676, column: 5, scope: !425)
!1030 = !DILocation(line: 676, column: 5, scope: !1031)
!1031 = !DILexicalBlockFile(scope: !423, file: !1, discriminator: 4)
!1032 = !DILocation(line: 676, column: 5, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !423, file: !1, line: 676, column: 5)
!1034 = !DILocation(line: 676, column: 5, scope: !423)
!1035 = !DILocation(line: 676, column: 5, scope: !1036)
!1036 = !DILexicalBlockFile(scope: !1033, file: !1, discriminator: 6)
!1037 = !DILocation(line: 677, column: 5, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !412, file: !1, line: 677, column: 5)
!1039 = !DILocation(line: 677, column: 5, scope: !412)
!1040 = !DILocation(line: 677, column: 5, scope: !1016)
!1041 = !DILocation(line: 677, column: 5, scope: !429)
!1042 = !DILocation(line: 677, column: 5, scope: !1043)
!1043 = !DILexicalBlockFile(scope: !427, file: !1, discriminator: 4)
!1044 = !DILocation(line: 677, column: 5, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !427, file: !1, line: 677, column: 5)
!1046 = !DILocation(line: 677, column: 5, scope: !427)
!1047 = !DILocation(line: 677, column: 5, scope: !1048)
!1048 = !DILexicalBlockFile(scope: !1045, file: !1, discriminator: 6)
!1049 = !DILocation(line: 678, column: 5, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !412, file: !1, line: 678, column: 5)
!1051 = !DILocation(line: 678, column: 5, scope: !412)
!1052 = !DILocation(line: 678, column: 5, scope: !1016)
!1053 = !DILocation(line: 678, column: 5, scope: !433)
!1054 = !DILocation(line: 678, column: 5, scope: !1055)
!1055 = !DILexicalBlockFile(scope: !431, file: !1, discriminator: 4)
!1056 = !DILocation(line: 678, column: 5, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !431, file: !1, line: 678, column: 5)
!1058 = !DILocation(line: 678, column: 5, scope: !431)
!1059 = !DILocation(line: 678, column: 5, scope: !1060)
!1060 = !DILexicalBlockFile(scope: !1057, file: !1, discriminator: 6)
!1061 = !DILocation(line: 682, column: 27, scope: !412)
!1062 = !{!791, !770, i64 256}
!1063 = !DILocation(line: 683, column: 5, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !412, file: !1, line: 683, column: 5)
!1065 = !DILocation(line: 683, column: 5, scope: !412)
!1066 = !DILocation(line: 683, column: 5, scope: !1016)
!1067 = !DILocation(line: 683, column: 5, scope: !437)
!1068 = !DILocation(line: 683, column: 5, scope: !1069)
!1069 = !DILexicalBlockFile(scope: !435, file: !1, discriminator: 4)
!1070 = !DILocation(line: 683, column: 5, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !435, file: !1, line: 683, column: 5)
!1072 = !DILocation(line: 683, column: 5, scope: !435)
!1073 = !DILocation(line: 683, column: 5, scope: !1074)
!1074 = !DILexicalBlockFile(scope: !1071, file: !1, discriminator: 6)
!1075 = !DILocation(line: 686, column: 28, scope: !412)
!1076 = !DILocation(line: 687, column: 5, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !412, file: !1, line: 687, column: 5)
!1078 = !DILocation(line: 687, column: 5, scope: !412)
!1079 = !DILocation(line: 687, column: 5, scope: !1016)
!1080 = !DILocation(line: 687, column: 5, scope: !441)
!1081 = !DILocation(line: 687, column: 5, scope: !1082)
!1082 = !DILexicalBlockFile(scope: !439, file: !1, discriminator: 4)
!1083 = !DILocation(line: 687, column: 5, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !439, file: !1, line: 687, column: 5)
!1085 = !DILocation(line: 687, column: 5, scope: !439)
!1086 = !DILocation(line: 687, column: 5, scope: !1087)
!1087 = !DILexicalBlockFile(scope: !1084, file: !1, discriminator: 6)
!1088 = !DILocation(line: 688, column: 9, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !412, file: !1, line: 688, column: 9)
!1090 = !DILocation(line: 688, column: 46, scope: !1089)
!1091 = !DILocation(line: 688, column: 9, scope: !412)
!1092 = !DILocation(line: 692, column: 29, scope: !412)
!1093 = !DILocation(line: 693, column: 5, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !412, file: !1, line: 693, column: 5)
!1095 = !DILocation(line: 693, column: 5, scope: !412)
!1096 = !DILocation(line: 693, column: 5, scope: !1016)
!1097 = !DILocation(line: 693, column: 5, scope: !445)
!1098 = !DILocation(line: 693, column: 5, scope: !1099)
!1099 = !DILexicalBlockFile(scope: !443, file: !1, discriminator: 4)
!1100 = !DILocation(line: 693, column: 5, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !443, file: !1, line: 693, column: 5)
!1102 = !DILocation(line: 693, column: 5, scope: !443)
!1103 = !DILocation(line: 693, column: 5, scope: !1104)
!1104 = !DILexicalBlockFile(scope: !1101, file: !1, discriminator: 6)
!1105 = !DILocation(line: 696, column: 35, scope: !412)
!1106 = !DILocation(line: 697, column: 5, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !412, file: !1, line: 697, column: 5)
!1108 = !DILocation(line: 697, column: 5, scope: !412)
!1109 = !DILocation(line: 697, column: 5, scope: !1016)
!1110 = !DILocation(line: 697, column: 5, scope: !449)
!1111 = !DILocation(line: 697, column: 5, scope: !1112)
!1112 = !DILexicalBlockFile(scope: !447, file: !1, discriminator: 4)
!1113 = !DILocation(line: 697, column: 5, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !447, file: !1, line: 697, column: 5)
!1115 = !DILocation(line: 697, column: 5, scope: !447)
!1116 = !DILocation(line: 697, column: 5, scope: !1117)
!1117 = !DILexicalBlockFile(scope: !1114, file: !1, discriminator: 6)
!1118 = !DILocation(line: 700, column: 35, scope: !412)
!1119 = !DILocation(line: 701, column: 5, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !412, file: !1, line: 701, column: 5)
!1121 = !DILocation(line: 701, column: 5, scope: !412)
!1122 = !DILocation(line: 701, column: 5, scope: !1016)
!1123 = !DILocation(line: 701, column: 5, scope: !453)
!1124 = !DILocation(line: 701, column: 5, scope: !1125)
!1125 = !DILexicalBlockFile(scope: !451, file: !1, discriminator: 4)
!1126 = !DILocation(line: 701, column: 5, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !451, file: !1, line: 701, column: 5)
!1128 = !DILocation(line: 701, column: 5, scope: !451)
!1129 = !DILocation(line: 701, column: 5, scope: !1130)
!1130 = !DILexicalBlockFile(scope: !1127, file: !1, discriminator: 6)
!1131 = !DILocation(line: 704, column: 35, scope: !412)
!1132 = !DILocation(line: 705, column: 5, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !412, file: !1, line: 705, column: 5)
!1134 = !DILocation(line: 705, column: 5, scope: !412)
!1135 = !DILocation(line: 705, column: 5, scope: !1016)
!1136 = !DILocation(line: 705, column: 5, scope: !457)
!1137 = !DILocation(line: 705, column: 5, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !455, file: !1, discriminator: 4)
!1139 = !DILocation(line: 705, column: 5, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !455, file: !1, line: 705, column: 5)
!1141 = !DILocation(line: 705, column: 5, scope: !455)
!1142 = !DILocation(line: 705, column: 5, scope: !1143)
!1143 = !DILexicalBlockFile(scope: !1140, file: !1, discriminator: 6)
!1144 = !DILocation(line: 708, column: 35, scope: !412)
!1145 = !DILocation(line: 709, column: 5, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !412, file: !1, line: 709, column: 5)
!1147 = !DILocation(line: 709, column: 5, scope: !412)
!1148 = !DILocation(line: 709, column: 5, scope: !1016)
!1149 = !DILocation(line: 709, column: 5, scope: !461)
!1150 = !DILocation(line: 709, column: 5, scope: !1151)
!1151 = !DILexicalBlockFile(scope: !459, file: !1, discriminator: 4)
!1152 = !DILocation(line: 709, column: 5, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !459, file: !1, line: 709, column: 5)
!1154 = !DILocation(line: 709, column: 5, scope: !459)
!1155 = !DILocation(line: 709, column: 5, scope: !1156)
!1156 = !DILexicalBlockFile(scope: !1153, file: !1, discriminator: 6)
!1157 = !DILocation(line: 712, column: 34, scope: !412)
!1158 = !DILocation(line: 713, column: 5, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !412, file: !1, line: 713, column: 5)
!1160 = !DILocation(line: 713, column: 5, scope: !412)
!1161 = !DILocation(line: 713, column: 5, scope: !1016)
!1162 = !DILocation(line: 713, column: 5, scope: !465)
!1163 = !DILocation(line: 713, column: 5, scope: !1164)
!1164 = !DILexicalBlockFile(scope: !463, file: !1, discriminator: 4)
!1165 = !DILocation(line: 713, column: 5, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !463, file: !1, line: 713, column: 5)
!1167 = !DILocation(line: 713, column: 5, scope: !463)
!1168 = !DILocation(line: 713, column: 5, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !1166, file: !1, discriminator: 6)
!1170 = !DILocation(line: 716, column: 5, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !412, file: !1, line: 716, column: 5)
!1172 = !DILocation(line: 716, column: 5, scope: !412)
!1173 = !DILocation(line: 716, column: 5, scope: !1016)
!1174 = !DILocation(line: 716, column: 5, scope: !469)
!1175 = !DILocation(line: 716, column: 5, scope: !1176)
!1176 = !DILexicalBlockFile(scope: !467, file: !1, discriminator: 4)
!1177 = !DILocation(line: 716, column: 5, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !467, file: !1, line: 716, column: 5)
!1179 = !DILocation(line: 716, column: 5, scope: !467)
!1180 = !DILocation(line: 716, column: 5, scope: !1181)
!1181 = !DILexicalBlockFile(scope: !1178, file: !1, discriminator: 6)
!1182 = !DILocation(line: 724, column: 5, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !412, file: !1, line: 724, column: 5)
!1184 = !DILocation(line: 724, column: 5, scope: !1185)
!1185 = !DILexicalBlockFile(scope: !1183, file: !1, discriminator: 1)
!1186 = !DILocation(line: 724, column: 5, scope: !412)
!1187 = !DILocation(line: 725, column: 5, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !412, file: !1, line: 725, column: 5)
!1189 = !DILocation(line: 725, column: 5, scope: !1190)
!1190 = !DILexicalBlockFile(scope: !1188, file: !1, discriminator: 1)
!1191 = !DILocation(line: 725, column: 5, scope: !412)
!1192 = !DILocation(line: 726, column: 5, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !412, file: !1, line: 726, column: 5)
!1194 = !DILocation(line: 726, column: 5, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1193, file: !1, discriminator: 1)
!1196 = !DILocation(line: 726, column: 5, scope: !412)
!1197 = !DILocation(line: 727, column: 5, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !412, file: !1, line: 727, column: 5)
!1199 = !DILocation(line: 727, column: 5, scope: !1200)
!1200 = !DILexicalBlockFile(scope: !1198, file: !1, discriminator: 1)
!1201 = !DILocation(line: 727, column: 5, scope: !412)
!1202 = !DILocation(line: 728, column: 5, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !412, file: !1, line: 728, column: 5)
!1204 = !DILocation(line: 728, column: 5, scope: !1205)
!1205 = !DILexicalBlockFile(scope: !1203, file: !1, discriminator: 1)
!1206 = !DILocation(line: 728, column: 5, scope: !412)
!1207 = !DILocation(line: 729, column: 5, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !412, file: !1, line: 729, column: 5)
!1209 = !DILocation(line: 729, column: 5, scope: !1210)
!1210 = !DILexicalBlockFile(scope: !1208, file: !1, discriminator: 1)
!1211 = !DILocation(line: 729, column: 5, scope: !412)
!1212 = !DILocation(line: 730, column: 5, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !412, file: !1, line: 730, column: 5)
!1214 = !DILocation(line: 730, column: 5, scope: !1215)
!1215 = !DILexicalBlockFile(scope: !1213, file: !1, discriminator: 1)
!1216 = !DILocation(line: 730, column: 5, scope: !412)
!1217 = !DILocation(line: 731, column: 5, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !412, file: !1, line: 731, column: 5)
!1219 = !DILocation(line: 731, column: 5, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !1218, file: !1, discriminator: 1)
!1221 = !DILocation(line: 731, column: 5, scope: !412)
!1222 = !DILocation(line: 732, column: 5, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !412, file: !1, line: 732, column: 5)
!1224 = !DILocation(line: 732, column: 5, scope: !1225)
!1225 = !DILexicalBlockFile(scope: !1223, file: !1, discriminator: 1)
!1226 = !DILocation(line: 732, column: 5, scope: !412)
!1227 = !DILocation(line: 733, column: 5, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !412, file: !1, line: 733, column: 5)
!1229 = !DILocation(line: 733, column: 5, scope: !1230)
!1230 = !DILexicalBlockFile(scope: !1228, file: !1, discriminator: 1)
!1231 = !DILocation(line: 733, column: 5, scope: !412)
!1232 = !DILocation(line: 734, column: 5, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !412, file: !1, line: 734, column: 5)
!1234 = !DILocation(line: 734, column: 5, scope: !1235)
!1235 = !DILexicalBlockFile(scope: !1233, file: !1, discriminator: 1)
!1236 = !DILocation(line: 734, column: 5, scope: !412)
!1237 = !DILocation(line: 735, column: 5, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !412, file: !1, line: 735, column: 5)
!1239 = !DILocation(line: 735, column: 5, scope: !1240)
!1240 = !DILexicalBlockFile(scope: !1238, file: !1, discriminator: 1)
!1241 = !DILocation(line: 735, column: 5, scope: !412)
!1242 = !DILocation(line: 736, column: 5, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !412, file: !1, line: 736, column: 5)
!1244 = !DILocation(line: 736, column: 5, scope: !1245)
!1245 = !DILexicalBlockFile(scope: !1243, file: !1, discriminator: 1)
!1246 = !DILocation(line: 736, column: 5, scope: !412)
!1247 = !DILocation(line: 737, column: 5, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !412, file: !1, line: 737, column: 5)
!1249 = !DILocation(line: 737, column: 5, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !1248, file: !1, discriminator: 1)
!1251 = !DILocation(line: 737, column: 5, scope: !412)
!1252 = !DILocation(line: 738, column: 5, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !412, file: !1, line: 738, column: 5)
!1254 = !DILocation(line: 738, column: 5, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1253, file: !1, discriminator: 1)
!1256 = !DILocation(line: 738, column: 5, scope: !412)
!1257 = !DILocation(line: 739, column: 5, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !412, file: !1, line: 739, column: 5)
!1259 = !DILocation(line: 739, column: 5, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !1258, file: !1, discriminator: 1)
!1261 = !DILocation(line: 739, column: 5, scope: !412)
!1262 = !DILocation(line: 740, column: 5, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !412, file: !1, line: 740, column: 5)
!1264 = !DILocation(line: 740, column: 5, scope: !1265)
!1265 = !DILexicalBlockFile(scope: !1263, file: !1, discriminator: 1)
!1266 = !DILocation(line: 740, column: 5, scope: !412)
!1267 = !DILocation(line: 741, column: 5, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !412, file: !1, line: 741, column: 5)
!1269 = !DILocation(line: 741, column: 5, scope: !1270)
!1270 = !DILexicalBlockFile(scope: !1268, file: !1, discriminator: 1)
!1271 = !DILocation(line: 741, column: 5, scope: !412)
!1272 = !DILocation(line: 742, column: 5, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !412, file: !1, line: 742, column: 5)
!1274 = !DILocation(line: 742, column: 5, scope: !1275)
!1275 = !DILexicalBlockFile(scope: !1273, file: !1, discriminator: 1)
!1276 = !DILocation(line: 742, column: 5, scope: !412)
!1277 = !DILocation(line: 743, column: 5, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !412, file: !1, line: 743, column: 5)
!1279 = !DILocation(line: 743, column: 5, scope: !1280)
!1280 = !DILexicalBlockFile(scope: !1278, file: !1, discriminator: 1)
!1281 = !DILocation(line: 743, column: 5, scope: !412)
!1282 = !DILocation(line: 744, column: 5, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !412, file: !1, line: 744, column: 5)
!1284 = !DILocation(line: 744, column: 5, scope: !1285)
!1285 = !DILexicalBlockFile(scope: !1283, file: !1, discriminator: 1)
!1286 = !DILocation(line: 744, column: 5, scope: !412)
!1287 = !DILocation(line: 745, column: 5, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !412, file: !1, line: 745, column: 5)
!1289 = !DILocation(line: 745, column: 5, scope: !1290)
!1290 = !DILexicalBlockFile(scope: !1288, file: !1, discriminator: 1)
!1291 = !DILocation(line: 745, column: 5, scope: !412)
!1292 = !DILocation(line: 746, column: 5, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !412, file: !1, line: 746, column: 5)
!1294 = !DILocation(line: 746, column: 5, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !1293, file: !1, discriminator: 1)
!1296 = !DILocation(line: 746, column: 5, scope: !412)
!1297 = !DILocation(line: 748, column: 10, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !412, file: !1, line: 748, column: 9)
!1299 = !DILocation(line: 748, column: 23, scope: !1298)
!1300 = !DILocation(line: 749, column: 26, scope: !1298)
!1301 = !DILocation(line: 749, column: 24, scope: !1298)
!1302 = !DILocation(line: 748, column: 9, scope: !412)
!1303 = !DILocation(line: 752, column: 10, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !412, file: !1, line: 752, column: 9)
!1305 = !DILocation(line: 752, column: 26, scope: !1304)
!1306 = !DILocation(line: 753, column: 29, scope: !1304)
!1307 = !DILocation(line: 753, column: 27, scope: !1304)
!1308 = !DILocation(line: 752, column: 9, scope: !412)
!1309 = !DILocation(line: 755, column: 10, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !412, file: !1, line: 755, column: 9)
!1311 = !DILocation(line: 755, column: 28, scope: !1310)
!1312 = !DILocation(line: 756, column: 31, scope: !1310)
!1313 = !DILocation(line: 756, column: 29, scope: !1310)
!1314 = !DILocation(line: 755, column: 9, scope: !412)
!1315 = !DILocation(line: 758, column: 10, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !412, file: !1, line: 758, column: 9)
!1317 = !DILocation(line: 758, column: 21, scope: !1316)
!1318 = !DILocation(line: 759, column: 24, scope: !1316)
!1319 = !DILocation(line: 759, column: 22, scope: !1316)
!1320 = !DILocation(line: 758, column: 9, scope: !412)
!1321 = !DILocation(line: 762, column: 24, scope: !412)
!1322 = !DILocation(line: 764, column: 5, scope: !412)
!1323 = !DILocation(line: 767, column: 5, scope: !474)
!1324 = !DILocation(line: 767, column: 5, scope: !471)
!1325 = !DILocation(line: 767, column: 5, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !473, file: !1, discriminator: 4)
!1327 = !DILocation(line: 767, column: 5, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !473, file: !1, line: 767, column: 5)
!1329 = !DILocation(line: 767, column: 5, scope: !473)
!1330 = !DILocation(line: 767, column: 5, scope: !1331)
!1331 = !DILexicalBlockFile(scope: !1328, file: !1, discriminator: 6)
!1332 = !DILocation(line: 768, column: 5, scope: !1333)
!1333 = !DILexicalBlockFile(scope: !476, file: !1, discriminator: 1)
!1334 = !DILocation(line: 768, column: 5, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !476, file: !1, line: 768, column: 5)
!1336 = !DILocation(line: 768, column: 5, scope: !476)
!1337 = !DILocation(line: 768, column: 5, scope: !1338)
!1338 = !DILexicalBlockFile(scope: !1335, file: !1, discriminator: 3)
!1339 = !DILocation(line: 770, column: 1, scope: !412)
!1340 = !DILocation(line: 221, column: 19, scope: !477)
!1341 = !DILocation(line: 221, column: 35, scope: !477)
!1342 = !DILocation(line: 221, column: 51, scope: !477)
!1343 = !DILocation(line: 223, column: 5, scope: !477)
!1344 = !DILocation(line: 223, column: 11, scope: !477)
!1345 = !DILocation(line: 226, column: 5, scope: !477)
!1346 = !DILocation(line: 226, column: 22, scope: !477)
!1347 = !DILocation(line: 227, column: 5, scope: !477)
!1348 = !DILocation(line: 227, column: 11, scope: !477)
!1349 = !DILocation(line: 228, column: 5, scope: !477)
!1350 = !DILocation(line: 228, column: 9, scope: !477)
!1351 = !{!793, !793, i64 0}
!1352 = !DILocation(line: 228, column: 25, scope: !477)
!1353 = !DILocation(line: 229, column: 5, scope: !477)
!1354 = !DILocation(line: 229, column: 11, scope: !477)
!1355 = !DILocation(line: 229, column: 29, scope: !477)
!1356 = !DILocation(line: 229, column: 45, scope: !477)
!1357 = !DILocation(line: 232, column: 9, scope: !477)
!1358 = !DILocation(line: 232, column: 23, scope: !477)
!1359 = !DILocation(line: 232, column: 36, scope: !477)
!1360 = !DILocation(line: 232, column: 49, scope: !477)
!1361 = !DILocation(line: 232, column: 64, scope: !477)
!1362 = !DILocation(line: 233, column: 9, scope: !477)
!1363 = !DILocation(line: 233, column: 19, scope: !477)
!1364 = !DILocation(line: 233, column: 31, scope: !477)
!1365 = !DILocation(line: 235, column: 5, scope: !477)
!1366 = !DILocation(line: 235, column: 10, scope: !477)
!1367 = !DILocation(line: 238, column: 21, scope: !477)
!1368 = !DILocation(line: 238, column: 38, scope: !477)
!1369 = !DILocation(line: 238, column: 54, scope: !477)
!1370 = !DILocation(line: 244, column: 68, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !477, file: !1, line: 244, column: 9)
!1372 = !DILocation(line: 226, column: 15, scope: !477)
!1373 = !DILocation(line: 244, column: 10, scope: !1371)
!1374 = !DILocation(line: 244, column: 9, scope: !477)
!1375 = !DILocation(line: 251, column: 10, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !477, file: !1, line: 251, column: 9)
!1377 = !{!791, !788, i64 168}
!1378 = !DILocation(line: 251, column: 32, scope: !1376)
!1379 = !DILocation(line: 295, column: 66, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !1, line: 293, column: 34)
!1381 = distinct !DILexicalBlock(scope: !515, file: !1, line: 293, column: 13)
!1382 = !DILocation(line: 259, column: 21, scope: !516)
!1383 = !DILocation(line: 259, column: 19, scope: !516)
!1384 = !DILocation(line: 259, column: 5, scope: !517)
!1385 = !DILocation(line: 260, column: 18, scope: !515)
!1386 = !DILocation(line: 235, column: 23, scope: !477)
!1387 = !DILocation(line: 307, column: 8, scope: !477)
!1388 = !{!771, !771, i64 0}
!1389 = !DILocation(line: 322, column: 14, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !477, file: !1, line: 322, column: 9)
!1391 = !DILocation(line: 253, column: 3, scope: !1376)
!1392 = !DILocation(line: 251, column: 9, scope: !477)
!1393 = !DILocation(line: 254, column: 22, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1376, file: !1, line: 253, column: 25)
!1395 = !DILocation(line: 254, column: 59, scope: !1394)
!1396 = !DILocation(line: 254, column: 9, scope: !1394)
!1397 = !DILocation(line: 255, column: 9, scope: !1394)
!1398 = !DILocation(line: 259, column: 17, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !1400, file: !1, discriminator: 2)
!1400 = !DILexicalBlockFile(scope: !516, file: !1, discriminator: 1)
!1401 = !DILocation(line: 260, column: 14, scope: !515)
!1402 = !DILocation(line: 262, column: 17, scope: !515)
!1403 = !DILocation(line: 262, column: 9, scope: !515)
!1404 = !DILocation(line: 268, column: 13, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !515, file: !1, line: 262, column: 20)
!1406 = !DILocation(line: 271, column: 13, scope: !1405)
!1407 = !DILocation(line: 274, column: 13, scope: !1405)
!1408 = !DILocation(line: 277, column: 13, scope: !1405)
!1409 = !DILocation(line: 280, column: 13, scope: !1405)
!1410 = !DILocation(line: 283, column: 13, scope: !1405)
!1411 = !DILocation(line: 287, column: 13, scope: !1405)
!1412 = !DILocation(line: 293, column: 13, scope: !1413)
!1413 = !DILexicalBlockFile(scope: !1414, file: !1, discriminator: 4)
!1414 = !DILexicalBlockFile(scope: !1381, file: !1, discriminator: 2)
!1415 = !DILocation(line: 259, column: 36, scope: !516)
!1416 = !DILocation(line: 230, column: 14, scope: !477)
!1417 = !DILocation(line: 293, column: 13, scope: !515)
!1418 = !DILocation(line: 295, column: 26, scope: !1380)
!1419 = !DILocation(line: 295, column: 13, scope: !1380)
!1420 = !DILocation(line: 302, column: 9, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !477, file: !1, line: 302, column: 9)
!1422 = !DILocation(line: 302, column: 9, scope: !477)
!1423 = !DILocation(line: 302, column: 23, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !1421, file: !1, discriminator: 1)
!1425 = !DILocation(line: 302, column: 27, scope: !1421)
!1426 = !DILocation(line: 302, column: 20, scope: !1421)
!1427 = !DILocation(line: 303, column: 9, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !477, file: !1, line: 303, column: 9)
!1429 = !DILocation(line: 303, column: 9, scope: !477)
!1430 = !DILocation(line: 303, column: 23, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !1428, file: !1, discriminator: 1)
!1432 = !DILocation(line: 303, column: 27, scope: !1428)
!1433 = !DILocation(line: 303, column: 20, scope: !1428)
!1434 = !DILocation(line: 304, column: 9, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !477, file: !1, line: 304, column: 9)
!1436 = !DILocation(line: 304, column: 9, scope: !477)
!1437 = !DILocation(line: 304, column: 23, scope: !1438)
!1438 = !DILexicalBlockFile(scope: !1435, file: !1, discriminator: 1)
!1439 = !DILocation(line: 304, column: 27, scope: !1435)
!1440 = !DILocation(line: 304, column: 20, scope: !1435)
!1441 = !DILocation(line: 305, column: 9, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !477, file: !1, line: 305, column: 9)
!1443 = !DILocation(line: 305, column: 9, scope: !477)
!1444 = !DILocation(line: 305, column: 23, scope: !1445)
!1445 = !DILexicalBlockFile(scope: !1442, file: !1, discriminator: 1)
!1446 = !DILocation(line: 305, column: 27, scope: !1442)
!1447 = !DILocation(line: 305, column: 20, scope: !1442)
!1448 = !DILocation(line: 306, column: 9, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !477, file: !1, line: 306, column: 9)
!1450 = !DILocation(line: 306, column: 9, scope: !477)
!1451 = !DILocation(line: 306, column: 23, scope: !1452)
!1452 = !DILexicalBlockFile(scope: !1449, file: !1, discriminator: 1)
!1453 = !DILocation(line: 306, column: 27, scope: !1449)
!1454 = !DILocation(line: 306, column: 20, scope: !1449)
!1455 = !DILocation(line: 310, column: 9, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !477, file: !1, line: 310, column: 9)
!1457 = !DILocation(line: 310, column: 9, scope: !477)
!1458 = !DILocation(line: 311, column: 21, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !1, line: 311, column: 13)
!1460 = distinct !DILexicalBlock(scope: !1456, file: !1, line: 310, column: 20)
!1461 = !DILocation(line: 312, column: 29, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1459, file: !1, line: 311, column: 35)
!1463 = !DILocation(line: 312, column: 13, scope: !1462)
!1464 = !DILocation(line: 314, column: 13, scope: !1462)
!1465 = !DILocation(line: 316, column: 26, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1460, file: !1, line: 316, column: 13)
!1467 = !DILocation(line: 316, column: 13, scope: !1466)
!1468 = !DILocation(line: 317, column: 55, scope: !1466)
!1469 = !DILocation(line: 316, column: 13, scope: !1460)
!1470 = !DILocation(line: 322, column: 9, scope: !1390)
!1471 = !DILocation(line: 322, column: 17, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !1390, file: !1, discriminator: 1)
!1473 = !DILocation(line: 323, column: 25, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1390, file: !1, line: 322, column: 25)
!1475 = !DILocation(line: 323, column: 9, scope: !1474)
!1476 = !DILocation(line: 325, column: 9, scope: !1474)
!1477 = !DILocation(line: 328, column: 18, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !477, file: !1, line: 328, column: 9)
!1479 = !DILocation(line: 328, column: 28, scope: !1478)
!1480 = !DILocation(line: 328, column: 38, scope: !1478)
!1481 = !DILocation(line: 328, column: 50, scope: !1478)
!1482 = !DILocation(line: 328, column: 9, scope: !477)
!1483 = !DILocation(line: 329, column: 25, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1478, file: !1, line: 328, column: 55)
!1485 = !DILocation(line: 329, column: 9, scope: !1484)
!1486 = !DILocation(line: 331, column: 9, scope: !1484)
!1487 = !DILocation(line: 334, column: 28, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !477, file: !1, line: 334, column: 9)
!1489 = !DILocation(line: 334, column: 16, scope: !1488)
!1490 = !DILocation(line: 335, column: 25, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1488, file: !1, line: 334, column: 37)
!1492 = !DILocation(line: 335, column: 9, scope: !1491)
!1493 = !DILocation(line: 337, column: 9, scope: !1491)
!1494 = !DILocation(line: 340, column: 26, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !477, file: !1, line: 340, column: 9)
!1496 = !DILocation(line: 340, column: 16, scope: !1495)
!1497 = !DILocation(line: 341, column: 25, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1495, file: !1, line: 340, column: 35)
!1499 = !DILocation(line: 341, column: 9, scope: !1498)
!1500 = !DILocation(line: 343, column: 9, scope: !1498)
!1501 = !DILocation(line: 346, column: 27, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !477, file: !1, line: 346, column: 9)
!1503 = !DILocation(line: 346, column: 16, scope: !1502)
!1504 = !DILocation(line: 347, column: 25, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1502, file: !1, line: 346, column: 36)
!1506 = !DILocation(line: 347, column: 9, scope: !1505)
!1507 = !DILocation(line: 349, column: 9, scope: !1505)
!1508 = !DILocation(line: 354, column: 41, scope: !477)
!1509 = !DILocation(line: 354, column: 56, scope: !477)
!1510 = !DILocation(line: 354, column: 65, scope: !477)
!1511 = !DILocation(line: 353, column: 11, scope: !477)
!1512 = !DILocation(line: 238, column: 15, scope: !477)
!1513 = !DILocation(line: 355, column: 13, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !477, file: !1, line: 355, column: 9)
!1515 = !DILocation(line: 355, column: 9, scope: !477)
!1516 = !DILocation(line: 358, column: 36, scope: !477)
!1517 = !DILocation(line: 358, column: 15, scope: !477)
!1518 = !DILocation(line: 359, column: 17, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !477, file: !1, line: 359, column: 9)
!1520 = !DILocation(line: 359, column: 9, scope: !477)
!1521 = !DILocation(line: 364, column: 25, scope: !519)
!1522 = !DILocation(line: 364, column: 19, scope: !519)
!1523 = !DILocation(line: 365, column: 17, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !519, file: !1, line: 365, column: 13)
!1525 = !DILocation(line: 365, column: 13, scope: !519)
!1526 = !DILocation(line: 367, column: 18, scope: !519)
!1527 = !DILocation(line: 236, column: 25, scope: !477)
!1528 = !DILocation(line: 368, column: 9, scope: !1529)
!1529 = !DILexicalBlockFile(scope: !521, file: !1, discriminator: 1)
!1530 = !DILocation(line: 368, column: 9, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !521, file: !1, line: 368, column: 9)
!1532 = !DILocation(line: 368, column: 9, scope: !521)
!1533 = !DILocation(line: 368, column: 9, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !1531, file: !1, discriminator: 3)
!1535 = !DILocation(line: 369, column: 20, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !519, file: !1, line: 369, column: 13)
!1537 = !DILocation(line: 369, column: 26, scope: !1536)
!1538 = !DILocation(line: 369, column: 29, scope: !1539)
!1539 = !DILexicalBlockFile(scope: !1536, file: !1, discriminator: 1)
!1540 = !DILocation(line: 369, column: 13, scope: !519)
!1541 = !DILocation(line: 380, column: 9, scope: !525)
!1542 = !DILocation(line: 373, column: 19, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !477, file: !1, line: 373, column: 9)
!1544 = !DILocation(line: 373, column: 24, scope: !1543)
!1545 = !DILocation(line: 373, column: 38, scope: !1543)
!1546 = !DILocation(line: 373, column: 45, scope: !1547)
!1547 = !DILexicalBlockFile(scope: !1543, file: !1, discriminator: 2)
!1548 = !DILocation(line: 373, column: 42, scope: !1543)
!1549 = !DILocation(line: 374, column: 19, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1543, file: !1, line: 373, column: 54)
!1551 = !DILocation(line: 236, column: 9, scope: !477)
!1552 = !DILocation(line: 380, column: 9, scope: !477)
!1553 = !DILocation(line: 381, column: 19, scope: !524)
!1554 = !DILocation(line: 384, column: 13, scope: !523)
!1555 = !DILocation(line: 386, column: 29, scope: !523)
!1556 = !DILocation(line: 386, column: 23, scope: !523)
!1557 = !DILocation(line: 387, column: 21, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !523, file: !1, line: 387, column: 17)
!1559 = !DILocation(line: 387, column: 17, scope: !523)
!1560 = !DILocation(line: 390, column: 22, scope: !523)
!1561 = !DILocation(line: 385, column: 18, scope: !523)
!1562 = !DILocation(line: 391, column: 13, scope: !1563)
!1563 = !DILexicalBlockFile(scope: !565, file: !1, discriminator: 1)
!1564 = !DILocation(line: 391, column: 13, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !565, file: !1, line: 391, column: 13)
!1566 = !DILocation(line: 391, column: 13, scope: !565)
!1567 = !DILocation(line: 391, column: 13, scope: !1568)
!1568 = !DILexicalBlockFile(scope: !1565, file: !1, discriminator: 3)
!1569 = !DILocation(line: 392, column: 24, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !523, file: !1, line: 392, column: 17)
!1571 = !DILocation(line: 392, column: 30, scope: !1570)
!1572 = !DILocation(line: 392, column: 33, scope: !1573)
!1573 = !DILexicalBlockFile(scope: !1570, file: !1, discriminator: 1)
!1574 = !DILocation(line: 392, column: 17, scope: !523)
!1575 = !DILocation(line: 395, column: 23, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !523, file: !1, line: 395, column: 17)
!1577 = !DILocation(line: 384, column: 25, scope: !523)
!1578 = !DILocation(line: 395, column: 17, scope: !1576)
!1579 = !DILocation(line: 517, column: 1, scope: !610, inlinedAt: !1580)
!1580 = distinct !DILocation(line: 395, column: 17, scope: !1576)
!1581 = !DILocation(line: 519, column: 10, scope: !610, inlinedAt: !1580)
!1582 = !DILocation(line: 395, column: 36, scope: !1576)
!1583 = !DILocation(line: 395, column: 41, scope: !1576)
!1584 = !DILocation(line: 395, column: 47, scope: !1585)
!1585 = !DILexicalBlockFile(scope: !1576, file: !1, discriminator: 1)
!1586 = !{!1587, !788, i64 56}
!1587 = !{!"stat", !788, i64 0, !788, i64 8, !788, i64 16, !793, i64 24, !793, i64 28, !793, i64 32, !793, i64 36, !788, i64 40, !788, i64 48, !788, i64 56, !788, i64 64, !1588, i64 72, !1588, i64 88, !1588, i64 104, !771, i64 120}
!1588 = !{!"timespec", !788, i64 0, !788, i64 8}
!1589 = !DILocation(line: 395, column: 58, scope: !1576)
!1590 = !DILocation(line: 395, column: 17, scope: !523)
!1591 = !DILocation(line: 396, column: 29, scope: !1576)
!1592 = !DILocation(line: 396, column: 27, scope: !1576)
!1593 = !DILocation(line: 396, column: 17, scope: !1576)
!1594 = !DILocation(line: 397, column: 9, scope: !1595)
!1595 = !DILexicalBlockFile(scope: !524, file: !1, discriminator: 1)
!1596 = !DILocation(line: 400, column: 9, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !477, file: !1, line: 400, column: 9)
!1598 = !DILocation(line: 400, column: 19, scope: !1597)
!1599 = !DILocation(line: 400, column: 9, scope: !477)
!1600 = !DILocation(line: 401, column: 25, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1597, file: !1, line: 400, column: 24)
!1602 = !DILocation(line: 401, column: 9, scope: !1601)
!1603 = !DILocation(line: 403, column: 9, scope: !1601)
!1604 = !DILocation(line: 434, column: 67, scope: !571)
!1605 = !DILocation(line: 407, column: 19, scope: !569)
!1606 = !DILocation(line: 407, column: 9, scope: !477)
!1607 = !DILocation(line: 408, column: 13, scope: !568)
!1608 = !DILocation(line: 409, column: 29, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !1, line: 408, column: 22)
!1610 = distinct !DILexicalBlock(scope: !568, file: !1, line: 408, column: 13)
!1611 = !DILocation(line: 409, column: 13, scope: !1609)
!1612 = !DILocation(line: 411, column: 13, scope: !1609)
!1613 = !DILocation(line: 414, column: 9, scope: !1614)
!1614 = !DILexicalBlockFile(scope: !567, file: !1, discriminator: 1)
!1615 = !DILocation(line: 414, column: 9, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !567, file: !1, line: 414, column: 9)
!1617 = !DILocation(line: 414, column: 9, scope: !567)
!1618 = !DILocation(line: 414, column: 9, scope: !1619)
!1619 = !DILexicalBlockFile(scope: !1616, file: !1, discriminator: 3)
!1620 = !DILocation(line: 422, column: 13, scope: !571)
!1621 = !DILocation(line: 424, column: 27, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !1, line: 424, column: 18)
!1623 = distinct !DILexicalBlock(scope: !571, file: !1, line: 422, column: 13)
!1624 = !DILocation(line: 426, column: 18, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1622, file: !1, line: 426, column: 18)
!1626 = !DILocation(line: 426, column: 18, scope: !1622)
!1627 = !DILocation(line: 429, column: 26, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1625, file: !1, line: 428, column: 14)
!1629 = !DILocation(line: 430, column: 48, scope: !1628)
!1630 = !DILocation(line: 429, column: 13, scope: !1628)
!1631 = !DILocation(line: 434, column: 18, scope: !571)
!1632 = !DILocation(line: 436, column: 5, scope: !1633)
!1633 = !DILexicalBlockFile(scope: !573, file: !1, discriminator: 1)
!1634 = !DILocation(line: 436, column: 5, scope: !1635)
!1635 = !DILexicalBlockFile(scope: !575, file: !1, discriminator: 4)
!1636 = !DILocation(line: 436, column: 5, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !575, file: !1, line: 436, column: 5)
!1638 = !DILocation(line: 436, column: 5, scope: !575)
!1639 = !DILocation(line: 436, column: 5, scope: !1640)
!1640 = !DILexicalBlockFile(scope: !1637, file: !1, discriminator: 6)
!1641 = !DILocation(line: 437, column: 16, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !477, file: !1, line: 437, column: 9)
!1643 = !DILocation(line: 437, column: 9, scope: !477)
!1644 = !DILocation(line: 442, column: 9, scope: !477)
!1645 = !DILocation(line: 443, column: 9, scope: !1646)
!1646 = !DILexicalBlockFile(scope: !579, file: !1, discriminator: 1)
!1647 = !DILocation(line: 443, column: 9, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !579, file: !1, line: 443, column: 9)
!1649 = !DILocation(line: 443, column: 9, scope: !579)
!1650 = !DILocation(line: 443, column: 9, scope: !1651)
!1651 = !DILexicalBlockFile(scope: !1648, file: !1, discriminator: 3)
!1652 = !DILocation(line: 451, column: 9, scope: !477)
!1653 = !DILocation(line: 451, column: 19, scope: !477)
!1654 = !DILocation(line: 451, column: 27, scope: !477)
!1655 = !DILocation(line: 448, column: 15, scope: !477)
!1656 = !DILocation(line: 453, column: 5, scope: !1657)
!1657 = !DILexicalBlockFile(scope: !583, file: !1, discriminator: 1)
!1658 = !DILocation(line: 453, column: 5, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !585, file: !1, discriminator: 4)
!1660 = !DILocation(line: 453, column: 5, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !585, file: !1, line: 453, column: 5)
!1662 = !DILocation(line: 453, column: 5, scope: !585)
!1663 = !DILocation(line: 453, column: 5, scope: !1664)
!1664 = !DILexicalBlockFile(scope: !1661, file: !1, discriminator: 6)
!1665 = !DILocation(line: 454, column: 17, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !477, file: !1, line: 454, column: 9)
!1667 = !DILocation(line: 454, column: 9, scope: !477)
!1668 = !DILocation(line: 457, column: 9, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !477, file: !1, line: 457, column: 9)
!1670 = !DILocation(line: 457, column: 59, scope: !1669)
!1671 = !DILocation(line: 457, column: 9, scope: !477)
!1672 = !DILocation(line: 459, column: 5, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !589, file: !1, discriminator: 1)
!1674 = !DILocation(line: 459, column: 5, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !589, file: !1, line: 459, column: 5)
!1676 = !DILocation(line: 459, column: 5, scope: !589)
!1677 = !DILocation(line: 459, column: 5, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !1675, file: !1, discriminator: 3)
!1679 = !DILocation(line: 463, column: 5, scope: !1680)
!1680 = !DILexicalBlockFile(scope: !593, file: !1, discriminator: 4)
!1681 = !DILocation(line: 463, column: 5, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !593, file: !1, line: 463, column: 5)
!1683 = !DILocation(line: 463, column: 5, scope: !593)
!1684 = !DILocation(line: 463, column: 5, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1682, file: !1, discriminator: 6)
!1686 = !DILocation(line: 464, column: 5, scope: !1687)
!1687 = !DILexicalBlockFile(scope: !596, file: !1, discriminator: 1)
!1688 = !DILocation(line: 464, column: 5, scope: !596)
!1689 = !DILocation(line: 464, column: 5, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !598, file: !1, discriminator: 4)
!1691 = !DILocation(line: 464, column: 5, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !598, file: !1, line: 464, column: 5)
!1693 = !DILocation(line: 464, column: 5, scope: !598)
!1694 = !DILocation(line: 464, column: 5, scope: !1695)
!1695 = !DILexicalBlockFile(scope: !1692, file: !1, discriminator: 6)
!1696 = !DILocation(line: 466, column: 5, scope: !1697)
!1697 = !DILexicalBlockFile(scope: !606, file: !1, discriminator: 1)
!1698 = !DILocation(line: 466, column: 5, scope: !609)
!1699 = !DILocation(line: 466, column: 5, scope: !606)
!1700 = !DILocation(line: 466, column: 5, scope: !1701)
!1701 = !DILexicalBlockFile(scope: !608, file: !1, discriminator: 4)
!1702 = !DILocation(line: 466, column: 5, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !608, file: !1, line: 466, column: 5)
!1704 = !DILocation(line: 466, column: 5, scope: !608)
!1705 = !DILocation(line: 466, column: 5, scope: !1706)
!1706 = !DILexicalBlockFile(scope: !1703, file: !1, discriminator: 6)
!1707 = !DILocation(line: 468, column: 1, scope: !477)
