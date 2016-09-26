; ModuleID = './stringio.bc'
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
%struct.stringio = type { %struct._object, i32*, i64, i64, i64, i32, %struct._PyAccu, i8, i8, i8, i8, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object* }
%struct._PyAccu = type { %struct._object*, %struct._object* }
%union._gc_head = type { %struct.anon }
%struct.anon = type { %union._gc_head*, %union._gc_head*, i64 }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon.0, i32* }
%struct.anon.0 = type { i32 }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }

@.str = private unnamed_addr constant [13 x i8] c"_io.StringIO\00", align 1
@stringio_doc = internal global [175 x i8] c"Text I/O implementation using an in-memory buffer.\0A\0AThe initial_value argument sets the value of object.  The newline\0Aargument is like the one of TextIOWrapper's constructor.\00", align 16
@stringio_methods = internal global [14 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.stringio*)* @stringio_close to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([165 x i8], [165 x i8]* @stringio_close_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.stringio*)* @stringio_getvalue to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @stringio_getvalue_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.stringio*, %struct._object*)* @stringio_read to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([149 x i8], [149 x i8]* @stringio_read_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.stringio*, %struct._object*)* @stringio_readline to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @stringio_readline_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.stringio*)* @stringio_tell to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @stringio_tell_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.stringio*, %struct._object*)* @stringio_truncate to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([179 x i8], [179 x i8]* @stringio_truncate_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.stringio*, %struct._object*)* @stringio_seek to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([270 x i8], [270 x i8]* @stringio_seek_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.stringio*, %struct._object*)* @stringio_write to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @stringio_write_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.stringio*, %struct._object*)* @stringio_seekable to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @stringio_seekable_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.stringio*, %struct._object*)* @stringio_readable to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @stringio_readable_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.stringio*, %struct._object*)* @stringio_writable to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @stringio_writable_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.stringio*)* @stringio_getstate to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.stringio*, %struct._object*)* @stringio_setstate to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@stringio_getset = internal global [4 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.stringio*, i8*)* @stringio_closed to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.stringio*, i8*)* @stringio_newlines to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.stringio*, i8*)* @stringio_line_buffering to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@PyStringIO_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i64 120, i64 0, void (%struct._object*)* bitcast (void (%struct.stringio*)* @stringio_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([175 x i8], [175 x i8]* @stringio_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.stringio*, i32 (%struct._object*, i8*)*, i8*)* @stringio_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.stringio*)* @stringio_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 112, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.stringio*)* @stringio_iternext to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([14 x %struct.PyMethodDef], [14 x %struct.PyMethodDef]* @stringio_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* getelementptr inbounds ([4 x %struct.PyGetSetDef], [4 x %struct.PyGetSetDef]* @stringio_getset, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 104, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.stringio*, %struct._object*, %struct._object*)* @stringio_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @stringio_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_ValueError = external global %struct._object*, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"I/O operation on uninitialized object\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"I/O operation on closed file\00", align 1
@_PyIO_str_readline = external global %struct._object*, align 8
@PyExc_IOError = external global %struct._object*, align 8
@.str.3 = private unnamed_addr constant [60 x i8] c"readline() should have returned an str object, not '%.200s'\00", align 1
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"new buffer size too large\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@stringio_close_doc = internal global [165 x i8] c"Close the IO object. Attempting any further operation after the\0Aobject is closed will raise a ValueError.\0A\0AThis method has no effect if the file is already closed.\0A\00", align 16
@.str.6 = private unnamed_addr constant [9 x i8] c"getvalue\00", align 1
@stringio_getvalue_doc = internal global [44 x i8] c"Retrieve the entire contents of the object.\00", align 16
@.str.7 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@stringio_read_doc = internal global [149 x i8] c"Read at most n characters, returned as a string.\0A\0AIf the argument is negative or omitted, read until EOF\0Ais reached. Return an empty string at EOF.\0A\00", align 16
@.str.8 = private unnamed_addr constant [9 x i8] c"readline\00", align 1
@stringio_readline_doc = internal global [80 x i8] c"Read until newline or EOF.\0A\0AReturns an empty string if EOF is hit immediately.\0A\00", align 16
@.str.9 = private unnamed_addr constant [5 x i8] c"tell\00", align 1
@stringio_tell_doc = internal global [32 x i8] c"Tell the current file position.\00", align 16
@.str.10 = private unnamed_addr constant [9 x i8] c"truncate\00", align 1
@stringio_truncate_doc = internal global [179 x i8] c"Truncate size to pos.\0A\0AThe pos argument defaults to the current file position, as\0Areturned by tell().  The current file position is unchanged.\0AReturns the new absolute position.\0A\00", align 16
@.str.11 = private unnamed_addr constant [5 x i8] c"seek\00", align 1
@stringio_seek_doc = internal global [270 x i8] c"Change stream position.\0A\0ASeek to character offset pos relative to position indicated by whence:\0A    0  Start of stream (the default).  pos should be >= 0;\0A    1  Current position - pos must be 0;\0A    2  End of stream - pos must be 0.\0AReturns the new absolute position.\0A\00", align 16
@.str.12 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@stringio_write_doc = internal global [117 x i8] c"Write string to file.\0A\0AReturns the number of characters written, which is always equal to\0Athe length of the string.\0A\00", align 16
@.str.13 = private unnamed_addr constant [9 x i8] c"seekable\00", align 1
@stringio_seekable_doc = internal global [65 x i8] c"seekable() -> bool. Returns True if the IO object can be seeked.\00", align 16
@.str.14 = private unnamed_addr constant [9 x i8] c"readable\00", align 1
@stringio_readable_doc = internal global [63 x i8] c"readable() -> bool. Returns True if the IO object can be read.\00", align 16
@.str.15 = private unnamed_addr constant [9 x i8] c"writable\00", align 1
@stringio_writable_doc = internal global [66 x i8] c"writable() -> bool. Returns True if the IO object can be written.\00", align 16
@.str.16 = private unnamed_addr constant [13 x i8] c"__getstate__\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"__setstate__\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.18 = private unnamed_addr constant [8 x i8] c"|O:read\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.19 = private unnamed_addr constant [36 x i8] c"integer argument expected, got '%s'\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"|O:readline\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"|O:truncate\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"Negative size value %zd\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"n|i:seek\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"Invalid whence (%i, should be 0, 1 or 2)\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"Negative seek position %zd\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"Can't do nonzero cur-relative seeks\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"string argument expected, got '%s'\00", align 1
@_PyIO_str_nl = external global %struct._object*, align 8
@.str.28 = private unnamed_addr constant [23 x i8] c"new position too large\00", align 1
@_Py_TrueStruct = external global %struct._longobject, align 8
@.str.29 = private unnamed_addr constant [7 x i8] c"(OOnN)\00", align 1
@.str.30 = private unnamed_addr constant [59 x i8] c"%.200s.__setstate__ argument should be 4-tuple, got %.200s\00", align 1
@.str.31 = private unnamed_addr constant [51 x i8] c"third item of state must be an integer, got %.200s\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"position value cannot be negative\00", align 1
@.str.33 = private unnamed_addr constant [52 x i8] c"fourth item of state should be a dict, got a %.200s\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"newlines\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"line_buffering\00", align 1
@_PyIO_str_newlines = external global %struct._object*, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.37 = private unnamed_addr constant [14 x i8] c"initial_value\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"newline\00", align 1
@stringio_init.kwlist = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i8* null], align 16
@.str.39 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"|OO:__init__\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c"newline must be str or None, not %.200s\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"illegal newline value: %R\00", align 1
@.str.43 = private unnamed_addr constant [46 x i8] c"initial_value must be str or None, not %.200s\00", align 1
@PyIncrementalNewlineDecoder_Type = external global %struct._typeobject, align 8
@.str.44 = private unnamed_addr constant [3 x i8] c"Oi\00", align 1

; Function Attrs: nounwind uwtable
define internal void @stringio_dealloc(%struct.stringio* %self) #0 {
entry:
  %self.addr = alloca %struct.stringio*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp30 = alloca %struct._object*, align 8
  %_py_decref_tmp35 = alloca %struct._object*, align 8
  %_py_tmp48 = alloca %struct._object*, align 8
  %_py_decref_tmp53 = alloca %struct._object*, align 8
  %_py_tmp66 = alloca %struct._object*, align 8
  %_py_decref_tmp71 = alloca %struct._object*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %1 = bitcast %struct.stringio* %0 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %1, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %2 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %2 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %3 = load i64, i64* %gc_refs, align 8
  %and = and i64 %3, 1
  %or = or i64 %and, -4
  %4 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc2 = bitcast %union._gc_head* %4 to %struct.anon*
  %gc_refs3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2
  store i64 %or, i64* %gc_refs3, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.1
  %5 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc4 = bitcast %union._gc_head* %5 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 0
  %6 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  %7 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc5 = bitcast %union._gc_head* %7 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 1
  %8 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %gc6 = bitcast %union._gc_head* %8 to %struct.anon*
  %gc_next7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 0
  store %union._gc_head* %6, %union._gc_head** %gc_next7, align 8
  %9 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc8 = bitcast %union._gc_head* %9 to %struct.anon*
  %gc_prev9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1
  %10 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8
  %11 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc10 = bitcast %union._gc_head* %11 to %struct.anon*
  %gc_next11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 0
  %12 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8
  %gc12 = bitcast %union._gc_head* %12 to %struct.anon*
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 1
  store %union._gc_head* %10, %union._gc_head** %gc_prev13, align 8
  %13 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc14 = bitcast %union._gc_head* %13 to %struct.anon*
  %gc_next15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 0
  store %union._gc_head* null, %union._gc_head** %gc_next15, align 8
  br label %do.end.16

do.end.16:                                        ; preds = %do.end
  %14 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %14, i32 0, i32 7
  store i8 0, i8* %ok, align 1
  %15 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %buf = getelementptr inbounds %struct.stringio, %struct.stringio* %15, i32 0, i32 1
  %16 = load i32*, i32** %buf, align 8
  %tobool = icmp ne i32* %16, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end.16
  %17 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %buf17 = getelementptr inbounds %struct.stringio, %struct.stringio* %17, i32 0, i32 1
  %18 = load i32*, i32** %buf17, align 8
  %19 = bitcast i32* %18 to i8*
  call void @PyMem_Free(i8* %19)
  %20 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %buf18 = getelementptr inbounds %struct.stringio, %struct.stringio* %20, i32 0, i32 1
  store i32* null, i32** %buf18, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end.16
  %21 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %accu = getelementptr inbounds %struct.stringio, %struct.stringio* %21, i32 0, i32 6
  call void @_PyAccu_Destroy(%struct._PyAccu* %accu)
  br label %do.body.19

do.body.19:                                       ; preds = %if.end
  %22 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %readnl = getelementptr inbounds %struct.stringio, %struct.stringio* %22, i32 0, i32 12
  %23 = load %struct._object*, %struct._object** %readnl, align 8
  store %struct._object* %23, %struct._object** %_py_tmp, align 8
  %24 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %24, null
  br i1 %cmp, label %if.then.20, label %if.end.27

if.then.20:                                       ; preds = %do.body.19
  %25 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %readnl21 = getelementptr inbounds %struct.stringio, %struct.stringio* %25, i32 0, i32 12
  store %struct._object* null, %struct._object** %readnl21, align 8
  br label %do.body.22

do.body.22:                                       ; preds = %if.then.20
  %26 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %28, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp23 = icmp ne i64 %dec, 0
  br i1 %cmp23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %do.body.22
  br label %if.end.25

if.else:                                          ; preds = %do.body.22
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %31(%struct._object* %32)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.24
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %if.end.27

if.end.27:                                        ; preds = %do.end.26, %do.body.19
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  br label %do.body.29

do.body.29:                                       ; preds = %do.end.28
  %33 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %writenl = getelementptr inbounds %struct.stringio, %struct.stringio* %33, i32 0, i32 13
  %34 = load %struct._object*, %struct._object** %writenl, align 8
  store %struct._object* %34, %struct._object** %_py_tmp30, align 8
  %35 = load %struct._object*, %struct._object** %_py_tmp30, align 8
  %cmp31 = icmp ne %struct._object* %35, null
  br i1 %cmp31, label %if.then.32, label %if.end.45

if.then.32:                                       ; preds = %do.body.29
  %36 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %writenl33 = getelementptr inbounds %struct.stringio, %struct.stringio* %36, i32 0, i32 13
  store %struct._object* null, %struct._object** %writenl33, align 8
  br label %do.body.34

do.body.34:                                       ; preds = %if.then.32
  %37 = load %struct._object*, %struct._object** %_py_tmp30, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp35, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt36, align 8
  %dec37 = add i64 %39, -1
  store i64 %dec37, i64* %ob_refcnt36, align 8
  %cmp38 = icmp ne i64 %dec37, 0
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %do.body.34
  br label %if.end.43

if.else.40:                                       ; preds = %do.body.34
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  call void %42(%struct._object* %43)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %if.end.45

if.end.45:                                        ; preds = %do.end.44, %do.body.29
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %do.body.47

do.body.47:                                       ; preds = %do.end.46
  %44 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %decoder = getelementptr inbounds %struct.stringio, %struct.stringio* %44, i32 0, i32 11
  %45 = load %struct._object*, %struct._object** %decoder, align 8
  store %struct._object* %45, %struct._object** %_py_tmp48, align 8
  %46 = load %struct._object*, %struct._object** %_py_tmp48, align 8
  %cmp49 = icmp ne %struct._object* %46, null
  br i1 %cmp49, label %if.then.50, label %if.end.63

if.then.50:                                       ; preds = %do.body.47
  %47 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %decoder51 = getelementptr inbounds %struct.stringio, %struct.stringio* %47, i32 0, i32 11
  store %struct._object* null, %struct._object** %decoder51, align 8
  br label %do.body.52

do.body.52:                                       ; preds = %if.then.50
  %48 = load %struct._object*, %struct._object** %_py_tmp48, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp53, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_refcnt54 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt54, align 8
  %dec55 = add i64 %50, -1
  store i64 %dec55, i64* %ob_refcnt54, align 8
  %cmp56 = icmp ne i64 %dec55, 0
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %do.body.52
  br label %if.end.61

if.else.58:                                       ; preds = %do.body.52
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_type59 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type59, align 8
  %tp_dealloc60 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc60, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  call void %53(%struct._object* %54)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %if.then.57
  br label %do.end.62

do.end.62:                                        ; preds = %if.end.61
  br label %if.end.63

if.end.63:                                        ; preds = %do.end.62, %do.body.47
  br label %do.end.64

do.end.64:                                        ; preds = %if.end.63
  br label %do.body.65

do.body.65:                                       ; preds = %do.end.64
  %55 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %dict = getelementptr inbounds %struct.stringio, %struct.stringio* %55, i32 0, i32 14
  %56 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %56, %struct._object** %_py_tmp66, align 8
  %57 = load %struct._object*, %struct._object** %_py_tmp66, align 8
  %cmp67 = icmp ne %struct._object* %57, null
  br i1 %cmp67, label %if.then.68, label %if.end.81

if.then.68:                                       ; preds = %do.body.65
  %58 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %dict69 = getelementptr inbounds %struct.stringio, %struct.stringio* %58, i32 0, i32 14
  store %struct._object* null, %struct._object** %dict69, align 8
  br label %do.body.70

do.body.70:                                       ; preds = %if.then.68
  %59 = load %struct._object*, %struct._object** %_py_tmp66, align 8
  store %struct._object* %59, %struct._object** %_py_decref_tmp71, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8
  %ob_refcnt72 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0
  %61 = load i64, i64* %ob_refcnt72, align 8
  %dec73 = add i64 %61, -1
  store i64 %dec73, i64* %ob_refcnt72, align 8
  %cmp74 = icmp ne i64 %dec73, 0
  br i1 %cmp74, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %do.body.70
  br label %if.end.79

if.else.76:                                       ; preds = %do.body.70
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8
  %ob_type77 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 1
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type77, align 8
  %tp_dealloc78 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i32 0, i32 4
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc78, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8
  call void %64(%struct._object* %65)
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.76, %if.then.75
  br label %do.end.80

do.end.80:                                        ; preds = %if.end.79
  br label %if.end.81

if.end.81:                                        ; preds = %do.end.80, %do.body.65
  br label %do.end.82

do.end.82:                                        ; preds = %if.end.81
  %66 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %weakreflist = getelementptr inbounds %struct.stringio, %struct.stringio* %66, i32 0, i32 15
  %67 = load %struct._object*, %struct._object** %weakreflist, align 8
  %cmp83 = icmp ne %struct._object* %67, null
  br i1 %cmp83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %do.end.82
  %68 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %69 = bitcast %struct.stringio* %68 to %struct._object*
  call void @PyObject_ClearWeakRefs(%struct._object* %69)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %do.end.82
  %70 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %71 = bitcast %struct.stringio* %70 to %struct._object*
  %ob_type86 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 1
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type86, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %72, i32 0, i32 38
  %73 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %74 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %75 = bitcast %struct.stringio* %74 to i8*
  call void %73(i8* %75)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @stringio_traverse(%struct.stringio* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.stringio*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %dict = getelementptr inbounds %struct.stringio, %struct.stringio* %0, i32 0, i32 14
  %1 = load %struct._object*, %struct._object** %dict, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %dict1 = getelementptr inbounds %struct.stringio, %struct.stringio* %3, i32 0, i32 14
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
define internal i32 @stringio_clear(%struct.stringio* %self) #0 {
entry:
  %self.addr = alloca %struct.stringio*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %dict = getelementptr inbounds %struct.stringio, %struct.stringio* %0, i32 0, i32 14
  %1 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %1, %struct._object** %_py_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %3 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %dict1 = getelementptr inbounds %struct.stringio, %struct.stringio* %3, i32 0, i32 14
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
define internal %struct._object* @stringio_iternext(%struct.stringio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.stringio*, align 8
  %line = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp36 = alloca %struct._object*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8
  %0 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %0, i32 0, i32 7
  %1 = load i8, i8* %ok, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp sle i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %3, i32 0, i32 8
  %4 = load i8, i8* %closed, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %call = call i32 @realize(%struct.stringio* %6)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %7 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %8 = bitcast %struct.stringio* %7 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp8 = icmp eq %struct._typeobject* %9, @PyStringIO_Type
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.7
  %10 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %call11 = call %struct._object* @_stringio_readline(%struct.stringio* %10, i64 -1)
  store %struct._object* %call11, %struct._object** %line, align 8
  br label %if.end.27

if.else:                                          ; preds = %if.end.7
  %11 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %12 = bitcast %struct.stringio* %11 to %struct._object*
  %13 = load %struct._object*, %struct._object** @_PyIO_str_readline, align 8
  %call12 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %12, %struct._object* %13, i8* null)
  store %struct._object* %call12, %struct._object** %line, align 8
  %14 = load %struct._object*, %struct._object** %line, align 8
  %tobool13 = icmp ne %struct._object* %14, null
  br i1 %tobool13, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %if.else
  %15 = load %struct._object*, %struct._object** %line, align 8
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 19
  %17 = load i64, i64* %tp_flags, align 8
  %and = and i64 %17, 268435456
  %cmp15 = icmp ne i64 %and, 0
  br i1 %cmp15, label %if.end.26, label %if.then.17

if.then.17:                                       ; preds = %land.lhs.true
  %18 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %19 = load %struct._object*, %struct._object** %line, align 8
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 1
  %21 = load i8*, i8** %tp_name, align 8
  %call19 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %18, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i32 0, i32 0), i8* %21)
  br label %do.body

do.body:                                          ; preds = %if.then.17
  %22 = load %struct._object*, %struct._object** %line, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %24, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp20 = icmp ne i64 %dec, 0
  br i1 %cmp20, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body
  br label %if.end.25

if.else.23:                                       ; preds = %do.body
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %27(%struct._object* %28)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.23, %if.then.22
  br label %do.end

do.end:                                           ; preds = %if.end.25
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.26:                                        ; preds = %land.lhs.true, %if.else
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.10
  %29 = load %struct._object*, %struct._object** %line, align 8
  %cmp28 = icmp eq %struct._object* %29, null
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.27
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %if.end.27
  %30 = load %struct._object*, %struct._object** %line, align 8
  %31 = bitcast %struct._object* %30 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %31, i32 0, i32 1
  %32 = load i64, i64* %length, align 8
  %cmp32 = icmp eq i64 %32, 0
  br i1 %cmp32, label %if.then.34, label %if.end.47

if.then.34:                                       ; preds = %if.end.31
  br label %do.body.35

do.body.35:                                       ; preds = %if.then.34
  %33 = load %struct._object*, %struct._object** %line, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp36, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_refcnt37 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt37, align 8
  %dec38 = add i64 %35, -1
  store i64 %dec38, i64* %ob_refcnt37, align 8
  %cmp39 = icmp ne i64 %dec38, 0
  br i1 %cmp39, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.35
  br label %if.end.45

if.else.42:                                       ; preds = %do.body.35
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8
  %tp_dealloc44 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc44, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  call void %38(%struct._object* %39)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %if.then.41
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.47:                                        ; preds = %if.end.31
  %40 = load %struct._object*, %struct._object** %line, align 8
  store %struct._object* %40, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.47, %do.end.46, %if.then.30, %do.end, %if.then.6, %if.then.2, %if.then
  %41 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %41
}

; Function Attrs: nounwind uwtable
define internal i32 @stringio_init(%struct.stringio* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.stringio*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %kwlist = alloca [3 x i8*], align 16
  %value = alloca %struct._object*, align 8
  %newline_obj = alloca %struct._object*, align 8
  %newline = alloca i8*, align 8
  %value_len = alloca i64, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp85 = alloca %struct._object*, align 8
  %_py_decref_tmp91 = alloca %struct._object*, align 8
  %_py_tmp105 = alloca %struct._object*, align 8
  %_py_decref_tmp111 = alloca %struct._object*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = bitcast [3 x i8*]* %kwlist to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([3 x i8*]* @stringio_init.kwlist to i8*), i64 24, i32 16, i1 false)
  store %struct._object* null, %struct._object** %value, align 8
  store %struct._object* null, %struct._object** %newline_obj, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i8** %newline, align 8
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %2 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %arraydecay = getelementptr inbounds [3 x i8*], [3 x i8*]* %kwlist, i32 0, i32 0
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %1, %struct._object* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i32 0, i32 0), i8** %arraydecay, %struct._object** %value, %struct._object** %newline_obj)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %newline_obj, align 8
  %cmp = icmp eq %struct._object* %3, @_Py_NoneStruct
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  store i8* null, i8** %newline, align 8
  br label %if.end.14

if.else:                                          ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %newline_obj, align 8
  %tobool2 = icmp ne %struct._object* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.13

if.then.3:                                        ; preds = %if.else
  %5 = load %struct._object*, %struct._object** %newline_obj, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 19
  %7 = load i64, i64* %tp_flags, align 8
  %and = and i64 %7, 268435456
  %cmp4 = icmp ne i64 %and, 0
  br i1 %cmp4, label %if.end.8, label %if.then.5

if.then.5:                                        ; preds = %if.then.3
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %9 = load %struct._object*, %struct._object** %newline_obj, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 1
  %11 = load i8*, i8** %tp_name, align 8
  %call7 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.41, i32 0, i32 0), i8* %11)
  store i32 -1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.then.3
  %12 = load %struct._object*, %struct._object** %newline_obj, align 8
  %call9 = call i8* @PyUnicode_AsUTF8(%struct._object* %12)
  store i8* %call9, i8** %newline, align 8
  %13 = load i8*, i8** %newline, align 8
  %cmp10 = icmp eq i8* %13, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.else
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.1
  %14 = load i8*, i8** %newline, align 8
  %tobool15 = icmp ne i8* %14, null
  br i1 %tobool15, label %land.lhs.true, label %if.end.55

land.lhs.true:                                    ; preds = %if.end.14
  %15 = load i8*, i8** %newline, align 8
  %arrayidx = getelementptr i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %16 to i32
  %cmp16 = icmp ne i32 %conv, 0
  br i1 %cmp16, label %land.lhs.true.18, label %if.end.55

land.lhs.true.18:                                 ; preds = %land.lhs.true
  %17 = load i8*, i8** %newline, align 8
  %arrayidx19 = getelementptr i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %18 to i32
  %cmp21 = icmp eq i32 %conv20, 10
  br i1 %cmp21, label %land.lhs.true.23, label %land.lhs.true.28

land.lhs.true.23:                                 ; preds = %land.lhs.true.18
  %19 = load i8*, i8** %newline, align 8
  %arrayidx24 = getelementptr i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %20 to i32
  %cmp26 = icmp eq i32 %conv25, 0
  br i1 %cmp26, label %if.end.55, label %land.lhs.true.28

land.lhs.true.28:                                 ; preds = %land.lhs.true.23, %land.lhs.true.18
  %21 = load i8*, i8** %newline, align 8
  %arrayidx29 = getelementptr i8, i8* %21, i64 0
  %22 = load i8, i8* %arrayidx29, align 1
  %conv30 = sext i8 %22 to i32
  %cmp31 = icmp eq i32 %conv30, 13
  br i1 %cmp31, label %land.lhs.true.33, label %land.lhs.true.38

land.lhs.true.33:                                 ; preds = %land.lhs.true.28
  %23 = load i8*, i8** %newline, align 8
  %arrayidx34 = getelementptr i8, i8* %23, i64 1
  %24 = load i8, i8* %arrayidx34, align 1
  %conv35 = sext i8 %24 to i32
  %cmp36 = icmp eq i32 %conv35, 0
  br i1 %cmp36, label %if.end.55, label %land.lhs.true.38

land.lhs.true.38:                                 ; preds = %land.lhs.true.33, %land.lhs.true.28
  %25 = load i8*, i8** %newline, align 8
  %arrayidx39 = getelementptr i8, i8* %25, i64 0
  %26 = load i8, i8* %arrayidx39, align 1
  %conv40 = sext i8 %26 to i32
  %cmp41 = icmp eq i32 %conv40, 13
  br i1 %cmp41, label %land.lhs.true.43, label %if.then.53

land.lhs.true.43:                                 ; preds = %land.lhs.true.38
  %27 = load i8*, i8** %newline, align 8
  %arrayidx44 = getelementptr i8, i8* %27, i64 1
  %28 = load i8, i8* %arrayidx44, align 1
  %conv45 = sext i8 %28 to i32
  %cmp46 = icmp eq i32 %conv45, 10
  br i1 %cmp46, label %land.lhs.true.48, label %if.then.53

land.lhs.true.48:                                 ; preds = %land.lhs.true.43
  %29 = load i8*, i8** %newline, align 8
  %arrayidx49 = getelementptr i8, i8* %29, i64 2
  %30 = load i8, i8* %arrayidx49, align 1
  %conv50 = sext i8 %30 to i32
  %cmp51 = icmp eq i32 %conv50, 0
  br i1 %cmp51, label %if.end.55, label %if.then.53

if.then.53:                                       ; preds = %land.lhs.true.48, %land.lhs.true.43, %land.lhs.true.38
  %31 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %32 = load %struct._object*, %struct._object** %newline_obj, align 8
  %call54 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i32 0, i32 0), %struct._object* %32)
  store i32 -1, i32* %retval
  br label %return

if.end.55:                                        ; preds = %land.lhs.true.48, %land.lhs.true.33, %land.lhs.true.23, %land.lhs.true, %if.end.14
  %33 = load %struct._object*, %struct._object** %value, align 8
  %tobool56 = icmp ne %struct._object* %33, null
  br i1 %tobool56, label %land.lhs.true.57, label %if.end.70

land.lhs.true.57:                                 ; preds = %if.end.55
  %34 = load %struct._object*, %struct._object** %value, align 8
  %cmp58 = icmp ne %struct._object* %34, @_Py_NoneStruct
  br i1 %cmp58, label %land.lhs.true.60, label %if.end.70

land.lhs.true.60:                                 ; preds = %land.lhs.true.57
  %35 = load %struct._object*, %struct._object** %value, align 8
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8
  %tp_flags62 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 19
  %37 = load i64, i64* %tp_flags62, align 8
  %and63 = and i64 %37, 268435456
  %cmp64 = icmp ne i64 %and63, 0
  br i1 %cmp64, label %if.end.70, label %if.then.66

if.then.66:                                       ; preds = %land.lhs.true.60
  %38 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %39 = load %struct._object*, %struct._object** %value, align 8
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8
  %tp_name68 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 1
  %41 = load i8*, i8** %tp_name68, align 8
  %call69 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %38, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.43, i32 0, i32 0), i8* %41)
  store i32 -1, i32* %retval
  br label %return

if.end.70:                                        ; preds = %land.lhs.true.60, %land.lhs.true.57, %if.end.55
  %42 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %42, i32 0, i32 7
  store i8 0, i8* %ok, align 1
  %43 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %accu = getelementptr inbounds %struct.stringio, %struct.stringio* %43, i32 0, i32 6
  call void @_PyAccu_Destroy(%struct._PyAccu* %accu)
  br label %do.body

do.body:                                          ; preds = %if.end.70
  %44 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %readnl = getelementptr inbounds %struct.stringio, %struct.stringio* %44, i32 0, i32 12
  %45 = load %struct._object*, %struct._object** %readnl, align 8
  store %struct._object* %45, %struct._object** %_py_tmp, align 8
  %46 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp71 = icmp ne %struct._object* %46, null
  br i1 %cmp71, label %if.then.73, label %if.end.82

if.then.73:                                       ; preds = %do.body
  %47 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %readnl74 = getelementptr inbounds %struct.stringio, %struct.stringio* %47, i32 0, i32 12
  store %struct._object* null, %struct._object** %readnl74, align 8
  br label %do.body.75

do.body.75:                                       ; preds = %if.then.73
  %48 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %50, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp76 = icmp ne i64 %dec, 0
  br i1 %cmp76, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %do.body.75
  br label %if.end.81

if.else.79:                                       ; preds = %do.body.75
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type80 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type80, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %53(%struct._object* %54)
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.79, %if.then.78
  br label %do.end

do.end:                                           ; preds = %if.end.81
  br label %if.end.82

if.end.82:                                        ; preds = %do.end, %do.body
  br label %do.end.83

do.end.83:                                        ; preds = %if.end.82
  br label %do.body.84

do.body.84:                                       ; preds = %do.end.83
  %55 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %writenl = getelementptr inbounds %struct.stringio, %struct.stringio* %55, i32 0, i32 13
  %56 = load %struct._object*, %struct._object** %writenl, align 8
  store %struct._object* %56, %struct._object** %_py_tmp85, align 8
  %57 = load %struct._object*, %struct._object** %_py_tmp85, align 8
  %cmp86 = icmp ne %struct._object* %57, null
  br i1 %cmp86, label %if.then.88, label %if.end.102

if.then.88:                                       ; preds = %do.body.84
  %58 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %writenl89 = getelementptr inbounds %struct.stringio, %struct.stringio* %58, i32 0, i32 13
  store %struct._object* null, %struct._object** %writenl89, align 8
  br label %do.body.90

do.body.90:                                       ; preds = %if.then.88
  %59 = load %struct._object*, %struct._object** %_py_tmp85, align 8
  store %struct._object* %59, %struct._object** %_py_decref_tmp91, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8
  %ob_refcnt92 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0
  %61 = load i64, i64* %ob_refcnt92, align 8
  %dec93 = add i64 %61, -1
  store i64 %dec93, i64* %ob_refcnt92, align 8
  %cmp94 = icmp ne i64 %dec93, 0
  br i1 %cmp94, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %do.body.90
  br label %if.end.100

if.else.97:                                       ; preds = %do.body.90
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8
  %ob_type98 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 1
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type98, align 8
  %tp_dealloc99 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i32 0, i32 4
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc99, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8
  call void %64(%struct._object* %65)
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.97, %if.then.96
  br label %do.end.101

do.end.101:                                       ; preds = %if.end.100
  br label %if.end.102

if.end.102:                                       ; preds = %do.end.101, %do.body.84
  br label %do.end.103

do.end.103:                                       ; preds = %if.end.102
  br label %do.body.104

do.body.104:                                      ; preds = %do.end.103
  %66 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %decoder = getelementptr inbounds %struct.stringio, %struct.stringio* %66, i32 0, i32 11
  %67 = load %struct._object*, %struct._object** %decoder, align 8
  store %struct._object* %67, %struct._object** %_py_tmp105, align 8
  %68 = load %struct._object*, %struct._object** %_py_tmp105, align 8
  %cmp106 = icmp ne %struct._object* %68, null
  br i1 %cmp106, label %if.then.108, label %if.end.122

if.then.108:                                      ; preds = %do.body.104
  %69 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %decoder109 = getelementptr inbounds %struct.stringio, %struct.stringio* %69, i32 0, i32 11
  store %struct._object* null, %struct._object** %decoder109, align 8
  br label %do.body.110

do.body.110:                                      ; preds = %if.then.108
  %70 = load %struct._object*, %struct._object** %_py_tmp105, align 8
  store %struct._object* %70, %struct._object** %_py_decref_tmp111, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp111, align 8
  %ob_refcnt112 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 0
  %72 = load i64, i64* %ob_refcnt112, align 8
  %dec113 = add i64 %72, -1
  store i64 %dec113, i64* %ob_refcnt112, align 8
  %cmp114 = icmp ne i64 %dec113, 0
  br i1 %cmp114, label %if.then.116, label %if.else.117

if.then.116:                                      ; preds = %do.body.110
  br label %if.end.120

if.else.117:                                      ; preds = %do.body.110
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp111, align 8
  %ob_type118 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 1
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type118, align 8
  %tp_dealloc119 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %74, i32 0, i32 4
  %75 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc119, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp111, align 8
  call void %75(%struct._object* %76)
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.117, %if.then.116
  br label %do.end.121

do.end.121:                                       ; preds = %if.end.120
  br label %if.end.122

if.end.122:                                       ; preds = %do.end.121, %do.body.104
  br label %do.end.123

do.end.123:                                       ; preds = %if.end.122
  %77 = load i8*, i8** %newline, align 8
  %tobool124 = icmp ne i8* %77, null
  br i1 %tobool124, label %if.then.125, label %if.end.133

if.then.125:                                      ; preds = %do.end.123
  %78 = load i8*, i8** %newline, align 8
  %call126 = call %struct._object* @PyUnicode_FromString(i8* %78)
  %79 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %readnl127 = getelementptr inbounds %struct.stringio, %struct.stringio* %79, i32 0, i32 12
  store %struct._object* %call126, %struct._object** %readnl127, align 8
  %80 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %readnl128 = getelementptr inbounds %struct.stringio, %struct.stringio* %80, i32 0, i32 12
  %81 = load %struct._object*, %struct._object** %readnl128, align 8
  %cmp129 = icmp eq %struct._object* %81, null
  br i1 %cmp129, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %if.then.125
  store i32 -1, i32* %retval
  br label %return

if.end.132:                                       ; preds = %if.then.125
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %do.end.123
  %82 = load i8*, i8** %newline, align 8
  %cmp134 = icmp eq i8* %82, null
  br i1 %cmp134, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.133
  %83 = load i8*, i8** %newline, align 8
  %arrayidx136 = getelementptr i8, i8* %83, i64 0
  %84 = load i8, i8* %arrayidx136, align 1
  %conv137 = sext i8 %84 to i32
  %cmp138 = icmp eq i32 %conv137, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.133
  %85 = phi i1 [ true, %if.end.133 ], [ %cmp138, %lor.rhs ]
  %lor.ext = zext i1 %85 to i32
  %conv140 = trunc i32 %lor.ext to i8
  %86 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %readuniversal = getelementptr inbounds %struct.stringio, %struct.stringio* %86, i32 0, i32 9
  store i8 %conv140, i8* %readuniversal, align 1
  %87 = load i8*, i8** %newline, align 8
  %cmp141 = icmp eq i8* %87, null
  %conv142 = zext i1 %cmp141 to i32
  %conv143 = trunc i32 %conv142 to i8
  %88 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %readtranslate = getelementptr inbounds %struct.stringio, %struct.stringio* %88, i32 0, i32 10
  store i8 %conv143, i8* %readtranslate, align 1
  %89 = load i8*, i8** %newline, align 8
  %cmp144 = icmp ne i8* %89, null
  br i1 %cmp144, label %land.lhs.true.146, label %if.end.156

land.lhs.true.146:                                ; preds = %lor.end
  %90 = load i8*, i8** %newline, align 8
  %arrayidx147 = getelementptr i8, i8* %90, i64 0
  %91 = load i8, i8* %arrayidx147, align 1
  %conv148 = sext i8 %91 to i32
  %cmp149 = icmp eq i32 %conv148, 13
  br i1 %cmp149, label %if.then.151, label %if.end.156

if.then.151:                                      ; preds = %land.lhs.true.146
  %92 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %readnl152 = getelementptr inbounds %struct.stringio, %struct.stringio* %92, i32 0, i32 12
  %93 = load %struct._object*, %struct._object** %readnl152, align 8
  %94 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %writenl153 = getelementptr inbounds %struct.stringio, %struct.stringio* %94, i32 0, i32 13
  store %struct._object* %93, %struct._object** %writenl153, align 8
  %95 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %writenl154 = getelementptr inbounds %struct.stringio, %struct.stringio* %95, i32 0, i32 13
  %96 = load %struct._object*, %struct._object** %writenl154, align 8
  %ob_refcnt155 = getelementptr inbounds %struct._object, %struct._object* %96, i32 0, i32 0
  %97 = load i64, i64* %ob_refcnt155, align 8
  %inc = add i64 %97, 1
  store i64 %inc, i64* %ob_refcnt155, align 8
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.151, %land.lhs.true.146, %lor.end
  %98 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %readuniversal157 = getelementptr inbounds %struct.stringio, %struct.stringio* %98, i32 0, i32 9
  %99 = load i8, i8* %readuniversal157, align 1
  %tobool158 = icmp ne i8 %99, 0
  br i1 %tobool158, label %if.then.159, label %if.end.169

if.then.159:                                      ; preds = %if.end.156
  %100 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %readtranslate160 = getelementptr inbounds %struct.stringio, %struct.stringio* %100, i32 0, i32 10
  %101 = load i8, i8* %readtranslate160, align 1
  %conv161 = sext i8 %101 to i32
  %call162 = call %struct._object* (%struct._object*, i8*, ...) @_PyObject_CallFunction_SizeT(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyIncrementalNewlineDecoder_Type, i32 0, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), %struct._object* @_Py_NoneStruct, i32 %conv161)
  %102 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %decoder163 = getelementptr inbounds %struct.stringio, %struct.stringio* %102, i32 0, i32 11
  store %struct._object* %call162, %struct._object** %decoder163, align 8
  %103 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %decoder164 = getelementptr inbounds %struct.stringio, %struct.stringio* %103, i32 0, i32 11
  %104 = load %struct._object*, %struct._object** %decoder164, align 8
  %cmp165 = icmp eq %struct._object* %104, null
  br i1 %cmp165, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %if.then.159
  store i32 -1, i32* %retval
  br label %return

if.end.168:                                       ; preds = %if.then.159
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %if.end.156
  %105 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %string_size = getelementptr inbounds %struct.stringio, %struct.stringio* %105, i32 0, i32 3
  store i64 0, i64* %string_size, align 8
  %106 = load %struct._object*, %struct._object** %value, align 8
  %tobool170 = icmp ne %struct._object* %106, null
  br i1 %tobool170, label %land.lhs.true.171, label %if.else.176

land.lhs.true.171:                                ; preds = %if.end.169
  %107 = load %struct._object*, %struct._object** %value, align 8
  %cmp172 = icmp ne %struct._object* %107, @_Py_NoneStruct
  br i1 %cmp172, label %if.then.174, label %if.else.176

if.then.174:                                      ; preds = %land.lhs.true.171
  %108 = load %struct._object*, %struct._object** %value, align 8
  %call175 = call i64 @PyUnicode_GetLength(%struct._object* %108)
  store i64 %call175, i64* %value_len, align 8
  br label %if.end.177

if.else.176:                                      ; preds = %land.lhs.true.171, %if.end.169
  store i64 0, i64* %value_len, align 8
  br label %if.end.177

if.end.177:                                       ; preds = %if.else.176, %if.then.174
  %109 = load i64, i64* %value_len, align 8
  %cmp178 = icmp sgt i64 %109, 0
  br i1 %cmp178, label %if.then.180, label %if.else.191

if.then.180:                                      ; preds = %if.end.177
  %110 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %call181 = call i32 @resize_buffer(%struct.stringio* %110, i64 0)
  %cmp182 = icmp slt i32 %call181, 0
  br i1 %cmp182, label %if.then.184, label %if.end.185

if.then.184:                                      ; preds = %if.then.180
  store i32 -1, i32* %retval
  br label %return

if.end.185:                                       ; preds = %if.then.180
  %111 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %state = getelementptr inbounds %struct.stringio, %struct.stringio* %111, i32 0, i32 5
  store i32 1, i32* %state, align 4
  %112 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %pos = getelementptr inbounds %struct.stringio, %struct.stringio* %112, i32 0, i32 2
  store i64 0, i64* %pos, align 8
  %113 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %114 = load %struct._object*, %struct._object** %value, align 8
  %call186 = call i64 @write_str(%struct.stringio* %113, %struct._object* %114)
  %cmp187 = icmp slt i64 %call186, 0
  br i1 %cmp187, label %if.then.189, label %if.end.190

if.then.189:                                      ; preds = %if.end.185
  store i32 -1, i32* %retval
  br label %return

if.end.190:                                       ; preds = %if.end.185
  br label %if.end.203

if.else.191:                                      ; preds = %if.end.177
  %115 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %call192 = call i32 @resize_buffer(%struct.stringio* %115, i64 0)
  %cmp193 = icmp slt i32 %call192, 0
  br i1 %cmp193, label %if.then.195, label %if.end.196

if.then.195:                                      ; preds = %if.else.191
  store i32 -1, i32* %retval
  br label %return

if.end.196:                                       ; preds = %if.else.191
  %116 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %accu197 = getelementptr inbounds %struct.stringio, %struct.stringio* %116, i32 0, i32 6
  %call198 = call i32 @_PyAccu_Init(%struct._PyAccu* %accu197)
  %tobool199 = icmp ne i32 %call198, 0
  br i1 %tobool199, label %if.then.200, label %if.end.201

if.then.200:                                      ; preds = %if.end.196
  store i32 -1, i32* %retval
  br label %return

if.end.201:                                       ; preds = %if.end.196
  %117 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %state202 = getelementptr inbounds %struct.stringio, %struct.stringio* %117, i32 0, i32 5
  store i32 2, i32* %state202, align 4
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.201, %if.end.190
  %118 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %pos204 = getelementptr inbounds %struct.stringio, %struct.stringio* %118, i32 0, i32 2
  store i64 0, i64* %pos204, align 8
  %119 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %119, i32 0, i32 8
  store i8 0, i8* %closed, align 1
  %120 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %ok205 = getelementptr inbounds %struct.stringio, %struct.stringio* %120, i32 0, i32 7
  store i8 1, i8* %ok205, align 1
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.203, %if.then.200, %if.then.195, %if.then.189, %if.then.184, %if.then.167, %if.then.131, %if.then.66, %if.then.53, %if.then.11, %if.then.5, %if.then
  %121 = load i32, i32* %retval
  ret i32 %121
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %self = alloca %struct.stringio*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i32 0, i32 36
  %1 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %2 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call = call %struct._object* %1(%struct._typeobject* %2, i64 0)
  %3 = bitcast %struct._object* %call to %struct.stringio*
  store %struct.stringio* %3, %struct.stringio** %self, align 8
  %4 = load %struct.stringio*, %struct.stringio** %self, align 8
  %cmp = icmp eq %struct.stringio* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i8* @PyMem_Malloc(i64 0)
  %5 = bitcast i8* %call1 to i32*
  %6 = load %struct.stringio*, %struct.stringio** %self, align 8
  %buf = getelementptr inbounds %struct.stringio, %struct.stringio* %6, i32 0, i32 1
  store i32* %5, i32** %buf, align 8
  %7 = load %struct.stringio*, %struct.stringio** %self, align 8
  %buf2 = getelementptr inbounds %struct.stringio, %struct.stringio* %7, i32 0, i32 1
  %8 = load i32*, i32** %buf2, align 8
  %cmp3 = icmp eq i32* %8, null
  br i1 %cmp3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %9 = load %struct.stringio*, %struct.stringio** %self, align 8
  %10 = bitcast %struct.stringio* %9 to %struct._object*
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  %call8 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call8, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %17 = load %struct.stringio*, %struct.stringio** %self, align 8
  %18 = bitcast %struct.stringio* %17 to %struct._object*
  store %struct._object* %18, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.9, %do.end, %if.then
  %19 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %19
}

declare void @PyMem_Free(i8*) #1

declare void @_PyAccu_Destroy(%struct._PyAccu*) #1

declare void @PyObject_ClearWeakRefs(%struct._object*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @realize(%struct.stringio* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.stringio*, align 8
  %len = alloca i64, align 8
  %intermediate = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp15 = alloca %struct._object*, align 8
  %_py_decref_tmp27 = alloca %struct._object*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8
  %0 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %state = getelementptr inbounds %struct.stringio, %struct.stringio* %0, i32 0, i32 5
  %1 = load i32, i32* %state, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %state1 = getelementptr inbounds %struct.stringio, %struct.stringio* %2, i32 0, i32 5
  store i32 1, i32* %state1, align 4
  %3 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %accu = getelementptr inbounds %struct.stringio, %struct.stringio* %3, i32 0, i32 6
  %call = call %struct._object* @_PyAccu_Finish(%struct._PyAccu* %accu)
  store %struct._object* %call, %struct._object** %intermediate, align 8
  %4 = load %struct._object*, %struct._object** %intermediate, align 8
  %cmp2 = icmp eq %struct._object* %4, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %intermediate, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %6, i32 0, i32 1
  %7 = load i64, i64* %length, align 8
  store i64 %7, i64* %len, align 8
  %8 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %9 = load i64, i64* %len, align 8
  %call5 = call i32 @resize_buffer(%struct.stringio* %8, i64 %9)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.end.4
  br label %do.body

do.body:                                          ; preds = %if.then.7
  %10 = load %struct._object*, %struct._object** %intermediate, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.10

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.10
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.4
  %17 = load %struct._object*, %struct._object** %intermediate, align 8
  %18 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %buf = getelementptr inbounds %struct.stringio, %struct.stringio* %18, i32 0, i32 1
  %19 = load i32*, i32** %buf, align 8
  %20 = load i64, i64* %len, align 8
  %call12 = call i32* @PyUnicode_AsUCS4(%struct._object* %17, i32* %19, i64 %20, i32 0)
  %tobool = icmp ne i32* %call12, null
  br i1 %tobool, label %if.end.25, label %if.then.13

if.then.13:                                       ; preds = %if.end.11
  br label %do.body.14

do.body.14:                                       ; preds = %if.then.13
  %21 = load %struct._object*, %struct._object** %intermediate, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp15, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt16, align 8
  %dec17 = add i64 %23, -1
  store i64 %dec17, i64* %ob_refcnt16, align 8
  %cmp18 = icmp ne i64 %dec17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.14
  br label %if.end.23

if.else.20:                                       ; preds = %do.body.14
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %tp_dealloc22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  call void %26(%struct._object* %27)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.then.19
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  store i32 -1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.end.11
  br label %do.body.26

do.body.26:                                       ; preds = %if.end.25
  %28 = load %struct._object*, %struct._object** %intermediate, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp27, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt28, align 8
  %dec29 = add i64 %30, -1
  store i64 %dec29, i64* %ob_refcnt28, align 8
  %cmp30 = icmp ne i64 %dec29, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.26
  br label %if.end.35

if.else.32:                                       ; preds = %do.body.26
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8
  %tp_dealloc34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc34, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  call void %33(%struct._object* %34)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.31
  br label %do.end.36

do.end.36:                                        ; preds = %if.end.35
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.36, %do.end.24, %do.end, %if.then.3, %if.then
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_stringio_readline(%struct.stringio* %self, i64 %limit) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.stringio*, align 8
  %limit.addr = alloca i64, align 8
  %start = alloca i32*, align 8
  %end = alloca i32*, align 8
  %old_char = alloca i32, align 4
  %len = alloca i64, align 8
  %consumed = alloca i64, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8
  store i64 %limit, i64* %limit.addr, align 8
  %0 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %pos = getelementptr inbounds %struct.stringio, %struct.stringio* %0, i32 0, i32 2
  %1 = load i64, i64* %pos, align 8
  %2 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %string_size = getelementptr inbounds %struct.stringio, %struct.stringio* %2, i32 0, i32 3
  %3 = load i64, i64* %string_size, align 8
  %cmp = icmp sge i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyUnicode_New(i64 0, i32 0)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %buf = getelementptr inbounds %struct.stringio, %struct.stringio* %4, i32 0, i32 1
  %5 = load i32*, i32** %buf, align 8
  %6 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %pos1 = getelementptr inbounds %struct.stringio, %struct.stringio* %6, i32 0, i32 2
  %7 = load i64, i64* %pos1, align 8
  %add.ptr = getelementptr i32, i32* %5, i64 %7
  store i32* %add.ptr, i32** %start, align 8
  %8 = load i64, i64* %limit.addr, align 8
  %cmp2 = icmp slt i64 %8, 0
  br i1 %cmp2, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load i64, i64* %limit.addr, align 8
  %10 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %string_size3 = getelementptr inbounds %struct.stringio, %struct.stringio* %10, i32 0, i32 3
  %11 = load i64, i64* %string_size3, align 8
  %12 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %pos4 = getelementptr inbounds %struct.stringio, %struct.stringio* %12, i32 0, i32 2
  %13 = load i64, i64* %pos4, align 8
  %sub = sub i64 %11, %13
  %cmp5 = icmp sgt i64 %9, %sub
  br i1 %cmp5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  %14 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %string_size7 = getelementptr inbounds %struct.stringio, %struct.stringio* %14, i32 0, i32 3
  %15 = load i64, i64* %string_size7, align 8
  %16 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %pos8 = getelementptr inbounds %struct.stringio, %struct.stringio* %16, i32 0, i32 2
  %17 = load i64, i64* %pos8, align 8
  %sub9 = sub i64 %15, %17
  store i64 %sub9, i64* %limit.addr, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.6, %lor.lhs.false
  %18 = load i32*, i32** %start, align 8
  %19 = load i64, i64* %limit.addr, align 8
  %add.ptr11 = getelementptr i32, i32* %18, i64 %19
  store i32* %add.ptr11, i32** %end, align 8
  %20 = load i32*, i32** %end, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %old_char, align 4
  %22 = load i32*, i32** %end, align 8
  store i32 0, i32* %22, align 4
  %23 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %readtranslate = getelementptr inbounds %struct.stringio, %struct.stringio* %23, i32 0, i32 10
  %24 = load i8, i8* %readtranslate, align 1
  %conv = sext i8 %24 to i32
  %25 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %readuniversal = getelementptr inbounds %struct.stringio, %struct.stringio* %25, i32 0, i32 9
  %26 = load i8, i8* %readuniversal, align 1
  %conv12 = sext i8 %26 to i32
  %27 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %readnl = getelementptr inbounds %struct.stringio, %struct.stringio* %27, i32 0, i32 12
  %28 = load %struct._object*, %struct._object** %readnl, align 8
  %29 = load i32*, i32** %start, align 8
  %30 = bitcast i32* %29 to i8*
  %31 = load i32*, i32** %end, align 8
  %32 = bitcast i32* %31 to i8*
  %call13 = call i64 @_PyIO_find_line_ending(i32 %conv, i32 %conv12, %struct._object* %28, i32 4, i8* %30, i8* %32, i64* %consumed)
  store i64 %call13, i64* %len, align 8
  %33 = load i32, i32* %old_char, align 4
  %34 = load i32*, i32** %end, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i64, i64* %len, align 8
  %cmp14 = icmp slt i64 %35, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.10
  %36 = load i64, i64* %limit.addr, align 8
  store i64 %36, i64* %len, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.10
  %37 = load i64, i64* %len, align 8
  %38 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %pos18 = getelementptr inbounds %struct.stringio, %struct.stringio* %38, i32 0, i32 2
  %39 = load i64, i64* %pos18, align 8
  %add = add i64 %39, %37
  store i64 %add, i64* %pos18, align 8
  %40 = load i32*, i32** %start, align 8
  %41 = bitcast i32* %40 to i8*
  %42 = load i64, i64* %len, align 8
  %call19 = call %struct._object* @PyUnicode_FromKindAndData(i32 4, i8* %41, i64 %42)
  store %struct._object* %call19, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then
  %43 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %43
}

declare %struct._object* @PyObject_CallMethodObjArgs(%struct._object*, %struct._object*, ...) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare %struct._object* @_PyAccu_Finish(%struct._PyAccu*) #1

; Function Attrs: nounwind uwtable
define internal i32 @resize_buffer(%struct.stringio* %self, i64 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.stringio*, align 8
  %size.addr = alloca i64, align 8
  %alloc = alloca i64, align 8
  %new_buf = alloca i32*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %buf_size = getelementptr inbounds %struct.stringio, %struct.stringio* %0, i32 0, i32 4
  %1 = load i64, i64* %buf_size, align 8
  store i64 %1, i64* %alloc, align 8
  store i32* null, i32** %new_buf, align 8
  %2 = load i64, i64* %size.addr, align 8
  %add = add i64 %2, 1
  store i64 %add, i64* %size.addr, align 8
  %3 = load i64, i64* %size.addr, align 8
  %cmp = icmp ugt i64 %3, 9223372036854775807
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %overflow

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %size.addr, align 8
  %5 = load i64, i64* %alloc, align 8
  %div = udiv i64 %5, 2
  %cmp1 = icmp ult i64 %4, %div
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %6 = load i64, i64* %size.addr, align 8
  %add3 = add i64 %6, 1
  store i64 %add3, i64* %alloc, align 8
  br label %if.end.20

if.else:                                          ; preds = %if.end
  %7 = load i64, i64* %size.addr, align 8
  %8 = load i64, i64* %alloc, align 8
  %cmp4 = icmp ult i64 %7, %8
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.else.6:                                        ; preds = %if.else
  %9 = load i64, i64* %size.addr, align 8
  %conv = uitofp i64 %9 to double
  %10 = load i64, i64* %alloc, align 8
  %conv7 = uitofp i64 %10 to double
  %mul = fmul double %conv7, 1.125000e+00
  %cmp8 = fcmp ole double %conv, %mul
  br i1 %cmp8, label %if.then.10, label %if.else.16

if.then.10:                                       ; preds = %if.else.6
  %11 = load i64, i64* %size.addr, align 8
  %12 = load i64, i64* %size.addr, align 8
  %shr = lshr i64 %12, 3
  %add11 = add i64 %11, %shr
  %13 = load i64, i64* %size.addr, align 8
  %cmp12 = icmp ult i64 %13, 9
  %cond = select i1 %cmp12, i32 3, i32 6
  %conv14 = sext i32 %cond to i64
  %add15 = add i64 %add11, %conv14
  store i64 %add15, i64* %alloc, align 8
  br label %if.end.18

if.else.16:                                       ; preds = %if.else.6
  %14 = load i64, i64* %size.addr, align 8
  %add17 = add i64 %14, 1
  store i64 %add17, i64* %alloc, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.then.10
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.2
  %15 = load i64, i64* %alloc, align 8
  %cmp21 = icmp ugt i64 %15, 4611686018427387903
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  br label %overflow

if.end.24:                                        ; preds = %if.end.20
  %16 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %buf = getelementptr inbounds %struct.stringio, %struct.stringio* %16, i32 0, i32 1
  %17 = load i32*, i32** %buf, align 8
  %18 = bitcast i32* %17 to i8*
  %19 = load i64, i64* %alloc, align 8
  %mul25 = mul i64 %19, 4
  %call = call i8* @PyMem_Realloc(i8* %18, i64 %mul25)
  %20 = bitcast i8* %call to i32*
  store i32* %20, i32** %new_buf, align 8
  %21 = load i32*, i32** %new_buf, align 8
  %cmp26 = icmp eq i32* %21, null
  br i1 %cmp26, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end.24
  %call29 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.end.24
  %22 = load i64, i64* %alloc, align 8
  %23 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %buf_size31 = getelementptr inbounds %struct.stringio, %struct.stringio* %23, i32 0, i32 4
  store i64 %22, i64* %buf_size31, align 8
  %24 = load i32*, i32** %new_buf, align 8
  %25 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %buf32 = getelementptr inbounds %struct.stringio, %struct.stringio* %25, i32 0, i32 1
  store i32* %24, i32** %buf32, align 8
  store i32 0, i32* %retval
  br label %return

overflow:                                         ; preds = %if.then.23, %if.then
  %26 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %overflow, %if.end.30, %if.then.28, %if.then.5
  %27 = load i32, i32* %retval
  ret i32 %27
}

declare i32* @PyUnicode_AsUCS4(%struct._object*, i32*, i64, i32) #1

declare i8* @PyMem_Realloc(i8*, i64) #1

declare %struct._object* @PyErr_NoMemory() #1

declare %struct._object* @PyUnicode_New(i64, i32) #1

declare i64 @_PyIO_find_line_ending(i32, i32, %struct._object*, i32, i8*, i8*, i64*) #1

declare %struct._object* @PyUnicode_FromKindAndData(i32, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_close(%struct.stringio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.stringio*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp11 = alloca %struct._object*, align 8
  %_py_decref_tmp16 = alloca %struct._object*, align 8
  %_py_tmp29 = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8
  %0 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %0, i32 0, i32 8
  store i8 1, i8* %closed, align 1
  %1 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %call = call i32 @resize_buffer(%struct.stringio* %1, i64 0)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %accu = getelementptr inbounds %struct.stringio, %struct.stringio* %2, i32 0, i32 6
  call void @_PyAccu_Destroy(%struct._PyAccu* %accu)
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %readnl = getelementptr inbounds %struct.stringio, %struct.stringio* %3, i32 0, i32 12
  %4 = load %struct._object*, %struct._object** %readnl, align 8
  store %struct._object* %4, %struct._object** %_py_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp1 = icmp ne %struct._object* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %do.body
  %6 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %readnl3 = getelementptr inbounds %struct.stringio, %struct.stringio* %6, i32 0, i32 12
  store %struct._object* null, %struct._object** %readnl3, align 8
  br label %do.body.4

do.body.4:                                        ; preds = %if.then.2
  %7 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body.4
  br label %if.end.7

if.else:                                          ; preds = %do.body.4
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  br label %if.end.8

if.end.8:                                         ; preds = %do.end, %do.body
  br label %do.end.9

do.end.9:                                         ; preds = %if.end.8
  br label %do.body.10

do.body.10:                                       ; preds = %do.end.9
  %14 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %writenl = getelementptr inbounds %struct.stringio, %struct.stringio* %14, i32 0, i32 13
  %15 = load %struct._object*, %struct._object** %writenl, align 8
  store %struct._object* %15, %struct._object** %_py_tmp11, align 8
  %16 = load %struct._object*, %struct._object** %_py_tmp11, align 8
  %cmp12 = icmp ne %struct._object* %16, null
  br i1 %cmp12, label %if.then.13, label %if.end.26

if.then.13:                                       ; preds = %do.body.10
  %17 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %writenl14 = getelementptr inbounds %struct.stringio, %struct.stringio* %17, i32 0, i32 13
  store %struct._object* null, %struct._object** %writenl14, align 8
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.13
  %18 = load %struct._object*, %struct._object** %_py_tmp11, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp16, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt17, align 8
  %dec18 = add i64 %20, -1
  store i64 %dec18, i64* %ob_refcnt17, align 8
  %cmp19 = icmp ne i64 %dec18, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.15
  br label %if.end.24

if.else.21:                                       ; preds = %do.body.15
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %tp_dealloc23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc23, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  call void %23(%struct._object* %24)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21, %if.then.20
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  br label %if.end.26

if.end.26:                                        ; preds = %do.end.25, %do.body.10
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  br label %do.body.28

do.body.28:                                       ; preds = %do.end.27
  %25 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %decoder = getelementptr inbounds %struct.stringio, %struct.stringio* %25, i32 0, i32 11
  %26 = load %struct._object*, %struct._object** %decoder, align 8
  store %struct._object* %26, %struct._object** %_py_tmp29, align 8
  %27 = load %struct._object*, %struct._object** %_py_tmp29, align 8
  %cmp30 = icmp ne %struct._object* %27, null
  br i1 %cmp30, label %if.then.31, label %if.end.44

if.then.31:                                       ; preds = %do.body.28
  %28 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %decoder32 = getelementptr inbounds %struct.stringio, %struct.stringio* %28, i32 0, i32 11
  store %struct._object* null, %struct._object** %decoder32, align 8
  br label %do.body.33

do.body.33:                                       ; preds = %if.then.31
  %29 = load %struct._object*, %struct._object** %_py_tmp29, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp34, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt35, align 8
  %dec36 = add i64 %31, -1
  store i64 %dec36, i64* %ob_refcnt35, align 8
  %cmp37 = icmp ne i64 %dec36, 0
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %do.body.33
  br label %if.end.42

if.else.39:                                       ; preds = %do.body.33
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  call void %34(%struct._object* %35)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  br label %if.end.44

if.end.44:                                        ; preds = %do.end.43, %do.body.28
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %36 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %36, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.45, %if.then
  %37 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %37
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_getvalue(%struct.stringio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.stringio*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8
  %0 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %0, i32 0, i32 7
  %1 = load i8, i8* %ok, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp sle i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %3, i32 0, i32 8
  %4 = load i8, i8* %closed, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %state = getelementptr inbounds %struct.stringio, %struct.stringio* %6, i32 0, i32 5
  %7 = load i32, i32* %state, align 4
  %cmp4 = icmp eq i32 %7, 2
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  %8 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %call = call %struct._object* @make_intermediate(%struct.stringio* %8)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %9 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %buf = getelementptr inbounds %struct.stringio, %struct.stringio* %9, i32 0, i32 1
  %10 = load i32*, i32** %buf, align 8
  %11 = bitcast i32* %10 to i8*
  %12 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %string_size = getelementptr inbounds %struct.stringio, %struct.stringio* %12, i32 0, i32 3
  %13 = load i64, i64* %string_size, align 8
  %call8 = call %struct._object* @PyUnicode_FromKindAndData(i32 4, i8* %11, i64 %13)
  store %struct._object* %call8, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then.2, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_read(%struct.stringio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.stringio*, align 8
  %args.addr = alloca %struct._object*, align 8
  %size = alloca i64, align 8
  %n = alloca i64, align 8
  %output = alloca i32*, align 8
  %arg = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %arg, align 8
  %0 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %0, i32 0, i32 7
  %1 = load i8, i8* %ok, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp sle i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), %struct._object** %arg)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %4, i32 0, i32 8
  %5 = load i8, i8* %closed, align 1
  %tobool4 = icmp ne i8 %5, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %7 = load %struct._object*, %struct._object** %arg, align 8
  %call7 = call i32 @PyNumber_Check(%struct._object* %7)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.6
  %8 = load %struct._object*, %struct._object** %arg, align 8
  %9 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call10 = call i64 @PyNumber_AsSsize_t(%struct._object* %8, %struct._object* %9)
  store i64 %call10, i64* %size, align 8
  %10 = load i64, i64* %size, align 8
  %cmp11 = icmp eq i64 %10, -1
  br i1 %cmp11, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.then.9
  %call13 = call %struct._object* @PyErr_Occurred()
  %tobool14 = icmp ne %struct._object* %call13, null
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %land.lhs.true, %if.then.9
  br label %if.end.23

if.else:                                          ; preds = %if.end.6
  %11 = load %struct._object*, %struct._object** %arg, align 8
  %cmp17 = icmp eq %struct._object* %11, @_Py_NoneStruct
  br i1 %cmp17, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.else
  store i64 -1, i64* %size, align 8
  br label %if.end.22

if.else.20:                                       ; preds = %if.else
  %12 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %13 = load %struct._object*, %struct._object** %arg, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 1
  %15 = load i8*, i8** %tp_name, align 8
  %call21 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i32 0, i32 0), i8* %15)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %if.then.19
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.16
  %16 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %string_size = getelementptr inbounds %struct.stringio, %struct.stringio* %16, i32 0, i32 3
  %17 = load i64, i64* %string_size, align 8
  %18 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %pos = getelementptr inbounds %struct.stringio, %struct.stringio* %18, i32 0, i32 2
  %19 = load i64, i64* %pos, align 8
  %sub = sub i64 %17, %19
  store i64 %sub, i64* %n, align 8
  %20 = load i64, i64* %size, align 8
  %cmp24 = icmp slt i64 %20, 0
  br i1 %cmp24, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.23
  %21 = load i64, i64* %size, align 8
  %22 = load i64, i64* %n, align 8
  %cmp26 = icmp sgt i64 %21, %22
  br i1 %cmp26, label %if.then.28, label %if.end.33

if.then.28:                                       ; preds = %lor.lhs.false, %if.end.23
  %23 = load i64, i64* %n, align 8
  store i64 %23, i64* %size, align 8
  %24 = load i64, i64* %size, align 8
  %cmp29 = icmp slt i64 %24, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.28
  store i64 0, i64* %size, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.then.28
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %lor.lhs.false
  %25 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %state = getelementptr inbounds %struct.stringio, %struct.stringio* %25, i32 0, i32 5
  %26 = load i32, i32* %state, align 4
  %cmp34 = icmp eq i32 %26, 2
  br i1 %cmp34, label %land.lhs.true.36, label %if.end.47

land.lhs.true.36:                                 ; preds = %if.end.33
  %27 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %pos37 = getelementptr inbounds %struct.stringio, %struct.stringio* %27, i32 0, i32 2
  %28 = load i64, i64* %pos37, align 8
  %cmp38 = icmp eq i64 %28, 0
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.47

land.lhs.true.40:                                 ; preds = %land.lhs.true.36
  %29 = load i64, i64* %size, align 8
  %30 = load i64, i64* %n, align 8
  %cmp41 = icmp eq i64 %29, %30
  br i1 %cmp41, label %if.then.43, label %if.end.47

if.then.43:                                       ; preds = %land.lhs.true.40
  %31 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %call44 = call %struct._object* @make_intermediate(%struct.stringio* %31)
  store %struct._object* %call44, %struct._object** %result, align 8
  %32 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %string_size45 = getelementptr inbounds %struct.stringio, %struct.stringio* %32, i32 0, i32 3
  %33 = load i64, i64* %string_size45, align 8
  %34 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %pos46 = getelementptr inbounds %struct.stringio, %struct.stringio* %34, i32 0, i32 2
  store i64 %33, i64* %pos46, align 8
  %35 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %35, %struct._object** %retval
  br label %return

if.end.47:                                        ; preds = %land.lhs.true.40, %land.lhs.true.36, %if.end.33
  %36 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %call48 = call i32 @realize(%struct.stringio* %36)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.47
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.52:                                        ; preds = %if.end.47
  %37 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %buf = getelementptr inbounds %struct.stringio, %struct.stringio* %37, i32 0, i32 1
  %38 = load i32*, i32** %buf, align 8
  %39 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %pos53 = getelementptr inbounds %struct.stringio, %struct.stringio* %39, i32 0, i32 2
  %40 = load i64, i64* %pos53, align 8
  %add.ptr = getelementptr i32, i32* %38, i64 %40
  store i32* %add.ptr, i32** %output, align 8
  %41 = load i64, i64* %size, align 8
  %42 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %pos54 = getelementptr inbounds %struct.stringio, %struct.stringio* %42, i32 0, i32 2
  %43 = load i64, i64* %pos54, align 8
  %add = add i64 %43, %41
  store i64 %add, i64* %pos54, align 8
  %44 = load i32*, i32** %output, align 8
  %45 = bitcast i32* %44 to i8*
  %46 = load i64, i64* %size, align 8
  %call55 = call %struct._object* @PyUnicode_FromKindAndData(i32 4, i8* %45, i64 %46)
  store %struct._object* %call55, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.52, %if.then.51, %if.then.43, %if.else.20, %if.then.15, %if.then.5, %if.then.2, %if.then
  %47 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %47
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_readline(%struct.stringio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.stringio*, align 8
  %args.addr = alloca %struct._object*, align 8
  %arg = alloca %struct._object*, align 8
  %limit = alloca i64, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %arg, align 8
  store i64 -1, i64* %limit, align 8
  %0 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %0, i32 0, i32 7
  %1 = load i8, i8* %ok, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp sle i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), %struct._object** %arg)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %4, i32 0, i32 8
  %5 = load i8, i8* %closed, align 1
  %tobool4 = icmp ne i8 %5, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %7 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %call7 = call i32 @realize(%struct.stringio* %7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.6
  %8 = load %struct._object*, %struct._object** %arg, align 8
  %call12 = call i32 @PyNumber_Check(%struct._object* %8)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.11
  %9 = load %struct._object*, %struct._object** %arg, align 8
  %10 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call15 = call i64 @PyNumber_AsSsize_t(%struct._object* %9, %struct._object* %10)
  store i64 %call15, i64* %limit, align 8
  %11 = load i64, i64* %limit, align 8
  %cmp16 = icmp eq i64 %11, -1
  br i1 %cmp16, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.then.14
  %call18 = call %struct._object* @PyErr_Occurred()
  %tobool19 = icmp ne %struct._object* %call18, null
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %land.lhs.true, %if.then.14
  br label %if.end.27

if.else:                                          ; preds = %if.end.11
  %12 = load %struct._object*, %struct._object** %arg, align 8
  %cmp22 = icmp ne %struct._object* %12, @_Py_NoneStruct
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.else
  %13 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %14 = load %struct._object*, %struct._object** %arg, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 1
  %16 = load i8*, i8** %tp_name, align 8
  %call25 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i32 0, i32 0), i8* %16)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.26:                                        ; preds = %if.else
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.21
  %17 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %18 = load i64, i64* %limit, align 8
  %call28 = call %struct._object* @_stringio_readline(%struct.stringio* %17, i64 %18)
  store %struct._object* %call28, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.24, %if.then.20, %if.then.10, %if.then.5, %if.then.2, %if.then
  %19 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %19
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_tell(%struct.stringio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.stringio*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8
  %0 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %0, i32 0, i32 7
  %1 = load i8, i8* %ok, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp sle i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %3, i32 0, i32 8
  %4 = load i8, i8* %closed, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %pos = getelementptr inbounds %struct.stringio, %struct.stringio* %6, i32 0, i32 2
  %7 = load i64, i64* %pos, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %7)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_truncate(%struct.stringio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.stringio*, align 8
  %args.addr = alloca %struct._object*, align 8
  %size = alloca i64, align 8
  %arg = alloca %struct._object*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %arg, align 8
  %0 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %0, i32 0, i32 7
  %1 = load i8, i8* %ok, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp sle i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), %struct._object** %arg)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %4, i32 0, i32 8
  %5 = load i8, i8* %closed, align 1
  %tobool4 = icmp ne i8 %5, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %7 = load %struct._object*, %struct._object** %arg, align 8
  %call7 = call i32 @PyNumber_Check(%struct._object* %7)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.6
  %8 = load %struct._object*, %struct._object** %arg, align 8
  %9 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call10 = call i64 @PyNumber_AsSsize_t(%struct._object* %8, %struct._object* %9)
  store i64 %call10, i64* %size, align 8
  %10 = load i64, i64* %size, align 8
  %cmp11 = icmp eq i64 %10, -1
  br i1 %cmp11, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.then.9
  %call13 = call %struct._object* @PyErr_Occurred()
  %tobool14 = icmp ne %struct._object* %call13, null
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %land.lhs.true, %if.then.9
  br label %if.end.23

if.else:                                          ; preds = %if.end.6
  %11 = load %struct._object*, %struct._object** %arg, align 8
  %cmp17 = icmp eq %struct._object* %11, @_Py_NoneStruct
  br i1 %cmp17, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.else
  %12 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %pos = getelementptr inbounds %struct.stringio, %struct.stringio* %12, i32 0, i32 2
  %13 = load i64, i64* %pos, align 8
  store i64 %13, i64* %size, align 8
  br label %if.end.22

if.else.20:                                       ; preds = %if.else
  %14 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %15 = load %struct._object*, %struct._object** %arg, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 1
  %17 = load i8*, i8** %tp_name, align 8
  %call21 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i32 0, i32 0), i8* %17)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %if.then.19
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.16
  %18 = load i64, i64* %size, align 8
  %cmp24 = icmp slt i64 %18, 0
  br i1 %cmp24, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.23
  %19 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %20 = load i64, i64* %size, align 8
  %call27 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i32 0, i32 0), i64 %20)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.28:                                        ; preds = %if.end.23
  %21 = load i64, i64* %size, align 8
  %22 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %string_size = getelementptr inbounds %struct.stringio, %struct.stringio* %22, i32 0, i32 3
  %23 = load i64, i64* %string_size, align 8
  %cmp29 = icmp slt i64 %21, %23
  br i1 %cmp29, label %if.then.31, label %if.end.43

if.then.31:                                       ; preds = %if.end.28
  %24 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %call32 = call i32 @realize(%struct.stringio* %24)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.then.31
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.36:                                        ; preds = %if.then.31
  %25 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %26 = load i64, i64* %size, align 8
  %call37 = call i32 @resize_buffer(%struct.stringio* %25, i64 %26)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.36
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.41:                                        ; preds = %if.end.36
  %27 = load i64, i64* %size, align 8
  %28 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %string_size42 = getelementptr inbounds %struct.stringio, %struct.stringio* %28, i32 0, i32 3
  store i64 %27, i64* %string_size42, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.41, %if.end.28
  %29 = load i64, i64* %size, align 8
  %call44 = call %struct._object* @PyLong_FromSsize_t(i64 %29)
  store %struct._object* %call44, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.43, %if.then.40, %if.then.35, %if.then.26, %if.else.20, %if.then.15, %if.then.5, %if.then.2, %if.then
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_seek(%struct.stringio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.stringio*, align 8
  %args.addr = alloca %struct._object*, align 8
  %pos = alloca i64, align 8
  %mode = alloca i32, align 4
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 0, i32* %mode, align 4
  %0 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %0, i32 0, i32 7
  %1 = load i8, i8* %ok, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp sle i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i64* %pos, i32* %mode)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %4, i32 0, i32 8
  %5 = load i8, i8* %closed, align 1
  %tobool4 = icmp ne i8 %5, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %7 = load i32, i32* %mode, align 4
  %cmp7 = icmp ne i32 %7, 0
  br i1 %cmp7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.6
  %8 = load i32, i32* %mode, align 4
  %cmp9 = icmp ne i32 %8, 1
  br i1 %cmp9, label %land.lhs.true.11, label %if.else

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %9 = load i32, i32* %mode, align 4
  %cmp12 = icmp ne i32 %9, 2
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %land.lhs.true.11
  %10 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %11 = load i32, i32* %mode, align 4
  %call15 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %10, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i32 0, i32 0), i32 %11)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.11, %land.lhs.true, %if.end.6
  %12 = load i64, i64* %pos, align 8
  %cmp16 = icmp slt i64 %12, 0
  br i1 %cmp16, label %land.lhs.true.18, label %if.else.23

land.lhs.true.18:                                 ; preds = %if.else
  %13 = load i32, i32* %mode, align 4
  %cmp19 = icmp eq i32 %13, 0
  br i1 %cmp19, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %land.lhs.true.18
  %14 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %15 = load i64, i64* %pos, align 8
  %call22 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i32 0, i32 0), i64 %15)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.23:                                       ; preds = %land.lhs.true.18, %if.else
  %16 = load i32, i32* %mode, align 4
  %cmp24 = icmp ne i32 %16, 0
  br i1 %cmp24, label %land.lhs.true.26, label %if.end.30

land.lhs.true.26:                                 ; preds = %if.else.23
  %17 = load i64, i64* %pos, align 8
  %cmp27 = icmp ne i64 %17, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %land.lhs.true.26
  %18 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  call void @PyErr_SetString(%struct._object* %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.30:                                        ; preds = %land.lhs.true.26, %if.else.23
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31
  %19 = load i32, i32* %mode, align 4
  %cmp33 = icmp eq i32 %19, 1
  br i1 %cmp33, label %if.then.35, label %if.else.37

if.then.35:                                       ; preds = %if.end.32
  %20 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %pos36 = getelementptr inbounds %struct.stringio, %struct.stringio* %20, i32 0, i32 2
  %21 = load i64, i64* %pos36, align 8
  store i64 %21, i64* %pos, align 8
  br label %if.end.42

if.else.37:                                       ; preds = %if.end.32
  %22 = load i32, i32* %mode, align 4
  %cmp38 = icmp eq i32 %22, 2
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.else.37
  %23 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %string_size = getelementptr inbounds %struct.stringio, %struct.stringio* %23, i32 0, i32 3
  %24 = load i64, i64* %string_size, align 8
  store i64 %24, i64* %pos, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %if.else.37
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.35
  %25 = load i64, i64* %pos, align 8
  %26 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %pos43 = getelementptr inbounds %struct.stringio, %struct.stringio* %26, i32 0, i32 2
  store i64 %25, i64* %pos43, align 8
  %27 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %pos44 = getelementptr inbounds %struct.stringio, %struct.stringio* %27, i32 0, i32 2
  %28 = load i64, i64* %pos44, align 8
  %call45 = call %struct._object* @PyLong_FromSsize_t(i64 %28)
  store %struct._object* %call45, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.42, %if.then.29, %if.then.21, %if.then.14, %if.then.5, %if.then.2, %if.then
  %29 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %29
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_write(%struct.stringio* %self, %struct._object* %obj) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.stringio*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %size = alloca i64, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  %0 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %0, i32 0, i32 7
  %1 = load i8, i8* %ok, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp sle i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 268435456
  %cmp2 = icmp ne i64 %and, 0
  br i1 %cmp2, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %7 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 1
  %9 = load i8*, i8** %tp_name, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i32 0, i32 0), i8* %9)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %obj.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %11, i32 0, i32 3
  %12 = bitcast %struct.anon.0* %state to i32*
  %bf.load = load i32, i32* %12, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %13 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call7 = call i32 @_PyUnicode_Ready(%struct._object* %13)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call7, %cond.false ]
  %tobool8 = icmp ne i32 %cond, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %cond.end
  %14 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %14, i32 0, i32 8
  %15 = load i8, i8* %closed, align 1
  %tobool11 = icmp ne i8 %15, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  %16 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.10
  %17 = load %struct._object*, %struct._object** %obj.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %18, i32 0, i32 1
  %19 = load i64, i64* %length, align 8
  store i64 %19, i64* %size, align 8
  %20 = load i64, i64* %size, align 8
  %cmp14 = icmp sgt i64 %20, 0
  br i1 %cmp14, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %if.end.13
  %21 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %22 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call16 = call i64 @write_str(%struct.stringio* %21, %struct._object* %22)
  %cmp17 = icmp slt i64 %call16, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %land.lhs.true, %if.end.13
  %23 = load i64, i64* %size, align 8
  %call21 = call %struct._object* @PyLong_FromSsize_t(i64 %23)
  store %struct._object* %call21, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.19, %if.then.12, %if.then.9, %if.then.4, %if.then
  %24 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %24
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_seekable(%struct.stringio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.stringio*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %0, i32 0, i32 7
  %1 = load i8, i8* %ok, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp sle i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %3, i32 0, i32 8
  %4 = load i8, i8* %closed, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_readable(%struct.stringio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.stringio*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %0, i32 0, i32 7
  %1 = load i8, i8* %ok, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp sle i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %3, i32 0, i32 8
  %4 = load i8, i8* %closed, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_writable(%struct.stringio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.stringio*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %0, i32 0, i32 7
  %1 = load i8, i8* %ok, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp sle i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %3, i32 0, i32 8
  %4 = load i8, i8* %closed, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_getstate(%struct.stringio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.stringio*, align 8
  %initvalue = alloca %struct._object*, align 8
  %dict = alloca %struct._object*, align 8
  %state = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8
  %0 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %call = call %struct._object* @stringio_getvalue(%struct.stringio* %0)
  store %struct._object* %call, %struct._object** %initvalue, align 8
  %1 = load %struct._object*, %struct._object** %initvalue, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %dict1 = getelementptr inbounds %struct.stringio, %struct.stringio* %2, i32 0, i32 14
  %3 = load %struct._object*, %struct._object** %dict1, align 8
  %cmp2 = icmp eq %struct._object* %3, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %dict, align 8
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %5 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %dict4 = getelementptr inbounds %struct.stringio, %struct.stringio* %5, i32 0, i32 14
  %6 = load %struct._object*, %struct._object** %dict4, align 8
  %call5 = call %struct._object* @PyDict_Copy(%struct._object* %6)
  store %struct._object* %call5, %struct._object** %dict, align 8
  %7 = load %struct._object*, %struct._object** %dict, align 8
  %cmp6 = icmp eq %struct._object* %7, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then.3
  %8 = load %struct._object*, %struct._object** %initvalue, align 8
  %9 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %readnl = getelementptr inbounds %struct.stringio, %struct.stringio* %9, i32 0, i32 12
  %10 = load %struct._object*, %struct._object** %readnl, align 8
  %tobool = icmp ne %struct._object* %10, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.9
  %11 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %readnl10 = getelementptr inbounds %struct.stringio, %struct.stringio* %11, i32 0, i32 12
  %12 = load %struct._object*, %struct._object** %readnl10, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  %13 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %pos = getelementptr inbounds %struct.stringio, %struct.stringio* %13, i32 0, i32 2
  %14 = load i64, i64* %pos, align 8
  %15 = load %struct._object*, %struct._object** %dict, align 8
  %call11 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), %struct._object* %8, %struct._object* %cond, i64 %14, %struct._object* %15)
  store %struct._object* %call11, %struct._object** %state, align 8
  br label %do.body

do.body:                                          ; preds = %cond.end
  %16 = load %struct._object*, %struct._object** %initvalue, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp12 = icmp ne i64 %dec, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body
  br label %if.end.15

if.else.14:                                       ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.14, %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.15
  %23 = load %struct._object*, %struct._object** %state, align 8
  store %struct._object* %23, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.7, %if.then
  %24 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %24
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_setstate(%struct.stringio* %self, %struct._object* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.stringio*, align 8
  %state.addr = alloca %struct._object*, align 8
  %initarg = alloca %struct._object*, align 8
  %position_obj = alloca %struct._object*, align 8
  %dict = alloca %struct._object*, align 8
  %pos = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %buf = alloca i32*, align 8
  %bufsize = alloca i64, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8
  store %struct._object* %state, %struct._object** %state.addr, align 8
  %0 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %0, i32 0, i32 8
  %1 = load i8, i8* %closed, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %state.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 67108864
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %lor.lhs.false, label %if.then.2

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %state.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1
  %8 = load i64, i64* %ob_size, align 8
  %cmp1 = icmp slt i64 %8, 4
  br i1 %cmp1, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  %9 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %10 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %11 = bitcast %struct.stringio* %10 to %struct._object*
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 1
  %13 = load i8*, i8** %tp_name, align 8
  %14 = load %struct._object*, %struct._object** %state.addr, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %tp_name5 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 1
  %16 = load i8*, i8** %tp_name5, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %9, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.30, i32 0, i32 0), i8* %13, i8* %16)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %lor.lhs.false
  %17 = load %struct._object*, %struct._object** %state.addr, align 8
  %call7 = call %struct._object* @PyTuple_GetSlice(%struct._object* %17, i64 0, i64 2)
  store %struct._object* %call7, %struct._object** %initarg, align 8
  %18 = load %struct._object*, %struct._object** %initarg, align 8
  %cmp8 = icmp eq %struct._object* %18, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %19 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %20 = load %struct._object*, %struct._object** %initarg, align 8
  %call11 = call i32 @stringio_init(%struct.stringio* %19, %struct._object* %20, %struct._object* null)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %if.end.10
  br label %do.body

do.body:                                          ; preds = %if.then.13
  %21 = load %struct._object*, %struct._object** %initarg, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.body
  br label %if.end.17

if.else:                                          ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.17
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.end.10
  br label %do.body.19

do.body.19:                                       ; preds = %if.end.18
  %28 = load %struct._object*, %struct._object** %initarg, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp20, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt21, align 8
  %dec22 = add i64 %30, -1
  store i64 %dec22, i64* %ob_refcnt21, align 8
  %cmp23 = icmp ne i64 %dec22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body.19
  br label %if.end.28

if.else.25:                                       ; preds = %do.body.19
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  call void %33(%struct._object* %34)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  %35 = load %struct._object*, %struct._object** %state.addr, align 8
  %36 = bitcast %struct._object* %35 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %36, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %37 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %37, %struct._object** %item, align 8
  %38 = load %struct._object*, %struct._object** %item, align 8
  %call30 = call i32* @PyUnicode_AsUCS4Copy(%struct._object* %38)
  store i32* %call30, i32** %buf, align 8
  %39 = load i32*, i32** %buf, align 8
  %cmp31 = icmp eq i32* %39, null
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %do.end.29
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.33:                                        ; preds = %do.end.29
  %40 = load %struct._object*, %struct._object** %item, align 8
  %41 = bitcast %struct._object* %40 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %41, i32 0, i32 1
  %42 = load i64, i64* %length, align 8
  store i64 %42, i64* %bufsize, align 8
  %43 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %44 = load i64, i64* %bufsize, align 8
  %call34 = call i32 @resize_buffer(%struct.stringio* %43, i64 %44)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.33
  %45 = load i32*, i32** %buf, align 8
  %46 = bitcast i32* %45 to i8*
  call void @PyMem_Free(i8* %46)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.37:                                        ; preds = %if.end.33
  %47 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %buf38 = getelementptr inbounds %struct.stringio, %struct.stringio* %47, i32 0, i32 1
  %48 = load i32*, i32** %buf38, align 8
  %49 = bitcast i32* %48 to i8*
  %50 = load i32*, i32** %buf, align 8
  %51 = bitcast i32* %50 to i8*
  %52 = load i64, i64* %bufsize, align 8
  %mul = mul i64 %52, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %51, i64 %mul, i32 4, i1 false)
  %53 = load i32*, i32** %buf, align 8
  %54 = bitcast i32* %53 to i8*
  call void @PyMem_Free(i8* %54)
  %55 = load i64, i64* %bufsize, align 8
  %56 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %string_size = getelementptr inbounds %struct.stringio, %struct.stringio* %56, i32 0, i32 3
  store i64 %55, i64* %string_size, align 8
  %57 = load %struct._object*, %struct._object** %state.addr, align 8
  %58 = bitcast %struct._object* %57 to %struct.PyTupleObject*
  %ob_item39 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %58, i32 0, i32 1
  %arrayidx40 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item39, i32 0, i64 2
  %59 = load %struct._object*, %struct._object** %arrayidx40, align 8
  store %struct._object* %59, %struct._object** %position_obj, align 8
  %60 = load %struct._object*, %struct._object** %position_obj, align 8
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 1
  %61 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8
  %tp_flags42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %61, i32 0, i32 19
  %62 = load i64, i64* %tp_flags42, align 8
  %and43 = and i64 %62, 16777216
  %cmp44 = icmp ne i64 %and43, 0
  br i1 %cmp44, label %if.end.49, label %if.then.45

if.then.45:                                       ; preds = %if.end.37
  %63 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %64 = load %struct._object*, %struct._object** %position_obj, align 8
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8
  %tp_name47 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 1
  %66 = load i8*, i8** %tp_name47, align 8
  %call48 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %63, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.31, i32 0, i32 0), i8* %66)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.49:                                        ; preds = %if.end.37
  %67 = load %struct._object*, %struct._object** %position_obj, align 8
  %call50 = call i64 @PyLong_AsSsize_t(%struct._object* %67)
  store i64 %call50, i64* %pos, align 8
  %68 = load i64, i64* %pos, align 8
  %cmp51 = icmp eq i64 %68, -1
  br i1 %cmp51, label %land.lhs.true, label %if.end.55

land.lhs.true:                                    ; preds = %if.end.49
  %call52 = call %struct._object* @PyErr_Occurred()
  %tobool53 = icmp ne %struct._object* %call52, null
  br i1 %tobool53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.55:                                        ; preds = %land.lhs.true, %if.end.49
  %69 = load i64, i64* %pos, align 8
  %cmp56 = icmp slt i64 %69, 0
  br i1 %cmp56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.55
  %70 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.58:                                        ; preds = %if.end.55
  %71 = load i64, i64* %pos, align 8
  %72 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %pos59 = getelementptr inbounds %struct.stringio, %struct.stringio* %72, i32 0, i32 2
  store i64 %71, i64* %pos59, align 8
  %73 = load %struct._object*, %struct._object** %state.addr, align 8
  %74 = bitcast %struct._object* %73 to %struct.PyTupleObject*
  %ob_item60 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %74, i32 0, i32 1
  %arrayidx61 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item60, i32 0, i64 3
  %75 = load %struct._object*, %struct._object** %arrayidx61, align 8
  store %struct._object* %75, %struct._object** %dict, align 8
  %76 = load %struct._object*, %struct._object** %dict, align 8
  %cmp62 = icmp ne %struct._object* %76, @_Py_NoneStruct
  br i1 %cmp62, label %if.then.63, label %if.end.85

if.then.63:                                       ; preds = %if.end.58
  %77 = load %struct._object*, %struct._object** %dict, align 8
  %ob_type64 = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 1
  %78 = load %struct._typeobject*, %struct._typeobject** %ob_type64, align 8
  %tp_flags65 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %78, i32 0, i32 19
  %79 = load i64, i64* %tp_flags65, align 8
  %and66 = and i64 %79, 536870912
  %cmp67 = icmp ne i64 %and66, 0
  br i1 %cmp67, label %if.end.72, label %if.then.68

if.then.68:                                       ; preds = %if.then.63
  %80 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %81 = load %struct._object*, %struct._object** %dict, align 8
  %ob_type69 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 1
  %82 = load %struct._typeobject*, %struct._typeobject** %ob_type69, align 8
  %tp_name70 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %82, i32 0, i32 1
  %83 = load i8*, i8** %tp_name70, align 8
  %call71 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %80, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.33, i32 0, i32 0), i8* %83)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.72:                                        ; preds = %if.then.63
  %84 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %dict73 = getelementptr inbounds %struct.stringio, %struct.stringio* %84, i32 0, i32 14
  %85 = load %struct._object*, %struct._object** %dict73, align 8
  %tobool74 = icmp ne %struct._object* %85, null
  br i1 %tobool74, label %if.then.75, label %if.else.81

if.then.75:                                       ; preds = %if.end.72
  %86 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %dict76 = getelementptr inbounds %struct.stringio, %struct.stringio* %86, i32 0, i32 14
  %87 = load %struct._object*, %struct._object** %dict76, align 8
  %88 = load %struct._object*, %struct._object** %dict, align 8
  %call77 = call i32 @PyDict_Update(%struct._object* %87, %struct._object* %88)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.then.75
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.80:                                        ; preds = %if.then.75
  br label %if.end.84

if.else.81:                                       ; preds = %if.end.72
  %89 = load %struct._object*, %struct._object** %dict, align 8
  %ob_refcnt82 = getelementptr inbounds %struct._object, %struct._object* %89, i32 0, i32 0
  %90 = load i64, i64* %ob_refcnt82, align 8
  %inc = add i64 %90, 1
  store i64 %inc, i64* %ob_refcnt82, align 8
  %91 = load %struct._object*, %struct._object** %dict, align 8
  %92 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %dict83 = getelementptr inbounds %struct.stringio, %struct.stringio* %92, i32 0, i32 14
  store %struct._object* %91, %struct._object** %dict83, align 8
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.81, %if.end.80
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.end.58
  %93 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc86 = add i64 %93, 1
  store i64 %inc86, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.85, %if.then.79, %if.then.68, %if.then.57, %if.then.54, %if.then.45, %if.then.36, %if.then.32, %do.end, %if.then.9, %if.then.2, %if.then
  %94 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %94
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @make_intermediate(%struct.stringio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.stringio*, align 8
  %intermediate = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8
  %0 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %accu = getelementptr inbounds %struct.stringio, %struct.stringio* %0, i32 0, i32 6
  %call = call %struct._object* @_PyAccu_Finish(%struct._PyAccu* %accu)
  store %struct._object* %call, %struct._object** %intermediate, align 8
  %1 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %state = getelementptr inbounds %struct.stringio, %struct.stringio* %1, i32 0, i32 5
  store i32 1, i32* %state, align 4
  %2 = load %struct._object*, %struct._object** %intermediate, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %accu1 = getelementptr inbounds %struct.stringio, %struct.stringio* %3, i32 0, i32 6
  %call2 = call i32 @_PyAccu_Init(%struct._PyAccu* %accu1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %accu3 = getelementptr inbounds %struct.stringio, %struct.stringio* %4, i32 0, i32 6
  %5 = load %struct._object*, %struct._object** %intermediate, align 8
  %call4 = call i32 @_PyAccu_Accumulate(%struct._PyAccu* %accu3, %struct._object* %5)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %6 = load %struct._object*, %struct._object** %intermediate, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %lor.lhs.false
  %13 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %state11 = getelementptr inbounds %struct.stringio, %struct.stringio* %13, i32 0, i32 5
  store i32 2, i32* %state11, align 4
  %14 = load %struct._object*, %struct._object** %intermediate, align 8
  store %struct._object* %14, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.10, %do.end, %if.then
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

declare i32 @_PyAccu_Init(%struct._PyAccu*) #1

declare i32 @_PyAccu_Accumulate(%struct._PyAccu*, %struct._object*) #1

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #1

declare i32 @PyNumber_Check(%struct._object*) #1

declare i64 @PyNumber_AsSsize_t(%struct._object*, %struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare %struct._object* @PyLong_FromSsize_t(i64) #1

declare i32 @_PyUnicode_Ready(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i64 @write_str(%struct.stringio* %self, %struct._object* %obj) #0 {
entry:
  %retval = alloca i64, align 8
  %self.addr = alloca %struct.stringio*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %len = alloca i64, align 8
  %decoded = alloca %struct._object*, align 8
  %translated = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  %_py_decref_tmp88 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp102 = alloca %struct._object*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* null, %struct._object** %decoded, align 8
  %0 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %decoder = getelementptr inbounds %struct.stringio, %struct.stringio* %0, i32 0, i32 11
  %1 = load %struct._object*, %struct._object** %decoder, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %decoder1 = getelementptr inbounds %struct.stringio, %struct.stringio* %2, i32 0, i32 11
  %3 = load %struct._object*, %struct._object** %decoder1, align 8
  %4 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call %struct._object* @_PyIncrementalNewlineDecoder_decode(%struct._object* %3, %struct._object* %4, i32 1)
  store %struct._object* %call, %struct._object** %decoded, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** %obj.addr, align 8
  store %struct._object* %5, %struct._object** %decoded, align 8
  %6 = load %struct._object*, %struct._object** %decoded, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %writenl = getelementptr inbounds %struct.stringio, %struct.stringio* %8, i32 0, i32 13
  %9 = load %struct._object*, %struct._object** %writenl, align 8
  %tobool = icmp ne %struct._object* %9, null
  br i1 %tobool, label %if.then.2, label %if.end.10

if.then.2:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %decoded, align 8
  %11 = load %struct._object*, %struct._object** @_PyIO_str_nl, align 8
  %12 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %writenl3 = getelementptr inbounds %struct.stringio, %struct.stringio* %12, i32 0, i32 13
  %13 = load %struct._object*, %struct._object** %writenl3, align 8
  %call4 = call %struct._object* @PyUnicode_Replace(%struct._object* %10, %struct._object* %11, %struct._object* %13, i64 -1)
  store %struct._object* %call4, %struct._object** %translated, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.2
  %14 = load %struct._object*, %struct._object** %decoded, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt5 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt5, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %ob_refcnt5, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %do.body
  br label %if.end.9

if.else.8:                                        ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %19(%struct._object* %20)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.8, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.9
  %21 = load %struct._object*, %struct._object** %translated, align 8
  store %struct._object* %21, %struct._object** %decoded, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %do.end, %if.end
  %22 = load %struct._object*, %struct._object** %decoded, align 8
  %cmp11 = icmp eq %struct._object* %22, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  store i64 -1, i64* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.10
  %23 = load %struct._object*, %struct._object** %decoded, align 8
  %24 = bitcast %struct._object* %23 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %24, i32 0, i32 3
  %25 = bitcast %struct.anon.0* %state to i32*
  %bf.load = load i32, i32* %25, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool14 = icmp ne i32 %bf.clear, 0
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.13
  br label %cond.end

cond.false:                                       ; preds = %if.end.13
  %26 = load %struct._object*, %struct._object** %decoded, align 8
  %call15 = call i32 @_PyUnicode_Ready(%struct._object* %26)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call15, %cond.false ]
  %tobool16 = icmp ne i32 %cond, 0
  br i1 %tobool16, label %if.then.17, label %if.end.29

if.then.17:                                       ; preds = %cond.end
  br label %do.body.18

do.body.18:                                       ; preds = %if.then.17
  %27 = load %struct._object*, %struct._object** %decoded, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp19, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt20, align 8
  %dec21 = add i64 %29, -1
  store i64 %dec21, i64* %ob_refcnt20, align 8
  %cmp22 = icmp ne i64 %dec21, 0
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.27

if.else.24:                                       ; preds = %do.body.18
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  call void %32(%struct._object* %33)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  store i64 -1, i64* %retval
  br label %return

if.end.29:                                        ; preds = %cond.end
  %34 = load %struct._object*, %struct._object** %decoded, align 8
  %35 = bitcast %struct._object* %34 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %35, i32 0, i32 1
  %36 = load i64, i64* %length, align 8
  store i64 %36, i64* %len, align 8
  %37 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %pos = getelementptr inbounds %struct.stringio, %struct.stringio* %37, i32 0, i32 2
  %38 = load i64, i64* %pos, align 8
  %39 = load i64, i64* %len, align 8
  %sub = sub i64 9223372036854775807, %39
  %cmp30 = icmp sgt i64 %38, %sub
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.29
  %40 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i32 0, i32 0))
  br label %fail

if.end.32:                                        ; preds = %if.end.29
  %41 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %state33 = getelementptr inbounds %struct.stringio, %struct.stringio* %41, i32 0, i32 5
  %42 = load i32, i32* %state33, align 4
  %cmp34 = icmp eq i32 %42, 2
  br i1 %cmp34, label %if.then.35, label %if.end.48

if.then.35:                                       ; preds = %if.end.32
  %43 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %string_size = getelementptr inbounds %struct.stringio, %struct.stringio* %43, i32 0, i32 3
  %44 = load i64, i64* %string_size, align 8
  %45 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %pos36 = getelementptr inbounds %struct.stringio, %struct.stringio* %45, i32 0, i32 2
  %46 = load i64, i64* %pos36, align 8
  %cmp37 = icmp eq i64 %44, %46
  br i1 %cmp37, label %if.then.38, label %if.end.43

if.then.38:                                       ; preds = %if.then.35
  %47 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %accu = getelementptr inbounds %struct.stringio, %struct.stringio* %47, i32 0, i32 6
  %48 = load %struct._object*, %struct._object** %decoded, align 8
  %call39 = call i32 @_PyAccu_Accumulate(%struct._PyAccu* %accu, %struct._object* %48)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.then.38
  br label %fail

if.end.42:                                        ; preds = %if.then.38
  br label %success

if.end.43:                                        ; preds = %if.then.35
  %49 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %call44 = call i32 @realize(%struct.stringio* %49)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.43
  br label %fail

if.end.47:                                        ; preds = %if.end.43
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.32
  %50 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %pos49 = getelementptr inbounds %struct.stringio, %struct.stringio* %50, i32 0, i32 2
  %51 = load i64, i64* %pos49, align 8
  %52 = load i64, i64* %len, align 8
  %add = add i64 %51, %52
  %53 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %string_size50 = getelementptr inbounds %struct.stringio, %struct.stringio* %53, i32 0, i32 3
  %54 = load i64, i64* %string_size50, align 8
  %cmp51 = icmp sgt i64 %add, %54
  br i1 %cmp51, label %if.then.52, label %if.end.59

if.then.52:                                       ; preds = %if.end.48
  %55 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %56 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %pos53 = getelementptr inbounds %struct.stringio, %struct.stringio* %56, i32 0, i32 2
  %57 = load i64, i64* %pos53, align 8
  %58 = load i64, i64* %len, align 8
  %add54 = add i64 %57, %58
  %call55 = call i32 @resize_buffer(%struct.stringio* %55, i64 %add54)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.then.52
  br label %fail

if.end.58:                                        ; preds = %if.then.52
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.end.48
  %59 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %pos60 = getelementptr inbounds %struct.stringio, %struct.stringio* %59, i32 0, i32 2
  %60 = load i64, i64* %pos60, align 8
  %61 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %string_size61 = getelementptr inbounds %struct.stringio, %struct.stringio* %61, i32 0, i32 3
  %62 = load i64, i64* %string_size61, align 8
  %cmp62 = icmp sgt i64 %60, %62
  br i1 %cmp62, label %if.then.63, label %if.end.68

if.then.63:                                       ; preds = %if.end.59
  %63 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %buf = getelementptr inbounds %struct.stringio, %struct.stringio* %63, i32 0, i32 1
  %64 = load i32*, i32** %buf, align 8
  %65 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %string_size64 = getelementptr inbounds %struct.stringio, %struct.stringio* %65, i32 0, i32 3
  %66 = load i64, i64* %string_size64, align 8
  %add.ptr = getelementptr i32, i32* %64, i64 %66
  %67 = bitcast i32* %add.ptr to i8*
  %68 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %pos65 = getelementptr inbounds %struct.stringio, %struct.stringio* %68, i32 0, i32 2
  %69 = load i64, i64* %pos65, align 8
  %70 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %string_size66 = getelementptr inbounds %struct.stringio, %struct.stringio* %70, i32 0, i32 3
  %71 = load i64, i64* %string_size66, align 8
  %sub67 = sub i64 %69, %71
  %mul = mul i64 %sub67, 4
  call void @llvm.memset.p0i8.i64(i8* %67, i8 0, i64 %mul, i32 4, i1 false)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.63, %if.end.59
  %72 = load %struct._object*, %struct._object** %decoded, align 8
  %73 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %buf69 = getelementptr inbounds %struct.stringio, %struct.stringio* %73, i32 0, i32 1
  %74 = load i32*, i32** %buf69, align 8
  %75 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %pos70 = getelementptr inbounds %struct.stringio, %struct.stringio* %75, i32 0, i32 2
  %76 = load i64, i64* %pos70, align 8
  %add.ptr71 = getelementptr i32, i32* %74, i64 %76
  %77 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %buf_size = getelementptr inbounds %struct.stringio, %struct.stringio* %77, i32 0, i32 4
  %78 = load i64, i64* %buf_size, align 8
  %79 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %pos72 = getelementptr inbounds %struct.stringio, %struct.stringio* %79, i32 0, i32 2
  %80 = load i64, i64* %pos72, align 8
  %sub73 = sub i64 %78, %80
  %call74 = call i32* @PyUnicode_AsUCS4(%struct._object* %72, i32* %add.ptr71, i64 %sub73, i32 0)
  %tobool75 = icmp ne i32* %call74, null
  br i1 %tobool75, label %if.end.77, label %if.then.76

if.then.76:                                       ; preds = %if.end.68
  br label %fail

if.end.77:                                        ; preds = %if.end.68
  br label %success

success:                                          ; preds = %if.end.77, %if.end.42
  %81 = load i64, i64* %len, align 8
  %82 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %pos78 = getelementptr inbounds %struct.stringio, %struct.stringio* %82, i32 0, i32 2
  %83 = load i64, i64* %pos78, align 8
  %add79 = add i64 %83, %81
  store i64 %add79, i64* %pos78, align 8
  %84 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %string_size80 = getelementptr inbounds %struct.stringio, %struct.stringio* %84, i32 0, i32 3
  %85 = load i64, i64* %string_size80, align 8
  %86 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %pos81 = getelementptr inbounds %struct.stringio, %struct.stringio* %86, i32 0, i32 2
  %87 = load i64, i64* %pos81, align 8
  %cmp82 = icmp slt i64 %85, %87
  br i1 %cmp82, label %if.then.83, label %if.end.86

if.then.83:                                       ; preds = %success
  %88 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %pos84 = getelementptr inbounds %struct.stringio, %struct.stringio* %88, i32 0, i32 2
  %89 = load i64, i64* %pos84, align 8
  %90 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %string_size85 = getelementptr inbounds %struct.stringio, %struct.stringio* %90, i32 0, i32 3
  store i64 %89, i64* %string_size85, align 8
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.83, %success
  br label %do.body.87

do.body.87:                                       ; preds = %if.end.86
  %91 = load %struct._object*, %struct._object** %decoded, align 8
  store %struct._object* %91, %struct._object** %_py_decref_tmp88, align 8
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp88, align 8
  %ob_refcnt89 = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 0
  %93 = load i64, i64* %ob_refcnt89, align 8
  %dec90 = add i64 %93, -1
  store i64 %dec90, i64* %ob_refcnt89, align 8
  %cmp91 = icmp ne i64 %dec90, 0
  br i1 %cmp91, label %if.then.92, label %if.else.93

if.then.92:                                       ; preds = %do.body.87
  br label %if.end.96

if.else.93:                                       ; preds = %do.body.87
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp88, align 8
  %ob_type94 = getelementptr inbounds %struct._object, %struct._object* %94, i32 0, i32 1
  %95 = load %struct._typeobject*, %struct._typeobject** %ob_type94, align 8
  %tp_dealloc95 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %95, i32 0, i32 4
  %96 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc95, align 8
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp88, align 8
  call void %96(%struct._object* %97)
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.93, %if.then.92
  br label %do.end.97

do.end.97:                                        ; preds = %if.end.96
  store i64 0, i64* %retval
  br label %return

fail:                                             ; preds = %if.then.76, %if.then.57, %if.then.46, %if.then.41, %if.then.31
  br label %do.body.98

do.body.98:                                       ; preds = %fail
  %98 = load %struct._object*, %struct._object** %decoded, align 8
  store %struct._object* %98, %struct._object** %_py_xdecref_tmp, align 8
  %99 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp99 = icmp ne %struct._object* %99, null
  br i1 %cmp99, label %if.then.100, label %if.end.112

if.then.100:                                      ; preds = %do.body.98
  br label %do.body.101

do.body.101:                                      ; preds = %if.then.100
  %100 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %100, %struct._object** %_py_decref_tmp102, align 8
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp102, align 8
  %ob_refcnt103 = getelementptr inbounds %struct._object, %struct._object* %101, i32 0, i32 0
  %102 = load i64, i64* %ob_refcnt103, align 8
  %dec104 = add i64 %102, -1
  store i64 %dec104, i64* %ob_refcnt103, align 8
  %cmp105 = icmp ne i64 %dec104, 0
  br i1 %cmp105, label %if.then.106, label %if.else.107

if.then.106:                                      ; preds = %do.body.101
  br label %if.end.110

if.else.107:                                      ; preds = %do.body.101
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp102, align 8
  %ob_type108 = getelementptr inbounds %struct._object, %struct._object* %103, i32 0, i32 1
  %104 = load %struct._typeobject*, %struct._typeobject** %ob_type108, align 8
  %tp_dealloc109 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %104, i32 0, i32 4
  %105 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc109, align 8
  %106 = load %struct._object*, %struct._object** %_py_decref_tmp102, align 8
  call void %105(%struct._object* %106)
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.107, %if.then.106
  br label %do.end.111

do.end.111:                                       ; preds = %if.end.110
  br label %if.end.112

if.end.112:                                       ; preds = %do.end.111, %do.body.98
  br label %do.end.113

do.end.113:                                       ; preds = %if.end.112
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %do.end.113, %do.end.97, %do.end.28, %if.then.12
  %107 = load i64, i64* %retval
  ret i64 %107
}

declare %struct._object* @_PyIncrementalNewlineDecoder_decode(%struct._object*, %struct._object*, i32) #1

declare %struct._object* @PyUnicode_Replace(%struct._object*, %struct._object*, %struct._object*, i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare %struct._object* @PyDict_Copy(%struct._object*) #1

declare %struct._object* @_Py_BuildValue_SizeT(i8*, ...) #1

declare %struct._object* @PyTuple_GetSlice(%struct._object*, i64, i64) #1

declare i32* @PyUnicode_AsUCS4Copy(%struct._object*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i64 @PyLong_AsSsize_t(%struct._object*) #1

declare i32 @PyDict_Update(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_closed(%struct.stringio* %self, i8* %context) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.stringio*, align 8
  %context.addr = alloca i8*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  %0 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %0, i32 0, i32 7
  %1 = load i8, i8* %ok, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp sle i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %3, i32 0, i32 8
  %4 = load i8, i8* %closed, align 1
  %conv2 = sext i8 %4 to i64
  %call = call %struct._object* @PyBool_FromLong(i64 %conv2)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_newlines(%struct.stringio* %self, i8* %context) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.stringio*, align 8
  %context.addr = alloca i8*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  %0 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %0, i32 0, i32 7
  %1 = load i8, i8* %ok, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp sle i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %3, i32 0, i32 8
  %4 = load i8, i8* %closed, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %decoder = getelementptr inbounds %struct.stringio, %struct.stringio* %6, i32 0, i32 11
  %7 = load %struct._object*, %struct._object** %decoder, align 8
  %cmp4 = icmp eq %struct._object* %7, null
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  %8 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %9 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %decoder8 = getelementptr inbounds %struct.stringio, %struct.stringio* %9, i32 0, i32 11
  %10 = load %struct._object*, %struct._object** %decoder8, align 8
  %11 = load %struct._object*, %struct._object** @_PyIO_str_newlines, align 8
  %call = call %struct._object* @PyObject_GetAttr(%struct._object* %10, %struct._object* %11)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then.2, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_line_buffering(%struct.stringio* %self, i8* %context) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.stringio*, align 8
  %context.addr = alloca i8*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  %0 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %0, i32 0, i32 7
  %1 = load i8, i8* %ok, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp sle i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.stringio*, %struct.stringio** %self.addr, align 8
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %3, i32 0, i32 8
  %4 = load i8, i8* %closed, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

declare %struct._object* @PyBool_FromLong(i64) #1

declare %struct._object* @PyObject_GetAttr(%struct._object*, %struct._object*) #1

declare i32 @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object*, %struct._object*, i8*, i8**, ...) #1

declare i8* @PyUnicode_AsUTF8(%struct._object*) #1

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare %struct._object* @_PyObject_CallFunction_SizeT(%struct._object*, i8*, ...) #1

declare i64 @PyUnicode_GetLength(%struct._object*) #1

declare i8* @PyMem_Malloc(i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
