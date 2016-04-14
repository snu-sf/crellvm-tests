; ModuleID = 'programs_new/Python-new/_iomodule.bc.ll'
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
  %retval = alloca i64, align 8
  %item.addr = alloca %struct._object*, align 8
  %err.addr = alloca %struct._object*, align 8
  %result = alloca i64, align 8
  %runerr = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %item, %struct._object** %item.addr, align 8, !tbaa !750
  call void @llvm.dbg.declare(metadata %struct._object** %item.addr, metadata !377, metadata !754), !dbg !755
  store %struct._object* %err, %struct._object** %err.addr, align 8, !tbaa !750
  call void @llvm.dbg.declare(metadata %struct._object** %err.addr, metadata !378, metadata !754), !dbg !756
  %0 = bitcast i64* %result to i8*, !dbg !757
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !757
  call void @llvm.dbg.declare(metadata i64* %result, metadata !379, metadata !754), !dbg !758
  %1 = bitcast %struct._object** %runerr to i8*, !dbg !759
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !759
  call void @llvm.dbg.declare(metadata %struct._object** %runerr, metadata !380, metadata !754), !dbg !760
  %2 = bitcast %struct._object** %value to i8*, !dbg !761
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !761
  call void @llvm.dbg.declare(metadata %struct._object** %value, metadata !381, metadata !754), !dbg !762
  %3 = load %struct._object*, %struct._object** %item.addr, align 8, !dbg !763, !tbaa !750
  %call = call %struct._object* @PyNumber_Index(%struct._object* %3), !dbg !764
  store %struct._object* %call, %struct._object** %value, align 8, !dbg !762, !tbaa !750
  %4 = load %struct._object*, %struct._object** %value, align 8, !dbg !765, !tbaa !750
  %cmp = icmp eq %struct._object* %4, null, !dbg !767
  br i1 %cmp, label %if.then, label %if.end, !dbg !768

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval, !dbg !769
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !769

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %value, align 8, !dbg !770, !tbaa !750
  %call1 = call i64 @PyLong_AsSsize_t(%struct._object* %5), !dbg !771
  store i64 %call1, i64* %result, align 8, !dbg !772, !tbaa !773
  %6 = load i64, i64* %result, align 8, !dbg !775, !tbaa !773
  %cmp2 = icmp ne i64 %6, -1, !dbg !777
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false, !dbg !778

lor.lhs.false:                                    ; preds = %if.end
  %call3 = call %struct._object* @PyErr_Occurred(), !dbg !779
  store %struct._object* %call3, %struct._object** %runerr, align 8, !dbg !781, !tbaa !750
  %tobool = icmp ne %struct._object* %call3, null, !dbg !781
  br i1 %tobool, label %if.end.5, label %if.then.4, !dbg !782

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  br label %finish, !dbg !783

if.end.5:                                         ; preds = %lor.lhs.false
  %7 = load %struct._object*, %struct._object** %runerr, align 8, !dbg !784, !tbaa !750
  %8 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !786, !tbaa !750
  %call6 = call i32 @PyErr_GivenExceptionMatches(%struct._object* %7, %struct._object* %8), !dbg !787
  %tobool7 = icmp ne i32 %call6, 0, !dbg !787
  br i1 %tobool7, label %if.end.9, label %if.then.8, !dbg !788

if.then.8:                                        ; preds = %if.end.5
  br label %finish, !dbg !789

if.end.9:                                         ; preds = %if.end.5
  call void @PyErr_Clear(), !dbg !790
  %9 = load %struct._object*, %struct._object** %err.addr, align 8, !dbg !791, !tbaa !750
  %tobool10 = icmp ne %struct._object* %9, null, !dbg !791
  br i1 %tobool10, label %if.else.16, label %if.then.11, !dbg !793

if.then.11:                                       ; preds = %if.end.9
  %10 = load %struct._object*, %struct._object** %value, align 8, !dbg !794, !tbaa !750
  %call12 = call i32 @_PyLong_Sign(%struct._object* %10), !dbg !797
  %cmp13 = icmp slt i32 %call12, 0, !dbg !798
  br i1 %cmp13, label %if.then.14, label %if.else, !dbg !799

if.then.14:                                       ; preds = %if.then.11
  store i64 -9223372036854775808, i64* %result, align 8, !dbg !800, !tbaa !773
  br label %if.end.15, !dbg !801

if.else:                                          ; preds = %if.then.11
  store i64 9223372036854775807, i64* %result, align 8, !dbg !802, !tbaa !773
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.14
  br label %if.end.18, !dbg !803

if.else.16:                                       ; preds = %if.end.9
  %11 = load %struct._object*, %struct._object** %err.addr, align 8, !dbg !804, !tbaa !750
  %12 = load %struct._object*, %struct._object** %item.addr, align 8, !dbg !806, !tbaa !750
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !807
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !807, !tbaa !808
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 1, !dbg !810
  %14 = load i8*, i8** %tp_name, align 8, !dbg !810, !tbaa !811
  %call17 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %11, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i8* %14), !dbg !815
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.end.15
  br label %finish, !dbg !791

finish:                                           ; preds = %if.end.18, %if.then.8, %if.then.4
  br label %do.body, !dbg !816

do.body:                                          ; preds = %finish
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !817
  call void @llvm.lifetime.start(i64 8, i8* %15) #2, !dbg !817
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !382, metadata !754), !dbg !819
  %16 = load %struct._object*, %struct._object** %value, align 8, !dbg !820, !tbaa !750
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8, !dbg !819, !tbaa !750
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !821, !tbaa !750
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0, !dbg !823
  %18 = load i64, i64* %ob_refcnt, align 8, !dbg !824, !tbaa !825
  %dec = add i64 %18, -1, !dbg !824
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !824, !tbaa !825
  %cmp19 = icmp ne i64 %dec, 0, !dbg !826
  br i1 %cmp19, label %if.then.20, label %if.else.21, !dbg !827

if.then.20:                                       ; preds = %do.body
  br label %if.end.23, !dbg !828

if.else.21:                                       ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !830, !tbaa !750
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1, !dbg !832
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8, !dbg !832, !tbaa !808
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4, !dbg !833
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !833, !tbaa !834
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !835, !tbaa !750
  call void %21(%struct._object* %22), !dbg !836
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.21, %if.then.20
  %23 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !837
  call void @llvm.lifetime.end(i64 8, i8* %23) #2, !dbg !837
  br label %do.cond, !dbg !839

do.cond:                                          ; preds = %if.end.23
  br label %do.end, !dbg !840

do.end:                                           ; preds = %do.cond
  %24 = load i64, i64* %result, align 8, !dbg !842, !tbaa !773
  store i64 %24, i64* %retval, !dbg !843
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !843

cleanup:                                          ; preds = %do.end, %if.then
  %25 = bitcast %struct._object** %value to i8*, !dbg !844
  call void @llvm.lifetime.end(i64 8, i8* %25) #2, !dbg !844
  %26 = bitcast %struct._object** %runerr to i8*, !dbg !844
  call void @llvm.lifetime.end(i64 8, i8* %26) #2, !dbg !844
  %27 = bitcast i64* %result to i8*, !dbg !844
  call void @llvm.lifetime.end(i64 8, i8* %27) #2, !dbg !844
  %28 = load i64, i64* %retval, !dbg !844
  ret i64 %28, !dbg !844
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
define i32 @_PyIO_ConvertSsize_t(%struct._object* %obj, i8* %result) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %result.addr = alloca i8*, align 8
  %limit = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !750
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !386, metadata !754), !dbg !845
  store i8* %result, i8** %result.addr, align 8, !tbaa !750
  call void @llvm.dbg.declare(metadata i8** %result.addr, metadata !387, metadata !754), !dbg !846
  %0 = bitcast i64* %limit to i8*, !dbg !847
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !847
  call void @llvm.dbg.declare(metadata i64* %limit, metadata !388, metadata !754), !dbg !848
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !849, !tbaa !750
  %cmp = icmp eq %struct._object* %1, @_Py_NoneStruct, !dbg !851
  br i1 %cmp, label %if.then, label %if.else, !dbg !852

if.then:                                          ; preds = %entry
  store i64 -1, i64* %limit, align 8, !dbg !853, !tbaa !773
  br label %if.end.10, !dbg !855

if.else:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !856, !tbaa !750
  %call = call i32 @PyNumber_Check(%struct._object* %2), !dbg !858
  %tobool = icmp ne i32 %call, 0, !dbg !858
  br i1 %tobool, label %if.then.1, label %if.else.7, !dbg !859

if.then.1:                                        ; preds = %if.else
  %3 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !860, !tbaa !750
  %4 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !862, !tbaa !750
  %call2 = call i64 @PyNumber_AsSsize_t(%struct._object* %3, %struct._object* %4), !dbg !863
  store i64 %call2, i64* %limit, align 8, !dbg !864, !tbaa !773
  %5 = load i64, i64* %limit, align 8, !dbg !865, !tbaa !773
  %cmp3 = icmp eq i64 %5, -1, !dbg !867
  br i1 %cmp3, label %land.lhs.true, label %if.end, !dbg !868

land.lhs.true:                                    ; preds = %if.then.1
  %call4 = call %struct._object* @PyErr_Occurred(), !dbg !869
  %tobool5 = icmp ne %struct._object* %call4, null, !dbg !869
  br i1 %tobool5, label %if.then.6, label %if.end, !dbg !871

if.then.6:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval, !dbg !872
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !872

if.end:                                           ; preds = %land.lhs.true, %if.then.1
  br label %if.end.9, !dbg !873

if.else.7:                                        ; preds = %if.else
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !874, !tbaa !750
  %7 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !876, !tbaa !750
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !877
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !877, !tbaa !808
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 1, !dbg !878
  %9 = load i8*, i8** %tp_name, align 8, !dbg !878, !tbaa !811
  %call8 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i32 0, i32 0), i8* %9), !dbg !879
  store i32 0, i32* %retval, !dbg !880
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !880

if.end.9:                                         ; preds = %if.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then
  %10 = load i64, i64* %limit, align 8, !dbg !881, !tbaa !773
  %11 = load i8*, i8** %result.addr, align 8, !dbg !882, !tbaa !750
  %12 = bitcast i8* %11 to i64*, !dbg !883
  store i64 %10, i64* %12, align 8, !dbg !884, !tbaa !773
  store i32 1, i32* %retval, !dbg !885
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !885

cleanup:                                          ; preds = %if.end.10, %if.else.7, %if.then.6
  %13 = bitcast i64* %limit to i8*, !dbg !886
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !886
  %14 = load i32, i32* %retval, !dbg !886
  ret i32 %14, !dbg !886
}

declare i32 @PyNumber_Check(%struct._object*) #3

declare i64 @PyNumber_AsSsize_t(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define %struct._PyIO_State* @_PyIO_get_module_state() #0 {
entry:
  %retval = alloca %struct._PyIO_State*, align 8
  %mod = alloca %struct._object*, align 8
  %state = alloca %struct._PyIO_State*, align 8
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct._object** %mod to i8*, !dbg !887
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !887
  call void @llvm.dbg.declare(metadata %struct._object** %mod, metadata !393, metadata !754), !dbg !888
  %call = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_PyIO_Module), !dbg !889
  store %struct._object* %call, %struct._object** %mod, align 8, !dbg !888, !tbaa !750
  %1 = bitcast %struct._PyIO_State** %state to i8*, !dbg !890
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !890
  call void @llvm.dbg.declare(metadata %struct._PyIO_State** %state, metadata !394, metadata !754), !dbg !891
  %2 = load %struct._object*, %struct._object** %mod, align 8, !dbg !892, !tbaa !750
  %cmp = icmp eq %struct._object* %2, null, !dbg !894
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !895

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %mod, align 8, !dbg !896, !tbaa !750
  %call1 = call i8* @PyModule_GetState(%struct._object* %3), !dbg !898
  %4 = bitcast i8* %call1 to %struct._PyIO_State*, !dbg !899
  store %struct._PyIO_State* %4, %struct._PyIO_State** %state, align 8, !dbg !900, !tbaa !750
  %cmp2 = icmp eq %struct._PyIO_State* %4, null, !dbg !901
  br i1 %cmp2, label %if.then, label %if.end, !dbg !902

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !903, !tbaa !750
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i32 0, i32 0)), !dbg !905
  store %struct._PyIO_State* null, %struct._PyIO_State** %retval, !dbg !906
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !906

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8, !dbg !907, !tbaa !750
  store %struct._PyIO_State* %6, %struct._PyIO_State** %retval, !dbg !908
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !908

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast %struct._PyIO_State** %state to i8*, !dbg !909
  call void @llvm.lifetime.end(i64 8, i8* %7) #2, !dbg !909
  %8 = bitcast %struct._object** %mod to i8*, !dbg !909
  call void @llvm.lifetime.end(i64 8, i8* %8) #2, !dbg !909
  %9 = load %struct._PyIO_State*, %struct._PyIO_State** %retval, !dbg !909
  ret %struct._PyIO_State* %9, !dbg !909
}

declare %struct._object* @PyState_FindModule(%struct.PyModuleDef*) #3

declare i8* @PyModule_GetState(%struct._object*) #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @_PyIO_get_locale_module(%struct._PyIO_State* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %state.addr = alloca %struct._PyIO_State*, align 8
  %mod = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp30 = alloca %struct._object*, align 8
  store %struct._PyIO_State* %state, %struct._PyIO_State** %state.addr, align 8, !tbaa !750
  call void @llvm.dbg.declare(metadata %struct._PyIO_State** %state.addr, metadata !399, metadata !754), !dbg !910
  %0 = bitcast %struct._object** %mod to i8*, !dbg !911
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !911
  call void @llvm.dbg.declare(metadata %struct._object** %mod, metadata !400, metadata !754), !dbg !912
  %1 = load %struct._PyIO_State*, %struct._PyIO_State** %state.addr, align 8, !dbg !913, !tbaa !750
  %locale_module = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %1, i32 0, i32 1, !dbg !914
  %2 = load %struct._object*, %struct._object** %locale_module, align 8, !dbg !914, !tbaa !915
  %cmp = icmp ne %struct._object* %2, null, !dbg !917
  br i1 %cmp, label %if.then, label %if.end.20, !dbg !918

if.then:                                          ; preds = %entry
  %3 = load %struct._PyIO_State*, %struct._PyIO_State** %state.addr, align 8, !dbg !919, !tbaa !750
  %locale_module1 = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %3, i32 0, i32 1, !dbg !920
  %4 = load %struct._object*, %struct._object** %locale_module1, align 8, !dbg !920, !tbaa !915
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !921
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %5, i32 0, i32 1, !dbg !922
  %6 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !922, !tbaa !923
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0, !dbg !925
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !925, !tbaa !825
  %cmp2 = icmp sgt i64 %7, 0, !dbg !926
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !927

cond.true:                                        ; preds = %if.then
  %8 = load %struct._PyIO_State*, %struct._PyIO_State** %state.addr, align 8, !dbg !928, !tbaa !750
  %locale_module3 = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %8, i32 0, i32 1, !dbg !930
  %9 = load %struct._object*, %struct._object** %locale_module3, align 8, !dbg !930, !tbaa !915
  %10 = bitcast %struct._object* %9 to %struct._PyWeakReference*, !dbg !931
  %wr_object4 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %10, i32 0, i32 1, !dbg !932
  %11 = load %struct._object*, %struct._object** %wr_object4, align 8, !dbg !932, !tbaa !923
  br label %cond.end, !dbg !927

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !933

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %11, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !927
  store %struct._object* %cond, %struct._object** %mod, align 8, !dbg !935, !tbaa !750
  %12 = load %struct._object*, %struct._object** %mod, align 8, !dbg !938, !tbaa !750
  %cmp5 = icmp ne %struct._object* %12, @_Py_NoneStruct, !dbg !940
  br i1 %cmp5, label %if.then.6, label %if.end, !dbg !941

if.then.6:                                        ; preds = %cond.end
  %13 = load %struct._object*, %struct._object** %mod, align 8, !dbg !942, !tbaa !750
  %ob_refcnt7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !944
  %14 = load i64, i64* %ob_refcnt7, align 8, !dbg !945, !tbaa !825
  %inc = add i64 %14, 1, !dbg !945
  store i64 %inc, i64* %ob_refcnt7, align 8, !dbg !945, !tbaa !825
  %15 = load %struct._object*, %struct._object** %mod, align 8, !dbg !946, !tbaa !750
  store %struct._object* %15, %struct._object** %retval, !dbg !947
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !947

if.end:                                           ; preds = %cond.end
  br label %do.body, !dbg !948

do.body:                                          ; preds = %if.end
  %16 = bitcast %struct._object** %_py_tmp to i8*, !dbg !949
  call void @llvm.lifetime.start(i64 8, i8* %16) #2, !dbg !949
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !401, metadata !754), !dbg !951
  %17 = load %struct._PyIO_State*, %struct._PyIO_State** %state.addr, align 8, !dbg !952, !tbaa !750
  %locale_module8 = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %17, i32 0, i32 1, !dbg !953
  %18 = load %struct._object*, %struct._object** %locale_module8, align 8, !dbg !953, !tbaa !915
  store %struct._object* %18, %struct._object** %_py_tmp, align 8, !dbg !951, !tbaa !750
  %19 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !954, !tbaa !750
  %cmp9 = icmp ne %struct._object* %19, null, !dbg !955
  br i1 %cmp9, label %if.then.10, label %if.end.17, !dbg !956

if.then.10:                                       ; preds = %do.body
  %20 = load %struct._PyIO_State*, %struct._PyIO_State** %state.addr, align 8, !dbg !957, !tbaa !750
  %locale_module11 = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %20, i32 0, i32 1, !dbg !959
  store %struct._object* null, %struct._object** %locale_module11, align 8, !dbg !960, !tbaa !915
  br label %do.body.12, !dbg !961

do.body.12:                                       ; preds = %if.then.10
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !962
  call void @llvm.lifetime.start(i64 8, i8* %21) #2, !dbg !962
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !405, metadata !754), !dbg !964
  %22 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !965, !tbaa !750
  store %struct._object* %22, %struct._object** %_py_decref_tmp, align 8, !dbg !964, !tbaa !750
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !966, !tbaa !750
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0, !dbg !968
  %24 = load i64, i64* %ob_refcnt13, align 8, !dbg !969, !tbaa !825
  %dec = add i64 %24, -1, !dbg !969
  store i64 %dec, i64* %ob_refcnt13, align 8, !dbg !969, !tbaa !825
  %cmp14 = icmp ne i64 %dec, 0, !dbg !970
  br i1 %cmp14, label %if.then.15, label %if.else, !dbg !971

if.then.15:                                       ; preds = %do.body.12
  br label %if.end.16, !dbg !972

if.else:                                          ; preds = %do.body.12
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !974, !tbaa !750
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1, !dbg !976
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !976, !tbaa !808
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4, !dbg !977
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !977, !tbaa !834
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !978, !tbaa !750
  call void %27(%struct._object* %28), !dbg !979
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  %29 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !980
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !980
  br label %do.cond, !dbg !982

do.cond:                                          ; preds = %if.end.16
  br label %do.end, !dbg !983

do.end:                                           ; preds = %do.cond
  br label %if.end.17, !dbg !985

if.end.17:                                        ; preds = %do.end, %do.body
  %30 = bitcast %struct._object** %_py_tmp to i8*, !dbg !987
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !987
  br label %do.cond.18, !dbg !989

do.cond.18:                                       ; preds = %if.end.17
  br label %do.end.19, !dbg !990

do.end.19:                                        ; preds = %do.cond.18
  br label %if.end.20, !dbg !992

if.end.20:                                        ; preds = %do.end.19, %entry
  %call = call %struct._object* @PyImport_ImportModule(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0)), !dbg !993
  store %struct._object* %call, %struct._object** %mod, align 8, !dbg !994, !tbaa !750
  %31 = load %struct._object*, %struct._object** %mod, align 8, !dbg !995, !tbaa !750
  %cmp21 = icmp eq %struct._object* %31, null, !dbg !997
  br i1 %cmp21, label %if.then.22, label %if.end.23, !dbg !998

if.then.22:                                       ; preds = %if.end.20
  store %struct._object* null, %struct._object** %retval, !dbg !999
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !999

if.end.23:                                        ; preds = %if.end.20
  %32 = load %struct._object*, %struct._object** %mod, align 8, !dbg !1000, !tbaa !750
  %call24 = call %struct._object* @PyWeakref_NewRef(%struct._object* %32, %struct._object* null), !dbg !1001
  %33 = load %struct._PyIO_State*, %struct._PyIO_State** %state.addr, align 8, !dbg !1002, !tbaa !750
  %locale_module25 = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %33, i32 0, i32 1, !dbg !1003
  store %struct._object* %call24, %struct._object** %locale_module25, align 8, !dbg !1004, !tbaa !915
  %34 = load %struct._PyIO_State*, %struct._PyIO_State** %state.addr, align 8, !dbg !1005, !tbaa !750
  %locale_module26 = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %34, i32 0, i32 1, !dbg !1006
  %35 = load %struct._object*, %struct._object** %locale_module26, align 8, !dbg !1006, !tbaa !915
  %cmp27 = icmp eq %struct._object* %35, null, !dbg !1007
  br i1 %cmp27, label %if.then.28, label %if.end.41, !dbg !1008

if.then.28:                                       ; preds = %if.end.23
  br label %do.body.29, !dbg !1009

do.body.29:                                       ; preds = %if.then.28
  %36 = bitcast %struct._object** %_py_decref_tmp30 to i8*, !dbg !1010
  call void @llvm.lifetime.start(i64 8, i8* %36) #2, !dbg !1010
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp30, metadata !409, metadata !754), !dbg !1012
  %37 = load %struct._object*, %struct._object** %mod, align 8, !dbg !1013, !tbaa !750
  store %struct._object* %37, %struct._object** %_py_decref_tmp30, align 8, !dbg !1012, !tbaa !750
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8, !dbg !1014, !tbaa !750
  %ob_refcnt31 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0, !dbg !1016
  %39 = load i64, i64* %ob_refcnt31, align 8, !dbg !1017, !tbaa !825
  %dec32 = add i64 %39, -1, !dbg !1017
  store i64 %dec32, i64* %ob_refcnt31, align 8, !dbg !1017, !tbaa !825
  %cmp33 = icmp ne i64 %dec32, 0, !dbg !1018
  br i1 %cmp33, label %if.then.34, label %if.else.35, !dbg !1019

if.then.34:                                       ; preds = %do.body.29
  br label %if.end.38, !dbg !1020

if.else.35:                                       ; preds = %do.body.29
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8, !dbg !1022, !tbaa !750
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1, !dbg !1024
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8, !dbg !1024, !tbaa !808
  %tp_dealloc37 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4, !dbg !1025
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc37, align 8, !dbg !1025, !tbaa !834
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8, !dbg !1026, !tbaa !750
  call void %42(%struct._object* %43), !dbg !1027
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.35, %if.then.34
  %44 = bitcast %struct._object** %_py_decref_tmp30 to i8*, !dbg !1028
  call void @llvm.lifetime.end(i64 8, i8* %44) #2, !dbg !1028
  br label %do.cond.39, !dbg !1030

do.cond.39:                                       ; preds = %if.end.38
  br label %do.end.40, !dbg !1031

do.end.40:                                        ; preds = %do.cond.39
  store %struct._object* null, %struct._object** %retval, !dbg !1033
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1033

if.end.41:                                        ; preds = %if.end.23
  %45 = load %struct._object*, %struct._object** %mod, align 8, !dbg !1034, !tbaa !750
  store %struct._object* %45, %struct._object** %retval, !dbg !1035
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1035

cleanup:                                          ; preds = %if.end.41, %do.end.40, %if.then.22, %if.then.6
  %46 = bitcast %struct._object** %mod to i8*, !dbg !1036
  call void @llvm.lifetime.end(i64 8, i8* %46) #2, !dbg !1036
  %47 = load %struct._object*, %struct._object** %retval, !dbg !1036
  ret %struct._object* %47, !dbg !1036
}

declare %struct._object* @PyImport_ImportModule(i8*) #3

declare %struct._object* @PyWeakref_NewRef(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @iomodule_traverse(%struct._object* %mod, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %mod.addr = alloca %struct._object*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %state = alloca %struct._PyIO_State*, align 8
  %cleanup.dest.slot = alloca i32
  %vret = alloca i32, align 4
  %vret15 = alloca i32, align 4
  store %struct._object* %mod, %struct._object** %mod.addr, align 8, !tbaa !750
  call void @llvm.dbg.declare(metadata %struct._object** %mod.addr, metadata !640, metadata !754), !dbg !1037
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !750
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !641, metadata !754), !dbg !1038
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !750
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !642, metadata !754), !dbg !1039
  %0 = bitcast %struct._PyIO_State** %state to i8*, !dbg !1040
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1040
  call void @llvm.dbg.declare(metadata %struct._PyIO_State** %state, metadata !643, metadata !754), !dbg !1041
  %1 = load %struct._object*, %struct._object** %mod.addr, align 8, !dbg !1042, !tbaa !750
  %call = call i8* @PyModule_GetState(%struct._object* %1), !dbg !1043
  %2 = bitcast i8* %call to %struct._PyIO_State*, !dbg !1044
  store %struct._PyIO_State* %2, %struct._PyIO_State** %state, align 8, !dbg !1041, !tbaa !750
  %3 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8, !dbg !1045, !tbaa !750
  %initialized = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %3, i32 0, i32 0, !dbg !1047
  %4 = load i32, i32* %initialized, align 4, !dbg !1047, !tbaa !1048
  %tobool = icmp ne i32 %4, 0, !dbg !1045
  br i1 %tobool, label %if.end, label %if.then, !dbg !1049

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !1050
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.27, !dbg !1050

if.end:                                           ; preds = %entry
  %5 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8, !dbg !1051, !tbaa !750
  %locale_module = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %5, i32 0, i32 1, !dbg !1052
  %6 = load %struct._object*, %struct._object** %locale_module, align 8, !dbg !1052, !tbaa !915
  %cmp = icmp ne %struct._object* %6, null, !dbg !1053
  br i1 %cmp, label %if.then.1, label %if.end.11, !dbg !1054

if.then.1:                                        ; preds = %if.end
  br label %do.body, !dbg !1055

do.body:                                          ; preds = %if.then.1
  %7 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8, !dbg !1056, !tbaa !750
  %locale_module2 = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %7, i32 0, i32 1, !dbg !1058
  %8 = load %struct._object*, %struct._object** %locale_module2, align 8, !dbg !1058, !tbaa !915
  %tobool3 = icmp ne %struct._object* %8, null, !dbg !1059
  br i1 %tobool3, label %if.then.4, label %if.end.10, !dbg !1060

if.then.4:                                        ; preds = %do.body
  %9 = bitcast i32* %vret to i8*, !dbg !1061
  call void @llvm.lifetime.start(i64 4, i8* %9) #2, !dbg !1061
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !644, metadata !754), !dbg !1063
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !1064, !tbaa !750
  %11 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8, !dbg !1065, !tbaa !750
  %locale_module5 = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %11, i32 0, i32 1, !dbg !1066
  %12 = load %struct._object*, %struct._object** %locale_module5, align 8, !dbg !1066, !tbaa !915
  %13 = load i8*, i8** %arg.addr, align 8, !dbg !1067, !tbaa !750
  %call6 = call i32 %10(%struct._object* %12, i8* %13), !dbg !1064
  store i32 %call6, i32* %vret, align 4, !dbg !1063, !tbaa !1068
  %14 = load i32, i32* %vret, align 4, !dbg !1069, !tbaa !1068
  %tobool7 = icmp ne i32 %14, 0, !dbg !1069
  br i1 %tobool7, label %if.then.8, label %if.end.9, !dbg !1071

if.then.8:                                        ; preds = %if.then.4
  %15 = load i32, i32* %vret, align 4, !dbg !1072, !tbaa !1068
  store i32 %15, i32* %retval, !dbg !1074
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1074

if.end.9:                                         ; preds = %if.then.4
  store i32 0, i32* %cleanup.dest.slot, !dbg !1075
  br label %cleanup, !dbg !1075

cleanup:                                          ; preds = %if.end.9, %if.then.8
  %16 = bitcast i32* %vret to i8*, !dbg !1077
  call void @llvm.lifetime.end(i64 4, i8* %16) #2, !dbg !1077
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.10, !dbg !1080

if.end.10:                                        ; preds = %cleanup.cont, %do.body
  br label %do.cond, !dbg !1081

do.cond:                                          ; preds = %if.end.10
  br label %do.end, !dbg !1084

do.end:                                           ; preds = %do.cond
  br label %if.end.11, !dbg !1086

if.end.11:                                        ; preds = %do.end, %if.end
  br label %do.body.12, !dbg !1087

do.body.12:                                       ; preds = %if.end.11
  %17 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8, !dbg !1088, !tbaa !750
  %unsupported_operation = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %17, i32 0, i32 2, !dbg !1090
  %18 = load %struct._object*, %struct._object** %unsupported_operation, align 8, !dbg !1090, !tbaa !1091
  %tobool13 = icmp ne %struct._object* %18, null, !dbg !1092
  br i1 %tobool13, label %if.then.14, label %if.end.24, !dbg !1093

if.then.14:                                       ; preds = %do.body.12
  %19 = bitcast i32* %vret15 to i8*, !dbg !1094
  call void @llvm.lifetime.start(i64 4, i8* %19) #2, !dbg !1094
  call void @llvm.dbg.declare(metadata i32* %vret15, metadata !650, metadata !754), !dbg !1096
  %20 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !1097, !tbaa !750
  %21 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8, !dbg !1098, !tbaa !750
  %unsupported_operation16 = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %21, i32 0, i32 2, !dbg !1099
  %22 = load %struct._object*, %struct._object** %unsupported_operation16, align 8, !dbg !1099, !tbaa !1091
  %23 = load i8*, i8** %arg.addr, align 8, !dbg !1100, !tbaa !750
  %call17 = call i32 %20(%struct._object* %22, i8* %23), !dbg !1097
  store i32 %call17, i32* %vret15, align 4, !dbg !1096, !tbaa !1068
  %24 = load i32, i32* %vret15, align 4, !dbg !1101, !tbaa !1068
  %tobool18 = icmp ne i32 %24, 0, !dbg !1101
  br i1 %tobool18, label %if.then.19, label %if.end.20, !dbg !1103

if.then.19:                                       ; preds = %if.then.14
  %25 = load i32, i32* %vret15, align 4, !dbg !1104, !tbaa !1068
  store i32 %25, i32* %retval, !dbg !1106
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.21, !dbg !1106

if.end.20:                                        ; preds = %if.then.14
  store i32 0, i32* %cleanup.dest.slot, !dbg !1107
  br label %cleanup.21, !dbg !1107

cleanup.21:                                       ; preds = %if.end.20, %if.then.19
  %26 = bitcast i32* %vret15 to i8*, !dbg !1109
  call void @llvm.lifetime.end(i64 4, i8* %26) #2, !dbg !1109
  %cleanup.dest.22 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.2

LeafBlock.2:                                      ; preds = %cleanup.21
  %SwitchLeaf3 = icmp eq i32 %cleanup.dest.22, 0
  br i1 %SwitchLeaf3, label %cleanup.cont.23, label %NewDefault.1

cleanup.cont.23:                                  ; preds = %LeafBlock.2
  br label %if.end.24, !dbg !1112

if.end.24:                                        ; preds = %cleanup.cont.23, %do.body.12
  br label %do.cond.25, !dbg !1113

do.cond.25:                                       ; preds = %if.end.24
  br label %do.end.26, !dbg !1116

do.end.26:                                        ; preds = %do.cond.25
  store i32 0, i32* %retval, !dbg !1118
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.27, !dbg !1118

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.27

NewDefault.1:                                     ; preds = %LeafBlock.2
  br label %cleanup.27

cleanup.27:                                       ; preds = %NewDefault.1, %NewDefault, %do.end.26, %if.then
  %27 = bitcast %struct._PyIO_State** %state to i8*, !dbg !1119
  call void @llvm.lifetime.end(i64 8, i8* %27) #2, !dbg !1119
  %28 = load i32, i32* %retval, !dbg !1119
  ret i32 %28, !dbg !1119
}

; Function Attrs: nounwind uwtable
define internal i32 @iomodule_clear(%struct._object* %mod) #0 {
entry:
  %retval = alloca i32, align 4
  %mod.addr = alloca %struct._object*, align 8
  %state = alloca %struct._PyIO_State*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp15 = alloca %struct._object*, align 8
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  store %struct._object* %mod, %struct._object** %mod.addr, align 8, !tbaa !750
  call void @llvm.dbg.declare(metadata %struct._object** %mod.addr, metadata !656, metadata !754), !dbg !1120
  %0 = bitcast %struct._PyIO_State** %state to i8*, !dbg !1121
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1121
  call void @llvm.dbg.declare(metadata %struct._PyIO_State** %state, metadata !657, metadata !754), !dbg !1122
  %1 = load %struct._object*, %struct._object** %mod.addr, align 8, !dbg !1123, !tbaa !750
  %call = call i8* @PyModule_GetState(%struct._object* %1), !dbg !1124
  %2 = bitcast i8* %call to %struct._PyIO_State*, !dbg !1125
  store %struct._PyIO_State* %2, %struct._PyIO_State** %state, align 8, !dbg !1122, !tbaa !750
  %3 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8, !dbg !1126, !tbaa !750
  %initialized = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %3, i32 0, i32 0, !dbg !1128
  %4 = load i32, i32* %initialized, align 4, !dbg !1128, !tbaa !1048
  %tobool = icmp ne i32 %4, 0, !dbg !1126
  br i1 %tobool, label %if.end, label %if.then, !dbg !1129

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !1130
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1130

if.end:                                           ; preds = %entry
  %5 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8, !dbg !1131, !tbaa !750
  %locale_module = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %5, i32 0, i32 1, !dbg !1132
  %6 = load %struct._object*, %struct._object** %locale_module, align 8, !dbg !1132, !tbaa !915
  %cmp = icmp ne %struct._object* %6, null, !dbg !1133
  br i1 %cmp, label %if.then.1, label %if.end.13, !dbg !1134

if.then.1:                                        ; preds = %if.end
  br label %do.body, !dbg !1135

do.body:                                          ; preds = %if.then.1
  %7 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1136
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !1136
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !658, metadata !754), !dbg !1138
  %8 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8, !dbg !1139, !tbaa !750
  %locale_module2 = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %8, i32 0, i32 1, !dbg !1140
  %9 = load %struct._object*, %struct._object** %locale_module2, align 8, !dbg !1140, !tbaa !915
  store %struct._object* %9, %struct._object** %_py_tmp, align 8, !dbg !1138, !tbaa !750
  %10 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1141, !tbaa !750
  %cmp3 = icmp ne %struct._object* %10, null, !dbg !1142
  br i1 %cmp3, label %if.then.4, label %if.end.10, !dbg !1143

if.then.4:                                        ; preds = %do.body
  %11 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8, !dbg !1144, !tbaa !750
  %locale_module5 = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %11, i32 0, i32 1, !dbg !1146
  store %struct._object* null, %struct._object** %locale_module5, align 8, !dbg !1147, !tbaa !915
  br label %do.body.6, !dbg !1148

do.body.6:                                        ; preds = %if.then.4
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1149
  call void @llvm.lifetime.start(i64 8, i8* %12) #2, !dbg !1149
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !661, metadata !754), !dbg !1151
  %13 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1152, !tbaa !750
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8, !dbg !1151, !tbaa !750
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1153, !tbaa !750
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0, !dbg !1155
  %15 = load i64, i64* %ob_refcnt, align 8, !dbg !1156, !tbaa !825
  %dec = add i64 %15, -1, !dbg !1156
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1156, !tbaa !825
  %cmp7 = icmp ne i64 %dec, 0, !dbg !1157
  br i1 %cmp7, label %if.then.8, label %if.else, !dbg !1158

if.then.8:                                        ; preds = %do.body.6
  br label %if.end.9, !dbg !1159

if.else:                                          ; preds = %do.body.6
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1161, !tbaa !750
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1, !dbg !1163
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1163, !tbaa !808
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4, !dbg !1164
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1164, !tbaa !834
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1165, !tbaa !750
  call void %18(%struct._object* %19), !dbg !1166
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1167
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !1167
  br label %do.cond, !dbg !1169

do.cond:                                          ; preds = %if.end.9
  br label %do.end, !dbg !1170

do.end:                                           ; preds = %do.cond
  br label %if.end.10, !dbg !1172

if.end.10:                                        ; preds = %do.end, %do.body
  %21 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1174
  call void @llvm.lifetime.end(i64 8, i8* %21) #2, !dbg !1174
  br label %do.cond.11, !dbg !1177

do.cond.11:                                       ; preds = %if.end.10
  br label %do.end.12, !dbg !1178

do.end.12:                                        ; preds = %do.cond.11
  br label %if.end.13, !dbg !1180

if.end.13:                                        ; preds = %do.end.12, %if.end
  br label %do.body.14, !dbg !1182

do.body.14:                                       ; preds = %if.end.13
  %22 = bitcast %struct._object** %_py_tmp15 to i8*, !dbg !1183
  call void @llvm.lifetime.start(i64 8, i8* %22) #2, !dbg !1183
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp15, metadata !665, metadata !754), !dbg !1185
  %23 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8, !dbg !1186, !tbaa !750
  %unsupported_operation = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %23, i32 0, i32 2, !dbg !1187
  %24 = load %struct._object*, %struct._object** %unsupported_operation, align 8, !dbg !1187, !tbaa !1091
  store %struct._object* %24, %struct._object** %_py_tmp15, align 8, !dbg !1185, !tbaa !750
  %25 = load %struct._object*, %struct._object** %_py_tmp15, align 8, !dbg !1188, !tbaa !750
  %cmp16 = icmp ne %struct._object* %25, null, !dbg !1189
  br i1 %cmp16, label %if.then.17, label %if.end.31, !dbg !1190

if.then.17:                                       ; preds = %do.body.14
  %26 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8, !dbg !1191, !tbaa !750
  %unsupported_operation18 = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %26, i32 0, i32 2, !dbg !1193
  store %struct._object* null, %struct._object** %unsupported_operation18, align 8, !dbg !1194, !tbaa !1091
  br label %do.body.19, !dbg !1195

do.body.19:                                       ; preds = %if.then.17
  %27 = bitcast %struct._object** %_py_decref_tmp20 to i8*, !dbg !1196
  call void @llvm.lifetime.start(i64 8, i8* %27) #2, !dbg !1196
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp20, metadata !667, metadata !754), !dbg !1198
  %28 = load %struct._object*, %struct._object** %_py_tmp15, align 8, !dbg !1199, !tbaa !750
  store %struct._object* %28, %struct._object** %_py_decref_tmp20, align 8, !dbg !1198, !tbaa !750
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8, !dbg !1200, !tbaa !750
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0, !dbg !1202
  %30 = load i64, i64* %ob_refcnt21, align 8, !dbg !1203, !tbaa !825
  %dec22 = add i64 %30, -1, !dbg !1203
  store i64 %dec22, i64* %ob_refcnt21, align 8, !dbg !1203, !tbaa !825
  %cmp23 = icmp ne i64 %dec22, 0, !dbg !1204
  br i1 %cmp23, label %if.then.24, label %if.else.25, !dbg !1205

if.then.24:                                       ; preds = %do.body.19
  br label %if.end.28, !dbg !1206

if.else.25:                                       ; preds = %do.body.19
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8, !dbg !1208, !tbaa !750
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1, !dbg !1210
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8, !dbg !1210, !tbaa !808
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4, !dbg !1211
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8, !dbg !1211, !tbaa !834
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8, !dbg !1212, !tbaa !750
  call void %33(%struct._object* %34), !dbg !1213
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  %35 = bitcast %struct._object** %_py_decref_tmp20 to i8*, !dbg !1214
  call void @llvm.lifetime.end(i64 8, i8* %35) #2, !dbg !1214
  br label %do.cond.29, !dbg !1216

do.cond.29:                                       ; preds = %if.end.28
  br label %do.end.30, !dbg !1217

do.end.30:                                        ; preds = %do.cond.29
  br label %if.end.31, !dbg !1219

if.end.31:                                        ; preds = %do.end.30, %do.body.14
  %36 = bitcast %struct._object** %_py_tmp15 to i8*, !dbg !1221
  call void @llvm.lifetime.end(i64 8, i8* %36) #2, !dbg !1221
  br label %do.cond.32, !dbg !1224

do.cond.32:                                       ; preds = %if.end.31
  br label %do.end.33, !dbg !1225

do.end.33:                                        ; preds = %do.cond.32
  store i32 0, i32* %retval, !dbg !1227
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1227

cleanup:                                          ; preds = %do.end.33, %if.then
  %37 = bitcast %struct._PyIO_State** %state to i8*, !dbg !1228
  call void @llvm.lifetime.end(i64 8, i8* %37) #2, !dbg !1228
  %38 = load i32, i32* %retval, !dbg !1228
  ret i32 %38, !dbg !1228
}

; Function Attrs: nounwind uwtable
define internal void @iomodule_free(%struct._object* %mod) #0 {
entry:
  %mod.addr = alloca %struct._object*, align 8
  store %struct._object* %mod, %struct._object** %mod.addr, align 8, !tbaa !750
  call void @llvm.dbg.declare(metadata %struct._object** %mod.addr, metadata !673, metadata !754), !dbg !1229
  %0 = load %struct._object*, %struct._object** %mod.addr, align 8, !dbg !1230, !tbaa !750
  %call = call i32 @iomodule_clear(%struct._object* %0), !dbg !1231
  ret void, !dbg !1232
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__io() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %state = alloca %struct._PyIO_State*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp45 = alloca %struct._object*, align 8
  %_py_decref_tmp66 = alloca %struct._object*, align 8
  %_py_decref_tmp87 = alloca %struct._object*, align 8
  %_py_decref_tmp108 = alloca %struct._object*, align 8
  %_py_decref_tmp129 = alloca %struct._object*, align 8
  %_py_decref_tmp154 = alloca %struct._object*, align 8
  %_py_decref_tmp175 = alloca %struct._object*, align 8
  %_py_decref_tmp196 = alloca %struct._object*, align 8
  %_py_decref_tmp217 = alloca %struct._object*, align 8
  %_py_decref_tmp238 = alloca %struct._object*, align 8
  %_py_decref_tmp259 = alloca %struct._object*, align 8
  %_py_decref_tmp280 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp458 = alloca %struct._object*, align 8
  %_py_decref_tmp473 = alloca %struct._object*, align 8
  %0 = bitcast %struct._object** %m to i8*, !dbg !1233
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1233
  call void @llvm.dbg.declare(metadata %struct._object** %m, metadata !417, metadata !754), !dbg !1234
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @_PyIO_Module, i32 1013), !dbg !1235
  store %struct._object* %call, %struct._object** %m, align 8, !dbg !1234, !tbaa !750
  %1 = bitcast %struct._PyIO_State** %state to i8*, !dbg !1236
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1236
  call void @llvm.dbg.declare(metadata %struct._PyIO_State** %state, metadata !418, metadata !754), !dbg !1237
  store %struct._PyIO_State* null, %struct._PyIO_State** %state, align 8, !dbg !1237, !tbaa !750
  %2 = load %struct._object*, %struct._object** %m, align 8, !dbg !1238, !tbaa !750
  %cmp = icmp eq %struct._object* %2, null, !dbg !1240
  br i1 %cmp, label %if.then, label %if.end, !dbg !1241

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1242
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1242

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %m, align 8, !dbg !1243, !tbaa !750
  %call1 = call i8* @PyModule_GetState(%struct._object* %3), !dbg !1244
  %4 = bitcast i8* %call1 to %struct._PyIO_State*, !dbg !1245
  store %struct._PyIO_State* %4, %struct._PyIO_State** %state, align 8, !dbg !1246, !tbaa !750
  %5 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8, !dbg !1247, !tbaa !750
  %initialized = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %5, i32 0, i32 0, !dbg !1248
  store i32 0, i32* %initialized, align 4, !dbg !1249, !tbaa !1048
  %6 = load %struct._object*, %struct._object** %m, align 8, !dbg !1250, !tbaa !750
  %call2 = call i32 @PyModule_AddIntConstant(%struct._object* %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i64 8192), !dbg !1252
  %cmp3 = icmp slt i32 %call2, 0, !dbg !1253
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !1254

if.then.4:                                        ; preds = %if.end
  br label %fail, !dbg !1255

if.end.5:                                         ; preds = %if.end
  %7 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1256, !tbaa !750
  %8 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !1257, !tbaa !750
  %call6 = call %struct._object* (%struct._object*, i8*, ...) @_PyObject_CallFunction_SizeT(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyType_Type, i32 0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), %struct._object* %7, %struct._object* %8), !dbg !1258
  %9 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8, !dbg !1259, !tbaa !750
  %unsupported_operation = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %9, i32 0, i32 2, !dbg !1260
  store %struct._object* %call6, %struct._object** %unsupported_operation, align 8, !dbg !1261, !tbaa !1091
  %10 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8, !dbg !1262, !tbaa !750
  %unsupported_operation7 = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %10, i32 0, i32 2, !dbg !1264
  %11 = load %struct._object*, %struct._object** %unsupported_operation7, align 8, !dbg !1264, !tbaa !1091
  %cmp8 = icmp eq %struct._object* %11, null, !dbg !1265
  br i1 %cmp8, label %if.then.9, label %if.end.10, !dbg !1266

if.then.9:                                        ; preds = %if.end.5
  br label %fail, !dbg !1267

if.end.10:                                        ; preds = %if.end.5
  %12 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8, !dbg !1268, !tbaa !750
  %unsupported_operation11 = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %12, i32 0, i32 2, !dbg !1269
  %13 = load %struct._object*, %struct._object** %unsupported_operation11, align 8, !dbg !1269, !tbaa !1091
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !1270
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !1271, !tbaa !825
  %inc = add i64 %14, 1, !dbg !1271
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1271, !tbaa !825
  %15 = load %struct._object*, %struct._object** %m, align 8, !dbg !1272, !tbaa !750
  %16 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8, !dbg !1274, !tbaa !750
  %unsupported_operation12 = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %16, i32 0, i32 2, !dbg !1275
  %17 = load %struct._object*, %struct._object** %unsupported_operation12, align 8, !dbg !1275, !tbaa !1091
  %call13 = call i32 @PyModule_AddObject(%struct._object* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), %struct._object* %17), !dbg !1276
  %cmp14 = icmp slt i32 %call13, 0, !dbg !1277
  br i1 %cmp14, label %if.then.15, label %if.end.16, !dbg !1278

if.then.15:                                       ; preds = %if.end.10
  br label %fail, !dbg !1279

if.end.16:                                        ; preds = %if.end.10
  %18 = load %struct._object*, %struct._object** @PyExc_BlockingIOError, align 8, !dbg !1280, !tbaa !750
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0, !dbg !1281
  %19 = load i64, i64* %ob_refcnt17, align 8, !dbg !1282, !tbaa !825
  %inc18 = add i64 %19, 1, !dbg !1282
  store i64 %inc18, i64* %ob_refcnt17, align 8, !dbg !1282, !tbaa !825
  %20 = load %struct._object*, %struct._object** %m, align 8, !dbg !1283, !tbaa !750
  %21 = load %struct._object*, %struct._object** @PyExc_BlockingIOError, align 8, !dbg !1285, !tbaa !750
  %call19 = call i32 @PyModule_AddObject(%struct._object* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), %struct._object* %21), !dbg !1286
  %cmp20 = icmp slt i32 %call19, 0, !dbg !1287
  br i1 %cmp20, label %if.then.21, label %if.end.22, !dbg !1288

if.then.21:                                       ; preds = %if.end.16
  br label %fail, !dbg !1289

if.end.22:                                        ; preds = %if.end.16
  %call23 = call i32 @PyType_Ready(%struct._typeobject* @PyIOBase_Type), !dbg !1290
  %cmp24 = icmp slt i32 %call23, 0, !dbg !1292
  br i1 %cmp24, label %if.then.25, label %if.end.26, !dbg !1293

if.then.25:                                       ; preds = %if.end.22
  br label %fail, !dbg !1294

if.end.26:                                        ; preds = %if.end.22
  %22 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyIOBase_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1296, !tbaa !825
  %inc27 = add i64 %22, 1, !dbg !1296
  store i64 %inc27, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyIOBase_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1296, !tbaa !825
  %23 = load %struct._object*, %struct._object** %m, align 8, !dbg !1298, !tbaa !750
  %call28 = call i32 @PyModule_AddObject(%struct._object* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyIOBase_Type, i32 0, i32 0, i32 0)), !dbg !1299
  %cmp29 = icmp slt i32 %call28, 0, !dbg !1300
  br i1 %cmp29, label %if.then.30, label %if.end.35, !dbg !1301

if.then.30:                                       ; preds = %if.end.26
  br label %do.body, !dbg !1302

do.body:                                          ; preds = %if.then.30
  %24 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1304
  call void @llvm.lifetime.start(i64 8, i8* %24) #2, !dbg !1304
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !419, metadata !754), !dbg !1306
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyIOBase_Type, i32 0, i32 0, i32 0), %struct._object** %_py_decref_tmp, align 8, !dbg !1306, !tbaa !750
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1307, !tbaa !750
  %ob_refcnt31 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0, !dbg !1309
  %26 = load i64, i64* %ob_refcnt31, align 8, !dbg !1310, !tbaa !825
  %dec = add i64 %26, -1, !dbg !1310
  store i64 %dec, i64* %ob_refcnt31, align 8, !dbg !1310, !tbaa !825
  %cmp32 = icmp ne i64 %dec, 0, !dbg !1311
  br i1 %cmp32, label %if.then.33, label %if.else, !dbg !1312

if.then.33:                                       ; preds = %do.body
  br label %if.end.34, !dbg !1313

if.else:                                          ; preds = %do.body
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1315, !tbaa !750
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1, !dbg !1317
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1317, !tbaa !808
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4, !dbg !1318
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1318, !tbaa !834
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1319, !tbaa !750
  call void %29(%struct._object* %30), !dbg !1320
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %if.then.33
  %31 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1321
  call void @llvm.lifetime.end(i64 8, i8* %31) #2, !dbg !1321
  br label %do.cond, !dbg !1323

do.cond:                                          ; preds = %if.end.34
  br label %do.end, !dbg !1324

do.end:                                           ; preds = %do.cond
  br label %fail, !dbg !1326

if.end.35:                                        ; preds = %if.end.26
  %call36 = call i32 @PyType_Ready(%struct._typeobject* @PyRawIOBase_Type), !dbg !1328
  %cmp37 = icmp slt i32 %call36, 0, !dbg !1330
  br i1 %cmp37, label %if.then.38, label %if.end.39, !dbg !1331

if.then.38:                                       ; preds = %if.end.35
  br label %fail, !dbg !1332

if.end.39:                                        ; preds = %if.end.35
  %32 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyRawIOBase_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1334, !tbaa !825
  %inc40 = add i64 %32, 1, !dbg !1334
  store i64 %inc40, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyRawIOBase_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1334, !tbaa !825
  %33 = load %struct._object*, %struct._object** %m, align 8, !dbg !1335, !tbaa !750
  %call41 = call i32 @PyModule_AddObject(%struct._object* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyRawIOBase_Type, i32 0, i32 0, i32 0)), !dbg !1336
  %cmp42 = icmp slt i32 %call41, 0, !dbg !1337
  br i1 %cmp42, label %if.then.43, label %if.end.56, !dbg !1338

if.then.43:                                       ; preds = %if.end.39
  br label %do.body.44, !dbg !1339

do.body.44:                                       ; preds = %if.then.43
  %34 = bitcast %struct._object** %_py_decref_tmp45 to i8*, !dbg !1341
  call void @llvm.lifetime.start(i64 8, i8* %34) #2, !dbg !1341
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp45, metadata !423, metadata !754), !dbg !1343
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyRawIOBase_Type, i32 0, i32 0, i32 0), %struct._object** %_py_decref_tmp45, align 8, !dbg !1343, !tbaa !750
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8, !dbg !1344, !tbaa !750
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0, !dbg !1346
  %36 = load i64, i64* %ob_refcnt46, align 8, !dbg !1347, !tbaa !825
  %dec47 = add i64 %36, -1, !dbg !1347
  store i64 %dec47, i64* %ob_refcnt46, align 8, !dbg !1347, !tbaa !825
  %cmp48 = icmp ne i64 %dec47, 0, !dbg !1348
  br i1 %cmp48, label %if.then.49, label %if.else.50, !dbg !1349

if.then.49:                                       ; preds = %do.body.44
  br label %if.end.53, !dbg !1350

if.else.50:                                       ; preds = %do.body.44
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8, !dbg !1352, !tbaa !750
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1, !dbg !1354
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8, !dbg !1354, !tbaa !808
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4, !dbg !1355
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8, !dbg !1355, !tbaa !834
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8, !dbg !1356, !tbaa !750
  call void %39(%struct._object* %40), !dbg !1357
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.49
  %41 = bitcast %struct._object** %_py_decref_tmp45 to i8*, !dbg !1358
  call void @llvm.lifetime.end(i64 8, i8* %41) #2, !dbg !1358
  br label %do.cond.54, !dbg !1360

do.cond.54:                                       ; preds = %if.end.53
  br label %do.end.55, !dbg !1361

do.end.55:                                        ; preds = %do.cond.54
  br label %fail, !dbg !1363

if.end.56:                                        ; preds = %if.end.39
  %call57 = call i32 @PyType_Ready(%struct._typeobject* @PyBufferedIOBase_Type), !dbg !1365
  %cmp58 = icmp slt i32 %call57, 0, !dbg !1367
  br i1 %cmp58, label %if.then.59, label %if.end.60, !dbg !1368

if.then.59:                                       ; preds = %if.end.56
  br label %fail, !dbg !1369

if.end.60:                                        ; preds = %if.end.56
  %42 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedIOBase_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1371, !tbaa !825
  %inc61 = add i64 %42, 1, !dbg !1371
  store i64 %inc61, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedIOBase_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1371, !tbaa !825
  %43 = load %struct._object*, %struct._object** %m, align 8, !dbg !1372, !tbaa !750
  %call62 = call i32 @PyModule_AddObject(%struct._object* %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedIOBase_Type, i32 0, i32 0, i32 0)), !dbg !1373
  %cmp63 = icmp slt i32 %call62, 0, !dbg !1374
  br i1 %cmp63, label %if.then.64, label %if.end.77, !dbg !1375

if.then.64:                                       ; preds = %if.end.60
  br label %do.body.65, !dbg !1376

do.body.65:                                       ; preds = %if.then.64
  %44 = bitcast %struct._object** %_py_decref_tmp66 to i8*, !dbg !1378
  call void @llvm.lifetime.start(i64 8, i8* %44) #2, !dbg !1378
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp66, metadata !427, metadata !754), !dbg !1380
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedIOBase_Type, i32 0, i32 0, i32 0), %struct._object** %_py_decref_tmp66, align 8, !dbg !1380, !tbaa !750
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8, !dbg !1381, !tbaa !750
  %ob_refcnt67 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0, !dbg !1383
  %46 = load i64, i64* %ob_refcnt67, align 8, !dbg !1384, !tbaa !825
  %dec68 = add i64 %46, -1, !dbg !1384
  store i64 %dec68, i64* %ob_refcnt67, align 8, !dbg !1384, !tbaa !825
  %cmp69 = icmp ne i64 %dec68, 0, !dbg !1385
  br i1 %cmp69, label %if.then.70, label %if.else.71, !dbg !1386

if.then.70:                                       ; preds = %do.body.65
  br label %if.end.74, !dbg !1387

if.else.71:                                       ; preds = %do.body.65
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8, !dbg !1389, !tbaa !750
  %ob_type72 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1, !dbg !1391
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type72, align 8, !dbg !1391, !tbaa !808
  %tp_dealloc73 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4, !dbg !1392
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc73, align 8, !dbg !1392, !tbaa !834
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8, !dbg !1393, !tbaa !750
  call void %49(%struct._object* %50), !dbg !1394
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.71, %if.then.70
  %51 = bitcast %struct._object** %_py_decref_tmp66 to i8*, !dbg !1395
  call void @llvm.lifetime.end(i64 8, i8* %51) #2, !dbg !1395
  br label %do.cond.75, !dbg !1397

do.cond.75:                                       ; preds = %if.end.74
  br label %do.end.76, !dbg !1398

do.end.76:                                        ; preds = %do.cond.75
  br label %fail, !dbg !1400

if.end.77:                                        ; preds = %if.end.60
  %call78 = call i32 @PyType_Ready(%struct._typeobject* @PyTextIOBase_Type), !dbg !1402
  %cmp79 = icmp slt i32 %call78, 0, !dbg !1404
  br i1 %cmp79, label %if.then.80, label %if.end.81, !dbg !1405

if.then.80:                                       ; preds = %if.end.77
  br label %fail, !dbg !1406

if.end.81:                                        ; preds = %if.end.77
  %52 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOBase_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1408, !tbaa !825
  %inc82 = add i64 %52, 1, !dbg !1408
  store i64 %inc82, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOBase_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1408, !tbaa !825
  %53 = load %struct._object*, %struct._object** %m, align 8, !dbg !1409, !tbaa !750
  %call83 = call i32 @PyModule_AddObject(%struct._object* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOBase_Type, i32 0, i32 0, i32 0)), !dbg !1410
  %cmp84 = icmp slt i32 %call83, 0, !dbg !1411
  br i1 %cmp84, label %if.then.85, label %if.end.98, !dbg !1412

if.then.85:                                       ; preds = %if.end.81
  br label %do.body.86, !dbg !1413

do.body.86:                                       ; preds = %if.then.85
  %54 = bitcast %struct._object** %_py_decref_tmp87 to i8*, !dbg !1415
  call void @llvm.lifetime.start(i64 8, i8* %54) #2, !dbg !1415
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp87, metadata !431, metadata !754), !dbg !1417
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOBase_Type, i32 0, i32 0, i32 0), %struct._object** %_py_decref_tmp87, align 8, !dbg !1417, !tbaa !750
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp87, align 8, !dbg !1418, !tbaa !750
  %ob_refcnt88 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0, !dbg !1420
  %56 = load i64, i64* %ob_refcnt88, align 8, !dbg !1421, !tbaa !825
  %dec89 = add i64 %56, -1, !dbg !1421
  store i64 %dec89, i64* %ob_refcnt88, align 8, !dbg !1421, !tbaa !825
  %cmp90 = icmp ne i64 %dec89, 0, !dbg !1422
  br i1 %cmp90, label %if.then.91, label %if.else.92, !dbg !1423

if.then.91:                                       ; preds = %do.body.86
  br label %if.end.95, !dbg !1424

if.else.92:                                       ; preds = %do.body.86
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp87, align 8, !dbg !1426, !tbaa !750
  %ob_type93 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1, !dbg !1428
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type93, align 8, !dbg !1428, !tbaa !808
  %tp_dealloc94 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4, !dbg !1429
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc94, align 8, !dbg !1429, !tbaa !834
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp87, align 8, !dbg !1430, !tbaa !750
  call void %59(%struct._object* %60), !dbg !1431
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.92, %if.then.91
  %61 = bitcast %struct._object** %_py_decref_tmp87 to i8*, !dbg !1432
  call void @llvm.lifetime.end(i64 8, i8* %61) #2, !dbg !1432
  br label %do.cond.96, !dbg !1434

do.cond.96:                                       ; preds = %if.end.95
  br label %do.end.97, !dbg !1435

do.end.97:                                        ; preds = %do.cond.96
  br label %fail, !dbg !1437

if.end.98:                                        ; preds = %if.end.81
  store %struct._typeobject* @PyRawIOBase_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyFileIO_Type, i32 0, i32 30), align 8, !dbg !1439, !tbaa !1440
  %call99 = call i32 @PyType_Ready(%struct._typeobject* @PyFileIO_Type), !dbg !1441
  %cmp100 = icmp slt i32 %call99, 0, !dbg !1443
  br i1 %cmp100, label %if.then.101, label %if.end.102, !dbg !1444

if.then.101:                                      ; preds = %if.end.98
  br label %fail, !dbg !1445

if.end.102:                                       ; preds = %if.end.98
  %62 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyFileIO_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1447, !tbaa !825
  %inc103 = add i64 %62, 1, !dbg !1447
  store i64 %inc103, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyFileIO_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1447, !tbaa !825
  %63 = load %struct._object*, %struct._object** %m, align 8, !dbg !1448, !tbaa !750
  %call104 = call i32 @PyModule_AddObject(%struct._object* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyFileIO_Type, i32 0, i32 0, i32 0)), !dbg !1449
  %cmp105 = icmp slt i32 %call104, 0, !dbg !1450
  br i1 %cmp105, label %if.then.106, label %if.end.119, !dbg !1451

if.then.106:                                      ; preds = %if.end.102
  br label %do.body.107, !dbg !1452

do.body.107:                                      ; preds = %if.then.106
  %64 = bitcast %struct._object** %_py_decref_tmp108 to i8*, !dbg !1454
  call void @llvm.lifetime.start(i64 8, i8* %64) #2, !dbg !1454
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp108, metadata !435, metadata !754), !dbg !1456
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyFileIO_Type, i32 0, i32 0, i32 0), %struct._object** %_py_decref_tmp108, align 8, !dbg !1456, !tbaa !750
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp108, align 8, !dbg !1457, !tbaa !750
  %ob_refcnt109 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 0, !dbg !1459
  %66 = load i64, i64* %ob_refcnt109, align 8, !dbg !1460, !tbaa !825
  %dec110 = add i64 %66, -1, !dbg !1460
  store i64 %dec110, i64* %ob_refcnt109, align 8, !dbg !1460, !tbaa !825
  %cmp111 = icmp ne i64 %dec110, 0, !dbg !1461
  br i1 %cmp111, label %if.then.112, label %if.else.113, !dbg !1462

if.then.112:                                      ; preds = %do.body.107
  br label %if.end.116, !dbg !1463

if.else.113:                                      ; preds = %do.body.107
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp108, align 8, !dbg !1465, !tbaa !750
  %ob_type114 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 1, !dbg !1467
  %68 = load %struct._typeobject*, %struct._typeobject** %ob_type114, align 8, !dbg !1467, !tbaa !808
  %tp_dealloc115 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %68, i32 0, i32 4, !dbg !1468
  %69 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc115, align 8, !dbg !1468, !tbaa !834
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp108, align 8, !dbg !1469, !tbaa !750
  call void %69(%struct._object* %70), !dbg !1470
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.113, %if.then.112
  %71 = bitcast %struct._object** %_py_decref_tmp108 to i8*, !dbg !1471
  call void @llvm.lifetime.end(i64 8, i8* %71) #2, !dbg !1471
  br label %do.cond.117, !dbg !1473

do.cond.117:                                      ; preds = %if.end.116
  br label %do.end.118, !dbg !1474

do.end.118:                                       ; preds = %do.cond.117
  br label %fail, !dbg !1476

if.end.119:                                       ; preds = %if.end.102
  store %struct._typeobject* @PyBufferedIOBase_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBytesIO_Type, i32 0, i32 30), align 8, !dbg !1478, !tbaa !1440
  %call120 = call i32 @PyType_Ready(%struct._typeobject* @PyBytesIO_Type), !dbg !1479
  %cmp121 = icmp slt i32 %call120, 0, !dbg !1481
  br i1 %cmp121, label %if.then.122, label %if.end.123, !dbg !1482

if.then.122:                                      ; preds = %if.end.119
  br label %fail, !dbg !1483

if.end.123:                                       ; preds = %if.end.119
  %72 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBytesIO_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1485, !tbaa !825
  %inc124 = add i64 %72, 1, !dbg !1485
  store i64 %inc124, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBytesIO_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1485, !tbaa !825
  %73 = load %struct._object*, %struct._object** %m, align 8, !dbg !1486, !tbaa !750
  %call125 = call i32 @PyModule_AddObject(%struct._object* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBytesIO_Type, i32 0, i32 0, i32 0)), !dbg !1487
  %cmp126 = icmp slt i32 %call125, 0, !dbg !1488
  br i1 %cmp126, label %if.then.127, label %if.end.140, !dbg !1489

if.then.127:                                      ; preds = %if.end.123
  br label %do.body.128, !dbg !1490

do.body.128:                                      ; preds = %if.then.127
  %74 = bitcast %struct._object** %_py_decref_tmp129 to i8*, !dbg !1492
  call void @llvm.lifetime.start(i64 8, i8* %74) #2, !dbg !1492
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp129, metadata !439, metadata !754), !dbg !1494
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBytesIO_Type, i32 0, i32 0, i32 0), %struct._object** %_py_decref_tmp129, align 8, !dbg !1494, !tbaa !750
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp129, align 8, !dbg !1495, !tbaa !750
  %ob_refcnt130 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 0, !dbg !1497
  %76 = load i64, i64* %ob_refcnt130, align 8, !dbg !1498, !tbaa !825
  %dec131 = add i64 %76, -1, !dbg !1498
  store i64 %dec131, i64* %ob_refcnt130, align 8, !dbg !1498, !tbaa !825
  %cmp132 = icmp ne i64 %dec131, 0, !dbg !1499
  br i1 %cmp132, label %if.then.133, label %if.else.134, !dbg !1500

if.then.133:                                      ; preds = %do.body.128
  br label %if.end.137, !dbg !1501

if.else.134:                                      ; preds = %do.body.128
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp129, align 8, !dbg !1503, !tbaa !750
  %ob_type135 = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 1, !dbg !1505
  %78 = load %struct._typeobject*, %struct._typeobject** %ob_type135, align 8, !dbg !1505, !tbaa !808
  %tp_dealloc136 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %78, i32 0, i32 4, !dbg !1506
  %79 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc136, align 8, !dbg !1506, !tbaa !834
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp129, align 8, !dbg !1507, !tbaa !750
  call void %79(%struct._object* %80), !dbg !1508
  br label %if.end.137

if.end.137:                                       ; preds = %if.else.134, %if.then.133
  %81 = bitcast %struct._object** %_py_decref_tmp129 to i8*, !dbg !1509
  call void @llvm.lifetime.end(i64 8, i8* %81) #2, !dbg !1509
  br label %do.cond.138, !dbg !1511

do.cond.138:                                      ; preds = %if.end.137
  br label %do.end.139, !dbg !1512

do.end.139:                                       ; preds = %do.cond.138
  br label %fail, !dbg !1514

if.end.140:                                       ; preds = %if.end.123
  %call141 = call i32 @PyType_Ready(%struct._typeobject* @_PyBytesIOBuffer_Type), !dbg !1516
  %cmp142 = icmp slt i32 %call141, 0, !dbg !1518
  br i1 %cmp142, label %if.then.143, label %if.end.144, !dbg !1519

if.then.143:                                      ; preds = %if.end.140
  br label %fail, !dbg !1520

if.end.144:                                       ; preds = %if.end.140
  store %struct._typeobject* @PyTextIOBase_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyStringIO_Type, i32 0, i32 30), align 8, !dbg !1521, !tbaa !1440
  %call145 = call i32 @PyType_Ready(%struct._typeobject* @PyStringIO_Type), !dbg !1522
  %cmp146 = icmp slt i32 %call145, 0, !dbg !1524
  br i1 %cmp146, label %if.then.147, label %if.end.148, !dbg !1525

if.then.147:                                      ; preds = %if.end.144
  br label %fail, !dbg !1526

if.end.148:                                       ; preds = %if.end.144
  %82 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyStringIO_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1528, !tbaa !825
  %inc149 = add i64 %82, 1, !dbg !1528
  store i64 %inc149, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyStringIO_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1528, !tbaa !825
  %83 = load %struct._object*, %struct._object** %m, align 8, !dbg !1529, !tbaa !750
  %call150 = call i32 @PyModule_AddObject(%struct._object* %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyStringIO_Type, i32 0, i32 0, i32 0)), !dbg !1530
  %cmp151 = icmp slt i32 %call150, 0, !dbg !1531
  br i1 %cmp151, label %if.then.152, label %if.end.165, !dbg !1532

if.then.152:                                      ; preds = %if.end.148
  br label %do.body.153, !dbg !1533

do.body.153:                                      ; preds = %if.then.152
  %84 = bitcast %struct._object** %_py_decref_tmp154 to i8*, !dbg !1535
  call void @llvm.lifetime.start(i64 8, i8* %84) #2, !dbg !1535
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp154, metadata !443, metadata !754), !dbg !1537
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyStringIO_Type, i32 0, i32 0, i32 0), %struct._object** %_py_decref_tmp154, align 8, !dbg !1537, !tbaa !750
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp154, align 8, !dbg !1538, !tbaa !750
  %ob_refcnt155 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 0, !dbg !1540
  %86 = load i64, i64* %ob_refcnt155, align 8, !dbg !1541, !tbaa !825
  %dec156 = add i64 %86, -1, !dbg !1541
  store i64 %dec156, i64* %ob_refcnt155, align 8, !dbg !1541, !tbaa !825
  %cmp157 = icmp ne i64 %dec156, 0, !dbg !1542
  br i1 %cmp157, label %if.then.158, label %if.else.159, !dbg !1543

if.then.158:                                      ; preds = %do.body.153
  br label %if.end.162, !dbg !1544

if.else.159:                                      ; preds = %do.body.153
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp154, align 8, !dbg !1546, !tbaa !750
  %ob_type160 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 1, !dbg !1548
  %88 = load %struct._typeobject*, %struct._typeobject** %ob_type160, align 8, !dbg !1548, !tbaa !808
  %tp_dealloc161 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %88, i32 0, i32 4, !dbg !1549
  %89 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc161, align 8, !dbg !1549, !tbaa !834
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp154, align 8, !dbg !1550, !tbaa !750
  call void %89(%struct._object* %90), !dbg !1551
  br label %if.end.162

if.end.162:                                       ; preds = %if.else.159, %if.then.158
  %91 = bitcast %struct._object** %_py_decref_tmp154 to i8*, !dbg !1552
  call void @llvm.lifetime.end(i64 8, i8* %91) #2, !dbg !1552
  br label %do.cond.163, !dbg !1554

do.cond.163:                                      ; preds = %if.end.162
  br label %do.end.164, !dbg !1555

do.end.164:                                       ; preds = %do.cond.163
  br label %fail, !dbg !1557

if.end.165:                                       ; preds = %if.end.148
  store %struct._typeobject* @PyBufferedIOBase_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedReader_Type, i32 0, i32 30), align 8, !dbg !1559, !tbaa !1440
  %call166 = call i32 @PyType_Ready(%struct._typeobject* @PyBufferedReader_Type), !dbg !1560
  %cmp167 = icmp slt i32 %call166, 0, !dbg !1562
  br i1 %cmp167, label %if.then.168, label %if.end.169, !dbg !1563

if.then.168:                                      ; preds = %if.end.165
  br label %fail, !dbg !1564

if.end.169:                                       ; preds = %if.end.165
  %92 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedReader_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1566, !tbaa !825
  %inc170 = add i64 %92, 1, !dbg !1566
  store i64 %inc170, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedReader_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1566, !tbaa !825
  %93 = load %struct._object*, %struct._object** %m, align 8, !dbg !1567, !tbaa !750
  %call171 = call i32 @PyModule_AddObject(%struct._object* %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedReader_Type, i32 0, i32 0, i32 0)), !dbg !1568
  %cmp172 = icmp slt i32 %call171, 0, !dbg !1569
  br i1 %cmp172, label %if.then.173, label %if.end.186, !dbg !1570

if.then.173:                                      ; preds = %if.end.169
  br label %do.body.174, !dbg !1571

do.body.174:                                      ; preds = %if.then.173
  %94 = bitcast %struct._object** %_py_decref_tmp175 to i8*, !dbg !1573
  call void @llvm.lifetime.start(i64 8, i8* %94) #2, !dbg !1573
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp175, metadata !447, metadata !754), !dbg !1575
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedReader_Type, i32 0, i32 0, i32 0), %struct._object** %_py_decref_tmp175, align 8, !dbg !1575, !tbaa !750
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp175, align 8, !dbg !1576, !tbaa !750
  %ob_refcnt176 = getelementptr inbounds %struct._object, %struct._object* %95, i32 0, i32 0, !dbg !1578
  %96 = load i64, i64* %ob_refcnt176, align 8, !dbg !1579, !tbaa !825
  %dec177 = add i64 %96, -1, !dbg !1579
  store i64 %dec177, i64* %ob_refcnt176, align 8, !dbg !1579, !tbaa !825
  %cmp178 = icmp ne i64 %dec177, 0, !dbg !1580
  br i1 %cmp178, label %if.then.179, label %if.else.180, !dbg !1581

if.then.179:                                      ; preds = %do.body.174
  br label %if.end.183, !dbg !1582

if.else.180:                                      ; preds = %do.body.174
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp175, align 8, !dbg !1584, !tbaa !750
  %ob_type181 = getelementptr inbounds %struct._object, %struct._object* %97, i32 0, i32 1, !dbg !1586
  %98 = load %struct._typeobject*, %struct._typeobject** %ob_type181, align 8, !dbg !1586, !tbaa !808
  %tp_dealloc182 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %98, i32 0, i32 4, !dbg !1587
  %99 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc182, align 8, !dbg !1587, !tbaa !834
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp175, align 8, !dbg !1588, !tbaa !750
  call void %99(%struct._object* %100), !dbg !1589
  br label %if.end.183

if.end.183:                                       ; preds = %if.else.180, %if.then.179
  %101 = bitcast %struct._object** %_py_decref_tmp175 to i8*, !dbg !1590
  call void @llvm.lifetime.end(i64 8, i8* %101) #2, !dbg !1590
  br label %do.cond.184, !dbg !1592

do.cond.184:                                      ; preds = %if.end.183
  br label %do.end.185, !dbg !1593

do.end.185:                                       ; preds = %do.cond.184
  br label %fail, !dbg !1595

if.end.186:                                       ; preds = %if.end.169
  store %struct._typeobject* @PyBufferedIOBase_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedWriter_Type, i32 0, i32 30), align 8, !dbg !1597, !tbaa !1440
  %call187 = call i32 @PyType_Ready(%struct._typeobject* @PyBufferedWriter_Type), !dbg !1598
  %cmp188 = icmp slt i32 %call187, 0, !dbg !1600
  br i1 %cmp188, label %if.then.189, label %if.end.190, !dbg !1601

if.then.189:                                      ; preds = %if.end.186
  br label %fail, !dbg !1602

if.end.190:                                       ; preds = %if.end.186
  %102 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedWriter_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1604, !tbaa !825
  %inc191 = add i64 %102, 1, !dbg !1604
  store i64 %inc191, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedWriter_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1604, !tbaa !825
  %103 = load %struct._object*, %struct._object** %m, align 8, !dbg !1605, !tbaa !750
  %call192 = call i32 @PyModule_AddObject(%struct._object* %103, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedWriter_Type, i32 0, i32 0, i32 0)), !dbg !1606
  %cmp193 = icmp slt i32 %call192, 0, !dbg !1607
  br i1 %cmp193, label %if.then.194, label %if.end.207, !dbg !1608

if.then.194:                                      ; preds = %if.end.190
  br label %do.body.195, !dbg !1609

do.body.195:                                      ; preds = %if.then.194
  %104 = bitcast %struct._object** %_py_decref_tmp196 to i8*, !dbg !1611
  call void @llvm.lifetime.start(i64 8, i8* %104) #2, !dbg !1611
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp196, metadata !451, metadata !754), !dbg !1613
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedWriter_Type, i32 0, i32 0, i32 0), %struct._object** %_py_decref_tmp196, align 8, !dbg !1613, !tbaa !750
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp196, align 8, !dbg !1614, !tbaa !750
  %ob_refcnt197 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 0, !dbg !1616
  %106 = load i64, i64* %ob_refcnt197, align 8, !dbg !1617, !tbaa !825
  %dec198 = add i64 %106, -1, !dbg !1617
  store i64 %dec198, i64* %ob_refcnt197, align 8, !dbg !1617, !tbaa !825
  %cmp199 = icmp ne i64 %dec198, 0, !dbg !1618
  br i1 %cmp199, label %if.then.200, label %if.else.201, !dbg !1619

if.then.200:                                      ; preds = %do.body.195
  br label %if.end.204, !dbg !1620

if.else.201:                                      ; preds = %do.body.195
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp196, align 8, !dbg !1622, !tbaa !750
  %ob_type202 = getelementptr inbounds %struct._object, %struct._object* %107, i32 0, i32 1, !dbg !1624
  %108 = load %struct._typeobject*, %struct._typeobject** %ob_type202, align 8, !dbg !1624, !tbaa !808
  %tp_dealloc203 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %108, i32 0, i32 4, !dbg !1625
  %109 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc203, align 8, !dbg !1625, !tbaa !834
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp196, align 8, !dbg !1626, !tbaa !750
  call void %109(%struct._object* %110), !dbg !1627
  br label %if.end.204

if.end.204:                                       ; preds = %if.else.201, %if.then.200
  %111 = bitcast %struct._object** %_py_decref_tmp196 to i8*, !dbg !1628
  call void @llvm.lifetime.end(i64 8, i8* %111) #2, !dbg !1628
  br label %do.cond.205, !dbg !1630

do.cond.205:                                      ; preds = %if.end.204
  br label %do.end.206, !dbg !1631

do.end.206:                                       ; preds = %do.cond.205
  br label %fail, !dbg !1633

if.end.207:                                       ; preds = %if.end.190
  store %struct._typeobject* @PyBufferedIOBase_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRWPair_Type, i32 0, i32 30), align 8, !dbg !1635, !tbaa !1440
  %call208 = call i32 @PyType_Ready(%struct._typeobject* @PyBufferedRWPair_Type), !dbg !1636
  %cmp209 = icmp slt i32 %call208, 0, !dbg !1638
  br i1 %cmp209, label %if.then.210, label %if.end.211, !dbg !1639

if.then.210:                                      ; preds = %if.end.207
  br label %fail, !dbg !1640

if.end.211:                                       ; preds = %if.end.207
  %112 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRWPair_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1642, !tbaa !825
  %inc212 = add i64 %112, 1, !dbg !1642
  store i64 %inc212, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRWPair_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1642, !tbaa !825
  %113 = load %struct._object*, %struct._object** %m, align 8, !dbg !1643, !tbaa !750
  %call213 = call i32 @PyModule_AddObject(%struct._object* %113, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRWPair_Type, i32 0, i32 0, i32 0)), !dbg !1644
  %cmp214 = icmp slt i32 %call213, 0, !dbg !1645
  br i1 %cmp214, label %if.then.215, label %if.end.228, !dbg !1646

if.then.215:                                      ; preds = %if.end.211
  br label %do.body.216, !dbg !1647

do.body.216:                                      ; preds = %if.then.215
  %114 = bitcast %struct._object** %_py_decref_tmp217 to i8*, !dbg !1649
  call void @llvm.lifetime.start(i64 8, i8* %114) #2, !dbg !1649
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp217, metadata !455, metadata !754), !dbg !1651
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRWPair_Type, i32 0, i32 0, i32 0), %struct._object** %_py_decref_tmp217, align 8, !dbg !1651, !tbaa !750
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp217, align 8, !dbg !1652, !tbaa !750
  %ob_refcnt218 = getelementptr inbounds %struct._object, %struct._object* %115, i32 0, i32 0, !dbg !1654
  %116 = load i64, i64* %ob_refcnt218, align 8, !dbg !1655, !tbaa !825
  %dec219 = add i64 %116, -1, !dbg !1655
  store i64 %dec219, i64* %ob_refcnt218, align 8, !dbg !1655, !tbaa !825
  %cmp220 = icmp ne i64 %dec219, 0, !dbg !1656
  br i1 %cmp220, label %if.then.221, label %if.else.222, !dbg !1657

if.then.221:                                      ; preds = %do.body.216
  br label %if.end.225, !dbg !1658

if.else.222:                                      ; preds = %do.body.216
  %117 = load %struct._object*, %struct._object** %_py_decref_tmp217, align 8, !dbg !1660, !tbaa !750
  %ob_type223 = getelementptr inbounds %struct._object, %struct._object* %117, i32 0, i32 1, !dbg !1662
  %118 = load %struct._typeobject*, %struct._typeobject** %ob_type223, align 8, !dbg !1662, !tbaa !808
  %tp_dealloc224 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %118, i32 0, i32 4, !dbg !1663
  %119 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc224, align 8, !dbg !1663, !tbaa !834
  %120 = load %struct._object*, %struct._object** %_py_decref_tmp217, align 8, !dbg !1664, !tbaa !750
  call void %119(%struct._object* %120), !dbg !1665
  br label %if.end.225

if.end.225:                                       ; preds = %if.else.222, %if.then.221
  %121 = bitcast %struct._object** %_py_decref_tmp217 to i8*, !dbg !1666
  call void @llvm.lifetime.end(i64 8, i8* %121) #2, !dbg !1666
  br label %do.cond.226, !dbg !1668

do.cond.226:                                      ; preds = %if.end.225
  br label %do.end.227, !dbg !1669

do.end.227:                                       ; preds = %do.cond.226
  br label %fail, !dbg !1671

if.end.228:                                       ; preds = %if.end.211
  store %struct._typeobject* @PyBufferedIOBase_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRandom_Type, i32 0, i32 30), align 8, !dbg !1673, !tbaa !1440
  %call229 = call i32 @PyType_Ready(%struct._typeobject* @PyBufferedRandom_Type), !dbg !1674
  %cmp230 = icmp slt i32 %call229, 0, !dbg !1676
  br i1 %cmp230, label %if.then.231, label %if.end.232, !dbg !1677

if.then.231:                                      ; preds = %if.end.228
  br label %fail, !dbg !1678

if.end.232:                                       ; preds = %if.end.228
  %122 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRandom_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1680, !tbaa !825
  %inc233 = add i64 %122, 1, !dbg !1680
  store i64 %inc233, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRandom_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1680, !tbaa !825
  %123 = load %struct._object*, %struct._object** %m, align 8, !dbg !1681, !tbaa !750
  %call234 = call i32 @PyModule_AddObject(%struct._object* %123, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRandom_Type, i32 0, i32 0, i32 0)), !dbg !1682
  %cmp235 = icmp slt i32 %call234, 0, !dbg !1683
  br i1 %cmp235, label %if.then.236, label %if.end.249, !dbg !1684

if.then.236:                                      ; preds = %if.end.232
  br label %do.body.237, !dbg !1685

do.body.237:                                      ; preds = %if.then.236
  %124 = bitcast %struct._object** %_py_decref_tmp238 to i8*, !dbg !1687
  call void @llvm.lifetime.start(i64 8, i8* %124) #2, !dbg !1687
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp238, metadata !459, metadata !754), !dbg !1689
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRandom_Type, i32 0, i32 0, i32 0), %struct._object** %_py_decref_tmp238, align 8, !dbg !1689, !tbaa !750
  %125 = load %struct._object*, %struct._object** %_py_decref_tmp238, align 8, !dbg !1690, !tbaa !750
  %ob_refcnt239 = getelementptr inbounds %struct._object, %struct._object* %125, i32 0, i32 0, !dbg !1692
  %126 = load i64, i64* %ob_refcnt239, align 8, !dbg !1693, !tbaa !825
  %dec240 = add i64 %126, -1, !dbg !1693
  store i64 %dec240, i64* %ob_refcnt239, align 8, !dbg !1693, !tbaa !825
  %cmp241 = icmp ne i64 %dec240, 0, !dbg !1694
  br i1 %cmp241, label %if.then.242, label %if.else.243, !dbg !1695

if.then.242:                                      ; preds = %do.body.237
  br label %if.end.246, !dbg !1696

if.else.243:                                      ; preds = %do.body.237
  %127 = load %struct._object*, %struct._object** %_py_decref_tmp238, align 8, !dbg !1698, !tbaa !750
  %ob_type244 = getelementptr inbounds %struct._object, %struct._object* %127, i32 0, i32 1, !dbg !1700
  %128 = load %struct._typeobject*, %struct._typeobject** %ob_type244, align 8, !dbg !1700, !tbaa !808
  %tp_dealloc245 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %128, i32 0, i32 4, !dbg !1701
  %129 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc245, align 8, !dbg !1701, !tbaa !834
  %130 = load %struct._object*, %struct._object** %_py_decref_tmp238, align 8, !dbg !1702, !tbaa !750
  call void %129(%struct._object* %130), !dbg !1703
  br label %if.end.246

if.end.246:                                       ; preds = %if.else.243, %if.then.242
  %131 = bitcast %struct._object** %_py_decref_tmp238 to i8*, !dbg !1704
  call void @llvm.lifetime.end(i64 8, i8* %131) #2, !dbg !1704
  br label %do.cond.247, !dbg !1706

do.cond.247:                                      ; preds = %if.end.246
  br label %do.end.248, !dbg !1707

do.end.248:                                       ; preds = %do.cond.247
  br label %fail, !dbg !1709

if.end.249:                                       ; preds = %if.end.232
  store %struct._typeobject* @PyTextIOBase_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOWrapper_Type, i32 0, i32 30), align 8, !dbg !1711, !tbaa !1440
  %call250 = call i32 @PyType_Ready(%struct._typeobject* @PyTextIOWrapper_Type), !dbg !1712
  %cmp251 = icmp slt i32 %call250, 0, !dbg !1714
  br i1 %cmp251, label %if.then.252, label %if.end.253, !dbg !1715

if.then.252:                                      ; preds = %if.end.249
  br label %fail, !dbg !1716

if.end.253:                                       ; preds = %if.end.249
  %132 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOWrapper_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1718, !tbaa !825
  %inc254 = add i64 %132, 1, !dbg !1718
  store i64 %inc254, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOWrapper_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1718, !tbaa !825
  %133 = load %struct._object*, %struct._object** %m, align 8, !dbg !1719, !tbaa !750
  %call255 = call i32 @PyModule_AddObject(%struct._object* %133, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOWrapper_Type, i32 0, i32 0, i32 0)), !dbg !1720
  %cmp256 = icmp slt i32 %call255, 0, !dbg !1721
  br i1 %cmp256, label %if.then.257, label %if.end.270, !dbg !1722

if.then.257:                                      ; preds = %if.end.253
  br label %do.body.258, !dbg !1723

do.body.258:                                      ; preds = %if.then.257
  %134 = bitcast %struct._object** %_py_decref_tmp259 to i8*, !dbg !1725
  call void @llvm.lifetime.start(i64 8, i8* %134) #2, !dbg !1725
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp259, metadata !463, metadata !754), !dbg !1727
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOWrapper_Type, i32 0, i32 0, i32 0), %struct._object** %_py_decref_tmp259, align 8, !dbg !1727, !tbaa !750
  %135 = load %struct._object*, %struct._object** %_py_decref_tmp259, align 8, !dbg !1728, !tbaa !750
  %ob_refcnt260 = getelementptr inbounds %struct._object, %struct._object* %135, i32 0, i32 0, !dbg !1730
  %136 = load i64, i64* %ob_refcnt260, align 8, !dbg !1731, !tbaa !825
  %dec261 = add i64 %136, -1, !dbg !1731
  store i64 %dec261, i64* %ob_refcnt260, align 8, !dbg !1731, !tbaa !825
  %cmp262 = icmp ne i64 %dec261, 0, !dbg !1732
  br i1 %cmp262, label %if.then.263, label %if.else.264, !dbg !1733

if.then.263:                                      ; preds = %do.body.258
  br label %if.end.267, !dbg !1734

if.else.264:                                      ; preds = %do.body.258
  %137 = load %struct._object*, %struct._object** %_py_decref_tmp259, align 8, !dbg !1736, !tbaa !750
  %ob_type265 = getelementptr inbounds %struct._object, %struct._object* %137, i32 0, i32 1, !dbg !1738
  %138 = load %struct._typeobject*, %struct._typeobject** %ob_type265, align 8, !dbg !1738, !tbaa !808
  %tp_dealloc266 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %138, i32 0, i32 4, !dbg !1739
  %139 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc266, align 8, !dbg !1739, !tbaa !834
  %140 = load %struct._object*, %struct._object** %_py_decref_tmp259, align 8, !dbg !1740, !tbaa !750
  call void %139(%struct._object* %140), !dbg !1741
  br label %if.end.267

if.end.267:                                       ; preds = %if.else.264, %if.then.263
  %141 = bitcast %struct._object** %_py_decref_tmp259 to i8*, !dbg !1742
  call void @llvm.lifetime.end(i64 8, i8* %141) #2, !dbg !1742
  br label %do.cond.268, !dbg !1744

do.cond.268:                                      ; preds = %if.end.267
  br label %do.end.269, !dbg !1745

do.end.269:                                       ; preds = %do.cond.268
  br label %fail, !dbg !1747

if.end.270:                                       ; preds = %if.end.253
  %call271 = call i32 @PyType_Ready(%struct._typeobject* @PyIncrementalNewlineDecoder_Type), !dbg !1749
  %cmp272 = icmp slt i32 %call271, 0, !dbg !1751
  br i1 %cmp272, label %if.then.273, label %if.end.274, !dbg !1752

if.then.273:                                      ; preds = %if.end.270
  br label %fail, !dbg !1753

if.end.274:                                       ; preds = %if.end.270
  %142 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyIncrementalNewlineDecoder_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1755, !tbaa !825
  %inc275 = add i64 %142, 1, !dbg !1755
  store i64 %inc275, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyIncrementalNewlineDecoder_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1755, !tbaa !825
  %143 = load %struct._object*, %struct._object** %m, align 8, !dbg !1756, !tbaa !750
  %call276 = call i32 @PyModule_AddObject(%struct._object* %143, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyIncrementalNewlineDecoder_Type, i32 0, i32 0, i32 0)), !dbg !1757
  %cmp277 = icmp slt i32 %call276, 0, !dbg !1758
  br i1 %cmp277, label %if.then.278, label %if.end.291, !dbg !1759

if.then.278:                                      ; preds = %if.end.274
  br label %do.body.279, !dbg !1760

do.body.279:                                      ; preds = %if.then.278
  %144 = bitcast %struct._object** %_py_decref_tmp280 to i8*, !dbg !1762
  call void @llvm.lifetime.start(i64 8, i8* %144) #2, !dbg !1762
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp280, metadata !467, metadata !754), !dbg !1764
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyIncrementalNewlineDecoder_Type, i32 0, i32 0, i32 0), %struct._object** %_py_decref_tmp280, align 8, !dbg !1764, !tbaa !750
  %145 = load %struct._object*, %struct._object** %_py_decref_tmp280, align 8, !dbg !1765, !tbaa !750
  %ob_refcnt281 = getelementptr inbounds %struct._object, %struct._object* %145, i32 0, i32 0, !dbg !1767
  %146 = load i64, i64* %ob_refcnt281, align 8, !dbg !1768, !tbaa !825
  %dec282 = add i64 %146, -1, !dbg !1768
  store i64 %dec282, i64* %ob_refcnt281, align 8, !dbg !1768, !tbaa !825
  %cmp283 = icmp ne i64 %dec282, 0, !dbg !1769
  br i1 %cmp283, label %if.then.284, label %if.else.285, !dbg !1770

if.then.284:                                      ; preds = %do.body.279
  br label %if.end.288, !dbg !1771

if.else.285:                                      ; preds = %do.body.279
  %147 = load %struct._object*, %struct._object** %_py_decref_tmp280, align 8, !dbg !1773, !tbaa !750
  %ob_type286 = getelementptr inbounds %struct._object, %struct._object* %147, i32 0, i32 1, !dbg !1775
  %148 = load %struct._typeobject*, %struct._typeobject** %ob_type286, align 8, !dbg !1775, !tbaa !808
  %tp_dealloc287 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %148, i32 0, i32 4, !dbg !1776
  %149 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc287, align 8, !dbg !1776, !tbaa !834
  %150 = load %struct._object*, %struct._object** %_py_decref_tmp280, align 8, !dbg !1777, !tbaa !750
  call void %149(%struct._object* %150), !dbg !1778
  br label %if.end.288

if.end.288:                                       ; preds = %if.else.285, %if.then.284
  %151 = bitcast %struct._object** %_py_decref_tmp280 to i8*, !dbg !1779
  call void @llvm.lifetime.end(i64 8, i8* %151) #2, !dbg !1779
  br label %do.cond.289, !dbg !1781

do.cond.289:                                      ; preds = %if.end.288
  br label %do.end.290, !dbg !1782

do.end.290:                                       ; preds = %do.cond.289
  br label %fail, !dbg !1784

if.end.291:                                       ; preds = %if.end.274
  %152 = load %struct._object*, %struct._object** @_PyIO_str_close, align 8, !dbg !1786, !tbaa !750
  %tobool = icmp ne %struct._object* %152, null, !dbg !1786
  br i1 %tobool, label %if.end.295, label %land.lhs.true, !dbg !1788

land.lhs.true:                                    ; preds = %if.end.291
  %call292 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0)), !dbg !1789
  store %struct._object* %call292, %struct._object** @_PyIO_str_close, align 8, !dbg !1791, !tbaa !750
  %tobool293 = icmp ne %struct._object* %call292, null, !dbg !1791
  br i1 %tobool293, label %if.end.295, label %if.then.294, !dbg !1792

if.then.294:                                      ; preds = %land.lhs.true
  br label %fail, !dbg !1793

if.end.295:                                       ; preds = %land.lhs.true, %if.end.291
  %153 = load %struct._object*, %struct._object** @_PyIO_str_closed, align 8, !dbg !1795, !tbaa !750
  %tobool296 = icmp ne %struct._object* %153, null, !dbg !1795
  br i1 %tobool296, label %if.end.301, label %land.lhs.true.297, !dbg !1797

land.lhs.true.297:                                ; preds = %if.end.295
  %call298 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0)), !dbg !1798
  store %struct._object* %call298, %struct._object** @_PyIO_str_closed, align 8, !dbg !1800, !tbaa !750
  %tobool299 = icmp ne %struct._object* %call298, null, !dbg !1800
  br i1 %tobool299, label %if.end.301, label %if.then.300, !dbg !1801

if.then.300:                                      ; preds = %land.lhs.true.297
  br label %fail, !dbg !1802

if.end.301:                                       ; preds = %land.lhs.true.297, %if.end.295
  %154 = load %struct._object*, %struct._object** @_PyIO_str_decode, align 8, !dbg !1804, !tbaa !750
  %tobool302 = icmp ne %struct._object* %154, null, !dbg !1804
  br i1 %tobool302, label %if.end.307, label %land.lhs.true.303, !dbg !1806

land.lhs.true.303:                                ; preds = %if.end.301
  %call304 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0)), !dbg !1807
  store %struct._object* %call304, %struct._object** @_PyIO_str_decode, align 8, !dbg !1809, !tbaa !750
  %tobool305 = icmp ne %struct._object* %call304, null, !dbg !1809
  br i1 %tobool305, label %if.end.307, label %if.then.306, !dbg !1810

if.then.306:                                      ; preds = %land.lhs.true.303
  br label %fail, !dbg !1811

if.end.307:                                       ; preds = %land.lhs.true.303, %if.end.301
  %155 = load %struct._object*, %struct._object** @_PyIO_str_encode, align 8, !dbg !1813, !tbaa !750
  %tobool308 = icmp ne %struct._object* %155, null, !dbg !1813
  br i1 %tobool308, label %if.end.313, label %land.lhs.true.309, !dbg !1815

land.lhs.true.309:                                ; preds = %if.end.307
  %call310 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0)), !dbg !1816
  store %struct._object* %call310, %struct._object** @_PyIO_str_encode, align 8, !dbg !1818, !tbaa !750
  %tobool311 = icmp ne %struct._object* %call310, null, !dbg !1818
  br i1 %tobool311, label %if.end.313, label %if.then.312, !dbg !1819

if.then.312:                                      ; preds = %land.lhs.true.309
  br label %fail, !dbg !1820

if.end.313:                                       ; preds = %land.lhs.true.309, %if.end.307
  %156 = load %struct._object*, %struct._object** @_PyIO_str_fileno, align 8, !dbg !1822, !tbaa !750
  %tobool314 = icmp ne %struct._object* %156, null, !dbg !1822
  br i1 %tobool314, label %if.end.319, label %land.lhs.true.315, !dbg !1824

land.lhs.true.315:                                ; preds = %if.end.313
  %call316 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)), !dbg !1825
  store %struct._object* %call316, %struct._object** @_PyIO_str_fileno, align 8, !dbg !1827, !tbaa !750
  %tobool317 = icmp ne %struct._object* %call316, null, !dbg !1827
  br i1 %tobool317, label %if.end.319, label %if.then.318, !dbg !1828

if.then.318:                                      ; preds = %land.lhs.true.315
  br label %fail, !dbg !1829

if.end.319:                                       ; preds = %land.lhs.true.315, %if.end.313
  %157 = load %struct._object*, %struct._object** @_PyIO_str_flush, align 8, !dbg !1831, !tbaa !750
  %tobool320 = icmp ne %struct._object* %157, null, !dbg !1831
  br i1 %tobool320, label %if.end.325, label %land.lhs.true.321, !dbg !1833

land.lhs.true.321:                                ; preds = %if.end.319
  %call322 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0)), !dbg !1834
  store %struct._object* %call322, %struct._object** @_PyIO_str_flush, align 8, !dbg !1836, !tbaa !750
  %tobool323 = icmp ne %struct._object* %call322, null, !dbg !1836
  br i1 %tobool323, label %if.end.325, label %if.then.324, !dbg !1837

if.then.324:                                      ; preds = %land.lhs.true.321
  br label %fail, !dbg !1838

if.end.325:                                       ; preds = %land.lhs.true.321, %if.end.319
  %158 = load %struct._object*, %struct._object** @_PyIO_str_getstate, align 8, !dbg !1840, !tbaa !750
  %tobool326 = icmp ne %struct._object* %158, null, !dbg !1840
  br i1 %tobool326, label %if.end.331, label %land.lhs.true.327, !dbg !1842

land.lhs.true.327:                                ; preds = %if.end.325
  %call328 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0)), !dbg !1843
  store %struct._object* %call328, %struct._object** @_PyIO_str_getstate, align 8, !dbg !1845, !tbaa !750
  %tobool329 = icmp ne %struct._object* %call328, null, !dbg !1845
  br i1 %tobool329, label %if.end.331, label %if.then.330, !dbg !1846

if.then.330:                                      ; preds = %land.lhs.true.327
  br label %fail, !dbg !1847

if.end.331:                                       ; preds = %land.lhs.true.327, %if.end.325
  %159 = load %struct._object*, %struct._object** @_PyIO_str_isatty, align 8, !dbg !1849, !tbaa !750
  %tobool332 = icmp ne %struct._object* %159, null, !dbg !1849
  br i1 %tobool332, label %if.end.337, label %land.lhs.true.333, !dbg !1851

land.lhs.true.333:                                ; preds = %if.end.331
  %call334 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0)), !dbg !1852
  store %struct._object* %call334, %struct._object** @_PyIO_str_isatty, align 8, !dbg !1854, !tbaa !750
  %tobool335 = icmp ne %struct._object* %call334, null, !dbg !1854
  br i1 %tobool335, label %if.end.337, label %if.then.336, !dbg !1855

if.then.336:                                      ; preds = %land.lhs.true.333
  br label %fail, !dbg !1856

if.end.337:                                       ; preds = %land.lhs.true.333, %if.end.331
  %160 = load %struct._object*, %struct._object** @_PyIO_str_newlines, align 8, !dbg !1858, !tbaa !750
  %tobool338 = icmp ne %struct._object* %160, null, !dbg !1858
  br i1 %tobool338, label %if.end.343, label %land.lhs.true.339, !dbg !1860

land.lhs.true.339:                                ; preds = %if.end.337
  %call340 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0)), !dbg !1861
  store %struct._object* %call340, %struct._object** @_PyIO_str_newlines, align 8, !dbg !1863, !tbaa !750
  %tobool341 = icmp ne %struct._object* %call340, null, !dbg !1863
  br i1 %tobool341, label %if.end.343, label %if.then.342, !dbg !1864

if.then.342:                                      ; preds = %land.lhs.true.339
  br label %fail, !dbg !1865

if.end.343:                                       ; preds = %land.lhs.true.339, %if.end.337
  %161 = load %struct._object*, %struct._object** @_PyIO_str_read, align 8, !dbg !1867, !tbaa !750
  %tobool344 = icmp ne %struct._object* %161, null, !dbg !1867
  br i1 %tobool344, label %if.end.349, label %land.lhs.true.345, !dbg !1869

land.lhs.true.345:                                ; preds = %if.end.343
  %call346 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0)), !dbg !1870
  store %struct._object* %call346, %struct._object** @_PyIO_str_read, align 8, !dbg !1872, !tbaa !750
  %tobool347 = icmp ne %struct._object* %call346, null, !dbg !1872
  br i1 %tobool347, label %if.end.349, label %if.then.348, !dbg !1873

if.then.348:                                      ; preds = %land.lhs.true.345
  br label %fail, !dbg !1874

if.end.349:                                       ; preds = %land.lhs.true.345, %if.end.343
  %162 = load %struct._object*, %struct._object** @_PyIO_str_read1, align 8, !dbg !1876, !tbaa !750
  %tobool350 = icmp ne %struct._object* %162, null, !dbg !1876
  br i1 %tobool350, label %if.end.355, label %land.lhs.true.351, !dbg !1878

land.lhs.true.351:                                ; preds = %if.end.349
  %call352 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0)), !dbg !1879
  store %struct._object* %call352, %struct._object** @_PyIO_str_read1, align 8, !dbg !1881, !tbaa !750
  %tobool353 = icmp ne %struct._object* %call352, null, !dbg !1881
  br i1 %tobool353, label %if.end.355, label %if.then.354, !dbg !1882

if.then.354:                                      ; preds = %land.lhs.true.351
  br label %fail, !dbg !1883

if.end.355:                                       ; preds = %land.lhs.true.351, %if.end.349
  %163 = load %struct._object*, %struct._object** @_PyIO_str_readable, align 8, !dbg !1885, !tbaa !750
  %tobool356 = icmp ne %struct._object* %163, null, !dbg !1885
  br i1 %tobool356, label %if.end.361, label %land.lhs.true.357, !dbg !1887

land.lhs.true.357:                                ; preds = %if.end.355
  %call358 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0)), !dbg !1888
  store %struct._object* %call358, %struct._object** @_PyIO_str_readable, align 8, !dbg !1890, !tbaa !750
  %tobool359 = icmp ne %struct._object* %call358, null, !dbg !1890
  br i1 %tobool359, label %if.end.361, label %if.then.360, !dbg !1891

if.then.360:                                      ; preds = %land.lhs.true.357
  br label %fail, !dbg !1892

if.end.361:                                       ; preds = %land.lhs.true.357, %if.end.355
  %164 = load %struct._object*, %struct._object** @_PyIO_str_readall, align 8, !dbg !1894, !tbaa !750
  %tobool362 = icmp ne %struct._object* %164, null, !dbg !1894
  br i1 %tobool362, label %if.end.367, label %land.lhs.true.363, !dbg !1896

land.lhs.true.363:                                ; preds = %if.end.361
  %call364 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0)), !dbg !1897
  store %struct._object* %call364, %struct._object** @_PyIO_str_readall, align 8, !dbg !1899, !tbaa !750
  %tobool365 = icmp ne %struct._object* %call364, null, !dbg !1899
  br i1 %tobool365, label %if.end.367, label %if.then.366, !dbg !1900

if.then.366:                                      ; preds = %land.lhs.true.363
  br label %fail, !dbg !1901

if.end.367:                                       ; preds = %land.lhs.true.363, %if.end.361
  %165 = load %struct._object*, %struct._object** @_PyIO_str_readinto, align 8, !dbg !1903, !tbaa !750
  %tobool368 = icmp ne %struct._object* %165, null, !dbg !1903
  br i1 %tobool368, label %if.end.373, label %land.lhs.true.369, !dbg !1905

land.lhs.true.369:                                ; preds = %if.end.367
  %call370 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0)), !dbg !1906
  store %struct._object* %call370, %struct._object** @_PyIO_str_readinto, align 8, !dbg !1908, !tbaa !750
  %tobool371 = icmp ne %struct._object* %call370, null, !dbg !1908
  br i1 %tobool371, label %if.end.373, label %if.then.372, !dbg !1909

if.then.372:                                      ; preds = %land.lhs.true.369
  br label %fail, !dbg !1910

if.end.373:                                       ; preds = %land.lhs.true.369, %if.end.367
  %166 = load %struct._object*, %struct._object** @_PyIO_str_readline, align 8, !dbg !1912, !tbaa !750
  %tobool374 = icmp ne %struct._object* %166, null, !dbg !1912
  br i1 %tobool374, label %if.end.379, label %land.lhs.true.375, !dbg !1914

land.lhs.true.375:                                ; preds = %if.end.373
  %call376 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0)), !dbg !1915
  store %struct._object* %call376, %struct._object** @_PyIO_str_readline, align 8, !dbg !1917, !tbaa !750
  %tobool377 = icmp ne %struct._object* %call376, null, !dbg !1917
  br i1 %tobool377, label %if.end.379, label %if.then.378, !dbg !1918

if.then.378:                                      ; preds = %land.lhs.true.375
  br label %fail, !dbg !1919

if.end.379:                                       ; preds = %land.lhs.true.375, %if.end.373
  %167 = load %struct._object*, %struct._object** @_PyIO_str_reset, align 8, !dbg !1921, !tbaa !750
  %tobool380 = icmp ne %struct._object* %167, null, !dbg !1921
  br i1 %tobool380, label %if.end.385, label %land.lhs.true.381, !dbg !1923

land.lhs.true.381:                                ; preds = %if.end.379
  %call382 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0)), !dbg !1924
  store %struct._object* %call382, %struct._object** @_PyIO_str_reset, align 8, !dbg !1926, !tbaa !750
  %tobool383 = icmp ne %struct._object* %call382, null, !dbg !1926
  br i1 %tobool383, label %if.end.385, label %if.then.384, !dbg !1927

if.then.384:                                      ; preds = %land.lhs.true.381
  br label %fail, !dbg !1928

if.end.385:                                       ; preds = %land.lhs.true.381, %if.end.379
  %168 = load %struct._object*, %struct._object** @_PyIO_str_seek, align 8, !dbg !1930, !tbaa !750
  %tobool386 = icmp ne %struct._object* %168, null, !dbg !1930
  br i1 %tobool386, label %if.end.391, label %land.lhs.true.387, !dbg !1932

land.lhs.true.387:                                ; preds = %if.end.385
  %call388 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0)), !dbg !1933
  store %struct._object* %call388, %struct._object** @_PyIO_str_seek, align 8, !dbg !1935, !tbaa !750
  %tobool389 = icmp ne %struct._object* %call388, null, !dbg !1935
  br i1 %tobool389, label %if.end.391, label %if.then.390, !dbg !1936

if.then.390:                                      ; preds = %land.lhs.true.387
  br label %fail, !dbg !1937

if.end.391:                                       ; preds = %land.lhs.true.387, %if.end.385
  %169 = load %struct._object*, %struct._object** @_PyIO_str_seekable, align 8, !dbg !1939, !tbaa !750
  %tobool392 = icmp ne %struct._object* %169, null, !dbg !1939
  br i1 %tobool392, label %if.end.397, label %land.lhs.true.393, !dbg !1941

land.lhs.true.393:                                ; preds = %if.end.391
  %call394 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0)), !dbg !1942
  store %struct._object* %call394, %struct._object** @_PyIO_str_seekable, align 8, !dbg !1944, !tbaa !750
  %tobool395 = icmp ne %struct._object* %call394, null, !dbg !1944
  br i1 %tobool395, label %if.end.397, label %if.then.396, !dbg !1945

if.then.396:                                      ; preds = %land.lhs.true.393
  br label %fail, !dbg !1946

if.end.397:                                       ; preds = %land.lhs.true.393, %if.end.391
  %170 = load %struct._object*, %struct._object** @_PyIO_str_setstate, align 8, !dbg !1948, !tbaa !750
  %tobool398 = icmp ne %struct._object* %170, null, !dbg !1948
  br i1 %tobool398, label %if.end.403, label %land.lhs.true.399, !dbg !1950

land.lhs.true.399:                                ; preds = %if.end.397
  %call400 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0)), !dbg !1951
  store %struct._object* %call400, %struct._object** @_PyIO_str_setstate, align 8, !dbg !1953, !tbaa !750
  %tobool401 = icmp ne %struct._object* %call400, null, !dbg !1953
  br i1 %tobool401, label %if.end.403, label %if.then.402, !dbg !1954

if.then.402:                                      ; preds = %land.lhs.true.399
  br label %fail, !dbg !1955

if.end.403:                                       ; preds = %land.lhs.true.399, %if.end.397
  %171 = load %struct._object*, %struct._object** @_PyIO_str_tell, align 8, !dbg !1957, !tbaa !750
  %tobool404 = icmp ne %struct._object* %171, null, !dbg !1957
  br i1 %tobool404, label %if.end.409, label %land.lhs.true.405, !dbg !1959

land.lhs.true.405:                                ; preds = %if.end.403
  %call406 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0)), !dbg !1960
  store %struct._object* %call406, %struct._object** @_PyIO_str_tell, align 8, !dbg !1962, !tbaa !750
  %tobool407 = icmp ne %struct._object* %call406, null, !dbg !1962
  br i1 %tobool407, label %if.end.409, label %if.then.408, !dbg !1963

if.then.408:                                      ; preds = %land.lhs.true.405
  br label %fail, !dbg !1964

if.end.409:                                       ; preds = %land.lhs.true.405, %if.end.403
  %172 = load %struct._object*, %struct._object** @_PyIO_str_truncate, align 8, !dbg !1966, !tbaa !750
  %tobool410 = icmp ne %struct._object* %172, null, !dbg !1966
  br i1 %tobool410, label %if.end.415, label %land.lhs.true.411, !dbg !1968

land.lhs.true.411:                                ; preds = %if.end.409
  %call412 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0)), !dbg !1969
  store %struct._object* %call412, %struct._object** @_PyIO_str_truncate, align 8, !dbg !1971, !tbaa !750
  %tobool413 = icmp ne %struct._object* %call412, null, !dbg !1971
  br i1 %tobool413, label %if.end.415, label %if.then.414, !dbg !1972

if.then.414:                                      ; preds = %land.lhs.true.411
  br label %fail, !dbg !1973

if.end.415:                                       ; preds = %land.lhs.true.411, %if.end.409
  %173 = load %struct._object*, %struct._object** @_PyIO_str_write, align 8, !dbg !1975, !tbaa !750
  %tobool416 = icmp ne %struct._object* %173, null, !dbg !1975
  br i1 %tobool416, label %if.end.421, label %land.lhs.true.417, !dbg !1977

land.lhs.true.417:                                ; preds = %if.end.415
  %call418 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0)), !dbg !1978
  store %struct._object* %call418, %struct._object** @_PyIO_str_write, align 8, !dbg !1980, !tbaa !750
  %tobool419 = icmp ne %struct._object* %call418, null, !dbg !1980
  br i1 %tobool419, label %if.end.421, label %if.then.420, !dbg !1981

if.then.420:                                      ; preds = %land.lhs.true.417
  br label %fail, !dbg !1982

if.end.421:                                       ; preds = %land.lhs.true.417, %if.end.415
  %174 = load %struct._object*, %struct._object** @_PyIO_str_writable, align 8, !dbg !1984, !tbaa !750
  %tobool422 = icmp ne %struct._object* %174, null, !dbg !1984
  br i1 %tobool422, label %if.end.427, label %land.lhs.true.423, !dbg !1986

land.lhs.true.423:                                ; preds = %if.end.421
  %call424 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0)), !dbg !1987
  store %struct._object* %call424, %struct._object** @_PyIO_str_writable, align 8, !dbg !1989, !tbaa !750
  %tobool425 = icmp ne %struct._object* %call424, null, !dbg !1989
  br i1 %tobool425, label %if.end.427, label %if.then.426, !dbg !1990

if.then.426:                                      ; preds = %land.lhs.true.423
  br label %fail, !dbg !1991

if.end.427:                                       ; preds = %land.lhs.true.423, %if.end.421
  %175 = load %struct._object*, %struct._object** @_PyIO_str_nl, align 8, !dbg !1993, !tbaa !750
  %tobool428 = icmp ne %struct._object* %175, null, !dbg !1993
  br i1 %tobool428, label %if.end.433, label %land.lhs.true.429, !dbg !1995

land.lhs.true.429:                                ; preds = %if.end.427
  %call430 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i32 0, i32 0)), !dbg !1996
  store %struct._object* %call430, %struct._object** @_PyIO_str_nl, align 8, !dbg !1997, !tbaa !750
  %tobool431 = icmp ne %struct._object* %call430, null, !dbg !1997
  br i1 %tobool431, label %if.end.433, label %if.then.432, !dbg !1998

if.then.432:                                      ; preds = %land.lhs.true.429
  br label %fail, !dbg !1999

if.end.433:                                       ; preds = %land.lhs.true.429, %if.end.427
  %176 = load %struct._object*, %struct._object** @_PyIO_empty_str, align 8, !dbg !2000, !tbaa !750
  %tobool434 = icmp ne %struct._object* %176, null, !dbg !2000
  br i1 %tobool434, label %if.end.439, label %land.lhs.true.435, !dbg !2002

land.lhs.true.435:                                ; preds = %if.end.433
  %call436 = call %struct._object* @PyUnicode_FromStringAndSize(i8* null, i64 0), !dbg !2003
  store %struct._object* %call436, %struct._object** @_PyIO_empty_str, align 8, !dbg !2004, !tbaa !750
  %tobool437 = icmp ne %struct._object* %call436, null, !dbg !2004
  br i1 %tobool437, label %if.end.439, label %if.then.438, !dbg !2005

if.then.438:                                      ; preds = %land.lhs.true.435
  br label %fail, !dbg !2006

if.end.439:                                       ; preds = %land.lhs.true.435, %if.end.433
  %177 = load %struct._object*, %struct._object** @_PyIO_empty_bytes, align 8, !dbg !2007, !tbaa !750
  %tobool440 = icmp ne %struct._object* %177, null, !dbg !2007
  br i1 %tobool440, label %if.end.445, label %land.lhs.true.441, !dbg !2009

land.lhs.true.441:                                ; preds = %if.end.439
  %call442 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 0), !dbg !2010
  store %struct._object* %call442, %struct._object** @_PyIO_empty_bytes, align 8, !dbg !2011, !tbaa !750
  %tobool443 = icmp ne %struct._object* %call442, null, !dbg !2011
  br i1 %tobool443, label %if.end.445, label %if.then.444, !dbg !2012

if.then.444:                                      ; preds = %land.lhs.true.441
  br label %fail, !dbg !2013

if.end.445:                                       ; preds = %land.lhs.true.441, %if.end.439
  %178 = load %struct._object*, %struct._object** @_PyIO_zero, align 8, !dbg !2014, !tbaa !750
  %tobool446 = icmp ne %struct._object* %178, null, !dbg !2014
  br i1 %tobool446, label %if.end.451, label %land.lhs.true.447, !dbg !2016

land.lhs.true.447:                                ; preds = %if.end.445
  %call448 = call %struct._object* @PyLong_FromLong(i64 0), !dbg !2017
  store %struct._object* %call448, %struct._object** @_PyIO_zero, align 8, !dbg !2018, !tbaa !750
  %tobool449 = icmp ne %struct._object* %call448, null, !dbg !2018
  br i1 %tobool449, label %if.end.451, label %if.then.450, !dbg !2019

if.then.450:                                      ; preds = %land.lhs.true.447
  br label %fail, !dbg !2020

if.end.451:                                       ; preds = %land.lhs.true.447, %if.end.445
  %179 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8, !dbg !2021, !tbaa !750
  %initialized452 = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %179, i32 0, i32 0, !dbg !2022
  store i32 1, i32* %initialized452, align 4, !dbg !2023, !tbaa !1048
  %180 = load %struct._object*, %struct._object** %m, align 8, !dbg !2024, !tbaa !750
  store %struct._object* %180, %struct._object** %retval, !dbg !2025
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2025

fail:                                             ; preds = %if.then.450, %if.then.444, %if.then.438, %if.then.432, %if.then.426, %if.then.420, %if.then.414, %if.then.408, %if.then.402, %if.then.396, %if.then.390, %if.then.384, %if.then.378, %if.then.372, %if.then.366, %if.then.360, %if.then.354, %if.then.348, %if.then.342, %if.then.336, %if.then.330, %if.then.324, %if.then.318, %if.then.312, %if.then.306, %if.then.300, %if.then.294, %do.end.290, %if.then.273, %do.end.269, %if.then.252, %do.end.248, %if.then.231, %do.end.227, %if.then.210, %do.end.206, %if.then.189, %do.end.185, %if.then.168, %do.end.164, %if.then.147, %if.then.143, %do.end.139, %if.then.122, %do.end.118, %if.then.101, %do.end.97, %if.then.80, %do.end.76, %if.then.59, %do.end.55, %if.then.38, %do.end, %if.then.25, %if.then.21, %if.then.15, %if.then.9, %if.then.4
  br label %do.body.453, !dbg !2026

do.body.453:                                      ; preds = %fail
  %181 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2027
  call void @llvm.lifetime.start(i64 8, i8* %181) #2, !dbg !2027
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !471, metadata !754), !dbg !2029
  %182 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8, !dbg !2030, !tbaa !750
  %unsupported_operation454 = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %182, i32 0, i32 2, !dbg !2031
  %183 = load %struct._object*, %struct._object** %unsupported_operation454, align 8, !dbg !2031, !tbaa !1091
  store %struct._object* %183, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2029, !tbaa !750
  %184 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2032, !tbaa !750
  %cmp455 = icmp ne %struct._object* %184, null, !dbg !2033
  br i1 %cmp455, label %if.then.456, label %if.end.469, !dbg !2034

if.then.456:                                      ; preds = %do.body.453
  br label %do.body.457, !dbg !2035

do.body.457:                                      ; preds = %if.then.456
  %185 = bitcast %struct._object** %_py_decref_tmp458 to i8*, !dbg !2037
  call void @llvm.lifetime.start(i64 8, i8* %185) #2, !dbg !2037
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp458, metadata !473, metadata !754), !dbg !2039
  %186 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2040, !tbaa !750
  store %struct._object* %186, %struct._object** %_py_decref_tmp458, align 8, !dbg !2039, !tbaa !750
  %187 = load %struct._object*, %struct._object** %_py_decref_tmp458, align 8, !dbg !2041, !tbaa !750
  %ob_refcnt459 = getelementptr inbounds %struct._object, %struct._object* %187, i32 0, i32 0, !dbg !2043
  %188 = load i64, i64* %ob_refcnt459, align 8, !dbg !2044, !tbaa !825
  %dec460 = add i64 %188, -1, !dbg !2044
  store i64 %dec460, i64* %ob_refcnt459, align 8, !dbg !2044, !tbaa !825
  %cmp461 = icmp ne i64 %dec460, 0, !dbg !2045
  br i1 %cmp461, label %if.then.462, label %if.else.463, !dbg !2046

if.then.462:                                      ; preds = %do.body.457
  br label %if.end.466, !dbg !2047

if.else.463:                                      ; preds = %do.body.457
  %189 = load %struct._object*, %struct._object** %_py_decref_tmp458, align 8, !dbg !2049, !tbaa !750
  %ob_type464 = getelementptr inbounds %struct._object, %struct._object* %189, i32 0, i32 1, !dbg !2051
  %190 = load %struct._typeobject*, %struct._typeobject** %ob_type464, align 8, !dbg !2051, !tbaa !808
  %tp_dealloc465 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %190, i32 0, i32 4, !dbg !2052
  %191 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc465, align 8, !dbg !2052, !tbaa !834
  %192 = load %struct._object*, %struct._object** %_py_decref_tmp458, align 8, !dbg !2053, !tbaa !750
  call void %191(%struct._object* %192), !dbg !2054
  br label %if.end.466

if.end.466:                                       ; preds = %if.else.463, %if.then.462
  %193 = bitcast %struct._object** %_py_decref_tmp458 to i8*, !dbg !2055
  call void @llvm.lifetime.end(i64 8, i8* %193) #2, !dbg !2055
  br label %do.cond.467, !dbg !2057

do.cond.467:                                      ; preds = %if.end.466
  br label %do.end.468, !dbg !2058

do.end.468:                                       ; preds = %do.cond.467
  br label %if.end.469, !dbg !2060

if.end.469:                                       ; preds = %do.end.468, %do.body.453
  %194 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2062
  call void @llvm.lifetime.end(i64 8, i8* %194) #2, !dbg !2062
  br label %do.cond.470, !dbg !2065

do.cond.470:                                      ; preds = %if.end.469
  br label %do.end.471, !dbg !2066

do.end.471:                                       ; preds = %do.cond.470
  br label %do.body.472, !dbg !2068

do.body.472:                                      ; preds = %do.end.471
  %195 = bitcast %struct._object** %_py_decref_tmp473 to i8*, !dbg !2069
  call void @llvm.lifetime.start(i64 8, i8* %195) #2, !dbg !2069
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp473, metadata !476, metadata !754), !dbg !2071
  %196 = load %struct._object*, %struct._object** %m, align 8, !dbg !2072, !tbaa !750
  store %struct._object* %196, %struct._object** %_py_decref_tmp473, align 8, !dbg !2071, !tbaa !750
  %197 = load %struct._object*, %struct._object** %_py_decref_tmp473, align 8, !dbg !2073, !tbaa !750
  %ob_refcnt474 = getelementptr inbounds %struct._object, %struct._object* %197, i32 0, i32 0, !dbg !2075
  %198 = load i64, i64* %ob_refcnt474, align 8, !dbg !2076, !tbaa !825
  %dec475 = add i64 %198, -1, !dbg !2076
  store i64 %dec475, i64* %ob_refcnt474, align 8, !dbg !2076, !tbaa !825
  %cmp476 = icmp ne i64 %dec475, 0, !dbg !2077
  br i1 %cmp476, label %if.then.477, label %if.else.478, !dbg !2078

if.then.477:                                      ; preds = %do.body.472
  br label %if.end.481, !dbg !2079

if.else.478:                                      ; preds = %do.body.472
  %199 = load %struct._object*, %struct._object** %_py_decref_tmp473, align 8, !dbg !2081, !tbaa !750
  %ob_type479 = getelementptr inbounds %struct._object, %struct._object* %199, i32 0, i32 1, !dbg !2083
  %200 = load %struct._typeobject*, %struct._typeobject** %ob_type479, align 8, !dbg !2083, !tbaa !808
  %tp_dealloc480 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %200, i32 0, i32 4, !dbg !2084
  %201 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc480, align 8, !dbg !2084, !tbaa !834
  %202 = load %struct._object*, %struct._object** %_py_decref_tmp473, align 8, !dbg !2085, !tbaa !750
  call void %201(%struct._object* %202), !dbg !2086
  br label %if.end.481

if.end.481:                                       ; preds = %if.else.478, %if.then.477
  %203 = bitcast %struct._object** %_py_decref_tmp473 to i8*, !dbg !2087
  call void @llvm.lifetime.end(i64 8, i8* %203) #2, !dbg !2087
  br label %do.cond.482, !dbg !2089

do.cond.482:                                      ; preds = %if.end.481
  br label %do.end.483, !dbg !2090

do.end.483:                                       ; preds = %do.cond.482
  store %struct._object* null, %struct._object** %retval, !dbg !2092
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2092

cleanup:                                          ; preds = %do.end.483, %if.end.451, %if.then
  %204 = bitcast %struct._PyIO_State** %state to i8*, !dbg !2093
  call void @llvm.lifetime.end(i64 8, i8* %204) #2, !dbg !2093
  %205 = bitcast %struct._object** %m to i8*, !dbg !2093
  call void @llvm.lifetime.end(i64 8, i8* %205) #2, !dbg !2093
  %206 = load %struct._object*, %struct._object** %retval, !dbg !2093
  ret %struct._object* %206, !dbg !2093
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
  %cleanup.dest.slot = alloca i32
  %c = alloca i8, align 1
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %st = alloca %struct.stat, align 8
  %fileno = alloca i64, align 8
  %res146 = alloca %struct._object*, align 8
  %_py_decref_tmp154 = alloca %struct._object*, align 8
  %_py_decref_tmp201 = alloca %struct._object*, align 8
  %Buffered_class = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp240 = alloca %struct._object*, align 8
  %_py_decref_tmp262 = alloca %struct._object*, align 8
  %_py_tmp277 = alloca %struct._object*, align 8
  %_py_decref_tmp282 = alloca %struct._object*, align 8
  %_py_decref_tmp307 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp324 = alloca %struct._object*, align 8
  %_py_xdecref_tmp340 = alloca %struct._object*, align 8
  %_py_decref_tmp345 = alloca %struct._object*, align 8
  %_py_xdecref_tmp361 = alloca %struct._object*, align 8
  %_py_decref_tmp366 = alloca %struct._object*, align 8
  %_py_xdecref_tmp382 = alloca %struct._object*, align 8
  %_py_decref_tmp387 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !750
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !480, metadata !754), !dbg !2094
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !750
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !481, metadata !754), !dbg !2095
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !750
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !482, metadata !754), !dbg !2096
  %0 = bitcast [9 x i8*]* %kwlist to i8*, !dbg !2097
  call void @llvm.lifetime.start(i64 72, i8* %0) #2, !dbg !2097
  call void @llvm.dbg.declare(metadata [9 x i8*]* %kwlist, metadata !483, metadata !754), !dbg !2098
  %1 = bitcast [9 x i8*]* %kwlist to i8*, !dbg !2098
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast ([9 x i8*]* @io_open.kwlist to i8*), i64 72, i32 16, i1 false), !dbg !2098
  %2 = bitcast %struct._object** %file to i8*, !dbg !2099
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2099
  call void @llvm.dbg.declare(metadata %struct._object** %file, metadata !487, metadata !754), !dbg !2100
  %3 = bitcast %struct._object** %opener to i8*, !dbg !2099
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2099
  call void @llvm.dbg.declare(metadata %struct._object** %opener, metadata !488, metadata !754), !dbg !2101
  store %struct._object* @_Py_NoneStruct, %struct._object** %opener, align 8, !dbg !2101, !tbaa !750
  %4 = bitcast i8** %mode to i8*, !dbg !2102
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !2102
  call void @llvm.dbg.declare(metadata i8** %mode, metadata !489, metadata !754), !dbg !2103
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i32 0, i32 0), i8** %mode, align 8, !dbg !2103, !tbaa !750
  %5 = bitcast i32* %buffering to i8*, !dbg !2104
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !2104
  call void @llvm.dbg.declare(metadata i32* %buffering, metadata !490, metadata !754), !dbg !2105
  store i32 -1, i32* %buffering, align 4, !dbg !2105, !tbaa !1068
  %6 = bitcast i32* %closefd to i8*, !dbg !2104
  call void @llvm.lifetime.start(i64 4, i8* %6) #2, !dbg !2104
  call void @llvm.dbg.declare(metadata i32* %closefd, metadata !491, metadata !754), !dbg !2106
  store i32 1, i32* %closefd, align 4, !dbg !2106, !tbaa !1068
  %7 = bitcast i8** %encoding to i8*, !dbg !2107
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !2107
  call void @llvm.dbg.declare(metadata i8** %encoding, metadata !492, metadata !754), !dbg !2108
  store i8* null, i8** %encoding, align 8, !dbg !2108, !tbaa !750
  %8 = bitcast i8** %errors to i8*, !dbg !2107
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !2107
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !493, metadata !754), !dbg !2109
  store i8* null, i8** %errors, align 8, !dbg !2109, !tbaa !750
  %9 = bitcast i8** %newline to i8*, !dbg !2107
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !2107
  call void @llvm.dbg.declare(metadata i8** %newline, metadata !494, metadata !754), !dbg !2110
  store i8* null, i8** %newline, align 8, !dbg !2110, !tbaa !750
  %10 = bitcast i32* %i to i8*, !dbg !2111
  call void @llvm.lifetime.start(i64 4, i8* %10) #2, !dbg !2111
  call void @llvm.dbg.declare(metadata i32* %i, metadata !495, metadata !754), !dbg !2112
  %11 = bitcast i32* %creating to i8*, !dbg !2113
  call void @llvm.lifetime.start(i64 4, i8* %11) #2, !dbg !2113
  call void @llvm.dbg.declare(metadata i32* %creating, metadata !496, metadata !754), !dbg !2114
  store i32 0, i32* %creating, align 4, !dbg !2114, !tbaa !1068
  %12 = bitcast i32* %reading to i8*, !dbg !2113
  call void @llvm.lifetime.start(i64 4, i8* %12) #2, !dbg !2113
  call void @llvm.dbg.declare(metadata i32* %reading, metadata !497, metadata !754), !dbg !2115
  store i32 0, i32* %reading, align 4, !dbg !2115, !tbaa !1068
  %13 = bitcast i32* %writing to i8*, !dbg !2113
  call void @llvm.lifetime.start(i64 4, i8* %13) #2, !dbg !2113
  call void @llvm.dbg.declare(metadata i32* %writing, metadata !498, metadata !754), !dbg !2116
  store i32 0, i32* %writing, align 4, !dbg !2116, !tbaa !1068
  %14 = bitcast i32* %appending to i8*, !dbg !2113
  call void @llvm.lifetime.start(i64 4, i8* %14) #2, !dbg !2113
  call void @llvm.dbg.declare(metadata i32* %appending, metadata !499, metadata !754), !dbg !2117
  store i32 0, i32* %appending, align 4, !dbg !2117, !tbaa !1068
  %15 = bitcast i32* %updating to i8*, !dbg !2113
  call void @llvm.lifetime.start(i64 4, i8* %15) #2, !dbg !2113
  call void @llvm.dbg.declare(metadata i32* %updating, metadata !500, metadata !754), !dbg !2118
  store i32 0, i32* %updating, align 4, !dbg !2118, !tbaa !1068
  %16 = bitcast i32* %text to i8*, !dbg !2119
  call void @llvm.lifetime.start(i64 4, i8* %16) #2, !dbg !2119
  call void @llvm.dbg.declare(metadata i32* %text, metadata !501, metadata !754), !dbg !2120
  store i32 0, i32* %text, align 4, !dbg !2120, !tbaa !1068
  %17 = bitcast i32* %binary to i8*, !dbg !2119
  call void @llvm.lifetime.start(i64 4, i8* %17) #2, !dbg !2119
  call void @llvm.dbg.declare(metadata i32* %binary, metadata !502, metadata !754), !dbg !2121
  store i32 0, i32* %binary, align 4, !dbg !2121, !tbaa !1068
  %18 = bitcast i32* %universal to i8*, !dbg !2119
  call void @llvm.lifetime.start(i64 4, i8* %18) #2, !dbg !2119
  call void @llvm.dbg.declare(metadata i32* %universal, metadata !503, metadata !754), !dbg !2122
  store i32 0, i32* %universal, align 4, !dbg !2122, !tbaa !1068
  %19 = bitcast [6 x i8]* %rawmode to i8*, !dbg !2123
  call void @llvm.lifetime.start(i64 6, i8* %19) #2, !dbg !2123
  call void @llvm.dbg.declare(metadata [6 x i8]* %rawmode, metadata !504, metadata !754), !dbg !2124
  %20 = bitcast i8** %m to i8*, !dbg !2123
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !2123
  call void @llvm.dbg.declare(metadata i8** %m, metadata !508, metadata !754), !dbg !2125
  %21 = bitcast i32* %line_buffering to i8*, !dbg !2126
  call void @llvm.lifetime.start(i64 4, i8* %21) #2, !dbg !2126
  call void @llvm.dbg.declare(metadata i32* %line_buffering, metadata !509, metadata !754), !dbg !2127
  %22 = bitcast i32* %isatty to i8*, !dbg !2126
  call void @llvm.lifetime.start(i64 4, i8* %22) #2, !dbg !2126
  call void @llvm.dbg.declare(metadata i32* %isatty, metadata !510, metadata !754), !dbg !2128
  %23 = bitcast %struct._object** %raw to i8*, !dbg !2129
  call void @llvm.lifetime.start(i64 8, i8* %23) #2, !dbg !2129
  call void @llvm.dbg.declare(metadata %struct._object** %raw, metadata !511, metadata !754), !dbg !2130
  %24 = bitcast %struct._object** %modeobj to i8*, !dbg !2129
  call void @llvm.lifetime.start(i64 8, i8* %24) #2, !dbg !2129
  call void @llvm.dbg.declare(metadata %struct._object** %modeobj, metadata !512, metadata !754), !dbg !2131
  store %struct._object* null, %struct._object** %modeobj, align 8, !dbg !2131, !tbaa !750
  %25 = bitcast %struct._object** %buffer to i8*, !dbg !2129
  call void @llvm.lifetime.start(i64 8, i8* %25) #2, !dbg !2129
  call void @llvm.dbg.declare(metadata %struct._object** %buffer, metadata !513, metadata !754), !dbg !2132
  store %struct._object* null, %struct._object** %buffer, align 8, !dbg !2132, !tbaa !750
  %26 = bitcast %struct._object** %wrapper to i8*, !dbg !2129
  call void @llvm.lifetime.start(i64 8, i8* %26) #2, !dbg !2129
  call void @llvm.dbg.declare(metadata %struct._object** %wrapper, metadata !514, metadata !754), !dbg !2133
  store %struct._object* null, %struct._object** %wrapper, align 8, !dbg !2133, !tbaa !750
  %27 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2134, !tbaa !750
  %28 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !2136, !tbaa !750
  %arraydecay = getelementptr inbounds [9 x i8*], [9 x i8*]* %kwlist, i32 0, i32 0, !dbg !2137
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %27, %struct._object* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0), i8** %arraydecay, %struct._object** %file, i8** %mode, i32* %buffering, i8** %encoding, i8** %errors, i8** %newline, i32* %closefd, %struct._object** %opener), !dbg !2138
  %tobool = icmp ne i32 %call, 0, !dbg !2138
  br i1 %tobool, label %if.end, label %if.then, !dbg !2139

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2140
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.402, !dbg !2140

if.end:                                           ; preds = %entry
  %29 = load %struct._object*, %struct._object** %file, align 8, !dbg !2142, !tbaa !750
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1, !dbg !2144
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2144, !tbaa !808
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 19, !dbg !2145
  %31 = load i64, i64* %tp_flags, align 8, !dbg !2145, !tbaa !2146
  %and = and i64 %31, 268435456, !dbg !2147
  %cmp = icmp ne i64 %and, 0, !dbg !2148
  br i1 %cmp, label %if.end.10, label %land.lhs.true, !dbg !2149

land.lhs.true:                                    ; preds = %if.end
  %32 = load %struct._object*, %struct._object** %file, align 8, !dbg !2150, !tbaa !750
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1, !dbg !2151
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !2151, !tbaa !808
  %tp_flags2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 19, !dbg !2152
  %34 = load i64, i64* %tp_flags2, align 8, !dbg !2152, !tbaa !2146
  %and3 = and i64 %34, 134217728, !dbg !2153
  %cmp4 = icmp ne i64 %and3, 0, !dbg !2154
  br i1 %cmp4, label %if.end.10, label %land.lhs.true.5, !dbg !2155

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %35 = load %struct._object*, %struct._object** %file, align 8, !dbg !2156, !tbaa !750
  %call6 = call i32 @PyNumber_Check(%struct._object* %35), !dbg !2157
  %tobool7 = icmp ne i32 %call6, 0, !dbg !2157
  br i1 %tobool7, label %if.end.10, label %if.then.8, !dbg !2158

if.then.8:                                        ; preds = %land.lhs.true.5
  %36 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2159, !tbaa !750
  %37 = load %struct._object*, %struct._object** %file, align 8, !dbg !2161, !tbaa !750
  %call9 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i32 0, i32 0), %struct._object* %37), !dbg !2162
  store %struct._object* null, %struct._object** %retval, !dbg !2163
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.402, !dbg !2163

if.end.10:                                        ; preds = %land.lhs.true.5, %land.lhs.true, %if.end
  store i32 0, i32* %i, align 4, !dbg !2164, !tbaa !1068
  br label %for.cond, !dbg !2165

for.cond:                                         ; preds = %for.inc, %if.end.10
  %38 = load i32, i32* %i, align 4, !dbg !2166, !tbaa !1068
  %conv = zext i32 %38 to i64, !dbg !2166
  %39 = load i8*, i8** %mode, align 8, !dbg !2169, !tbaa !750
  %call11 = call i64 @strlen(i8* %39) #7, !dbg !2170
  %cmp12 = icmp ult i64 %conv, %call11, !dbg !2171
  br i1 %cmp12, label %for.body, label %for.end, !dbg !2172

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start(i64 1, i8* %c) #2, !dbg !2173
  call void @llvm.dbg.declare(metadata i8* %c, metadata !515, metadata !754), !dbg !2174
  %40 = load i32, i32* %i, align 4, !dbg !2175, !tbaa !1068
  %idxprom = zext i32 %40 to i64, !dbg !2176
  %41 = load i8*, i8** %mode, align 8, !dbg !2176, !tbaa !750
  %arrayidx = getelementptr i8, i8* %41, i64 %idxprom, !dbg !2176
  %42 = load i8, i8* %arrayidx, align 1, !dbg !2176, !tbaa !2177
  store i8 %42, i8* %c, align 1, !dbg !2174, !tbaa !2177
  %43 = load i8, i8* %c, align 1, !dbg !2178, !tbaa !2177
  %conv14 = sext i8 %43 to i32, !dbg !2178
  br label %NodeBlock.21

NodeBlock.21:                                     ; preds = %for.body
  %Pivot.22 = icmp slt i32 %conv14, 114
  br i1 %Pivot.22, label %NodeBlock.7, label %NodeBlock.19

NodeBlock.19:                                     ; preds = %NodeBlock.21
  %Pivot.20 = icmp slt i32 %conv14, 119
  br i1 %Pivot.20, label %NodeBlock.13, label %NodeBlock.17

NodeBlock.17:                                     ; preds = %NodeBlock.19
  %Pivot.18 = icmp slt i32 %conv14, 120
  br i1 %Pivot.18, label %sw.bb.16, label %LeafBlock.15

LeafBlock.15:                                     ; preds = %NodeBlock.17
  %SwitchLeaf16 = icmp eq i32 %conv14, 120
  br i1 %SwitchLeaf16, label %sw.bb, label %NewDefault

NodeBlock.13:                                     ; preds = %NodeBlock.19
  %Pivot.14 = icmp slt i32 %conv14, 116
  br i1 %Pivot.14, label %LeafBlock.9, label %LeafBlock.11

LeafBlock.11:                                     ; preds = %NodeBlock.13
  %SwitchLeaf12 = icmp eq i32 %conv14, 116
  br i1 %SwitchLeaf12, label %sw.bb.19, label %NewDefault

LeafBlock.9:                                      ; preds = %NodeBlock.13
  %SwitchLeaf10 = icmp eq i32 %conv14, 114
  br i1 %SwitchLeaf10, label %sw.bb.15, label %NewDefault

NodeBlock.7:                                      ; preds = %NodeBlock.21
  %Pivot.8 = icmp slt i32 %conv14, 97
  br i1 %Pivot.8, label %NodeBlock, label %NodeBlock.5

NodeBlock.5:                                      ; preds = %NodeBlock.7
  %Pivot.6 = icmp slt i32 %conv14, 98
  br i1 %Pivot.6, label %sw.bb.17, label %LeafBlock.3

LeafBlock.3:                                      ; preds = %NodeBlock.5
  %SwitchLeaf4 = icmp eq i32 %conv14, 98
  br i1 %SwitchLeaf4, label %sw.bb.20, label %NewDefault

NodeBlock:                                        ; preds = %NodeBlock.7
  %Pivot = icmp slt i32 %conv14, 85
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %conv14, 85
  br i1 %SwitchLeaf2, label %sw.bb.21, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %conv14, 43
  br i1 %SwitchLeaf, label %sw.bb.18, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock.15
  store i32 1, i32* %creating, align 4, !dbg !2179, !tbaa !1068
  br label %sw.epilog, !dbg !2181

sw.bb.15:                                         ; preds = %LeafBlock.9
  store i32 1, i32* %reading, align 4, !dbg !2182, !tbaa !1068
  br label %sw.epilog, !dbg !2183

sw.bb.16:                                         ; preds = %NodeBlock.17
  store i32 1, i32* %writing, align 4, !dbg !2184, !tbaa !1068
  br label %sw.epilog, !dbg !2185

sw.bb.17:                                         ; preds = %NodeBlock.5
  store i32 1, i32* %appending, align 4, !dbg !2186, !tbaa !1068
  br label %sw.epilog, !dbg !2187

sw.bb.18:                                         ; preds = %LeafBlock
  store i32 1, i32* %updating, align 4, !dbg !2188, !tbaa !1068
  br label %sw.epilog, !dbg !2189

sw.bb.19:                                         ; preds = %LeafBlock.11
  store i32 1, i32* %text, align 4, !dbg !2190, !tbaa !1068
  br label %sw.epilog, !dbg !2191

sw.bb.20:                                         ; preds = %LeafBlock.3
  store i32 1, i32* %binary, align 4, !dbg !2192, !tbaa !1068
  br label %sw.epilog, !dbg !2193

sw.bb.21:                                         ; preds = %LeafBlock.1
  store i32 1, i32* %universal, align 4, !dbg !2194, !tbaa !1068
  store i32 1, i32* %reading, align 4, !dbg !2195, !tbaa !1068
  br label %sw.epilog, !dbg !2196

NewDefault:                                       ; preds = %LeafBlock.15, %LeafBlock.11, %LeafBlock.9, %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.default

sw.default:                                       ; preds = %NewDefault
  br label %invalid_mode, !dbg !2197

sw.epilog:                                        ; preds = %sw.bb.21, %sw.bb.20, %sw.bb.19, %sw.bb.18, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb
  br i1 false, label %land.lhs.true.22, label %cond.false, !dbg !2198

land.lhs.true.22:                                 ; preds = %sw.epilog
  %44 = load i8, i8* %c, align 1, !dbg !2200, !tbaa !2177
  %conv23 = sext i8 %44 to i32, !dbg !2202
  %cmp24 = icmp eq i32 %conv23, 0, !dbg !2203
  br i1 %cmp24, label %cond.true, label %cond.false, !dbg !2204

cond.true:                                        ; preds = %land.lhs.true.22
  %45 = load i8*, i8** %mode, align 8, !dbg !2205, !tbaa !750
  %46 = load i32, i32* %i, align 4, !dbg !2207, !tbaa !1068
  %idx.ext = zext i32 %46 to i64, !dbg !2208
  %add.ptr = getelementptr i8, i8* %45, i64 %idx.ext, !dbg !2208
  %add.ptr26 = getelementptr i8, i8* %add.ptr, i64 1, !dbg !2209
  %47 = load i8, i8* %c, align 1, !dbg !2210, !tbaa !2177
  %conv27 = sext i8 %47 to i32, !dbg !2210
  %call28 = call i8* @__rawmemchr(i8* %add.ptr26, i32 %conv27), !dbg !2211
  %tobool29 = icmp ne i8* %call28, null, !dbg !2212
  br i1 %tobool29, label %if.then.36, label %if.end.38, !dbg !2213

cond.false:                                       ; preds = %land.lhs.true.22, %sw.epilog
  %48 = load i8*, i8** %mode, align 8, !dbg !2214, !tbaa !750
  %49 = load i32, i32* %i, align 4, !dbg !2217, !tbaa !1068
  %idx.ext30 = zext i32 %49 to i64, !dbg !2218
  %add.ptr31 = getelementptr i8, i8* %48, i64 %idx.ext30, !dbg !2218
  %add.ptr32 = getelementptr i8, i8* %add.ptr31, i64 1, !dbg !2219
  %50 = load i8, i8* %c, align 1, !dbg !2220, !tbaa !2177
  %conv33 = sext i8 %50 to i32, !dbg !2220
  %call34 = call i8* @strchr(i8* %add.ptr32, i32 %conv33) #2, !dbg !2221
  %tobool35 = icmp ne i8* %call34, null, !dbg !2221
  br i1 %tobool35, label %if.then.36, label %if.end.38, !dbg !2204

if.then.36:                                       ; preds = %cond.false, %cond.true
  br label %invalid_mode, !dbg !2222

invalid_mode:                                     ; preds = %if.then.36, %sw.default
  %51 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2225, !tbaa !750
  %52 = load i8*, i8** %mode, align 8, !dbg !2227, !tbaa !750
  %call37 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i32 0, i32 0), i8* %52), !dbg !2228
  store %struct._object* null, %struct._object** %retval, !dbg !2229
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2229

if.end.38:                                        ; preds = %cond.false, %cond.true
  store i32 0, i32* %cleanup.dest.slot, !dbg !2230
  br label %cleanup, !dbg !2230

cleanup:                                          ; preds = %if.end.38, %invalid_mode
  call void @llvm.lifetime.end(i64 1, i8* %c) #2, !dbg !2230
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.24

LeafBlock.24:                                     ; preds = %cleanup
  %SwitchLeaf25 = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf25, label %cleanup.cont, label %NewDefault.23

cleanup.cont:                                     ; preds = %LeafBlock.24
  br label %for.inc, !dbg !2231

for.inc:                                          ; preds = %cleanup.cont
  %53 = load i32, i32* %i, align 4, !dbg !2232, !tbaa !1068
  %inc = add i32 %53, 1, !dbg !2232
  store i32 %inc, i32* %i, align 4, !dbg !2232, !tbaa !1068
  br label %for.cond, !dbg !2233

for.end:                                          ; preds = %for.cond
  %arraydecay39 = getelementptr inbounds [6 x i8], [6 x i8]* %rawmode, i32 0, i32 0, !dbg !2234
  store i8* %arraydecay39, i8** %m, align 8, !dbg !2235, !tbaa !750
  %54 = load i32, i32* %creating, align 4, !dbg !2236, !tbaa !1068
  %tobool40 = icmp ne i32 %54, 0, !dbg !2236
  br i1 %tobool40, label %if.then.41, label %if.end.42, !dbg !2238

if.then.41:                                       ; preds = %for.end
  %55 = load i8*, i8** %m, align 8, !dbg !2239, !tbaa !750
  %incdec.ptr = getelementptr i8, i8* %55, i32 1, !dbg !2239
  store i8* %incdec.ptr, i8** %m, align 8, !dbg !2239, !tbaa !750
  store i8 120, i8* %55, align 1, !dbg !2241, !tbaa !2177
  br label %if.end.42, !dbg !2242

if.end.42:                                        ; preds = %if.then.41, %for.end
  %56 = load i32, i32* %reading, align 4, !dbg !2243, !tbaa !1068
  %tobool43 = icmp ne i32 %56, 0, !dbg !2243
  br i1 %tobool43, label %if.then.44, label %if.end.46, !dbg !2245

if.then.44:                                       ; preds = %if.end.42
  %57 = load i8*, i8** %m, align 8, !dbg !2246, !tbaa !750
  %incdec.ptr45 = getelementptr i8, i8* %57, i32 1, !dbg !2246
  store i8* %incdec.ptr45, i8** %m, align 8, !dbg !2246, !tbaa !750
  store i8 114, i8* %57, align 1, !dbg !2248, !tbaa !2177
  br label %if.end.46, !dbg !2249

if.end.46:                                        ; preds = %if.then.44, %if.end.42
  %58 = load i32, i32* %writing, align 4, !dbg !2250, !tbaa !1068
  %tobool47 = icmp ne i32 %58, 0, !dbg !2250
  br i1 %tobool47, label %if.then.48, label %if.end.50, !dbg !2252

if.then.48:                                       ; preds = %if.end.46
  %59 = load i8*, i8** %m, align 8, !dbg !2253, !tbaa !750
  %incdec.ptr49 = getelementptr i8, i8* %59, i32 1, !dbg !2253
  store i8* %incdec.ptr49, i8** %m, align 8, !dbg !2253, !tbaa !750
  store i8 119, i8* %59, align 1, !dbg !2255, !tbaa !2177
  br label %if.end.50, !dbg !2256

if.end.50:                                        ; preds = %if.then.48, %if.end.46
  %60 = load i32, i32* %appending, align 4, !dbg !2257, !tbaa !1068
  %tobool51 = icmp ne i32 %60, 0, !dbg !2257
  br i1 %tobool51, label %if.then.52, label %if.end.54, !dbg !2259

if.then.52:                                       ; preds = %if.end.50
  %61 = load i8*, i8** %m, align 8, !dbg !2260, !tbaa !750
  %incdec.ptr53 = getelementptr i8, i8* %61, i32 1, !dbg !2260
  store i8* %incdec.ptr53, i8** %m, align 8, !dbg !2260, !tbaa !750
  store i8 97, i8* %61, align 1, !dbg !2262, !tbaa !2177
  br label %if.end.54, !dbg !2263

if.end.54:                                        ; preds = %if.then.52, %if.end.50
  %62 = load i32, i32* %updating, align 4, !dbg !2264, !tbaa !1068
  %tobool55 = icmp ne i32 %62, 0, !dbg !2264
  br i1 %tobool55, label %if.then.56, label %if.end.58, !dbg !2266

if.then.56:                                       ; preds = %if.end.54
  %63 = load i8*, i8** %m, align 8, !dbg !2267, !tbaa !750
  %incdec.ptr57 = getelementptr i8, i8* %63, i32 1, !dbg !2267
  store i8* %incdec.ptr57, i8** %m, align 8, !dbg !2267, !tbaa !750
  store i8 43, i8* %63, align 1, !dbg !2269, !tbaa !2177
  br label %if.end.58, !dbg !2270

if.end.58:                                        ; preds = %if.then.56, %if.end.54
  %64 = load i8*, i8** %m, align 8, !dbg !2271, !tbaa !750
  store i8 0, i8* %64, align 1, !dbg !2272, !tbaa !2177
  %65 = load i32, i32* %universal, align 4, !dbg !2273, !tbaa !1068
  %tobool59 = icmp ne i32 %65, 0, !dbg !2273
  br i1 %tobool59, label %if.then.60, label %if.end.70, !dbg !2275

if.then.60:                                       ; preds = %if.end.58
  %66 = load i32, i32* %writing, align 4, !dbg !2276, !tbaa !1068
  %tobool61 = icmp ne i32 %66, 0, !dbg !2276
  br i1 %tobool61, label %if.then.63, label %lor.lhs.false, !dbg !2279

lor.lhs.false:                                    ; preds = %if.then.60
  %67 = load i32, i32* %appending, align 4, !dbg !2280, !tbaa !1068
  %tobool62 = icmp ne i32 %67, 0, !dbg !2280
  br i1 %tobool62, label %if.then.63, label %if.end.64, !dbg !2282

if.then.63:                                       ; preds = %lor.lhs.false, %if.then.60
  %68 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2283, !tbaa !750
  call void @PyErr_SetString(%struct._object* %68, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.59, i32 0, i32 0)), !dbg !2285
  store %struct._object* null, %struct._object** %retval, !dbg !2286
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.402, !dbg !2286

if.end.64:                                        ; preds = %lor.lhs.false
  %69 = load %struct._object*, %struct._object** @PyExc_DeprecationWarning, align 8, !dbg !2287, !tbaa !750
  %call65 = call i32 @PyErr_WarnEx(%struct._object* %69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.60, i32 0, i32 0), i64 1), !dbg !2289
  %cmp66 = icmp slt i32 %call65, 0, !dbg !2290
  br i1 %cmp66, label %if.then.68, label %if.end.69, !dbg !2291

if.then.68:                                       ; preds = %if.end.64
  store %struct._object* null, %struct._object** %retval, !dbg !2292
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.402, !dbg !2292

if.end.69:                                        ; preds = %if.end.64
  store i32 1, i32* %reading, align 4, !dbg !2293, !tbaa !1068
  br label %if.end.70, !dbg !2294

if.end.70:                                        ; preds = %if.end.69, %if.end.58
  %70 = load i32, i32* %text, align 4, !dbg !2295, !tbaa !1068
  %tobool71 = icmp ne i32 %70, 0, !dbg !2295
  br i1 %tobool71, label %land.lhs.true.72, label %if.end.75, !dbg !2297

land.lhs.true.72:                                 ; preds = %if.end.70
  %71 = load i32, i32* %binary, align 4, !dbg !2298, !tbaa !1068
  %tobool73 = icmp ne i32 %71, 0, !dbg !2298
  br i1 %tobool73, label %if.then.74, label %if.end.75, !dbg !2300

if.then.74:                                       ; preds = %land.lhs.true.72
  %72 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2301, !tbaa !750
  call void @PyErr_SetString(%struct._object* %72, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.61, i32 0, i32 0)), !dbg !2303
  store %struct._object* null, %struct._object** %retval, !dbg !2304
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.402, !dbg !2304

if.end.75:                                        ; preds = %land.lhs.true.72, %if.end.70
  %73 = load i32, i32* %creating, align 4, !dbg !2305, !tbaa !1068
  %74 = load i32, i32* %reading, align 4, !dbg !2307, !tbaa !1068
  %add = add i32 %73, %74, !dbg !2308
  %75 = load i32, i32* %writing, align 4, !dbg !2309, !tbaa !1068
  %add76 = add i32 %add, %75, !dbg !2310
  %76 = load i32, i32* %appending, align 4, !dbg !2311, !tbaa !1068
  %add77 = add i32 %add76, %76, !dbg !2312
  %cmp78 = icmp sgt i32 %add77, 1, !dbg !2313
  br i1 %cmp78, label %if.then.80, label %if.end.81, !dbg !2314

if.then.80:                                       ; preds = %if.end.75
  %77 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2315, !tbaa !750
  call void @PyErr_SetString(%struct._object* %77, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.62, i32 0, i32 0)), !dbg !2317
  store %struct._object* null, %struct._object** %retval, !dbg !2318
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.402, !dbg !2318

if.end.81:                                        ; preds = %if.end.75
  %78 = load i32, i32* %binary, align 4, !dbg !2319, !tbaa !1068
  %tobool82 = icmp ne i32 %78, 0, !dbg !2319
  br i1 %tobool82, label %land.lhs.true.83, label %if.end.87, !dbg !2321

land.lhs.true.83:                                 ; preds = %if.end.81
  %79 = load i8*, i8** %encoding, align 8, !dbg !2322, !tbaa !750
  %cmp84 = icmp ne i8* %79, null, !dbg !2324
  br i1 %cmp84, label %if.then.86, label %if.end.87, !dbg !2325

if.then.86:                                       ; preds = %land.lhs.true.83
  %80 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2326, !tbaa !750
  call void @PyErr_SetString(%struct._object* %80, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.63, i32 0, i32 0)), !dbg !2328
  store %struct._object* null, %struct._object** %retval, !dbg !2329
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.402, !dbg !2329

if.end.87:                                        ; preds = %land.lhs.true.83, %if.end.81
  %81 = load i32, i32* %binary, align 4, !dbg !2330, !tbaa !1068
  %tobool88 = icmp ne i32 %81, 0, !dbg !2330
  br i1 %tobool88, label %land.lhs.true.89, label %if.end.93, !dbg !2332

land.lhs.true.89:                                 ; preds = %if.end.87
  %82 = load i8*, i8** %errors, align 8, !dbg !2333, !tbaa !750
  %cmp90 = icmp ne i8* %82, null, !dbg !2335
  br i1 %cmp90, label %if.then.92, label %if.end.93, !dbg !2336

if.then.92:                                       ; preds = %land.lhs.true.89
  %83 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2337, !tbaa !750
  call void @PyErr_SetString(%struct._object* %83, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.64, i32 0, i32 0)), !dbg !2339
  store %struct._object* null, %struct._object** %retval, !dbg !2340
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.402, !dbg !2340

if.end.93:                                        ; preds = %land.lhs.true.89, %if.end.87
  %84 = load i32, i32* %binary, align 4, !dbg !2341, !tbaa !1068
  %tobool94 = icmp ne i32 %84, 0, !dbg !2341
  br i1 %tobool94, label %land.lhs.true.95, label %if.end.99, !dbg !2343

land.lhs.true.95:                                 ; preds = %if.end.93
  %85 = load i8*, i8** %newline, align 8, !dbg !2344, !tbaa !750
  %cmp96 = icmp ne i8* %85, null, !dbg !2346
  br i1 %cmp96, label %if.then.98, label %if.end.99, !dbg !2347

if.then.98:                                       ; preds = %land.lhs.true.95
  %86 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2348, !tbaa !750
  call void @PyErr_SetString(%struct._object* %86, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.65, i32 0, i32 0)), !dbg !2350
  store %struct._object* null, %struct._object** %retval, !dbg !2351
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.402, !dbg !2351

if.end.99:                                        ; preds = %land.lhs.true.95, %if.end.93
  %87 = load %struct._object*, %struct._object** %file, align 8, !dbg !2352, !tbaa !750
  %arraydecay100 = getelementptr inbounds [6 x i8], [6 x i8]* %rawmode, i32 0, i32 0, !dbg !2353
  %88 = load i32, i32* %closefd, align 4, !dbg !2354, !tbaa !1068
  %89 = load %struct._object*, %struct._object** %opener, align 8, !dbg !2355, !tbaa !750
  %call101 = call %struct._object* (%struct._object*, i8*, ...) @_PyObject_CallFunction_SizeT(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyFileIO_Type, i32 0, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0), %struct._object* %87, i8* %arraydecay100, i32 %88, %struct._object* %89), !dbg !2356
  store %struct._object* %call101, %struct._object** %raw, align 8, !dbg !2357, !tbaa !750
  %90 = load %struct._object*, %struct._object** %raw, align 8, !dbg !2358, !tbaa !750
  %cmp102 = icmp eq %struct._object* %90, null, !dbg !2360
  br i1 %cmp102, label %if.then.104, label %if.end.105, !dbg !2361

if.then.104:                                      ; preds = %if.end.99
  store %struct._object* null, %struct._object** %retval, !dbg !2362
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.402, !dbg !2362

if.end.105:                                       ; preds = %if.end.99
  %91 = load i8*, i8** %mode, align 8, !dbg !2363, !tbaa !750
  %call106 = call %struct._object* @PyUnicode_FromString(i8* %91), !dbg !2364
  store %struct._object* %call106, %struct._object** %modeobj, align 8, !dbg !2365, !tbaa !750
  %92 = load %struct._object*, %struct._object** %modeobj, align 8, !dbg !2366, !tbaa !750
  %cmp107 = icmp eq %struct._object* %92, null, !dbg !2368
  br i1 %cmp107, label %if.then.109, label %if.end.110, !dbg !2369

if.then.109:                                      ; preds = %if.end.105
  br label %error, !dbg !2370

if.end.110:                                       ; preds = %if.end.105
  %93 = bitcast %struct._object** %res to i8*, !dbg !2371
  call void @llvm.lifetime.start(i64 8, i8* %93) #2, !dbg !2371
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !519, metadata !754), !dbg !2372
  %94 = load %struct._object*, %struct._object** %raw, align 8, !dbg !2373, !tbaa !750
  %call111 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %94, %struct._Py_Identifier* @io_open.PyId_isatty, i8* null), !dbg !2374
  store %struct._object* %call111, %struct._object** %res, align 8, !dbg !2372, !tbaa !750
  %95 = load %struct._object*, %struct._object** %res, align 8, !dbg !2375, !tbaa !750
  %cmp112 = icmp eq %struct._object* %95, null, !dbg !2377
  br i1 %cmp112, label %if.then.114, label %if.end.115, !dbg !2378

if.then.114:                                      ; preds = %if.end.110
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.130, !dbg !2379

if.end.115:                                       ; preds = %if.end.110
  %96 = load %struct._object*, %struct._object** %res, align 8, !dbg !2380, !tbaa !750
  %call116 = call i64 @PyLong_AsLong(%struct._object* %96), !dbg !2381
  %conv117 = trunc i64 %call116 to i32, !dbg !2381
  store i32 %conv117, i32* %isatty, align 4, !dbg !2382, !tbaa !1068
  br label %do.body, !dbg !2383

do.body:                                          ; preds = %if.end.115
  %97 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2384
  call void @llvm.lifetime.start(i64 8, i8* %97) #2, !dbg !2384
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !521, metadata !754), !dbg !2386
  %98 = load %struct._object*, %struct._object** %res, align 8, !dbg !2387, !tbaa !750
  store %struct._object* %98, %struct._object** %_py_decref_tmp, align 8, !dbg !2386, !tbaa !750
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2388, !tbaa !750
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %99, i32 0, i32 0, !dbg !2390
  %100 = load i64, i64* %ob_refcnt, align 8, !dbg !2391, !tbaa !825
  %dec = add i64 %100, -1, !dbg !2391
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2391, !tbaa !825
  %cmp118 = icmp ne i64 %dec, 0, !dbg !2392
  br i1 %cmp118, label %if.then.120, label %if.else, !dbg !2393

if.then.120:                                      ; preds = %do.body
  br label %if.end.122, !dbg !2394

if.else:                                          ; preds = %do.body
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2396, !tbaa !750
  %ob_type121 = getelementptr inbounds %struct._object, %struct._object* %101, i32 0, i32 1, !dbg !2398
  %102 = load %struct._typeobject*, %struct._typeobject** %ob_type121, align 8, !dbg !2398, !tbaa !808
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %102, i32 0, i32 4, !dbg !2399
  %103 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2399, !tbaa !834
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2400, !tbaa !750
  call void %103(%struct._object* %104), !dbg !2401
  br label %if.end.122

if.end.122:                                       ; preds = %if.else, %if.then.120
  %105 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2402
  call void @llvm.lifetime.end(i64 8, i8* %105) #2, !dbg !2402
  br label %do.cond, !dbg !2404

do.cond:                                          ; preds = %if.end.122
  br label %do.end, !dbg !2405

do.end:                                           ; preds = %do.cond
  %106 = load i32, i32* %isatty, align 4, !dbg !2407, !tbaa !1068
  %cmp123 = icmp eq i32 %106, -1, !dbg !2409
  br i1 %cmp123, label %land.lhs.true.125, label %if.end.129, !dbg !2410

land.lhs.true.125:                                ; preds = %do.end
  %call126 = call %struct._object* @PyErr_Occurred(), !dbg !2411
  %tobool127 = icmp ne %struct._object* %call126, null, !dbg !2411
  br i1 %tobool127, label %if.then.128, label %if.end.129, !dbg !2413

if.then.128:                                      ; preds = %land.lhs.true.125
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.130, !dbg !2414

if.end.129:                                       ; preds = %land.lhs.true.125, %do.end
  store i32 0, i32* %cleanup.dest.slot, !dbg !2415
  br label %cleanup.130, !dbg !2415

cleanup.130:                                      ; preds = %if.end.129, %if.then.128, %if.then.114
  %107 = bitcast %struct._object** %res to i8*, !dbg !2416
  call void @llvm.lifetime.end(i64 8, i8* %107) #2, !dbg !2416
  %cleanup.dest.131 = load i32, i32* %cleanup.dest.slot
  br label %NodeBlock.31

NodeBlock.31:                                     ; preds = %cleanup.130
  %Pivot.32 = icmp slt i32 %cleanup.dest.131, 7
  br i1 %Pivot.32, label %LeafBlock.27, label %LeafBlock.29

LeafBlock.29:                                     ; preds = %NodeBlock.31
  %SwitchLeaf30 = icmp eq i32 %cleanup.dest.131, 7
  br i1 %SwitchLeaf30, label %error, label %NewDefault.26

LeafBlock.27:                                     ; preds = %NodeBlock.31
  %SwitchLeaf28 = icmp eq i32 %cleanup.dest.131, 0
  br i1 %SwitchLeaf28, label %cleanup.cont.132, label %NewDefault.26

cleanup.cont.132:                                 ; preds = %LeafBlock.27
  %108 = load i32, i32* %buffering, align 4, !dbg !2418, !tbaa !1068
  %cmp133 = icmp eq i32 %108, 1, !dbg !2420
  br i1 %cmp133, label %if.then.140, label %lor.lhs.false.135, !dbg !2421

lor.lhs.false.135:                                ; preds = %cleanup.cont.132
  %109 = load i32, i32* %buffering, align 4, !dbg !2422, !tbaa !1068
  %cmp136 = icmp slt i32 %109, 0, !dbg !2424
  br i1 %cmp136, label %land.lhs.true.138, label %if.else.141, !dbg !2425

land.lhs.true.138:                                ; preds = %lor.lhs.false.135
  %110 = load i32, i32* %isatty, align 4, !dbg !2426, !tbaa !1068
  %tobool139 = icmp ne i32 %110, 0, !dbg !2426
  br i1 %tobool139, label %if.then.140, label %if.else.141, !dbg !2428

if.then.140:                                      ; preds = %land.lhs.true.138, %cleanup.cont.132
  store i32 -1, i32* %buffering, align 4, !dbg !2429, !tbaa !1068
  store i32 1, i32* %line_buffering, align 4, !dbg !2431, !tbaa !1068
  br label %if.end.142, !dbg !2432

if.else.141:                                      ; preds = %land.lhs.true.138, %lor.lhs.false.135
  store i32 0, i32* %line_buffering, align 4, !dbg !2433, !tbaa !1068
  br label %if.end.142

if.end.142:                                       ; preds = %if.else.141, %if.then.140
  %111 = load i32, i32* %buffering, align 4, !dbg !2434, !tbaa !1068
  %cmp143 = icmp slt i32 %111, 0, !dbg !2435
  br i1 %cmp143, label %if.then.145, label %if.end.189, !dbg !2436

if.then.145:                                      ; preds = %if.end.142
  store i32 8192, i32* %buffering, align 4, !dbg !2437, !tbaa !1068
  %112 = bitcast %struct.stat* %st to i8*, !dbg !2438
  call void @llvm.lifetime.start(i64 144, i8* %112) #2, !dbg !2438
  call void @llvm.dbg.declare(metadata %struct.stat* %st, metadata !523, metadata !754), !dbg !2439
  %113 = bitcast i64* %fileno to i8*, !dbg !2440
  call void @llvm.lifetime.start(i64 8, i8* %113) #2, !dbg !2440
  call void @llvm.dbg.declare(metadata i64* %fileno, metadata !563, metadata !754), !dbg !2441
  %114 = bitcast %struct._object** %res146 to i8*, !dbg !2442
  call void @llvm.lifetime.start(i64 8, i8* %114) #2, !dbg !2442
  call void @llvm.dbg.declare(metadata %struct._object** %res146, metadata !564, metadata !754), !dbg !2443
  %115 = load %struct._object*, %struct._object** %raw, align 8, !dbg !2444, !tbaa !750
  %call147 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %115, %struct._Py_Identifier* @io_open.PyId_fileno, i8* null), !dbg !2445
  store %struct._object* %call147, %struct._object** %res146, align 8, !dbg !2443, !tbaa !750
  %116 = load %struct._object*, %struct._object** %res146, align 8, !dbg !2446, !tbaa !750
  %cmp148 = icmp eq %struct._object* %116, null, !dbg !2448
  br i1 %cmp148, label %if.then.150, label %if.end.151, !dbg !2449

if.then.150:                                      ; preds = %if.then.145
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.184, !dbg !2450

if.end.151:                                       ; preds = %if.then.145
  %117 = load %struct._object*, %struct._object** %res146, align 8, !dbg !2451, !tbaa !750
  %call152 = call i64 @PyLong_AsLong(%struct._object* %117), !dbg !2452
  store i64 %call152, i64* %fileno, align 8, !dbg !2453, !tbaa !773
  br label %do.body.153, !dbg !2454

do.body.153:                                      ; preds = %if.end.151
  %118 = bitcast %struct._object** %_py_decref_tmp154 to i8*, !dbg !2455
  call void @llvm.lifetime.start(i64 8, i8* %118) #2, !dbg !2455
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp154, metadata !565, metadata !754), !dbg !2457
  %119 = load %struct._object*, %struct._object** %res146, align 8, !dbg !2458, !tbaa !750
  store %struct._object* %119, %struct._object** %_py_decref_tmp154, align 8, !dbg !2457, !tbaa !750
  %120 = load %struct._object*, %struct._object** %_py_decref_tmp154, align 8, !dbg !2459, !tbaa !750
  %ob_refcnt155 = getelementptr inbounds %struct._object, %struct._object* %120, i32 0, i32 0, !dbg !2461
  %121 = load i64, i64* %ob_refcnt155, align 8, !dbg !2462, !tbaa !825
  %dec156 = add i64 %121, -1, !dbg !2462
  store i64 %dec156, i64* %ob_refcnt155, align 8, !dbg !2462, !tbaa !825
  %cmp157 = icmp ne i64 %dec156, 0, !dbg !2463
  br i1 %cmp157, label %if.then.159, label %if.else.160, !dbg !2464

if.then.159:                                      ; preds = %do.body.153
  br label %if.end.163, !dbg !2465

if.else.160:                                      ; preds = %do.body.153
  %122 = load %struct._object*, %struct._object** %_py_decref_tmp154, align 8, !dbg !2467, !tbaa !750
  %ob_type161 = getelementptr inbounds %struct._object, %struct._object* %122, i32 0, i32 1, !dbg !2469
  %123 = load %struct._typeobject*, %struct._typeobject** %ob_type161, align 8, !dbg !2469, !tbaa !808
  %tp_dealloc162 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %123, i32 0, i32 4, !dbg !2470
  %124 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc162, align 8, !dbg !2470, !tbaa !834
  %125 = load %struct._object*, %struct._object** %_py_decref_tmp154, align 8, !dbg !2471, !tbaa !750
  call void %124(%struct._object* %125), !dbg !2472
  br label %if.end.163

if.end.163:                                       ; preds = %if.else.160, %if.then.159
  %126 = bitcast %struct._object** %_py_decref_tmp154 to i8*, !dbg !2473
  call void @llvm.lifetime.end(i64 8, i8* %126) #2, !dbg !2473
  br label %do.cond.164, !dbg !2475

do.cond.164:                                      ; preds = %if.end.163
  br label %do.end.165, !dbg !2476

do.end.165:                                       ; preds = %do.cond.164
  %127 = load i64, i64* %fileno, align 8, !dbg !2478, !tbaa !773
  %cmp166 = icmp eq i64 %127, -1, !dbg !2480
  br i1 %cmp166, label %land.lhs.true.168, label %if.end.172, !dbg !2481

land.lhs.true.168:                                ; preds = %do.end.165
  %call169 = call %struct._object* @PyErr_Occurred(), !dbg !2482
  %tobool170 = icmp ne %struct._object* %call169, null, !dbg !2482
  br i1 %tobool170, label %if.then.171, label %if.end.172, !dbg !2484

if.then.171:                                      ; preds = %land.lhs.true.168
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.184, !dbg !2485

if.end.172:                                       ; preds = %land.lhs.true.168, %do.end.165
  %128 = load i64, i64* %fileno, align 8, !dbg !2486, !tbaa !773
  %conv173 = trunc i64 %128 to i32, !dbg !2486
  %call174 = call i32 bitcast (i32 (i32, %struct.stat64*)* @fstat64 to i32 (i32, %struct.stat*)*)(i32 %conv173, %struct.stat* %st) #2, !dbg !2488
  %cmp175 = icmp sge i32 %call174, 0, !dbg !2489
  br i1 %cmp175, label %land.lhs.true.177, label %if.end.183, !dbg !2490

land.lhs.true.177:                                ; preds = %if.end.172
  %st_blksize = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 9, !dbg !2491
  %129 = load i64, i64* %st_blksize, align 8, !dbg !2491, !tbaa !2493
  %cmp178 = icmp sgt i64 %129, 1, !dbg !2496
  br i1 %cmp178, label %if.then.180, label %if.end.183, !dbg !2497

if.then.180:                                      ; preds = %land.lhs.true.177
  %st_blksize181 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 9, !dbg !2498
  %130 = load i64, i64* %st_blksize181, align 8, !dbg !2498, !tbaa !2493
  %conv182 = trunc i64 %130 to i32, !dbg !2499
  store i32 %conv182, i32* %buffering, align 4, !dbg !2500, !tbaa !1068
  br label %if.end.183, !dbg !2501

if.end.183:                                       ; preds = %if.then.180, %land.lhs.true.177, %if.end.172
  store i32 0, i32* %cleanup.dest.slot, !dbg !2502
  br label %cleanup.184, !dbg !2502

cleanup.184:                                      ; preds = %if.end.183, %if.then.171, %if.then.150
  %131 = bitcast %struct._object** %res146 to i8*, !dbg !2503
  call void @llvm.lifetime.end(i64 8, i8* %131) #2, !dbg !2503
  %132 = bitcast i64* %fileno to i8*, !dbg !2503
  call void @llvm.lifetime.end(i64 8, i8* %132) #2, !dbg !2503
  %133 = bitcast %struct.stat* %st to i8*, !dbg !2503
  call void @llvm.lifetime.end(i64 144, i8* %133) #2, !dbg !2503
  %cleanup.dest.187 = load i32, i32* %cleanup.dest.slot
  br label %NodeBlock.38

NodeBlock.38:                                     ; preds = %cleanup.184
  %Pivot.39 = icmp slt i32 %cleanup.dest.187, 7
  br i1 %Pivot.39, label %LeafBlock.34, label %LeafBlock.36

LeafBlock.36:                                     ; preds = %NodeBlock.38
  %SwitchLeaf37 = icmp eq i32 %cleanup.dest.187, 7
  br i1 %SwitchLeaf37, label %error, label %NewDefault.33

LeafBlock.34:                                     ; preds = %NodeBlock.38
  %SwitchLeaf35 = icmp eq i32 %cleanup.dest.187, 0
  br i1 %SwitchLeaf35, label %cleanup.cont.188, label %NewDefault.33

cleanup.cont.188:                                 ; preds = %LeafBlock.34
  br label %if.end.189, !dbg !2505

if.end.189:                                       ; preds = %cleanup.cont.188, %if.end.142
  %134 = load i32, i32* %buffering, align 4, !dbg !2506, !tbaa !1068
  %cmp190 = icmp slt i32 %134, 0, !dbg !2508
  br i1 %cmp190, label %if.then.192, label %if.end.193, !dbg !2509

if.then.192:                                      ; preds = %if.end.189
  %135 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2510, !tbaa !750
  call void @PyErr_SetString(%struct._object* %135, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.67, i32 0, i32 0)), !dbg !2512
  br label %error, !dbg !2513

if.end.193:                                       ; preds = %if.end.189
  %136 = load i32, i32* %buffering, align 4, !dbg !2514, !tbaa !1068
  %cmp194 = icmp eq i32 %136, 0, !dbg !2515
  br i1 %cmp194, label %if.then.196, label %if.end.213, !dbg !2516

if.then.196:                                      ; preds = %if.end.193
  %137 = load i32, i32* %binary, align 4, !dbg !2517, !tbaa !1068
  %tobool197 = icmp ne i32 %137, 0, !dbg !2517
  br i1 %tobool197, label %if.end.199, label %if.then.198, !dbg !2519

if.then.198:                                      ; preds = %if.then.196
  %138 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2520, !tbaa !750
  call void @PyErr_SetString(%struct._object* %138, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i32 0, i32 0)), !dbg !2522
  br label %error, !dbg !2523

if.end.199:                                       ; preds = %if.then.196
  br label %do.body.200, !dbg !2524

do.body.200:                                      ; preds = %if.end.199
  %139 = bitcast %struct._object** %_py_decref_tmp201 to i8*, !dbg !2525
  call void @llvm.lifetime.start(i64 8, i8* %139) #2, !dbg !2525
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp201, metadata !567, metadata !754), !dbg !2527
  %140 = load %struct._object*, %struct._object** %modeobj, align 8, !dbg !2528, !tbaa !750
  store %struct._object* %140, %struct._object** %_py_decref_tmp201, align 8, !dbg !2527, !tbaa !750
  %141 = load %struct._object*, %struct._object** %_py_decref_tmp201, align 8, !dbg !2529, !tbaa !750
  %ob_refcnt202 = getelementptr inbounds %struct._object, %struct._object* %141, i32 0, i32 0, !dbg !2531
  %142 = load i64, i64* %ob_refcnt202, align 8, !dbg !2532, !tbaa !825
  %dec203 = add i64 %142, -1, !dbg !2532
  store i64 %dec203, i64* %ob_refcnt202, align 8, !dbg !2532, !tbaa !825
  %cmp204 = icmp ne i64 %dec203, 0, !dbg !2533
  br i1 %cmp204, label %if.then.206, label %if.else.207, !dbg !2534

if.then.206:                                      ; preds = %do.body.200
  br label %if.end.210, !dbg !2535

if.else.207:                                      ; preds = %do.body.200
  %143 = load %struct._object*, %struct._object** %_py_decref_tmp201, align 8, !dbg !2537, !tbaa !750
  %ob_type208 = getelementptr inbounds %struct._object, %struct._object* %143, i32 0, i32 1, !dbg !2539
  %144 = load %struct._typeobject*, %struct._typeobject** %ob_type208, align 8, !dbg !2539, !tbaa !808
  %tp_dealloc209 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %144, i32 0, i32 4, !dbg !2540
  %145 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc209, align 8, !dbg !2540, !tbaa !834
  %146 = load %struct._object*, %struct._object** %_py_decref_tmp201, align 8, !dbg !2541, !tbaa !750
  call void %145(%struct._object* %146), !dbg !2542
  br label %if.end.210

if.end.210:                                       ; preds = %if.else.207, %if.then.206
  %147 = bitcast %struct._object** %_py_decref_tmp201 to i8*, !dbg !2543
  call void @llvm.lifetime.end(i64 8, i8* %147) #2, !dbg !2543
  br label %do.cond.211, !dbg !2545

do.cond.211:                                      ; preds = %if.end.210
  br label %do.end.212, !dbg !2546

do.end.212:                                       ; preds = %do.cond.211
  %148 = load %struct._object*, %struct._object** %raw, align 8, !dbg !2548, !tbaa !750
  store %struct._object* %148, %struct._object** %retval, !dbg !2549
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.402, !dbg !2549

if.end.213:                                       ; preds = %if.end.193
  %149 = bitcast %struct._object** %Buffered_class to i8*, !dbg !2550
  call void @llvm.lifetime.start(i64 8, i8* %149) #2, !dbg !2550
  call void @llvm.dbg.declare(metadata %struct._object** %Buffered_class, metadata !571, metadata !754), !dbg !2551
  %150 = load i32, i32* %updating, align 4, !dbg !2552, !tbaa !1068
  %tobool214 = icmp ne i32 %150, 0, !dbg !2552
  br i1 %tobool214, label %if.then.215, label %if.else.216, !dbg !2554

if.then.215:                                      ; preds = %if.end.213
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedRandom_Type, i32 0, i32 0, i32 0), %struct._object** %Buffered_class, align 8, !dbg !2555, !tbaa !750
  br label %if.end.230, !dbg !2556

if.else.216:                                      ; preds = %if.end.213
  %151 = load i32, i32* %creating, align 4, !dbg !2557, !tbaa !1068
  %tobool217 = icmp ne i32 %151, 0, !dbg !2557
  br i1 %tobool217, label %if.then.222, label %lor.lhs.false.218, !dbg !2559

lor.lhs.false.218:                                ; preds = %if.else.216
  %152 = load i32, i32* %writing, align 4, !dbg !2560, !tbaa !1068
  %tobool219 = icmp ne i32 %152, 0, !dbg !2560
  br i1 %tobool219, label %if.then.222, label %lor.lhs.false.220, !dbg !2562

lor.lhs.false.220:                                ; preds = %lor.lhs.false.218
  %153 = load i32, i32* %appending, align 4, !dbg !2563, !tbaa !1068
  %tobool221 = icmp ne i32 %153, 0, !dbg !2563
  br i1 %tobool221, label %if.then.222, label %if.else.223, !dbg !2565

if.then.222:                                      ; preds = %lor.lhs.false.220, %lor.lhs.false.218, %if.else.216
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedWriter_Type, i32 0, i32 0, i32 0), %struct._object** %Buffered_class, align 8, !dbg !2566, !tbaa !750
  br label %if.end.229, !dbg !2567

if.else.223:                                      ; preds = %lor.lhs.false.220
  %154 = load i32, i32* %reading, align 4, !dbg !2568, !tbaa !1068
  %tobool224 = icmp ne i32 %154, 0, !dbg !2568
  br i1 %tobool224, label %if.then.225, label %if.else.226, !dbg !2570

if.then.225:                                      ; preds = %if.else.223
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedReader_Type, i32 0, i32 0, i32 0), %struct._object** %Buffered_class, align 8, !dbg !2571, !tbaa !750
  br label %if.end.228, !dbg !2572

if.else.226:                                      ; preds = %if.else.223
  %155 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2573, !tbaa !750
  %156 = load i8*, i8** %mode, align 8, !dbg !2575, !tbaa !750
  %call227 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %155, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.69, i32 0, i32 0), i8* %156), !dbg !2576
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.232, !dbg !2577

if.end.228:                                       ; preds = %if.then.225
  br label %if.end.229

if.end.229:                                       ; preds = %if.end.228, %if.then.222
  br label %if.end.230

if.end.230:                                       ; preds = %if.end.229, %if.then.215
  %157 = load %struct._object*, %struct._object** %Buffered_class, align 8, !dbg !2578, !tbaa !750
  %158 = load %struct._object*, %struct._object** %raw, align 8, !dbg !2579, !tbaa !750
  %159 = load i32, i32* %buffering, align 4, !dbg !2580, !tbaa !1068
  %call231 = call %struct._object* (%struct._object*, i8*, ...) @_PyObject_CallFunction_SizeT(%struct._object* %157, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i32 0, i32 0), %struct._object* %158, i32 %159), !dbg !2581
  store %struct._object* %call231, %struct._object** %buffer, align 8, !dbg !2582, !tbaa !750
  store i32 0, i32* %cleanup.dest.slot, !dbg !2583
  br label %cleanup.232, !dbg !2583

cleanup.232:                                      ; preds = %if.end.230, %if.else.226
  %160 = bitcast %struct._object** %Buffered_class to i8*, !dbg !2584
  call void @llvm.lifetime.end(i64 8, i8* %160) #2, !dbg !2584
  %cleanup.dest.233 = load i32, i32* %cleanup.dest.slot
  br label %NodeBlock.45

NodeBlock.45:                                     ; preds = %cleanup.232
  %Pivot.46 = icmp slt i32 %cleanup.dest.233, 7
  br i1 %Pivot.46, label %LeafBlock.41, label %LeafBlock.43

LeafBlock.43:                                     ; preds = %NodeBlock.45
  %SwitchLeaf44 = icmp eq i32 %cleanup.dest.233, 7
  br i1 %SwitchLeaf44, label %error, label %NewDefault.40

LeafBlock.41:                                     ; preds = %NodeBlock.45
  %SwitchLeaf42 = icmp eq i32 %cleanup.dest.233, 0
  br i1 %SwitchLeaf42, label %cleanup.cont.234, label %NewDefault.40

cleanup.cont.234:                                 ; preds = %LeafBlock.41
  br label %do.body.235, !dbg !2585

do.body.235:                                      ; preds = %cleanup.cont.234
  %161 = bitcast %struct._object** %_py_tmp to i8*, !dbg !2586
  call void @llvm.lifetime.start(i64 8, i8* %161) #2, !dbg !2586
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !573, metadata !754), !dbg !2588
  %162 = load %struct._object*, %struct._object** %raw, align 8, !dbg !2589, !tbaa !750
  store %struct._object* %162, %struct._object** %_py_tmp, align 8, !dbg !2588, !tbaa !750
  %163 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2590, !tbaa !750
  %cmp236 = icmp ne %struct._object* %163, null, !dbg !2591
  br i1 %cmp236, label %if.then.238, label %if.end.252, !dbg !2592

if.then.238:                                      ; preds = %do.body.235
  store %struct._object* null, %struct._object** %raw, align 8, !dbg !2593, !tbaa !750
  br label %do.body.239, !dbg !2595

do.body.239:                                      ; preds = %if.then.238
  %164 = bitcast %struct._object** %_py_decref_tmp240 to i8*, !dbg !2596
  call void @llvm.lifetime.start(i64 8, i8* %164) #2, !dbg !2596
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp240, metadata !575, metadata !754), !dbg !2598
  %165 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2599, !tbaa !750
  store %struct._object* %165, %struct._object** %_py_decref_tmp240, align 8, !dbg !2598, !tbaa !750
  %166 = load %struct._object*, %struct._object** %_py_decref_tmp240, align 8, !dbg !2600, !tbaa !750
  %ob_refcnt241 = getelementptr inbounds %struct._object, %struct._object* %166, i32 0, i32 0, !dbg !2602
  %167 = load i64, i64* %ob_refcnt241, align 8, !dbg !2603, !tbaa !825
  %dec242 = add i64 %167, -1, !dbg !2603
  store i64 %dec242, i64* %ob_refcnt241, align 8, !dbg !2603, !tbaa !825
  %cmp243 = icmp ne i64 %dec242, 0, !dbg !2604
  br i1 %cmp243, label %if.then.245, label %if.else.246, !dbg !2605

if.then.245:                                      ; preds = %do.body.239
  br label %if.end.249, !dbg !2606

if.else.246:                                      ; preds = %do.body.239
  %168 = load %struct._object*, %struct._object** %_py_decref_tmp240, align 8, !dbg !2608, !tbaa !750
  %ob_type247 = getelementptr inbounds %struct._object, %struct._object* %168, i32 0, i32 1, !dbg !2610
  %169 = load %struct._typeobject*, %struct._typeobject** %ob_type247, align 8, !dbg !2610, !tbaa !808
  %tp_dealloc248 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %169, i32 0, i32 4, !dbg !2611
  %170 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc248, align 8, !dbg !2611, !tbaa !834
  %171 = load %struct._object*, %struct._object** %_py_decref_tmp240, align 8, !dbg !2612, !tbaa !750
  call void %170(%struct._object* %171), !dbg !2613
  br label %if.end.249

if.end.249:                                       ; preds = %if.else.246, %if.then.245
  %172 = bitcast %struct._object** %_py_decref_tmp240 to i8*, !dbg !2614
  call void @llvm.lifetime.end(i64 8, i8* %172) #2, !dbg !2614
  br label %do.cond.250, !dbg !2616

do.cond.250:                                      ; preds = %if.end.249
  br label %do.end.251, !dbg !2617

do.end.251:                                       ; preds = %do.cond.250
  br label %if.end.252, !dbg !2619

if.end.252:                                       ; preds = %do.end.251, %do.body.235
  %173 = bitcast %struct._object** %_py_tmp to i8*, !dbg !2621
  call void @llvm.lifetime.end(i64 8, i8* %173) #2, !dbg !2621
  br label %do.cond.253, !dbg !2624

do.cond.253:                                      ; preds = %if.end.252
  br label %do.end.254, !dbg !2625

do.end.254:                                       ; preds = %do.cond.253
  %174 = load %struct._object*, %struct._object** %buffer, align 8, !dbg !2627, !tbaa !750
  %cmp255 = icmp eq %struct._object* %174, null, !dbg !2629
  br i1 %cmp255, label %if.then.257, label %if.end.258, !dbg !2630

if.then.257:                                      ; preds = %do.end.254
  br label %error, !dbg !2631

if.end.258:                                       ; preds = %do.end.254
  %175 = load i32, i32* %binary, align 4, !dbg !2632, !tbaa !1068
  %tobool259 = icmp ne i32 %175, 0, !dbg !2632
  br i1 %tobool259, label %if.then.260, label %if.end.274, !dbg !2633

if.then.260:                                      ; preds = %if.end.258
  br label %do.body.261, !dbg !2634

do.body.261:                                      ; preds = %if.then.260
  %176 = bitcast %struct._object** %_py_decref_tmp262 to i8*, !dbg !2635
  call void @llvm.lifetime.start(i64 8, i8* %176) #2, !dbg !2635
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp262, metadata !579, metadata !754), !dbg !2637
  %177 = load %struct._object*, %struct._object** %modeobj, align 8, !dbg !2638, !tbaa !750
  store %struct._object* %177, %struct._object** %_py_decref_tmp262, align 8, !dbg !2637, !tbaa !750
  %178 = load %struct._object*, %struct._object** %_py_decref_tmp262, align 8, !dbg !2639, !tbaa !750
  %ob_refcnt263 = getelementptr inbounds %struct._object, %struct._object* %178, i32 0, i32 0, !dbg !2641
  %179 = load i64, i64* %ob_refcnt263, align 8, !dbg !2642, !tbaa !825
  %dec264 = add i64 %179, -1, !dbg !2642
  store i64 %dec264, i64* %ob_refcnt263, align 8, !dbg !2642, !tbaa !825
  %cmp265 = icmp ne i64 %dec264, 0, !dbg !2643
  br i1 %cmp265, label %if.then.267, label %if.else.268, !dbg !2644

if.then.267:                                      ; preds = %do.body.261
  br label %if.end.271, !dbg !2645

if.else.268:                                      ; preds = %do.body.261
  %180 = load %struct._object*, %struct._object** %_py_decref_tmp262, align 8, !dbg !2647, !tbaa !750
  %ob_type269 = getelementptr inbounds %struct._object, %struct._object* %180, i32 0, i32 1, !dbg !2649
  %181 = load %struct._typeobject*, %struct._typeobject** %ob_type269, align 8, !dbg !2649, !tbaa !808
  %tp_dealloc270 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %181, i32 0, i32 4, !dbg !2650
  %182 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc270, align 8, !dbg !2650, !tbaa !834
  %183 = load %struct._object*, %struct._object** %_py_decref_tmp262, align 8, !dbg !2651, !tbaa !750
  call void %182(%struct._object* %183), !dbg !2652
  br label %if.end.271

if.end.271:                                       ; preds = %if.else.268, %if.then.267
  %184 = bitcast %struct._object** %_py_decref_tmp262 to i8*, !dbg !2653
  call void @llvm.lifetime.end(i64 8, i8* %184) #2, !dbg !2653
  br label %do.cond.272, !dbg !2655

do.cond.272:                                      ; preds = %if.end.271
  br label %do.end.273, !dbg !2656

do.end.273:                                       ; preds = %do.cond.272
  %185 = load %struct._object*, %struct._object** %buffer, align 8, !dbg !2658, !tbaa !750
  store %struct._object* %185, %struct._object** %retval, !dbg !2659
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.402, !dbg !2659

if.end.274:                                       ; preds = %if.end.258
  %186 = load %struct._object*, %struct._object** %buffer, align 8, !dbg !2660, !tbaa !750
  %187 = load i8*, i8** %encoding, align 8, !dbg !2661, !tbaa !750
  %188 = load i8*, i8** %errors, align 8, !dbg !2662, !tbaa !750
  %189 = load i8*, i8** %newline, align 8, !dbg !2663, !tbaa !750
  %190 = load i32, i32* %line_buffering, align 4, !dbg !2664, !tbaa !1068
  %call275 = call %struct._object* (%struct._object*, i8*, ...) @_PyObject_CallFunction_SizeT(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTextIOWrapper_Type, i32 0, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), %struct._object* %186, i8* %187, i8* %188, i8* %189, i32 %190), !dbg !2665
  store %struct._object* %call275, %struct._object** %wrapper, align 8, !dbg !2666, !tbaa !750
  br label %do.body.276, !dbg !2667

do.body.276:                                      ; preds = %if.end.274
  %191 = bitcast %struct._object** %_py_tmp277 to i8*, !dbg !2668
  call void @llvm.lifetime.start(i64 8, i8* %191) #2, !dbg !2668
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp277, metadata !583, metadata !754), !dbg !2670
  %192 = load %struct._object*, %struct._object** %buffer, align 8, !dbg !2671, !tbaa !750
  store %struct._object* %192, %struct._object** %_py_tmp277, align 8, !dbg !2670, !tbaa !750
  %193 = load %struct._object*, %struct._object** %_py_tmp277, align 8, !dbg !2672, !tbaa !750
  %cmp278 = icmp ne %struct._object* %193, null, !dbg !2673
  br i1 %cmp278, label %if.then.280, label %if.end.294, !dbg !2674

if.then.280:                                      ; preds = %do.body.276
  store %struct._object* null, %struct._object** %buffer, align 8, !dbg !2675, !tbaa !750
  br label %do.body.281, !dbg !2677

do.body.281:                                      ; preds = %if.then.280
  %194 = bitcast %struct._object** %_py_decref_tmp282 to i8*, !dbg !2678
  call void @llvm.lifetime.start(i64 8, i8* %194) #2, !dbg !2678
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp282, metadata !585, metadata !754), !dbg !2680
  %195 = load %struct._object*, %struct._object** %_py_tmp277, align 8, !dbg !2681, !tbaa !750
  store %struct._object* %195, %struct._object** %_py_decref_tmp282, align 8, !dbg !2680, !tbaa !750
  %196 = load %struct._object*, %struct._object** %_py_decref_tmp282, align 8, !dbg !2682, !tbaa !750
  %ob_refcnt283 = getelementptr inbounds %struct._object, %struct._object* %196, i32 0, i32 0, !dbg !2684
  %197 = load i64, i64* %ob_refcnt283, align 8, !dbg !2685, !tbaa !825
  %dec284 = add i64 %197, -1, !dbg !2685
  store i64 %dec284, i64* %ob_refcnt283, align 8, !dbg !2685, !tbaa !825
  %cmp285 = icmp ne i64 %dec284, 0, !dbg !2686
  br i1 %cmp285, label %if.then.287, label %if.else.288, !dbg !2687

if.then.287:                                      ; preds = %do.body.281
  br label %if.end.291, !dbg !2688

if.else.288:                                      ; preds = %do.body.281
  %198 = load %struct._object*, %struct._object** %_py_decref_tmp282, align 8, !dbg !2690, !tbaa !750
  %ob_type289 = getelementptr inbounds %struct._object, %struct._object* %198, i32 0, i32 1, !dbg !2692
  %199 = load %struct._typeobject*, %struct._typeobject** %ob_type289, align 8, !dbg !2692, !tbaa !808
  %tp_dealloc290 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %199, i32 0, i32 4, !dbg !2693
  %200 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc290, align 8, !dbg !2693, !tbaa !834
  %201 = load %struct._object*, %struct._object** %_py_decref_tmp282, align 8, !dbg !2694, !tbaa !750
  call void %200(%struct._object* %201), !dbg !2695
  br label %if.end.291

if.end.291:                                       ; preds = %if.else.288, %if.then.287
  %202 = bitcast %struct._object** %_py_decref_tmp282 to i8*, !dbg !2696
  call void @llvm.lifetime.end(i64 8, i8* %202) #2, !dbg !2696
  br label %do.cond.292, !dbg !2698

do.cond.292:                                      ; preds = %if.end.291
  br label %do.end.293, !dbg !2699

do.end.293:                                       ; preds = %do.cond.292
  br label %if.end.294, !dbg !2701

if.end.294:                                       ; preds = %do.end.293, %do.body.276
  %203 = bitcast %struct._object** %_py_tmp277 to i8*, !dbg !2703
  call void @llvm.lifetime.end(i64 8, i8* %203) #2, !dbg !2703
  br label %do.cond.295, !dbg !2704

do.cond.295:                                      ; preds = %if.end.294
  br label %do.end.296, !dbg !2705

do.end.296:                                       ; preds = %do.cond.295
  %204 = load %struct._object*, %struct._object** %wrapper, align 8, !dbg !2707, !tbaa !750
  %cmp297 = icmp eq %struct._object* %204, null, !dbg !2709
  br i1 %cmp297, label %if.then.299, label %if.end.300, !dbg !2710

if.then.299:                                      ; preds = %do.end.296
  br label %error, !dbg !2711

if.end.300:                                       ; preds = %do.end.296
  %205 = load %struct._object*, %struct._object** %wrapper, align 8, !dbg !2712, !tbaa !750
  %206 = load %struct._object*, %struct._object** %modeobj, align 8, !dbg !2714, !tbaa !750
  %call301 = call i32 @_PyObject_SetAttrId(%struct._object* %205, %struct._Py_Identifier* @io_open.PyId_mode, %struct._object* %206), !dbg !2715
  %cmp302 = icmp slt i32 %call301, 0, !dbg !2716
  br i1 %cmp302, label %if.then.304, label %if.end.305, !dbg !2717

if.then.304:                                      ; preds = %if.end.300
  br label %error, !dbg !2718

if.end.305:                                       ; preds = %if.end.300
  br label %do.body.306, !dbg !2719

do.body.306:                                      ; preds = %if.end.305
  %207 = bitcast %struct._object** %_py_decref_tmp307 to i8*, !dbg !2720
  call void @llvm.lifetime.start(i64 8, i8* %207) #2, !dbg !2720
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp307, metadata !589, metadata !754), !dbg !2722
  %208 = load %struct._object*, %struct._object** %modeobj, align 8, !dbg !2723, !tbaa !750
  store %struct._object* %208, %struct._object** %_py_decref_tmp307, align 8, !dbg !2722, !tbaa !750
  %209 = load %struct._object*, %struct._object** %_py_decref_tmp307, align 8, !dbg !2724, !tbaa !750
  %ob_refcnt308 = getelementptr inbounds %struct._object, %struct._object* %209, i32 0, i32 0, !dbg !2726
  %210 = load i64, i64* %ob_refcnt308, align 8, !dbg !2727, !tbaa !825
  %dec309 = add i64 %210, -1, !dbg !2727
  store i64 %dec309, i64* %ob_refcnt308, align 8, !dbg !2727, !tbaa !825
  %cmp310 = icmp ne i64 %dec309, 0, !dbg !2728
  br i1 %cmp310, label %if.then.312, label %if.else.313, !dbg !2729

if.then.312:                                      ; preds = %do.body.306
  br label %if.end.316, !dbg !2730

if.else.313:                                      ; preds = %do.body.306
  %211 = load %struct._object*, %struct._object** %_py_decref_tmp307, align 8, !dbg !2732, !tbaa !750
  %ob_type314 = getelementptr inbounds %struct._object, %struct._object* %211, i32 0, i32 1, !dbg !2734
  %212 = load %struct._typeobject*, %struct._typeobject** %ob_type314, align 8, !dbg !2734, !tbaa !808
  %tp_dealloc315 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %212, i32 0, i32 4, !dbg !2735
  %213 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc315, align 8, !dbg !2735, !tbaa !834
  %214 = load %struct._object*, %struct._object** %_py_decref_tmp307, align 8, !dbg !2736, !tbaa !750
  call void %213(%struct._object* %214), !dbg !2737
  br label %if.end.316

if.end.316:                                       ; preds = %if.else.313, %if.then.312
  %215 = bitcast %struct._object** %_py_decref_tmp307 to i8*, !dbg !2738
  call void @llvm.lifetime.end(i64 8, i8* %215) #2, !dbg !2738
  br label %do.cond.317, !dbg !2740

do.cond.317:                                      ; preds = %if.end.316
  br label %do.end.318, !dbg !2741

do.end.318:                                       ; preds = %do.cond.317
  %216 = load %struct._object*, %struct._object** %wrapper, align 8, !dbg !2743, !tbaa !750
  store %struct._object* %216, %struct._object** %retval, !dbg !2744
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.402, !dbg !2744

error:                                            ; preds = %LeafBlock.43, %LeafBlock.36, %LeafBlock.29, %if.then.304, %if.then.299, %if.then.257, %if.then.198, %if.then.192, %if.then.109
  br label %do.body.319, !dbg !2745

do.body.319:                                      ; preds = %error
  %217 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2746
  call void @llvm.lifetime.start(i64 8, i8* %217) #2, !dbg !2746
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !591, metadata !754), !dbg !2748
  %218 = load %struct._object*, %struct._object** %raw, align 8, !dbg !2749, !tbaa !750
  store %struct._object* %218, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2748, !tbaa !750
  %219 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2750, !tbaa !750
  %cmp320 = icmp ne %struct._object* %219, null, !dbg !2751
  br i1 %cmp320, label %if.then.322, label %if.end.336, !dbg !2752

if.then.322:                                      ; preds = %do.body.319
  br label %do.body.323, !dbg !2753

do.body.323:                                      ; preds = %if.then.322
  %220 = bitcast %struct._object** %_py_decref_tmp324 to i8*, !dbg !2755
  call void @llvm.lifetime.start(i64 8, i8* %220) #2, !dbg !2755
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp324, metadata !593, metadata !754), !dbg !2757
  %221 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2758, !tbaa !750
  store %struct._object* %221, %struct._object** %_py_decref_tmp324, align 8, !dbg !2757, !tbaa !750
  %222 = load %struct._object*, %struct._object** %_py_decref_tmp324, align 8, !dbg !2759, !tbaa !750
  %ob_refcnt325 = getelementptr inbounds %struct._object, %struct._object* %222, i32 0, i32 0, !dbg !2761
  %223 = load i64, i64* %ob_refcnt325, align 8, !dbg !2762, !tbaa !825
  %dec326 = add i64 %223, -1, !dbg !2762
  store i64 %dec326, i64* %ob_refcnt325, align 8, !dbg !2762, !tbaa !825
  %cmp327 = icmp ne i64 %dec326, 0, !dbg !2763
  br i1 %cmp327, label %if.then.329, label %if.else.330, !dbg !2764

if.then.329:                                      ; preds = %do.body.323
  br label %if.end.333, !dbg !2765

if.else.330:                                      ; preds = %do.body.323
  %224 = load %struct._object*, %struct._object** %_py_decref_tmp324, align 8, !dbg !2767, !tbaa !750
  %ob_type331 = getelementptr inbounds %struct._object, %struct._object* %224, i32 0, i32 1, !dbg !2769
  %225 = load %struct._typeobject*, %struct._typeobject** %ob_type331, align 8, !dbg !2769, !tbaa !808
  %tp_dealloc332 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %225, i32 0, i32 4, !dbg !2770
  %226 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc332, align 8, !dbg !2770, !tbaa !834
  %227 = load %struct._object*, %struct._object** %_py_decref_tmp324, align 8, !dbg !2771, !tbaa !750
  call void %226(%struct._object* %227), !dbg !2772
  br label %if.end.333

if.end.333:                                       ; preds = %if.else.330, %if.then.329
  %228 = bitcast %struct._object** %_py_decref_tmp324 to i8*, !dbg !2773
  call void @llvm.lifetime.end(i64 8, i8* %228) #2, !dbg !2773
  br label %do.cond.334, !dbg !2775

do.cond.334:                                      ; preds = %if.end.333
  br label %do.end.335, !dbg !2776

do.end.335:                                       ; preds = %do.cond.334
  br label %if.end.336, !dbg !2778

if.end.336:                                       ; preds = %do.end.335, %do.body.319
  %229 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2780
  call void @llvm.lifetime.end(i64 8, i8* %229) #2, !dbg !2780
  br label %do.cond.337, !dbg !2781

do.cond.337:                                      ; preds = %if.end.336
  br label %do.end.338, !dbg !2782

do.end.338:                                       ; preds = %do.cond.337
  br label %do.body.339, !dbg !2784

do.body.339:                                      ; preds = %do.end.338
  %230 = bitcast %struct._object** %_py_xdecref_tmp340 to i8*, !dbg !2785
  call void @llvm.lifetime.start(i64 8, i8* %230) #2, !dbg !2785
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp340, metadata !596, metadata !754), !dbg !2787
  %231 = load %struct._object*, %struct._object** %modeobj, align 8, !dbg !2788, !tbaa !750
  store %struct._object* %231, %struct._object** %_py_xdecref_tmp340, align 8, !dbg !2787, !tbaa !750
  %232 = load %struct._object*, %struct._object** %_py_xdecref_tmp340, align 8, !dbg !2789, !tbaa !750
  %cmp341 = icmp ne %struct._object* %232, null, !dbg !2790
  br i1 %cmp341, label %if.then.343, label %if.end.357, !dbg !2791

if.then.343:                                      ; preds = %do.body.339
  br label %do.body.344, !dbg !2792

do.body.344:                                      ; preds = %if.then.343
  %233 = bitcast %struct._object** %_py_decref_tmp345 to i8*, !dbg !2794
  call void @llvm.lifetime.start(i64 8, i8* %233) #2, !dbg !2794
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp345, metadata !598, metadata !754), !dbg !2796
  %234 = load %struct._object*, %struct._object** %_py_xdecref_tmp340, align 8, !dbg !2797, !tbaa !750
  store %struct._object* %234, %struct._object** %_py_decref_tmp345, align 8, !dbg !2796, !tbaa !750
  %235 = load %struct._object*, %struct._object** %_py_decref_tmp345, align 8, !dbg !2798, !tbaa !750
  %ob_refcnt346 = getelementptr inbounds %struct._object, %struct._object* %235, i32 0, i32 0, !dbg !2800
  %236 = load i64, i64* %ob_refcnt346, align 8, !dbg !2801, !tbaa !825
  %dec347 = add i64 %236, -1, !dbg !2801
  store i64 %dec347, i64* %ob_refcnt346, align 8, !dbg !2801, !tbaa !825
  %cmp348 = icmp ne i64 %dec347, 0, !dbg !2802
  br i1 %cmp348, label %if.then.350, label %if.else.351, !dbg !2803

if.then.350:                                      ; preds = %do.body.344
  br label %if.end.354, !dbg !2804

if.else.351:                                      ; preds = %do.body.344
  %237 = load %struct._object*, %struct._object** %_py_decref_tmp345, align 8, !dbg !2806, !tbaa !750
  %ob_type352 = getelementptr inbounds %struct._object, %struct._object* %237, i32 0, i32 1, !dbg !2808
  %238 = load %struct._typeobject*, %struct._typeobject** %ob_type352, align 8, !dbg !2808, !tbaa !808
  %tp_dealloc353 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %238, i32 0, i32 4, !dbg !2809
  %239 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc353, align 8, !dbg !2809, !tbaa !834
  %240 = load %struct._object*, %struct._object** %_py_decref_tmp345, align 8, !dbg !2810, !tbaa !750
  call void %239(%struct._object* %240), !dbg !2811
  br label %if.end.354

if.end.354:                                       ; preds = %if.else.351, %if.then.350
  %241 = bitcast %struct._object** %_py_decref_tmp345 to i8*, !dbg !2812
  call void @llvm.lifetime.end(i64 8, i8* %241) #2, !dbg !2812
  br label %do.cond.355, !dbg !2814

do.cond.355:                                      ; preds = %if.end.354
  br label %do.end.356, !dbg !2815

do.end.356:                                       ; preds = %do.cond.355
  br label %if.end.357, !dbg !2817

if.end.357:                                       ; preds = %do.end.356, %do.body.339
  %242 = bitcast %struct._object** %_py_xdecref_tmp340 to i8*, !dbg !2819
  call void @llvm.lifetime.end(i64 8, i8* %242) #2, !dbg !2819
  br label %do.cond.358, !dbg !2820

do.cond.358:                                      ; preds = %if.end.357
  br label %do.end.359, !dbg !2821

do.end.359:                                       ; preds = %do.cond.358
  br label %do.body.360, !dbg !2823

do.body.360:                                      ; preds = %do.end.359
  %243 = bitcast %struct._object** %_py_xdecref_tmp361 to i8*, !dbg !2824
  call void @llvm.lifetime.start(i64 8, i8* %243) #2, !dbg !2824
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp361, metadata !601, metadata !754), !dbg !2826
  %244 = load %struct._object*, %struct._object** %buffer, align 8, !dbg !2827, !tbaa !750
  store %struct._object* %244, %struct._object** %_py_xdecref_tmp361, align 8, !dbg !2826, !tbaa !750
  %245 = load %struct._object*, %struct._object** %_py_xdecref_tmp361, align 8, !dbg !2828, !tbaa !750
  %cmp362 = icmp ne %struct._object* %245, null, !dbg !2829
  br i1 %cmp362, label %if.then.364, label %if.end.378, !dbg !2830

if.then.364:                                      ; preds = %do.body.360
  br label %do.body.365, !dbg !2831

do.body.365:                                      ; preds = %if.then.364
  %246 = bitcast %struct._object** %_py_decref_tmp366 to i8*, !dbg !2833
  call void @llvm.lifetime.start(i64 8, i8* %246) #2, !dbg !2833
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp366, metadata !603, metadata !754), !dbg !2835
  %247 = load %struct._object*, %struct._object** %_py_xdecref_tmp361, align 8, !dbg !2836, !tbaa !750
  store %struct._object* %247, %struct._object** %_py_decref_tmp366, align 8, !dbg !2835, !tbaa !750
  %248 = load %struct._object*, %struct._object** %_py_decref_tmp366, align 8, !dbg !2837, !tbaa !750
  %ob_refcnt367 = getelementptr inbounds %struct._object, %struct._object* %248, i32 0, i32 0, !dbg !2839
  %249 = load i64, i64* %ob_refcnt367, align 8, !dbg !2840, !tbaa !825
  %dec368 = add i64 %249, -1, !dbg !2840
  store i64 %dec368, i64* %ob_refcnt367, align 8, !dbg !2840, !tbaa !825
  %cmp369 = icmp ne i64 %dec368, 0, !dbg !2841
  br i1 %cmp369, label %if.then.371, label %if.else.372, !dbg !2842

if.then.371:                                      ; preds = %do.body.365
  br label %if.end.375, !dbg !2843

if.else.372:                                      ; preds = %do.body.365
  %250 = load %struct._object*, %struct._object** %_py_decref_tmp366, align 8, !dbg !2845, !tbaa !750
  %ob_type373 = getelementptr inbounds %struct._object, %struct._object* %250, i32 0, i32 1, !dbg !2847
  %251 = load %struct._typeobject*, %struct._typeobject** %ob_type373, align 8, !dbg !2847, !tbaa !808
  %tp_dealloc374 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %251, i32 0, i32 4, !dbg !2848
  %252 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc374, align 8, !dbg !2848, !tbaa !834
  %253 = load %struct._object*, %struct._object** %_py_decref_tmp366, align 8, !dbg !2849, !tbaa !750
  call void %252(%struct._object* %253), !dbg !2850
  br label %if.end.375

if.end.375:                                       ; preds = %if.else.372, %if.then.371
  %254 = bitcast %struct._object** %_py_decref_tmp366 to i8*, !dbg !2851
  call void @llvm.lifetime.end(i64 8, i8* %254) #2, !dbg !2851
  br label %do.cond.376, !dbg !2853

do.cond.376:                                      ; preds = %if.end.375
  br label %do.end.377, !dbg !2854

do.end.377:                                       ; preds = %do.cond.376
  br label %if.end.378, !dbg !2856

if.end.378:                                       ; preds = %do.end.377, %do.body.360
  %255 = bitcast %struct._object** %_py_xdecref_tmp361 to i8*, !dbg !2858
  call void @llvm.lifetime.end(i64 8, i8* %255) #2, !dbg !2858
  br label %do.cond.379, !dbg !2859

do.cond.379:                                      ; preds = %if.end.378
  br label %do.end.380, !dbg !2860

do.end.380:                                       ; preds = %do.cond.379
  br label %do.body.381, !dbg !2862

do.body.381:                                      ; preds = %do.end.380
  %256 = bitcast %struct._object** %_py_xdecref_tmp382 to i8*, !dbg !2863
  call void @llvm.lifetime.start(i64 8, i8* %256) #2, !dbg !2863
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp382, metadata !606, metadata !754), !dbg !2865
  %257 = load %struct._object*, %struct._object** %wrapper, align 8, !dbg !2866, !tbaa !750
  store %struct._object* %257, %struct._object** %_py_xdecref_tmp382, align 8, !dbg !2865, !tbaa !750
  %258 = load %struct._object*, %struct._object** %_py_xdecref_tmp382, align 8, !dbg !2867, !tbaa !750
  %cmp383 = icmp ne %struct._object* %258, null, !dbg !2868
  br i1 %cmp383, label %if.then.385, label %if.end.399, !dbg !2869

if.then.385:                                      ; preds = %do.body.381
  br label %do.body.386, !dbg !2870

do.body.386:                                      ; preds = %if.then.385
  %259 = bitcast %struct._object** %_py_decref_tmp387 to i8*, !dbg !2872
  call void @llvm.lifetime.start(i64 8, i8* %259) #2, !dbg !2872
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp387, metadata !608, metadata !754), !dbg !2874
  %260 = load %struct._object*, %struct._object** %_py_xdecref_tmp382, align 8, !dbg !2875, !tbaa !750
  store %struct._object* %260, %struct._object** %_py_decref_tmp387, align 8, !dbg !2874, !tbaa !750
  %261 = load %struct._object*, %struct._object** %_py_decref_tmp387, align 8, !dbg !2876, !tbaa !750
  %ob_refcnt388 = getelementptr inbounds %struct._object, %struct._object* %261, i32 0, i32 0, !dbg !2878
  %262 = load i64, i64* %ob_refcnt388, align 8, !dbg !2879, !tbaa !825
  %dec389 = add i64 %262, -1, !dbg !2879
  store i64 %dec389, i64* %ob_refcnt388, align 8, !dbg !2879, !tbaa !825
  %cmp390 = icmp ne i64 %dec389, 0, !dbg !2880
  br i1 %cmp390, label %if.then.392, label %if.else.393, !dbg !2881

if.then.392:                                      ; preds = %do.body.386
  br label %if.end.396, !dbg !2882

if.else.393:                                      ; preds = %do.body.386
  %263 = load %struct._object*, %struct._object** %_py_decref_tmp387, align 8, !dbg !2884, !tbaa !750
  %ob_type394 = getelementptr inbounds %struct._object, %struct._object* %263, i32 0, i32 1, !dbg !2886
  %264 = load %struct._typeobject*, %struct._typeobject** %ob_type394, align 8, !dbg !2886, !tbaa !808
  %tp_dealloc395 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %264, i32 0, i32 4, !dbg !2887
  %265 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc395, align 8, !dbg !2887, !tbaa !834
  %266 = load %struct._object*, %struct._object** %_py_decref_tmp387, align 8, !dbg !2888, !tbaa !750
  call void %265(%struct._object* %266), !dbg !2889
  br label %if.end.396

if.end.396:                                       ; preds = %if.else.393, %if.then.392
  %267 = bitcast %struct._object** %_py_decref_tmp387 to i8*, !dbg !2890
  call void @llvm.lifetime.end(i64 8, i8* %267) #2, !dbg !2890
  br label %do.cond.397, !dbg !2892

do.cond.397:                                      ; preds = %if.end.396
  br label %do.end.398, !dbg !2893

do.end.398:                                       ; preds = %do.cond.397
  br label %if.end.399, !dbg !2895

if.end.399:                                       ; preds = %do.end.398, %do.body.381
  %268 = bitcast %struct._object** %_py_xdecref_tmp382 to i8*, !dbg !2897
  call void @llvm.lifetime.end(i64 8, i8* %268) #2, !dbg !2897
  br label %do.cond.400, !dbg !2898

do.cond.400:                                      ; preds = %if.end.399
  br label %do.end.401, !dbg !2899

do.end.401:                                       ; preds = %do.cond.400
  store %struct._object* null, %struct._object** %retval, !dbg !2901
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.402, !dbg !2901

NewDefault.23:                                    ; preds = %LeafBlock.24
  br label %cleanup.402

NewDefault.26:                                    ; preds = %LeafBlock.29, %LeafBlock.27
  br label %cleanup.402

NewDefault.33:                                    ; preds = %LeafBlock.36, %LeafBlock.34
  br label %cleanup.402

NewDefault.40:                                    ; preds = %LeafBlock.43, %LeafBlock.41
  br label %cleanup.402

cleanup.402:                                      ; preds = %NewDefault.40, %NewDefault.33, %NewDefault.26, %NewDefault.23, %do.end.401, %do.end.318, %do.end.273, %do.end.212, %if.then.104, %if.then.98, %if.then.92, %if.then.86, %if.then.80, %if.then.74, %if.then.68, %if.then.63, %if.then.8, %if.then
  %269 = bitcast %struct._object** %wrapper to i8*, !dbg !2902
  call void @llvm.lifetime.end(i64 8, i8* %269) #2, !dbg !2902
  %270 = bitcast %struct._object** %buffer to i8*, !dbg !2902
  call void @llvm.lifetime.end(i64 8, i8* %270) #2, !dbg !2902
  %271 = bitcast %struct._object** %modeobj to i8*, !dbg !2902
  call void @llvm.lifetime.end(i64 8, i8* %271) #2, !dbg !2902
  %272 = bitcast %struct._object** %raw to i8*, !dbg !2902
  call void @llvm.lifetime.end(i64 8, i8* %272) #2, !dbg !2902
  %273 = bitcast i32* %isatty to i8*, !dbg !2902
  call void @llvm.lifetime.end(i64 4, i8* %273) #2, !dbg !2902
  %274 = bitcast i32* %line_buffering to i8*, !dbg !2902
  call void @llvm.lifetime.end(i64 4, i8* %274) #2, !dbg !2902
  %275 = bitcast i8** %m to i8*, !dbg !2902
  call void @llvm.lifetime.end(i64 8, i8* %275) #2, !dbg !2902
  %276 = bitcast [6 x i8]* %rawmode to i8*, !dbg !2902
  call void @llvm.lifetime.end(i64 6, i8* %276) #2, !dbg !2902
  %277 = bitcast i32* %universal to i8*, !dbg !2902
  call void @llvm.lifetime.end(i64 4, i8* %277) #2, !dbg !2902
  %278 = bitcast i32* %binary to i8*, !dbg !2902
  call void @llvm.lifetime.end(i64 4, i8* %278) #2, !dbg !2902
  %279 = bitcast i32* %text to i8*, !dbg !2902
  call void @llvm.lifetime.end(i64 4, i8* %279) #2, !dbg !2902
  %280 = bitcast i32* %updating to i8*, !dbg !2902
  call void @llvm.lifetime.end(i64 4, i8* %280) #2, !dbg !2902
  %281 = bitcast i32* %appending to i8*, !dbg !2902
  call void @llvm.lifetime.end(i64 4, i8* %281) #2, !dbg !2902
  %282 = bitcast i32* %writing to i8*, !dbg !2902
  call void @llvm.lifetime.end(i64 4, i8* %282) #2, !dbg !2902
  %283 = bitcast i32* %reading to i8*, !dbg !2902
  call void @llvm.lifetime.end(i64 4, i8* %283) #2, !dbg !2902
  %284 = bitcast i32* %creating to i8*, !dbg !2902
  call void @llvm.lifetime.end(i64 4, i8* %284) #2, !dbg !2902
  %285 = bitcast i32* %i to i8*, !dbg !2902
  call void @llvm.lifetime.end(i64 4, i8* %285) #2, !dbg !2902
  %286 = bitcast i8** %newline to i8*, !dbg !2902
  call void @llvm.lifetime.end(i64 8, i8* %286) #2, !dbg !2902
  %287 = bitcast i8** %errors to i8*, !dbg !2902
  call void @llvm.lifetime.end(i64 8, i8* %287) #2, !dbg !2902
  %288 = bitcast i8** %encoding to i8*, !dbg !2902
  call void @llvm.lifetime.end(i64 8, i8* %288) #2, !dbg !2902
  %289 = bitcast i32* %closefd to i8*, !dbg !2902
  call void @llvm.lifetime.end(i64 4, i8* %289) #2, !dbg !2902
  %290 = bitcast i32* %buffering to i8*, !dbg !2902
  call void @llvm.lifetime.end(i64 4, i8* %290) #2, !dbg !2902
  %291 = bitcast i8** %mode to i8*, !dbg !2902
  call void @llvm.lifetime.end(i64 8, i8* %291) #2, !dbg !2902
  %292 = bitcast %struct._object** %opener to i8*, !dbg !2902
  call void @llvm.lifetime.end(i64 8, i8* %292) #2, !dbg !2902
  %293 = bitcast %struct._object** %file to i8*, !dbg !2902
  call void @llvm.lifetime.end(i64 8, i8* %293) #2, !dbg !2902
  %294 = bitcast [9 x i8*]* %kwlist to i8*, !dbg !2902
  call void @llvm.lifetime.end(i64 72, i8* %294) #2, !dbg !2902
  %295 = load %struct._object*, %struct._object** %retval, !dbg !2902
  ret %struct._object* %295, !dbg !2902
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object*, %struct._object*, i8*, i8**, ...) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i8* @__rawmemchr(i8*, i32) #3

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #5

declare i32 @PyErr_WarnEx(%struct._object*, i8*, i64) #3

declare %struct._object* @PyUnicode_FromString(i8*) #3

declare %struct._object* @_PyObject_CallMethodId_SizeT(%struct._object*, %struct._Py_Identifier*, i8*, ...) #3

declare i64 @PyLong_AsLong(%struct._object*) #3

declare i32 @_PyObject_SetAttrId(%struct._object*, %struct._Py_Identifier*, %struct._object*) #3

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @fstat64(i32 %__fd, %struct.stat64* nonnull %__statbuf) #6 {
entry:
  %__fd.addr = alloca i32, align 4
  %__statbuf.addr = alloca %struct.stat64*, align 8
  store i32 %__fd, i32* %__fd.addr, align 4, !tbaa !1068
  call void @llvm.dbg.declare(metadata i32* %__fd.addr, metadata !636, metadata !754), !dbg !2903
  store %struct.stat64* %__statbuf, %struct.stat64** %__statbuf.addr, align 8, !tbaa !750
  call void @llvm.dbg.declare(metadata %struct.stat64** %__statbuf.addr, metadata !637, metadata !754), !dbg !2904
  %0 = load i32, i32* %__fd.addr, align 4, !dbg !2905, !tbaa !1068
  %1 = load %struct.stat64*, %struct.stat64** %__statbuf.addr, align 8, !dbg !2906, !tbaa !750
  %call = call i32 @__fxstat64(i32 1, i32 %0, %struct.stat64* %1) #2, !dbg !2907
  ret i32 %call, !dbg !2908
}

; Function Attrs: nounwind
declare i32 @__fxstat64(i32, i32, %struct.stat64*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!747, !748}
!llvm.ident = !{!749}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !369, globals: !674)
!1 = !DIFile(filename: "_iomodule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !12, !15, !247, !350, !358, !55}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !6, line: 177, baseType: !7)
!6 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !8, line: 102, baseType: !9)
!8 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !10, line: 181, baseType: !11)
!10 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!11 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !13, line: 62, baseType: !14)
!13 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!14 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !17, line: 109, baseType: !18)
!17 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!51 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!281 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!282 = !{!283, !284, !286, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !280, file: !281, line: 41, baseType: !32, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !280, file: !281, line: 42, baseType: !285, size: 64, align: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !281, line: 18, baseType: !125)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !280, file: !281, line: 43, baseType: !47, size: 32, align: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !280, file: !281, line: 45, baseType: !32, size: 64, align: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !23, file: !17, line: 390, baseType: !289, size: 64, align: 64, offset: 1920)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !291, line: 18, size: 320, align: 64, elements: !292)
!291 = !DIFile(filename: "Include/structmember.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!292 = !{!293, !294, !295, !296, !297}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !290, file: !291, line: 19, baseType: !55, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !290, file: !291, line: 20, baseType: !47, size: 32, align: 32, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !290, file: !291, line: 21, baseType: !5, size: 64, align: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !290, file: !291, line: 22, baseType: !47, size: 32, align: 32, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !290, file: !291, line: 23, baseType: !55, size: 64, align: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !23, file: !17, line: 391, baseType: !299, size: 64, align: 64, offset: 1984)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !301, line: 11, size: 320, align: 64, elements: !302)
!301 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!352 = !DIFile(filename: "./Modules/_io/_iomodule.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!353 = !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 130, size: 192, align: 64, elements: !354)
!354 = !{!355, !356, !357}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !353, file: !352, line: 131, baseType: !47, size: 32, align: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "locale_module", scope: !353, file: !352, line: 132, baseType: !15, size: 64, align: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "unsupported_operation", scope: !353, file: !352, line: 134, baseType: !15, size: 64, align: 64, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyWeakReference", file: !360, line: 10, baseType: !361)
!360 = !DIFile(filename: "Include/weakrefobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!361 = !DICompositeType(tag: DW_TAG_structure_type, name: "_PyWeakReference", file: !360, line: 16, size: 448, align: 64, elements: !362)
!362 = !{!363, !364, !365, !366, !367, !368}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !361, file: !360, line: 17, baseType: !16, size: 128, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "wr_object", scope: !361, file: !360, line: 23, baseType: !15, size: 64, align: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "wr_callback", scope: !361, file: !360, line: 26, baseType: !15, size: 64, align: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !361, file: !360, line: 31, baseType: !218, size: 64, align: 64, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "wr_prev", scope: !361, file: !360, line: 38, baseType: !358, size: 64, align: 64, offset: 320)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "wr_next", scope: !361, file: !360, line: 39, baseType: !358, size: 64, align: 64, offset: 384)
!369 = !{!370, !384, !389, !395, !413, !478, !611, !638, !654, !671}
!370 = !DISubprogram(name: "PyNumber_AsOff_t", scope: !371, file: !371, line: 475, type: !372, isLocal: false, isDefinition: true, scopeLine: 476, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct._object*, %struct._object*)* @PyNumber_AsOff_t, variables: !376)
!371 = !DIFile(filename: "./Modules/_io/_iomodule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!372 = !DISubroutineType(types: !373)
!373 = !{!374, !15, !15}
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_off_t", file: !352, line: 94, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !8, line: 92, baseType: !91)
!376 = !{!377, !378, !379, !380, !381, !382}
!377 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "item", arg: 1, scope: !370, file: !371, line: 475, type: !15)
!378 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "err", arg: 2, scope: !370, file: !371, line: 475, type: !15)
!379 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !370, file: !371, line: 477, type: !374)
!380 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "runerr", scope: !370, file: !371, line: 478, type: !15)
!381 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !370, file: !371, line: 479, type: !15)
!382 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !383, file: !371, line: 514, type: !15)
!383 = distinct !DILexicalBlock(scope: !370, file: !371, line: 514, column: 8)
!384 = !DISubprogram(name: "_PyIO_ConvertSsize_t", scope: !371, file: !371, line: 521, type: !265, isLocal: false, isDefinition: true, scopeLine: 521, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*)* @_PyIO_ConvertSsize_t, variables: !385)
!385 = !{!386, !387, !388}
!386 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !384, file: !371, line: 521, type: !15)
!387 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "result", arg: 2, scope: !384, file: !371, line: 521, type: !4)
!388 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "limit", scope: !384, file: !371, line: 522, type: !5)
!389 = !DISubprogram(name: "_PyIO_get_module_state", scope: !371, file: !371, line: 543, type: !390, isLocal: false, isDefinition: true, scopeLine: 544, flags: DIFlagPrototyped, isOptimized: true, function: %struct._PyIO_State* ()* @_PyIO_get_module_state, variables: !392)
!390 = !DISubroutineType(types: !391)
!391 = !{!350}
!392 = !{!393, !394}
!393 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mod", scope: !389, file: !371, line: 545, type: !15)
!394 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "state", scope: !389, file: !371, line: 546, type: !350)
!395 = !DISubprogram(name: "_PyIO_get_locale_module", scope: !371, file: !371, line: 557, type: !396, isLocal: false, isDefinition: true, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._PyIO_State*)* @_PyIO_get_locale_module, variables: !398)
!396 = !DISubroutineType(types: !397)
!397 = !{!15, !350}
!398 = !{!399, !400, !401, !405, !409}
!399 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !395, file: !371, line: 557, type: !350)
!400 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mod", scope: !395, file: !371, line: 559, type: !15)
!401 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !402, file: !371, line: 567, type: !15)
!402 = distinct !DILexicalBlock(scope: !403, file: !371, line: 567, column: 12)
!403 = distinct !DILexicalBlock(scope: !404, file: !371, line: 560, column: 45)
!404 = distinct !DILexicalBlock(scope: !395, file: !371, line: 560, column: 9)
!405 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !406, file: !371, line: 567, type: !15)
!406 = distinct !DILexicalBlock(scope: !407, file: !371, line: 567, column: 139)
!407 = distinct !DILexicalBlock(scope: !408, file: !371, line: 567, column: 97)
!408 = distinct !DILexicalBlock(scope: !402, file: !371, line: 567, column: 74)
!409 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !410, file: !371, line: 574, type: !15)
!410 = distinct !DILexicalBlock(scope: !411, file: !371, line: 574, column: 12)
!411 = distinct !DILexicalBlock(scope: !412, file: !371, line: 573, column: 45)
!412 = distinct !DILexicalBlock(scope: !395, file: !371, line: 573, column: 9)
!413 = !DISubprogram(name: "PyInit__io", scope: !371, file: !371, line: 633, type: !414, isLocal: false, isDefinition: true, scopeLine: 634, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit__io, variables: !416)
!414 = !DISubroutineType(types: !415)
!415 = !{!15}
!416 = !{!417, !418, !419, !423, !427, !431, !435, !439, !443, !447, !451, !455, !459, !463, !467, !471, !473, !476}
!417 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !413, file: !371, line: 635, type: !15)
!418 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "state", scope: !413, file: !371, line: 636, type: !350)
!419 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !420, file: !371, line: 675, type: !15)
!420 = distinct !DILexicalBlock(scope: !421, file: !371, line: 675, column: 177)
!421 = distinct !DILexicalBlock(scope: !422, file: !371, line: 675, column: 172)
!422 = distinct !DILexicalBlock(scope: !413, file: !371, line: 675, column: 106)
!423 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !424, file: !371, line: 676, type: !15)
!424 = distinct !DILexicalBlock(scope: !425, file: !371, line: 676, column: 189)
!425 = distinct !DILexicalBlock(scope: !426, file: !371, line: 676, column: 184)
!426 = distinct !DILexicalBlock(scope: !413, file: !371, line: 676, column: 112)
!427 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !428, file: !371, line: 677, type: !15)
!428 = distinct !DILexicalBlock(scope: !429, file: !371, line: 677, column: 209)
!429 = distinct !DILexicalBlock(scope: !430, file: !371, line: 677, column: 204)
!430 = distinct !DILexicalBlock(scope: !413, file: !371, line: 677, column: 122)
!431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !432, file: !371, line: 678, type: !15)
!432 = distinct !DILexicalBlock(scope: !433, file: !371, line: 678, column: 193)
!433 = distinct !DILexicalBlock(scope: !434, file: !371, line: 678, column: 188)
!434 = distinct !DILexicalBlock(scope: !413, file: !371, line: 678, column: 114)
!435 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !436, file: !371, line: 683, type: !15)
!436 = distinct !DILexicalBlock(scope: !437, file: !371, line: 683, column: 176)
!437 = distinct !DILexicalBlock(scope: !438, file: !371, line: 683, column: 171)
!438 = distinct !DILexicalBlock(scope: !413, file: !371, line: 683, column: 106)
!439 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !440, file: !371, line: 687, type: !15)
!440 = distinct !DILexicalBlock(scope: !441, file: !371, line: 687, column: 180)
!441 = distinct !DILexicalBlock(scope: !442, file: !371, line: 687, column: 175)
!442 = distinct !DILexicalBlock(scope: !413, file: !371, line: 687, column: 108)
!443 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !444, file: !371, line: 693, type: !15)
!444 = distinct !DILexicalBlock(scope: !445, file: !371, line: 693, column: 184)
!445 = distinct !DILexicalBlock(scope: !446, file: !371, line: 693, column: 179)
!446 = distinct !DILexicalBlock(scope: !413, file: !371, line: 693, column: 110)
!447 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !448, file: !371, line: 697, type: !15)
!448 = distinct !DILexicalBlock(scope: !449, file: !371, line: 697, column: 208)
!449 = distinct !DILexicalBlock(scope: !450, file: !371, line: 697, column: 203)
!450 = distinct !DILexicalBlock(scope: !413, file: !371, line: 697, column: 122)
!451 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !452, file: !371, line: 701, type: !15)
!452 = distinct !DILexicalBlock(scope: !453, file: !371, line: 701, column: 208)
!453 = distinct !DILexicalBlock(scope: !454, file: !371, line: 701, column: 203)
!454 = distinct !DILexicalBlock(scope: !413, file: !371, line: 701, column: 122)
!455 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !456, file: !371, line: 705, type: !15)
!456 = distinct !DILexicalBlock(scope: !457, file: !371, line: 705, column: 208)
!457 = distinct !DILexicalBlock(scope: !458, file: !371, line: 705, column: 203)
!458 = distinct !DILexicalBlock(scope: !413, file: !371, line: 705, column: 122)
!459 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !460, file: !371, line: 709, type: !15)
!460 = distinct !DILexicalBlock(scope: !461, file: !371, line: 709, column: 208)
!461 = distinct !DILexicalBlock(scope: !462, file: !371, line: 709, column: 203)
!462 = distinct !DILexicalBlock(scope: !413, file: !371, line: 709, column: 122)
!463 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !464, file: !371, line: 713, type: !15)
!464 = distinct !DILexicalBlock(scope: !465, file: !371, line: 713, column: 204)
!465 = distinct !DILexicalBlock(scope: !466, file: !371, line: 713, column: 199)
!466 = distinct !DILexicalBlock(scope: !413, file: !371, line: 713, column: 120)
!467 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !468, file: !371, line: 716, type: !15)
!468 = distinct !DILexicalBlock(scope: !469, file: !371, line: 716, column: 252)
!469 = distinct !DILexicalBlock(scope: !470, file: !371, line: 716, column: 247)
!470 = distinct !DILexicalBlock(scope: !413, file: !371, line: 716, column: 144)
!471 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !472, file: !371, line: 767, type: !15)
!472 = distinct !DILexicalBlock(scope: !413, file: !371, line: 767, column: 8)
!473 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !474, file: !371, line: 767, type: !15)
!474 = distinct !DILexicalBlock(scope: !475, file: !371, line: 767, column: 120)
!475 = distinct !DILexicalBlock(scope: !472, file: !371, line: 767, column: 86)
!476 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !477, file: !371, line: 768, type: !15)
!477 = distinct !DILexicalBlock(scope: !413, file: !371, line: 768, column: 8)
!478 = !DISubprogram(name: "io_open", scope: !371, file: !371, line: 221, type: !135, isLocal: true, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @io_open, variables: !479)
!479 = !{!480, !481, !482, !483, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !508, !509, !510, !511, !512, !513, !514, !515, !519, !521, !523, !563, !564, !565, !567, !571, !573, !575, !579, !583, !585, !589, !591, !593, !596, !598, !601, !603, !606, !608}
!480 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !478, file: !371, line: 221, type: !15)
!481 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !478, file: !371, line: 221, type: !15)
!482 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !478, file: !371, line: 221, type: !15)
!483 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kwlist", scope: !478, file: !371, line: 223, type: !484)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 576, align: 64, elements: !485)
!485 = !{!486}
!486 = !DISubrange(count: 9)
!487 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "file", scope: !478, file: !371, line: 226, type: !15)
!488 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "opener", scope: !478, file: !371, line: 226, type: !15)
!489 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !478, file: !371, line: 227, type: !55)
!490 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffering", scope: !478, file: !371, line: 228, type: !47)
!491 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "closefd", scope: !478, file: !371, line: 228, type: !47)
!492 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "encoding", scope: !478, file: !371, line: 229, type: !55)
!493 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !478, file: !371, line: 229, type: !55)
!494 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newline", scope: !478, file: !371, line: 229, type: !55)
!495 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !478, file: !371, line: 230, type: !348)
!496 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "creating", scope: !478, file: !371, line: 232, type: !47)
!497 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "reading", scope: !478, file: !371, line: 232, type: !47)
!498 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "writing", scope: !478, file: !371, line: 232, type: !47)
!499 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "appending", scope: !478, file: !371, line: 232, type: !47)
!500 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "updating", scope: !478, file: !371, line: 232, type: !47)
!501 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "text", scope: !478, file: !371, line: 233, type: !47)
!502 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "binary", scope: !478, file: !371, line: 233, type: !47)
!503 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "universal", scope: !478, file: !371, line: 233, type: !47)
!504 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rawmode", scope: !478, file: !371, line: 235, type: !505)
!505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 48, align: 8, elements: !506)
!506 = !{!507}
!507 = !DISubrange(count: 6)
!508 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !478, file: !371, line: 235, type: !55)
!509 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "line_buffering", scope: !478, file: !371, line: 236, type: !47)
!510 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "isatty", scope: !478, file: !371, line: 236, type: !47)
!511 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "raw", scope: !478, file: !371, line: 238, type: !15)
!512 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modeobj", scope: !478, file: !371, line: 238, type: !15)
!513 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffer", scope: !478, file: !371, line: 238, type: !15)
!514 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wrapper", scope: !478, file: !371, line: 238, type: !15)
!515 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !516, file: !371, line: 260, type: !34)
!516 = distinct !DILexicalBlock(scope: !517, file: !371, line: 259, column: 40)
!517 = distinct !DILexicalBlock(scope: !518, file: !371, line: 259, column: 5)
!518 = distinct !DILexicalBlock(scope: !478, file: !371, line: 259, column: 5)
!519 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !520, file: !371, line: 364, type: !15)
!520 = distinct !DILexicalBlock(scope: !478, file: !371, line: 363, column: 5)
!521 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !522, file: !371, line: 368, type: !15)
!522 = distinct !DILexicalBlock(scope: !520, file: !371, line: 368, column: 12)
!523 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "st", scope: !524, file: !371, line: 384, type: !527)
!524 = distinct !DILexicalBlock(scope: !525, file: !371, line: 383, column: 9)
!525 = distinct !DILexicalBlock(scope: !526, file: !371, line: 380, column: 24)
!526 = distinct !DILexicalBlock(scope: !478, file: !371, line: 380, column: 9)
!527 = !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !528, line: 46, size: 1152, align: 64, elements: !529)
!528 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!529 = !{!530, !532, !534, !536, !538, !540, !542, !543, !544, !545, !547, !549, !557, !558, !559}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !527, file: !528, line: 48, baseType: !531, size: 64, align: 64)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !10, line: 133, baseType: !14)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !527, file: !528, line: 53, baseType: !533, size: 64, align: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !10, line: 136, baseType: !14)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !527, file: !528, line: 61, baseType: !535, size: 64, align: 64, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !10, line: 139, baseType: !14)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !527, file: !528, line: 62, baseType: !537, size: 32, align: 32, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !10, line: 138, baseType: !348)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !527, file: !528, line: 64, baseType: !539, size: 32, align: 32, offset: 224)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !10, line: 134, baseType: !348)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !527, file: !528, line: 65, baseType: !541, size: 32, align: 32, offset: 256)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !10, line: 135, baseType: !348)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !527, file: !528, line: 67, baseType: !47, size: 32, align: 32, offset: 288)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !527, file: !528, line: 69, baseType: !531, size: 64, align: 64, offset: 320)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !527, file: !528, line: 74, baseType: !78, size: 64, align: 64, offset: 384)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !527, file: !528, line: 78, baseType: !546, size: 64, align: 64, offset: 448)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !10, line: 162, baseType: !11)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !527, file: !528, line: 80, baseType: !548, size: 64, align: 64, offset: 512)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !10, line: 167, baseType: !11)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !527, file: !528, line: 91, baseType: !550, size: 128, align: 64, offset: 576)
!550 = !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !551, line: 120, size: 128, align: 64, elements: !552)
!551 = !DIFile(filename: "/usr/include/time.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!552 = !{!553, !555}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !550, file: !551, line: 122, baseType: !554, size: 64, align: 64)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !10, line: 148, baseType: !11)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !550, file: !551, line: 123, baseType: !556, size: 64, align: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !10, line: 184, baseType: !11)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !527, file: !528, line: 92, baseType: !550, size: 128, align: 64, offset: 704)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !527, file: !528, line: 93, baseType: !550, size: 128, align: 64, offset: 832)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !527, file: !528, line: 106, baseType: !560, size: 192, align: 64, offset: 960)
!560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 192, align: 64, elements: !561)
!561 = !{!562}
!562 = !DISubrange(count: 3)
!563 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fileno", scope: !524, file: !371, line: 385, type: !11)
!564 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !524, file: !371, line: 386, type: !15)
!565 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !566, file: !371, line: 391, type: !15)
!566 = distinct !DILexicalBlock(scope: !524, file: !371, line: 391, column: 16)
!567 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !568, file: !371, line: 414, type: !15)
!568 = distinct !DILexicalBlock(scope: !569, file: !371, line: 414, column: 12)
!569 = distinct !DILexicalBlock(scope: !570, file: !371, line: 407, column: 25)
!570 = distinct !DILexicalBlock(scope: !478, file: !371, line: 407, column: 9)
!571 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Buffered_class", scope: !572, file: !371, line: 420, type: !15)
!572 = distinct !DILexicalBlock(scope: !478, file: !371, line: 419, column: 5)
!573 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !574, file: !371, line: 436, type: !15)
!574 = distinct !DILexicalBlock(scope: !478, file: !371, line: 436, column: 8)
!575 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !576, file: !371, line: 436, type: !15)
!576 = distinct !DILexicalBlock(scope: !577, file: !371, line: 436, column: 101)
!577 = distinct !DILexicalBlock(scope: !578, file: !371, line: 436, column: 76)
!578 = distinct !DILexicalBlock(scope: !574, file: !371, line: 436, column: 53)
!579 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !580, file: !371, line: 443, type: !15)
!580 = distinct !DILexicalBlock(scope: !581, file: !371, line: 443, column: 12)
!581 = distinct !DILexicalBlock(scope: !582, file: !371, line: 442, column: 17)
!582 = distinct !DILexicalBlock(scope: !478, file: !371, line: 442, column: 9)
!583 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !584, file: !371, line: 453, type: !15)
!584 = distinct !DILexicalBlock(scope: !478, file: !371, line: 453, column: 8)
!585 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !586, file: !371, line: 453, type: !15)
!586 = distinct !DILexicalBlock(scope: !587, file: !371, line: 453, column: 107)
!587 = distinct !DILexicalBlock(scope: !588, file: !371, line: 453, column: 79)
!588 = distinct !DILexicalBlock(scope: !584, file: !371, line: 453, column: 56)
!589 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !590, file: !371, line: 459, type: !15)
!590 = distinct !DILexicalBlock(scope: !478, file: !371, line: 459, column: 8)
!591 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !592, file: !371, line: 463, type: !15)
!592 = distinct !DILexicalBlock(scope: !478, file: !371, line: 463, column: 8)
!593 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !594, file: !371, line: 463, type: !15)
!594 = distinct !DILexicalBlock(scope: !595, file: !371, line: 463, column: 95)
!595 = distinct !DILexicalBlock(scope: !592, file: !371, line: 463, column: 61)
!596 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !597, file: !371, line: 464, type: !15)
!597 = distinct !DILexicalBlock(scope: !478, file: !371, line: 464, column: 8)
!598 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !599, file: !371, line: 464, type: !15)
!599 = distinct !DILexicalBlock(scope: !600, file: !371, line: 464, column: 99)
!600 = distinct !DILexicalBlock(scope: !597, file: !371, line: 464, column: 65)
!601 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !602, file: !371, line: 465, type: !15)
!602 = distinct !DILexicalBlock(scope: !478, file: !371, line: 465, column: 8)
!603 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !604, file: !371, line: 465, type: !15)
!604 = distinct !DILexicalBlock(scope: !605, file: !371, line: 465, column: 98)
!605 = distinct !DILexicalBlock(scope: !602, file: !371, line: 465, column: 64)
!606 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !607, file: !371, line: 466, type: !15)
!607 = distinct !DILexicalBlock(scope: !478, file: !371, line: 466, column: 8)
!608 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !609, file: !371, line: 466, type: !15)
!609 = distinct !DILexicalBlock(scope: !610, file: !371, line: 466, column: 99)
!610 = distinct !DILexicalBlock(scope: !607, file: !371, line: 466, column: 65)
!611 = !DISubprogram(name: "fstat64", scope: !612, file: !612, line: 517, type: !613, isLocal: false, isDefinition: true, scopeLine: 518, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.stat64*)* @fstat64, variables: !635)
!612 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!613 = !DISubroutineType(types: !614)
!614 = !{!47, !47, !615}
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64, align: 64)
!616 = !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !528, line: 119, size: 1152, align: 64, elements: !617)
!617 = !{!618, !619, !621, !622, !623, !624, !625, !626, !627, !628, !629, !631, !632, !633, !634}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !616, file: !528, line: 121, baseType: !531, size: 64, align: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !616, file: !528, line: 123, baseType: !620, size: 64, align: 64, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !10, line: 137, baseType: !14)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !616, file: !528, line: 124, baseType: !535, size: 64, align: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !616, file: !528, line: 125, baseType: !537, size: 32, align: 32, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !616, file: !528, line: 132, baseType: !539, size: 32, align: 32, offset: 224)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !616, file: !528, line: 133, baseType: !541, size: 32, align: 32, offset: 256)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !616, file: !528, line: 135, baseType: !47, size: 32, align: 32, offset: 288)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !616, file: !528, line: 136, baseType: !531, size: 64, align: 64, offset: 320)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !616, file: !528, line: 137, baseType: !78, size: 64, align: 64, offset: 384)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !616, file: !528, line: 143, baseType: !546, size: 64, align: 64, offset: 448)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !616, file: !528, line: 144, baseType: !630, size: 64, align: 64, offset: 512)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !10, line: 168, baseType: !11)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !616, file: !528, line: 152, baseType: !550, size: 128, align: 64, offset: 576)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !616, file: !528, line: 153, baseType: !550, size: 128, align: 64, offset: 704)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !616, file: !528, line: 154, baseType: !550, size: 128, align: 64, offset: 832)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !616, file: !528, line: 164, baseType: !560, size: 192, align: 64, offset: 960)
!635 = !{!636, !637}
!636 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__fd", arg: 1, scope: !611, file: !612, line: 517, type: !47)
!637 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__statbuf", arg: 2, scope: !611, file: !612, line: 517, type: !615)
!638 = !DISubprogram(name: "iomodule_traverse", scope: !371, file: !371, line: 582, type: !261, isLocal: true, isDefinition: true, scopeLine: 582, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @iomodule_traverse, variables: !639)
!639 = !{!640, !641, !642, !643, !644, !650}
!640 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mod", arg: 1, scope: !638, file: !371, line: 582, type: !15)
!641 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !638, file: !371, line: 582, type: !263)
!642 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !638, file: !371, line: 582, type: !4)
!643 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "state", scope: !638, file: !371, line: 583, type: !350)
!644 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !645, file: !371, line: 587, type: !47)
!645 = distinct !DILexicalBlock(scope: !646, file: !371, line: 587, column: 40)
!646 = distinct !DILexicalBlock(scope: !647, file: !371, line: 587, column: 18)
!647 = distinct !DILexicalBlock(scope: !648, file: !371, line: 587, column: 12)
!648 = distinct !DILexicalBlock(scope: !649, file: !371, line: 586, column: 45)
!649 = distinct !DILexicalBlock(scope: !638, file: !371, line: 586, column: 9)
!650 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !651, file: !371, line: 589, type: !47)
!651 = distinct !DILexicalBlock(scope: !652, file: !371, line: 589, column: 44)
!652 = distinct !DILexicalBlock(scope: !653, file: !371, line: 589, column: 14)
!653 = distinct !DILexicalBlock(scope: !638, file: !371, line: 589, column: 8)
!654 = !DISubprogram(name: "iomodule_clear", scope: !371, file: !371, line: 595, type: !144, isLocal: true, isDefinition: true, scopeLine: 595, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @iomodule_clear, variables: !655)
!655 = !{!656, !657, !658, !661, !665, !667}
!656 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mod", arg: 1, scope: !654, file: !371, line: 595, type: !15)
!657 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "state", scope: !654, file: !371, line: 596, type: !350)
!658 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !659, file: !371, line: 600, type: !15)
!659 = distinct !DILexicalBlock(scope: !660, file: !371, line: 600, column: 12)
!660 = distinct !DILexicalBlock(scope: !654, file: !371, line: 599, column: 9)
!661 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !662, file: !371, line: 600, type: !15)
!662 = distinct !DILexicalBlock(scope: !663, file: !371, line: 600, column: 139)
!663 = distinct !DILexicalBlock(scope: !664, file: !371, line: 600, column: 97)
!664 = distinct !DILexicalBlock(scope: !659, file: !371, line: 600, column: 74)
!665 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !666, file: !371, line: 601, type: !15)
!666 = distinct !DILexicalBlock(scope: !654, file: !371, line: 601, column: 8)
!667 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !668, file: !371, line: 601, type: !15)
!668 = distinct !DILexicalBlock(scope: !669, file: !371, line: 601, column: 151)
!669 = distinct !DILexicalBlock(scope: !670, file: !371, line: 601, column: 101)
!670 = distinct !DILexicalBlock(scope: !666, file: !371, line: 601, column: 78)
!671 = !DISubprogram(name: "iomodule_free", scope: !371, file: !371, line: 606, type: !40, isLocal: true, isDefinition: true, scopeLine: 606, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @iomodule_free, variables: !672)
!672 = !{!673}
!673 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mod", arg: 1, scope: !671, file: !371, line: 606, type: !15)
!674 = !{!675, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !729, !733, !741, !742, !743}
!675 = !DIGlobalVariable(name: "_PyIO_Module", scope: !0, file: !371, line: 620, type: !676, isLocal: false, isDefinition: true, variable: %struct.PyModuleDef* @_PyIO_Module)
!676 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !677, line: 47, size: 832, align: 64, elements: !678)
!677 = !DIFile(filename: "Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!678 = !{!679, !688, !689, !690, !691, !694, !695, !696, !697}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !676, file: !677, line: 48, baseType: !680, size: 320, align: 64)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !677, line: 38, baseType: !681)
!681 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !677, line: 33, size: 320, align: 64, elements: !682)
!682 = !{!683, !684, !686, !687}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !681, file: !677, line: 34, baseType: !16, size: 128, align: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !681, file: !677, line: 35, baseType: !685, size: 64, align: 64, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64, align: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !681, file: !677, line: 36, baseType: !5, size: 64, align: 64, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !681, file: !677, line: 37, baseType: !15, size: 64, align: 64, offset: 256)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !676, file: !677, line: 49, baseType: !32, size: 64, align: 64, offset: 320)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !676, file: !677, line: 50, baseType: !32, size: 64, align: 64, offset: 384)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !676, file: !677, line: 51, baseType: !5, size: 64, align: 64, offset: 448)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !676, file: !677, line: 52, baseType: !692, size: 64, align: 64, offset: 512)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64, align: 64)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !676, file: !677, line: 53, baseType: !142, size: 64, align: 64, offset: 576)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !676, file: !677, line: 54, baseType: !259, size: 64, align: 64, offset: 640)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !676, file: !677, line: 55, baseType: !142, size: 64, align: 64, offset: 704)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !676, file: !677, line: 56, baseType: !336, size: 64, align: 64, offset: 768)
!698 = !DIGlobalVariable(name: "_PyIO_str_close", scope: !0, file: !371, line: 26, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_close)
!699 = !DIGlobalVariable(name: "_PyIO_str_closed", scope: !0, file: !371, line: 27, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_closed)
!700 = !DIGlobalVariable(name: "_PyIO_str_decode", scope: !0, file: !371, line: 28, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_decode)
!701 = !DIGlobalVariable(name: "_PyIO_str_encode", scope: !0, file: !371, line: 29, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_encode)
!702 = !DIGlobalVariable(name: "_PyIO_str_fileno", scope: !0, file: !371, line: 30, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_fileno)
!703 = !DIGlobalVariable(name: "_PyIO_str_flush", scope: !0, file: !371, line: 31, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_flush)
!704 = !DIGlobalVariable(name: "_PyIO_str_getstate", scope: !0, file: !371, line: 32, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_getstate)
!705 = !DIGlobalVariable(name: "_PyIO_str_isatty", scope: !0, file: !371, line: 33, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_isatty)
!706 = !DIGlobalVariable(name: "_PyIO_str_newlines", scope: !0, file: !371, line: 34, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_newlines)
!707 = !DIGlobalVariable(name: "_PyIO_str_nl", scope: !0, file: !371, line: 35, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_nl)
!708 = !DIGlobalVariable(name: "_PyIO_str_read", scope: !0, file: !371, line: 36, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_read)
!709 = !DIGlobalVariable(name: "_PyIO_str_read1", scope: !0, file: !371, line: 37, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_read1)
!710 = !DIGlobalVariable(name: "_PyIO_str_readable", scope: !0, file: !371, line: 38, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_readable)
!711 = !DIGlobalVariable(name: "_PyIO_str_readall", scope: !0, file: !371, line: 39, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_readall)
!712 = !DIGlobalVariable(name: "_PyIO_str_readinto", scope: !0, file: !371, line: 40, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_readinto)
!713 = !DIGlobalVariable(name: "_PyIO_str_readline", scope: !0, file: !371, line: 41, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_readline)
!714 = !DIGlobalVariable(name: "_PyIO_str_reset", scope: !0, file: !371, line: 42, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_reset)
!715 = !DIGlobalVariable(name: "_PyIO_str_seek", scope: !0, file: !371, line: 43, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_seek)
!716 = !DIGlobalVariable(name: "_PyIO_str_seekable", scope: !0, file: !371, line: 44, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_seekable)
!717 = !DIGlobalVariable(name: "_PyIO_str_setstate", scope: !0, file: !371, line: 45, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_setstate)
!718 = !DIGlobalVariable(name: "_PyIO_str_tell", scope: !0, file: !371, line: 46, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_tell)
!719 = !DIGlobalVariable(name: "_PyIO_str_truncate", scope: !0, file: !371, line: 47, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_truncate)
!720 = !DIGlobalVariable(name: "_PyIO_str_writable", scope: !0, file: !371, line: 48, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_writable)
!721 = !DIGlobalVariable(name: "_PyIO_str_write", scope: !0, file: !371, line: 49, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_str_write)
!722 = !DIGlobalVariable(name: "_PyIO_empty_str", scope: !0, file: !371, line: 51, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_empty_str)
!723 = !DIGlobalVariable(name: "_PyIO_empty_bytes", scope: !0, file: !371, line: 52, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_empty_bytes)
!724 = !DIGlobalVariable(name: "_PyIO_zero", scope: !0, file: !371, line: 53, type: !15, isLocal: false, isDefinition: true, variable: %struct._object** @_PyIO_zero)
!725 = !DIGlobalVariable(name: "module_doc", scope: !0, file: !371, line: 56, type: !726, isLocal: true, isDefinition: true, variable: [1473 x i8]* @module_doc)
!726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 11784, align: 8, elements: !727)
!727 = !{!728}
!728 = !DISubrange(count: 1473)
!729 = !DIGlobalVariable(name: "module_methods", scope: !0, file: !371, line: 615, type: !730, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @module_methods)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !693, size: 512, align: 64, elements: !731)
!731 = !{!732}
!732 = !DISubrange(count: 2)
!733 = !DIGlobalVariable(name: "PyId_isatty", scope: !478, file: !371, line: 240, type: !734, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @io_open.PyId_isatty)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !17, line: 144, baseType: !735)
!735 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !17, line: 140, size: 192, align: 64, elements: !736)
!736 = !{!737, !739, !740}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !735, file: !17, line: 141, baseType: !738, size: 64, align: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64, align: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !735, file: !17, line: 142, baseType: !32, size: 64, align: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !735, file: !17, line: 143, baseType: !15, size: 64, align: 64, offset: 128)
!741 = !DIGlobalVariable(name: "PyId_fileno", scope: !478, file: !371, line: 241, type: !734, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @io_open.PyId_fileno)
!742 = !DIGlobalVariable(name: "PyId_mode", scope: !478, file: !371, line: 242, type: !734, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @io_open.PyId_mode)
!743 = !DIGlobalVariable(name: "open_doc", scope: !0, file: !371, line: 96, type: !744, isLocal: true, isDefinition: true, variable: [6355 x i8]* @open_doc)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 50840, align: 8, elements: !745)
!745 = !{!746}
!746 = !DISubrange(count: 6355)
!747 = !{i32 2, !"Dwarf Version", i32 4}
!748 = !{i32 2, !"Debug Info Version", i32 3}
!749 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!750 = !{!751, !751, i64 0}
!751 = !{!"any pointer", !752, i64 0}
!752 = !{!"omnipotent char", !753, i64 0}
!753 = !{!"Simple C/C++ TBAA"}
!754 = !DIExpression()
!755 = !DILocation(line: 475, column: 28, scope: !370)
!756 = !DILocation(line: 475, column: 44, scope: !370)
!757 = !DILocation(line: 477, column: 5, scope: !370)
!758 = !DILocation(line: 477, column: 14, scope: !370)
!759 = !DILocation(line: 478, column: 5, scope: !370)
!760 = !DILocation(line: 478, column: 15, scope: !370)
!761 = !DILocation(line: 479, column: 5, scope: !370)
!762 = !DILocation(line: 479, column: 15, scope: !370)
!763 = !DILocation(line: 479, column: 38, scope: !370)
!764 = !DILocation(line: 479, column: 23, scope: !370)
!765 = !DILocation(line: 480, column: 9, scope: !766)
!766 = distinct !DILexicalBlock(scope: !370, file: !371, line: 480, column: 9)
!767 = !DILocation(line: 480, column: 15, scope: !766)
!768 = !DILocation(line: 480, column: 9, scope: !370)
!769 = !DILocation(line: 481, column: 9, scope: !766)
!770 = !DILocation(line: 484, column: 31, scope: !370)
!771 = !DILocation(line: 484, column: 14, scope: !370)
!772 = !DILocation(line: 484, column: 12, scope: !370)
!773 = !{!774, !774, i64 0}
!774 = !{!"long", !752, i64 0}
!775 = !DILocation(line: 485, column: 9, scope: !776)
!776 = distinct !DILexicalBlock(scope: !370, file: !371, line: 485, column: 9)
!777 = !DILocation(line: 485, column: 16, scope: !776)
!778 = !DILocation(line: 485, column: 22, scope: !776)
!779 = !DILocation(line: 485, column: 36, scope: !780)
!780 = !DILexicalBlockFile(scope: !776, file: !371, discriminator: 1)
!781 = !DILocation(line: 485, column: 34, scope: !776)
!782 = !DILocation(line: 485, column: 9, scope: !370)
!783 = !DILocation(line: 486, column: 9, scope: !776)
!784 = !DILocation(line: 489, column: 38, scope: !785)
!785 = distinct !DILexicalBlock(scope: !370, file: !371, line: 489, column: 9)
!786 = !DILocation(line: 489, column: 46, scope: !785)
!787 = !DILocation(line: 489, column: 10, scope: !785)
!788 = !DILocation(line: 489, column: 9, scope: !370)
!789 = !DILocation(line: 490, column: 9, scope: !785)
!790 = !DILocation(line: 492, column: 5, scope: !370)
!791 = !DILocation(line: 496, column: 10, scope: !792)
!792 = distinct !DILexicalBlock(scope: !370, file: !371, line: 496, column: 9)
!793 = !DILocation(line: 496, column: 9, scope: !370)
!794 = !DILocation(line: 501, column: 26, scope: !795)
!795 = distinct !DILexicalBlock(scope: !796, file: !371, line: 501, column: 13)
!796 = distinct !DILexicalBlock(scope: !792, file: !371, line: 496, column: 15)
!797 = !DILocation(line: 501, column: 13, scope: !795)
!798 = !DILocation(line: 501, column: 33, scope: !795)
!799 = !DILocation(line: 501, column: 13, scope: !796)
!800 = !DILocation(line: 502, column: 20, scope: !795)
!801 = !DILocation(line: 502, column: 13, scope: !795)
!802 = !DILocation(line: 504, column: 20, scope: !795)
!803 = !DILocation(line: 505, column: 5, scope: !796)
!804 = !DILocation(line: 508, column: 22, scope: !805)
!805 = distinct !DILexicalBlock(scope: !792, file: !371, line: 506, column: 10)
!806 = !DILocation(line: 510, column: 22, scope: !805)
!807 = !DILocation(line: 510, column: 28, scope: !805)
!808 = !{!809, !751, i64 8}
!809 = !{!"_object", !774, i64 0, !751, i64 8}
!810 = !DILocation(line: 510, column: 37, scope: !805)
!811 = !{!812, !751, i64 24}
!812 = !{!"_typeobject", !813, i64 0, !751, i64 24, !774, i64 32, !774, i64 40, !751, i64 48, !751, i64 56, !751, i64 64, !751, i64 72, !751, i64 80, !751, i64 88, !751, i64 96, !751, i64 104, !751, i64 112, !751, i64 120, !751, i64 128, !751, i64 136, !751, i64 144, !751, i64 152, !751, i64 160, !774, i64 168, !751, i64 176, !751, i64 184, !751, i64 192, !751, i64 200, !774, i64 208, !751, i64 216, !751, i64 224, !751, i64 232, !751, i64 240, !751, i64 248, !751, i64 256, !751, i64 264, !751, i64 272, !751, i64 280, !774, i64 288, !751, i64 296, !751, i64 304, !751, i64 312, !751, i64 320, !751, i64 328, !751, i64 336, !751, i64 344, !751, i64 352, !751, i64 360, !751, i64 368, !751, i64 376, !814, i64 384, !751, i64 392}
!813 = !{!"", !809, i64 0, !774, i64 16}
!814 = !{!"int", !752, i64 0}
!815 = !DILocation(line: 508, column: 9, scope: !805)
!816 = !DILocation(line: 514, column: 5, scope: !370)
!817 = !DILocation(line: 514, column: 10, scope: !818)
!818 = !DILexicalBlockFile(scope: !383, file: !371, discriminator: 1)
!819 = !DILocation(line: 514, column: 20, scope: !383)
!820 = !DILocation(line: 514, column: 50, scope: !383)
!821 = !DILocation(line: 514, column: 66, scope: !822)
!822 = distinct !DILexicalBlock(scope: !383, file: !371, line: 514, column: 63)
!823 = !DILocation(line: 514, column: 83, scope: !822)
!824 = !DILocation(line: 514, column: 63, scope: !822)
!825 = !{!809, !774, i64 0}
!826 = !DILocation(line: 514, column: 93, scope: !822)
!827 = !DILocation(line: 514, column: 63, scope: !383)
!828 = !DILocation(line: 514, column: 63, scope: !829)
!829 = !DILexicalBlockFile(scope: !383, file: !371, discriminator: 2)
!830 = !DILocation(line: 514, column: 124, scope: !831)
!831 = !DILexicalBlockFile(scope: !822, file: !371, discriminator: 3)
!832 = !DILocation(line: 514, column: 142, scope: !822)
!833 = !DILocation(line: 514, column: 152, scope: !822)
!834 = !{!812, !751, i64 48}
!835 = !DILocation(line: 514, column: 177, scope: !822)
!836 = !DILocation(line: 514, column: 108, scope: !822)
!837 = !DILocation(line: 514, column: 196, scope: !838)
!838 = !DILexicalBlockFile(scope: !370, file: !371, discriminator: 4)
!839 = !DILocation(line: 514, column: 196, scope: !383)
!840 = !DILocation(line: 514, column: 196, scope: !841)
!841 = !DILexicalBlockFile(scope: !383, file: !371, discriminator: 5)
!842 = !DILocation(line: 515, column: 12, scope: !370)
!843 = !DILocation(line: 515, column: 5, scope: !370)
!844 = !DILocation(line: 516, column: 1, scope: !370)
!845 = !DILocation(line: 521, column: 32, scope: !384)
!846 = !DILocation(line: 521, column: 43, scope: !384)
!847 = !DILocation(line: 522, column: 5, scope: !384)
!848 = !DILocation(line: 522, column: 16, scope: !384)
!849 = !DILocation(line: 523, column: 9, scope: !850)
!850 = distinct !DILexicalBlock(scope: !384, file: !371, line: 523, column: 9)
!851 = !DILocation(line: 523, column: 13, scope: !850)
!852 = !DILocation(line: 523, column: 9, scope: !384)
!853 = !DILocation(line: 524, column: 15, scope: !854)
!854 = distinct !DILexicalBlock(scope: !850, file: !371, line: 523, column: 35)
!855 = !DILocation(line: 525, column: 5, scope: !854)
!856 = !DILocation(line: 526, column: 29, scope: !857)
!857 = distinct !DILexicalBlock(scope: !850, file: !371, line: 526, column: 14)
!858 = !DILocation(line: 526, column: 14, scope: !857)
!859 = !DILocation(line: 526, column: 14, scope: !850)
!860 = !DILocation(line: 527, column: 36, scope: !861)
!861 = distinct !DILexicalBlock(scope: !857, file: !371, line: 526, column: 35)
!862 = !DILocation(line: 527, column: 41, scope: !861)
!863 = !DILocation(line: 527, column: 17, scope: !861)
!864 = !DILocation(line: 527, column: 15, scope: !861)
!865 = !DILocation(line: 528, column: 13, scope: !866)
!866 = distinct !DILexicalBlock(scope: !861, file: !371, line: 528, column: 13)
!867 = !DILocation(line: 528, column: 19, scope: !866)
!868 = !DILocation(line: 528, column: 25, scope: !866)
!869 = !DILocation(line: 528, column: 28, scope: !870)
!870 = !DILexicalBlockFile(scope: !866, file: !371, discriminator: 1)
!871 = !DILocation(line: 528, column: 13, scope: !861)
!872 = !DILocation(line: 529, column: 13, scope: !866)
!873 = !DILocation(line: 530, column: 5, scope: !861)
!874 = !DILocation(line: 532, column: 22, scope: !875)
!875 = distinct !DILexicalBlock(scope: !857, file: !371, line: 531, column: 10)
!876 = !DILocation(line: 534, column: 36, scope: !875)
!877 = !DILocation(line: 534, column: 43, scope: !875)
!878 = !DILocation(line: 534, column: 53, scope: !875)
!879 = !DILocation(line: 532, column: 9, scope: !875)
!880 = !DILocation(line: 535, column: 9, scope: !875)
!881 = !DILocation(line: 537, column: 31, scope: !384)
!882 = !DILocation(line: 537, column: 21, scope: !384)
!883 = !DILocation(line: 537, column: 7, scope: !384)
!884 = !DILocation(line: 537, column: 29, scope: !384)
!885 = !DILocation(line: 538, column: 5, scope: !384)
!886 = !DILocation(line: 539, column: 1, scope: !384)
!887 = !DILocation(line: 545, column: 5, scope: !389)
!888 = !DILocation(line: 545, column: 15, scope: !389)
!889 = !DILocation(line: 545, column: 21, scope: !389)
!890 = !DILocation(line: 546, column: 5, scope: !389)
!891 = !DILocation(line: 546, column: 18, scope: !389)
!892 = !DILocation(line: 547, column: 9, scope: !893)
!893 = distinct !DILexicalBlock(scope: !389, file: !371, line: 547, column: 9)
!894 = !DILocation(line: 547, column: 13, scope: !893)
!895 = !DILocation(line: 547, column: 27, scope: !893)
!896 = !DILocation(line: 547, column: 73, scope: !897)
!897 = !DILexicalBlockFile(scope: !893, file: !371, discriminator: 1)
!898 = !DILocation(line: 547, column: 55, scope: !893)
!899 = !DILocation(line: 547, column: 40, scope: !893)
!900 = !DILocation(line: 547, column: 37, scope: !893)
!901 = !DILocation(line: 547, column: 80, scope: !893)
!902 = !DILocation(line: 547, column: 9, scope: !389)
!903 = !DILocation(line: 548, column: 25, scope: !904)
!904 = distinct !DILexicalBlock(scope: !893, file: !371, line: 547, column: 95)
!905 = !DILocation(line: 548, column: 9, scope: !904)
!906 = !DILocation(line: 551, column: 9, scope: !904)
!907 = !DILocation(line: 553, column: 12, scope: !389)
!908 = !DILocation(line: 553, column: 5, scope: !389)
!909 = !DILocation(line: 554, column: 1, scope: !389)
!910 = !DILocation(line: 557, column: 38, scope: !395)
!911 = !DILocation(line: 559, column: 5, scope: !395)
!912 = !DILocation(line: 559, column: 15, scope: !395)
!913 = !DILocation(line: 560, column: 9, scope: !404)
!914 = !DILocation(line: 560, column: 16, scope: !404)
!915 = !{!916, !751, i64 8}
!916 = !{!"", !814, i64 0, !751, i64 8, !751, i64 16}
!917 = !DILocation(line: 560, column: 30, scope: !404)
!918 = !DILocation(line: 560, column: 9, scope: !395)
!919 = !DILocation(line: 562, column: 51, scope: !403)
!920 = !DILocation(line: 562, column: 58, scope: !403)
!921 = !DILocation(line: 562, column: 31, scope: !403)
!922 = !DILocation(line: 562, column: 75, scope: !403)
!923 = !{!924, !751, i64 16}
!924 = !{!"_PyWeakReference", !809, i64 0, !751, i64 16, !751, i64 24, !774, i64 32, !751, i64 40, !751, i64 48}
!925 = !DILocation(line: 562, column: 88, scope: !403)
!926 = !DILocation(line: 562, column: 99, scope: !403)
!927 = !DILocation(line: 562, column: 16, scope: !403)
!928 = !DILocation(line: 562, column: 126, scope: !929)
!929 = !DILexicalBlockFile(scope: !403, file: !371, discriminator: 1)
!930 = !DILocation(line: 562, column: 133, scope: !403)
!931 = !DILocation(line: 562, column: 106, scope: !403)
!932 = !DILocation(line: 562, column: 150, scope: !403)
!933 = !DILocation(line: 562, column: 16, scope: !934)
!934 = !DILexicalBlockFile(scope: !403, file: !371, discriminator: 2)
!935 = !DILocation(line: 562, column: 13, scope: !936)
!936 = !DILexicalBlockFile(scope: !937, file: !371, discriminator: 4)
!937 = !DILexicalBlockFile(scope: !403, file: !371, discriminator: 3)
!938 = !DILocation(line: 563, column: 13, scope: !939)
!939 = distinct !DILexicalBlock(scope: !403, file: !371, line: 563, column: 13)
!940 = !DILocation(line: 563, column: 17, scope: !939)
!941 = !DILocation(line: 563, column: 13, scope: !403)
!942 = !DILocation(line: 564, column: 29, scope: !943)
!943 = distinct !DILexicalBlock(scope: !939, file: !371, line: 563, column: 39)
!944 = !DILocation(line: 564, column: 36, scope: !943)
!945 = !DILocation(line: 564, column: 45, scope: !943)
!946 = !DILocation(line: 565, column: 20, scope: !943)
!947 = !DILocation(line: 565, column: 13, scope: !943)
!948 = !DILocation(line: 567, column: 9, scope: !403)
!949 = !DILocation(line: 567, column: 14, scope: !950)
!950 = !DILexicalBlockFile(scope: !402, file: !371, discriminator: 1)
!951 = !DILocation(line: 567, column: 24, scope: !402)
!952 = !DILocation(line: 567, column: 47, scope: !402)
!953 = !DILocation(line: 567, column: 54, scope: !402)
!954 = !DILocation(line: 567, column: 74, scope: !408)
!955 = !DILocation(line: 567, column: 82, scope: !408)
!956 = !DILocation(line: 567, column: 74, scope: !402)
!957 = !DILocation(line: 567, column: 100, scope: !958)
!958 = !DILexicalBlockFile(scope: !407, file: !371, discriminator: 2)
!959 = !DILocation(line: 567, column: 107, scope: !407)
!960 = !DILocation(line: 567, column: 122, scope: !407)
!961 = !DILocation(line: 567, column: 136, scope: !407)
!962 = !DILocation(line: 567, column: 141, scope: !963)
!963 = !DILexicalBlockFile(scope: !406, file: !371, discriminator: 4)
!964 = !DILocation(line: 567, column: 151, scope: !406)
!965 = !DILocation(line: 567, column: 181, scope: !406)
!966 = !DILocation(line: 567, column: 199, scope: !967)
!967 = distinct !DILexicalBlock(scope: !406, file: !371, line: 567, column: 196)
!968 = !DILocation(line: 567, column: 216, scope: !967)
!969 = !DILocation(line: 567, column: 196, scope: !967)
!970 = !DILocation(line: 567, column: 226, scope: !967)
!971 = !DILocation(line: 567, column: 196, scope: !406)
!972 = !DILocation(line: 567, column: 196, scope: !973)
!973 = !DILexicalBlockFile(scope: !406, file: !371, discriminator: 5)
!974 = !DILocation(line: 567, column: 257, scope: !975)
!975 = !DILexicalBlockFile(scope: !967, file: !371, discriminator: 6)
!976 = !DILocation(line: 567, column: 275, scope: !967)
!977 = !DILocation(line: 567, column: 285, scope: !967)
!978 = !DILocation(line: 567, column: 310, scope: !967)
!979 = !DILocation(line: 567, column: 241, scope: !967)
!980 = !DILocation(line: 567, column: 329, scope: !981)
!981 = !DILexicalBlockFile(scope: !407, file: !371, discriminator: 7)
!982 = !DILocation(line: 567, column: 329, scope: !406)
!983 = !DILocation(line: 567, column: 329, scope: !984)
!984 = !DILexicalBlockFile(scope: !406, file: !371, discriminator: 8)
!985 = !DILocation(line: 567, column: 342, scope: !986)
!986 = !DILexicalBlockFile(scope: !407, file: !371, discriminator: 9)
!987 = !DILocation(line: 567, column: 344, scope: !988)
!988 = !DILexicalBlockFile(scope: !937, file: !371, discriminator: 10)
!989 = !DILocation(line: 567, column: 344, scope: !402)
!990 = !DILocation(line: 567, column: 344, scope: !991)
!991 = !DILexicalBlockFile(scope: !402, file: !371, discriminator: 11)
!992 = !DILocation(line: 568, column: 5, scope: !403)
!993 = !DILocation(line: 569, column: 11, scope: !395)
!994 = !DILocation(line: 569, column: 9, scope: !395)
!995 = !DILocation(line: 570, column: 9, scope: !996)
!996 = distinct !DILexicalBlock(scope: !395, file: !371, line: 570, column: 9)
!997 = !DILocation(line: 570, column: 13, scope: !996)
!998 = !DILocation(line: 570, column: 9, scope: !395)
!999 = !DILocation(line: 571, column: 9, scope: !996)
!1000 = !DILocation(line: 572, column: 45, scope: !395)
!1001 = !DILocation(line: 572, column: 28, scope: !395)
!1002 = !DILocation(line: 572, column: 5, scope: !395)
!1003 = !DILocation(line: 572, column: 12, scope: !395)
!1004 = !DILocation(line: 572, column: 26, scope: !395)
!1005 = !DILocation(line: 573, column: 9, scope: !412)
!1006 = !DILocation(line: 573, column: 16, scope: !412)
!1007 = !DILocation(line: 573, column: 30, scope: !412)
!1008 = !DILocation(line: 573, column: 9, scope: !395)
!1009 = !DILocation(line: 574, column: 9, scope: !411)
!1010 = !DILocation(line: 574, column: 14, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !410, file: !371, discriminator: 1)
!1012 = !DILocation(line: 574, column: 24, scope: !410)
!1013 = !DILocation(line: 574, column: 54, scope: !410)
!1014 = !DILocation(line: 574, column: 68, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !410, file: !371, line: 574, column: 65)
!1016 = !DILocation(line: 574, column: 85, scope: !1015)
!1017 = !DILocation(line: 574, column: 65, scope: !1015)
!1018 = !DILocation(line: 574, column: 95, scope: !1015)
!1019 = !DILocation(line: 574, column: 65, scope: !410)
!1020 = !DILocation(line: 574, column: 65, scope: !1021)
!1021 = !DILexicalBlockFile(scope: !410, file: !371, discriminator: 2)
!1022 = !DILocation(line: 574, column: 126, scope: !1023)
!1023 = !DILexicalBlockFile(scope: !1015, file: !371, discriminator: 3)
!1024 = !DILocation(line: 574, column: 144, scope: !1015)
!1025 = !DILocation(line: 574, column: 154, scope: !1015)
!1026 = !DILocation(line: 574, column: 179, scope: !1015)
!1027 = !DILocation(line: 574, column: 110, scope: !1015)
!1028 = !DILocation(line: 574, column: 198, scope: !1029)
!1029 = !DILexicalBlockFile(scope: !411, file: !371, discriminator: 4)
!1030 = !DILocation(line: 574, column: 198, scope: !410)
!1031 = !DILocation(line: 574, column: 198, scope: !1032)
!1032 = !DILexicalBlockFile(scope: !410, file: !371, discriminator: 5)
!1033 = !DILocation(line: 575, column: 9, scope: !411)
!1034 = !DILocation(line: 577, column: 12, scope: !395)
!1035 = !DILocation(line: 577, column: 5, scope: !395)
!1036 = !DILocation(line: 578, column: 1, scope: !395)
!1037 = !DILocation(line: 582, column: 29, scope: !638)
!1038 = !DILocation(line: 582, column: 44, scope: !638)
!1039 = !DILocation(line: 582, column: 57, scope: !638)
!1040 = !DILocation(line: 583, column: 5, scope: !638)
!1041 = !DILocation(line: 583, column: 18, scope: !638)
!1042 = !DILocation(line: 583, column: 60, scope: !638)
!1043 = !DILocation(line: 583, column: 42, scope: !638)
!1044 = !DILocation(line: 583, column: 27, scope: !638)
!1045 = !DILocation(line: 584, column: 10, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !638, file: !371, line: 584, column: 9)
!1047 = !DILocation(line: 584, column: 17, scope: !1046)
!1048 = !{!916, !814, i64 0}
!1049 = !DILocation(line: 584, column: 9, scope: !638)
!1050 = !DILocation(line: 585, column: 9, scope: !1046)
!1051 = !DILocation(line: 586, column: 9, scope: !649)
!1052 = !DILocation(line: 586, column: 16, scope: !649)
!1053 = !DILocation(line: 586, column: 30, scope: !649)
!1054 = !DILocation(line: 586, column: 9, scope: !638)
!1055 = !DILocation(line: 587, column: 9, scope: !648)
!1056 = !DILocation(line: 587, column: 18, scope: !1057)
!1057 = !DILexicalBlockFile(scope: !646, file: !371, discriminator: 1)
!1058 = !DILocation(line: 587, column: 25, scope: !646)
!1059 = !DILocation(line: 587, column: 18, scope: !646)
!1060 = !DILocation(line: 587, column: 18, scope: !647)
!1061 = !DILocation(line: 587, column: 42, scope: !1062)
!1062 = !DILexicalBlockFile(scope: !645, file: !371, discriminator: 2)
!1063 = !DILocation(line: 587, column: 46, scope: !645)
!1064 = !DILocation(line: 587, column: 53, scope: !645)
!1065 = !DILocation(line: 587, column: 72, scope: !645)
!1066 = !DILocation(line: 587, column: 79, scope: !645)
!1067 = !DILocation(line: 587, column: 95, scope: !645)
!1068 = !{!814, !814, i64 0}
!1069 = !DILocation(line: 587, column: 105, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !645, file: !371, line: 587, column: 105)
!1071 = !DILocation(line: 587, column: 105, scope: !645)
!1072 = !DILocation(line: 587, column: 118, scope: !1073)
!1073 = !DILexicalBlockFile(scope: !1070, file: !371, discriminator: 4)
!1074 = !DILocation(line: 587, column: 111, scope: !1070)
!1075 = !DILocation(line: 587, column: 124, scope: !1076)
!1076 = !DILexicalBlockFile(scope: !646, file: !371, discriminator: 5)
!1077 = !DILocation(line: 587, column: 124, scope: !1078)
!1078 = !DILexicalBlockFile(scope: !1079, file: !371, discriminator: 7)
!1079 = !DILexicalBlockFile(scope: !646, file: !371, discriminator: 6)
!1080 = !DILocation(line: 587, column: 124, scope: !645)
!1081 = !DILocation(line: 587, column: 126, scope: !1082)
!1082 = !DILexicalBlockFile(scope: !1083, file: !371, discriminator: 8)
!1083 = !DILexicalBlockFile(scope: !647, file: !371, discriminator: 3)
!1084 = !DILocation(line: 587, column: 126, scope: !1085)
!1085 = !DILexicalBlockFile(scope: !647, file: !371, discriminator: 9)
!1086 = !DILocation(line: 588, column: 5, scope: !648)
!1087 = !DILocation(line: 589, column: 5, scope: !638)
!1088 = !DILocation(line: 589, column: 14, scope: !1089)
!1089 = !DILexicalBlockFile(scope: !652, file: !371, discriminator: 1)
!1090 = !DILocation(line: 589, column: 21, scope: !652)
!1091 = !{!916, !751, i64 16}
!1092 = !DILocation(line: 589, column: 14, scope: !652)
!1093 = !DILocation(line: 589, column: 14, scope: !653)
!1094 = !DILocation(line: 589, column: 46, scope: !1095)
!1095 = !DILexicalBlockFile(scope: !651, file: !371, discriminator: 2)
!1096 = !DILocation(line: 589, column: 50, scope: !651)
!1097 = !DILocation(line: 589, column: 57, scope: !651)
!1098 = !DILocation(line: 589, column: 76, scope: !651)
!1099 = !DILocation(line: 589, column: 83, scope: !651)
!1100 = !DILocation(line: 589, column: 107, scope: !651)
!1101 = !DILocation(line: 589, column: 117, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !651, file: !371, line: 589, column: 117)
!1103 = !DILocation(line: 589, column: 117, scope: !651)
!1104 = !DILocation(line: 589, column: 130, scope: !1105)
!1105 = !DILexicalBlockFile(scope: !1102, file: !371, discriminator: 4)
!1106 = !DILocation(line: 589, column: 123, scope: !1102)
!1107 = !DILocation(line: 589, column: 136, scope: !1108)
!1108 = !DILexicalBlockFile(scope: !652, file: !371, discriminator: 5)
!1109 = !DILocation(line: 589, column: 136, scope: !1110)
!1110 = !DILexicalBlockFile(scope: !1111, file: !371, discriminator: 7)
!1111 = !DILexicalBlockFile(scope: !652, file: !371, discriminator: 6)
!1112 = !DILocation(line: 589, column: 136, scope: !651)
!1113 = !DILocation(line: 589, column: 138, scope: !1114)
!1114 = !DILexicalBlockFile(scope: !1115, file: !371, discriminator: 8)
!1115 = !DILexicalBlockFile(scope: !653, file: !371, discriminator: 3)
!1116 = !DILocation(line: 589, column: 138, scope: !1117)
!1117 = !DILexicalBlockFile(scope: !653, file: !371, discriminator: 9)
!1118 = !DILocation(line: 590, column: 5, scope: !638)
!1119 = !DILocation(line: 591, column: 1, scope: !638)
!1120 = !DILocation(line: 595, column: 26, scope: !654)
!1121 = !DILocation(line: 596, column: 5, scope: !654)
!1122 = !DILocation(line: 596, column: 18, scope: !654)
!1123 = !DILocation(line: 596, column: 60, scope: !654)
!1124 = !DILocation(line: 596, column: 42, scope: !654)
!1125 = !DILocation(line: 596, column: 27, scope: !654)
!1126 = !DILocation(line: 597, column: 10, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !654, file: !371, line: 597, column: 9)
!1128 = !DILocation(line: 597, column: 17, scope: !1127)
!1129 = !DILocation(line: 597, column: 9, scope: !654)
!1130 = !DILocation(line: 598, column: 9, scope: !1127)
!1131 = !DILocation(line: 599, column: 9, scope: !660)
!1132 = !DILocation(line: 599, column: 16, scope: !660)
!1133 = !DILocation(line: 599, column: 30, scope: !660)
!1134 = !DILocation(line: 599, column: 9, scope: !654)
!1135 = !DILocation(line: 600, column: 9, scope: !660)
!1136 = !DILocation(line: 600, column: 14, scope: !1137)
!1137 = !DILexicalBlockFile(scope: !659, file: !371, discriminator: 1)
!1138 = !DILocation(line: 600, column: 24, scope: !659)
!1139 = !DILocation(line: 600, column: 47, scope: !659)
!1140 = !DILocation(line: 600, column: 54, scope: !659)
!1141 = !DILocation(line: 600, column: 74, scope: !664)
!1142 = !DILocation(line: 600, column: 82, scope: !664)
!1143 = !DILocation(line: 600, column: 74, scope: !659)
!1144 = !DILocation(line: 600, column: 100, scope: !1145)
!1145 = !DILexicalBlockFile(scope: !663, file: !371, discriminator: 2)
!1146 = !DILocation(line: 600, column: 107, scope: !663)
!1147 = !DILocation(line: 600, column: 122, scope: !663)
!1148 = !DILocation(line: 600, column: 136, scope: !663)
!1149 = !DILocation(line: 600, column: 141, scope: !1150)
!1150 = !DILexicalBlockFile(scope: !662, file: !371, discriminator: 4)
!1151 = !DILocation(line: 600, column: 151, scope: !662)
!1152 = !DILocation(line: 600, column: 181, scope: !662)
!1153 = !DILocation(line: 600, column: 199, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !662, file: !371, line: 600, column: 196)
!1155 = !DILocation(line: 600, column: 216, scope: !1154)
!1156 = !DILocation(line: 600, column: 196, scope: !1154)
!1157 = !DILocation(line: 600, column: 226, scope: !1154)
!1158 = !DILocation(line: 600, column: 196, scope: !662)
!1159 = !DILocation(line: 600, column: 196, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !662, file: !371, discriminator: 5)
!1161 = !DILocation(line: 600, column: 257, scope: !1162)
!1162 = !DILexicalBlockFile(scope: !1154, file: !371, discriminator: 6)
!1163 = !DILocation(line: 600, column: 275, scope: !1154)
!1164 = !DILocation(line: 600, column: 285, scope: !1154)
!1165 = !DILocation(line: 600, column: 310, scope: !1154)
!1166 = !DILocation(line: 600, column: 241, scope: !1154)
!1167 = !DILocation(line: 600, column: 329, scope: !1168)
!1168 = !DILexicalBlockFile(scope: !663, file: !371, discriminator: 7)
!1169 = !DILocation(line: 600, column: 329, scope: !662)
!1170 = !DILocation(line: 600, column: 329, scope: !1171)
!1171 = !DILexicalBlockFile(scope: !662, file: !371, discriminator: 8)
!1172 = !DILocation(line: 600, column: 342, scope: !1173)
!1173 = !DILexicalBlockFile(scope: !663, file: !371, discriminator: 9)
!1174 = !DILocation(line: 600, column: 344, scope: !1175)
!1175 = !DILexicalBlockFile(scope: !1176, file: !371, discriminator: 10)
!1176 = !DILexicalBlockFile(scope: !660, file: !371, discriminator: 3)
!1177 = !DILocation(line: 600, column: 344, scope: !659)
!1178 = !DILocation(line: 600, column: 344, scope: !1179)
!1179 = !DILexicalBlockFile(scope: !659, file: !371, discriminator: 11)
!1180 = !DILocation(line: 600, column: 344, scope: !1181)
!1181 = !DILexicalBlockFile(scope: !659, file: !371, discriminator: 12)
!1182 = !DILocation(line: 601, column: 5, scope: !654)
!1183 = !DILocation(line: 601, column: 10, scope: !1184)
!1184 = !DILexicalBlockFile(scope: !666, file: !371, discriminator: 1)
!1185 = !DILocation(line: 601, column: 20, scope: !666)
!1186 = !DILocation(line: 601, column: 43, scope: !666)
!1187 = !DILocation(line: 601, column: 50, scope: !666)
!1188 = !DILocation(line: 601, column: 78, scope: !670)
!1189 = !DILocation(line: 601, column: 86, scope: !670)
!1190 = !DILocation(line: 601, column: 78, scope: !666)
!1191 = !DILocation(line: 601, column: 104, scope: !1192)
!1192 = !DILexicalBlockFile(scope: !669, file: !371, discriminator: 2)
!1193 = !DILocation(line: 601, column: 111, scope: !669)
!1194 = !DILocation(line: 601, column: 134, scope: !669)
!1195 = !DILocation(line: 601, column: 148, scope: !669)
!1196 = !DILocation(line: 601, column: 153, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !668, file: !371, discriminator: 4)
!1198 = !DILocation(line: 601, column: 163, scope: !668)
!1199 = !DILocation(line: 601, column: 193, scope: !668)
!1200 = !DILocation(line: 601, column: 211, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !668, file: !371, line: 601, column: 208)
!1202 = !DILocation(line: 601, column: 228, scope: !1201)
!1203 = !DILocation(line: 601, column: 208, scope: !1201)
!1204 = !DILocation(line: 601, column: 238, scope: !1201)
!1205 = !DILocation(line: 601, column: 208, scope: !668)
!1206 = !DILocation(line: 601, column: 208, scope: !1207)
!1207 = !DILexicalBlockFile(scope: !668, file: !371, discriminator: 5)
!1208 = !DILocation(line: 601, column: 269, scope: !1209)
!1209 = !DILexicalBlockFile(scope: !1201, file: !371, discriminator: 6)
!1210 = !DILocation(line: 601, column: 287, scope: !1201)
!1211 = !DILocation(line: 601, column: 297, scope: !1201)
!1212 = !DILocation(line: 601, column: 322, scope: !1201)
!1213 = !DILocation(line: 601, column: 253, scope: !1201)
!1214 = !DILocation(line: 601, column: 341, scope: !1215)
!1215 = !DILexicalBlockFile(scope: !669, file: !371, discriminator: 7)
!1216 = !DILocation(line: 601, column: 341, scope: !668)
!1217 = !DILocation(line: 601, column: 341, scope: !1218)
!1218 = !DILexicalBlockFile(scope: !668, file: !371, discriminator: 8)
!1219 = !DILocation(line: 601, column: 354, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !669, file: !371, discriminator: 9)
!1221 = !DILocation(line: 601, column: 356, scope: !1222)
!1222 = !DILexicalBlockFile(scope: !1223, file: !371, discriminator: 10)
!1223 = !DILexicalBlockFile(scope: !654, file: !371, discriminator: 3)
!1224 = !DILocation(line: 601, column: 356, scope: !666)
!1225 = !DILocation(line: 601, column: 356, scope: !1226)
!1226 = !DILexicalBlockFile(scope: !666, file: !371, discriminator: 11)
!1227 = !DILocation(line: 602, column: 5, scope: !654)
!1228 = !DILocation(line: 603, column: 1, scope: !654)
!1229 = !DILocation(line: 606, column: 25, scope: !671)
!1230 = !DILocation(line: 607, column: 20, scope: !671)
!1231 = !DILocation(line: 607, column: 5, scope: !671)
!1232 = !DILocation(line: 608, column: 1, scope: !671)
!1233 = !DILocation(line: 635, column: 5, scope: !413)
!1234 = !DILocation(line: 635, column: 15, scope: !413)
!1235 = !DILocation(line: 635, column: 19, scope: !413)
!1236 = !DILocation(line: 636, column: 5, scope: !413)
!1237 = !DILocation(line: 636, column: 18, scope: !413)
!1238 = !DILocation(line: 637, column: 9, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !413, file: !371, line: 637, column: 9)
!1240 = !DILocation(line: 637, column: 11, scope: !1239)
!1241 = !DILocation(line: 637, column: 9, scope: !413)
!1242 = !DILocation(line: 638, column: 9, scope: !1239)
!1243 = !DILocation(line: 639, column: 47, scope: !413)
!1244 = !DILocation(line: 639, column: 29, scope: !413)
!1245 = !DILocation(line: 639, column: 14, scope: !413)
!1246 = !DILocation(line: 639, column: 11, scope: !413)
!1247 = !DILocation(line: 640, column: 5, scope: !413)
!1248 = !DILocation(line: 640, column: 12, scope: !413)
!1249 = !DILocation(line: 640, column: 24, scope: !413)
!1250 = !DILocation(line: 652, column: 33, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !413, file: !371, line: 652, column: 9)
!1252 = !DILocation(line: 652, column: 9, scope: !1251)
!1253 = !DILocation(line: 652, column: 71, scope: !1251)
!1254 = !DILocation(line: 652, column: 9, scope: !413)
!1255 = !DILocation(line: 653, column: 9, scope: !1251)
!1256 = !DILocation(line: 658, column: 33, scope: !413)
!1257 = !DILocation(line: 658, column: 51, scope: !413)
!1258 = !DILocation(line: 656, column: 36, scope: !413)
!1259 = !DILocation(line: 656, column: 5, scope: !413)
!1260 = !DILocation(line: 656, column: 12, scope: !413)
!1261 = !DILocation(line: 656, column: 34, scope: !413)
!1262 = !DILocation(line: 659, column: 9, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !413, file: !371, line: 659, column: 9)
!1264 = !DILocation(line: 659, column: 16, scope: !1263)
!1265 = !DILocation(line: 659, column: 38, scope: !1263)
!1266 = !DILocation(line: 659, column: 9, scope: !413)
!1267 = !DILocation(line: 660, column: 9, scope: !1263)
!1268 = !DILocation(line: 661, column: 21, scope: !413)
!1269 = !DILocation(line: 661, column: 28, scope: !413)
!1270 = !DILocation(line: 661, column: 53, scope: !413)
!1271 = !DILocation(line: 661, column: 62, scope: !413)
!1272 = !DILocation(line: 662, column: 28, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !413, file: !371, line: 662, column: 9)
!1274 = !DILocation(line: 663, column: 28, scope: !1273)
!1275 = !DILocation(line: 663, column: 35, scope: !1273)
!1276 = !DILocation(line: 662, column: 9, scope: !1273)
!1277 = !DILocation(line: 663, column: 58, scope: !1273)
!1278 = !DILocation(line: 662, column: 9, scope: !413)
!1279 = !DILocation(line: 664, column: 9, scope: !1273)
!1280 = !DILocation(line: 667, column: 21, scope: !413)
!1281 = !DILocation(line: 667, column: 46, scope: !413)
!1282 = !DILocation(line: 667, column: 55, scope: !413)
!1283 = !DILocation(line: 668, column: 28, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !413, file: !371, line: 668, column: 9)
!1285 = !DILocation(line: 669, column: 41, scope: !1284)
!1286 = !DILocation(line: 668, column: 9, scope: !1284)
!1287 = !DILocation(line: 669, column: 64, scope: !1284)
!1288 = !DILocation(line: 668, column: 9, scope: !413)
!1289 = !DILocation(line: 670, column: 9, scope: !1284)
!1290 = !DILocation(line: 675, column: 9, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !413, file: !371, line: 675, column: 9)
!1292 = !DILocation(line: 675, column: 38, scope: !1291)
!1293 = !DILocation(line: 675, column: 9, scope: !413)
!1294 = !DILocation(line: 675, column: 43, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !1291, file: !371, discriminator: 1)
!1296 = !DILocation(line: 675, column: 97, scope: !1297)
!1297 = !DILexicalBlockFile(scope: !413, file: !371, discriminator: 2)
!1298 = !DILocation(line: 675, column: 125, scope: !422)
!1299 = !DILocation(line: 675, column: 106, scope: !422)
!1300 = !DILocation(line: 675, column: 167, scope: !422)
!1301 = !DILocation(line: 675, column: 106, scope: !413)
!1302 = !DILocation(line: 675, column: 174, scope: !1303)
!1303 = !DILexicalBlockFile(scope: !421, file: !371, discriminator: 3)
!1304 = !DILocation(line: 675, column: 179, scope: !1305)
!1305 = !DILexicalBlockFile(scope: !420, file: !371, discriminator: 4)
!1306 = !DILocation(line: 675, column: 189, scope: !420)
!1307 = !DILocation(line: 675, column: 244, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !420, file: !371, line: 675, column: 241)
!1309 = !DILocation(line: 675, column: 261, scope: !1308)
!1310 = !DILocation(line: 675, column: 241, scope: !1308)
!1311 = !DILocation(line: 675, column: 271, scope: !1308)
!1312 = !DILocation(line: 675, column: 241, scope: !420)
!1313 = !DILocation(line: 675, column: 241, scope: !1314)
!1314 = !DILexicalBlockFile(scope: !420, file: !371, discriminator: 5)
!1315 = !DILocation(line: 675, column: 302, scope: !1316)
!1316 = !DILexicalBlockFile(scope: !1308, file: !371, discriminator: 6)
!1317 = !DILocation(line: 675, column: 320, scope: !1308)
!1318 = !DILocation(line: 675, column: 330, scope: !1308)
!1319 = !DILocation(line: 675, column: 355, scope: !1308)
!1320 = !DILocation(line: 675, column: 286, scope: !1308)
!1321 = !DILocation(line: 675, column: 374, scope: !1322)
!1322 = !DILexicalBlockFile(scope: !421, file: !371, discriminator: 7)
!1323 = !DILocation(line: 675, column: 374, scope: !420)
!1324 = !DILocation(line: 675, column: 374, scope: !1325)
!1325 = !DILexicalBlockFile(scope: !420, file: !371, discriminator: 8)
!1326 = !DILocation(line: 675, column: 387, scope: !1327)
!1327 = !DILexicalBlockFile(scope: !421, file: !371, discriminator: 9)
!1328 = !DILocation(line: 676, column: 9, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !413, file: !371, line: 676, column: 9)
!1330 = !DILocation(line: 676, column: 41, scope: !1329)
!1331 = !DILocation(line: 676, column: 9, scope: !413)
!1332 = !DILocation(line: 676, column: 46, scope: !1333)
!1333 = !DILexicalBlockFile(scope: !1329, file: !371, discriminator: 1)
!1334 = !DILocation(line: 676, column: 103, scope: !1297)
!1335 = !DILocation(line: 676, column: 131, scope: !426)
!1336 = !DILocation(line: 676, column: 112, scope: !426)
!1337 = !DILocation(line: 676, column: 179, scope: !426)
!1338 = !DILocation(line: 676, column: 112, scope: !413)
!1339 = !DILocation(line: 676, column: 186, scope: !1340)
!1340 = !DILexicalBlockFile(scope: !425, file: !371, discriminator: 3)
!1341 = !DILocation(line: 676, column: 191, scope: !1342)
!1342 = !DILexicalBlockFile(scope: !424, file: !371, discriminator: 4)
!1343 = !DILocation(line: 676, column: 201, scope: !424)
!1344 = !DILocation(line: 676, column: 259, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !424, file: !371, line: 676, column: 256)
!1346 = !DILocation(line: 676, column: 276, scope: !1345)
!1347 = !DILocation(line: 676, column: 256, scope: !1345)
!1348 = !DILocation(line: 676, column: 286, scope: !1345)
!1349 = !DILocation(line: 676, column: 256, scope: !424)
!1350 = !DILocation(line: 676, column: 256, scope: !1351)
!1351 = !DILexicalBlockFile(scope: !424, file: !371, discriminator: 5)
!1352 = !DILocation(line: 676, column: 317, scope: !1353)
!1353 = !DILexicalBlockFile(scope: !1345, file: !371, discriminator: 6)
!1354 = !DILocation(line: 676, column: 335, scope: !1345)
!1355 = !DILocation(line: 676, column: 345, scope: !1345)
!1356 = !DILocation(line: 676, column: 370, scope: !1345)
!1357 = !DILocation(line: 676, column: 301, scope: !1345)
!1358 = !DILocation(line: 676, column: 389, scope: !1359)
!1359 = !DILexicalBlockFile(scope: !425, file: !371, discriminator: 7)
!1360 = !DILocation(line: 676, column: 389, scope: !424)
!1361 = !DILocation(line: 676, column: 389, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !424, file: !371, discriminator: 8)
!1363 = !DILocation(line: 676, column: 402, scope: !1364)
!1364 = !DILexicalBlockFile(scope: !425, file: !371, discriminator: 9)
!1365 = !DILocation(line: 677, column: 9, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !413, file: !371, line: 677, column: 9)
!1367 = !DILocation(line: 677, column: 46, scope: !1366)
!1368 = !DILocation(line: 677, column: 9, scope: !413)
!1369 = !DILocation(line: 677, column: 51, scope: !1370)
!1370 = !DILexicalBlockFile(scope: !1366, file: !371, discriminator: 1)
!1371 = !DILocation(line: 677, column: 113, scope: !1297)
!1372 = !DILocation(line: 677, column: 141, scope: !430)
!1373 = !DILocation(line: 677, column: 122, scope: !430)
!1374 = !DILocation(line: 677, column: 199, scope: !430)
!1375 = !DILocation(line: 677, column: 122, scope: !413)
!1376 = !DILocation(line: 677, column: 206, scope: !1377)
!1377 = !DILexicalBlockFile(scope: !429, file: !371, discriminator: 3)
!1378 = !DILocation(line: 677, column: 211, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !428, file: !371, discriminator: 4)
!1380 = !DILocation(line: 677, column: 221, scope: !428)
!1381 = !DILocation(line: 677, column: 284, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !428, file: !371, line: 677, column: 281)
!1383 = !DILocation(line: 677, column: 301, scope: !1382)
!1384 = !DILocation(line: 677, column: 281, scope: !1382)
!1385 = !DILocation(line: 677, column: 311, scope: !1382)
!1386 = !DILocation(line: 677, column: 281, scope: !428)
!1387 = !DILocation(line: 677, column: 281, scope: !1388)
!1388 = !DILexicalBlockFile(scope: !428, file: !371, discriminator: 5)
!1389 = !DILocation(line: 677, column: 342, scope: !1390)
!1390 = !DILexicalBlockFile(scope: !1382, file: !371, discriminator: 6)
!1391 = !DILocation(line: 677, column: 360, scope: !1382)
!1392 = !DILocation(line: 677, column: 370, scope: !1382)
!1393 = !DILocation(line: 677, column: 395, scope: !1382)
!1394 = !DILocation(line: 677, column: 326, scope: !1382)
!1395 = !DILocation(line: 677, column: 414, scope: !1396)
!1396 = !DILexicalBlockFile(scope: !429, file: !371, discriminator: 7)
!1397 = !DILocation(line: 677, column: 414, scope: !428)
!1398 = !DILocation(line: 677, column: 414, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !428, file: !371, discriminator: 8)
!1400 = !DILocation(line: 677, column: 427, scope: !1401)
!1401 = !DILexicalBlockFile(scope: !429, file: !371, discriminator: 9)
!1402 = !DILocation(line: 678, column: 9, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !413, file: !371, line: 678, column: 9)
!1404 = !DILocation(line: 678, column: 42, scope: !1403)
!1405 = !DILocation(line: 678, column: 9, scope: !413)
!1406 = !DILocation(line: 678, column: 47, scope: !1407)
!1407 = !DILexicalBlockFile(scope: !1403, file: !371, discriminator: 1)
!1408 = !DILocation(line: 678, column: 105, scope: !1297)
!1409 = !DILocation(line: 678, column: 133, scope: !434)
!1410 = !DILocation(line: 678, column: 114, scope: !434)
!1411 = !DILocation(line: 678, column: 183, scope: !434)
!1412 = !DILocation(line: 678, column: 114, scope: !413)
!1413 = !DILocation(line: 678, column: 190, scope: !1414)
!1414 = !DILexicalBlockFile(scope: !433, file: !371, discriminator: 3)
!1415 = !DILocation(line: 678, column: 195, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !432, file: !371, discriminator: 4)
!1417 = !DILocation(line: 678, column: 205, scope: !432)
!1418 = !DILocation(line: 678, column: 264, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !432, file: !371, line: 678, column: 261)
!1420 = !DILocation(line: 678, column: 281, scope: !1419)
!1421 = !DILocation(line: 678, column: 261, scope: !1419)
!1422 = !DILocation(line: 678, column: 291, scope: !1419)
!1423 = !DILocation(line: 678, column: 261, scope: !432)
!1424 = !DILocation(line: 678, column: 261, scope: !1425)
!1425 = !DILexicalBlockFile(scope: !432, file: !371, discriminator: 5)
!1426 = !DILocation(line: 678, column: 322, scope: !1427)
!1427 = !DILexicalBlockFile(scope: !1419, file: !371, discriminator: 6)
!1428 = !DILocation(line: 678, column: 340, scope: !1419)
!1429 = !DILocation(line: 678, column: 350, scope: !1419)
!1430 = !DILocation(line: 678, column: 375, scope: !1419)
!1431 = !DILocation(line: 678, column: 306, scope: !1419)
!1432 = !DILocation(line: 678, column: 394, scope: !1433)
!1433 = !DILexicalBlockFile(scope: !433, file: !371, discriminator: 7)
!1434 = !DILocation(line: 678, column: 394, scope: !432)
!1435 = !DILocation(line: 678, column: 394, scope: !1436)
!1436 = !DILexicalBlockFile(scope: !432, file: !371, discriminator: 8)
!1437 = !DILocation(line: 678, column: 407, scope: !1438)
!1438 = !DILexicalBlockFile(scope: !433, file: !371, discriminator: 9)
!1439 = !DILocation(line: 682, column: 27, scope: !413)
!1440 = !{!812, !751, i64 256}
!1441 = !DILocation(line: 683, column: 9, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !413, file: !371, line: 683, column: 9)
!1443 = !DILocation(line: 683, column: 38, scope: !1442)
!1444 = !DILocation(line: 683, column: 9, scope: !413)
!1445 = !DILocation(line: 683, column: 43, scope: !1446)
!1446 = !DILexicalBlockFile(scope: !1442, file: !371, discriminator: 1)
!1447 = !DILocation(line: 683, column: 97, scope: !1297)
!1448 = !DILocation(line: 683, column: 125, scope: !438)
!1449 = !DILocation(line: 683, column: 106, scope: !438)
!1450 = !DILocation(line: 683, column: 166, scope: !438)
!1451 = !DILocation(line: 683, column: 106, scope: !413)
!1452 = !DILocation(line: 683, column: 173, scope: !1453)
!1453 = !DILexicalBlockFile(scope: !437, file: !371, discriminator: 3)
!1454 = !DILocation(line: 683, column: 178, scope: !1455)
!1455 = !DILexicalBlockFile(scope: !436, file: !371, discriminator: 4)
!1456 = !DILocation(line: 683, column: 188, scope: !436)
!1457 = !DILocation(line: 683, column: 243, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !436, file: !371, line: 683, column: 240)
!1459 = !DILocation(line: 683, column: 260, scope: !1458)
!1460 = !DILocation(line: 683, column: 240, scope: !1458)
!1461 = !DILocation(line: 683, column: 270, scope: !1458)
!1462 = !DILocation(line: 683, column: 240, scope: !436)
!1463 = !DILocation(line: 683, column: 240, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !436, file: !371, discriminator: 5)
!1465 = !DILocation(line: 683, column: 301, scope: !1466)
!1466 = !DILexicalBlockFile(scope: !1458, file: !371, discriminator: 6)
!1467 = !DILocation(line: 683, column: 319, scope: !1458)
!1468 = !DILocation(line: 683, column: 329, scope: !1458)
!1469 = !DILocation(line: 683, column: 354, scope: !1458)
!1470 = !DILocation(line: 683, column: 285, scope: !1458)
!1471 = !DILocation(line: 683, column: 373, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !437, file: !371, discriminator: 7)
!1473 = !DILocation(line: 683, column: 373, scope: !436)
!1474 = !DILocation(line: 683, column: 373, scope: !1475)
!1475 = !DILexicalBlockFile(scope: !436, file: !371, discriminator: 8)
!1476 = !DILocation(line: 683, column: 386, scope: !1477)
!1477 = !DILexicalBlockFile(scope: !437, file: !371, discriminator: 9)
!1478 = !DILocation(line: 686, column: 28, scope: !413)
!1479 = !DILocation(line: 687, column: 9, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !413, file: !371, line: 687, column: 9)
!1481 = !DILocation(line: 687, column: 39, scope: !1480)
!1482 = !DILocation(line: 687, column: 9, scope: !413)
!1483 = !DILocation(line: 687, column: 44, scope: !1484)
!1484 = !DILexicalBlockFile(scope: !1480, file: !371, discriminator: 1)
!1485 = !DILocation(line: 687, column: 99, scope: !1297)
!1486 = !DILocation(line: 687, column: 127, scope: !442)
!1487 = !DILocation(line: 687, column: 108, scope: !442)
!1488 = !DILocation(line: 687, column: 170, scope: !442)
!1489 = !DILocation(line: 687, column: 108, scope: !413)
!1490 = !DILocation(line: 687, column: 177, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !441, file: !371, discriminator: 3)
!1492 = !DILocation(line: 687, column: 182, scope: !1493)
!1493 = !DILexicalBlockFile(scope: !440, file: !371, discriminator: 4)
!1494 = !DILocation(line: 687, column: 192, scope: !440)
!1495 = !DILocation(line: 687, column: 248, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !440, file: !371, line: 687, column: 245)
!1497 = !DILocation(line: 687, column: 265, scope: !1496)
!1498 = !DILocation(line: 687, column: 245, scope: !1496)
!1499 = !DILocation(line: 687, column: 275, scope: !1496)
!1500 = !DILocation(line: 687, column: 245, scope: !440)
!1501 = !DILocation(line: 687, column: 245, scope: !1502)
!1502 = !DILexicalBlockFile(scope: !440, file: !371, discriminator: 5)
!1503 = !DILocation(line: 687, column: 306, scope: !1504)
!1504 = !DILexicalBlockFile(scope: !1496, file: !371, discriminator: 6)
!1505 = !DILocation(line: 687, column: 324, scope: !1496)
!1506 = !DILocation(line: 687, column: 334, scope: !1496)
!1507 = !DILocation(line: 687, column: 359, scope: !1496)
!1508 = !DILocation(line: 687, column: 290, scope: !1496)
!1509 = !DILocation(line: 687, column: 378, scope: !1510)
!1510 = !DILexicalBlockFile(scope: !441, file: !371, discriminator: 7)
!1511 = !DILocation(line: 687, column: 378, scope: !440)
!1512 = !DILocation(line: 687, column: 378, scope: !1513)
!1513 = !DILexicalBlockFile(scope: !440, file: !371, discriminator: 8)
!1514 = !DILocation(line: 687, column: 391, scope: !1515)
!1515 = !DILexicalBlockFile(scope: !441, file: !371, discriminator: 9)
!1516 = !DILocation(line: 688, column: 9, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !413, file: !371, line: 688, column: 9)
!1518 = !DILocation(line: 688, column: 46, scope: !1517)
!1519 = !DILocation(line: 688, column: 9, scope: !413)
!1520 = !DILocation(line: 689, column: 9, scope: !1517)
!1521 = !DILocation(line: 692, column: 29, scope: !413)
!1522 = !DILocation(line: 693, column: 9, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !413, file: !371, line: 693, column: 9)
!1524 = !DILocation(line: 693, column: 40, scope: !1523)
!1525 = !DILocation(line: 693, column: 9, scope: !413)
!1526 = !DILocation(line: 693, column: 45, scope: !1527)
!1527 = !DILexicalBlockFile(scope: !1523, file: !371, discriminator: 1)
!1528 = !DILocation(line: 693, column: 101, scope: !1297)
!1529 = !DILocation(line: 693, column: 129, scope: !446)
!1530 = !DILocation(line: 693, column: 110, scope: !446)
!1531 = !DILocation(line: 693, column: 174, scope: !446)
!1532 = !DILocation(line: 693, column: 110, scope: !413)
!1533 = !DILocation(line: 693, column: 181, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !445, file: !371, discriminator: 3)
!1535 = !DILocation(line: 693, column: 186, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !444, file: !371, discriminator: 4)
!1537 = !DILocation(line: 693, column: 196, scope: !444)
!1538 = !DILocation(line: 693, column: 253, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !444, file: !371, line: 693, column: 250)
!1540 = !DILocation(line: 693, column: 270, scope: !1539)
!1541 = !DILocation(line: 693, column: 250, scope: !1539)
!1542 = !DILocation(line: 693, column: 280, scope: !1539)
!1543 = !DILocation(line: 693, column: 250, scope: !444)
!1544 = !DILocation(line: 693, column: 250, scope: !1545)
!1545 = !DILexicalBlockFile(scope: !444, file: !371, discriminator: 5)
!1546 = !DILocation(line: 693, column: 311, scope: !1547)
!1547 = !DILexicalBlockFile(scope: !1539, file: !371, discriminator: 6)
!1548 = !DILocation(line: 693, column: 329, scope: !1539)
!1549 = !DILocation(line: 693, column: 339, scope: !1539)
!1550 = !DILocation(line: 693, column: 364, scope: !1539)
!1551 = !DILocation(line: 693, column: 295, scope: !1539)
!1552 = !DILocation(line: 693, column: 383, scope: !1553)
!1553 = !DILexicalBlockFile(scope: !445, file: !371, discriminator: 7)
!1554 = !DILocation(line: 693, column: 383, scope: !444)
!1555 = !DILocation(line: 693, column: 383, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !444, file: !371, discriminator: 8)
!1557 = !DILocation(line: 693, column: 396, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !445, file: !371, discriminator: 9)
!1559 = !DILocation(line: 696, column: 35, scope: !413)
!1560 = !DILocation(line: 697, column: 9, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !413, file: !371, line: 697, column: 9)
!1562 = !DILocation(line: 697, column: 46, scope: !1561)
!1563 = !DILocation(line: 697, column: 9, scope: !413)
!1564 = !DILocation(line: 697, column: 51, scope: !1565)
!1565 = !DILexicalBlockFile(scope: !1561, file: !371, discriminator: 1)
!1566 = !DILocation(line: 697, column: 113, scope: !1297)
!1567 = !DILocation(line: 697, column: 141, scope: !450)
!1568 = !DILocation(line: 697, column: 122, scope: !450)
!1569 = !DILocation(line: 697, column: 198, scope: !450)
!1570 = !DILocation(line: 697, column: 122, scope: !413)
!1571 = !DILocation(line: 697, column: 205, scope: !1572)
!1572 = !DILexicalBlockFile(scope: !449, file: !371, discriminator: 3)
!1573 = !DILocation(line: 697, column: 210, scope: !1574)
!1574 = !DILexicalBlockFile(scope: !448, file: !371, discriminator: 4)
!1575 = !DILocation(line: 697, column: 220, scope: !448)
!1576 = !DILocation(line: 697, column: 283, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !448, file: !371, line: 697, column: 280)
!1578 = !DILocation(line: 697, column: 300, scope: !1577)
!1579 = !DILocation(line: 697, column: 280, scope: !1577)
!1580 = !DILocation(line: 697, column: 310, scope: !1577)
!1581 = !DILocation(line: 697, column: 280, scope: !448)
!1582 = !DILocation(line: 697, column: 280, scope: !1583)
!1583 = !DILexicalBlockFile(scope: !448, file: !371, discriminator: 5)
!1584 = !DILocation(line: 697, column: 341, scope: !1585)
!1585 = !DILexicalBlockFile(scope: !1577, file: !371, discriminator: 6)
!1586 = !DILocation(line: 697, column: 359, scope: !1577)
!1587 = !DILocation(line: 697, column: 369, scope: !1577)
!1588 = !DILocation(line: 697, column: 394, scope: !1577)
!1589 = !DILocation(line: 697, column: 325, scope: !1577)
!1590 = !DILocation(line: 697, column: 413, scope: !1591)
!1591 = !DILexicalBlockFile(scope: !449, file: !371, discriminator: 7)
!1592 = !DILocation(line: 697, column: 413, scope: !448)
!1593 = !DILocation(line: 697, column: 413, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !448, file: !371, discriminator: 8)
!1595 = !DILocation(line: 697, column: 426, scope: !1596)
!1596 = !DILexicalBlockFile(scope: !449, file: !371, discriminator: 9)
!1597 = !DILocation(line: 700, column: 35, scope: !413)
!1598 = !DILocation(line: 701, column: 9, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !413, file: !371, line: 701, column: 9)
!1600 = !DILocation(line: 701, column: 46, scope: !1599)
!1601 = !DILocation(line: 701, column: 9, scope: !413)
!1602 = !DILocation(line: 701, column: 51, scope: !1603)
!1603 = !DILexicalBlockFile(scope: !1599, file: !371, discriminator: 1)
!1604 = !DILocation(line: 701, column: 113, scope: !1297)
!1605 = !DILocation(line: 701, column: 141, scope: !454)
!1606 = !DILocation(line: 701, column: 122, scope: !454)
!1607 = !DILocation(line: 701, column: 198, scope: !454)
!1608 = !DILocation(line: 701, column: 122, scope: !413)
!1609 = !DILocation(line: 701, column: 205, scope: !1610)
!1610 = !DILexicalBlockFile(scope: !453, file: !371, discriminator: 3)
!1611 = !DILocation(line: 701, column: 210, scope: !1612)
!1612 = !DILexicalBlockFile(scope: !452, file: !371, discriminator: 4)
!1613 = !DILocation(line: 701, column: 220, scope: !452)
!1614 = !DILocation(line: 701, column: 283, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !452, file: !371, line: 701, column: 280)
!1616 = !DILocation(line: 701, column: 300, scope: !1615)
!1617 = !DILocation(line: 701, column: 280, scope: !1615)
!1618 = !DILocation(line: 701, column: 310, scope: !1615)
!1619 = !DILocation(line: 701, column: 280, scope: !452)
!1620 = !DILocation(line: 701, column: 280, scope: !1621)
!1621 = !DILexicalBlockFile(scope: !452, file: !371, discriminator: 5)
!1622 = !DILocation(line: 701, column: 341, scope: !1623)
!1623 = !DILexicalBlockFile(scope: !1615, file: !371, discriminator: 6)
!1624 = !DILocation(line: 701, column: 359, scope: !1615)
!1625 = !DILocation(line: 701, column: 369, scope: !1615)
!1626 = !DILocation(line: 701, column: 394, scope: !1615)
!1627 = !DILocation(line: 701, column: 325, scope: !1615)
!1628 = !DILocation(line: 701, column: 413, scope: !1629)
!1629 = !DILexicalBlockFile(scope: !453, file: !371, discriminator: 7)
!1630 = !DILocation(line: 701, column: 413, scope: !452)
!1631 = !DILocation(line: 701, column: 413, scope: !1632)
!1632 = !DILexicalBlockFile(scope: !452, file: !371, discriminator: 8)
!1633 = !DILocation(line: 701, column: 426, scope: !1634)
!1634 = !DILexicalBlockFile(scope: !453, file: !371, discriminator: 9)
!1635 = !DILocation(line: 704, column: 35, scope: !413)
!1636 = !DILocation(line: 705, column: 9, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !413, file: !371, line: 705, column: 9)
!1638 = !DILocation(line: 705, column: 46, scope: !1637)
!1639 = !DILocation(line: 705, column: 9, scope: !413)
!1640 = !DILocation(line: 705, column: 51, scope: !1641)
!1641 = !DILexicalBlockFile(scope: !1637, file: !371, discriminator: 1)
!1642 = !DILocation(line: 705, column: 113, scope: !1297)
!1643 = !DILocation(line: 705, column: 141, scope: !458)
!1644 = !DILocation(line: 705, column: 122, scope: !458)
!1645 = !DILocation(line: 705, column: 198, scope: !458)
!1646 = !DILocation(line: 705, column: 122, scope: !413)
!1647 = !DILocation(line: 705, column: 205, scope: !1648)
!1648 = !DILexicalBlockFile(scope: !457, file: !371, discriminator: 3)
!1649 = !DILocation(line: 705, column: 210, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !456, file: !371, discriminator: 4)
!1651 = !DILocation(line: 705, column: 220, scope: !456)
!1652 = !DILocation(line: 705, column: 283, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !456, file: !371, line: 705, column: 280)
!1654 = !DILocation(line: 705, column: 300, scope: !1653)
!1655 = !DILocation(line: 705, column: 280, scope: !1653)
!1656 = !DILocation(line: 705, column: 310, scope: !1653)
!1657 = !DILocation(line: 705, column: 280, scope: !456)
!1658 = !DILocation(line: 705, column: 280, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !456, file: !371, discriminator: 5)
!1660 = !DILocation(line: 705, column: 341, scope: !1661)
!1661 = !DILexicalBlockFile(scope: !1653, file: !371, discriminator: 6)
!1662 = !DILocation(line: 705, column: 359, scope: !1653)
!1663 = !DILocation(line: 705, column: 369, scope: !1653)
!1664 = !DILocation(line: 705, column: 394, scope: !1653)
!1665 = !DILocation(line: 705, column: 325, scope: !1653)
!1666 = !DILocation(line: 705, column: 413, scope: !1667)
!1667 = !DILexicalBlockFile(scope: !457, file: !371, discriminator: 7)
!1668 = !DILocation(line: 705, column: 413, scope: !456)
!1669 = !DILocation(line: 705, column: 413, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !456, file: !371, discriminator: 8)
!1671 = !DILocation(line: 705, column: 426, scope: !1672)
!1672 = !DILexicalBlockFile(scope: !457, file: !371, discriminator: 9)
!1673 = !DILocation(line: 708, column: 35, scope: !413)
!1674 = !DILocation(line: 709, column: 9, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !413, file: !371, line: 709, column: 9)
!1676 = !DILocation(line: 709, column: 46, scope: !1675)
!1677 = !DILocation(line: 709, column: 9, scope: !413)
!1678 = !DILocation(line: 709, column: 51, scope: !1679)
!1679 = !DILexicalBlockFile(scope: !1675, file: !371, discriminator: 1)
!1680 = !DILocation(line: 709, column: 113, scope: !1297)
!1681 = !DILocation(line: 709, column: 141, scope: !462)
!1682 = !DILocation(line: 709, column: 122, scope: !462)
!1683 = !DILocation(line: 709, column: 198, scope: !462)
!1684 = !DILocation(line: 709, column: 122, scope: !413)
!1685 = !DILocation(line: 709, column: 205, scope: !1686)
!1686 = !DILexicalBlockFile(scope: !461, file: !371, discriminator: 3)
!1687 = !DILocation(line: 709, column: 210, scope: !1688)
!1688 = !DILexicalBlockFile(scope: !460, file: !371, discriminator: 4)
!1689 = !DILocation(line: 709, column: 220, scope: !460)
!1690 = !DILocation(line: 709, column: 283, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !460, file: !371, line: 709, column: 280)
!1692 = !DILocation(line: 709, column: 300, scope: !1691)
!1693 = !DILocation(line: 709, column: 280, scope: !1691)
!1694 = !DILocation(line: 709, column: 310, scope: !1691)
!1695 = !DILocation(line: 709, column: 280, scope: !460)
!1696 = !DILocation(line: 709, column: 280, scope: !1697)
!1697 = !DILexicalBlockFile(scope: !460, file: !371, discriminator: 5)
!1698 = !DILocation(line: 709, column: 341, scope: !1699)
!1699 = !DILexicalBlockFile(scope: !1691, file: !371, discriminator: 6)
!1700 = !DILocation(line: 709, column: 359, scope: !1691)
!1701 = !DILocation(line: 709, column: 369, scope: !1691)
!1702 = !DILocation(line: 709, column: 394, scope: !1691)
!1703 = !DILocation(line: 709, column: 325, scope: !1691)
!1704 = !DILocation(line: 709, column: 413, scope: !1705)
!1705 = !DILexicalBlockFile(scope: !461, file: !371, discriminator: 7)
!1706 = !DILocation(line: 709, column: 413, scope: !460)
!1707 = !DILocation(line: 709, column: 413, scope: !1708)
!1708 = !DILexicalBlockFile(scope: !460, file: !371, discriminator: 8)
!1709 = !DILocation(line: 709, column: 426, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !461, file: !371, discriminator: 9)
!1711 = !DILocation(line: 712, column: 34, scope: !413)
!1712 = !DILocation(line: 713, column: 9, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !413, file: !371, line: 713, column: 9)
!1714 = !DILocation(line: 713, column: 45, scope: !1713)
!1715 = !DILocation(line: 713, column: 9, scope: !413)
!1716 = !DILocation(line: 713, column: 50, scope: !1717)
!1717 = !DILexicalBlockFile(scope: !1713, file: !371, discriminator: 1)
!1718 = !DILocation(line: 713, column: 111, scope: !1297)
!1719 = !DILocation(line: 713, column: 139, scope: !466)
!1720 = !DILocation(line: 713, column: 120, scope: !466)
!1721 = !DILocation(line: 713, column: 194, scope: !466)
!1722 = !DILocation(line: 713, column: 120, scope: !413)
!1723 = !DILocation(line: 713, column: 201, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !465, file: !371, discriminator: 3)
!1725 = !DILocation(line: 713, column: 206, scope: !1726)
!1726 = !DILexicalBlockFile(scope: !464, file: !371, discriminator: 4)
!1727 = !DILocation(line: 713, column: 216, scope: !464)
!1728 = !DILocation(line: 713, column: 278, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !464, file: !371, line: 713, column: 275)
!1730 = !DILocation(line: 713, column: 295, scope: !1729)
!1731 = !DILocation(line: 713, column: 275, scope: !1729)
!1732 = !DILocation(line: 713, column: 305, scope: !1729)
!1733 = !DILocation(line: 713, column: 275, scope: !464)
!1734 = !DILocation(line: 713, column: 275, scope: !1735)
!1735 = !DILexicalBlockFile(scope: !464, file: !371, discriminator: 5)
!1736 = !DILocation(line: 713, column: 336, scope: !1737)
!1737 = !DILexicalBlockFile(scope: !1729, file: !371, discriminator: 6)
!1738 = !DILocation(line: 713, column: 354, scope: !1729)
!1739 = !DILocation(line: 713, column: 364, scope: !1729)
!1740 = !DILocation(line: 713, column: 389, scope: !1729)
!1741 = !DILocation(line: 713, column: 320, scope: !1729)
!1742 = !DILocation(line: 713, column: 408, scope: !1743)
!1743 = !DILexicalBlockFile(scope: !465, file: !371, discriminator: 7)
!1744 = !DILocation(line: 713, column: 408, scope: !464)
!1745 = !DILocation(line: 713, column: 408, scope: !1746)
!1746 = !DILexicalBlockFile(scope: !464, file: !371, discriminator: 8)
!1747 = !DILocation(line: 713, column: 421, scope: !1748)
!1748 = !DILexicalBlockFile(scope: !465, file: !371, discriminator: 9)
!1749 = !DILocation(line: 716, column: 9, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !413, file: !371, line: 716, column: 9)
!1751 = !DILocation(line: 716, column: 57, scope: !1750)
!1752 = !DILocation(line: 716, column: 9, scope: !413)
!1753 = !DILocation(line: 716, column: 62, scope: !1754)
!1754 = !DILexicalBlockFile(scope: !1750, file: !371, discriminator: 1)
!1755 = !DILocation(line: 716, column: 135, scope: !1297)
!1756 = !DILocation(line: 716, column: 163, scope: !470)
!1757 = !DILocation(line: 716, column: 144, scope: !470)
!1758 = !DILocation(line: 716, column: 242, scope: !470)
!1759 = !DILocation(line: 716, column: 144, scope: !413)
!1760 = !DILocation(line: 716, column: 249, scope: !1761)
!1761 = !DILexicalBlockFile(scope: !469, file: !371, discriminator: 3)
!1762 = !DILocation(line: 716, column: 254, scope: !1763)
!1763 = !DILexicalBlockFile(scope: !468, file: !371, discriminator: 4)
!1764 = !DILocation(line: 716, column: 264, scope: !468)
!1765 = !DILocation(line: 716, column: 338, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !468, file: !371, line: 716, column: 335)
!1767 = !DILocation(line: 716, column: 355, scope: !1766)
!1768 = !DILocation(line: 716, column: 335, scope: !1766)
!1769 = !DILocation(line: 716, column: 365, scope: !1766)
!1770 = !DILocation(line: 716, column: 335, scope: !468)
!1771 = !DILocation(line: 716, column: 335, scope: !1772)
!1772 = !DILexicalBlockFile(scope: !468, file: !371, discriminator: 5)
!1773 = !DILocation(line: 716, column: 396, scope: !1774)
!1774 = !DILexicalBlockFile(scope: !1766, file: !371, discriminator: 6)
!1775 = !DILocation(line: 716, column: 414, scope: !1766)
!1776 = !DILocation(line: 716, column: 424, scope: !1766)
!1777 = !DILocation(line: 716, column: 449, scope: !1766)
!1778 = !DILocation(line: 716, column: 380, scope: !1766)
!1779 = !DILocation(line: 716, column: 468, scope: !1780)
!1780 = !DILexicalBlockFile(scope: !469, file: !371, discriminator: 7)
!1781 = !DILocation(line: 716, column: 468, scope: !468)
!1782 = !DILocation(line: 716, column: 468, scope: !1783)
!1783 = !DILexicalBlockFile(scope: !468, file: !371, discriminator: 8)
!1784 = !DILocation(line: 716, column: 481, scope: !1785)
!1785 = !DILexicalBlockFile(scope: !469, file: !371, discriminator: 9)
!1786 = !DILocation(line: 724, column: 10, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !413, file: !371, line: 724, column: 9)
!1788 = !DILocation(line: 724, column: 26, scope: !1787)
!1789 = !DILocation(line: 724, column: 49, scope: !1790)
!1790 = !DILexicalBlockFile(scope: !1787, file: !371, discriminator: 1)
!1791 = !DILocation(line: 724, column: 47, scope: !1787)
!1792 = !DILocation(line: 724, column: 9, scope: !413)
!1793 = !DILocation(line: 724, column: 87, scope: !1794)
!1794 = !DILexicalBlockFile(scope: !1787, file: !371, discriminator: 2)
!1795 = !DILocation(line: 725, column: 10, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !413, file: !371, line: 725, column: 9)
!1797 = !DILocation(line: 725, column: 27, scope: !1796)
!1798 = !DILocation(line: 725, column: 51, scope: !1799)
!1799 = !DILexicalBlockFile(scope: !1796, file: !371, discriminator: 1)
!1800 = !DILocation(line: 725, column: 49, scope: !1796)
!1801 = !DILocation(line: 725, column: 9, scope: !413)
!1802 = !DILocation(line: 725, column: 90, scope: !1803)
!1803 = !DILexicalBlockFile(scope: !1796, file: !371, discriminator: 2)
!1804 = !DILocation(line: 726, column: 10, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !413, file: !371, line: 726, column: 9)
!1806 = !DILocation(line: 726, column: 27, scope: !1805)
!1807 = !DILocation(line: 726, column: 51, scope: !1808)
!1808 = !DILexicalBlockFile(scope: !1805, file: !371, discriminator: 1)
!1809 = !DILocation(line: 726, column: 49, scope: !1805)
!1810 = !DILocation(line: 726, column: 9, scope: !413)
!1811 = !DILocation(line: 726, column: 90, scope: !1812)
!1812 = !DILexicalBlockFile(scope: !1805, file: !371, discriminator: 2)
!1813 = !DILocation(line: 727, column: 10, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !413, file: !371, line: 727, column: 9)
!1815 = !DILocation(line: 727, column: 27, scope: !1814)
!1816 = !DILocation(line: 727, column: 51, scope: !1817)
!1817 = !DILexicalBlockFile(scope: !1814, file: !371, discriminator: 1)
!1818 = !DILocation(line: 727, column: 49, scope: !1814)
!1819 = !DILocation(line: 727, column: 9, scope: !413)
!1820 = !DILocation(line: 727, column: 90, scope: !1821)
!1821 = !DILexicalBlockFile(scope: !1814, file: !371, discriminator: 2)
!1822 = !DILocation(line: 728, column: 10, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !413, file: !371, line: 728, column: 9)
!1824 = !DILocation(line: 728, column: 27, scope: !1823)
!1825 = !DILocation(line: 728, column: 51, scope: !1826)
!1826 = !DILexicalBlockFile(scope: !1823, file: !371, discriminator: 1)
!1827 = !DILocation(line: 728, column: 49, scope: !1823)
!1828 = !DILocation(line: 728, column: 9, scope: !413)
!1829 = !DILocation(line: 728, column: 90, scope: !1830)
!1830 = !DILexicalBlockFile(scope: !1823, file: !371, discriminator: 2)
!1831 = !DILocation(line: 729, column: 10, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !413, file: !371, line: 729, column: 9)
!1833 = !DILocation(line: 729, column: 26, scope: !1832)
!1834 = !DILocation(line: 729, column: 49, scope: !1835)
!1835 = !DILexicalBlockFile(scope: !1832, file: !371, discriminator: 1)
!1836 = !DILocation(line: 729, column: 47, scope: !1832)
!1837 = !DILocation(line: 729, column: 9, scope: !413)
!1838 = !DILocation(line: 729, column: 87, scope: !1839)
!1839 = !DILexicalBlockFile(scope: !1832, file: !371, discriminator: 2)
!1840 = !DILocation(line: 730, column: 10, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !413, file: !371, line: 730, column: 9)
!1842 = !DILocation(line: 730, column: 29, scope: !1841)
!1843 = !DILocation(line: 730, column: 55, scope: !1844)
!1844 = !DILexicalBlockFile(scope: !1841, file: !371, discriminator: 1)
!1845 = !DILocation(line: 730, column: 53, scope: !1841)
!1846 = !DILocation(line: 730, column: 9, scope: !413)
!1847 = !DILocation(line: 730, column: 96, scope: !1848)
!1848 = !DILexicalBlockFile(scope: !1841, file: !371, discriminator: 2)
!1849 = !DILocation(line: 731, column: 10, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !413, file: !371, line: 731, column: 9)
!1851 = !DILocation(line: 731, column: 27, scope: !1850)
!1852 = !DILocation(line: 731, column: 51, scope: !1853)
!1853 = !DILexicalBlockFile(scope: !1850, file: !371, discriminator: 1)
!1854 = !DILocation(line: 731, column: 49, scope: !1850)
!1855 = !DILocation(line: 731, column: 9, scope: !413)
!1856 = !DILocation(line: 731, column: 90, scope: !1857)
!1857 = !DILexicalBlockFile(scope: !1850, file: !371, discriminator: 2)
!1858 = !DILocation(line: 732, column: 10, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !413, file: !371, line: 732, column: 9)
!1860 = !DILocation(line: 732, column: 29, scope: !1859)
!1861 = !DILocation(line: 732, column: 55, scope: !1862)
!1862 = !DILexicalBlockFile(scope: !1859, file: !371, discriminator: 1)
!1863 = !DILocation(line: 732, column: 53, scope: !1859)
!1864 = !DILocation(line: 732, column: 9, scope: !413)
!1865 = !DILocation(line: 732, column: 96, scope: !1866)
!1866 = !DILexicalBlockFile(scope: !1859, file: !371, discriminator: 2)
!1867 = !DILocation(line: 733, column: 10, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !413, file: !371, line: 733, column: 9)
!1869 = !DILocation(line: 733, column: 25, scope: !1868)
!1870 = !DILocation(line: 733, column: 47, scope: !1871)
!1871 = !DILexicalBlockFile(scope: !1868, file: !371, discriminator: 1)
!1872 = !DILocation(line: 733, column: 45, scope: !1868)
!1873 = !DILocation(line: 733, column: 9, scope: !413)
!1874 = !DILocation(line: 733, column: 84, scope: !1875)
!1875 = !DILexicalBlockFile(scope: !1868, file: !371, discriminator: 2)
!1876 = !DILocation(line: 734, column: 10, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !413, file: !371, line: 734, column: 9)
!1878 = !DILocation(line: 734, column: 26, scope: !1877)
!1879 = !DILocation(line: 734, column: 49, scope: !1880)
!1880 = !DILexicalBlockFile(scope: !1877, file: !371, discriminator: 1)
!1881 = !DILocation(line: 734, column: 47, scope: !1877)
!1882 = !DILocation(line: 734, column: 9, scope: !413)
!1883 = !DILocation(line: 734, column: 87, scope: !1884)
!1884 = !DILexicalBlockFile(scope: !1877, file: !371, discriminator: 2)
!1885 = !DILocation(line: 735, column: 10, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !413, file: !371, line: 735, column: 9)
!1887 = !DILocation(line: 735, column: 29, scope: !1886)
!1888 = !DILocation(line: 735, column: 55, scope: !1889)
!1889 = !DILexicalBlockFile(scope: !1886, file: !371, discriminator: 1)
!1890 = !DILocation(line: 735, column: 53, scope: !1886)
!1891 = !DILocation(line: 735, column: 9, scope: !413)
!1892 = !DILocation(line: 735, column: 96, scope: !1893)
!1893 = !DILexicalBlockFile(scope: !1886, file: !371, discriminator: 2)
!1894 = !DILocation(line: 736, column: 10, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !413, file: !371, line: 736, column: 9)
!1896 = !DILocation(line: 736, column: 28, scope: !1895)
!1897 = !DILocation(line: 736, column: 53, scope: !1898)
!1898 = !DILexicalBlockFile(scope: !1895, file: !371, discriminator: 1)
!1899 = !DILocation(line: 736, column: 51, scope: !1895)
!1900 = !DILocation(line: 736, column: 9, scope: !413)
!1901 = !DILocation(line: 736, column: 93, scope: !1902)
!1902 = !DILexicalBlockFile(scope: !1895, file: !371, discriminator: 2)
!1903 = !DILocation(line: 737, column: 10, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !413, file: !371, line: 737, column: 9)
!1905 = !DILocation(line: 737, column: 29, scope: !1904)
!1906 = !DILocation(line: 737, column: 55, scope: !1907)
!1907 = !DILexicalBlockFile(scope: !1904, file: !371, discriminator: 1)
!1908 = !DILocation(line: 737, column: 53, scope: !1904)
!1909 = !DILocation(line: 737, column: 9, scope: !413)
!1910 = !DILocation(line: 737, column: 96, scope: !1911)
!1911 = !DILexicalBlockFile(scope: !1904, file: !371, discriminator: 2)
!1912 = !DILocation(line: 738, column: 10, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !413, file: !371, line: 738, column: 9)
!1914 = !DILocation(line: 738, column: 29, scope: !1913)
!1915 = !DILocation(line: 738, column: 55, scope: !1916)
!1916 = !DILexicalBlockFile(scope: !1913, file: !371, discriminator: 1)
!1917 = !DILocation(line: 738, column: 53, scope: !1913)
!1918 = !DILocation(line: 738, column: 9, scope: !413)
!1919 = !DILocation(line: 738, column: 96, scope: !1920)
!1920 = !DILexicalBlockFile(scope: !1913, file: !371, discriminator: 2)
!1921 = !DILocation(line: 739, column: 10, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !413, file: !371, line: 739, column: 9)
!1923 = !DILocation(line: 739, column: 26, scope: !1922)
!1924 = !DILocation(line: 739, column: 49, scope: !1925)
!1925 = !DILexicalBlockFile(scope: !1922, file: !371, discriminator: 1)
!1926 = !DILocation(line: 739, column: 47, scope: !1922)
!1927 = !DILocation(line: 739, column: 9, scope: !413)
!1928 = !DILocation(line: 739, column: 87, scope: !1929)
!1929 = !DILexicalBlockFile(scope: !1922, file: !371, discriminator: 2)
!1930 = !DILocation(line: 740, column: 10, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !413, file: !371, line: 740, column: 9)
!1932 = !DILocation(line: 740, column: 25, scope: !1931)
!1933 = !DILocation(line: 740, column: 47, scope: !1934)
!1934 = !DILexicalBlockFile(scope: !1931, file: !371, discriminator: 1)
!1935 = !DILocation(line: 740, column: 45, scope: !1931)
!1936 = !DILocation(line: 740, column: 9, scope: !413)
!1937 = !DILocation(line: 740, column: 84, scope: !1938)
!1938 = !DILexicalBlockFile(scope: !1931, file: !371, discriminator: 2)
!1939 = !DILocation(line: 741, column: 10, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !413, file: !371, line: 741, column: 9)
!1941 = !DILocation(line: 741, column: 29, scope: !1940)
!1942 = !DILocation(line: 741, column: 55, scope: !1943)
!1943 = !DILexicalBlockFile(scope: !1940, file: !371, discriminator: 1)
!1944 = !DILocation(line: 741, column: 53, scope: !1940)
!1945 = !DILocation(line: 741, column: 9, scope: !413)
!1946 = !DILocation(line: 741, column: 96, scope: !1947)
!1947 = !DILexicalBlockFile(scope: !1940, file: !371, discriminator: 2)
!1948 = !DILocation(line: 742, column: 10, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !413, file: !371, line: 742, column: 9)
!1950 = !DILocation(line: 742, column: 29, scope: !1949)
!1951 = !DILocation(line: 742, column: 55, scope: !1952)
!1952 = !DILexicalBlockFile(scope: !1949, file: !371, discriminator: 1)
!1953 = !DILocation(line: 742, column: 53, scope: !1949)
!1954 = !DILocation(line: 742, column: 9, scope: !413)
!1955 = !DILocation(line: 742, column: 96, scope: !1956)
!1956 = !DILexicalBlockFile(scope: !1949, file: !371, discriminator: 2)
!1957 = !DILocation(line: 743, column: 10, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !413, file: !371, line: 743, column: 9)
!1959 = !DILocation(line: 743, column: 25, scope: !1958)
!1960 = !DILocation(line: 743, column: 47, scope: !1961)
!1961 = !DILexicalBlockFile(scope: !1958, file: !371, discriminator: 1)
!1962 = !DILocation(line: 743, column: 45, scope: !1958)
!1963 = !DILocation(line: 743, column: 9, scope: !413)
!1964 = !DILocation(line: 743, column: 84, scope: !1965)
!1965 = !DILexicalBlockFile(scope: !1958, file: !371, discriminator: 2)
!1966 = !DILocation(line: 744, column: 10, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !413, file: !371, line: 744, column: 9)
!1968 = !DILocation(line: 744, column: 29, scope: !1967)
!1969 = !DILocation(line: 744, column: 55, scope: !1970)
!1970 = !DILexicalBlockFile(scope: !1967, file: !371, discriminator: 1)
!1971 = !DILocation(line: 744, column: 53, scope: !1967)
!1972 = !DILocation(line: 744, column: 9, scope: !413)
!1973 = !DILocation(line: 744, column: 96, scope: !1974)
!1974 = !DILexicalBlockFile(scope: !1967, file: !371, discriminator: 2)
!1975 = !DILocation(line: 745, column: 10, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !413, file: !371, line: 745, column: 9)
!1977 = !DILocation(line: 745, column: 26, scope: !1976)
!1978 = !DILocation(line: 745, column: 49, scope: !1979)
!1979 = !DILexicalBlockFile(scope: !1976, file: !371, discriminator: 1)
!1980 = !DILocation(line: 745, column: 47, scope: !1976)
!1981 = !DILocation(line: 745, column: 9, scope: !413)
!1982 = !DILocation(line: 745, column: 87, scope: !1983)
!1983 = !DILexicalBlockFile(scope: !1976, file: !371, discriminator: 2)
!1984 = !DILocation(line: 746, column: 10, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !413, file: !371, line: 746, column: 9)
!1986 = !DILocation(line: 746, column: 29, scope: !1985)
!1987 = !DILocation(line: 746, column: 55, scope: !1988)
!1988 = !DILexicalBlockFile(scope: !1985, file: !371, discriminator: 1)
!1989 = !DILocation(line: 746, column: 53, scope: !1985)
!1990 = !DILocation(line: 746, column: 9, scope: !413)
!1991 = !DILocation(line: 746, column: 96, scope: !1992)
!1992 = !DILexicalBlockFile(scope: !1985, file: !371, discriminator: 2)
!1993 = !DILocation(line: 748, column: 10, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !413, file: !371, line: 748, column: 9)
!1995 = !DILocation(line: 748, column: 23, scope: !1994)
!1996 = !DILocation(line: 749, column: 26, scope: !1994)
!1997 = !DILocation(line: 749, column: 24, scope: !1994)
!1998 = !DILocation(line: 748, column: 9, scope: !413)
!1999 = !DILocation(line: 750, column: 9, scope: !1994)
!2000 = !DILocation(line: 752, column: 10, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !413, file: !371, line: 752, column: 9)
!2002 = !DILocation(line: 752, column: 26, scope: !2001)
!2003 = !DILocation(line: 753, column: 29, scope: !2001)
!2004 = !DILocation(line: 753, column: 27, scope: !2001)
!2005 = !DILocation(line: 752, column: 9, scope: !413)
!2006 = !DILocation(line: 754, column: 9, scope: !2001)
!2007 = !DILocation(line: 755, column: 10, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !413, file: !371, line: 755, column: 9)
!2009 = !DILocation(line: 755, column: 28, scope: !2008)
!2010 = !DILocation(line: 756, column: 31, scope: !2008)
!2011 = !DILocation(line: 756, column: 29, scope: !2008)
!2012 = !DILocation(line: 755, column: 9, scope: !413)
!2013 = !DILocation(line: 757, column: 9, scope: !2008)
!2014 = !DILocation(line: 758, column: 10, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !413, file: !371, line: 758, column: 9)
!2016 = !DILocation(line: 758, column: 21, scope: !2015)
!2017 = !DILocation(line: 759, column: 24, scope: !2015)
!2018 = !DILocation(line: 759, column: 22, scope: !2015)
!2019 = !DILocation(line: 758, column: 9, scope: !413)
!2020 = !DILocation(line: 760, column: 9, scope: !2015)
!2021 = !DILocation(line: 762, column: 5, scope: !413)
!2022 = !DILocation(line: 762, column: 12, scope: !413)
!2023 = !DILocation(line: 762, column: 24, scope: !413)
!2024 = !DILocation(line: 764, column: 12, scope: !413)
!2025 = !DILocation(line: 764, column: 5, scope: !413)
!2026 = !DILocation(line: 767, column: 5, scope: !413)
!2027 = !DILocation(line: 767, column: 10, scope: !2028)
!2028 = !DILexicalBlockFile(scope: !472, file: !371, discriminator: 1)
!2029 = !DILocation(line: 767, column: 20, scope: !472)
!2030 = !DILocation(line: 767, column: 51, scope: !472)
!2031 = !DILocation(line: 767, column: 58, scope: !472)
!2032 = !DILocation(line: 767, column: 86, scope: !475)
!2033 = !DILocation(line: 767, column: 102, scope: !475)
!2034 = !DILocation(line: 767, column: 86, scope: !472)
!2035 = !DILocation(line: 767, column: 117, scope: !2036)
!2036 = !DILexicalBlockFile(scope: !475, file: !371, discriminator: 2)
!2037 = !DILocation(line: 767, column: 122, scope: !2038)
!2038 = !DILexicalBlockFile(scope: !474, file: !371, discriminator: 4)
!2039 = !DILocation(line: 767, column: 132, scope: !474)
!2040 = !DILocation(line: 767, column: 162, scope: !474)
!2041 = !DILocation(line: 767, column: 188, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !474, file: !371, line: 767, column: 185)
!2043 = !DILocation(line: 767, column: 205, scope: !2042)
!2044 = !DILocation(line: 767, column: 185, scope: !2042)
!2045 = !DILocation(line: 767, column: 215, scope: !2042)
!2046 = !DILocation(line: 767, column: 185, scope: !474)
!2047 = !DILocation(line: 767, column: 185, scope: !2048)
!2048 = !DILexicalBlockFile(scope: !474, file: !371, discriminator: 5)
!2049 = !DILocation(line: 767, column: 246, scope: !2050)
!2050 = !DILexicalBlockFile(scope: !2042, file: !371, discriminator: 6)
!2051 = !DILocation(line: 767, column: 264, scope: !2042)
!2052 = !DILocation(line: 767, column: 274, scope: !2042)
!2053 = !DILocation(line: 767, column: 299, scope: !2042)
!2054 = !DILocation(line: 767, column: 230, scope: !2042)
!2055 = !DILocation(line: 767, column: 318, scope: !2056)
!2056 = !DILexicalBlockFile(scope: !475, file: !371, discriminator: 7)
!2057 = !DILocation(line: 767, column: 318, scope: !474)
!2058 = !DILocation(line: 767, column: 318, scope: !2059)
!2059 = !DILexicalBlockFile(scope: !474, file: !371, discriminator: 8)
!2060 = !DILocation(line: 767, column: 318, scope: !2061)
!2061 = !DILexicalBlockFile(scope: !474, file: !371, discriminator: 9)
!2062 = !DILocation(line: 767, column: 331, scope: !2063)
!2063 = !DILexicalBlockFile(scope: !2064, file: !371, discriminator: 10)
!2064 = !DILexicalBlockFile(scope: !413, file: !371, discriminator: 3)
!2065 = !DILocation(line: 767, column: 331, scope: !472)
!2066 = !DILocation(line: 767, column: 331, scope: !2067)
!2067 = !DILexicalBlockFile(scope: !472, file: !371, discriminator: 11)
!2068 = !DILocation(line: 768, column: 5, scope: !413)
!2069 = !DILocation(line: 768, column: 10, scope: !2070)
!2070 = !DILexicalBlockFile(scope: !477, file: !371, discriminator: 1)
!2071 = !DILocation(line: 768, column: 20, scope: !477)
!2072 = !DILocation(line: 768, column: 50, scope: !477)
!2073 = !DILocation(line: 768, column: 62, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !477, file: !371, line: 768, column: 59)
!2075 = !DILocation(line: 768, column: 79, scope: !2074)
!2076 = !DILocation(line: 768, column: 59, scope: !2074)
!2077 = !DILocation(line: 768, column: 89, scope: !2074)
!2078 = !DILocation(line: 768, column: 59, scope: !477)
!2079 = !DILocation(line: 768, column: 59, scope: !2080)
!2080 = !DILexicalBlockFile(scope: !477, file: !371, discriminator: 2)
!2081 = !DILocation(line: 768, column: 120, scope: !2082)
!2082 = !DILexicalBlockFile(scope: !2074, file: !371, discriminator: 3)
!2083 = !DILocation(line: 768, column: 138, scope: !2074)
!2084 = !DILocation(line: 768, column: 148, scope: !2074)
!2085 = !DILocation(line: 768, column: 173, scope: !2074)
!2086 = !DILocation(line: 768, column: 104, scope: !2074)
!2087 = !DILocation(line: 768, column: 192, scope: !2088)
!2088 = !DILexicalBlockFile(scope: !413, file: !371, discriminator: 4)
!2089 = !DILocation(line: 768, column: 192, scope: !477)
!2090 = !DILocation(line: 768, column: 192, scope: !2091)
!2091 = !DILexicalBlockFile(scope: !477, file: !371, discriminator: 5)
!2092 = !DILocation(line: 769, column: 5, scope: !413)
!2093 = !DILocation(line: 770, column: 1, scope: !413)
!2094 = !DILocation(line: 221, column: 19, scope: !478)
!2095 = !DILocation(line: 221, column: 35, scope: !478)
!2096 = !DILocation(line: 221, column: 51, scope: !478)
!2097 = !DILocation(line: 223, column: 5, scope: !478)
!2098 = !DILocation(line: 223, column: 11, scope: !478)
!2099 = !DILocation(line: 226, column: 5, scope: !478)
!2100 = !DILocation(line: 226, column: 15, scope: !478)
!2101 = !DILocation(line: 226, column: 22, scope: !478)
!2102 = !DILocation(line: 227, column: 5, scope: !478)
!2103 = !DILocation(line: 227, column: 11, scope: !478)
!2104 = !DILocation(line: 228, column: 5, scope: !478)
!2105 = !DILocation(line: 228, column: 9, scope: !478)
!2106 = !DILocation(line: 228, column: 25, scope: !478)
!2107 = !DILocation(line: 229, column: 5, scope: !478)
!2108 = !DILocation(line: 229, column: 11, scope: !478)
!2109 = !DILocation(line: 229, column: 35, scope: !478)
!2110 = !DILocation(line: 229, column: 57, scope: !478)
!2111 = !DILocation(line: 230, column: 5, scope: !478)
!2112 = !DILocation(line: 230, column: 14, scope: !478)
!2113 = !DILocation(line: 232, column: 5, scope: !478)
!2114 = !DILocation(line: 232, column: 9, scope: !478)
!2115 = !DILocation(line: 232, column: 23, scope: !478)
!2116 = !DILocation(line: 232, column: 36, scope: !478)
!2117 = !DILocation(line: 232, column: 49, scope: !478)
!2118 = !DILocation(line: 232, column: 64, scope: !478)
!2119 = !DILocation(line: 233, column: 5, scope: !478)
!2120 = !DILocation(line: 233, column: 9, scope: !478)
!2121 = !DILocation(line: 233, column: 19, scope: !478)
!2122 = !DILocation(line: 233, column: 31, scope: !478)
!2123 = !DILocation(line: 235, column: 5, scope: !478)
!2124 = !DILocation(line: 235, column: 10, scope: !478)
!2125 = !DILocation(line: 235, column: 23, scope: !478)
!2126 = !DILocation(line: 236, column: 5, scope: !478)
!2127 = !DILocation(line: 236, column: 9, scope: !478)
!2128 = !DILocation(line: 236, column: 25, scope: !478)
!2129 = !DILocation(line: 238, column: 5, scope: !478)
!2130 = !DILocation(line: 238, column: 15, scope: !478)
!2131 = !DILocation(line: 238, column: 21, scope: !478)
!2132 = !DILocation(line: 238, column: 44, scope: !478)
!2133 = !DILocation(line: 238, column: 66, scope: !478)
!2134 = !DILocation(line: 244, column: 45, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !478, file: !371, line: 244, column: 9)
!2136 = !DILocation(line: 244, column: 51, scope: !2135)
!2137 = !DILocation(line: 244, column: 75, scope: !2135)
!2138 = !DILocation(line: 244, column: 10, scope: !2135)
!2139 = !DILocation(line: 244, column: 9, scope: !478)
!2140 = !DILocation(line: 248, column: 9, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2135, file: !371, line: 247, column: 58)
!2142 = !DILocation(line: 251, column: 27, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !478, file: !371, line: 251, column: 9)
!2144 = !DILocation(line: 251, column: 35, scope: !2143)
!2145 = !DILocation(line: 251, column: 46, scope: !2143)
!2146 = !{!812, !774, i64 168}
!2147 = !DILocation(line: 251, column: 55, scope: !2143)
!2148 = !DILocation(line: 251, column: 72, scope: !2143)
!2149 = !DILocation(line: 251, column: 78, scope: !2143)
!2150 = !DILocation(line: 252, column: 20, scope: !2143)
!2151 = !DILocation(line: 252, column: 28, scope: !2143)
!2152 = !DILocation(line: 252, column: 39, scope: !2143)
!2153 = !DILocation(line: 252, column: 48, scope: !2143)
!2154 = !DILocation(line: 252, column: 65, scope: !2143)
!2155 = !DILocation(line: 252, column: 71, scope: !2143)
!2156 = !DILocation(line: 253, column: 18, scope: !2143)
!2157 = !DILocation(line: 253, column: 3, scope: !2143)
!2158 = !DILocation(line: 251, column: 9, scope: !478)
!2159 = !DILocation(line: 254, column: 22, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2143, file: !371, line: 253, column: 25)
!2161 = !DILocation(line: 254, column: 59, scope: !2160)
!2162 = !DILocation(line: 254, column: 9, scope: !2160)
!2163 = !DILocation(line: 255, column: 9, scope: !2160)
!2164 = !DILocation(line: 259, column: 12, scope: !518)
!2165 = !DILocation(line: 259, column: 10, scope: !518)
!2166 = !DILocation(line: 259, column: 17, scope: !2167)
!2167 = !DILexicalBlockFile(scope: !2168, file: !371, discriminator: 2)
!2168 = !DILexicalBlockFile(scope: !517, file: !371, discriminator: 1)
!2169 = !DILocation(line: 259, column: 28, scope: !517)
!2170 = !DILocation(line: 259, column: 21, scope: !517)
!2171 = !DILocation(line: 259, column: 19, scope: !517)
!2172 = !DILocation(line: 259, column: 5, scope: !518)
!2173 = !DILocation(line: 260, column: 9, scope: !516)
!2174 = !DILocation(line: 260, column: 14, scope: !516)
!2175 = !DILocation(line: 260, column: 23, scope: !516)
!2176 = !DILocation(line: 260, column: 18, scope: !516)
!2177 = !{!752, !752, i64 0}
!2178 = !DILocation(line: 262, column: 17, scope: !516)
!2179 = !DILocation(line: 264, column: 22, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !516, file: !371, line: 262, column: 20)
!2181 = !DILocation(line: 265, column: 13, scope: !2180)
!2182 = !DILocation(line: 267, column: 21, scope: !2180)
!2183 = !DILocation(line: 268, column: 13, scope: !2180)
!2184 = !DILocation(line: 270, column: 21, scope: !2180)
!2185 = !DILocation(line: 271, column: 13, scope: !2180)
!2186 = !DILocation(line: 273, column: 23, scope: !2180)
!2187 = !DILocation(line: 274, column: 13, scope: !2180)
!2188 = !DILocation(line: 276, column: 22, scope: !2180)
!2189 = !DILocation(line: 277, column: 13, scope: !2180)
!2190 = !DILocation(line: 279, column: 18, scope: !2180)
!2191 = !DILocation(line: 280, column: 13, scope: !2180)
!2192 = !DILocation(line: 282, column: 20, scope: !2180)
!2193 = !DILocation(line: 283, column: 13, scope: !2180)
!2194 = !DILocation(line: 285, column: 23, scope: !2180)
!2195 = !DILocation(line: 286, column: 21, scope: !2180)
!2196 = !DILocation(line: 287, column: 13, scope: !2180)
!2197 = !DILocation(line: 289, column: 13, scope: !2180)
!2198 = !DILocation(line: 293, column: 90, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !516, file: !371, line: 293, column: 13)
!2200 = !DILocation(line: 293, column: 94, scope: !2201)
!2201 = !DILexicalBlockFile(scope: !2199, file: !371, discriminator: 1)
!2202 = !DILocation(line: 293, column: 93, scope: !2199)
!2203 = !DILocation(line: 293, column: 97, scope: !2199)
!2204 = !DILocation(line: 293, column: 13, scope: !516)
!2205 = !DILocation(line: 293, column: 129, scope: !2206)
!2206 = !DILexicalBlockFile(scope: !2199, file: !371, discriminator: 3)
!2207 = !DILocation(line: 293, column: 134, scope: !2199)
!2208 = !DILocation(line: 293, column: 133, scope: !2199)
!2209 = !DILocation(line: 293, column: 135, scope: !2199)
!2210 = !DILocation(line: 293, column: 139, scope: !2199)
!2211 = !DILocation(line: 293, column: 116, scope: !2199)
!2212 = !DILocation(line: 293, column: 107, scope: !2199)
!2213 = !DILocation(line: 293, column: 29, scope: !2199)
!2214 = !DILocation(line: 293, column: 162, scope: !2215)
!2215 = !DILexicalBlockFile(scope: !2216, file: !371, discriminator: 4)
!2216 = !DILexicalBlockFile(scope: !2199, file: !371, discriminator: 2)
!2217 = !DILocation(line: 293, column: 167, scope: !2199)
!2218 = !DILocation(line: 293, column: 166, scope: !2199)
!2219 = !DILocation(line: 293, column: 168, scope: !2199)
!2220 = !DILocation(line: 293, column: 172, scope: !2199)
!2221 = !DILocation(line: 293, column: 144, scope: !2199)
!2222 = !DILocation(line: 293, column: 178, scope: !2223)
!2223 = !DILexicalBlockFile(scope: !2224, file: !371, discriminator: 6)
!2224 = !DILexicalBlockFile(scope: !2199, file: !371, discriminator: 5)
!2225 = !DILocation(line: 295, column: 26, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2199, file: !371, line: 293, column: 178)
!2227 = !DILocation(line: 295, column: 66, scope: !2226)
!2228 = !DILocation(line: 295, column: 13, scope: !2226)
!2229 = !DILocation(line: 296, column: 13, scope: !2226)
!2230 = !DILocation(line: 299, column: 5, scope: !517)
!2231 = !DILocation(line: 299, column: 5, scope: !516)
!2232 = !DILocation(line: 259, column: 36, scope: !517)
!2233 = !DILocation(line: 259, column: 5, scope: !517)
!2234 = !DILocation(line: 301, column: 9, scope: !478)
!2235 = !DILocation(line: 301, column: 7, scope: !478)
!2236 = !DILocation(line: 302, column: 9, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !478, file: !371, line: 302, column: 9)
!2238 = !DILocation(line: 302, column: 9, scope: !478)
!2239 = !DILocation(line: 302, column: 22, scope: !2240)
!2240 = !DILexicalBlockFile(scope: !2237, file: !371, discriminator: 1)
!2241 = !DILocation(line: 302, column: 26, scope: !2237)
!2242 = !DILocation(line: 302, column: 19, scope: !2237)
!2243 = !DILocation(line: 303, column: 9, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !478, file: !371, line: 303, column: 9)
!2245 = !DILocation(line: 303, column: 9, scope: !478)
!2246 = !DILocation(line: 303, column: 21, scope: !2247)
!2247 = !DILexicalBlockFile(scope: !2244, file: !371, discriminator: 1)
!2248 = !DILocation(line: 303, column: 25, scope: !2244)
!2249 = !DILocation(line: 303, column: 18, scope: !2244)
!2250 = !DILocation(line: 304, column: 9, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !478, file: !371, line: 304, column: 9)
!2252 = !DILocation(line: 304, column: 9, scope: !478)
!2253 = !DILocation(line: 304, column: 21, scope: !2254)
!2254 = !DILexicalBlockFile(scope: !2251, file: !371, discriminator: 1)
!2255 = !DILocation(line: 304, column: 25, scope: !2251)
!2256 = !DILocation(line: 304, column: 18, scope: !2251)
!2257 = !DILocation(line: 305, column: 9, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !478, file: !371, line: 305, column: 9)
!2259 = !DILocation(line: 305, column: 9, scope: !478)
!2260 = !DILocation(line: 305, column: 23, scope: !2261)
!2261 = !DILexicalBlockFile(scope: !2258, file: !371, discriminator: 1)
!2262 = !DILocation(line: 305, column: 27, scope: !2258)
!2263 = !DILocation(line: 305, column: 20, scope: !2258)
!2264 = !DILocation(line: 306, column: 9, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !478, file: !371, line: 306, column: 9)
!2266 = !DILocation(line: 306, column: 9, scope: !478)
!2267 = !DILocation(line: 306, column: 22, scope: !2268)
!2268 = !DILexicalBlockFile(scope: !2265, file: !371, discriminator: 1)
!2269 = !DILocation(line: 306, column: 26, scope: !2265)
!2270 = !DILocation(line: 306, column: 19, scope: !2265)
!2271 = !DILocation(line: 307, column: 6, scope: !478)
!2272 = !DILocation(line: 307, column: 8, scope: !478)
!2273 = !DILocation(line: 310, column: 9, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !478, file: !371, line: 310, column: 9)
!2275 = !DILocation(line: 310, column: 9, scope: !478)
!2276 = !DILocation(line: 311, column: 13, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !371, line: 311, column: 13)
!2278 = distinct !DILexicalBlock(scope: !2274, file: !371, line: 310, column: 20)
!2279 = !DILocation(line: 311, column: 21, scope: !2277)
!2280 = !DILocation(line: 311, column: 24, scope: !2281)
!2281 = !DILexicalBlockFile(scope: !2277, file: !371, discriminator: 1)
!2282 = !DILocation(line: 311, column: 13, scope: !2278)
!2283 = !DILocation(line: 312, column: 29, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2277, file: !371, line: 311, column: 35)
!2285 = !DILocation(line: 312, column: 13, scope: !2284)
!2286 = !DILocation(line: 314, column: 13, scope: !2284)
!2287 = !DILocation(line: 316, column: 26, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2278, file: !371, line: 316, column: 13)
!2289 = !DILocation(line: 316, column: 13, scope: !2288)
!2290 = !DILocation(line: 317, column: 55, scope: !2288)
!2291 = !DILocation(line: 316, column: 13, scope: !2278)
!2292 = !DILocation(line: 318, column: 13, scope: !2288)
!2293 = !DILocation(line: 319, column: 17, scope: !2278)
!2294 = !DILocation(line: 320, column: 5, scope: !2278)
!2295 = !DILocation(line: 322, column: 9, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !478, file: !371, line: 322, column: 9)
!2297 = !DILocation(line: 322, column: 14, scope: !2296)
!2298 = !DILocation(line: 322, column: 17, scope: !2299)
!2299 = !DILexicalBlockFile(scope: !2296, file: !371, discriminator: 1)
!2300 = !DILocation(line: 322, column: 9, scope: !478)
!2301 = !DILocation(line: 323, column: 25, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2296, file: !371, line: 322, column: 25)
!2303 = !DILocation(line: 323, column: 9, scope: !2302)
!2304 = !DILocation(line: 325, column: 9, scope: !2302)
!2305 = !DILocation(line: 328, column: 9, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !478, file: !371, line: 328, column: 9)
!2307 = !DILocation(line: 328, column: 20, scope: !2306)
!2308 = !DILocation(line: 328, column: 18, scope: !2306)
!2309 = !DILocation(line: 328, column: 30, scope: !2306)
!2310 = !DILocation(line: 328, column: 28, scope: !2306)
!2311 = !DILocation(line: 328, column: 40, scope: !2306)
!2312 = !DILocation(line: 328, column: 38, scope: !2306)
!2313 = !DILocation(line: 328, column: 50, scope: !2306)
!2314 = !DILocation(line: 328, column: 9, scope: !478)
!2315 = !DILocation(line: 329, column: 25, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2306, file: !371, line: 328, column: 55)
!2317 = !DILocation(line: 329, column: 9, scope: !2316)
!2318 = !DILocation(line: 331, column: 9, scope: !2316)
!2319 = !DILocation(line: 334, column: 9, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !478, file: !371, line: 334, column: 9)
!2321 = !DILocation(line: 334, column: 16, scope: !2320)
!2322 = !DILocation(line: 334, column: 19, scope: !2323)
!2323 = !DILexicalBlockFile(scope: !2320, file: !371, discriminator: 1)
!2324 = !DILocation(line: 334, column: 28, scope: !2320)
!2325 = !DILocation(line: 334, column: 9, scope: !478)
!2326 = !DILocation(line: 335, column: 25, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2320, file: !371, line: 334, column: 43)
!2328 = !DILocation(line: 335, column: 9, scope: !2327)
!2329 = !DILocation(line: 337, column: 9, scope: !2327)
!2330 = !DILocation(line: 340, column: 9, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !478, file: !371, line: 340, column: 9)
!2332 = !DILocation(line: 340, column: 16, scope: !2331)
!2333 = !DILocation(line: 340, column: 19, scope: !2334)
!2334 = !DILexicalBlockFile(scope: !2331, file: !371, discriminator: 1)
!2335 = !DILocation(line: 340, column: 26, scope: !2331)
!2336 = !DILocation(line: 340, column: 9, scope: !478)
!2337 = !DILocation(line: 341, column: 25, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2331, file: !371, line: 340, column: 41)
!2339 = !DILocation(line: 341, column: 9, scope: !2338)
!2340 = !DILocation(line: 343, column: 9, scope: !2338)
!2341 = !DILocation(line: 346, column: 9, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !478, file: !371, line: 346, column: 9)
!2343 = !DILocation(line: 346, column: 16, scope: !2342)
!2344 = !DILocation(line: 346, column: 19, scope: !2345)
!2345 = !DILexicalBlockFile(scope: !2342, file: !371, discriminator: 1)
!2346 = !DILocation(line: 346, column: 27, scope: !2342)
!2347 = !DILocation(line: 346, column: 9, scope: !478)
!2348 = !DILocation(line: 347, column: 25, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2342, file: !371, line: 346, column: 42)
!2350 = !DILocation(line: 347, column: 9, scope: !2349)
!2351 = !DILocation(line: 349, column: 9, scope: !2349)
!2352 = !DILocation(line: 354, column: 41, scope: !478)
!2353 = !DILocation(line: 354, column: 47, scope: !478)
!2354 = !DILocation(line: 354, column: 56, scope: !478)
!2355 = !DILocation(line: 354, column: 65, scope: !478)
!2356 = !DILocation(line: 353, column: 11, scope: !478)
!2357 = !DILocation(line: 353, column: 9, scope: !478)
!2358 = !DILocation(line: 355, column: 9, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !478, file: !371, line: 355, column: 9)
!2360 = !DILocation(line: 355, column: 13, scope: !2359)
!2361 = !DILocation(line: 355, column: 9, scope: !478)
!2362 = !DILocation(line: 356, column: 9, scope: !2359)
!2363 = !DILocation(line: 358, column: 36, scope: !478)
!2364 = !DILocation(line: 358, column: 15, scope: !478)
!2365 = !DILocation(line: 358, column: 13, scope: !478)
!2366 = !DILocation(line: 359, column: 9, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !478, file: !371, line: 359, column: 9)
!2368 = !DILocation(line: 359, column: 17, scope: !2367)
!2369 = !DILocation(line: 359, column: 9, scope: !478)
!2370 = !DILocation(line: 360, column: 9, scope: !2367)
!2371 = !DILocation(line: 364, column: 9, scope: !520)
!2372 = !DILocation(line: 364, column: 19, scope: !520)
!2373 = !DILocation(line: 364, column: 54, scope: !520)
!2374 = !DILocation(line: 364, column: 25, scope: !520)
!2375 = !DILocation(line: 365, column: 13, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !520, file: !371, line: 365, column: 13)
!2377 = !DILocation(line: 365, column: 17, scope: !2376)
!2378 = !DILocation(line: 365, column: 13, scope: !520)
!2379 = !DILocation(line: 366, column: 13, scope: !2376)
!2380 = !DILocation(line: 367, column: 32, scope: !520)
!2381 = !DILocation(line: 367, column: 18, scope: !520)
!2382 = !DILocation(line: 367, column: 16, scope: !520)
!2383 = !DILocation(line: 368, column: 9, scope: !520)
!2384 = !DILocation(line: 368, column: 14, scope: !2385)
!2385 = !DILexicalBlockFile(scope: !522, file: !371, discriminator: 1)
!2386 = !DILocation(line: 368, column: 24, scope: !522)
!2387 = !DILocation(line: 368, column: 54, scope: !522)
!2388 = !DILocation(line: 368, column: 68, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !522, file: !371, line: 368, column: 65)
!2390 = !DILocation(line: 368, column: 85, scope: !2389)
!2391 = !DILocation(line: 368, column: 65, scope: !2389)
!2392 = !DILocation(line: 368, column: 95, scope: !2389)
!2393 = !DILocation(line: 368, column: 65, scope: !522)
!2394 = !DILocation(line: 368, column: 65, scope: !2395)
!2395 = !DILexicalBlockFile(scope: !522, file: !371, discriminator: 2)
!2396 = !DILocation(line: 368, column: 126, scope: !2397)
!2397 = !DILexicalBlockFile(scope: !2389, file: !371, discriminator: 3)
!2398 = !DILocation(line: 368, column: 144, scope: !2389)
!2399 = !DILocation(line: 368, column: 154, scope: !2389)
!2400 = !DILocation(line: 368, column: 179, scope: !2389)
!2401 = !DILocation(line: 368, column: 110, scope: !2389)
!2402 = !DILocation(line: 368, column: 198, scope: !2403)
!2403 = !DILexicalBlockFile(scope: !520, file: !371, discriminator: 4)
!2404 = !DILocation(line: 368, column: 198, scope: !522)
!2405 = !DILocation(line: 368, column: 198, scope: !2406)
!2406 = !DILexicalBlockFile(scope: !522, file: !371, discriminator: 5)
!2407 = !DILocation(line: 369, column: 13, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !520, file: !371, line: 369, column: 13)
!2409 = !DILocation(line: 369, column: 20, scope: !2408)
!2410 = !DILocation(line: 369, column: 26, scope: !2408)
!2411 = !DILocation(line: 369, column: 29, scope: !2412)
!2412 = !DILexicalBlockFile(scope: !2408, file: !371, discriminator: 1)
!2413 = !DILocation(line: 369, column: 13, scope: !520)
!2414 = !DILocation(line: 370, column: 13, scope: !2408)
!2415 = !DILocation(line: 371, column: 5, scope: !478)
!2416 = !DILocation(line: 371, column: 5, scope: !2417)
!2417 = !DILexicalBlockFile(scope: !478, file: !371, discriminator: 1)
!2418 = !DILocation(line: 373, column: 9, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !478, file: !371, line: 373, column: 9)
!2420 = !DILocation(line: 373, column: 19, scope: !2419)
!2421 = !DILocation(line: 373, column: 24, scope: !2419)
!2422 = !DILocation(line: 373, column: 28, scope: !2423)
!2423 = !DILexicalBlockFile(scope: !2419, file: !371, discriminator: 1)
!2424 = !DILocation(line: 373, column: 38, scope: !2419)
!2425 = !DILocation(line: 373, column: 42, scope: !2419)
!2426 = !DILocation(line: 373, column: 45, scope: !2427)
!2427 = !DILexicalBlockFile(scope: !2419, file: !371, discriminator: 2)
!2428 = !DILocation(line: 373, column: 9, scope: !478)
!2429 = !DILocation(line: 374, column: 19, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2419, file: !371, line: 373, column: 54)
!2431 = !DILocation(line: 375, column: 24, scope: !2430)
!2432 = !DILocation(line: 376, column: 5, scope: !2430)
!2433 = !DILocation(line: 378, column: 24, scope: !2419)
!2434 = !DILocation(line: 380, column: 9, scope: !526)
!2435 = !DILocation(line: 380, column: 19, scope: !526)
!2436 = !DILocation(line: 380, column: 9, scope: !478)
!2437 = !DILocation(line: 381, column: 19, scope: !525)
!2438 = !DILocation(line: 384, column: 13, scope: !524)
!2439 = !DILocation(line: 384, column: 25, scope: !524)
!2440 = !DILocation(line: 385, column: 13, scope: !524)
!2441 = !DILocation(line: 385, column: 18, scope: !524)
!2442 = !DILocation(line: 386, column: 13, scope: !524)
!2443 = !DILocation(line: 386, column: 23, scope: !524)
!2444 = !DILocation(line: 386, column: 58, scope: !524)
!2445 = !DILocation(line: 386, column: 29, scope: !524)
!2446 = !DILocation(line: 387, column: 17, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !524, file: !371, line: 387, column: 17)
!2448 = !DILocation(line: 387, column: 21, scope: !2447)
!2449 = !DILocation(line: 387, column: 17, scope: !524)
!2450 = !DILocation(line: 388, column: 17, scope: !2447)
!2451 = !DILocation(line: 390, column: 36, scope: !524)
!2452 = !DILocation(line: 390, column: 22, scope: !524)
!2453 = !DILocation(line: 390, column: 20, scope: !524)
!2454 = !DILocation(line: 391, column: 13, scope: !524)
!2455 = !DILocation(line: 391, column: 18, scope: !2456)
!2456 = !DILexicalBlockFile(scope: !566, file: !371, discriminator: 1)
!2457 = !DILocation(line: 391, column: 28, scope: !566)
!2458 = !DILocation(line: 391, column: 58, scope: !566)
!2459 = !DILocation(line: 391, column: 72, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !566, file: !371, line: 391, column: 69)
!2461 = !DILocation(line: 391, column: 89, scope: !2460)
!2462 = !DILocation(line: 391, column: 69, scope: !2460)
!2463 = !DILocation(line: 391, column: 99, scope: !2460)
!2464 = !DILocation(line: 391, column: 69, scope: !566)
!2465 = !DILocation(line: 391, column: 69, scope: !2466)
!2466 = !DILexicalBlockFile(scope: !566, file: !371, discriminator: 2)
!2467 = !DILocation(line: 391, column: 130, scope: !2468)
!2468 = !DILexicalBlockFile(scope: !2460, file: !371, discriminator: 3)
!2469 = !DILocation(line: 391, column: 148, scope: !2460)
!2470 = !DILocation(line: 391, column: 158, scope: !2460)
!2471 = !DILocation(line: 391, column: 183, scope: !2460)
!2472 = !DILocation(line: 391, column: 114, scope: !2460)
!2473 = !DILocation(line: 391, column: 202, scope: !2474)
!2474 = !DILexicalBlockFile(scope: !524, file: !371, discriminator: 4)
!2475 = !DILocation(line: 391, column: 202, scope: !566)
!2476 = !DILocation(line: 391, column: 202, scope: !2477)
!2477 = !DILexicalBlockFile(scope: !566, file: !371, discriminator: 5)
!2478 = !DILocation(line: 392, column: 17, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !524, file: !371, line: 392, column: 17)
!2480 = !DILocation(line: 392, column: 24, scope: !2479)
!2481 = !DILocation(line: 392, column: 30, scope: !2479)
!2482 = !DILocation(line: 392, column: 33, scope: !2483)
!2483 = !DILexicalBlockFile(scope: !2479, file: !371, discriminator: 1)
!2484 = !DILocation(line: 392, column: 17, scope: !524)
!2485 = !DILocation(line: 393, column: 17, scope: !2479)
!2486 = !DILocation(line: 395, column: 23, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !524, file: !371, line: 395, column: 17)
!2488 = !DILocation(line: 395, column: 17, scope: !2487)
!2489 = !DILocation(line: 395, column: 36, scope: !2487)
!2490 = !DILocation(line: 395, column: 41, scope: !2487)
!2491 = !DILocation(line: 395, column: 47, scope: !2492)
!2492 = !DILexicalBlockFile(scope: !2487, file: !371, discriminator: 1)
!2493 = !{!2494, !774, i64 56}
!2494 = !{!"stat", !774, i64 0, !774, i64 8, !774, i64 16, !814, i64 24, !814, i64 28, !814, i64 32, !814, i64 36, !774, i64 40, !774, i64 48, !774, i64 56, !774, i64 64, !2495, i64 72, !2495, i64 88, !2495, i64 104, !752, i64 120}
!2495 = !{!"timespec", !774, i64 0, !774, i64 8}
!2496 = !DILocation(line: 395, column: 58, scope: !2487)
!2497 = !DILocation(line: 395, column: 17, scope: !524)
!2498 = !DILocation(line: 396, column: 32, scope: !2487)
!2499 = !DILocation(line: 396, column: 29, scope: !2487)
!2500 = !DILocation(line: 396, column: 27, scope: !2487)
!2501 = !DILocation(line: 396, column: 17, scope: !2487)
!2502 = !DILocation(line: 397, column: 9, scope: !525)
!2503 = !DILocation(line: 397, column: 9, scope: !2504)
!2504 = !DILexicalBlockFile(scope: !525, file: !371, discriminator: 1)
!2505 = !DILocation(line: 399, column: 5, scope: !525)
!2506 = !DILocation(line: 400, column: 9, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !478, file: !371, line: 400, column: 9)
!2508 = !DILocation(line: 400, column: 19, scope: !2507)
!2509 = !DILocation(line: 400, column: 9, scope: !478)
!2510 = !DILocation(line: 401, column: 25, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2507, file: !371, line: 400, column: 24)
!2512 = !DILocation(line: 401, column: 9, scope: !2511)
!2513 = !DILocation(line: 403, column: 9, scope: !2511)
!2514 = !DILocation(line: 407, column: 9, scope: !570)
!2515 = !DILocation(line: 407, column: 19, scope: !570)
!2516 = !DILocation(line: 407, column: 9, scope: !478)
!2517 = !DILocation(line: 408, column: 14, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !569, file: !371, line: 408, column: 13)
!2519 = !DILocation(line: 408, column: 13, scope: !569)
!2520 = !DILocation(line: 409, column: 29, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2518, file: !371, line: 408, column: 22)
!2522 = !DILocation(line: 409, column: 13, scope: !2521)
!2523 = !DILocation(line: 411, column: 13, scope: !2521)
!2524 = !DILocation(line: 414, column: 9, scope: !569)
!2525 = !DILocation(line: 414, column: 14, scope: !2526)
!2526 = !DILexicalBlockFile(scope: !568, file: !371, discriminator: 1)
!2527 = !DILocation(line: 414, column: 24, scope: !568)
!2528 = !DILocation(line: 414, column: 54, scope: !568)
!2529 = !DILocation(line: 414, column: 72, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !568, file: !371, line: 414, column: 69)
!2531 = !DILocation(line: 414, column: 89, scope: !2530)
!2532 = !DILocation(line: 414, column: 69, scope: !2530)
!2533 = !DILocation(line: 414, column: 99, scope: !2530)
!2534 = !DILocation(line: 414, column: 69, scope: !568)
!2535 = !DILocation(line: 414, column: 69, scope: !2536)
!2536 = !DILexicalBlockFile(scope: !568, file: !371, discriminator: 2)
!2537 = !DILocation(line: 414, column: 130, scope: !2538)
!2538 = !DILexicalBlockFile(scope: !2530, file: !371, discriminator: 3)
!2539 = !DILocation(line: 414, column: 148, scope: !2530)
!2540 = !DILocation(line: 414, column: 158, scope: !2530)
!2541 = !DILocation(line: 414, column: 183, scope: !2530)
!2542 = !DILocation(line: 414, column: 114, scope: !2530)
!2543 = !DILocation(line: 414, column: 202, scope: !2544)
!2544 = !DILexicalBlockFile(scope: !569, file: !371, discriminator: 4)
!2545 = !DILocation(line: 414, column: 202, scope: !568)
!2546 = !DILocation(line: 414, column: 202, scope: !2547)
!2547 = !DILexicalBlockFile(scope: !568, file: !371, discriminator: 5)
!2548 = !DILocation(line: 415, column: 16, scope: !569)
!2549 = !DILocation(line: 415, column: 9, scope: !569)
!2550 = !DILocation(line: 420, column: 9, scope: !572)
!2551 = !DILocation(line: 420, column: 19, scope: !572)
!2552 = !DILocation(line: 422, column: 13, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !572, file: !371, line: 422, column: 13)
!2554 = !DILocation(line: 422, column: 13, scope: !572)
!2555 = !DILocation(line: 423, column: 28, scope: !2553)
!2556 = !DILocation(line: 423, column: 13, scope: !2553)
!2557 = !DILocation(line: 424, column: 18, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2553, file: !371, line: 424, column: 18)
!2559 = !DILocation(line: 424, column: 27, scope: !2558)
!2560 = !DILocation(line: 424, column: 30, scope: !2561)
!2561 = !DILexicalBlockFile(scope: !2558, file: !371, discriminator: 1)
!2562 = !DILocation(line: 424, column: 38, scope: !2558)
!2563 = !DILocation(line: 424, column: 41, scope: !2564)
!2564 = !DILexicalBlockFile(scope: !2558, file: !371, discriminator: 2)
!2565 = !DILocation(line: 424, column: 18, scope: !2553)
!2566 = !DILocation(line: 425, column: 28, scope: !2558)
!2567 = !DILocation(line: 425, column: 13, scope: !2558)
!2568 = !DILocation(line: 426, column: 18, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2558, file: !371, line: 426, column: 18)
!2570 = !DILocation(line: 426, column: 18, scope: !2558)
!2571 = !DILocation(line: 427, column: 28, scope: !2569)
!2572 = !DILocation(line: 427, column: 13, scope: !2569)
!2573 = !DILocation(line: 429, column: 26, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2569, file: !371, line: 428, column: 14)
!2575 = !DILocation(line: 430, column: 48, scope: !2574)
!2576 = !DILocation(line: 429, column: 13, scope: !2574)
!2577 = !DILocation(line: 431, column: 13, scope: !2574)
!2578 = !DILocation(line: 434, column: 47, scope: !572)
!2579 = !DILocation(line: 434, column: 69, scope: !572)
!2580 = !DILocation(line: 434, column: 74, scope: !572)
!2581 = !DILocation(line: 434, column: 18, scope: !572)
!2582 = !DILocation(line: 434, column: 16, scope: !572)
!2583 = !DILocation(line: 435, column: 5, scope: !478)
!2584 = !DILocation(line: 435, column: 5, scope: !2417)
!2585 = !DILocation(line: 436, column: 5, scope: !478)
!2586 = !DILocation(line: 436, column: 10, scope: !2587)
!2587 = !DILexicalBlockFile(scope: !574, file: !371, discriminator: 1)
!2588 = !DILocation(line: 436, column: 20, scope: !574)
!2589 = !DILocation(line: 436, column: 43, scope: !574)
!2590 = !DILocation(line: 436, column: 53, scope: !578)
!2591 = !DILocation(line: 436, column: 61, scope: !578)
!2592 = !DILocation(line: 436, column: 53, scope: !574)
!2593 = !DILocation(line: 436, column: 84, scope: !2594)
!2594 = !DILexicalBlockFile(scope: !577, file: !371, discriminator: 2)
!2595 = !DILocation(line: 436, column: 98, scope: !577)
!2596 = !DILocation(line: 436, column: 103, scope: !2597)
!2597 = !DILexicalBlockFile(scope: !576, file: !371, discriminator: 4)
!2598 = !DILocation(line: 436, column: 113, scope: !576)
!2599 = !DILocation(line: 436, column: 143, scope: !576)
!2600 = !DILocation(line: 436, column: 161, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !576, file: !371, line: 436, column: 158)
!2602 = !DILocation(line: 436, column: 178, scope: !2601)
!2603 = !DILocation(line: 436, column: 158, scope: !2601)
!2604 = !DILocation(line: 436, column: 188, scope: !2601)
!2605 = !DILocation(line: 436, column: 158, scope: !576)
!2606 = !DILocation(line: 436, column: 158, scope: !2607)
!2607 = !DILexicalBlockFile(scope: !576, file: !371, discriminator: 5)
!2608 = !DILocation(line: 436, column: 219, scope: !2609)
!2609 = !DILexicalBlockFile(scope: !2601, file: !371, discriminator: 6)
!2610 = !DILocation(line: 436, column: 237, scope: !2601)
!2611 = !DILocation(line: 436, column: 247, scope: !2601)
!2612 = !DILocation(line: 436, column: 272, scope: !2601)
!2613 = !DILocation(line: 436, column: 203, scope: !2601)
!2614 = !DILocation(line: 436, column: 291, scope: !2615)
!2615 = !DILexicalBlockFile(scope: !577, file: !371, discriminator: 7)
!2616 = !DILocation(line: 436, column: 291, scope: !576)
!2617 = !DILocation(line: 436, column: 291, scope: !2618)
!2618 = !DILexicalBlockFile(scope: !576, file: !371, discriminator: 8)
!2619 = !DILocation(line: 436, column: 304, scope: !2620)
!2620 = !DILexicalBlockFile(scope: !577, file: !371, discriminator: 9)
!2621 = !DILocation(line: 436, column: 306, scope: !2622)
!2622 = !DILexicalBlockFile(scope: !2623, file: !371, discriminator: 10)
!2623 = !DILexicalBlockFile(scope: !478, file: !371, discriminator: 3)
!2624 = !DILocation(line: 436, column: 306, scope: !574)
!2625 = !DILocation(line: 436, column: 306, scope: !2626)
!2626 = !DILexicalBlockFile(scope: !574, file: !371, discriminator: 11)
!2627 = !DILocation(line: 437, column: 9, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !478, file: !371, line: 437, column: 9)
!2629 = !DILocation(line: 437, column: 16, scope: !2628)
!2630 = !DILocation(line: 437, column: 9, scope: !478)
!2631 = !DILocation(line: 438, column: 9, scope: !2628)
!2632 = !DILocation(line: 442, column: 9, scope: !582)
!2633 = !DILocation(line: 442, column: 9, scope: !478)
!2634 = !DILocation(line: 443, column: 9, scope: !581)
!2635 = !DILocation(line: 443, column: 14, scope: !2636)
!2636 = !DILexicalBlockFile(scope: !580, file: !371, discriminator: 1)
!2637 = !DILocation(line: 443, column: 24, scope: !580)
!2638 = !DILocation(line: 443, column: 54, scope: !580)
!2639 = !DILocation(line: 443, column: 72, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !580, file: !371, line: 443, column: 69)
!2641 = !DILocation(line: 443, column: 89, scope: !2640)
!2642 = !DILocation(line: 443, column: 69, scope: !2640)
!2643 = !DILocation(line: 443, column: 99, scope: !2640)
!2644 = !DILocation(line: 443, column: 69, scope: !580)
!2645 = !DILocation(line: 443, column: 69, scope: !2646)
!2646 = !DILexicalBlockFile(scope: !580, file: !371, discriminator: 2)
!2647 = !DILocation(line: 443, column: 130, scope: !2648)
!2648 = !DILexicalBlockFile(scope: !2640, file: !371, discriminator: 3)
!2649 = !DILocation(line: 443, column: 148, scope: !2640)
!2650 = !DILocation(line: 443, column: 158, scope: !2640)
!2651 = !DILocation(line: 443, column: 183, scope: !2640)
!2652 = !DILocation(line: 443, column: 114, scope: !2640)
!2653 = !DILocation(line: 443, column: 202, scope: !2654)
!2654 = !DILexicalBlockFile(scope: !581, file: !371, discriminator: 4)
!2655 = !DILocation(line: 443, column: 202, scope: !580)
!2656 = !DILocation(line: 443, column: 202, scope: !2657)
!2657 = !DILexicalBlockFile(scope: !580, file: !371, discriminator: 5)
!2658 = !DILocation(line: 444, column: 16, scope: !581)
!2659 = !DILocation(line: 444, column: 9, scope: !581)
!2660 = !DILocation(line: 450, column: 9, scope: !478)
!2661 = !DILocation(line: 451, column: 9, scope: !478)
!2662 = !DILocation(line: 451, column: 19, scope: !478)
!2663 = !DILocation(line: 451, column: 27, scope: !478)
!2664 = !DILocation(line: 452, column: 9, scope: !478)
!2665 = !DILocation(line: 448, column: 15, scope: !478)
!2666 = !DILocation(line: 448, column: 13, scope: !478)
!2667 = !DILocation(line: 453, column: 5, scope: !478)
!2668 = !DILocation(line: 453, column: 10, scope: !2669)
!2669 = !DILexicalBlockFile(scope: !584, file: !371, discriminator: 1)
!2670 = !DILocation(line: 453, column: 20, scope: !584)
!2671 = !DILocation(line: 453, column: 43, scope: !584)
!2672 = !DILocation(line: 453, column: 56, scope: !588)
!2673 = !DILocation(line: 453, column: 64, scope: !588)
!2674 = !DILocation(line: 453, column: 56, scope: !584)
!2675 = !DILocation(line: 453, column: 90, scope: !2676)
!2676 = !DILexicalBlockFile(scope: !587, file: !371, discriminator: 2)
!2677 = !DILocation(line: 453, column: 104, scope: !587)
!2678 = !DILocation(line: 453, column: 109, scope: !2679)
!2679 = !DILexicalBlockFile(scope: !586, file: !371, discriminator: 4)
!2680 = !DILocation(line: 453, column: 119, scope: !586)
!2681 = !DILocation(line: 453, column: 149, scope: !586)
!2682 = !DILocation(line: 453, column: 167, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !586, file: !371, line: 453, column: 164)
!2684 = !DILocation(line: 453, column: 184, scope: !2683)
!2685 = !DILocation(line: 453, column: 164, scope: !2683)
!2686 = !DILocation(line: 453, column: 194, scope: !2683)
!2687 = !DILocation(line: 453, column: 164, scope: !586)
!2688 = !DILocation(line: 453, column: 164, scope: !2689)
!2689 = !DILexicalBlockFile(scope: !586, file: !371, discriminator: 5)
!2690 = !DILocation(line: 453, column: 225, scope: !2691)
!2691 = !DILexicalBlockFile(scope: !2683, file: !371, discriminator: 6)
!2692 = !DILocation(line: 453, column: 243, scope: !2683)
!2693 = !DILocation(line: 453, column: 253, scope: !2683)
!2694 = !DILocation(line: 453, column: 278, scope: !2683)
!2695 = !DILocation(line: 453, column: 209, scope: !2683)
!2696 = !DILocation(line: 453, column: 297, scope: !2697)
!2697 = !DILexicalBlockFile(scope: !587, file: !371, discriminator: 7)
!2698 = !DILocation(line: 453, column: 297, scope: !586)
!2699 = !DILocation(line: 453, column: 297, scope: !2700)
!2700 = !DILexicalBlockFile(scope: !586, file: !371, discriminator: 8)
!2701 = !DILocation(line: 453, column: 310, scope: !2702)
!2702 = !DILexicalBlockFile(scope: !587, file: !371, discriminator: 9)
!2703 = !DILocation(line: 453, column: 312, scope: !2622)
!2704 = !DILocation(line: 453, column: 312, scope: !584)
!2705 = !DILocation(line: 453, column: 312, scope: !2706)
!2706 = !DILexicalBlockFile(scope: !584, file: !371, discriminator: 11)
!2707 = !DILocation(line: 454, column: 9, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !478, file: !371, line: 454, column: 9)
!2709 = !DILocation(line: 454, column: 17, scope: !2708)
!2710 = !DILocation(line: 454, column: 9, scope: !478)
!2711 = !DILocation(line: 455, column: 9, scope: !2708)
!2712 = !DILocation(line: 457, column: 29, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !478, file: !371, line: 457, column: 9)
!2714 = !DILocation(line: 457, column: 50, scope: !2713)
!2715 = !DILocation(line: 457, column: 9, scope: !2713)
!2716 = !DILocation(line: 457, column: 59, scope: !2713)
!2717 = !DILocation(line: 457, column: 9, scope: !478)
!2718 = !DILocation(line: 458, column: 9, scope: !2713)
!2719 = !DILocation(line: 459, column: 5, scope: !478)
!2720 = !DILocation(line: 459, column: 10, scope: !2721)
!2721 = !DILexicalBlockFile(scope: !590, file: !371, discriminator: 1)
!2722 = !DILocation(line: 459, column: 20, scope: !590)
!2723 = !DILocation(line: 459, column: 50, scope: !590)
!2724 = !DILocation(line: 459, column: 68, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !590, file: !371, line: 459, column: 65)
!2726 = !DILocation(line: 459, column: 85, scope: !2725)
!2727 = !DILocation(line: 459, column: 65, scope: !2725)
!2728 = !DILocation(line: 459, column: 95, scope: !2725)
!2729 = !DILocation(line: 459, column: 65, scope: !590)
!2730 = !DILocation(line: 459, column: 65, scope: !2731)
!2731 = !DILexicalBlockFile(scope: !590, file: !371, discriminator: 2)
!2732 = !DILocation(line: 459, column: 126, scope: !2733)
!2733 = !DILexicalBlockFile(scope: !2725, file: !371, discriminator: 3)
!2734 = !DILocation(line: 459, column: 144, scope: !2725)
!2735 = !DILocation(line: 459, column: 154, scope: !2725)
!2736 = !DILocation(line: 459, column: 179, scope: !2725)
!2737 = !DILocation(line: 459, column: 110, scope: !2725)
!2738 = !DILocation(line: 459, column: 198, scope: !2739)
!2739 = !DILexicalBlockFile(scope: !478, file: !371, discriminator: 4)
!2740 = !DILocation(line: 459, column: 198, scope: !590)
!2741 = !DILocation(line: 459, column: 198, scope: !2742)
!2742 = !DILexicalBlockFile(scope: !590, file: !371, discriminator: 5)
!2743 = !DILocation(line: 460, column: 12, scope: !478)
!2744 = !DILocation(line: 460, column: 5, scope: !478)
!2745 = !DILocation(line: 463, column: 5, scope: !478)
!2746 = !DILocation(line: 463, column: 10, scope: !2747)
!2747 = !DILexicalBlockFile(scope: !592, file: !371, discriminator: 1)
!2748 = !DILocation(line: 463, column: 20, scope: !592)
!2749 = !DILocation(line: 463, column: 51, scope: !592)
!2750 = !DILocation(line: 463, column: 61, scope: !595)
!2751 = !DILocation(line: 463, column: 77, scope: !595)
!2752 = !DILocation(line: 463, column: 61, scope: !592)
!2753 = !DILocation(line: 463, column: 92, scope: !2754)
!2754 = !DILexicalBlockFile(scope: !595, file: !371, discriminator: 2)
!2755 = !DILocation(line: 463, column: 97, scope: !2756)
!2756 = !DILexicalBlockFile(scope: !594, file: !371, discriminator: 4)
!2757 = !DILocation(line: 463, column: 107, scope: !594)
!2758 = !DILocation(line: 463, column: 137, scope: !594)
!2759 = !DILocation(line: 463, column: 163, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !594, file: !371, line: 463, column: 160)
!2761 = !DILocation(line: 463, column: 180, scope: !2760)
!2762 = !DILocation(line: 463, column: 160, scope: !2760)
!2763 = !DILocation(line: 463, column: 190, scope: !2760)
!2764 = !DILocation(line: 463, column: 160, scope: !594)
!2765 = !DILocation(line: 463, column: 160, scope: !2766)
!2766 = !DILexicalBlockFile(scope: !594, file: !371, discriminator: 5)
!2767 = !DILocation(line: 463, column: 221, scope: !2768)
!2768 = !DILexicalBlockFile(scope: !2760, file: !371, discriminator: 6)
!2769 = !DILocation(line: 463, column: 239, scope: !2760)
!2770 = !DILocation(line: 463, column: 249, scope: !2760)
!2771 = !DILocation(line: 463, column: 274, scope: !2760)
!2772 = !DILocation(line: 463, column: 205, scope: !2760)
!2773 = !DILocation(line: 463, column: 293, scope: !2774)
!2774 = !DILexicalBlockFile(scope: !595, file: !371, discriminator: 7)
!2775 = !DILocation(line: 463, column: 293, scope: !594)
!2776 = !DILocation(line: 463, column: 293, scope: !2777)
!2777 = !DILexicalBlockFile(scope: !594, file: !371, discriminator: 8)
!2778 = !DILocation(line: 463, column: 293, scope: !2779)
!2779 = !DILexicalBlockFile(scope: !594, file: !371, discriminator: 9)
!2780 = !DILocation(line: 463, column: 306, scope: !2622)
!2781 = !DILocation(line: 463, column: 306, scope: !592)
!2782 = !DILocation(line: 463, column: 306, scope: !2783)
!2783 = !DILexicalBlockFile(scope: !592, file: !371, discriminator: 11)
!2784 = !DILocation(line: 464, column: 5, scope: !478)
!2785 = !DILocation(line: 464, column: 10, scope: !2786)
!2786 = !DILexicalBlockFile(scope: !597, file: !371, discriminator: 1)
!2787 = !DILocation(line: 464, column: 20, scope: !597)
!2788 = !DILocation(line: 464, column: 51, scope: !597)
!2789 = !DILocation(line: 464, column: 65, scope: !600)
!2790 = !DILocation(line: 464, column: 81, scope: !600)
!2791 = !DILocation(line: 464, column: 65, scope: !597)
!2792 = !DILocation(line: 464, column: 96, scope: !2793)
!2793 = !DILexicalBlockFile(scope: !600, file: !371, discriminator: 2)
!2794 = !DILocation(line: 464, column: 101, scope: !2795)
!2795 = !DILexicalBlockFile(scope: !599, file: !371, discriminator: 4)
!2796 = !DILocation(line: 464, column: 111, scope: !599)
!2797 = !DILocation(line: 464, column: 141, scope: !599)
!2798 = !DILocation(line: 464, column: 167, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !599, file: !371, line: 464, column: 164)
!2800 = !DILocation(line: 464, column: 184, scope: !2799)
!2801 = !DILocation(line: 464, column: 164, scope: !2799)
!2802 = !DILocation(line: 464, column: 194, scope: !2799)
!2803 = !DILocation(line: 464, column: 164, scope: !599)
!2804 = !DILocation(line: 464, column: 164, scope: !2805)
!2805 = !DILexicalBlockFile(scope: !599, file: !371, discriminator: 5)
!2806 = !DILocation(line: 464, column: 225, scope: !2807)
!2807 = !DILexicalBlockFile(scope: !2799, file: !371, discriminator: 6)
!2808 = !DILocation(line: 464, column: 243, scope: !2799)
!2809 = !DILocation(line: 464, column: 253, scope: !2799)
!2810 = !DILocation(line: 464, column: 278, scope: !2799)
!2811 = !DILocation(line: 464, column: 209, scope: !2799)
!2812 = !DILocation(line: 464, column: 297, scope: !2813)
!2813 = !DILexicalBlockFile(scope: !600, file: !371, discriminator: 7)
!2814 = !DILocation(line: 464, column: 297, scope: !599)
!2815 = !DILocation(line: 464, column: 297, scope: !2816)
!2816 = !DILexicalBlockFile(scope: !599, file: !371, discriminator: 8)
!2817 = !DILocation(line: 464, column: 297, scope: !2818)
!2818 = !DILexicalBlockFile(scope: !599, file: !371, discriminator: 9)
!2819 = !DILocation(line: 464, column: 310, scope: !2622)
!2820 = !DILocation(line: 464, column: 310, scope: !597)
!2821 = !DILocation(line: 464, column: 310, scope: !2822)
!2822 = !DILexicalBlockFile(scope: !597, file: !371, discriminator: 11)
!2823 = !DILocation(line: 465, column: 5, scope: !478)
!2824 = !DILocation(line: 465, column: 10, scope: !2825)
!2825 = !DILexicalBlockFile(scope: !602, file: !371, discriminator: 1)
!2826 = !DILocation(line: 465, column: 20, scope: !602)
!2827 = !DILocation(line: 465, column: 51, scope: !602)
!2828 = !DILocation(line: 465, column: 64, scope: !605)
!2829 = !DILocation(line: 465, column: 80, scope: !605)
!2830 = !DILocation(line: 465, column: 64, scope: !602)
!2831 = !DILocation(line: 465, column: 95, scope: !2832)
!2832 = !DILexicalBlockFile(scope: !605, file: !371, discriminator: 2)
!2833 = !DILocation(line: 465, column: 100, scope: !2834)
!2834 = !DILexicalBlockFile(scope: !604, file: !371, discriminator: 4)
!2835 = !DILocation(line: 465, column: 110, scope: !604)
!2836 = !DILocation(line: 465, column: 140, scope: !604)
!2837 = !DILocation(line: 465, column: 166, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !604, file: !371, line: 465, column: 163)
!2839 = !DILocation(line: 465, column: 183, scope: !2838)
!2840 = !DILocation(line: 465, column: 163, scope: !2838)
!2841 = !DILocation(line: 465, column: 193, scope: !2838)
!2842 = !DILocation(line: 465, column: 163, scope: !604)
!2843 = !DILocation(line: 465, column: 163, scope: !2844)
!2844 = !DILexicalBlockFile(scope: !604, file: !371, discriminator: 5)
!2845 = !DILocation(line: 465, column: 224, scope: !2846)
!2846 = !DILexicalBlockFile(scope: !2838, file: !371, discriminator: 6)
!2847 = !DILocation(line: 465, column: 242, scope: !2838)
!2848 = !DILocation(line: 465, column: 252, scope: !2838)
!2849 = !DILocation(line: 465, column: 277, scope: !2838)
!2850 = !DILocation(line: 465, column: 208, scope: !2838)
!2851 = !DILocation(line: 465, column: 296, scope: !2852)
!2852 = !DILexicalBlockFile(scope: !605, file: !371, discriminator: 7)
!2853 = !DILocation(line: 465, column: 296, scope: !604)
!2854 = !DILocation(line: 465, column: 296, scope: !2855)
!2855 = !DILexicalBlockFile(scope: !604, file: !371, discriminator: 8)
!2856 = !DILocation(line: 465, column: 296, scope: !2857)
!2857 = !DILexicalBlockFile(scope: !604, file: !371, discriminator: 9)
!2858 = !DILocation(line: 465, column: 309, scope: !2622)
!2859 = !DILocation(line: 465, column: 309, scope: !602)
!2860 = !DILocation(line: 465, column: 309, scope: !2861)
!2861 = !DILexicalBlockFile(scope: !602, file: !371, discriminator: 11)
!2862 = !DILocation(line: 466, column: 5, scope: !478)
!2863 = !DILocation(line: 466, column: 10, scope: !2864)
!2864 = !DILexicalBlockFile(scope: !607, file: !371, discriminator: 1)
!2865 = !DILocation(line: 466, column: 20, scope: !607)
!2866 = !DILocation(line: 466, column: 51, scope: !607)
!2867 = !DILocation(line: 466, column: 65, scope: !610)
!2868 = !DILocation(line: 466, column: 81, scope: !610)
!2869 = !DILocation(line: 466, column: 65, scope: !607)
!2870 = !DILocation(line: 466, column: 96, scope: !2871)
!2871 = !DILexicalBlockFile(scope: !610, file: !371, discriminator: 2)
!2872 = !DILocation(line: 466, column: 101, scope: !2873)
!2873 = !DILexicalBlockFile(scope: !609, file: !371, discriminator: 4)
!2874 = !DILocation(line: 466, column: 111, scope: !609)
!2875 = !DILocation(line: 466, column: 141, scope: !609)
!2876 = !DILocation(line: 466, column: 167, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !609, file: !371, line: 466, column: 164)
!2878 = !DILocation(line: 466, column: 184, scope: !2877)
!2879 = !DILocation(line: 466, column: 164, scope: !2877)
!2880 = !DILocation(line: 466, column: 194, scope: !2877)
!2881 = !DILocation(line: 466, column: 164, scope: !609)
!2882 = !DILocation(line: 466, column: 164, scope: !2883)
!2883 = !DILexicalBlockFile(scope: !609, file: !371, discriminator: 5)
!2884 = !DILocation(line: 466, column: 225, scope: !2885)
!2885 = !DILexicalBlockFile(scope: !2877, file: !371, discriminator: 6)
!2886 = !DILocation(line: 466, column: 243, scope: !2877)
!2887 = !DILocation(line: 466, column: 253, scope: !2877)
!2888 = !DILocation(line: 466, column: 278, scope: !2877)
!2889 = !DILocation(line: 466, column: 209, scope: !2877)
!2890 = !DILocation(line: 466, column: 297, scope: !2891)
!2891 = !DILexicalBlockFile(scope: !610, file: !371, discriminator: 7)
!2892 = !DILocation(line: 466, column: 297, scope: !609)
!2893 = !DILocation(line: 466, column: 297, scope: !2894)
!2894 = !DILexicalBlockFile(scope: !609, file: !371, discriminator: 8)
!2895 = !DILocation(line: 466, column: 297, scope: !2896)
!2896 = !DILexicalBlockFile(scope: !609, file: !371, discriminator: 9)
!2897 = !DILocation(line: 466, column: 310, scope: !2622)
!2898 = !DILocation(line: 466, column: 310, scope: !607)
!2899 = !DILocation(line: 466, column: 310, scope: !2900)
!2900 = !DILexicalBlockFile(scope: !607, file: !371, discriminator: 11)
!2901 = !DILocation(line: 467, column: 5, scope: !478)
!2902 = !DILocation(line: 468, column: 1, scope: !478)
!2903 = !DILocation(line: 517, column: 45, scope: !611)
!2904 = !DILocation(line: 517, column: 66, scope: !611)
!2905 = !DILocation(line: 519, column: 25, scope: !611)
!2906 = !DILocation(line: 519, column: 31, scope: !611)
!2907 = !DILocation(line: 519, column: 10, scope: !611)
!2908 = !DILocation(line: 519, column: 3, scope: !611)
