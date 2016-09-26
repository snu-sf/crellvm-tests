; ModuleID = './getargs.bc'
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
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.freelistentry_t = type { i8*, i32 (%struct._object*, i8*)* }
%struct.freelist_t = type { %struct.freelistentry_t*, i32, i32 }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.Py_complex = type { double, double }
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }
%struct.PyByteArrayObject = type { %struct.PyVarObject, i64, i8*, i8*, i32 }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }
%struct.PyCompactUnicodeObject = type { %struct.PyASCIIObject, i64, i8*, i64 }
%struct.PyUnicodeObject = type { %struct.PyCompactUnicodeObject, %union.anon }
%union.anon = type { i8* }

@.str = private unnamed_addr constant [17 x i8] c"Python/getargs.c\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"keyword arguments must be strings\00", align 1
@PyExc_SystemError = external global %struct._object*, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"PyArg_UnpackTuple() argument list is not a tuple\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"%s expected %s%zd arguments, got %zd\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"at least \00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"unpacked tuple should have %s%zd elements, but has %zd\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"at most \00", align 1
@PyDict_Type = external global %struct._typeobject, align 8
@.str.8 = private unnamed_addr constant [35 x i8] c"%s does not take keyword arguments\00", align 1
@PyTuple_Type = external global %struct._typeobject, align 8
@.str.9 = private unnamed_addr constant [38 x i8] c"%s does not take positional arguments\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"too many tuple nesting levels in argument format string\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"excess ')' in getargs format\00", align 1
@_Py_ctype_table = external constant [256 x i32], align 16
@.str.12 = private unnamed_addr constant [30 x i8] c"missing ')' in getargs format\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"%.200s%s takes no arguments\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"%.200s%s takes at least one argument\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"old style getargs format uses new features\00", align 1
@.str.18 = private unnamed_addr constant [53 x i8] c"new style getargs format but argument is not a tuple\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"%.150s%s takes %s %d argument%s (%ld given)\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"exactly\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"at least\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"at most\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"bad format string: %.200s\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"expected %d arguments, not %.50s\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"must be %d-item sequence, not %.50s\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.27 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"expected %d arguments, not %zd\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"must be sequence of length %d, not %zd\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"is not retrievable\00", align 1
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.31 = private unnamed_addr constant [43 x i8] c"unsigned byte integer is less than minimum\00", align 1
@.str.32 = private unnamed_addr constant [46 x i8] c"unsigned byte integer is greater than maximum\00", align 1
@.str.33 = private unnamed_addr constant [42 x i8] c"signed short integer is less than minimum\00", align 1
@.str.34 = private unnamed_addr constant [45 x i8] c"signed short integer is greater than maximum\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"signed integer is greater than maximum\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"signed integer is less than minimum\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"integer<k>\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"integer<K>\00", align 1
@PyByteArray_Type = external global %struct._typeobject, align 8
@_PyByteArray_empty_string = external global [0 x i8], align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"a byte string of length 1\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"a unicode character\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"(cleanup problem)\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"size does not fit in an int\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"bytes without null bytes\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"(unicode conversion error)\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"str or None\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.47 = private unnamed_addr constant [36 x i8] c"str without null characters or None\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"str without null characters\00", align 1
@.str.49 = private unnamed_addr constant [36 x i8] c"(unknown parser marker combination)\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"(buffer is NULL)\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"(AsCharBuffer failed)\00", align 1
@.str.52 = private unnamed_addr constant [33 x i8] c"string or unicode or text buffer\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"(encoding failed)\00", align 1
@.str.54 = private unnamed_addr constant [33 x i8] c"(encoder failed to return bytes)\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"(buffer_len is NULL)\00", align 1
@.str.56 = private unnamed_addr constant [18 x i8] c"(buffer overflow)\00", align 1
@.str.57 = private unnamed_addr constant [34 x i8] c"encoded string without NULL bytes\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"bytearray\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"(unspecified)\00", align 1
@.str.61 = private unnamed_addr constant [36 x i8] c"invalid use of 'w' format character\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"read-write buffer\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"contiguous buffer\00", align 1
@.str.64 = private unnamed_addr constant [28 x i8] c"impossible<bad format char>\00", align 1
@PyFloat_Type = external global %struct._typeobject, align 8
@.str.65 = private unnamed_addr constant [37 x i8] c"integer argument expected, got float\00", align 1
@.str.66 = private unnamed_addr constant [25 x i8] c"must be %.50s, not %.50s\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"bytes or buffer\00", align 1
@.str.68 = private unnamed_addr constant [24 x i8] c"read-only pinned buffer\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"%.200s() \00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"argument %zd\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c", item %d\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"argument\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c" %.256s\00", align 1
@.str.74 = private unnamed_addr constant [45 x i8] c"%s%s takes at most %d argument%s (%zd given)\00", align 1
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.75 = private unnamed_addr constant [42 x i8] c"Invalid format string (| specified twice)\00", align 1
@.str.76 = private unnamed_addr constant [35 x i8] c"Invalid format string ($ before |)\00", align 1
@.str.77 = private unnamed_addr constant [42 x i8] c"Invalid format string ($ specified twice)\00", align 1
@.str.78 = private unnamed_addr constant [53 x i8] c"Function takes %s %d positional arguments (%d given)\00", align 1
@.str.79 = private unnamed_addr constant [59 x i8] c"More keyword list entries (%d) than format specifiers (%d)\00", align 1
@.str.80 = private unnamed_addr constant [48 x i8] c"Argument given by name ('%s') and position (%d)\00", align 1
@.str.81 = private unnamed_addr constant [42 x i8] c"Required argument '%s' (pos %d) not found\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"%s: '%s'\00", align 1
@.str.83 = private unnamed_addr constant [75 x i8] c"more argument specifiers than keyword list entries (remaining format:'%s')\00", align 1
@.str.84 = private unnamed_addr constant [25 x i8] c"keywords must be strings\00", align 1
@.str.85 = private unnamed_addr constant [54 x i8] c"'%U' is an invalid keyword argument for this function\00", align 1
@.str.86 = private unnamed_addr constant [38 x i8] c"Unmatched left paren in format string\00", align 1
@.str.87 = private unnamed_addr constant [39 x i8] c"Unmatched right paren in format string\00", align 1

; Function Attrs: nounwind uwtable
define i32 @PyArg_Parse(%struct._object* %args, i8* %format, ...) #0 {
entry:
  %args.addr = alloca %struct._object*, align 8
  %format.addr = alloca i8*, align 8
  %retval1 = alloca i32, align 4
  %va = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay2 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay2)
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load i8*, i8** %format.addr, align 8
  %call = call i32 @vgetargs1(%struct._object* %0, i8* %1, [1 x %struct.__va_list_tag]* %va, i32 1)
  store i32 %call, i32* %retval1, align 4
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %2 = load i32, i32* %retval1, align 4
  ret i32 %2
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @vgetargs1(%struct._object* %args, i8* %format, [1 x %struct.__va_list_tag]* %p_va, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %args.addr = alloca %struct._object*, align 8
  %format.addr = alloca i8*, align 8
  %p_va.addr = alloca [1 x %struct.__va_list_tag]*, align 8
  %flags.addr = alloca i32, align 4
  %msgbuf = alloca [256 x i8], align 16
  %levels = alloca [32 x i32], align 16
  %fname = alloca i8*, align 8
  %message = alloca i8*, align 8
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  %level = alloca i32, align 4
  %endfmt = alloca i32, align 4
  %formatsave = alloca i8*, align 8
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  %msg = alloca i8*, align 8
  %compat = alloca i32, align 4
  %static_entries = alloca [8 x %struct.freelistentry_t], align 16
  %freelist = alloca %struct.freelist_t, align 8
  %c = alloca i32, align 4
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store [1 x %struct.__va_list_tag]* %p_va, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i8* null, i8** %fname, align 8
  store i8* null, i8** %message, align 8
  store i32 -1, i32* %min, align 4
  store i32 0, i32* %max, align 4
  store i32 0, i32* %level, align 4
  store i32 0, i32* %endfmt, align 4
  %0 = load i8*, i8** %format.addr, align 8
  store i8* %0, i8** %formatsave, align 8
  %1 = load i32, i32* %flags.addr, align 4
  %and = and i32 %1, 1
  store i32 %and, i32* %compat, align 4
  %arraydecay = getelementptr inbounds [8 x %struct.freelistentry_t], [8 x %struct.freelistentry_t]* %static_entries, i32 0, i32 0
  %entries = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i32 0, i32 0
  store %struct.freelistentry_t* %arraydecay, %struct.freelistentry_t** %entries, align 8
  %first_available = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i32 0, i32 1
  store i32 0, i32* %first_available, align 4
  %entries_malloced = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i32 0, i32 2
  store i32 0, i32* %entries_malloced, align 4
  %2 = load i32, i32* %flags.addr, align 4
  %and1 = and i32 %2, -2
  store i32 %and1, i32* %flags.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %3 = load i32, i32* %endfmt, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %format.addr, align 8
  %incdec.ptr = getelementptr i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %format.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  store i32 %conv, i32* %c, align 4
  %6 = load i32, i32* %c, align 4
  switch i32 %6, label %sw.default [
    i32 40, label %sw.bb
    i32 41, label %sw.bb.9
    i32 0, label %sw.bb.14
    i32 58, label %sw.bb.15
    i32 59, label %sw.bb.16
    i32 124, label %sw.bb.17
  ]

sw.bb:                                            ; preds = %while.body
  %7 = load i32, i32* %level, align 4
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %8 = load i32, i32* %max, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %9 = load i32, i32* %level, align 4
  %inc4 = add i32 %9, 1
  store i32 %inc4, i32* %level, align 4
  %10 = load i32, i32* %level, align 4
  %cmp5 = icmp sge i32 %10, 30
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  call void @Py_FatalError(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i32 0, i32 0)) #6
  unreachable

if.end.8:                                         ; preds = %if.end
  br label %sw.epilog

sw.bb.9:                                          ; preds = %while.body
  %11 = load i32, i32* %level, align 4
  %cmp10 = icmp eq i32 %11, 0
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %sw.bb.9
  call void @Py_FatalError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0)) #6
  unreachable

if.else:                                          ; preds = %sw.bb.9
  %12 = load i32, i32* %level, align 4
  %dec = add i32 %12, -1
  store i32 %dec, i32* %level, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else
  br label %sw.epilog

sw.bb.14:                                         ; preds = %while.body
  store i32 1, i32* %endfmt, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %while.body
  %13 = load i8*, i8** %format.addr, align 8
  store i8* %13, i8** %fname, align 8
  store i32 1, i32* %endfmt, align 4
  br label %sw.epilog

sw.bb.16:                                         ; preds = %while.body
  %14 = load i8*, i8** %format.addr, align 8
  store i8* %14, i8** %message, align 8
  store i32 1, i32* %endfmt, align 4
  br label %sw.epilog

sw.bb.17:                                         ; preds = %while.body
  %15 = load i32, i32* %level, align 4
  %cmp18 = icmp eq i32 %15, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %sw.bb.17
  %16 = load i32, i32* %max, align 4
  store i32 %16, i32* %min, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %sw.bb.17
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %17 = load i32, i32* %level, align 4
  %cmp22 = icmp eq i32 %17, 0
  br i1 %cmp22, label %if.then.24, label %if.end.38

if.then.24:                                       ; preds = %sw.default
  %18 = load i32, i32* %c, align 4
  %and25 = and i32 %18, 255
  %conv26 = trunc i32 %and25 to i8
  %conv27 = zext i8 %conv26 to i32
  %and28 = and i32 %conv27, 255
  %conv29 = trunc i32 %and28 to i8
  %idxprom = zext i8 %conv29 to i64
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom
  %19 = load i32, i32* %arrayidx, align 4
  %and30 = and i32 %19, 3
  %tobool = icmp ne i32 %and30, 0
  br i1 %tobool, label %if.then.31, label %if.end.37

if.then.31:                                       ; preds = %if.then.24
  %20 = load i32, i32* %c, align 4
  %cmp32 = icmp ne i32 %20, 101
  br i1 %cmp32, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.then.31
  %21 = load i32, i32* %max, align 4
  %inc35 = add i32 %21, 1
  store i32 %inc35, i32* %max, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.then.31
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.24
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.38, %if.end.21, %sw.bb.16, %sw.bb.15, %sw.bb.14, %if.end.13, %if.end.8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %22 = load i32, i32* %level, align 4
  %cmp39 = icmp ne i32 %22, 0
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %while.end
  call void @Py_FatalError(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0)) #6
  unreachable

if.end.42:                                        ; preds = %while.end
  %23 = load i32, i32* %min, align 4
  %cmp43 = icmp slt i32 %23, 0
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.42
  %24 = load i32, i32* %max, align 4
  store i32 %24, i32* %min, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.end.42
  %25 = load i8*, i8** %formatsave, align 8
  store i8* %25, i8** %format.addr, align 8
  %26 = load i32, i32* %max, align 4
  %cmp47 = icmp sgt i32 %26, 8
  br i1 %cmp47, label %if.then.49, label %if.end.62

if.then.49:                                       ; preds = %if.end.46
  %27 = load i32, i32* %max, align 4
  %conv50 = sext i32 %27 to i64
  %cmp51 = icmp ugt i64 %conv50, 576460752303423487
  br i1 %cmp51, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.49
  br label %cond.end

cond.false:                                       ; preds = %if.then.49
  %28 = load i32, i32* %max, align 4
  %conv53 = sext i32 %28 to i64
  %mul = mul i64 %conv53, 16
  %call = call i8* @PyMem_Malloc(i64 %mul)
  %29 = bitcast i8* %call to %struct.freelistentry_t*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.freelistentry_t* [ null, %cond.true ], [ %29, %cond.false ]
  %entries54 = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i32 0, i32 0
  store %struct.freelistentry_t* %cond, %struct.freelistentry_t** %entries54, align 8
  %entries55 = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i32 0, i32 0
  %30 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries55, align 8
  %cmp56 = icmp eq %struct.freelistentry_t* %30, null
  br i1 %cmp56, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %cond.end
  %call59 = call %struct._object* @PyErr_NoMemory()
  store i32 0, i32* %retval
  br label %return

if.end.60:                                        ; preds = %cond.end
  %entries_malloced61 = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i32 0, i32 2
  store i32 1, i32* %entries_malloced61, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.60, %if.end.46
  %31 = load i32, i32* %compat, align 4
  %tobool63 = icmp ne i32 %31, 0
  br i1 %tobool63, label %if.then.64, label %if.end.118

if.then.64:                                       ; preds = %if.end.62
  %32 = load i32, i32* %max, align 4
  %cmp65 = icmp eq i32 %32, 0
  br i1 %cmp65, label %if.then.67, label %if.else.83

if.then.67:                                       ; preds = %if.then.64
  %33 = load %struct._object*, %struct._object** %args.addr, align 8
  %cmp68 = icmp eq %struct._object* %33, null
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.then.67
  store i32 1, i32* %retval
  br label %return

if.end.71:                                        ; preds = %if.then.67
  %34 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %35 = load i8*, i8** %fname, align 8
  %cmp72 = icmp eq i8* %35, null
  br i1 %cmp72, label %cond.true.74, label %cond.false.75

cond.true.74:                                     ; preds = %if.end.71
  br label %cond.end.76

cond.false.75:                                    ; preds = %if.end.71
  %36 = load i8*, i8** %fname, align 8
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.75, %cond.true.74
  %cond77 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), %cond.true.74 ], [ %36, %cond.false.75 ]
  %37 = load i8*, i8** %fname, align 8
  %cmp78 = icmp eq i8* %37, null
  %cond80 = select i1 %cmp78, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0)
  %call81 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0), i8* %cond77, i8* %cond80)
  %call82 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist)
  store i32 %call82, i32* %retval
  br label %return

if.else.83:                                       ; preds = %if.then.64
  %38 = load i32, i32* %min, align 4
  %cmp84 = icmp eq i32 %38, 1
  br i1 %cmp84, label %land.lhs.true, label %if.else.116

land.lhs.true:                                    ; preds = %if.else.83
  %39 = load i32, i32* %max, align 4
  %cmp86 = icmp eq i32 %39, 1
  br i1 %cmp86, label %if.then.88, label %if.else.116

if.then.88:                                       ; preds = %land.lhs.true
  %40 = load %struct._object*, %struct._object** %args.addr, align 8
  %cmp89 = icmp eq %struct._object* %40, null
  br i1 %cmp89, label %if.then.91, label %if.end.103

if.then.91:                                       ; preds = %if.then.88
  %41 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %42 = load i8*, i8** %fname, align 8
  %cmp92 = icmp eq i8* %42, null
  br i1 %cmp92, label %cond.true.94, label %cond.false.95

cond.true.94:                                     ; preds = %if.then.91
  br label %cond.end.96

cond.false.95:                                    ; preds = %if.then.91
  %43 = load i8*, i8** %fname, align 8
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.95, %cond.true.94
  %cond97 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), %cond.true.94 ], [ %43, %cond.false.95 ]
  %44 = load i8*, i8** %fname, align 8
  %cmp98 = icmp eq i8* %44, null
  %cond100 = select i1 %cmp98, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0)
  %call101 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i32 0, i32 0), i8* %cond97, i8* %cond100)
  %call102 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist)
  store i32 %call102, i32* %retval
  br label %return

if.end.103:                                       ; preds = %if.then.88
  %45 = load %struct._object*, %struct._object** %args.addr, align 8
  %46 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %47 = load i32, i32* %flags.addr, align 4
  %arraydecay104 = getelementptr inbounds [32 x i32], [32 x i32]* %levels, i32 0, i32 0
  %arraydecay105 = getelementptr inbounds [256 x i8], [256 x i8]* %msgbuf, i32 0, i32 0
  %call106 = call i8* @convertitem(%struct._object* %45, i8** %format.addr, [1 x %struct.__va_list_tag]* %46, i32 %47, i32* %arraydecay104, i8* %arraydecay105, i64 256, %struct.freelist_t* %freelist)
  store i8* %call106, i8** %msg, align 8
  %48 = load i8*, i8** %msg, align 8
  %cmp107 = icmp eq i8* %48, null
  br i1 %cmp107, label %if.then.109, label %if.end.111

if.then.109:                                      ; preds = %if.end.103
  %call110 = call i32 @cleanreturn(i32 1, %struct.freelist_t* %freelist)
  store i32 %call110, i32* %retval
  br label %return

if.end.111:                                       ; preds = %if.end.103
  %arrayidx112 = getelementptr [32 x i32], [32 x i32]* %levels, i32 0, i64 0
  %49 = load i32, i32* %arrayidx112, align 4
  %conv113 = sext i32 %49 to i64
  %50 = load i8*, i8** %msg, align 8
  %arraydecay114 = getelementptr inbounds [32 x i32], [32 x i32]* %levels, i32 0, i32 0
  %add.ptr = getelementptr i32, i32* %arraydecay114, i64 1
  %51 = load i8*, i8** %fname, align 8
  %52 = load i8*, i8** %message, align 8
  call void @seterror(i64 %conv113, i8* %50, i32* %add.ptr, i8* %51, i8* %52)
  %call115 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist)
  store i32 %call115, i32* %retval
  br label %return

if.else.116:                                      ; preds = %land.lhs.true, %if.else.83
  %53 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %53, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i32 0, i32 0))
  %call117 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist)
  store i32 %call117, i32* %retval
  br label %return

if.end.118:                                       ; preds = %if.end.62
  %54 = load %struct._object*, %struct._object** %args.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 19
  %56 = load i64, i64* %tp_flags, align 8
  %and119 = and i64 %56, 67108864
  %cmp120 = icmp ne i64 %and119, 0
  br i1 %cmp120, label %if.end.124, label %if.then.122

if.then.122:                                      ; preds = %if.end.118
  %57 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %57, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.18, i32 0, i32 0))
  %call123 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist)
  store i32 %call123, i32* %retval
  br label %return

if.end.124:                                       ; preds = %if.end.118
  %58 = load %struct._object*, %struct._object** %args.addr, align 8
  %59 = bitcast %struct._object* %58 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %59, i32 0, i32 1
  %60 = load i64, i64* %ob_size, align 8
  store i64 %60, i64* %len, align 8
  %61 = load i64, i64* %len, align 8
  %62 = load i32, i32* %min, align 4
  %conv125 = sext i32 %62 to i64
  %cmp126 = icmp slt i64 %61, %conv125
  br i1 %cmp126, label %if.then.131, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.124
  %63 = load i32, i32* %max, align 4
  %conv128 = sext i32 %63 to i64
  %64 = load i64, i64* %len, align 8
  %cmp129 = icmp slt i64 %conv128, %64
  br i1 %cmp129, label %if.then.131, label %if.end.175

if.then.131:                                      ; preds = %lor.lhs.false, %if.end.124
  %65 = load i8*, i8** %message, align 8
  %cmp132 = icmp eq i8* %65, null
  br i1 %cmp132, label %if.then.134, label %if.else.172

if.then.134:                                      ; preds = %if.then.131
  %66 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %67 = load i8*, i8** %fname, align 8
  %cmp135 = icmp eq i8* %67, null
  br i1 %cmp135, label %cond.true.137, label %cond.false.138

cond.true.137:                                    ; preds = %if.then.134
  br label %cond.end.139

cond.false.138:                                   ; preds = %if.then.134
  %68 = load i8*, i8** %fname, align 8
  br label %cond.end.139

cond.end.139:                                     ; preds = %cond.false.138, %cond.true.137
  %cond140 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), %cond.true.137 ], [ %68, %cond.false.138 ]
  %69 = load i8*, i8** %fname, align 8
  %cmp141 = icmp eq i8* %69, null
  %cond143 = select i1 %cmp141, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0)
  %70 = load i32, i32* %min, align 4
  %71 = load i32, i32* %max, align 4
  %cmp144 = icmp eq i32 %70, %71
  br i1 %cmp144, label %cond.true.146, label %cond.false.147

cond.true.146:                                    ; preds = %cond.end.139
  br label %cond.end.152

cond.false.147:                                   ; preds = %cond.end.139
  %72 = load i64, i64* %len, align 8
  %73 = load i32, i32* %min, align 4
  %conv148 = sext i32 %73 to i64
  %cmp149 = icmp slt i64 %72, %conv148
  %cond151 = select i1 %cmp149, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0)
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.false.147, %cond.true.146
  %cond153 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), %cond.true.146 ], [ %cond151, %cond.false.147 ]
  %74 = load i64, i64* %len, align 8
  %75 = load i32, i32* %min, align 4
  %conv154 = sext i32 %75 to i64
  %cmp155 = icmp slt i64 %74, %conv154
  br i1 %cmp155, label %cond.true.157, label %cond.false.158

cond.true.157:                                    ; preds = %cond.end.152
  %76 = load i32, i32* %min, align 4
  br label %cond.end.159

cond.false.158:                                   ; preds = %cond.end.152
  %77 = load i32, i32* %max, align 4
  br label %cond.end.159

cond.end.159:                                     ; preds = %cond.false.158, %cond.true.157
  %cond160 = phi i32 [ %76, %cond.true.157 ], [ %77, %cond.false.158 ]
  %78 = load i64, i64* %len, align 8
  %79 = load i32, i32* %min, align 4
  %conv161 = sext i32 %79 to i64
  %cmp162 = icmp slt i64 %78, %conv161
  br i1 %cmp162, label %cond.true.164, label %cond.false.165

cond.true.164:                                    ; preds = %cond.end.159
  %80 = load i32, i32* %min, align 4
  br label %cond.end.166

cond.false.165:                                   ; preds = %cond.end.159
  %81 = load i32, i32* %max, align 4
  br label %cond.end.166

cond.end.166:                                     ; preds = %cond.false.165, %cond.true.164
  %cond167 = phi i32 [ %80, %cond.true.164 ], [ %81, %cond.false.165 ]
  %cmp168 = icmp eq i32 %cond167, 1
  %cond170 = select i1 %cmp168, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0)
  %82 = load i64, i64* %len, align 8
  %call171 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %66, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i32 0, i32 0), i8* %cond140, i8* %cond143, i8* %cond153, i32 %cond160, i8* %cond170, i64 %82)
  br label %if.end.173

if.else.172:                                      ; preds = %if.then.131
  %83 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %84 = load i8*, i8** %message, align 8
  call void @PyErr_SetString(%struct._object* %83, i8* %84)
  br label %if.end.173

if.end.173:                                       ; preds = %if.else.172, %cond.end.166
  %call174 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist)
  store i32 %call174, i32* %retval
  br label %return

if.end.175:                                       ; preds = %lor.lhs.false
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.175
  %85 = load i64, i64* %i, align 8
  %86 = load i64, i64* %len, align 8
  %cmp176 = icmp slt i64 %85, %86
  br i1 %cmp176, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %87 = load i8*, i8** %format.addr, align 8
  %88 = load i8, i8* %87, align 1
  %conv178 = sext i8 %88 to i32
  %cmp179 = icmp eq i32 %conv178, 124
  br i1 %cmp179, label %if.then.181, label %if.end.183

if.then.181:                                      ; preds = %for.body
  %89 = load i8*, i8** %format.addr, align 8
  %incdec.ptr182 = getelementptr i8, i8* %89, i32 1
  store i8* %incdec.ptr182, i8** %format.addr, align 8
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.181, %for.body
  %90 = load i64, i64* %i, align 8
  %91 = load %struct._object*, %struct._object** %args.addr, align 8
  %92 = bitcast %struct._object* %91 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %92, i32 0, i32 1
  %arrayidx184 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %90
  %93 = load %struct._object*, %struct._object** %arrayidx184, align 8
  %94 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %95 = load i32, i32* %flags.addr, align 4
  %arraydecay185 = getelementptr inbounds [32 x i32], [32 x i32]* %levels, i32 0, i32 0
  %arraydecay186 = getelementptr inbounds [256 x i8], [256 x i8]* %msgbuf, i32 0, i32 0
  %call187 = call i8* @convertitem(%struct._object* %93, i8** %format.addr, [1 x %struct.__va_list_tag]* %94, i32 %95, i32* %arraydecay185, i8* %arraydecay186, i64 256, %struct.freelist_t* %freelist)
  store i8* %call187, i8** %msg, align 8
  %96 = load i8*, i8** %msg, align 8
  %tobool188 = icmp ne i8* %96, null
  br i1 %tobool188, label %if.then.189, label %if.end.192

if.then.189:                                      ; preds = %if.end.183
  %97 = load i64, i64* %i, align 8
  %add = add i64 %97, 1
  %98 = load i8*, i8** %msg, align 8
  %arraydecay190 = getelementptr inbounds [32 x i32], [32 x i32]* %levels, i32 0, i32 0
  %99 = load i8*, i8** %fname, align 8
  %100 = load i8*, i8** %msg, align 8
  call void @seterror(i64 %add, i8* %98, i32* %arraydecay190, i8* %99, i8* %100)
  %call191 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist)
  store i32 %call191, i32* %retval
  br label %return

if.end.192:                                       ; preds = %if.end.183
  br label %for.inc

for.inc:                                          ; preds = %if.end.192
  %101 = load i64, i64* %i, align 8
  %inc193 = add i64 %101, 1
  store i64 %inc193, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %102 = load i8*, i8** %format.addr, align 8
  %103 = load i8, i8* %102, align 1
  %conv194 = sext i8 %103 to i32
  %cmp195 = icmp ne i32 %conv194, 0
  br i1 %cmp195, label %land.lhs.true.197, label %if.end.227

land.lhs.true.197:                                ; preds = %for.end
  %104 = load i8*, i8** %format.addr, align 8
  %105 = load i8, i8* %104, align 1
  %conv198 = sext i8 %105 to i32
  %and199 = and i32 %conv198, 255
  %conv200 = trunc i32 %and199 to i8
  %conv201 = zext i8 %conv200 to i32
  %and202 = and i32 %conv201, 255
  %conv203 = trunc i32 %and202 to i8
  %idxprom204 = zext i8 %conv203 to i64
  %arrayidx205 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom204
  %106 = load i32, i32* %arrayidx205, align 4
  %and206 = and i32 %106, 3
  %tobool207 = icmp ne i32 %and206, 0
  br i1 %tobool207, label %if.end.227, label %land.lhs.true.208

land.lhs.true.208:                                ; preds = %land.lhs.true.197
  %107 = load i8*, i8** %format.addr, align 8
  %108 = load i8, i8* %107, align 1
  %conv209 = sext i8 %108 to i32
  %cmp210 = icmp ne i32 %conv209, 40
  br i1 %cmp210, label %land.lhs.true.212, label %if.end.227

land.lhs.true.212:                                ; preds = %land.lhs.true.208
  %109 = load i8*, i8** %format.addr, align 8
  %110 = load i8, i8* %109, align 1
  %conv213 = sext i8 %110 to i32
  %cmp214 = icmp ne i32 %conv213, 124
  br i1 %cmp214, label %land.lhs.true.216, label %if.end.227

land.lhs.true.216:                                ; preds = %land.lhs.true.212
  %111 = load i8*, i8** %format.addr, align 8
  %112 = load i8, i8* %111, align 1
  %conv217 = sext i8 %112 to i32
  %cmp218 = icmp ne i32 %conv217, 58
  br i1 %cmp218, label %land.lhs.true.220, label %if.end.227

land.lhs.true.220:                                ; preds = %land.lhs.true.216
  %113 = load i8*, i8** %format.addr, align 8
  %114 = load i8, i8* %113, align 1
  %conv221 = sext i8 %114 to i32
  %cmp222 = icmp ne i32 %conv221, 59
  br i1 %cmp222, label %if.then.224, label %if.end.227

if.then.224:                                      ; preds = %land.lhs.true.220
  %115 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  %116 = load i8*, i8** %formatsave, align 8
  %call225 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %115, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i32 0, i32 0), i8* %116)
  %call226 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist)
  store i32 %call226, i32* %retval
  br label %return

if.end.227:                                       ; preds = %land.lhs.true.220, %land.lhs.true.216, %land.lhs.true.212, %land.lhs.true.208, %land.lhs.true.197, %for.end
  %call228 = call i32 @cleanreturn(i32 1, %struct.freelist_t* %freelist)
  store i32 %call228, i32* %retval
  br label %return

return:                                           ; preds = %if.end.227, %if.then.224, %if.then.189, %if.end.173, %if.then.122, %if.else.116, %if.end.111, %if.then.109, %cond.end.96, %cond.end.76, %if.then.70, %if.then.58
  %117 = load i32, i32* %retval
  ret i32 %117
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @_PyArg_Parse_SizeT(%struct._object* %args, i8* %format, ...) #0 {
entry:
  %args.addr = alloca %struct._object*, align 8
  %format.addr = alloca i8*, align 8
  %retval1 = alloca i32, align 4
  %va = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay2 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay2)
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load i8*, i8** %format.addr, align 8
  %call = call i32 @vgetargs1(%struct._object* %0, i8* %1, [1 x %struct.__va_list_tag]* %va, i32 3)
  store i32 %call, i32* %retval1, align 4
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %2 = load i32, i32* %retval1, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @PyArg_ParseTuple(%struct._object* %args, i8* %format, ...) #0 {
entry:
  %args.addr = alloca %struct._object*, align 8
  %format.addr = alloca i8*, align 8
  %retval1 = alloca i32, align 4
  %va = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay2 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay2)
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load i8*, i8** %format.addr, align 8
  %call = call i32 @vgetargs1(%struct._object* %0, i8* %1, [1 x %struct.__va_list_tag]* %va, i32 0)
  store i32 %call, i32* %retval1, align 4
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %2 = load i32, i32* %retval1, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* %format, ...) #0 {
entry:
  %args.addr = alloca %struct._object*, align 8
  %format.addr = alloca i8*, align 8
  %retval1 = alloca i32, align 4
  %va = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay2 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay2)
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load i8*, i8** %format.addr, align 8
  %call = call i32 @vgetargs1(%struct._object* %0, i8* %1, [1 x %struct.__va_list_tag]* %va, i32 2)
  store i32 %call, i32* %retval1, align 4
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %2 = load i32, i32* %retval1, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @PyArg_VaParse(%struct._object* %args, i8* %format, %struct.__va_list_tag* %va) #0 {
entry:
  %args.addr = alloca %struct._object*, align 8
  %format.addr = alloca i8*, align 8
  %va.addr = alloca %struct.__va_list_tag*, align 8
  %lva = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct.__va_list_tag* %va, %struct.__va_list_tag** %va.addr, align 8
  %0 = bitcast [1 x %struct.__va_list_tag]* %lva to i8*
  %1 = load %struct.__va_list_tag*, %struct.__va_list_tag** %va.addr, align 8
  %2 = bitcast %struct.__va_list_tag* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %2, i64 24, i32 8, i1 false)
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %4 = load i8*, i8** %format.addr, align 8
  %call = call i32 @vgetargs1(%struct._object* %3, i8* %4, [1 x %struct.__va_list_tag]* %lva, i32 0)
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @_PyArg_VaParse_SizeT(%struct._object* %args, i8* %format, %struct.__va_list_tag* %va) #0 {
entry:
  %args.addr = alloca %struct._object*, align 8
  %format.addr = alloca i8*, align 8
  %va.addr = alloca %struct.__va_list_tag*, align 8
  %lva = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct.__va_list_tag* %va, %struct.__va_list_tag** %va.addr, align 8
  %0 = bitcast [1 x %struct.__va_list_tag]* %lva to i8*
  %1 = load %struct.__va_list_tag*, %struct.__va_list_tag** %va.addr, align 8
  %2 = bitcast %struct.__va_list_tag* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %2, i64 24, i32 8, i1 false)
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %4 = load i8*, i8** %format.addr, align 8
  %call = call i32 @vgetargs1(%struct._object* %3, i8* %4, [1 x %struct.__va_list_tag]* %lva, i32 2)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @PyArg_ParseTupleAndKeywords(%struct._object* %args, %struct._object* %keywords, i8* %format, i8** %kwlist, ...) #0 {
entry:
  %retval = alloca i32, align 4
  %args.addr = alloca %struct._object*, align 8
  %keywords.addr = alloca %struct._object*, align 8
  %format.addr = alloca i8*, align 8
  %kwlist.addr = alloca i8**, align 8
  %retval1 = alloca i32, align 4
  %va = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %keywords, %struct._object** %keywords.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store i8** %kwlist, i8*** %kwlist.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 67108864
  %cmp2 = icmp ne i64 %and, 0
  br i1 %cmp2, label %lor.lhs.false.3, label %if.then

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %keywords.addr, align 8
  %cmp4 = icmp ne %struct._object* %4, null
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false.9

land.lhs.true:                                    ; preds = %lor.lhs.false.3
  %5 = load %struct._object*, %struct._object** %keywords.addr, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %tp_flags6 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 19
  %7 = load i64, i64* %tp_flags6, align 8
  %and7 = and i64 %7, 536870912
  %cmp8 = icmp ne i64 %and7, 0
  br i1 %cmp8, label %lor.lhs.false.9, label %if.then

lor.lhs.false.9:                                  ; preds = %land.lhs.true, %lor.lhs.false.3
  %8 = load i8*, i8** %format.addr, align 8
  %cmp10 = icmp eq i8* %8, null
  br i1 %cmp10, label %if.then, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.9
  %9 = load i8**, i8*** %kwlist.addr, align 8
  %cmp12 = icmp eq i8** %9, null
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.11, %lor.lhs.false.9, %land.lhs.true, %lor.lhs.false, %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1331)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.11
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay13 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay13)
  %10 = load %struct._object*, %struct._object** %args.addr, align 8
  %11 = load %struct._object*, %struct._object** %keywords.addr, align 8
  %12 = load i8*, i8** %format.addr, align 8
  %13 = load i8**, i8*** %kwlist.addr, align 8
  %call = call i32 @vgetargskeywords(%struct._object* %10, %struct._object* %11, i8* %12, i8** %13, [1 x %struct.__va_list_tag]* %va, i32 0)
  store i32 %call, i32* %retval1, align 4
  %arraydecay14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay1415 = bitcast %struct.__va_list_tag* %arraydecay14 to i8*
  call void @llvm.va_end(i8* %arraydecay1415)
  %14 = load i32, i32* %retval1, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare void @_PyErr_BadInternalCall(i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @vgetargskeywords(%struct._object* %args, %struct._object* %keywords, i8* %format, i8** %kwlist, [1 x %struct.__va_list_tag]* %p_va, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %args.addr = alloca %struct._object*, align 8
  %keywords.addr = alloca %struct._object*, align 8
  %format.addr = alloca i8*, align 8
  %kwlist.addr = alloca i8**, align 8
  %p_va.addr = alloca [1 x %struct.__va_list_tag]*, align 8
  %flags.addr = alloca i32, align 4
  %msgbuf = alloca [512 x i8], align 16
  %levels = alloca [32 x i32], align 16
  %fname = alloca i8*, align 8
  %msg = alloca i8*, align 8
  %custom_msg = alloca i8*, align 8
  %keyword = alloca i8*, align 8
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %nargs = alloca i64, align 8
  %nkeywords = alloca i64, align 8
  %current_arg = alloca %struct._object*, align 8
  %static_entries = alloca [8 x %struct.freelistentry_t], align 16
  %freelist = alloca %struct.freelist_t, align 8
  %key = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %pos = alloca i64, align 8
  %match = alloca i32, align 4
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %keywords, %struct._object** %keywords.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store i8** %kwlist, i8*** %kwlist.addr, align 8
  store [1 x %struct.__va_list_tag]* %p_va, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i32 2147483647, i32* %min, align 4
  store i32 2147483647, i32* %max, align 4
  %arraydecay = getelementptr inbounds [8 x %struct.freelistentry_t], [8 x %struct.freelistentry_t]* %static_entries, i32 0, i32 0
  %entries = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i32 0, i32 0
  store %struct.freelistentry_t* %arraydecay, %struct.freelistentry_t** %entries, align 8
  %first_available = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i32 0, i32 1
  store i32 0, i32* %first_available, align 4
  %entries_malloced = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i32 0, i32 2
  store i32 0, i32* %entries_malloced, align 4
  %0 = load i8*, i8** %format.addr, align 8
  %call = call i8* @strchr(i8* %0, i32 58) #7
  store i8* %call, i8** %fname, align 8
  %1 = load i8*, i8** %fname, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %fname, align 8
  %incdec.ptr = getelementptr i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %fname, align 8
  store i8* null, i8** %custom_msg, align 8
  br label %if.end.5

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %format.addr, align 8
  %call1 = call i8* @strchr(i8* %3, i32 59) #7
  store i8* %call1, i8** %custom_msg, align 8
  %4 = load i8*, i8** %custom_msg, align 8
  %tobool2 = icmp ne i8* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  %5 = load i8*, i8** %custom_msg, align 8
  %incdec.ptr4 = getelementptr i8, i8* %5, i32 1
  store i8* %incdec.ptr4, i8** %custom_msg, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  store i32 0, i32* %len, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %6 = load i32, i32* %len, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i8**, i8*** %kwlist.addr, align 8
  %arrayidx = getelementptr i8*, i8** %7, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8
  %tobool6 = icmp ne i8* %8, null
  br i1 %tobool6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %len, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %len, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %len, align 4
  %cmp = icmp sgt i32 %10, 8
  br i1 %cmp, label %if.then.7, label %if.end.20

if.then.7:                                        ; preds = %for.end
  %11 = load i32, i32* %len, align 4
  %conv = sext i32 %11 to i64
  %cmp8 = icmp ugt i64 %conv, 576460752303423487
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.7
  br label %cond.end

cond.false:                                       ; preds = %if.then.7
  %12 = load i32, i32* %len, align 4
  %conv10 = sext i32 %12 to i64
  %mul = mul i64 %conv10, 16
  %call11 = call i8* @PyMem_Malloc(i64 %mul)
  %13 = bitcast i8* %call11 to %struct.freelistentry_t*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.freelistentry_t* [ null, %cond.true ], [ %13, %cond.false ]
  %entries12 = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i32 0, i32 0
  store %struct.freelistentry_t* %cond, %struct.freelistentry_t** %entries12, align 8
  %entries13 = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i32 0, i32 0
  %14 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries13, align 8
  %cmp14 = icmp eq %struct.freelistentry_t* %14, null
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %cond.end
  %call17 = call %struct._object* @PyErr_NoMemory()
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %cond.end
  %entries_malloced19 = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i32 0, i32 2
  store i32 1, i32* %entries_malloced19, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.18, %for.end
  %15 = load %struct._object*, %struct._object** %args.addr, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %16, i32 0, i32 1
  %17 = load i64, i64* %ob_size, align 8
  store i64 %17, i64* %nargs, align 8
  %18 = load %struct._object*, %struct._object** %keywords.addr, align 8
  %cmp21 = icmp eq %struct._object* %18, null
  br i1 %cmp21, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %if.end.20
  br label %cond.end.26

cond.false.24:                                    ; preds = %if.end.20
  %19 = load %struct._object*, %struct._object** %keywords.addr, align 8
  %call25 = call i64 @PyDict_Size(%struct._object* %19)
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.24, %cond.true.23
  %cond27 = phi i64 [ 0, %cond.true.23 ], [ %call25, %cond.false.24 ]
  store i64 %cond27, i64* %nkeywords, align 8
  %20 = load i64, i64* %nargs, align 8
  %21 = load i64, i64* %nkeywords, align 8
  %add = add i64 %20, %21
  %22 = load i32, i32* %len, align 4
  %conv28 = sext i32 %22 to i64
  %cmp29 = icmp sgt i64 %add, %conv28
  br i1 %cmp29, label %if.then.31, label %if.end.47

if.then.31:                                       ; preds = %cond.end.26
  %23 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %24 = load i8*, i8** %fname, align 8
  %cmp32 = icmp eq i8* %24, null
  br i1 %cmp32, label %cond.true.34, label %cond.false.35

cond.true.34:                                     ; preds = %if.then.31
  br label %cond.end.36

cond.false.35:                                    ; preds = %if.then.31
  %25 = load i8*, i8** %fname, align 8
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.35, %cond.true.34
  %cond37 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), %cond.true.34 ], [ %25, %cond.false.35 ]
  %26 = load i8*, i8** %fname, align 8
  %cmp38 = icmp eq i8* %26, null
  %cond40 = select i1 %cmp38, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0)
  %27 = load i32, i32* %len, align 4
  %28 = load i32, i32* %len, align 4
  %cmp41 = icmp eq i32 %28, 1
  %cond43 = select i1 %cmp41, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0)
  %29 = load i64, i64* %nargs, align 8
  %30 = load i64, i64* %nkeywords, align 8
  %add44 = add i64 %29, %30
  %call45 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %23, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.74, i32 0, i32 0), i8* %cond37, i8* %cond40, i32 %27, i8* %cond43, i64 %add44)
  %call46 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist)
  store i32 %call46, i32* %retval
  br label %return

if.end.47:                                        ; preds = %cond.end.26
  store i32 0, i32* %i, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.165, %if.end.47
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %len, align 4
  %cmp49 = icmp slt i32 %31, %32
  br i1 %cmp49, label %for.body.51, label %for.end.167

for.body.51:                                      ; preds = %for.cond.48
  %33 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %33 to i64
  %34 = load i8**, i8*** %kwlist.addr, align 8
  %arrayidx53 = getelementptr i8*, i8** %34, i64 %idxprom52
  %35 = load i8*, i8** %arrayidx53, align 8
  store i8* %35, i8** %keyword, align 8
  %36 = load i8*, i8** %format.addr, align 8
  %37 = load i8, i8* %36, align 1
  %conv54 = sext i8 %37 to i32
  %cmp55 = icmp eq i32 %conv54, 124
  br i1 %cmp55, label %if.then.57, label %if.end.69

if.then.57:                                       ; preds = %for.body.51
  %38 = load i32, i32* %min, align 4
  %cmp58 = icmp ne i32 %38, 2147483647
  br i1 %cmp58, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %if.then.57
  %39 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %39, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.75, i32 0, i32 0))
  %call61 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist)
  store i32 %call61, i32* %retval
  br label %return

if.end.62:                                        ; preds = %if.then.57
  %40 = load i32, i32* %i, align 4
  store i32 %40, i32* %min, align 4
  %41 = load i8*, i8** %format.addr, align 8
  %incdec.ptr63 = getelementptr i8, i8* %41, i32 1
  store i8* %incdec.ptr63, i8** %format.addr, align 8
  %42 = load i32, i32* %max, align 4
  %cmp64 = icmp ne i32 %42, 2147483647
  br i1 %cmp64, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %if.end.62
  %43 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.76, i32 0, i32 0))
  %call67 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist)
  store i32 %call67, i32* %retval
  br label %return

if.end.68:                                        ; preds = %if.end.62
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %for.body.51
  %44 = load i8*, i8** %format.addr, align 8
  %45 = load i8, i8* %44, align 1
  %conv70 = sext i8 %45 to i32
  %cmp71 = icmp eq i32 %conv70, 36
  br i1 %cmp71, label %if.then.73, label %if.end.90

if.then.73:                                       ; preds = %if.end.69
  %46 = load i32, i32* %max, align 4
  %cmp74 = icmp ne i32 %46, 2147483647
  br i1 %cmp74, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %if.then.73
  %47 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %47, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.77, i32 0, i32 0))
  %call77 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist)
  store i32 %call77, i32* %retval
  br label %return

if.end.78:                                        ; preds = %if.then.73
  %48 = load i32, i32* %i, align 4
  store i32 %48, i32* %max, align 4
  %49 = load i8*, i8** %format.addr, align 8
  %incdec.ptr79 = getelementptr i8, i8* %49, i32 1
  store i8* %incdec.ptr79, i8** %format.addr, align 8
  %50 = load i32, i32* %max, align 4
  %conv80 = sext i32 %50 to i64
  %51 = load i64, i64* %nargs, align 8
  %cmp81 = icmp slt i64 %conv80, %51
  br i1 %cmp81, label %if.then.83, label %if.end.89

if.then.83:                                       ; preds = %if.end.78
  %52 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %53 = load i32, i32* %min, align 4
  %cmp84 = icmp ne i32 %53, 2147483647
  %cond86 = select i1 %cmp84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0)
  %54 = load i32, i32* %max, align 4
  %55 = load i64, i64* %nargs, align 8
  %call87 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %52, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.78, i32 0, i32 0), i8* %cond86, i32 %54, i64 %55)
  %call88 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist)
  store i32 %call88, i32* %retval
  br label %return

if.end.89:                                        ; preds = %if.end.78
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.end.69
  %56 = load i8*, i8** %format.addr, align 8
  %57 = load i8, i8* %56, align 1
  %conv91 = sext i8 %57 to i32
  %cmp92 = icmp eq i32 %conv91, 0
  br i1 %cmp92, label %if.then.101, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.90
  %58 = load i8*, i8** %format.addr, align 8
  %59 = load i8, i8* %58, align 1
  %conv94 = sext i8 %59 to i32
  %cmp95 = icmp eq i32 %conv94, 59
  br i1 %cmp95, label %if.then.101, label %lor.lhs.false.97

lor.lhs.false.97:                                 ; preds = %lor.lhs.false
  %60 = load i8*, i8** %format.addr, align 8
  %61 = load i8, i8* %60, align 1
  %conv98 = sext i8 %61 to i32
  %cmp99 = icmp eq i32 %conv98, 58
  br i1 %cmp99, label %if.then.101, label %if.end.104

if.then.101:                                      ; preds = %lor.lhs.false.97, %lor.lhs.false, %if.end.90
  %62 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  %63 = load i32, i32* %len, align 4
  %64 = load i32, i32* %i, align 4
  %call102 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %62, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.79, i32 0, i32 0), i32 %63, i32 %64)
  %call103 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist)
  store i32 %call103, i32* %retval
  br label %return

if.end.104:                                       ; preds = %lor.lhs.false.97
  store %struct._object* null, %struct._object** %current_arg, align 8
  %65 = load i64, i64* %nkeywords, align 8
  %tobool105 = icmp ne i64 %65, 0
  br i1 %tobool105, label %if.then.106, label %if.end.108

if.then.106:                                      ; preds = %if.end.104
  %66 = load %struct._object*, %struct._object** %keywords.addr, align 8
  %67 = load i8*, i8** %keyword, align 8
  %call107 = call %struct._object* @PyDict_GetItemString(%struct._object* %66, i8* %67)
  store %struct._object* %call107, %struct._object** %current_arg, align 8
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.106, %if.end.104
  %68 = load %struct._object*, %struct._object** %current_arg, align 8
  %tobool109 = icmp ne %struct._object* %68, null
  br i1 %tobool109, label %if.then.110, label %if.else.119

if.then.110:                                      ; preds = %if.end.108
  %69 = load i64, i64* %nkeywords, align 8
  %dec = add i64 %69, -1
  store i64 %dec, i64* %nkeywords, align 8
  %70 = load i32, i32* %i, align 4
  %conv111 = sext i32 %70 to i64
  %71 = load i64, i64* %nargs, align 8
  %cmp112 = icmp slt i64 %conv111, %71
  br i1 %cmp112, label %if.then.114, label %if.end.118

if.then.114:                                      ; preds = %if.then.110
  %72 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %73 = load i8*, i8** %keyword, align 8
  %74 = load i32, i32* %i, align 4
  %add115 = add i32 %74, 1
  %call116 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %72, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.80, i32 0, i32 0), i8* %73, i32 %add115)
  %call117 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist)
  store i32 %call117, i32* %retval
  br label %return

if.end.118:                                       ; preds = %if.then.110
  br label %if.end.134

if.else.119:                                      ; preds = %if.end.108
  %75 = load i64, i64* %nkeywords, align 8
  %tobool120 = icmp ne i64 %75, 0
  br i1 %tobool120, label %land.lhs.true, label %if.else.125

land.lhs.true:                                    ; preds = %if.else.119
  %call121 = call %struct._object* @PyErr_Occurred()
  %tobool122 = icmp ne %struct._object* %call121, null
  br i1 %tobool122, label %if.then.123, label %if.else.125

if.then.123:                                      ; preds = %land.lhs.true
  %call124 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist)
  store i32 %call124, i32* %retval
  br label %return

if.else.125:                                      ; preds = %land.lhs.true, %if.else.119
  %76 = load i32, i32* %i, align 4
  %conv126 = sext i32 %76 to i64
  %77 = load i64, i64* %nargs, align 8
  %cmp127 = icmp slt i64 %conv126, %77
  br i1 %cmp127, label %if.then.129, label %if.end.132

if.then.129:                                      ; preds = %if.else.125
  %78 = load i32, i32* %i, align 4
  %idxprom130 = sext i32 %78 to i64
  %79 = load %struct._object*, %struct._object** %args.addr, align 8
  %80 = bitcast %struct._object* %79 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %80, i32 0, i32 1
  %arrayidx131 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom130
  %81 = load %struct._object*, %struct._object** %arrayidx131, align 8
  store %struct._object* %81, %struct._object** %current_arg, align 8
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.129, %if.else.125
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.end.118
  %82 = load %struct._object*, %struct._object** %current_arg, align 8
  %tobool135 = icmp ne %struct._object* %82, null
  br i1 %tobool135, label %if.then.136, label %if.end.147

if.then.136:                                      ; preds = %if.end.134
  %83 = load %struct._object*, %struct._object** %current_arg, align 8
  %84 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %85 = load i32, i32* %flags.addr, align 4
  %arraydecay137 = getelementptr inbounds [32 x i32], [32 x i32]* %levels, i32 0, i32 0
  %arraydecay138 = getelementptr inbounds [512 x i8], [512 x i8]* %msgbuf, i32 0, i32 0
  %call139 = call i8* @convertitem(%struct._object* %83, i8** %format.addr, [1 x %struct.__va_list_tag]* %84, i32 %85, i32* %arraydecay137, i8* %arraydecay138, i64 512, %struct.freelist_t* %freelist)
  store i8* %call139, i8** %msg, align 8
  %86 = load i8*, i8** %msg, align 8
  %tobool140 = icmp ne i8* %86, null
  br i1 %tobool140, label %if.then.141, label %if.end.146

if.then.141:                                      ; preds = %if.then.136
  %87 = load i32, i32* %i, align 4
  %add142 = add i32 %87, 1
  %conv143 = sext i32 %add142 to i64
  %88 = load i8*, i8** %msg, align 8
  %arraydecay144 = getelementptr inbounds [32 x i32], [32 x i32]* %levels, i32 0, i32 0
  %89 = load i8*, i8** %fname, align 8
  %90 = load i8*, i8** %custom_msg, align 8
  call void @seterror(i64 %conv143, i8* %88, i32* %arraydecay144, i8* %89, i8* %90)
  %call145 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist)
  store i32 %call145, i32* %retval
  br label %return

if.end.146:                                       ; preds = %if.then.136
  br label %for.inc.165

if.end.147:                                       ; preds = %if.end.134
  %91 = load i32, i32* %i, align 4
  %92 = load i32, i32* %min, align 4
  %cmp148 = icmp slt i32 %91, %92
  br i1 %cmp148, label %if.then.150, label %if.end.154

if.then.150:                                      ; preds = %if.end.147
  %93 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %94 = load i8*, i8** %keyword, align 8
  %95 = load i32, i32* %i, align 4
  %add151 = add i32 %95, 1
  %call152 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %93, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.81, i32 0, i32 0), i8* %94, i32 %add151)
  %call153 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist)
  store i32 %call153, i32* %retval
  br label %return

if.end.154:                                       ; preds = %if.end.147
  %96 = load i64, i64* %nkeywords, align 8
  %tobool155 = icmp ne i64 %96, 0
  br i1 %tobool155, label %if.end.158, label %if.then.156

if.then.156:                                      ; preds = %if.end.154
  %call157 = call i32 @cleanreturn(i32 1, %struct.freelist_t* %freelist)
  store i32 %call157, i32* %retval
  br label %return

if.end.158:                                       ; preds = %if.end.154
  %97 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %98 = load i32, i32* %flags.addr, align 4
  %call159 = call i8* @skipitem(i8** %format.addr, [1 x %struct.__va_list_tag]* %97, i32 %98)
  store i8* %call159, i8** %msg, align 8
  %99 = load i8*, i8** %msg, align 8
  %tobool160 = icmp ne i8* %99, null
  br i1 %tobool160, label %if.then.161, label %if.end.164

if.then.161:                                      ; preds = %if.end.158
  %100 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  %101 = load i8*, i8** %msg, align 8
  %102 = load i8*, i8** %format.addr, align 8
  %call162 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.82, i32 0, i32 0), i8* %101, i8* %102)
  %call163 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist)
  store i32 %call163, i32* %retval
  br label %return

if.end.164:                                       ; preds = %if.end.158
  br label %for.inc.165

for.inc.165:                                      ; preds = %if.end.164, %if.end.146
  %103 = load i32, i32* %i, align 4
  %inc166 = add i32 %103, 1
  store i32 %inc166, i32* %i, align 4
  br label %for.cond.48

for.end.167:                                      ; preds = %for.cond.48
  %104 = load i8*, i8** %format.addr, align 8
  %105 = load i8, i8* %104, align 1
  %conv168 = sext i8 %105 to i32
  %cmp169 = icmp eq i32 %conv168, 0
  br i1 %cmp169, label %if.end.190, label %lor.lhs.false.171

lor.lhs.false.171:                                ; preds = %for.end.167
  %106 = load i8*, i8** %format.addr, align 8
  %107 = load i8, i8* %106, align 1
  %conv172 = sext i8 %107 to i32
  %cmp173 = icmp eq i32 %conv172, 59
  br i1 %cmp173, label %if.end.190, label %lor.lhs.false.175

lor.lhs.false.175:                                ; preds = %lor.lhs.false.171
  %108 = load i8*, i8** %format.addr, align 8
  %109 = load i8, i8* %108, align 1
  %conv176 = sext i8 %109 to i32
  %cmp177 = icmp eq i32 %conv176, 58
  br i1 %cmp177, label %if.end.190, label %land.lhs.true.179

land.lhs.true.179:                                ; preds = %lor.lhs.false.175
  %110 = load i8*, i8** %format.addr, align 8
  %111 = load i8, i8* %110, align 1
  %conv180 = sext i8 %111 to i32
  %cmp181 = icmp ne i32 %conv180, 124
  br i1 %cmp181, label %land.lhs.true.183, label %if.end.190

land.lhs.true.183:                                ; preds = %land.lhs.true.179
  %112 = load i8*, i8** %format.addr, align 8
  %113 = load i8, i8* %112, align 1
  %conv184 = sext i8 %113 to i32
  %cmp185 = icmp ne i32 %conv184, 36
  br i1 %cmp185, label %if.then.187, label %if.end.190

if.then.187:                                      ; preds = %land.lhs.true.183
  %114 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  %115 = load i8*, i8** %format.addr, align 8
  %call188 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %114, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.83, i32 0, i32 0), i8* %115)
  %call189 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist)
  store i32 %call189, i32* %retval
  br label %return

if.end.190:                                       ; preds = %land.lhs.true.183, %land.lhs.true.179, %lor.lhs.false.175, %lor.lhs.false.171, %for.end.167
  %116 = load i64, i64* %nkeywords, align 8
  %cmp191 = icmp sgt i64 %116, 0
  br i1 %cmp191, label %if.then.193, label %if.end.219

if.then.193:                                      ; preds = %if.end.190
  store i64 0, i64* %pos, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.218, %if.then.193
  %117 = load %struct._object*, %struct._object** %keywords.addr, align 8
  %call194 = call i32 @PyDict_Next(%struct._object* %117, i64* %pos, %struct._object** %key, %struct._object** %value)
  %tobool195 = icmp ne i32 %call194, 0
  br i1 %tobool195, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %match, align 4
  %118 = load %struct._object*, %struct._object** %key, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %118, i32 0, i32 1
  %119 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %119, i32 0, i32 19
  %120 = load i64, i64* %tp_flags, align 8
  %and = and i64 %120, 268435456
  %cmp196 = icmp ne i64 %and, 0
  br i1 %cmp196, label %if.end.200, label %if.then.198

if.then.198:                                      ; preds = %while.body
  %121 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %121, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.84, i32 0, i32 0))
  %call199 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist)
  store i32 %call199, i32* %retval
  br label %return

if.end.200:                                       ; preds = %while.body
  store i32 0, i32* %i, align 4
  br label %for.cond.201

for.cond.201:                                     ; preds = %for.inc.211, %if.end.200
  %122 = load i32, i32* %i, align 4
  %123 = load i32, i32* %len, align 4
  %cmp202 = icmp slt i32 %122, %123
  br i1 %cmp202, label %for.body.204, label %for.end.213

for.body.204:                                     ; preds = %for.cond.201
  %124 = load %struct._object*, %struct._object** %key, align 8
  %125 = load i32, i32* %i, align 4
  %idxprom205 = sext i32 %125 to i64
  %126 = load i8**, i8*** %kwlist.addr, align 8
  %arrayidx206 = getelementptr i8*, i8** %126, i64 %idxprom205
  %127 = load i8*, i8** %arrayidx206, align 8
  %call207 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %124, i8* %127)
  %tobool208 = icmp ne i32 %call207, 0
  br i1 %tobool208, label %if.end.210, label %if.then.209

if.then.209:                                      ; preds = %for.body.204
  store i32 1, i32* %match, align 4
  br label %for.end.213

if.end.210:                                       ; preds = %for.body.204
  br label %for.inc.211

for.inc.211:                                      ; preds = %if.end.210
  %128 = load i32, i32* %i, align 4
  %inc212 = add i32 %128, 1
  store i32 %inc212, i32* %i, align 4
  br label %for.cond.201

for.end.213:                                      ; preds = %if.then.209, %for.cond.201
  %129 = load i32, i32* %match, align 4
  %tobool214 = icmp ne i32 %129, 0
  br i1 %tobool214, label %if.end.218, label %if.then.215

if.then.215:                                      ; preds = %for.end.213
  %130 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %131 = load %struct._object*, %struct._object** %key, align 8
  %call216 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %130, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.85, i32 0, i32 0), %struct._object* %131)
  %call217 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist)
  store i32 %call217, i32* %retval
  br label %return

if.end.218:                                       ; preds = %for.end.213
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.219

if.end.219:                                       ; preds = %while.end, %if.end.190
  %call220 = call i32 @cleanreturn(i32 1, %struct.freelist_t* %freelist)
  store i32 %call220, i32* %retval
  br label %return

return:                                           ; preds = %if.end.219, %if.then.215, %if.then.198, %if.then.187, %if.then.161, %if.then.156, %if.then.150, %if.then.141, %if.then.123, %if.then.114, %if.then.101, %if.then.83, %if.then.76, %if.then.66, %if.then.60, %cond.end.36, %if.then.16
  %132 = load i32, i32* %retval
  ret i32 %132
}

; Function Attrs: nounwind uwtable
define i32 @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %args, %struct._object* %keywords, i8* %format, i8** %kwlist, ...) #0 {
entry:
  %retval = alloca i32, align 4
  %args.addr = alloca %struct._object*, align 8
  %keywords.addr = alloca %struct._object*, align 8
  %format.addr = alloca i8*, align 8
  %kwlist.addr = alloca i8**, align 8
  %retval1 = alloca i32, align 4
  %va = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %keywords, %struct._object** %keywords.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store i8** %kwlist, i8*** %kwlist.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 67108864
  %cmp2 = icmp ne i64 %and, 0
  br i1 %cmp2, label %lor.lhs.false.3, label %if.then

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %keywords.addr, align 8
  %cmp4 = icmp ne %struct._object* %4, null
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false.9

land.lhs.true:                                    ; preds = %lor.lhs.false.3
  %5 = load %struct._object*, %struct._object** %keywords.addr, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %tp_flags6 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 19
  %7 = load i64, i64* %tp_flags6, align 8
  %and7 = and i64 %7, 536870912
  %cmp8 = icmp ne i64 %and7, 0
  br i1 %cmp8, label %lor.lhs.false.9, label %if.then

lor.lhs.false.9:                                  ; preds = %land.lhs.true, %lor.lhs.false.3
  %8 = load i8*, i8** %format.addr, align 8
  %cmp10 = icmp eq i8* %8, null
  br i1 %cmp10, label %if.then, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.9
  %9 = load i8**, i8*** %kwlist.addr, align 8
  %cmp12 = icmp eq i8** %9, null
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.11, %lor.lhs.false.9, %land.lhs.true, %lor.lhs.false, %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1355)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.11
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay13 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay13)
  %10 = load %struct._object*, %struct._object** %args.addr, align 8
  %11 = load %struct._object*, %struct._object** %keywords.addr, align 8
  %12 = load i8*, i8** %format.addr, align 8
  %13 = load i8**, i8*** %kwlist.addr, align 8
  %call = call i32 @vgetargskeywords(%struct._object* %10, %struct._object* %11, i8* %12, i8** %13, [1 x %struct.__va_list_tag]* %va, i32 2)
  store i32 %call, i32* %retval1, align 4
  %arraydecay14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay1415 = bitcast %struct.__va_list_tag* %arraydecay14 to i8*
  call void @llvm.va_end(i8* %arraydecay1415)
  %14 = load i32, i32* %retval1, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @PyArg_VaParseTupleAndKeywords(%struct._object* %args, %struct._object* %keywords, i8* %format, i8** %kwlist, %struct.__va_list_tag* %va) #0 {
entry:
  %retval = alloca i32, align 4
  %args.addr = alloca %struct._object*, align 8
  %keywords.addr = alloca %struct._object*, align 8
  %format.addr = alloca i8*, align 8
  %kwlist.addr = alloca i8**, align 8
  %va.addr = alloca %struct.__va_list_tag*, align 8
  %retval1 = alloca i32, align 4
  %lva = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %keywords, %struct._object** %keywords.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store i8** %kwlist, i8*** %kwlist.addr, align 8
  store %struct.__va_list_tag* %va, %struct.__va_list_tag** %va.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 67108864
  %cmp2 = icmp ne i64 %and, 0
  br i1 %cmp2, label %lor.lhs.false.3, label %if.then

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %keywords.addr, align 8
  %cmp4 = icmp ne %struct._object* %4, null
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false.9

land.lhs.true:                                    ; preds = %lor.lhs.false.3
  %5 = load %struct._object*, %struct._object** %keywords.addr, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %tp_flags6 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 19
  %7 = load i64, i64* %tp_flags6, align 8
  %and7 = and i64 %7, 536870912
  %cmp8 = icmp ne i64 %and7, 0
  br i1 %cmp8, label %lor.lhs.false.9, label %if.then

lor.lhs.false.9:                                  ; preds = %land.lhs.true, %lor.lhs.false.3
  %8 = load i8*, i8** %format.addr, align 8
  %cmp10 = icmp eq i8* %8, null
  br i1 %cmp10, label %if.then, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.9
  %9 = load i8**, i8*** %kwlist.addr, align 8
  %cmp12 = icmp eq i8** %9, null
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.11, %lor.lhs.false.9, %land.lhs.true, %lor.lhs.false, %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1381)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.11
  %10 = bitcast [1 x %struct.__va_list_tag]* %lva to i8*
  %11 = load %struct.__va_list_tag*, %struct.__va_list_tag** %va.addr, align 8
  %12 = bitcast %struct.__va_list_tag* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %12, i64 24, i32 8, i1 false)
  %13 = load %struct._object*, %struct._object** %args.addr, align 8
  %14 = load %struct._object*, %struct._object** %keywords.addr, align 8
  %15 = load i8*, i8** %format.addr, align 8
  %16 = load i8**, i8*** %kwlist.addr, align 8
  %call = call i32 @vgetargskeywords(%struct._object* %13, %struct._object* %14, i8* %15, i8** %16, [1 x %struct.__va_list_tag]* %lva, i32 0)
  store i32 %call, i32* %retval1, align 4
  %17 = load i32, i32* %retval1, align 4
  store i32 %17, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @_PyArg_VaParseTupleAndKeywords_SizeT(%struct._object* %args, %struct._object* %keywords, i8* %format, i8** %kwlist, %struct.__va_list_tag* %va) #0 {
entry:
  %retval = alloca i32, align 4
  %args.addr = alloca %struct._object*, align 8
  %keywords.addr = alloca %struct._object*, align 8
  %format.addr = alloca i8*, align 8
  %kwlist.addr = alloca i8**, align 8
  %va.addr = alloca %struct.__va_list_tag*, align 8
  %retval1 = alloca i32, align 4
  %lva = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %keywords, %struct._object** %keywords.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store i8** %kwlist, i8*** %kwlist.addr, align 8
  store %struct.__va_list_tag* %va, %struct.__va_list_tag** %va.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 67108864
  %cmp2 = icmp ne i64 %and, 0
  br i1 %cmp2, label %lor.lhs.false.3, label %if.then

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %keywords.addr, align 8
  %cmp4 = icmp ne %struct._object* %4, null
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false.9

land.lhs.true:                                    ; preds = %lor.lhs.false.3
  %5 = load %struct._object*, %struct._object** %keywords.addr, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %tp_flags6 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 19
  %7 = load i64, i64* %tp_flags6, align 8
  %and7 = and i64 %7, 536870912
  %cmp8 = icmp ne i64 %and7, 0
  br i1 %cmp8, label %lor.lhs.false.9, label %if.then

lor.lhs.false.9:                                  ; preds = %land.lhs.true, %lor.lhs.false.3
  %8 = load i8*, i8** %format.addr, align 8
  %cmp10 = icmp eq i8* %8, null
  br i1 %cmp10, label %if.then, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.9
  %9 = load i8**, i8*** %kwlist.addr, align 8
  %cmp12 = icmp eq i8** %9, null
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.11, %lor.lhs.false.9, %land.lhs.true, %lor.lhs.false, %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1405)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.11
  %10 = bitcast [1 x %struct.__va_list_tag]* %lva to i8*
  %11 = load %struct.__va_list_tag*, %struct.__va_list_tag** %va.addr, align 8
  %12 = bitcast %struct.__va_list_tag* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %12, i64 24, i32 8, i1 false)
  %13 = load %struct._object*, %struct._object** %args.addr, align 8
  %14 = load %struct._object*, %struct._object** %keywords.addr, align 8
  %15 = load i8*, i8** %format.addr, align 8
  %16 = load i8**, i8*** %kwlist.addr, align 8
  %call = call i32 @vgetargskeywords(%struct._object* %13, %struct._object* %14, i8* %15, i8** %16, [1 x %struct.__va_list_tag]* %lva, i32 2)
  store i32 %call, i32* %retval1, align 4
  %17 = load i32, i32* %retval1, align 4
  store i32 %17, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @PyArg_ValidateKeywordArguments(%struct._object* %kwargs) #0 {
entry:
  %retval = alloca i32, align 4
  %kwargs.addr = alloca %struct._object*, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  %0 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 536870912
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1420)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call = call i32 @_PyDict_HasOnlyStringKeys(%struct._object* %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare i32 @_PyDict_HasOnlyStringKeys(%struct._object*) #2

declare void @PyErr_SetString(%struct._object*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @PyArg_UnpackTuple(%struct._object* %args, i8* %name, i64 %min, i64 %max, ...) #0 {
entry:
  %retval = alloca i32, align 4
  %args.addr = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %min.addr = alloca i64, align 8
  %max.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %l = alloca i64, align 8
  %o = alloca %struct._object**, align 8
  %vargs = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i64 %min, i64* %min.addr, align 8
  store i64 %max, i64* %max.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 67108864
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %arraydecay23 = bitcast %struct.__va_list_tag* %arraydecay2 to i8*
  call void @llvm.va_end(i8* %arraydecay23)
  %3 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ob_size, align 8
  store i64 %6, i64* %l, align 8
  %7 = load i64, i64* %l, align 8
  %8 = load i64, i64* %min.addr, align 8
  %cmp4 = icmp slt i64 %7, %8
  br i1 %cmp4, label %if.then.5, label %if.end.15

if.then.5:                                        ; preds = %if.end
  %9 = load i8*, i8** %name.addr, align 8
  %cmp6 = icmp ne i8* %9, null
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.5
  %10 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %11 = load i8*, i8** %name.addr, align 8
  %12 = load i64, i64* %min.addr, align 8
  %13 = load i64, i64* %max.addr, align 8
  %cmp8 = icmp eq i64 %12, %13
  %cond = select i1 %cmp8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0)
  %14 = load i64, i64* %min.addr, align 8
  %15 = load i64, i64* %l, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %10, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i8* %11, i8* %cond, i64 %14, i64 %15)
  br label %if.end.12

if.else:                                          ; preds = %if.then.5
  %16 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %17 = load i64, i64* %min.addr, align 8
  %18 = load i64, i64* %max.addr, align 8
  %cmp9 = icmp eq i64 %17, %18
  %cond10 = select i1 %cmp9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0)
  %19 = load i64, i64* %min.addr, align 8
  %20 = load i64, i64* %l, align 8
  %call11 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %16, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i32 0, i32 0), i8* %cond10, i64 %19, i64 %20)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.7
  %arraydecay13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %arraydecay1314 = bitcast %struct.__va_list_tag* %arraydecay13 to i8*
  call void @llvm.va_end(i8* %arraydecay1314)
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end
  %21 = load i64, i64* %l, align 8
  %22 = load i64, i64* %max.addr, align 8
  %cmp16 = icmp sgt i64 %21, %22
  br i1 %cmp16, label %if.then.17, label %if.end.30

if.then.17:                                       ; preds = %if.end.15
  %23 = load i8*, i8** %name.addr, align 8
  %cmp18 = icmp ne i8* %23, null
  br i1 %cmp18, label %if.then.19, label %if.else.23

if.then.19:                                       ; preds = %if.then.17
  %24 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %25 = load i8*, i8** %name.addr, align 8
  %26 = load i64, i64* %min.addr, align 8
  %27 = load i64, i64* %max.addr, align 8
  %cmp20 = icmp eq i64 %26, %27
  %cond21 = select i1 %cmp20, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0)
  %28 = load i64, i64* %max.addr, align 8
  %29 = load i64, i64* %l, align 8
  %call22 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i8* %25, i8* %cond21, i64 %28, i64 %29)
  br label %if.end.27

if.else.23:                                       ; preds = %if.then.17
  %30 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %31 = load i64, i64* %min.addr, align 8
  %32 = load i64, i64* %max.addr, align 8
  %cmp24 = icmp eq i64 %31, %32
  %cond25 = select i1 %cmp24, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0)
  %33 = load i64, i64* %max.addr, align 8
  %34 = load i64, i64* %l, align 8
  %call26 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %30, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i32 0, i32 0), i8* %cond25, i64 %33, i64 %34)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.23, %if.then.19
  %arraydecay28 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %arraydecay2829 = bitcast %struct.__va_list_tag* %arraydecay28 to i8*
  call void @llvm.va_end(i8* %arraydecay2829)
  store i32 0, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.end.15
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.30
  %35 = load i64, i64* %i, align 8
  %36 = load i64, i64* %l, align 8
  %cmp31 = icmp slt i64 %35, %36
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay32 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay32, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.body
  %37 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay32, i32 0, i32 3
  %reg_save_area = load i8*, i8** %37
  %38 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %39 = bitcast i8* %38 to %struct._object***
  %40 = add i32 %gp_offset, 8
  store i32 %40, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay32, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %41 = bitcast i8* %overflow_arg_area to %struct._object***
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi %struct._object*** [ %39, %vaarg.in_reg ], [ %41, %vaarg.in_mem ]
  %42 = load %struct._object**, %struct._object*** %vaarg.addr
  store %struct._object** %42, %struct._object*** %o, align 8
  %43 = load i64, i64* %i, align 8
  %44 = load %struct._object*, %struct._object** %args.addr, align 8
  %45 = bitcast %struct._object* %44 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %45, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %43
  %46 = load %struct._object*, %struct._object** %arrayidx, align 8
  %47 = load %struct._object**, %struct._object*** %o, align 8
  store %struct._object* %46, %struct._object** %47, align 8
  br label %for.inc

for.inc:                                          ; preds = %vaarg.end
  %48 = load i64, i64* %i, align 8
  %inc = add i64 %48, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay33 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %arraydecay3334 = bitcast %struct.__va_list_tag* %arraydecay33 to i8*
  call void @llvm.va_end(i8* %arraydecay3334)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.end.27, %if.end.12, %if.then
  %49 = load i32, i32* %retval
  ret i32 %49
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @_PyArg_NoKeywords(i8* %funcname, %struct._object* %kw) #0 {
entry:
  %retval = alloca i32, align 4
  %funcname.addr = alloca i8*, align 8
  %kw.addr = alloca %struct._object*, align 8
  store i8* %funcname, i8** %funcname.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  %0 = load %struct._object*, %struct._object** %kw.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %kw.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %2, @PyDict_Type
  br i1 %cmp1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1825)
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call = call i64 @PyDict_Size(%struct._object* %3)
  %cmp4 = icmp eq i64 %call, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  store i32 1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %5 = load i8*, i8** %funcname.addr, align 8
  %call7 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0), i8* %5)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then.2, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare i64 @PyDict_Size(%struct._object*) #2

; Function Attrs: nounwind uwtable
define i32 @_PyArg_NoPositional(i8* %funcname, %struct._object* %args) #0 {
entry:
  %retval = alloca i32, align 4
  %funcname.addr = alloca i8*, align 8
  %args.addr = alloca %struct._object*, align 8
  store i8* %funcname, i8** %funcname.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %2, @PyTuple_Type
  br i1 %cmp1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1843)
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1
  %5 = load i64, i64* %ob_size, align 8
  %cmp4 = icmp eq i64 %5, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  store i32 1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %7 = load i8*, i8** %funcname.addr, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i32 0, i32 0), i8* %7)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then.2, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #3

declare i8* @PyMem_Malloc(i64) #2

declare %struct._object* @PyErr_NoMemory() #2

; Function Attrs: nounwind uwtable
define internal i32 @cleanreturn(i32 %retval1, %struct.freelist_t* %freelist) #0 {
entry:
  %retval.addr = alloca i32, align 4
  %freelist.addr = alloca %struct.freelist_t*, align 8
  %index = alloca i32, align 4
  store i32 %retval1, i32* %retval.addr, align 4
  store %struct.freelist_t* %freelist, %struct.freelist_t** %freelist.addr, align 8
  %0 = load i32, i32* %retval.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %index, align 4
  %2 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8
  %first_available = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %2, i32 0, i32 1
  %3 = load i32, i32* %first_available, align 4
  %cmp2 = icmp slt i32 %1, %3
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %index, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8
  %entries = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %5, i32 0, i32 0
  %6 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries, align 8
  %arrayidx = getelementptr %struct.freelistentry_t, %struct.freelistentry_t* %6, i64 %idxprom
  %destructor = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %arrayidx, i32 0, i32 1
  %7 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %destructor, align 8
  %8 = load i32, i32* %index, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8
  %entries4 = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %9, i32 0, i32 0
  %10 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries4, align 8
  %arrayidx5 = getelementptr %struct.freelistentry_t, %struct.freelistentry_t* %10, i64 %idxprom3
  %item = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %arrayidx5, i32 0, i32 0
  %11 = load i8*, i8** %item, align 8
  %call = call i32 %7(%struct._object* null, i8* %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %index, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %13 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8
  %entries_malloced = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %13, i32 0, i32 2
  %14 = load i32, i32* %entries_malloced, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %15 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8
  %entries7 = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %15, i32 0, i32 0
  %16 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries7, align 8
  %17 = bitcast %struct.freelistentry_t* %16 to i8*
  call void @PyMem_Free(i8* %17)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %18 = load i32, i32* %retval.addr, align 4
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i8* @convertitem(%struct._object* %arg, i8** %p_format, [1 x %struct.__va_list_tag]* %p_va, i32 %flags, i32* %levels, i8* %msgbuf, i64 %bufsize, %struct.freelist_t* %freelist) #0 {
entry:
  %arg.addr = alloca %struct._object*, align 8
  %p_format.addr = alloca i8**, align 8
  %p_va.addr = alloca [1 x %struct.__va_list_tag]*, align 8
  %flags.addr = alloca i32, align 4
  %levels.addr = alloca i32*, align 8
  %msgbuf.addr = alloca i8*, align 8
  %bufsize.addr = alloca i64, align 8
  %freelist.addr = alloca %struct.freelist_t*, align 8
  %msg = alloca i8*, align 8
  %format = alloca i8*, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  store i8** %p_format, i8*** %p_format.addr, align 8
  store [1 x %struct.__va_list_tag]* %p_va, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i32* %levels, i32** %levels.addr, align 8
  store i8* %msgbuf, i8** %msgbuf.addr, align 8
  store i64 %bufsize, i64* %bufsize.addr, align 8
  store %struct.freelist_t* %freelist, %struct.freelist_t** %freelist.addr, align 8
  %0 = load i8**, i8*** %p_format.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** %format, align 8
  %2 = load i8*, i8** %format, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 40
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %format, align 8
  %incdec.ptr = getelementptr i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %format, align 8
  %5 = load %struct._object*, %struct._object** %arg.addr, align 8
  %6 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %7 = load i32, i32* %flags.addr, align 4
  %8 = load i32*, i32** %levels.addr, align 8
  %9 = load i8*, i8** %msgbuf.addr, align 8
  %10 = load i64, i64* %bufsize.addr, align 8
  %11 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8
  %call = call i8* @converttuple(%struct._object* %5, i8** %format, [1 x %struct.__va_list_tag]* %6, i32 %7, i32* %8, i8* %9, i64 %10, i32 0, %struct.freelist_t* %11)
  store i8* %call, i8** %msg, align 8
  %12 = load i8*, i8** %msg, align 8
  %cmp2 = icmp eq i8* %12, null
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %13 = load i8*, i8** %format, align 8
  %incdec.ptr5 = getelementptr i8, i8* %13, i32 1
  store i8* %incdec.ptr5, i8** %format, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.11

if.else:                                          ; preds = %entry
  %14 = load %struct._object*, %struct._object** %arg.addr, align 8
  %15 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %16 = load i32, i32* %flags.addr, align 4
  %17 = load i8*, i8** %msgbuf.addr, align 8
  %18 = load i64, i64* %bufsize.addr, align 8
  %19 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8
  %call6 = call i8* @convertsimple(%struct._object* %14, i8** %format, [1 x %struct.__va_list_tag]* %15, i32 %16, i8* %17, i64 %18, %struct.freelist_t* %19)
  store i8* %call6, i8** %msg, align 8
  %20 = load i8*, i8** %msg, align 8
  %cmp7 = icmp ne i8* %20, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.else
  %21 = load i32*, i32** %levels.addr, align 8
  %arrayidx = getelementptr i32, i32* %21, i64 0
  store i32 0, i32* %arrayidx, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %22 = load i8*, i8** %msg, align 8
  %cmp12 = icmp eq i8* %22, null
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  %23 = load i8*, i8** %format, align 8
  %24 = load i8**, i8*** %p_format.addr, align 8
  store i8* %23, i8** %24, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.11
  %25 = load i8*, i8** %msg, align 8
  ret i8* %25
}

; Function Attrs: nounwind uwtable
define internal void @seterror(i64 %iarg, i8* %msg, i32* %levels, i8* %fname, i8* %message) #0 {
entry:
  %iarg.addr = alloca i64, align 8
  %msg.addr = alloca i8*, align 8
  %levels.addr = alloca i32*, align 8
  %fname.addr = alloca i8*, align 8
  %message.addr = alloca i8*, align 8
  %buf = alloca [512 x i8], align 16
  %i = alloca i32, align 4
  %p = alloca i8*, align 8
  store i64 %iarg, i64* %iarg.addr, align 8
  store i8* %msg, i8** %msg.addr, align 8
  store i32* %levels, i32** %levels.addr, align 8
  store i8* %fname, i8** %fname.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8
  %call = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %0 = load i8*, i8** %message.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then.1, label %if.end.48

if.then.1:                                        ; preds = %if.else
  %1 = load i8*, i8** %fname.addr, align 8
  %cmp2 = icmp ne i8* %1, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then.1
  %2 = load i8*, i8** %p, align 8
  %3 = load i8*, i8** %fname.addr, align 8
  %call4 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %2, i64 512, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0), i8* %3)
  %4 = load i8*, i8** %p, align 8
  %call5 = call i64 @strlen(i8* %4) #7
  %5 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr i8, i8* %5, i64 %call5
  store i8* %add.ptr, i8** %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then.1
  %6 = load i64, i64* %iarg.addr, align 8
  %cmp6 = icmp ne i64 %6, 0
  br i1 %cmp6, label %if.then.7, label %if.else.31

if.then.7:                                        ; preds = %if.end
  %7 = load i8*, i8** %p, align 8
  %8 = load i8*, i8** %p, align 8
  %arraydecay8 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub i64 512, %sub.ptr.sub
  %9 = load i64, i64* %iarg.addr, align 8
  %call9 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %7, i64 %sub, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i32 0, i32 0), i64 %9)
  store i32 0, i32* %i, align 4
  %10 = load i8*, i8** %p, align 8
  %call10 = call i64 @strlen(i8* %10) #7
  %11 = load i8*, i8** %p, align 8
  %add.ptr11 = getelementptr i8, i8* %11, i64 %call10
  store i8* %add.ptr11, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.7
  %12 = load i32, i32* %i, align 4
  %cmp12 = icmp slt i32 %12, 32
  br i1 %cmp12, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load i32*, i32** %levels.addr, align 8
  %arrayidx = getelementptr i32, i32* %14, i64 %idxprom
  %15 = load i32, i32* %arrayidx, align 4
  %cmp13 = icmp sgt i32 %15, 0
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %16 = load i8*, i8** %p, align 8
  %arraydecay14 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast15 = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast16 = ptrtoint i8* %arraydecay14 to i64
  %sub.ptr.sub17 = sub i64 %sub.ptr.lhs.cast15, %sub.ptr.rhs.cast16
  %conv = trunc i64 %sub.ptr.sub17 to i32
  %cmp18 = icmp slt i32 %conv, 220
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %17 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp18, %land.rhs ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %18 = load i8*, i8** %p, align 8
  %19 = load i8*, i8** %p, align 8
  %arraydecay20 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast21 = ptrtoint i8* %19 to i64
  %sub.ptr.rhs.cast22 = ptrtoint i8* %arraydecay20 to i64
  %sub.ptr.sub23 = sub i64 %sub.ptr.lhs.cast21, %sub.ptr.rhs.cast22
  %sub24 = sub i64 512, %sub.ptr.sub23
  %20 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %20 to i64
  %21 = load i32*, i32** %levels.addr, align 8
  %arrayidx26 = getelementptr i32, i32* %21, i64 %idxprom25
  %22 = load i32, i32* %arrayidx26, align 4
  %sub27 = sub i32 %22, 1
  %call28 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %18, i64 %sub24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i32 %sub27)
  %23 = load i8*, i8** %p, align 8
  %call29 = call i64 @strlen(i8* %23) #7
  %24 = load i8*, i8** %p, align 8
  %add.ptr30 = getelementptr i8, i8* %24, i64 %call29
  store i8* %add.ptr30, i8** %p, align 8
  %25 = load i32, i32* %i, align 4
  %inc = add i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.40

if.else.31:                                       ; preds = %if.end
  %26 = load i8*, i8** %p, align 8
  %27 = load i8*, i8** %p, align 8
  %arraydecay32 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast33 = ptrtoint i8* %27 to i64
  %sub.ptr.rhs.cast34 = ptrtoint i8* %arraydecay32 to i64
  %sub.ptr.sub35 = sub i64 %sub.ptr.lhs.cast33, %sub.ptr.rhs.cast34
  %sub36 = sub i64 512, %sub.ptr.sub35
  %call37 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %26, i64 %sub36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i32 0, i32 0))
  %28 = load i8*, i8** %p, align 8
  %call38 = call i64 @strlen(i8* %28) #7
  %29 = load i8*, i8** %p, align 8
  %add.ptr39 = getelementptr i8, i8* %29, i64 %call38
  store i8* %add.ptr39, i8** %p, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.31, %while.end
  %30 = load i8*, i8** %p, align 8
  %31 = load i8*, i8** %p, align 8
  %arraydecay41 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast42 = ptrtoint i8* %31 to i64
  %sub.ptr.rhs.cast43 = ptrtoint i8* %arraydecay41 to i64
  %sub.ptr.sub44 = sub i64 %sub.ptr.lhs.cast42, %sub.ptr.rhs.cast43
  %sub45 = sub i64 512, %sub.ptr.sub44
  %32 = load i8*, i8** %msg.addr, align 8
  %call46 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %30, i64 %sub45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), i8* %32)
  %arraydecay47 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay47, i8** %message.addr, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.40, %if.else
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48
  %33 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %34 = load i8*, i8** %message.addr, align 8
  call void @PyErr_SetString(%struct._object* %33, i8* %34)
  br label %return

return:                                           ; preds = %if.end.49, %if.then
  ret void
}

declare void @PyMem_Free(i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @converttuple(%struct._object* %arg, i8** %p_format, [1 x %struct.__va_list_tag]* %p_va, i32 %flags, i32* %levels, i8* %msgbuf, i64 %bufsize, i32 %toplevel, %struct.freelist_t* %freelist) #0 {
entry:
  %retval = alloca i8*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %p_format.addr = alloca i8**, align 8
  %p_va.addr = alloca [1 x %struct.__va_list_tag]*, align 8
  %flags.addr = alloca i32, align 4
  %levels.addr = alloca i32*, align 8
  %msgbuf.addr = alloca i8*, align 8
  %bufsize.addr = alloca i64, align 8
  %toplevel.addr = alloca i32, align 4
  %freelist.addr = alloca %struct.freelist_t*, align 8
  %level = alloca i32, align 4
  %n = alloca i32, align 4
  %format = alloca i8*, align 8
  %i = alloca i32, align 4
  %len = alloca i64, align 8
  %c = alloca i32, align 4
  %msg = alloca i8*, align 8
  %item = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  store i8** %p_format, i8*** %p_format.addr, align 8
  store [1 x %struct.__va_list_tag]* %p_va, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i32* %levels, i32** %levels.addr, align 8
  store i8* %msgbuf, i8** %msgbuf.addr, align 8
  store i64 %bufsize, i64* %bufsize.addr, align 8
  store i32 %toplevel, i32* %toplevel.addr, align 4
  store %struct.freelist_t* %freelist, %struct.freelist_t** %freelist.addr, align 8
  store i32 0, i32* %level, align 4
  store i32 0, i32* %n, align 4
  %0 = load i8**, i8*** %p_format.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** %format, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.35, %entry
  %2 = load i8*, i8** %format, align 8
  %incdec.ptr = getelementptr i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %format, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  store i32 %conv, i32* %c, align 4
  %4 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %4, 40
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %5 = load i32, i32* %level, align 4
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %6 = load i32, i32* %n, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %7 = load i32, i32* %level, align 4
  %inc5 = add i32 %7, 1
  store i32 %inc5, i32* %level, align 4
  br label %if.end.35

if.else:                                          ; preds = %for.cond
  %8 = load i32, i32* %c, align 4
  %cmp6 = icmp eq i32 %8, 41
  br i1 %cmp6, label %if.then.8, label %if.else.13

if.then.8:                                        ; preds = %if.else
  %9 = load i32, i32* %level, align 4
  %cmp9 = icmp eq i32 %9, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.8
  br label %for.end

if.end.12:                                        ; preds = %if.then.8
  %10 = load i32, i32* %level, align 4
  %dec = add i32 %10, -1
  store i32 %dec, i32* %level, align 4
  br label %if.end.34

if.else.13:                                       ; preds = %if.else
  %11 = load i32, i32* %c, align 4
  %cmp14 = icmp eq i32 %11, 58
  br i1 %cmp14, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.13
  %12 = load i32, i32* %c, align 4
  %cmp16 = icmp eq i32 %12, 59
  br i1 %cmp16, label %if.then.21, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false
  %13 = load i32, i32* %c, align 4
  %cmp19 = icmp eq i32 %13, 0
  br i1 %cmp19, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %lor.lhs.false.18, %lor.lhs.false, %if.else.13
  br label %for.end

if.else.22:                                       ; preds = %lor.lhs.false.18
  %14 = load i32, i32* %level, align 4
  %cmp23 = icmp eq i32 %14, 0
  br i1 %cmp23, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %if.else.22
  %15 = load i32, i32* %c, align 4
  %and = and i32 %15, 255
  %conv25 = trunc i32 %and to i8
  %conv26 = zext i8 %conv25 to i32
  %and27 = and i32 %conv26, 255
  %conv28 = trunc i32 %and27 to i8
  %idxprom = zext i8 %conv28 to i64
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom
  %16 = load i32, i32* %arrayidx, align 4
  %and29 = and i32 %16, 3
  %tobool = icmp ne i32 %and29, 0
  br i1 %tobool, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %land.lhs.true
  %17 = load i32, i32* %n, align 4
  %inc31 = add i32 %17, 1
  store i32 %inc31, i32* %n, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %land.lhs.true, %if.else.22
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.12
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end
  br label %for.cond

for.end:                                          ; preds = %if.then.21, %if.then.11
  %18 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call i32 @PySequence_Check(%struct._object* %18)
  %tobool36 = icmp ne i32 %call, 0
  br i1 %tobool36, label %lor.lhs.false.37, label %if.then.41

lor.lhs.false.37:                                 ; preds = %for.end
  %19 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 19
  %21 = load i64, i64* %tp_flags, align 8
  %and38 = and i64 %21, 134217728
  %cmp39 = icmp ne i64 %and38, 0
  br i1 %cmp39, label %if.then.41, label %if.end.49

if.then.41:                                       ; preds = %lor.lhs.false.37, %for.end
  %22 = load i32*, i32** %levels.addr, align 8
  %arrayidx42 = getelementptr i32, i32* %22, i64 0
  store i32 0, i32* %arrayidx42, align 4
  %23 = load i8*, i8** %msgbuf.addr, align 8
  %24 = load i64, i64* %bufsize.addr, align 8
  %25 = load i32, i32* %toplevel.addr, align 4
  %tobool43 = icmp ne i32 %25, 0
  %cond = select i1 %tobool43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i32 0, i32 0)
  %26 = load i32, i32* %n, align 4
  %27 = load %struct._object*, %struct._object** %arg.addr, align 8
  %cmp44 = icmp eq %struct._object* %27, @_Py_NoneStruct
  br i1 %cmp44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.41
  br label %cond.end

cond.false:                                       ; preds = %if.then.41
  %28 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 1
  %30 = load i8*, i8** %tp_name, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond47 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), %cond.true ], [ %30, %cond.false ]
  %call48 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %23, i64 %24, i8* %cond, i32 %26, i8* %cond47)
  %31 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %31, i8** %retval
  br label %return

if.end.49:                                        ; preds = %lor.lhs.false.37
  %32 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call50 = call i64 @PySequence_Size(%struct._object* %32)
  store i64 %call50, i64* %len, align 8
  %33 = load i64, i64* %len, align 8
  %34 = load i32, i32* %n, align 4
  %conv51 = sext i32 %34 to i64
  %cmp52 = icmp ne i64 %33, %conv51
  br i1 %cmp52, label %if.then.54, label %if.end.62

if.then.54:                                       ; preds = %if.end.49
  %35 = load i32*, i32** %levels.addr, align 8
  %arrayidx55 = getelementptr i32, i32* %35, i64 0
  store i32 0, i32* %arrayidx55, align 4
  %36 = load i32, i32* %toplevel.addr, align 4
  %tobool56 = icmp ne i32 %36, 0
  br i1 %tobool56, label %if.then.57, label %if.else.59

if.then.57:                                       ; preds = %if.then.54
  %37 = load i8*, i8** %msgbuf.addr, align 8
  %38 = load i64, i64* %bufsize.addr, align 8
  %39 = load i32, i32* %n, align 4
  %40 = load i64, i64* %len, align 8
  %call58 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %37, i64 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i32 0, i32 0), i32 %39, i64 %40)
  br label %if.end.61

if.else.59:                                       ; preds = %if.then.54
  %41 = load i8*, i8** %msgbuf.addr, align 8
  %42 = load i64, i64* %bufsize.addr, align 8
  %43 = load i32, i32* %n, align 4
  %44 = load i64, i64* %len, align 8
  %call60 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %41, i64 %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i32 0, i32 0), i32 %43, i64 %44)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.59, %if.then.57
  %45 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %45, i8** %retval
  br label %return

if.end.62:                                        ; preds = %if.end.49
  %46 = load i8**, i8*** %p_format.addr, align 8
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %format, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc, %if.end.62
  %48 = load i32, i32* %i, align 4
  %49 = load i32, i32* %n, align 4
  %cmp64 = icmp slt i32 %48, %49
  br i1 %cmp64, label %for.body, label %for.end.96

for.body:                                         ; preds = %for.cond.63
  %50 = load %struct._object*, %struct._object** %arg.addr, align 8
  %51 = load i32, i32* %i, align 4
  %conv66 = sext i32 %51 to i64
  %call67 = call %struct._object* @PySequence_GetItem(%struct._object* %50, i64 %conv66)
  store %struct._object* %call67, %struct._object** %item, align 8
  %52 = load %struct._object*, %struct._object** %item, align 8
  %cmp68 = icmp eq %struct._object* %52, null
  br i1 %cmp68, label %if.then.70, label %if.end.74

if.then.70:                                       ; preds = %for.body
  call void @PyErr_Clear()
  %53 = load i32, i32* %i, align 4
  %add = add i32 %53, 1
  %54 = load i32*, i32** %levels.addr, align 8
  %arrayidx71 = getelementptr i32, i32* %54, i64 0
  store i32 %add, i32* %arrayidx71, align 4
  %55 = load i32*, i32** %levels.addr, align 8
  %arrayidx72 = getelementptr i32, i32* %55, i64 1
  store i32 0, i32* %arrayidx72, align 4
  %56 = load i8*, i8** %msgbuf.addr, align 8
  %57 = load i64, i64* %bufsize.addr, align 8
  %call73 = call i8* @strncpy(i8* %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0), i64 %57) #1
  %58 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %58, i8** %retval
  br label %return

if.end.74:                                        ; preds = %for.body
  %59 = load %struct._object*, %struct._object** %item, align 8
  %60 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %61 = load i32, i32* %flags.addr, align 4
  %62 = load i32*, i32** %levels.addr, align 8
  %add.ptr = getelementptr i32, i32* %62, i64 1
  %63 = load i8*, i8** %msgbuf.addr, align 8
  %64 = load i64, i64* %bufsize.addr, align 8
  %65 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8
  %call75 = call i8* @convertitem(%struct._object* %59, i8** %format, [1 x %struct.__va_list_tag]* %60, i32 %61, i32* %add.ptr, i8* %63, i64 %64, %struct.freelist_t* %65)
  store i8* %call75, i8** %msg, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.74
  %66 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %66, %struct._object** %_py_xdecref_tmp, align 8
  %67 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp76 = icmp ne %struct._object* %67, null
  br i1 %cmp76, label %if.then.78, label %if.end.87

if.then.78:                                       ; preds = %do.body
  br label %do.body.79

do.body.79:                                       ; preds = %if.then.78
  %68 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %68, %struct._object** %_py_decref_tmp, align 8
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 0
  %70 = load i64, i64* %ob_refcnt, align 8
  %dec80 = add i64 %70, -1
  store i64 %dec80, i64* %ob_refcnt, align 8
  %cmp81 = icmp ne i64 %dec80, 0
  br i1 %cmp81, label %if.then.83, label %if.else.84

if.then.83:                                       ; preds = %do.body.79
  br label %if.end.86

if.else.84:                                       ; preds = %do.body.79
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type85 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 1
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type85, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %72, i32 0, i32 4
  %73 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %73(%struct._object* %74)
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.84, %if.then.83
  br label %do.end

do.end:                                           ; preds = %if.end.86
  br label %if.end.87

if.end.87:                                        ; preds = %do.end, %do.body
  br label %do.end.88

do.end.88:                                        ; preds = %if.end.87
  %75 = load i8*, i8** %msg, align 8
  %cmp89 = icmp ne i8* %75, null
  br i1 %cmp89, label %if.then.91, label %if.end.94

if.then.91:                                       ; preds = %do.end.88
  %76 = load i32, i32* %i, align 4
  %add92 = add i32 %76, 1
  %77 = load i32*, i32** %levels.addr, align 8
  %arrayidx93 = getelementptr i32, i32* %77, i64 0
  store i32 %add92, i32* %arrayidx93, align 4
  %78 = load i8*, i8** %msg, align 8
  store i8* %78, i8** %retval
  br label %return

if.end.94:                                        ; preds = %do.end.88
  br label %for.inc

for.inc:                                          ; preds = %if.end.94
  %79 = load i32, i32* %i, align 4
  %inc95 = add i32 %79, 1
  store i32 %inc95, i32* %i, align 4
  br label %for.cond.63

for.end.96:                                       ; preds = %for.cond.63
  %80 = load i8*, i8** %format, align 8
  %81 = load i8**, i8*** %p_format.addr, align 8
  store i8* %80, i8** %81, align 8
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %for.end.96, %if.then.91, %if.then.70, %if.end.61, %cond.end
  %82 = load i8*, i8** %retval
  ret i8* %82
}

; Function Attrs: nounwind uwtable
define internal i8* @convertsimple(%struct._object* %arg, i8** %p_format, [1 x %struct.__va_list_tag]* %p_va, i32 %flags, i8* %msgbuf, i64 %bufsize, %struct.freelist_t* %freelist) #0 {
entry:
  %retval = alloca i8*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %p_format.addr = alloca i8**, align 8
  %p_va.addr = alloca [1 x %struct.__va_list_tag]*, align 8
  %flags.addr = alloca i32, align 4
  %msgbuf.addr = alloca i8*, align 8
  %bufsize.addr = alloca i64, align 8
  %freelist.addr = alloca %struct.freelist_t*, align 8
  %format = alloca i8*, align 8
  %c = alloca i8, align 1
  %sarg = alloca i8*, align 8
  %p = alloca i8*, align 8
  %ival = alloca i64, align 8
  %p19 = alloca i8*, align 8
  %ival32 = alloca i64, align 8
  %p48 = alloca i16*, align 8
  %ival61 = alloca i64, align 8
  %p87 = alloca i16*, align 8
  %ival100 = alloca i64, align 8
  %p116 = alloca i32*, align 8
  %ival129 = alloca i64, align 8
  %p155 = alloca i32*, align 8
  %ival168 = alloca i32, align 4
  %iobj = alloca %struct._object*, align 8
  %p184 = alloca i64*, align 8
  %ival197 = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %p221 = alloca i64*, align 8
  %ival234 = alloca i64, align 8
  %p249 = alloca i64*, align 8
  %ival262 = alloca i64, align 8
  %p272 = alloca i64*, align 8
  %ival285 = alloca i64, align 8
  %p300 = alloca i64*, align 8
  %ival313 = alloca i64, align 8
  %p325 = alloca float*, align 8
  %dval = alloca double, align 8
  %p346 = alloca double*, align 8
  %dval359 = alloca double, align 8
  %p367 = alloca %struct.Py_complex*, align 8
  %cval = alloca %struct.Py_complex, align 8
  %coerce = alloca %struct.Py_complex, align 8
  %p387 = alloca i8*, align 8
  %p430 = alloca i32*, align 8
  %kind = alloca i32, align 4
  %data = alloca i8*, align 8
  %p507 = alloca i32*, align 8
  %val = alloca i32, align 4
  %p532 = alloca i8**, align 8
  %buf = alloca i8*, align 8
  %count = alloca i64, align 8
  %q = alloca i32*, align 8
  %q2 = alloca i64*, align 8
  %p626 = alloca %struct.bufferinfo*, align 8
  %len = alloca i64, align 8
  %buf662 = alloca i8*, align 8
  %p682 = alloca i8**, align 8
  %q695 = alloca i32*, align 8
  %q2696 = alloca i64*, align 8
  %len745 = alloca i64, align 8
  %buf764 = alloca i8*, align 8
  %count765 = alloca i64, align 8
  %p787 = alloca i8**, align 8
  %len800 = alloca i64, align 8
  %p848 = alloca i32**, align 8
  %q865 = alloca i32*, align 8
  %q2866 = alloca i64*, align 8
  %len915 = alloca i64, align 8
  %len952 = alloca i64, align 8
  %buffer = alloca i8**, align 8
  %encoding = alloca i8*, align 8
  %s = alloca %struct._object*, align 8
  %recode_strings = alloca i32, align 4
  %size = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %u = alloca %struct._object*, align 8
  %_py_decref_tmp1054 = alloca %struct._object*, align 8
  %_py_decref_tmp1077 = alloca %struct._object*, align 8
  %q1102 = alloca i32*, align 8
  %q21103 = alloca i64*, align 8
  %_py_decref_tmp1141 = alloca %struct._object*, align 8
  %_py_decref_tmp1169 = alloca %struct._object*, align 8
  %_py_decref_tmp1186 = alloca %struct._object*, align 8
  %_py_decref_tmp1212 = alloca %struct._object*, align 8
  %_py_decref_tmp1244 = alloca %struct._object*, align 8
  %_py_decref_tmp1271 = alloca %struct._object*, align 8
  %_py_decref_tmp1288 = alloca %struct._object*, align 8
  %_py_decref_tmp1304 = alloca %struct._object*, align 8
  %p1316 = alloca %struct._object**, align 8
  %p1339 = alloca %struct._object**, align 8
  %p1364 = alloca %struct._object**, align 8
  %type = alloca %struct._typeobject*, align 8
  %p1401 = alloca %struct._object**, align 8
  %convert = alloca i32 (%struct._object*, i8*)*, align 8
  %addr = alloca i8*, align 8
  %res = alloca i32, align 4
  %p1498 = alloca i8**, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  store i8** %p_format, i8*** %p_format.addr, align 8
  store [1 x %struct.__va_list_tag]* %p_va, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i8* %msgbuf, i8** %msgbuf.addr, align 8
  store i64 %bufsize, i64* %bufsize.addr, align 8
  store %struct.freelist_t* %freelist, %struct.freelist_t** %freelist.addr, align 8
  %0 = load i8**, i8*** %p_format.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** %format, align 8
  %2 = load i8*, i8** %format, align 8
  %incdec.ptr = getelementptr i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %format, align 8
  %3 = load i8, i8* %2, align 1
  store i8 %3, i8* %c, align 1
  %4 = load i8, i8* %c, align 1
  %conv = sext i8 %4 to i32
  switch i32 %conv, label %sw.default [
    i32 98, label %sw.bb
    i32 66, label %sw.bb.18
    i32 104, label %sw.bb.47
    i32 72, label %sw.bb.86
    i32 105, label %sw.bb.115
    i32 73, label %sw.bb.154
    i32 110, label %sw.bb.183
    i32 108, label %sw.bb.220
    i32 107, label %sw.bb.248
    i32 76, label %sw.bb.271
    i32 75, label %sw.bb.299
    i32 102, label %sw.bb.324
    i32 100, label %sw.bb.345
    i32 68, label %sw.bb.366
    i32 99, label %sw.bb.386
    i32 67, label %sw.bb.429
    i32 112, label %sw.bb.506
    i32 121, label %sw.bb.531
    i32 115, label %sw.bb.621
    i32 122, label %sw.bb.621
    i32 117, label %sw.bb.847
    i32 90, label %sw.bb.847
    i32 101, label %sw.bb.973
    i32 83, label %sw.bb.1315
    i32 89, label %sw.bb.1338
    i32 85, label %sw.bb.1363
    i32 79, label %sw.bb.1400
    i32 119, label %sw.bb.1497
  ]

sw.bb:                                            ; preds = %entry
  %5 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %sw.bb
  %6 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay, i32 0, i32 3
  %reg_save_area = load i8*, i8** %6
  %7 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %8 = bitcast i8* %7 to i8**
  %9 = add i32 %gp_offset, 8
  store i32 %9, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %10 = bitcast i8* %overflow_arg_area to i8**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %8, %vaarg.in_reg ], [ %10, %vaarg.in_mem ]
  %11 = load i8*, i8** %vaarg.addr
  store i8* %11, i8** %p, align 8
  %12 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call i32 @float_argument_error(%struct._object* %12)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %vaarg.end
  %13 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %13, i8** %retval
  br label %return

if.end:                                           ; preds = %vaarg.end
  %14 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call1 = call i64 @PyLong_AsLong(%struct._object* %14)
  store i64 %call1, i64* %ival, align 8
  %15 = load i64, i64* %ival, align 8
  %cmp = icmp eq i64 %15, -1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %call3 = call %struct._object* @PyErr_Occurred()
  %tobool4 = icmp ne %struct._object* %call3, null
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %land.lhs.true
  %16 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %16, i8** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.end
  %17 = load i64, i64* %ival, align 8
  %cmp6 = icmp slt i64 %17, 0
  br i1 %cmp6, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.else
  %18 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %18, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.31, i32 0, i32 0))
  %19 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %19, i8** %retval
  br label %return

if.else.9:                                        ; preds = %if.else
  %20 = load i64, i64* %ival, align 8
  %cmp10 = icmp sgt i64 %20, 255
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.else.9
  %21 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %21, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.32, i32 0, i32 0))
  %22 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %22, i8** %retval
  br label %return

if.else.13:                                       ; preds = %if.else.9
  %23 = load i64, i64* %ival, align 8
  %conv14 = trunc i64 %23 to i8
  %24 = load i8*, i8** %p, align 8
  store i8 %conv14, i8* %24, align 1
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.13
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16
  br label %sw.epilog

sw.bb.18:                                         ; preds = %entry
  %25 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %25, i32 0, i32 0
  %gp_offset_p21 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay20, i32 0, i32 0
  %gp_offset22 = load i32, i32* %gp_offset_p21
  %fits_in_gp23 = icmp ule i32 %gp_offset22, 40
  br i1 %fits_in_gp23, label %vaarg.in_reg.24, label %vaarg.in_mem.26

vaarg.in_reg.24:                                  ; preds = %sw.bb.18
  %26 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay20, i32 0, i32 3
  %reg_save_area25 = load i8*, i8** %26
  %27 = getelementptr i8, i8* %reg_save_area25, i32 %gp_offset22
  %28 = bitcast i8* %27 to i8**
  %29 = add i32 %gp_offset22, 8
  store i32 %29, i32* %gp_offset_p21
  br label %vaarg.end.30

vaarg.in_mem.26:                                  ; preds = %sw.bb.18
  %overflow_arg_area_p27 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay20, i32 0, i32 2
  %overflow_arg_area28 = load i8*, i8** %overflow_arg_area_p27
  %30 = bitcast i8* %overflow_arg_area28 to i8**
  %overflow_arg_area.next29 = getelementptr i8, i8* %overflow_arg_area28, i32 8
  store i8* %overflow_arg_area.next29, i8** %overflow_arg_area_p27
  br label %vaarg.end.30

vaarg.end.30:                                     ; preds = %vaarg.in_mem.26, %vaarg.in_reg.24
  %vaarg.addr31 = phi i8** [ %28, %vaarg.in_reg.24 ], [ %30, %vaarg.in_mem.26 ]
  %31 = load i8*, i8** %vaarg.addr31
  store i8* %31, i8** %p19, align 8
  %32 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call33 = call i32 @float_argument_error(%struct._object* %32)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %vaarg.end.30
  %33 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %33, i8** %retval
  br label %return

if.end.36:                                        ; preds = %vaarg.end.30
  %34 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call37 = call i64 @PyLong_AsUnsignedLongMask(%struct._object* %34)
  store i64 %call37, i64* %ival32, align 8
  %35 = load i64, i64* %ival32, align 8
  %cmp38 = icmp eq i64 %35, -1
  br i1 %cmp38, label %land.lhs.true.40, label %if.else.44

land.lhs.true.40:                                 ; preds = %if.end.36
  %call41 = call %struct._object* @PyErr_Occurred()
  %tobool42 = icmp ne %struct._object* %call41, null
  br i1 %tobool42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %land.lhs.true.40
  %36 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %36, i8** %retval
  br label %return

if.else.44:                                       ; preds = %land.lhs.true.40, %if.end.36
  %37 = load i64, i64* %ival32, align 8
  %conv45 = trunc i64 %37 to i8
  %38 = load i8*, i8** %p19, align 8
  store i8 %conv45, i8* %38, align 1
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.44
  br label %sw.epilog

sw.bb.47:                                         ; preds = %entry
  %39 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay49 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %39, i32 0, i32 0
  %gp_offset_p50 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay49, i32 0, i32 0
  %gp_offset51 = load i32, i32* %gp_offset_p50
  %fits_in_gp52 = icmp ule i32 %gp_offset51, 40
  br i1 %fits_in_gp52, label %vaarg.in_reg.53, label %vaarg.in_mem.55

vaarg.in_reg.53:                                  ; preds = %sw.bb.47
  %40 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay49, i32 0, i32 3
  %reg_save_area54 = load i8*, i8** %40
  %41 = getelementptr i8, i8* %reg_save_area54, i32 %gp_offset51
  %42 = bitcast i8* %41 to i16**
  %43 = add i32 %gp_offset51, 8
  store i32 %43, i32* %gp_offset_p50
  br label %vaarg.end.59

vaarg.in_mem.55:                                  ; preds = %sw.bb.47
  %overflow_arg_area_p56 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay49, i32 0, i32 2
  %overflow_arg_area57 = load i8*, i8** %overflow_arg_area_p56
  %44 = bitcast i8* %overflow_arg_area57 to i16**
  %overflow_arg_area.next58 = getelementptr i8, i8* %overflow_arg_area57, i32 8
  store i8* %overflow_arg_area.next58, i8** %overflow_arg_area_p56
  br label %vaarg.end.59

vaarg.end.59:                                     ; preds = %vaarg.in_mem.55, %vaarg.in_reg.53
  %vaarg.addr60 = phi i16** [ %42, %vaarg.in_reg.53 ], [ %44, %vaarg.in_mem.55 ]
  %45 = load i16*, i16** %vaarg.addr60
  store i16* %45, i16** %p48, align 8
  %46 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call62 = call i32 @float_argument_error(%struct._object* %46)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %vaarg.end.59
  %47 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %47, i8** %retval
  br label %return

if.end.65:                                        ; preds = %vaarg.end.59
  %48 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call66 = call i64 @PyLong_AsLong(%struct._object* %48)
  store i64 %call66, i64* %ival61, align 8
  %49 = load i64, i64* %ival61, align 8
  %cmp67 = icmp eq i64 %49, -1
  br i1 %cmp67, label %land.lhs.true.69, label %if.else.73

land.lhs.true.69:                                 ; preds = %if.end.65
  %call70 = call %struct._object* @PyErr_Occurred()
  %tobool71 = icmp ne %struct._object* %call70, null
  br i1 %tobool71, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %land.lhs.true.69
  %50 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %50, i8** %retval
  br label %return

if.else.73:                                       ; preds = %land.lhs.true.69, %if.end.65
  %51 = load i64, i64* %ival61, align 8
  %cmp74 = icmp slt i64 %51, -32768
  br i1 %cmp74, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %if.else.73
  %52 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %52, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.33, i32 0, i32 0))
  %53 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %53, i8** %retval
  br label %return

if.else.77:                                       ; preds = %if.else.73
  %54 = load i64, i64* %ival61, align 8
  %cmp78 = icmp sgt i64 %54, 32767
  br i1 %cmp78, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %if.else.77
  %55 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %55, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.34, i32 0, i32 0))
  %56 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %56, i8** %retval
  br label %return

if.else.81:                                       ; preds = %if.else.77
  %57 = load i64, i64* %ival61, align 8
  %conv82 = trunc i64 %57 to i16
  %58 = load i16*, i16** %p48, align 8
  store i16 %conv82, i16* %58, align 2
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.81
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84
  br label %sw.epilog

sw.bb.86:                                         ; preds = %entry
  %59 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay88 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %59, i32 0, i32 0
  %gp_offset_p89 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay88, i32 0, i32 0
  %gp_offset90 = load i32, i32* %gp_offset_p89
  %fits_in_gp91 = icmp ule i32 %gp_offset90, 40
  br i1 %fits_in_gp91, label %vaarg.in_reg.92, label %vaarg.in_mem.94

vaarg.in_reg.92:                                  ; preds = %sw.bb.86
  %60 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay88, i32 0, i32 3
  %reg_save_area93 = load i8*, i8** %60
  %61 = getelementptr i8, i8* %reg_save_area93, i32 %gp_offset90
  %62 = bitcast i8* %61 to i16**
  %63 = add i32 %gp_offset90, 8
  store i32 %63, i32* %gp_offset_p89
  br label %vaarg.end.98

vaarg.in_mem.94:                                  ; preds = %sw.bb.86
  %overflow_arg_area_p95 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay88, i32 0, i32 2
  %overflow_arg_area96 = load i8*, i8** %overflow_arg_area_p95
  %64 = bitcast i8* %overflow_arg_area96 to i16**
  %overflow_arg_area.next97 = getelementptr i8, i8* %overflow_arg_area96, i32 8
  store i8* %overflow_arg_area.next97, i8** %overflow_arg_area_p95
  br label %vaarg.end.98

vaarg.end.98:                                     ; preds = %vaarg.in_mem.94, %vaarg.in_reg.92
  %vaarg.addr99 = phi i16** [ %62, %vaarg.in_reg.92 ], [ %64, %vaarg.in_mem.94 ]
  %65 = load i16*, i16** %vaarg.addr99
  store i16* %65, i16** %p87, align 8
  %66 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call101 = call i32 @float_argument_error(%struct._object* %66)
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %vaarg.end.98
  %67 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %67, i8** %retval
  br label %return

if.end.104:                                       ; preds = %vaarg.end.98
  %68 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call105 = call i64 @PyLong_AsUnsignedLongMask(%struct._object* %68)
  store i64 %call105, i64* %ival100, align 8
  %69 = load i64, i64* %ival100, align 8
  %cmp106 = icmp eq i64 %69, -1
  br i1 %cmp106, label %land.lhs.true.108, label %if.else.112

land.lhs.true.108:                                ; preds = %if.end.104
  %call109 = call %struct._object* @PyErr_Occurred()
  %tobool110 = icmp ne %struct._object* %call109, null
  br i1 %tobool110, label %if.then.111, label %if.else.112

if.then.111:                                      ; preds = %land.lhs.true.108
  %70 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %70, i8** %retval
  br label %return

if.else.112:                                      ; preds = %land.lhs.true.108, %if.end.104
  %71 = load i64, i64* %ival100, align 8
  %conv113 = trunc i64 %71 to i16
  %72 = load i16*, i16** %p87, align 8
  store i16 %conv113, i16* %72, align 2
  br label %if.end.114

if.end.114:                                       ; preds = %if.else.112
  br label %sw.epilog

sw.bb.115:                                        ; preds = %entry
  %73 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay117 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %73, i32 0, i32 0
  %gp_offset_p118 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay117, i32 0, i32 0
  %gp_offset119 = load i32, i32* %gp_offset_p118
  %fits_in_gp120 = icmp ule i32 %gp_offset119, 40
  br i1 %fits_in_gp120, label %vaarg.in_reg.121, label %vaarg.in_mem.123

vaarg.in_reg.121:                                 ; preds = %sw.bb.115
  %74 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay117, i32 0, i32 3
  %reg_save_area122 = load i8*, i8** %74
  %75 = getelementptr i8, i8* %reg_save_area122, i32 %gp_offset119
  %76 = bitcast i8* %75 to i32**
  %77 = add i32 %gp_offset119, 8
  store i32 %77, i32* %gp_offset_p118
  br label %vaarg.end.127

vaarg.in_mem.123:                                 ; preds = %sw.bb.115
  %overflow_arg_area_p124 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay117, i32 0, i32 2
  %overflow_arg_area125 = load i8*, i8** %overflow_arg_area_p124
  %78 = bitcast i8* %overflow_arg_area125 to i32**
  %overflow_arg_area.next126 = getelementptr i8, i8* %overflow_arg_area125, i32 8
  store i8* %overflow_arg_area.next126, i8** %overflow_arg_area_p124
  br label %vaarg.end.127

vaarg.end.127:                                    ; preds = %vaarg.in_mem.123, %vaarg.in_reg.121
  %vaarg.addr128 = phi i32** [ %76, %vaarg.in_reg.121 ], [ %78, %vaarg.in_mem.123 ]
  %79 = load i32*, i32** %vaarg.addr128
  store i32* %79, i32** %p116, align 8
  %80 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call130 = call i32 @float_argument_error(%struct._object* %80)
  %tobool131 = icmp ne i32 %call130, 0
  br i1 %tobool131, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %vaarg.end.127
  %81 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %81, i8** %retval
  br label %return

if.end.133:                                       ; preds = %vaarg.end.127
  %82 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call134 = call i64 @PyLong_AsLong(%struct._object* %82)
  store i64 %call134, i64* %ival129, align 8
  %83 = load i64, i64* %ival129, align 8
  %cmp135 = icmp eq i64 %83, -1
  br i1 %cmp135, label %land.lhs.true.137, label %if.else.141

land.lhs.true.137:                                ; preds = %if.end.133
  %call138 = call %struct._object* @PyErr_Occurred()
  %tobool139 = icmp ne %struct._object* %call138, null
  br i1 %tobool139, label %if.then.140, label %if.else.141

if.then.140:                                      ; preds = %land.lhs.true.137
  %84 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %84, i8** %retval
  br label %return

if.else.141:                                      ; preds = %land.lhs.true.137, %if.end.133
  %85 = load i64, i64* %ival129, align 8
  %cmp142 = icmp sgt i64 %85, 2147483647
  br i1 %cmp142, label %if.then.144, label %if.else.145

if.then.144:                                      ; preds = %if.else.141
  %86 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %86, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.35, i32 0, i32 0))
  %87 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %87, i8** %retval
  br label %return

if.else.145:                                      ; preds = %if.else.141
  %88 = load i64, i64* %ival129, align 8
  %cmp146 = icmp slt i64 %88, -2147483648
  br i1 %cmp146, label %if.then.148, label %if.else.149

if.then.148:                                      ; preds = %if.else.145
  %89 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %89, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i32 0, i32 0))
  %90 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %90, i8** %retval
  br label %return

if.else.149:                                      ; preds = %if.else.145
  %91 = load i64, i64* %ival129, align 8
  %conv150 = trunc i64 %91 to i32
  %92 = load i32*, i32** %p116, align 8
  store i32 %conv150, i32* %92, align 4
  br label %if.end.151

if.end.151:                                       ; preds = %if.else.149
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152
  br label %sw.epilog

sw.bb.154:                                        ; preds = %entry
  %93 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay156 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %93, i32 0, i32 0
  %gp_offset_p157 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay156, i32 0, i32 0
  %gp_offset158 = load i32, i32* %gp_offset_p157
  %fits_in_gp159 = icmp ule i32 %gp_offset158, 40
  br i1 %fits_in_gp159, label %vaarg.in_reg.160, label %vaarg.in_mem.162

vaarg.in_reg.160:                                 ; preds = %sw.bb.154
  %94 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay156, i32 0, i32 3
  %reg_save_area161 = load i8*, i8** %94
  %95 = getelementptr i8, i8* %reg_save_area161, i32 %gp_offset158
  %96 = bitcast i8* %95 to i32**
  %97 = add i32 %gp_offset158, 8
  store i32 %97, i32* %gp_offset_p157
  br label %vaarg.end.166

vaarg.in_mem.162:                                 ; preds = %sw.bb.154
  %overflow_arg_area_p163 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay156, i32 0, i32 2
  %overflow_arg_area164 = load i8*, i8** %overflow_arg_area_p163
  %98 = bitcast i8* %overflow_arg_area164 to i32**
  %overflow_arg_area.next165 = getelementptr i8, i8* %overflow_arg_area164, i32 8
  store i8* %overflow_arg_area.next165, i8** %overflow_arg_area_p163
  br label %vaarg.end.166

vaarg.end.166:                                    ; preds = %vaarg.in_mem.162, %vaarg.in_reg.160
  %vaarg.addr167 = phi i32** [ %96, %vaarg.in_reg.160 ], [ %98, %vaarg.in_mem.162 ]
  %99 = load i32*, i32** %vaarg.addr167
  store i32* %99, i32** %p155, align 8
  %100 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call169 = call i32 @float_argument_error(%struct._object* %100)
  %tobool170 = icmp ne i32 %call169, 0
  br i1 %tobool170, label %if.then.171, label %if.end.172

if.then.171:                                      ; preds = %vaarg.end.166
  %101 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %101, i8** %retval
  br label %return

if.end.172:                                       ; preds = %vaarg.end.166
  %102 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call173 = call i64 @PyLong_AsUnsignedLongMask(%struct._object* %102)
  %conv174 = trunc i64 %call173 to i32
  store i32 %conv174, i32* %ival168, align 4
  %103 = load i32, i32* %ival168, align 4
  %cmp175 = icmp eq i32 %103, -1
  br i1 %cmp175, label %land.lhs.true.177, label %if.else.181

land.lhs.true.177:                                ; preds = %if.end.172
  %call178 = call %struct._object* @PyErr_Occurred()
  %tobool179 = icmp ne %struct._object* %call178, null
  br i1 %tobool179, label %if.then.180, label %if.else.181

if.then.180:                                      ; preds = %land.lhs.true.177
  %104 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %104, i8** %retval
  br label %return

if.else.181:                                      ; preds = %land.lhs.true.177, %if.end.172
  %105 = load i32, i32* %ival168, align 4
  %106 = load i32*, i32** %p155, align 8
  store i32 %105, i32* %106, align 4
  br label %if.end.182

if.end.182:                                       ; preds = %if.else.181
  br label %sw.epilog

sw.bb.183:                                        ; preds = %entry
  %107 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay185 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %107, i32 0, i32 0
  %gp_offset_p186 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay185, i32 0, i32 0
  %gp_offset187 = load i32, i32* %gp_offset_p186
  %fits_in_gp188 = icmp ule i32 %gp_offset187, 40
  br i1 %fits_in_gp188, label %vaarg.in_reg.189, label %vaarg.in_mem.191

vaarg.in_reg.189:                                 ; preds = %sw.bb.183
  %108 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay185, i32 0, i32 3
  %reg_save_area190 = load i8*, i8** %108
  %109 = getelementptr i8, i8* %reg_save_area190, i32 %gp_offset187
  %110 = bitcast i8* %109 to i64**
  %111 = add i32 %gp_offset187, 8
  store i32 %111, i32* %gp_offset_p186
  br label %vaarg.end.195

vaarg.in_mem.191:                                 ; preds = %sw.bb.183
  %overflow_arg_area_p192 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay185, i32 0, i32 2
  %overflow_arg_area193 = load i8*, i8** %overflow_arg_area_p192
  %112 = bitcast i8* %overflow_arg_area193 to i64**
  %overflow_arg_area.next194 = getelementptr i8, i8* %overflow_arg_area193, i32 8
  store i8* %overflow_arg_area.next194, i8** %overflow_arg_area_p192
  br label %vaarg.end.195

vaarg.end.195:                                    ; preds = %vaarg.in_mem.191, %vaarg.in_reg.189
  %vaarg.addr196 = phi i64** [ %110, %vaarg.in_reg.189 ], [ %112, %vaarg.in_mem.191 ]
  %113 = load i64*, i64** %vaarg.addr196
  store i64* %113, i64** %p184, align 8
  store i64 -1, i64* %ival197, align 8
  %114 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call198 = call i32 @float_argument_error(%struct._object* %114)
  %tobool199 = icmp ne i32 %call198, 0
  br i1 %tobool199, label %if.then.200, label %if.end.201

if.then.200:                                      ; preds = %vaarg.end.195
  %115 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %115, i8** %retval
  br label %return

if.end.201:                                       ; preds = %vaarg.end.195
  %116 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call202 = call %struct._object* @PyNumber_Index(%struct._object* %116)
  store %struct._object* %call202, %struct._object** %iobj, align 8
  %117 = load %struct._object*, %struct._object** %iobj, align 8
  %cmp203 = icmp ne %struct._object* %117, null
  br i1 %cmp203, label %if.then.205, label %if.end.212

if.then.205:                                      ; preds = %if.end.201
  %118 = load %struct._object*, %struct._object** %iobj, align 8
  %call206 = call i64 @PyLong_AsSsize_t(%struct._object* %118)
  store i64 %call206, i64* %ival197, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.205
  %119 = load %struct._object*, %struct._object** %iobj, align 8
  store %struct._object* %119, %struct._object** %_py_decref_tmp, align 8
  %120 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %120, i32 0, i32 0
  %121 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %121, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp207 = icmp ne i64 %dec, 0
  br i1 %cmp207, label %if.then.209, label %if.else.210

if.then.209:                                      ; preds = %do.body
  br label %if.end.211

if.else.210:                                      ; preds = %do.body
  %122 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %122, i32 0, i32 1
  %123 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %123, i32 0, i32 4
  %124 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %125 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %124(%struct._object* %125)
  br label %if.end.211

if.end.211:                                       ; preds = %if.else.210, %if.then.209
  br label %do.end

do.end:                                           ; preds = %if.end.211
  br label %if.end.212

if.end.212:                                       ; preds = %do.end, %if.end.201
  %126 = load i64, i64* %ival197, align 8
  %cmp213 = icmp eq i64 %126, -1
  br i1 %cmp213, label %land.lhs.true.215, label %if.end.219

land.lhs.true.215:                                ; preds = %if.end.212
  %call216 = call %struct._object* @PyErr_Occurred()
  %tobool217 = icmp ne %struct._object* %call216, null
  br i1 %tobool217, label %if.then.218, label %if.end.219

if.then.218:                                      ; preds = %land.lhs.true.215
  %127 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %127, i8** %retval
  br label %return

if.end.219:                                       ; preds = %land.lhs.true.215, %if.end.212
  %128 = load i64, i64* %ival197, align 8
  %129 = load i64*, i64** %p184, align 8
  store i64 %128, i64* %129, align 8
  br label %sw.epilog

sw.bb.220:                                        ; preds = %entry
  %130 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay222 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %130, i32 0, i32 0
  %gp_offset_p223 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay222, i32 0, i32 0
  %gp_offset224 = load i32, i32* %gp_offset_p223
  %fits_in_gp225 = icmp ule i32 %gp_offset224, 40
  br i1 %fits_in_gp225, label %vaarg.in_reg.226, label %vaarg.in_mem.228

vaarg.in_reg.226:                                 ; preds = %sw.bb.220
  %131 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay222, i32 0, i32 3
  %reg_save_area227 = load i8*, i8** %131
  %132 = getelementptr i8, i8* %reg_save_area227, i32 %gp_offset224
  %133 = bitcast i8* %132 to i64**
  %134 = add i32 %gp_offset224, 8
  store i32 %134, i32* %gp_offset_p223
  br label %vaarg.end.232

vaarg.in_mem.228:                                 ; preds = %sw.bb.220
  %overflow_arg_area_p229 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay222, i32 0, i32 2
  %overflow_arg_area230 = load i8*, i8** %overflow_arg_area_p229
  %135 = bitcast i8* %overflow_arg_area230 to i64**
  %overflow_arg_area.next231 = getelementptr i8, i8* %overflow_arg_area230, i32 8
  store i8* %overflow_arg_area.next231, i8** %overflow_arg_area_p229
  br label %vaarg.end.232

vaarg.end.232:                                    ; preds = %vaarg.in_mem.228, %vaarg.in_reg.226
  %vaarg.addr233 = phi i64** [ %133, %vaarg.in_reg.226 ], [ %135, %vaarg.in_mem.228 ]
  %136 = load i64*, i64** %vaarg.addr233
  store i64* %136, i64** %p221, align 8
  %137 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call235 = call i32 @float_argument_error(%struct._object* %137)
  %tobool236 = icmp ne i32 %call235, 0
  br i1 %tobool236, label %if.then.237, label %if.end.238

if.then.237:                                      ; preds = %vaarg.end.232
  %138 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %138, i8** %retval
  br label %return

if.end.238:                                       ; preds = %vaarg.end.232
  %139 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call239 = call i64 @PyLong_AsLong(%struct._object* %139)
  store i64 %call239, i64* %ival234, align 8
  %140 = load i64, i64* %ival234, align 8
  %cmp240 = icmp eq i64 %140, -1
  br i1 %cmp240, label %land.lhs.true.242, label %if.else.246

land.lhs.true.242:                                ; preds = %if.end.238
  %call243 = call %struct._object* @PyErr_Occurred()
  %tobool244 = icmp ne %struct._object* %call243, null
  br i1 %tobool244, label %if.then.245, label %if.else.246

if.then.245:                                      ; preds = %land.lhs.true.242
  %141 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %141, i8** %retval
  br label %return

if.else.246:                                      ; preds = %land.lhs.true.242, %if.end.238
  %142 = load i64, i64* %ival234, align 8
  %143 = load i64*, i64** %p221, align 8
  store i64 %142, i64* %143, align 8
  br label %if.end.247

if.end.247:                                       ; preds = %if.else.246
  br label %sw.epilog

sw.bb.248:                                        ; preds = %entry
  %144 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay250 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %144, i32 0, i32 0
  %gp_offset_p251 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay250, i32 0, i32 0
  %gp_offset252 = load i32, i32* %gp_offset_p251
  %fits_in_gp253 = icmp ule i32 %gp_offset252, 40
  br i1 %fits_in_gp253, label %vaarg.in_reg.254, label %vaarg.in_mem.256

vaarg.in_reg.254:                                 ; preds = %sw.bb.248
  %145 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay250, i32 0, i32 3
  %reg_save_area255 = load i8*, i8** %145
  %146 = getelementptr i8, i8* %reg_save_area255, i32 %gp_offset252
  %147 = bitcast i8* %146 to i64**
  %148 = add i32 %gp_offset252, 8
  store i32 %148, i32* %gp_offset_p251
  br label %vaarg.end.260

vaarg.in_mem.256:                                 ; preds = %sw.bb.248
  %overflow_arg_area_p257 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay250, i32 0, i32 2
  %overflow_arg_area258 = load i8*, i8** %overflow_arg_area_p257
  %149 = bitcast i8* %overflow_arg_area258 to i64**
  %overflow_arg_area.next259 = getelementptr i8, i8* %overflow_arg_area258, i32 8
  store i8* %overflow_arg_area.next259, i8** %overflow_arg_area_p257
  br label %vaarg.end.260

vaarg.end.260:                                    ; preds = %vaarg.in_mem.256, %vaarg.in_reg.254
  %vaarg.addr261 = phi i64** [ %147, %vaarg.in_reg.254 ], [ %149, %vaarg.in_mem.256 ]
  %150 = load i64*, i64** %vaarg.addr261
  store i64* %150, i64** %p249, align 8
  %151 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type263 = getelementptr inbounds %struct._object, %struct._object* %151, i32 0, i32 1
  %152 = load %struct._typeobject*, %struct._typeobject** %ob_type263, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %152, i32 0, i32 19
  %153 = load i64, i64* %tp_flags, align 8
  %and = and i64 %153, 16777216
  %cmp264 = icmp ne i64 %and, 0
  br i1 %cmp264, label %if.then.266, label %if.else.268

if.then.266:                                      ; preds = %vaarg.end.260
  %154 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call267 = call i64 @PyLong_AsUnsignedLongMask(%struct._object* %154)
  store i64 %call267, i64* %ival262, align 8
  br label %if.end.270

if.else.268:                                      ; preds = %vaarg.end.260
  %155 = load %struct._object*, %struct._object** %arg.addr, align 8
  %156 = load i8*, i8** %msgbuf.addr, align 8
  %157 = load i64, i64* %bufsize.addr, align 8
  %call269 = call i8* @converterr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), %struct._object* %155, i8* %156, i64 %157)
  store i8* %call269, i8** %retval
  br label %return

if.end.270:                                       ; preds = %if.then.266
  %158 = load i64, i64* %ival262, align 8
  %159 = load i64*, i64** %p249, align 8
  store i64 %158, i64* %159, align 8
  br label %sw.epilog

sw.bb.271:                                        ; preds = %entry
  %160 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay273 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %160, i32 0, i32 0
  %gp_offset_p274 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay273, i32 0, i32 0
  %gp_offset275 = load i32, i32* %gp_offset_p274
  %fits_in_gp276 = icmp ule i32 %gp_offset275, 40
  br i1 %fits_in_gp276, label %vaarg.in_reg.277, label %vaarg.in_mem.279

vaarg.in_reg.277:                                 ; preds = %sw.bb.271
  %161 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay273, i32 0, i32 3
  %reg_save_area278 = load i8*, i8** %161
  %162 = getelementptr i8, i8* %reg_save_area278, i32 %gp_offset275
  %163 = bitcast i8* %162 to i64**
  %164 = add i32 %gp_offset275, 8
  store i32 %164, i32* %gp_offset_p274
  br label %vaarg.end.283

vaarg.in_mem.279:                                 ; preds = %sw.bb.271
  %overflow_arg_area_p280 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay273, i32 0, i32 2
  %overflow_arg_area281 = load i8*, i8** %overflow_arg_area_p280
  %165 = bitcast i8* %overflow_arg_area281 to i64**
  %overflow_arg_area.next282 = getelementptr i8, i8* %overflow_arg_area281, i32 8
  store i8* %overflow_arg_area.next282, i8** %overflow_arg_area_p280
  br label %vaarg.end.283

vaarg.end.283:                                    ; preds = %vaarg.in_mem.279, %vaarg.in_reg.277
  %vaarg.addr284 = phi i64** [ %163, %vaarg.in_reg.277 ], [ %165, %vaarg.in_mem.279 ]
  %166 = load i64*, i64** %vaarg.addr284
  store i64* %166, i64** %p272, align 8
  %167 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call286 = call i32 @float_argument_error(%struct._object* %167)
  %tobool287 = icmp ne i32 %call286, 0
  br i1 %tobool287, label %if.then.288, label %if.end.289

if.then.288:                                      ; preds = %vaarg.end.283
  %168 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %168, i8** %retval
  br label %return

if.end.289:                                       ; preds = %vaarg.end.283
  %169 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call290 = call i64 @PyLong_AsLongLong(%struct._object* %169)
  store i64 %call290, i64* %ival285, align 8
  %170 = load i64, i64* %ival285, align 8
  %cmp291 = icmp eq i64 %170, -1
  br i1 %cmp291, label %land.lhs.true.293, label %if.else.297

land.lhs.true.293:                                ; preds = %if.end.289
  %call294 = call %struct._object* @PyErr_Occurred()
  %tobool295 = icmp ne %struct._object* %call294, null
  br i1 %tobool295, label %if.then.296, label %if.else.297

if.then.296:                                      ; preds = %land.lhs.true.293
  %171 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %171, i8** %retval
  br label %return

if.else.297:                                      ; preds = %land.lhs.true.293, %if.end.289
  %172 = load i64, i64* %ival285, align 8
  %173 = load i64*, i64** %p272, align 8
  store i64 %172, i64* %173, align 8
  br label %if.end.298

if.end.298:                                       ; preds = %if.else.297
  br label %sw.epilog

sw.bb.299:                                        ; preds = %entry
  %174 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay301 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %174, i32 0, i32 0
  %gp_offset_p302 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay301, i32 0, i32 0
  %gp_offset303 = load i32, i32* %gp_offset_p302
  %fits_in_gp304 = icmp ule i32 %gp_offset303, 40
  br i1 %fits_in_gp304, label %vaarg.in_reg.305, label %vaarg.in_mem.307

vaarg.in_reg.305:                                 ; preds = %sw.bb.299
  %175 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay301, i32 0, i32 3
  %reg_save_area306 = load i8*, i8** %175
  %176 = getelementptr i8, i8* %reg_save_area306, i32 %gp_offset303
  %177 = bitcast i8* %176 to i64**
  %178 = add i32 %gp_offset303, 8
  store i32 %178, i32* %gp_offset_p302
  br label %vaarg.end.311

vaarg.in_mem.307:                                 ; preds = %sw.bb.299
  %overflow_arg_area_p308 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay301, i32 0, i32 2
  %overflow_arg_area309 = load i8*, i8** %overflow_arg_area_p308
  %179 = bitcast i8* %overflow_arg_area309 to i64**
  %overflow_arg_area.next310 = getelementptr i8, i8* %overflow_arg_area309, i32 8
  store i8* %overflow_arg_area.next310, i8** %overflow_arg_area_p308
  br label %vaarg.end.311

vaarg.end.311:                                    ; preds = %vaarg.in_mem.307, %vaarg.in_reg.305
  %vaarg.addr312 = phi i64** [ %177, %vaarg.in_reg.305 ], [ %179, %vaarg.in_mem.307 ]
  %180 = load i64*, i64** %vaarg.addr312
  store i64* %180, i64** %p300, align 8
  %181 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type314 = getelementptr inbounds %struct._object, %struct._object* %181, i32 0, i32 1
  %182 = load %struct._typeobject*, %struct._typeobject** %ob_type314, align 8
  %tp_flags315 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %182, i32 0, i32 19
  %183 = load i64, i64* %tp_flags315, align 8
  %and316 = and i64 %183, 16777216
  %cmp317 = icmp ne i64 %and316, 0
  br i1 %cmp317, label %if.then.319, label %if.else.321

if.then.319:                                      ; preds = %vaarg.end.311
  %184 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call320 = call i64 @PyLong_AsUnsignedLongLongMask(%struct._object* %184)
  store i64 %call320, i64* %ival313, align 8
  br label %if.end.323

if.else.321:                                      ; preds = %vaarg.end.311
  %185 = load %struct._object*, %struct._object** %arg.addr, align 8
  %186 = load i8*, i8** %msgbuf.addr, align 8
  %187 = load i64, i64* %bufsize.addr, align 8
  %call322 = call i8* @converterr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), %struct._object* %185, i8* %186, i64 %187)
  store i8* %call322, i8** %retval
  br label %return

if.end.323:                                       ; preds = %if.then.319
  %188 = load i64, i64* %ival313, align 8
  %189 = load i64*, i64** %p300, align 8
  store i64 %188, i64* %189, align 8
  br label %sw.epilog

sw.bb.324:                                        ; preds = %entry
  %190 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay326 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %190, i32 0, i32 0
  %gp_offset_p327 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay326, i32 0, i32 0
  %gp_offset328 = load i32, i32* %gp_offset_p327
  %fits_in_gp329 = icmp ule i32 %gp_offset328, 40
  br i1 %fits_in_gp329, label %vaarg.in_reg.330, label %vaarg.in_mem.332

vaarg.in_reg.330:                                 ; preds = %sw.bb.324
  %191 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay326, i32 0, i32 3
  %reg_save_area331 = load i8*, i8** %191
  %192 = getelementptr i8, i8* %reg_save_area331, i32 %gp_offset328
  %193 = bitcast i8* %192 to float**
  %194 = add i32 %gp_offset328, 8
  store i32 %194, i32* %gp_offset_p327
  br label %vaarg.end.336

vaarg.in_mem.332:                                 ; preds = %sw.bb.324
  %overflow_arg_area_p333 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay326, i32 0, i32 2
  %overflow_arg_area334 = load i8*, i8** %overflow_arg_area_p333
  %195 = bitcast i8* %overflow_arg_area334 to float**
  %overflow_arg_area.next335 = getelementptr i8, i8* %overflow_arg_area334, i32 8
  store i8* %overflow_arg_area.next335, i8** %overflow_arg_area_p333
  br label %vaarg.end.336

vaarg.end.336:                                    ; preds = %vaarg.in_mem.332, %vaarg.in_reg.330
  %vaarg.addr337 = phi float** [ %193, %vaarg.in_reg.330 ], [ %195, %vaarg.in_mem.332 ]
  %196 = load float*, float** %vaarg.addr337
  store float* %196, float** %p325, align 8
  %197 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call338 = call double @PyFloat_AsDouble(%struct._object* %197)
  store double %call338, double* %dval, align 8
  %call339 = call %struct._object* @PyErr_Occurred()
  %tobool340 = icmp ne %struct._object* %call339, null
  br i1 %tobool340, label %if.then.341, label %if.else.342

if.then.341:                                      ; preds = %vaarg.end.336
  %198 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %198, i8** %retval
  br label %return

if.else.342:                                      ; preds = %vaarg.end.336
  %199 = load double, double* %dval, align 8
  %conv343 = fptrunc double %199 to float
  %200 = load float*, float** %p325, align 8
  store float %conv343, float* %200, align 4
  br label %if.end.344

if.end.344:                                       ; preds = %if.else.342
  br label %sw.epilog

sw.bb.345:                                        ; preds = %entry
  %201 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay347 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %201, i32 0, i32 0
  %gp_offset_p348 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay347, i32 0, i32 0
  %gp_offset349 = load i32, i32* %gp_offset_p348
  %fits_in_gp350 = icmp ule i32 %gp_offset349, 40
  br i1 %fits_in_gp350, label %vaarg.in_reg.351, label %vaarg.in_mem.353

vaarg.in_reg.351:                                 ; preds = %sw.bb.345
  %202 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay347, i32 0, i32 3
  %reg_save_area352 = load i8*, i8** %202
  %203 = getelementptr i8, i8* %reg_save_area352, i32 %gp_offset349
  %204 = bitcast i8* %203 to double**
  %205 = add i32 %gp_offset349, 8
  store i32 %205, i32* %gp_offset_p348
  br label %vaarg.end.357

vaarg.in_mem.353:                                 ; preds = %sw.bb.345
  %overflow_arg_area_p354 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay347, i32 0, i32 2
  %overflow_arg_area355 = load i8*, i8** %overflow_arg_area_p354
  %206 = bitcast i8* %overflow_arg_area355 to double**
  %overflow_arg_area.next356 = getelementptr i8, i8* %overflow_arg_area355, i32 8
  store i8* %overflow_arg_area.next356, i8** %overflow_arg_area_p354
  br label %vaarg.end.357

vaarg.end.357:                                    ; preds = %vaarg.in_mem.353, %vaarg.in_reg.351
  %vaarg.addr358 = phi double** [ %204, %vaarg.in_reg.351 ], [ %206, %vaarg.in_mem.353 ]
  %207 = load double*, double** %vaarg.addr358
  store double* %207, double** %p346, align 8
  %208 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call360 = call double @PyFloat_AsDouble(%struct._object* %208)
  store double %call360, double* %dval359, align 8
  %call361 = call %struct._object* @PyErr_Occurred()
  %tobool362 = icmp ne %struct._object* %call361, null
  br i1 %tobool362, label %if.then.363, label %if.else.364

if.then.363:                                      ; preds = %vaarg.end.357
  %209 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %209, i8** %retval
  br label %return

if.else.364:                                      ; preds = %vaarg.end.357
  %210 = load double, double* %dval359, align 8
  %211 = load double*, double** %p346, align 8
  store double %210, double* %211, align 8
  br label %if.end.365

if.end.365:                                       ; preds = %if.else.364
  br label %sw.epilog

sw.bb.366:                                        ; preds = %entry
  %212 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay368 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %212, i32 0, i32 0
  %gp_offset_p369 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay368, i32 0, i32 0
  %gp_offset370 = load i32, i32* %gp_offset_p369
  %fits_in_gp371 = icmp ule i32 %gp_offset370, 40
  br i1 %fits_in_gp371, label %vaarg.in_reg.372, label %vaarg.in_mem.374

vaarg.in_reg.372:                                 ; preds = %sw.bb.366
  %213 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay368, i32 0, i32 3
  %reg_save_area373 = load i8*, i8** %213
  %214 = getelementptr i8, i8* %reg_save_area373, i32 %gp_offset370
  %215 = bitcast i8* %214 to %struct.Py_complex**
  %216 = add i32 %gp_offset370, 8
  store i32 %216, i32* %gp_offset_p369
  br label %vaarg.end.378

vaarg.in_mem.374:                                 ; preds = %sw.bb.366
  %overflow_arg_area_p375 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay368, i32 0, i32 2
  %overflow_arg_area376 = load i8*, i8** %overflow_arg_area_p375
  %217 = bitcast i8* %overflow_arg_area376 to %struct.Py_complex**
  %overflow_arg_area.next377 = getelementptr i8, i8* %overflow_arg_area376, i32 8
  store i8* %overflow_arg_area.next377, i8** %overflow_arg_area_p375
  br label %vaarg.end.378

vaarg.end.378:                                    ; preds = %vaarg.in_mem.374, %vaarg.in_reg.372
  %vaarg.addr379 = phi %struct.Py_complex** [ %215, %vaarg.in_reg.372 ], [ %217, %vaarg.in_mem.374 ]
  %218 = load %struct.Py_complex*, %struct.Py_complex** %vaarg.addr379
  store %struct.Py_complex* %218, %struct.Py_complex** %p367, align 8
  %219 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call380 = call { double, double } @PyComplex_AsCComplex(%struct._object* %219)
  %220 = bitcast %struct.Py_complex* %coerce to { double, double }*
  %221 = getelementptr { double, double }, { double, double }* %220, i32 0, i32 0
  %222 = extractvalue { double, double } %call380, 0
  store double %222, double* %221, align 8
  %223 = getelementptr { double, double }, { double, double }* %220, i32 0, i32 1
  %224 = extractvalue { double, double } %call380, 1
  store double %224, double* %223, align 8
  %225 = bitcast %struct.Py_complex* %cval to i8*
  %226 = bitcast %struct.Py_complex* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %225, i8* %226, i64 16, i32 8, i1 false)
  %call381 = call %struct._object* @PyErr_Occurred()
  %tobool382 = icmp ne %struct._object* %call381, null
  br i1 %tobool382, label %if.then.383, label %if.else.384

if.then.383:                                      ; preds = %vaarg.end.378
  %227 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %227, i8** %retval
  br label %return

if.else.384:                                      ; preds = %vaarg.end.378
  %228 = load %struct.Py_complex*, %struct.Py_complex** %p367, align 8
  %229 = bitcast %struct.Py_complex* %228 to i8*
  %230 = bitcast %struct.Py_complex* %cval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %229, i8* %230, i64 16, i32 8, i1 false)
  br label %if.end.385

if.end.385:                                       ; preds = %if.else.384
  br label %sw.epilog

sw.bb.386:                                        ; preds = %entry
  %231 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay388 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %231, i32 0, i32 0
  %gp_offset_p389 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay388, i32 0, i32 0
  %gp_offset390 = load i32, i32* %gp_offset_p389
  %fits_in_gp391 = icmp ule i32 %gp_offset390, 40
  br i1 %fits_in_gp391, label %vaarg.in_reg.392, label %vaarg.in_mem.394

vaarg.in_reg.392:                                 ; preds = %sw.bb.386
  %232 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay388, i32 0, i32 3
  %reg_save_area393 = load i8*, i8** %232
  %233 = getelementptr i8, i8* %reg_save_area393, i32 %gp_offset390
  %234 = bitcast i8* %233 to i8**
  %235 = add i32 %gp_offset390, 8
  store i32 %235, i32* %gp_offset_p389
  br label %vaarg.end.398

vaarg.in_mem.394:                                 ; preds = %sw.bb.386
  %overflow_arg_area_p395 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay388, i32 0, i32 2
  %overflow_arg_area396 = load i8*, i8** %overflow_arg_area_p395
  %236 = bitcast i8* %overflow_arg_area396 to i8**
  %overflow_arg_area.next397 = getelementptr i8, i8* %overflow_arg_area396, i32 8
  store i8* %overflow_arg_area.next397, i8** %overflow_arg_area_p395
  br label %vaarg.end.398

vaarg.end.398:                                    ; preds = %vaarg.in_mem.394, %vaarg.in_reg.392
  %vaarg.addr399 = phi i8** [ %234, %vaarg.in_reg.392 ], [ %236, %vaarg.in_mem.394 ]
  %237 = load i8*, i8** %vaarg.addr399
  store i8* %237, i8** %p387, align 8
  %238 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type400 = getelementptr inbounds %struct._object, %struct._object* %238, i32 0, i32 1
  %239 = load %struct._typeobject*, %struct._typeobject** %ob_type400, align 8
  %tp_flags401 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %239, i32 0, i32 19
  %240 = load i64, i64* %tp_flags401, align 8
  %and402 = and i64 %240, 134217728
  %cmp403 = icmp ne i64 %and402, 0
  br i1 %cmp403, label %land.lhs.true.405, label %if.else.411

land.lhs.true.405:                                ; preds = %vaarg.end.398
  %241 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call406 = call i64 @PyBytes_Size(%struct._object* %241)
  %cmp407 = icmp eq i64 %call406, 1
  br i1 %cmp407, label %if.then.409, label %if.else.411

if.then.409:                                      ; preds = %land.lhs.true.405
  %242 = load %struct._object*, %struct._object** %arg.addr, align 8
  %243 = bitcast %struct._object* %242 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %243, i32 0, i32 2
  %arraydecay410 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %arrayidx = getelementptr i8, i8* %arraydecay410, i64 0
  %244 = load i8, i8* %arrayidx, align 1
  %245 = load i8*, i8** %p387, align 8
  store i8 %244, i8* %245, align 1
  br label %if.end.428

if.else.411:                                      ; preds = %land.lhs.true.405, %vaarg.end.398
  %246 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type412 = getelementptr inbounds %struct._object, %struct._object* %246, i32 0, i32 1
  %247 = load %struct._typeobject*, %struct._typeobject** %ob_type412, align 8
  %cmp413 = icmp eq %struct._typeobject* %247, @PyByteArray_Type
  br i1 %cmp413, label %land.lhs.true.418, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.411
  %248 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type415 = getelementptr inbounds %struct._object, %struct._object* %248, i32 0, i32 1
  %249 = load %struct._typeobject*, %struct._typeobject** %ob_type415, align 8
  %call416 = call i32 @PyType_IsSubtype(%struct._typeobject* %249, %struct._typeobject* @PyByteArray_Type)
  %tobool417 = icmp ne i32 %call416, 0
  br i1 %tobool417, label %land.lhs.true.418, label %if.else.425

land.lhs.true.418:                                ; preds = %lor.lhs.false, %if.else.411
  %250 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call419 = call i64 @PyByteArray_Size(%struct._object* %250)
  %cmp420 = icmp eq i64 %call419, 1
  br i1 %cmp420, label %if.then.422, label %if.else.425

if.then.422:                                      ; preds = %land.lhs.true.418
  %251 = load %struct._object*, %struct._object** %arg.addr, align 8
  %252 = bitcast %struct._object* %251 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %252, i32 0, i32 1
  %253 = load i64, i64* %ob_size, align 8
  %tobool423 = icmp ne i64 %253, 0
  br i1 %tobool423, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.422
  %254 = load %struct._object*, %struct._object** %arg.addr, align 8
  %255 = bitcast %struct._object* %254 to %struct.PyByteArrayObject*
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %255, i32 0, i32 3
  %256 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.422
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %256, %cond.true ], [ getelementptr inbounds ([0 x i8], [0 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %arrayidx424 = getelementptr i8, i8* %cond, i64 0
  %257 = load i8, i8* %arrayidx424, align 1
  %258 = load i8*, i8** %p387, align 8
  store i8 %257, i8* %258, align 1
  br label %if.end.427

if.else.425:                                      ; preds = %land.lhs.true.418, %lor.lhs.false
  %259 = load %struct._object*, %struct._object** %arg.addr, align 8
  %260 = load i8*, i8** %msgbuf.addr, align 8
  %261 = load i64, i64* %bufsize.addr, align 8
  %call426 = call i8* @converterr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.39, i32 0, i32 0), %struct._object* %259, i8* %260, i64 %261)
  store i8* %call426, i8** %retval
  br label %return

if.end.427:                                       ; preds = %cond.end
  br label %if.end.428

if.end.428:                                       ; preds = %if.end.427, %if.then.409
  br label %sw.epilog

sw.bb.429:                                        ; preds = %entry
  %262 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay431 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %262, i32 0, i32 0
  %gp_offset_p432 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay431, i32 0, i32 0
  %gp_offset433 = load i32, i32* %gp_offset_p432
  %fits_in_gp434 = icmp ule i32 %gp_offset433, 40
  br i1 %fits_in_gp434, label %vaarg.in_reg.435, label %vaarg.in_mem.437

vaarg.in_reg.435:                                 ; preds = %sw.bb.429
  %263 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay431, i32 0, i32 3
  %reg_save_area436 = load i8*, i8** %263
  %264 = getelementptr i8, i8* %reg_save_area436, i32 %gp_offset433
  %265 = bitcast i8* %264 to i32**
  %266 = add i32 %gp_offset433, 8
  store i32 %266, i32* %gp_offset_p432
  br label %vaarg.end.441

vaarg.in_mem.437:                                 ; preds = %sw.bb.429
  %overflow_arg_area_p438 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay431, i32 0, i32 2
  %overflow_arg_area439 = load i8*, i8** %overflow_arg_area_p438
  %267 = bitcast i8* %overflow_arg_area439 to i32**
  %overflow_arg_area.next440 = getelementptr i8, i8* %overflow_arg_area439, i32 8
  store i8* %overflow_arg_area.next440, i8** %overflow_arg_area_p438
  br label %vaarg.end.441

vaarg.end.441:                                    ; preds = %vaarg.in_mem.437, %vaarg.in_reg.435
  %vaarg.addr442 = phi i32** [ %265, %vaarg.in_reg.435 ], [ %267, %vaarg.in_mem.437 ]
  %268 = load i32*, i32** %vaarg.addr442
  store i32* %268, i32** %p430, align 8
  %269 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type443 = getelementptr inbounds %struct._object, %struct._object* %269, i32 0, i32 1
  %270 = load %struct._typeobject*, %struct._typeobject** %ob_type443, align 8
  %tp_flags444 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %270, i32 0, i32 19
  %271 = load i64, i64* %tp_flags444, align 8
  %and445 = and i64 %271, 268435456
  %cmp446 = icmp ne i64 %and445, 0
  br i1 %cmp446, label %if.end.450, label %if.then.448

if.then.448:                                      ; preds = %vaarg.end.441
  %272 = load %struct._object*, %struct._object** %arg.addr, align 8
  %273 = load i8*, i8** %msgbuf.addr, align 8
  %274 = load i64, i64* %bufsize.addr, align 8
  %call449 = call i8* @converterr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i32 0, i32 0), %struct._object* %272, i8* %273, i64 %274)
  store i8* %call449, i8** %retval
  br label %return

if.end.450:                                       ; preds = %vaarg.end.441
  %275 = load %struct._object*, %struct._object** %arg.addr, align 8
  %276 = bitcast %struct._object* %275 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %276, i32 0, i32 3
  %277 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %277, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool451 = icmp ne i32 %bf.clear, 0
  br i1 %tobool451, label %cond.true.452, label %cond.false.453

cond.true.452:                                    ; preds = %if.end.450
  br label %cond.end.455

cond.false.453:                                   ; preds = %if.end.450
  %278 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call454 = call i32 @_PyUnicode_Ready(%struct._object* %278)
  br label %cond.end.455

cond.end.455:                                     ; preds = %cond.false.453, %cond.true.452
  %cond456 = phi i32 [ 0, %cond.true.452 ], [ %call454, %cond.false.453 ]
  %tobool457 = icmp ne i32 %cond456, 0
  br i1 %tobool457, label %if.then.458, label %if.end.459

if.then.458:                                      ; preds = %cond.end.455
  %279 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %279, i8** %retval
  br label %return

if.end.459:                                       ; preds = %cond.end.455
  %280 = load %struct._object*, %struct._object** %arg.addr, align 8
  %281 = bitcast %struct._object* %280 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %281, i32 0, i32 1
  %282 = load i64, i64* %length, align 8
  %cmp460 = icmp ne i64 %282, 1
  br i1 %cmp460, label %if.then.462, label %if.end.464

if.then.462:                                      ; preds = %if.end.459
  %283 = load %struct._object*, %struct._object** %arg.addr, align 8
  %284 = load i8*, i8** %msgbuf.addr, align 8
  %285 = load i64, i64* %bufsize.addr, align 8
  %call463 = call i8* @converterr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i32 0, i32 0), %struct._object* %283, i8* %284, i64 %285)
  store i8* %call463, i8** %retval
  br label %return

if.end.464:                                       ; preds = %if.end.459
  %286 = load %struct._object*, %struct._object** %arg.addr, align 8
  %287 = bitcast %struct._object* %286 to %struct.PyASCIIObject*
  %state465 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %287, i32 0, i32 3
  %288 = bitcast %struct.anon* %state465 to i32*
  %bf.load466 = load i32, i32* %288, align 4
  %bf.lshr467 = lshr i32 %bf.load466, 2
  %bf.clear468 = and i32 %bf.lshr467, 7
  store i32 %bf.clear468, i32* %kind, align 4
  %289 = load %struct._object*, %struct._object** %arg.addr, align 8
  %290 = bitcast %struct._object* %289 to %struct.PyASCIIObject*
  %state469 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %290, i32 0, i32 3
  %291 = bitcast %struct.anon* %state469 to i32*
  %bf.load470 = load i32, i32* %291, align 4
  %bf.lshr471 = lshr i32 %bf.load470, 5
  %bf.clear472 = and i32 %bf.lshr471, 1
  %tobool473 = icmp ne i32 %bf.clear472, 0
  br i1 %tobool473, label %cond.true.474, label %cond.false.485

cond.true.474:                                    ; preds = %if.end.464
  %292 = load %struct._object*, %struct._object** %arg.addr, align 8
  %293 = bitcast %struct._object* %292 to %struct.PyASCIIObject*
  %state475 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %293, i32 0, i32 3
  %294 = bitcast %struct.anon* %state475 to i32*
  %bf.load476 = load i32, i32* %294, align 4
  %bf.lshr477 = lshr i32 %bf.load476, 6
  %bf.clear478 = and i32 %bf.lshr477, 1
  %tobool479 = icmp ne i32 %bf.clear478, 0
  br i1 %tobool479, label %cond.true.480, label %cond.false.481

cond.true.480:                                    ; preds = %cond.true.474
  %295 = load %struct._object*, %struct._object** %arg.addr, align 8
  %296 = bitcast %struct._object* %295 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %296, i64 1
  %297 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end.483

cond.false.481:                                   ; preds = %cond.true.474
  %298 = load %struct._object*, %struct._object** %arg.addr, align 8
  %299 = bitcast %struct._object* %298 to %struct.PyCompactUnicodeObject*
  %add.ptr482 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %299, i64 1
  %300 = bitcast %struct.PyCompactUnicodeObject* %add.ptr482 to i8*
  br label %cond.end.483

cond.end.483:                                     ; preds = %cond.false.481, %cond.true.480
  %cond484 = phi i8* [ %297, %cond.true.480 ], [ %300, %cond.false.481 ]
  br label %cond.end.487

cond.false.485:                                   ; preds = %if.end.464
  %301 = load %struct._object*, %struct._object** %arg.addr, align 8
  %302 = bitcast %struct._object* %301 to %struct.PyUnicodeObject*
  %data486 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %302, i32 0, i32 1
  %any = bitcast %union.anon* %data486 to i8**
  %303 = load i8*, i8** %any, align 8
  br label %cond.end.487

cond.end.487:                                     ; preds = %cond.false.485, %cond.end.483
  %cond488 = phi i8* [ %cond484, %cond.end.483 ], [ %303, %cond.false.485 ]
  store i8* %cond488, i8** %data, align 8
  %304 = load i32, i32* %kind, align 4
  %cmp489 = icmp eq i32 %304, 1
  br i1 %cmp489, label %cond.true.491, label %cond.false.494

cond.true.491:                                    ; preds = %cond.end.487
  %305 = load i8*, i8** %data, align 8
  %arrayidx492 = getelementptr i8, i8* %305, i64 0
  %306 = load i8, i8* %arrayidx492, align 1
  %conv493 = zext i8 %306 to i32
  br label %cond.end.504

cond.false.494:                                   ; preds = %cond.end.487
  %307 = load i32, i32* %kind, align 4
  %cmp495 = icmp eq i32 %307, 2
  br i1 %cmp495, label %cond.true.497, label %cond.false.500

cond.true.497:                                    ; preds = %cond.false.494
  %308 = load i8*, i8** %data, align 8
  %309 = bitcast i8* %308 to i16*
  %arrayidx498 = getelementptr i16, i16* %309, i64 0
  %310 = load i16, i16* %arrayidx498, align 2
  %conv499 = zext i16 %310 to i32
  br label %cond.end.502

cond.false.500:                                   ; preds = %cond.false.494
  %311 = load i8*, i8** %data, align 8
  %312 = bitcast i8* %311 to i32*
  %arrayidx501 = getelementptr i32, i32* %312, i64 0
  %313 = load i32, i32* %arrayidx501, align 4
  br label %cond.end.502

cond.end.502:                                     ; preds = %cond.false.500, %cond.true.497
  %cond503 = phi i32 [ %conv499, %cond.true.497 ], [ %313, %cond.false.500 ]
  br label %cond.end.504

cond.end.504:                                     ; preds = %cond.end.502, %cond.true.491
  %cond505 = phi i32 [ %conv493, %cond.true.491 ], [ %cond503, %cond.end.502 ]
  %314 = load i32*, i32** %p430, align 8
  store i32 %cond505, i32* %314, align 4
  br label %sw.epilog

sw.bb.506:                                        ; preds = %entry
  %315 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay508 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %315, i32 0, i32 0
  %gp_offset_p509 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay508, i32 0, i32 0
  %gp_offset510 = load i32, i32* %gp_offset_p509
  %fits_in_gp511 = icmp ule i32 %gp_offset510, 40
  br i1 %fits_in_gp511, label %vaarg.in_reg.512, label %vaarg.in_mem.514

vaarg.in_reg.512:                                 ; preds = %sw.bb.506
  %316 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay508, i32 0, i32 3
  %reg_save_area513 = load i8*, i8** %316
  %317 = getelementptr i8, i8* %reg_save_area513, i32 %gp_offset510
  %318 = bitcast i8* %317 to i32**
  %319 = add i32 %gp_offset510, 8
  store i32 %319, i32* %gp_offset_p509
  br label %vaarg.end.518

vaarg.in_mem.514:                                 ; preds = %sw.bb.506
  %overflow_arg_area_p515 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay508, i32 0, i32 2
  %overflow_arg_area516 = load i8*, i8** %overflow_arg_area_p515
  %320 = bitcast i8* %overflow_arg_area516 to i32**
  %overflow_arg_area.next517 = getelementptr i8, i8* %overflow_arg_area516, i32 8
  store i8* %overflow_arg_area.next517, i8** %overflow_arg_area_p515
  br label %vaarg.end.518

vaarg.end.518:                                    ; preds = %vaarg.in_mem.514, %vaarg.in_reg.512
  %vaarg.addr519 = phi i32** [ %318, %vaarg.in_reg.512 ], [ %320, %vaarg.in_mem.514 ]
  %321 = load i32*, i32** %vaarg.addr519
  store i32* %321, i32** %p507, align 8
  %322 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call520 = call i32 @PyObject_IsTrue(%struct._object* %322)
  store i32 %call520, i32* %val, align 4
  %323 = load i32, i32* %val, align 4
  %cmp521 = icmp sgt i32 %323, 0
  br i1 %cmp521, label %if.then.523, label %if.else.524

if.then.523:                                      ; preds = %vaarg.end.518
  %324 = load i32*, i32** %p507, align 8
  store i32 1, i32* %324, align 4
  br label %if.end.530

if.else.524:                                      ; preds = %vaarg.end.518
  %325 = load i32, i32* %val, align 4
  %cmp525 = icmp eq i32 %325, 0
  br i1 %cmp525, label %if.then.527, label %if.else.528

if.then.527:                                      ; preds = %if.else.524
  %326 = load i32*, i32** %p507, align 8
  store i32 0, i32* %326, align 4
  br label %if.end.529

if.else.528:                                      ; preds = %if.else.524
  %327 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %327, i8** %retval
  br label %return

if.end.529:                                       ; preds = %if.then.527
  br label %if.end.530

if.end.530:                                       ; preds = %if.end.529, %if.then.523
  br label %sw.epilog

sw.bb.531:                                        ; preds = %entry
  %328 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay533 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %328, i32 0, i32 0
  %gp_offset_p534 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay533, i32 0, i32 0
  %gp_offset535 = load i32, i32* %gp_offset_p534
  %fits_in_gp536 = icmp ule i32 %gp_offset535, 40
  br i1 %fits_in_gp536, label %vaarg.in_reg.537, label %vaarg.in_mem.539

vaarg.in_reg.537:                                 ; preds = %sw.bb.531
  %329 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay533, i32 0, i32 3
  %reg_save_area538 = load i8*, i8** %329
  %330 = getelementptr i8, i8* %reg_save_area538, i32 %gp_offset535
  %331 = bitcast i8* %330 to i8***
  %332 = add i32 %gp_offset535, 8
  store i32 %332, i32* %gp_offset_p534
  br label %vaarg.end.543

vaarg.in_mem.539:                                 ; preds = %sw.bb.531
  %overflow_arg_area_p540 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay533, i32 0, i32 2
  %overflow_arg_area541 = load i8*, i8** %overflow_arg_area_p540
  %333 = bitcast i8* %overflow_arg_area541 to i8***
  %overflow_arg_area.next542 = getelementptr i8, i8* %overflow_arg_area541, i32 8
  store i8* %overflow_arg_area.next542, i8** %overflow_arg_area_p540
  br label %vaarg.end.543

vaarg.end.543:                                    ; preds = %vaarg.in_mem.539, %vaarg.in_reg.537
  %vaarg.addr544 = phi i8*** [ %331, %vaarg.in_reg.537 ], [ %333, %vaarg.in_mem.539 ]
  %334 = load i8**, i8*** %vaarg.addr544
  store i8** %334, i8*** %p532, align 8
  %335 = load i8*, i8** %format, align 8
  %336 = load i8, i8* %335, align 1
  %conv545 = sext i8 %336 to i32
  %cmp546 = icmp eq i32 %conv545, 42
  br i1 %cmp546, label %if.then.548, label %if.end.561

if.then.548:                                      ; preds = %vaarg.end.543
  %337 = load %struct._object*, %struct._object** %arg.addr, align 8
  %338 = load i8**, i8*** %p532, align 8
  %339 = bitcast i8** %338 to %struct.bufferinfo*
  %call549 = call i32 @getbuffer(%struct._object* %337, %struct.bufferinfo* %339, i8** %buf)
  %cmp550 = icmp slt i32 %call549, 0
  br i1 %cmp550, label %if.then.552, label %if.end.554

if.then.552:                                      ; preds = %if.then.548
  %340 = load i8*, i8** %buf, align 8
  %341 = load %struct._object*, %struct._object** %arg.addr, align 8
  %342 = load i8*, i8** %msgbuf.addr, align 8
  %343 = load i64, i64* %bufsize.addr, align 8
  %call553 = call i8* @converterr(i8* %340, %struct._object* %341, i8* %342, i64 %343)
  store i8* %call553, i8** %retval
  br label %return

if.end.554:                                       ; preds = %if.then.548
  %344 = load i8*, i8** %format, align 8
  %incdec.ptr555 = getelementptr i8, i8* %344, i32 1
  store i8* %incdec.ptr555, i8** %format, align 8
  %345 = load i8**, i8*** %p532, align 8
  %346 = bitcast i8** %345 to i8*
  %347 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8
  %call556 = call i32 @addcleanup(i8* %346, %struct.freelist_t* %347, i32 (%struct._object*, i8*)* @cleanup_buffer)
  %tobool557 = icmp ne i32 %call556, 0
  br i1 %tobool557, label %if.then.558, label %if.end.560

if.then.558:                                      ; preds = %if.end.554
  %348 = load %struct._object*, %struct._object** %arg.addr, align 8
  %349 = load i8*, i8** %msgbuf.addr, align 8
  %350 = load i64, i64* %bufsize.addr, align 8
  %call559 = call i8* @converterr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0), %struct._object* %348, i8* %349, i64 %350)
  store i8* %call559, i8** %retval
  br label %return

if.end.560:                                       ; preds = %if.end.554
  br label %sw.epilog

if.end.561:                                       ; preds = %vaarg.end.543
  %351 = load %struct._object*, %struct._object** %arg.addr, align 8
  %352 = load i8**, i8*** %p532, align 8
  %call562 = call i64 @convertbuffer(%struct._object* %351, i8** %352, i8** %buf)
  store i64 %call562, i64* %count, align 8
  %353 = load i64, i64* %count, align 8
  %cmp563 = icmp slt i64 %353, 0
  br i1 %cmp563, label %if.then.565, label %if.end.567

if.then.565:                                      ; preds = %if.end.561
  %354 = load i8*, i8** %buf, align 8
  %355 = load %struct._object*, %struct._object** %arg.addr, align 8
  %356 = load i8*, i8** %msgbuf.addr, align 8
  %357 = load i64, i64* %bufsize.addr, align 8
  %call566 = call i8* @converterr(i8* %354, %struct._object* %355, i8* %356, i64 %357)
  store i8* %call566, i8** %retval
  br label %return

if.end.567:                                       ; preds = %if.end.561
  %358 = load i8*, i8** %format, align 8
  %359 = load i8, i8* %358, align 1
  %conv568 = sext i8 %359 to i32
  %cmp569 = icmp eq i32 %conv568, 35
  br i1 %cmp569, label %if.then.571, label %if.else.613

if.then.571:                                      ; preds = %if.end.567
  store i32* null, i32** %q, align 8
  store i64* null, i64** %q2, align 8
  %360 = load i32, i32* %flags.addr, align 4
  %and572 = and i32 %360, 2
  %tobool573 = icmp ne i32 %and572, 0
  br i1 %tobool573, label %if.then.574, label %if.else.587

if.then.574:                                      ; preds = %if.then.571
  %361 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay575 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %361, i32 0, i32 0
  %gp_offset_p576 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay575, i32 0, i32 0
  %gp_offset577 = load i32, i32* %gp_offset_p576
  %fits_in_gp578 = icmp ule i32 %gp_offset577, 40
  br i1 %fits_in_gp578, label %vaarg.in_reg.579, label %vaarg.in_mem.581

vaarg.in_reg.579:                                 ; preds = %if.then.574
  %362 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay575, i32 0, i32 3
  %reg_save_area580 = load i8*, i8** %362
  %363 = getelementptr i8, i8* %reg_save_area580, i32 %gp_offset577
  %364 = bitcast i8* %363 to i64**
  %365 = add i32 %gp_offset577, 8
  store i32 %365, i32* %gp_offset_p576
  br label %vaarg.end.585

vaarg.in_mem.581:                                 ; preds = %if.then.574
  %overflow_arg_area_p582 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay575, i32 0, i32 2
  %overflow_arg_area583 = load i8*, i8** %overflow_arg_area_p582
  %366 = bitcast i8* %overflow_arg_area583 to i64**
  %overflow_arg_area.next584 = getelementptr i8, i8* %overflow_arg_area583, i32 8
  store i8* %overflow_arg_area.next584, i8** %overflow_arg_area_p582
  br label %vaarg.end.585

vaarg.end.585:                                    ; preds = %vaarg.in_mem.581, %vaarg.in_reg.579
  %vaarg.addr586 = phi i64** [ %364, %vaarg.in_reg.579 ], [ %366, %vaarg.in_mem.581 ]
  %367 = load i64*, i64** %vaarg.addr586
  store i64* %367, i64** %q2, align 8
  br label %if.end.600

if.else.587:                                      ; preds = %if.then.571
  %368 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay588 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %368, i32 0, i32 0
  %gp_offset_p589 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay588, i32 0, i32 0
  %gp_offset590 = load i32, i32* %gp_offset_p589
  %fits_in_gp591 = icmp ule i32 %gp_offset590, 40
  br i1 %fits_in_gp591, label %vaarg.in_reg.592, label %vaarg.in_mem.594

vaarg.in_reg.592:                                 ; preds = %if.else.587
  %369 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay588, i32 0, i32 3
  %reg_save_area593 = load i8*, i8** %369
  %370 = getelementptr i8, i8* %reg_save_area593, i32 %gp_offset590
  %371 = bitcast i8* %370 to i32**
  %372 = add i32 %gp_offset590, 8
  store i32 %372, i32* %gp_offset_p589
  br label %vaarg.end.598

vaarg.in_mem.594:                                 ; preds = %if.else.587
  %overflow_arg_area_p595 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay588, i32 0, i32 2
  %overflow_arg_area596 = load i8*, i8** %overflow_arg_area_p595
  %373 = bitcast i8* %overflow_arg_area596 to i32**
  %overflow_arg_area.next597 = getelementptr i8, i8* %overflow_arg_area596, i32 8
  store i8* %overflow_arg_area.next597, i8** %overflow_arg_area_p595
  br label %vaarg.end.598

vaarg.end.598:                                    ; preds = %vaarg.in_mem.594, %vaarg.in_reg.592
  %vaarg.addr599 = phi i32** [ %371, %vaarg.in_reg.592 ], [ %373, %vaarg.in_mem.594 ]
  %374 = load i32*, i32** %vaarg.addr599
  store i32* %374, i32** %q, align 8
  br label %if.end.600

if.end.600:                                       ; preds = %vaarg.end.598, %vaarg.end.585
  %375 = load i32, i32* %flags.addr, align 4
  %and601 = and i32 %375, 2
  %tobool602 = icmp ne i32 %and601, 0
  br i1 %tobool602, label %if.then.603, label %if.else.604

if.then.603:                                      ; preds = %if.end.600
  %376 = load i64, i64* %count, align 8
  %377 = load i64*, i64** %q2, align 8
  store i64 %376, i64* %377, align 8
  br label %if.end.611

if.else.604:                                      ; preds = %if.end.600
  %378 = load i64, i64* %count, align 8
  %cmp605 = icmp slt i64 2147483647, %378
  br i1 %cmp605, label %if.then.607, label %if.end.609

if.then.607:                                      ; preds = %if.else.604
  %379 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %379, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.42, i32 0, i32 0))
  %380 = load %struct._object*, %struct._object** %arg.addr, align 8
  %381 = load i8*, i8** %msgbuf.addr, align 8
  %382 = load i64, i64* %bufsize.addr, align 8
  %call608 = call i8* @converterr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %struct._object* %380, i8* %381, i64 %382)
  store i8* %call608, i8** %retval
  br label %return

if.end.609:                                       ; preds = %if.else.604
  %383 = load i64, i64* %count, align 8
  %conv610 = trunc i64 %383 to i32
  %384 = load i32*, i32** %q, align 8
  store i32 %conv610, i32* %384, align 4
  br label %if.end.611

if.end.611:                                       ; preds = %if.end.609, %if.then.603
  %385 = load i8*, i8** %format, align 8
  %incdec.ptr612 = getelementptr i8, i8* %385, i32 1
  store i8* %incdec.ptr612, i8** %format, align 8
  br label %if.end.620

if.else.613:                                      ; preds = %if.end.567
  %386 = load i8**, i8*** %p532, align 8
  %387 = load i8*, i8** %386, align 8
  %call614 = call i64 @strlen(i8* %387) #7
  %388 = load i64, i64* %count, align 8
  %cmp615 = icmp ne i64 %call614, %388
  br i1 %cmp615, label %if.then.617, label %if.end.619

if.then.617:                                      ; preds = %if.else.613
  %389 = load %struct._object*, %struct._object** %arg.addr, align 8
  %390 = load i8*, i8** %msgbuf.addr, align 8
  %391 = load i64, i64* %bufsize.addr, align 8
  %call618 = call i8* @converterr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.43, i32 0, i32 0), %struct._object* %389, i8* %390, i64 %391)
  store i8* %call618, i8** %retval
  br label %return

if.end.619:                                       ; preds = %if.else.613
  br label %if.end.620

if.end.620:                                       ; preds = %if.end.619, %if.end.611
  br label %sw.epilog

sw.bb.621:                                        ; preds = %entry, %entry
  %392 = load i8*, i8** %format, align 8
  %393 = load i8, i8* %392, align 1
  %conv622 = sext i8 %393 to i32
  %cmp623 = icmp eq i32 %conv622, 42
  br i1 %cmp623, label %if.then.625, label %if.else.677

if.then.625:                                      ; preds = %sw.bb.621
  %394 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay627 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %394, i32 0, i32 0
  %gp_offset_p628 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay627, i32 0, i32 0
  %gp_offset629 = load i32, i32* %gp_offset_p628
  %fits_in_gp630 = icmp ule i32 %gp_offset629, 40
  br i1 %fits_in_gp630, label %vaarg.in_reg.631, label %vaarg.in_mem.633

vaarg.in_reg.631:                                 ; preds = %if.then.625
  %395 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay627, i32 0, i32 3
  %reg_save_area632 = load i8*, i8** %395
  %396 = getelementptr i8, i8* %reg_save_area632, i32 %gp_offset629
  %397 = bitcast i8* %396 to %struct.bufferinfo**
  %398 = add i32 %gp_offset629, 8
  store i32 %398, i32* %gp_offset_p628
  br label %vaarg.end.637

vaarg.in_mem.633:                                 ; preds = %if.then.625
  %overflow_arg_area_p634 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay627, i32 0, i32 2
  %overflow_arg_area635 = load i8*, i8** %overflow_arg_area_p634
  %399 = bitcast i8* %overflow_arg_area635 to %struct.bufferinfo**
  %overflow_arg_area.next636 = getelementptr i8, i8* %overflow_arg_area635, i32 8
  store i8* %overflow_arg_area.next636, i8** %overflow_arg_area_p634
  br label %vaarg.end.637

vaarg.end.637:                                    ; preds = %vaarg.in_mem.633, %vaarg.in_reg.631
  %vaarg.addr638 = phi %struct.bufferinfo** [ %397, %vaarg.in_reg.631 ], [ %399, %vaarg.in_mem.633 ]
  %400 = load %struct.bufferinfo*, %struct.bufferinfo** %vaarg.addr638
  store %struct.bufferinfo* %400, %struct.bufferinfo** %p626, align 8
  %401 = load i8, i8* %c, align 1
  %conv639 = sext i8 %401 to i32
  %cmp640 = icmp eq i32 %conv639, 122
  br i1 %cmp640, label %land.lhs.true.642, label %if.else.647

land.lhs.true.642:                                ; preds = %vaarg.end.637
  %402 = load %struct._object*, %struct._object** %arg.addr, align 8
  %cmp643 = icmp eq %struct._object* %402, @_Py_NoneStruct
  br i1 %cmp643, label %if.then.645, label %if.else.647

if.then.645:                                      ; preds = %land.lhs.true.642
  %403 = load %struct.bufferinfo*, %struct.bufferinfo** %p626, align 8
  %call646 = call i32 @PyBuffer_FillInfo(%struct.bufferinfo* %403, %struct._object* null, i8* null, i64 0, i32 1, i32 0)
  br label %if.end.670

if.else.647:                                      ; preds = %land.lhs.true.642, %vaarg.end.637
  %404 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type648 = getelementptr inbounds %struct._object, %struct._object* %404, i32 0, i32 1
  %405 = load %struct._typeobject*, %struct._typeobject** %ob_type648, align 8
  %tp_flags649 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %405, i32 0, i32 19
  %406 = load i64, i64* %tp_flags649, align 8
  %and650 = and i64 %406, 268435456
  %cmp651 = icmp ne i64 %and650, 0
  br i1 %cmp651, label %if.then.653, label %if.else.661

if.then.653:                                      ; preds = %if.else.647
  %407 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call654 = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %407, i64* %len)
  store i8* %call654, i8** %sarg, align 8
  %408 = load i8*, i8** %sarg, align 8
  %cmp655 = icmp eq i8* %408, null
  br i1 %cmp655, label %if.then.657, label %if.end.659

if.then.657:                                      ; preds = %if.then.653
  %409 = load %struct._object*, %struct._object** %arg.addr, align 8
  %410 = load i8*, i8** %msgbuf.addr, align 8
  %411 = load i64, i64* %bufsize.addr, align 8
  %call658 = call i8* @converterr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i32 0, i32 0), %struct._object* %409, i8* %410, i64 %411)
  store i8* %call658, i8** %retval
  br label %return

if.end.659:                                       ; preds = %if.then.653
  %412 = load %struct.bufferinfo*, %struct.bufferinfo** %p626, align 8
  %413 = load %struct._object*, %struct._object** %arg.addr, align 8
  %414 = load i8*, i8** %sarg, align 8
  %415 = load i64, i64* %len, align 8
  %call660 = call i32 @PyBuffer_FillInfo(%struct.bufferinfo* %412, %struct._object* %413, i8* %414, i64 %415, i32 1, i32 0)
  br label %if.end.669

if.else.661:                                      ; preds = %if.else.647
  %416 = load %struct._object*, %struct._object** %arg.addr, align 8
  %417 = load %struct.bufferinfo*, %struct.bufferinfo** %p626, align 8
  %call663 = call i32 @getbuffer(%struct._object* %416, %struct.bufferinfo* %417, i8** %buf662)
  %cmp664 = icmp slt i32 %call663, 0
  br i1 %cmp664, label %if.then.666, label %if.end.668

if.then.666:                                      ; preds = %if.else.661
  %418 = load i8*, i8** %buf662, align 8
  %419 = load %struct._object*, %struct._object** %arg.addr, align 8
  %420 = load i8*, i8** %msgbuf.addr, align 8
  %421 = load i64, i64* %bufsize.addr, align 8
  %call667 = call i8* @converterr(i8* %418, %struct._object* %419, i8* %420, i64 %421)
  store i8* %call667, i8** %retval
  br label %return

if.end.668:                                       ; preds = %if.else.661
  br label %if.end.669

if.end.669:                                       ; preds = %if.end.668, %if.end.659
  br label %if.end.670

if.end.670:                                       ; preds = %if.end.669, %if.then.645
  %422 = load %struct.bufferinfo*, %struct.bufferinfo** %p626, align 8
  %423 = bitcast %struct.bufferinfo* %422 to i8*
  %424 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8
  %call671 = call i32 @addcleanup(i8* %423, %struct.freelist_t* %424, i32 (%struct._object*, i8*)* @cleanup_buffer)
  %tobool672 = icmp ne i32 %call671, 0
  br i1 %tobool672, label %if.then.673, label %if.end.675

if.then.673:                                      ; preds = %if.end.670
  %425 = load %struct._object*, %struct._object** %arg.addr, align 8
  %426 = load i8*, i8** %msgbuf.addr, align 8
  %427 = load i64, i64* %bufsize.addr, align 8
  %call674 = call i8* @converterr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0), %struct._object* %425, i8* %426, i64 %427)
  store i8* %call674, i8** %retval
  br label %return

if.end.675:                                       ; preds = %if.end.670
  %428 = load i8*, i8** %format, align 8
  %incdec.ptr676 = getelementptr i8, i8* %428, i32 1
  store i8* %incdec.ptr676, i8** %format, align 8
  br label %if.end.846

if.else.677:                                      ; preds = %sw.bb.621
  %429 = load i8*, i8** %format, align 8
  %430 = load i8, i8* %429, align 1
  %conv678 = sext i8 %430 to i32
  %cmp679 = icmp eq i32 %conv678, 35
  br i1 %cmp679, label %if.then.681, label %if.else.786

if.then.681:                                      ; preds = %if.else.677
  %431 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay683 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %431, i32 0, i32 0
  %gp_offset_p684 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay683, i32 0, i32 0
  %gp_offset685 = load i32, i32* %gp_offset_p684
  %fits_in_gp686 = icmp ule i32 %gp_offset685, 40
  br i1 %fits_in_gp686, label %vaarg.in_reg.687, label %vaarg.in_mem.689

vaarg.in_reg.687:                                 ; preds = %if.then.681
  %432 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay683, i32 0, i32 3
  %reg_save_area688 = load i8*, i8** %432
  %433 = getelementptr i8, i8* %reg_save_area688, i32 %gp_offset685
  %434 = bitcast i8* %433 to i8***
  %435 = add i32 %gp_offset685, 8
  store i32 %435, i32* %gp_offset_p684
  br label %vaarg.end.693

vaarg.in_mem.689:                                 ; preds = %if.then.681
  %overflow_arg_area_p690 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay683, i32 0, i32 2
  %overflow_arg_area691 = load i8*, i8** %overflow_arg_area_p690
  %436 = bitcast i8* %overflow_arg_area691 to i8***
  %overflow_arg_area.next692 = getelementptr i8, i8* %overflow_arg_area691, i32 8
  store i8* %overflow_arg_area.next692, i8** %overflow_arg_area_p690
  br label %vaarg.end.693

vaarg.end.693:                                    ; preds = %vaarg.in_mem.689, %vaarg.in_reg.687
  %vaarg.addr694 = phi i8*** [ %434, %vaarg.in_reg.687 ], [ %436, %vaarg.in_mem.689 ]
  %437 = load i8**, i8*** %vaarg.addr694
  store i8** %437, i8*** %p682, align 8
  store i32* null, i32** %q695, align 8
  store i64* null, i64** %q2696, align 8
  %438 = load i32, i32* %flags.addr, align 4
  %and697 = and i32 %438, 2
  %tobool698 = icmp ne i32 %and697, 0
  br i1 %tobool698, label %if.then.699, label %if.else.712

if.then.699:                                      ; preds = %vaarg.end.693
  %439 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay700 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %439, i32 0, i32 0
  %gp_offset_p701 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay700, i32 0, i32 0
  %gp_offset702 = load i32, i32* %gp_offset_p701
  %fits_in_gp703 = icmp ule i32 %gp_offset702, 40
  br i1 %fits_in_gp703, label %vaarg.in_reg.704, label %vaarg.in_mem.706

vaarg.in_reg.704:                                 ; preds = %if.then.699
  %440 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay700, i32 0, i32 3
  %reg_save_area705 = load i8*, i8** %440
  %441 = getelementptr i8, i8* %reg_save_area705, i32 %gp_offset702
  %442 = bitcast i8* %441 to i64**
  %443 = add i32 %gp_offset702, 8
  store i32 %443, i32* %gp_offset_p701
  br label %vaarg.end.710

vaarg.in_mem.706:                                 ; preds = %if.then.699
  %overflow_arg_area_p707 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay700, i32 0, i32 2
  %overflow_arg_area708 = load i8*, i8** %overflow_arg_area_p707
  %444 = bitcast i8* %overflow_arg_area708 to i64**
  %overflow_arg_area.next709 = getelementptr i8, i8* %overflow_arg_area708, i32 8
  store i8* %overflow_arg_area.next709, i8** %overflow_arg_area_p707
  br label %vaarg.end.710

vaarg.end.710:                                    ; preds = %vaarg.in_mem.706, %vaarg.in_reg.704
  %vaarg.addr711 = phi i64** [ %442, %vaarg.in_reg.704 ], [ %444, %vaarg.in_mem.706 ]
  %445 = load i64*, i64** %vaarg.addr711
  store i64* %445, i64** %q2696, align 8
  br label %if.end.725

if.else.712:                                      ; preds = %vaarg.end.693
  %446 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay713 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %446, i32 0, i32 0
  %gp_offset_p714 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay713, i32 0, i32 0
  %gp_offset715 = load i32, i32* %gp_offset_p714
  %fits_in_gp716 = icmp ule i32 %gp_offset715, 40
  br i1 %fits_in_gp716, label %vaarg.in_reg.717, label %vaarg.in_mem.719

vaarg.in_reg.717:                                 ; preds = %if.else.712
  %447 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay713, i32 0, i32 3
  %reg_save_area718 = load i8*, i8** %447
  %448 = getelementptr i8, i8* %reg_save_area718, i32 %gp_offset715
  %449 = bitcast i8* %448 to i32**
  %450 = add i32 %gp_offset715, 8
  store i32 %450, i32* %gp_offset_p714
  br label %vaarg.end.723

vaarg.in_mem.719:                                 ; preds = %if.else.712
  %overflow_arg_area_p720 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay713, i32 0, i32 2
  %overflow_arg_area721 = load i8*, i8** %overflow_arg_area_p720
  %451 = bitcast i8* %overflow_arg_area721 to i32**
  %overflow_arg_area.next722 = getelementptr i8, i8* %overflow_arg_area721, i32 8
  store i8* %overflow_arg_area.next722, i8** %overflow_arg_area_p720
  br label %vaarg.end.723

vaarg.end.723:                                    ; preds = %vaarg.in_mem.719, %vaarg.in_reg.717
  %vaarg.addr724 = phi i32** [ %449, %vaarg.in_reg.717 ], [ %451, %vaarg.in_mem.719 ]
  %452 = load i32*, i32** %vaarg.addr724
  store i32* %452, i32** %q695, align 8
  br label %if.end.725

if.end.725:                                       ; preds = %vaarg.end.723, %vaarg.end.710
  %453 = load i8, i8* %c, align 1
  %conv726 = sext i8 %453 to i32
  %cmp727 = icmp eq i32 %conv726, 122
  br i1 %cmp727, label %land.lhs.true.729, label %if.else.738

land.lhs.true.729:                                ; preds = %if.end.725
  %454 = load %struct._object*, %struct._object** %arg.addr, align 8
  %cmp730 = icmp eq %struct._object* %454, @_Py_NoneStruct
  br i1 %cmp730, label %if.then.732, label %if.else.738

if.then.732:                                      ; preds = %land.lhs.true.729
  %455 = load i8**, i8*** %p682, align 8
  store i8* null, i8** %455, align 8
  %456 = load i32, i32* %flags.addr, align 4
  %and733 = and i32 %456, 2
  %tobool734 = icmp ne i32 %and733, 0
  br i1 %tobool734, label %if.then.735, label %if.else.736

if.then.735:                                      ; preds = %if.then.732
  %457 = load i64*, i64** %q2696, align 8
  store i64 0, i64* %457, align 8
  br label %if.end.737

if.else.736:                                      ; preds = %if.then.732
  %458 = load i32*, i32** %q695, align 8
  store i32 0, i32* %458, align 4
  br label %if.end.737

if.end.737:                                       ; preds = %if.else.736, %if.then.735
  br label %if.end.784

if.else.738:                                      ; preds = %land.lhs.true.729, %if.end.725
  %459 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type739 = getelementptr inbounds %struct._object, %struct._object* %459, i32 0, i32 1
  %460 = load %struct._typeobject*, %struct._typeobject** %ob_type739, align 8
  %tp_flags740 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %460, i32 0, i32 19
  %461 = load i64, i64* %tp_flags740, align 8
  %and741 = and i64 %461, 268435456
  %cmp742 = icmp ne i64 %and741, 0
  br i1 %cmp742, label %if.then.744, label %if.else.763

if.then.744:                                      ; preds = %if.else.738
  %462 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call746 = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %462, i64* %len745)
  store i8* %call746, i8** %sarg, align 8
  %463 = load i8*, i8** %sarg, align 8
  %cmp747 = icmp eq i8* %463, null
  br i1 %cmp747, label %if.then.749, label %if.end.751

if.then.749:                                      ; preds = %if.then.744
  %464 = load %struct._object*, %struct._object** %arg.addr, align 8
  %465 = load i8*, i8** %msgbuf.addr, align 8
  %466 = load i64, i64* %bufsize.addr, align 8
  %call750 = call i8* @converterr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i32 0, i32 0), %struct._object* %464, i8* %465, i64 %466)
  store i8* %call750, i8** %retval
  br label %return

if.end.751:                                       ; preds = %if.then.744
  %467 = load i8*, i8** %sarg, align 8
  %468 = load i8**, i8*** %p682, align 8
  store i8* %467, i8** %468, align 8
  %469 = load i32, i32* %flags.addr, align 4
  %and752 = and i32 %469, 2
  %tobool753 = icmp ne i32 %and752, 0
  br i1 %tobool753, label %if.then.754, label %if.else.755

if.then.754:                                      ; preds = %if.end.751
  %470 = load i64, i64* %len745, align 8
  %471 = load i64*, i64** %q2696, align 8
  store i64 %470, i64* %471, align 8
  br label %if.end.762

if.else.755:                                      ; preds = %if.end.751
  %472 = load i64, i64* %len745, align 8
  %cmp756 = icmp slt i64 2147483647, %472
  br i1 %cmp756, label %if.then.758, label %if.end.760

if.then.758:                                      ; preds = %if.else.755
  %473 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %473, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.42, i32 0, i32 0))
  %474 = load %struct._object*, %struct._object** %arg.addr, align 8
  %475 = load i8*, i8** %msgbuf.addr, align 8
  %476 = load i64, i64* %bufsize.addr, align 8
  %call759 = call i8* @converterr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %struct._object* %474, i8* %475, i64 %476)
  store i8* %call759, i8** %retval
  br label %return

if.end.760:                                       ; preds = %if.else.755
  %477 = load i64, i64* %len745, align 8
  %conv761 = trunc i64 %477 to i32
  %478 = load i32*, i32** %q695, align 8
  store i32 %conv761, i32* %478, align 4
  br label %if.end.762

if.end.762:                                       ; preds = %if.end.760, %if.then.754
  br label %if.end.783

if.else.763:                                      ; preds = %if.else.738
  %479 = load %struct._object*, %struct._object** %arg.addr, align 8
  %480 = load i8**, i8*** %p682, align 8
  %call766 = call i64 @convertbuffer(%struct._object* %479, i8** %480, i8** %buf764)
  store i64 %call766, i64* %count765, align 8
  %481 = load i64, i64* %count765, align 8
  %cmp767 = icmp slt i64 %481, 0
  br i1 %cmp767, label %if.then.769, label %if.end.771

if.then.769:                                      ; preds = %if.else.763
  %482 = load i8*, i8** %buf764, align 8
  %483 = load %struct._object*, %struct._object** %arg.addr, align 8
  %484 = load i8*, i8** %msgbuf.addr, align 8
  %485 = load i64, i64* %bufsize.addr, align 8
  %call770 = call i8* @converterr(i8* %482, %struct._object* %483, i8* %484, i64 %485)
  store i8* %call770, i8** %retval
  br label %return

if.end.771:                                       ; preds = %if.else.763
  %486 = load i32, i32* %flags.addr, align 4
  %and772 = and i32 %486, 2
  %tobool773 = icmp ne i32 %and772, 0
  br i1 %tobool773, label %if.then.774, label %if.else.775

if.then.774:                                      ; preds = %if.end.771
  %487 = load i64, i64* %count765, align 8
  %488 = load i64*, i64** %q2696, align 8
  store i64 %487, i64* %488, align 8
  br label %if.end.782

if.else.775:                                      ; preds = %if.end.771
  %489 = load i64, i64* %count765, align 8
  %cmp776 = icmp slt i64 2147483647, %489
  br i1 %cmp776, label %if.then.778, label %if.end.780

if.then.778:                                      ; preds = %if.else.775
  %490 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %490, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.42, i32 0, i32 0))
  %491 = load %struct._object*, %struct._object** %arg.addr, align 8
  %492 = load i8*, i8** %msgbuf.addr, align 8
  %493 = load i64, i64* %bufsize.addr, align 8
  %call779 = call i8* @converterr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %struct._object* %491, i8* %492, i64 %493)
  store i8* %call779, i8** %retval
  br label %return

if.end.780:                                       ; preds = %if.else.775
  %494 = load i64, i64* %count765, align 8
  %conv781 = trunc i64 %494 to i32
  %495 = load i32*, i32** %q695, align 8
  store i32 %conv781, i32* %495, align 4
  br label %if.end.782

if.end.782:                                       ; preds = %if.end.780, %if.then.774
  br label %if.end.783

if.end.783:                                       ; preds = %if.end.782, %if.end.762
  br label %if.end.784

if.end.784:                                       ; preds = %if.end.783, %if.end.737
  %496 = load i8*, i8** %format, align 8
  %incdec.ptr785 = getelementptr i8, i8* %496, i32 1
  store i8* %incdec.ptr785, i8** %format, align 8
  br label %if.end.845

if.else.786:                                      ; preds = %if.else.677
  %497 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay788 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %497, i32 0, i32 0
  %gp_offset_p789 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay788, i32 0, i32 0
  %gp_offset790 = load i32, i32* %gp_offset_p789
  %fits_in_gp791 = icmp ule i32 %gp_offset790, 40
  br i1 %fits_in_gp791, label %vaarg.in_reg.792, label %vaarg.in_mem.794

vaarg.in_reg.792:                                 ; preds = %if.else.786
  %498 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay788, i32 0, i32 3
  %reg_save_area793 = load i8*, i8** %498
  %499 = getelementptr i8, i8* %reg_save_area793, i32 %gp_offset790
  %500 = bitcast i8* %499 to i8***
  %501 = add i32 %gp_offset790, 8
  store i32 %501, i32* %gp_offset_p789
  br label %vaarg.end.798

vaarg.in_mem.794:                                 ; preds = %if.else.786
  %overflow_arg_area_p795 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay788, i32 0, i32 2
  %overflow_arg_area796 = load i8*, i8** %overflow_arg_area_p795
  %502 = bitcast i8* %overflow_arg_area796 to i8***
  %overflow_arg_area.next797 = getelementptr i8, i8* %overflow_arg_area796, i32 8
  store i8* %overflow_arg_area.next797, i8** %overflow_arg_area_p795
  br label %vaarg.end.798

vaarg.end.798:                                    ; preds = %vaarg.in_mem.794, %vaarg.in_reg.792
  %vaarg.addr799 = phi i8*** [ %500, %vaarg.in_reg.792 ], [ %502, %vaarg.in_mem.794 ]
  %503 = load i8**, i8*** %vaarg.addr799
  store i8** %503, i8*** %p787, align 8
  store i8* null, i8** %sarg, align 8
  %504 = load i8, i8* %c, align 1
  %conv801 = sext i8 %504 to i32
  %cmp802 = icmp eq i32 %conv801, 122
  br i1 %cmp802, label %land.lhs.true.804, label %if.else.808

land.lhs.true.804:                                ; preds = %vaarg.end.798
  %505 = load %struct._object*, %struct._object** %arg.addr, align 8
  %cmp805 = icmp eq %struct._object* %505, @_Py_NoneStruct
  br i1 %cmp805, label %if.then.807, label %if.else.808

if.then.807:                                      ; preds = %land.lhs.true.804
  %506 = load i8**, i8*** %p787, align 8
  store i8* null, i8** %506, align 8
  br label %if.end.828

if.else.808:                                      ; preds = %land.lhs.true.804, %vaarg.end.798
  %507 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type809 = getelementptr inbounds %struct._object, %struct._object* %507, i32 0, i32 1
  %508 = load %struct._typeobject*, %struct._typeobject** %ob_type809, align 8
  %tp_flags810 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %508, i32 0, i32 19
  %509 = load i64, i64* %tp_flags810, align 8
  %and811 = and i64 %509, 268435456
  %cmp812 = icmp ne i64 %and811, 0
  br i1 %cmp812, label %if.then.814, label %if.else.821

if.then.814:                                      ; preds = %if.else.808
  %510 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call815 = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %510, i64* %len800)
  store i8* %call815, i8** %sarg, align 8
  %511 = load i8*, i8** %sarg, align 8
  %cmp816 = icmp eq i8* %511, null
  br i1 %cmp816, label %if.then.818, label %if.end.820

if.then.818:                                      ; preds = %if.then.814
  %512 = load %struct._object*, %struct._object** %arg.addr, align 8
  %513 = load i8*, i8** %msgbuf.addr, align 8
  %514 = load i64, i64* %bufsize.addr, align 8
  %call819 = call i8* @converterr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i32 0, i32 0), %struct._object* %512, i8* %513, i64 %514)
  store i8* %call819, i8** %retval
  br label %return

if.end.820:                                       ; preds = %if.then.814
  %515 = load i8*, i8** %sarg, align 8
  %516 = load i8**, i8*** %p787, align 8
  store i8* %515, i8** %516, align 8
  br label %if.end.827

if.else.821:                                      ; preds = %if.else.808
  %517 = load i8, i8* %c, align 1
  %conv822 = sext i8 %517 to i32
  %cmp823 = icmp eq i32 %conv822, 122
  %cond825 = select i1 %cmp823, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0)
  %518 = load %struct._object*, %struct._object** %arg.addr, align 8
  %519 = load i8*, i8** %msgbuf.addr, align 8
  %520 = load i64, i64* %bufsize.addr, align 8
  %call826 = call i8* @converterr(i8* %cond825, %struct._object* %518, i8* %519, i64 %520)
  store i8* %call826, i8** %retval
  br label %return

if.end.827:                                       ; preds = %if.end.820
  br label %if.end.828

if.end.828:                                       ; preds = %if.end.827, %if.then.807
  %521 = load i8**, i8*** %p787, align 8
  %522 = load i8*, i8** %521, align 8
  %cmp829 = icmp ne i8* %522, null
  br i1 %cmp829, label %land.lhs.true.831, label %if.end.844

land.lhs.true.831:                                ; preds = %if.end.828
  %523 = load i8*, i8** %sarg, align 8
  %cmp832 = icmp ne i8* %523, null
  br i1 %cmp832, label %land.lhs.true.834, label %if.end.844

land.lhs.true.834:                                ; preds = %land.lhs.true.831
  %524 = load i8**, i8*** %p787, align 8
  %525 = load i8*, i8** %524, align 8
  %call835 = call i64 @strlen(i8* %525) #7
  %526 = load i64, i64* %len800, align 8
  %cmp836 = icmp ne i64 %call835, %526
  br i1 %cmp836, label %if.then.838, label %if.end.844

if.then.838:                                      ; preds = %land.lhs.true.834
  %527 = load i8, i8* %c, align 1
  %conv839 = sext i8 %527 to i32
  %cmp840 = icmp eq i32 %conv839, 122
  %cond842 = select i1 %cmp840, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i32 0, i32 0)
  %528 = load %struct._object*, %struct._object** %arg.addr, align 8
  %529 = load i8*, i8** %msgbuf.addr, align 8
  %530 = load i64, i64* %bufsize.addr, align 8
  %call843 = call i8* @converterr(i8* %cond842, %struct._object* %528, i8* %529, i64 %530)
  store i8* %call843, i8** %retval
  br label %return

if.end.844:                                       ; preds = %land.lhs.true.834, %land.lhs.true.831, %if.end.828
  br label %if.end.845

if.end.845:                                       ; preds = %if.end.844, %if.end.784
  br label %if.end.846

if.end.846:                                       ; preds = %if.end.845, %if.end.675
  br label %sw.epilog

sw.bb.847:                                        ; preds = %entry, %entry
  %531 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay849 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %531, i32 0, i32 0
  %gp_offset_p850 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay849, i32 0, i32 0
  %gp_offset851 = load i32, i32* %gp_offset_p850
  %fits_in_gp852 = icmp ule i32 %gp_offset851, 40
  br i1 %fits_in_gp852, label %vaarg.in_reg.853, label %vaarg.in_mem.855

vaarg.in_reg.853:                                 ; preds = %sw.bb.847
  %532 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay849, i32 0, i32 3
  %reg_save_area854 = load i8*, i8** %532
  %533 = getelementptr i8, i8* %reg_save_area854, i32 %gp_offset851
  %534 = bitcast i8* %533 to i32***
  %535 = add i32 %gp_offset851, 8
  store i32 %535, i32* %gp_offset_p850
  br label %vaarg.end.859

vaarg.in_mem.855:                                 ; preds = %sw.bb.847
  %overflow_arg_area_p856 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay849, i32 0, i32 2
  %overflow_arg_area857 = load i8*, i8** %overflow_arg_area_p856
  %536 = bitcast i8* %overflow_arg_area857 to i32***
  %overflow_arg_area.next858 = getelementptr i8, i8* %overflow_arg_area857, i32 8
  store i8* %overflow_arg_area.next858, i8** %overflow_arg_area_p856
  br label %vaarg.end.859

vaarg.end.859:                                    ; preds = %vaarg.in_mem.855, %vaarg.in_reg.853
  %vaarg.addr860 = phi i32*** [ %534, %vaarg.in_reg.853 ], [ %536, %vaarg.in_mem.855 ]
  %537 = load i32**, i32*** %vaarg.addr860
  store i32** %537, i32*** %p848, align 8
  %538 = load i8*, i8** %format, align 8
  %539 = load i8, i8* %538, align 1
  %conv861 = sext i8 %539 to i32
  %cmp862 = icmp eq i32 %conv861, 35
  br i1 %cmp862, label %if.then.864, label %if.else.937

if.then.864:                                      ; preds = %vaarg.end.859
  store i32* null, i32** %q865, align 8
  store i64* null, i64** %q2866, align 8
  %540 = load i32, i32* %flags.addr, align 4
  %and867 = and i32 %540, 2
  %tobool868 = icmp ne i32 %and867, 0
  br i1 %tobool868, label %if.then.869, label %if.else.882

if.then.869:                                      ; preds = %if.then.864
  %541 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay870 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %541, i32 0, i32 0
  %gp_offset_p871 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay870, i32 0, i32 0
  %gp_offset872 = load i32, i32* %gp_offset_p871
  %fits_in_gp873 = icmp ule i32 %gp_offset872, 40
  br i1 %fits_in_gp873, label %vaarg.in_reg.874, label %vaarg.in_mem.876

vaarg.in_reg.874:                                 ; preds = %if.then.869
  %542 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay870, i32 0, i32 3
  %reg_save_area875 = load i8*, i8** %542
  %543 = getelementptr i8, i8* %reg_save_area875, i32 %gp_offset872
  %544 = bitcast i8* %543 to i64**
  %545 = add i32 %gp_offset872, 8
  store i32 %545, i32* %gp_offset_p871
  br label %vaarg.end.880

vaarg.in_mem.876:                                 ; preds = %if.then.869
  %overflow_arg_area_p877 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay870, i32 0, i32 2
  %overflow_arg_area878 = load i8*, i8** %overflow_arg_area_p877
  %546 = bitcast i8* %overflow_arg_area878 to i64**
  %overflow_arg_area.next879 = getelementptr i8, i8* %overflow_arg_area878, i32 8
  store i8* %overflow_arg_area.next879, i8** %overflow_arg_area_p877
  br label %vaarg.end.880

vaarg.end.880:                                    ; preds = %vaarg.in_mem.876, %vaarg.in_reg.874
  %vaarg.addr881 = phi i64** [ %544, %vaarg.in_reg.874 ], [ %546, %vaarg.in_mem.876 ]
  %547 = load i64*, i64** %vaarg.addr881
  store i64* %547, i64** %q2866, align 8
  br label %if.end.895

if.else.882:                                      ; preds = %if.then.864
  %548 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay883 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %548, i32 0, i32 0
  %gp_offset_p884 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay883, i32 0, i32 0
  %gp_offset885 = load i32, i32* %gp_offset_p884
  %fits_in_gp886 = icmp ule i32 %gp_offset885, 40
  br i1 %fits_in_gp886, label %vaarg.in_reg.887, label %vaarg.in_mem.889

vaarg.in_reg.887:                                 ; preds = %if.else.882
  %549 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay883, i32 0, i32 3
  %reg_save_area888 = load i8*, i8** %549
  %550 = getelementptr i8, i8* %reg_save_area888, i32 %gp_offset885
  %551 = bitcast i8* %550 to i32**
  %552 = add i32 %gp_offset885, 8
  store i32 %552, i32* %gp_offset_p884
  br label %vaarg.end.893

vaarg.in_mem.889:                                 ; preds = %if.else.882
  %overflow_arg_area_p890 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay883, i32 0, i32 2
  %overflow_arg_area891 = load i8*, i8** %overflow_arg_area_p890
  %553 = bitcast i8* %overflow_arg_area891 to i32**
  %overflow_arg_area.next892 = getelementptr i8, i8* %overflow_arg_area891, i32 8
  store i8* %overflow_arg_area.next892, i8** %overflow_arg_area_p890
  br label %vaarg.end.893

vaarg.end.893:                                    ; preds = %vaarg.in_mem.889, %vaarg.in_reg.887
  %vaarg.addr894 = phi i32** [ %551, %vaarg.in_reg.887 ], [ %553, %vaarg.in_mem.889 ]
  %554 = load i32*, i32** %vaarg.addr894
  store i32* %554, i32** %q865, align 8
  br label %if.end.895

if.end.895:                                       ; preds = %vaarg.end.893, %vaarg.end.880
  %555 = load i8, i8* %c, align 1
  %conv896 = sext i8 %555 to i32
  %cmp897 = icmp eq i32 %conv896, 90
  br i1 %cmp897, label %land.lhs.true.899, label %if.else.908

land.lhs.true.899:                                ; preds = %if.end.895
  %556 = load %struct._object*, %struct._object** %arg.addr, align 8
  %cmp900 = icmp eq %struct._object* %556, @_Py_NoneStruct
  br i1 %cmp900, label %if.then.902, label %if.else.908

if.then.902:                                      ; preds = %land.lhs.true.899
  %557 = load i32**, i32*** %p848, align 8
  store i32* null, i32** %557, align 8
  %558 = load i32, i32* %flags.addr, align 4
  %and903 = and i32 %558, 2
  %tobool904 = icmp ne i32 %and903, 0
  br i1 %tobool904, label %if.then.905, label %if.else.906

if.then.905:                                      ; preds = %if.then.902
  %559 = load i64*, i64** %q2866, align 8
  store i64 0, i64* %559, align 8
  br label %if.end.907

if.else.906:                                      ; preds = %if.then.902
  %560 = load i32*, i32** %q865, align 8
  store i32 0, i32* %560, align 4
  br label %if.end.907

if.end.907:                                       ; preds = %if.else.906, %if.then.905
  br label %if.end.935

if.else.908:                                      ; preds = %land.lhs.true.899, %if.end.895
  %561 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type909 = getelementptr inbounds %struct._object, %struct._object* %561, i32 0, i32 1
  %562 = load %struct._typeobject*, %struct._typeobject** %ob_type909, align 8
  %tp_flags910 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %562, i32 0, i32 19
  %563 = load i64, i64* %tp_flags910, align 8
  %and911 = and i64 %563, 268435456
  %cmp912 = icmp ne i64 %and911, 0
  br i1 %cmp912, label %if.then.914, label %if.else.932

if.then.914:                                      ; preds = %if.else.908
  %564 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call916 = call i32* @PyUnicode_AsUnicodeAndSize(%struct._object* %564, i64* %len915)
  %565 = load i32**, i32*** %p848, align 8
  store i32* %call916, i32** %565, align 8
  %566 = load i32**, i32*** %p848, align 8
  %567 = load i32*, i32** %566, align 8
  %cmp917 = icmp eq i32* %567, null
  br i1 %cmp917, label %if.then.919, label %if.end.920

if.then.919:                                      ; preds = %if.then.914
  %568 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %568, i8** %retval
  br label %return

if.end.920:                                       ; preds = %if.then.914
  %569 = load i32, i32* %flags.addr, align 4
  %and921 = and i32 %569, 2
  %tobool922 = icmp ne i32 %and921, 0
  br i1 %tobool922, label %if.then.923, label %if.else.924

if.then.923:                                      ; preds = %if.end.920
  %570 = load i64, i64* %len915, align 8
  %571 = load i64*, i64** %q2866, align 8
  store i64 %570, i64* %571, align 8
  br label %if.end.931

if.else.924:                                      ; preds = %if.end.920
  %572 = load i64, i64* %len915, align 8
  %cmp925 = icmp slt i64 2147483647, %572
  br i1 %cmp925, label %if.then.927, label %if.end.929

if.then.927:                                      ; preds = %if.else.924
  %573 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %573, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.42, i32 0, i32 0))
  %574 = load %struct._object*, %struct._object** %arg.addr, align 8
  %575 = load i8*, i8** %msgbuf.addr, align 8
  %576 = load i64, i64* %bufsize.addr, align 8
  %call928 = call i8* @converterr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %struct._object* %574, i8* %575, i64 %576)
  store i8* %call928, i8** %retval
  br label %return

if.end.929:                                       ; preds = %if.else.924
  %577 = load i64, i64* %len915, align 8
  %conv930 = trunc i64 %577 to i32
  %578 = load i32*, i32** %q865, align 8
  store i32 %conv930, i32* %578, align 4
  br label %if.end.931

if.end.931:                                       ; preds = %if.end.929, %if.then.923
  br label %if.end.934

if.else.932:                                      ; preds = %if.else.908
  %579 = load %struct._object*, %struct._object** %arg.addr, align 8
  %580 = load i8*, i8** %msgbuf.addr, align 8
  %581 = load i64, i64* %bufsize.addr, align 8
  %call933 = call i8* @converterr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0), %struct._object* %579, i8* %580, i64 %581)
  store i8* %call933, i8** %retval
  br label %return

if.end.934:                                       ; preds = %if.end.931
  br label %if.end.935

if.end.935:                                       ; preds = %if.end.934, %if.end.907
  %582 = load i8*, i8** %format, align 8
  %incdec.ptr936 = getelementptr i8, i8* %582, i32 1
  store i8* %incdec.ptr936, i8** %format, align 8
  br label %if.end.972

if.else.937:                                      ; preds = %vaarg.end.859
  %583 = load i8, i8* %c, align 1
  %conv938 = sext i8 %583 to i32
  %cmp939 = icmp eq i32 %conv938, 90
  br i1 %cmp939, label %land.lhs.true.941, label %if.else.945

land.lhs.true.941:                                ; preds = %if.else.937
  %584 = load %struct._object*, %struct._object** %arg.addr, align 8
  %cmp942 = icmp eq %struct._object* %584, @_Py_NoneStruct
  br i1 %cmp942, label %if.then.944, label %if.else.945

if.then.944:                                      ; preds = %land.lhs.true.941
  %585 = load i32**, i32*** %p848, align 8
  store i32* null, i32** %585, align 8
  br label %if.end.971

if.else.945:                                      ; preds = %land.lhs.true.941, %if.else.937
  %586 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type946 = getelementptr inbounds %struct._object, %struct._object* %586, i32 0, i32 1
  %587 = load %struct._typeobject*, %struct._typeobject** %ob_type946, align 8
  %tp_flags947 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %587, i32 0, i32 19
  %588 = load i64, i64* %tp_flags947, align 8
  %and948 = and i64 %588, 268435456
  %cmp949 = icmp ne i64 %and948, 0
  br i1 %cmp949, label %if.then.951, label %if.else.964

if.then.951:                                      ; preds = %if.else.945
  %589 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call953 = call i32* @PyUnicode_AsUnicodeAndSize(%struct._object* %589, i64* %len952)
  %590 = load i32**, i32*** %p848, align 8
  store i32* %call953, i32** %590, align 8
  %591 = load i32**, i32*** %p848, align 8
  %592 = load i32*, i32** %591, align 8
  %cmp954 = icmp eq i32* %592, null
  br i1 %cmp954, label %if.then.956, label %if.end.957

if.then.956:                                      ; preds = %if.then.951
  %593 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %593, i8** %retval
  br label %return

if.end.957:                                       ; preds = %if.then.951
  %594 = load i32**, i32*** %p848, align 8
  %595 = load i32*, i32** %594, align 8
  %call958 = call i64 @Py_UNICODE_strlen(i32* %595)
  %596 = load i64, i64* %len952, align 8
  %cmp959 = icmp ne i64 %call958, %596
  br i1 %cmp959, label %if.then.961, label %if.end.963

if.then.961:                                      ; preds = %if.end.957
  %597 = load %struct._object*, %struct._object** %arg.addr, align 8
  %598 = load i8*, i8** %msgbuf.addr, align 8
  %599 = load i64, i64* %bufsize.addr, align 8
  %call962 = call i8* @converterr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.47, i32 0, i32 0), %struct._object* %597, i8* %598, i64 %599)
  store i8* %call962, i8** %retval
  br label %return

if.end.963:                                       ; preds = %if.end.957
  br label %if.end.970

if.else.964:                                      ; preds = %if.else.945
  %600 = load i8, i8* %c, align 1
  %conv965 = sext i8 %600 to i32
  %cmp966 = icmp eq i32 %conv965, 90
  %cond968 = select i1 %cmp966, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0)
  %601 = load %struct._object*, %struct._object** %arg.addr, align 8
  %602 = load i8*, i8** %msgbuf.addr, align 8
  %603 = load i64, i64* %bufsize.addr, align 8
  %call969 = call i8* @converterr(i8* %cond968, %struct._object* %601, i8* %602, i64 %603)
  store i8* %call969, i8** %retval
  br label %return

if.end.970:                                       ; preds = %if.end.963
  br label %if.end.971

if.end.971:                                       ; preds = %if.end.970, %if.then.944
  br label %if.end.972

if.end.972:                                       ; preds = %if.end.971, %if.end.935
  br label %sw.epilog

sw.bb.973:                                        ; preds = %entry
  %604 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay974 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %604, i32 0, i32 0
  %gp_offset_p975 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay974, i32 0, i32 0
  %gp_offset976 = load i32, i32* %gp_offset_p975
  %fits_in_gp977 = icmp ule i32 %gp_offset976, 40
  br i1 %fits_in_gp977, label %vaarg.in_reg.978, label %vaarg.in_mem.980

vaarg.in_reg.978:                                 ; preds = %sw.bb.973
  %605 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay974, i32 0, i32 3
  %reg_save_area979 = load i8*, i8** %605
  %606 = getelementptr i8, i8* %reg_save_area979, i32 %gp_offset976
  %607 = bitcast i8* %606 to i8**
  %608 = add i32 %gp_offset976, 8
  store i32 %608, i32* %gp_offset_p975
  br label %vaarg.end.984

vaarg.in_mem.980:                                 ; preds = %sw.bb.973
  %overflow_arg_area_p981 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay974, i32 0, i32 2
  %overflow_arg_area982 = load i8*, i8** %overflow_arg_area_p981
  %609 = bitcast i8* %overflow_arg_area982 to i8**
  %overflow_arg_area.next983 = getelementptr i8, i8* %overflow_arg_area982, i32 8
  store i8* %overflow_arg_area.next983, i8** %overflow_arg_area_p981
  br label %vaarg.end.984

vaarg.end.984:                                    ; preds = %vaarg.in_mem.980, %vaarg.in_reg.978
  %vaarg.addr985 = phi i8** [ %607, %vaarg.in_reg.978 ], [ %609, %vaarg.in_mem.980 ]
  %610 = load i8*, i8** %vaarg.addr985
  store i8* %610, i8** %encoding, align 8
  %611 = load i8*, i8** %encoding, align 8
  %cmp986 = icmp eq i8* %611, null
  br i1 %cmp986, label %if.then.988, label %if.end.990

if.then.988:                                      ; preds = %vaarg.end.984
  %call989 = call i8* @PyUnicode_GetDefaultEncoding()
  store i8* %call989, i8** %encoding, align 8
  br label %if.end.990

if.end.990:                                       ; preds = %if.then.988, %vaarg.end.984
  %612 = load i8*, i8** %format, align 8
  %613 = load i8, i8* %612, align 1
  %conv991 = sext i8 %613 to i32
  %cmp992 = icmp eq i32 %conv991, 115
  br i1 %cmp992, label %if.then.994, label %if.else.995

if.then.994:                                      ; preds = %if.end.990
  store i32 1, i32* %recode_strings, align 4
  br label %if.end.1003

if.else.995:                                      ; preds = %if.end.990
  %614 = load i8*, i8** %format, align 8
  %615 = load i8, i8* %614, align 1
  %conv996 = sext i8 %615 to i32
  %cmp997 = icmp eq i32 %conv996, 116
  br i1 %cmp997, label %if.then.999, label %if.else.1000

if.then.999:                                      ; preds = %if.else.995
  store i32 0, i32* %recode_strings, align 4
  br label %if.end.1002

if.else.1000:                                     ; preds = %if.else.995
  %616 = load %struct._object*, %struct._object** %arg.addr, align 8
  %617 = load i8*, i8** %msgbuf.addr, align 8
  %618 = load i64, i64* %bufsize.addr, align 8
  %call1001 = call i8* @converterr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.49, i32 0, i32 0), %struct._object* %616, i8* %617, i64 %618)
  store i8* %call1001, i8** %retval
  br label %return

if.end.1002:                                      ; preds = %if.then.999
  br label %if.end.1003

if.end.1003:                                      ; preds = %if.end.1002, %if.then.994
  %619 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay1004 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %619, i32 0, i32 0
  %gp_offset_p1005 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1004, i32 0, i32 0
  %gp_offset1006 = load i32, i32* %gp_offset_p1005
  %fits_in_gp1007 = icmp ule i32 %gp_offset1006, 40
  br i1 %fits_in_gp1007, label %vaarg.in_reg.1008, label %vaarg.in_mem.1010

vaarg.in_reg.1008:                                ; preds = %if.end.1003
  %620 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1004, i32 0, i32 3
  %reg_save_area1009 = load i8*, i8** %620
  %621 = getelementptr i8, i8* %reg_save_area1009, i32 %gp_offset1006
  %622 = bitcast i8* %621 to i8***
  %623 = add i32 %gp_offset1006, 8
  store i32 %623, i32* %gp_offset_p1005
  br label %vaarg.end.1014

vaarg.in_mem.1010:                                ; preds = %if.end.1003
  %overflow_arg_area_p1011 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1004, i32 0, i32 2
  %overflow_arg_area1012 = load i8*, i8** %overflow_arg_area_p1011
  %624 = bitcast i8* %overflow_arg_area1012 to i8***
  %overflow_arg_area.next1013 = getelementptr i8, i8* %overflow_arg_area1012, i32 8
  store i8* %overflow_arg_area.next1013, i8** %overflow_arg_area_p1011
  br label %vaarg.end.1014

vaarg.end.1014:                                   ; preds = %vaarg.in_mem.1010, %vaarg.in_reg.1008
  %vaarg.addr1015 = phi i8*** [ %622, %vaarg.in_reg.1008 ], [ %624, %vaarg.in_mem.1010 ]
  %625 = load i8**, i8*** %vaarg.addr1015
  store i8** %625, i8*** %buffer, align 8
  %626 = load i8*, i8** %format, align 8
  %incdec.ptr1016 = getelementptr i8, i8* %626, i32 1
  store i8* %incdec.ptr1016, i8** %format, align 8
  %627 = load i8**, i8*** %buffer, align 8
  %cmp1017 = icmp eq i8** %627, null
  br i1 %cmp1017, label %if.then.1019, label %if.end.1021

if.then.1019:                                     ; preds = %vaarg.end.1014
  %628 = load %struct._object*, %struct._object** %arg.addr, align 8
  %629 = load i8*, i8** %msgbuf.addr, align 8
  %630 = load i64, i64* %bufsize.addr, align 8
  %call1020 = call i8* @converterr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i32 0, i32 0), %struct._object* %628, i8* %629, i64 %630)
  store i8* %call1020, i8** %retval
  br label %return

if.end.1021:                                      ; preds = %vaarg.end.1014
  %631 = load i32, i32* %recode_strings, align 4
  %tobool1022 = icmp ne i32 %631, 0
  br i1 %tobool1022, label %if.else.1045, label %land.lhs.true.1023

land.lhs.true.1023:                               ; preds = %if.end.1021
  %632 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type1024 = getelementptr inbounds %struct._object, %struct._object* %632, i32 0, i32 1
  %633 = load %struct._typeobject*, %struct._typeobject** %ob_type1024, align 8
  %tp_flags1025 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %633, i32 0, i32 19
  %634 = load i64, i64* %tp_flags1025, align 8
  %and1026 = and i64 %634, 134217728
  %cmp1027 = icmp ne i64 %and1026, 0
  br i1 %cmp1027, label %if.then.1037, label %lor.lhs.false.1029

lor.lhs.false.1029:                               ; preds = %land.lhs.true.1023
  %635 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type1030 = getelementptr inbounds %struct._object, %struct._object* %635, i32 0, i32 1
  %636 = load %struct._typeobject*, %struct._typeobject** %ob_type1030, align 8
  %cmp1031 = icmp eq %struct._typeobject* %636, @PyByteArray_Type
  br i1 %cmp1031, label %if.then.1037, label %lor.lhs.false.1033

lor.lhs.false.1033:                               ; preds = %lor.lhs.false.1029
  %637 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type1034 = getelementptr inbounds %struct._object, %struct._object* %637, i32 0, i32 1
  %638 = load %struct._typeobject*, %struct._typeobject** %ob_type1034, align 8
  %call1035 = call i32 @PyType_IsSubtype(%struct._typeobject* %638, %struct._typeobject* @PyByteArray_Type)
  %tobool1036 = icmp ne i32 %call1035, 0
  br i1 %tobool1036, label %if.then.1037, label %if.else.1045

if.then.1037:                                     ; preds = %lor.lhs.false.1033, %lor.lhs.false.1029, %land.lhs.true.1023
  %639 = load %struct._object*, %struct._object** %arg.addr, align 8
  store %struct._object* %639, %struct._object** %s, align 8
  %640 = load %struct._object*, %struct._object** %s, align 8
  %ob_refcnt1038 = getelementptr inbounds %struct._object, %struct._object* %640, i32 0, i32 0
  %641 = load i64, i64* %ob_refcnt1038, align 8
  %inc = add i64 %641, 1
  store i64 %inc, i64* %ob_refcnt1038, align 8
  %642 = load %struct._object*, %struct._object** %s, align 8
  %call1039 = call i32 @PyObject_AsCharBuffer(%struct._object* %642, i8** %ptr, i64* %size)
  %cmp1040 = icmp slt i32 %call1039, 0
  br i1 %cmp1040, label %if.then.1042, label %if.end.1044

if.then.1042:                                     ; preds = %if.then.1037
  %643 = load %struct._object*, %struct._object** %arg.addr, align 8
  %644 = load i8*, i8** %msgbuf.addr, align 8
  %645 = load i64, i64* %bufsize.addr, align 8
  %call1043 = call i8* @converterr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.51, i32 0, i32 0), %struct._object* %643, i8* %644, i64 %645)
  store i8* %call1043, i8** %retval
  br label %return

if.end.1044:                                      ; preds = %if.then.1037
  br label %if.end.1097

if.else.1045:                                     ; preds = %lor.lhs.false.1033, %if.end.1021
  %646 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call1046 = call %struct._object* @PyUnicode_FromObject(%struct._object* %646)
  store %struct._object* %call1046, %struct._object** %u, align 8
  %647 = load %struct._object*, %struct._object** %u, align 8
  %cmp1047 = icmp eq %struct._object* %647, null
  br i1 %cmp1047, label %if.then.1049, label %if.end.1051

if.then.1049:                                     ; preds = %if.else.1045
  %648 = load %struct._object*, %struct._object** %arg.addr, align 8
  %649 = load i8*, i8** %msgbuf.addr, align 8
  %650 = load i64, i64* %bufsize.addr, align 8
  %call1050 = call i8* @converterr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.52, i32 0, i32 0), %struct._object* %648, i8* %649, i64 %650)
  store i8* %call1050, i8** %retval
  br label %return

if.end.1051:                                      ; preds = %if.else.1045
  %651 = load %struct._object*, %struct._object** %u, align 8
  %652 = load i8*, i8** %encoding, align 8
  %call1052 = call %struct._object* @PyUnicode_AsEncodedString(%struct._object* %651, i8* %652, i8* null)
  store %struct._object* %call1052, %struct._object** %s, align 8
  br label %do.body.1053

do.body.1053:                                     ; preds = %if.end.1051
  %653 = load %struct._object*, %struct._object** %u, align 8
  store %struct._object* %653, %struct._object** %_py_decref_tmp1054, align 8
  %654 = load %struct._object*, %struct._object** %_py_decref_tmp1054, align 8
  %ob_refcnt1055 = getelementptr inbounds %struct._object, %struct._object* %654, i32 0, i32 0
  %655 = load i64, i64* %ob_refcnt1055, align 8
  %dec1056 = add i64 %655, -1
  store i64 %dec1056, i64* %ob_refcnt1055, align 8
  %cmp1057 = icmp ne i64 %dec1056, 0
  br i1 %cmp1057, label %if.then.1059, label %if.else.1060

if.then.1059:                                     ; preds = %do.body.1053
  br label %if.end.1063

if.else.1060:                                     ; preds = %do.body.1053
  %656 = load %struct._object*, %struct._object** %_py_decref_tmp1054, align 8
  %ob_type1061 = getelementptr inbounds %struct._object, %struct._object* %656, i32 0, i32 1
  %657 = load %struct._typeobject*, %struct._typeobject** %ob_type1061, align 8
  %tp_dealloc1062 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %657, i32 0, i32 4
  %658 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1062, align 8
  %659 = load %struct._object*, %struct._object** %_py_decref_tmp1054, align 8
  call void %658(%struct._object* %659)
  br label %if.end.1063

if.end.1063:                                      ; preds = %if.else.1060, %if.then.1059
  br label %do.end.1064

do.end.1064:                                      ; preds = %if.end.1063
  %660 = load %struct._object*, %struct._object** %s, align 8
  %cmp1065 = icmp eq %struct._object* %660, null
  br i1 %cmp1065, label %if.then.1067, label %if.end.1069

if.then.1067:                                     ; preds = %do.end.1064
  %661 = load %struct._object*, %struct._object** %arg.addr, align 8
  %662 = load i8*, i8** %msgbuf.addr, align 8
  %663 = load i64, i64* %bufsize.addr, align 8
  %call1068 = call i8* @converterr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.53, i32 0, i32 0), %struct._object* %661, i8* %662, i64 %663)
  store i8* %call1068, i8** %retval
  br label %return

if.end.1069:                                      ; preds = %do.end.1064
  %664 = load %struct._object*, %struct._object** %s, align 8
  %ob_type1070 = getelementptr inbounds %struct._object, %struct._object* %664, i32 0, i32 1
  %665 = load %struct._typeobject*, %struct._typeobject** %ob_type1070, align 8
  %tp_flags1071 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %665, i32 0, i32 19
  %666 = load i64, i64* %tp_flags1071, align 8
  %and1072 = and i64 %666, 134217728
  %cmp1073 = icmp ne i64 %and1072, 0
  br i1 %cmp1073, label %if.end.1089, label %if.then.1075

if.then.1075:                                     ; preds = %if.end.1069
  br label %do.body.1076

do.body.1076:                                     ; preds = %if.then.1075
  %667 = load %struct._object*, %struct._object** %s, align 8
  store %struct._object* %667, %struct._object** %_py_decref_tmp1077, align 8
  %668 = load %struct._object*, %struct._object** %_py_decref_tmp1077, align 8
  %ob_refcnt1078 = getelementptr inbounds %struct._object, %struct._object* %668, i32 0, i32 0
  %669 = load i64, i64* %ob_refcnt1078, align 8
  %dec1079 = add i64 %669, -1
  store i64 %dec1079, i64* %ob_refcnt1078, align 8
  %cmp1080 = icmp ne i64 %dec1079, 0
  br i1 %cmp1080, label %if.then.1082, label %if.else.1083

if.then.1082:                                     ; preds = %do.body.1076
  br label %if.end.1086

if.else.1083:                                     ; preds = %do.body.1076
  %670 = load %struct._object*, %struct._object** %_py_decref_tmp1077, align 8
  %ob_type1084 = getelementptr inbounds %struct._object, %struct._object* %670, i32 0, i32 1
  %671 = load %struct._typeobject*, %struct._typeobject** %ob_type1084, align 8
  %tp_dealloc1085 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %671, i32 0, i32 4
  %672 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1085, align 8
  %673 = load %struct._object*, %struct._object** %_py_decref_tmp1077, align 8
  call void %672(%struct._object* %673)
  br label %if.end.1086

if.end.1086:                                      ; preds = %if.else.1083, %if.then.1082
  br label %do.end.1087

do.end.1087:                                      ; preds = %if.end.1086
  %674 = load %struct._object*, %struct._object** %arg.addr, align 8
  %675 = load i8*, i8** %msgbuf.addr, align 8
  %676 = load i64, i64* %bufsize.addr, align 8
  %call1088 = call i8* @converterr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.54, i32 0, i32 0), %struct._object* %674, i8* %675, i64 %676)
  store i8* %call1088, i8** %retval
  br label %return

if.end.1089:                                      ; preds = %if.end.1069
  %677 = load %struct._object*, %struct._object** %s, align 8
  %678 = bitcast %struct._object* %677 to %struct.PyVarObject*
  %ob_size1090 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %678, i32 0, i32 1
  %679 = load i64, i64* %ob_size1090, align 8
  store i64 %679, i64* %size, align 8
  %680 = load %struct._object*, %struct._object** %s, align 8
  %681 = bitcast %struct._object* %680 to %struct.PyBytesObject*
  %ob_sval1091 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %681, i32 0, i32 2
  %arraydecay1092 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval1091, i32 0, i32 0
  store i8* %arraydecay1092, i8** %ptr, align 8
  %682 = load i8*, i8** %ptr, align 8
  %cmp1093 = icmp eq i8* %682, null
  br i1 %cmp1093, label %if.then.1095, label %if.end.1096

if.then.1095:                                     ; preds = %if.end.1089
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8** %ptr, align 8
  br label %if.end.1096

if.end.1096:                                      ; preds = %if.then.1095, %if.end.1089
  br label %if.end.1097

if.end.1097:                                      ; preds = %if.end.1096, %if.end.1044
  %683 = load i8*, i8** %format, align 8
  %684 = load i8, i8* %683, align 1
  %conv1098 = sext i8 %684 to i32
  %cmp1099 = icmp eq i32 %conv1098, 35
  br i1 %cmp1099, label %if.then.1101, label %if.else.1238

if.then.1101:                                     ; preds = %if.end.1097
  store i32* null, i32** %q1102, align 8
  store i64* null, i64** %q21103, align 8
  %685 = load i32, i32* %flags.addr, align 4
  %and1104 = and i32 %685, 2
  %tobool1105 = icmp ne i32 %and1104, 0
  br i1 %tobool1105, label %if.then.1106, label %if.else.1119

if.then.1106:                                     ; preds = %if.then.1101
  %686 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay1107 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %686, i32 0, i32 0
  %gp_offset_p1108 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1107, i32 0, i32 0
  %gp_offset1109 = load i32, i32* %gp_offset_p1108
  %fits_in_gp1110 = icmp ule i32 %gp_offset1109, 40
  br i1 %fits_in_gp1110, label %vaarg.in_reg.1111, label %vaarg.in_mem.1113

vaarg.in_reg.1111:                                ; preds = %if.then.1106
  %687 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1107, i32 0, i32 3
  %reg_save_area1112 = load i8*, i8** %687
  %688 = getelementptr i8, i8* %reg_save_area1112, i32 %gp_offset1109
  %689 = bitcast i8* %688 to i64**
  %690 = add i32 %gp_offset1109, 8
  store i32 %690, i32* %gp_offset_p1108
  br label %vaarg.end.1117

vaarg.in_mem.1113:                                ; preds = %if.then.1106
  %overflow_arg_area_p1114 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1107, i32 0, i32 2
  %overflow_arg_area1115 = load i8*, i8** %overflow_arg_area_p1114
  %691 = bitcast i8* %overflow_arg_area1115 to i64**
  %overflow_arg_area.next1116 = getelementptr i8, i8* %overflow_arg_area1115, i32 8
  store i8* %overflow_arg_area.next1116, i8** %overflow_arg_area_p1114
  br label %vaarg.end.1117

vaarg.end.1117:                                   ; preds = %vaarg.in_mem.1113, %vaarg.in_reg.1111
  %vaarg.addr1118 = phi i64** [ %689, %vaarg.in_reg.1111 ], [ %691, %vaarg.in_mem.1113 ]
  %692 = load i64*, i64** %vaarg.addr1118
  store i64* %692, i64** %q21103, align 8
  br label %if.end.1132

if.else.1119:                                     ; preds = %if.then.1101
  %693 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay1120 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %693, i32 0, i32 0
  %gp_offset_p1121 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1120, i32 0, i32 0
  %gp_offset1122 = load i32, i32* %gp_offset_p1121
  %fits_in_gp1123 = icmp ule i32 %gp_offset1122, 40
  br i1 %fits_in_gp1123, label %vaarg.in_reg.1124, label %vaarg.in_mem.1126

vaarg.in_reg.1124:                                ; preds = %if.else.1119
  %694 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1120, i32 0, i32 3
  %reg_save_area1125 = load i8*, i8** %694
  %695 = getelementptr i8, i8* %reg_save_area1125, i32 %gp_offset1122
  %696 = bitcast i8* %695 to i32**
  %697 = add i32 %gp_offset1122, 8
  store i32 %697, i32* %gp_offset_p1121
  br label %vaarg.end.1130

vaarg.in_mem.1126:                                ; preds = %if.else.1119
  %overflow_arg_area_p1127 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1120, i32 0, i32 2
  %overflow_arg_area1128 = load i8*, i8** %overflow_arg_area_p1127
  %698 = bitcast i8* %overflow_arg_area1128 to i32**
  %overflow_arg_area.next1129 = getelementptr i8, i8* %overflow_arg_area1128, i32 8
  store i8* %overflow_arg_area.next1129, i8** %overflow_arg_area_p1127
  br label %vaarg.end.1130

vaarg.end.1130:                                   ; preds = %vaarg.in_mem.1126, %vaarg.in_reg.1124
  %vaarg.addr1131 = phi i32** [ %696, %vaarg.in_reg.1124 ], [ %698, %vaarg.in_mem.1126 ]
  %699 = load i32*, i32** %vaarg.addr1131
  store i32* %699, i32** %q1102, align 8
  br label %if.end.1132

if.end.1132:                                      ; preds = %vaarg.end.1130, %vaarg.end.1117
  %700 = load i8*, i8** %format, align 8
  %incdec.ptr1133 = getelementptr i8, i8* %700, i32 1
  store i8* %incdec.ptr1133, i8** %format, align 8
  %701 = load i32*, i32** %q1102, align 8
  %cmp1134 = icmp eq i32* %701, null
  br i1 %cmp1134, label %land.lhs.true.1136, label %if.end.1153

land.lhs.true.1136:                               ; preds = %if.end.1132
  %702 = load i64*, i64** %q21103, align 8
  %cmp1137 = icmp eq i64* %702, null
  br i1 %cmp1137, label %if.then.1139, label %if.end.1153

if.then.1139:                                     ; preds = %land.lhs.true.1136
  br label %do.body.1140

do.body.1140:                                     ; preds = %if.then.1139
  %703 = load %struct._object*, %struct._object** %s, align 8
  store %struct._object* %703, %struct._object** %_py_decref_tmp1141, align 8
  %704 = load %struct._object*, %struct._object** %_py_decref_tmp1141, align 8
  %ob_refcnt1142 = getelementptr inbounds %struct._object, %struct._object* %704, i32 0, i32 0
  %705 = load i64, i64* %ob_refcnt1142, align 8
  %dec1143 = add i64 %705, -1
  store i64 %dec1143, i64* %ob_refcnt1142, align 8
  %cmp1144 = icmp ne i64 %dec1143, 0
  br i1 %cmp1144, label %if.then.1146, label %if.else.1147

if.then.1146:                                     ; preds = %do.body.1140
  br label %if.end.1150

if.else.1147:                                     ; preds = %do.body.1140
  %706 = load %struct._object*, %struct._object** %_py_decref_tmp1141, align 8
  %ob_type1148 = getelementptr inbounds %struct._object, %struct._object* %706, i32 0, i32 1
  %707 = load %struct._typeobject*, %struct._typeobject** %ob_type1148, align 8
  %tp_dealloc1149 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %707, i32 0, i32 4
  %708 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1149, align 8
  %709 = load %struct._object*, %struct._object** %_py_decref_tmp1141, align 8
  call void %708(%struct._object* %709)
  br label %if.end.1150

if.end.1150:                                      ; preds = %if.else.1147, %if.then.1146
  br label %do.end.1151

do.end.1151:                                      ; preds = %if.end.1150
  %710 = load %struct._object*, %struct._object** %arg.addr, align 8
  %711 = load i8*, i8** %msgbuf.addr, align 8
  %712 = load i64, i64* %bufsize.addr, align 8
  %call1152 = call i8* @converterr(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.55, i32 0, i32 0), %struct._object* %710, i8* %711, i64 %712)
  store i8* %call1152, i8** %retval
  br label %return

if.end.1153:                                      ; preds = %land.lhs.true.1136, %if.end.1132
  %713 = load i8**, i8*** %buffer, align 8
  %714 = load i8*, i8** %713, align 8
  %cmp1154 = icmp eq i8* %714, null
  br i1 %cmp1154, label %if.then.1156, label %if.else.1199

if.then.1156:                                     ; preds = %if.end.1153
  %715 = load i64, i64* %size, align 8
  %add = add i64 %715, 1
  %cmp1157 = icmp ugt i64 %add, 9223372036854775807
  br i1 %cmp1157, label %cond.true.1159, label %cond.false.1160

cond.true.1159:                                   ; preds = %if.then.1156
  br label %cond.end.1163

cond.false.1160:                                  ; preds = %if.then.1156
  %716 = load i64, i64* %size, align 8
  %add1161 = add i64 %716, 1
  %mul = mul i64 %add1161, 1
  %call1162 = call i8* @PyMem_Malloc(i64 %mul)
  br label %cond.end.1163

cond.end.1163:                                    ; preds = %cond.false.1160, %cond.true.1159
  %cond1164 = phi i8* [ null, %cond.true.1159 ], [ %call1162, %cond.false.1160 ]
  %717 = load i8**, i8*** %buffer, align 8
  store i8* %cond1164, i8** %717, align 8
  %718 = load i8**, i8*** %buffer, align 8
  %719 = load i8*, i8** %718, align 8
  %cmp1165 = icmp eq i8* %719, null
  br i1 %cmp1165, label %if.then.1167, label %if.end.1181

if.then.1167:                                     ; preds = %cond.end.1163
  br label %do.body.1168

do.body.1168:                                     ; preds = %if.then.1167
  %720 = load %struct._object*, %struct._object** %s, align 8
  store %struct._object* %720, %struct._object** %_py_decref_tmp1169, align 8
  %721 = load %struct._object*, %struct._object** %_py_decref_tmp1169, align 8
  %ob_refcnt1170 = getelementptr inbounds %struct._object, %struct._object* %721, i32 0, i32 0
  %722 = load i64, i64* %ob_refcnt1170, align 8
  %dec1171 = add i64 %722, -1
  store i64 %dec1171, i64* %ob_refcnt1170, align 8
  %cmp1172 = icmp ne i64 %dec1171, 0
  br i1 %cmp1172, label %if.then.1174, label %if.else.1175

if.then.1174:                                     ; preds = %do.body.1168
  br label %if.end.1178

if.else.1175:                                     ; preds = %do.body.1168
  %723 = load %struct._object*, %struct._object** %_py_decref_tmp1169, align 8
  %ob_type1176 = getelementptr inbounds %struct._object, %struct._object* %723, i32 0, i32 1
  %724 = load %struct._typeobject*, %struct._typeobject** %ob_type1176, align 8
  %tp_dealloc1177 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %724, i32 0, i32 4
  %725 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1177, align 8
  %726 = load %struct._object*, %struct._object** %_py_decref_tmp1169, align 8
  call void %725(%struct._object* %726)
  br label %if.end.1178

if.end.1178:                                      ; preds = %if.else.1175, %if.then.1174
  br label %do.end.1179

do.end.1179:                                      ; preds = %if.end.1178
  %call1180 = call %struct._object* @PyErr_NoMemory()
  %727 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %727, i8** %retval
  br label %return

if.end.1181:                                      ; preds = %cond.end.1163
  %728 = load i8**, i8*** %buffer, align 8
  %729 = load i8*, i8** %728, align 8
  %730 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8
  %call1182 = call i32 @addcleanup(i8* %729, %struct.freelist_t* %730, i32 (%struct._object*, i8*)* @cleanup_ptr)
  %tobool1183 = icmp ne i32 %call1182, 0
  br i1 %tobool1183, label %if.then.1184, label %if.end.1198

if.then.1184:                                     ; preds = %if.end.1181
  br label %do.body.1185

do.body.1185:                                     ; preds = %if.then.1184
  %731 = load %struct._object*, %struct._object** %s, align 8
  store %struct._object* %731, %struct._object** %_py_decref_tmp1186, align 8
  %732 = load %struct._object*, %struct._object** %_py_decref_tmp1186, align 8
  %ob_refcnt1187 = getelementptr inbounds %struct._object, %struct._object* %732, i32 0, i32 0
  %733 = load i64, i64* %ob_refcnt1187, align 8
  %dec1188 = add i64 %733, -1
  store i64 %dec1188, i64* %ob_refcnt1187, align 8
  %cmp1189 = icmp ne i64 %dec1188, 0
  br i1 %cmp1189, label %if.then.1191, label %if.else.1192

if.then.1191:                                     ; preds = %do.body.1185
  br label %if.end.1195

if.else.1192:                                     ; preds = %do.body.1185
  %734 = load %struct._object*, %struct._object** %_py_decref_tmp1186, align 8
  %ob_type1193 = getelementptr inbounds %struct._object, %struct._object* %734, i32 0, i32 1
  %735 = load %struct._typeobject*, %struct._typeobject** %ob_type1193, align 8
  %tp_dealloc1194 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %735, i32 0, i32 4
  %736 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1194, align 8
  %737 = load %struct._object*, %struct._object** %_py_decref_tmp1186, align 8
  call void %736(%struct._object* %737)
  br label %if.end.1195

if.end.1195:                                      ; preds = %if.else.1192, %if.then.1191
  br label %do.end.1196

do.end.1196:                                      ; preds = %if.end.1195
  %738 = load %struct._object*, %struct._object** %arg.addr, align 8
  %739 = load i8*, i8** %msgbuf.addr, align 8
  %740 = load i64, i64* %bufsize.addr, align 8
  %call1197 = call i8* @converterr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0), %struct._object* %738, i8* %739, i64 %740)
  store i8* %call1197, i8** %retval
  br label %return

if.end.1198:                                      ; preds = %if.end.1181
  br label %if.end.1225

if.else.1199:                                     ; preds = %if.end.1153
  %741 = load i64, i64* %size, align 8
  %add1200 = add i64 %741, 1
  %742 = load i32, i32* %flags.addr, align 4
  %and1201 = and i32 %742, 2
  %tobool1202 = icmp ne i32 %and1201, 0
  br i1 %tobool1202, label %cond.true.1203, label %cond.false.1204

cond.true.1203:                                   ; preds = %if.else.1199
  %743 = load i64*, i64** %q21103, align 8
  %744 = load i64, i64* %743, align 8
  br label %cond.end.1206

cond.false.1204:                                  ; preds = %if.else.1199
  %745 = load i32*, i32** %q1102, align 8
  %746 = load i32, i32* %745, align 4
  %conv1205 = sext i32 %746 to i64
  br label %cond.end.1206

cond.end.1206:                                    ; preds = %cond.false.1204, %cond.true.1203
  %cond1207 = phi i64 [ %744, %cond.true.1203 ], [ %conv1205, %cond.false.1204 ]
  %cmp1208 = icmp sgt i64 %add1200, %cond1207
  br i1 %cmp1208, label %if.then.1210, label %if.end.1224

if.then.1210:                                     ; preds = %cond.end.1206
  br label %do.body.1211

do.body.1211:                                     ; preds = %if.then.1210
  %747 = load %struct._object*, %struct._object** %s, align 8
  store %struct._object* %747, %struct._object** %_py_decref_tmp1212, align 8
  %748 = load %struct._object*, %struct._object** %_py_decref_tmp1212, align 8
  %ob_refcnt1213 = getelementptr inbounds %struct._object, %struct._object* %748, i32 0, i32 0
  %749 = load i64, i64* %ob_refcnt1213, align 8
  %dec1214 = add i64 %749, -1
  store i64 %dec1214, i64* %ob_refcnt1213, align 8
  %cmp1215 = icmp ne i64 %dec1214, 0
  br i1 %cmp1215, label %if.then.1217, label %if.else.1218

if.then.1217:                                     ; preds = %do.body.1211
  br label %if.end.1221

if.else.1218:                                     ; preds = %do.body.1211
  %750 = load %struct._object*, %struct._object** %_py_decref_tmp1212, align 8
  %ob_type1219 = getelementptr inbounds %struct._object, %struct._object* %750, i32 0, i32 1
  %751 = load %struct._typeobject*, %struct._typeobject** %ob_type1219, align 8
  %tp_dealloc1220 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %751, i32 0, i32 4
  %752 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1220, align 8
  %753 = load %struct._object*, %struct._object** %_py_decref_tmp1212, align 8
  call void %752(%struct._object* %753)
  br label %if.end.1221

if.end.1221:                                      ; preds = %if.else.1218, %if.then.1217
  br label %do.end.1222

do.end.1222:                                      ; preds = %if.end.1221
  %754 = load %struct._object*, %struct._object** %arg.addr, align 8
  %755 = load i8*, i8** %msgbuf.addr, align 8
  %756 = load i64, i64* %bufsize.addr, align 8
  %call1223 = call i8* @converterr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.56, i32 0, i32 0), %struct._object* %754, i8* %755, i64 %756)
  store i8* %call1223, i8** %retval
  br label %return

if.end.1224:                                      ; preds = %cond.end.1206
  br label %if.end.1225

if.end.1225:                                      ; preds = %if.end.1224, %if.end.1198
  %757 = load i8**, i8*** %buffer, align 8
  %758 = load i8*, i8** %757, align 8
  %759 = load i8*, i8** %ptr, align 8
  %760 = load i64, i64* %size, align 8
  %add1226 = add i64 %760, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %758, i8* %759, i64 %add1226, i32 1, i1 false)
  %761 = load i32, i32* %flags.addr, align 4
  %and1227 = and i32 %761, 2
  %tobool1228 = icmp ne i32 %and1227, 0
  br i1 %tobool1228, label %if.then.1229, label %if.else.1230

if.then.1229:                                     ; preds = %if.end.1225
  %762 = load i64, i64* %size, align 8
  %763 = load i64*, i64** %q21103, align 8
  store i64 %762, i64* %763, align 8
  br label %if.end.1237

if.else.1230:                                     ; preds = %if.end.1225
  %764 = load i64, i64* %size, align 8
  %cmp1231 = icmp slt i64 2147483647, %764
  br i1 %cmp1231, label %if.then.1233, label %if.end.1235

if.then.1233:                                     ; preds = %if.else.1230
  %765 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %765, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.42, i32 0, i32 0))
  %766 = load %struct._object*, %struct._object** %arg.addr, align 8
  %767 = load i8*, i8** %msgbuf.addr, align 8
  %768 = load i64, i64* %bufsize.addr, align 8
  %call1234 = call i8* @converterr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %struct._object* %766, i8* %767, i64 %768)
  store i8* %call1234, i8** %retval
  br label %return

if.end.1235:                                      ; preds = %if.else.1230
  %769 = load i64, i64* %size, align 8
  %conv1236 = trunc i64 %769 to i32
  %770 = load i32*, i32** %q1102, align 8
  store i32 %conv1236, i32* %770, align 4
  br label %if.end.1237

if.end.1237:                                      ; preds = %if.end.1235, %if.then.1229
  br label %if.end.1302

if.else.1238:                                     ; preds = %if.end.1097
  %771 = load i8*, i8** %ptr, align 8
  %call1239 = call i64 @strlen(i8* %771) #7
  %772 = load i64, i64* %size, align 8
  %cmp1240 = icmp ne i64 %call1239, %772
  br i1 %cmp1240, label %if.then.1242, label %if.end.1256

if.then.1242:                                     ; preds = %if.else.1238
  br label %do.body.1243

do.body.1243:                                     ; preds = %if.then.1242
  %773 = load %struct._object*, %struct._object** %s, align 8
  store %struct._object* %773, %struct._object** %_py_decref_tmp1244, align 8
  %774 = load %struct._object*, %struct._object** %_py_decref_tmp1244, align 8
  %ob_refcnt1245 = getelementptr inbounds %struct._object, %struct._object* %774, i32 0, i32 0
  %775 = load i64, i64* %ob_refcnt1245, align 8
  %dec1246 = add i64 %775, -1
  store i64 %dec1246, i64* %ob_refcnt1245, align 8
  %cmp1247 = icmp ne i64 %dec1246, 0
  br i1 %cmp1247, label %if.then.1249, label %if.else.1250

if.then.1249:                                     ; preds = %do.body.1243
  br label %if.end.1253

if.else.1250:                                     ; preds = %do.body.1243
  %776 = load %struct._object*, %struct._object** %_py_decref_tmp1244, align 8
  %ob_type1251 = getelementptr inbounds %struct._object, %struct._object* %776, i32 0, i32 1
  %777 = load %struct._typeobject*, %struct._typeobject** %ob_type1251, align 8
  %tp_dealloc1252 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %777, i32 0, i32 4
  %778 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1252, align 8
  %779 = load %struct._object*, %struct._object** %_py_decref_tmp1244, align 8
  call void %778(%struct._object* %779)
  br label %if.end.1253

if.end.1253:                                      ; preds = %if.else.1250, %if.then.1249
  br label %do.end.1254

do.end.1254:                                      ; preds = %if.end.1253
  %780 = load %struct._object*, %struct._object** %arg.addr, align 8
  %781 = load i8*, i8** %msgbuf.addr, align 8
  %782 = load i64, i64* %bufsize.addr, align 8
  %call1255 = call i8* @converterr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.57, i32 0, i32 0), %struct._object* %780, i8* %781, i64 %782)
  store i8* %call1255, i8** %retval
  br label %return

if.end.1256:                                      ; preds = %if.else.1238
  %783 = load i64, i64* %size, align 8
  %add1257 = add i64 %783, 1
  %cmp1258 = icmp ugt i64 %add1257, 9223372036854775807
  br i1 %cmp1258, label %cond.true.1260, label %cond.false.1261

cond.true.1260:                                   ; preds = %if.end.1256
  br label %cond.end.1265

cond.false.1261:                                  ; preds = %if.end.1256
  %784 = load i64, i64* %size, align 8
  %add1262 = add i64 %784, 1
  %mul1263 = mul i64 %add1262, 1
  %call1264 = call i8* @PyMem_Malloc(i64 %mul1263)
  br label %cond.end.1265

cond.end.1265:                                    ; preds = %cond.false.1261, %cond.true.1260
  %cond1266 = phi i8* [ null, %cond.true.1260 ], [ %call1264, %cond.false.1261 ]
  %785 = load i8**, i8*** %buffer, align 8
  store i8* %cond1266, i8** %785, align 8
  %786 = load i8**, i8*** %buffer, align 8
  %787 = load i8*, i8** %786, align 8
  %cmp1267 = icmp eq i8* %787, null
  br i1 %cmp1267, label %if.then.1269, label %if.end.1283

if.then.1269:                                     ; preds = %cond.end.1265
  br label %do.body.1270

do.body.1270:                                     ; preds = %if.then.1269
  %788 = load %struct._object*, %struct._object** %s, align 8
  store %struct._object* %788, %struct._object** %_py_decref_tmp1271, align 8
  %789 = load %struct._object*, %struct._object** %_py_decref_tmp1271, align 8
  %ob_refcnt1272 = getelementptr inbounds %struct._object, %struct._object* %789, i32 0, i32 0
  %790 = load i64, i64* %ob_refcnt1272, align 8
  %dec1273 = add i64 %790, -1
  store i64 %dec1273, i64* %ob_refcnt1272, align 8
  %cmp1274 = icmp ne i64 %dec1273, 0
  br i1 %cmp1274, label %if.then.1276, label %if.else.1277

if.then.1276:                                     ; preds = %do.body.1270
  br label %if.end.1280

if.else.1277:                                     ; preds = %do.body.1270
  %791 = load %struct._object*, %struct._object** %_py_decref_tmp1271, align 8
  %ob_type1278 = getelementptr inbounds %struct._object, %struct._object* %791, i32 0, i32 1
  %792 = load %struct._typeobject*, %struct._typeobject** %ob_type1278, align 8
  %tp_dealloc1279 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %792, i32 0, i32 4
  %793 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1279, align 8
  %794 = load %struct._object*, %struct._object** %_py_decref_tmp1271, align 8
  call void %793(%struct._object* %794)
  br label %if.end.1280

if.end.1280:                                      ; preds = %if.else.1277, %if.then.1276
  br label %do.end.1281

do.end.1281:                                      ; preds = %if.end.1280
  %call1282 = call %struct._object* @PyErr_NoMemory()
  %795 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %795, i8** %retval
  br label %return

if.end.1283:                                      ; preds = %cond.end.1265
  %796 = load i8**, i8*** %buffer, align 8
  %797 = load i8*, i8** %796, align 8
  %798 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8
  %call1284 = call i32 @addcleanup(i8* %797, %struct.freelist_t* %798, i32 (%struct._object*, i8*)* @cleanup_ptr)
  %tobool1285 = icmp ne i32 %call1284, 0
  br i1 %tobool1285, label %if.then.1286, label %if.end.1300

if.then.1286:                                     ; preds = %if.end.1283
  br label %do.body.1287

do.body.1287:                                     ; preds = %if.then.1286
  %799 = load %struct._object*, %struct._object** %s, align 8
  store %struct._object* %799, %struct._object** %_py_decref_tmp1288, align 8
  %800 = load %struct._object*, %struct._object** %_py_decref_tmp1288, align 8
  %ob_refcnt1289 = getelementptr inbounds %struct._object, %struct._object* %800, i32 0, i32 0
  %801 = load i64, i64* %ob_refcnt1289, align 8
  %dec1290 = add i64 %801, -1
  store i64 %dec1290, i64* %ob_refcnt1289, align 8
  %cmp1291 = icmp ne i64 %dec1290, 0
  br i1 %cmp1291, label %if.then.1293, label %if.else.1294

if.then.1293:                                     ; preds = %do.body.1287
  br label %if.end.1297

if.else.1294:                                     ; preds = %do.body.1287
  %802 = load %struct._object*, %struct._object** %_py_decref_tmp1288, align 8
  %ob_type1295 = getelementptr inbounds %struct._object, %struct._object* %802, i32 0, i32 1
  %803 = load %struct._typeobject*, %struct._typeobject** %ob_type1295, align 8
  %tp_dealloc1296 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %803, i32 0, i32 4
  %804 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1296, align 8
  %805 = load %struct._object*, %struct._object** %_py_decref_tmp1288, align 8
  call void %804(%struct._object* %805)
  br label %if.end.1297

if.end.1297:                                      ; preds = %if.else.1294, %if.then.1293
  br label %do.end.1298

do.end.1298:                                      ; preds = %if.end.1297
  %806 = load %struct._object*, %struct._object** %arg.addr, align 8
  %807 = load i8*, i8** %msgbuf.addr, align 8
  %808 = load i64, i64* %bufsize.addr, align 8
  %call1299 = call i8* @converterr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0), %struct._object* %806, i8* %807, i64 %808)
  store i8* %call1299, i8** %retval
  br label %return

if.end.1300:                                      ; preds = %if.end.1283
  %809 = load i8**, i8*** %buffer, align 8
  %810 = load i8*, i8** %809, align 8
  %811 = load i8*, i8** %ptr, align 8
  %812 = load i64, i64* %size, align 8
  %add1301 = add i64 %812, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %810, i8* %811, i64 %add1301, i32 1, i1 false)
  br label %if.end.1302

if.end.1302:                                      ; preds = %if.end.1300, %if.end.1237
  br label %do.body.1303

do.body.1303:                                     ; preds = %if.end.1302
  %813 = load %struct._object*, %struct._object** %s, align 8
  store %struct._object* %813, %struct._object** %_py_decref_tmp1304, align 8
  %814 = load %struct._object*, %struct._object** %_py_decref_tmp1304, align 8
  %ob_refcnt1305 = getelementptr inbounds %struct._object, %struct._object* %814, i32 0, i32 0
  %815 = load i64, i64* %ob_refcnt1305, align 8
  %dec1306 = add i64 %815, -1
  store i64 %dec1306, i64* %ob_refcnt1305, align 8
  %cmp1307 = icmp ne i64 %dec1306, 0
  br i1 %cmp1307, label %if.then.1309, label %if.else.1310

if.then.1309:                                     ; preds = %do.body.1303
  br label %if.end.1313

if.else.1310:                                     ; preds = %do.body.1303
  %816 = load %struct._object*, %struct._object** %_py_decref_tmp1304, align 8
  %ob_type1311 = getelementptr inbounds %struct._object, %struct._object* %816, i32 0, i32 1
  %817 = load %struct._typeobject*, %struct._typeobject** %ob_type1311, align 8
  %tp_dealloc1312 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %817, i32 0, i32 4
  %818 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1312, align 8
  %819 = load %struct._object*, %struct._object** %_py_decref_tmp1304, align 8
  call void %818(%struct._object* %819)
  br label %if.end.1313

if.end.1313:                                      ; preds = %if.else.1310, %if.then.1309
  br label %do.end.1314

do.end.1314:                                      ; preds = %if.end.1313
  br label %sw.epilog

sw.bb.1315:                                       ; preds = %entry
  %820 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay1317 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %820, i32 0, i32 0
  %gp_offset_p1318 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1317, i32 0, i32 0
  %gp_offset1319 = load i32, i32* %gp_offset_p1318
  %fits_in_gp1320 = icmp ule i32 %gp_offset1319, 40
  br i1 %fits_in_gp1320, label %vaarg.in_reg.1321, label %vaarg.in_mem.1323

vaarg.in_reg.1321:                                ; preds = %sw.bb.1315
  %821 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1317, i32 0, i32 3
  %reg_save_area1322 = load i8*, i8** %821
  %822 = getelementptr i8, i8* %reg_save_area1322, i32 %gp_offset1319
  %823 = bitcast i8* %822 to %struct._object***
  %824 = add i32 %gp_offset1319, 8
  store i32 %824, i32* %gp_offset_p1318
  br label %vaarg.end.1327

vaarg.in_mem.1323:                                ; preds = %sw.bb.1315
  %overflow_arg_area_p1324 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1317, i32 0, i32 2
  %overflow_arg_area1325 = load i8*, i8** %overflow_arg_area_p1324
  %825 = bitcast i8* %overflow_arg_area1325 to %struct._object***
  %overflow_arg_area.next1326 = getelementptr i8, i8* %overflow_arg_area1325, i32 8
  store i8* %overflow_arg_area.next1326, i8** %overflow_arg_area_p1324
  br label %vaarg.end.1327

vaarg.end.1327:                                   ; preds = %vaarg.in_mem.1323, %vaarg.in_reg.1321
  %vaarg.addr1328 = phi %struct._object*** [ %823, %vaarg.in_reg.1321 ], [ %825, %vaarg.in_mem.1323 ]
  %826 = load %struct._object**, %struct._object*** %vaarg.addr1328
  store %struct._object** %826, %struct._object*** %p1316, align 8
  %827 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type1329 = getelementptr inbounds %struct._object, %struct._object* %827, i32 0, i32 1
  %828 = load %struct._typeobject*, %struct._typeobject** %ob_type1329, align 8
  %tp_flags1330 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %828, i32 0, i32 19
  %829 = load i64, i64* %tp_flags1330, align 8
  %and1331 = and i64 %829, 134217728
  %cmp1332 = icmp ne i64 %and1331, 0
  br i1 %cmp1332, label %if.then.1334, label %if.else.1335

if.then.1334:                                     ; preds = %vaarg.end.1327
  %830 = load %struct._object*, %struct._object** %arg.addr, align 8
  %831 = load %struct._object**, %struct._object*** %p1316, align 8
  store %struct._object* %830, %struct._object** %831, align 8
  br label %if.end.1337

if.else.1335:                                     ; preds = %vaarg.end.1327
  %832 = load %struct._object*, %struct._object** %arg.addr, align 8
  %833 = load i8*, i8** %msgbuf.addr, align 8
  %834 = load i64, i64* %bufsize.addr, align 8
  %call1336 = call i8* @converterr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), %struct._object* %832, i8* %833, i64 %834)
  store i8* %call1336, i8** %retval
  br label %return

if.end.1337:                                      ; preds = %if.then.1334
  br label %sw.epilog

sw.bb.1338:                                       ; preds = %entry
  %835 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay1340 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %835, i32 0, i32 0
  %gp_offset_p1341 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1340, i32 0, i32 0
  %gp_offset1342 = load i32, i32* %gp_offset_p1341
  %fits_in_gp1343 = icmp ule i32 %gp_offset1342, 40
  br i1 %fits_in_gp1343, label %vaarg.in_reg.1344, label %vaarg.in_mem.1346

vaarg.in_reg.1344:                                ; preds = %sw.bb.1338
  %836 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1340, i32 0, i32 3
  %reg_save_area1345 = load i8*, i8** %836
  %837 = getelementptr i8, i8* %reg_save_area1345, i32 %gp_offset1342
  %838 = bitcast i8* %837 to %struct._object***
  %839 = add i32 %gp_offset1342, 8
  store i32 %839, i32* %gp_offset_p1341
  br label %vaarg.end.1350

vaarg.in_mem.1346:                                ; preds = %sw.bb.1338
  %overflow_arg_area_p1347 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1340, i32 0, i32 2
  %overflow_arg_area1348 = load i8*, i8** %overflow_arg_area_p1347
  %840 = bitcast i8* %overflow_arg_area1348 to %struct._object***
  %overflow_arg_area.next1349 = getelementptr i8, i8* %overflow_arg_area1348, i32 8
  store i8* %overflow_arg_area.next1349, i8** %overflow_arg_area_p1347
  br label %vaarg.end.1350

vaarg.end.1350:                                   ; preds = %vaarg.in_mem.1346, %vaarg.in_reg.1344
  %vaarg.addr1351 = phi %struct._object*** [ %838, %vaarg.in_reg.1344 ], [ %840, %vaarg.in_mem.1346 ]
  %841 = load %struct._object**, %struct._object*** %vaarg.addr1351
  store %struct._object** %841, %struct._object*** %p1339, align 8
  %842 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type1352 = getelementptr inbounds %struct._object, %struct._object* %842, i32 0, i32 1
  %843 = load %struct._typeobject*, %struct._typeobject** %ob_type1352, align 8
  %cmp1353 = icmp eq %struct._typeobject* %843, @PyByteArray_Type
  br i1 %cmp1353, label %if.then.1359, label %lor.lhs.false.1355

lor.lhs.false.1355:                               ; preds = %vaarg.end.1350
  %844 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type1356 = getelementptr inbounds %struct._object, %struct._object* %844, i32 0, i32 1
  %845 = load %struct._typeobject*, %struct._typeobject** %ob_type1356, align 8
  %call1357 = call i32 @PyType_IsSubtype(%struct._typeobject* %845, %struct._typeobject* @PyByteArray_Type)
  %tobool1358 = icmp ne i32 %call1357, 0
  br i1 %tobool1358, label %if.then.1359, label %if.else.1360

if.then.1359:                                     ; preds = %lor.lhs.false.1355, %vaarg.end.1350
  %846 = load %struct._object*, %struct._object** %arg.addr, align 8
  %847 = load %struct._object**, %struct._object*** %p1339, align 8
  store %struct._object* %846, %struct._object** %847, align 8
  br label %if.end.1362

if.else.1360:                                     ; preds = %lor.lhs.false.1355
  %848 = load %struct._object*, %struct._object** %arg.addr, align 8
  %849 = load i8*, i8** %msgbuf.addr, align 8
  %850 = load i64, i64* %bufsize.addr, align 8
  %call1361 = call i8* @converterr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), %struct._object* %848, i8* %849, i64 %850)
  store i8* %call1361, i8** %retval
  br label %return

if.end.1362:                                      ; preds = %if.then.1359
  br label %sw.epilog

sw.bb.1363:                                       ; preds = %entry
  %851 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay1365 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %851, i32 0, i32 0
  %gp_offset_p1366 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1365, i32 0, i32 0
  %gp_offset1367 = load i32, i32* %gp_offset_p1366
  %fits_in_gp1368 = icmp ule i32 %gp_offset1367, 40
  br i1 %fits_in_gp1368, label %vaarg.in_reg.1369, label %vaarg.in_mem.1371

vaarg.in_reg.1369:                                ; preds = %sw.bb.1363
  %852 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1365, i32 0, i32 3
  %reg_save_area1370 = load i8*, i8** %852
  %853 = getelementptr i8, i8* %reg_save_area1370, i32 %gp_offset1367
  %854 = bitcast i8* %853 to %struct._object***
  %855 = add i32 %gp_offset1367, 8
  store i32 %855, i32* %gp_offset_p1366
  br label %vaarg.end.1375

vaarg.in_mem.1371:                                ; preds = %sw.bb.1363
  %overflow_arg_area_p1372 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1365, i32 0, i32 2
  %overflow_arg_area1373 = load i8*, i8** %overflow_arg_area_p1372
  %856 = bitcast i8* %overflow_arg_area1373 to %struct._object***
  %overflow_arg_area.next1374 = getelementptr i8, i8* %overflow_arg_area1373, i32 8
  store i8* %overflow_arg_area.next1374, i8** %overflow_arg_area_p1372
  br label %vaarg.end.1375

vaarg.end.1375:                                   ; preds = %vaarg.in_mem.1371, %vaarg.in_reg.1369
  %vaarg.addr1376 = phi %struct._object*** [ %854, %vaarg.in_reg.1369 ], [ %856, %vaarg.in_mem.1371 ]
  %857 = load %struct._object**, %struct._object*** %vaarg.addr1376
  store %struct._object** %857, %struct._object*** %p1364, align 8
  %858 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type1377 = getelementptr inbounds %struct._object, %struct._object* %858, i32 0, i32 1
  %859 = load %struct._typeobject*, %struct._typeobject** %ob_type1377, align 8
  %tp_flags1378 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %859, i32 0, i32 19
  %860 = load i64, i64* %tp_flags1378, align 8
  %and1379 = and i64 %860, 268435456
  %cmp1380 = icmp ne i64 %and1379, 0
  br i1 %cmp1380, label %if.then.1382, label %if.else.1397

if.then.1382:                                     ; preds = %vaarg.end.1375
  %861 = load %struct._object*, %struct._object** %arg.addr, align 8
  %862 = bitcast %struct._object* %861 to %struct.PyASCIIObject*
  %state1383 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %862, i32 0, i32 3
  %863 = bitcast %struct.anon* %state1383 to i32*
  %bf.load1384 = load i32, i32* %863, align 4
  %bf.lshr1385 = lshr i32 %bf.load1384, 7
  %bf.clear1386 = and i32 %bf.lshr1385, 1
  %tobool1387 = icmp ne i32 %bf.clear1386, 0
  br i1 %tobool1387, label %cond.true.1388, label %cond.false.1389

cond.true.1388:                                   ; preds = %if.then.1382
  br label %cond.end.1391

cond.false.1389:                                  ; preds = %if.then.1382
  %864 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call1390 = call i32 @_PyUnicode_Ready(%struct._object* %864)
  br label %cond.end.1391

cond.end.1391:                                    ; preds = %cond.false.1389, %cond.true.1388
  %cond1392 = phi i32 [ 0, %cond.true.1388 ], [ %call1390, %cond.false.1389 ]
  %cmp1393 = icmp eq i32 %cond1392, -1
  br i1 %cmp1393, label %if.then.1395, label %if.end.1396

if.then.1395:                                     ; preds = %cond.end.1391
  %865 = load i8*, i8** %msgbuf.addr, align 8
  store i8* %865, i8** %retval
  br label %return

if.end.1396:                                      ; preds = %cond.end.1391
  %866 = load %struct._object*, %struct._object** %arg.addr, align 8
  %867 = load %struct._object**, %struct._object*** %p1364, align 8
  store %struct._object* %866, %struct._object** %867, align 8
  br label %if.end.1399

if.else.1397:                                     ; preds = %vaarg.end.1375
  %868 = load %struct._object*, %struct._object** %arg.addr, align 8
  %869 = load i8*, i8** %msgbuf.addr, align 8
  %870 = load i64, i64* %bufsize.addr, align 8
  %call1398 = call i8* @converterr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), %struct._object* %868, i8* %869, i64 %870)
  store i8* %call1398, i8** %retval
  br label %return

if.end.1399:                                      ; preds = %if.end.1396
  br label %sw.epilog

sw.bb.1400:                                       ; preds = %entry
  %871 = load i8*, i8** %format, align 8
  %872 = load i8, i8* %871, align 1
  %conv1402 = sext i8 %872 to i32
  %cmp1403 = icmp eq i32 %conv1402, 33
  br i1 %cmp1403, label %if.then.1405, label %if.else.1438

if.then.1405:                                     ; preds = %sw.bb.1400
  %873 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay1406 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %873, i32 0, i32 0
  %gp_offset_p1407 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1406, i32 0, i32 0
  %gp_offset1408 = load i32, i32* %gp_offset_p1407
  %fits_in_gp1409 = icmp ule i32 %gp_offset1408, 40
  br i1 %fits_in_gp1409, label %vaarg.in_reg.1410, label %vaarg.in_mem.1412

vaarg.in_reg.1410:                                ; preds = %if.then.1405
  %874 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1406, i32 0, i32 3
  %reg_save_area1411 = load i8*, i8** %874
  %875 = getelementptr i8, i8* %reg_save_area1411, i32 %gp_offset1408
  %876 = bitcast i8* %875 to %struct._typeobject**
  %877 = add i32 %gp_offset1408, 8
  store i32 %877, i32* %gp_offset_p1407
  br label %vaarg.end.1416

vaarg.in_mem.1412:                                ; preds = %if.then.1405
  %overflow_arg_area_p1413 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1406, i32 0, i32 2
  %overflow_arg_area1414 = load i8*, i8** %overflow_arg_area_p1413
  %878 = bitcast i8* %overflow_arg_area1414 to %struct._typeobject**
  %overflow_arg_area.next1415 = getelementptr i8, i8* %overflow_arg_area1414, i32 8
  store i8* %overflow_arg_area.next1415, i8** %overflow_arg_area_p1413
  br label %vaarg.end.1416

vaarg.end.1416:                                   ; preds = %vaarg.in_mem.1412, %vaarg.in_reg.1410
  %vaarg.addr1417 = phi %struct._typeobject** [ %876, %vaarg.in_reg.1410 ], [ %878, %vaarg.in_mem.1412 ]
  %879 = load %struct._typeobject*, %struct._typeobject** %vaarg.addr1417
  store %struct._typeobject* %879, %struct._typeobject** %type, align 8
  %880 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay1418 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %880, i32 0, i32 0
  %gp_offset_p1419 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1418, i32 0, i32 0
  %gp_offset1420 = load i32, i32* %gp_offset_p1419
  %fits_in_gp1421 = icmp ule i32 %gp_offset1420, 40
  br i1 %fits_in_gp1421, label %vaarg.in_reg.1422, label %vaarg.in_mem.1424

vaarg.in_reg.1422:                                ; preds = %vaarg.end.1416
  %881 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1418, i32 0, i32 3
  %reg_save_area1423 = load i8*, i8** %881
  %882 = getelementptr i8, i8* %reg_save_area1423, i32 %gp_offset1420
  %883 = bitcast i8* %882 to %struct._object***
  %884 = add i32 %gp_offset1420, 8
  store i32 %884, i32* %gp_offset_p1419
  br label %vaarg.end.1428

vaarg.in_mem.1424:                                ; preds = %vaarg.end.1416
  %overflow_arg_area_p1425 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1418, i32 0, i32 2
  %overflow_arg_area1426 = load i8*, i8** %overflow_arg_area_p1425
  %885 = bitcast i8* %overflow_arg_area1426 to %struct._object***
  %overflow_arg_area.next1427 = getelementptr i8, i8* %overflow_arg_area1426, i32 8
  store i8* %overflow_arg_area.next1427, i8** %overflow_arg_area_p1425
  br label %vaarg.end.1428

vaarg.end.1428:                                   ; preds = %vaarg.in_mem.1424, %vaarg.in_reg.1422
  %vaarg.addr1429 = phi %struct._object*** [ %883, %vaarg.in_reg.1422 ], [ %885, %vaarg.in_mem.1424 ]
  %886 = load %struct._object**, %struct._object*** %vaarg.addr1429
  store %struct._object** %886, %struct._object*** %p1401, align 8
  %887 = load i8*, i8** %format, align 8
  %incdec.ptr1430 = getelementptr i8, i8* %887, i32 1
  store i8* %incdec.ptr1430, i8** %format, align 8
  %888 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type1431 = getelementptr inbounds %struct._object, %struct._object* %888, i32 0, i32 1
  %889 = load %struct._typeobject*, %struct._typeobject** %ob_type1431, align 8
  %890 = load %struct._typeobject*, %struct._typeobject** %type, align 8
  %call1432 = call i32 @PyType_IsSubtype(%struct._typeobject* %889, %struct._typeobject* %890)
  %tobool1433 = icmp ne i32 %call1432, 0
  br i1 %tobool1433, label %if.then.1434, label %if.else.1435

if.then.1434:                                     ; preds = %vaarg.end.1428
  %891 = load %struct._object*, %struct._object** %arg.addr, align 8
  %892 = load %struct._object**, %struct._object*** %p1401, align 8
  store %struct._object* %891, %struct._object** %892, align 8
  br label %if.end.1437

if.else.1435:                                     ; preds = %vaarg.end.1428
  %893 = load %struct._typeobject*, %struct._typeobject** %type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %893, i32 0, i32 1
  %894 = load i8*, i8** %tp_name, align 8
  %895 = load %struct._object*, %struct._object** %arg.addr, align 8
  %896 = load i8*, i8** %msgbuf.addr, align 8
  %897 = load i64, i64* %bufsize.addr, align 8
  %call1436 = call i8* @converterr(i8* %894, %struct._object* %895, i8* %896, i64 %897)
  store i8* %call1436, i8** %retval
  br label %return

if.end.1437:                                      ; preds = %if.then.1434
  br label %if.end.1496

if.else.1438:                                     ; preds = %sw.bb.1400
  %898 = load i8*, i8** %format, align 8
  %899 = load i8, i8* %898, align 1
  %conv1439 = sext i8 %899 to i32
  %cmp1440 = icmp eq i32 %conv1439, 38
  br i1 %cmp1440, label %if.then.1442, label %if.else.1482

if.then.1442:                                     ; preds = %if.else.1438
  %900 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay1443 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %900, i32 0, i32 0
  %gp_offset_p1444 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1443, i32 0, i32 0
  %gp_offset1445 = load i32, i32* %gp_offset_p1444
  %fits_in_gp1446 = icmp ule i32 %gp_offset1445, 40
  br i1 %fits_in_gp1446, label %vaarg.in_reg.1447, label %vaarg.in_mem.1449

vaarg.in_reg.1447:                                ; preds = %if.then.1442
  %901 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1443, i32 0, i32 3
  %reg_save_area1448 = load i8*, i8** %901
  %902 = getelementptr i8, i8* %reg_save_area1448, i32 %gp_offset1445
  %903 = bitcast i8* %902 to i32 (%struct._object*, i8*)**
  %904 = add i32 %gp_offset1445, 8
  store i32 %904, i32* %gp_offset_p1444
  br label %vaarg.end.1453

vaarg.in_mem.1449:                                ; preds = %if.then.1442
  %overflow_arg_area_p1450 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1443, i32 0, i32 2
  %overflow_arg_area1451 = load i8*, i8** %overflow_arg_area_p1450
  %905 = bitcast i8* %overflow_arg_area1451 to i32 (%struct._object*, i8*)**
  %overflow_arg_area.next1452 = getelementptr i8, i8* %overflow_arg_area1451, i32 8
  store i8* %overflow_arg_area.next1452, i8** %overflow_arg_area_p1450
  br label %vaarg.end.1453

vaarg.end.1453:                                   ; preds = %vaarg.in_mem.1449, %vaarg.in_reg.1447
  %vaarg.addr1454 = phi i32 (%struct._object*, i8*)** [ %903, %vaarg.in_reg.1447 ], [ %905, %vaarg.in_mem.1449 ]
  %906 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %vaarg.addr1454
  store i32 (%struct._object*, i8*)* %906, i32 (%struct._object*, i8*)** %convert, align 8
  %907 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay1455 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %907, i32 0, i32 0
  %gp_offset_p1456 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1455, i32 0, i32 0
  %gp_offset1457 = load i32, i32* %gp_offset_p1456
  %fits_in_gp1458 = icmp ule i32 %gp_offset1457, 40
  br i1 %fits_in_gp1458, label %vaarg.in_reg.1459, label %vaarg.in_mem.1461

vaarg.in_reg.1459:                                ; preds = %vaarg.end.1453
  %908 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1455, i32 0, i32 3
  %reg_save_area1460 = load i8*, i8** %908
  %909 = getelementptr i8, i8* %reg_save_area1460, i32 %gp_offset1457
  %910 = bitcast i8* %909 to i8**
  %911 = add i32 %gp_offset1457, 8
  store i32 %911, i32* %gp_offset_p1456
  br label %vaarg.end.1465

vaarg.in_mem.1461:                                ; preds = %vaarg.end.1453
  %overflow_arg_area_p1462 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1455, i32 0, i32 2
  %overflow_arg_area1463 = load i8*, i8** %overflow_arg_area_p1462
  %912 = bitcast i8* %overflow_arg_area1463 to i8**
  %overflow_arg_area.next1464 = getelementptr i8, i8* %overflow_arg_area1463, i32 8
  store i8* %overflow_arg_area.next1464, i8** %overflow_arg_area_p1462
  br label %vaarg.end.1465

vaarg.end.1465:                                   ; preds = %vaarg.in_mem.1461, %vaarg.in_reg.1459
  %vaarg.addr1466 = phi i8** [ %910, %vaarg.in_reg.1459 ], [ %912, %vaarg.in_mem.1461 ]
  %913 = load i8*, i8** %vaarg.addr1466
  store i8* %913, i8** %addr, align 8
  %914 = load i8*, i8** %format, align 8
  %incdec.ptr1467 = getelementptr i8, i8* %914, i32 1
  store i8* %incdec.ptr1467, i8** %format, align 8
  %915 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %convert, align 8
  %916 = load %struct._object*, %struct._object** %arg.addr, align 8
  %917 = load i8*, i8** %addr, align 8
  %call1468 = call i32 %915(%struct._object* %916, i8* %917)
  store i32 %call1468, i32* %res, align 4
  %tobool1469 = icmp ne i32 %call1468, 0
  br i1 %tobool1469, label %if.end.1472, label %if.then.1470

if.then.1470:                                     ; preds = %vaarg.end.1465
  %918 = load %struct._object*, %struct._object** %arg.addr, align 8
  %919 = load i8*, i8** %msgbuf.addr, align 8
  %920 = load i64, i64* %bufsize.addr, align 8
  %call1471 = call i8* @converterr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i32 0, i32 0), %struct._object* %918, i8* %919, i64 %920)
  store i8* %call1471, i8** %retval
  br label %return

if.end.1472:                                      ; preds = %vaarg.end.1465
  %921 = load i32, i32* %res, align 4
  %cmp1473 = icmp eq i32 %921, 131072
  br i1 %cmp1473, label %land.lhs.true.1475, label %if.end.1481

land.lhs.true.1475:                               ; preds = %if.end.1472
  %922 = load i8*, i8** %addr, align 8
  %923 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8
  %924 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %convert, align 8
  %call1476 = call i32 @addcleanup(i8* %922, %struct.freelist_t* %923, i32 (%struct._object*, i8*)* %924)
  %cmp1477 = icmp eq i32 %call1476, -1
  br i1 %cmp1477, label %if.then.1479, label %if.end.1481

if.then.1479:                                     ; preds = %land.lhs.true.1475
  %925 = load %struct._object*, %struct._object** %arg.addr, align 8
  %926 = load i8*, i8** %msgbuf.addr, align 8
  %927 = load i64, i64* %bufsize.addr, align 8
  %call1480 = call i8* @converterr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0), %struct._object* %925, i8* %926, i64 %927)
  store i8* %call1480, i8** %retval
  br label %return

if.end.1481:                                      ; preds = %land.lhs.true.1475, %if.end.1472
  br label %if.end.1495

if.else.1482:                                     ; preds = %if.else.1438
  %928 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay1483 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %928, i32 0, i32 0
  %gp_offset_p1484 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1483, i32 0, i32 0
  %gp_offset1485 = load i32, i32* %gp_offset_p1484
  %fits_in_gp1486 = icmp ule i32 %gp_offset1485, 40
  br i1 %fits_in_gp1486, label %vaarg.in_reg.1487, label %vaarg.in_mem.1489

vaarg.in_reg.1487:                                ; preds = %if.else.1482
  %929 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1483, i32 0, i32 3
  %reg_save_area1488 = load i8*, i8** %929
  %930 = getelementptr i8, i8* %reg_save_area1488, i32 %gp_offset1485
  %931 = bitcast i8* %930 to %struct._object***
  %932 = add i32 %gp_offset1485, 8
  store i32 %932, i32* %gp_offset_p1484
  br label %vaarg.end.1493

vaarg.in_mem.1489:                                ; preds = %if.else.1482
  %overflow_arg_area_p1490 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1483, i32 0, i32 2
  %overflow_arg_area1491 = load i8*, i8** %overflow_arg_area_p1490
  %933 = bitcast i8* %overflow_arg_area1491 to %struct._object***
  %overflow_arg_area.next1492 = getelementptr i8, i8* %overflow_arg_area1491, i32 8
  store i8* %overflow_arg_area.next1492, i8** %overflow_arg_area_p1490
  br label %vaarg.end.1493

vaarg.end.1493:                                   ; preds = %vaarg.in_mem.1489, %vaarg.in_reg.1487
  %vaarg.addr1494 = phi %struct._object*** [ %931, %vaarg.in_reg.1487 ], [ %933, %vaarg.in_mem.1489 ]
  %934 = load %struct._object**, %struct._object*** %vaarg.addr1494
  store %struct._object** %934, %struct._object*** %p1401, align 8
  %935 = load %struct._object*, %struct._object** %arg.addr, align 8
  %936 = load %struct._object**, %struct._object*** %p1401, align 8
  store %struct._object* %935, %struct._object** %936, align 8
  br label %if.end.1495

if.end.1495:                                      ; preds = %vaarg.end.1493, %if.end.1481
  br label %if.end.1496

if.end.1496:                                      ; preds = %if.end.1495, %if.end.1437
  br label %sw.epilog

sw.bb.1497:                                       ; preds = %entry
  %937 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay1499 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %937, i32 0, i32 0
  %gp_offset_p1500 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1499, i32 0, i32 0
  %gp_offset1501 = load i32, i32* %gp_offset_p1500
  %fits_in_gp1502 = icmp ule i32 %gp_offset1501, 40
  br i1 %fits_in_gp1502, label %vaarg.in_reg.1503, label %vaarg.in_mem.1505

vaarg.in_reg.1503:                                ; preds = %sw.bb.1497
  %938 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1499, i32 0, i32 3
  %reg_save_area1504 = load i8*, i8** %938
  %939 = getelementptr i8, i8* %reg_save_area1504, i32 %gp_offset1501
  %940 = bitcast i8* %939 to i8***
  %941 = add i32 %gp_offset1501, 8
  store i32 %941, i32* %gp_offset_p1500
  br label %vaarg.end.1509

vaarg.in_mem.1505:                                ; preds = %sw.bb.1497
  %overflow_arg_area_p1506 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1499, i32 0, i32 2
  %overflow_arg_area1507 = load i8*, i8** %overflow_arg_area_p1506
  %942 = bitcast i8* %overflow_arg_area1507 to i8***
  %overflow_arg_area.next1508 = getelementptr i8, i8* %overflow_arg_area1507, i32 8
  store i8* %overflow_arg_area.next1508, i8** %overflow_arg_area_p1506
  br label %vaarg.end.1509

vaarg.end.1509:                                   ; preds = %vaarg.in_mem.1505, %vaarg.in_reg.1503
  %vaarg.addr1510 = phi i8*** [ %940, %vaarg.in_reg.1503 ], [ %942, %vaarg.in_mem.1505 ]
  %943 = load i8**, i8*** %vaarg.addr1510
  store i8** %943, i8*** %p1498, align 8
  %944 = load i8*, i8** %format, align 8
  %945 = load i8, i8* %944, align 1
  %conv1511 = sext i8 %945 to i32
  %cmp1512 = icmp ne i32 %conv1511, 42
  br i1 %cmp1512, label %if.then.1514, label %if.end.1516

if.then.1514:                                     ; preds = %vaarg.end.1509
  %946 = load %struct._object*, %struct._object** %arg.addr, align 8
  %947 = load i8*, i8** %msgbuf.addr, align 8
  %948 = load i64, i64* %bufsize.addr, align 8
  %call1515 = call i8* @converterr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.61, i32 0, i32 0), %struct._object* %946, i8* %947, i64 %948)
  store i8* %call1515, i8** %retval
  br label %return

if.end.1516:                                      ; preds = %vaarg.end.1509
  %949 = load i8*, i8** %format, align 8
  %incdec.ptr1517 = getelementptr i8, i8* %949, i32 1
  store i8* %incdec.ptr1517, i8** %format, align 8
  %950 = load %struct._object*, %struct._object** %arg.addr, align 8
  %951 = load i8**, i8*** %p1498, align 8
  %952 = bitcast i8** %951 to %struct.bufferinfo*
  %call1518 = call i32 @PyObject_GetBuffer(%struct._object* %950, %struct.bufferinfo* %952, i32 1)
  %cmp1519 = icmp slt i32 %call1518, 0
  br i1 %cmp1519, label %if.then.1521, label %if.end.1523

if.then.1521:                                     ; preds = %if.end.1516
  call void @PyErr_Clear()
  %953 = load %struct._object*, %struct._object** %arg.addr, align 8
  %954 = load i8*, i8** %msgbuf.addr, align 8
  %955 = load i64, i64* %bufsize.addr, align 8
  %call1522 = call i8* @converterr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i32 0, i32 0), %struct._object* %953, i8* %954, i64 %955)
  store i8* %call1522, i8** %retval
  br label %return

if.end.1523:                                      ; preds = %if.end.1516
  %956 = load i8**, i8*** %p1498, align 8
  %957 = bitcast i8** %956 to %struct.bufferinfo*
  %call1524 = call i32 @PyBuffer_IsContiguous(%struct.bufferinfo* %957, i8 signext 67)
  %tobool1525 = icmp ne i32 %call1524, 0
  br i1 %tobool1525, label %if.end.1528, label %if.then.1526

if.then.1526:                                     ; preds = %if.end.1523
  %958 = load i8**, i8*** %p1498, align 8
  %959 = bitcast i8** %958 to %struct.bufferinfo*
  call void @PyBuffer_Release(%struct.bufferinfo* %959)
  %960 = load %struct._object*, %struct._object** %arg.addr, align 8
  %961 = load i8*, i8** %msgbuf.addr, align 8
  %962 = load i64, i64* %bufsize.addr, align 8
  %call1527 = call i8* @converterr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i32 0, i32 0), %struct._object* %960, i8* %961, i64 %962)
  store i8* %call1527, i8** %retval
  br label %return

if.end.1528:                                      ; preds = %if.end.1523
  %963 = load i8**, i8*** %p1498, align 8
  %964 = bitcast i8** %963 to i8*
  %965 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8
  %call1529 = call i32 @addcleanup(i8* %964, %struct.freelist_t* %965, i32 (%struct._object*, i8*)* @cleanup_buffer)
  %tobool1530 = icmp ne i32 %call1529, 0
  br i1 %tobool1530, label %if.then.1531, label %if.end.1533

if.then.1531:                                     ; preds = %if.end.1528
  %966 = load %struct._object*, %struct._object** %arg.addr, align 8
  %967 = load i8*, i8** %msgbuf.addr, align 8
  %968 = load i64, i64* %bufsize.addr, align 8
  %call1532 = call i8* @converterr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0), %struct._object* %966, i8* %967, i64 %968)
  store i8* %call1532, i8** %retval
  br label %return

if.end.1533:                                      ; preds = %if.end.1528
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %969 = load %struct._object*, %struct._object** %arg.addr, align 8
  %970 = load i8*, i8** %msgbuf.addr, align 8
  %971 = load i64, i64* %bufsize.addr, align 8
  %call1534 = call i8* @converterr(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i32 0, i32 0), %struct._object* %969, i8* %970, i64 %971)
  store i8* %call1534, i8** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.1533, %if.end.1496, %if.end.1399, %if.end.1362, %if.end.1337, %do.end.1314, %if.end.972, %if.end.846, %if.end.620, %if.end.560, %if.end.530, %cond.end.504, %if.end.428, %if.end.385, %if.end.365, %if.end.344, %if.end.323, %if.end.298, %if.end.270, %if.end.247, %if.end.219, %if.end.182, %if.end.153, %if.end.114, %if.end.85, %if.end.46, %if.end.17
  %972 = load i8*, i8** %format, align 8
  %973 = load i8**, i8*** %p_format.addr, align 8
  store i8* %972, i8** %973, align 8
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then.1531, %if.then.1526, %if.then.1521, %if.then.1514, %if.then.1479, %if.then.1470, %if.else.1435, %if.else.1397, %if.then.1395, %if.else.1360, %if.else.1335, %do.end.1298, %do.end.1281, %do.end.1254, %if.then.1233, %do.end.1222, %do.end.1196, %do.end.1179, %do.end.1151, %do.end.1087, %if.then.1067, %if.then.1049, %if.then.1042, %if.then.1019, %if.else.1000, %if.else.964, %if.then.961, %if.then.956, %if.else.932, %if.then.927, %if.then.919, %if.then.838, %if.else.821, %if.then.818, %if.then.778, %if.then.769, %if.then.758, %if.then.749, %if.then.673, %if.then.666, %if.then.657, %if.then.617, %if.then.607, %if.then.565, %if.then.558, %if.then.552, %if.else.528, %if.then.462, %if.then.458, %if.then.448, %if.else.425, %if.then.383, %if.then.363, %if.then.341, %if.else.321, %if.then.296, %if.then.288, %if.else.268, %if.then.245, %if.then.237, %if.then.218, %if.then.200, %if.then.180, %if.then.171, %if.then.148, %if.then.144, %if.then.140, %if.then.132, %if.then.111, %if.then.103, %if.then.80, %if.then.76, %if.then.72, %if.then.64, %if.then.43, %if.then.35, %if.then.12, %if.then.8, %if.then.5, %if.then
  %974 = load i8*, i8** %retval
  ret i8* %974
}

declare i32 @PySequence_Check(%struct._object*) #2

declare i32 @PyOS_snprintf(i8*, i64, i8*, ...) #2

declare i64 @PySequence_Size(%struct._object*) #2

declare %struct._object* @PySequence_GetItem(%struct._object*, i64) #2

declare void @PyErr_Clear() #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal i32 @float_argument_error(%struct._object* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca %struct._object*, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyFloat_Type
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PyFloat_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.65, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare i64 @PyLong_AsLong(%struct._object*) #2

declare %struct._object* @PyErr_Occurred() #2

declare i64 @PyLong_AsUnsignedLongMask(%struct._object*) #2

declare %struct._object* @PyNumber_Index(%struct._object*) #2

declare i64 @PyLong_AsSsize_t(%struct._object*) #2

; Function Attrs: nounwind uwtable
define internal i8* @converterr(i8* %expected, %struct._object* %arg, i8* %msgbuf, i64 %bufsize) #0 {
entry:
  %expected.addr = alloca i8*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %msgbuf.addr = alloca i8*, align 8
  %bufsize.addr = alloca i64, align 8
  store i8* %expected, i8** %expected.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  store i8* %msgbuf, i8** %msgbuf.addr, align 8
  store i64 %bufsize, i64* %bufsize.addr, align 8
  %0 = load i8*, i8** %msgbuf.addr, align 8
  %1 = load i64, i64* %bufsize.addr, align 8
  %2 = load i8*, i8** %expected.addr, align 8
  %3 = load %struct._object*, %struct._object** %arg.addr, align 8
  %cmp = icmp eq %struct._object* %3, @_Py_NoneStruct
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 1
  %6 = load i8*, i8** %tp_name, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), %cond.true ], [ %6, %cond.false ]
  %call = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0), i8* %2, i8* %cond)
  %7 = load i8*, i8** %msgbuf.addr, align 8
  ret i8* %7
}

declare i64 @PyLong_AsLongLong(%struct._object*) #2

declare i64 @PyLong_AsUnsignedLongLongMask(%struct._object*) #2

declare double @PyFloat_AsDouble(%struct._object*) #2

declare { double, double } @PyComplex_AsCComplex(%struct._object*) #2

declare i64 @PyBytes_Size(%struct._object*) #2

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #2

declare i64 @PyByteArray_Size(%struct._object*) #2

declare i32 @_PyUnicode_Ready(%struct._object*) #2

declare i32 @PyObject_IsTrue(%struct._object*) #2

; Function Attrs: nounwind uwtable
define internal i32 @getbuffer(%struct._object* %arg, %struct.bufferinfo* %view, i8** %errmsg) #0 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca %struct._object*, align 8
  %view.addr = alloca %struct.bufferinfo*, align 8
  %errmsg.addr = alloca i8**, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8
  store i8** %errmsg, i8*** %errmsg.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %1 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %call = call i32 @PyObject_GetBuffer(%struct._object* %0, %struct.bufferinfo* %1, i32 0)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8**, i8*** %errmsg.addr, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i32 0, i32 0), i8** %2, align 8
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %call1 = call i32 @PyBuffer_IsContiguous(%struct.bufferinfo* %3, i8 signext 67)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %4)
  %5 = load i8**, i8*** %errmsg.addr, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i32 0, i32 0), i8** %5, align 8
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @addcleanup(i8* %ptr, %struct.freelist_t* %freelist, i32 (%struct._object*, i8*)* %destructor) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %freelist.addr = alloca %struct.freelist_t*, align 8
  %destructor.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %index = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct.freelist_t* %freelist, %struct.freelist_t** %freelist.addr, align 8
  store i32 (%struct._object*, i8*)* %destructor, i32 (%struct._object*, i8*)** %destructor.addr, align 8
  %0 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8
  %first_available = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %0, i32 0, i32 1
  %1 = load i32, i32* %first_available, align 4
  store i32 %1, i32* %index, align 4
  %2 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8
  %first_available1 = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %2, i32 0, i32 1
  %3 = load i32, i32* %first_available1, align 4
  %add = add i32 %3, 1
  store i32 %add, i32* %first_available1, align 4
  %4 = load i8*, i8** %ptr.addr, align 8
  %5 = load i32, i32* %index, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8
  %entries = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %6, i32 0, i32 0
  %7 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries, align 8
  %arrayidx = getelementptr %struct.freelistentry_t, %struct.freelistentry_t* %7, i64 %idxprom
  %item = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %arrayidx, i32 0, i32 0
  store i8* %4, i8** %item, align 8
  %8 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %destructor.addr, align 8
  %9 = load i32, i32* %index, align 4
  %idxprom2 = sext i32 %9 to i64
  %10 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8
  %entries3 = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %10, i32 0, i32 0
  %11 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries3, align 8
  %arrayidx4 = getelementptr %struct.freelistentry_t, %struct.freelistentry_t* %11, i64 %idxprom2
  %destructor5 = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %arrayidx4, i32 0, i32 1
  store i32 (%struct._object*, i8*)* %8, i32 (%struct._object*, i8*)** %destructor5, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @cleanup_buffer(%struct._object* %self, i8* %ptr) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %buf = alloca %struct.bufferinfo*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = bitcast i8* %0 to %struct.bufferinfo*
  store %struct.bufferinfo* %1, %struct.bufferinfo** %buf, align 8
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %buf, align 8
  %tobool = icmp ne %struct.bufferinfo* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %buf, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i64 @convertbuffer(%struct._object* %arg, i8** %p, i8** %errmsg) #0 {
entry:
  %retval = alloca i64, align 8
  %arg.addr = alloca %struct._object*, align 8
  %p.addr = alloca i8**, align 8
  %errmsg.addr = alloca i8**, align 8
  %pb = alloca %struct.PyBufferProcs*, align 8
  %count = alloca i64, align 8
  %view = alloca %struct.bufferinfo, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8** %errmsg, i8*** %errmsg.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_buffer = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 18
  %2 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer, align 8
  store %struct.PyBufferProcs* %2, %struct.PyBufferProcs** %pb, align 8
  %3 = load i8**, i8*** %errmsg.addr, align 8
  store i8* null, i8** %3, align 8
  %4 = load i8**, i8*** %p.addr, align 8
  store i8* null, i8** %4, align 8
  %5 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %pb, align 8
  %cmp = icmp ne %struct.PyBufferProcs* %5, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %pb, align 8
  %bf_releasebuffer = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %6, i32 0, i32 1
  %7 = load void (%struct._object*, %struct.bufferinfo*)*, void (%struct._object*, %struct.bufferinfo*)** %bf_releasebuffer, align 8
  %cmp1 = icmp ne void (%struct._object*, %struct.bufferinfo*)* %7, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load i8**, i8*** %errmsg.addr, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.68, i32 0, i32 0), i8** %8, align 8
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %9 = load %struct._object*, %struct._object** %arg.addr, align 8
  %10 = load i8**, i8*** %errmsg.addr, align 8
  %call = call i32 @getbuffer(%struct._object* %9, %struct.bufferinfo* %view, i8** %10)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i64 -1, i64* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 2
  %11 = load i64, i64* %len, align 8
  store i64 %11, i64* %count, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 0
  %12 = load i8*, i8** %buf, align 8
  %13 = load i8**, i8*** %p.addr, align 8
  store i8* %12, i8** %13, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %view)
  %14 = load i64, i64* %count, align 8
  store i64 %14, i64* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %15 = load i64, i64* %retval
  ret i64 %15
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i32 @PyBuffer_FillInfo(%struct.bufferinfo*, %struct._object*, i8*, i64, i32, i32) #2

declare i8* @PyUnicode_AsUTF8AndSize(%struct._object*, i64*) #2

declare i32* @PyUnicode_AsUnicodeAndSize(%struct._object*, i64*) #2

declare i64 @Py_UNICODE_strlen(i32*) #2

declare i8* @PyUnicode_GetDefaultEncoding() #2

declare i32 @PyObject_AsCharBuffer(%struct._object*, i8**, i64*) #2

declare %struct._object* @PyUnicode_FromObject(%struct._object*) #2

declare %struct._object* @PyUnicode_AsEncodedString(%struct._object*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @cleanup_ptr(%struct._object* %self, i8* %ptr) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8
  call void @PyMem_Free(i8* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

declare i32 @PyObject_GetBuffer(%struct._object*, %struct.bufferinfo*, i32) #2

declare i32 @PyBuffer_IsContiguous(%struct.bufferinfo*, i8 signext) #2

declare void @PyBuffer_Release(%struct.bufferinfo*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

declare %struct._object* @PyDict_GetItemString(%struct._object*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @skipitem(i8** %p_format, [1 x %struct.__va_list_tag]* %p_va, i32 %flags) #0 {
entry:
  %retval = alloca i8*, align 8
  %p_format.addr = alloca i8**, align 8
  %p_va.addr = alloca [1 x %struct.__va_list_tag]*, align 8
  %flags.addr = alloca i32, align 4
  %format = alloca i8*, align 8
  %c = alloca i8, align 1
  %msg = alloca i8*, align 8
  store i8** %p_format, i8*** %p_format.addr, align 8
  store [1 x %struct.__va_list_tag]* %p_va, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i8**, i8*** %p_format.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** %format, align 8
  %2 = load i8*, i8** %format, align 8
  %incdec.ptr = getelementptr i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %format, align 8
  %3 = load i8, i8* %2, align 1
  store i8 %3, i8* %c, align 1
  %4 = load i8, i8* %c, align 1
  %conv = sext i8 %4 to i32
  switch i32 %conv, label %sw.default [
    i32 98, label %sw.bb
    i32 66, label %sw.bb
    i32 104, label %sw.bb
    i32 72, label %sw.bb
    i32 105, label %sw.bb
    i32 73, label %sw.bb
    i32 108, label %sw.bb
    i32 107, label %sw.bb
    i32 76, label %sw.bb
    i32 75, label %sw.bb
    i32 110, label %sw.bb
    i32 102, label %sw.bb
    i32 100, label %sw.bb
    i32 68, label %sw.bb
    i32 99, label %sw.bb
    i32 67, label %sw.bb
    i32 112, label %sw.bb
    i32 83, label %sw.bb
    i32 89, label %sw.bb
    i32 85, label %sw.bb
    i32 101, label %sw.bb.1
    i32 115, label %sw.bb.20
    i32 122, label %sw.bb.20
    i32 121, label %sw.bb.20
    i32 117, label %sw.bb.20
    i32 90, label %sw.bb.20
    i32 119, label %sw.bb.20
    i32 79, label %sw.bb.83
    i32 40, label %sw.bb.158
    i32 41, label %sw.bb.181
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %5 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %sw.bb
  %6 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay, i32 0, i32 3
  %reg_save_area = load i8*, i8** %6
  %7 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %8 = bitcast i8* %7 to i8**
  %9 = add i32 %gp_offset, 8
  store i32 %9, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %10 = bitcast i8* %overflow_arg_area to i8**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %8, %vaarg.in_reg ], [ %10, %vaarg.in_mem ]
  %11 = load i8*, i8** %vaarg.addr
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %12 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %12, i32 0, i32 0
  %gp_offset_p3 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset4 = load i32, i32* %gp_offset_p3
  %fits_in_gp5 = icmp ule i32 %gp_offset4, 40
  br i1 %fits_in_gp5, label %vaarg.in_reg.6, label %vaarg.in_mem.8

vaarg.in_reg.6:                                   ; preds = %sw.bb.1
  %13 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area7 = load i8*, i8** %13
  %14 = getelementptr i8, i8* %reg_save_area7, i32 %gp_offset4
  %15 = bitcast i8* %14 to i8**
  %16 = add i32 %gp_offset4, 8
  store i32 %16, i32* %gp_offset_p3
  br label %vaarg.end.12

vaarg.in_mem.8:                                   ; preds = %sw.bb.1
  %overflow_arg_area_p9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area10 = load i8*, i8** %overflow_arg_area_p9
  %17 = bitcast i8* %overflow_arg_area10 to i8**
  %overflow_arg_area.next11 = getelementptr i8, i8* %overflow_arg_area10, i32 8
  store i8* %overflow_arg_area.next11, i8** %overflow_arg_area_p9
  br label %vaarg.end.12

vaarg.end.12:                                     ; preds = %vaarg.in_mem.8, %vaarg.in_reg.6
  %vaarg.addr13 = phi i8** [ %15, %vaarg.in_reg.6 ], [ %17, %vaarg.in_mem.8 ]
  %18 = load i8*, i8** %vaarg.addr13
  %19 = load i8*, i8** %format, align 8
  %20 = load i8, i8* %19, align 1
  %conv14 = sext i8 %20 to i32
  %cmp = icmp eq i32 %conv14, 115
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %vaarg.end.12
  %21 = load i8*, i8** %format, align 8
  %22 = load i8, i8* %21, align 1
  %conv16 = sext i8 %22 to i32
  %cmp17 = icmp eq i32 %conv16, 116
  br i1 %cmp17, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  br label %err

if.end:                                           ; preds = %lor.lhs.false, %vaarg.end.12
  %23 = load i8*, i8** %format, align 8
  %incdec.ptr19 = getelementptr i8, i8* %23, i32 1
  store i8* %incdec.ptr19, i8** %format, align 8
  br label %sw.bb.20

sw.bb.20:                                         ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %if.end
  %24 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %24, i32 0, i32 0
  %gp_offset_p22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay21, i32 0, i32 0
  %gp_offset23 = load i32, i32* %gp_offset_p22
  %fits_in_gp24 = icmp ule i32 %gp_offset23, 40
  br i1 %fits_in_gp24, label %vaarg.in_reg.25, label %vaarg.in_mem.27

vaarg.in_reg.25:                                  ; preds = %sw.bb.20
  %25 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay21, i32 0, i32 3
  %reg_save_area26 = load i8*, i8** %25
  %26 = getelementptr i8, i8* %reg_save_area26, i32 %gp_offset23
  %27 = bitcast i8* %26 to i8***
  %28 = add i32 %gp_offset23, 8
  store i32 %28, i32* %gp_offset_p22
  br label %vaarg.end.31

vaarg.in_mem.27:                                  ; preds = %sw.bb.20
  %overflow_arg_area_p28 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay21, i32 0, i32 2
  %overflow_arg_area29 = load i8*, i8** %overflow_arg_area_p28
  %29 = bitcast i8* %overflow_arg_area29 to i8***
  %overflow_arg_area.next30 = getelementptr i8, i8* %overflow_arg_area29, i32 8
  store i8* %overflow_arg_area.next30, i8** %overflow_arg_area_p28
  br label %vaarg.end.31

vaarg.end.31:                                     ; preds = %vaarg.in_mem.27, %vaarg.in_reg.25
  %vaarg.addr32 = phi i8*** [ %27, %vaarg.in_reg.25 ], [ %29, %vaarg.in_mem.27 ]
  %30 = load i8**, i8*** %vaarg.addr32
  %31 = load i8*, i8** %format, align 8
  %32 = load i8, i8* %31, align 1
  %conv33 = sext i8 %32 to i32
  %cmp34 = icmp eq i32 %conv33, 35
  br i1 %cmp34, label %if.then.36, label %if.else.64

if.then.36:                                       ; preds = %vaarg.end.31
  %33 = load i32, i32* %flags.addr, align 4
  %and = and i32 %33, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %if.then.36
  %34 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay38 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %34, i32 0, i32 0
  %gp_offset_p39 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay38, i32 0, i32 0
  %gp_offset40 = load i32, i32* %gp_offset_p39
  %fits_in_gp41 = icmp ule i32 %gp_offset40, 40
  br i1 %fits_in_gp41, label %vaarg.in_reg.42, label %vaarg.in_mem.44

vaarg.in_reg.42:                                  ; preds = %if.then.37
  %35 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay38, i32 0, i32 3
  %reg_save_area43 = load i8*, i8** %35
  %36 = getelementptr i8, i8* %reg_save_area43, i32 %gp_offset40
  %37 = bitcast i8* %36 to i64**
  %38 = add i32 %gp_offset40, 8
  store i32 %38, i32* %gp_offset_p39
  br label %vaarg.end.48

vaarg.in_mem.44:                                  ; preds = %if.then.37
  %overflow_arg_area_p45 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay38, i32 0, i32 2
  %overflow_arg_area46 = load i8*, i8** %overflow_arg_area_p45
  %39 = bitcast i8* %overflow_arg_area46 to i64**
  %overflow_arg_area.next47 = getelementptr i8, i8* %overflow_arg_area46, i32 8
  store i8* %overflow_arg_area.next47, i8** %overflow_arg_area_p45
  br label %vaarg.end.48

vaarg.end.48:                                     ; preds = %vaarg.in_mem.44, %vaarg.in_reg.42
  %vaarg.addr49 = phi i64** [ %37, %vaarg.in_reg.42 ], [ %39, %vaarg.in_mem.44 ]
  %40 = load i64*, i64** %vaarg.addr49
  br label %if.end.62

if.else:                                          ; preds = %if.then.36
  %41 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay50 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %41, i32 0, i32 0
  %gp_offset_p51 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay50, i32 0, i32 0
  %gp_offset52 = load i32, i32* %gp_offset_p51
  %fits_in_gp53 = icmp ule i32 %gp_offset52, 40
  br i1 %fits_in_gp53, label %vaarg.in_reg.54, label %vaarg.in_mem.56

vaarg.in_reg.54:                                  ; preds = %if.else
  %42 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay50, i32 0, i32 3
  %reg_save_area55 = load i8*, i8** %42
  %43 = getelementptr i8, i8* %reg_save_area55, i32 %gp_offset52
  %44 = bitcast i8* %43 to i32**
  %45 = add i32 %gp_offset52, 8
  store i32 %45, i32* %gp_offset_p51
  br label %vaarg.end.60

vaarg.in_mem.56:                                  ; preds = %if.else
  %overflow_arg_area_p57 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay50, i32 0, i32 2
  %overflow_arg_area58 = load i8*, i8** %overflow_arg_area_p57
  %46 = bitcast i8* %overflow_arg_area58 to i32**
  %overflow_arg_area.next59 = getelementptr i8, i8* %overflow_arg_area58, i32 8
  store i8* %overflow_arg_area.next59, i8** %overflow_arg_area_p57
  br label %vaarg.end.60

vaarg.end.60:                                     ; preds = %vaarg.in_mem.56, %vaarg.in_reg.54
  %vaarg.addr61 = phi i32** [ %44, %vaarg.in_reg.54 ], [ %46, %vaarg.in_mem.56 ]
  %47 = load i32*, i32** %vaarg.addr61
  br label %if.end.62

if.end.62:                                        ; preds = %vaarg.end.60, %vaarg.end.48
  %48 = load i8*, i8** %format, align 8
  %incdec.ptr63 = getelementptr i8, i8* %48, i32 1
  store i8* %incdec.ptr63, i8** %format, align 8
  br label %if.end.82

if.else.64:                                       ; preds = %vaarg.end.31
  %49 = load i8, i8* %c, align 1
  %conv65 = sext i8 %49 to i32
  %cmp66 = icmp eq i32 %conv65, 115
  br i1 %cmp66, label %land.lhs.true, label %lor.lhs.false.68

lor.lhs.false.68:                                 ; preds = %if.else.64
  %50 = load i8, i8* %c, align 1
  %conv69 = sext i8 %50 to i32
  %cmp70 = icmp eq i32 %conv69, 122
  br i1 %cmp70, label %land.lhs.true, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %lor.lhs.false.68
  %51 = load i8, i8* %c, align 1
  %conv73 = sext i8 %51 to i32
  %cmp74 = icmp eq i32 %conv73, 121
  br i1 %cmp74, label %land.lhs.true, label %if.end.81

land.lhs.true:                                    ; preds = %lor.lhs.false.72, %lor.lhs.false.68, %if.else.64
  %52 = load i8*, i8** %format, align 8
  %53 = load i8, i8* %52, align 1
  %conv76 = sext i8 %53 to i32
  %cmp77 = icmp eq i32 %conv76, 42
  br i1 %cmp77, label %if.then.79, label %if.end.81

if.then.79:                                       ; preds = %land.lhs.true
  %54 = load i8*, i8** %format, align 8
  %incdec.ptr80 = getelementptr i8, i8* %54, i32 1
  store i8* %incdec.ptr80, i8** %format, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.79, %land.lhs.true, %lor.lhs.false.72
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end.62
  br label %sw.epilog

sw.bb.83:                                         ; preds = %entry
  %55 = load i8*, i8** %format, align 8
  %56 = load i8, i8* %55, align 1
  %conv84 = sext i8 %56 to i32
  %cmp85 = icmp eq i32 %conv84, 33
  br i1 %cmp85, label %if.then.87, label %if.else.113

if.then.87:                                       ; preds = %sw.bb.83
  %57 = load i8*, i8** %format, align 8
  %incdec.ptr88 = getelementptr i8, i8* %57, i32 1
  store i8* %incdec.ptr88, i8** %format, align 8
  %58 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay89 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %58, i32 0, i32 0
  %gp_offset_p90 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay89, i32 0, i32 0
  %gp_offset91 = load i32, i32* %gp_offset_p90
  %fits_in_gp92 = icmp ule i32 %gp_offset91, 40
  br i1 %fits_in_gp92, label %vaarg.in_reg.93, label %vaarg.in_mem.95

vaarg.in_reg.93:                                  ; preds = %if.then.87
  %59 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay89, i32 0, i32 3
  %reg_save_area94 = load i8*, i8** %59
  %60 = getelementptr i8, i8* %reg_save_area94, i32 %gp_offset91
  %61 = bitcast i8* %60 to %struct._typeobject**
  %62 = add i32 %gp_offset91, 8
  store i32 %62, i32* %gp_offset_p90
  br label %vaarg.end.99

vaarg.in_mem.95:                                  ; preds = %if.then.87
  %overflow_arg_area_p96 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay89, i32 0, i32 2
  %overflow_arg_area97 = load i8*, i8** %overflow_arg_area_p96
  %63 = bitcast i8* %overflow_arg_area97 to %struct._typeobject**
  %overflow_arg_area.next98 = getelementptr i8, i8* %overflow_arg_area97, i32 8
  store i8* %overflow_arg_area.next98, i8** %overflow_arg_area_p96
  br label %vaarg.end.99

vaarg.end.99:                                     ; preds = %vaarg.in_mem.95, %vaarg.in_reg.93
  %vaarg.addr100 = phi %struct._typeobject** [ %61, %vaarg.in_reg.93 ], [ %63, %vaarg.in_mem.95 ]
  %64 = load %struct._typeobject*, %struct._typeobject** %vaarg.addr100
  %65 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay101 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %65, i32 0, i32 0
  %gp_offset_p102 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay101, i32 0, i32 0
  %gp_offset103 = load i32, i32* %gp_offset_p102
  %fits_in_gp104 = icmp ule i32 %gp_offset103, 40
  br i1 %fits_in_gp104, label %vaarg.in_reg.105, label %vaarg.in_mem.107

vaarg.in_reg.105:                                 ; preds = %vaarg.end.99
  %66 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay101, i32 0, i32 3
  %reg_save_area106 = load i8*, i8** %66
  %67 = getelementptr i8, i8* %reg_save_area106, i32 %gp_offset103
  %68 = bitcast i8* %67 to %struct._object***
  %69 = add i32 %gp_offset103, 8
  store i32 %69, i32* %gp_offset_p102
  br label %vaarg.end.111

vaarg.in_mem.107:                                 ; preds = %vaarg.end.99
  %overflow_arg_area_p108 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay101, i32 0, i32 2
  %overflow_arg_area109 = load i8*, i8** %overflow_arg_area_p108
  %70 = bitcast i8* %overflow_arg_area109 to %struct._object***
  %overflow_arg_area.next110 = getelementptr i8, i8* %overflow_arg_area109, i32 8
  store i8* %overflow_arg_area.next110, i8** %overflow_arg_area_p108
  br label %vaarg.end.111

vaarg.end.111:                                    ; preds = %vaarg.in_mem.107, %vaarg.in_reg.105
  %vaarg.addr112 = phi %struct._object*** [ %68, %vaarg.in_reg.105 ], [ %70, %vaarg.in_mem.107 ]
  %71 = load %struct._object**, %struct._object*** %vaarg.addr112
  br label %if.end.157

if.else.113:                                      ; preds = %sw.bb.83
  %72 = load i8*, i8** %format, align 8
  %73 = load i8, i8* %72, align 1
  %conv114 = sext i8 %73 to i32
  %cmp115 = icmp eq i32 %conv114, 38
  br i1 %cmp115, label %if.then.117, label %if.else.143

if.then.117:                                      ; preds = %if.else.113
  %74 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay118 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %74, i32 0, i32 0
  %gp_offset_p119 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay118, i32 0, i32 0
  %gp_offset120 = load i32, i32* %gp_offset_p119
  %fits_in_gp121 = icmp ule i32 %gp_offset120, 40
  br i1 %fits_in_gp121, label %vaarg.in_reg.122, label %vaarg.in_mem.124

vaarg.in_reg.122:                                 ; preds = %if.then.117
  %75 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay118, i32 0, i32 3
  %reg_save_area123 = load i8*, i8** %75
  %76 = getelementptr i8, i8* %reg_save_area123, i32 %gp_offset120
  %77 = bitcast i8* %76 to i32 (%struct._object*, i8*)**
  %78 = add i32 %gp_offset120, 8
  store i32 %78, i32* %gp_offset_p119
  br label %vaarg.end.128

vaarg.in_mem.124:                                 ; preds = %if.then.117
  %overflow_arg_area_p125 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay118, i32 0, i32 2
  %overflow_arg_area126 = load i8*, i8** %overflow_arg_area_p125
  %79 = bitcast i8* %overflow_arg_area126 to i32 (%struct._object*, i8*)**
  %overflow_arg_area.next127 = getelementptr i8, i8* %overflow_arg_area126, i32 8
  store i8* %overflow_arg_area.next127, i8** %overflow_arg_area_p125
  br label %vaarg.end.128

vaarg.end.128:                                    ; preds = %vaarg.in_mem.124, %vaarg.in_reg.122
  %vaarg.addr129 = phi i32 (%struct._object*, i8*)** [ %77, %vaarg.in_reg.122 ], [ %79, %vaarg.in_mem.124 ]
  %80 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %vaarg.addr129
  %81 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay130 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %81, i32 0, i32 0
  %gp_offset_p131 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay130, i32 0, i32 0
  %gp_offset132 = load i32, i32* %gp_offset_p131
  %fits_in_gp133 = icmp ule i32 %gp_offset132, 40
  br i1 %fits_in_gp133, label %vaarg.in_reg.134, label %vaarg.in_mem.136

vaarg.in_reg.134:                                 ; preds = %vaarg.end.128
  %82 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay130, i32 0, i32 3
  %reg_save_area135 = load i8*, i8** %82
  %83 = getelementptr i8, i8* %reg_save_area135, i32 %gp_offset132
  %84 = bitcast i8* %83 to i8**
  %85 = add i32 %gp_offset132, 8
  store i32 %85, i32* %gp_offset_p131
  br label %vaarg.end.140

vaarg.in_mem.136:                                 ; preds = %vaarg.end.128
  %overflow_arg_area_p137 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay130, i32 0, i32 2
  %overflow_arg_area138 = load i8*, i8** %overflow_arg_area_p137
  %86 = bitcast i8* %overflow_arg_area138 to i8**
  %overflow_arg_area.next139 = getelementptr i8, i8* %overflow_arg_area138, i32 8
  store i8* %overflow_arg_area.next139, i8** %overflow_arg_area_p137
  br label %vaarg.end.140

vaarg.end.140:                                    ; preds = %vaarg.in_mem.136, %vaarg.in_reg.134
  %vaarg.addr141 = phi i8** [ %84, %vaarg.in_reg.134 ], [ %86, %vaarg.in_mem.136 ]
  %87 = load i8*, i8** %vaarg.addr141
  %88 = load i8*, i8** %format, align 8
  %incdec.ptr142 = getelementptr i8, i8* %88, i32 1
  store i8* %incdec.ptr142, i8** %format, align 8
  br label %if.end.156

if.else.143:                                      ; preds = %if.else.113
  %89 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay144 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %89, i32 0, i32 0
  %gp_offset_p145 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay144, i32 0, i32 0
  %gp_offset146 = load i32, i32* %gp_offset_p145
  %fits_in_gp147 = icmp ule i32 %gp_offset146, 40
  br i1 %fits_in_gp147, label %vaarg.in_reg.148, label %vaarg.in_mem.150

vaarg.in_reg.148:                                 ; preds = %if.else.143
  %90 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay144, i32 0, i32 3
  %reg_save_area149 = load i8*, i8** %90
  %91 = getelementptr i8, i8* %reg_save_area149, i32 %gp_offset146
  %92 = bitcast i8* %91 to %struct._object***
  %93 = add i32 %gp_offset146, 8
  store i32 %93, i32* %gp_offset_p145
  br label %vaarg.end.154

vaarg.in_mem.150:                                 ; preds = %if.else.143
  %overflow_arg_area_p151 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay144, i32 0, i32 2
  %overflow_arg_area152 = load i8*, i8** %overflow_arg_area_p151
  %94 = bitcast i8* %overflow_arg_area152 to %struct._object***
  %overflow_arg_area.next153 = getelementptr i8, i8* %overflow_arg_area152, i32 8
  store i8* %overflow_arg_area.next153, i8** %overflow_arg_area_p151
  br label %vaarg.end.154

vaarg.end.154:                                    ; preds = %vaarg.in_mem.150, %vaarg.in_reg.148
  %vaarg.addr155 = phi %struct._object*** [ %92, %vaarg.in_reg.148 ], [ %94, %vaarg.in_mem.150 ]
  %95 = load %struct._object**, %struct._object*** %vaarg.addr155
  br label %if.end.156

if.end.156:                                       ; preds = %vaarg.end.154, %vaarg.end.140
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156, %vaarg.end.111
  br label %sw.epilog

sw.bb.158:                                        ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end.179, %sw.bb.158
  %96 = load i8*, i8** %format, align 8
  %97 = load i8, i8* %96, align 1
  %conv159 = sext i8 %97 to i32
  %cmp160 = icmp eq i32 %conv159, 41
  br i1 %cmp160, label %if.then.162, label %if.end.163

if.then.162:                                      ; preds = %for.cond
  br label %for.end

if.end.163:                                       ; preds = %for.cond
  %98 = load i8*, i8** %format, align 8
  %99 = load i8, i8* %98, align 1
  %conv164 = sext i8 %99 to i32
  %cmp165 = icmp eq i32 %conv164, 0
  br i1 %cmp165, label %if.then.175, label %lor.lhs.false.167

lor.lhs.false.167:                                ; preds = %if.end.163
  %100 = load i8*, i8** %format, align 8
  %101 = load i8, i8* %100, align 1
  %conv168 = sext i8 %101 to i32
  %cmp169 = icmp eq i32 %conv168, 59
  br i1 %cmp169, label %if.then.175, label %lor.lhs.false.171

lor.lhs.false.171:                                ; preds = %lor.lhs.false.167
  %102 = load i8*, i8** %format, align 8
  %103 = load i8, i8* %102, align 1
  %conv172 = sext i8 %103 to i32
  %cmp173 = icmp eq i32 %conv172, 58
  br i1 %cmp173, label %if.then.175, label %if.end.176

if.then.175:                                      ; preds = %lor.lhs.false.171, %lor.lhs.false.167, %if.end.163
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.86, i32 0, i32 0), i8** %retval
  br label %return

if.end.176:                                       ; preds = %lor.lhs.false.171
  %104 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %105 = load i32, i32* %flags.addr, align 4
  %call = call i8* @skipitem(i8** %format, [1 x %struct.__va_list_tag]* %104, i32 %105)
  store i8* %call, i8** %msg, align 8
  %106 = load i8*, i8** %msg, align 8
  %tobool177 = icmp ne i8* %106, null
  br i1 %tobool177, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %if.end.176
  %107 = load i8*, i8** %msg, align 8
  store i8* %107, i8** %retval
  br label %return

if.end.179:                                       ; preds = %if.end.176
  br label %for.cond

for.end:                                          ; preds = %if.then.162
  %108 = load i8*, i8** %format, align 8
  %incdec.ptr180 = getelementptr i8, i8* %108, i32 1
  store i8* %incdec.ptr180, i8** %format, align 8
  br label %sw.epilog

sw.bb.181:                                        ; preds = %entry
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.87, i32 0, i32 0), i8** %retval
  br label %return

sw.default:                                       ; preds = %entry
  br label %err

err:                                              ; preds = %sw.default, %if.then
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i32 0, i32 0), i8** %retval
  br label %return

sw.epilog:                                        ; preds = %for.end, %if.end.157, %if.end.82, %vaarg.end
  %109 = load i8*, i8** %format, align 8
  %110 = load i8**, i8*** %p_format.addr, align 8
  store i8* %109, i8** %110, align 8
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %err, %sw.bb.181, %if.then.178, %if.then.175
  %111 = load i8*, i8** %retval
  ret i8* %111
}

declare i32 @PyDict_Next(%struct._object*, i64*, %struct._object**, %struct._object**) #2

declare i32 @PyUnicode_CompareWithASCIIString(%struct._object*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
