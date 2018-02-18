; ModuleID = './_iomodule.bc'
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
%struct._PyWeakReference = type { %struct._object, %struct._object*, %struct._object*, i64, %struct._PyWeakReference*, %struct._PyWeakReference* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

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
  %retval = alloca i64, align 8
  %item.addr = alloca %struct._object*, align 8
  %err.addr = alloca %struct._object*, align 8
  %result = alloca i64, align 8
  %runerr = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %item, %struct._object** %item.addr, align 8
  store %struct._object* %err, %struct._object** %err.addr, align 8
  %0 = load %struct._object*, %struct._object** %item.addr, align 8
  %call = call %struct._object* @PyNumber_Index(%struct._object* %0)
  store %struct._object* %call, %struct._object** %value, align 8
  %1 = load %struct._object*, %struct._object** %value, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %value, align 8
  %call1 = call i64 @PyLong_AsSsize_t(%struct._object* %2)
  store i64 %call1, i64* %result, align 8
  %3 = load i64, i64* %result, align 8
  %cmp2 = icmp ne i64 %3, -1
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = call %struct._object* @PyErr_Occurred()
  store %struct._object* %call3, %struct._object** %runerr, align 8
  %tobool = icmp ne %struct._object* %call3, null
  br i1 %tobool, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  br label %finish

if.end.5:                                         ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %runerr, align 8
  %5 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call6 = call i32 @PyErr_GivenExceptionMatches(%struct._object* %4, %struct._object* %5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.5
  br label %finish

if.end.9:                                         ; preds = %if.end.5
  call void @PyErr_Clear()
  %6 = load %struct._object*, %struct._object** %err.addr, align 8
  %tobool10 = icmp ne %struct._object* %6, null
  br i1 %tobool10, label %if.else.16, label %if.then.11

if.then.11:                                       ; preds = %if.end.9
  %7 = load %struct._object*, %struct._object** %value, align 8
  %call12 = call i32 @_PyLong_Sign(%struct._object* %7)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then.11
  store i64 -9223372036854775808, i64* %result, align 8
  br label %if.end.15

if.else:                                          ; preds = %if.then.11
  store i64 9223372036854775807, i64* %result, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.14
  br label %if.end.18

if.else.16:                                       ; preds = %if.end.9
  %8 = load %struct._object*, %struct._object** %err.addr, align 8
  %9 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 1
  %11 = load i8*, i8** %tp_name, align 8
  %call17 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i8* %11)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.end.15
  br label %finish

finish:                                           ; preds = %if.end.18, %if.then.8, %if.then.4
  br label %do.body

do.body:                                          ; preds = %finish
  %12 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp19 = icmp ne i64 %dec, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body
  br label %if.end.23

if.else.21:                                       ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.21, %if.then.20
  br label %do.end

do.end:                                           ; preds = %if.end.23
  %19 = load i64, i64* %result, align 8
  store i64 %19, i64* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %20 = load i64, i64* %retval
  ret i64 %20
}

declare %struct._object* @PyNumber_Index(%struct._object*) #1

declare i64 @PyLong_AsSsize_t(%struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare i32 @PyErr_GivenExceptionMatches(%struct._object*, %struct._object*) #1

declare void @PyErr_Clear() #1

declare i32 @_PyLong_Sign(%struct._object*) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @_PyIO_ConvertSsize_t(%struct._object* %obj, i8* %result) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %result.addr = alloca i8*, align 8
  %limit = alloca i64, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store i8* %result, i8** %result.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %cmp = icmp eq %struct._object* %0, @_Py_NoneStruct
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 -1, i64* %limit, align 8
  br label %if.end.10

if.else:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call i32 @PyNumber_Check(%struct._object* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.1, label %if.else.7

if.then.1:                                        ; preds = %if.else
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8
  %3 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call2 = call i64 @PyNumber_AsSsize_t(%struct._object* %2, %struct._object* %3)
  store i64 %call2, i64* %limit, align 8
  %4 = load i64, i64* %limit, align 8
  %cmp3 = icmp eq i64 %4, -1
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.1
  %call4 = call %struct._object* @PyErr_Occurred()
  %tobool5 = icmp ne %struct._object* %call4, null
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then.1
  br label %if.end.9

if.else.7:                                        ; preds = %if.else
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %6 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 1
  %8 = load i8*, i8** %tp_name, align 8
  %call8 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %5, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i32 0, i32 0), i8* %8)
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then
  %9 = load i64, i64* %limit, align 8
  %10 = load i8*, i8** %result.addr, align 8
  %11 = bitcast i8* %10 to i64*
  store i64 %9, i64* %11, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.else.7, %if.then.6
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @PyNumber_Check(%struct._object*) #1

declare i64 @PyNumber_AsSsize_t(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define %struct._PyIO_State* @_PyIO_get_module_state() #0 {
entry:
  %retval = alloca %struct._PyIO_State*, align 8
  %mod = alloca %struct._object*, align 8
  %state = alloca %struct._PyIO_State*, align 8
  %call = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_PyIO_Module)
  store %struct._object* %call, %struct._object** %mod, align 8
  %0 = load %struct._object*, %struct._object** %mod, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %mod, align 8
  %call1 = call i8* @PyModule_GetState(%struct._object* %1)
  %2 = bitcast i8* %call1 to %struct._PyIO_State*
  store %struct._PyIO_State* %2, %struct._PyIO_State** %state, align 8
  %cmp2 = icmp eq %struct._PyIO_State* %2, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i32 0, i32 0))
  store %struct._PyIO_State* null, %struct._PyIO_State** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8
  store %struct._PyIO_State* %4, %struct._PyIO_State** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._PyIO_State*, %struct._PyIO_State** %retval
  ret %struct._PyIO_State* %5
}

declare %struct._object* @PyState_FindModule(%struct.PyModuleDef*) #1

declare i8* @PyModule_GetState(%struct._object*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @_PyIO_get_locale_module(%struct._PyIO_State* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %state.addr = alloca %struct._PyIO_State*, align 8
  %mod = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp29 = alloca %struct._object*, align 8
  store %struct._PyIO_State* %state, %struct._PyIO_State** %state.addr, align 8
  %0 = load %struct._PyIO_State*, %struct._PyIO_State** %state.addr, align 8
  %locale_module = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %locale_module, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %2 = load %struct._PyIO_State*, %struct._PyIO_State** %state.addr, align 8
  %locale_module1 = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %locale_module1, align 8
  %4 = bitcast %struct._object* %3 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %4, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %cmp2 = icmp sgt i64 %6, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %7 = load %struct._PyIO_State*, %struct._PyIO_State** %state.addr, align 8
  %locale_module3 = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %locale_module3, align 8
  %9 = bitcast %struct._object* %8 to %struct._PyWeakReference*
  %wr_object4 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %9, i32 0, i32 1
  %10 = load %struct._object*, %struct._object** %wr_object4, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %10, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %mod, align 8
  %11 = load %struct._object*, %struct._object** %mod, align 8
  %cmp5 = icmp ne %struct._object* %11, @_Py_NoneStruct
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %cond.end
  %12 = load %struct._object*, %struct._object** %mod, align 8
  %ob_refcnt7 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt7, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %ob_refcnt7, align 8
  %14 = load %struct._object*, %struct._object** %mod, align 8
  store %struct._object* %14, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  br label %do.body

do.body:                                          ; preds = %if.end
  %15 = load %struct._PyIO_State*, %struct._PyIO_State** %state.addr, align 8
  %locale_module8 = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %15, i32 0, i32 1
  %16 = load %struct._object*, %struct._object** %locale_module8, align 8
  store %struct._object* %16, %struct._object** %_py_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp9 = icmp ne %struct._object* %17, null
  br i1 %cmp9, label %if.then.10, label %if.end.17

if.then.10:                                       ; preds = %do.body
  %18 = load %struct._PyIO_State*, %struct._PyIO_State** %state.addr, align 8
  %locale_module11 = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %18, i32 0, i32 1
  store %struct._object* null, %struct._object** %locale_module11, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.10
  %19 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt13, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %ob_refcnt13, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.body.12
  br label %if.end.16

if.else:                                          ; preds = %do.body.12
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %24(%struct._object* %25)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.16
  br label %if.end.17

if.end.17:                                        ; preds = %do.end, %do.body
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %if.end.19

if.end.19:                                        ; preds = %do.end.18, %entry
  %call = call %struct._object* @PyImport_ImportModule(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %mod, align 8
  %26 = load %struct._object*, %struct._object** %mod, align 8
  %cmp20 = icmp eq %struct._object* %26, null
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %if.end.19
  %27 = load %struct._object*, %struct._object** %mod, align 8
  %call23 = call %struct._object* @PyWeakref_NewRef(%struct._object* %27, %struct._object* null)
  %28 = load %struct._PyIO_State*, %struct._PyIO_State** %state.addr, align 8
  %locale_module24 = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %28, i32 0, i32 1
  store %struct._object* %call23, %struct._object** %locale_module24, align 8
  %29 = load %struct._PyIO_State*, %struct._PyIO_State** %state.addr, align 8
  %locale_module25 = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %29, i32 0, i32 1
  %30 = load %struct._object*, %struct._object** %locale_module25, align 8
  %cmp26 = icmp eq %struct._object* %30, null
  br i1 %cmp26, label %if.then.27, label %if.end.39

if.then.27:                                       ; preds = %if.end.22
  br label %do.body.28

do.body.28:                                       ; preds = %if.then.27
  %31 = load %struct._object*, %struct._object** %mod, align 8
  store %struct._object* %31, %struct._object** %_py_decref_tmp29, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt30, align 8
  %dec31 = add i64 %33, -1
  store i64 %dec31, i64* %ob_refcnt30, align 8
  %cmp32 = icmp ne i64 %dec31, 0
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body.28
  br label %if.end.37

if.else.34:                                       ; preds = %do.body.28
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %tp_dealloc36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  call void %36(%struct._object* %37)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.33
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.39:                                        ; preds = %if.end.22
  %38 = load %struct._object*, %struct._object** %mod, align 8
  store %struct._object* %38, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.39, %do.end.38, %if.then.21, %if.then.6
  %39 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %39
}

declare %struct._object* @PyImport_ImportModule(i8*) #1

declare %struct._object* @PyWeakref_NewRef(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @iomodule_traverse(%struct._object* %mod, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %mod.addr = alloca %struct._object*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %state = alloca %struct._PyIO_State*, align 8
  %vret = alloca i32, align 4
  %vret15 = alloca i32, align 4
  store %struct._object* %mod, %struct._object** %mod.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %mod.addr, align 8
  %call = call i8* @PyModule_GetState(%struct._object* %0)
  %1 = bitcast i8* %call to %struct._PyIO_State*
  store %struct._PyIO_State* %1, %struct._PyIO_State** %state, align 8
  %2 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8
  %initialized = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %2, i32 0, i32 0
  %3 = load i32, i32* %initialized, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8
  %locale_module = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %4, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %locale_module, align 8
  %cmp = icmp ne %struct._object* %5, null
  br i1 %cmp, label %if.then.1, label %if.end.11

if.then.1:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.1
  %6 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8
  %locale_module2 = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %6, i32 0, i32 1
  %7 = load %struct._object*, %struct._object** %locale_module2, align 8
  %tobool3 = icmp ne %struct._object* %7, null
  br i1 %tobool3, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %do.body
  %8 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %9 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8
  %locale_module5 = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %9, i32 0, i32 1
  %10 = load %struct._object*, %struct._object** %locale_module5, align 8
  %11 = load i8*, i8** %arg.addr, align 8
  %call6 = call i32 %8(%struct._object* %10, i8* %11)
  store i32 %call6, i32* %vret, align 4
  %12 = load i32, i32* %vret, align 4
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.4
  %13 = load i32, i32* %vret, align 4
  store i32 %13, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.then.4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %if.end.11

if.end.11:                                        ; preds = %do.end, %if.end
  br label %do.body.12

do.body.12:                                       ; preds = %if.end.11
  %14 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8
  %unsupported_operation = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %14, i32 0, i32 2
  %15 = load %struct._object*, %struct._object** %unsupported_operation, align 8
  %tobool13 = icmp ne %struct._object* %15, null
  br i1 %tobool13, label %if.then.14, label %if.end.21

if.then.14:                                       ; preds = %do.body.12
  %16 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %17 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8
  %unsupported_operation16 = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %17, i32 0, i32 2
  %18 = load %struct._object*, %struct._object** %unsupported_operation16, align 8
  %19 = load i8*, i8** %arg.addr, align 8
  %call17 = call i32 %16(%struct._object* %18, i8* %19)
  store i32 %call17, i32* %vret15, align 4
  %20 = load i32, i32* %vret15, align 4
  %tobool18 = icmp ne i32 %20, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.14
  %21 = load i32, i32* %vret15, align 4
  store i32 %21, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.then.14
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %do.body.12
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.22, %if.then.19, %if.then.8, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @iomodule_clear(%struct._object* %mod) #0 {
entry:
  %retval = alloca i32, align 4
  %mod.addr = alloca %struct._object*, align 8
  %state = alloca %struct._PyIO_State*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp14 = alloca %struct._object*, align 8
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  store %struct._object* %mod, %struct._object** %mod.addr, align 8
  %0 = load %struct._object*, %struct._object** %mod.addr, align 8
  %call = call i8* @PyModule_GetState(%struct._object* %0)
  %1 = bitcast i8* %call to %struct._PyIO_State*
  store %struct._PyIO_State* %1, %struct._PyIO_State** %state, align 8
  %2 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8
  %initialized = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %2, i32 0, i32 0
  %3 = load i32, i32* %initialized, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8
  %locale_module = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %4, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %locale_module, align 8
  %cmp = icmp ne %struct._object* %5, null
  br i1 %cmp, label %if.then.1, label %if.end.12

if.then.1:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.1
  %6 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8
  %locale_module2 = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %6, i32 0, i32 1
  %7 = load %struct._object*, %struct._object** %locale_module2, align 8
  store %struct._object* %7, %struct._object** %_py_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp3 = icmp ne %struct._object* %8, null
  br i1 %cmp3, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %do.body
  %9 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8
  %locale_module5 = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %9, i32 0, i32 1
  store %struct._object* null, %struct._object** %locale_module5, align 8
  br label %do.body.6

do.body.6:                                        ; preds = %if.then.4
  %10 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body.6
  br label %if.end.9

if.else:                                          ; preds = %do.body.6
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
  br label %if.end.10

if.end.10:                                        ; preds = %do.end, %do.body
  br label %do.end.11

do.end.11:                                        ; preds = %if.end.10
  br label %if.end.12

if.end.12:                                        ; preds = %do.end.11, %if.end
  br label %do.body.13

do.body.13:                                       ; preds = %if.end.12
  %17 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8
  %unsupported_operation = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %17, i32 0, i32 2
  %18 = load %struct._object*, %struct._object** %unsupported_operation, align 8
  store %struct._object* %18, %struct._object** %_py_tmp14, align 8
  %19 = load %struct._object*, %struct._object** %_py_tmp14, align 8
  %cmp15 = icmp ne %struct._object* %19, null
  br i1 %cmp15, label %if.then.16, label %if.end.29

if.then.16:                                       ; preds = %do.body.13
  %20 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8
  %unsupported_operation17 = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %20, i32 0, i32 2
  store %struct._object* null, %struct._object** %unsupported_operation17, align 8
  br label %do.body.18

do.body.18:                                       ; preds = %if.then.16
  %21 = load %struct._object*, %struct._object** %_py_tmp14, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp19, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt20, align 8
  %dec21 = add i64 %23, -1
  store i64 %dec21, i64* %ob_refcnt20, align 8
  %cmp22 = icmp ne i64 %dec21, 0
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.27

if.else.24:                                       ; preds = %do.body.18
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  call void %26(%struct._object* %27)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  br label %if.end.29

if.end.29:                                        ; preds = %do.end.28, %do.body.13
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.30, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal void @iomodule_free(%struct._object* %mod) #0 {
entry:
  %mod.addr = alloca %struct._object*, align 8
  store %struct._object* %mod, %struct._object** %mod.addr, align 8
  %0 = load %struct._object*, %struct._object** %mod.addr, align 8
  %call = call i32 @iomodule_clear(%struct._object* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__io() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %state = alloca %struct._PyIO_State*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp45 = alloca %struct._object*, align 8
  %_py_decref_tmp65 = alloca %struct._object*, align 8
  %_py_decref_tmp85 = alloca %struct._object*, align 8
  %_py_decref_tmp105 = alloca %struct._object*, align 8
  %_py_decref_tmp125 = alloca %struct._object*, align 8
  %_py_decref_tmp149 = alloca %struct._object*, align 8
  %_py_decref_tmp169 = alloca %struct._object*, align 8
  %_py_decref_tmp189 = alloca %struct._object*, align 8
  %_py_decref_tmp209 = alloca %struct._object*, align 8
  %_py_decref_tmp229 = alloca %struct._object*, align 8
  %_py_decref_tmp249 = alloca %struct._object*, align 8
  %_py_decref_tmp269 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp446 = alloca %struct._object*, align 8
  %_py_decref_tmp459 = alloca %struct._object*, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @_PyIO_Module, i32 1013)
  store %struct._object* %call, %struct._object** %m, align 8
  store %struct._PyIO_State* null, %struct._PyIO_State** %state, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %m, align 8
  %call1 = call i8* @PyModule_GetState(%struct._object* %1)
  %2 = bitcast i8* %call1 to %struct._PyIO_State*
  store %struct._PyIO_State* %2, %struct._PyIO_State** %state, align 8
  %3 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8
  %initialized = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %3, i32 0, i32 0
  store i32 0, i32* %initialized, align 4
  %4 = load %struct._object*, %struct._object** %m, align 8
  %call2 = call i32 @PyModule_AddIntConstant(%struct._object* %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i64 8192)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %fail

if.end.5:                                         ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %6 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call6 = call %struct._object* (%struct._object*, i8*, ...) @_PyObject_CallFunction_SizeT(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyType_Type, i32 0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), %struct._object* %5, %struct._object* %6)
  %7 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8
  %unsupported_operation = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %7, i32 0, i32 2
  store %struct._object* %call6, %struct._object** %unsupported_operation, align 8
  %8 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8
  %unsupported_operation7 = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %8, i32 0, i32 2
  %9 = load %struct._object*, %struct._object** %unsupported_operation7, align 8
  %cmp8 = icmp eq %struct._object* %9, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.5
  br label %fail

if.end.10:                                        ; preds = %if.end.5
  %10 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8
  %unsupported_operation11 = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %10, i32 0, i32 2
  %11 = load %struct._object*, %struct._object** %unsupported_operation11, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %13 = load %struct._object*, %struct._object** %m, align 8
  %14 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8
  %unsupported_operation12 = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %14, i32 0, i32 2
  %15 = load %struct._object*, %struct._object** %unsupported_operation12, align 8
  %call13 = call i32 @PyModule_AddObject(%struct._object* %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), %struct._object* %15)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.10
  br label %fail

if.end.16:                                        ; preds = %if.end.10
  %16 = load %struct._object*, %struct._object** @PyExc_BlockingIOError, align 8
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt17, align 8
  %inc18 = add i64 %17, 1
  store i64 %inc18, i64* %ob_refcnt17, align 8
  %18 = load %struct._object*, %struct._object** %m, align 8
  %19 = load %struct._object*, %struct._object** @PyExc_BlockingIOError, align 8
  %call19 = call i32 @PyModule_AddObject(%struct._object* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), %struct._object* %19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.16
  br label %fail

if.end.22:                                        ; preds = %if.end.16
  %call23 = call i32 @PyType_Ready(%struct._typeobject* @PyIOBase_Type)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.22
  br label %fail

if.end.26:                                        ; preds = %if.end.22
  %20 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyIOBase_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc27 = add i64 %20, 1
  store i64 %inc27, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyIOBase_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %21 = load %struct._object*, %struct._object** %m, align 8
  %call28 = call i32 @PyModule_AddObject(%struct._object* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyIOBase_Type, i32 0, i32 0, i32 0))
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then.30, label %if.end.35

if.then.30:                                       ; preds = %if.end.26
  br label %do.body

do.body:                                          ; preds = %if.then.30
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyIOBase_Type, i32 0, i32 0, i32 0), %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt31 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt31, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %ob_refcnt31, align 8
  %cmp32 = icmp ne i64 %dec, 0
  br i1 %cmp32, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %do.body
  br label %if.end.34

if.else:                                          ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %if.then.33
  br label %do.end

do.end:                                           ; preds = %if.end.34
  br label %fail

if.end.35:                                        ; preds = %if.end.26
  %call36 = call i32 @PyType_Ready(%struct._typeobject* @PyRawIOBase_Type)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.35
  br label %fail

if.end.39:                                        ; preds = %if.end.35
  %28 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyRawIOBase_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc40 = add i64 %28, 1
  store i64 %inc40, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyRawIOBase_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %29 = load %struct._object*, %struct._object** %m, align 8
  %call41 = call i32 @PyModule_AddObject(%struct._object* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyRawIOBase_Type, i32 0, i32 0, i32 0))
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then.43, label %if.end.55

if.then.43:                                       ; preds = %if.end.39
  br label %do.body.44

do.body.44:                                       ; preds = %if.then.43
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyRawIOBase_Type, i32 0, i32 0, i32 0), %struct._object** %_py_decref_tmp45, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt46, align 8
  %dec47 = add i64 %31, -1
  store i64 %dec47, i64* %ob_refcnt46, align 8
  %cmp48 = icmp ne i64 %dec47, 0
  br i1 %cmp48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %do.body.44
  br label %if.end.53

if.else.50:                                       ; preds = %do.body.44
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  call void %34(%struct._object* %35)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.49
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %fail

if.end.55:                                        ; preds = %if.end.39
  %call56 = call i32 @PyType_Ready(%struct._typeobject* @PyBufferedIOBase_Type)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.55
  br label %fail

if.end.59:                                        ; preds = %if.end.55
  %36 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedIOBase_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc60 = add i64 %36, 1
  store i64 %inc60, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedIOBase_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %37 = load %struct._object*, %struct._object** %m, align 8
  %call61 = call i32 @PyModule_AddObject(%struct._object* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedIOBase_Type, i32 0, i32 0, i32 0))
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.then.63, label %if.end.75

if.then.63:                                       ; preds = %if.end.59
  br label %do.body.64

do.body.64:                                       ; preds = %if.then.63
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedIOBase_Type, i32 0, i32 0, i32 0), %struct._object** %_py_decref_tmp65, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_refcnt66 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt66, align 8
  %dec67 = add i64 %39, -1
  store i64 %dec67, i64* %ob_refcnt66, align 8
  %cmp68 = icmp ne i64 %dec67, 0
  br i1 %cmp68, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %do.body.64
  br label %if.end.73

if.else.70:                                       ; preds = %do.body.64
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_type71 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type71, align 8
  %tp_dealloc72 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc72, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  call void %42(%struct._object* %43)
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.70, %if.then.69
  br label %do.end.74

do.end.74:                                        ; preds = %if.end.73
  br label %fail

if.end.75:                                        ; preds = %if.end.59
  %call76 = call i32 @PyType_Ready(%struct._typeobject* @PyTextIOBase_Type)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.end.75
  br label %fail

if.end.79:                                        ; preds = %if.end.75
  %44 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOBase_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc80 = add i64 %44, 1
  store i64 %inc80, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOBase_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %45 = load %struct._object*, %struct._object** %m, align 8
  %call81 = call i32 @PyModule_AddObject(%struct._object* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOBase_Type, i32 0, i32 0, i32 0))
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.then.83, label %if.end.95

if.then.83:                                       ; preds = %if.end.79
  br label %do.body.84

do.body.84:                                       ; preds = %if.then.83
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOBase_Type, i32 0, i32 0, i32 0), %struct._object** %_py_decref_tmp85, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_refcnt86 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt86, align 8
  %dec87 = add i64 %47, -1
  store i64 %dec87, i64* %ob_refcnt86, align 8
  %cmp88 = icmp ne i64 %dec87, 0
  br i1 %cmp88, label %if.then.89, label %if.else.90

if.then.89:                                       ; preds = %do.body.84
  br label %if.end.93

if.else.90:                                       ; preds = %do.body.84
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_type91 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type91, align 8
  %tp_dealloc92 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc92, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  call void %50(%struct._object* %51)
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.90, %if.then.89
  br label %do.end.94

do.end.94:                                        ; preds = %if.end.93
  br label %fail

if.end.95:                                        ; preds = %if.end.79
  store %struct._typeobject* @PyRawIOBase_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyFileIO_Type, i32 0, i32 30), align 8
  %call96 = call i32 @PyType_Ready(%struct._typeobject* @PyFileIO_Type)
  %cmp97 = icmp slt i32 %call96, 0
  br i1 %cmp97, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.end.95
  br label %fail

if.end.99:                                        ; preds = %if.end.95
  %52 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyFileIO_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc100 = add i64 %52, 1
  store i64 %inc100, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyFileIO_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %53 = load %struct._object*, %struct._object** %m, align 8
  %call101 = call i32 @PyModule_AddObject(%struct._object* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyFileIO_Type, i32 0, i32 0, i32 0))
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %if.then.103, label %if.end.115

if.then.103:                                      ; preds = %if.end.99
  br label %do.body.104

do.body.104:                                      ; preds = %if.then.103
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyFileIO_Type, i32 0, i32 0, i32 0), %struct._object** %_py_decref_tmp105, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp105, align 8
  %ob_refcnt106 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0
  %55 = load i64, i64* %ob_refcnt106, align 8
  %dec107 = add i64 %55, -1
  store i64 %dec107, i64* %ob_refcnt106, align 8
  %cmp108 = icmp ne i64 %dec107, 0
  br i1 %cmp108, label %if.then.109, label %if.else.110

if.then.109:                                      ; preds = %do.body.104
  br label %if.end.113

if.else.110:                                      ; preds = %do.body.104
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp105, align 8
  %ob_type111 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type111, align 8
  %tp_dealloc112 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc112, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp105, align 8
  call void %58(%struct._object* %59)
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.110, %if.then.109
  br label %do.end.114

do.end.114:                                       ; preds = %if.end.113
  br label %fail

if.end.115:                                       ; preds = %if.end.99
  store %struct._typeobject* @PyBufferedIOBase_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBytesIO_Type, i32 0, i32 30), align 8
  %call116 = call i32 @PyType_Ready(%struct._typeobject* @PyBytesIO_Type)
  %cmp117 = icmp slt i32 %call116, 0
  br i1 %cmp117, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %if.end.115
  br label %fail

if.end.119:                                       ; preds = %if.end.115
  %60 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBytesIO_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc120 = add i64 %60, 1
  store i64 %inc120, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBytesIO_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %61 = load %struct._object*, %struct._object** %m, align 8
  %call121 = call i32 @PyModule_AddObject(%struct._object* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBytesIO_Type, i32 0, i32 0, i32 0))
  %cmp122 = icmp slt i32 %call121, 0
  br i1 %cmp122, label %if.then.123, label %if.end.135

if.then.123:                                      ; preds = %if.end.119
  br label %do.body.124

do.body.124:                                      ; preds = %if.then.123
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBytesIO_Type, i32 0, i32 0, i32 0), %struct._object** %_py_decref_tmp125, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp125, align 8
  %ob_refcnt126 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0
  %63 = load i64, i64* %ob_refcnt126, align 8
  %dec127 = add i64 %63, -1
  store i64 %dec127, i64* %ob_refcnt126, align 8
  %cmp128 = icmp ne i64 %dec127, 0
  br i1 %cmp128, label %if.then.129, label %if.else.130

if.then.129:                                      ; preds = %do.body.124
  br label %if.end.133

if.else.130:                                      ; preds = %do.body.124
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp125, align 8
  %ob_type131 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type131, align 8
  %tp_dealloc132 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc132, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp125, align 8
  call void %66(%struct._object* %67)
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.130, %if.then.129
  br label %do.end.134

do.end.134:                                       ; preds = %if.end.133
  br label %fail

if.end.135:                                       ; preds = %if.end.119
  %call136 = call i32 @PyType_Ready(%struct._typeobject* @_PyBytesIOBuffer_Type)
  %cmp137 = icmp slt i32 %call136, 0
  br i1 %cmp137, label %if.then.138, label %if.end.139

if.then.138:                                      ; preds = %if.end.135
  br label %fail

if.end.139:                                       ; preds = %if.end.135
  store %struct._typeobject* @PyTextIOBase_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyStringIO_Type, i32 0, i32 30), align 8
  %call140 = call i32 @PyType_Ready(%struct._typeobject* @PyStringIO_Type)
  %cmp141 = icmp slt i32 %call140, 0
  br i1 %cmp141, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %if.end.139
  br label %fail

if.end.143:                                       ; preds = %if.end.139
  %68 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyStringIO_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc144 = add i64 %68, 1
  store i64 %inc144, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyStringIO_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %69 = load %struct._object*, %struct._object** %m, align 8
  %call145 = call i32 @PyModule_AddObject(%struct._object* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyStringIO_Type, i32 0, i32 0, i32 0))
  %cmp146 = icmp slt i32 %call145, 0
  br i1 %cmp146, label %if.then.147, label %if.end.159

if.then.147:                                      ; preds = %if.end.143
  br label %do.body.148

do.body.148:                                      ; preds = %if.then.147
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyStringIO_Type, i32 0, i32 0, i32 0), %struct._object** %_py_decref_tmp149, align 8
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp149, align 8
  %ob_refcnt150 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 0
  %71 = load i64, i64* %ob_refcnt150, align 8
  %dec151 = add i64 %71, -1
  store i64 %dec151, i64* %ob_refcnt150, align 8
  %cmp152 = icmp ne i64 %dec151, 0
  br i1 %cmp152, label %if.then.153, label %if.else.154

if.then.153:                                      ; preds = %do.body.148
  br label %if.end.157

if.else.154:                                      ; preds = %do.body.148
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp149, align 8
  %ob_type155 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 1
  %73 = load %struct._typeobject*, %struct._typeobject** %ob_type155, align 8
  %tp_dealloc156 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %73, i32 0, i32 4
  %74 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc156, align 8
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp149, align 8
  call void %74(%struct._object* %75)
  br label %if.end.157

if.end.157:                                       ; preds = %if.else.154, %if.then.153
  br label %do.end.158

do.end.158:                                       ; preds = %if.end.157
  br label %fail

if.end.159:                                       ; preds = %if.end.143
  store %struct._typeobject* @PyBufferedIOBase_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedReader_Type, i32 0, i32 30), align 8
  %call160 = call i32 @PyType_Ready(%struct._typeobject* @PyBufferedReader_Type)
  %cmp161 = icmp slt i32 %call160, 0
  br i1 %cmp161, label %if.then.162, label %if.end.163

if.then.162:                                      ; preds = %if.end.159
  br label %fail

if.end.163:                                       ; preds = %if.end.159
  %76 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedReader_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc164 = add i64 %76, 1
  store i64 %inc164, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedReader_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %77 = load %struct._object*, %struct._object** %m, align 8
  %call165 = call i32 @PyModule_AddObject(%struct._object* %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedReader_Type, i32 0, i32 0, i32 0))
  %cmp166 = icmp slt i32 %call165, 0
  br i1 %cmp166, label %if.then.167, label %if.end.179

if.then.167:                                      ; preds = %if.end.163
  br label %do.body.168

do.body.168:                                      ; preds = %if.then.167
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedReader_Type, i32 0, i32 0, i32 0), %struct._object** %_py_decref_tmp169, align 8
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp169, align 8
  %ob_refcnt170 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 0
  %79 = load i64, i64* %ob_refcnt170, align 8
  %dec171 = add i64 %79, -1
  store i64 %dec171, i64* %ob_refcnt170, align 8
  %cmp172 = icmp ne i64 %dec171, 0
  br i1 %cmp172, label %if.then.173, label %if.else.174

if.then.173:                                      ; preds = %do.body.168
  br label %if.end.177

if.else.174:                                      ; preds = %do.body.168
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp169, align 8
  %ob_type175 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 1
  %81 = load %struct._typeobject*, %struct._typeobject** %ob_type175, align 8
  %tp_dealloc176 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %81, i32 0, i32 4
  %82 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc176, align 8
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp169, align 8
  call void %82(%struct._object* %83)
  br label %if.end.177

if.end.177:                                       ; preds = %if.else.174, %if.then.173
  br label %do.end.178

do.end.178:                                       ; preds = %if.end.177
  br label %fail

if.end.179:                                       ; preds = %if.end.163
  store %struct._typeobject* @PyBufferedIOBase_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedWriter_Type, i32 0, i32 30), align 8
  %call180 = call i32 @PyType_Ready(%struct._typeobject* @PyBufferedWriter_Type)
  %cmp181 = icmp slt i32 %call180, 0
  br i1 %cmp181, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %if.end.179
  br label %fail

if.end.183:                                       ; preds = %if.end.179
  %84 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedWriter_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc184 = add i64 %84, 1
  store i64 %inc184, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedWriter_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %85 = load %struct._object*, %struct._object** %m, align 8
  %call185 = call i32 @PyModule_AddObject(%struct._object* %85, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedWriter_Type, i32 0, i32 0, i32 0))
  %cmp186 = icmp slt i32 %call185, 0
  br i1 %cmp186, label %if.then.187, label %if.end.199

if.then.187:                                      ; preds = %if.end.183
  br label %do.body.188

do.body.188:                                      ; preds = %if.then.187
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedWriter_Type, i32 0, i32 0, i32 0), %struct._object** %_py_decref_tmp189, align 8
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp189, align 8
  %ob_refcnt190 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 0
  %87 = load i64, i64* %ob_refcnt190, align 8
  %dec191 = add i64 %87, -1
  store i64 %dec191, i64* %ob_refcnt190, align 8
  %cmp192 = icmp ne i64 %dec191, 0
  br i1 %cmp192, label %if.then.193, label %if.else.194

if.then.193:                                      ; preds = %do.body.188
  br label %if.end.197

if.else.194:                                      ; preds = %do.body.188
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp189, align 8
  %ob_type195 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 1
  %89 = load %struct._typeobject*, %struct._typeobject** %ob_type195, align 8
  %tp_dealloc196 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %89, i32 0, i32 4
  %90 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc196, align 8
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp189, align 8
  call void %90(%struct._object* %91)
  br label %if.end.197

if.end.197:                                       ; preds = %if.else.194, %if.then.193
  br label %do.end.198

do.end.198:                                       ; preds = %if.end.197
  br label %fail

if.end.199:                                       ; preds = %if.end.183
  store %struct._typeobject* @PyBufferedIOBase_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRWPair_Type, i32 0, i32 30), align 8
  %call200 = call i32 @PyType_Ready(%struct._typeobject* @PyBufferedRWPair_Type)
  %cmp201 = icmp slt i32 %call200, 0
  br i1 %cmp201, label %if.then.202, label %if.end.203

if.then.202:                                      ; preds = %if.end.199
  br label %fail

if.end.203:                                       ; preds = %if.end.199
  %92 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRWPair_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc204 = add i64 %92, 1
  store i64 %inc204, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRWPair_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %93 = load %struct._object*, %struct._object** %m, align 8
  %call205 = call i32 @PyModule_AddObject(%struct._object* %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRWPair_Type, i32 0, i32 0, i32 0))
  %cmp206 = icmp slt i32 %call205, 0
  br i1 %cmp206, label %if.then.207, label %if.end.219

if.then.207:                                      ; preds = %if.end.203
  br label %do.body.208

do.body.208:                                      ; preds = %if.then.207
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRWPair_Type, i32 0, i32 0, i32 0), %struct._object** %_py_decref_tmp209, align 8
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp209, align 8
  %ob_refcnt210 = getelementptr inbounds %struct._object, %struct._object* %94, i32 0, i32 0
  %95 = load i64, i64* %ob_refcnt210, align 8
  %dec211 = add i64 %95, -1
  store i64 %dec211, i64* %ob_refcnt210, align 8
  %cmp212 = icmp ne i64 %dec211, 0
  br i1 %cmp212, label %if.then.213, label %if.else.214

if.then.213:                                      ; preds = %do.body.208
  br label %if.end.217

if.else.214:                                      ; preds = %do.body.208
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp209, align 8
  %ob_type215 = getelementptr inbounds %struct._object, %struct._object* %96, i32 0, i32 1
  %97 = load %struct._typeobject*, %struct._typeobject** %ob_type215, align 8
  %tp_dealloc216 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %97, i32 0, i32 4
  %98 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc216, align 8
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp209, align 8
  call void %98(%struct._object* %99)
  br label %if.end.217

if.end.217:                                       ; preds = %if.else.214, %if.then.213
  br label %do.end.218

do.end.218:                                       ; preds = %if.end.217
  br label %fail

if.end.219:                                       ; preds = %if.end.203
  store %struct._typeobject* @PyBufferedIOBase_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRandom_Type, i32 0, i32 30), align 8
  %call220 = call i32 @PyType_Ready(%struct._typeobject* @PyBufferedRandom_Type)
  %cmp221 = icmp slt i32 %call220, 0
  br i1 %cmp221, label %if.then.222, label %if.end.223

if.then.222:                                      ; preds = %if.end.219
  br label %fail

if.end.223:                                       ; preds = %if.end.219
  %100 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRandom_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc224 = add i64 %100, 1
  store i64 %inc224, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRandom_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %101 = load %struct._object*, %struct._object** %m, align 8
  %call225 = call i32 @PyModule_AddObject(%struct._object* %101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRandom_Type, i32 0, i32 0, i32 0))
  %cmp226 = icmp slt i32 %call225, 0
  br i1 %cmp226, label %if.then.227, label %if.end.239

if.then.227:                                      ; preds = %if.end.223
  br label %do.body.228

do.body.228:                                      ; preds = %if.then.227
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRandom_Type, i32 0, i32 0, i32 0), %struct._object** %_py_decref_tmp229, align 8
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp229, align 8
  %ob_refcnt230 = getelementptr inbounds %struct._object, %struct._object* %102, i32 0, i32 0
  %103 = load i64, i64* %ob_refcnt230, align 8
  %dec231 = add i64 %103, -1
  store i64 %dec231, i64* %ob_refcnt230, align 8
  %cmp232 = icmp ne i64 %dec231, 0
  br i1 %cmp232, label %if.then.233, label %if.else.234

if.then.233:                                      ; preds = %do.body.228
  br label %if.end.237

if.else.234:                                      ; preds = %do.body.228
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp229, align 8
  %ob_type235 = getelementptr inbounds %struct._object, %struct._object* %104, i32 0, i32 1
  %105 = load %struct._typeobject*, %struct._typeobject** %ob_type235, align 8
  %tp_dealloc236 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %105, i32 0, i32 4
  %106 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc236, align 8
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp229, align 8
  call void %106(%struct._object* %107)
  br label %if.end.237

if.end.237:                                       ; preds = %if.else.234, %if.then.233
  br label %do.end.238

do.end.238:                                       ; preds = %if.end.237
  br label %fail

if.end.239:                                       ; preds = %if.end.223
  store %struct._typeobject* @PyTextIOBase_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOWrapper_Type, i32 0, i32 30), align 8
  %call240 = call i32 @PyType_Ready(%struct._typeobject* @PyTextIOWrapper_Type)
  %cmp241 = icmp slt i32 %call240, 0
  br i1 %cmp241, label %if.then.242, label %if.end.243

if.then.242:                                      ; preds = %if.end.239
  br label %fail

if.end.243:                                       ; preds = %if.end.239
  %108 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOWrapper_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc244 = add i64 %108, 1
  store i64 %inc244, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOWrapper_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %109 = load %struct._object*, %struct._object** %m, align 8
  %call245 = call i32 @PyModule_AddObject(%struct._object* %109, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOWrapper_Type, i32 0, i32 0, i32 0))
  %cmp246 = icmp slt i32 %call245, 0
  br i1 %cmp246, label %if.then.247, label %if.end.259

if.then.247:                                      ; preds = %if.end.243
  br label %do.body.248

do.body.248:                                      ; preds = %if.then.247
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOWrapper_Type, i32 0, i32 0, i32 0), %struct._object** %_py_decref_tmp249, align 8
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp249, align 8
  %ob_refcnt250 = getelementptr inbounds %struct._object, %struct._object* %110, i32 0, i32 0
  %111 = load i64, i64* %ob_refcnt250, align 8
  %dec251 = add i64 %111, -1
  store i64 %dec251, i64* %ob_refcnt250, align 8
  %cmp252 = icmp ne i64 %dec251, 0
  br i1 %cmp252, label %if.then.253, label %if.else.254

if.then.253:                                      ; preds = %do.body.248
  br label %if.end.257

if.else.254:                                      ; preds = %do.body.248
  %112 = load %struct._object*, %struct._object** %_py_decref_tmp249, align 8
  %ob_type255 = getelementptr inbounds %struct._object, %struct._object* %112, i32 0, i32 1
  %113 = load %struct._typeobject*, %struct._typeobject** %ob_type255, align 8
  %tp_dealloc256 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %113, i32 0, i32 4
  %114 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc256, align 8
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp249, align 8
  call void %114(%struct._object* %115)
  br label %if.end.257

if.end.257:                                       ; preds = %if.else.254, %if.then.253
  br label %do.end.258

do.end.258:                                       ; preds = %if.end.257
  br label %fail

if.end.259:                                       ; preds = %if.end.243
  %call260 = call i32 @PyType_Ready(%struct._typeobject* @PyIncrementalNewlineDecoder_Type)
  %cmp261 = icmp slt i32 %call260, 0
  br i1 %cmp261, label %if.then.262, label %if.end.263

if.then.262:                                      ; preds = %if.end.259
  br label %fail

if.end.263:                                       ; preds = %if.end.259
  %116 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyIncrementalNewlineDecoder_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc264 = add i64 %116, 1
  store i64 %inc264, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyIncrementalNewlineDecoder_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %117 = load %struct._object*, %struct._object** %m, align 8
  %call265 = call i32 @PyModule_AddObject(%struct._object* %117, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyIncrementalNewlineDecoder_Type, i32 0, i32 0, i32 0))
  %cmp266 = icmp slt i32 %call265, 0
  br i1 %cmp266, label %if.then.267, label %if.end.279

if.then.267:                                      ; preds = %if.end.263
  br label %do.body.268

do.body.268:                                      ; preds = %if.then.267
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyIncrementalNewlineDecoder_Type, i32 0, i32 0, i32 0), %struct._object** %_py_decref_tmp269, align 8
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp269, align 8
  %ob_refcnt270 = getelementptr inbounds %struct._object, %struct._object* %118, i32 0, i32 0
  %119 = load i64, i64* %ob_refcnt270, align 8
  %dec271 = add i64 %119, -1
  store i64 %dec271, i64* %ob_refcnt270, align 8
  %cmp272 = icmp ne i64 %dec271, 0
  br i1 %cmp272, label %if.then.273, label %if.else.274

if.then.273:                                      ; preds = %do.body.268
  br label %if.end.277

if.else.274:                                      ; preds = %do.body.268
  %120 = load %struct._object*, %struct._object** %_py_decref_tmp269, align 8
  %ob_type275 = getelementptr inbounds %struct._object, %struct._object* %120, i32 0, i32 1
  %121 = load %struct._typeobject*, %struct._typeobject** %ob_type275, align 8
  %tp_dealloc276 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %121, i32 0, i32 4
  %122 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc276, align 8
  %123 = load %struct._object*, %struct._object** %_py_decref_tmp269, align 8
  call void %122(%struct._object* %123)
  br label %if.end.277

if.end.277:                                       ; preds = %if.else.274, %if.then.273
  br label %do.end.278

do.end.278:                                       ; preds = %if.end.277
  br label %fail

if.end.279:                                       ; preds = %if.end.263
  %124 = load %struct._object*, %struct._object** @_PyIO_str_close, align 8
  %tobool = icmp ne %struct._object* %124, null
  br i1 %tobool, label %if.end.283, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.279
  %call280 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0))
  store %struct._object* %call280, %struct._object** @_PyIO_str_close, align 8
  %tobool281 = icmp ne %struct._object* %call280, null
  br i1 %tobool281, label %if.end.283, label %if.then.282

if.then.282:                                      ; preds = %land.lhs.true
  br label %fail

if.end.283:                                       ; preds = %land.lhs.true, %if.end.279
  %125 = load %struct._object*, %struct._object** @_PyIO_str_closed, align 8
  %tobool284 = icmp ne %struct._object* %125, null
  br i1 %tobool284, label %if.end.289, label %land.lhs.true.285

land.lhs.true.285:                                ; preds = %if.end.283
  %call286 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0))
  store %struct._object* %call286, %struct._object** @_PyIO_str_closed, align 8
  %tobool287 = icmp ne %struct._object* %call286, null
  br i1 %tobool287, label %if.end.289, label %if.then.288

if.then.288:                                      ; preds = %land.lhs.true.285
  br label %fail

if.end.289:                                       ; preds = %land.lhs.true.285, %if.end.283
  %126 = load %struct._object*, %struct._object** @_PyIO_str_decode, align 8
  %tobool290 = icmp ne %struct._object* %126, null
  br i1 %tobool290, label %if.end.295, label %land.lhs.true.291

land.lhs.true.291:                                ; preds = %if.end.289
  %call292 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0))
  store %struct._object* %call292, %struct._object** @_PyIO_str_decode, align 8
  %tobool293 = icmp ne %struct._object* %call292, null
  br i1 %tobool293, label %if.end.295, label %if.then.294

if.then.294:                                      ; preds = %land.lhs.true.291
  br label %fail

if.end.295:                                       ; preds = %land.lhs.true.291, %if.end.289
  %127 = load %struct._object*, %struct._object** @_PyIO_str_encode, align 8
  %tobool296 = icmp ne %struct._object* %127, null
  br i1 %tobool296, label %if.end.301, label %land.lhs.true.297

land.lhs.true.297:                                ; preds = %if.end.295
  %call298 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0))
  store %struct._object* %call298, %struct._object** @_PyIO_str_encode, align 8
  %tobool299 = icmp ne %struct._object* %call298, null
  br i1 %tobool299, label %if.end.301, label %if.then.300

if.then.300:                                      ; preds = %land.lhs.true.297
  br label %fail

if.end.301:                                       ; preds = %land.lhs.true.297, %if.end.295
  %128 = load %struct._object*, %struct._object** @_PyIO_str_fileno, align 8
  %tobool302 = icmp ne %struct._object* %128, null
  br i1 %tobool302, label %if.end.307, label %land.lhs.true.303

land.lhs.true.303:                                ; preds = %if.end.301
  %call304 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0))
  store %struct._object* %call304, %struct._object** @_PyIO_str_fileno, align 8
  %tobool305 = icmp ne %struct._object* %call304, null
  br i1 %tobool305, label %if.end.307, label %if.then.306

if.then.306:                                      ; preds = %land.lhs.true.303
  br label %fail

if.end.307:                                       ; preds = %land.lhs.true.303, %if.end.301
  %129 = load %struct._object*, %struct._object** @_PyIO_str_flush, align 8
  %tobool308 = icmp ne %struct._object* %129, null
  br i1 %tobool308, label %if.end.313, label %land.lhs.true.309

land.lhs.true.309:                                ; preds = %if.end.307
  %call310 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0))
  store %struct._object* %call310, %struct._object** @_PyIO_str_flush, align 8
  %tobool311 = icmp ne %struct._object* %call310, null
  br i1 %tobool311, label %if.end.313, label %if.then.312

if.then.312:                                      ; preds = %land.lhs.true.309
  br label %fail

if.end.313:                                       ; preds = %land.lhs.true.309, %if.end.307
  %130 = load %struct._object*, %struct._object** @_PyIO_str_getstate, align 8
  %tobool314 = icmp ne %struct._object* %130, null
  br i1 %tobool314, label %if.end.319, label %land.lhs.true.315

land.lhs.true.315:                                ; preds = %if.end.313
  %call316 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0))
  store %struct._object* %call316, %struct._object** @_PyIO_str_getstate, align 8
  %tobool317 = icmp ne %struct._object* %call316, null
  br i1 %tobool317, label %if.end.319, label %if.then.318

if.then.318:                                      ; preds = %land.lhs.true.315
  br label %fail

if.end.319:                                       ; preds = %land.lhs.true.315, %if.end.313
  %131 = load %struct._object*, %struct._object** @_PyIO_str_isatty, align 8
  %tobool320 = icmp ne %struct._object* %131, null
  br i1 %tobool320, label %if.end.325, label %land.lhs.true.321

land.lhs.true.321:                                ; preds = %if.end.319
  %call322 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0))
  store %struct._object* %call322, %struct._object** @_PyIO_str_isatty, align 8
  %tobool323 = icmp ne %struct._object* %call322, null
  br i1 %tobool323, label %if.end.325, label %if.then.324

if.then.324:                                      ; preds = %land.lhs.true.321
  br label %fail

if.end.325:                                       ; preds = %land.lhs.true.321, %if.end.319
  %132 = load %struct._object*, %struct._object** @_PyIO_str_newlines, align 8
  %tobool326 = icmp ne %struct._object* %132, null
  br i1 %tobool326, label %if.end.331, label %land.lhs.true.327

land.lhs.true.327:                                ; preds = %if.end.325
  %call328 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0))
  store %struct._object* %call328, %struct._object** @_PyIO_str_newlines, align 8
  %tobool329 = icmp ne %struct._object* %call328, null
  br i1 %tobool329, label %if.end.331, label %if.then.330

if.then.330:                                      ; preds = %land.lhs.true.327
  br label %fail

if.end.331:                                       ; preds = %land.lhs.true.327, %if.end.325
  %133 = load %struct._object*, %struct._object** @_PyIO_str_read, align 8
  %tobool332 = icmp ne %struct._object* %133, null
  br i1 %tobool332, label %if.end.337, label %land.lhs.true.333

land.lhs.true.333:                                ; preds = %if.end.331
  %call334 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0))
  store %struct._object* %call334, %struct._object** @_PyIO_str_read, align 8
  %tobool335 = icmp ne %struct._object* %call334, null
  br i1 %tobool335, label %if.end.337, label %if.then.336

if.then.336:                                      ; preds = %land.lhs.true.333
  br label %fail

if.end.337:                                       ; preds = %land.lhs.true.333, %if.end.331
  %134 = load %struct._object*, %struct._object** @_PyIO_str_read1, align 8
  %tobool338 = icmp ne %struct._object* %134, null
  br i1 %tobool338, label %if.end.343, label %land.lhs.true.339

land.lhs.true.339:                                ; preds = %if.end.337
  %call340 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0))
  store %struct._object* %call340, %struct._object** @_PyIO_str_read1, align 8
  %tobool341 = icmp ne %struct._object* %call340, null
  br i1 %tobool341, label %if.end.343, label %if.then.342

if.then.342:                                      ; preds = %land.lhs.true.339
  br label %fail

if.end.343:                                       ; preds = %land.lhs.true.339, %if.end.337
  %135 = load %struct._object*, %struct._object** @_PyIO_str_readable, align 8
  %tobool344 = icmp ne %struct._object* %135, null
  br i1 %tobool344, label %if.end.349, label %land.lhs.true.345

land.lhs.true.345:                                ; preds = %if.end.343
  %call346 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0))
  store %struct._object* %call346, %struct._object** @_PyIO_str_readable, align 8
  %tobool347 = icmp ne %struct._object* %call346, null
  br i1 %tobool347, label %if.end.349, label %if.then.348

if.then.348:                                      ; preds = %land.lhs.true.345
  br label %fail

if.end.349:                                       ; preds = %land.lhs.true.345, %if.end.343
  %136 = load %struct._object*, %struct._object** @_PyIO_str_readall, align 8
  %tobool350 = icmp ne %struct._object* %136, null
  br i1 %tobool350, label %if.end.355, label %land.lhs.true.351

land.lhs.true.351:                                ; preds = %if.end.349
  %call352 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0))
  store %struct._object* %call352, %struct._object** @_PyIO_str_readall, align 8
  %tobool353 = icmp ne %struct._object* %call352, null
  br i1 %tobool353, label %if.end.355, label %if.then.354

if.then.354:                                      ; preds = %land.lhs.true.351
  br label %fail

if.end.355:                                       ; preds = %land.lhs.true.351, %if.end.349
  %137 = load %struct._object*, %struct._object** @_PyIO_str_readinto, align 8
  %tobool356 = icmp ne %struct._object* %137, null
  br i1 %tobool356, label %if.end.361, label %land.lhs.true.357

land.lhs.true.357:                                ; preds = %if.end.355
  %call358 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0))
  store %struct._object* %call358, %struct._object** @_PyIO_str_readinto, align 8
  %tobool359 = icmp ne %struct._object* %call358, null
  br i1 %tobool359, label %if.end.361, label %if.then.360

if.then.360:                                      ; preds = %land.lhs.true.357
  br label %fail

if.end.361:                                       ; preds = %land.lhs.true.357, %if.end.355
  %138 = load %struct._object*, %struct._object** @_PyIO_str_readline, align 8
  %tobool362 = icmp ne %struct._object* %138, null
  br i1 %tobool362, label %if.end.367, label %land.lhs.true.363

land.lhs.true.363:                                ; preds = %if.end.361
  %call364 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0))
  store %struct._object* %call364, %struct._object** @_PyIO_str_readline, align 8
  %tobool365 = icmp ne %struct._object* %call364, null
  br i1 %tobool365, label %if.end.367, label %if.then.366

if.then.366:                                      ; preds = %land.lhs.true.363
  br label %fail

if.end.367:                                       ; preds = %land.lhs.true.363, %if.end.361
  %139 = load %struct._object*, %struct._object** @_PyIO_str_reset, align 8
  %tobool368 = icmp ne %struct._object* %139, null
  br i1 %tobool368, label %if.end.373, label %land.lhs.true.369

land.lhs.true.369:                                ; preds = %if.end.367
  %call370 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0))
  store %struct._object* %call370, %struct._object** @_PyIO_str_reset, align 8
  %tobool371 = icmp ne %struct._object* %call370, null
  br i1 %tobool371, label %if.end.373, label %if.then.372

if.then.372:                                      ; preds = %land.lhs.true.369
  br label %fail

if.end.373:                                       ; preds = %land.lhs.true.369, %if.end.367
  %140 = load %struct._object*, %struct._object** @_PyIO_str_seek, align 8
  %tobool374 = icmp ne %struct._object* %140, null
  br i1 %tobool374, label %if.end.379, label %land.lhs.true.375

land.lhs.true.375:                                ; preds = %if.end.373
  %call376 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0))
  store %struct._object* %call376, %struct._object** @_PyIO_str_seek, align 8
  %tobool377 = icmp ne %struct._object* %call376, null
  br i1 %tobool377, label %if.end.379, label %if.then.378

if.then.378:                                      ; preds = %land.lhs.true.375
  br label %fail

if.end.379:                                       ; preds = %land.lhs.true.375, %if.end.373
  %141 = load %struct._object*, %struct._object** @_PyIO_str_seekable, align 8
  %tobool380 = icmp ne %struct._object* %141, null
  br i1 %tobool380, label %if.end.385, label %land.lhs.true.381

land.lhs.true.381:                                ; preds = %if.end.379
  %call382 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0))
  store %struct._object* %call382, %struct._object** @_PyIO_str_seekable, align 8
  %tobool383 = icmp ne %struct._object* %call382, null
  br i1 %tobool383, label %if.end.385, label %if.then.384

if.then.384:                                      ; preds = %land.lhs.true.381
  br label %fail

if.end.385:                                       ; preds = %land.lhs.true.381, %if.end.379
  %142 = load %struct._object*, %struct._object** @_PyIO_str_setstate, align 8
  %tobool386 = icmp ne %struct._object* %142, null
  br i1 %tobool386, label %if.end.391, label %land.lhs.true.387

land.lhs.true.387:                                ; preds = %if.end.385
  %call388 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0))
  store %struct._object* %call388, %struct._object** @_PyIO_str_setstate, align 8
  %tobool389 = icmp ne %struct._object* %call388, null
  br i1 %tobool389, label %if.end.391, label %if.then.390

if.then.390:                                      ; preds = %land.lhs.true.387
  br label %fail

if.end.391:                                       ; preds = %land.lhs.true.387, %if.end.385
  %143 = load %struct._object*, %struct._object** @_PyIO_str_tell, align 8
  %tobool392 = icmp ne %struct._object* %143, null
  br i1 %tobool392, label %if.end.397, label %land.lhs.true.393

land.lhs.true.393:                                ; preds = %if.end.391
  %call394 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0))
  store %struct._object* %call394, %struct._object** @_PyIO_str_tell, align 8
  %tobool395 = icmp ne %struct._object* %call394, null
  br i1 %tobool395, label %if.end.397, label %if.then.396

if.then.396:                                      ; preds = %land.lhs.true.393
  br label %fail

if.end.397:                                       ; preds = %land.lhs.true.393, %if.end.391
  %144 = load %struct._object*, %struct._object** @_PyIO_str_truncate, align 8
  %tobool398 = icmp ne %struct._object* %144, null
  br i1 %tobool398, label %if.end.403, label %land.lhs.true.399

land.lhs.true.399:                                ; preds = %if.end.397
  %call400 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0))
  store %struct._object* %call400, %struct._object** @_PyIO_str_truncate, align 8
  %tobool401 = icmp ne %struct._object* %call400, null
  br i1 %tobool401, label %if.end.403, label %if.then.402

if.then.402:                                      ; preds = %land.lhs.true.399
  br label %fail

if.end.403:                                       ; preds = %land.lhs.true.399, %if.end.397
  %145 = load %struct._object*, %struct._object** @_PyIO_str_write, align 8
  %tobool404 = icmp ne %struct._object* %145, null
  br i1 %tobool404, label %if.end.409, label %land.lhs.true.405

land.lhs.true.405:                                ; preds = %if.end.403
  %call406 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0))
  store %struct._object* %call406, %struct._object** @_PyIO_str_write, align 8
  %tobool407 = icmp ne %struct._object* %call406, null
  br i1 %tobool407, label %if.end.409, label %if.then.408

if.then.408:                                      ; preds = %land.lhs.true.405
  br label %fail

if.end.409:                                       ; preds = %land.lhs.true.405, %if.end.403
  %146 = load %struct._object*, %struct._object** @_PyIO_str_writable, align 8
  %tobool410 = icmp ne %struct._object* %146, null
  br i1 %tobool410, label %if.end.415, label %land.lhs.true.411

land.lhs.true.411:                                ; preds = %if.end.409
  %call412 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0))
  store %struct._object* %call412, %struct._object** @_PyIO_str_writable, align 8
  %tobool413 = icmp ne %struct._object* %call412, null
  br i1 %tobool413, label %if.end.415, label %if.then.414

if.then.414:                                      ; preds = %land.lhs.true.411
  br label %fail

if.end.415:                                       ; preds = %land.lhs.true.411, %if.end.409
  %147 = load %struct._object*, %struct._object** @_PyIO_str_nl, align 8
  %tobool416 = icmp ne %struct._object* %147, null
  br i1 %tobool416, label %if.end.421, label %land.lhs.true.417

land.lhs.true.417:                                ; preds = %if.end.415
  %call418 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i32 0, i32 0))
  store %struct._object* %call418, %struct._object** @_PyIO_str_nl, align 8
  %tobool419 = icmp ne %struct._object* %call418, null
  br i1 %tobool419, label %if.end.421, label %if.then.420

if.then.420:                                      ; preds = %land.lhs.true.417
  br label %fail

if.end.421:                                       ; preds = %land.lhs.true.417, %if.end.415
  %148 = load %struct._object*, %struct._object** @_PyIO_empty_str, align 8
  %tobool422 = icmp ne %struct._object* %148, null
  br i1 %tobool422, label %if.end.427, label %land.lhs.true.423

land.lhs.true.423:                                ; preds = %if.end.421
  %call424 = call %struct._object* @PyUnicode_FromStringAndSize(i8* null, i64 0)
  store %struct._object* %call424, %struct._object** @_PyIO_empty_str, align 8
  %tobool425 = icmp ne %struct._object* %call424, null
  br i1 %tobool425, label %if.end.427, label %if.then.426

if.then.426:                                      ; preds = %land.lhs.true.423
  br label %fail

if.end.427:                                       ; preds = %land.lhs.true.423, %if.end.421
  %149 = load %struct._object*, %struct._object** @_PyIO_empty_bytes, align 8
  %tobool428 = icmp ne %struct._object* %149, null
  br i1 %tobool428, label %if.end.433, label %land.lhs.true.429

land.lhs.true.429:                                ; preds = %if.end.427
  %call430 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 0)
  store %struct._object* %call430, %struct._object** @_PyIO_empty_bytes, align 8
  %tobool431 = icmp ne %struct._object* %call430, null
  br i1 %tobool431, label %if.end.433, label %if.then.432

if.then.432:                                      ; preds = %land.lhs.true.429
  br label %fail

if.end.433:                                       ; preds = %land.lhs.true.429, %if.end.427
  %150 = load %struct._object*, %struct._object** @_PyIO_zero, align 8
  %tobool434 = icmp ne %struct._object* %150, null
  br i1 %tobool434, label %if.end.439, label %land.lhs.true.435

land.lhs.true.435:                                ; preds = %if.end.433
  %call436 = call %struct._object* @PyLong_FromLong(i64 0)
  store %struct._object* %call436, %struct._object** @_PyIO_zero, align 8
  %tobool437 = icmp ne %struct._object* %call436, null
  br i1 %tobool437, label %if.end.439, label %if.then.438

if.then.438:                                      ; preds = %land.lhs.true.435
  br label %fail

if.end.439:                                       ; preds = %land.lhs.true.435, %if.end.433
  %151 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8
  %initialized440 = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %151, i32 0, i32 0
  store i32 1, i32* %initialized440, align 4
  %152 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %152, %struct._object** %retval
  br label %return

fail:                                             ; preds = %if.then.438, %if.then.432, %if.then.426, %if.then.420, %if.then.414, %if.then.408, %if.then.402, %if.then.396, %if.then.390, %if.then.384, %if.then.378, %if.then.372, %if.then.366, %if.then.360, %if.then.354, %if.then.348, %if.then.342, %if.then.336, %if.then.330, %if.then.324, %if.then.318, %if.then.312, %if.then.306, %if.then.300, %if.then.294, %if.then.288, %if.then.282, %do.end.278, %if.then.262, %do.end.258, %if.then.242, %do.end.238, %if.then.222, %do.end.218, %if.then.202, %do.end.198, %if.then.182, %do.end.178, %if.then.162, %do.end.158, %if.then.142, %if.then.138, %do.end.134, %if.then.118, %do.end.114, %if.then.98, %do.end.94, %if.then.78, %do.end.74, %if.then.58, %do.end.54, %if.then.38, %do.end, %if.then.25, %if.then.21, %if.then.15, %if.then.9, %if.then.4
  br label %do.body.441

do.body.441:                                      ; preds = %fail
  %153 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8
  %unsupported_operation442 = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %153, i32 0, i32 2
  %154 = load %struct._object*, %struct._object** %unsupported_operation442, align 8
  store %struct._object* %154, %struct._object** %_py_xdecref_tmp, align 8
  %155 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp443 = icmp ne %struct._object* %155, null
  br i1 %cmp443, label %if.then.444, label %if.end.456

if.then.444:                                      ; preds = %do.body.441
  br label %do.body.445

do.body.445:                                      ; preds = %if.then.444
  %156 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %156, %struct._object** %_py_decref_tmp446, align 8
  %157 = load %struct._object*, %struct._object** %_py_decref_tmp446, align 8
  %ob_refcnt447 = getelementptr inbounds %struct._object, %struct._object* %157, i32 0, i32 0
  %158 = load i64, i64* %ob_refcnt447, align 8
  %dec448 = add i64 %158, -1
  store i64 %dec448, i64* %ob_refcnt447, align 8
  %cmp449 = icmp ne i64 %dec448, 0
  br i1 %cmp449, label %if.then.450, label %if.else.451

if.then.450:                                      ; preds = %do.body.445
  br label %if.end.454

if.else.451:                                      ; preds = %do.body.445
  %159 = load %struct._object*, %struct._object** %_py_decref_tmp446, align 8
  %ob_type452 = getelementptr inbounds %struct._object, %struct._object* %159, i32 0, i32 1
  %160 = load %struct._typeobject*, %struct._typeobject** %ob_type452, align 8
  %tp_dealloc453 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %160, i32 0, i32 4
  %161 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc453, align 8
  %162 = load %struct._object*, %struct._object** %_py_decref_tmp446, align 8
  call void %161(%struct._object* %162)
  br label %if.end.454

if.end.454:                                       ; preds = %if.else.451, %if.then.450
  br label %do.end.455

do.end.455:                                       ; preds = %if.end.454
  br label %if.end.456

if.end.456:                                       ; preds = %do.end.455, %do.body.441
  br label %do.end.457

do.end.457:                                       ; preds = %if.end.456
  br label %do.body.458

do.body.458:                                      ; preds = %do.end.457
  %163 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %163, %struct._object** %_py_decref_tmp459, align 8
  %164 = load %struct._object*, %struct._object** %_py_decref_tmp459, align 8
  %ob_refcnt460 = getelementptr inbounds %struct._object, %struct._object* %164, i32 0, i32 0
  %165 = load i64, i64* %ob_refcnt460, align 8
  %dec461 = add i64 %165, -1
  store i64 %dec461, i64* %ob_refcnt460, align 8
  %cmp462 = icmp ne i64 %dec461, 0
  br i1 %cmp462, label %if.then.463, label %if.else.464

if.then.463:                                      ; preds = %do.body.458
  br label %if.end.467

if.else.464:                                      ; preds = %do.body.458
  %166 = load %struct._object*, %struct._object** %_py_decref_tmp459, align 8
  %ob_type465 = getelementptr inbounds %struct._object, %struct._object* %166, i32 0, i32 1
  %167 = load %struct._typeobject*, %struct._typeobject** %ob_type465, align 8
  %tp_dealloc466 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %167, i32 0, i32 4
  %168 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc466, align 8
  %169 = load %struct._object*, %struct._object** %_py_decref_tmp459, align 8
  call void %168(%struct._object* %169)
  br label %if.end.467

if.end.467:                                       ; preds = %if.else.464, %if.then.463
  br label %do.end.468

do.end.468:                                       ; preds = %if.end.467
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.468, %if.end.439, %if.then
  %170 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %170
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare i32 @PyModule_AddIntConstant(%struct._object*, i8*, i64) #1

declare %struct._object* @_PyObject_CallFunction_SizeT(%struct._object*, i8*, ...) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

declare i32 @PyType_Ready(%struct._typeobject*) #1

declare %struct._object* @PyUnicode_InternFromString(i8*) #1

declare %struct._object* @PyUnicode_FromStringAndSize(i8*, i64) #1

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

declare %struct._object* @PyLong_FromLong(i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @io_open(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %kwlist = alloca [9 x i8*], align 16
  %file = alloca %struct._object*, align 8
  %opener = alloca %struct._object*, align 8
  %mode = alloca i8*, align 8
  %buffering = alloca i32, align 4
  %closefd = alloca i32, align 4
  %encoding = alloca i8*, align 8
  %errors = alloca i8*, align 8
  %newline = alloca i8*, align 8
  %i = alloca i32, align 4
  %creating = alloca i32, align 4
  %reading = alloca i32, align 4
  %writing = alloca i32, align 4
  %appending = alloca i32, align 4
  %updating = alloca i32, align 4
  %text = alloca i32, align 4
  %binary = alloca i32, align 4
  %universal = alloca i32, align 4
  %rawmode = alloca [6 x i8], align 1
  %m = alloca i8*, align 8
  %line_buffering = alloca i32, align 4
  %isatty = alloca i32, align 4
  %raw = alloca %struct._object*, align 8
  %modeobj = alloca %struct._object*, align 8
  %buffer = alloca %struct._object*, align 8
  %wrapper = alloca %struct._object*, align 8
  %c = alloca i8, align 1
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %st = alloca %struct.stat, align 8
  %fileno = alloca i64, align 8
  %res133 = alloca %struct._object*, align 8
  %_py_decref_tmp141 = alloca %struct._object*, align 8
  %_py_decref_tmp182 = alloca %struct._object*, align 8
  %Buffered_class = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp217 = alloca %struct._object*, align 8
  %_py_decref_tmp237 = alloca %struct._object*, align 8
  %_py_tmp251 = alloca %struct._object*, align 8
  %_py_decref_tmp256 = alloca %struct._object*, align 8
  %_py_decref_tmp279 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp295 = alloca %struct._object*, align 8
  %_py_xdecref_tmp309 = alloca %struct._object*, align 8
  %_py_decref_tmp314 = alloca %struct._object*, align 8
  %_py_xdecref_tmp328 = alloca %struct._object*, align 8
  %_py_decref_tmp333 = alloca %struct._object*, align 8
  %_py_xdecref_tmp347 = alloca %struct._object*, align 8
  %_py_decref_tmp352 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = bitcast [9 x i8*]* %kwlist to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([9 x i8*]* @io_open.kwlist to i8*), i64 72, i32 16, i1 false)
  store %struct._object* @_Py_NoneStruct, %struct._object** %opener, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i32 0, i32 0), i8** %mode, align 8
  store i32 -1, i32* %buffering, align 4
  store i32 1, i32* %closefd, align 4
  store i8* null, i8** %encoding, align 8
  store i8* null, i8** %errors, align 8
  store i8* null, i8** %newline, align 8
  store i32 0, i32* %creating, align 4
  store i32 0, i32* %reading, align 4
  store i32 0, i32* %writing, align 4
  store i32 0, i32* %appending, align 4
  store i32 0, i32* %updating, align 4
  store i32 0, i32* %text, align 4
  store i32 0, i32* %binary, align 4
  store i32 0, i32* %universal, align 4
  store %struct._object* null, %struct._object** %modeobj, align 8
  store %struct._object* null, %struct._object** %buffer, align 8
  store %struct._object* null, %struct._object** %wrapper, align 8
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %2 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %arraydecay = getelementptr inbounds [9 x i8*], [9 x i8*]* %kwlist, i32 0, i32 0
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %1, %struct._object* %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0), i8** %arraydecay, %struct._object** %file, i8** %mode, i32* %buffering, i8** %encoding, i8** %errors, i8** %newline, i32* %closefd, %struct._object** %opener)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %file, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end.10, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %file, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_flags2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 19
  %8 = load i64, i64* %tp_flags2, align 8
  %and3 = and i64 %8, 134217728
  %cmp4 = icmp ne i64 %and3, 0
  br i1 %cmp4, label %if.end.10, label %land.lhs.true.5

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %9 = load %struct._object*, %struct._object** %file, align 8
  %call6 = call i32 @PyNumber_Check(%struct._object* %9)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.10, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true.5
  %10 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %11 = load %struct._object*, %struct._object** %file, align 8
  %call9 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i32 0, i32 0), %struct._object* %11)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %land.lhs.true.5, %land.lhs.true, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %12 = load i32, i32* %i, align 4
  %conv = zext i32 %12 to i64
  %13 = load i8*, i8** %mode, align 8
  %call11 = call i64 @strlen(i8* %13) #5
  %cmp12 = icmp ult i64 %conv, %call11
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %idxprom = zext i32 %14 to i64
  %15 = load i8*, i8** %mode, align 8
  %arrayidx = getelementptr i8, i8* %15, i64 %idxprom
  %16 = load i8, i8* %arrayidx, align 1
  store i8 %16, i8* %c, align 1
  %17 = load i8, i8* %c, align 1
  %conv14 = sext i8 %17 to i32
  switch i32 %conv14, label %sw.default [
    i32 120, label %sw.bb
    i32 114, label %sw.bb.15
    i32 119, label %sw.bb.16
    i32 97, label %sw.bb.17
    i32 43, label %sw.bb.18
    i32 116, label %sw.bb.19
    i32 98, label %sw.bb.20
    i32 85, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %for.body
  store i32 1, i32* %creating, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %for.body
  store i32 1, i32* %reading, align 4
  br label %sw.epilog

sw.bb.16:                                         ; preds = %for.body
  store i32 1, i32* %writing, align 4
  br label %sw.epilog

sw.bb.17:                                         ; preds = %for.body
  store i32 1, i32* %appending, align 4
  br label %sw.epilog

sw.bb.18:                                         ; preds = %for.body
  store i32 1, i32* %updating, align 4
  br label %sw.epilog

sw.bb.19:                                         ; preds = %for.body
  store i32 1, i32* %text, align 4
  br label %sw.epilog

sw.bb.20:                                         ; preds = %for.body
  store i32 1, i32* %binary, align 4
  br label %sw.epilog

sw.bb.21:                                         ; preds = %for.body
  store i32 1, i32* %universal, align 4
  store i32 1, i32* %reading, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  br label %invalid_mode

sw.epilog:                                        ; preds = %sw.bb.21, %sw.bb.20, %sw.bb.19, %sw.bb.18, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb
  %18 = load i8*, i8** %mode, align 8
  %19 = load i32, i32* %i, align 4
  %idx.ext = zext i32 %19 to i64
  %add.ptr = getelementptr i8, i8* %18, i64 %idx.ext
  %add.ptr22 = getelementptr i8, i8* %add.ptr, i64 1
  %20 = load i8, i8* %c, align 1
  %conv23 = sext i8 %20 to i32
  %call24 = call i8* @strchr(i8* %add.ptr22, i32 %conv23) #5
  %tobool25 = icmp ne i8* %call24, null
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %sw.epilog
  br label %invalid_mode

invalid_mode:                                     ; preds = %if.then.26, %sw.default
  %21 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %22 = load i8*, i8** %mode, align 8
  %call27 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i32 0, i32 0), i8* %22)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.28:                                        ; preds = %sw.epilog
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %23 = load i32, i32* %i, align 4
  %inc = add i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay29 = getelementptr inbounds [6 x i8], [6 x i8]* %rawmode, i32 0, i32 0
  store i8* %arraydecay29, i8** %m, align 8
  %24 = load i32, i32* %creating, align 4
  %tobool30 = icmp ne i32 %24, 0
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %for.end
  %25 = load i8*, i8** %m, align 8
  %incdec.ptr = getelementptr i8, i8* %25, i32 1
  store i8* %incdec.ptr, i8** %m, align 8
  store i8 120, i8* %25, align 1
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %for.end
  %26 = load i32, i32* %reading, align 4
  %tobool33 = icmp ne i32 %26, 0
  br i1 %tobool33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.end.32
  %27 = load i8*, i8** %m, align 8
  %incdec.ptr35 = getelementptr i8, i8* %27, i32 1
  store i8* %incdec.ptr35, i8** %m, align 8
  store i8 114, i8* %27, align 1
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.end.32
  %28 = load i32, i32* %writing, align 4
  %tobool37 = icmp ne i32 %28, 0
  br i1 %tobool37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end.36
  %29 = load i8*, i8** %m, align 8
  %incdec.ptr39 = getelementptr i8, i8* %29, i32 1
  store i8* %incdec.ptr39, i8** %m, align 8
  store i8 119, i8* %29, align 1
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.end.36
  %30 = load i32, i32* %appending, align 4
  %tobool41 = icmp ne i32 %30, 0
  br i1 %tobool41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.end.40
  %31 = load i8*, i8** %m, align 8
  %incdec.ptr43 = getelementptr i8, i8* %31, i32 1
  store i8* %incdec.ptr43, i8** %m, align 8
  store i8 97, i8* %31, align 1
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %if.end.40
  %32 = load i32, i32* %updating, align 4
  %tobool45 = icmp ne i32 %32, 0
  br i1 %tobool45, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.end.44
  %33 = load i8*, i8** %m, align 8
  %incdec.ptr47 = getelementptr i8, i8* %33, i32 1
  store i8* %incdec.ptr47, i8** %m, align 8
  store i8 43, i8* %33, align 1
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %if.end.44
  %34 = load i8*, i8** %m, align 8
  store i8 0, i8* %34, align 1
  %35 = load i32, i32* %universal, align 4
  %tobool49 = icmp ne i32 %35, 0
  br i1 %tobool49, label %if.then.50, label %if.end.60

if.then.50:                                       ; preds = %if.end.48
  %36 = load i32, i32* %writing, align 4
  %tobool51 = icmp ne i32 %36, 0
  br i1 %tobool51, label %if.then.53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.50
  %37 = load i32, i32* %appending, align 4
  %tobool52 = icmp ne i32 %37, 0
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %lor.lhs.false, %if.then.50
  %38 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.59, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.54:                                        ; preds = %lor.lhs.false
  %39 = load %struct._object*, %struct._object** @PyExc_DeprecationWarning, align 8
  %call55 = call i32 @PyErr_WarnEx(%struct._object* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.60, i32 0, i32 0), i64 1)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.54
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.59:                                        ; preds = %if.end.54
  store i32 1, i32* %reading, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.end.48
  %40 = load i32, i32* %text, align 4
  %tobool61 = icmp ne i32 %40, 0
  br i1 %tobool61, label %land.lhs.true.62, label %if.end.65

land.lhs.true.62:                                 ; preds = %if.end.60
  %41 = load i32, i32* %binary, align 4
  %tobool63 = icmp ne i32 %41, 0
  br i1 %tobool63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %land.lhs.true.62
  %42 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %42, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.61, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.65:                                        ; preds = %land.lhs.true.62, %if.end.60
  %43 = load i32, i32* %creating, align 4
  %44 = load i32, i32* %reading, align 4
  %add = add i32 %43, %44
  %45 = load i32, i32* %writing, align 4
  %add66 = add i32 %add, %45
  %46 = load i32, i32* %appending, align 4
  %add67 = add i32 %add66, %46
  %cmp68 = icmp sgt i32 %add67, 1
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.65
  %47 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %47, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.62, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.71:                                        ; preds = %if.end.65
  %48 = load i32, i32* %binary, align 4
  %tobool72 = icmp ne i32 %48, 0
  br i1 %tobool72, label %land.lhs.true.73, label %if.end.77

land.lhs.true.73:                                 ; preds = %if.end.71
  %49 = load i8*, i8** %encoding, align 8
  %cmp74 = icmp ne i8* %49, null
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %land.lhs.true.73
  %50 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %50, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.63, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.77:                                        ; preds = %land.lhs.true.73, %if.end.71
  %51 = load i32, i32* %binary, align 4
  %tobool78 = icmp ne i32 %51, 0
  br i1 %tobool78, label %land.lhs.true.79, label %if.end.83

land.lhs.true.79:                                 ; preds = %if.end.77
  %52 = load i8*, i8** %errors, align 8
  %cmp80 = icmp ne i8* %52, null
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %land.lhs.true.79
  %53 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %53, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.64, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.83:                                        ; preds = %land.lhs.true.79, %if.end.77
  %54 = load i32, i32* %binary, align 4
  %tobool84 = icmp ne i32 %54, 0
  br i1 %tobool84, label %land.lhs.true.85, label %if.end.89

land.lhs.true.85:                                 ; preds = %if.end.83
  %55 = load i8*, i8** %newline, align 8
  %cmp86 = icmp ne i8* %55, null
  br i1 %cmp86, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %land.lhs.true.85
  %56 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %56, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.65, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.89:                                        ; preds = %land.lhs.true.85, %if.end.83
  %57 = load %struct._object*, %struct._object** %file, align 8
  %arraydecay90 = getelementptr inbounds [6 x i8], [6 x i8]* %rawmode, i32 0, i32 0
  %58 = load i32, i32* %closefd, align 4
  %59 = load %struct._object*, %struct._object** %opener, align 8
  %call91 = call %struct._object* (%struct._object*, i8*, ...) @_PyObject_CallFunction_SizeT(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyFileIO_Type, i32 0, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0), %struct._object* %57, i8* %arraydecay90, i32 %58, %struct._object* %59)
  store %struct._object* %call91, %struct._object** %raw, align 8
  %60 = load %struct._object*, %struct._object** %raw, align 8
  %cmp92 = icmp eq %struct._object* %60, null
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.end.89
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.95:                                        ; preds = %if.end.89
  %61 = load i8*, i8** %mode, align 8
  %call96 = call %struct._object* @PyUnicode_FromString(i8* %61)
  store %struct._object* %call96, %struct._object** %modeobj, align 8
  %62 = load %struct._object*, %struct._object** %modeobj, align 8
  %cmp97 = icmp eq %struct._object* %62, null
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.end.95
  br label %error

if.end.100:                                       ; preds = %if.end.95
  %63 = load %struct._object*, %struct._object** %raw, align 8
  %call101 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %63, %struct._Py_Identifier* @io_open.PyId_isatty, i8* null)
  store %struct._object* %call101, %struct._object** %res, align 8
  %64 = load %struct._object*, %struct._object** %res, align 8
  %cmp102 = icmp eq %struct._object* %64, null
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.end.100
  br label %error

if.end.105:                                       ; preds = %if.end.100
  %65 = load %struct._object*, %struct._object** %res, align 8
  %call106 = call i64 @PyLong_AsLong(%struct._object* %65)
  %conv107 = trunc i64 %call106 to i32
  store i32 %conv107, i32* %isatty, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.105
  %66 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %66, %struct._object** %_py_decref_tmp, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 0
  %68 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %68, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp108 = icmp ne i64 %dec, 0
  br i1 %cmp108, label %if.then.110, label %if.else

if.then.110:                                      ; preds = %do.body
  br label %if.end.112

if.else:                                          ; preds = %do.body
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type111 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 1
  %70 = load %struct._typeobject*, %struct._typeobject** %ob_type111, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %70, i32 0, i32 4
  %71 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %71(%struct._object* %72)
  br label %if.end.112

if.end.112:                                       ; preds = %if.else, %if.then.110
  br label %do.end

do.end:                                           ; preds = %if.end.112
  %73 = load i32, i32* %isatty, align 4
  %cmp113 = icmp eq i32 %73, -1
  br i1 %cmp113, label %land.lhs.true.115, label %if.end.119

land.lhs.true.115:                                ; preds = %do.end
  %call116 = call %struct._object* @PyErr_Occurred()
  %tobool117 = icmp ne %struct._object* %call116, null
  br i1 %tobool117, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %land.lhs.true.115
  br label %error

if.end.119:                                       ; preds = %land.lhs.true.115, %do.end
  %74 = load i32, i32* %buffering, align 4
  %cmp120 = icmp eq i32 %74, 1
  br i1 %cmp120, label %if.then.127, label %lor.lhs.false.122

lor.lhs.false.122:                                ; preds = %if.end.119
  %75 = load i32, i32* %buffering, align 4
  %cmp123 = icmp slt i32 %75, 0
  br i1 %cmp123, label %land.lhs.true.125, label %if.else.128

land.lhs.true.125:                                ; preds = %lor.lhs.false.122
  %76 = load i32, i32* %isatty, align 4
  %tobool126 = icmp ne i32 %76, 0
  br i1 %tobool126, label %if.then.127, label %if.else.128

if.then.127:                                      ; preds = %land.lhs.true.125, %if.end.119
  store i32 -1, i32* %buffering, align 4
  store i32 1, i32* %line_buffering, align 4
  br label %if.end.129

if.else.128:                                      ; preds = %land.lhs.true.125, %lor.lhs.false.122
  store i32 0, i32* %line_buffering, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.128, %if.then.127
  %77 = load i32, i32* %buffering, align 4
  %cmp130 = icmp slt i32 %77, 0
  br i1 %cmp130, label %if.then.132, label %if.end.170

if.then.132:                                      ; preds = %if.end.129
  store i32 8192, i32* %buffering, align 4
  %78 = load %struct._object*, %struct._object** %raw, align 8
  %call134 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %78, %struct._Py_Identifier* @io_open.PyId_fileno, i8* null)
  store %struct._object* %call134, %struct._object** %res133, align 8
  %79 = load %struct._object*, %struct._object** %res133, align 8
  %cmp135 = icmp eq %struct._object* %79, null
  br i1 %cmp135, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %if.then.132
  br label %error

if.end.138:                                       ; preds = %if.then.132
  %80 = load %struct._object*, %struct._object** %res133, align 8
  %call139 = call i64 @PyLong_AsLong(%struct._object* %80)
  store i64 %call139, i64* %fileno, align 8
  br label %do.body.140

do.body.140:                                      ; preds = %if.end.138
  %81 = load %struct._object*, %struct._object** %res133, align 8
  store %struct._object* %81, %struct._object** %_py_decref_tmp141, align 8
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp141, align 8
  %ob_refcnt142 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 0
  %83 = load i64, i64* %ob_refcnt142, align 8
  %dec143 = add i64 %83, -1
  store i64 %dec143, i64* %ob_refcnt142, align 8
  %cmp144 = icmp ne i64 %dec143, 0
  br i1 %cmp144, label %if.then.146, label %if.else.147

if.then.146:                                      ; preds = %do.body.140
  br label %if.end.150

if.else.147:                                      ; preds = %do.body.140
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp141, align 8
  %ob_type148 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 1
  %85 = load %struct._typeobject*, %struct._typeobject** %ob_type148, align 8
  %tp_dealloc149 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %85, i32 0, i32 4
  %86 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc149, align 8
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp141, align 8
  call void %86(%struct._object* %87)
  br label %if.end.150

if.end.150:                                       ; preds = %if.else.147, %if.then.146
  br label %do.end.151

do.end.151:                                       ; preds = %if.end.150
  %88 = load i64, i64* %fileno, align 8
  %cmp152 = icmp eq i64 %88, -1
  br i1 %cmp152, label %land.lhs.true.154, label %if.end.158

land.lhs.true.154:                                ; preds = %do.end.151
  %call155 = call %struct._object* @PyErr_Occurred()
  %tobool156 = icmp ne %struct._object* %call155, null
  br i1 %tobool156, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %land.lhs.true.154
  br label %error

if.end.158:                                       ; preds = %land.lhs.true.154, %do.end.151
  %89 = load i64, i64* %fileno, align 8
  %conv159 = trunc i64 %89 to i32
  %call160 = call i32 @fstat64(i32 %conv159, %struct.stat* %st) #2
  %cmp161 = icmp sge i32 %call160, 0
  br i1 %cmp161, label %land.lhs.true.163, label %if.end.169

land.lhs.true.163:                                ; preds = %if.end.158
  %st_blksize = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 9
  %90 = load i64, i64* %st_blksize, align 8
  %cmp164 = icmp sgt i64 %90, 1
  br i1 %cmp164, label %if.then.166, label %if.end.169

if.then.166:                                      ; preds = %land.lhs.true.163
  %st_blksize167 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 9
  %91 = load i64, i64* %st_blksize167, align 8
  %conv168 = trunc i64 %91 to i32
  store i32 %conv168, i32* %buffering, align 4
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.166, %land.lhs.true.163, %if.end.158
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %if.end.129
  %92 = load i32, i32* %buffering, align 4
  %cmp171 = icmp slt i32 %92, 0
  br i1 %cmp171, label %if.then.173, label %if.end.174

if.then.173:                                      ; preds = %if.end.170
  %93 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %93, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.67, i32 0, i32 0))
  br label %error

if.end.174:                                       ; preds = %if.end.170
  %94 = load i32, i32* %buffering, align 4
  %cmp175 = icmp eq i32 %94, 0
  br i1 %cmp175, label %if.then.177, label %if.end.193

if.then.177:                                      ; preds = %if.end.174
  %95 = load i32, i32* %binary, align 4
  %tobool178 = icmp ne i32 %95, 0
  br i1 %tobool178, label %if.end.180, label %if.then.179

if.then.179:                                      ; preds = %if.then.177
  %96 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %96, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i32 0, i32 0))
  br label %error

if.end.180:                                       ; preds = %if.then.177
  br label %do.body.181

do.body.181:                                      ; preds = %if.end.180
  %97 = load %struct._object*, %struct._object** %modeobj, align 8
  store %struct._object* %97, %struct._object** %_py_decref_tmp182, align 8
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp182, align 8
  %ob_refcnt183 = getelementptr inbounds %struct._object, %struct._object* %98, i32 0, i32 0
  %99 = load i64, i64* %ob_refcnt183, align 8
  %dec184 = add i64 %99, -1
  store i64 %dec184, i64* %ob_refcnt183, align 8
  %cmp185 = icmp ne i64 %dec184, 0
  br i1 %cmp185, label %if.then.187, label %if.else.188

if.then.187:                                      ; preds = %do.body.181
  br label %if.end.191

if.else.188:                                      ; preds = %do.body.181
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp182, align 8
  %ob_type189 = getelementptr inbounds %struct._object, %struct._object* %100, i32 0, i32 1
  %101 = load %struct._typeobject*, %struct._typeobject** %ob_type189, align 8
  %tp_dealloc190 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %101, i32 0, i32 4
  %102 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc190, align 8
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp182, align 8
  call void %102(%struct._object* %103)
  br label %if.end.191

if.end.191:                                       ; preds = %if.else.188, %if.then.187
  br label %do.end.192

do.end.192:                                       ; preds = %if.end.191
  %104 = load %struct._object*, %struct._object** %raw, align 8
  store %struct._object* %104, %struct._object** %retval
  br label %return

if.end.193:                                       ; preds = %if.end.174
  %105 = load i32, i32* %updating, align 4
  %tobool194 = icmp ne i32 %105, 0
  br i1 %tobool194, label %if.then.195, label %if.else.196

if.then.195:                                      ; preds = %if.end.193
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRandom_Type, i32 0, i32 0, i32 0), %struct._object** %Buffered_class, align 8
  br label %if.end.210

if.else.196:                                      ; preds = %if.end.193
  %106 = load i32, i32* %creating, align 4
  %tobool197 = icmp ne i32 %106, 0
  br i1 %tobool197, label %if.then.202, label %lor.lhs.false.198

lor.lhs.false.198:                                ; preds = %if.else.196
  %107 = load i32, i32* %writing, align 4
  %tobool199 = icmp ne i32 %107, 0
  br i1 %tobool199, label %if.then.202, label %lor.lhs.false.200

lor.lhs.false.200:                                ; preds = %lor.lhs.false.198
  %108 = load i32, i32* %appending, align 4
  %tobool201 = icmp ne i32 %108, 0
  br i1 %tobool201, label %if.then.202, label %if.else.203

if.then.202:                                      ; preds = %lor.lhs.false.200, %lor.lhs.false.198, %if.else.196
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedWriter_Type, i32 0, i32 0, i32 0), %struct._object** %Buffered_class, align 8
  br label %if.end.209

if.else.203:                                      ; preds = %lor.lhs.false.200
  %109 = load i32, i32* %reading, align 4
  %tobool204 = icmp ne i32 %109, 0
  br i1 %tobool204, label %if.then.205, label %if.else.206

if.then.205:                                      ; preds = %if.else.203
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedReader_Type, i32 0, i32 0, i32 0), %struct._object** %Buffered_class, align 8
  br label %if.end.208

if.else.206:                                      ; preds = %if.else.203
  %110 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %111 = load i8*, i8** %mode, align 8
  %call207 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %110, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.69, i32 0, i32 0), i8* %111)
  br label %error

if.end.208:                                       ; preds = %if.then.205
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.then.202
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %if.then.195
  %112 = load %struct._object*, %struct._object** %Buffered_class, align 8
  %113 = load %struct._object*, %struct._object** %raw, align 8
  %114 = load i32, i32* %buffering, align 4
  %call211 = call %struct._object* (%struct._object*, i8*, ...) @_PyObject_CallFunction_SizeT(%struct._object* %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i32 0, i32 0), %struct._object* %113, i32 %114)
  store %struct._object* %call211, %struct._object** %buffer, align 8
  br label %do.body.212

do.body.212:                                      ; preds = %if.end.210
  %115 = load %struct._object*, %struct._object** %raw, align 8
  store %struct._object* %115, %struct._object** %_py_tmp, align 8
  %116 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp213 = icmp ne %struct._object* %116, null
  br i1 %cmp213, label %if.then.215, label %if.end.228

if.then.215:                                      ; preds = %do.body.212
  store %struct._object* null, %struct._object** %raw, align 8
  br label %do.body.216

do.body.216:                                      ; preds = %if.then.215
  %117 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %117, %struct._object** %_py_decref_tmp217, align 8
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp217, align 8
  %ob_refcnt218 = getelementptr inbounds %struct._object, %struct._object* %118, i32 0, i32 0
  %119 = load i64, i64* %ob_refcnt218, align 8
  %dec219 = add i64 %119, -1
  store i64 %dec219, i64* %ob_refcnt218, align 8
  %cmp220 = icmp ne i64 %dec219, 0
  br i1 %cmp220, label %if.then.222, label %if.else.223

if.then.222:                                      ; preds = %do.body.216
  br label %if.end.226

if.else.223:                                      ; preds = %do.body.216
  %120 = load %struct._object*, %struct._object** %_py_decref_tmp217, align 8
  %ob_type224 = getelementptr inbounds %struct._object, %struct._object* %120, i32 0, i32 1
  %121 = load %struct._typeobject*, %struct._typeobject** %ob_type224, align 8
  %tp_dealloc225 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %121, i32 0, i32 4
  %122 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc225, align 8
  %123 = load %struct._object*, %struct._object** %_py_decref_tmp217, align 8
  call void %122(%struct._object* %123)
  br label %if.end.226

if.end.226:                                       ; preds = %if.else.223, %if.then.222
  br label %do.end.227

do.end.227:                                       ; preds = %if.end.226
  br label %if.end.228

if.end.228:                                       ; preds = %do.end.227, %do.body.212
  br label %do.end.229

do.end.229:                                       ; preds = %if.end.228
  %124 = load %struct._object*, %struct._object** %buffer, align 8
  %cmp230 = icmp eq %struct._object* %124, null
  br i1 %cmp230, label %if.then.232, label %if.end.233

if.then.232:                                      ; preds = %do.end.229
  br label %error

if.end.233:                                       ; preds = %do.end.229
  %125 = load i32, i32* %binary, align 4
  %tobool234 = icmp ne i32 %125, 0
  br i1 %tobool234, label %if.then.235, label %if.end.248

if.then.235:                                      ; preds = %if.end.233
  br label %do.body.236

do.body.236:                                      ; preds = %if.then.235
  %126 = load %struct._object*, %struct._object** %modeobj, align 8
  store %struct._object* %126, %struct._object** %_py_decref_tmp237, align 8
  %127 = load %struct._object*, %struct._object** %_py_decref_tmp237, align 8
  %ob_refcnt238 = getelementptr inbounds %struct._object, %struct._object* %127, i32 0, i32 0
  %128 = load i64, i64* %ob_refcnt238, align 8
  %dec239 = add i64 %128, -1
  store i64 %dec239, i64* %ob_refcnt238, align 8
  %cmp240 = icmp ne i64 %dec239, 0
  br i1 %cmp240, label %if.then.242, label %if.else.243

if.then.242:                                      ; preds = %do.body.236
  br label %if.end.246

if.else.243:                                      ; preds = %do.body.236
  %129 = load %struct._object*, %struct._object** %_py_decref_tmp237, align 8
  %ob_type244 = getelementptr inbounds %struct._object, %struct._object* %129, i32 0, i32 1
  %130 = load %struct._typeobject*, %struct._typeobject** %ob_type244, align 8
  %tp_dealloc245 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %130, i32 0, i32 4
  %131 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc245, align 8
  %132 = load %struct._object*, %struct._object** %_py_decref_tmp237, align 8
  call void %131(%struct._object* %132)
  br label %if.end.246

if.end.246:                                       ; preds = %if.else.243, %if.then.242
  br label %do.end.247

do.end.247:                                       ; preds = %if.end.246
  %133 = load %struct._object*, %struct._object** %buffer, align 8
  store %struct._object* %133, %struct._object** %retval
  br label %return

if.end.248:                                       ; preds = %if.end.233
  %134 = load %struct._object*, %struct._object** %buffer, align 8
  %135 = load i8*, i8** %encoding, align 8
  %136 = load i8*, i8** %errors, align 8
  %137 = load i8*, i8** %newline, align 8
  %138 = load i32, i32* %line_buffering, align 4
  %call249 = call %struct._object* (%struct._object*, i8*, ...) @_PyObject_CallFunction_SizeT(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOWrapper_Type, i32 0, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), %struct._object* %134, i8* %135, i8* %136, i8* %137, i32 %138)
  store %struct._object* %call249, %struct._object** %wrapper, align 8
  br label %do.body.250

do.body.250:                                      ; preds = %if.end.248
  %139 = load %struct._object*, %struct._object** %buffer, align 8
  store %struct._object* %139, %struct._object** %_py_tmp251, align 8
  %140 = load %struct._object*, %struct._object** %_py_tmp251, align 8
  %cmp252 = icmp ne %struct._object* %140, null
  br i1 %cmp252, label %if.then.254, label %if.end.267

if.then.254:                                      ; preds = %do.body.250
  store %struct._object* null, %struct._object** %buffer, align 8
  br label %do.body.255

do.body.255:                                      ; preds = %if.then.254
  %141 = load %struct._object*, %struct._object** %_py_tmp251, align 8
  store %struct._object* %141, %struct._object** %_py_decref_tmp256, align 8
  %142 = load %struct._object*, %struct._object** %_py_decref_tmp256, align 8
  %ob_refcnt257 = getelementptr inbounds %struct._object, %struct._object* %142, i32 0, i32 0
  %143 = load i64, i64* %ob_refcnt257, align 8
  %dec258 = add i64 %143, -1
  store i64 %dec258, i64* %ob_refcnt257, align 8
  %cmp259 = icmp ne i64 %dec258, 0
  br i1 %cmp259, label %if.then.261, label %if.else.262

if.then.261:                                      ; preds = %do.body.255
  br label %if.end.265

if.else.262:                                      ; preds = %do.body.255
  %144 = load %struct._object*, %struct._object** %_py_decref_tmp256, align 8
  %ob_type263 = getelementptr inbounds %struct._object, %struct._object* %144, i32 0, i32 1
  %145 = load %struct._typeobject*, %struct._typeobject** %ob_type263, align 8
  %tp_dealloc264 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %145, i32 0, i32 4
  %146 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc264, align 8
  %147 = load %struct._object*, %struct._object** %_py_decref_tmp256, align 8
  call void %146(%struct._object* %147)
  br label %if.end.265

if.end.265:                                       ; preds = %if.else.262, %if.then.261
  br label %do.end.266

do.end.266:                                       ; preds = %if.end.265
  br label %if.end.267

if.end.267:                                       ; preds = %do.end.266, %do.body.250
  br label %do.end.268

do.end.268:                                       ; preds = %if.end.267
  %148 = load %struct._object*, %struct._object** %wrapper, align 8
  %cmp269 = icmp eq %struct._object* %148, null
  br i1 %cmp269, label %if.then.271, label %if.end.272

if.then.271:                                      ; preds = %do.end.268
  br label %error

if.end.272:                                       ; preds = %do.end.268
  %149 = load %struct._object*, %struct._object** %wrapper, align 8
  %150 = load %struct._object*, %struct._object** %modeobj, align 8
  %call273 = call i32 @_PyObject_SetAttrId(%struct._object* %149, %struct._Py_Identifier* @io_open.PyId_mode, %struct._object* %150)
  %cmp274 = icmp slt i32 %call273, 0
  br i1 %cmp274, label %if.then.276, label %if.end.277

if.then.276:                                      ; preds = %if.end.272
  br label %error

if.end.277:                                       ; preds = %if.end.272
  br label %do.body.278

do.body.278:                                      ; preds = %if.end.277
  %151 = load %struct._object*, %struct._object** %modeobj, align 8
  store %struct._object* %151, %struct._object** %_py_decref_tmp279, align 8
  %152 = load %struct._object*, %struct._object** %_py_decref_tmp279, align 8
  %ob_refcnt280 = getelementptr inbounds %struct._object, %struct._object* %152, i32 0, i32 0
  %153 = load i64, i64* %ob_refcnt280, align 8
  %dec281 = add i64 %153, -1
  store i64 %dec281, i64* %ob_refcnt280, align 8
  %cmp282 = icmp ne i64 %dec281, 0
  br i1 %cmp282, label %if.then.284, label %if.else.285

if.then.284:                                      ; preds = %do.body.278
  br label %if.end.288

if.else.285:                                      ; preds = %do.body.278
  %154 = load %struct._object*, %struct._object** %_py_decref_tmp279, align 8
  %ob_type286 = getelementptr inbounds %struct._object, %struct._object* %154, i32 0, i32 1
  %155 = load %struct._typeobject*, %struct._typeobject** %ob_type286, align 8
  %tp_dealloc287 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %155, i32 0, i32 4
  %156 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc287, align 8
  %157 = load %struct._object*, %struct._object** %_py_decref_tmp279, align 8
  call void %156(%struct._object* %157)
  br label %if.end.288

if.end.288:                                       ; preds = %if.else.285, %if.then.284
  br label %do.end.289

do.end.289:                                       ; preds = %if.end.288
  %158 = load %struct._object*, %struct._object** %wrapper, align 8
  store %struct._object* %158, %struct._object** %retval
  br label %return

error:                                            ; preds = %if.then.276, %if.then.271, %if.then.232, %if.else.206, %if.then.179, %if.then.173, %if.then.157, %if.then.137, %if.then.118, %if.then.104, %if.then.99
  br label %do.body.290

do.body.290:                                      ; preds = %error
  %159 = load %struct._object*, %struct._object** %raw, align 8
  store %struct._object* %159, %struct._object** %_py_xdecref_tmp, align 8
  %160 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp291 = icmp ne %struct._object* %160, null
  br i1 %cmp291, label %if.then.293, label %if.end.306

if.then.293:                                      ; preds = %do.body.290
  br label %do.body.294

do.body.294:                                      ; preds = %if.then.293
  %161 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %161, %struct._object** %_py_decref_tmp295, align 8
  %162 = load %struct._object*, %struct._object** %_py_decref_tmp295, align 8
  %ob_refcnt296 = getelementptr inbounds %struct._object, %struct._object* %162, i32 0, i32 0
  %163 = load i64, i64* %ob_refcnt296, align 8
  %dec297 = add i64 %163, -1
  store i64 %dec297, i64* %ob_refcnt296, align 8
  %cmp298 = icmp ne i64 %dec297, 0
  br i1 %cmp298, label %if.then.300, label %if.else.301

if.then.300:                                      ; preds = %do.body.294
  br label %if.end.304

if.else.301:                                      ; preds = %do.body.294
  %164 = load %struct._object*, %struct._object** %_py_decref_tmp295, align 8
  %ob_type302 = getelementptr inbounds %struct._object, %struct._object* %164, i32 0, i32 1
  %165 = load %struct._typeobject*, %struct._typeobject** %ob_type302, align 8
  %tp_dealloc303 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %165, i32 0, i32 4
  %166 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc303, align 8
  %167 = load %struct._object*, %struct._object** %_py_decref_tmp295, align 8
  call void %166(%struct._object* %167)
  br label %if.end.304

if.end.304:                                       ; preds = %if.else.301, %if.then.300
  br label %do.end.305

do.end.305:                                       ; preds = %if.end.304
  br label %if.end.306

if.end.306:                                       ; preds = %do.end.305, %do.body.290
  br label %do.end.307

do.end.307:                                       ; preds = %if.end.306
  br label %do.body.308

do.body.308:                                      ; preds = %do.end.307
  %168 = load %struct._object*, %struct._object** %modeobj, align 8
  store %struct._object* %168, %struct._object** %_py_xdecref_tmp309, align 8
  %169 = load %struct._object*, %struct._object** %_py_xdecref_tmp309, align 8
  %cmp310 = icmp ne %struct._object* %169, null
  br i1 %cmp310, label %if.then.312, label %if.end.325

if.then.312:                                      ; preds = %do.body.308
  br label %do.body.313

do.body.313:                                      ; preds = %if.then.312
  %170 = load %struct._object*, %struct._object** %_py_xdecref_tmp309, align 8
  store %struct._object* %170, %struct._object** %_py_decref_tmp314, align 8
  %171 = load %struct._object*, %struct._object** %_py_decref_tmp314, align 8
  %ob_refcnt315 = getelementptr inbounds %struct._object, %struct._object* %171, i32 0, i32 0
  %172 = load i64, i64* %ob_refcnt315, align 8
  %dec316 = add i64 %172, -1
  store i64 %dec316, i64* %ob_refcnt315, align 8
  %cmp317 = icmp ne i64 %dec316, 0
  br i1 %cmp317, label %if.then.319, label %if.else.320

if.then.319:                                      ; preds = %do.body.313
  br label %if.end.323

if.else.320:                                      ; preds = %do.body.313
  %173 = load %struct._object*, %struct._object** %_py_decref_tmp314, align 8
  %ob_type321 = getelementptr inbounds %struct._object, %struct._object* %173, i32 0, i32 1
  %174 = load %struct._typeobject*, %struct._typeobject** %ob_type321, align 8
  %tp_dealloc322 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %174, i32 0, i32 4
  %175 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc322, align 8
  %176 = load %struct._object*, %struct._object** %_py_decref_tmp314, align 8
  call void %175(%struct._object* %176)
  br label %if.end.323

if.end.323:                                       ; preds = %if.else.320, %if.then.319
  br label %do.end.324

do.end.324:                                       ; preds = %if.end.323
  br label %if.end.325

if.end.325:                                       ; preds = %do.end.324, %do.body.308
  br label %do.end.326

do.end.326:                                       ; preds = %if.end.325
  br label %do.body.327

do.body.327:                                      ; preds = %do.end.326
  %177 = load %struct._object*, %struct._object** %buffer, align 8
  store %struct._object* %177, %struct._object** %_py_xdecref_tmp328, align 8
  %178 = load %struct._object*, %struct._object** %_py_xdecref_tmp328, align 8
  %cmp329 = icmp ne %struct._object* %178, null
  br i1 %cmp329, label %if.then.331, label %if.end.344

if.then.331:                                      ; preds = %do.body.327
  br label %do.body.332

do.body.332:                                      ; preds = %if.then.331
  %179 = load %struct._object*, %struct._object** %_py_xdecref_tmp328, align 8
  store %struct._object* %179, %struct._object** %_py_decref_tmp333, align 8
  %180 = load %struct._object*, %struct._object** %_py_decref_tmp333, align 8
  %ob_refcnt334 = getelementptr inbounds %struct._object, %struct._object* %180, i32 0, i32 0
  %181 = load i64, i64* %ob_refcnt334, align 8
  %dec335 = add i64 %181, -1
  store i64 %dec335, i64* %ob_refcnt334, align 8
  %cmp336 = icmp ne i64 %dec335, 0
  br i1 %cmp336, label %if.then.338, label %if.else.339

if.then.338:                                      ; preds = %do.body.332
  br label %if.end.342

if.else.339:                                      ; preds = %do.body.332
  %182 = load %struct._object*, %struct._object** %_py_decref_tmp333, align 8
  %ob_type340 = getelementptr inbounds %struct._object, %struct._object* %182, i32 0, i32 1
  %183 = load %struct._typeobject*, %struct._typeobject** %ob_type340, align 8
  %tp_dealloc341 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %183, i32 0, i32 4
  %184 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc341, align 8
  %185 = load %struct._object*, %struct._object** %_py_decref_tmp333, align 8
  call void %184(%struct._object* %185)
  br label %if.end.342

if.end.342:                                       ; preds = %if.else.339, %if.then.338
  br label %do.end.343

do.end.343:                                       ; preds = %if.end.342
  br label %if.end.344

if.end.344:                                       ; preds = %do.end.343, %do.body.327
  br label %do.end.345

do.end.345:                                       ; preds = %if.end.344
  br label %do.body.346

do.body.346:                                      ; preds = %do.end.345
  %186 = load %struct._object*, %struct._object** %wrapper, align 8
  store %struct._object* %186, %struct._object** %_py_xdecref_tmp347, align 8
  %187 = load %struct._object*, %struct._object** %_py_xdecref_tmp347, align 8
  %cmp348 = icmp ne %struct._object* %187, null
  br i1 %cmp348, label %if.then.350, label %if.end.363

if.then.350:                                      ; preds = %do.body.346
  br label %do.body.351

do.body.351:                                      ; preds = %if.then.350
  %188 = load %struct._object*, %struct._object** %_py_xdecref_tmp347, align 8
  store %struct._object* %188, %struct._object** %_py_decref_tmp352, align 8
  %189 = load %struct._object*, %struct._object** %_py_decref_tmp352, align 8
  %ob_refcnt353 = getelementptr inbounds %struct._object, %struct._object* %189, i32 0, i32 0
  %190 = load i64, i64* %ob_refcnt353, align 8
  %dec354 = add i64 %190, -1
  store i64 %dec354, i64* %ob_refcnt353, align 8
  %cmp355 = icmp ne i64 %dec354, 0
  br i1 %cmp355, label %if.then.357, label %if.else.358

if.then.357:                                      ; preds = %do.body.351
  br label %if.end.361

if.else.358:                                      ; preds = %do.body.351
  %191 = load %struct._object*, %struct._object** %_py_decref_tmp352, align 8
  %ob_type359 = getelementptr inbounds %struct._object, %struct._object* %191, i32 0, i32 1
  %192 = load %struct._typeobject*, %struct._typeobject** %ob_type359, align 8
  %tp_dealloc360 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %192, i32 0, i32 4
  %193 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc360, align 8
  %194 = load %struct._object*, %struct._object** %_py_decref_tmp352, align 8
  call void %193(%struct._object* %194)
  br label %if.end.361

if.end.361:                                       ; preds = %if.else.358, %if.then.357
  br label %do.end.362

do.end.362:                                       ; preds = %if.end.361
  br label %if.end.363

if.end.363:                                       ; preds = %do.end.362, %do.body.346
  br label %do.end.364

do.end.364:                                       ; preds = %if.end.363
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.364, %do.end.289, %do.end.247, %do.end.192, %if.then.94, %if.then.88, %if.then.82, %if.then.76, %if.then.70, %if.then.64, %if.then.58, %if.then.53, %invalid_mode, %if.then.8, %if.then
  %195 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %195
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object*, %struct._object*, i8*, i8**, ...) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare i32 @PyErr_WarnEx(%struct._object*, i8*, i64) #1

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare %struct._object* @_PyObject_CallMethodId_SizeT(%struct._object*, %struct._Py_Identifier*, i8*, ...) #1

declare i64 @PyLong_AsLong(%struct._object*) #1

; Function Attrs: nounwind
declare i32 @fstat64(i32, %struct.stat*) #4

declare i32 @_PyObject_SetAttrId(%struct._object*, %struct._Py_Identifier*, %struct._object*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
