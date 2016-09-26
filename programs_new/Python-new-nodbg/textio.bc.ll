; ModuleID = './textio.bc'
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
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct.encodefuncentry = type { i8*, %struct._object* (%struct._object*, %struct._object*)* }
%struct.nldecoder_object = type { %struct._object, %struct._object*, %struct._object*, i8 }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }
%struct.PyCompactUnicodeObject = type { %struct.PyASCIIObject, i64, i8*, i64 }
%struct.PyUnicodeObject = type { %struct.PyCompactUnicodeObject, %union.anon }
%union.anon = type { i8* }
%struct.textio = type { %struct._object, i32, i32, i64, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct._object* (%struct._object*, %struct._object*)*, i8, %struct._object*, i64, %struct._object*, i64, %struct._object*, double, %struct._object*, %struct._object*, %struct._object* }
%union._gc_head = type { %struct.anon.0 }
%struct.anon.0 = type { %union._gc_head*, %union._gc_head*, i64 }
%struct._PyIO_State = type { i32, %struct._object*, %struct._object* }
%struct.cookie_type = type { i64, i32, i32, i32, i8 }
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }

@.str = private unnamed_addr constant [16 x i8] c"_io._TextIOBase\00", align 1
@textiobase_doc = internal global [209 x i8] c"Base class for text I/O.\0A\0AThis class provides a character and line based interface to stream\0AI/O. There is no readinto method because Python's character strings\0Aare immutable. There is no public constructor.\0A\00", align 16
@textiobase_methods = internal global [5 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @textiobase_detach to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([151 x i8], [151 x i8]* @textiobase_detach_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @textiobase_read, i32 1, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @textiobase_read_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @textiobase_readline, i32 1, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @textiobase_readline_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @textiobase_write, i32 1, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @textiobase_write_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@textiobase_getset = internal global [4 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* @textiobase_encoding_get, i32 (%struct._object*, %struct._object*, i8*)* null, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @textiobase_encoding_doc, i32 0, i32 0), i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* @textiobase_newlines_get, i32 (%struct._object*, %struct._object*, i8*)* null, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @textiobase_newlines_doc, i32 0, i32 0), i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* @textiobase_errors_get, i32 (%struct._object*, %struct._object*, i8*)* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @textiobase_errors_doc, i32 0, i32 0), i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@PyIOBase_Type = external global %struct._typeobject, align 8
@PyTextIOBase_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i64 0, i64 0, void (%struct._object*)* null, i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 263169, i8* getelementptr inbounds ([209 x i8], [209 x i8]* @textiobase_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([5 x %struct.PyMethodDef], [5 x %struct.PyMethodDef]* @textiobase_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* getelementptr inbounds ([4 x %struct.PyGetSetDef], [4 x %struct.PyGetSetDef]* @textiobase_getset, i32 0, i32 0), %struct._typeobject* @PyIOBase_Type, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_ValueError = external global %struct._object*, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"IncrementalNewlineDecoder.__init__ not called\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@_PyIO_str_decode = external global %struct._object*, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"_io.IncrementalNewlineDecoder\00", align 1
@incrementalnewlinedecoder_doc = internal global [420 x i8] c"Codec used when reading a file in universal newlines mode.  It wraps\0Aanother incremental decoder, translating \5Cr\5Cn and \5Cr into \5Cn.  It also\0Arecords the types of newlines encountered.  When used with\0Atranslate=False, it ensures that the newline sequence is returned in\0Aone piece. When used with decoder=None, it expects unicode strings as\0Adecode input and translates newlines without first invoking an external\0Adecoder.\0A\00", align 16
@incrementalnewlinedecoder_methods = internal global [5 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.nldecoder_object*, %struct._object*, %struct._object*)* @incrementalnewlinedecoder_decode to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.nldecoder_object*, %struct._object*)* @incrementalnewlinedecoder_getstate to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.nldecoder_object*, %struct._object*)* @incrementalnewlinedecoder_setstate to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.nldecoder_object*, %struct._object*)* @incrementalnewlinedecoder_reset to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@incrementalnewlinedecoder_getset = internal global [2 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.nldecoder_object*, i8*)* @incrementalnewlinedecoder_newlines_get to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@PyIncrementalNewlineDecoder_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i64 40, i64 0, void (%struct._object*)* bitcast (void (%struct.nldecoder_object*)* @incrementalnewlinedecoder_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 263168, i8* getelementptr inbounds ([420 x i8], [420 x i8]* @incrementalnewlinedecoder_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([5 x %struct.PyMethodDef], [5 x %struct.PyMethodDef]* @incrementalnewlinedecoder_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* getelementptr inbounds ([2 x %struct.PyGetSetDef], [2 x %struct.PyGetSetDef]* @incrementalnewlinedecoder_getset, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.nldecoder_object*, %struct._object*, %struct._object*)* @incrementalnewlinedecoder_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyType_GenericNew, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"_io.TextIOWrapper\00", align 1
@textiowrapper_doc = internal global [1345 x i8] c"Character and line based layer over a BufferedIOBase object, buffer.\0A\0Aencoding gives the name of the encoding that the stream will be\0Adecoded or encoded with. It defaults to locale.getpreferredencoding(False).\0A\0Aerrors determines the strictness of encoding and decoding (see\0Ahelp(codecs.Codec) or the documentation for codecs.register) and\0Adefaults to \22strict\22.\0A\0Anewline controls how line endings are handled. It can be None, '',\0A'\5Cn', '\5Cr', and '\5Cr\5Cn'.  It works as follows:\0A\0A* On input, if newline is None, universal newlines mode is\0A  enabled. Lines in the input can end in '\5Cn', '\5Cr', or '\5Cr\5Cn', and\0A  these are translated into '\5Cn' before being returned to the\0A  caller. If it is '', universal newline mode is enabled, but line\0A  endings are returned to the caller untranslated. If it has any of\0A  the other legal values, input lines are only terminated by the given\0A  string, and the line ending is returned to the caller untranslated.\0A\0A* On output, if newline is None, any '\5Cn' characters written are\0A  translated to the system default line separator, os.linesep. If\0A  newline is '' or '\5Cn', no translation takes place. If newline is any\0A  of the other legal values, any '\5Cn' characters written are translated\0A  to the given string.\0A\0AIf line_buffering is True, a call to flush is implied when a call to\0Awrite contains a newline character.\00", align 16
@textiowrapper_methods = internal global [16 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.textio*)* @textiowrapper_detach to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.textio*, %struct._object*)* @textiowrapper_write to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.textio*, %struct._object*)* @textiowrapper_read to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.textio*, %struct._object*)* @textiowrapper_readline to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.textio*, %struct._object*)* @textiowrapper_flush to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.textio*, %struct._object*)* @textiowrapper_close to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.textio*, %struct._object*)* @textiowrapper_fileno to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.textio*, %struct._object*)* @textiowrapper_seekable to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.textio*, %struct._object*)* @textiowrapper_readable to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.textio*, %struct._object*)* @textiowrapper_writable to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.textio*, %struct._object*)* @textiowrapper_isatty to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.55, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.textio*, %struct._object*)* @textiowrapper_getstate to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.textio*, %struct._object*)* @textiowrapper_seek to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.textio*, %struct._object*)* @textiowrapper_tell to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.textio*, %struct._object*)* @textiowrapper_truncate to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@textiowrapper_members = internal global [5 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 6, i64 40, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i32 0, i32 0), i32 6, i64 32, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.90, i32 0, i32 0), i32 14, i64 88, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.91, i32 0, i32 0), i32 14, i64 96, i32 0, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@textiowrapper_getset = internal global [6 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.textio*, i8*)* @textiowrapper_name_get to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.textio*, i8*)* @textiowrapper_closed_get to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.textio*, i8*)* @textiowrapper_newlines_get to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.textio*, i8*)* @textiowrapper_errors_get to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.textio*, i8*)* @textiowrapper_chunk_size_get to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* bitcast (i32 (%struct.textio*, %struct._object*, i8*)* @textiowrapper_chunk_size_set to i32 (%struct._object*, %struct._object*, i8*)*), i8* null, i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@PyTextIOWrapper_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i64 192, i64 0, void (%struct._object*)* bitcast (void (%struct.textio*)* @textiowrapper_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.textio*)* @textiowrapper_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279553, i8* getelementptr inbounds ([1345 x i8], [1345 x i8]* @textiowrapper_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.textio*, i32 (%struct._object*, i8*)*, i8*)* @textiowrapper_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.textio*)* @textiowrapper_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 176, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.textio*)* @textiowrapper_iternext to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([16 x %struct.PyMethodDef], [16 x %struct.PyMethodDef]* @textiowrapper_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([5 x %struct.PyMemberDef], [5 x %struct.PyMemberDef]* @textiowrapper_members, i32 0, i32 0), %struct.PyGetSetDef* getelementptr inbounds ([6 x %struct.PyGetSetDef], [6 x %struct.PyGetSetDef]* @textiowrapper_getset, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 184, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.textio*, %struct._object*, %struct._object*)* @textiowrapper_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyType_GenericNew, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"detach\00", align 1
@textiobase_detach_doc = internal global [151 x i8] c"Separate the underlying buffer from the TextIOBase and return it.\0A\0AAfter the underlying buffer has been detached, the TextIO is in an\0Aunusable state.\0A\00", align 16
@.str.5 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@textiobase_read_doc = internal global [156 x i8] c"Read at most n characters from stream.\0A\0ARead from underlying buffer until we have n characters or we hit EOF.\0AIf n is negative or omitted, read until EOF.\0A\00", align 16
@.str.6 = private unnamed_addr constant [9 x i8] c"readline\00", align 1
@textiobase_readline_doc = internal global [80 x i8] c"Read until newline or EOF.\0A\0AReturns an empty string if EOF is hit immediately.\0A\00", align 16
@.str.7 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@textiobase_write_doc = internal global [119 x i8] c"Write string to stream.\0AReturns the number of characters written (which is always equal to\0Athe length of the string).\0A\00", align 16
@.str.8 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@textiobase_encoding_doc = internal global [59 x i8] c"Encoding of the text stream.\0A\0ASubclasses should override.\0A\00", align 16
@.str.9 = private unnamed_addr constant [9 x i8] c"newlines\00", align 1
@textiobase_newlines_doc = internal global [123 x i8] c"Line endings translated so far.\0A\0AOnly line endings translated during reading are considered.\0A\0ASubclasses should override.\0A\00", align 16
@.str.10 = private unnamed_addr constant [7 x i8] c"errors\00", align 1
@textiobase_errors_doc = internal global [75 x i8] c"The error setting of the decoder or encoder.\0A\0ASubclasses should override.\0A\00", align 16
@PyExc_TypeError = external global %struct._object*, align 8
@.str.11 = private unnamed_addr constant [52 x i8] c"decoder should return a string result, not '%.200s'\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"decode\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"getstate\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"setstate\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"final\00", align 1
@incrementalnewlinedecoder_decode.kwlist = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* null], align 16
@.str.18 = private unnamed_addr constant [30 x i8] c"O|i:IncrementalNewlineDecoder\00", align 1
@_PyIO_str_getstate = external global %struct._object*, align 8
@.str.19 = private unnamed_addr constant [5 x i8] c"(OK)\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"NK\00", align 1
@PyId_setstate = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), %struct._object* null }, align 8
@.str.22 = private unnamed_addr constant [7 x i8] c"((OK))\00", align 1
@_PyIO_str_reset = external global %struct._object*, align 8
@.str.23 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"ss\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"sss\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"decoder\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"translate\00", align 1
@incrementalnewlinedecoder_init.kwlist = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* null], align 16
@.str.30 = private unnamed_addr constant [31 x i8] c"Oi|O:IncrementalNewlineDecoder\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"underlying buffer has been detached\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"I/O operation on uninitialized object\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"<_io.TextIOWrapper\00", align 1
@PyId_name = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), %struct._object* null }, align 8
@PyExc_AttributeError = external global %struct._object*, align 8
@.str.35 = private unnamed_addr constant [9 x i8] c" name=%R\00", align 1
@PyId_mode = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), %struct._object* null }, align 8
@.str.36 = private unnamed_addr constant [9 x i8] c" mode=%R\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"%U encoding=%R>\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@_PyIO_str_readline = external global %struct._object*, align 8
@PyExc_IOError = external global %struct._object*, align 8
@.str.40 = private unnamed_addr constant [60 x i8] c"readline() should have returned an str object, not '%.200s'\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"I/O operation on closed file.\00", align 1
@_PyIO_empty_str = external global %struct._object*, align 8
@_PyIO_str_closed = external global %struct._object*, align 8
@_PyIO_empty_bytes = external global %struct._object*, align 8
@_PyIO_str_write = external global %struct._object*, align 8
@.str.42 = private unnamed_addr constant [13 x i8] c"not readable\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"(OO)\00", align 1
@_PyIO_str_read1 = external global %struct._object*, align 8
@_PyIO_str_read = external global %struct._object*, align 8
@.str.44 = private unnamed_addr constant [66 x i8] c"underlying %s() should have returned a bytes object, not '%.200s'\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"read1\00", align 1
@.str.46 = private unnamed_addr constant [69 x i8] c"decoder getstate() should have returned a bytes object, not '%.200s'\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"NN\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"fileno\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"seekable\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"readable\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"writable\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"isatty\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"__getstate__\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"seek\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"tell\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"truncate\00", align 1
@_PyIO_str_flush = external global %struct._object*, align 8
@.str.59 = private unnamed_addr constant [8 x i8] c"U:write\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"not writable\00", align 1
@PyId_replace = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), %struct._object* null }, align 8
@_PyIO_str_encode = external global %struct._object*, align 8
@PyId_reset = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), %struct._object* null }, align 8
@.str.61 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"|O&:read\00", align 1
@PyId_read = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), %struct._object* null }, align 8
@.str.63 = private unnamed_addr constant [12 x i8] c"|n:readline\00", align 1
@PyId_flush = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), %struct._object* null }, align 8
@PyId__dealloc_warn = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i32 0, i32 0), %struct._object* null }, align 8
@.str.64 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@PyId_close = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), %struct._object* null }, align 8
@.str.65 = private unnamed_addr constant [14 x i8] c"_dealloc_warn\00", align 1
@PyId_fileno = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), %struct._object* null }, align 8
@PyId_seekable = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), %struct._object* null }, align 8
@PyId_readable = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), %struct._object* null }, align 8
@PyId_writable = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), %struct._object* null }, align 8
@PyId_isatty = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), %struct._object* null }, align 8
@.str.66 = private unnamed_addr constant [29 x i8] c"cannot serialize '%s' object\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"O|i:seek\00", align 1
@.str.68 = private unnamed_addr constant [34 x i8] c"underlying stream is not seekable\00", align 1
@_PyIO_zero = external global %struct._object*, align 8
@.str.69 = private unnamed_addr constant [36 x i8] c"can't do nonzero cur-relative seeks\00", align 1
@PyId_tell = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), %struct._object* null }, align 8
@.str.70 = private unnamed_addr constant [36 x i8] c"can't do nonzero end-relative seeks\00", align 1
@PyId_seek = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), %struct._object* null }, align 8
@.str.71 = private unnamed_addr constant [3 x i8] c"ii\00", align 1
@.str.72 = private unnamed_addr constant [41 x i8] c"invalid whence (%d, should be 0, 1 or 2)\00", align 1
@.str.73 = private unnamed_addr constant [26 x i8] c"negative seek position %R\00", align 1
@_PyIO_str_seek = external global %struct._object*, align 8
@.str.74 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.75 = private unnamed_addr constant [68 x i8] c"underlying read() should have returned a bytes object, not '%.200s'\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c"iN\00", align 1
@PyId_decode = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), %struct._object* null }, align 8
@.str.77 = private unnamed_addr constant [3 x i8] c"Oi\00", align 1
@.str.78 = private unnamed_addr constant [36 x i8] c"can't restore logical file position\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"iy\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"((yi))\00", align 1
@_PyIO_str_setstate = external global %struct._object*, align 8
@.str.81 = private unnamed_addr constant [41 x i8] c"telling position disabled by next() call\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"(iO)\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"y#\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"(y#i)\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"yi\00", align 1
@.str.86 = private unnamed_addr constant [40 x i8] c"can't reconstruct logical file position\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"(O)\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"|O:truncate\00", align 1
@_PyIO_str_truncate = external global %struct._object*, align 8
@.str.89 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.90 = private unnamed_addr constant [15 x i8] c"line_buffering\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"_finalizing\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"_CHUNK_SIZE\00", align 1
@_PyIO_str_newlines = external global %struct._object*, align 8
@.str.94 = private unnamed_addr constant [40 x i8] c"a strictly positive integer is required\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"newline\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"write_through\00", align 1
@.str.97 = private unnamed_addr constant [15 x i8] c"O|zzzii:fileio\00", align 1
@.str.98 = private unnamed_addr constant [26 x i8] c"illegal newline value: %s\00", align 1
@PyId_getpreferredencoding = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.102, i32 0, i32 0), %struct._object* null }, align 8
@PyExc_ImportError = external global %struct._object*, align 8
@.str.99 = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@.str.100 = private unnamed_addr constant [37 x i8] c"could not determine default encoding\00", align 1
@.str.101 = private unnamed_addr constant [14 x i8] c"codecs.open()\00", align 1
@encodefuncs = internal global [10 x %struct.encodefuncentry] [%struct.encodefuncentry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.textio*, %struct._object*)* @ascii_encode to %struct._object* (%struct._object*, %struct._object*)*) }, %struct.encodefuncentry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.textio*, %struct._object*)* @latin1_encode to %struct._object* (%struct._object*, %struct._object*)*) }, %struct.encodefuncentry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.104, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.textio*, %struct._object*)* @utf8_encode to %struct._object* (%struct._object*, %struct._object*)*) }, %struct.encodefuncentry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.105, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.textio*, %struct._object*)* @utf16be_encode to %struct._object* (%struct._object*, %struct._object*)*) }, %struct.encodefuncentry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.106, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.textio*, %struct._object*)* @utf16le_encode to %struct._object* (%struct._object*, %struct._object*)*) }, %struct.encodefuncentry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.107, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.textio*, %struct._object*)* @utf16_encode to %struct._object* (%struct._object*, %struct._object*)*) }, %struct.encodefuncentry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.108, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.textio*, %struct._object*)* @utf32be_encode to %struct._object* (%struct._object*, %struct._object*)*) }, %struct.encodefuncentry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.109, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.textio*, %struct._object*)* @utf32le_encode to %struct._object* (%struct._object*, %struct._object*)*) }, %struct.encodefuncentry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.110, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.textio*, %struct._object*)* @utf32_encode to %struct._object* (%struct._object*, %struct._object*)*) }, %struct.encodefuncentry zeroinitializer], align 16
@PyBufferedReader_Type = external global %struct._typeobject, align 8
@PyBufferedWriter_Type = external global %struct._typeobject, align 8
@PyBufferedRandom_Type = external global %struct._typeobject, align 8
@PyId_raw = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.111, i32 0, i32 0), %struct._object* null }, align 8
@PyFileIO_Type = external global %struct._typeobject, align 8
@PyId_read1 = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), %struct._object* null }, align 8
@_PyIO_str_tell = external global %struct._object*, align 8
@.str.102 = private unnamed_addr constant [21 x i8] c"getpreferredencoding\00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c"iso8859-1\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"utf-8\00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c"utf-16-be\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"utf-16-le\00", align 1
@.str.107 = private unnamed_addr constant [7 x i8] c"utf-16\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"utf-32-be\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"utf-32-le\00", align 1
@.str.110 = private unnamed_addr constant [7 x i8] c"utf-32\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"raw\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @_PyIncrementalNewlineDecoder_decode(%struct._object* %myself, %struct._object* %input, i32 %final) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %myself.addr = alloca %struct._object*, align 8
  %input.addr = alloca %struct._object*, align 8
  %final.addr = alloca i32, align 4
  %output = alloca %struct._object*, align 8
  %output_len = alloca i64, align 8
  %self = alloca %struct.nldecoder_object*, align 8
  %kind = alloca i32, align 4
  %modified = alloca %struct._object*, align 8
  %out = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %modified265 = alloca %struct._object*, align 8
  %_py_decref_tmp273 = alloca %struct._object*, align 8
  %in_str = alloca i8*, align 8
  %len = alloca i64, align 8
  %seennl = alloca i32, align 4
  %only_lf = alloca i32, align 4
  %kind294 = alloca i32, align 4
  %i = alloca i64, align 8
  %c = alloca i32, align 4
  %i411 = alloca i64, align 8
  %c417 = alloca i32, align 4
  %translated = alloca i8*, align 8
  %kind506 = alloca i32, align 4
  %in_str511 = alloca i8*, align 8
  %in = alloca i64, align 8
  %out534 = alloca i64, align 8
  %c544 = alloca i32, align 4
  %_py_decref_tmp664 = alloca %struct._object*, align 8
  %_py_decref_tmp692 = alloca %struct._object*, align 8
  store %struct._object* %myself, %struct._object** %myself.addr, align 8
  store %struct._object* %input, %struct._object** %input.addr, align 8
  store i32 %final, i32* %final.addr, align 4
  %0 = load %struct._object*, %struct._object** %myself.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.nldecoder_object*
  store %struct.nldecoder_object* %1, %struct.nldecoder_object** %self, align 8
  %2 = load %struct.nldecoder_object*, %struct.nldecoder_object** %self, align 8
  %decoder = getelementptr inbounds %struct.nldecoder_object, %struct.nldecoder_object* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %decoder, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.nldecoder_object*, %struct.nldecoder_object** %self, align 8
  %decoder1 = getelementptr inbounds %struct.nldecoder_object, %struct.nldecoder_object* %5, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %decoder1, align 8
  %cmp2 = icmp ne %struct._object* %6, @_Py_NoneStruct
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %7 = load %struct.nldecoder_object*, %struct.nldecoder_object** %self, align 8
  %decoder4 = getelementptr inbounds %struct.nldecoder_object, %struct.nldecoder_object* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %decoder4, align 8
  %9 = load %struct._object*, %struct._object** @_PyIO_str_decode, align 8
  %10 = load %struct._object*, %struct._object** %input.addr, align 8
  %11 = load i32, i32* %final.addr, align 4
  %tobool = icmp ne i32 %11, 0
  %cond = select i1 %tobool, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  %call = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %8, %struct._object* %9, %struct._object* %10, %struct._object* %cond, i8* null)
  store %struct._object* %call, %struct._object** %output, align 8
  br label %if.end.5

if.else:                                          ; preds = %if.end
  %12 = load %struct._object*, %struct._object** %input.addr, align 8
  store %struct._object* %12, %struct._object** %output, align 8
  %13 = load %struct._object*, %struct._object** %output, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.3
  %15 = load %struct._object*, %struct._object** %output, align 8
  %call6 = call i32 @check_decoded(%struct._object* %15)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.5
  %16 = load %struct._object*, %struct._object** %output, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %17, i32 0, i32 1
  %18 = load i64, i64* %length, align 8
  store i64 %18, i64* %output_len, align 8
  %19 = load %struct.nldecoder_object*, %struct.nldecoder_object** %self, align 8
  %pendingcr = getelementptr inbounds %struct.nldecoder_object, %struct.nldecoder_object* %19, i32 0, i32 3
  %bf.load = load i8, i8* %pendingcr, align 8
  %bf.shl = shl i8 %bf.load, 7
  %bf.ashr = ashr i8 %bf.shl, 7
  %bf.cast = sext i8 %bf.ashr to i32
  %tobool10 = icmp ne i32 %bf.cast, 0
  br i1 %tobool10, label %land.lhs.true, label %if.end.163

land.lhs.true:                                    ; preds = %if.end.9
  %20 = load i32, i32* %final.addr, align 4
  %tobool11 = icmp ne i32 %20, 0
  br i1 %tobool11, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %21 = load i64, i64* %output_len, align 8
  %cmp12 = icmp sgt i64 %21, 0
  br i1 %cmp12, label %if.then.13, label %if.end.163

if.then.13:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %22 = load i64, i64* %output_len, align 8
  %add = add i64 %22, 1
  %23 = load %struct._object*, %struct._object** %output, align 8
  %24 = bitcast %struct._object* %23 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %24, i32 0, i32 3
  %25 = bitcast %struct.anon* %state to i32*
  %bf.load14 = load i32, i32* %25, align 4
  %bf.lshr = lshr i32 %bf.load14, 6
  %bf.clear = and i32 %bf.lshr, 1
  %tobool15 = icmp ne i32 %bf.clear, 0
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.13
  br label %cond.end.30

cond.false:                                       ; preds = %if.then.13
  %26 = load %struct._object*, %struct._object** %output, align 8
  %27 = bitcast %struct._object* %26 to %struct.PyASCIIObject*
  %state16 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %27, i32 0, i32 3
  %28 = bitcast %struct.anon* %state16 to i32*
  %bf.load17 = load i32, i32* %28, align 4
  %bf.lshr18 = lshr i32 %bf.load17, 2
  %bf.clear19 = and i32 %bf.lshr18, 7
  %cmp20 = icmp eq i32 %bf.clear19, 1
  br i1 %cmp20, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.false
  br label %cond.end

cond.false.22:                                    ; preds = %cond.false
  %29 = load %struct._object*, %struct._object** %output, align 8
  %30 = bitcast %struct._object* %29 to %struct.PyASCIIObject*
  %state23 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %30, i32 0, i32 3
  %31 = bitcast %struct.anon* %state23 to i32*
  %bf.load24 = load i32, i32* %31, align 4
  %bf.lshr25 = lshr i32 %bf.load24, 2
  %bf.clear26 = and i32 %bf.lshr25, 7
  %cmp27 = icmp eq i32 %bf.clear26, 2
  %cond28 = select i1 %cmp27, i32 65535, i32 1114111
  br label %cond.end

cond.end:                                         ; preds = %cond.false.22, %cond.true.21
  %cond29 = phi i32 [ 255, %cond.true.21 ], [ %cond28, %cond.false.22 ]
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.end, %cond.true
  %cond31 = phi i32 [ 127, %cond.true ], [ %cond29, %cond.end ]
  %call32 = call %struct._object* @PyUnicode_New(i64 %add, i32 %cond31)
  store %struct._object* %call32, %struct._object** %modified, align 8
  %32 = load %struct._object*, %struct._object** %modified, align 8
  %cmp33 = icmp eq %struct._object* %32, null
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %cond.end.30
  br label %error

if.end.35:                                        ; preds = %cond.end.30
  %33 = load %struct._object*, %struct._object** %modified, align 8
  %34 = bitcast %struct._object* %33 to %struct.PyASCIIObject*
  %state36 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %34, i32 0, i32 3
  %35 = bitcast %struct.anon* %state36 to i32*
  %bf.load37 = load i32, i32* %35, align 4
  %bf.lshr38 = lshr i32 %bf.load37, 2
  %bf.clear39 = and i32 %bf.lshr38, 7
  store i32 %bf.clear39, i32* %kind, align 4
  %36 = load %struct._object*, %struct._object** %modified, align 8
  %37 = bitcast %struct._object* %36 to %struct.PyASCIIObject*
  %state40 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %37, i32 0, i32 3
  %38 = bitcast %struct.anon* %state40 to i32*
  %bf.load41 = load i32, i32* %38, align 4
  %bf.lshr42 = lshr i32 %bf.load41, 5
  %bf.clear43 = and i32 %bf.lshr42, 1
  %tobool44 = icmp ne i32 %bf.clear43, 0
  br i1 %tobool44, label %cond.true.45, label %cond.false.56

cond.true.45:                                     ; preds = %if.end.35
  %39 = load %struct._object*, %struct._object** %modified, align 8
  %40 = bitcast %struct._object* %39 to %struct.PyASCIIObject*
  %state46 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %40, i32 0, i32 3
  %41 = bitcast %struct.anon* %state46 to i32*
  %bf.load47 = load i32, i32* %41, align 4
  %bf.lshr48 = lshr i32 %bf.load47, 6
  %bf.clear49 = and i32 %bf.lshr48, 1
  %tobool50 = icmp ne i32 %bf.clear49, 0
  br i1 %tobool50, label %cond.true.51, label %cond.false.52

cond.true.51:                                     ; preds = %cond.true.45
  %42 = load %struct._object*, %struct._object** %modified, align 8
  %43 = bitcast %struct._object* %42 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %43, i64 1
  %44 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end.54

cond.false.52:                                    ; preds = %cond.true.45
  %45 = load %struct._object*, %struct._object** %modified, align 8
  %46 = bitcast %struct._object* %45 to %struct.PyCompactUnicodeObject*
  %add.ptr53 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %46, i64 1
  %47 = bitcast %struct.PyCompactUnicodeObject* %add.ptr53 to i8*
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.52, %cond.true.51
  %cond55 = phi i8* [ %44, %cond.true.51 ], [ %47, %cond.false.52 ]
  br label %cond.end.57

cond.false.56:                                    ; preds = %if.end.35
  %48 = load %struct._object*, %struct._object** %modified, align 8
  %49 = bitcast %struct._object* %48 to %struct.PyUnicodeObject*
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %49, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %50 = load i8*, i8** %any, align 8
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.56, %cond.end.54
  %cond58 = phi i8* [ %cond55, %cond.end.54 ], [ %50, %cond.false.56 ]
  store i8* %cond58, i8** %out, align 8
  br label %do.body

do.body:                                          ; preds = %cond.end.57
  %51 = load i32, i32* %kind, align 4
  switch i32 %51, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.81
  ]

sw.bb:                                            ; preds = %do.body
  %52 = load %struct._object*, %struct._object** %modified, align 8
  %53 = bitcast %struct._object* %52 to %struct.PyASCIIObject*
  %state59 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %53, i32 0, i32 3
  %54 = bitcast %struct.anon* %state59 to i32*
  %bf.load60 = load i32, i32* %54, align 4
  %bf.lshr61 = lshr i32 %bf.load60, 5
  %bf.clear62 = and i32 %bf.lshr61, 1
  %tobool63 = icmp ne i32 %bf.clear62, 0
  br i1 %tobool63, label %cond.true.64, label %cond.false.76

cond.true.64:                                     ; preds = %sw.bb
  %55 = load %struct._object*, %struct._object** %modified, align 8
  %56 = bitcast %struct._object* %55 to %struct.PyASCIIObject*
  %state65 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %56, i32 0, i32 3
  %57 = bitcast %struct.anon* %state65 to i32*
  %bf.load66 = load i32, i32* %57, align 4
  %bf.lshr67 = lshr i32 %bf.load66, 6
  %bf.clear68 = and i32 %bf.lshr67, 1
  %tobool69 = icmp ne i32 %bf.clear68, 0
  br i1 %tobool69, label %cond.true.70, label %cond.false.72

cond.true.70:                                     ; preds = %cond.true.64
  %58 = load %struct._object*, %struct._object** %modified, align 8
  %59 = bitcast %struct._object* %58 to %struct.PyASCIIObject*
  %add.ptr71 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %59, i64 1
  %60 = bitcast %struct.PyASCIIObject* %add.ptr71 to i8*
  br label %cond.end.74

cond.false.72:                                    ; preds = %cond.true.64
  %61 = load %struct._object*, %struct._object** %modified, align 8
  %62 = bitcast %struct._object* %61 to %struct.PyCompactUnicodeObject*
  %add.ptr73 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %62, i64 1
  %63 = bitcast %struct.PyCompactUnicodeObject* %add.ptr73 to i8*
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.72, %cond.true.70
  %cond75 = phi i8* [ %60, %cond.true.70 ], [ %63, %cond.false.72 ]
  br label %cond.end.79

cond.false.76:                                    ; preds = %sw.bb
  %64 = load %struct._object*, %struct._object** %modified, align 8
  %65 = bitcast %struct._object* %64 to %struct.PyUnicodeObject*
  %data77 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %65, i32 0, i32 1
  %any78 = bitcast %union.anon* %data77 to i8**
  %66 = load i8*, i8** %any78, align 8
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.76, %cond.end.74
  %cond80 = phi i8* [ %cond75, %cond.end.74 ], [ %66, %cond.false.76 ]
  %arrayidx = getelementptr i8, i8* %cond80, i64 0
  store i8 13, i8* %arrayidx, align 1
  br label %sw.epilog

sw.bb.81:                                         ; preds = %do.body
  %67 = load %struct._object*, %struct._object** %modified, align 8
  %68 = bitcast %struct._object* %67 to %struct.PyASCIIObject*
  %state82 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %68, i32 0, i32 3
  %69 = bitcast %struct.anon* %state82 to i32*
  %bf.load83 = load i32, i32* %69, align 4
  %bf.lshr84 = lshr i32 %bf.load83, 5
  %bf.clear85 = and i32 %bf.lshr84, 1
  %tobool86 = icmp ne i32 %bf.clear85, 0
  br i1 %tobool86, label %cond.true.87, label %cond.false.99

cond.true.87:                                     ; preds = %sw.bb.81
  %70 = load %struct._object*, %struct._object** %modified, align 8
  %71 = bitcast %struct._object* %70 to %struct.PyASCIIObject*
  %state88 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %71, i32 0, i32 3
  %72 = bitcast %struct.anon* %state88 to i32*
  %bf.load89 = load i32, i32* %72, align 4
  %bf.lshr90 = lshr i32 %bf.load89, 6
  %bf.clear91 = and i32 %bf.lshr90, 1
  %tobool92 = icmp ne i32 %bf.clear91, 0
  br i1 %tobool92, label %cond.true.93, label %cond.false.95

cond.true.93:                                     ; preds = %cond.true.87
  %73 = load %struct._object*, %struct._object** %modified, align 8
  %74 = bitcast %struct._object* %73 to %struct.PyASCIIObject*
  %add.ptr94 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %74, i64 1
  %75 = bitcast %struct.PyASCIIObject* %add.ptr94 to i8*
  br label %cond.end.97

cond.false.95:                                    ; preds = %cond.true.87
  %76 = load %struct._object*, %struct._object** %modified, align 8
  %77 = bitcast %struct._object* %76 to %struct.PyCompactUnicodeObject*
  %add.ptr96 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %77, i64 1
  %78 = bitcast %struct.PyCompactUnicodeObject* %add.ptr96 to i8*
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.95, %cond.true.93
  %cond98 = phi i8* [ %75, %cond.true.93 ], [ %78, %cond.false.95 ]
  br label %cond.end.102

cond.false.99:                                    ; preds = %sw.bb.81
  %79 = load %struct._object*, %struct._object** %modified, align 8
  %80 = bitcast %struct._object* %79 to %struct.PyUnicodeObject*
  %data100 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %80, i32 0, i32 1
  %any101 = bitcast %union.anon* %data100 to i8**
  %81 = load i8*, i8** %any101, align 8
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.false.99, %cond.end.97
  %cond103 = phi i8* [ %cond98, %cond.end.97 ], [ %81, %cond.false.99 ]
  %82 = bitcast i8* %cond103 to i16*
  %arrayidx104 = getelementptr i16, i16* %82, i64 0
  store i16 13, i16* %arrayidx104, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  %83 = load %struct._object*, %struct._object** %modified, align 8
  %84 = bitcast %struct._object* %83 to %struct.PyASCIIObject*
  %state105 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %84, i32 0, i32 3
  %85 = bitcast %struct.anon* %state105 to i32*
  %bf.load106 = load i32, i32* %85, align 4
  %bf.lshr107 = lshr i32 %bf.load106, 5
  %bf.clear108 = and i32 %bf.lshr107, 1
  %tobool109 = icmp ne i32 %bf.clear108, 0
  br i1 %tobool109, label %cond.true.110, label %cond.false.122

cond.true.110:                                    ; preds = %sw.default
  %86 = load %struct._object*, %struct._object** %modified, align 8
  %87 = bitcast %struct._object* %86 to %struct.PyASCIIObject*
  %state111 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %87, i32 0, i32 3
  %88 = bitcast %struct.anon* %state111 to i32*
  %bf.load112 = load i32, i32* %88, align 4
  %bf.lshr113 = lshr i32 %bf.load112, 6
  %bf.clear114 = and i32 %bf.lshr113, 1
  %tobool115 = icmp ne i32 %bf.clear114, 0
  br i1 %tobool115, label %cond.true.116, label %cond.false.118

cond.true.116:                                    ; preds = %cond.true.110
  %89 = load %struct._object*, %struct._object** %modified, align 8
  %90 = bitcast %struct._object* %89 to %struct.PyASCIIObject*
  %add.ptr117 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %90, i64 1
  %91 = bitcast %struct.PyASCIIObject* %add.ptr117 to i8*
  br label %cond.end.120

cond.false.118:                                   ; preds = %cond.true.110
  %92 = load %struct._object*, %struct._object** %modified, align 8
  %93 = bitcast %struct._object* %92 to %struct.PyCompactUnicodeObject*
  %add.ptr119 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %93, i64 1
  %94 = bitcast %struct.PyCompactUnicodeObject* %add.ptr119 to i8*
  br label %cond.end.120

cond.end.120:                                     ; preds = %cond.false.118, %cond.true.116
  %cond121 = phi i8* [ %91, %cond.true.116 ], [ %94, %cond.false.118 ]
  br label %cond.end.125

cond.false.122:                                   ; preds = %sw.default
  %95 = load %struct._object*, %struct._object** %modified, align 8
  %96 = bitcast %struct._object* %95 to %struct.PyUnicodeObject*
  %data123 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %96, i32 0, i32 1
  %any124 = bitcast %union.anon* %data123 to i8**
  %97 = load i8*, i8** %any124, align 8
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.122, %cond.end.120
  %cond126 = phi i8* [ %cond121, %cond.end.120 ], [ %97, %cond.false.122 ]
  %98 = bitcast i8* %cond126 to i32*
  %arrayidx127 = getelementptr i32, i32* %98, i64 0
  store i32 13, i32* %arrayidx127, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end.125, %cond.end.102, %cond.end.79
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %99 = load i8*, i8** %out, align 8
  %100 = load i32, i32* %kind, align 4
  %idx.ext = sext i32 %100 to i64
  %add.ptr128 = getelementptr i8, i8* %99, i64 %idx.ext
  %101 = load %struct._object*, %struct._object** %output, align 8
  %102 = bitcast %struct._object* %101 to %struct.PyASCIIObject*
  %state129 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %102, i32 0, i32 3
  %103 = bitcast %struct.anon* %state129 to i32*
  %bf.load130 = load i32, i32* %103, align 4
  %bf.lshr131 = lshr i32 %bf.load130, 5
  %bf.clear132 = and i32 %bf.lshr131, 1
  %tobool133 = icmp ne i32 %bf.clear132, 0
  br i1 %tobool133, label %cond.true.134, label %cond.false.146

cond.true.134:                                    ; preds = %do.end
  %104 = load %struct._object*, %struct._object** %output, align 8
  %105 = bitcast %struct._object* %104 to %struct.PyASCIIObject*
  %state135 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %105, i32 0, i32 3
  %106 = bitcast %struct.anon* %state135 to i32*
  %bf.load136 = load i32, i32* %106, align 4
  %bf.lshr137 = lshr i32 %bf.load136, 6
  %bf.clear138 = and i32 %bf.lshr137, 1
  %tobool139 = icmp ne i32 %bf.clear138, 0
  br i1 %tobool139, label %cond.true.140, label %cond.false.142

cond.true.140:                                    ; preds = %cond.true.134
  %107 = load %struct._object*, %struct._object** %output, align 8
  %108 = bitcast %struct._object* %107 to %struct.PyASCIIObject*
  %add.ptr141 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %108, i64 1
  %109 = bitcast %struct.PyASCIIObject* %add.ptr141 to i8*
  br label %cond.end.144

cond.false.142:                                   ; preds = %cond.true.134
  %110 = load %struct._object*, %struct._object** %output, align 8
  %111 = bitcast %struct._object* %110 to %struct.PyCompactUnicodeObject*
  %add.ptr143 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %111, i64 1
  %112 = bitcast %struct.PyCompactUnicodeObject* %add.ptr143 to i8*
  br label %cond.end.144

cond.end.144:                                     ; preds = %cond.false.142, %cond.true.140
  %cond145 = phi i8* [ %109, %cond.true.140 ], [ %112, %cond.false.142 ]
  br label %cond.end.149

cond.false.146:                                   ; preds = %do.end
  %113 = load %struct._object*, %struct._object** %output, align 8
  %114 = bitcast %struct._object* %113 to %struct.PyUnicodeObject*
  %data147 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %114, i32 0, i32 1
  %any148 = bitcast %union.anon* %data147 to i8**
  %115 = load i8*, i8** %any148, align 8
  br label %cond.end.149

cond.end.149:                                     ; preds = %cond.false.146, %cond.end.144
  %cond150 = phi i8* [ %cond145, %cond.end.144 ], [ %115, %cond.false.146 ]
  %116 = load i32, i32* %kind, align 4
  %conv = sext i32 %116 to i64
  %117 = load i64, i64* %output_len, align 8
  %mul = mul i64 %conv, %117
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr128, i8* %cond150, i64 %mul, i32 1, i1 false)
  br label %do.body.151

do.body.151:                                      ; preds = %cond.end.149
  %118 = load %struct._object*, %struct._object** %output, align 8
  store %struct._object* %118, %struct._object** %_py_decref_tmp, align 8
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt152 = getelementptr inbounds %struct._object, %struct._object* %119, i32 0, i32 0
  %120 = load i64, i64* %ob_refcnt152, align 8
  %dec = add i64 %120, -1
  store i64 %dec, i64* %ob_refcnt152, align 8
  %cmp153 = icmp ne i64 %dec, 0
  br i1 %cmp153, label %if.then.155, label %if.else.156

if.then.155:                                      ; preds = %do.body.151
  br label %if.end.157

if.else.156:                                      ; preds = %do.body.151
  %121 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %121, i32 0, i32 1
  %122 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %122, i32 0, i32 4
  %123 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %124 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %123(%struct._object* %124)
  br label %if.end.157

if.end.157:                                       ; preds = %if.else.156, %if.then.155
  br label %do.end.158

do.end.158:                                       ; preds = %if.end.157
  %125 = load %struct._object*, %struct._object** %modified, align 8
  store %struct._object* %125, %struct._object** %output, align 8
  %126 = load %struct.nldecoder_object*, %struct.nldecoder_object** %self, align 8
  %pendingcr159 = getelementptr inbounds %struct.nldecoder_object, %struct.nldecoder_object* %126, i32 0, i32 3
  %bf.load160 = load i8, i8* %pendingcr159, align 8
  %bf.clear161 = and i8 %bf.load160, -2
  store i8 %bf.clear161, i8* %pendingcr159, align 8
  %127 = load i64, i64* %output_len, align 8
  %inc162 = add i64 %127, 1
  store i64 %inc162, i64* %output_len, align 8
  br label %if.end.163

if.end.163:                                       ; preds = %do.end.158, %lor.lhs.false, %if.end.9
  %128 = load i32, i32* %final.addr, align 4
  %tobool164 = icmp ne i32 %128, 0
  br i1 %tobool164, label %if.end.288, label %if.then.165

if.then.165:                                      ; preds = %if.end.163
  %129 = load i64, i64* %output_len, align 8
  %cmp166 = icmp sgt i64 %129, 0
  br i1 %cmp166, label %land.lhs.true.168, label %if.end.287

land.lhs.true.168:                                ; preds = %if.then.165
  %130 = load %struct._object*, %struct._object** %output, align 8
  %131 = bitcast %struct._object* %130 to %struct.PyASCIIObject*
  %state169 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %131, i32 0, i32 3
  %132 = bitcast %struct.anon* %state169 to i32*
  %bf.load170 = load i32, i32* %132, align 4
  %bf.lshr171 = lshr i32 %bf.load170, 2
  %bf.clear172 = and i32 %bf.lshr171, 7
  %cmp173 = icmp eq i32 %bf.clear172, 1
  br i1 %cmp173, label %cond.true.175, label %cond.false.200

cond.true.175:                                    ; preds = %land.lhs.true.168
  %133 = load i64, i64* %output_len, align 8
  %sub = sub i64 %133, 1
  %134 = load %struct._object*, %struct._object** %output, align 8
  %135 = bitcast %struct._object* %134 to %struct.PyASCIIObject*
  %state176 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %135, i32 0, i32 3
  %136 = bitcast %struct.anon* %state176 to i32*
  %bf.load177 = load i32, i32* %136, align 4
  %bf.lshr178 = lshr i32 %bf.load177, 5
  %bf.clear179 = and i32 %bf.lshr178, 1
  %tobool180 = icmp ne i32 %bf.clear179, 0
  br i1 %tobool180, label %cond.true.181, label %cond.false.193

cond.true.181:                                    ; preds = %cond.true.175
  %137 = load %struct._object*, %struct._object** %output, align 8
  %138 = bitcast %struct._object* %137 to %struct.PyASCIIObject*
  %state182 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %138, i32 0, i32 3
  %139 = bitcast %struct.anon* %state182 to i32*
  %bf.load183 = load i32, i32* %139, align 4
  %bf.lshr184 = lshr i32 %bf.load183, 6
  %bf.clear185 = and i32 %bf.lshr184, 1
  %tobool186 = icmp ne i32 %bf.clear185, 0
  br i1 %tobool186, label %cond.true.187, label %cond.false.189

cond.true.187:                                    ; preds = %cond.true.181
  %140 = load %struct._object*, %struct._object** %output, align 8
  %141 = bitcast %struct._object* %140 to %struct.PyASCIIObject*
  %add.ptr188 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %141, i64 1
  %142 = bitcast %struct.PyASCIIObject* %add.ptr188 to i8*
  br label %cond.end.191

cond.false.189:                                   ; preds = %cond.true.181
  %143 = load %struct._object*, %struct._object** %output, align 8
  %144 = bitcast %struct._object* %143 to %struct.PyCompactUnicodeObject*
  %add.ptr190 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %144, i64 1
  %145 = bitcast %struct.PyCompactUnicodeObject* %add.ptr190 to i8*
  br label %cond.end.191

cond.end.191:                                     ; preds = %cond.false.189, %cond.true.187
  %cond192 = phi i8* [ %142, %cond.true.187 ], [ %145, %cond.false.189 ]
  br label %cond.end.196

cond.false.193:                                   ; preds = %cond.true.175
  %146 = load %struct._object*, %struct._object** %output, align 8
  %147 = bitcast %struct._object* %146 to %struct.PyUnicodeObject*
  %data194 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %147, i32 0, i32 1
  %any195 = bitcast %union.anon* %data194 to i8**
  %148 = load i8*, i8** %any195, align 8
  br label %cond.end.196

cond.end.196:                                     ; preds = %cond.false.193, %cond.end.191
  %cond197 = phi i8* [ %cond192, %cond.end.191 ], [ %148, %cond.false.193 ]
  %arrayidx198 = getelementptr i8, i8* %cond197, i64 %sub
  %149 = load i8, i8* %arrayidx198, align 1
  %conv199 = zext i8 %149 to i32
  br label %cond.end.260

cond.false.200:                                   ; preds = %land.lhs.true.168
  %150 = load %struct._object*, %struct._object** %output, align 8
  %151 = bitcast %struct._object* %150 to %struct.PyASCIIObject*
  %state201 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %151, i32 0, i32 3
  %152 = bitcast %struct.anon* %state201 to i32*
  %bf.load202 = load i32, i32* %152, align 4
  %bf.lshr203 = lshr i32 %bf.load202, 2
  %bf.clear204 = and i32 %bf.lshr203, 7
  %cmp205 = icmp eq i32 %bf.clear204, 2
  br i1 %cmp205, label %cond.true.207, label %cond.false.233

cond.true.207:                                    ; preds = %cond.false.200
  %153 = load i64, i64* %output_len, align 8
  %sub208 = sub i64 %153, 1
  %154 = load %struct._object*, %struct._object** %output, align 8
  %155 = bitcast %struct._object* %154 to %struct.PyASCIIObject*
  %state209 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %155, i32 0, i32 3
  %156 = bitcast %struct.anon* %state209 to i32*
  %bf.load210 = load i32, i32* %156, align 4
  %bf.lshr211 = lshr i32 %bf.load210, 5
  %bf.clear212 = and i32 %bf.lshr211, 1
  %tobool213 = icmp ne i32 %bf.clear212, 0
  br i1 %tobool213, label %cond.true.214, label %cond.false.226

cond.true.214:                                    ; preds = %cond.true.207
  %157 = load %struct._object*, %struct._object** %output, align 8
  %158 = bitcast %struct._object* %157 to %struct.PyASCIIObject*
  %state215 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %158, i32 0, i32 3
  %159 = bitcast %struct.anon* %state215 to i32*
  %bf.load216 = load i32, i32* %159, align 4
  %bf.lshr217 = lshr i32 %bf.load216, 6
  %bf.clear218 = and i32 %bf.lshr217, 1
  %tobool219 = icmp ne i32 %bf.clear218, 0
  br i1 %tobool219, label %cond.true.220, label %cond.false.222

cond.true.220:                                    ; preds = %cond.true.214
  %160 = load %struct._object*, %struct._object** %output, align 8
  %161 = bitcast %struct._object* %160 to %struct.PyASCIIObject*
  %add.ptr221 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %161, i64 1
  %162 = bitcast %struct.PyASCIIObject* %add.ptr221 to i8*
  br label %cond.end.224

cond.false.222:                                   ; preds = %cond.true.214
  %163 = load %struct._object*, %struct._object** %output, align 8
  %164 = bitcast %struct._object* %163 to %struct.PyCompactUnicodeObject*
  %add.ptr223 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %164, i64 1
  %165 = bitcast %struct.PyCompactUnicodeObject* %add.ptr223 to i8*
  br label %cond.end.224

cond.end.224:                                     ; preds = %cond.false.222, %cond.true.220
  %cond225 = phi i8* [ %162, %cond.true.220 ], [ %165, %cond.false.222 ]
  br label %cond.end.229

cond.false.226:                                   ; preds = %cond.true.207
  %166 = load %struct._object*, %struct._object** %output, align 8
  %167 = bitcast %struct._object* %166 to %struct.PyUnicodeObject*
  %data227 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %167, i32 0, i32 1
  %any228 = bitcast %union.anon* %data227 to i8**
  %168 = load i8*, i8** %any228, align 8
  br label %cond.end.229

cond.end.229:                                     ; preds = %cond.false.226, %cond.end.224
  %cond230 = phi i8* [ %cond225, %cond.end.224 ], [ %168, %cond.false.226 ]
  %169 = bitcast i8* %cond230 to i16*
  %arrayidx231 = getelementptr i16, i16* %169, i64 %sub208
  %170 = load i16, i16* %arrayidx231, align 2
  %conv232 = zext i16 %170 to i32
  br label %cond.end.258

cond.false.233:                                   ; preds = %cond.false.200
  %171 = load i64, i64* %output_len, align 8
  %sub234 = sub i64 %171, 1
  %172 = load %struct._object*, %struct._object** %output, align 8
  %173 = bitcast %struct._object* %172 to %struct.PyASCIIObject*
  %state235 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %173, i32 0, i32 3
  %174 = bitcast %struct.anon* %state235 to i32*
  %bf.load236 = load i32, i32* %174, align 4
  %bf.lshr237 = lshr i32 %bf.load236, 5
  %bf.clear238 = and i32 %bf.lshr237, 1
  %tobool239 = icmp ne i32 %bf.clear238, 0
  br i1 %tobool239, label %cond.true.240, label %cond.false.252

cond.true.240:                                    ; preds = %cond.false.233
  %175 = load %struct._object*, %struct._object** %output, align 8
  %176 = bitcast %struct._object* %175 to %struct.PyASCIIObject*
  %state241 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %176, i32 0, i32 3
  %177 = bitcast %struct.anon* %state241 to i32*
  %bf.load242 = load i32, i32* %177, align 4
  %bf.lshr243 = lshr i32 %bf.load242, 6
  %bf.clear244 = and i32 %bf.lshr243, 1
  %tobool245 = icmp ne i32 %bf.clear244, 0
  br i1 %tobool245, label %cond.true.246, label %cond.false.248

cond.true.246:                                    ; preds = %cond.true.240
  %178 = load %struct._object*, %struct._object** %output, align 8
  %179 = bitcast %struct._object* %178 to %struct.PyASCIIObject*
  %add.ptr247 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %179, i64 1
  %180 = bitcast %struct.PyASCIIObject* %add.ptr247 to i8*
  br label %cond.end.250

cond.false.248:                                   ; preds = %cond.true.240
  %181 = load %struct._object*, %struct._object** %output, align 8
  %182 = bitcast %struct._object* %181 to %struct.PyCompactUnicodeObject*
  %add.ptr249 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %182, i64 1
  %183 = bitcast %struct.PyCompactUnicodeObject* %add.ptr249 to i8*
  br label %cond.end.250

cond.end.250:                                     ; preds = %cond.false.248, %cond.true.246
  %cond251 = phi i8* [ %180, %cond.true.246 ], [ %183, %cond.false.248 ]
  br label %cond.end.255

cond.false.252:                                   ; preds = %cond.false.233
  %184 = load %struct._object*, %struct._object** %output, align 8
  %185 = bitcast %struct._object* %184 to %struct.PyUnicodeObject*
  %data253 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %185, i32 0, i32 1
  %any254 = bitcast %union.anon* %data253 to i8**
  %186 = load i8*, i8** %any254, align 8
  br label %cond.end.255

cond.end.255:                                     ; preds = %cond.false.252, %cond.end.250
  %cond256 = phi i8* [ %cond251, %cond.end.250 ], [ %186, %cond.false.252 ]
  %187 = bitcast i8* %cond256 to i32*
  %arrayidx257 = getelementptr i32, i32* %187, i64 %sub234
  %188 = load i32, i32* %arrayidx257, align 4
  br label %cond.end.258

cond.end.258:                                     ; preds = %cond.end.255, %cond.end.229
  %cond259 = phi i32 [ %conv232, %cond.end.229 ], [ %188, %cond.end.255 ]
  br label %cond.end.260

cond.end.260:                                     ; preds = %cond.end.258, %cond.end.196
  %cond261 = phi i32 [ %conv199, %cond.end.196 ], [ %cond259, %cond.end.258 ]
  %cmp262 = icmp eq i32 %cond261, 13
  br i1 %cmp262, label %if.then.264, label %if.end.287

if.then.264:                                      ; preds = %cond.end.260
  %189 = load %struct._object*, %struct._object** %output, align 8
  %190 = load i64, i64* %output_len, align 8
  %sub266 = sub i64 %190, 1
  %call267 = call %struct._object* @PyUnicode_Substring(%struct._object* %189, i64 0, i64 %sub266)
  store %struct._object* %call267, %struct._object** %modified265, align 8
  %191 = load %struct._object*, %struct._object** %modified265, align 8
  %cmp268 = icmp eq %struct._object* %191, null
  br i1 %cmp268, label %if.then.270, label %if.end.271

if.then.270:                                      ; preds = %if.then.264
  br label %error

if.end.271:                                       ; preds = %if.then.264
  br label %do.body.272

do.body.272:                                      ; preds = %if.end.271
  %192 = load %struct._object*, %struct._object** %output, align 8
  store %struct._object* %192, %struct._object** %_py_decref_tmp273, align 8
  %193 = load %struct._object*, %struct._object** %_py_decref_tmp273, align 8
  %ob_refcnt274 = getelementptr inbounds %struct._object, %struct._object* %193, i32 0, i32 0
  %194 = load i64, i64* %ob_refcnt274, align 8
  %dec275 = add i64 %194, -1
  store i64 %dec275, i64* %ob_refcnt274, align 8
  %cmp276 = icmp ne i64 %dec275, 0
  br i1 %cmp276, label %if.then.278, label %if.else.279

if.then.278:                                      ; preds = %do.body.272
  br label %if.end.282

if.else.279:                                      ; preds = %do.body.272
  %195 = load %struct._object*, %struct._object** %_py_decref_tmp273, align 8
  %ob_type280 = getelementptr inbounds %struct._object, %struct._object* %195, i32 0, i32 1
  %196 = load %struct._typeobject*, %struct._typeobject** %ob_type280, align 8
  %tp_dealloc281 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %196, i32 0, i32 4
  %197 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc281, align 8
  %198 = load %struct._object*, %struct._object** %_py_decref_tmp273, align 8
  call void %197(%struct._object* %198)
  br label %if.end.282

if.end.282:                                       ; preds = %if.else.279, %if.then.278
  br label %do.end.283

do.end.283:                                       ; preds = %if.end.282
  %199 = load %struct._object*, %struct._object** %modified265, align 8
  store %struct._object* %199, %struct._object** %output, align 8
  %200 = load %struct.nldecoder_object*, %struct.nldecoder_object** %self, align 8
  %pendingcr284 = getelementptr inbounds %struct.nldecoder_object, %struct.nldecoder_object* %200, i32 0, i32 3
  %bf.load285 = load i8, i8* %pendingcr284, align 8
  %bf.clear286 = and i8 %bf.load285, -2
  %bf.set = or i8 %bf.clear286, 1
  store i8 %bf.set, i8* %pendingcr284, align 8
  br label %if.end.287

if.end.287:                                       ; preds = %do.end.283, %cond.end.260, %if.then.165
  br label %if.end.288

if.end.288:                                       ; preds = %if.end.287, %if.end.163
  %201 = load %struct.nldecoder_object*, %struct.nldecoder_object** %self, align 8
  %seennl289 = getelementptr inbounds %struct.nldecoder_object, %struct.nldecoder_object* %201, i32 0, i32 3
  %bf.load290 = load i8, i8* %seennl289, align 8
  %bf.lshr291 = lshr i8 %bf.load290, 2
  %bf.clear292 = and i8 %bf.lshr291, 7
  %bf.cast293 = zext i8 %bf.clear292 to i32
  store i32 %bf.cast293, i32* %seennl, align 4
  store i32 0, i32* %only_lf, align 4
  %202 = load %struct._object*, %struct._object** %output, align 8
  %203 = bitcast %struct._object* %202 to %struct.PyASCIIObject*
  %state295 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %203, i32 0, i32 3
  %204 = bitcast %struct.anon* %state295 to i32*
  %bf.load296 = load i32, i32* %204, align 4
  %bf.lshr297 = lshr i32 %bf.load296, 5
  %bf.clear298 = and i32 %bf.lshr297, 1
  %tobool299 = icmp ne i32 %bf.clear298, 0
  br i1 %tobool299, label %cond.true.300, label %cond.false.312

cond.true.300:                                    ; preds = %if.end.288
  %205 = load %struct._object*, %struct._object** %output, align 8
  %206 = bitcast %struct._object* %205 to %struct.PyASCIIObject*
  %state301 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %206, i32 0, i32 3
  %207 = bitcast %struct.anon* %state301 to i32*
  %bf.load302 = load i32, i32* %207, align 4
  %bf.lshr303 = lshr i32 %bf.load302, 6
  %bf.clear304 = and i32 %bf.lshr303, 1
  %tobool305 = icmp ne i32 %bf.clear304, 0
  br i1 %tobool305, label %cond.true.306, label %cond.false.308

cond.true.306:                                    ; preds = %cond.true.300
  %208 = load %struct._object*, %struct._object** %output, align 8
  %209 = bitcast %struct._object* %208 to %struct.PyASCIIObject*
  %add.ptr307 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %209, i64 1
  %210 = bitcast %struct.PyASCIIObject* %add.ptr307 to i8*
  br label %cond.end.310

cond.false.308:                                   ; preds = %cond.true.300
  %211 = load %struct._object*, %struct._object** %output, align 8
  %212 = bitcast %struct._object* %211 to %struct.PyCompactUnicodeObject*
  %add.ptr309 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %212, i64 1
  %213 = bitcast %struct.PyCompactUnicodeObject* %add.ptr309 to i8*
  br label %cond.end.310

cond.end.310:                                     ; preds = %cond.false.308, %cond.true.306
  %cond311 = phi i8* [ %210, %cond.true.306 ], [ %213, %cond.false.308 ]
  br label %cond.end.315

cond.false.312:                                   ; preds = %if.end.288
  %214 = load %struct._object*, %struct._object** %output, align 8
  %215 = bitcast %struct._object* %214 to %struct.PyUnicodeObject*
  %data313 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %215, i32 0, i32 1
  %any314 = bitcast %union.anon* %data313 to i8**
  %216 = load i8*, i8** %any314, align 8
  br label %cond.end.315

cond.end.315:                                     ; preds = %cond.false.312, %cond.end.310
  %cond316 = phi i8* [ %cond311, %cond.end.310 ], [ %216, %cond.false.312 ]
  store i8* %cond316, i8** %in_str, align 8
  %217 = load %struct._object*, %struct._object** %output, align 8
  %218 = bitcast %struct._object* %217 to %struct.PyASCIIObject*
  %length317 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %218, i32 0, i32 1
  %219 = load i64, i64* %length317, align 8
  store i64 %219, i64* %len, align 8
  %220 = load %struct._object*, %struct._object** %output, align 8
  %221 = bitcast %struct._object* %220 to %struct.PyASCIIObject*
  %state318 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %221, i32 0, i32 3
  %222 = bitcast %struct.anon* %state318 to i32*
  %bf.load319 = load i32, i32* %222, align 4
  %bf.lshr320 = lshr i32 %bf.load319, 2
  %bf.clear321 = and i32 %bf.lshr320, 7
  store i32 %bf.clear321, i32* %kind294, align 4
  %223 = load i64, i64* %len, align 8
  %cmp322 = icmp eq i64 %223, 0
  br i1 %cmp322, label %if.then.324, label %if.end.325

if.then.324:                                      ; preds = %cond.end.315
  %224 = load %struct._object*, %struct._object** %output, align 8
  store %struct._object* %224, %struct._object** %retval
  br label %return

if.end.325:                                       ; preds = %cond.end.315
  %225 = load i32, i32* %seennl, align 4
  %cmp326 = icmp eq i32 %225, 2
  br i1 %cmp326, label %if.then.331, label %lor.lhs.false.328

lor.lhs.false.328:                                ; preds = %if.end.325
  %226 = load i32, i32* %seennl, align 4
  %cmp329 = icmp eq i32 %226, 0
  br i1 %cmp329, label %if.then.331, label %if.end.337

if.then.331:                                      ; preds = %lor.lhs.false.328, %if.end.325
  %227 = load i8*, i8** %in_str, align 8
  %228 = load i32, i32* %kind294, align 4
  %conv332 = sext i32 %228 to i64
  %229 = load i64, i64* %len, align 8
  %mul333 = mul i64 %conv332, %229
  %call334 = call i8* @memchr(i8* %227, i32 13, i64 %mul333) #4
  %cmp335 = icmp eq i8* %call334, null
  %conv336 = zext i1 %cmp335 to i32
  store i32 %conv336, i32* %only_lf, align 4
  br label %if.end.337

if.end.337:                                       ; preds = %if.then.331, %lor.lhs.false.328
  %230 = load i32, i32* %only_lf, align 4
  %tobool338 = icmp ne i32 %230, 0
  br i1 %tobool338, label %if.then.339, label %if.else.404

if.then.339:                                      ; preds = %if.end.337
  %231 = load i32, i32* %seennl, align 4
  %cmp340 = icmp eq i32 %231, 0
  br i1 %cmp340, label %land.lhs.true.342, label %if.end.403

land.lhs.true.342:                                ; preds = %if.then.339
  %232 = load i8*, i8** %in_str, align 8
  %233 = load i32, i32* %kind294, align 4
  %conv343 = sext i32 %233 to i64
  %234 = load i64, i64* %len, align 8
  %mul344 = mul i64 %conv343, %234
  %call345 = call i8* @memchr(i8* %232, i32 10, i64 %mul344) #4
  %cmp346 = icmp ne i8* %call345, null
  br i1 %cmp346, label %if.then.348, label %if.end.403

if.then.348:                                      ; preds = %land.lhs.true.342
  %235 = load i32, i32* %kind294, align 4
  %cmp349 = icmp eq i32 %235, 1
  br i1 %cmp349, label %if.then.351, label %if.else.352

if.then.351:                                      ; preds = %if.then.348
  %236 = load i32, i32* %seennl, align 4
  %or = or i32 %236, 2
  store i32 %or, i32* %seennl, align 4
  br label %if.end.402

if.else.352:                                      ; preds = %if.then.348
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.401, %if.else.352
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %237 = load i32, i32* %kind294, align 4
  %cmp353 = icmp eq i32 %237, 1
  br i1 %cmp353, label %cond.true.355, label %cond.false.358

cond.true.355:                                    ; preds = %while.cond
  %238 = load i64, i64* %i, align 8
  %239 = load i8*, i8** %in_str, align 8
  %arrayidx356 = getelementptr i8, i8* %239, i64 %238
  %240 = load i8, i8* %arrayidx356, align 1
  %conv357 = zext i8 %240 to i32
  br label %cond.end.368

cond.false.358:                                   ; preds = %while.cond
  %241 = load i32, i32* %kind294, align 4
  %cmp359 = icmp eq i32 %241, 2
  br i1 %cmp359, label %cond.true.361, label %cond.false.364

cond.true.361:                                    ; preds = %cond.false.358
  %242 = load i64, i64* %i, align 8
  %243 = load i8*, i8** %in_str, align 8
  %244 = bitcast i8* %243 to i16*
  %arrayidx362 = getelementptr i16, i16* %244, i64 %242
  %245 = load i16, i16* %arrayidx362, align 2
  %conv363 = zext i16 %245 to i32
  br label %cond.end.366

cond.false.364:                                   ; preds = %cond.false.358
  %246 = load i64, i64* %i, align 8
  %247 = load i8*, i8** %in_str, align 8
  %248 = bitcast i8* %247 to i32*
  %arrayidx365 = getelementptr i32, i32* %248, i64 %246
  %249 = load i32, i32* %arrayidx365, align 4
  br label %cond.end.366

cond.end.366:                                     ; preds = %cond.false.364, %cond.true.361
  %cond367 = phi i32 [ %conv363, %cond.true.361 ], [ %249, %cond.false.364 ]
  br label %cond.end.368

cond.end.368:                                     ; preds = %cond.end.366, %cond.true.355
  %cond369 = phi i32 [ %conv357, %cond.true.355 ], [ %cond367, %cond.end.366 ]
  %cmp370 = icmp ugt i32 %cond369, 10
  br i1 %cmp370, label %while.body, label %while.end

while.body:                                       ; preds = %cond.end.368
  %250 = load i64, i64* %i, align 8
  %inc372 = add i64 %250, 1
  store i64 %inc372, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %cond.end.368
  %251 = load i32, i32* %kind294, align 4
  %cmp373 = icmp eq i32 %251, 1
  br i1 %cmp373, label %cond.true.375, label %cond.false.379

cond.true.375:                                    ; preds = %while.end
  %252 = load i64, i64* %i, align 8
  %inc376 = add i64 %252, 1
  store i64 %inc376, i64* %i, align 8
  %253 = load i8*, i8** %in_str, align 8
  %arrayidx377 = getelementptr i8, i8* %253, i64 %252
  %254 = load i8, i8* %arrayidx377, align 1
  %conv378 = zext i8 %254 to i32
  br label %cond.end.391

cond.false.379:                                   ; preds = %while.end
  %255 = load i32, i32* %kind294, align 4
  %cmp380 = icmp eq i32 %255, 2
  br i1 %cmp380, label %cond.true.382, label %cond.false.386

cond.true.382:                                    ; preds = %cond.false.379
  %256 = load i64, i64* %i, align 8
  %inc383 = add i64 %256, 1
  store i64 %inc383, i64* %i, align 8
  %257 = load i8*, i8** %in_str, align 8
  %258 = bitcast i8* %257 to i16*
  %arrayidx384 = getelementptr i16, i16* %258, i64 %256
  %259 = load i16, i16* %arrayidx384, align 2
  %conv385 = zext i16 %259 to i32
  br label %cond.end.389

cond.false.386:                                   ; preds = %cond.false.379
  %260 = load i64, i64* %i, align 8
  %inc387 = add i64 %260, 1
  store i64 %inc387, i64* %i, align 8
  %261 = load i8*, i8** %in_str, align 8
  %262 = bitcast i8* %261 to i32*
  %arrayidx388 = getelementptr i32, i32* %262, i64 %260
  %263 = load i32, i32* %arrayidx388, align 4
  br label %cond.end.389

cond.end.389:                                     ; preds = %cond.false.386, %cond.true.382
  %cond390 = phi i32 [ %conv385, %cond.true.382 ], [ %263, %cond.false.386 ]
  br label %cond.end.391

cond.end.391:                                     ; preds = %cond.end.389, %cond.true.375
  %cond392 = phi i32 [ %conv378, %cond.true.375 ], [ %cond390, %cond.end.389 ]
  store i32 %cond392, i32* %c, align 4
  %264 = load i32, i32* %c, align 4
  %cmp393 = icmp eq i32 %264, 10
  br i1 %cmp393, label %if.then.395, label %if.end.397

if.then.395:                                      ; preds = %cond.end.391
  %265 = load i32, i32* %seennl, align 4
  %or396 = or i32 %265, 2
  store i32 %or396, i32* %seennl, align 4
  br label %for.end

if.end.397:                                       ; preds = %cond.end.391
  %266 = load i64, i64* %i, align 8
  %267 = load i64, i64* %len, align 8
  %cmp398 = icmp sge i64 %266, %267
  br i1 %cmp398, label %if.then.400, label %if.end.401

if.then.400:                                      ; preds = %if.end.397
  br label %for.end

if.end.401:                                       ; preds = %if.end.397
  br label %for.cond

for.end:                                          ; preds = %if.then.400, %if.then.395
  br label %if.end.402

if.end.402:                                       ; preds = %for.end, %if.then.351
  br label %if.end.403

if.end.403:                                       ; preds = %if.end.402, %land.lhs.true.342, %if.then.339
  br label %if.end.680

if.else.404:                                      ; preds = %if.end.337
  %268 = load %struct.nldecoder_object*, %struct.nldecoder_object** %self, align 8
  %translate = getelementptr inbounds %struct.nldecoder_object, %struct.nldecoder_object* %268, i32 0, i32 3
  %bf.load405 = load i8, i8* %translate, align 8
  %bf.shl406 = shl i8 %bf.load405, 6
  %bf.ashr407 = ashr i8 %bf.shl406, 7
  %bf.cast408 = sext i8 %bf.ashr407 to i32
  %tobool409 = icmp ne i32 %bf.cast408, 0
  br i1 %tobool409, label %if.else.505, label %if.then.410

if.then.410:                                      ; preds = %if.else.404
  store i64 0, i64* %i411, align 8
  %269 = load i32, i32* %seennl, align 4
  %cmp412 = icmp eq i32 %269, 7
  br i1 %cmp412, label %if.then.414, label %if.end.415

if.then.414:                                      ; preds = %if.then.410
  br label %endscan

if.end.415:                                       ; preds = %if.then.410
  br label %for.cond.416

for.cond.416:                                     ; preds = %if.end.503, %if.end.415
  br label %while.cond.418

while.cond.418:                                   ; preds = %while.body.438, %for.cond.416
  %270 = load i32, i32* %kind294, align 4
  %cmp419 = icmp eq i32 %270, 1
  br i1 %cmp419, label %cond.true.421, label %cond.false.424

cond.true.421:                                    ; preds = %while.cond.418
  %271 = load i64, i64* %i411, align 8
  %272 = load i8*, i8** %in_str, align 8
  %arrayidx422 = getelementptr i8, i8* %272, i64 %271
  %273 = load i8, i8* %arrayidx422, align 1
  %conv423 = zext i8 %273 to i32
  br label %cond.end.434

cond.false.424:                                   ; preds = %while.cond.418
  %274 = load i32, i32* %kind294, align 4
  %cmp425 = icmp eq i32 %274, 2
  br i1 %cmp425, label %cond.true.427, label %cond.false.430

cond.true.427:                                    ; preds = %cond.false.424
  %275 = load i64, i64* %i411, align 8
  %276 = load i8*, i8** %in_str, align 8
  %277 = bitcast i8* %276 to i16*
  %arrayidx428 = getelementptr i16, i16* %277, i64 %275
  %278 = load i16, i16* %arrayidx428, align 2
  %conv429 = zext i16 %278 to i32
  br label %cond.end.432

cond.false.430:                                   ; preds = %cond.false.424
  %279 = load i64, i64* %i411, align 8
  %280 = load i8*, i8** %in_str, align 8
  %281 = bitcast i8* %280 to i32*
  %arrayidx431 = getelementptr i32, i32* %281, i64 %279
  %282 = load i32, i32* %arrayidx431, align 4
  br label %cond.end.432

cond.end.432:                                     ; preds = %cond.false.430, %cond.true.427
  %cond433 = phi i32 [ %conv429, %cond.true.427 ], [ %282, %cond.false.430 ]
  br label %cond.end.434

cond.end.434:                                     ; preds = %cond.end.432, %cond.true.421
  %cond435 = phi i32 [ %conv423, %cond.true.421 ], [ %cond433, %cond.end.432 ]
  %cmp436 = icmp ugt i32 %cond435, 13
  br i1 %cmp436, label %while.body.438, label %while.end.440

while.body.438:                                   ; preds = %cond.end.434
  %283 = load i64, i64* %i411, align 8
  %inc439 = add i64 %283, 1
  store i64 %inc439, i64* %i411, align 8
  br label %while.cond.418

while.end.440:                                    ; preds = %cond.end.434
  %284 = load i32, i32* %kind294, align 4
  %cmp441 = icmp eq i32 %284, 1
  br i1 %cmp441, label %cond.true.443, label %cond.false.447

cond.true.443:                                    ; preds = %while.end.440
  %285 = load i64, i64* %i411, align 8
  %inc444 = add i64 %285, 1
  store i64 %inc444, i64* %i411, align 8
  %286 = load i8*, i8** %in_str, align 8
  %arrayidx445 = getelementptr i8, i8* %286, i64 %285
  %287 = load i8, i8* %arrayidx445, align 1
  %conv446 = zext i8 %287 to i32
  br label %cond.end.459

cond.false.447:                                   ; preds = %while.end.440
  %288 = load i32, i32* %kind294, align 4
  %cmp448 = icmp eq i32 %288, 2
  br i1 %cmp448, label %cond.true.450, label %cond.false.454

cond.true.450:                                    ; preds = %cond.false.447
  %289 = load i64, i64* %i411, align 8
  %inc451 = add i64 %289, 1
  store i64 %inc451, i64* %i411, align 8
  %290 = load i8*, i8** %in_str, align 8
  %291 = bitcast i8* %290 to i16*
  %arrayidx452 = getelementptr i16, i16* %291, i64 %289
  %292 = load i16, i16* %arrayidx452, align 2
  %conv453 = zext i16 %292 to i32
  br label %cond.end.457

cond.false.454:                                   ; preds = %cond.false.447
  %293 = load i64, i64* %i411, align 8
  %inc455 = add i64 %293, 1
  store i64 %inc455, i64* %i411, align 8
  %294 = load i8*, i8** %in_str, align 8
  %295 = bitcast i8* %294 to i32*
  %arrayidx456 = getelementptr i32, i32* %295, i64 %293
  %296 = load i32, i32* %arrayidx456, align 4
  br label %cond.end.457

cond.end.457:                                     ; preds = %cond.false.454, %cond.true.450
  %cond458 = phi i32 [ %conv453, %cond.true.450 ], [ %296, %cond.false.454 ]
  br label %cond.end.459

cond.end.459:                                     ; preds = %cond.end.457, %cond.true.443
  %cond460 = phi i32 [ %conv446, %cond.true.443 ], [ %cond458, %cond.end.457 ]
  store i32 %cond460, i32* %c417, align 4
  %297 = load i32, i32* %c417, align 4
  %cmp461 = icmp eq i32 %297, 10
  br i1 %cmp461, label %if.then.463, label %if.else.465

if.then.463:                                      ; preds = %cond.end.459
  %298 = load i32, i32* %seennl, align 4
  %or464 = or i32 %298, 2
  store i32 %or464, i32* %seennl, align 4
  br label %if.end.495

if.else.465:                                      ; preds = %cond.end.459
  %299 = load i32, i32* %c417, align 4
  %cmp466 = icmp eq i32 %299, 13
  br i1 %cmp466, label %if.then.468, label %if.end.494

if.then.468:                                      ; preds = %if.else.465
  %300 = load i32, i32* %kind294, align 4
  %cmp469 = icmp eq i32 %300, 1
  br i1 %cmp469, label %cond.true.471, label %cond.false.474

cond.true.471:                                    ; preds = %if.then.468
  %301 = load i64, i64* %i411, align 8
  %302 = load i8*, i8** %in_str, align 8
  %arrayidx472 = getelementptr i8, i8* %302, i64 %301
  %303 = load i8, i8* %arrayidx472, align 1
  %conv473 = zext i8 %303 to i32
  br label %cond.end.484

cond.false.474:                                   ; preds = %if.then.468
  %304 = load i32, i32* %kind294, align 4
  %cmp475 = icmp eq i32 %304, 2
  br i1 %cmp475, label %cond.true.477, label %cond.false.480

cond.true.477:                                    ; preds = %cond.false.474
  %305 = load i64, i64* %i411, align 8
  %306 = load i8*, i8** %in_str, align 8
  %307 = bitcast i8* %306 to i16*
  %arrayidx478 = getelementptr i16, i16* %307, i64 %305
  %308 = load i16, i16* %arrayidx478, align 2
  %conv479 = zext i16 %308 to i32
  br label %cond.end.482

cond.false.480:                                   ; preds = %cond.false.474
  %309 = load i64, i64* %i411, align 8
  %310 = load i8*, i8** %in_str, align 8
  %311 = bitcast i8* %310 to i32*
  %arrayidx481 = getelementptr i32, i32* %311, i64 %309
  %312 = load i32, i32* %arrayidx481, align 4
  br label %cond.end.482

cond.end.482:                                     ; preds = %cond.false.480, %cond.true.477
  %cond483 = phi i32 [ %conv479, %cond.true.477 ], [ %312, %cond.false.480 ]
  br label %cond.end.484

cond.end.484:                                     ; preds = %cond.end.482, %cond.true.471
  %cond485 = phi i32 [ %conv473, %cond.true.471 ], [ %cond483, %cond.end.482 ]
  %cmp486 = icmp eq i32 %cond485, 10
  br i1 %cmp486, label %if.then.488, label %if.else.491

if.then.488:                                      ; preds = %cond.end.484
  %313 = load i32, i32* %seennl, align 4
  %or489 = or i32 %313, 4
  store i32 %or489, i32* %seennl, align 4
  %314 = load i64, i64* %i411, align 8
  %inc490 = add i64 %314, 1
  store i64 %inc490, i64* %i411, align 8
  br label %if.end.493

if.else.491:                                      ; preds = %cond.end.484
  %315 = load i32, i32* %seennl, align 4
  %or492 = or i32 %315, 1
  store i32 %or492, i32* %seennl, align 4
  br label %if.end.493

if.end.493:                                       ; preds = %if.else.491, %if.then.488
  br label %if.end.494

if.end.494:                                       ; preds = %if.end.493, %if.else.465
  br label %if.end.495

if.end.495:                                       ; preds = %if.end.494, %if.then.463
  %316 = load i64, i64* %i411, align 8
  %317 = load i64, i64* %len, align 8
  %cmp496 = icmp sge i64 %316, %317
  br i1 %cmp496, label %if.then.498, label %if.end.499

if.then.498:                                      ; preds = %if.end.495
  br label %for.end.504

if.end.499:                                       ; preds = %if.end.495
  %318 = load i32, i32* %seennl, align 4
  %cmp500 = icmp eq i32 %318, 7
  br i1 %cmp500, label %if.then.502, label %if.end.503

if.then.502:                                      ; preds = %if.end.499
  br label %for.end.504

if.end.503:                                       ; preds = %if.end.499
  br label %for.cond.416

for.end.504:                                      ; preds = %if.then.502, %if.then.498
  br label %endscan

endscan:                                          ; preds = %for.end.504, %if.then.414
  br label %if.end.679

if.else.505:                                      ; preds = %if.else.404
  %319 = load %struct._object*, %struct._object** %output, align 8
  %320 = bitcast %struct._object* %319 to %struct.PyASCIIObject*
  %state507 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %320, i32 0, i32 3
  %321 = bitcast %struct.anon* %state507 to i32*
  %bf.load508 = load i32, i32* %321, align 4
  %bf.lshr509 = lshr i32 %bf.load508, 2
  %bf.clear510 = and i32 %bf.lshr509, 7
  store i32 %bf.clear510, i32* %kind506, align 4
  %322 = load %struct._object*, %struct._object** %output, align 8
  %323 = bitcast %struct._object* %322 to %struct.PyASCIIObject*
  %state512 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %323, i32 0, i32 3
  %324 = bitcast %struct.anon* %state512 to i32*
  %bf.load513 = load i32, i32* %324, align 4
  %bf.lshr514 = lshr i32 %bf.load513, 5
  %bf.clear515 = and i32 %bf.lshr514, 1
  %tobool516 = icmp ne i32 %bf.clear515, 0
  br i1 %tobool516, label %cond.true.517, label %cond.false.529

cond.true.517:                                    ; preds = %if.else.505
  %325 = load %struct._object*, %struct._object** %output, align 8
  %326 = bitcast %struct._object* %325 to %struct.PyASCIIObject*
  %state518 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %326, i32 0, i32 3
  %327 = bitcast %struct.anon* %state518 to i32*
  %bf.load519 = load i32, i32* %327, align 4
  %bf.lshr520 = lshr i32 %bf.load519, 6
  %bf.clear521 = and i32 %bf.lshr520, 1
  %tobool522 = icmp ne i32 %bf.clear521, 0
  br i1 %tobool522, label %cond.true.523, label %cond.false.525

cond.true.523:                                    ; preds = %cond.true.517
  %328 = load %struct._object*, %struct._object** %output, align 8
  %329 = bitcast %struct._object* %328 to %struct.PyASCIIObject*
  %add.ptr524 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %329, i64 1
  %330 = bitcast %struct.PyASCIIObject* %add.ptr524 to i8*
  br label %cond.end.527

cond.false.525:                                   ; preds = %cond.true.517
  %331 = load %struct._object*, %struct._object** %output, align 8
  %332 = bitcast %struct._object* %331 to %struct.PyCompactUnicodeObject*
  %add.ptr526 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %332, i64 1
  %333 = bitcast %struct.PyCompactUnicodeObject* %add.ptr526 to i8*
  br label %cond.end.527

cond.end.527:                                     ; preds = %cond.false.525, %cond.true.523
  %cond528 = phi i8* [ %330, %cond.true.523 ], [ %333, %cond.false.525 ]
  br label %cond.end.532

cond.false.529:                                   ; preds = %if.else.505
  %334 = load %struct._object*, %struct._object** %output, align 8
  %335 = bitcast %struct._object* %334 to %struct.PyUnicodeObject*
  %data530 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %335, i32 0, i32 1
  %any531 = bitcast %union.anon* %data530 to i8**
  %336 = load i8*, i8** %any531, align 8
  br label %cond.end.532

cond.end.532:                                     ; preds = %cond.false.529, %cond.end.527
  %cond533 = phi i8* [ %cond528, %cond.end.527 ], [ %336, %cond.false.529 ]
  store i8* %cond533, i8** %in_str511, align 8
  %337 = load i32, i32* %kind506, align 4
  %conv535 = sext i32 %337 to i64
  %338 = load i64, i64* %len, align 8
  %mul536 = mul i64 %conv535, %338
  %call537 = call i8* @PyMem_Malloc(i64 %mul536)
  store i8* %call537, i8** %translated, align 8
  %339 = load i8*, i8** %translated, align 8
  %cmp538 = icmp eq i8* %339, null
  br i1 %cmp538, label %if.then.540, label %if.end.542

if.then.540:                                      ; preds = %cond.end.532
  %call541 = call %struct._object* @PyErr_NoMemory()
  br label %error

if.end.542:                                       ; preds = %cond.end.532
  store i64 0, i64* %out534, align 8
  store i64 0, i64* %in, align 8
  br label %for.cond.543

for.cond.543:                                     ; preds = %do.end.661, %do.end.642, %do.end.600, %if.end.542
  br label %while.cond.545

while.cond.545:                                   ; preds = %do.end.582, %for.cond.543
  %340 = load i32, i32* %kind506, align 4
  %cmp546 = icmp eq i32 %340, 1
  br i1 %cmp546, label %cond.true.548, label %cond.false.552

cond.true.548:                                    ; preds = %while.cond.545
  %341 = load i64, i64* %in, align 8
  %inc549 = add i64 %341, 1
  store i64 %inc549, i64* %in, align 8
  %342 = load i8*, i8** %in_str511, align 8
  %arrayidx550 = getelementptr i8, i8* %342, i64 %341
  %343 = load i8, i8* %arrayidx550, align 1
  %conv551 = zext i8 %343 to i32
  br label %cond.end.564

cond.false.552:                                   ; preds = %while.cond.545
  %344 = load i32, i32* %kind506, align 4
  %cmp553 = icmp eq i32 %344, 2
  br i1 %cmp553, label %cond.true.555, label %cond.false.559

cond.true.555:                                    ; preds = %cond.false.552
  %345 = load i64, i64* %in, align 8
  %inc556 = add i64 %345, 1
  store i64 %inc556, i64* %in, align 8
  %346 = load i8*, i8** %in_str511, align 8
  %347 = bitcast i8* %346 to i16*
  %arrayidx557 = getelementptr i16, i16* %347, i64 %345
  %348 = load i16, i16* %arrayidx557, align 2
  %conv558 = zext i16 %348 to i32
  br label %cond.end.562

cond.false.559:                                   ; preds = %cond.false.552
  %349 = load i64, i64* %in, align 8
  %inc560 = add i64 %349, 1
  store i64 %inc560, i64* %in, align 8
  %350 = load i8*, i8** %in_str511, align 8
  %351 = bitcast i8* %350 to i32*
  %arrayidx561 = getelementptr i32, i32* %351, i64 %349
  %352 = load i32, i32* %arrayidx561, align 4
  br label %cond.end.562

cond.end.562:                                     ; preds = %cond.false.559, %cond.true.555
  %cond563 = phi i32 [ %conv558, %cond.true.555 ], [ %352, %cond.false.559 ]
  br label %cond.end.564

cond.end.564:                                     ; preds = %cond.end.562, %cond.true.548
  %cond565 = phi i32 [ %conv551, %cond.true.548 ], [ %cond563, %cond.end.562 ]
  store i32 %cond565, i32* %c544, align 4
  %cmp566 = icmp ugt i32 %cond565, 13
  br i1 %cmp566, label %while.body.568, label %while.end.583

while.body.568:                                   ; preds = %cond.end.564
  br label %do.body.569

do.body.569:                                      ; preds = %while.body.568
  %353 = load i32, i32* %kind506, align 4
  switch i32 %353, label %sw.default.578 [
    i32 1, label %sw.bb.570
    i32 2, label %sw.bb.574
  ]

sw.bb.570:                                        ; preds = %do.body.569
  %354 = load i32, i32* %c544, align 4
  %conv571 = trunc i32 %354 to i8
  %355 = load i64, i64* %out534, align 8
  %inc572 = add i64 %355, 1
  store i64 %inc572, i64* %out534, align 8
  %356 = load i8*, i8** %translated, align 8
  %arrayidx573 = getelementptr i8, i8* %356, i64 %355
  store i8 %conv571, i8* %arrayidx573, align 1
  br label %sw.epilog.581

sw.bb.574:                                        ; preds = %do.body.569
  %357 = load i32, i32* %c544, align 4
  %conv575 = trunc i32 %357 to i16
  %358 = load i64, i64* %out534, align 8
  %inc576 = add i64 %358, 1
  store i64 %inc576, i64* %out534, align 8
  %359 = load i8*, i8** %translated, align 8
  %360 = bitcast i8* %359 to i16*
  %arrayidx577 = getelementptr i16, i16* %360, i64 %358
  store i16 %conv575, i16* %arrayidx577, align 2
  br label %sw.epilog.581

sw.default.578:                                   ; preds = %do.body.569
  %361 = load i32, i32* %c544, align 4
  %362 = load i64, i64* %out534, align 8
  %inc579 = add i64 %362, 1
  store i64 %inc579, i64* %out534, align 8
  %363 = load i8*, i8** %translated, align 8
  %364 = bitcast i8* %363 to i32*
  %arrayidx580 = getelementptr i32, i32* %364, i64 %362
  store i32 %361, i32* %arrayidx580, align 4
  br label %sw.epilog.581

sw.epilog.581:                                    ; preds = %sw.default.578, %sw.bb.574, %sw.bb.570
  br label %do.end.582

do.end.582:                                       ; preds = %sw.epilog.581
  br label %while.cond.545

while.end.583:                                    ; preds = %cond.end.564
  %365 = load i32, i32* %c544, align 4
  %cmp584 = icmp eq i32 %365, 10
  br i1 %cmp584, label %if.then.586, label %if.end.602

if.then.586:                                      ; preds = %while.end.583
  br label %do.body.587

do.body.587:                                      ; preds = %if.then.586
  %366 = load i32, i32* %kind506, align 4
  switch i32 %366, label %sw.default.596 [
    i32 1, label %sw.bb.588
    i32 2, label %sw.bb.592
  ]

sw.bb.588:                                        ; preds = %do.body.587
  %367 = load i32, i32* %c544, align 4
  %conv589 = trunc i32 %367 to i8
  %368 = load i64, i64* %out534, align 8
  %inc590 = add i64 %368, 1
  store i64 %inc590, i64* %out534, align 8
  %369 = load i8*, i8** %translated, align 8
  %arrayidx591 = getelementptr i8, i8* %369, i64 %368
  store i8 %conv589, i8* %arrayidx591, align 1
  br label %sw.epilog.599

sw.bb.592:                                        ; preds = %do.body.587
  %370 = load i32, i32* %c544, align 4
  %conv593 = trunc i32 %370 to i16
  %371 = load i64, i64* %out534, align 8
  %inc594 = add i64 %371, 1
  store i64 %inc594, i64* %out534, align 8
  %372 = load i8*, i8** %translated, align 8
  %373 = bitcast i8* %372 to i16*
  %arrayidx595 = getelementptr i16, i16* %373, i64 %371
  store i16 %conv593, i16* %arrayidx595, align 2
  br label %sw.epilog.599

sw.default.596:                                   ; preds = %do.body.587
  %374 = load i32, i32* %c544, align 4
  %375 = load i64, i64* %out534, align 8
  %inc597 = add i64 %375, 1
  store i64 %inc597, i64* %out534, align 8
  %376 = load i8*, i8** %translated, align 8
  %377 = bitcast i8* %376 to i32*
  %arrayidx598 = getelementptr i32, i32* %377, i64 %375
  store i32 %374, i32* %arrayidx598, align 4
  br label %sw.epilog.599

sw.epilog.599:                                    ; preds = %sw.default.596, %sw.bb.592, %sw.bb.588
  br label %do.end.600

do.end.600:                                       ; preds = %sw.epilog.599
  %378 = load i32, i32* %seennl, align 4
  %or601 = or i32 %378, 2
  store i32 %or601, i32* %seennl, align 4
  br label %for.cond.543

if.end.602:                                       ; preds = %while.end.583
  %379 = load i32, i32* %c544, align 4
  %cmp603 = icmp eq i32 %379, 13
  br i1 %cmp603, label %if.then.605, label %if.end.643

if.then.605:                                      ; preds = %if.end.602
  %380 = load i32, i32* %kind506, align 4
  %cmp606 = icmp eq i32 %380, 1
  br i1 %cmp606, label %cond.true.608, label %cond.false.611

cond.true.608:                                    ; preds = %if.then.605
  %381 = load i64, i64* %in, align 8
  %382 = load i8*, i8** %in_str511, align 8
  %arrayidx609 = getelementptr i8, i8* %382, i64 %381
  %383 = load i8, i8* %arrayidx609, align 1
  %conv610 = zext i8 %383 to i32
  br label %cond.end.621

cond.false.611:                                   ; preds = %if.then.605
  %384 = load i32, i32* %kind506, align 4
  %cmp612 = icmp eq i32 %384, 2
  br i1 %cmp612, label %cond.true.614, label %cond.false.617

cond.true.614:                                    ; preds = %cond.false.611
  %385 = load i64, i64* %in, align 8
  %386 = load i8*, i8** %in_str511, align 8
  %387 = bitcast i8* %386 to i16*
  %arrayidx615 = getelementptr i16, i16* %387, i64 %385
  %388 = load i16, i16* %arrayidx615, align 2
  %conv616 = zext i16 %388 to i32
  br label %cond.end.619

cond.false.617:                                   ; preds = %cond.false.611
  %389 = load i64, i64* %in, align 8
  %390 = load i8*, i8** %in_str511, align 8
  %391 = bitcast i8* %390 to i32*
  %arrayidx618 = getelementptr i32, i32* %391, i64 %389
  %392 = load i32, i32* %arrayidx618, align 4
  br label %cond.end.619

cond.end.619:                                     ; preds = %cond.false.617, %cond.true.614
  %cond620 = phi i32 [ %conv616, %cond.true.614 ], [ %392, %cond.false.617 ]
  br label %cond.end.621

cond.end.621:                                     ; preds = %cond.end.619, %cond.true.608
  %cond622 = phi i32 [ %conv610, %cond.true.608 ], [ %cond620, %cond.end.619 ]
  %cmp623 = icmp eq i32 %cond622, 10
  br i1 %cmp623, label %if.then.625, label %if.else.628

if.then.625:                                      ; preds = %cond.end.621
  %393 = load i64, i64* %in, align 8
  %inc626 = add i64 %393, 1
  store i64 %inc626, i64* %in, align 8
  %394 = load i32, i32* %seennl, align 4
  %or627 = or i32 %394, 4
  store i32 %or627, i32* %seennl, align 4
  br label %if.end.630

if.else.628:                                      ; preds = %cond.end.621
  %395 = load i32, i32* %seennl, align 4
  %or629 = or i32 %395, 1
  store i32 %or629, i32* %seennl, align 4
  br label %if.end.630

if.end.630:                                       ; preds = %if.else.628, %if.then.625
  br label %do.body.631

do.body.631:                                      ; preds = %if.end.630
  %396 = load i32, i32* %kind506, align 4
  switch i32 %396, label %sw.default.638 [
    i32 1, label %sw.bb.632
    i32 2, label %sw.bb.635
  ]

sw.bb.632:                                        ; preds = %do.body.631
  %397 = load i64, i64* %out534, align 8
  %inc633 = add i64 %397, 1
  store i64 %inc633, i64* %out534, align 8
  %398 = load i8*, i8** %translated, align 8
  %arrayidx634 = getelementptr i8, i8* %398, i64 %397
  store i8 10, i8* %arrayidx634, align 1
  br label %sw.epilog.641

sw.bb.635:                                        ; preds = %do.body.631
  %399 = load i64, i64* %out534, align 8
  %inc636 = add i64 %399, 1
  store i64 %inc636, i64* %out534, align 8
  %400 = load i8*, i8** %translated, align 8
  %401 = bitcast i8* %400 to i16*
  %arrayidx637 = getelementptr i16, i16* %401, i64 %399
  store i16 10, i16* %arrayidx637, align 2
  br label %sw.epilog.641

sw.default.638:                                   ; preds = %do.body.631
  %402 = load i64, i64* %out534, align 8
  %inc639 = add i64 %402, 1
  store i64 %inc639, i64* %out534, align 8
  %403 = load i8*, i8** %translated, align 8
  %404 = bitcast i8* %403 to i32*
  %arrayidx640 = getelementptr i32, i32* %404, i64 %402
  store i32 10, i32* %arrayidx640, align 4
  br label %sw.epilog.641

sw.epilog.641:                                    ; preds = %sw.default.638, %sw.bb.635, %sw.bb.632
  br label %do.end.642

do.end.642:                                       ; preds = %sw.epilog.641
  br label %for.cond.543

if.end.643:                                       ; preds = %if.end.602
  %405 = load i64, i64* %in, align 8
  %406 = load i64, i64* %len, align 8
  %cmp644 = icmp sgt i64 %405, %406
  br i1 %cmp644, label %if.then.646, label %if.end.647

if.then.646:                                      ; preds = %if.end.643
  br label %for.end.662

if.end.647:                                       ; preds = %if.end.643
  br label %do.body.648

do.body.648:                                      ; preds = %if.end.647
  %407 = load i32, i32* %kind506, align 4
  switch i32 %407, label %sw.default.657 [
    i32 1, label %sw.bb.649
    i32 2, label %sw.bb.653
  ]

sw.bb.649:                                        ; preds = %do.body.648
  %408 = load i32, i32* %c544, align 4
  %conv650 = trunc i32 %408 to i8
  %409 = load i64, i64* %out534, align 8
  %inc651 = add i64 %409, 1
  store i64 %inc651, i64* %out534, align 8
  %410 = load i8*, i8** %translated, align 8
  %arrayidx652 = getelementptr i8, i8* %410, i64 %409
  store i8 %conv650, i8* %arrayidx652, align 1
  br label %sw.epilog.660

sw.bb.653:                                        ; preds = %do.body.648
  %411 = load i32, i32* %c544, align 4
  %conv654 = trunc i32 %411 to i16
  %412 = load i64, i64* %out534, align 8
  %inc655 = add i64 %412, 1
  store i64 %inc655, i64* %out534, align 8
  %413 = load i8*, i8** %translated, align 8
  %414 = bitcast i8* %413 to i16*
  %arrayidx656 = getelementptr i16, i16* %414, i64 %412
  store i16 %conv654, i16* %arrayidx656, align 2
  br label %sw.epilog.660

sw.default.657:                                   ; preds = %do.body.648
  %415 = load i32, i32* %c544, align 4
  %416 = load i64, i64* %out534, align 8
  %inc658 = add i64 %416, 1
  store i64 %inc658, i64* %out534, align 8
  %417 = load i8*, i8** %translated, align 8
  %418 = bitcast i8* %417 to i32*
  %arrayidx659 = getelementptr i32, i32* %418, i64 %416
  store i32 %415, i32* %arrayidx659, align 4
  br label %sw.epilog.660

sw.epilog.660:                                    ; preds = %sw.default.657, %sw.bb.653, %sw.bb.649
  br label %do.end.661

do.end.661:                                       ; preds = %sw.epilog.660
  br label %for.cond.543

for.end.662:                                      ; preds = %if.then.646
  br label %do.body.663

do.body.663:                                      ; preds = %for.end.662
  %419 = load %struct._object*, %struct._object** %output, align 8
  store %struct._object* %419, %struct._object** %_py_decref_tmp664, align 8
  %420 = load %struct._object*, %struct._object** %_py_decref_tmp664, align 8
  %ob_refcnt665 = getelementptr inbounds %struct._object, %struct._object* %420, i32 0, i32 0
  %421 = load i64, i64* %ob_refcnt665, align 8
  %dec666 = add i64 %421, -1
  store i64 %dec666, i64* %ob_refcnt665, align 8
  %cmp667 = icmp ne i64 %dec666, 0
  br i1 %cmp667, label %if.then.669, label %if.else.670

if.then.669:                                      ; preds = %do.body.663
  br label %if.end.673

if.else.670:                                      ; preds = %do.body.663
  %422 = load %struct._object*, %struct._object** %_py_decref_tmp664, align 8
  %ob_type671 = getelementptr inbounds %struct._object, %struct._object* %422, i32 0, i32 1
  %423 = load %struct._typeobject*, %struct._typeobject** %ob_type671, align 8
  %tp_dealloc672 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %423, i32 0, i32 4
  %424 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc672, align 8
  %425 = load %struct._object*, %struct._object** %_py_decref_tmp664, align 8
  call void %424(%struct._object* %425)
  br label %if.end.673

if.end.673:                                       ; preds = %if.else.670, %if.then.669
  br label %do.end.674

do.end.674:                                       ; preds = %if.end.673
  %426 = load i32, i32* %kind506, align 4
  %427 = load i8*, i8** %translated, align 8
  %428 = load i64, i64* %out534, align 8
  %call675 = call %struct._object* @PyUnicode_FromKindAndData(i32 %426, i8* %427, i64 %428)
  store %struct._object* %call675, %struct._object** %output, align 8
  %429 = load i8*, i8** %translated, align 8
  call void @PyMem_Free(i8* %429)
  %430 = load %struct._object*, %struct._object** %output, align 8
  %tobool676 = icmp ne %struct._object* %430, null
  br i1 %tobool676, label %if.end.678, label %if.then.677

if.then.677:                                      ; preds = %do.end.674
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.678:                                       ; preds = %do.end.674
  br label %if.end.679

if.end.679:                                       ; preds = %if.end.678, %endscan
  br label %if.end.680

if.end.680:                                       ; preds = %if.end.679, %if.end.403
  %431 = load i32, i32* %seennl, align 4
  %432 = load %struct.nldecoder_object*, %struct.nldecoder_object** %self, align 8
  %seennl681 = getelementptr inbounds %struct.nldecoder_object, %struct.nldecoder_object* %432, i32 0, i32 3
  %bf.load682 = load i8, i8* %seennl681, align 8
  %bf.lshr683 = lshr i8 %bf.load682, 2
  %bf.clear684 = and i8 %bf.lshr683, 7
  %bf.cast685 = zext i8 %bf.clear684 to i32
  %or686 = or i32 %bf.cast685, %431
  %433 = trunc i32 %or686 to i8
  %bf.load687 = load i8, i8* %seennl681, align 8
  %bf.value = and i8 %433, 7
  %bf.shl688 = shl i8 %bf.value, 2
  %bf.clear689 = and i8 %bf.load687, -29
  %bf.set690 = or i8 %bf.clear689, %bf.shl688
  store i8 %bf.set690, i8* %seennl681, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  %434 = load %struct._object*, %struct._object** %output, align 8
  store %struct._object* %434, %struct._object** %retval
  br label %return

error:                                            ; preds = %if.then.540, %if.then.270, %if.then.34
  br label %do.body.691

do.body.691:                                      ; preds = %error
  %435 = load %struct._object*, %struct._object** %output, align 8
  store %struct._object* %435, %struct._object** %_py_decref_tmp692, align 8
  %436 = load %struct._object*, %struct._object** %_py_decref_tmp692, align 8
  %ob_refcnt693 = getelementptr inbounds %struct._object, %struct._object* %436, i32 0, i32 0
  %437 = load i64, i64* %ob_refcnt693, align 8
  %dec694 = add i64 %437, -1
  store i64 %dec694, i64* %ob_refcnt693, align 8
  %cmp695 = icmp ne i64 %dec694, 0
  br i1 %cmp695, label %if.then.697, label %if.else.698

if.then.697:                                      ; preds = %do.body.691
  br label %if.end.701

if.else.698:                                      ; preds = %do.body.691
  %438 = load %struct._object*, %struct._object** %_py_decref_tmp692, align 8
  %ob_type699 = getelementptr inbounds %struct._object, %struct._object* %438, i32 0, i32 1
  %439 = load %struct._typeobject*, %struct._typeobject** %ob_type699, align 8
  %tp_dealloc700 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %439, i32 0, i32 4
  %440 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc700, align 8
  %441 = load %struct._object*, %struct._object** %_py_decref_tmp692, align 8
  call void %440(%struct._object* %441)
  br label %if.end.701

if.end.701:                                       ; preds = %if.else.698, %if.then.697
  br label %do.end.702

do.end.702:                                       ; preds = %if.end.701
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.702, %if.end.680, %if.then.677, %if.then.324, %if.then.8, %if.then
  %442 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %442
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare %struct._object* @PyObject_CallMethodObjArgs(%struct._object*, %struct._object*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @check_decoded(%struct._object* %decoded) #0 {
entry:
  %retval = alloca i32, align 4
  %decoded.addr = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  store %struct._object* %decoded, %struct._object** %decoded.addr, align 8
  %0 = load %struct._object*, %struct._object** %decoded.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %decoded.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 268435456
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.end.8, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %5 = load %struct._object*, %struct._object** %decoded.addr, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 1
  %7 = load i8*, i8** %tp_name, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i32 0, i32 0), i8* %7)
  br label %do.body

do.body:                                          ; preds = %if.then.2
  %8 = load %struct._object*, %struct._object** %decoded.addr, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.7
  store i32 -1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %15 = load %struct._object*, %struct._object** %decoded.addr, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %16, i32 0, i32 3
  %17 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %17, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.8
  br label %cond.end

cond.false:                                       ; preds = %if.end.8
  %18 = load %struct._object*, %struct._object** %decoded.addr, align 8
  %call9 = call i32 @_PyUnicode_Ready(%struct._object* %18)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call9, %cond.false ]
  %cmp10 = icmp slt i32 %cond, 0
  br i1 %cmp10, label %if.then.11, label %if.end.23

if.then.11:                                       ; preds = %cond.end
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.11
  %19 = load %struct._object*, %struct._object** %decoded.addr, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp13, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %21, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.12
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %24(%struct._object* %25)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  store i32 -1, i32* %retval
  br label %return

if.end.23:                                        ; preds = %cond.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.23, %do.end.22, %do.end, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare %struct._object* @PyUnicode_New(i64, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare %struct._object* @PyUnicode_Substring(%struct._object*, i64, i64) #1

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #3

declare i8* @PyMem_Malloc(i64) #1

declare %struct._object* @PyErr_NoMemory() #1

declare %struct._object* @PyUnicode_FromKindAndData(i32, i8*, i64) #1

declare void @PyMem_Free(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @incrementalnewlinedecoder_dealloc(%struct.nldecoder_object* %self) #0 {
entry:
  %self.addr = alloca %struct.nldecoder_object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp8 = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  store %struct.nldecoder_object* %self, %struct.nldecoder_object** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.nldecoder_object*, %struct.nldecoder_object** %self.addr, align 8
  %decoder = getelementptr inbounds %struct.nldecoder_object, %struct.nldecoder_object* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %decoder, align 8
  store %struct._object* %1, %struct._object** %_py_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %3 = load %struct.nldecoder_object*, %struct.nldecoder_object** %self.addr, align 8
  %decoder1 = getelementptr inbounds %struct.nldecoder_object, %struct.nldecoder_object* %3, i32 0, i32 1
  store %struct._object* null, %struct._object** %decoder1, align 8
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
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %11 = load %struct.nldecoder_object*, %struct.nldecoder_object** %self.addr, align 8
  %errors = getelementptr inbounds %struct.nldecoder_object, %struct.nldecoder_object* %11, i32 0, i32 2
  %12 = load %struct._object*, %struct._object** %errors, align 8
  store %struct._object* %12, %struct._object** %_py_tmp8, align 8
  %13 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  %cmp9 = icmp ne %struct._object* %13, null
  br i1 %cmp9, label %if.then.10, label %if.end.23

if.then.10:                                       ; preds = %do.body.7
  %14 = load %struct.nldecoder_object*, %struct.nldecoder_object** %self.addr, align 8
  %errors11 = getelementptr inbounds %struct.nldecoder_object, %struct.nldecoder_object* %14, i32 0, i32 2
  store %struct._object* null, %struct._object** %errors11, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.10
  %15 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp13, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %17, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.12
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %20(%struct._object* %21)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %if.end.23

if.end.23:                                        ; preds = %do.end.22, %do.body.7
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %22 = load %struct.nldecoder_object*, %struct.nldecoder_object** %self.addr, align 8
  %23 = bitcast %struct.nldecoder_object* %22 to %struct._object*
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 38
  %25 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %26 = load %struct.nldecoder_object*, %struct.nldecoder_object** %self.addr, align 8
  %27 = bitcast %struct.nldecoder_object* %26 to %struct._object*
  %28 = bitcast %struct._object* %27 to i8*
  call void %25(i8* %28)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @incrementalnewlinedecoder_init(%struct.nldecoder_object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.nldecoder_object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %decoder = alloca %struct._object*, align 8
  %translate = alloca i32, align 4
  %errors = alloca %struct._object*, align 8
  %kwlist = alloca [4 x i8*], align 16
  store %struct.nldecoder_object* %self, %struct.nldecoder_object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* null, %struct._object** %errors, align 8
  %0 = bitcast [4 x i8*]* %kwlist to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([4 x i8*]* @incrementalnewlinedecoder_init.kwlist to i8*), i64 32, i32 16, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %2 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %arraydecay = getelementptr inbounds [4 x i8*], [4 x i8*]* %kwlist, i32 0, i32 0
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %1, %struct._object* %2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i32 0, i32 0), i8** %arraydecay, %struct._object** %decoder, i32* %translate, %struct._object** %errors)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %decoder, align 8
  %4 = load %struct.nldecoder_object*, %struct.nldecoder_object** %self.addr, align 8
  %decoder1 = getelementptr inbounds %struct.nldecoder_object, %struct.nldecoder_object* %4, i32 0, i32 1
  store %struct._object* %3, %struct._object** %decoder1, align 8
  %5 = load %struct._object*, %struct._object** %decoder, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %7 = load %struct._object*, %struct._object** %errors, align 8
  %cmp = icmp eq %struct._object* %7, null
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0))
  %8 = load %struct.nldecoder_object*, %struct.nldecoder_object** %self.addr, align 8
  %errors4 = getelementptr inbounds %struct.nldecoder_object, %struct.nldecoder_object* %8, i32 0, i32 2
  store %struct._object* %call3, %struct._object** %errors4, align 8
  %9 = load %struct.nldecoder_object*, %struct.nldecoder_object** %self.addr, align 8
  %errors5 = getelementptr inbounds %struct.nldecoder_object, %struct.nldecoder_object* %9, i32 0, i32 2
  %10 = load %struct._object*, %struct._object** %errors5, align 8
  %cmp6 = icmp eq %struct._object* %10, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.2
  store i32 -1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.then.2
  br label %if.end.12

if.else:                                          ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %errors, align 8
  %ob_refcnt9 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt9, align 8
  %inc10 = add i64 %12, 1
  store i64 %inc10, i64* %ob_refcnt9, align 8
  %13 = load %struct._object*, %struct._object** %errors, align 8
  %14 = load %struct.nldecoder_object*, %struct.nldecoder_object** %self.addr, align 8
  %errors11 = getelementptr inbounds %struct.nldecoder_object, %struct.nldecoder_object* %14, i32 0, i32 2
  store %struct._object* %13, %struct._object** %errors11, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.end.8
  %15 = load i32, i32* %translate, align 4
  %16 = load %struct.nldecoder_object*, %struct.nldecoder_object** %self.addr, align 8
  %translate13 = getelementptr inbounds %struct.nldecoder_object, %struct.nldecoder_object* %16, i32 0, i32 3
  %17 = trunc i32 %15 to i8
  %bf.load = load i8, i8* %translate13, align 8
  %bf.value = and i8 %17, 1
  %bf.shl = shl i8 %bf.value, 1
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, i8* %translate13, align 8
  %bf.result.shl = shl i8 %bf.value, 7
  %bf.result.ashr = ashr i8 %bf.result.shl, 7
  %bf.result.cast = sext i8 %bf.result.ashr to i32
  %18 = load %struct.nldecoder_object*, %struct.nldecoder_object** %self.addr, align 8
  %seennl = getelementptr inbounds %struct.nldecoder_object, %struct.nldecoder_object* %18, i32 0, i32 3
  %bf.load14 = load i8, i8* %seennl, align 8
  %bf.clear15 = and i8 %bf.load14, -29
  store i8 %bf.clear15, i8* %seennl, align 8
  %19 = load %struct.nldecoder_object*, %struct.nldecoder_object** %self.addr, align 8
  %pendingcr = getelementptr inbounds %struct.nldecoder_object, %struct.nldecoder_object* %19, i32 0, i32 3
  %bf.load16 = load i8, i8* %pendingcr, align 8
  %bf.clear17 = and i8 %bf.load16, -2
  store i8 %bf.clear17, i8* %pendingcr, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.7, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare %struct._object* @PyType_GenericNew(%struct._typeobject*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define i64 @_PyIO_find_line_ending(i32 %translated, i32 %universal, %struct._object* %readnl, i32 %kind, i8* %start, i8* %end, i64* %consumed) #0 {
entry:
  %retval = alloca i64, align 8
  %translated.addr = alloca i32, align 4
  %universal.addr = alloca i32, align 4
  %readnl.addr = alloca %struct._object*, align 8
  %kind.addr = alloca i32, align 4
  %start.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %consumed.addr = alloca i64*, align 8
  %len = alloca i64, align 8
  %pos = alloca i8*, align 8
  %s = alloca i8*, align 8
  %ch = alloca i32, align 4
  %readnl_len = alloca i64, align 8
  %nl = alloca i8*, align 8
  %pos112 = alloca i8*, align 8
  %s127 = alloca i8*, align 8
  %e = alloca i8*, align 8
  %pos130 = alloca i8*, align 8
  %i = alloca i64, align 8
  %pos139 = alloca i8*, align 8
  store i32 %translated, i32* %translated.addr, align 4
  store i32 %universal, i32* %universal.addr, align 4
  store %struct._object* %readnl, %struct._object** %readnl.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store i8* %start, i8** %start.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i64* %consumed, i64** %consumed.addr, align 8
  %0 = load i8*, i8** %end.addr, align 8
  %1 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %2 = load i32, i32* %kind.addr, align 4
  %conv = sext i32 %2 to i64
  %div = sdiv i64 %sub.ptr.sub, %conv
  store i64 %div, i64* %len, align 8
  %3 = load i32, i32* %translated.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else.8

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %kind.addr, align 4
  %5 = load i8*, i8** %start.addr, align 8
  %6 = load i8*, i8** %end.addr, align 8
  %call = call i8* @find_control_char(i32 %4, i8* %5, i8* %6, i32 10)
  store i8* %call, i8** %pos, align 8
  %7 = load i8*, i8** %pos, align 8
  %cmp = icmp ne i8* %7, null
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %8 = load i8*, i8** %pos, align 8
  %9 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast3 = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast4 = ptrtoint i8* %9 to i64
  %sub.ptr.sub5 = sub i64 %sub.ptr.lhs.cast3, %sub.ptr.rhs.cast4
  %10 = load i32, i32* %kind.addr, align 4
  %conv6 = sext i32 %10 to i64
  %div7 = sdiv i64 %sub.ptr.sub5, %conv6
  %add = add i64 %div7, 1
  store i64 %add, i64* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %11 = load i64, i64* %len, align 8
  %12 = load i64*, i64** %consumed.addr, align 8
  store i64 %11, i64* %12, align 8
  store i64 -1, i64* %retval
  br label %return

if.else.8:                                        ; preds = %entry
  %13 = load i32, i32* %universal.addr, align 4
  %tobool9 = icmp ne i32 %13, 0
  br i1 %tobool9, label %if.then.10, label %if.else.92

if.then.10:                                       ; preds = %if.else.8
  %14 = load i8*, i8** %start.addr, align 8
  store i8* %14, i8** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.91, %if.then.10
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %15 = load i32, i32* %kind.addr, align 4
  %cmp11 = icmp eq i32 %15, 1
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.cond
  %16 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx, align 1
  %conv13 = zext i8 %17 to i32
  br label %cond.end.21

cond.false:                                       ; preds = %while.cond
  %18 = load i32, i32* %kind.addr, align 4
  %cmp14 = icmp eq i32 %18, 2
  br i1 %cmp14, label %cond.true.16, label %cond.false.19

cond.true.16:                                     ; preds = %cond.false
  %19 = load i8*, i8** %s, align 8
  %20 = bitcast i8* %19 to i16*
  %arrayidx17 = getelementptr i16, i16* %20, i64 0
  %21 = load i16, i16* %arrayidx17, align 2
  %conv18 = zext i16 %21 to i32
  br label %cond.end

cond.false.19:                                    ; preds = %cond.false
  %22 = load i8*, i8** %s, align 8
  %23 = bitcast i8* %22 to i32*
  %arrayidx20 = getelementptr i32, i32* %23, i64 0
  %24 = load i32, i32* %arrayidx20, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.19, %cond.true.16
  %cond = phi i32 [ %conv18, %cond.true.16 ], [ %24, %cond.false.19 ]
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.end, %cond.true
  %cond22 = phi i32 [ %conv13, %cond.true ], [ %cond, %cond.end ]
  %cmp23 = icmp ugt i32 %cond22, 13
  br i1 %cmp23, label %while.body, label %while.end

while.body:                                       ; preds = %cond.end.21
  %25 = load i32, i32* %kind.addr, align 4
  %26 = load i8*, i8** %s, align 8
  %idx.ext = sext i32 %25 to i64
  %add.ptr = getelementptr i8, i8* %26, i64 %idx.ext
  store i8* %add.ptr, i8** %s, align 8
  br label %while.cond

while.end:                                        ; preds = %cond.end.21
  %27 = load i8*, i8** %s, align 8
  %28 = load i8*, i8** %end.addr, align 8
  %cmp25 = icmp uge i8* %27, %28
  br i1 %cmp25, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %while.end
  %29 = load i64, i64* %len, align 8
  %30 = load i64*, i64** %consumed.addr, align 8
  store i64 %29, i64* %30, align 8
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %while.end
  %31 = load i32, i32* %kind.addr, align 4
  %cmp28 = icmp eq i32 %31, 1
  br i1 %cmp28, label %cond.true.30, label %cond.false.33

cond.true.30:                                     ; preds = %if.end
  %32 = load i8*, i8** %s, align 8
  %arrayidx31 = getelementptr i8, i8* %32, i64 0
  %33 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %33 to i32
  br label %cond.end.43

cond.false.33:                                    ; preds = %if.end
  %34 = load i32, i32* %kind.addr, align 4
  %cmp34 = icmp eq i32 %34, 2
  br i1 %cmp34, label %cond.true.36, label %cond.false.39

cond.true.36:                                     ; preds = %cond.false.33
  %35 = load i8*, i8** %s, align 8
  %36 = bitcast i8* %35 to i16*
  %arrayidx37 = getelementptr i16, i16* %36, i64 0
  %37 = load i16, i16* %arrayidx37, align 2
  %conv38 = zext i16 %37 to i32
  br label %cond.end.41

cond.false.39:                                    ; preds = %cond.false.33
  %38 = load i8*, i8** %s, align 8
  %39 = bitcast i8* %38 to i32*
  %arrayidx40 = getelementptr i32, i32* %39, i64 0
  %40 = load i32, i32* %arrayidx40, align 4
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.39, %cond.true.36
  %cond42 = phi i32 [ %conv38, %cond.true.36 ], [ %40, %cond.false.39 ]
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.end.41, %cond.true.30
  %cond44 = phi i32 [ %conv32, %cond.true.30 ], [ %cond42, %cond.end.41 ]
  store i32 %cond44, i32* %ch, align 4
  %41 = load i32, i32* %kind.addr, align 4
  %42 = load i8*, i8** %s, align 8
  %idx.ext45 = sext i32 %41 to i64
  %add.ptr46 = getelementptr i8, i8* %42, i64 %idx.ext45
  store i8* %add.ptr46, i8** %s, align 8
  %43 = load i32, i32* %ch, align 4
  %cmp47 = icmp eq i32 %43, 10
  br i1 %cmp47, label %if.then.49, label %if.end.55

if.then.49:                                       ; preds = %cond.end.43
  %44 = load i8*, i8** %s, align 8
  %45 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast50 = ptrtoint i8* %44 to i64
  %sub.ptr.rhs.cast51 = ptrtoint i8* %45 to i64
  %sub.ptr.sub52 = sub i64 %sub.ptr.lhs.cast50, %sub.ptr.rhs.cast51
  %46 = load i32, i32* %kind.addr, align 4
  %conv53 = sext i32 %46 to i64
  %div54 = sdiv i64 %sub.ptr.sub52, %conv53
  store i64 %div54, i64* %retval
  br label %return

if.end.55:                                        ; preds = %cond.end.43
  %47 = load i32, i32* %ch, align 4
  %cmp56 = icmp eq i32 %47, 13
  br i1 %cmp56, label %if.then.58, label %if.end.91

if.then.58:                                       ; preds = %if.end.55
  %48 = load i32, i32* %kind.addr, align 4
  %cmp59 = icmp eq i32 %48, 1
  br i1 %cmp59, label %cond.true.61, label %cond.false.64

cond.true.61:                                     ; preds = %if.then.58
  %49 = load i8*, i8** %s, align 8
  %arrayidx62 = getelementptr i8, i8* %49, i64 0
  %50 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %50 to i32
  br label %cond.end.74

cond.false.64:                                    ; preds = %if.then.58
  %51 = load i32, i32* %kind.addr, align 4
  %cmp65 = icmp eq i32 %51, 2
  br i1 %cmp65, label %cond.true.67, label %cond.false.70

cond.true.67:                                     ; preds = %cond.false.64
  %52 = load i8*, i8** %s, align 8
  %53 = bitcast i8* %52 to i16*
  %arrayidx68 = getelementptr i16, i16* %53, i64 0
  %54 = load i16, i16* %arrayidx68, align 2
  %conv69 = zext i16 %54 to i32
  br label %cond.end.72

cond.false.70:                                    ; preds = %cond.false.64
  %55 = load i8*, i8** %s, align 8
  %56 = bitcast i8* %55 to i32*
  %arrayidx71 = getelementptr i32, i32* %56, i64 0
  %57 = load i32, i32* %arrayidx71, align 4
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.70, %cond.true.67
  %cond73 = phi i32 [ %conv69, %cond.true.67 ], [ %57, %cond.false.70 ]
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.end.72, %cond.true.61
  %cond75 = phi i32 [ %conv63, %cond.true.61 ], [ %cond73, %cond.end.72 ]
  %cmp76 = icmp eq i32 %cond75, 10
  br i1 %cmp76, label %if.then.78, label %if.else.85

if.then.78:                                       ; preds = %cond.end.74
  %58 = load i8*, i8** %s, align 8
  %59 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast79 = ptrtoint i8* %58 to i64
  %sub.ptr.rhs.cast80 = ptrtoint i8* %59 to i64
  %sub.ptr.sub81 = sub i64 %sub.ptr.lhs.cast79, %sub.ptr.rhs.cast80
  %60 = load i32, i32* %kind.addr, align 4
  %conv82 = sext i32 %60 to i64
  %div83 = sdiv i64 %sub.ptr.sub81, %conv82
  %add84 = add i64 %div83, 1
  store i64 %add84, i64* %retval
  br label %return

if.else.85:                                       ; preds = %cond.end.74
  %61 = load i8*, i8** %s, align 8
  %62 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast86 = ptrtoint i8* %61 to i64
  %sub.ptr.rhs.cast87 = ptrtoint i8* %62 to i64
  %sub.ptr.sub88 = sub i64 %sub.ptr.lhs.cast86, %sub.ptr.rhs.cast87
  %63 = load i32, i32* %kind.addr, align 4
  %conv89 = sext i32 %63 to i64
  %div90 = sdiv i64 %sub.ptr.sub88, %conv89
  store i64 %div90, i64* %retval
  br label %return

if.end.91:                                        ; preds = %if.end.55
  br label %for.cond

if.else.92:                                       ; preds = %if.else.8
  %64 = load %struct._object*, %struct._object** %readnl.addr, align 8
  %65 = bitcast %struct._object* %64 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %65, i32 0, i32 1
  %66 = load i64, i64* %length, align 8
  store i64 %66, i64* %readnl_len, align 8
  %67 = load %struct._object*, %struct._object** %readnl.addr, align 8
  %68 = bitcast %struct._object* %67 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %68, i32 0, i32 3
  %69 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %69, align 4
  %bf.lshr = lshr i32 %bf.load, 5
  %bf.clear = and i32 %bf.lshr, 1
  %tobool93 = icmp ne i32 %bf.clear, 0
  br i1 %tobool93, label %cond.true.94, label %cond.false.106

cond.true.94:                                     ; preds = %if.else.92
  %70 = load %struct._object*, %struct._object** %readnl.addr, align 8
  %71 = bitcast %struct._object* %70 to %struct.PyASCIIObject*
  %state95 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %71, i32 0, i32 3
  %72 = bitcast %struct.anon* %state95 to i32*
  %bf.load96 = load i32, i32* %72, align 4
  %bf.lshr97 = lshr i32 %bf.load96, 6
  %bf.clear98 = and i32 %bf.lshr97, 1
  %tobool99 = icmp ne i32 %bf.clear98, 0
  br i1 %tobool99, label %cond.true.100, label %cond.false.102

cond.true.100:                                    ; preds = %cond.true.94
  %73 = load %struct._object*, %struct._object** %readnl.addr, align 8
  %74 = bitcast %struct._object* %73 to %struct.PyASCIIObject*
  %add.ptr101 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %74, i64 1
  %75 = bitcast %struct.PyASCIIObject* %add.ptr101 to i8*
  br label %cond.end.104

cond.false.102:                                   ; preds = %cond.true.94
  %76 = load %struct._object*, %struct._object** %readnl.addr, align 8
  %77 = bitcast %struct._object* %76 to %struct.PyCompactUnicodeObject*
  %add.ptr103 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %77, i64 1
  %78 = bitcast %struct.PyCompactUnicodeObject* %add.ptr103 to i8*
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.false.102, %cond.true.100
  %cond105 = phi i8* [ %75, %cond.true.100 ], [ %78, %cond.false.102 ]
  br label %cond.end.107

cond.false.106:                                   ; preds = %if.else.92
  %79 = load %struct._object*, %struct._object** %readnl.addr, align 8
  %80 = bitcast %struct._object* %79 to %struct.PyUnicodeObject*
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %80, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %81 = load i8*, i8** %any, align 8
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.106, %cond.end.104
  %cond108 = phi i8* [ %cond105, %cond.end.104 ], [ %81, %cond.false.106 ]
  store i8* %cond108, i8** %nl, align 8
  %82 = load i64, i64* %readnl_len, align 8
  %cmp109 = icmp eq i64 %82, 1
  br i1 %cmp109, label %if.then.111, label %if.else.126

if.then.111:                                      ; preds = %cond.end.107
  %83 = load i32, i32* %kind.addr, align 4
  %84 = load i8*, i8** %start.addr, align 8
  %85 = load i8*, i8** %end.addr, align 8
  %86 = load i8*, i8** %nl, align 8
  %arrayidx113 = getelementptr i8, i8* %86, i64 0
  %87 = load i8, i8* %arrayidx113, align 1
  %conv114 = sext i8 %87 to i32
  %call115 = call i8* @find_control_char(i32 %83, i8* %84, i8* %85, i32 %conv114)
  store i8* %call115, i8** %pos112, align 8
  %88 = load i8*, i8** %pos112, align 8
  %cmp116 = icmp ne i8* %88, null
  br i1 %cmp116, label %if.then.118, label %if.end.125

if.then.118:                                      ; preds = %if.then.111
  %89 = load i8*, i8** %pos112, align 8
  %90 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast119 = ptrtoint i8* %89 to i64
  %sub.ptr.rhs.cast120 = ptrtoint i8* %90 to i64
  %sub.ptr.sub121 = sub i64 %sub.ptr.lhs.cast119, %sub.ptr.rhs.cast120
  %91 = load i32, i32* %kind.addr, align 4
  %conv122 = sext i32 %91 to i64
  %div123 = sdiv i64 %sub.ptr.sub121, %conv122
  %add124 = add i64 %div123, 1
  store i64 %add124, i64* %retval
  br label %return

if.end.125:                                       ; preds = %if.then.111
  %92 = load i64, i64* %len, align 8
  %93 = load i64*, i64** %consumed.addr, align 8
  store i64 %92, i64* %93, align 8
  store i64 -1, i64* %retval
  br label %return

if.else.126:                                      ; preds = %cond.end.107
  %94 = load i8*, i8** %start.addr, align 8
  store i8* %94, i8** %s127, align 8
  %95 = load i8*, i8** %end.addr, align 8
  %96 = load i64, i64* %readnl_len, align 8
  %sub = sub i64 %96, 1
  %97 = load i32, i32* %kind.addr, align 4
  %conv128 = sext i32 %97 to i64
  %mul = mul i64 %sub, %conv128
  %idx.neg = sub i64 0, %mul
  %add.ptr129 = getelementptr i8, i8* %95, i64 %idx.neg
  store i8* %add.ptr129, i8** %e, align 8
  %98 = load i8*, i8** %e, align 8
  %99 = load i8*, i8** %s127, align 8
  %cmp131 = icmp ult i8* %98, %99
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %if.else.126
  %100 = load i8*, i8** %s127, align 8
  store i8* %100, i8** %e, align 8
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.133, %if.else.126
  br label %while.cond.135

while.cond.135:                                   ; preds = %if.end.184, %if.end.134
  %101 = load i8*, i8** %s127, align 8
  %102 = load i8*, i8** %e, align 8
  %cmp136 = icmp ult i8* %101, %102
  br i1 %cmp136, label %while.body.138, label %while.end.187

while.body.138:                                   ; preds = %while.cond.135
  %103 = load i32, i32* %kind.addr, align 4
  %104 = load i8*, i8** %s127, align 8
  %105 = load i8*, i8** %end.addr, align 8
  %106 = load i8*, i8** %nl, align 8
  %arrayidx140 = getelementptr i8, i8* %106, i64 0
  %107 = load i8, i8* %arrayidx140, align 1
  %conv141 = sext i8 %107 to i32
  %call142 = call i8* @find_control_char(i32 %103, i8* %104, i8* %105, i32 %conv141)
  store i8* %call142, i8** %pos139, align 8
  %108 = load i8*, i8** %pos139, align 8
  %cmp143 = icmp eq i8* %108, null
  br i1 %cmp143, label %if.then.147, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body.138
  %109 = load i8*, i8** %pos139, align 8
  %110 = load i8*, i8** %e, align 8
  %cmp145 = icmp uge i8* %109, %110
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %lor.lhs.false, %while.body.138
  br label %while.end.187

if.end.148:                                       ; preds = %lor.lhs.false
  store i64 1, i64* %i, align 8
  br label %for.cond.149

for.cond.149:                                     ; preds = %for.inc, %if.end.148
  %111 = load i64, i64* %i, align 8
  %112 = load i64, i64* %readnl_len, align 8
  %cmp150 = icmp slt i64 %111, %112
  br i1 %cmp150, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.149
  %113 = load i32, i32* %kind.addr, align 4
  %cmp152 = icmp eq i32 %113, 1
  br i1 %cmp152, label %cond.true.154, label %cond.false.157

cond.true.154:                                    ; preds = %for.body
  %114 = load i64, i64* %i, align 8
  %115 = load i8*, i8** %pos139, align 8
  %arrayidx155 = getelementptr i8, i8* %115, i64 %114
  %116 = load i8, i8* %arrayidx155, align 1
  %conv156 = zext i8 %116 to i32
  br label %cond.end.167

cond.false.157:                                   ; preds = %for.body
  %117 = load i32, i32* %kind.addr, align 4
  %cmp158 = icmp eq i32 %117, 2
  br i1 %cmp158, label %cond.true.160, label %cond.false.163

cond.true.160:                                    ; preds = %cond.false.157
  %118 = load i64, i64* %i, align 8
  %119 = load i8*, i8** %pos139, align 8
  %120 = bitcast i8* %119 to i16*
  %arrayidx161 = getelementptr i16, i16* %120, i64 %118
  %121 = load i16, i16* %arrayidx161, align 2
  %conv162 = zext i16 %121 to i32
  br label %cond.end.165

cond.false.163:                                   ; preds = %cond.false.157
  %122 = load i64, i64* %i, align 8
  %123 = load i8*, i8** %pos139, align 8
  %124 = bitcast i8* %123 to i32*
  %arrayidx164 = getelementptr i32, i32* %124, i64 %122
  %125 = load i32, i32* %arrayidx164, align 4
  br label %cond.end.165

cond.end.165:                                     ; preds = %cond.false.163, %cond.true.160
  %cond166 = phi i32 [ %conv162, %cond.true.160 ], [ %125, %cond.false.163 ]
  br label %cond.end.167

cond.end.167:                                     ; preds = %cond.end.165, %cond.true.154
  %cond168 = phi i32 [ %conv156, %cond.true.154 ], [ %cond166, %cond.end.165 ]
  %126 = load i64, i64* %i, align 8
  %127 = load i8*, i8** %nl, align 8
  %arrayidx169 = getelementptr i8, i8* %127, i64 %126
  %128 = load i8, i8* %arrayidx169, align 1
  %conv170 = sext i8 %128 to i32
  %cmp171 = icmp ne i32 %cond168, %conv170
  br i1 %cmp171, label %if.then.173, label %if.end.174

if.then.173:                                      ; preds = %cond.end.167
  br label %for.end

if.end.174:                                       ; preds = %cond.end.167
  br label %for.inc

for.inc:                                          ; preds = %if.end.174
  %129 = load i64, i64* %i, align 8
  %inc = add i64 %129, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond.149

for.end:                                          ; preds = %if.then.173, %for.cond.149
  %130 = load i64, i64* %i, align 8
  %131 = load i64, i64* %readnl_len, align 8
  %cmp175 = icmp eq i64 %130, %131
  br i1 %cmp175, label %if.then.177, label %if.end.184

if.then.177:                                      ; preds = %for.end
  %132 = load i8*, i8** %pos139, align 8
  %133 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast178 = ptrtoint i8* %132 to i64
  %sub.ptr.rhs.cast179 = ptrtoint i8* %133 to i64
  %sub.ptr.sub180 = sub i64 %sub.ptr.lhs.cast178, %sub.ptr.rhs.cast179
  %134 = load i32, i32* %kind.addr, align 4
  %conv181 = sext i32 %134 to i64
  %div182 = sdiv i64 %sub.ptr.sub180, %conv181
  %135 = load i64, i64* %readnl_len, align 8
  %add183 = add i64 %div182, %135
  store i64 %add183, i64* %retval
  br label %return

if.end.184:                                       ; preds = %for.end
  %136 = load i8*, i8** %pos139, align 8
  %137 = load i32, i32* %kind.addr, align 4
  %idx.ext185 = sext i32 %137 to i64
  %add.ptr186 = getelementptr i8, i8* %136, i64 %idx.ext185
  store i8* %add.ptr186, i8** %s127, align 8
  br label %while.cond.135

while.end.187:                                    ; preds = %if.then.147, %while.cond.135
  %138 = load i32, i32* %kind.addr, align 4
  %139 = load i8*, i8** %e, align 8
  %140 = load i8*, i8** %end.addr, align 8
  %141 = load i8*, i8** %nl, align 8
  %arrayidx188 = getelementptr i8, i8* %141, i64 0
  %142 = load i8, i8* %arrayidx188, align 1
  %conv189 = sext i8 %142 to i32
  %call190 = call i8* @find_control_char(i32 %138, i8* %139, i8* %140, i32 %conv189)
  store i8* %call190, i8** %pos130, align 8
  %143 = load i8*, i8** %pos130, align 8
  %cmp191 = icmp eq i8* %143, null
  br i1 %cmp191, label %if.then.193, label %if.else.194

if.then.193:                                      ; preds = %while.end.187
  %144 = load i64, i64* %len, align 8
  %145 = load i64*, i64** %consumed.addr, align 8
  store i64 %144, i64* %145, align 8
  br label %if.end.200

if.else.194:                                      ; preds = %while.end.187
  %146 = load i8*, i8** %pos130, align 8
  %147 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast195 = ptrtoint i8* %146 to i64
  %sub.ptr.rhs.cast196 = ptrtoint i8* %147 to i64
  %sub.ptr.sub197 = sub i64 %sub.ptr.lhs.cast195, %sub.ptr.rhs.cast196
  %148 = load i32, i32* %kind.addr, align 4
  %conv198 = sext i32 %148 to i64
  %div199 = sdiv i64 %sub.ptr.sub197, %conv198
  %149 = load i64*, i64** %consumed.addr, align 8
  store i64 %div199, i64* %149, align 8
  br label %if.end.200

if.end.200:                                       ; preds = %if.else.194, %if.then.193
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %if.end.200, %if.then.177, %if.end.125, %if.then.118, %if.else.85, %if.then.78, %if.then.49, %if.then.27, %if.else, %if.then.2
  %150 = load i64, i64* %retval
  ret i64 %150
}

; Function Attrs: nounwind uwtable
define internal i8* @find_control_char(i32 %kind, i8* %s, i8* %end, i32 %ch) #0 {
entry:
  %retval = alloca i8*, align 8
  %kind.addr = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %ch.addr = alloca i32, align 4
  store i32 %kind, i32* %kind.addr, align 4
  store i8* %s, i8** %s.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32 %ch, i32* %ch.addr, align 4
  %0 = load i32, i32* %kind.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8
  %2 = load i32, i32* %ch.addr, align 4
  %conv = trunc i32 %2 to i8
  %conv1 = sext i8 %conv to i32
  %3 = load i8*, i8** %end.addr, align 8
  %4 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = call i8* @memchr(i8* %1, i32 %conv1, i64 %sub.ptr.sub) #4
  store i8* %call, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end.40, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %5 = load i32, i32* %kind.addr, align 4
  %cmp2 = icmp eq i32 %5, 1
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.cond
  %6 = load i8*, i8** %s.addr, align 8
  %arrayidx = getelementptr i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx, align 1
  %conv4 = zext i8 %7 to i32
  br label %cond.end.12

cond.false:                                       ; preds = %while.cond
  %8 = load i32, i32* %kind.addr, align 4
  %cmp5 = icmp eq i32 %8, 2
  br i1 %cmp5, label %cond.true.7, label %cond.false.10

cond.true.7:                                      ; preds = %cond.false
  %9 = load i8*, i8** %s.addr, align 8
  %10 = bitcast i8* %9 to i16*
  %arrayidx8 = getelementptr i16, i16* %10, i64 0
  %11 = load i16, i16* %arrayidx8, align 2
  %conv9 = zext i16 %11 to i32
  br label %cond.end

cond.false.10:                                    ; preds = %cond.false
  %12 = load i8*, i8** %s.addr, align 8
  %13 = bitcast i8* %12 to i32*
  %arrayidx11 = getelementptr i32, i32* %13, i64 0
  %14 = load i32, i32* %arrayidx11, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.10, %cond.true.7
  %cond = phi i32 [ %conv9, %cond.true.7 ], [ %14, %cond.false.10 ]
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.end, %cond.true
  %cond13 = phi i32 [ %conv4, %cond.true ], [ %cond, %cond.end ]
  %15 = load i32, i32* %ch.addr, align 4
  %cmp14 = icmp ugt i32 %cond13, %15
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %cond.end.12
  %16 = load i32, i32* %kind.addr, align 4
  %17 = load i8*, i8** %s.addr, align 8
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr i8, i8* %17, i64 %idx.ext
  store i8* %add.ptr, i8** %s.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %cond.end.12
  %18 = load i32, i32* %kind.addr, align 4
  %cmp16 = icmp eq i32 %18, 1
  br i1 %cmp16, label %cond.true.18, label %cond.false.21

cond.true.18:                                     ; preds = %while.end
  %19 = load i8*, i8** %s.addr, align 8
  %arrayidx19 = getelementptr i8, i8* %19, i64 0
  %20 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %20 to i32
  br label %cond.end.31

cond.false.21:                                    ; preds = %while.end
  %21 = load i32, i32* %kind.addr, align 4
  %cmp22 = icmp eq i32 %21, 2
  br i1 %cmp22, label %cond.true.24, label %cond.false.27

cond.true.24:                                     ; preds = %cond.false.21
  %22 = load i8*, i8** %s.addr, align 8
  %23 = bitcast i8* %22 to i16*
  %arrayidx25 = getelementptr i16, i16* %23, i64 0
  %24 = load i16, i16* %arrayidx25, align 2
  %conv26 = zext i16 %24 to i32
  br label %cond.end.29

cond.false.27:                                    ; preds = %cond.false.21
  %25 = load i8*, i8** %s.addr, align 8
  %26 = bitcast i8* %25 to i32*
  %arrayidx28 = getelementptr i32, i32* %26, i64 0
  %27 = load i32, i32* %arrayidx28, align 4
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.27, %cond.true.24
  %cond30 = phi i32 [ %conv26, %cond.true.24 ], [ %27, %cond.false.27 ]
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.end.29, %cond.true.18
  %cond32 = phi i32 [ %conv20, %cond.true.18 ], [ %cond30, %cond.end.29 ]
  %28 = load i32, i32* %ch.addr, align 4
  %cmp33 = icmp eq i32 %cond32, %28
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %cond.end.31
  %29 = load i8*, i8** %s.addr, align 8
  store i8* %29, i8** %retval
  br label %return

if.end.36:                                        ; preds = %cond.end.31
  %30 = load i8*, i8** %s.addr, align 8
  %31 = load i8*, i8** %end.addr, align 8
  %cmp37 = icmp eq i8* %30, %31
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.36
  store i8* null, i8** %retval
  br label %return

if.end.40:                                        ; preds = %if.end.36
  %32 = load i32, i32* %kind.addr, align 4
  %33 = load i8*, i8** %s.addr, align 8
  %idx.ext41 = sext i32 %32 to i64
  %add.ptr42 = getelementptr i8, i8* %33, i64 %idx.ext41
  store i8* %add.ptr42, i8** %s.addr, align 8
  br label %for.cond

return:                                           ; preds = %if.then.39, %if.then.35, %if.then
  %34 = load i8*, i8** %retval
  ret i8* %34
}

; Function Attrs: nounwind uwtable
define internal void @textiowrapper_dealloc(%struct.textio* %self) #0 {
entry:
  %self.addr = alloca %struct.textio*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  %0 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %finalizing = getelementptr inbounds %struct.textio, %struct.textio* %0, i32 0, i32 19
  store i8 1, i8* %finalizing, align 1
  %1 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %2 = bitcast %struct.textio* %1 to %struct._object*
  %call = call i32 @_PyIOBase_finalize(%struct._object* %2)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %call1 = call i32 @_textiowrapper_clear(%struct.textio* %3)
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %5 = bitcast %struct.textio* %4 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %5, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %do.body
  %6 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %6 to %struct.anon.0*
  %gc_refs = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc, i32 0, i32 2
  %7 = load i64, i64* %gc_refs, align 8
  %and = and i64 %7, 1
  %or = or i64 %and, -4
  %8 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc3 = bitcast %union._gc_head* %8 to %struct.anon.0*
  %gc_refs4 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc3, i32 0, i32 2
  store i64 %or, i64* %gc_refs4, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.2
  %9 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc5 = bitcast %union._gc_head* %9 to %struct.anon.0*
  %gc_next = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc5, i32 0, i32 0
  %10 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  %11 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc6 = bitcast %union._gc_head* %11 to %struct.anon.0*
  %gc_prev = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc6, i32 0, i32 1
  %12 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %gc7 = bitcast %union._gc_head* %12 to %struct.anon.0*
  %gc_next8 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc7, i32 0, i32 0
  store %union._gc_head* %10, %union._gc_head** %gc_next8, align 8
  %13 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc9 = bitcast %union._gc_head* %13 to %struct.anon.0*
  %gc_prev10 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc9, i32 0, i32 1
  %14 = load %union._gc_head*, %union._gc_head** %gc_prev10, align 8
  %15 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc11 = bitcast %union._gc_head* %15 to %struct.anon.0*
  %gc_next12 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc11, i32 0, i32 0
  %16 = load %union._gc_head*, %union._gc_head** %gc_next12, align 8
  %gc13 = bitcast %union._gc_head* %16 to %struct.anon.0*
  %gc_prev14 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc13, i32 0, i32 1
  store %union._gc_head* %14, %union._gc_head** %gc_prev14, align 8
  %17 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc15 = bitcast %union._gc_head* %17 to %struct.anon.0*
  %gc_next16 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc15, i32 0, i32 0
  store %union._gc_head* null, %union._gc_head** %gc_next16, align 8
  br label %do.end.17

do.end.17:                                        ; preds = %do.end
  %18 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %weakreflist = getelementptr inbounds %struct.textio, %struct.textio* %18, i32 0, i32 29
  %19 = load %struct._object*, %struct._object** %weakreflist, align 8
  %cmp18 = icmp ne %struct._object* %19, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %do.end.17
  %20 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %21 = bitcast %struct.textio* %20 to %struct._object*
  call void @PyObject_ClearWeakRefs(%struct._object* %21)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %do.end.17
  br label %do.body.21

do.body.21:                                       ; preds = %if.end.20
  %22 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %dict = getelementptr inbounds %struct.textio, %struct.textio* %22, i32 0, i32 30
  %23 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %23, %struct._object** %_py_tmp, align 8
  %24 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp22 = icmp ne %struct._object* %24, null
  br i1 %cmp22, label %if.then.23, label %if.end.30

if.then.23:                                       ; preds = %do.body.21
  %25 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %dict24 = getelementptr inbounds %struct.textio, %struct.textio* %25, i32 0, i32 30
  store %struct._object* null, %struct._object** %dict24, align 8
  br label %do.body.25

do.body.25:                                       ; preds = %if.then.23
  %26 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %28, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp26 = icmp ne i64 %dec, 0
  br i1 %cmp26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %do.body.25
  br label %if.end.28

if.else:                                          ; preds = %do.body.25
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %31(%struct._object* %32)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.27
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  br label %if.end.30

if.end.30:                                        ; preds = %do.end.29, %do.body.21
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  %33 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %34 = bitcast %struct.textio* %33 to %struct._object*
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 38
  %36 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %37 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %38 = bitcast %struct.textio* %37 to %struct._object*
  %39 = bitcast %struct._object* %38 to i8*
  call void %36(i8* %39)
  br label %return

return:                                           ; preds = %do.end.31, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @textiowrapper_repr(%struct.textio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.textio*, align 8
  %nameobj = alloca %struct._object*, align 8
  %modeobj = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %s = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp38 = alloca %struct._object*, align 8
  %_py_decref_tmp57 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp71 = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  %0 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.textio, %struct.textio* %0, i32 0, i32 1
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %detached = getelementptr inbounds %struct.textio, %struct.textio* %2, i32 0, i32 2
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %call = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %res, align 8
  %6 = load %struct._object*, %struct._object** %res, align 8
  %cmp3 = icmp eq %struct._object* %6, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end.2
  %7 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %8 = bitcast %struct.textio* %7 to %struct._object*
  %call6 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %8, %struct._Py_Identifier* @PyId_name)
  store %struct._object* %call6, %struct._object** %nameobj, align 8
  %9 = load %struct._object*, %struct._object** %nameobj, align 8
  %cmp7 = icmp eq %struct._object* %9, null
  br i1 %cmp7, label %if.then.8, label %if.else.14

if.then.8:                                        ; preds = %if.end.5
  %10 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %call9 = call i32 @PyErr_ExceptionMatches(%struct._object* %10)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.then.8
  call void @PyErr_Clear()
  br label %if.end.13

if.else.12:                                       ; preds = %if.then.8
  br label %error

if.end.13:                                        ; preds = %if.then.11
  br label %if.end.26

if.else.14:                                       ; preds = %if.end.5
  %11 = load %struct._object*, %struct._object** %nameobj, align 8
  %call15 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), %struct._object* %11)
  store %struct._object* %call15, %struct._object** %s, align 8
  br label %do.body

do.body:                                          ; preds = %if.else.14
  %12 = load %struct._object*, %struct._object** %nameobj, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp16 = icmp ne i64 %dec, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body
  br label %if.end.19

if.else.18:                                       ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end

do.end:                                           ; preds = %if.end.19
  %19 = load %struct._object*, %struct._object** %s, align 8
  %cmp20 = icmp eq %struct._object* %19, null
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %do.end
  br label %error

if.end.22:                                        ; preds = %do.end
  %20 = load %struct._object*, %struct._object** %s, align 8
  call void @PyUnicode_AppendAndDel(%struct._object** %res, %struct._object* %20)
  %21 = load %struct._object*, %struct._object** %res, align 8
  %cmp23 = icmp eq %struct._object* %21, null
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.22
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.25:                                        ; preds = %if.end.22
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end.13
  %22 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %23 = bitcast %struct.textio* %22 to %struct._object*
  %call27 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %23, %struct._Py_Identifier* @PyId_mode)
  store %struct._object* %call27, %struct._object** %modeobj, align 8
  %24 = load %struct._object*, %struct._object** %modeobj, align 8
  %cmp28 = icmp eq %struct._object* %24, null
  br i1 %cmp28, label %if.then.29, label %if.else.35

if.then.29:                                       ; preds = %if.end.26
  %25 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %call30 = call i32 @PyErr_ExceptionMatches(%struct._object* %25)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %if.then.29
  call void @PyErr_Clear()
  br label %if.end.34

if.else.33:                                       ; preds = %if.then.29
  br label %error

if.end.34:                                        ; preds = %if.then.32
  br label %if.end.54

if.else.35:                                       ; preds = %if.end.26
  %26 = load %struct._object*, %struct._object** %modeobj, align 8
  %call36 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), %struct._object* %26)
  store %struct._object* %call36, %struct._object** %s, align 8
  br label %do.body.37

do.body.37:                                       ; preds = %if.else.35
  %27 = load %struct._object*, %struct._object** %modeobj, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp38, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt39, align 8
  %dec40 = add i64 %29, -1
  store i64 %dec40, i64* %ob_refcnt39, align 8
  %cmp41 = icmp ne i64 %dec40, 0
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.37
  br label %if.end.46

if.else.43:                                       ; preds = %do.body.37
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8
  %tp_dealloc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  call void %32(%struct._object* %33)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.42
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  %34 = load %struct._object*, %struct._object** %s, align 8
  %cmp48 = icmp eq %struct._object* %34, null
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %do.end.47
  br label %error

if.end.50:                                        ; preds = %do.end.47
  %35 = load %struct._object*, %struct._object** %s, align 8
  call void @PyUnicode_AppendAndDel(%struct._object** %res, %struct._object* %35)
  %36 = load %struct._object*, %struct._object** %res, align 8
  %cmp51 = icmp eq %struct._object* %36, null
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.50
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.53:                                        ; preds = %if.end.50
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end.34
  %37 = load %struct._object*, %struct._object** %res, align 8
  %38 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoding = getelementptr inbounds %struct.textio, %struct.textio* %38, i32 0, i32 5
  %39 = load %struct._object*, %struct._object** %encoding, align 8
  %call55 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0), %struct._object* %37, %struct._object* %39)
  store %struct._object* %call55, %struct._object** %s, align 8
  br label %do.body.56

do.body.56:                                       ; preds = %if.end.54
  %40 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp57, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt58, align 8
  %dec59 = add i64 %42, -1
  store i64 %dec59, i64* %ob_refcnt58, align 8
  %cmp60 = icmp ne i64 %dec59, 0
  br i1 %cmp60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %do.body.56
  br label %if.end.65

if.else.62:                                       ; preds = %do.body.56
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  call void %45(%struct._object* %46)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.61
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  %47 = load %struct._object*, %struct._object** %s, align 8
  store %struct._object* %47, %struct._object** %retval
  br label %return

error:                                            ; preds = %if.then.49, %if.else.33, %if.then.21, %if.else.12
  br label %do.body.67

do.body.67:                                       ; preds = %error
  %48 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %48, %struct._object** %_py_xdecref_tmp, align 8
  %49 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp68 = icmp ne %struct._object* %49, null
  br i1 %cmp68, label %if.then.69, label %if.end.81

if.then.69:                                       ; preds = %do.body.67
  br label %do.body.70

do.body.70:                                       ; preds = %if.then.69
  %50 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %50, %struct._object** %_py_decref_tmp71, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8
  %ob_refcnt72 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0
  %52 = load i64, i64* %ob_refcnt72, align 8
  %dec73 = add i64 %52, -1
  store i64 %dec73, i64* %ob_refcnt72, align 8
  %cmp74 = icmp ne i64 %dec73, 0
  br i1 %cmp74, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %do.body.70
  br label %if.end.79

if.else.76:                                       ; preds = %do.body.70
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8
  %ob_type77 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type77, align 8
  %tp_dealloc78 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 4
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc78, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8
  call void %55(%struct._object* %56)
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.76, %if.then.75
  br label %do.end.80

do.end.80:                                        ; preds = %if.end.79
  br label %if.end.81

if.end.81:                                        ; preds = %do.end.80, %do.body.67
  br label %do.end.82

do.end.82:                                        ; preds = %if.end.81
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.82, %do.end.66, %if.then.52, %if.then.24, %if.then.4, %if.end
  %57 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %57
}

; Function Attrs: nounwind uwtable
define internal i32 @textiowrapper_traverse(%struct.textio* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.textio*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  %vret19 = alloca i32, align 4
  %vret30 = alloca i32, align 4
  %vret41 = alloca i32, align 4
  %vret52 = alloca i32, align 4
  %vret63 = alloca i32, align 4
  %vret74 = alloca i32, align 4
  %vret85 = alloca i32, align 4
  %vret96 = alloca i32, align 4
  %vret107 = alloca i32, align 4
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %buffer = getelementptr inbounds %struct.textio, %struct.textio* %0, i32 0, i32 4
  %1 = load %struct._object*, %struct._object** %buffer, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %buffer1 = getelementptr inbounds %struct.textio, %struct.textio* %3, i32 0, i32 4
  %4 = load %struct._object*, %struct._object** %buffer1, align 8
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
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %8 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoding = getelementptr inbounds %struct.textio, %struct.textio* %8, i32 0, i32 5
  %9 = load %struct._object*, %struct._object** %encoding, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoding9 = getelementptr inbounds %struct.textio, %struct.textio* %11, i32 0, i32 5
  %12 = load %struct._object*, %struct._object** %encoding9, align 8
  %13 = load i8*, i8** %arg.addr, align 8
  %call10 = call i32 %10(%struct._object* %12, i8* %13)
  store i32 %call10, i32* %vret8, align 4
  %14 = load i32, i32* %vret8, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.7
  %15 = load i32, i32* %vret8, align 4
  store i32 %15, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.7
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %do.body.5
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  br label %do.body.16

do.body.16:                                       ; preds = %do.end.15
  %16 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoder = getelementptr inbounds %struct.textio, %struct.textio* %16, i32 0, i32 6
  %17 = load %struct._object*, %struct._object** %encoder, align 8
  %tobool17 = icmp ne %struct._object* %17, null
  br i1 %tobool17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %do.body.16
  %18 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %19 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoder20 = getelementptr inbounds %struct.textio, %struct.textio* %19, i32 0, i32 6
  %20 = load %struct._object*, %struct._object** %encoder20, align 8
  %21 = load i8*, i8** %arg.addr, align 8
  %call21 = call i32 %18(%struct._object* %20, i8* %21)
  store i32 %call21, i32* %vret19, align 4
  %22 = load i32, i32* %vret19, align 4
  %tobool22 = icmp ne i32 %22, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.18
  %23 = load i32, i32* %vret19, align 4
  store i32 %23, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.then.18
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %do.body.16
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %24 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder = getelementptr inbounds %struct.textio, %struct.textio* %24, i32 0, i32 7
  %25 = load %struct._object*, %struct._object** %decoder, align 8
  %tobool28 = icmp ne %struct._object* %25, null
  br i1 %tobool28, label %if.then.29, label %if.end.36

if.then.29:                                       ; preds = %do.body.27
  %26 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %27 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder31 = getelementptr inbounds %struct.textio, %struct.textio* %27, i32 0, i32 7
  %28 = load %struct._object*, %struct._object** %decoder31, align 8
  %29 = load i8*, i8** %arg.addr, align 8
  %call32 = call i32 %26(%struct._object* %28, i8* %29)
  store i32 %call32, i32* %vret30, align 4
  %30 = load i32, i32* %vret30, align 4
  %tobool33 = icmp ne i32 %30, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.29
  %31 = load i32, i32* %vret30, align 4
  store i32 %31, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.then.29
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %do.body.27
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  br label %do.body.38

do.body.38:                                       ; preds = %do.end.37
  %32 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %readnl = getelementptr inbounds %struct.textio, %struct.textio* %32, i32 0, i32 8
  %33 = load %struct._object*, %struct._object** %readnl, align 8
  %tobool39 = icmp ne %struct._object* %33, null
  br i1 %tobool39, label %if.then.40, label %if.end.47

if.then.40:                                       ; preds = %do.body.38
  %34 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %35 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %readnl42 = getelementptr inbounds %struct.textio, %struct.textio* %35, i32 0, i32 8
  %36 = load %struct._object*, %struct._object** %readnl42, align 8
  %37 = load i8*, i8** %arg.addr, align 8
  %call43 = call i32 %34(%struct._object* %36, i8* %37)
  store i32 %call43, i32* %vret41, align 4
  %38 = load i32, i32* %vret41, align 4
  %tobool44 = icmp ne i32 %38, 0
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.40
  %39 = load i32, i32* %vret41, align 4
  store i32 %39, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.then.40
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %do.body.38
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  br label %do.body.49

do.body.49:                                       ; preds = %do.end.48
  %40 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoded_chars = getelementptr inbounds %struct.textio, %struct.textio* %40, i32 0, i32 22
  %41 = load %struct._object*, %struct._object** %decoded_chars, align 8
  %tobool50 = icmp ne %struct._object* %41, null
  br i1 %tobool50, label %if.then.51, label %if.end.58

if.then.51:                                       ; preds = %do.body.49
  %42 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %43 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoded_chars53 = getelementptr inbounds %struct.textio, %struct.textio* %43, i32 0, i32 22
  %44 = load %struct._object*, %struct._object** %decoded_chars53, align 8
  %45 = load i8*, i8** %arg.addr, align 8
  %call54 = call i32 %42(%struct._object* %44, i8* %45)
  store i32 %call54, i32* %vret52, align 4
  %46 = load i32, i32* %vret52, align 4
  %tobool55 = icmp ne i32 %46, 0
  br i1 %tobool55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.then.51
  %47 = load i32, i32* %vret52, align 4
  store i32 %47, i32* %retval
  br label %return

if.end.57:                                        ; preds = %if.then.51
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %do.body.49
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  br label %do.body.60

do.body.60:                                       ; preds = %do.end.59
  %48 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %pending_bytes = getelementptr inbounds %struct.textio, %struct.textio* %48, i32 0, i32 24
  %49 = load %struct._object*, %struct._object** %pending_bytes, align 8
  %tobool61 = icmp ne %struct._object* %49, null
  br i1 %tobool61, label %if.then.62, label %if.end.69

if.then.62:                                       ; preds = %do.body.60
  %50 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %51 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %pending_bytes64 = getelementptr inbounds %struct.textio, %struct.textio* %51, i32 0, i32 24
  %52 = load %struct._object*, %struct._object** %pending_bytes64, align 8
  %53 = load i8*, i8** %arg.addr, align 8
  %call65 = call i32 %50(%struct._object* %52, i8* %53)
  store i32 %call65, i32* %vret63, align 4
  %54 = load i32, i32* %vret63, align 4
  %tobool66 = icmp ne i32 %54, 0
  br i1 %tobool66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.then.62
  %55 = load i32, i32* %vret63, align 4
  store i32 %55, i32* %retval
  br label %return

if.end.68:                                        ; preds = %if.then.62
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %do.body.60
  br label %do.end.70

do.end.70:                                        ; preds = %if.end.69
  br label %do.body.71

do.body.71:                                       ; preds = %do.end.70
  %56 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %snapshot = getelementptr inbounds %struct.textio, %struct.textio* %56, i32 0, i32 26
  %57 = load %struct._object*, %struct._object** %snapshot, align 8
  %tobool72 = icmp ne %struct._object* %57, null
  br i1 %tobool72, label %if.then.73, label %if.end.80

if.then.73:                                       ; preds = %do.body.71
  %58 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %59 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %snapshot75 = getelementptr inbounds %struct.textio, %struct.textio* %59, i32 0, i32 26
  %60 = load %struct._object*, %struct._object** %snapshot75, align 8
  %61 = load i8*, i8** %arg.addr, align 8
  %call76 = call i32 %58(%struct._object* %60, i8* %61)
  store i32 %call76, i32* %vret74, align 4
  %62 = load i32, i32* %vret74, align 4
  %tobool77 = icmp ne i32 %62, 0
  br i1 %tobool77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.then.73
  %63 = load i32, i32* %vret74, align 4
  store i32 %63, i32* %retval
  br label %return

if.end.79:                                        ; preds = %if.then.73
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %do.body.71
  br label %do.end.81

do.end.81:                                        ; preds = %if.end.80
  br label %do.body.82

do.body.82:                                       ; preds = %do.end.81
  %64 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %errors = getelementptr inbounds %struct.textio, %struct.textio* %64, i32 0, i32 9
  %65 = load %struct._object*, %struct._object** %errors, align 8
  %tobool83 = icmp ne %struct._object* %65, null
  br i1 %tobool83, label %if.then.84, label %if.end.91

if.then.84:                                       ; preds = %do.body.82
  %66 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %67 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %errors86 = getelementptr inbounds %struct.textio, %struct.textio* %67, i32 0, i32 9
  %68 = load %struct._object*, %struct._object** %errors86, align 8
  %69 = load i8*, i8** %arg.addr, align 8
  %call87 = call i32 %66(%struct._object* %68, i8* %69)
  store i32 %call87, i32* %vret85, align 4
  %70 = load i32, i32* %vret85, align 4
  %tobool88 = icmp ne i32 %70, 0
  br i1 %tobool88, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.then.84
  %71 = load i32, i32* %vret85, align 4
  store i32 %71, i32* %retval
  br label %return

if.end.90:                                        ; preds = %if.then.84
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %do.body.82
  br label %do.end.92

do.end.92:                                        ; preds = %if.end.91
  br label %do.body.93

do.body.93:                                       ; preds = %do.end.92
  %72 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %raw = getelementptr inbounds %struct.textio, %struct.textio* %72, i32 0, i32 28
  %73 = load %struct._object*, %struct._object** %raw, align 8
  %tobool94 = icmp ne %struct._object* %73, null
  br i1 %tobool94, label %if.then.95, label %if.end.102

if.then.95:                                       ; preds = %do.body.93
  %74 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %75 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %raw97 = getelementptr inbounds %struct.textio, %struct.textio* %75, i32 0, i32 28
  %76 = load %struct._object*, %struct._object** %raw97, align 8
  %77 = load i8*, i8** %arg.addr, align 8
  %call98 = call i32 %74(%struct._object* %76, i8* %77)
  store i32 %call98, i32* %vret96, align 4
  %78 = load i32, i32* %vret96, align 4
  %tobool99 = icmp ne i32 %78, 0
  br i1 %tobool99, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.then.95
  %79 = load i32, i32* %vret96, align 4
  store i32 %79, i32* %retval
  br label %return

if.end.101:                                       ; preds = %if.then.95
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %do.body.93
  br label %do.end.103

do.end.103:                                       ; preds = %if.end.102
  br label %do.body.104

do.body.104:                                      ; preds = %do.end.103
  %80 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %dict = getelementptr inbounds %struct.textio, %struct.textio* %80, i32 0, i32 30
  %81 = load %struct._object*, %struct._object** %dict, align 8
  %tobool105 = icmp ne %struct._object* %81, null
  br i1 %tobool105, label %if.then.106, label %if.end.113

if.then.106:                                      ; preds = %do.body.104
  %82 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %83 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %dict108 = getelementptr inbounds %struct.textio, %struct.textio* %83, i32 0, i32 30
  %84 = load %struct._object*, %struct._object** %dict108, align 8
  %85 = load i8*, i8** %arg.addr, align 8
  %call109 = call i32 %82(%struct._object* %84, i8* %85)
  store i32 %call109, i32* %vret107, align 4
  %86 = load i32, i32* %vret107, align 4
  %tobool110 = icmp ne i32 %86, 0
  br i1 %tobool110, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.then.106
  %87 = load i32, i32* %vret107, align 4
  store i32 %87, i32* %retval
  br label %return

if.end.112:                                       ; preds = %if.then.106
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %do.body.104
  br label %do.end.114

do.end.114:                                       ; preds = %if.end.113
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.114, %if.then.111, %if.then.100, %if.then.89, %if.then.78, %if.then.67, %if.then.56, %if.then.45, %if.then.34, %if.then.23, %if.then.12, %if.then.3
  %88 = load i32, i32* %retval
  ret i32 %88
}

; Function Attrs: nounwind uwtable
define internal i32 @textiowrapper_clear(%struct.textio* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.textio*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  %0 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %call = call i32 @_textiowrapper_clear(%struct.textio* %0)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %1 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %dict = getelementptr inbounds %struct.textio, %struct.textio* %1, i32 0, i32 30
  %2 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %2, %struct._object** %_py_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp1 = icmp ne %struct._object* %3, null
  br i1 %cmp1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %do.body
  %4 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %dict3 = getelementptr inbounds %struct.textio, %struct.textio* %4, i32 0, i32 30
  store %struct._object* null, %struct._object** %dict3, align 8
  br label %do.body.4

do.body.4:                                        ; preds = %if.then.2
  %5 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body.4
  br label %if.end.7

if.else:                                          ; preds = %do.body.4
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  br label %if.end.8

if.end.8:                                         ; preds = %do.end, %do.body
  br label %do.end.9

do.end.9:                                         ; preds = %if.end.8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.9, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @textiowrapper_iternext(%struct.textio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.textio*, align 8
  %line = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp29 = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp44 = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  %0 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.textio, %struct.textio* %0, i32 0, i32 1
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %detached = getelementptr inbounds %struct.textio, %struct.textio* %2, i32 0, i32 2
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %telling = getelementptr inbounds %struct.textio, %struct.textio* %6, i32 0, i32 18
  store i8 0, i8* %telling, align 1
  %7 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %8 = bitcast %struct.textio* %7 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp3 = icmp eq %struct._typeobject* %9, @PyTextIOWrapper_Type
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.end.2
  %10 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %call = call %struct._object* @_textiowrapper_readline(%struct.textio* %10, i64 -1)
  store %struct._object* %call, %struct._object** %line, align 8
  br label %if.end.19

if.else.5:                                        ; preds = %if.end.2
  %11 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %12 = bitcast %struct.textio* %11 to %struct._object*
  %13 = load %struct._object*, %struct._object** @_PyIO_str_readline, align 8
  %call6 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %12, %struct._object* %13, i8* null)
  store %struct._object* %call6, %struct._object** %line, align 8
  %14 = load %struct._object*, %struct._object** %line, align 8
  %tobool7 = icmp ne %struct._object* %14, null
  br i1 %tobool7, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.else.5
  %15 = load %struct._object*, %struct._object** %line, align 8
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 19
  %17 = load i64, i64* %tp_flags, align 8
  %and = and i64 %17, 268435456
  %cmp9 = icmp ne i64 %and, 0
  br i1 %cmp9, label %if.end.18, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true
  %18 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %19 = load %struct._object*, %struct._object** %line, align 8
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 1
  %21 = load i8*, i8** %tp_name, align 8
  %call12 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %18, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.40, i32 0, i32 0), i8* %21)
  br label %do.body

do.body:                                          ; preds = %if.then.10
  %22 = load %struct._object*, %struct._object** %line, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %24, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body
  br label %if.end.17

if.else.15:                                       ; preds = %do.body
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %27(%struct._object* %28)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.17
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %land.lhs.true, %if.else.5
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.4
  %29 = load %struct._object*, %struct._object** %line, align 8
  %cmp20 = icmp eq %struct._object* %29, null
  br i1 %cmp20, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.19
  %30 = load %struct._object*, %struct._object** %line, align 8
  %31 = bitcast %struct._object* %30 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %31, i32 0, i32 3
  %32 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %32, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool21 = icmp ne i32 %bf.clear, 0
  br i1 %tobool21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %33 = load %struct._object*, %struct._object** %line, align 8
  %call22 = call i32 @_PyUnicode_Ready(%struct._object* %33)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call22, %cond.false ]
  %cmp23 = icmp eq i32 %cond, -1
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %cond.end, %if.end.19
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.25:                                        ; preds = %cond.end
  %34 = load %struct._object*, %struct._object** %line, align 8
  %35 = bitcast %struct._object* %34 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %35, i32 0, i32 1
  %36 = load i64, i64* %length, align 8
  %cmp26 = icmp eq i64 %36, 0
  br i1 %cmp26, label %if.then.27, label %if.end.57

if.then.27:                                       ; preds = %if.end.25
  br label %do.body.28

do.body.28:                                       ; preds = %if.then.27
  %37 = load %struct._object*, %struct._object** %line, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp29, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt30, align 8
  %dec31 = add i64 %39, -1
  store i64 %dec31, i64* %ob_refcnt30, align 8
  %cmp32 = icmp ne i64 %dec31, 0
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body.28
  br label %if.end.37

if.else.34:                                       ; preds = %do.body.28
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %tp_dealloc36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  call void %42(%struct._object* %43)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.33
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %44 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %snapshot = getelementptr inbounds %struct.textio, %struct.textio* %44, i32 0, i32 26
  %45 = load %struct._object*, %struct._object** %snapshot, align 8
  store %struct._object* %45, %struct._object** %_py_tmp, align 8
  %46 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp40 = icmp ne %struct._object* %46, null
  br i1 %cmp40, label %if.then.41, label %if.end.54

if.then.41:                                       ; preds = %do.body.39
  %47 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %snapshot42 = getelementptr inbounds %struct.textio, %struct.textio* %47, i32 0, i32 26
  store %struct._object* null, %struct._object** %snapshot42, align 8
  br label %do.body.43

do.body.43:                                       ; preds = %if.then.41
  %48 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp44, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  %ob_refcnt45 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt45, align 8
  %dec46 = add i64 %50, -1
  store i64 %dec46, i64* %ob_refcnt45, align 8
  %cmp47 = icmp ne i64 %dec46, 0
  br i1 %cmp47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %do.body.43
  br label %if.end.52

if.else.49:                                       ; preds = %do.body.43
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  %ob_type50 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type50, align 8
  %tp_dealloc51 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc51, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  call void %53(%struct._object* %54)
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.49, %if.then.48
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  br label %if.end.54

if.end.54:                                        ; preds = %do.end.53, %do.body.39
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  %55 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %seekable = getelementptr inbounds %struct.textio, %struct.textio* %55, i32 0, i32 16
  %56 = load i8, i8* %seekable, align 1
  %57 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %telling56 = getelementptr inbounds %struct.textio, %struct.textio* %57, i32 0, i32 18
  store i8 %56, i8* %telling56, align 1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.57:                                        ; preds = %if.end.25
  %58 = load %struct._object*, %struct._object** %line, align 8
  store %struct._object* %58, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.57, %do.end.55, %if.then.24, %do.end, %if.end
  %59 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %59
}

; Function Attrs: nounwind uwtable
define internal i32 @textiowrapper_init(%struct.textio* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.textio*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %kwlist = alloca [7 x i8*], align 16
  %buffer = alloca %struct._object*, align 8
  %raw = alloca %struct._object*, align 8
  %codec_info = alloca %struct._object*, align 8
  %encoding = alloca i8*, align 8
  %errors = alloca i8*, align 8
  %newline = alloca i8*, align 8
  %line_buffering = alloca i32, align 4
  %write_through = alloca i32, align 4
  %state = alloca %struct._PyIO_State*, align 8
  %res = alloca %struct._object*, align 8
  %r = alloca i32, align 4
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp54 = alloca %struct._object*, align 8
  %_py_decref_tmp61 = alloca %struct._object*, align 8
  %_py_tmp75 = alloca %struct._object*, align 8
  %_py_decref_tmp81 = alloca %struct._object*, align 8
  %_py_tmp95 = alloca %struct._object*, align 8
  %_py_decref_tmp101 = alloca %struct._object*, align 8
  %_py_tmp115 = alloca %struct._object*, align 8
  %_py_decref_tmp121 = alloca %struct._object*, align 8
  %_py_tmp135 = alloca %struct._object*, align 8
  %_py_decref_tmp141 = alloca %struct._object*, align 8
  %_py_tmp155 = alloca %struct._object*, align 8
  %_py_decref_tmp161 = alloca %struct._object*, align 8
  %_py_tmp175 = alloca %struct._object*, align 8
  %_py_decref_tmp181 = alloca %struct._object*, align 8
  %_py_tmp195 = alloca %struct._object*, align 8
  %_py_decref_tmp202 = alloca %struct._object*, align 8
  %_py_tmp216 = alloca %struct._object*, align 8
  %_py_decref_tmp223 = alloca %struct._object*, align 8
  %fileno = alloca %struct._object*, align 8
  %fd = alloca i32, align 4
  %_py_decref_tmp258 = alloca %struct._object*, align 8
  %_py_tmp289 = alloca %struct._object*, align 8
  %_py_decref_tmp296 = alloca %struct._object*, align 8
  %locale_module = alloca %struct._object*, align 8
  %_py_decref_tmp328 = alloca %struct._object*, align 8
  %_py_tmp359 = alloca %struct._object*, align 8
  %_py_decref_tmp366 = alloca %struct._object*, align 8
  %_py_tmp411 = alloca %struct._object*, align 8
  %_py_decref_tmp418 = alloca %struct._object*, align 8
  %_py_decref_tmp504 = alloca %struct._object*, align 8
  %incrementalDecoder = alloca %struct._object*, align 8
  %_py_tmp541 = alloca %struct._object*, align 8
  %_py_decref_tmp548 = alloca %struct._object*, align 8
  %_py_decref_tmp571 = alloca %struct._object*, align 8
  %e = alloca %struct.encodefuncentry*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp628 = alloca %struct._object*, align 8
  %_py_decref_tmp643 = alloca %struct._object*, align 8
  %_py_decref_tmp685 = alloca %struct._object*, align 8
  %_py_decref_tmp706 = alloca %struct._object*, align 8
  %cookieObj = alloca %struct._object*, align 8
  %cmp731 = alloca i32, align 4
  %_py_decref_tmp740 = alloca %struct._object*, align 8
  %_py_decref_tmp766 = alloca %struct._object*, align 8
  %_py_xdecref_tmp781 = alloca %struct._object*, align 8
  %_py_decref_tmp786 = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = bitcast [7 x i8*]* %kwlist to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 56, i32 16, i1 false)
  %1 = bitcast i8* %0 to [7 x i8*]*
  %2 = getelementptr [7 x i8*], [7 x i8*]* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i32 0, i32 0), i8** %2
  %3 = getelementptr [7 x i8*], [7 x i8*]* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8** %3
  %4 = getelementptr [7 x i8*], [7 x i8*]* %1, i32 0, i32 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8** %4
  %5 = getelementptr [7 x i8*], [7 x i8*]* %1, i32 0, i32 3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i32 0, i32 0), i8** %5
  %6 = getelementptr [7 x i8*], [7 x i8*]* %1, i32 0, i32 4
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.90, i32 0, i32 0), i8** %6
  %7 = getelementptr [7 x i8*], [7 x i8*]* %1, i32 0, i32 5
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.96, i32 0, i32 0), i8** %7
  store %struct._object* null, %struct._object** %codec_info, align 8
  store i8* null, i8** %encoding, align 8
  store i8* null, i8** %errors, align 8
  store i8* null, i8** %newline, align 8
  store i32 0, i32* %line_buffering, align 4
  store i32 0, i32* %write_through, align 4
  store %struct._PyIO_State* null, %struct._PyIO_State** %state, align 8
  %8 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.textio, %struct.textio* %8, i32 0, i32 1
  store i32 0, i32* %ok, align 4
  %9 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %detached = getelementptr inbounds %struct.textio, %struct.textio* %9, i32 0, i32 2
  store i32 0, i32* %detached, align 4
  %10 = load %struct._object*, %struct._object** %args.addr, align 8
  %11 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %arraydecay = getelementptr inbounds [7 x i8*], [7 x i8*]* %kwlist, i32 0, i32 0
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %10, %struct._object* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.97, i32 0, i32 0), i8** %arraydecay, %struct._object** %buffer, i8** %encoding, i8** %errors, i8** %newline, i32* %line_buffering, i32* %write_through)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %12 = load i8*, i8** %newline, align 8
  %tobool1 = icmp ne i8* %12, null
  br i1 %tobool1, label %land.lhs.true, label %if.end.40

land.lhs.true:                                    ; preds = %if.end
  %13 = load i8*, i8** %newline, align 8
  %arrayidx = getelementptr i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %14 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.lhs.true.3, label %if.end.40

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %15 = load i8*, i8** %newline, align 8
  %arrayidx4 = getelementptr i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %16 to i32
  %cmp6 = icmp eq i32 %conv5, 10
  br i1 %cmp6, label %land.lhs.true.8, label %land.lhs.true.13

land.lhs.true.8:                                  ; preds = %land.lhs.true.3
  %17 = load i8*, i8** %newline, align 8
  %arrayidx9 = getelementptr i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %18 to i32
  %cmp11 = icmp eq i32 %conv10, 0
  br i1 %cmp11, label %if.end.40, label %land.lhs.true.13

land.lhs.true.13:                                 ; preds = %land.lhs.true.8, %land.lhs.true.3
  %19 = load i8*, i8** %newline, align 8
  %arrayidx14 = getelementptr i8, i8* %19, i64 0
  %20 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %20 to i32
  %cmp16 = icmp eq i32 %conv15, 13
  br i1 %cmp16, label %land.lhs.true.18, label %land.lhs.true.23

land.lhs.true.18:                                 ; preds = %land.lhs.true.13
  %21 = load i8*, i8** %newline, align 8
  %arrayidx19 = getelementptr i8, i8* %21, i64 1
  %22 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %22 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %if.end.40, label %land.lhs.true.23

land.lhs.true.23:                                 ; preds = %land.lhs.true.18, %land.lhs.true.13
  %23 = load i8*, i8** %newline, align 8
  %arrayidx24 = getelementptr i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %24 to i32
  %cmp26 = icmp eq i32 %conv25, 13
  br i1 %cmp26, label %land.lhs.true.28, label %if.then.38

land.lhs.true.28:                                 ; preds = %land.lhs.true.23
  %25 = load i8*, i8** %newline, align 8
  %arrayidx29 = getelementptr i8, i8* %25, i64 1
  %26 = load i8, i8* %arrayidx29, align 1
  %conv30 = sext i8 %26 to i32
  %cmp31 = icmp eq i32 %conv30, 10
  br i1 %cmp31, label %land.lhs.true.33, label %if.then.38

land.lhs.true.33:                                 ; preds = %land.lhs.true.28
  %27 = load i8*, i8** %newline, align 8
  %arrayidx34 = getelementptr i8, i8* %27, i64 2
  %28 = load i8, i8* %arrayidx34, align 1
  %conv35 = sext i8 %28 to i32
  %cmp36 = icmp eq i32 %conv35, 0
  br i1 %cmp36, label %if.end.40, label %if.then.38

if.then.38:                                       ; preds = %land.lhs.true.33, %land.lhs.true.28, %land.lhs.true.23
  %29 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %30 = load i8*, i8** %newline, align 8
  %call39 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.98, i32 0, i32 0), i8* %30)
  store i32 -1, i32* %retval
  br label %return

if.end.40:                                        ; preds = %land.lhs.true.33, %land.lhs.true.18, %land.lhs.true.8, %land.lhs.true, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.40
  %31 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %buffer41 = getelementptr inbounds %struct.textio, %struct.textio* %31, i32 0, i32 4
  %32 = load %struct._object*, %struct._object** %buffer41, align 8
  store %struct._object* %32, %struct._object** %_py_tmp, align 8
  %33 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp42 = icmp ne %struct._object* %33, null
  br i1 %cmp42, label %if.then.44, label %if.end.51

if.then.44:                                       ; preds = %do.body
  %34 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %buffer45 = getelementptr inbounds %struct.textio, %struct.textio* %34, i32 0, i32 4
  store %struct._object* null, %struct._object** %buffer45, align 8
  br label %do.body.46

do.body.46:                                       ; preds = %if.then.44
  %35 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %37, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp47 = icmp ne i64 %dec, 0
  br i1 %cmp47, label %if.then.49, label %if.else

if.then.49:                                       ; preds = %do.body.46
  br label %if.end.50

if.else:                                          ; preds = %do.body.46
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %40(%struct._object* %41)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else, %if.then.49
  br label %do.end

do.end:                                           ; preds = %if.end.50
  br label %if.end.51

if.end.51:                                        ; preds = %do.end, %do.body
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  br label %do.body.53

do.body.53:                                       ; preds = %do.end.52
  %42 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoding55 = getelementptr inbounds %struct.textio, %struct.textio* %42, i32 0, i32 5
  %43 = load %struct._object*, %struct._object** %encoding55, align 8
  store %struct._object* %43, %struct._object** %_py_tmp54, align 8
  %44 = load %struct._object*, %struct._object** %_py_tmp54, align 8
  %cmp56 = icmp ne %struct._object* %44, null
  br i1 %cmp56, label %if.then.58, label %if.end.72

if.then.58:                                       ; preds = %do.body.53
  %45 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoding59 = getelementptr inbounds %struct.textio, %struct.textio* %45, i32 0, i32 5
  store %struct._object* null, %struct._object** %encoding59, align 8
  br label %do.body.60

do.body.60:                                       ; preds = %if.then.58
  %46 = load %struct._object*, %struct._object** %_py_tmp54, align 8
  store %struct._object* %46, %struct._object** %_py_decref_tmp61, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  %ob_refcnt62 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0
  %48 = load i64, i64* %ob_refcnt62, align 8
  %dec63 = add i64 %48, -1
  store i64 %dec63, i64* %ob_refcnt62, align 8
  %cmp64 = icmp ne i64 %dec63, 0
  br i1 %cmp64, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %do.body.60
  br label %if.end.70

if.else.67:                                       ; preds = %do.body.60
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  %ob_type68 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type68, align 8
  %tp_dealloc69 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc69, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  call void %51(%struct._object* %52)
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.67, %if.then.66
  br label %do.end.71

do.end.71:                                        ; preds = %if.end.70
  br label %if.end.72

if.end.72:                                        ; preds = %do.end.71, %do.body.53
  br label %do.end.73

do.end.73:                                        ; preds = %if.end.72
  br label %do.body.74

do.body.74:                                       ; preds = %do.end.73
  %53 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoder = getelementptr inbounds %struct.textio, %struct.textio* %53, i32 0, i32 6
  %54 = load %struct._object*, %struct._object** %encoder, align 8
  store %struct._object* %54, %struct._object** %_py_tmp75, align 8
  %55 = load %struct._object*, %struct._object** %_py_tmp75, align 8
  %cmp76 = icmp ne %struct._object* %55, null
  br i1 %cmp76, label %if.then.78, label %if.end.92

if.then.78:                                       ; preds = %do.body.74
  %56 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoder79 = getelementptr inbounds %struct.textio, %struct.textio* %56, i32 0, i32 6
  store %struct._object* null, %struct._object** %encoder79, align 8
  br label %do.body.80

do.body.80:                                       ; preds = %if.then.78
  %57 = load %struct._object*, %struct._object** %_py_tmp75, align 8
  store %struct._object* %57, %struct._object** %_py_decref_tmp81, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  %ob_refcnt82 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 0
  %59 = load i64, i64* %ob_refcnt82, align 8
  %dec83 = add i64 %59, -1
  store i64 %dec83, i64* %ob_refcnt82, align 8
  %cmp84 = icmp ne i64 %dec83, 0
  br i1 %cmp84, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %do.body.80
  br label %if.end.90

if.else.87:                                       ; preds = %do.body.80
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  %ob_type88 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 1
  %61 = load %struct._typeobject*, %struct._typeobject** %ob_type88, align 8
  %tp_dealloc89 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %61, i32 0, i32 4
  %62 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc89, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  call void %62(%struct._object* %63)
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.87, %if.then.86
  br label %do.end.91

do.end.91:                                        ; preds = %if.end.90
  br label %if.end.92

if.end.92:                                        ; preds = %do.end.91, %do.body.74
  br label %do.end.93

do.end.93:                                        ; preds = %if.end.92
  br label %do.body.94

do.body.94:                                       ; preds = %do.end.93
  %64 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder = getelementptr inbounds %struct.textio, %struct.textio* %64, i32 0, i32 7
  %65 = load %struct._object*, %struct._object** %decoder, align 8
  store %struct._object* %65, %struct._object** %_py_tmp95, align 8
  %66 = load %struct._object*, %struct._object** %_py_tmp95, align 8
  %cmp96 = icmp ne %struct._object* %66, null
  br i1 %cmp96, label %if.then.98, label %if.end.112

if.then.98:                                       ; preds = %do.body.94
  %67 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder99 = getelementptr inbounds %struct.textio, %struct.textio* %67, i32 0, i32 7
  store %struct._object* null, %struct._object** %decoder99, align 8
  br label %do.body.100

do.body.100:                                      ; preds = %if.then.98
  %68 = load %struct._object*, %struct._object** %_py_tmp95, align 8
  store %struct._object* %68, %struct._object** %_py_decref_tmp101, align 8
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8
  %ob_refcnt102 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 0
  %70 = load i64, i64* %ob_refcnt102, align 8
  %dec103 = add i64 %70, -1
  store i64 %dec103, i64* %ob_refcnt102, align 8
  %cmp104 = icmp ne i64 %dec103, 0
  br i1 %cmp104, label %if.then.106, label %if.else.107

if.then.106:                                      ; preds = %do.body.100
  br label %if.end.110

if.else.107:                                      ; preds = %do.body.100
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8
  %ob_type108 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 1
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type108, align 8
  %tp_dealloc109 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %72, i32 0, i32 4
  %73 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc109, align 8
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8
  call void %73(%struct._object* %74)
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.107, %if.then.106
  br label %do.end.111

do.end.111:                                       ; preds = %if.end.110
  br label %if.end.112

if.end.112:                                       ; preds = %do.end.111, %do.body.94
  br label %do.end.113

do.end.113:                                       ; preds = %if.end.112
  br label %do.body.114

do.body.114:                                      ; preds = %do.end.113
  %75 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %readnl = getelementptr inbounds %struct.textio, %struct.textio* %75, i32 0, i32 8
  %76 = load %struct._object*, %struct._object** %readnl, align 8
  store %struct._object* %76, %struct._object** %_py_tmp115, align 8
  %77 = load %struct._object*, %struct._object** %_py_tmp115, align 8
  %cmp116 = icmp ne %struct._object* %77, null
  br i1 %cmp116, label %if.then.118, label %if.end.132

if.then.118:                                      ; preds = %do.body.114
  %78 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %readnl119 = getelementptr inbounds %struct.textio, %struct.textio* %78, i32 0, i32 8
  store %struct._object* null, %struct._object** %readnl119, align 8
  br label %do.body.120

do.body.120:                                      ; preds = %if.then.118
  %79 = load %struct._object*, %struct._object** %_py_tmp115, align 8
  store %struct._object* %79, %struct._object** %_py_decref_tmp121, align 8
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp121, align 8
  %ob_refcnt122 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 0
  %81 = load i64, i64* %ob_refcnt122, align 8
  %dec123 = add i64 %81, -1
  store i64 %dec123, i64* %ob_refcnt122, align 8
  %cmp124 = icmp ne i64 %dec123, 0
  br i1 %cmp124, label %if.then.126, label %if.else.127

if.then.126:                                      ; preds = %do.body.120
  br label %if.end.130

if.else.127:                                      ; preds = %do.body.120
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp121, align 8
  %ob_type128 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 1
  %83 = load %struct._typeobject*, %struct._typeobject** %ob_type128, align 8
  %tp_dealloc129 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %83, i32 0, i32 4
  %84 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc129, align 8
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp121, align 8
  call void %84(%struct._object* %85)
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.127, %if.then.126
  br label %do.end.131

do.end.131:                                       ; preds = %if.end.130
  br label %if.end.132

if.end.132:                                       ; preds = %do.end.131, %do.body.114
  br label %do.end.133

do.end.133:                                       ; preds = %if.end.132
  br label %do.body.134

do.body.134:                                      ; preds = %do.end.133
  %86 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoded_chars = getelementptr inbounds %struct.textio, %struct.textio* %86, i32 0, i32 22
  %87 = load %struct._object*, %struct._object** %decoded_chars, align 8
  store %struct._object* %87, %struct._object** %_py_tmp135, align 8
  %88 = load %struct._object*, %struct._object** %_py_tmp135, align 8
  %cmp136 = icmp ne %struct._object* %88, null
  br i1 %cmp136, label %if.then.138, label %if.end.152

if.then.138:                                      ; preds = %do.body.134
  %89 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoded_chars139 = getelementptr inbounds %struct.textio, %struct.textio* %89, i32 0, i32 22
  store %struct._object* null, %struct._object** %decoded_chars139, align 8
  br label %do.body.140

do.body.140:                                      ; preds = %if.then.138
  %90 = load %struct._object*, %struct._object** %_py_tmp135, align 8
  store %struct._object* %90, %struct._object** %_py_decref_tmp141, align 8
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp141, align 8
  %ob_refcnt142 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 0
  %92 = load i64, i64* %ob_refcnt142, align 8
  %dec143 = add i64 %92, -1
  store i64 %dec143, i64* %ob_refcnt142, align 8
  %cmp144 = icmp ne i64 %dec143, 0
  br i1 %cmp144, label %if.then.146, label %if.else.147

if.then.146:                                      ; preds = %do.body.140
  br label %if.end.150

if.else.147:                                      ; preds = %do.body.140
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp141, align 8
  %ob_type148 = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 1
  %94 = load %struct._typeobject*, %struct._typeobject** %ob_type148, align 8
  %tp_dealloc149 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %94, i32 0, i32 4
  %95 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc149, align 8
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp141, align 8
  call void %95(%struct._object* %96)
  br label %if.end.150

if.end.150:                                       ; preds = %if.else.147, %if.then.146
  br label %do.end.151

do.end.151:                                       ; preds = %if.end.150
  br label %if.end.152

if.end.152:                                       ; preds = %do.end.151, %do.body.134
  br label %do.end.153

do.end.153:                                       ; preds = %if.end.152
  br label %do.body.154

do.body.154:                                      ; preds = %do.end.153
  %97 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %pending_bytes = getelementptr inbounds %struct.textio, %struct.textio* %97, i32 0, i32 24
  %98 = load %struct._object*, %struct._object** %pending_bytes, align 8
  store %struct._object* %98, %struct._object** %_py_tmp155, align 8
  %99 = load %struct._object*, %struct._object** %_py_tmp155, align 8
  %cmp156 = icmp ne %struct._object* %99, null
  br i1 %cmp156, label %if.then.158, label %if.end.172

if.then.158:                                      ; preds = %do.body.154
  %100 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %pending_bytes159 = getelementptr inbounds %struct.textio, %struct.textio* %100, i32 0, i32 24
  store %struct._object* null, %struct._object** %pending_bytes159, align 8
  br label %do.body.160

do.body.160:                                      ; preds = %if.then.158
  %101 = load %struct._object*, %struct._object** %_py_tmp155, align 8
  store %struct._object* %101, %struct._object** %_py_decref_tmp161, align 8
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp161, align 8
  %ob_refcnt162 = getelementptr inbounds %struct._object, %struct._object* %102, i32 0, i32 0
  %103 = load i64, i64* %ob_refcnt162, align 8
  %dec163 = add i64 %103, -1
  store i64 %dec163, i64* %ob_refcnt162, align 8
  %cmp164 = icmp ne i64 %dec163, 0
  br i1 %cmp164, label %if.then.166, label %if.else.167

if.then.166:                                      ; preds = %do.body.160
  br label %if.end.170

if.else.167:                                      ; preds = %do.body.160
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp161, align 8
  %ob_type168 = getelementptr inbounds %struct._object, %struct._object* %104, i32 0, i32 1
  %105 = load %struct._typeobject*, %struct._typeobject** %ob_type168, align 8
  %tp_dealloc169 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %105, i32 0, i32 4
  %106 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc169, align 8
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp161, align 8
  call void %106(%struct._object* %107)
  br label %if.end.170

if.end.170:                                       ; preds = %if.else.167, %if.then.166
  br label %do.end.171

do.end.171:                                       ; preds = %if.end.170
  br label %if.end.172

if.end.172:                                       ; preds = %do.end.171, %do.body.154
  br label %do.end.173

do.end.173:                                       ; preds = %if.end.172
  br label %do.body.174

do.body.174:                                      ; preds = %do.end.173
  %108 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %snapshot = getelementptr inbounds %struct.textio, %struct.textio* %108, i32 0, i32 26
  %109 = load %struct._object*, %struct._object** %snapshot, align 8
  store %struct._object* %109, %struct._object** %_py_tmp175, align 8
  %110 = load %struct._object*, %struct._object** %_py_tmp175, align 8
  %cmp176 = icmp ne %struct._object* %110, null
  br i1 %cmp176, label %if.then.178, label %if.end.192

if.then.178:                                      ; preds = %do.body.174
  %111 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %snapshot179 = getelementptr inbounds %struct.textio, %struct.textio* %111, i32 0, i32 26
  store %struct._object* null, %struct._object** %snapshot179, align 8
  br label %do.body.180

do.body.180:                                      ; preds = %if.then.178
  %112 = load %struct._object*, %struct._object** %_py_tmp175, align 8
  store %struct._object* %112, %struct._object** %_py_decref_tmp181, align 8
  %113 = load %struct._object*, %struct._object** %_py_decref_tmp181, align 8
  %ob_refcnt182 = getelementptr inbounds %struct._object, %struct._object* %113, i32 0, i32 0
  %114 = load i64, i64* %ob_refcnt182, align 8
  %dec183 = add i64 %114, -1
  store i64 %dec183, i64* %ob_refcnt182, align 8
  %cmp184 = icmp ne i64 %dec183, 0
  br i1 %cmp184, label %if.then.186, label %if.else.187

if.then.186:                                      ; preds = %do.body.180
  br label %if.end.190

if.else.187:                                      ; preds = %do.body.180
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp181, align 8
  %ob_type188 = getelementptr inbounds %struct._object, %struct._object* %115, i32 0, i32 1
  %116 = load %struct._typeobject*, %struct._typeobject** %ob_type188, align 8
  %tp_dealloc189 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %116, i32 0, i32 4
  %117 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc189, align 8
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp181, align 8
  call void %117(%struct._object* %118)
  br label %if.end.190

if.end.190:                                       ; preds = %if.else.187, %if.then.186
  br label %do.end.191

do.end.191:                                       ; preds = %if.end.190
  br label %if.end.192

if.end.192:                                       ; preds = %do.end.191, %do.body.174
  br label %do.end.193

do.end.193:                                       ; preds = %if.end.192
  br label %do.body.194

do.body.194:                                      ; preds = %do.end.193
  %119 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %errors196 = getelementptr inbounds %struct.textio, %struct.textio* %119, i32 0, i32 9
  %120 = load %struct._object*, %struct._object** %errors196, align 8
  store %struct._object* %120, %struct._object** %_py_tmp195, align 8
  %121 = load %struct._object*, %struct._object** %_py_tmp195, align 8
  %cmp197 = icmp ne %struct._object* %121, null
  br i1 %cmp197, label %if.then.199, label %if.end.213

if.then.199:                                      ; preds = %do.body.194
  %122 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %errors200 = getelementptr inbounds %struct.textio, %struct.textio* %122, i32 0, i32 9
  store %struct._object* null, %struct._object** %errors200, align 8
  br label %do.body.201

do.body.201:                                      ; preds = %if.then.199
  %123 = load %struct._object*, %struct._object** %_py_tmp195, align 8
  store %struct._object* %123, %struct._object** %_py_decref_tmp202, align 8
  %124 = load %struct._object*, %struct._object** %_py_decref_tmp202, align 8
  %ob_refcnt203 = getelementptr inbounds %struct._object, %struct._object* %124, i32 0, i32 0
  %125 = load i64, i64* %ob_refcnt203, align 8
  %dec204 = add i64 %125, -1
  store i64 %dec204, i64* %ob_refcnt203, align 8
  %cmp205 = icmp ne i64 %dec204, 0
  br i1 %cmp205, label %if.then.207, label %if.else.208

if.then.207:                                      ; preds = %do.body.201
  br label %if.end.211

if.else.208:                                      ; preds = %do.body.201
  %126 = load %struct._object*, %struct._object** %_py_decref_tmp202, align 8
  %ob_type209 = getelementptr inbounds %struct._object, %struct._object* %126, i32 0, i32 1
  %127 = load %struct._typeobject*, %struct._typeobject** %ob_type209, align 8
  %tp_dealloc210 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %127, i32 0, i32 4
  %128 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc210, align 8
  %129 = load %struct._object*, %struct._object** %_py_decref_tmp202, align 8
  call void %128(%struct._object* %129)
  br label %if.end.211

if.end.211:                                       ; preds = %if.else.208, %if.then.207
  br label %do.end.212

do.end.212:                                       ; preds = %if.end.211
  br label %if.end.213

if.end.213:                                       ; preds = %do.end.212, %do.body.194
  br label %do.end.214

do.end.214:                                       ; preds = %if.end.213
  br label %do.body.215

do.body.215:                                      ; preds = %do.end.214
  %130 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %raw217 = getelementptr inbounds %struct.textio, %struct.textio* %130, i32 0, i32 28
  %131 = load %struct._object*, %struct._object** %raw217, align 8
  store %struct._object* %131, %struct._object** %_py_tmp216, align 8
  %132 = load %struct._object*, %struct._object** %_py_tmp216, align 8
  %cmp218 = icmp ne %struct._object* %132, null
  br i1 %cmp218, label %if.then.220, label %if.end.234

if.then.220:                                      ; preds = %do.body.215
  %133 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %raw221 = getelementptr inbounds %struct.textio, %struct.textio* %133, i32 0, i32 28
  store %struct._object* null, %struct._object** %raw221, align 8
  br label %do.body.222

do.body.222:                                      ; preds = %if.then.220
  %134 = load %struct._object*, %struct._object** %_py_tmp216, align 8
  store %struct._object* %134, %struct._object** %_py_decref_tmp223, align 8
  %135 = load %struct._object*, %struct._object** %_py_decref_tmp223, align 8
  %ob_refcnt224 = getelementptr inbounds %struct._object, %struct._object* %135, i32 0, i32 0
  %136 = load i64, i64* %ob_refcnt224, align 8
  %dec225 = add i64 %136, -1
  store i64 %dec225, i64* %ob_refcnt224, align 8
  %cmp226 = icmp ne i64 %dec225, 0
  br i1 %cmp226, label %if.then.228, label %if.else.229

if.then.228:                                      ; preds = %do.body.222
  br label %if.end.232

if.else.229:                                      ; preds = %do.body.222
  %137 = load %struct._object*, %struct._object** %_py_decref_tmp223, align 8
  %ob_type230 = getelementptr inbounds %struct._object, %struct._object* %137, i32 0, i32 1
  %138 = load %struct._typeobject*, %struct._typeobject** %ob_type230, align 8
  %tp_dealloc231 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %138, i32 0, i32 4
  %139 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc231, align 8
  %140 = load %struct._object*, %struct._object** %_py_decref_tmp223, align 8
  call void %139(%struct._object* %140)
  br label %if.end.232

if.end.232:                                       ; preds = %if.else.229, %if.then.228
  br label %do.end.233

do.end.233:                                       ; preds = %if.end.232
  br label %if.end.234

if.end.234:                                       ; preds = %do.end.233, %do.body.215
  br label %do.end.235

do.end.235:                                       ; preds = %if.end.234
  %141 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoded_chars_used = getelementptr inbounds %struct.textio, %struct.textio* %141, i32 0, i32 23
  store i64 0, i64* %decoded_chars_used, align 8
  %142 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %pending_bytes_count = getelementptr inbounds %struct.textio, %struct.textio* %142, i32 0, i32 25
  store i64 0, i64* %pending_bytes_count, align 8
  %143 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encodefunc = getelementptr inbounds %struct.textio, %struct.textio* %143, i32 0, i32 20
  store %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)** %encodefunc, align 8
  %144 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %b2cratio = getelementptr inbounds %struct.textio, %struct.textio* %144, i32 0, i32 27
  store double 0.000000e+00, double* %b2cratio, align 8
  %145 = load i8*, i8** %encoding, align 8
  %cmp236 = icmp eq i8* %145, null
  br i1 %cmp236, label %if.then.238, label %if.end.312

if.then.238:                                      ; preds = %do.end.235
  %call239 = call %struct._PyIO_State* @_PyIO_get_module_state()
  store %struct._PyIO_State* %call239, %struct._PyIO_State** %state, align 8
  %146 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8
  %cmp240 = icmp eq %struct._PyIO_State* %146, null
  br i1 %cmp240, label %if.then.242, label %if.end.243

if.then.242:                                      ; preds = %if.then.238
  br label %error

if.end.243:                                       ; preds = %if.then.238
  %147 = load %struct._object*, %struct._object** %buffer, align 8
  %call244 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %147, %struct._Py_Identifier* @PyId_fileno, i8* null)
  store %struct._object* %call244, %struct._object** %fileno, align 8
  %148 = load %struct._object*, %struct._object** %fileno, align 8
  %cmp245 = icmp eq %struct._object* %148, null
  br i1 %cmp245, label %if.then.247, label %if.else.255

if.then.247:                                      ; preds = %if.end.243
  %149 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %call248 = call i32 @PyErr_ExceptionMatches(%struct._object* %149)
  %tobool249 = icmp ne i32 %call248, 0
  br i1 %tobool249, label %if.then.252, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.247
  %150 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8
  %unsupported_operation = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %150, i32 0, i32 2
  %151 = load %struct._object*, %struct._object** %unsupported_operation, align 8
  %call250 = call i32 @PyErr_ExceptionMatches(%struct._object* %151)
  %tobool251 = icmp ne i32 %call250, 0
  br i1 %tobool251, label %if.then.252, label %if.else.253

if.then.252:                                      ; preds = %lor.lhs.false, %if.then.247
  call void @PyErr_Clear()
  br label %if.end.254

if.else.253:                                      ; preds = %lor.lhs.false
  br label %error

if.end.254:                                       ; preds = %if.then.252
  br label %if.end.311

if.else.255:                                      ; preds = %if.end.243
  %152 = load %struct._object*, %struct._object** %fileno, align 8
  %call256 = call i32 @_PyLong_AsInt(%struct._object* %152)
  store i32 %call256, i32* %fd, align 4
  br label %do.body.257

do.body.257:                                      ; preds = %if.else.255
  %153 = load %struct._object*, %struct._object** %fileno, align 8
  store %struct._object* %153, %struct._object** %_py_decref_tmp258, align 8
  %154 = load %struct._object*, %struct._object** %_py_decref_tmp258, align 8
  %ob_refcnt259 = getelementptr inbounds %struct._object, %struct._object* %154, i32 0, i32 0
  %155 = load i64, i64* %ob_refcnt259, align 8
  %dec260 = add i64 %155, -1
  store i64 %dec260, i64* %ob_refcnt259, align 8
  %cmp261 = icmp ne i64 %dec260, 0
  br i1 %cmp261, label %if.then.263, label %if.else.264

if.then.263:                                      ; preds = %do.body.257
  br label %if.end.267

if.else.264:                                      ; preds = %do.body.257
  %156 = load %struct._object*, %struct._object** %_py_decref_tmp258, align 8
  %ob_type265 = getelementptr inbounds %struct._object, %struct._object* %156, i32 0, i32 1
  %157 = load %struct._typeobject*, %struct._typeobject** %ob_type265, align 8
  %tp_dealloc266 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %157, i32 0, i32 4
  %158 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc266, align 8
  %159 = load %struct._object*, %struct._object** %_py_decref_tmp258, align 8
  call void %158(%struct._object* %159)
  br label %if.end.267

if.end.267:                                       ; preds = %if.else.264, %if.then.263
  br label %do.end.268

do.end.268:                                       ; preds = %if.end.267
  %160 = load i32, i32* %fd, align 4
  %cmp269 = icmp eq i32 %160, -1
  br i1 %cmp269, label %land.lhs.true.271, label %if.end.275

land.lhs.true.271:                                ; preds = %do.end.268
  %call272 = call %struct._object* @PyErr_Occurred()
  %tobool273 = icmp ne %struct._object* %call272, null
  br i1 %tobool273, label %if.then.274, label %if.end.275

if.then.274:                                      ; preds = %land.lhs.true.271
  br label %error

if.end.275:                                       ; preds = %land.lhs.true.271, %do.end.268
  %161 = load i32, i32* %fd, align 4
  %call276 = call %struct._object* @_Py_device_encoding(i32 %161)
  %162 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoding277 = getelementptr inbounds %struct.textio, %struct.textio* %162, i32 0, i32 5
  store %struct._object* %call276, %struct._object** %encoding277, align 8
  %163 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoding278 = getelementptr inbounds %struct.textio, %struct.textio* %163, i32 0, i32 5
  %164 = load %struct._object*, %struct._object** %encoding278, align 8
  %cmp279 = icmp eq %struct._object* %164, null
  br i1 %cmp279, label %if.then.281, label %if.else.282

if.then.281:                                      ; preds = %if.end.275
  br label %error

if.else.282:                                      ; preds = %if.end.275
  %165 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoding283 = getelementptr inbounds %struct.textio, %struct.textio* %165, i32 0, i32 5
  %166 = load %struct._object*, %struct._object** %encoding283, align 8
  %ob_type284 = getelementptr inbounds %struct._object, %struct._object* %166, i32 0, i32 1
  %167 = load %struct._typeobject*, %struct._typeobject** %ob_type284, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %167, i32 0, i32 19
  %168 = load i64, i64* %tp_flags, align 8
  %and = and i64 %168, 268435456
  %cmp285 = icmp ne i64 %and, 0
  br i1 %cmp285, label %if.end.309, label %if.then.287

if.then.287:                                      ; preds = %if.else.282
  br label %do.body.288

do.body.288:                                      ; preds = %if.then.287
  %169 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoding290 = getelementptr inbounds %struct.textio, %struct.textio* %169, i32 0, i32 5
  %170 = load %struct._object*, %struct._object** %encoding290, align 8
  store %struct._object* %170, %struct._object** %_py_tmp289, align 8
  %171 = load %struct._object*, %struct._object** %_py_tmp289, align 8
  %cmp291 = icmp ne %struct._object* %171, null
  br i1 %cmp291, label %if.then.293, label %if.end.307

if.then.293:                                      ; preds = %do.body.288
  %172 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoding294 = getelementptr inbounds %struct.textio, %struct.textio* %172, i32 0, i32 5
  store %struct._object* null, %struct._object** %encoding294, align 8
  br label %do.body.295

do.body.295:                                      ; preds = %if.then.293
  %173 = load %struct._object*, %struct._object** %_py_tmp289, align 8
  store %struct._object* %173, %struct._object** %_py_decref_tmp296, align 8
  %174 = load %struct._object*, %struct._object** %_py_decref_tmp296, align 8
  %ob_refcnt297 = getelementptr inbounds %struct._object, %struct._object* %174, i32 0, i32 0
  %175 = load i64, i64* %ob_refcnt297, align 8
  %dec298 = add i64 %175, -1
  store i64 %dec298, i64* %ob_refcnt297, align 8
  %cmp299 = icmp ne i64 %dec298, 0
  br i1 %cmp299, label %if.then.301, label %if.else.302

if.then.301:                                      ; preds = %do.body.295
  br label %if.end.305

if.else.302:                                      ; preds = %do.body.295
  %176 = load %struct._object*, %struct._object** %_py_decref_tmp296, align 8
  %ob_type303 = getelementptr inbounds %struct._object, %struct._object* %176, i32 0, i32 1
  %177 = load %struct._typeobject*, %struct._typeobject** %ob_type303, align 8
  %tp_dealloc304 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %177, i32 0, i32 4
  %178 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc304, align 8
  %179 = load %struct._object*, %struct._object** %_py_decref_tmp296, align 8
  call void %178(%struct._object* %179)
  br label %if.end.305

if.end.305:                                       ; preds = %if.else.302, %if.then.301
  br label %do.end.306

do.end.306:                                       ; preds = %if.end.305
  br label %if.end.307

if.end.307:                                       ; preds = %do.end.306, %do.body.288
  br label %do.end.308

do.end.308:                                       ; preds = %if.end.307
  br label %if.end.309

if.end.309:                                       ; preds = %do.end.308, %if.else.282
  br label %if.end.310

if.end.310:                                       ; preds = %if.end.309
  br label %if.end.311

if.end.311:                                       ; preds = %if.end.310, %if.end.254
  br label %if.end.312

if.end.312:                                       ; preds = %if.end.311, %do.end.235
  %180 = load i8*, i8** %encoding, align 8
  %cmp313 = icmp eq i8* %180, null
  br i1 %cmp313, label %land.lhs.true.315, label %if.end.381

land.lhs.true.315:                                ; preds = %if.end.312
  %181 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoding316 = getelementptr inbounds %struct.textio, %struct.textio* %181, i32 0, i32 5
  %182 = load %struct._object*, %struct._object** %encoding316, align 8
  %cmp317 = icmp eq %struct._object* %182, null
  br i1 %cmp317, label %if.then.319, label %if.end.381

if.then.319:                                      ; preds = %land.lhs.true.315
  %183 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8
  %call320 = call %struct._object* @_PyIO_get_locale_module(%struct._PyIO_State* %183)
  store %struct._object* %call320, %struct._object** %locale_module, align 8
  %184 = load %struct._object*, %struct._object** %locale_module, align 8
  %cmp321 = icmp eq %struct._object* %184, null
  br i1 %cmp321, label %if.then.323, label %if.end.324

if.then.323:                                      ; preds = %if.then.319
  br label %catch_ImportError

if.end.324:                                       ; preds = %if.then.319
  %185 = load %struct._object*, %struct._object** %locale_module, align 8
  %call325 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %185, %struct._Py_Identifier* @PyId_getpreferredencoding, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0))
  %186 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoding326 = getelementptr inbounds %struct.textio, %struct.textio* %186, i32 0, i32 5
  store %struct._object* %call325, %struct._object** %encoding326, align 8
  br label %do.body.327

do.body.327:                                      ; preds = %if.end.324
  %187 = load %struct._object*, %struct._object** %locale_module, align 8
  store %struct._object* %187, %struct._object** %_py_decref_tmp328, align 8
  %188 = load %struct._object*, %struct._object** %_py_decref_tmp328, align 8
  %ob_refcnt329 = getelementptr inbounds %struct._object, %struct._object* %188, i32 0, i32 0
  %189 = load i64, i64* %ob_refcnt329, align 8
  %dec330 = add i64 %189, -1
  store i64 %dec330, i64* %ob_refcnt329, align 8
  %cmp331 = icmp ne i64 %dec330, 0
  br i1 %cmp331, label %if.then.333, label %if.else.334

if.then.333:                                      ; preds = %do.body.327
  br label %if.end.337

if.else.334:                                      ; preds = %do.body.327
  %190 = load %struct._object*, %struct._object** %_py_decref_tmp328, align 8
  %ob_type335 = getelementptr inbounds %struct._object, %struct._object* %190, i32 0, i32 1
  %191 = load %struct._typeobject*, %struct._typeobject** %ob_type335, align 8
  %tp_dealloc336 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %191, i32 0, i32 4
  %192 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc336, align 8
  %193 = load %struct._object*, %struct._object** %_py_decref_tmp328, align 8
  call void %192(%struct._object* %193)
  br label %if.end.337

if.end.337:                                       ; preds = %if.else.334, %if.then.333
  br label %do.end.338

do.end.338:                                       ; preds = %if.end.337
  %194 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoding339 = getelementptr inbounds %struct.textio, %struct.textio* %194, i32 0, i32 5
  %195 = load %struct._object*, %struct._object** %encoding339, align 8
  %cmp340 = icmp eq %struct._object* %195, null
  br i1 %cmp340, label %if.then.342, label %if.else.350

if.then.342:                                      ; preds = %do.end.338
  br label %catch_ImportError

catch_ImportError:                                ; preds = %if.then.342, %if.then.323
  %196 = load %struct._object*, %struct._object** @PyExc_ImportError, align 8
  %call343 = call i32 @PyErr_ExceptionMatches(%struct._object* %196)
  %tobool344 = icmp ne i32 %call343, 0
  br i1 %tobool344, label %if.then.345, label %if.else.348

if.then.345:                                      ; preds = %catch_ImportError
  call void @PyErr_Clear()
  %call346 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i32 0, i32 0))
  %197 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoding347 = getelementptr inbounds %struct.textio, %struct.textio* %197, i32 0, i32 5
  store %struct._object* %call346, %struct._object** %encoding347, align 8
  br label %if.end.349

if.else.348:                                      ; preds = %catch_ImportError
  br label %error

if.end.349:                                       ; preds = %if.then.345
  br label %if.end.380

if.else.350:                                      ; preds = %do.end.338
  %198 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoding351 = getelementptr inbounds %struct.textio, %struct.textio* %198, i32 0, i32 5
  %199 = load %struct._object*, %struct._object** %encoding351, align 8
  %ob_type352 = getelementptr inbounds %struct._object, %struct._object* %199, i32 0, i32 1
  %200 = load %struct._typeobject*, %struct._typeobject** %ob_type352, align 8
  %tp_flags353 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %200, i32 0, i32 19
  %201 = load i64, i64* %tp_flags353, align 8
  %and354 = and i64 %201, 268435456
  %cmp355 = icmp ne i64 %and354, 0
  br i1 %cmp355, label %if.end.379, label %if.then.357

if.then.357:                                      ; preds = %if.else.350
  br label %do.body.358

do.body.358:                                      ; preds = %if.then.357
  %202 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoding360 = getelementptr inbounds %struct.textio, %struct.textio* %202, i32 0, i32 5
  %203 = load %struct._object*, %struct._object** %encoding360, align 8
  store %struct._object* %203, %struct._object** %_py_tmp359, align 8
  %204 = load %struct._object*, %struct._object** %_py_tmp359, align 8
  %cmp361 = icmp ne %struct._object* %204, null
  br i1 %cmp361, label %if.then.363, label %if.end.377

if.then.363:                                      ; preds = %do.body.358
  %205 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoding364 = getelementptr inbounds %struct.textio, %struct.textio* %205, i32 0, i32 5
  store %struct._object* null, %struct._object** %encoding364, align 8
  br label %do.body.365

do.body.365:                                      ; preds = %if.then.363
  %206 = load %struct._object*, %struct._object** %_py_tmp359, align 8
  store %struct._object* %206, %struct._object** %_py_decref_tmp366, align 8
  %207 = load %struct._object*, %struct._object** %_py_decref_tmp366, align 8
  %ob_refcnt367 = getelementptr inbounds %struct._object, %struct._object* %207, i32 0, i32 0
  %208 = load i64, i64* %ob_refcnt367, align 8
  %dec368 = add i64 %208, -1
  store i64 %dec368, i64* %ob_refcnt367, align 8
  %cmp369 = icmp ne i64 %dec368, 0
  br i1 %cmp369, label %if.then.371, label %if.else.372

if.then.371:                                      ; preds = %do.body.365
  br label %if.end.375

if.else.372:                                      ; preds = %do.body.365
  %209 = load %struct._object*, %struct._object** %_py_decref_tmp366, align 8
  %ob_type373 = getelementptr inbounds %struct._object, %struct._object* %209, i32 0, i32 1
  %210 = load %struct._typeobject*, %struct._typeobject** %ob_type373, align 8
  %tp_dealloc374 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %210, i32 0, i32 4
  %211 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc374, align 8
  %212 = load %struct._object*, %struct._object** %_py_decref_tmp366, align 8
  call void %211(%struct._object* %212)
  br label %if.end.375

if.end.375:                                       ; preds = %if.else.372, %if.then.371
  br label %do.end.376

do.end.376:                                       ; preds = %if.end.375
  br label %if.end.377

if.end.377:                                       ; preds = %do.end.376, %do.body.358
  br label %do.end.378

do.end.378:                                       ; preds = %if.end.377
  br label %if.end.379

if.end.379:                                       ; preds = %do.end.378, %if.else.350
  br label %if.end.380

if.end.380:                                       ; preds = %if.end.379, %if.end.349
  br label %if.end.381

if.end.381:                                       ; preds = %if.end.380, %land.lhs.true.315, %if.end.312
  %213 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoding382 = getelementptr inbounds %struct.textio, %struct.textio* %213, i32 0, i32 5
  %214 = load %struct._object*, %struct._object** %encoding382, align 8
  %cmp383 = icmp ne %struct._object* %214, null
  br i1 %cmp383, label %if.then.385, label %if.else.392

if.then.385:                                      ; preds = %if.end.381
  %215 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoding386 = getelementptr inbounds %struct.textio, %struct.textio* %215, i32 0, i32 5
  %216 = load %struct._object*, %struct._object** %encoding386, align 8
  %call387 = call i8* @PyUnicode_AsUTF8(%struct._object* %216)
  store i8* %call387, i8** %encoding, align 8
  %217 = load i8*, i8** %encoding, align 8
  %cmp388 = icmp eq i8* %217, null
  br i1 %cmp388, label %if.then.390, label %if.end.391

if.then.390:                                      ; preds = %if.then.385
  br label %error

if.end.391:                                       ; preds = %if.then.385
  br label %if.end.405

if.else.392:                                      ; preds = %if.end.381
  %218 = load i8*, i8** %encoding, align 8
  %cmp393 = icmp ne i8* %218, null
  br i1 %cmp393, label %if.then.395, label %if.else.403

if.then.395:                                      ; preds = %if.else.392
  %219 = load i8*, i8** %encoding, align 8
  %call396 = call %struct._object* @PyUnicode_FromString(i8* %219)
  %220 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoding397 = getelementptr inbounds %struct.textio, %struct.textio* %220, i32 0, i32 5
  store %struct._object* %call396, %struct._object** %encoding397, align 8
  %221 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoding398 = getelementptr inbounds %struct.textio, %struct.textio* %221, i32 0, i32 5
  %222 = load %struct._object*, %struct._object** %encoding398, align 8
  %cmp399 = icmp eq %struct._object* %222, null
  br i1 %cmp399, label %if.then.401, label %if.end.402

if.then.401:                                      ; preds = %if.then.395
  br label %error

if.end.402:                                       ; preds = %if.then.395
  br label %if.end.404

if.else.403:                                      ; preds = %if.else.392
  %223 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  call void @PyErr_SetString(%struct._object* %223, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.100, i32 0, i32 0))
  br label %if.end.404

if.end.404:                                       ; preds = %if.else.403, %if.end.402
  br label %if.end.405

if.end.405:                                       ; preds = %if.end.404, %if.end.391
  %224 = load i8*, i8** %encoding, align 8
  %call406 = call %struct._object* @_PyCodec_LookupTextEncoding(i8* %224, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.101, i32 0, i32 0))
  store %struct._object* %call406, %struct._object** %codec_info, align 8
  %225 = load %struct._object*, %struct._object** %codec_info, align 8
  %cmp407 = icmp eq %struct._object* %225, null
  br i1 %cmp407, label %if.then.409, label %if.end.431

if.then.409:                                      ; preds = %if.end.405
  br label %do.body.410

do.body.410:                                      ; preds = %if.then.409
  %226 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoding412 = getelementptr inbounds %struct.textio, %struct.textio* %226, i32 0, i32 5
  %227 = load %struct._object*, %struct._object** %encoding412, align 8
  store %struct._object* %227, %struct._object** %_py_tmp411, align 8
  %228 = load %struct._object*, %struct._object** %_py_tmp411, align 8
  %cmp413 = icmp ne %struct._object* %228, null
  br i1 %cmp413, label %if.then.415, label %if.end.429

if.then.415:                                      ; preds = %do.body.410
  %229 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoding416 = getelementptr inbounds %struct.textio, %struct.textio* %229, i32 0, i32 5
  store %struct._object* null, %struct._object** %encoding416, align 8
  br label %do.body.417

do.body.417:                                      ; preds = %if.then.415
  %230 = load %struct._object*, %struct._object** %_py_tmp411, align 8
  store %struct._object* %230, %struct._object** %_py_decref_tmp418, align 8
  %231 = load %struct._object*, %struct._object** %_py_decref_tmp418, align 8
  %ob_refcnt419 = getelementptr inbounds %struct._object, %struct._object* %231, i32 0, i32 0
  %232 = load i64, i64* %ob_refcnt419, align 8
  %dec420 = add i64 %232, -1
  store i64 %dec420, i64* %ob_refcnt419, align 8
  %cmp421 = icmp ne i64 %dec420, 0
  br i1 %cmp421, label %if.then.423, label %if.else.424

if.then.423:                                      ; preds = %do.body.417
  br label %if.end.427

if.else.424:                                      ; preds = %do.body.417
  %233 = load %struct._object*, %struct._object** %_py_decref_tmp418, align 8
  %ob_type425 = getelementptr inbounds %struct._object, %struct._object* %233, i32 0, i32 1
  %234 = load %struct._typeobject*, %struct._typeobject** %ob_type425, align 8
  %tp_dealloc426 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %234, i32 0, i32 4
  %235 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc426, align 8
  %236 = load %struct._object*, %struct._object** %_py_decref_tmp418, align 8
  call void %235(%struct._object* %236)
  br label %if.end.427

if.end.427:                                       ; preds = %if.else.424, %if.then.423
  br label %do.end.428

do.end.428:                                       ; preds = %if.end.427
  br label %if.end.429

if.end.429:                                       ; preds = %do.end.428, %do.body.410
  br label %do.end.430

do.end.430:                                       ; preds = %if.end.429
  br label %error

if.end.431:                                       ; preds = %if.end.405
  %237 = load i8*, i8** %errors, align 8
  %cmp432 = icmp eq i8* %237, null
  br i1 %cmp432, label %if.then.434, label %if.end.435

if.then.434:                                      ; preds = %if.end.431
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i8** %errors, align 8
  br label %if.end.435

if.end.435:                                       ; preds = %if.then.434, %if.end.431
  %238 = load i8*, i8** %errors, align 8
  %call436 = call %struct._object* @PyBytes_FromString(i8* %238)
  %239 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %errors437 = getelementptr inbounds %struct.textio, %struct.textio* %239, i32 0, i32 9
  store %struct._object* %call436, %struct._object** %errors437, align 8
  %240 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %errors438 = getelementptr inbounds %struct.textio, %struct.textio* %240, i32 0, i32 9
  %241 = load %struct._object*, %struct._object** %errors438, align 8
  %cmp439 = icmp eq %struct._object* %241, null
  br i1 %cmp439, label %if.then.441, label %if.end.442

if.then.441:                                      ; preds = %if.end.435
  br label %error

if.end.442:                                       ; preds = %if.end.435
  %242 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %chunk_size = getelementptr inbounds %struct.textio, %struct.textio* %242, i32 0, i32 3
  store i64 8192, i64* %chunk_size, align 8
  %243 = load i8*, i8** %newline, align 8
  %cmp443 = icmp eq i8* %243, null
  br i1 %cmp443, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.442
  %244 = load i8*, i8** %newline, align 8
  %arrayidx445 = getelementptr i8, i8* %244, i64 0
  %245 = load i8, i8* %arrayidx445, align 1
  %conv446 = sext i8 %245 to i32
  %cmp447 = icmp eq i32 %conv446, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.442
  %246 = phi i1 [ true, %if.end.442 ], [ %cmp447, %lor.rhs ]
  %lor.ext = zext i1 %246 to i32
  %conv449 = trunc i32 %lor.ext to i8
  %247 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %readuniversal = getelementptr inbounds %struct.textio, %struct.textio* %247, i32 0, i32 13
  store i8 %conv449, i8* %readuniversal, align 1
  %248 = load i32, i32* %line_buffering, align 4
  %conv450 = trunc i32 %248 to i8
  %249 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %line_buffering451 = getelementptr inbounds %struct.textio, %struct.textio* %249, i32 0, i32 11
  store i8 %conv450, i8* %line_buffering451, align 1
  %250 = load i32, i32* %write_through, align 4
  %conv452 = trunc i32 %250 to i8
  %251 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %write_through453 = getelementptr inbounds %struct.textio, %struct.textio* %251, i32 0, i32 12
  store i8 %conv452, i8* %write_through453, align 1
  %252 = load i8*, i8** %newline, align 8
  %cmp454 = icmp eq i8* %252, null
  %conv455 = zext i1 %cmp454 to i32
  %conv456 = trunc i32 %conv455 to i8
  %253 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %readtranslate = getelementptr inbounds %struct.textio, %struct.textio* %253, i32 0, i32 14
  store i8 %conv456, i8* %readtranslate, align 1
  %254 = load i8*, i8** %newline, align 8
  %tobool457 = icmp ne i8* %254, null
  br i1 %tobool457, label %if.then.458, label %if.end.466

if.then.458:                                      ; preds = %lor.end
  %255 = load i8*, i8** %newline, align 8
  %call459 = call %struct._object* @PyUnicode_FromString(i8* %255)
  %256 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %readnl460 = getelementptr inbounds %struct.textio, %struct.textio* %256, i32 0, i32 8
  store %struct._object* %call459, %struct._object** %readnl460, align 8
  %257 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %readnl461 = getelementptr inbounds %struct.textio, %struct.textio* %257, i32 0, i32 8
  %258 = load %struct._object*, %struct._object** %readnl461, align 8
  %cmp462 = icmp eq %struct._object* %258, null
  br i1 %cmp462, label %if.then.464, label %if.end.465

if.then.464:                                      ; preds = %if.then.458
  br label %error

if.end.465:                                       ; preds = %if.then.458
  br label %if.end.466

if.end.466:                                       ; preds = %if.end.465, %lor.end
  %259 = load i8*, i8** %newline, align 8
  %cmp467 = icmp eq i8* %259, null
  br i1 %cmp467, label %lor.end.474, label %lor.rhs.469

lor.rhs.469:                                      ; preds = %if.end.466
  %260 = load i8*, i8** %newline, align 8
  %arrayidx470 = getelementptr i8, i8* %260, i64 0
  %261 = load i8, i8* %arrayidx470, align 1
  %conv471 = sext i8 %261 to i32
  %cmp472 = icmp ne i32 %conv471, 0
  br label %lor.end.474

lor.end.474:                                      ; preds = %lor.rhs.469, %if.end.466
  %262 = phi i1 [ true, %if.end.466 ], [ %cmp472, %lor.rhs.469 ]
  %lor.ext475 = zext i1 %262 to i32
  %conv476 = trunc i32 %lor.ext475 to i8
  %263 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %writetranslate = getelementptr inbounds %struct.textio, %struct.textio* %263, i32 0, i32 15
  store i8 %conv476, i8* %writetranslate, align 1
  %264 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %readuniversal477 = getelementptr inbounds %struct.textio, %struct.textio* %264, i32 0, i32 13
  %265 = load i8, i8* %readuniversal477, align 1
  %tobool478 = icmp ne i8 %265, 0
  br i1 %tobool478, label %if.end.496, label %land.lhs.true.479

land.lhs.true.479:                                ; preds = %lor.end.474
  %266 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %readnl480 = getelementptr inbounds %struct.textio, %struct.textio* %266, i32 0, i32 8
  %267 = load %struct._object*, %struct._object** %readnl480, align 8
  %tobool481 = icmp ne %struct._object* %267, null
  br i1 %tobool481, label %if.then.482, label %if.end.496

if.then.482:                                      ; preds = %land.lhs.true.479
  %268 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %readnl483 = getelementptr inbounds %struct.textio, %struct.textio* %268, i32 0, i32 8
  %269 = load %struct._object*, %struct._object** %readnl483, align 8
  %call484 = call i8* @PyUnicode_AsUTF8(%struct._object* %269)
  %270 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %writenl = getelementptr inbounds %struct.textio, %struct.textio* %270, i32 0, i32 10
  store i8* %call484, i8** %writenl, align 8
  %271 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %writenl485 = getelementptr inbounds %struct.textio, %struct.textio* %271, i32 0, i32 10
  %272 = load i8*, i8** %writenl485, align 8
  %cmp486 = icmp eq i8* %272, null
  br i1 %cmp486, label %if.then.488, label %if.end.489

if.then.488:                                      ; preds = %if.then.482
  br label %error

if.end.489:                                       ; preds = %if.then.482
  %273 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %writenl490 = getelementptr inbounds %struct.textio, %struct.textio* %273, i32 0, i32 10
  %274 = load i8*, i8** %writenl490, align 8
  %call491 = call i32 @strcmp(i8* %274, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0)) #4
  %tobool492 = icmp ne i32 %call491, 0
  br i1 %tobool492, label %if.end.495, label %if.then.493

if.then.493:                                      ; preds = %if.end.489
  %275 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %writenl494 = getelementptr inbounds %struct.textio, %struct.textio* %275, i32 0, i32 10
  store i8* null, i8** %writenl494, align 8
  br label %if.end.495

if.end.495:                                       ; preds = %if.then.493, %if.end.489
  br label %if.end.496

if.end.496:                                       ; preds = %if.end.495, %land.lhs.true.479, %lor.end.474
  %276 = load %struct._object*, %struct._object** %buffer, align 8
  %call497 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %276, %struct._Py_Identifier* @PyId_readable, i8* null)
  store %struct._object* %call497, %struct._object** %res, align 8
  %277 = load %struct._object*, %struct._object** %res, align 8
  %cmp498 = icmp eq %struct._object* %277, null
  br i1 %cmp498, label %if.then.500, label %if.end.501

if.then.500:                                      ; preds = %if.end.496
  br label %error

if.end.501:                                       ; preds = %if.end.496
  %278 = load %struct._object*, %struct._object** %res, align 8
  %call502 = call i32 @PyObject_IsTrue(%struct._object* %278)
  store i32 %call502, i32* %r, align 4
  br label %do.body.503

do.body.503:                                      ; preds = %if.end.501
  %279 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %279, %struct._object** %_py_decref_tmp504, align 8
  %280 = load %struct._object*, %struct._object** %_py_decref_tmp504, align 8
  %ob_refcnt505 = getelementptr inbounds %struct._object, %struct._object* %280, i32 0, i32 0
  %281 = load i64, i64* %ob_refcnt505, align 8
  %dec506 = add i64 %281, -1
  store i64 %dec506, i64* %ob_refcnt505, align 8
  %cmp507 = icmp ne i64 %dec506, 0
  br i1 %cmp507, label %if.then.509, label %if.else.510

if.then.509:                                      ; preds = %do.body.503
  br label %if.end.513

if.else.510:                                      ; preds = %do.body.503
  %282 = load %struct._object*, %struct._object** %_py_decref_tmp504, align 8
  %ob_type511 = getelementptr inbounds %struct._object, %struct._object* %282, i32 0, i32 1
  %283 = load %struct._typeobject*, %struct._typeobject** %ob_type511, align 8
  %tp_dealloc512 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %283, i32 0, i32 4
  %284 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc512, align 8
  %285 = load %struct._object*, %struct._object** %_py_decref_tmp504, align 8
  call void %284(%struct._object* %285)
  br label %if.end.513

if.end.513:                                       ; preds = %if.else.510, %if.then.509
  br label %do.end.514

do.end.514:                                       ; preds = %if.end.513
  %286 = load i32, i32* %r, align 4
  %cmp515 = icmp eq i32 %286, -1
  br i1 %cmp515, label %if.then.517, label %if.end.518

if.then.517:                                      ; preds = %do.end.514
  br label %error

if.end.518:                                       ; preds = %do.end.514
  %287 = load i32, i32* %r, align 4
  %cmp519 = icmp eq i32 %287, 1
  br i1 %cmp519, label %if.then.521, label %if.end.563

if.then.521:                                      ; preds = %if.end.518
  %288 = load %struct._object*, %struct._object** %codec_info, align 8
  %289 = load i8*, i8** %errors, align 8
  %call522 = call %struct._object* @_PyCodecInfo_GetIncrementalDecoder(%struct._object* %288, i8* %289)
  %290 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder523 = getelementptr inbounds %struct.textio, %struct.textio* %290, i32 0, i32 7
  store %struct._object* %call522, %struct._object** %decoder523, align 8
  %291 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder524 = getelementptr inbounds %struct.textio, %struct.textio* %291, i32 0, i32 7
  %292 = load %struct._object*, %struct._object** %decoder524, align 8
  %cmp525 = icmp eq %struct._object* %292, null
  br i1 %cmp525, label %if.then.527, label %if.end.528

if.then.527:                                      ; preds = %if.then.521
  br label %error

if.end.528:                                       ; preds = %if.then.521
  %293 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %readuniversal529 = getelementptr inbounds %struct.textio, %struct.textio* %293, i32 0, i32 13
  %294 = load i8, i8* %readuniversal529, align 1
  %tobool530 = icmp ne i8 %294, 0
  br i1 %tobool530, label %if.then.531, label %if.end.562

if.then.531:                                      ; preds = %if.end.528
  %295 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder532 = getelementptr inbounds %struct.textio, %struct.textio* %295, i32 0, i32 7
  %296 = load %struct._object*, %struct._object** %decoder532, align 8
  %297 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %readtranslate533 = getelementptr inbounds %struct.textio, %struct.textio* %297, i32 0, i32 14
  %298 = load i8, i8* %readtranslate533, align 1
  %conv534 = sext i8 %298 to i32
  %call535 = call %struct._object* (%struct._object*, i8*, ...) @_PyObject_CallFunction_SizeT(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyIncrementalNewlineDecoder_Type, i32 0, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i32 0, i32 0), %struct._object* %296, i32 %conv534)
  store %struct._object* %call535, %struct._object** %incrementalDecoder, align 8
  %299 = load %struct._object*, %struct._object** %incrementalDecoder, align 8
  %cmp536 = icmp eq %struct._object* %299, null
  br i1 %cmp536, label %if.then.538, label %if.end.539

if.then.538:                                      ; preds = %if.then.531
  br label %error

if.end.539:                                       ; preds = %if.then.531
  br label %do.body.540

do.body.540:                                      ; preds = %if.end.539
  %300 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder542 = getelementptr inbounds %struct.textio, %struct.textio* %300, i32 0, i32 7
  %301 = load %struct._object*, %struct._object** %decoder542, align 8
  store %struct._object* %301, %struct._object** %_py_tmp541, align 8
  %302 = load %struct._object*, %struct._object** %_py_tmp541, align 8
  %cmp543 = icmp ne %struct._object* %302, null
  br i1 %cmp543, label %if.then.545, label %if.end.559

if.then.545:                                      ; preds = %do.body.540
  %303 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder546 = getelementptr inbounds %struct.textio, %struct.textio* %303, i32 0, i32 7
  store %struct._object* null, %struct._object** %decoder546, align 8
  br label %do.body.547

do.body.547:                                      ; preds = %if.then.545
  %304 = load %struct._object*, %struct._object** %_py_tmp541, align 8
  store %struct._object* %304, %struct._object** %_py_decref_tmp548, align 8
  %305 = load %struct._object*, %struct._object** %_py_decref_tmp548, align 8
  %ob_refcnt549 = getelementptr inbounds %struct._object, %struct._object* %305, i32 0, i32 0
  %306 = load i64, i64* %ob_refcnt549, align 8
  %dec550 = add i64 %306, -1
  store i64 %dec550, i64* %ob_refcnt549, align 8
  %cmp551 = icmp ne i64 %dec550, 0
  br i1 %cmp551, label %if.then.553, label %if.else.554

if.then.553:                                      ; preds = %do.body.547
  br label %if.end.557

if.else.554:                                      ; preds = %do.body.547
  %307 = load %struct._object*, %struct._object** %_py_decref_tmp548, align 8
  %ob_type555 = getelementptr inbounds %struct._object, %struct._object* %307, i32 0, i32 1
  %308 = load %struct._typeobject*, %struct._typeobject** %ob_type555, align 8
  %tp_dealloc556 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %308, i32 0, i32 4
  %309 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc556, align 8
  %310 = load %struct._object*, %struct._object** %_py_decref_tmp548, align 8
  call void %309(%struct._object* %310)
  br label %if.end.557

if.end.557:                                       ; preds = %if.else.554, %if.then.553
  br label %do.end.558

do.end.558:                                       ; preds = %if.end.557
  br label %if.end.559

if.end.559:                                       ; preds = %do.end.558, %do.body.540
  br label %do.end.560

do.end.560:                                       ; preds = %if.end.559
  %311 = load %struct._object*, %struct._object** %incrementalDecoder, align 8
  %312 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder561 = getelementptr inbounds %struct.textio, %struct.textio* %312, i32 0, i32 7
  store %struct._object* %311, %struct._object** %decoder561, align 8
  br label %if.end.562

if.end.562:                                       ; preds = %do.end.560, %if.end.528
  br label %if.end.563

if.end.563:                                       ; preds = %if.end.562, %if.end.518
  %313 = load %struct._object*, %struct._object** %buffer, align 8
  %call564 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %313, %struct._Py_Identifier* @PyId_writable, i8* null)
  store %struct._object* %call564, %struct._object** %res, align 8
  %314 = load %struct._object*, %struct._object** %res, align 8
  %cmp565 = icmp eq %struct._object* %314, null
  br i1 %cmp565, label %if.then.567, label %if.end.568

if.then.567:                                      ; preds = %if.end.563
  br label %error

if.end.568:                                       ; preds = %if.end.563
  %315 = load %struct._object*, %struct._object** %res, align 8
  %call569 = call i32 @PyObject_IsTrue(%struct._object* %315)
  store i32 %call569, i32* %r, align 4
  br label %do.body.570

do.body.570:                                      ; preds = %if.end.568
  %316 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %316, %struct._object** %_py_decref_tmp571, align 8
  %317 = load %struct._object*, %struct._object** %_py_decref_tmp571, align 8
  %ob_refcnt572 = getelementptr inbounds %struct._object, %struct._object* %317, i32 0, i32 0
  %318 = load i64, i64* %ob_refcnt572, align 8
  %dec573 = add i64 %318, -1
  store i64 %dec573, i64* %ob_refcnt572, align 8
  %cmp574 = icmp ne i64 %dec573, 0
  br i1 %cmp574, label %if.then.576, label %if.else.577

if.then.576:                                      ; preds = %do.body.570
  br label %if.end.580

if.else.577:                                      ; preds = %do.body.570
  %319 = load %struct._object*, %struct._object** %_py_decref_tmp571, align 8
  %ob_type578 = getelementptr inbounds %struct._object, %struct._object* %319, i32 0, i32 1
  %320 = load %struct._typeobject*, %struct._typeobject** %ob_type578, align 8
  %tp_dealloc579 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %320, i32 0, i32 4
  %321 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc579, align 8
  %322 = load %struct._object*, %struct._object** %_py_decref_tmp571, align 8
  call void %321(%struct._object* %322)
  br label %if.end.580

if.end.580:                                       ; preds = %if.else.577, %if.then.576
  br label %do.end.581

do.end.581:                                       ; preds = %if.end.580
  %323 = load i32, i32* %r, align 4
  %cmp582 = icmp eq i32 %323, -1
  br i1 %cmp582, label %if.then.584, label %if.end.585

if.then.584:                                      ; preds = %do.end.581
  br label %error

if.end.585:                                       ; preds = %do.end.581
  %324 = load i32, i32* %r, align 4
  %cmp586 = icmp eq i32 %324, 1
  br i1 %cmp586, label %if.then.588, label %if.end.641

if.then.588:                                      ; preds = %if.end.585
  %325 = load %struct._object*, %struct._object** %codec_info, align 8
  %326 = load i8*, i8** %errors, align 8
  %call589 = call %struct._object* @_PyCodecInfo_GetIncrementalEncoder(%struct._object* %325, i8* %326)
  %327 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoder590 = getelementptr inbounds %struct.textio, %struct.textio* %327, i32 0, i32 6
  store %struct._object* %call589, %struct._object** %encoder590, align 8
  %328 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoder591 = getelementptr inbounds %struct.textio, %struct.textio* %328, i32 0, i32 6
  %329 = load %struct._object*, %struct._object** %encoder591, align 8
  %cmp592 = icmp eq %struct._object* %329, null
  br i1 %cmp592, label %if.then.594, label %if.end.595

if.then.594:                                      ; preds = %if.then.588
  br label %error

if.end.595:                                       ; preds = %if.then.588
  %330 = load %struct._object*, %struct._object** %codec_info, align 8
  %call596 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %330, %struct._Py_Identifier* @PyId_name)
  store %struct._object* %call596, %struct._object** %res, align 8
  %331 = load %struct._object*, %struct._object** %res, align 8
  %cmp597 = icmp eq %struct._object* %331, null
  br i1 %cmp597, label %if.then.599, label %if.else.605

if.then.599:                                      ; preds = %if.end.595
  %332 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %call600 = call i32 @PyErr_ExceptionMatches(%struct._object* %332)
  %tobool601 = icmp ne i32 %call600, 0
  br i1 %tobool601, label %if.then.602, label %if.else.603

if.then.602:                                      ; preds = %if.then.599
  call void @PyErr_Clear()
  br label %if.end.604

if.else.603:                                      ; preds = %if.then.599
  br label %error

if.end.604:                                       ; preds = %if.then.602
  br label %if.end.622

if.else.605:                                      ; preds = %if.end.595
  %333 = load %struct._object*, %struct._object** %res, align 8
  %ob_type606 = getelementptr inbounds %struct._object, %struct._object* %333, i32 0, i32 1
  %334 = load %struct._typeobject*, %struct._typeobject** %ob_type606, align 8
  %tp_flags607 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %334, i32 0, i32 19
  %335 = load i64, i64* %tp_flags607, align 8
  %and608 = and i64 %335, 268435456
  %cmp609 = icmp ne i64 %and608, 0
  br i1 %cmp609, label %if.then.611, label %if.end.621

if.then.611:                                      ; preds = %if.else.605
  store %struct.encodefuncentry* getelementptr inbounds ([10 x %struct.encodefuncentry], [10 x %struct.encodefuncentry]* @encodefuncs, i32 0, i32 0), %struct.encodefuncentry** %e, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.620, %if.then.611
  %336 = load %struct.encodefuncentry*, %struct.encodefuncentry** %e, align 8
  %name = getelementptr inbounds %struct.encodefuncentry, %struct.encodefuncentry* %336, i32 0, i32 0
  %337 = load i8*, i8** %name, align 8
  %cmp612 = icmp ne i8* %337, null
  br i1 %cmp612, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %338 = load %struct._object*, %struct._object** %res, align 8
  %339 = load %struct.encodefuncentry*, %struct.encodefuncentry** %e, align 8
  %name614 = getelementptr inbounds %struct.encodefuncentry, %struct.encodefuncentry* %339, i32 0, i32 0
  %340 = load i8*, i8** %name614, align 8
  %call615 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %338, i8* %340)
  %tobool616 = icmp ne i32 %call615, 0
  br i1 %tobool616, label %if.end.620, label %if.then.617

if.then.617:                                      ; preds = %while.body
  %341 = load %struct.encodefuncentry*, %struct.encodefuncentry** %e, align 8
  %encodefunc618 = getelementptr inbounds %struct.encodefuncentry, %struct.encodefuncentry* %341, i32 0, i32 1
  %342 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %encodefunc618, align 8
  %343 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encodefunc619 = getelementptr inbounds %struct.textio, %struct.textio* %343, i32 0, i32 20
  store %struct._object* (%struct._object*, %struct._object*)* %342, %struct._object* (%struct._object*, %struct._object*)** %encodefunc619, align 8
  br label %while.end

if.end.620:                                       ; preds = %while.body
  %344 = load %struct.encodefuncentry*, %struct.encodefuncentry** %e, align 8
  %incdec.ptr = getelementptr %struct.encodefuncentry, %struct.encodefuncentry* %344, i32 1
  store %struct.encodefuncentry* %incdec.ptr, %struct.encodefuncentry** %e, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.617, %while.cond
  br label %if.end.621

if.end.621:                                       ; preds = %while.end, %if.else.605
  br label %if.end.622

if.end.622:                                       ; preds = %if.end.621, %if.end.604
  br label %do.body.623

do.body.623:                                      ; preds = %if.end.622
  %345 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %345, %struct._object** %_py_xdecref_tmp, align 8
  %346 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp624 = icmp ne %struct._object* %346, null
  br i1 %cmp624, label %if.then.626, label %if.end.639

if.then.626:                                      ; preds = %do.body.623
  br label %do.body.627

do.body.627:                                      ; preds = %if.then.626
  %347 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %347, %struct._object** %_py_decref_tmp628, align 8
  %348 = load %struct._object*, %struct._object** %_py_decref_tmp628, align 8
  %ob_refcnt629 = getelementptr inbounds %struct._object, %struct._object* %348, i32 0, i32 0
  %349 = load i64, i64* %ob_refcnt629, align 8
  %dec630 = add i64 %349, -1
  store i64 %dec630, i64* %ob_refcnt629, align 8
  %cmp631 = icmp ne i64 %dec630, 0
  br i1 %cmp631, label %if.then.633, label %if.else.634

if.then.633:                                      ; preds = %do.body.627
  br label %if.end.637

if.else.634:                                      ; preds = %do.body.627
  %350 = load %struct._object*, %struct._object** %_py_decref_tmp628, align 8
  %ob_type635 = getelementptr inbounds %struct._object, %struct._object* %350, i32 0, i32 1
  %351 = load %struct._typeobject*, %struct._typeobject** %ob_type635, align 8
  %tp_dealloc636 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %351, i32 0, i32 4
  %352 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc636, align 8
  %353 = load %struct._object*, %struct._object** %_py_decref_tmp628, align 8
  call void %352(%struct._object* %353)
  br label %if.end.637

if.end.637:                                       ; preds = %if.else.634, %if.then.633
  br label %do.end.638

do.end.638:                                       ; preds = %if.end.637
  br label %if.end.639

if.end.639:                                       ; preds = %do.end.638, %do.body.623
  br label %do.end.640

do.end.640:                                       ; preds = %if.end.639
  br label %if.end.641

if.end.641:                                       ; preds = %do.end.640, %if.end.585
  br label %do.body.642

do.body.642:                                      ; preds = %if.end.641
  %354 = load %struct._object*, %struct._object** %codec_info, align 8
  store %struct._object* %354, %struct._object** %_py_decref_tmp643, align 8
  %355 = load %struct._object*, %struct._object** %_py_decref_tmp643, align 8
  %ob_refcnt644 = getelementptr inbounds %struct._object, %struct._object* %355, i32 0, i32 0
  %356 = load i64, i64* %ob_refcnt644, align 8
  %dec645 = add i64 %356, -1
  store i64 %dec645, i64* %ob_refcnt644, align 8
  %cmp646 = icmp ne i64 %dec645, 0
  br i1 %cmp646, label %if.then.648, label %if.else.649

if.then.648:                                      ; preds = %do.body.642
  br label %if.end.652

if.else.649:                                      ; preds = %do.body.642
  %357 = load %struct._object*, %struct._object** %_py_decref_tmp643, align 8
  %ob_type650 = getelementptr inbounds %struct._object, %struct._object* %357, i32 0, i32 1
  %358 = load %struct._typeobject*, %struct._typeobject** %ob_type650, align 8
  %tp_dealloc651 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %358, i32 0, i32 4
  %359 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc651, align 8
  %360 = load %struct._object*, %struct._object** %_py_decref_tmp643, align 8
  call void %359(%struct._object* %360)
  br label %if.end.652

if.end.652:                                       ; preds = %if.else.649, %if.then.648
  br label %do.end.653

do.end.653:                                       ; preds = %if.end.652
  %361 = load %struct._object*, %struct._object** %buffer, align 8
  %362 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %buffer654 = getelementptr inbounds %struct.textio, %struct.textio* %362, i32 0, i32 4
  store %struct._object* %361, %struct._object** %buffer654, align 8
  %363 = load %struct._object*, %struct._object** %buffer, align 8
  %ob_refcnt655 = getelementptr inbounds %struct._object, %struct._object* %363, i32 0, i32 0
  %364 = load i64, i64* %ob_refcnt655, align 8
  %inc = add i64 %364, 1
  store i64 %inc, i64* %ob_refcnt655, align 8
  %365 = load %struct._object*, %struct._object** %buffer, align 8
  %ob_type656 = getelementptr inbounds %struct._object, %struct._object* %365, i32 0, i32 1
  %366 = load %struct._typeobject*, %struct._typeobject** %ob_type656, align 8
  %cmp657 = icmp eq %struct._typeobject* %366, @PyBufferedReader_Type
  br i1 %cmp657, label %if.then.667, label %lor.lhs.false.659

lor.lhs.false.659:                                ; preds = %do.end.653
  %367 = load %struct._object*, %struct._object** %buffer, align 8
  %ob_type660 = getelementptr inbounds %struct._object, %struct._object* %367, i32 0, i32 1
  %368 = load %struct._typeobject*, %struct._typeobject** %ob_type660, align 8
  %cmp661 = icmp eq %struct._typeobject* %368, @PyBufferedWriter_Type
  br i1 %cmp661, label %if.then.667, label %lor.lhs.false.663

lor.lhs.false.663:                                ; preds = %lor.lhs.false.659
  %369 = load %struct._object*, %struct._object** %buffer, align 8
  %ob_type664 = getelementptr inbounds %struct._object, %struct._object* %369, i32 0, i32 1
  %370 = load %struct._typeobject*, %struct._typeobject** %ob_type664, align 8
  %cmp665 = icmp eq %struct._typeobject* %370, @PyBufferedRandom_Type
  br i1 %cmp665, label %if.then.667, label %if.end.698

if.then.667:                                      ; preds = %lor.lhs.false.663, %lor.lhs.false.659, %do.end.653
  %371 = load %struct._object*, %struct._object** %buffer, align 8
  %call668 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %371, %struct._Py_Identifier* @PyId_raw)
  store %struct._object* %call668, %struct._object** %raw, align 8
  %372 = load %struct._object*, %struct._object** %raw, align 8
  %cmp669 = icmp eq %struct._object* %372, null
  br i1 %cmp669, label %if.then.671, label %if.else.677

if.then.671:                                      ; preds = %if.then.667
  %373 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %call672 = call i32 @PyErr_ExceptionMatches(%struct._object* %373)
  %tobool673 = icmp ne i32 %call672, 0
  br i1 %tobool673, label %if.then.674, label %if.else.675

if.then.674:                                      ; preds = %if.then.671
  call void @PyErr_Clear()
  br label %if.end.676

if.else.675:                                      ; preds = %if.then.671
  br label %error

if.end.676:                                       ; preds = %if.then.674
  br label %if.end.697

if.else.677:                                      ; preds = %if.then.667
  %374 = load %struct._object*, %struct._object** %raw, align 8
  %ob_type678 = getelementptr inbounds %struct._object, %struct._object* %374, i32 0, i32 1
  %375 = load %struct._typeobject*, %struct._typeobject** %ob_type678, align 8
  %cmp679 = icmp eq %struct._typeobject* %375, @PyFileIO_Type
  br i1 %cmp679, label %if.then.681, label %if.else.683

if.then.681:                                      ; preds = %if.else.677
  %376 = load %struct._object*, %struct._object** %raw, align 8
  %377 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %raw682 = getelementptr inbounds %struct.textio, %struct.textio* %377, i32 0, i32 28
  store %struct._object* %376, %struct._object** %raw682, align 8
  br label %if.end.696

if.else.683:                                      ; preds = %if.else.677
  br label %do.body.684

do.body.684:                                      ; preds = %if.else.683
  %378 = load %struct._object*, %struct._object** %raw, align 8
  store %struct._object* %378, %struct._object** %_py_decref_tmp685, align 8
  %379 = load %struct._object*, %struct._object** %_py_decref_tmp685, align 8
  %ob_refcnt686 = getelementptr inbounds %struct._object, %struct._object* %379, i32 0, i32 0
  %380 = load i64, i64* %ob_refcnt686, align 8
  %dec687 = add i64 %380, -1
  store i64 %dec687, i64* %ob_refcnt686, align 8
  %cmp688 = icmp ne i64 %dec687, 0
  br i1 %cmp688, label %if.then.690, label %if.else.691

if.then.690:                                      ; preds = %do.body.684
  br label %if.end.694

if.else.691:                                      ; preds = %do.body.684
  %381 = load %struct._object*, %struct._object** %_py_decref_tmp685, align 8
  %ob_type692 = getelementptr inbounds %struct._object, %struct._object* %381, i32 0, i32 1
  %382 = load %struct._typeobject*, %struct._typeobject** %ob_type692, align 8
  %tp_dealloc693 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %382, i32 0, i32 4
  %383 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc693, align 8
  %384 = load %struct._object*, %struct._object** %_py_decref_tmp685, align 8
  call void %383(%struct._object* %384)
  br label %if.end.694

if.end.694:                                       ; preds = %if.else.691, %if.then.690
  br label %do.end.695

do.end.695:                                       ; preds = %if.end.694
  br label %if.end.696

if.end.696:                                       ; preds = %do.end.695, %if.then.681
  br label %if.end.697

if.end.697:                                       ; preds = %if.end.696, %if.end.676
  br label %if.end.698

if.end.698:                                       ; preds = %if.end.697, %lor.lhs.false.663
  %385 = load %struct._object*, %struct._object** %buffer, align 8
  %call699 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %385, %struct._Py_Identifier* @PyId_seekable, i8* null)
  store %struct._object* %call699, %struct._object** %res, align 8
  %386 = load %struct._object*, %struct._object** %res, align 8
  %cmp700 = icmp eq %struct._object* %386, null
  br i1 %cmp700, label %if.then.702, label %if.end.703

if.then.702:                                      ; preds = %if.end.698
  br label %error

if.end.703:                                       ; preds = %if.end.698
  %387 = load %struct._object*, %struct._object** %res, align 8
  %call704 = call i32 @PyObject_IsTrue(%struct._object* %387)
  store i32 %call704, i32* %r, align 4
  br label %do.body.705

do.body.705:                                      ; preds = %if.end.703
  %388 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %388, %struct._object** %_py_decref_tmp706, align 8
  %389 = load %struct._object*, %struct._object** %_py_decref_tmp706, align 8
  %ob_refcnt707 = getelementptr inbounds %struct._object, %struct._object* %389, i32 0, i32 0
  %390 = load i64, i64* %ob_refcnt707, align 8
  %dec708 = add i64 %390, -1
  store i64 %dec708, i64* %ob_refcnt707, align 8
  %cmp709 = icmp ne i64 %dec708, 0
  br i1 %cmp709, label %if.then.711, label %if.else.712

if.then.711:                                      ; preds = %do.body.705
  br label %if.end.715

if.else.712:                                      ; preds = %do.body.705
  %391 = load %struct._object*, %struct._object** %_py_decref_tmp706, align 8
  %ob_type713 = getelementptr inbounds %struct._object, %struct._object* %391, i32 0, i32 1
  %392 = load %struct._typeobject*, %struct._typeobject** %ob_type713, align 8
  %tp_dealloc714 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %392, i32 0, i32 4
  %393 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc714, align 8
  %394 = load %struct._object*, %struct._object** %_py_decref_tmp706, align 8
  call void %393(%struct._object* %394)
  br label %if.end.715

if.end.715:                                       ; preds = %if.else.712, %if.then.711
  br label %do.end.716

do.end.716:                                       ; preds = %if.end.715
  %395 = load i32, i32* %r, align 4
  %cmp717 = icmp slt i32 %395, 0
  br i1 %cmp717, label %if.then.719, label %if.end.720

if.then.719:                                      ; preds = %do.end.716
  br label %error

if.end.720:                                       ; preds = %do.end.716
  %396 = load i32, i32* %r, align 4
  %conv721 = trunc i32 %396 to i8
  %397 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %telling = getelementptr inbounds %struct.textio, %struct.textio* %397, i32 0, i32 18
  store i8 %conv721, i8* %telling, align 1
  %398 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %seekable = getelementptr inbounds %struct.textio, %struct.textio* %398, i32 0, i32 16
  store i8 %conv721, i8* %seekable, align 1
  %399 = load %struct._object*, %struct._object** %buffer, align 8
  %call722 = call i32 @_PyObject_HasAttrId(%struct._object* %399, %struct._Py_Identifier* @PyId_read1)
  %conv723 = trunc i32 %call722 to i8
  %400 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %has_read1 = getelementptr inbounds %struct.textio, %struct.textio* %400, i32 0, i32 17
  store i8 %conv723, i8* %has_read1, align 1
  %401 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoding_start_of_stream = getelementptr inbounds %struct.textio, %struct.textio* %401, i32 0, i32 21
  store i8 0, i8* %encoding_start_of_stream, align 1
  %402 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %seekable724 = getelementptr inbounds %struct.textio, %struct.textio* %402, i32 0, i32 16
  %403 = load i8, i8* %seekable724, align 1
  %conv725 = sext i8 %403 to i32
  %tobool726 = icmp ne i32 %conv725, 0
  br i1 %tobool726, label %land.lhs.true.727, label %if.end.778

land.lhs.true.727:                                ; preds = %if.end.720
  %404 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoder728 = getelementptr inbounds %struct.textio, %struct.textio* %404, i32 0, i32 6
  %405 = load %struct._object*, %struct._object** %encoder728, align 8
  %tobool729 = icmp ne %struct._object* %405, null
  br i1 %tobool729, label %if.then.730, label %if.end.778

if.then.730:                                      ; preds = %land.lhs.true.727
  %406 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoding_start_of_stream732 = getelementptr inbounds %struct.textio, %struct.textio* %406, i32 0, i32 21
  store i8 1, i8* %encoding_start_of_stream732, align 1
  %407 = load %struct._object*, %struct._object** %buffer, align 8
  %408 = load %struct._object*, %struct._object** @_PyIO_str_tell, align 8
  %call733 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %407, %struct._object* %408, i8* null)
  store %struct._object* %call733, %struct._object** %cookieObj, align 8
  %409 = load %struct._object*, %struct._object** %cookieObj, align 8
  %cmp734 = icmp eq %struct._object* %409, null
  br i1 %cmp734, label %if.then.736, label %if.end.737

if.then.736:                                      ; preds = %if.then.730
  br label %error

if.end.737:                                       ; preds = %if.then.730
  %410 = load %struct._object*, %struct._object** %cookieObj, align 8
  %411 = load %struct._object*, %struct._object** @_PyIO_zero, align 8
  %call738 = call i32 @PyObject_RichCompareBool(%struct._object* %410, %struct._object* %411, i32 2)
  store i32 %call738, i32* %cmp731, align 4
  br label %do.body.739

do.body.739:                                      ; preds = %if.end.737
  %412 = load %struct._object*, %struct._object** %cookieObj, align 8
  store %struct._object* %412, %struct._object** %_py_decref_tmp740, align 8
  %413 = load %struct._object*, %struct._object** %_py_decref_tmp740, align 8
  %ob_refcnt741 = getelementptr inbounds %struct._object, %struct._object* %413, i32 0, i32 0
  %414 = load i64, i64* %ob_refcnt741, align 8
  %dec742 = add i64 %414, -1
  store i64 %dec742, i64* %ob_refcnt741, align 8
  %cmp743 = icmp ne i64 %dec742, 0
  br i1 %cmp743, label %if.then.745, label %if.else.746

if.then.745:                                      ; preds = %do.body.739
  br label %if.end.749

if.else.746:                                      ; preds = %do.body.739
  %415 = load %struct._object*, %struct._object** %_py_decref_tmp740, align 8
  %ob_type747 = getelementptr inbounds %struct._object, %struct._object* %415, i32 0, i32 1
  %416 = load %struct._typeobject*, %struct._typeobject** %ob_type747, align 8
  %tp_dealloc748 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %416, i32 0, i32 4
  %417 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc748, align 8
  %418 = load %struct._object*, %struct._object** %_py_decref_tmp740, align 8
  call void %417(%struct._object* %418)
  br label %if.end.749

if.end.749:                                       ; preds = %if.else.746, %if.then.745
  br label %do.end.750

do.end.750:                                       ; preds = %if.end.749
  %419 = load i32, i32* %cmp731, align 4
  %cmp751 = icmp slt i32 %419, 0
  br i1 %cmp751, label %if.then.753, label %if.end.754

if.then.753:                                      ; preds = %do.end.750
  br label %error

if.end.754:                                       ; preds = %do.end.750
  %420 = load i32, i32* %cmp731, align 4
  %cmp755 = icmp eq i32 %420, 0
  br i1 %cmp755, label %if.then.757, label %if.end.777

if.then.757:                                      ; preds = %if.end.754
  %421 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoding_start_of_stream758 = getelementptr inbounds %struct.textio, %struct.textio* %421, i32 0, i32 21
  store i8 0, i8* %encoding_start_of_stream758, align 1
  %422 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoder759 = getelementptr inbounds %struct.textio, %struct.textio* %422, i32 0, i32 6
  %423 = load %struct._object*, %struct._object** %encoder759, align 8
  %424 = load %struct._object*, %struct._object** @_PyIO_str_setstate, align 8
  %425 = load %struct._object*, %struct._object** @_PyIO_zero, align 8
  %call760 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %423, %struct._object* %424, %struct._object* %425, i8* null)
  store %struct._object* %call760, %struct._object** %res, align 8
  %426 = load %struct._object*, %struct._object** %res, align 8
  %cmp761 = icmp eq %struct._object* %426, null
  br i1 %cmp761, label %if.then.763, label %if.end.764

if.then.763:                                      ; preds = %if.then.757
  br label %error

if.end.764:                                       ; preds = %if.then.757
  br label %do.body.765

do.body.765:                                      ; preds = %if.end.764
  %427 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %427, %struct._object** %_py_decref_tmp766, align 8
  %428 = load %struct._object*, %struct._object** %_py_decref_tmp766, align 8
  %ob_refcnt767 = getelementptr inbounds %struct._object, %struct._object* %428, i32 0, i32 0
  %429 = load i64, i64* %ob_refcnt767, align 8
  %dec768 = add i64 %429, -1
  store i64 %dec768, i64* %ob_refcnt767, align 8
  %cmp769 = icmp ne i64 %dec768, 0
  br i1 %cmp769, label %if.then.771, label %if.else.772

if.then.771:                                      ; preds = %do.body.765
  br label %if.end.775

if.else.772:                                      ; preds = %do.body.765
  %430 = load %struct._object*, %struct._object** %_py_decref_tmp766, align 8
  %ob_type773 = getelementptr inbounds %struct._object, %struct._object* %430, i32 0, i32 1
  %431 = load %struct._typeobject*, %struct._typeobject** %ob_type773, align 8
  %tp_dealloc774 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %431, i32 0, i32 4
  %432 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc774, align 8
  %433 = load %struct._object*, %struct._object** %_py_decref_tmp766, align 8
  call void %432(%struct._object* %433)
  br label %if.end.775

if.end.775:                                       ; preds = %if.else.772, %if.then.771
  br label %do.end.776

do.end.776:                                       ; preds = %if.end.775
  br label %if.end.777

if.end.777:                                       ; preds = %do.end.776, %if.end.754
  br label %if.end.778

if.end.778:                                       ; preds = %if.end.777, %land.lhs.true.727, %if.end.720
  %434 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %ok779 = getelementptr inbounds %struct.textio, %struct.textio* %434, i32 0, i32 1
  store i32 1, i32* %ok779, align 4
  store i32 0, i32* %retval
  br label %return

error:                                            ; preds = %if.then.763, %if.then.753, %if.then.736, %if.then.719, %if.then.702, %if.else.675, %if.else.603, %if.then.594, %if.then.584, %if.then.567, %if.then.538, %if.then.527, %if.then.517, %if.then.500, %if.then.488, %if.then.464, %if.then.441, %do.end.430, %if.then.401, %if.then.390, %if.else.348, %if.then.281, %if.then.274, %if.else.253, %if.then.242
  br label %do.body.780

do.body.780:                                      ; preds = %error
  %435 = load %struct._object*, %struct._object** %codec_info, align 8
  store %struct._object* %435, %struct._object** %_py_xdecref_tmp781, align 8
  %436 = load %struct._object*, %struct._object** %_py_xdecref_tmp781, align 8
  %cmp782 = icmp ne %struct._object* %436, null
  br i1 %cmp782, label %if.then.784, label %if.end.797

if.then.784:                                      ; preds = %do.body.780
  br label %do.body.785

do.body.785:                                      ; preds = %if.then.784
  %437 = load %struct._object*, %struct._object** %_py_xdecref_tmp781, align 8
  store %struct._object* %437, %struct._object** %_py_decref_tmp786, align 8
  %438 = load %struct._object*, %struct._object** %_py_decref_tmp786, align 8
  %ob_refcnt787 = getelementptr inbounds %struct._object, %struct._object* %438, i32 0, i32 0
  %439 = load i64, i64* %ob_refcnt787, align 8
  %dec788 = add i64 %439, -1
  store i64 %dec788, i64* %ob_refcnt787, align 8
  %cmp789 = icmp ne i64 %dec788, 0
  br i1 %cmp789, label %if.then.791, label %if.else.792

if.then.791:                                      ; preds = %do.body.785
  br label %if.end.795

if.else.792:                                      ; preds = %do.body.785
  %440 = load %struct._object*, %struct._object** %_py_decref_tmp786, align 8
  %ob_type793 = getelementptr inbounds %struct._object, %struct._object* %440, i32 0, i32 1
  %441 = load %struct._typeobject*, %struct._typeobject** %ob_type793, align 8
  %tp_dealloc794 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %441, i32 0, i32 4
  %442 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc794, align 8
  %443 = load %struct._object*, %struct._object** %_py_decref_tmp786, align 8
  call void %442(%struct._object* %443)
  br label %if.end.795

if.end.795:                                       ; preds = %if.else.792, %if.then.791
  br label %do.end.796

do.end.796:                                       ; preds = %if.end.795
  br label %if.end.797

if.end.797:                                       ; preds = %do.end.796, %do.body.780
  br label %do.end.798

do.end.798:                                       ; preds = %if.end.797
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.798, %if.end.778, %if.then.38, %if.then
  %444 = load i32, i32* %retval
  ret i32 %444
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @textiobase_detach(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %call = call %struct._object* @_unsupported(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @textiobase_read(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %call = call %struct._object* @_unsupported(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @textiobase_readline(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %call = call %struct._object* @_unsupported(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @textiobase_write(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %call = call %struct._object* @_unsupported(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_unsupported(i8* %message) #0 {
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

declare %struct._PyIO_State* @_PyIO_get_module_state() #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @textiobase_encoding_get(%struct._object* %self, i8* %context) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %context.addr = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @textiobase_newlines_get(%struct._object* %self, i8* %context) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %context.addr = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @textiobase_errors_get(%struct._object* %self, i8* %context) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %context.addr = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare i32 @_PyUnicode_Ready(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @incrementalnewlinedecoder_decode(%struct.nldecoder_object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.nldecoder_object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %kwlist = alloca [3 x i8*], align 16
  %input = alloca %struct._object*, align 8
  %final = alloca i32, align 4
  store %struct.nldecoder_object* %self, %struct.nldecoder_object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = bitcast [3 x i8*]* %kwlist to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([3 x i8*]* @incrementalnewlinedecoder_decode.kwlist to i8*), i64 24, i32 16, i1 false)
  store i32 0, i32* %final, align 4
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %2 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %arraydecay = getelementptr inbounds [3 x i8*], [3 x i8*]* %kwlist, i32 0, i32 0
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %1, %struct._object* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i32 0, i32 0), i8** %arraydecay, %struct._object** %input, i32* %final)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.nldecoder_object*, %struct.nldecoder_object** %self.addr, align 8
  %4 = bitcast %struct.nldecoder_object* %3 to %struct._object*
  %5 = load %struct._object*, %struct._object** %input, align 8
  %6 = load i32, i32* %final, align 4
  %call1 = call %struct._object* @_PyIncrementalNewlineDecoder_decode(%struct._object* %4, %struct._object* %5, i32 %6)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @incrementalnewlinedecoder_getstate(%struct.nldecoder_object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.nldecoder_object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %buffer = alloca %struct._object*, align 8
  %flag = alloca i64, align 8
  %state = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp12 = alloca %struct._object*, align 8
  store %struct.nldecoder_object* %self, %struct.nldecoder_object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.nldecoder_object*, %struct.nldecoder_object** %self.addr, align 8
  %decoder = getelementptr inbounds %struct.nldecoder_object, %struct.nldecoder_object* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %decoder, align 8
  %cmp = icmp ne %struct._object* %1, @_Py_NoneStruct
  br i1 %cmp, label %if.then, label %if.else.22

if.then:                                          ; preds = %entry
  %2 = load %struct.nldecoder_object*, %struct.nldecoder_object** %self.addr, align 8
  %decoder1 = getelementptr inbounds %struct.nldecoder_object, %struct.nldecoder_object* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %decoder1, align 8
  %4 = load %struct._object*, %struct._object** @_PyIO_str_getstate, align 8
  %call = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %3, %struct._object* %4, i8* null)
  store %struct._object* %call, %struct._object** %state, align 8
  %5 = load %struct._object*, %struct._object** %state, align 8
  %cmp2 = icmp eq %struct._object* %5, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %state, align 8
  %call4 = call i32 (%struct._object*, i8*, ...) @_PyArg_Parse_SizeT(%struct._object* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), %struct._object** %buffer, i64* %flag)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end.9, label %if.then.5

if.then.5:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %7 = load %struct._object*, %struct._object** %state, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %if.end.8

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %14 = load %struct._object*, %struct._object** %buffer, align 8
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt10, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %ob_refcnt10, align 8
  br label %do.body.11

do.body.11:                                       ; preds = %if.end.9
  %16 = load %struct._object*, %struct._object** %state, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp12, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt13, align 8
  %dec14 = add i64 %18, -1
  store i64 %dec14, i64* %ob_refcnt13, align 8
  %cmp15 = icmp ne i64 %dec14, 0
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.20

if.else.17:                                       ; preds = %do.body.11
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8
  %tp_dealloc19 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc19, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8
  call void %21(%struct._object* %22)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.17, %if.then.16
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  br label %if.end.24

if.else.22:                                       ; preds = %entry
  %call23 = call %struct._object* @PyBytes_FromString(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0))
  store %struct._object* %call23, %struct._object** %buffer, align 8
  store i64 0, i64* %flag, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.22, %do.end.21
  %23 = load i64, i64* %flag, align 8
  %shl = shl i64 %23, 1
  store i64 %shl, i64* %flag, align 8
  %24 = load %struct.nldecoder_object*, %struct.nldecoder_object** %self.addr, align 8
  %pendingcr = getelementptr inbounds %struct.nldecoder_object, %struct.nldecoder_object* %24, i32 0, i32 3
  %bf.load = load i8, i8* %pendingcr, align 8
  %bf.shl = shl i8 %bf.load, 7
  %bf.ashr = ashr i8 %bf.shl, 7
  %bf.cast = sext i8 %bf.ashr to i32
  %tobool25 = icmp ne i32 %bf.cast, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.24
  %25 = load i64, i64* %flag, align 8
  %or = or i64 %25, 1
  store i64 %or, i64* %flag, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.24
  %26 = load %struct._object*, %struct._object** %buffer, align 8
  %27 = load i64, i64* %flag, align 8
  %call28 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), %struct._object* %26, i64 %27)
  store %struct._object* %call28, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.27, %do.end, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @incrementalnewlinedecoder_setstate(%struct.nldecoder_object* %self, %struct._object* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.nldecoder_object*, align 8
  %state.addr = alloca %struct._object*, align 8
  %buffer = alloca %struct._object*, align 8
  %flag = alloca i64, align 8
  store %struct.nldecoder_object* %self, %struct.nldecoder_object** %self.addr, align 8
  store %struct._object* %state, %struct._object** %state.addr, align 8
  %0 = load %struct._object*, %struct._object** %state.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_Parse_SizeT(%struct._object* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), %struct._object** %buffer, i64* %flag)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %flag, align 8
  %conv = trunc i64 %1 to i32
  %and = and i32 %conv, 1
  %2 = load %struct.nldecoder_object*, %struct.nldecoder_object** %self.addr, align 8
  %pendingcr = getelementptr inbounds %struct.nldecoder_object, %struct.nldecoder_object* %2, i32 0, i32 3
  %3 = trunc i32 %and to i8
  %bf.load = load i8, i8* %pendingcr, align 8
  %bf.value = and i8 %3, 1
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, %bf.value
  store i8 %bf.set, i8* %pendingcr, align 8
  %bf.result.shl = shl i8 %bf.value, 7
  %bf.result.ashr = ashr i8 %bf.result.shl, 7
  %bf.result.cast = sext i8 %bf.result.ashr to i32
  %4 = load i64, i64* %flag, align 8
  %shr = lshr i64 %4, 1
  store i64 %shr, i64* %flag, align 8
  %5 = load %struct.nldecoder_object*, %struct.nldecoder_object** %self.addr, align 8
  %decoder = getelementptr inbounds %struct.nldecoder_object, %struct.nldecoder_object* %5, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %decoder, align 8
  %cmp = icmp ne %struct._object* %6, @_Py_NoneStruct
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %7 = load %struct.nldecoder_object*, %struct.nldecoder_object** %self.addr, align 8
  %decoder3 = getelementptr inbounds %struct.nldecoder_object, %struct.nldecoder_object* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %decoder3, align 8
  %9 = load %struct._object*, %struct._object** %buffer, align 8
  %10 = load i64, i64* %flag, align 8
  %call4 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %8, %struct._Py_Identifier* @PyId_setstate, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), %struct._object* %9, i64 %10)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %11 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.2, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @incrementalnewlinedecoder_reset(%struct.nldecoder_object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.nldecoder_object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.nldecoder_object* %self, %struct.nldecoder_object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.nldecoder_object*, %struct.nldecoder_object** %self.addr, align 8
  %seennl = getelementptr inbounds %struct.nldecoder_object, %struct.nldecoder_object* %0, i32 0, i32 3
  %bf.load = load i8, i8* %seennl, align 8
  %bf.clear = and i8 %bf.load, -29
  store i8 %bf.clear, i8* %seennl, align 8
  %1 = load %struct.nldecoder_object*, %struct.nldecoder_object** %self.addr, align 8
  %pendingcr = getelementptr inbounds %struct.nldecoder_object, %struct.nldecoder_object* %1, i32 0, i32 3
  %bf.load1 = load i8, i8* %pendingcr, align 8
  %bf.clear2 = and i8 %bf.load1, -2
  store i8 %bf.clear2, i8* %pendingcr, align 8
  %2 = load %struct.nldecoder_object*, %struct.nldecoder_object** %self.addr, align 8
  %decoder = getelementptr inbounds %struct.nldecoder_object, %struct.nldecoder_object* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %decoder, align 8
  %cmp = icmp ne %struct._object* %3, @_Py_NoneStruct
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.nldecoder_object*, %struct.nldecoder_object** %self.addr, align 8
  %decoder3 = getelementptr inbounds %struct.nldecoder_object, %struct.nldecoder_object* %4, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %decoder3, align 8
  %6 = load %struct._object*, %struct._object** @_PyIO_str_reset, align 8
  %call = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %5, %struct._object* %6, i8* null)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %7 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

declare i32 @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object*, %struct._object*, i8*, i8**, ...) #1

declare i32 @_PyArg_Parse_SizeT(%struct._object*, i8*, ...) #1

declare %struct._object* @PyBytes_FromString(i8*) #1

declare %struct._object* @_Py_BuildValue_SizeT(i8*, ...) #1

declare %struct._object* @_PyObject_CallMethodId_SizeT(%struct._object*, %struct._Py_Identifier*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @incrementalnewlinedecoder_newlines_get(%struct.nldecoder_object* %self, i8* %context) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.nldecoder_object*, align 8
  %context.addr = alloca i8*, align 8
  store %struct.nldecoder_object* %self, %struct.nldecoder_object** %self.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  %0 = load %struct.nldecoder_object*, %struct.nldecoder_object** %self.addr, align 8
  %seennl = getelementptr inbounds %struct.nldecoder_object, %struct.nldecoder_object* %0, i32 0, i32 3
  %bf.load = load i8, i8* %seennl, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 7
  %bf.cast = zext i8 %bf.clear to i32
  switch i32 %bf.cast, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 4, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 5, label %sw.bb.7
    i32 6, label %sw.bb.9
    i32 7, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %entry
  %call = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %call2 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %call4 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0))
  store %struct._object* %call4, %struct._object** %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  %call6 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0))
  store %struct._object* %call6, %struct._object** %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  %call8 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0))
  store %struct._object* %call8, %struct._object** %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  %call10 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0))
  store %struct._object* %call10, %struct._object** %retval
  br label %return

sw.bb.11:                                         ; preds = %entry
  %call12 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0))
  store %struct._object* %call12, %struct._object** %retval
  br label %return

sw.default:                                       ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb.1, %sw.bb
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare i32 @_PyIOBase_finalize(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @_textiowrapper_clear(%struct.textio* %self) #0 {
entry:
  %self.addr = alloca %struct.textio*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp8 = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  %_py_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  %_py_tmp44 = alloca %struct._object*, align 8
  %_py_decref_tmp49 = alloca %struct._object*, align 8
  %_py_tmp62 = alloca %struct._object*, align 8
  %_py_decref_tmp67 = alloca %struct._object*, align 8
  %_py_tmp80 = alloca %struct._object*, align 8
  %_py_decref_tmp85 = alloca %struct._object*, align 8
  %_py_tmp98 = alloca %struct._object*, align 8
  %_py_decref_tmp103 = alloca %struct._object*, align 8
  %_py_tmp116 = alloca %struct._object*, align 8
  %_py_decref_tmp121 = alloca %struct._object*, align 8
  %_py_tmp134 = alloca %struct._object*, align 8
  %_py_decref_tmp139 = alloca %struct._object*, align 8
  %_py_tmp152 = alloca %struct._object*, align 8
  %_py_decref_tmp157 = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  %0 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.textio, %struct.textio* %0, i32 0, i32 1
  store i32 0, i32* %ok, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %buffer = getelementptr inbounds %struct.textio, %struct.textio* %1, i32 0, i32 4
  %2 = load %struct._object*, %struct._object** %buffer, align 8
  store %struct._object* %2, %struct._object** %_py_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %4 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %buffer1 = getelementptr inbounds %struct.textio, %struct.textio* %4, i32 0, i32 4
  store %struct._object* null, %struct._object** %buffer1, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body.2
  br label %if.end

if.else:                                          ; preds = %do.body.2
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.5

if.end.5:                                         ; preds = %do.end, %do.body
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %12 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoding = getelementptr inbounds %struct.textio, %struct.textio* %12, i32 0, i32 5
  %13 = load %struct._object*, %struct._object** %encoding, align 8
  store %struct._object* %13, %struct._object** %_py_tmp8, align 8
  %14 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  %cmp9 = icmp ne %struct._object* %14, null
  br i1 %cmp9, label %if.then.10, label %if.end.23

if.then.10:                                       ; preds = %do.body.7
  %15 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoding11 = getelementptr inbounds %struct.textio, %struct.textio* %15, i32 0, i32 5
  store %struct._object* null, %struct._object** %encoding11, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.10
  %16 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp13, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %18, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.12
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %21(%struct._object* %22)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %if.end.23

if.end.23:                                        ; preds = %do.end.22, %do.body.7
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  br label %do.body.25

do.body.25:                                       ; preds = %do.end.24
  %23 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoder = getelementptr inbounds %struct.textio, %struct.textio* %23, i32 0, i32 6
  %24 = load %struct._object*, %struct._object** %encoder, align 8
  store %struct._object* %24, %struct._object** %_py_tmp26, align 8
  %25 = load %struct._object*, %struct._object** %_py_tmp26, align 8
  %cmp27 = icmp ne %struct._object* %25, null
  br i1 %cmp27, label %if.then.28, label %if.end.41

if.then.28:                                       ; preds = %do.body.25
  %26 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoder29 = getelementptr inbounds %struct.textio, %struct.textio* %26, i32 0, i32 6
  store %struct._object* null, %struct._object** %encoder29, align 8
  br label %do.body.30

do.body.30:                                       ; preds = %if.then.28
  %27 = load %struct._object*, %struct._object** %_py_tmp26, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp31, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt32, align 8
  %dec33 = add i64 %29, -1
  store i64 %dec33, i64* %ob_refcnt32, align 8
  %cmp34 = icmp ne i64 %dec33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39

if.else.36:                                       ; preds = %do.body.30
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  call void %32(%struct._object* %33)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %if.end.41

if.end.41:                                        ; preds = %do.end.40, %do.body.25
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  br label %do.body.43

do.body.43:                                       ; preds = %do.end.42
  %34 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder = getelementptr inbounds %struct.textio, %struct.textio* %34, i32 0, i32 7
  %35 = load %struct._object*, %struct._object** %decoder, align 8
  store %struct._object* %35, %struct._object** %_py_tmp44, align 8
  %36 = load %struct._object*, %struct._object** %_py_tmp44, align 8
  %cmp45 = icmp ne %struct._object* %36, null
  br i1 %cmp45, label %if.then.46, label %if.end.59

if.then.46:                                       ; preds = %do.body.43
  %37 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder47 = getelementptr inbounds %struct.textio, %struct.textio* %37, i32 0, i32 7
  store %struct._object* null, %struct._object** %decoder47, align 8
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.46
  %38 = load %struct._object*, %struct._object** %_py_tmp44, align 8
  store %struct._object* %38, %struct._object** %_py_decref_tmp49, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt50, align 8
  %dec51 = add i64 %40, -1
  store i64 %dec51, i64* %ob_refcnt50, align 8
  %cmp52 = icmp ne i64 %dec51, 0
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %do.body.48
  br label %if.end.57

if.else.54:                                       ; preds = %do.body.48
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8
  %tp_dealloc56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc56, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  call void %43(%struct._object* %44)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.53
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  br label %if.end.59

if.end.59:                                        ; preds = %do.end.58, %do.body.43
  br label %do.end.60

do.end.60:                                        ; preds = %if.end.59
  br label %do.body.61

do.body.61:                                       ; preds = %do.end.60
  %45 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %readnl = getelementptr inbounds %struct.textio, %struct.textio* %45, i32 0, i32 8
  %46 = load %struct._object*, %struct._object** %readnl, align 8
  store %struct._object* %46, %struct._object** %_py_tmp62, align 8
  %47 = load %struct._object*, %struct._object** %_py_tmp62, align 8
  %cmp63 = icmp ne %struct._object* %47, null
  br i1 %cmp63, label %if.then.64, label %if.end.77

if.then.64:                                       ; preds = %do.body.61
  %48 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %readnl65 = getelementptr inbounds %struct.textio, %struct.textio* %48, i32 0, i32 8
  store %struct._object* null, %struct._object** %readnl65, align 8
  br label %do.body.66

do.body.66:                                       ; preds = %if.then.64
  %49 = load %struct._object*, %struct._object** %_py_tmp62, align 8
  store %struct._object* %49, %struct._object** %_py_decref_tmp67, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_refcnt68 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0
  %51 = load i64, i64* %ob_refcnt68, align 8
  %dec69 = add i64 %51, -1
  store i64 %dec69, i64* %ob_refcnt68, align 8
  %cmp70 = icmp ne i64 %dec69, 0
  br i1 %cmp70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %do.body.66
  br label %if.end.75

if.else.72:                                       ; preds = %do.body.66
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_type73 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type73, align 8
  %tp_dealloc74 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc74, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  call void %54(%struct._object* %55)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.72, %if.then.71
  br label %do.end.76

do.end.76:                                        ; preds = %if.end.75
  br label %if.end.77

if.end.77:                                        ; preds = %do.end.76, %do.body.61
  br label %do.end.78

do.end.78:                                        ; preds = %if.end.77
  br label %do.body.79

do.body.79:                                       ; preds = %do.end.78
  %56 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoded_chars = getelementptr inbounds %struct.textio, %struct.textio* %56, i32 0, i32 22
  %57 = load %struct._object*, %struct._object** %decoded_chars, align 8
  store %struct._object* %57, %struct._object** %_py_tmp80, align 8
  %58 = load %struct._object*, %struct._object** %_py_tmp80, align 8
  %cmp81 = icmp ne %struct._object* %58, null
  br i1 %cmp81, label %if.then.82, label %if.end.95

if.then.82:                                       ; preds = %do.body.79
  %59 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoded_chars83 = getelementptr inbounds %struct.textio, %struct.textio* %59, i32 0, i32 22
  store %struct._object* null, %struct._object** %decoded_chars83, align 8
  br label %do.body.84

do.body.84:                                       ; preds = %if.then.82
  %60 = load %struct._object*, %struct._object** %_py_tmp80, align 8
  store %struct._object* %60, %struct._object** %_py_decref_tmp85, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_refcnt86 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 0
  %62 = load i64, i64* %ob_refcnt86, align 8
  %dec87 = add i64 %62, -1
  store i64 %dec87, i64* %ob_refcnt86, align 8
  %cmp88 = icmp ne i64 %dec87, 0
  br i1 %cmp88, label %if.then.89, label %if.else.90

if.then.89:                                       ; preds = %do.body.84
  br label %if.end.93

if.else.90:                                       ; preds = %do.body.84
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_type91 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 1
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type91, align 8
  %tp_dealloc92 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %64, i32 0, i32 4
  %65 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc92, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  call void %65(%struct._object* %66)
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.90, %if.then.89
  br label %do.end.94

do.end.94:                                        ; preds = %if.end.93
  br label %if.end.95

if.end.95:                                        ; preds = %do.end.94, %do.body.79
  br label %do.end.96

do.end.96:                                        ; preds = %if.end.95
  br label %do.body.97

do.body.97:                                       ; preds = %do.end.96
  %67 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %pending_bytes = getelementptr inbounds %struct.textio, %struct.textio* %67, i32 0, i32 24
  %68 = load %struct._object*, %struct._object** %pending_bytes, align 8
  store %struct._object* %68, %struct._object** %_py_tmp98, align 8
  %69 = load %struct._object*, %struct._object** %_py_tmp98, align 8
  %cmp99 = icmp ne %struct._object* %69, null
  br i1 %cmp99, label %if.then.100, label %if.end.113

if.then.100:                                      ; preds = %do.body.97
  %70 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %pending_bytes101 = getelementptr inbounds %struct.textio, %struct.textio* %70, i32 0, i32 24
  store %struct._object* null, %struct._object** %pending_bytes101, align 8
  br label %do.body.102

do.body.102:                                      ; preds = %if.then.100
  %71 = load %struct._object*, %struct._object** %_py_tmp98, align 8
  store %struct._object* %71, %struct._object** %_py_decref_tmp103, align 8
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  %ob_refcnt104 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 0
  %73 = load i64, i64* %ob_refcnt104, align 8
  %dec105 = add i64 %73, -1
  store i64 %dec105, i64* %ob_refcnt104, align 8
  %cmp106 = icmp ne i64 %dec105, 0
  br i1 %cmp106, label %if.then.107, label %if.else.108

if.then.107:                                      ; preds = %do.body.102
  br label %if.end.111

if.else.108:                                      ; preds = %do.body.102
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  %ob_type109 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 1
  %75 = load %struct._typeobject*, %struct._typeobject** %ob_type109, align 8
  %tp_dealloc110 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %75, i32 0, i32 4
  %76 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc110, align 8
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  call void %76(%struct._object* %77)
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.108, %if.then.107
  br label %do.end.112

do.end.112:                                       ; preds = %if.end.111
  br label %if.end.113

if.end.113:                                       ; preds = %do.end.112, %do.body.97
  br label %do.end.114

do.end.114:                                       ; preds = %if.end.113
  br label %do.body.115

do.body.115:                                      ; preds = %do.end.114
  %78 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %snapshot = getelementptr inbounds %struct.textio, %struct.textio* %78, i32 0, i32 26
  %79 = load %struct._object*, %struct._object** %snapshot, align 8
  store %struct._object* %79, %struct._object** %_py_tmp116, align 8
  %80 = load %struct._object*, %struct._object** %_py_tmp116, align 8
  %cmp117 = icmp ne %struct._object* %80, null
  br i1 %cmp117, label %if.then.118, label %if.end.131

if.then.118:                                      ; preds = %do.body.115
  %81 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %snapshot119 = getelementptr inbounds %struct.textio, %struct.textio* %81, i32 0, i32 26
  store %struct._object* null, %struct._object** %snapshot119, align 8
  br label %do.body.120

do.body.120:                                      ; preds = %if.then.118
  %82 = load %struct._object*, %struct._object** %_py_tmp116, align 8
  store %struct._object* %82, %struct._object** %_py_decref_tmp121, align 8
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp121, align 8
  %ob_refcnt122 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 0
  %84 = load i64, i64* %ob_refcnt122, align 8
  %dec123 = add i64 %84, -1
  store i64 %dec123, i64* %ob_refcnt122, align 8
  %cmp124 = icmp ne i64 %dec123, 0
  br i1 %cmp124, label %if.then.125, label %if.else.126

if.then.125:                                      ; preds = %do.body.120
  br label %if.end.129

if.else.126:                                      ; preds = %do.body.120
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp121, align 8
  %ob_type127 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 1
  %86 = load %struct._typeobject*, %struct._typeobject** %ob_type127, align 8
  %tp_dealloc128 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %86, i32 0, i32 4
  %87 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc128, align 8
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp121, align 8
  call void %87(%struct._object* %88)
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.126, %if.then.125
  br label %do.end.130

do.end.130:                                       ; preds = %if.end.129
  br label %if.end.131

if.end.131:                                       ; preds = %do.end.130, %do.body.115
  br label %do.end.132

do.end.132:                                       ; preds = %if.end.131
  br label %do.body.133

do.body.133:                                      ; preds = %do.end.132
  %89 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %errors = getelementptr inbounds %struct.textio, %struct.textio* %89, i32 0, i32 9
  %90 = load %struct._object*, %struct._object** %errors, align 8
  store %struct._object* %90, %struct._object** %_py_tmp134, align 8
  %91 = load %struct._object*, %struct._object** %_py_tmp134, align 8
  %cmp135 = icmp ne %struct._object* %91, null
  br i1 %cmp135, label %if.then.136, label %if.end.149

if.then.136:                                      ; preds = %do.body.133
  %92 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %errors137 = getelementptr inbounds %struct.textio, %struct.textio* %92, i32 0, i32 9
  store %struct._object* null, %struct._object** %errors137, align 8
  br label %do.body.138

do.body.138:                                      ; preds = %if.then.136
  %93 = load %struct._object*, %struct._object** %_py_tmp134, align 8
  store %struct._object* %93, %struct._object** %_py_decref_tmp139, align 8
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8
  %ob_refcnt140 = getelementptr inbounds %struct._object, %struct._object* %94, i32 0, i32 0
  %95 = load i64, i64* %ob_refcnt140, align 8
  %dec141 = add i64 %95, -1
  store i64 %dec141, i64* %ob_refcnt140, align 8
  %cmp142 = icmp ne i64 %dec141, 0
  br i1 %cmp142, label %if.then.143, label %if.else.144

if.then.143:                                      ; preds = %do.body.138
  br label %if.end.147

if.else.144:                                      ; preds = %do.body.138
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8
  %ob_type145 = getelementptr inbounds %struct._object, %struct._object* %96, i32 0, i32 1
  %97 = load %struct._typeobject*, %struct._typeobject** %ob_type145, align 8
  %tp_dealloc146 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %97, i32 0, i32 4
  %98 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc146, align 8
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8
  call void %98(%struct._object* %99)
  br label %if.end.147

if.end.147:                                       ; preds = %if.else.144, %if.then.143
  br label %do.end.148

do.end.148:                                       ; preds = %if.end.147
  br label %if.end.149

if.end.149:                                       ; preds = %do.end.148, %do.body.133
  br label %do.end.150

do.end.150:                                       ; preds = %if.end.149
  br label %do.body.151

do.body.151:                                      ; preds = %do.end.150
  %100 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %raw = getelementptr inbounds %struct.textio, %struct.textio* %100, i32 0, i32 28
  %101 = load %struct._object*, %struct._object** %raw, align 8
  store %struct._object* %101, %struct._object** %_py_tmp152, align 8
  %102 = load %struct._object*, %struct._object** %_py_tmp152, align 8
  %cmp153 = icmp ne %struct._object* %102, null
  br i1 %cmp153, label %if.then.154, label %if.end.167

if.then.154:                                      ; preds = %do.body.151
  %103 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %raw155 = getelementptr inbounds %struct.textio, %struct.textio* %103, i32 0, i32 28
  store %struct._object* null, %struct._object** %raw155, align 8
  br label %do.body.156

do.body.156:                                      ; preds = %if.then.154
  %104 = load %struct._object*, %struct._object** %_py_tmp152, align 8
  store %struct._object* %104, %struct._object** %_py_decref_tmp157, align 8
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp157, align 8
  %ob_refcnt158 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 0
  %106 = load i64, i64* %ob_refcnt158, align 8
  %dec159 = add i64 %106, -1
  store i64 %dec159, i64* %ob_refcnt158, align 8
  %cmp160 = icmp ne i64 %dec159, 0
  br i1 %cmp160, label %if.then.161, label %if.else.162

if.then.161:                                      ; preds = %do.body.156
  br label %if.end.165

if.else.162:                                      ; preds = %do.body.156
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp157, align 8
  %ob_type163 = getelementptr inbounds %struct._object, %struct._object* %107, i32 0, i32 1
  %108 = load %struct._typeobject*, %struct._typeobject** %ob_type163, align 8
  %tp_dealloc164 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %108, i32 0, i32 4
  %109 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc164, align 8
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp157, align 8
  call void %109(%struct._object* %110)
  br label %if.end.165

if.end.165:                                       ; preds = %if.else.162, %if.then.161
  br label %do.end.166

do.end.166:                                       ; preds = %if.end.165
  br label %if.end.167

if.end.167:                                       ; preds = %do.end.166, %do.body.151
  br label %do.end.168

do.end.168:                                       ; preds = %if.end.167
  ret i32 0
}

declare void @PyObject_ClearWeakRefs(%struct._object*) #1

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #1

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

declare void @PyErr_Clear() #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

declare void @PyUnicode_AppendAndDel(%struct._object**, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @_textiowrapper_readline(%struct.textio* %self, i64 %limit) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.textio*, align 8
  %limit.addr = alloca i64, align 8
  %line = alloca %struct._object*, align 8
  %chunks = alloca %struct._object*, align 8
  %remaining = alloca %struct._object*, align 8
  %start = alloca i64, align 8
  %endpos = alloca i64, align 8
  %chunked = alloca i64, align 8
  %offset_to_buffer = alloca i64, align 8
  %res = alloca i32, align 4
  %r = alloca i32, align 4
  %_res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %ptr = alloca i8*, align 8
  %line_len = alloca i64, align 8
  %kind = alloca i32, align 4
  %consumed = alloca i64, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp54 = alloca %struct._object*, align 8
  %_py_tmp76 = alloca %struct._object*, align 8
  %_py_decref_tmp80 = alloca %struct._object*, align 8
  %s = alloca %struct._object*, align 8
  %_py_decref_tmp179 = alloca %struct._object*, align 8
  %_py_decref_tmp194 = alloca %struct._object*, align 8
  %_py_tmp216 = alloca %struct._object*, align 8
  %_py_decref_tmp221 = alloca %struct._object*, align 8
  %s246 = alloca %struct._object*, align 8
  %_py_tmp249 = alloca %struct._object*, align 8
  %_py_decref_tmp254 = alloca %struct._object*, align 8
  %_py_tmp291 = alloca %struct._object*, align 8
  %_py_decref_tmp296 = alloca %struct._object*, align 8
  %_py_decref_tmp322 = alloca %struct._object*, align 8
  %_py_tmp340 = alloca %struct._object*, align 8
  %_py_decref_tmp345 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp370 = alloca %struct._object*, align 8
  %_py_xdecref_tmp384 = alloca %struct._object*, align 8
  %_py_decref_tmp389 = alloca %struct._object*, align 8
  %_py_xdecref_tmp403 = alloca %struct._object*, align 8
  %_py_decref_tmp408 = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store i64 %limit, i64* %limit.addr, align 8
  store %struct._object* null, %struct._object** %line, align 8
  store %struct._object* null, %struct._object** %chunks, align 8
  store %struct._object* null, %struct._object** %remaining, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %1 = bitcast %struct.textio* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %2, @PyTextIOWrapper_Type
  br i1 %cmp, label %if.then, label %if.else.21

if.then:                                          ; preds = %do.body
  %3 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %raw = getelementptr inbounds %struct.textio, %struct.textio* %3, i32 0, i32 28
  %4 = load %struct._object*, %struct._object** %raw, align 8
  %cmp1 = icmp ne %struct._object* %4, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %5 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %raw3 = getelementptr inbounds %struct.textio, %struct.textio* %5, i32 0, i32 28
  %6 = load %struct._object*, %struct._object** %raw3, align 8
  %call = call i32 @_PyFileIO_closed(%struct._object* %6)
  store i32 %call, i32* %r, align 4
  br label %if.end.17

if.else:                                          ; preds = %if.then
  %7 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %call4 = call %struct._object* @textiowrapper_closed_get(%struct.textio* %7, i8* null)
  store %struct._object* %call4, %struct._object** %_res, align 8
  %8 = load %struct._object*, %struct._object** %_res, align 8
  %cmp5 = icmp eq %struct._object* %8, null
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else
  %9 = load %struct._object*, %struct._object** %_res, align 8
  %call7 = call i32 @PyObject_IsTrue(%struct._object* %9)
  store i32 %call7, i32* %r, align 4
  br label %do.body.8

do.body.8:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %_res, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.13

if.else.11:                                       ; preds = %do.body.8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.11, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.13
  %17 = load i32, i32* %r, align 4
  %cmp14 = icmp slt i32 %17, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %do.end
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.2
  %18 = load i32, i32* %r, align 4
  %cmp18 = icmp sgt i32 %18, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.17
  %19 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.17
  br label %if.end.26

if.else.21:                                       ; preds = %do.body
  %20 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %21 = bitcast %struct.textio* %20 to %struct._object*
  %call22 = call %struct._object* @_PyIOBase_check_closed(%struct._object* %21, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0))
  %cmp23 = icmp eq %struct._object* %call22, null
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.else.21
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.25:                                        ; preds = %if.else.21
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end.20
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  %22 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %call28 = call i32 @_textiowrapper_writeflush(%struct.textio* %22)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %do.end.27
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %do.end.27
  store i64 0, i64* %chunked, align 8
  br label %while.body

while.body:                                       ; preds = %if.end.31, %do.end.233
  store i64 0, i64* %consumed, align 8
  store i32 1, i32* %res, align 4
  br label %while.cond.32

while.cond.32:                                    ; preds = %if.end.46, %if.then.41, %while.body
  %23 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoded_chars = getelementptr inbounds %struct.textio, %struct.textio* %23, i32 0, i32 22
  %24 = load %struct._object*, %struct._object** %decoded_chars, align 8
  %tobool = icmp ne %struct._object* %24, null
  br i1 %tobool, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %while.cond.32
  %25 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoded_chars33 = getelementptr inbounds %struct.textio, %struct.textio* %25, i32 0, i32 22
  %26 = load %struct._object*, %struct._object** %decoded_chars33, align 8
  %27 = bitcast %struct._object* %26 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %27, i32 0, i32 1
  %28 = load i64, i64* %length, align 8
  %tobool34 = icmp ne i64 %28, 0
  %lnot = xor i1 %tobool34, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond.32
  %29 = phi i1 [ true, %while.cond.32 ], [ %lnot, %lor.rhs ]
  br i1 %29, label %while.body.35, label %while.end

while.body.35:                                    ; preds = %lor.end
  %30 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %call36 = call i32 @textiowrapper_read_chunk(%struct.textio* %30, i64 0)
  store i32 %call36, i32* %res, align 4
  %31 = load i32, i32* %res, align 4
  %cmp37 = icmp slt i32 %31, 0
  br i1 %cmp37, label %if.then.38, label %if.end.43

if.then.38:                                       ; preds = %while.body.35
  %call39 = call i32 @_PyIO_trap_eintr()
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.then.38
  br label %while.cond.32

if.end.42:                                        ; preds = %if.then.38
  br label %error

if.end.43:                                        ; preds = %while.body.35
  %32 = load i32, i32* %res, align 4
  %cmp44 = icmp eq i32 %32, 0
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.43
  br label %while.end

if.end.46:                                        ; preds = %if.end.43
  br label %while.cond.32

while.end:                                        ; preds = %if.then.45, %lor.end
  %33 = load i32, i32* %res, align 4
  %cmp47 = icmp eq i32 %33, 0
  br i1 %cmp47, label %if.then.48, label %if.end.66

if.then.48:                                       ; preds = %while.end
  %34 = load %struct.textio*, %struct.textio** %self.addr, align 8
  call void @textiowrapper_set_decoded_chars(%struct.textio* %34, %struct._object* null)
  br label %do.body.49

do.body.49:                                       ; preds = %if.then.48
  %35 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %snapshot = getelementptr inbounds %struct.textio, %struct.textio* %35, i32 0, i32 26
  %36 = load %struct._object*, %struct._object** %snapshot, align 8
  store %struct._object* %36, %struct._object** %_py_tmp, align 8
  %37 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp50 = icmp ne %struct._object* %37, null
  br i1 %cmp50, label %if.then.51, label %if.end.64

if.then.51:                                       ; preds = %do.body.49
  %38 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %snapshot52 = getelementptr inbounds %struct.textio, %struct.textio* %38, i32 0, i32 26
  store %struct._object* null, %struct._object** %snapshot52, align 8
  br label %do.body.53

do.body.53:                                       ; preds = %if.then.51
  %39 = load %struct._object*, %struct._object** %_py_tmp, align 8
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
  br label %if.end.64

if.end.64:                                        ; preds = %do.end.63, %do.body.49
  br label %do.end.65

do.end.65:                                        ; preds = %if.end.64
  store i64 0, i64* %offset_to_buffer, align 8
  store i64 0, i64* %endpos, align 8
  store i64 0, i64* %start, align 8
  br label %while.end.234

if.end.66:                                        ; preds = %while.end
  %46 = load %struct._object*, %struct._object** %remaining, align 8
  %cmp67 = icmp eq %struct._object* %46, null
  br i1 %cmp67, label %if.then.68, label %if.else.71

if.then.68:                                       ; preds = %if.end.66
  %47 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoded_chars69 = getelementptr inbounds %struct.textio, %struct.textio* %47, i32 0, i32 22
  %48 = load %struct._object*, %struct._object** %decoded_chars69, align 8
  store %struct._object* %48, %struct._object** %line, align 8
  %49 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoded_chars_used = getelementptr inbounds %struct.textio, %struct.textio* %49, i32 0, i32 23
  %50 = load i64, i64* %decoded_chars_used, align 8
  store i64 %50, i64* %start, align 8
  store i64 0, i64* %offset_to_buffer, align 8
  %51 = load %struct._object*, %struct._object** %line, align 8
  %ob_refcnt70 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0
  %52 = load i64, i64* %ob_refcnt70, align 8
  %inc = add i64 %52, 1
  store i64 %inc, i64* %ob_refcnt70, align 8
  br label %if.end.100

if.else.71:                                       ; preds = %if.end.66
  %53 = load %struct._object*, %struct._object** %remaining, align 8
  %54 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoded_chars72 = getelementptr inbounds %struct.textio, %struct.textio* %54, i32 0, i32 22
  %55 = load %struct._object*, %struct._object** %decoded_chars72, align 8
  %call73 = call %struct._object* @PyUnicode_Concat(%struct._object* %53, %struct._object* %55)
  store %struct._object* %call73, %struct._object** %line, align 8
  store i64 0, i64* %start, align 8
  %56 = load %struct._object*, %struct._object** %remaining, align 8
  %57 = bitcast %struct._object* %56 to %struct.PyASCIIObject*
  %length74 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %57, i32 0, i32 1
  %58 = load i64, i64* %length74, align 8
  store i64 %58, i64* %offset_to_buffer, align 8
  br label %do.body.75

do.body.75:                                       ; preds = %if.else.71
  %59 = load %struct._object*, %struct._object** %remaining, align 8
  store %struct._object* %59, %struct._object** %_py_tmp76, align 8
  %60 = load %struct._object*, %struct._object** %_py_tmp76, align 8
  %cmp77 = icmp ne %struct._object* %60, null
  br i1 %cmp77, label %if.then.78, label %if.end.90

if.then.78:                                       ; preds = %do.body.75
  store %struct._object* null, %struct._object** %remaining, align 8
  br label %do.body.79

do.body.79:                                       ; preds = %if.then.78
  %61 = load %struct._object*, %struct._object** %_py_tmp76, align 8
  store %struct._object* %61, %struct._object** %_py_decref_tmp80, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8
  %ob_refcnt81 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0
  %63 = load i64, i64* %ob_refcnt81, align 8
  %dec82 = add i64 %63, -1
  store i64 %dec82, i64* %ob_refcnt81, align 8
  %cmp83 = icmp ne i64 %dec82, 0
  br i1 %cmp83, label %if.then.84, label %if.else.85

if.then.84:                                       ; preds = %do.body.79
  br label %if.end.88

if.else.85:                                       ; preds = %do.body.79
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8
  %ob_type86 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type86, align 8
  %tp_dealloc87 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc87, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8
  call void %66(%struct._object* %67)
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.85, %if.then.84
  br label %do.end.89

do.end.89:                                        ; preds = %if.end.88
  br label %if.end.90

if.end.90:                                        ; preds = %do.end.89, %do.body.75
  br label %do.end.91

do.end.91:                                        ; preds = %if.end.90
  %68 = load %struct._object*, %struct._object** %line, align 8
  %cmp92 = icmp eq %struct._object* %68, null
  br i1 %cmp92, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %do.end.91
  br label %error

if.end.94:                                        ; preds = %do.end.91
  %69 = load %struct._object*, %struct._object** %line, align 8
  %70 = bitcast %struct._object* %69 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %70, i32 0, i32 3
  %71 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %71, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool95 = icmp ne i32 %bf.clear, 0
  br i1 %tobool95, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.94
  br label %cond.end

cond.false:                                       ; preds = %if.end.94
  %72 = load %struct._object*, %struct._object** %line, align 8
  %call96 = call i32 @_PyUnicode_Ready(%struct._object* %72)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call96, %cond.false ]
  %cmp97 = icmp eq i32 %cond, -1
  br i1 %cmp97, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %cond.end
  br label %error

if.end.99:                                        ; preds = %cond.end
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.then.68
  %73 = load %struct._object*, %struct._object** %line, align 8
  %74 = bitcast %struct._object* %73 to %struct.PyASCIIObject*
  %state101 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %74, i32 0, i32 3
  %75 = bitcast %struct.anon* %state101 to i32*
  %bf.load102 = load i32, i32* %75, align 4
  %bf.lshr103 = lshr i32 %bf.load102, 5
  %bf.clear104 = and i32 %bf.lshr103, 1
  %tobool105 = icmp ne i32 %bf.clear104, 0
  br i1 %tobool105, label %cond.true.106, label %cond.false.117

cond.true.106:                                    ; preds = %if.end.100
  %76 = load %struct._object*, %struct._object** %line, align 8
  %77 = bitcast %struct._object* %76 to %struct.PyASCIIObject*
  %state107 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %77, i32 0, i32 3
  %78 = bitcast %struct.anon* %state107 to i32*
  %bf.load108 = load i32, i32* %78, align 4
  %bf.lshr109 = lshr i32 %bf.load108, 6
  %bf.clear110 = and i32 %bf.lshr109, 1
  %tobool111 = icmp ne i32 %bf.clear110, 0
  br i1 %tobool111, label %cond.true.112, label %cond.false.113

cond.true.112:                                    ; preds = %cond.true.106
  %79 = load %struct._object*, %struct._object** %line, align 8
  %80 = bitcast %struct._object* %79 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %80, i64 1
  %81 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end.115

cond.false.113:                                   ; preds = %cond.true.106
  %82 = load %struct._object*, %struct._object** %line, align 8
  %83 = bitcast %struct._object* %82 to %struct.PyCompactUnicodeObject*
  %add.ptr114 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %83, i64 1
  %84 = bitcast %struct.PyCompactUnicodeObject* %add.ptr114 to i8*
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.false.113, %cond.true.112
  %cond116 = phi i8* [ %81, %cond.true.112 ], [ %84, %cond.false.113 ]
  br label %cond.end.118

cond.false.117:                                   ; preds = %if.end.100
  %85 = load %struct._object*, %struct._object** %line, align 8
  %86 = bitcast %struct._object* %85 to %struct.PyUnicodeObject*
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %86, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %87 = load i8*, i8** %any, align 8
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.117, %cond.end.115
  %cond119 = phi i8* [ %cond116, %cond.end.115 ], [ %87, %cond.false.117 ]
  store i8* %cond119, i8** %ptr, align 8
  %88 = load %struct._object*, %struct._object** %line, align 8
  %89 = bitcast %struct._object* %88 to %struct.PyASCIIObject*
  %length120 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %89, i32 0, i32 1
  %90 = load i64, i64* %length120, align 8
  store i64 %90, i64* %line_len, align 8
  %91 = load %struct._object*, %struct._object** %line, align 8
  %92 = bitcast %struct._object* %91 to %struct.PyASCIIObject*
  %state121 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %92, i32 0, i32 3
  %93 = bitcast %struct.anon* %state121 to i32*
  %bf.load122 = load i32, i32* %93, align 4
  %bf.lshr123 = lshr i32 %bf.load122, 2
  %bf.clear124 = and i32 %bf.lshr123, 7
  store i32 %bf.clear124, i32* %kind, align 4
  %94 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %readtranslate = getelementptr inbounds %struct.textio, %struct.textio* %94, i32 0, i32 14
  %95 = load i8, i8* %readtranslate, align 1
  %conv = sext i8 %95 to i32
  %96 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %readuniversal = getelementptr inbounds %struct.textio, %struct.textio* %96, i32 0, i32 13
  %97 = load i8, i8* %readuniversal, align 1
  %conv125 = sext i8 %97 to i32
  %98 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %readnl = getelementptr inbounds %struct.textio, %struct.textio* %98, i32 0, i32 8
  %99 = load %struct._object*, %struct._object** %readnl, align 8
  %100 = load i32, i32* %kind, align 4
  %101 = load i8*, i8** %ptr, align 8
  %102 = load i32, i32* %kind, align 4
  %conv126 = sext i32 %102 to i64
  %103 = load i64, i64* %start, align 8
  %mul = mul i64 %conv126, %103
  %add.ptr127 = getelementptr i8, i8* %101, i64 %mul
  %104 = load i8*, i8** %ptr, align 8
  %105 = load i32, i32* %kind, align 4
  %conv128 = sext i32 %105 to i64
  %106 = load i64, i64* %line_len, align 8
  %mul129 = mul i64 %conv128, %106
  %add.ptr130 = getelementptr i8, i8* %104, i64 %mul129
  %call131 = call i64 @_PyIO_find_line_ending(i32 %conv, i32 %conv125, %struct._object* %99, i32 %100, i8* %add.ptr127, i8* %add.ptr130, i64* %consumed)
  store i64 %call131, i64* %endpos, align 8
  %107 = load i64, i64* %endpos, align 8
  %cmp132 = icmp sge i64 %107, 0
  br i1 %cmp132, label %if.then.134, label %if.end.144

if.then.134:                                      ; preds = %cond.end.118
  %108 = load i64, i64* %start, align 8
  %109 = load i64, i64* %endpos, align 8
  %add = add i64 %109, %108
  store i64 %add, i64* %endpos, align 8
  %110 = load i64, i64* %limit.addr, align 8
  %cmp135 = icmp sge i64 %110, 0
  br i1 %cmp135, label %land.lhs.true, label %if.end.143

land.lhs.true:                                    ; preds = %if.then.134
  %111 = load i64, i64* %endpos, align 8
  %112 = load i64, i64* %start, align 8
  %sub = sub i64 %111, %112
  %113 = load i64, i64* %chunked, align 8
  %add137 = add i64 %sub, %113
  %114 = load i64, i64* %limit.addr, align 8
  %cmp138 = icmp sge i64 %add137, %114
  br i1 %cmp138, label %if.then.140, label %if.end.143

if.then.140:                                      ; preds = %land.lhs.true
  %115 = load i64, i64* %start, align 8
  %116 = load i64, i64* %limit.addr, align 8
  %add141 = add i64 %115, %116
  %117 = load i64, i64* %chunked, align 8
  %sub142 = sub i64 %add141, %117
  store i64 %sub142, i64* %endpos, align 8
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.140, %land.lhs.true, %if.then.134
  br label %while.end.234

if.end.144:                                       ; preds = %cond.end.118
  %118 = load i64, i64* %consumed, align 8
  %119 = load i64, i64* %start, align 8
  %add145 = add i64 %118, %119
  store i64 %add145, i64* %endpos, align 8
  %120 = load i64, i64* %limit.addr, align 8
  %cmp146 = icmp sge i64 %120, 0
  br i1 %cmp146, label %land.lhs.true.148, label %if.end.156

land.lhs.true.148:                                ; preds = %if.end.144
  %121 = load i64, i64* %endpos, align 8
  %122 = load i64, i64* %start, align 8
  %sub149 = sub i64 %121, %122
  %123 = load i64, i64* %chunked, align 8
  %add150 = add i64 %sub149, %123
  %124 = load i64, i64* %limit.addr, align 8
  %cmp151 = icmp sge i64 %add150, %124
  br i1 %cmp151, label %if.then.153, label %if.end.156

if.then.153:                                      ; preds = %land.lhs.true.148
  %125 = load i64, i64* %start, align 8
  %126 = load i64, i64* %limit.addr, align 8
  %add154 = add i64 %125, %126
  %127 = load i64, i64* %chunked, align 8
  %sub155 = sub i64 %add154, %127
  store i64 %sub155, i64* %endpos, align 8
  br label %while.end.234

if.end.156:                                       ; preds = %land.lhs.true.148, %if.end.144
  %128 = load i64, i64* %endpos, align 8
  %129 = load i64, i64* %start, align 8
  %cmp157 = icmp sgt i64 %128, %129
  br i1 %cmp157, label %if.then.159, label %if.end.205

if.then.159:                                      ; preds = %if.end.156
  %130 = load %struct._object*, %struct._object** %chunks, align 8
  %cmp160 = icmp eq %struct._object* %130, null
  br i1 %cmp160, label %if.then.162, label %if.end.168

if.then.162:                                      ; preds = %if.then.159
  %call163 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call163, %struct._object** %chunks, align 8
  %131 = load %struct._object*, %struct._object** %chunks, align 8
  %cmp164 = icmp eq %struct._object* %131, null
  br i1 %cmp164, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %if.then.162
  br label %error

if.end.167:                                       ; preds = %if.then.162
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.then.159
  %132 = load %struct._object*, %struct._object** %line, align 8
  %133 = load i64, i64* %start, align 8
  %134 = load i64, i64* %endpos, align 8
  %call169 = call %struct._object* @PyUnicode_Substring(%struct._object* %132, i64 %133, i64 %134)
  store %struct._object* %call169, %struct._object** %s, align 8
  %135 = load %struct._object*, %struct._object** %s, align 8
  %cmp170 = icmp eq %struct._object* %135, null
  br i1 %cmp170, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %if.end.168
  br label %error

if.end.173:                                       ; preds = %if.end.168
  %136 = load %struct._object*, %struct._object** %chunks, align 8
  %137 = load %struct._object*, %struct._object** %s, align 8
  %call174 = call i32 @PyList_Append(%struct._object* %136, %struct._object* %137)
  %cmp175 = icmp slt i32 %call174, 0
  br i1 %cmp175, label %if.then.177, label %if.end.190

if.then.177:                                      ; preds = %if.end.173
  br label %do.body.178

do.body.178:                                      ; preds = %if.then.177
  %138 = load %struct._object*, %struct._object** %s, align 8
  store %struct._object* %138, %struct._object** %_py_decref_tmp179, align 8
  %139 = load %struct._object*, %struct._object** %_py_decref_tmp179, align 8
  %ob_refcnt180 = getelementptr inbounds %struct._object, %struct._object* %139, i32 0, i32 0
  %140 = load i64, i64* %ob_refcnt180, align 8
  %dec181 = add i64 %140, -1
  store i64 %dec181, i64* %ob_refcnt180, align 8
  %cmp182 = icmp ne i64 %dec181, 0
  br i1 %cmp182, label %if.then.184, label %if.else.185

if.then.184:                                      ; preds = %do.body.178
  br label %if.end.188

if.else.185:                                      ; preds = %do.body.178
  %141 = load %struct._object*, %struct._object** %_py_decref_tmp179, align 8
  %ob_type186 = getelementptr inbounds %struct._object, %struct._object* %141, i32 0, i32 1
  %142 = load %struct._typeobject*, %struct._typeobject** %ob_type186, align 8
  %tp_dealloc187 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %142, i32 0, i32 4
  %143 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc187, align 8
  %144 = load %struct._object*, %struct._object** %_py_decref_tmp179, align 8
  call void %143(%struct._object* %144)
  br label %if.end.188

if.end.188:                                       ; preds = %if.else.185, %if.then.184
  br label %do.end.189

do.end.189:                                       ; preds = %if.end.188
  br label %error

if.end.190:                                       ; preds = %if.end.173
  %145 = load %struct._object*, %struct._object** %s, align 8
  %146 = bitcast %struct._object* %145 to %struct.PyASCIIObject*
  %length191 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %146, i32 0, i32 1
  %147 = load i64, i64* %length191, align 8
  %148 = load i64, i64* %chunked, align 8
  %add192 = add i64 %148, %147
  store i64 %add192, i64* %chunked, align 8
  br label %do.body.193

do.body.193:                                      ; preds = %if.end.190
  %149 = load %struct._object*, %struct._object** %s, align 8
  store %struct._object* %149, %struct._object** %_py_decref_tmp194, align 8
  %150 = load %struct._object*, %struct._object** %_py_decref_tmp194, align 8
  %ob_refcnt195 = getelementptr inbounds %struct._object, %struct._object* %150, i32 0, i32 0
  %151 = load i64, i64* %ob_refcnt195, align 8
  %dec196 = add i64 %151, -1
  store i64 %dec196, i64* %ob_refcnt195, align 8
  %cmp197 = icmp ne i64 %dec196, 0
  br i1 %cmp197, label %if.then.199, label %if.else.200

if.then.199:                                      ; preds = %do.body.193
  br label %if.end.203

if.else.200:                                      ; preds = %do.body.193
  %152 = load %struct._object*, %struct._object** %_py_decref_tmp194, align 8
  %ob_type201 = getelementptr inbounds %struct._object, %struct._object* %152, i32 0, i32 1
  %153 = load %struct._typeobject*, %struct._typeobject** %ob_type201, align 8
  %tp_dealloc202 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %153, i32 0, i32 4
  %154 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc202, align 8
  %155 = load %struct._object*, %struct._object** %_py_decref_tmp194, align 8
  call void %154(%struct._object* %155)
  br label %if.end.203

if.end.203:                                       ; preds = %if.else.200, %if.then.199
  br label %do.end.204

do.end.204:                                       ; preds = %if.end.203
  br label %if.end.205

if.end.205:                                       ; preds = %do.end.204, %if.end.156
  %156 = load i64, i64* %endpos, align 8
  %157 = load i64, i64* %line_len, align 8
  %cmp206 = icmp slt i64 %156, %157
  br i1 %cmp206, label %if.then.208, label %if.end.214

if.then.208:                                      ; preds = %if.end.205
  %158 = load %struct._object*, %struct._object** %line, align 8
  %159 = load i64, i64* %endpos, align 8
  %160 = load i64, i64* %line_len, align 8
  %call209 = call %struct._object* @PyUnicode_Substring(%struct._object* %158, i64 %159, i64 %160)
  store %struct._object* %call209, %struct._object** %remaining, align 8
  %161 = load %struct._object*, %struct._object** %remaining, align 8
  %cmp210 = icmp eq %struct._object* %161, null
  br i1 %cmp210, label %if.then.212, label %if.end.213

if.then.212:                                      ; preds = %if.then.208
  br label %error

if.end.213:                                       ; preds = %if.then.208
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.213, %if.end.205
  br label %do.body.215

do.body.215:                                      ; preds = %if.end.214
  %162 = load %struct._object*, %struct._object** %line, align 8
  store %struct._object* %162, %struct._object** %_py_tmp216, align 8
  %163 = load %struct._object*, %struct._object** %_py_tmp216, align 8
  %cmp217 = icmp ne %struct._object* %163, null
  br i1 %cmp217, label %if.then.219, label %if.end.232

if.then.219:                                      ; preds = %do.body.215
  store %struct._object* null, %struct._object** %line, align 8
  br label %do.body.220

do.body.220:                                      ; preds = %if.then.219
  %164 = load %struct._object*, %struct._object** %_py_tmp216, align 8
  store %struct._object* %164, %struct._object** %_py_decref_tmp221, align 8
  %165 = load %struct._object*, %struct._object** %_py_decref_tmp221, align 8
  %ob_refcnt222 = getelementptr inbounds %struct._object, %struct._object* %165, i32 0, i32 0
  %166 = load i64, i64* %ob_refcnt222, align 8
  %dec223 = add i64 %166, -1
  store i64 %dec223, i64* %ob_refcnt222, align 8
  %cmp224 = icmp ne i64 %dec223, 0
  br i1 %cmp224, label %if.then.226, label %if.else.227

if.then.226:                                      ; preds = %do.body.220
  br label %if.end.230

if.else.227:                                      ; preds = %do.body.220
  %167 = load %struct._object*, %struct._object** %_py_decref_tmp221, align 8
  %ob_type228 = getelementptr inbounds %struct._object, %struct._object* %167, i32 0, i32 1
  %168 = load %struct._typeobject*, %struct._typeobject** %ob_type228, align 8
  %tp_dealloc229 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %168, i32 0, i32 4
  %169 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc229, align 8
  %170 = load %struct._object*, %struct._object** %_py_decref_tmp221, align 8
  call void %169(%struct._object* %170)
  br label %if.end.230

if.end.230:                                       ; preds = %if.else.227, %if.then.226
  br label %do.end.231

do.end.231:                                       ; preds = %if.end.230
  br label %if.end.232

if.end.232:                                       ; preds = %do.end.231, %do.body.215
  br label %do.end.233

do.end.233:                                       ; preds = %if.end.232
  %171 = load %struct.textio*, %struct.textio** %self.addr, align 8
  call void @textiowrapper_set_decoded_chars(%struct.textio* %171, %struct._object* null)
  br label %while.body

while.end.234:                                    ; preds = %if.then.153, %if.end.143, %do.end.65
  %172 = load %struct._object*, %struct._object** %line, align 8
  %cmp235 = icmp ne %struct._object* %172, null
  br i1 %cmp235, label %if.then.237, label %if.end.272

if.then.237:                                      ; preds = %while.end.234
  %173 = load i64, i64* %endpos, align 8
  %174 = load i64, i64* %offset_to_buffer, align 8
  %sub238 = sub i64 %173, %174
  %175 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoded_chars_used239 = getelementptr inbounds %struct.textio, %struct.textio* %175, i32 0, i32 23
  store i64 %sub238, i64* %decoded_chars_used239, align 8
  %176 = load i64, i64* %start, align 8
  %cmp240 = icmp sgt i64 %176, 0
  br i1 %cmp240, label %if.then.245, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.237
  %177 = load i64, i64* %endpos, align 8
  %178 = load %struct._object*, %struct._object** %line, align 8
  %179 = bitcast %struct._object* %178 to %struct.PyASCIIObject*
  %length242 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %179, i32 0, i32 1
  %180 = load i64, i64* %length242, align 8
  %cmp243 = icmp slt i64 %177, %180
  br i1 %cmp243, label %if.then.245, label %if.end.271

if.then.245:                                      ; preds = %lor.lhs.false, %if.then.237
  %181 = load %struct._object*, %struct._object** %line, align 8
  %182 = load i64, i64* %start, align 8
  %183 = load i64, i64* %endpos, align 8
  %call247 = call %struct._object* @PyUnicode_Substring(%struct._object* %181, i64 %182, i64 %183)
  store %struct._object* %call247, %struct._object** %s246, align 8
  br label %do.body.248

do.body.248:                                      ; preds = %if.then.245
  %184 = load %struct._object*, %struct._object** %line, align 8
  store %struct._object* %184, %struct._object** %_py_tmp249, align 8
  %185 = load %struct._object*, %struct._object** %_py_tmp249, align 8
  %cmp250 = icmp ne %struct._object* %185, null
  br i1 %cmp250, label %if.then.252, label %if.end.265

if.then.252:                                      ; preds = %do.body.248
  store %struct._object* null, %struct._object** %line, align 8
  br label %do.body.253

do.body.253:                                      ; preds = %if.then.252
  %186 = load %struct._object*, %struct._object** %_py_tmp249, align 8
  store %struct._object* %186, %struct._object** %_py_decref_tmp254, align 8
  %187 = load %struct._object*, %struct._object** %_py_decref_tmp254, align 8
  %ob_refcnt255 = getelementptr inbounds %struct._object, %struct._object* %187, i32 0, i32 0
  %188 = load i64, i64* %ob_refcnt255, align 8
  %dec256 = add i64 %188, -1
  store i64 %dec256, i64* %ob_refcnt255, align 8
  %cmp257 = icmp ne i64 %dec256, 0
  br i1 %cmp257, label %if.then.259, label %if.else.260

if.then.259:                                      ; preds = %do.body.253
  br label %if.end.263

if.else.260:                                      ; preds = %do.body.253
  %189 = load %struct._object*, %struct._object** %_py_decref_tmp254, align 8
  %ob_type261 = getelementptr inbounds %struct._object, %struct._object* %189, i32 0, i32 1
  %190 = load %struct._typeobject*, %struct._typeobject** %ob_type261, align 8
  %tp_dealloc262 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %190, i32 0, i32 4
  %191 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc262, align 8
  %192 = load %struct._object*, %struct._object** %_py_decref_tmp254, align 8
  call void %191(%struct._object* %192)
  br label %if.end.263

if.end.263:                                       ; preds = %if.else.260, %if.then.259
  br label %do.end.264

do.end.264:                                       ; preds = %if.end.263
  br label %if.end.265

if.end.265:                                       ; preds = %do.end.264, %do.body.248
  br label %do.end.266

do.end.266:                                       ; preds = %if.end.265
  %193 = load %struct._object*, %struct._object** %s246, align 8
  %cmp267 = icmp eq %struct._object* %193, null
  br i1 %cmp267, label %if.then.269, label %if.end.270

if.then.269:                                      ; preds = %do.end.266
  br label %error

if.end.270:                                       ; preds = %do.end.266
  %194 = load %struct._object*, %struct._object** %s246, align 8
  store %struct._object* %194, %struct._object** %line, align 8
  br label %if.end.271

if.end.271:                                       ; preds = %if.end.270, %lor.lhs.false
  br label %if.end.272

if.end.272:                                       ; preds = %if.end.271, %while.end.234
  %195 = load %struct._object*, %struct._object** %remaining, align 8
  %cmp273 = icmp ne %struct._object* %195, null
  br i1 %cmp273, label %if.then.275, label %if.end.309

if.then.275:                                      ; preds = %if.end.272
  %196 = load %struct._object*, %struct._object** %chunks, align 8
  %cmp276 = icmp eq %struct._object* %196, null
  br i1 %cmp276, label %if.then.278, label %if.end.284

if.then.278:                                      ; preds = %if.then.275
  %call279 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call279, %struct._object** %chunks, align 8
  %197 = load %struct._object*, %struct._object** %chunks, align 8
  %cmp280 = icmp eq %struct._object* %197, null
  br i1 %cmp280, label %if.then.282, label %if.end.283

if.then.282:                                      ; preds = %if.then.278
  br label %error

if.end.283:                                       ; preds = %if.then.278
  br label %if.end.284

if.end.284:                                       ; preds = %if.end.283, %if.then.275
  %198 = load %struct._object*, %struct._object** %chunks, align 8
  %199 = load %struct._object*, %struct._object** %remaining, align 8
  %call285 = call i32 @PyList_Append(%struct._object* %198, %struct._object* %199)
  %cmp286 = icmp slt i32 %call285, 0
  br i1 %cmp286, label %if.then.288, label %if.end.289

if.then.288:                                      ; preds = %if.end.284
  br label %error

if.end.289:                                       ; preds = %if.end.284
  br label %do.body.290

do.body.290:                                      ; preds = %if.end.289
  %200 = load %struct._object*, %struct._object** %remaining, align 8
  store %struct._object* %200, %struct._object** %_py_tmp291, align 8
  %201 = load %struct._object*, %struct._object** %_py_tmp291, align 8
  %cmp292 = icmp ne %struct._object* %201, null
  br i1 %cmp292, label %if.then.294, label %if.end.307

if.then.294:                                      ; preds = %do.body.290
  store %struct._object* null, %struct._object** %remaining, align 8
  br label %do.body.295

do.body.295:                                      ; preds = %if.then.294
  %202 = load %struct._object*, %struct._object** %_py_tmp291, align 8
  store %struct._object* %202, %struct._object** %_py_decref_tmp296, align 8
  %203 = load %struct._object*, %struct._object** %_py_decref_tmp296, align 8
  %ob_refcnt297 = getelementptr inbounds %struct._object, %struct._object* %203, i32 0, i32 0
  %204 = load i64, i64* %ob_refcnt297, align 8
  %dec298 = add i64 %204, -1
  store i64 %dec298, i64* %ob_refcnt297, align 8
  %cmp299 = icmp ne i64 %dec298, 0
  br i1 %cmp299, label %if.then.301, label %if.else.302

if.then.301:                                      ; preds = %do.body.295
  br label %if.end.305

if.else.302:                                      ; preds = %do.body.295
  %205 = load %struct._object*, %struct._object** %_py_decref_tmp296, align 8
  %ob_type303 = getelementptr inbounds %struct._object, %struct._object* %205, i32 0, i32 1
  %206 = load %struct._typeobject*, %struct._typeobject** %ob_type303, align 8
  %tp_dealloc304 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %206, i32 0, i32 4
  %207 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc304, align 8
  %208 = load %struct._object*, %struct._object** %_py_decref_tmp296, align 8
  call void %207(%struct._object* %208)
  br label %if.end.305

if.end.305:                                       ; preds = %if.else.302, %if.then.301
  br label %do.end.306

do.end.306:                                       ; preds = %if.end.305
  br label %if.end.307

if.end.307:                                       ; preds = %do.end.306, %do.body.290
  br label %do.end.308

do.end.308:                                       ; preds = %if.end.307
  br label %if.end.309

if.end.309:                                       ; preds = %do.end.308, %if.end.272
  %209 = load %struct._object*, %struct._object** %chunks, align 8
  %cmp310 = icmp ne %struct._object* %209, null
  br i1 %cmp310, label %if.then.312, label %if.end.358

if.then.312:                                      ; preds = %if.end.309
  %210 = load %struct._object*, %struct._object** %line, align 8
  %cmp313 = icmp ne %struct._object* %210, null
  br i1 %cmp313, label %if.then.315, label %if.end.333

if.then.315:                                      ; preds = %if.then.312
  %211 = load %struct._object*, %struct._object** %chunks, align 8
  %212 = load %struct._object*, %struct._object** %line, align 8
  %call316 = call i32 @PyList_Append(%struct._object* %211, %struct._object* %212)
  %cmp317 = icmp slt i32 %call316, 0
  br i1 %cmp317, label %if.then.319, label %if.end.320

if.then.319:                                      ; preds = %if.then.315
  br label %error

if.end.320:                                       ; preds = %if.then.315
  br label %do.body.321

do.body.321:                                      ; preds = %if.end.320
  %213 = load %struct._object*, %struct._object** %line, align 8
  store %struct._object* %213, %struct._object** %_py_decref_tmp322, align 8
  %214 = load %struct._object*, %struct._object** %_py_decref_tmp322, align 8
  %ob_refcnt323 = getelementptr inbounds %struct._object, %struct._object* %214, i32 0, i32 0
  %215 = load i64, i64* %ob_refcnt323, align 8
  %dec324 = add i64 %215, -1
  store i64 %dec324, i64* %ob_refcnt323, align 8
  %cmp325 = icmp ne i64 %dec324, 0
  br i1 %cmp325, label %if.then.327, label %if.else.328

if.then.327:                                      ; preds = %do.body.321
  br label %if.end.331

if.else.328:                                      ; preds = %do.body.321
  %216 = load %struct._object*, %struct._object** %_py_decref_tmp322, align 8
  %ob_type329 = getelementptr inbounds %struct._object, %struct._object* %216, i32 0, i32 1
  %217 = load %struct._typeobject*, %struct._typeobject** %ob_type329, align 8
  %tp_dealloc330 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %217, i32 0, i32 4
  %218 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc330, align 8
  %219 = load %struct._object*, %struct._object** %_py_decref_tmp322, align 8
  call void %218(%struct._object* %219)
  br label %if.end.331

if.end.331:                                       ; preds = %if.else.328, %if.then.327
  br label %do.end.332

do.end.332:                                       ; preds = %if.end.331
  br label %if.end.333

if.end.333:                                       ; preds = %do.end.332, %if.then.312
  %220 = load %struct._object*, %struct._object** @_PyIO_empty_str, align 8
  %221 = load %struct._object*, %struct._object** %chunks, align 8
  %call334 = call %struct._object* @PyUnicode_Join(%struct._object* %220, %struct._object* %221)
  store %struct._object* %call334, %struct._object** %line, align 8
  %222 = load %struct._object*, %struct._object** %line, align 8
  %cmp335 = icmp eq %struct._object* %222, null
  br i1 %cmp335, label %if.then.337, label %if.end.338

if.then.337:                                      ; preds = %if.end.333
  br label %error

if.end.338:                                       ; preds = %if.end.333
  br label %do.body.339

do.body.339:                                      ; preds = %if.end.338
  %223 = load %struct._object*, %struct._object** %chunks, align 8
  store %struct._object* %223, %struct._object** %_py_tmp340, align 8
  %224 = load %struct._object*, %struct._object** %_py_tmp340, align 8
  %cmp341 = icmp ne %struct._object* %224, null
  br i1 %cmp341, label %if.then.343, label %if.end.356

if.then.343:                                      ; preds = %do.body.339
  store %struct._object* null, %struct._object** %chunks, align 8
  br label %do.body.344

do.body.344:                                      ; preds = %if.then.343
  %225 = load %struct._object*, %struct._object** %_py_tmp340, align 8
  store %struct._object* %225, %struct._object** %_py_decref_tmp345, align 8
  %226 = load %struct._object*, %struct._object** %_py_decref_tmp345, align 8
  %ob_refcnt346 = getelementptr inbounds %struct._object, %struct._object* %226, i32 0, i32 0
  %227 = load i64, i64* %ob_refcnt346, align 8
  %dec347 = add i64 %227, -1
  store i64 %dec347, i64* %ob_refcnt346, align 8
  %cmp348 = icmp ne i64 %dec347, 0
  br i1 %cmp348, label %if.then.350, label %if.else.351

if.then.350:                                      ; preds = %do.body.344
  br label %if.end.354

if.else.351:                                      ; preds = %do.body.344
  %228 = load %struct._object*, %struct._object** %_py_decref_tmp345, align 8
  %ob_type352 = getelementptr inbounds %struct._object, %struct._object* %228, i32 0, i32 1
  %229 = load %struct._typeobject*, %struct._typeobject** %ob_type352, align 8
  %tp_dealloc353 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %229, i32 0, i32 4
  %230 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc353, align 8
  %231 = load %struct._object*, %struct._object** %_py_decref_tmp345, align 8
  call void %230(%struct._object* %231)
  br label %if.end.354

if.end.354:                                       ; preds = %if.else.351, %if.then.350
  br label %do.end.355

do.end.355:                                       ; preds = %if.end.354
  br label %if.end.356

if.end.356:                                       ; preds = %do.end.355, %do.body.339
  br label %do.end.357

do.end.357:                                       ; preds = %if.end.356
  br label %if.end.358

if.end.358:                                       ; preds = %do.end.357, %if.end.309
  %232 = load %struct._object*, %struct._object** %line, align 8
  %cmp359 = icmp eq %struct._object* %232, null
  br i1 %cmp359, label %if.then.361, label %if.end.364

if.then.361:                                      ; preds = %if.end.358
  %233 = load %struct._object*, %struct._object** @_PyIO_empty_str, align 8
  %ob_refcnt362 = getelementptr inbounds %struct._object, %struct._object* %233, i32 0, i32 0
  %234 = load i64, i64* %ob_refcnt362, align 8
  %inc363 = add i64 %234, 1
  store i64 %inc363, i64* %ob_refcnt362, align 8
  %235 = load %struct._object*, %struct._object** @_PyIO_empty_str, align 8
  store %struct._object* %235, %struct._object** %line, align 8
  br label %if.end.364

if.end.364:                                       ; preds = %if.then.361, %if.end.358
  %236 = load %struct._object*, %struct._object** %line, align 8
  store %struct._object* %236, %struct._object** %retval
  br label %return

error:                                            ; preds = %if.then.337, %if.then.319, %if.then.288, %if.then.282, %if.then.269, %if.then.212, %do.end.189, %if.then.172, %if.then.166, %if.then.98, %if.then.93, %if.end.42
  br label %do.body.365

do.body.365:                                      ; preds = %error
  %237 = load %struct._object*, %struct._object** %chunks, align 8
  store %struct._object* %237, %struct._object** %_py_xdecref_tmp, align 8
  %238 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp366 = icmp ne %struct._object* %238, null
  br i1 %cmp366, label %if.then.368, label %if.end.381

if.then.368:                                      ; preds = %do.body.365
  br label %do.body.369

do.body.369:                                      ; preds = %if.then.368
  %239 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %239, %struct._object** %_py_decref_tmp370, align 8
  %240 = load %struct._object*, %struct._object** %_py_decref_tmp370, align 8
  %ob_refcnt371 = getelementptr inbounds %struct._object, %struct._object* %240, i32 0, i32 0
  %241 = load i64, i64* %ob_refcnt371, align 8
  %dec372 = add i64 %241, -1
  store i64 %dec372, i64* %ob_refcnt371, align 8
  %cmp373 = icmp ne i64 %dec372, 0
  br i1 %cmp373, label %if.then.375, label %if.else.376

if.then.375:                                      ; preds = %do.body.369
  br label %if.end.379

if.else.376:                                      ; preds = %do.body.369
  %242 = load %struct._object*, %struct._object** %_py_decref_tmp370, align 8
  %ob_type377 = getelementptr inbounds %struct._object, %struct._object* %242, i32 0, i32 1
  %243 = load %struct._typeobject*, %struct._typeobject** %ob_type377, align 8
  %tp_dealloc378 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %243, i32 0, i32 4
  %244 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc378, align 8
  %245 = load %struct._object*, %struct._object** %_py_decref_tmp370, align 8
  call void %244(%struct._object* %245)
  br label %if.end.379

if.end.379:                                       ; preds = %if.else.376, %if.then.375
  br label %do.end.380

do.end.380:                                       ; preds = %if.end.379
  br label %if.end.381

if.end.381:                                       ; preds = %do.end.380, %do.body.365
  br label %do.end.382

do.end.382:                                       ; preds = %if.end.381
  br label %do.body.383

do.body.383:                                      ; preds = %do.end.382
  %246 = load %struct._object*, %struct._object** %remaining, align 8
  store %struct._object* %246, %struct._object** %_py_xdecref_tmp384, align 8
  %247 = load %struct._object*, %struct._object** %_py_xdecref_tmp384, align 8
  %cmp385 = icmp ne %struct._object* %247, null
  br i1 %cmp385, label %if.then.387, label %if.end.400

if.then.387:                                      ; preds = %do.body.383
  br label %do.body.388

do.body.388:                                      ; preds = %if.then.387
  %248 = load %struct._object*, %struct._object** %_py_xdecref_tmp384, align 8
  store %struct._object* %248, %struct._object** %_py_decref_tmp389, align 8
  %249 = load %struct._object*, %struct._object** %_py_decref_tmp389, align 8
  %ob_refcnt390 = getelementptr inbounds %struct._object, %struct._object* %249, i32 0, i32 0
  %250 = load i64, i64* %ob_refcnt390, align 8
  %dec391 = add i64 %250, -1
  store i64 %dec391, i64* %ob_refcnt390, align 8
  %cmp392 = icmp ne i64 %dec391, 0
  br i1 %cmp392, label %if.then.394, label %if.else.395

if.then.394:                                      ; preds = %do.body.388
  br label %if.end.398

if.else.395:                                      ; preds = %do.body.388
  %251 = load %struct._object*, %struct._object** %_py_decref_tmp389, align 8
  %ob_type396 = getelementptr inbounds %struct._object, %struct._object* %251, i32 0, i32 1
  %252 = load %struct._typeobject*, %struct._typeobject** %ob_type396, align 8
  %tp_dealloc397 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %252, i32 0, i32 4
  %253 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc397, align 8
  %254 = load %struct._object*, %struct._object** %_py_decref_tmp389, align 8
  call void %253(%struct._object* %254)
  br label %if.end.398

if.end.398:                                       ; preds = %if.else.395, %if.then.394
  br label %do.end.399

do.end.399:                                       ; preds = %if.end.398
  br label %if.end.400

if.end.400:                                       ; preds = %do.end.399, %do.body.383
  br label %do.end.401

do.end.401:                                       ; preds = %if.end.400
  br label %do.body.402

do.body.402:                                      ; preds = %do.end.401
  %255 = load %struct._object*, %struct._object** %line, align 8
  store %struct._object* %255, %struct._object** %_py_xdecref_tmp403, align 8
  %256 = load %struct._object*, %struct._object** %_py_xdecref_tmp403, align 8
  %cmp404 = icmp ne %struct._object* %256, null
  br i1 %cmp404, label %if.then.406, label %if.end.419

if.then.406:                                      ; preds = %do.body.402
  br label %do.body.407

do.body.407:                                      ; preds = %if.then.406
  %257 = load %struct._object*, %struct._object** %_py_xdecref_tmp403, align 8
  store %struct._object* %257, %struct._object** %_py_decref_tmp408, align 8
  %258 = load %struct._object*, %struct._object** %_py_decref_tmp408, align 8
  %ob_refcnt409 = getelementptr inbounds %struct._object, %struct._object* %258, i32 0, i32 0
  %259 = load i64, i64* %ob_refcnt409, align 8
  %dec410 = add i64 %259, -1
  store i64 %dec410, i64* %ob_refcnt409, align 8
  %cmp411 = icmp ne i64 %dec410, 0
  br i1 %cmp411, label %if.then.413, label %if.else.414

if.then.413:                                      ; preds = %do.body.407
  br label %if.end.417

if.else.414:                                      ; preds = %do.body.407
  %260 = load %struct._object*, %struct._object** %_py_decref_tmp408, align 8
  %ob_type415 = getelementptr inbounds %struct._object, %struct._object* %260, i32 0, i32 1
  %261 = load %struct._typeobject*, %struct._typeobject** %ob_type415, align 8
  %tp_dealloc416 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %261, i32 0, i32 4
  %262 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc416, align 8
  %263 = load %struct._object*, %struct._object** %_py_decref_tmp408, align 8
  call void %262(%struct._object* %263)
  br label %if.end.417

if.end.417:                                       ; preds = %if.else.414, %if.then.413
  br label %do.end.418

do.end.418:                                       ; preds = %if.end.417
  br label %if.end.419

if.end.419:                                       ; preds = %do.end.418, %do.body.402
  br label %do.end.420

do.end.420:                                       ; preds = %if.end.419
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.420, %if.end.364, %if.then.30, %if.then.24, %if.then.19, %if.then.15, %if.then.6
  %264 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %264
}

declare i32 @_PyFileIO_closed(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @textiowrapper_closed_get(%struct.textio* %self, i8* %context) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.textio*, align 8
  %context.addr = alloca i8*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  %0 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.textio, %struct.textio* %0, i32 0, i32 1
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %detached = getelementptr inbounds %struct.textio, %struct.textio* %2, i32 0, i32 2
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %buffer = getelementptr inbounds %struct.textio, %struct.textio* %6, i32 0, i32 4
  %7 = load %struct._object*, %struct._object** %buffer, align 8
  %8 = load %struct._object*, %struct._object** @_PyIO_str_closed, align 8
  %call = call %struct._object* @PyObject_GetAttr(%struct._object* %7, %struct._object* %8)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.end
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

declare i32 @PyObject_IsTrue(%struct._object*) #1

declare %struct._object* @_PyIOBase_check_closed(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @_textiowrapper_writeflush(%struct.textio* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.textio*, align 8
  %pending = alloca %struct._object*, align 8
  %b = alloca %struct._object*, align 8
  %ret = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  %_py_decref_tmp48 = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  %0 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %pending_bytes = getelementptr inbounds %struct.textio, %struct.textio* %0, i32 0, i32 24
  %1 = load %struct._object*, %struct._object** %pending_bytes, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %pending_bytes1 = getelementptr inbounds %struct.textio, %struct.textio* %2, i32 0, i32 24
  %3 = load %struct._object*, %struct._object** %pending_bytes1, align 8
  store %struct._object* %3, %struct._object** %pending, align 8
  %4 = load %struct._object*, %struct._object** %pending, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %6 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %pending_bytes_count = getelementptr inbounds %struct.textio, %struct.textio* %6, i32 0, i32 25
  store i64 0, i64* %pending_bytes_count, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %7 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %pending_bytes2 = getelementptr inbounds %struct.textio, %struct.textio* %7, i32 0, i32 24
  %8 = load %struct._object*, %struct._object** %pending_bytes2, align 8
  store %struct._object* %8, %struct._object** %_py_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp3 = icmp ne %struct._object* %9, null
  br i1 %cmp3, label %if.then.4, label %if.end.11

if.then.4:                                        ; preds = %do.body
  %10 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %pending_bytes5 = getelementptr inbounds %struct.textio, %struct.textio* %10, i32 0, i32 24
  store %struct._object* null, %struct._object** %pending_bytes5, align 8
  br label %do.body.6

do.body.6:                                        ; preds = %if.then.4
  %11 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt7 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt7, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %ob_refcnt7, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body.6
  br label %if.end.10

if.else:                                          ; preds = %do.body.6
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %16(%struct._object* %17)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %if.end.11

if.end.11:                                        ; preds = %do.end, %do.body
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %18 = load %struct._object*, %struct._object** @_PyIO_empty_bytes, align 8
  %19 = load %struct._object*, %struct._object** %pending, align 8
  %call = call %struct._object* @_PyBytes_Join(%struct._object* %18, %struct._object* %19)
  store %struct._object* %call, %struct._object** %b, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end.12
  %20 = load %struct._object*, %struct._object** %pending, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp14, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt15, align 8
  %dec16 = add i64 %22, -1
  store i64 %dec16, i64* %ob_refcnt15, align 8
  %cmp17 = icmp ne i64 %dec16, 0
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22

if.else.19:                                       ; preds = %do.body.13
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  call void %25(%struct._object* %26)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %27 = load %struct._object*, %struct._object** %b, align 8
  %cmp24 = icmp eq %struct._object* %27, null
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %do.end.23
  store i32 -1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %do.end.23
  store %struct._object* null, %struct._object** %ret, align 8
  br label %do.body.27

do.body.27:                                       ; preds = %land.end, %if.end.26
  %28 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %buffer = getelementptr inbounds %struct.textio, %struct.textio* %28, i32 0, i32 4
  %29 = load %struct._object*, %struct._object** %buffer, align 8
  %30 = load %struct._object*, %struct._object** @_PyIO_str_write, align 8
  %31 = load %struct._object*, %struct._object** %b, align 8
  %call28 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %29, %struct._object* %30, %struct._object* %31, i8* null)
  store %struct._object* %call28, %struct._object** %ret, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body.27
  %32 = load %struct._object*, %struct._object** %ret, align 8
  %cmp29 = icmp eq %struct._object* %32, null
  br i1 %cmp29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %call30 = call i32 @_PyIO_trap_eintr()
  %tobool = icmp ne i32 %call30, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %33 = phi i1 [ false, %do.cond ], [ %tobool, %land.rhs ]
  br i1 %33, label %do.body.27, label %do.end.31

do.end.31:                                        ; preds = %land.end
  br label %do.body.32

do.body.32:                                       ; preds = %do.end.31
  %34 = load %struct._object*, %struct._object** %b, align 8
  store %struct._object* %34, %struct._object** %_py_decref_tmp33, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt34, align 8
  %dec35 = add i64 %36, -1
  store i64 %dec35, i64* %ob_refcnt34, align 8
  %cmp36 = icmp ne i64 %dec35, 0
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %do.body.32
  br label %if.end.41

if.else.38:                                       ; preds = %do.body.32
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  call void %39(%struct._object* %40)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.37
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.41
  %41 = load %struct._object*, %struct._object** %ret, align 8
  %cmp44 = icmp eq %struct._object* %41, null
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %do.end.43
  store i32 -1, i32* %retval
  br label %return

if.end.46:                                        ; preds = %do.end.43
  br label %do.body.47

do.body.47:                                       ; preds = %if.end.46
  %42 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %42, %struct._object** %_py_decref_tmp48, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  %ob_refcnt49 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0
  %44 = load i64, i64* %ob_refcnt49, align 8
  %dec50 = add i64 %44, -1
  store i64 %dec50, i64* %ob_refcnt49, align 8
  %cmp51 = icmp ne i64 %dec50, 0
  br i1 %cmp51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %do.body.47
  br label %if.end.56

if.else.53:                                       ; preds = %do.body.47
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  %ob_type54 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type54, align 8
  %tp_dealloc55 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 4
  %47 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc55, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  call void %47(%struct._object* %48)
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.53, %if.then.52
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.56
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.58, %if.then.45, %if.then.25, %if.then
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal i32 @textiowrapper_read_chunk(%struct.textio* %self, i64 %size_hint) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.textio*, align 8
  %size_hint.addr = alloca i64, align 8
  %dec_buffer = alloca %struct._object*, align 8
  %dec_flags = alloca %struct._object*, align 8
  %input_chunk = alloca %struct._object*, align 8
  %decoded_chars = alloca %struct._object*, align 8
  %chunk_size = alloca %struct._object*, align 8
  %nbytes = alloca i64, align 8
  %nchars = alloca i64, align 8
  %eof = alloca i32, align 4
  %state = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  %_py_decref_tmp56 = alloca %struct._object*, align 8
  %next_input = alloca %struct._object*, align 8
  %_py_decref_tmp134 = alloca %struct._object*, align 8
  %_py_decref_tmp147 = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp164 = alloca %struct._object*, align 8
  %_py_decref_tmp181 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp199 = alloca %struct._object*, align 8
  %_py_xdecref_tmp213 = alloca %struct._object*, align 8
  %_py_decref_tmp218 = alloca %struct._object*, align 8
  %_py_xdecref_tmp232 = alloca %struct._object*, align 8
  %_py_decref_tmp237 = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store i64 %size_hint, i64* %size_hint.addr, align 8
  store %struct._object* null, %struct._object** %dec_buffer, align 8
  store %struct._object* null, %struct._object** %dec_flags, align 8
  store %struct._object* null, %struct._object** %input_chunk, align 8
  %0 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder = getelementptr inbounds %struct.textio, %struct.textio* %0, i32 0, i32 7
  %1 = load %struct._object*, %struct._object** %decoder, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @_unsupported(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %telling = getelementptr inbounds %struct.textio, %struct.textio* %2, i32 0, i32 18
  %3 = load i8, i8* %telling, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then.1, label %if.end.28

if.then.1:                                        ; preds = %if.end
  %4 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder2 = getelementptr inbounds %struct.textio, %struct.textio* %4, i32 0, i32 7
  %5 = load %struct._object*, %struct._object** %decoder2, align 8
  %6 = load %struct._object*, %struct._object** @_PyIO_str_getstate, align 8
  %call3 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %5, %struct._object* %6, i8* null)
  store %struct._object* %call3, %struct._object** %state, align 8
  %7 = load %struct._object*, %struct._object** %state, align 8
  %cmp4 = icmp eq %struct._object* %7, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.1
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.then.1
  %8 = load %struct._object*, %struct._object** %state, align 8
  %call7 = call i32 (%struct._object*, i8*, ...) @_PyArg_Parse_SizeT(%struct._object* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), %struct._object** %dec_buffer, %struct._object** %dec_flags)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end.6
  br label %do.body

do.body:                                          ; preds = %if.then.9
  %9 = load %struct._object*, %struct._object** %state, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %do.body
  br label %if.end.12

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.12
  store i32 -1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.6
  %16 = load %struct._object*, %struct._object** %dec_buffer, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt14, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %ob_refcnt14, align 8
  %18 = load %struct._object*, %struct._object** %dec_flags, align 8
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt15, align 8
  %inc16 = add i64 %19, 1
  store i64 %inc16, i64* %ob_refcnt15, align 8
  br label %do.body.17

do.body.17:                                       ; preds = %if.end.13
  %20 = load %struct._object*, %struct._object** %state, align 8
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
  br label %if.end.28

if.end.28:                                        ; preds = %do.end.27, %if.end
  %27 = load i64, i64* %size_hint.addr, align 8
  %cmp29 = icmp sgt i64 %27, 0
  br i1 %cmp29, label %if.then.30, label %if.end.34

if.then.30:                                       ; preds = %if.end.28
  %28 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %b2cratio = getelementptr inbounds %struct.textio, %struct.textio* %28, i32 0, i32 27
  %29 = load double, double* %b2cratio, align 8
  %cmp31 = fcmp ogt double %29, 1.000000e+00
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.30
  %30 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %b2cratio32 = getelementptr inbounds %struct.textio, %struct.textio* %30, i32 0, i32 27
  %31 = load double, double* %b2cratio32, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.30
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %31, %cond.true ], [ 1.000000e+00, %cond.false ]
  %32 = load i64, i64* %size_hint.addr, align 8
  %conv = sitofp i64 %32 to double
  %mul = fmul double %cond, %conv
  %conv33 = fptosi double %mul to i64
  store i64 %conv33, i64* %size_hint.addr, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %cond.end, %if.end.28
  %33 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %chunk_size35 = getelementptr inbounds %struct.textio, %struct.textio* %33, i32 0, i32 3
  %34 = load i64, i64* %chunk_size35, align 8
  %35 = load i64, i64* %size_hint.addr, align 8
  %cmp36 = icmp sgt i64 %34, %35
  br i1 %cmp36, label %cond.true.38, label %cond.false.40

cond.true.38:                                     ; preds = %if.end.34
  %36 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %chunk_size39 = getelementptr inbounds %struct.textio, %struct.textio* %36, i32 0, i32 3
  %37 = load i64, i64* %chunk_size39, align 8
  br label %cond.end.41

cond.false.40:                                    ; preds = %if.end.34
  %38 = load i64, i64* %size_hint.addr, align 8
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.40, %cond.true.38
  %cond42 = phi i64 [ %37, %cond.true.38 ], [ %38, %cond.false.40 ]
  %call43 = call %struct._object* @PyLong_FromSsize_t(i64 %cond42)
  store %struct._object* %call43, %struct._object** %chunk_size, align 8
  %39 = load %struct._object*, %struct._object** %chunk_size, align 8
  %cmp44 = icmp eq %struct._object* %39, null
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %cond.end.41
  br label %fail

if.end.47:                                        ; preds = %cond.end.41
  %40 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %buffer = getelementptr inbounds %struct.textio, %struct.textio* %40, i32 0, i32 4
  %41 = load %struct._object*, %struct._object** %buffer, align 8
  %42 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %has_read1 = getelementptr inbounds %struct.textio, %struct.textio* %42, i32 0, i32 17
  %43 = load i8, i8* %has_read1, align 1
  %conv48 = sext i8 %43 to i32
  %tobool49 = icmp ne i32 %conv48, 0
  br i1 %tobool49, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %if.end.47
  %44 = load %struct._object*, %struct._object** @_PyIO_str_read1, align 8
  br label %cond.end.52

cond.false.51:                                    ; preds = %if.end.47
  %45 = load %struct._object*, %struct._object** @_PyIO_str_read, align 8
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.51, %cond.true.50
  %cond53 = phi %struct._object* [ %44, %cond.true.50 ], [ %45, %cond.false.51 ]
  %46 = load %struct._object*, %struct._object** %chunk_size, align 8
  %call54 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %41, %struct._object* %cond53, %struct._object* %46, i8* null)
  store %struct._object* %call54, %struct._object** %input_chunk, align 8
  br label %do.body.55

do.body.55:                                       ; preds = %cond.end.52
  %47 = load %struct._object*, %struct._object** %chunk_size, align 8
  store %struct._object* %47, %struct._object** %_py_decref_tmp56, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  %ob_refcnt57 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0
  %49 = load i64, i64* %ob_refcnt57, align 8
  %dec58 = add i64 %49, -1
  store i64 %dec58, i64* %ob_refcnt57, align 8
  %cmp59 = icmp ne i64 %dec58, 0
  br i1 %cmp59, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %do.body.55
  br label %if.end.65

if.else.62:                                       ; preds = %do.body.55
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  call void %52(%struct._object* %53)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.61
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  %54 = load %struct._object*, %struct._object** %input_chunk, align 8
  %cmp67 = icmp eq %struct._object* %54, null
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %do.end.66
  br label %fail

if.end.70:                                        ; preds = %do.end.66
  %55 = load %struct._object*, %struct._object** %input_chunk, align 8
  %ob_type71 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type71, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 19
  %57 = load i64, i64* %tp_flags, align 8
  %and = and i64 %57, 134217728
  %cmp72 = icmp ne i64 %and, 0
  br i1 %cmp72, label %if.end.81, label %if.then.74

if.then.74:                                       ; preds = %if.end.70
  %58 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %59 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %has_read175 = getelementptr inbounds %struct.textio, %struct.textio* %59, i32 0, i32 17
  %60 = load i8, i8* %has_read175, align 1
  %conv76 = sext i8 %60 to i32
  %tobool77 = icmp ne i32 %conv76, 0
  %cond78 = select i1 %tobool77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)
  %61 = load %struct._object*, %struct._object** %input_chunk, align 8
  %ob_type79 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 1
  %62 = load %struct._typeobject*, %struct._typeobject** %ob_type79, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %62, i32 0, i32 1
  %63 = load i8*, i8** %tp_name, align 8
  %call80 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %58, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.44, i32 0, i32 0), i8* %cond78, i8* %63)
  br label %fail

if.end.81:                                        ; preds = %if.end.70
  %64 = load %struct._object*, %struct._object** %input_chunk, align 8
  %call82 = call i64 @PyBytes_Size(%struct._object* %64)
  store i64 %call82, i64* %nbytes, align 8
  %65 = load i64, i64* %nbytes, align 8
  %cmp83 = icmp eq i64 %65, 0
  %conv84 = zext i1 %cmp83 to i32
  store i32 %conv84, i32* %eof, align 4
  %66 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder85 = getelementptr inbounds %struct.textio, %struct.textio* %66, i32 0, i32 7
  %67 = load %struct._object*, %struct._object** %decoder85, align 8
  %ob_type86 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 1
  %68 = load %struct._typeobject*, %struct._typeobject** %ob_type86, align 8
  %cmp87 = icmp eq %struct._typeobject* %68, @PyIncrementalNewlineDecoder_Type
  br i1 %cmp87, label %if.then.89, label %if.else.92

if.then.89:                                       ; preds = %if.end.81
  %69 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder90 = getelementptr inbounds %struct.textio, %struct.textio* %69, i32 0, i32 7
  %70 = load %struct._object*, %struct._object** %decoder90, align 8
  %71 = load %struct._object*, %struct._object** %input_chunk, align 8
  %72 = load i32, i32* %eof, align 4
  %call91 = call %struct._object* @_PyIncrementalNewlineDecoder_decode(%struct._object* %70, %struct._object* %71, i32 %72)
  store %struct._object* %call91, %struct._object** %decoded_chars, align 8
  br label %if.end.97

if.else.92:                                       ; preds = %if.end.81
  %73 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder93 = getelementptr inbounds %struct.textio, %struct.textio* %73, i32 0, i32 7
  %74 = load %struct._object*, %struct._object** %decoder93, align 8
  %75 = load %struct._object*, %struct._object** @_PyIO_str_decode, align 8
  %76 = load %struct._object*, %struct._object** %input_chunk, align 8
  %77 = load i32, i32* %eof, align 4
  %tobool94 = icmp ne i32 %77, 0
  %cond95 = select i1 %tobool94, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  %call96 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %74, %struct._object* %75, %struct._object* %76, %struct._object* %cond95, i8* null)
  store %struct._object* %call96, %struct._object** %decoded_chars, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.92, %if.then.89
  %78 = load %struct._object*, %struct._object** %decoded_chars, align 8
  %call98 = call i32 @check_decoded(%struct._object* %78)
  %cmp99 = icmp slt i32 %call98, 0
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.end.97
  br label %fail

if.end.102:                                       ; preds = %if.end.97
  %79 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %80 = load %struct._object*, %struct._object** %decoded_chars, align 8
  call void @textiowrapper_set_decoded_chars(%struct.textio* %79, %struct._object* %80)
  %81 = load %struct._object*, %struct._object** %decoded_chars, align 8
  %82 = bitcast %struct._object* %81 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %82, i32 0, i32 1
  %83 = load i64, i64* %length, align 8
  store i64 %83, i64* %nchars, align 8
  %84 = load i64, i64* %nchars, align 8
  %cmp103 = icmp sgt i64 %84, 0
  br i1 %cmp103, label %if.then.105, label %if.else.109

if.then.105:                                      ; preds = %if.end.102
  %85 = load i64, i64* %nbytes, align 8
  %conv106 = sitofp i64 %85 to double
  %86 = load i64, i64* %nchars, align 8
  %conv107 = sitofp i64 %86 to double
  %div = fdiv double %conv106, %conv107
  %87 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %b2cratio108 = getelementptr inbounds %struct.textio, %struct.textio* %87, i32 0, i32 27
  store double %div, double* %b2cratio108, align 8
  br label %if.end.111

if.else.109:                                      ; preds = %if.end.102
  %88 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %b2cratio110 = getelementptr inbounds %struct.textio, %struct.textio* %88, i32 0, i32 27
  store double 0.000000e+00, double* %b2cratio110, align 8
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.109, %if.then.105
  %89 = load i64, i64* %nchars, align 8
  %cmp112 = icmp sgt i64 %89, 0
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %if.end.111
  store i32 0, i32* %eof, align 4
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.114, %if.end.111
  %90 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %telling116 = getelementptr inbounds %struct.textio, %struct.textio* %90, i32 0, i32 18
  %91 = load i8, i8* %telling116, align 1
  %tobool117 = icmp ne i8 %91, 0
  br i1 %tobool117, label %if.then.118, label %if.end.179

if.then.118:                                      ; preds = %if.end.115
  %92 = load %struct._object*, %struct._object** %dec_buffer, align 8
  %93 = load %struct._object*, %struct._object** %input_chunk, align 8
  %call119 = call %struct._object* @PyNumber_Add(%struct._object* %92, %struct._object* %93)
  store %struct._object* %call119, %struct._object** %next_input, align 8
  %94 = load %struct._object*, %struct._object** %next_input, align 8
  %cmp120 = icmp eq %struct._object* %94, null
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %if.then.118
  br label %fail

if.end.123:                                       ; preds = %if.then.118
  %95 = load %struct._object*, %struct._object** %next_input, align 8
  %ob_type124 = getelementptr inbounds %struct._object, %struct._object* %95, i32 0, i32 1
  %96 = load %struct._typeobject*, %struct._typeobject** %ob_type124, align 8
  %tp_flags125 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %96, i32 0, i32 19
  %97 = load i64, i64* %tp_flags125, align 8
  %and126 = and i64 %97, 134217728
  %cmp127 = icmp ne i64 %and126, 0
  br i1 %cmp127, label %if.end.145, label %if.then.129

if.then.129:                                      ; preds = %if.end.123
  %98 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %99 = load %struct._object*, %struct._object** %next_input, align 8
  %ob_type130 = getelementptr inbounds %struct._object, %struct._object* %99, i32 0, i32 1
  %100 = load %struct._typeobject*, %struct._typeobject** %ob_type130, align 8
  %tp_name131 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %100, i32 0, i32 1
  %101 = load i8*, i8** %tp_name131, align 8
  %call132 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %98, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.46, i32 0, i32 0), i8* %101)
  br label %do.body.133

do.body.133:                                      ; preds = %if.then.129
  %102 = load %struct._object*, %struct._object** %next_input, align 8
  store %struct._object* %102, %struct._object** %_py_decref_tmp134, align 8
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp134, align 8
  %ob_refcnt135 = getelementptr inbounds %struct._object, %struct._object* %103, i32 0, i32 0
  %104 = load i64, i64* %ob_refcnt135, align 8
  %dec136 = add i64 %104, -1
  store i64 %dec136, i64* %ob_refcnt135, align 8
  %cmp137 = icmp ne i64 %dec136, 0
  br i1 %cmp137, label %if.then.139, label %if.else.140

if.then.139:                                      ; preds = %do.body.133
  br label %if.end.143

if.else.140:                                      ; preds = %do.body.133
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp134, align 8
  %ob_type141 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 1
  %106 = load %struct._typeobject*, %struct._typeobject** %ob_type141, align 8
  %tp_dealloc142 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %106, i32 0, i32 4
  %107 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc142, align 8
  %108 = load %struct._object*, %struct._object** %_py_decref_tmp134, align 8
  call void %107(%struct._object* %108)
  br label %if.end.143

if.end.143:                                       ; preds = %if.else.140, %if.then.139
  br label %do.end.144

do.end.144:                                       ; preds = %if.end.143
  br label %fail

if.end.145:                                       ; preds = %if.end.123
  br label %do.body.146

do.body.146:                                      ; preds = %if.end.145
  %109 = load %struct._object*, %struct._object** %dec_buffer, align 8
  store %struct._object* %109, %struct._object** %_py_decref_tmp147, align 8
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp147, align 8
  %ob_refcnt148 = getelementptr inbounds %struct._object, %struct._object* %110, i32 0, i32 0
  %111 = load i64, i64* %ob_refcnt148, align 8
  %dec149 = add i64 %111, -1
  store i64 %dec149, i64* %ob_refcnt148, align 8
  %cmp150 = icmp ne i64 %dec149, 0
  br i1 %cmp150, label %if.then.152, label %if.else.153

if.then.152:                                      ; preds = %do.body.146
  br label %if.end.156

if.else.153:                                      ; preds = %do.body.146
  %112 = load %struct._object*, %struct._object** %_py_decref_tmp147, align 8
  %ob_type154 = getelementptr inbounds %struct._object, %struct._object* %112, i32 0, i32 1
  %113 = load %struct._typeobject*, %struct._typeobject** %ob_type154, align 8
  %tp_dealloc155 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %113, i32 0, i32 4
  %114 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc155, align 8
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp147, align 8
  call void %114(%struct._object* %115)
  br label %if.end.156

if.end.156:                                       ; preds = %if.else.153, %if.then.152
  br label %do.end.157

do.end.157:                                       ; preds = %if.end.156
  br label %do.body.158

do.body.158:                                      ; preds = %do.end.157
  %116 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %snapshot = getelementptr inbounds %struct.textio, %struct.textio* %116, i32 0, i32 26
  %117 = load %struct._object*, %struct._object** %snapshot, align 8
  store %struct._object* %117, %struct._object** %_py_tmp, align 8
  %118 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp159 = icmp ne %struct._object* %118, null
  br i1 %cmp159, label %if.then.161, label %if.end.175

if.then.161:                                      ; preds = %do.body.158
  %119 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %snapshot162 = getelementptr inbounds %struct.textio, %struct.textio* %119, i32 0, i32 26
  store %struct._object* null, %struct._object** %snapshot162, align 8
  br label %do.body.163

do.body.163:                                      ; preds = %if.then.161
  %120 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %120, %struct._object** %_py_decref_tmp164, align 8
  %121 = load %struct._object*, %struct._object** %_py_decref_tmp164, align 8
  %ob_refcnt165 = getelementptr inbounds %struct._object, %struct._object* %121, i32 0, i32 0
  %122 = load i64, i64* %ob_refcnt165, align 8
  %dec166 = add i64 %122, -1
  store i64 %dec166, i64* %ob_refcnt165, align 8
  %cmp167 = icmp ne i64 %dec166, 0
  br i1 %cmp167, label %if.then.169, label %if.else.170

if.then.169:                                      ; preds = %do.body.163
  br label %if.end.173

if.else.170:                                      ; preds = %do.body.163
  %123 = load %struct._object*, %struct._object** %_py_decref_tmp164, align 8
  %ob_type171 = getelementptr inbounds %struct._object, %struct._object* %123, i32 0, i32 1
  %124 = load %struct._typeobject*, %struct._typeobject** %ob_type171, align 8
  %tp_dealloc172 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %124, i32 0, i32 4
  %125 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc172, align 8
  %126 = load %struct._object*, %struct._object** %_py_decref_tmp164, align 8
  call void %125(%struct._object* %126)
  br label %if.end.173

if.end.173:                                       ; preds = %if.else.170, %if.then.169
  br label %do.end.174

do.end.174:                                       ; preds = %if.end.173
  br label %if.end.175

if.end.175:                                       ; preds = %do.end.174, %do.body.158
  br label %do.end.176

do.end.176:                                       ; preds = %if.end.175
  %127 = load %struct._object*, %struct._object** %dec_flags, align 8
  %128 = load %struct._object*, %struct._object** %next_input, align 8
  %call177 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), %struct._object* %127, %struct._object* %128)
  %129 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %snapshot178 = getelementptr inbounds %struct.textio, %struct.textio* %129, i32 0, i32 26
  store %struct._object* %call177, %struct._object** %snapshot178, align 8
  br label %if.end.179

if.end.179:                                       ; preds = %do.end.176, %if.end.115
  br label %do.body.180

do.body.180:                                      ; preds = %if.end.179
  %130 = load %struct._object*, %struct._object** %input_chunk, align 8
  store %struct._object* %130, %struct._object** %_py_decref_tmp181, align 8
  %131 = load %struct._object*, %struct._object** %_py_decref_tmp181, align 8
  %ob_refcnt182 = getelementptr inbounds %struct._object, %struct._object* %131, i32 0, i32 0
  %132 = load i64, i64* %ob_refcnt182, align 8
  %dec183 = add i64 %132, -1
  store i64 %dec183, i64* %ob_refcnt182, align 8
  %cmp184 = icmp ne i64 %dec183, 0
  br i1 %cmp184, label %if.then.186, label %if.else.187

if.then.186:                                      ; preds = %do.body.180
  br label %if.end.190

if.else.187:                                      ; preds = %do.body.180
  %133 = load %struct._object*, %struct._object** %_py_decref_tmp181, align 8
  %ob_type188 = getelementptr inbounds %struct._object, %struct._object* %133, i32 0, i32 1
  %134 = load %struct._typeobject*, %struct._typeobject** %ob_type188, align 8
  %tp_dealloc189 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %134, i32 0, i32 4
  %135 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc189, align 8
  %136 = load %struct._object*, %struct._object** %_py_decref_tmp181, align 8
  call void %135(%struct._object* %136)
  br label %if.end.190

if.end.190:                                       ; preds = %if.else.187, %if.then.186
  br label %do.end.191

do.end.191:                                       ; preds = %if.end.190
  %137 = load i32, i32* %eof, align 4
  %cmp192 = icmp eq i32 %137, 0
  %conv193 = zext i1 %cmp192 to i32
  store i32 %conv193, i32* %retval
  br label %return

fail:                                             ; preds = %do.end.144, %if.then.122, %if.then.101, %if.then.74, %if.then.69, %if.then.46
  br label %do.body.194

do.body.194:                                      ; preds = %fail
  %138 = load %struct._object*, %struct._object** %dec_buffer, align 8
  store %struct._object* %138, %struct._object** %_py_xdecref_tmp, align 8
  %139 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp195 = icmp ne %struct._object* %139, null
  br i1 %cmp195, label %if.then.197, label %if.end.210

if.then.197:                                      ; preds = %do.body.194
  br label %do.body.198

do.body.198:                                      ; preds = %if.then.197
  %140 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %140, %struct._object** %_py_decref_tmp199, align 8
  %141 = load %struct._object*, %struct._object** %_py_decref_tmp199, align 8
  %ob_refcnt200 = getelementptr inbounds %struct._object, %struct._object* %141, i32 0, i32 0
  %142 = load i64, i64* %ob_refcnt200, align 8
  %dec201 = add i64 %142, -1
  store i64 %dec201, i64* %ob_refcnt200, align 8
  %cmp202 = icmp ne i64 %dec201, 0
  br i1 %cmp202, label %if.then.204, label %if.else.205

if.then.204:                                      ; preds = %do.body.198
  br label %if.end.208

if.else.205:                                      ; preds = %do.body.198
  %143 = load %struct._object*, %struct._object** %_py_decref_tmp199, align 8
  %ob_type206 = getelementptr inbounds %struct._object, %struct._object* %143, i32 0, i32 1
  %144 = load %struct._typeobject*, %struct._typeobject** %ob_type206, align 8
  %tp_dealloc207 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %144, i32 0, i32 4
  %145 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc207, align 8
  %146 = load %struct._object*, %struct._object** %_py_decref_tmp199, align 8
  call void %145(%struct._object* %146)
  br label %if.end.208

if.end.208:                                       ; preds = %if.else.205, %if.then.204
  br label %do.end.209

do.end.209:                                       ; preds = %if.end.208
  br label %if.end.210

if.end.210:                                       ; preds = %do.end.209, %do.body.194
  br label %do.end.211

do.end.211:                                       ; preds = %if.end.210
  br label %do.body.212

do.body.212:                                      ; preds = %do.end.211
  %147 = load %struct._object*, %struct._object** %dec_flags, align 8
  store %struct._object* %147, %struct._object** %_py_xdecref_tmp213, align 8
  %148 = load %struct._object*, %struct._object** %_py_xdecref_tmp213, align 8
  %cmp214 = icmp ne %struct._object* %148, null
  br i1 %cmp214, label %if.then.216, label %if.end.229

if.then.216:                                      ; preds = %do.body.212
  br label %do.body.217

do.body.217:                                      ; preds = %if.then.216
  %149 = load %struct._object*, %struct._object** %_py_xdecref_tmp213, align 8
  store %struct._object* %149, %struct._object** %_py_decref_tmp218, align 8
  %150 = load %struct._object*, %struct._object** %_py_decref_tmp218, align 8
  %ob_refcnt219 = getelementptr inbounds %struct._object, %struct._object* %150, i32 0, i32 0
  %151 = load i64, i64* %ob_refcnt219, align 8
  %dec220 = add i64 %151, -1
  store i64 %dec220, i64* %ob_refcnt219, align 8
  %cmp221 = icmp ne i64 %dec220, 0
  br i1 %cmp221, label %if.then.223, label %if.else.224

if.then.223:                                      ; preds = %do.body.217
  br label %if.end.227

if.else.224:                                      ; preds = %do.body.217
  %152 = load %struct._object*, %struct._object** %_py_decref_tmp218, align 8
  %ob_type225 = getelementptr inbounds %struct._object, %struct._object* %152, i32 0, i32 1
  %153 = load %struct._typeobject*, %struct._typeobject** %ob_type225, align 8
  %tp_dealloc226 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %153, i32 0, i32 4
  %154 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc226, align 8
  %155 = load %struct._object*, %struct._object** %_py_decref_tmp218, align 8
  call void %154(%struct._object* %155)
  br label %if.end.227

if.end.227:                                       ; preds = %if.else.224, %if.then.223
  br label %do.end.228

do.end.228:                                       ; preds = %if.end.227
  br label %if.end.229

if.end.229:                                       ; preds = %do.end.228, %do.body.212
  br label %do.end.230

do.end.230:                                       ; preds = %if.end.229
  br label %do.body.231

do.body.231:                                      ; preds = %do.end.230
  %156 = load %struct._object*, %struct._object** %input_chunk, align 8
  store %struct._object* %156, %struct._object** %_py_xdecref_tmp232, align 8
  %157 = load %struct._object*, %struct._object** %_py_xdecref_tmp232, align 8
  %cmp233 = icmp ne %struct._object* %157, null
  br i1 %cmp233, label %if.then.235, label %if.end.248

if.then.235:                                      ; preds = %do.body.231
  br label %do.body.236

do.body.236:                                      ; preds = %if.then.235
  %158 = load %struct._object*, %struct._object** %_py_xdecref_tmp232, align 8
  store %struct._object* %158, %struct._object** %_py_decref_tmp237, align 8
  %159 = load %struct._object*, %struct._object** %_py_decref_tmp237, align 8
  %ob_refcnt238 = getelementptr inbounds %struct._object, %struct._object* %159, i32 0, i32 0
  %160 = load i64, i64* %ob_refcnt238, align 8
  %dec239 = add i64 %160, -1
  store i64 %dec239, i64* %ob_refcnt238, align 8
  %cmp240 = icmp ne i64 %dec239, 0
  br i1 %cmp240, label %if.then.242, label %if.else.243

if.then.242:                                      ; preds = %do.body.236
  br label %if.end.246

if.else.243:                                      ; preds = %do.body.236
  %161 = load %struct._object*, %struct._object** %_py_decref_tmp237, align 8
  %ob_type244 = getelementptr inbounds %struct._object, %struct._object* %161, i32 0, i32 1
  %162 = load %struct._typeobject*, %struct._typeobject** %ob_type244, align 8
  %tp_dealloc245 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %162, i32 0, i32 4
  %163 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc245, align 8
  %164 = load %struct._object*, %struct._object** %_py_decref_tmp237, align 8
  call void %163(%struct._object* %164)
  br label %if.end.246

if.end.246:                                       ; preds = %if.else.243, %if.then.242
  br label %do.end.247

do.end.247:                                       ; preds = %if.end.246
  br label %if.end.248

if.end.248:                                       ; preds = %do.end.247, %do.body.231
  br label %do.end.249

do.end.249:                                       ; preds = %if.end.248
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.249, %do.end.191, %do.end, %if.then.5, %if.then
  %165 = load i32, i32* %retval
  ret i32 %165
}

declare i32 @_PyIO_trap_eintr() #1

; Function Attrs: nounwind uwtable
define internal void @textiowrapper_set_decoded_chars(%struct.textio* %self, %struct._object* %chars) #0 {
entry:
  %self.addr = alloca %struct.textio*, align 8
  %chars.addr = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store %struct._object* %chars, %struct._object** %chars.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoded_chars = getelementptr inbounds %struct.textio, %struct.textio* %0, i32 0, i32 22
  %1 = load %struct._object*, %struct._object** %decoded_chars, align 8
  store %struct._object* %1, %struct._object** %_py_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %3 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoded_chars1 = getelementptr inbounds %struct.textio, %struct.textio* %3, i32 0, i32 22
  store %struct._object* null, %struct._object** %decoded_chars1, align 8
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
  %11 = load %struct._object*, %struct._object** %chars.addr, align 8
  %12 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoded_chars7 = getelementptr inbounds %struct.textio, %struct.textio* %12, i32 0, i32 22
  store %struct._object* %11, %struct._object** %decoded_chars7, align 8
  %13 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoded_chars_used = getelementptr inbounds %struct.textio, %struct.textio* %13, i32 0, i32 23
  store i64 0, i64* %decoded_chars_used, align 8
  ret void
}

declare %struct._object* @PyUnicode_Concat(%struct._object*, %struct._object*) #1

declare %struct._object* @PyList_New(i64) #1

declare i32 @PyList_Append(%struct._object*, %struct._object*) #1

declare %struct._object* @PyUnicode_Join(%struct._object*, %struct._object*) #1

declare %struct._object* @PyObject_GetAttr(%struct._object*, %struct._object*) #1

declare %struct._object* @_PyBytes_Join(%struct._object*, %struct._object*) #1

declare %struct._object* @PyLong_FromSsize_t(i64) #1

declare i64 @PyBytes_Size(%struct._object*) #1

declare %struct._object* @PyNumber_Add(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @textiowrapper_detach(%struct.textio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.textio*, align 8
  %buffer = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  %0 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.textio, %struct.textio* %0, i32 0, i32 1
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %detached = getelementptr inbounds %struct.textio, %struct.textio* %2, i32 0, i32 2
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %7 = bitcast %struct.textio* %6 to %struct._object*
  %8 = load %struct._object*, %struct._object** @_PyIO_str_flush, align 8
  %call = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %7, %struct._object* %8, i8* null)
  store %struct._object* %call, %struct._object** %res, align 8
  %9 = load %struct._object*, %struct._object** %res, align 8
  %cmp3 = icmp eq %struct._object* %9, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end.2
  br label %do.body

do.body:                                          ; preds = %if.end.5
  %10 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %do.body
  br label %if.end.9

if.else.8:                                        ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.8, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.9
  %17 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %buffer10 = getelementptr inbounds %struct.textio, %struct.textio* %17, i32 0, i32 4
  %18 = load %struct._object*, %struct._object** %buffer10, align 8
  store %struct._object* %18, %struct._object** %buffer, align 8
  %19 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %buffer11 = getelementptr inbounds %struct.textio, %struct.textio* %19, i32 0, i32 4
  store %struct._object* null, %struct._object** %buffer11, align 8
  %20 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %detached12 = getelementptr inbounds %struct.textio, %struct.textio* %20, i32 0, i32 2
  store i32 1, i32* %detached12, align 4
  %21 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %ok13 = getelementptr inbounds %struct.textio, %struct.textio* %21, i32 0, i32 1
  store i32 0, i32* %ok13, align 4
  %22 = load %struct._object*, %struct._object** %buffer, align 8
  store %struct._object* %22, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.4, %if.end
  %23 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %23
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @textiowrapper_write(%struct.textio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.textio*, align 8
  %args.addr = alloca %struct._object*, align 8
  %ret = alloca %struct._object*, align 8
  %text = alloca %struct._object*, align 8
  %b = alloca %struct._object*, align 8
  %textlen = alloca i64, align 8
  %haslf = alloca i32, align 4
  %needflush = alloca i32, align 4
  %text_needflush = alloca i32, align 4
  %r = alloca i32, align 4
  %_res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %newtext = alloca %struct._object*, align 8
  %_py_decref_tmp74 = alloca %struct._object*, align 8
  %_py_decref_tmp115 = alloca %struct._object*, align 8
  %_py_decref_tmp140 = alloca %struct._object*, align 8
  %_py_decref_tmp159 = alloca %struct._object*, align 8
  %_py_decref_tmp173 = alloca %struct._object*, align 8
  %_py_decref_tmp206 = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp224 = alloca %struct._object*, align 8
  %_py_decref_tmp246 = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 0, i32* %haslf, align 4
  store i32 0, i32* %needflush, align 4
  store i32 0, i32* %text_needflush, align 4
  %0 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.textio, %struct.textio* %0, i32 0, i32 1
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %detached = getelementptr inbounds %struct.textio, %struct.textio* %2, i32 0, i32 2
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), %struct._object** %text)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end.2
  %7 = load %struct._object*, %struct._object** %text, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %8, i32 0, i32 3
  %9 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %9, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool6 = icmp ne i32 %bf.clear, 0
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  %10 = load %struct._object*, %struct._object** %text, align 8
  %call7 = call i32 @_PyUnicode_Ready(%struct._object* %10)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call7, %cond.false ]
  %cmp8 = icmp eq i32 %cond, -1
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %cond.end
  br label %do.body

do.body:                                          ; preds = %if.end.10
  %11 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %12 = bitcast %struct.textio* %11 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp11 = icmp eq %struct._typeobject* %13, @PyTextIOWrapper_Type
  br i1 %cmp11, label %if.then.12, label %if.else.36

if.then.12:                                       ; preds = %do.body
  %14 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %raw = getelementptr inbounds %struct.textio, %struct.textio* %14, i32 0, i32 28
  %15 = load %struct._object*, %struct._object** %raw, align 8
  %cmp13 = icmp ne %struct._object* %15, null
  br i1 %cmp13, label %if.then.14, label %if.else.17

if.then.14:                                       ; preds = %if.then.12
  %16 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %raw15 = getelementptr inbounds %struct.textio, %struct.textio* %16, i32 0, i32 28
  %17 = load %struct._object*, %struct._object** %raw15, align 8
  %call16 = call i32 @_PyFileIO_closed(%struct._object* %17)
  store i32 %call16, i32* %r, align 4
  br label %if.end.32

if.else.17:                                       ; preds = %if.then.12
  %18 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %call18 = call %struct._object* @textiowrapper_closed_get(%struct.textio* %18, i8* null)
  store %struct._object* %call18, %struct._object** %_res, align 8
  %19 = load %struct._object*, %struct._object** %_res, align 8
  %cmp19 = icmp eq %struct._object* %19, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.else.17
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %if.else.17
  %20 = load %struct._object*, %struct._object** %_res, align 8
  %call22 = call i32 @PyObject_IsTrue(%struct._object* %20)
  store i32 %call22, i32* %r, align 4
  br label %do.body.23

do.body.23:                                       ; preds = %if.end.21
  %21 = load %struct._object*, %struct._object** %_res, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp24 = icmp ne i64 %dec, 0
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.23
  br label %if.end.28

if.else.26:                                       ; preds = %do.body.23
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.26, %if.then.25
  br label %do.end

do.end:                                           ; preds = %if.end.28
  %28 = load i32, i32* %r, align 4
  %cmp29 = icmp slt i32 %28, 0
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %do.end
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.14
  %29 = load i32, i32* %r, align 4
  %cmp33 = icmp sgt i32 %29, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.32
  %30 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.35:                                        ; preds = %if.end.32
  br label %if.end.41

if.else.36:                                       ; preds = %do.body
  %31 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %32 = bitcast %struct.textio* %31 to %struct._object*
  %call37 = call %struct._object* @_PyIOBase_check_closed(%struct._object* %32, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0))
  %cmp38 = icmp eq %struct._object* %call37, null
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.else.36
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.40:                                        ; preds = %if.else.36
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.35
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  %33 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoder = getelementptr inbounds %struct.textio, %struct.textio* %33, i32 0, i32 6
  %34 = load %struct._object*, %struct._object** %encoder, align 8
  %cmp43 = icmp eq %struct._object* %34, null
  br i1 %cmp43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %do.end.42
  %call45 = call %struct._object* @_unsupported(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.60, i32 0, i32 0))
  store %struct._object* %call45, %struct._object** %retval
  br label %return

if.end.46:                                        ; preds = %do.end.42
  %35 = load %struct._object*, %struct._object** %text, align 8
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt47, align 8
  %inc = add i64 %36, 1
  store i64 %inc, i64* %ob_refcnt47, align 8
  %37 = load %struct._object*, %struct._object** %text, align 8
  %38 = bitcast %struct._object* %37 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %38, i32 0, i32 1
  %39 = load i64, i64* %length, align 8
  store i64 %39, i64* %textlen, align 8
  %40 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %writetranslate = getelementptr inbounds %struct.textio, %struct.textio* %40, i32 0, i32 15
  %41 = load i8, i8* %writetranslate, align 1
  %conv = sext i8 %41 to i32
  %tobool48 = icmp ne i32 %conv, 0
  br i1 %tobool48, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end.46
  %42 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %writenl = getelementptr inbounds %struct.textio, %struct.textio* %42, i32 0, i32 10
  %43 = load i8*, i8** %writenl, align 8
  %cmp49 = icmp ne i8* %43, null
  br i1 %cmp49, label %if.then.53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end.46
  %44 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %line_buffering = getelementptr inbounds %struct.textio, %struct.textio* %44, i32 0, i32 11
  %45 = load i8, i8* %line_buffering, align 1
  %conv51 = sext i8 %45 to i32
  %tobool52 = icmp ne i32 %conv51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.60

if.then.53:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %46 = load %struct._object*, %struct._object** %text, align 8
  %47 = load %struct._object*, %struct._object** %text, align 8
  %48 = bitcast %struct._object* %47 to %struct.PyASCIIObject*
  %length54 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %48, i32 0, i32 1
  %49 = load i64, i64* %length54, align 8
  %call55 = call i64 @PyUnicode_FindChar(%struct._object* %46, i32 10, i64 0, i64 %49, i32 1)
  %cmp56 = icmp ne i64 %call55, -1
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.then.53
  store i32 1, i32* %haslf, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %if.then.53
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %lor.lhs.false
  %50 = load i32, i32* %haslf, align 4
  %tobool61 = icmp ne i32 %50, 0
  br i1 %tobool61, label %land.lhs.true.62, label %if.end.89

land.lhs.true.62:                                 ; preds = %if.end.60
  %51 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %writetranslate63 = getelementptr inbounds %struct.textio, %struct.textio* %51, i32 0, i32 15
  %52 = load i8, i8* %writetranslate63, align 1
  %conv64 = sext i8 %52 to i32
  %tobool65 = icmp ne i32 %conv64, 0
  br i1 %tobool65, label %land.lhs.true.66, label %if.end.89

land.lhs.true.66:                                 ; preds = %land.lhs.true.62
  %53 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %writenl67 = getelementptr inbounds %struct.textio, %struct.textio* %53, i32 0, i32 10
  %54 = load i8*, i8** %writenl67, align 8
  %cmp68 = icmp ne i8* %54, null
  br i1 %cmp68, label %if.then.70, label %if.end.89

if.then.70:                                       ; preds = %land.lhs.true.66
  %55 = load %struct._object*, %struct._object** %text, align 8
  %56 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %writenl71 = getelementptr inbounds %struct.textio, %struct.textio* %56, i32 0, i32 10
  %57 = load i8*, i8** %writenl71, align 8
  %call72 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %55, %struct._Py_Identifier* @PyId_replace, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i8* %57)
  store %struct._object* %call72, %struct._object** %newtext, align 8
  br label %do.body.73

do.body.73:                                       ; preds = %if.then.70
  %58 = load %struct._object*, %struct._object** %text, align 8
  store %struct._object* %58, %struct._object** %_py_decref_tmp74, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  %ob_refcnt75 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 0
  %60 = load i64, i64* %ob_refcnt75, align 8
  %dec76 = add i64 %60, -1
  store i64 %dec76, i64* %ob_refcnt75, align 8
  %cmp77 = icmp ne i64 %dec76, 0
  br i1 %cmp77, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %do.body.73
  br label %if.end.83

if.else.80:                                       ; preds = %do.body.73
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  %ob_type81 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 1
  %62 = load %struct._typeobject*, %struct._typeobject** %ob_type81, align 8
  %tp_dealloc82 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %62, i32 0, i32 4
  %63 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc82, align 8
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  call void %63(%struct._object* %64)
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.80, %if.then.79
  br label %do.end.84

do.end.84:                                        ; preds = %if.end.83
  %65 = load %struct._object*, %struct._object** %newtext, align 8
  %cmp85 = icmp eq %struct._object* %65, null
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %do.end.84
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.88:                                        ; preds = %do.end.84
  %66 = load %struct._object*, %struct._object** %newtext, align 8
  store %struct._object* %66, %struct._object** %text, align 8
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %land.lhs.true.66, %land.lhs.true.62, %if.end.60
  %67 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %write_through = getelementptr inbounds %struct.textio, %struct.textio* %67, i32 0, i32 12
  %68 = load i8, i8* %write_through, align 1
  %tobool90 = icmp ne i8 %68, 0
  br i1 %tobool90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.end.89
  store i32 1, i32* %text_needflush, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %if.end.89
  %69 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %line_buffering93 = getelementptr inbounds %struct.textio, %struct.textio* %69, i32 0, i32 11
  %70 = load i8, i8* %line_buffering93, align 1
  %conv94 = sext i8 %70 to i32
  %tobool95 = icmp ne i32 %conv94, 0
  br i1 %tobool95, label %land.lhs.true.96, label %if.end.104

land.lhs.true.96:                                 ; preds = %if.end.92
  %71 = load i32, i32* %haslf, align 4
  %tobool97 = icmp ne i32 %71, 0
  br i1 %tobool97, label %if.then.103, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %land.lhs.true.96
  %72 = load %struct._object*, %struct._object** %text, align 8
  %73 = load %struct._object*, %struct._object** %text, align 8
  %74 = bitcast %struct._object* %73 to %struct.PyASCIIObject*
  %length99 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %74, i32 0, i32 1
  %75 = load i64, i64* %length99, align 8
  %call100 = call i64 @PyUnicode_FindChar(%struct._object* %72, i32 13, i64 0, i64 %75, i32 1)
  %cmp101 = icmp ne i64 %call100, -1
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %lor.lhs.false.98, %land.lhs.true.96
  store i32 1, i32* %needflush, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.103, %lor.lhs.false.98, %if.end.92
  %76 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encodefunc = getelementptr inbounds %struct.textio, %struct.textio* %76, i32 0, i32 20
  %77 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %encodefunc, align 8
  %cmp105 = icmp ne %struct._object* (%struct._object*, %struct._object*)* %77, null
  br i1 %cmp105, label %if.then.107, label %if.else.110

if.then.107:                                      ; preds = %if.end.104
  %78 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encodefunc108 = getelementptr inbounds %struct.textio, %struct.textio* %78, i32 0, i32 20
  %79 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %encodefunc108, align 8
  %80 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %81 = bitcast %struct.textio* %80 to %struct._object*
  %82 = load %struct._object*, %struct._object** %text, align 8
  %call109 = call %struct._object* %79(%struct._object* %81, %struct._object* %82)
  store %struct._object* %call109, %struct._object** %b, align 8
  %83 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoding_start_of_stream = getelementptr inbounds %struct.textio, %struct.textio* %83, i32 0, i32 21
  store i8 0, i8* %encoding_start_of_stream, align 1
  br label %if.end.113

if.else.110:                                      ; preds = %if.end.104
  %84 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoder111 = getelementptr inbounds %struct.textio, %struct.textio* %84, i32 0, i32 6
  %85 = load %struct._object*, %struct._object** %encoder111, align 8
  %86 = load %struct._object*, %struct._object** @_PyIO_str_encode, align 8
  %87 = load %struct._object*, %struct._object** %text, align 8
  %call112 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %85, %struct._object* %86, %struct._object* %87, i8* null)
  store %struct._object* %call112, %struct._object** %b, align 8
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.110, %if.then.107
  br label %do.body.114

do.body.114:                                      ; preds = %if.end.113
  %88 = load %struct._object*, %struct._object** %text, align 8
  store %struct._object* %88, %struct._object** %_py_decref_tmp115, align 8
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8
  %ob_refcnt116 = getelementptr inbounds %struct._object, %struct._object* %89, i32 0, i32 0
  %90 = load i64, i64* %ob_refcnt116, align 8
  %dec117 = add i64 %90, -1
  store i64 %dec117, i64* %ob_refcnt116, align 8
  %cmp118 = icmp ne i64 %dec117, 0
  br i1 %cmp118, label %if.then.120, label %if.else.121

if.then.120:                                      ; preds = %do.body.114
  br label %if.end.124

if.else.121:                                      ; preds = %do.body.114
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8
  %ob_type122 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 1
  %92 = load %struct._typeobject*, %struct._typeobject** %ob_type122, align 8
  %tp_dealloc123 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %92, i32 0, i32 4
  %93 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc123, align 8
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8
  call void %93(%struct._object* %94)
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.121, %if.then.120
  br label %do.end.125

do.end.125:                                       ; preds = %if.end.124
  %95 = load %struct._object*, %struct._object** %b, align 8
  %cmp126 = icmp eq %struct._object* %95, null
  br i1 %cmp126, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %do.end.125
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.129:                                       ; preds = %do.end.125
  %96 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %pending_bytes = getelementptr inbounds %struct.textio, %struct.textio* %96, i32 0, i32 24
  %97 = load %struct._object*, %struct._object** %pending_bytes, align 8
  %cmp130 = icmp eq %struct._object* %97, null
  br i1 %cmp130, label %if.then.132, label %if.end.152

if.then.132:                                      ; preds = %if.end.129
  %call133 = call %struct._object* @PyList_New(i64 0)
  %98 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %pending_bytes134 = getelementptr inbounds %struct.textio, %struct.textio* %98, i32 0, i32 24
  store %struct._object* %call133, %struct._object** %pending_bytes134, align 8
  %99 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %pending_bytes135 = getelementptr inbounds %struct.textio, %struct.textio* %99, i32 0, i32 24
  %100 = load %struct._object*, %struct._object** %pending_bytes135, align 8
  %cmp136 = icmp eq %struct._object* %100, null
  br i1 %cmp136, label %if.then.138, label %if.end.151

if.then.138:                                      ; preds = %if.then.132
  br label %do.body.139

do.body.139:                                      ; preds = %if.then.138
  %101 = load %struct._object*, %struct._object** %b, align 8
  store %struct._object* %101, %struct._object** %_py_decref_tmp140, align 8
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp140, align 8
  %ob_refcnt141 = getelementptr inbounds %struct._object, %struct._object* %102, i32 0, i32 0
  %103 = load i64, i64* %ob_refcnt141, align 8
  %dec142 = add i64 %103, -1
  store i64 %dec142, i64* %ob_refcnt141, align 8
  %cmp143 = icmp ne i64 %dec142, 0
  br i1 %cmp143, label %if.then.145, label %if.else.146

if.then.145:                                      ; preds = %do.body.139
  br label %if.end.149

if.else.146:                                      ; preds = %do.body.139
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp140, align 8
  %ob_type147 = getelementptr inbounds %struct._object, %struct._object* %104, i32 0, i32 1
  %105 = load %struct._typeobject*, %struct._typeobject** %ob_type147, align 8
  %tp_dealloc148 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %105, i32 0, i32 4
  %106 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc148, align 8
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp140, align 8
  call void %106(%struct._object* %107)
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.146, %if.then.145
  br label %do.end.150

do.end.150:                                       ; preds = %if.end.149
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.151:                                       ; preds = %if.then.132
  %108 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %pending_bytes_count = getelementptr inbounds %struct.textio, %struct.textio* %108, i32 0, i32 25
  store i64 0, i64* %pending_bytes_count, align 8
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %if.end.129
  %109 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %pending_bytes153 = getelementptr inbounds %struct.textio, %struct.textio* %109, i32 0, i32 24
  %110 = load %struct._object*, %struct._object** %pending_bytes153, align 8
  %111 = load %struct._object*, %struct._object** %b, align 8
  %call154 = call i32 @PyList_Append(%struct._object* %110, %struct._object* %111)
  %cmp155 = icmp slt i32 %call154, 0
  br i1 %cmp155, label %if.then.157, label %if.end.170

if.then.157:                                      ; preds = %if.end.152
  br label %do.body.158

do.body.158:                                      ; preds = %if.then.157
  %112 = load %struct._object*, %struct._object** %b, align 8
  store %struct._object* %112, %struct._object** %_py_decref_tmp159, align 8
  %113 = load %struct._object*, %struct._object** %_py_decref_tmp159, align 8
  %ob_refcnt160 = getelementptr inbounds %struct._object, %struct._object* %113, i32 0, i32 0
  %114 = load i64, i64* %ob_refcnt160, align 8
  %dec161 = add i64 %114, -1
  store i64 %dec161, i64* %ob_refcnt160, align 8
  %cmp162 = icmp ne i64 %dec161, 0
  br i1 %cmp162, label %if.then.164, label %if.else.165

if.then.164:                                      ; preds = %do.body.158
  br label %if.end.168

if.else.165:                                      ; preds = %do.body.158
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp159, align 8
  %ob_type166 = getelementptr inbounds %struct._object, %struct._object* %115, i32 0, i32 1
  %116 = load %struct._typeobject*, %struct._typeobject** %ob_type166, align 8
  %tp_dealloc167 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %116, i32 0, i32 4
  %117 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc167, align 8
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp159, align 8
  call void %117(%struct._object* %118)
  br label %if.end.168

if.end.168:                                       ; preds = %if.else.165, %if.then.164
  br label %do.end.169

do.end.169:                                       ; preds = %if.end.168
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.170:                                       ; preds = %if.end.152
  %119 = load %struct._object*, %struct._object** %b, align 8
  %120 = bitcast %struct._object* %119 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %120, i32 0, i32 1
  %121 = load i64, i64* %ob_size, align 8
  %122 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %pending_bytes_count171 = getelementptr inbounds %struct.textio, %struct.textio* %122, i32 0, i32 25
  %123 = load i64, i64* %pending_bytes_count171, align 8
  %add = add i64 %123, %121
  store i64 %add, i64* %pending_bytes_count171, align 8
  br label %do.body.172

do.body.172:                                      ; preds = %if.end.170
  %124 = load %struct._object*, %struct._object** %b, align 8
  store %struct._object* %124, %struct._object** %_py_decref_tmp173, align 8
  %125 = load %struct._object*, %struct._object** %_py_decref_tmp173, align 8
  %ob_refcnt174 = getelementptr inbounds %struct._object, %struct._object* %125, i32 0, i32 0
  %126 = load i64, i64* %ob_refcnt174, align 8
  %dec175 = add i64 %126, -1
  store i64 %dec175, i64* %ob_refcnt174, align 8
  %cmp176 = icmp ne i64 %dec175, 0
  br i1 %cmp176, label %if.then.178, label %if.else.179

if.then.178:                                      ; preds = %do.body.172
  br label %if.end.182

if.else.179:                                      ; preds = %do.body.172
  %127 = load %struct._object*, %struct._object** %_py_decref_tmp173, align 8
  %ob_type180 = getelementptr inbounds %struct._object, %struct._object* %127, i32 0, i32 1
  %128 = load %struct._typeobject*, %struct._typeobject** %ob_type180, align 8
  %tp_dealloc181 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %128, i32 0, i32 4
  %129 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc181, align 8
  %130 = load %struct._object*, %struct._object** %_py_decref_tmp173, align 8
  call void %129(%struct._object* %130)
  br label %if.end.182

if.end.182:                                       ; preds = %if.else.179, %if.then.178
  br label %do.end.183

do.end.183:                                       ; preds = %if.end.182
  %131 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %pending_bytes_count184 = getelementptr inbounds %struct.textio, %struct.textio* %131, i32 0, i32 25
  %132 = load i64, i64* %pending_bytes_count184, align 8
  %133 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %chunk_size = getelementptr inbounds %struct.textio, %struct.textio* %133, i32 0, i32 3
  %134 = load i64, i64* %chunk_size, align 8
  %cmp185 = icmp sgt i64 %132, %134
  br i1 %cmp185, label %if.then.191, label %lor.lhs.false.187

lor.lhs.false.187:                                ; preds = %do.end.183
  %135 = load i32, i32* %needflush, align 4
  %tobool188 = icmp ne i32 %135, 0
  br i1 %tobool188, label %if.then.191, label %lor.lhs.false.189

lor.lhs.false.189:                                ; preds = %lor.lhs.false.187
  %136 = load i32, i32* %text_needflush, align 4
  %tobool190 = icmp ne i32 %136, 0
  br i1 %tobool190, label %if.then.191, label %if.end.197

if.then.191:                                      ; preds = %lor.lhs.false.189, %lor.lhs.false.187, %do.end.183
  %137 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %call192 = call i32 @_textiowrapper_writeflush(%struct.textio* %137)
  %cmp193 = icmp slt i32 %call192, 0
  br i1 %cmp193, label %if.then.195, label %if.end.196

if.then.195:                                      ; preds = %if.then.191
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.196:                                       ; preds = %if.then.191
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %lor.lhs.false.189
  %138 = load i32, i32* %needflush, align 4
  %tobool198 = icmp ne i32 %138, 0
  br i1 %tobool198, label %if.then.199, label %if.end.217

if.then.199:                                      ; preds = %if.end.197
  %139 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %buffer = getelementptr inbounds %struct.textio, %struct.textio* %139, i32 0, i32 4
  %140 = load %struct._object*, %struct._object** %buffer, align 8
  %141 = load %struct._object*, %struct._object** @_PyIO_str_flush, align 8
  %call200 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %140, %struct._object* %141, i8* null)
  store %struct._object* %call200, %struct._object** %ret, align 8
  %142 = load %struct._object*, %struct._object** %ret, align 8
  %cmp201 = icmp eq %struct._object* %142, null
  br i1 %cmp201, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %if.then.199
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.204:                                       ; preds = %if.then.199
  br label %do.body.205

do.body.205:                                      ; preds = %if.end.204
  %143 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %143, %struct._object** %_py_decref_tmp206, align 8
  %144 = load %struct._object*, %struct._object** %_py_decref_tmp206, align 8
  %ob_refcnt207 = getelementptr inbounds %struct._object, %struct._object* %144, i32 0, i32 0
  %145 = load i64, i64* %ob_refcnt207, align 8
  %dec208 = add i64 %145, -1
  store i64 %dec208, i64* %ob_refcnt207, align 8
  %cmp209 = icmp ne i64 %dec208, 0
  br i1 %cmp209, label %if.then.211, label %if.else.212

if.then.211:                                      ; preds = %do.body.205
  br label %if.end.215

if.else.212:                                      ; preds = %do.body.205
  %146 = load %struct._object*, %struct._object** %_py_decref_tmp206, align 8
  %ob_type213 = getelementptr inbounds %struct._object, %struct._object* %146, i32 0, i32 1
  %147 = load %struct._typeobject*, %struct._typeobject** %ob_type213, align 8
  %tp_dealloc214 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %147, i32 0, i32 4
  %148 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc214, align 8
  %149 = load %struct._object*, %struct._object** %_py_decref_tmp206, align 8
  call void %148(%struct._object* %149)
  br label %if.end.215

if.end.215:                                       ; preds = %if.else.212, %if.then.211
  br label %do.end.216

do.end.216:                                       ; preds = %if.end.215
  br label %if.end.217

if.end.217:                                       ; preds = %do.end.216, %if.end.197
  br label %do.body.218

do.body.218:                                      ; preds = %if.end.217
  %150 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %snapshot = getelementptr inbounds %struct.textio, %struct.textio* %150, i32 0, i32 26
  %151 = load %struct._object*, %struct._object** %snapshot, align 8
  store %struct._object* %151, %struct._object** %_py_tmp, align 8
  %152 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp219 = icmp ne %struct._object* %152, null
  br i1 %cmp219, label %if.then.221, label %if.end.235

if.then.221:                                      ; preds = %do.body.218
  %153 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %snapshot222 = getelementptr inbounds %struct.textio, %struct.textio* %153, i32 0, i32 26
  store %struct._object* null, %struct._object** %snapshot222, align 8
  br label %do.body.223

do.body.223:                                      ; preds = %if.then.221
  %154 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %154, %struct._object** %_py_decref_tmp224, align 8
  %155 = load %struct._object*, %struct._object** %_py_decref_tmp224, align 8
  %ob_refcnt225 = getelementptr inbounds %struct._object, %struct._object* %155, i32 0, i32 0
  %156 = load i64, i64* %ob_refcnt225, align 8
  %dec226 = add i64 %156, -1
  store i64 %dec226, i64* %ob_refcnt225, align 8
  %cmp227 = icmp ne i64 %dec226, 0
  br i1 %cmp227, label %if.then.229, label %if.else.230

if.then.229:                                      ; preds = %do.body.223
  br label %if.end.233

if.else.230:                                      ; preds = %do.body.223
  %157 = load %struct._object*, %struct._object** %_py_decref_tmp224, align 8
  %ob_type231 = getelementptr inbounds %struct._object, %struct._object* %157, i32 0, i32 1
  %158 = load %struct._typeobject*, %struct._typeobject** %ob_type231, align 8
  %tp_dealloc232 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %158, i32 0, i32 4
  %159 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc232, align 8
  %160 = load %struct._object*, %struct._object** %_py_decref_tmp224, align 8
  call void %159(%struct._object* %160)
  br label %if.end.233

if.end.233:                                       ; preds = %if.else.230, %if.then.229
  br label %do.end.234

do.end.234:                                       ; preds = %if.end.233
  br label %if.end.235

if.end.235:                                       ; preds = %do.end.234, %do.body.218
  br label %do.end.236

do.end.236:                                       ; preds = %if.end.235
  %161 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder = getelementptr inbounds %struct.textio, %struct.textio* %161, i32 0, i32 7
  %162 = load %struct._object*, %struct._object** %decoder, align 8
  %tobool237 = icmp ne %struct._object* %162, null
  br i1 %tobool237, label %if.then.238, label %if.end.257

if.then.238:                                      ; preds = %do.end.236
  %163 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder239 = getelementptr inbounds %struct.textio, %struct.textio* %163, i32 0, i32 7
  %164 = load %struct._object*, %struct._object** %decoder239, align 8
  %call240 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %164, %struct._Py_Identifier* @PyId_reset, i8* null)
  store %struct._object* %call240, %struct._object** %ret, align 8
  %165 = load %struct._object*, %struct._object** %ret, align 8
  %cmp241 = icmp eq %struct._object* %165, null
  br i1 %cmp241, label %if.then.243, label %if.end.244

if.then.243:                                      ; preds = %if.then.238
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.244:                                       ; preds = %if.then.238
  br label %do.body.245

do.body.245:                                      ; preds = %if.end.244
  %166 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %166, %struct._object** %_py_decref_tmp246, align 8
  %167 = load %struct._object*, %struct._object** %_py_decref_tmp246, align 8
  %ob_refcnt247 = getelementptr inbounds %struct._object, %struct._object* %167, i32 0, i32 0
  %168 = load i64, i64* %ob_refcnt247, align 8
  %dec248 = add i64 %168, -1
  store i64 %dec248, i64* %ob_refcnt247, align 8
  %cmp249 = icmp ne i64 %dec248, 0
  br i1 %cmp249, label %if.then.251, label %if.else.252

if.then.251:                                      ; preds = %do.body.245
  br label %if.end.255

if.else.252:                                      ; preds = %do.body.245
  %169 = load %struct._object*, %struct._object** %_py_decref_tmp246, align 8
  %ob_type253 = getelementptr inbounds %struct._object, %struct._object* %169, i32 0, i32 1
  %170 = load %struct._typeobject*, %struct._typeobject** %ob_type253, align 8
  %tp_dealloc254 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %170, i32 0, i32 4
  %171 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc254, align 8
  %172 = load %struct._object*, %struct._object** %_py_decref_tmp246, align 8
  call void %171(%struct._object* %172)
  br label %if.end.255

if.end.255:                                       ; preds = %if.else.252, %if.then.251
  br label %do.end.256

do.end.256:                                       ; preds = %if.end.255
  br label %if.end.257

if.end.257:                                       ; preds = %do.end.256, %do.end.236
  %173 = load i64, i64* %textlen, align 8
  %call258 = call %struct._object* @PyLong_FromSsize_t(i64 %173)
  store %struct._object* %call258, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.257, %if.then.243, %if.then.203, %if.then.195, %do.end.169, %do.end.150, %if.then.128, %if.then.87, %if.then.44, %if.then.39, %if.then.34, %if.then.30, %if.then.20, %if.then.9, %if.then.4, %if.end
  %174 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %174
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @textiowrapper_read(%struct.textio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.textio*, align 8
  %args.addr = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %result = alloca %struct._object*, align 8
  %chunks = alloca %struct._object*, align 8
  %r = alloca i32, align 4
  %_res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %bytes = alloca %struct._object*, align 8
  %decoded = alloca %struct._object*, align 8
  %_py_decref_tmp63 = alloca %struct._object*, align 8
  %_py_decref_tmp81 = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp100 = alloca %struct._object*, align 8
  %res = alloca i32, align 4
  %remaining = alloca i64, align 8
  %_py_decref_tmp148 = alloca %struct._object*, align 8
  %_py_tmp173 = alloca %struct._object*, align 8
  %_py_decref_tmp177 = alloca %struct._object*, align 8
  %_py_tmp194 = alloca %struct._object*, align 8
  %_py_decref_tmp198 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp215 = alloca %struct._object*, align 8
  %_py_xdecref_tmp228 = alloca %struct._object*, align 8
  %_py_decref_tmp232 = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 -1, i64* %n, align 8
  store %struct._object* null, %struct._object** %result, align 8
  store %struct._object* null, %struct._object** %chunks, align 8
  %0 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.textio, %struct.textio* %0, i32 0, i32 1
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %detached = getelementptr inbounds %struct.textio, %struct.textio* %2, i32 0, i32 2
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0), i32 (%struct._object*, i8*)* @_PyIO_ConvertSsize_t, i64* %n)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end.2
  br label %do.body

do.body:                                          ; preds = %if.end.5
  %7 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %8 = bitcast %struct.textio* %7 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp6 = icmp eq %struct._typeobject* %9, @PyTextIOWrapper_Type
  br i1 %cmp6, label %if.then.7, label %if.else.31

if.then.7:                                        ; preds = %do.body
  %10 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %raw = getelementptr inbounds %struct.textio, %struct.textio* %10, i32 0, i32 28
  %11 = load %struct._object*, %struct._object** %raw, align 8
  %cmp8 = icmp ne %struct._object* %11, null
  br i1 %cmp8, label %if.then.9, label %if.else.12

if.then.9:                                        ; preds = %if.then.7
  %12 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %raw10 = getelementptr inbounds %struct.textio, %struct.textio* %12, i32 0, i32 28
  %13 = load %struct._object*, %struct._object** %raw10, align 8
  %call11 = call i32 @_PyFileIO_closed(%struct._object* %13)
  store i32 %call11, i32* %r, align 4
  br label %if.end.27

if.else.12:                                       ; preds = %if.then.7
  %14 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %call13 = call %struct._object* @textiowrapper_closed_get(%struct.textio* %14, i8* null)
  store %struct._object* %call13, %struct._object** %_res, align 8
  %15 = load %struct._object*, %struct._object** %_res, align 8
  %cmp14 = icmp eq %struct._object* %15, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.else.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.else.12
  %16 = load %struct._object*, %struct._object** %_res, align 8
  %call17 = call i32 @PyObject_IsTrue(%struct._object* %16)
  store i32 %call17, i32* %r, align 4
  br label %do.body.18

do.body.18:                                       ; preds = %if.end.16
  %17 = load %struct._object*, %struct._object** %_res, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp19 = icmp ne i64 %dec, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.18
  br label %if.end.23

if.else.21:                                       ; preds = %do.body.18
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.21, %if.then.20
  br label %do.end

do.end:                                           ; preds = %if.end.23
  %24 = load i32, i32* %r, align 4
  %cmp24 = icmp slt i32 %24, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.26:                                        ; preds = %do.end
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.9
  %25 = load i32, i32* %r, align 4
  %cmp28 = icmp sgt i32 %25, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.27
  %26 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.30:                                        ; preds = %if.end.27
  br label %if.end.36

if.else.31:                                       ; preds = %do.body
  %27 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %28 = bitcast %struct.textio* %27 to %struct._object*
  %call32 = call %struct._object* @_PyIOBase_check_closed(%struct._object* %28, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0))
  %cmp33 = icmp eq %struct._object* %call32, null
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.else.31
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.35:                                        ; preds = %if.else.31
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.30
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  %29 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder = getelementptr inbounds %struct.textio, %struct.textio* %29, i32 0, i32 7
  %30 = load %struct._object*, %struct._object** %decoder, align 8
  %cmp38 = icmp eq %struct._object* %30, null
  br i1 %cmp38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %do.end.37
  %call40 = call %struct._object* @_unsupported(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0))
  store %struct._object* %call40, %struct._object** %retval
  br label %return

if.end.41:                                        ; preds = %do.end.37
  %31 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %call42 = call i32 @_textiowrapper_writeflush(%struct.textio* %31)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.41
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.45:                                        ; preds = %if.end.41
  %32 = load i64, i64* %n, align 8
  %cmp46 = icmp slt i64 %32, 0
  br i1 %cmp46, label %if.then.47, label %if.else.112

if.then.47:                                       ; preds = %if.end.45
  %33 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %buffer = getelementptr inbounds %struct.textio, %struct.textio* %33, i32 0, i32 4
  %34 = load %struct._object*, %struct._object** %buffer, align 8
  %call48 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %34, %struct._Py_Identifier* @PyId_read, i8* null)
  store %struct._object* %call48, %struct._object** %bytes, align 8
  %35 = load %struct._object*, %struct._object** %bytes, align 8
  %cmp49 = icmp eq %struct._object* %35, null
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.then.47
  br label %fail

if.end.51:                                        ; preds = %if.then.47
  %36 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder52 = getelementptr inbounds %struct.textio, %struct.textio* %36, i32 0, i32 7
  %37 = load %struct._object*, %struct._object** %decoder52, align 8
  %ob_type53 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type53, align 8
  %cmp54 = icmp eq %struct._typeobject* %38, @PyIncrementalNewlineDecoder_Type
  br i1 %cmp54, label %if.then.55, label %if.else.58

if.then.55:                                       ; preds = %if.end.51
  %39 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder56 = getelementptr inbounds %struct.textio, %struct.textio* %39, i32 0, i32 7
  %40 = load %struct._object*, %struct._object** %decoder56, align 8
  %41 = load %struct._object*, %struct._object** %bytes, align 8
  %call57 = call %struct._object* @_PyIncrementalNewlineDecoder_decode(%struct._object* %40, %struct._object* %41, i32 1)
  store %struct._object* %call57, %struct._object** %decoded, align 8
  br label %if.end.61

if.else.58:                                       ; preds = %if.end.51
  %42 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder59 = getelementptr inbounds %struct.textio, %struct.textio* %42, i32 0, i32 7
  %43 = load %struct._object*, %struct._object** %decoder59, align 8
  %44 = load %struct._object*, %struct._object** @_PyIO_str_decode, align 8
  %45 = load %struct._object*, %struct._object** %bytes, align 8
  %call60 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %43, %struct._object* %44, %struct._object* %45, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), i8* null)
  store %struct._object* %call60, %struct._object** %decoded, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %if.then.55
  br label %do.body.62

do.body.62:                                       ; preds = %if.end.61
  %46 = load %struct._object*, %struct._object** %bytes, align 8
  store %struct._object* %46, %struct._object** %_py_decref_tmp63, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  %ob_refcnt64 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0
  %48 = load i64, i64* %ob_refcnt64, align 8
  %dec65 = add i64 %48, -1
  store i64 %dec65, i64* %ob_refcnt64, align 8
  %cmp66 = icmp ne i64 %dec65, 0
  br i1 %cmp66, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %do.body.62
  br label %if.end.71

if.else.68:                                       ; preds = %do.body.62
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  %ob_type69 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type69, align 8
  %tp_dealloc70 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc70, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  call void %51(%struct._object* %52)
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.68, %if.then.67
  br label %do.end.72

do.end.72:                                        ; preds = %if.end.71
  %53 = load %struct._object*, %struct._object** %decoded, align 8
  %call73 = call i32 @check_decoded(%struct._object* %53)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %do.end.72
  br label %fail

if.end.76:                                        ; preds = %do.end.72
  %54 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %call77 = call %struct._object* @textiowrapper_get_decoded_chars(%struct.textio* %54, i64 -1)
  store %struct._object* %call77, %struct._object** %result, align 8
  %55 = load %struct._object*, %struct._object** %result, align 8
  %cmp78 = icmp eq %struct._object* %55, null
  br i1 %cmp78, label %if.then.79, label %if.end.91

if.then.79:                                       ; preds = %if.end.76
  br label %do.body.80

do.body.80:                                       ; preds = %if.then.79
  %56 = load %struct._object*, %struct._object** %decoded, align 8
  store %struct._object* %56, %struct._object** %_py_decref_tmp81, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  %ob_refcnt82 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 0
  %58 = load i64, i64* %ob_refcnt82, align 8
  %dec83 = add i64 %58, -1
  store i64 %dec83, i64* %ob_refcnt82, align 8
  %cmp84 = icmp ne i64 %dec83, 0
  br i1 %cmp84, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %do.body.80
  br label %if.end.89

if.else.86:                                       ; preds = %do.body.80
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  %ob_type87 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 1
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type87, align 8
  %tp_dealloc88 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i32 0, i32 4
  %61 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc88, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  call void %61(%struct._object* %62)
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.86, %if.then.85
  br label %do.end.90

do.end.90:                                        ; preds = %if.end.89
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.91:                                        ; preds = %if.end.76
  %63 = load %struct._object*, %struct._object** %decoded, align 8
  call void @PyUnicode_AppendAndDel(%struct._object** %result, %struct._object* %63)
  %64 = load %struct._object*, %struct._object** %result, align 8
  %cmp92 = icmp eq %struct._object* %64, null
  br i1 %cmp92, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.end.91
  br label %fail

if.end.94:                                        ; preds = %if.end.91
  br label %do.body.95

do.body.95:                                       ; preds = %if.end.94
  %65 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %snapshot = getelementptr inbounds %struct.textio, %struct.textio* %65, i32 0, i32 26
  %66 = load %struct._object*, %struct._object** %snapshot, align 8
  store %struct._object* %66, %struct._object** %_py_tmp, align 8
  %67 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp96 = icmp ne %struct._object* %67, null
  br i1 %cmp96, label %if.then.97, label %if.end.110

if.then.97:                                       ; preds = %do.body.95
  %68 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %snapshot98 = getelementptr inbounds %struct.textio, %struct.textio* %68, i32 0, i32 26
  store %struct._object* null, %struct._object** %snapshot98, align 8
  br label %do.body.99

do.body.99:                                       ; preds = %if.then.97
  %69 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %69, %struct._object** %_py_decref_tmp100, align 8
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp100, align 8
  %ob_refcnt101 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 0
  %71 = load i64, i64* %ob_refcnt101, align 8
  %dec102 = add i64 %71, -1
  store i64 %dec102, i64* %ob_refcnt101, align 8
  %cmp103 = icmp ne i64 %dec102, 0
  br i1 %cmp103, label %if.then.104, label %if.else.105

if.then.104:                                      ; preds = %do.body.99
  br label %if.end.108

if.else.105:                                      ; preds = %do.body.99
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp100, align 8
  %ob_type106 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 1
  %73 = load %struct._typeobject*, %struct._typeobject** %ob_type106, align 8
  %tp_dealloc107 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %73, i32 0, i32 4
  %74 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc107, align 8
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp100, align 8
  call void %74(%struct._object* %75)
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.105, %if.then.104
  br label %do.end.109

do.end.109:                                       ; preds = %if.end.108
  br label %if.end.110

if.end.110:                                       ; preds = %do.end.109, %do.body.95
  br label %do.end.111

do.end.111:                                       ; preds = %if.end.110
  %76 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %76, %struct._object** %retval
  br label %return

if.else.112:                                      ; preds = %if.end.45
  store i32 1, i32* %res, align 4
  %77 = load i64, i64* %n, align 8
  store i64 %77, i64* %remaining, align 8
  %78 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %79 = load i64, i64* %n, align 8
  %call113 = call %struct._object* @textiowrapper_get_decoded_chars(%struct.textio* %78, i64 %79)
  store %struct._object* %call113, %struct._object** %result, align 8
  %80 = load %struct._object*, %struct._object** %result, align 8
  %cmp114 = icmp eq %struct._object* %80, null
  br i1 %cmp114, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %if.else.112
  br label %fail

if.end.116:                                       ; preds = %if.else.112
  %81 = load %struct._object*, %struct._object** %result, align 8
  %82 = bitcast %struct._object* %81 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %82, i32 0, i32 3
  %83 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %83, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool117 = icmp ne i32 %bf.clear, 0
  br i1 %tobool117, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.116
  br label %cond.end

cond.false:                                       ; preds = %if.end.116
  %84 = load %struct._object*, %struct._object** %result, align 8
  %call118 = call i32 @_PyUnicode_Ready(%struct._object* %84)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call118, %cond.false ]
  %cmp119 = icmp eq i32 %cond, -1
  br i1 %cmp119, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %cond.end
  br label %fail

if.end.121:                                       ; preds = %cond.end
  %85 = load %struct._object*, %struct._object** %result, align 8
  %86 = bitcast %struct._object* %85 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %86, i32 0, i32 1
  %87 = load i64, i64* %length, align 8
  %88 = load i64, i64* %remaining, align 8
  %sub = sub i64 %88, %87
  store i64 %sub, i64* %remaining, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.161, %if.then.128, %if.end.121
  %89 = load i64, i64* %remaining, align 8
  %cmp122 = icmp sgt i64 %89, 0
  br i1 %cmp122, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %90 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %91 = load i64, i64* %remaining, align 8
  %call123 = call i32 @textiowrapper_read_chunk(%struct.textio* %90, i64 %91)
  store i32 %call123, i32* %res, align 4
  %92 = load i32, i32* %res, align 4
  %cmp124 = icmp slt i32 %92, 0
  br i1 %cmp124, label %if.then.125, label %if.end.130

if.then.125:                                      ; preds = %while.body
  %call126 = call i32 @_PyIO_trap_eintr()
  %tobool127 = icmp ne i32 %call126, 0
  br i1 %tobool127, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.then.125
  br label %while.cond

if.end.129:                                       ; preds = %if.then.125
  br label %fail

if.end.130:                                       ; preds = %while.body
  %93 = load i32, i32* %res, align 4
  %cmp131 = icmp eq i32 %93, 0
  br i1 %cmp131, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %if.end.130
  br label %while.end

if.end.133:                                       ; preds = %if.end.130
  %94 = load %struct._object*, %struct._object** %chunks, align 8
  %cmp134 = icmp eq %struct._object* %94, null
  br i1 %cmp134, label %if.then.135, label %if.end.140

if.then.135:                                      ; preds = %if.end.133
  %call136 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call136, %struct._object** %chunks, align 8
  %95 = load %struct._object*, %struct._object** %chunks, align 8
  %cmp137 = icmp eq %struct._object* %95, null
  br i1 %cmp137, label %if.then.138, label %if.end.139

if.then.138:                                      ; preds = %if.then.135
  br label %fail

if.end.139:                                       ; preds = %if.then.135
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %if.end.133
  %96 = load %struct._object*, %struct._object** %result, align 8
  %97 = bitcast %struct._object* %96 to %struct.PyASCIIObject*
  %length141 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %97, i32 0, i32 1
  %98 = load i64, i64* %length141, align 8
  %cmp142 = icmp sgt i64 %98, 0
  br i1 %cmp142, label %land.lhs.true, label %if.end.146

land.lhs.true:                                    ; preds = %if.end.140
  %99 = load %struct._object*, %struct._object** %chunks, align 8
  %100 = load %struct._object*, %struct._object** %result, align 8
  %call143 = call i32 @PyList_Append(%struct._object* %99, %struct._object* %100)
  %cmp144 = icmp slt i32 %call143, 0
  br i1 %cmp144, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %land.lhs.true
  br label %fail

if.end.146:                                       ; preds = %land.lhs.true, %if.end.140
  br label %do.body.147

do.body.147:                                      ; preds = %if.end.146
  %101 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %101, %struct._object** %_py_decref_tmp148, align 8
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp148, align 8
  %ob_refcnt149 = getelementptr inbounds %struct._object, %struct._object* %102, i32 0, i32 0
  %103 = load i64, i64* %ob_refcnt149, align 8
  %dec150 = add i64 %103, -1
  store i64 %dec150, i64* %ob_refcnt149, align 8
  %cmp151 = icmp ne i64 %dec150, 0
  br i1 %cmp151, label %if.then.152, label %if.else.153

if.then.152:                                      ; preds = %do.body.147
  br label %if.end.156

if.else.153:                                      ; preds = %do.body.147
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp148, align 8
  %ob_type154 = getelementptr inbounds %struct._object, %struct._object* %104, i32 0, i32 1
  %105 = load %struct._typeobject*, %struct._typeobject** %ob_type154, align 8
  %tp_dealloc155 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %105, i32 0, i32 4
  %106 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc155, align 8
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp148, align 8
  call void %106(%struct._object* %107)
  br label %if.end.156

if.end.156:                                       ; preds = %if.else.153, %if.then.152
  br label %do.end.157

do.end.157:                                       ; preds = %if.end.156
  %108 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %109 = load i64, i64* %remaining, align 8
  %call158 = call %struct._object* @textiowrapper_get_decoded_chars(%struct.textio* %108, i64 %109)
  store %struct._object* %call158, %struct._object** %result, align 8
  %110 = load %struct._object*, %struct._object** %result, align 8
  %cmp159 = icmp eq %struct._object* %110, null
  br i1 %cmp159, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %do.end.157
  br label %fail

if.end.161:                                       ; preds = %do.end.157
  %111 = load %struct._object*, %struct._object** %result, align 8
  %112 = bitcast %struct._object* %111 to %struct.PyASCIIObject*
  %length162 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %112, i32 0, i32 1
  %113 = load i64, i64* %length162, align 8
  %114 = load i64, i64* %remaining, align 8
  %sub163 = sub i64 %114, %113
  store i64 %sub163, i64* %remaining, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.132, %while.cond
  %115 = load %struct._object*, %struct._object** %chunks, align 8
  %cmp164 = icmp ne %struct._object* %115, null
  br i1 %cmp164, label %if.then.165, label %if.end.210

if.then.165:                                      ; preds = %while.end
  %116 = load %struct._object*, %struct._object** %result, align 8
  %cmp166 = icmp ne %struct._object* %116, null
  br i1 %cmp166, label %land.lhs.true.167, label %if.end.171

land.lhs.true.167:                                ; preds = %if.then.165
  %117 = load %struct._object*, %struct._object** %chunks, align 8
  %118 = load %struct._object*, %struct._object** %result, align 8
  %call168 = call i32 @PyList_Append(%struct._object* %117, %struct._object* %118)
  %cmp169 = icmp slt i32 %call168, 0
  br i1 %cmp169, label %if.then.170, label %if.end.171

if.then.170:                                      ; preds = %land.lhs.true.167
  br label %fail

if.end.171:                                       ; preds = %land.lhs.true.167, %if.then.165
  br label %do.body.172

do.body.172:                                      ; preds = %if.end.171
  %119 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %119, %struct._object** %_py_tmp173, align 8
  %120 = load %struct._object*, %struct._object** %_py_tmp173, align 8
  %cmp174 = icmp ne %struct._object* %120, null
  br i1 %cmp174, label %if.then.175, label %if.end.187

if.then.175:                                      ; preds = %do.body.172
  store %struct._object* null, %struct._object** %result, align 8
  br label %do.body.176

do.body.176:                                      ; preds = %if.then.175
  %121 = load %struct._object*, %struct._object** %_py_tmp173, align 8
  store %struct._object* %121, %struct._object** %_py_decref_tmp177, align 8
  %122 = load %struct._object*, %struct._object** %_py_decref_tmp177, align 8
  %ob_refcnt178 = getelementptr inbounds %struct._object, %struct._object* %122, i32 0, i32 0
  %123 = load i64, i64* %ob_refcnt178, align 8
  %dec179 = add i64 %123, -1
  store i64 %dec179, i64* %ob_refcnt178, align 8
  %cmp180 = icmp ne i64 %dec179, 0
  br i1 %cmp180, label %if.then.181, label %if.else.182

if.then.181:                                      ; preds = %do.body.176
  br label %if.end.185

if.else.182:                                      ; preds = %do.body.176
  %124 = load %struct._object*, %struct._object** %_py_decref_tmp177, align 8
  %ob_type183 = getelementptr inbounds %struct._object, %struct._object* %124, i32 0, i32 1
  %125 = load %struct._typeobject*, %struct._typeobject** %ob_type183, align 8
  %tp_dealloc184 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %125, i32 0, i32 4
  %126 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc184, align 8
  %127 = load %struct._object*, %struct._object** %_py_decref_tmp177, align 8
  call void %126(%struct._object* %127)
  br label %if.end.185

if.end.185:                                       ; preds = %if.else.182, %if.then.181
  br label %do.end.186

do.end.186:                                       ; preds = %if.end.185
  br label %if.end.187

if.end.187:                                       ; preds = %do.end.186, %do.body.172
  br label %do.end.188

do.end.188:                                       ; preds = %if.end.187
  %128 = load %struct._object*, %struct._object** @_PyIO_empty_str, align 8
  %129 = load %struct._object*, %struct._object** %chunks, align 8
  %call189 = call %struct._object* @PyUnicode_Join(%struct._object* %128, %struct._object* %129)
  store %struct._object* %call189, %struct._object** %result, align 8
  %130 = load %struct._object*, %struct._object** %result, align 8
  %cmp190 = icmp eq %struct._object* %130, null
  br i1 %cmp190, label %if.then.191, label %if.end.192

if.then.191:                                      ; preds = %do.end.188
  br label %fail

if.end.192:                                       ; preds = %do.end.188
  br label %do.body.193

do.body.193:                                      ; preds = %if.end.192
  %131 = load %struct._object*, %struct._object** %chunks, align 8
  store %struct._object* %131, %struct._object** %_py_tmp194, align 8
  %132 = load %struct._object*, %struct._object** %_py_tmp194, align 8
  %cmp195 = icmp ne %struct._object* %132, null
  br i1 %cmp195, label %if.then.196, label %if.end.208

if.then.196:                                      ; preds = %do.body.193
  store %struct._object* null, %struct._object** %chunks, align 8
  br label %do.body.197

do.body.197:                                      ; preds = %if.then.196
  %133 = load %struct._object*, %struct._object** %_py_tmp194, align 8
  store %struct._object* %133, %struct._object** %_py_decref_tmp198, align 8
  %134 = load %struct._object*, %struct._object** %_py_decref_tmp198, align 8
  %ob_refcnt199 = getelementptr inbounds %struct._object, %struct._object* %134, i32 0, i32 0
  %135 = load i64, i64* %ob_refcnt199, align 8
  %dec200 = add i64 %135, -1
  store i64 %dec200, i64* %ob_refcnt199, align 8
  %cmp201 = icmp ne i64 %dec200, 0
  br i1 %cmp201, label %if.then.202, label %if.else.203

if.then.202:                                      ; preds = %do.body.197
  br label %if.end.206

if.else.203:                                      ; preds = %do.body.197
  %136 = load %struct._object*, %struct._object** %_py_decref_tmp198, align 8
  %ob_type204 = getelementptr inbounds %struct._object, %struct._object* %136, i32 0, i32 1
  %137 = load %struct._typeobject*, %struct._typeobject** %ob_type204, align 8
  %tp_dealloc205 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %137, i32 0, i32 4
  %138 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc205, align 8
  %139 = load %struct._object*, %struct._object** %_py_decref_tmp198, align 8
  call void %138(%struct._object* %139)
  br label %if.end.206

if.end.206:                                       ; preds = %if.else.203, %if.then.202
  br label %do.end.207

do.end.207:                                       ; preds = %if.end.206
  br label %if.end.208

if.end.208:                                       ; preds = %do.end.207, %do.body.193
  br label %do.end.209

do.end.209:                                       ; preds = %if.end.208
  br label %if.end.210

if.end.210:                                       ; preds = %do.end.209, %while.end
  %140 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %140, %struct._object** %retval
  br label %return

fail:                                             ; preds = %if.then.191, %if.then.170, %if.then.160, %if.then.145, %if.then.138, %if.end.129, %if.then.120, %if.then.115, %if.then.93, %if.then.75, %if.then.50
  br label %do.body.211

do.body.211:                                      ; preds = %fail
  %141 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %141, %struct._object** %_py_xdecref_tmp, align 8
  %142 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp212 = icmp ne %struct._object* %142, null
  br i1 %cmp212, label %if.then.213, label %if.end.225

if.then.213:                                      ; preds = %do.body.211
  br label %do.body.214

do.body.214:                                      ; preds = %if.then.213
  %143 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %143, %struct._object** %_py_decref_tmp215, align 8
  %144 = load %struct._object*, %struct._object** %_py_decref_tmp215, align 8
  %ob_refcnt216 = getelementptr inbounds %struct._object, %struct._object* %144, i32 0, i32 0
  %145 = load i64, i64* %ob_refcnt216, align 8
  %dec217 = add i64 %145, -1
  store i64 %dec217, i64* %ob_refcnt216, align 8
  %cmp218 = icmp ne i64 %dec217, 0
  br i1 %cmp218, label %if.then.219, label %if.else.220

if.then.219:                                      ; preds = %do.body.214
  br label %if.end.223

if.else.220:                                      ; preds = %do.body.214
  %146 = load %struct._object*, %struct._object** %_py_decref_tmp215, align 8
  %ob_type221 = getelementptr inbounds %struct._object, %struct._object* %146, i32 0, i32 1
  %147 = load %struct._typeobject*, %struct._typeobject** %ob_type221, align 8
  %tp_dealloc222 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %147, i32 0, i32 4
  %148 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc222, align 8
  %149 = load %struct._object*, %struct._object** %_py_decref_tmp215, align 8
  call void %148(%struct._object* %149)
  br label %if.end.223

if.end.223:                                       ; preds = %if.else.220, %if.then.219
  br label %do.end.224

do.end.224:                                       ; preds = %if.end.223
  br label %if.end.225

if.end.225:                                       ; preds = %do.end.224, %do.body.211
  br label %do.end.226

do.end.226:                                       ; preds = %if.end.225
  br label %do.body.227

do.body.227:                                      ; preds = %do.end.226
  %150 = load %struct._object*, %struct._object** %chunks, align 8
  store %struct._object* %150, %struct._object** %_py_xdecref_tmp228, align 8
  %151 = load %struct._object*, %struct._object** %_py_xdecref_tmp228, align 8
  %cmp229 = icmp ne %struct._object* %151, null
  br i1 %cmp229, label %if.then.230, label %if.end.242

if.then.230:                                      ; preds = %do.body.227
  br label %do.body.231

do.body.231:                                      ; preds = %if.then.230
  %152 = load %struct._object*, %struct._object** %_py_xdecref_tmp228, align 8
  store %struct._object* %152, %struct._object** %_py_decref_tmp232, align 8
  %153 = load %struct._object*, %struct._object** %_py_decref_tmp232, align 8
  %ob_refcnt233 = getelementptr inbounds %struct._object, %struct._object* %153, i32 0, i32 0
  %154 = load i64, i64* %ob_refcnt233, align 8
  %dec234 = add i64 %154, -1
  store i64 %dec234, i64* %ob_refcnt233, align 8
  %cmp235 = icmp ne i64 %dec234, 0
  br i1 %cmp235, label %if.then.236, label %if.else.237

if.then.236:                                      ; preds = %do.body.231
  br label %if.end.240

if.else.237:                                      ; preds = %do.body.231
  %155 = load %struct._object*, %struct._object** %_py_decref_tmp232, align 8
  %ob_type238 = getelementptr inbounds %struct._object, %struct._object* %155, i32 0, i32 1
  %156 = load %struct._typeobject*, %struct._typeobject** %ob_type238, align 8
  %tp_dealloc239 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %156, i32 0, i32 4
  %157 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc239, align 8
  %158 = load %struct._object*, %struct._object** %_py_decref_tmp232, align 8
  call void %157(%struct._object* %158)
  br label %if.end.240

if.end.240:                                       ; preds = %if.else.237, %if.then.236
  br label %do.end.241

do.end.241:                                       ; preds = %if.end.240
  br label %if.end.242

if.end.242:                                       ; preds = %do.end.241, %do.body.227
  br label %do.end.243

do.end.243:                                       ; preds = %if.end.242
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.243, %if.end.210, %do.end.111, %do.end.90, %if.then.44, %if.then.39, %if.then.34, %if.then.29, %if.then.25, %if.then.15, %if.then.4, %if.end
  %159 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %159
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @textiowrapper_readline(%struct.textio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.textio*, align 8
  %args.addr = alloca %struct._object*, align 8
  %limit = alloca i64, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 -1, i64* %limit, align 8
  %0 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.textio, %struct.textio* %0, i32 0, i32 1
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %detached = getelementptr inbounds %struct.textio, %struct.textio* %2, i32 0, i32 2
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i32 0, i32 0), i64* %limit)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end.2
  %7 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %8 = load i64, i64* %limit, align 8
  %call6 = call %struct._object* @_textiowrapper_readline(%struct.textio* %7, i64 %8)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.end
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @textiowrapper_flush(%struct.textio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.textio*, align 8
  %args.addr = alloca %struct._object*, align 8
  %r = alloca i32, align 4
  %_res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.textio, %struct.textio* %0, i32 0, i32 1
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %detached = getelementptr inbounds %struct.textio, %struct.textio* %2, i32 0, i32 2
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end.2
  %6 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %7 = bitcast %struct.textio* %6 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp3 = icmp eq %struct._typeobject* %8, @PyTextIOWrapper_Type
  br i1 %cmp3, label %if.then.4, label %if.else.27

if.then.4:                                        ; preds = %do.body
  %9 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %raw = getelementptr inbounds %struct.textio, %struct.textio* %9, i32 0, i32 28
  %10 = load %struct._object*, %struct._object** %raw, align 8
  %cmp5 = icmp ne %struct._object* %10, null
  br i1 %cmp5, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.then.4
  %11 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %raw7 = getelementptr inbounds %struct.textio, %struct.textio* %11, i32 0, i32 28
  %12 = load %struct._object*, %struct._object** %raw7, align 8
  %call = call i32 @_PyFileIO_closed(%struct._object* %12)
  store i32 %call, i32* %r, align 4
  br label %if.end.23

if.else.8:                                        ; preds = %if.then.4
  %13 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %call9 = call %struct._object* @textiowrapper_closed_get(%struct.textio* %13, i8* null)
  store %struct._object* %call9, %struct._object** %_res, align 8
  %14 = load %struct._object*, %struct._object** %_res, align 8
  %cmp10 = icmp eq %struct._object* %14, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.else.8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.else.8
  %15 = load %struct._object*, %struct._object** %_res, align 8
  %call13 = call i32 @PyObject_IsTrue(%struct._object* %15)
  store i32 %call13, i32* %r, align 4
  br label %do.body.14

do.body.14:                                       ; preds = %if.end.12
  %16 = load %struct._object*, %struct._object** %_res, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.14
  br label %if.end.19

if.else.17:                                       ; preds = %do.body.14
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.17, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.19
  %23 = load i32, i32* %r, align 4
  %cmp20 = icmp slt i32 %23, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %do.end
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.6
  %24 = load i32, i32* %r, align 4
  %cmp24 = icmp sgt i32 %24, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.23
  %25 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.26:                                        ; preds = %if.end.23
  br label %if.end.32

if.else.27:                                       ; preds = %do.body
  %26 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %27 = bitcast %struct.textio* %26 to %struct._object*
  %call28 = call %struct._object* @_PyIOBase_check_closed(%struct._object* %27, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0))
  %cmp29 = icmp eq %struct._object* %call28, null
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.else.27
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %if.else.27
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.26
  br label %do.end.33

do.end.33:                                        ; preds = %if.end.32
  %28 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %seekable = getelementptr inbounds %struct.textio, %struct.textio* %28, i32 0, i32 16
  %29 = load i8, i8* %seekable, align 1
  %30 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %telling = getelementptr inbounds %struct.textio, %struct.textio* %30, i32 0, i32 18
  store i8 %29, i8* %telling, align 1
  %31 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %call34 = call i32 @_textiowrapper_writeflush(%struct.textio* %31)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %do.end.33
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.37:                                        ; preds = %do.end.33
  %32 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %buffer = getelementptr inbounds %struct.textio, %struct.textio* %32, i32 0, i32 4
  %33 = load %struct._object*, %struct._object** %buffer, align 8
  %call38 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %33, %struct._Py_Identifier* @PyId_flush, i8* null)
  store %struct._object* %call38, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.37, %if.then.36, %if.then.30, %if.then.25, %if.then.21, %if.then.11, %if.end
  %34 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %34
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @textiowrapper_close(%struct.textio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.textio*, align 8
  %args.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %r = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %exc = alloca %struct._object*, align 8
  %val = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  %_py_decref_tmp23 = alloca %struct._object*, align 8
  %_py_decref_tmp41 = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp62 = alloca %struct._object*, align 8
  %val2 = alloca %struct._object*, align 8
  %_py_decref_tmp76 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp90 = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.textio, %struct.textio* %0, i32 0, i32 1
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %detached = getelementptr inbounds %struct.textio, %struct.textio* %2, i32 0, i32 2
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %call = call %struct._object* @textiowrapper_closed_get(%struct.textio* %6, i8* null)
  store %struct._object* %call, %struct._object** %res, align 8
  %7 = load %struct._object*, %struct._object** %res, align 8
  %cmp3 = icmp eq %struct._object* %7, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end.2
  %8 = load %struct._object*, %struct._object** %res, align 8
  %call6 = call i32 @PyObject_IsTrue(%struct._object* %8)
  store i32 %call6, i32* %r, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.5
  %9 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %do.body
  br label %if.end.10

if.else.9:                                        ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.9, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %16 = load i32, i32* %r, align 4
  %cmp11 = icmp slt i32 %16, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %do.end
  %17 = load i32, i32* %r, align 4
  %cmp14 = icmp sgt i32 %17, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.end.13
  %18 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.else.16:                                       ; preds = %if.end.13
  store %struct._object* null, %struct._object** %exc, align 8
  %19 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %finalizing = getelementptr inbounds %struct.textio, %struct.textio* %19, i32 0, i32 19
  %20 = load i8, i8* %finalizing, align 1
  %tobool17 = icmp ne i8 %20, 0
  br i1 %tobool17, label %if.then.18, label %if.end.35

if.then.18:                                       ; preds = %if.else.16
  %21 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %buffer = getelementptr inbounds %struct.textio, %struct.textio* %21, i32 0, i32 4
  %22 = load %struct._object*, %struct._object** %buffer, align 8
  %23 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %call19 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %22, %struct._Py_Identifier* @PyId__dealloc_warn, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0), %struct.textio* %23)
  store %struct._object* %call19, %struct._object** %res, align 8
  %24 = load %struct._object*, %struct._object** %res, align 8
  %tobool20 = icmp ne %struct._object* %24, null
  br i1 %tobool20, label %if.then.21, label %if.else.33

if.then.21:                                       ; preds = %if.then.18
  br label %do.body.22

do.body.22:                                       ; preds = %if.then.21
  %25 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp23, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt24, align 8
  %dec25 = add i64 %27, -1
  store i64 %dec25, i64* %ob_refcnt24, align 8
  %cmp26 = icmp ne i64 %dec25, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body.22
  br label %if.end.31

if.else.28:                                       ; preds = %do.body.22
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  call void %30(%struct._object* %31)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  br label %if.end.34

if.else.33:                                       ; preds = %if.then.18
  call void @PyErr_Clear()
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.33, %do.end.32
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.else.16
  %32 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %33 = bitcast %struct.textio* %32 to %struct._object*
  %call36 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %33, %struct._Py_Identifier* @PyId_flush, i8* null)
  store %struct._object* %call36, %struct._object** %res, align 8
  %34 = load %struct._object*, %struct._object** %res, align 8
  %cmp37 = icmp eq %struct._object* %34, null
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %if.end.35
  call void @PyErr_Fetch(%struct._object** %exc, %struct._object** %val, %struct._object** %tb)
  br label %if.end.51

if.else.39:                                       ; preds = %if.end.35
  br label %do.body.40

do.body.40:                                       ; preds = %if.else.39
  %35 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp41, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt42, align 8
  %dec43 = add i64 %37, -1
  store i64 %dec43, i64* %ob_refcnt42, align 8
  %cmp44 = icmp ne i64 %dec43, 0
  br i1 %cmp44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %do.body.40
  br label %if.end.49

if.else.46:                                       ; preds = %do.body.40
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8
  %tp_dealloc48 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc48, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  call void %40(%struct._object* %41)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.46, %if.then.45
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  br label %if.end.51

if.end.51:                                        ; preds = %do.end.50, %if.then.38
  %42 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %buffer52 = getelementptr inbounds %struct.textio, %struct.textio* %42, i32 0, i32 4
  %43 = load %struct._object*, %struct._object** %buffer52, align 8
  %call53 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %43, %struct._Py_Identifier* @PyId_close, i8* null)
  store %struct._object* %call53, %struct._object** %res, align 8
  %44 = load %struct._object*, %struct._object** %exc, align 8
  %cmp54 = icmp ne %struct._object* %44, null
  br i1 %cmp54, label %if.then.55, label %if.end.103

if.then.55:                                       ; preds = %if.end.51
  %45 = load %struct._object*, %struct._object** %res, align 8
  %cmp56 = icmp ne %struct._object* %45, null
  br i1 %cmp56, label %if.then.57, label %if.else.74

if.then.57:                                       ; preds = %if.then.55
  br label %do.body.58

do.body.58:                                       ; preds = %if.then.57
  %46 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %46, %struct._object** %_py_tmp, align 8
  %47 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp59 = icmp ne %struct._object* %47, null
  br i1 %cmp59, label %if.then.60, label %if.end.72

if.then.60:                                       ; preds = %do.body.58
  store %struct._object* null, %struct._object** %res, align 8
  br label %do.body.61

do.body.61:                                       ; preds = %if.then.60
  %48 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp62, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_refcnt63 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt63, align 8
  %dec64 = add i64 %50, -1
  store i64 %dec64, i64* %ob_refcnt63, align 8
  %cmp65 = icmp ne i64 %dec64, 0
  br i1 %cmp65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %do.body.61
  br label %if.end.70

if.else.67:                                       ; preds = %do.body.61
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_type68 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type68, align 8
  %tp_dealloc69 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc69, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  call void %53(%struct._object* %54)
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.67, %if.then.66
  br label %do.end.71

do.end.71:                                        ; preds = %if.end.70
  br label %if.end.72

if.end.72:                                        ; preds = %do.end.71, %do.body.58
  br label %do.end.73

do.end.73:                                        ; preds = %if.end.72
  %55 = load %struct._object*, %struct._object** %exc, align 8
  %56 = load %struct._object*, %struct._object** %val, align 8
  %57 = load %struct._object*, %struct._object** %tb, align 8
  call void @PyErr_Restore(%struct._object* %55, %struct._object* %56, %struct._object* %57)
  br label %if.end.102

if.else.74:                                       ; preds = %if.then.55
  br label %do.body.75

do.body.75:                                       ; preds = %if.else.74
  %58 = load %struct._object*, %struct._object** %exc, align 8
  store %struct._object* %58, %struct._object** %_py_decref_tmp76, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8
  %ob_refcnt77 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 0
  %60 = load i64, i64* %ob_refcnt77, align 8
  %dec78 = add i64 %60, -1
  store i64 %dec78, i64* %ob_refcnt77, align 8
  %cmp79 = icmp ne i64 %dec78, 0
  br i1 %cmp79, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %do.body.75
  br label %if.end.84

if.else.81:                                       ; preds = %do.body.75
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8
  %ob_type82 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 1
  %62 = load %struct._typeobject*, %struct._typeobject** %ob_type82, align 8
  %tp_dealloc83 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %62, i32 0, i32 4
  %63 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc83, align 8
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8
  call void %63(%struct._object* %64)
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.81, %if.then.80
  br label %do.end.85

do.end.85:                                        ; preds = %if.end.84
  br label %do.body.86

do.body.86:                                       ; preds = %do.end.85
  %65 = load %struct._object*, %struct._object** %tb, align 8
  store %struct._object* %65, %struct._object** %_py_xdecref_tmp, align 8
  %66 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp87 = icmp ne %struct._object* %66, null
  br i1 %cmp87, label %if.then.88, label %if.end.100

if.then.88:                                       ; preds = %do.body.86
  br label %do.body.89

do.body.89:                                       ; preds = %if.then.88
  %67 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %67, %struct._object** %_py_decref_tmp90, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8
  %ob_refcnt91 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 0
  %69 = load i64, i64* %ob_refcnt91, align 8
  %dec92 = add i64 %69, -1
  store i64 %dec92, i64* %ob_refcnt91, align 8
  %cmp93 = icmp ne i64 %dec92, 0
  br i1 %cmp93, label %if.then.94, label %if.else.95

if.then.94:                                       ; preds = %do.body.89
  br label %if.end.98

if.else.95:                                       ; preds = %do.body.89
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8
  %ob_type96 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 1
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type96, align 8
  %tp_dealloc97 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %71, i32 0, i32 4
  %72 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc97, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8
  call void %72(%struct._object* %73)
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.95, %if.then.94
  br label %do.end.99

do.end.99:                                        ; preds = %if.end.98
  br label %if.end.100

if.end.100:                                       ; preds = %do.end.99, %do.body.86
  br label %do.end.101

do.end.101:                                       ; preds = %if.end.100
  call void @PyErr_Fetch(%struct._object** %exc, %struct._object** %val2, %struct._object** %tb)
  call void @PyErr_NormalizeException(%struct._object** %exc, %struct._object** %val2, %struct._object** %tb)
  %74 = load %struct._object*, %struct._object** %val2, align 8
  %75 = load %struct._object*, %struct._object** %val, align 8
  call void @PyException_SetContext(%struct._object* %74, %struct._object* %75)
  %76 = load %struct._object*, %struct._object** %exc, align 8
  %77 = load %struct._object*, %struct._object** %val2, align 8
  %78 = load %struct._object*, %struct._object** %tb, align 8
  call void @PyErr_Restore(%struct._object* %76, %struct._object* %77, %struct._object* %78)
  br label %if.end.102

if.end.102:                                       ; preds = %do.end.101, %do.end.73
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.end.51
  %79 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %79, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.103, %if.then.15, %if.then.12, %if.then.4, %if.end
  %80 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %80
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @textiowrapper_fileno(%struct.textio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.textio*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.textio, %struct.textio* %0, i32 0, i32 1
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %detached = getelementptr inbounds %struct.textio, %struct.textio* %2, i32 0, i32 2
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %buffer = getelementptr inbounds %struct.textio, %struct.textio* %6, i32 0, i32 4
  %7 = load %struct._object*, %struct._object** %buffer, align 8
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %7, %struct._Py_Identifier* @PyId_fileno, i8* null)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.end
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @textiowrapper_seekable(%struct.textio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.textio*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.textio, %struct.textio* %0, i32 0, i32 1
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %detached = getelementptr inbounds %struct.textio, %struct.textio* %2, i32 0, i32 2
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %buffer = getelementptr inbounds %struct.textio, %struct.textio* %6, i32 0, i32 4
  %7 = load %struct._object*, %struct._object** %buffer, align 8
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %7, %struct._Py_Identifier* @PyId_seekable, i8* null)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.end
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @textiowrapper_readable(%struct.textio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.textio*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.textio, %struct.textio* %0, i32 0, i32 1
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %detached = getelementptr inbounds %struct.textio, %struct.textio* %2, i32 0, i32 2
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %buffer = getelementptr inbounds %struct.textio, %struct.textio* %6, i32 0, i32 4
  %7 = load %struct._object*, %struct._object** %buffer, align 8
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %7, %struct._Py_Identifier* @PyId_readable, i8* null)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.end
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @textiowrapper_writable(%struct.textio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.textio*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.textio, %struct.textio* %0, i32 0, i32 1
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %detached = getelementptr inbounds %struct.textio, %struct.textio* %2, i32 0, i32 2
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %buffer = getelementptr inbounds %struct.textio, %struct.textio* %6, i32 0, i32 4
  %7 = load %struct._object*, %struct._object** %buffer, align 8
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %7, %struct._Py_Identifier* @PyId_writable, i8* null)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.end
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @textiowrapper_isatty(%struct.textio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.textio*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.textio, %struct.textio* %0, i32 0, i32 1
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %detached = getelementptr inbounds %struct.textio, %struct.textio* %2, i32 0, i32 2
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %buffer = getelementptr inbounds %struct.textio, %struct.textio* %6, i32 0, i32 4
  %7 = load %struct._object*, %struct._object** %buffer, align 8
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %7, %struct._Py_Identifier* @PyId_isatty, i8* null)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.end
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @textiowrapper_getstate(%struct.textio* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.textio*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %1 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %2 = bitcast %struct.textio* %1 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 1
  %4 = load i8*, i8** %tp_name, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.66, i32 0, i32 0), i8* %4)
  ret %struct._object* null
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @textiowrapper_seek(%struct.textio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.textio*, align 8
  %args.addr = alloca %struct._object*, align 8
  %cookieObj = alloca %struct._object*, align 8
  %posobj = alloca %struct._object*, align 8
  %cookie = alloca %struct.cookie_type, align 8
  %whence = alloca i32, align 4
  %res = alloca %struct._object*, align 8
  %cmp = alloca i32, align 4
  %r = alloca i32, align 4
  %_res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp55 = alloca %struct._object*, align 8
  %_py_decref_tmp85 = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp100 = alloca %struct._object*, align 8
  %_py_decref_tmp120 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp136 = alloca %struct._object*, align 8
  %_py_decref_tmp168 = alloca %struct._object*, align 8
  %_py_decref_tmp189 = alloca %struct._object*, align 8
  %_py_decref_tmp203 = alloca %struct._object*, align 8
  %_py_tmp214 = alloca %struct._object*, align 8
  %_py_decref_tmp220 = alloca %struct._object*, align 8
  %input_chunk = alloca %struct._object*, align 8
  %decoded = alloca %struct._object*, align 8
  %_py_decref_tmp253 = alloca %struct._object*, align 8
  %_py_decref_tmp270 = alloca %struct._object*, align 8
  %_py_xdecref_tmp316 = alloca %struct._object*, align 8
  %_py_decref_tmp321 = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 0, i32* %whence, align 4
  %0 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.textio, %struct.textio* %0, i32 0, i32 1
  %1 = load i32, i32* %ok, align 4
  %cmp1 = icmp sle i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %2 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %detached = getelementptr inbounds %struct.textio, %struct.textio* %2, i32 0, i32 2
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %entry
  %6 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i32 0, i32 0), %struct._object** %cookieObj, i32* %whence)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  br label %do.body

do.body:                                          ; preds = %if.end.6
  %7 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %8 = bitcast %struct.textio* %7 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp7 = icmp eq %struct._typeobject* %9, @PyTextIOWrapper_Type
  br i1 %cmp7, label %if.then.8, label %if.else.32

if.then.8:                                        ; preds = %do.body
  %10 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %raw = getelementptr inbounds %struct.textio, %struct.textio* %10, i32 0, i32 28
  %11 = load %struct._object*, %struct._object** %raw, align 8
  %cmp9 = icmp ne %struct._object* %11, null
  br i1 %cmp9, label %if.then.10, label %if.else.13

if.then.10:                                       ; preds = %if.then.8
  %12 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %raw11 = getelementptr inbounds %struct.textio, %struct.textio* %12, i32 0, i32 28
  %13 = load %struct._object*, %struct._object** %raw11, align 8
  %call12 = call i32 @_PyFileIO_closed(%struct._object* %13)
  store i32 %call12, i32* %r, align 4
  br label %if.end.28

if.else.13:                                       ; preds = %if.then.8
  %14 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %call14 = call %struct._object* @textiowrapper_closed_get(%struct.textio* %14, i8* null)
  store %struct._object* %call14, %struct._object** %_res, align 8
  %15 = load %struct._object*, %struct._object** %_res, align 8
  %cmp15 = icmp eq %struct._object* %15, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.else.13
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %if.else.13
  %16 = load %struct._object*, %struct._object** %_res, align 8
  %call18 = call i32 @PyObject_IsTrue(%struct._object* %16)
  store i32 %call18, i32* %r, align 4
  br label %do.body.19

do.body.19:                                       ; preds = %if.end.17
  %17 = load %struct._object*, %struct._object** %_res, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp20 = icmp ne i64 %dec, 0
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body.19
  br label %if.end.24

if.else.22:                                       ; preds = %do.body.19
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.22, %if.then.21
  br label %do.end

do.end:                                           ; preds = %if.end.24
  %24 = load i32, i32* %r, align 4
  %cmp25 = icmp slt i32 %24, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.27:                                        ; preds = %do.end
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.10
  %25 = load i32, i32* %r, align 4
  %cmp29 = icmp sgt i32 %25, 0
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.28
  %26 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %if.end.28
  br label %if.end.37

if.else.32:                                       ; preds = %do.body
  %27 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %28 = bitcast %struct.textio* %27 to %struct._object*
  %call33 = call %struct._object* @_PyIOBase_check_closed(%struct._object* %28, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0))
  %cmp34 = icmp eq %struct._object* %call33, null
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.else.32
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.36:                                        ; preds = %if.else.32
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.31
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %29 = load %struct._object*, %struct._object** %cookieObj, align 8
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt39, align 8
  %inc = add i64 %30, 1
  store i64 %inc, i64* %ob_refcnt39, align 8
  %31 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %seekable = getelementptr inbounds %struct.textio, %struct.textio* %31, i32 0, i32 16
  %32 = load i8, i8* %seekable, align 1
  %tobool40 = icmp ne i8 %32, 0
  br i1 %tobool40, label %if.end.43, label %if.then.41

if.then.41:                                       ; preds = %do.end.38
  %call42 = call %struct._object* @_unsupported(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.68, i32 0, i32 0))
  br label %fail

if.end.43:                                        ; preds = %do.end.38
  %33 = load i32, i32* %whence, align 4
  %cmp44 = icmp eq i32 %33, 1
  br i1 %cmp44, label %if.then.45, label %if.else.69

if.then.45:                                       ; preds = %if.end.43
  %34 = load %struct._object*, %struct._object** %cookieObj, align 8
  %35 = load %struct._object*, %struct._object** @_PyIO_zero, align 8
  %call46 = call i32 @PyObject_RichCompareBool(%struct._object* %34, %struct._object* %35, i32 2)
  store i32 %call46, i32* %cmp, align 4
  %36 = load i32, i32* %cmp, align 4
  %cmp47 = icmp slt i32 %36, 0
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.then.45
  br label %fail

if.end.49:                                        ; preds = %if.then.45
  %37 = load i32, i32* %cmp, align 4
  %cmp50 = icmp eq i32 %37, 0
  br i1 %cmp50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.end.49
  %call52 = call %struct._object* @_unsupported(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.69, i32 0, i32 0))
  br label %fail

if.end.53:                                        ; preds = %if.end.49
  br label %do.body.54

do.body.54:                                       ; preds = %if.end.53
  %38 = load %struct._object*, %struct._object** %cookieObj, align 8
  store %struct._object* %38, %struct._object** %_py_decref_tmp55, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  %ob_refcnt56 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt56, align 8
  %dec57 = add i64 %40, -1
  store i64 %dec57, i64* %ob_refcnt56, align 8
  %cmp58 = icmp ne i64 %dec57, 0
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %do.body.54
  br label %if.end.63

if.else.60:                                       ; preds = %do.body.54
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8
  %tp_dealloc62 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc62, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  call void %43(%struct._object* %44)
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.60, %if.then.59
  br label %do.end.64

do.end.64:                                        ; preds = %if.end.63
  %45 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %46 = bitcast %struct.textio* %45 to %struct._object*
  %call65 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %46, %struct._Py_Identifier* @PyId_tell, i8* null)
  store %struct._object* %call65, %struct._object** %cookieObj, align 8
  %47 = load %struct._object*, %struct._object** %cookieObj, align 8
  %cmp66 = icmp eq %struct._object* %47, null
  br i1 %cmp66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %do.end.64
  br label %fail

if.end.68:                                        ; preds = %do.end.64
  br label %if.end.154

if.else.69:                                       ; preds = %if.end.43
  %48 = load i32, i32* %whence, align 4
  %cmp70 = icmp eq i32 %48, 2
  br i1 %cmp70, label %if.then.71, label %if.else.148

if.then.71:                                       ; preds = %if.else.69
  %49 = load %struct._object*, %struct._object** %cookieObj, align 8
  %50 = load %struct._object*, %struct._object** @_PyIO_zero, align 8
  %call72 = call i32 @PyObject_RichCompareBool(%struct._object* %49, %struct._object* %50, i32 2)
  store i32 %call72, i32* %cmp, align 4
  %51 = load i32, i32* %cmp, align 4
  %cmp73 = icmp slt i32 %51, 0
  br i1 %cmp73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.then.71
  br label %fail

if.end.75:                                        ; preds = %if.then.71
  %52 = load i32, i32* %cmp, align 4
  %cmp76 = icmp eq i32 %52, 0
  br i1 %cmp76, label %if.then.77, label %if.end.79

if.then.77:                                       ; preds = %if.end.75
  %call78 = call %struct._object* @_unsupported(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.70, i32 0, i32 0))
  br label %fail

if.end.79:                                        ; preds = %if.end.75
  %53 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %54 = bitcast %struct.textio* %53 to %struct._object*
  %call80 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %54, %struct._Py_Identifier* @PyId_flush, i8* null)
  store %struct._object* %call80, %struct._object** %res, align 8
  %55 = load %struct._object*, %struct._object** %res, align 8
  %cmp81 = icmp eq %struct._object* %55, null
  br i1 %cmp81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.79
  br label %fail

if.end.83:                                        ; preds = %if.end.79
  br label %do.body.84

do.body.84:                                       ; preds = %if.end.83
  %56 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %56, %struct._object** %_py_decref_tmp85, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_refcnt86 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 0
  %58 = load i64, i64* %ob_refcnt86, align 8
  %dec87 = add i64 %58, -1
  store i64 %dec87, i64* %ob_refcnt86, align 8
  %cmp88 = icmp ne i64 %dec87, 0
  br i1 %cmp88, label %if.then.89, label %if.else.90

if.then.89:                                       ; preds = %do.body.84
  br label %if.end.93

if.else.90:                                       ; preds = %do.body.84
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_type91 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 1
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type91, align 8
  %tp_dealloc92 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i32 0, i32 4
  %61 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc92, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  call void %61(%struct._object* %62)
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.90, %if.then.89
  br label %do.end.94

do.end.94:                                        ; preds = %if.end.93
  %63 = load %struct.textio*, %struct.textio** %self.addr, align 8
  call void @textiowrapper_set_decoded_chars(%struct.textio* %63, %struct._object* null)
  br label %do.body.95

do.body.95:                                       ; preds = %do.end.94
  %64 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %snapshot = getelementptr inbounds %struct.textio, %struct.textio* %64, i32 0, i32 26
  %65 = load %struct._object*, %struct._object** %snapshot, align 8
  store %struct._object* %65, %struct._object** %_py_tmp, align 8
  %66 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp96 = icmp ne %struct._object* %66, null
  br i1 %cmp96, label %if.then.97, label %if.end.110

if.then.97:                                       ; preds = %do.body.95
  %67 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %snapshot98 = getelementptr inbounds %struct.textio, %struct.textio* %67, i32 0, i32 26
  store %struct._object* null, %struct._object** %snapshot98, align 8
  br label %do.body.99

do.body.99:                                       ; preds = %if.then.97
  %68 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %68, %struct._object** %_py_decref_tmp100, align 8
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp100, align 8
  %ob_refcnt101 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 0
  %70 = load i64, i64* %ob_refcnt101, align 8
  %dec102 = add i64 %70, -1
  store i64 %dec102, i64* %ob_refcnt101, align 8
  %cmp103 = icmp ne i64 %dec102, 0
  br i1 %cmp103, label %if.then.104, label %if.else.105

if.then.104:                                      ; preds = %do.body.99
  br label %if.end.108

if.else.105:                                      ; preds = %do.body.99
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp100, align 8
  %ob_type106 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 1
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type106, align 8
  %tp_dealloc107 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %72, i32 0, i32 4
  %73 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc107, align 8
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp100, align 8
  call void %73(%struct._object* %74)
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.105, %if.then.104
  br label %do.end.109

do.end.109:                                       ; preds = %if.end.108
  br label %if.end.110

if.end.110:                                       ; preds = %do.end.109, %do.body.95
  br label %do.end.111

do.end.111:                                       ; preds = %if.end.110
  %75 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder = getelementptr inbounds %struct.textio, %struct.textio* %75, i32 0, i32 7
  %76 = load %struct._object*, %struct._object** %decoder, align 8
  %tobool112 = icmp ne %struct._object* %76, null
  br i1 %tobool112, label %if.then.113, label %if.end.130

if.then.113:                                      ; preds = %do.end.111
  %77 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder114 = getelementptr inbounds %struct.textio, %struct.textio* %77, i32 0, i32 7
  %78 = load %struct._object*, %struct._object** %decoder114, align 8
  %call115 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %78, %struct._Py_Identifier* @PyId_reset, i8* null)
  store %struct._object* %call115, %struct._object** %res, align 8
  %79 = load %struct._object*, %struct._object** %res, align 8
  %cmp116 = icmp eq %struct._object* %79, null
  br i1 %cmp116, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %if.then.113
  br label %fail

if.end.118:                                       ; preds = %if.then.113
  br label %do.body.119

do.body.119:                                      ; preds = %if.end.118
  %80 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %80, %struct._object** %_py_decref_tmp120, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp120, align 8
  %ob_refcnt121 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 0
  %82 = load i64, i64* %ob_refcnt121, align 8
  %dec122 = add i64 %82, -1
  store i64 %dec122, i64* %ob_refcnt121, align 8
  %cmp123 = icmp ne i64 %dec122, 0
  br i1 %cmp123, label %if.then.124, label %if.else.125

if.then.124:                                      ; preds = %do.body.119
  br label %if.end.128

if.else.125:                                      ; preds = %do.body.119
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp120, align 8
  %ob_type126 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 1
  %84 = load %struct._typeobject*, %struct._typeobject** %ob_type126, align 8
  %tp_dealloc127 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %84, i32 0, i32 4
  %85 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc127, align 8
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp120, align 8
  call void %85(%struct._object* %86)
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.125, %if.then.124
  br label %do.end.129

do.end.129:                                       ; preds = %if.end.128
  br label %if.end.130

if.end.130:                                       ; preds = %do.end.129, %do.end.111
  %87 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %buffer = getelementptr inbounds %struct.textio, %struct.textio* %87, i32 0, i32 4
  %88 = load %struct._object*, %struct._object** %buffer, align 8
  %call131 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %88, %struct._Py_Identifier* @PyId_seek, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i32 0, i32 0), i32 0, i32 2)
  store %struct._object* %call131, %struct._object** %res, align 8
  br label %do.body.132

do.body.132:                                      ; preds = %if.end.130
  %89 = load %struct._object*, %struct._object** %cookieObj, align 8
  store %struct._object* %89, %struct._object** %_py_xdecref_tmp, align 8
  %90 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp133 = icmp ne %struct._object* %90, null
  br i1 %cmp133, label %if.then.134, label %if.end.146

if.then.134:                                      ; preds = %do.body.132
  br label %do.body.135

do.body.135:                                      ; preds = %if.then.134
  %91 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %91, %struct._object** %_py_decref_tmp136, align 8
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp136, align 8
  %ob_refcnt137 = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 0
  %93 = load i64, i64* %ob_refcnt137, align 8
  %dec138 = add i64 %93, -1
  store i64 %dec138, i64* %ob_refcnt137, align 8
  %cmp139 = icmp ne i64 %dec138, 0
  br i1 %cmp139, label %if.then.140, label %if.else.141

if.then.140:                                      ; preds = %do.body.135
  br label %if.end.144

if.else.141:                                      ; preds = %do.body.135
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp136, align 8
  %ob_type142 = getelementptr inbounds %struct._object, %struct._object* %94, i32 0, i32 1
  %95 = load %struct._typeobject*, %struct._typeobject** %ob_type142, align 8
  %tp_dealloc143 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %95, i32 0, i32 4
  %96 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc143, align 8
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp136, align 8
  call void %96(%struct._object* %97)
  br label %if.end.144

if.end.144:                                       ; preds = %if.else.141, %if.then.140
  br label %do.end.145

do.end.145:                                       ; preds = %if.end.144
  br label %if.end.146

if.end.146:                                       ; preds = %do.end.145, %do.body.132
  br label %do.end.147

do.end.147:                                       ; preds = %if.end.146
  %98 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %98, %struct._object** %retval
  br label %return

if.else.148:                                      ; preds = %if.else.69
  %99 = load i32, i32* %whence, align 4
  %cmp149 = icmp ne i32 %99, 0
  br i1 %cmp149, label %if.then.150, label %if.end.152

if.then.150:                                      ; preds = %if.else.148
  %100 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %101 = load i32, i32* %whence, align 4
  %call151 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %100, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.72, i32 0, i32 0), i32 %101)
  br label %fail

if.end.152:                                       ; preds = %if.else.148
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.end.68
  %102 = load %struct._object*, %struct._object** %cookieObj, align 8
  %103 = load %struct._object*, %struct._object** @_PyIO_zero, align 8
  %call155 = call i32 @PyObject_RichCompareBool(%struct._object* %102, %struct._object* %103, i32 0)
  store i32 %call155, i32* %cmp, align 4
  %104 = load i32, i32* %cmp, align 4
  %cmp156 = icmp slt i32 %104, 0
  br i1 %cmp156, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %if.end.154
  br label %fail

if.end.158:                                       ; preds = %if.end.154
  %105 = load i32, i32* %cmp, align 4
  %cmp159 = icmp eq i32 %105, 1
  br i1 %cmp159, label %if.then.160, label %if.end.162

if.then.160:                                      ; preds = %if.end.158
  %106 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %107 = load %struct._object*, %struct._object** %cookieObj, align 8
  %call161 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %106, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.73, i32 0, i32 0), %struct._object* %107)
  br label %fail

if.end.162:                                       ; preds = %if.end.158
  %108 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %109 = bitcast %struct.textio* %108 to %struct._object*
  %110 = load %struct._object*, %struct._object** @_PyIO_str_flush, align 8
  %call163 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %109, %struct._object* %110, i8* null)
  store %struct._object* %call163, %struct._object** %res, align 8
  %111 = load %struct._object*, %struct._object** %res, align 8
  %cmp164 = icmp eq %struct._object* %111, null
  br i1 %cmp164, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %if.end.162
  br label %fail

if.end.166:                                       ; preds = %if.end.162
  br label %do.body.167

do.body.167:                                      ; preds = %if.end.166
  %112 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %112, %struct._object** %_py_decref_tmp168, align 8
  %113 = load %struct._object*, %struct._object** %_py_decref_tmp168, align 8
  %ob_refcnt169 = getelementptr inbounds %struct._object, %struct._object* %113, i32 0, i32 0
  %114 = load i64, i64* %ob_refcnt169, align 8
  %dec170 = add i64 %114, -1
  store i64 %dec170, i64* %ob_refcnt169, align 8
  %cmp171 = icmp ne i64 %dec170, 0
  br i1 %cmp171, label %if.then.172, label %if.else.173

if.then.172:                                      ; preds = %do.body.167
  br label %if.end.176

if.else.173:                                      ; preds = %do.body.167
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp168, align 8
  %ob_type174 = getelementptr inbounds %struct._object, %struct._object* %115, i32 0, i32 1
  %116 = load %struct._typeobject*, %struct._typeobject** %ob_type174, align 8
  %tp_dealloc175 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %116, i32 0, i32 4
  %117 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc175, align 8
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp168, align 8
  call void %117(%struct._object* %118)
  br label %if.end.176

if.end.176:                                       ; preds = %if.else.173, %if.then.172
  br label %do.end.177

do.end.177:                                       ; preds = %if.end.176
  %119 = load %struct._object*, %struct._object** %cookieObj, align 8
  %call178 = call i32 @textiowrapper_parse_cookie(%struct.cookie_type* %cookie, %struct._object* %119)
  %cmp179 = icmp slt i32 %call178, 0
  br i1 %cmp179, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %do.end.177
  br label %fail

if.end.181:                                       ; preds = %do.end.177
  %start_pos = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %cookie, i32 0, i32 0
  %120 = load i64, i64* %start_pos, align 8
  %call182 = call %struct._object* @PyLong_FromSsize_t(i64 %120)
  store %struct._object* %call182, %struct._object** %posobj, align 8
  %121 = load %struct._object*, %struct._object** %posobj, align 8
  %cmp183 = icmp eq %struct._object* %121, null
  br i1 %cmp183, label %if.then.184, label %if.end.185

if.then.184:                                      ; preds = %if.end.181
  br label %fail

if.end.185:                                       ; preds = %if.end.181
  %122 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %buffer186 = getelementptr inbounds %struct.textio, %struct.textio* %122, i32 0, i32 4
  %123 = load %struct._object*, %struct._object** %buffer186, align 8
  %124 = load %struct._object*, %struct._object** @_PyIO_str_seek, align 8
  %125 = load %struct._object*, %struct._object** %posobj, align 8
  %call187 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %123, %struct._object* %124, %struct._object* %125, i8* null)
  store %struct._object* %call187, %struct._object** %res, align 8
  br label %do.body.188

do.body.188:                                      ; preds = %if.end.185
  %126 = load %struct._object*, %struct._object** %posobj, align 8
  store %struct._object* %126, %struct._object** %_py_decref_tmp189, align 8
  %127 = load %struct._object*, %struct._object** %_py_decref_tmp189, align 8
  %ob_refcnt190 = getelementptr inbounds %struct._object, %struct._object* %127, i32 0, i32 0
  %128 = load i64, i64* %ob_refcnt190, align 8
  %dec191 = add i64 %128, -1
  store i64 %dec191, i64* %ob_refcnt190, align 8
  %cmp192 = icmp ne i64 %dec191, 0
  br i1 %cmp192, label %if.then.193, label %if.else.194

if.then.193:                                      ; preds = %do.body.188
  br label %if.end.197

if.else.194:                                      ; preds = %do.body.188
  %129 = load %struct._object*, %struct._object** %_py_decref_tmp189, align 8
  %ob_type195 = getelementptr inbounds %struct._object, %struct._object* %129, i32 0, i32 1
  %130 = load %struct._typeobject*, %struct._typeobject** %ob_type195, align 8
  %tp_dealloc196 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %130, i32 0, i32 4
  %131 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc196, align 8
  %132 = load %struct._object*, %struct._object** %_py_decref_tmp189, align 8
  call void %131(%struct._object* %132)
  br label %if.end.197

if.end.197:                                       ; preds = %if.else.194, %if.then.193
  br label %do.end.198

do.end.198:                                       ; preds = %if.end.197
  %133 = load %struct._object*, %struct._object** %res, align 8
  %cmp199 = icmp eq %struct._object* %133, null
  br i1 %cmp199, label %if.then.200, label %if.end.201

if.then.200:                                      ; preds = %do.end.198
  br label %fail

if.end.201:                                       ; preds = %do.end.198
  br label %do.body.202

do.body.202:                                      ; preds = %if.end.201
  %134 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %134, %struct._object** %_py_decref_tmp203, align 8
  %135 = load %struct._object*, %struct._object** %_py_decref_tmp203, align 8
  %ob_refcnt204 = getelementptr inbounds %struct._object, %struct._object* %135, i32 0, i32 0
  %136 = load i64, i64* %ob_refcnt204, align 8
  %dec205 = add i64 %136, -1
  store i64 %dec205, i64* %ob_refcnt204, align 8
  %cmp206 = icmp ne i64 %dec205, 0
  br i1 %cmp206, label %if.then.207, label %if.else.208

if.then.207:                                      ; preds = %do.body.202
  br label %if.end.211

if.else.208:                                      ; preds = %do.body.202
  %137 = load %struct._object*, %struct._object** %_py_decref_tmp203, align 8
  %ob_type209 = getelementptr inbounds %struct._object, %struct._object* %137, i32 0, i32 1
  %138 = load %struct._typeobject*, %struct._typeobject** %ob_type209, align 8
  %tp_dealloc210 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %138, i32 0, i32 4
  %139 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc210, align 8
  %140 = load %struct._object*, %struct._object** %_py_decref_tmp203, align 8
  call void %139(%struct._object* %140)
  br label %if.end.211

if.end.211:                                       ; preds = %if.else.208, %if.then.207
  br label %do.end.212

do.end.212:                                       ; preds = %if.end.211
  %141 = load %struct.textio*, %struct.textio** %self.addr, align 8
  call void @textiowrapper_set_decoded_chars(%struct.textio* %141, %struct._object* null)
  br label %do.body.213

do.body.213:                                      ; preds = %do.end.212
  %142 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %snapshot215 = getelementptr inbounds %struct.textio, %struct.textio* %142, i32 0, i32 26
  %143 = load %struct._object*, %struct._object** %snapshot215, align 8
  store %struct._object* %143, %struct._object** %_py_tmp214, align 8
  %144 = load %struct._object*, %struct._object** %_py_tmp214, align 8
  %cmp216 = icmp ne %struct._object* %144, null
  br i1 %cmp216, label %if.then.217, label %if.end.230

if.then.217:                                      ; preds = %do.body.213
  %145 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %snapshot218 = getelementptr inbounds %struct.textio, %struct.textio* %145, i32 0, i32 26
  store %struct._object* null, %struct._object** %snapshot218, align 8
  br label %do.body.219

do.body.219:                                      ; preds = %if.then.217
  %146 = load %struct._object*, %struct._object** %_py_tmp214, align 8
  store %struct._object* %146, %struct._object** %_py_decref_tmp220, align 8
  %147 = load %struct._object*, %struct._object** %_py_decref_tmp220, align 8
  %ob_refcnt221 = getelementptr inbounds %struct._object, %struct._object* %147, i32 0, i32 0
  %148 = load i64, i64* %ob_refcnt221, align 8
  %dec222 = add i64 %148, -1
  store i64 %dec222, i64* %ob_refcnt221, align 8
  %cmp223 = icmp ne i64 %dec222, 0
  br i1 %cmp223, label %if.then.224, label %if.else.225

if.then.224:                                      ; preds = %do.body.219
  br label %if.end.228

if.else.225:                                      ; preds = %do.body.219
  %149 = load %struct._object*, %struct._object** %_py_decref_tmp220, align 8
  %ob_type226 = getelementptr inbounds %struct._object, %struct._object* %149, i32 0, i32 1
  %150 = load %struct._typeobject*, %struct._typeobject** %ob_type226, align 8
  %tp_dealloc227 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %150, i32 0, i32 4
  %151 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc227, align 8
  %152 = load %struct._object*, %struct._object** %_py_decref_tmp220, align 8
  call void %151(%struct._object* %152)
  br label %if.end.228

if.end.228:                                       ; preds = %if.else.225, %if.then.224
  br label %do.end.229

do.end.229:                                       ; preds = %if.end.228
  br label %if.end.230

if.end.230:                                       ; preds = %do.end.229, %do.body.213
  br label %do.end.231

do.end.231:                                       ; preds = %if.end.230
  %153 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder232 = getelementptr inbounds %struct.textio, %struct.textio* %153, i32 0, i32 7
  %154 = load %struct._object*, %struct._object** %decoder232, align 8
  %tobool233 = icmp ne %struct._object* %154, null
  br i1 %tobool233, label %if.then.234, label %if.end.239

if.then.234:                                      ; preds = %do.end.231
  %155 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %call235 = call i32 @_textiowrapper_decoder_setstate(%struct.textio* %155, %struct.cookie_type* %cookie)
  %cmp236 = icmp slt i32 %call235, 0
  br i1 %cmp236, label %if.then.237, label %if.end.238

if.then.237:                                      ; preds = %if.then.234
  br label %fail

if.end.238:                                       ; preds = %if.then.234
  br label %if.end.239

if.end.239:                                       ; preds = %if.end.238, %do.end.231
  %chars_to_skip = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %cookie, i32 0, i32 3
  %156 = load i32, i32* %chars_to_skip, align 4
  %tobool240 = icmp ne i32 %156, 0
  br i1 %tobool240, label %if.then.241, label %if.else.297

if.then.241:                                      ; preds = %if.end.239
  %157 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %buffer242 = getelementptr inbounds %struct.textio, %struct.textio* %157, i32 0, i32 4
  %158 = load %struct._object*, %struct._object** %buffer242, align 8
  %bytes_to_feed = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %cookie, i32 0, i32 2
  %159 = load i32, i32* %bytes_to_feed, align 4
  %call243 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %158, %struct._Py_Identifier* @PyId_read, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.74, i32 0, i32 0), i32 %159)
  store %struct._object* %call243, %struct._object** %input_chunk, align 8
  %160 = load %struct._object*, %struct._object** %input_chunk, align 8
  %cmp244 = icmp eq %struct._object* %160, null
  br i1 %cmp244, label %if.then.245, label %if.end.246

if.then.245:                                      ; preds = %if.then.241
  br label %fail

if.end.246:                                       ; preds = %if.then.241
  %161 = load %struct._object*, %struct._object** %input_chunk, align 8
  %ob_type247 = getelementptr inbounds %struct._object, %struct._object* %161, i32 0, i32 1
  %162 = load %struct._typeobject*, %struct._typeobject** %ob_type247, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %162, i32 0, i32 19
  %163 = load i64, i64* %tp_flags, align 8
  %and = and i64 %163, 134217728
  %cmp248 = icmp ne i64 %and, 0
  br i1 %cmp248, label %if.end.263, label %if.then.249

if.then.249:                                      ; preds = %if.end.246
  %164 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %165 = load %struct._object*, %struct._object** %input_chunk, align 8
  %ob_type250 = getelementptr inbounds %struct._object, %struct._object* %165, i32 0, i32 1
  %166 = load %struct._typeobject*, %struct._typeobject** %ob_type250, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %166, i32 0, i32 1
  %167 = load i8*, i8** %tp_name, align 8
  %call251 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %164, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.75, i32 0, i32 0), i8* %167)
  br label %do.body.252

do.body.252:                                      ; preds = %if.then.249
  %168 = load %struct._object*, %struct._object** %input_chunk, align 8
  store %struct._object* %168, %struct._object** %_py_decref_tmp253, align 8
  %169 = load %struct._object*, %struct._object** %_py_decref_tmp253, align 8
  %ob_refcnt254 = getelementptr inbounds %struct._object, %struct._object* %169, i32 0, i32 0
  %170 = load i64, i64* %ob_refcnt254, align 8
  %dec255 = add i64 %170, -1
  store i64 %dec255, i64* %ob_refcnt254, align 8
  %cmp256 = icmp ne i64 %dec255, 0
  br i1 %cmp256, label %if.then.257, label %if.else.258

if.then.257:                                      ; preds = %do.body.252
  br label %if.end.261

if.else.258:                                      ; preds = %do.body.252
  %171 = load %struct._object*, %struct._object** %_py_decref_tmp253, align 8
  %ob_type259 = getelementptr inbounds %struct._object, %struct._object* %171, i32 0, i32 1
  %172 = load %struct._typeobject*, %struct._typeobject** %ob_type259, align 8
  %tp_dealloc260 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %172, i32 0, i32 4
  %173 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc260, align 8
  %174 = load %struct._object*, %struct._object** %_py_decref_tmp253, align 8
  call void %173(%struct._object* %174)
  br label %if.end.261

if.end.261:                                       ; preds = %if.else.258, %if.then.257
  br label %do.end.262

do.end.262:                                       ; preds = %if.end.261
  br label %fail

if.end.263:                                       ; preds = %if.end.246
  %dec_flags = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %cookie, i32 0, i32 1
  %175 = load i32, i32* %dec_flags, align 4
  %176 = load %struct._object*, %struct._object** %input_chunk, align 8
  %call264 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.76, i32 0, i32 0), i32 %175, %struct._object* %176)
  %177 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %snapshot265 = getelementptr inbounds %struct.textio, %struct.textio* %177, i32 0, i32 26
  store %struct._object* %call264, %struct._object** %snapshot265, align 8
  %178 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %snapshot266 = getelementptr inbounds %struct.textio, %struct.textio* %178, i32 0, i32 26
  %179 = load %struct._object*, %struct._object** %snapshot266, align 8
  %cmp267 = icmp eq %struct._object* %179, null
  br i1 %cmp267, label %if.then.268, label %if.end.280

if.then.268:                                      ; preds = %if.end.263
  br label %do.body.269

do.body.269:                                      ; preds = %if.then.268
  %180 = load %struct._object*, %struct._object** %input_chunk, align 8
  store %struct._object* %180, %struct._object** %_py_decref_tmp270, align 8
  %181 = load %struct._object*, %struct._object** %_py_decref_tmp270, align 8
  %ob_refcnt271 = getelementptr inbounds %struct._object, %struct._object* %181, i32 0, i32 0
  %182 = load i64, i64* %ob_refcnt271, align 8
  %dec272 = add i64 %182, -1
  store i64 %dec272, i64* %ob_refcnt271, align 8
  %cmp273 = icmp ne i64 %dec272, 0
  br i1 %cmp273, label %if.then.274, label %if.else.275

if.then.274:                                      ; preds = %do.body.269
  br label %if.end.278

if.else.275:                                      ; preds = %do.body.269
  %183 = load %struct._object*, %struct._object** %_py_decref_tmp270, align 8
  %ob_type276 = getelementptr inbounds %struct._object, %struct._object* %183, i32 0, i32 1
  %184 = load %struct._typeobject*, %struct._typeobject** %ob_type276, align 8
  %tp_dealloc277 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %184, i32 0, i32 4
  %185 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc277, align 8
  %186 = load %struct._object*, %struct._object** %_py_decref_tmp270, align 8
  call void %185(%struct._object* %186)
  br label %if.end.278

if.end.278:                                       ; preds = %if.else.275, %if.then.274
  br label %do.end.279

do.end.279:                                       ; preds = %if.end.278
  br label %fail

if.end.280:                                       ; preds = %if.end.263
  %187 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder281 = getelementptr inbounds %struct.textio, %struct.textio* %187, i32 0, i32 7
  %188 = load %struct._object*, %struct._object** %decoder281, align 8
  %189 = load %struct._object*, %struct._object** %input_chunk, align 8
  %need_eof = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %cookie, i32 0, i32 4
  %190 = load i8, i8* %need_eof, align 1
  %conv = sext i8 %190 to i32
  %call282 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %188, %struct._Py_Identifier* @PyId_decode, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i32 0, i32 0), %struct._object* %189, i32 %conv)
  store %struct._object* %call282, %struct._object** %decoded, align 8
  %191 = load %struct._object*, %struct._object** %decoded, align 8
  %call283 = call i32 @check_decoded(%struct._object* %191)
  %cmp284 = icmp slt i32 %call283, 0
  br i1 %cmp284, label %if.then.286, label %if.end.287

if.then.286:                                      ; preds = %if.end.280
  br label %fail

if.end.287:                                       ; preds = %if.end.280
  %192 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %193 = load %struct._object*, %struct._object** %decoded, align 8
  call void @textiowrapper_set_decoded_chars(%struct.textio* %192, %struct._object* %193)
  %194 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoded_chars = getelementptr inbounds %struct.textio, %struct.textio* %194, i32 0, i32 22
  %195 = load %struct._object*, %struct._object** %decoded_chars, align 8
  %call288 = call i64 @PyUnicode_GetLength(%struct._object* %195)
  %chars_to_skip289 = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %cookie, i32 0, i32 3
  %196 = load i32, i32* %chars_to_skip289, align 4
  %conv290 = sext i32 %196 to i64
  %cmp291 = icmp slt i64 %call288, %conv290
  br i1 %cmp291, label %if.then.293, label %if.end.294

if.then.293:                                      ; preds = %if.end.287
  %197 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  call void @PyErr_SetString(%struct._object* %197, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.78, i32 0, i32 0))
  br label %fail

if.end.294:                                       ; preds = %if.end.287
  %chars_to_skip295 = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %cookie, i32 0, i32 3
  %198 = load i32, i32* %chars_to_skip295, align 4
  %conv296 = sext i32 %198 to i64
  %199 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoded_chars_used = getelementptr inbounds %struct.textio, %struct.textio* %199, i32 0, i32 23
  store i64 %conv296, i64* %decoded_chars_used, align 8
  br label %if.end.306

if.else.297:                                      ; preds = %if.end.239
  %dec_flags298 = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %cookie, i32 0, i32 1
  %200 = load i32, i32* %dec_flags298, align 4
  %call299 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), i32 %200, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0))
  %201 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %snapshot300 = getelementptr inbounds %struct.textio, %struct.textio* %201, i32 0, i32 26
  store %struct._object* %call299, %struct._object** %snapshot300, align 8
  %202 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %snapshot301 = getelementptr inbounds %struct.textio, %struct.textio* %202, i32 0, i32 26
  %203 = load %struct._object*, %struct._object** %snapshot301, align 8
  %cmp302 = icmp eq %struct._object* %203, null
  br i1 %cmp302, label %if.then.304, label %if.end.305

if.then.304:                                      ; preds = %if.else.297
  br label %fail

if.end.305:                                       ; preds = %if.else.297
  br label %if.end.306

if.end.306:                                       ; preds = %if.end.305, %if.end.294
  %204 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoder = getelementptr inbounds %struct.textio, %struct.textio* %204, i32 0, i32 6
  %205 = load %struct._object*, %struct._object** %encoder, align 8
  %tobool307 = icmp ne %struct._object* %205, null
  br i1 %tobool307, label %if.then.308, label %if.end.314

if.then.308:                                      ; preds = %if.end.306
  %206 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %call309 = call i32 @_textiowrapper_encoder_setstate(%struct.textio* %206, %struct.cookie_type* %cookie)
  %cmp310 = icmp slt i32 %call309, 0
  br i1 %cmp310, label %if.then.312, label %if.end.313

if.then.312:                                      ; preds = %if.then.308
  br label %fail

if.end.313:                                       ; preds = %if.then.308
  br label %if.end.314

if.end.314:                                       ; preds = %if.end.313, %if.end.306
  %207 = load %struct._object*, %struct._object** %cookieObj, align 8
  store %struct._object* %207, %struct._object** %retval
  br label %return

fail:                                             ; preds = %if.then.312, %if.then.304, %if.then.293, %if.then.286, %do.end.279, %do.end.262, %if.then.245, %if.then.237, %if.then.200, %if.then.184, %if.then.180, %if.then.165, %if.then.160, %if.then.157, %if.then.150, %if.then.117, %if.then.82, %if.then.77, %if.then.74, %if.then.67, %if.then.51, %if.then.48, %if.then.41
  br label %do.body.315

do.body.315:                                      ; preds = %fail
  %208 = load %struct._object*, %struct._object** %cookieObj, align 8
  store %struct._object* %208, %struct._object** %_py_xdecref_tmp316, align 8
  %209 = load %struct._object*, %struct._object** %_py_xdecref_tmp316, align 8
  %cmp317 = icmp ne %struct._object* %209, null
  br i1 %cmp317, label %if.then.319, label %if.end.332

if.then.319:                                      ; preds = %do.body.315
  br label %do.body.320

do.body.320:                                      ; preds = %if.then.319
  %210 = load %struct._object*, %struct._object** %_py_xdecref_tmp316, align 8
  store %struct._object* %210, %struct._object** %_py_decref_tmp321, align 8
  %211 = load %struct._object*, %struct._object** %_py_decref_tmp321, align 8
  %ob_refcnt322 = getelementptr inbounds %struct._object, %struct._object* %211, i32 0, i32 0
  %212 = load i64, i64* %ob_refcnt322, align 8
  %dec323 = add i64 %212, -1
  store i64 %dec323, i64* %ob_refcnt322, align 8
  %cmp324 = icmp ne i64 %dec323, 0
  br i1 %cmp324, label %if.then.326, label %if.else.327

if.then.326:                                      ; preds = %do.body.320
  br label %if.end.330

if.else.327:                                      ; preds = %do.body.320
  %213 = load %struct._object*, %struct._object** %_py_decref_tmp321, align 8
  %ob_type328 = getelementptr inbounds %struct._object, %struct._object* %213, i32 0, i32 1
  %214 = load %struct._typeobject*, %struct._typeobject** %ob_type328, align 8
  %tp_dealloc329 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %214, i32 0, i32 4
  %215 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc329, align 8
  %216 = load %struct._object*, %struct._object** %_py_decref_tmp321, align 8
  call void %215(%struct._object* %216)
  br label %if.end.330

if.end.330:                                       ; preds = %if.else.327, %if.then.326
  br label %do.end.331

do.end.331:                                       ; preds = %if.end.330
  br label %if.end.332

if.end.332:                                       ; preds = %do.end.331, %do.body.315
  br label %do.end.333

do.end.333:                                       ; preds = %if.end.332
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.333, %if.end.314, %do.end.147, %if.then.35, %if.then.30, %if.then.26, %if.then.16, %if.then.5, %if.end
  %217 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %217
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @textiowrapper_tell(%struct.textio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.textio*, align 8
  %args.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %posobj = alloca %struct._object*, align 8
  %cookie = alloca %struct.cookie_type, align 8
  %next_input = alloca %struct._object*, align 8
  %chars_to_skip = alloca i64, align 8
  %chars_decoded = alloca i64, align 8
  %skip_bytes = alloca i64, align 8
  %skip_back = alloca i64, align 8
  %saved_state = alloca %struct._object*, align 8
  %input = alloca i8*, align 8
  %input_end = alloca i8*, align 8
  %dec_buffer = alloca i8*, align 8
  %dec_buffer_len = alloca i64, align 8
  %dec_flags = alloca i32, align 4
  %r = alloca i32, align 4
  %_res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp50 = alloca %struct._object*, align 8
  %_py_decref_tmp70 = alloca %struct._object*, align 8
  %_decoded = alloca %struct._object*, align 8
  %_py_decref_tmp118 = alloca %struct._object*, align 8
  %_state = alloca %struct._object*, align 8
  %_py_decref_tmp144 = alloca %struct._object*, align 8
  %_py_decref_tmp157 = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %_decoded205 = alloca %struct._object*, align 8
  %_py_decref_tmp215 = alloca %struct._object*, align 8
  %_state230 = alloca %struct._object*, align 8
  %_py_decref_tmp241 = alloca %struct._object*, align 8
  %_py_decref_tmp254 = alloca %struct._object*, align 8
  %decoded = alloca %struct._object*, align 8
  %_py_decref_tmp297 = alloca %struct._object*, align 8
  %_py_decref_tmp316 = alloca %struct._object*, align 8
  %_py_decref_tmp332 = alloca %struct._object*, align 8
  %type = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %traceback = alloca %struct._object*, align 8
  %_py_decref_tmp351 = alloca %struct._object*, align 8
  %_py_decref_tmp367 = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %posobj, align 8
  %0 = bitcast %struct.cookie_type* %cookie to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  store %struct._object* null, %struct._object** %saved_state, align 8
  %1 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.textio, %struct.textio* %1, i32 0, i32 1
  %2 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %3 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %detached = getelementptr inbounds %struct.textio, %struct.textio* %3, i32 0, i32 2
  %4 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end.2
  %7 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %8 = bitcast %struct.textio* %7 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp3 = icmp eq %struct._typeobject* %9, @PyTextIOWrapper_Type
  br i1 %cmp3, label %if.then.4, label %if.else.27

if.then.4:                                        ; preds = %do.body
  %10 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %raw = getelementptr inbounds %struct.textio, %struct.textio* %10, i32 0, i32 28
  %11 = load %struct._object*, %struct._object** %raw, align 8
  %cmp5 = icmp ne %struct._object* %11, null
  br i1 %cmp5, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.then.4
  %12 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %raw7 = getelementptr inbounds %struct.textio, %struct.textio* %12, i32 0, i32 28
  %13 = load %struct._object*, %struct._object** %raw7, align 8
  %call = call i32 @_PyFileIO_closed(%struct._object* %13)
  store i32 %call, i32* %r, align 4
  br label %if.end.23

if.else.8:                                        ; preds = %if.then.4
  %14 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %call9 = call %struct._object* @textiowrapper_closed_get(%struct.textio* %14, i8* null)
  store %struct._object* %call9, %struct._object** %_res, align 8
  %15 = load %struct._object*, %struct._object** %_res, align 8
  %cmp10 = icmp eq %struct._object* %15, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.else.8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.else.8
  %16 = load %struct._object*, %struct._object** %_res, align 8
  %call13 = call i32 @PyObject_IsTrue(%struct._object* %16)
  store i32 %call13, i32* %r, align 4
  br label %do.body.14

do.body.14:                                       ; preds = %if.end.12
  %17 = load %struct._object*, %struct._object** %_res, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.14
  br label %if.end.19

if.else.17:                                       ; preds = %do.body.14
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.17, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.19
  %24 = load i32, i32* %r, align 4
  %cmp20 = icmp slt i32 %24, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %do.end
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.6
  %25 = load i32, i32* %r, align 4
  %cmp24 = icmp sgt i32 %25, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.23
  %26 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.26:                                        ; preds = %if.end.23
  br label %if.end.32

if.else.27:                                       ; preds = %do.body
  %27 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %28 = bitcast %struct.textio* %27 to %struct._object*
  %call28 = call %struct._object* @_PyIOBase_check_closed(%struct._object* %28, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0))
  %cmp29 = icmp eq %struct._object* %call28, null
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.else.27
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %if.else.27
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.26
  br label %do.end.33

do.end.33:                                        ; preds = %if.end.32
  %29 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %seekable = getelementptr inbounds %struct.textio, %struct.textio* %29, i32 0, i32 16
  %30 = load i8, i8* %seekable, align 1
  %tobool34 = icmp ne i8 %30, 0
  br i1 %tobool34, label %if.end.37, label %if.then.35

if.then.35:                                       ; preds = %do.end.33
  %call36 = call %struct._object* @_unsupported(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.68, i32 0, i32 0))
  br label %fail

if.end.37:                                        ; preds = %do.end.33
  %31 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %telling = getelementptr inbounds %struct.textio, %struct.textio* %31, i32 0, i32 18
  %32 = load i8, i8* %telling, align 1
  %tobool38 = icmp ne i8 %32, 0
  br i1 %tobool38, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %if.end.37
  %33 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  call void @PyErr_SetString(%struct._object* %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.81, i32 0, i32 0))
  br label %fail

if.end.40:                                        ; preds = %if.end.37
  %34 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %call41 = call i32 @_textiowrapper_writeflush(%struct.textio* %34)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.40
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.44:                                        ; preds = %if.end.40
  %35 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %36 = bitcast %struct.textio* %35 to %struct._object*
  %call45 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %36, %struct._Py_Identifier* @PyId_flush, i8* null)
  store %struct._object* %call45, %struct._object** %res, align 8
  %37 = load %struct._object*, %struct._object** %res, align 8
  %cmp46 = icmp eq %struct._object* %37, null
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.44
  br label %fail

if.end.48:                                        ; preds = %if.end.44
  br label %do.body.49

do.body.49:                                       ; preds = %if.end.48
  %38 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %38, %struct._object** %_py_decref_tmp50, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  %ob_refcnt51 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt51, align 8
  %dec52 = add i64 %40, -1
  store i64 %dec52, i64* %ob_refcnt51, align 8
  %cmp53 = icmp ne i64 %dec52, 0
  br i1 %cmp53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %do.body.49
  br label %if.end.58

if.else.55:                                       ; preds = %do.body.49
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8
  %tp_dealloc57 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc57, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  call void %43(%struct._object* %44)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.55, %if.then.54
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  %45 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %buffer = getelementptr inbounds %struct.textio, %struct.textio* %45, i32 0, i32 4
  %46 = load %struct._object*, %struct._object** %buffer, align 8
  %call60 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %46, %struct._Py_Identifier* @PyId_tell, i8* null)
  store %struct._object* %call60, %struct._object** %posobj, align 8
  %47 = load %struct._object*, %struct._object** %posobj, align 8
  %cmp61 = icmp eq %struct._object* %47, null
  br i1 %cmp61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %do.end.59
  br label %fail

if.end.63:                                        ; preds = %do.end.59
  %48 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder = getelementptr inbounds %struct.textio, %struct.textio* %48, i32 0, i32 7
  %49 = load %struct._object*, %struct._object** %decoder, align 8
  %cmp64 = icmp eq %struct._object* %49, null
  br i1 %cmp64, label %if.then.66, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.63
  %50 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %snapshot = getelementptr inbounds %struct.textio, %struct.textio* %50, i32 0, i32 26
  %51 = load %struct._object*, %struct._object** %snapshot, align 8
  %cmp65 = icmp eq %struct._object* %51, null
  br i1 %cmp65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %lor.lhs.false, %if.end.63
  %52 = load %struct._object*, %struct._object** %posobj, align 8
  store %struct._object* %52, %struct._object** %retval
  br label %return

if.end.67:                                        ; preds = %lor.lhs.false
  %53 = load %struct._object*, %struct._object** %posobj, align 8
  %call68 = call i64 @PyLong_AsLong(%struct._object* %53)
  %start_pos = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %cookie, i32 0, i32 0
  store i64 %call68, i64* %start_pos, align 8
  br label %do.body.69

do.body.69:                                       ; preds = %if.end.67
  %54 = load %struct._object*, %struct._object** %posobj, align 8
  store %struct._object* %54, %struct._object** %_py_decref_tmp70, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  %ob_refcnt71 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0
  %56 = load i64, i64* %ob_refcnt71, align 8
  %dec72 = add i64 %56, -1
  store i64 %dec72, i64* %ob_refcnt71, align 8
  %cmp73 = icmp ne i64 %dec72, 0
  br i1 %cmp73, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %do.body.69
  br label %if.end.78

if.else.75:                                       ; preds = %do.body.69
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  %ob_type76 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type76, align 8
  %tp_dealloc77 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc77, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  call void %59(%struct._object* %60)
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.75, %if.then.74
  br label %do.end.79

do.end.79:                                        ; preds = %if.end.78
  %call80 = call %struct._object* @PyErr_Occurred()
  %tobool81 = icmp ne %struct._object* %call80, null
  br i1 %tobool81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %do.end.79
  br label %fail

if.end.83:                                        ; preds = %do.end.79
  %61 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %snapshot84 = getelementptr inbounds %struct.textio, %struct.textio* %61, i32 0, i32 26
  %62 = load %struct._object*, %struct._object** %snapshot84, align 8
  %dec_flags85 = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %cookie, i32 0, i32 1
  %call86 = call i32 (%struct._object*, i8*, ...) @_PyArg_Parse_SizeT(%struct._object* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i32 0, i32 0), i32* %dec_flags85, %struct._object** %next_input)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.end.89, label %if.then.88

if.then.88:                                       ; preds = %if.end.83
  br label %fail

if.end.89:                                        ; preds = %if.end.83
  %63 = load %struct._object*, %struct._object** %next_input, align 8
  %64 = bitcast %struct._object* %63 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %64, i32 0, i32 1
  %65 = load i64, i64* %ob_size, align 8
  %start_pos90 = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %cookie, i32 0, i32 0
  %66 = load i64, i64* %start_pos90, align 8
  %sub = sub i64 %66, %65
  store i64 %sub, i64* %start_pos90, align 8
  %67 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoded_chars_used = getelementptr inbounds %struct.textio, %struct.textio* %67, i32 0, i32 23
  %68 = load i64, i64* %decoded_chars_used, align 8
  %cmp91 = icmp eq i64 %68, 0
  br i1 %cmp91, label %if.then.92, label %if.end.94

if.then.92:                                       ; preds = %if.end.89
  %call93 = call %struct._object* @textiowrapper_build_cookie(%struct.cookie_type* %cookie)
  store %struct._object* %call93, %struct._object** %retval
  br label %return

if.end.94:                                        ; preds = %if.end.89
  %69 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoded_chars_used95 = getelementptr inbounds %struct.textio, %struct.textio* %69, i32 0, i32 23
  %70 = load i64, i64* %decoded_chars_used95, align 8
  store i64 %70, i64* %chars_to_skip, align 8
  %71 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder96 = getelementptr inbounds %struct.textio, %struct.textio* %71, i32 0, i32 7
  %72 = load %struct._object*, %struct._object** %decoder96, align 8
  %73 = load %struct._object*, %struct._object** @_PyIO_str_getstate, align 8
  %call97 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %72, %struct._object* %73, i8* null)
  store %struct._object* %call97, %struct._object** %saved_state, align 8
  %74 = load %struct._object*, %struct._object** %saved_state, align 8
  %cmp98 = icmp eq %struct._object* %74, null
  br i1 %cmp98, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.end.94
  br label %fail

if.end.100:                                       ; preds = %if.end.94
  %75 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %b2cratio = getelementptr inbounds %struct.textio, %struct.textio* %75, i32 0, i32 27
  %76 = load double, double* %b2cratio, align 8
  %77 = load i64, i64* %chars_to_skip, align 8
  %conv = sitofp i64 %77 to double
  %mul = fmul double %76, %conv
  %conv101 = fptosi double %mul to i64
  store i64 %conv101, i64* %skip_bytes, align 8
  store i64 1, i64* %skip_back, align 8
  %78 = load %struct._object*, %struct._object** %next_input, align 8
  %79 = bitcast %struct._object* %78 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %79, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %input, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.179, %if.end.100
  %80 = load i64, i64* %skip_bytes, align 8
  %cmp102 = icmp sgt i64 %80, 0
  br i1 %cmp102, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %81 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %call104 = call i32 @_textiowrapper_decoder_setstate(%struct.textio* %81, %struct.cookie_type* %cookie)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %while.body
  br label %fail

if.end.108:                                       ; preds = %while.body
  br label %do.body.109

do.body.109:                                      ; preds = %if.end.108
  %82 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder110 = getelementptr inbounds %struct.textio, %struct.textio* %82, i32 0, i32 7
  %83 = load %struct._object*, %struct._object** %decoder110, align 8
  %84 = load i8*, i8** %input, align 8
  %85 = load i64, i64* %skip_bytes, align 8
  %call111 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %83, %struct._Py_Identifier* @PyId_decode, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i32 0, i32 0), i8* %84, i64 %85)
  store %struct._object* %call111, %struct._object** %_decoded, align 8
  %86 = load %struct._object*, %struct._object** %_decoded, align 8
  %call112 = call i32 @check_decoded(%struct._object* %86)
  %cmp113 = icmp slt i32 %call112, 0
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %do.body.109
  br label %fail

if.end.116:                                       ; preds = %do.body.109
  %87 = load %struct._object*, %struct._object** %_decoded, align 8
  %88 = bitcast %struct._object* %87 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %88, i32 0, i32 1
  %89 = load i64, i64* %length, align 8
  store i64 %89, i64* %chars_decoded, align 8
  br label %do.body.117

do.body.117:                                      ; preds = %if.end.116
  %90 = load %struct._object*, %struct._object** %_decoded, align 8
  store %struct._object* %90, %struct._object** %_py_decref_tmp118, align 8
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp118, align 8
  %ob_refcnt119 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 0
  %92 = load i64, i64* %ob_refcnt119, align 8
  %dec120 = add i64 %92, -1
  store i64 %dec120, i64* %ob_refcnt119, align 8
  %cmp121 = icmp ne i64 %dec120, 0
  br i1 %cmp121, label %if.then.123, label %if.else.124

if.then.123:                                      ; preds = %do.body.117
  br label %if.end.127

if.else.124:                                      ; preds = %do.body.117
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp118, align 8
  %ob_type125 = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 1
  %94 = load %struct._typeobject*, %struct._typeobject** %ob_type125, align 8
  %tp_dealloc126 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %94, i32 0, i32 4
  %95 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc126, align 8
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp118, align 8
  call void %95(%struct._object* %96)
  br label %if.end.127

if.end.127:                                       ; preds = %if.else.124, %if.then.123
  br label %do.end.128

do.end.128:                                       ; preds = %if.end.127
  br label %do.end.129

do.end.129:                                       ; preds = %do.end.128
  %97 = load i64, i64* %chars_decoded, align 8
  %98 = load i64, i64* %chars_to_skip, align 8
  %cmp130 = icmp sle i64 %97, %98
  br i1 %cmp130, label %if.then.132, label %if.else.176

if.then.132:                                      ; preds = %do.end.129
  br label %do.body.133

do.body.133:                                      ; preds = %if.then.132
  %99 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder134 = getelementptr inbounds %struct.textio, %struct.textio* %99, i32 0, i32 7
  %100 = load %struct._object*, %struct._object** %decoder134, align 8
  %101 = load %struct._object*, %struct._object** @_PyIO_str_getstate, align 8
  %call135 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %100, %struct._object* %101, i8* null)
  store %struct._object* %call135, %struct._object** %_state, align 8
  %102 = load %struct._object*, %struct._object** %_state, align 8
  %cmp136 = icmp eq %struct._object* %102, null
  br i1 %cmp136, label %if.then.138, label %if.end.139

if.then.138:                                      ; preds = %do.body.133
  br label %fail

if.end.139:                                       ; preds = %do.body.133
  %103 = load %struct._object*, %struct._object** %_state, align 8
  %call140 = call i32 (%struct._object*, i8*, ...) @_PyArg_Parse_SizeT(%struct._object* %103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0), i8** %dec_buffer, i64* %dec_buffer_len, i32* %dec_flags)
  %tobool141 = icmp ne i32 %call140, 0
  br i1 %tobool141, label %if.end.155, label %if.then.142

if.then.142:                                      ; preds = %if.end.139
  br label %do.body.143

do.body.143:                                      ; preds = %if.then.142
  %104 = load %struct._object*, %struct._object** %_state, align 8
  store %struct._object* %104, %struct._object** %_py_decref_tmp144, align 8
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp144, align 8
  %ob_refcnt145 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 0
  %106 = load i64, i64* %ob_refcnt145, align 8
  %dec146 = add i64 %106, -1
  store i64 %dec146, i64* %ob_refcnt145, align 8
  %cmp147 = icmp ne i64 %dec146, 0
  br i1 %cmp147, label %if.then.149, label %if.else.150

if.then.149:                                      ; preds = %do.body.143
  br label %if.end.153

if.else.150:                                      ; preds = %do.body.143
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp144, align 8
  %ob_type151 = getelementptr inbounds %struct._object, %struct._object* %107, i32 0, i32 1
  %108 = load %struct._typeobject*, %struct._typeobject** %ob_type151, align 8
  %tp_dealloc152 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %108, i32 0, i32 4
  %109 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc152, align 8
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp144, align 8
  call void %109(%struct._object* %110)
  br label %if.end.153

if.end.153:                                       ; preds = %if.else.150, %if.then.149
  br label %do.end.154

do.end.154:                                       ; preds = %if.end.153
  br label %fail

if.end.155:                                       ; preds = %if.end.139
  br label %do.body.156

do.body.156:                                      ; preds = %if.end.155
  %111 = load %struct._object*, %struct._object** %_state, align 8
  store %struct._object* %111, %struct._object** %_py_decref_tmp157, align 8
  %112 = load %struct._object*, %struct._object** %_py_decref_tmp157, align 8
  %ob_refcnt158 = getelementptr inbounds %struct._object, %struct._object* %112, i32 0, i32 0
  %113 = load i64, i64* %ob_refcnt158, align 8
  %dec159 = add i64 %113, -1
  store i64 %dec159, i64* %ob_refcnt158, align 8
  %cmp160 = icmp ne i64 %dec159, 0
  br i1 %cmp160, label %if.then.162, label %if.else.163

if.then.162:                                      ; preds = %do.body.156
  br label %if.end.166

if.else.163:                                      ; preds = %do.body.156
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp157, align 8
  %ob_type164 = getelementptr inbounds %struct._object, %struct._object* %114, i32 0, i32 1
  %115 = load %struct._typeobject*, %struct._typeobject** %ob_type164, align 8
  %tp_dealloc165 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %115, i32 0, i32 4
  %116 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc165, align 8
  %117 = load %struct._object*, %struct._object** %_py_decref_tmp157, align 8
  call void %116(%struct._object* %117)
  br label %if.end.166

if.end.166:                                       ; preds = %if.else.163, %if.then.162
  br label %do.end.167

do.end.167:                                       ; preds = %if.end.166
  br label %do.end.168

do.end.168:                                       ; preds = %do.end.167
  %118 = load i64, i64* %dec_buffer_len, align 8
  %cmp169 = icmp eq i64 %118, 0
  br i1 %cmp169, label %if.then.171, label %if.end.174

if.then.171:                                      ; preds = %do.end.168
  %119 = load i32, i32* %dec_flags, align 4
  %dec_flags172 = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %cookie, i32 0, i32 1
  store i32 %119, i32* %dec_flags172, align 4
  %120 = load i64, i64* %chars_decoded, align 8
  %121 = load i64, i64* %chars_to_skip, align 8
  %sub173 = sub i64 %121, %120
  store i64 %sub173, i64* %chars_to_skip, align 8
  br label %while.end

if.end.174:                                       ; preds = %do.end.168
  %122 = load i64, i64* %dec_buffer_len, align 8
  %123 = load i64, i64* %skip_bytes, align 8
  %sub175 = sub i64 %123, %122
  store i64 %sub175, i64* %skip_bytes, align 8
  store i64 1, i64* %skip_back, align 8
  br label %if.end.179

if.else.176:                                      ; preds = %do.end.129
  %124 = load i64, i64* %skip_back, align 8
  %125 = load i64, i64* %skip_bytes, align 8
  %sub177 = sub i64 %125, %124
  store i64 %sub177, i64* %skip_bytes, align 8
  %126 = load i64, i64* %skip_back, align 8
  %mul178 = mul i64 %126, 2
  store i64 %mul178, i64* %skip_back, align 8
  br label %if.end.179

if.end.179:                                       ; preds = %if.else.176, %if.end.174
  br label %while.cond

while.end:                                        ; preds = %if.then.171, %while.cond
  %127 = load i64, i64* %skip_bytes, align 8
  %cmp180 = icmp sle i64 %127, 0
  br i1 %cmp180, label %if.then.182, label %if.end.188

if.then.182:                                      ; preds = %while.end
  store i64 0, i64* %skip_bytes, align 8
  %128 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %call183 = call i32 @_textiowrapper_decoder_setstate(%struct.textio* %128, %struct.cookie_type* %cookie)
  %cmp184 = icmp slt i32 %call183, 0
  br i1 %cmp184, label %if.then.186, label %if.end.187

if.then.186:                                      ; preds = %if.then.182
  br label %fail

if.end.187:                                       ; preds = %if.then.182
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.187, %while.end
  %129 = load i64, i64* %skip_bytes, align 8
  %start_pos189 = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %cookie, i32 0, i32 0
  %130 = load i64, i64* %start_pos189, align 8
  %add = add i64 %130, %129
  store i64 %add, i64* %start_pos189, align 8
  %131 = load i64, i64* %chars_to_skip, align 8
  %conv190 = trunc i64 %131 to i32
  %chars_to_skip191 = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %cookie, i32 0, i32 3
  store i32 %conv190, i32* %chars_to_skip191, align 4
  %132 = load i64, i64* %chars_to_skip, align 8
  %cmp192 = icmp eq i64 %132, 0
  br i1 %cmp192, label %if.then.194, label %if.end.195

if.then.194:                                      ; preds = %if.end.188
  br label %finally

if.end.195:                                       ; preds = %if.end.188
  store i64 0, i64* %chars_decoded, align 8
  %133 = load %struct._object*, %struct._object** %next_input, align 8
  %134 = bitcast %struct._object* %133 to %struct.PyBytesObject*
  %ob_sval196 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %134, i32 0, i32 2
  %arraydecay197 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval196, i32 0, i32 0
  store i8* %arraydecay197, i8** %input, align 8
  %135 = load i8*, i8** %input, align 8
  %136 = load %struct._object*, %struct._object** %next_input, align 8
  %137 = bitcast %struct._object* %136 to %struct.PyVarObject*
  %ob_size198 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %137, i32 0, i32 1
  %138 = load i64, i64* %ob_size198, align 8
  %add.ptr = getelementptr i8, i8* %135, i64 %138
  store i8* %add.ptr, i8** %input_end, align 8
  %139 = load i64, i64* %skip_bytes, align 8
  %140 = load i8*, i8** %input, align 8
  %add.ptr199 = getelementptr i8, i8* %140, i64 %139
  store i8* %add.ptr199, i8** %input, align 8
  br label %while.cond.200

while.cond.200:                                   ; preds = %if.end.282, %if.end.195
  %141 = load i8*, i8** %input, align 8
  %142 = load i8*, i8** %input_end, align 8
  %cmp201 = icmp ult i8* %141, %142
  br i1 %cmp201, label %while.body.203, label %while.end.283

while.body.203:                                   ; preds = %while.cond.200
  br label %do.body.204

do.body.204:                                      ; preds = %while.body.203
  %143 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder206 = getelementptr inbounds %struct.textio, %struct.textio* %143, i32 0, i32 7
  %144 = load %struct._object*, %struct._object** %decoder206, align 8
  %145 = load i8*, i8** %input, align 8
  %call207 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %144, %struct._Py_Identifier* @PyId_decode, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i32 0, i32 0), i8* %145, i64 1)
  store %struct._object* %call207, %struct._object** %_decoded205, align 8
  %146 = load %struct._object*, %struct._object** %_decoded205, align 8
  %call208 = call i32 @check_decoded(%struct._object* %146)
  %cmp209 = icmp slt i32 %call208, 0
  br i1 %cmp209, label %if.then.211, label %if.end.212

if.then.211:                                      ; preds = %do.body.204
  br label %fail

if.end.212:                                       ; preds = %do.body.204
  %147 = load %struct._object*, %struct._object** %_decoded205, align 8
  %148 = bitcast %struct._object* %147 to %struct.PyASCIIObject*
  %length213 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %148, i32 0, i32 1
  %149 = load i64, i64* %length213, align 8
  store i64 %149, i64* %n, align 8
  br label %do.body.214

do.body.214:                                      ; preds = %if.end.212
  %150 = load %struct._object*, %struct._object** %_decoded205, align 8
  store %struct._object* %150, %struct._object** %_py_decref_tmp215, align 8
  %151 = load %struct._object*, %struct._object** %_py_decref_tmp215, align 8
  %ob_refcnt216 = getelementptr inbounds %struct._object, %struct._object* %151, i32 0, i32 0
  %152 = load i64, i64* %ob_refcnt216, align 8
  %dec217 = add i64 %152, -1
  store i64 %dec217, i64* %ob_refcnt216, align 8
  %cmp218 = icmp ne i64 %dec217, 0
  br i1 %cmp218, label %if.then.220, label %if.else.221

if.then.220:                                      ; preds = %do.body.214
  br label %if.end.224

if.else.221:                                      ; preds = %do.body.214
  %153 = load %struct._object*, %struct._object** %_py_decref_tmp215, align 8
  %ob_type222 = getelementptr inbounds %struct._object, %struct._object* %153, i32 0, i32 1
  %154 = load %struct._typeobject*, %struct._typeobject** %ob_type222, align 8
  %tp_dealloc223 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %154, i32 0, i32 4
  %155 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc223, align 8
  %156 = load %struct._object*, %struct._object** %_py_decref_tmp215, align 8
  call void %155(%struct._object* %156)
  br label %if.end.224

if.end.224:                                       ; preds = %if.else.221, %if.then.220
  br label %do.end.225

do.end.225:                                       ; preds = %if.end.224
  br label %do.end.226

do.end.226:                                       ; preds = %do.end.225
  %157 = load i64, i64* %n, align 8
  %158 = load i64, i64* %chars_decoded, align 8
  %add227 = add i64 %158, %157
  store i64 %add227, i64* %chars_decoded, align 8
  %bytes_to_feed = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %cookie, i32 0, i32 2
  %159 = load i32, i32* %bytes_to_feed, align 4
  %add228 = add i32 %159, 1
  store i32 %add228, i32* %bytes_to_feed, align 4
  br label %do.body.229

do.body.229:                                      ; preds = %do.end.226
  %160 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder231 = getelementptr inbounds %struct.textio, %struct.textio* %160, i32 0, i32 7
  %161 = load %struct._object*, %struct._object** %decoder231, align 8
  %162 = load %struct._object*, %struct._object** @_PyIO_str_getstate, align 8
  %call232 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %161, %struct._object* %162, i8* null)
  store %struct._object* %call232, %struct._object** %_state230, align 8
  %163 = load %struct._object*, %struct._object** %_state230, align 8
  %cmp233 = icmp eq %struct._object* %163, null
  br i1 %cmp233, label %if.then.235, label %if.end.236

if.then.235:                                      ; preds = %do.body.229
  br label %fail

if.end.236:                                       ; preds = %do.body.229
  %164 = load %struct._object*, %struct._object** %_state230, align 8
  %call237 = call i32 (%struct._object*, i8*, ...) @_PyArg_Parse_SizeT(%struct._object* %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0), i8** %dec_buffer, i64* %dec_buffer_len, i32* %dec_flags)
  %tobool238 = icmp ne i32 %call237, 0
  br i1 %tobool238, label %if.end.252, label %if.then.239

if.then.239:                                      ; preds = %if.end.236
  br label %do.body.240

do.body.240:                                      ; preds = %if.then.239
  %165 = load %struct._object*, %struct._object** %_state230, align 8
  store %struct._object* %165, %struct._object** %_py_decref_tmp241, align 8
  %166 = load %struct._object*, %struct._object** %_py_decref_tmp241, align 8
  %ob_refcnt242 = getelementptr inbounds %struct._object, %struct._object* %166, i32 0, i32 0
  %167 = load i64, i64* %ob_refcnt242, align 8
  %dec243 = add i64 %167, -1
  store i64 %dec243, i64* %ob_refcnt242, align 8
  %cmp244 = icmp ne i64 %dec243, 0
  br i1 %cmp244, label %if.then.246, label %if.else.247

if.then.246:                                      ; preds = %do.body.240
  br label %if.end.250

if.else.247:                                      ; preds = %do.body.240
  %168 = load %struct._object*, %struct._object** %_py_decref_tmp241, align 8
  %ob_type248 = getelementptr inbounds %struct._object, %struct._object* %168, i32 0, i32 1
  %169 = load %struct._typeobject*, %struct._typeobject** %ob_type248, align 8
  %tp_dealloc249 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %169, i32 0, i32 4
  %170 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc249, align 8
  %171 = load %struct._object*, %struct._object** %_py_decref_tmp241, align 8
  call void %170(%struct._object* %171)
  br label %if.end.250

if.end.250:                                       ; preds = %if.else.247, %if.then.246
  br label %do.end.251

do.end.251:                                       ; preds = %if.end.250
  br label %fail

if.end.252:                                       ; preds = %if.end.236
  br label %do.body.253

do.body.253:                                      ; preds = %if.end.252
  %172 = load %struct._object*, %struct._object** %_state230, align 8
  store %struct._object* %172, %struct._object** %_py_decref_tmp254, align 8
  %173 = load %struct._object*, %struct._object** %_py_decref_tmp254, align 8
  %ob_refcnt255 = getelementptr inbounds %struct._object, %struct._object* %173, i32 0, i32 0
  %174 = load i64, i64* %ob_refcnt255, align 8
  %dec256 = add i64 %174, -1
  store i64 %dec256, i64* %ob_refcnt255, align 8
  %cmp257 = icmp ne i64 %dec256, 0
  br i1 %cmp257, label %if.then.259, label %if.else.260

if.then.259:                                      ; preds = %do.body.253
  br label %if.end.263

if.else.260:                                      ; preds = %do.body.253
  %175 = load %struct._object*, %struct._object** %_py_decref_tmp254, align 8
  %ob_type261 = getelementptr inbounds %struct._object, %struct._object* %175, i32 0, i32 1
  %176 = load %struct._typeobject*, %struct._typeobject** %ob_type261, align 8
  %tp_dealloc262 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %176, i32 0, i32 4
  %177 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc262, align 8
  %178 = load %struct._object*, %struct._object** %_py_decref_tmp254, align 8
  call void %177(%struct._object* %178)
  br label %if.end.263

if.end.263:                                       ; preds = %if.else.260, %if.then.259
  br label %do.end.264

do.end.264:                                       ; preds = %if.end.263
  br label %do.end.265

do.end.265:                                       ; preds = %do.end.264
  %179 = load i64, i64* %dec_buffer_len, align 8
  %cmp266 = icmp eq i64 %179, 0
  br i1 %cmp266, label %land.lhs.true, label %if.end.278

land.lhs.true:                                    ; preds = %do.end.265
  %180 = load i64, i64* %chars_decoded, align 8
  %181 = load i64, i64* %chars_to_skip, align 8
  %cmp268 = icmp sle i64 %180, %181
  br i1 %cmp268, label %if.then.270, label %if.end.278

if.then.270:                                      ; preds = %land.lhs.true
  %bytes_to_feed271 = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %cookie, i32 0, i32 2
  %182 = load i32, i32* %bytes_to_feed271, align 4
  %conv272 = sext i32 %182 to i64
  %start_pos273 = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %cookie, i32 0, i32 0
  %183 = load i64, i64* %start_pos273, align 8
  %add274 = add i64 %183, %conv272
  store i64 %add274, i64* %start_pos273, align 8
  %184 = load i64, i64* %chars_decoded, align 8
  %185 = load i64, i64* %chars_to_skip, align 8
  %sub275 = sub i64 %185, %184
  store i64 %sub275, i64* %chars_to_skip, align 8
  %186 = load i32, i32* %dec_flags, align 4
  %dec_flags276 = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %cookie, i32 0, i32 1
  store i32 %186, i32* %dec_flags276, align 4
  %bytes_to_feed277 = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %cookie, i32 0, i32 2
  store i32 0, i32* %bytes_to_feed277, align 4
  store i64 0, i64* %chars_decoded, align 8
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.270, %land.lhs.true, %do.end.265
  %187 = load i64, i64* %chars_decoded, align 8
  %188 = load i64, i64* %chars_to_skip, align 8
  %cmp279 = icmp sge i64 %187, %188
  br i1 %cmp279, label %if.then.281, label %if.end.282

if.then.281:                                      ; preds = %if.end.278
  br label %while.end.283

if.end.282:                                       ; preds = %if.end.278
  %189 = load i8*, i8** %input, align 8
  %incdec.ptr = getelementptr i8, i8* %189, i32 1
  store i8* %incdec.ptr, i8** %input, align 8
  br label %while.cond.200

while.end.283:                                    ; preds = %if.then.281, %while.cond.200
  %190 = load i8*, i8** %input, align 8
  %191 = load i8*, i8** %input_end, align 8
  %cmp284 = icmp eq i8* %190, %191
  br i1 %cmp284, label %if.then.286, label %if.end.312

if.then.286:                                      ; preds = %while.end.283
  %192 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder287 = getelementptr inbounds %struct.textio, %struct.textio* %192, i32 0, i32 7
  %193 = load %struct._object*, %struct._object** %decoder287, align 8
  %call288 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %193, %struct._Py_Identifier* @PyId_decode, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0), i32 1)
  store %struct._object* %call288, %struct._object** %decoded, align 8
  %194 = load %struct._object*, %struct._object** %decoded, align 8
  %call289 = call i32 @check_decoded(%struct._object* %194)
  %cmp290 = icmp slt i32 %call289, 0
  br i1 %cmp290, label %if.then.292, label %if.end.293

if.then.292:                                      ; preds = %if.then.286
  br label %fail

if.end.293:                                       ; preds = %if.then.286
  %195 = load %struct._object*, %struct._object** %decoded, align 8
  %196 = bitcast %struct._object* %195 to %struct.PyASCIIObject*
  %length294 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %196, i32 0, i32 1
  %197 = load i64, i64* %length294, align 8
  %198 = load i64, i64* %chars_decoded, align 8
  %add295 = add i64 %198, %197
  store i64 %add295, i64* %chars_decoded, align 8
  br label %do.body.296

do.body.296:                                      ; preds = %if.end.293
  %199 = load %struct._object*, %struct._object** %decoded, align 8
  store %struct._object* %199, %struct._object** %_py_decref_tmp297, align 8
  %200 = load %struct._object*, %struct._object** %_py_decref_tmp297, align 8
  %ob_refcnt298 = getelementptr inbounds %struct._object, %struct._object* %200, i32 0, i32 0
  %201 = load i64, i64* %ob_refcnt298, align 8
  %dec299 = add i64 %201, -1
  store i64 %dec299, i64* %ob_refcnt298, align 8
  %cmp300 = icmp ne i64 %dec299, 0
  br i1 %cmp300, label %if.then.302, label %if.else.303

if.then.302:                                      ; preds = %do.body.296
  br label %if.end.306

if.else.303:                                      ; preds = %do.body.296
  %202 = load %struct._object*, %struct._object** %_py_decref_tmp297, align 8
  %ob_type304 = getelementptr inbounds %struct._object, %struct._object* %202, i32 0, i32 1
  %203 = load %struct._typeobject*, %struct._typeobject** %ob_type304, align 8
  %tp_dealloc305 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %203, i32 0, i32 4
  %204 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc305, align 8
  %205 = load %struct._object*, %struct._object** %_py_decref_tmp297, align 8
  call void %204(%struct._object* %205)
  br label %if.end.306

if.end.306:                                       ; preds = %if.else.303, %if.then.302
  br label %do.end.307

do.end.307:                                       ; preds = %if.end.306
  %need_eof = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %cookie, i32 0, i32 4
  store i8 1, i8* %need_eof, align 1
  %206 = load i64, i64* %chars_decoded, align 8
  %207 = load i64, i64* %chars_to_skip, align 8
  %cmp308 = icmp slt i64 %206, %207
  br i1 %cmp308, label %if.then.310, label %if.end.311

if.then.310:                                      ; preds = %do.end.307
  %208 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  call void @PyErr_SetString(%struct._object* %208, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.86, i32 0, i32 0))
  br label %fail

if.end.311:                                       ; preds = %do.end.307
  br label %if.end.312

if.end.312:                                       ; preds = %if.end.311, %while.end.283
  br label %finally

finally:                                          ; preds = %if.end.312, %if.then.194
  %209 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder313 = getelementptr inbounds %struct.textio, %struct.textio* %209, i32 0, i32 7
  %210 = load %struct._object*, %struct._object** %decoder313, align 8
  %211 = load %struct._object*, %struct._object** %saved_state, align 8
  %call314 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %210, %struct._Py_Identifier* @PyId_setstate, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i32 0, i32 0), %struct._object* %211)
  store %struct._object* %call314, %struct._object** %res, align 8
  br label %do.body.315

do.body.315:                                      ; preds = %finally
  %212 = load %struct._object*, %struct._object** %saved_state, align 8
  store %struct._object* %212, %struct._object** %_py_decref_tmp316, align 8
  %213 = load %struct._object*, %struct._object** %_py_decref_tmp316, align 8
  %ob_refcnt317 = getelementptr inbounds %struct._object, %struct._object* %213, i32 0, i32 0
  %214 = load i64, i64* %ob_refcnt317, align 8
  %dec318 = add i64 %214, -1
  store i64 %dec318, i64* %ob_refcnt317, align 8
  %cmp319 = icmp ne i64 %dec318, 0
  br i1 %cmp319, label %if.then.321, label %if.else.322

if.then.321:                                      ; preds = %do.body.315
  br label %if.end.325

if.else.322:                                      ; preds = %do.body.315
  %215 = load %struct._object*, %struct._object** %_py_decref_tmp316, align 8
  %ob_type323 = getelementptr inbounds %struct._object, %struct._object* %215, i32 0, i32 1
  %216 = load %struct._typeobject*, %struct._typeobject** %ob_type323, align 8
  %tp_dealloc324 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %216, i32 0, i32 4
  %217 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc324, align 8
  %218 = load %struct._object*, %struct._object** %_py_decref_tmp316, align 8
  call void %217(%struct._object* %218)
  br label %if.end.325

if.end.325:                                       ; preds = %if.else.322, %if.then.321
  br label %do.end.326

do.end.326:                                       ; preds = %if.end.325
  %219 = load %struct._object*, %struct._object** %res, align 8
  %cmp327 = icmp eq %struct._object* %219, null
  br i1 %cmp327, label %if.then.329, label %if.end.330

if.then.329:                                      ; preds = %do.end.326
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.330:                                       ; preds = %do.end.326
  br label %do.body.331

do.body.331:                                      ; preds = %if.end.330
  %220 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %220, %struct._object** %_py_decref_tmp332, align 8
  %221 = load %struct._object*, %struct._object** %_py_decref_tmp332, align 8
  %ob_refcnt333 = getelementptr inbounds %struct._object, %struct._object* %221, i32 0, i32 0
  %222 = load i64, i64* %ob_refcnt333, align 8
  %dec334 = add i64 %222, -1
  store i64 %dec334, i64* %ob_refcnt333, align 8
  %cmp335 = icmp ne i64 %dec334, 0
  br i1 %cmp335, label %if.then.337, label %if.else.338

if.then.337:                                      ; preds = %do.body.331
  br label %if.end.341

if.else.338:                                      ; preds = %do.body.331
  %223 = load %struct._object*, %struct._object** %_py_decref_tmp332, align 8
  %ob_type339 = getelementptr inbounds %struct._object, %struct._object* %223, i32 0, i32 1
  %224 = load %struct._typeobject*, %struct._typeobject** %ob_type339, align 8
  %tp_dealloc340 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %224, i32 0, i32 4
  %225 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc340, align 8
  %226 = load %struct._object*, %struct._object** %_py_decref_tmp332, align 8
  call void %225(%struct._object* %226)
  br label %if.end.341

if.end.341:                                       ; preds = %if.else.338, %if.then.337
  br label %do.end.342

do.end.342:                                       ; preds = %if.end.341
  %227 = load i64, i64* %chars_to_skip, align 8
  %conv343 = trunc i64 %227 to i32
  %chars_to_skip344 = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %cookie, i32 0, i32 3
  store i32 %conv343, i32* %chars_to_skip344, align 4
  %call345 = call %struct._object* @textiowrapper_build_cookie(%struct.cookie_type* %cookie)
  store %struct._object* %call345, %struct._object** %retval
  br label %return

fail:                                             ; preds = %if.then.310, %if.then.292, %do.end.251, %if.then.235, %if.then.211, %if.then.186, %do.end.154, %if.then.138, %if.then.115, %if.then.107, %if.then.99, %if.then.88, %if.then.82, %if.then.62, %if.then.47, %if.then.39, %if.then.35
  %228 = load %struct._object*, %struct._object** %saved_state, align 8
  %tobool346 = icmp ne %struct._object* %228, null
  br i1 %tobool346, label %if.then.347, label %if.end.378

if.then.347:                                      ; preds = %fail
  call void @PyErr_Fetch(%struct._object** %type, %struct._object** %value, %struct._object** %traceback)
  %229 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder348 = getelementptr inbounds %struct.textio, %struct.textio* %229, i32 0, i32 7
  %230 = load %struct._object*, %struct._object** %decoder348, align 8
  %231 = load %struct._object*, %struct._object** %saved_state, align 8
  %call349 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %230, %struct._Py_Identifier* @PyId_setstate, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i32 0, i32 0), %struct._object* %231)
  store %struct._object* %call349, %struct._object** %res, align 8
  br label %do.body.350

do.body.350:                                      ; preds = %if.then.347
  %232 = load %struct._object*, %struct._object** %saved_state, align 8
  store %struct._object* %232, %struct._object** %_py_decref_tmp351, align 8
  %233 = load %struct._object*, %struct._object** %_py_decref_tmp351, align 8
  %ob_refcnt352 = getelementptr inbounds %struct._object, %struct._object* %233, i32 0, i32 0
  %234 = load i64, i64* %ob_refcnt352, align 8
  %dec353 = add i64 %234, -1
  store i64 %dec353, i64* %ob_refcnt352, align 8
  %cmp354 = icmp ne i64 %dec353, 0
  br i1 %cmp354, label %if.then.356, label %if.else.357

if.then.356:                                      ; preds = %do.body.350
  br label %if.end.360

if.else.357:                                      ; preds = %do.body.350
  %235 = load %struct._object*, %struct._object** %_py_decref_tmp351, align 8
  %ob_type358 = getelementptr inbounds %struct._object, %struct._object* %235, i32 0, i32 1
  %236 = load %struct._typeobject*, %struct._typeobject** %ob_type358, align 8
  %tp_dealloc359 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %236, i32 0, i32 4
  %237 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc359, align 8
  %238 = load %struct._object*, %struct._object** %_py_decref_tmp351, align 8
  call void %237(%struct._object* %238)
  br label %if.end.360

if.end.360:                                       ; preds = %if.else.357, %if.then.356
  br label %do.end.361

do.end.361:                                       ; preds = %if.end.360
  %239 = load %struct._object*, %struct._object** %res, align 8
  %cmp362 = icmp eq %struct._object* %239, null
  br i1 %cmp362, label %if.then.364, label %if.end.365

if.then.364:                                      ; preds = %do.end.361
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.365:                                       ; preds = %do.end.361
  br label %do.body.366

do.body.366:                                      ; preds = %if.end.365
  %240 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %240, %struct._object** %_py_decref_tmp367, align 8
  %241 = load %struct._object*, %struct._object** %_py_decref_tmp367, align 8
  %ob_refcnt368 = getelementptr inbounds %struct._object, %struct._object* %241, i32 0, i32 0
  %242 = load i64, i64* %ob_refcnt368, align 8
  %dec369 = add i64 %242, -1
  store i64 %dec369, i64* %ob_refcnt368, align 8
  %cmp370 = icmp ne i64 %dec369, 0
  br i1 %cmp370, label %if.then.372, label %if.else.373

if.then.372:                                      ; preds = %do.body.366
  br label %if.end.376

if.else.373:                                      ; preds = %do.body.366
  %243 = load %struct._object*, %struct._object** %_py_decref_tmp367, align 8
  %ob_type374 = getelementptr inbounds %struct._object, %struct._object* %243, i32 0, i32 1
  %244 = load %struct._typeobject*, %struct._typeobject** %ob_type374, align 8
  %tp_dealloc375 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %244, i32 0, i32 4
  %245 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc375, align 8
  %246 = load %struct._object*, %struct._object** %_py_decref_tmp367, align 8
  call void %245(%struct._object* %246)
  br label %if.end.376

if.end.376:                                       ; preds = %if.else.373, %if.then.372
  br label %do.end.377

do.end.377:                                       ; preds = %if.end.376
  %247 = load %struct._object*, %struct._object** %type, align 8
  %248 = load %struct._object*, %struct._object** %value, align 8
  %249 = load %struct._object*, %struct._object** %traceback, align 8
  call void @PyErr_Restore(%struct._object* %247, %struct._object* %248, %struct._object* %249)
  br label %if.end.378

if.end.378:                                       ; preds = %do.end.377, %fail
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.378, %if.then.364, %do.end.342, %if.then.329, %if.then.92, %if.then.66, %if.then.43, %if.then.30, %if.then.25, %if.then.21, %if.then.11, %if.end
  %250 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %250
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @textiowrapper_truncate(%struct.textio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.textio*, align 8
  %args.addr = alloca %struct._object*, align 8
  %pos = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %pos, align 8
  %0 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.textio, %struct.textio* %0, i32 0, i32 1
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %detached = getelementptr inbounds %struct.textio, %struct.textio* %2, i32 0, i32 2
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i32 0, i32 0), %struct._object** %pos)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end.2
  %7 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %8 = bitcast %struct.textio* %7 to %struct._object*
  %9 = load %struct._object*, %struct._object** @_PyIO_str_flush, align 8
  %call6 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %8, %struct._object* %9, i8* null)
  store %struct._object* %call6, %struct._object** %res, align 8
  %10 = load %struct._object*, %struct._object** %res, align 8
  %cmp7 = icmp eq %struct._object* %10, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.5
  br label %do.body

do.body:                                          ; preds = %if.end.9
  %11 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %do.body
  br label %if.end.13

if.else.12:                                       ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %16(%struct._object* %17)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.12, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.13
  %18 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %buffer = getelementptr inbounds %struct.textio, %struct.textio* %18, i32 0, i32 4
  %19 = load %struct._object*, %struct._object** %buffer, align 8
  %20 = load %struct._object*, %struct._object** @_PyIO_str_truncate, align 8
  %21 = load %struct._object*, %struct._object** %pos, align 8
  %call14 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %19, %struct._object* %20, %struct._object* %21, i8* null)
  store %struct._object* %call14, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.8, %if.then.4, %if.end
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
}

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #1

declare i64 @PyUnicode_FindChar(%struct._object*, i32, i64, i64, i32) #1

declare i32 @_PyIO_ConvertSsize_t(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @textiowrapper_get_decoded_chars(%struct.textio* %self, i64 %n) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.textio*, align 8
  %n.addr = alloca i64, align 8
  %chars = alloca %struct._object*, align 8
  %avail = alloca i64, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoded_chars = getelementptr inbounds %struct.textio, %struct.textio* %0, i32 0, i32 22
  %1 = load %struct._object*, %struct._object** %decoded_chars, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyUnicode_FromStringAndSize(i8* null, i64 0)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoded_chars1 = getelementptr inbounds %struct.textio, %struct.textio* %2, i32 0, i32 22
  %3 = load %struct._object*, %struct._object** %decoded_chars1, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %4, i32 0, i32 1
  %5 = load i64, i64* %length, align 8
  %6 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoded_chars_used = getelementptr inbounds %struct.textio, %struct.textio* %6, i32 0, i32 23
  %7 = load i64, i64* %decoded_chars_used, align 8
  %sub = sub i64 %5, %7
  store i64 %sub, i64* %avail, align 8
  %8 = load i64, i64* %n.addr, align 8
  %cmp2 = icmp slt i64 %8, 0
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load i64, i64* %n.addr, align 8
  %10 = load i64, i64* %avail, align 8
  %cmp3 = icmp sgt i64 %9, %10
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  %11 = load i64, i64* %avail, align 8
  store i64 %11, i64* %n.addr, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %lor.lhs.false
  %12 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoded_chars_used6 = getelementptr inbounds %struct.textio, %struct.textio* %12, i32 0, i32 23
  %13 = load i64, i64* %decoded_chars_used6, align 8
  %cmp7 = icmp sgt i64 %13, 0
  br i1 %cmp7, label %if.then.10, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %if.end.5
  %14 = load i64, i64* %n.addr, align 8
  %15 = load i64, i64* %avail, align 8
  %cmp9 = icmp slt i64 %14, %15
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %lor.lhs.false.8, %if.end.5
  %16 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoded_chars11 = getelementptr inbounds %struct.textio, %struct.textio* %16, i32 0, i32 22
  %17 = load %struct._object*, %struct._object** %decoded_chars11, align 8
  %18 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoded_chars_used12 = getelementptr inbounds %struct.textio, %struct.textio* %18, i32 0, i32 23
  %19 = load i64, i64* %decoded_chars_used12, align 8
  %20 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoded_chars_used13 = getelementptr inbounds %struct.textio, %struct.textio* %20, i32 0, i32 23
  %21 = load i64, i64* %decoded_chars_used13, align 8
  %22 = load i64, i64* %n.addr, align 8
  %add = add i64 %21, %22
  %call14 = call %struct._object* @PyUnicode_Substring(%struct._object* %17, i64 %19, i64 %add)
  store %struct._object* %call14, %struct._object** %chars, align 8
  %23 = load %struct._object*, %struct._object** %chars, align 8
  %cmp15 = icmp eq %struct._object* %23, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.10
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %if.then.10
  br label %if.end.19

if.else:                                          ; preds = %lor.lhs.false.8
  %24 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoded_chars18 = getelementptr inbounds %struct.textio, %struct.textio* %24, i32 0, i32 22
  %25 = load %struct._object*, %struct._object** %decoded_chars18, align 8
  store %struct._object* %25, %struct._object** %chars, align 8
  %26 = load %struct._object*, %struct._object** %chars, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %27, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.end.17
  %28 = load i64, i64* %n.addr, align 8
  %29 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoded_chars_used20 = getelementptr inbounds %struct.textio, %struct.textio* %29, i32 0, i32 23
  %30 = load i64, i64* %decoded_chars_used20, align 8
  %add21 = add i64 %30, %28
  store i64 %add21, i64* %decoded_chars_used20, align 8
  %31 = load %struct._object*, %struct._object** %chars, align 8
  store %struct._object* %31, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.16, %if.then
  %32 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %32
}

declare %struct._object* @PyUnicode_FromStringAndSize(i8*, i64) #1

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #1

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #1

declare void @PyErr_NormalizeException(%struct._object**, %struct._object**, %struct._object**) #1

declare void @PyException_SetContext(%struct._object*, %struct._object*) #1

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @textiowrapper_parse_cookie(%struct.cookie_type* %cookie, %struct._object* %cookieObj) #0 {
entry:
  %retval = alloca i32, align 4
  %cookie.addr = alloca %struct.cookie_type*, align 8
  %cookieObj.addr = alloca %struct._object*, align 8
  %buffer = alloca [21 x i8], align 16
  %cookieLong = alloca %struct._longobject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp9 = alloca %struct._object*, align 8
  store %struct.cookie_type* %cookie, %struct.cookie_type** %cookie.addr, align 8
  store %struct._object* %cookieObj, %struct._object** %cookieObj.addr, align 8
  %0 = load %struct._object*, %struct._object** %cookieObj.addr, align 8
  %call = call %struct._object* @PyNumber_Long(%struct._object* %0)
  %1 = bitcast %struct._object* %call to %struct._longobject*
  store %struct._longobject* %1, %struct._longobject** %cookieLong, align 8
  %2 = load %struct._longobject*, %struct._longobject** %cookieLong, align 8
  %cmp = icmp eq %struct._longobject* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._longobject*, %struct._longobject** %cookieLong, align 8
  %arraydecay = getelementptr inbounds [21 x i8], [21 x i8]* %buffer, i32 0, i32 0
  %call1 = call i32 @_PyLong_AsByteArray(%struct._longobject* %3, i8* %arraydecay, i64 21, i32 1, i32 0)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %4 = load %struct._longobject*, %struct._longobject** %cookieLong, align 8
  %5 = bitcast %struct._longobject* %4 to %struct._object*
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  br label %do.body.8

do.body.8:                                        ; preds = %if.end.7
  %12 = load %struct._longobject*, %struct._longobject** %cookieLong, align 8
  %13 = bitcast %struct._longobject* %12 to %struct._object*
  store %struct._object* %13, %struct._object** %_py_decref_tmp9, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt10, align 8
  %dec11 = add i64 %15, -1
  store i64 %dec11, i64* %ob_refcnt10, align 8
  %cmp12 = icmp ne i64 %dec11, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.8
  br label %if.end.17

if.else.14:                                       ; preds = %do.body.8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8
  %tp_dealloc16 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc16, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8
  call void %18(%struct._object* %19)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.14, %if.then.13
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %20 = load %struct.cookie_type*, %struct.cookie_type** %cookie.addr, align 8
  %start_pos = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %20, i32 0, i32 0
  %21 = bitcast i64* %start_pos to i8*
  %arraydecay19 = getelementptr inbounds [21 x i8], [21 x i8]* %buffer, i32 0, i32 0
  %add.ptr = getelementptr i8, i8* %arraydecay19, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %add.ptr, i64 8, i32 1, i1 false)
  %22 = load %struct.cookie_type*, %struct.cookie_type** %cookie.addr, align 8
  %dec_flags = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %22, i32 0, i32 1
  %23 = bitcast i32* %dec_flags to i8*
  %arraydecay20 = getelementptr inbounds [21 x i8], [21 x i8]* %buffer, i32 0, i32 0
  %add.ptr21 = getelementptr i8, i8* %arraydecay20, i64 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %add.ptr21, i64 4, i32 1, i1 false)
  %24 = load %struct.cookie_type*, %struct.cookie_type** %cookie.addr, align 8
  %bytes_to_feed = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %24, i32 0, i32 2
  %25 = bitcast i32* %bytes_to_feed to i8*
  %arraydecay22 = getelementptr inbounds [21 x i8], [21 x i8]* %buffer, i32 0, i32 0
  %add.ptr23 = getelementptr i8, i8* %arraydecay22, i64 12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %add.ptr23, i64 4, i32 1, i1 false)
  %26 = load %struct.cookie_type*, %struct.cookie_type** %cookie.addr, align 8
  %chars_to_skip = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %26, i32 0, i32 3
  %27 = bitcast i32* %chars_to_skip to i8*
  %arraydecay24 = getelementptr inbounds [21 x i8], [21 x i8]* %buffer, i32 0, i32 0
  %add.ptr25 = getelementptr i8, i8* %arraydecay24, i64 16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %add.ptr25, i64 4, i32 1, i1 false)
  %28 = load %struct.cookie_type*, %struct.cookie_type** %cookie.addr, align 8
  %need_eof = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %28, i32 0, i32 4
  %arraydecay26 = getelementptr inbounds [21 x i8], [21 x i8]* %buffer, i32 0, i32 0
  %add.ptr27 = getelementptr i8, i8* %arraydecay26, i64 20
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %need_eof, i8* %add.ptr27, i64 1, i32 1, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.18, %do.end, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @_textiowrapper_decoder_setstate(%struct.textio* %self, %struct.cookie_type* %cookie) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.textio*, align 8
  %cookie.addr = alloca %struct.cookie_type*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store %struct.cookie_type* %cookie, %struct.cookie_type** %cookie.addr, align 8
  %0 = load %struct.cookie_type*, %struct.cookie_type** %cookie.addr, align 8
  %start_pos = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %0, i32 0, i32 0
  %1 = load i64, i64* %start_pos, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.cookie_type*, %struct.cookie_type** %cookie.addr, align 8
  %dec_flags = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %2, i32 0, i32 1
  %3 = load i32, i32* %dec_flags, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder = getelementptr inbounds %struct.textio, %struct.textio* %4, i32 0, i32 7
  %5 = load %struct._object*, %struct._object** %decoder, align 8
  %6 = load %struct._object*, %struct._object** @_PyIO_str_reset, align 8
  %call = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %5, %struct._object* %6, i8* null)
  store %struct._object* %call, %struct._object** %res, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %7 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder2 = getelementptr inbounds %struct.textio, %struct.textio* %7, i32 0, i32 7
  %8 = load %struct._object*, %struct._object** %decoder2, align 8
  %9 = load %struct.cookie_type*, %struct.cookie_type** %cookie.addr, align 8
  %dec_flags3 = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %9, i32 0, i32 1
  %10 = load i32, i32* %dec_flags3, align 4
  %call4 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %8, %struct._Py_Identifier* @PyId_setstate, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0), i32 %10)
  store %struct._object* %call4, %struct._object** %res, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load %struct._object*, %struct._object** %res, align 8
  %cmp5 = icmp eq %struct._object* %11, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.7
  %12 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body
  br label %if.end.11

if.else.10:                                       ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.10, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.6
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare i64 @PyUnicode_GetLength(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @_textiowrapper_encoder_setstate(%struct.textio* %self, %struct.cookie_type* %cookie) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.textio*, align 8
  %cookie.addr = alloca %struct.cookie_type*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store %struct.cookie_type* %cookie, %struct.cookie_type** %cookie.addr, align 8
  %0 = load %struct.cookie_type*, %struct.cookie_type** %cookie.addr, align 8
  %start_pos = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %0, i32 0, i32 0
  %1 = load i64, i64* %start_pos, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.cookie_type*, %struct.cookie_type** %cookie.addr, align 8
  %dec_flags = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %2, i32 0, i32 1
  %3 = load i32, i32* %dec_flags, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoder = getelementptr inbounds %struct.textio, %struct.textio* %4, i32 0, i32 6
  %5 = load %struct._object*, %struct._object** %encoder, align 8
  %6 = load %struct._object*, %struct._object** @_PyIO_str_reset, align 8
  %call = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %5, %struct._object* %6, i8* null)
  store %struct._object* %call, %struct._object** %res, align 8
  %7 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoding_start_of_stream = getelementptr inbounds %struct.textio, %struct.textio* %7, i32 0, i32 21
  store i8 1, i8* %encoding_start_of_stream, align 1
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %8 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoder2 = getelementptr inbounds %struct.textio, %struct.textio* %8, i32 0, i32 6
  %9 = load %struct._object*, %struct._object** %encoder2, align 8
  %10 = load %struct._object*, %struct._object** @_PyIO_str_setstate, align 8
  %11 = load %struct._object*, %struct._object** @_PyIO_zero, align 8
  %call3 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %9, %struct._object* %10, %struct._object* %11, i8* null)
  store %struct._object* %call3, %struct._object** %res, align 8
  %12 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoding_start_of_stream4 = getelementptr inbounds %struct.textio, %struct.textio* %12, i32 0, i32 21
  store i8 0, i8* %encoding_start_of_stream4, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct._object*, %struct._object** %res, align 8
  %cmp5 = icmp eq %struct._object* %13, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.7
  %14 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body
  br label %if.end.11

if.else.10:                                       ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %19(%struct._object* %20)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.10, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.6
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare %struct._object* @PyNumber_Long(%struct._object*) #1

declare i32 @_PyLong_AsByteArray(%struct._longobject*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare i64 @PyLong_AsLong(%struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @textiowrapper_build_cookie(%struct.cookie_type* %cookie) #0 {
entry:
  %cookie.addr = alloca %struct.cookie_type*, align 8
  %buffer = alloca [21 x i8], align 16
  store %struct.cookie_type* %cookie, %struct.cookie_type** %cookie.addr, align 8
  %arraydecay = getelementptr inbounds [21 x i8], [21 x i8]* %buffer, i32 0, i32 0
  %add.ptr = getelementptr i8, i8* %arraydecay, i64 0
  %0 = load %struct.cookie_type*, %struct.cookie_type** %cookie.addr, align 8
  %start_pos = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %0, i32 0, i32 0
  %1 = bitcast i64* %start_pos to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %1, i64 8, i32 1, i1 false)
  %arraydecay1 = getelementptr inbounds [21 x i8], [21 x i8]* %buffer, i32 0, i32 0
  %add.ptr2 = getelementptr i8, i8* %arraydecay1, i64 8
  %2 = load %struct.cookie_type*, %struct.cookie_type** %cookie.addr, align 8
  %dec_flags = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %2, i32 0, i32 1
  %3 = bitcast i32* %dec_flags to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr2, i8* %3, i64 4, i32 1, i1 false)
  %arraydecay3 = getelementptr inbounds [21 x i8], [21 x i8]* %buffer, i32 0, i32 0
  %add.ptr4 = getelementptr i8, i8* %arraydecay3, i64 12
  %4 = load %struct.cookie_type*, %struct.cookie_type** %cookie.addr, align 8
  %bytes_to_feed = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %4, i32 0, i32 2
  %5 = bitcast i32* %bytes_to_feed to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr4, i8* %5, i64 4, i32 1, i1 false)
  %arraydecay5 = getelementptr inbounds [21 x i8], [21 x i8]* %buffer, i32 0, i32 0
  %add.ptr6 = getelementptr i8, i8* %arraydecay5, i64 16
  %6 = load %struct.cookie_type*, %struct.cookie_type** %cookie.addr, align 8
  %chars_to_skip = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %6, i32 0, i32 3
  %7 = bitcast i32* %chars_to_skip to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr6, i8* %7, i64 4, i32 1, i1 false)
  %arraydecay7 = getelementptr inbounds [21 x i8], [21 x i8]* %buffer, i32 0, i32 0
  %add.ptr8 = getelementptr i8, i8* %arraydecay7, i64 20
  %8 = load %struct.cookie_type*, %struct.cookie_type** %cookie.addr, align 8
  %need_eof = getelementptr inbounds %struct.cookie_type, %struct.cookie_type* %8, i32 0, i32 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr8, i8* %need_eof, i64 1, i32 1, i1 false)
  %arraydecay9 = getelementptr inbounds [21 x i8], [21 x i8]* %buffer, i32 0, i32 0
  %call = call %struct._object* @_PyLong_FromByteArray(i8* %arraydecay9, i64 21, i32 1, i32 0)
  ret %struct._object* %call
}

declare %struct._object* @_PyLong_FromByteArray(i8*, i64, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @textiowrapper_name_get(%struct.textio* %self, i8* %context) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.textio*, align 8
  %context.addr = alloca i8*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  %0 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.textio, %struct.textio* %0, i32 0, i32 1
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %detached = getelementptr inbounds %struct.textio, %struct.textio* %2, i32 0, i32 2
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %buffer = getelementptr inbounds %struct.textio, %struct.textio* %6, i32 0, i32 4
  %7 = load %struct._object*, %struct._object** %buffer, align 8
  %call = call %struct._object* @_PyObject_GetAttrId(%struct._object* %7, %struct._Py_Identifier* @PyId_name)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.end
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @textiowrapper_newlines_get(%struct.textio* %self, i8* %context) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.textio*, align 8
  %context.addr = alloca i8*, align 8
  %res = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  %0 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.textio, %struct.textio* %0, i32 0, i32 1
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %detached = getelementptr inbounds %struct.textio, %struct.textio* %2, i32 0, i32 2
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder = getelementptr inbounds %struct.textio, %struct.textio* %6, i32 0, i32 7
  %7 = load %struct._object*, %struct._object** %decoder, align 8
  %cmp3 = icmp eq %struct._object* %7, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.2
  %8 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end.2
  %9 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %decoder6 = getelementptr inbounds %struct.textio, %struct.textio* %9, i32 0, i32 7
  %10 = load %struct._object*, %struct._object** %decoder6, align 8
  %11 = load %struct._object*, %struct._object** @_PyIO_str_newlines, align 8
  %call = call %struct._object* @PyObject_GetAttr(%struct._object* %10, %struct._object* %11)
  store %struct._object* %call, %struct._object** %res, align 8
  %12 = load %struct._object*, %struct._object** %res, align 8
  %cmp7 = icmp eq %struct._object* %12, null
  br i1 %cmp7, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %if.end.5
  %13 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %call9 = call i32 @PyErr_ExceptionMatches(%struct._object* %13)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.else.13

if.then.11:                                       ; preds = %if.then.8
  call void @PyErr_Clear()
  %14 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc12 = add i64 %14, 1
  store i64 %inc12, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.else.13:                                       ; preds = %if.then.8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.5
  %15 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %15, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.else.13, %if.then.11, %if.then.4, %if.end
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @textiowrapper_errors_get(%struct.textio* %self, i8* %context) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.textio*, align 8
  %context.addr = alloca i8*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  %0 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.textio, %struct.textio* %0, i32 0, i32 1
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %detached = getelementptr inbounds %struct.textio, %struct.textio* %2, i32 0, i32 2
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %errors = getelementptr inbounds %struct.textio, %struct.textio* %6, i32 0, i32 9
  %7 = load %struct._object*, %struct._object** %errors, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %8, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %call = call %struct._object* @PyUnicode_FromString(i8* %arraydecay)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.end
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @textiowrapper_chunk_size_get(%struct.textio* %self, i8* %context) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.textio*, align 8
  %context.addr = alloca i8*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  %0 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.textio, %struct.textio* %0, i32 0, i32 1
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %detached = getelementptr inbounds %struct.textio, %struct.textio* %2, i32 0, i32 2
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %chunk_size = getelementptr inbounds %struct.textio, %struct.textio* %6, i32 0, i32 3
  %7 = load i64, i64* %chunk_size, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %7)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.end
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal i32 @textiowrapper_chunk_size_set(%struct.textio* %self, %struct._object* %arg, i8* %context) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.textio*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %context.addr = alloca i8*, align 8
  %n = alloca i64, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  %0 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.textio, %struct.textio* %0, i32 0, i32 1
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %detached = getelementptr inbounds %struct.textio, %struct.textio* %2, i32 0, i32 2
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store i32 -1, i32* %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct._object*, %struct._object** %arg.addr, align 8
  %7 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call = call i64 @PyNumber_AsSsize_t(%struct._object* %6, %struct._object* %7)
  store i64 %call, i64* %n, align 8
  %8 = load i64, i64* %n, align 8
  %cmp3 = icmp eq i64 %8, -1
  br i1 %cmp3, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end.2
  %call4 = call %struct._object* @PyErr_Occurred()
  %tobool5 = icmp ne %struct._object* %call4, null
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %if.end.2
  %9 = load i64, i64* %n, align 8
  %cmp8 = icmp sle i64 %9, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  %10 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.94, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.7
  %11 = load i64, i64* %n, align 8
  %12 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %chunk_size = getelementptr inbounds %struct.textio, %struct.textio* %12, i32 0, i32 3
  store i64 %11, i64* %chunk_size, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %if.then.6, %if.end
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare i64 @PyNumber_AsSsize_t(%struct._object*, %struct._object*) #1

declare i32 @_PyLong_AsInt(%struct._object*) #1

declare %struct._object* @_Py_device_encoding(i32) #1

declare %struct._object* @_PyIO_get_locale_module(%struct._PyIO_State*) #1

declare i8* @PyUnicode_AsUTF8(%struct._object*) #1

declare %struct._object* @_PyCodec_LookupTextEncoding(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare %struct._object* @_PyCodecInfo_GetIncrementalDecoder(%struct._object*, i8*) #1

declare %struct._object* @_PyObject_CallFunction_SizeT(%struct._object*, i8*, ...) #1

declare %struct._object* @_PyCodecInfo_GetIncrementalEncoder(%struct._object*, i8*) #1

declare i32 @PyUnicode_CompareWithASCIIString(%struct._object*, i8*) #1

declare i32 @_PyObject_HasAttrId(%struct._object*, %struct._Py_Identifier*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @ascii_encode(%struct.textio* %self, %struct._object* %text) #0 {
entry:
  %self.addr = alloca %struct.textio*, align 8
  %text.addr = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store %struct._object* %text, %struct._object** %text.addr, align 8
  %0 = load %struct._object*, %struct._object** %text.addr, align 8
  %1 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %errors = getelementptr inbounds %struct.textio, %struct.textio* %1, i32 0, i32 9
  %2 = load %struct._object*, %struct._object** %errors, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %3, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %call = call %struct._object* @_PyUnicode_AsASCIIString(%struct._object* %0, i8* %arraydecay)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @latin1_encode(%struct.textio* %self, %struct._object* %text) #0 {
entry:
  %self.addr = alloca %struct.textio*, align 8
  %text.addr = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store %struct._object* %text, %struct._object** %text.addr, align 8
  %0 = load %struct._object*, %struct._object** %text.addr, align 8
  %1 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %errors = getelementptr inbounds %struct.textio, %struct.textio* %1, i32 0, i32 9
  %2 = load %struct._object*, %struct._object** %errors, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %3, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %call = call %struct._object* @_PyUnicode_AsLatin1String(%struct._object* %0, i8* %arraydecay)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf8_encode(%struct.textio* %self, %struct._object* %text) #0 {
entry:
  %self.addr = alloca %struct.textio*, align 8
  %text.addr = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store %struct._object* %text, %struct._object** %text.addr, align 8
  %0 = load %struct._object*, %struct._object** %text.addr, align 8
  %1 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %errors = getelementptr inbounds %struct.textio, %struct.textio* %1, i32 0, i32 9
  %2 = load %struct._object*, %struct._object** %errors, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %3, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %call = call %struct._object* @_PyUnicode_AsUTF8String(%struct._object* %0, i8* %arraydecay)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf16be_encode(%struct.textio* %self, %struct._object* %text) #0 {
entry:
  %self.addr = alloca %struct.textio*, align 8
  %text.addr = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store %struct._object* %text, %struct._object** %text.addr, align 8
  %0 = load %struct._object*, %struct._object** %text.addr, align 8
  %1 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %errors = getelementptr inbounds %struct.textio, %struct.textio* %1, i32 0, i32 9
  %2 = load %struct._object*, %struct._object** %errors, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %3, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %call = call %struct._object* @_PyUnicode_EncodeUTF16(%struct._object* %0, i8* %arraydecay, i32 1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf16le_encode(%struct.textio* %self, %struct._object* %text) #0 {
entry:
  %self.addr = alloca %struct.textio*, align 8
  %text.addr = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store %struct._object* %text, %struct._object** %text.addr, align 8
  %0 = load %struct._object*, %struct._object** %text.addr, align 8
  %1 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %errors = getelementptr inbounds %struct.textio, %struct.textio* %1, i32 0, i32 9
  %2 = load %struct._object*, %struct._object** %errors, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %3, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %call = call %struct._object* @_PyUnicode_EncodeUTF16(%struct._object* %0, i8* %arraydecay, i32 -1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf16_encode(%struct.textio* %self, %struct._object* %text) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.textio*, align 8
  %text.addr = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store %struct._object* %text, %struct._object** %text.addr, align 8
  %0 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoding_start_of_stream = getelementptr inbounds %struct.textio, %struct.textio* %0, i32 0, i32 21
  %1 = load i8, i8* %encoding_start_of_stream, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %3 = load %struct._object*, %struct._object** %text.addr, align 8
  %call = call %struct._object* @utf16le_encode(%struct.textio* %2, %struct._object* %3)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %text.addr, align 8
  %5 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %errors = getelementptr inbounds %struct.textio, %struct.textio* %5, i32 0, i32 9
  %6 = load %struct._object*, %struct._object** %errors, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %7, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %call1 = call %struct._object* @_PyUnicode_EncodeUTF16(%struct._object* %4, i8* %arraydecay, i32 0)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf32be_encode(%struct.textio* %self, %struct._object* %text) #0 {
entry:
  %self.addr = alloca %struct.textio*, align 8
  %text.addr = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store %struct._object* %text, %struct._object** %text.addr, align 8
  %0 = load %struct._object*, %struct._object** %text.addr, align 8
  %1 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %errors = getelementptr inbounds %struct.textio, %struct.textio* %1, i32 0, i32 9
  %2 = load %struct._object*, %struct._object** %errors, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %3, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %call = call %struct._object* @_PyUnicode_EncodeUTF32(%struct._object* %0, i8* %arraydecay, i32 1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf32le_encode(%struct.textio* %self, %struct._object* %text) #0 {
entry:
  %self.addr = alloca %struct.textio*, align 8
  %text.addr = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store %struct._object* %text, %struct._object** %text.addr, align 8
  %0 = load %struct._object*, %struct._object** %text.addr, align 8
  %1 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %errors = getelementptr inbounds %struct.textio, %struct.textio* %1, i32 0, i32 9
  %2 = load %struct._object*, %struct._object** %errors, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %3, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %call = call %struct._object* @_PyUnicode_EncodeUTF32(%struct._object* %0, i8* %arraydecay, i32 -1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf32_encode(%struct.textio* %self, %struct._object* %text) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.textio*, align 8
  %text.addr = alloca %struct._object*, align 8
  store %struct.textio* %self, %struct.textio** %self.addr, align 8
  store %struct._object* %text, %struct._object** %text.addr, align 8
  %0 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %encoding_start_of_stream = getelementptr inbounds %struct.textio, %struct.textio* %0, i32 0, i32 21
  %1 = load i8, i8* %encoding_start_of_stream, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %3 = load %struct._object*, %struct._object** %text.addr, align 8
  %call = call %struct._object* @utf32le_encode(%struct.textio* %2, %struct._object* %3)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %text.addr, align 8
  %5 = load %struct.textio*, %struct.textio** %self.addr, align 8
  %errors = getelementptr inbounds %struct.textio, %struct.textio* %5, i32 0, i32 9
  %6 = load %struct._object*, %struct._object** %errors, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %7, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %call1 = call %struct._object* @_PyUnicode_EncodeUTF32(%struct._object* %4, i8* %arraydecay, i32 0)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

declare %struct._object* @_PyUnicode_AsASCIIString(%struct._object*, i8*) #1

declare %struct._object* @_PyUnicode_AsLatin1String(%struct._object*, i8*) #1

declare %struct._object* @_PyUnicode_AsUTF8String(%struct._object*, i8*) #1

declare %struct._object* @_PyUnicode_EncodeUTF16(%struct._object*, i8*, i32) #1

declare %struct._object* @_PyUnicode_EncodeUTF32(%struct._object*, i8*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
