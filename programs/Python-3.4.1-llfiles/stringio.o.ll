; ModuleID = 'stringio.o.bc'
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
  tail call void @llvm.dbg.value(metadata %struct.stringio* %self, i64 0, metadata !431, metadata !786), !dbg !787
  %add.ptr = getelementptr %struct.stringio, %struct.stringio* %self, i64 -1, i32 13, !dbg !788
  %gc_refs = getelementptr inbounds %struct._object*, %struct._object** %add.ptr, i64 2, !dbg !790
  %0 = bitcast %struct._object** %gc_refs to i64*, !dbg !790
  %1 = load i64, i64* %0, align 8, !dbg !790, !tbaa !793
  %and = and i64 %1, 1, !dbg !790
  %or = or i64 %and, -4, !dbg !790
  store i64 %or, i64* %0, align 8, !dbg !790, !tbaa !793
  %gc_next = bitcast %struct._object** %add.ptr to %union._gc_head**, !dbg !799
  %2 = bitcast %struct._object** %add.ptr to i64*, !dbg !799
  %3 = load i64, i64* %2, align 8, !dbg !799, !tbaa !801
  %gc_prev = getelementptr inbounds %struct._object*, %struct._object** %add.ptr, i64 1, !dbg !799
  %4 = bitcast %struct._object** %gc_prev to i64**, !dbg !799
  %5 = load i64*, i64** %4, align 8, !dbg !799, !tbaa !802
  store i64 %3, i64* %5, align 8, !dbg !799, !tbaa !801
  %6 = ptrtoint i64* %5 to i64, !dbg !799
  %7 = bitcast %struct._object** %add.ptr to %struct.anon**, !dbg !799
  %8 = load %struct.anon*, %struct.anon** %7, align 8, !dbg !799, !tbaa !801
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %8, i64 0, i32 1, !dbg !799
  %9 = bitcast %union._gc_head** %gc_prev13 to i64*, !dbg !799
  store i64 %6, i64* %9, align 8, !dbg !799, !tbaa !802
  store %union._gc_head* null, %union._gc_head** %gc_next, align 8, !dbg !799, !tbaa !801
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 7, !dbg !803
  store i8 0, i8* %ok, align 1, !dbg !804, !tbaa !805
  %buf = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 1, !dbg !810
  %10 = load i32*, i32** %buf, align 8, !dbg !810, !tbaa !812
  %tobool = icmp eq i32* %10, null, !dbg !813
  br i1 %tobool, label %if.end, label %if.then, !dbg !814

if.then:                                          ; preds = %entry
  %11 = bitcast i32* %10 to i8*, !dbg !815
  tail call void @PyMem_Free(i8* %11) #2, !dbg !817
  store i32* null, i32** %buf, align 8, !dbg !818, !tbaa !812
  br label %if.end, !dbg !819

if.end:                                           ; preds = %entry, %if.then
  %accu = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 6, !dbg !820
  tail call void @_PyAccu_Destroy(%struct._PyAccu* %accu) #2, !dbg !821
  %readnl = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 12, !dbg !822
  %12 = load %struct._object*, %struct._object** %readnl, align 8, !dbg !822, !tbaa !824
  tail call void @llvm.dbg.value(metadata %struct._object* %12, i64 0, metadata !434, metadata !786), !dbg !822
  %cmp = icmp eq %struct._object* %12, null, !dbg !825
  br i1 %cmp, label %if.end.29, label %if.then.21, !dbg !826

if.then.21:                                       ; preds = %if.end
  store %struct._object* null, %struct._object** %readnl, align 8, !dbg !827, !tbaa !824
  tail call void @llvm.dbg.value(metadata %struct._object* %12, i64 0, metadata !436, metadata !786), !dbg !829
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i64 0, i32 0, !dbg !831
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !831, !tbaa !833
  %dec = add i64 %13, -1, !dbg !831
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !831, !tbaa !833
  %cmp24 = icmp eq i64 %dec, 0, !dbg !831
  br i1 %cmp24, label %if.else, label %if.end.29, !dbg !834

if.else:                                          ; preds = %if.then.21
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i64 0, i32 1, !dbg !835
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !835, !tbaa !837
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !835
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !835, !tbaa !838
  tail call void %15(%struct._object* %12) #2, !dbg !835
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.21, %if.end
  %writenl = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 13, !dbg !841
  %16 = load %struct._object*, %struct._object** %writenl, align 8, !dbg !841, !tbaa !843
  tail call void @llvm.dbg.value(metadata %struct._object* %16, i64 0, metadata !440, metadata !786), !dbg !841
  %cmp34 = icmp eq %struct._object* %16, null, !dbg !844
  br i1 %cmp34, label %if.end.49, label %if.then.35, !dbg !845

if.then.35:                                       ; preds = %if.end.29
  store %struct._object* null, %struct._object** %writenl, align 8, !dbg !846, !tbaa !843
  tail call void @llvm.dbg.value(metadata %struct._object* %16, i64 0, metadata !442, metadata !786), !dbg !848
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %16, i64 0, i32 0, !dbg !850
  %17 = load i64, i64* %ob_refcnt39, align 8, !dbg !850, !tbaa !833
  %dec40 = add i64 %17, -1, !dbg !850
  store i64 %dec40, i64* %ob_refcnt39, align 8, !dbg !850, !tbaa !833
  %cmp41 = icmp eq i64 %dec40, 0, !dbg !850
  br i1 %cmp41, label %if.else.43, label %if.end.49, !dbg !852

if.else.43:                                       ; preds = %if.then.35
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %16, i64 0, i32 1, !dbg !853
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8, !dbg !853, !tbaa !837
  %tp_dealloc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i64 0, i32 4, !dbg !853
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8, !dbg !853, !tbaa !838
  tail call void %19(%struct._object* %16) #2, !dbg !853
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.43, %if.then.35, %if.end.29
  %decoder = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 11, !dbg !855
  %20 = load %struct._object*, %struct._object** %decoder, align 8, !dbg !855, !tbaa !857
  tail call void @llvm.dbg.value(metadata %struct._object* %20, i64 0, metadata !446, metadata !786), !dbg !855
  %cmp54 = icmp eq %struct._object* %20, null, !dbg !858
  br i1 %cmp54, label %if.end.69, label %if.then.55, !dbg !859

if.then.55:                                       ; preds = %if.end.49
  store %struct._object* null, %struct._object** %decoder, align 8, !dbg !860, !tbaa !857
  tail call void @llvm.dbg.value(metadata %struct._object* %20, i64 0, metadata !448, metadata !786), !dbg !862
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %20, i64 0, i32 0, !dbg !864
  %21 = load i64, i64* %ob_refcnt59, align 8, !dbg !864, !tbaa !833
  %dec60 = add i64 %21, -1, !dbg !864
  store i64 %dec60, i64* %ob_refcnt59, align 8, !dbg !864, !tbaa !833
  %cmp61 = icmp eq i64 %dec60, 0, !dbg !864
  br i1 %cmp61, label %if.else.63, label %if.end.69, !dbg !866

if.else.63:                                       ; preds = %if.then.55
  %ob_type64 = getelementptr inbounds %struct._object, %struct._object* %20, i64 0, i32 1, !dbg !867
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type64, align 8, !dbg !867, !tbaa !837
  %tp_dealloc65 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i64 0, i32 4, !dbg !867
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc65, align 8, !dbg !867, !tbaa !838
  tail call void %23(%struct._object* %20) #2, !dbg !867
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.63, %if.then.55, %if.end.49
  %dict = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 14, !dbg !869
  %24 = load %struct._object*, %struct._object** %dict, align 8, !dbg !869, !tbaa !871
  tail call void @llvm.dbg.value(metadata %struct._object* %24, i64 0, metadata !452, metadata !786), !dbg !869
  %cmp74 = icmp eq %struct._object* %24, null, !dbg !872
  br i1 %cmp74, label %if.end.89, label %if.then.75, !dbg !873

if.then.75:                                       ; preds = %if.end.69
  store %struct._object* null, %struct._object** %dict, align 8, !dbg !874, !tbaa !871
  tail call void @llvm.dbg.value(metadata %struct._object* %24, i64 0, metadata !454, metadata !786), !dbg !876
  %ob_refcnt79 = getelementptr inbounds %struct._object, %struct._object* %24, i64 0, i32 0, !dbg !878
  %25 = load i64, i64* %ob_refcnt79, align 8, !dbg !878, !tbaa !833
  %dec80 = add i64 %25, -1, !dbg !878
  store i64 %dec80, i64* %ob_refcnt79, align 8, !dbg !878, !tbaa !833
  %cmp81 = icmp eq i64 %dec80, 0, !dbg !878
  br i1 %cmp81, label %if.else.83, label %if.end.89, !dbg !880

if.else.83:                                       ; preds = %if.then.75
  %ob_type84 = getelementptr inbounds %struct._object, %struct._object* %24, i64 0, i32 1, !dbg !881
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type84, align 8, !dbg !881, !tbaa !837
  %tp_dealloc85 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i64 0, i32 4, !dbg !881
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc85, align 8, !dbg !881, !tbaa !838
  tail call void %27(%struct._object* %24) #2, !dbg !881
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.83, %if.then.75, %if.end.69
  %weakreflist = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 15, !dbg !883
  %28 = load %struct._object*, %struct._object** %weakreflist, align 8, !dbg !883, !tbaa !885
  %cmp92 = icmp eq %struct._object* %28, null, !dbg !886
  br i1 %cmp92, label %if.end.94, label %if.then.93, !dbg !887

if.then.93:                                       ; preds = %if.end.89
  %29 = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 0, !dbg !888
  tail call void @PyObject_ClearWeakRefs(%struct._object* %29) #2, !dbg !889
  br label %if.end.94, !dbg !889

if.end.94:                                        ; preds = %if.end.89, %if.then.93
  %ob_type95 = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 0, i32 1, !dbg !890
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type95, align 8, !dbg !890, !tbaa !837
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i64 0, i32 38, !dbg !891
  %31 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !891, !tbaa !892
  %32 = bitcast %struct.stringio* %self to i8*, !dbg !893
  tail call void %31(i8* %32) #2, !dbg !890
  ret void, !dbg !894
}

; Function Attrs: nounwind uwtable
define internal i32 @stringio_traverse(%struct.stringio* nocapture readonly %self, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.stringio* %self, i64 0, metadata !462, metadata !786), !dbg !895
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !463, metadata !786), !dbg !896
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !464, metadata !786), !dbg !897
  %dict = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 14, !dbg !898
  %0 = load %struct._object*, %struct._object** %dict, align 8, !dbg !898, !tbaa !871
  %tobool = icmp eq %struct._object* %0, null, !dbg !898
  br i1 %tobool, label %do.end, label %if.then, !dbg !900

if.then:                                          ; preds = %entry
  %call = tail call i32 %visit(%struct._object* %0, i8* %arg) #2, !dbg !901
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !465, metadata !786), !dbg !901
  %tobool2 = icmp eq i32 %call, 0, !dbg !903
  br i1 %tobool2, label %do.end, label %return

do.end:                                           ; preds = %entry, %if.then
  br label %return, !dbg !905

return:                                           ; preds = %if.then, %do.end
  %retval.1 = phi i32 [ 0, %do.end ], [ %call, %if.then ]
  ret i32 %retval.1, !dbg !906
}

; Function Attrs: nounwind uwtable
define internal i32 @stringio_clear(%struct.stringio* nocapture %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.stringio* %self, i64 0, metadata !473, metadata !786), !dbg !907
  %dict = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 14, !dbg !908
  %0 = load %struct._object*, %struct._object** %dict, align 8, !dbg !908, !tbaa !871
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !474, metadata !786), !dbg !908
  %cmp = icmp eq %struct._object* %0, null, !dbg !910
  br i1 %cmp, label %if.end.5, label %if.then, !dbg !911

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %dict, align 8, !dbg !912, !tbaa !871
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !476, metadata !786), !dbg !914
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !916
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !916, !tbaa !833
  %dec = add i64 %1, -1, !dbg !916
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !916, !tbaa !833
  %cmp3 = icmp eq i64 %dec, 0, !dbg !916
  br i1 %cmp3, label %if.else, label %if.end.5, !dbg !918

if.else:                                          ; preds = %if.then
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 1, !dbg !919
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !919, !tbaa !837
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !919
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !919, !tbaa !838
  tail call void %3(%struct._object* %0) #2, !dbg !919
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then, %entry
  ret i32 0, !dbg !921
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_iternext(%struct.stringio* %self) #0 {
entry:
  %consumed.i = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct.stringio* %self, i64 0, metadata !484, metadata !786), !dbg !922
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 7, !dbg !923
  %0 = load i8, i8* %ok, align 1, !dbg !923, !tbaa !805
  %cmp = icmp slt i8 %0, 1, !dbg !923
  br i1 %cmp, label %if.then, label %if.end, !dbg !925

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !926, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0)) #2, !dbg !926
  br label %cleanup, !dbg !930

if.end:                                           ; preds = %entry
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 8, !dbg !931
  %2 = load i8, i8* %closed, align 1, !dbg !931, !tbaa !933
  %tobool = icmp eq i8 %2, 0, !dbg !931
  br i1 %tobool, label %if.end.3, label %if.then.2, !dbg !934

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !935, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0)) #2, !dbg !935
  br label %cleanup, !dbg !938

if.end.3:                                         ; preds = %if.end
  %call = tail call fastcc i32 @realize(%struct.stringio* %self), !dbg !939
  %cmp4 = icmp slt i32 %call, 0, !dbg !939
  br i1 %cmp4, label %cleanup, label %if.end.7, !dbg !941

if.end.7:                                         ; preds = %if.end.3
  %ob_type = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 0, i32 1, !dbg !942
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !942, !tbaa !837
  %cmp8 = icmp eq %struct._typeobject* %4, @PyStringIO_Type, !dbg !943
  br i1 %cmp8, label %if.then.10, label %if.else, !dbg !944

if.then.10:                                       ; preds = %if.end.7
  tail call void @llvm.dbg.value(metadata %struct.stringio* %self, i64 0, metadata !523, metadata !786) #2, !dbg !945
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !524, metadata !786) #2, !dbg !948
  %5 = bitcast i64* %consumed.i to i8*, !dbg !949
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !949
  %pos.i = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 2, !dbg !950
  %6 = load i64, i64* %pos.i, align 8, !dbg !950, !tbaa !952
  %string_size.i = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 3, !dbg !953
  %7 = load i64, i64* %string_size.i, align 8, !dbg !953, !tbaa !954
  %cmp.i = icmp sgt i64 %7, %6, !dbg !955
  br i1 %cmp.i, label %if.end.i, label %if.then.i, !dbg !956

if.then.i:                                        ; preds = %if.then.10
  %call.i = tail call %struct._object* @PyUnicode_New(i64 0, i32 0) #2, !dbg !957
  br label %if.end.27, !dbg !958

if.end.i:                                         ; preds = %if.then.10
  %buf.i = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 1, !dbg !959
  %8 = load i32*, i32** %buf.i, align 8, !dbg !959, !tbaa !812
  %add.ptr.i = getelementptr i32, i32* %8, i64 %6, !dbg !960
  tail call void @llvm.dbg.value(metadata i32* %add.ptr.i, i64 0, metadata !525, metadata !786) #2, !dbg !961
  %sub.i = sub i64 %7, %6, !dbg !962
  tail call void @llvm.dbg.value(metadata i64 %sub.i, i64 0, metadata !524, metadata !786) #2, !dbg !948
  %add.ptr11.i = getelementptr i32, i32* %add.ptr.i, i64 %sub.i, !dbg !963
  tail call void @llvm.dbg.value(metadata i32* %add.ptr11.i, i64 0, metadata !526, metadata !786) #2, !dbg !964
  %9 = load i32, i32* %add.ptr11.i, align 4, !dbg !965, !tbaa !966
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !527, metadata !786) #2, !dbg !967
  store i32 0, i32* %add.ptr11.i, align 4, !dbg !968, !tbaa !966
  %readtranslate.i = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 10, !dbg !969
  %10 = load i8, i8* %readtranslate.i, align 1, !dbg !969, !tbaa !970
  %conv.i = sext i8 %10 to i32, !dbg !971
  %readuniversal.i = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 9, !dbg !972
  %11 = load i8, i8* %readuniversal.i, align 1, !dbg !972, !tbaa !973
  %conv12.i = sext i8 %11 to i32, !dbg !974
  %readnl.i = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 12, !dbg !975
  %12 = load %struct._object*, %struct._object** %readnl.i, align 8, !dbg !975, !tbaa !824
  %13 = bitcast i32* %add.ptr.i to i8*, !dbg !976
  %14 = bitcast i32* %add.ptr11.i to i8*, !dbg !977
  tail call void @llvm.dbg.value(metadata i64* %consumed.i, i64 0, metadata !529, metadata !786) #2, !dbg !978
  %call13.i = call i64 @_PyIO_find_line_ending(i32 %conv.i, i32 %conv12.i, %struct._object* %12, i32 4, i8* %13, i8* %14, i64* nonnull %consumed.i) #2, !dbg !979
  call void @llvm.dbg.value(metadata i64 %call13.i, i64 0, metadata !528, metadata !786) #2, !dbg !980
  store i32 %9, i32* %add.ptr11.i, align 4, !dbg !981, !tbaa !966
  %cmp14.i = icmp slt i64 %call13.i, 0, !dbg !982
  call void @llvm.dbg.value(metadata i64 %sub.i, i64 0, metadata !528, metadata !786) #2, !dbg !980
  %limit.addr.0.call13.i = select i1 %cmp14.i, i64 %sub.i, i64 %call13.i, !dbg !984
  %15 = load i64, i64* %pos.i, align 8, !dbg !985, !tbaa !952
  %add.i = add i64 %limit.addr.0.call13.i, %15, !dbg !985
  store i64 %add.i, i64* %pos.i, align 8, !dbg !985, !tbaa !952
  %call19.i = call %struct._object* @PyUnicode_FromKindAndData(i32 4, i8* %13, i64 %limit.addr.0.call13.i) #2, !dbg !986
  br label %if.end.27, !dbg !987

if.else:                                          ; preds = %if.end.7
  %16 = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 0, !dbg !942
  %17 = load %struct._object*, %struct._object** @_PyIO_str_readline, align 8, !dbg !988, !tbaa !929
  %call12 = tail call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %16, %struct._object* %17, i8* null) #2, !dbg !989
  tail call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !485, metadata !786), !dbg !990
  %tobool13 = icmp eq %struct._object* %call12, null, !dbg !991
  br i1 %tobool13, label %cleanup, label %land.lhs.true, !dbg !992

land.lhs.true:                                    ; preds = %if.else
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %call12, i64 0, i32 1, !dbg !993
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8, !dbg !993, !tbaa !837
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i64 0, i32 19, !dbg !993
  %19 = load i64, i64* %tp_flags, align 8, !dbg !993, !tbaa !995
  %and = and i64 %19, 268435456, !dbg !993
  %cmp15 = icmp eq i64 %and, 0, !dbg !993
  br i1 %cmp15, label %if.then.17, label %if.end.31, !dbg !996

if.then.17:                                       ; preds = %land.lhs.true
  %20 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !997, !tbaa !929
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i64 0, i32 1, !dbg !998
  %21 = load i8*, i8** %tp_name, align 8, !dbg !998, !tbaa !999
  %call19 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %20, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i8* %21) #2, !dbg !1000
  tail call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !486, metadata !786), !dbg !1001
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call12, i64 0, i32 0, !dbg !1003
  %22 = load i64, i64* %ob_refcnt, align 8, !dbg !1003, !tbaa !833
  %dec = add i64 %22, -1, !dbg !1003
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1003, !tbaa !833
  %cmp20 = icmp eq i64 %dec, 0, !dbg !1003
  br i1 %cmp20, label %if.else.23, label %cleanup, !dbg !1005

if.else.23:                                       ; preds = %if.then.17
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8, !dbg !1006, !tbaa !837
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i64 0, i32 4, !dbg !1006
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1006, !tbaa !838
  tail call void %24(%struct._object* %call12) #2, !dbg !1006
  br label %cleanup

if.end.27:                                        ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi %struct._object* [ %call.i, %if.then.i ], [ %call19.i, %if.end.i ], !dbg !962
  call void @llvm.lifetime.end(i64 8, i8* %5) #2, !dbg !1008
  call void @llvm.dbg.value(metadata %struct._object* %retval.0.i, i64 0, metadata !485, metadata !786), !dbg !990
  %cmp28 = icmp eq %struct._object* %retval.0.i, null, !dbg !1009
  br i1 %cmp28, label %cleanup, label %if.end.31, !dbg !1011

if.end.31:                                        ; preds = %land.lhs.true, %if.end.27
  %line.070 = phi %struct._object* [ %retval.0.i, %if.end.27 ], [ %call12, %land.lhs.true ]
  %25 = getelementptr inbounds %struct._object, %struct._object* %line.070, i64 1, i32 0, !dbg !1012
  %26 = load i64, i64* %25, align 8, !dbg !1012, !tbaa !1013
  %cmp32 = icmp eq i64 %26, 0, !dbg !1016
  br i1 %cmp32, label %do.body.35, label %cleanup, !dbg !1017

do.body.35:                                       ; preds = %if.end.31
  call void @llvm.dbg.value(metadata %struct._object* %retval.0.i, i64 0, metadata !492, metadata !786), !dbg !1018
  %ob_refcnt37 = getelementptr inbounds %struct._object, %struct._object* %line.070, i64 0, i32 0, !dbg !1020
  %27 = load i64, i64* %ob_refcnt37, align 8, !dbg !1020, !tbaa !833
  %dec38 = add i64 %27, -1, !dbg !1020
  store i64 %dec38, i64* %ob_refcnt37, align 8, !dbg !1020, !tbaa !833
  %cmp39 = icmp eq i64 %dec38, 0, !dbg !1020
  br i1 %cmp39, label %if.else.42, label %cleanup, !dbg !1022

if.else.42:                                       ; preds = %do.body.35
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %line.070, i64 0, i32 1, !dbg !1023
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8, !dbg !1023, !tbaa !837
  %tp_dealloc44 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i64 0, i32 4, !dbg !1023
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc44, align 8, !dbg !1023, !tbaa !838
  call void %29(%struct._object* %line.070) #2, !dbg !1023
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end.31, %if.else.42, %do.body.35, %if.end.27, %if.else.23, %if.then.17, %if.end.3, %if.then.2, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ null, %if.then.2 ], [ null, %if.end.3 ], [ null, %if.then.17 ], [ null, %if.else.23 ], [ null, %if.end.27 ], [ null, %do.body.35 ], [ null, %if.else.42 ], [ %line.070, %if.end.31 ], [ null, %if.else ]
  ret %struct._object* %retval.0, !dbg !1025
}

; Function Attrs: nounwind uwtable
define internal i32 @stringio_init(%struct.stringio* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %kwlist = alloca [3 x i8*], align 16
  %value = alloca %struct._object*, align 8
  %newline_obj = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct.stringio* %self, i64 0, metadata !681, metadata !786), !dbg !1026
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !682, metadata !786), !dbg !1027
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !683, metadata !786), !dbg !1028
  %0 = bitcast [3 x i8*]* %kwlist to i8*, !dbg !1029
  call void @llvm.lifetime.start(i64 24, i8* %0) #2, !dbg !1029
  tail call void @llvm.dbg.declare(metadata [3 x i8*]* %kwlist, metadata !684, metadata !786), !dbg !1030
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([3 x i8*]* @stringio_init.kwlist to i8*), i64 24, i32 16, i1 false), !dbg !1030
  %1 = bitcast %struct._object** %value to i8*, !dbg !1031
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1031
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !688, metadata !786), !dbg !1032
  store %struct._object* null, %struct._object** %value, align 8, !dbg !1032, !tbaa !929
  %2 = bitcast %struct._object** %newline_obj to i8*, !dbg !1033
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1033
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !689, metadata !786), !dbg !1034
  store %struct._object* null, %struct._object** %newline_obj, align 8, !dbg !1034, !tbaa !929
  tail call void @llvm.dbg.value(metadata !1035, i64 0, metadata !690, metadata !786), !dbg !1036
  %arraydecay = getelementptr inbounds [3 x i8*], [3 x i8*]* %kwlist, i64 0, i64 0, !dbg !1037
  tail call void @llvm.dbg.value(metadata %struct._object** %value, i64 0, metadata !688, metadata !786), !dbg !1032
  tail call void @llvm.dbg.value(metadata %struct._object** %newline_obj, i64 0, metadata !689, metadata !786), !dbg !1034
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %args, %struct._object* %kwds, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i64 0, i64 0), i8** %arraydecay, %struct._object** nonnull %value, %struct._object** nonnull %newline_obj) #2, !dbg !1039
  %tobool = icmp eq i32 %call, 0, !dbg !1039
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1040

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %newline_obj, i64 0, metadata !689, metadata !786), !dbg !1034
  %3 = load %struct._object*, %struct._object** %newline_obj, align 8, !dbg !1041, !tbaa !929
  %cmp = icmp eq %struct._object* %3, @_Py_NoneStruct, !dbg !1043
  br i1 %cmp, label %if.end.55, label %if.else, !dbg !1044

if.else:                                          ; preds = %if.end
  %tobool2 = icmp eq %struct._object* %3, null, !dbg !1045
  br i1 %tobool2, label %land.lhs.true, label %if.then.3, !dbg !1047

if.then.3:                                        ; preds = %if.else
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 1, !dbg !1048
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1048, !tbaa !837
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 19, !dbg !1048
  %5 = load i64, i64* %tp_flags, align 8, !dbg !1048, !tbaa !995
  %and = and i64 %5, 268435456, !dbg !1048
  %cmp4 = icmp eq i64 %and, 0, !dbg !1048
  br i1 %cmp4, label %if.then.5, label %if.end.8, !dbg !1051

if.then.5:                                        ; preds = %if.then.3
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1052, !tbaa !929
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 1, !dbg !1054
  %7 = load i8*, i8** %tp_name, align 8, !dbg !1054, !tbaa !999
  %call7 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.41, i64 0, i64 0), i8* %7) #2, !dbg !1055
  br label %cleanup, !dbg !1056

if.end.8:                                         ; preds = %if.then.3
  %call9 = call i8* @PyUnicode_AsUTF8(%struct._object* %3) #2, !dbg !1057
  call void @llvm.dbg.value(metadata i8* %call9, i64 0, metadata !690, metadata !786), !dbg !1036
  %cmp10 = icmp eq i8* %call9, null, !dbg !1058
  br i1 %cmp10, label %cleanup, label %land.lhs.true, !dbg !1060

land.lhs.true:                                    ; preds = %if.end.8, %if.else
  %newline.0.ph = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), %if.else ], [ %call9, %if.end.8 ]
  %tobool15.277 = icmp ne i8* %newline.0.ph, null, !dbg !1061
  %8 = load i8, i8* %newline.0.ph, align 1, !dbg !1063, !tbaa !1065
  switch i8 %8, label %if.then.53 [
    i8 0, label %if.end.55
    i8 10, label %land.lhs.true.23
    i8 13, label %land.lhs.true.33
  ], !dbg !1066

land.lhs.true.23:                                 ; preds = %land.lhs.true
  %arrayidx24 = getelementptr i8, i8* %newline.0.ph, i64 1, !dbg !1067
  %9 = load i8, i8* %arrayidx24, align 1, !dbg !1067, !tbaa !1065
  %cmp26 = icmp eq i8 %9, 0, !dbg !1069
  br i1 %cmp26, label %if.end.55, label %if.then.53, !dbg !1070

land.lhs.true.33:                                 ; preds = %land.lhs.true
  %arrayidx34 = getelementptr i8, i8* %newline.0.ph, i64 1, !dbg !1071
  %10 = load i8, i8* %arrayidx34, align 1, !dbg !1071, !tbaa !1065
  %cmp36 = icmp eq i8 %10, 0, !dbg !1072
  br i1 %cmp36, label %if.end.55, label %land.lhs.true.43, !dbg !1073

land.lhs.true.43:                                 ; preds = %land.lhs.true.33
  %arrayidx44 = getelementptr i8, i8* %newline.0.ph, i64 1, !dbg !1074
  %11 = load i8, i8* %arrayidx44, align 1, !dbg !1074, !tbaa !1065
  %cmp46 = icmp eq i8 %11, 10, !dbg !1075
  br i1 %cmp46, label %land.lhs.true.48, label %if.then.53, !dbg !1076

land.lhs.true.48:                                 ; preds = %land.lhs.true.43
  %arrayidx49 = getelementptr i8, i8* %newline.0.ph, i64 2, !dbg !1077
  %12 = load i8, i8* %arrayidx49, align 1, !dbg !1077, !tbaa !1065
  %cmp51 = icmp eq i8 %12, 0, !dbg !1079
  br i1 %cmp51, label %if.end.55, label %if.then.53, !dbg !1080

if.then.53:                                       ; preds = %land.lhs.true, %land.lhs.true.23, %land.lhs.true.48, %land.lhs.true.43
  %13 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1081, !tbaa !929
  call void @llvm.dbg.value(metadata %struct._object** %newline_obj, i64 0, metadata !689, metadata !786), !dbg !1034
  %14 = load %struct._object*, %struct._object** %newline_obj, align 8, !dbg !1083, !tbaa !929
  %call54 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i64 0, i64 0), %struct._object* %14) #2, !dbg !1084
  br label %cleanup, !dbg !1085

if.end.55:                                        ; preds = %land.lhs.true, %if.end, %land.lhs.true.48, %land.lhs.true.33, %land.lhs.true.23
  %tobool15280 = phi i1 [ %tobool15.277, %land.lhs.true ], [ %tobool15.277, %land.lhs.true.48 ], [ %tobool15.277, %land.lhs.true.33 ], [ %tobool15.277, %land.lhs.true.23 ], [ false, %if.end ]
  %newline.0279 = phi i8* [ %newline.0.ph, %land.lhs.true ], [ %newline.0.ph, %land.lhs.true.48 ], [ %newline.0.ph, %land.lhs.true.33 ], [ %newline.0.ph, %land.lhs.true.23 ], [ null, %if.end ]
  call void @llvm.dbg.value(metadata %struct._object** %value, i64 0, metadata !688, metadata !786), !dbg !1032
  %15 = load %struct._object*, %struct._object** %value, align 8, !dbg !1086, !tbaa !929
  %tobool56 = icmp ne %struct._object* %15, null, !dbg !1086
  %cmp58 = icmp ne %struct._object* %15, @_Py_NoneStruct, !dbg !1088
  %or.cond = and i1 %tobool56, %cmp58, !dbg !1089
  br i1 %or.cond, label %land.lhs.true.60, label %if.end.70, !dbg !1089

land.lhs.true.60:                                 ; preds = %if.end.55
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %15, i64 0, i32 1, !dbg !1090
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8, !dbg !1090, !tbaa !837
  %tp_flags62 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i64 0, i32 19, !dbg !1090
  %17 = load i64, i64* %tp_flags62, align 8, !dbg !1090, !tbaa !995
  %and63 = and i64 %17, 268435456, !dbg !1090
  %cmp64 = icmp eq i64 %and63, 0, !dbg !1090
  br i1 %cmp64, label %if.then.66, label %if.end.70, !dbg !1092

if.then.66:                                       ; preds = %land.lhs.true.60
  %18 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1093, !tbaa !929
  %tp_name68 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i64 0, i32 1, !dbg !1095
  %19 = load i8*, i8** %tp_name68, align 8, !dbg !1095, !tbaa !999
  %call69 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %18, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.43, i64 0, i64 0), i8* %19) #2, !dbg !1096
  br label %cleanup, !dbg !1097

if.end.70:                                        ; preds = %land.lhs.true.60, %if.end.55
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 7, !dbg !1098
  store i8 0, i8* %ok, align 1, !dbg !1099, !tbaa !805
  %accu = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 6, !dbg !1100
  call void @_PyAccu_Destroy(%struct._PyAccu* %accu) #2, !dbg !1101
  %readnl = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 12, !dbg !1102
  %20 = load %struct._object*, %struct._object** %readnl, align 8, !dbg !1102, !tbaa !824
  call void @llvm.dbg.value(metadata %struct._object* %20, i64 0, metadata !692, metadata !786), !dbg !1102
  %cmp71 = icmp eq %struct._object* %20, null, !dbg !1104
  br i1 %cmp71, label %if.end.82, label %if.then.73, !dbg !1105

if.then.73:                                       ; preds = %if.end.70
  store %struct._object* null, %struct._object** %readnl, align 8, !dbg !1106, !tbaa !824
  call void @llvm.dbg.value(metadata %struct._object* %20, i64 0, metadata !694, metadata !786), !dbg !1108
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i64 0, i32 0, !dbg !1110
  %21 = load i64, i64* %ob_refcnt, align 8, !dbg !1110, !tbaa !833
  %dec = add i64 %21, -1, !dbg !1110
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1110, !tbaa !833
  %cmp76 = icmp eq i64 %dec, 0, !dbg !1110
  br i1 %cmp76, label %if.else.79, label %if.end.82, !dbg !1112

if.else.79:                                       ; preds = %if.then.73
  %ob_type80 = getelementptr inbounds %struct._object, %struct._object* %20, i64 0, i32 1, !dbg !1113
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type80, align 8, !dbg !1113, !tbaa !837
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i64 0, i32 4, !dbg !1113
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1113, !tbaa !838
  call void %23(%struct._object* %20) #2, !dbg !1113
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.79, %if.then.73, %if.end.70
  %writenl = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 13, !dbg !1115
  %24 = load %struct._object*, %struct._object** %writenl, align 8, !dbg !1115, !tbaa !843
  call void @llvm.dbg.value(metadata %struct._object* %24, i64 0, metadata !698, metadata !786), !dbg !1115
  %cmp87 = icmp eq %struct._object* %24, null, !dbg !1117
  br i1 %cmp87, label %if.end.104, label %if.then.89, !dbg !1118

if.then.89:                                       ; preds = %if.end.82
  store %struct._object* null, %struct._object** %writenl, align 8, !dbg !1119, !tbaa !843
  call void @llvm.dbg.value(metadata %struct._object* %24, i64 0, metadata !700, metadata !786), !dbg !1121
  %ob_refcnt93 = getelementptr inbounds %struct._object, %struct._object* %24, i64 0, i32 0, !dbg !1123
  %25 = load i64, i64* %ob_refcnt93, align 8, !dbg !1123, !tbaa !833
  %dec94 = add i64 %25, -1, !dbg !1123
  store i64 %dec94, i64* %ob_refcnt93, align 8, !dbg !1123, !tbaa !833
  %cmp95 = icmp eq i64 %dec94, 0, !dbg !1123
  br i1 %cmp95, label %if.else.98, label %if.end.104, !dbg !1125

if.else.98:                                       ; preds = %if.then.89
  %ob_type99 = getelementptr inbounds %struct._object, %struct._object* %24, i64 0, i32 1, !dbg !1126
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type99, align 8, !dbg !1126, !tbaa !837
  %tp_dealloc100 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i64 0, i32 4, !dbg !1126
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc100, align 8, !dbg !1126, !tbaa !838
  call void %27(%struct._object* %24) #2, !dbg !1126
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.98, %if.then.89, %if.end.82
  %decoder = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 11, !dbg !1128
  %28 = load %struct._object*, %struct._object** %decoder, align 8, !dbg !1128, !tbaa !857
  call void @llvm.dbg.value(metadata %struct._object* %28, i64 0, metadata !704, metadata !786), !dbg !1128
  %cmp109 = icmp eq %struct._object* %28, null, !dbg !1130
  br i1 %cmp109, label %if.end.126, label %if.then.111, !dbg !1131

if.then.111:                                      ; preds = %if.end.104
  store %struct._object* null, %struct._object** %decoder, align 8, !dbg !1132, !tbaa !857
  call void @llvm.dbg.value(metadata %struct._object* %28, i64 0, metadata !706, metadata !786), !dbg !1134
  %ob_refcnt115 = getelementptr inbounds %struct._object, %struct._object* %28, i64 0, i32 0, !dbg !1136
  %29 = load i64, i64* %ob_refcnt115, align 8, !dbg !1136, !tbaa !833
  %dec116 = add i64 %29, -1, !dbg !1136
  store i64 %dec116, i64* %ob_refcnt115, align 8, !dbg !1136, !tbaa !833
  %cmp117 = icmp eq i64 %dec116, 0, !dbg !1136
  br i1 %cmp117, label %if.else.120, label %if.end.126, !dbg !1138

if.else.120:                                      ; preds = %if.then.111
  %ob_type121 = getelementptr inbounds %struct._object, %struct._object* %28, i64 0, i32 1, !dbg !1139
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type121, align 8, !dbg !1139, !tbaa !837
  %tp_dealloc122 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i64 0, i32 4, !dbg !1139
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc122, align 8, !dbg !1139, !tbaa !838
  call void %31(%struct._object* %28) #2, !dbg !1139
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.120, %if.then.111, %if.end.104
  br i1 %tobool15280, label %if.then.130, label %if.end.138, !dbg !1141

if.then.130:                                      ; preds = %if.end.126
  %call131 = call %struct._object* @PyUnicode_FromString(i8* %newline.0279) #2, !dbg !1142
  store %struct._object* %call131, %struct._object** %readnl, align 8, !dbg !1145, !tbaa !824
  %cmp134 = icmp eq %struct._object* %call131, null, !dbg !1146
  br i1 %cmp134, label %cleanup, label %if.end.138, !dbg !1148

if.end.138:                                       ; preds = %if.then.130, %if.end.126
  %cmp139 = icmp eq i8* %newline.0279, null, !dbg !1149
  br i1 %cmp139, label %lor.end, label %lor.rhs, !dbg !1150

lor.rhs:                                          ; preds = %if.end.138
  %32 = load i8, i8* %newline.0279, align 1, !dbg !1151, !tbaa !1065
  %cmp143 = icmp eq i8 %32, 0, !dbg !1153
  br label %lor.end, !dbg !1150

lor.end:                                          ; preds = %lor.rhs, %if.end.138
  %33 = phi i1 [ true, %if.end.138 ], [ %cmp143, %lor.rhs ]
  %conv145 = zext i1 %33 to i8, !dbg !1154
  %readuniversal = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 9, !dbg !1156
  store i8 %conv145, i8* %readuniversal, align 1, !dbg !1157, !tbaa !973
  %conv148 = zext i1 %cmp139 to i8, !dbg !1158
  %readtranslate = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 10, !dbg !1160
  store i8 %conv148, i8* %readtranslate, align 1, !dbg !1161, !tbaa !970
  br i1 %tobool15280, label %land.lhs.true.151, label %if.end.161, !dbg !1162

land.lhs.true.151:                                ; preds = %lor.end
  %34 = load i8, i8* %newline.0279, align 1, !dbg !1164, !tbaa !1065
  %cmp154 = icmp eq i8 %34, 13, !dbg !1166
  br i1 %cmp154, label %if.then.156, label %if.end.161, !dbg !1167

if.then.156:                                      ; preds = %land.lhs.true.151
  %35 = load %struct._object*, %struct._object** %readnl, align 8, !dbg !1168, !tbaa !824
  store %struct._object* %35, %struct._object** %writenl, align 8, !dbg !1170, !tbaa !843
  %ob_refcnt160 = getelementptr inbounds %struct._object, %struct._object* %35, i64 0, i32 0, !dbg !1171
  %36 = load i64, i64* %ob_refcnt160, align 8, !dbg !1171, !tbaa !833
  %inc = add i64 %36, 1, !dbg !1171
  store i64 %inc, i64* %ob_refcnt160, align 8, !dbg !1171, !tbaa !833
  br label %if.end.161, !dbg !1172

if.end.161:                                       ; preds = %if.then.156, %land.lhs.true.151, %lor.end
  br i1 %33, label %if.then.164, label %if.end.174, !dbg !1173

if.then.164:                                      ; preds = %if.end.161
  %conv166 = zext i1 %cmp139 to i32, !dbg !1174
  %call167 = call %struct._object* (%struct._object*, i8*, ...) @_PyObject_CallFunction_SizeT(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyIncrementalNewlineDecoder_Type, i64 0, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %struct._object* nonnull @_Py_NoneStruct, i32 %conv166) #2, !dbg !1175
  store %struct._object* %call167, %struct._object** %decoder, align 8, !dbg !1176, !tbaa !857
  %cmp170 = icmp eq %struct._object* %call167, null, !dbg !1177
  br i1 %cmp170, label %cleanup, label %if.end.174, !dbg !1179

if.end.174:                                       ; preds = %if.end.161, %if.then.164
  %string_size = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 3, !dbg !1180
  store i64 0, i64* %string_size, align 8, !dbg !1181, !tbaa !954
  call void @llvm.dbg.value(metadata %struct._object** %value, i64 0, metadata !688, metadata !786), !dbg !1032
  %37 = load %struct._object*, %struct._object** %value, align 8, !dbg !1182, !tbaa !929
  %tobool175 = icmp ne %struct._object* %37, null, !dbg !1182
  %cmp177 = icmp ne %struct._object* %37, @_Py_NoneStruct, !dbg !1184
  %or.cond215 = and i1 %tobool175, %cmp177, !dbg !1185
  br i1 %or.cond215, label %if.then.179, label %if.end.182, !dbg !1185

if.then.179:                                      ; preds = %if.end.174
  %call180 = call i64 @PyUnicode_GetLength(%struct._object* %37) #2, !dbg !1186
  call void @llvm.dbg.value(metadata i64 %call180, i64 0, metadata !691, metadata !786), !dbg !1187
  %phitmp = icmp sgt i64 %call180, 0, !dbg !1188
  br label %if.end.182, !dbg !1188

if.end.182:                                       ; preds = %if.end.174, %if.then.179
  %value_len.0 = phi i1 [ %phitmp, %if.then.179 ], [ false, %if.end.174 ]
  call void @llvm.dbg.value(metadata %struct.stringio* %self, i64 0, metadata !515, metadata !786) #2, !dbg !1189
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !516, metadata !786) #2, !dbg !1194
  %buf_size.i = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 4, !dbg !1195
  %38 = load i64, i64* %buf_size.i, align 8, !dbg !1195, !tbaa !1196
  call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !517, metadata !786) #2, !dbg !1197
  call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !518, metadata !786) #2, !dbg !1198
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !516, metadata !786) #2, !dbg !1194
  %cmp1.i = icmp ugt i64 %38, 3, !dbg !1199
  br i1 %cmp1.i, label %if.end.24.i, label %if.else.i, !dbg !1201

if.else.i:                                        ; preds = %if.end.182
  %cmp4.i = icmp ugt i64 %38, 1, !dbg !1202
  br i1 %cmp4.i, label %resize_buffer.exit, label %if.else.6.i, !dbg !1204

if.else.6.i:                                      ; preds = %if.else.i
  %conv7.i = uitofp i64 %38 to double, !dbg !1205
  %mul.i = fmul double %conv7.i, 1.125000e+00, !dbg !1207
  %cmp8.i = fcmp ult double %mul.i, 1.000000e+00, !dbg !1208
  br i1 %cmp8.i, label %if.else.16.i, label %if.end.24.i, !dbg !1209

if.else.16.i:                                     ; preds = %if.else.6.i
  call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !517, metadata !786) #2, !dbg !1197
  br label %if.end.24.i, !dbg !1210

if.end.24.i:                                      ; preds = %if.else.16.i, %if.end.182, %if.else.6.i
  %alloc.0.i = phi i64 [ 2, %if.else.16.i ], [ 2, %if.end.182 ], [ 4, %if.else.6.i ], !dbg !1210
  %buf.i = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 1, !dbg !1211
  %39 = bitcast i32** %buf.i to i8**, !dbg !1211
  %40 = load i8*, i8** %39, align 8, !dbg !1211, !tbaa !812
  %mul25.i = shl nuw nsw i64 %alloc.0.i, 2, !dbg !1212
  %call.i = call i8* @PyMem_Realloc(i8* %40, i64 %mul25.i) #2, !dbg !1213
  %cmp26.i = icmp eq i8* %call.i, null, !dbg !1214
  br i1 %cmp26.i, label %if.then.28.i, label %if.end.30.i, !dbg !1216

if.then.28.i:                                     ; preds = %if.end.24.i
  %call29.i = call %struct._object* @PyErr_NoMemory() #2, !dbg !1217
  br label %resize_buffer.exit, !dbg !1219

if.end.30.i:                                      ; preds = %if.end.24.i
  store i64 %alloc.0.i, i64* %buf_size.i, align 8, !dbg !1220, !tbaa !1196
  store i8* %call.i, i8** %39, align 8, !dbg !1221, !tbaa !812
  br label %resize_buffer.exit, !dbg !1222

resize_buffer.exit:                               ; preds = %if.else.i, %if.then.28.i, %if.end.30.i
  %retval.0.i = phi i1 [ true, %if.then.28.i ], [ false, %if.end.30.i ], [ false, %if.else.i ]
  br i1 %value_len.0, label %if.then.185, label %if.else.196, !dbg !1223

if.then.185:                                      ; preds = %resize_buffer.exit
  br i1 %retval.0.i, label %cleanup, label %if.end.190, !dbg !1224

if.end.190:                                       ; preds = %if.then.185
  %state = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 5, !dbg !1225
  store i32 1, i32* %state, align 4, !dbg !1226, !tbaa !1227
  %pos = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 2, !dbg !1228
  store i64 0, i64* %pos, align 8, !dbg !1229, !tbaa !952
  call void @llvm.dbg.value(metadata %struct._object** %value, i64 0, metadata !688, metadata !786), !dbg !1032
  %41 = load %struct._object*, %struct._object** %value, align 8, !dbg !1230, !tbaa !929
  %call191 = call fastcc i64 @write_str(%struct.stringio* %self, %struct._object* %41), !dbg !1232
  %cmp192 = icmp slt i64 %call191, 0, !dbg !1233
  br i1 %cmp192, label %cleanup, label %if.end.208, !dbg !1234

if.else.196:                                      ; preds = %resize_buffer.exit
  br i1 %retval.0.i, label %cleanup, label %if.end.201, !dbg !1235

if.end.201:                                       ; preds = %if.else.196
  %call203 = call i32 @_PyAccu_Init(%struct._PyAccu* %accu) #2, !dbg !1237
  %tobool204 = icmp eq i32 %call203, 0, !dbg !1237
  br i1 %tobool204, label %if.end.206, label %cleanup, !dbg !1239

if.end.206:                                       ; preds = %if.end.201
  %state207 = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 5, !dbg !1240
  store i32 2, i32* %state207, align 4, !dbg !1241, !tbaa !1227
  %.pre = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 2, !dbg !1242
  br label %if.end.208

if.end.208:                                       ; preds = %if.end.190, %if.end.206
  %pos209.pre-phi = phi i64* [ %pos, %if.end.190 ], [ %.pre, %if.end.206 ], !dbg !1242
  store i64 0, i64* %pos209.pre-phi, align 8, !dbg !1243, !tbaa !952
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 8, !dbg !1244
  store i8 0, i8* %closed, align 1, !dbg !1245, !tbaa !933
  store i8 1, i8* %ok, align 1, !dbg !1246, !tbaa !805
  br label %cleanup, !dbg !1247

cleanup:                                          ; preds = %if.end.201, %if.else.196, %if.end.190, %if.then.185, %if.then.164, %if.then.130, %if.end.8, %entry, %if.end.208, %if.then.66, %if.then.53, %if.then.5
  %retval.0 = phi i32 [ 0, %if.end.208 ], [ -1, %if.then.66 ], [ -1, %if.then.53 ], [ -1, %if.then.5 ], [ -1, %entry ], [ -1, %if.end.8 ], [ -1, %if.then.130 ], [ -1, %if.then.164 ], [ -1, %if.then.185 ], [ -1, %if.end.190 ], [ -1, %if.else.196 ], [ -1, %if.end.201 ]
  call void @llvm.lifetime.end(i64 8, i8* %2) #2, !dbg !1248
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1248
  call void @llvm.lifetime.end(i64 24, i8* %0) #2, !dbg !1248
  ret i32 %retval.0, !dbg !1248
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_new(%struct._typeobject* %type, %struct._object* nocapture readnone %args, %struct._object* nocapture readnone %kwds) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !716, metadata !786), !dbg !1249
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !717, metadata !786), !dbg !1250
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !718, metadata !786), !dbg !1251
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %type, i64 0, i32 36, !dbg !1252
  %0 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8, !dbg !1252, !tbaa !1253
  %call = tail call %struct._object* %0(%struct._typeobject* %type, i64 0) #2, !dbg !1254
  %cmp = icmp eq %struct._object* %call, null, !dbg !1255
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1257

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @PyMem_Malloc(i64 0) #2, !dbg !1258
  %buf = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, !dbg !1259
  %1 = bitcast %struct._object* %buf to i8**, !dbg !1260
  store i8* %call1, i8** %1, align 8, !dbg !1260, !tbaa !812
  %cmp3 = icmp eq i8* %call1, null, !dbg !1261
  br i1 %cmp3, label %do.body, label %cleanup, !dbg !1262

do.body:                                          ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !720, metadata !786), !dbg !1263
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1265
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !1265, !tbaa !833
  %dec = add i64 %2, -1, !dbg !1265
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1265, !tbaa !833
  %cmp5 = icmp eq i64 %dec, 0, !dbg !1265
  br i1 %cmp5, label %if.else, label %if.end.7, !dbg !1267

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1268
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1268, !tbaa !837
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !1268
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1268, !tbaa !838
  tail call void %4(%struct._object* %call) #2, !dbg !1268
  br label %if.end.7

if.end.7:                                         ; preds = %do.body, %if.else
  %call8 = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !1270
  br label %cleanup, !dbg !1271

cleanup:                                          ; preds = %if.end, %entry, %if.end.7
  %retval.0 = phi %struct._object* [ %call8, %if.end.7 ], [ null, %entry ], [ %call, %if.end ]
  ret %struct._object* %retval.0, !dbg !1272
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
define internal fastcc i32 @realize(%struct.stringio* %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.stringio* %self, i64 0, metadata !498, metadata !786), !dbg !1273
  %state = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 5, !dbg !1274
  %0 = load i32, i32* %state, align 4, !dbg !1274, !tbaa !1227
  %cmp = icmp eq i32 %0, 1, !dbg !1276
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1277

if.end:                                           ; preds = %entry
  store i32 1, i32* %state, align 4, !dbg !1278, !tbaa !1227
  %accu = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 6, !dbg !1279
  %call = tail call %struct._object* @_PyAccu_Finish(%struct._PyAccu* %accu) #2, !dbg !1280
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !500, metadata !786), !dbg !1281
  %cmp2 = icmp eq %struct._object* %call, null, !dbg !1282
  br i1 %cmp2, label %cleanup, label %if.end.4, !dbg !1284

if.end.4:                                         ; preds = %if.end
  %1 = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, i32 0, !dbg !1285
  %2 = load i64, i64* %1, align 8, !dbg !1285, !tbaa !1013
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !499, metadata !786), !dbg !1286
  tail call void @llvm.dbg.value(metadata %struct.stringio* %self, i64 0, metadata !515, metadata !786) #2, !dbg !1287
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !516, metadata !786) #2, !dbg !1289
  %buf_size.i = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 4, !dbg !1290
  %3 = load i64, i64* %buf_size.i, align 8, !dbg !1290, !tbaa !1196
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !517, metadata !786) #2, !dbg !1291
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !518, metadata !786) #2, !dbg !1292
  %add.i = add i64 %2, 1, !dbg !1293
  tail call void @llvm.dbg.value(metadata i64 %add.i, i64 0, metadata !516, metadata !786) #2, !dbg !1289
  %cmp.i = icmp slt i64 %add.i, 0, !dbg !1294
  br i1 %cmp.i, label %overflow.i, label %if.end.i, !dbg !1296

if.end.i:                                         ; preds = %if.end.4
  %div.i = lshr i64 %3, 1, !dbg !1297
  %cmp1.i = icmp ult i64 %add.i, %div.i, !dbg !1298
  br i1 %cmp1.i, label %if.then.2.i, label %if.else.i, !dbg !1299

if.then.2.i:                                      ; preds = %if.end.i
  %add3.i = add i64 %2, 2, !dbg !1300
  tail call void @llvm.dbg.value(metadata i64 %add3.i, i64 0, metadata !517, metadata !786) #2, !dbg !1291
  br label %if.end.20.i, !dbg !1302

if.else.i:                                        ; preds = %if.end.i
  %cmp4.i = icmp ult i64 %add.i, %3, !dbg !1303
  br i1 %cmp4.i, label %if.else.i.if.end.11_crit_edge, label %if.else.6.i, !dbg !1304

if.else.i.if.end.11_crit_edge:                    ; preds = %if.else.i
  %buf.phi.trans.insert = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 1, !dbg !1305
  %.pre = load i32*, i32** %buf.phi.trans.insert, align 8, !dbg !1305, !tbaa !812
  br label %if.end.11, !dbg !1304

if.else.6.i:                                      ; preds = %if.else.i
  %conv.i = uitofp i64 %add.i to double, !dbg !1306
  %conv7.i = uitofp i64 %3 to double, !dbg !1307
  %mul.i = fmul double %conv7.i, 1.125000e+00, !dbg !1308
  %cmp8.i = fcmp ugt double %conv.i, %mul.i, !dbg !1309
  br i1 %cmp8.i, label %if.else.16.i, label %if.then.10.i, !dbg !1310

if.then.10.i:                                     ; preds = %if.else.6.i
  %shr.i = lshr i64 %add.i, 3, !dbg !1311
  %add11.i = add i64 %shr.i, %add.i, !dbg !1313
  %cmp12.i = icmp ult i64 %add.i, 9, !dbg !1314
  %conv14.i = select i1 %cmp12.i, i64 3, i64 6, !dbg !1315
  %add15.i = add i64 %add11.i, %conv14.i, !dbg !1316
  tail call void @llvm.dbg.value(metadata i64 %add15.i, i64 0, metadata !517, metadata !786) #2, !dbg !1291
  br label %if.end.20.i, !dbg !1317

if.else.16.i:                                     ; preds = %if.else.6.i
  %add17.i = add i64 %2, 2, !dbg !1318
  tail call void @llvm.dbg.value(metadata i64 %add17.i, i64 0, metadata !517, metadata !786) #2, !dbg !1291
  br label %if.end.20.i, !dbg !1320

if.end.20.i:                                      ; preds = %if.else.16.i, %if.then.10.i, %if.then.2.i
  %alloc.0.i = phi i64 [ %add3.i, %if.then.2.i ], [ %add15.i, %if.then.10.i ], [ %add17.i, %if.else.16.i ], !dbg !1320
  %cmp21.i = icmp ugt i64 %alloc.0.i, 4611686018427387903, !dbg !1321
  br i1 %cmp21.i, label %overflow.i, label %if.end.24.i, !dbg !1323

if.end.24.i:                                      ; preds = %if.end.20.i
  %buf.i = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 1, !dbg !1324
  %4 = bitcast i32** %buf.i to i8**, !dbg !1324
  %5 = load i8*, i8** %4, align 8, !dbg !1324, !tbaa !812
  %mul25.i = shl i64 %alloc.0.i, 2, !dbg !1325
  %call.i = tail call i8* @PyMem_Realloc(i8* %5, i64 %mul25.i) #2, !dbg !1326
  %cmp26.i = icmp eq i8* %call.i, null, !dbg !1327
  br i1 %cmp26.i, label %if.then.28.i, label %if.end.30.i, !dbg !1328

if.then.28.i:                                     ; preds = %if.end.24.i
  %call29.i = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !1329
  br label %do.body, !dbg !1330

if.end.30.i:                                      ; preds = %if.end.24.i
  store i64 %alloc.0.i, i64* %buf_size.i, align 8, !dbg !1331, !tbaa !1196
  store i8* %call.i, i8** %4, align 8, !dbg !1332, !tbaa !812
  %6 = bitcast i8* %call.i to i32*, !dbg !1333
  br label %if.end.11, !dbg !1333

overflow.i:                                       ; preds = %if.end.20.i, %if.end.4
  %7 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !1334, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0)) #2, !dbg !1335
  br label %do.body, !dbg !1336

do.body:                                          ; preds = %overflow.i, %if.then.28.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !501, metadata !786), !dbg !1337
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1339
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !1339, !tbaa !833
  %dec = add i64 %8, -1, !dbg !1339
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1339, !tbaa !833
  %cmp8 = icmp eq i64 %dec, 0, !dbg !1339
  br i1 %cmp8, label %if.else, label %cleanup, !dbg !1341

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1342
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1342, !tbaa !837
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 4, !dbg !1342
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1342, !tbaa !838
  tail call void %10(%struct._object* %call) #2, !dbg !1342
  br label %cleanup

if.end.11:                                        ; preds = %if.else.i.if.end.11_crit_edge, %if.end.30.i
  %11 = phi i32* [ %.pre, %if.else.i.if.end.11_crit_edge ], [ %6, %if.end.30.i ], !dbg !1305
  %call12 = tail call i32* @PyUnicode_AsUCS4(%struct._object* %call, i32* %11, i64 %2, i32 0) #2, !dbg !1344
  %tobool = icmp eq i32* %call12, null, !dbg !1344
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1345
  %12 = load i64, i64* %ob_refcnt16, align 8, !dbg !1345, !tbaa !833
  %dec17 = add i64 %12, -1, !dbg !1345
  store i64 %dec17, i64* %ob_refcnt16, align 8, !dbg !1345, !tbaa !833
  %cmp18 = icmp eq i64 %dec17, 0, !dbg !1345
  br i1 %tobool, label %do.body.14, label %do.body.27, !dbg !1347

do.body.14:                                       ; preds = %if.end.11
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !505, metadata !786), !dbg !1348
  br i1 %cmp18, label %if.else.20, label %cleanup, !dbg !1350

if.else.20:                                       ; preds = %do.body.14
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1351
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8, !dbg !1351, !tbaa !837
  %tp_dealloc22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !1351
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8, !dbg !1351, !tbaa !838
  tail call void %14(%struct._object* %call) #2, !dbg !1351
  br label %cleanup

do.body.27:                                       ; preds = %if.end.11
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !509, metadata !786), !dbg !1353
  br i1 %cmp18, label %if.else.33, label %cleanup, !dbg !1355

if.else.33:                                       ; preds = %do.body.27
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1356
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8, !dbg !1356, !tbaa !837
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i64 0, i32 4, !dbg !1356
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8, !dbg !1356, !tbaa !838
  tail call void %16(%struct._object* %call) #2, !dbg !1356
  br label %cleanup

cleanup:                                          ; preds = %if.else.33, %do.body.27, %if.else.20, %do.body.14, %if.else, %do.body, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ -1, %if.end ], [ -1, %do.body ], [ -1, %if.else ], [ -1, %do.body.14 ], [ -1, %if.else.20 ], [ 0, %do.body.27 ], [ 0, %if.else.33 ]
  ret i32 %retval.0, !dbg !1359
}

declare %struct._object* @PyObject_CallMethodObjArgs(%struct._object*, %struct._object*, ...) #3

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

declare %struct._object* @_PyAccu_Finish(%struct._PyAccu*) #3

declare i32* @PyUnicode_AsUCS4(%struct._object*, i32*, i64, i32) #3

declare i8* @PyMem_Realloc(i8*, i64) #3

declare %struct._object* @PyErr_NoMemory() #3

declare %struct._object* @PyUnicode_New(i64, i32) #3

declare i64 @_PyIO_find_line_ending(i32, i32, %struct._object*, i32, i8*, i8*, i64*) #3

declare %struct._object* @PyUnicode_FromKindAndData(i32, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_close(%struct.stringio* %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.stringio* %self, i64 0, metadata !532, metadata !786), !dbg !1360
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 8, !dbg !1361
  store i8 1, i8* %closed, align 1, !dbg !1362, !tbaa !933
  tail call void @llvm.dbg.value(metadata %struct.stringio* %self, i64 0, metadata !515, metadata !786) #2, !dbg !1363
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !516, metadata !786) #2, !dbg !1366
  %buf_size.i = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 4, !dbg !1367
  %0 = load i64, i64* %buf_size.i, align 8, !dbg !1367, !tbaa !1196
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !517, metadata !786) #2, !dbg !1368
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !518, metadata !786) #2, !dbg !1369
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !516, metadata !786) #2, !dbg !1366
  %cmp1.i = icmp ugt i64 %0, 3, !dbg !1370
  br i1 %cmp1.i, label %if.end.24.i, label %if.else.i, !dbg !1371

if.else.i:                                        ; preds = %entry
  %cmp4.i = icmp ugt i64 %0, 1, !dbg !1372
  br i1 %cmp4.i, label %if.end, label %if.else.6.i, !dbg !1373

if.else.6.i:                                      ; preds = %if.else.i
  %conv7.i = uitofp i64 %0 to double, !dbg !1374
  %mul.i = fmul double %conv7.i, 1.125000e+00, !dbg !1375
  %cmp8.i = fcmp ult double %mul.i, 1.000000e+00, !dbg !1376
  br i1 %cmp8.i, label %if.else.16.i, label %if.end.24.i, !dbg !1377

if.else.16.i:                                     ; preds = %if.else.6.i
  tail call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !517, metadata !786) #2, !dbg !1368
  br label %if.end.24.i, !dbg !1378

if.end.24.i:                                      ; preds = %if.else.16.i, %entry, %if.else.6.i
  %alloc.0.i = phi i64 [ 2, %if.else.16.i ], [ 2, %entry ], [ 4, %if.else.6.i ], !dbg !1378
  %buf.i = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 1, !dbg !1379
  %1 = bitcast i32** %buf.i to i8**, !dbg !1379
  %2 = load i8*, i8** %1, align 8, !dbg !1379, !tbaa !812
  %mul25.i = shl nuw nsw i64 %alloc.0.i, 2, !dbg !1380
  %call.i = tail call i8* @PyMem_Realloc(i8* %2, i64 %mul25.i) #2, !dbg !1381
  %cmp26.i = icmp eq i8* %call.i, null, !dbg !1382
  br i1 %cmp26.i, label %resize_buffer.exit, label %if.end.30.i, !dbg !1383

if.end.30.i:                                      ; preds = %if.end.24.i
  store i64 %alloc.0.i, i64* %buf_size.i, align 8, !dbg !1384, !tbaa !1196
  store i8* %call.i, i8** %1, align 8, !dbg !1385, !tbaa !812
  br label %if.end, !dbg !1386

resize_buffer.exit:                               ; preds = %if.end.24.i
  %call29.i = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !1387
  br label %return, !dbg !1388

if.end:                                           ; preds = %if.end.30.i, %if.else.i
  %accu = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 6, !dbg !1389
  tail call void @_PyAccu_Destroy(%struct._PyAccu* %accu) #2, !dbg !1390
  %readnl = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 12, !dbg !1391
  %3 = load %struct._object*, %struct._object** %readnl, align 8, !dbg !1391, !tbaa !824
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !533, metadata !786), !dbg !1391
  %cmp1 = icmp eq %struct._object* %3, null, !dbg !1393
  br i1 %cmp1, label %if.end.8, label %if.then.2, !dbg !1394

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %readnl, align 8, !dbg !1395, !tbaa !824
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !535, metadata !786), !dbg !1397
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 0, !dbg !1399
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !1399, !tbaa !833
  %dec = add i64 %4, -1, !dbg !1399
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1399, !tbaa !833
  %cmp5 = icmp eq i64 %dec, 0, !dbg !1399
  br i1 %cmp5, label %if.else, label %if.end.8, !dbg !1401

if.else:                                          ; preds = %if.then.2
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 1, !dbg !1402
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1402, !tbaa !837
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !1402
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1402, !tbaa !838
  tail call void %6(%struct._object* %3) #2, !dbg !1402
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.2, %if.end
  %writenl = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 13, !dbg !1404
  %7 = load %struct._object*, %struct._object** %writenl, align 8, !dbg !1404, !tbaa !843
  tail call void @llvm.dbg.value(metadata %struct._object* %7, i64 0, metadata !539, metadata !786), !dbg !1404
  %cmp13 = icmp eq %struct._object* %7, null, !dbg !1406
  br i1 %cmp13, label %if.end.28, label %if.then.14, !dbg !1407

if.then.14:                                       ; preds = %if.end.8
  store %struct._object* null, %struct._object** %writenl, align 8, !dbg !1408, !tbaa !843
  tail call void @llvm.dbg.value(metadata %struct._object* %7, i64 0, metadata !541, metadata !786), !dbg !1410
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %7, i64 0, i32 0, !dbg !1412
  %8 = load i64, i64* %ob_refcnt18, align 8, !dbg !1412, !tbaa !833
  %dec19 = add i64 %8, -1, !dbg !1412
  store i64 %dec19, i64* %ob_refcnt18, align 8, !dbg !1412, !tbaa !833
  %cmp20 = icmp eq i64 %dec19, 0, !dbg !1412
  br i1 %cmp20, label %if.else.22, label %if.end.28, !dbg !1414

if.else.22:                                       ; preds = %if.then.14
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %7, i64 0, i32 1, !dbg !1415
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8, !dbg !1415, !tbaa !837
  %tp_dealloc24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 4, !dbg !1415
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc24, align 8, !dbg !1415, !tbaa !838
  tail call void %10(%struct._object* %7) #2, !dbg !1415
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.22, %if.then.14, %if.end.8
  %decoder = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 11, !dbg !1417
  %11 = load %struct._object*, %struct._object** %decoder, align 8, !dbg !1417, !tbaa !857
  tail call void @llvm.dbg.value(metadata %struct._object* %11, i64 0, metadata !545, metadata !786), !dbg !1417
  %cmp33 = icmp eq %struct._object* %11, null, !dbg !1419
  br i1 %cmp33, label %if.end.48, label %if.then.34, !dbg !1420

if.then.34:                                       ; preds = %if.end.28
  store %struct._object* null, %struct._object** %decoder, align 8, !dbg !1421, !tbaa !857
  tail call void @llvm.dbg.value(metadata %struct._object* %11, i64 0, metadata !547, metadata !786), !dbg !1423
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %11, i64 0, i32 0, !dbg !1425
  %12 = load i64, i64* %ob_refcnt38, align 8, !dbg !1425, !tbaa !833
  %dec39 = add i64 %12, -1, !dbg !1425
  store i64 %dec39, i64* %ob_refcnt38, align 8, !dbg !1425, !tbaa !833
  %cmp40 = icmp eq i64 %dec39, 0, !dbg !1425
  br i1 %cmp40, label %if.else.42, label %if.end.48, !dbg !1427

if.else.42:                                       ; preds = %if.then.34
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %11, i64 0, i32 1, !dbg !1428
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8, !dbg !1428, !tbaa !837
  %tp_dealloc44 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !1428
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc44, align 8, !dbg !1428, !tbaa !838
  tail call void %14(%struct._object* %11) #2, !dbg !1428
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.42, %if.then.34, %if.end.28
  %15 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1430, !tbaa !833
  %inc = add i64 %15, 1, !dbg !1430
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1430, !tbaa !833
  br label %return, !dbg !1430

return:                                           ; preds = %resize_buffer.exit, %if.end.48
  %retval.0 = phi %struct._object* [ @_Py_NoneStruct, %if.end.48 ], [ null, %resize_buffer.exit ]
  ret %struct._object* %retval.0, !dbg !1431
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_getvalue(%struct.stringio* %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.stringio* %self, i64 0, metadata !553, metadata !786), !dbg !1432
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 7, !dbg !1433
  %0 = load i8, i8* %ok, align 1, !dbg !1433, !tbaa !805
  %cmp = icmp slt i8 %0, 1, !dbg !1433
  br i1 %cmp, label %if.then, label %if.end, !dbg !1435

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1436, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0)) #2, !dbg !1436
  br label %return, !dbg !1436

if.end:                                           ; preds = %entry
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 8, !dbg !1439
  %2 = load i8, i8* %closed, align 1, !dbg !1439, !tbaa !933
  %tobool = icmp eq i8 %2, 0, !dbg !1439
  br i1 %tobool, label %if.end.3, label %if.then.2, !dbg !1441

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1442, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0)) #2, !dbg !1442
  br label %return, !dbg !1442

if.end.3:                                         ; preds = %if.end
  %state = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 5, !dbg !1445
  %4 = load i32, i32* %state, align 4, !dbg !1445, !tbaa !1227
  %cmp4 = icmp eq i32 %4, 2, !dbg !1447
  br i1 %cmp4, label %if.then.6, label %if.end.7, !dbg !1448

if.then.6:                                        ; preds = %if.end.3
  tail call void @llvm.dbg.value(metadata %struct.stringio* %self, i64 0, metadata !556, metadata !786) #2, !dbg !1449
  %accu.i = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 6, !dbg !1451
  %call.i = tail call %struct._object* @_PyAccu_Finish(%struct._PyAccu* %accu.i) #2, !dbg !1452
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !557, metadata !786) #2, !dbg !1453
  store i32 1, i32* %state, align 4, !dbg !1454, !tbaa !1227
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !1455
  br i1 %cmp.i, label %return, label %if.end.i, !dbg !1457

if.end.i:                                         ; preds = %if.then.6
  %call2.i = tail call i32 @_PyAccu_Init(%struct._PyAccu* %accu.i) #2, !dbg !1458
  %tobool.i = icmp eq i32 %call2.i, 0, !dbg !1458
  br i1 %tobool.i, label %lor.lhs.false.i, label %do.body.i, !dbg !1459

lor.lhs.false.i:                                  ; preds = %if.end.i
  %call4.i = tail call i32 @_PyAccu_Accumulate(%struct._PyAccu* %accu.i, %struct._object* %call.i) #2, !dbg !1460
  %tobool5.i = icmp eq i32 %call4.i, 0, !dbg !1460
  br i1 %tobool5.i, label %if.end.10.i, label %do.body.i, !dbg !1461

do.body.i:                                        ; preds = %lor.lhs.false.i, %if.end.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !558, metadata !786) #2, !dbg !1462
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1464
  %5 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1464, !tbaa !833
  %dec.i = add i64 %5, -1, !dbg !1464
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1464, !tbaa !833
  %cmp7.i = icmp eq i64 %dec.i, 0, !dbg !1464
  br i1 %cmp7.i, label %if.else.i, label %return, !dbg !1466

if.else.i:                                        ; preds = %do.body.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1467
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1467, !tbaa !837
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !1467
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1467, !tbaa !838
  tail call void %7(%struct._object* %call.i) #2, !dbg !1467
  br label %return, !dbg !1469

if.end.10.i:                                      ; preds = %lor.lhs.false.i
  store i32 2, i32* %state, align 4, !dbg !1470, !tbaa !1227
  br label %return, !dbg !1471

if.end.7:                                         ; preds = %if.end.3
  %buf = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 1, !dbg !1472
  %8 = bitcast i32** %buf to i8**, !dbg !1472
  %9 = load i8*, i8** %8, align 8, !dbg !1472, !tbaa !812
  %string_size = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 3, !dbg !1473
  %10 = load i64, i64* %string_size, align 8, !dbg !1473, !tbaa !954
  %call8 = tail call %struct._object* @PyUnicode_FromKindAndData(i32 4, i8* %9, i64 %10) #2, !dbg !1474
  br label %return, !dbg !1475

return:                                           ; preds = %if.end.10.i, %if.else.i, %do.body.i, %if.then.6, %if.end.7, %if.then.2, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ null, %if.then.2 ], [ %call8, %if.end.7 ], [ %call.i, %if.end.10.i ], [ null, %if.then.6 ], [ null, %do.body.i ], [ null, %if.else.i ]
  ret %struct._object* %retval.0, !dbg !1476
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_read(%struct.stringio* %self, %struct._object* %args) #0 {
entry:
  %arg = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct.stringio* %self, i64 0, metadata !566, metadata !786), !dbg !1477
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !567, metadata !786), !dbg !1478
  %0 = bitcast %struct._object** %arg to i8*, !dbg !1479
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1479
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !571, metadata !786), !dbg !1480
  store %struct._object* @_Py_NoneStruct, %struct._object** %arg, align 8, !dbg !1480, !tbaa !929
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 7, !dbg !1481
  %1 = load i8, i8* %ok, align 1, !dbg !1481, !tbaa !805
  %cmp = icmp slt i8 %1, 1, !dbg !1481
  br i1 %cmp, label %if.then, label %if.end, !dbg !1483

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1484, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0)) #2, !dbg !1484
  br label %cleanup, !dbg !1487

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object** %arg, i64 0, metadata !571, metadata !786), !dbg !1480
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), %struct._object** nonnull %arg) #2, !dbg !1488
  %tobool = icmp eq i32 %call, 0, !dbg !1488
  br i1 %tobool, label %cleanup, label %if.end.3, !dbg !1490

if.end.3:                                         ; preds = %if.end
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 8, !dbg !1491
  %3 = load i8, i8* %closed, align 1, !dbg !1491, !tbaa !933
  %tobool4 = icmp eq i8 %3, 0, !dbg !1491
  br i1 %tobool4, label %if.end.6, label %if.then.5, !dbg !1493

if.then.5:                                        ; preds = %if.end.3
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1494, !tbaa !929
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0)) #2, !dbg !1494
  br label %cleanup, !dbg !1497

if.end.6:                                         ; preds = %if.end.3
  call void @llvm.dbg.value(metadata %struct._object** %arg, i64 0, metadata !571, metadata !786), !dbg !1480
  %5 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1498, !tbaa !929
  %call7 = call i32 @PyNumber_Check(%struct._object* %5) #2, !dbg !1500
  %tobool8 = icmp eq i32 %call7, 0, !dbg !1500
  call void @llvm.dbg.value(metadata %struct._object** %arg, i64 0, metadata !571, metadata !786), !dbg !1480
  %6 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1501, !tbaa !929
  br i1 %tobool8, label %if.else, label %if.then.9, !dbg !1503

if.then.9:                                        ; preds = %if.end.6
  %7 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !1504, !tbaa !929
  %call10 = call i64 @PyNumber_AsSsize_t(%struct._object* %6, %struct._object* %7) #2, !dbg !1505
  call void @llvm.dbg.value(metadata i64 %call10, i64 0, metadata !568, metadata !786), !dbg !1506
  %cmp11 = icmp eq i64 %call10, -1, !dbg !1507
  br i1 %cmp11, label %land.lhs.true, label %if.end.23, !dbg !1509

land.lhs.true:                                    ; preds = %if.then.9
  %call13 = call %struct._object* @PyErr_Occurred() #2, !dbg !1510
  %tobool14 = icmp eq %struct._object* %call13, null, !dbg !1510
  br i1 %tobool14, label %if.end.23, label %cleanup, !dbg !1512

if.else:                                          ; preds = %if.end.6
  %cmp17 = icmp eq %struct._object* %6, @_Py_NoneStruct, !dbg !1513
  br i1 %cmp17, label %if.end.23, label %if.else.20, !dbg !1515

if.else.20:                                       ; preds = %if.else
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1516, !tbaa !929
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 1, !dbg !1518
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1518, !tbaa !837
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 1, !dbg !1519
  %10 = load i8*, i8** %tp_name, align 8, !dbg !1519, !tbaa !999
  %call21 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0), i8* %10) #2, !dbg !1520
  br label %cleanup, !dbg !1521

if.end.23:                                        ; preds = %if.else, %land.lhs.true, %if.then.9
  %size.0 = phi i64 [ -1, %land.lhs.true ], [ %call10, %if.then.9 ], [ -1, %if.else ]
  %string_size = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 3, !dbg !1522
  %11 = load i64, i64* %string_size, align 8, !dbg !1522, !tbaa !954
  %pos = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 2, !dbg !1523
  %12 = load i64, i64* %pos, align 8, !dbg !1523, !tbaa !952
  %sub = sub i64 %11, %12, !dbg !1524
  call void @llvm.dbg.value(metadata i64 %sub, i64 0, metadata !569, metadata !786), !dbg !1525
  %cmp24 = icmp slt i64 %size.0, 0, !dbg !1526
  %cmp26 = icmp sgt i64 %size.0, %sub, !dbg !1528
  %or.cond = or i1 %cmp24, %cmp26, !dbg !1529
  call void @llvm.dbg.value(metadata i64 %sub, i64 0, metadata !568, metadata !786), !dbg !1506
  %cmp29 = icmp slt i64 %sub, 0, !dbg !1530
  %. = select i1 %cmp29, i64 0, i64 %sub, !dbg !1533
  call void @llvm.dbg.value(metadata i64 %., i64 0, metadata !568, metadata !786), !dbg !1506
  %size.1 = select i1 %or.cond, i64 %., i64 %size.0, !dbg !1529
  %state = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 5, !dbg !1534
  %13 = load i32, i32* %state, align 4, !dbg !1534, !tbaa !1227
  %cmp34 = icmp eq i32 %13, 2, !dbg !1535
  br i1 %cmp34, label %land.lhs.true.36, label %if.end.47, !dbg !1536

land.lhs.true.36:                                 ; preds = %if.end.23
  %cmp38 = icmp eq i64 %12, 0, !dbg !1537
  %cmp41 = icmp eq i64 %size.1, %sub, !dbg !1538
  %or.cond83 = and i1 %cmp38, %cmp41, !dbg !1539
  br i1 %or.cond83, label %if.then.43, label %if.end.47, !dbg !1539

if.then.43:                                       ; preds = %land.lhs.true.36
  call void @llvm.dbg.value(metadata %struct.stringio* %self, i64 0, metadata !556, metadata !786) #2, !dbg !1540
  %accu.i = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 6, !dbg !1542
  %call.i = call %struct._object* @_PyAccu_Finish(%struct._PyAccu* %accu.i) #2, !dbg !1543
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !557, metadata !786) #2, !dbg !1544
  store i32 1, i32* %state, align 4, !dbg !1545, !tbaa !1227
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !1546
  br i1 %cmp.i, label %make_intermediate.exit, label %if.end.i, !dbg !1547

if.end.i:                                         ; preds = %if.then.43
  %call2.i = call i32 @_PyAccu_Init(%struct._PyAccu* %accu.i) #2, !dbg !1548
  %tobool.i = icmp eq i32 %call2.i, 0, !dbg !1548
  br i1 %tobool.i, label %lor.lhs.false.i, label %do.body.i, !dbg !1549

lor.lhs.false.i:                                  ; preds = %if.end.i
  %call4.i = call i32 @_PyAccu_Accumulate(%struct._PyAccu* %accu.i, %struct._object* %call.i) #2, !dbg !1550
  %tobool5.i = icmp eq i32 %call4.i, 0, !dbg !1550
  br i1 %tobool5.i, label %if.end.10.i, label %do.body.i, !dbg !1551

do.body.i:                                        ; preds = %lor.lhs.false.i, %if.end.i
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !558, metadata !786) #2, !dbg !1552
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1553
  %14 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1553, !tbaa !833
  %dec.i = add i64 %14, -1, !dbg !1553
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1553, !tbaa !833
  %cmp7.i = icmp eq i64 %dec.i, 0, !dbg !1553
  br i1 %cmp7.i, label %if.else.i, label %make_intermediate.exit, !dbg !1554

if.else.i:                                        ; preds = %do.body.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1555
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1555, !tbaa !837
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i64 0, i32 4, !dbg !1555
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1555, !tbaa !838
  call void %16(%struct._object* %call.i) #2, !dbg !1555
  br label %make_intermediate.exit, !dbg !1556

if.end.10.i:                                      ; preds = %lor.lhs.false.i
  store i32 2, i32* %state, align 4, !dbg !1557, !tbaa !1227
  br label %make_intermediate.exit, !dbg !1558

make_intermediate.exit:                           ; preds = %if.then.43, %do.body.i, %if.else.i, %if.end.10.i
  %retval.0.i = phi %struct._object* [ %call.i, %if.end.10.i ], [ null, %if.then.43 ], [ null, %do.body.i ], [ null, %if.else.i ], !dbg !1556
  call void @llvm.dbg.value(metadata %struct._object* %retval.0.i, i64 0, metadata !572, metadata !786), !dbg !1559
  %17 = load i64, i64* %string_size, align 8, !dbg !1560, !tbaa !954
  store i64 %17, i64* %pos, align 8, !dbg !1561, !tbaa !952
  br label %cleanup

if.end.47:                                        ; preds = %land.lhs.true.36, %if.end.23
  %call48 = call fastcc i32 @realize(%struct.stringio* %self), !dbg !1562
  %cmp49 = icmp slt i32 %call48, 0, !dbg !1562
  br i1 %cmp49, label %cleanup, label %if.end.52, !dbg !1564

if.end.52:                                        ; preds = %if.end.47
  %buf = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 1, !dbg !1565
  %18 = load i32*, i32** %buf, align 8, !dbg !1565, !tbaa !812
  %19 = load i64, i64* %pos, align 8, !dbg !1566, !tbaa !952
  %add.ptr = getelementptr i32, i32* %18, i64 %19, !dbg !1567
  call void @llvm.dbg.value(metadata i32* %add.ptr, i64 0, metadata !570, metadata !786), !dbg !1568
  %add = add i64 %19, %size.1, !dbg !1569
  store i64 %add, i64* %pos, align 8, !dbg !1569, !tbaa !952
  %20 = bitcast i32* %add.ptr to i8*, !dbg !1570
  %call55 = call %struct._object* @PyUnicode_FromKindAndData(i32 4, i8* %20, i64 %size.1) #2, !dbg !1571
  br label %cleanup, !dbg !1572

cleanup:                                          ; preds = %if.end.47, %land.lhs.true, %if.end, %if.end.52, %make_intermediate.exit, %if.else.20, %if.then.5, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ null, %if.then.5 ], [ %retval.0.i, %make_intermediate.exit ], [ %call55, %if.end.52 ], [ null, %if.else.20 ], [ null, %if.end ], [ null, %land.lhs.true ], [ null, %if.end.47 ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1573
  ret %struct._object* %retval.0, !dbg !1573
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_readline(%struct.stringio* %self, %struct._object* %args) #0 {
entry:
  %consumed.i = alloca i64, align 8
  %arg = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct.stringio* %self, i64 0, metadata !577, metadata !786), !dbg !1574
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !578, metadata !786), !dbg !1575
  %0 = bitcast %struct._object** %arg to i8*, !dbg !1576
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1576
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !579, metadata !786), !dbg !1577
  store %struct._object* @_Py_NoneStruct, %struct._object** %arg, align 8, !dbg !1577, !tbaa !929
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !580, metadata !786), !dbg !1578
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 7, !dbg !1579
  %1 = load i8, i8* %ok, align 1, !dbg !1579, !tbaa !805
  %cmp = icmp slt i8 %1, 1, !dbg !1579
  br i1 %cmp, label %if.then, label %if.end, !dbg !1581

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1582, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0)) #2, !dbg !1582
  br label %cleanup, !dbg !1585

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object** %arg, i64 0, metadata !579, metadata !786), !dbg !1577
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), %struct._object** nonnull %arg) #2, !dbg !1586
  %tobool = icmp eq i32 %call, 0, !dbg !1586
  br i1 %tobool, label %cleanup, label %if.end.3, !dbg !1588

if.end.3:                                         ; preds = %if.end
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 8, !dbg !1589
  %3 = load i8, i8* %closed, align 1, !dbg !1589, !tbaa !933
  %tobool4 = icmp eq i8 %3, 0, !dbg !1589
  br i1 %tobool4, label %if.end.6, label %if.then.5, !dbg !1591

if.then.5:                                        ; preds = %if.end.3
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1592, !tbaa !929
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0)) #2, !dbg !1592
  br label %cleanup, !dbg !1595

if.end.6:                                         ; preds = %if.end.3
  %call7 = call fastcc i32 @realize(%struct.stringio* %self), !dbg !1596
  %cmp8 = icmp slt i32 %call7, 0, !dbg !1596
  br i1 %cmp8, label %cleanup, label %if.end.11, !dbg !1598

if.end.11:                                        ; preds = %if.end.6
  call void @llvm.dbg.value(metadata %struct._object** %arg, i64 0, metadata !579, metadata !786), !dbg !1577
  %5 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1599, !tbaa !929
  %call12 = call i32 @PyNumber_Check(%struct._object* %5) #2, !dbg !1601
  %tobool13 = icmp eq i32 %call12, 0, !dbg !1601
  call void @llvm.dbg.value(metadata %struct._object** %arg, i64 0, metadata !579, metadata !786), !dbg !1577
  %6 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1602, !tbaa !929
  br i1 %tobool13, label %if.else, label %if.then.14, !dbg !1604

if.then.14:                                       ; preds = %if.end.11
  %7 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !1605, !tbaa !929
  %call15 = call i64 @PyNumber_AsSsize_t(%struct._object* %6, %struct._object* %7) #2, !dbg !1606
  call void @llvm.dbg.value(metadata i64 %call15, i64 0, metadata !580, metadata !786), !dbg !1578
  %cmp16 = icmp eq i64 %call15, -1, !dbg !1607
  br i1 %cmp16, label %land.lhs.true, label %if.end.27, !dbg !1609

land.lhs.true:                                    ; preds = %if.then.14
  %call18 = call %struct._object* @PyErr_Occurred() #2, !dbg !1610
  %tobool19 = icmp eq %struct._object* %call18, null, !dbg !1610
  br i1 %tobool19, label %if.end.27, label %cleanup, !dbg !1612

if.else:                                          ; preds = %if.end.11
  %cmp22 = icmp eq %struct._object* %6, @_Py_NoneStruct, !dbg !1613
  br i1 %cmp22, label %if.end.27, label %if.then.24, !dbg !1615

if.then.24:                                       ; preds = %if.else
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1616, !tbaa !929
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 1, !dbg !1618
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1618, !tbaa !837
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 1, !dbg !1619
  %10 = load i8*, i8** %tp_name, align 8, !dbg !1619, !tbaa !999
  %call25 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0), i8* %10) #2, !dbg !1620
  br label %cleanup, !dbg !1621

if.end.27:                                        ; preds = %land.lhs.true, %if.else, %if.then.14
  %limit.0 = phi i64 [ -1, %land.lhs.true ], [ %call15, %if.then.14 ], [ -1, %if.else ]
  call void @llvm.dbg.value(metadata %struct.stringio* %self, i64 0, metadata !523, metadata !786) #2, !dbg !1622
  call void @llvm.dbg.value(metadata i64 %limit.0, i64 0, metadata !524, metadata !786) #2, !dbg !1624
  %11 = bitcast i64* %consumed.i to i8*, !dbg !1625
  call void @llvm.lifetime.start(i64 8, i8* %11) #2, !dbg !1625
  %pos.i = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 2, !dbg !1626
  %12 = load i64, i64* %pos.i, align 8, !dbg !1626, !tbaa !952
  %string_size.i = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 3, !dbg !1627
  %13 = load i64, i64* %string_size.i, align 8, !dbg !1627, !tbaa !954
  %cmp.i = icmp sgt i64 %13, %12, !dbg !1628
  br i1 %cmp.i, label %if.end.i, label %if.then.i, !dbg !1629

if.then.i:                                        ; preds = %if.end.27
  %call.i = call %struct._object* @PyUnicode_New(i64 0, i32 0) #2, !dbg !1630
  br label %_stringio_readline.exit, !dbg !1631

if.end.i:                                         ; preds = %if.end.27
  %buf.i = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 1, !dbg !1632
  %14 = load i32*, i32** %buf.i, align 8, !dbg !1632, !tbaa !812
  %add.ptr.i = getelementptr i32, i32* %14, i64 %12, !dbg !1633
  call void @llvm.dbg.value(metadata i32* %add.ptr.i, i64 0, metadata !525, metadata !786) #2, !dbg !1634
  %cmp2.i = icmp slt i64 %limit.0, 0, !dbg !1635
  %sub.i = sub i64 %13, %12, !dbg !1637
  %cmp5.i = icmp slt i64 %sub.i, %limit.0, !dbg !1638
  %or.cond.i = or i1 %cmp2.i, %cmp5.i, !dbg !1639
  call void @llvm.dbg.value(metadata i64 %sub.i, i64 0, metadata !524, metadata !786) #2, !dbg !1624
  %sub.limit.i = select i1 %or.cond.i, i64 %sub.i, i64 %limit.0, !dbg !1639
  %add.ptr11.i = getelementptr i32, i32* %add.ptr.i, i64 %sub.limit.i, !dbg !1640
  call void @llvm.dbg.value(metadata i32* %add.ptr11.i, i64 0, metadata !526, metadata !786) #2, !dbg !1641
  %15 = load i32, i32* %add.ptr11.i, align 4, !dbg !1642, !tbaa !966
  call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !527, metadata !786) #2, !dbg !1643
  store i32 0, i32* %add.ptr11.i, align 4, !dbg !1644, !tbaa !966
  %readtranslate.i = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 10, !dbg !1645
  %16 = load i8, i8* %readtranslate.i, align 1, !dbg !1645, !tbaa !970
  %conv.i = sext i8 %16 to i32, !dbg !1646
  %readuniversal.i = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 9, !dbg !1647
  %17 = load i8, i8* %readuniversal.i, align 1, !dbg !1647, !tbaa !973
  %conv12.i = sext i8 %17 to i32, !dbg !1648
  %readnl.i = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 12, !dbg !1649
  %18 = load %struct._object*, %struct._object** %readnl.i, align 8, !dbg !1649, !tbaa !824
  %19 = bitcast i32* %add.ptr.i to i8*, !dbg !1650
  %20 = bitcast i32* %add.ptr11.i to i8*, !dbg !1651
  call void @llvm.dbg.value(metadata i64* %consumed.i, i64 0, metadata !529, metadata !786) #2, !dbg !1652
  %call13.i = call i64 @_PyIO_find_line_ending(i32 %conv.i, i32 %conv12.i, %struct._object* %18, i32 4, i8* %19, i8* %20, i64* nonnull %consumed.i) #2, !dbg !1653
  call void @llvm.dbg.value(metadata i64 %call13.i, i64 0, metadata !528, metadata !786) #2, !dbg !1654
  store i32 %15, i32* %add.ptr11.i, align 4, !dbg !1655, !tbaa !966
  %cmp14.i = icmp slt i64 %call13.i, 0, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %sub.limit.i, i64 0, metadata !528, metadata !786) #2, !dbg !1654
  %limit.addr.0.call13.i = select i1 %cmp14.i, i64 %sub.limit.i, i64 %call13.i, !dbg !1657
  %21 = load i64, i64* %pos.i, align 8, !dbg !1658, !tbaa !952
  %add.i = add i64 %limit.addr.0.call13.i, %21, !dbg !1658
  store i64 %add.i, i64* %pos.i, align 8, !dbg !1658, !tbaa !952
  %call19.i = call %struct._object* @PyUnicode_FromKindAndData(i32 4, i8* %19, i64 %limit.addr.0.call13.i) #2, !dbg !1659
  br label %_stringio_readline.exit, !dbg !1660

_stringio_readline.exit:                          ; preds = %if.then.i, %if.end.i
  %retval.0.i = phi %struct._object* [ %call.i, %if.then.i ], [ %call19.i, %if.end.i ], !dbg !1637
  call void @llvm.lifetime.end(i64 8, i8* %11) #2, !dbg !1661
  br label %cleanup, !dbg !1662

cleanup:                                          ; preds = %land.lhs.true, %if.end.6, %if.end, %_stringio_readline.exit, %if.then.24, %if.then.5, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ null, %if.then.5 ], [ %retval.0.i, %_stringio_readline.exit ], [ null, %if.then.24 ], [ null, %if.end ], [ null, %if.end.6 ], [ null, %land.lhs.true ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1663
  ret %struct._object* %retval.0, !dbg !1663
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_tell(%struct.stringio* nocapture readonly %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.stringio* %self, i64 0, metadata !583, metadata !786), !dbg !1664
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 7, !dbg !1665
  %0 = load i8, i8* %ok, align 1, !dbg !1665, !tbaa !805
  %cmp = icmp slt i8 %0, 1, !dbg !1665
  br i1 %cmp, label %if.then, label %if.end, !dbg !1667

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1668, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0)) #2, !dbg !1668
  br label %return, !dbg !1668

if.end:                                           ; preds = %entry
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 8, !dbg !1671
  %2 = load i8, i8* %closed, align 1, !dbg !1671, !tbaa !933
  %tobool = icmp eq i8 %2, 0, !dbg !1671
  br i1 %tobool, label %if.end.3, label %if.then.2, !dbg !1673

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1674, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0)) #2, !dbg !1674
  br label %return, !dbg !1674

if.end.3:                                         ; preds = %if.end
  %pos = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 2, !dbg !1677
  %4 = load i64, i64* %pos, align 8, !dbg !1677, !tbaa !952
  %call = tail call %struct._object* @PyLong_FromSsize_t(i64 %4) #2, !dbg !1678
  br label %return, !dbg !1679

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ null, %if.then.2 ], [ %call, %if.end.3 ]
  ret %struct._object* %retval.0, !dbg !1680
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_truncate(%struct.stringio* %self, %struct._object* %args) #0 {
entry:
  %arg = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct.stringio* %self, i64 0, metadata !586, metadata !786), !dbg !1681
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !587, metadata !786), !dbg !1682
  %0 = bitcast %struct._object** %arg to i8*, !dbg !1683
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1683
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !589, metadata !786), !dbg !1684
  store %struct._object* @_Py_NoneStruct, %struct._object** %arg, align 8, !dbg !1684, !tbaa !929
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 7, !dbg !1685
  %1 = load i8, i8* %ok, align 1, !dbg !1685, !tbaa !805
  %cmp = icmp slt i8 %1, 1, !dbg !1685
  br i1 %cmp, label %if.then, label %if.end, !dbg !1687

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1688, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0)) #2, !dbg !1688
  br label %cleanup, !dbg !1691

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object** %arg, i64 0, metadata !589, metadata !786), !dbg !1684
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), %struct._object** nonnull %arg) #2, !dbg !1692
  %tobool = icmp eq i32 %call, 0, !dbg !1692
  br i1 %tobool, label %cleanup, label %if.end.3, !dbg !1694

if.end.3:                                         ; preds = %if.end
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 8, !dbg !1695
  %3 = load i8, i8* %closed, align 1, !dbg !1695, !tbaa !933
  %tobool4 = icmp eq i8 %3, 0, !dbg !1695
  br i1 %tobool4, label %if.end.6, label %if.then.5, !dbg !1697

if.then.5:                                        ; preds = %if.end.3
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1698, !tbaa !929
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0)) #2, !dbg !1698
  br label %cleanup, !dbg !1701

if.end.6:                                         ; preds = %if.end.3
  call void @llvm.dbg.value(metadata %struct._object** %arg, i64 0, metadata !589, metadata !786), !dbg !1684
  %5 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1702, !tbaa !929
  %call7 = call i32 @PyNumber_Check(%struct._object* %5) #2, !dbg !1704
  %tobool8 = icmp eq i32 %call7, 0, !dbg !1704
  call void @llvm.dbg.value(metadata %struct._object** %arg, i64 0, metadata !589, metadata !786), !dbg !1684
  %6 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1705, !tbaa !929
  br i1 %tobool8, label %if.else, label %if.then.9, !dbg !1707

if.then.9:                                        ; preds = %if.end.6
  %7 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !1708, !tbaa !929
  %call10 = call i64 @PyNumber_AsSsize_t(%struct._object* %6, %struct._object* %7) #2, !dbg !1709
  call void @llvm.dbg.value(metadata i64 %call10, i64 0, metadata !588, metadata !786), !dbg !1710
  %cmp11 = icmp eq i64 %call10, -1, !dbg !1711
  br i1 %cmp11, label %land.lhs.true, label %if.end.23, !dbg !1713

land.lhs.true:                                    ; preds = %if.then.9
  %call13 = call %struct._object* @PyErr_Occurred() #2, !dbg !1714
  %tobool14 = icmp eq %struct._object* %call13, null, !dbg !1714
  br i1 %tobool14, label %if.then.26, label %cleanup, !dbg !1716

if.else:                                          ; preds = %if.end.6
  %cmp17 = icmp eq %struct._object* %6, @_Py_NoneStruct, !dbg !1717
  br i1 %cmp17, label %if.then.19, label %if.else.20, !dbg !1719

if.then.19:                                       ; preds = %if.else
  %pos = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 2, !dbg !1720
  %8 = load i64, i64* %pos, align 8, !dbg !1720, !tbaa !952
  call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !588, metadata !786), !dbg !1710
  br label %if.end.23

if.else.20:                                       ; preds = %if.else
  %9 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1722, !tbaa !929
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 1, !dbg !1724
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1724, !tbaa !837
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 1, !dbg !1725
  %11 = load i8*, i8** %tp_name, align 8, !dbg !1725, !tbaa !999
  %call21 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %9, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0), i8* %11) #2, !dbg !1726
  br label %cleanup, !dbg !1727

if.end.23:                                        ; preds = %if.then.9, %if.then.19
  %size.0 = phi i64 [ %call10, %if.then.9 ], [ %8, %if.then.19 ]
  %cmp24 = icmp slt i64 %size.0, 0, !dbg !1728
  br i1 %cmp24, label %if.then.26, label %if.end.28, !dbg !1730

if.then.26:                                       ; preds = %land.lhs.true, %if.end.23
  %size.060 = phi i64 [ %size.0, %if.end.23 ], [ -1, %land.lhs.true ]
  %12 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1731, !tbaa !929
  %call27 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0), i64 %size.060) #2, !dbg !1733
  br label %cleanup, !dbg !1734

if.end.28:                                        ; preds = %if.end.23
  %string_size = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 3, !dbg !1735
  %13 = load i64, i64* %string_size, align 8, !dbg !1735, !tbaa !954
  %cmp29 = icmp slt i64 %size.0, %13, !dbg !1737
  br i1 %cmp29, label %if.then.31, label %if.end.43, !dbg !1738

if.then.31:                                       ; preds = %if.end.28
  %call32 = call fastcc i32 @realize(%struct.stringio* %self), !dbg !1739
  %cmp33 = icmp slt i32 %call32, 0, !dbg !1739
  br i1 %cmp33, label %cleanup, label %if.end.36, !dbg !1742

if.end.36:                                        ; preds = %if.then.31
  call void @llvm.dbg.value(metadata %struct.stringio* %self, i64 0, metadata !515, metadata !786) #2, !dbg !1743
  call void @llvm.dbg.value(metadata i64 %size.0, i64 0, metadata !516, metadata !786) #2, !dbg !1746
  %buf_size.i = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 4, !dbg !1747
  %14 = load i64, i64* %buf_size.i, align 8, !dbg !1747, !tbaa !1196
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !517, metadata !786) #2, !dbg !1748
  call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !518, metadata !786) #2, !dbg !1749
  %add.i = add i64 %size.0, 1, !dbg !1750
  call void @llvm.dbg.value(metadata i64 %add.i, i64 0, metadata !516, metadata !786) #2, !dbg !1746
  %cmp.i = icmp slt i64 %add.i, 0, !dbg !1751
  br i1 %cmp.i, label %overflow.i, label %if.end.i, !dbg !1752

if.end.i:                                         ; preds = %if.end.36
  %div.i = lshr i64 %14, 1, !dbg !1753
  %cmp1.i = icmp ult i64 %add.i, %div.i, !dbg !1754
  br i1 %cmp1.i, label %if.then.2.i, label %if.else.i, !dbg !1755

if.then.2.i:                                      ; preds = %if.end.i
  %add3.i = add i64 %size.0, 2, !dbg !1756
  call void @llvm.dbg.value(metadata i64 %add3.i, i64 0, metadata !517, metadata !786) #2, !dbg !1748
  br label %if.end.20.i, !dbg !1757

if.else.i:                                        ; preds = %if.end.i
  %cmp4.i = icmp ult i64 %add.i, %14, !dbg !1758
  br i1 %cmp4.i, label %if.end.41, label %if.else.6.i, !dbg !1759

if.else.6.i:                                      ; preds = %if.else.i
  %conv.i = uitofp i64 %add.i to double, !dbg !1760
  %conv7.i = uitofp i64 %14 to double, !dbg !1761
  %mul.i = fmul double %conv7.i, 1.125000e+00, !dbg !1762
  %cmp8.i = fcmp ugt double %conv.i, %mul.i, !dbg !1763
  br i1 %cmp8.i, label %if.else.16.i, label %if.then.10.i, !dbg !1764

if.then.10.i:                                     ; preds = %if.else.6.i
  %shr.i = lshr i64 %add.i, 3, !dbg !1765
  %add11.i = add i64 %shr.i, %add.i, !dbg !1766
  %cmp12.i = icmp ult i64 %add.i, 9, !dbg !1767
  %conv14.i = select i1 %cmp12.i, i64 3, i64 6, !dbg !1768
  %add15.i = add i64 %add11.i, %conv14.i, !dbg !1769
  call void @llvm.dbg.value(metadata i64 %add15.i, i64 0, metadata !517, metadata !786) #2, !dbg !1748
  br label %if.end.20.i, !dbg !1770

if.else.16.i:                                     ; preds = %if.else.6.i
  %add17.i = add i64 %size.0, 2, !dbg !1771
  call void @llvm.dbg.value(metadata i64 %add17.i, i64 0, metadata !517, metadata !786) #2, !dbg !1748
  br label %if.end.20.i, !dbg !1772

if.end.20.i:                                      ; preds = %if.else.16.i, %if.then.10.i, %if.then.2.i
  %alloc.0.i = phi i64 [ %add3.i, %if.then.2.i ], [ %add15.i, %if.then.10.i ], [ %add17.i, %if.else.16.i ], !dbg !1772
  %cmp21.i = icmp ugt i64 %alloc.0.i, 4611686018427387903, !dbg !1773
  br i1 %cmp21.i, label %overflow.i, label %if.end.24.i, !dbg !1774

if.end.24.i:                                      ; preds = %if.end.20.i
  %buf.i = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 1, !dbg !1775
  %15 = bitcast i32** %buf.i to i8**, !dbg !1775
  %16 = load i8*, i8** %15, align 8, !dbg !1775, !tbaa !812
  %mul25.i = shl i64 %alloc.0.i, 2, !dbg !1776
  %call.i = call i8* @PyMem_Realloc(i8* %16, i64 %mul25.i) #2, !dbg !1777
  %cmp26.i = icmp eq i8* %call.i, null, !dbg !1778
  br i1 %cmp26.i, label %if.then.28.i, label %if.end.30.i, !dbg !1779

if.then.28.i:                                     ; preds = %if.end.24.i
  %call29.i = call %struct._object* @PyErr_NoMemory() #2, !dbg !1780
  br label %cleanup, !dbg !1781

if.end.30.i:                                      ; preds = %if.end.24.i
  store i64 %alloc.0.i, i64* %buf_size.i, align 8, !dbg !1782, !tbaa !1196
  store i8* %call.i, i8** %15, align 8, !dbg !1783, !tbaa !812
  br label %if.end.41, !dbg !1784

overflow.i:                                       ; preds = %if.end.20.i, %if.end.36
  %17 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !1785, !tbaa !929
  call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0)) #2, !dbg !1786
  br label %cleanup, !dbg !1787

if.end.41:                                        ; preds = %if.end.30.i, %if.else.i
  store i64 %size.0, i64* %string_size, align 8, !dbg !1788, !tbaa !954
  br label %if.end.43, !dbg !1789

if.end.43:                                        ; preds = %if.end.41, %if.end.28
  %call44 = call %struct._object* @PyLong_FromSsize_t(i64 %size.0) #2, !dbg !1790
  br label %cleanup, !dbg !1791

cleanup:                                          ; preds = %if.then.28.i, %overflow.i, %if.then.31, %land.lhs.true, %if.end, %if.end.43, %if.then.26, %if.else.20, %if.then.5, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ null, %if.then.5 ], [ null, %if.then.26 ], [ %call44, %if.end.43 ], [ null, %if.else.20 ], [ null, %if.end ], [ null, %land.lhs.true ], [ null, %if.then.31 ], [ null, %overflow.i ], [ null, %if.then.28.i ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1792
  ret %struct._object* %retval.0, !dbg !1792
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_seek(%struct.stringio* nocapture %self, %struct._object* %args) #0 {
entry:
  %pos = alloca i64, align 8
  %mode = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct.stringio* %self, i64 0, metadata !592, metadata !786), !dbg !1793
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !593, metadata !786), !dbg !1794
  %0 = bitcast i64* %pos to i8*, !dbg !1795
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1795
  %1 = bitcast i32* %mode to i8*, !dbg !1796
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !1796
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !595, metadata !786), !dbg !1797
  store i32 0, i32* %mode, align 4, !dbg !1797, !tbaa !966
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 7, !dbg !1798
  %2 = load i8, i8* %ok, align 1, !dbg !1798, !tbaa !805
  %cmp = icmp slt i8 %2, 1, !dbg !1798
  br i1 %cmp, label %if.then, label %if.end, !dbg !1800

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1801, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0)) #2, !dbg !1801
  br label %cleanup, !dbg !1804

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !594, metadata !786), !dbg !1805
  tail call void @llvm.dbg.value(metadata i32* %mode, i64 0, metadata !595, metadata !786), !dbg !1797
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i64* nonnull %pos, i32* nonnull %mode) #2, !dbg !1806
  %tobool = icmp eq i32 %call, 0, !dbg !1806
  br i1 %tobool, label %cleanup, label %if.end.3, !dbg !1808

if.end.3:                                         ; preds = %if.end
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 8, !dbg !1809
  %4 = load i8, i8* %closed, align 1, !dbg !1809, !tbaa !933
  %tobool4 = icmp eq i8 %4, 0, !dbg !1809
  br i1 %tobool4, label %if.end.6, label %if.then.5, !dbg !1811

if.then.5:                                        ; preds = %if.end.3
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1812, !tbaa !929
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0)) #2, !dbg !1812
  br label %cleanup, !dbg !1815

if.end.6:                                         ; preds = %if.end.3
  call void @llvm.dbg.value(metadata i32* %mode, i64 0, metadata !595, metadata !786), !dbg !1797
  %6 = load i32, i32* %mode, align 4, !dbg !1816, !tbaa !966
  %cmp7 = icmp ne i32 %6, 0, !dbg !1818
  %7 = icmp ugt i32 %6, 2, !dbg !1819
  br i1 %7, label %if.then.14, label %if.else, !dbg !1819

if.then.14:                                       ; preds = %if.end.6
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1820, !tbaa !929
  %call15 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i64 0, i64 0), i32 %6) #2, !dbg !1822
  br label %cleanup, !dbg !1823

if.else:                                          ; preds = %if.end.6
  call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !594, metadata !786), !dbg !1805
  %9 = load i64, i64* %pos, align 8, !dbg !1824, !tbaa !1826
  %cmp16 = icmp slt i64 %9, 0, !dbg !1827
  %cmp19 = icmp eq i32 %6, 0, !dbg !1828
  %or.cond48 = and i1 %cmp19, %cmp16, !dbg !1829
  br i1 %or.cond48, label %if.then.21, label %if.else.23, !dbg !1829

if.then.21:                                       ; preds = %if.else
  %10 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1830, !tbaa !929
  %call22 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0), i64 %9) #2, !dbg !1832
  br label %cleanup, !dbg !1833

if.else.23:                                       ; preds = %if.else
  %cmp27 = icmp ne i64 %9, 0, !dbg !1834
  %or.cond49 = and i1 %cmp7, %cmp27, !dbg !1836
  br i1 %or.cond49, label %if.then.29, label %if.end.32, !dbg !1836

if.then.29:                                       ; preds = %if.else.23
  %11 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !1837, !tbaa !929
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i64 0, i64 0)) #2, !dbg !1839
  br label %cleanup, !dbg !1840

if.end.32:                                        ; preds = %if.else.23
  switch i32 %6, label %if.end.42 [
    i32 1, label %if.then.35
    i32 2, label %if.then.40
  ], !dbg !1841

if.then.35:                                       ; preds = %if.end.32
  %pos36 = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 2, !dbg !1842
  %12 = load i64, i64* %pos36, align 8, !dbg !1842, !tbaa !952
  call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !594, metadata !786), !dbg !1805
  store i64 %12, i64* %pos, align 8, !dbg !1845, !tbaa !1826
  br label %if.end.42, !dbg !1846

if.then.40:                                       ; preds = %if.end.32
  %string_size = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 3, !dbg !1847
  %13 = load i64, i64* %string_size, align 8, !dbg !1847, !tbaa !954
  call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !594, metadata !786), !dbg !1805
  store i64 %13, i64* %pos, align 8, !dbg !1850, !tbaa !1826
  br label %if.end.42, !dbg !1851

if.end.42:                                        ; preds = %if.end.32, %if.then.40, %if.then.35
  %14 = phi i64 [ %9, %if.end.32 ], [ %13, %if.then.40 ], [ %12, %if.then.35 ], !dbg !1852
  call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !594, metadata !786), !dbg !1805
  %pos43 = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 2, !dbg !1853
  store i64 %14, i64* %pos43, align 8, !dbg !1854, !tbaa !952
  %call45 = call %struct._object* @PyLong_FromSsize_t(i64 %14) #2, !dbg !1855
  br label %cleanup, !dbg !1856

cleanup:                                          ; preds = %if.end, %if.end.42, %if.then.29, %if.then.21, %if.then.14, %if.then.5, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ null, %if.then.5 ], [ null, %if.then.14 ], [ null, %if.then.21 ], [ null, %if.then.29 ], [ %call45, %if.end.42 ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 4, i8* %1) #2, !dbg !1857
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1857
  ret %struct._object* %retval.0, !dbg !1857
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_write(%struct.stringio* %self, %struct._object* %obj) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.stringio* %self, i64 0, metadata !598, metadata !786), !dbg !1858
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !599, metadata !786), !dbg !1859
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 7, !dbg !1860
  %0 = load i8, i8* %ok, align 1, !dbg !1860, !tbaa !805
  %cmp = icmp slt i8 %0, 1, !dbg !1860
  br i1 %cmp, label %if.then, label %if.end, !dbg !1862

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1863, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0)) #2, !dbg !1863
  br label %cleanup, !dbg !1866

if.end:                                           ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %obj, i64 0, i32 1, !dbg !1867
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1867, !tbaa !837
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 19, !dbg !1867
  %3 = load i64, i64* %tp_flags, align 8, !dbg !1867, !tbaa !995
  %and = and i64 %3, 268435456, !dbg !1867
  %cmp2 = icmp eq i64 %and, 0, !dbg !1867
  br i1 %cmp2, label %if.then.4, label %if.end.6, !dbg !1869

if.then.4:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1870, !tbaa !929
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 1, !dbg !1872
  %5 = load i8*, i8** %tp_name, align 8, !dbg !1872, !tbaa !999
  %call = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0), i8* %5) #2, !dbg !1873
  br label %cleanup, !dbg !1874

if.end.6:                                         ; preds = %if.end
  %state = getelementptr inbounds %struct._object, %struct._object* %obj, i64 2, !dbg !1875
  %6 = bitcast %struct._object* %state to i32*, !dbg !1875
  %bf.load = load i32, i32* %6, align 4, !dbg !1875
  %bf.clear = and i32 %bf.load, 128, !dbg !1875
  %tobool = icmp eq i32 %bf.clear, 0, !dbg !1875
  br i1 %tobool, label %cond.false, label %if.end.10, !dbg !1875

cond.false:                                       ; preds = %if.end.6
  %call7 = tail call i32 @_PyUnicode_Ready(%struct._object* %obj) #2, !dbg !1877
  %phitmp = icmp eq i32 %call7, 0, !dbg !1877
  br i1 %phitmp, label %if.end.10, label %cleanup, !dbg !1879

if.end.10:                                        ; preds = %cond.false, %if.end.6
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 8, !dbg !1880
  %7 = load i8, i8* %closed, align 1, !dbg !1880, !tbaa !933
  %tobool11 = icmp eq i8 %7, 0, !dbg !1880
  br i1 %tobool11, label %if.end.13, label %if.then.12, !dbg !1882

if.then.12:                                       ; preds = %if.end.10
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1883, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0)) #2, !dbg !1883
  br label %cleanup, !dbg !1886

if.end.13:                                        ; preds = %if.end.10
  %9 = getelementptr inbounds %struct._object, %struct._object* %obj, i64 1, i32 0, !dbg !1887
  %10 = load i64, i64* %9, align 8, !dbg !1887, !tbaa !1013
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !600, metadata !786), !dbg !1888
  %cmp14 = icmp sgt i64 %10, 0, !dbg !1889
  br i1 %cmp14, label %land.lhs.true, label %if.end.20, !dbg !1891

land.lhs.true:                                    ; preds = %if.end.13
  %call16 = tail call fastcc i64 @write_str(%struct.stringio* %self, %struct._object* %obj), !dbg !1892
  %cmp17 = icmp slt i64 %call16, 0, !dbg !1893
  br i1 %cmp17, label %cleanup, label %if.end.20, !dbg !1894

if.end.20:                                        ; preds = %land.lhs.true, %if.end.13
  %call21 = tail call %struct._object* @PyLong_FromSsize_t(i64 %10) #2, !dbg !1895
  br label %cleanup, !dbg !1896

cleanup:                                          ; preds = %cond.false, %land.lhs.true, %if.end.20, %if.then.12, %if.then.4, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ null, %if.then.12 ], [ %call21, %if.end.20 ], [ null, %if.then.4 ], [ null, %cond.false ], [ null, %land.lhs.true ]
  ret %struct._object* %retval.0, !dbg !1897
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_seekable(%struct.stringio* nocapture readonly %self, %struct._object* nocapture readnone %args) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.stringio* %self, i64 0, metadata !627, metadata !786), !dbg !1898
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !628, metadata !786), !dbg !1899
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 7, !dbg !1900
  %0 = load i8, i8* %ok, align 1, !dbg !1900, !tbaa !805
  %cmp = icmp slt i8 %0, 1, !dbg !1900
  br i1 %cmp, label %if.then, label %if.end, !dbg !1902

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1903, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0)) #2, !dbg !1903
  br label %return, !dbg !1903

if.end:                                           ; preds = %entry
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 8, !dbg !1906
  %2 = load i8, i8* %closed, align 1, !dbg !1906, !tbaa !933
  %tobool = icmp eq i8 %2, 0, !dbg !1906
  br i1 %tobool, label %if.end.3, label %if.then.2, !dbg !1908

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1909, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0)) #2, !dbg !1909
  br label %return, !dbg !1909

if.end.3:                                         ; preds = %if.end
  %4 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1912, !tbaa !833
  %inc = add i64 %4, 1, !dbg !1912
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1912, !tbaa !833
  br label %return, !dbg !1912

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ null, %if.then.2 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %if.end.3 ]
  ret %struct._object* %retval.0, !dbg !1913
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_readable(%struct.stringio* nocapture readonly %self, %struct._object* nocapture readnone %args) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.stringio* %self, i64 0, metadata !631, metadata !786), !dbg !1914
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !632, metadata !786), !dbg !1915
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 7, !dbg !1916
  %0 = load i8, i8* %ok, align 1, !dbg !1916, !tbaa !805
  %cmp = icmp slt i8 %0, 1, !dbg !1916
  br i1 %cmp, label %if.then, label %if.end, !dbg !1918

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1919, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0)) #2, !dbg !1919
  br label %return, !dbg !1919

if.end:                                           ; preds = %entry
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 8, !dbg !1922
  %2 = load i8, i8* %closed, align 1, !dbg !1922, !tbaa !933
  %tobool = icmp eq i8 %2, 0, !dbg !1922
  br i1 %tobool, label %if.end.3, label %if.then.2, !dbg !1924

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1925, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0)) #2, !dbg !1925
  br label %return, !dbg !1925

if.end.3:                                         ; preds = %if.end
  %4 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1928, !tbaa !833
  %inc = add i64 %4, 1, !dbg !1928
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1928, !tbaa !833
  br label %return, !dbg !1928

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ null, %if.then.2 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %if.end.3 ]
  ret %struct._object* %retval.0, !dbg !1929
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_writable(%struct.stringio* nocapture readonly %self, %struct._object* nocapture readnone %args) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.stringio* %self, i64 0, metadata !635, metadata !786), !dbg !1930
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !636, metadata !786), !dbg !1931
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 7, !dbg !1932
  %0 = load i8, i8* %ok, align 1, !dbg !1932, !tbaa !805
  %cmp = icmp slt i8 %0, 1, !dbg !1932
  br i1 %cmp, label %if.then, label %if.end, !dbg !1934

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1935, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0)) #2, !dbg !1935
  br label %return, !dbg !1935

if.end:                                           ; preds = %entry
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 8, !dbg !1938
  %2 = load i8, i8* %closed, align 1, !dbg !1938, !tbaa !933
  %tobool = icmp eq i8 %2, 0, !dbg !1938
  br i1 %tobool, label %if.end.3, label %if.then.2, !dbg !1940

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1941, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0)) #2, !dbg !1941
  br label %return, !dbg !1941

if.end.3:                                         ; preds = %if.end
  %4 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1944, !tbaa !833
  %inc = add i64 %4, 1, !dbg !1944
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1944, !tbaa !833
  br label %return, !dbg !1944

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ null, %if.then.2 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %if.end.3 ]
  ret %struct._object* %retval.0, !dbg !1945
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_getstate(%struct.stringio* %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.stringio* %self, i64 0, metadata !639, metadata !786), !dbg !1946
  %call = tail call %struct._object* @stringio_getvalue(%struct.stringio* %self), !dbg !1947
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !640, metadata !786), !dbg !1948
  %cmp = icmp eq %struct._object* %call, null, !dbg !1949
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1951

if.end:                                           ; preds = %entry
  %dict1 = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 14, !dbg !1952
  %0 = load %struct._object*, %struct._object** %dict1, align 8, !dbg !1952, !tbaa !871
  %cmp2 = icmp eq %struct._object* %0, null, !dbg !1954
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !1955

if.then.3:                                        ; preds = %if.end
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1956, !tbaa !833
  %inc = add i64 %1, 1, !dbg !1956
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1956, !tbaa !833
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !641, metadata !786), !dbg !1958
  br label %if.end.9, !dbg !1959

if.else:                                          ; preds = %if.end
  %call5 = tail call %struct._object* @PyDict_Copy(%struct._object* %0) #2, !dbg !1960
  tail call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !641, metadata !786), !dbg !1958
  %cmp6 = icmp eq %struct._object* %call5, null, !dbg !1962
  br i1 %cmp6, label %cleanup, label %if.end.9, !dbg !1964

if.end.9:                                         ; preds = %if.else, %if.then.3
  %dict.0 = phi %struct._object* [ @_Py_NoneStruct, %if.then.3 ], [ %call5, %if.else ]
  %readnl = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 12, !dbg !1965
  %2 = load %struct._object*, %struct._object** %readnl, align 8, !dbg !1965, !tbaa !824
  %tobool = icmp eq %struct._object* %2, null, !dbg !1966
  %_Py_NoneStruct. = select i1 %tobool, %struct._object* @_Py_NoneStruct, %struct._object* %2, !dbg !1966
  %pos = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 2, !dbg !1967
  %3 = load i64, i64* %pos, align 8, !dbg !1967, !tbaa !952
  %call11 = tail call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), %struct._object* %call, %struct._object* %_Py_NoneStruct., i64 %3, %struct._object* %dict.0) #2, !dbg !1968
  tail call void @llvm.dbg.value(metadata %struct._object* %call11, i64 0, metadata !642, metadata !786), !dbg !1969
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !643, metadata !786), !dbg !1970
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1972
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !1972, !tbaa !833
  %dec = add i64 %4, -1, !dbg !1972
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1972, !tbaa !833
  %cmp12 = icmp eq i64 %dec, 0, !dbg !1972
  br i1 %cmp12, label %if.else.14, label %cleanup, !dbg !1974

if.else.14:                                       ; preds = %if.end.9
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1975
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1975, !tbaa !837
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !1975
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1975, !tbaa !838
  tail call void %6(%struct._object* %call) #2, !dbg !1975
  br label %cleanup

cleanup:                                          ; preds = %if.else.14, %if.end.9, %if.else, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.else ], [ %call11, %if.end.9 ], [ %call11, %if.else.14 ]
  ret %struct._object* %retval.0, !dbg !1977
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_setstate(%struct.stringio* %self, %struct._object* %state) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.stringio* %self, i64 0, metadata !647, metadata !786), !dbg !1978
  tail call void @llvm.dbg.value(metadata %struct._object* %state, i64 0, metadata !648, metadata !786), !dbg !1979
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 8, !dbg !1980
  %0 = load i8, i8* %closed, align 1, !dbg !1980, !tbaa !933
  %tobool = icmp eq i8 %0, 0, !dbg !1980
  br i1 %tobool, label %if.end, label %if.then, !dbg !1982

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1983, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0)) #2, !dbg !1983
  br label %cleanup.90, !dbg !1986

if.end:                                           ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %state, i64 0, i32 1, !dbg !1987
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1989, !tbaa !837
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 19, !dbg !1987
  %3 = load i64, i64* %tp_flags, align 8, !dbg !1987, !tbaa !995
  %and = and i64 %3, 67108864, !dbg !1987
  %cmp = icmp eq i64 %and, 0, !dbg !1987
  br i1 %cmp, label %if.then.2, label %lor.lhs.false, !dbg !1991

lor.lhs.false:                                    ; preds = %if.end
  %4 = getelementptr inbounds %struct._object, %struct._object* %state, i64 1, i32 0, !dbg !1992
  %5 = load i64, i64* %4, align 8, !dbg !1992, !tbaa !1994
  %cmp1 = icmp slt i64 %5, 4, !dbg !1995
  br i1 %cmp1, label %if.then.2, label %if.end.6, !dbg !1996

if.then.2:                                        ; preds = %if.end, %lor.lhs.false
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1997, !tbaa !929
  %ob_type3 = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 0, i32 1, !dbg !1998
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8, !dbg !1998, !tbaa !837
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 1, !dbg !1999
  %8 = load i8*, i8** %tp_name, align 8, !dbg !1999, !tbaa !999
  %tp_name5 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 1, !dbg !2000
  %9 = load i8*, i8** %tp_name5, align 8, !dbg !2000, !tbaa !999
  %call = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.30, i64 0, i64 0), i8* %8, i8* %9) #2, !dbg !2001
  br label %cleanup.90, !dbg !2002

if.end.6:                                         ; preds = %lor.lhs.false
  %call7 = tail call %struct._object* @PyTuple_GetSlice(%struct._object* %state, i64 0, i64 2) #2, !dbg !2003
  tail call void @llvm.dbg.value(metadata %struct._object* %call7, i64 0, metadata !649, metadata !786), !dbg !2004
  %cmp8 = icmp eq %struct._object* %call7, null, !dbg !2005
  br i1 %cmp8, label %cleanup.90, label %if.end.10, !dbg !2007

if.end.10:                                        ; preds = %if.end.6
  %call11 = tail call i32 @stringio_init(%struct.stringio* %self, %struct._object* %call7, %struct._object* null), !dbg !2008
  %cmp12 = icmp slt i32 %call11, 0, !dbg !2009
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call7, i64 0, i32 0, !dbg !2010
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !2010, !tbaa !833
  %dec = add i64 %10, -1, !dbg !2010
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2010, !tbaa !833
  %cmp14 = icmp eq i64 %dec, 0, !dbg !2010
  br i1 %cmp12, label %do.body, label %do.body.19, !dbg !2012

do.body:                                          ; preds = %if.end.10
  tail call void @llvm.dbg.value(metadata %struct._object* %call7, i64 0, metadata !653, metadata !786), !dbg !2013
  br i1 %cmp14, label %if.else, label %cleanup.90, !dbg !2015

if.else:                                          ; preds = %do.body
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %call7, i64 0, i32 1, !dbg !2016
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8, !dbg !2016, !tbaa !837
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !2016
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2016, !tbaa !838
  tail call void %12(%struct._object* %call7) #2, !dbg !2016
  br label %cleanup.90

do.body.19:                                       ; preds = %if.end.10
  tail call void @llvm.dbg.value(metadata %struct._object* %call7, i64 0, metadata !657, metadata !786), !dbg !2018
  br i1 %cmp14, label %if.else.25, label %if.end.28, !dbg !2020

if.else.25:                                       ; preds = %do.body.19
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %call7, i64 0, i32 1, !dbg !2021
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8, !dbg !2021, !tbaa !837
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !2021
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8, !dbg !2021, !tbaa !838
  tail call void %14(%struct._object* %call7) #2, !dbg !2021
  br label %if.end.28

if.end.28:                                        ; preds = %do.body.19, %if.else.25
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %state, i64 1, i32 1, !dbg !2024
  %arrayidx = bitcast %struct._typeobject** %ob_item to %struct._object**, !dbg !2024
  %15 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2024, !tbaa !929
  tail call void @llvm.dbg.value(metadata %struct._object* %15, i64 0, metadata !659, metadata !786), !dbg !2025
  %call31 = tail call i32* @PyUnicode_AsUCS4Copy(%struct._object* %15) #2, !dbg !2026
  tail call void @llvm.dbg.value(metadata i32* %call31, i64 0, metadata !661, metadata !786), !dbg !2027
  %cmp32 = icmp eq i32* %call31, null, !dbg !2028
  br i1 %cmp32, label %cleanup.90, label %if.end.34, !dbg !2030

if.end.34:                                        ; preds = %if.end.28
  %16 = getelementptr inbounds %struct._object, %struct._object* %15, i64 1, i32 0, !dbg !2031
  %17 = load i64, i64* %16, align 8, !dbg !2031, !tbaa !1013
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !662, metadata !786), !dbg !2032
  tail call void @llvm.dbg.value(metadata %struct.stringio* %self, i64 0, metadata !515, metadata !786) #2, !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !516, metadata !786) #2, !dbg !2036
  %buf_size.i = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 4, !dbg !2037
  %18 = load i64, i64* %buf_size.i, align 8, !dbg !2037, !tbaa !1196
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !517, metadata !786) #2, !dbg !2038
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !518, metadata !786) #2, !dbg !2039
  %add.i = add i64 %17, 1, !dbg !2040
  tail call void @llvm.dbg.value(metadata i64 %add.i, i64 0, metadata !516, metadata !786) #2, !dbg !2036
  %cmp.i = icmp slt i64 %add.i, 0, !dbg !2041
  br i1 %cmp.i, label %overflow.i, label %if.end.i, !dbg !2042

if.end.i:                                         ; preds = %if.end.34
  %div.i = lshr i64 %18, 1, !dbg !2043
  %cmp1.i = icmp ult i64 %add.i, %div.i, !dbg !2044
  br i1 %cmp1.i, label %if.then.2.i, label %if.else.i, !dbg !2045

if.then.2.i:                                      ; preds = %if.end.i
  %add3.i = add i64 %17, 2, !dbg !2046
  tail call void @llvm.dbg.value(metadata i64 %add3.i, i64 0, metadata !517, metadata !786) #2, !dbg !2038
  br label %if.end.20.i, !dbg !2047

if.else.i:                                        ; preds = %if.end.i
  %cmp4.i = icmp ult i64 %add.i, %18, !dbg !2048
  br i1 %cmp4.i, label %if.else.i.if.end.38_crit_edge, label %if.else.6.i, !dbg !2049

if.else.i.if.end.38_crit_edge:                    ; preds = %if.else.i
  %buf39.phi.trans.insert = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 1, !dbg !2050
  %.phi.trans.insert = bitcast i32** %buf39.phi.trans.insert to i8**, !dbg !2050
  %.pre = load i8*, i8** %.phi.trans.insert, align 8, !dbg !2050, !tbaa !812
  br label %if.end.38, !dbg !2049

if.else.6.i:                                      ; preds = %if.else.i
  %conv.i = uitofp i64 %add.i to double, !dbg !2051
  %conv7.i = uitofp i64 %18 to double, !dbg !2052
  %mul.i = fmul double %conv7.i, 1.125000e+00, !dbg !2053
  %cmp8.i = fcmp ugt double %conv.i, %mul.i, !dbg !2054
  br i1 %cmp8.i, label %if.else.16.i, label %if.then.10.i, !dbg !2055

if.then.10.i:                                     ; preds = %if.else.6.i
  %shr.i = lshr i64 %add.i, 3, !dbg !2056
  %add11.i = add i64 %shr.i, %add.i, !dbg !2057
  %cmp12.i = icmp ult i64 %add.i, 9, !dbg !2058
  %conv14.i = select i1 %cmp12.i, i64 3, i64 6, !dbg !2059
  %add15.i = add i64 %add11.i, %conv14.i, !dbg !2060
  tail call void @llvm.dbg.value(metadata i64 %add15.i, i64 0, metadata !517, metadata !786) #2, !dbg !2038
  br label %if.end.20.i, !dbg !2061

if.else.16.i:                                     ; preds = %if.else.6.i
  %add17.i = add i64 %17, 2, !dbg !2062
  tail call void @llvm.dbg.value(metadata i64 %add17.i, i64 0, metadata !517, metadata !786) #2, !dbg !2038
  br label %if.end.20.i, !dbg !2063

if.end.20.i:                                      ; preds = %if.else.16.i, %if.then.10.i, %if.then.2.i
  %alloc.0.i = phi i64 [ %add3.i, %if.then.2.i ], [ %add15.i, %if.then.10.i ], [ %add17.i, %if.else.16.i ], !dbg !2063
  %cmp21.i = icmp ugt i64 %alloc.0.i, 4611686018427387903, !dbg !2064
  br i1 %cmp21.i, label %overflow.i, label %if.end.24.i, !dbg !2065

if.end.24.i:                                      ; preds = %if.end.20.i
  %buf.i = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 1, !dbg !2066
  %19 = bitcast i32** %buf.i to i8**, !dbg !2066
  %20 = load i8*, i8** %19, align 8, !dbg !2066, !tbaa !812
  %mul25.i = shl i64 %alloc.0.i, 2, !dbg !2067
  %call.i = tail call i8* @PyMem_Realloc(i8* %20, i64 %mul25.i) #2, !dbg !2068
  %cmp26.i = icmp eq i8* %call.i, null, !dbg !2069
  br i1 %cmp26.i, label %if.then.28.i, label %if.end.30.i, !dbg !2070

if.then.28.i:                                     ; preds = %if.end.24.i
  %call29.i = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !2071
  br label %if.then.37, !dbg !2072

if.end.30.i:                                      ; preds = %if.end.24.i
  store i64 %alloc.0.i, i64* %buf_size.i, align 8, !dbg !2073, !tbaa !1196
  store i8* %call.i, i8** %19, align 8, !dbg !2074, !tbaa !812
  br label %if.end.38, !dbg !2075

overflow.i:                                       ; preds = %if.end.20.i, %if.end.34
  %21 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2076, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0)) #2, !dbg !2077
  br label %if.then.37, !dbg !2078

if.then.37:                                       ; preds = %overflow.i, %if.then.28.i
  %22 = bitcast i32* %call31 to i8*, !dbg !2079
  tail call void @PyMem_Free(i8* %22) #2, !dbg !2081
  br label %cleanup.90

if.end.38:                                        ; preds = %if.else.i.if.end.38_crit_edge, %if.end.30.i
  %23 = phi i8* [ %.pre, %if.else.i.if.end.38_crit_edge ], [ %call.i, %if.end.30.i ], !dbg !2050
  %24 = bitcast i32* %call31 to i8*, !dbg !2082
  %mul = shl i64 %17, 2, !dbg !2083
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 %mul, i32 4, i1 false), !dbg !2082
  tail call void @PyMem_Free(i8* %24) #2, !dbg !2084
  %string_size = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 3, !dbg !2085
  store i64 %17, i64* %string_size, align 8, !dbg !2086, !tbaa !954
  %arrayidx43 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item, i64 2, !dbg !2087
  %25 = bitcast %struct._typeobject** %arrayidx43 to %struct._object**, !dbg !2087
  %26 = load %struct._object*, %struct._object** %25, align 8, !dbg !2087, !tbaa !929
  tail call void @llvm.dbg.value(metadata %struct._object* %26, i64 0, metadata !650, metadata !786), !dbg !2088
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %26, i64 0, i32 1, !dbg !2089
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8, !dbg !2089, !tbaa !837
  %tp_flags45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i64 0, i32 19, !dbg !2089
  %28 = load i64, i64* %tp_flags45, align 8, !dbg !2089, !tbaa !995
  %and46 = and i64 %28, 16777216, !dbg !2089
  %cmp47 = icmp eq i64 %and46, 0, !dbg !2089
  br i1 %cmp47, label %if.then.48, label %if.end.52, !dbg !2091

if.then.48:                                       ; preds = %if.end.38
  %29 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2092, !tbaa !929
  %tp_name50 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i64 0, i32 1, !dbg !2094
  %30 = load i8*, i8** %tp_name50, align 8, !dbg !2094, !tbaa !999
  %call51 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %29, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.31, i64 0, i64 0), i8* %30) #2, !dbg !2095
  br label %cleanup.90, !dbg !2096

if.end.52:                                        ; preds = %if.end.38
  %call53 = tail call i64 @PyLong_AsSsize_t(%struct._object* %26) #2, !dbg !2097
  tail call void @llvm.dbg.value(metadata i64 %call53, i64 0, metadata !652, metadata !786), !dbg !2098
  %cmp54 = icmp eq i64 %call53, -1, !dbg !2099
  br i1 %cmp54, label %land.lhs.true, label %if.end.58, !dbg !2101

land.lhs.true:                                    ; preds = %if.end.52
  %call55 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2102
  %tobool56 = icmp eq %struct._object* %call55, null, !dbg !2102
  br i1 %tobool56, label %if.then.60, label %cleanup.90, !dbg !2104

if.end.58:                                        ; preds = %if.end.52
  %cmp59 = icmp slt i64 %call53, 0, !dbg !2105
  br i1 %cmp59, label %if.then.60, label %if.end.61, !dbg !2107

if.then.60:                                       ; preds = %land.lhs.true, %if.end.58
  %31 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2108, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i64 0, i64 0)) #2, !dbg !2110
  br label %cleanup.90, !dbg !2111

if.end.61:                                        ; preds = %if.end.58
  %pos62 = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 2, !dbg !2112
  store i64 %call53, i64* %pos62, align 8, !dbg !2113, !tbaa !952
  %arrayidx64 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item, i64 3, !dbg !2114
  %32 = bitcast %struct._typeobject** %arrayidx64 to %struct._object**, !dbg !2114
  %33 = load %struct._object*, %struct._object** %32, align 8, !dbg !2114, !tbaa !929
  tail call void @llvm.dbg.value(metadata %struct._object* %33, i64 0, metadata !651, metadata !786), !dbg !2115
  %cmp65 = icmp eq %struct._object* %33, @_Py_NoneStruct, !dbg !2116
  br i1 %cmp65, label %if.end.88, label %if.then.66, !dbg !2118

if.then.66:                                       ; preds = %if.end.61
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %33, i64 0, i32 1, !dbg !2119
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8, !dbg !2119, !tbaa !837
  %tp_flags68 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i64 0, i32 19, !dbg !2119
  %35 = load i64, i64* %tp_flags68, align 8, !dbg !2119, !tbaa !995
  %and69 = and i64 %35, 536870912, !dbg !2119
  %cmp70 = icmp eq i64 %and69, 0, !dbg !2119
  br i1 %cmp70, label %if.then.71, label %if.end.75, !dbg !2122

if.then.71:                                       ; preds = %if.then.66
  %36 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2123, !tbaa !929
  %tp_name73 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i64 0, i32 1, !dbg !2125
  %37 = load i8*, i8** %tp_name73, align 8, !dbg !2125, !tbaa !999
  %call74 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %36, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.33, i64 0, i64 0), i8* %37) #2, !dbg !2126
  br label %cleanup.90, !dbg !2127

if.end.75:                                        ; preds = %if.then.66
  %dict76 = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 14, !dbg !2128
  %38 = load %struct._object*, %struct._object** %dict76, align 8, !dbg !2128, !tbaa !871
  %tobool77 = icmp eq %struct._object* %38, null, !dbg !2130
  br i1 %tobool77, label %if.else.84, label %if.then.78, !dbg !2131

if.then.78:                                       ; preds = %if.end.75
  %call80 = tail call i32 @PyDict_Update(%struct._object* %38, %struct._object* %33) #2, !dbg !2132
  %cmp81 = icmp slt i32 %call80, 0, !dbg !2135
  br i1 %cmp81, label %cleanup.90, label %if.end.88, !dbg !2136

if.else.84:                                       ; preds = %if.end.75
  %ob_refcnt85 = getelementptr inbounds %struct._object, %struct._object* %33, i64 0, i32 0, !dbg !2137
  %39 = load i64, i64* %ob_refcnt85, align 8, !dbg !2137, !tbaa !833
  %inc = add i64 %39, 1, !dbg !2137
  store i64 %inc, i64* %ob_refcnt85, align 8, !dbg !2137, !tbaa !833
  store %struct._object* %33, %struct._object** %dict76, align 8, !dbg !2139, !tbaa !871
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.61, %if.else.84, %if.then.78
  %40 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2140, !tbaa !833
  %inc89 = add i64 %40, 1, !dbg !2140
  store i64 %inc89, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2140, !tbaa !833
  br label %cleanup.90, !dbg !2140

cleanup.90:                                       ; preds = %if.then.78, %land.lhs.true, %if.end.28, %if.then.37, %if.else, %do.body, %if.end.6, %if.end.88, %if.then.71, %if.then.60, %if.then.48, %if.then.2, %if.then
  %retval.1 = phi %struct._object* [ null, %if.then ], [ null, %if.then.2 ], [ null, %if.then.60 ], [ @_Py_NoneStruct, %if.end.88 ], [ null, %if.then.71 ], [ null, %if.then.48 ], [ null, %if.end.6 ], [ null, %do.body ], [ null, %if.else ], [ null, %if.then.37 ], [ null, %if.end.28 ], [ null, %land.lhs.true ], [ null, %if.then.78 ]
  ret %struct._object* %retval.1, !dbg !2141
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
define internal fastcc i64 @write_str(%struct.stringio* %self, %struct._object* %obj) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.stringio* %self, i64 0, metadata !605, metadata !786), !dbg !2142
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !606, metadata !786), !dbg !2143
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !608, metadata !786), !dbg !2144
  %decoder = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 11, !dbg !2145
  %0 = load %struct._object*, %struct._object** %decoder, align 8, !dbg !2145, !tbaa !857
  %cmp = icmp eq %struct._object* %0, null, !dbg !2147
  br i1 %cmp, label %if.else, label %if.then, !dbg !2148

if.then:                                          ; preds = %entry
  %call = tail call %struct._object* @_PyIncrementalNewlineDecoder_decode(%struct._object* %0, %struct._object* %obj, i32 1) #2, !dbg !2149
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !608, metadata !786), !dbg !2144
  br label %if.end, !dbg !2151

if.else:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !608, metadata !786), !dbg !2144
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %obj, i64 0, i32 0, !dbg !2152
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !2152, !tbaa !833
  %inc = add i64 %1, 1, !dbg !2152
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2152, !tbaa !833
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %decoded.0 = phi %struct._object* [ %call, %if.then ], [ %obj, %if.else ]
  %writenl = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 13, !dbg !2154
  %2 = load %struct._object*, %struct._object** %writenl, align 8, !dbg !2154, !tbaa !843
  %tobool = icmp eq %struct._object* %2, null, !dbg !2155
  br i1 %tobool, label %if.end.10, label %if.then.2, !dbg !2156

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @_PyIO_str_nl, align 8, !dbg !2157, !tbaa !929
  %call4 = tail call %struct._object* @PyUnicode_Replace(%struct._object* %decoded.0, %struct._object* %3, %struct._object* %2, i64 -1) #2, !dbg !2158
  tail call void @llvm.dbg.value(metadata %struct._object* %call4, i64 0, metadata !609, metadata !786), !dbg !2159
  tail call void @llvm.dbg.value(metadata %struct._object* %decoded.0, i64 0, metadata !612, metadata !786), !dbg !2160
  %ob_refcnt5 = getelementptr inbounds %struct._object, %struct._object* %decoded.0, i64 0, i32 0, !dbg !2162
  %4 = load i64, i64* %ob_refcnt5, align 8, !dbg !2162, !tbaa !833
  %dec = add i64 %4, -1, !dbg !2162
  store i64 %dec, i64* %ob_refcnt5, align 8, !dbg !2162, !tbaa !833
  %cmp6 = icmp eq i64 %dec, 0, !dbg !2162
  br i1 %cmp6, label %if.else.8, label %if.end.10, !dbg !2164

if.else.8:                                        ; preds = %if.then.2
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %decoded.0, i64 0, i32 1, !dbg !2165
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2165, !tbaa !837
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !2165
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2165, !tbaa !838
  tail call void %6(%struct._object* %decoded.0) #2, !dbg !2165
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.2, %if.end
  %decoded.1 = phi %struct._object* [ %decoded.0, %if.end ], [ %call4, %if.then.2 ], [ %call4, %if.else.8 ]
  %cmp11 = icmp eq %struct._object* %decoded.1, null, !dbg !2167
  br i1 %cmp11, label %cleanup, label %if.end.13, !dbg !2169

if.end.13:                                        ; preds = %if.end.10
  %state = getelementptr inbounds %struct._object, %struct._object* %decoded.1, i64 2, !dbg !2170
  %7 = bitcast %struct._object* %state to i32*, !dbg !2170
  %bf.load = load i32, i32* %7, align 4, !dbg !2170
  %bf.clear = and i32 %bf.load, 128, !dbg !2170
  %tobool14 = icmp eq i32 %bf.clear, 0, !dbg !2170
  br i1 %tobool14, label %cond.false, label %if.end.30, !dbg !2170

cond.false:                                       ; preds = %if.end.13
  %call15 = tail call i32 @_PyUnicode_Ready(%struct._object* %decoded.1) #2, !dbg !2171
  %phitmp = icmp eq i32 %call15, 0, !dbg !2171
  br i1 %phitmp, label %if.end.30, label %do.body.18, !dbg !2173

do.body.18:                                       ; preds = %cond.false
  tail call void @llvm.dbg.value(metadata %struct._object* %decoded.1, i64 0, metadata !614, metadata !786), !dbg !2174
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %decoded.1, i64 0, i32 0, !dbg !2176
  %8 = load i64, i64* %ob_refcnt20, align 8, !dbg !2176, !tbaa !833
  %dec21 = add i64 %8, -1, !dbg !2176
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !2176, !tbaa !833
  %cmp22 = icmp eq i64 %dec21, 0, !dbg !2176
  br i1 %cmp22, label %if.else.24, label %cleanup, !dbg !2178

if.else.24:                                       ; preds = %do.body.18
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %decoded.1, i64 0, i32 1, !dbg !2179
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !2179, !tbaa !837
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 4, !dbg !2179
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !2179, !tbaa !838
  tail call void %10(%struct._object* %decoded.1) #2, !dbg !2179
  br label %cleanup

if.end.30:                                        ; preds = %cond.false, %if.end.13
  %11 = getelementptr inbounds %struct._object, %struct._object* %decoded.1, i64 1, i32 0, !dbg !2181
  %12 = load i64, i64* %11, align 8, !dbg !2181, !tbaa !1013
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !607, metadata !786), !dbg !2182
  %pos = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 2, !dbg !2183
  %13 = load i64, i64* %pos, align 8, !dbg !2183, !tbaa !952
  %sub = sub i64 9223372036854775807, %12, !dbg !2185
  %cmp31 = icmp sgt i64 %13, %sub, !dbg !2186
  br i1 %cmp31, label %if.then.32, label %if.end.33, !dbg !2187

if.then.32:                                       ; preds = %if.end.30
  %14 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2188, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0)) #2, !dbg !2190
  br label %do.body.103, !dbg !2191

if.end.33:                                        ; preds = %if.end.30
  %state34 = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 5, !dbg !2192
  %15 = load i32, i32* %state34, align 4, !dbg !2192, !tbaa !1227
  %cmp35 = icmp eq i32 %15, 2, !dbg !2194
  %string_size = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 3, !dbg !2195
  br i1 %cmp35, label %if.then.36, label %if.end.49, !dbg !2198

if.then.36:                                       ; preds = %if.end.33
  %16 = load i64, i64* %string_size, align 8, !dbg !2195, !tbaa !954
  %cmp38 = icmp eq i64 %16, %13, !dbg !2199
  br i1 %cmp38, label %if.then.39, label %if.end.44, !dbg !2200

if.then.39:                                       ; preds = %if.then.36
  %accu = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 6, !dbg !2201
  %call40 = tail call i32 @_PyAccu_Accumulate(%struct._PyAccu* %accu, %struct._object* %decoded.1) #2, !dbg !2204
  %tobool41 = icmp eq i32 %call40, 0, !dbg !2204
  br i1 %tobool41, label %success, label %do.body.103, !dbg !2205

if.end.44:                                        ; preds = %if.then.36
  %call45 = tail call fastcc i32 @realize(%struct.stringio* %self), !dbg !2206
  %tobool46 = icmp eq i32 %call45, 0, !dbg !2206
  br i1 %tobool46, label %if.end.44.if.end.49_crit_edge, label %do.body.103, !dbg !2208

if.end.44.if.end.49_crit_edge:                    ; preds = %if.end.44
  %.pre = load i64, i64* %pos, align 8, !dbg !2209, !tbaa !952
  br label %if.end.49, !dbg !2208

if.end.49:                                        ; preds = %if.end.33, %if.end.44.if.end.49_crit_edge
  %17 = phi i64 [ %.pre, %if.end.44.if.end.49_crit_edge ], [ %13, %if.end.33 ], !dbg !2209
  %add = add i64 %17, %12, !dbg !2211
  %18 = load i64, i64* %string_size, align 8, !dbg !2212, !tbaa !954
  %cmp52 = icmp sgt i64 %add, %18, !dbg !2213
  br i1 %cmp52, label %if.then.53, label %if.end.60, !dbg !2214

if.then.53:                                       ; preds = %if.end.49
  tail call void @llvm.dbg.value(metadata %struct.stringio* %self, i64 0, metadata !515, metadata !786) #2, !dbg !2215
  tail call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !516, metadata !786) #2, !dbg !2219
  %buf_size.i = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 4, !dbg !2220
  %19 = load i64, i64* %buf_size.i, align 8, !dbg !2220, !tbaa !1196
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !517, metadata !786) #2, !dbg !2221
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !518, metadata !786) #2, !dbg !2222
  %add.i = add i64 %add, 1, !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %add.i, i64 0, metadata !516, metadata !786) #2, !dbg !2219
  %cmp.i = icmp slt i64 %add.i, 0, !dbg !2224
  br i1 %cmp.i, label %overflow.i, label %if.end.i, !dbg !2225

if.end.i:                                         ; preds = %if.then.53
  %div.i = lshr i64 %19, 1, !dbg !2226
  %cmp1.i = icmp ult i64 %add.i, %div.i, !dbg !2227
  br i1 %cmp1.i, label %if.then.2.i, label %if.else.i, !dbg !2228

if.then.2.i:                                      ; preds = %if.end.i
  %add3.i = add i64 %add, 2, !dbg !2229
  tail call void @llvm.dbg.value(metadata i64 %add3.i, i64 0, metadata !517, metadata !786) #2, !dbg !2221
  br label %if.end.20.i, !dbg !2230

if.else.i:                                        ; preds = %if.end.i
  %cmp4.i = icmp ult i64 %add.i, %19, !dbg !2231
  br i1 %cmp4.i, label %if.end.60, label %if.else.6.i, !dbg !2232

if.else.6.i:                                      ; preds = %if.else.i
  %conv.i = uitofp i64 %add.i to double, !dbg !2233
  %conv7.i = uitofp i64 %19 to double, !dbg !2234
  %mul.i = fmul double %conv7.i, 1.125000e+00, !dbg !2235
  %cmp8.i = fcmp ugt double %conv.i, %mul.i, !dbg !2236
  br i1 %cmp8.i, label %if.else.16.i, label %if.then.10.i, !dbg !2237

if.then.10.i:                                     ; preds = %if.else.6.i
  %shr.i = lshr i64 %add.i, 3, !dbg !2238
  %add11.i = add i64 %shr.i, %add.i, !dbg !2239
  %cmp12.i = icmp ult i64 %add.i, 9, !dbg !2240
  %conv14.i = select i1 %cmp12.i, i64 3, i64 6, !dbg !2241
  %add15.i = add i64 %add11.i, %conv14.i, !dbg !2242
  tail call void @llvm.dbg.value(metadata i64 %add15.i, i64 0, metadata !517, metadata !786) #2, !dbg !2221
  br label %if.end.20.i, !dbg !2243

if.else.16.i:                                     ; preds = %if.else.6.i
  %add17.i = add i64 %add, 2, !dbg !2244
  tail call void @llvm.dbg.value(metadata i64 %add17.i, i64 0, metadata !517, metadata !786) #2, !dbg !2221
  br label %if.end.20.i, !dbg !2245

if.end.20.i:                                      ; preds = %if.else.16.i, %if.then.10.i, %if.then.2.i
  %alloc.0.i = phi i64 [ %add3.i, %if.then.2.i ], [ %add15.i, %if.then.10.i ], [ %add17.i, %if.else.16.i ], !dbg !2245
  %cmp21.i = icmp ugt i64 %alloc.0.i, 4611686018427387903, !dbg !2246
  br i1 %cmp21.i, label %overflow.i, label %if.end.24.i, !dbg !2247

if.end.24.i:                                      ; preds = %if.end.20.i
  %buf.i = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 1, !dbg !2248
  %20 = bitcast i32** %buf.i to i8**, !dbg !2248
  %21 = load i8*, i8** %20, align 8, !dbg !2248, !tbaa !812
  %mul25.i = shl i64 %alloc.0.i, 2, !dbg !2249
  %call.i = tail call i8* @PyMem_Realloc(i8* %21, i64 %mul25.i) #2, !dbg !2250
  %cmp26.i = icmp eq i8* %call.i, null, !dbg !2251
  br i1 %cmp26.i, label %if.then.28.i, label %if.end.30.i, !dbg !2252

if.then.28.i:                                     ; preds = %if.end.24.i
  %call29.i = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !2253
  br label %do.body.103, !dbg !2254

if.end.30.i:                                      ; preds = %if.end.24.i
  store i64 %alloc.0.i, i64* %buf_size.i, align 8, !dbg !2255, !tbaa !1196
  store i8* %call.i, i8** %20, align 8, !dbg !2256, !tbaa !812
  %.pre182 = load i64, i64* %pos, align 8, !dbg !2257, !tbaa !952
  %.pre183 = load i64, i64* %string_size, align 8, !dbg !2259, !tbaa !954
  br label %if.end.60, !dbg !2260

overflow.i:                                       ; preds = %if.end.20.i, %if.then.53
  %22 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2261, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0)) #2, !dbg !2262
  br label %do.body.103, !dbg !2263

if.end.60:                                        ; preds = %if.else.i, %if.end.30.i, %if.end.49
  %23 = phi i64 [ %18, %if.else.i ], [ %.pre183, %if.end.30.i ], [ %18, %if.end.49 ], !dbg !2259
  %24 = phi i64 [ %17, %if.else.i ], [ %.pre182, %if.end.30.i ], [ %17, %if.end.49 ], !dbg !2257
  %cmp63 = icmp sgt i64 %24, %23, !dbg !2264
  %buf = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 1, !dbg !2265
  br i1 %cmp63, label %if.then.64, label %if.end.69, !dbg !2267

if.then.64:                                       ; preds = %if.end.60
  %25 = load i32*, i32** %buf, align 8, !dbg !2265, !tbaa !812
  %add.ptr = getelementptr i32, i32* %25, i64 %23, !dbg !2268
  %26 = bitcast i32* %add.ptr to i8*, !dbg !2269
  %sub68 = sub i64 %24, %23, !dbg !2270
  %mul = shl i64 %sub68, 2, !dbg !2271
  tail call void @llvm.memset.p0i8.i64(i8* %26, i8 0, i64 %mul, i32 4, i1 false), !dbg !2269
  %.pre184 = load i64, i64* %pos, align 8, !dbg !2272, !tbaa !952
  br label %if.end.69, !dbg !2274

if.end.69:                                        ; preds = %if.end.60, %if.then.64
  %27 = phi i64 [ %.pre184, %if.then.64 ], [ %24, %if.end.60 ], !dbg !2272
  %28 = load i32*, i32** %buf, align 8, !dbg !2275, !tbaa !812
  %add.ptr72 = getelementptr i32, i32* %28, i64 %27, !dbg !2276
  %buf_size = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 4, !dbg !2277
  %29 = load i64, i64* %buf_size, align 8, !dbg !2277, !tbaa !1196
  %sub74 = sub i64 %29, %27, !dbg !2278
  %call75 = tail call i32* @PyUnicode_AsUCS4(%struct._object* %decoded.1, i32* %add.ptr72, i64 %sub74, i32 0) #2, !dbg !2279
  %tobool76 = icmp eq i32* %call75, null, !dbg !2279
  br i1 %tobool76, label %do.body.103, label %success, !dbg !2280

success:                                          ; preds = %if.then.39, %if.end.69
  %30 = load i64, i64* %pos, align 8, !dbg !2281, !tbaa !952
  %add80 = add i64 %30, %12, !dbg !2281
  store i64 %add80, i64* %pos, align 8, !dbg !2281, !tbaa !952
  %31 = load i64, i64* %string_size, align 8, !dbg !2282, !tbaa !954
  %cmp83 = icmp slt i64 %31, %add80, !dbg !2284
  br i1 %cmp83, label %if.then.84, label %do.body.88, !dbg !2285

if.then.84:                                       ; preds = %success
  store i64 %add80, i64* %string_size, align 8, !dbg !2286, !tbaa !954
  br label %do.body.88, !dbg !2287

do.body.88:                                       ; preds = %success, %if.then.84
  tail call void @llvm.dbg.value(metadata %struct._object* %decoded.1, i64 0, metadata !618, metadata !786), !dbg !2288
  %ob_refcnt90 = getelementptr inbounds %struct._object, %struct._object* %decoded.1, i64 0, i32 0, !dbg !2290
  %32 = load i64, i64* %ob_refcnt90, align 8, !dbg !2290, !tbaa !833
  %dec91 = add i64 %32, -1, !dbg !2290
  store i64 %dec91, i64* %ob_refcnt90, align 8, !dbg !2290, !tbaa !833
  %cmp92 = icmp eq i64 %dec91, 0, !dbg !2290
  br i1 %cmp92, label %if.else.94, label %cleanup, !dbg !2292

if.else.94:                                       ; preds = %do.body.88
  %ob_type95 = getelementptr inbounds %struct._object, %struct._object* %decoded.1, i64 0, i32 1, !dbg !2293
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type95, align 8, !dbg !2293, !tbaa !837
  %tp_dealloc96 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i64 0, i32 4, !dbg !2293
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc96, align 8, !dbg !2293, !tbaa !838
  tail call void %34(%struct._object* %decoded.1) #2, !dbg !2293
  br label %cleanup

do.body.103:                                      ; preds = %if.then.28.i, %overflow.i, %if.then.32, %if.end.69, %if.end.44, %if.then.39
  tail call void @llvm.dbg.value(metadata %struct._object* %decoded.1, i64 0, metadata !620, metadata !786), !dbg !2295
  tail call void @llvm.dbg.value(metadata %struct._object* %decoded.1, i64 0, metadata !622, metadata !786), !dbg !2297
  %ob_refcnt105 = getelementptr inbounds %struct._object, %struct._object* %decoded.1, i64 0, i32 0, !dbg !2299
  %35 = load i64, i64* %ob_refcnt105, align 8, !dbg !2299, !tbaa !833
  %dec106 = add i64 %35, -1, !dbg !2299
  store i64 %dec106, i64* %ob_refcnt105, align 8, !dbg !2299, !tbaa !833
  %cmp107 = icmp eq i64 %dec106, 0, !dbg !2299
  br i1 %cmp107, label %if.else.109, label %cleanup, !dbg !2301

if.else.109:                                      ; preds = %do.body.103
  %ob_type110 = getelementptr inbounds %struct._object, %struct._object* %decoded.1, i64 0, i32 1, !dbg !2302
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type110, align 8, !dbg !2302, !tbaa !837
  %tp_dealloc111 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i64 0, i32 4, !dbg !2302
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc111, align 8, !dbg !2302, !tbaa !838
  tail call void %37(%struct._object* %decoded.1) #2, !dbg !2302
  br label %cleanup

cleanup:                                          ; preds = %do.body.103, %if.else.109, %if.else.94, %do.body.88, %if.else.24, %do.body.18, %if.end.10
  %retval.0 = phi i64 [ -1, %if.end.10 ], [ -1, %do.body.18 ], [ -1, %if.else.24 ], [ 0, %do.body.88 ], [ 0, %if.else.94 ], [ -1, %if.else.109 ], [ -1, %do.body.103 ]
  ret i64 %retval.0, !dbg !2304
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
define internal %struct._object* @stringio_closed(%struct.stringio* nocapture readonly %self, i8* nocapture readnone %context) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.stringio* %self, i64 0, metadata !667, metadata !786), !dbg !2305
  tail call void @llvm.dbg.value(metadata i8* %context, i64 0, metadata !668, metadata !786), !dbg !2306
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 7, !dbg !2307
  %0 = load i8, i8* %ok, align 1, !dbg !2307, !tbaa !805
  %cmp = icmp slt i8 %0, 1, !dbg !2307
  br i1 %cmp, label %if.then, label %if.end, !dbg !2309

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2310, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0)) #2, !dbg !2310
  br label %return, !dbg !2310

if.end:                                           ; preds = %entry
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 8, !dbg !2313
  %2 = load i8, i8* %closed, align 1, !dbg !2313, !tbaa !933
  %conv2 = sext i8 %2 to i64, !dbg !2314
  %call = tail call %struct._object* @PyBool_FromLong(i64 %conv2) #2, !dbg !2315
  br label %return, !dbg !2316

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %call, %if.end ]
  ret %struct._object* %retval.0, !dbg !2317
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_newlines(%struct.stringio* nocapture readonly %self, i8* nocapture readnone %context) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.stringio* %self, i64 0, metadata !671, metadata !786), !dbg !2318
  tail call void @llvm.dbg.value(metadata i8* %context, i64 0, metadata !672, metadata !786), !dbg !2319
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 7, !dbg !2320
  %0 = load i8, i8* %ok, align 1, !dbg !2320, !tbaa !805
  %cmp = icmp slt i8 %0, 1, !dbg !2320
  br i1 %cmp, label %if.then, label %if.end, !dbg !2322

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2323, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0)) #2, !dbg !2323
  br label %return, !dbg !2323

if.end:                                           ; preds = %entry
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 8, !dbg !2326
  %2 = load i8, i8* %closed, align 1, !dbg !2326, !tbaa !933
  %tobool = icmp eq i8 %2, 0, !dbg !2326
  br i1 %tobool, label %if.end.3, label %if.then.2, !dbg !2328

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2329, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0)) #2, !dbg !2329
  br label %return, !dbg !2329

if.end.3:                                         ; preds = %if.end
  %decoder = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 11, !dbg !2332
  %4 = load %struct._object*, %struct._object** %decoder, align 8, !dbg !2332, !tbaa !857
  %cmp4 = icmp eq %struct._object* %4, null, !dbg !2334
  br i1 %cmp4, label %if.then.6, label %if.end.7, !dbg !2335

if.then.6:                                        ; preds = %if.end.3
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2336, !tbaa !833
  %inc = add i64 %5, 1, !dbg !2336
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2336, !tbaa !833
  br label %return, !dbg !2336

if.end.7:                                         ; preds = %if.end.3
  %6 = load %struct._object*, %struct._object** @_PyIO_str_newlines, align 8, !dbg !2337, !tbaa !929
  %call = tail call %struct._object* @PyObject_GetAttr(%struct._object* %4, %struct._object* %6) #2, !dbg !2338
  br label %return, !dbg !2339

return:                                           ; preds = %if.end.7, %if.then.6, %if.then.2, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ null, %if.then.2 ], [ @_Py_NoneStruct, %if.then.6 ], [ %call, %if.end.7 ]
  ret %struct._object* %retval.0, !dbg !2340
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringio_line_buffering(%struct.stringio* nocapture readonly %self, i8* nocapture readnone %context) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.stringio* %self, i64 0, metadata !675, metadata !786), !dbg !2341
  tail call void @llvm.dbg.value(metadata i8* %context, i64 0, metadata !676, metadata !786), !dbg !2342
  %ok = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 7, !dbg !2343
  %0 = load i8, i8* %ok, align 1, !dbg !2343, !tbaa !805
  %cmp = icmp slt i8 %0, 1, !dbg !2343
  br i1 %cmp, label %if.then, label %if.end, !dbg !2345

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2346, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0)) #2, !dbg !2346
  br label %return, !dbg !2346

if.end:                                           ; preds = %entry
  %closed = getelementptr inbounds %struct.stringio, %struct.stringio* %self, i64 0, i32 8, !dbg !2349
  %2 = load i8, i8* %closed, align 1, !dbg !2349, !tbaa !933
  %tobool = icmp eq i8 %2, 0, !dbg !2349
  br i1 %tobool, label %if.end.3, label %if.then.2, !dbg !2351

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2352, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0)) #2, !dbg !2352
  br label %return, !dbg !2352

if.end.3:                                         ; preds = %if.end
  %4 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !2355, !tbaa !833
  %inc = add i64 %4, 1, !dbg !2355
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !2355, !tbaa !833
  br label %return, !dbg !2355

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ null, %if.then.2 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.end.3 ]
  ret %struct._object* %retval.0, !dbg !2356
}

declare %struct._object* @PyBool_FromLong(i64) #3

declare %struct._object* @PyObject_GetAttr(%struct._object*, %struct._object*) #3

declare i32 @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object*, %struct._object*, i8*, i8**, ...) #3

declare i8* @PyUnicode_AsUTF8(%struct._object*) #3

declare %struct._object* @PyUnicode_FromString(i8*) #3

declare %struct._object* @_PyObject_CallFunction_SizeT(%struct._object*, i8*, ...) #3

declare i64 @PyUnicode_GetLength(%struct._object*) #3

declare i8* @PyMem_Malloc(i64) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!783, !784}
!llvm.ident = !{!785}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !10, subprograms: !426, globals: !724)
!1 = !DIFile(filename: "./Modules/_io/stringio.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "PyUnicode_Kind", file: !4, line: 451, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/unicodeobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "PyUnicode_WCHAR_KIND", value: 0)
!7 = !DIEnumerator(name: "PyUnicode_1BYTE_KIND", value: 1)
!8 = !DIEnumerator(name: "PyUnicode_2BYTE_KIND", value: 2)
!9 = !DIEnumerator(name: "PyUnicode_4BYTE_KIND", value: 4)
!10 = !{!11, !32, !35, !113, !371, !23, !389, !75, !391, !392, !67, !400}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGC_Head", file: !13, line: 253, baseType: !14)
!13 = !DIFile(filename: "Include/objimpl.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!24 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !26, line: 102, baseType: !27)
!26 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !28, line: 181, baseType: !29)
!28 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!29 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !14, file: !13, line: 252, baseType: !31, size: 64, align: 64)
!31 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 62, baseType: !34)
!33 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!34 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !37, line: 109, baseType: !38)
!37 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!71 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!302 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!303 = !{!304, !305, !307, !308}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !301, file: !302, line: 41, baseType: !52, size: 64, align: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !301, file: !302, line: 42, baseType: !306, size: 64, align: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !302, line: 18, baseType: !146)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !301, file: !302, line: 43, baseType: !67, size: 32, align: 32, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !301, file: !302, line: 45, baseType: !52, size: 64, align: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !43, file: !37, line: 390, baseType: !310, size: 64, align: 64, offset: 1920)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !312, line: 18, size: 320, align: 64, elements: !313)
!312 = !DIFile(filename: "Include/structmember.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!313 = !{!314, !315, !316, !317, !318}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !311, file: !312, line: 19, baseType: !75, size: 64, align: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !311, file: !312, line: 20, baseType: !67, size: 32, align: 32, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !311, file: !312, line: 21, baseType: !23, size: 64, align: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !311, file: !312, line: 22, baseType: !67, size: 32, align: 32, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !311, file: !312, line: 23, baseType: !75, size: 64, align: 64, offset: 256)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !43, file: !37, line: 391, baseType: !320, size: 64, align: 64, offset: 1984)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!321 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !322, line: 11, size: 320, align: 64, elements: !323)
!322 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!394 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!395 = !DICompositeType(tag: DW_TAG_structure_type, file: !394, line: 25, size: 256, align: 64, elements: !396)
!396 = !{!397, !398}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !395, file: !394, line: 26, baseType: !46, size: 192, align: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !395, file: !394, line: 27, baseType: !399, size: 64, align: 64, offset: 192)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 64, align: 64, elements: !105)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64, align: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "stringio", file: !1, line: 40, baseType: !402)
!402 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 14, size: 960, align: 64, elements: !403)
!403 = !{!404, !405, !406, !407, !408, !409, !410, !417, !418, !419, !420, !421, !422, !423, !424, !425}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !402, file: !1, line: 15, baseType: !36, size: 128, align: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !402, file: !1, line: 16, baseType: !389, size: 64, align: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !402, file: !1, line: 17, baseType: !23, size: 64, align: 64, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "string_size", scope: !402, file: !1, line: 18, baseType: !23, size: 64, align: 64, offset: 256)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !402, file: !1, line: 19, baseType: !32, size: 64, align: 64, offset: 320)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !402, file: !1, line: 27, baseType: !67, size: 32, align: 32, offset: 384)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "accu", scope: !402, file: !1, line: 28, baseType: !411, size: 128, align: 64, offset: 448)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "_PyAccu", file: !412, line: 24, baseType: !413)
!412 = !DIFile(filename: "Include/accu.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!413 = !DICompositeType(tag: DW_TAG_structure_type, file: !412, line: 21, size: 128, align: 64, elements: !414)
!414 = !{!415, !416}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "large", scope: !413, file: !412, line: 22, baseType: !35, size: 64, align: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "small", scope: !413, file: !412, line: 23, baseType: !35, size: 64, align: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "ok", scope: !402, file: !1, line: 30, baseType: !54, size: 8, align: 8, offset: 576)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "closed", scope: !402, file: !1, line: 31, baseType: !54, size: 8, align: 8, offset: 584)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "readuniversal", scope: !402, file: !1, line: 32, baseType: !54, size: 8, align: 8, offset: 592)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "readtranslate", scope: !402, file: !1, line: 33, baseType: !54, size: 8, align: 8, offset: 600)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "decoder", scope: !402, file: !1, line: 34, baseType: !35, size: 64, align: 64, offset: 640)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "readnl", scope: !402, file: !1, line: 35, baseType: !35, size: 64, align: 64, offset: 704)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "writenl", scope: !402, file: !1, line: 36, baseType: !35, size: 64, align: 64, offset: 768)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !402, file: !1, line: 38, baseType: !35, size: 64, align: 64, offset: 832)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "weakreflist", scope: !402, file: !1, line: 39, baseType: !35, size: 64, align: 64, offset: 896)
!426 = !{!427, !458, !469, !480, !496, !511, !519, !530, !551, !554, !562, !575, !581, !584, !590, !596, !601, !625, !629, !633, !637, !645, !663, !669, !673, !677, !710}
!427 = !DISubprogram(name: "stringio_dealloc", scope: !1, file: !1, line: 607, type: !428, isLocal: true, isDefinition: true, scopeLine: 608, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.stringio*)* @stringio_dealloc, variables: !430)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !400}
!430 = !{!431, !432, !434, !436, !440, !442, !446, !448, !452, !454}
!431 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !427, file: !1, line: 607, type: !400)
!432 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !433, file: !1, line: 609, type: !11)
!433 = distinct !DILexicalBlock(scope: !427, file: !1, line: 609, column: 5)
!434 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !435, file: !1, line: 616, type: !35)
!435 = distinct !DILexicalBlock(scope: !427, file: !1, line: 616, column: 5)
!436 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !437, file: !1, line: 616, type: !35)
!437 = distinct !DILexicalBlock(scope: !438, file: !1, line: 616, column: 5)
!438 = distinct !DILexicalBlock(scope: !439, file: !1, line: 616, column: 5)
!439 = distinct !DILexicalBlock(scope: !435, file: !1, line: 616, column: 5)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !441, file: !1, line: 617, type: !35)
!441 = distinct !DILexicalBlock(scope: !427, file: !1, line: 617, column: 5)
!442 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !443, file: !1, line: 617, type: !35)
!443 = distinct !DILexicalBlock(scope: !444, file: !1, line: 617, column: 5)
!444 = distinct !DILexicalBlock(scope: !445, file: !1, line: 617, column: 5)
!445 = distinct !DILexicalBlock(scope: !441, file: !1, line: 617, column: 5)
!446 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !447, file: !1, line: 618, type: !35)
!447 = distinct !DILexicalBlock(scope: !427, file: !1, line: 618, column: 5)
!448 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !449, file: !1, line: 618, type: !35)
!449 = distinct !DILexicalBlock(scope: !450, file: !1, line: 618, column: 5)
!450 = distinct !DILexicalBlock(scope: !451, file: !1, line: 618, column: 5)
!451 = distinct !DILexicalBlock(scope: !447, file: !1, line: 618, column: 5)
!452 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !453, file: !1, line: 619, type: !35)
!453 = distinct !DILexicalBlock(scope: !427, file: !1, line: 619, column: 5)
!454 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !455, file: !1, line: 619, type: !35)
!455 = distinct !DILexicalBlock(scope: !456, file: !1, line: 619, column: 5)
!456 = distinct !DILexicalBlock(scope: !457, file: !1, line: 619, column: 5)
!457 = distinct !DILexicalBlock(scope: !453, file: !1, line: 619, column: 5)
!458 = !DISubprogram(name: "stringio_traverse", scope: !1, file: !1, line: 593, type: !459, isLocal: true, isDefinition: true, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.stringio*, i32 (%struct._object*, i8*)*, i8*)* @stringio_traverse, variables: !461)
!459 = !DISubroutineType(types: !460)
!460 = !{!67, !400, !284, !113}
!461 = !{!462, !463, !464, !465}
!462 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !458, file: !1, line: 593, type: !400)
!463 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !458, file: !1, line: 593, type: !284)
!464 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !458, file: !1, line: 593, type: !113)
!465 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !466, file: !1, line: 595, type: !67)
!466 = distinct !DILexicalBlock(scope: !467, file: !1, line: 595, column: 5)
!467 = distinct !DILexicalBlock(scope: !468, file: !1, line: 595, column: 5)
!468 = distinct !DILexicalBlock(scope: !458, file: !1, line: 595, column: 5)
!469 = !DISubprogram(name: "stringio_clear", scope: !1, file: !1, line: 600, type: !470, isLocal: true, isDefinition: true, scopeLine: 601, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.stringio*)* @stringio_clear, variables: !472)
!470 = !DISubroutineType(types: !471)
!471 = !{!67, !400}
!472 = !{!473, !474, !476}
!473 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !469, file: !1, line: 600, type: !400)
!474 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !475, file: !1, line: 602, type: !35)
!475 = distinct !DILexicalBlock(scope: !469, file: !1, line: 602, column: 5)
!476 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !477, file: !1, line: 602, type: !35)
!477 = distinct !DILexicalBlock(scope: !478, file: !1, line: 602, column: 5)
!478 = distinct !DILexicalBlock(scope: !479, file: !1, line: 602, column: 5)
!479 = distinct !DILexicalBlock(scope: !475, file: !1, line: 602, column: 5)
!480 = !DISubprogram(name: "stringio_iternext", scope: !1, file: !1, line: 407, type: !481, isLocal: true, isDefinition: true, scopeLine: 408, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*)* @stringio_iternext, variables: !483)
!481 = !DISubroutineType(types: !482)
!482 = !{!35, !400}
!483 = !{!484, !485, !486, !492}
!484 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !480, file: !1, line: 407, type: !400)
!485 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "line", scope: !480, file: !1, line: 409, type: !35)
!486 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !487, file: !1, line: 427, type: !35)
!487 = distinct !DILexicalBlock(scope: !488, file: !1, line: 427, column: 13)
!488 = distinct !DILexicalBlock(scope: !489, file: !1, line: 423, column: 45)
!489 = distinct !DILexicalBlock(scope: !490, file: !1, line: 423, column: 13)
!490 = distinct !DILexicalBlock(scope: !491, file: !1, line: 419, column: 10)
!491 = distinct !DILexicalBlock(scope: !480, file: !1, line: 415, column: 9)
!492 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !493, file: !1, line: 437, type: !35)
!493 = distinct !DILexicalBlock(scope: !494, file: !1, line: 437, column: 9)
!494 = distinct !DILexicalBlock(scope: !495, file: !1, line: 435, column: 42)
!495 = distinct !DILexicalBlock(scope: !480, file: !1, line: 435, column: 9)
!496 = !DISubprogram(name: "realize", scope: !1, file: !1, line: 140, type: !470, isLocal: true, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.stringio*)* @realize, variables: !497)
!497 = !{!498, !499, !500, !501, !505, !509}
!498 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !496, file: !1, line: 140, type: !400)
!499 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !496, file: !1, line: 142, type: !23)
!500 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "intermediate", scope: !496, file: !1, line: 143, type: !35)
!501 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !502, file: !1, line: 159, type: !35)
!502 = distinct !DILexicalBlock(scope: !503, file: !1, line: 159, column: 9)
!503 = distinct !DILexicalBlock(scope: !504, file: !1, line: 158, column: 39)
!504 = distinct !DILexicalBlock(scope: !496, file: !1, line: 158, column: 9)
!505 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !506, file: !1, line: 163, type: !35)
!506 = distinct !DILexicalBlock(scope: !507, file: !1, line: 163, column: 9)
!507 = distinct !DILexicalBlock(scope: !508, file: !1, line: 162, column: 61)
!508 = distinct !DILexicalBlock(scope: !496, file: !1, line: 162, column: 9)
!509 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !510, file: !1, line: 167, type: !35)
!510 = distinct !DILexicalBlock(scope: !496, file: !1, line: 167, column: 5)
!511 = !DISubprogram(name: "resize_buffer", scope: !1, file: !1, line: 72, type: !512, isLocal: true, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, variables: !514)
!512 = !DISubroutineType(types: !513)
!513 = !{!67, !400, !32}
!514 = !{!515, !516, !517, !518}
!515 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !511, file: !1, line: 72, type: !400)
!516 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !511, file: !1, line: 72, type: !32)
!517 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alloc", scope: !511, file: !1, line: 76, type: !32)
!518 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_buf", scope: !511, file: !1, line: 77, type: !389)
!519 = !DISubprogram(name: "_stringio_readline", scope: !1, file: !1, line: 348, type: !520, isLocal: true, isDefinition: true, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: true, variables: !522)
!520 = !DISubroutineType(types: !521)
!521 = !{!35, !400, !23}
!522 = !{!523, !524, !525, !526, !527, !528, !529}
!523 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !519, file: !1, line: 348, type: !400)
!524 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "limit", arg: 2, scope: !519, file: !1, line: 348, type: !23)
!525 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !519, file: !1, line: 350, type: !389)
!526 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end", scope: !519, file: !1, line: 350, type: !389)
!527 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old_char", scope: !519, file: !1, line: 350, type: !390)
!528 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !519, file: !1, line: 351, type: !23)
!529 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "consumed", scope: !519, file: !1, line: 351, type: !23)
!530 = !DISubprogram(name: "stringio_close", scope: !1, file: !1, line: 579, type: !481, isLocal: true, isDefinition: true, scopeLine: 580, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*)* @stringio_close, variables: !531)
!531 = !{!532, !533, !535, !539, !541, !545, !547}
!532 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !530, file: !1, line: 579, type: !400)
!533 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !534, file: !1, line: 586, type: !35)
!534 = distinct !DILexicalBlock(scope: !530, file: !1, line: 586, column: 5)
!535 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !536, file: !1, line: 586, type: !35)
!536 = distinct !DILexicalBlock(scope: !537, file: !1, line: 586, column: 5)
!537 = distinct !DILexicalBlock(scope: !538, file: !1, line: 586, column: 5)
!538 = distinct !DILexicalBlock(scope: !534, file: !1, line: 586, column: 5)
!539 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !540, file: !1, line: 587, type: !35)
!540 = distinct !DILexicalBlock(scope: !530, file: !1, line: 587, column: 5)
!541 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !542, file: !1, line: 587, type: !35)
!542 = distinct !DILexicalBlock(scope: !543, file: !1, line: 587, column: 5)
!543 = distinct !DILexicalBlock(scope: !544, file: !1, line: 587, column: 5)
!544 = distinct !DILexicalBlock(scope: !540, file: !1, line: 587, column: 5)
!545 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !546, file: !1, line: 588, type: !35)
!546 = distinct !DILexicalBlock(scope: !530, file: !1, line: 588, column: 5)
!547 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !548, file: !1, line: 588, type: !35)
!548 = distinct !DILexicalBlock(scope: !549, file: !1, line: 588, column: 5)
!549 = distinct !DILexicalBlock(scope: !550, file: !1, line: 588, column: 5)
!550 = distinct !DILexicalBlock(scope: !546, file: !1, line: 588, column: 5)
!551 = !DISubprogram(name: "stringio_getvalue", scope: !1, file: !1, line: 271, type: !481, isLocal: true, isDefinition: true, scopeLine: 272, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*)* @stringio_getvalue, variables: !552)
!552 = !{!553}
!553 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !551, file: !1, line: 271, type: !400)
!554 = !DISubprogram(name: "make_intermediate", scope: !1, file: !1, line: 124, type: !481, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, variables: !555)
!555 = !{!556, !557, !558}
!556 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !554, file: !1, line: 124, type: !400)
!557 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "intermediate", scope: !554, file: !1, line: 126, type: !35)
!558 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !559, file: !1, line: 132, type: !35)
!559 = distinct !DILexicalBlock(scope: !560, file: !1, line: 132, column: 9)
!560 = distinct !DILexicalBlock(scope: !561, file: !1, line: 131, column: 56)
!561 = distinct !DILexicalBlock(scope: !554, file: !1, line: 130, column: 9)
!562 = !DISubprogram(name: "stringio_read", scope: !1, file: !1, line: 299, type: !563, isLocal: true, isDefinition: true, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*, %struct._object*)* @stringio_read, variables: !565)
!563 = !DISubroutineType(types: !564)
!564 = !{!35, !400, !35}
!565 = !{!566, !567, !568, !569, !570, !571, !572}
!566 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !562, file: !1, line: 299, type: !400)
!567 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !562, file: !1, line: 299, type: !35)
!568 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !562, file: !1, line: 301, type: !23)
!569 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !562, file: !1, line: 301, type: !23)
!570 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "output", scope: !562, file: !1, line: 302, type: !389)
!571 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !562, file: !1, line: 303, type: !35)
!572 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !573, file: !1, line: 335, type: !35)
!573 = distinct !DILexicalBlock(scope: !574, file: !1, line: 334, column: 75)
!574 = distinct !DILexicalBlock(scope: !562, file: !1, line: 334, column: 9)
!575 = !DISubprogram(name: "stringio_readline", scope: !1, file: !1, line: 382, type: !563, isLocal: true, isDefinition: true, scopeLine: 383, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*, %struct._object*)* @stringio_readline, variables: !576)
!576 = !{!577, !578, !579, !580}
!577 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !575, file: !1, line: 382, type: !400)
!578 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !575, file: !1, line: 382, type: !35)
!579 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !575, file: !1, line: 384, type: !35)
!580 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "limit", scope: !575, file: !1, line: 385, type: !23)
!581 = !DISubprogram(name: "stringio_tell", scope: !1, file: !1, line: 285, type: !481, isLocal: true, isDefinition: true, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*)* @stringio_tell, variables: !582)
!582 = !{!583}
!583 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !581, file: !1, line: 285, type: !400)
!584 = !DISubprogram(name: "stringio_truncate", scope: !1, file: !1, line: 452, type: !563, isLocal: true, isDefinition: true, scopeLine: 453, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*, %struct._object*)* @stringio_truncate, variables: !585)
!585 = !{!586, !587, !588, !589}
!586 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !584, file: !1, line: 452, type: !400)
!587 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !584, file: !1, line: 452, type: !35)
!588 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !584, file: !1, line: 454, type: !23)
!589 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !584, file: !1, line: 455, type: !35)
!590 = !DISubprogram(name: "stringio_seek", scope: !1, file: !1, line: 503, type: !563, isLocal: true, isDefinition: true, scopeLine: 504, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*, %struct._object*)* @stringio_seek, variables: !591)
!591 = !{!592, !593, !594, !595}
!592 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !590, file: !1, line: 503, type: !400)
!593 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !590, file: !1, line: 503, type: !35)
!594 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !590, file: !1, line: 505, type: !23)
!595 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !590, file: !1, line: 506, type: !67)
!596 = !DISubprogram(name: "stringio_write", scope: !1, file: !1, line: 551, type: !563, isLocal: true, isDefinition: true, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*, %struct._object*)* @stringio_write, variables: !597)
!597 = !{!598, !599, !600}
!598 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !596, file: !1, line: 551, type: !400)
!599 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !596, file: !1, line: 551, type: !35)
!600 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !596, file: !1, line: 553, type: !23)
!601 = !DISubprogram(name: "write_str", scope: !1, file: !1, line: 174, type: !602, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.stringio*, %struct._object*)* @write_str, variables: !604)
!602 = !DISubroutineType(types: !603)
!603 = !{!23, !400, !35}
!604 = !{!605, !606, !607, !608, !609, !612, !614, !618, !620, !622}
!605 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !601, file: !1, line: 174, type: !400)
!606 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !601, file: !1, line: 174, type: !35)
!607 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !601, file: !1, line: 176, type: !23)
!608 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decoded", scope: !601, file: !1, line: 177, type: !35)
!609 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "translated", scope: !610, file: !1, line: 191, type: !35)
!610 = distinct !DILexicalBlock(scope: !611, file: !1, line: 190, column: 24)
!611 = distinct !DILexicalBlock(scope: !601, file: !1, line: 190, column: 9)
!612 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !613, file: !1, line: 193, type: !35)
!613 = distinct !DILexicalBlock(scope: !610, file: !1, line: 193, column: 9)
!614 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !615, file: !1, line: 201, type: !35)
!615 = distinct !DILexicalBlock(scope: !616, file: !1, line: 201, column: 9)
!616 = distinct !DILexicalBlock(scope: !617, file: !1, line: 200, column: 35)
!617 = distinct !DILexicalBlock(scope: !601, file: !1, line: 200, column: 9)
!618 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !619, file: !1, line: 259, type: !35)
!619 = distinct !DILexicalBlock(scope: !601, file: !1, line: 259, column: 5)
!620 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !621, file: !1, line: 263, type: !35)
!621 = distinct !DILexicalBlock(scope: !601, file: !1, line: 263, column: 5)
!622 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !623, file: !1, line: 263, type: !35)
!623 = distinct !DILexicalBlock(scope: !624, file: !1, line: 263, column: 5)
!624 = distinct !DILexicalBlock(scope: !621, file: !1, line: 263, column: 5)
!625 = !DISubprogram(name: "stringio_seekable", scope: !1, file: !1, line: 774, type: !563, isLocal: true, isDefinition: true, scopeLine: 775, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*, %struct._object*)* @stringio_seekable, variables: !626)
!626 = !{!627, !628}
!627 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !625, file: !1, line: 774, type: !400)
!628 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !625, file: !1, line: 774, type: !35)
!629 = !DISubprogram(name: "stringio_readable", scope: !1, file: !1, line: 782, type: !563, isLocal: true, isDefinition: true, scopeLine: 783, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*, %struct._object*)* @stringio_readable, variables: !630)
!630 = !{!631, !632}
!631 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !629, file: !1, line: 782, type: !400)
!632 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !629, file: !1, line: 782, type: !35)
!633 = !DISubprogram(name: "stringio_writable", scope: !1, file: !1, line: 790, type: !563, isLocal: true, isDefinition: true, scopeLine: 791, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*, %struct._object*)* @stringio_writable, variables: !634)
!634 = !{!635, !636}
!635 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !633, file: !1, line: 790, type: !400)
!636 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !633, file: !1, line: 790, type: !35)
!637 = !DISubprogram(name: "stringio_getstate", scope: !1, file: !1, line: 810, type: !481, isLocal: true, isDefinition: true, scopeLine: 811, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*)* @stringio_getstate, variables: !638)
!638 = !{!639, !640, !641, !642, !643}
!639 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !637, file: !1, line: 810, type: !400)
!640 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initvalue", scope: !637, file: !1, line: 812, type: !35)
!641 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !637, file: !1, line: 813, type: !35)
!642 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "state", scope: !637, file: !1, line: 814, type: !35)
!643 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !644, file: !1, line: 831, type: !35)
!644 = distinct !DILexicalBlock(scope: !637, file: !1, line: 831, column: 5)
!645 = !DISubprogram(name: "stringio_setstate", scope: !1, file: !1, line: 836, type: !563, isLocal: true, isDefinition: true, scopeLine: 837, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*, %struct._object*)* @stringio_setstate, variables: !646)
!646 = !{!647, !648, !649, !650, !651, !652, !653, !657, !659, !661, !662}
!647 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !645, file: !1, line: 836, type: !400)
!648 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 2, scope: !645, file: !1, line: 836, type: !35)
!649 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initarg", scope: !645, file: !1, line: 838, type: !35)
!650 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "position_obj", scope: !645, file: !1, line: 839, type: !35)
!651 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !645, file: !1, line: 840, type: !35)
!652 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !645, file: !1, line: 841, type: !23)
!653 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !654, file: !1, line: 861, type: !35)
!654 = distinct !DILexicalBlock(scope: !655, file: !1, line: 861, column: 9)
!655 = distinct !DILexicalBlock(scope: !656, file: !1, line: 860, column: 49)
!656 = distinct !DILexicalBlock(scope: !645, file: !1, line: 860, column: 9)
!657 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !658, file: !1, line: 864, type: !35)
!658 = distinct !DILexicalBlock(scope: !645, file: !1, line: 864, column: 5)
!659 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !660, file: !1, line: 873, type: !35)
!660 = distinct !DILexicalBlock(scope: !645, file: !1, line: 872, column: 5)
!661 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !660, file: !1, line: 874, type: !389)
!662 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bufsize", scope: !660, file: !1, line: 875, type: !23)
!663 = !DISubprogram(name: "stringio_closed", scope: !1, file: !1, line: 938, type: !664, isLocal: true, isDefinition: true, scopeLine: 939, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*, i8*)* @stringio_closed, variables: !666)
!664 = !DISubroutineType(types: !665)
!665 = !{!35, !400, !113}
!666 = !{!667, !668}
!667 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !663, file: !1, line: 938, type: !400)
!668 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "context", arg: 2, scope: !663, file: !1, line: 938, type: !113)
!669 = !DISubprogram(name: "stringio_newlines", scope: !1, file: !1, line: 953, type: !664, isLocal: true, isDefinition: true, scopeLine: 954, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*, i8*)* @stringio_newlines, variables: !670)
!670 = !{!671, !672}
!671 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !669, file: !1, line: 953, type: !400)
!672 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "context", arg: 2, scope: !669, file: !1, line: 953, type: !113)
!673 = !DISubprogram(name: "stringio_line_buffering", scope: !1, file: !1, line: 945, type: !664, isLocal: true, isDefinition: true, scopeLine: 946, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.stringio*, i8*)* @stringio_line_buffering, variables: !674)
!674 = !{!675, !676}
!675 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !673, file: !1, line: 945, type: !400)
!676 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "context", arg: 2, scope: !673, file: !1, line: 945, type: !113)
!677 = !DISubprogram(name: "stringio_init", scope: !1, file: !1, line: 648, type: !678, isLocal: true, isDefinition: true, scopeLine: 649, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.stringio*, %struct._object*, %struct._object*)* @stringio_init, variables: !680)
!678 = !DISubroutineType(types: !679)
!679 = !{!67, !400, !35, !35}
!680 = !{!681, !682, !683, !684, !688, !689, !690, !691, !692, !694, !698, !700, !704, !706}
!681 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !677, file: !1, line: 648, type: !400)
!682 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !677, file: !1, line: 648, type: !35)
!683 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !677, file: !1, line: 648, type: !35)
!684 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kwlist", scope: !677, file: !1, line: 650, type: !685)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 192, align: 64, elements: !686)
!686 = !{!687}
!687 = !DISubrange(count: 3)
!688 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !677, file: !1, line: 651, type: !35)
!689 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newline_obj", scope: !677, file: !1, line: 652, type: !35)
!690 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newline", scope: !677, file: !1, line: 653, type: !75)
!691 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value_len", scope: !677, file: !1, line: 654, type: !23)
!692 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !693, file: !1, line: 697, type: !35)
!693 = distinct !DILexicalBlock(scope: !677, file: !1, line: 697, column: 5)
!694 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !695, file: !1, line: 697, type: !35)
!695 = distinct !DILexicalBlock(scope: !696, file: !1, line: 697, column: 5)
!696 = distinct !DILexicalBlock(scope: !697, file: !1, line: 697, column: 5)
!697 = distinct !DILexicalBlock(scope: !693, file: !1, line: 697, column: 5)
!698 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !699, file: !1, line: 698, type: !35)
!699 = distinct !DILexicalBlock(scope: !677, file: !1, line: 698, column: 5)
!700 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !701, file: !1, line: 698, type: !35)
!701 = distinct !DILexicalBlock(scope: !702, file: !1, line: 698, column: 5)
!702 = distinct !DILexicalBlock(scope: !703, file: !1, line: 698, column: 5)
!703 = distinct !DILexicalBlock(scope: !699, file: !1, line: 698, column: 5)
!704 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !705, file: !1, line: 699, type: !35)
!705 = distinct !DILexicalBlock(scope: !677, file: !1, line: 699, column: 5)
!706 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !707, file: !1, line: 699, type: !35)
!707 = distinct !DILexicalBlock(scope: !708, file: !1, line: 699, column: 5)
!708 = distinct !DILexicalBlock(scope: !709, file: !1, line: 699, column: 5)
!709 = distinct !DILexicalBlock(scope: !705, file: !1, line: 699, column: 5)
!710 = !DISubprogram(name: "stringio_new", scope: !1, file: !1, line: 626, type: !711, isLocal: true, isDefinition: true, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @stringio_new, variables: !715)
!711 = !DISubroutineType(types: !712)
!712 = !{!35, !713, !35, !35}
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64, align: 64)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !37, line: 422, baseType: !43)
!715 = !{!716, !717, !718, !719, !720}
!716 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !710, file: !1, line: 626, type: !713)
!717 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !710, file: !1, line: 626, type: !35)
!718 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !710, file: !1, line: 626, type: !35)
!719 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !710, file: !1, line: 628, type: !400)
!720 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !721, file: !1, line: 640, type: !35)
!721 = distinct !DILexicalBlock(scope: !722, file: !1, line: 640, column: 9)
!722 = distinct !DILexicalBlock(scope: !723, file: !1, line: 639, column: 28)
!723 = distinct !DILexicalBlock(scope: !710, file: !1, line: 639, column: 9)
!724 = !{!725, !726, !730, !734, !738, !742, !746, !750, !754, !758, !762, !766, !770, !774, !778}
!725 = !DIGlobalVariable(name: "PyStringIO_Type", scope: !0, file: !1, line: 994, type: !714, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyStringIO_Type)
!726 = !DIGlobalVariable(name: "stringio_doc", scope: !0, file: !1, line: 61, type: !727, isLocal: true, isDefinition: true, variable: [175 x i8]* @stringio_doc)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 1400, align: 8, elements: !728)
!728 = !{!729}
!729 = !DISubrange(count: 175)
!730 = !DIGlobalVariable(name: "stringio_methods", scope: !0, file: !1, line: 962, type: !731, isLocal: true, isDefinition: true, variable: [14 x %struct.PyMethodDef]* @stringio_methods)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 3584, align: 64, elements: !732)
!732 = !{!733}
!733 = !DISubrange(count: 14)
!734 = !DIGlobalVariable(name: "stringio_close_doc", scope: !0, file: !1, line: 572, type: !735, isLocal: true, isDefinition: true, variable: [165 x i8]* @stringio_close_doc)
!735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 1320, align: 8, elements: !736)
!736 = !{!737}
!737 = !DISubrange(count: 165)
!738 = !DIGlobalVariable(name: "stringio_getvalue_doc", scope: !0, file: !1, line: 267, type: !739, isLocal: true, isDefinition: true, variable: [44 x i8]* @stringio_getvalue_doc)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 352, align: 8, elements: !740)
!740 = !{!741}
!741 = !DISubrange(count: 44)
!742 = !DIGlobalVariable(name: "stringio_read_doc", scope: !0, file: !1, line: 292, type: !743, isLocal: true, isDefinition: true, variable: [149 x i8]* @stringio_read_doc)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 1192, align: 8, elements: !744)
!744 = !{!745}
!745 = !DISubrange(count: 149)
!746 = !DIGlobalVariable(name: "stringio_readline_doc", scope: !0, file: !1, line: 376, type: !747, isLocal: true, isDefinition: true, variable: [80 x i8]* @stringio_readline_doc)
!747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 640, align: 8, elements: !748)
!748 = !{!749}
!749 = !DISubrange(count: 80)
!750 = !DIGlobalVariable(name: "stringio_tell_doc", scope: !0, file: !1, line: 281, type: !751, isLocal: true, isDefinition: true, variable: [32 x i8]* @stringio_tell_doc)
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 256, align: 8, elements: !752)
!752 = !{!753}
!753 = !DISubrange(count: 32)
!754 = !DIGlobalVariable(name: "stringio_truncate_doc", scope: !0, file: !1, line: 444, type: !755, isLocal: true, isDefinition: true, variable: [179 x i8]* @stringio_truncate_doc)
!755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 1432, align: 8, elements: !756)
!756 = !{!757}
!757 = !DISubrange(count: 179)
!758 = !DIGlobalVariable(name: "stringio_seek_doc", scope: !0, file: !1, line: 493, type: !759, isLocal: true, isDefinition: true, variable: [270 x i8]* @stringio_seek_doc)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 2160, align: 8, elements: !760)
!760 = !{!761}
!761 = !DISubrange(count: 270)
!762 = !DIGlobalVariable(name: "stringio_write_doc", scope: !0, file: !1, line: 544, type: !763, isLocal: true, isDefinition: true, variable: [117 x i8]* @stringio_write_doc)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 936, align: 8, elements: !764)
!764 = !{!765}
!765 = !DISubrange(count: 117)
!766 = !DIGlobalVariable(name: "stringio_seekable_doc", scope: !0, file: !1, line: 770, type: !767, isLocal: true, isDefinition: true, variable: [65 x i8]* @stringio_seekable_doc)
!767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 520, align: 8, elements: !768)
!768 = !{!769}
!769 = !DISubrange(count: 65)
!770 = !DIGlobalVariable(name: "stringio_readable_doc", scope: !0, file: !1, line: 764, type: !771, isLocal: true, isDefinition: true, variable: [63 x i8]* @stringio_readable_doc)
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 504, align: 8, elements: !772)
!772 = !{!773}
!773 = !DISubrange(count: 63)
!774 = !DIGlobalVariable(name: "stringio_writable_doc", scope: !0, file: !1, line: 767, type: !775, isLocal: true, isDefinition: true, variable: [66 x i8]* @stringio_writable_doc)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 528, align: 8, elements: !776)
!776 = !{!777}
!777 = !DISubrange(count: 66)
!778 = !DIGlobalVariable(name: "stringio_getset", scope: !0, file: !1, line: 981, type: !779, isLocal: true, isDefinition: true, variable: [4 x %struct.PyGetSetDef]* @stringio_getset)
!779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !780, size: 1280, align: 64, elements: !781)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGetSetDef", file: !322, line: 17, baseType: !321)
!781 = !{!782}
!782 = !DISubrange(count: 4)
!783 = !{i32 2, !"Dwarf Version", i32 4}
!784 = !{i32 2, !"Debug Info Version", i32 3}
!785 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!786 = !DIExpression()
!787 = !DILocation(line: 607, column: 28, scope: !427)
!788 = !DILocation(line: 609, column: 5, scope: !789)
!789 = !DILexicalBlockFile(scope: !433, file: !1, discriminator: 1)
!790 = !DILocation(line: 609, column: 5, scope: !791)
!791 = !DILexicalBlockFile(scope: !792, file: !1, discriminator: 2)
!792 = distinct !DILexicalBlock(scope: !433, file: !1, line: 609, column: 5)
!793 = !{!794, !798, i64 16}
!794 = !{!"", !795, i64 0, !795, i64 8, !798, i64 16}
!795 = !{!"any pointer", !796, i64 0}
!796 = !{!"omnipotent char", !797, i64 0}
!797 = !{!"Simple C/C++ TBAA"}
!798 = !{!"long", !796, i64 0}
!799 = !DILocation(line: 609, column: 5, scope: !800)
!800 = !DILexicalBlockFile(scope: !433, file: !1, discriminator: 4)
!801 = !{!794, !795, i64 0}
!802 = !{!794, !795, i64 8}
!803 = !DILocation(line: 610, column: 11, scope: !427)
!804 = !DILocation(line: 610, column: 14, scope: !427)
!805 = !{!806, !796, i64 72}
!806 = !{!"", !807, i64 0, !795, i64 16, !798, i64 24, !798, i64 32, !798, i64 40, !808, i64 48, !809, i64 56, !796, i64 72, !796, i64 73, !796, i64 74, !796, i64 75, !795, i64 80, !795, i64 88, !795, i64 96, !795, i64 104, !795, i64 112}
!807 = !{!"_object", !798, i64 0, !795, i64 8}
!808 = !{!"int", !796, i64 0}
!809 = !{!"", !795, i64 0, !795, i64 8}
!810 = !DILocation(line: 611, column: 15, scope: !811)
!811 = distinct !DILexicalBlock(scope: !427, file: !1, line: 611, column: 9)
!812 = !{!806, !795, i64 16}
!813 = !DILocation(line: 611, column: 9, scope: !811)
!814 = !DILocation(line: 611, column: 9, scope: !427)
!815 = !DILocation(line: 612, column: 20, scope: !816)
!816 = distinct !DILexicalBlock(scope: !811, file: !1, line: 611, column: 20)
!817 = !DILocation(line: 612, column: 9, scope: !816)
!818 = !DILocation(line: 613, column: 19, scope: !816)
!819 = !DILocation(line: 614, column: 5, scope: !816)
!820 = !DILocation(line: 615, column: 28, scope: !427)
!821 = !DILocation(line: 615, column: 5, scope: !427)
!822 = !DILocation(line: 616, column: 5, scope: !823)
!823 = !DILexicalBlockFile(scope: !435, file: !1, discriminator: 1)
!824 = !{!806, !795, i64 88}
!825 = !DILocation(line: 616, column: 5, scope: !439)
!826 = !DILocation(line: 616, column: 5, scope: !435)
!827 = !DILocation(line: 616, column: 5, scope: !828)
!828 = !DILexicalBlockFile(scope: !438, file: !1, discriminator: 2)
!829 = !DILocation(line: 616, column: 5, scope: !830)
!830 = !DILexicalBlockFile(scope: !437, file: !1, discriminator: 4)
!831 = !DILocation(line: 616, column: 5, scope: !832)
!832 = distinct !DILexicalBlock(scope: !437, file: !1, line: 616, column: 5)
!833 = !{!807, !798, i64 0}
!834 = !DILocation(line: 616, column: 5, scope: !437)
!835 = !DILocation(line: 616, column: 5, scope: !836)
!836 = !DILexicalBlockFile(scope: !832, file: !1, discriminator: 6)
!837 = !{!807, !795, i64 8}
!838 = !{!839, !795, i64 48}
!839 = !{!"_typeobject", !840, i64 0, !795, i64 24, !798, i64 32, !798, i64 40, !795, i64 48, !795, i64 56, !795, i64 64, !795, i64 72, !795, i64 80, !795, i64 88, !795, i64 96, !795, i64 104, !795, i64 112, !795, i64 120, !795, i64 128, !795, i64 136, !795, i64 144, !795, i64 152, !795, i64 160, !798, i64 168, !795, i64 176, !795, i64 184, !795, i64 192, !795, i64 200, !798, i64 208, !795, i64 216, !795, i64 224, !795, i64 232, !795, i64 240, !795, i64 248, !795, i64 256, !795, i64 264, !795, i64 272, !795, i64 280, !798, i64 288, !795, i64 296, !795, i64 304, !795, i64 312, !795, i64 320, !795, i64 328, !795, i64 336, !795, i64 344, !795, i64 352, !795, i64 360, !795, i64 368, !795, i64 376, !808, i64 384, !795, i64 392}
!840 = !{!"", !807, i64 0, !798, i64 16}
!841 = !DILocation(line: 617, column: 5, scope: !842)
!842 = !DILexicalBlockFile(scope: !441, file: !1, discriminator: 1)
!843 = !{!806, !795, i64 96}
!844 = !DILocation(line: 617, column: 5, scope: !445)
!845 = !DILocation(line: 617, column: 5, scope: !441)
!846 = !DILocation(line: 617, column: 5, scope: !847)
!847 = !DILexicalBlockFile(scope: !444, file: !1, discriminator: 2)
!848 = !DILocation(line: 617, column: 5, scope: !849)
!849 = !DILexicalBlockFile(scope: !443, file: !1, discriminator: 4)
!850 = !DILocation(line: 617, column: 5, scope: !851)
!851 = distinct !DILexicalBlock(scope: !443, file: !1, line: 617, column: 5)
!852 = !DILocation(line: 617, column: 5, scope: !443)
!853 = !DILocation(line: 617, column: 5, scope: !854)
!854 = !DILexicalBlockFile(scope: !851, file: !1, discriminator: 6)
!855 = !DILocation(line: 618, column: 5, scope: !856)
!856 = !DILexicalBlockFile(scope: !447, file: !1, discriminator: 1)
!857 = !{!806, !795, i64 80}
!858 = !DILocation(line: 618, column: 5, scope: !451)
!859 = !DILocation(line: 618, column: 5, scope: !447)
!860 = !DILocation(line: 618, column: 5, scope: !861)
!861 = !DILexicalBlockFile(scope: !450, file: !1, discriminator: 2)
!862 = !DILocation(line: 618, column: 5, scope: !863)
!863 = !DILexicalBlockFile(scope: !449, file: !1, discriminator: 4)
!864 = !DILocation(line: 618, column: 5, scope: !865)
!865 = distinct !DILexicalBlock(scope: !449, file: !1, line: 618, column: 5)
!866 = !DILocation(line: 618, column: 5, scope: !449)
!867 = !DILocation(line: 618, column: 5, scope: !868)
!868 = !DILexicalBlockFile(scope: !865, file: !1, discriminator: 6)
!869 = !DILocation(line: 619, column: 5, scope: !870)
!870 = !DILexicalBlockFile(scope: !453, file: !1, discriminator: 1)
!871 = !{!806, !795, i64 104}
!872 = !DILocation(line: 619, column: 5, scope: !457)
!873 = !DILocation(line: 619, column: 5, scope: !453)
!874 = !DILocation(line: 619, column: 5, scope: !875)
!875 = !DILexicalBlockFile(scope: !456, file: !1, discriminator: 2)
!876 = !DILocation(line: 619, column: 5, scope: !877)
!877 = !DILexicalBlockFile(scope: !455, file: !1, discriminator: 4)
!878 = !DILocation(line: 619, column: 5, scope: !879)
!879 = distinct !DILexicalBlock(scope: !455, file: !1, line: 619, column: 5)
!880 = !DILocation(line: 619, column: 5, scope: !455)
!881 = !DILocation(line: 619, column: 5, scope: !882)
!882 = !DILexicalBlockFile(scope: !879, file: !1, discriminator: 6)
!883 = !DILocation(line: 620, column: 15, scope: !884)
!884 = distinct !DILexicalBlock(scope: !427, file: !1, line: 620, column: 9)
!885 = !{!806, !795, i64 112}
!886 = !DILocation(line: 620, column: 27, scope: !884)
!887 = !DILocation(line: 620, column: 9, scope: !427)
!888 = !DILocation(line: 621, column: 32, scope: !884)
!889 = !DILocation(line: 621, column: 9, scope: !884)
!890 = !DILocation(line: 622, column: 5, scope: !427)
!891 = !DILocation(line: 622, column: 20, scope: !427)
!892 = !{!839, !795, i64 320}
!893 = !DILocation(line: 622, column: 28, scope: !427)
!894 = !DILocation(line: 623, column: 1, scope: !427)
!895 = !DILocation(line: 593, column: 29, scope: !458)
!896 = !DILocation(line: 593, column: 45, scope: !458)
!897 = !DILocation(line: 593, column: 58, scope: !458)
!898 = !DILocation(line: 595, column: 5, scope: !899)
!899 = !DILexicalBlockFile(scope: !467, file: !1, discriminator: 1)
!900 = !DILocation(line: 595, column: 5, scope: !468)
!901 = !DILocation(line: 595, column: 5, scope: !902)
!902 = !DILexicalBlockFile(scope: !466, file: !1, discriminator: 2)
!903 = !DILocation(line: 595, column: 5, scope: !904)
!904 = distinct !DILexicalBlock(scope: !466, file: !1, line: 595, column: 5)
!905 = !DILocation(line: 596, column: 5, scope: !458)
!906 = !DILocation(line: 597, column: 1, scope: !458)
!907 = !DILocation(line: 600, column: 26, scope: !469)
!908 = !DILocation(line: 602, column: 5, scope: !909)
!909 = !DILexicalBlockFile(scope: !475, file: !1, discriminator: 1)
!910 = !DILocation(line: 602, column: 5, scope: !479)
!911 = !DILocation(line: 602, column: 5, scope: !475)
!912 = !DILocation(line: 602, column: 5, scope: !913)
!913 = !DILexicalBlockFile(scope: !478, file: !1, discriminator: 2)
!914 = !DILocation(line: 602, column: 5, scope: !915)
!915 = !DILexicalBlockFile(scope: !477, file: !1, discriminator: 4)
!916 = !DILocation(line: 602, column: 5, scope: !917)
!917 = distinct !DILexicalBlock(scope: !477, file: !1, line: 602, column: 5)
!918 = !DILocation(line: 602, column: 5, scope: !477)
!919 = !DILocation(line: 602, column: 5, scope: !920)
!920 = !DILexicalBlockFile(scope: !917, file: !1, discriminator: 6)
!921 = !DILocation(line: 603, column: 5, scope: !469)
!922 = !DILocation(line: 407, column: 29, scope: !480)
!923 = !DILocation(line: 411, column: 5, scope: !924)
!924 = distinct !DILexicalBlock(scope: !480, file: !1, line: 411, column: 5)
!925 = !DILocation(line: 411, column: 5, scope: !480)
!926 = !DILocation(line: 411, column: 5, scope: !927)
!927 = !DILexicalBlockFile(scope: !928, file: !1, discriminator: 1)
!928 = distinct !DILexicalBlock(scope: !924, file: !1, line: 411, column: 5)
!929 = !{!795, !795, i64 0}
!930 = !DILocation(line: 411, column: 5, scope: !928)
!931 = !DILocation(line: 412, column: 5, scope: !932)
!932 = distinct !DILexicalBlock(scope: !480, file: !1, line: 412, column: 5)
!933 = !{!806, !796, i64 73}
!934 = !DILocation(line: 412, column: 5, scope: !480)
!935 = !DILocation(line: 412, column: 5, scope: !936)
!936 = !DILexicalBlockFile(scope: !937, file: !1, discriminator: 1)
!937 = distinct !DILexicalBlock(scope: !932, file: !1, line: 412, column: 5)
!938 = !DILocation(line: 412, column: 5, scope: !937)
!939 = !DILocation(line: 413, column: 5, scope: !940)
!940 = distinct !DILexicalBlock(scope: !480, file: !1, line: 413, column: 5)
!941 = !DILocation(line: 413, column: 5, scope: !480)
!942 = !DILocation(line: 415, column: 9, scope: !491)
!943 = !DILocation(line: 415, column: 23, scope: !491)
!944 = !DILocation(line: 415, column: 9, scope: !480)
!945 = !DILocation(line: 348, column: 30, scope: !519, inlinedAt: !946)
!946 = distinct !DILocation(line: 417, column: 16, scope: !947)
!947 = distinct !DILexicalBlock(scope: !491, file: !1, line: 415, column: 44)
!948 = !DILocation(line: 348, column: 47, scope: !519, inlinedAt: !946)
!949 = !DILocation(line: 351, column: 5, scope: !519, inlinedAt: !946)
!950 = !DILocation(line: 354, column: 15, scope: !951, inlinedAt: !946)
!951 = distinct !DILexicalBlock(scope: !519, file: !1, line: 354, column: 9)
!952 = !{!806, !798, i64 24}
!953 = !DILocation(line: 354, column: 28, scope: !951, inlinedAt: !946)
!954 = !{!806, !798, i64 32}
!955 = !DILocation(line: 354, column: 19, scope: !951, inlinedAt: !946)
!956 = !DILocation(line: 354, column: 9, scope: !519, inlinedAt: !946)
!957 = !DILocation(line: 355, column: 16, scope: !951, inlinedAt: !946)
!958 = !DILocation(line: 355, column: 9, scope: !951, inlinedAt: !946)
!959 = !DILocation(line: 357, column: 19, scope: !519, inlinedAt: !946)
!960 = !DILocation(line: 357, column: 23, scope: !519, inlinedAt: !946)
!961 = !DILocation(line: 350, column: 14, scope: !519, inlinedAt: !946)
!962 = !DILocation(line: 417, column: 16, scope: !947)
!963 = !DILocation(line: 361, column: 17, scope: !519, inlinedAt: !946)
!964 = !DILocation(line: 350, column: 22, scope: !519, inlinedAt: !946)
!965 = !DILocation(line: 362, column: 16, scope: !519, inlinedAt: !946)
!966 = !{!808, !808, i64 0}
!967 = !DILocation(line: 350, column: 27, scope: !519, inlinedAt: !946)
!968 = !DILocation(line: 363, column: 10, scope: !519, inlinedAt: !946)
!969 = !DILocation(line: 365, column: 15, scope: !519, inlinedAt: !946)
!970 = !{!806, !796, i64 75}
!971 = !DILocation(line: 365, column: 9, scope: !519, inlinedAt: !946)
!972 = !DILocation(line: 365, column: 36, scope: !519, inlinedAt: !946)
!973 = !{!806, !796, i64 74}
!974 = !DILocation(line: 365, column: 30, scope: !519, inlinedAt: !946)
!975 = !DILocation(line: 365, column: 57, scope: !519, inlinedAt: !946)
!976 = !DILocation(line: 366, column: 31, scope: !519, inlinedAt: !946)
!977 = !DILocation(line: 366, column: 45, scope: !519, inlinedAt: !946)
!978 = !DILocation(line: 351, column: 21, scope: !519, inlinedAt: !946)
!979 = !DILocation(line: 364, column: 11, scope: !519, inlinedAt: !946)
!980 = !DILocation(line: 351, column: 16, scope: !519, inlinedAt: !946)
!981 = !DILocation(line: 367, column: 10, scope: !519, inlinedAt: !946)
!982 = !DILocation(line: 370, column: 13, scope: !983, inlinedAt: !946)
!983 = distinct !DILexicalBlock(scope: !519, file: !1, line: 370, column: 9)
!984 = !DILocation(line: 370, column: 9, scope: !519, inlinedAt: !946)
!985 = !DILocation(line: 372, column: 15, scope: !519, inlinedAt: !946)
!986 = !DILocation(line: 373, column: 12, scope: !519, inlinedAt: !946)
!987 = !DILocation(line: 373, column: 5, scope: !519, inlinedAt: !946)
!988 = !DILocation(line: 422, column: 44, scope: !490)
!989 = !DILocation(line: 421, column: 16, scope: !490)
!990 = !DILocation(line: 409, column: 15, scope: !480)
!991 = !DILocation(line: 423, column: 13, scope: !489)
!992 = !DILocation(line: 423, column: 18, scope: !489)
!993 = !DILocation(line: 423, column: 22, scope: !994)
!994 = !DILexicalBlockFile(scope: !489, file: !1, discriminator: 1)
!995 = !{!839, !798, i64 168}
!996 = !DILocation(line: 423, column: 13, scope: !490)
!997 = !DILocation(line: 424, column: 26, scope: !488)
!998 = !DILocation(line: 426, column: 57, scope: !488)
!999 = !{!839, !795, i64 24}
!1000 = !DILocation(line: 424, column: 13, scope: !488)
!1001 = !DILocation(line: 427, column: 13, scope: !1002)
!1002 = !DILexicalBlockFile(scope: !487, file: !1, discriminator: 1)
!1003 = !DILocation(line: 427, column: 13, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !487, file: !1, line: 427, column: 13)
!1005 = !DILocation(line: 427, column: 13, scope: !487)
!1006 = !DILocation(line: 427, column: 13, scope: !1007)
!1007 = !DILexicalBlockFile(scope: !1004, file: !1, discriminator: 3)
!1008 = !DILocation(line: 374, column: 1, scope: !519, inlinedAt: !946)
!1009 = !DILocation(line: 432, column: 14, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !480, file: !1, line: 432, column: 9)
!1011 = !DILocation(line: 432, column: 9, scope: !480)
!1012 = !DILocation(line: 435, column: 9, scope: !495)
!1013 = !{!1014, !798, i64 16}
!1014 = !{!"", !807, i64 0, !798, i64 16, !798, i64 24, !1015, i64 32, !795, i64 40}
!1015 = !{!"", !808, i64 0, !808, i64 0, !808, i64 0, !808, i64 0, !808, i64 0, !808, i64 1}
!1016 = !DILocation(line: 435, column: 36, scope: !495)
!1017 = !DILocation(line: 435, column: 9, scope: !480)
!1018 = !DILocation(line: 437, column: 9, scope: !1019)
!1019 = !DILexicalBlockFile(scope: !493, file: !1, discriminator: 1)
!1020 = !DILocation(line: 437, column: 9, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !493, file: !1, line: 437, column: 9)
!1022 = !DILocation(line: 437, column: 9, scope: !493)
!1023 = !DILocation(line: 437, column: 9, scope: !1024)
!1024 = !DILexicalBlockFile(scope: !1021, file: !1, discriminator: 3)
!1025 = !DILocation(line: 442, column: 1, scope: !480)
!1026 = !DILocation(line: 648, column: 25, scope: !677)
!1027 = !DILocation(line: 648, column: 41, scope: !677)
!1028 = !DILocation(line: 648, column: 57, scope: !677)
!1029 = !DILocation(line: 650, column: 5, scope: !677)
!1030 = !DILocation(line: 650, column: 11, scope: !677)
!1031 = !DILocation(line: 651, column: 5, scope: !677)
!1032 = !DILocation(line: 651, column: 15, scope: !677)
!1033 = !DILocation(line: 652, column: 5, scope: !677)
!1034 = !DILocation(line: 652, column: 15, scope: !677)
!1035 = !{}
!1036 = !DILocation(line: 653, column: 11, scope: !677)
!1037 = !DILocation(line: 656, column: 66, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !677, file: !1, line: 656, column: 9)
!1039 = !DILocation(line: 656, column: 10, scope: !1038)
!1040 = !DILocation(line: 656, column: 9, scope: !677)
!1041 = !DILocation(line: 664, column: 9, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !677, file: !1, line: 664, column: 9)
!1043 = !DILocation(line: 664, column: 21, scope: !1042)
!1044 = !DILocation(line: 664, column: 9, scope: !677)
!1045 = !DILocation(line: 667, column: 14, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1042, file: !1, line: 667, column: 14)
!1047 = !DILocation(line: 667, column: 14, scope: !1042)
!1048 = !DILocation(line: 668, column: 14, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !1, line: 668, column: 13)
!1050 = distinct !DILexicalBlock(scope: !1046, file: !1, line: 667, column: 27)
!1051 = !DILocation(line: 668, column: 13, scope: !1050)
!1052 = !DILocation(line: 669, column: 26, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 668, column: 44)
!1054 = !DILocation(line: 671, column: 48, scope: !1053)
!1055 = !DILocation(line: 669, column: 13, scope: !1053)
!1056 = !DILocation(line: 672, column: 13, scope: !1053)
!1057 = !DILocation(line: 674, column: 19, scope: !1050)
!1058 = !DILocation(line: 675, column: 21, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1050, file: !1, line: 675, column: 13)
!1060 = !DILocation(line: 675, column: 13, scope: !1050)
!1061 = !DILocation(line: 679, column: 9, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !677, file: !1, line: 679, column: 9)
!1063 = !DILocation(line: 682, column: 14, scope: !1064)
!1064 = !DILexicalBlockFile(scope: !1062, file: !1, discriminator: 1)
!1065 = !{!796, !796, i64 0}
!1066 = !DILocation(line: 680, column: 9, scope: !1062)
!1067 = !DILocation(line: 680, column: 36, scope: !1068)
!1068 = !DILexicalBlockFile(scope: !1062, file: !1, discriminator: 2)
!1069 = !DILocation(line: 680, column: 47, scope: !1062)
!1070 = !DILocation(line: 681, column: 9, scope: !1062)
!1071 = !DILocation(line: 681, column: 36, scope: !1068)
!1072 = !DILocation(line: 681, column: 47, scope: !1062)
!1073 = !DILocation(line: 682, column: 9, scope: !1062)
!1074 = !DILocation(line: 682, column: 36, scope: !1068)
!1075 = !DILocation(line: 682, column: 47, scope: !1062)
!1076 = !DILocation(line: 682, column: 55, scope: !1062)
!1077 = !DILocation(line: 682, column: 58, scope: !1078)
!1078 = !DILexicalBlockFile(scope: !1062, file: !1, discriminator: 3)
!1079 = !DILocation(line: 682, column: 69, scope: !1062)
!1080 = !DILocation(line: 679, column: 9, scope: !677)
!1081 = !DILocation(line: 683, column: 22, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1062, file: !1, line: 682, column: 79)
!1083 = !DILocation(line: 684, column: 51, scope: !1082)
!1084 = !DILocation(line: 683, column: 9, scope: !1082)
!1085 = !DILocation(line: 685, column: 9, scope: !1082)
!1086 = !DILocation(line: 687, column: 9, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !677, file: !1, line: 687, column: 9)
!1088 = !DILocation(line: 687, column: 24, scope: !1087)
!1089 = !DILocation(line: 687, column: 15, scope: !1087)
!1090 = !DILocation(line: 687, column: 39, scope: !1091)
!1091 = !DILexicalBlockFile(scope: !1087, file: !1, discriminator: 2)
!1092 = !DILocation(line: 687, column: 9, scope: !677)
!1093 = !DILocation(line: 688, column: 22, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1087, file: !1, line: 687, column: 63)
!1095 = !DILocation(line: 690, column: 38, scope: !1094)
!1096 = !DILocation(line: 688, column: 9, scope: !1094)
!1097 = !DILocation(line: 691, column: 9, scope: !1094)
!1098 = !DILocation(line: 694, column: 11, scope: !677)
!1099 = !DILocation(line: 694, column: 14, scope: !677)
!1100 = !DILocation(line: 696, column: 28, scope: !677)
!1101 = !DILocation(line: 696, column: 5, scope: !677)
!1102 = !DILocation(line: 697, column: 5, scope: !1103)
!1103 = !DILexicalBlockFile(scope: !693, file: !1, discriminator: 1)
!1104 = !DILocation(line: 697, column: 5, scope: !697)
!1105 = !DILocation(line: 697, column: 5, scope: !693)
!1106 = !DILocation(line: 697, column: 5, scope: !1107)
!1107 = !DILexicalBlockFile(scope: !696, file: !1, discriminator: 2)
!1108 = !DILocation(line: 697, column: 5, scope: !1109)
!1109 = !DILexicalBlockFile(scope: !695, file: !1, discriminator: 4)
!1110 = !DILocation(line: 697, column: 5, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !695, file: !1, line: 697, column: 5)
!1112 = !DILocation(line: 697, column: 5, scope: !695)
!1113 = !DILocation(line: 697, column: 5, scope: !1114)
!1114 = !DILexicalBlockFile(scope: !1111, file: !1, discriminator: 6)
!1115 = !DILocation(line: 698, column: 5, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !699, file: !1, discriminator: 1)
!1117 = !DILocation(line: 698, column: 5, scope: !703)
!1118 = !DILocation(line: 698, column: 5, scope: !699)
!1119 = !DILocation(line: 698, column: 5, scope: !1120)
!1120 = !DILexicalBlockFile(scope: !702, file: !1, discriminator: 2)
!1121 = !DILocation(line: 698, column: 5, scope: !1122)
!1122 = !DILexicalBlockFile(scope: !701, file: !1, discriminator: 4)
!1123 = !DILocation(line: 698, column: 5, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !701, file: !1, line: 698, column: 5)
!1125 = !DILocation(line: 698, column: 5, scope: !701)
!1126 = !DILocation(line: 698, column: 5, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1124, file: !1, discriminator: 6)
!1128 = !DILocation(line: 699, column: 5, scope: !1129)
!1129 = !DILexicalBlockFile(scope: !705, file: !1, discriminator: 1)
!1130 = !DILocation(line: 699, column: 5, scope: !709)
!1131 = !DILocation(line: 699, column: 5, scope: !705)
!1132 = !DILocation(line: 699, column: 5, scope: !1133)
!1133 = !DILexicalBlockFile(scope: !708, file: !1, discriminator: 2)
!1134 = !DILocation(line: 699, column: 5, scope: !1135)
!1135 = !DILexicalBlockFile(scope: !707, file: !1, discriminator: 4)
!1136 = !DILocation(line: 699, column: 5, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !707, file: !1, line: 699, column: 5)
!1138 = !DILocation(line: 699, column: 5, scope: !707)
!1139 = !DILocation(line: 699, column: 5, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !1137, file: !1, discriminator: 6)
!1141 = !DILocation(line: 704, column: 9, scope: !677)
!1142 = !DILocation(line: 705, column: 24, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !1, line: 704, column: 18)
!1144 = distinct !DILexicalBlock(scope: !677, file: !1, line: 704, column: 9)
!1145 = !DILocation(line: 705, column: 22, scope: !1143)
!1146 = !DILocation(line: 706, column: 26, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1143, file: !1, line: 706, column: 13)
!1148 = !DILocation(line: 706, column: 13, scope: !1143)
!1149 = !DILocation(line: 709, column: 36, scope: !677)
!1150 = !DILocation(line: 709, column: 44, scope: !677)
!1151 = !DILocation(line: 709, column: 47, scope: !1152)
!1152 = !DILexicalBlockFile(scope: !677, file: !1, discriminator: 2)
!1153 = !DILocation(line: 709, column: 58, scope: !677)
!1154 = !DILocation(line: 722, column: 15, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !677, file: !1, line: 722, column: 9)
!1156 = !DILocation(line: 709, column: 11, scope: !677)
!1157 = !DILocation(line: 709, column: 25, scope: !677)
!1158 = !DILocation(line: 725, column: 40, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1155, file: !1, line: 722, column: 30)
!1160 = !DILocation(line: 710, column: 11, scope: !677)
!1161 = !DILocation(line: 710, column: 25, scope: !677)
!1162 = !DILocation(line: 717, column: 25, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !677, file: !1, line: 717, column: 9)
!1164 = !DILocation(line: 717, column: 28, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !1163, file: !1, discriminator: 1)
!1166 = !DILocation(line: 717, column: 39, scope: !1163)
!1167 = !DILocation(line: 717, column: 9, scope: !677)
!1168 = !DILocation(line: 718, column: 31, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1163, file: !1, line: 717, column: 48)
!1170 = !DILocation(line: 718, column: 23, scope: !1169)
!1171 = !DILocation(line: 719, column: 9, scope: !1169)
!1172 = !DILocation(line: 720, column: 5, scope: !1169)
!1173 = !DILocation(line: 722, column: 9, scope: !677)
!1174 = !DILocation(line: 725, column: 28, scope: !1159)
!1175 = !DILocation(line: 723, column: 25, scope: !1159)
!1176 = !DILocation(line: 723, column: 23, scope: !1159)
!1177 = !DILocation(line: 726, column: 27, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1159, file: !1, line: 726, column: 13)
!1179 = !DILocation(line: 726, column: 13, scope: !1159)
!1180 = !DILocation(line: 732, column: 11, scope: !677)
!1181 = !DILocation(line: 732, column: 23, scope: !677)
!1182 = !DILocation(line: 733, column: 9, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !677, file: !1, line: 733, column: 9)
!1184 = !DILocation(line: 733, column: 24, scope: !1183)
!1185 = !DILocation(line: 733, column: 15, scope: !1183)
!1186 = !DILocation(line: 734, column: 21, scope: !1183)
!1187 = !DILocation(line: 654, column: 16, scope: !677)
!1188 = !DILocation(line: 734, column: 9, scope: !1183)
!1189 = !DILocation(line: 72, column: 25, scope: !511, inlinedAt: !1190)
!1190 = distinct !DILocation(line: 740, column: 13, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !1, line: 740, column: 13)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !1, line: 737, column: 24)
!1193 = distinct !DILexicalBlock(scope: !677, file: !1, line: 737, column: 9)
!1194 = !DILocation(line: 72, column: 38, scope: !511, inlinedAt: !1190)
!1195 = !DILocation(line: 76, column: 26, scope: !511, inlinedAt: !1190)
!1196 = !{!806, !798, i64 40}
!1197 = !DILocation(line: 76, column: 12, scope: !511, inlinedAt: !1190)
!1198 = !DILocation(line: 77, column: 14, scope: !511, inlinedAt: !1190)
!1199 = !DILocation(line: 88, column: 14, scope: !1200, inlinedAt: !1190)
!1200 = distinct !DILexicalBlock(scope: !511, file: !1, line: 88, column: 9)
!1201 = !DILocation(line: 88, column: 9, scope: !511, inlinedAt: !1190)
!1202 = !DILocation(line: 92, column: 19, scope: !1203, inlinedAt: !1190)
!1203 = distinct !DILexicalBlock(scope: !1200, file: !1, line: 92, column: 14)
!1204 = !DILocation(line: 92, column: 14, scope: !1200, inlinedAt: !1190)
!1205 = !DILocation(line: 96, column: 22, scope: !1206, inlinedAt: !1190)
!1206 = distinct !DILexicalBlock(scope: !1203, file: !1, line: 96, column: 14)
!1207 = !DILocation(line: 96, column: 28, scope: !1206, inlinedAt: !1190)
!1208 = !DILocation(line: 96, column: 19, scope: !1206, inlinedAt: !1190)
!1209 = !DILocation(line: 96, column: 14, scope: !1203, inlinedAt: !1190)
!1210 = !DILocation(line: 740, column: 13, scope: !1191)
!1211 = !DILocation(line: 107, column: 46, scope: !511, inlinedAt: !1190)
!1212 = !DILocation(line: 107, column: 57, scope: !511, inlinedAt: !1190)
!1213 = !DILocation(line: 107, column: 26, scope: !511, inlinedAt: !1190)
!1214 = !DILocation(line: 108, column: 17, scope: !1215, inlinedAt: !1190)
!1215 = distinct !DILexicalBlock(scope: !511, file: !1, line: 108, column: 9)
!1216 = !DILocation(line: 108, column: 9, scope: !511, inlinedAt: !1190)
!1217 = !DILocation(line: 109, column: 9, scope: !1218, inlinedAt: !1190)
!1218 = distinct !DILexicalBlock(scope: !1215, file: !1, line: 108, column: 26)
!1219 = !DILocation(line: 110, column: 9, scope: !1218, inlinedAt: !1190)
!1220 = !DILocation(line: 112, column: 20, scope: !511, inlinedAt: !1190)
!1221 = !DILocation(line: 113, column: 15, scope: !511, inlinedAt: !1190)
!1222 = !DILocation(line: 115, column: 5, scope: !511, inlinedAt: !1190)
!1223 = !DILocation(line: 737, column: 9, scope: !677)
!1224 = !DILocation(line: 740, column: 13, scope: !1192)
!1225 = !DILocation(line: 742, column: 15, scope: !1192)
!1226 = !DILocation(line: 742, column: 21, scope: !1192)
!1227 = !{!806, !808, i64 48}
!1228 = !DILocation(line: 743, column: 15, scope: !1192)
!1229 = !DILocation(line: 743, column: 19, scope: !1192)
!1230 = !DILocation(line: 744, column: 29, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1192, file: !1, line: 744, column: 13)
!1232 = !DILocation(line: 744, column: 13, scope: !1231)
!1233 = !DILocation(line: 744, column: 36, scope: !1231)
!1234 = !DILocation(line: 744, column: 13, scope: !1192)
!1235 = !DILocation(line: 749, column: 13, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1193, file: !1, line: 747, column: 10)
!1237 = !DILocation(line: 751, column: 13, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1236, file: !1, line: 751, column: 13)
!1239 = !DILocation(line: 751, column: 13, scope: !1236)
!1240 = !DILocation(line: 753, column: 15, scope: !1236)
!1241 = !DILocation(line: 753, column: 21, scope: !1236)
!1242 = !DILocation(line: 755, column: 11, scope: !677)
!1243 = !DILocation(line: 755, column: 15, scope: !677)
!1244 = !DILocation(line: 757, column: 11, scope: !677)
!1245 = !DILocation(line: 757, column: 18, scope: !677)
!1246 = !DILocation(line: 758, column: 14, scope: !677)
!1247 = !DILocation(line: 759, column: 5, scope: !677)
!1248 = !DILocation(line: 760, column: 1, scope: !677)
!1249 = !DILocation(line: 626, column: 28, scope: !710)
!1250 = !DILocation(line: 626, column: 44, scope: !710)
!1251 = !DILocation(line: 626, column: 60, scope: !710)
!1252 = !DILocation(line: 631, column: 30, scope: !710)
!1253 = !{!839, !795, i64 304}
!1254 = !DILocation(line: 631, column: 24, scope: !710)
!1255 = !DILocation(line: 632, column: 14, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !710, file: !1, line: 632, column: 9)
!1257 = !DILocation(line: 632, column: 9, scope: !710)
!1258 = !DILocation(line: 638, column: 28, scope: !710)
!1259 = !DILocation(line: 638, column: 11, scope: !710)
!1260 = !DILocation(line: 638, column: 15, scope: !710)
!1261 = !DILocation(line: 639, column: 19, scope: !723)
!1262 = !DILocation(line: 639, column: 9, scope: !710)
!1263 = !DILocation(line: 640, column: 9, scope: !1264)
!1264 = !DILexicalBlockFile(scope: !721, file: !1, discriminator: 1)
!1265 = !DILocation(line: 640, column: 9, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !721, file: !1, line: 640, column: 9)
!1267 = !DILocation(line: 640, column: 9, scope: !721)
!1268 = !DILocation(line: 640, column: 9, scope: !1269)
!1269 = !DILexicalBlockFile(scope: !1266, file: !1, discriminator: 3)
!1270 = !DILocation(line: 641, column: 16, scope: !722)
!1271 = !DILocation(line: 641, column: 9, scope: !722)
!1272 = !DILocation(line: 645, column: 1, scope: !710)
!1273 = !DILocation(line: 140, column: 19, scope: !496)
!1274 = !DILocation(line: 145, column: 15, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !496, file: !1, line: 145, column: 9)
!1276 = !DILocation(line: 145, column: 21, scope: !1275)
!1277 = !DILocation(line: 145, column: 9, scope: !496)
!1278 = !DILocation(line: 148, column: 17, scope: !496)
!1279 = !DILocation(line: 150, column: 42, scope: !496)
!1280 = !DILocation(line: 150, column: 20, scope: !496)
!1281 = !DILocation(line: 143, column: 15, scope: !496)
!1282 = !DILocation(line: 151, column: 22, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !496, file: !1, line: 151, column: 9)
!1284 = !DILocation(line: 151, column: 9, scope: !496)
!1285 = !DILocation(line: 157, column: 11, scope: !496)
!1286 = !DILocation(line: 142, column: 16, scope: !496)
!1287 = !DILocation(line: 72, column: 25, scope: !511, inlinedAt: !1288)
!1288 = distinct !DILocation(line: 158, column: 9, scope: !504)
!1289 = !DILocation(line: 72, column: 38, scope: !511, inlinedAt: !1288)
!1290 = !DILocation(line: 76, column: 26, scope: !511, inlinedAt: !1288)
!1291 = !DILocation(line: 76, column: 12, scope: !511, inlinedAt: !1288)
!1292 = !DILocation(line: 77, column: 14, scope: !511, inlinedAt: !1288)
!1293 = !DILocation(line: 82, column: 17, scope: !511, inlinedAt: !1288)
!1294 = !DILocation(line: 85, column: 14, scope: !1295, inlinedAt: !1288)
!1295 = distinct !DILexicalBlock(scope: !511, file: !1, line: 85, column: 9)
!1296 = !DILocation(line: 85, column: 9, scope: !511, inlinedAt: !1288)
!1297 = !DILocation(line: 88, column: 22, scope: !1200, inlinedAt: !1288)
!1298 = !DILocation(line: 88, column: 14, scope: !1200, inlinedAt: !1288)
!1299 = !DILocation(line: 88, column: 9, scope: !511, inlinedAt: !1288)
!1300 = !DILocation(line: 90, column: 22, scope: !1301, inlinedAt: !1288)
!1301 = distinct !DILexicalBlock(scope: !1200, file: !1, line: 88, column: 27)
!1302 = !DILocation(line: 91, column: 5, scope: !1301, inlinedAt: !1288)
!1303 = !DILocation(line: 92, column: 19, scope: !1203, inlinedAt: !1288)
!1304 = !DILocation(line: 92, column: 14, scope: !1200, inlinedAt: !1288)
!1305 = !DILocation(line: 162, column: 47, scope: !508)
!1306 = !DILocation(line: 96, column: 14, scope: !1206, inlinedAt: !1288)
!1307 = !DILocation(line: 96, column: 22, scope: !1206, inlinedAt: !1288)
!1308 = !DILocation(line: 96, column: 28, scope: !1206, inlinedAt: !1288)
!1309 = !DILocation(line: 96, column: 19, scope: !1206, inlinedAt: !1288)
!1310 = !DILocation(line: 96, column: 14, scope: !1203, inlinedAt: !1288)
!1311 = !DILocation(line: 98, column: 30, scope: !1312, inlinedAt: !1288)
!1312 = distinct !DILexicalBlock(scope: !1206, file: !1, line: 96, column: 37)
!1313 = !DILocation(line: 98, column: 22, scope: !1312, inlinedAt: !1288)
!1314 = !DILocation(line: 98, column: 44, scope: !1312, inlinedAt: !1288)
!1315 = !DILocation(line: 98, column: 38, scope: !1312, inlinedAt: !1288)
!1316 = !DILocation(line: 98, column: 36, scope: !1312, inlinedAt: !1288)
!1317 = !DILocation(line: 99, column: 5, scope: !1312, inlinedAt: !1288)
!1318 = !DILocation(line: 102, column: 22, scope: !1319, inlinedAt: !1288)
!1319 = distinct !DILexicalBlock(scope: !1206, file: !1, line: 100, column: 10)
!1320 = !DILocation(line: 158, column: 9, scope: !504)
!1321 = !DILocation(line: 105, column: 15, scope: !1322, inlinedAt: !1288)
!1322 = distinct !DILexicalBlock(scope: !511, file: !1, line: 105, column: 9)
!1323 = !DILocation(line: 105, column: 9, scope: !511, inlinedAt: !1288)
!1324 = !DILocation(line: 107, column: 46, scope: !511, inlinedAt: !1288)
!1325 = !DILocation(line: 107, column: 57, scope: !511, inlinedAt: !1288)
!1326 = !DILocation(line: 107, column: 26, scope: !511, inlinedAt: !1288)
!1327 = !DILocation(line: 108, column: 17, scope: !1215, inlinedAt: !1288)
!1328 = !DILocation(line: 108, column: 9, scope: !511, inlinedAt: !1288)
!1329 = !DILocation(line: 109, column: 9, scope: !1218, inlinedAt: !1288)
!1330 = !DILocation(line: 110, column: 9, scope: !1218, inlinedAt: !1288)
!1331 = !DILocation(line: 112, column: 20, scope: !511, inlinedAt: !1288)
!1332 = !DILocation(line: 113, column: 15, scope: !511, inlinedAt: !1288)
!1333 = !DILocation(line: 115, column: 5, scope: !511, inlinedAt: !1288)
!1334 = !DILocation(line: 118, column: 21, scope: !511, inlinedAt: !1288)
!1335 = !DILocation(line: 118, column: 5, scope: !511, inlinedAt: !1288)
!1336 = !DILocation(line: 120, column: 5, scope: !511, inlinedAt: !1288)
!1337 = !DILocation(line: 159, column: 9, scope: !1338)
!1338 = !DILexicalBlockFile(scope: !502, file: !1, discriminator: 1)
!1339 = !DILocation(line: 159, column: 9, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !502, file: !1, line: 159, column: 9)
!1341 = !DILocation(line: 159, column: 9, scope: !502)
!1342 = !DILocation(line: 159, column: 9, scope: !1343)
!1343 = !DILexicalBlockFile(scope: !1340, file: !1, discriminator: 3)
!1344 = !DILocation(line: 162, column: 10, scope: !508)
!1345 = !DILocation(line: 163, column: 9, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !506, file: !1, line: 163, column: 9)
!1347 = !DILocation(line: 162, column: 9, scope: !496)
!1348 = !DILocation(line: 163, column: 9, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !506, file: !1, discriminator: 1)
!1350 = !DILocation(line: 163, column: 9, scope: !506)
!1351 = !DILocation(line: 163, column: 9, scope: !1352)
!1352 = !DILexicalBlockFile(scope: !1346, file: !1, discriminator: 3)
!1353 = !DILocation(line: 167, column: 5, scope: !1354)
!1354 = !DILexicalBlockFile(scope: !510, file: !1, discriminator: 1)
!1355 = !DILocation(line: 167, column: 5, scope: !510)
!1356 = !DILocation(line: 167, column: 5, scope: !1357)
!1357 = !DILexicalBlockFile(scope: !1358, file: !1, discriminator: 3)
!1358 = distinct !DILexicalBlock(scope: !510, file: !1, line: 167, column: 5)
!1359 = !DILocation(line: 169, column: 1, scope: !496)
!1360 = !DILocation(line: 579, column: 26, scope: !530)
!1361 = !DILocation(line: 581, column: 11, scope: !530)
!1362 = !DILocation(line: 581, column: 18, scope: !530)
!1363 = !DILocation(line: 72, column: 25, scope: !511, inlinedAt: !1364)
!1364 = distinct !DILocation(line: 583, column: 9, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !530, file: !1, line: 583, column: 9)
!1366 = !DILocation(line: 72, column: 38, scope: !511, inlinedAt: !1364)
!1367 = !DILocation(line: 76, column: 26, scope: !511, inlinedAt: !1364)
!1368 = !DILocation(line: 76, column: 12, scope: !511, inlinedAt: !1364)
!1369 = !DILocation(line: 77, column: 14, scope: !511, inlinedAt: !1364)
!1370 = !DILocation(line: 88, column: 14, scope: !1200, inlinedAt: !1364)
!1371 = !DILocation(line: 88, column: 9, scope: !511, inlinedAt: !1364)
!1372 = !DILocation(line: 92, column: 19, scope: !1203, inlinedAt: !1364)
!1373 = !DILocation(line: 92, column: 14, scope: !1200, inlinedAt: !1364)
!1374 = !DILocation(line: 96, column: 22, scope: !1206, inlinedAt: !1364)
!1375 = !DILocation(line: 96, column: 28, scope: !1206, inlinedAt: !1364)
!1376 = !DILocation(line: 96, column: 19, scope: !1206, inlinedAt: !1364)
!1377 = !DILocation(line: 96, column: 14, scope: !1203, inlinedAt: !1364)
!1378 = !DILocation(line: 583, column: 9, scope: !1365)
!1379 = !DILocation(line: 107, column: 46, scope: !511, inlinedAt: !1364)
!1380 = !DILocation(line: 107, column: 57, scope: !511, inlinedAt: !1364)
!1381 = !DILocation(line: 107, column: 26, scope: !511, inlinedAt: !1364)
!1382 = !DILocation(line: 108, column: 17, scope: !1215, inlinedAt: !1364)
!1383 = !DILocation(line: 108, column: 9, scope: !511, inlinedAt: !1364)
!1384 = !DILocation(line: 112, column: 20, scope: !511, inlinedAt: !1364)
!1385 = !DILocation(line: 113, column: 15, scope: !511, inlinedAt: !1364)
!1386 = !DILocation(line: 115, column: 5, scope: !511, inlinedAt: !1364)
!1387 = !DILocation(line: 109, column: 9, scope: !1218, inlinedAt: !1364)
!1388 = !DILocation(line: 583, column: 9, scope: !530)
!1389 = !DILocation(line: 585, column: 28, scope: !530)
!1390 = !DILocation(line: 585, column: 5, scope: !530)
!1391 = !DILocation(line: 586, column: 5, scope: !1392)
!1392 = !DILexicalBlockFile(scope: !534, file: !1, discriminator: 1)
!1393 = !DILocation(line: 586, column: 5, scope: !538)
!1394 = !DILocation(line: 586, column: 5, scope: !534)
!1395 = !DILocation(line: 586, column: 5, scope: !1396)
!1396 = !DILexicalBlockFile(scope: !537, file: !1, discriminator: 2)
!1397 = !DILocation(line: 586, column: 5, scope: !1398)
!1398 = !DILexicalBlockFile(scope: !536, file: !1, discriminator: 4)
!1399 = !DILocation(line: 586, column: 5, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !536, file: !1, line: 586, column: 5)
!1401 = !DILocation(line: 586, column: 5, scope: !536)
!1402 = !DILocation(line: 586, column: 5, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !1400, file: !1, discriminator: 6)
!1404 = !DILocation(line: 587, column: 5, scope: !1405)
!1405 = !DILexicalBlockFile(scope: !540, file: !1, discriminator: 1)
!1406 = !DILocation(line: 587, column: 5, scope: !544)
!1407 = !DILocation(line: 587, column: 5, scope: !540)
!1408 = !DILocation(line: 587, column: 5, scope: !1409)
!1409 = !DILexicalBlockFile(scope: !543, file: !1, discriminator: 2)
!1410 = !DILocation(line: 587, column: 5, scope: !1411)
!1411 = !DILexicalBlockFile(scope: !542, file: !1, discriminator: 4)
!1412 = !DILocation(line: 587, column: 5, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !542, file: !1, line: 587, column: 5)
!1414 = !DILocation(line: 587, column: 5, scope: !542)
!1415 = !DILocation(line: 587, column: 5, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !1413, file: !1, discriminator: 6)
!1417 = !DILocation(line: 588, column: 5, scope: !1418)
!1418 = !DILexicalBlockFile(scope: !546, file: !1, discriminator: 1)
!1419 = !DILocation(line: 588, column: 5, scope: !550)
!1420 = !DILocation(line: 588, column: 5, scope: !546)
!1421 = !DILocation(line: 588, column: 5, scope: !1422)
!1422 = !DILexicalBlockFile(scope: !549, file: !1, discriminator: 2)
!1423 = !DILocation(line: 588, column: 5, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !548, file: !1, discriminator: 4)
!1425 = !DILocation(line: 588, column: 5, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !548, file: !1, line: 588, column: 5)
!1427 = !DILocation(line: 588, column: 5, scope: !548)
!1428 = !DILocation(line: 588, column: 5, scope: !1429)
!1429 = !DILexicalBlockFile(scope: !1426, file: !1, discriminator: 6)
!1430 = !DILocation(line: 589, column: 5, scope: !530)
!1431 = !DILocation(line: 590, column: 1, scope: !530)
!1432 = !DILocation(line: 271, column: 29, scope: !551)
!1433 = !DILocation(line: 273, column: 5, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !551, file: !1, line: 273, column: 5)
!1435 = !DILocation(line: 273, column: 5, scope: !551)
!1436 = !DILocation(line: 273, column: 5, scope: !1437)
!1437 = !DILexicalBlockFile(scope: !1438, file: !1, discriminator: 1)
!1438 = distinct !DILexicalBlock(scope: !1434, file: !1, line: 273, column: 5)
!1439 = !DILocation(line: 274, column: 5, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !551, file: !1, line: 274, column: 5)
!1441 = !DILocation(line: 274, column: 5, scope: !551)
!1442 = !DILocation(line: 274, column: 5, scope: !1443)
!1443 = !DILexicalBlockFile(scope: !1444, file: !1, discriminator: 1)
!1444 = distinct !DILexicalBlock(scope: !1440, file: !1, line: 274, column: 5)
!1445 = !DILocation(line: 275, column: 15, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !551, file: !1, line: 275, column: 9)
!1447 = !DILocation(line: 275, column: 21, scope: !1446)
!1448 = !DILocation(line: 275, column: 9, scope: !551)
!1449 = !DILocation(line: 124, column: 29, scope: !554, inlinedAt: !1450)
!1450 = distinct !DILocation(line: 276, column: 16, scope: !1446)
!1451 = !DILocation(line: 126, column: 52, scope: !554, inlinedAt: !1450)
!1452 = !DILocation(line: 126, column: 30, scope: !554, inlinedAt: !1450)
!1453 = !DILocation(line: 126, column: 15, scope: !554, inlinedAt: !1450)
!1454 = !DILocation(line: 127, column: 17, scope: !554, inlinedAt: !1450)
!1455 = !DILocation(line: 128, column: 22, scope: !1456, inlinedAt: !1450)
!1456 = distinct !DILexicalBlock(scope: !554, file: !1, line: 128, column: 9)
!1457 = !DILocation(line: 128, column: 9, scope: !554, inlinedAt: !1450)
!1458 = !DILocation(line: 130, column: 9, scope: !561, inlinedAt: !1450)
!1459 = !DILocation(line: 130, column: 35, scope: !561, inlinedAt: !1450)
!1460 = !DILocation(line: 131, column: 9, scope: !561, inlinedAt: !1450)
!1461 = !DILocation(line: 130, column: 9, scope: !554, inlinedAt: !1450)
!1462 = !DILocation(line: 132, column: 9, scope: !1463, inlinedAt: !1450)
!1463 = !DILexicalBlockFile(scope: !559, file: !1, discriminator: 1)
!1464 = !DILocation(line: 132, column: 9, scope: !1465, inlinedAt: !1450)
!1465 = distinct !DILexicalBlock(scope: !559, file: !1, line: 132, column: 9)
!1466 = !DILocation(line: 132, column: 9, scope: !559, inlinedAt: !1450)
!1467 = !DILocation(line: 132, column: 9, scope: !1468, inlinedAt: !1450)
!1468 = !DILexicalBlockFile(scope: !1465, file: !1, discriminator: 3)
!1469 = !DILocation(line: 276, column: 16, scope: !1446)
!1470 = !DILocation(line: 135, column: 17, scope: !554, inlinedAt: !1450)
!1471 = !DILocation(line: 136, column: 5, scope: !554, inlinedAt: !1450)
!1472 = !DILocation(line: 277, column: 66, scope: !551)
!1473 = !DILocation(line: 278, column: 44, scope: !551)
!1474 = !DILocation(line: 277, column: 12, scope: !551)
!1475 = !DILocation(line: 277, column: 5, scope: !551)
!1476 = !DILocation(line: 279, column: 1, scope: !551)
!1477 = !DILocation(line: 299, column: 25, scope: !562)
!1478 = !DILocation(line: 299, column: 41, scope: !562)
!1479 = !DILocation(line: 303, column: 5, scope: !562)
!1480 = !DILocation(line: 303, column: 15, scope: !562)
!1481 = !DILocation(line: 305, column: 5, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !562, file: !1, line: 305, column: 5)
!1483 = !DILocation(line: 305, column: 5, scope: !562)
!1484 = !DILocation(line: 305, column: 5, scope: !1485)
!1485 = !DILexicalBlockFile(scope: !1486, file: !1, discriminator: 1)
!1486 = distinct !DILexicalBlock(scope: !1482, file: !1, line: 305, column: 5)
!1487 = !DILocation(line: 305, column: 5, scope: !1486)
!1488 = !DILocation(line: 306, column: 10, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !562, file: !1, line: 306, column: 9)
!1490 = !DILocation(line: 306, column: 9, scope: !562)
!1491 = !DILocation(line: 308, column: 5, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !562, file: !1, line: 308, column: 5)
!1493 = !DILocation(line: 308, column: 5, scope: !562)
!1494 = !DILocation(line: 308, column: 5, scope: !1495)
!1495 = !DILexicalBlockFile(scope: !1496, file: !1, discriminator: 1)
!1496 = distinct !DILexicalBlock(scope: !1492, file: !1, line: 308, column: 5)
!1497 = !DILocation(line: 308, column: 5, scope: !1496)
!1498 = !DILocation(line: 310, column: 24, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !562, file: !1, line: 310, column: 9)
!1500 = !DILocation(line: 310, column: 9, scope: !1499)
!1501 = !DILocation(line: 311, column: 35, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1499, file: !1, line: 310, column: 30)
!1503 = !DILocation(line: 310, column: 9, scope: !562)
!1504 = !DILocation(line: 311, column: 40, scope: !1502)
!1505 = !DILocation(line: 311, column: 16, scope: !1502)
!1506 = !DILocation(line: 301, column: 16, scope: !562)
!1507 = !DILocation(line: 312, column: 18, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1502, file: !1, line: 312, column: 13)
!1509 = !DILocation(line: 312, column: 24, scope: !1508)
!1510 = !DILocation(line: 312, column: 27, scope: !1511)
!1511 = !DILexicalBlockFile(scope: !1508, file: !1, discriminator: 1)
!1512 = !DILocation(line: 312, column: 13, scope: !1502)
!1513 = !DILocation(line: 315, column: 18, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1499, file: !1, line: 315, column: 14)
!1515 = !DILocation(line: 315, column: 14, scope: !1499)
!1516 = !DILocation(line: 320, column: 22, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1514, file: !1, line: 319, column: 10)
!1518 = !DILocation(line: 321, column: 22, scope: !1517)
!1519 = !DILocation(line: 321, column: 36, scope: !1517)
!1520 = !DILocation(line: 320, column: 9, scope: !1517)
!1521 = !DILocation(line: 322, column: 9, scope: !1517)
!1522 = !DILocation(line: 326, column: 15, scope: !562)
!1523 = !DILocation(line: 326, column: 35, scope: !562)
!1524 = !DILocation(line: 326, column: 27, scope: !562)
!1525 = !DILocation(line: 301, column: 22, scope: !562)
!1526 = !DILocation(line: 327, column: 14, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !562, file: !1, line: 327, column: 9)
!1528 = !DILocation(line: 327, column: 26, scope: !1527)
!1529 = !DILocation(line: 327, column: 18, scope: !1527)
!1530 = !DILocation(line: 329, column: 18, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !1, line: 329, column: 13)
!1532 = distinct !DILexicalBlock(scope: !1527, file: !1, line: 327, column: 31)
!1533 = !DILocation(line: 329, column: 13, scope: !1532)
!1534 = !DILocation(line: 334, column: 15, scope: !574)
!1535 = !DILocation(line: 334, column: 21, scope: !574)
!1536 = !DILocation(line: 334, column: 43, scope: !574)
!1537 = !DILocation(line: 334, column: 56, scope: !574)
!1538 = !DILocation(line: 334, column: 69, scope: !574)
!1539 = !DILocation(line: 334, column: 61, scope: !574)
!1540 = !DILocation(line: 124, column: 29, scope: !554, inlinedAt: !1541)
!1541 = distinct !DILocation(line: 335, column: 28, scope: !573)
!1542 = !DILocation(line: 126, column: 52, scope: !554, inlinedAt: !1541)
!1543 = !DILocation(line: 126, column: 30, scope: !554, inlinedAt: !1541)
!1544 = !DILocation(line: 126, column: 15, scope: !554, inlinedAt: !1541)
!1545 = !DILocation(line: 127, column: 17, scope: !554, inlinedAt: !1541)
!1546 = !DILocation(line: 128, column: 22, scope: !1456, inlinedAt: !1541)
!1547 = !DILocation(line: 128, column: 9, scope: !554, inlinedAt: !1541)
!1548 = !DILocation(line: 130, column: 9, scope: !561, inlinedAt: !1541)
!1549 = !DILocation(line: 130, column: 35, scope: !561, inlinedAt: !1541)
!1550 = !DILocation(line: 131, column: 9, scope: !561, inlinedAt: !1541)
!1551 = !DILocation(line: 130, column: 9, scope: !554, inlinedAt: !1541)
!1552 = !DILocation(line: 132, column: 9, scope: !1463, inlinedAt: !1541)
!1553 = !DILocation(line: 132, column: 9, scope: !1465, inlinedAt: !1541)
!1554 = !DILocation(line: 132, column: 9, scope: !559, inlinedAt: !1541)
!1555 = !DILocation(line: 132, column: 9, scope: !1468, inlinedAt: !1541)
!1556 = !DILocation(line: 335, column: 28, scope: !573)
!1557 = !DILocation(line: 135, column: 17, scope: !554, inlinedAt: !1541)
!1558 = !DILocation(line: 136, column: 5, scope: !554, inlinedAt: !1541)
!1559 = !DILocation(line: 335, column: 19, scope: !573)
!1560 = !DILocation(line: 336, column: 27, scope: !573)
!1561 = !DILocation(line: 336, column: 19, scope: !573)
!1562 = !DILocation(line: 340, column: 5, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !562, file: !1, line: 340, column: 5)
!1564 = !DILocation(line: 340, column: 5, scope: !562)
!1565 = !DILocation(line: 341, column: 20, scope: !562)
!1566 = !DILocation(line: 341, column: 32, scope: !562)
!1567 = !DILocation(line: 341, column: 24, scope: !562)
!1568 = !DILocation(line: 302, column: 14, scope: !562)
!1569 = !DILocation(line: 342, column: 15, scope: !562)
!1570 = !DILocation(line: 343, column: 60, scope: !562)
!1571 = !DILocation(line: 343, column: 12, scope: !562)
!1572 = !DILocation(line: 343, column: 5, scope: !562)
!1573 = !DILocation(line: 344, column: 1, scope: !562)
!1574 = !DILocation(line: 382, column: 29, scope: !575)
!1575 = !DILocation(line: 382, column: 45, scope: !575)
!1576 = !DILocation(line: 384, column: 5, scope: !575)
!1577 = !DILocation(line: 384, column: 15, scope: !575)
!1578 = !DILocation(line: 385, column: 16, scope: !575)
!1579 = !DILocation(line: 387, column: 5, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !575, file: !1, line: 387, column: 5)
!1581 = !DILocation(line: 387, column: 5, scope: !575)
!1582 = !DILocation(line: 387, column: 5, scope: !1583)
!1583 = !DILexicalBlockFile(scope: !1584, file: !1, discriminator: 1)
!1584 = distinct !DILexicalBlock(scope: !1580, file: !1, line: 387, column: 5)
!1585 = !DILocation(line: 387, column: 5, scope: !1584)
!1586 = !DILocation(line: 388, column: 10, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !575, file: !1, line: 388, column: 9)
!1588 = !DILocation(line: 388, column: 9, scope: !575)
!1589 = !DILocation(line: 390, column: 5, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !575, file: !1, line: 390, column: 5)
!1591 = !DILocation(line: 390, column: 5, scope: !575)
!1592 = !DILocation(line: 390, column: 5, scope: !1593)
!1593 = !DILexicalBlockFile(scope: !1594, file: !1, discriminator: 1)
!1594 = distinct !DILexicalBlock(scope: !1590, file: !1, line: 390, column: 5)
!1595 = !DILocation(line: 390, column: 5, scope: !1594)
!1596 = !DILocation(line: 391, column: 5, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !575, file: !1, line: 391, column: 5)
!1598 = !DILocation(line: 391, column: 5, scope: !575)
!1599 = !DILocation(line: 393, column: 24, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !575, file: !1, line: 393, column: 9)
!1601 = !DILocation(line: 393, column: 9, scope: !1600)
!1602 = !DILocation(line: 394, column: 36, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1600, file: !1, line: 393, column: 30)
!1604 = !DILocation(line: 393, column: 9, scope: !575)
!1605 = !DILocation(line: 394, column: 41, scope: !1603)
!1606 = !DILocation(line: 394, column: 17, scope: !1603)
!1607 = !DILocation(line: 395, column: 19, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1603, file: !1, line: 395, column: 13)
!1609 = !DILocation(line: 395, column: 25, scope: !1608)
!1610 = !DILocation(line: 395, column: 28, scope: !1611)
!1611 = !DILexicalBlockFile(scope: !1608, file: !1, discriminator: 1)
!1612 = !DILocation(line: 395, column: 13, scope: !1603)
!1613 = !DILocation(line: 398, column: 18, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1600, file: !1, line: 398, column: 14)
!1615 = !DILocation(line: 398, column: 14, scope: !1600)
!1616 = !DILocation(line: 399, column: 22, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1614, file: !1, line: 398, column: 30)
!1618 = !DILocation(line: 400, column: 22, scope: !1617)
!1619 = !DILocation(line: 400, column: 36, scope: !1617)
!1620 = !DILocation(line: 399, column: 9, scope: !1617)
!1621 = !DILocation(line: 401, column: 9, scope: !1617)
!1622 = !DILocation(line: 348, column: 30, scope: !519, inlinedAt: !1623)
!1623 = distinct !DILocation(line: 403, column: 12, scope: !575)
!1624 = !DILocation(line: 348, column: 47, scope: !519, inlinedAt: !1623)
!1625 = !DILocation(line: 351, column: 5, scope: !519, inlinedAt: !1623)
!1626 = !DILocation(line: 354, column: 15, scope: !951, inlinedAt: !1623)
!1627 = !DILocation(line: 354, column: 28, scope: !951, inlinedAt: !1623)
!1628 = !DILocation(line: 354, column: 19, scope: !951, inlinedAt: !1623)
!1629 = !DILocation(line: 354, column: 9, scope: !519, inlinedAt: !1623)
!1630 = !DILocation(line: 355, column: 16, scope: !951, inlinedAt: !1623)
!1631 = !DILocation(line: 355, column: 9, scope: !951, inlinedAt: !1623)
!1632 = !DILocation(line: 357, column: 19, scope: !519, inlinedAt: !1623)
!1633 = !DILocation(line: 357, column: 23, scope: !519, inlinedAt: !1623)
!1634 = !DILocation(line: 350, column: 14, scope: !519, inlinedAt: !1623)
!1635 = !DILocation(line: 358, column: 15, scope: !1636, inlinedAt: !1623)
!1636 = distinct !DILexicalBlock(scope: !519, file: !1, line: 358, column: 9)
!1637 = !DILocation(line: 403, column: 12, scope: !575)
!1638 = !DILocation(line: 358, column: 28, scope: !1636, inlinedAt: !1623)
!1639 = !DILocation(line: 358, column: 19, scope: !1636, inlinedAt: !1623)
!1640 = !DILocation(line: 361, column: 17, scope: !519, inlinedAt: !1623)
!1641 = !DILocation(line: 350, column: 22, scope: !519, inlinedAt: !1623)
!1642 = !DILocation(line: 362, column: 16, scope: !519, inlinedAt: !1623)
!1643 = !DILocation(line: 350, column: 27, scope: !519, inlinedAt: !1623)
!1644 = !DILocation(line: 363, column: 10, scope: !519, inlinedAt: !1623)
!1645 = !DILocation(line: 365, column: 15, scope: !519, inlinedAt: !1623)
!1646 = !DILocation(line: 365, column: 9, scope: !519, inlinedAt: !1623)
!1647 = !DILocation(line: 365, column: 36, scope: !519, inlinedAt: !1623)
!1648 = !DILocation(line: 365, column: 30, scope: !519, inlinedAt: !1623)
!1649 = !DILocation(line: 365, column: 57, scope: !519, inlinedAt: !1623)
!1650 = !DILocation(line: 366, column: 31, scope: !519, inlinedAt: !1623)
!1651 = !DILocation(line: 366, column: 45, scope: !519, inlinedAt: !1623)
!1652 = !DILocation(line: 351, column: 21, scope: !519, inlinedAt: !1623)
!1653 = !DILocation(line: 364, column: 11, scope: !519, inlinedAt: !1623)
!1654 = !DILocation(line: 351, column: 16, scope: !519, inlinedAt: !1623)
!1655 = !DILocation(line: 367, column: 10, scope: !519, inlinedAt: !1623)
!1656 = !DILocation(line: 370, column: 13, scope: !983, inlinedAt: !1623)
!1657 = !DILocation(line: 370, column: 9, scope: !519, inlinedAt: !1623)
!1658 = !DILocation(line: 372, column: 15, scope: !519, inlinedAt: !1623)
!1659 = !DILocation(line: 373, column: 12, scope: !519, inlinedAt: !1623)
!1660 = !DILocation(line: 373, column: 5, scope: !519, inlinedAt: !1623)
!1661 = !DILocation(line: 374, column: 1, scope: !519, inlinedAt: !1623)
!1662 = !DILocation(line: 403, column: 5, scope: !575)
!1663 = !DILocation(line: 404, column: 1, scope: !575)
!1664 = !DILocation(line: 285, column: 25, scope: !581)
!1665 = !DILocation(line: 287, column: 5, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !581, file: !1, line: 287, column: 5)
!1667 = !DILocation(line: 287, column: 5, scope: !581)
!1668 = !DILocation(line: 287, column: 5, scope: !1669)
!1669 = !DILexicalBlockFile(scope: !1670, file: !1, discriminator: 1)
!1670 = distinct !DILexicalBlock(scope: !1666, file: !1, line: 287, column: 5)
!1671 = !DILocation(line: 288, column: 5, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !581, file: !1, line: 288, column: 5)
!1673 = !DILocation(line: 288, column: 5, scope: !581)
!1674 = !DILocation(line: 288, column: 5, scope: !1675)
!1675 = !DILexicalBlockFile(scope: !1676, file: !1, discriminator: 1)
!1676 = distinct !DILexicalBlock(scope: !1672, file: !1, line: 288, column: 5)
!1677 = !DILocation(line: 289, column: 37, scope: !581)
!1678 = !DILocation(line: 289, column: 12, scope: !581)
!1679 = !DILocation(line: 289, column: 5, scope: !581)
!1680 = !DILocation(line: 290, column: 1, scope: !581)
!1681 = !DILocation(line: 452, column: 29, scope: !584)
!1682 = !DILocation(line: 452, column: 45, scope: !584)
!1683 = !DILocation(line: 455, column: 5, scope: !584)
!1684 = !DILocation(line: 455, column: 15, scope: !584)
!1685 = !DILocation(line: 457, column: 5, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !584, file: !1, line: 457, column: 5)
!1687 = !DILocation(line: 457, column: 5, scope: !584)
!1688 = !DILocation(line: 457, column: 5, scope: !1689)
!1689 = !DILexicalBlockFile(scope: !1690, file: !1, discriminator: 1)
!1690 = distinct !DILexicalBlock(scope: !1686, file: !1, line: 457, column: 5)
!1691 = !DILocation(line: 457, column: 5, scope: !1690)
!1692 = !DILocation(line: 458, column: 10, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !584, file: !1, line: 458, column: 9)
!1694 = !DILocation(line: 458, column: 9, scope: !584)
!1695 = !DILocation(line: 460, column: 5, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !584, file: !1, line: 460, column: 5)
!1697 = !DILocation(line: 460, column: 5, scope: !584)
!1698 = !DILocation(line: 460, column: 5, scope: !1699)
!1699 = !DILexicalBlockFile(scope: !1700, file: !1, discriminator: 1)
!1700 = distinct !DILexicalBlock(scope: !1696, file: !1, line: 460, column: 5)
!1701 = !DILocation(line: 460, column: 5, scope: !1700)
!1702 = !DILocation(line: 462, column: 24, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !584, file: !1, line: 462, column: 9)
!1704 = !DILocation(line: 462, column: 9, scope: !1703)
!1705 = !DILocation(line: 463, column: 35, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1703, file: !1, line: 462, column: 30)
!1707 = !DILocation(line: 462, column: 9, scope: !584)
!1708 = !DILocation(line: 463, column: 40, scope: !1706)
!1709 = !DILocation(line: 463, column: 16, scope: !1706)
!1710 = !DILocation(line: 454, column: 16, scope: !584)
!1711 = !DILocation(line: 464, column: 18, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1706, file: !1, line: 464, column: 13)
!1713 = !DILocation(line: 464, column: 24, scope: !1712)
!1714 = !DILocation(line: 464, column: 27, scope: !1715)
!1715 = !DILexicalBlockFile(scope: !1712, file: !1, discriminator: 1)
!1716 = !DILocation(line: 464, column: 13, scope: !1706)
!1717 = !DILocation(line: 467, column: 18, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1703, file: !1, line: 467, column: 14)
!1719 = !DILocation(line: 467, column: 14, scope: !1703)
!1720 = !DILocation(line: 469, column: 22, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1718, file: !1, line: 467, column: 30)
!1722 = !DILocation(line: 472, column: 22, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1718, file: !1, line: 471, column: 10)
!1724 = !DILocation(line: 473, column: 22, scope: !1723)
!1725 = !DILocation(line: 473, column: 36, scope: !1723)
!1726 = !DILocation(line: 472, column: 9, scope: !1723)
!1727 = !DILocation(line: 474, column: 9, scope: !1723)
!1728 = !DILocation(line: 477, column: 14, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !584, file: !1, line: 477, column: 9)
!1730 = !DILocation(line: 477, column: 9, scope: !584)
!1731 = !DILocation(line: 478, column: 22, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1729, file: !1, line: 477, column: 19)
!1733 = !DILocation(line: 478, column: 9, scope: !1732)
!1734 = !DILocation(line: 480, column: 9, scope: !1732)
!1735 = !DILocation(line: 483, column: 22, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !584, file: !1, line: 483, column: 9)
!1737 = !DILocation(line: 483, column: 14, scope: !1736)
!1738 = !DILocation(line: 483, column: 9, scope: !584)
!1739 = !DILocation(line: 484, column: 9, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !1, line: 484, column: 9)
!1741 = distinct !DILexicalBlock(scope: !1736, file: !1, line: 483, column: 35)
!1742 = !DILocation(line: 484, column: 9, scope: !1741)
!1743 = !DILocation(line: 72, column: 25, scope: !511, inlinedAt: !1744)
!1744 = distinct !DILocation(line: 485, column: 13, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1741, file: !1, line: 485, column: 13)
!1746 = !DILocation(line: 72, column: 38, scope: !511, inlinedAt: !1744)
!1747 = !DILocation(line: 76, column: 26, scope: !511, inlinedAt: !1744)
!1748 = !DILocation(line: 76, column: 12, scope: !511, inlinedAt: !1744)
!1749 = !DILocation(line: 77, column: 14, scope: !511, inlinedAt: !1744)
!1750 = !DILocation(line: 82, column: 17, scope: !511, inlinedAt: !1744)
!1751 = !DILocation(line: 85, column: 14, scope: !1295, inlinedAt: !1744)
!1752 = !DILocation(line: 85, column: 9, scope: !511, inlinedAt: !1744)
!1753 = !DILocation(line: 88, column: 22, scope: !1200, inlinedAt: !1744)
!1754 = !DILocation(line: 88, column: 14, scope: !1200, inlinedAt: !1744)
!1755 = !DILocation(line: 88, column: 9, scope: !511, inlinedAt: !1744)
!1756 = !DILocation(line: 90, column: 22, scope: !1301, inlinedAt: !1744)
!1757 = !DILocation(line: 91, column: 5, scope: !1301, inlinedAt: !1744)
!1758 = !DILocation(line: 92, column: 19, scope: !1203, inlinedAt: !1744)
!1759 = !DILocation(line: 92, column: 14, scope: !1200, inlinedAt: !1744)
!1760 = !DILocation(line: 96, column: 14, scope: !1206, inlinedAt: !1744)
!1761 = !DILocation(line: 96, column: 22, scope: !1206, inlinedAt: !1744)
!1762 = !DILocation(line: 96, column: 28, scope: !1206, inlinedAt: !1744)
!1763 = !DILocation(line: 96, column: 19, scope: !1206, inlinedAt: !1744)
!1764 = !DILocation(line: 96, column: 14, scope: !1203, inlinedAt: !1744)
!1765 = !DILocation(line: 98, column: 30, scope: !1312, inlinedAt: !1744)
!1766 = !DILocation(line: 98, column: 22, scope: !1312, inlinedAt: !1744)
!1767 = !DILocation(line: 98, column: 44, scope: !1312, inlinedAt: !1744)
!1768 = !DILocation(line: 98, column: 38, scope: !1312, inlinedAt: !1744)
!1769 = !DILocation(line: 98, column: 36, scope: !1312, inlinedAt: !1744)
!1770 = !DILocation(line: 99, column: 5, scope: !1312, inlinedAt: !1744)
!1771 = !DILocation(line: 102, column: 22, scope: !1319, inlinedAt: !1744)
!1772 = !DILocation(line: 485, column: 13, scope: !1745)
!1773 = !DILocation(line: 105, column: 15, scope: !1322, inlinedAt: !1744)
!1774 = !DILocation(line: 105, column: 9, scope: !511, inlinedAt: !1744)
!1775 = !DILocation(line: 107, column: 46, scope: !511, inlinedAt: !1744)
!1776 = !DILocation(line: 107, column: 57, scope: !511, inlinedAt: !1744)
!1777 = !DILocation(line: 107, column: 26, scope: !511, inlinedAt: !1744)
!1778 = !DILocation(line: 108, column: 17, scope: !1215, inlinedAt: !1744)
!1779 = !DILocation(line: 108, column: 9, scope: !511, inlinedAt: !1744)
!1780 = !DILocation(line: 109, column: 9, scope: !1218, inlinedAt: !1744)
!1781 = !DILocation(line: 110, column: 9, scope: !1218, inlinedAt: !1744)
!1782 = !DILocation(line: 112, column: 20, scope: !511, inlinedAt: !1744)
!1783 = !DILocation(line: 113, column: 15, scope: !511, inlinedAt: !1744)
!1784 = !DILocation(line: 115, column: 5, scope: !511, inlinedAt: !1744)
!1785 = !DILocation(line: 118, column: 21, scope: !511, inlinedAt: !1744)
!1786 = !DILocation(line: 118, column: 5, scope: !511, inlinedAt: !1744)
!1787 = !DILocation(line: 120, column: 5, scope: !511, inlinedAt: !1744)
!1788 = !DILocation(line: 487, column: 27, scope: !1741)
!1789 = !DILocation(line: 488, column: 5, scope: !1741)
!1790 = !DILocation(line: 490, column: 12, scope: !584)
!1791 = !DILocation(line: 490, column: 5, scope: !584)
!1792 = !DILocation(line: 491, column: 1, scope: !584)
!1793 = !DILocation(line: 503, column: 25, scope: !590)
!1794 = !DILocation(line: 503, column: 41, scope: !590)
!1795 = !DILocation(line: 505, column: 5, scope: !590)
!1796 = !DILocation(line: 506, column: 5, scope: !590)
!1797 = !DILocation(line: 506, column: 9, scope: !590)
!1798 = !DILocation(line: 508, column: 5, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !590, file: !1, line: 508, column: 5)
!1800 = !DILocation(line: 508, column: 5, scope: !590)
!1801 = !DILocation(line: 508, column: 5, scope: !1802)
!1802 = !DILexicalBlockFile(scope: !1803, file: !1, discriminator: 1)
!1803 = distinct !DILexicalBlock(scope: !1799, file: !1, line: 508, column: 5)
!1804 = !DILocation(line: 508, column: 5, scope: !1803)
!1805 = !DILocation(line: 505, column: 16, scope: !590)
!1806 = !DILocation(line: 509, column: 10, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !590, file: !1, line: 509, column: 9)
!1808 = !DILocation(line: 509, column: 9, scope: !590)
!1809 = !DILocation(line: 511, column: 5, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !590, file: !1, line: 511, column: 5)
!1811 = !DILocation(line: 511, column: 5, scope: !590)
!1812 = !DILocation(line: 511, column: 5, scope: !1813)
!1813 = !DILexicalBlockFile(scope: !1814, file: !1, discriminator: 1)
!1814 = distinct !DILexicalBlock(scope: !1810, file: !1, line: 511, column: 5)
!1815 = !DILocation(line: 511, column: 5, scope: !1814)
!1816 = !DILocation(line: 513, column: 9, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !590, file: !1, line: 513, column: 9)
!1818 = !DILocation(line: 513, column: 14, scope: !1817)
!1819 = !DILocation(line: 513, column: 19, scope: !1817)
!1820 = !DILocation(line: 514, column: 22, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1817, file: !1, line: 513, column: 46)
!1822 = !DILocation(line: 514, column: 9, scope: !1821)
!1823 = !DILocation(line: 516, column: 9, scope: !1821)
!1824 = !DILocation(line: 518, column: 14, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1817, file: !1, line: 518, column: 14)
!1826 = !{!798, !798, i64 0}
!1827 = !DILocation(line: 518, column: 18, scope: !1825)
!1828 = !DILocation(line: 518, column: 30, scope: !1825)
!1829 = !DILocation(line: 518, column: 22, scope: !1825)
!1830 = !DILocation(line: 519, column: 22, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1825, file: !1, line: 518, column: 36)
!1832 = !DILocation(line: 519, column: 9, scope: !1831)
!1833 = !DILocation(line: 521, column: 9, scope: !1831)
!1834 = !DILocation(line: 523, column: 31, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1825, file: !1, line: 523, column: 14)
!1836 = !DILocation(line: 523, column: 24, scope: !1835)
!1837 = !DILocation(line: 524, column: 25, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1835, file: !1, line: 523, column: 37)
!1839 = !DILocation(line: 524, column: 9, scope: !1838)
!1840 = !DILocation(line: 526, column: 9, scope: !1838)
!1841 = !DILocation(line: 532, column: 9, scope: !590)
!1842 = !DILocation(line: 533, column: 21, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !1, line: 532, column: 20)
!1844 = distinct !DILexicalBlock(scope: !590, file: !1, line: 532, column: 9)
!1845 = !DILocation(line: 533, column: 13, scope: !1843)
!1846 = !DILocation(line: 534, column: 5, scope: !1843)
!1847 = !DILocation(line: 536, column: 21, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !1, line: 535, column: 25)
!1849 = distinct !DILexicalBlock(scope: !1844, file: !1, line: 535, column: 14)
!1850 = !DILocation(line: 536, column: 13, scope: !1848)
!1851 = !DILocation(line: 537, column: 5, scope: !1848)
!1852 = !DILocation(line: 539, column: 17, scope: !590)
!1853 = !DILocation(line: 539, column: 11, scope: !590)
!1854 = !DILocation(line: 539, column: 15, scope: !590)
!1855 = !DILocation(line: 541, column: 12, scope: !590)
!1856 = !DILocation(line: 541, column: 5, scope: !590)
!1857 = !DILocation(line: 542, column: 1, scope: !590)
!1858 = !DILocation(line: 551, column: 26, scope: !596)
!1859 = !DILocation(line: 551, column: 42, scope: !596)
!1860 = !DILocation(line: 555, column: 5, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !596, file: !1, line: 555, column: 5)
!1862 = !DILocation(line: 555, column: 5, scope: !596)
!1863 = !DILocation(line: 555, column: 5, scope: !1864)
!1864 = !DILexicalBlockFile(scope: !1865, file: !1, discriminator: 1)
!1865 = distinct !DILexicalBlock(scope: !1861, file: !1, line: 555, column: 5)
!1866 = !DILocation(line: 555, column: 5, scope: !1865)
!1867 = !DILocation(line: 556, column: 10, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !596, file: !1, line: 556, column: 9)
!1869 = !DILocation(line: 556, column: 9, scope: !596)
!1870 = !DILocation(line: 557, column: 22, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1868, file: !1, line: 556, column: 32)
!1872 = !DILocation(line: 558, column: 36, scope: !1871)
!1873 = !DILocation(line: 557, column: 9, scope: !1871)
!1874 = !DILocation(line: 559, column: 9, scope: !1871)
!1875 = !DILocation(line: 561, column: 9, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !596, file: !1, line: 561, column: 9)
!1877 = !DILocation(line: 561, column: 9, scope: !1878)
!1878 = !DILexicalBlockFile(scope: !1876, file: !1, discriminator: 2)
!1879 = !DILocation(line: 561, column: 9, scope: !596)
!1880 = !DILocation(line: 563, column: 5, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !596, file: !1, line: 563, column: 5)
!1882 = !DILocation(line: 563, column: 5, scope: !596)
!1883 = !DILocation(line: 563, column: 5, scope: !1884)
!1884 = !DILexicalBlockFile(scope: !1885, file: !1, discriminator: 1)
!1885 = distinct !DILexicalBlock(scope: !1881, file: !1, line: 563, column: 5)
!1886 = !DILocation(line: 563, column: 5, scope: !1885)
!1887 = !DILocation(line: 564, column: 12, scope: !596)
!1888 = !DILocation(line: 553, column: 16, scope: !596)
!1889 = !DILocation(line: 566, column: 14, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !596, file: !1, line: 566, column: 9)
!1891 = !DILocation(line: 566, column: 18, scope: !1890)
!1892 = !DILocation(line: 566, column: 21, scope: !1890)
!1893 = !DILocation(line: 566, column: 42, scope: !1890)
!1894 = !DILocation(line: 566, column: 9, scope: !596)
!1895 = !DILocation(line: 569, column: 12, scope: !596)
!1896 = !DILocation(line: 569, column: 5, scope: !596)
!1897 = !DILocation(line: 570, column: 1, scope: !596)
!1898 = !DILocation(line: 774, column: 29, scope: !625)
!1899 = !DILocation(line: 774, column: 45, scope: !625)
!1900 = !DILocation(line: 776, column: 5, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !625, file: !1, line: 776, column: 5)
!1902 = !DILocation(line: 776, column: 5, scope: !625)
!1903 = !DILocation(line: 776, column: 5, scope: !1904)
!1904 = !DILexicalBlockFile(scope: !1905, file: !1, discriminator: 1)
!1905 = distinct !DILexicalBlock(scope: !1901, file: !1, line: 776, column: 5)
!1906 = !DILocation(line: 777, column: 5, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !625, file: !1, line: 777, column: 5)
!1908 = !DILocation(line: 777, column: 5, scope: !625)
!1909 = !DILocation(line: 777, column: 5, scope: !1910)
!1910 = !DILexicalBlockFile(scope: !1911, file: !1, discriminator: 1)
!1911 = distinct !DILexicalBlock(scope: !1907, file: !1, line: 777, column: 5)
!1912 = !DILocation(line: 778, column: 5, scope: !625)
!1913 = !DILocation(line: 779, column: 1, scope: !625)
!1914 = !DILocation(line: 782, column: 29, scope: !629)
!1915 = !DILocation(line: 782, column: 45, scope: !629)
!1916 = !DILocation(line: 784, column: 5, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !629, file: !1, line: 784, column: 5)
!1918 = !DILocation(line: 784, column: 5, scope: !629)
!1919 = !DILocation(line: 784, column: 5, scope: !1920)
!1920 = !DILexicalBlockFile(scope: !1921, file: !1, discriminator: 1)
!1921 = distinct !DILexicalBlock(scope: !1917, file: !1, line: 784, column: 5)
!1922 = !DILocation(line: 785, column: 5, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !629, file: !1, line: 785, column: 5)
!1924 = !DILocation(line: 785, column: 5, scope: !629)
!1925 = !DILocation(line: 785, column: 5, scope: !1926)
!1926 = !DILexicalBlockFile(scope: !1927, file: !1, discriminator: 1)
!1927 = distinct !DILexicalBlock(scope: !1923, file: !1, line: 785, column: 5)
!1928 = !DILocation(line: 786, column: 5, scope: !629)
!1929 = !DILocation(line: 787, column: 1, scope: !629)
!1930 = !DILocation(line: 790, column: 29, scope: !633)
!1931 = !DILocation(line: 790, column: 45, scope: !633)
!1932 = !DILocation(line: 792, column: 5, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !633, file: !1, line: 792, column: 5)
!1934 = !DILocation(line: 792, column: 5, scope: !633)
!1935 = !DILocation(line: 792, column: 5, scope: !1936)
!1936 = !DILexicalBlockFile(scope: !1937, file: !1, discriminator: 1)
!1937 = distinct !DILexicalBlock(scope: !1933, file: !1, line: 792, column: 5)
!1938 = !DILocation(line: 793, column: 5, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !633, file: !1, line: 793, column: 5)
!1940 = !DILocation(line: 793, column: 5, scope: !633)
!1941 = !DILocation(line: 793, column: 5, scope: !1942)
!1942 = !DILexicalBlockFile(scope: !1943, file: !1, discriminator: 1)
!1943 = distinct !DILexicalBlock(scope: !1939, file: !1, line: 793, column: 5)
!1944 = !DILocation(line: 794, column: 5, scope: !633)
!1945 = !DILocation(line: 795, column: 1, scope: !633)
!1946 = !DILocation(line: 810, column: 29, scope: !637)
!1947 = !DILocation(line: 812, column: 27, scope: !637)
!1948 = !DILocation(line: 812, column: 15, scope: !637)
!1949 = !DILocation(line: 816, column: 19, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !637, file: !1, line: 816, column: 9)
!1951 = !DILocation(line: 816, column: 9, scope: !637)
!1952 = !DILocation(line: 818, column: 15, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !637, file: !1, line: 818, column: 9)
!1954 = !DILocation(line: 818, column: 20, scope: !1953)
!1955 = !DILocation(line: 818, column: 9, scope: !637)
!1956 = !DILocation(line: 819, column: 9, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1953, file: !1, line: 818, column: 29)
!1958 = !DILocation(line: 813, column: 15, scope: !637)
!1959 = !DILocation(line: 821, column: 5, scope: !1957)
!1960 = !DILocation(line: 823, column: 16, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1953, file: !1, line: 822, column: 10)
!1962 = !DILocation(line: 824, column: 18, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1961, file: !1, line: 824, column: 13)
!1964 = !DILocation(line: 824, column: 13, scope: !1961)
!1965 = !DILocation(line: 829, column: 33, scope: !637)
!1966 = !DILocation(line: 829, column: 27, scope: !637)
!1967 = !DILocation(line: 830, column: 33, scope: !637)
!1968 = !DILocation(line: 828, column: 13, scope: !637)
!1969 = !DILocation(line: 814, column: 15, scope: !637)
!1970 = !DILocation(line: 831, column: 5, scope: !1971)
!1971 = !DILexicalBlockFile(scope: !644, file: !1, discriminator: 1)
!1972 = !DILocation(line: 831, column: 5, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !644, file: !1, line: 831, column: 5)
!1974 = !DILocation(line: 831, column: 5, scope: !644)
!1975 = !DILocation(line: 831, column: 5, scope: !1976)
!1976 = !DILexicalBlockFile(scope: !1973, file: !1, discriminator: 3)
!1977 = !DILocation(line: 833, column: 1, scope: !637)
!1978 = !DILocation(line: 836, column: 29, scope: !645)
!1979 = !DILocation(line: 836, column: 45, scope: !645)
!1980 = !DILocation(line: 844, column: 5, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !645, file: !1, line: 844, column: 5)
!1982 = !DILocation(line: 844, column: 5, scope: !645)
!1983 = !DILocation(line: 844, column: 5, scope: !1984)
!1984 = !DILexicalBlockFile(scope: !1985, file: !1, discriminator: 1)
!1985 = distinct !DILexicalBlock(scope: !1981, file: !1, line: 844, column: 5)
!1986 = !DILocation(line: 844, column: 5, scope: !1985)
!1987 = !DILocation(line: 849, column: 10, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !645, file: !1, line: 849, column: 9)
!1989 = !DILocation(line: 852, column: 46, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1988, file: !1, line: 849, column: 54)
!1991 = !DILocation(line: 849, column: 31, scope: !1988)
!1992 = !DILocation(line: 849, column: 34, scope: !1993)
!1993 = !DILexicalBlockFile(scope: !1988, file: !1, discriminator: 1)
!1994 = !{!840, !798, i64 16}
!1995 = !DILocation(line: 849, column: 49, scope: !1988)
!1996 = !DILocation(line: 849, column: 9, scope: !645)
!1997 = !DILocation(line: 850, column: 22, scope: !1990)
!1998 = !DILocation(line: 852, column: 22, scope: !1990)
!1999 = !DILocation(line: 852, column: 37, scope: !1990)
!2000 = !DILocation(line: 852, column: 62, scope: !1990)
!2001 = !DILocation(line: 850, column: 9, scope: !1990)
!2002 = !DILocation(line: 853, column: 9, scope: !1990)
!2003 = !DILocation(line: 857, column: 15, scope: !645)
!2004 = !DILocation(line: 838, column: 15, scope: !645)
!2005 = !DILocation(line: 858, column: 17, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !645, file: !1, line: 858, column: 9)
!2007 = !DILocation(line: 858, column: 9, scope: !645)
!2008 = !DILocation(line: 860, column: 9, scope: !656)
!2009 = !DILocation(line: 860, column: 44, scope: !656)
!2010 = !DILocation(line: 861, column: 9, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !654, file: !1, line: 861, column: 9)
!2012 = !DILocation(line: 860, column: 9, scope: !645)
!2013 = !DILocation(line: 861, column: 9, scope: !2014)
!2014 = !DILexicalBlockFile(scope: !654, file: !1, discriminator: 1)
!2015 = !DILocation(line: 861, column: 9, scope: !654)
!2016 = !DILocation(line: 861, column: 9, scope: !2017)
!2017 = !DILexicalBlockFile(scope: !2011, file: !1, discriminator: 3)
!2018 = !DILocation(line: 864, column: 5, scope: !2019)
!2019 = !DILexicalBlockFile(scope: !658, file: !1, discriminator: 1)
!2020 = !DILocation(line: 864, column: 5, scope: !658)
!2021 = !DILocation(line: 864, column: 5, scope: !2022)
!2022 = !DILexicalBlockFile(scope: !2023, file: !1, discriminator: 3)
!2023 = distinct !DILexicalBlock(scope: !658, file: !1, line: 864, column: 5)
!2024 = !DILocation(line: 877, column: 16, scope: !660)
!2025 = !DILocation(line: 873, column: 19, scope: !660)
!2026 = !DILocation(line: 878, column: 15, scope: !660)
!2027 = !DILocation(line: 874, column: 18, scope: !660)
!2028 = !DILocation(line: 879, column: 17, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !660, file: !1, line: 879, column: 13)
!2030 = !DILocation(line: 879, column: 13, scope: !660)
!2031 = !DILocation(line: 881, column: 19, scope: !660)
!2032 = !DILocation(line: 875, column: 20, scope: !660)
!2033 = !DILocation(line: 72, column: 25, scope: !511, inlinedAt: !2034)
!2034 = distinct !DILocation(line: 883, column: 13, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !660, file: !1, line: 883, column: 13)
!2036 = !DILocation(line: 72, column: 38, scope: !511, inlinedAt: !2034)
!2037 = !DILocation(line: 76, column: 26, scope: !511, inlinedAt: !2034)
!2038 = !DILocation(line: 76, column: 12, scope: !511, inlinedAt: !2034)
!2039 = !DILocation(line: 77, column: 14, scope: !511, inlinedAt: !2034)
!2040 = !DILocation(line: 82, column: 17, scope: !511, inlinedAt: !2034)
!2041 = !DILocation(line: 85, column: 14, scope: !1295, inlinedAt: !2034)
!2042 = !DILocation(line: 85, column: 9, scope: !511, inlinedAt: !2034)
!2043 = !DILocation(line: 88, column: 22, scope: !1200, inlinedAt: !2034)
!2044 = !DILocation(line: 88, column: 14, scope: !1200, inlinedAt: !2034)
!2045 = !DILocation(line: 88, column: 9, scope: !511, inlinedAt: !2034)
!2046 = !DILocation(line: 90, column: 22, scope: !1301, inlinedAt: !2034)
!2047 = !DILocation(line: 91, column: 5, scope: !1301, inlinedAt: !2034)
!2048 = !DILocation(line: 92, column: 19, scope: !1203, inlinedAt: !2034)
!2049 = !DILocation(line: 92, column: 14, scope: !1200, inlinedAt: !2034)
!2050 = !DILocation(line: 887, column: 22, scope: !660)
!2051 = !DILocation(line: 96, column: 14, scope: !1206, inlinedAt: !2034)
!2052 = !DILocation(line: 96, column: 22, scope: !1206, inlinedAt: !2034)
!2053 = !DILocation(line: 96, column: 28, scope: !1206, inlinedAt: !2034)
!2054 = !DILocation(line: 96, column: 19, scope: !1206, inlinedAt: !2034)
!2055 = !DILocation(line: 96, column: 14, scope: !1203, inlinedAt: !2034)
!2056 = !DILocation(line: 98, column: 30, scope: !1312, inlinedAt: !2034)
!2057 = !DILocation(line: 98, column: 22, scope: !1312, inlinedAt: !2034)
!2058 = !DILocation(line: 98, column: 44, scope: !1312, inlinedAt: !2034)
!2059 = !DILocation(line: 98, column: 38, scope: !1312, inlinedAt: !2034)
!2060 = !DILocation(line: 98, column: 36, scope: !1312, inlinedAt: !2034)
!2061 = !DILocation(line: 99, column: 5, scope: !1312, inlinedAt: !2034)
!2062 = !DILocation(line: 102, column: 22, scope: !1319, inlinedAt: !2034)
!2063 = !DILocation(line: 883, column: 13, scope: !2035)
!2064 = !DILocation(line: 105, column: 15, scope: !1322, inlinedAt: !2034)
!2065 = !DILocation(line: 105, column: 9, scope: !511, inlinedAt: !2034)
!2066 = !DILocation(line: 107, column: 46, scope: !511, inlinedAt: !2034)
!2067 = !DILocation(line: 107, column: 57, scope: !511, inlinedAt: !2034)
!2068 = !DILocation(line: 107, column: 26, scope: !511, inlinedAt: !2034)
!2069 = !DILocation(line: 108, column: 17, scope: !1215, inlinedAt: !2034)
!2070 = !DILocation(line: 108, column: 9, scope: !511, inlinedAt: !2034)
!2071 = !DILocation(line: 109, column: 9, scope: !1218, inlinedAt: !2034)
!2072 = !DILocation(line: 110, column: 9, scope: !1218, inlinedAt: !2034)
!2073 = !DILocation(line: 112, column: 20, scope: !511, inlinedAt: !2034)
!2074 = !DILocation(line: 113, column: 15, scope: !511, inlinedAt: !2034)
!2075 = !DILocation(line: 115, column: 5, scope: !511, inlinedAt: !2034)
!2076 = !DILocation(line: 118, column: 21, scope: !511, inlinedAt: !2034)
!2077 = !DILocation(line: 118, column: 5, scope: !511, inlinedAt: !2034)
!2078 = !DILocation(line: 120, column: 5, scope: !511, inlinedAt: !2034)
!2079 = !DILocation(line: 884, column: 24, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 883, column: 47)
!2081 = !DILocation(line: 884, column: 13, scope: !2080)
!2082 = !DILocation(line: 887, column: 9, scope: !660)
!2083 = !DILocation(line: 887, column: 40, scope: !660)
!2084 = !DILocation(line: 888, column: 9, scope: !660)
!2085 = !DILocation(line: 889, column: 15, scope: !660)
!2086 = !DILocation(line: 889, column: 27, scope: !660)
!2087 = !DILocation(line: 895, column: 20, scope: !645)
!2088 = !DILocation(line: 839, column: 15, scope: !645)
!2089 = !DILocation(line: 896, column: 10, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !645, file: !1, line: 896, column: 9)
!2091 = !DILocation(line: 896, column: 9, scope: !645)
!2092 = !DILocation(line: 897, column: 22, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2090, file: !1, line: 896, column: 38)
!2094 = !DILocation(line: 899, column: 45, scope: !2093)
!2095 = !DILocation(line: 897, column: 9, scope: !2093)
!2096 = !DILocation(line: 900, column: 9, scope: !2093)
!2097 = !DILocation(line: 902, column: 11, scope: !645)
!2098 = !DILocation(line: 841, column: 16, scope: !645)
!2099 = !DILocation(line: 903, column: 13, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !645, file: !1, line: 903, column: 9)
!2101 = !DILocation(line: 903, column: 19, scope: !2100)
!2102 = !DILocation(line: 903, column: 22, scope: !2103)
!2103 = !DILexicalBlockFile(scope: !2100, file: !1, discriminator: 1)
!2104 = !DILocation(line: 903, column: 9, scope: !645)
!2105 = !DILocation(line: 905, column: 13, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !645, file: !1, line: 905, column: 9)
!2107 = !DILocation(line: 905, column: 9, scope: !645)
!2108 = !DILocation(line: 906, column: 25, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2106, file: !1, line: 905, column: 18)
!2110 = !DILocation(line: 906, column: 9, scope: !2109)
!2111 = !DILocation(line: 908, column: 9, scope: !2109)
!2112 = !DILocation(line: 910, column: 11, scope: !645)
!2113 = !DILocation(line: 910, column: 15, scope: !645)
!2114 = !DILocation(line: 913, column: 12, scope: !645)
!2115 = !DILocation(line: 840, column: 15, scope: !645)
!2116 = !DILocation(line: 914, column: 14, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !645, file: !1, line: 914, column: 9)
!2118 = !DILocation(line: 914, column: 9, scope: !645)
!2119 = !DILocation(line: 915, column: 14, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !1, line: 915, column: 13)
!2121 = distinct !DILexicalBlock(scope: !2117, file: !1, line: 914, column: 26)
!2122 = !DILocation(line: 915, column: 13, scope: !2121)
!2123 = !DILocation(line: 916, column: 26, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2120, file: !1, line: 915, column: 34)
!2125 = !DILocation(line: 918, column: 41, scope: !2124)
!2126 = !DILocation(line: 916, column: 13, scope: !2124)
!2127 = !DILocation(line: 919, column: 13, scope: !2124)
!2128 = !DILocation(line: 921, column: 19, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2121, file: !1, line: 921, column: 13)
!2130 = !DILocation(line: 921, column: 13, scope: !2129)
!2131 = !DILocation(line: 921, column: 13, scope: !2121)
!2132 = !DILocation(line: 924, column: 17, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !1, line: 924, column: 17)
!2134 = distinct !DILexicalBlock(scope: !2129, file: !1, line: 921, column: 25)
!2135 = !DILocation(line: 924, column: 49, scope: !2133)
!2136 = !DILocation(line: 924, column: 17, scope: !2134)
!2137 = !DILocation(line: 928, column: 13, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2129, file: !1, line: 927, column: 14)
!2139 = !DILocation(line: 929, column: 24, scope: !2138)
!2140 = !DILocation(line: 933, column: 5, scope: !645)
!2141 = !DILocation(line: 934, column: 1, scope: !645)
!2142 = !DILocation(line: 174, column: 21, scope: !601)
!2143 = !DILocation(line: 174, column: 37, scope: !601)
!2144 = !DILocation(line: 177, column: 15, scope: !601)
!2145 = !DILocation(line: 182, column: 15, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !601, file: !1, line: 182, column: 9)
!2147 = !DILocation(line: 182, column: 23, scope: !2146)
!2148 = !DILocation(line: 182, column: 9, scope: !601)
!2149 = !DILocation(line: 183, column: 19, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2146, file: !1, line: 182, column: 32)
!2151 = !DILocation(line: 185, column: 5, scope: !2150)
!2152 = !DILocation(line: 188, column: 9, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2146, file: !1, line: 186, column: 10)
!2154 = !DILocation(line: 190, column: 15, scope: !611)
!2155 = !DILocation(line: 190, column: 9, scope: !611)
!2156 = !DILocation(line: 190, column: 9, scope: !601)
!2157 = !DILocation(line: 192, column: 22, scope: !610)
!2158 = !DILocation(line: 191, column: 32, scope: !610)
!2159 = !DILocation(line: 191, column: 19, scope: !610)
!2160 = !DILocation(line: 193, column: 9, scope: !2161)
!2161 = !DILexicalBlockFile(scope: !613, file: !1, discriminator: 1)
!2162 = !DILocation(line: 193, column: 9, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !613, file: !1, line: 193, column: 9)
!2164 = !DILocation(line: 193, column: 9, scope: !613)
!2165 = !DILocation(line: 193, column: 9, scope: !2166)
!2166 = !DILexicalBlockFile(scope: !2163, file: !1, discriminator: 3)
!2167 = !DILocation(line: 196, column: 17, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !601, file: !1, line: 196, column: 9)
!2169 = !DILocation(line: 196, column: 9, scope: !601)
!2170 = !DILocation(line: 200, column: 9, scope: !617)
!2171 = !DILocation(line: 200, column: 9, scope: !2172)
!2172 = !DILexicalBlockFile(scope: !617, file: !1, discriminator: 2)
!2173 = !DILocation(line: 200, column: 9, scope: !601)
!2174 = !DILocation(line: 201, column: 9, scope: !2175)
!2175 = !DILexicalBlockFile(scope: !615, file: !1, discriminator: 1)
!2176 = !DILocation(line: 201, column: 9, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !615, file: !1, line: 201, column: 9)
!2178 = !DILocation(line: 201, column: 9, scope: !615)
!2179 = !DILocation(line: 201, column: 9, scope: !2180)
!2180 = !DILexicalBlockFile(scope: !2177, file: !1, discriminator: 3)
!2181 = !DILocation(line: 204, column: 11, scope: !601)
!2182 = !DILocation(line: 176, column: 16, scope: !601)
!2183 = !DILocation(line: 210, column: 15, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !601, file: !1, line: 210, column: 9)
!2185 = !DILocation(line: 210, column: 36, scope: !2184)
!2186 = !DILocation(line: 210, column: 19, scope: !2184)
!2187 = !DILocation(line: 210, column: 9, scope: !601)
!2188 = !DILocation(line: 211, column: 25, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2184, file: !1, line: 210, column: 43)
!2190 = !DILocation(line: 211, column: 9, scope: !2189)
!2191 = !DILocation(line: 213, column: 9, scope: !2189)
!2192 = !DILocation(line: 216, column: 15, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !601, file: !1, line: 216, column: 9)
!2194 = !DILocation(line: 216, column: 21, scope: !2193)
!2195 = !DILocation(line: 217, column: 19, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !1, line: 217, column: 13)
!2197 = distinct !DILexicalBlock(scope: !2193, file: !1, line: 216, column: 44)
!2198 = !DILocation(line: 216, column: 9, scope: !601)
!2199 = !DILocation(line: 217, column: 31, scope: !2196)
!2200 = !DILocation(line: 217, column: 13, scope: !2197)
!2201 = !DILocation(line: 218, column: 43, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !1, line: 218, column: 17)
!2203 = distinct !DILexicalBlock(scope: !2196, file: !1, line: 217, column: 45)
!2204 = !DILocation(line: 218, column: 17, scope: !2202)
!2205 = !DILocation(line: 218, column: 17, scope: !2203)
!2206 = !DILocation(line: 222, column: 13, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2197, file: !1, line: 222, column: 13)
!2208 = !DILocation(line: 222, column: 13, scope: !2197)
!2209 = !DILocation(line: 226, column: 15, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !601, file: !1, line: 226, column: 9)
!2211 = !DILocation(line: 226, column: 19, scope: !2210)
!2212 = !DILocation(line: 226, column: 33, scope: !2210)
!2213 = !DILocation(line: 226, column: 25, scope: !2210)
!2214 = !DILocation(line: 226, column: 9, scope: !601)
!2215 = !DILocation(line: 72, column: 25, scope: !511, inlinedAt: !2216)
!2216 = distinct !DILocation(line: 227, column: 13, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !1, line: 227, column: 13)
!2218 = distinct !DILexicalBlock(scope: !2210, file: !1, line: 226, column: 46)
!2219 = !DILocation(line: 72, column: 38, scope: !511, inlinedAt: !2216)
!2220 = !DILocation(line: 76, column: 26, scope: !511, inlinedAt: !2216)
!2221 = !DILocation(line: 76, column: 12, scope: !511, inlinedAt: !2216)
!2222 = !DILocation(line: 77, column: 14, scope: !511, inlinedAt: !2216)
!2223 = !DILocation(line: 82, column: 17, scope: !511, inlinedAt: !2216)
!2224 = !DILocation(line: 85, column: 14, scope: !1295, inlinedAt: !2216)
!2225 = !DILocation(line: 85, column: 9, scope: !511, inlinedAt: !2216)
!2226 = !DILocation(line: 88, column: 22, scope: !1200, inlinedAt: !2216)
!2227 = !DILocation(line: 88, column: 14, scope: !1200, inlinedAt: !2216)
!2228 = !DILocation(line: 88, column: 9, scope: !511, inlinedAt: !2216)
!2229 = !DILocation(line: 90, column: 22, scope: !1301, inlinedAt: !2216)
!2230 = !DILocation(line: 91, column: 5, scope: !1301, inlinedAt: !2216)
!2231 = !DILocation(line: 92, column: 19, scope: !1203, inlinedAt: !2216)
!2232 = !DILocation(line: 92, column: 14, scope: !1200, inlinedAt: !2216)
!2233 = !DILocation(line: 96, column: 14, scope: !1206, inlinedAt: !2216)
!2234 = !DILocation(line: 96, column: 22, scope: !1206, inlinedAt: !2216)
!2235 = !DILocation(line: 96, column: 28, scope: !1206, inlinedAt: !2216)
!2236 = !DILocation(line: 96, column: 19, scope: !1206, inlinedAt: !2216)
!2237 = !DILocation(line: 96, column: 14, scope: !1203, inlinedAt: !2216)
!2238 = !DILocation(line: 98, column: 30, scope: !1312, inlinedAt: !2216)
!2239 = !DILocation(line: 98, column: 22, scope: !1312, inlinedAt: !2216)
!2240 = !DILocation(line: 98, column: 44, scope: !1312, inlinedAt: !2216)
!2241 = !DILocation(line: 98, column: 38, scope: !1312, inlinedAt: !2216)
!2242 = !DILocation(line: 98, column: 36, scope: !1312, inlinedAt: !2216)
!2243 = !DILocation(line: 99, column: 5, scope: !1312, inlinedAt: !2216)
!2244 = !DILocation(line: 102, column: 22, scope: !1319, inlinedAt: !2216)
!2245 = !DILocation(line: 227, column: 13, scope: !2217)
!2246 = !DILocation(line: 105, column: 15, scope: !1322, inlinedAt: !2216)
!2247 = !DILocation(line: 105, column: 9, scope: !511, inlinedAt: !2216)
!2248 = !DILocation(line: 107, column: 46, scope: !511, inlinedAt: !2216)
!2249 = !DILocation(line: 107, column: 57, scope: !511, inlinedAt: !2216)
!2250 = !DILocation(line: 107, column: 26, scope: !511, inlinedAt: !2216)
!2251 = !DILocation(line: 108, column: 17, scope: !1215, inlinedAt: !2216)
!2252 = !DILocation(line: 108, column: 9, scope: !511, inlinedAt: !2216)
!2253 = !DILocation(line: 109, column: 9, scope: !1218, inlinedAt: !2216)
!2254 = !DILocation(line: 110, column: 9, scope: !1218, inlinedAt: !2216)
!2255 = !DILocation(line: 112, column: 20, scope: !511, inlinedAt: !2216)
!2256 = !DILocation(line: 113, column: 15, scope: !511, inlinedAt: !2216)
!2257 = !DILocation(line: 231, column: 15, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !601, file: !1, line: 231, column: 9)
!2259 = !DILocation(line: 231, column: 27, scope: !2258)
!2260 = !DILocation(line: 115, column: 5, scope: !511, inlinedAt: !2216)
!2261 = !DILocation(line: 118, column: 21, scope: !511, inlinedAt: !2216)
!2262 = !DILocation(line: 118, column: 5, scope: !511, inlinedAt: !2216)
!2263 = !DILocation(line: 120, column: 5, scope: !511, inlinedAt: !2216)
!2264 = !DILocation(line: 231, column: 19, scope: !2258)
!2265 = !DILocation(line: 241, column: 22, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2258, file: !1, line: 231, column: 40)
!2267 = !DILocation(line: 231, column: 9, scope: !601)
!2268 = !DILocation(line: 241, column: 26, scope: !2266)
!2269 = !DILocation(line: 241, column: 9, scope: !2266)
!2270 = !DILocation(line: 242, column: 27, scope: !2266)
!2271 = !DILocation(line: 242, column: 48, scope: !2266)
!2272 = !DILocation(line: 248, column: 45, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !601, file: !1, line: 247, column: 9)
!2274 = !DILocation(line: 243, column: 5, scope: !2266)
!2275 = !DILocation(line: 248, column: 33, scope: !2273)
!2276 = !DILocation(line: 248, column: 37, scope: !2273)
!2277 = !DILocation(line: 249, column: 33, scope: !2273)
!2278 = !DILocation(line: 249, column: 42, scope: !2273)
!2279 = !DILocation(line: 247, column: 10, scope: !2273)
!2280 = !DILocation(line: 247, column: 9, scope: !601)
!2281 = !DILocation(line: 255, column: 15, scope: !601)
!2282 = !DILocation(line: 256, column: 15, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !601, file: !1, line: 256, column: 9)
!2284 = !DILocation(line: 256, column: 27, scope: !2283)
!2285 = !DILocation(line: 256, column: 9, scope: !601)
!2286 = !DILocation(line: 257, column: 27, scope: !2283)
!2287 = !DILocation(line: 257, column: 9, scope: !2283)
!2288 = !DILocation(line: 259, column: 5, scope: !2289)
!2289 = !DILexicalBlockFile(scope: !619, file: !1, discriminator: 1)
!2290 = !DILocation(line: 259, column: 5, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !619, file: !1, line: 259, column: 5)
!2292 = !DILocation(line: 259, column: 5, scope: !619)
!2293 = !DILocation(line: 259, column: 5, scope: !2294)
!2294 = !DILexicalBlockFile(scope: !2291, file: !1, discriminator: 3)
!2295 = !DILocation(line: 263, column: 5, scope: !2296)
!2296 = !DILexicalBlockFile(scope: !621, file: !1, discriminator: 1)
!2297 = !DILocation(line: 263, column: 5, scope: !2298)
!2298 = !DILexicalBlockFile(scope: !623, file: !1, discriminator: 4)
!2299 = !DILocation(line: 263, column: 5, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !623, file: !1, line: 263, column: 5)
!2301 = !DILocation(line: 263, column: 5, scope: !623)
!2302 = !DILocation(line: 263, column: 5, scope: !2303)
!2303 = !DILexicalBlockFile(scope: !2300, file: !1, discriminator: 6)
!2304 = !DILocation(line: 265, column: 1, scope: !601)
!2305 = !DILocation(line: 938, column: 27, scope: !663)
!2306 = !DILocation(line: 938, column: 39, scope: !663)
!2307 = !DILocation(line: 940, column: 5, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !663, file: !1, line: 940, column: 5)
!2309 = !DILocation(line: 940, column: 5, scope: !663)
!2310 = !DILocation(line: 940, column: 5, scope: !2311)
!2311 = !DILexicalBlockFile(scope: !2312, file: !1, discriminator: 1)
!2312 = distinct !DILexicalBlock(scope: !2308, file: !1, line: 940, column: 5)
!2313 = !DILocation(line: 941, column: 34, scope: !663)
!2314 = !DILocation(line: 941, column: 28, scope: !663)
!2315 = !DILocation(line: 941, column: 12, scope: !663)
!2316 = !DILocation(line: 941, column: 5, scope: !663)
!2317 = !DILocation(line: 942, column: 1, scope: !663)
!2318 = !DILocation(line: 953, column: 29, scope: !669)
!2319 = !DILocation(line: 953, column: 41, scope: !669)
!2320 = !DILocation(line: 955, column: 5, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !669, file: !1, line: 955, column: 5)
!2322 = !DILocation(line: 955, column: 5, scope: !669)
!2323 = !DILocation(line: 955, column: 5, scope: !2324)
!2324 = !DILexicalBlockFile(scope: !2325, file: !1, discriminator: 1)
!2325 = distinct !DILexicalBlock(scope: !2321, file: !1, line: 955, column: 5)
!2326 = !DILocation(line: 956, column: 5, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !669, file: !1, line: 956, column: 5)
!2328 = !DILocation(line: 956, column: 5, scope: !669)
!2329 = !DILocation(line: 956, column: 5, scope: !2330)
!2330 = !DILexicalBlockFile(scope: !2331, file: !1, discriminator: 1)
!2331 = distinct !DILexicalBlock(scope: !2327, file: !1, line: 956, column: 5)
!2332 = !DILocation(line: 957, column: 15, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !669, file: !1, line: 957, column: 9)
!2334 = !DILocation(line: 957, column: 23, scope: !2333)
!2335 = !DILocation(line: 957, column: 9, scope: !669)
!2336 = !DILocation(line: 958, column: 9, scope: !2333)
!2337 = !DILocation(line: 959, column: 44, scope: !669)
!2338 = !DILocation(line: 959, column: 12, scope: !669)
!2339 = !DILocation(line: 959, column: 5, scope: !669)
!2340 = !DILocation(line: 960, column: 1, scope: !669)
!2341 = !DILocation(line: 945, column: 35, scope: !673)
!2342 = !DILocation(line: 945, column: 47, scope: !673)
!2343 = !DILocation(line: 947, column: 5, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !673, file: !1, line: 947, column: 5)
!2345 = !DILocation(line: 947, column: 5, scope: !673)
!2346 = !DILocation(line: 947, column: 5, scope: !2347)
!2347 = !DILexicalBlockFile(scope: !2348, file: !1, discriminator: 1)
!2348 = distinct !DILexicalBlock(scope: !2344, file: !1, line: 947, column: 5)
!2349 = !DILocation(line: 948, column: 5, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !673, file: !1, line: 948, column: 5)
!2351 = !DILocation(line: 948, column: 5, scope: !673)
!2352 = !DILocation(line: 948, column: 5, scope: !2353)
!2353 = !DILexicalBlockFile(scope: !2354, file: !1, discriminator: 1)
!2354 = distinct !DILexicalBlock(scope: !2350, file: !1, line: 948, column: 5)
!2355 = !DILocation(line: 949, column: 5, scope: !673)
!2356 = !DILocation(line: 950, column: 1, scope: !673)
