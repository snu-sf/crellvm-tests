; ModuleID = 'irs-onlybc/stringio.bc'
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
  %_py_tmp33 = alloca %struct._object*, align 8
  %_py_decref_tmp38 = alloca %struct._object*, align 8
  %_py_tmp53 = alloca %struct._object*, align 8
  %_py_decref_tmp58 = alloca %struct._object*, align 8
  %_py_tmp73 = alloca %struct._object*, align 8
  %_py_decref_tmp78 = alloca %struct._object*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct.stringio** %self.addr, metadata !432, metadata !791), !dbg !792
  br label %do.body, !dbg !793

do.body:                                          ; preds = %entry
  %0 = bitcast %union._gc_head** %g to i8*, !dbg !794
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !794
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !433, metadata !791), !dbg !796
  %1 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !797, !tbaa !787
  %2 = bitcast %struct.stringio* %1 to %union._gc_head*, !dbg !798
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %2, i64 -1, !dbg !799
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8, !dbg !796, !tbaa !787
  br label %do.body.1, !dbg !800

do.body.1:                                        ; preds = %do.body
  %3 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !801, !tbaa !787
  %gc = bitcast %union._gc_head* %3 to %struct.anon*, !dbg !804
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !805
  %4 = load i64, i64* %gc_refs, align 8, !dbg !805, !tbaa !806
  %and = and i64 %4, 1, !dbg !809
  %or = or i64 %and, -4, !dbg !810
  %5 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !811, !tbaa !787
  %gc2 = bitcast %union._gc_head* %5 to %struct.anon*, !dbg !812
  %gc_refs3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2, !dbg !813
  store i64 %or, i64* %gc_refs3, align 8, !dbg !814, !tbaa !806
  br label %do.cond, !dbg !815

do.cond:                                          ; preds = %do.body.1
  br label %do.end, !dbg !816

do.end:                                           ; preds = %do.cond
  %6 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !818, !tbaa !787
  %gc4 = bitcast %union._gc_head* %6 to %struct.anon*, !dbg !820
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 0, !dbg !821
  %7 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !821, !tbaa !822
  %8 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !823, !tbaa !787
  %gc5 = bitcast %union._gc_head* %8 to %struct.anon*, !dbg !824
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 1, !dbg !825
  %9 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !825, !tbaa !826
  %gc6 = bitcast %union._gc_head* %9 to %struct.anon*, !dbg !827
  %gc_next7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 0, !dbg !828
  store %union._gc_head* %7, %union._gc_head** %gc_next7, align 8, !dbg !829, !tbaa !822
  %10 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !830, !tbaa !787
  %gc8 = bitcast %union._gc_head* %10 to %struct.anon*, !dbg !831
  %gc_prev9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1, !dbg !832
  %11 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8, !dbg !832, !tbaa !826
  %12 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !833, !tbaa !787
  %gc10 = bitcast %union._gc_head* %12 to %struct.anon*, !dbg !834
  %gc_next11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 0, !dbg !835
  %13 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8, !dbg !835, !tbaa !822
  %gc12 = bitcast %union._gc_head* %13 to %struct.anon*, !dbg !836
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 1, !dbg !837
  store %union._gc_head* %11, %union._gc_head** %gc_prev13, align 8, !dbg !838, !tbaa !826
  %14 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !839, !tbaa !787
  %gc14 = bitcast %union._gc_head* %14 to %struct.anon*, !dbg !840
  %gc_next15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 0, !dbg !841
  store %union._gc_head* null, %union._gc_head** %gc_next15, align 8, !dbg !842, !tbaa !822
  %15 = bitcast %union._gc_head** %g to i8*, !dbg !843
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !843
  br label %do.end.17, !dbg !844

do.end.17:                                        ; preds = %do.end
  %16 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !845, !tbaa !787
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %16, i32 0, i32 7, !dbg !846
  store i8 0, i8* %ok, align 1, !dbg !847, !tbaa !848
  %17 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !853, !tbaa !787
  %buf = getelementptr inbounds %struct.stringio, %struct.stringio* %17, i32 0, i32 1, !dbg !855
  %18 = load i32*, i32** %buf, align 8, !dbg !855, !tbaa !856
  %tobool = icmp ne i32* %18, null, !dbg !853
  br i1 %tobool, label %if.then, label %if.end, !dbg !857

if.then:                                          ; preds = %do.end.17
  %19 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !858, !tbaa !787
  %buf18 = getelementptr inbounds %struct.stringio, %struct.stringio* %19, i32 0, i32 1, !dbg !860
  %20 = load i32*, i32** %buf18, align 8, !dbg !860, !tbaa !856
  %21 = bitcast i32* %20 to i8*, !dbg !858
  call void @PyMem_Free(i8* %21), !dbg !861
  %22 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !862, !tbaa !787
  %buf19 = getelementptr inbounds %struct.stringio, %struct.stringio* %22, i32 0, i32 1, !dbg !863
  store i32* null, i32** %buf19, align 8, !dbg !864, !tbaa !856
  br label %if.end, !dbg !865

if.end:                                           ; preds = %if.then, %do.end.17
  %23 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !866, !tbaa !787
  %accu = getelementptr inbounds %struct.stringio, %struct.stringio* %23, i32 0, i32 6, !dbg !867
  call void @_PyAccu_Destroy(%struct._PyAccu* %accu), !dbg !868
  br label %do.body.20, !dbg !869

do.body.20:                                       ; preds = %if.end
  %24 = bitcast %struct._object** %_py_tmp to i8*, !dbg !870
  call void @llvm.lifetime.start(i64 8, i8* %24) #2, !dbg !870
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !435, metadata !791), !dbg !872
  %25 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !873, !tbaa !787
  %readnl = getelementptr inbounds %struct.stringio, %struct.stringio* %25, i32 0, i32 12, !dbg !874
  %26 = load %struct._object*, %struct._object** %readnl, align 8, !dbg !874, !tbaa !875
  store %struct._object* %26, %struct._object** %_py_tmp, align 8, !dbg !872, !tbaa !787
  %27 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !876, !tbaa !787
  %cmp = icmp ne %struct._object* %27, null, !dbg !877
  br i1 %cmp, label %if.then.21, label %if.end.29, !dbg !878

if.then.21:                                       ; preds = %do.body.20
  %28 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !879, !tbaa !787
  %readnl22 = getelementptr inbounds %struct.stringio, %struct.stringio* %28, i32 0, i32 12, !dbg !881
  store %struct._object* null, %struct._object** %readnl22, align 8, !dbg !882, !tbaa !875
  br label %do.body.23, !dbg !883

do.body.23:                                       ; preds = %if.then.21
  %29 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !884
  call void @llvm.lifetime.start(i64 8, i8* %29) #2, !dbg !884
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !437, metadata !791), !dbg !886
  %30 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !887, !tbaa !787
  store %struct._object* %30, %struct._object** %_py_decref_tmp, align 8, !dbg !886, !tbaa !787
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !888, !tbaa !787
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0, !dbg !890
  %32 = load i64, i64* %ob_refcnt, align 8, !dbg !891, !tbaa !892
  %dec = add i64 %32, -1, !dbg !891
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !891, !tbaa !892
  %cmp24 = icmp ne i64 %dec, 0, !dbg !893
  br i1 %cmp24, label %if.then.25, label %if.else, !dbg !894

if.then.25:                                       ; preds = %do.body.23
  br label %if.end.26, !dbg !895

if.else:                                          ; preds = %do.body.23
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !897, !tbaa !787
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1, !dbg !899
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !899, !tbaa !900
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4, !dbg !901
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !901, !tbaa !902
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !905, !tbaa !787
  call void %35(%struct._object* %36), !dbg !906
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.25
  %37 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !907
  call void @llvm.lifetime.end(i64 8, i8* %37) #2, !dbg !907
  br label %do.cond.27, !dbg !909

do.cond.27:                                       ; preds = %if.end.26
  br label %do.end.28, !dbg !910

do.end.28:                                        ; preds = %do.cond.27
  br label %if.end.29, !dbg !912

if.end.29:                                        ; preds = %do.end.28, %do.body.20
  %38 = bitcast %struct._object** %_py_tmp to i8*, !dbg !914
  call void @llvm.lifetime.end(i64 8, i8* %38) #2, !dbg !914
  br label %do.end.31, !dbg !917

do.end.31:                                        ; preds = %if.end.29
  br label %do.body.32, !dbg !918

do.body.32:                                       ; preds = %do.end.31
  %39 = bitcast %struct._object** %_py_tmp33 to i8*, !dbg !919
  call void @llvm.lifetime.start(i64 8, i8* %39) #2, !dbg !919
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp33, metadata !441, metadata !791), !dbg !921
  %40 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !922, !tbaa !787
  %writenl = getelementptr inbounds %struct.stringio, %struct.stringio* %40, i32 0, i32 13, !dbg !923
  %41 = load %struct._object*, %struct._object** %writenl, align 8, !dbg !923, !tbaa !924
  store %struct._object* %41, %struct._object** %_py_tmp33, align 8, !dbg !921, !tbaa !787
  %42 = load %struct._object*, %struct._object** %_py_tmp33, align 8, !dbg !925, !tbaa !787
  %cmp34 = icmp ne %struct._object* %42, null, !dbg !926
  br i1 %cmp34, label %if.then.35, label %if.end.49, !dbg !927

if.then.35:                                       ; preds = %do.body.32
  %43 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !928, !tbaa !787
  %writenl36 = getelementptr inbounds %struct.stringio, %struct.stringio* %43, i32 0, i32 13, !dbg !930
  store %struct._object* null, %struct._object** %writenl36, align 8, !dbg !931, !tbaa !924
  br label %do.body.37, !dbg !932

do.body.37:                                       ; preds = %if.then.35
  %44 = bitcast %struct._object** %_py_decref_tmp38 to i8*, !dbg !933
  call void @llvm.lifetime.start(i64 8, i8* %44) #2, !dbg !933
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp38, metadata !443, metadata !791), !dbg !935
  %45 = load %struct._object*, %struct._object** %_py_tmp33, align 8, !dbg !936, !tbaa !787
  store %struct._object* %45, %struct._object** %_py_decref_tmp38, align 8, !dbg !935, !tbaa !787
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8, !dbg !937, !tbaa !787
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0, !dbg !939
  %47 = load i64, i64* %ob_refcnt39, align 8, !dbg !940, !tbaa !892
  %dec40 = add i64 %47, -1, !dbg !940
  store i64 %dec40, i64* %ob_refcnt39, align 8, !dbg !940, !tbaa !892
  %cmp41 = icmp ne i64 %dec40, 0, !dbg !941
  br i1 %cmp41, label %if.then.42, label %if.else.43, !dbg !942

if.then.42:                                       ; preds = %do.body.37
  br label %if.end.46, !dbg !943

if.else.43:                                       ; preds = %do.body.37
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8, !dbg !945, !tbaa !787
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1, !dbg !947
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8, !dbg !947, !tbaa !900
  %tp_dealloc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4, !dbg !948
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8, !dbg !948, !tbaa !902
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8, !dbg !949, !tbaa !787
  call void %50(%struct._object* %51), !dbg !950
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.42
  %52 = bitcast %struct._object** %_py_decref_tmp38 to i8*, !dbg !951
  call void @llvm.lifetime.end(i64 8, i8* %52) #2, !dbg !951
  br label %do.cond.47, !dbg !953

do.cond.47:                                       ; preds = %if.end.46
  br label %do.end.48, !dbg !954

do.end.48:                                        ; preds = %do.cond.47
  br label %if.end.49, !dbg !956

if.end.49:                                        ; preds = %do.end.48, %do.body.32
  %53 = bitcast %struct._object** %_py_tmp33 to i8*, !dbg !958
  call void @llvm.lifetime.end(i64 8, i8* %53) #2, !dbg !958
  br label %do.end.51, !dbg !959

do.end.51:                                        ; preds = %if.end.49
  br label %do.body.52, !dbg !960

do.body.52:                                       ; preds = %do.end.51
  %54 = bitcast %struct._object** %_py_tmp53 to i8*, !dbg !961
  call void @llvm.lifetime.start(i64 8, i8* %54) #2, !dbg !961
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp53, metadata !447, metadata !791), !dbg !963
  %55 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !964, !tbaa !787
  %decoder = getelementptr inbounds %struct.stringio, %struct.stringio* %55, i32 0, i32 11, !dbg !965
  %56 = load %struct._object*, %struct._object** %decoder, align 8, !dbg !965, !tbaa !966
  store %struct._object* %56, %struct._object** %_py_tmp53, align 8, !dbg !963, !tbaa !787
  %57 = load %struct._object*, %struct._object** %_py_tmp53, align 8, !dbg !967, !tbaa !787
  %cmp54 = icmp ne %struct._object* %57, null, !dbg !968
  br i1 %cmp54, label %if.then.55, label %if.end.69, !dbg !969

if.then.55:                                       ; preds = %do.body.52
  %58 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !970, !tbaa !787
  %decoder56 = getelementptr inbounds %struct.stringio, %struct.stringio* %58, i32 0, i32 11, !dbg !972
  store %struct._object* null, %struct._object** %decoder56, align 8, !dbg !973, !tbaa !966
  br label %do.body.57, !dbg !974

do.body.57:                                       ; preds = %if.then.55
  %59 = bitcast %struct._object** %_py_decref_tmp58 to i8*, !dbg !975
  call void @llvm.lifetime.start(i64 8, i8* %59) #2, !dbg !975
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp58, metadata !449, metadata !791), !dbg !977
  %60 = load %struct._object*, %struct._object** %_py_tmp53, align 8, !dbg !978, !tbaa !787
  store %struct._object* %60, %struct._object** %_py_decref_tmp58, align 8, !dbg !977, !tbaa !787
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8, !dbg !979, !tbaa !787
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 0, !dbg !981
  %62 = load i64, i64* %ob_refcnt59, align 8, !dbg !982, !tbaa !892
  %dec60 = add i64 %62, -1, !dbg !982
  store i64 %dec60, i64* %ob_refcnt59, align 8, !dbg !982, !tbaa !892
  %cmp61 = icmp ne i64 %dec60, 0, !dbg !983
  br i1 %cmp61, label %if.then.62, label %if.else.63, !dbg !984

if.then.62:                                       ; preds = %do.body.57
  br label %if.end.66, !dbg !985

if.else.63:                                       ; preds = %do.body.57
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8, !dbg !987, !tbaa !787
  %ob_type64 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 1, !dbg !989
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type64, align 8, !dbg !989, !tbaa !900
  %tp_dealloc65 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %64, i32 0, i32 4, !dbg !990
  %65 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc65, align 8, !dbg !990, !tbaa !902
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8, !dbg !991, !tbaa !787
  call void %65(%struct._object* %66), !dbg !992
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.63, %if.then.62
  %67 = bitcast %struct._object** %_py_decref_tmp58 to i8*, !dbg !993
  call void @llvm.lifetime.end(i64 8, i8* %67) #2, !dbg !993
  br label %do.cond.67, !dbg !995

do.cond.67:                                       ; preds = %if.end.66
  br label %do.end.68, !dbg !996

do.end.68:                                        ; preds = %do.cond.67
  br label %if.end.69, !dbg !998

if.end.69:                                        ; preds = %do.end.68, %do.body.52
  %68 = bitcast %struct._object** %_py_tmp53 to i8*, !dbg !1000
  call void @llvm.lifetime.end(i64 8, i8* %68) #2, !dbg !1000
  br label %do.end.71, !dbg !1001

do.end.71:                                        ; preds = %if.end.69
  br label %do.body.72, !dbg !1002

do.body.72:                                       ; preds = %do.end.71
  %69 = bitcast %struct._object** %_py_tmp73 to i8*, !dbg !1003
  call void @llvm.lifetime.start(i64 8, i8* %69) #2, !dbg !1003
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp73, metadata !453, metadata !791), !dbg !1005
  %70 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1006, !tbaa !787
  %dict = getelementptr inbounds %struct.stringio, %struct.stringio* %70, i32 0, i32 14, !dbg !1007
  %71 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1007, !tbaa !1008
  store %struct._object* %71, %struct._object** %_py_tmp73, align 8, !dbg !1005, !tbaa !787
  %72 = load %struct._object*, %struct._object** %_py_tmp73, align 8, !dbg !1009, !tbaa !787
  %cmp74 = icmp ne %struct._object* %72, null, !dbg !1010
  br i1 %cmp74, label %if.then.75, label %if.end.89, !dbg !1011

if.then.75:                                       ; preds = %do.body.72
  %73 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1012, !tbaa !787
  %dict76 = getelementptr inbounds %struct.stringio, %struct.stringio* %73, i32 0, i32 14, !dbg !1014
  store %struct._object* null, %struct._object** %dict76, align 8, !dbg !1015, !tbaa !1008
  br label %do.body.77, !dbg !1016

do.body.77:                                       ; preds = %if.then.75
  %74 = bitcast %struct._object** %_py_decref_tmp78 to i8*, !dbg !1017
  call void @llvm.lifetime.start(i64 8, i8* %74) #2, !dbg !1017
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp78, metadata !455, metadata !791), !dbg !1019
  %75 = load %struct._object*, %struct._object** %_py_tmp73, align 8, !dbg !1020, !tbaa !787
  store %struct._object* %75, %struct._object** %_py_decref_tmp78, align 8, !dbg !1019, !tbaa !787
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8, !dbg !1021, !tbaa !787
  %ob_refcnt79 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 0, !dbg !1023
  %77 = load i64, i64* %ob_refcnt79, align 8, !dbg !1024, !tbaa !892
  %dec80 = add i64 %77, -1, !dbg !1024
  store i64 %dec80, i64* %ob_refcnt79, align 8, !dbg !1024, !tbaa !892
  %cmp81 = icmp ne i64 %dec80, 0, !dbg !1025
  br i1 %cmp81, label %if.then.82, label %if.else.83, !dbg !1026

if.then.82:                                       ; preds = %do.body.77
  br label %if.end.86, !dbg !1027

if.else.83:                                       ; preds = %do.body.77
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8, !dbg !1029, !tbaa !787
  %ob_type84 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1, !dbg !1031
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type84, align 8, !dbg !1031, !tbaa !900
  %tp_dealloc85 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %79, i32 0, i32 4, !dbg !1032
  %80 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc85, align 8, !dbg !1032, !tbaa !902
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8, !dbg !1033, !tbaa !787
  call void %80(%struct._object* %81), !dbg !1034
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.83, %if.then.82
  %82 = bitcast %struct._object** %_py_decref_tmp78 to i8*, !dbg !1035
  call void @llvm.lifetime.end(i64 8, i8* %82) #2, !dbg !1035
  br label %do.cond.87, !dbg !1037

do.cond.87:                                       ; preds = %if.end.86
  br label %do.end.88, !dbg !1038

do.end.88:                                        ; preds = %do.cond.87
  br label %if.end.89, !dbg !1040

if.end.89:                                        ; preds = %do.end.88, %do.body.72
  %83 = bitcast %struct._object** %_py_tmp73 to i8*, !dbg !1042
  call void @llvm.lifetime.end(i64 8, i8* %83) #2, !dbg !1042
  br label %do.end.91, !dbg !1043

do.end.91:                                        ; preds = %if.end.89
  %84 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1044, !tbaa !787
  %weakreflist = getelementptr inbounds %struct.stringio, %struct.stringio* %84, i32 0, i32 15, !dbg !1046
  %85 = load %struct._object*, %struct._object** %weakreflist, align 8, !dbg !1046, !tbaa !1047
  %cmp92 = icmp ne %struct._object* %85, null, !dbg !1048
  br i1 %cmp92, label %if.then.93, label %if.end.94, !dbg !1049

if.then.93:                                       ; preds = %do.end.91
  %86 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1050, !tbaa !787
  %87 = bitcast %struct.stringio* %86 to %struct._object*, !dbg !1051
  call void @PyObject_ClearWeakRefs(%struct._object* %87), !dbg !1052
  br label %if.end.94, !dbg !1052

if.end.94:                                        ; preds = %if.then.93, %do.end.91
  %88 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1053, !tbaa !787
  %89 = bitcast %struct.stringio* %88 to %struct._object*, !dbg !1054
  %ob_type95 = getelementptr inbounds %struct._object, %struct._object* %89, i32 0, i32 1, !dbg !1055
  %90 = load %struct._typeobject*, %struct._typeobject** %ob_type95, align 8, !dbg !1055, !tbaa !900
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %90, i32 0, i32 38, !dbg !1056
  %91 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !1056, !tbaa !1057
  %92 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1058, !tbaa !787
  %93 = bitcast %struct.stringio* %92 to i8*, !dbg !1058
  call void %91(i8* %93), !dbg !1059
  ret void, !dbg !1060
}

; Function Attrs: nounwind uwtable
define internal i32 @stringio_traverse(%struct.stringio* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.stringio*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct.stringio** %self.addr, metadata !463, metadata !791), !dbg !1061
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !464, metadata !791), !dbg !1062
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !465, metadata !791), !dbg !1063
  br label %do.body, !dbg !1064

do.body:                                          ; preds = %entry
  %0 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1065, !tbaa !787
  %dict = getelementptr inbounds %struct.stringio, %struct.stringio* %0, i32 0, i32 14, !dbg !1067
  %1 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1067, !tbaa !1008
  %tobool = icmp ne %struct._object* %1, null, !dbg !1068
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !1069

if.then:                                          ; preds = %do.body
  %2 = bitcast i32* %vret to i8*, !dbg !1070
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1070
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !466, metadata !791), !dbg !1072
  %3 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !1073, !tbaa !787
  %4 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1074, !tbaa !787
  %dict1 = getelementptr inbounds %struct.stringio, %struct.stringio* %4, i32 0, i32 14, !dbg !1075
  %5 = load %struct._object*, %struct._object** %dict1, align 8, !dbg !1075, !tbaa !1008
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !1076, !tbaa !787
  %call = call i32 %3(%struct._object* %5, i8* %6), !dbg !1073
  store i32 %call, i32* %vret, align 4, !dbg !1072, !tbaa !1077
  %7 = load i32, i32* %vret, align 4, !dbg !1078, !tbaa !1077
  %tobool2 = icmp ne i32 %7, 0, !dbg !1078
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !1080

if.then.3:                                        ; preds = %if.then
  %8 = load i32, i32* %vret, align 4, !dbg !1081, !tbaa !1077
  store i32 %8, i32* %retval, !dbg !1083
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1083

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !1084
  br label %cleanup, !dbg !1084

cleanup:                                          ; preds = %if.end, %if.then.3
  %9 = bitcast i32* %vret to i8*, !dbg !1086
  call void @llvm.lifetime.end(i64 4, i8* %9) #2, !dbg !1086
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.4, !dbg !1089

if.end.4:                                         ; preds = %cleanup.cont, %do.body
  br label %do.end, !dbg !1090

do.end:                                           ; preds = %if.end.4
  store i32 0, i32* %retval, !dbg !1093
  br label %return, !dbg !1093

return:                                           ; preds = %do.end, %cleanup
  %10 = load i32, i32* %retval, !dbg !1094
  ret i32 %10, !dbg !1094

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @stringio_clear(%struct.stringio* %self) #0 {
entry:
  %self.addr = alloca %struct.stringio*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct.stringio** %self.addr, metadata !474, metadata !791), !dbg !1095
  br label %do.body, !dbg !1096

do.body:                                          ; preds = %entry
  %0 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1097
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1097
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !475, metadata !791), !dbg !1099
  %1 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1100, !tbaa !787
  %dict = getelementptr inbounds %struct.stringio, %struct.stringio* %1, i32 0, i32 14, !dbg !1101
  %2 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1101, !tbaa !1008
  store %struct._object* %2, %struct._object** %_py_tmp, align 8, !dbg !1099, !tbaa !787
  %3 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1102, !tbaa !787
  %cmp = icmp ne %struct._object* %3, null, !dbg !1103
  br i1 %cmp, label %if.then, label %if.end.5, !dbg !1104

if.then:                                          ; preds = %do.body
  %4 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1105, !tbaa !787
  %dict1 = getelementptr inbounds %struct.stringio, %struct.stringio* %4, i32 0, i32 14, !dbg !1107
  store %struct._object* null, %struct._object** %dict1, align 8, !dbg !1108, !tbaa !1008
  br label %do.body.2, !dbg !1109

do.body.2:                                        ; preds = %if.then
  %5 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1110
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !1110
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !477, metadata !791), !dbg !1112
  %6 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1113, !tbaa !787
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8, !dbg !1112, !tbaa !787
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1114, !tbaa !787
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !1116
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !1117, !tbaa !892
  %dec = add i64 %8, -1, !dbg !1117
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1117, !tbaa !892
  %cmp3 = icmp ne i64 %dec, 0, !dbg !1118
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !1119

if.then.4:                                        ; preds = %do.body.2
  br label %if.end, !dbg !1120

if.else:                                          ; preds = %do.body.2
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1122, !tbaa !787
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !1124
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1124, !tbaa !900
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4, !dbg !1125
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1125, !tbaa !902
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1126, !tbaa !787
  call void %11(%struct._object* %12), !dbg !1127
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1128
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !1128
  br label %do.cond, !dbg !1130

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1131

do.end:                                           ; preds = %do.cond
  br label %if.end.5, !dbg !1133

if.end.5:                                         ; preds = %do.end, %do.body
  %14 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1135
  call void @llvm.lifetime.end(i64 8, i8* %14) #2, !dbg !1135
  br label %do.end.7, !dbg !1138

do.end.7:                                         ; preds = %if.end.5
  ret i32 0, !dbg !1139
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_iternext(%struct.stringio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.stringio*, align 8
  %line = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp36 = alloca %struct._object*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct.stringio** %self.addr, metadata !485, metadata !791), !dbg !1140
  %0 = bitcast %struct._object** %line to i8*, !dbg !1141
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1141
  call void @llvm.dbg.declare(metadata %struct._object** %line, metadata !486, metadata !791), !dbg !1142
  %1 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1143, !tbaa !787
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %1, i32 0, i32 7, !dbg !1145
  %2 = load i8, i8* %ok, align 1, !dbg !1145, !tbaa !848
  %conv = sext i8 %2 to i32, !dbg !1143
  %cmp = icmp sle i32 %conv, 0, !dbg !1146
  br i1 %cmp, label %if.then, label %if.end, !dbg !1147

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1148, !tbaa !787
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0)), !dbg !1151
  store %struct._object* null, %struct._object** %retval, !dbg !1152
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1152

if.end:                                           ; preds = %entry
  %4 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1153, !tbaa !787
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %4, i32 0, i32 8, !dbg !1155
  %5 = load i8, i8* %closed, align 1, !dbg !1155, !tbaa !1156
  %tobool = icmp ne i8 %5, 0, !dbg !1153
  br i1 %tobool, label %if.then.2, label %if.end.3, !dbg !1157

if.then.2:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1158, !tbaa !787
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0)), !dbg !1161
  store %struct._object* null, %struct._object** %retval, !dbg !1162
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1162

if.end.3:                                         ; preds = %if.end
  %7 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1163, !tbaa !787
  %call = call i32 @realize(%struct.stringio* %7), !dbg !1165
  %cmp4 = icmp slt i32 %call, 0, !dbg !1166
  br i1 %cmp4, label %if.then.6, label %if.end.7, !dbg !1167

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval, !dbg !1168
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1171

if.end.7:                                         ; preds = %if.end.3
  %8 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1172, !tbaa !787
  %9 = bitcast %struct.stringio* %8 to %struct._object*, !dbg !1173
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !1174
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1174, !tbaa !900
  %cmp8 = icmp eq %struct._typeobject* %10, @PyStringIO_Type, !dbg !1175
  br i1 %cmp8, label %if.then.10, label %if.else, !dbg !1176

if.then.10:                                       ; preds = %if.end.7
  %11 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1177, !tbaa !787
  %call11 = call %struct._object* @_stringio_readline(%struct.stringio* %11, i64 -1), !dbg !1179
  store %struct._object* %call11, %struct._object** %line, align 8, !dbg !1180, !tbaa !787
  br label %if.end.27, !dbg !1181

if.else:                                          ; preds = %if.end.7
  %12 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1182, !tbaa !787
  %13 = bitcast %struct.stringio* %12 to %struct._object*, !dbg !1183
  %14 = load %struct._object*, %struct._object** @_PyIO_str_readline, align 8, !dbg !1184, !tbaa !787
  %call12 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %13, %struct._object* %14, i8* null), !dbg !1185
  store %struct._object* %call12, %struct._object** %line, align 8, !dbg !1186, !tbaa !787
  %15 = load %struct._object*, %struct._object** %line, align 8, !dbg !1187, !tbaa !787
  %tobool13 = icmp ne %struct._object* %15, null, !dbg !1187
  br i1 %tobool13, label %land.lhs.true, label %if.end.26, !dbg !1188

land.lhs.true:                                    ; preds = %if.else
  %16 = load %struct._object*, %struct._object** %line, align 8, !dbg !1189, !tbaa !787
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1, !dbg !1191
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8, !dbg !1191, !tbaa !900
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 19, !dbg !1192
  %18 = load i64, i64* %tp_flags, align 8, !dbg !1192, !tbaa !1193
  %and = and i64 %18, 268435456, !dbg !1194
  %cmp15 = icmp ne i64 %and, 0, !dbg !1195
  br i1 %cmp15, label %if.end.26, label %if.then.17, !dbg !1196

if.then.17:                                       ; preds = %land.lhs.true
  %19 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !1197, !tbaa !787
  %20 = load %struct._object*, %struct._object** %line, align 8, !dbg !1198, !tbaa !787
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1, !dbg !1199
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8, !dbg !1199, !tbaa !900
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 1, !dbg !1200
  %22 = load i8*, i8** %tp_name, align 8, !dbg !1200, !tbaa !1201
  %call19 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %19, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i32 0, i32 0), i8* %22), !dbg !1202
  br label %do.body, !dbg !1203

do.body:                                          ; preds = %if.then.17
  %23 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1204
  call void @llvm.lifetime.start(i64 8, i8* %23) #2, !dbg !1204
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !487, metadata !791), !dbg !1206
  %24 = load %struct._object*, %struct._object** %line, align 8, !dbg !1207, !tbaa !787
  store %struct._object* %24, %struct._object** %_py_decref_tmp, align 8, !dbg !1206, !tbaa !787
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1208, !tbaa !787
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0, !dbg !1210
  %26 = load i64, i64* %ob_refcnt, align 8, !dbg !1211, !tbaa !892
  %dec = add i64 %26, -1, !dbg !1211
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1211, !tbaa !892
  %cmp20 = icmp ne i64 %dec, 0, !dbg !1212
  br i1 %cmp20, label %if.then.22, label %if.else.23, !dbg !1213

if.then.22:                                       ; preds = %do.body
  br label %if.end.25, !dbg !1214

if.else.23:                                       ; preds = %do.body
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1216, !tbaa !787
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1, !dbg !1218
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8, !dbg !1218, !tbaa !900
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4, !dbg !1219
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1219, !tbaa !902
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1220, !tbaa !787
  call void %29(%struct._object* %30), !dbg !1221
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.23, %if.then.22
  %31 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1222
  call void @llvm.lifetime.end(i64 8, i8* %31) #2, !dbg !1222
  br label %do.cond, !dbg !1224

do.cond:                                          ; preds = %if.end.25
  br label %do.end, !dbg !1225

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !1227
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1227

if.end.26:                                        ; preds = %land.lhs.true, %if.else
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.10
  %32 = load %struct._object*, %struct._object** %line, align 8, !dbg !1228, !tbaa !787
  %cmp28 = icmp eq %struct._object* %32, null, !dbg !1230
  br i1 %cmp28, label %if.then.30, label %if.end.31, !dbg !1231

if.then.30:                                       ; preds = %if.end.27
  store %struct._object* null, %struct._object** %retval, !dbg !1232
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1232

if.end.31:                                        ; preds = %if.end.27
  %33 = load %struct._object*, %struct._object** %line, align 8, !dbg !1233, !tbaa !787
  %34 = bitcast %struct._object* %33 to %struct.PyASCIIObject*, !dbg !1234
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %34, i32 0, i32 1, !dbg !1235
  %35 = load i64, i64* %length, align 8, !dbg !1235, !tbaa !1236
  %cmp32 = icmp eq i64 %35, 0, !dbg !1239
  br i1 %cmp32, label %if.then.34, label %if.end.48, !dbg !1240

if.then.34:                                       ; preds = %if.end.31
  br label %do.body.35, !dbg !1241

do.body.35:                                       ; preds = %if.then.34
  %36 = bitcast %struct._object** %_py_decref_tmp36 to i8*, !dbg !1242
  call void @llvm.lifetime.start(i64 8, i8* %36) #2, !dbg !1242
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp36, metadata !493, metadata !791), !dbg !1244
  %37 = load %struct._object*, %struct._object** %line, align 8, !dbg !1245, !tbaa !787
  store %struct._object* %37, %struct._object** %_py_decref_tmp36, align 8, !dbg !1244, !tbaa !787
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8, !dbg !1246, !tbaa !787
  %ob_refcnt37 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0, !dbg !1248
  %39 = load i64, i64* %ob_refcnt37, align 8, !dbg !1249, !tbaa !892
  %dec38 = add i64 %39, -1, !dbg !1249
  store i64 %dec38, i64* %ob_refcnt37, align 8, !dbg !1249, !tbaa !892
  %cmp39 = icmp ne i64 %dec38, 0, !dbg !1250
  br i1 %cmp39, label %if.then.41, label %if.else.42, !dbg !1251

if.then.41:                                       ; preds = %do.body.35
  br label %if.end.45, !dbg !1252

if.else.42:                                       ; preds = %do.body.35
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8, !dbg !1254, !tbaa !787
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1, !dbg !1256
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8, !dbg !1256, !tbaa !900
  %tp_dealloc44 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4, !dbg !1257
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc44, align 8, !dbg !1257, !tbaa !902
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8, !dbg !1258, !tbaa !787
  call void %42(%struct._object* %43), !dbg !1259
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %if.then.41
  %44 = bitcast %struct._object** %_py_decref_tmp36 to i8*, !dbg !1260
  call void @llvm.lifetime.end(i64 8, i8* %44) #2, !dbg !1260
  br label %do.cond.46, !dbg !1262

do.cond.46:                                       ; preds = %if.end.45
  br label %do.end.47, !dbg !1263

do.end.47:                                        ; preds = %do.cond.46
  store %struct._object* null, %struct._object** %retval, !dbg !1265
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1265

if.end.48:                                        ; preds = %if.end.31
  %45 = load %struct._object*, %struct._object** %line, align 8, !dbg !1266, !tbaa !787
  store %struct._object* %45, %struct._object** %retval, !dbg !1267
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1267

cleanup:                                          ; preds = %if.end.48, %do.end.47, %if.then.30, %do.end, %if.then.6, %if.then.2, %if.then
  %46 = bitcast %struct._object** %line to i8*, !dbg !1268
  call void @llvm.lifetime.end(i64 8, i8* %46) #2, !dbg !1268
  %47 = load %struct._object*, %struct._object** %retval, !dbg !1268
  ret %struct._object* %47, !dbg !1268
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
  %cleanup.dest.slot = alloca i32
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp86 = alloca %struct._object*, align 8
  %_py_decref_tmp92 = alloca %struct._object*, align 8
  %_py_tmp108 = alloca %struct._object*, align 8
  %_py_decref_tmp114 = alloca %struct._object*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct.stringio** %self.addr, metadata !682, metadata !791), !dbg !1269
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !683, metadata !791), !dbg !1270
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !684, metadata !791), !dbg !1271
  %0 = bitcast [3 x i8*]* %kwlist to i8*, !dbg !1272
  call void @llvm.lifetime.start(i64 24, i8* %0) #2, !dbg !1272
  call void @llvm.dbg.declare(metadata [3 x i8*]* %kwlist, metadata !685, metadata !791), !dbg !1273
  %1 = bitcast [3 x i8*]* %kwlist to i8*, !dbg !1273
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast ([3 x i8*]* @stringio_init.kwlist to i8*), i64 24, i32 16, i1 false), !dbg !1273
  %2 = bitcast %struct._object** %value to i8*, !dbg !1274
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1274
  call void @llvm.dbg.declare(metadata %struct._object** %value, metadata !689, metadata !791), !dbg !1275
  store %struct._object* null, %struct._object** %value, align 8, !dbg !1275, !tbaa !787
  %3 = bitcast %struct._object** %newline_obj to i8*, !dbg !1276
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1276
  call void @llvm.dbg.declare(metadata %struct._object** %newline_obj, metadata !690, metadata !791), !dbg !1277
  store %struct._object* null, %struct._object** %newline_obj, align 8, !dbg !1277, !tbaa !787
  %4 = bitcast i8** %newline to i8*, !dbg !1278
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1278
  call void @llvm.dbg.declare(metadata i8** %newline, metadata !691, metadata !791), !dbg !1279
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i8** %newline, align 8, !dbg !1279, !tbaa !787
  %5 = bitcast i64* %value_len to i8*, !dbg !1280
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !1280
  call void @llvm.dbg.declare(metadata i64* %value_len, metadata !692, metadata !791), !dbg !1281
  %6 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1282, !tbaa !787
  %7 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !1284, !tbaa !787
  %arraydecay = getelementptr inbounds [3 x i8*], [3 x i8*]* %kwlist, i32 0, i32 0, !dbg !1285
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %6, %struct._object* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i32 0, i32 0), i8** %arraydecay, %struct._object** %value, %struct._object** %newline_obj), !dbg !1286
  %tobool = icmp ne i32 %call, 0, !dbg !1286
  br i1 %tobool, label %if.end, label %if.then, !dbg !1287

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !1288
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1288

if.end:                                           ; preds = %entry
  %8 = load %struct._object*, %struct._object** %newline_obj, align 8, !dbg !1289, !tbaa !787
  %cmp = icmp eq %struct._object* %8, @_Py_NoneStruct, !dbg !1291
  br i1 %cmp, label %if.then.1, label %if.else, !dbg !1292

if.then.1:                                        ; preds = %if.end
  store i8* null, i8** %newline, align 8, !dbg !1293, !tbaa !787
  br label %if.end.14, !dbg !1295

if.else:                                          ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %newline_obj, align 8, !dbg !1296, !tbaa !787
  %tobool2 = icmp ne %struct._object* %9, null, !dbg !1296
  br i1 %tobool2, label %if.then.3, label %if.end.13, !dbg !1298

if.then.3:                                        ; preds = %if.else
  %10 = load %struct._object*, %struct._object** %newline_obj, align 8, !dbg !1299, !tbaa !787
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !1302
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1302, !tbaa !900
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 19, !dbg !1303
  %12 = load i64, i64* %tp_flags, align 8, !dbg !1303, !tbaa !1193
  %and = and i64 %12, 268435456, !dbg !1304
  %cmp4 = icmp ne i64 %and, 0, !dbg !1305
  br i1 %cmp4, label %if.end.8, label %if.then.5, !dbg !1306

if.then.5:                                        ; preds = %if.then.3
  %13 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1307, !tbaa !787
  %14 = load %struct._object*, %struct._object** %newline_obj, align 8, !dbg !1309, !tbaa !787
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1, !dbg !1310
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !1310, !tbaa !900
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 1, !dbg !1311
  %16 = load i8*, i8** %tp_name, align 8, !dbg !1311, !tbaa !1201
  %call7 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %13, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.41, i32 0, i32 0), i8* %16), !dbg !1312
  store i32 -1, i32* %retval, !dbg !1313
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1313

if.end.8:                                         ; preds = %if.then.3
  %17 = load %struct._object*, %struct._object** %newline_obj, align 8, !dbg !1314, !tbaa !787
  %call9 = call i8* @PyUnicode_AsUTF8(%struct._object* %17), !dbg !1315
  store i8* %call9, i8** %newline, align 8, !dbg !1316, !tbaa !787
  %18 = load i8*, i8** %newline, align 8, !dbg !1317, !tbaa !787
  %cmp10 = icmp eq i8* %18, null, !dbg !1319
  br i1 %cmp10, label %if.then.11, label %if.end.12, !dbg !1320

if.then.11:                                       ; preds = %if.end.8
  store i32 -1, i32* %retval, !dbg !1321
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1321

if.end.12:                                        ; preds = %if.end.8
  br label %if.end.13, !dbg !1322

if.end.13:                                        ; preds = %if.end.12, %if.else
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.1
  %19 = load i8*, i8** %newline, align 8, !dbg !1323, !tbaa !787
  %tobool15 = icmp ne i8* %19, null, !dbg !1323
  br i1 %tobool15, label %land.lhs.true, label %if.end.55, !dbg !1325

land.lhs.true:                                    ; preds = %if.end.14
  %20 = load i8*, i8** %newline, align 8, !dbg !1326, !tbaa !787
  %arrayidx = getelementptr i8, i8* %20, i64 0, !dbg !1326
  %21 = load i8, i8* %arrayidx, align 1, !dbg !1326, !tbaa !1328
  %conv = sext i8 %21 to i32, !dbg !1326
  %cmp16 = icmp ne i32 %conv, 0, !dbg !1329
  br i1 %cmp16, label %land.lhs.true.18, label %if.end.55, !dbg !1330

land.lhs.true.18:                                 ; preds = %land.lhs.true
  %22 = load i8*, i8** %newline, align 8, !dbg !1331, !tbaa !787
  %arrayidx19 = getelementptr i8, i8* %22, i64 0, !dbg !1331
  %23 = load i8, i8* %arrayidx19, align 1, !dbg !1331, !tbaa !1328
  %conv20 = sext i8 %23 to i32, !dbg !1331
  %cmp21 = icmp eq i32 %conv20, 10, !dbg !1332
  br i1 %cmp21, label %land.lhs.true.23, label %land.lhs.true.28, !dbg !1333

land.lhs.true.23:                                 ; preds = %land.lhs.true.18
  %24 = load i8*, i8** %newline, align 8, !dbg !1334, !tbaa !787
  %arrayidx24 = getelementptr i8, i8* %24, i64 1, !dbg !1334
  %25 = load i8, i8* %arrayidx24, align 1, !dbg !1334, !tbaa !1328
  %conv25 = sext i8 %25 to i32, !dbg !1334
  %cmp26 = icmp eq i32 %conv25, 0, !dbg !1336
  br i1 %cmp26, label %if.end.55, label %land.lhs.true.28, !dbg !1337

land.lhs.true.28:                                 ; preds = %land.lhs.true.23, %land.lhs.true.18
  %26 = load i8*, i8** %newline, align 8, !dbg !1338, !tbaa !787
  %arrayidx29 = getelementptr i8, i8* %26, i64 0, !dbg !1338
  %27 = load i8, i8* %arrayidx29, align 1, !dbg !1338, !tbaa !1328
  %conv30 = sext i8 %27 to i32, !dbg !1338
  %cmp31 = icmp eq i32 %conv30, 13, !dbg !1339
  br i1 %cmp31, label %land.lhs.true.33, label %land.lhs.true.38, !dbg !1340

land.lhs.true.33:                                 ; preds = %land.lhs.true.28
  %28 = load i8*, i8** %newline, align 8, !dbg !1341, !tbaa !787
  %arrayidx34 = getelementptr i8, i8* %28, i64 1, !dbg !1341
  %29 = load i8, i8* %arrayidx34, align 1, !dbg !1341, !tbaa !1328
  %conv35 = sext i8 %29 to i32, !dbg !1341
  %cmp36 = icmp eq i32 %conv35, 0, !dbg !1342
  br i1 %cmp36, label %if.end.55, label %land.lhs.true.38, !dbg !1343

land.lhs.true.38:                                 ; preds = %land.lhs.true.33, %land.lhs.true.28
  %30 = load i8*, i8** %newline, align 8, !dbg !1344, !tbaa !787
  %arrayidx39 = getelementptr i8, i8* %30, i64 0, !dbg !1344
  %31 = load i8, i8* %arrayidx39, align 1, !dbg !1344, !tbaa !1328
  %conv40 = sext i8 %31 to i32, !dbg !1344
  %cmp41 = icmp eq i32 %conv40, 13, !dbg !1345
  br i1 %cmp41, label %land.lhs.true.43, label %if.then.53, !dbg !1346

land.lhs.true.43:                                 ; preds = %land.lhs.true.38
  %32 = load i8*, i8** %newline, align 8, !dbg !1347, !tbaa !787
  %arrayidx44 = getelementptr i8, i8* %32, i64 1, !dbg !1347
  %33 = load i8, i8* %arrayidx44, align 1, !dbg !1347, !tbaa !1328
  %conv45 = sext i8 %33 to i32, !dbg !1347
  %cmp46 = icmp eq i32 %conv45, 10, !dbg !1348
  br i1 %cmp46, label %land.lhs.true.48, label %if.then.53, !dbg !1349

land.lhs.true.48:                                 ; preds = %land.lhs.true.43
  %34 = load i8*, i8** %newline, align 8, !dbg !1350, !tbaa !787
  %arrayidx49 = getelementptr i8, i8* %34, i64 2, !dbg !1350
  %35 = load i8, i8* %arrayidx49, align 1, !dbg !1350, !tbaa !1328
  %conv50 = sext i8 %35 to i32, !dbg !1350
  %cmp51 = icmp eq i32 %conv50, 0, !dbg !1352
  br i1 %cmp51, label %if.end.55, label %if.then.53, !dbg !1353

if.then.53:                                       ; preds = %land.lhs.true.48, %land.lhs.true.43, %land.lhs.true.38
  %36 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1354, !tbaa !787
  %37 = load %struct._object*, %struct._object** %newline_obj, align 8, !dbg !1356, !tbaa !787
  %call54 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i32 0, i32 0), %struct._object* %37), !dbg !1357
  store i32 -1, i32* %retval, !dbg !1358
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1358

if.end.55:                                        ; preds = %land.lhs.true.48, %land.lhs.true.33, %land.lhs.true.23, %land.lhs.true, %if.end.14
  %38 = load %struct._object*, %struct._object** %value, align 8, !dbg !1359, !tbaa !787
  %tobool56 = icmp ne %struct._object* %38, null, !dbg !1359
  br i1 %tobool56, label %land.lhs.true.57, label %if.end.70, !dbg !1361

land.lhs.true.57:                                 ; preds = %if.end.55
  %39 = load %struct._object*, %struct._object** %value, align 8, !dbg !1362, !tbaa !787
  %cmp58 = icmp ne %struct._object* %39, @_Py_NoneStruct, !dbg !1364
  br i1 %cmp58, label %land.lhs.true.60, label %if.end.70, !dbg !1365

land.lhs.true.60:                                 ; preds = %land.lhs.true.57
  %40 = load %struct._object*, %struct._object** %value, align 8, !dbg !1366, !tbaa !787
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1, !dbg !1368
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8, !dbg !1368, !tbaa !900
  %tp_flags62 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 19, !dbg !1369
  %42 = load i64, i64* %tp_flags62, align 8, !dbg !1369, !tbaa !1193
  %and63 = and i64 %42, 268435456, !dbg !1370
  %cmp64 = icmp ne i64 %and63, 0, !dbg !1371
  br i1 %cmp64, label %if.end.70, label %if.then.66, !dbg !1372

if.then.66:                                       ; preds = %land.lhs.true.60
  %43 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1373, !tbaa !787
  %44 = load %struct._object*, %struct._object** %value, align 8, !dbg !1375, !tbaa !787
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1, !dbg !1376
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8, !dbg !1376, !tbaa !900
  %tp_name68 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 1, !dbg !1377
  %46 = load i8*, i8** %tp_name68, align 8, !dbg !1377, !tbaa !1201
  %call69 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %43, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.43, i32 0, i32 0), i8* %46), !dbg !1378
  store i32 -1, i32* %retval, !dbg !1379
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1379

if.end.70:                                        ; preds = %land.lhs.true.60, %land.lhs.true.57, %if.end.55
  %47 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1380, !tbaa !787
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %47, i32 0, i32 7, !dbg !1381
  store i8 0, i8* %ok, align 1, !dbg !1382, !tbaa !848
  %48 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1383, !tbaa !787
  %accu = getelementptr inbounds %struct.stringio, %struct.stringio* %48, i32 0, i32 6, !dbg !1384
  call void @_PyAccu_Destroy(%struct._PyAccu* %accu), !dbg !1385
  br label %do.body, !dbg !1386

do.body:                                          ; preds = %if.end.70
  %49 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1387
  call void @llvm.lifetime.start(i64 8, i8* %49) #2, !dbg !1387
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !693, metadata !791), !dbg !1389
  %50 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1390, !tbaa !787
  %readnl = getelementptr inbounds %struct.stringio, %struct.stringio* %50, i32 0, i32 12, !dbg !1391
  %51 = load %struct._object*, %struct._object** %readnl, align 8, !dbg !1391, !tbaa !875
  store %struct._object* %51, %struct._object** %_py_tmp, align 8, !dbg !1389, !tbaa !787
  %52 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1392, !tbaa !787
  %cmp71 = icmp ne %struct._object* %52, null, !dbg !1393
  br i1 %cmp71, label %if.then.73, label %if.end.82, !dbg !1394

if.then.73:                                       ; preds = %do.body
  %53 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1395, !tbaa !787
  %readnl74 = getelementptr inbounds %struct.stringio, %struct.stringio* %53, i32 0, i32 12, !dbg !1397
  store %struct._object* null, %struct._object** %readnl74, align 8, !dbg !1398, !tbaa !875
  br label %do.body.75, !dbg !1399

do.body.75:                                       ; preds = %if.then.73
  %54 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1400
  call void @llvm.lifetime.start(i64 8, i8* %54) #2, !dbg !1400
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !695, metadata !791), !dbg !1402
  %55 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1403, !tbaa !787
  store %struct._object* %55, %struct._object** %_py_decref_tmp, align 8, !dbg !1402, !tbaa !787
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1404, !tbaa !787
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0, !dbg !1406
  %57 = load i64, i64* %ob_refcnt, align 8, !dbg !1407, !tbaa !892
  %dec = add i64 %57, -1, !dbg !1407
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1407, !tbaa !892
  %cmp76 = icmp ne i64 %dec, 0, !dbg !1408
  br i1 %cmp76, label %if.then.78, label %if.else.79, !dbg !1409

if.then.78:                                       ; preds = %do.body.75
  br label %if.end.81, !dbg !1410

if.else.79:                                       ; preds = %do.body.75
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1412, !tbaa !787
  %ob_type80 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1, !dbg !1414
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type80, align 8, !dbg !1414, !tbaa !900
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4, !dbg !1415
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1415, !tbaa !902
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1416, !tbaa !787
  call void %60(%struct._object* %61), !dbg !1417
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.79, %if.then.78
  %62 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1418
  call void @llvm.lifetime.end(i64 8, i8* %62) #2, !dbg !1418
  br label %do.cond, !dbg !1420

do.cond:                                          ; preds = %if.end.81
  br label %do.end, !dbg !1421

do.end:                                           ; preds = %do.cond
  br label %if.end.82, !dbg !1423

if.end.82:                                        ; preds = %do.end, %do.body
  %63 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1425
  call void @llvm.lifetime.end(i64 8, i8* %63) #2, !dbg !1425
  br label %do.cond.83, !dbg !1428

do.cond.83:                                       ; preds = %if.end.82
  br label %do.end.84, !dbg !1429

do.end.84:                                        ; preds = %do.cond.83
  br label %do.body.85, !dbg !1431

do.body.85:                                       ; preds = %do.end.84
  %64 = bitcast %struct._object** %_py_tmp86 to i8*, !dbg !1432
  call void @llvm.lifetime.start(i64 8, i8* %64) #2, !dbg !1432
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp86, metadata !699, metadata !791), !dbg !1434
  %65 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1435, !tbaa !787
  %writenl = getelementptr inbounds %struct.stringio, %struct.stringio* %65, i32 0, i32 13, !dbg !1436
  %66 = load %struct._object*, %struct._object** %writenl, align 8, !dbg !1436, !tbaa !924
  store %struct._object* %66, %struct._object** %_py_tmp86, align 8, !dbg !1434, !tbaa !787
  %67 = load %struct._object*, %struct._object** %_py_tmp86, align 8, !dbg !1437, !tbaa !787
  %cmp87 = icmp ne %struct._object* %67, null, !dbg !1438
  br i1 %cmp87, label %if.then.89, label %if.end.104, !dbg !1439

if.then.89:                                       ; preds = %do.body.85
  %68 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1440, !tbaa !787
  %writenl90 = getelementptr inbounds %struct.stringio, %struct.stringio* %68, i32 0, i32 13, !dbg !1442
  store %struct._object* null, %struct._object** %writenl90, align 8, !dbg !1443, !tbaa !924
  br label %do.body.91, !dbg !1444

do.body.91:                                       ; preds = %if.then.89
  %69 = bitcast %struct._object** %_py_decref_tmp92 to i8*, !dbg !1445
  call void @llvm.lifetime.start(i64 8, i8* %69) #2, !dbg !1445
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp92, metadata !701, metadata !791), !dbg !1447
  %70 = load %struct._object*, %struct._object** %_py_tmp86, align 8, !dbg !1448, !tbaa !787
  store %struct._object* %70, %struct._object** %_py_decref_tmp92, align 8, !dbg !1447, !tbaa !787
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp92, align 8, !dbg !1449, !tbaa !787
  %ob_refcnt93 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 0, !dbg !1451
  %72 = load i64, i64* %ob_refcnt93, align 8, !dbg !1452, !tbaa !892
  %dec94 = add i64 %72, -1, !dbg !1452
  store i64 %dec94, i64* %ob_refcnt93, align 8, !dbg !1452, !tbaa !892
  %cmp95 = icmp ne i64 %dec94, 0, !dbg !1453
  br i1 %cmp95, label %if.then.97, label %if.else.98, !dbg !1454

if.then.97:                                       ; preds = %do.body.91
  br label %if.end.101, !dbg !1455

if.else.98:                                       ; preds = %do.body.91
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp92, align 8, !dbg !1457, !tbaa !787
  %ob_type99 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 1, !dbg !1459
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type99, align 8, !dbg !1459, !tbaa !900
  %tp_dealloc100 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %74, i32 0, i32 4, !dbg !1460
  %75 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc100, align 8, !dbg !1460, !tbaa !902
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp92, align 8, !dbg !1461, !tbaa !787
  call void %75(%struct._object* %76), !dbg !1462
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.98, %if.then.97
  %77 = bitcast %struct._object** %_py_decref_tmp92 to i8*, !dbg !1463
  call void @llvm.lifetime.end(i64 8, i8* %77) #2, !dbg !1463
  br label %do.cond.102, !dbg !1465

do.cond.102:                                      ; preds = %if.end.101
  br label %do.end.103, !dbg !1466

do.end.103:                                       ; preds = %do.cond.102
  br label %if.end.104, !dbg !1468

if.end.104:                                       ; preds = %do.end.103, %do.body.85
  %78 = bitcast %struct._object** %_py_tmp86 to i8*, !dbg !1470
  call void @llvm.lifetime.end(i64 8, i8* %78) #2, !dbg !1470
  br label %do.cond.105, !dbg !1471

do.cond.105:                                      ; preds = %if.end.104
  br label %do.end.106, !dbg !1472

do.end.106:                                       ; preds = %do.cond.105
  br label %do.body.107, !dbg !1474

do.body.107:                                      ; preds = %do.end.106
  %79 = bitcast %struct._object** %_py_tmp108 to i8*, !dbg !1475
  call void @llvm.lifetime.start(i64 8, i8* %79) #2, !dbg !1475
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp108, metadata !705, metadata !791), !dbg !1477
  %80 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1478, !tbaa !787
  %decoder = getelementptr inbounds %struct.stringio, %struct.stringio* %80, i32 0, i32 11, !dbg !1479
  %81 = load %struct._object*, %struct._object** %decoder, align 8, !dbg !1479, !tbaa !966
  store %struct._object* %81, %struct._object** %_py_tmp108, align 8, !dbg !1477, !tbaa !787
  %82 = load %struct._object*, %struct._object** %_py_tmp108, align 8, !dbg !1480, !tbaa !787
  %cmp109 = icmp ne %struct._object* %82, null, !dbg !1481
  br i1 %cmp109, label %if.then.111, label %if.end.126, !dbg !1482

if.then.111:                                      ; preds = %do.body.107
  %83 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1483, !tbaa !787
  %decoder112 = getelementptr inbounds %struct.stringio, %struct.stringio* %83, i32 0, i32 11, !dbg !1485
  store %struct._object* null, %struct._object** %decoder112, align 8, !dbg !1486, !tbaa !966
  br label %do.body.113, !dbg !1487

do.body.113:                                      ; preds = %if.then.111
  %84 = bitcast %struct._object** %_py_decref_tmp114 to i8*, !dbg !1488
  call void @llvm.lifetime.start(i64 8, i8* %84) #2, !dbg !1488
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp114, metadata !707, metadata !791), !dbg !1490
  %85 = load %struct._object*, %struct._object** %_py_tmp108, align 8, !dbg !1491, !tbaa !787
  store %struct._object* %85, %struct._object** %_py_decref_tmp114, align 8, !dbg !1490, !tbaa !787
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp114, align 8, !dbg !1492, !tbaa !787
  %ob_refcnt115 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 0, !dbg !1494
  %87 = load i64, i64* %ob_refcnt115, align 8, !dbg !1495, !tbaa !892
  %dec116 = add i64 %87, -1, !dbg !1495
  store i64 %dec116, i64* %ob_refcnt115, align 8, !dbg !1495, !tbaa !892
  %cmp117 = icmp ne i64 %dec116, 0, !dbg !1496
  br i1 %cmp117, label %if.then.119, label %if.else.120, !dbg !1497

if.then.119:                                      ; preds = %do.body.113
  br label %if.end.123, !dbg !1498

if.else.120:                                      ; preds = %do.body.113
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp114, align 8, !dbg !1500, !tbaa !787
  %ob_type121 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 1, !dbg !1502
  %89 = load %struct._typeobject*, %struct._typeobject** %ob_type121, align 8, !dbg !1502, !tbaa !900
  %tp_dealloc122 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %89, i32 0, i32 4, !dbg !1503
  %90 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc122, align 8, !dbg !1503, !tbaa !902
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp114, align 8, !dbg !1504, !tbaa !787
  call void %90(%struct._object* %91), !dbg !1505
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.120, %if.then.119
  %92 = bitcast %struct._object** %_py_decref_tmp114 to i8*, !dbg !1506
  call void @llvm.lifetime.end(i64 8, i8* %92) #2, !dbg !1506
  br label %do.cond.124, !dbg !1508

do.cond.124:                                      ; preds = %if.end.123
  br label %do.end.125, !dbg !1509

do.end.125:                                       ; preds = %do.cond.124
  br label %if.end.126, !dbg !1511

if.end.126:                                       ; preds = %do.end.125, %do.body.107
  %93 = bitcast %struct._object** %_py_tmp108 to i8*, !dbg !1513
  call void @llvm.lifetime.end(i64 8, i8* %93) #2, !dbg !1513
  br label %do.cond.127, !dbg !1514

do.cond.127:                                      ; preds = %if.end.126
  br label %do.end.128, !dbg !1515

do.end.128:                                       ; preds = %do.cond.127
  %94 = load i8*, i8** %newline, align 8, !dbg !1517, !tbaa !787
  %tobool129 = icmp ne i8* %94, null, !dbg !1517
  br i1 %tobool129, label %if.then.130, label %if.end.138, !dbg !1519

if.then.130:                                      ; preds = %do.end.128
  %95 = load i8*, i8** %newline, align 8, !dbg !1520, !tbaa !787
  %call131 = call %struct._object* @PyUnicode_FromString(i8* %95), !dbg !1522
  %96 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1523, !tbaa !787
  %readnl132 = getelementptr inbounds %struct.stringio, %struct.stringio* %96, i32 0, i32 12, !dbg !1524
  store %struct._object* %call131, %struct._object** %readnl132, align 8, !dbg !1525, !tbaa !875
  %97 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1526, !tbaa !787
  %readnl133 = getelementptr inbounds %struct.stringio, %struct.stringio* %97, i32 0, i32 12, !dbg !1528
  %98 = load %struct._object*, %struct._object** %readnl133, align 8, !dbg !1528, !tbaa !875
  %cmp134 = icmp eq %struct._object* %98, null, !dbg !1529
  br i1 %cmp134, label %if.then.136, label %if.end.137, !dbg !1530

if.then.136:                                      ; preds = %if.then.130
  store i32 -1, i32* %retval, !dbg !1531
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1531

if.end.137:                                       ; preds = %if.then.130
  br label %if.end.138, !dbg !1532

if.end.138:                                       ; preds = %if.end.137, %do.end.128
  %99 = load i8*, i8** %newline, align 8, !dbg !1533, !tbaa !787
  %cmp139 = icmp eq i8* %99, null, !dbg !1534
  br i1 %cmp139, label %lor.end, label %lor.rhs, !dbg !1535

lor.rhs:                                          ; preds = %if.end.138
  %100 = load i8*, i8** %newline, align 8, !dbg !1536, !tbaa !787
  %arrayidx141 = getelementptr i8, i8* %100, i64 0, !dbg !1536
  %101 = load i8, i8* %arrayidx141, align 1, !dbg !1536, !tbaa !1328
  %conv142 = sext i8 %101 to i32, !dbg !1536
  %cmp143 = icmp eq i32 %conv142, 0, !dbg !1538
  br label %lor.end, !dbg !1535

lor.end:                                          ; preds = %lor.rhs, %if.end.138
  %102 = phi i1 [ true, %if.end.138 ], [ %cmp143, %lor.rhs ]
  %lor.ext = zext i1 %102 to i32, !dbg !1539
  %conv145 = trunc i32 %lor.ext to i8, !dbg !1542
  %103 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1543, !tbaa !787
  %readuniversal = getelementptr inbounds %struct.stringio, %struct.stringio* %103, i32 0, i32 9, !dbg !1544
  store i8 %conv145, i8* %readuniversal, align 1, !dbg !1545, !tbaa !1546
  %104 = load i8*, i8** %newline, align 8, !dbg !1547, !tbaa !787
  %cmp146 = icmp eq i8* %104, null, !dbg !1548
  %conv147 = zext i1 %cmp146 to i32, !dbg !1548
  %conv148 = trunc i32 %conv147 to i8, !dbg !1549
  %105 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1550, !tbaa !787
  %readtranslate = getelementptr inbounds %struct.stringio, %struct.stringio* %105, i32 0, i32 10, !dbg !1551
  store i8 %conv148, i8* %readtranslate, align 1, !dbg !1552, !tbaa !1553
  %106 = load i8*, i8** %newline, align 8, !dbg !1554, !tbaa !787
  %cmp149 = icmp ne i8* %106, null, !dbg !1556
  br i1 %cmp149, label %land.lhs.true.151, label %if.end.161, !dbg !1557

land.lhs.true.151:                                ; preds = %lor.end
  %107 = load i8*, i8** %newline, align 8, !dbg !1558, !tbaa !787
  %arrayidx152 = getelementptr i8, i8* %107, i64 0, !dbg !1558
  %108 = load i8, i8* %arrayidx152, align 1, !dbg !1558, !tbaa !1328
  %conv153 = sext i8 %108 to i32, !dbg !1558
  %cmp154 = icmp eq i32 %conv153, 13, !dbg !1560
  br i1 %cmp154, label %if.then.156, label %if.end.161, !dbg !1561

if.then.156:                                      ; preds = %land.lhs.true.151
  %109 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1562, !tbaa !787
  %readnl157 = getelementptr inbounds %struct.stringio, %struct.stringio* %109, i32 0, i32 12, !dbg !1564
  %110 = load %struct._object*, %struct._object** %readnl157, align 8, !dbg !1564, !tbaa !875
  %111 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1565, !tbaa !787
  %writenl158 = getelementptr inbounds %struct.stringio, %struct.stringio* %111, i32 0, i32 13, !dbg !1566
  store %struct._object* %110, %struct._object** %writenl158, align 8, !dbg !1567, !tbaa !924
  %112 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1568, !tbaa !787
  %writenl159 = getelementptr inbounds %struct.stringio, %struct.stringio* %112, i32 0, i32 13, !dbg !1569
  %113 = load %struct._object*, %struct._object** %writenl159, align 8, !dbg !1569, !tbaa !924
  %ob_refcnt160 = getelementptr inbounds %struct._object, %struct._object* %113, i32 0, i32 0, !dbg !1570
  %114 = load i64, i64* %ob_refcnt160, align 8, !dbg !1571, !tbaa !892
  %inc = add i64 %114, 1, !dbg !1571
  store i64 %inc, i64* %ob_refcnt160, align 8, !dbg !1571, !tbaa !892
  br label %if.end.161, !dbg !1572

if.end.161:                                       ; preds = %if.then.156, %land.lhs.true.151, %lor.end
  %115 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1573, !tbaa !787
  %readuniversal162 = getelementptr inbounds %struct.stringio, %struct.stringio* %115, i32 0, i32 9, !dbg !1575
  %116 = load i8, i8* %readuniversal162, align 1, !dbg !1575, !tbaa !1546
  %tobool163 = icmp ne i8 %116, 0, !dbg !1573
  br i1 %tobool163, label %if.then.164, label %if.end.174, !dbg !1576

if.then.164:                                      ; preds = %if.end.161
  %117 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1577, !tbaa !787
  %readtranslate165 = getelementptr inbounds %struct.stringio, %struct.stringio* %117, i32 0, i32 10, !dbg !1579
  %118 = load i8, i8* %readtranslate165, align 1, !dbg !1579, !tbaa !1553
  %conv166 = sext i8 %118 to i32, !dbg !1580
  %call167 = call %struct._object* (%struct._object*, i8*, ...) @_PyObject_CallFunction_SizeT(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyIncrementalNewlineDecoder_Type, i32 0, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), %struct._object* @_Py_NoneStruct, i32 %conv166), !dbg !1581
  %119 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1582, !tbaa !787
  %decoder168 = getelementptr inbounds %struct.stringio, %struct.stringio* %119, i32 0, i32 11, !dbg !1583
  store %struct._object* %call167, %struct._object** %decoder168, align 8, !dbg !1584, !tbaa !966
  %120 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1585, !tbaa !787
  %decoder169 = getelementptr inbounds %struct.stringio, %struct.stringio* %120, i32 0, i32 11, !dbg !1587
  %121 = load %struct._object*, %struct._object** %decoder169, align 8, !dbg !1587, !tbaa !966
  %cmp170 = icmp eq %struct._object* %121, null, !dbg !1588
  br i1 %cmp170, label %if.then.172, label %if.end.173, !dbg !1589

if.then.172:                                      ; preds = %if.then.164
  store i32 -1, i32* %retval, !dbg !1590
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1590

if.end.173:                                       ; preds = %if.then.164
  br label %if.end.174, !dbg !1591

if.end.174:                                       ; preds = %if.end.173, %if.end.161
  %122 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1592, !tbaa !787
  %string_size = getelementptr inbounds %struct.stringio, %struct.stringio* %122, i32 0, i32 3, !dbg !1593
  store i64 0, i64* %string_size, align 8, !dbg !1594, !tbaa !1595
  %123 = load %struct._object*, %struct._object** %value, align 8, !dbg !1596, !tbaa !787
  %tobool175 = icmp ne %struct._object* %123, null, !dbg !1596
  br i1 %tobool175, label %land.lhs.true.176, label %if.else.181, !dbg !1598

land.lhs.true.176:                                ; preds = %if.end.174
  %124 = load %struct._object*, %struct._object** %value, align 8, !dbg !1599, !tbaa !787
  %cmp177 = icmp ne %struct._object* %124, @_Py_NoneStruct, !dbg !1601
  br i1 %cmp177, label %if.then.179, label %if.else.181, !dbg !1602

if.then.179:                                      ; preds = %land.lhs.true.176
  %125 = load %struct._object*, %struct._object** %value, align 8, !dbg !1603, !tbaa !787
  %call180 = call i64 @PyUnicode_GetLength(%struct._object* %125), !dbg !1604
  store i64 %call180, i64* %value_len, align 8, !dbg !1605, !tbaa !1606
  br label %if.end.182, !dbg !1607

if.else.181:                                      ; preds = %land.lhs.true.176, %if.end.174
  store i64 0, i64* %value_len, align 8, !dbg !1608, !tbaa !1606
  br label %if.end.182

if.end.182:                                       ; preds = %if.else.181, %if.then.179
  %126 = load i64, i64* %value_len, align 8, !dbg !1609, !tbaa !1606
  %cmp183 = icmp sgt i64 %126, 0, !dbg !1611
  br i1 %cmp183, label %if.then.185, label %if.else.196, !dbg !1612

if.then.185:                                      ; preds = %if.end.182
  %127 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1613, !tbaa !787
  %call186 = call i32 @resize_buffer(%struct.stringio* %127, i64 0), !dbg !1616
  %cmp187 = icmp slt i32 %call186, 0, !dbg !1617
  br i1 %cmp187, label %if.then.189, label %if.end.190, !dbg !1618

if.then.189:                                      ; preds = %if.then.185
  store i32 -1, i32* %retval, !dbg !1619
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1619

if.end.190:                                       ; preds = %if.then.185
  %128 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1620, !tbaa !787
  %state = getelementptr inbounds %struct.stringio, %struct.stringio* %128, i32 0, i32 5, !dbg !1621
  store i32 1, i32* %state, align 4, !dbg !1622, !tbaa !1623
  %129 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1624, !tbaa !787
  %pos = getelementptr inbounds %struct.stringio, %struct.stringio* %129, i32 0, i32 2, !dbg !1625
  store i64 0, i64* %pos, align 8, !dbg !1626, !tbaa !1627
  %130 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1628, !tbaa !787
  %131 = load %struct._object*, %struct._object** %value, align 8, !dbg !1630, !tbaa !787
  %call191 = call i64 @write_str(%struct.stringio* %130, %struct._object* %131), !dbg !1631
  %cmp192 = icmp slt i64 %call191, 0, !dbg !1632
  br i1 %cmp192, label %if.then.194, label %if.end.195, !dbg !1633

if.then.194:                                      ; preds = %if.end.190
  store i32 -1, i32* %retval, !dbg !1634
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1634

if.end.195:                                       ; preds = %if.end.190
  br label %if.end.208, !dbg !1635

if.else.196:                                      ; preds = %if.end.182
  %132 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1636, !tbaa !787
  %call197 = call i32 @resize_buffer(%struct.stringio* %132, i64 0), !dbg !1639
  %cmp198 = icmp slt i32 %call197, 0, !dbg !1640
  br i1 %cmp198, label %if.then.200, label %if.end.201, !dbg !1641

if.then.200:                                      ; preds = %if.else.196
  store i32 -1, i32* %retval, !dbg !1642
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1642

if.end.201:                                       ; preds = %if.else.196
  %133 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1643, !tbaa !787
  %accu202 = getelementptr inbounds %struct.stringio, %struct.stringio* %133, i32 0, i32 6, !dbg !1645
  %call203 = call i32 @_PyAccu_Init(%struct._PyAccu* %accu202), !dbg !1646
  %tobool204 = icmp ne i32 %call203, 0, !dbg !1646
  br i1 %tobool204, label %if.then.205, label %if.end.206, !dbg !1647

if.then.205:                                      ; preds = %if.end.201
  store i32 -1, i32* %retval, !dbg !1648
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1648

if.end.206:                                       ; preds = %if.end.201
  %134 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1649, !tbaa !787
  %state207 = getelementptr inbounds %struct.stringio, %struct.stringio* %134, i32 0, i32 5, !dbg !1650
  store i32 2, i32* %state207, align 4, !dbg !1651, !tbaa !1623
  br label %if.end.208

if.end.208:                                       ; preds = %if.end.206, %if.end.195
  %135 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1652, !tbaa !787
  %pos209 = getelementptr inbounds %struct.stringio, %struct.stringio* %135, i32 0, i32 2, !dbg !1653
  store i64 0, i64* %pos209, align 8, !dbg !1654, !tbaa !1627
  %136 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1655, !tbaa !787
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %136, i32 0, i32 8, !dbg !1656
  store i8 0, i8* %closed, align 1, !dbg !1657, !tbaa !1156
  %137 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1658, !tbaa !787
  %ok210 = getelementptr inbounds %struct.stringio, %struct.stringio* %137, i32 0, i32 7, !dbg !1659
  store i8 1, i8* %ok210, align 1, !dbg !1660, !tbaa !848
  store i32 0, i32* %retval, !dbg !1661
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1661

cleanup:                                          ; preds = %if.end.208, %if.then.205, %if.then.200, %if.then.194, %if.then.189, %if.then.172, %if.then.136, %if.then.66, %if.then.53, %if.then.11, %if.then.5, %if.then
  %138 = bitcast i64* %value_len to i8*, !dbg !1662
  call void @llvm.lifetime.end(i64 8, i8* %138) #2, !dbg !1662
  %139 = bitcast i8** %newline to i8*, !dbg !1662
  call void @llvm.lifetime.end(i64 8, i8* %139) #2, !dbg !1662
  %140 = bitcast %struct._object** %newline_obj to i8*, !dbg !1662
  call void @llvm.lifetime.end(i64 8, i8* %140) #2, !dbg !1662
  %141 = bitcast %struct._object** %value to i8*, !dbg !1662
  call void @llvm.lifetime.end(i64 8, i8* %141) #2, !dbg !1662
  %142 = bitcast [3 x i8*]* %kwlist to i8*, !dbg !1662
  call void @llvm.lifetime.end(i64 24, i8* %142) #2, !dbg !1662
  %143 = load i32, i32* %retval, !dbg !1662
  ret i32 %143, !dbg !1662
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %self = alloca %struct.stringio*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !717, metadata !791), !dbg !1663
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !718, metadata !791), !dbg !1664
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !719, metadata !791), !dbg !1665
  %0 = bitcast %struct.stringio** %self to i8*, !dbg !1666
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1666
  call void @llvm.dbg.declare(metadata %struct.stringio** %self, metadata !720, metadata !791), !dbg !1667
  %1 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1668, !tbaa !787
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 36, !dbg !1669
  %2 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8, !dbg !1669, !tbaa !1670
  %3 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1671, !tbaa !787
  %call = call %struct._object* %2(%struct._typeobject* %3, i64 0), !dbg !1668
  %4 = bitcast %struct._object* %call to %struct.stringio*, !dbg !1672
  store %struct.stringio* %4, %struct.stringio** %self, align 8, !dbg !1673, !tbaa !787
  %5 = load %struct.stringio*, %struct.stringio** %self, align 8, !dbg !1674, !tbaa !787
  %cmp = icmp eq %struct.stringio* %5, null, !dbg !1676
  br i1 %cmp, label %if.then, label %if.end, !dbg !1677

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1678
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1678

if.end:                                           ; preds = %entry
  %call1 = call i8* @PyMem_Malloc(i64 0), !dbg !1679
  %6 = bitcast i8* %call1 to i32*, !dbg !1680
  %7 = load %struct.stringio*, %struct.stringio** %self, align 8, !dbg !1681, !tbaa !787
  %buf = getelementptr inbounds %struct.stringio, %struct.stringio* %7, i32 0, i32 1, !dbg !1682
  store i32* %6, i32** %buf, align 8, !dbg !1683, !tbaa !856
  %8 = load %struct.stringio*, %struct.stringio** %self, align 8, !dbg !1684, !tbaa !787
  %buf2 = getelementptr inbounds %struct.stringio, %struct.stringio* %8, i32 0, i32 1, !dbg !1685
  %9 = load i32*, i32** %buf2, align 8, !dbg !1685, !tbaa !856
  %cmp3 = icmp eq i32* %9, null, !dbg !1686
  br i1 %cmp3, label %if.then.4, label %if.end.9, !dbg !1687

if.then.4:                                        ; preds = %if.end
  br label %do.body, !dbg !1688

do.body:                                          ; preds = %if.then.4
  %10 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1689
  call void @llvm.lifetime.start(i64 8, i8* %10) #2, !dbg !1689
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !721, metadata !791), !dbg !1691
  %11 = load %struct.stringio*, %struct.stringio** %self, align 8, !dbg !1692, !tbaa !787
  %12 = bitcast %struct.stringio* %11 to %struct._object*, !dbg !1693
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8, !dbg !1691, !tbaa !787
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1694, !tbaa !787
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !1696
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !1697, !tbaa !892
  %dec = add i64 %14, -1, !dbg !1697
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1697, !tbaa !892
  %cmp5 = icmp ne i64 %dec, 0, !dbg !1698
  br i1 %cmp5, label %if.then.6, label %if.else, !dbg !1699

if.then.6:                                        ; preds = %do.body
  br label %if.end.7, !dbg !1700

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1702, !tbaa !787
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !1704
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1704, !tbaa !900
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4, !dbg !1705
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1705, !tbaa !902
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1706, !tbaa !787
  call void %17(%struct._object* %18), !dbg !1707
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  %19 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1708
  call void @llvm.lifetime.end(i64 8, i8* %19) #2, !dbg !1708
  br label %do.cond, !dbg !1710

do.cond:                                          ; preds = %if.end.7
  br label %do.end, !dbg !1711

do.end:                                           ; preds = %do.cond
  %call8 = call %struct._object* @PyErr_NoMemory(), !dbg !1713
  store %struct._object* %call8, %struct._object** %retval, !dbg !1714
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1714

if.end.9:                                         ; preds = %if.end
  %20 = load %struct.stringio*, %struct.stringio** %self, align 8, !dbg !1715, !tbaa !787
  %21 = bitcast %struct.stringio* %20 to %struct._object*, !dbg !1716
  store %struct._object* %21, %struct._object** %retval, !dbg !1717
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1717

cleanup:                                          ; preds = %if.end.9, %do.end, %if.then
  %22 = bitcast %struct.stringio** %self to i8*, !dbg !1718
  call void @llvm.lifetime.end(i64 8, i8* %22) #2, !dbg !1718
  %23 = load %struct._object*, %struct._object** %retval, !dbg !1718
  ret %struct._object* %23, !dbg !1718
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare void @PyMem_Free(i8*) #3

declare void @_PyAccu_Destroy(%struct._PyAccu*) #3

declare void @PyObject_ClearWeakRefs(%struct._object*) #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @realize(%struct.stringio* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.stringio*, align 8
  %len = alloca i64, align 8
  %intermediate = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp15 = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct.stringio** %self.addr, metadata !499, metadata !791), !dbg !1719
  %0 = bitcast i64* %len to i8*, !dbg !1720
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1720
  call void @llvm.dbg.declare(metadata i64* %len, metadata !500, metadata !791), !dbg !1721
  %1 = bitcast %struct._object** %intermediate to i8*, !dbg !1722
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1722
  call void @llvm.dbg.declare(metadata %struct._object** %intermediate, metadata !501, metadata !791), !dbg !1723
  %2 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1724, !tbaa !787
  %state = getelementptr inbounds %struct.stringio, %struct.stringio* %2, i32 0, i32 5, !dbg !1726
  %3 = load i32, i32* %state, align 4, !dbg !1726, !tbaa !1623
  %cmp = icmp eq i32 %3, 1, !dbg !1727
  br i1 %cmp, label %if.then, label %if.end, !dbg !1728

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !1729
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1729

if.end:                                           ; preds = %entry
  %4 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1730, !tbaa !787
  %state1 = getelementptr inbounds %struct.stringio, %struct.stringio* %4, i32 0, i32 5, !dbg !1731
  store i32 1, i32* %state1, align 4, !dbg !1732, !tbaa !1623
  %5 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1733, !tbaa !787
  %accu = getelementptr inbounds %struct.stringio, %struct.stringio* %5, i32 0, i32 6, !dbg !1734
  %call = call %struct._object* @_PyAccu_Finish(%struct._PyAccu* %accu), !dbg !1735
  store %struct._object* %call, %struct._object** %intermediate, align 8, !dbg !1736, !tbaa !787
  %6 = load %struct._object*, %struct._object** %intermediate, align 8, !dbg !1737, !tbaa !787
  %cmp2 = icmp eq %struct._object* %6, null, !dbg !1739
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !1740

if.then.3:                                        ; preds = %if.end
  store i32 -1, i32* %retval, !dbg !1741
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1741

if.end.4:                                         ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %intermediate, align 8, !dbg !1742, !tbaa !787
  %8 = bitcast %struct._object* %7 to %struct.PyASCIIObject*, !dbg !1743
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %8, i32 0, i32 1, !dbg !1744
  %9 = load i64, i64* %length, align 8, !dbg !1744, !tbaa !1236
  store i64 %9, i64* %len, align 8, !dbg !1745, !tbaa !1606
  %10 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1746, !tbaa !787
  %11 = load i64, i64* %len, align 8, !dbg !1747, !tbaa !1606
  %call5 = call i32 @resize_buffer(%struct.stringio* %10, i64 %11), !dbg !1748
  %cmp6 = icmp slt i32 %call5, 0, !dbg !1749
  br i1 %cmp6, label %if.then.7, label %if.end.11, !dbg !1750

if.then.7:                                        ; preds = %if.end.4
  br label %do.body, !dbg !1751

do.body:                                          ; preds = %if.then.7
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1752
  call void @llvm.lifetime.start(i64 8, i8* %12) #2, !dbg !1752
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !502, metadata !791), !dbg !1754
  %13 = load %struct._object*, %struct._object** %intermediate, align 8, !dbg !1755, !tbaa !787
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8, !dbg !1754, !tbaa !787
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1756, !tbaa !787
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0, !dbg !1758
  %15 = load i64, i64* %ob_refcnt, align 8, !dbg !1759, !tbaa !892
  %dec = add i64 %15, -1, !dbg !1759
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1759, !tbaa !892
  %cmp8 = icmp ne i64 %dec, 0, !dbg !1760
  br i1 %cmp8, label %if.then.9, label %if.else, !dbg !1761

if.then.9:                                        ; preds = %do.body
  br label %if.end.10, !dbg !1762

if.else:                                          ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1764, !tbaa !787
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1, !dbg !1766
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1766, !tbaa !900
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4, !dbg !1767
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1767, !tbaa !902
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1768, !tbaa !787
  call void %18(%struct._object* %19), !dbg !1769
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1770
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !1770
  br label %do.cond, !dbg !1772

do.cond:                                          ; preds = %if.end.10
  br label %do.end, !dbg !1773

do.end:                                           ; preds = %do.cond
  store i32 -1, i32* %retval, !dbg !1775
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1775

if.end.11:                                        ; preds = %if.end.4
  %21 = load %struct._object*, %struct._object** %intermediate, align 8, !dbg !1776, !tbaa !787
  %22 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1777, !tbaa !787
  %buf = getelementptr inbounds %struct.stringio, %struct.stringio* %22, i32 0, i32 1, !dbg !1778
  %23 = load i32*, i32** %buf, align 8, !dbg !1778, !tbaa !856
  %24 = load i64, i64* %len, align 8, !dbg !1779, !tbaa !1606
  %call12 = call i32* @PyUnicode_AsUCS4(%struct._object* %21, i32* %23, i64 %24, i32 0), !dbg !1780
  %tobool = icmp ne i32* %call12, null, !dbg !1780
  br i1 %tobool, label %if.end.26, label %if.then.13, !dbg !1781

if.then.13:                                       ; preds = %if.end.11
  br label %do.body.14, !dbg !1782

do.body.14:                                       ; preds = %if.then.13
  %25 = bitcast %struct._object** %_py_decref_tmp15 to i8*, !dbg !1783
  call void @llvm.lifetime.start(i64 8, i8* %25) #2, !dbg !1783
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp15, metadata !506, metadata !791), !dbg !1785
  %26 = load %struct._object*, %struct._object** %intermediate, align 8, !dbg !1786, !tbaa !787
  store %struct._object* %26, %struct._object** %_py_decref_tmp15, align 8, !dbg !1785, !tbaa !787
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8, !dbg !1787, !tbaa !787
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0, !dbg !1789
  %28 = load i64, i64* %ob_refcnt16, align 8, !dbg !1790, !tbaa !892
  %dec17 = add i64 %28, -1, !dbg !1790
  store i64 %dec17, i64* %ob_refcnt16, align 8, !dbg !1790, !tbaa !892
  %cmp18 = icmp ne i64 %dec17, 0, !dbg !1791
  br i1 %cmp18, label %if.then.19, label %if.else.20, !dbg !1792

if.then.19:                                       ; preds = %do.body.14
  br label %if.end.23, !dbg !1793

if.else.20:                                       ; preds = %do.body.14
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8, !dbg !1795, !tbaa !787
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1, !dbg !1797
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8, !dbg !1797, !tbaa !900
  %tp_dealloc22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4, !dbg !1798
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8, !dbg !1798, !tbaa !902
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8, !dbg !1799, !tbaa !787
  call void %31(%struct._object* %32), !dbg !1800
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.then.19
  %33 = bitcast %struct._object** %_py_decref_tmp15 to i8*, !dbg !1801
  call void @llvm.lifetime.end(i64 8, i8* %33) #2, !dbg !1801
  br label %do.cond.24, !dbg !1803

do.cond.24:                                       ; preds = %if.end.23
  br label %do.end.25, !dbg !1804

do.end.25:                                        ; preds = %do.cond.24
  store i32 -1, i32* %retval, !dbg !1806
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1806

if.end.26:                                        ; preds = %if.end.11
  br label %do.body.27, !dbg !1807

do.body.27:                                       ; preds = %if.end.26
  %34 = bitcast %struct._object** %_py_decref_tmp28 to i8*, !dbg !1808
  call void @llvm.lifetime.start(i64 8, i8* %34) #2, !dbg !1808
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp28, metadata !510, metadata !791), !dbg !1810
  %35 = load %struct._object*, %struct._object** %intermediate, align 8, !dbg !1811, !tbaa !787
  store %struct._object* %35, %struct._object** %_py_decref_tmp28, align 8, !dbg !1810, !tbaa !787
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8, !dbg !1812, !tbaa !787
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0, !dbg !1814
  %37 = load i64, i64* %ob_refcnt29, align 8, !dbg !1815, !tbaa !892
  %dec30 = add i64 %37, -1, !dbg !1815
  store i64 %dec30, i64* %ob_refcnt29, align 8, !dbg !1815, !tbaa !892
  %cmp31 = icmp ne i64 %dec30, 0, !dbg !1816
  br i1 %cmp31, label %if.then.32, label %if.else.33, !dbg !1817

if.then.32:                                       ; preds = %do.body.27
  br label %if.end.36, !dbg !1818

if.else.33:                                       ; preds = %do.body.27
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8, !dbg !1820, !tbaa !787
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1, !dbg !1822
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8, !dbg !1822, !tbaa !900
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4, !dbg !1823
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8, !dbg !1823, !tbaa !902
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8, !dbg !1824, !tbaa !787
  call void %40(%struct._object* %41), !dbg !1825
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  %42 = bitcast %struct._object** %_py_decref_tmp28 to i8*, !dbg !1826
  call void @llvm.lifetime.end(i64 8, i8* %42) #2, !dbg !1826
  br label %do.cond.37, !dbg !1828

do.cond.37:                                       ; preds = %if.end.36
  br label %do.end.38, !dbg !1829

do.end.38:                                        ; preds = %do.cond.37
  store i32 0, i32* %retval, !dbg !1831
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1831

cleanup:                                          ; preds = %do.end.38, %do.end.25, %do.end, %if.then.3, %if.then
  %43 = bitcast %struct._object** %intermediate to i8*, !dbg !1832
  call void @llvm.lifetime.end(i64 8, i8* %43) #2, !dbg !1832
  %44 = bitcast i64* %len to i8*, !dbg !1832
  call void @llvm.lifetime.end(i64 8, i8* %44) #2, !dbg !1832
  %45 = load i32, i32* %retval, !dbg !1832
  ret i32 %45, !dbg !1832
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
  %cleanup.dest.slot = alloca i32
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct.stringio** %self.addr, metadata !524, metadata !791), !dbg !1833
  store i64 %limit, i64* %limit.addr, align 8, !tbaa !1606
  call void @llvm.dbg.declare(metadata i64* %limit.addr, metadata !525, metadata !791), !dbg !1834
  %0 = bitcast i32** %start to i8*, !dbg !1835
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1835
  call void @llvm.dbg.declare(metadata i32** %start, metadata !526, metadata !791), !dbg !1836
  %1 = bitcast i32** %end to i8*, !dbg !1835
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1835
  call void @llvm.dbg.declare(metadata i32** %end, metadata !527, metadata !791), !dbg !1837
  %2 = bitcast i32* %old_char to i8*, !dbg !1835
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1835
  call void @llvm.dbg.declare(metadata i32* %old_char, metadata !528, metadata !791), !dbg !1838
  %3 = bitcast i64* %len to i8*, !dbg !1839
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1839
  call void @llvm.dbg.declare(metadata i64* %len, metadata !529, metadata !791), !dbg !1840
  %4 = bitcast i64* %consumed to i8*, !dbg !1839
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1839
  call void @llvm.dbg.declare(metadata i64* %consumed, metadata !530, metadata !791), !dbg !1841
  %5 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1842, !tbaa !787
  %pos = getelementptr inbounds %struct.stringio, %struct.stringio* %5, i32 0, i32 2, !dbg !1844
  %6 = load i64, i64* %pos, align 8, !dbg !1844, !tbaa !1627
  %7 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1845, !tbaa !787
  %string_size = getelementptr inbounds %struct.stringio, %struct.stringio* %7, i32 0, i32 3, !dbg !1846
  %8 = load i64, i64* %string_size, align 8, !dbg !1846, !tbaa !1595
  %cmp = icmp sge i64 %6, %8, !dbg !1847
  br i1 %cmp, label %if.then, label %if.end, !dbg !1848

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyUnicode_New(i64 0, i32 0), !dbg !1849
  store %struct._object* %call, %struct._object** %retval, !dbg !1850
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1850

if.end:                                           ; preds = %entry
  %9 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1851, !tbaa !787
  %buf = getelementptr inbounds %struct.stringio, %struct.stringio* %9, i32 0, i32 1, !dbg !1852
  %10 = load i32*, i32** %buf, align 8, !dbg !1852, !tbaa !856
  %11 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1853, !tbaa !787
  %pos1 = getelementptr inbounds %struct.stringio, %struct.stringio* %11, i32 0, i32 2, !dbg !1854
  %12 = load i64, i64* %pos1, align 8, !dbg !1854, !tbaa !1627
  %add.ptr = getelementptr i32, i32* %10, i64 %12, !dbg !1855
  store i32* %add.ptr, i32** %start, align 8, !dbg !1856, !tbaa !787
  %13 = load i64, i64* %limit.addr, align 8, !dbg !1857, !tbaa !1606
  %cmp2 = icmp slt i64 %13, 0, !dbg !1859
  br i1 %cmp2, label %if.then.6, label %lor.lhs.false, !dbg !1860

lor.lhs.false:                                    ; preds = %if.end
  %14 = load i64, i64* %limit.addr, align 8, !dbg !1861, !tbaa !1606
  %15 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1863, !tbaa !787
  %string_size3 = getelementptr inbounds %struct.stringio, %struct.stringio* %15, i32 0, i32 3, !dbg !1864
  %16 = load i64, i64* %string_size3, align 8, !dbg !1864, !tbaa !1595
  %17 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1865, !tbaa !787
  %pos4 = getelementptr inbounds %struct.stringio, %struct.stringio* %17, i32 0, i32 2, !dbg !1866
  %18 = load i64, i64* %pos4, align 8, !dbg !1866, !tbaa !1627
  %sub = sub i64 %16, %18, !dbg !1867
  %cmp5 = icmp sgt i64 %14, %sub, !dbg !1868
  br i1 %cmp5, label %if.then.6, label %if.end.10, !dbg !1869

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  %19 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1870, !tbaa !787
  %string_size7 = getelementptr inbounds %struct.stringio, %struct.stringio* %19, i32 0, i32 3, !dbg !1871
  %20 = load i64, i64* %string_size7, align 8, !dbg !1871, !tbaa !1595
  %21 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1872, !tbaa !787
  %pos8 = getelementptr inbounds %struct.stringio, %struct.stringio* %21, i32 0, i32 2, !dbg !1873
  %22 = load i64, i64* %pos8, align 8, !dbg !1873, !tbaa !1627
  %sub9 = sub i64 %20, %22, !dbg !1874
  store i64 %sub9, i64* %limit.addr, align 8, !dbg !1875, !tbaa !1606
  br label %if.end.10, !dbg !1876

if.end.10:                                        ; preds = %if.then.6, %lor.lhs.false
  %23 = load i32*, i32** %start, align 8, !dbg !1877, !tbaa !787
  %24 = load i64, i64* %limit.addr, align 8, !dbg !1878, !tbaa !1606
  %add.ptr11 = getelementptr i32, i32* %23, i64 %24, !dbg !1879
  store i32* %add.ptr11, i32** %end, align 8, !dbg !1880, !tbaa !787
  %25 = load i32*, i32** %end, align 8, !dbg !1881, !tbaa !787
  %26 = load i32, i32* %25, align 4, !dbg !1882, !tbaa !1077
  store i32 %26, i32* %old_char, align 4, !dbg !1883, !tbaa !1077
  %27 = load i32*, i32** %end, align 8, !dbg !1884, !tbaa !787
  store i32 0, i32* %27, align 4, !dbg !1885, !tbaa !1077
  %28 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1886, !tbaa !787
  %readtranslate = getelementptr inbounds %struct.stringio, %struct.stringio* %28, i32 0, i32 10, !dbg !1887
  %29 = load i8, i8* %readtranslate, align 1, !dbg !1887, !tbaa !1553
  %conv = sext i8 %29 to i32, !dbg !1886
  %30 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1888, !tbaa !787
  %readuniversal = getelementptr inbounds %struct.stringio, %struct.stringio* %30, i32 0, i32 9, !dbg !1889
  %31 = load i8, i8* %readuniversal, align 1, !dbg !1889, !tbaa !1546
  %conv12 = sext i8 %31 to i32, !dbg !1888
  %32 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1890, !tbaa !787
  %readnl = getelementptr inbounds %struct.stringio, %struct.stringio* %32, i32 0, i32 12, !dbg !1891
  %33 = load %struct._object*, %struct._object** %readnl, align 8, !dbg !1891, !tbaa !875
  %34 = load i32*, i32** %start, align 8, !dbg !1892, !tbaa !787
  %35 = bitcast i32* %34 to i8*, !dbg !1893
  %36 = load i32*, i32** %end, align 8, !dbg !1894, !tbaa !787
  %37 = bitcast i32* %36 to i8*, !dbg !1895
  %call13 = call i64 @_PyIO_find_line_ending(i32 %conv, i32 %conv12, %struct._object* %33, i32 4, i8* %35, i8* %37, i64* %consumed), !dbg !1896
  store i64 %call13, i64* %len, align 8, !dbg !1897, !tbaa !1606
  %38 = load i32, i32* %old_char, align 4, !dbg !1898, !tbaa !1077
  %39 = load i32*, i32** %end, align 8, !dbg !1899, !tbaa !787
  store i32 %38, i32* %39, align 4, !dbg !1900, !tbaa !1077
  %40 = load i64, i64* %len, align 8, !dbg !1901, !tbaa !1606
  %cmp14 = icmp slt i64 %40, 0, !dbg !1903
  br i1 %cmp14, label %if.then.16, label %if.end.17, !dbg !1904

if.then.16:                                       ; preds = %if.end.10
  %41 = load i64, i64* %limit.addr, align 8, !dbg !1905, !tbaa !1606
  store i64 %41, i64* %len, align 8, !dbg !1906, !tbaa !1606
  br label %if.end.17, !dbg !1907

if.end.17:                                        ; preds = %if.then.16, %if.end.10
  %42 = load i64, i64* %len, align 8, !dbg !1908, !tbaa !1606
  %43 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1909, !tbaa !787
  %pos18 = getelementptr inbounds %struct.stringio, %struct.stringio* %43, i32 0, i32 2, !dbg !1910
  %44 = load i64, i64* %pos18, align 8, !dbg !1911, !tbaa !1627
  %add = add i64 %44, %42, !dbg !1911
  store i64 %add, i64* %pos18, align 8, !dbg !1911, !tbaa !1627
  %45 = load i32*, i32** %start, align 8, !dbg !1912, !tbaa !787
  %46 = bitcast i32* %45 to i8*, !dbg !1912
  %47 = load i64, i64* %len, align 8, !dbg !1913, !tbaa !1606
  %call19 = call %struct._object* @PyUnicode_FromKindAndData(i32 4, i8* %46, i64 %47), !dbg !1914
  store %struct._object* %call19, %struct._object** %retval, !dbg !1915
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1915

cleanup:                                          ; preds = %if.end.17, %if.then
  %48 = bitcast i64* %consumed to i8*, !dbg !1916
  call void @llvm.lifetime.end(i64 8, i8* %48) #2, !dbg !1916
  %49 = bitcast i64* %len to i8*, !dbg !1916
  call void @llvm.lifetime.end(i64 8, i8* %49) #2, !dbg !1916
  %50 = bitcast i32* %old_char to i8*, !dbg !1916
  call void @llvm.lifetime.end(i64 4, i8* %50) #2, !dbg !1916
  %51 = bitcast i32** %end to i8*, !dbg !1916
  call void @llvm.lifetime.end(i64 8, i8* %51) #2, !dbg !1916
  %52 = bitcast i32** %start to i8*, !dbg !1916
  call void @llvm.lifetime.end(i64 8, i8* %52) #2, !dbg !1916
  %53 = load %struct._object*, %struct._object** %retval, !dbg !1916
  ret %struct._object* %53, !dbg !1916
}

declare %struct._object* @PyObject_CallMethodObjArgs(%struct._object*, %struct._object*, ...) #3

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

declare %struct._object* @_PyAccu_Finish(%struct._PyAccu*) #3

; Function Attrs: nounwind uwtable
define internal i32 @resize_buffer(%struct.stringio* %self, i64 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.stringio*, align 8
  %size.addr = alloca i64, align 8
  %alloc = alloca i64, align 8
  %new_buf = alloca i32*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct.stringio** %self.addr, metadata !516, metadata !791), !dbg !1917
  store i64 %size, i64* %size.addr, align 8, !tbaa !1606
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !517, metadata !791), !dbg !1918
  %0 = bitcast i64* %alloc to i8*, !dbg !1919
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1919
  call void @llvm.dbg.declare(metadata i64* %alloc, metadata !518, metadata !791), !dbg !1920
  %1 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1921, !tbaa !787
  %buf_size = getelementptr inbounds %struct.stringio, %struct.stringio* %1, i32 0, i32 4, !dbg !1922
  %2 = load i64, i64* %buf_size, align 8, !dbg !1922, !tbaa !1923
  store i64 %2, i64* %alloc, align 8, !dbg !1920, !tbaa !1606
  %3 = bitcast i32** %new_buf to i8*, !dbg !1924
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1924
  call void @llvm.dbg.declare(metadata i32** %new_buf, metadata !519, metadata !791), !dbg !1925
  store i32* null, i32** %new_buf, align 8, !dbg !1925, !tbaa !787
  %4 = load i64, i64* %size.addr, align 8, !dbg !1926, !tbaa !1606
  %add = add i64 %4, 1, !dbg !1927
  store i64 %add, i64* %size.addr, align 8, !dbg !1928, !tbaa !1606
  %5 = load i64, i64* %size.addr, align 8, !dbg !1929, !tbaa !1606
  %cmp = icmp ugt i64 %5, 9223372036854775807, !dbg !1931
  br i1 %cmp, label %if.then, label %if.end, !dbg !1932

if.then:                                          ; preds = %entry
  br label %overflow, !dbg !1933

if.end:                                           ; preds = %entry
  %6 = load i64, i64* %size.addr, align 8, !dbg !1934, !tbaa !1606
  %7 = load i64, i64* %alloc, align 8, !dbg !1936, !tbaa !1606
  %div = udiv i64 %7, 2, !dbg !1937
  %cmp1 = icmp ult i64 %6, %div, !dbg !1938
  br i1 %cmp1, label %if.then.2, label %if.else, !dbg !1939

if.then.2:                                        ; preds = %if.end
  %8 = load i64, i64* %size.addr, align 8, !dbg !1940, !tbaa !1606
  %add3 = add i64 %8, 1, !dbg !1942
  store i64 %add3, i64* %alloc, align 8, !dbg !1943, !tbaa !1606
  br label %if.end.20, !dbg !1944

if.else:                                          ; preds = %if.end
  %9 = load i64, i64* %size.addr, align 8, !dbg !1945, !tbaa !1606
  %10 = load i64, i64* %alloc, align 8, !dbg !1947, !tbaa !1606
  %cmp4 = icmp ult i64 %9, %10, !dbg !1948
  br i1 %cmp4, label %if.then.5, label %if.else.6, !dbg !1949

if.then.5:                                        ; preds = %if.else
  store i32 0, i32* %retval, !dbg !1950
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1950

if.else.6:                                        ; preds = %if.else
  %11 = load i64, i64* %size.addr, align 8, !dbg !1952, !tbaa !1606
  %conv = uitofp i64 %11 to double, !dbg !1952
  %12 = load i64, i64* %alloc, align 8, !dbg !1954, !tbaa !1606
  %conv7 = uitofp i64 %12 to double, !dbg !1954
  %mul = fmul double %conv7, 1.125000e+00, !dbg !1955
  %cmp8 = fcmp ole double %conv, %mul, !dbg !1956
  br i1 %cmp8, label %if.then.10, label %if.else.16, !dbg !1957

if.then.10:                                       ; preds = %if.else.6
  %13 = load i64, i64* %size.addr, align 8, !dbg !1958, !tbaa !1606
  %14 = load i64, i64* %size.addr, align 8, !dbg !1960, !tbaa !1606
  %shr = lshr i64 %14, 3, !dbg !1961
  %add11 = add i64 %13, %shr, !dbg !1962
  %15 = load i64, i64* %size.addr, align 8, !dbg !1963, !tbaa !1606
  %cmp12 = icmp ult i64 %15, 9, !dbg !1964
  %cond = select i1 %cmp12, i32 3, i32 6, !dbg !1963
  %conv14 = sext i32 %cond to i64, !dbg !1965
  %add15 = add i64 %add11, %conv14, !dbg !1966
  store i64 %add15, i64* %alloc, align 8, !dbg !1967, !tbaa !1606
  br label %if.end.18, !dbg !1968

if.else.16:                                       ; preds = %if.else.6
  %16 = load i64, i64* %size.addr, align 8, !dbg !1969, !tbaa !1606
  %add17 = add i64 %16, 1, !dbg !1971
  store i64 %add17, i64* %alloc, align 8, !dbg !1972, !tbaa !1606
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.then.10
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.2
  %17 = load i64, i64* %alloc, align 8, !dbg !1973, !tbaa !1606
  %cmp21 = icmp ugt i64 %17, 4611686018427387903, !dbg !1975
  br i1 %cmp21, label %if.then.23, label %if.end.24, !dbg !1976

if.then.23:                                       ; preds = %if.end.20
  br label %overflow, !dbg !1977

if.end.24:                                        ; preds = %if.end.20
  %18 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1978, !tbaa !787
  %buf = getelementptr inbounds %struct.stringio, %struct.stringio* %18, i32 0, i32 1, !dbg !1979
  %19 = load i32*, i32** %buf, align 8, !dbg !1979, !tbaa !856
  %20 = bitcast i32* %19 to i8*, !dbg !1978
  %21 = load i64, i64* %alloc, align 8, !dbg !1980, !tbaa !1606
  %mul25 = mul i64 %21, 4, !dbg !1981
  %call = call i8* @PyMem_Realloc(i8* %20, i64 %mul25), !dbg !1982
  %22 = bitcast i8* %call to i32*, !dbg !1983
  store i32* %22, i32** %new_buf, align 8, !dbg !1984, !tbaa !787
  %23 = load i32*, i32** %new_buf, align 8, !dbg !1985, !tbaa !787
  %cmp26 = icmp eq i32* %23, null, !dbg !1987
  br i1 %cmp26, label %if.then.28, label %if.end.30, !dbg !1988

if.then.28:                                       ; preds = %if.end.24
  %call29 = call %struct._object* @PyErr_NoMemory(), !dbg !1989
  store i32 -1, i32* %retval, !dbg !1991
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1991

if.end.30:                                        ; preds = %if.end.24
  %24 = load i64, i64* %alloc, align 8, !dbg !1992, !tbaa !1606
  %25 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1993, !tbaa !787
  %buf_size31 = getelementptr inbounds %struct.stringio, %struct.stringio* %25, i32 0, i32 4, !dbg !1994
  store i64 %24, i64* %buf_size31, align 8, !dbg !1995, !tbaa !1923
  %26 = load i32*, i32** %new_buf, align 8, !dbg !1996, !tbaa !787
  %27 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !1997, !tbaa !787
  %buf32 = getelementptr inbounds %struct.stringio, %struct.stringio* %27, i32 0, i32 1, !dbg !1998
  store i32* %26, i32** %buf32, align 8, !dbg !1999, !tbaa !856
  store i32 0, i32* %retval, !dbg !2000
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2000

overflow:                                         ; preds = %if.then.23, %if.then
  %28 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2001, !tbaa !787
  call void @PyErr_SetString(%struct._object* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0)), !dbg !2002
  store i32 -1, i32* %retval, !dbg !2003
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2003

cleanup:                                          ; preds = %overflow, %if.end.30, %if.then.28, %if.then.5
  %29 = bitcast i32** %new_buf to i8*, !dbg !2004
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !2004
  %30 = bitcast i64* %alloc to i8*, !dbg !2004
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !2004
  %31 = load i32, i32* %retval, !dbg !2004
  ret i32 %31, !dbg !2004
}

declare i32* @PyUnicode_AsUCS4(%struct._object*, i32*, i64, i32) #3

declare i8* @PyMem_Realloc(i8*, i64) #3

declare %struct._object* @PyErr_NoMemory() #3

declare %struct._object* @PyUnicode_New(i64, i32) #3

declare i64 @_PyIO_find_line_ending(i32, i32, %struct._object*, i32, i8*, i8*, i64*) #3

declare %struct._object* @PyUnicode_FromKindAndData(i32, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_close(%struct.stringio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.stringio*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp12 = alloca %struct._object*, align 8
  %_py_decref_tmp17 = alloca %struct._object*, align 8
  %_py_tmp32 = alloca %struct._object*, align 8
  %_py_decref_tmp37 = alloca %struct._object*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct.stringio** %self.addr, metadata !533, metadata !791), !dbg !2005
  %0 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2006, !tbaa !787
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %0, i32 0, i32 8, !dbg !2007
  store i8 1, i8* %closed, align 1, !dbg !2008, !tbaa !1156
  %1 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2009, !tbaa !787
  %call = call i32 @resize_buffer(%struct.stringio* %1, i64 0), !dbg !2011
  %cmp = icmp slt i32 %call, 0, !dbg !2012
  br i1 %cmp, label %if.then, label %if.end, !dbg !2013

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2014
  br label %return, !dbg !2014

if.end:                                           ; preds = %entry
  %2 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2015, !tbaa !787
  %accu = getelementptr inbounds %struct.stringio, %struct.stringio* %2, i32 0, i32 6, !dbg !2016
  call void @_PyAccu_Destroy(%struct._PyAccu* %accu), !dbg !2017
  br label %do.body, !dbg !2018

do.body:                                          ; preds = %if.end
  %3 = bitcast %struct._object** %_py_tmp to i8*, !dbg !2019
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2019
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !534, metadata !791), !dbg !2021
  %4 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2022, !tbaa !787
  %readnl = getelementptr inbounds %struct.stringio, %struct.stringio* %4, i32 0, i32 12, !dbg !2023
  %5 = load %struct._object*, %struct._object** %readnl, align 8, !dbg !2023, !tbaa !875
  store %struct._object* %5, %struct._object** %_py_tmp, align 8, !dbg !2021, !tbaa !787
  %6 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2024, !tbaa !787
  %cmp1 = icmp ne %struct._object* %6, null, !dbg !2025
  br i1 %cmp1, label %if.then.2, label %if.end.8, !dbg !2026

if.then.2:                                        ; preds = %do.body
  %7 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2027, !tbaa !787
  %readnl3 = getelementptr inbounds %struct.stringio, %struct.stringio* %7, i32 0, i32 12, !dbg !2029
  store %struct._object* null, %struct._object** %readnl3, align 8, !dbg !2030, !tbaa !875
  br label %do.body.4, !dbg !2031

do.body.4:                                        ; preds = %if.then.2
  %8 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2032
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !2032
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !536, metadata !791), !dbg !2034
  %9 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2035, !tbaa !787
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8, !dbg !2034, !tbaa !787
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2036, !tbaa !787
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0, !dbg !2038
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !2039, !tbaa !892
  %dec = add i64 %11, -1, !dbg !2039
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2039, !tbaa !892
  %cmp5 = icmp ne i64 %dec, 0, !dbg !2040
  br i1 %cmp5, label %if.then.6, label %if.else, !dbg !2041

if.then.6:                                        ; preds = %do.body.4
  br label %if.end.7, !dbg !2042

if.else:                                          ; preds = %do.body.4
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2044, !tbaa !787
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !2046
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2046, !tbaa !900
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4, !dbg !2047
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2047, !tbaa !902
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2048, !tbaa !787
  call void %14(%struct._object* %15), !dbg !2049
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2050
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !2050
  br label %do.cond, !dbg !2052

do.cond:                                          ; preds = %if.end.7
  br label %do.end, !dbg !2053

do.end:                                           ; preds = %do.cond
  br label %if.end.8, !dbg !2055

if.end.8:                                         ; preds = %do.end, %do.body
  %17 = bitcast %struct._object** %_py_tmp to i8*, !dbg !2057
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !2057
  br label %do.end.10, !dbg !2060

do.end.10:                                        ; preds = %if.end.8
  br label %do.body.11, !dbg !2061

do.body.11:                                       ; preds = %do.end.10
  %18 = bitcast %struct._object** %_py_tmp12 to i8*, !dbg !2062
  call void @llvm.lifetime.start(i64 8, i8* %18) #2, !dbg !2062
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp12, metadata !540, metadata !791), !dbg !2064
  %19 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2065, !tbaa !787
  %writenl = getelementptr inbounds %struct.stringio, %struct.stringio* %19, i32 0, i32 13, !dbg !2066
  %20 = load %struct._object*, %struct._object** %writenl, align 8, !dbg !2066, !tbaa !924
  store %struct._object* %20, %struct._object** %_py_tmp12, align 8, !dbg !2064, !tbaa !787
  %21 = load %struct._object*, %struct._object** %_py_tmp12, align 8, !dbg !2067, !tbaa !787
  %cmp13 = icmp ne %struct._object* %21, null, !dbg !2068
  br i1 %cmp13, label %if.then.14, label %if.end.28, !dbg !2069

if.then.14:                                       ; preds = %do.body.11
  %22 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2070, !tbaa !787
  %writenl15 = getelementptr inbounds %struct.stringio, %struct.stringio* %22, i32 0, i32 13, !dbg !2072
  store %struct._object* null, %struct._object** %writenl15, align 8, !dbg !2073, !tbaa !924
  br label %do.body.16, !dbg !2074

do.body.16:                                       ; preds = %if.then.14
  %23 = bitcast %struct._object** %_py_decref_tmp17 to i8*, !dbg !2075
  call void @llvm.lifetime.start(i64 8, i8* %23) #2, !dbg !2075
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp17, metadata !542, metadata !791), !dbg !2077
  %24 = load %struct._object*, %struct._object** %_py_tmp12, align 8, !dbg !2078, !tbaa !787
  store %struct._object* %24, %struct._object** %_py_decref_tmp17, align 8, !dbg !2077, !tbaa !787
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8, !dbg !2079, !tbaa !787
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0, !dbg !2081
  %26 = load i64, i64* %ob_refcnt18, align 8, !dbg !2082, !tbaa !892
  %dec19 = add i64 %26, -1, !dbg !2082
  store i64 %dec19, i64* %ob_refcnt18, align 8, !dbg !2082, !tbaa !892
  %cmp20 = icmp ne i64 %dec19, 0, !dbg !2083
  br i1 %cmp20, label %if.then.21, label %if.else.22, !dbg !2084

if.then.21:                                       ; preds = %do.body.16
  br label %if.end.25, !dbg !2085

if.else.22:                                       ; preds = %do.body.16
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8, !dbg !2087, !tbaa !787
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1, !dbg !2089
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8, !dbg !2089, !tbaa !900
  %tp_dealloc24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4, !dbg !2090
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc24, align 8, !dbg !2090, !tbaa !902
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8, !dbg !2091, !tbaa !787
  call void %29(%struct._object* %30), !dbg !2092
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.22, %if.then.21
  %31 = bitcast %struct._object** %_py_decref_tmp17 to i8*, !dbg !2093
  call void @llvm.lifetime.end(i64 8, i8* %31) #2, !dbg !2093
  br label %do.cond.26, !dbg !2095

do.cond.26:                                       ; preds = %if.end.25
  br label %do.end.27, !dbg !2096

do.end.27:                                        ; preds = %do.cond.26
  br label %if.end.28, !dbg !2098

if.end.28:                                        ; preds = %do.end.27, %do.body.11
  %32 = bitcast %struct._object** %_py_tmp12 to i8*, !dbg !2100
  call void @llvm.lifetime.end(i64 8, i8* %32) #2, !dbg !2100
  br label %do.end.30, !dbg !2101

do.end.30:                                        ; preds = %if.end.28
  br label %do.body.31, !dbg !2102

do.body.31:                                       ; preds = %do.end.30
  %33 = bitcast %struct._object** %_py_tmp32 to i8*, !dbg !2103
  call void @llvm.lifetime.start(i64 8, i8* %33) #2, !dbg !2103
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp32, metadata !546, metadata !791), !dbg !2105
  %34 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2106, !tbaa !787
  %decoder = getelementptr inbounds %struct.stringio, %struct.stringio* %34, i32 0, i32 11, !dbg !2107
  %35 = load %struct._object*, %struct._object** %decoder, align 8, !dbg !2107, !tbaa !966
  store %struct._object* %35, %struct._object** %_py_tmp32, align 8, !dbg !2105, !tbaa !787
  %36 = load %struct._object*, %struct._object** %_py_tmp32, align 8, !dbg !2108, !tbaa !787
  %cmp33 = icmp ne %struct._object* %36, null, !dbg !2109
  br i1 %cmp33, label %if.then.34, label %if.end.48, !dbg !2110

if.then.34:                                       ; preds = %do.body.31
  %37 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2111, !tbaa !787
  %decoder35 = getelementptr inbounds %struct.stringio, %struct.stringio* %37, i32 0, i32 11, !dbg !2113
  store %struct._object* null, %struct._object** %decoder35, align 8, !dbg !2114, !tbaa !966
  br label %do.body.36, !dbg !2115

do.body.36:                                       ; preds = %if.then.34
  %38 = bitcast %struct._object** %_py_decref_tmp37 to i8*, !dbg !2116
  call void @llvm.lifetime.start(i64 8, i8* %38) #2, !dbg !2116
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp37, metadata !548, metadata !791), !dbg !2118
  %39 = load %struct._object*, %struct._object** %_py_tmp32, align 8, !dbg !2119, !tbaa !787
  store %struct._object* %39, %struct._object** %_py_decref_tmp37, align 8, !dbg !2118, !tbaa !787
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8, !dbg !2120, !tbaa !787
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0, !dbg !2122
  %41 = load i64, i64* %ob_refcnt38, align 8, !dbg !2123, !tbaa !892
  %dec39 = add i64 %41, -1, !dbg !2123
  store i64 %dec39, i64* %ob_refcnt38, align 8, !dbg !2123, !tbaa !892
  %cmp40 = icmp ne i64 %dec39, 0, !dbg !2124
  br i1 %cmp40, label %if.then.41, label %if.else.42, !dbg !2125

if.then.41:                                       ; preds = %do.body.36
  br label %if.end.45, !dbg !2126

if.else.42:                                       ; preds = %do.body.36
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8, !dbg !2128, !tbaa !787
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1, !dbg !2130
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8, !dbg !2130, !tbaa !900
  %tp_dealloc44 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4, !dbg !2131
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc44, align 8, !dbg !2131, !tbaa !902
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8, !dbg !2132, !tbaa !787
  call void %44(%struct._object* %45), !dbg !2133
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %if.then.41
  %46 = bitcast %struct._object** %_py_decref_tmp37 to i8*, !dbg !2134
  call void @llvm.lifetime.end(i64 8, i8* %46) #2, !dbg !2134
  br label %do.cond.46, !dbg !2136

do.cond.46:                                       ; preds = %if.end.45
  br label %do.end.47, !dbg !2137

do.end.47:                                        ; preds = %do.cond.46
  br label %if.end.48, !dbg !2139

if.end.48:                                        ; preds = %do.end.47, %do.body.31
  %47 = bitcast %struct._object** %_py_tmp32 to i8*, !dbg !2141
  call void @llvm.lifetime.end(i64 8, i8* %47) #2, !dbg !2141
  br label %do.end.50, !dbg !2142

do.end.50:                                        ; preds = %if.end.48
  %48 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2143, !tbaa !892
  %inc = add i64 %48, 1, !dbg !2143
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2143, !tbaa !892
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2144
  br label %return, !dbg !2144

return:                                           ; preds = %do.end.50, %if.then
  %49 = load %struct._object*, %struct._object** %retval, !dbg !2145
  ret %struct._object* %49, !dbg !2145
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_getvalue(%struct.stringio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.stringio*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct.stringio** %self.addr, metadata !554, metadata !791), !dbg !2146
  %0 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2147, !tbaa !787
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %0, i32 0, i32 7, !dbg !2149
  %1 = load i8, i8* %ok, align 1, !dbg !2149, !tbaa !848
  %conv = sext i8 %1 to i32, !dbg !2147
  %cmp = icmp sle i32 %conv, 0, !dbg !2150
  br i1 %cmp, label %if.then, label %if.end, !dbg !2151

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2152, !tbaa !787
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0)), !dbg !2155
  store %struct._object* null, %struct._object** %retval, !dbg !2156
  br label %return, !dbg !2156

if.end:                                           ; preds = %entry
  %3 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2157, !tbaa !787
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %3, i32 0, i32 8, !dbg !2159
  %4 = load i8, i8* %closed, align 1, !dbg !2159, !tbaa !1156
  %tobool = icmp ne i8 %4, 0, !dbg !2157
  br i1 %tobool, label %if.then.2, label %if.end.3, !dbg !2160

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2161, !tbaa !787
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0)), !dbg !2164
  store %struct._object* null, %struct._object** %retval, !dbg !2165
  br label %return, !dbg !2165

if.end.3:                                         ; preds = %if.end
  %6 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2166, !tbaa !787
  %state = getelementptr inbounds %struct.stringio, %struct.stringio* %6, i32 0, i32 5, !dbg !2168
  %7 = load i32, i32* %state, align 4, !dbg !2168, !tbaa !1623
  %cmp4 = icmp eq i32 %7, 2, !dbg !2169
  br i1 %cmp4, label %if.then.6, label %if.end.7, !dbg !2170

if.then.6:                                        ; preds = %if.end.3
  %8 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2171, !tbaa !787
  %call = call %struct._object* @make_intermediate(%struct.stringio* %8), !dbg !2172
  store %struct._object* %call, %struct._object** %retval, !dbg !2173
  br label %return, !dbg !2173

if.end.7:                                         ; preds = %if.end.3
  %9 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2174, !tbaa !787
  %buf = getelementptr inbounds %struct.stringio, %struct.stringio* %9, i32 0, i32 1, !dbg !2175
  %10 = load i32*, i32** %buf, align 8, !dbg !2175, !tbaa !856
  %11 = bitcast i32* %10 to i8*, !dbg !2174
  %12 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2176, !tbaa !787
  %string_size = getelementptr inbounds %struct.stringio, %struct.stringio* %12, i32 0, i32 3, !dbg !2177
  %13 = load i64, i64* %string_size, align 8, !dbg !2177, !tbaa !1595
  %call8 = call %struct._object* @PyUnicode_FromKindAndData(i32 4, i8* %11, i64 %13), !dbg !2178
  store %struct._object* %call8, %struct._object** %retval, !dbg !2179
  br label %return, !dbg !2179

return:                                           ; preds = %if.end.7, %if.then.6, %if.then.2, %if.then
  %14 = load %struct._object*, %struct._object** %retval, !dbg !2180
  ret %struct._object* %14, !dbg !2180
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
  %cleanup.dest.slot = alloca i32
  %result = alloca %struct._object*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct.stringio** %self.addr, metadata !567, metadata !791), !dbg !2181
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !568, metadata !791), !dbg !2182
  %0 = bitcast i64* %size to i8*, !dbg !2183
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2183
  call void @llvm.dbg.declare(metadata i64* %size, metadata !569, metadata !791), !dbg !2184
  %1 = bitcast i64* %n to i8*, !dbg !2183
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2183
  call void @llvm.dbg.declare(metadata i64* %n, metadata !570, metadata !791), !dbg !2185
  %2 = bitcast i32** %output to i8*, !dbg !2186
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2186
  call void @llvm.dbg.declare(metadata i32** %output, metadata !571, metadata !791), !dbg !2187
  %3 = bitcast %struct._object** %arg to i8*, !dbg !2188
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2188
  call void @llvm.dbg.declare(metadata %struct._object** %arg, metadata !572, metadata !791), !dbg !2189
  store %struct._object* @_Py_NoneStruct, %struct._object** %arg, align 8, !dbg !2189, !tbaa !787
  %4 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2190, !tbaa !787
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %4, i32 0, i32 7, !dbg !2192
  %5 = load i8, i8* %ok, align 1, !dbg !2192, !tbaa !848
  %conv = sext i8 %5 to i32, !dbg !2190
  %cmp = icmp sle i32 %conv, 0, !dbg !2193
  br i1 %cmp, label %if.then, label %if.end, !dbg !2194

if.then:                                          ; preds = %entry
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2195, !tbaa !787
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0)), !dbg !2198
  store %struct._object* null, %struct._object** %retval, !dbg !2199
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2199

if.end:                                           ; preds = %entry
  %7 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2200, !tbaa !787
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), %struct._object** %arg), !dbg !2202
  %tobool = icmp ne i32 %call, 0, !dbg !2202
  br i1 %tobool, label %if.end.3, label %if.then.2, !dbg !2203

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2204
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2204

if.end.3:                                         ; preds = %if.end
  %8 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2205, !tbaa !787
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %8, i32 0, i32 8, !dbg !2207
  %9 = load i8, i8* %closed, align 1, !dbg !2207, !tbaa !1156
  %tobool4 = icmp ne i8 %9, 0, !dbg !2205
  br i1 %tobool4, label %if.then.5, label %if.end.6, !dbg !2208

if.then.5:                                        ; preds = %if.end.3
  %10 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2209, !tbaa !787
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0)), !dbg !2212
  store %struct._object* null, %struct._object** %retval, !dbg !2213
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2213

if.end.6:                                         ; preds = %if.end.3
  %11 = load %struct._object*, %struct._object** %arg, align 8, !dbg !2214, !tbaa !787
  %call7 = call i32 @PyNumber_Check(%struct._object* %11), !dbg !2216
  %tobool8 = icmp ne i32 %call7, 0, !dbg !2216
  br i1 %tobool8, label %if.then.9, label %if.else, !dbg !2217

if.then.9:                                        ; preds = %if.end.6
  %12 = load %struct._object*, %struct._object** %arg, align 8, !dbg !2218, !tbaa !787
  %13 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2220, !tbaa !787
  %call10 = call i64 @PyNumber_AsSsize_t(%struct._object* %12, %struct._object* %13), !dbg !2221
  store i64 %call10, i64* %size, align 8, !dbg !2222, !tbaa !1606
  %14 = load i64, i64* %size, align 8, !dbg !2223, !tbaa !1606
  %cmp11 = icmp eq i64 %14, -1, !dbg !2225
  br i1 %cmp11, label %land.lhs.true, label %if.end.16, !dbg !2226

land.lhs.true:                                    ; preds = %if.then.9
  %call13 = call %struct._object* @PyErr_Occurred(), !dbg !2227
  %tobool14 = icmp ne %struct._object* %call13, null, !dbg !2227
  br i1 %tobool14, label %if.then.15, label %if.end.16, !dbg !2229

if.then.15:                                       ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !2230
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2230

if.end.16:                                        ; preds = %land.lhs.true, %if.then.9
  br label %if.end.23, !dbg !2231

if.else:                                          ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %arg, align 8, !dbg !2232, !tbaa !787
  %cmp17 = icmp eq %struct._object* %15, @_Py_NoneStruct, !dbg !2234
  br i1 %cmp17, label %if.then.19, label %if.else.20, !dbg !2235

if.then.19:                                       ; preds = %if.else
  store i64 -1, i64* %size, align 8, !dbg !2236, !tbaa !1606
  br label %if.end.22, !dbg !2238

if.else.20:                                       ; preds = %if.else
  %16 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2239, !tbaa !787
  %17 = load %struct._object*, %struct._object** %arg, align 8, !dbg !2241, !tbaa !787
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !2242
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2242, !tbaa !900
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 1, !dbg !2243
  %19 = load i8*, i8** %tp_name, align 8, !dbg !2243, !tbaa !1201
  %call21 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i32 0, i32 0), i8* %19), !dbg !2244
  store %struct._object* null, %struct._object** %retval, !dbg !2245
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2245

if.end.22:                                        ; preds = %if.then.19
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.16
  %20 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2246, !tbaa !787
  %string_size = getelementptr inbounds %struct.stringio, %struct.stringio* %20, i32 0, i32 3, !dbg !2247
  %21 = load i64, i64* %string_size, align 8, !dbg !2247, !tbaa !1595
  %22 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2248, !tbaa !787
  %pos = getelementptr inbounds %struct.stringio, %struct.stringio* %22, i32 0, i32 2, !dbg !2249
  %23 = load i64, i64* %pos, align 8, !dbg !2249, !tbaa !1627
  %sub = sub i64 %21, %23, !dbg !2250
  store i64 %sub, i64* %n, align 8, !dbg !2251, !tbaa !1606
  %24 = load i64, i64* %size, align 8, !dbg !2252, !tbaa !1606
  %cmp24 = icmp slt i64 %24, 0, !dbg !2254
  br i1 %cmp24, label %if.then.28, label %lor.lhs.false, !dbg !2255

lor.lhs.false:                                    ; preds = %if.end.23
  %25 = load i64, i64* %size, align 8, !dbg !2256, !tbaa !1606
  %26 = load i64, i64* %n, align 8, !dbg !2258, !tbaa !1606
  %cmp26 = icmp sgt i64 %25, %26, !dbg !2259
  br i1 %cmp26, label %if.then.28, label %if.end.33, !dbg !2260

if.then.28:                                       ; preds = %lor.lhs.false, %if.end.23
  %27 = load i64, i64* %n, align 8, !dbg !2261, !tbaa !1606
  store i64 %27, i64* %size, align 8, !dbg !2263, !tbaa !1606
  %28 = load i64, i64* %size, align 8, !dbg !2264, !tbaa !1606
  %cmp29 = icmp slt i64 %28, 0, !dbg !2266
  br i1 %cmp29, label %if.then.31, label %if.end.32, !dbg !2267

if.then.31:                                       ; preds = %if.then.28
  store i64 0, i64* %size, align 8, !dbg !2268, !tbaa !1606
  br label %if.end.32, !dbg !2269

if.end.32:                                        ; preds = %if.then.31, %if.then.28
  br label %if.end.33, !dbg !2270

if.end.33:                                        ; preds = %if.end.32, %lor.lhs.false
  %29 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2271, !tbaa !787
  %state = getelementptr inbounds %struct.stringio, %struct.stringio* %29, i32 0, i32 5, !dbg !2272
  %30 = load i32, i32* %state, align 4, !dbg !2272, !tbaa !1623
  %cmp34 = icmp eq i32 %30, 2, !dbg !2273
  br i1 %cmp34, label %land.lhs.true.36, label %if.end.47, !dbg !2274

land.lhs.true.36:                                 ; preds = %if.end.33
  %31 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2275, !tbaa !787
  %pos37 = getelementptr inbounds %struct.stringio, %struct.stringio* %31, i32 0, i32 2, !dbg !2277
  %32 = load i64, i64* %pos37, align 8, !dbg !2277, !tbaa !1627
  %cmp38 = icmp eq i64 %32, 0, !dbg !2278
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.47, !dbg !2279

land.lhs.true.40:                                 ; preds = %land.lhs.true.36
  %33 = load i64, i64* %size, align 8, !dbg !2280, !tbaa !1606
  %34 = load i64, i64* %n, align 8, !dbg !2282, !tbaa !1606
  %cmp41 = icmp eq i64 %33, %34, !dbg !2283
  br i1 %cmp41, label %if.then.43, label %if.end.47, !dbg !2284

if.then.43:                                       ; preds = %land.lhs.true.40
  %35 = bitcast %struct._object** %result to i8*, !dbg !2285
  call void @llvm.lifetime.start(i64 8, i8* %35) #2, !dbg !2285
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !573, metadata !791), !dbg !2286
  %36 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2287, !tbaa !787
  %call44 = call %struct._object* @make_intermediate(%struct.stringio* %36), !dbg !2288
  store %struct._object* %call44, %struct._object** %result, align 8, !dbg !2286, !tbaa !787
  %37 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2289, !tbaa !787
  %string_size45 = getelementptr inbounds %struct.stringio, %struct.stringio* %37, i32 0, i32 3, !dbg !2290
  %38 = load i64, i64* %string_size45, align 8, !dbg !2290, !tbaa !1595
  %39 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2291, !tbaa !787
  %pos46 = getelementptr inbounds %struct.stringio, %struct.stringio* %39, i32 0, i32 2, !dbg !2292
  store i64 %38, i64* %pos46, align 8, !dbg !2293, !tbaa !1627
  %40 = load %struct._object*, %struct._object** %result, align 8, !dbg !2294, !tbaa !787
  store %struct._object* %40, %struct._object** %retval, !dbg !2295
  store i32 1, i32* %cleanup.dest.slot
  %41 = bitcast %struct._object** %result to i8*, !dbg !2296
  call void @llvm.lifetime.end(i64 8, i8* %41) #2, !dbg !2296
  br label %cleanup

if.end.47:                                        ; preds = %land.lhs.true.40, %land.lhs.true.36, %if.end.33
  %42 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2297, !tbaa !787
  %call48 = call i32 @realize(%struct.stringio* %42), !dbg !2299
  %cmp49 = icmp slt i32 %call48, 0, !dbg !2300
  br i1 %cmp49, label %if.then.51, label %if.end.52, !dbg !2301

if.then.51:                                       ; preds = %if.end.47
  store %struct._object* null, %struct._object** %retval, !dbg !2302
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2305

if.end.52:                                        ; preds = %if.end.47
  %43 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2306, !tbaa !787
  %buf = getelementptr inbounds %struct.stringio, %struct.stringio* %43, i32 0, i32 1, !dbg !2307
  %44 = load i32*, i32** %buf, align 8, !dbg !2307, !tbaa !856
  %45 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2308, !tbaa !787
  %pos53 = getelementptr inbounds %struct.stringio, %struct.stringio* %45, i32 0, i32 2, !dbg !2309
  %46 = load i64, i64* %pos53, align 8, !dbg !2309, !tbaa !1627
  %add.ptr = getelementptr i32, i32* %44, i64 %46, !dbg !2310
  store i32* %add.ptr, i32** %output, align 8, !dbg !2311, !tbaa !787
  %47 = load i64, i64* %size, align 8, !dbg !2312, !tbaa !1606
  %48 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2313, !tbaa !787
  %pos54 = getelementptr inbounds %struct.stringio, %struct.stringio* %48, i32 0, i32 2, !dbg !2314
  %49 = load i64, i64* %pos54, align 8, !dbg !2315, !tbaa !1627
  %add = add i64 %49, %47, !dbg !2315
  store i64 %add, i64* %pos54, align 8, !dbg !2315, !tbaa !1627
  %50 = load i32*, i32** %output, align 8, !dbg !2316, !tbaa !787
  %51 = bitcast i32* %50 to i8*, !dbg !2316
  %52 = load i64, i64* %size, align 8, !dbg !2317, !tbaa !1606
  %call55 = call %struct._object* @PyUnicode_FromKindAndData(i32 4, i8* %51, i64 %52), !dbg !2318
  store %struct._object* %call55, %struct._object** %retval, !dbg !2319
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2319

cleanup:                                          ; preds = %if.end.52, %if.then.51, %if.then.43, %if.else.20, %if.then.15, %if.then.5, %if.then.2, %if.then
  %53 = bitcast %struct._object** %arg to i8*, !dbg !2320
  call void @llvm.lifetime.end(i64 8, i8* %53) #2, !dbg !2320
  %54 = bitcast i32** %output to i8*, !dbg !2320
  call void @llvm.lifetime.end(i64 8, i8* %54) #2, !dbg !2320
  %55 = bitcast i64* %n to i8*, !dbg !2320
  call void @llvm.lifetime.end(i64 8, i8* %55) #2, !dbg !2320
  %56 = bitcast i64* %size to i8*, !dbg !2320
  call void @llvm.lifetime.end(i64 8, i8* %56) #2, !dbg !2320
  %57 = load %struct._object*, %struct._object** %retval, !dbg !2320
  ret %struct._object* %57, !dbg !2320
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_readline(%struct.stringio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.stringio*, align 8
  %args.addr = alloca %struct._object*, align 8
  %arg = alloca %struct._object*, align 8
  %limit = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct.stringio** %self.addr, metadata !578, metadata !791), !dbg !2321
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !579, metadata !791), !dbg !2322
  %0 = bitcast %struct._object** %arg to i8*, !dbg !2323
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2323
  call void @llvm.dbg.declare(metadata %struct._object** %arg, metadata !580, metadata !791), !dbg !2324
  store %struct._object* @_Py_NoneStruct, %struct._object** %arg, align 8, !dbg !2324, !tbaa !787
  %1 = bitcast i64* %limit to i8*, !dbg !2325
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2325
  call void @llvm.dbg.declare(metadata i64* %limit, metadata !581, metadata !791), !dbg !2326
  store i64 -1, i64* %limit, align 8, !dbg !2326, !tbaa !1606
  %2 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2327, !tbaa !787
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %2, i32 0, i32 7, !dbg !2329
  %3 = load i8, i8* %ok, align 1, !dbg !2329, !tbaa !848
  %conv = sext i8 %3 to i32, !dbg !2327
  %cmp = icmp sle i32 %conv, 0, !dbg !2330
  br i1 %cmp, label %if.then, label %if.end, !dbg !2331

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2332, !tbaa !787
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0)), !dbg !2335
  store %struct._object* null, %struct._object** %retval, !dbg !2336
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2336

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2337, !tbaa !787
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), %struct._object** %arg), !dbg !2339
  %tobool = icmp ne i32 %call, 0, !dbg !2339
  br i1 %tobool, label %if.end.3, label %if.then.2, !dbg !2340

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2341
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2341

if.end.3:                                         ; preds = %if.end
  %6 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2342, !tbaa !787
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %6, i32 0, i32 8, !dbg !2344
  %7 = load i8, i8* %closed, align 1, !dbg !2344, !tbaa !1156
  %tobool4 = icmp ne i8 %7, 0, !dbg !2342
  br i1 %tobool4, label %if.then.5, label %if.end.6, !dbg !2345

if.then.5:                                        ; preds = %if.end.3
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2346, !tbaa !787
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0)), !dbg !2349
  store %struct._object* null, %struct._object** %retval, !dbg !2350
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2350

if.end.6:                                         ; preds = %if.end.3
  %9 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2351, !tbaa !787
  %call7 = call i32 @realize(%struct.stringio* %9), !dbg !2353
  %cmp8 = icmp slt i32 %call7, 0, !dbg !2354
  br i1 %cmp8, label %if.then.10, label %if.end.11, !dbg !2355

if.then.10:                                       ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval, !dbg !2356
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2359

if.end.11:                                        ; preds = %if.end.6
  %10 = load %struct._object*, %struct._object** %arg, align 8, !dbg !2360, !tbaa !787
  %call12 = call i32 @PyNumber_Check(%struct._object* %10), !dbg !2362
  %tobool13 = icmp ne i32 %call12, 0, !dbg !2362
  br i1 %tobool13, label %if.then.14, label %if.else, !dbg !2363

if.then.14:                                       ; preds = %if.end.11
  %11 = load %struct._object*, %struct._object** %arg, align 8, !dbg !2364, !tbaa !787
  %12 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2366, !tbaa !787
  %call15 = call i64 @PyNumber_AsSsize_t(%struct._object* %11, %struct._object* %12), !dbg !2367
  store i64 %call15, i64* %limit, align 8, !dbg !2368, !tbaa !1606
  %13 = load i64, i64* %limit, align 8, !dbg !2369, !tbaa !1606
  %cmp16 = icmp eq i64 %13, -1, !dbg !2371
  br i1 %cmp16, label %land.lhs.true, label %if.end.21, !dbg !2372

land.lhs.true:                                    ; preds = %if.then.14
  %call18 = call %struct._object* @PyErr_Occurred(), !dbg !2373
  %tobool19 = icmp ne %struct._object* %call18, null, !dbg !2373
  br i1 %tobool19, label %if.then.20, label %if.end.21, !dbg !2375

if.then.20:                                       ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !2376
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2376

if.end.21:                                        ; preds = %land.lhs.true, %if.then.14
  br label %if.end.27, !dbg !2377

if.else:                                          ; preds = %if.end.11
  %14 = load %struct._object*, %struct._object** %arg, align 8, !dbg !2378, !tbaa !787
  %cmp22 = icmp ne %struct._object* %14, @_Py_NoneStruct, !dbg !2380
  br i1 %cmp22, label %if.then.24, label %if.end.26, !dbg !2381

if.then.24:                                       ; preds = %if.else
  %15 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2382, !tbaa !787
  %16 = load %struct._object*, %struct._object** %arg, align 8, !dbg !2384, !tbaa !787
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1, !dbg !2385
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2385, !tbaa !900
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 1, !dbg !2386
  %18 = load i8*, i8** %tp_name, align 8, !dbg !2386, !tbaa !1201
  %call25 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i32 0, i32 0), i8* %18), !dbg !2387
  store %struct._object* null, %struct._object** %retval, !dbg !2388
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2388

if.end.26:                                        ; preds = %if.else
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.21
  %19 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2389, !tbaa !787
  %20 = load i64, i64* %limit, align 8, !dbg !2390, !tbaa !1606
  %call28 = call %struct._object* @_stringio_readline(%struct.stringio* %19, i64 %20), !dbg !2391
  store %struct._object* %call28, %struct._object** %retval, !dbg !2392
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2392

cleanup:                                          ; preds = %if.end.27, %if.then.24, %if.then.20, %if.then.10, %if.then.5, %if.then.2, %if.then
  %21 = bitcast i64* %limit to i8*, !dbg !2393
  call void @llvm.lifetime.end(i64 8, i8* %21) #2, !dbg !2393
  %22 = bitcast %struct._object** %arg to i8*, !dbg !2393
  call void @llvm.lifetime.end(i64 8, i8* %22) #2, !dbg !2393
  %23 = load %struct._object*, %struct._object** %retval, !dbg !2393
  ret %struct._object* %23, !dbg !2393
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_tell(%struct.stringio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.stringio*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct.stringio** %self.addr, metadata !584, metadata !791), !dbg !2394
  %0 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2395, !tbaa !787
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %0, i32 0, i32 7, !dbg !2397
  %1 = load i8, i8* %ok, align 1, !dbg !2397, !tbaa !848
  %conv = sext i8 %1 to i32, !dbg !2395
  %cmp = icmp sle i32 %conv, 0, !dbg !2398
  br i1 %cmp, label %if.then, label %if.end, !dbg !2399

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2400, !tbaa !787
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0)), !dbg !2403
  store %struct._object* null, %struct._object** %retval, !dbg !2404
  br label %return, !dbg !2404

if.end:                                           ; preds = %entry
  %3 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2405, !tbaa !787
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %3, i32 0, i32 8, !dbg !2407
  %4 = load i8, i8* %closed, align 1, !dbg !2407, !tbaa !1156
  %tobool = icmp ne i8 %4, 0, !dbg !2405
  br i1 %tobool, label %if.then.2, label %if.end.3, !dbg !2408

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2409, !tbaa !787
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0)), !dbg !2412
  store %struct._object* null, %struct._object** %retval, !dbg !2413
  br label %return, !dbg !2413

if.end.3:                                         ; preds = %if.end
  %6 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2414, !tbaa !787
  %pos = getelementptr inbounds %struct.stringio, %struct.stringio* %6, i32 0, i32 2, !dbg !2415
  %7 = load i64, i64* %pos, align 8, !dbg !2415, !tbaa !1627
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %7), !dbg !2416
  store %struct._object* %call, %struct._object** %retval, !dbg !2417
  br label %return, !dbg !2417

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %8 = load %struct._object*, %struct._object** %retval, !dbg !2418
  ret %struct._object* %8, !dbg !2418
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_truncate(%struct.stringio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.stringio*, align 8
  %args.addr = alloca %struct._object*, align 8
  %size = alloca i64, align 8
  %arg = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct.stringio** %self.addr, metadata !587, metadata !791), !dbg !2419
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !588, metadata !791), !dbg !2420
  %0 = bitcast i64* %size to i8*, !dbg !2421
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2421
  call void @llvm.dbg.declare(metadata i64* %size, metadata !589, metadata !791), !dbg !2422
  %1 = bitcast %struct._object** %arg to i8*, !dbg !2423
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2423
  call void @llvm.dbg.declare(metadata %struct._object** %arg, metadata !590, metadata !791), !dbg !2424
  store %struct._object* @_Py_NoneStruct, %struct._object** %arg, align 8, !dbg !2424, !tbaa !787
  %2 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2425, !tbaa !787
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %2, i32 0, i32 7, !dbg !2427
  %3 = load i8, i8* %ok, align 1, !dbg !2427, !tbaa !848
  %conv = sext i8 %3 to i32, !dbg !2425
  %cmp = icmp sle i32 %conv, 0, !dbg !2428
  br i1 %cmp, label %if.then, label %if.end, !dbg !2429

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2430, !tbaa !787
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0)), !dbg !2433
  store %struct._object* null, %struct._object** %retval, !dbg !2434
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2434

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2435, !tbaa !787
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), %struct._object** %arg), !dbg !2437
  %tobool = icmp ne i32 %call, 0, !dbg !2437
  br i1 %tobool, label %if.end.3, label %if.then.2, !dbg !2438

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2439
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2439

if.end.3:                                         ; preds = %if.end
  %6 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2440, !tbaa !787
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %6, i32 0, i32 8, !dbg !2442
  %7 = load i8, i8* %closed, align 1, !dbg !2442, !tbaa !1156
  %tobool4 = icmp ne i8 %7, 0, !dbg !2440
  br i1 %tobool4, label %if.then.5, label %if.end.6, !dbg !2443

if.then.5:                                        ; preds = %if.end.3
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2444, !tbaa !787
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0)), !dbg !2447
  store %struct._object* null, %struct._object** %retval, !dbg !2448
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2448

if.end.6:                                         ; preds = %if.end.3
  %9 = load %struct._object*, %struct._object** %arg, align 8, !dbg !2449, !tbaa !787
  %call7 = call i32 @PyNumber_Check(%struct._object* %9), !dbg !2451
  %tobool8 = icmp ne i32 %call7, 0, !dbg !2451
  br i1 %tobool8, label %if.then.9, label %if.else, !dbg !2452

if.then.9:                                        ; preds = %if.end.6
  %10 = load %struct._object*, %struct._object** %arg, align 8, !dbg !2453, !tbaa !787
  %11 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2455, !tbaa !787
  %call10 = call i64 @PyNumber_AsSsize_t(%struct._object* %10, %struct._object* %11), !dbg !2456
  store i64 %call10, i64* %size, align 8, !dbg !2457, !tbaa !1606
  %12 = load i64, i64* %size, align 8, !dbg !2458, !tbaa !1606
  %cmp11 = icmp eq i64 %12, -1, !dbg !2460
  br i1 %cmp11, label %land.lhs.true, label %if.end.16, !dbg !2461

land.lhs.true:                                    ; preds = %if.then.9
  %call13 = call %struct._object* @PyErr_Occurred(), !dbg !2462
  %tobool14 = icmp ne %struct._object* %call13, null, !dbg !2462
  br i1 %tobool14, label %if.then.15, label %if.end.16, !dbg !2464

if.then.15:                                       ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !2465
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2465

if.end.16:                                        ; preds = %land.lhs.true, %if.then.9
  br label %if.end.23, !dbg !2466

if.else:                                          ; preds = %if.end.6
  %13 = load %struct._object*, %struct._object** %arg, align 8, !dbg !2467, !tbaa !787
  %cmp17 = icmp eq %struct._object* %13, @_Py_NoneStruct, !dbg !2469
  br i1 %cmp17, label %if.then.19, label %if.else.20, !dbg !2470

if.then.19:                                       ; preds = %if.else
  %14 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2471, !tbaa !787
  %pos = getelementptr inbounds %struct.stringio, %struct.stringio* %14, i32 0, i32 2, !dbg !2473
  %15 = load i64, i64* %pos, align 8, !dbg !2473, !tbaa !1627
  store i64 %15, i64* %size, align 8, !dbg !2474, !tbaa !1606
  br label %if.end.22, !dbg !2475

if.else.20:                                       ; preds = %if.else
  %16 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2476, !tbaa !787
  %17 = load %struct._object*, %struct._object** %arg, align 8, !dbg !2478, !tbaa !787
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !2479
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2479, !tbaa !900
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 1, !dbg !2480
  %19 = load i8*, i8** %tp_name, align 8, !dbg !2480, !tbaa !1201
  %call21 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i32 0, i32 0), i8* %19), !dbg !2481
  store %struct._object* null, %struct._object** %retval, !dbg !2482
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2482

if.end.22:                                        ; preds = %if.then.19
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.16
  %20 = load i64, i64* %size, align 8, !dbg !2483, !tbaa !1606
  %cmp24 = icmp slt i64 %20, 0, !dbg !2485
  br i1 %cmp24, label %if.then.26, label %if.end.28, !dbg !2486

if.then.26:                                       ; preds = %if.end.23
  %21 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2487, !tbaa !787
  %22 = load i64, i64* %size, align 8, !dbg !2489, !tbaa !1606
  %call27 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i32 0, i32 0), i64 %22), !dbg !2490
  store %struct._object* null, %struct._object** %retval, !dbg !2491
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2491

if.end.28:                                        ; preds = %if.end.23
  %23 = load i64, i64* %size, align 8, !dbg !2492, !tbaa !1606
  %24 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2494, !tbaa !787
  %string_size = getelementptr inbounds %struct.stringio, %struct.stringio* %24, i32 0, i32 3, !dbg !2495
  %25 = load i64, i64* %string_size, align 8, !dbg !2495, !tbaa !1595
  %cmp29 = icmp slt i64 %23, %25, !dbg !2496
  br i1 %cmp29, label %if.then.31, label %if.end.43, !dbg !2497

if.then.31:                                       ; preds = %if.end.28
  %26 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2498, !tbaa !787
  %call32 = call i32 @realize(%struct.stringio* %26), !dbg !2501
  %cmp33 = icmp slt i32 %call32, 0, !dbg !2502
  br i1 %cmp33, label %if.then.35, label %if.end.36, !dbg !2503

if.then.35:                                       ; preds = %if.then.31
  store %struct._object* null, %struct._object** %retval, !dbg !2504
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2507

if.end.36:                                        ; preds = %if.then.31
  %27 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2508, !tbaa !787
  %28 = load i64, i64* %size, align 8, !dbg !2510, !tbaa !1606
  %call37 = call i32 @resize_buffer(%struct.stringio* %27, i64 %28), !dbg !2511
  %cmp38 = icmp slt i32 %call37, 0, !dbg !2512
  br i1 %cmp38, label %if.then.40, label %if.end.41, !dbg !2513

if.then.40:                                       ; preds = %if.end.36
  store %struct._object* null, %struct._object** %retval, !dbg !2514
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2514

if.end.41:                                        ; preds = %if.end.36
  %29 = load i64, i64* %size, align 8, !dbg !2515, !tbaa !1606
  %30 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2516, !tbaa !787
  %string_size42 = getelementptr inbounds %struct.stringio, %struct.stringio* %30, i32 0, i32 3, !dbg !2517
  store i64 %29, i64* %string_size42, align 8, !dbg !2518, !tbaa !1595
  br label %if.end.43, !dbg !2519

if.end.43:                                        ; preds = %if.end.41, %if.end.28
  %31 = load i64, i64* %size, align 8, !dbg !2520, !tbaa !1606
  %call44 = call %struct._object* @PyLong_FromSsize_t(i64 %31), !dbg !2521
  store %struct._object* %call44, %struct._object** %retval, !dbg !2522
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2522

cleanup:                                          ; preds = %if.end.43, %if.then.40, %if.then.35, %if.then.26, %if.else.20, %if.then.15, %if.then.5, %if.then.2, %if.then
  %32 = bitcast %struct._object** %arg to i8*, !dbg !2523
  call void @llvm.lifetime.end(i64 8, i8* %32) #2, !dbg !2523
  %33 = bitcast i64* %size to i8*, !dbg !2523
  call void @llvm.lifetime.end(i64 8, i8* %33) #2, !dbg !2523
  %34 = load %struct._object*, %struct._object** %retval, !dbg !2523
  ret %struct._object* %34, !dbg !2523
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_seek(%struct.stringio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.stringio*, align 8
  %args.addr = alloca %struct._object*, align 8
  %pos = alloca i64, align 8
  %mode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct.stringio** %self.addr, metadata !593, metadata !791), !dbg !2524
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !594, metadata !791), !dbg !2525
  %0 = bitcast i64* %pos to i8*, !dbg !2526
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2526
  call void @llvm.dbg.declare(metadata i64* %pos, metadata !595, metadata !791), !dbg !2527
  %1 = bitcast i32* %mode to i8*, !dbg !2528
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !2528
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !596, metadata !791), !dbg !2529
  store i32 0, i32* %mode, align 4, !dbg !2529, !tbaa !1077
  %2 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2530, !tbaa !787
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %2, i32 0, i32 7, !dbg !2532
  %3 = load i8, i8* %ok, align 1, !dbg !2532, !tbaa !848
  %conv = sext i8 %3 to i32, !dbg !2530
  %cmp = icmp sle i32 %conv, 0, !dbg !2533
  br i1 %cmp, label %if.then, label %if.end, !dbg !2534

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2535, !tbaa !787
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0)), !dbg !2538
  store %struct._object* null, %struct._object** %retval, !dbg !2539
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2539

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2540, !tbaa !787
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i64* %pos, i32* %mode), !dbg !2542
  %tobool = icmp ne i32 %call, 0, !dbg !2542
  br i1 %tobool, label %if.end.3, label %if.then.2, !dbg !2543

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2544
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2544

if.end.3:                                         ; preds = %if.end
  %6 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2545, !tbaa !787
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %6, i32 0, i32 8, !dbg !2547
  %7 = load i8, i8* %closed, align 1, !dbg !2547, !tbaa !1156
  %tobool4 = icmp ne i8 %7, 0, !dbg !2545
  br i1 %tobool4, label %if.then.5, label %if.end.6, !dbg !2548

if.then.5:                                        ; preds = %if.end.3
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2549, !tbaa !787
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0)), !dbg !2552
  store %struct._object* null, %struct._object** %retval, !dbg !2553
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2553

if.end.6:                                         ; preds = %if.end.3
  %9 = load i32, i32* %mode, align 4, !dbg !2554, !tbaa !1077
  %cmp7 = icmp ne i32 %9, 0, !dbg !2556
  br i1 %cmp7, label %land.lhs.true, label %if.else, !dbg !2557

land.lhs.true:                                    ; preds = %if.end.6
  %10 = load i32, i32* %mode, align 4, !dbg !2558, !tbaa !1077
  %cmp9 = icmp ne i32 %10, 1, !dbg !2560
  br i1 %cmp9, label %land.lhs.true.11, label %if.else, !dbg !2561

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %11 = load i32, i32* %mode, align 4, !dbg !2562, !tbaa !1077
  %cmp12 = icmp ne i32 %11, 2, !dbg !2564
  br i1 %cmp12, label %if.then.14, label %if.else, !dbg !2565

if.then.14:                                       ; preds = %land.lhs.true.11
  %12 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2566, !tbaa !787
  %13 = load i32, i32* %mode, align 4, !dbg !2568, !tbaa !1077
  %call15 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i32 0, i32 0), i32 %13), !dbg !2569
  store %struct._object* null, %struct._object** %retval, !dbg !2570
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2570

if.else:                                          ; preds = %land.lhs.true.11, %land.lhs.true, %if.end.6
  %14 = load i64, i64* %pos, align 8, !dbg !2571, !tbaa !1606
  %cmp16 = icmp slt i64 %14, 0, !dbg !2573
  br i1 %cmp16, label %land.lhs.true.18, label %if.else.23, !dbg !2574

land.lhs.true.18:                                 ; preds = %if.else
  %15 = load i32, i32* %mode, align 4, !dbg !2575, !tbaa !1077
  %cmp19 = icmp eq i32 %15, 0, !dbg !2577
  br i1 %cmp19, label %if.then.21, label %if.else.23, !dbg !2578

if.then.21:                                       ; preds = %land.lhs.true.18
  %16 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2579, !tbaa !787
  %17 = load i64, i64* %pos, align 8, !dbg !2581, !tbaa !1606
  %call22 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i32 0, i32 0), i64 %17), !dbg !2582
  store %struct._object* null, %struct._object** %retval, !dbg !2583
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2583

if.else.23:                                       ; preds = %land.lhs.true.18, %if.else
  %18 = load i32, i32* %mode, align 4, !dbg !2584, !tbaa !1077
  %cmp24 = icmp ne i32 %18, 0, !dbg !2586
  br i1 %cmp24, label %land.lhs.true.26, label %if.end.30, !dbg !2587

land.lhs.true.26:                                 ; preds = %if.else.23
  %19 = load i64, i64* %pos, align 8, !dbg !2588, !tbaa !1606
  %cmp27 = icmp ne i64 %19, 0, !dbg !2590
  br i1 %cmp27, label %if.then.29, label %if.end.30, !dbg !2591

if.then.29:                                       ; preds = %land.lhs.true.26
  %20 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !2592, !tbaa !787
  call void @PyErr_SetString(%struct._object* %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i32 0, i32 0)), !dbg !2594
  store %struct._object* null, %struct._object** %retval, !dbg !2595
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2595

if.end.30:                                        ; preds = %land.lhs.true.26, %if.else.23
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31
  %21 = load i32, i32* %mode, align 4, !dbg !2596, !tbaa !1077
  %cmp33 = icmp eq i32 %21, 1, !dbg !2598
  br i1 %cmp33, label %if.then.35, label %if.else.37, !dbg !2599

if.then.35:                                       ; preds = %if.end.32
  %22 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2600, !tbaa !787
  %pos36 = getelementptr inbounds %struct.stringio, %struct.stringio* %22, i32 0, i32 2, !dbg !2602
  %23 = load i64, i64* %pos36, align 8, !dbg !2602, !tbaa !1627
  store i64 %23, i64* %pos, align 8, !dbg !2603, !tbaa !1606
  br label %if.end.42, !dbg !2604

if.else.37:                                       ; preds = %if.end.32
  %24 = load i32, i32* %mode, align 4, !dbg !2605, !tbaa !1077
  %cmp38 = icmp eq i32 %24, 2, !dbg !2607
  br i1 %cmp38, label %if.then.40, label %if.end.41, !dbg !2608

if.then.40:                                       ; preds = %if.else.37
  %25 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2609, !tbaa !787
  %string_size = getelementptr inbounds %struct.stringio, %struct.stringio* %25, i32 0, i32 3, !dbg !2611
  %26 = load i64, i64* %string_size, align 8, !dbg !2611, !tbaa !1595
  store i64 %26, i64* %pos, align 8, !dbg !2612, !tbaa !1606
  br label %if.end.41, !dbg !2613

if.end.41:                                        ; preds = %if.then.40, %if.else.37
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.35
  %27 = load i64, i64* %pos, align 8, !dbg !2614, !tbaa !1606
  %28 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2615, !tbaa !787
  %pos43 = getelementptr inbounds %struct.stringio, %struct.stringio* %28, i32 0, i32 2, !dbg !2616
  store i64 %27, i64* %pos43, align 8, !dbg !2617, !tbaa !1627
  %29 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2618, !tbaa !787
  %pos44 = getelementptr inbounds %struct.stringio, %struct.stringio* %29, i32 0, i32 2, !dbg !2619
  %30 = load i64, i64* %pos44, align 8, !dbg !2619, !tbaa !1627
  %call45 = call %struct._object* @PyLong_FromSsize_t(i64 %30), !dbg !2620
  store %struct._object* %call45, %struct._object** %retval, !dbg !2621
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2621

cleanup:                                          ; preds = %if.end.42, %if.then.29, %if.then.21, %if.then.14, %if.then.5, %if.then.2, %if.then
  %31 = bitcast i32* %mode to i8*, !dbg !2622
  call void @llvm.lifetime.end(i64 4, i8* %31) #2, !dbg !2622
  %32 = bitcast i64* %pos to i8*, !dbg !2622
  call void @llvm.lifetime.end(i64 8, i8* %32) #2, !dbg !2622
  %33 = load %struct._object*, %struct._object** %retval, !dbg !2622
  ret %struct._object* %33, !dbg !2622
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_write(%struct.stringio* %self, %struct._object* %obj) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.stringio*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct.stringio** %self.addr, metadata !599, metadata !791), !dbg !2623
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !600, metadata !791), !dbg !2624
  %0 = bitcast i64* %size to i8*, !dbg !2625
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2625
  call void @llvm.dbg.declare(metadata i64* %size, metadata !601, metadata !791), !dbg !2626
  %1 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2627, !tbaa !787
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %1, i32 0, i32 7, !dbg !2629
  %2 = load i8, i8* %ok, align 1, !dbg !2629, !tbaa !848
  %conv = sext i8 %2 to i32, !dbg !2627
  %cmp = icmp sle i32 %conv, 0, !dbg !2630
  br i1 %cmp, label %if.then, label %if.end, !dbg !2631

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2632, !tbaa !787
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0)), !dbg !2635
  store %struct._object* null, %struct._object** %retval, !dbg !2636
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2636

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2637, !tbaa !787
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !2639
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2639, !tbaa !900
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 19, !dbg !2640
  %6 = load i64, i64* %tp_flags, align 8, !dbg !2640, !tbaa !1193
  %and = and i64 %6, 268435456, !dbg !2641
  %cmp2 = icmp ne i64 %and, 0, !dbg !2642
  br i1 %cmp2, label %if.end.6, label %if.then.4, !dbg !2643

if.then.4:                                        ; preds = %if.end
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2644, !tbaa !787
  %8 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2646, !tbaa !787
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !2647
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8, !dbg !2647, !tbaa !900
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 1, !dbg !2648
  %10 = load i8*, i8** %tp_name, align 8, !dbg !2648, !tbaa !1201
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %7, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i32 0, i32 0), i8* %10), !dbg !2649
  store %struct._object* null, %struct._object** %retval, !dbg !2650
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2650

if.end.6:                                         ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2651, !tbaa !787
  %12 = bitcast %struct._object* %11 to %struct.PyASCIIObject*, !dbg !2653
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %12, i32 0, i32 3, !dbg !2654
  %13 = bitcast %struct.anon.0* %state to i32*, !dbg !2655
  %bf.load = load i32, i32* %13, align 4, !dbg !2655
  %bf.lshr = lshr i32 %bf.load, 7, !dbg !2655
  %bf.clear = and i32 %bf.lshr, 1, !dbg !2655
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !2656
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2656

cond.true:                                        ; preds = %if.end.6
  br label %cond.end, !dbg !2657

cond.false:                                       ; preds = %if.end.6
  %14 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2659, !tbaa !787
  %call7 = call i32 @_PyUnicode_Ready(%struct._object* %14), !dbg !2661
  br label %cond.end, !dbg !2656

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call7, %cond.false ], !dbg !2656
  %tobool8 = icmp ne i32 %cond, 0, !dbg !2662
  br i1 %tobool8, label %if.then.9, label %if.end.10, !dbg !2665

if.then.9:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval, !dbg !2666
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2666

if.end.10:                                        ; preds = %cond.end
  %15 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2667, !tbaa !787
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %15, i32 0, i32 8, !dbg !2669
  %16 = load i8, i8* %closed, align 1, !dbg !2669, !tbaa !1156
  %tobool11 = icmp ne i8 %16, 0, !dbg !2667
  br i1 %tobool11, label %if.then.12, label %if.end.13, !dbg !2670

if.then.12:                                       ; preds = %if.end.10
  %17 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2671, !tbaa !787
  call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0)), !dbg !2674
  store %struct._object* null, %struct._object** %retval, !dbg !2675
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2675

if.end.13:                                        ; preds = %if.end.10
  %18 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2676, !tbaa !787
  %19 = bitcast %struct._object* %18 to %struct.PyASCIIObject*, !dbg !2677
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %19, i32 0, i32 1, !dbg !2678
  %20 = load i64, i64* %length, align 8, !dbg !2678, !tbaa !1236
  store i64 %20, i64* %size, align 8, !dbg !2679, !tbaa !1606
  %21 = load i64, i64* %size, align 8, !dbg !2680, !tbaa !1606
  %cmp14 = icmp sgt i64 %21, 0, !dbg !2682
  br i1 %cmp14, label %land.lhs.true, label %if.end.20, !dbg !2683

land.lhs.true:                                    ; preds = %if.end.13
  %22 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2684, !tbaa !787
  %23 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2686, !tbaa !787
  %call16 = call i64 @write_str(%struct.stringio* %22, %struct._object* %23), !dbg !2687
  %cmp17 = icmp slt i64 %call16, 0, !dbg !2688
  br i1 %cmp17, label %if.then.19, label %if.end.20, !dbg !2689

if.then.19:                                       ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !2690
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2690

if.end.20:                                        ; preds = %land.lhs.true, %if.end.13
  %24 = load i64, i64* %size, align 8, !dbg !2691, !tbaa !1606
  %call21 = call %struct._object* @PyLong_FromSsize_t(i64 %24), !dbg !2692
  store %struct._object* %call21, %struct._object** %retval, !dbg !2693
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2693

cleanup:                                          ; preds = %if.end.20, %if.then.19, %if.then.12, %if.then.9, %if.then.4, %if.then
  %25 = bitcast i64* %size to i8*, !dbg !2694
  call void @llvm.lifetime.end(i64 8, i8* %25) #2, !dbg !2694
  %26 = load %struct._object*, %struct._object** %retval, !dbg !2694
  ret %struct._object* %26, !dbg !2694
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_seekable(%struct.stringio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.stringio*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct.stringio** %self.addr, metadata !628, metadata !791), !dbg !2695
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !629, metadata !791), !dbg !2696
  %0 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2697, !tbaa !787
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %0, i32 0, i32 7, !dbg !2699
  %1 = load i8, i8* %ok, align 1, !dbg !2699, !tbaa !848
  %conv = sext i8 %1 to i32, !dbg !2697
  %cmp = icmp sle i32 %conv, 0, !dbg !2700
  br i1 %cmp, label %if.then, label %if.end, !dbg !2701

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2702, !tbaa !787
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0)), !dbg !2705
  store %struct._object* null, %struct._object** %retval, !dbg !2706
  br label %return, !dbg !2706

if.end:                                           ; preds = %entry
  %3 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2707, !tbaa !787
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %3, i32 0, i32 8, !dbg !2709
  %4 = load i8, i8* %closed, align 1, !dbg !2709, !tbaa !1156
  %tobool = icmp ne i8 %4, 0, !dbg !2707
  br i1 %tobool, label %if.then.2, label %if.end.3, !dbg !2710

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2711, !tbaa !787
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0)), !dbg !2714
  store %struct._object* null, %struct._object** %retval, !dbg !2715
  br label %return, !dbg !2715

if.end.3:                                         ; preds = %if.end
  %6 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !2716, !tbaa !892
  %inc = add i64 %6, 1, !dbg !2716
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !2716, !tbaa !892
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !2717
  br label %return, !dbg !2717

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %7 = load %struct._object*, %struct._object** %retval, !dbg !2718
  ret %struct._object* %7, !dbg !2718
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_readable(%struct.stringio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.stringio*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct.stringio** %self.addr, metadata !632, metadata !791), !dbg !2719
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !633, metadata !791), !dbg !2720
  %0 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2721, !tbaa !787
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %0, i32 0, i32 7, !dbg !2723
  %1 = load i8, i8* %ok, align 1, !dbg !2723, !tbaa !848
  %conv = sext i8 %1 to i32, !dbg !2721
  %cmp = icmp sle i32 %conv, 0, !dbg !2724
  br i1 %cmp, label %if.then, label %if.end, !dbg !2725

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2726, !tbaa !787
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0)), !dbg !2729
  store %struct._object* null, %struct._object** %retval, !dbg !2730
  br label %return, !dbg !2730

if.end:                                           ; preds = %entry
  %3 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2731, !tbaa !787
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %3, i32 0, i32 8, !dbg !2733
  %4 = load i8, i8* %closed, align 1, !dbg !2733, !tbaa !1156
  %tobool = icmp ne i8 %4, 0, !dbg !2731
  br i1 %tobool, label %if.then.2, label %if.end.3, !dbg !2734

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2735, !tbaa !787
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0)), !dbg !2738
  store %struct._object* null, %struct._object** %retval, !dbg !2739
  br label %return, !dbg !2739

if.end.3:                                         ; preds = %if.end
  %6 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !2740, !tbaa !892
  %inc = add i64 %6, 1, !dbg !2740
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !2740, !tbaa !892
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !2741
  br label %return, !dbg !2741

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %7 = load %struct._object*, %struct._object** %retval, !dbg !2742
  ret %struct._object* %7, !dbg !2742
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_writable(%struct.stringio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.stringio*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct.stringio** %self.addr, metadata !636, metadata !791), !dbg !2743
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !637, metadata !791), !dbg !2744
  %0 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2745, !tbaa !787
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %0, i32 0, i32 7, !dbg !2747
  %1 = load i8, i8* %ok, align 1, !dbg !2747, !tbaa !848
  %conv = sext i8 %1 to i32, !dbg !2745
  %cmp = icmp sle i32 %conv, 0, !dbg !2748
  br i1 %cmp, label %if.then, label %if.end, !dbg !2749

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2750, !tbaa !787
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0)), !dbg !2753
  store %struct._object* null, %struct._object** %retval, !dbg !2754
  br label %return, !dbg !2754

if.end:                                           ; preds = %entry
  %3 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2755, !tbaa !787
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %3, i32 0, i32 8, !dbg !2757
  %4 = load i8, i8* %closed, align 1, !dbg !2757, !tbaa !1156
  %tobool = icmp ne i8 %4, 0, !dbg !2755
  br i1 %tobool, label %if.then.2, label %if.end.3, !dbg !2758

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2759, !tbaa !787
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0)), !dbg !2762
  store %struct._object* null, %struct._object** %retval, !dbg !2763
  br label %return, !dbg !2763

if.end.3:                                         ; preds = %if.end
  %6 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !2764, !tbaa !892
  %inc = add i64 %6, 1, !dbg !2764
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !2764, !tbaa !892
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !2765
  br label %return, !dbg !2765

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %7 = load %struct._object*, %struct._object** %retval, !dbg !2766
  ret %struct._object* %7, !dbg !2766
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_getstate(%struct.stringio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.stringio*, align 8
  %initvalue = alloca %struct._object*, align 8
  %dict = alloca %struct._object*, align 8
  %state = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct.stringio** %self.addr, metadata !640, metadata !791), !dbg !2767
  %0 = bitcast %struct._object** %initvalue to i8*, !dbg !2768
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2768
  call void @llvm.dbg.declare(metadata %struct._object** %initvalue, metadata !641, metadata !791), !dbg !2769
  %1 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2770, !tbaa !787
  %call = call %struct._object* @stringio_getvalue(%struct.stringio* %1), !dbg !2771
  store %struct._object* %call, %struct._object** %initvalue, align 8, !dbg !2769, !tbaa !787
  %2 = bitcast %struct._object** %dict to i8*, !dbg !2772
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2772
  call void @llvm.dbg.declare(metadata %struct._object** %dict, metadata !642, metadata !791), !dbg !2773
  %3 = bitcast %struct._object** %state to i8*, !dbg !2774
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2774
  call void @llvm.dbg.declare(metadata %struct._object** %state, metadata !643, metadata !791), !dbg !2775
  %4 = load %struct._object*, %struct._object** %initvalue, align 8, !dbg !2776, !tbaa !787
  %cmp = icmp eq %struct._object* %4, null, !dbg !2778
  br i1 %cmp, label %if.then, label %if.end, !dbg !2779

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2780
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2780

if.end:                                           ; preds = %entry
  %5 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2781, !tbaa !787
  %dict1 = getelementptr inbounds %struct.stringio, %struct.stringio* %5, i32 0, i32 14, !dbg !2783
  %6 = load %struct._object*, %struct._object** %dict1, align 8, !dbg !2783, !tbaa !1008
  %cmp2 = icmp eq %struct._object* %6, null, !dbg !2784
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !2785

if.then.3:                                        ; preds = %if.end
  %7 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2786, !tbaa !892
  %inc = add i64 %7, 1, !dbg !2786
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2786, !tbaa !892
  store %struct._object* @_Py_NoneStruct, %struct._object** %dict, align 8, !dbg !2788, !tbaa !787
  br label %if.end.9, !dbg !2789

if.else:                                          ; preds = %if.end
  %8 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2790, !tbaa !787
  %dict4 = getelementptr inbounds %struct.stringio, %struct.stringio* %8, i32 0, i32 14, !dbg !2792
  %9 = load %struct._object*, %struct._object** %dict4, align 8, !dbg !2792, !tbaa !1008
  %call5 = call %struct._object* @PyDict_Copy(%struct._object* %9), !dbg !2793
  store %struct._object* %call5, %struct._object** %dict, align 8, !dbg !2794, !tbaa !787
  %10 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2795, !tbaa !787
  %cmp6 = icmp eq %struct._object* %10, null, !dbg !2797
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !2798

if.then.7:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %retval, !dbg !2799
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2799

if.end.8:                                         ; preds = %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then.3
  %11 = load %struct._object*, %struct._object** %initvalue, align 8, !dbg !2800, !tbaa !787
  %12 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2801, !tbaa !787
  %readnl = getelementptr inbounds %struct.stringio, %struct.stringio* %12, i32 0, i32 12, !dbg !2802
  %13 = load %struct._object*, %struct._object** %readnl, align 8, !dbg !2802, !tbaa !875
  %tobool = icmp ne %struct._object* %13, null, !dbg !2801
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2801

cond.true:                                        ; preds = %if.end.9
  %14 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2803, !tbaa !787
  %readnl10 = getelementptr inbounds %struct.stringio, %struct.stringio* %14, i32 0, i32 12, !dbg !2805
  %15 = load %struct._object*, %struct._object** %readnl10, align 8, !dbg !2805, !tbaa !875
  br label %cond.end, !dbg !2801

cond.false:                                       ; preds = %if.end.9
  br label %cond.end, !dbg !2806

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %15, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !2801
  %16 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2808, !tbaa !787
  %pos = getelementptr inbounds %struct.stringio, %struct.stringio* %16, i32 0, i32 2, !dbg !2809
  %17 = load i64, i64* %pos, align 8, !dbg !2809, !tbaa !1627
  %18 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2810, !tbaa !787
  %call11 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), %struct._object* %11, %struct._object* %cond, i64 %17, %struct._object* %18), !dbg !2811
  store %struct._object* %call11, %struct._object** %state, align 8, !dbg !2812, !tbaa !787
  br label %do.body, !dbg !2813

do.body:                                          ; preds = %cond.end
  %19 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2814
  call void @llvm.lifetime.start(i64 8, i8* %19) #2, !dbg !2814
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !644, metadata !791), !dbg !2816
  %20 = load %struct._object*, %struct._object** %initvalue, align 8, !dbg !2817, !tbaa !787
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8, !dbg !2816, !tbaa !787
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2818, !tbaa !787
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !2820
  %22 = load i64, i64* %ob_refcnt, align 8, !dbg !2821, !tbaa !892
  %dec = add i64 %22, -1, !dbg !2821
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2821, !tbaa !892
  %cmp12 = icmp ne i64 %dec, 0, !dbg !2822
  br i1 %cmp12, label %if.then.13, label %if.else.14, !dbg !2823

if.then.13:                                       ; preds = %do.body
  br label %if.end.15, !dbg !2824

if.else.14:                                       ; preds = %do.body
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2826, !tbaa !787
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1, !dbg !2828
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2828, !tbaa !900
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4, !dbg !2829
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2829, !tbaa !902
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2830, !tbaa !787
  call void %25(%struct._object* %26), !dbg !2831
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.14, %if.then.13
  %27 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2832
  call void @llvm.lifetime.end(i64 8, i8* %27) #2, !dbg !2832
  br label %do.cond, !dbg !2834

do.cond:                                          ; preds = %if.end.15
  br label %do.end, !dbg !2835

do.end:                                           ; preds = %do.cond
  %28 = load %struct._object*, %struct._object** %state, align 8, !dbg !2837, !tbaa !787
  store %struct._object* %28, %struct._object** %retval, !dbg !2838
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2838

cleanup:                                          ; preds = %do.end, %if.then.7, %if.then
  %29 = bitcast %struct._object** %state to i8*, !dbg !2839
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !2839
  %30 = bitcast %struct._object** %dict to i8*, !dbg !2839
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !2839
  %31 = bitcast %struct._object** %initvalue to i8*, !dbg !2839
  call void @llvm.lifetime.end(i64 8, i8* %31) #2, !dbg !2839
  %32 = load %struct._object*, %struct._object** %retval, !dbg !2839
  ret %struct._object* %32, !dbg !2839
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %buf = alloca i32*, align 8
  %bufsize = alloca i64, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct.stringio** %self.addr, metadata !648, metadata !791), !dbg !2840
  store %struct._object* %state, %struct._object** %state.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct._object** %state.addr, metadata !649, metadata !791), !dbg !2841
  %0 = bitcast %struct._object** %initarg to i8*, !dbg !2842
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2842
  call void @llvm.dbg.declare(metadata %struct._object** %initarg, metadata !650, metadata !791), !dbg !2843
  %1 = bitcast %struct._object** %position_obj to i8*, !dbg !2844
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2844
  call void @llvm.dbg.declare(metadata %struct._object** %position_obj, metadata !651, metadata !791), !dbg !2845
  %2 = bitcast %struct._object** %dict to i8*, !dbg !2846
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2846
  call void @llvm.dbg.declare(metadata %struct._object** %dict, metadata !652, metadata !791), !dbg !2847
  %3 = bitcast i64* %pos to i8*, !dbg !2848
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2848
  call void @llvm.dbg.declare(metadata i64* %pos, metadata !653, metadata !791), !dbg !2849
  %4 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2850, !tbaa !787
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %4, i32 0, i32 8, !dbg !2852
  %5 = load i8, i8* %closed, align 1, !dbg !2852, !tbaa !1156
  %tobool = icmp ne i8 %5, 0, !dbg !2850
  br i1 %tobool, label %if.then, label %if.end, !dbg !2853

if.then:                                          ; preds = %entry
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2854, !tbaa !787
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0)), !dbg !2857
  store %struct._object* null, %struct._object** %retval, !dbg !2858
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90, !dbg !2858

if.end:                                           ; preds = %entry
  %7 = load %struct._object*, %struct._object** %state.addr, align 8, !dbg !2859, !tbaa !787
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !2861
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2861, !tbaa !900
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 19, !dbg !2862
  %9 = load i64, i64* %tp_flags, align 8, !dbg !2862, !tbaa !1193
  %and = and i64 %9, 67108864, !dbg !2863
  %cmp = icmp ne i64 %and, 0, !dbg !2864
  br i1 %cmp, label %lor.lhs.false, label %if.then.2, !dbg !2865

lor.lhs.false:                                    ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %state.addr, align 8, !dbg !2866, !tbaa !787
  %11 = bitcast %struct._object* %10 to %struct.PyVarObject*, !dbg !2868
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %11, i32 0, i32 1, !dbg !2869
  %12 = load i64, i64* %ob_size, align 8, !dbg !2869, !tbaa !2870
  %cmp1 = icmp slt i64 %12, 4, !dbg !2871
  br i1 %cmp1, label %if.then.2, label %if.end.6, !dbg !2872

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  %13 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2873, !tbaa !787
  %14 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2875, !tbaa !787
  %15 = bitcast %struct.stringio* %14 to %struct._object*, !dbg !2876
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !2877
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8, !dbg !2877, !tbaa !900
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 1, !dbg !2878
  %17 = load i8*, i8** %tp_name, align 8, !dbg !2878, !tbaa !1201
  %18 = load %struct._object*, %struct._object** %state.addr, align 8, !dbg !2879, !tbaa !787
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1, !dbg !2880
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8, !dbg !2880, !tbaa !900
  %tp_name5 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 1, !dbg !2881
  %20 = load i8*, i8** %tp_name5, align 8, !dbg !2881, !tbaa !1201
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %13, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.30, i32 0, i32 0), i8* %17, i8* %20), !dbg !2882
  store %struct._object* null, %struct._object** %retval, !dbg !2883
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90, !dbg !2883

if.end.6:                                         ; preds = %lor.lhs.false
  %21 = load %struct._object*, %struct._object** %state.addr, align 8, !dbg !2884, !tbaa !787
  %call7 = call %struct._object* @PyTuple_GetSlice(%struct._object* %21, i64 0, i64 2), !dbg !2885
  store %struct._object* %call7, %struct._object** %initarg, align 8, !dbg !2886, !tbaa !787
  %22 = load %struct._object*, %struct._object** %initarg, align 8, !dbg !2887, !tbaa !787
  %cmp8 = icmp eq %struct._object* %22, null, !dbg !2889
  br i1 %cmp8, label %if.then.9, label %if.end.10, !dbg !2890

if.then.9:                                        ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval, !dbg !2891
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90, !dbg !2891

if.end.10:                                        ; preds = %if.end.6
  %23 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2892, !tbaa !787
  %24 = load %struct._object*, %struct._object** %initarg, align 8, !dbg !2893, !tbaa !787
  %call11 = call i32 @stringio_init(%struct.stringio* %23, %struct._object* %24, %struct._object* null), !dbg !2894
  %cmp12 = icmp slt i32 %call11, 0, !dbg !2895
  br i1 %cmp12, label %if.then.13, label %if.end.18, !dbg !2896

if.then.13:                                       ; preds = %if.end.10
  br label %do.body, !dbg !2897

do.body:                                          ; preds = %if.then.13
  %25 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2898
  call void @llvm.lifetime.start(i64 8, i8* %25) #2, !dbg !2898
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !654, metadata !791), !dbg !2900
  %26 = load %struct._object*, %struct._object** %initarg, align 8, !dbg !2901, !tbaa !787
  store %struct._object* %26, %struct._object** %_py_decref_tmp, align 8, !dbg !2900, !tbaa !787
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2902, !tbaa !787
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0, !dbg !2904
  %28 = load i64, i64* %ob_refcnt, align 8, !dbg !2905, !tbaa !892
  %dec = add i64 %28, -1, !dbg !2905
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2905, !tbaa !892
  %cmp14 = icmp ne i64 %dec, 0, !dbg !2906
  br i1 %cmp14, label %if.then.15, label %if.else, !dbg !2907

if.then.15:                                       ; preds = %do.body
  br label %if.end.17, !dbg !2908

if.else:                                          ; preds = %do.body
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2910, !tbaa !787
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1, !dbg !2912
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8, !dbg !2912, !tbaa !900
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4, !dbg !2913
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2913, !tbaa !902
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2914, !tbaa !787
  call void %31(%struct._object* %32), !dbg !2915
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.15
  %33 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2916
  call void @llvm.lifetime.end(i64 8, i8* %33) #2, !dbg !2916
  br label %do.cond, !dbg !2918

do.cond:                                          ; preds = %if.end.17
  br label %do.end, !dbg !2919

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !2921
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90, !dbg !2921

if.end.18:                                        ; preds = %if.end.10
  br label %do.body.19, !dbg !2922

do.body.19:                                       ; preds = %if.end.18
  %34 = bitcast %struct._object** %_py_decref_tmp20 to i8*, !dbg !2923
  call void @llvm.lifetime.start(i64 8, i8* %34) #2, !dbg !2923
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp20, metadata !658, metadata !791), !dbg !2925
  %35 = load %struct._object*, %struct._object** %initarg, align 8, !dbg !2926, !tbaa !787
  store %struct._object* %35, %struct._object** %_py_decref_tmp20, align 8, !dbg !2925, !tbaa !787
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8, !dbg !2927, !tbaa !787
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0, !dbg !2929
  %37 = load i64, i64* %ob_refcnt21, align 8, !dbg !2930, !tbaa !892
  %dec22 = add i64 %37, -1, !dbg !2930
  store i64 %dec22, i64* %ob_refcnt21, align 8, !dbg !2930, !tbaa !892
  %cmp23 = icmp ne i64 %dec22, 0, !dbg !2931
  br i1 %cmp23, label %if.then.24, label %if.else.25, !dbg !2932

if.then.24:                                       ; preds = %do.body.19
  br label %if.end.28, !dbg !2933

if.else.25:                                       ; preds = %do.body.19
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8, !dbg !2935, !tbaa !787
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1, !dbg !2937
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8, !dbg !2937, !tbaa !900
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4, !dbg !2938
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8, !dbg !2938, !tbaa !902
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8, !dbg !2939, !tbaa !787
  call void %40(%struct._object* %41), !dbg !2940
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  %42 = bitcast %struct._object** %_py_decref_tmp20 to i8*, !dbg !2941
  call void @llvm.lifetime.end(i64 8, i8* %42) #2, !dbg !2941
  br label %do.cond.29, !dbg !2943

do.cond.29:                                       ; preds = %if.end.28
  br label %do.end.30, !dbg !2944

do.end.30:                                        ; preds = %do.cond.29
  %43 = bitcast %struct._object** %item to i8*, !dbg !2946
  call void @llvm.lifetime.start(i64 8, i8* %43) #2, !dbg !2946
  call void @llvm.dbg.declare(metadata %struct._object** %item, metadata !660, metadata !791), !dbg !2947
  %44 = bitcast i32** %buf to i8*, !dbg !2948
  call void @llvm.lifetime.start(i64 8, i8* %44) #2, !dbg !2948
  call void @llvm.dbg.declare(metadata i32** %buf, metadata !662, metadata !791), !dbg !2949
  %45 = bitcast i64* %bufsize to i8*, !dbg !2950
  call void @llvm.lifetime.start(i64 8, i8* %45) #2, !dbg !2950
  call void @llvm.dbg.declare(metadata i64* %bufsize, metadata !663, metadata !791), !dbg !2951
  %46 = load %struct._object*, %struct._object** %state.addr, align 8, !dbg !2952, !tbaa !787
  %47 = bitcast %struct._object* %46 to %struct.PyTupleObject*, !dbg !2953
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %47, i32 0, i32 1, !dbg !2954
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0, !dbg !2955
  %48 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2955, !tbaa !787
  store %struct._object* %48, %struct._object** %item, align 8, !dbg !2956, !tbaa !787
  %49 = load %struct._object*, %struct._object** %item, align 8, !dbg !2957, !tbaa !787
  %call31 = call i32* @PyUnicode_AsUCS4Copy(%struct._object* %49), !dbg !2958
  store i32* %call31, i32** %buf, align 8, !dbg !2959, !tbaa !787
  %50 = load i32*, i32** %buf, align 8, !dbg !2960, !tbaa !787
  %cmp32 = icmp eq i32* %50, null, !dbg !2962
  br i1 %cmp32, label %if.then.33, label %if.end.34, !dbg !2963

if.then.33:                                       ; preds = %do.end.30
  store %struct._object* null, %struct._object** %retval, !dbg !2964
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2964

if.end.34:                                        ; preds = %do.end.30
  %51 = load %struct._object*, %struct._object** %item, align 8, !dbg !2965, !tbaa !787
  %52 = bitcast %struct._object* %51 to %struct.PyASCIIObject*, !dbg !2966
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %52, i32 0, i32 1, !dbg !2967
  %53 = load i64, i64* %length, align 8, !dbg !2967, !tbaa !1236
  store i64 %53, i64* %bufsize, align 8, !dbg !2968, !tbaa !1606
  %54 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2969, !tbaa !787
  %55 = load i64, i64* %bufsize, align 8, !dbg !2971, !tbaa !1606
  %call35 = call i32 @resize_buffer(%struct.stringio* %54, i64 %55), !dbg !2972
  %cmp36 = icmp slt i32 %call35, 0, !dbg !2973
  br i1 %cmp36, label %if.then.37, label %if.end.38, !dbg !2974

if.then.37:                                       ; preds = %if.end.34
  %56 = load i32*, i32** %buf, align 8, !dbg !2975, !tbaa !787
  %57 = bitcast i32* %56 to i8*, !dbg !2975
  call void @PyMem_Free(i8* %57), !dbg !2977
  store %struct._object* null, %struct._object** %retval, !dbg !2978
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2978

if.end.38:                                        ; preds = %if.end.34
  %58 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2979, !tbaa !787
  %buf39 = getelementptr inbounds %struct.stringio, %struct.stringio* %58, i32 0, i32 1, !dbg !2980
  %59 = load i32*, i32** %buf39, align 8, !dbg !2980, !tbaa !856
  %60 = bitcast i32* %59 to i8*, !dbg !2981
  %61 = load i32*, i32** %buf, align 8, !dbg !2982, !tbaa !787
  %62 = bitcast i32* %61 to i8*, !dbg !2981
  %63 = load i64, i64* %bufsize, align 8, !dbg !2983, !tbaa !1606
  %mul = mul i64 %63, 4, !dbg !2984
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %62, i64 %mul, i32 4, i1 false), !dbg !2981
  %64 = load i32*, i32** %buf, align 8, !dbg !2985, !tbaa !787
  %65 = bitcast i32* %64 to i8*, !dbg !2985
  call void @PyMem_Free(i8* %65), !dbg !2986
  %66 = load i64, i64* %bufsize, align 8, !dbg !2987, !tbaa !1606
  %67 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !2988, !tbaa !787
  %string_size = getelementptr inbounds %struct.stringio, %struct.stringio* %67, i32 0, i32 3, !dbg !2989
  store i64 %66, i64* %string_size, align 8, !dbg !2990, !tbaa !1595
  store i32 0, i32* %cleanup.dest.slot, !dbg !2991
  br label %cleanup, !dbg !2991

cleanup:                                          ; preds = %if.end.38, %if.then.37, %if.then.33
  %68 = bitcast i64* %bufsize to i8*, !dbg !2992
  call void @llvm.lifetime.end(i64 8, i8* %68) #2, !dbg !2992
  %69 = bitcast i32** %buf to i8*, !dbg !2992
  call void @llvm.lifetime.end(i64 8, i8* %69) #2, !dbg !2992
  %70 = bitcast %struct._object** %item to i8*, !dbg !2992
  call void @llvm.lifetime.end(i64 8, i8* %70) #2, !dbg !2992
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.90 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %71 = load %struct._object*, %struct._object** %state.addr, align 8, !dbg !2994, !tbaa !787
  %72 = bitcast %struct._object* %71 to %struct.PyTupleObject*, !dbg !2995
  %ob_item42 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %72, i32 0, i32 1, !dbg !2996
  %arrayidx43 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item42, i32 0, i64 2, !dbg !2997
  %73 = load %struct._object*, %struct._object** %arrayidx43, align 8, !dbg !2997, !tbaa !787
  store %struct._object* %73, %struct._object** %position_obj, align 8, !dbg !2998, !tbaa !787
  %74 = load %struct._object*, %struct._object** %position_obj, align 8, !dbg !2999, !tbaa !787
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 1, !dbg !3001
  %75 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8, !dbg !3001, !tbaa !900
  %tp_flags45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %75, i32 0, i32 19, !dbg !3002
  %76 = load i64, i64* %tp_flags45, align 8, !dbg !3002, !tbaa !1193
  %and46 = and i64 %76, 16777216, !dbg !3003
  %cmp47 = icmp ne i64 %and46, 0, !dbg !3004
  br i1 %cmp47, label %if.end.52, label %if.then.48, !dbg !3005

if.then.48:                                       ; preds = %cleanup.cont
  %77 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !3006, !tbaa !787
  %78 = load %struct._object*, %struct._object** %position_obj, align 8, !dbg !3008, !tbaa !787
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1, !dbg !3009
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8, !dbg !3009, !tbaa !900
  %tp_name50 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %79, i32 0, i32 1, !dbg !3010
  %80 = load i8*, i8** %tp_name50, align 8, !dbg !3010, !tbaa !1201
  %call51 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %77, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.31, i32 0, i32 0), i8* %80), !dbg !3011
  store %struct._object* null, %struct._object** %retval, !dbg !3012
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90, !dbg !3012

if.end.52:                                        ; preds = %cleanup.cont
  %81 = load %struct._object*, %struct._object** %position_obj, align 8, !dbg !3013, !tbaa !787
  %call53 = call i64 @PyLong_AsSsize_t(%struct._object* %81), !dbg !3014
  store i64 %call53, i64* %pos, align 8, !dbg !3015, !tbaa !1606
  %82 = load i64, i64* %pos, align 8, !dbg !3016, !tbaa !1606
  %cmp54 = icmp eq i64 %82, -1, !dbg !3018
  br i1 %cmp54, label %land.lhs.true, label %if.end.58, !dbg !3019

land.lhs.true:                                    ; preds = %if.end.52
  %call55 = call %struct._object* @PyErr_Occurred(), !dbg !3020
  %tobool56 = icmp ne %struct._object* %call55, null, !dbg !3020
  br i1 %tobool56, label %if.then.57, label %if.end.58, !dbg !3022

if.then.57:                                       ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !3023
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90, !dbg !3023

if.end.58:                                        ; preds = %land.lhs.true, %if.end.52
  %83 = load i64, i64* %pos, align 8, !dbg !3024, !tbaa !1606
  %cmp59 = icmp slt i64 %83, 0, !dbg !3026
  br i1 %cmp59, label %if.then.60, label %if.end.61, !dbg !3027

if.then.60:                                       ; preds = %if.end.58
  %84 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3028, !tbaa !787
  call void @PyErr_SetString(%struct._object* %84, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i32 0, i32 0)), !dbg !3030
  store %struct._object* null, %struct._object** %retval, !dbg !3031
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90, !dbg !3031

if.end.61:                                        ; preds = %if.end.58
  %85 = load i64, i64* %pos, align 8, !dbg !3032, !tbaa !1606
  %86 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3033, !tbaa !787
  %pos62 = getelementptr inbounds %struct.stringio, %struct.stringio* %86, i32 0, i32 2, !dbg !3034
  store i64 %85, i64* %pos62, align 8, !dbg !3035, !tbaa !1627
  %87 = load %struct._object*, %struct._object** %state.addr, align 8, !dbg !3036, !tbaa !787
  %88 = bitcast %struct._object* %87 to %struct.PyTupleObject*, !dbg !3037
  %ob_item63 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %88, i32 0, i32 1, !dbg !3038
  %arrayidx64 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item63, i32 0, i64 3, !dbg !3039
  %89 = load %struct._object*, %struct._object** %arrayidx64, align 8, !dbg !3039, !tbaa !787
  store %struct._object* %89, %struct._object** %dict, align 8, !dbg !3040, !tbaa !787
  %90 = load %struct._object*, %struct._object** %dict, align 8, !dbg !3041, !tbaa !787
  %cmp65 = icmp ne %struct._object* %90, @_Py_NoneStruct, !dbg !3043
  br i1 %cmp65, label %if.then.66, label %if.end.88, !dbg !3044

if.then.66:                                       ; preds = %if.end.61
  %91 = load %struct._object*, %struct._object** %dict, align 8, !dbg !3045, !tbaa !787
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 1, !dbg !3048
  %92 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8, !dbg !3048, !tbaa !900
  %tp_flags68 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %92, i32 0, i32 19, !dbg !3049
  %93 = load i64, i64* %tp_flags68, align 8, !dbg !3049, !tbaa !1193
  %and69 = and i64 %93, 536870912, !dbg !3050
  %cmp70 = icmp ne i64 %and69, 0, !dbg !3051
  br i1 %cmp70, label %if.end.75, label %if.then.71, !dbg !3052

if.then.71:                                       ; preds = %if.then.66
  %94 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !3053, !tbaa !787
  %95 = load %struct._object*, %struct._object** %dict, align 8, !dbg !3055, !tbaa !787
  %ob_type72 = getelementptr inbounds %struct._object, %struct._object* %95, i32 0, i32 1, !dbg !3056
  %96 = load %struct._typeobject*, %struct._typeobject** %ob_type72, align 8, !dbg !3056, !tbaa !900
  %tp_name73 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %96, i32 0, i32 1, !dbg !3057
  %97 = load i8*, i8** %tp_name73, align 8, !dbg !3057, !tbaa !1201
  %call74 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %94, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.33, i32 0, i32 0), i8* %97), !dbg !3058
  store %struct._object* null, %struct._object** %retval, !dbg !3059
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90, !dbg !3059

if.end.75:                                        ; preds = %if.then.66
  %98 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3060, !tbaa !787
  %dict76 = getelementptr inbounds %struct.stringio, %struct.stringio* %98, i32 0, i32 14, !dbg !3062
  %99 = load %struct._object*, %struct._object** %dict76, align 8, !dbg !3062, !tbaa !1008
  %tobool77 = icmp ne %struct._object* %99, null, !dbg !3060
  br i1 %tobool77, label %if.then.78, label %if.else.84, !dbg !3063

if.then.78:                                       ; preds = %if.end.75
  %100 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3064, !tbaa !787
  %dict79 = getelementptr inbounds %struct.stringio, %struct.stringio* %100, i32 0, i32 14, !dbg !3067
  %101 = load %struct._object*, %struct._object** %dict79, align 8, !dbg !3067, !tbaa !1008
  %102 = load %struct._object*, %struct._object** %dict, align 8, !dbg !3068, !tbaa !787
  %call80 = call i32 @PyDict_Update(%struct._object* %101, %struct._object* %102), !dbg !3069
  %cmp81 = icmp slt i32 %call80, 0, !dbg !3070
  br i1 %cmp81, label %if.then.82, label %if.end.83, !dbg !3071

if.then.82:                                       ; preds = %if.then.78
  store %struct._object* null, %struct._object** %retval, !dbg !3072
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90, !dbg !3072

if.end.83:                                        ; preds = %if.then.78
  br label %if.end.87, !dbg !3073

if.else.84:                                       ; preds = %if.end.75
  %103 = load %struct._object*, %struct._object** %dict, align 8, !dbg !3074, !tbaa !787
  %ob_refcnt85 = getelementptr inbounds %struct._object, %struct._object* %103, i32 0, i32 0, !dbg !3076
  %104 = load i64, i64* %ob_refcnt85, align 8, !dbg !3077, !tbaa !892
  %inc = add i64 %104, 1, !dbg !3077
  store i64 %inc, i64* %ob_refcnt85, align 8, !dbg !3077, !tbaa !892
  %105 = load %struct._object*, %struct._object** %dict, align 8, !dbg !3078, !tbaa !787
  %106 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3079, !tbaa !787
  %dict86 = getelementptr inbounds %struct.stringio, %struct.stringio* %106, i32 0, i32 14, !dbg !3080
  store %struct._object* %105, %struct._object** %dict86, align 8, !dbg !3081, !tbaa !1008
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.84, %if.end.83
  br label %if.end.88, !dbg !3082

if.end.88:                                        ; preds = %if.end.87, %if.end.61
  %107 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3083, !tbaa !892
  %inc89 = add i64 %107, 1, !dbg !3083
  store i64 %inc89, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3083, !tbaa !892
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !3084
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90, !dbg !3084

cleanup.90:                                       ; preds = %if.end.88, %if.then.82, %if.then.71, %if.then.60, %if.then.57, %if.then.48, %cleanup, %do.end, %if.then.9, %if.then.2, %if.then
  %108 = bitcast i64* %pos to i8*, !dbg !3085
  call void @llvm.lifetime.end(i64 8, i8* %108) #2, !dbg !3085
  %109 = bitcast %struct._object** %dict to i8*, !dbg !3085
  call void @llvm.lifetime.end(i64 8, i8* %109) #2, !dbg !3085
  %110 = bitcast %struct._object** %position_obj to i8*, !dbg !3085
  call void @llvm.lifetime.end(i64 8, i8* %110) #2, !dbg !3085
  %111 = bitcast %struct._object** %initarg to i8*, !dbg !3085
  call void @llvm.lifetime.end(i64 8, i8* %111) #2, !dbg !3085
  %112 = load %struct._object*, %struct._object** %retval, !dbg !3085
  ret %struct._object* %112, !dbg !3085
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @make_intermediate(%struct.stringio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.stringio*, align 8
  %intermediate = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct.stringio** %self.addr, metadata !557, metadata !791), !dbg !3086
  %0 = bitcast %struct._object** %intermediate to i8*, !dbg !3087
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3087
  call void @llvm.dbg.declare(metadata %struct._object** %intermediate, metadata !558, metadata !791), !dbg !3088
  %1 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3089, !tbaa !787
  %accu = getelementptr inbounds %struct.stringio, %struct.stringio* %1, i32 0, i32 6, !dbg !3090
  %call = call %struct._object* @_PyAccu_Finish(%struct._PyAccu* %accu), !dbg !3091
  store %struct._object* %call, %struct._object** %intermediate, align 8, !dbg !3088, !tbaa !787
  %2 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3092, !tbaa !787
  %state = getelementptr inbounds %struct.stringio, %struct.stringio* %2, i32 0, i32 5, !dbg !3093
  store i32 1, i32* %state, align 4, !dbg !3094, !tbaa !1623
  %3 = load %struct._object*, %struct._object** %intermediate, align 8, !dbg !3095, !tbaa !787
  %cmp = icmp eq %struct._object* %3, null, !dbg !3097
  br i1 %cmp, label %if.then, label %if.end, !dbg !3098

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3099
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3099

if.end:                                           ; preds = %entry
  %4 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3100, !tbaa !787
  %accu1 = getelementptr inbounds %struct.stringio, %struct.stringio* %4, i32 0, i32 6, !dbg !3101
  %call2 = call i32 @_PyAccu_Init(%struct._PyAccu* %accu1), !dbg !3102
  %tobool = icmp ne i32 %call2, 0, !dbg !3102
  br i1 %tobool, label %if.then.6, label %lor.lhs.false, !dbg !3103

lor.lhs.false:                                    ; preds = %if.end
  %5 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3104, !tbaa !787
  %accu3 = getelementptr inbounds %struct.stringio, %struct.stringio* %5, i32 0, i32 6, !dbg !3105
  %6 = load %struct._object*, %struct._object** %intermediate, align 8, !dbg !3106, !tbaa !787
  %call4 = call i32 @_PyAccu_Accumulate(%struct._PyAccu* %accu3, %struct._object* %6), !dbg !3107
  %tobool5 = icmp ne i32 %call4, 0, !dbg !3107
  br i1 %tobool5, label %if.then.6, label %if.end.10, !dbg !3108

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  br label %do.body, !dbg !3109

do.body:                                          ; preds = %if.then.6
  %7 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3110
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !3110
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !559, metadata !791), !dbg !3112
  %8 = load %struct._object*, %struct._object** %intermediate, align 8, !dbg !3113, !tbaa !787
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8, !dbg !3112, !tbaa !787
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3114, !tbaa !787
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !3116
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !3117, !tbaa !892
  %dec = add i64 %10, -1, !dbg !3117
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3117, !tbaa !892
  %cmp7 = icmp ne i64 %dec, 0, !dbg !3118
  br i1 %cmp7, label %if.then.8, label %if.else, !dbg !3119

if.then.8:                                        ; preds = %do.body
  br label %if.end.9, !dbg !3120

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3122, !tbaa !787
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !3124
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3124, !tbaa !900
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4, !dbg !3125
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3125, !tbaa !902
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3126, !tbaa !787
  call void %13(%struct._object* %14), !dbg !3127
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3128
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !3128
  br label %do.cond, !dbg !3130

do.cond:                                          ; preds = %if.end.9
  br label %do.end, !dbg !3131

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !3133
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3133

if.end.10:                                        ; preds = %lor.lhs.false
  %16 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3134, !tbaa !787
  %state11 = getelementptr inbounds %struct.stringio, %struct.stringio* %16, i32 0, i32 5, !dbg !3135
  store i32 2, i32* %state11, align 4, !dbg !3136, !tbaa !1623
  %17 = load %struct._object*, %struct._object** %intermediate, align 8, !dbg !3137, !tbaa !787
  store %struct._object* %17, %struct._object** %retval, !dbg !3138
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3138

cleanup:                                          ; preds = %if.end.10, %do.end, %if.then
  %18 = bitcast %struct._object** %intermediate to i8*, !dbg !3139
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !3139
  %19 = load %struct._object*, %struct._object** %retval, !dbg !3139
  ret %struct._object* %19, !dbg !3139
}

declare i32 @_PyAccu_Init(%struct._PyAccu*) #3

declare i32 @_PyAccu_Accumulate(%struct._PyAccu*, %struct._object*) #3

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #3

declare i32 @PyNumber_Check(%struct._object*) #3

declare i64 @PyNumber_AsSsize_t(%struct._object*, %struct._object*) #3

declare %struct._object* @PyErr_Occurred() #3

declare %struct._object* @PyLong_FromSsize_t(i64) #3

declare i32 @_PyUnicode_Ready(%struct._object*) #3

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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  %_py_decref_tmp89 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp104 = alloca %struct._object*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct.stringio** %self.addr, metadata !606, metadata !791), !dbg !3140
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !607, metadata !791), !dbg !3141
  %0 = bitcast i64* %len to i8*, !dbg !3142
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3142
  call void @llvm.dbg.declare(metadata i64* %len, metadata !608, metadata !791), !dbg !3143
  %1 = bitcast %struct._object** %decoded to i8*, !dbg !3144
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3144
  call void @llvm.dbg.declare(metadata %struct._object** %decoded, metadata !609, metadata !791), !dbg !3145
  store %struct._object* null, %struct._object** %decoded, align 8, !dbg !3145, !tbaa !787
  %2 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3146, !tbaa !787
  %decoder = getelementptr inbounds %struct.stringio, %struct.stringio* %2, i32 0, i32 11, !dbg !3148
  %3 = load %struct._object*, %struct._object** %decoder, align 8, !dbg !3148, !tbaa !966
  %cmp = icmp ne %struct._object* %3, null, !dbg !3149
  br i1 %cmp, label %if.then, label %if.else, !dbg !3150

if.then:                                          ; preds = %entry
  %4 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3151, !tbaa !787
  %decoder1 = getelementptr inbounds %struct.stringio, %struct.stringio* %4, i32 0, i32 11, !dbg !3153
  %5 = load %struct._object*, %struct._object** %decoder1, align 8, !dbg !3153, !tbaa !966
  %6 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !3154, !tbaa !787
  %call = call %struct._object* @_PyIncrementalNewlineDecoder_decode(%struct._object* %5, %struct._object* %6, i32 1), !dbg !3155
  store %struct._object* %call, %struct._object** %decoded, align 8, !dbg !3156, !tbaa !787
  br label %if.end, !dbg !3157

if.else:                                          ; preds = %entry
  %7 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !3158, !tbaa !787
  store %struct._object* %7, %struct._object** %decoded, align 8, !dbg !3160, !tbaa !787
  %8 = load %struct._object*, %struct._object** %decoded, align 8, !dbg !3161, !tbaa !787
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !3162
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !3163, !tbaa !892
  %inc = add i64 %9, 1, !dbg !3163
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3163, !tbaa !892
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3164, !tbaa !787
  %writenl = getelementptr inbounds %struct.stringio, %struct.stringio* %10, i32 0, i32 13, !dbg !3165
  %11 = load %struct._object*, %struct._object** %writenl, align 8, !dbg !3165, !tbaa !924
  %tobool = icmp ne %struct._object* %11, null, !dbg !3164
  br i1 %tobool, label %if.then.2, label %if.end.10, !dbg !3166

if.then.2:                                        ; preds = %if.end
  %12 = bitcast %struct._object** %translated to i8*, !dbg !3167
  call void @llvm.lifetime.start(i64 8, i8* %12) #2, !dbg !3167
  call void @llvm.dbg.declare(metadata %struct._object** %translated, metadata !610, metadata !791), !dbg !3168
  %13 = load %struct._object*, %struct._object** %decoded, align 8, !dbg !3169, !tbaa !787
  %14 = load %struct._object*, %struct._object** @_PyIO_str_nl, align 8, !dbg !3170, !tbaa !787
  %15 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3171, !tbaa !787
  %writenl3 = getelementptr inbounds %struct.stringio, %struct.stringio* %15, i32 0, i32 13, !dbg !3172
  %16 = load %struct._object*, %struct._object** %writenl3, align 8, !dbg !3172, !tbaa !924
  %call4 = call %struct._object* @PyUnicode_Replace(%struct._object* %13, %struct._object* %14, %struct._object* %16, i64 -1), !dbg !3173
  store %struct._object* %call4, %struct._object** %translated, align 8, !dbg !3168, !tbaa !787
  br label %do.body, !dbg !3174

do.body:                                          ; preds = %if.then.2
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3175
  call void @llvm.lifetime.start(i64 8, i8* %17) #2, !dbg !3175
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !613, metadata !791), !dbg !3177
  %18 = load %struct._object*, %struct._object** %decoded, align 8, !dbg !3178, !tbaa !787
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8, !dbg !3177, !tbaa !787
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3179, !tbaa !787
  %ob_refcnt5 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0, !dbg !3181
  %20 = load i64, i64* %ob_refcnt5, align 8, !dbg !3182, !tbaa !892
  %dec = add i64 %20, -1, !dbg !3182
  store i64 %dec, i64* %ob_refcnt5, align 8, !dbg !3182, !tbaa !892
  %cmp6 = icmp ne i64 %dec, 0, !dbg !3183
  br i1 %cmp6, label %if.then.7, label %if.else.8, !dbg !3184

if.then.7:                                        ; preds = %do.body
  br label %if.end.9, !dbg !3185

if.else.8:                                        ; preds = %do.body
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3187, !tbaa !787
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1, !dbg !3189
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3189, !tbaa !900
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4, !dbg !3190
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3190, !tbaa !902
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3191, !tbaa !787
  call void %23(%struct._object* %24), !dbg !3192
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.8, %if.then.7
  %25 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3193
  call void @llvm.lifetime.end(i64 8, i8* %25) #2, !dbg !3193
  br label %do.cond, !dbg !3195

do.cond:                                          ; preds = %if.end.9
  br label %do.end, !dbg !3196

do.end:                                           ; preds = %do.cond
  %26 = load %struct._object*, %struct._object** %translated, align 8, !dbg !3198, !tbaa !787
  store %struct._object* %26, %struct._object** %decoded, align 8, !dbg !3199, !tbaa !787
  %27 = bitcast %struct._object** %translated to i8*, !dbg !3200
  call void @llvm.lifetime.end(i64 8, i8* %27) #2, !dbg !3200
  br label %if.end.10, !dbg !3201

if.end.10:                                        ; preds = %do.end, %if.end
  %28 = load %struct._object*, %struct._object** %decoded, align 8, !dbg !3202, !tbaa !787
  %cmp11 = icmp eq %struct._object* %28, null, !dbg !3204
  br i1 %cmp11, label %if.then.12, label %if.end.13, !dbg !3205

if.then.12:                                       ; preds = %if.end.10
  store i64 -1, i64* %retval, !dbg !3206
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3206

if.end.13:                                        ; preds = %if.end.10
  %29 = load %struct._object*, %struct._object** %decoded, align 8, !dbg !3207, !tbaa !787
  %30 = bitcast %struct._object* %29 to %struct.PyASCIIObject*, !dbg !3208
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %30, i32 0, i32 3, !dbg !3209
  %31 = bitcast %struct.anon.0* %state to i32*, !dbg !3210
  %bf.load = load i32, i32* %31, align 4, !dbg !3210
  %bf.lshr = lshr i32 %bf.load, 7, !dbg !3210
  %bf.clear = and i32 %bf.lshr, 1, !dbg !3210
  %tobool14 = icmp ne i32 %bf.clear, 0, !dbg !3211
  br i1 %tobool14, label %cond.true, label %cond.false, !dbg !3211

cond.true:                                        ; preds = %if.end.13
  br label %cond.end, !dbg !3212

cond.false:                                       ; preds = %if.end.13
  %32 = load %struct._object*, %struct._object** %decoded, align 8, !dbg !3214, !tbaa !787
  %call15 = call i32 @_PyUnicode_Ready(%struct._object* %32), !dbg !3216
  br label %cond.end, !dbg !3211

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call15, %cond.false ], !dbg !3211
  %tobool16 = icmp ne i32 %cond, 0, !dbg !3217
  br i1 %tobool16, label %if.then.17, label %if.end.30, !dbg !3220

if.then.17:                                       ; preds = %cond.end
  br label %do.body.18, !dbg !3221

do.body.18:                                       ; preds = %if.then.17
  %33 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !3222
  call void @llvm.lifetime.start(i64 8, i8* %33) #2, !dbg !3222
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp19, metadata !615, metadata !791), !dbg !3224
  %34 = load %struct._object*, %struct._object** %decoded, align 8, !dbg !3225, !tbaa !787
  store %struct._object* %34, %struct._object** %_py_decref_tmp19, align 8, !dbg !3224, !tbaa !787
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !3226, !tbaa !787
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0, !dbg !3228
  %36 = load i64, i64* %ob_refcnt20, align 8, !dbg !3229, !tbaa !892
  %dec21 = add i64 %36, -1, !dbg !3229
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !3229, !tbaa !892
  %cmp22 = icmp ne i64 %dec21, 0, !dbg !3230
  br i1 %cmp22, label %if.then.23, label %if.else.24, !dbg !3231

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.27, !dbg !3232

if.else.24:                                       ; preds = %do.body.18
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !3234, !tbaa !787
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1, !dbg !3236
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !3236, !tbaa !900
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4, !dbg !3237
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !3237, !tbaa !902
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !3238, !tbaa !787
  call void %39(%struct._object* %40), !dbg !3239
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  %41 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !3240
  call void @llvm.lifetime.end(i64 8, i8* %41) #2, !dbg !3240
  br label %do.cond.28, !dbg !3242

do.cond.28:                                       ; preds = %if.end.27
  br label %do.end.29, !dbg !3243

do.end.29:                                        ; preds = %do.cond.28
  store i64 -1, i64* %retval, !dbg !3245
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3245

if.end.30:                                        ; preds = %cond.end
  %42 = load %struct._object*, %struct._object** %decoded, align 8, !dbg !3246, !tbaa !787
  %43 = bitcast %struct._object* %42 to %struct.PyASCIIObject*, !dbg !3247
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %43, i32 0, i32 1, !dbg !3248
  %44 = load i64, i64* %length, align 8, !dbg !3248, !tbaa !1236
  store i64 %44, i64* %len, align 8, !dbg !3249, !tbaa !1606
  %45 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3250, !tbaa !787
  %pos = getelementptr inbounds %struct.stringio, %struct.stringio* %45, i32 0, i32 2, !dbg !3252
  %46 = load i64, i64* %pos, align 8, !dbg !3252, !tbaa !1627
  %47 = load i64, i64* %len, align 8, !dbg !3253, !tbaa !1606
  %sub = sub i64 9223372036854775807, %47, !dbg !3254
  %cmp31 = icmp sgt i64 %46, %sub, !dbg !3255
  br i1 %cmp31, label %if.then.32, label %if.end.33, !dbg !3256

if.then.32:                                       ; preds = %if.end.30
  %48 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !3257, !tbaa !787
  call void @PyErr_SetString(%struct._object* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i32 0, i32 0)), !dbg !3259
  br label %fail, !dbg !3260

if.end.33:                                        ; preds = %if.end.30
  %49 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3261, !tbaa !787
  %state34 = getelementptr inbounds %struct.stringio, %struct.stringio* %49, i32 0, i32 5, !dbg !3263
  %50 = load i32, i32* %state34, align 4, !dbg !3263, !tbaa !1623
  %cmp35 = icmp eq i32 %50, 2, !dbg !3264
  br i1 %cmp35, label %if.then.36, label %if.end.49, !dbg !3265

if.then.36:                                       ; preds = %if.end.33
  %51 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3266, !tbaa !787
  %string_size = getelementptr inbounds %struct.stringio, %struct.stringio* %51, i32 0, i32 3, !dbg !3269
  %52 = load i64, i64* %string_size, align 8, !dbg !3269, !tbaa !1595
  %53 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3270, !tbaa !787
  %pos37 = getelementptr inbounds %struct.stringio, %struct.stringio* %53, i32 0, i32 2, !dbg !3271
  %54 = load i64, i64* %pos37, align 8, !dbg !3271, !tbaa !1627
  %cmp38 = icmp eq i64 %52, %54, !dbg !3272
  br i1 %cmp38, label %if.then.39, label %if.end.44, !dbg !3273

if.then.39:                                       ; preds = %if.then.36
  %55 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3274, !tbaa !787
  %accu = getelementptr inbounds %struct.stringio, %struct.stringio* %55, i32 0, i32 6, !dbg !3277
  %56 = load %struct._object*, %struct._object** %decoded, align 8, !dbg !3278, !tbaa !787
  %call40 = call i32 @_PyAccu_Accumulate(%struct._PyAccu* %accu, %struct._object* %56), !dbg !3279
  %tobool41 = icmp ne i32 %call40, 0, !dbg !3279
  br i1 %tobool41, label %if.then.42, label %if.end.43, !dbg !3280

if.then.42:                                       ; preds = %if.then.39
  br label %fail, !dbg !3281

if.end.43:                                        ; preds = %if.then.39
  br label %success, !dbg !3282

if.end.44:                                        ; preds = %if.then.36
  %57 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3283, !tbaa !787
  %call45 = call i32 @realize(%struct.stringio* %57), !dbg !3285
  %tobool46 = icmp ne i32 %call45, 0, !dbg !3285
  br i1 %tobool46, label %if.then.47, label %if.end.48, !dbg !3286

if.then.47:                                       ; preds = %if.end.44
  br label %fail, !dbg !3287

if.end.48:                                        ; preds = %if.end.44
  br label %if.end.49, !dbg !3288

if.end.49:                                        ; preds = %if.end.48, %if.end.33
  %58 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3289, !tbaa !787
  %pos50 = getelementptr inbounds %struct.stringio, %struct.stringio* %58, i32 0, i32 2, !dbg !3291
  %59 = load i64, i64* %pos50, align 8, !dbg !3291, !tbaa !1627
  %60 = load i64, i64* %len, align 8, !dbg !3292, !tbaa !1606
  %add = add i64 %59, %60, !dbg !3293
  %61 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3294, !tbaa !787
  %string_size51 = getelementptr inbounds %struct.stringio, %struct.stringio* %61, i32 0, i32 3, !dbg !3295
  %62 = load i64, i64* %string_size51, align 8, !dbg !3295, !tbaa !1595
  %cmp52 = icmp sgt i64 %add, %62, !dbg !3296
  br i1 %cmp52, label %if.then.53, label %if.end.60, !dbg !3297

if.then.53:                                       ; preds = %if.end.49
  %63 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3298, !tbaa !787
  %64 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3301, !tbaa !787
  %pos54 = getelementptr inbounds %struct.stringio, %struct.stringio* %64, i32 0, i32 2, !dbg !3302
  %65 = load i64, i64* %pos54, align 8, !dbg !3302, !tbaa !1627
  %66 = load i64, i64* %len, align 8, !dbg !3303, !tbaa !1606
  %add55 = add i64 %65, %66, !dbg !3304
  %call56 = call i32 @resize_buffer(%struct.stringio* %63, i64 %add55), !dbg !3305
  %cmp57 = icmp slt i32 %call56, 0, !dbg !3306
  br i1 %cmp57, label %if.then.58, label %if.end.59, !dbg !3307

if.then.58:                                       ; preds = %if.then.53
  br label %fail, !dbg !3308

if.end.59:                                        ; preds = %if.then.53
  br label %if.end.60, !dbg !3309

if.end.60:                                        ; preds = %if.end.59, %if.end.49
  %67 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3310, !tbaa !787
  %pos61 = getelementptr inbounds %struct.stringio, %struct.stringio* %67, i32 0, i32 2, !dbg !3312
  %68 = load i64, i64* %pos61, align 8, !dbg !3312, !tbaa !1627
  %69 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3313, !tbaa !787
  %string_size62 = getelementptr inbounds %struct.stringio, %struct.stringio* %69, i32 0, i32 3, !dbg !3314
  %70 = load i64, i64* %string_size62, align 8, !dbg !3314, !tbaa !1595
  %cmp63 = icmp sgt i64 %68, %70, !dbg !3315
  br i1 %cmp63, label %if.then.64, label %if.end.69, !dbg !3316

if.then.64:                                       ; preds = %if.end.60
  %71 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3317, !tbaa !787
  %buf = getelementptr inbounds %struct.stringio, %struct.stringio* %71, i32 0, i32 1, !dbg !3319
  %72 = load i32*, i32** %buf, align 8, !dbg !3319, !tbaa !856
  %73 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3320, !tbaa !787
  %string_size65 = getelementptr inbounds %struct.stringio, %struct.stringio* %73, i32 0, i32 3, !dbg !3321
  %74 = load i64, i64* %string_size65, align 8, !dbg !3321, !tbaa !1595
  %add.ptr = getelementptr i32, i32* %72, i64 %74, !dbg !3322
  %75 = bitcast i32* %add.ptr to i8*, !dbg !3323
  %76 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3324, !tbaa !787
  %pos66 = getelementptr inbounds %struct.stringio, %struct.stringio* %76, i32 0, i32 2, !dbg !3325
  %77 = load i64, i64* %pos66, align 8, !dbg !3325, !tbaa !1627
  %78 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3326, !tbaa !787
  %string_size67 = getelementptr inbounds %struct.stringio, %struct.stringio* %78, i32 0, i32 3, !dbg !3327
  %79 = load i64, i64* %string_size67, align 8, !dbg !3327, !tbaa !1595
  %sub68 = sub i64 %77, %79, !dbg !3328
  %mul = mul i64 %sub68, 4, !dbg !3329
  call void @llvm.memset.p0i8.i64(i8* %75, i8 0, i64 %mul, i32 4, i1 false), !dbg !3323
  br label %if.end.69, !dbg !3330

if.end.69:                                        ; preds = %if.then.64, %if.end.60
  %80 = load %struct._object*, %struct._object** %decoded, align 8, !dbg !3331, !tbaa !787
  %81 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3333, !tbaa !787
  %buf70 = getelementptr inbounds %struct.stringio, %struct.stringio* %81, i32 0, i32 1, !dbg !3334
  %82 = load i32*, i32** %buf70, align 8, !dbg !3334, !tbaa !856
  %83 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3335, !tbaa !787
  %pos71 = getelementptr inbounds %struct.stringio, %struct.stringio* %83, i32 0, i32 2, !dbg !3336
  %84 = load i64, i64* %pos71, align 8, !dbg !3336, !tbaa !1627
  %add.ptr72 = getelementptr i32, i32* %82, i64 %84, !dbg !3337
  %85 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3338, !tbaa !787
  %buf_size = getelementptr inbounds %struct.stringio, %struct.stringio* %85, i32 0, i32 4, !dbg !3339
  %86 = load i64, i64* %buf_size, align 8, !dbg !3339, !tbaa !1923
  %87 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3340, !tbaa !787
  %pos73 = getelementptr inbounds %struct.stringio, %struct.stringio* %87, i32 0, i32 2, !dbg !3341
  %88 = load i64, i64* %pos73, align 8, !dbg !3341, !tbaa !1627
  %sub74 = sub i64 %86, %88, !dbg !3342
  %call75 = call i32* @PyUnicode_AsUCS4(%struct._object* %80, i32* %add.ptr72, i64 %sub74, i32 0), !dbg !3343
  %tobool76 = icmp ne i32* %call75, null, !dbg !3343
  br i1 %tobool76, label %if.end.78, label %if.then.77, !dbg !3344

if.then.77:                                       ; preds = %if.end.69
  br label %fail, !dbg !3345

if.end.78:                                        ; preds = %if.end.69
  br label %success, !dbg !3346

success:                                          ; preds = %if.end.78, %if.end.43
  %89 = load i64, i64* %len, align 8, !dbg !3347, !tbaa !1606
  %90 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3348, !tbaa !787
  %pos79 = getelementptr inbounds %struct.stringio, %struct.stringio* %90, i32 0, i32 2, !dbg !3349
  %91 = load i64, i64* %pos79, align 8, !dbg !3350, !tbaa !1627
  %add80 = add i64 %91, %89, !dbg !3350
  store i64 %add80, i64* %pos79, align 8, !dbg !3350, !tbaa !1627
  %92 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3351, !tbaa !787
  %string_size81 = getelementptr inbounds %struct.stringio, %struct.stringio* %92, i32 0, i32 3, !dbg !3353
  %93 = load i64, i64* %string_size81, align 8, !dbg !3353, !tbaa !1595
  %94 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3354, !tbaa !787
  %pos82 = getelementptr inbounds %struct.stringio, %struct.stringio* %94, i32 0, i32 2, !dbg !3355
  %95 = load i64, i64* %pos82, align 8, !dbg !3355, !tbaa !1627
  %cmp83 = icmp slt i64 %93, %95, !dbg !3356
  br i1 %cmp83, label %if.then.84, label %if.end.87, !dbg !3357

if.then.84:                                       ; preds = %success
  %96 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3358, !tbaa !787
  %pos85 = getelementptr inbounds %struct.stringio, %struct.stringio* %96, i32 0, i32 2, !dbg !3359
  %97 = load i64, i64* %pos85, align 8, !dbg !3359, !tbaa !1627
  %98 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3360, !tbaa !787
  %string_size86 = getelementptr inbounds %struct.stringio, %struct.stringio* %98, i32 0, i32 3, !dbg !3361
  store i64 %97, i64* %string_size86, align 8, !dbg !3362, !tbaa !1595
  br label %if.end.87, !dbg !3360

if.end.87:                                        ; preds = %if.then.84, %success
  br label %do.body.88, !dbg !3363

do.body.88:                                       ; preds = %if.end.87
  %99 = bitcast %struct._object** %_py_decref_tmp89 to i8*, !dbg !3364
  call void @llvm.lifetime.start(i64 8, i8* %99) #2, !dbg !3364
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp89, metadata !619, metadata !791), !dbg !3366
  %100 = load %struct._object*, %struct._object** %decoded, align 8, !dbg !3367, !tbaa !787
  store %struct._object* %100, %struct._object** %_py_decref_tmp89, align 8, !dbg !3366, !tbaa !787
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8, !dbg !3368, !tbaa !787
  %ob_refcnt90 = getelementptr inbounds %struct._object, %struct._object* %101, i32 0, i32 0, !dbg !3370
  %102 = load i64, i64* %ob_refcnt90, align 8, !dbg !3371, !tbaa !892
  %dec91 = add i64 %102, -1, !dbg !3371
  store i64 %dec91, i64* %ob_refcnt90, align 8, !dbg !3371, !tbaa !892
  %cmp92 = icmp ne i64 %dec91, 0, !dbg !3372
  br i1 %cmp92, label %if.then.93, label %if.else.94, !dbg !3373

if.then.93:                                       ; preds = %do.body.88
  br label %if.end.97, !dbg !3374

if.else.94:                                       ; preds = %do.body.88
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8, !dbg !3376, !tbaa !787
  %ob_type95 = getelementptr inbounds %struct._object, %struct._object* %103, i32 0, i32 1, !dbg !3378
  %104 = load %struct._typeobject*, %struct._typeobject** %ob_type95, align 8, !dbg !3378, !tbaa !900
  %tp_dealloc96 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %104, i32 0, i32 4, !dbg !3379
  %105 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc96, align 8, !dbg !3379, !tbaa !902
  %106 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8, !dbg !3380, !tbaa !787
  call void %105(%struct._object* %106), !dbg !3381
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.94, %if.then.93
  %107 = bitcast %struct._object** %_py_decref_tmp89 to i8*, !dbg !3382
  call void @llvm.lifetime.end(i64 8, i8* %107) #2, !dbg !3382
  br label %do.cond.98, !dbg !3384

do.cond.98:                                       ; preds = %if.end.97
  br label %do.end.99, !dbg !3385

do.end.99:                                        ; preds = %do.cond.98
  store i64 0, i64* %retval, !dbg !3387
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3387

fail:                                             ; preds = %if.then.77, %if.then.58, %if.then.47, %if.then.42, %if.then.32
  br label %do.body.100, !dbg !3388

do.body.100:                                      ; preds = %fail
  %108 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3389
  call void @llvm.lifetime.start(i64 8, i8* %108) #2, !dbg !3389
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !621, metadata !791), !dbg !3391
  %109 = load %struct._object*, %struct._object** %decoded, align 8, !dbg !3392, !tbaa !787
  store %struct._object* %109, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3391, !tbaa !787
  %110 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3393, !tbaa !787
  %cmp101 = icmp ne %struct._object* %110, null, !dbg !3394
  br i1 %cmp101, label %if.then.102, label %if.end.115, !dbg !3395

if.then.102:                                      ; preds = %do.body.100
  br label %do.body.103, !dbg !3396

do.body.103:                                      ; preds = %if.then.102
  %111 = bitcast %struct._object** %_py_decref_tmp104 to i8*, !dbg !3398
  call void @llvm.lifetime.start(i64 8, i8* %111) #2, !dbg !3398
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp104, metadata !623, metadata !791), !dbg !3400
  %112 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3401, !tbaa !787
  store %struct._object* %112, %struct._object** %_py_decref_tmp104, align 8, !dbg !3400, !tbaa !787
  %113 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8, !dbg !3402, !tbaa !787
  %ob_refcnt105 = getelementptr inbounds %struct._object, %struct._object* %113, i32 0, i32 0, !dbg !3404
  %114 = load i64, i64* %ob_refcnt105, align 8, !dbg !3405, !tbaa !892
  %dec106 = add i64 %114, -1, !dbg !3405
  store i64 %dec106, i64* %ob_refcnt105, align 8, !dbg !3405, !tbaa !892
  %cmp107 = icmp ne i64 %dec106, 0, !dbg !3406
  br i1 %cmp107, label %if.then.108, label %if.else.109, !dbg !3407

if.then.108:                                      ; preds = %do.body.103
  br label %if.end.112, !dbg !3408

if.else.109:                                      ; preds = %do.body.103
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8, !dbg !3410, !tbaa !787
  %ob_type110 = getelementptr inbounds %struct._object, %struct._object* %115, i32 0, i32 1, !dbg !3412
  %116 = load %struct._typeobject*, %struct._typeobject** %ob_type110, align 8, !dbg !3412, !tbaa !900
  %tp_dealloc111 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %116, i32 0, i32 4, !dbg !3413
  %117 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc111, align 8, !dbg !3413, !tbaa !902
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8, !dbg !3414, !tbaa !787
  call void %117(%struct._object* %118), !dbg !3415
  br label %if.end.112

if.end.112:                                       ; preds = %if.else.109, %if.then.108
  %119 = bitcast %struct._object** %_py_decref_tmp104 to i8*, !dbg !3416
  call void @llvm.lifetime.end(i64 8, i8* %119) #2, !dbg !3416
  br label %do.cond.113, !dbg !3418

do.cond.113:                                      ; preds = %if.end.112
  br label %do.end.114, !dbg !3419

do.end.114:                                       ; preds = %do.cond.113
  br label %if.end.115, !dbg !3421

if.end.115:                                       ; preds = %do.end.114, %do.body.100
  %120 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3423
  call void @llvm.lifetime.end(i64 8, i8* %120) #2, !dbg !3423
  br label %do.cond.116, !dbg !3426

do.cond.116:                                      ; preds = %if.end.115
  br label %do.end.117, !dbg !3427

do.end.117:                                       ; preds = %do.cond.116
  store i64 -1, i64* %retval, !dbg !3429
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3429

cleanup:                                          ; preds = %do.end.117, %do.end.99, %do.end.29, %if.then.12
  %121 = bitcast %struct._object** %decoded to i8*, !dbg !3430
  call void @llvm.lifetime.end(i64 8, i8* %121) #2, !dbg !3430
  %122 = bitcast i64* %len to i8*, !dbg !3430
  call void @llvm.lifetime.end(i64 8, i8* %122) #2, !dbg !3430
  %123 = load i64, i64* %retval, !dbg !3430
  ret i64 %123, !dbg !3430
}

declare %struct._object* @_PyIncrementalNewlineDecoder_decode(%struct._object*, %struct._object*, i32) #3

declare %struct._object* @PyUnicode_Replace(%struct._object*, %struct._object*, %struct._object*, i64) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare %struct._object* @PyDict_Copy(%struct._object*) #3

declare %struct._object* @_Py_BuildValue_SizeT(i8*, ...) #3

declare %struct._object* @PyTuple_GetSlice(%struct._object*, i64, i64) #3

declare i32* @PyUnicode_AsUCS4Copy(%struct._object*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i64 @PyLong_AsSsize_t(%struct._object*) #3

declare i32 @PyDict_Update(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_closed(%struct.stringio* %self, i8* %context) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.stringio*, align 8
  %context.addr = alloca i8*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct.stringio** %self.addr, metadata !668, metadata !791), !dbg !3431
  store i8* %context, i8** %context.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !669, metadata !791), !dbg !3432
  %0 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3433, !tbaa !787
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %0, i32 0, i32 7, !dbg !3435
  %1 = load i8, i8* %ok, align 1, !dbg !3435, !tbaa !848
  %conv = sext i8 %1 to i32, !dbg !3433
  %cmp = icmp sle i32 %conv, 0, !dbg !3436
  br i1 %cmp, label %if.then, label %if.end, !dbg !3437

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3438, !tbaa !787
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0)), !dbg !3441
  store %struct._object* null, %struct._object** %retval, !dbg !3442
  br label %return, !dbg !3442

if.end:                                           ; preds = %entry
  %3 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3443, !tbaa !787
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %3, i32 0, i32 8, !dbg !3444
  %4 = load i8, i8* %closed, align 1, !dbg !3444, !tbaa !1156
  %conv2 = sext i8 %4 to i64, !dbg !3443
  %call = call %struct._object* @PyBool_FromLong(i64 %conv2), !dbg !3445
  store %struct._object* %call, %struct._object** %retval, !dbg !3446
  br label %return, !dbg !3446

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval, !dbg !3447
  ret %struct._object* %5, !dbg !3447
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_newlines(%struct.stringio* %self, i8* %context) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.stringio*, align 8
  %context.addr = alloca i8*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct.stringio** %self.addr, metadata !672, metadata !791), !dbg !3448
  store i8* %context, i8** %context.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !673, metadata !791), !dbg !3449
  %0 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3450, !tbaa !787
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %0, i32 0, i32 7, !dbg !3452
  %1 = load i8, i8* %ok, align 1, !dbg !3452, !tbaa !848
  %conv = sext i8 %1 to i32, !dbg !3450
  %cmp = icmp sle i32 %conv, 0, !dbg !3453
  br i1 %cmp, label %if.then, label %if.end, !dbg !3454

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3455, !tbaa !787
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0)), !dbg !3458
  store %struct._object* null, %struct._object** %retval, !dbg !3459
  br label %return, !dbg !3459

if.end:                                           ; preds = %entry
  %3 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3460, !tbaa !787
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %3, i32 0, i32 8, !dbg !3462
  %4 = load i8, i8* %closed, align 1, !dbg !3462, !tbaa !1156
  %tobool = icmp ne i8 %4, 0, !dbg !3460
  br i1 %tobool, label %if.then.2, label %if.end.3, !dbg !3463

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3464, !tbaa !787
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0)), !dbg !3467
  store %struct._object* null, %struct._object** %retval, !dbg !3468
  br label %return, !dbg !3468

if.end.3:                                         ; preds = %if.end
  %6 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3469, !tbaa !787
  %decoder = getelementptr inbounds %struct.stringio, %struct.stringio* %6, i32 0, i32 11, !dbg !3471
  %7 = load %struct._object*, %struct._object** %decoder, align 8, !dbg !3471, !tbaa !966
  %cmp4 = icmp eq %struct._object* %7, null, !dbg !3472
  br i1 %cmp4, label %if.then.6, label %if.end.7, !dbg !3473

if.then.6:                                        ; preds = %if.end.3
  %8 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3474, !tbaa !892
  %inc = add i64 %8, 1, !dbg !3474
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3474, !tbaa !892
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !3475
  br label %return, !dbg !3475

if.end.7:                                         ; preds = %if.end.3
  %9 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3476, !tbaa !787
  %decoder8 = getelementptr inbounds %struct.stringio, %struct.stringio* %9, i32 0, i32 11, !dbg !3477
  %10 = load %struct._object*, %struct._object** %decoder8, align 8, !dbg !3477, !tbaa !966
  %11 = load %struct._object*, %struct._object** @_PyIO_str_newlines, align 8, !dbg !3478, !tbaa !787
  %call = call %struct._object* @PyObject_GetAttr(%struct._object* %10, %struct._object* %11), !dbg !3479
  store %struct._object* %call, %struct._object** %retval, !dbg !3480
  br label %return, !dbg !3480

return:                                           ; preds = %if.end.7, %if.then.6, %if.then.2, %if.then
  %12 = load %struct._object*, %struct._object** %retval, !dbg !3481
  ret %struct._object* %12, !dbg !3481
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_line_buffering(%struct.stringio* %self, i8* %context) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.stringio*, align 8
  %context.addr = alloca i8*, align 8
  store %struct.stringio* %self, %struct.stringio** %self.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata %struct.stringio** %self.addr, metadata !676, metadata !791), !dbg !3482
  store i8* %context, i8** %context.addr, align 8, !tbaa !787
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !677, metadata !791), !dbg !3483
  %0 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3484, !tbaa !787
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %0, i32 0, i32 7, !dbg !3486
  %1 = load i8, i8* %ok, align 1, !dbg !3486, !tbaa !848
  %conv = sext i8 %1 to i32, !dbg !3484
  %cmp = icmp sle i32 %conv, 0, !dbg !3487
  br i1 %cmp, label %if.then, label %if.end, !dbg !3488

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3489, !tbaa !787
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0)), !dbg !3492
  store %struct._object* null, %struct._object** %retval, !dbg !3493
  br label %return, !dbg !3493

if.end:                                           ; preds = %entry
  %3 = load %struct.stringio*, %struct.stringio** %self.addr, align 8, !dbg !3494, !tbaa !787
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %3, i32 0, i32 8, !dbg !3496
  %4 = load i8, i8* %closed, align 1, !dbg !3496, !tbaa !1156
  %tobool = icmp ne i8 %4, 0, !dbg !3494
  br i1 %tobool, label %if.then.2, label %if.end.3, !dbg !3497

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3498, !tbaa !787
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0)), !dbg !3501
  store %struct._object* null, %struct._object** %retval, !dbg !3502
  br label %return, !dbg !3502

if.end.3:                                         ; preds = %if.end
  %6 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !3503, !tbaa !892
  %inc = add i64 %6, 1, !dbg !3503
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !3503, !tbaa !892
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !3504
  br label %return, !dbg !3504

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %7 = load %struct._object*, %struct._object** %retval, !dbg !3505
  ret %struct._object* %7, !dbg !3505
}

declare %struct._object* @PyBool_FromLong(i64) #3

declare %struct._object* @PyObject_GetAttr(%struct._object*, %struct._object*) #3

declare i32 @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object*, %struct._object*, i8*, i8**, ...) #3

declare i8* @PyUnicode_AsUTF8(%struct._object*) #3

declare %struct._object* @PyUnicode_FromString(i8*) #3

declare %struct._object* @_PyObject_CallFunction_SizeT(%struct._object*, i8*, ...) #3

declare i64 @PyUnicode_GetLength(%struct._object*) #3

declare i8* @PyMem_Malloc(i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!784, !785}
!llvm.ident = !{!786}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !10, subprograms: !427, globals: !725)
!1 = !DIFile(filename: "stringio.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "PyUnicode_Kind", file: !4, line: 451, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/unicodeobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "PyUnicode_WCHAR_KIND", value: 0)
!7 = !DIEnumerator(name: "PyUnicode_1BYTE_KIND", value: 1)
!8 = !DIEnumerator(name: "PyUnicode_2BYTE_KIND", value: 2)
!9 = !DIEnumerator(name: "PyUnicode_4BYTE_KIND", value: 4)
!10 = !{!11, !32, !35, !113, !371, !23, !389, !75, !391, !392, !67, !400}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGC_Head", file: !13, line: 253, baseType: !14)
!13 = !DIFile(filename: "Include/objimpl.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!14 = !DICompositeType(tag: DW_TAG_union_type, name: "_gc_head", file: !13, line: 246, size: 192, align: 64, elements: !15)
!15 = !{!16, !30}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !14, file: !13, line: 251, baseType: !17, size: 192, align: 64)
!17 = !DICompositeType(tag: DW_TAG_structure_type, scope: !14, file: !13, line: 247, size: 192, align: 64, elements: !18)
!18 = !{!19, !21, !22}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "gc_next", scope: !17, file: !13, line: 248, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "gc_prev", scope: !17, file: !13, line: 249, baseType: !20, size: 64, align: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "gc_refs", scope: !17, file: !13, line: 250, baseType: !23, size: 64, align: 64, offset: 128)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !24, line: 177, baseType: !25)
!24 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !26, line: 102, baseType: !27)
!26 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !28, line: 181, baseType: !29)
!28 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!29 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !14, file: !13, line: 252, baseType: !31, size: 64, align: 64)
!31 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 62, baseType: !34)
!33 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!34 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !37, line: 109, baseType: !38)
!37 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!38 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !37, line: 105, size: 128, align: 64, elements: !39)
!39 = !{!40, !41}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !38, file: !37, line: 107, baseType: !23, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !38, file: !37, line: 108, baseType: !42, size: 64, align: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !37, line: 334, size: 3200, align: 64, elements: !44)
!44 = !{!45, !51, !55, !56, !57, !62, !123, !128, !133, !134, !139, !191, !222, !234, !240, !241, !242, !244, !246, !277, !278, !279, !288, !289, !294, !295, !297, !299, !309, !319, !337, !338, !339, !341, !343, !344, !346, !351, !356, !361, !362, !363, !364, !365, !366, !367, !368, !370}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !43, file: !37, line: 335, baseType: !46, size: 192, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !37, line: 114, baseType: !47)
!47 = !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 111, size: 192, align: 64, elements: !48)
!48 = !{!49, !50}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !47, file: !37, line: 112, baseType: !36, size: 128, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !47, file: !37, line: 113, baseType: !23, size: 64, align: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !43, file: !37, line: 336, baseType: !52, size: 64, align: 64, offset: 192)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !43, file: !37, line: 337, baseType: !23, size: 64, align: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !43, file: !37, line: 337, baseType: !23, size: 64, align: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !43, file: !37, line: 341, baseType: !58, size: 64, align: 64, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !37, line: 308, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !35}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !43, file: !37, line: 342, baseType: !63, size: 64, align: 64, offset: 448)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !37, line: 314, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!67, !35, !68, !67}
!67 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !26, line: 48, baseType: !70)
!70 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !71, line: 246, size: 1728, align: 64, elements: !72)
!71 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!72 = !{!73, !74, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !94, !95, !96, !97, !99, !101, !103, !107, !110, !112, !114, !115, !116, !117, !118, !119}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !70, file: !71, line: 247, baseType: !67, size: 32, align: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !70, file: !71, line: 252, baseType: !75, size: 64, align: 64, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !70, file: !71, line: 253, baseType: !75, size: 64, align: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !70, file: !71, line: 254, baseType: !75, size: 64, align: 64, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !70, file: !71, line: 255, baseType: !75, size: 64, align: 64, offset: 256)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !70, file: !71, line: 256, baseType: !75, size: 64, align: 64, offset: 320)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !70, file: !71, line: 257, baseType: !75, size: 64, align: 64, offset: 384)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !70, file: !71, line: 258, baseType: !75, size: 64, align: 64, offset: 448)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !70, file: !71, line: 259, baseType: !75, size: 64, align: 64, offset: 512)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !70, file: !71, line: 261, baseType: !75, size: 64, align: 64, offset: 576)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !70, file: !71, line: 262, baseType: !75, size: 64, align: 64, offset: 640)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !70, file: !71, line: 263, baseType: !75, size: 64, align: 64, offset: 704)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !70, file: !71, line: 265, baseType: !87, size: 64, align: 64, offset: 768)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!88 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !71, line: 161, size: 192, align: 64, elements: !89)
!89 = !{!90, !91, !93}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !88, file: !71, line: 162, baseType: !87, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !88, file: !71, line: 163, baseType: !92, size: 64, align: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !88, file: !71, line: 167, baseType: !67, size: 32, align: 32, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !70, file: !71, line: 267, baseType: !92, size: 64, align: 64, offset: 832)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !70, file: !71, line: 269, baseType: !67, size: 32, align: 32, offset: 896)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !70, file: !71, line: 273, baseType: !67, size: 32, align: 32, offset: 928)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !70, file: !71, line: 275, baseType: !98, size: 64, align: 64, offset: 960)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !28, line: 140, baseType: !29)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !70, file: !71, line: 279, baseType: !100, size: 16, align: 16, offset: 1024)
!100 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !70, file: !71, line: 280, baseType: !102, size: 8, align: 8, offset: 1040)
!102 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !70, file: !71, line: 281, baseType: !104, size: 8, align: 8, offset: 1048)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 8, align: 8, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 1)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !70, file: !71, line: 285, baseType: !108, size: 64, align: 64, offset: 1088)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !71, line: 155, baseType: null)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !70, file: !71, line: 294, baseType: !111, size: 64, align: 64, offset: 1152)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !28, line: 141, baseType: !29)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !70, file: !71, line: 303, baseType: !113, size: 64, align: 64, offset: 1216)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !70, file: !71, line: 304, baseType: !113, size: 64, align: 64, offset: 1280)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !70, file: !71, line: 305, baseType: !113, size: 64, align: 64, offset: 1344)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !70, file: !71, line: 306, baseType: !113, size: 64, align: 64, offset: 1408)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !70, file: !71, line: 307, baseType: !32, size: 64, align: 64, offset: 1472)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !70, file: !71, line: 309, baseType: !67, size: 32, align: 32, offset: 1536)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !70, file: !71, line: 311, baseType: !120, size: 160, align: 8, offset: 1568)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 160, align: 8, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 20)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !43, file: !37, line: 343, baseType: !124, size: 64, align: 64, offset: 512)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !37, line: 316, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!35, !35, !75}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !43, file: !37, line: 344, baseType: !129, size: 64, align: 64, offset: 576)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !37, line: 318, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!67, !35, !75, !35}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !43, file: !37, line: 345, baseType: !113, size: 64, align: 64, offset: 640)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !43, file: !37, line: 346, baseType: !135, size: 64, align: 64, offset: 704)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !37, line: 320, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!35, !35}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !43, file: !37, line: 350, baseType: !140, size: 64, align: 64, offset: 768)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !37, line: 278, baseType: !142)
!142 = !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 236, size: 2176, align: 64, elements: !143)
!143 = !{!144, !149, !150, !151, !152, !153, !158, !160, !161, !162, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !142, file: !37, line: 241, baseType: !145, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !37, line: 166, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!35, !35, !35}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !142, file: !37, line: 242, baseType: !145, size: 64, align: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !142, file: !37, line: 243, baseType: !145, size: 64, align: 64, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !142, file: !37, line: 244, baseType: !145, size: 64, align: 64, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !142, file: !37, line: 245, baseType: !145, size: 64, align: 64, offset: 256)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !142, file: !37, line: 246, baseType: !154, size: 64, align: 64, offset: 320)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !37, line: 167, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!35, !35, !35, !35}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !142, file: !37, line: 247, baseType: !159, size: 64, align: 64, offset: 384)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !37, line: 165, baseType: !136)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !142, file: !37, line: 248, baseType: !159, size: 64, align: 64, offset: 448)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !142, file: !37, line: 249, baseType: !159, size: 64, align: 64, offset: 512)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !142, file: !37, line: 250, baseType: !163, size: 64, align: 64, offset: 576)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !37, line: 168, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64, align: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{!67, !35}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !142, file: !37, line: 251, baseType: !159, size: 64, align: 64, offset: 640)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !142, file: !37, line: 252, baseType: !145, size: 64, align: 64, offset: 704)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !142, file: !37, line: 253, baseType: !145, size: 64, align: 64, offset: 768)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !142, file: !37, line: 254, baseType: !145, size: 64, align: 64, offset: 832)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !142, file: !37, line: 255, baseType: !145, size: 64, align: 64, offset: 896)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !142, file: !37, line: 256, baseType: !145, size: 64, align: 64, offset: 960)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !142, file: !37, line: 257, baseType: !159, size: 64, align: 64, offset: 1024)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !142, file: !37, line: 258, baseType: !113, size: 64, align: 64, offset: 1088)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !142, file: !37, line: 259, baseType: !159, size: 64, align: 64, offset: 1152)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !142, file: !37, line: 261, baseType: !145, size: 64, align: 64, offset: 1216)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !142, file: !37, line: 262, baseType: !145, size: 64, align: 64, offset: 1280)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !142, file: !37, line: 263, baseType: !145, size: 64, align: 64, offset: 1344)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !142, file: !37, line: 264, baseType: !145, size: 64, align: 64, offset: 1408)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !142, file: !37, line: 265, baseType: !154, size: 64, align: 64, offset: 1472)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !142, file: !37, line: 266, baseType: !145, size: 64, align: 64, offset: 1536)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !142, file: !37, line: 267, baseType: !145, size: 64, align: 64, offset: 1600)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !142, file: !37, line: 268, baseType: !145, size: 64, align: 64, offset: 1664)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !142, file: !37, line: 269, baseType: !145, size: 64, align: 64, offset: 1728)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !142, file: !37, line: 270, baseType: !145, size: 64, align: 64, offset: 1792)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !142, file: !37, line: 272, baseType: !145, size: 64, align: 64, offset: 1856)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !142, file: !37, line: 273, baseType: !145, size: 64, align: 64, offset: 1920)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !142, file: !37, line: 274, baseType: !145, size: 64, align: 64, offset: 1984)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !142, file: !37, line: 275, baseType: !145, size: 64, align: 64, offset: 2048)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !142, file: !37, line: 277, baseType: !159, size: 64, align: 64, offset: 2112)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !43, file: !37, line: 351, baseType: !192, size: 64, align: 64, offset: 832)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !37, line: 292, baseType: !194)
!194 = !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 280, size: 640, align: 64, elements: !195)
!195 = !{!196, !201, !202, !207, !208, !209, !214, !215, !220, !221}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !194, file: !37, line: 281, baseType: !197, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !37, line: 169, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!23, !35}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !194, file: !37, line: 282, baseType: !145, size: 64, align: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !194, file: !37, line: 283, baseType: !203, size: 64, align: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !37, line: 170, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!35, !35, !23}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !194, file: !37, line: 284, baseType: !203, size: 64, align: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !194, file: !37, line: 285, baseType: !113, size: 64, align: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !194, file: !37, line: 286, baseType: !210, size: 64, align: 64, offset: 320)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !37, line: 172, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, align: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!67, !35, !23, !35}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !194, file: !37, line: 287, baseType: !113, size: 64, align: 64, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !194, file: !37, line: 288, baseType: !216, size: 64, align: 64, offset: 448)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !37, line: 231, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!67, !35, !35}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !194, file: !37, line: 290, baseType: !145, size: 64, align: 64, offset: 512)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !194, file: !37, line: 291, baseType: !203, size: 64, align: 64, offset: 576)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !43, file: !37, line: 352, baseType: !223, size: 64, align: 64, offset: 896)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !37, line: 298, baseType: !225)
!225 = !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 294, size: 192, align: 64, elements: !226)
!226 = !{!227, !228, !229}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !225, file: !37, line: 295, baseType: !197, size: 64, align: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !225, file: !37, line: 296, baseType: !145, size: 64, align: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !225, file: !37, line: 297, baseType: !230, size: 64, align: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !37, line: 174, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!67, !35, !35, !35}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !43, file: !37, line: 356, baseType: !235, size: 64, align: 64, offset: 960)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !37, line: 321, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!239, !35}
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !24, line: 186, baseType: !23)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !43, file: !37, line: 357, baseType: !154, size: 64, align: 64, offset: 1024)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !43, file: !37, line: 358, baseType: !135, size: 64, align: 64, offset: 1088)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !43, file: !37, line: 359, baseType: !243, size: 64, align: 64, offset: 1152)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !37, line: 317, baseType: !146)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !43, file: !37, line: 360, baseType: !245, size: 64, align: 64, offset: 1216)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !37, line: 319, baseType: !231)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !43, file: !37, line: 363, baseType: !247, size: 64, align: 64, offset: 1280)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !37, line: 304, baseType: !249)
!249 = !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 301, size: 128, align: 64, elements: !250)
!250 = !{!251, !272}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !249, file: !37, line: 302, baseType: !252, size: 64, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !37, line: 193, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!67, !35, !256, !67}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !37, line: 191, baseType: !258)
!258 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !37, line: 178, size: 640, align: 64, elements: !259)
!259 = !{!260, !261, !262, !263, !264, !265, !266, !267, !269, !270, !271}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !258, file: !37, line: 179, baseType: !113, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !258, file: !37, line: 180, baseType: !35, size: 64, align: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !258, file: !37, line: 181, baseType: !23, size: 64, align: 64, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !258, file: !37, line: 182, baseType: !23, size: 64, align: 64, offset: 192)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !258, file: !37, line: 184, baseType: !67, size: 32, align: 32, offset: 256)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !258, file: !37, line: 185, baseType: !67, size: 32, align: 32, offset: 288)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !258, file: !37, line: 186, baseType: !75, size: 64, align: 64, offset: 320)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !258, file: !37, line: 187, baseType: !268, size: 64, align: 64, offset: 384)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !258, file: !37, line: 188, baseType: !268, size: 64, align: 64, offset: 448)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !258, file: !37, line: 189, baseType: !268, size: 64, align: 64, offset: 512)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !258, file: !37, line: 190, baseType: !113, size: 64, align: 64, offset: 576)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !249, file: !37, line: 303, baseType: !273, size: 64, align: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !37, line: 194, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !35, !256}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !43, file: !37, line: 366, baseType: !34, size: 64, align: 64, offset: 1344)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !43, file: !37, line: 368, baseType: !52, size: 64, align: 64, offset: 1408)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !43, file: !37, line: 372, baseType: !280, size: 64, align: 64, offset: 1472)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !37, line: 233, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!67, !35, !284, !113}
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !37, line: 232, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!67, !35, !113}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !43, file: !37, line: 375, baseType: !163, size: 64, align: 64, offset: 1536)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !43, file: !37, line: 379, baseType: !290, size: 64, align: 64, offset: 1600)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !37, line: 322, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, align: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!35, !35, !35, !67}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !43, file: !37, line: 382, baseType: !23, size: 64, align: 64, offset: 1664)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !43, file: !37, line: 385, baseType: !296, size: 64, align: 64, offset: 1728)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !37, line: 323, baseType: !136)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !43, file: !37, line: 386, baseType: !298, size: 64, align: 64, offset: 1792)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !37, line: 324, baseType: !136)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !43, file: !37, line: 389, baseType: !300, size: 64, align: 64, offset: 1856)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !302, line: 40, size: 256, align: 64, elements: !303)
!302 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!303 = !{!304, !305, !307, !308}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !301, file: !302, line: 41, baseType: !52, size: 64, align: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !301, file: !302, line: 42, baseType: !306, size: 64, align: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !302, line: 18, baseType: !146)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !301, file: !302, line: 43, baseType: !67, size: 32, align: 32, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !301, file: !302, line: 45, baseType: !52, size: 64, align: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !43, file: !37, line: 390, baseType: !310, size: 64, align: 64, offset: 1920)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !312, line: 18, size: 320, align: 64, elements: !313)
!312 = !DIFile(filename: "Include/structmember.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!313 = !{!314, !315, !316, !317, !318}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !311, file: !312, line: 19, baseType: !75, size: 64, align: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !311, file: !312, line: 20, baseType: !67, size: 32, align: 32, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !311, file: !312, line: 21, baseType: !23, size: 64, align: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !311, file: !312, line: 22, baseType: !67, size: 32, align: 32, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !311, file: !312, line: 23, baseType: !75, size: 64, align: 64, offset: 256)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !43, file: !37, line: 391, baseType: !320, size: 64, align: 64, offset: 1984)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!321 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !322, line: 11, size: 320, align: 64, elements: !323)
!322 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!323 = !{!324, !325, !330, !335, !336}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !321, file: !322, line: 12, baseType: !75, size: 64, align: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !321, file: !322, line: 13, baseType: !326, size: 64, align: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !322, line: 8, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!35, !35, !113}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !321, file: !322, line: 14, baseType: !331, size: 64, align: 64, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !322, line: 9, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!67, !35, !35, !113}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !321, file: !322, line: 15, baseType: !75, size: 64, align: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !321, file: !322, line: 16, baseType: !113, size: 64, align: 64, offset: 256)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !43, file: !37, line: 392, baseType: !42, size: 64, align: 64, offset: 2048)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !43, file: !37, line: 393, baseType: !35, size: 64, align: 64, offset: 2112)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !43, file: !37, line: 394, baseType: !340, size: 64, align: 64, offset: 2176)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !37, line: 325, baseType: !155)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !43, file: !37, line: 395, baseType: !342, size: 64, align: 64, offset: 2240)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !37, line: 326, baseType: !231)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !43, file: !37, line: 396, baseType: !23, size: 64, align: 64, offset: 2304)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !43, file: !37, line: 397, baseType: !345, size: 64, align: 64, offset: 2368)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !37, line: 327, baseType: !231)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !43, file: !37, line: 398, baseType: !347, size: 64, align: 64, offset: 2432)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !37, line: 329, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!35, !42, !23}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !43, file: !37, line: 399, baseType: !352, size: 64, align: 64, offset: 2496)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !37, line: 328, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, align: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!35, !42, !35, !35}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !43, file: !37, line: 400, baseType: !357, size: 64, align: 64, offset: 2560)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !37, line: 307, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !113}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !43, file: !37, line: 401, baseType: !163, size: 64, align: 64, offset: 2624)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !43, file: !37, line: 402, baseType: !35, size: 64, align: 64, offset: 2688)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !43, file: !37, line: 403, baseType: !35, size: 64, align: 64, offset: 2752)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !43, file: !37, line: 404, baseType: !35, size: 64, align: 64, offset: 2816)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !43, file: !37, line: 405, baseType: !35, size: 64, align: 64, offset: 2880)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !43, file: !37, line: 406, baseType: !35, size: 64, align: 64, offset: 2944)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !43, file: !37, line: 407, baseType: !58, size: 64, align: 64, offset: 3008)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !43, file: !37, line: 410, baseType: !369, size: 32, align: 32, offset: 3072)
!369 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !43, file: !37, line: 412, baseType: !58, size: 64, align: 64, offset: 3136)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyASCIIObject", file: !4, line: 351, baseType: !373)
!373 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 217, size: 384, align: 64, elements: !374)
!374 = !{!375, !376, !377, !378, !386}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !373, file: !4, line: 291, baseType: !36, size: 128, align: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !373, file: !4, line: 292, baseType: !23, size: 64, align: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !373, file: !4, line: 293, baseType: !239, size: 64, align: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !373, file: !4, line: 349, baseType: !379, size: 32, align: 32, offset: 256)
!379 = !DICompositeType(tag: DW_TAG_structure_type, scope: !373, file: !4, line: 294, size: 32, align: 32, elements: !380)
!380 = !{!381, !382, !383, !384, !385}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "interned", scope: !379, file: !4, line: 303, baseType: !369, size: 2, align: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !379, file: !4, line: 331, baseType: !369, size: 3, align: 32, offset: 2)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "compact", scope: !379, file: !4, line: 336, baseType: !369, size: 1, align: 32, offset: 5)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !379, file: !4, line: 340, baseType: !369, size: 1, align: 32, offset: 6)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !379, file: !4, line: 345, baseType: !369, size: 1, align: 32, offset: 7)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "wstr", scope: !373, file: !4, line: 350, baseType: !387, size: 64, align: 64, offset: 320)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64, align: 64)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !33, line: 90, baseType: !67)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64, align: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS4", file: !4, line: 121, baseType: !369)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64, align: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !394, line: 33, baseType: !395)
!394 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!395 = !DICompositeType(tag: DW_TAG_structure_type, file: !394, line: 25, size: 256, align: 64, elements: !396)
!396 = !{!397, !398}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !395, file: !394, line: 26, baseType: !46, size: 192, align: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !395, file: !394, line: 27, baseType: !399, size: 64, align: 64, offset: 192)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 64, align: 64, elements: !105)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64, align: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "stringio", file: !402, line: 40, baseType: !403)
!402 = !DIFile(filename: "./Modules/_io/stringio.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!403 = !DICompositeType(tag: DW_TAG_structure_type, file: !402, line: 14, size: 960, align: 64, elements: !404)
!404 = !{!405, !406, !407, !408, !409, !410, !411, !418, !419, !420, !421, !422, !423, !424, !425, !426}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !403, file: !402, line: 15, baseType: !36, size: 128, align: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !403, file: !402, line: 16, baseType: !389, size: 64, align: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !403, file: !402, line: 17, baseType: !23, size: 64, align: 64, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "string_size", scope: !403, file: !402, line: 18, baseType: !23, size: 64, align: 64, offset: 256)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !403, file: !402, line: 19, baseType: !32, size: 64, align: 64, offset: 320)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !403, file: !402, line: 27, baseType: !67, size: 32, align: 32, offset: 384)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "accu", scope: !403, file: !402, line: 28, baseType: !412, size: 128, align: 64, offset: 448)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "_PyAccu", file: !413, line: 24, baseType: !414)
!413 = !DIFile(filename: "Include/accu.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!414 = !DICompositeType(tag: DW_TAG_structure_type, file: !413, line: 21, size: 128, align: 64, elements: !415)
!415 = !{!416, !417}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "large", scope: !414, file: !413, line: 22, baseType: !35, size: 64, align: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "small", scope: !414, file: !413, line: 23, baseType: !35, size: 64, align: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "ok", scope: !403, file: !402, line: 30, baseType: !54, size: 8, align: 8, offset: 576)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "closed", scope: !403, file: !402, line: 31, baseType: !54, size: 8, align: 8, offset: 584)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "readuniversal", scope: !403, file: !402, line: 32, baseType: !54, size: 8, align: 8, offset: 592)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "readtranslate", scope: !403, file: !402, line: 33, baseType: !54, size: 8, align: 8, offset: 600)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "decoder", scope: !403, file: !402, line: 34, baseType: !35, size: 64, align: 64, offset: 640)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "readnl", scope: !403, file: !402, line: 35, baseType: !35, size: 64, align: 64, offset: 704)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "writenl", scope: !403, file: !402, line: 36, baseType: !35, size: 64, align: 64, offset: 768)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !403, file: !402, line: 38, baseType: !35, size: 64, align: 64, offset: 832)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "weakreflist", scope: !403, file: !402, line: 39, baseType: !35, size: 64, align: 64, offset: 896)
!427 = !{!428, !459, !470, !481, !497, !512, !520, !531, !552, !555, !563, !576, !582, !585, !591, !597, !602, !626, !630, !634, !638, !646, !664, !670, !674, !678, !711}
!428 = !DISubprogram(name: "stringio_dealloc", scope: !402, file: !402, line: 607, type: !429, isLocal: true, isDefinition: true, scopeLine: 608, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.stringio*)* @stringio_dealloc, variables: !431)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !400}
!431 = !{!432, !433, !435, !437, !441, !443, !447, !449, !453, !455}
!432 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !428, file: !402, line: 607, type: !400)
!433 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !434, file: !402, line: 609, type: !11)
!434 = distinct !DILexicalBlock(scope: !428, file: !402, line: 609, column: 8)
!435 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !436, file: !402, line: 616, type: !35)
!436 = distinct !DILexicalBlock(scope: !428, file: !402, line: 616, column: 8)
!437 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !438, file: !402, line: 616, type: !35)
!438 = distinct !DILexicalBlock(scope: !439, file: !402, line: 616, column: 119)
!439 = distinct !DILexicalBlock(scope: !440, file: !402, line: 616, column: 85)
!440 = distinct !DILexicalBlock(scope: !436, file: !402, line: 616, column: 62)
!441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !442, file: !402, line: 617, type: !35)
!442 = distinct !DILexicalBlock(scope: !428, file: !402, line: 617, column: 8)
!443 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !444, file: !402, line: 617, type: !35)
!444 = distinct !DILexicalBlock(scope: !445, file: !402, line: 617, column: 121)
!445 = distinct !DILexicalBlock(scope: !446, file: !402, line: 617, column: 86)
!446 = distinct !DILexicalBlock(scope: !442, file: !402, line: 617, column: 63)
!447 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !448, file: !402, line: 618, type: !35)
!448 = distinct !DILexicalBlock(scope: !428, file: !402, line: 618, column: 8)
!449 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !450, file: !402, line: 618, type: !35)
!450 = distinct !DILexicalBlock(scope: !451, file: !402, line: 618, column: 121)
!451 = distinct !DILexicalBlock(scope: !452, file: !402, line: 618, column: 86)
!452 = distinct !DILexicalBlock(scope: !448, file: !402, line: 618, column: 63)
!453 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !454, file: !402, line: 619, type: !35)
!454 = distinct !DILexicalBlock(scope: !428, file: !402, line: 619, column: 8)
!455 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !456, file: !402, line: 619, type: !35)
!456 = distinct !DILexicalBlock(scope: !457, file: !402, line: 619, column: 115)
!457 = distinct !DILexicalBlock(scope: !458, file: !402, line: 619, column: 83)
!458 = distinct !DILexicalBlock(scope: !454, file: !402, line: 619, column: 60)
!459 = !DISubprogram(name: "stringio_traverse", scope: !402, file: !402, line: 593, type: !460, isLocal: true, isDefinition: true, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.stringio*, i32 (%struct._object*, i8*)*, i8*)* @stringio_traverse, variables: !462)
!460 = !DISubroutineType(types: !461)
!461 = !{!67, !400, !284, !113}
!462 = !{!463, !464, !465, !466}
!463 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !459, file: !402, line: 593, type: !400)
!464 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !459, file: !402, line: 593, type: !284)
!465 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !459, file: !402, line: 593, type: !113)
!466 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !467, file: !402, line: 595, type: !67)
!467 = distinct !DILexicalBlock(scope: !468, file: !402, line: 595, column: 26)
!468 = distinct !DILexicalBlock(scope: !469, file: !402, line: 595, column: 14)
!469 = distinct !DILexicalBlock(scope: !459, file: !402, line: 595, column: 8)
!470 = !DISubprogram(name: "stringio_clear", scope: !402, file: !402, line: 600, type: !471, isLocal: true, isDefinition: true, scopeLine: 601, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.stringio*)* @stringio_clear, variables: !473)
!471 = !DISubroutineType(types: !472)
!472 = !{!67, !400}
!473 = !{!474, !475, !477}
!474 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !470, file: !402, line: 600, type: !400)
!475 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !476, file: !402, line: 602, type: !35)
!476 = distinct !DILexicalBlock(scope: !470, file: !402, line: 602, column: 8)
!477 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !478, file: !402, line: 602, type: !35)
!478 = distinct !DILexicalBlock(scope: !479, file: !402, line: 602, column: 115)
!479 = distinct !DILexicalBlock(scope: !480, file: !402, line: 602, column: 83)
!480 = distinct !DILexicalBlock(scope: !476, file: !402, line: 602, column: 60)
!481 = !DISubprogram(name: "stringio_iternext", scope: !402, file: !402, line: 407, type: !482, isLocal: true, isDefinition: true, scopeLine: 408, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*)* @stringio_iternext, variables: !484)
!482 = !DISubroutineType(types: !483)
!483 = !{!35, !400}
!484 = !{!485, !486, !487, !493}
!485 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !481, file: !402, line: 407, type: !400)
!486 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "line", scope: !481, file: !402, line: 409, type: !35)
!487 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !488, file: !402, line: 427, type: !35)
!488 = distinct !DILexicalBlock(scope: !489, file: !402, line: 427, column: 16)
!489 = distinct !DILexicalBlock(scope: !490, file: !402, line: 423, column: 91)
!490 = distinct !DILexicalBlock(scope: !491, file: !402, line: 423, column: 13)
!491 = distinct !DILexicalBlock(scope: !492, file: !402, line: 419, column: 10)
!492 = distinct !DILexicalBlock(scope: !481, file: !402, line: 415, column: 9)
!493 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !494, file: !402, line: 437, type: !35)
!494 = distinct !DILexicalBlock(scope: !495, file: !402, line: 437, column: 12)
!495 = distinct !DILexicalBlock(scope: !496, file: !402, line: 435, column: 79)
!496 = distinct !DILexicalBlock(scope: !481, file: !402, line: 435, column: 9)
!497 = !DISubprogram(name: "realize", scope: !402, file: !402, line: 140, type: !471, isLocal: true, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.stringio*)* @realize, variables: !498)
!498 = !{!499, !500, !501, !502, !506, !510}
!499 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !497, file: !402, line: 140, type: !400)
!500 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !497, file: !402, line: 142, type: !23)
!501 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "intermediate", scope: !497, file: !402, line: 143, type: !35)
!502 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !503, file: !402, line: 159, type: !35)
!503 = distinct !DILexicalBlock(scope: !504, file: !402, line: 159, column: 12)
!504 = distinct !DILexicalBlock(scope: !505, file: !402, line: 158, column: 39)
!505 = distinct !DILexicalBlock(scope: !497, file: !402, line: 158, column: 9)
!506 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !507, file: !402, line: 163, type: !35)
!507 = distinct !DILexicalBlock(scope: !508, file: !402, line: 163, column: 12)
!508 = distinct !DILexicalBlock(scope: !509, file: !402, line: 162, column: 61)
!509 = distinct !DILexicalBlock(scope: !497, file: !402, line: 162, column: 9)
!510 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !511, file: !402, line: 167, type: !35)
!511 = distinct !DILexicalBlock(scope: !497, file: !402, line: 167, column: 8)
!512 = !DISubprogram(name: "resize_buffer", scope: !402, file: !402, line: 72, type: !513, isLocal: true, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.stringio*, i64)* @resize_buffer, variables: !515)
!513 = !DISubroutineType(types: !514)
!514 = !{!67, !400, !32}
!515 = !{!516, !517, !518, !519}
!516 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !512, file: !402, line: 72, type: !400)
!517 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !512, file: !402, line: 72, type: !32)
!518 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alloc", scope: !512, file: !402, line: 76, type: !32)
!519 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_buf", scope: !512, file: !402, line: 77, type: !389)
!520 = !DISubprogram(name: "_stringio_readline", scope: !402, file: !402, line: 348, type: !521, isLocal: true, isDefinition: true, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*, i64)* @_stringio_readline, variables: !523)
!521 = !DISubroutineType(types: !522)
!522 = !{!35, !400, !23}
!523 = !{!524, !525, !526, !527, !528, !529, !530}
!524 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !520, file: !402, line: 348, type: !400)
!525 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "limit", arg: 2, scope: !520, file: !402, line: 348, type: !23)
!526 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !520, file: !402, line: 350, type: !389)
!527 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end", scope: !520, file: !402, line: 350, type: !389)
!528 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old_char", scope: !520, file: !402, line: 350, type: !390)
!529 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !520, file: !402, line: 351, type: !23)
!530 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "consumed", scope: !520, file: !402, line: 351, type: !23)
!531 = !DISubprogram(name: "stringio_close", scope: !402, file: !402, line: 579, type: !482, isLocal: true, isDefinition: true, scopeLine: 580, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*)* @stringio_close, variables: !532)
!532 = !{!533, !534, !536, !540, !542, !546, !548}
!533 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !531, file: !402, line: 579, type: !400)
!534 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !535, file: !402, line: 586, type: !35)
!535 = distinct !DILexicalBlock(scope: !531, file: !402, line: 586, column: 8)
!536 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !537, file: !402, line: 586, type: !35)
!537 = distinct !DILexicalBlock(scope: !538, file: !402, line: 586, column: 119)
!538 = distinct !DILexicalBlock(scope: !539, file: !402, line: 586, column: 85)
!539 = distinct !DILexicalBlock(scope: !535, file: !402, line: 586, column: 62)
!540 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !541, file: !402, line: 587, type: !35)
!541 = distinct !DILexicalBlock(scope: !531, file: !402, line: 587, column: 8)
!542 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !543, file: !402, line: 587, type: !35)
!543 = distinct !DILexicalBlock(scope: !544, file: !402, line: 587, column: 121)
!544 = distinct !DILexicalBlock(scope: !545, file: !402, line: 587, column: 86)
!545 = distinct !DILexicalBlock(scope: !541, file: !402, line: 587, column: 63)
!546 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !547, file: !402, line: 588, type: !35)
!547 = distinct !DILexicalBlock(scope: !531, file: !402, line: 588, column: 8)
!548 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !549, file: !402, line: 588, type: !35)
!549 = distinct !DILexicalBlock(scope: !550, file: !402, line: 588, column: 121)
!550 = distinct !DILexicalBlock(scope: !551, file: !402, line: 588, column: 86)
!551 = distinct !DILexicalBlock(scope: !547, file: !402, line: 588, column: 63)
!552 = !DISubprogram(name: "stringio_getvalue", scope: !402, file: !402, line: 271, type: !482, isLocal: true, isDefinition: true, scopeLine: 272, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*)* @stringio_getvalue, variables: !553)
!553 = !{!554}
!554 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !552, file: !402, line: 271, type: !400)
!555 = !DISubprogram(name: "make_intermediate", scope: !402, file: !402, line: 124, type: !482, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*)* @make_intermediate, variables: !556)
!556 = !{!557, !558, !559}
!557 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !555, file: !402, line: 124, type: !400)
!558 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "intermediate", scope: !555, file: !402, line: 126, type: !35)
!559 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !560, file: !402, line: 132, type: !35)
!560 = distinct !DILexicalBlock(scope: !561, file: !402, line: 132, column: 12)
!561 = distinct !DILexicalBlock(scope: !562, file: !402, line: 131, column: 56)
!562 = distinct !DILexicalBlock(scope: !555, file: !402, line: 130, column: 9)
!563 = !DISubprogram(name: "stringio_read", scope: !402, file: !402, line: 299, type: !564, isLocal: true, isDefinition: true, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*, %struct._object*)* @stringio_read, variables: !566)
!564 = !DISubroutineType(types: !565)
!565 = !{!35, !400, !35}
!566 = !{!567, !568, !569, !570, !571, !572, !573}
!567 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !563, file: !402, line: 299, type: !400)
!568 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !563, file: !402, line: 299, type: !35)
!569 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !563, file: !402, line: 301, type: !23)
!570 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !563, file: !402, line: 301, type: !23)
!571 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "output", scope: !563, file: !402, line: 302, type: !389)
!572 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !563, file: !402, line: 303, type: !35)
!573 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !574, file: !402, line: 335, type: !35)
!574 = distinct !DILexicalBlock(scope: !575, file: !402, line: 334, column: 58)
!575 = distinct !DILexicalBlock(scope: !563, file: !402, line: 334, column: 9)
!576 = !DISubprogram(name: "stringio_readline", scope: !402, file: !402, line: 382, type: !564, isLocal: true, isDefinition: true, scopeLine: 383, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*, %struct._object*)* @stringio_readline, variables: !577)
!577 = !{!578, !579, !580, !581}
!578 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !576, file: !402, line: 382, type: !400)
!579 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !576, file: !402, line: 382, type: !35)
!580 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !576, file: !402, line: 384, type: !35)
!581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "limit", scope: !576, file: !402, line: 385, type: !23)
!582 = !DISubprogram(name: "stringio_tell", scope: !402, file: !402, line: 285, type: !482, isLocal: true, isDefinition: true, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*)* @stringio_tell, variables: !583)
!583 = !{!584}
!584 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !582, file: !402, line: 285, type: !400)
!585 = !DISubprogram(name: "stringio_truncate", scope: !402, file: !402, line: 452, type: !564, isLocal: true, isDefinition: true, scopeLine: 453, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*, %struct._object*)* @stringio_truncate, variables: !586)
!586 = !{!587, !588, !589, !590}
!587 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !585, file: !402, line: 452, type: !400)
!588 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !585, file: !402, line: 452, type: !35)
!589 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !585, file: !402, line: 454, type: !23)
!590 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !585, file: !402, line: 455, type: !35)
!591 = !DISubprogram(name: "stringio_seek", scope: !402, file: !402, line: 503, type: !564, isLocal: true, isDefinition: true, scopeLine: 504, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*, %struct._object*)* @stringio_seek, variables: !592)
!592 = !{!593, !594, !595, !596}
!593 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !591, file: !402, line: 503, type: !400)
!594 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !591, file: !402, line: 503, type: !35)
!595 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !591, file: !402, line: 505, type: !23)
!596 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !591, file: !402, line: 506, type: !67)
!597 = !DISubprogram(name: "stringio_write", scope: !402, file: !402, line: 551, type: !564, isLocal: true, isDefinition: true, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*, %struct._object*)* @stringio_write, variables: !598)
!598 = !{!599, !600, !601}
!599 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !597, file: !402, line: 551, type: !400)
!600 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !597, file: !402, line: 551, type: !35)
!601 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !597, file: !402, line: 553, type: !23)
!602 = !DISubprogram(name: "write_str", scope: !402, file: !402, line: 174, type: !603, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.stringio*, %struct._object*)* @write_str, variables: !605)
!603 = !DISubroutineType(types: !604)
!604 = !{!23, !400, !35}
!605 = !{!606, !607, !608, !609, !610, !613, !615, !619, !621, !623}
!606 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !602, file: !402, line: 174, type: !400)
!607 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !602, file: !402, line: 174, type: !35)
!608 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !602, file: !402, line: 176, type: !23)
!609 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decoded", scope: !602, file: !402, line: 177, type: !35)
!610 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "translated", scope: !611, file: !402, line: 191, type: !35)
!611 = distinct !DILexicalBlock(scope: !612, file: !402, line: 190, column: 24)
!612 = distinct !DILexicalBlock(scope: !602, file: !402, line: 190, column: 9)
!613 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !614, file: !402, line: 193, type: !35)
!614 = distinct !DILexicalBlock(scope: !611, file: !402, line: 193, column: 12)
!615 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !616, file: !402, line: 201, type: !35)
!616 = distinct !DILexicalBlock(scope: !617, file: !402, line: 201, column: 12)
!617 = distinct !DILexicalBlock(scope: !618, file: !402, line: 200, column: 115)
!618 = distinct !DILexicalBlock(scope: !602, file: !402, line: 200, column: 9)
!619 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !620, file: !402, line: 259, type: !35)
!620 = distinct !DILexicalBlock(scope: !602, file: !402, line: 259, column: 8)
!621 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !622, file: !402, line: 263, type: !35)
!622 = distinct !DILexicalBlock(scope: !602, file: !402, line: 263, column: 8)
!623 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !624, file: !402, line: 263, type: !35)
!624 = distinct !DILexicalBlock(scope: !625, file: !402, line: 263, column: 99)
!625 = distinct !DILexicalBlock(scope: !622, file: !402, line: 263, column: 65)
!626 = !DISubprogram(name: "stringio_seekable", scope: !402, file: !402, line: 774, type: !564, isLocal: true, isDefinition: true, scopeLine: 775, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*, %struct._object*)* @stringio_seekable, variables: !627)
!627 = !{!628, !629}
!628 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !626, file: !402, line: 774, type: !400)
!629 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !626, file: !402, line: 774, type: !35)
!630 = !DISubprogram(name: "stringio_readable", scope: !402, file: !402, line: 782, type: !564, isLocal: true, isDefinition: true, scopeLine: 783, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*, %struct._object*)* @stringio_readable, variables: !631)
!631 = !{!632, !633}
!632 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !630, file: !402, line: 782, type: !400)
!633 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !630, file: !402, line: 782, type: !35)
!634 = !DISubprogram(name: "stringio_writable", scope: !402, file: !402, line: 790, type: !564, isLocal: true, isDefinition: true, scopeLine: 791, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*, %struct._object*)* @stringio_writable, variables: !635)
!635 = !{!636, !637}
!636 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !634, file: !402, line: 790, type: !400)
!637 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !634, file: !402, line: 790, type: !35)
!638 = !DISubprogram(name: "stringio_getstate", scope: !402, file: !402, line: 810, type: !482, isLocal: true, isDefinition: true, scopeLine: 811, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*)* @stringio_getstate, variables: !639)
!639 = !{!640, !641, !642, !643, !644}
!640 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !638, file: !402, line: 810, type: !400)
!641 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initvalue", scope: !638, file: !402, line: 812, type: !35)
!642 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !638, file: !402, line: 813, type: !35)
!643 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "state", scope: !638, file: !402, line: 814, type: !35)
!644 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !645, file: !402, line: 831, type: !35)
!645 = distinct !DILexicalBlock(scope: !638, file: !402, line: 831, column: 8)
!646 = !DISubprogram(name: "stringio_setstate", scope: !402, file: !402, line: 836, type: !564, isLocal: true, isDefinition: true, scopeLine: 837, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*, %struct._object*)* @stringio_setstate, variables: !647)
!647 = !{!648, !649, !650, !651, !652, !653, !654, !658, !660, !662, !663}
!648 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !646, file: !402, line: 836, type: !400)
!649 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 2, scope: !646, file: !402, line: 836, type: !35)
!650 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initarg", scope: !646, file: !402, line: 838, type: !35)
!651 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "position_obj", scope: !646, file: !402, line: 839, type: !35)
!652 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !646, file: !402, line: 840, type: !35)
!653 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !646, file: !402, line: 841, type: !23)
!654 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !655, file: !402, line: 861, type: !35)
!655 = distinct !DILexicalBlock(scope: !656, file: !402, line: 861, column: 12)
!656 = distinct !DILexicalBlock(scope: !657, file: !402, line: 860, column: 55)
!657 = distinct !DILexicalBlock(scope: !646, file: !402, line: 860, column: 9)
!658 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !659, file: !402, line: 864, type: !35)
!659 = distinct !DILexicalBlock(scope: !646, file: !402, line: 864, column: 8)
!660 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !661, file: !402, line: 873, type: !35)
!661 = distinct !DILexicalBlock(scope: !646, file: !402, line: 872, column: 5)
!662 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !661, file: !402, line: 874, type: !389)
!663 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bufsize", scope: !661, file: !402, line: 875, type: !23)
!664 = !DISubprogram(name: "stringio_closed", scope: !402, file: !402, line: 938, type: !665, isLocal: true, isDefinition: true, scopeLine: 939, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*, i8*)* @stringio_closed, variables: !667)
!665 = !DISubroutineType(types: !666)
!666 = !{!35, !400, !113}
!667 = !{!668, !669}
!668 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !664, file: !402, line: 938, type: !400)
!669 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "context", arg: 2, scope: !664, file: !402, line: 938, type: !113)
!670 = !DISubprogram(name: "stringio_newlines", scope: !402, file: !402, line: 953, type: !665, isLocal: true, isDefinition: true, scopeLine: 954, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*, i8*)* @stringio_newlines, variables: !671)
!671 = !{!672, !673}
!672 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !670, file: !402, line: 953, type: !400)
!673 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "context", arg: 2, scope: !670, file: !402, line: 953, type: !113)
!674 = !DISubprogram(name: "stringio_line_buffering", scope: !402, file: !402, line: 945, type: !665, isLocal: true, isDefinition: true, scopeLine: 946, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*, i8*)* @stringio_line_buffering, variables: !675)
!675 = !{!676, !677}
!676 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !674, file: !402, line: 945, type: !400)
!677 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "context", arg: 2, scope: !674, file: !402, line: 945, type: !113)
!678 = !DISubprogram(name: "stringio_init", scope: !402, file: !402, line: 648, type: !679, isLocal: true, isDefinition: true, scopeLine: 649, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.stringio*, %struct._object*, %struct._object*)* @stringio_init, variables: !681)
!679 = !DISubroutineType(types: !680)
!680 = !{!67, !400, !35, !35}
!681 = !{!682, !683, !684, !685, !689, !690, !691, !692, !693, !695, !699, !701, !705, !707}
!682 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !678, file: !402, line: 648, type: !400)
!683 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !678, file: !402, line: 648, type: !35)
!684 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !678, file: !402, line: 648, type: !35)
!685 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kwlist", scope: !678, file: !402, line: 650, type: !686)
!686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 192, align: 64, elements: !687)
!687 = !{!688}
!688 = !DISubrange(count: 3)
!689 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !678, file: !402, line: 651, type: !35)
!690 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newline_obj", scope: !678, file: !402, line: 652, type: !35)
!691 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newline", scope: !678, file: !402, line: 653, type: !75)
!692 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value_len", scope: !678, file: !402, line: 654, type: !23)
!693 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !694, file: !402, line: 697, type: !35)
!694 = distinct !DILexicalBlock(scope: !678, file: !402, line: 697, column: 8)
!695 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !696, file: !402, line: 697, type: !35)
!696 = distinct !DILexicalBlock(scope: !697, file: !402, line: 697, column: 119)
!697 = distinct !DILexicalBlock(scope: !698, file: !402, line: 697, column: 85)
!698 = distinct !DILexicalBlock(scope: !694, file: !402, line: 697, column: 62)
!699 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !700, file: !402, line: 698, type: !35)
!700 = distinct !DILexicalBlock(scope: !678, file: !402, line: 698, column: 8)
!701 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !702, file: !402, line: 698, type: !35)
!702 = distinct !DILexicalBlock(scope: !703, file: !402, line: 698, column: 121)
!703 = distinct !DILexicalBlock(scope: !704, file: !402, line: 698, column: 86)
!704 = distinct !DILexicalBlock(scope: !700, file: !402, line: 698, column: 63)
!705 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !706, file: !402, line: 699, type: !35)
!706 = distinct !DILexicalBlock(scope: !678, file: !402, line: 699, column: 8)
!707 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !708, file: !402, line: 699, type: !35)
!708 = distinct !DILexicalBlock(scope: !709, file: !402, line: 699, column: 121)
!709 = distinct !DILexicalBlock(scope: !710, file: !402, line: 699, column: 86)
!710 = distinct !DILexicalBlock(scope: !706, file: !402, line: 699, column: 63)
!711 = !DISubprogram(name: "stringio_new", scope: !402, file: !402, line: 626, type: !712, isLocal: true, isDefinition: true, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @stringio_new, variables: !716)
!712 = !DISubroutineType(types: !713)
!713 = !{!35, !714, !35, !35}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64, align: 64)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !37, line: 422, baseType: !43)
!716 = !{!717, !718, !719, !720, !721}
!717 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !711, file: !402, line: 626, type: !714)
!718 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !711, file: !402, line: 626, type: !35)
!719 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !711, file: !402, line: 626, type: !35)
!720 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !711, file: !402, line: 628, type: !400)
!721 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !722, file: !402, line: 640, type: !35)
!722 = distinct !DILexicalBlock(scope: !723, file: !402, line: 640, column: 12)
!723 = distinct !DILexicalBlock(scope: !724, file: !402, line: 639, column: 34)
!724 = distinct !DILexicalBlock(scope: !711, file: !402, line: 639, column: 9)
!725 = !{!726, !727, !731, !735, !739, !743, !747, !751, !755, !759, !763, !767, !771, !775, !779}
!726 = !DIGlobalVariable(name: "PyStringIO_Type", scope: !0, file: !402, line: 994, type: !715, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyStringIO_Type)
!727 = !DIGlobalVariable(name: "stringio_doc", scope: !0, file: !402, line: 61, type: !728, isLocal: true, isDefinition: true, variable: [175 x i8]* @stringio_doc)
!728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 1400, align: 8, elements: !729)
!729 = !{!730}
!730 = !DISubrange(count: 175)
!731 = !DIGlobalVariable(name: "stringio_methods", scope: !0, file: !402, line: 962, type: !732, isLocal: true, isDefinition: true, variable: [14 x %struct.PyMethodDef]* @stringio_methods)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 3584, align: 64, elements: !733)
!733 = !{!734}
!734 = !DISubrange(count: 14)
!735 = !DIGlobalVariable(name: "stringio_close_doc", scope: !0, file: !402, line: 572, type: !736, isLocal: true, isDefinition: true, variable: [165 x i8]* @stringio_close_doc)
!736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 1320, align: 8, elements: !737)
!737 = !{!738}
!738 = !DISubrange(count: 165)
!739 = !DIGlobalVariable(name: "stringio_getvalue_doc", scope: !0, file: !402, line: 267, type: !740, isLocal: true, isDefinition: true, variable: [44 x i8]* @stringio_getvalue_doc)
!740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 352, align: 8, elements: !741)
!741 = !{!742}
!742 = !DISubrange(count: 44)
!743 = !DIGlobalVariable(name: "stringio_read_doc", scope: !0, file: !402, line: 292, type: !744, isLocal: true, isDefinition: true, variable: [149 x i8]* @stringio_read_doc)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 1192, align: 8, elements: !745)
!745 = !{!746}
!746 = !DISubrange(count: 149)
!747 = !DIGlobalVariable(name: "stringio_readline_doc", scope: !0, file: !402, line: 376, type: !748, isLocal: true, isDefinition: true, variable: [80 x i8]* @stringio_readline_doc)
!748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 640, align: 8, elements: !749)
!749 = !{!750}
!750 = !DISubrange(count: 80)
!751 = !DIGlobalVariable(name: "stringio_tell_doc", scope: !0, file: !402, line: 281, type: !752, isLocal: true, isDefinition: true, variable: [32 x i8]* @stringio_tell_doc)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 256, align: 8, elements: !753)
!753 = !{!754}
!754 = !DISubrange(count: 32)
!755 = !DIGlobalVariable(name: "stringio_truncate_doc", scope: !0, file: !402, line: 444, type: !756, isLocal: true, isDefinition: true, variable: [179 x i8]* @stringio_truncate_doc)
!756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 1432, align: 8, elements: !757)
!757 = !{!758}
!758 = !DISubrange(count: 179)
!759 = !DIGlobalVariable(name: "stringio_seek_doc", scope: !0, file: !402, line: 493, type: !760, isLocal: true, isDefinition: true, variable: [270 x i8]* @stringio_seek_doc)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 2160, align: 8, elements: !761)
!761 = !{!762}
!762 = !DISubrange(count: 270)
!763 = !DIGlobalVariable(name: "stringio_write_doc", scope: !0, file: !402, line: 544, type: !764, isLocal: true, isDefinition: true, variable: [117 x i8]* @stringio_write_doc)
!764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 936, align: 8, elements: !765)
!765 = !{!766}
!766 = !DISubrange(count: 117)
!767 = !DIGlobalVariable(name: "stringio_seekable_doc", scope: !0, file: !402, line: 770, type: !768, isLocal: true, isDefinition: true, variable: [65 x i8]* @stringio_seekable_doc)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 520, align: 8, elements: !769)
!769 = !{!770}
!770 = !DISubrange(count: 65)
!771 = !DIGlobalVariable(name: "stringio_readable_doc", scope: !0, file: !402, line: 764, type: !772, isLocal: true, isDefinition: true, variable: [63 x i8]* @stringio_readable_doc)
!772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 504, align: 8, elements: !773)
!773 = !{!774}
!774 = !DISubrange(count: 63)
!775 = !DIGlobalVariable(name: "stringio_writable_doc", scope: !0, file: !402, line: 767, type: !776, isLocal: true, isDefinition: true, variable: [66 x i8]* @stringio_writable_doc)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 528, align: 8, elements: !777)
!777 = !{!778}
!778 = !DISubrange(count: 66)
!779 = !DIGlobalVariable(name: "stringio_getset", scope: !0, file: !402, line: 981, type: !780, isLocal: true, isDefinition: true, variable: [4 x %struct.PyGetSetDef]* @stringio_getset)
!780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !781, size: 1280, align: 64, elements: !782)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGetSetDef", file: !322, line: 17, baseType: !321)
!782 = !{!783}
!783 = !DISubrange(count: 4)
!784 = !{i32 2, !"Dwarf Version", i32 4}
!785 = !{i32 2, !"Debug Info Version", i32 3}
!786 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!787 = !{!788, !788, i64 0}
!788 = !{!"any pointer", !789, i64 0}
!789 = !{!"omnipotent char", !790, i64 0}
!790 = !{!"Simple C/C++ TBAA"}
!791 = !DIExpression()
!792 = !DILocation(line: 607, column: 28, scope: !428)
!793 = !DILocation(line: 609, column: 5, scope: !428)
!794 = !DILocation(line: 609, column: 10, scope: !795)
!795 = !DILexicalBlockFile(scope: !434, file: !402, discriminator: 1)
!796 = !DILocation(line: 609, column: 21, scope: !434)
!797 = !DILocation(line: 609, column: 40, scope: !434)
!798 = !DILocation(line: 609, column: 26, scope: !434)
!799 = !DILocation(line: 609, column: 45, scope: !434)
!800 = !DILocation(line: 609, column: 64, scope: !434)
!801 = !DILocation(line: 609, column: 89, scope: !802)
!802 = !DILexicalBlockFile(scope: !803, file: !402, discriminator: 2)
!803 = distinct !DILexicalBlock(scope: !434, file: !402, line: 609, column: 67)
!804 = !DILocation(line: 609, column: 93, scope: !803)
!805 = !DILocation(line: 609, column: 96, scope: !803)
!806 = !{!807, !808, i64 16}
!807 = !{!"", !788, i64 0, !788, i64 8, !808, i64 16}
!808 = !{!"long", !789, i64 0}
!809 = !DILocation(line: 609, column: 104, scope: !803)
!810 = !DILocation(line: 609, column: 131, scope: !803)
!811 = !DILocation(line: 609, column: 70, scope: !803)
!812 = !DILocation(line: 609, column: 74, scope: !803)
!813 = !DILocation(line: 609, column: 77, scope: !803)
!814 = !DILocation(line: 609, column: 85, scope: !803)
!815 = !DILocation(line: 609, column: 160, scope: !803)
!816 = !DILocation(line: 609, column: 160, scope: !817)
!817 = !DILexicalBlockFile(scope: !803, file: !402, discriminator: 3)
!818 = !DILocation(line: 609, column: 201, scope: !819)
!819 = !DILexicalBlockFile(scope: !434, file: !402, discriminator: 4)
!820 = !DILocation(line: 609, column: 204, scope: !434)
!821 = !DILocation(line: 609, column: 207, scope: !434)
!822 = !{!807, !788, i64 0}
!823 = !DILocation(line: 609, column: 173, scope: !434)
!824 = !DILocation(line: 609, column: 176, scope: !434)
!825 = !DILocation(line: 609, column: 179, scope: !434)
!826 = !{!807, !788, i64 8}
!827 = !DILocation(line: 609, column: 188, scope: !434)
!828 = !DILocation(line: 609, column: 191, scope: !434)
!829 = !DILocation(line: 609, column: 199, scope: !434)
!830 = !DILocation(line: 609, column: 244, scope: !434)
!831 = !DILocation(line: 609, column: 247, scope: !434)
!832 = !DILocation(line: 609, column: 250, scope: !434)
!833 = !DILocation(line: 609, column: 216, scope: !434)
!834 = !DILocation(line: 609, column: 219, scope: !434)
!835 = !DILocation(line: 609, column: 222, scope: !434)
!836 = !DILocation(line: 609, column: 231, scope: !434)
!837 = !DILocation(line: 609, column: 234, scope: !434)
!838 = !DILocation(line: 609, column: 242, scope: !434)
!839 = !DILocation(line: 609, column: 259, scope: !434)
!840 = !DILocation(line: 609, column: 262, scope: !434)
!841 = !DILocation(line: 609, column: 265, scope: !434)
!842 = !DILocation(line: 609, column: 273, scope: !434)
!843 = !DILocation(line: 609, column: 287, scope: !428)
!844 = !DILocation(line: 609, column: 287, scope: !434)
!845 = !DILocation(line: 610, column: 5, scope: !428)
!846 = !DILocation(line: 610, column: 11, scope: !428)
!847 = !DILocation(line: 610, column: 14, scope: !428)
!848 = !{!849, !789, i64 72}
!849 = !{!"", !850, i64 0, !788, i64 16, !808, i64 24, !808, i64 32, !808, i64 40, !851, i64 48, !852, i64 56, !789, i64 72, !789, i64 73, !789, i64 74, !789, i64 75, !788, i64 80, !788, i64 88, !788, i64 96, !788, i64 104, !788, i64 112}
!850 = !{!"_object", !808, i64 0, !788, i64 8}
!851 = !{!"int", !789, i64 0}
!852 = !{!"", !788, i64 0, !788, i64 8}
!853 = !DILocation(line: 611, column: 9, scope: !854)
!854 = distinct !DILexicalBlock(scope: !428, file: !402, line: 611, column: 9)
!855 = !DILocation(line: 611, column: 15, scope: !854)
!856 = !{!849, !788, i64 16}
!857 = !DILocation(line: 611, column: 9, scope: !428)
!858 = !DILocation(line: 612, column: 20, scope: !859)
!859 = distinct !DILexicalBlock(scope: !854, file: !402, line: 611, column: 20)
!860 = !DILocation(line: 612, column: 26, scope: !859)
!861 = !DILocation(line: 612, column: 9, scope: !859)
!862 = !DILocation(line: 613, column: 9, scope: !859)
!863 = !DILocation(line: 613, column: 15, scope: !859)
!864 = !DILocation(line: 613, column: 19, scope: !859)
!865 = !DILocation(line: 614, column: 5, scope: !859)
!866 = !DILocation(line: 615, column: 22, scope: !428)
!867 = !DILocation(line: 615, column: 28, scope: !428)
!868 = !DILocation(line: 615, column: 5, scope: !428)
!869 = !DILocation(line: 616, column: 5, scope: !428)
!870 = !DILocation(line: 616, column: 10, scope: !871)
!871 = !DILexicalBlockFile(scope: !436, file: !402, discriminator: 1)
!872 = !DILocation(line: 616, column: 20, scope: !436)
!873 = !DILocation(line: 616, column: 43, scope: !436)
!874 = !DILocation(line: 616, column: 49, scope: !436)
!875 = !{!849, !788, i64 88}
!876 = !DILocation(line: 616, column: 62, scope: !440)
!877 = !DILocation(line: 616, column: 70, scope: !440)
!878 = !DILocation(line: 616, column: 62, scope: !436)
!879 = !DILocation(line: 616, column: 88, scope: !880)
!880 = !DILexicalBlockFile(scope: !439, file: !402, discriminator: 2)
!881 = !DILocation(line: 616, column: 94, scope: !439)
!882 = !DILocation(line: 616, column: 102, scope: !439)
!883 = !DILocation(line: 616, column: 116, scope: !439)
!884 = !DILocation(line: 616, column: 121, scope: !885)
!885 = !DILexicalBlockFile(scope: !438, file: !402, discriminator: 4)
!886 = !DILocation(line: 616, column: 131, scope: !438)
!887 = !DILocation(line: 616, column: 161, scope: !438)
!888 = !DILocation(line: 616, column: 179, scope: !889)
!889 = distinct !DILexicalBlock(scope: !438, file: !402, line: 616, column: 176)
!890 = !DILocation(line: 616, column: 196, scope: !889)
!891 = !DILocation(line: 616, column: 176, scope: !889)
!892 = !{!850, !808, i64 0}
!893 = !DILocation(line: 616, column: 206, scope: !889)
!894 = !DILocation(line: 616, column: 176, scope: !438)
!895 = !DILocation(line: 616, column: 176, scope: !896)
!896 = !DILexicalBlockFile(scope: !438, file: !402, discriminator: 5)
!897 = !DILocation(line: 616, column: 237, scope: !898)
!898 = !DILexicalBlockFile(scope: !889, file: !402, discriminator: 6)
!899 = !DILocation(line: 616, column: 255, scope: !889)
!900 = !{!850, !788, i64 8}
!901 = !DILocation(line: 616, column: 265, scope: !889)
!902 = !{!903, !788, i64 48}
!903 = !{!"_typeobject", !904, i64 0, !788, i64 24, !808, i64 32, !808, i64 40, !788, i64 48, !788, i64 56, !788, i64 64, !788, i64 72, !788, i64 80, !788, i64 88, !788, i64 96, !788, i64 104, !788, i64 112, !788, i64 120, !788, i64 128, !788, i64 136, !788, i64 144, !788, i64 152, !788, i64 160, !808, i64 168, !788, i64 176, !788, i64 184, !788, i64 192, !788, i64 200, !808, i64 208, !788, i64 216, !788, i64 224, !788, i64 232, !788, i64 240, !788, i64 248, !788, i64 256, !788, i64 264, !788, i64 272, !788, i64 280, !808, i64 288, !788, i64 296, !788, i64 304, !788, i64 312, !788, i64 320, !788, i64 328, !788, i64 336, !788, i64 344, !788, i64 352, !788, i64 360, !788, i64 368, !788, i64 376, !851, i64 384, !788, i64 392}
!904 = !{!"", !850, i64 0, !808, i64 16}
!905 = !DILocation(line: 616, column: 290, scope: !889)
!906 = !DILocation(line: 616, column: 221, scope: !889)
!907 = !DILocation(line: 616, column: 309, scope: !908)
!908 = !DILexicalBlockFile(scope: !439, file: !402, discriminator: 7)
!909 = !DILocation(line: 616, column: 309, scope: !438)
!910 = !DILocation(line: 616, column: 309, scope: !911)
!911 = !DILexicalBlockFile(scope: !438, file: !402, discriminator: 8)
!912 = !DILocation(line: 616, column: 322, scope: !913)
!913 = !DILexicalBlockFile(scope: !439, file: !402, discriminator: 9)
!914 = !DILocation(line: 616, column: 324, scope: !915)
!915 = !DILexicalBlockFile(scope: !916, file: !402, discriminator: 10)
!916 = !DILexicalBlockFile(scope: !428, file: !402, discriminator: 3)
!917 = !DILocation(line: 616, column: 324, scope: !436)
!918 = !DILocation(line: 617, column: 5, scope: !428)
!919 = !DILocation(line: 617, column: 10, scope: !920)
!920 = !DILexicalBlockFile(scope: !442, file: !402, discriminator: 1)
!921 = !DILocation(line: 617, column: 20, scope: !442)
!922 = !DILocation(line: 617, column: 43, scope: !442)
!923 = !DILocation(line: 617, column: 49, scope: !442)
!924 = !{!849, !788, i64 96}
!925 = !DILocation(line: 617, column: 63, scope: !446)
!926 = !DILocation(line: 617, column: 71, scope: !446)
!927 = !DILocation(line: 617, column: 63, scope: !442)
!928 = !DILocation(line: 617, column: 89, scope: !929)
!929 = !DILexicalBlockFile(scope: !445, file: !402, discriminator: 2)
!930 = !DILocation(line: 617, column: 95, scope: !445)
!931 = !DILocation(line: 617, column: 104, scope: !445)
!932 = !DILocation(line: 617, column: 118, scope: !445)
!933 = !DILocation(line: 617, column: 123, scope: !934)
!934 = !DILexicalBlockFile(scope: !444, file: !402, discriminator: 4)
!935 = !DILocation(line: 617, column: 133, scope: !444)
!936 = !DILocation(line: 617, column: 163, scope: !444)
!937 = !DILocation(line: 617, column: 181, scope: !938)
!938 = distinct !DILexicalBlock(scope: !444, file: !402, line: 617, column: 178)
!939 = !DILocation(line: 617, column: 198, scope: !938)
!940 = !DILocation(line: 617, column: 178, scope: !938)
!941 = !DILocation(line: 617, column: 208, scope: !938)
!942 = !DILocation(line: 617, column: 178, scope: !444)
!943 = !DILocation(line: 617, column: 178, scope: !944)
!944 = !DILexicalBlockFile(scope: !444, file: !402, discriminator: 5)
!945 = !DILocation(line: 617, column: 239, scope: !946)
!946 = !DILexicalBlockFile(scope: !938, file: !402, discriminator: 6)
!947 = !DILocation(line: 617, column: 257, scope: !938)
!948 = !DILocation(line: 617, column: 267, scope: !938)
!949 = !DILocation(line: 617, column: 292, scope: !938)
!950 = !DILocation(line: 617, column: 223, scope: !938)
!951 = !DILocation(line: 617, column: 311, scope: !952)
!952 = !DILexicalBlockFile(scope: !445, file: !402, discriminator: 7)
!953 = !DILocation(line: 617, column: 311, scope: !444)
!954 = !DILocation(line: 617, column: 311, scope: !955)
!955 = !DILexicalBlockFile(scope: !444, file: !402, discriminator: 8)
!956 = !DILocation(line: 617, column: 324, scope: !957)
!957 = !DILexicalBlockFile(scope: !445, file: !402, discriminator: 9)
!958 = !DILocation(line: 617, column: 326, scope: !915)
!959 = !DILocation(line: 617, column: 326, scope: !442)
!960 = !DILocation(line: 618, column: 5, scope: !428)
!961 = !DILocation(line: 618, column: 10, scope: !962)
!962 = !DILexicalBlockFile(scope: !448, file: !402, discriminator: 1)
!963 = !DILocation(line: 618, column: 20, scope: !448)
!964 = !DILocation(line: 618, column: 43, scope: !448)
!965 = !DILocation(line: 618, column: 49, scope: !448)
!966 = !{!849, !788, i64 80}
!967 = !DILocation(line: 618, column: 63, scope: !452)
!968 = !DILocation(line: 618, column: 71, scope: !452)
!969 = !DILocation(line: 618, column: 63, scope: !448)
!970 = !DILocation(line: 618, column: 89, scope: !971)
!971 = !DILexicalBlockFile(scope: !451, file: !402, discriminator: 2)
!972 = !DILocation(line: 618, column: 95, scope: !451)
!973 = !DILocation(line: 618, column: 104, scope: !451)
!974 = !DILocation(line: 618, column: 118, scope: !451)
!975 = !DILocation(line: 618, column: 123, scope: !976)
!976 = !DILexicalBlockFile(scope: !450, file: !402, discriminator: 4)
!977 = !DILocation(line: 618, column: 133, scope: !450)
!978 = !DILocation(line: 618, column: 163, scope: !450)
!979 = !DILocation(line: 618, column: 181, scope: !980)
!980 = distinct !DILexicalBlock(scope: !450, file: !402, line: 618, column: 178)
!981 = !DILocation(line: 618, column: 198, scope: !980)
!982 = !DILocation(line: 618, column: 178, scope: !980)
!983 = !DILocation(line: 618, column: 208, scope: !980)
!984 = !DILocation(line: 618, column: 178, scope: !450)
!985 = !DILocation(line: 618, column: 178, scope: !986)
!986 = !DILexicalBlockFile(scope: !450, file: !402, discriminator: 5)
!987 = !DILocation(line: 618, column: 239, scope: !988)
!988 = !DILexicalBlockFile(scope: !980, file: !402, discriminator: 6)
!989 = !DILocation(line: 618, column: 257, scope: !980)
!990 = !DILocation(line: 618, column: 267, scope: !980)
!991 = !DILocation(line: 618, column: 292, scope: !980)
!992 = !DILocation(line: 618, column: 223, scope: !980)
!993 = !DILocation(line: 618, column: 311, scope: !994)
!994 = !DILexicalBlockFile(scope: !451, file: !402, discriminator: 7)
!995 = !DILocation(line: 618, column: 311, scope: !450)
!996 = !DILocation(line: 618, column: 311, scope: !997)
!997 = !DILexicalBlockFile(scope: !450, file: !402, discriminator: 8)
!998 = !DILocation(line: 618, column: 324, scope: !999)
!999 = !DILexicalBlockFile(scope: !451, file: !402, discriminator: 9)
!1000 = !DILocation(line: 618, column: 326, scope: !915)
!1001 = !DILocation(line: 618, column: 326, scope: !448)
!1002 = !DILocation(line: 619, column: 5, scope: !428)
!1003 = !DILocation(line: 619, column: 10, scope: !1004)
!1004 = !DILexicalBlockFile(scope: !454, file: !402, discriminator: 1)
!1005 = !DILocation(line: 619, column: 20, scope: !454)
!1006 = !DILocation(line: 619, column: 43, scope: !454)
!1007 = !DILocation(line: 619, column: 49, scope: !454)
!1008 = !{!849, !788, i64 104}
!1009 = !DILocation(line: 619, column: 60, scope: !458)
!1010 = !DILocation(line: 619, column: 68, scope: !458)
!1011 = !DILocation(line: 619, column: 60, scope: !454)
!1012 = !DILocation(line: 619, column: 86, scope: !1013)
!1013 = !DILexicalBlockFile(scope: !457, file: !402, discriminator: 2)
!1014 = !DILocation(line: 619, column: 92, scope: !457)
!1015 = !DILocation(line: 619, column: 98, scope: !457)
!1016 = !DILocation(line: 619, column: 112, scope: !457)
!1017 = !DILocation(line: 619, column: 117, scope: !1018)
!1018 = !DILexicalBlockFile(scope: !456, file: !402, discriminator: 4)
!1019 = !DILocation(line: 619, column: 127, scope: !456)
!1020 = !DILocation(line: 619, column: 157, scope: !456)
!1021 = !DILocation(line: 619, column: 175, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !456, file: !402, line: 619, column: 172)
!1023 = !DILocation(line: 619, column: 192, scope: !1022)
!1024 = !DILocation(line: 619, column: 172, scope: !1022)
!1025 = !DILocation(line: 619, column: 202, scope: !1022)
!1026 = !DILocation(line: 619, column: 172, scope: !456)
!1027 = !DILocation(line: 619, column: 172, scope: !1028)
!1028 = !DILexicalBlockFile(scope: !456, file: !402, discriminator: 5)
!1029 = !DILocation(line: 619, column: 233, scope: !1030)
!1030 = !DILexicalBlockFile(scope: !1022, file: !402, discriminator: 6)
!1031 = !DILocation(line: 619, column: 251, scope: !1022)
!1032 = !DILocation(line: 619, column: 261, scope: !1022)
!1033 = !DILocation(line: 619, column: 286, scope: !1022)
!1034 = !DILocation(line: 619, column: 217, scope: !1022)
!1035 = !DILocation(line: 619, column: 305, scope: !1036)
!1036 = !DILexicalBlockFile(scope: !457, file: !402, discriminator: 7)
!1037 = !DILocation(line: 619, column: 305, scope: !456)
!1038 = !DILocation(line: 619, column: 305, scope: !1039)
!1039 = !DILexicalBlockFile(scope: !456, file: !402, discriminator: 8)
!1040 = !DILocation(line: 619, column: 318, scope: !1041)
!1041 = !DILexicalBlockFile(scope: !457, file: !402, discriminator: 9)
!1042 = !DILocation(line: 619, column: 320, scope: !915)
!1043 = !DILocation(line: 619, column: 320, scope: !454)
!1044 = !DILocation(line: 620, column: 9, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !428, file: !402, line: 620, column: 9)
!1046 = !DILocation(line: 620, column: 15, scope: !1045)
!1047 = !{!849, !788, i64 112}
!1048 = !DILocation(line: 620, column: 27, scope: !1045)
!1049 = !DILocation(line: 620, column: 9, scope: !428)
!1050 = !DILocation(line: 621, column: 45, scope: !1045)
!1051 = !DILocation(line: 621, column: 32, scope: !1045)
!1052 = !DILocation(line: 621, column: 9, scope: !1045)
!1053 = !DILocation(line: 622, column: 19, scope: !428)
!1054 = !DILocation(line: 622, column: 7, scope: !428)
!1055 = !DILocation(line: 622, column: 27, scope: !428)
!1056 = !DILocation(line: 622, column: 37, scope: !428)
!1057 = !{!903, !788, i64 320}
!1058 = !DILocation(line: 622, column: 45, scope: !428)
!1059 = !DILocation(line: 622, column: 5, scope: !428)
!1060 = !DILocation(line: 623, column: 1, scope: !428)
!1061 = !DILocation(line: 593, column: 29, scope: !459)
!1062 = !DILocation(line: 593, column: 45, scope: !459)
!1063 = !DILocation(line: 593, column: 58, scope: !459)
!1064 = !DILocation(line: 595, column: 5, scope: !459)
!1065 = !DILocation(line: 595, column: 14, scope: !1066)
!1066 = !DILexicalBlockFile(scope: !468, file: !402, discriminator: 1)
!1067 = !DILocation(line: 595, column: 20, scope: !468)
!1068 = !DILocation(line: 595, column: 14, scope: !468)
!1069 = !DILocation(line: 595, column: 14, scope: !469)
!1070 = !DILocation(line: 595, column: 28, scope: !1071)
!1071 = !DILexicalBlockFile(scope: !467, file: !402, discriminator: 2)
!1072 = !DILocation(line: 595, column: 32, scope: !467)
!1073 = !DILocation(line: 595, column: 39, scope: !467)
!1074 = !DILocation(line: 595, column: 58, scope: !467)
!1075 = !DILocation(line: 595, column: 64, scope: !467)
!1076 = !DILocation(line: 595, column: 71, scope: !467)
!1077 = !{!851, !851, i64 0}
!1078 = !DILocation(line: 595, column: 81, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !467, file: !402, line: 595, column: 81)
!1080 = !DILocation(line: 595, column: 81, scope: !467)
!1081 = !DILocation(line: 595, column: 94, scope: !1082)
!1082 = !DILexicalBlockFile(scope: !1079, file: !402, discriminator: 4)
!1083 = !DILocation(line: 595, column: 87, scope: !1079)
!1084 = !DILocation(line: 595, column: 100, scope: !1085)
!1085 = !DILexicalBlockFile(scope: !468, file: !402, discriminator: 5)
!1086 = !DILocation(line: 595, column: 100, scope: !1087)
!1087 = !DILexicalBlockFile(scope: !1088, file: !402, discriminator: 7)
!1088 = !DILexicalBlockFile(scope: !468, file: !402, discriminator: 6)
!1089 = !DILocation(line: 595, column: 100, scope: !467)
!1090 = !DILocation(line: 595, column: 102, scope: !1091)
!1091 = !DILexicalBlockFile(scope: !1092, file: !402, discriminator: 8)
!1092 = !DILexicalBlockFile(scope: !469, file: !402, discriminator: 3)
!1093 = !DILocation(line: 596, column: 5, scope: !459)
!1094 = !DILocation(line: 597, column: 1, scope: !459)
!1095 = !DILocation(line: 600, column: 26, scope: !470)
!1096 = !DILocation(line: 602, column: 5, scope: !470)
!1097 = !DILocation(line: 602, column: 10, scope: !1098)
!1098 = !DILexicalBlockFile(scope: !476, file: !402, discriminator: 1)
!1099 = !DILocation(line: 602, column: 20, scope: !476)
!1100 = !DILocation(line: 602, column: 43, scope: !476)
!1101 = !DILocation(line: 602, column: 49, scope: !476)
!1102 = !DILocation(line: 602, column: 60, scope: !480)
!1103 = !DILocation(line: 602, column: 68, scope: !480)
!1104 = !DILocation(line: 602, column: 60, scope: !476)
!1105 = !DILocation(line: 602, column: 86, scope: !1106)
!1106 = !DILexicalBlockFile(scope: !479, file: !402, discriminator: 2)
!1107 = !DILocation(line: 602, column: 92, scope: !479)
!1108 = !DILocation(line: 602, column: 98, scope: !479)
!1109 = !DILocation(line: 602, column: 112, scope: !479)
!1110 = !DILocation(line: 602, column: 117, scope: !1111)
!1111 = !DILexicalBlockFile(scope: !478, file: !402, discriminator: 4)
!1112 = !DILocation(line: 602, column: 127, scope: !478)
!1113 = !DILocation(line: 602, column: 157, scope: !478)
!1114 = !DILocation(line: 602, column: 175, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !478, file: !402, line: 602, column: 172)
!1116 = !DILocation(line: 602, column: 192, scope: !1115)
!1117 = !DILocation(line: 602, column: 172, scope: !1115)
!1118 = !DILocation(line: 602, column: 202, scope: !1115)
!1119 = !DILocation(line: 602, column: 172, scope: !478)
!1120 = !DILocation(line: 602, column: 172, scope: !1121)
!1121 = !DILexicalBlockFile(scope: !478, file: !402, discriminator: 5)
!1122 = !DILocation(line: 602, column: 233, scope: !1123)
!1123 = !DILexicalBlockFile(scope: !1115, file: !402, discriminator: 6)
!1124 = !DILocation(line: 602, column: 251, scope: !1115)
!1125 = !DILocation(line: 602, column: 261, scope: !1115)
!1126 = !DILocation(line: 602, column: 286, scope: !1115)
!1127 = !DILocation(line: 602, column: 217, scope: !1115)
!1128 = !DILocation(line: 602, column: 305, scope: !1129)
!1129 = !DILexicalBlockFile(scope: !479, file: !402, discriminator: 7)
!1130 = !DILocation(line: 602, column: 305, scope: !478)
!1131 = !DILocation(line: 602, column: 305, scope: !1132)
!1132 = !DILexicalBlockFile(scope: !478, file: !402, discriminator: 8)
!1133 = !DILocation(line: 602, column: 318, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !479, file: !402, discriminator: 9)
!1135 = !DILocation(line: 602, column: 320, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !1137, file: !402, discriminator: 10)
!1137 = !DILexicalBlockFile(scope: !470, file: !402, discriminator: 3)
!1138 = !DILocation(line: 602, column: 320, scope: !476)
!1139 = !DILocation(line: 603, column: 5, scope: !470)
!1140 = !DILocation(line: 407, column: 29, scope: !481)
!1141 = !DILocation(line: 409, column: 5, scope: !481)
!1142 = !DILocation(line: 409, column: 15, scope: !481)
!1143 = !DILocation(line: 411, column: 9, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !481, file: !402, line: 411, column: 9)
!1145 = !DILocation(line: 411, column: 15, scope: !1144)
!1146 = !DILocation(line: 411, column: 18, scope: !1144)
!1147 = !DILocation(line: 411, column: 9, scope: !481)
!1148 = !DILocation(line: 411, column: 42, scope: !1149)
!1149 = !DILexicalBlockFile(scope: !1150, file: !402, discriminator: 1)
!1150 = distinct !DILexicalBlock(scope: !1144, file: !402, line: 411, column: 24)
!1151 = !DILocation(line: 411, column: 26, scope: !1150)
!1152 = !DILocation(line: 411, column: 102, scope: !1150)
!1153 = !DILocation(line: 412, column: 9, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !481, file: !402, line: 412, column: 9)
!1155 = !DILocation(line: 412, column: 15, scope: !1154)
!1156 = !{!849, !789, i64 73}
!1157 = !DILocation(line: 412, column: 9, scope: !481)
!1158 = !DILocation(line: 412, column: 41, scope: !1159)
!1159 = !DILexicalBlockFile(scope: !1160, file: !402, discriminator: 1)
!1160 = distinct !DILexicalBlock(scope: !1154, file: !402, line: 412, column: 23)
!1161 = !DILocation(line: 412, column: 25, scope: !1160)
!1162 = !DILocation(line: 412, column: 92, scope: !1160)
!1163 = !DILocation(line: 413, column: 17, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !481, file: !402, line: 413, column: 9)
!1165 = !DILocation(line: 413, column: 9, scope: !1164)
!1166 = !DILocation(line: 413, column: 23, scope: !1164)
!1167 = !DILocation(line: 413, column: 9, scope: !481)
!1168 = !DILocation(line: 413, column: 30, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !1170, file: !402, discriminator: 1)
!1170 = distinct !DILexicalBlock(scope: !1164, file: !402, line: 413, column: 28)
!1171 = !DILocation(line: 413, column: 30, scope: !1170)
!1172 = !DILocation(line: 415, column: 23, scope: !492)
!1173 = !DILocation(line: 415, column: 11, scope: !492)
!1174 = !DILocation(line: 415, column: 31, scope: !492)
!1175 = !DILocation(line: 415, column: 40, scope: !492)
!1176 = !DILocation(line: 415, column: 9, scope: !481)
!1177 = !DILocation(line: 417, column: 35, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !492, file: !402, line: 415, column: 61)
!1179 = !DILocation(line: 417, column: 16, scope: !1178)
!1180 = !DILocation(line: 417, column: 14, scope: !1178)
!1181 = !DILocation(line: 418, column: 5, scope: !1178)
!1182 = !DILocation(line: 421, column: 55, scope: !491)
!1183 = !DILocation(line: 421, column: 43, scope: !491)
!1184 = !DILocation(line: 422, column: 44, scope: !491)
!1185 = !DILocation(line: 421, column: 16, scope: !491)
!1186 = !DILocation(line: 421, column: 14, scope: !491)
!1187 = !DILocation(line: 423, column: 13, scope: !490)
!1188 = !DILocation(line: 423, column: 18, scope: !490)
!1189 = !DILocation(line: 423, column: 39, scope: !1190)
!1190 = !DILexicalBlockFile(scope: !490, file: !402, discriminator: 1)
!1191 = !DILocation(line: 423, column: 47, scope: !490)
!1192 = !DILocation(line: 423, column: 58, scope: !490)
!1193 = !{!903, !808, i64 168}
!1194 = !DILocation(line: 423, column: 67, scope: !490)
!1195 = !DILocation(line: 423, column: 84, scope: !490)
!1196 = !DILocation(line: 423, column: 13, scope: !491)
!1197 = !DILocation(line: 424, column: 26, scope: !489)
!1198 = !DILocation(line: 426, column: 56, scope: !489)
!1199 = !DILocation(line: 426, column: 64, scope: !489)
!1200 = !DILocation(line: 426, column: 74, scope: !489)
!1201 = !{!903, !788, i64 24}
!1202 = !DILocation(line: 424, column: 13, scope: !489)
!1203 = !DILocation(line: 427, column: 13, scope: !489)
!1204 = !DILocation(line: 427, column: 18, scope: !1205)
!1205 = !DILexicalBlockFile(scope: !488, file: !402, discriminator: 1)
!1206 = !DILocation(line: 427, column: 28, scope: !488)
!1207 = !DILocation(line: 427, column: 58, scope: !488)
!1208 = !DILocation(line: 427, column: 73, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !488, file: !402, line: 427, column: 70)
!1210 = !DILocation(line: 427, column: 90, scope: !1209)
!1211 = !DILocation(line: 427, column: 70, scope: !1209)
!1212 = !DILocation(line: 427, column: 100, scope: !1209)
!1213 = !DILocation(line: 427, column: 70, scope: !488)
!1214 = !DILocation(line: 427, column: 70, scope: !1215)
!1215 = !DILexicalBlockFile(scope: !488, file: !402, discriminator: 2)
!1216 = !DILocation(line: 427, column: 131, scope: !1217)
!1217 = !DILexicalBlockFile(scope: !1209, file: !402, discriminator: 3)
!1218 = !DILocation(line: 427, column: 149, scope: !1209)
!1219 = !DILocation(line: 427, column: 159, scope: !1209)
!1220 = !DILocation(line: 427, column: 184, scope: !1209)
!1221 = !DILocation(line: 427, column: 115, scope: !1209)
!1222 = !DILocation(line: 427, column: 203, scope: !1223)
!1223 = !DILexicalBlockFile(scope: !489, file: !402, discriminator: 4)
!1224 = !DILocation(line: 427, column: 203, scope: !488)
!1225 = !DILocation(line: 427, column: 203, scope: !1226)
!1226 = !DILexicalBlockFile(scope: !488, file: !402, discriminator: 5)
!1227 = !DILocation(line: 428, column: 13, scope: !489)
!1228 = !DILocation(line: 432, column: 9, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !481, file: !402, line: 432, column: 9)
!1230 = !DILocation(line: 432, column: 14, scope: !1229)
!1231 = !DILocation(line: 432, column: 9, scope: !481)
!1232 = !DILocation(line: 433, column: 9, scope: !1229)
!1233 = !DILocation(line: 435, column: 57, scope: !496)
!1234 = !DILocation(line: 435, column: 39, scope: !496)
!1235 = !DILocation(line: 435, column: 65, scope: !496)
!1236 = !{!1237, !808, i64 16}
!1237 = !{!"", !850, i64 0, !808, i64 16, !808, i64 24, !1238, i64 32, !788, i64 40}
!1238 = !{!"", !851, i64 0, !851, i64 0, !851, i64 0, !851, i64 0, !851, i64 0, !851, i64 1}
!1239 = !DILocation(line: 435, column: 73, scope: !496)
!1240 = !DILocation(line: 435, column: 9, scope: !481)
!1241 = !DILocation(line: 437, column: 9, scope: !495)
!1242 = !DILocation(line: 437, column: 14, scope: !1243)
!1243 = !DILexicalBlockFile(scope: !494, file: !402, discriminator: 1)
!1244 = !DILocation(line: 437, column: 24, scope: !494)
!1245 = !DILocation(line: 437, column: 54, scope: !494)
!1246 = !DILocation(line: 437, column: 69, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !494, file: !402, line: 437, column: 66)
!1248 = !DILocation(line: 437, column: 86, scope: !1247)
!1249 = !DILocation(line: 437, column: 66, scope: !1247)
!1250 = !DILocation(line: 437, column: 96, scope: !1247)
!1251 = !DILocation(line: 437, column: 66, scope: !494)
!1252 = !DILocation(line: 437, column: 66, scope: !1253)
!1253 = !DILexicalBlockFile(scope: !494, file: !402, discriminator: 2)
!1254 = !DILocation(line: 437, column: 127, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1247, file: !402, discriminator: 3)
!1256 = !DILocation(line: 437, column: 145, scope: !1247)
!1257 = !DILocation(line: 437, column: 155, scope: !1247)
!1258 = !DILocation(line: 437, column: 180, scope: !1247)
!1259 = !DILocation(line: 437, column: 111, scope: !1247)
!1260 = !DILocation(line: 437, column: 199, scope: !1261)
!1261 = !DILexicalBlockFile(scope: !495, file: !402, discriminator: 4)
!1262 = !DILocation(line: 437, column: 199, scope: !494)
!1263 = !DILocation(line: 437, column: 199, scope: !1264)
!1264 = !DILexicalBlockFile(scope: !494, file: !402, discriminator: 5)
!1265 = !DILocation(line: 438, column: 9, scope: !495)
!1266 = !DILocation(line: 441, column: 12, scope: !481)
!1267 = !DILocation(line: 441, column: 5, scope: !481)
!1268 = !DILocation(line: 442, column: 1, scope: !481)
!1269 = !DILocation(line: 648, column: 25, scope: !678)
!1270 = !DILocation(line: 648, column: 41, scope: !678)
!1271 = !DILocation(line: 648, column: 57, scope: !678)
!1272 = !DILocation(line: 650, column: 5, scope: !678)
!1273 = !DILocation(line: 650, column: 11, scope: !678)
!1274 = !DILocation(line: 651, column: 5, scope: !678)
!1275 = !DILocation(line: 651, column: 15, scope: !678)
!1276 = !DILocation(line: 652, column: 5, scope: !678)
!1277 = !DILocation(line: 652, column: 15, scope: !678)
!1278 = !DILocation(line: 653, column: 5, scope: !678)
!1279 = !DILocation(line: 653, column: 11, scope: !678)
!1280 = !DILocation(line: 654, column: 5, scope: !678)
!1281 = !DILocation(line: 654, column: 16, scope: !678)
!1282 = !DILocation(line: 656, column: 45, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !678, file: !402, line: 656, column: 9)
!1284 = !DILocation(line: 656, column: 51, scope: !1283)
!1285 = !DILocation(line: 656, column: 73, scope: !1283)
!1286 = !DILocation(line: 656, column: 10, scope: !1283)
!1287 = !DILocation(line: 656, column: 9, scope: !678)
!1288 = !DILocation(line: 658, column: 9, scope: !1283)
!1289 = !DILocation(line: 664, column: 9, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !678, file: !402, line: 664, column: 9)
!1291 = !DILocation(line: 664, column: 21, scope: !1290)
!1292 = !DILocation(line: 664, column: 9, scope: !678)
!1293 = !DILocation(line: 665, column: 17, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1290, file: !402, line: 664, column: 43)
!1295 = !DILocation(line: 666, column: 5, scope: !1294)
!1296 = !DILocation(line: 667, column: 14, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1290, file: !402, line: 667, column: 14)
!1298 = !DILocation(line: 667, column: 14, scope: !1290)
!1299 = !DILocation(line: 668, column: 31, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !402, line: 668, column: 13)
!1301 = distinct !DILexicalBlock(scope: !1297, file: !402, line: 667, column: 27)
!1302 = !DILocation(line: 668, column: 46, scope: !1300)
!1303 = !DILocation(line: 668, column: 57, scope: !1300)
!1304 = !DILocation(line: 668, column: 66, scope: !1300)
!1305 = !DILocation(line: 668, column: 83, scope: !1300)
!1306 = !DILocation(line: 668, column: 13, scope: !1301)
!1307 = !DILocation(line: 669, column: 26, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1300, file: !402, line: 668, column: 90)
!1309 = !DILocation(line: 671, column: 40, scope: !1308)
!1310 = !DILocation(line: 671, column: 55, scope: !1308)
!1311 = !DILocation(line: 671, column: 65, scope: !1308)
!1312 = !DILocation(line: 669, column: 13, scope: !1308)
!1313 = !DILocation(line: 672, column: 13, scope: !1308)
!1314 = !DILocation(line: 674, column: 36, scope: !1301)
!1315 = !DILocation(line: 674, column: 19, scope: !1301)
!1316 = !DILocation(line: 674, column: 17, scope: !1301)
!1317 = !DILocation(line: 675, column: 13, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1301, file: !402, line: 675, column: 13)
!1319 = !DILocation(line: 675, column: 21, scope: !1318)
!1320 = !DILocation(line: 675, column: 13, scope: !1301)
!1321 = !DILocation(line: 676, column: 13, scope: !1318)
!1322 = !DILocation(line: 677, column: 5, scope: !1301)
!1323 = !DILocation(line: 679, column: 9, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !678, file: !402, line: 679, column: 9)
!1325 = !DILocation(line: 679, column: 17, scope: !1324)
!1326 = !DILocation(line: 679, column: 20, scope: !1327)
!1327 = !DILexicalBlockFile(scope: !1324, file: !402, discriminator: 1)
!1328 = !{!789, !789, i64 0}
!1329 = !DILocation(line: 679, column: 31, scope: !1324)
!1330 = !DILocation(line: 680, column: 9, scope: !1324)
!1331 = !DILocation(line: 680, column: 14, scope: !1327)
!1332 = !DILocation(line: 680, column: 25, scope: !1324)
!1333 = !DILocation(line: 680, column: 33, scope: !1324)
!1334 = !DILocation(line: 680, column: 36, scope: !1335)
!1335 = !DILexicalBlockFile(scope: !1324, file: !402, discriminator: 2)
!1336 = !DILocation(line: 680, column: 47, scope: !1324)
!1337 = !DILocation(line: 681, column: 9, scope: !1324)
!1338 = !DILocation(line: 681, column: 14, scope: !1327)
!1339 = !DILocation(line: 681, column: 25, scope: !1324)
!1340 = !DILocation(line: 681, column: 33, scope: !1324)
!1341 = !DILocation(line: 681, column: 36, scope: !1335)
!1342 = !DILocation(line: 681, column: 47, scope: !1324)
!1343 = !DILocation(line: 682, column: 9, scope: !1324)
!1344 = !DILocation(line: 682, column: 14, scope: !1327)
!1345 = !DILocation(line: 682, column: 25, scope: !1324)
!1346 = !DILocation(line: 682, column: 33, scope: !1324)
!1347 = !DILocation(line: 682, column: 36, scope: !1335)
!1348 = !DILocation(line: 682, column: 47, scope: !1324)
!1349 = !DILocation(line: 682, column: 55, scope: !1324)
!1350 = !DILocation(line: 682, column: 58, scope: !1351)
!1351 = !DILexicalBlockFile(scope: !1324, file: !402, discriminator: 3)
!1352 = !DILocation(line: 682, column: 69, scope: !1324)
!1353 = !DILocation(line: 679, column: 9, scope: !678)
!1354 = !DILocation(line: 683, column: 22, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1324, file: !402, line: 682, column: 79)
!1356 = !DILocation(line: 684, column: 51, scope: !1355)
!1357 = !DILocation(line: 683, column: 9, scope: !1355)
!1358 = !DILocation(line: 685, column: 9, scope: !1355)
!1359 = !DILocation(line: 687, column: 9, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !678, file: !402, line: 687, column: 9)
!1361 = !DILocation(line: 687, column: 15, scope: !1360)
!1362 = !DILocation(line: 687, column: 18, scope: !1363)
!1363 = !DILexicalBlockFile(scope: !1360, file: !402, discriminator: 1)
!1364 = !DILocation(line: 687, column: 24, scope: !1360)
!1365 = !DILocation(line: 687, column: 45, scope: !1360)
!1366 = !DILocation(line: 687, column: 66, scope: !1367)
!1367 = !DILexicalBlockFile(scope: !1360, file: !402, discriminator: 2)
!1368 = !DILocation(line: 687, column: 75, scope: !1360)
!1369 = !DILocation(line: 687, column: 86, scope: !1360)
!1370 = !DILocation(line: 687, column: 95, scope: !1360)
!1371 = !DILocation(line: 687, column: 112, scope: !1360)
!1372 = !DILocation(line: 687, column: 9, scope: !678)
!1373 = !DILocation(line: 688, column: 22, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1360, file: !402, line: 687, column: 119)
!1375 = !DILocation(line: 690, column: 36, scope: !1374)
!1376 = !DILocation(line: 690, column: 45, scope: !1374)
!1377 = !DILocation(line: 690, column: 55, scope: !1374)
!1378 = !DILocation(line: 688, column: 9, scope: !1374)
!1379 = !DILocation(line: 691, column: 9, scope: !1374)
!1380 = !DILocation(line: 694, column: 5, scope: !678)
!1381 = !DILocation(line: 694, column: 11, scope: !678)
!1382 = !DILocation(line: 694, column: 14, scope: !678)
!1383 = !DILocation(line: 696, column: 22, scope: !678)
!1384 = !DILocation(line: 696, column: 28, scope: !678)
!1385 = !DILocation(line: 696, column: 5, scope: !678)
!1386 = !DILocation(line: 697, column: 5, scope: !678)
!1387 = !DILocation(line: 697, column: 10, scope: !1388)
!1388 = !DILexicalBlockFile(scope: !694, file: !402, discriminator: 1)
!1389 = !DILocation(line: 697, column: 20, scope: !694)
!1390 = !DILocation(line: 697, column: 43, scope: !694)
!1391 = !DILocation(line: 697, column: 49, scope: !694)
!1392 = !DILocation(line: 697, column: 62, scope: !698)
!1393 = !DILocation(line: 697, column: 70, scope: !698)
!1394 = !DILocation(line: 697, column: 62, scope: !694)
!1395 = !DILocation(line: 697, column: 88, scope: !1396)
!1396 = !DILexicalBlockFile(scope: !697, file: !402, discriminator: 2)
!1397 = !DILocation(line: 697, column: 94, scope: !697)
!1398 = !DILocation(line: 697, column: 102, scope: !697)
!1399 = !DILocation(line: 697, column: 116, scope: !697)
!1400 = !DILocation(line: 697, column: 121, scope: !1401)
!1401 = !DILexicalBlockFile(scope: !696, file: !402, discriminator: 4)
!1402 = !DILocation(line: 697, column: 131, scope: !696)
!1403 = !DILocation(line: 697, column: 161, scope: !696)
!1404 = !DILocation(line: 697, column: 179, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !696, file: !402, line: 697, column: 176)
!1406 = !DILocation(line: 697, column: 196, scope: !1405)
!1407 = !DILocation(line: 697, column: 176, scope: !1405)
!1408 = !DILocation(line: 697, column: 206, scope: !1405)
!1409 = !DILocation(line: 697, column: 176, scope: !696)
!1410 = !DILocation(line: 697, column: 176, scope: !1411)
!1411 = !DILexicalBlockFile(scope: !696, file: !402, discriminator: 5)
!1412 = !DILocation(line: 697, column: 237, scope: !1413)
!1413 = !DILexicalBlockFile(scope: !1405, file: !402, discriminator: 6)
!1414 = !DILocation(line: 697, column: 255, scope: !1405)
!1415 = !DILocation(line: 697, column: 265, scope: !1405)
!1416 = !DILocation(line: 697, column: 290, scope: !1405)
!1417 = !DILocation(line: 697, column: 221, scope: !1405)
!1418 = !DILocation(line: 697, column: 309, scope: !1419)
!1419 = !DILexicalBlockFile(scope: !697, file: !402, discriminator: 7)
!1420 = !DILocation(line: 697, column: 309, scope: !696)
!1421 = !DILocation(line: 697, column: 309, scope: !1422)
!1422 = !DILexicalBlockFile(scope: !696, file: !402, discriminator: 8)
!1423 = !DILocation(line: 697, column: 322, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !697, file: !402, discriminator: 9)
!1425 = !DILocation(line: 697, column: 324, scope: !1426)
!1426 = !DILexicalBlockFile(scope: !1427, file: !402, discriminator: 10)
!1427 = !DILexicalBlockFile(scope: !678, file: !402, discriminator: 3)
!1428 = !DILocation(line: 697, column: 324, scope: !694)
!1429 = !DILocation(line: 697, column: 324, scope: !1430)
!1430 = !DILexicalBlockFile(scope: !694, file: !402, discriminator: 11)
!1431 = !DILocation(line: 698, column: 5, scope: !678)
!1432 = !DILocation(line: 698, column: 10, scope: !1433)
!1433 = !DILexicalBlockFile(scope: !700, file: !402, discriminator: 1)
!1434 = !DILocation(line: 698, column: 20, scope: !700)
!1435 = !DILocation(line: 698, column: 43, scope: !700)
!1436 = !DILocation(line: 698, column: 49, scope: !700)
!1437 = !DILocation(line: 698, column: 63, scope: !704)
!1438 = !DILocation(line: 698, column: 71, scope: !704)
!1439 = !DILocation(line: 698, column: 63, scope: !700)
!1440 = !DILocation(line: 698, column: 89, scope: !1441)
!1441 = !DILexicalBlockFile(scope: !703, file: !402, discriminator: 2)
!1442 = !DILocation(line: 698, column: 95, scope: !703)
!1443 = !DILocation(line: 698, column: 104, scope: !703)
!1444 = !DILocation(line: 698, column: 118, scope: !703)
!1445 = !DILocation(line: 698, column: 123, scope: !1446)
!1446 = !DILexicalBlockFile(scope: !702, file: !402, discriminator: 4)
!1447 = !DILocation(line: 698, column: 133, scope: !702)
!1448 = !DILocation(line: 698, column: 163, scope: !702)
!1449 = !DILocation(line: 698, column: 181, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !702, file: !402, line: 698, column: 178)
!1451 = !DILocation(line: 698, column: 198, scope: !1450)
!1452 = !DILocation(line: 698, column: 178, scope: !1450)
!1453 = !DILocation(line: 698, column: 208, scope: !1450)
!1454 = !DILocation(line: 698, column: 178, scope: !702)
!1455 = !DILocation(line: 698, column: 178, scope: !1456)
!1456 = !DILexicalBlockFile(scope: !702, file: !402, discriminator: 5)
!1457 = !DILocation(line: 698, column: 239, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !1450, file: !402, discriminator: 6)
!1459 = !DILocation(line: 698, column: 257, scope: !1450)
!1460 = !DILocation(line: 698, column: 267, scope: !1450)
!1461 = !DILocation(line: 698, column: 292, scope: !1450)
!1462 = !DILocation(line: 698, column: 223, scope: !1450)
!1463 = !DILocation(line: 698, column: 311, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !703, file: !402, discriminator: 7)
!1465 = !DILocation(line: 698, column: 311, scope: !702)
!1466 = !DILocation(line: 698, column: 311, scope: !1467)
!1467 = !DILexicalBlockFile(scope: !702, file: !402, discriminator: 8)
!1468 = !DILocation(line: 698, column: 324, scope: !1469)
!1469 = !DILexicalBlockFile(scope: !703, file: !402, discriminator: 9)
!1470 = !DILocation(line: 698, column: 326, scope: !1426)
!1471 = !DILocation(line: 698, column: 326, scope: !700)
!1472 = !DILocation(line: 698, column: 326, scope: !1473)
!1473 = !DILexicalBlockFile(scope: !700, file: !402, discriminator: 11)
!1474 = !DILocation(line: 699, column: 5, scope: !678)
!1475 = !DILocation(line: 699, column: 10, scope: !1476)
!1476 = !DILexicalBlockFile(scope: !706, file: !402, discriminator: 1)
!1477 = !DILocation(line: 699, column: 20, scope: !706)
!1478 = !DILocation(line: 699, column: 43, scope: !706)
!1479 = !DILocation(line: 699, column: 49, scope: !706)
!1480 = !DILocation(line: 699, column: 63, scope: !710)
!1481 = !DILocation(line: 699, column: 71, scope: !710)
!1482 = !DILocation(line: 699, column: 63, scope: !706)
!1483 = !DILocation(line: 699, column: 89, scope: !1484)
!1484 = !DILexicalBlockFile(scope: !709, file: !402, discriminator: 2)
!1485 = !DILocation(line: 699, column: 95, scope: !709)
!1486 = !DILocation(line: 699, column: 104, scope: !709)
!1487 = !DILocation(line: 699, column: 118, scope: !709)
!1488 = !DILocation(line: 699, column: 123, scope: !1489)
!1489 = !DILexicalBlockFile(scope: !708, file: !402, discriminator: 4)
!1490 = !DILocation(line: 699, column: 133, scope: !708)
!1491 = !DILocation(line: 699, column: 163, scope: !708)
!1492 = !DILocation(line: 699, column: 181, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !708, file: !402, line: 699, column: 178)
!1494 = !DILocation(line: 699, column: 198, scope: !1493)
!1495 = !DILocation(line: 699, column: 178, scope: !1493)
!1496 = !DILocation(line: 699, column: 208, scope: !1493)
!1497 = !DILocation(line: 699, column: 178, scope: !708)
!1498 = !DILocation(line: 699, column: 178, scope: !1499)
!1499 = !DILexicalBlockFile(scope: !708, file: !402, discriminator: 5)
!1500 = !DILocation(line: 699, column: 239, scope: !1501)
!1501 = !DILexicalBlockFile(scope: !1493, file: !402, discriminator: 6)
!1502 = !DILocation(line: 699, column: 257, scope: !1493)
!1503 = !DILocation(line: 699, column: 267, scope: !1493)
!1504 = !DILocation(line: 699, column: 292, scope: !1493)
!1505 = !DILocation(line: 699, column: 223, scope: !1493)
!1506 = !DILocation(line: 699, column: 311, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !709, file: !402, discriminator: 7)
!1508 = !DILocation(line: 699, column: 311, scope: !708)
!1509 = !DILocation(line: 699, column: 311, scope: !1510)
!1510 = !DILexicalBlockFile(scope: !708, file: !402, discriminator: 8)
!1511 = !DILocation(line: 699, column: 324, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !709, file: !402, discriminator: 9)
!1513 = !DILocation(line: 699, column: 326, scope: !1426)
!1514 = !DILocation(line: 699, column: 326, scope: !706)
!1515 = !DILocation(line: 699, column: 326, scope: !1516)
!1516 = !DILexicalBlockFile(scope: !706, file: !402, discriminator: 11)
!1517 = !DILocation(line: 704, column: 9, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !678, file: !402, line: 704, column: 9)
!1519 = !DILocation(line: 704, column: 9, scope: !678)
!1520 = !DILocation(line: 705, column: 45, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1518, file: !402, line: 704, column: 18)
!1522 = !DILocation(line: 705, column: 24, scope: !1521)
!1523 = !DILocation(line: 705, column: 9, scope: !1521)
!1524 = !DILocation(line: 705, column: 15, scope: !1521)
!1525 = !DILocation(line: 705, column: 22, scope: !1521)
!1526 = !DILocation(line: 706, column: 13, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1521, file: !402, line: 706, column: 13)
!1528 = !DILocation(line: 706, column: 19, scope: !1527)
!1529 = !DILocation(line: 706, column: 26, scope: !1527)
!1530 = !DILocation(line: 706, column: 13, scope: !1521)
!1531 = !DILocation(line: 707, column: 13, scope: !1527)
!1532 = !DILocation(line: 708, column: 5, scope: !1521)
!1533 = !DILocation(line: 709, column: 28, scope: !678)
!1534 = !DILocation(line: 709, column: 36, scope: !678)
!1535 = !DILocation(line: 709, column: 50, scope: !678)
!1536 = !DILocation(line: 709, column: 53, scope: !1537)
!1537 = !DILexicalBlockFile(scope: !678, file: !402, discriminator: 2)
!1538 = !DILocation(line: 709, column: 64, scope: !678)
!1539 = !DILocation(line: 709, column: 50, scope: !1540)
!1540 = !DILexicalBlockFile(scope: !1541, file: !402, discriminator: 3)
!1541 = !DILexicalBlockFile(scope: !678, file: !402, discriminator: 1)
!1542 = !DILocation(line: 709, column: 27, scope: !678)
!1543 = !DILocation(line: 709, column: 5, scope: !678)
!1544 = !DILocation(line: 709, column: 11, scope: !678)
!1545 = !DILocation(line: 709, column: 25, scope: !678)
!1546 = !{!849, !789, i64 74}
!1547 = !DILocation(line: 710, column: 28, scope: !678)
!1548 = !DILocation(line: 710, column: 36, scope: !678)
!1549 = !DILocation(line: 710, column: 27, scope: !678)
!1550 = !DILocation(line: 710, column: 5, scope: !678)
!1551 = !DILocation(line: 710, column: 11, scope: !678)
!1552 = !DILocation(line: 710, column: 25, scope: !678)
!1553 = !{!849, !789, i64 75}
!1554 = !DILocation(line: 717, column: 9, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !678, file: !402, line: 717, column: 9)
!1556 = !DILocation(line: 717, column: 17, scope: !1555)
!1557 = !DILocation(line: 717, column: 31, scope: !1555)
!1558 = !DILocation(line: 717, column: 34, scope: !1559)
!1559 = !DILexicalBlockFile(scope: !1555, file: !402, discriminator: 1)
!1560 = !DILocation(line: 717, column: 45, scope: !1555)
!1561 = !DILocation(line: 717, column: 9, scope: !678)
!1562 = !DILocation(line: 718, column: 25, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1555, file: !402, line: 717, column: 54)
!1564 = !DILocation(line: 718, column: 31, scope: !1563)
!1565 = !DILocation(line: 718, column: 9, scope: !1563)
!1566 = !DILocation(line: 718, column: 15, scope: !1563)
!1567 = !DILocation(line: 718, column: 23, scope: !1563)
!1568 = !DILocation(line: 719, column: 25, scope: !1563)
!1569 = !DILocation(line: 719, column: 31, scope: !1563)
!1570 = !DILocation(line: 719, column: 42, scope: !1563)
!1571 = !DILocation(line: 719, column: 51, scope: !1563)
!1572 = !DILocation(line: 720, column: 5, scope: !1563)
!1573 = !DILocation(line: 722, column: 9, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !678, file: !402, line: 722, column: 9)
!1575 = !DILocation(line: 722, column: 15, scope: !1574)
!1576 = !DILocation(line: 722, column: 9, scope: !678)
!1577 = !DILocation(line: 725, column: 44, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1574, file: !402, line: 722, column: 30)
!1579 = !DILocation(line: 725, column: 50, scope: !1578)
!1580 = !DILocation(line: 725, column: 38, scope: !1578)
!1581 = !DILocation(line: 723, column: 25, scope: !1578)
!1582 = !DILocation(line: 723, column: 9, scope: !1578)
!1583 = !DILocation(line: 723, column: 15, scope: !1578)
!1584 = !DILocation(line: 723, column: 23, scope: !1578)
!1585 = !DILocation(line: 726, column: 13, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1578, file: !402, line: 726, column: 13)
!1587 = !DILocation(line: 726, column: 19, scope: !1586)
!1588 = !DILocation(line: 726, column: 27, scope: !1586)
!1589 = !DILocation(line: 726, column: 13, scope: !1578)
!1590 = !DILocation(line: 727, column: 13, scope: !1586)
!1591 = !DILocation(line: 728, column: 5, scope: !1578)
!1592 = !DILocation(line: 732, column: 5, scope: !678)
!1593 = !DILocation(line: 732, column: 11, scope: !678)
!1594 = !DILocation(line: 732, column: 23, scope: !678)
!1595 = !{!849, !808, i64 32}
!1596 = !DILocation(line: 733, column: 9, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !678, file: !402, line: 733, column: 9)
!1598 = !DILocation(line: 733, column: 15, scope: !1597)
!1599 = !DILocation(line: 733, column: 18, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !1597, file: !402, discriminator: 1)
!1601 = !DILocation(line: 733, column: 24, scope: !1597)
!1602 = !DILocation(line: 733, column: 9, scope: !678)
!1603 = !DILocation(line: 734, column: 41, scope: !1597)
!1604 = !DILocation(line: 734, column: 21, scope: !1597)
!1605 = !DILocation(line: 734, column: 19, scope: !1597)
!1606 = !{!808, !808, i64 0}
!1607 = !DILocation(line: 734, column: 9, scope: !1597)
!1608 = !DILocation(line: 736, column: 19, scope: !1597)
!1609 = !DILocation(line: 737, column: 9, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !678, file: !402, line: 737, column: 9)
!1611 = !DILocation(line: 737, column: 19, scope: !1610)
!1612 = !DILocation(line: 737, column: 9, scope: !678)
!1613 = !DILocation(line: 740, column: 27, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !402, line: 740, column: 13)
!1615 = distinct !DILexicalBlock(scope: !1610, file: !402, line: 737, column: 24)
!1616 = !DILocation(line: 740, column: 13, scope: !1614)
!1617 = !DILocation(line: 740, column: 36, scope: !1614)
!1618 = !DILocation(line: 740, column: 13, scope: !1615)
!1619 = !DILocation(line: 741, column: 13, scope: !1614)
!1620 = !DILocation(line: 742, column: 9, scope: !1615)
!1621 = !DILocation(line: 742, column: 15, scope: !1615)
!1622 = !DILocation(line: 742, column: 21, scope: !1615)
!1623 = !{!849, !851, i64 48}
!1624 = !DILocation(line: 743, column: 9, scope: !1615)
!1625 = !DILocation(line: 743, column: 15, scope: !1615)
!1626 = !DILocation(line: 743, column: 19, scope: !1615)
!1627 = !{!849, !808, i64 24}
!1628 = !DILocation(line: 744, column: 23, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1615, file: !402, line: 744, column: 13)
!1630 = !DILocation(line: 744, column: 29, scope: !1629)
!1631 = !DILocation(line: 744, column: 13, scope: !1629)
!1632 = !DILocation(line: 744, column: 36, scope: !1629)
!1633 = !DILocation(line: 744, column: 13, scope: !1615)
!1634 = !DILocation(line: 745, column: 13, scope: !1629)
!1635 = !DILocation(line: 746, column: 5, scope: !1615)
!1636 = !DILocation(line: 749, column: 27, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !402, line: 749, column: 13)
!1638 = distinct !DILexicalBlock(scope: !1610, file: !402, line: 747, column: 10)
!1639 = !DILocation(line: 749, column: 13, scope: !1637)
!1640 = !DILocation(line: 749, column: 36, scope: !1637)
!1641 = !DILocation(line: 749, column: 13, scope: !1638)
!1642 = !DILocation(line: 750, column: 13, scope: !1637)
!1643 = !DILocation(line: 751, column: 27, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1638, file: !402, line: 751, column: 13)
!1645 = !DILocation(line: 751, column: 33, scope: !1644)
!1646 = !DILocation(line: 751, column: 13, scope: !1644)
!1647 = !DILocation(line: 751, column: 13, scope: !1638)
!1648 = !DILocation(line: 752, column: 13, scope: !1644)
!1649 = !DILocation(line: 753, column: 9, scope: !1638)
!1650 = !DILocation(line: 753, column: 15, scope: !1638)
!1651 = !DILocation(line: 753, column: 21, scope: !1638)
!1652 = !DILocation(line: 755, column: 5, scope: !678)
!1653 = !DILocation(line: 755, column: 11, scope: !678)
!1654 = !DILocation(line: 755, column: 15, scope: !678)
!1655 = !DILocation(line: 757, column: 5, scope: !678)
!1656 = !DILocation(line: 757, column: 11, scope: !678)
!1657 = !DILocation(line: 757, column: 18, scope: !678)
!1658 = !DILocation(line: 758, column: 5, scope: !678)
!1659 = !DILocation(line: 758, column: 11, scope: !678)
!1660 = !DILocation(line: 758, column: 14, scope: !678)
!1661 = !DILocation(line: 759, column: 5, scope: !678)
!1662 = !DILocation(line: 760, column: 1, scope: !678)
!1663 = !DILocation(line: 626, column: 28, scope: !711)
!1664 = !DILocation(line: 626, column: 44, scope: !711)
!1665 = !DILocation(line: 626, column: 60, scope: !711)
!1666 = !DILocation(line: 628, column: 5, scope: !711)
!1667 = !DILocation(line: 628, column: 15, scope: !711)
!1668 = !DILocation(line: 631, column: 24, scope: !711)
!1669 = !DILocation(line: 631, column: 30, scope: !711)
!1670 = !{!903, !788, i64 304}
!1671 = !DILocation(line: 631, column: 39, scope: !711)
!1672 = !DILocation(line: 631, column: 12, scope: !711)
!1673 = !DILocation(line: 631, column: 10, scope: !711)
!1674 = !DILocation(line: 632, column: 9, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !711, file: !402, line: 632, column: 9)
!1676 = !DILocation(line: 632, column: 14, scope: !1675)
!1677 = !DILocation(line: 632, column: 9, scope: !711)
!1678 = !DILocation(line: 633, column: 9, scope: !1675)
!1679 = !DILocation(line: 638, column: 28, scope: !711)
!1680 = !DILocation(line: 638, column: 17, scope: !711)
!1681 = !DILocation(line: 638, column: 5, scope: !711)
!1682 = !DILocation(line: 638, column: 11, scope: !711)
!1683 = !DILocation(line: 638, column: 15, scope: !711)
!1684 = !DILocation(line: 639, column: 9, scope: !724)
!1685 = !DILocation(line: 639, column: 15, scope: !724)
!1686 = !DILocation(line: 639, column: 19, scope: !724)
!1687 = !DILocation(line: 639, column: 9, scope: !711)
!1688 = !DILocation(line: 640, column: 9, scope: !723)
!1689 = !DILocation(line: 640, column: 14, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !722, file: !402, discriminator: 1)
!1691 = !DILocation(line: 640, column: 24, scope: !722)
!1692 = !DILocation(line: 640, column: 54, scope: !722)
!1693 = !DILocation(line: 640, column: 41, scope: !722)
!1694 = !DILocation(line: 640, column: 69, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !722, file: !402, line: 640, column: 66)
!1696 = !DILocation(line: 640, column: 86, scope: !1695)
!1697 = !DILocation(line: 640, column: 66, scope: !1695)
!1698 = !DILocation(line: 640, column: 96, scope: !1695)
!1699 = !DILocation(line: 640, column: 66, scope: !722)
!1700 = !DILocation(line: 640, column: 66, scope: !1701)
!1701 = !DILexicalBlockFile(scope: !722, file: !402, discriminator: 2)
!1702 = !DILocation(line: 640, column: 127, scope: !1703)
!1703 = !DILexicalBlockFile(scope: !1695, file: !402, discriminator: 3)
!1704 = !DILocation(line: 640, column: 145, scope: !1695)
!1705 = !DILocation(line: 640, column: 155, scope: !1695)
!1706 = !DILocation(line: 640, column: 180, scope: !1695)
!1707 = !DILocation(line: 640, column: 111, scope: !1695)
!1708 = !DILocation(line: 640, column: 199, scope: !1709)
!1709 = !DILexicalBlockFile(scope: !723, file: !402, discriminator: 4)
!1710 = !DILocation(line: 640, column: 199, scope: !722)
!1711 = !DILocation(line: 640, column: 199, scope: !1712)
!1712 = !DILexicalBlockFile(scope: !722, file: !402, discriminator: 5)
!1713 = !DILocation(line: 641, column: 16, scope: !723)
!1714 = !DILocation(line: 641, column: 9, scope: !723)
!1715 = !DILocation(line: 644, column: 24, scope: !711)
!1716 = !DILocation(line: 644, column: 12, scope: !711)
!1717 = !DILocation(line: 644, column: 5, scope: !711)
!1718 = !DILocation(line: 645, column: 1, scope: !711)
!1719 = !DILocation(line: 140, column: 19, scope: !497)
!1720 = !DILocation(line: 142, column: 5, scope: !497)
!1721 = !DILocation(line: 142, column: 16, scope: !497)
!1722 = !DILocation(line: 143, column: 5, scope: !497)
!1723 = !DILocation(line: 143, column: 15, scope: !497)
!1724 = !DILocation(line: 145, column: 9, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !497, file: !402, line: 145, column: 9)
!1726 = !DILocation(line: 145, column: 15, scope: !1725)
!1727 = !DILocation(line: 145, column: 21, scope: !1725)
!1728 = !DILocation(line: 145, column: 9, scope: !497)
!1729 = !DILocation(line: 146, column: 9, scope: !1725)
!1730 = !DILocation(line: 148, column: 5, scope: !497)
!1731 = !DILocation(line: 148, column: 11, scope: !497)
!1732 = !DILocation(line: 148, column: 17, scope: !497)
!1733 = !DILocation(line: 150, column: 36, scope: !497)
!1734 = !DILocation(line: 150, column: 42, scope: !497)
!1735 = !DILocation(line: 150, column: 20, scope: !497)
!1736 = !DILocation(line: 150, column: 18, scope: !497)
!1737 = !DILocation(line: 151, column: 9, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !497, file: !402, line: 151, column: 9)
!1739 = !DILocation(line: 151, column: 22, scope: !1738)
!1740 = !DILocation(line: 151, column: 9, scope: !497)
!1741 = !DILocation(line: 152, column: 9, scope: !1738)
!1742 = !DILocation(line: 157, column: 59, scope: !497)
!1743 = !DILocation(line: 157, column: 41, scope: !497)
!1744 = !DILocation(line: 157, column: 75, scope: !497)
!1745 = !DILocation(line: 157, column: 9, scope: !497)
!1746 = !DILocation(line: 158, column: 23, scope: !505)
!1747 = !DILocation(line: 158, column: 29, scope: !505)
!1748 = !DILocation(line: 158, column: 9, scope: !505)
!1749 = !DILocation(line: 158, column: 34, scope: !505)
!1750 = !DILocation(line: 158, column: 9, scope: !497)
!1751 = !DILocation(line: 159, column: 9, scope: !504)
!1752 = !DILocation(line: 159, column: 14, scope: !1753)
!1753 = !DILexicalBlockFile(scope: !503, file: !402, discriminator: 1)
!1754 = !DILocation(line: 159, column: 24, scope: !503)
!1755 = !DILocation(line: 159, column: 54, scope: !503)
!1756 = !DILocation(line: 159, column: 77, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !503, file: !402, line: 159, column: 74)
!1758 = !DILocation(line: 159, column: 94, scope: !1757)
!1759 = !DILocation(line: 159, column: 74, scope: !1757)
!1760 = !DILocation(line: 159, column: 104, scope: !1757)
!1761 = !DILocation(line: 159, column: 74, scope: !503)
!1762 = !DILocation(line: 159, column: 74, scope: !1763)
!1763 = !DILexicalBlockFile(scope: !503, file: !402, discriminator: 2)
!1764 = !DILocation(line: 159, column: 135, scope: !1765)
!1765 = !DILexicalBlockFile(scope: !1757, file: !402, discriminator: 3)
!1766 = !DILocation(line: 159, column: 153, scope: !1757)
!1767 = !DILocation(line: 159, column: 163, scope: !1757)
!1768 = !DILocation(line: 159, column: 188, scope: !1757)
!1769 = !DILocation(line: 159, column: 119, scope: !1757)
!1770 = !DILocation(line: 159, column: 207, scope: !1771)
!1771 = !DILexicalBlockFile(scope: !504, file: !402, discriminator: 4)
!1772 = !DILocation(line: 159, column: 207, scope: !503)
!1773 = !DILocation(line: 159, column: 207, scope: !1774)
!1774 = !DILexicalBlockFile(scope: !503, file: !402, discriminator: 5)
!1775 = !DILocation(line: 160, column: 9, scope: !504)
!1776 = !DILocation(line: 162, column: 27, scope: !509)
!1777 = !DILocation(line: 162, column: 41, scope: !509)
!1778 = !DILocation(line: 162, column: 47, scope: !509)
!1779 = !DILocation(line: 162, column: 52, scope: !509)
!1780 = !DILocation(line: 162, column: 10, scope: !509)
!1781 = !DILocation(line: 162, column: 9, scope: !497)
!1782 = !DILocation(line: 163, column: 9, scope: !508)
!1783 = !DILocation(line: 163, column: 14, scope: !1784)
!1784 = !DILexicalBlockFile(scope: !507, file: !402, discriminator: 1)
!1785 = !DILocation(line: 163, column: 24, scope: !507)
!1786 = !DILocation(line: 163, column: 54, scope: !507)
!1787 = !DILocation(line: 163, column: 77, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !507, file: !402, line: 163, column: 74)
!1789 = !DILocation(line: 163, column: 94, scope: !1788)
!1790 = !DILocation(line: 163, column: 74, scope: !1788)
!1791 = !DILocation(line: 163, column: 104, scope: !1788)
!1792 = !DILocation(line: 163, column: 74, scope: !507)
!1793 = !DILocation(line: 163, column: 74, scope: !1794)
!1794 = !DILexicalBlockFile(scope: !507, file: !402, discriminator: 2)
!1795 = !DILocation(line: 163, column: 135, scope: !1796)
!1796 = !DILexicalBlockFile(scope: !1788, file: !402, discriminator: 3)
!1797 = !DILocation(line: 163, column: 153, scope: !1788)
!1798 = !DILocation(line: 163, column: 163, scope: !1788)
!1799 = !DILocation(line: 163, column: 188, scope: !1788)
!1800 = !DILocation(line: 163, column: 119, scope: !1788)
!1801 = !DILocation(line: 163, column: 207, scope: !1802)
!1802 = !DILexicalBlockFile(scope: !508, file: !402, discriminator: 4)
!1803 = !DILocation(line: 163, column: 207, scope: !507)
!1804 = !DILocation(line: 163, column: 207, scope: !1805)
!1805 = !DILexicalBlockFile(scope: !507, file: !402, discriminator: 5)
!1806 = !DILocation(line: 164, column: 9, scope: !508)
!1807 = !DILocation(line: 167, column: 5, scope: !497)
!1808 = !DILocation(line: 167, column: 10, scope: !1809)
!1809 = !DILexicalBlockFile(scope: !511, file: !402, discriminator: 1)
!1810 = !DILocation(line: 167, column: 20, scope: !511)
!1811 = !DILocation(line: 167, column: 50, scope: !511)
!1812 = !DILocation(line: 167, column: 73, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !511, file: !402, line: 167, column: 70)
!1814 = !DILocation(line: 167, column: 90, scope: !1813)
!1815 = !DILocation(line: 167, column: 70, scope: !1813)
!1816 = !DILocation(line: 167, column: 100, scope: !1813)
!1817 = !DILocation(line: 167, column: 70, scope: !511)
!1818 = !DILocation(line: 167, column: 70, scope: !1819)
!1819 = !DILexicalBlockFile(scope: !511, file: !402, discriminator: 2)
!1820 = !DILocation(line: 167, column: 131, scope: !1821)
!1821 = !DILexicalBlockFile(scope: !1813, file: !402, discriminator: 3)
!1822 = !DILocation(line: 167, column: 149, scope: !1813)
!1823 = !DILocation(line: 167, column: 159, scope: !1813)
!1824 = !DILocation(line: 167, column: 184, scope: !1813)
!1825 = !DILocation(line: 167, column: 115, scope: !1813)
!1826 = !DILocation(line: 167, column: 203, scope: !1827)
!1827 = !DILexicalBlockFile(scope: !497, file: !402, discriminator: 4)
!1828 = !DILocation(line: 167, column: 203, scope: !511)
!1829 = !DILocation(line: 167, column: 203, scope: !1830)
!1830 = !DILexicalBlockFile(scope: !511, file: !402, discriminator: 5)
!1831 = !DILocation(line: 168, column: 5, scope: !497)
!1832 = !DILocation(line: 169, column: 1, scope: !497)
!1833 = !DILocation(line: 348, column: 30, scope: !520)
!1834 = !DILocation(line: 348, column: 47, scope: !520)
!1835 = !DILocation(line: 350, column: 5, scope: !520)
!1836 = !DILocation(line: 350, column: 14, scope: !520)
!1837 = !DILocation(line: 350, column: 22, scope: !520)
!1838 = !DILocation(line: 350, column: 27, scope: !520)
!1839 = !DILocation(line: 351, column: 5, scope: !520)
!1840 = !DILocation(line: 351, column: 16, scope: !520)
!1841 = !DILocation(line: 351, column: 21, scope: !520)
!1842 = !DILocation(line: 354, column: 9, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !520, file: !402, line: 354, column: 9)
!1844 = !DILocation(line: 354, column: 15, scope: !1843)
!1845 = !DILocation(line: 354, column: 22, scope: !1843)
!1846 = !DILocation(line: 354, column: 28, scope: !1843)
!1847 = !DILocation(line: 354, column: 19, scope: !1843)
!1848 = !DILocation(line: 354, column: 9, scope: !520)
!1849 = !DILocation(line: 355, column: 16, scope: !1843)
!1850 = !DILocation(line: 355, column: 9, scope: !1843)
!1851 = !DILocation(line: 357, column: 13, scope: !520)
!1852 = !DILocation(line: 357, column: 19, scope: !520)
!1853 = !DILocation(line: 357, column: 25, scope: !520)
!1854 = !DILocation(line: 357, column: 31, scope: !520)
!1855 = !DILocation(line: 357, column: 23, scope: !520)
!1856 = !DILocation(line: 357, column: 11, scope: !520)
!1857 = !DILocation(line: 358, column: 9, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !520, file: !402, line: 358, column: 9)
!1859 = !DILocation(line: 358, column: 15, scope: !1858)
!1860 = !DILocation(line: 358, column: 19, scope: !1858)
!1861 = !DILocation(line: 358, column: 22, scope: !1862)
!1862 = !DILexicalBlockFile(scope: !1858, file: !402, discriminator: 1)
!1863 = !DILocation(line: 358, column: 30, scope: !1858)
!1864 = !DILocation(line: 358, column: 36, scope: !1858)
!1865 = !DILocation(line: 358, column: 50, scope: !1858)
!1866 = !DILocation(line: 358, column: 56, scope: !1858)
!1867 = !DILocation(line: 358, column: 48, scope: !1858)
!1868 = !DILocation(line: 358, column: 28, scope: !1858)
!1869 = !DILocation(line: 358, column: 9, scope: !520)
!1870 = !DILocation(line: 359, column: 17, scope: !1858)
!1871 = !DILocation(line: 359, column: 23, scope: !1858)
!1872 = !DILocation(line: 359, column: 37, scope: !1858)
!1873 = !DILocation(line: 359, column: 43, scope: !1858)
!1874 = !DILocation(line: 359, column: 35, scope: !1858)
!1875 = !DILocation(line: 359, column: 15, scope: !1858)
!1876 = !DILocation(line: 359, column: 9, scope: !1858)
!1877 = !DILocation(line: 361, column: 11, scope: !520)
!1878 = !DILocation(line: 361, column: 19, scope: !520)
!1879 = !DILocation(line: 361, column: 17, scope: !520)
!1880 = !DILocation(line: 361, column: 9, scope: !520)
!1881 = !DILocation(line: 362, column: 17, scope: !520)
!1882 = !DILocation(line: 362, column: 16, scope: !520)
!1883 = !DILocation(line: 362, column: 14, scope: !520)
!1884 = !DILocation(line: 363, column: 6, scope: !520)
!1885 = !DILocation(line: 363, column: 10, scope: !520)
!1886 = !DILocation(line: 365, column: 9, scope: !520)
!1887 = !DILocation(line: 365, column: 15, scope: !520)
!1888 = !DILocation(line: 365, column: 30, scope: !520)
!1889 = !DILocation(line: 365, column: 36, scope: !520)
!1890 = !DILocation(line: 365, column: 51, scope: !520)
!1891 = !DILocation(line: 365, column: 57, scope: !520)
!1892 = !DILocation(line: 366, column: 38, scope: !520)
!1893 = !DILocation(line: 366, column: 31, scope: !520)
!1894 = !DILocation(line: 366, column: 52, scope: !520)
!1895 = !DILocation(line: 366, column: 45, scope: !520)
!1896 = !DILocation(line: 364, column: 11, scope: !520)
!1897 = !DILocation(line: 364, column: 9, scope: !520)
!1898 = !DILocation(line: 367, column: 12, scope: !520)
!1899 = !DILocation(line: 367, column: 6, scope: !520)
!1900 = !DILocation(line: 367, column: 10, scope: !520)
!1901 = !DILocation(line: 370, column: 9, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !520, file: !402, line: 370, column: 9)
!1903 = !DILocation(line: 370, column: 13, scope: !1902)
!1904 = !DILocation(line: 370, column: 9, scope: !520)
!1905 = !DILocation(line: 371, column: 15, scope: !1902)
!1906 = !DILocation(line: 371, column: 13, scope: !1902)
!1907 = !DILocation(line: 371, column: 9, scope: !1902)
!1908 = !DILocation(line: 372, column: 18, scope: !520)
!1909 = !DILocation(line: 372, column: 5, scope: !520)
!1910 = !DILocation(line: 372, column: 11, scope: !520)
!1911 = !DILocation(line: 372, column: 15, scope: !520)
!1912 = !DILocation(line: 373, column: 60, scope: !520)
!1913 = !DILocation(line: 373, column: 67, scope: !520)
!1914 = !DILocation(line: 373, column: 12, scope: !520)
!1915 = !DILocation(line: 373, column: 5, scope: !520)
!1916 = !DILocation(line: 374, column: 1, scope: !520)
!1917 = !DILocation(line: 72, column: 25, scope: !512)
!1918 = !DILocation(line: 72, column: 38, scope: !512)
!1919 = !DILocation(line: 76, column: 5, scope: !512)
!1920 = !DILocation(line: 76, column: 12, scope: !512)
!1921 = !DILocation(line: 76, column: 20, scope: !512)
!1922 = !DILocation(line: 76, column: 26, scope: !512)
!1923 = !{!849, !808, i64 40}
!1924 = !DILocation(line: 77, column: 5, scope: !512)
!1925 = !DILocation(line: 77, column: 14, scope: !512)
!1926 = !DILocation(line: 82, column: 12, scope: !512)
!1927 = !DILocation(line: 82, column: 17, scope: !512)
!1928 = !DILocation(line: 82, column: 10, scope: !512)
!1929 = !DILocation(line: 85, column: 9, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !512, file: !402, line: 85, column: 9)
!1931 = !DILocation(line: 85, column: 14, scope: !1930)
!1932 = !DILocation(line: 85, column: 9, scope: !512)
!1933 = !DILocation(line: 86, column: 9, scope: !1930)
!1934 = !DILocation(line: 88, column: 9, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !512, file: !402, line: 88, column: 9)
!1936 = !DILocation(line: 88, column: 16, scope: !1935)
!1937 = !DILocation(line: 88, column: 22, scope: !1935)
!1938 = !DILocation(line: 88, column: 14, scope: !1935)
!1939 = !DILocation(line: 88, column: 9, scope: !512)
!1940 = !DILocation(line: 90, column: 17, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1935, file: !402, line: 88, column: 27)
!1942 = !DILocation(line: 90, column: 22, scope: !1941)
!1943 = !DILocation(line: 90, column: 15, scope: !1941)
!1944 = !DILocation(line: 91, column: 5, scope: !1941)
!1945 = !DILocation(line: 92, column: 14, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1935, file: !402, line: 92, column: 14)
!1947 = !DILocation(line: 92, column: 21, scope: !1946)
!1948 = !DILocation(line: 92, column: 19, scope: !1946)
!1949 = !DILocation(line: 92, column: 14, scope: !1935)
!1950 = !DILocation(line: 94, column: 9, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1946, file: !402, line: 92, column: 28)
!1952 = !DILocation(line: 96, column: 14, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1946, file: !402, line: 96, column: 14)
!1954 = !DILocation(line: 96, column: 22, scope: !1953)
!1955 = !DILocation(line: 96, column: 28, scope: !1953)
!1956 = !DILocation(line: 96, column: 19, scope: !1953)
!1957 = !DILocation(line: 96, column: 14, scope: !1946)
!1958 = !DILocation(line: 98, column: 17, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1953, file: !402, line: 96, column: 37)
!1960 = !DILocation(line: 98, column: 25, scope: !1959)
!1961 = !DILocation(line: 98, column: 30, scope: !1959)
!1962 = !DILocation(line: 98, column: 22, scope: !1959)
!1963 = !DILocation(line: 98, column: 39, scope: !1959)
!1964 = !DILocation(line: 98, column: 44, scope: !1959)
!1965 = !DILocation(line: 98, column: 38, scope: !1959)
!1966 = !DILocation(line: 98, column: 36, scope: !1959)
!1967 = !DILocation(line: 98, column: 15, scope: !1959)
!1968 = !DILocation(line: 99, column: 5, scope: !1959)
!1969 = !DILocation(line: 102, column: 17, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1953, file: !402, line: 100, column: 10)
!1971 = !DILocation(line: 102, column: 22, scope: !1970)
!1972 = !DILocation(line: 102, column: 15, scope: !1970)
!1973 = !DILocation(line: 105, column: 9, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !512, file: !402, line: 105, column: 9)
!1975 = !DILocation(line: 105, column: 15, scope: !1974)
!1976 = !DILocation(line: 105, column: 9, scope: !512)
!1977 = !DILocation(line: 106, column: 9, scope: !1974)
!1978 = !DILocation(line: 107, column: 40, scope: !512)
!1979 = !DILocation(line: 107, column: 46, scope: !512)
!1980 = !DILocation(line: 107, column: 51, scope: !512)
!1981 = !DILocation(line: 107, column: 57, scope: !512)
!1982 = !DILocation(line: 107, column: 26, scope: !512)
!1983 = !DILocation(line: 107, column: 15, scope: !512)
!1984 = !DILocation(line: 107, column: 13, scope: !512)
!1985 = !DILocation(line: 108, column: 9, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !512, file: !402, line: 108, column: 9)
!1987 = !DILocation(line: 108, column: 17, scope: !1986)
!1988 = !DILocation(line: 108, column: 9, scope: !512)
!1989 = !DILocation(line: 109, column: 9, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1986, file: !402, line: 108, column: 32)
!1991 = !DILocation(line: 110, column: 9, scope: !1990)
!1992 = !DILocation(line: 112, column: 22, scope: !512)
!1993 = !DILocation(line: 112, column: 5, scope: !512)
!1994 = !DILocation(line: 112, column: 11, scope: !512)
!1995 = !DILocation(line: 112, column: 20, scope: !512)
!1996 = !DILocation(line: 113, column: 17, scope: !512)
!1997 = !DILocation(line: 113, column: 5, scope: !512)
!1998 = !DILocation(line: 113, column: 11, scope: !512)
!1999 = !DILocation(line: 113, column: 15, scope: !512)
!2000 = !DILocation(line: 115, column: 5, scope: !512)
!2001 = !DILocation(line: 118, column: 21, scope: !512)
!2002 = !DILocation(line: 118, column: 5, scope: !512)
!2003 = !DILocation(line: 120, column: 5, scope: !512)
!2004 = !DILocation(line: 121, column: 1, scope: !512)
!2005 = !DILocation(line: 579, column: 26, scope: !531)
!2006 = !DILocation(line: 581, column: 5, scope: !531)
!2007 = !DILocation(line: 581, column: 11, scope: !531)
!2008 = !DILocation(line: 581, column: 18, scope: !531)
!2009 = !DILocation(line: 583, column: 23, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !531, file: !402, line: 583, column: 9)
!2011 = !DILocation(line: 583, column: 9, scope: !2010)
!2012 = !DILocation(line: 583, column: 32, scope: !2010)
!2013 = !DILocation(line: 583, column: 9, scope: !531)
!2014 = !DILocation(line: 584, column: 9, scope: !2010)
!2015 = !DILocation(line: 585, column: 22, scope: !531)
!2016 = !DILocation(line: 585, column: 28, scope: !531)
!2017 = !DILocation(line: 585, column: 5, scope: !531)
!2018 = !DILocation(line: 586, column: 5, scope: !531)
!2019 = !DILocation(line: 586, column: 10, scope: !2020)
!2020 = !DILexicalBlockFile(scope: !535, file: !402, discriminator: 1)
!2021 = !DILocation(line: 586, column: 20, scope: !535)
!2022 = !DILocation(line: 586, column: 43, scope: !535)
!2023 = !DILocation(line: 586, column: 49, scope: !535)
!2024 = !DILocation(line: 586, column: 62, scope: !539)
!2025 = !DILocation(line: 586, column: 70, scope: !539)
!2026 = !DILocation(line: 586, column: 62, scope: !535)
!2027 = !DILocation(line: 586, column: 88, scope: !2028)
!2028 = !DILexicalBlockFile(scope: !538, file: !402, discriminator: 2)
!2029 = !DILocation(line: 586, column: 94, scope: !538)
!2030 = !DILocation(line: 586, column: 102, scope: !538)
!2031 = !DILocation(line: 586, column: 116, scope: !538)
!2032 = !DILocation(line: 586, column: 121, scope: !2033)
!2033 = !DILexicalBlockFile(scope: !537, file: !402, discriminator: 4)
!2034 = !DILocation(line: 586, column: 131, scope: !537)
!2035 = !DILocation(line: 586, column: 161, scope: !537)
!2036 = !DILocation(line: 586, column: 179, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !537, file: !402, line: 586, column: 176)
!2038 = !DILocation(line: 586, column: 196, scope: !2037)
!2039 = !DILocation(line: 586, column: 176, scope: !2037)
!2040 = !DILocation(line: 586, column: 206, scope: !2037)
!2041 = !DILocation(line: 586, column: 176, scope: !537)
!2042 = !DILocation(line: 586, column: 176, scope: !2043)
!2043 = !DILexicalBlockFile(scope: !537, file: !402, discriminator: 5)
!2044 = !DILocation(line: 586, column: 237, scope: !2045)
!2045 = !DILexicalBlockFile(scope: !2037, file: !402, discriminator: 6)
!2046 = !DILocation(line: 586, column: 255, scope: !2037)
!2047 = !DILocation(line: 586, column: 265, scope: !2037)
!2048 = !DILocation(line: 586, column: 290, scope: !2037)
!2049 = !DILocation(line: 586, column: 221, scope: !2037)
!2050 = !DILocation(line: 586, column: 309, scope: !2051)
!2051 = !DILexicalBlockFile(scope: !538, file: !402, discriminator: 7)
!2052 = !DILocation(line: 586, column: 309, scope: !537)
!2053 = !DILocation(line: 586, column: 309, scope: !2054)
!2054 = !DILexicalBlockFile(scope: !537, file: !402, discriminator: 8)
!2055 = !DILocation(line: 586, column: 322, scope: !2056)
!2056 = !DILexicalBlockFile(scope: !538, file: !402, discriminator: 9)
!2057 = !DILocation(line: 586, column: 324, scope: !2058)
!2058 = !DILexicalBlockFile(scope: !2059, file: !402, discriminator: 10)
!2059 = !DILexicalBlockFile(scope: !531, file: !402, discriminator: 3)
!2060 = !DILocation(line: 586, column: 324, scope: !535)
!2061 = !DILocation(line: 587, column: 5, scope: !531)
!2062 = !DILocation(line: 587, column: 10, scope: !2063)
!2063 = !DILexicalBlockFile(scope: !541, file: !402, discriminator: 1)
!2064 = !DILocation(line: 587, column: 20, scope: !541)
!2065 = !DILocation(line: 587, column: 43, scope: !541)
!2066 = !DILocation(line: 587, column: 49, scope: !541)
!2067 = !DILocation(line: 587, column: 63, scope: !545)
!2068 = !DILocation(line: 587, column: 71, scope: !545)
!2069 = !DILocation(line: 587, column: 63, scope: !541)
!2070 = !DILocation(line: 587, column: 89, scope: !2071)
!2071 = !DILexicalBlockFile(scope: !544, file: !402, discriminator: 2)
!2072 = !DILocation(line: 587, column: 95, scope: !544)
!2073 = !DILocation(line: 587, column: 104, scope: !544)
!2074 = !DILocation(line: 587, column: 118, scope: !544)
!2075 = !DILocation(line: 587, column: 123, scope: !2076)
!2076 = !DILexicalBlockFile(scope: !543, file: !402, discriminator: 4)
!2077 = !DILocation(line: 587, column: 133, scope: !543)
!2078 = !DILocation(line: 587, column: 163, scope: !543)
!2079 = !DILocation(line: 587, column: 181, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !543, file: !402, line: 587, column: 178)
!2081 = !DILocation(line: 587, column: 198, scope: !2080)
!2082 = !DILocation(line: 587, column: 178, scope: !2080)
!2083 = !DILocation(line: 587, column: 208, scope: !2080)
!2084 = !DILocation(line: 587, column: 178, scope: !543)
!2085 = !DILocation(line: 587, column: 178, scope: !2086)
!2086 = !DILexicalBlockFile(scope: !543, file: !402, discriminator: 5)
!2087 = !DILocation(line: 587, column: 239, scope: !2088)
!2088 = !DILexicalBlockFile(scope: !2080, file: !402, discriminator: 6)
!2089 = !DILocation(line: 587, column: 257, scope: !2080)
!2090 = !DILocation(line: 587, column: 267, scope: !2080)
!2091 = !DILocation(line: 587, column: 292, scope: !2080)
!2092 = !DILocation(line: 587, column: 223, scope: !2080)
!2093 = !DILocation(line: 587, column: 311, scope: !2094)
!2094 = !DILexicalBlockFile(scope: !544, file: !402, discriminator: 7)
!2095 = !DILocation(line: 587, column: 311, scope: !543)
!2096 = !DILocation(line: 587, column: 311, scope: !2097)
!2097 = !DILexicalBlockFile(scope: !543, file: !402, discriminator: 8)
!2098 = !DILocation(line: 587, column: 324, scope: !2099)
!2099 = !DILexicalBlockFile(scope: !544, file: !402, discriminator: 9)
!2100 = !DILocation(line: 587, column: 326, scope: !2058)
!2101 = !DILocation(line: 587, column: 326, scope: !541)
!2102 = !DILocation(line: 588, column: 5, scope: !531)
!2103 = !DILocation(line: 588, column: 10, scope: !2104)
!2104 = !DILexicalBlockFile(scope: !547, file: !402, discriminator: 1)
!2105 = !DILocation(line: 588, column: 20, scope: !547)
!2106 = !DILocation(line: 588, column: 43, scope: !547)
!2107 = !DILocation(line: 588, column: 49, scope: !547)
!2108 = !DILocation(line: 588, column: 63, scope: !551)
!2109 = !DILocation(line: 588, column: 71, scope: !551)
!2110 = !DILocation(line: 588, column: 63, scope: !547)
!2111 = !DILocation(line: 588, column: 89, scope: !2112)
!2112 = !DILexicalBlockFile(scope: !550, file: !402, discriminator: 2)
!2113 = !DILocation(line: 588, column: 95, scope: !550)
!2114 = !DILocation(line: 588, column: 104, scope: !550)
!2115 = !DILocation(line: 588, column: 118, scope: !550)
!2116 = !DILocation(line: 588, column: 123, scope: !2117)
!2117 = !DILexicalBlockFile(scope: !549, file: !402, discriminator: 4)
!2118 = !DILocation(line: 588, column: 133, scope: !549)
!2119 = !DILocation(line: 588, column: 163, scope: !549)
!2120 = !DILocation(line: 588, column: 181, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !549, file: !402, line: 588, column: 178)
!2122 = !DILocation(line: 588, column: 198, scope: !2121)
!2123 = !DILocation(line: 588, column: 178, scope: !2121)
!2124 = !DILocation(line: 588, column: 208, scope: !2121)
!2125 = !DILocation(line: 588, column: 178, scope: !549)
!2126 = !DILocation(line: 588, column: 178, scope: !2127)
!2127 = !DILexicalBlockFile(scope: !549, file: !402, discriminator: 5)
!2128 = !DILocation(line: 588, column: 239, scope: !2129)
!2129 = !DILexicalBlockFile(scope: !2121, file: !402, discriminator: 6)
!2130 = !DILocation(line: 588, column: 257, scope: !2121)
!2131 = !DILocation(line: 588, column: 267, scope: !2121)
!2132 = !DILocation(line: 588, column: 292, scope: !2121)
!2133 = !DILocation(line: 588, column: 223, scope: !2121)
!2134 = !DILocation(line: 588, column: 311, scope: !2135)
!2135 = !DILexicalBlockFile(scope: !550, file: !402, discriminator: 7)
!2136 = !DILocation(line: 588, column: 311, scope: !549)
!2137 = !DILocation(line: 588, column: 311, scope: !2138)
!2138 = !DILexicalBlockFile(scope: !549, file: !402, discriminator: 8)
!2139 = !DILocation(line: 588, column: 324, scope: !2140)
!2140 = !DILexicalBlockFile(scope: !550, file: !402, discriminator: 9)
!2141 = !DILocation(line: 588, column: 326, scope: !2058)
!2142 = !DILocation(line: 588, column: 326, scope: !547)
!2143 = !DILocation(line: 589, column: 58, scope: !531)
!2144 = !DILocation(line: 589, column: 5, scope: !531)
!2145 = !DILocation(line: 590, column: 1, scope: !531)
!2146 = !DILocation(line: 271, column: 29, scope: !552)
!2147 = !DILocation(line: 273, column: 9, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !552, file: !402, line: 273, column: 9)
!2149 = !DILocation(line: 273, column: 15, scope: !2148)
!2150 = !DILocation(line: 273, column: 18, scope: !2148)
!2151 = !DILocation(line: 273, column: 9, scope: !552)
!2152 = !DILocation(line: 273, column: 42, scope: !2153)
!2153 = !DILexicalBlockFile(scope: !2154, file: !402, discriminator: 1)
!2154 = distinct !DILexicalBlock(scope: !2148, file: !402, line: 273, column: 24)
!2155 = !DILocation(line: 273, column: 26, scope: !2154)
!2156 = !DILocation(line: 273, column: 102, scope: !2154)
!2157 = !DILocation(line: 274, column: 9, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !552, file: !402, line: 274, column: 9)
!2159 = !DILocation(line: 274, column: 15, scope: !2158)
!2160 = !DILocation(line: 274, column: 9, scope: !552)
!2161 = !DILocation(line: 274, column: 41, scope: !2162)
!2162 = !DILexicalBlockFile(scope: !2163, file: !402, discriminator: 1)
!2163 = distinct !DILexicalBlock(scope: !2158, file: !402, line: 274, column: 23)
!2164 = !DILocation(line: 274, column: 25, scope: !2163)
!2165 = !DILocation(line: 274, column: 92, scope: !2163)
!2166 = !DILocation(line: 275, column: 9, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !552, file: !402, line: 275, column: 9)
!2168 = !DILocation(line: 275, column: 15, scope: !2167)
!2169 = !DILocation(line: 275, column: 21, scope: !2167)
!2170 = !DILocation(line: 275, column: 9, scope: !552)
!2171 = !DILocation(line: 276, column: 34, scope: !2167)
!2172 = !DILocation(line: 276, column: 16, scope: !2167)
!2173 = !DILocation(line: 276, column: 9, scope: !2167)
!2174 = !DILocation(line: 277, column: 60, scope: !552)
!2175 = !DILocation(line: 277, column: 66, scope: !552)
!2176 = !DILocation(line: 278, column: 38, scope: !552)
!2177 = !DILocation(line: 278, column: 44, scope: !552)
!2178 = !DILocation(line: 277, column: 12, scope: !552)
!2179 = !DILocation(line: 277, column: 5, scope: !552)
!2180 = !DILocation(line: 279, column: 1, scope: !552)
!2181 = !DILocation(line: 299, column: 25, scope: !563)
!2182 = !DILocation(line: 299, column: 41, scope: !563)
!2183 = !DILocation(line: 301, column: 5, scope: !563)
!2184 = !DILocation(line: 301, column: 16, scope: !563)
!2185 = !DILocation(line: 301, column: 22, scope: !563)
!2186 = !DILocation(line: 302, column: 5, scope: !563)
!2187 = !DILocation(line: 302, column: 14, scope: !563)
!2188 = !DILocation(line: 303, column: 5, scope: !563)
!2189 = !DILocation(line: 303, column: 15, scope: !563)
!2190 = !DILocation(line: 305, column: 9, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !563, file: !402, line: 305, column: 9)
!2192 = !DILocation(line: 305, column: 15, scope: !2191)
!2193 = !DILocation(line: 305, column: 18, scope: !2191)
!2194 = !DILocation(line: 305, column: 9, scope: !563)
!2195 = !DILocation(line: 305, column: 42, scope: !2196)
!2196 = !DILexicalBlockFile(scope: !2197, file: !402, discriminator: 1)
!2197 = distinct !DILexicalBlock(scope: !2191, file: !402, line: 305, column: 24)
!2198 = !DILocation(line: 305, column: 26, scope: !2197)
!2199 = !DILocation(line: 305, column: 102, scope: !2197)
!2200 = !DILocation(line: 306, column: 34, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !563, file: !402, line: 306, column: 9)
!2202 = !DILocation(line: 306, column: 10, scope: !2201)
!2203 = !DILocation(line: 306, column: 9, scope: !563)
!2204 = !DILocation(line: 307, column: 9, scope: !2201)
!2205 = !DILocation(line: 308, column: 9, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !563, file: !402, line: 308, column: 9)
!2207 = !DILocation(line: 308, column: 15, scope: !2206)
!2208 = !DILocation(line: 308, column: 9, scope: !563)
!2209 = !DILocation(line: 308, column: 41, scope: !2210)
!2210 = !DILexicalBlockFile(scope: !2211, file: !402, discriminator: 1)
!2211 = distinct !DILexicalBlock(scope: !2206, file: !402, line: 308, column: 23)
!2212 = !DILocation(line: 308, column: 25, scope: !2211)
!2213 = !DILocation(line: 308, column: 92, scope: !2211)
!2214 = !DILocation(line: 310, column: 24, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !563, file: !402, line: 310, column: 9)
!2216 = !DILocation(line: 310, column: 9, scope: !2215)
!2217 = !DILocation(line: 310, column: 9, scope: !563)
!2218 = !DILocation(line: 311, column: 35, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2215, file: !402, line: 310, column: 30)
!2220 = !DILocation(line: 311, column: 40, scope: !2219)
!2221 = !DILocation(line: 311, column: 16, scope: !2219)
!2222 = !DILocation(line: 311, column: 14, scope: !2219)
!2223 = !DILocation(line: 312, column: 13, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2219, file: !402, line: 312, column: 13)
!2225 = !DILocation(line: 312, column: 18, scope: !2224)
!2226 = !DILocation(line: 312, column: 24, scope: !2224)
!2227 = !DILocation(line: 312, column: 27, scope: !2228)
!2228 = !DILexicalBlockFile(scope: !2224, file: !402, discriminator: 1)
!2229 = !DILocation(line: 312, column: 13, scope: !2219)
!2230 = !DILocation(line: 313, column: 13, scope: !2224)
!2231 = !DILocation(line: 314, column: 5, scope: !2219)
!2232 = !DILocation(line: 315, column: 14, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2215, file: !402, line: 315, column: 14)
!2234 = !DILocation(line: 315, column: 18, scope: !2233)
!2235 = !DILocation(line: 315, column: 14, scope: !2215)
!2236 = !DILocation(line: 317, column: 14, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2233, file: !402, line: 315, column: 40)
!2238 = !DILocation(line: 318, column: 5, scope: !2237)
!2239 = !DILocation(line: 320, column: 22, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2233, file: !402, line: 319, column: 10)
!2241 = !DILocation(line: 321, column: 36, scope: !2240)
!2242 = !DILocation(line: 321, column: 43, scope: !2240)
!2243 = !DILocation(line: 321, column: 53, scope: !2240)
!2244 = !DILocation(line: 320, column: 9, scope: !2240)
!2245 = !DILocation(line: 322, column: 9, scope: !2240)
!2246 = !DILocation(line: 326, column: 9, scope: !563)
!2247 = !DILocation(line: 326, column: 15, scope: !563)
!2248 = !DILocation(line: 326, column: 29, scope: !563)
!2249 = !DILocation(line: 326, column: 35, scope: !563)
!2250 = !DILocation(line: 326, column: 27, scope: !563)
!2251 = !DILocation(line: 326, column: 7, scope: !563)
!2252 = !DILocation(line: 327, column: 9, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !563, file: !402, line: 327, column: 9)
!2254 = !DILocation(line: 327, column: 14, scope: !2253)
!2255 = !DILocation(line: 327, column: 18, scope: !2253)
!2256 = !DILocation(line: 327, column: 21, scope: !2257)
!2257 = !DILexicalBlockFile(scope: !2253, file: !402, discriminator: 1)
!2258 = !DILocation(line: 327, column: 28, scope: !2253)
!2259 = !DILocation(line: 327, column: 26, scope: !2253)
!2260 = !DILocation(line: 327, column: 9, scope: !563)
!2261 = !DILocation(line: 328, column: 16, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2253, file: !402, line: 327, column: 31)
!2263 = !DILocation(line: 328, column: 14, scope: !2262)
!2264 = !DILocation(line: 329, column: 13, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2262, file: !402, line: 329, column: 13)
!2266 = !DILocation(line: 329, column: 18, scope: !2265)
!2267 = !DILocation(line: 329, column: 13, scope: !2262)
!2268 = !DILocation(line: 330, column: 18, scope: !2265)
!2269 = !DILocation(line: 330, column: 13, scope: !2265)
!2270 = !DILocation(line: 331, column: 5, scope: !2262)
!2271 = !DILocation(line: 334, column: 9, scope: !575)
!2272 = !DILocation(line: 334, column: 15, scope: !575)
!2273 = !DILocation(line: 334, column: 21, scope: !575)
!2274 = !DILocation(line: 334, column: 26, scope: !575)
!2275 = !DILocation(line: 334, column: 29, scope: !2276)
!2276 = !DILexicalBlockFile(scope: !575, file: !402, discriminator: 1)
!2277 = !DILocation(line: 334, column: 35, scope: !575)
!2278 = !DILocation(line: 334, column: 39, scope: !575)
!2279 = !DILocation(line: 334, column: 44, scope: !575)
!2280 = !DILocation(line: 334, column: 47, scope: !2281)
!2281 = !DILexicalBlockFile(scope: !575, file: !402, discriminator: 2)
!2282 = !DILocation(line: 334, column: 55, scope: !575)
!2283 = !DILocation(line: 334, column: 52, scope: !575)
!2284 = !DILocation(line: 334, column: 9, scope: !563)
!2285 = !DILocation(line: 335, column: 9, scope: !574)
!2286 = !DILocation(line: 335, column: 19, scope: !574)
!2287 = !DILocation(line: 335, column: 46, scope: !574)
!2288 = !DILocation(line: 335, column: 28, scope: !574)
!2289 = !DILocation(line: 336, column: 21, scope: !574)
!2290 = !DILocation(line: 336, column: 27, scope: !574)
!2291 = !DILocation(line: 336, column: 9, scope: !574)
!2292 = !DILocation(line: 336, column: 15, scope: !574)
!2293 = !DILocation(line: 336, column: 19, scope: !574)
!2294 = !DILocation(line: 337, column: 16, scope: !574)
!2295 = !DILocation(line: 337, column: 9, scope: !574)
!2296 = !DILocation(line: 338, column: 5, scope: !575)
!2297 = !DILocation(line: 340, column: 17, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !563, file: !402, line: 340, column: 9)
!2299 = !DILocation(line: 340, column: 9, scope: !2298)
!2300 = !DILocation(line: 340, column: 23, scope: !2298)
!2301 = !DILocation(line: 340, column: 9, scope: !563)
!2302 = !DILocation(line: 340, column: 30, scope: !2303)
!2303 = !DILexicalBlockFile(scope: !2304, file: !402, discriminator: 1)
!2304 = distinct !DILexicalBlock(scope: !2298, file: !402, line: 340, column: 28)
!2305 = !DILocation(line: 340, column: 30, scope: !2304)
!2306 = !DILocation(line: 341, column: 14, scope: !563)
!2307 = !DILocation(line: 341, column: 20, scope: !563)
!2308 = !DILocation(line: 341, column: 26, scope: !563)
!2309 = !DILocation(line: 341, column: 32, scope: !563)
!2310 = !DILocation(line: 341, column: 24, scope: !563)
!2311 = !DILocation(line: 341, column: 12, scope: !563)
!2312 = !DILocation(line: 342, column: 18, scope: !563)
!2313 = !DILocation(line: 342, column: 5, scope: !563)
!2314 = !DILocation(line: 342, column: 11, scope: !563)
!2315 = !DILocation(line: 342, column: 15, scope: !563)
!2316 = !DILocation(line: 343, column: 60, scope: !563)
!2317 = !DILocation(line: 343, column: 68, scope: !563)
!2318 = !DILocation(line: 343, column: 12, scope: !563)
!2319 = !DILocation(line: 343, column: 5, scope: !563)
!2320 = !DILocation(line: 344, column: 1, scope: !563)
!2321 = !DILocation(line: 382, column: 29, scope: !576)
!2322 = !DILocation(line: 382, column: 45, scope: !576)
!2323 = !DILocation(line: 384, column: 5, scope: !576)
!2324 = !DILocation(line: 384, column: 15, scope: !576)
!2325 = !DILocation(line: 385, column: 5, scope: !576)
!2326 = !DILocation(line: 385, column: 16, scope: !576)
!2327 = !DILocation(line: 387, column: 9, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !576, file: !402, line: 387, column: 9)
!2329 = !DILocation(line: 387, column: 15, scope: !2328)
!2330 = !DILocation(line: 387, column: 18, scope: !2328)
!2331 = !DILocation(line: 387, column: 9, scope: !576)
!2332 = !DILocation(line: 387, column: 42, scope: !2333)
!2333 = !DILexicalBlockFile(scope: !2334, file: !402, discriminator: 1)
!2334 = distinct !DILexicalBlock(scope: !2328, file: !402, line: 387, column: 24)
!2335 = !DILocation(line: 387, column: 26, scope: !2334)
!2336 = !DILocation(line: 387, column: 102, scope: !2334)
!2337 = !DILocation(line: 388, column: 34, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !576, file: !402, line: 388, column: 9)
!2339 = !DILocation(line: 388, column: 10, scope: !2338)
!2340 = !DILocation(line: 388, column: 9, scope: !576)
!2341 = !DILocation(line: 389, column: 9, scope: !2338)
!2342 = !DILocation(line: 390, column: 9, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !576, file: !402, line: 390, column: 9)
!2344 = !DILocation(line: 390, column: 15, scope: !2343)
!2345 = !DILocation(line: 390, column: 9, scope: !576)
!2346 = !DILocation(line: 390, column: 41, scope: !2347)
!2347 = !DILexicalBlockFile(scope: !2348, file: !402, discriminator: 1)
!2348 = distinct !DILexicalBlock(scope: !2343, file: !402, line: 390, column: 23)
!2349 = !DILocation(line: 390, column: 25, scope: !2348)
!2350 = !DILocation(line: 390, column: 92, scope: !2348)
!2351 = !DILocation(line: 391, column: 17, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !576, file: !402, line: 391, column: 9)
!2353 = !DILocation(line: 391, column: 9, scope: !2352)
!2354 = !DILocation(line: 391, column: 23, scope: !2352)
!2355 = !DILocation(line: 391, column: 9, scope: !576)
!2356 = !DILocation(line: 391, column: 30, scope: !2357)
!2357 = !DILexicalBlockFile(scope: !2358, file: !402, discriminator: 1)
!2358 = distinct !DILexicalBlock(scope: !2352, file: !402, line: 391, column: 28)
!2359 = !DILocation(line: 391, column: 30, scope: !2358)
!2360 = !DILocation(line: 393, column: 24, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !576, file: !402, line: 393, column: 9)
!2362 = !DILocation(line: 393, column: 9, scope: !2361)
!2363 = !DILocation(line: 393, column: 9, scope: !576)
!2364 = !DILocation(line: 394, column: 36, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2361, file: !402, line: 393, column: 30)
!2366 = !DILocation(line: 394, column: 41, scope: !2365)
!2367 = !DILocation(line: 394, column: 17, scope: !2365)
!2368 = !DILocation(line: 394, column: 15, scope: !2365)
!2369 = !DILocation(line: 395, column: 13, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2365, file: !402, line: 395, column: 13)
!2371 = !DILocation(line: 395, column: 19, scope: !2370)
!2372 = !DILocation(line: 395, column: 25, scope: !2370)
!2373 = !DILocation(line: 395, column: 28, scope: !2374)
!2374 = !DILexicalBlockFile(scope: !2370, file: !402, discriminator: 1)
!2375 = !DILocation(line: 395, column: 13, scope: !2365)
!2376 = !DILocation(line: 396, column: 13, scope: !2370)
!2377 = !DILocation(line: 397, column: 5, scope: !2365)
!2378 = !DILocation(line: 398, column: 14, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2361, file: !402, line: 398, column: 14)
!2380 = !DILocation(line: 398, column: 18, scope: !2379)
!2381 = !DILocation(line: 398, column: 14, scope: !2361)
!2382 = !DILocation(line: 399, column: 22, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2379, file: !402, line: 398, column: 40)
!2384 = !DILocation(line: 400, column: 36, scope: !2383)
!2385 = !DILocation(line: 400, column: 43, scope: !2383)
!2386 = !DILocation(line: 400, column: 53, scope: !2383)
!2387 = !DILocation(line: 399, column: 9, scope: !2383)
!2388 = !DILocation(line: 401, column: 9, scope: !2383)
!2389 = !DILocation(line: 403, column: 31, scope: !576)
!2390 = !DILocation(line: 403, column: 37, scope: !576)
!2391 = !DILocation(line: 403, column: 12, scope: !576)
!2392 = !DILocation(line: 403, column: 5, scope: !576)
!2393 = !DILocation(line: 404, column: 1, scope: !576)
!2394 = !DILocation(line: 285, column: 25, scope: !582)
!2395 = !DILocation(line: 287, column: 9, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !582, file: !402, line: 287, column: 9)
!2397 = !DILocation(line: 287, column: 15, scope: !2396)
!2398 = !DILocation(line: 287, column: 18, scope: !2396)
!2399 = !DILocation(line: 287, column: 9, scope: !582)
!2400 = !DILocation(line: 287, column: 42, scope: !2401)
!2401 = !DILexicalBlockFile(scope: !2402, file: !402, discriminator: 1)
!2402 = distinct !DILexicalBlock(scope: !2396, file: !402, line: 287, column: 24)
!2403 = !DILocation(line: 287, column: 26, scope: !2402)
!2404 = !DILocation(line: 287, column: 102, scope: !2402)
!2405 = !DILocation(line: 288, column: 9, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !582, file: !402, line: 288, column: 9)
!2407 = !DILocation(line: 288, column: 15, scope: !2406)
!2408 = !DILocation(line: 288, column: 9, scope: !582)
!2409 = !DILocation(line: 288, column: 41, scope: !2410)
!2410 = !DILexicalBlockFile(scope: !2411, file: !402, discriminator: 1)
!2411 = distinct !DILexicalBlock(scope: !2406, file: !402, line: 288, column: 23)
!2412 = !DILocation(line: 288, column: 25, scope: !2411)
!2413 = !DILocation(line: 288, column: 92, scope: !2411)
!2414 = !DILocation(line: 289, column: 31, scope: !582)
!2415 = !DILocation(line: 289, column: 37, scope: !582)
!2416 = !DILocation(line: 289, column: 12, scope: !582)
!2417 = !DILocation(line: 289, column: 5, scope: !582)
!2418 = !DILocation(line: 290, column: 1, scope: !582)
!2419 = !DILocation(line: 452, column: 29, scope: !585)
!2420 = !DILocation(line: 452, column: 45, scope: !585)
!2421 = !DILocation(line: 454, column: 5, scope: !585)
!2422 = !DILocation(line: 454, column: 16, scope: !585)
!2423 = !DILocation(line: 455, column: 5, scope: !585)
!2424 = !DILocation(line: 455, column: 15, scope: !585)
!2425 = !DILocation(line: 457, column: 9, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !585, file: !402, line: 457, column: 9)
!2427 = !DILocation(line: 457, column: 15, scope: !2426)
!2428 = !DILocation(line: 457, column: 18, scope: !2426)
!2429 = !DILocation(line: 457, column: 9, scope: !585)
!2430 = !DILocation(line: 457, column: 42, scope: !2431)
!2431 = !DILexicalBlockFile(scope: !2432, file: !402, discriminator: 1)
!2432 = distinct !DILexicalBlock(scope: !2426, file: !402, line: 457, column: 24)
!2433 = !DILocation(line: 457, column: 26, scope: !2432)
!2434 = !DILocation(line: 457, column: 102, scope: !2432)
!2435 = !DILocation(line: 458, column: 34, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !585, file: !402, line: 458, column: 9)
!2437 = !DILocation(line: 458, column: 10, scope: !2436)
!2438 = !DILocation(line: 458, column: 9, scope: !585)
!2439 = !DILocation(line: 459, column: 9, scope: !2436)
!2440 = !DILocation(line: 460, column: 9, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !585, file: !402, line: 460, column: 9)
!2442 = !DILocation(line: 460, column: 15, scope: !2441)
!2443 = !DILocation(line: 460, column: 9, scope: !585)
!2444 = !DILocation(line: 460, column: 41, scope: !2445)
!2445 = !DILexicalBlockFile(scope: !2446, file: !402, discriminator: 1)
!2446 = distinct !DILexicalBlock(scope: !2441, file: !402, line: 460, column: 23)
!2447 = !DILocation(line: 460, column: 25, scope: !2446)
!2448 = !DILocation(line: 460, column: 92, scope: !2446)
!2449 = !DILocation(line: 462, column: 24, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !585, file: !402, line: 462, column: 9)
!2451 = !DILocation(line: 462, column: 9, scope: !2450)
!2452 = !DILocation(line: 462, column: 9, scope: !585)
!2453 = !DILocation(line: 463, column: 35, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2450, file: !402, line: 462, column: 30)
!2455 = !DILocation(line: 463, column: 40, scope: !2454)
!2456 = !DILocation(line: 463, column: 16, scope: !2454)
!2457 = !DILocation(line: 463, column: 14, scope: !2454)
!2458 = !DILocation(line: 464, column: 13, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2454, file: !402, line: 464, column: 13)
!2460 = !DILocation(line: 464, column: 18, scope: !2459)
!2461 = !DILocation(line: 464, column: 24, scope: !2459)
!2462 = !DILocation(line: 464, column: 27, scope: !2463)
!2463 = !DILexicalBlockFile(scope: !2459, file: !402, discriminator: 1)
!2464 = !DILocation(line: 464, column: 13, scope: !2454)
!2465 = !DILocation(line: 465, column: 13, scope: !2459)
!2466 = !DILocation(line: 466, column: 5, scope: !2454)
!2467 = !DILocation(line: 467, column: 14, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2450, file: !402, line: 467, column: 14)
!2469 = !DILocation(line: 467, column: 18, scope: !2468)
!2470 = !DILocation(line: 467, column: 14, scope: !2450)
!2471 = !DILocation(line: 469, column: 16, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2468, file: !402, line: 467, column: 40)
!2473 = !DILocation(line: 469, column: 22, scope: !2472)
!2474 = !DILocation(line: 469, column: 14, scope: !2472)
!2475 = !DILocation(line: 470, column: 5, scope: !2472)
!2476 = !DILocation(line: 472, column: 22, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2468, file: !402, line: 471, column: 10)
!2478 = !DILocation(line: 473, column: 36, scope: !2477)
!2479 = !DILocation(line: 473, column: 43, scope: !2477)
!2480 = !DILocation(line: 473, column: 53, scope: !2477)
!2481 = !DILocation(line: 472, column: 9, scope: !2477)
!2482 = !DILocation(line: 474, column: 9, scope: !2477)
!2483 = !DILocation(line: 477, column: 9, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !585, file: !402, line: 477, column: 9)
!2485 = !DILocation(line: 477, column: 14, scope: !2484)
!2486 = !DILocation(line: 477, column: 9, scope: !585)
!2487 = !DILocation(line: 478, column: 22, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2484, file: !402, line: 477, column: 19)
!2489 = !DILocation(line: 479, column: 49, scope: !2488)
!2490 = !DILocation(line: 478, column: 9, scope: !2488)
!2491 = !DILocation(line: 480, column: 9, scope: !2488)
!2492 = !DILocation(line: 483, column: 9, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !585, file: !402, line: 483, column: 9)
!2494 = !DILocation(line: 483, column: 16, scope: !2493)
!2495 = !DILocation(line: 483, column: 22, scope: !2493)
!2496 = !DILocation(line: 483, column: 14, scope: !2493)
!2497 = !DILocation(line: 483, column: 9, scope: !585)
!2498 = !DILocation(line: 484, column: 21, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2500, file: !402, line: 484, column: 13)
!2500 = distinct !DILexicalBlock(scope: !2493, file: !402, line: 483, column: 35)
!2501 = !DILocation(line: 484, column: 13, scope: !2499)
!2502 = !DILocation(line: 484, column: 27, scope: !2499)
!2503 = !DILocation(line: 484, column: 13, scope: !2500)
!2504 = !DILocation(line: 484, column: 34, scope: !2505)
!2505 = !DILexicalBlockFile(scope: !2506, file: !402, discriminator: 1)
!2506 = distinct !DILexicalBlock(scope: !2499, file: !402, line: 484, column: 32)
!2507 = !DILocation(line: 484, column: 34, scope: !2506)
!2508 = !DILocation(line: 485, column: 27, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2500, file: !402, line: 485, column: 13)
!2510 = !DILocation(line: 485, column: 33, scope: !2509)
!2511 = !DILocation(line: 485, column: 13, scope: !2509)
!2512 = !DILocation(line: 485, column: 39, scope: !2509)
!2513 = !DILocation(line: 485, column: 13, scope: !2500)
!2514 = !DILocation(line: 486, column: 13, scope: !2509)
!2515 = !DILocation(line: 487, column: 29, scope: !2500)
!2516 = !DILocation(line: 487, column: 9, scope: !2500)
!2517 = !DILocation(line: 487, column: 15, scope: !2500)
!2518 = !DILocation(line: 487, column: 27, scope: !2500)
!2519 = !DILocation(line: 488, column: 5, scope: !2500)
!2520 = !DILocation(line: 490, column: 31, scope: !585)
!2521 = !DILocation(line: 490, column: 12, scope: !585)
!2522 = !DILocation(line: 490, column: 5, scope: !585)
!2523 = !DILocation(line: 491, column: 1, scope: !585)
!2524 = !DILocation(line: 503, column: 25, scope: !591)
!2525 = !DILocation(line: 503, column: 41, scope: !591)
!2526 = !DILocation(line: 505, column: 5, scope: !591)
!2527 = !DILocation(line: 505, column: 16, scope: !591)
!2528 = !DILocation(line: 506, column: 5, scope: !591)
!2529 = !DILocation(line: 506, column: 9, scope: !591)
!2530 = !DILocation(line: 508, column: 9, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !591, file: !402, line: 508, column: 9)
!2532 = !DILocation(line: 508, column: 15, scope: !2531)
!2533 = !DILocation(line: 508, column: 18, scope: !2531)
!2534 = !DILocation(line: 508, column: 9, scope: !591)
!2535 = !DILocation(line: 508, column: 42, scope: !2536)
!2536 = !DILexicalBlockFile(scope: !2537, file: !402, discriminator: 1)
!2537 = distinct !DILexicalBlock(scope: !2531, file: !402, line: 508, column: 24)
!2538 = !DILocation(line: 508, column: 26, scope: !2537)
!2539 = !DILocation(line: 508, column: 102, scope: !2537)
!2540 = !DILocation(line: 509, column: 34, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !591, file: !402, line: 509, column: 9)
!2542 = !DILocation(line: 509, column: 10, scope: !2541)
!2543 = !DILocation(line: 509, column: 9, scope: !591)
!2544 = !DILocation(line: 510, column: 9, scope: !2541)
!2545 = !DILocation(line: 511, column: 9, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !591, file: !402, line: 511, column: 9)
!2547 = !DILocation(line: 511, column: 15, scope: !2546)
!2548 = !DILocation(line: 511, column: 9, scope: !591)
!2549 = !DILocation(line: 511, column: 41, scope: !2550)
!2550 = !DILexicalBlockFile(scope: !2551, file: !402, discriminator: 1)
!2551 = distinct !DILexicalBlock(scope: !2546, file: !402, line: 511, column: 23)
!2552 = !DILocation(line: 511, column: 25, scope: !2551)
!2553 = !DILocation(line: 511, column: 92, scope: !2551)
!2554 = !DILocation(line: 513, column: 9, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !591, file: !402, line: 513, column: 9)
!2556 = !DILocation(line: 513, column: 14, scope: !2555)
!2557 = !DILocation(line: 513, column: 19, scope: !2555)
!2558 = !DILocation(line: 513, column: 22, scope: !2559)
!2559 = !DILexicalBlockFile(scope: !2555, file: !402, discriminator: 1)
!2560 = !DILocation(line: 513, column: 27, scope: !2555)
!2561 = !DILocation(line: 513, column: 32, scope: !2555)
!2562 = !DILocation(line: 513, column: 35, scope: !2563)
!2563 = !DILexicalBlockFile(scope: !2555, file: !402, discriminator: 2)
!2564 = !DILocation(line: 513, column: 40, scope: !2555)
!2565 = !DILocation(line: 513, column: 9, scope: !591)
!2566 = !DILocation(line: 514, column: 22, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2555, file: !402, line: 513, column: 46)
!2568 = !DILocation(line: 515, column: 66, scope: !2567)
!2569 = !DILocation(line: 514, column: 9, scope: !2567)
!2570 = !DILocation(line: 516, column: 9, scope: !2567)
!2571 = !DILocation(line: 518, column: 14, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2555, file: !402, line: 518, column: 14)
!2573 = !DILocation(line: 518, column: 18, scope: !2572)
!2574 = !DILocation(line: 518, column: 22, scope: !2572)
!2575 = !DILocation(line: 518, column: 25, scope: !2576)
!2576 = !DILexicalBlockFile(scope: !2572, file: !402, discriminator: 1)
!2577 = !DILocation(line: 518, column: 30, scope: !2572)
!2578 = !DILocation(line: 518, column: 14, scope: !2555)
!2579 = !DILocation(line: 519, column: 22, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2572, file: !402, line: 518, column: 36)
!2581 = !DILocation(line: 520, column: 52, scope: !2580)
!2582 = !DILocation(line: 519, column: 9, scope: !2580)
!2583 = !DILocation(line: 521, column: 9, scope: !2580)
!2584 = !DILocation(line: 523, column: 14, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2572, file: !402, line: 523, column: 14)
!2586 = !DILocation(line: 523, column: 19, scope: !2585)
!2587 = !DILocation(line: 523, column: 24, scope: !2585)
!2588 = !DILocation(line: 523, column: 27, scope: !2589)
!2589 = !DILexicalBlockFile(scope: !2585, file: !402, discriminator: 1)
!2590 = !DILocation(line: 523, column: 31, scope: !2585)
!2591 = !DILocation(line: 523, column: 14, scope: !2572)
!2592 = !DILocation(line: 524, column: 25, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2585, file: !402, line: 523, column: 37)
!2594 = !DILocation(line: 524, column: 9, scope: !2593)
!2595 = !DILocation(line: 526, column: 9, scope: !2593)
!2596 = !DILocation(line: 532, column: 9, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !591, file: !402, line: 532, column: 9)
!2598 = !DILocation(line: 532, column: 14, scope: !2597)
!2599 = !DILocation(line: 532, column: 9, scope: !591)
!2600 = !DILocation(line: 533, column: 15, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2597, file: !402, line: 532, column: 20)
!2602 = !DILocation(line: 533, column: 21, scope: !2601)
!2603 = !DILocation(line: 533, column: 13, scope: !2601)
!2604 = !DILocation(line: 534, column: 5, scope: !2601)
!2605 = !DILocation(line: 535, column: 14, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2597, file: !402, line: 535, column: 14)
!2607 = !DILocation(line: 535, column: 19, scope: !2606)
!2608 = !DILocation(line: 535, column: 14, scope: !2597)
!2609 = !DILocation(line: 536, column: 15, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2606, file: !402, line: 535, column: 25)
!2611 = !DILocation(line: 536, column: 21, scope: !2610)
!2612 = !DILocation(line: 536, column: 13, scope: !2610)
!2613 = !DILocation(line: 537, column: 5, scope: !2610)
!2614 = !DILocation(line: 539, column: 17, scope: !591)
!2615 = !DILocation(line: 539, column: 5, scope: !591)
!2616 = !DILocation(line: 539, column: 11, scope: !591)
!2617 = !DILocation(line: 539, column: 15, scope: !591)
!2618 = !DILocation(line: 541, column: 31, scope: !591)
!2619 = !DILocation(line: 541, column: 37, scope: !591)
!2620 = !DILocation(line: 541, column: 12, scope: !591)
!2621 = !DILocation(line: 541, column: 5, scope: !591)
!2622 = !DILocation(line: 542, column: 1, scope: !591)
!2623 = !DILocation(line: 551, column: 26, scope: !597)
!2624 = !DILocation(line: 551, column: 42, scope: !597)
!2625 = !DILocation(line: 553, column: 5, scope: !597)
!2626 = !DILocation(line: 553, column: 16, scope: !597)
!2627 = !DILocation(line: 555, column: 9, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !597, file: !402, line: 555, column: 9)
!2629 = !DILocation(line: 555, column: 15, scope: !2628)
!2630 = !DILocation(line: 555, column: 18, scope: !2628)
!2631 = !DILocation(line: 555, column: 9, scope: !597)
!2632 = !DILocation(line: 555, column: 42, scope: !2633)
!2633 = !DILexicalBlockFile(scope: !2634, file: !402, discriminator: 1)
!2634 = distinct !DILexicalBlock(scope: !2628, file: !402, line: 555, column: 24)
!2635 = !DILocation(line: 555, column: 26, scope: !2634)
!2636 = !DILocation(line: 555, column: 102, scope: !2634)
!2637 = !DILocation(line: 556, column: 27, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !597, file: !402, line: 556, column: 9)
!2639 = !DILocation(line: 556, column: 34, scope: !2638)
!2640 = !DILocation(line: 556, column: 45, scope: !2638)
!2641 = !DILocation(line: 556, column: 54, scope: !2638)
!2642 = !DILocation(line: 556, column: 71, scope: !2638)
!2643 = !DILocation(line: 556, column: 9, scope: !597)
!2644 = !DILocation(line: 557, column: 22, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2638, file: !402, line: 556, column: 78)
!2646 = !DILocation(line: 558, column: 36, scope: !2645)
!2647 = !DILocation(line: 558, column: 43, scope: !2645)
!2648 = !DILocation(line: 558, column: 53, scope: !2645)
!2649 = !DILocation(line: 557, column: 9, scope: !2645)
!2650 = !DILocation(line: 559, column: 9, scope: !2645)
!2651 = !DILocation(line: 561, column: 43, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !597, file: !402, line: 561, column: 9)
!2653 = !DILocation(line: 561, column: 27, scope: !2652)
!2654 = !DILocation(line: 561, column: 49, scope: !2652)
!2655 = !DILocation(line: 561, column: 55, scope: !2652)
!2656 = !DILocation(line: 561, column: 25, scope: !2652)
!2657 = !DILocation(line: 561, column: 25, scope: !2658)
!2658 = !DILexicalBlockFile(scope: !2652, file: !402, discriminator: 1)
!2659 = !DILocation(line: 561, column: 98, scope: !2660)
!2660 = !DILexicalBlockFile(scope: !2652, file: !402, discriminator: 2)
!2661 = !DILocation(line: 561, column: 68, scope: !2652)
!2662 = !DILocation(line: 561, column: 22, scope: !2663)
!2663 = !DILexicalBlockFile(scope: !2664, file: !402, discriminator: 4)
!2664 = !DILexicalBlockFile(scope: !2652, file: !402, discriminator: 3)
!2665 = !DILocation(line: 561, column: 9, scope: !597)
!2666 = !DILocation(line: 562, column: 9, scope: !2652)
!2667 = !DILocation(line: 563, column: 9, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !597, file: !402, line: 563, column: 9)
!2669 = !DILocation(line: 563, column: 15, scope: !2668)
!2670 = !DILocation(line: 563, column: 9, scope: !597)
!2671 = !DILocation(line: 563, column: 41, scope: !2672)
!2672 = !DILexicalBlockFile(scope: !2673, file: !402, discriminator: 1)
!2673 = distinct !DILexicalBlock(scope: !2668, file: !402, line: 563, column: 23)
!2674 = !DILocation(line: 563, column: 25, scope: !2673)
!2675 = !DILocation(line: 563, column: 92, scope: !2673)
!2676 = !DILocation(line: 564, column: 60, scope: !597)
!2677 = !DILocation(line: 564, column: 42, scope: !597)
!2678 = !DILocation(line: 564, column: 67, scope: !597)
!2679 = !DILocation(line: 564, column: 10, scope: !597)
!2680 = !DILocation(line: 566, column: 9, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !597, file: !402, line: 566, column: 9)
!2682 = !DILocation(line: 566, column: 14, scope: !2681)
!2683 = !DILocation(line: 566, column: 18, scope: !2681)
!2684 = !DILocation(line: 566, column: 31, scope: !2685)
!2685 = !DILexicalBlockFile(scope: !2681, file: !402, discriminator: 1)
!2686 = !DILocation(line: 566, column: 37, scope: !2681)
!2687 = !DILocation(line: 566, column: 21, scope: !2681)
!2688 = !DILocation(line: 566, column: 42, scope: !2681)
!2689 = !DILocation(line: 566, column: 9, scope: !597)
!2690 = !DILocation(line: 567, column: 9, scope: !2681)
!2691 = !DILocation(line: 569, column: 31, scope: !597)
!2692 = !DILocation(line: 569, column: 12, scope: !597)
!2693 = !DILocation(line: 569, column: 5, scope: !597)
!2694 = !DILocation(line: 570, column: 1, scope: !597)
!2695 = !DILocation(line: 774, column: 29, scope: !626)
!2696 = !DILocation(line: 774, column: 45, scope: !626)
!2697 = !DILocation(line: 776, column: 9, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !626, file: !402, line: 776, column: 9)
!2699 = !DILocation(line: 776, column: 15, scope: !2698)
!2700 = !DILocation(line: 776, column: 18, scope: !2698)
!2701 = !DILocation(line: 776, column: 9, scope: !626)
!2702 = !DILocation(line: 776, column: 42, scope: !2703)
!2703 = !DILexicalBlockFile(scope: !2704, file: !402, discriminator: 1)
!2704 = distinct !DILexicalBlock(scope: !2698, file: !402, line: 776, column: 24)
!2705 = !DILocation(line: 776, column: 26, scope: !2704)
!2706 = !DILocation(line: 776, column: 102, scope: !2704)
!2707 = !DILocation(line: 777, column: 9, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !626, file: !402, line: 777, column: 9)
!2709 = !DILocation(line: 777, column: 15, scope: !2708)
!2710 = !DILocation(line: 777, column: 9, scope: !626)
!2711 = !DILocation(line: 777, column: 41, scope: !2712)
!2712 = !DILexicalBlockFile(scope: !2713, file: !402, discriminator: 1)
!2713 = distinct !DILexicalBlock(scope: !2708, file: !402, line: 777, column: 23)
!2714 = !DILocation(line: 777, column: 25, scope: !2713)
!2715 = !DILocation(line: 777, column: 92, scope: !2713)
!2716 = !DILocation(line: 778, column: 71, scope: !626)
!2717 = !DILocation(line: 778, column: 5, scope: !626)
!2718 = !DILocation(line: 779, column: 1, scope: !626)
!2719 = !DILocation(line: 782, column: 29, scope: !630)
!2720 = !DILocation(line: 782, column: 45, scope: !630)
!2721 = !DILocation(line: 784, column: 9, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !630, file: !402, line: 784, column: 9)
!2723 = !DILocation(line: 784, column: 15, scope: !2722)
!2724 = !DILocation(line: 784, column: 18, scope: !2722)
!2725 = !DILocation(line: 784, column: 9, scope: !630)
!2726 = !DILocation(line: 784, column: 42, scope: !2727)
!2727 = !DILexicalBlockFile(scope: !2728, file: !402, discriminator: 1)
!2728 = distinct !DILexicalBlock(scope: !2722, file: !402, line: 784, column: 24)
!2729 = !DILocation(line: 784, column: 26, scope: !2728)
!2730 = !DILocation(line: 784, column: 102, scope: !2728)
!2731 = !DILocation(line: 785, column: 9, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !630, file: !402, line: 785, column: 9)
!2733 = !DILocation(line: 785, column: 15, scope: !2732)
!2734 = !DILocation(line: 785, column: 9, scope: !630)
!2735 = !DILocation(line: 785, column: 41, scope: !2736)
!2736 = !DILexicalBlockFile(scope: !2737, file: !402, discriminator: 1)
!2737 = distinct !DILexicalBlock(scope: !2732, file: !402, line: 785, column: 23)
!2738 = !DILocation(line: 785, column: 25, scope: !2737)
!2739 = !DILocation(line: 785, column: 92, scope: !2737)
!2740 = !DILocation(line: 786, column: 71, scope: !630)
!2741 = !DILocation(line: 786, column: 5, scope: !630)
!2742 = !DILocation(line: 787, column: 1, scope: !630)
!2743 = !DILocation(line: 790, column: 29, scope: !634)
!2744 = !DILocation(line: 790, column: 45, scope: !634)
!2745 = !DILocation(line: 792, column: 9, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !634, file: !402, line: 792, column: 9)
!2747 = !DILocation(line: 792, column: 15, scope: !2746)
!2748 = !DILocation(line: 792, column: 18, scope: !2746)
!2749 = !DILocation(line: 792, column: 9, scope: !634)
!2750 = !DILocation(line: 792, column: 42, scope: !2751)
!2751 = !DILexicalBlockFile(scope: !2752, file: !402, discriminator: 1)
!2752 = distinct !DILexicalBlock(scope: !2746, file: !402, line: 792, column: 24)
!2753 = !DILocation(line: 792, column: 26, scope: !2752)
!2754 = !DILocation(line: 792, column: 102, scope: !2752)
!2755 = !DILocation(line: 793, column: 9, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !634, file: !402, line: 793, column: 9)
!2757 = !DILocation(line: 793, column: 15, scope: !2756)
!2758 = !DILocation(line: 793, column: 9, scope: !634)
!2759 = !DILocation(line: 793, column: 41, scope: !2760)
!2760 = !DILexicalBlockFile(scope: !2761, file: !402, discriminator: 1)
!2761 = distinct !DILexicalBlock(scope: !2756, file: !402, line: 793, column: 23)
!2762 = !DILocation(line: 793, column: 25, scope: !2761)
!2763 = !DILocation(line: 793, column: 92, scope: !2761)
!2764 = !DILocation(line: 794, column: 71, scope: !634)
!2765 = !DILocation(line: 794, column: 5, scope: !634)
!2766 = !DILocation(line: 795, column: 1, scope: !634)
!2767 = !DILocation(line: 810, column: 29, scope: !638)
!2768 = !DILocation(line: 812, column: 5, scope: !638)
!2769 = !DILocation(line: 812, column: 15, scope: !638)
!2770 = !DILocation(line: 812, column: 45, scope: !638)
!2771 = !DILocation(line: 812, column: 27, scope: !638)
!2772 = !DILocation(line: 813, column: 5, scope: !638)
!2773 = !DILocation(line: 813, column: 15, scope: !638)
!2774 = !DILocation(line: 814, column: 5, scope: !638)
!2775 = !DILocation(line: 814, column: 15, scope: !638)
!2776 = !DILocation(line: 816, column: 9, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !638, file: !402, line: 816, column: 9)
!2778 = !DILocation(line: 816, column: 19, scope: !2777)
!2779 = !DILocation(line: 816, column: 9, scope: !638)
!2780 = !DILocation(line: 817, column: 9, scope: !2777)
!2781 = !DILocation(line: 818, column: 9, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !638, file: !402, line: 818, column: 9)
!2783 = !DILocation(line: 818, column: 15, scope: !2782)
!2784 = !DILocation(line: 818, column: 20, scope: !2782)
!2785 = !DILocation(line: 818, column: 9, scope: !638)
!2786 = !DILocation(line: 819, column: 55, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2782, file: !402, line: 818, column: 35)
!2788 = !DILocation(line: 820, column: 14, scope: !2787)
!2789 = !DILocation(line: 821, column: 5, scope: !2787)
!2790 = !DILocation(line: 823, column: 28, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2782, file: !402, line: 822, column: 10)
!2792 = !DILocation(line: 823, column: 34, scope: !2791)
!2793 = !DILocation(line: 823, column: 16, scope: !2791)
!2794 = !DILocation(line: 823, column: 14, scope: !2791)
!2795 = !DILocation(line: 824, column: 13, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2791, file: !402, line: 824, column: 13)
!2797 = !DILocation(line: 824, column: 18, scope: !2796)
!2798 = !DILocation(line: 824, column: 13, scope: !2791)
!2799 = !DILocation(line: 825, column: 13, scope: !2796)
!2800 = !DILocation(line: 828, column: 44, scope: !638)
!2801 = !DILocation(line: 829, column: 27, scope: !638)
!2802 = !DILocation(line: 829, column: 33, scope: !638)
!2803 = !DILocation(line: 829, column: 42, scope: !2804)
!2804 = !DILexicalBlockFile(scope: !638, file: !402, discriminator: 1)
!2805 = !DILocation(line: 829, column: 48, scope: !638)
!2806 = !DILocation(line: 829, column: 27, scope: !2807)
!2807 = !DILexicalBlockFile(scope: !638, file: !402, discriminator: 2)
!2808 = !DILocation(line: 830, column: 27, scope: !638)
!2809 = !DILocation(line: 830, column: 33, scope: !638)
!2810 = !DILocation(line: 830, column: 38, scope: !638)
!2811 = !DILocation(line: 828, column: 13, scope: !638)
!2812 = !DILocation(line: 828, column: 11, scope: !638)
!2813 = !DILocation(line: 831, column: 5, scope: !638)
!2814 = !DILocation(line: 831, column: 10, scope: !2815)
!2815 = !DILexicalBlockFile(scope: !645, file: !402, discriminator: 1)
!2816 = !DILocation(line: 831, column: 20, scope: !645)
!2817 = !DILocation(line: 831, column: 50, scope: !645)
!2818 = !DILocation(line: 831, column: 70, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !645, file: !402, line: 831, column: 67)
!2820 = !DILocation(line: 831, column: 87, scope: !2819)
!2821 = !DILocation(line: 831, column: 67, scope: !2819)
!2822 = !DILocation(line: 831, column: 97, scope: !2819)
!2823 = !DILocation(line: 831, column: 67, scope: !645)
!2824 = !DILocation(line: 831, column: 67, scope: !2825)
!2825 = !DILexicalBlockFile(scope: !645, file: !402, discriminator: 2)
!2826 = !DILocation(line: 831, column: 128, scope: !2827)
!2827 = !DILexicalBlockFile(scope: !2819, file: !402, discriminator: 3)
!2828 = !DILocation(line: 831, column: 146, scope: !2819)
!2829 = !DILocation(line: 831, column: 156, scope: !2819)
!2830 = !DILocation(line: 831, column: 181, scope: !2819)
!2831 = !DILocation(line: 831, column: 112, scope: !2819)
!2832 = !DILocation(line: 831, column: 200, scope: !2833)
!2833 = !DILexicalBlockFile(scope: !638, file: !402, discriminator: 4)
!2834 = !DILocation(line: 831, column: 200, scope: !645)
!2835 = !DILocation(line: 831, column: 200, scope: !2836)
!2836 = !DILexicalBlockFile(scope: !645, file: !402, discriminator: 5)
!2837 = !DILocation(line: 832, column: 12, scope: !638)
!2838 = !DILocation(line: 832, column: 5, scope: !638)
!2839 = !DILocation(line: 833, column: 1, scope: !638)
!2840 = !DILocation(line: 836, column: 29, scope: !646)
!2841 = !DILocation(line: 836, column: 45, scope: !646)
!2842 = !DILocation(line: 838, column: 5, scope: !646)
!2843 = !DILocation(line: 838, column: 15, scope: !646)
!2844 = !DILocation(line: 839, column: 5, scope: !646)
!2845 = !DILocation(line: 839, column: 15, scope: !646)
!2846 = !DILocation(line: 840, column: 5, scope: !646)
!2847 = !DILocation(line: 840, column: 15, scope: !646)
!2848 = !DILocation(line: 841, column: 5, scope: !646)
!2849 = !DILocation(line: 841, column: 16, scope: !646)
!2850 = !DILocation(line: 844, column: 9, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !646, file: !402, line: 844, column: 9)
!2852 = !DILocation(line: 844, column: 15, scope: !2851)
!2853 = !DILocation(line: 844, column: 9, scope: !646)
!2854 = !DILocation(line: 844, column: 41, scope: !2855)
!2855 = !DILexicalBlockFile(scope: !2856, file: !402, discriminator: 1)
!2856 = distinct !DILexicalBlock(scope: !2851, file: !402, line: 844, column: 23)
!2857 = !DILocation(line: 844, column: 25, scope: !2856)
!2858 = !DILocation(line: 844, column: 92, scope: !2856)
!2859 = !DILocation(line: 849, column: 27, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !646, file: !402, line: 849, column: 9)
!2861 = !DILocation(line: 849, column: 36, scope: !2860)
!2862 = !DILocation(line: 849, column: 47, scope: !2860)
!2863 = !DILocation(line: 849, column: 56, scope: !2860)
!2864 = !DILocation(line: 849, column: 73, scope: !2860)
!2865 = !DILocation(line: 849, column: 79, scope: !2860)
!2866 = !DILocation(line: 849, column: 99, scope: !2867)
!2867 = !DILexicalBlockFile(scope: !2860, file: !402, discriminator: 1)
!2868 = !DILocation(line: 849, column: 84, scope: !2860)
!2869 = !DILocation(line: 849, column: 108, scope: !2860)
!2870 = !{!904, !808, i64 16}
!2871 = !DILocation(line: 849, column: 117, scope: !2860)
!2872 = !DILocation(line: 849, column: 9, scope: !646)
!2873 = !DILocation(line: 850, column: 22, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2860, file: !402, line: 849, column: 122)
!2875 = !DILocation(line: 852, column: 36, scope: !2874)
!2876 = !DILocation(line: 852, column: 24, scope: !2874)
!2877 = !DILocation(line: 852, column: 44, scope: !2874)
!2878 = !DILocation(line: 852, column: 54, scope: !2874)
!2879 = !DILocation(line: 852, column: 77, scope: !2874)
!2880 = !DILocation(line: 852, column: 86, scope: !2874)
!2881 = !DILocation(line: 852, column: 96, scope: !2874)
!2882 = !DILocation(line: 850, column: 9, scope: !2874)
!2883 = !DILocation(line: 853, column: 9, scope: !2874)
!2884 = !DILocation(line: 857, column: 32, scope: !646)
!2885 = !DILocation(line: 857, column: 15, scope: !646)
!2886 = !DILocation(line: 857, column: 13, scope: !646)
!2887 = !DILocation(line: 858, column: 9, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !646, file: !402, line: 858, column: 9)
!2889 = !DILocation(line: 858, column: 17, scope: !2888)
!2890 = !DILocation(line: 858, column: 9, scope: !646)
!2891 = !DILocation(line: 859, column: 9, scope: !2888)
!2892 = !DILocation(line: 860, column: 23, scope: !657)
!2893 = !DILocation(line: 860, column: 29, scope: !657)
!2894 = !DILocation(line: 860, column: 9, scope: !657)
!2895 = !DILocation(line: 860, column: 50, scope: !657)
!2896 = !DILocation(line: 860, column: 9, scope: !646)
!2897 = !DILocation(line: 861, column: 9, scope: !656)
!2898 = !DILocation(line: 861, column: 14, scope: !2899)
!2899 = !DILexicalBlockFile(scope: !655, file: !402, discriminator: 1)
!2900 = !DILocation(line: 861, column: 24, scope: !655)
!2901 = !DILocation(line: 861, column: 54, scope: !655)
!2902 = !DILocation(line: 861, column: 72, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !655, file: !402, line: 861, column: 69)
!2904 = !DILocation(line: 861, column: 89, scope: !2903)
!2905 = !DILocation(line: 861, column: 69, scope: !2903)
!2906 = !DILocation(line: 861, column: 99, scope: !2903)
!2907 = !DILocation(line: 861, column: 69, scope: !655)
!2908 = !DILocation(line: 861, column: 69, scope: !2909)
!2909 = !DILexicalBlockFile(scope: !655, file: !402, discriminator: 2)
!2910 = !DILocation(line: 861, column: 130, scope: !2911)
!2911 = !DILexicalBlockFile(scope: !2903, file: !402, discriminator: 3)
!2912 = !DILocation(line: 861, column: 148, scope: !2903)
!2913 = !DILocation(line: 861, column: 158, scope: !2903)
!2914 = !DILocation(line: 861, column: 183, scope: !2903)
!2915 = !DILocation(line: 861, column: 114, scope: !2903)
!2916 = !DILocation(line: 861, column: 202, scope: !2917)
!2917 = !DILexicalBlockFile(scope: !656, file: !402, discriminator: 4)
!2918 = !DILocation(line: 861, column: 202, scope: !655)
!2919 = !DILocation(line: 861, column: 202, scope: !2920)
!2920 = !DILexicalBlockFile(scope: !655, file: !402, discriminator: 5)
!2921 = !DILocation(line: 862, column: 9, scope: !656)
!2922 = !DILocation(line: 864, column: 5, scope: !646)
!2923 = !DILocation(line: 864, column: 10, scope: !2924)
!2924 = !DILexicalBlockFile(scope: !659, file: !402, discriminator: 1)
!2925 = !DILocation(line: 864, column: 20, scope: !659)
!2926 = !DILocation(line: 864, column: 50, scope: !659)
!2927 = !DILocation(line: 864, column: 68, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !659, file: !402, line: 864, column: 65)
!2929 = !DILocation(line: 864, column: 85, scope: !2928)
!2930 = !DILocation(line: 864, column: 65, scope: !2928)
!2931 = !DILocation(line: 864, column: 95, scope: !2928)
!2932 = !DILocation(line: 864, column: 65, scope: !659)
!2933 = !DILocation(line: 864, column: 65, scope: !2934)
!2934 = !DILexicalBlockFile(scope: !659, file: !402, discriminator: 2)
!2935 = !DILocation(line: 864, column: 126, scope: !2936)
!2936 = !DILexicalBlockFile(scope: !2928, file: !402, discriminator: 3)
!2937 = !DILocation(line: 864, column: 144, scope: !2928)
!2938 = !DILocation(line: 864, column: 154, scope: !2928)
!2939 = !DILocation(line: 864, column: 179, scope: !2928)
!2940 = !DILocation(line: 864, column: 110, scope: !2928)
!2941 = !DILocation(line: 864, column: 198, scope: !2942)
!2942 = !DILexicalBlockFile(scope: !646, file: !402, discriminator: 4)
!2943 = !DILocation(line: 864, column: 198, scope: !659)
!2944 = !DILocation(line: 864, column: 198, scope: !2945)
!2945 = !DILexicalBlockFile(scope: !659, file: !402, discriminator: 5)
!2946 = !DILocation(line: 873, column: 9, scope: !661)
!2947 = !DILocation(line: 873, column: 19, scope: !661)
!2948 = !DILocation(line: 874, column: 9, scope: !661)
!2949 = !DILocation(line: 874, column: 18, scope: !661)
!2950 = !DILocation(line: 875, column: 9, scope: !661)
!2951 = !DILocation(line: 875, column: 20, scope: !661)
!2952 = !DILocation(line: 877, column: 36, scope: !661)
!2953 = !DILocation(line: 877, column: 18, scope: !661)
!2954 = !DILocation(line: 877, column: 45, scope: !661)
!2955 = !DILocation(line: 877, column: 17, scope: !661)
!2956 = !DILocation(line: 877, column: 14, scope: !661)
!2957 = !DILocation(line: 878, column: 36, scope: !661)
!2958 = !DILocation(line: 878, column: 15, scope: !661)
!2959 = !DILocation(line: 878, column: 13, scope: !661)
!2960 = !DILocation(line: 879, column: 13, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !661, file: !402, line: 879, column: 13)
!2962 = !DILocation(line: 879, column: 17, scope: !2961)
!2963 = !DILocation(line: 879, column: 13, scope: !661)
!2964 = !DILocation(line: 880, column: 13, scope: !2961)
!2965 = !DILocation(line: 881, column: 67, scope: !661)
!2966 = !DILocation(line: 881, column: 49, scope: !661)
!2967 = !DILocation(line: 881, column: 75, scope: !661)
!2968 = !DILocation(line: 881, column: 17, scope: !661)
!2969 = !DILocation(line: 883, column: 27, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !661, file: !402, line: 883, column: 13)
!2971 = !DILocation(line: 883, column: 33, scope: !2970)
!2972 = !DILocation(line: 883, column: 13, scope: !2970)
!2973 = !DILocation(line: 883, column: 42, scope: !2970)
!2974 = !DILocation(line: 883, column: 13, scope: !661)
!2975 = !DILocation(line: 884, column: 24, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2970, file: !402, line: 883, column: 47)
!2977 = !DILocation(line: 884, column: 13, scope: !2976)
!2978 = !DILocation(line: 885, column: 13, scope: !2976)
!2979 = !DILocation(line: 887, column: 16, scope: !661)
!2980 = !DILocation(line: 887, column: 22, scope: !661)
!2981 = !DILocation(line: 887, column: 9, scope: !661)
!2982 = !DILocation(line: 887, column: 27, scope: !661)
!2983 = !DILocation(line: 887, column: 32, scope: !661)
!2984 = !DILocation(line: 887, column: 40, scope: !661)
!2985 = !DILocation(line: 888, column: 20, scope: !661)
!2986 = !DILocation(line: 888, column: 9, scope: !661)
!2987 = !DILocation(line: 889, column: 29, scope: !661)
!2988 = !DILocation(line: 889, column: 9, scope: !661)
!2989 = !DILocation(line: 889, column: 15, scope: !661)
!2990 = !DILocation(line: 889, column: 27, scope: !661)
!2991 = !DILocation(line: 890, column: 5, scope: !646)
!2992 = !DILocation(line: 890, column: 5, scope: !2993)
!2993 = !DILexicalBlockFile(scope: !646, file: !402, discriminator: 1)
!2994 = !DILocation(line: 895, column: 40, scope: !646)
!2995 = !DILocation(line: 895, column: 22, scope: !646)
!2996 = !DILocation(line: 895, column: 49, scope: !646)
!2997 = !DILocation(line: 895, column: 21, scope: !646)
!2998 = !DILocation(line: 895, column: 18, scope: !646)
!2999 = !DILocation(line: 896, column: 27, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !646, file: !402, line: 896, column: 9)
!3001 = !DILocation(line: 896, column: 43, scope: !3000)
!3002 = !DILocation(line: 896, column: 54, scope: !3000)
!3003 = !DILocation(line: 896, column: 63, scope: !3000)
!3004 = !DILocation(line: 896, column: 80, scope: !3000)
!3005 = !DILocation(line: 896, column: 9, scope: !646)
!3006 = !DILocation(line: 897, column: 22, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !3000, file: !402, line: 896, column: 87)
!3008 = !DILocation(line: 899, column: 36, scope: !3007)
!3009 = !DILocation(line: 899, column: 52, scope: !3007)
!3010 = !DILocation(line: 899, column: 62, scope: !3007)
!3011 = !DILocation(line: 897, column: 9, scope: !3007)
!3012 = !DILocation(line: 900, column: 9, scope: !3007)
!3013 = !DILocation(line: 902, column: 28, scope: !646)
!3014 = !DILocation(line: 902, column: 11, scope: !646)
!3015 = !DILocation(line: 902, column: 9, scope: !646)
!3016 = !DILocation(line: 903, column: 9, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !646, file: !402, line: 903, column: 9)
!3018 = !DILocation(line: 903, column: 13, scope: !3017)
!3019 = !DILocation(line: 903, column: 19, scope: !3017)
!3020 = !DILocation(line: 903, column: 22, scope: !3021)
!3021 = !DILexicalBlockFile(scope: !3017, file: !402, discriminator: 1)
!3022 = !DILocation(line: 903, column: 9, scope: !646)
!3023 = !DILocation(line: 904, column: 9, scope: !3017)
!3024 = !DILocation(line: 905, column: 9, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !646, file: !402, line: 905, column: 9)
!3026 = !DILocation(line: 905, column: 13, scope: !3025)
!3027 = !DILocation(line: 905, column: 9, scope: !646)
!3028 = !DILocation(line: 906, column: 25, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3025, file: !402, line: 905, column: 18)
!3030 = !DILocation(line: 906, column: 9, scope: !3029)
!3031 = !DILocation(line: 908, column: 9, scope: !3029)
!3032 = !DILocation(line: 910, column: 17, scope: !646)
!3033 = !DILocation(line: 910, column: 5, scope: !646)
!3034 = !DILocation(line: 910, column: 11, scope: !646)
!3035 = !DILocation(line: 910, column: 15, scope: !646)
!3036 = !DILocation(line: 913, column: 32, scope: !646)
!3037 = !DILocation(line: 913, column: 14, scope: !646)
!3038 = !DILocation(line: 913, column: 41, scope: !646)
!3039 = !DILocation(line: 913, column: 13, scope: !646)
!3040 = !DILocation(line: 913, column: 10, scope: !646)
!3041 = !DILocation(line: 914, column: 9, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !646, file: !402, line: 914, column: 9)
!3043 = !DILocation(line: 914, column: 14, scope: !3042)
!3044 = !DILocation(line: 914, column: 9, scope: !646)
!3045 = !DILocation(line: 915, column: 31, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3047, file: !402, line: 915, column: 13)
!3047 = distinct !DILexicalBlock(scope: !3042, file: !402, line: 914, column: 36)
!3048 = !DILocation(line: 915, column: 39, scope: !3046)
!3049 = !DILocation(line: 915, column: 50, scope: !3046)
!3050 = !DILocation(line: 915, column: 59, scope: !3046)
!3051 = !DILocation(line: 915, column: 76, scope: !3046)
!3052 = !DILocation(line: 915, column: 13, scope: !3047)
!3053 = !DILocation(line: 916, column: 26, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3046, file: !402, line: 915, column: 83)
!3055 = !DILocation(line: 918, column: 40, scope: !3054)
!3056 = !DILocation(line: 918, column: 48, scope: !3054)
!3057 = !DILocation(line: 918, column: 58, scope: !3054)
!3058 = !DILocation(line: 916, column: 13, scope: !3054)
!3059 = !DILocation(line: 919, column: 13, scope: !3054)
!3060 = !DILocation(line: 921, column: 13, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3047, file: !402, line: 921, column: 13)
!3062 = !DILocation(line: 921, column: 19, scope: !3061)
!3063 = !DILocation(line: 921, column: 13, scope: !3047)
!3064 = !DILocation(line: 924, column: 31, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3066, file: !402, line: 924, column: 17)
!3066 = distinct !DILexicalBlock(scope: !3061, file: !402, line: 921, column: 25)
!3067 = !DILocation(line: 924, column: 37, scope: !3065)
!3068 = !DILocation(line: 924, column: 43, scope: !3065)
!3069 = !DILocation(line: 924, column: 17, scope: !3065)
!3070 = !DILocation(line: 924, column: 49, scope: !3065)
!3071 = !DILocation(line: 924, column: 17, scope: !3066)
!3072 = !DILocation(line: 925, column: 17, scope: !3065)
!3073 = !DILocation(line: 926, column: 9, scope: !3066)
!3074 = !DILocation(line: 928, column: 29, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3061, file: !402, line: 927, column: 14)
!3076 = !DILocation(line: 928, column: 37, scope: !3075)
!3077 = !DILocation(line: 928, column: 46, scope: !3075)
!3078 = !DILocation(line: 929, column: 26, scope: !3075)
!3079 = !DILocation(line: 929, column: 13, scope: !3075)
!3080 = !DILocation(line: 929, column: 19, scope: !3075)
!3081 = !DILocation(line: 929, column: 24, scope: !3075)
!3082 = !DILocation(line: 931, column: 5, scope: !3047)
!3083 = !DILocation(line: 933, column: 58, scope: !646)
!3084 = !DILocation(line: 933, column: 5, scope: !646)
!3085 = !DILocation(line: 934, column: 1, scope: !646)
!3086 = !DILocation(line: 124, column: 29, scope: !555)
!3087 = !DILocation(line: 126, column: 5, scope: !555)
!3088 = !DILocation(line: 126, column: 15, scope: !555)
!3089 = !DILocation(line: 126, column: 46, scope: !555)
!3090 = !DILocation(line: 126, column: 52, scope: !555)
!3091 = !DILocation(line: 126, column: 30, scope: !555)
!3092 = !DILocation(line: 127, column: 5, scope: !555)
!3093 = !DILocation(line: 127, column: 11, scope: !555)
!3094 = !DILocation(line: 127, column: 17, scope: !555)
!3095 = !DILocation(line: 128, column: 9, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !555, file: !402, line: 128, column: 9)
!3097 = !DILocation(line: 128, column: 22, scope: !3096)
!3098 = !DILocation(line: 128, column: 9, scope: !555)
!3099 = !DILocation(line: 129, column: 9, scope: !3096)
!3100 = !DILocation(line: 130, column: 23, scope: !562)
!3101 = !DILocation(line: 130, column: 29, scope: !562)
!3102 = !DILocation(line: 130, column: 9, scope: !562)
!3103 = !DILocation(line: 130, column: 35, scope: !562)
!3104 = !DILocation(line: 131, column: 29, scope: !562)
!3105 = !DILocation(line: 131, column: 35, scope: !562)
!3106 = !DILocation(line: 131, column: 41, scope: !562)
!3107 = !DILocation(line: 131, column: 9, scope: !562)
!3108 = !DILocation(line: 130, column: 9, scope: !555)
!3109 = !DILocation(line: 132, column: 9, scope: !561)
!3110 = !DILocation(line: 132, column: 14, scope: !3111)
!3111 = !DILexicalBlockFile(scope: !560, file: !402, discriminator: 1)
!3112 = !DILocation(line: 132, column: 24, scope: !560)
!3113 = !DILocation(line: 132, column: 54, scope: !560)
!3114 = !DILocation(line: 132, column: 77, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !560, file: !402, line: 132, column: 74)
!3116 = !DILocation(line: 132, column: 94, scope: !3115)
!3117 = !DILocation(line: 132, column: 74, scope: !3115)
!3118 = !DILocation(line: 132, column: 104, scope: !3115)
!3119 = !DILocation(line: 132, column: 74, scope: !560)
!3120 = !DILocation(line: 132, column: 74, scope: !3121)
!3121 = !DILexicalBlockFile(scope: !560, file: !402, discriminator: 2)
!3122 = !DILocation(line: 132, column: 135, scope: !3123)
!3123 = !DILexicalBlockFile(scope: !3115, file: !402, discriminator: 3)
!3124 = !DILocation(line: 132, column: 153, scope: !3115)
!3125 = !DILocation(line: 132, column: 163, scope: !3115)
!3126 = !DILocation(line: 132, column: 188, scope: !3115)
!3127 = !DILocation(line: 132, column: 119, scope: !3115)
!3128 = !DILocation(line: 132, column: 207, scope: !3129)
!3129 = !DILexicalBlockFile(scope: !561, file: !402, discriminator: 4)
!3130 = !DILocation(line: 132, column: 207, scope: !560)
!3131 = !DILocation(line: 132, column: 207, scope: !3132)
!3132 = !DILexicalBlockFile(scope: !560, file: !402, discriminator: 5)
!3133 = !DILocation(line: 133, column: 9, scope: !561)
!3134 = !DILocation(line: 135, column: 5, scope: !555)
!3135 = !DILocation(line: 135, column: 11, scope: !555)
!3136 = !DILocation(line: 135, column: 17, scope: !555)
!3137 = !DILocation(line: 136, column: 12, scope: !555)
!3138 = !DILocation(line: 136, column: 5, scope: !555)
!3139 = !DILocation(line: 137, column: 1, scope: !555)
!3140 = !DILocation(line: 174, column: 21, scope: !602)
!3141 = !DILocation(line: 174, column: 37, scope: !602)
!3142 = !DILocation(line: 176, column: 5, scope: !602)
!3143 = !DILocation(line: 176, column: 16, scope: !602)
!3144 = !DILocation(line: 177, column: 5, scope: !602)
!3145 = !DILocation(line: 177, column: 15, scope: !602)
!3146 = !DILocation(line: 182, column: 9, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !602, file: !402, line: 182, column: 9)
!3148 = !DILocation(line: 182, column: 15, scope: !3147)
!3149 = !DILocation(line: 182, column: 23, scope: !3147)
!3150 = !DILocation(line: 182, column: 9, scope: !602)
!3151 = !DILocation(line: 184, column: 13, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3147, file: !402, line: 182, column: 38)
!3153 = !DILocation(line: 184, column: 19, scope: !3152)
!3154 = !DILocation(line: 184, column: 28, scope: !3152)
!3155 = !DILocation(line: 183, column: 19, scope: !3152)
!3156 = !DILocation(line: 183, column: 17, scope: !3152)
!3157 = !DILocation(line: 185, column: 5, scope: !3152)
!3158 = !DILocation(line: 187, column: 19, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3147, file: !402, line: 186, column: 10)
!3160 = !DILocation(line: 187, column: 17, scope: !3159)
!3161 = !DILocation(line: 188, column: 25, scope: !3159)
!3162 = !DILocation(line: 188, column: 36, scope: !3159)
!3163 = !DILocation(line: 188, column: 45, scope: !3159)
!3164 = !DILocation(line: 190, column: 9, scope: !612)
!3165 = !DILocation(line: 190, column: 15, scope: !612)
!3166 = !DILocation(line: 190, column: 9, scope: !602)
!3167 = !DILocation(line: 191, column: 9, scope: !611)
!3168 = !DILocation(line: 191, column: 19, scope: !611)
!3169 = !DILocation(line: 192, column: 13, scope: !611)
!3170 = !DILocation(line: 192, column: 22, scope: !611)
!3171 = !DILocation(line: 192, column: 36, scope: !611)
!3172 = !DILocation(line: 192, column: 42, scope: !611)
!3173 = !DILocation(line: 191, column: 32, scope: !611)
!3174 = !DILocation(line: 193, column: 9, scope: !611)
!3175 = !DILocation(line: 193, column: 14, scope: !3176)
!3176 = !DILexicalBlockFile(scope: !614, file: !402, discriminator: 1)
!3177 = !DILocation(line: 193, column: 24, scope: !614)
!3178 = !DILocation(line: 193, column: 54, scope: !614)
!3179 = !DILocation(line: 193, column: 72, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !614, file: !402, line: 193, column: 69)
!3181 = !DILocation(line: 193, column: 89, scope: !3180)
!3182 = !DILocation(line: 193, column: 69, scope: !3180)
!3183 = !DILocation(line: 193, column: 99, scope: !3180)
!3184 = !DILocation(line: 193, column: 69, scope: !614)
!3185 = !DILocation(line: 193, column: 69, scope: !3186)
!3186 = !DILexicalBlockFile(scope: !614, file: !402, discriminator: 2)
!3187 = !DILocation(line: 193, column: 130, scope: !3188)
!3188 = !DILexicalBlockFile(scope: !3180, file: !402, discriminator: 3)
!3189 = !DILocation(line: 193, column: 148, scope: !3180)
!3190 = !DILocation(line: 193, column: 158, scope: !3180)
!3191 = !DILocation(line: 193, column: 183, scope: !3180)
!3192 = !DILocation(line: 193, column: 114, scope: !3180)
!3193 = !DILocation(line: 193, column: 202, scope: !3194)
!3194 = !DILexicalBlockFile(scope: !611, file: !402, discriminator: 4)
!3195 = !DILocation(line: 193, column: 202, scope: !614)
!3196 = !DILocation(line: 193, column: 202, scope: !3197)
!3197 = !DILexicalBlockFile(scope: !614, file: !402, discriminator: 5)
!3198 = !DILocation(line: 194, column: 19, scope: !611)
!3199 = !DILocation(line: 194, column: 17, scope: !611)
!3200 = !DILocation(line: 195, column: 5, scope: !612)
!3201 = !DILocation(line: 195, column: 5, scope: !611)
!3202 = !DILocation(line: 196, column: 9, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !602, file: !402, line: 196, column: 9)
!3204 = !DILocation(line: 196, column: 17, scope: !3203)
!3205 = !DILocation(line: 196, column: 9, scope: !602)
!3206 = !DILocation(line: 197, column: 9, scope: !3203)
!3207 = !DILocation(line: 200, column: 43, scope: !618)
!3208 = !DILocation(line: 200, column: 27, scope: !618)
!3209 = !DILocation(line: 200, column: 53, scope: !618)
!3210 = !DILocation(line: 200, column: 59, scope: !618)
!3211 = !DILocation(line: 200, column: 25, scope: !618)
!3212 = !DILocation(line: 200, column: 25, scope: !3213)
!3213 = !DILexicalBlockFile(scope: !618, file: !402, discriminator: 1)
!3214 = !DILocation(line: 200, column: 102, scope: !3215)
!3215 = !DILexicalBlockFile(scope: !618, file: !402, discriminator: 2)
!3216 = !DILocation(line: 200, column: 72, scope: !618)
!3217 = !DILocation(line: 200, column: 22, scope: !3218)
!3218 = !DILexicalBlockFile(scope: !3219, file: !402, discriminator: 4)
!3219 = !DILexicalBlockFile(scope: !618, file: !402, discriminator: 3)
!3220 = !DILocation(line: 200, column: 9, scope: !602)
!3221 = !DILocation(line: 201, column: 9, scope: !617)
!3222 = !DILocation(line: 201, column: 14, scope: !3223)
!3223 = !DILexicalBlockFile(scope: !616, file: !402, discriminator: 1)
!3224 = !DILocation(line: 201, column: 24, scope: !616)
!3225 = !DILocation(line: 201, column: 54, scope: !616)
!3226 = !DILocation(line: 201, column: 72, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !616, file: !402, line: 201, column: 69)
!3228 = !DILocation(line: 201, column: 89, scope: !3227)
!3229 = !DILocation(line: 201, column: 69, scope: !3227)
!3230 = !DILocation(line: 201, column: 99, scope: !3227)
!3231 = !DILocation(line: 201, column: 69, scope: !616)
!3232 = !DILocation(line: 201, column: 69, scope: !3233)
!3233 = !DILexicalBlockFile(scope: !616, file: !402, discriminator: 2)
!3234 = !DILocation(line: 201, column: 130, scope: !3235)
!3235 = !DILexicalBlockFile(scope: !3227, file: !402, discriminator: 3)
!3236 = !DILocation(line: 201, column: 148, scope: !3227)
!3237 = !DILocation(line: 201, column: 158, scope: !3227)
!3238 = !DILocation(line: 201, column: 183, scope: !3227)
!3239 = !DILocation(line: 201, column: 114, scope: !3227)
!3240 = !DILocation(line: 201, column: 202, scope: !3241)
!3241 = !DILexicalBlockFile(scope: !617, file: !402, discriminator: 4)
!3242 = !DILocation(line: 201, column: 202, scope: !616)
!3243 = !DILocation(line: 201, column: 202, scope: !3244)
!3244 = !DILexicalBlockFile(scope: !616, file: !402, discriminator: 5)
!3245 = !DILocation(line: 202, column: 9, scope: !617)
!3246 = !DILocation(line: 204, column: 59, scope: !602)
!3247 = !DILocation(line: 204, column: 41, scope: !602)
!3248 = !DILocation(line: 204, column: 70, scope: !602)
!3249 = !DILocation(line: 204, column: 9, scope: !602)
!3250 = !DILocation(line: 210, column: 9, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !602, file: !402, line: 210, column: 9)
!3252 = !DILocation(line: 210, column: 15, scope: !3251)
!3253 = !DILocation(line: 210, column: 55, scope: !3251)
!3254 = !DILocation(line: 210, column: 53, scope: !3251)
!3255 = !DILocation(line: 210, column: 19, scope: !3251)
!3256 = !DILocation(line: 210, column: 9, scope: !602)
!3257 = !DILocation(line: 211, column: 25, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3251, file: !402, line: 210, column: 60)
!3259 = !DILocation(line: 211, column: 9, scope: !3258)
!3260 = !DILocation(line: 213, column: 9, scope: !3258)
!3261 = !DILocation(line: 216, column: 9, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !602, file: !402, line: 216, column: 9)
!3263 = !DILocation(line: 216, column: 15, scope: !3262)
!3264 = !DILocation(line: 216, column: 21, scope: !3262)
!3265 = !DILocation(line: 216, column: 9, scope: !602)
!3266 = !DILocation(line: 217, column: 13, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3268, file: !402, line: 217, column: 13)
!3268 = distinct !DILexicalBlock(scope: !3262, file: !402, line: 216, column: 27)
!3269 = !DILocation(line: 217, column: 19, scope: !3267)
!3270 = !DILocation(line: 217, column: 34, scope: !3267)
!3271 = !DILocation(line: 217, column: 40, scope: !3267)
!3272 = !DILocation(line: 217, column: 31, scope: !3267)
!3273 = !DILocation(line: 217, column: 13, scope: !3268)
!3274 = !DILocation(line: 218, column: 37, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3276, file: !402, line: 218, column: 17)
!3276 = distinct !DILexicalBlock(scope: !3267, file: !402, line: 217, column: 45)
!3277 = !DILocation(line: 218, column: 43, scope: !3275)
!3278 = !DILocation(line: 218, column: 49, scope: !3275)
!3279 = !DILocation(line: 218, column: 17, scope: !3275)
!3280 = !DILocation(line: 218, column: 17, scope: !3276)
!3281 = !DILocation(line: 219, column: 17, scope: !3275)
!3282 = !DILocation(line: 220, column: 13, scope: !3276)
!3283 = !DILocation(line: 222, column: 21, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3268, file: !402, line: 222, column: 13)
!3285 = !DILocation(line: 222, column: 13, scope: !3284)
!3286 = !DILocation(line: 222, column: 13, scope: !3268)
!3287 = !DILocation(line: 223, column: 13, scope: !3284)
!3288 = !DILocation(line: 224, column: 5, scope: !3268)
!3289 = !DILocation(line: 226, column: 9, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !602, file: !402, line: 226, column: 9)
!3291 = !DILocation(line: 226, column: 15, scope: !3290)
!3292 = !DILocation(line: 226, column: 21, scope: !3290)
!3293 = !DILocation(line: 226, column: 19, scope: !3290)
!3294 = !DILocation(line: 226, column: 27, scope: !3290)
!3295 = !DILocation(line: 226, column: 33, scope: !3290)
!3296 = !DILocation(line: 226, column: 25, scope: !3290)
!3297 = !DILocation(line: 226, column: 9, scope: !602)
!3298 = !DILocation(line: 227, column: 27, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3300, file: !402, line: 227, column: 13)
!3300 = distinct !DILexicalBlock(scope: !3290, file: !402, line: 226, column: 46)
!3301 = !DILocation(line: 227, column: 33, scope: !3299)
!3302 = !DILocation(line: 227, column: 39, scope: !3299)
!3303 = !DILocation(line: 227, column: 45, scope: !3299)
!3304 = !DILocation(line: 227, column: 43, scope: !3299)
!3305 = !DILocation(line: 227, column: 13, scope: !3299)
!3306 = !DILocation(line: 227, column: 50, scope: !3299)
!3307 = !DILocation(line: 227, column: 13, scope: !3300)
!3308 = !DILocation(line: 228, column: 13, scope: !3299)
!3309 = !DILocation(line: 229, column: 5, scope: !3300)
!3310 = !DILocation(line: 231, column: 9, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !602, file: !402, line: 231, column: 9)
!3312 = !DILocation(line: 231, column: 15, scope: !3311)
!3313 = !DILocation(line: 231, column: 21, scope: !3311)
!3314 = !DILocation(line: 231, column: 27, scope: !3311)
!3315 = !DILocation(line: 231, column: 19, scope: !3311)
!3316 = !DILocation(line: 231, column: 9, scope: !602)
!3317 = !DILocation(line: 241, column: 16, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3311, file: !402, line: 231, column: 40)
!3319 = !DILocation(line: 241, column: 22, scope: !3318)
!3320 = !DILocation(line: 241, column: 28, scope: !3318)
!3321 = !DILocation(line: 241, column: 34, scope: !3318)
!3322 = !DILocation(line: 241, column: 26, scope: !3318)
!3323 = !DILocation(line: 241, column: 9, scope: !3318)
!3324 = !DILocation(line: 242, column: 17, scope: !3318)
!3325 = !DILocation(line: 242, column: 23, scope: !3318)
!3326 = !DILocation(line: 242, column: 29, scope: !3318)
!3327 = !DILocation(line: 242, column: 35, scope: !3318)
!3328 = !DILocation(line: 242, column: 27, scope: !3318)
!3329 = !DILocation(line: 242, column: 48, scope: !3318)
!3330 = !DILocation(line: 243, column: 5, scope: !3318)
!3331 = !DILocation(line: 247, column: 27, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !602, file: !402, line: 247, column: 9)
!3333 = !DILocation(line: 248, column: 27, scope: !3332)
!3334 = !DILocation(line: 248, column: 33, scope: !3332)
!3335 = !DILocation(line: 248, column: 39, scope: !3332)
!3336 = !DILocation(line: 248, column: 45, scope: !3332)
!3337 = !DILocation(line: 248, column: 37, scope: !3332)
!3338 = !DILocation(line: 249, column: 27, scope: !3332)
!3339 = !DILocation(line: 249, column: 33, scope: !3332)
!3340 = !DILocation(line: 249, column: 44, scope: !3332)
!3341 = !DILocation(line: 249, column: 50, scope: !3332)
!3342 = !DILocation(line: 249, column: 42, scope: !3332)
!3343 = !DILocation(line: 247, column: 10, scope: !3332)
!3344 = !DILocation(line: 247, column: 9, scope: !602)
!3345 = !DILocation(line: 251, column: 9, scope: !3332)
!3346 = !DILocation(line: 250, column: 28, scope: !3332)
!3347 = !DILocation(line: 255, column: 18, scope: !602)
!3348 = !DILocation(line: 255, column: 5, scope: !602)
!3349 = !DILocation(line: 255, column: 11, scope: !602)
!3350 = !DILocation(line: 255, column: 15, scope: !602)
!3351 = !DILocation(line: 256, column: 9, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !602, file: !402, line: 256, column: 9)
!3353 = !DILocation(line: 256, column: 15, scope: !3352)
!3354 = !DILocation(line: 256, column: 29, scope: !3352)
!3355 = !DILocation(line: 256, column: 35, scope: !3352)
!3356 = !DILocation(line: 256, column: 27, scope: !3352)
!3357 = !DILocation(line: 256, column: 9, scope: !602)
!3358 = !DILocation(line: 257, column: 29, scope: !3352)
!3359 = !DILocation(line: 257, column: 35, scope: !3352)
!3360 = !DILocation(line: 257, column: 9, scope: !3352)
!3361 = !DILocation(line: 257, column: 15, scope: !3352)
!3362 = !DILocation(line: 257, column: 27, scope: !3352)
!3363 = !DILocation(line: 259, column: 5, scope: !602)
!3364 = !DILocation(line: 259, column: 10, scope: !3365)
!3365 = !DILexicalBlockFile(scope: !620, file: !402, discriminator: 1)
!3366 = !DILocation(line: 259, column: 20, scope: !620)
!3367 = !DILocation(line: 259, column: 50, scope: !620)
!3368 = !DILocation(line: 259, column: 68, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !620, file: !402, line: 259, column: 65)
!3370 = !DILocation(line: 259, column: 85, scope: !3369)
!3371 = !DILocation(line: 259, column: 65, scope: !3369)
!3372 = !DILocation(line: 259, column: 95, scope: !3369)
!3373 = !DILocation(line: 259, column: 65, scope: !620)
!3374 = !DILocation(line: 259, column: 65, scope: !3375)
!3375 = !DILexicalBlockFile(scope: !620, file: !402, discriminator: 2)
!3376 = !DILocation(line: 259, column: 126, scope: !3377)
!3377 = !DILexicalBlockFile(scope: !3369, file: !402, discriminator: 3)
!3378 = !DILocation(line: 259, column: 144, scope: !3369)
!3379 = !DILocation(line: 259, column: 154, scope: !3369)
!3380 = !DILocation(line: 259, column: 179, scope: !3369)
!3381 = !DILocation(line: 259, column: 110, scope: !3369)
!3382 = !DILocation(line: 259, column: 198, scope: !3383)
!3383 = !DILexicalBlockFile(scope: !602, file: !402, discriminator: 4)
!3384 = !DILocation(line: 259, column: 198, scope: !620)
!3385 = !DILocation(line: 259, column: 198, scope: !3386)
!3386 = !DILexicalBlockFile(scope: !620, file: !402, discriminator: 5)
!3387 = !DILocation(line: 260, column: 5, scope: !602)
!3388 = !DILocation(line: 263, column: 5, scope: !602)
!3389 = !DILocation(line: 263, column: 10, scope: !3390)
!3390 = !DILexicalBlockFile(scope: !622, file: !402, discriminator: 1)
!3391 = !DILocation(line: 263, column: 20, scope: !622)
!3392 = !DILocation(line: 263, column: 51, scope: !622)
!3393 = !DILocation(line: 263, column: 65, scope: !625)
!3394 = !DILocation(line: 263, column: 81, scope: !625)
!3395 = !DILocation(line: 263, column: 65, scope: !622)
!3396 = !DILocation(line: 263, column: 96, scope: !3397)
!3397 = !DILexicalBlockFile(scope: !625, file: !402, discriminator: 2)
!3398 = !DILocation(line: 263, column: 101, scope: !3399)
!3399 = !DILexicalBlockFile(scope: !624, file: !402, discriminator: 4)
!3400 = !DILocation(line: 263, column: 111, scope: !624)
!3401 = !DILocation(line: 263, column: 141, scope: !624)
!3402 = !DILocation(line: 263, column: 167, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !624, file: !402, line: 263, column: 164)
!3404 = !DILocation(line: 263, column: 184, scope: !3403)
!3405 = !DILocation(line: 263, column: 164, scope: !3403)
!3406 = !DILocation(line: 263, column: 194, scope: !3403)
!3407 = !DILocation(line: 263, column: 164, scope: !624)
!3408 = !DILocation(line: 263, column: 164, scope: !3409)
!3409 = !DILexicalBlockFile(scope: !624, file: !402, discriminator: 5)
!3410 = !DILocation(line: 263, column: 225, scope: !3411)
!3411 = !DILexicalBlockFile(scope: !3403, file: !402, discriminator: 6)
!3412 = !DILocation(line: 263, column: 243, scope: !3403)
!3413 = !DILocation(line: 263, column: 253, scope: !3403)
!3414 = !DILocation(line: 263, column: 278, scope: !3403)
!3415 = !DILocation(line: 263, column: 209, scope: !3403)
!3416 = !DILocation(line: 263, column: 297, scope: !3417)
!3417 = !DILexicalBlockFile(scope: !625, file: !402, discriminator: 7)
!3418 = !DILocation(line: 263, column: 297, scope: !624)
!3419 = !DILocation(line: 263, column: 297, scope: !3420)
!3420 = !DILexicalBlockFile(scope: !624, file: !402, discriminator: 8)
!3421 = !DILocation(line: 263, column: 297, scope: !3422)
!3422 = !DILexicalBlockFile(scope: !624, file: !402, discriminator: 9)
!3423 = !DILocation(line: 263, column: 310, scope: !3424)
!3424 = !DILexicalBlockFile(scope: !3425, file: !402, discriminator: 10)
!3425 = !DILexicalBlockFile(scope: !602, file: !402, discriminator: 3)
!3426 = !DILocation(line: 263, column: 310, scope: !622)
!3427 = !DILocation(line: 263, column: 310, scope: !3428)
!3428 = !DILexicalBlockFile(scope: !622, file: !402, discriminator: 11)
!3429 = !DILocation(line: 264, column: 5, scope: !602)
!3430 = !DILocation(line: 265, column: 1, scope: !602)
!3431 = !DILocation(line: 938, column: 27, scope: !664)
!3432 = !DILocation(line: 938, column: 39, scope: !664)
!3433 = !DILocation(line: 940, column: 9, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !664, file: !402, line: 940, column: 9)
!3435 = !DILocation(line: 940, column: 15, scope: !3434)
!3436 = !DILocation(line: 940, column: 18, scope: !3434)
!3437 = !DILocation(line: 940, column: 9, scope: !664)
!3438 = !DILocation(line: 940, column: 42, scope: !3439)
!3439 = !DILexicalBlockFile(scope: !3440, file: !402, discriminator: 1)
!3440 = distinct !DILexicalBlock(scope: !3434, file: !402, line: 940, column: 24)
!3441 = !DILocation(line: 940, column: 26, scope: !3440)
!3442 = !DILocation(line: 940, column: 102, scope: !3440)
!3443 = !DILocation(line: 941, column: 28, scope: !664)
!3444 = !DILocation(line: 941, column: 34, scope: !664)
!3445 = !DILocation(line: 941, column: 12, scope: !664)
!3446 = !DILocation(line: 941, column: 5, scope: !664)
!3447 = !DILocation(line: 942, column: 1, scope: !664)
!3448 = !DILocation(line: 953, column: 29, scope: !670)
!3449 = !DILocation(line: 953, column: 41, scope: !670)
!3450 = !DILocation(line: 955, column: 9, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !670, file: !402, line: 955, column: 9)
!3452 = !DILocation(line: 955, column: 15, scope: !3451)
!3453 = !DILocation(line: 955, column: 18, scope: !3451)
!3454 = !DILocation(line: 955, column: 9, scope: !670)
!3455 = !DILocation(line: 955, column: 42, scope: !3456)
!3456 = !DILexicalBlockFile(scope: !3457, file: !402, discriminator: 1)
!3457 = distinct !DILexicalBlock(scope: !3451, file: !402, line: 955, column: 24)
!3458 = !DILocation(line: 955, column: 26, scope: !3457)
!3459 = !DILocation(line: 955, column: 102, scope: !3457)
!3460 = !DILocation(line: 956, column: 9, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !670, file: !402, line: 956, column: 9)
!3462 = !DILocation(line: 956, column: 15, scope: !3461)
!3463 = !DILocation(line: 956, column: 9, scope: !670)
!3464 = !DILocation(line: 956, column: 41, scope: !3465)
!3465 = !DILexicalBlockFile(scope: !3466, file: !402, discriminator: 1)
!3466 = distinct !DILexicalBlock(scope: !3461, file: !402, line: 956, column: 23)
!3467 = !DILocation(line: 956, column: 25, scope: !3466)
!3468 = !DILocation(line: 956, column: 92, scope: !3466)
!3469 = !DILocation(line: 957, column: 9, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !670, file: !402, line: 957, column: 9)
!3471 = !DILocation(line: 957, column: 15, scope: !3470)
!3472 = !DILocation(line: 957, column: 23, scope: !3470)
!3473 = !DILocation(line: 957, column: 9, scope: !670)
!3474 = !DILocation(line: 958, column: 62, scope: !3470)
!3475 = !DILocation(line: 958, column: 9, scope: !3470)
!3476 = !DILocation(line: 959, column: 29, scope: !670)
!3477 = !DILocation(line: 959, column: 35, scope: !670)
!3478 = !DILocation(line: 959, column: 44, scope: !670)
!3479 = !DILocation(line: 959, column: 12, scope: !670)
!3480 = !DILocation(line: 959, column: 5, scope: !670)
!3481 = !DILocation(line: 960, column: 1, scope: !670)
!3482 = !DILocation(line: 945, column: 35, scope: !674)
!3483 = !DILocation(line: 945, column: 47, scope: !674)
!3484 = !DILocation(line: 947, column: 9, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !674, file: !402, line: 947, column: 9)
!3486 = !DILocation(line: 947, column: 15, scope: !3485)
!3487 = !DILocation(line: 947, column: 18, scope: !3485)
!3488 = !DILocation(line: 947, column: 9, scope: !674)
!3489 = !DILocation(line: 947, column: 42, scope: !3490)
!3490 = !DILexicalBlockFile(scope: !3491, file: !402, discriminator: 1)
!3491 = distinct !DILexicalBlock(scope: !3485, file: !402, line: 947, column: 24)
!3492 = !DILocation(line: 947, column: 26, scope: !3491)
!3493 = !DILocation(line: 947, column: 102, scope: !3491)
!3494 = !DILocation(line: 948, column: 9, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !674, file: !402, line: 948, column: 9)
!3496 = !DILocation(line: 948, column: 15, scope: !3495)
!3497 = !DILocation(line: 948, column: 9, scope: !674)
!3498 = !DILocation(line: 948, column: 41, scope: !3499)
!3499 = !DILexicalBlockFile(scope: !3500, file: !402, discriminator: 1)
!3500 = distinct !DILexicalBlock(scope: !3495, file: !402, line: 948, column: 23)
!3501 = !DILocation(line: 948, column: 25, scope: !3500)
!3502 = !DILocation(line: 948, column: 92, scope: !3500)
!3503 = !DILocation(line: 949, column: 72, scope: !674)
!3504 = !DILocation(line: 949, column: 5, scope: !674)
!3505 = !DILocation(line: 950, column: 1, scope: !674)
