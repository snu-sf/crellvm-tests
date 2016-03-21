; ModuleID = 'irs-onlybc/getargs.bc'
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
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !446, metadata !985), !dbg !986
  store i8* %format, i8** %format.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !447, metadata !985), !dbg !987
  %0 = bitcast i32* %retval1 to i8*, !dbg !988
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !988
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !448, metadata !985), !dbg !989
  %1 = bitcast [1 x %struct.__va_list_tag]* %va to i8*, !dbg !990
  call void @llvm.lifetime.start(i64 24, i8* %1) #2, !dbg !990
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %va, metadata !449, metadata !985), !dbg !991
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0, !dbg !992
  %arraydecay2 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !993
  call void @llvm.va_start(i8* %arraydecay2), !dbg !993
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !994, !tbaa !981
  %3 = load i8*, i8** %format.addr, align 8, !dbg !995, !tbaa !981
  %call = call i32 @vgetargs1(%struct._object* %2, i8* %3, [1 x %struct.__va_list_tag]* %va, i32 1), !dbg !996
  store i32 %call, i32* %retval1, align 4, !dbg !997, !tbaa !998
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0, !dbg !1000
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !1001
  call void @llvm.va_end(i8* %arraydecay34), !dbg !1001
  %4 = load i32, i32* %retval1, align 4, !dbg !1002, !tbaa !998
  %5 = bitcast [1 x %struct.__va_list_tag]* %va to i8*, !dbg !1003
  call void @llvm.lifetime.end(i64 24, i8* %5) #2, !dbg !1003
  %6 = bitcast i32* %retval1 to i8*, !dbg !1003
  call void @llvm.lifetime.end(i64 4, i8* %6) #2, !dbg !1003
  ret i32 %4, !dbg !1004
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !568, metadata !985), !dbg !1005
  store i8* %format, i8** %format.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !569, metadata !985), !dbg !1006
  store [1 x %struct.__va_list_tag]* %p_va, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]** %p_va.addr, metadata !570, metadata !985), !dbg !1007
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !998
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !571, metadata !985), !dbg !1008
  %0 = bitcast [256 x i8]* %msgbuf to i8*, !dbg !1009
  call void @llvm.lifetime.start(i64 256, i8* %0) #2, !dbg !1009
  call void @llvm.dbg.declare(metadata [256 x i8]* %msgbuf, metadata !572, metadata !985), !dbg !1010
  %1 = bitcast [32 x i32]* %levels to i8*, !dbg !1011
  call void @llvm.lifetime.start(i64 128, i8* %1) #2, !dbg !1011
  call void @llvm.dbg.declare(metadata [32 x i32]* %levels, metadata !576, metadata !985), !dbg !1012
  %2 = bitcast i8** %fname to i8*, !dbg !1013
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1013
  call void @llvm.dbg.declare(metadata i8** %fname, metadata !580, metadata !985), !dbg !1014
  store i8* null, i8** %fname, align 8, !dbg !1014, !tbaa !981
  %3 = bitcast i8** %message to i8*, !dbg !1015
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1015
  call void @llvm.dbg.declare(metadata i8** %message, metadata !581, metadata !985), !dbg !1016
  store i8* null, i8** %message, align 8, !dbg !1016, !tbaa !981
  %4 = bitcast i32* %min to i8*, !dbg !1017
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !1017
  call void @llvm.dbg.declare(metadata i32* %min, metadata !582, metadata !985), !dbg !1018
  store i32 -1, i32* %min, align 4, !dbg !1018, !tbaa !998
  %5 = bitcast i32* %max to i8*, !dbg !1019
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !1019
  call void @llvm.dbg.declare(metadata i32* %max, metadata !583, metadata !985), !dbg !1020
  store i32 0, i32* %max, align 4, !dbg !1020, !tbaa !998
  %6 = bitcast i32* %level to i8*, !dbg !1021
  call void @llvm.lifetime.start(i64 4, i8* %6) #2, !dbg !1021
  call void @llvm.dbg.declare(metadata i32* %level, metadata !584, metadata !985), !dbg !1022
  store i32 0, i32* %level, align 4, !dbg !1022, !tbaa !998
  %7 = bitcast i32* %endfmt to i8*, !dbg !1023
  call void @llvm.lifetime.start(i64 4, i8* %7) #2, !dbg !1023
  call void @llvm.dbg.declare(metadata i32* %endfmt, metadata !585, metadata !985), !dbg !1024
  store i32 0, i32* %endfmt, align 4, !dbg !1024, !tbaa !998
  %8 = bitcast i8** %formatsave to i8*, !dbg !1025
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !1025
  call void @llvm.dbg.declare(metadata i8** %formatsave, metadata !586, metadata !985), !dbg !1026
  %9 = load i8*, i8** %format.addr, align 8, !dbg !1027, !tbaa !981
  store i8* %9, i8** %formatsave, align 8, !dbg !1026, !tbaa !981
  %10 = bitcast i64* %i to i8*, !dbg !1028
  call void @llvm.lifetime.start(i64 8, i8* %10) #2, !dbg !1028
  call void @llvm.dbg.declare(metadata i64* %i, metadata !587, metadata !985), !dbg !1029
  %11 = bitcast i64* %len to i8*, !dbg !1028
  call void @llvm.lifetime.start(i64 8, i8* %11) #2, !dbg !1028
  call void @llvm.dbg.declare(metadata i64* %len, metadata !588, metadata !985), !dbg !1030
  %12 = bitcast i8** %msg to i8*, !dbg !1031
  call void @llvm.lifetime.start(i64 8, i8* %12) #2, !dbg !1031
  call void @llvm.dbg.declare(metadata i8** %msg, metadata !589, metadata !985), !dbg !1032
  %13 = bitcast i32* %compat to i8*, !dbg !1033
  call void @llvm.lifetime.start(i64 4, i8* %13) #2, !dbg !1033
  call void @llvm.dbg.declare(metadata i32* %compat, metadata !590, metadata !985), !dbg !1034
  %14 = load i32, i32* %flags.addr, align 4, !dbg !1035, !tbaa !998
  %and = and i32 %14, 1, !dbg !1036
  store i32 %and, i32* %compat, align 4, !dbg !1034, !tbaa !998
  %15 = bitcast [8 x %struct.freelistentry_t]* %static_entries to i8*, !dbg !1037
  call void @llvm.lifetime.start(i64 128, i8* %15) #2, !dbg !1037
  call void @llvm.dbg.declare(metadata [8 x %struct.freelistentry_t]* %static_entries, metadata !591, metadata !985), !dbg !1038
  %16 = bitcast %struct.freelist_t* %freelist to i8*, !dbg !1039
  call void @llvm.lifetime.start(i64 16, i8* %16) #2, !dbg !1039
  call void @llvm.dbg.declare(metadata %struct.freelist_t* %freelist, metadata !595, metadata !985), !dbg !1040
  %arraydecay = getelementptr inbounds [8 x %struct.freelistentry_t], [8 x %struct.freelistentry_t]* %static_entries, i32 0, i32 0, !dbg !1041
  %entries = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i32 0, i32 0, !dbg !1042
  store %struct.freelistentry_t* %arraydecay, %struct.freelistentry_t** %entries, align 8, !dbg !1043, !tbaa !1044
  %first_available = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i32 0, i32 1, !dbg !1046
  store i32 0, i32* %first_available, align 4, !dbg !1047, !tbaa !1048
  %entries_malloced = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i32 0, i32 2, !dbg !1049
  store i32 0, i32* %entries_malloced, align 4, !dbg !1050, !tbaa !1051
  %17 = load i32, i32* %flags.addr, align 4, !dbg !1052, !tbaa !998
  %and1 = and i32 %17, -2, !dbg !1053
  store i32 %and1, i32* %flags.addr, align 4, !dbg !1054, !tbaa !998
  br label %while.cond, !dbg !1055

while.cond:                                       ; preds = %sw.epilog, %entry
  %18 = load i32, i32* %endfmt, align 4, !dbg !1056, !tbaa !998
  %cmp = icmp eq i32 %18, 0, !dbg !1059
  br i1 %cmp, label %while.body, label %while.end, !dbg !1055

while.body:                                       ; preds = %while.cond
  %19 = bitcast i32* %c to i8*, !dbg !1060
  call void @llvm.lifetime.start(i64 4, i8* %19) #2, !dbg !1060
  call void @llvm.dbg.declare(metadata i32* %c, metadata !602, metadata !985), !dbg !1061
  %20 = load i8*, i8** %format.addr, align 8, !dbg !1062, !tbaa !981
  %incdec.ptr = getelementptr i8, i8* %20, i32 1, !dbg !1062
  store i8* %incdec.ptr, i8** %format.addr, align 8, !dbg !1062, !tbaa !981
  %21 = load i8, i8* %20, align 1, !dbg !1063, !tbaa !1064
  %conv = sext i8 %21 to i32, !dbg !1063
  store i32 %conv, i32* %c, align 4, !dbg !1061, !tbaa !998
  %22 = load i32, i32* %c, align 4, !dbg !1065, !tbaa !998
  switch i32 %22, label %sw.default [
    i32 40, label %sw.bb
    i32 41, label %sw.bb.9
    i32 0, label %sw.bb.14
    i32 58, label %sw.bb.15
    i32 59, label %sw.bb.16
    i32 124, label %sw.bb.17
  ], !dbg !1066

sw.bb:                                            ; preds = %while.body
  %23 = load i32, i32* %level, align 4, !dbg !1067, !tbaa !998
  %cmp2 = icmp eq i32 %23, 0, !dbg !1070
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1071

if.then:                                          ; preds = %sw.bb
  %24 = load i32, i32* %max, align 4, !dbg !1072, !tbaa !998
  %inc = add i32 %24, 1, !dbg !1072
  store i32 %inc, i32* %max, align 4, !dbg !1072, !tbaa !998
  br label %if.end, !dbg !1073

if.end:                                           ; preds = %if.then, %sw.bb
  %25 = load i32, i32* %level, align 4, !dbg !1074, !tbaa !998
  %inc4 = add i32 %25, 1, !dbg !1074
  store i32 %inc4, i32* %level, align 4, !dbg !1074, !tbaa !998
  %26 = load i32, i32* %level, align 4, !dbg !1075, !tbaa !998
  %cmp5 = icmp sge i32 %26, 30, !dbg !1077
  br i1 %cmp5, label %if.then.7, label %if.end.8, !dbg !1078

if.then.7:                                        ; preds = %if.end
  call void @Py_FatalError(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i32 0, i32 0)) #7, !dbg !1079
  unreachable, !dbg !1079

if.end.8:                                         ; preds = %if.end
  br label %sw.epilog, !dbg !1080

sw.bb.9:                                          ; preds = %while.body
  %27 = load i32, i32* %level, align 4, !dbg !1081, !tbaa !998
  %cmp10 = icmp eq i32 %27, 0, !dbg !1083
  br i1 %cmp10, label %if.then.12, label %if.else, !dbg !1084

if.then.12:                                       ; preds = %sw.bb.9
  call void @Py_FatalError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0)) #7, !dbg !1085
  unreachable, !dbg !1085

if.else:                                          ; preds = %sw.bb.9
  %28 = load i32, i32* %level, align 4, !dbg !1086, !tbaa !998
  %dec = add i32 %28, -1, !dbg !1086
  store i32 %dec, i32* %level, align 4, !dbg !1086, !tbaa !998
  br label %if.end.13

if.end.13:                                        ; preds = %if.else
  br label %sw.epilog, !dbg !1087

sw.bb.14:                                         ; preds = %while.body
  store i32 1, i32* %endfmt, align 4, !dbg !1088, !tbaa !998
  br label %sw.epilog, !dbg !1089

sw.bb.15:                                         ; preds = %while.body
  %29 = load i8*, i8** %format.addr, align 8, !dbg !1090, !tbaa !981
  store i8* %29, i8** %fname, align 8, !dbg !1091, !tbaa !981
  store i32 1, i32* %endfmt, align 4, !dbg !1092, !tbaa !998
  br label %sw.epilog, !dbg !1093

sw.bb.16:                                         ; preds = %while.body
  %30 = load i8*, i8** %format.addr, align 8, !dbg !1094, !tbaa !981
  store i8* %30, i8** %message, align 8, !dbg !1095, !tbaa !981
  store i32 1, i32* %endfmt, align 4, !dbg !1096, !tbaa !998
  br label %sw.epilog, !dbg !1097

sw.bb.17:                                         ; preds = %while.body
  %31 = load i32, i32* %level, align 4, !dbg !1098, !tbaa !998
  %cmp18 = icmp eq i32 %31, 0, !dbg !1100
  br i1 %cmp18, label %if.then.20, label %if.end.21, !dbg !1101

if.then.20:                                       ; preds = %sw.bb.17
  %32 = load i32, i32* %max, align 4, !dbg !1102, !tbaa !998
  store i32 %32, i32* %min, align 4, !dbg !1103, !tbaa !998
  br label %if.end.21, !dbg !1104

if.end.21:                                        ; preds = %if.then.20, %sw.bb.17
  br label %sw.epilog, !dbg !1105

sw.default:                                       ; preds = %while.body
  %33 = load i32, i32* %level, align 4, !dbg !1106, !tbaa !998
  %cmp22 = icmp eq i32 %33, 0, !dbg !1108
  br i1 %cmp22, label %if.then.24, label %if.end.38, !dbg !1109

if.then.24:                                       ; preds = %sw.default
  %34 = load i32, i32* %c, align 4, !dbg !1110, !tbaa !998
  %and25 = and i32 %34, 255, !dbg !1113
  %conv26 = trunc i32 %and25 to i8, !dbg !1114
  %conv27 = zext i8 %conv26 to i32, !dbg !1115
  %and28 = and i32 %conv27, 255, !dbg !1116
  %conv29 = trunc i32 %and28 to i8, !dbg !1117
  %idxprom = zext i8 %conv29 to i64, !dbg !1118
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom, !dbg !1118
  %35 = load i32, i32* %arrayidx, align 4, !dbg !1118, !tbaa !998
  %and30 = and i32 %35, 3, !dbg !1119
  %tobool = icmp ne i32 %and30, 0, !dbg !1119
  br i1 %tobool, label %if.then.31, label %if.end.37, !dbg !1120

if.then.31:                                       ; preds = %if.then.24
  %36 = load i32, i32* %c, align 4, !dbg !1121, !tbaa !998
  %cmp32 = icmp ne i32 %36, 101, !dbg !1123
  br i1 %cmp32, label %if.then.34, label %if.end.36, !dbg !1124

if.then.34:                                       ; preds = %if.then.31
  %37 = load i32, i32* %max, align 4, !dbg !1125, !tbaa !998
  %inc35 = add i32 %37, 1, !dbg !1125
  store i32 %inc35, i32* %max, align 4, !dbg !1125, !tbaa !998
  br label %if.end.36, !dbg !1126

if.end.36:                                        ; preds = %if.then.34, %if.then.31
  br label %if.end.37, !dbg !1127

if.end.37:                                        ; preds = %if.end.36, %if.then.24
  br label %if.end.38, !dbg !1129

if.end.38:                                        ; preds = %if.end.37, %sw.default
  br label %sw.epilog, !dbg !1130

sw.epilog:                                        ; preds = %if.end.38, %if.end.21, %sw.bb.16, %sw.bb.15, %sw.bb.14, %if.end.13, %if.end.8
  %38 = bitcast i32* %c to i8*, !dbg !1131
  call void @llvm.lifetime.end(i64 4, i8* %38) #2, !dbg !1131
  br label %while.cond, !dbg !1055

while.end:                                        ; preds = %while.cond
  %39 = load i32, i32* %level, align 4, !dbg !1132, !tbaa !998
  %cmp39 = icmp ne i32 %39, 0, !dbg !1134
  br i1 %cmp39, label %if.then.41, label %if.end.42, !dbg !1135

if.then.41:                                       ; preds = %while.end
  call void @Py_FatalError(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0)) #7, !dbg !1136
  unreachable, !dbg !1136

if.end.42:                                        ; preds = %while.end
  %40 = load i32, i32* %min, align 4, !dbg !1137, !tbaa !998
  %cmp43 = icmp slt i32 %40, 0, !dbg !1139
  br i1 %cmp43, label %if.then.45, label %if.end.46, !dbg !1140

if.then.45:                                       ; preds = %if.end.42
  %41 = load i32, i32* %max, align 4, !dbg !1141, !tbaa !998
  store i32 %41, i32* %min, align 4, !dbg !1142, !tbaa !998
  br label %if.end.46, !dbg !1143

if.end.46:                                        ; preds = %if.then.45, %if.end.42
  %42 = load i8*, i8** %formatsave, align 8, !dbg !1144, !tbaa !981
  store i8* %42, i8** %format.addr, align 8, !dbg !1145, !tbaa !981
  %43 = load i32, i32* %max, align 4, !dbg !1146, !tbaa !998
  %cmp47 = icmp sgt i32 %43, 8, !dbg !1148
  br i1 %cmp47, label %if.then.49, label %if.end.62, !dbg !1149

if.then.49:                                       ; preds = %if.end.46
  %44 = load i32, i32* %max, align 4, !dbg !1150, !tbaa !998
  %conv50 = sext i32 %44 to i64, !dbg !1152
  %cmp51 = icmp ugt i64 %conv50, 576460752303423487, !dbg !1153
  br i1 %cmp51, label %cond.true, label %cond.false, !dbg !1154

cond.true:                                        ; preds = %if.then.49
  br label %cond.end, !dbg !1155

cond.false:                                       ; preds = %if.then.49
  %45 = load i32, i32* %max, align 4, !dbg !1157, !tbaa !998
  %conv53 = sext i32 %45 to i64, !dbg !1159
  %mul = mul i64 %conv53, 16, !dbg !1160
  %call = call i8* @PyMem_Malloc(i64 %mul), !dbg !1161
  %46 = bitcast i8* %call to %struct.freelistentry_t*, !dbg !1162
  br label %cond.end, !dbg !1154

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.freelistentry_t* [ null, %cond.true ], [ %46, %cond.false ], !dbg !1154
  %entries54 = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i32 0, i32 0, !dbg !1163
  store %struct.freelistentry_t* %cond, %struct.freelistentry_t** %entries54, align 8, !dbg !1166, !tbaa !1044
  %entries55 = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i32 0, i32 0, !dbg !1167
  %47 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries55, align 8, !dbg !1167, !tbaa !1044
  %cmp56 = icmp eq %struct.freelistentry_t* %47, null, !dbg !1169
  br i1 %cmp56, label %if.then.58, label %if.end.60, !dbg !1170

if.then.58:                                       ; preds = %cond.end
  %call59 = call %struct._object* @PyErr_NoMemory(), !dbg !1171
  store i32 0, i32* %retval, !dbg !1173
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1173

if.end.60:                                        ; preds = %cond.end
  %entries_malloced61 = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i32 0, i32 2, !dbg !1174
  store i32 1, i32* %entries_malloced61, align 4, !dbg !1175, !tbaa !1051
  br label %if.end.62, !dbg !1176

if.end.62:                                        ; preds = %if.end.60, %if.end.46
  %48 = load i32, i32* %compat, align 4, !dbg !1177, !tbaa !998
  %tobool63 = icmp ne i32 %48, 0, !dbg !1177
  br i1 %tobool63, label %if.then.64, label %if.end.118, !dbg !1179

if.then.64:                                       ; preds = %if.end.62
  %49 = load i32, i32* %max, align 4, !dbg !1180, !tbaa !998
  %cmp65 = icmp eq i32 %49, 0, !dbg !1183
  br i1 %cmp65, label %if.then.67, label %if.else.83, !dbg !1184

if.then.67:                                       ; preds = %if.then.64
  %50 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1185, !tbaa !981
  %cmp68 = icmp eq %struct._object* %50, null, !dbg !1188
  br i1 %cmp68, label %if.then.70, label %if.end.71, !dbg !1189

if.then.70:                                       ; preds = %if.then.67
  store i32 1, i32* %retval, !dbg !1190
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1190

if.end.71:                                        ; preds = %if.then.67
  %51 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1191, !tbaa !981
  %52 = load i8*, i8** %fname, align 8, !dbg !1192, !tbaa !981
  %cmp72 = icmp eq i8* %52, null, !dbg !1193
  br i1 %cmp72, label %cond.true.74, label %cond.false.75, !dbg !1192

cond.true.74:                                     ; preds = %if.end.71
  br label %cond.end.76, !dbg !1194

cond.false.75:                                    ; preds = %if.end.71
  %53 = load i8*, i8** %fname, align 8, !dbg !1196, !tbaa !981
  br label %cond.end.76, !dbg !1192

cond.end.76:                                      ; preds = %cond.false.75, %cond.true.74
  %cond77 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), %cond.true.74 ], [ %53, %cond.false.75 ], !dbg !1192
  %54 = load i8*, i8** %fname, align 8, !dbg !1198, !tbaa !981
  %cmp78 = icmp eq i8* %54, null, !dbg !1199
  %cond80 = select i1 %cmp78, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), !dbg !1198
  %call81 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0), i8* %cond77, i8* %cond80), !dbg !1200
  %call82 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist), !dbg !1201
  store i32 %call82, i32* %retval, !dbg !1202
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1202

if.else.83:                                       ; preds = %if.then.64
  %55 = load i32, i32* %min, align 4, !dbg !1203, !tbaa !998
  %cmp84 = icmp eq i32 %55, 1, !dbg !1205
  br i1 %cmp84, label %land.lhs.true, label %if.else.116, !dbg !1206

land.lhs.true:                                    ; preds = %if.else.83
  %56 = load i32, i32* %max, align 4, !dbg !1207, !tbaa !998
  %cmp86 = icmp eq i32 %56, 1, !dbg !1209
  br i1 %cmp86, label %if.then.88, label %if.else.116, !dbg !1210

if.then.88:                                       ; preds = %land.lhs.true
  %57 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1211, !tbaa !981
  %cmp89 = icmp eq %struct._object* %57, null, !dbg !1214
  br i1 %cmp89, label %if.then.91, label %if.end.103, !dbg !1215

if.then.91:                                       ; preds = %if.then.88
  %58 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1216, !tbaa !981
  %59 = load i8*, i8** %fname, align 8, !dbg !1218, !tbaa !981
  %cmp92 = icmp eq i8* %59, null, !dbg !1219
  br i1 %cmp92, label %cond.true.94, label %cond.false.95, !dbg !1218

cond.true.94:                                     ; preds = %if.then.91
  br label %cond.end.96, !dbg !1220

cond.false.95:                                    ; preds = %if.then.91
  %60 = load i8*, i8** %fname, align 8, !dbg !1222, !tbaa !981
  br label %cond.end.96, !dbg !1218

cond.end.96:                                      ; preds = %cond.false.95, %cond.true.94
  %cond97 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), %cond.true.94 ], [ %60, %cond.false.95 ], !dbg !1218
  %61 = load i8*, i8** %fname, align 8, !dbg !1224, !tbaa !981
  %cmp98 = icmp eq i8* %61, null, !dbg !1225
  %cond100 = select i1 %cmp98, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), !dbg !1224
  %call101 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %58, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i32 0, i32 0), i8* %cond97, i8* %cond100), !dbg !1226
  %call102 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist), !dbg !1227
  store i32 %call102, i32* %retval, !dbg !1228
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1228

if.end.103:                                       ; preds = %if.then.88
  %62 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1229, !tbaa !981
  %63 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !1230, !tbaa !981
  %64 = load i32, i32* %flags.addr, align 4, !dbg !1231, !tbaa !998
  %arraydecay104 = getelementptr inbounds [32 x i32], [32 x i32]* %levels, i32 0, i32 0, !dbg !1232
  %arraydecay105 = getelementptr inbounds [256 x i8], [256 x i8]* %msgbuf, i32 0, i32 0, !dbg !1233
  %call106 = call i8* @convertitem(%struct._object* %62, i8** %format.addr, [1 x %struct.__va_list_tag]* %63, i32 %64, i32* %arraydecay104, i8* %arraydecay105, i64 256, %struct.freelist_t* %freelist), !dbg !1234
  store i8* %call106, i8** %msg, align 8, !dbg !1235, !tbaa !981
  %65 = load i8*, i8** %msg, align 8, !dbg !1236, !tbaa !981
  %cmp107 = icmp eq i8* %65, null, !dbg !1238
  br i1 %cmp107, label %if.then.109, label %if.end.111, !dbg !1239

if.then.109:                                      ; preds = %if.end.103
  %call110 = call i32 @cleanreturn(i32 1, %struct.freelist_t* %freelist), !dbg !1240
  store i32 %call110, i32* %retval, !dbg !1241
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1241

if.end.111:                                       ; preds = %if.end.103
  %arrayidx112 = getelementptr [32 x i32], [32 x i32]* %levels, i32 0, i64 0, !dbg !1242
  %66 = load i32, i32* %arrayidx112, align 4, !dbg !1242, !tbaa !998
  %conv113 = sext i32 %66 to i64, !dbg !1242
  %67 = load i8*, i8** %msg, align 8, !dbg !1243, !tbaa !981
  %arraydecay114 = getelementptr inbounds [32 x i32], [32 x i32]* %levels, i32 0, i32 0, !dbg !1244
  %add.ptr = getelementptr i32, i32* %arraydecay114, i64 1, !dbg !1245
  %68 = load i8*, i8** %fname, align 8, !dbg !1246, !tbaa !981
  %69 = load i8*, i8** %message, align 8, !dbg !1247, !tbaa !981
  call void @seterror(i64 %conv113, i8* %67, i32* %add.ptr, i8* %68, i8* %69), !dbg !1248
  %call115 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist), !dbg !1249
  store i32 %call115, i32* %retval, !dbg !1250
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1250

if.else.116:                                      ; preds = %land.lhs.true, %if.else.83
  %70 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1251, !tbaa !981
  call void @PyErr_SetString(%struct._object* %70, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i32 0, i32 0)), !dbg !1253
  %call117 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist), !dbg !1254
  store i32 %call117, i32* %retval, !dbg !1255
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1255

if.end.118:                                       ; preds = %if.end.62
  %71 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1256, !tbaa !981
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 1, !dbg !1258
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1258, !tbaa !1259
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %72, i32 0, i32 19, !dbg !1262
  %73 = load i64, i64* %tp_flags, align 8, !dbg !1262, !tbaa !1263
  %and119 = and i64 %73, 67108864, !dbg !1266
  %cmp120 = icmp ne i64 %and119, 0, !dbg !1267
  br i1 %cmp120, label %if.end.124, label %if.then.122, !dbg !1268

if.then.122:                                      ; preds = %if.end.118
  %74 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1269, !tbaa !981
  call void @PyErr_SetString(%struct._object* %74, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.18, i32 0, i32 0)), !dbg !1271
  %call123 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist), !dbg !1272
  store i32 %call123, i32* %retval, !dbg !1273
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1273

if.end.124:                                       ; preds = %if.end.118
  %75 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1274, !tbaa !981
  %76 = bitcast %struct._object* %75 to %struct.PyVarObject*, !dbg !1275
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %76, i32 0, i32 1, !dbg !1276
  %77 = load i64, i64* %ob_size, align 8, !dbg !1276, !tbaa !1277
  store i64 %77, i64* %len, align 8, !dbg !1278, !tbaa !1279
  %78 = load i64, i64* %len, align 8, !dbg !1280, !tbaa !1279
  %79 = load i32, i32* %min, align 4, !dbg !1282, !tbaa !998
  %conv125 = sext i32 %79 to i64, !dbg !1282
  %cmp126 = icmp slt i64 %78, %conv125, !dbg !1283
  br i1 %cmp126, label %if.then.131, label %lor.lhs.false, !dbg !1284

lor.lhs.false:                                    ; preds = %if.end.124
  %80 = load i32, i32* %max, align 4, !dbg !1285, !tbaa !998
  %conv128 = sext i32 %80 to i64, !dbg !1285
  %81 = load i64, i64* %len, align 8, !dbg !1287, !tbaa !1279
  %cmp129 = icmp slt i64 %conv128, %81, !dbg !1288
  br i1 %cmp129, label %if.then.131, label %if.end.175, !dbg !1289

if.then.131:                                      ; preds = %lor.lhs.false, %if.end.124
  %82 = load i8*, i8** %message, align 8, !dbg !1290, !tbaa !981
  %cmp132 = icmp eq i8* %82, null, !dbg !1293
  br i1 %cmp132, label %if.then.134, label %if.else.172, !dbg !1294

if.then.134:                                      ; preds = %if.then.131
  %83 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1295, !tbaa !981
  %84 = load i8*, i8** %fname, align 8, !dbg !1296, !tbaa !981
  %cmp135 = icmp eq i8* %84, null, !dbg !1297
  br i1 %cmp135, label %cond.true.137, label %cond.false.138, !dbg !1296

cond.true.137:                                    ; preds = %if.then.134
  br label %cond.end.139, !dbg !1298

cond.false.138:                                   ; preds = %if.then.134
  %85 = load i8*, i8** %fname, align 8, !dbg !1300, !tbaa !981
  br label %cond.end.139, !dbg !1296

cond.end.139:                                     ; preds = %cond.false.138, %cond.true.137
  %cond140 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), %cond.true.137 ], [ %85, %cond.false.138 ], !dbg !1296
  %86 = load i8*, i8** %fname, align 8, !dbg !1302, !tbaa !981
  %cmp141 = icmp eq i8* %86, null, !dbg !1303
  %cond143 = select i1 %cmp141, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), !dbg !1302
  %87 = load i32, i32* %min, align 4, !dbg !1304, !tbaa !998
  %88 = load i32, i32* %max, align 4, !dbg !1305, !tbaa !998
  %cmp144 = icmp eq i32 %87, %88, !dbg !1306
  br i1 %cmp144, label %cond.true.146, label %cond.false.147, !dbg !1304

cond.true.146:                                    ; preds = %cond.end.139
  br label %cond.end.152, !dbg !1307

cond.false.147:                                   ; preds = %cond.end.139
  %89 = load i64, i64* %len, align 8, !dbg !1308, !tbaa !1279
  %90 = load i32, i32* %min, align 4, !dbg !1309, !tbaa !998
  %conv148 = sext i32 %90 to i64, !dbg !1309
  %cmp149 = icmp slt i64 %89, %conv148, !dbg !1310
  %cond151 = select i1 %cmp149, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), !dbg !1308
  br label %cond.end.152, !dbg !1304

cond.end.152:                                     ; preds = %cond.false.147, %cond.true.146
  %cond153 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), %cond.true.146 ], [ %cond151, %cond.false.147 ], !dbg !1304
  %91 = load i64, i64* %len, align 8, !dbg !1311, !tbaa !1279
  %92 = load i32, i32* %min, align 4, !dbg !1312, !tbaa !998
  %conv154 = sext i32 %92 to i64, !dbg !1312
  %cmp155 = icmp slt i64 %91, %conv154, !dbg !1313
  br i1 %cmp155, label %cond.true.157, label %cond.false.158, !dbg !1311

cond.true.157:                                    ; preds = %cond.end.152
  %93 = load i32, i32* %min, align 4, !dbg !1314, !tbaa !998
  br label %cond.end.159, !dbg !1311

cond.false.158:                                   ; preds = %cond.end.152
  %94 = load i32, i32* %max, align 4, !dbg !1315, !tbaa !998
  br label %cond.end.159, !dbg !1311

cond.end.159:                                     ; preds = %cond.false.158, %cond.true.157
  %cond160 = phi i32 [ %93, %cond.true.157 ], [ %94, %cond.false.158 ], !dbg !1311
  %95 = load i64, i64* %len, align 8, !dbg !1316, !tbaa !1279
  %96 = load i32, i32* %min, align 4, !dbg !1317, !tbaa !998
  %conv161 = sext i32 %96 to i64, !dbg !1317
  %cmp162 = icmp slt i64 %95, %conv161, !dbg !1318
  br i1 %cmp162, label %cond.true.164, label %cond.false.165, !dbg !1316

cond.true.164:                                    ; preds = %cond.end.159
  %97 = load i32, i32* %min, align 4, !dbg !1319, !tbaa !998
  br label %cond.end.166, !dbg !1316

cond.false.165:                                   ; preds = %cond.end.159
  %98 = load i32, i32* %max, align 4, !dbg !1320, !tbaa !998
  br label %cond.end.166, !dbg !1316

cond.end.166:                                     ; preds = %cond.false.165, %cond.true.164
  %cond167 = phi i32 [ %97, %cond.true.164 ], [ %98, %cond.false.165 ], !dbg !1316
  %cmp168 = icmp eq i32 %cond167, 1, !dbg !1321
  %cond170 = select i1 %cmp168, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), !dbg !1324
  %99 = load i64, i64* %len, align 8, !dbg !1325, !tbaa !1279
  %call171 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %83, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i32 0, i32 0), i8* %cond140, i8* %cond143, i8* %cond153, i32 %cond160, i8* %cond170, i64 %99), !dbg !1326
  br label %if.end.173, !dbg !1326

if.else.172:                                      ; preds = %if.then.131
  %100 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1327, !tbaa !981
  %101 = load i8*, i8** %message, align 8, !dbg !1328, !tbaa !981
  call void @PyErr_SetString(%struct._object* %100, i8* %101), !dbg !1329
  br label %if.end.173

if.end.173:                                       ; preds = %if.else.172, %cond.end.166
  %call174 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist), !dbg !1330
  store i32 %call174, i32* %retval, !dbg !1331
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1331

if.end.175:                                       ; preds = %lor.lhs.false
  store i64 0, i64* %i, align 8, !dbg !1332, !tbaa !1279
  br label %for.cond, !dbg !1334

for.cond:                                         ; preds = %for.inc, %if.end.175
  %102 = load i64, i64* %i, align 8, !dbg !1335, !tbaa !1279
  %103 = load i64, i64* %len, align 8, !dbg !1339, !tbaa !1279
  %cmp176 = icmp slt i64 %102, %103, !dbg !1340
  br i1 %cmp176, label %for.body, label %for.end, !dbg !1341

for.body:                                         ; preds = %for.cond
  %104 = load i8*, i8** %format.addr, align 8, !dbg !1342, !tbaa !981
  %105 = load i8, i8* %104, align 1, !dbg !1345, !tbaa !1064
  %conv178 = sext i8 %105 to i32, !dbg !1345
  %cmp179 = icmp eq i32 %conv178, 124, !dbg !1346
  br i1 %cmp179, label %if.then.181, label %if.end.183, !dbg !1347

if.then.181:                                      ; preds = %for.body
  %106 = load i8*, i8** %format.addr, align 8, !dbg !1348, !tbaa !981
  %incdec.ptr182 = getelementptr i8, i8* %106, i32 1, !dbg !1348
  store i8* %incdec.ptr182, i8** %format.addr, align 8, !dbg !1348, !tbaa !981
  br label %if.end.183, !dbg !1349

if.end.183:                                       ; preds = %if.then.181, %for.body
  %107 = load i64, i64* %i, align 8, !dbg !1350, !tbaa !1279
  %108 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1351, !tbaa !981
  %109 = bitcast %struct._object* %108 to %struct.PyTupleObject*, !dbg !1352
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %109, i32 0, i32 1, !dbg !1353
  %arrayidx184 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %107, !dbg !1354
  %110 = load %struct._object*, %struct._object** %arrayidx184, align 8, !dbg !1354, !tbaa !981
  %111 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !1355, !tbaa !981
  %112 = load i32, i32* %flags.addr, align 4, !dbg !1356, !tbaa !998
  %arraydecay185 = getelementptr inbounds [32 x i32], [32 x i32]* %levels, i32 0, i32 0, !dbg !1357
  %arraydecay186 = getelementptr inbounds [256 x i8], [256 x i8]* %msgbuf, i32 0, i32 0, !dbg !1358
  %call187 = call i8* @convertitem(%struct._object* %110, i8** %format.addr, [1 x %struct.__va_list_tag]* %111, i32 %112, i32* %arraydecay185, i8* %arraydecay186, i64 256, %struct.freelist_t* %freelist), !dbg !1359
  store i8* %call187, i8** %msg, align 8, !dbg !1360, !tbaa !981
  %113 = load i8*, i8** %msg, align 8, !dbg !1361, !tbaa !981
  %tobool188 = icmp ne i8* %113, null, !dbg !1361
  br i1 %tobool188, label %if.then.189, label %if.end.192, !dbg !1363

if.then.189:                                      ; preds = %if.end.183
  %114 = load i64, i64* %i, align 8, !dbg !1364, !tbaa !1279
  %add = add i64 %114, 1, !dbg !1366
  %115 = load i8*, i8** %msg, align 8, !dbg !1367, !tbaa !981
  %arraydecay190 = getelementptr inbounds [32 x i32], [32 x i32]* %levels, i32 0, i32 0, !dbg !1368
  %116 = load i8*, i8** %fname, align 8, !dbg !1369, !tbaa !981
  %117 = load i8*, i8** %msg, align 8, !dbg !1370, !tbaa !981
  call void @seterror(i64 %add, i8* %115, i32* %arraydecay190, i8* %116, i8* %117), !dbg !1371
  %call191 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist), !dbg !1372
  store i32 %call191, i32* %retval, !dbg !1373
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1373

if.end.192:                                       ; preds = %if.end.183
  br label %for.inc, !dbg !1374

for.inc:                                          ; preds = %if.end.192
  %118 = load i64, i64* %i, align 8, !dbg !1375, !tbaa !1279
  %inc193 = add i64 %118, 1, !dbg !1375
  store i64 %inc193, i64* %i, align 8, !dbg !1375, !tbaa !1279
  br label %for.cond, !dbg !1376

for.end:                                          ; preds = %for.cond
  %119 = load i8*, i8** %format.addr, align 8, !dbg !1377, !tbaa !981
  %120 = load i8, i8* %119, align 1, !dbg !1379, !tbaa !1064
  %conv194 = sext i8 %120 to i32, !dbg !1379
  %cmp195 = icmp ne i32 %conv194, 0, !dbg !1380
  br i1 %cmp195, label %land.lhs.true.197, label %if.end.227, !dbg !1381

land.lhs.true.197:                                ; preds = %for.end
  %121 = load i8*, i8** %format.addr, align 8, !dbg !1382, !tbaa !981
  %122 = load i8, i8* %121, align 1, !dbg !1384, !tbaa !1064
  %conv198 = sext i8 %122 to i32, !dbg !1385
  %and199 = and i32 %conv198, 255, !dbg !1386
  %conv200 = trunc i32 %and199 to i8, !dbg !1387
  %conv201 = zext i8 %conv200 to i32, !dbg !1388
  %and202 = and i32 %conv201, 255, !dbg !1389
  %conv203 = trunc i32 %and202 to i8, !dbg !1390
  %idxprom204 = zext i8 %conv203 to i64, !dbg !1391
  %arrayidx205 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom204, !dbg !1391
  %123 = load i32, i32* %arrayidx205, align 4, !dbg !1391, !tbaa !998
  %and206 = and i32 %123, 3, !dbg !1392
  %tobool207 = icmp ne i32 %and206, 0, !dbg !1392
  br i1 %tobool207, label %if.end.227, label %land.lhs.true.208, !dbg !1393

land.lhs.true.208:                                ; preds = %land.lhs.true.197
  %124 = load i8*, i8** %format.addr, align 8, !dbg !1394, !tbaa !981
  %125 = load i8, i8* %124, align 1, !dbg !1395, !tbaa !1064
  %conv209 = sext i8 %125 to i32, !dbg !1395
  %cmp210 = icmp ne i32 %conv209, 40, !dbg !1396
  br i1 %cmp210, label %land.lhs.true.212, label %if.end.227, !dbg !1397

land.lhs.true.212:                                ; preds = %land.lhs.true.208
  %126 = load i8*, i8** %format.addr, align 8, !dbg !1398, !tbaa !981
  %127 = load i8, i8* %126, align 1, !dbg !1399, !tbaa !1064
  %conv213 = sext i8 %127 to i32, !dbg !1399
  %cmp214 = icmp ne i32 %conv213, 124, !dbg !1400
  br i1 %cmp214, label %land.lhs.true.216, label %if.end.227, !dbg !1401

land.lhs.true.216:                                ; preds = %land.lhs.true.212
  %128 = load i8*, i8** %format.addr, align 8, !dbg !1402, !tbaa !981
  %129 = load i8, i8* %128, align 1, !dbg !1403, !tbaa !1064
  %conv217 = sext i8 %129 to i32, !dbg !1403
  %cmp218 = icmp ne i32 %conv217, 58, !dbg !1404
  br i1 %cmp218, label %land.lhs.true.220, label %if.end.227, !dbg !1405

land.lhs.true.220:                                ; preds = %land.lhs.true.216
  %130 = load i8*, i8** %format.addr, align 8, !dbg !1406, !tbaa !981
  %131 = load i8, i8* %130, align 1, !dbg !1408, !tbaa !1064
  %conv221 = sext i8 %131 to i32, !dbg !1408
  %cmp222 = icmp ne i32 %conv221, 59, !dbg !1409
  br i1 %cmp222, label %if.then.224, label %if.end.227, !dbg !1410

if.then.224:                                      ; preds = %land.lhs.true.220
  %132 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1411, !tbaa !981
  %133 = load i8*, i8** %formatsave, align 8, !dbg !1413, !tbaa !981
  %call225 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %132, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i32 0, i32 0), i8* %133), !dbg !1414
  %call226 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist), !dbg !1415
  store i32 %call226, i32* %retval, !dbg !1416
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1416

if.end.227:                                       ; preds = %land.lhs.true.220, %land.lhs.true.216, %land.lhs.true.212, %land.lhs.true.208, %land.lhs.true.197, %for.end
  %call228 = call i32 @cleanreturn(i32 1, %struct.freelist_t* %freelist), !dbg !1417
  store i32 %call228, i32* %retval, !dbg !1418
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1418

cleanup:                                          ; preds = %if.end.227, %if.then.224, %if.then.189, %if.end.173, %if.then.122, %if.else.116, %if.end.111, %if.then.109, %cond.end.96, %cond.end.76, %if.then.70, %if.then.58
  %134 = bitcast %struct.freelist_t* %freelist to i8*, !dbg !1419
  call void @llvm.lifetime.end(i64 16, i8* %134) #2, !dbg !1419
  %135 = bitcast [8 x %struct.freelistentry_t]* %static_entries to i8*, !dbg !1419
  call void @llvm.lifetime.end(i64 128, i8* %135) #2, !dbg !1419
  %136 = bitcast i32* %compat to i8*, !dbg !1419
  call void @llvm.lifetime.end(i64 4, i8* %136) #2, !dbg !1419
  %137 = bitcast i8** %msg to i8*, !dbg !1419
  call void @llvm.lifetime.end(i64 8, i8* %137) #2, !dbg !1419
  %138 = bitcast i64* %len to i8*, !dbg !1419
  call void @llvm.lifetime.end(i64 8, i8* %138) #2, !dbg !1419
  %139 = bitcast i64* %i to i8*, !dbg !1419
  call void @llvm.lifetime.end(i64 8, i8* %139) #2, !dbg !1419
  %140 = bitcast i8** %formatsave to i8*, !dbg !1419
  call void @llvm.lifetime.end(i64 8, i8* %140) #2, !dbg !1419
  %141 = bitcast i32* %endfmt to i8*, !dbg !1419
  call void @llvm.lifetime.end(i64 4, i8* %141) #2, !dbg !1419
  %142 = bitcast i32* %level to i8*, !dbg !1419
  call void @llvm.lifetime.end(i64 4, i8* %142) #2, !dbg !1419
  %143 = bitcast i32* %max to i8*, !dbg !1419
  call void @llvm.lifetime.end(i64 4, i8* %143) #2, !dbg !1419
  %144 = bitcast i32* %min to i8*, !dbg !1419
  call void @llvm.lifetime.end(i64 4, i8* %144) #2, !dbg !1419
  %145 = bitcast i8** %message to i8*, !dbg !1419
  call void @llvm.lifetime.end(i64 8, i8* %145) #2, !dbg !1419
  %146 = bitcast i8** %fname to i8*, !dbg !1419
  call void @llvm.lifetime.end(i64 8, i8* %146) #2, !dbg !1419
  %147 = bitcast [32 x i32]* %levels to i8*, !dbg !1419
  call void @llvm.lifetime.end(i64 128, i8* %147) #2, !dbg !1419
  %148 = bitcast [256 x i8]* %msgbuf to i8*, !dbg !1419
  call void @llvm.lifetime.end(i64 256, i8* %148) #2, !dbg !1419
  %149 = load i32, i32* %retval, !dbg !1419
  ret i32 %149, !dbg !1419
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @_PyArg_Parse_SizeT(%struct._object* %args, i8* %format, ...) #0 {
entry:
  %args.addr = alloca %struct._object*, align 8
  %format.addr = alloca i8*, align 8
  %retval1 = alloca i32, align 4
  %va = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !466, metadata !985), !dbg !1420
  store i8* %format, i8** %format.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !467, metadata !985), !dbg !1421
  %0 = bitcast i32* %retval1 to i8*, !dbg !1422
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !1422
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !468, metadata !985), !dbg !1423
  %1 = bitcast [1 x %struct.__va_list_tag]* %va to i8*, !dbg !1424
  call void @llvm.lifetime.start(i64 24, i8* %1) #2, !dbg !1424
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %va, metadata !469, metadata !985), !dbg !1425
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0, !dbg !1426
  %arraydecay2 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !1427
  call void @llvm.va_start(i8* %arraydecay2), !dbg !1427
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1428, !tbaa !981
  %3 = load i8*, i8** %format.addr, align 8, !dbg !1429, !tbaa !981
  %call = call i32 @vgetargs1(%struct._object* %2, i8* %3, [1 x %struct.__va_list_tag]* %va, i32 3), !dbg !1430
  store i32 %call, i32* %retval1, align 4, !dbg !1431, !tbaa !998
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0, !dbg !1432
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !1433
  call void @llvm.va_end(i8* %arraydecay34), !dbg !1433
  %4 = load i32, i32* %retval1, align 4, !dbg !1434, !tbaa !998
  %5 = bitcast [1 x %struct.__va_list_tag]* %va to i8*, !dbg !1435
  call void @llvm.lifetime.end(i64 24, i8* %5) #2, !dbg !1435
  %6 = bitcast i32* %retval1 to i8*, !dbg !1435
  call void @llvm.lifetime.end(i64 4, i8* %6) #2, !dbg !1435
  ret i32 %4, !dbg !1436
}

; Function Attrs: nounwind uwtable
define i32 @PyArg_ParseTuple(%struct._object* %args, i8* %format, ...) #0 {
entry:
  %args.addr = alloca %struct._object*, align 8
  %format.addr = alloca i8*, align 8
  %retval1 = alloca i32, align 4
  %va = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !472, metadata !985), !dbg !1437
  store i8* %format, i8** %format.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !473, metadata !985), !dbg !1438
  %0 = bitcast i32* %retval1 to i8*, !dbg !1439
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !1439
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !474, metadata !985), !dbg !1440
  %1 = bitcast [1 x %struct.__va_list_tag]* %va to i8*, !dbg !1441
  call void @llvm.lifetime.start(i64 24, i8* %1) #2, !dbg !1441
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %va, metadata !475, metadata !985), !dbg !1442
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0, !dbg !1443
  %arraydecay2 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !1444
  call void @llvm.va_start(i8* %arraydecay2), !dbg !1444
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1445, !tbaa !981
  %3 = load i8*, i8** %format.addr, align 8, !dbg !1446, !tbaa !981
  %call = call i32 @vgetargs1(%struct._object* %2, i8* %3, [1 x %struct.__va_list_tag]* %va, i32 0), !dbg !1447
  store i32 %call, i32* %retval1, align 4, !dbg !1448, !tbaa !998
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0, !dbg !1449
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !1450
  call void @llvm.va_end(i8* %arraydecay34), !dbg !1450
  %4 = load i32, i32* %retval1, align 4, !dbg !1451, !tbaa !998
  %5 = bitcast [1 x %struct.__va_list_tag]* %va to i8*, !dbg !1452
  call void @llvm.lifetime.end(i64 24, i8* %5) #2, !dbg !1452
  %6 = bitcast i32* %retval1 to i8*, !dbg !1452
  call void @llvm.lifetime.end(i64 4, i8* %6) #2, !dbg !1452
  ret i32 %4, !dbg !1453
}

; Function Attrs: nounwind uwtable
define i32 @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* %format, ...) #0 {
entry:
  %args.addr = alloca %struct._object*, align 8
  %format.addr = alloca i8*, align 8
  %retval1 = alloca i32, align 4
  %va = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !478, metadata !985), !dbg !1454
  store i8* %format, i8** %format.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !479, metadata !985), !dbg !1455
  %0 = bitcast i32* %retval1 to i8*, !dbg !1456
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !1456
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !480, metadata !985), !dbg !1457
  %1 = bitcast [1 x %struct.__va_list_tag]* %va to i8*, !dbg !1458
  call void @llvm.lifetime.start(i64 24, i8* %1) #2, !dbg !1458
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %va, metadata !481, metadata !985), !dbg !1459
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0, !dbg !1460
  %arraydecay2 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !1461
  call void @llvm.va_start(i8* %arraydecay2), !dbg !1461
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1462, !tbaa !981
  %3 = load i8*, i8** %format.addr, align 8, !dbg !1463, !tbaa !981
  %call = call i32 @vgetargs1(%struct._object* %2, i8* %3, [1 x %struct.__va_list_tag]* %va, i32 2), !dbg !1464
  store i32 %call, i32* %retval1, align 4, !dbg !1465, !tbaa !998
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0, !dbg !1466
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !1467
  call void @llvm.va_end(i8* %arraydecay34), !dbg !1467
  %4 = load i32, i32* %retval1, align 4, !dbg !1468, !tbaa !998
  %5 = bitcast [1 x %struct.__va_list_tag]* %va to i8*, !dbg !1469
  call void @llvm.lifetime.end(i64 24, i8* %5) #2, !dbg !1469
  %6 = bitcast i32* %retval1 to i8*, !dbg !1469
  call void @llvm.lifetime.end(i64 4, i8* %6) #2, !dbg !1469
  ret i32 %4, !dbg !1470
}

; Function Attrs: nounwind uwtable
define i32 @PyArg_VaParse(%struct._object* %args, i8* %format, %struct.__va_list_tag* %va) #0 {
entry:
  %args.addr = alloca %struct._object*, align 8
  %format.addr = alloca i8*, align 8
  %va.addr = alloca %struct.__va_list_tag*, align 8
  %lva = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !487, metadata !985), !dbg !1471
  store i8* %format, i8** %format.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !488, metadata !985), !dbg !1472
  store %struct.__va_list_tag* %va, %struct.__va_list_tag** %va.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %va.addr, metadata !489, metadata !985), !dbg !1473
  %0 = bitcast [1 x %struct.__va_list_tag]* %lva to i8*, !dbg !1474
  call void @llvm.lifetime.start(i64 24, i8* %0) #2, !dbg !1474
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %lva, metadata !490, metadata !985), !dbg !1475
  %1 = bitcast [1 x %struct.__va_list_tag]* %lva to i8*, !dbg !1476
  %2 = load %struct.__va_list_tag*, %struct.__va_list_tag** %va.addr, align 8, !dbg !1477, !tbaa !981
  %3 = bitcast %struct.__va_list_tag* %2 to i8*, !dbg !1476
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %3, i64 24, i32 8, i1 false), !dbg !1476
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1478, !tbaa !981
  %5 = load i8*, i8** %format.addr, align 8, !dbg !1479, !tbaa !981
  %call = call i32 @vgetargs1(%struct._object* %4, i8* %5, [1 x %struct.__va_list_tag]* %lva, i32 0), !dbg !1480
  %6 = bitcast [1 x %struct.__va_list_tag]* %lva to i8*, !dbg !1481
  call void @llvm.lifetime.end(i64 24, i8* %6) #2, !dbg !1481
  ret i32 %call, !dbg !1482
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @_PyArg_VaParse_SizeT(%struct._object* %args, i8* %format, %struct.__va_list_tag* %va) #0 {
entry:
  %args.addr = alloca %struct._object*, align 8
  %format.addr = alloca i8*, align 8
  %va.addr = alloca %struct.__va_list_tag*, align 8
  %lva = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !495, metadata !985), !dbg !1483
  store i8* %format, i8** %format.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !496, metadata !985), !dbg !1484
  store %struct.__va_list_tag* %va, %struct.__va_list_tag** %va.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %va.addr, metadata !497, metadata !985), !dbg !1485
  %0 = bitcast [1 x %struct.__va_list_tag]* %lva to i8*, !dbg !1486
  call void @llvm.lifetime.start(i64 24, i8* %0) #2, !dbg !1486
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %lva, metadata !498, metadata !985), !dbg !1487
  %1 = bitcast [1 x %struct.__va_list_tag]* %lva to i8*, !dbg !1488
  %2 = load %struct.__va_list_tag*, %struct.__va_list_tag** %va.addr, align 8, !dbg !1489, !tbaa !981
  %3 = bitcast %struct.__va_list_tag* %2 to i8*, !dbg !1488
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %3, i64 24, i32 8, i1 false), !dbg !1488
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1490, !tbaa !981
  %5 = load i8*, i8** %format.addr, align 8, !dbg !1491, !tbaa !981
  %call = call i32 @vgetargs1(%struct._object* %4, i8* %5, [1 x %struct.__va_list_tag]* %lva, i32 2), !dbg !1492
  %6 = bitcast [1 x %struct.__va_list_tag]* %lva to i8*, !dbg !1493
  call void @llvm.lifetime.end(i64 24, i8* %6) #2, !dbg !1493
  ret i32 %call, !dbg !1494
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !503, metadata !985), !dbg !1495
  store %struct._object* %keywords, %struct._object** %keywords.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct._object** %keywords.addr, metadata !504, metadata !985), !dbg !1496
  store i8* %format, i8** %format.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !505, metadata !985), !dbg !1497
  store i8** %kwlist, i8*** %kwlist.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8*** %kwlist.addr, metadata !506, metadata !985), !dbg !1498
  %0 = bitcast i32* %retval1 to i8*, !dbg !1499
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !1499
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !507, metadata !985), !dbg !1500
  %1 = bitcast [1 x %struct.__va_list_tag]* %va to i8*, !dbg !1501
  call void @llvm.lifetime.start(i64 24, i8* %1) #2, !dbg !1501
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %va, metadata !508, metadata !985), !dbg !1502
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1503, !tbaa !981
  %cmp = icmp eq %struct._object* %2, null, !dbg !1505
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1506

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1507, !tbaa !981
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !1509
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1509, !tbaa !1259
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19, !dbg !1510
  %5 = load i64, i64* %tp_flags, align 8, !dbg !1510, !tbaa !1263
  %and = and i64 %5, 67108864, !dbg !1511
  %cmp2 = icmp ne i64 %and, 0, !dbg !1512
  br i1 %cmp2, label %lor.lhs.false.3, label %if.then, !dbg !1513

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %keywords.addr, align 8, !dbg !1514, !tbaa !981
  %cmp4 = icmp ne %struct._object* %6, null, !dbg !1515
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false.9, !dbg !1516

land.lhs.true:                                    ; preds = %lor.lhs.false.3
  %7 = load %struct._object*, %struct._object** %keywords.addr, align 8, !dbg !1517, !tbaa !981
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !1518
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8, !dbg !1518, !tbaa !1259
  %tp_flags6 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 19, !dbg !1519
  %9 = load i64, i64* %tp_flags6, align 8, !dbg !1519, !tbaa !1263
  %and7 = and i64 %9, 536870912, !dbg !1520
  %cmp8 = icmp ne i64 %and7, 0, !dbg !1521
  br i1 %cmp8, label %lor.lhs.false.9, label %if.then, !dbg !1522

lor.lhs.false.9:                                  ; preds = %land.lhs.true, %lor.lhs.false.3
  %10 = load i8*, i8** %format.addr, align 8, !dbg !1523, !tbaa !981
  %cmp10 = icmp eq i8* %10, null, !dbg !1524
  br i1 %cmp10, label %if.then, label %lor.lhs.false.11, !dbg !1525

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.9
  %11 = load i8**, i8*** %kwlist.addr, align 8, !dbg !1526, !tbaa !981
  %cmp12 = icmp eq i8** %11, null, !dbg !1527
  br i1 %cmp12, label %if.then, label %if.end, !dbg !1528

if.then:                                          ; preds = %lor.lhs.false.11, %lor.lhs.false.9, %land.lhs.true, %lor.lhs.false, %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1331), !dbg !1529
  store i32 0, i32* %retval, !dbg !1531
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1531

if.end:                                           ; preds = %lor.lhs.false.11
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0, !dbg !1532
  %arraydecay13 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !1533
  call void @llvm.va_start(i8* %arraydecay13), !dbg !1533
  %12 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1534, !tbaa !981
  %13 = load %struct._object*, %struct._object** %keywords.addr, align 8, !dbg !1535, !tbaa !981
  %14 = load i8*, i8** %format.addr, align 8, !dbg !1536, !tbaa !981
  %15 = load i8**, i8*** %kwlist.addr, align 8, !dbg !1537, !tbaa !981
  %call = call i32 @vgetargskeywords(%struct._object* %12, %struct._object* %13, i8* %14, i8** %15, [1 x %struct.__va_list_tag]* %va, i32 0), !dbg !1538
  store i32 %call, i32* %retval1, align 4, !dbg !1539, !tbaa !998
  %arraydecay14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0, !dbg !1540
  %arraydecay1415 = bitcast %struct.__va_list_tag* %arraydecay14 to i8*, !dbg !1541
  call void @llvm.va_end(i8* %arraydecay1415), !dbg !1541
  %16 = load i32, i32* %retval1, align 4, !dbg !1542, !tbaa !998
  store i32 %16, i32* %retval, !dbg !1543
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1543

cleanup:                                          ; preds = %if.end, %if.then
  %17 = bitcast [1 x %struct.__va_list_tag]* %va to i8*, !dbg !1544
  call void @llvm.lifetime.end(i64 24, i8* %17) #2, !dbg !1544
  %18 = bitcast i32* %retval1 to i8*, !dbg !1544
  call void @llvm.lifetime.end(i64 4, i8* %18) #2, !dbg !1544
  %19 = load i32, i32* %retval, !dbg !1544
  ret i32 %19, !dbg !1544
}

declare void @_PyErr_BadInternalCall(i8*, i32) #3

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
  %cleanup.dest.slot = alloca i32
  %key = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %pos = alloca i64, align 8
  %match = alloca i32, align 4
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !938, metadata !985), !dbg !1545
  store %struct._object* %keywords, %struct._object** %keywords.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct._object** %keywords.addr, metadata !939, metadata !985), !dbg !1546
  store i8* %format, i8** %format.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !940, metadata !985), !dbg !1547
  store i8** %kwlist, i8*** %kwlist.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8*** %kwlist.addr, metadata !941, metadata !985), !dbg !1548
  store [1 x %struct.__va_list_tag]* %p_va, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]** %p_va.addr, metadata !942, metadata !985), !dbg !1549
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !998
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !943, metadata !985), !dbg !1550
  %0 = bitcast [512 x i8]* %msgbuf to i8*, !dbg !1551
  call void @llvm.lifetime.start(i64 512, i8* %0) #2, !dbg !1551
  call void @llvm.dbg.declare(metadata [512 x i8]* %msgbuf, metadata !944, metadata !985), !dbg !1552
  %1 = bitcast [32 x i32]* %levels to i8*, !dbg !1553
  call void @llvm.lifetime.start(i64 128, i8* %1) #2, !dbg !1553
  call void @llvm.dbg.declare(metadata [32 x i32]* %levels, metadata !945, metadata !985), !dbg !1554
  %2 = bitcast i8** %fname to i8*, !dbg !1555
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1555
  call void @llvm.dbg.declare(metadata i8** %fname, metadata !946, metadata !985), !dbg !1556
  %3 = bitcast i8** %msg to i8*, !dbg !1555
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1555
  call void @llvm.dbg.declare(metadata i8** %msg, metadata !947, metadata !985), !dbg !1557
  %4 = bitcast i8** %custom_msg to i8*, !dbg !1555
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1555
  call void @llvm.dbg.declare(metadata i8** %custom_msg, metadata !948, metadata !985), !dbg !1558
  %5 = bitcast i8** %keyword to i8*, !dbg !1555
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !1555
  call void @llvm.dbg.declare(metadata i8** %keyword, metadata !949, metadata !985), !dbg !1559
  %6 = bitcast i32* %min to i8*, !dbg !1560
  call void @llvm.lifetime.start(i64 4, i8* %6) #2, !dbg !1560
  call void @llvm.dbg.declare(metadata i32* %min, metadata !950, metadata !985), !dbg !1561
  store i32 2147483647, i32* %min, align 4, !dbg !1561, !tbaa !998
  %7 = bitcast i32* %max to i8*, !dbg !1562
  call void @llvm.lifetime.start(i64 4, i8* %7) #2, !dbg !1562
  call void @llvm.dbg.declare(metadata i32* %max, metadata !951, metadata !985), !dbg !1563
  store i32 2147483647, i32* %max, align 4, !dbg !1563, !tbaa !998
  %8 = bitcast i32* %i to i8*, !dbg !1564
  call void @llvm.lifetime.start(i64 4, i8* %8) #2, !dbg !1564
  call void @llvm.dbg.declare(metadata i32* %i, metadata !952, metadata !985), !dbg !1565
  %9 = bitcast i32* %len to i8*, !dbg !1564
  call void @llvm.lifetime.start(i64 4, i8* %9) #2, !dbg !1564
  call void @llvm.dbg.declare(metadata i32* %len, metadata !953, metadata !985), !dbg !1566
  %10 = bitcast i64* %nargs to i8*, !dbg !1567
  call void @llvm.lifetime.start(i64 8, i8* %10) #2, !dbg !1567
  call void @llvm.dbg.declare(metadata i64* %nargs, metadata !954, metadata !985), !dbg !1568
  %11 = bitcast i64* %nkeywords to i8*, !dbg !1567
  call void @llvm.lifetime.start(i64 8, i8* %11) #2, !dbg !1567
  call void @llvm.dbg.declare(metadata i64* %nkeywords, metadata !955, metadata !985), !dbg !1569
  %12 = bitcast %struct._object** %current_arg to i8*, !dbg !1570
  call void @llvm.lifetime.start(i64 8, i8* %12) #2, !dbg !1570
  call void @llvm.dbg.declare(metadata %struct._object** %current_arg, metadata !956, metadata !985), !dbg !1571
  %13 = bitcast [8 x %struct.freelistentry_t]* %static_entries to i8*, !dbg !1572
  call void @llvm.lifetime.start(i64 128, i8* %13) #2, !dbg !1572
  call void @llvm.dbg.declare(metadata [8 x %struct.freelistentry_t]* %static_entries, metadata !957, metadata !985), !dbg !1573
  %14 = bitcast %struct.freelist_t* %freelist to i8*, !dbg !1574
  call void @llvm.lifetime.start(i64 16, i8* %14) #2, !dbg !1574
  call void @llvm.dbg.declare(metadata %struct.freelist_t* %freelist, metadata !958, metadata !985), !dbg !1575
  %arraydecay = getelementptr inbounds [8 x %struct.freelistentry_t], [8 x %struct.freelistentry_t]* %static_entries, i32 0, i32 0, !dbg !1576
  %entries = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i32 0, i32 0, !dbg !1577
  store %struct.freelistentry_t* %arraydecay, %struct.freelistentry_t** %entries, align 8, !dbg !1578, !tbaa !1044
  %first_available = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i32 0, i32 1, !dbg !1579
  store i32 0, i32* %first_available, align 4, !dbg !1580, !tbaa !1048
  %entries_malloced = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i32 0, i32 2, !dbg !1581
  store i32 0, i32* %entries_malloced, align 4, !dbg !1582, !tbaa !1051
  %15 = load i8*, i8** %format.addr, align 8, !dbg !1583, !tbaa !981
  %call = call i8* @strchr(i8* %15, i32 58) #2, !dbg !1584
  store i8* %call, i8** %fname, align 8, !dbg !1585, !tbaa !981
  %16 = load i8*, i8** %fname, align 8, !dbg !1586, !tbaa !981
  %tobool = icmp ne i8* %16, null, !dbg !1586
  br i1 %tobool, label %if.then, label %if.else, !dbg !1588

if.then:                                          ; preds = %entry
  %17 = load i8*, i8** %fname, align 8, !dbg !1589, !tbaa !981
  %incdec.ptr = getelementptr i8, i8* %17, i32 1, !dbg !1589
  store i8* %incdec.ptr, i8** %fname, align 8, !dbg !1589, !tbaa !981
  store i8* null, i8** %custom_msg, align 8, !dbg !1591, !tbaa !981
  br label %if.end.5, !dbg !1592

if.else:                                          ; preds = %entry
  %18 = load i8*, i8** %format.addr, align 8, !dbg !1593, !tbaa !981
  %call1 = call i8* @strchr(i8* %18, i32 59) #2, !dbg !1595
  store i8* %call1, i8** %custom_msg, align 8, !dbg !1596, !tbaa !981
  %19 = load i8*, i8** %custom_msg, align 8, !dbg !1597, !tbaa !981
  %tobool2 = icmp ne i8* %19, null, !dbg !1597
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !1599

if.then.3:                                        ; preds = %if.else
  %20 = load i8*, i8** %custom_msg, align 8, !dbg !1600, !tbaa !981
  %incdec.ptr4 = getelementptr i8, i8* %20, i32 1, !dbg !1600
  store i8* %incdec.ptr4, i8** %custom_msg, align 8, !dbg !1600, !tbaa !981
  br label %if.end, !dbg !1601

if.end:                                           ; preds = %if.then.3, %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  store i32 0, i32* %len, align 4, !dbg !1602, !tbaa !998
  br label %for.cond, !dbg !1604

for.cond:                                         ; preds = %for.inc, %if.end.5
  %21 = load i32, i32* %len, align 4, !dbg !1605, !tbaa !998
  %idxprom = sext i32 %21 to i64, !dbg !1609
  %22 = load i8**, i8*** %kwlist.addr, align 8, !dbg !1609, !tbaa !981
  %arrayidx = getelementptr i8*, i8** %22, i64 %idxprom, !dbg !1609
  %23 = load i8*, i8** %arrayidx, align 8, !dbg !1609, !tbaa !981
  %tobool6 = icmp ne i8* %23, null, !dbg !1610
  br i1 %tobool6, label %for.body, label %for.end, !dbg !1610

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !1611

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %len, align 4, !dbg !1612, !tbaa !998
  %inc = add i32 %24, 1, !dbg !1612
  store i32 %inc, i32* %len, align 4, !dbg !1612, !tbaa !998
  br label %for.cond, !dbg !1613

for.end:                                          ; preds = %for.cond
  %25 = load i32, i32* %len, align 4, !dbg !1614, !tbaa !998
  %cmp = icmp sgt i32 %25, 8, !dbg !1616
  br i1 %cmp, label %if.then.7, label %if.end.20, !dbg !1617

if.then.7:                                        ; preds = %for.end
  %26 = load i32, i32* %len, align 4, !dbg !1618, !tbaa !998
  %conv = sext i32 %26 to i64, !dbg !1620
  %cmp8 = icmp ugt i64 %conv, 576460752303423487, !dbg !1621
  br i1 %cmp8, label %cond.true, label %cond.false, !dbg !1622

cond.true:                                        ; preds = %if.then.7
  br label %cond.end, !dbg !1623

cond.false:                                       ; preds = %if.then.7
  %27 = load i32, i32* %len, align 4, !dbg !1625, !tbaa !998
  %conv10 = sext i32 %27 to i64, !dbg !1627
  %mul = mul i64 %conv10, 16, !dbg !1628
  %call11 = call i8* @PyMem_Malloc(i64 %mul), !dbg !1629
  %28 = bitcast i8* %call11 to %struct.freelistentry_t*, !dbg !1630
  br label %cond.end, !dbg !1622

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.freelistentry_t* [ null, %cond.true ], [ %28, %cond.false ], !dbg !1622
  %entries12 = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i32 0, i32 0, !dbg !1631
  store %struct.freelistentry_t* %cond, %struct.freelistentry_t** %entries12, align 8, !dbg !1634, !tbaa !1044
  %entries13 = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i32 0, i32 0, !dbg !1635
  %29 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries13, align 8, !dbg !1635, !tbaa !1044
  %cmp14 = icmp eq %struct.freelistentry_t* %29, null, !dbg !1637
  br i1 %cmp14, label %if.then.16, label %if.end.18, !dbg !1638

if.then.16:                                       ; preds = %cond.end
  %call17 = call %struct._object* @PyErr_NoMemory(), !dbg !1639
  store i32 0, i32* %retval, !dbg !1641
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.226, !dbg !1641

if.end.18:                                        ; preds = %cond.end
  %entries_malloced19 = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i32 0, i32 2, !dbg !1642
  store i32 1, i32* %entries_malloced19, align 4, !dbg !1643, !tbaa !1051
  br label %if.end.20, !dbg !1644

if.end.20:                                        ; preds = %if.end.18, %for.end
  %30 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1645, !tbaa !981
  %31 = bitcast %struct._object* %30 to %struct.PyVarObject*, !dbg !1646
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %31, i32 0, i32 1, !dbg !1647
  %32 = load i64, i64* %ob_size, align 8, !dbg !1647, !tbaa !1277
  store i64 %32, i64* %nargs, align 8, !dbg !1648, !tbaa !1279
  %33 = load %struct._object*, %struct._object** %keywords.addr, align 8, !dbg !1649, !tbaa !981
  %cmp21 = icmp eq %struct._object* %33, null, !dbg !1650
  br i1 %cmp21, label %cond.true.23, label %cond.false.24, !dbg !1651

cond.true.23:                                     ; preds = %if.end.20
  br label %cond.end.26, !dbg !1652

cond.false.24:                                    ; preds = %if.end.20
  %34 = load %struct._object*, %struct._object** %keywords.addr, align 8, !dbg !1654, !tbaa !981
  %call25 = call i64 @PyDict_Size(%struct._object* %34), !dbg !1656
  br label %cond.end.26, !dbg !1651

cond.end.26:                                      ; preds = %cond.false.24, %cond.true.23
  %cond27 = phi i64 [ 0, %cond.true.23 ], [ %call25, %cond.false.24 ], !dbg !1651
  store i64 %cond27, i64* %nkeywords, align 8, !dbg !1657, !tbaa !1279
  %35 = load i64, i64* %nargs, align 8, !dbg !1660, !tbaa !1279
  %36 = load i64, i64* %nkeywords, align 8, !dbg !1662, !tbaa !1279
  %add = add i64 %35, %36, !dbg !1663
  %37 = load i32, i32* %len, align 4, !dbg !1664, !tbaa !998
  %conv28 = sext i32 %37 to i64, !dbg !1664
  %cmp29 = icmp sgt i64 %add, %conv28, !dbg !1665
  br i1 %cmp29, label %if.then.31, label %if.end.47, !dbg !1666

if.then.31:                                       ; preds = %cond.end.26
  %38 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1667, !tbaa !981
  %39 = load i8*, i8** %fname, align 8, !dbg !1669, !tbaa !981
  %cmp32 = icmp eq i8* %39, null, !dbg !1670
  br i1 %cmp32, label %cond.true.34, label %cond.false.35, !dbg !1671

cond.true.34:                                     ; preds = %if.then.31
  br label %cond.end.36, !dbg !1672

cond.false.35:                                    ; preds = %if.then.31
  %40 = load i8*, i8** %fname, align 8, !dbg !1674, !tbaa !981
  br label %cond.end.36, !dbg !1671

cond.end.36:                                      ; preds = %cond.false.35, %cond.true.34
  %cond37 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), %cond.true.34 ], [ %40, %cond.false.35 ], !dbg !1671
  %41 = load i8*, i8** %fname, align 8, !dbg !1676, !tbaa !981
  %cmp38 = icmp eq i8* %41, null, !dbg !1677
  %cond40 = select i1 %cmp38, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), !dbg !1678
  %42 = load i32, i32* %len, align 4, !dbg !1679, !tbaa !998
  %43 = load i32, i32* %len, align 4, !dbg !1680, !tbaa !998
  %cmp41 = icmp eq i32 %43, 1, !dbg !1681
  %cond43 = select i1 %cmp41, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), !dbg !1682
  %44 = load i64, i64* %nargs, align 8, !dbg !1683, !tbaa !1279
  %45 = load i64, i64* %nkeywords, align 8, !dbg !1684, !tbaa !1279
  %add44 = add i64 %44, %45, !dbg !1685
  %call45 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %38, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.74, i32 0, i32 0), i8* %cond37, i8* %cond40, i32 %42, i8* %cond43, i64 %add44), !dbg !1686
  %call46 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist), !dbg !1687
  store i32 %call46, i32* %retval, !dbg !1688
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.226, !dbg !1688

if.end.47:                                        ; preds = %cond.end.26
  store i32 0, i32* %i, align 4, !dbg !1689, !tbaa !998
  br label %for.cond.48, !dbg !1691

for.cond.48:                                      ; preds = %for.inc.165, %if.end.47
  %46 = load i32, i32* %i, align 4, !dbg !1692, !tbaa !998
  %47 = load i32, i32* %len, align 4, !dbg !1696, !tbaa !998
  %cmp49 = icmp slt i32 %46, %47, !dbg !1697
  br i1 %cmp49, label %for.body.51, label %for.end.167, !dbg !1698

for.body.51:                                      ; preds = %for.cond.48
  %48 = load i32, i32* %i, align 4, !dbg !1699, !tbaa !998
  %idxprom52 = sext i32 %48 to i64, !dbg !1701
  %49 = load i8**, i8*** %kwlist.addr, align 8, !dbg !1701, !tbaa !981
  %arrayidx53 = getelementptr i8*, i8** %49, i64 %idxprom52, !dbg !1701
  %50 = load i8*, i8** %arrayidx53, align 8, !dbg !1701, !tbaa !981
  store i8* %50, i8** %keyword, align 8, !dbg !1702, !tbaa !981
  %51 = load i8*, i8** %format.addr, align 8, !dbg !1703, !tbaa !981
  %52 = load i8, i8* %51, align 1, !dbg !1705, !tbaa !1064
  %conv54 = sext i8 %52 to i32, !dbg !1705
  %cmp55 = icmp eq i32 %conv54, 124, !dbg !1706
  br i1 %cmp55, label %if.then.57, label %if.end.69, !dbg !1707

if.then.57:                                       ; preds = %for.body.51
  %53 = load i32, i32* %min, align 4, !dbg !1708, !tbaa !998
  %cmp58 = icmp ne i32 %53, 2147483647, !dbg !1711
  br i1 %cmp58, label %if.then.60, label %if.end.62, !dbg !1712

if.then.60:                                       ; preds = %if.then.57
  %54 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1713, !tbaa !981
  call void @PyErr_SetString(%struct._object* %54, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.75, i32 0, i32 0)), !dbg !1715
  %call61 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist), !dbg !1716
  store i32 %call61, i32* %retval, !dbg !1717
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.226, !dbg !1717

if.end.62:                                        ; preds = %if.then.57
  %55 = load i32, i32* %i, align 4, !dbg !1718, !tbaa !998
  store i32 %55, i32* %min, align 4, !dbg !1719, !tbaa !998
  %56 = load i8*, i8** %format.addr, align 8, !dbg !1720, !tbaa !981
  %incdec.ptr63 = getelementptr i8, i8* %56, i32 1, !dbg !1720
  store i8* %incdec.ptr63, i8** %format.addr, align 8, !dbg !1720, !tbaa !981
  %57 = load i32, i32* %max, align 4, !dbg !1721, !tbaa !998
  %cmp64 = icmp ne i32 %57, 2147483647, !dbg !1723
  br i1 %cmp64, label %if.then.66, label %if.end.68, !dbg !1724

if.then.66:                                       ; preds = %if.end.62
  %58 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1725, !tbaa !981
  call void @PyErr_SetString(%struct._object* %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.76, i32 0, i32 0)), !dbg !1727
  %call67 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist), !dbg !1728
  store i32 %call67, i32* %retval, !dbg !1729
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.226, !dbg !1729

if.end.68:                                        ; preds = %if.end.62
  br label %if.end.69, !dbg !1730

if.end.69:                                        ; preds = %if.end.68, %for.body.51
  %59 = load i8*, i8** %format.addr, align 8, !dbg !1731, !tbaa !981
  %60 = load i8, i8* %59, align 1, !dbg !1733, !tbaa !1064
  %conv70 = sext i8 %60 to i32, !dbg !1733
  %cmp71 = icmp eq i32 %conv70, 36, !dbg !1734
  br i1 %cmp71, label %if.then.73, label %if.end.90, !dbg !1735

if.then.73:                                       ; preds = %if.end.69
  %61 = load i32, i32* %max, align 4, !dbg !1736, !tbaa !998
  %cmp74 = icmp ne i32 %61, 2147483647, !dbg !1739
  br i1 %cmp74, label %if.then.76, label %if.end.78, !dbg !1740

if.then.76:                                       ; preds = %if.then.73
  %62 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1741, !tbaa !981
  call void @PyErr_SetString(%struct._object* %62, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.77, i32 0, i32 0)), !dbg !1743
  %call77 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist), !dbg !1744
  store i32 %call77, i32* %retval, !dbg !1745
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.226, !dbg !1745

if.end.78:                                        ; preds = %if.then.73
  %63 = load i32, i32* %i, align 4, !dbg !1746, !tbaa !998
  store i32 %63, i32* %max, align 4, !dbg !1747, !tbaa !998
  %64 = load i8*, i8** %format.addr, align 8, !dbg !1748, !tbaa !981
  %incdec.ptr79 = getelementptr i8, i8* %64, i32 1, !dbg !1748
  store i8* %incdec.ptr79, i8** %format.addr, align 8, !dbg !1748, !tbaa !981
  %65 = load i32, i32* %max, align 4, !dbg !1749, !tbaa !998
  %conv80 = sext i32 %65 to i64, !dbg !1749
  %66 = load i64, i64* %nargs, align 8, !dbg !1751, !tbaa !1279
  %cmp81 = icmp slt i64 %conv80, %66, !dbg !1752
  br i1 %cmp81, label %if.then.83, label %if.end.89, !dbg !1753

if.then.83:                                       ; preds = %if.end.78
  %67 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1754, !tbaa !981
  %68 = load i32, i32* %min, align 4, !dbg !1756, !tbaa !998
  %cmp84 = icmp ne i32 %68, 2147483647, !dbg !1757
  %cond86 = select i1 %cmp84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), !dbg !1758
  %69 = load i32, i32* %max, align 4, !dbg !1759, !tbaa !998
  %70 = load i64, i64* %nargs, align 8, !dbg !1760, !tbaa !1279
  %call87 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %67, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.78, i32 0, i32 0), i8* %cond86, i32 %69, i64 %70), !dbg !1761
  %call88 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist), !dbg !1762
  store i32 %call88, i32* %retval, !dbg !1763
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.226, !dbg !1763

if.end.89:                                        ; preds = %if.end.78
  br label %if.end.90, !dbg !1764

if.end.90:                                        ; preds = %if.end.89, %if.end.69
  %71 = load i8*, i8** %format.addr, align 8, !dbg !1765, !tbaa !981
  %72 = load i8, i8* %71, align 1, !dbg !1767, !tbaa !1064
  %conv91 = sext i8 %72 to i32, !dbg !1767
  %cmp92 = icmp eq i32 %conv91, 0, !dbg !1768
  br i1 %cmp92, label %if.then.101, label %lor.lhs.false, !dbg !1769

lor.lhs.false:                                    ; preds = %if.end.90
  %73 = load i8*, i8** %format.addr, align 8, !dbg !1770, !tbaa !981
  %74 = load i8, i8* %73, align 1, !dbg !1772, !tbaa !1064
  %conv94 = sext i8 %74 to i32, !dbg !1772
  %cmp95 = icmp eq i32 %conv94, 59, !dbg !1773
  br i1 %cmp95, label %if.then.101, label %lor.lhs.false.97, !dbg !1774

lor.lhs.false.97:                                 ; preds = %lor.lhs.false
  %75 = load i8*, i8** %format.addr, align 8, !dbg !1775, !tbaa !981
  %76 = load i8, i8* %75, align 1, !dbg !1777, !tbaa !1064
  %conv98 = sext i8 %76 to i32, !dbg !1777
  %cmp99 = icmp eq i32 %conv98, 58, !dbg !1778
  br i1 %cmp99, label %if.then.101, label %if.end.104, !dbg !1779

if.then.101:                                      ; preds = %lor.lhs.false.97, %lor.lhs.false, %if.end.90
  %77 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1780, !tbaa !981
  %78 = load i32, i32* %len, align 4, !dbg !1782, !tbaa !998
  %79 = load i32, i32* %i, align 4, !dbg !1783, !tbaa !998
  %call102 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %77, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.79, i32 0, i32 0), i32 %78, i32 %79), !dbg !1784
  %call103 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist), !dbg !1785
  store i32 %call103, i32* %retval, !dbg !1786
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.226, !dbg !1786

if.end.104:                                       ; preds = %lor.lhs.false.97
  store %struct._object* null, %struct._object** %current_arg, align 8, !dbg !1787, !tbaa !981
  %80 = load i64, i64* %nkeywords, align 8, !dbg !1788, !tbaa !1279
  %tobool105 = icmp ne i64 %80, 0, !dbg !1788
  br i1 %tobool105, label %if.then.106, label %if.end.108, !dbg !1790

if.then.106:                                      ; preds = %if.end.104
  %81 = load %struct._object*, %struct._object** %keywords.addr, align 8, !dbg !1791, !tbaa !981
  %82 = load i8*, i8** %keyword, align 8, !dbg !1793, !tbaa !981
  %call107 = call %struct._object* @PyDict_GetItemString(%struct._object* %81, i8* %82), !dbg !1794
  store %struct._object* %call107, %struct._object** %current_arg, align 8, !dbg !1795, !tbaa !981
  br label %if.end.108, !dbg !1796

if.end.108:                                       ; preds = %if.then.106, %if.end.104
  %83 = load %struct._object*, %struct._object** %current_arg, align 8, !dbg !1797, !tbaa !981
  %tobool109 = icmp ne %struct._object* %83, null, !dbg !1797
  br i1 %tobool109, label %if.then.110, label %if.else.119, !dbg !1799

if.then.110:                                      ; preds = %if.end.108
  %84 = load i64, i64* %nkeywords, align 8, !dbg !1800, !tbaa !1279
  %dec = add i64 %84, -1, !dbg !1800
  store i64 %dec, i64* %nkeywords, align 8, !dbg !1800, !tbaa !1279
  %85 = load i32, i32* %i, align 4, !dbg !1802, !tbaa !998
  %conv111 = sext i32 %85 to i64, !dbg !1802
  %86 = load i64, i64* %nargs, align 8, !dbg !1804, !tbaa !1279
  %cmp112 = icmp slt i64 %conv111, %86, !dbg !1805
  br i1 %cmp112, label %if.then.114, label %if.end.118, !dbg !1806

if.then.114:                                      ; preds = %if.then.110
  %87 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1807, !tbaa !981
  %88 = load i8*, i8** %keyword, align 8, !dbg !1809, !tbaa !981
  %89 = load i32, i32* %i, align 4, !dbg !1810, !tbaa !998
  %add115 = add i32 %89, 1, !dbg !1811
  %call116 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %87, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.80, i32 0, i32 0), i8* %88, i32 %add115), !dbg !1812
  %call117 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist), !dbg !1813
  store i32 %call117, i32* %retval, !dbg !1814
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.226, !dbg !1814

if.end.118:                                       ; preds = %if.then.110
  br label %if.end.134, !dbg !1815

if.else.119:                                      ; preds = %if.end.108
  %90 = load i64, i64* %nkeywords, align 8, !dbg !1816, !tbaa !1279
  %tobool120 = icmp ne i64 %90, 0, !dbg !1816
  br i1 %tobool120, label %land.lhs.true, label %if.else.125, !dbg !1818

land.lhs.true:                                    ; preds = %if.else.119
  %call121 = call %struct._object* @PyErr_Occurred(), !dbg !1819
  %tobool122 = icmp ne %struct._object* %call121, null, !dbg !1819
  br i1 %tobool122, label %if.then.123, label %if.else.125, !dbg !1821

if.then.123:                                      ; preds = %land.lhs.true
  %call124 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist), !dbg !1822
  store i32 %call124, i32* %retval, !dbg !1823
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.226, !dbg !1823

if.else.125:                                      ; preds = %land.lhs.true, %if.else.119
  %91 = load i32, i32* %i, align 4, !dbg !1824, !tbaa !998
  %conv126 = sext i32 %91 to i64, !dbg !1824
  %92 = load i64, i64* %nargs, align 8, !dbg !1826, !tbaa !1279
  %cmp127 = icmp slt i64 %conv126, %92, !dbg !1827
  br i1 %cmp127, label %if.then.129, label %if.end.132, !dbg !1828

if.then.129:                                      ; preds = %if.else.125
  %93 = load i32, i32* %i, align 4, !dbg !1829, !tbaa !998
  %idxprom130 = sext i32 %93 to i64, !dbg !1830
  %94 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1831, !tbaa !981
  %95 = bitcast %struct._object* %94 to %struct.PyTupleObject*, !dbg !1832
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %95, i32 0, i32 1, !dbg !1833
  %arrayidx131 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom130, !dbg !1830
  %96 = load %struct._object*, %struct._object** %arrayidx131, align 8, !dbg !1830, !tbaa !981
  store %struct._object* %96, %struct._object** %current_arg, align 8, !dbg !1834, !tbaa !981
  br label %if.end.132, !dbg !1835

if.end.132:                                       ; preds = %if.then.129, %if.else.125
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.end.118
  %97 = load %struct._object*, %struct._object** %current_arg, align 8, !dbg !1836, !tbaa !981
  %tobool135 = icmp ne %struct._object* %97, null, !dbg !1836
  br i1 %tobool135, label %if.then.136, label %if.end.147, !dbg !1838

if.then.136:                                      ; preds = %if.end.134
  %98 = load %struct._object*, %struct._object** %current_arg, align 8, !dbg !1839, !tbaa !981
  %99 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !1841, !tbaa !981
  %100 = load i32, i32* %flags.addr, align 4, !dbg !1842, !tbaa !998
  %arraydecay137 = getelementptr inbounds [32 x i32], [32 x i32]* %levels, i32 0, i32 0, !dbg !1843
  %arraydecay138 = getelementptr inbounds [512 x i8], [512 x i8]* %msgbuf, i32 0, i32 0, !dbg !1844
  %call139 = call i8* @convertitem(%struct._object* %98, i8** %format.addr, [1 x %struct.__va_list_tag]* %99, i32 %100, i32* %arraydecay137, i8* %arraydecay138, i64 512, %struct.freelist_t* %freelist), !dbg !1845
  store i8* %call139, i8** %msg, align 8, !dbg !1846, !tbaa !981
  %101 = load i8*, i8** %msg, align 8, !dbg !1847, !tbaa !981
  %tobool140 = icmp ne i8* %101, null, !dbg !1847
  br i1 %tobool140, label %if.then.141, label %if.end.146, !dbg !1849

if.then.141:                                      ; preds = %if.then.136
  %102 = load i32, i32* %i, align 4, !dbg !1850, !tbaa !998
  %add142 = add i32 %102, 1, !dbg !1852
  %conv143 = sext i32 %add142 to i64, !dbg !1850
  %103 = load i8*, i8** %msg, align 8, !dbg !1853, !tbaa !981
  %arraydecay144 = getelementptr inbounds [32 x i32], [32 x i32]* %levels, i32 0, i32 0, !dbg !1854
  %104 = load i8*, i8** %fname, align 8, !dbg !1855, !tbaa !981
  %105 = load i8*, i8** %custom_msg, align 8, !dbg !1856, !tbaa !981
  call void @seterror(i64 %conv143, i8* %103, i32* %arraydecay144, i8* %104, i8* %105), !dbg !1857
  %call145 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist), !dbg !1858
  store i32 %call145, i32* %retval, !dbg !1859
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.226, !dbg !1859

if.end.146:                                       ; preds = %if.then.136
  br label %for.inc.165, !dbg !1860

if.end.147:                                       ; preds = %if.end.134
  %106 = load i32, i32* %i, align 4, !dbg !1861, !tbaa !998
  %107 = load i32, i32* %min, align 4, !dbg !1863, !tbaa !998
  %cmp148 = icmp slt i32 %106, %107, !dbg !1864
  br i1 %cmp148, label %if.then.150, label %if.end.154, !dbg !1865

if.then.150:                                      ; preds = %if.end.147
  %108 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1866, !tbaa !981
  %109 = load i8*, i8** %keyword, align 8, !dbg !1868, !tbaa !981
  %110 = load i32, i32* %i, align 4, !dbg !1869, !tbaa !998
  %add151 = add i32 %110, 1, !dbg !1870
  %call152 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %108, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.81, i32 0, i32 0), i8* %109, i32 %add151), !dbg !1871
  %call153 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist), !dbg !1872
  store i32 %call153, i32* %retval, !dbg !1873
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.226, !dbg !1873

if.end.154:                                       ; preds = %if.end.147
  %111 = load i64, i64* %nkeywords, align 8, !dbg !1874, !tbaa !1279
  %tobool155 = icmp ne i64 %111, 0, !dbg !1874
  br i1 %tobool155, label %if.end.158, label %if.then.156, !dbg !1876

if.then.156:                                      ; preds = %if.end.154
  %call157 = call i32 @cleanreturn(i32 1, %struct.freelist_t* %freelist), !dbg !1877
  store i32 %call157, i32* %retval, !dbg !1878
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.226, !dbg !1878

if.end.158:                                       ; preds = %if.end.154
  %112 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !1879, !tbaa !981
  %113 = load i32, i32* %flags.addr, align 4, !dbg !1880, !tbaa !998
  %call159 = call i8* @skipitem(i8** %format.addr, [1 x %struct.__va_list_tag]* %112, i32 %113), !dbg !1881
  store i8* %call159, i8** %msg, align 8, !dbg !1882, !tbaa !981
  %114 = load i8*, i8** %msg, align 8, !dbg !1883, !tbaa !981
  %tobool160 = icmp ne i8* %114, null, !dbg !1883
  br i1 %tobool160, label %if.then.161, label %if.end.164, !dbg !1885

if.then.161:                                      ; preds = %if.end.158
  %115 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1886, !tbaa !981
  %116 = load i8*, i8** %msg, align 8, !dbg !1888, !tbaa !981
  %117 = load i8*, i8** %format.addr, align 8, !dbg !1889, !tbaa !981
  %call162 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.82, i32 0, i32 0), i8* %116, i8* %117), !dbg !1890
  %call163 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist), !dbg !1891
  store i32 %call163, i32* %retval, !dbg !1892
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.226, !dbg !1892

if.end.164:                                       ; preds = %if.end.158
  br label %for.inc.165, !dbg !1893

for.inc.165:                                      ; preds = %if.end.164, %if.end.146
  %118 = load i32, i32* %i, align 4, !dbg !1894, !tbaa !998
  %inc166 = add i32 %118, 1, !dbg !1894
  store i32 %inc166, i32* %i, align 4, !dbg !1894, !tbaa !998
  br label %for.cond.48, !dbg !1895

for.end.167:                                      ; preds = %for.cond.48
  %119 = load i8*, i8** %format.addr, align 8, !dbg !1896, !tbaa !981
  %120 = load i8, i8* %119, align 1, !dbg !1898, !tbaa !1064
  %conv168 = sext i8 %120 to i32, !dbg !1898
  %cmp169 = icmp eq i32 %conv168, 0, !dbg !1899
  br i1 %cmp169, label %if.end.190, label %lor.lhs.false.171, !dbg !1900

lor.lhs.false.171:                                ; preds = %for.end.167
  %121 = load i8*, i8** %format.addr, align 8, !dbg !1901, !tbaa !981
  %122 = load i8, i8* %121, align 1, !dbg !1903, !tbaa !1064
  %conv172 = sext i8 %122 to i32, !dbg !1903
  %cmp173 = icmp eq i32 %conv172, 59, !dbg !1904
  br i1 %cmp173, label %if.end.190, label %lor.lhs.false.175, !dbg !1905

lor.lhs.false.175:                                ; preds = %lor.lhs.false.171
  %123 = load i8*, i8** %format.addr, align 8, !dbg !1906, !tbaa !981
  %124 = load i8, i8* %123, align 1, !dbg !1908, !tbaa !1064
  %conv176 = sext i8 %124 to i32, !dbg !1908
  %cmp177 = icmp eq i32 %conv176, 58, !dbg !1909
  br i1 %cmp177, label %if.end.190, label %land.lhs.true.179, !dbg !1910

land.lhs.true.179:                                ; preds = %lor.lhs.false.175
  %125 = load i8*, i8** %format.addr, align 8, !dbg !1911, !tbaa !981
  %126 = load i8, i8* %125, align 1, !dbg !1913, !tbaa !1064
  %conv180 = sext i8 %126 to i32, !dbg !1913
  %cmp181 = icmp ne i32 %conv180, 124, !dbg !1914
  br i1 %cmp181, label %land.lhs.true.183, label %if.end.190, !dbg !1915

land.lhs.true.183:                                ; preds = %land.lhs.true.179
  %127 = load i8*, i8** %format.addr, align 8, !dbg !1916, !tbaa !981
  %128 = load i8, i8* %127, align 1, !dbg !1918, !tbaa !1064
  %conv184 = sext i8 %128 to i32, !dbg !1918
  %cmp185 = icmp ne i32 %conv184, 36, !dbg !1919
  br i1 %cmp185, label %if.then.187, label %if.end.190, !dbg !1920

if.then.187:                                      ; preds = %land.lhs.true.183
  %129 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1921, !tbaa !981
  %130 = load i8*, i8** %format.addr, align 8, !dbg !1923, !tbaa !981
  %call188 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %129, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.83, i32 0, i32 0), i8* %130), !dbg !1924
  %call189 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist), !dbg !1925
  store i32 %call189, i32* %retval, !dbg !1926
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.226, !dbg !1926

if.end.190:                                       ; preds = %land.lhs.true.183, %land.lhs.true.179, %lor.lhs.false.175, %lor.lhs.false.171, %for.end.167
  %131 = load i64, i64* %nkeywords, align 8, !dbg !1927, !tbaa !1279
  %cmp191 = icmp sgt i64 %131, 0, !dbg !1928
  br i1 %cmp191, label %if.then.193, label %if.end.224, !dbg !1929

if.then.193:                                      ; preds = %if.end.190
  %132 = bitcast %struct._object** %key to i8*, !dbg !1930
  call void @llvm.lifetime.start(i64 8, i8* %132) #2, !dbg !1930
  call void @llvm.dbg.declare(metadata %struct._object** %key, metadata !959, metadata !985), !dbg !1931
  %133 = bitcast %struct._object** %value to i8*, !dbg !1930
  call void @llvm.lifetime.start(i64 8, i8* %133) #2, !dbg !1930
  call void @llvm.dbg.declare(metadata %struct._object** %value, metadata !962, metadata !985), !dbg !1932
  %134 = bitcast i64* %pos to i8*, !dbg !1933
  call void @llvm.lifetime.start(i64 8, i8* %134) #2, !dbg !1933
  call void @llvm.dbg.declare(metadata i64* %pos, metadata !963, metadata !985), !dbg !1934
  store i64 0, i64* %pos, align 8, !dbg !1934, !tbaa !1279
  br label %while.cond, !dbg !1935

while.cond:                                       ; preds = %cleanup.cont, %if.then.193
  %135 = load %struct._object*, %struct._object** %keywords.addr, align 8, !dbg !1936, !tbaa !981
  %call194 = call i32 @PyDict_Next(%struct._object* %135, i64* %pos, %struct._object** %key, %struct._object** %value), !dbg !1939
  %tobool195 = icmp ne i32 %call194, 0, !dbg !1935
  br i1 %tobool195, label %while.body, label %while.end, !dbg !1935

while.body:                                       ; preds = %while.cond
  %136 = bitcast i32* %match to i8*, !dbg !1940
  call void @llvm.lifetime.start(i64 4, i8* %136) #2, !dbg !1940
  call void @llvm.dbg.declare(metadata i32* %match, metadata !964, metadata !985), !dbg !1941
  store i32 0, i32* %match, align 4, !dbg !1941, !tbaa !998
  %137 = load %struct._object*, %struct._object** %key, align 8, !dbg !1942, !tbaa !981
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %137, i32 0, i32 1, !dbg !1944
  %138 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1944, !tbaa !1259
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %138, i32 0, i32 19, !dbg !1945
  %139 = load i64, i64* %tp_flags, align 8, !dbg !1945, !tbaa !1263
  %and = and i64 %139, 268435456, !dbg !1946
  %cmp196 = icmp ne i64 %and, 0, !dbg !1947
  br i1 %cmp196, label %if.end.200, label %if.then.198, !dbg !1948

if.then.198:                                      ; preds = %while.body
  %140 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1949, !tbaa !981
  call void @PyErr_SetString(%struct._object* %140, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.84, i32 0, i32 0)), !dbg !1951
  %call199 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist), !dbg !1952
  store i32 %call199, i32* %retval, !dbg !1953
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1953

if.end.200:                                       ; preds = %while.body
  store i32 0, i32* %i, align 4, !dbg !1954, !tbaa !998
  br label %for.cond.201, !dbg !1956

for.cond.201:                                     ; preds = %for.inc.211, %if.end.200
  %141 = load i32, i32* %i, align 4, !dbg !1957, !tbaa !998
  %142 = load i32, i32* %len, align 4, !dbg !1961, !tbaa !998
  %cmp202 = icmp slt i32 %141, %142, !dbg !1962
  br i1 %cmp202, label %for.body.204, label %for.end.213, !dbg !1963

for.body.204:                                     ; preds = %for.cond.201
  %143 = load %struct._object*, %struct._object** %key, align 8, !dbg !1964, !tbaa !981
  %144 = load i32, i32* %i, align 4, !dbg !1967, !tbaa !998
  %idxprom205 = sext i32 %144 to i64, !dbg !1968
  %145 = load i8**, i8*** %kwlist.addr, align 8, !dbg !1968, !tbaa !981
  %arrayidx206 = getelementptr i8*, i8** %145, i64 %idxprom205, !dbg !1968
  %146 = load i8*, i8** %arrayidx206, align 8, !dbg !1968, !tbaa !981
  %call207 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %143, i8* %146), !dbg !1969
  %tobool208 = icmp ne i32 %call207, 0, !dbg !1969
  br i1 %tobool208, label %if.end.210, label %if.then.209, !dbg !1970

if.then.209:                                      ; preds = %for.body.204
  store i32 1, i32* %match, align 4, !dbg !1971, !tbaa !998
  br label %for.end.213, !dbg !1973

if.end.210:                                       ; preds = %for.body.204
  br label %for.inc.211, !dbg !1974

for.inc.211:                                      ; preds = %if.end.210
  %147 = load i32, i32* %i, align 4, !dbg !1975, !tbaa !998
  %inc212 = add i32 %147, 1, !dbg !1975
  store i32 %inc212, i32* %i, align 4, !dbg !1975, !tbaa !998
  br label %for.cond.201, !dbg !1976

for.end.213:                                      ; preds = %if.then.209, %for.cond.201
  %148 = load i32, i32* %match, align 4, !dbg !1977, !tbaa !998
  %tobool214 = icmp ne i32 %148, 0, !dbg !1977
  br i1 %tobool214, label %if.end.218, label %if.then.215, !dbg !1979

if.then.215:                                      ; preds = %for.end.213
  %149 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1980, !tbaa !981
  %150 = load %struct._object*, %struct._object** %key, align 8, !dbg !1982, !tbaa !981
  %call216 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %149, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.85, i32 0, i32 0), %struct._object* %150), !dbg !1983
  %call217 = call i32 @cleanreturn(i32 0, %struct.freelist_t* %freelist), !dbg !1984
  store i32 %call217, i32* %retval, !dbg !1985
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1985

if.end.218:                                       ; preds = %for.end.213
  store i32 0, i32* %cleanup.dest.slot, !dbg !1986
  br label %cleanup, !dbg !1986

cleanup:                                          ; preds = %if.end.218, %if.then.215, %if.then.198
  %151 = bitcast i32* %match to i8*, !dbg !1987
  call void @llvm.lifetime.end(i64 4, i8* %151) #2, !dbg !1987
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.219 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !1935

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %cleanup.dest.slot, !dbg !1988
  br label %cleanup.219, !dbg !1988

cleanup.219:                                      ; preds = %while.end, %cleanup
  %152 = bitcast i64* %pos to i8*, !dbg !1989
  call void @llvm.lifetime.end(i64 8, i8* %152) #2, !dbg !1989
  %153 = bitcast %struct._object** %value to i8*, !dbg !1989
  call void @llvm.lifetime.end(i64 8, i8* %153) #2, !dbg !1989
  %154 = bitcast %struct._object** %key to i8*, !dbg !1989
  call void @llvm.lifetime.end(i64 8, i8* %154) #2, !dbg !1989
  %cleanup.dest.222 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.222, label %cleanup.226 [
    i32 0, label %cleanup.cont.223
  ]

cleanup.cont.223:                                 ; preds = %cleanup.219
  br label %if.end.224, !dbg !1991

if.end.224:                                       ; preds = %cleanup.cont.223, %if.end.190
  %call225 = call i32 @cleanreturn(i32 1, %struct.freelist_t* %freelist), !dbg !1992
  store i32 %call225, i32* %retval, !dbg !1993
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.226, !dbg !1993

cleanup.226:                                      ; preds = %if.end.224, %cleanup.219, %if.then.187, %if.then.161, %if.then.156, %if.then.150, %if.then.141, %if.then.123, %if.then.114, %if.then.101, %if.then.83, %if.then.76, %if.then.66, %if.then.60, %cond.end.36, %if.then.16
  %155 = bitcast %struct.freelist_t* %freelist to i8*, !dbg !1994
  call void @llvm.lifetime.end(i64 16, i8* %155) #2, !dbg !1994
  %156 = bitcast [8 x %struct.freelistentry_t]* %static_entries to i8*, !dbg !1994
  call void @llvm.lifetime.end(i64 128, i8* %156) #2, !dbg !1994
  %157 = bitcast %struct._object** %current_arg to i8*, !dbg !1994
  call void @llvm.lifetime.end(i64 8, i8* %157) #2, !dbg !1994
  %158 = bitcast i64* %nkeywords to i8*, !dbg !1994
  call void @llvm.lifetime.end(i64 8, i8* %158) #2, !dbg !1994
  %159 = bitcast i64* %nargs to i8*, !dbg !1994
  call void @llvm.lifetime.end(i64 8, i8* %159) #2, !dbg !1994
  %160 = bitcast i32* %len to i8*, !dbg !1994
  call void @llvm.lifetime.end(i64 4, i8* %160) #2, !dbg !1994
  %161 = bitcast i32* %i to i8*, !dbg !1994
  call void @llvm.lifetime.end(i64 4, i8* %161) #2, !dbg !1994
  %162 = bitcast i32* %max to i8*, !dbg !1994
  call void @llvm.lifetime.end(i64 4, i8* %162) #2, !dbg !1994
  %163 = bitcast i32* %min to i8*, !dbg !1994
  call void @llvm.lifetime.end(i64 4, i8* %163) #2, !dbg !1994
  %164 = bitcast i8** %keyword to i8*, !dbg !1994
  call void @llvm.lifetime.end(i64 8, i8* %164) #2, !dbg !1994
  %165 = bitcast i8** %custom_msg to i8*, !dbg !1994
  call void @llvm.lifetime.end(i64 8, i8* %165) #2, !dbg !1994
  %166 = bitcast i8** %msg to i8*, !dbg !1994
  call void @llvm.lifetime.end(i64 8, i8* %166) #2, !dbg !1994
  %167 = bitcast i8** %fname to i8*, !dbg !1994
  call void @llvm.lifetime.end(i64 8, i8* %167) #2, !dbg !1994
  %168 = bitcast [32 x i32]* %levels to i8*, !dbg !1994
  call void @llvm.lifetime.end(i64 128, i8* %168) #2, !dbg !1994
  %169 = bitcast [512 x i8]* %msgbuf to i8*, !dbg !1994
  call void @llvm.lifetime.end(i64 512, i8* %169) #2, !dbg !1994
  %170 = load i32, i32* %retval, !dbg !1994
  ret i32 %170, !dbg !1994
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !511, metadata !985), !dbg !1995
  store %struct._object* %keywords, %struct._object** %keywords.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct._object** %keywords.addr, metadata !512, metadata !985), !dbg !1996
  store i8* %format, i8** %format.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !513, metadata !985), !dbg !1997
  store i8** %kwlist, i8*** %kwlist.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8*** %kwlist.addr, metadata !514, metadata !985), !dbg !1998
  %0 = bitcast i32* %retval1 to i8*, !dbg !1999
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !1999
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !515, metadata !985), !dbg !2000
  %1 = bitcast [1 x %struct.__va_list_tag]* %va to i8*, !dbg !2001
  call void @llvm.lifetime.start(i64 24, i8* %1) #2, !dbg !2001
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %va, metadata !516, metadata !985), !dbg !2002
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2003, !tbaa !981
  %cmp = icmp eq %struct._object* %2, null, !dbg !2005
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2006

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2007, !tbaa !981
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !2009
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2009, !tbaa !1259
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19, !dbg !2010
  %5 = load i64, i64* %tp_flags, align 8, !dbg !2010, !tbaa !1263
  %and = and i64 %5, 67108864, !dbg !2011
  %cmp2 = icmp ne i64 %and, 0, !dbg !2012
  br i1 %cmp2, label %lor.lhs.false.3, label %if.then, !dbg !2013

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %keywords.addr, align 8, !dbg !2014, !tbaa !981
  %cmp4 = icmp ne %struct._object* %6, null, !dbg !2015
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false.9, !dbg !2016

land.lhs.true:                                    ; preds = %lor.lhs.false.3
  %7 = load %struct._object*, %struct._object** %keywords.addr, align 8, !dbg !2017, !tbaa !981
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !2018
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8, !dbg !2018, !tbaa !1259
  %tp_flags6 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 19, !dbg !2019
  %9 = load i64, i64* %tp_flags6, align 8, !dbg !2019, !tbaa !1263
  %and7 = and i64 %9, 536870912, !dbg !2020
  %cmp8 = icmp ne i64 %and7, 0, !dbg !2021
  br i1 %cmp8, label %lor.lhs.false.9, label %if.then, !dbg !2022

lor.lhs.false.9:                                  ; preds = %land.lhs.true, %lor.lhs.false.3
  %10 = load i8*, i8** %format.addr, align 8, !dbg !2023, !tbaa !981
  %cmp10 = icmp eq i8* %10, null, !dbg !2024
  br i1 %cmp10, label %if.then, label %lor.lhs.false.11, !dbg !2025

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.9
  %11 = load i8**, i8*** %kwlist.addr, align 8, !dbg !2026, !tbaa !981
  %cmp12 = icmp eq i8** %11, null, !dbg !2027
  br i1 %cmp12, label %if.then, label %if.end, !dbg !2028

if.then:                                          ; preds = %lor.lhs.false.11, %lor.lhs.false.9, %land.lhs.true, %lor.lhs.false, %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1355), !dbg !2029
  store i32 0, i32* %retval, !dbg !2031
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2031

if.end:                                           ; preds = %lor.lhs.false.11
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0, !dbg !2032
  %arraydecay13 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !2033
  call void @llvm.va_start(i8* %arraydecay13), !dbg !2033
  %12 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2034, !tbaa !981
  %13 = load %struct._object*, %struct._object** %keywords.addr, align 8, !dbg !2035, !tbaa !981
  %14 = load i8*, i8** %format.addr, align 8, !dbg !2036, !tbaa !981
  %15 = load i8**, i8*** %kwlist.addr, align 8, !dbg !2037, !tbaa !981
  %call = call i32 @vgetargskeywords(%struct._object* %12, %struct._object* %13, i8* %14, i8** %15, [1 x %struct.__va_list_tag]* %va, i32 2), !dbg !2038
  store i32 %call, i32* %retval1, align 4, !dbg !2039, !tbaa !998
  %arraydecay14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0, !dbg !2040
  %arraydecay1415 = bitcast %struct.__va_list_tag* %arraydecay14 to i8*, !dbg !2041
  call void @llvm.va_end(i8* %arraydecay1415), !dbg !2041
  %16 = load i32, i32* %retval1, align 4, !dbg !2042, !tbaa !998
  store i32 %16, i32* %retval, !dbg !2043
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2043

cleanup:                                          ; preds = %if.end, %if.then
  %17 = bitcast [1 x %struct.__va_list_tag]* %va to i8*, !dbg !2044
  call void @llvm.lifetime.end(i64 24, i8* %17) #2, !dbg !2044
  %18 = bitcast i32* %retval1 to i8*, !dbg !2044
  call void @llvm.lifetime.end(i64 4, i8* %18) #2, !dbg !2044
  %19 = load i32, i32* %retval, !dbg !2044
  ret i32 %19, !dbg !2044
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !521, metadata !985), !dbg !2045
  store %struct._object* %keywords, %struct._object** %keywords.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct._object** %keywords.addr, metadata !522, metadata !985), !dbg !2046
  store i8* %format, i8** %format.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !523, metadata !985), !dbg !2047
  store i8** %kwlist, i8*** %kwlist.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8*** %kwlist.addr, metadata !524, metadata !985), !dbg !2048
  store %struct.__va_list_tag* %va, %struct.__va_list_tag** %va.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %va.addr, metadata !525, metadata !985), !dbg !2049
  %0 = bitcast i32* %retval1 to i8*, !dbg !2050
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !2050
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !526, metadata !985), !dbg !2051
  %1 = bitcast [1 x %struct.__va_list_tag]* %lva to i8*, !dbg !2052
  call void @llvm.lifetime.start(i64 24, i8* %1) #2, !dbg !2052
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %lva, metadata !527, metadata !985), !dbg !2053
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2054, !tbaa !981
  %cmp = icmp eq %struct._object* %2, null, !dbg !2056
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2057

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2058, !tbaa !981
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !2060
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2060, !tbaa !1259
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19, !dbg !2061
  %5 = load i64, i64* %tp_flags, align 8, !dbg !2061, !tbaa !1263
  %and = and i64 %5, 67108864, !dbg !2062
  %cmp2 = icmp ne i64 %and, 0, !dbg !2063
  br i1 %cmp2, label %lor.lhs.false.3, label %if.then, !dbg !2064

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %keywords.addr, align 8, !dbg !2065, !tbaa !981
  %cmp4 = icmp ne %struct._object* %6, null, !dbg !2066
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false.9, !dbg !2067

land.lhs.true:                                    ; preds = %lor.lhs.false.3
  %7 = load %struct._object*, %struct._object** %keywords.addr, align 8, !dbg !2068, !tbaa !981
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !2069
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8, !dbg !2069, !tbaa !1259
  %tp_flags6 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 19, !dbg !2070
  %9 = load i64, i64* %tp_flags6, align 8, !dbg !2070, !tbaa !1263
  %and7 = and i64 %9, 536870912, !dbg !2071
  %cmp8 = icmp ne i64 %and7, 0, !dbg !2072
  br i1 %cmp8, label %lor.lhs.false.9, label %if.then, !dbg !2073

lor.lhs.false.9:                                  ; preds = %land.lhs.true, %lor.lhs.false.3
  %10 = load i8*, i8** %format.addr, align 8, !dbg !2074, !tbaa !981
  %cmp10 = icmp eq i8* %10, null, !dbg !2075
  br i1 %cmp10, label %if.then, label %lor.lhs.false.11, !dbg !2076

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.9
  %11 = load i8**, i8*** %kwlist.addr, align 8, !dbg !2077, !tbaa !981
  %cmp12 = icmp eq i8** %11, null, !dbg !2078
  br i1 %cmp12, label %if.then, label %if.end, !dbg !2079

if.then:                                          ; preds = %lor.lhs.false.11, %lor.lhs.false.9, %land.lhs.true, %lor.lhs.false, %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1381), !dbg !2080
  store i32 0, i32* %retval, !dbg !2082
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2082

if.end:                                           ; preds = %lor.lhs.false.11
  %12 = bitcast [1 x %struct.__va_list_tag]* %lva to i8*, !dbg !2083
  %13 = load %struct.__va_list_tag*, %struct.__va_list_tag** %va.addr, align 8, !dbg !2084, !tbaa !981
  %14 = bitcast %struct.__va_list_tag* %13 to i8*, !dbg !2083
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %14, i64 24, i32 8, i1 false), !dbg !2083
  %15 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2085, !tbaa !981
  %16 = load %struct._object*, %struct._object** %keywords.addr, align 8, !dbg !2086, !tbaa !981
  %17 = load i8*, i8** %format.addr, align 8, !dbg !2087, !tbaa !981
  %18 = load i8**, i8*** %kwlist.addr, align 8, !dbg !2088, !tbaa !981
  %call = call i32 @vgetargskeywords(%struct._object* %15, %struct._object* %16, i8* %17, i8** %18, [1 x %struct.__va_list_tag]* %lva, i32 0), !dbg !2089
  store i32 %call, i32* %retval1, align 4, !dbg !2090, !tbaa !998
  %19 = load i32, i32* %retval1, align 4, !dbg !2091, !tbaa !998
  store i32 %19, i32* %retval, !dbg !2092
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2092

cleanup:                                          ; preds = %if.end, %if.then
  %20 = bitcast [1 x %struct.__va_list_tag]* %lva to i8*, !dbg !2093
  call void @llvm.lifetime.end(i64 24, i8* %20) #2, !dbg !2093
  %21 = bitcast i32* %retval1 to i8*, !dbg !2093
  call void @llvm.lifetime.end(i64 4, i8* %21) #2, !dbg !2093
  %22 = load i32, i32* %retval, !dbg !2093
  ret i32 %22, !dbg !2093
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !530, metadata !985), !dbg !2094
  store %struct._object* %keywords, %struct._object** %keywords.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct._object** %keywords.addr, metadata !531, metadata !985), !dbg !2095
  store i8* %format, i8** %format.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !532, metadata !985), !dbg !2096
  store i8** %kwlist, i8*** %kwlist.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8*** %kwlist.addr, metadata !533, metadata !985), !dbg !2097
  store %struct.__va_list_tag* %va, %struct.__va_list_tag** %va.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %va.addr, metadata !534, metadata !985), !dbg !2098
  %0 = bitcast i32* %retval1 to i8*, !dbg !2099
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !2099
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !535, metadata !985), !dbg !2100
  %1 = bitcast [1 x %struct.__va_list_tag]* %lva to i8*, !dbg !2101
  call void @llvm.lifetime.start(i64 24, i8* %1) #2, !dbg !2101
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %lva, metadata !536, metadata !985), !dbg !2102
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2103, !tbaa !981
  %cmp = icmp eq %struct._object* %2, null, !dbg !2105
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2106

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2107, !tbaa !981
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !2109
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2109, !tbaa !1259
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19, !dbg !2110
  %5 = load i64, i64* %tp_flags, align 8, !dbg !2110, !tbaa !1263
  %and = and i64 %5, 67108864, !dbg !2111
  %cmp2 = icmp ne i64 %and, 0, !dbg !2112
  br i1 %cmp2, label %lor.lhs.false.3, label %if.then, !dbg !2113

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %keywords.addr, align 8, !dbg !2114, !tbaa !981
  %cmp4 = icmp ne %struct._object* %6, null, !dbg !2115
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false.9, !dbg !2116

land.lhs.true:                                    ; preds = %lor.lhs.false.3
  %7 = load %struct._object*, %struct._object** %keywords.addr, align 8, !dbg !2117, !tbaa !981
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !2118
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8, !dbg !2118, !tbaa !1259
  %tp_flags6 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 19, !dbg !2119
  %9 = load i64, i64* %tp_flags6, align 8, !dbg !2119, !tbaa !1263
  %and7 = and i64 %9, 536870912, !dbg !2120
  %cmp8 = icmp ne i64 %and7, 0, !dbg !2121
  br i1 %cmp8, label %lor.lhs.false.9, label %if.then, !dbg !2122

lor.lhs.false.9:                                  ; preds = %land.lhs.true, %lor.lhs.false.3
  %10 = load i8*, i8** %format.addr, align 8, !dbg !2123, !tbaa !981
  %cmp10 = icmp eq i8* %10, null, !dbg !2124
  br i1 %cmp10, label %if.then, label %lor.lhs.false.11, !dbg !2125

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.9
  %11 = load i8**, i8*** %kwlist.addr, align 8, !dbg !2126, !tbaa !981
  %cmp12 = icmp eq i8** %11, null, !dbg !2127
  br i1 %cmp12, label %if.then, label %if.end, !dbg !2128

if.then:                                          ; preds = %lor.lhs.false.11, %lor.lhs.false.9, %land.lhs.true, %lor.lhs.false, %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1405), !dbg !2129
  store i32 0, i32* %retval, !dbg !2131
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2131

if.end:                                           ; preds = %lor.lhs.false.11
  %12 = bitcast [1 x %struct.__va_list_tag]* %lva to i8*, !dbg !2132
  %13 = load %struct.__va_list_tag*, %struct.__va_list_tag** %va.addr, align 8, !dbg !2133, !tbaa !981
  %14 = bitcast %struct.__va_list_tag* %13 to i8*, !dbg !2132
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %14, i64 24, i32 8, i1 false), !dbg !2132
  %15 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2134, !tbaa !981
  %16 = load %struct._object*, %struct._object** %keywords.addr, align 8, !dbg !2135, !tbaa !981
  %17 = load i8*, i8** %format.addr, align 8, !dbg !2136, !tbaa !981
  %18 = load i8**, i8*** %kwlist.addr, align 8, !dbg !2137, !tbaa !981
  %call = call i32 @vgetargskeywords(%struct._object* %15, %struct._object* %16, i8* %17, i8** %18, [1 x %struct.__va_list_tag]* %lva, i32 2), !dbg !2138
  store i32 %call, i32* %retval1, align 4, !dbg !2139, !tbaa !998
  %19 = load i32, i32* %retval1, align 4, !dbg !2140, !tbaa !998
  store i32 %19, i32* %retval, !dbg !2141
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2141

cleanup:                                          ; preds = %if.end, %if.then
  %20 = bitcast [1 x %struct.__va_list_tag]* %lva to i8*, !dbg !2142
  call void @llvm.lifetime.end(i64 24, i8* %20) #2, !dbg !2142
  %21 = bitcast i32* %retval1 to i8*, !dbg !2142
  call void @llvm.lifetime.end(i64 4, i8* %21) #2, !dbg !2142
  %22 = load i32, i32* %retval, !dbg !2142
  ret i32 %22, !dbg !2142
}

; Function Attrs: nounwind uwtable
define i32 @PyArg_ValidateKeywordArguments(%struct._object* %kwargs) #0 {
entry:
  %retval = alloca i32, align 4
  %kwargs.addr = alloca %struct._object*, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !539, metadata !985), !dbg !2143
  %0 = load %struct._object*, %struct._object** %kwargs.addr, align 8, !dbg !2144, !tbaa !981
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !2146
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2146, !tbaa !1259
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19, !dbg !2147
  %2 = load i64, i64* %tp_flags, align 8, !dbg !2147, !tbaa !1263
  %and = and i64 %2, 536870912, !dbg !2148
  %cmp = icmp ne i64 %and, 0, !dbg !2149
  br i1 %cmp, label %if.end, label %if.then, !dbg !2150

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1420), !dbg !2151
  store i32 0, i32* %retval, !dbg !2153
  br label %return, !dbg !2153

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %kwargs.addr, align 8, !dbg !2154, !tbaa !981
  %call = call i32 @_PyDict_HasOnlyStringKeys(%struct._object* %3), !dbg !2156
  %tobool = icmp ne i32 %call, 0, !dbg !2156
  br i1 %tobool, label %if.end.2, label %if.then.1, !dbg !2157

if.then.1:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2158, !tbaa !981
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0)), !dbg !2160
  store i32 0, i32* %retval, !dbg !2161
  br label %return, !dbg !2161

if.end.2:                                         ; preds = %if.end
  store i32 1, i32* %retval, !dbg !2162
  br label %return, !dbg !2162

return:                                           ; preds = %if.end.2, %if.then.1, %if.then
  %5 = load i32, i32* %retval, !dbg !2163
  ret i32 %5, !dbg !2163
}

declare i32 @_PyDict_HasOnlyStringKeys(%struct._object*) #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !544, metadata !985), !dbg !2164
  store i8* %name, i8** %name.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !545, metadata !985), !dbg !2165
  store i64 %min, i64* %min.addr, align 8, !tbaa !1279
  call void @llvm.dbg.declare(metadata i64* %min.addr, metadata !546, metadata !985), !dbg !2166
  store i64 %max, i64* %max.addr, align 8, !tbaa !1279
  call void @llvm.dbg.declare(metadata i64* %max.addr, metadata !547, metadata !985), !dbg !2167
  %0 = bitcast i64* %i to i8*, !dbg !2168
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2168
  call void @llvm.dbg.declare(metadata i64* %i, metadata !548, metadata !985), !dbg !2169
  %1 = bitcast i64* %l to i8*, !dbg !2168
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2168
  call void @llvm.dbg.declare(metadata i64* %l, metadata !549, metadata !985), !dbg !2170
  %2 = bitcast %struct._object*** %o to i8*, !dbg !2171
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2171
  call void @llvm.dbg.declare(metadata %struct._object*** %o, metadata !550, metadata !985), !dbg !2172
  %3 = bitcast [1 x %struct.__va_list_tag]* %vargs to i8*, !dbg !2173
  call void @llvm.lifetime.start(i64 24, i8* %3) #2, !dbg !2173
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %vargs, metadata !552, metadata !985), !dbg !2174
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0, !dbg !2175
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !2176
  call void @llvm.va_start(i8* %arraydecay1), !dbg !2176
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2177, !tbaa !981
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !2179
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2179, !tbaa !1259
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 19, !dbg !2180
  %6 = load i64, i64* %tp_flags, align 8, !dbg !2180, !tbaa !1263
  %and = and i64 %6, 67108864, !dbg !2181
  %cmp = icmp ne i64 %and, 0, !dbg !2182
  br i1 %cmp, label %if.end, label %if.then, !dbg !2183

if.then:                                          ; preds = %entry
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0, !dbg !2184
  %arraydecay23 = bitcast %struct.__va_list_tag* %arraydecay2 to i8*, !dbg !2186
  call void @llvm.va_end(i8* %arraydecay23), !dbg !2186
  %7 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !2187, !tbaa !981
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i32 0, i32 0)), !dbg !2188
  store i32 0, i32* %retval, !dbg !2189
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2189

if.end:                                           ; preds = %entry
  %8 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2190, !tbaa !981
  %9 = bitcast %struct._object* %8 to %struct.PyVarObject*, !dbg !2191
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %9, i32 0, i32 1, !dbg !2192
  %10 = load i64, i64* %ob_size, align 8, !dbg !2192, !tbaa !1277
  store i64 %10, i64* %l, align 8, !dbg !2193, !tbaa !1279
  %11 = load i64, i64* %l, align 8, !dbg !2194, !tbaa !1279
  %12 = load i64, i64* %min.addr, align 8, !dbg !2196, !tbaa !1279
  %cmp4 = icmp slt i64 %11, %12, !dbg !2197
  br i1 %cmp4, label %if.then.5, label %if.end.15, !dbg !2198

if.then.5:                                        ; preds = %if.end
  %13 = load i8*, i8** %name.addr, align 8, !dbg !2199, !tbaa !981
  %cmp6 = icmp ne i8* %13, null, !dbg !2202
  br i1 %cmp6, label %if.then.7, label %if.else, !dbg !2203

if.then.7:                                        ; preds = %if.then.5
  %14 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2204, !tbaa !981
  %15 = load i8*, i8** %name.addr, align 8, !dbg !2205, !tbaa !981
  %16 = load i64, i64* %min.addr, align 8, !dbg !2206, !tbaa !1279
  %17 = load i64, i64* %max.addr, align 8, !dbg !2207, !tbaa !1279
  %cmp8 = icmp eq i64 %16, %17, !dbg !2208
  %cond = select i1 %cmp8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), !dbg !2206
  %18 = load i64, i64* %min.addr, align 8, !dbg !2209, !tbaa !1279
  %19 = load i64, i64* %l, align 8, !dbg !2210, !tbaa !1279
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i8* %15, i8* %cond, i64 %18, i64 %19), !dbg !2211
  br label %if.end.12, !dbg !2211

if.else:                                          ; preds = %if.then.5
  %20 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2212, !tbaa !981
  %21 = load i64, i64* %min.addr, align 8, !dbg !2213, !tbaa !1279
  %22 = load i64, i64* %max.addr, align 8, !dbg !2214, !tbaa !1279
  %cmp9 = icmp eq i64 %21, %22, !dbg !2215
  %cond10 = select i1 %cmp9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), !dbg !2213
  %23 = load i64, i64* %min.addr, align 8, !dbg !2216, !tbaa !1279
  %24 = load i64, i64* %l, align 8, !dbg !2217, !tbaa !1279
  %call11 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %20, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i32 0, i32 0), i8* %cond10, i64 %23, i64 %24), !dbg !2218
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.7
  %arraydecay13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0, !dbg !2219
  %arraydecay1314 = bitcast %struct.__va_list_tag* %arraydecay13 to i8*, !dbg !2220
  call void @llvm.va_end(i8* %arraydecay1314), !dbg !2220
  store i32 0, i32* %retval, !dbg !2221
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2221

if.end.15:                                        ; preds = %if.end
  %25 = load i64, i64* %l, align 8, !dbg !2222, !tbaa !1279
  %26 = load i64, i64* %max.addr, align 8, !dbg !2224, !tbaa !1279
  %cmp16 = icmp sgt i64 %25, %26, !dbg !2225
  br i1 %cmp16, label %if.then.17, label %if.end.30, !dbg !2226

if.then.17:                                       ; preds = %if.end.15
  %27 = load i8*, i8** %name.addr, align 8, !dbg !2227, !tbaa !981
  %cmp18 = icmp ne i8* %27, null, !dbg !2230
  br i1 %cmp18, label %if.then.19, label %if.else.23, !dbg !2231

if.then.19:                                       ; preds = %if.then.17
  %28 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2232, !tbaa !981
  %29 = load i8*, i8** %name.addr, align 8, !dbg !2233, !tbaa !981
  %30 = load i64, i64* %min.addr, align 8, !dbg !2234, !tbaa !1279
  %31 = load i64, i64* %max.addr, align 8, !dbg !2235, !tbaa !1279
  %cmp20 = icmp eq i64 %30, %31, !dbg !2236
  %cond21 = select i1 %cmp20, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), !dbg !2234
  %32 = load i64, i64* %max.addr, align 8, !dbg !2237, !tbaa !1279
  %33 = load i64, i64* %l, align 8, !dbg !2238, !tbaa !1279
  %call22 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i8* %29, i8* %cond21, i64 %32, i64 %33), !dbg !2239
  br label %if.end.27, !dbg !2239

if.else.23:                                       ; preds = %if.then.17
  %34 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2240, !tbaa !981
  %35 = load i64, i64* %min.addr, align 8, !dbg !2241, !tbaa !1279
  %36 = load i64, i64* %max.addr, align 8, !dbg !2242, !tbaa !1279
  %cmp24 = icmp eq i64 %35, %36, !dbg !2243
  %cond25 = select i1 %cmp24, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), !dbg !2241
  %37 = load i64, i64* %max.addr, align 8, !dbg !2244, !tbaa !1279
  %38 = load i64, i64* %l, align 8, !dbg !2245, !tbaa !1279
  %call26 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %34, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i32 0, i32 0), i8* %cond25, i64 %37, i64 %38), !dbg !2246
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.23, %if.then.19
  %arraydecay28 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0, !dbg !2247
  %arraydecay2829 = bitcast %struct.__va_list_tag* %arraydecay28 to i8*, !dbg !2248
  call void @llvm.va_end(i8* %arraydecay2829), !dbg !2248
  store i32 0, i32* %retval, !dbg !2249
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2249

if.end.30:                                        ; preds = %if.end.15
  store i64 0, i64* %i, align 8, !dbg !2250, !tbaa !1279
  br label %for.cond, !dbg !2252

for.cond:                                         ; preds = %for.inc, %if.end.30
  %39 = load i64, i64* %i, align 8, !dbg !2253, !tbaa !1279
  %40 = load i64, i64* %l, align 8, !dbg !2257, !tbaa !1279
  %cmp31 = icmp slt i64 %39, %40, !dbg !2258
  br i1 %cmp31, label %for.body, label %for.end, !dbg !2259

for.body:                                         ; preds = %for.cond
  %arraydecay32 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0, !dbg !2260
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay32, i32 0, i32 0, !dbg !2262
  %gp_offset = load i32, i32* %gp_offset_p, !dbg !2262
  %fits_in_gp = icmp ule i32 %gp_offset, 40, !dbg !2262
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !2262

vaarg.in_reg:                                     ; preds = %for.body
  %41 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay32, i32 0, i32 3, !dbg !2263
  %reg_save_area = load i8*, i8** %41, !dbg !2263
  %42 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset, !dbg !2263
  %43 = bitcast i8* %42 to %struct._object***, !dbg !2263
  %44 = add i32 %gp_offset, 8, !dbg !2263
  store i32 %44, i32* %gp_offset_p, !dbg !2263
  br label %vaarg.end, !dbg !2263

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay32, i32 0, i32 2, !dbg !2265
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, !dbg !2265
  %45 = bitcast i8* %overflow_arg_area to %struct._object***, !dbg !2265
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8, !dbg !2265
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, !dbg !2265
  br label %vaarg.end, !dbg !2265

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi %struct._object*** [ %43, %vaarg.in_reg ], [ %45, %vaarg.in_mem ], !dbg !2262
  %46 = load %struct._object**, %struct._object*** %vaarg.addr, !dbg !2267
  store %struct._object** %46, %struct._object*** %o, align 8, !dbg !2270, !tbaa !981
  %47 = load i64, i64* %i, align 8, !dbg !2271, !tbaa !1279
  %48 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2272, !tbaa !981
  %49 = bitcast %struct._object* %48 to %struct.PyTupleObject*, !dbg !2273
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %49, i32 0, i32 1, !dbg !2274
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %47, !dbg !2275
  %50 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2275, !tbaa !981
  %51 = load %struct._object**, %struct._object*** %o, align 8, !dbg !2276, !tbaa !981
  store %struct._object* %50, %struct._object** %51, align 8, !dbg !2277, !tbaa !981
  br label %for.inc, !dbg !2278

for.inc:                                          ; preds = %vaarg.end
  %52 = load i64, i64* %i, align 8, !dbg !2279, !tbaa !1279
  %inc = add i64 %52, 1, !dbg !2279
  store i64 %inc, i64* %i, align 8, !dbg !2279, !tbaa !1279
  br label %for.cond, !dbg !2280

for.end:                                          ; preds = %for.cond
  %arraydecay33 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0, !dbg !2281
  %arraydecay3334 = bitcast %struct.__va_list_tag* %arraydecay33 to i8*, !dbg !2282
  call void @llvm.va_end(i8* %arraydecay3334), !dbg !2282
  store i32 1, i32* %retval, !dbg !2283
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2283

cleanup:                                          ; preds = %for.end, %if.end.27, %if.end.12, %if.then
  %53 = bitcast [1 x %struct.__va_list_tag]* %vargs to i8*, !dbg !2284
  call void @llvm.lifetime.end(i64 24, i8* %53) #2, !dbg !2284
  %54 = bitcast %struct._object*** %o to i8*, !dbg !2284
  call void @llvm.lifetime.end(i64 8, i8* %54) #2, !dbg !2284
  %55 = bitcast i64* %l to i8*, !dbg !2284
  call void @llvm.lifetime.end(i64 8, i8* %55) #2, !dbg !2284
  %56 = bitcast i64* %i to i8*, !dbg !2284
  call void @llvm.lifetime.end(i64 8, i8* %56) #2, !dbg !2284
  %57 = load i32, i32* %retval, !dbg !2284
  ret i32 %57, !dbg !2284
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define i32 @_PyArg_NoKeywords(i8* %funcname, %struct._object* %kw) #0 {
entry:
  %retval = alloca i32, align 4
  %funcname.addr = alloca i8*, align 8
  %kw.addr = alloca %struct._object*, align 8
  store i8* %funcname, i8** %funcname.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8** %funcname.addr, metadata !557, metadata !985), !dbg !2285
  store %struct._object* %kw, %struct._object** %kw.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct._object** %kw.addr, metadata !558, metadata !985), !dbg !2286
  %0 = load %struct._object*, %struct._object** %kw.addr, align 8, !dbg !2287, !tbaa !981
  %cmp = icmp eq %struct._object* %0, null, !dbg !2289
  br i1 %cmp, label %if.then, label %if.end, !dbg !2290

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, !dbg !2291
  br label %return, !dbg !2291

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %kw.addr, align 8, !dbg !2292, !tbaa !981
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1, !dbg !2294
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2294, !tbaa !1259
  %cmp1 = icmp eq %struct._typeobject* %2, @PyDict_Type, !dbg !2295
  br i1 %cmp1, label %if.end.3, label %if.then.2, !dbg !2296

if.then.2:                                        ; preds = %if.end
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1825), !dbg !2297
  store i32 0, i32* %retval, !dbg !2299
  br label %return, !dbg !2299

if.end.3:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %kw.addr, align 8, !dbg !2300, !tbaa !981
  %call = call i64 @PyDict_Size(%struct._object* %3), !dbg !2302
  %cmp4 = icmp eq i64 %call, 0, !dbg !2303
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !2304

if.then.5:                                        ; preds = %if.end.3
  store i32 1, i32* %retval, !dbg !2305
  br label %return, !dbg !2305

if.end.6:                                         ; preds = %if.end.3
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2306, !tbaa !981
  %5 = load i8*, i8** %funcname.addr, align 8, !dbg !2307, !tbaa !981
  %call7 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0), i8* %5), !dbg !2308
  store i32 0, i32* %retval, !dbg !2309
  br label %return, !dbg !2309

return:                                           ; preds = %if.end.6, %if.then.5, %if.then.2, %if.then
  %6 = load i32, i32* %retval, !dbg !2310
  ret i32 %6, !dbg !2310
}

declare i64 @PyDict_Size(%struct._object*) #3

; Function Attrs: nounwind uwtable
define i32 @_PyArg_NoPositional(i8* %funcname, %struct._object* %args) #0 {
entry:
  %retval = alloca i32, align 4
  %funcname.addr = alloca i8*, align 8
  %args.addr = alloca %struct._object*, align 8
  store i8* %funcname, i8** %funcname.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8** %funcname.addr, metadata !561, metadata !985), !dbg !2311
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !562, metadata !985), !dbg !2312
  %0 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2313, !tbaa !981
  %cmp = icmp eq %struct._object* %0, null, !dbg !2315
  br i1 %cmp, label %if.then, label %if.end, !dbg !2316

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, !dbg !2317
  br label %return, !dbg !2317

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2318, !tbaa !981
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1, !dbg !2320
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2320, !tbaa !1259
  %cmp1 = icmp eq %struct._typeobject* %2, @PyTuple_Type, !dbg !2321
  br i1 %cmp1, label %if.end.3, label %if.then.2, !dbg !2322

if.then.2:                                        ; preds = %if.end
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1843), !dbg !2323
  store i32 0, i32* %retval, !dbg !2325
  br label %return, !dbg !2325

if.end.3:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2326, !tbaa !981
  %4 = bitcast %struct._object* %3 to %struct.PyVarObject*, !dbg !2328
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1, !dbg !2329
  %5 = load i64, i64* %ob_size, align 8, !dbg !2329, !tbaa !1277
  %cmp4 = icmp eq i64 %5, 0, !dbg !2330
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !2331

if.then.5:                                        ; preds = %if.end.3
  store i32 1, i32* %retval, !dbg !2332
  br label %return, !dbg !2332

if.end.6:                                         ; preds = %if.end.3
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2333, !tbaa !981
  %7 = load i8*, i8** %funcname.addr, align 8, !dbg !2334, !tbaa !981
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i32 0, i32 0), i8* %7), !dbg !2335
  store i32 0, i32* %retval, !dbg !2336
  br label %return, !dbg !2336

return:                                           ; preds = %if.end.6, %if.then.5, %if.then.2, %if.then
  %8 = load i32, i32* %retval, !dbg !2337
  ret i32 %8, !dbg !2337
}

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #4

declare i8* @PyMem_Malloc(i64) #3

declare %struct._object* @PyErr_NoMemory() #3

; Function Attrs: nounwind uwtable
define internal i32 @cleanreturn(i32 %retval1, %struct.freelist_t* %freelist) #0 {
entry:
  %retval.addr = alloca i32, align 4
  %freelist.addr = alloca %struct.freelist_t*, align 8
  %index = alloca i32, align 4
  store i32 %retval1, i32* %retval.addr, align 4, !tbaa !998
  call void @llvm.dbg.declare(metadata i32* %retval.addr, metadata !609, metadata !985), !dbg !2338
  store %struct.freelist_t* %freelist, %struct.freelist_t** %freelist.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct.freelist_t** %freelist.addr, metadata !610, metadata !985), !dbg !2339
  %0 = bitcast i32* %index to i8*, !dbg !2340
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !2340
  call void @llvm.dbg.declare(metadata i32* %index, metadata !611, metadata !985), !dbg !2341
  %1 = load i32, i32* %retval.addr, align 4, !dbg !2342, !tbaa !998
  %cmp = icmp eq i32 %1, 0, !dbg !2344
  br i1 %cmp, label %if.then, label %if.end, !dbg !2345

if.then:                                          ; preds = %entry
  store i32 0, i32* %index, align 4, !dbg !2346, !tbaa !998
  br label %for.cond, !dbg !2349

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %index, align 4, !dbg !2350, !tbaa !998
  %3 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8, !dbg !2354, !tbaa !981
  %first_available = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %3, i32 0, i32 1, !dbg !2355
  %4 = load i32, i32* %first_available, align 4, !dbg !2355, !tbaa !1048
  %cmp2 = icmp slt i32 %2, %4, !dbg !2356
  br i1 %cmp2, label %for.body, label %for.end, !dbg !2357

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %index, align 4, !dbg !2358, !tbaa !998
  %idxprom = sext i32 %5 to i64, !dbg !2360
  %6 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8, !dbg !2360, !tbaa !981
  %entries = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %6, i32 0, i32 0, !dbg !2361
  %7 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries, align 8, !dbg !2361, !tbaa !1044
  %arrayidx = getelementptr %struct.freelistentry_t, %struct.freelistentry_t* %7, i64 %idxprom, !dbg !2360
  %destructor = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %arrayidx, i32 0, i32 1, !dbg !2362
  %8 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %destructor, align 8, !dbg !2362, !tbaa !2363
  %9 = load i32, i32* %index, align 4, !dbg !2365, !tbaa !998
  %idxprom3 = sext i32 %9 to i64, !dbg !2366
  %10 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8, !dbg !2366, !tbaa !981
  %entries4 = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %10, i32 0, i32 0, !dbg !2367
  %11 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries4, align 8, !dbg !2367, !tbaa !1044
  %arrayidx5 = getelementptr %struct.freelistentry_t, %struct.freelistentry_t* %11, i64 %idxprom3, !dbg !2366
  %item = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %arrayidx5, i32 0, i32 0, !dbg !2368
  %12 = load i8*, i8** %item, align 8, !dbg !2368, !tbaa !2369
  %call = call i32 %8(%struct._object* null, i8* %12), !dbg !2360
  br label %for.inc, !dbg !2370

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %index, align 4, !dbg !2371, !tbaa !998
  %inc = add i32 %13, 1, !dbg !2371
  store i32 %inc, i32* %index, align 4, !dbg !2371, !tbaa !998
  br label %for.cond, !dbg !2372

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !2373

if.end:                                           ; preds = %for.end, %entry
  %14 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8, !dbg !2374, !tbaa !981
  %entries_malloced = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %14, i32 0, i32 2, !dbg !2376
  %15 = load i32, i32* %entries_malloced, align 4, !dbg !2376, !tbaa !1051
  %tobool = icmp ne i32 %15, 0, !dbg !2374
  br i1 %tobool, label %if.then.6, label %if.end.8, !dbg !2377

if.then.6:                                        ; preds = %if.end
  %16 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8, !dbg !2378, !tbaa !981
  %entries7 = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %16, i32 0, i32 0, !dbg !2379
  %17 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries7, align 8, !dbg !2379, !tbaa !1044
  %18 = bitcast %struct.freelistentry_t* %17 to i8*, !dbg !2378
  call void @PyMem_Free(i8* %18), !dbg !2380
  br label %if.end.8, !dbg !2380

if.end.8:                                         ; preds = %if.then.6, %if.end
  %19 = load i32, i32* %retval.addr, align 4, !dbg !2381, !tbaa !998
  %20 = bitcast i32* %index to i8*, !dbg !2382
  call void @llvm.lifetime.end(i64 4, i8* %20) #2, !dbg !2382
  ret i32 %19, !dbg !2383
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
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !618, metadata !985), !dbg !2384
  store i8** %p_format, i8*** %p_format.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8*** %p_format.addr, metadata !619, metadata !985), !dbg !2385
  store [1 x %struct.__va_list_tag]* %p_va, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]** %p_va.addr, metadata !620, metadata !985), !dbg !2386
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !998
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !621, metadata !985), !dbg !2387
  store i32* %levels, i32** %levels.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i32** %levels.addr, metadata !622, metadata !985), !dbg !2388
  store i8* %msgbuf, i8** %msgbuf.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8** %msgbuf.addr, metadata !623, metadata !985), !dbg !2389
  store i64 %bufsize, i64* %bufsize.addr, align 8, !tbaa !1279
  call void @llvm.dbg.declare(metadata i64* %bufsize.addr, metadata !624, metadata !985), !dbg !2390
  store %struct.freelist_t* %freelist, %struct.freelist_t** %freelist.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct.freelist_t** %freelist.addr, metadata !625, metadata !985), !dbg !2391
  %0 = bitcast i8** %msg to i8*, !dbg !2392
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2392
  call void @llvm.dbg.declare(metadata i8** %msg, metadata !626, metadata !985), !dbg !2393
  %1 = bitcast i8** %format to i8*, !dbg !2394
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2394
  call void @llvm.dbg.declare(metadata i8** %format, metadata !627, metadata !985), !dbg !2395
  %2 = load i8**, i8*** %p_format.addr, align 8, !dbg !2396, !tbaa !981
  %3 = load i8*, i8** %2, align 8, !dbg !2397, !tbaa !981
  store i8* %3, i8** %format, align 8, !dbg !2395, !tbaa !981
  %4 = load i8*, i8** %format, align 8, !dbg !2398, !tbaa !981
  %5 = load i8, i8* %4, align 1, !dbg !2400, !tbaa !1064
  %conv = sext i8 %5 to i32, !dbg !2400
  %cmp = icmp eq i32 %conv, 40, !dbg !2401
  br i1 %cmp, label %if.then, label %if.else, !dbg !2402

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %format, align 8, !dbg !2403, !tbaa !981
  %incdec.ptr = getelementptr i8, i8* %6, i32 1, !dbg !2403
  store i8* %incdec.ptr, i8** %format, align 8, !dbg !2403, !tbaa !981
  %7 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !2405, !tbaa !981
  %8 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !2406, !tbaa !981
  %9 = load i32, i32* %flags.addr, align 4, !dbg !2407, !tbaa !998
  %10 = load i32*, i32** %levels.addr, align 8, !dbg !2408, !tbaa !981
  %11 = load i8*, i8** %msgbuf.addr, align 8, !dbg !2409, !tbaa !981
  %12 = load i64, i64* %bufsize.addr, align 8, !dbg !2410, !tbaa !1279
  %13 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8, !dbg !2411, !tbaa !981
  %call = call i8* @converttuple(%struct._object* %7, i8** %format, [1 x %struct.__va_list_tag]* %8, i32 %9, i32* %10, i8* %11, i64 %12, i32 0, %struct.freelist_t* %13), !dbg !2412
  store i8* %call, i8** %msg, align 8, !dbg !2413, !tbaa !981
  %14 = load i8*, i8** %msg, align 8, !dbg !2414, !tbaa !981
  %cmp2 = icmp eq i8* %14, null, !dbg !2416
  br i1 %cmp2, label %if.then.4, label %if.end, !dbg !2417

if.then.4:                                        ; preds = %if.then
  %15 = load i8*, i8** %format, align 8, !dbg !2418, !tbaa !981
  %incdec.ptr5 = getelementptr i8, i8* %15, i32 1, !dbg !2418
  store i8* %incdec.ptr5, i8** %format, align 8, !dbg !2418, !tbaa !981
  br label %if.end, !dbg !2419

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.11, !dbg !2420

if.else:                                          ; preds = %entry
  %16 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !2421, !tbaa !981
  %17 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !2423, !tbaa !981
  %18 = load i32, i32* %flags.addr, align 4, !dbg !2424, !tbaa !998
  %19 = load i8*, i8** %msgbuf.addr, align 8, !dbg !2425, !tbaa !981
  %20 = load i64, i64* %bufsize.addr, align 8, !dbg !2426, !tbaa !1279
  %21 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8, !dbg !2427, !tbaa !981
  %call6 = call i8* @convertsimple(%struct._object* %16, i8** %format, [1 x %struct.__va_list_tag]* %17, i32 %18, i8* %19, i64 %20, %struct.freelist_t* %21), !dbg !2428
  store i8* %call6, i8** %msg, align 8, !dbg !2429, !tbaa !981
  %22 = load i8*, i8** %msg, align 8, !dbg !2430, !tbaa !981
  %cmp7 = icmp ne i8* %22, null, !dbg !2432
  br i1 %cmp7, label %if.then.9, label %if.end.10, !dbg !2433

if.then.9:                                        ; preds = %if.else
  %23 = load i32*, i32** %levels.addr, align 8, !dbg !2434, !tbaa !981
  %arrayidx = getelementptr i32, i32* %23, i64 0, !dbg !2434
  store i32 0, i32* %arrayidx, align 4, !dbg !2435, !tbaa !998
  br label %if.end.10, !dbg !2434

if.end.10:                                        ; preds = %if.then.9, %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %24 = load i8*, i8** %msg, align 8, !dbg !2436, !tbaa !981
  %cmp12 = icmp eq i8* %24, null, !dbg !2438
  br i1 %cmp12, label %if.then.14, label %if.end.15, !dbg !2439

if.then.14:                                       ; preds = %if.end.11
  %25 = load i8*, i8** %format, align 8, !dbg !2440, !tbaa !981
  %26 = load i8**, i8*** %p_format.addr, align 8, !dbg !2441, !tbaa !981
  store i8* %25, i8** %26, align 8, !dbg !2442, !tbaa !981
  br label %if.end.15, !dbg !2443

if.end.15:                                        ; preds = %if.then.14, %if.end.11
  %27 = load i8*, i8** %msg, align 8, !dbg !2444, !tbaa !981
  %28 = bitcast i8** %format to i8*, !dbg !2445
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !2445
  %29 = bitcast i8** %msg to i8*, !dbg !2445
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !2445
  ret i8* %27, !dbg !2446
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
  %cleanup.dest.slot = alloca i32
  store i64 %iarg, i64* %iarg.addr, align 8, !tbaa !1279
  call void @llvm.dbg.declare(metadata i64* %iarg.addr, metadata !923, metadata !985), !dbg !2447
  store i8* %msg, i8** %msg.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8** %msg.addr, metadata !924, metadata !985), !dbg !2448
  store i32* %levels, i32** %levels.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i32** %levels.addr, metadata !925, metadata !985), !dbg !2449
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8** %fname.addr, metadata !926, metadata !985), !dbg !2450
  store i8* %message, i8** %message.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8** %message.addr, metadata !927, metadata !985), !dbg !2451
  %0 = bitcast [512 x i8]* %buf to i8*, !dbg !2452
  call void @llvm.lifetime.start(i64 512, i8* %0) #2, !dbg !2452
  call void @llvm.dbg.declare(metadata [512 x i8]* %buf, metadata !928, metadata !985), !dbg !2453
  %1 = bitcast i32* %i to i8*, !dbg !2454
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !2454
  call void @llvm.dbg.declare(metadata i32* %i, metadata !932, metadata !985), !dbg !2455
  %2 = bitcast i8** %p to i8*, !dbg !2456
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2456
  call void @llvm.dbg.declare(metadata i8** %p, metadata !933, metadata !985), !dbg !2457
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0, !dbg !2458
  store i8* %arraydecay, i8** %p, align 8, !dbg !2457, !tbaa !981
  %call = call %struct._object* @PyErr_Occurred(), !dbg !2459
  %tobool = icmp ne %struct._object* %call, null, !dbg !2459
  br i1 %tobool, label %if.then, label %if.else, !dbg !2461

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2462

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %message.addr, align 8, !dbg !2463, !tbaa !981
  %cmp = icmp eq i8* %3, null, !dbg !2465
  br i1 %cmp, label %if.then.1, label %if.end.48, !dbg !2466

if.then.1:                                        ; preds = %if.else
  %4 = load i8*, i8** %fname.addr, align 8, !dbg !2467, !tbaa !981
  %cmp2 = icmp ne i8* %4, null, !dbg !2470
  br i1 %cmp2, label %if.then.3, label %if.end, !dbg !2471

if.then.3:                                        ; preds = %if.then.1
  %5 = load i8*, i8** %p, align 8, !dbg !2472, !tbaa !981
  %6 = load i8*, i8** %fname.addr, align 8, !dbg !2474, !tbaa !981
  %call4 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %5, i64 512, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0), i8* %6), !dbg !2475
  %7 = load i8*, i8** %p, align 8, !dbg !2476, !tbaa !981
  %call5 = call i64 @strlen(i8* %7) #8, !dbg !2477
  %8 = load i8*, i8** %p, align 8, !dbg !2478, !tbaa !981
  %add.ptr = getelementptr i8, i8* %8, i64 %call5, !dbg !2478
  store i8* %add.ptr, i8** %p, align 8, !dbg !2478, !tbaa !981
  br label %if.end, !dbg !2479

if.end:                                           ; preds = %if.then.3, %if.then.1
  %9 = load i64, i64* %iarg.addr, align 8, !dbg !2480, !tbaa !1279
  %cmp6 = icmp ne i64 %9, 0, !dbg !2482
  br i1 %cmp6, label %if.then.7, label %if.else.31, !dbg !2483

if.then.7:                                        ; preds = %if.end
  %10 = load i8*, i8** %p, align 8, !dbg !2484, !tbaa !981
  %11 = load i8*, i8** %p, align 8, !dbg !2486, !tbaa !981
  %arraydecay8 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0, !dbg !2487
  %sub.ptr.lhs.cast = ptrtoint i8* %11 to i64, !dbg !2488
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay8 to i64, !dbg !2488
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2488
  %sub = sub i64 512, %sub.ptr.sub, !dbg !2489
  %12 = load i64, i64* %iarg.addr, align 8, !dbg !2490, !tbaa !1279
  %call9 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %10, i64 %sub, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i32 0, i32 0), i64 %12), !dbg !2491
  store i32 0, i32* %i, align 4, !dbg !2492, !tbaa !998
  %13 = load i8*, i8** %p, align 8, !dbg !2493, !tbaa !981
  %call10 = call i64 @strlen(i8* %13) #8, !dbg !2494
  %14 = load i8*, i8** %p, align 8, !dbg !2495, !tbaa !981
  %add.ptr11 = getelementptr i8, i8* %14, i64 %call10, !dbg !2495
  store i8* %add.ptr11, i8** %p, align 8, !dbg !2495, !tbaa !981
  br label %while.cond, !dbg !2496

while.cond:                                       ; preds = %while.body, %if.then.7
  %15 = load i32, i32* %i, align 4, !dbg !2497, !tbaa !998
  %cmp12 = icmp slt i32 %15, 32, !dbg !2500
  br i1 %cmp12, label %land.lhs.true, label %land.end, !dbg !2501

land.lhs.true:                                    ; preds = %while.cond
  %16 = load i32, i32* %i, align 4, !dbg !2502, !tbaa !998
  %idxprom = sext i32 %16 to i64, !dbg !2504
  %17 = load i32*, i32** %levels.addr, align 8, !dbg !2504, !tbaa !981
  %arrayidx = getelementptr i32, i32* %17, i64 %idxprom, !dbg !2504
  %18 = load i32, i32* %arrayidx, align 4, !dbg !2504, !tbaa !998
  %cmp13 = icmp sgt i32 %18, 0, !dbg !2505
  br i1 %cmp13, label %land.rhs, label %land.end, !dbg !2506

land.rhs:                                         ; preds = %land.lhs.true
  %19 = load i8*, i8** %p, align 8, !dbg !2507, !tbaa !981
  %arraydecay14 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0, !dbg !2509
  %sub.ptr.lhs.cast15 = ptrtoint i8* %19 to i64, !dbg !2510
  %sub.ptr.rhs.cast16 = ptrtoint i8* %arraydecay14 to i64, !dbg !2510
  %sub.ptr.sub17 = sub i64 %sub.ptr.lhs.cast15, %sub.ptr.rhs.cast16, !dbg !2510
  %conv = trunc i64 %sub.ptr.sub17 to i32, !dbg !2511
  %cmp18 = icmp slt i32 %conv, 220, !dbg !2512
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %20 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp18, %land.rhs ]
  br i1 %20, label %while.body, label %while.end, !dbg !2513

while.body:                                       ; preds = %land.end
  %21 = load i8*, i8** %p, align 8, !dbg !2516, !tbaa !981
  %22 = load i8*, i8** %p, align 8, !dbg !2518, !tbaa !981
  %arraydecay20 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0, !dbg !2519
  %sub.ptr.lhs.cast21 = ptrtoint i8* %22 to i64, !dbg !2520
  %sub.ptr.rhs.cast22 = ptrtoint i8* %arraydecay20 to i64, !dbg !2520
  %sub.ptr.sub23 = sub i64 %sub.ptr.lhs.cast21, %sub.ptr.rhs.cast22, !dbg !2520
  %sub24 = sub i64 512, %sub.ptr.sub23, !dbg !2521
  %23 = load i32, i32* %i, align 4, !dbg !2522, !tbaa !998
  %idxprom25 = sext i32 %23 to i64, !dbg !2523
  %24 = load i32*, i32** %levels.addr, align 8, !dbg !2523, !tbaa !981
  %arrayidx26 = getelementptr i32, i32* %24, i64 %idxprom25, !dbg !2523
  %25 = load i32, i32* %arrayidx26, align 4, !dbg !2523, !tbaa !998
  %sub27 = sub i32 %25, 1, !dbg !2524
  %call28 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %21, i64 %sub24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i32 %sub27), !dbg !2525
  %26 = load i8*, i8** %p, align 8, !dbg !2526, !tbaa !981
  %call29 = call i64 @strlen(i8* %26) #8, !dbg !2527
  %27 = load i8*, i8** %p, align 8, !dbg !2528, !tbaa !981
  %add.ptr30 = getelementptr i8, i8* %27, i64 %call29, !dbg !2528
  store i8* %add.ptr30, i8** %p, align 8, !dbg !2528, !tbaa !981
  %28 = load i32, i32* %i, align 4, !dbg !2529, !tbaa !998
  %inc = add i32 %28, 1, !dbg !2529
  store i32 %inc, i32* %i, align 4, !dbg !2529, !tbaa !998
  br label %while.cond, !dbg !2496

while.end:                                        ; preds = %land.end
  br label %if.end.40, !dbg !2530

if.else.31:                                       ; preds = %if.end
  %29 = load i8*, i8** %p, align 8, !dbg !2531, !tbaa !981
  %30 = load i8*, i8** %p, align 8, !dbg !2533, !tbaa !981
  %arraydecay32 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0, !dbg !2534
  %sub.ptr.lhs.cast33 = ptrtoint i8* %30 to i64, !dbg !2535
  %sub.ptr.rhs.cast34 = ptrtoint i8* %arraydecay32 to i64, !dbg !2535
  %sub.ptr.sub35 = sub i64 %sub.ptr.lhs.cast33, %sub.ptr.rhs.cast34, !dbg !2535
  %sub36 = sub i64 512, %sub.ptr.sub35, !dbg !2536
  %call37 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %29, i64 %sub36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i32 0, i32 0)), !dbg !2537
  %31 = load i8*, i8** %p, align 8, !dbg !2538, !tbaa !981
  %call38 = call i64 @strlen(i8* %31) #8, !dbg !2539
  %32 = load i8*, i8** %p, align 8, !dbg !2540, !tbaa !981
  %add.ptr39 = getelementptr i8, i8* %32, i64 %call38, !dbg !2540
  store i8* %add.ptr39, i8** %p, align 8, !dbg !2540, !tbaa !981
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.31, %while.end
  %33 = load i8*, i8** %p, align 8, !dbg !2541, !tbaa !981
  %34 = load i8*, i8** %p, align 8, !dbg !2542, !tbaa !981
  %arraydecay41 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0, !dbg !2543
  %sub.ptr.lhs.cast42 = ptrtoint i8* %34 to i64, !dbg !2544
  %sub.ptr.rhs.cast43 = ptrtoint i8* %arraydecay41 to i64, !dbg !2544
  %sub.ptr.sub44 = sub i64 %sub.ptr.lhs.cast42, %sub.ptr.rhs.cast43, !dbg !2544
  %sub45 = sub i64 512, %sub.ptr.sub44, !dbg !2545
  %35 = load i8*, i8** %msg.addr, align 8, !dbg !2546, !tbaa !981
  %call46 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %33, i64 %sub45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), i8* %35), !dbg !2547
  %arraydecay47 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0, !dbg !2548
  store i8* %arraydecay47, i8** %message.addr, align 8, !dbg !2549, !tbaa !981
  br label %if.end.48, !dbg !2550

if.end.48:                                        ; preds = %if.end.40, %if.else
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48
  %36 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2551, !tbaa !981
  %37 = load i8*, i8** %message.addr, align 8, !dbg !2552, !tbaa !981
  call void @PyErr_SetString(%struct._object* %36, i8* %37), !dbg !2553
  store i32 0, i32* %cleanup.dest.slot, !dbg !2554
  br label %cleanup, !dbg !2554

cleanup:                                          ; preds = %if.end.49, %if.then
  %38 = bitcast i8** %p to i8*, !dbg !2555
  call void @llvm.lifetime.end(i64 8, i8* %38) #2, !dbg !2555
  %39 = bitcast i32* %i to i8*, !dbg !2555
  call void @llvm.lifetime.end(i64 4, i8* %39) #2, !dbg !2555
  %40 = bitcast [512 x i8]* %buf to i8*, !dbg !2555
  call void @llvm.lifetime.end(i64 512, i8* %40) #2, !dbg !2555
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2554

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare void @PyMem_Free(i8*) #3

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
  %cleanup.dest.slot = alloca i32
  %msg = alloca i8*, align 8
  %item = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !632, metadata !985), !dbg !2557
  store i8** %p_format, i8*** %p_format.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8*** %p_format.addr, metadata !633, metadata !985), !dbg !2558
  store [1 x %struct.__va_list_tag]* %p_va, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]** %p_va.addr, metadata !634, metadata !985), !dbg !2559
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !998
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !635, metadata !985), !dbg !2560
  store i32* %levels, i32** %levels.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i32** %levels.addr, metadata !636, metadata !985), !dbg !2561
  store i8* %msgbuf, i8** %msgbuf.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8** %msgbuf.addr, metadata !637, metadata !985), !dbg !2562
  store i64 %bufsize, i64* %bufsize.addr, align 8, !tbaa !1279
  call void @llvm.dbg.declare(metadata i64* %bufsize.addr, metadata !638, metadata !985), !dbg !2563
  store i32 %toplevel, i32* %toplevel.addr, align 4, !tbaa !998
  call void @llvm.dbg.declare(metadata i32* %toplevel.addr, metadata !639, metadata !985), !dbg !2564
  store %struct.freelist_t* %freelist, %struct.freelist_t** %freelist.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct.freelist_t** %freelist.addr, metadata !640, metadata !985), !dbg !2565
  %0 = bitcast i32* %level to i8*, !dbg !2566
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !2566
  call void @llvm.dbg.declare(metadata i32* %level, metadata !641, metadata !985), !dbg !2567
  store i32 0, i32* %level, align 4, !dbg !2567, !tbaa !998
  %1 = bitcast i32* %n to i8*, !dbg !2568
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !2568
  call void @llvm.dbg.declare(metadata i32* %n, metadata !642, metadata !985), !dbg !2569
  store i32 0, i32* %n, align 4, !dbg !2569, !tbaa !998
  %2 = bitcast i8** %format to i8*, !dbg !2570
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2570
  call void @llvm.dbg.declare(metadata i8** %format, metadata !643, metadata !985), !dbg !2571
  %3 = load i8**, i8*** %p_format.addr, align 8, !dbg !2572, !tbaa !981
  %4 = load i8*, i8** %3, align 8, !dbg !2573, !tbaa !981
  store i8* %4, i8** %format, align 8, !dbg !2571, !tbaa !981
  %5 = bitcast i32* %i to i8*, !dbg !2574
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !2574
  call void @llvm.dbg.declare(metadata i32* %i, metadata !644, metadata !985), !dbg !2575
  %6 = bitcast i64* %len to i8*, !dbg !2576
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !2576
  call void @llvm.dbg.declare(metadata i64* %len, metadata !645, metadata !985), !dbg !2577
  br label %for.cond, !dbg !2578

for.cond:                                         ; preds = %cleanup.cont, %entry
  %7 = bitcast i32* %c to i8*, !dbg !2579
  call void @llvm.lifetime.start(i64 4, i8* %7) #2, !dbg !2579
  call void @llvm.dbg.declare(metadata i32* %c, metadata !646, metadata !985), !dbg !2580
  %8 = load i8*, i8** %format, align 8, !dbg !2581, !tbaa !981
  %incdec.ptr = getelementptr i8, i8* %8, i32 1, !dbg !2581
  store i8* %incdec.ptr, i8** %format, align 8, !dbg !2581, !tbaa !981
  %9 = load i8, i8* %8, align 1, !dbg !2582, !tbaa !1064
  %conv = sext i8 %9 to i32, !dbg !2582
  store i32 %conv, i32* %c, align 4, !dbg !2580, !tbaa !998
  %10 = load i32, i32* %c, align 4, !dbg !2583, !tbaa !998
  %cmp = icmp eq i32 %10, 40, !dbg !2585
  br i1 %cmp, label %if.then, label %if.else, !dbg !2586

if.then:                                          ; preds = %for.cond
  %11 = load i32, i32* %level, align 4, !dbg !2587, !tbaa !998
  %cmp2 = icmp eq i32 %11, 0, !dbg !2590
  br i1 %cmp2, label %if.then.4, label %if.end, !dbg !2591

if.then.4:                                        ; preds = %if.then
  %12 = load i32, i32* %n, align 4, !dbg !2592, !tbaa !998
  %inc = add i32 %12, 1, !dbg !2592
  store i32 %inc, i32* %n, align 4, !dbg !2592, !tbaa !998
  br label %if.end, !dbg !2593

if.end:                                           ; preds = %if.then.4, %if.then
  %13 = load i32, i32* %level, align 4, !dbg !2594, !tbaa !998
  %inc5 = add i32 %13, 1, !dbg !2594
  store i32 %inc5, i32* %level, align 4, !dbg !2594, !tbaa !998
  br label %if.end.35, !dbg !2595

if.else:                                          ; preds = %for.cond
  %14 = load i32, i32* %c, align 4, !dbg !2596, !tbaa !998
  %cmp6 = icmp eq i32 %14, 41, !dbg !2598
  br i1 %cmp6, label %if.then.8, label %if.else.13, !dbg !2599

if.then.8:                                        ; preds = %if.else
  %15 = load i32, i32* %level, align 4, !dbg !2600, !tbaa !998
  %cmp9 = icmp eq i32 %15, 0, !dbg !2603
  br i1 %cmp9, label %if.then.11, label %if.end.12, !dbg !2604

if.then.11:                                       ; preds = %if.then.8
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2605

if.end.12:                                        ; preds = %if.then.8
  %16 = load i32, i32* %level, align 4, !dbg !2606, !tbaa !998
  %dec = add i32 %16, -1, !dbg !2606
  store i32 %dec, i32* %level, align 4, !dbg !2606, !tbaa !998
  br label %if.end.34, !dbg !2607

if.else.13:                                       ; preds = %if.else
  %17 = load i32, i32* %c, align 4, !dbg !2608, !tbaa !998
  %cmp14 = icmp eq i32 %17, 58, !dbg !2610
  br i1 %cmp14, label %if.then.21, label %lor.lhs.false, !dbg !2611

lor.lhs.false:                                    ; preds = %if.else.13
  %18 = load i32, i32* %c, align 4, !dbg !2612, !tbaa !998
  %cmp16 = icmp eq i32 %18, 59, !dbg !2614
  br i1 %cmp16, label %if.then.21, label %lor.lhs.false.18, !dbg !2615

lor.lhs.false.18:                                 ; preds = %lor.lhs.false
  %19 = load i32, i32* %c, align 4, !dbg !2616, !tbaa !998
  %cmp19 = icmp eq i32 %19, 0, !dbg !2618
  br i1 %cmp19, label %if.then.21, label %if.else.22, !dbg !2619

if.then.21:                                       ; preds = %lor.lhs.false.18, %lor.lhs.false, %if.else.13
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2620

if.else.22:                                       ; preds = %lor.lhs.false.18
  %20 = load i32, i32* %level, align 4, !dbg !2621, !tbaa !998
  %cmp23 = icmp eq i32 %20, 0, !dbg !2623
  br i1 %cmp23, label %land.lhs.true, label %if.end.32, !dbg !2624

land.lhs.true:                                    ; preds = %if.else.22
  %21 = load i32, i32* %c, align 4, !dbg !2625, !tbaa !998
  %and = and i32 %21, 255, !dbg !2627
  %conv25 = trunc i32 %and to i8, !dbg !2628
  %conv26 = zext i8 %conv25 to i32, !dbg !2629
  %and27 = and i32 %conv26, 255, !dbg !2630
  %conv28 = trunc i32 %and27 to i8, !dbg !2631
  %idxprom = zext i8 %conv28 to i64, !dbg !2632
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom, !dbg !2632
  %22 = load i32, i32* %arrayidx, align 4, !dbg !2632, !tbaa !998
  %and29 = and i32 %22, 3, !dbg !2633
  %tobool = icmp ne i32 %and29, 0, !dbg !2633
  br i1 %tobool, label %if.then.30, label %if.end.32, !dbg !2634

if.then.30:                                       ; preds = %land.lhs.true
  %23 = load i32, i32* %n, align 4, !dbg !2635, !tbaa !998
  %inc31 = add i32 %23, 1, !dbg !2635
  store i32 %inc31, i32* %n, align 4, !dbg !2635, !tbaa !998
  br label %if.end.32, !dbg !2636

if.end.32:                                        ; preds = %if.then.30, %land.lhs.true, %if.else.22
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.12
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end
  store i32 0, i32* %cleanup.dest.slot, !dbg !2637
  br label %cleanup, !dbg !2637

cleanup:                                          ; preds = %if.end.35, %if.then.21, %if.then.11
  %24 = bitcast i32* %c to i8*, !dbg !2638
  call void @llvm.lifetime.end(i64 4, i8* %24) #2, !dbg !2638
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !2640

for.end:                                          ; preds = %cleanup
  %25 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !2641, !tbaa !981
  %call = call i32 @PySequence_Check(%struct._object* %25), !dbg !2643
  %tobool36 = icmp ne i32 %call, 0, !dbg !2643
  br i1 %tobool36, label %lor.lhs.false.37, label %if.then.41, !dbg !2644

lor.lhs.false.37:                                 ; preds = %for.end
  %26 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !2645, !tbaa !981
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1, !dbg !2647
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2647, !tbaa !1259
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 19, !dbg !2648
  %28 = load i64, i64* %tp_flags, align 8, !dbg !2648, !tbaa !1263
  %and38 = and i64 %28, 134217728, !dbg !2649
  %cmp39 = icmp ne i64 %and38, 0, !dbg !2650
  br i1 %cmp39, label %if.then.41, label %if.end.49, !dbg !2651

if.then.41:                                       ; preds = %lor.lhs.false.37, %for.end
  %29 = load i32*, i32** %levels.addr, align 8, !dbg !2652, !tbaa !981
  %arrayidx42 = getelementptr i32, i32* %29, i64 0, !dbg !2652
  store i32 0, i32* %arrayidx42, align 4, !dbg !2654, !tbaa !998
  %30 = load i8*, i8** %msgbuf.addr, align 8, !dbg !2655, !tbaa !981
  %31 = load i64, i64* %bufsize.addr, align 8, !dbg !2656, !tbaa !1279
  %32 = load i32, i32* %toplevel.addr, align 4, !dbg !2657, !tbaa !998
  %tobool43 = icmp ne i32 %32, 0, !dbg !2657
  %cond = select i1 %tobool43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i32 0, i32 0), !dbg !2657
  %33 = load i32, i32* %n, align 4, !dbg !2658, !tbaa !998
  %34 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !2659, !tbaa !981
  %cmp44 = icmp eq %struct._object* %34, @_Py_NoneStruct, !dbg !2660
  br i1 %cmp44, label %cond.true, label %cond.false, !dbg !2659

cond.true:                                        ; preds = %if.then.41
  br label %cond.end, !dbg !2661

cond.false:                                       ; preds = %if.then.41
  %35 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !2663, !tbaa !981
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1, !dbg !2665
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8, !dbg !2665, !tbaa !1259
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 1, !dbg !2666
  %37 = load i8*, i8** %tp_name, align 8, !dbg !2666, !tbaa !2667
  br label %cond.end, !dbg !2659

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond47 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), %cond.true ], [ %37, %cond.false ], !dbg !2659
  %call48 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %30, i64 %31, i8* %cond, i32 %33, i8* %cond47), !dbg !2668
  %38 = load i8*, i8** %msgbuf.addr, align 8, !dbg !2669, !tbaa !981
  store i8* %38, i8** %retval, !dbg !2670
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.102, !dbg !2670

if.end.49:                                        ; preds = %lor.lhs.false.37
  %39 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !2671, !tbaa !981
  %call50 = call i64 @PySequence_Size(%struct._object* %39), !dbg !2672
  store i64 %call50, i64* %len, align 8, !dbg !2673, !tbaa !1279
  %40 = load i64, i64* %len, align 8, !dbg !2674, !tbaa !1279
  %41 = load i32, i32* %n, align 4, !dbg !2676, !tbaa !998
  %conv51 = sext i32 %41 to i64, !dbg !2676
  %cmp52 = icmp ne i64 %40, %conv51, !dbg !2677
  br i1 %cmp52, label %if.then.54, label %if.end.62, !dbg !2678

if.then.54:                                       ; preds = %if.end.49
  %42 = load i32*, i32** %levels.addr, align 8, !dbg !2679, !tbaa !981
  %arrayidx55 = getelementptr i32, i32* %42, i64 0, !dbg !2679
  store i32 0, i32* %arrayidx55, align 4, !dbg !2681, !tbaa !998
  %43 = load i32, i32* %toplevel.addr, align 4, !dbg !2682, !tbaa !998
  %tobool56 = icmp ne i32 %43, 0, !dbg !2682
  br i1 %tobool56, label %if.then.57, label %if.else.59, !dbg !2684

if.then.57:                                       ; preds = %if.then.54
  %44 = load i8*, i8** %msgbuf.addr, align 8, !dbg !2685, !tbaa !981
  %45 = load i64, i64* %bufsize.addr, align 8, !dbg !2687, !tbaa !1279
  %46 = load i32, i32* %n, align 4, !dbg !2688, !tbaa !998
  %47 = load i64, i64* %len, align 8, !dbg !2689, !tbaa !1279
  %call58 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %44, i64 %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i32 0, i32 0), i32 %46, i64 %47), !dbg !2690
  br label %if.end.61, !dbg !2691

if.else.59:                                       ; preds = %if.then.54
  %48 = load i8*, i8** %msgbuf.addr, align 8, !dbg !2692, !tbaa !981
  %49 = load i64, i64* %bufsize.addr, align 8, !dbg !2694, !tbaa !1279
  %50 = load i32, i32* %n, align 4, !dbg !2695, !tbaa !998
  %51 = load i64, i64* %len, align 8, !dbg !2696, !tbaa !1279
  %call60 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %48, i64 %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i32 0, i32 0), i32 %50, i64 %51), !dbg !2697
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.59, %if.then.57
  %52 = load i8*, i8** %msgbuf.addr, align 8, !dbg !2698, !tbaa !981
  store i8* %52, i8** %retval, !dbg !2699
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.102, !dbg !2699

if.end.62:                                        ; preds = %if.end.49
  %53 = load i8**, i8*** %p_format.addr, align 8, !dbg !2700, !tbaa !981
  %54 = load i8*, i8** %53, align 8, !dbg !2701, !tbaa !981
  store i8* %54, i8** %format, align 8, !dbg !2702, !tbaa !981
  store i32 0, i32* %i, align 4, !dbg !2703, !tbaa !998
  br label %for.cond.63, !dbg !2704

for.cond.63:                                      ; preds = %for.inc, %if.end.62
  %55 = load i32, i32* %i, align 4, !dbg !2705, !tbaa !998
  %56 = load i32, i32* %n, align 4, !dbg !2708, !tbaa !998
  %cmp64 = icmp slt i32 %55, %56, !dbg !2709
  br i1 %cmp64, label %for.body, label %for.end.101, !dbg !2710

for.body:                                         ; preds = %for.cond.63
  %57 = bitcast i8** %msg to i8*, !dbg !2711
  call void @llvm.lifetime.start(i64 8, i8* %57) #2, !dbg !2711
  call void @llvm.dbg.declare(metadata i8** %msg, metadata !650, metadata !985), !dbg !2712
  %58 = bitcast %struct._object** %item to i8*, !dbg !2713
  call void @llvm.lifetime.start(i64 8, i8* %58) #2, !dbg !2713
  call void @llvm.dbg.declare(metadata %struct._object** %item, metadata !654, metadata !985), !dbg !2714
  %59 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !2715, !tbaa !981
  %60 = load i32, i32* %i, align 4, !dbg !2716, !tbaa !998
  %conv66 = sext i32 %60 to i64, !dbg !2716
  %call67 = call %struct._object* @PySequence_GetItem(%struct._object* %59, i64 %conv66), !dbg !2717
  store %struct._object* %call67, %struct._object** %item, align 8, !dbg !2718, !tbaa !981
  %61 = load %struct._object*, %struct._object** %item, align 8, !dbg !2719, !tbaa !981
  %cmp68 = icmp eq %struct._object* %61, null, !dbg !2721
  br i1 %cmp68, label %if.then.70, label %if.end.74, !dbg !2722

if.then.70:                                       ; preds = %for.body
  call void @PyErr_Clear(), !dbg !2723
  %62 = load i32, i32* %i, align 4, !dbg !2725, !tbaa !998
  %add = add i32 %62, 1, !dbg !2726
  %63 = load i32*, i32** %levels.addr, align 8, !dbg !2727, !tbaa !981
  %arrayidx71 = getelementptr i32, i32* %63, i64 0, !dbg !2727
  store i32 %add, i32* %arrayidx71, align 4, !dbg !2728, !tbaa !998
  %64 = load i32*, i32** %levels.addr, align 8, !dbg !2729, !tbaa !981
  %arrayidx72 = getelementptr i32, i32* %64, i64 1, !dbg !2729
  store i32 0, i32* %arrayidx72, align 4, !dbg !2730, !tbaa !998
  %65 = load i8*, i8** %msgbuf.addr, align 8, !dbg !2731, !tbaa !981
  %66 = load i64, i64* %bufsize.addr, align 8, !dbg !2732, !tbaa !1279
  %call73 = call i8* @strncpy(i8* %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0), i64 %66) #2, !dbg !2733
  %67 = load i8*, i8** %msgbuf.addr, align 8, !dbg !2734, !tbaa !981
  store i8* %67, i8** %retval, !dbg !2735
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.96, !dbg !2735

if.end.74:                                        ; preds = %for.body
  %68 = load %struct._object*, %struct._object** %item, align 8, !dbg !2736, !tbaa !981
  %69 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !2737, !tbaa !981
  %70 = load i32, i32* %flags.addr, align 4, !dbg !2738, !tbaa !998
  %71 = load i32*, i32** %levels.addr, align 8, !dbg !2739, !tbaa !981
  %add.ptr = getelementptr i32, i32* %71, i64 1, !dbg !2740
  %72 = load i8*, i8** %msgbuf.addr, align 8, !dbg !2741, !tbaa !981
  %73 = load i64, i64* %bufsize.addr, align 8, !dbg !2742, !tbaa !1279
  %74 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8, !dbg !2743, !tbaa !981
  %call75 = call i8* @convertitem(%struct._object* %68, i8** %format, [1 x %struct.__va_list_tag]* %69, i32 %70, i32* %add.ptr, i8* %72, i64 %73, %struct.freelist_t* %74), !dbg !2744
  store i8* %call75, i8** %msg, align 8, !dbg !2745, !tbaa !981
  br label %do.body, !dbg !2746

do.body:                                          ; preds = %if.end.74
  %75 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2747
  call void @llvm.lifetime.start(i64 8, i8* %75) #2, !dbg !2747
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !655, metadata !985), !dbg !2749
  %76 = load %struct._object*, %struct._object** %item, align 8, !dbg !2750, !tbaa !981
  store %struct._object* %76, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2749, !tbaa !981
  %77 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2751, !tbaa !981
  %cmp76 = icmp ne %struct._object* %77, null, !dbg !2752
  br i1 %cmp76, label %if.then.78, label %if.end.87, !dbg !2753

if.then.78:                                       ; preds = %do.body
  br label %do.body.79, !dbg !2754

do.body.79:                                       ; preds = %if.then.78
  %78 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2756
  call void @llvm.lifetime.start(i64 8, i8* %78) #2, !dbg !2756
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !657, metadata !985), !dbg !2758
  %79 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2759, !tbaa !981
  store %struct._object* %79, %struct._object** %_py_decref_tmp, align 8, !dbg !2758, !tbaa !981
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2760, !tbaa !981
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 0, !dbg !2762
  %81 = load i64, i64* %ob_refcnt, align 8, !dbg !2763, !tbaa !2764
  %dec80 = add i64 %81, -1, !dbg !2763
  store i64 %dec80, i64* %ob_refcnt, align 8, !dbg !2763, !tbaa !2764
  %cmp81 = icmp ne i64 %dec80, 0, !dbg !2765
  br i1 %cmp81, label %if.then.83, label %if.else.84, !dbg !2766

if.then.83:                                       ; preds = %do.body.79
  br label %if.end.86, !dbg !2767

if.else.84:                                       ; preds = %do.body.79
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2769, !tbaa !981
  %ob_type85 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 1, !dbg !2771
  %83 = load %struct._typeobject*, %struct._typeobject** %ob_type85, align 8, !dbg !2771, !tbaa !1259
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %83, i32 0, i32 4, !dbg !2772
  %84 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2772, !tbaa !2773
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2774, !tbaa !981
  call void %84(%struct._object* %85), !dbg !2775
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.84, %if.then.83
  %86 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2776
  call void @llvm.lifetime.end(i64 8, i8* %86) #2, !dbg !2776
  br label %do.cond, !dbg !2778

do.cond:                                          ; preds = %if.end.86
  br label %do.end, !dbg !2779

do.end:                                           ; preds = %do.cond
  br label %if.end.87, !dbg !2781

if.end.87:                                        ; preds = %do.end, %do.body
  %87 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2783
  call void @llvm.lifetime.end(i64 8, i8* %87) #2, !dbg !2783
  br label %do.cond.88, !dbg !2786

do.cond.88:                                       ; preds = %if.end.87
  br label %do.end.89, !dbg !2787

do.end.89:                                        ; preds = %do.cond.88
  %88 = load i8*, i8** %msg, align 8, !dbg !2789, !tbaa !981
  %cmp90 = icmp ne i8* %88, null, !dbg !2791
  br i1 %cmp90, label %if.then.92, label %if.end.95, !dbg !2792

if.then.92:                                       ; preds = %do.end.89
  %89 = load i32, i32* %i, align 4, !dbg !2793, !tbaa !998
  %add93 = add i32 %89, 1, !dbg !2795
  %90 = load i32*, i32** %levels.addr, align 8, !dbg !2796, !tbaa !981
  %arrayidx94 = getelementptr i32, i32* %90, i64 0, !dbg !2796
  store i32 %add93, i32* %arrayidx94, align 4, !dbg !2797, !tbaa !998
  %91 = load i8*, i8** %msg, align 8, !dbg !2798, !tbaa !981
  store i8* %91, i8** %retval, !dbg !2799
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.96, !dbg !2799

if.end.95:                                        ; preds = %do.end.89
  store i32 0, i32* %cleanup.dest.slot, !dbg !2800
  br label %cleanup.96, !dbg !2800

cleanup.96:                                       ; preds = %if.end.95, %if.then.92, %if.then.70
  %92 = bitcast %struct._object** %item to i8*, !dbg !2801
  call void @llvm.lifetime.end(i64 8, i8* %92) #2, !dbg !2801
  %93 = bitcast i8** %msg to i8*, !dbg !2801
  call void @llvm.lifetime.end(i64 8, i8* %93) #2, !dbg !2801
  %cleanup.dest.98 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.98, label %cleanup.102 [
    i32 0, label %cleanup.cont.99
  ]

cleanup.cont.99:                                  ; preds = %cleanup.96
  br label %for.inc, !dbg !2802

for.inc:                                          ; preds = %cleanup.cont.99
  %94 = load i32, i32* %i, align 4, !dbg !2803, !tbaa !998
  %inc100 = add i32 %94, 1, !dbg !2803
  store i32 %inc100, i32* %i, align 4, !dbg !2803, !tbaa !998
  br label %for.cond.63, !dbg !2804

for.end.101:                                      ; preds = %for.cond.63
  %95 = load i8*, i8** %format, align 8, !dbg !2805, !tbaa !981
  %96 = load i8**, i8*** %p_format.addr, align 8, !dbg !2806, !tbaa !981
  store i8* %95, i8** %96, align 8, !dbg !2807, !tbaa !981
  store i8* null, i8** %retval, !dbg !2808
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.102, !dbg !2808

cleanup.102:                                      ; preds = %for.end.101, %cleanup.96, %if.end.61, %cond.end
  %97 = bitcast i64* %len to i8*, !dbg !2809
  call void @llvm.lifetime.end(i64 8, i8* %97) #2, !dbg !2809
  %98 = bitcast i32* %i to i8*, !dbg !2809
  call void @llvm.lifetime.end(i64 4, i8* %98) #2, !dbg !2809
  %99 = bitcast i8** %format to i8*, !dbg !2809
  call void @llvm.lifetime.end(i64 8, i8* %99) #2, !dbg !2809
  %100 = bitcast i32* %n to i8*, !dbg !2809
  call void @llvm.lifetime.end(i64 4, i8* %100) #2, !dbg !2809
  %101 = bitcast i32* %level to i8*, !dbg !2809
  call void @llvm.lifetime.end(i64 4, i8* %101) #2, !dbg !2809
  %102 = load i8*, i8** %retval, !dbg !2809
  ret i8* %102, !dbg !2809

unreachable:                                      ; preds = %cleanup
  unreachable
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
  %cleanup.dest.slot = alloca i32
  %p20 = alloca i8*, align 8
  %ival33 = alloca i64, align 8
  %p52 = alloca i16*, align 8
  %ival65 = alloca i64, align 8
  %p94 = alloca i16*, align 8
  %ival107 = alloca i64, align 8
  %p126 = alloca i32*, align 8
  %ival139 = alloca i64, align 8
  %p168 = alloca i32*, align 8
  %ival181 = alloca i32, align 4
  %iobj = alloca %struct._object*, align 8
  %p200 = alloca i64*, align 8
  %ival213 = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %p241 = alloca i64*, align 8
  %ival254 = alloca i64, align 8
  %p272 = alloca i64*, align 8
  %ival285 = alloca i64, align 8
  %p298 = alloca i64*, align 8
  %ival311 = alloca i64, align 8
  %p329 = alloca i64*, align 8
  %ival342 = alloca i64, align 8
  %p357 = alloca float*, align 8
  %dval = alloca double, align 8
  %p381 = alloca double*, align 8
  %dval394 = alloca double, align 8
  %p405 = alloca %struct.Py_complex*, align 8
  %cval = alloca %struct.Py_complex, align 8
  %coerce = alloca %struct.Py_complex, align 8
  %p428 = alloca i8*, align 8
  %p473 = alloca i32*, align 8
  %kind = alloca i32, align 4
  %data = alloca i8*, align 8
  %p554 = alloca i32*, align 8
  %val = alloca i32, align 4
  %p582 = alloca i8**, align 8
  %buf = alloca i8*, align 8
  %count = alloca i64, align 8
  %q = alloca i32*, align 8
  %q2 = alloca i64*, align 8
  %p683 = alloca %struct.bufferinfo*, align 8
  %len = alloca i64, align 8
  %buf722 = alloca i8*, align 8
  %p748 = alloca i8**, align 8
  %q761 = alloca i32*, align 8
  %q2762 = alloca i64*, align 8
  %len811 = alloca i64, align 8
  %buf833 = alloca i8*, align 8
  %count834 = alloca i64, align 8
  %p865 = alloca i8**, align 8
  %len878 = alloca i64, align 8
  %p930 = alloca i32**, align 8
  %q947 = alloca i32*, align 8
  %q2948 = alloca i64*, align 8
  %len997 = alloca i64, align 8
  %len1041 = alloca i64, align 8
  %buffer = alloca i8**, align 8
  %encoding = alloca i8*, align 8
  %s = alloca %struct._object*, align 8
  %recode_strings = alloca i32, align 4
  %size = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %u = alloca %struct._object*, align 8
  %_py_decref_tmp1148 = alloca %struct._object*, align 8
  %_py_decref_tmp1172 = alloca %struct._object*, align 8
  %q1201 = alloca i32*, align 8
  %q21202 = alloca i64*, align 8
  %_py_decref_tmp1240 = alloca %struct._object*, align 8
  %_py_decref_tmp1269 = alloca %struct._object*, align 8
  %_py_decref_tmp1287 = alloca %struct._object*, align 8
  %_py_decref_tmp1314 = alloca %struct._object*, align 8
  %_py_decref_tmp1351 = alloca %struct._object*, align 8
  %_py_decref_tmp1379 = alloca %struct._object*, align 8
  %_py_decref_tmp1397 = alloca %struct._object*, align 8
  %_py_decref_tmp1414 = alloca %struct._object*, align 8
  %p1434 = alloca %struct._object**, align 8
  %p1459 = alloca %struct._object**, align 8
  %p1486 = alloca %struct._object**, align 8
  %type = alloca %struct._typeobject*, align 8
  %p1525 = alloca %struct._object**, align 8
  %convert = alloca i32 (%struct._object*, i8*)*, align 8
  %addr = alloca i8*, align 8
  %res = alloca i32, align 4
  %p1630 = alloca i8**, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !664, metadata !985), !dbg !2810
  store i8** %p_format, i8*** %p_format.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8*** %p_format.addr, metadata !665, metadata !985), !dbg !2811
  store [1 x %struct.__va_list_tag]* %p_va, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]** %p_va.addr, metadata !666, metadata !985), !dbg !2812
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !998
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !667, metadata !985), !dbg !2813
  store i8* %msgbuf, i8** %msgbuf.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8** %msgbuf.addr, metadata !668, metadata !985), !dbg !2814
  store i64 %bufsize, i64* %bufsize.addr, align 8, !tbaa !1279
  call void @llvm.dbg.declare(metadata i64* %bufsize.addr, metadata !669, metadata !985), !dbg !2815
  store %struct.freelist_t* %freelist, %struct.freelist_t** %freelist.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct.freelist_t** %freelist.addr, metadata !670, metadata !985), !dbg !2816
  %0 = bitcast i8** %format to i8*, !dbg !2817
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2817
  call void @llvm.dbg.declare(metadata i8** %format, metadata !671, metadata !985), !dbg !2818
  %1 = load i8**, i8*** %p_format.addr, align 8, !dbg !2819, !tbaa !981
  %2 = load i8*, i8** %1, align 8, !dbg !2820, !tbaa !981
  store i8* %2, i8** %format, align 8, !dbg !2818, !tbaa !981
  call void @llvm.lifetime.start(i64 1, i8* %c) #2, !dbg !2821
  call void @llvm.dbg.declare(metadata i8* %c, metadata !672, metadata !985), !dbg !2822
  %3 = load i8*, i8** %format, align 8, !dbg !2823, !tbaa !981
  %incdec.ptr = getelementptr i8, i8* %3, i32 1, !dbg !2823
  store i8* %incdec.ptr, i8** %format, align 8, !dbg !2823, !tbaa !981
  %4 = load i8, i8* %3, align 1, !dbg !2824, !tbaa !1064
  store i8 %4, i8* %c, align 1, !dbg !2822, !tbaa !1064
  %5 = bitcast i8** %sarg to i8*, !dbg !2825
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !2825
  call void @llvm.dbg.declare(metadata i8** %sarg, metadata !673, metadata !985), !dbg !2826
  %6 = load i8, i8* %c, align 1, !dbg !2827, !tbaa !1064
  %conv = sext i8 %6 to i32, !dbg !2827
  switch i32 %conv, label %sw.default [
    i32 98, label %sw.bb
    i32 66, label %sw.bb.19
    i32 104, label %sw.bb.51
    i32 72, label %sw.bb.93
    i32 105, label %sw.bb.125
    i32 73, label %sw.bb.167
    i32 110, label %sw.bb.199
    i32 108, label %sw.bb.240
    i32 107, label %sw.bb.271
    i32 76, label %sw.bb.297
    i32 75, label %sw.bb.328
    i32 102, label %sw.bb.356
    i32 100, label %sw.bb.380
    i32 68, label %sw.bb.404
    i32 99, label %sw.bb.427
    i32 67, label %sw.bb.472
    i32 112, label %sw.bb.553
    i32 121, label %sw.bb.581
    i32 115, label %sw.bb.678
    i32 122, label %sw.bb.678
    i32 117, label %sw.bb.929
    i32 90, label %sw.bb.929
    i32 101, label %sw.bb.1067
    i32 83, label %sw.bb.1433
    i32 89, label %sw.bb.1458
    i32 85, label %sw.bb.1485
    i32 79, label %sw.bb.1524
    i32 119, label %sw.bb.1629
  ], !dbg !2828

sw.bb:                                            ; preds = %entry
  %7 = bitcast i8** %p to i8*, !dbg !2829
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !2829
  call void @llvm.dbg.declare(metadata i8** %p, metadata !674, metadata !985), !dbg !2830
  %8 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !2831, !tbaa !981
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i32 0, i32 0, !dbg !2832
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay, i32 0, i32 0, !dbg !2833
  %gp_offset = load i32, i32* %gp_offset_p, !dbg !2833
  %fits_in_gp = icmp ule i32 %gp_offset, 40, !dbg !2833
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !2833

vaarg.in_reg:                                     ; preds = %sw.bb
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay, i32 0, i32 3, !dbg !2834
  %reg_save_area = load i8*, i8** %9, !dbg !2834
  %10 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset, !dbg !2834
  %11 = bitcast i8* %10 to i8**, !dbg !2834
  %12 = add i32 %gp_offset, 8, !dbg !2834
  store i32 %12, i32* %gp_offset_p, !dbg !2834
  br label %vaarg.end, !dbg !2834

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay, i32 0, i32 2, !dbg !2836
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, !dbg !2836
  %13 = bitcast i8* %overflow_arg_area to i8**, !dbg !2836
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8, !dbg !2836
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, !dbg !2836
  br label %vaarg.end, !dbg !2836

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %11, %vaarg.in_reg ], [ %13, %vaarg.in_mem ], !dbg !2833
  %14 = load i8*, i8** %vaarg.addr, !dbg !2838
  store i8* %14, i8** %p, align 8, !dbg !2830, !tbaa !981
  %15 = bitcast i64* %ival to i8*, !dbg !2841
  call void @llvm.lifetime.start(i64 8, i8* %15) #2, !dbg !2841
  call void @llvm.dbg.declare(metadata i64* %ival, metadata !677, metadata !985), !dbg !2842
  %16 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !2843, !tbaa !981
  %call = call i32 @float_argument_error(%struct._object* %16), !dbg !2845
  %tobool = icmp ne i32 %call, 0, !dbg !2845
  br i1 %tobool, label %if.then, label %if.end, !dbg !2846

if.then:                                          ; preds = %vaarg.end
  %17 = load i8*, i8** %msgbuf.addr, align 8, !dbg !2847, !tbaa !981
  store i8* %17, i8** %retval, !dbg !2848
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2848

if.end:                                           ; preds = %vaarg.end
  %18 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !2849, !tbaa !981
  %call1 = call i64 @PyLong_AsLong(%struct._object* %18), !dbg !2850
  store i64 %call1, i64* %ival, align 8, !dbg !2851, !tbaa !1279
  %19 = load i64, i64* %ival, align 8, !dbg !2852, !tbaa !1279
  %cmp = icmp eq i64 %19, -1, !dbg !2854
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !2855

land.lhs.true:                                    ; preds = %if.end
  %call3 = call %struct._object* @PyErr_Occurred(), !dbg !2856
  %tobool4 = icmp ne %struct._object* %call3, null, !dbg !2856
  br i1 %tobool4, label %if.then.5, label %if.else, !dbg !2858

if.then.5:                                        ; preds = %land.lhs.true
  %20 = load i8*, i8** %msgbuf.addr, align 8, !dbg !2859, !tbaa !981
  store i8* %20, i8** %retval, !dbg !2860
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2860

if.else:                                          ; preds = %land.lhs.true, %if.end
  %21 = load i64, i64* %ival, align 8, !dbg !2861, !tbaa !1279
  %cmp6 = icmp slt i64 %21, 0, !dbg !2863
  br i1 %cmp6, label %if.then.8, label %if.else.9, !dbg !2864

if.then.8:                                        ; preds = %if.else
  %22 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2865, !tbaa !981
  call void @PyErr_SetString(%struct._object* %22, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.31, i32 0, i32 0)), !dbg !2867
  %23 = load i8*, i8** %msgbuf.addr, align 8, !dbg !2868, !tbaa !981
  store i8* %23, i8** %retval, !dbg !2869
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2869

if.else.9:                                        ; preds = %if.else
  %24 = load i64, i64* %ival, align 8, !dbg !2870, !tbaa !1279
  %cmp10 = icmp sgt i64 %24, 255, !dbg !2872
  br i1 %cmp10, label %if.then.12, label %if.else.13, !dbg !2873

if.then.12:                                       ; preds = %if.else.9
  %25 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2874, !tbaa !981
  call void @PyErr_SetString(%struct._object* %25, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.32, i32 0, i32 0)), !dbg !2876
  %26 = load i8*, i8** %msgbuf.addr, align 8, !dbg !2877, !tbaa !981
  store i8* %26, i8** %retval, !dbg !2878
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2878

if.else.13:                                       ; preds = %if.else.9
  %27 = load i64, i64* %ival, align 8, !dbg !2879, !tbaa !1279
  %conv14 = trunc i64 %27 to i8, !dbg !2880
  %28 = load i8*, i8** %p, align 8, !dbg !2881, !tbaa !981
  store i8 %conv14, i8* %28, align 1, !dbg !2882, !tbaa !1064
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.13
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2883

cleanup:                                          ; preds = %if.end.17, %if.then.12, %if.then.8, %if.then.5, %if.then
  %29 = bitcast i64* %ival to i8*, !dbg !2884
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !2884
  %30 = bitcast i8** %p to i8*, !dbg !2884
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !2884
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.1669 [
    i32 2, label %sw.epilog
  ]

sw.bb.19:                                         ; preds = %entry
  %31 = bitcast i8** %p20 to i8*, !dbg !2885
  call void @llvm.lifetime.start(i64 8, i8* %31) #2, !dbg !2885
  call void @llvm.dbg.declare(metadata i8** %p20, metadata !678, metadata !985), !dbg !2886
  %32 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !2887, !tbaa !981
  %arraydecay21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %32, i32 0, i32 0, !dbg !2888
  %gp_offset_p22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay21, i32 0, i32 0, !dbg !2889
  %gp_offset23 = load i32, i32* %gp_offset_p22, !dbg !2889
  %fits_in_gp24 = icmp ule i32 %gp_offset23, 40, !dbg !2889
  br i1 %fits_in_gp24, label %vaarg.in_reg.25, label %vaarg.in_mem.27, !dbg !2889

vaarg.in_reg.25:                                  ; preds = %sw.bb.19
  %33 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay21, i32 0, i32 3, !dbg !2890
  %reg_save_area26 = load i8*, i8** %33, !dbg !2890
  %34 = getelementptr i8, i8* %reg_save_area26, i32 %gp_offset23, !dbg !2890
  %35 = bitcast i8* %34 to i8**, !dbg !2890
  %36 = add i32 %gp_offset23, 8, !dbg !2890
  store i32 %36, i32* %gp_offset_p22, !dbg !2890
  br label %vaarg.end.31, !dbg !2890

vaarg.in_mem.27:                                  ; preds = %sw.bb.19
  %overflow_arg_area_p28 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay21, i32 0, i32 2, !dbg !2892
  %overflow_arg_area29 = load i8*, i8** %overflow_arg_area_p28, !dbg !2892
  %37 = bitcast i8* %overflow_arg_area29 to i8**, !dbg !2892
  %overflow_arg_area.next30 = getelementptr i8, i8* %overflow_arg_area29, i32 8, !dbg !2892
  store i8* %overflow_arg_area.next30, i8** %overflow_arg_area_p28, !dbg !2892
  br label %vaarg.end.31, !dbg !2892

vaarg.end.31:                                     ; preds = %vaarg.in_mem.27, %vaarg.in_reg.25
  %vaarg.addr32 = phi i8** [ %35, %vaarg.in_reg.25 ], [ %37, %vaarg.in_mem.27 ], !dbg !2889
  %38 = load i8*, i8** %vaarg.addr32, !dbg !2894
  store i8* %38, i8** %p20, align 8, !dbg !2886, !tbaa !981
  %39 = bitcast i64* %ival33 to i8*, !dbg !2897
  call void @llvm.lifetime.start(i64 8, i8* %39) #2, !dbg !2897
  call void @llvm.dbg.declare(metadata i64* %ival33, metadata !680, metadata !985), !dbg !2898
  %40 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !2899, !tbaa !981
  %call34 = call i32 @float_argument_error(%struct._object* %40), !dbg !2901
  %tobool35 = icmp ne i32 %call34, 0, !dbg !2901
  br i1 %tobool35, label %if.then.36, label %if.end.37, !dbg !2902

if.then.36:                                       ; preds = %vaarg.end.31
  %41 = load i8*, i8** %msgbuf.addr, align 8, !dbg !2903, !tbaa !981
  store i8* %41, i8** %retval, !dbg !2904
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.48, !dbg !2904

if.end.37:                                        ; preds = %vaarg.end.31
  %42 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !2905, !tbaa !981
  %call38 = call i64 @PyLong_AsUnsignedLongMask(%struct._object* %42), !dbg !2906
  store i64 %call38, i64* %ival33, align 8, !dbg !2907, !tbaa !1279
  %43 = load i64, i64* %ival33, align 8, !dbg !2908, !tbaa !1279
  %cmp39 = icmp eq i64 %43, -1, !dbg !2910
  br i1 %cmp39, label %land.lhs.true.41, label %if.else.45, !dbg !2911

land.lhs.true.41:                                 ; preds = %if.end.37
  %call42 = call %struct._object* @PyErr_Occurred(), !dbg !2912
  %tobool43 = icmp ne %struct._object* %call42, null, !dbg !2912
  br i1 %tobool43, label %if.then.44, label %if.else.45, !dbg !2914

if.then.44:                                       ; preds = %land.lhs.true.41
  %44 = load i8*, i8** %msgbuf.addr, align 8, !dbg !2915, !tbaa !981
  store i8* %44, i8** %retval, !dbg !2916
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.48, !dbg !2916

if.else.45:                                       ; preds = %land.lhs.true.41, %if.end.37
  %45 = load i64, i64* %ival33, align 8, !dbg !2917, !tbaa !1279
  %conv46 = trunc i64 %45 to i8, !dbg !2918
  %46 = load i8*, i8** %p20, align 8, !dbg !2919, !tbaa !981
  store i8 %conv46, i8* %46, align 1, !dbg !2920, !tbaa !1064
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.45
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.48, !dbg !2921

cleanup.48:                                       ; preds = %if.end.47, %if.then.44, %if.then.36
  %47 = bitcast i64* %ival33 to i8*, !dbg !2922
  call void @llvm.lifetime.end(i64 8, i8* %47) #2, !dbg !2922
  %48 = bitcast i8** %p20 to i8*, !dbg !2922
  call void @llvm.lifetime.end(i64 8, i8* %48) #2, !dbg !2922
  %cleanup.dest.50 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.50, label %cleanup.1669 [
    i32 2, label %sw.epilog
  ]

sw.bb.51:                                         ; preds = %entry
  %49 = bitcast i16** %p52 to i8*, !dbg !2923
  call void @llvm.lifetime.start(i64 8, i8* %49) #2, !dbg !2923
  call void @llvm.dbg.declare(metadata i16** %p52, metadata !681, metadata !985), !dbg !2924
  %50 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !2925, !tbaa !981
  %arraydecay53 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %50, i32 0, i32 0, !dbg !2926
  %gp_offset_p54 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay53, i32 0, i32 0, !dbg !2927
  %gp_offset55 = load i32, i32* %gp_offset_p54, !dbg !2927
  %fits_in_gp56 = icmp ule i32 %gp_offset55, 40, !dbg !2927
  br i1 %fits_in_gp56, label %vaarg.in_reg.57, label %vaarg.in_mem.59, !dbg !2927

vaarg.in_reg.57:                                  ; preds = %sw.bb.51
  %51 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay53, i32 0, i32 3, !dbg !2928
  %reg_save_area58 = load i8*, i8** %51, !dbg !2928
  %52 = getelementptr i8, i8* %reg_save_area58, i32 %gp_offset55, !dbg !2928
  %53 = bitcast i8* %52 to i16**, !dbg !2928
  %54 = add i32 %gp_offset55, 8, !dbg !2928
  store i32 %54, i32* %gp_offset_p54, !dbg !2928
  br label %vaarg.end.63, !dbg !2928

vaarg.in_mem.59:                                  ; preds = %sw.bb.51
  %overflow_arg_area_p60 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay53, i32 0, i32 2, !dbg !2930
  %overflow_arg_area61 = load i8*, i8** %overflow_arg_area_p60, !dbg !2930
  %55 = bitcast i8* %overflow_arg_area61 to i16**, !dbg !2930
  %overflow_arg_area.next62 = getelementptr i8, i8* %overflow_arg_area61, i32 8, !dbg !2930
  store i8* %overflow_arg_area.next62, i8** %overflow_arg_area_p60, !dbg !2930
  br label %vaarg.end.63, !dbg !2930

vaarg.end.63:                                     ; preds = %vaarg.in_mem.59, %vaarg.in_reg.57
  %vaarg.addr64 = phi i16** [ %53, %vaarg.in_reg.57 ], [ %55, %vaarg.in_mem.59 ], !dbg !2927
  %56 = load i16*, i16** %vaarg.addr64, !dbg !2932
  store i16* %56, i16** %p52, align 8, !dbg !2924, !tbaa !981
  %57 = bitcast i64* %ival65 to i8*, !dbg !2935
  call void @llvm.lifetime.start(i64 8, i8* %57) #2, !dbg !2935
  call void @llvm.dbg.declare(metadata i64* %ival65, metadata !684, metadata !985), !dbg !2936
  %58 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !2937, !tbaa !981
  %call66 = call i32 @float_argument_error(%struct._object* %58), !dbg !2939
  %tobool67 = icmp ne i32 %call66, 0, !dbg !2939
  br i1 %tobool67, label %if.then.68, label %if.end.69, !dbg !2940

if.then.68:                                       ; preds = %vaarg.end.63
  %59 = load i8*, i8** %msgbuf.addr, align 8, !dbg !2941, !tbaa !981
  store i8* %59, i8** %retval, !dbg !2942
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90, !dbg !2942

if.end.69:                                        ; preds = %vaarg.end.63
  %60 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !2943, !tbaa !981
  %call70 = call i64 @PyLong_AsLong(%struct._object* %60), !dbg !2944
  store i64 %call70, i64* %ival65, align 8, !dbg !2945, !tbaa !1279
  %61 = load i64, i64* %ival65, align 8, !dbg !2946, !tbaa !1279
  %cmp71 = icmp eq i64 %61, -1, !dbg !2948
  br i1 %cmp71, label %land.lhs.true.73, label %if.else.77, !dbg !2949

land.lhs.true.73:                                 ; preds = %if.end.69
  %call74 = call %struct._object* @PyErr_Occurred(), !dbg !2950
  %tobool75 = icmp ne %struct._object* %call74, null, !dbg !2950
  br i1 %tobool75, label %if.then.76, label %if.else.77, !dbg !2952

if.then.76:                                       ; preds = %land.lhs.true.73
  %62 = load i8*, i8** %msgbuf.addr, align 8, !dbg !2953, !tbaa !981
  store i8* %62, i8** %retval, !dbg !2954
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90, !dbg !2954

if.else.77:                                       ; preds = %land.lhs.true.73, %if.end.69
  %63 = load i64, i64* %ival65, align 8, !dbg !2955, !tbaa !1279
  %cmp78 = icmp slt i64 %63, -32768, !dbg !2957
  br i1 %cmp78, label %if.then.80, label %if.else.81, !dbg !2958

if.then.80:                                       ; preds = %if.else.77
  %64 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2959, !tbaa !981
  call void @PyErr_SetString(%struct._object* %64, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.33, i32 0, i32 0)), !dbg !2961
  %65 = load i8*, i8** %msgbuf.addr, align 8, !dbg !2962, !tbaa !981
  store i8* %65, i8** %retval, !dbg !2963
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90, !dbg !2963

if.else.81:                                       ; preds = %if.else.77
  %66 = load i64, i64* %ival65, align 8, !dbg !2964, !tbaa !1279
  %cmp82 = icmp sgt i64 %66, 32767, !dbg !2966
  br i1 %cmp82, label %if.then.84, label %if.else.85, !dbg !2967

if.then.84:                                       ; preds = %if.else.81
  %67 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2968, !tbaa !981
  call void @PyErr_SetString(%struct._object* %67, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.34, i32 0, i32 0)), !dbg !2970
  %68 = load i8*, i8** %msgbuf.addr, align 8, !dbg !2971, !tbaa !981
  store i8* %68, i8** %retval, !dbg !2972
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90, !dbg !2972

if.else.85:                                       ; preds = %if.else.81
  %69 = load i64, i64* %ival65, align 8, !dbg !2973, !tbaa !1279
  %conv86 = trunc i64 %69 to i16, !dbg !2974
  %70 = load i16*, i16** %p52, align 8, !dbg !2975, !tbaa !981
  store i16 %conv86, i16* %70, align 2, !dbg !2976, !tbaa !2977
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.85
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.90, !dbg !2979

cleanup.90:                                       ; preds = %if.end.89, %if.then.84, %if.then.80, %if.then.76, %if.then.68
  %71 = bitcast i64* %ival65 to i8*, !dbg !2980
  call void @llvm.lifetime.end(i64 8, i8* %71) #2, !dbg !2980
  %72 = bitcast i16** %p52 to i8*, !dbg !2980
  call void @llvm.lifetime.end(i64 8, i8* %72) #2, !dbg !2980
  %cleanup.dest.92 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.92, label %cleanup.1669 [
    i32 2, label %sw.epilog
  ]

sw.bb.93:                                         ; preds = %entry
  %73 = bitcast i16** %p94 to i8*, !dbg !2981
  call void @llvm.lifetime.start(i64 8, i8* %73) #2, !dbg !2981
  call void @llvm.dbg.declare(metadata i16** %p94, metadata !685, metadata !985), !dbg !2982
  %74 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !2983, !tbaa !981
  %arraydecay95 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %74, i32 0, i32 0, !dbg !2984
  %gp_offset_p96 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay95, i32 0, i32 0, !dbg !2985
  %gp_offset97 = load i32, i32* %gp_offset_p96, !dbg !2985
  %fits_in_gp98 = icmp ule i32 %gp_offset97, 40, !dbg !2985
  br i1 %fits_in_gp98, label %vaarg.in_reg.99, label %vaarg.in_mem.101, !dbg !2985

vaarg.in_reg.99:                                  ; preds = %sw.bb.93
  %75 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay95, i32 0, i32 3, !dbg !2986
  %reg_save_area100 = load i8*, i8** %75, !dbg !2986
  %76 = getelementptr i8, i8* %reg_save_area100, i32 %gp_offset97, !dbg !2986
  %77 = bitcast i8* %76 to i16**, !dbg !2986
  %78 = add i32 %gp_offset97, 8, !dbg !2986
  store i32 %78, i32* %gp_offset_p96, !dbg !2986
  br label %vaarg.end.105, !dbg !2986

vaarg.in_mem.101:                                 ; preds = %sw.bb.93
  %overflow_arg_area_p102 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay95, i32 0, i32 2, !dbg !2988
  %overflow_arg_area103 = load i8*, i8** %overflow_arg_area_p102, !dbg !2988
  %79 = bitcast i8* %overflow_arg_area103 to i16**, !dbg !2988
  %overflow_arg_area.next104 = getelementptr i8, i8* %overflow_arg_area103, i32 8, !dbg !2988
  store i8* %overflow_arg_area.next104, i8** %overflow_arg_area_p102, !dbg !2988
  br label %vaarg.end.105, !dbg !2988

vaarg.end.105:                                    ; preds = %vaarg.in_mem.101, %vaarg.in_reg.99
  %vaarg.addr106 = phi i16** [ %77, %vaarg.in_reg.99 ], [ %79, %vaarg.in_mem.101 ], !dbg !2985
  %80 = load i16*, i16** %vaarg.addr106, !dbg !2990
  store i16* %80, i16** %p94, align 8, !dbg !2982, !tbaa !981
  %81 = bitcast i64* %ival107 to i8*, !dbg !2993
  call void @llvm.lifetime.start(i64 8, i8* %81) #2, !dbg !2993
  call void @llvm.dbg.declare(metadata i64* %ival107, metadata !688, metadata !985), !dbg !2994
  %82 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !2995, !tbaa !981
  %call108 = call i32 @float_argument_error(%struct._object* %82), !dbg !2997
  %tobool109 = icmp ne i32 %call108, 0, !dbg !2997
  br i1 %tobool109, label %if.then.110, label %if.end.111, !dbg !2998

if.then.110:                                      ; preds = %vaarg.end.105
  %83 = load i8*, i8** %msgbuf.addr, align 8, !dbg !2999, !tbaa !981
  store i8* %83, i8** %retval, !dbg !3000
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.122, !dbg !3000

if.end.111:                                       ; preds = %vaarg.end.105
  %84 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3001, !tbaa !981
  %call112 = call i64 @PyLong_AsUnsignedLongMask(%struct._object* %84), !dbg !3002
  store i64 %call112, i64* %ival107, align 8, !dbg !3003, !tbaa !1279
  %85 = load i64, i64* %ival107, align 8, !dbg !3004, !tbaa !1279
  %cmp113 = icmp eq i64 %85, -1, !dbg !3006
  br i1 %cmp113, label %land.lhs.true.115, label %if.else.119, !dbg !3007

land.lhs.true.115:                                ; preds = %if.end.111
  %call116 = call %struct._object* @PyErr_Occurred(), !dbg !3008
  %tobool117 = icmp ne %struct._object* %call116, null, !dbg !3008
  br i1 %tobool117, label %if.then.118, label %if.else.119, !dbg !3010

if.then.118:                                      ; preds = %land.lhs.true.115
  %86 = load i8*, i8** %msgbuf.addr, align 8, !dbg !3011, !tbaa !981
  store i8* %86, i8** %retval, !dbg !3012
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.122, !dbg !3012

if.else.119:                                      ; preds = %land.lhs.true.115, %if.end.111
  %87 = load i64, i64* %ival107, align 8, !dbg !3013, !tbaa !1279
  %conv120 = trunc i64 %87 to i16, !dbg !3014
  %88 = load i16*, i16** %p94, align 8, !dbg !3015, !tbaa !981
  store i16 %conv120, i16* %88, align 2, !dbg !3016, !tbaa !2977
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.119
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.122, !dbg !3017

cleanup.122:                                      ; preds = %if.end.121, %if.then.118, %if.then.110
  %89 = bitcast i64* %ival107 to i8*, !dbg !3018
  call void @llvm.lifetime.end(i64 8, i8* %89) #2, !dbg !3018
  %90 = bitcast i16** %p94 to i8*, !dbg !3018
  call void @llvm.lifetime.end(i64 8, i8* %90) #2, !dbg !3018
  %cleanup.dest.124 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.124, label %cleanup.1669 [
    i32 2, label %sw.epilog
  ]

sw.bb.125:                                        ; preds = %entry
  %91 = bitcast i32** %p126 to i8*, !dbg !3019
  call void @llvm.lifetime.start(i64 8, i8* %91) #2, !dbg !3019
  call void @llvm.dbg.declare(metadata i32** %p126, metadata !689, metadata !985), !dbg !3020
  %92 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !3021, !tbaa !981
  %arraydecay127 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %92, i32 0, i32 0, !dbg !3022
  %gp_offset_p128 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay127, i32 0, i32 0, !dbg !3023
  %gp_offset129 = load i32, i32* %gp_offset_p128, !dbg !3023
  %fits_in_gp130 = icmp ule i32 %gp_offset129, 40, !dbg !3023
  br i1 %fits_in_gp130, label %vaarg.in_reg.131, label %vaarg.in_mem.133, !dbg !3023

vaarg.in_reg.131:                                 ; preds = %sw.bb.125
  %93 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay127, i32 0, i32 3, !dbg !3024
  %reg_save_area132 = load i8*, i8** %93, !dbg !3024
  %94 = getelementptr i8, i8* %reg_save_area132, i32 %gp_offset129, !dbg !3024
  %95 = bitcast i8* %94 to i32**, !dbg !3024
  %96 = add i32 %gp_offset129, 8, !dbg !3024
  store i32 %96, i32* %gp_offset_p128, !dbg !3024
  br label %vaarg.end.137, !dbg !3024

vaarg.in_mem.133:                                 ; preds = %sw.bb.125
  %overflow_arg_area_p134 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay127, i32 0, i32 2, !dbg !3026
  %overflow_arg_area135 = load i8*, i8** %overflow_arg_area_p134, !dbg !3026
  %97 = bitcast i8* %overflow_arg_area135 to i32**, !dbg !3026
  %overflow_arg_area.next136 = getelementptr i8, i8* %overflow_arg_area135, i32 8, !dbg !3026
  store i8* %overflow_arg_area.next136, i8** %overflow_arg_area_p134, !dbg !3026
  br label %vaarg.end.137, !dbg !3026

vaarg.end.137:                                    ; preds = %vaarg.in_mem.133, %vaarg.in_reg.131
  %vaarg.addr138 = phi i32** [ %95, %vaarg.in_reg.131 ], [ %97, %vaarg.in_mem.133 ], !dbg !3023
  %98 = load i32*, i32** %vaarg.addr138, !dbg !3028
  store i32* %98, i32** %p126, align 8, !dbg !3020, !tbaa !981
  %99 = bitcast i64* %ival139 to i8*, !dbg !3031
  call void @llvm.lifetime.start(i64 8, i8* %99) #2, !dbg !3031
  call void @llvm.dbg.declare(metadata i64* %ival139, metadata !691, metadata !985), !dbg !3032
  %100 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3033, !tbaa !981
  %call140 = call i32 @float_argument_error(%struct._object* %100), !dbg !3035
  %tobool141 = icmp ne i32 %call140, 0, !dbg !3035
  br i1 %tobool141, label %if.then.142, label %if.end.143, !dbg !3036

if.then.142:                                      ; preds = %vaarg.end.137
  %101 = load i8*, i8** %msgbuf.addr, align 8, !dbg !3037, !tbaa !981
  store i8* %101, i8** %retval, !dbg !3038
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.164, !dbg !3038

if.end.143:                                       ; preds = %vaarg.end.137
  %102 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3039, !tbaa !981
  %call144 = call i64 @PyLong_AsLong(%struct._object* %102), !dbg !3040
  store i64 %call144, i64* %ival139, align 8, !dbg !3041, !tbaa !1279
  %103 = load i64, i64* %ival139, align 8, !dbg !3042, !tbaa !1279
  %cmp145 = icmp eq i64 %103, -1, !dbg !3044
  br i1 %cmp145, label %land.lhs.true.147, label %if.else.151, !dbg !3045

land.lhs.true.147:                                ; preds = %if.end.143
  %call148 = call %struct._object* @PyErr_Occurred(), !dbg !3046
  %tobool149 = icmp ne %struct._object* %call148, null, !dbg !3046
  br i1 %tobool149, label %if.then.150, label %if.else.151, !dbg !3048

if.then.150:                                      ; preds = %land.lhs.true.147
  %104 = load i8*, i8** %msgbuf.addr, align 8, !dbg !3049, !tbaa !981
  store i8* %104, i8** %retval, !dbg !3050
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.164, !dbg !3050

if.else.151:                                      ; preds = %land.lhs.true.147, %if.end.143
  %105 = load i64, i64* %ival139, align 8, !dbg !3051, !tbaa !1279
  %cmp152 = icmp sgt i64 %105, 2147483647, !dbg !3053
  br i1 %cmp152, label %if.then.154, label %if.else.155, !dbg !3054

if.then.154:                                      ; preds = %if.else.151
  %106 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !3055, !tbaa !981
  call void @PyErr_SetString(%struct._object* %106, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.35, i32 0, i32 0)), !dbg !3057
  %107 = load i8*, i8** %msgbuf.addr, align 8, !dbg !3058, !tbaa !981
  store i8* %107, i8** %retval, !dbg !3059
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.164, !dbg !3059

if.else.155:                                      ; preds = %if.else.151
  %108 = load i64, i64* %ival139, align 8, !dbg !3060, !tbaa !1279
  %cmp156 = icmp slt i64 %108, -2147483648, !dbg !3062
  br i1 %cmp156, label %if.then.158, label %if.else.159, !dbg !3063

if.then.158:                                      ; preds = %if.else.155
  %109 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !3064, !tbaa !981
  call void @PyErr_SetString(%struct._object* %109, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i32 0, i32 0)), !dbg !3066
  %110 = load i8*, i8** %msgbuf.addr, align 8, !dbg !3067, !tbaa !981
  store i8* %110, i8** %retval, !dbg !3068
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.164, !dbg !3068

if.else.159:                                      ; preds = %if.else.155
  %111 = load i64, i64* %ival139, align 8, !dbg !3069, !tbaa !1279
  %conv160 = trunc i64 %111 to i32, !dbg !3069
  %112 = load i32*, i32** %p126, align 8, !dbg !3070, !tbaa !981
  store i32 %conv160, i32* %112, align 4, !dbg !3071, !tbaa !998
  br label %if.end.161

if.end.161:                                       ; preds = %if.else.159
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.164, !dbg !3072

cleanup.164:                                      ; preds = %if.end.163, %if.then.158, %if.then.154, %if.then.150, %if.then.142
  %113 = bitcast i64* %ival139 to i8*, !dbg !3073
  call void @llvm.lifetime.end(i64 8, i8* %113) #2, !dbg !3073
  %114 = bitcast i32** %p126 to i8*, !dbg !3073
  call void @llvm.lifetime.end(i64 8, i8* %114) #2, !dbg !3073
  %cleanup.dest.166 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.166, label %cleanup.1669 [
    i32 2, label %sw.epilog
  ]

sw.bb.167:                                        ; preds = %entry
  %115 = bitcast i32** %p168 to i8*, !dbg !3074
  call void @llvm.lifetime.start(i64 8, i8* %115) #2, !dbg !3074
  call void @llvm.dbg.declare(metadata i32** %p168, metadata !692, metadata !985), !dbg !3075
  %116 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !3076, !tbaa !981
  %arraydecay169 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %116, i32 0, i32 0, !dbg !3077
  %gp_offset_p170 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay169, i32 0, i32 0, !dbg !3078
  %gp_offset171 = load i32, i32* %gp_offset_p170, !dbg !3078
  %fits_in_gp172 = icmp ule i32 %gp_offset171, 40, !dbg !3078
  br i1 %fits_in_gp172, label %vaarg.in_reg.173, label %vaarg.in_mem.175, !dbg !3078

vaarg.in_reg.173:                                 ; preds = %sw.bb.167
  %117 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay169, i32 0, i32 3, !dbg !3079
  %reg_save_area174 = load i8*, i8** %117, !dbg !3079
  %118 = getelementptr i8, i8* %reg_save_area174, i32 %gp_offset171, !dbg !3079
  %119 = bitcast i8* %118 to i32**, !dbg !3079
  %120 = add i32 %gp_offset171, 8, !dbg !3079
  store i32 %120, i32* %gp_offset_p170, !dbg !3079
  br label %vaarg.end.179, !dbg !3079

vaarg.in_mem.175:                                 ; preds = %sw.bb.167
  %overflow_arg_area_p176 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay169, i32 0, i32 2, !dbg !3081
  %overflow_arg_area177 = load i8*, i8** %overflow_arg_area_p176, !dbg !3081
  %121 = bitcast i8* %overflow_arg_area177 to i32**, !dbg !3081
  %overflow_arg_area.next178 = getelementptr i8, i8* %overflow_arg_area177, i32 8, !dbg !3081
  store i8* %overflow_arg_area.next178, i8** %overflow_arg_area_p176, !dbg !3081
  br label %vaarg.end.179, !dbg !3081

vaarg.end.179:                                    ; preds = %vaarg.in_mem.175, %vaarg.in_reg.173
  %vaarg.addr180 = phi i32** [ %119, %vaarg.in_reg.173 ], [ %121, %vaarg.in_mem.175 ], !dbg !3078
  %122 = load i32*, i32** %vaarg.addr180, !dbg !3083
  store i32* %122, i32** %p168, align 8, !dbg !3075, !tbaa !981
  %123 = bitcast i32* %ival181 to i8*, !dbg !3086
  call void @llvm.lifetime.start(i64 4, i8* %123) #2, !dbg !3086
  call void @llvm.dbg.declare(metadata i32* %ival181, metadata !695, metadata !985), !dbg !3087
  %124 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3088, !tbaa !981
  %call182 = call i32 @float_argument_error(%struct._object* %124), !dbg !3090
  %tobool183 = icmp ne i32 %call182, 0, !dbg !3090
  br i1 %tobool183, label %if.then.184, label %if.end.185, !dbg !3091

if.then.184:                                      ; preds = %vaarg.end.179
  %125 = load i8*, i8** %msgbuf.addr, align 8, !dbg !3092, !tbaa !981
  store i8* %125, i8** %retval, !dbg !3093
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.196, !dbg !3093

if.end.185:                                       ; preds = %vaarg.end.179
  %126 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3094, !tbaa !981
  %call186 = call i64 @PyLong_AsUnsignedLongMask(%struct._object* %126), !dbg !3095
  %conv187 = trunc i64 %call186 to i32, !dbg !3096
  store i32 %conv187, i32* %ival181, align 4, !dbg !3097, !tbaa !998
  %127 = load i32, i32* %ival181, align 4, !dbg !3098, !tbaa !998
  %cmp188 = icmp eq i32 %127, -1, !dbg !3100
  br i1 %cmp188, label %land.lhs.true.190, label %if.else.194, !dbg !3101

land.lhs.true.190:                                ; preds = %if.end.185
  %call191 = call %struct._object* @PyErr_Occurred(), !dbg !3102
  %tobool192 = icmp ne %struct._object* %call191, null, !dbg !3102
  br i1 %tobool192, label %if.then.193, label %if.else.194, !dbg !3104

if.then.193:                                      ; preds = %land.lhs.true.190
  %128 = load i8*, i8** %msgbuf.addr, align 8, !dbg !3105, !tbaa !981
  store i8* %128, i8** %retval, !dbg !3106
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.196, !dbg !3106

if.else.194:                                      ; preds = %land.lhs.true.190, %if.end.185
  %129 = load i32, i32* %ival181, align 4, !dbg !3107, !tbaa !998
  %130 = load i32*, i32** %p168, align 8, !dbg !3108, !tbaa !981
  store i32 %129, i32* %130, align 4, !dbg !3109, !tbaa !998
  br label %if.end.195

if.end.195:                                       ; preds = %if.else.194
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.196, !dbg !3110

cleanup.196:                                      ; preds = %if.end.195, %if.then.193, %if.then.184
  %131 = bitcast i32* %ival181 to i8*, !dbg !3111
  call void @llvm.lifetime.end(i64 4, i8* %131) #2, !dbg !3111
  %132 = bitcast i32** %p168 to i8*, !dbg !3111
  call void @llvm.lifetime.end(i64 8, i8* %132) #2, !dbg !3111
  %cleanup.dest.198 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.198, label %cleanup.1669 [
    i32 2, label %sw.epilog
  ]

sw.bb.199:                                        ; preds = %entry
  %133 = bitcast %struct._object** %iobj to i8*, !dbg !3112
  call void @llvm.lifetime.start(i64 8, i8* %133) #2, !dbg !3112
  call void @llvm.dbg.declare(metadata %struct._object** %iobj, metadata !696, metadata !985), !dbg !3113
  %134 = bitcast i64** %p200 to i8*, !dbg !3114
  call void @llvm.lifetime.start(i64 8, i8* %134) #2, !dbg !3114
  call void @llvm.dbg.declare(metadata i64** %p200, metadata !698, metadata !985), !dbg !3115
  %135 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !3116, !tbaa !981
  %arraydecay201 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %135, i32 0, i32 0, !dbg !3117
  %gp_offset_p202 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay201, i32 0, i32 0, !dbg !3118
  %gp_offset203 = load i32, i32* %gp_offset_p202, !dbg !3118
  %fits_in_gp204 = icmp ule i32 %gp_offset203, 40, !dbg !3118
  br i1 %fits_in_gp204, label %vaarg.in_reg.205, label %vaarg.in_mem.207, !dbg !3118

vaarg.in_reg.205:                                 ; preds = %sw.bb.199
  %136 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay201, i32 0, i32 3, !dbg !3119
  %reg_save_area206 = load i8*, i8** %136, !dbg !3119
  %137 = getelementptr i8, i8* %reg_save_area206, i32 %gp_offset203, !dbg !3119
  %138 = bitcast i8* %137 to i64**, !dbg !3119
  %139 = add i32 %gp_offset203, 8, !dbg !3119
  store i32 %139, i32* %gp_offset_p202, !dbg !3119
  br label %vaarg.end.211, !dbg !3119

vaarg.in_mem.207:                                 ; preds = %sw.bb.199
  %overflow_arg_area_p208 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay201, i32 0, i32 2, !dbg !3121
  %overflow_arg_area209 = load i8*, i8** %overflow_arg_area_p208, !dbg !3121
  %140 = bitcast i8* %overflow_arg_area209 to i64**, !dbg !3121
  %overflow_arg_area.next210 = getelementptr i8, i8* %overflow_arg_area209, i32 8, !dbg !3121
  store i8* %overflow_arg_area.next210, i8** %overflow_arg_area_p208, !dbg !3121
  br label %vaarg.end.211, !dbg !3121

vaarg.end.211:                                    ; preds = %vaarg.in_mem.207, %vaarg.in_reg.205
  %vaarg.addr212 = phi i64** [ %138, %vaarg.in_reg.205 ], [ %140, %vaarg.in_mem.207 ], !dbg !3118
  %141 = load i64*, i64** %vaarg.addr212, !dbg !3123
  store i64* %141, i64** %p200, align 8, !dbg !3115, !tbaa !981
  %142 = bitcast i64* %ival213 to i8*, !dbg !3126
  call void @llvm.lifetime.start(i64 8, i8* %142) #2, !dbg !3126
  call void @llvm.dbg.declare(metadata i64* %ival213, metadata !699, metadata !985), !dbg !3127
  store i64 -1, i64* %ival213, align 8, !dbg !3127, !tbaa !1279
  %143 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3128, !tbaa !981
  %call214 = call i32 @float_argument_error(%struct._object* %143), !dbg !3130
  %tobool215 = icmp ne i32 %call214, 0, !dbg !3130
  br i1 %tobool215, label %if.then.216, label %if.end.217, !dbg !3131

if.then.216:                                      ; preds = %vaarg.end.211
  %144 = load i8*, i8** %msgbuf.addr, align 8, !dbg !3132, !tbaa !981
  store i8* %144, i8** %retval, !dbg !3133
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.236, !dbg !3133

if.end.217:                                       ; preds = %vaarg.end.211
  %145 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3134, !tbaa !981
  %call218 = call %struct._object* @PyNumber_Index(%struct._object* %145), !dbg !3135
  store %struct._object* %call218, %struct._object** %iobj, align 8, !dbg !3136, !tbaa !981
  %146 = load %struct._object*, %struct._object** %iobj, align 8, !dbg !3137, !tbaa !981
  %cmp219 = icmp ne %struct._object* %146, null, !dbg !3138
  br i1 %cmp219, label %if.then.221, label %if.end.228, !dbg !3139

if.then.221:                                      ; preds = %if.end.217
  %147 = load %struct._object*, %struct._object** %iobj, align 8, !dbg !3140, !tbaa !981
  %call222 = call i64 @PyLong_AsSsize_t(%struct._object* %147), !dbg !3141
  store i64 %call222, i64* %ival213, align 8, !dbg !3142, !tbaa !1279
  br label %do.body, !dbg !3143

do.body:                                          ; preds = %if.then.221
  %148 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3144
  call void @llvm.lifetime.start(i64 8, i8* %148) #2, !dbg !3144
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !700, metadata !985), !dbg !3146
  %149 = load %struct._object*, %struct._object** %iobj, align 8, !dbg !3147, !tbaa !981
  store %struct._object* %149, %struct._object** %_py_decref_tmp, align 8, !dbg !3146, !tbaa !981
  %150 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3148, !tbaa !981
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %150, i32 0, i32 0, !dbg !3150
  %151 = load i64, i64* %ob_refcnt, align 8, !dbg !3151, !tbaa !2764
  %dec = add i64 %151, -1, !dbg !3151
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3151, !tbaa !2764
  %cmp223 = icmp ne i64 %dec, 0, !dbg !3152
  br i1 %cmp223, label %if.then.225, label %if.else.226, !dbg !3153

if.then.225:                                      ; preds = %do.body
  br label %if.end.227, !dbg !3154

if.else.226:                                      ; preds = %do.body
  %152 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3156, !tbaa !981
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %152, i32 0, i32 1, !dbg !3158
  %153 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3158, !tbaa !1259
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %153, i32 0, i32 4, !dbg !3159
  %154 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3159, !tbaa !2773
  %155 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3160, !tbaa !981
  call void %154(%struct._object* %155), !dbg !3161
  br label %if.end.227

if.end.227:                                       ; preds = %if.else.226, %if.then.225
  %156 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3162
  call void @llvm.lifetime.end(i64 8, i8* %156) #2, !dbg !3162
  br label %do.cond, !dbg !3164

do.cond:                                          ; preds = %if.end.227
  br label %do.end, !dbg !3165

do.end:                                           ; preds = %do.cond
  br label %if.end.228, !dbg !3167

if.end.228:                                       ; preds = %do.end, %if.end.217
  %157 = load i64, i64* %ival213, align 8, !dbg !3168, !tbaa !1279
  %cmp229 = icmp eq i64 %157, -1, !dbg !3170
  br i1 %cmp229, label %land.lhs.true.231, label %if.end.235, !dbg !3171

land.lhs.true.231:                                ; preds = %if.end.228
  %call232 = call %struct._object* @PyErr_Occurred(), !dbg !3172
  %tobool233 = icmp ne %struct._object* %call232, null, !dbg !3172
  br i1 %tobool233, label %if.then.234, label %if.end.235, !dbg !3174

if.then.234:                                      ; preds = %land.lhs.true.231
  %158 = load i8*, i8** %msgbuf.addr, align 8, !dbg !3175, !tbaa !981
  store i8* %158, i8** %retval, !dbg !3176
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.236, !dbg !3176

if.end.235:                                       ; preds = %land.lhs.true.231, %if.end.228
  %159 = load i64, i64* %ival213, align 8, !dbg !3177, !tbaa !1279
  %160 = load i64*, i64** %p200, align 8, !dbg !3178, !tbaa !981
  store i64 %159, i64* %160, align 8, !dbg !3179, !tbaa !1279
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.236, !dbg !3180

cleanup.236:                                      ; preds = %if.end.235, %if.then.234, %if.then.216
  %161 = bitcast i64* %ival213 to i8*, !dbg !3181
  call void @llvm.lifetime.end(i64 8, i8* %161) #2, !dbg !3181
  %162 = bitcast i64** %p200 to i8*, !dbg !3181
  call void @llvm.lifetime.end(i64 8, i8* %162) #2, !dbg !3181
  %163 = bitcast %struct._object** %iobj to i8*, !dbg !3181
  call void @llvm.lifetime.end(i64 8, i8* %163) #2, !dbg !3181
  %cleanup.dest.239 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.239, label %cleanup.1669 [
    i32 2, label %sw.epilog
  ]

sw.bb.240:                                        ; preds = %entry
  %164 = bitcast i64** %p241 to i8*, !dbg !3182
  call void @llvm.lifetime.start(i64 8, i8* %164) #2, !dbg !3182
  call void @llvm.dbg.declare(metadata i64** %p241, metadata !704, metadata !985), !dbg !3183
  %165 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !3184, !tbaa !981
  %arraydecay242 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %165, i32 0, i32 0, !dbg !3185
  %gp_offset_p243 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay242, i32 0, i32 0, !dbg !3186
  %gp_offset244 = load i32, i32* %gp_offset_p243, !dbg !3186
  %fits_in_gp245 = icmp ule i32 %gp_offset244, 40, !dbg !3186
  br i1 %fits_in_gp245, label %vaarg.in_reg.246, label %vaarg.in_mem.248, !dbg !3186

vaarg.in_reg.246:                                 ; preds = %sw.bb.240
  %166 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay242, i32 0, i32 3, !dbg !3187
  %reg_save_area247 = load i8*, i8** %166, !dbg !3187
  %167 = getelementptr i8, i8* %reg_save_area247, i32 %gp_offset244, !dbg !3187
  %168 = bitcast i8* %167 to i64**, !dbg !3187
  %169 = add i32 %gp_offset244, 8, !dbg !3187
  store i32 %169, i32* %gp_offset_p243, !dbg !3187
  br label %vaarg.end.252, !dbg !3187

vaarg.in_mem.248:                                 ; preds = %sw.bb.240
  %overflow_arg_area_p249 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay242, i32 0, i32 2, !dbg !3189
  %overflow_arg_area250 = load i8*, i8** %overflow_arg_area_p249, !dbg !3189
  %170 = bitcast i8* %overflow_arg_area250 to i64**, !dbg !3189
  %overflow_arg_area.next251 = getelementptr i8, i8* %overflow_arg_area250, i32 8, !dbg !3189
  store i8* %overflow_arg_area.next251, i8** %overflow_arg_area_p249, !dbg !3189
  br label %vaarg.end.252, !dbg !3189

vaarg.end.252:                                    ; preds = %vaarg.in_mem.248, %vaarg.in_reg.246
  %vaarg.addr253 = phi i64** [ %168, %vaarg.in_reg.246 ], [ %170, %vaarg.in_mem.248 ], !dbg !3186
  %171 = load i64*, i64** %vaarg.addr253, !dbg !3191
  store i64* %171, i64** %p241, align 8, !dbg !3183, !tbaa !981
  %172 = bitcast i64* %ival254 to i8*, !dbg !3194
  call void @llvm.lifetime.start(i64 8, i8* %172) #2, !dbg !3194
  call void @llvm.dbg.declare(metadata i64* %ival254, metadata !707, metadata !985), !dbg !3195
  %173 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3196, !tbaa !981
  %call255 = call i32 @float_argument_error(%struct._object* %173), !dbg !3198
  %tobool256 = icmp ne i32 %call255, 0, !dbg !3198
  br i1 %tobool256, label %if.then.257, label %if.end.258, !dbg !3199

if.then.257:                                      ; preds = %vaarg.end.252
  %174 = load i8*, i8** %msgbuf.addr, align 8, !dbg !3200, !tbaa !981
  store i8* %174, i8** %retval, !dbg !3201
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.268, !dbg !3201

if.end.258:                                       ; preds = %vaarg.end.252
  %175 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3202, !tbaa !981
  %call259 = call i64 @PyLong_AsLong(%struct._object* %175), !dbg !3203
  store i64 %call259, i64* %ival254, align 8, !dbg !3204, !tbaa !1279
  %176 = load i64, i64* %ival254, align 8, !dbg !3205, !tbaa !1279
  %cmp260 = icmp eq i64 %176, -1, !dbg !3207
  br i1 %cmp260, label %land.lhs.true.262, label %if.else.266, !dbg !3208

land.lhs.true.262:                                ; preds = %if.end.258
  %call263 = call %struct._object* @PyErr_Occurred(), !dbg !3209
  %tobool264 = icmp ne %struct._object* %call263, null, !dbg !3209
  br i1 %tobool264, label %if.then.265, label %if.else.266, !dbg !3211

if.then.265:                                      ; preds = %land.lhs.true.262
  %177 = load i8*, i8** %msgbuf.addr, align 8, !dbg !3212, !tbaa !981
  store i8* %177, i8** %retval, !dbg !3213
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.268, !dbg !3213

if.else.266:                                      ; preds = %land.lhs.true.262, %if.end.258
  %178 = load i64, i64* %ival254, align 8, !dbg !3214, !tbaa !1279
  %179 = load i64*, i64** %p241, align 8, !dbg !3215, !tbaa !981
  store i64 %178, i64* %179, align 8, !dbg !3216, !tbaa !1279
  br label %if.end.267

if.end.267:                                       ; preds = %if.else.266
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.268, !dbg !3217

cleanup.268:                                      ; preds = %if.end.267, %if.then.265, %if.then.257
  %180 = bitcast i64* %ival254 to i8*, !dbg !3218
  call void @llvm.lifetime.end(i64 8, i8* %180) #2, !dbg !3218
  %181 = bitcast i64** %p241 to i8*, !dbg !3218
  call void @llvm.lifetime.end(i64 8, i8* %181) #2, !dbg !3218
  %cleanup.dest.270 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.270, label %cleanup.1669 [
    i32 2, label %sw.epilog
  ]

sw.bb.271:                                        ; preds = %entry
  %182 = bitcast i64** %p272 to i8*, !dbg !3219
  call void @llvm.lifetime.start(i64 8, i8* %182) #2, !dbg !3219
  call void @llvm.dbg.declare(metadata i64** %p272, metadata !708, metadata !985), !dbg !3220
  %183 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !3221, !tbaa !981
  %arraydecay273 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %183, i32 0, i32 0, !dbg !3222
  %gp_offset_p274 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay273, i32 0, i32 0, !dbg !3223
  %gp_offset275 = load i32, i32* %gp_offset_p274, !dbg !3223
  %fits_in_gp276 = icmp ule i32 %gp_offset275, 40, !dbg !3223
  br i1 %fits_in_gp276, label %vaarg.in_reg.277, label %vaarg.in_mem.279, !dbg !3223

vaarg.in_reg.277:                                 ; preds = %sw.bb.271
  %184 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay273, i32 0, i32 3, !dbg !3224
  %reg_save_area278 = load i8*, i8** %184, !dbg !3224
  %185 = getelementptr i8, i8* %reg_save_area278, i32 %gp_offset275, !dbg !3224
  %186 = bitcast i8* %185 to i64**, !dbg !3224
  %187 = add i32 %gp_offset275, 8, !dbg !3224
  store i32 %187, i32* %gp_offset_p274, !dbg !3224
  br label %vaarg.end.283, !dbg !3224

vaarg.in_mem.279:                                 ; preds = %sw.bb.271
  %overflow_arg_area_p280 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay273, i32 0, i32 2, !dbg !3226
  %overflow_arg_area281 = load i8*, i8** %overflow_arg_area_p280, !dbg !3226
  %188 = bitcast i8* %overflow_arg_area281 to i64**, !dbg !3226
  %overflow_arg_area.next282 = getelementptr i8, i8* %overflow_arg_area281, i32 8, !dbg !3226
  store i8* %overflow_arg_area.next282, i8** %overflow_arg_area_p280, !dbg !3226
  br label %vaarg.end.283, !dbg !3226

vaarg.end.283:                                    ; preds = %vaarg.in_mem.279, %vaarg.in_reg.277
  %vaarg.addr284 = phi i64** [ %186, %vaarg.in_reg.277 ], [ %188, %vaarg.in_mem.279 ], !dbg !3223
  %189 = load i64*, i64** %vaarg.addr284, !dbg !3228
  store i64* %189, i64** %p272, align 8, !dbg !3220, !tbaa !981
  %190 = bitcast i64* %ival285 to i8*, !dbg !3231
  call void @llvm.lifetime.start(i64 8, i8* %190) #2, !dbg !3231
  call void @llvm.dbg.declare(metadata i64* %ival285, metadata !711, metadata !985), !dbg !3232
  %191 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3233, !tbaa !981
  %ob_type286 = getelementptr inbounds %struct._object, %struct._object* %191, i32 0, i32 1, !dbg !3235
  %192 = load %struct._typeobject*, %struct._typeobject** %ob_type286, align 8, !dbg !3235, !tbaa !1259
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %192, i32 0, i32 19, !dbg !3236
  %193 = load i64, i64* %tp_flags, align 8, !dbg !3236, !tbaa !1263
  %and = and i64 %193, 16777216, !dbg !3237
  %cmp287 = icmp ne i64 %and, 0, !dbg !3238
  br i1 %cmp287, label %if.then.289, label %if.else.291, !dbg !3239

if.then.289:                                      ; preds = %vaarg.end.283
  %194 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3240, !tbaa !981
  %call290 = call i64 @PyLong_AsUnsignedLongMask(%struct._object* %194), !dbg !3241
  store i64 %call290, i64* %ival285, align 8, !dbg !3242, !tbaa !1279
  br label %if.end.293, !dbg !3243

if.else.291:                                      ; preds = %vaarg.end.283
  %195 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3244, !tbaa !981
  %196 = load i8*, i8** %msgbuf.addr, align 8, !dbg !3245, !tbaa !981
  %197 = load i64, i64* %bufsize.addr, align 8, !dbg !3246, !tbaa !1279
  %call292 = call i8* @converterr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), %struct._object* %195, i8* %196, i64 %197), !dbg !3247
  store i8* %call292, i8** %retval, !dbg !3248
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.294, !dbg !3248

if.end.293:                                       ; preds = %if.then.289
  %198 = load i64, i64* %ival285, align 8, !dbg !3249, !tbaa !1279
  %199 = load i64*, i64** %p272, align 8, !dbg !3250, !tbaa !981
  store i64 %198, i64* %199, align 8, !dbg !3251, !tbaa !1279
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.294, !dbg !3252

cleanup.294:                                      ; preds = %if.end.293, %if.else.291
  %200 = bitcast i64* %ival285 to i8*, !dbg !3253
  call void @llvm.lifetime.end(i64 8, i8* %200) #2, !dbg !3253
  %201 = bitcast i64** %p272 to i8*, !dbg !3253
  call void @llvm.lifetime.end(i64 8, i8* %201) #2, !dbg !3253
  %cleanup.dest.296 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.296, label %cleanup.1669 [
    i32 2, label %sw.epilog
  ]

sw.bb.297:                                        ; preds = %entry
  %202 = bitcast i64** %p298 to i8*, !dbg !3254
  call void @llvm.lifetime.start(i64 8, i8* %202) #2, !dbg !3254
  call void @llvm.dbg.declare(metadata i64** %p298, metadata !712, metadata !985), !dbg !3255
  %203 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !3256, !tbaa !981
  %arraydecay299 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %203, i32 0, i32 0, !dbg !3257
  %gp_offset_p300 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay299, i32 0, i32 0, !dbg !3258
  %gp_offset301 = load i32, i32* %gp_offset_p300, !dbg !3258
  %fits_in_gp302 = icmp ule i32 %gp_offset301, 40, !dbg !3258
  br i1 %fits_in_gp302, label %vaarg.in_reg.303, label %vaarg.in_mem.305, !dbg !3258

vaarg.in_reg.303:                                 ; preds = %sw.bb.297
  %204 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay299, i32 0, i32 3, !dbg !3259
  %reg_save_area304 = load i8*, i8** %204, !dbg !3259
  %205 = getelementptr i8, i8* %reg_save_area304, i32 %gp_offset301, !dbg !3259
  %206 = bitcast i8* %205 to i64**, !dbg !3259
  %207 = add i32 %gp_offset301, 8, !dbg !3259
  store i32 %207, i32* %gp_offset_p300, !dbg !3259
  br label %vaarg.end.309, !dbg !3259

vaarg.in_mem.305:                                 ; preds = %sw.bb.297
  %overflow_arg_area_p306 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay299, i32 0, i32 2, !dbg !3261
  %overflow_arg_area307 = load i8*, i8** %overflow_arg_area_p306, !dbg !3261
  %208 = bitcast i8* %overflow_arg_area307 to i64**, !dbg !3261
  %overflow_arg_area.next308 = getelementptr i8, i8* %overflow_arg_area307, i32 8, !dbg !3261
  store i8* %overflow_arg_area.next308, i8** %overflow_arg_area_p306, !dbg !3261
  br label %vaarg.end.309, !dbg !3261

vaarg.end.309:                                    ; preds = %vaarg.in_mem.305, %vaarg.in_reg.303
  %vaarg.addr310 = phi i64** [ %206, %vaarg.in_reg.303 ], [ %208, %vaarg.in_mem.305 ], !dbg !3258
  %209 = load i64*, i64** %vaarg.addr310, !dbg !3263
  store i64* %209, i64** %p298, align 8, !dbg !3255, !tbaa !981
  %210 = bitcast i64* %ival311 to i8*, !dbg !3266
  call void @llvm.lifetime.start(i64 8, i8* %210) #2, !dbg !3266
  call void @llvm.dbg.declare(metadata i64* %ival311, metadata !715, metadata !985), !dbg !3267
  %211 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3268, !tbaa !981
  %call312 = call i32 @float_argument_error(%struct._object* %211), !dbg !3270
  %tobool313 = icmp ne i32 %call312, 0, !dbg !3270
  br i1 %tobool313, label %if.then.314, label %if.end.315, !dbg !3271

if.then.314:                                      ; preds = %vaarg.end.309
  %212 = load i8*, i8** %msgbuf.addr, align 8, !dbg !3272, !tbaa !981
  store i8* %212, i8** %retval, !dbg !3273
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.325, !dbg !3273

if.end.315:                                       ; preds = %vaarg.end.309
  %213 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3274, !tbaa !981
  %call316 = call i64 @PyLong_AsLongLong(%struct._object* %213), !dbg !3275
  store i64 %call316, i64* %ival311, align 8, !dbg !3276, !tbaa !3277
  %214 = load i64, i64* %ival311, align 8, !dbg !3279, !tbaa !3277
  %cmp317 = icmp eq i64 %214, -1, !dbg !3281
  br i1 %cmp317, label %land.lhs.true.319, label %if.else.323, !dbg !3282

land.lhs.true.319:                                ; preds = %if.end.315
  %call320 = call %struct._object* @PyErr_Occurred(), !dbg !3283
  %tobool321 = icmp ne %struct._object* %call320, null, !dbg !3283
  br i1 %tobool321, label %if.then.322, label %if.else.323, !dbg !3285

if.then.322:                                      ; preds = %land.lhs.true.319
  %215 = load i8*, i8** %msgbuf.addr, align 8, !dbg !3286, !tbaa !981
  store i8* %215, i8** %retval, !dbg !3287
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.325, !dbg !3287

if.else.323:                                      ; preds = %land.lhs.true.319, %if.end.315
  %216 = load i64, i64* %ival311, align 8, !dbg !3288, !tbaa !3277
  %217 = load i64*, i64** %p298, align 8, !dbg !3289, !tbaa !981
  store i64 %216, i64* %217, align 8, !dbg !3290, !tbaa !3277
  br label %if.end.324

if.end.324:                                       ; preds = %if.else.323
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.325, !dbg !3291

cleanup.325:                                      ; preds = %if.end.324, %if.then.322, %if.then.314
  %218 = bitcast i64* %ival311 to i8*, !dbg !3292
  call void @llvm.lifetime.end(i64 8, i8* %218) #2, !dbg !3292
  %219 = bitcast i64** %p298 to i8*, !dbg !3292
  call void @llvm.lifetime.end(i64 8, i8* %219) #2, !dbg !3292
  %cleanup.dest.327 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.327, label %cleanup.1669 [
    i32 2, label %sw.epilog
  ]

sw.bb.328:                                        ; preds = %entry
  %220 = bitcast i64** %p329 to i8*, !dbg !3293
  call void @llvm.lifetime.start(i64 8, i8* %220) #2, !dbg !3293
  call void @llvm.dbg.declare(metadata i64** %p329, metadata !716, metadata !985), !dbg !3294
  %221 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !3295, !tbaa !981
  %arraydecay330 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %221, i32 0, i32 0, !dbg !3296
  %gp_offset_p331 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay330, i32 0, i32 0, !dbg !3297
  %gp_offset332 = load i32, i32* %gp_offset_p331, !dbg !3297
  %fits_in_gp333 = icmp ule i32 %gp_offset332, 40, !dbg !3297
  br i1 %fits_in_gp333, label %vaarg.in_reg.334, label %vaarg.in_mem.336, !dbg !3297

vaarg.in_reg.334:                                 ; preds = %sw.bb.328
  %222 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay330, i32 0, i32 3, !dbg !3298
  %reg_save_area335 = load i8*, i8** %222, !dbg !3298
  %223 = getelementptr i8, i8* %reg_save_area335, i32 %gp_offset332, !dbg !3298
  %224 = bitcast i8* %223 to i64**, !dbg !3298
  %225 = add i32 %gp_offset332, 8, !dbg !3298
  store i32 %225, i32* %gp_offset_p331, !dbg !3298
  br label %vaarg.end.340, !dbg !3298

vaarg.in_mem.336:                                 ; preds = %sw.bb.328
  %overflow_arg_area_p337 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay330, i32 0, i32 2, !dbg !3300
  %overflow_arg_area338 = load i8*, i8** %overflow_arg_area_p337, !dbg !3300
  %226 = bitcast i8* %overflow_arg_area338 to i64**, !dbg !3300
  %overflow_arg_area.next339 = getelementptr i8, i8* %overflow_arg_area338, i32 8, !dbg !3300
  store i8* %overflow_arg_area.next339, i8** %overflow_arg_area_p337, !dbg !3300
  br label %vaarg.end.340, !dbg !3300

vaarg.end.340:                                    ; preds = %vaarg.in_mem.336, %vaarg.in_reg.334
  %vaarg.addr341 = phi i64** [ %224, %vaarg.in_reg.334 ], [ %226, %vaarg.in_mem.336 ], !dbg !3297
  %227 = load i64*, i64** %vaarg.addr341, !dbg !3302
  store i64* %227, i64** %p329, align 8, !dbg !3294, !tbaa !981
  %228 = bitcast i64* %ival342 to i8*, !dbg !3305
  call void @llvm.lifetime.start(i64 8, i8* %228) #2, !dbg !3305
  call void @llvm.dbg.declare(metadata i64* %ival342, metadata !720, metadata !985), !dbg !3306
  %229 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3307, !tbaa !981
  %ob_type343 = getelementptr inbounds %struct._object, %struct._object* %229, i32 0, i32 1, !dbg !3309
  %230 = load %struct._typeobject*, %struct._typeobject** %ob_type343, align 8, !dbg !3309, !tbaa !1259
  %tp_flags344 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %230, i32 0, i32 19, !dbg !3310
  %231 = load i64, i64* %tp_flags344, align 8, !dbg !3310, !tbaa !1263
  %and345 = and i64 %231, 16777216, !dbg !3311
  %cmp346 = icmp ne i64 %and345, 0, !dbg !3312
  br i1 %cmp346, label %if.then.348, label %if.else.350, !dbg !3313

if.then.348:                                      ; preds = %vaarg.end.340
  %232 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3314, !tbaa !981
  %call349 = call i64 @PyLong_AsUnsignedLongLongMask(%struct._object* %232), !dbg !3315
  store i64 %call349, i64* %ival342, align 8, !dbg !3316, !tbaa !3277
  br label %if.end.352, !dbg !3317

if.else.350:                                      ; preds = %vaarg.end.340
  %233 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3318, !tbaa !981
  %234 = load i8*, i8** %msgbuf.addr, align 8, !dbg !3319, !tbaa !981
  %235 = load i64, i64* %bufsize.addr, align 8, !dbg !3320, !tbaa !1279
  %call351 = call i8* @converterr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), %struct._object* %233, i8* %234, i64 %235), !dbg !3321
  store i8* %call351, i8** %retval, !dbg !3322
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.353, !dbg !3322

if.end.352:                                       ; preds = %if.then.348
  %236 = load i64, i64* %ival342, align 8, !dbg !3323, !tbaa !3277
  %237 = load i64*, i64** %p329, align 8, !dbg !3324, !tbaa !981
  store i64 %236, i64* %237, align 8, !dbg !3325, !tbaa !3277
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.353, !dbg !3326

cleanup.353:                                      ; preds = %if.end.352, %if.else.350
  %238 = bitcast i64* %ival342 to i8*, !dbg !3327
  call void @llvm.lifetime.end(i64 8, i8* %238) #2, !dbg !3327
  %239 = bitcast i64** %p329 to i8*, !dbg !3327
  call void @llvm.lifetime.end(i64 8, i8* %239) #2, !dbg !3327
  %cleanup.dest.355 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.355, label %cleanup.1669 [
    i32 2, label %sw.epilog
  ]

sw.bb.356:                                        ; preds = %entry
  %240 = bitcast float** %p357 to i8*, !dbg !3328
  call void @llvm.lifetime.start(i64 8, i8* %240) #2, !dbg !3328
  call void @llvm.dbg.declare(metadata float** %p357, metadata !721, metadata !985), !dbg !3329
  %241 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !3330, !tbaa !981
  %arraydecay358 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %241, i32 0, i32 0, !dbg !3331
  %gp_offset_p359 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay358, i32 0, i32 0, !dbg !3332
  %gp_offset360 = load i32, i32* %gp_offset_p359, !dbg !3332
  %fits_in_gp361 = icmp ule i32 %gp_offset360, 40, !dbg !3332
  br i1 %fits_in_gp361, label %vaarg.in_reg.362, label %vaarg.in_mem.364, !dbg !3332

vaarg.in_reg.362:                                 ; preds = %sw.bb.356
  %242 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay358, i32 0, i32 3, !dbg !3333
  %reg_save_area363 = load i8*, i8** %242, !dbg !3333
  %243 = getelementptr i8, i8* %reg_save_area363, i32 %gp_offset360, !dbg !3333
  %244 = bitcast i8* %243 to float**, !dbg !3333
  %245 = add i32 %gp_offset360, 8, !dbg !3333
  store i32 %245, i32* %gp_offset_p359, !dbg !3333
  br label %vaarg.end.368, !dbg !3333

vaarg.in_mem.364:                                 ; preds = %sw.bb.356
  %overflow_arg_area_p365 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay358, i32 0, i32 2, !dbg !3335
  %overflow_arg_area366 = load i8*, i8** %overflow_arg_area_p365, !dbg !3335
  %246 = bitcast i8* %overflow_arg_area366 to float**, !dbg !3335
  %overflow_arg_area.next367 = getelementptr i8, i8* %overflow_arg_area366, i32 8, !dbg !3335
  store i8* %overflow_arg_area.next367, i8** %overflow_arg_area_p365, !dbg !3335
  br label %vaarg.end.368, !dbg !3335

vaarg.end.368:                                    ; preds = %vaarg.in_mem.364, %vaarg.in_reg.362
  %vaarg.addr369 = phi float** [ %244, %vaarg.in_reg.362 ], [ %246, %vaarg.in_mem.364 ], !dbg !3332
  %247 = load float*, float** %vaarg.addr369, !dbg !3337
  store float* %247, float** %p357, align 8, !dbg !3329, !tbaa !981
  %248 = bitcast double* %dval to i8*, !dbg !3340
  call void @llvm.lifetime.start(i64 8, i8* %248) #2, !dbg !3340
  call void @llvm.dbg.declare(metadata double* %dval, metadata !724, metadata !985), !dbg !3341
  %249 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3342, !tbaa !981
  %call370 = call double @PyFloat_AsDouble(%struct._object* %249), !dbg !3343
  store double %call370, double* %dval, align 8, !dbg !3341, !tbaa !3344
  %call371 = call %struct._object* @PyErr_Occurred(), !dbg !3346
  %tobool372 = icmp ne %struct._object* %call371, null, !dbg !3346
  br i1 %tobool372, label %if.then.373, label %if.else.374, !dbg !3348

if.then.373:                                      ; preds = %vaarg.end.368
  %250 = load i8*, i8** %msgbuf.addr, align 8, !dbg !3349, !tbaa !981
  store i8* %250, i8** %retval, !dbg !3350
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377, !dbg !3350

if.else.374:                                      ; preds = %vaarg.end.368
  %251 = load double, double* %dval, align 8, !dbg !3351, !tbaa !3344
  %conv375 = fptrunc double %251 to float, !dbg !3352
  %252 = load float*, float** %p357, align 8, !dbg !3353, !tbaa !981
  store float %conv375, float* %252, align 4, !dbg !3354, !tbaa !3355
  br label %if.end.376

if.end.376:                                       ; preds = %if.else.374
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.377, !dbg !3357

cleanup.377:                                      ; preds = %if.end.376, %if.then.373
  %253 = bitcast double* %dval to i8*, !dbg !3358
  call void @llvm.lifetime.end(i64 8, i8* %253) #2, !dbg !3358
  %254 = bitcast float** %p357 to i8*, !dbg !3358
  call void @llvm.lifetime.end(i64 8, i8* %254) #2, !dbg !3358
  %cleanup.dest.379 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.379, label %cleanup.1669 [
    i32 2, label %sw.epilog
  ]

sw.bb.380:                                        ; preds = %entry
  %255 = bitcast double** %p381 to i8*, !dbg !3359
  call void @llvm.lifetime.start(i64 8, i8* %255) #2, !dbg !3359
  call void @llvm.dbg.declare(metadata double** %p381, metadata !726, metadata !985), !dbg !3360
  %256 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !3361, !tbaa !981
  %arraydecay382 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %256, i32 0, i32 0, !dbg !3362
  %gp_offset_p383 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay382, i32 0, i32 0, !dbg !3363
  %gp_offset384 = load i32, i32* %gp_offset_p383, !dbg !3363
  %fits_in_gp385 = icmp ule i32 %gp_offset384, 40, !dbg !3363
  br i1 %fits_in_gp385, label %vaarg.in_reg.386, label %vaarg.in_mem.388, !dbg !3363

vaarg.in_reg.386:                                 ; preds = %sw.bb.380
  %257 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay382, i32 0, i32 3, !dbg !3364
  %reg_save_area387 = load i8*, i8** %257, !dbg !3364
  %258 = getelementptr i8, i8* %reg_save_area387, i32 %gp_offset384, !dbg !3364
  %259 = bitcast i8* %258 to double**, !dbg !3364
  %260 = add i32 %gp_offset384, 8, !dbg !3364
  store i32 %260, i32* %gp_offset_p383, !dbg !3364
  br label %vaarg.end.392, !dbg !3364

vaarg.in_mem.388:                                 ; preds = %sw.bb.380
  %overflow_arg_area_p389 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay382, i32 0, i32 2, !dbg !3366
  %overflow_arg_area390 = load i8*, i8** %overflow_arg_area_p389, !dbg !3366
  %261 = bitcast i8* %overflow_arg_area390 to double**, !dbg !3366
  %overflow_arg_area.next391 = getelementptr i8, i8* %overflow_arg_area390, i32 8, !dbg !3366
  store i8* %overflow_arg_area.next391, i8** %overflow_arg_area_p389, !dbg !3366
  br label %vaarg.end.392, !dbg !3366

vaarg.end.392:                                    ; preds = %vaarg.in_mem.388, %vaarg.in_reg.386
  %vaarg.addr393 = phi double** [ %259, %vaarg.in_reg.386 ], [ %261, %vaarg.in_mem.388 ], !dbg !3363
  %262 = load double*, double** %vaarg.addr393, !dbg !3368
  store double* %262, double** %p381, align 8, !dbg !3360, !tbaa !981
  %263 = bitcast double* %dval394 to i8*, !dbg !3371
  call void @llvm.lifetime.start(i64 8, i8* %263) #2, !dbg !3371
  call void @llvm.dbg.declare(metadata double* %dval394, metadata !729, metadata !985), !dbg !3372
  %264 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3373, !tbaa !981
  %call395 = call double @PyFloat_AsDouble(%struct._object* %264), !dbg !3374
  store double %call395, double* %dval394, align 8, !dbg !3372, !tbaa !3344
  %call396 = call %struct._object* @PyErr_Occurred(), !dbg !3375
  %tobool397 = icmp ne %struct._object* %call396, null, !dbg !3375
  br i1 %tobool397, label %if.then.398, label %if.else.399, !dbg !3377

if.then.398:                                      ; preds = %vaarg.end.392
  %265 = load i8*, i8** %msgbuf.addr, align 8, !dbg !3378, !tbaa !981
  store i8* %265, i8** %retval, !dbg !3379
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.401, !dbg !3379

if.else.399:                                      ; preds = %vaarg.end.392
  %266 = load double, double* %dval394, align 8, !dbg !3380, !tbaa !3344
  %267 = load double*, double** %p381, align 8, !dbg !3381, !tbaa !981
  store double %266, double* %267, align 8, !dbg !3382, !tbaa !3344
  br label %if.end.400

if.end.400:                                       ; preds = %if.else.399
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.401, !dbg !3383

cleanup.401:                                      ; preds = %if.end.400, %if.then.398
  %268 = bitcast double* %dval394 to i8*, !dbg !3384
  call void @llvm.lifetime.end(i64 8, i8* %268) #2, !dbg !3384
  %269 = bitcast double** %p381 to i8*, !dbg !3384
  call void @llvm.lifetime.end(i64 8, i8* %269) #2, !dbg !3384
  %cleanup.dest.403 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.403, label %cleanup.1669 [
    i32 2, label %sw.epilog
  ]

sw.bb.404:                                        ; preds = %entry
  %270 = bitcast %struct.Py_complex** %p405 to i8*, !dbg !3385
  call void @llvm.lifetime.start(i64 8, i8* %270) #2, !dbg !3385
  call void @llvm.dbg.declare(metadata %struct.Py_complex** %p405, metadata !730, metadata !985), !dbg !3386
  %271 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !3387, !tbaa !981
  %arraydecay406 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %271, i32 0, i32 0, !dbg !3388
  %gp_offset_p407 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay406, i32 0, i32 0, !dbg !3389
  %gp_offset408 = load i32, i32* %gp_offset_p407, !dbg !3389
  %fits_in_gp409 = icmp ule i32 %gp_offset408, 40, !dbg !3389
  br i1 %fits_in_gp409, label %vaarg.in_reg.410, label %vaarg.in_mem.412, !dbg !3389

vaarg.in_reg.410:                                 ; preds = %sw.bb.404
  %272 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay406, i32 0, i32 3, !dbg !3390
  %reg_save_area411 = load i8*, i8** %272, !dbg !3390
  %273 = getelementptr i8, i8* %reg_save_area411, i32 %gp_offset408, !dbg !3390
  %274 = bitcast i8* %273 to %struct.Py_complex**, !dbg !3390
  %275 = add i32 %gp_offset408, 8, !dbg !3390
  store i32 %275, i32* %gp_offset_p407, !dbg !3390
  br label %vaarg.end.416, !dbg !3390

vaarg.in_mem.412:                                 ; preds = %sw.bb.404
  %overflow_arg_area_p413 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay406, i32 0, i32 2, !dbg !3392
  %overflow_arg_area414 = load i8*, i8** %overflow_arg_area_p413, !dbg !3392
  %276 = bitcast i8* %overflow_arg_area414 to %struct.Py_complex**, !dbg !3392
  %overflow_arg_area.next415 = getelementptr i8, i8* %overflow_arg_area414, i32 8, !dbg !3392
  store i8* %overflow_arg_area.next415, i8** %overflow_arg_area_p413, !dbg !3392
  br label %vaarg.end.416, !dbg !3392

vaarg.end.416:                                    ; preds = %vaarg.in_mem.412, %vaarg.in_reg.410
  %vaarg.addr417 = phi %struct.Py_complex** [ %274, %vaarg.in_reg.410 ], [ %276, %vaarg.in_mem.412 ], !dbg !3389
  %277 = load %struct.Py_complex*, %struct.Py_complex** %vaarg.addr417, !dbg !3394
  store %struct.Py_complex* %277, %struct.Py_complex** %p405, align 8, !dbg !3386, !tbaa !981
  %278 = bitcast %struct.Py_complex* %cval to i8*, !dbg !3397
  call void @llvm.lifetime.start(i64 16, i8* %278) #2, !dbg !3397
  call void @llvm.dbg.declare(metadata %struct.Py_complex* %cval, metadata !739, metadata !985), !dbg !3398
  %279 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3399, !tbaa !981
  %call418 = call { double, double } @PyComplex_AsCComplex(%struct._object* %279), !dbg !3400
  %280 = bitcast %struct.Py_complex* %coerce to { double, double }*, !dbg !3400
  %281 = getelementptr { double, double }, { double, double }* %280, i32 0, i32 0, !dbg !3400
  %282 = extractvalue { double, double } %call418, 0, !dbg !3400
  store double %282, double* %281, align 8, !dbg !3400
  %283 = getelementptr { double, double }, { double, double }* %280, i32 0, i32 1, !dbg !3400
  %284 = extractvalue { double, double } %call418, 1, !dbg !3400
  store double %284, double* %283, align 8, !dbg !3400
  %285 = bitcast %struct.Py_complex* %cval to i8*, !dbg !3400
  %286 = bitcast %struct.Py_complex* %coerce to i8*, !dbg !3400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %285, i8* %286, i64 16, i32 8, i1 false), !dbg !3400, !tbaa.struct !3401
  %call419 = call %struct._object* @PyErr_Occurred(), !dbg !3402
  %tobool420 = icmp ne %struct._object* %call419, null, !dbg !3402
  br i1 %tobool420, label %if.then.421, label %if.else.422, !dbg !3404

if.then.421:                                      ; preds = %vaarg.end.416
  %287 = load i8*, i8** %msgbuf.addr, align 8, !dbg !3405, !tbaa !981
  store i8* %287, i8** %retval, !dbg !3406
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.424, !dbg !3406

if.else.422:                                      ; preds = %vaarg.end.416
  %288 = load %struct.Py_complex*, %struct.Py_complex** %p405, align 8, !dbg !3407, !tbaa !981
  %289 = bitcast %struct.Py_complex* %288 to i8*, !dbg !3408
  %290 = bitcast %struct.Py_complex* %cval to i8*, !dbg !3408
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %289, i8* %290, i64 16, i32 8, i1 false), !dbg !3408, !tbaa.struct !3401
  br label %if.end.423

if.end.423:                                       ; preds = %if.else.422
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.424, !dbg !3409

cleanup.424:                                      ; preds = %if.end.423, %if.then.421
  %291 = bitcast %struct.Py_complex* %cval to i8*, !dbg !3410
  call void @llvm.lifetime.end(i64 16, i8* %291) #2, !dbg !3410
  %292 = bitcast %struct.Py_complex** %p405 to i8*, !dbg !3410
  call void @llvm.lifetime.end(i64 8, i8* %292) #2, !dbg !3410
  %cleanup.dest.426 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.426, label %cleanup.1669 [
    i32 2, label %sw.epilog
  ]

sw.bb.427:                                        ; preds = %entry
  %293 = bitcast i8** %p428 to i8*, !dbg !3411
  call void @llvm.lifetime.start(i64 8, i8* %293) #2, !dbg !3411
  call void @llvm.dbg.declare(metadata i8** %p428, metadata !740, metadata !985), !dbg !3412
  %294 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !3413, !tbaa !981
  %arraydecay429 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %294, i32 0, i32 0, !dbg !3414
  %gp_offset_p430 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay429, i32 0, i32 0, !dbg !3415
  %gp_offset431 = load i32, i32* %gp_offset_p430, !dbg !3415
  %fits_in_gp432 = icmp ule i32 %gp_offset431, 40, !dbg !3415
  br i1 %fits_in_gp432, label %vaarg.in_reg.433, label %vaarg.in_mem.435, !dbg !3415

vaarg.in_reg.433:                                 ; preds = %sw.bb.427
  %295 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay429, i32 0, i32 3, !dbg !3416
  %reg_save_area434 = load i8*, i8** %295, !dbg !3416
  %296 = getelementptr i8, i8* %reg_save_area434, i32 %gp_offset431, !dbg !3416
  %297 = bitcast i8* %296 to i8**, !dbg !3416
  %298 = add i32 %gp_offset431, 8, !dbg !3416
  store i32 %298, i32* %gp_offset_p430, !dbg !3416
  br label %vaarg.end.439, !dbg !3416

vaarg.in_mem.435:                                 ; preds = %sw.bb.427
  %overflow_arg_area_p436 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay429, i32 0, i32 2, !dbg !3418
  %overflow_arg_area437 = load i8*, i8** %overflow_arg_area_p436, !dbg !3418
  %299 = bitcast i8* %overflow_arg_area437 to i8**, !dbg !3418
  %overflow_arg_area.next438 = getelementptr i8, i8* %overflow_arg_area437, i32 8, !dbg !3418
  store i8* %overflow_arg_area.next438, i8** %overflow_arg_area_p436, !dbg !3418
  br label %vaarg.end.439, !dbg !3418

vaarg.end.439:                                    ; preds = %vaarg.in_mem.435, %vaarg.in_reg.433
  %vaarg.addr440 = phi i8** [ %297, %vaarg.in_reg.433 ], [ %299, %vaarg.in_mem.435 ], !dbg !3415
  %300 = load i8*, i8** %vaarg.addr440, !dbg !3420
  store i8* %300, i8** %p428, align 8, !dbg !3412, !tbaa !981
  %301 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3423, !tbaa !981
  %ob_type441 = getelementptr inbounds %struct._object, %struct._object* %301, i32 0, i32 1, !dbg !3425
  %302 = load %struct._typeobject*, %struct._typeobject** %ob_type441, align 8, !dbg !3425, !tbaa !1259
  %tp_flags442 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %302, i32 0, i32 19, !dbg !3426
  %303 = load i64, i64* %tp_flags442, align 8, !dbg !3426, !tbaa !1263
  %and443 = and i64 %303, 134217728, !dbg !3427
  %cmp444 = icmp ne i64 %and443, 0, !dbg !3428
  br i1 %cmp444, label %land.lhs.true.446, label %if.else.452, !dbg !3429

land.lhs.true.446:                                ; preds = %vaarg.end.439
  %304 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3430, !tbaa !981
  %call447 = call i64 @PyBytes_Size(%struct._object* %304), !dbg !3432
  %cmp448 = icmp eq i64 %call447, 1, !dbg !3433
  br i1 %cmp448, label %if.then.450, label %if.else.452, !dbg !3434

if.then.450:                                      ; preds = %land.lhs.true.446
  %305 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3435, !tbaa !981
  %306 = bitcast %struct._object* %305 to %struct.PyBytesObject*, !dbg !3436
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %306, i32 0, i32 2, !dbg !3437
  %arraydecay451 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !3438
  %arrayidx = getelementptr i8, i8* %arraydecay451, i64 0, !dbg !3439
  %307 = load i8, i8* %arrayidx, align 1, !dbg !3439, !tbaa !1064
  %308 = load i8*, i8** %p428, align 8, !dbg !3440, !tbaa !981
  store i8 %307, i8* %308, align 1, !dbg !3441, !tbaa !1064
  br label %if.end.469, !dbg !3442

if.else.452:                                      ; preds = %land.lhs.true.446, %vaarg.end.439
  %309 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3443, !tbaa !981
  %ob_type453 = getelementptr inbounds %struct._object, %struct._object* %309, i32 0, i32 1, !dbg !3445
  %310 = load %struct._typeobject*, %struct._typeobject** %ob_type453, align 8, !dbg !3445, !tbaa !1259
  %cmp454 = icmp eq %struct._typeobject* %310, @PyByteArray_Type, !dbg !3446
  br i1 %cmp454, label %land.lhs.true.459, label %lor.lhs.false, !dbg !3447

lor.lhs.false:                                    ; preds = %if.else.452
  %311 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3448, !tbaa !981
  %ob_type456 = getelementptr inbounds %struct._object, %struct._object* %311, i32 0, i32 1, !dbg !3450
  %312 = load %struct._typeobject*, %struct._typeobject** %ob_type456, align 8, !dbg !3450, !tbaa !1259
  %call457 = call i32 @PyType_IsSubtype(%struct._typeobject* %312, %struct._typeobject* @PyByteArray_Type), !dbg !3451
  %tobool458 = icmp ne i32 %call457, 0, !dbg !3451
  br i1 %tobool458, label %land.lhs.true.459, label %if.else.466, !dbg !3452

land.lhs.true.459:                                ; preds = %lor.lhs.false, %if.else.452
  %313 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3453, !tbaa !981
  %call460 = call i64 @PyByteArray_Size(%struct._object* %313), !dbg !3456
  %cmp461 = icmp eq i64 %call460, 1, !dbg !3457
  br i1 %cmp461, label %if.then.463, label %if.else.466, !dbg !3458

if.then.463:                                      ; preds = %land.lhs.true.459
  %314 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3459, !tbaa !981
  %315 = bitcast %struct._object* %314 to %struct.PyVarObject*, !dbg !3460
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %315, i32 0, i32 1, !dbg !3461
  %316 = load i64, i64* %ob_size, align 8, !dbg !3461, !tbaa !1277
  %tobool464 = icmp ne i64 %316, 0, !dbg !3462
  br i1 %tobool464, label %cond.true, label %cond.false, !dbg !3462

cond.true:                                        ; preds = %if.then.463
  %317 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3463, !tbaa !981
  %318 = bitcast %struct._object* %317 to %struct.PyByteArrayObject*, !dbg !3464
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %318, i32 0, i32 3, !dbg !3465
  %319 = load i8*, i8** %ob_start, align 8, !dbg !3465, !tbaa !3466
  br label %cond.end, !dbg !3462

cond.false:                                       ; preds = %if.then.463
  br label %cond.end, !dbg !3468

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %319, %cond.true ], [ getelementptr inbounds ([0 x i8], [0 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ], !dbg !3462
  %arrayidx465 = getelementptr i8, i8* %cond, i64 0, !dbg !3469
  %320 = load i8, i8* %arrayidx465, align 1, !dbg !3469, !tbaa !1064
  %321 = load i8*, i8** %p428, align 8, !dbg !3472, !tbaa !981
  store i8 %320, i8* %321, align 1, !dbg !3473, !tbaa !1064
  br label %if.end.468, !dbg !3474

if.else.466:                                      ; preds = %land.lhs.true.459, %lor.lhs.false
  %322 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3475, !tbaa !981
  %323 = load i8*, i8** %msgbuf.addr, align 8, !dbg !3476, !tbaa !981
  %324 = load i64, i64* %bufsize.addr, align 8, !dbg !3477, !tbaa !1279
  %call467 = call i8* @converterr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.39, i32 0, i32 0), %struct._object* %322, i8* %323, i64 %324), !dbg !3478
  store i8* %call467, i8** %retval, !dbg !3479
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.470, !dbg !3479

if.end.468:                                       ; preds = %cond.end
  br label %if.end.469

if.end.469:                                       ; preds = %if.end.468, %if.then.450
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.470, !dbg !3480

cleanup.470:                                      ; preds = %if.end.469, %if.else.466
  %325 = bitcast i8** %p428 to i8*, !dbg !3481
  call void @llvm.lifetime.end(i64 8, i8* %325) #2, !dbg !3481
  %cleanup.dest.471 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.471, label %cleanup.1669 [
    i32 2, label %sw.epilog
  ]

sw.bb.472:                                        ; preds = %entry
  %326 = bitcast i32** %p473 to i8*, !dbg !3482
  call void @llvm.lifetime.start(i64 8, i8* %326) #2, !dbg !3482
  call void @llvm.dbg.declare(metadata i32** %p473, metadata !742, metadata !985), !dbg !3483
  %327 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !3484, !tbaa !981
  %arraydecay474 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %327, i32 0, i32 0, !dbg !3485
  %gp_offset_p475 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay474, i32 0, i32 0, !dbg !3486
  %gp_offset476 = load i32, i32* %gp_offset_p475, !dbg !3486
  %fits_in_gp477 = icmp ule i32 %gp_offset476, 40, !dbg !3486
  br i1 %fits_in_gp477, label %vaarg.in_reg.478, label %vaarg.in_mem.480, !dbg !3486

vaarg.in_reg.478:                                 ; preds = %sw.bb.472
  %328 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay474, i32 0, i32 3, !dbg !3487
  %reg_save_area479 = load i8*, i8** %328, !dbg !3487
  %329 = getelementptr i8, i8* %reg_save_area479, i32 %gp_offset476, !dbg !3487
  %330 = bitcast i8* %329 to i32**, !dbg !3487
  %331 = add i32 %gp_offset476, 8, !dbg !3487
  store i32 %331, i32* %gp_offset_p475, !dbg !3487
  br label %vaarg.end.484, !dbg !3487

vaarg.in_mem.480:                                 ; preds = %sw.bb.472
  %overflow_arg_area_p481 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay474, i32 0, i32 2, !dbg !3489
  %overflow_arg_area482 = load i8*, i8** %overflow_arg_area_p481, !dbg !3489
  %332 = bitcast i8* %overflow_arg_area482 to i32**, !dbg !3489
  %overflow_arg_area.next483 = getelementptr i8, i8* %overflow_arg_area482, i32 8, !dbg !3489
  store i8* %overflow_arg_area.next483, i8** %overflow_arg_area_p481, !dbg !3489
  br label %vaarg.end.484, !dbg !3489

vaarg.end.484:                                    ; preds = %vaarg.in_mem.480, %vaarg.in_reg.478
  %vaarg.addr485 = phi i32** [ %330, %vaarg.in_reg.478 ], [ %332, %vaarg.in_mem.480 ], !dbg !3486
  %333 = load i32*, i32** %vaarg.addr485, !dbg !3491
  store i32* %333, i32** %p473, align 8, !dbg !3483, !tbaa !981
  %334 = bitcast i32* %kind to i8*, !dbg !3494
  call void @llvm.lifetime.start(i64 4, i8* %334) #2, !dbg !3494
  call void @llvm.dbg.declare(metadata i32* %kind, metadata !744, metadata !985), !dbg !3495
  %335 = bitcast i8** %data to i8*, !dbg !3496
  call void @llvm.lifetime.start(i64 8, i8* %335) #2, !dbg !3496
  call void @llvm.dbg.declare(metadata i8** %data, metadata !745, metadata !985), !dbg !3497
  %336 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3498, !tbaa !981
  %ob_type486 = getelementptr inbounds %struct._object, %struct._object* %336, i32 0, i32 1, !dbg !3500
  %337 = load %struct._typeobject*, %struct._typeobject** %ob_type486, align 8, !dbg !3500, !tbaa !1259
  %tp_flags487 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %337, i32 0, i32 19, !dbg !3501
  %338 = load i64, i64* %tp_flags487, align 8, !dbg !3501, !tbaa !1263
  %and488 = and i64 %338, 268435456, !dbg !3502
  %cmp489 = icmp ne i64 %and488, 0, !dbg !3503
  br i1 %cmp489, label %if.end.493, label %if.then.491, !dbg !3504

if.then.491:                                      ; preds = %vaarg.end.484
  %339 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3505, !tbaa !981
  %340 = load i8*, i8** %msgbuf.addr, align 8, !dbg !3506, !tbaa !981
  %341 = load i64, i64* %bufsize.addr, align 8, !dbg !3507, !tbaa !1279
  %call492 = call i8* @converterr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i32 0, i32 0), %struct._object* %339, i8* %340, i64 %341), !dbg !3508
  store i8* %call492, i8** %retval, !dbg !3509
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.549, !dbg !3509

if.end.493:                                       ; preds = %vaarg.end.484
  %342 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3510, !tbaa !981
  %343 = bitcast %struct._object* %342 to %struct.PyASCIIObject*, !dbg !3512
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %343, i32 0, i32 3, !dbg !3513
  %344 = bitcast %struct.anon* %state to i32*, !dbg !3514
  %bf.load = load i32, i32* %344, align 4, !dbg !3514
  %bf.lshr = lshr i32 %bf.load, 7, !dbg !3514
  %bf.clear = and i32 %bf.lshr, 1, !dbg !3514
  %tobool494 = icmp ne i32 %bf.clear, 0, !dbg !3515
  br i1 %tobool494, label %cond.true.495, label %cond.false.496, !dbg !3515

cond.true.495:                                    ; preds = %if.end.493
  br label %cond.end.498, !dbg !3516

cond.false.496:                                   ; preds = %if.end.493
  %345 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3518, !tbaa !981
  %call497 = call i32 @_PyUnicode_Ready(%struct._object* %345), !dbg !3520
  br label %cond.end.498, !dbg !3515

cond.end.498:                                     ; preds = %cond.false.496, %cond.true.495
  %cond499 = phi i32 [ 0, %cond.true.495 ], [ %call497, %cond.false.496 ], !dbg !3515
  %tobool500 = icmp ne i32 %cond499, 0, !dbg !3521
  br i1 %tobool500, label %if.then.501, label %if.end.502, !dbg !3524

if.then.501:                                      ; preds = %cond.end.498
  %346 = load i8*, i8** %msgbuf.addr, align 8, !dbg !3525, !tbaa !981
  store i8* %346, i8** %retval, !dbg !3526
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.549, !dbg !3526

if.end.502:                                       ; preds = %cond.end.498
  %347 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3527, !tbaa !981
  %348 = bitcast %struct._object* %347 to %struct.PyASCIIObject*, !dbg !3529
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %348, i32 0, i32 1, !dbg !3530
  %349 = load i64, i64* %length, align 8, !dbg !3530, !tbaa !3531
  %cmp503 = icmp ne i64 %349, 1, !dbg !3534
  br i1 %cmp503, label %if.then.505, label %if.end.507, !dbg !3535

if.then.505:                                      ; preds = %if.end.502
  %350 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3536, !tbaa !981
  %351 = load i8*, i8** %msgbuf.addr, align 8, !dbg !3537, !tbaa !981
  %352 = load i64, i64* %bufsize.addr, align 8, !dbg !3538, !tbaa !1279
  %call506 = call i8* @converterr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i32 0, i32 0), %struct._object* %350, i8* %351, i64 %352), !dbg !3539
  store i8* %call506, i8** %retval, !dbg !3540
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.549, !dbg !3540

if.end.507:                                       ; preds = %if.end.502
  %353 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3541, !tbaa !981
  %354 = bitcast %struct._object* %353 to %struct.PyASCIIObject*, !dbg !3542
  %state508 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %354, i32 0, i32 3, !dbg !3543
  %355 = bitcast %struct.anon* %state508 to i32*, !dbg !3544
  %bf.load509 = load i32, i32* %355, align 4, !dbg !3544
  %bf.lshr510 = lshr i32 %bf.load509, 2, !dbg !3544
  %bf.clear511 = and i32 %bf.lshr510, 7, !dbg !3544
  store i32 %bf.clear511, i32* %kind, align 4, !dbg !3545, !tbaa !998
  %356 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3546, !tbaa !981
  %357 = bitcast %struct._object* %356 to %struct.PyASCIIObject*, !dbg !3547
  %state512 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %357, i32 0, i32 3, !dbg !3548
  %358 = bitcast %struct.anon* %state512 to i32*, !dbg !3549
  %bf.load513 = load i32, i32* %358, align 4, !dbg !3549
  %bf.lshr514 = lshr i32 %bf.load513, 5, !dbg !3549
  %bf.clear515 = and i32 %bf.lshr514, 1, !dbg !3549
  %tobool516 = icmp ne i32 %bf.clear515, 0, !dbg !3550
  br i1 %tobool516, label %cond.true.517, label %cond.false.528, !dbg !3550

cond.true.517:                                    ; preds = %if.end.507
  %359 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3551, !tbaa !981
  %360 = bitcast %struct._object* %359 to %struct.PyASCIIObject*, !dbg !3552
  %state518 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %360, i32 0, i32 3, !dbg !3553
  %361 = bitcast %struct.anon* %state518 to i32*, !dbg !3554
  %bf.load519 = load i32, i32* %361, align 4, !dbg !3554
  %bf.lshr520 = lshr i32 %bf.load519, 6, !dbg !3554
  %bf.clear521 = and i32 %bf.lshr520, 1, !dbg !3554
  %tobool522 = icmp ne i32 %bf.clear521, 0, !dbg !3555
  br i1 %tobool522, label %cond.true.523, label %cond.false.524, !dbg !3555

cond.true.523:                                    ; preds = %cond.true.517
  %362 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3556, !tbaa !981
  %363 = bitcast %struct._object* %362 to %struct.PyASCIIObject*, !dbg !3557
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %363, i64 1, !dbg !3558
  %364 = bitcast %struct.PyASCIIObject* %add.ptr to i8*, !dbg !3559
  br label %cond.end.526, !dbg !3555

cond.false.524:                                   ; preds = %cond.true.517
  %365 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3560, !tbaa !981
  %366 = bitcast %struct._object* %365 to %struct.PyCompactUnicodeObject*, !dbg !3562
  %add.ptr525 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %366, i64 1, !dbg !3563
  %367 = bitcast %struct.PyCompactUnicodeObject* %add.ptr525 to i8*, !dbg !3564
  br label %cond.end.526, !dbg !3555

cond.end.526:                                     ; preds = %cond.false.524, %cond.true.523
  %cond527 = phi i8* [ %364, %cond.true.523 ], [ %367, %cond.false.524 ], !dbg !3555
  br label %cond.end.530, !dbg !3565

cond.false.528:                                   ; preds = %if.end.507
  %368 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3568, !tbaa !981
  %369 = bitcast %struct._object* %368 to %struct.PyUnicodeObject*, !dbg !3569
  %data529 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %369, i32 0, i32 1, !dbg !3570
  %any = bitcast %union.anon* %data529 to i8**, !dbg !3571
  %370 = load i8*, i8** %any, align 8, !dbg !3571, !tbaa !981
  br label %cond.end.530, !dbg !3550

cond.end.530:                                     ; preds = %cond.false.528, %cond.end.526
  %cond531 = phi i8* [ %cond527, %cond.end.526 ], [ %370, %cond.false.528 ], !dbg !3550
  store i8* %cond531, i8** %data, align 8, !dbg !3572, !tbaa !981
  %371 = load i32, i32* %kind, align 4, !dbg !3575, !tbaa !998
  %cmp532 = icmp eq i32 %371, 1, !dbg !3576
  br i1 %cmp532, label %cond.true.534, label %cond.false.537, !dbg !3577

cond.true.534:                                    ; preds = %cond.end.530
  %372 = load i8*, i8** %data, align 8, !dbg !3578, !tbaa !981
  %arrayidx535 = getelementptr i8, i8* %372, i64 0, !dbg !3579
  %373 = load i8, i8* %arrayidx535, align 1, !dbg !3579, !tbaa !1064
  %conv536 = zext i8 %373 to i32, !dbg !3579
  br label %cond.end.547, !dbg !3577

cond.false.537:                                   ; preds = %cond.end.530
  %374 = load i32, i32* %kind, align 4, !dbg !3580, !tbaa !998
  %cmp538 = icmp eq i32 %374, 2, !dbg !3581
  br i1 %cmp538, label %cond.true.540, label %cond.false.543, !dbg !3582

cond.true.540:                                    ; preds = %cond.false.537
  %375 = load i8*, i8** %data, align 8, !dbg !3583, !tbaa !981
  %376 = bitcast i8* %375 to i16*, !dbg !3584
  %arrayidx541 = getelementptr i16, i16* %376, i64 0, !dbg !3585
  %377 = load i16, i16* %arrayidx541, align 2, !dbg !3585, !tbaa !2977
  %conv542 = zext i16 %377 to i32, !dbg !3585
  br label %cond.end.545, !dbg !3582

cond.false.543:                                   ; preds = %cond.false.537
  %378 = load i8*, i8** %data, align 8, !dbg !3586, !tbaa !981
  %379 = bitcast i8* %378 to i32*, !dbg !3587
  %arrayidx544 = getelementptr i32, i32* %379, i64 0, !dbg !3588
  %380 = load i32, i32* %arrayidx544, align 4, !dbg !3588, !tbaa !998
  br label %cond.end.545, !dbg !3582

cond.end.545:                                     ; preds = %cond.false.543, %cond.true.540
  %cond546 = phi i32 [ %conv542, %cond.true.540 ], [ %380, %cond.false.543 ], !dbg !3582
  br label %cond.end.547, !dbg !3589

cond.end.547:                                     ; preds = %cond.end.545, %cond.true.534
  %cond548 = phi i32 [ %conv536, %cond.true.534 ], [ %cond546, %cond.end.545 ], !dbg !3577
  %381 = load i32*, i32** %p473, align 8, !dbg !3592, !tbaa !981
  store i32 %cond548, i32* %381, align 4, !dbg !3594, !tbaa !998
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.549, !dbg !3595

cleanup.549:                                      ; preds = %cond.end.547, %if.then.505, %if.then.501, %if.then.491
  %382 = bitcast i8** %data to i8*, !dbg !3596
  call void @llvm.lifetime.end(i64 8, i8* %382) #2, !dbg !3596
  %383 = bitcast i32* %kind to i8*, !dbg !3596
  call void @llvm.lifetime.end(i64 4, i8* %383) #2, !dbg !3596
  %384 = bitcast i32** %p473 to i8*, !dbg !3596
  call void @llvm.lifetime.end(i64 8, i8* %384) #2, !dbg !3596
  %cleanup.dest.552 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.552, label %cleanup.1669 [
    i32 2, label %sw.epilog
  ]

sw.bb.553:                                        ; preds = %entry
  %385 = bitcast i32** %p554 to i8*, !dbg !3597
  call void @llvm.lifetime.start(i64 8, i8* %385) #2, !dbg !3597
  call void @llvm.dbg.declare(metadata i32** %p554, metadata !746, metadata !985), !dbg !3598
  %386 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !3599, !tbaa !981
  %arraydecay555 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %386, i32 0, i32 0, !dbg !3600
  %gp_offset_p556 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay555, i32 0, i32 0, !dbg !3601
  %gp_offset557 = load i32, i32* %gp_offset_p556, !dbg !3601
  %fits_in_gp558 = icmp ule i32 %gp_offset557, 40, !dbg !3601
  br i1 %fits_in_gp558, label %vaarg.in_reg.559, label %vaarg.in_mem.561, !dbg !3601

vaarg.in_reg.559:                                 ; preds = %sw.bb.553
  %387 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay555, i32 0, i32 3, !dbg !3602
  %reg_save_area560 = load i8*, i8** %387, !dbg !3602
  %388 = getelementptr i8, i8* %reg_save_area560, i32 %gp_offset557, !dbg !3602
  %389 = bitcast i8* %388 to i32**, !dbg !3602
  %390 = add i32 %gp_offset557, 8, !dbg !3602
  store i32 %390, i32* %gp_offset_p556, !dbg !3602
  br label %vaarg.end.565, !dbg !3602

vaarg.in_mem.561:                                 ; preds = %sw.bb.553
  %overflow_arg_area_p562 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay555, i32 0, i32 2, !dbg !3604
  %overflow_arg_area563 = load i8*, i8** %overflow_arg_area_p562, !dbg !3604
  %391 = bitcast i8* %overflow_arg_area563 to i32**, !dbg !3604
  %overflow_arg_area.next564 = getelementptr i8, i8* %overflow_arg_area563, i32 8, !dbg !3604
  store i8* %overflow_arg_area.next564, i8** %overflow_arg_area_p562, !dbg !3604
  br label %vaarg.end.565, !dbg !3604

vaarg.end.565:                                    ; preds = %vaarg.in_mem.561, %vaarg.in_reg.559
  %vaarg.addr566 = phi i32** [ %389, %vaarg.in_reg.559 ], [ %391, %vaarg.in_mem.561 ], !dbg !3601
  %392 = load i32*, i32** %vaarg.addr566, !dbg !3606
  store i32* %392, i32** %p554, align 8, !dbg !3598, !tbaa !981
  %393 = bitcast i32* %val to i8*, !dbg !3609
  call void @llvm.lifetime.start(i64 4, i8* %393) #2, !dbg !3609
  call void @llvm.dbg.declare(metadata i32* %val, metadata !748, metadata !985), !dbg !3610
  %394 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3611, !tbaa !981
  %call567 = call i32 @PyObject_IsTrue(%struct._object* %394), !dbg !3612
  store i32 %call567, i32* %val, align 4, !dbg !3610, !tbaa !998
  %395 = load i32, i32* %val, align 4, !dbg !3613, !tbaa !998
  %cmp568 = icmp sgt i32 %395, 0, !dbg !3615
  br i1 %cmp568, label %if.then.570, label %if.else.571, !dbg !3616

if.then.570:                                      ; preds = %vaarg.end.565
  %396 = load i32*, i32** %p554, align 8, !dbg !3617, !tbaa !981
  store i32 1, i32* %396, align 4, !dbg !3618, !tbaa !998
  br label %if.end.577, !dbg !3619

if.else.571:                                      ; preds = %vaarg.end.565
  %397 = load i32, i32* %val, align 4, !dbg !3620, !tbaa !998
  %cmp572 = icmp eq i32 %397, 0, !dbg !3622
  br i1 %cmp572, label %if.then.574, label %if.else.575, !dbg !3623

if.then.574:                                      ; preds = %if.else.571
  %398 = load i32*, i32** %p554, align 8, !dbg !3624, !tbaa !981
  store i32 0, i32* %398, align 4, !dbg !3625, !tbaa !998
  br label %if.end.576, !dbg !3626

if.else.575:                                      ; preds = %if.else.571
  %399 = load i8*, i8** %msgbuf.addr, align 8, !dbg !3627, !tbaa !981
  store i8* %399, i8** %retval, !dbg !3628
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.578, !dbg !3628

if.end.576:                                       ; preds = %if.then.574
  br label %if.end.577

if.end.577:                                       ; preds = %if.end.576, %if.then.570
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.578, !dbg !3629

cleanup.578:                                      ; preds = %if.end.577, %if.else.575
  %400 = bitcast i32* %val to i8*, !dbg !3630
  call void @llvm.lifetime.end(i64 4, i8* %400) #2, !dbg !3630
  %401 = bitcast i32** %p554 to i8*, !dbg !3630
  call void @llvm.lifetime.end(i64 8, i8* %401) #2, !dbg !3630
  %cleanup.dest.580 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.580, label %cleanup.1669 [
    i32 2, label %sw.epilog
  ]

sw.bb.581:                                        ; preds = %entry
  %402 = bitcast i8*** %p582 to i8*, !dbg !3631
  call void @llvm.lifetime.start(i64 8, i8* %402) #2, !dbg !3631
  call void @llvm.dbg.declare(metadata i8*** %p582, metadata !749, metadata !985), !dbg !3632
  %403 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !3633, !tbaa !981
  %arraydecay583 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %403, i32 0, i32 0, !dbg !3634
  %gp_offset_p584 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay583, i32 0, i32 0, !dbg !3635
  %gp_offset585 = load i32, i32* %gp_offset_p584, !dbg !3635
  %fits_in_gp586 = icmp ule i32 %gp_offset585, 40, !dbg !3635
  br i1 %fits_in_gp586, label %vaarg.in_reg.587, label %vaarg.in_mem.589, !dbg !3635

vaarg.in_reg.587:                                 ; preds = %sw.bb.581
  %404 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay583, i32 0, i32 3, !dbg !3636
  %reg_save_area588 = load i8*, i8** %404, !dbg !3636
  %405 = getelementptr i8, i8* %reg_save_area588, i32 %gp_offset585, !dbg !3636
  %406 = bitcast i8* %405 to i8***, !dbg !3636
  %407 = add i32 %gp_offset585, 8, !dbg !3636
  store i32 %407, i32* %gp_offset_p584, !dbg !3636
  br label %vaarg.end.593, !dbg !3636

vaarg.in_mem.589:                                 ; preds = %sw.bb.581
  %overflow_arg_area_p590 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay583, i32 0, i32 2, !dbg !3638
  %overflow_arg_area591 = load i8*, i8** %overflow_arg_area_p590, !dbg !3638
  %408 = bitcast i8* %overflow_arg_area591 to i8***, !dbg !3638
  %overflow_arg_area.next592 = getelementptr i8, i8* %overflow_arg_area591, i32 8, !dbg !3638
  store i8* %overflow_arg_area.next592, i8** %overflow_arg_area_p590, !dbg !3638
  br label %vaarg.end.593, !dbg !3638

vaarg.end.593:                                    ; preds = %vaarg.in_mem.589, %vaarg.in_reg.587
  %vaarg.addr594 = phi i8*** [ %406, %vaarg.in_reg.587 ], [ %408, %vaarg.in_mem.589 ], !dbg !3635
  %409 = load i8**, i8*** %vaarg.addr594, !dbg !3640
  store i8** %409, i8*** %p582, align 8, !dbg !3632, !tbaa !981
  %410 = bitcast i8** %buf to i8*, !dbg !3643
  call void @llvm.lifetime.start(i64 8, i8* %410) #2, !dbg !3643
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !751, metadata !985), !dbg !3644
  %411 = bitcast i64* %count to i8*, !dbg !3645
  call void @llvm.lifetime.start(i64 8, i8* %411) #2, !dbg !3645
  call void @llvm.dbg.declare(metadata i64* %count, metadata !752, metadata !985), !dbg !3646
  %412 = load i8*, i8** %format, align 8, !dbg !3647, !tbaa !981
  %413 = load i8, i8* %412, align 1, !dbg !3649, !tbaa !1064
  %conv595 = sext i8 %413 to i32, !dbg !3649
  %cmp596 = icmp eq i32 %conv595, 42, !dbg !3650
  br i1 %cmp596, label %if.then.598, label %if.end.611, !dbg !3651

if.then.598:                                      ; preds = %vaarg.end.593
  %414 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3652, !tbaa !981
  %415 = load i8**, i8*** %p582, align 8, !dbg !3655, !tbaa !981
  %416 = bitcast i8** %415 to %struct.bufferinfo*, !dbg !3656
  %call599 = call i32 @getbuffer(%struct._object* %414, %struct.bufferinfo* %416, i8** %buf), !dbg !3657
  %cmp600 = icmp slt i32 %call599, 0, !dbg !3658
  br i1 %cmp600, label %if.then.602, label %if.end.604, !dbg !3659

if.then.602:                                      ; preds = %if.then.598
  %417 = load i8*, i8** %buf, align 8, !dbg !3660, !tbaa !981
  %418 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3661, !tbaa !981
  %419 = load i8*, i8** %msgbuf.addr, align 8, !dbg !3662, !tbaa !981
  %420 = load i64, i64* %bufsize.addr, align 8, !dbg !3663, !tbaa !1279
  %call603 = call i8* @converterr(i8* %417, %struct._object* %418, i8* %419, i64 %420), !dbg !3664
  store i8* %call603, i8** %retval, !dbg !3665
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.674, !dbg !3665

if.end.604:                                       ; preds = %if.then.598
  %421 = load i8*, i8** %format, align 8, !dbg !3666, !tbaa !981
  %incdec.ptr605 = getelementptr i8, i8* %421, i32 1, !dbg !3666
  store i8* %incdec.ptr605, i8** %format, align 8, !dbg !3666, !tbaa !981
  %422 = load i8**, i8*** %p582, align 8, !dbg !3667, !tbaa !981
  %423 = bitcast i8** %422 to i8*, !dbg !3667
  %424 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8, !dbg !3669, !tbaa !981
  %call606 = call i32 @addcleanup(i8* %423, %struct.freelist_t* %424, i32 (%struct._object*, i8*)* @cleanup_buffer), !dbg !3670
  %tobool607 = icmp ne i32 %call606, 0, !dbg !3670
  br i1 %tobool607, label %if.then.608, label %if.end.610, !dbg !3671

if.then.608:                                      ; preds = %if.end.604
  %425 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3672, !tbaa !981
  %426 = load i8*, i8** %msgbuf.addr, align 8, !dbg !3674, !tbaa !981
  %427 = load i64, i64* %bufsize.addr, align 8, !dbg !3675, !tbaa !1279
  %call609 = call i8* @converterr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0), %struct._object* %425, i8* %426, i64 %427), !dbg !3676
  store i8* %call609, i8** %retval, !dbg !3677
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.674, !dbg !3677

if.end.610:                                       ; preds = %if.end.604
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.674, !dbg !3678

if.end.611:                                       ; preds = %vaarg.end.593
  %428 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3679, !tbaa !981
  %429 = load i8**, i8*** %p582, align 8, !dbg !3680, !tbaa !981
  %call612 = call i64 @convertbuffer(%struct._object* %428, i8** %429, i8** %buf), !dbg !3681
  store i64 %call612, i64* %count, align 8, !dbg !3682, !tbaa !1279
  %430 = load i64, i64* %count, align 8, !dbg !3683, !tbaa !1279
  %cmp613 = icmp slt i64 %430, 0, !dbg !3685
  br i1 %cmp613, label %if.then.615, label %if.end.617, !dbg !3686

if.then.615:                                      ; preds = %if.end.611
  %431 = load i8*, i8** %buf, align 8, !dbg !3687, !tbaa !981
  %432 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3688, !tbaa !981
  %433 = load i8*, i8** %msgbuf.addr, align 8, !dbg !3689, !tbaa !981
  %434 = load i64, i64* %bufsize.addr, align 8, !dbg !3690, !tbaa !1279
  %call616 = call i8* @converterr(i8* %431, %struct._object* %432, i8* %433, i64 %434), !dbg !3691
  store i8* %call616, i8** %retval, !dbg !3692
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.674, !dbg !3692

if.end.617:                                       ; preds = %if.end.611
  %435 = load i8*, i8** %format, align 8, !dbg !3693, !tbaa !981
  %436 = load i8, i8* %435, align 1, !dbg !3694, !tbaa !1064
  %conv618 = sext i8 %436 to i32, !dbg !3694
  %cmp619 = icmp eq i32 %conv618, 35, !dbg !3695
  br i1 %cmp619, label %if.then.621, label %if.else.666, !dbg !3696

if.then.621:                                      ; preds = %if.end.617
  %437 = bitcast i32** %q to i8*, !dbg !3697
  call void @llvm.lifetime.start(i64 8, i8* %437) #2, !dbg !3697
  call void @llvm.dbg.declare(metadata i32** %q, metadata !753, metadata !985), !dbg !3698
  store i32* null, i32** %q, align 8, !dbg !3698, !tbaa !981
  %438 = bitcast i64** %q2 to i8*, !dbg !3699
  call void @llvm.lifetime.start(i64 8, i8* %438) #2, !dbg !3699
  call void @llvm.dbg.declare(metadata i64** %q2, metadata !756, metadata !985), !dbg !3700
  store i64* null, i64** %q2, align 8, !dbg !3700, !tbaa !981
  %439 = load i32, i32* %flags.addr, align 4, !dbg !3701, !tbaa !998
  %and622 = and i32 %439, 2, !dbg !3703
  %tobool623 = icmp ne i32 %and622, 0, !dbg !3703
  br i1 %tobool623, label %if.then.624, label %if.else.637, !dbg !3704

if.then.624:                                      ; preds = %if.then.621
  %440 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !3705, !tbaa !981
  %arraydecay625 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %440, i32 0, i32 0, !dbg !3707
  %gp_offset_p626 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay625, i32 0, i32 0, !dbg !3708
  %gp_offset627 = load i32, i32* %gp_offset_p626, !dbg !3708
  %fits_in_gp628 = icmp ule i32 %gp_offset627, 40, !dbg !3708
  br i1 %fits_in_gp628, label %vaarg.in_reg.629, label %vaarg.in_mem.631, !dbg !3708

vaarg.in_reg.629:                                 ; preds = %if.then.624
  %441 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay625, i32 0, i32 3, !dbg !3709
  %reg_save_area630 = load i8*, i8** %441, !dbg !3709
  %442 = getelementptr i8, i8* %reg_save_area630, i32 %gp_offset627, !dbg !3709
  %443 = bitcast i8* %442 to i64**, !dbg !3709
  %444 = add i32 %gp_offset627, 8, !dbg !3709
  store i32 %444, i32* %gp_offset_p626, !dbg !3709
  br label %vaarg.end.635, !dbg !3709

vaarg.in_mem.631:                                 ; preds = %if.then.624
  %overflow_arg_area_p632 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay625, i32 0, i32 2, !dbg !3711
  %overflow_arg_area633 = load i8*, i8** %overflow_arg_area_p632, !dbg !3711
  %445 = bitcast i8* %overflow_arg_area633 to i64**, !dbg !3711
  %overflow_arg_area.next634 = getelementptr i8, i8* %overflow_arg_area633, i32 8, !dbg !3711
  store i8* %overflow_arg_area.next634, i8** %overflow_arg_area_p632, !dbg !3711
  br label %vaarg.end.635, !dbg !3711

vaarg.end.635:                                    ; preds = %vaarg.in_mem.631, %vaarg.in_reg.629
  %vaarg.addr636 = phi i64** [ %443, %vaarg.in_reg.629 ], [ %445, %vaarg.in_mem.631 ], !dbg !3708
  %446 = load i64*, i64** %vaarg.addr636, !dbg !3713
  store i64* %446, i64** %q2, align 8, !dbg !3716, !tbaa !981
  br label %if.end.650, !dbg !3717

if.else.637:                                      ; preds = %if.then.621
  %447 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !3718, !tbaa !981
  %arraydecay638 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %447, i32 0, i32 0, !dbg !3720
  %gp_offset_p639 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay638, i32 0, i32 0, !dbg !3721
  %gp_offset640 = load i32, i32* %gp_offset_p639, !dbg !3721
  %fits_in_gp641 = icmp ule i32 %gp_offset640, 40, !dbg !3721
  br i1 %fits_in_gp641, label %vaarg.in_reg.642, label %vaarg.in_mem.644, !dbg !3721

vaarg.in_reg.642:                                 ; preds = %if.else.637
  %448 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay638, i32 0, i32 3, !dbg !3722
  %reg_save_area643 = load i8*, i8** %448, !dbg !3722
  %449 = getelementptr i8, i8* %reg_save_area643, i32 %gp_offset640, !dbg !3722
  %450 = bitcast i8* %449 to i32**, !dbg !3722
  %451 = add i32 %gp_offset640, 8, !dbg !3722
  store i32 %451, i32* %gp_offset_p639, !dbg !3722
  br label %vaarg.end.648, !dbg !3722

vaarg.in_mem.644:                                 ; preds = %if.else.637
  %overflow_arg_area_p645 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay638, i32 0, i32 2, !dbg !3724
  %overflow_arg_area646 = load i8*, i8** %overflow_arg_area_p645, !dbg !3724
  %452 = bitcast i8* %overflow_arg_area646 to i32**, !dbg !3724
  %overflow_arg_area.next647 = getelementptr i8, i8* %overflow_arg_area646, i32 8, !dbg !3724
  store i8* %overflow_arg_area.next647, i8** %overflow_arg_area_p645, !dbg !3724
  br label %vaarg.end.648, !dbg !3724

vaarg.end.648:                                    ; preds = %vaarg.in_mem.644, %vaarg.in_reg.642
  %vaarg.addr649 = phi i32** [ %450, %vaarg.in_reg.642 ], [ %452, %vaarg.in_mem.644 ], !dbg !3721
  %453 = load i32*, i32** %vaarg.addr649, !dbg !3726
  store i32* %453, i32** %q, align 8, !dbg !3729, !tbaa !981
  br label %if.end.650

if.end.650:                                       ; preds = %vaarg.end.648, %vaarg.end.635
  %454 = load i32, i32* %flags.addr, align 4, !dbg !3730, !tbaa !998
  %and651 = and i32 %454, 2, !dbg !3732
  %tobool652 = icmp ne i32 %and651, 0, !dbg !3732
  br i1 %tobool652, label %if.then.653, label %if.else.654, !dbg !3733

if.then.653:                                      ; preds = %if.end.650
  %455 = load i64, i64* %count, align 8, !dbg !3734, !tbaa !1279
  %456 = load i64*, i64** %q2, align 8, !dbg !3736, !tbaa !981
  store i64 %455, i64* %456, align 8, !dbg !3737, !tbaa !1279
  br label %if.end.661, !dbg !3738

if.else.654:                                      ; preds = %if.end.650
  %457 = load i64, i64* %count, align 8, !dbg !3739, !tbaa !1279
  %cmp655 = icmp slt i64 2147483647, %457, !dbg !3743
  br i1 %cmp655, label %if.then.657, label %if.end.659, !dbg !3744

if.then.657:                                      ; preds = %if.else.654
  %458 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !3745, !tbaa !981
  call void @PyErr_SetString(%struct._object* %458, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.42, i32 0, i32 0)), !dbg !3748
  %459 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3749, !tbaa !981
  %460 = load i8*, i8** %msgbuf.addr, align 8, !dbg !3750, !tbaa !981
  %461 = load i64, i64* %bufsize.addr, align 8, !dbg !3751, !tbaa !1279
  %call658 = call i8* @converterr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %struct._object* %459, i8* %460, i64 %461), !dbg !3752
  store i8* %call658, i8** %retval, !dbg !3753
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.663, !dbg !3753

if.end.659:                                       ; preds = %if.else.654
  %462 = load i64, i64* %count, align 8, !dbg !3754, !tbaa !1279
  %conv660 = trunc i64 %462 to i32, !dbg !3756
  %463 = load i32*, i32** %q, align 8, !dbg !3757, !tbaa !981
  store i32 %conv660, i32* %463, align 4, !dbg !3758, !tbaa !998
  br label %if.end.661

if.end.661:                                       ; preds = %if.end.659, %if.then.653
  %464 = load i8*, i8** %format, align 8, !dbg !3759, !tbaa !981
  %incdec.ptr662 = getelementptr i8, i8* %464, i32 1, !dbg !3759
  store i8* %incdec.ptr662, i8** %format, align 8, !dbg !3759, !tbaa !981
  store i32 0, i32* %cleanup.dest.slot, !dbg !3760
  br label %cleanup.663, !dbg !3760

cleanup.663:                                      ; preds = %if.end.661, %if.then.657
  %465 = bitcast i64** %q2 to i8*, !dbg !3761
  call void @llvm.lifetime.end(i64 8, i8* %465) #2, !dbg !3761
  %466 = bitcast i32** %q to i8*, !dbg !3761
  call void @llvm.lifetime.end(i64 8, i8* %466) #2, !dbg !3761
  %cleanup.dest.665 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.665, label %cleanup.674 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup.663
  br label %if.end.673, !dbg !3763

if.else.666:                                      ; preds = %if.end.617
  %467 = load i8**, i8*** %p582, align 8, !dbg !3764, !tbaa !981
  %468 = load i8*, i8** %467, align 8, !dbg !3767, !tbaa !981
  %call667 = call i64 @strlen(i8* %468) #8, !dbg !3768
  %469 = load i64, i64* %count, align 8, !dbg !3769, !tbaa !1279
  %cmp668 = icmp ne i64 %call667, %469, !dbg !3770
  br i1 %cmp668, label %if.then.670, label %if.end.672, !dbg !3771

if.then.670:                                      ; preds = %if.else.666
  %470 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3772, !tbaa !981
  %471 = load i8*, i8** %msgbuf.addr, align 8, !dbg !3773, !tbaa !981
  %472 = load i64, i64* %bufsize.addr, align 8, !dbg !3774, !tbaa !1279
  %call671 = call i8* @converterr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.43, i32 0, i32 0), %struct._object* %470, i8* %471, i64 %472), !dbg !3775
  store i8* %call671, i8** %retval, !dbg !3776
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.674, !dbg !3776

if.end.672:                                       ; preds = %if.else.666
  br label %if.end.673

if.end.673:                                       ; preds = %if.end.672, %cleanup.cont
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.674, !dbg !3777

cleanup.674:                                      ; preds = %if.end.673, %if.then.670, %cleanup.663, %if.then.615, %if.end.610, %if.then.608, %if.then.602
  %473 = bitcast i64* %count to i8*, !dbg !3778
  call void @llvm.lifetime.end(i64 8, i8* %473) #2, !dbg !3778
  %474 = bitcast i8** %buf to i8*, !dbg !3778
  call void @llvm.lifetime.end(i64 8, i8* %474) #2, !dbg !3778
  %475 = bitcast i8*** %p582 to i8*, !dbg !3778
  call void @llvm.lifetime.end(i64 8, i8* %475) #2, !dbg !3778
  %cleanup.dest.677 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.677, label %cleanup.1669 [
    i32 2, label %sw.epilog
  ]

sw.bb.678:                                        ; preds = %entry, %entry
  %476 = load i8*, i8** %format, align 8, !dbg !3779, !tbaa !981
  %477 = load i8, i8* %476, align 1, !dbg !3780, !tbaa !1064
  %conv679 = sext i8 %477 to i32, !dbg !3780
  %cmp680 = icmp eq i32 %conv679, 42, !dbg !3781
  br i1 %cmp680, label %if.then.682, label %if.else.743, !dbg !3782

if.then.682:                                      ; preds = %sw.bb.678
  %478 = bitcast %struct.bufferinfo** %p683 to i8*, !dbg !3783
  call void @llvm.lifetime.start(i64 8, i8* %478) #2, !dbg !3783
  call void @llvm.dbg.declare(metadata %struct.bufferinfo** %p683, metadata !757, metadata !985), !dbg !3784
  %479 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !3785, !tbaa !981
  %arraydecay684 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %479, i32 0, i32 0, !dbg !3786
  %gp_offset_p685 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay684, i32 0, i32 0, !dbg !3787
  %gp_offset686 = load i32, i32* %gp_offset_p685, !dbg !3787
  %fits_in_gp687 = icmp ule i32 %gp_offset686, 40, !dbg !3787
  br i1 %fits_in_gp687, label %vaarg.in_reg.688, label %vaarg.in_mem.690, !dbg !3787

vaarg.in_reg.688:                                 ; preds = %if.then.682
  %480 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay684, i32 0, i32 3, !dbg !3788
  %reg_save_area689 = load i8*, i8** %480, !dbg !3788
  %481 = getelementptr i8, i8* %reg_save_area689, i32 %gp_offset686, !dbg !3788
  %482 = bitcast i8* %481 to %struct.bufferinfo**, !dbg !3788
  %483 = add i32 %gp_offset686, 8, !dbg !3788
  store i32 %483, i32* %gp_offset_p685, !dbg !3788
  br label %vaarg.end.694, !dbg !3788

vaarg.in_mem.690:                                 ; preds = %if.then.682
  %overflow_arg_area_p691 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay684, i32 0, i32 2, !dbg !3790
  %overflow_arg_area692 = load i8*, i8** %overflow_arg_area_p691, !dbg !3790
  %484 = bitcast i8* %overflow_arg_area692 to %struct.bufferinfo**, !dbg !3790
  %overflow_arg_area.next693 = getelementptr i8, i8* %overflow_arg_area692, i32 8, !dbg !3790
  store i8* %overflow_arg_area.next693, i8** %overflow_arg_area_p691, !dbg !3790
  br label %vaarg.end.694, !dbg !3790

vaarg.end.694:                                    ; preds = %vaarg.in_mem.690, %vaarg.in_reg.688
  %vaarg.addr695 = phi %struct.bufferinfo** [ %482, %vaarg.in_reg.688 ], [ %484, %vaarg.in_mem.690 ], !dbg !3787
  %485 = load %struct.bufferinfo*, %struct.bufferinfo** %vaarg.addr695, !dbg !3792
  store %struct.bufferinfo* %485, %struct.bufferinfo** %p683, align 8, !dbg !3784, !tbaa !981
  %486 = load i8, i8* %c, align 1, !dbg !3795, !tbaa !1064
  %conv696 = sext i8 %486 to i32, !dbg !3795
  %cmp697 = icmp eq i32 %conv696, 122, !dbg !3796
  br i1 %cmp697, label %land.lhs.true.699, label %if.else.704, !dbg !3797

land.lhs.true.699:                                ; preds = %vaarg.end.694
  %487 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3798, !tbaa !981
  %cmp700 = icmp eq %struct._object* %487, @_Py_NoneStruct, !dbg !3800
  br i1 %cmp700, label %if.then.702, label %if.else.704, !dbg !3801

if.then.702:                                      ; preds = %land.lhs.true.699
  %488 = load %struct.bufferinfo*, %struct.bufferinfo** %p683, align 8, !dbg !3802, !tbaa !981
  %call703 = call i32 @PyBuffer_FillInfo(%struct.bufferinfo* %488, %struct._object* null, i8* null, i64 0, i32 1, i32 0), !dbg !3803
  br label %if.end.733, !dbg !3803

if.else.704:                                      ; preds = %land.lhs.true.699, %vaarg.end.694
  %489 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3804, !tbaa !981
  %ob_type705 = getelementptr inbounds %struct._object, %struct._object* %489, i32 0, i32 1, !dbg !3805
  %490 = load %struct._typeobject*, %struct._typeobject** %ob_type705, align 8, !dbg !3805, !tbaa !1259
  %tp_flags706 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %490, i32 0, i32 19, !dbg !3806
  %491 = load i64, i64* %tp_flags706, align 8, !dbg !3806, !tbaa !1263
  %and707 = and i64 %491, 268435456, !dbg !3807
  %cmp708 = icmp ne i64 %and707, 0, !dbg !3808
  br i1 %cmp708, label %if.then.710, label %if.else.721, !dbg !3809

if.then.710:                                      ; preds = %if.else.704
  %492 = bitcast i64* %len to i8*, !dbg !3810
  call void @llvm.lifetime.start(i64 8, i8* %492) #2, !dbg !3810
  call void @llvm.dbg.declare(metadata i64* %len, metadata !761, metadata !985), !dbg !3811
  %493 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3812, !tbaa !981
  %call711 = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %493, i64* %len), !dbg !3813
  store i8* %call711, i8** %sarg, align 8, !dbg !3814, !tbaa !981
  %494 = load i8*, i8** %sarg, align 8, !dbg !3815, !tbaa !981
  %cmp712 = icmp eq i8* %494, null, !dbg !3817
  br i1 %cmp712, label %if.then.714, label %if.end.716, !dbg !3818

if.then.714:                                      ; preds = %if.then.710
  %495 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3819, !tbaa !981
  %496 = load i8*, i8** %msgbuf.addr, align 8, !dbg !3820, !tbaa !981
  %497 = load i64, i64* %bufsize.addr, align 8, !dbg !3821, !tbaa !1279
  %call715 = call i8* @converterr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i32 0, i32 0), %struct._object* %495, i8* %496, i64 %497), !dbg !3822
  store i8* %call715, i8** %retval, !dbg !3823
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.718, !dbg !3823

if.end.716:                                       ; preds = %if.then.710
  %498 = load %struct.bufferinfo*, %struct.bufferinfo** %p683, align 8, !dbg !3824, !tbaa !981
  %499 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3825, !tbaa !981
  %500 = load i8*, i8** %sarg, align 8, !dbg !3826, !tbaa !981
  %501 = load i64, i64* %len, align 8, !dbg !3827, !tbaa !1279
  %call717 = call i32 @PyBuffer_FillInfo(%struct.bufferinfo* %498, %struct._object* %499, i8* %500, i64 %501, i32 1, i32 0), !dbg !3828
  store i32 0, i32* %cleanup.dest.slot, !dbg !3829
  br label %cleanup.718, !dbg !3829

cleanup.718:                                      ; preds = %if.end.716, %if.then.714
  %502 = bitcast i64* %len to i8*, !dbg !3830
  call void @llvm.lifetime.end(i64 8, i8* %502) #2, !dbg !3830
  %cleanup.dest.719 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.719, label %cleanup.740 [
    i32 0, label %cleanup.cont.720
  ]

cleanup.cont.720:                                 ; preds = %cleanup.718
  br label %if.end.732, !dbg !3832

if.else.721:                                      ; preds = %if.else.704
  %503 = bitcast i8** %buf722 to i8*, !dbg !3833
  call void @llvm.lifetime.start(i64 8, i8* %503) #2, !dbg !3833
  call void @llvm.dbg.declare(metadata i8** %buf722, metadata !765, metadata !985), !dbg !3834
  %504 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3835, !tbaa !981
  %505 = load %struct.bufferinfo*, %struct.bufferinfo** %p683, align 8, !dbg !3837, !tbaa !981
  %call723 = call i32 @getbuffer(%struct._object* %504, %struct.bufferinfo* %505, i8** %buf722), !dbg !3838
  %cmp724 = icmp slt i32 %call723, 0, !dbg !3839
  br i1 %cmp724, label %if.then.726, label %if.end.728, !dbg !3840

if.then.726:                                      ; preds = %if.else.721
  %506 = load i8*, i8** %buf722, align 8, !dbg !3841, !tbaa !981
  %507 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3842, !tbaa !981
  %508 = load i8*, i8** %msgbuf.addr, align 8, !dbg !3843, !tbaa !981
  %509 = load i64, i64* %bufsize.addr, align 8, !dbg !3844, !tbaa !1279
  %call727 = call i8* @converterr(i8* %506, %struct._object* %507, i8* %508, i64 %509), !dbg !3845
  store i8* %call727, i8** %retval, !dbg !3846
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.729, !dbg !3846

if.end.728:                                       ; preds = %if.else.721
  store i32 0, i32* %cleanup.dest.slot, !dbg !3847
  br label %cleanup.729, !dbg !3847

cleanup.729:                                      ; preds = %if.end.728, %if.then.726
  %510 = bitcast i8** %buf722 to i8*, !dbg !3848
  call void @llvm.lifetime.end(i64 8, i8* %510) #2, !dbg !3848
  %cleanup.dest.730 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.730, label %cleanup.740 [
    i32 0, label %cleanup.cont.731
  ]

cleanup.cont.731:                                 ; preds = %cleanup.729
  br label %if.end.732

if.end.732:                                       ; preds = %cleanup.cont.731, %cleanup.cont.720
  br label %if.end.733

if.end.733:                                       ; preds = %if.end.732, %if.then.702
  %511 = load %struct.bufferinfo*, %struct.bufferinfo** %p683, align 8, !dbg !3849, !tbaa !981
  %512 = bitcast %struct.bufferinfo* %511 to i8*, !dbg !3849
  %513 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8, !dbg !3851, !tbaa !981
  %call734 = call i32 @addcleanup(i8* %512, %struct.freelist_t* %513, i32 (%struct._object*, i8*)* @cleanup_buffer), !dbg !3852
  %tobool735 = icmp ne i32 %call734, 0, !dbg !3852
  br i1 %tobool735, label %if.then.736, label %if.end.738, !dbg !3853

if.then.736:                                      ; preds = %if.end.733
  %514 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3854, !tbaa !981
  %515 = load i8*, i8** %msgbuf.addr, align 8, !dbg !3856, !tbaa !981
  %516 = load i64, i64* %bufsize.addr, align 8, !dbg !3857, !tbaa !1279
  %call737 = call i8* @converterr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0), %struct._object* %514, i8* %515, i64 %516), !dbg !3858
  store i8* %call737, i8** %retval, !dbg !3859
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.740, !dbg !3859

if.end.738:                                       ; preds = %if.end.733
  %517 = load i8*, i8** %format, align 8, !dbg !3860, !tbaa !981
  %incdec.ptr739 = getelementptr i8, i8* %517, i32 1, !dbg !3860
  store i8* %incdec.ptr739, i8** %format, align 8, !dbg !3860, !tbaa !981
  store i32 0, i32* %cleanup.dest.slot, !dbg !3861
  br label %cleanup.740, !dbg !3861

cleanup.740:                                      ; preds = %if.end.738, %if.then.736, %cleanup.729, %cleanup.718
  %518 = bitcast %struct.bufferinfo** %p683 to i8*, !dbg !3862
  call void @llvm.lifetime.end(i64 8, i8* %518) #2, !dbg !3862
  %cleanup.dest.741 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.741, label %cleanup.1669 [
    i32 0, label %cleanup.cont.742
  ]

cleanup.cont.742:                                 ; preds = %cleanup.740
  br label %if.end.928, !dbg !3864

if.else.743:                                      ; preds = %sw.bb.678
  %519 = load i8*, i8** %format, align 8, !dbg !3865, !tbaa !981
  %520 = load i8, i8* %519, align 1, !dbg !3866, !tbaa !1064
  %conv744 = sext i8 %520 to i32, !dbg !3866
  %cmp745 = icmp eq i32 %conv744, 35, !dbg !3867
  br i1 %cmp745, label %if.then.747, label %if.else.864, !dbg !3868

if.then.747:                                      ; preds = %if.else.743
  %521 = bitcast i8*** %p748 to i8*, !dbg !3869
  call void @llvm.lifetime.start(i64 8, i8* %521) #2, !dbg !3869
  call void @llvm.dbg.declare(metadata i8*** %p748, metadata !767, metadata !985), !dbg !3870
  %522 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !3871, !tbaa !981
  %arraydecay749 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %522, i32 0, i32 0, !dbg !3872
  %gp_offset_p750 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay749, i32 0, i32 0, !dbg !3873
  %gp_offset751 = load i32, i32* %gp_offset_p750, !dbg !3873
  %fits_in_gp752 = icmp ule i32 %gp_offset751, 40, !dbg !3873
  br i1 %fits_in_gp752, label %vaarg.in_reg.753, label %vaarg.in_mem.755, !dbg !3873

vaarg.in_reg.753:                                 ; preds = %if.then.747
  %523 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay749, i32 0, i32 3, !dbg !3874
  %reg_save_area754 = load i8*, i8** %523, !dbg !3874
  %524 = getelementptr i8, i8* %reg_save_area754, i32 %gp_offset751, !dbg !3874
  %525 = bitcast i8* %524 to i8***, !dbg !3874
  %526 = add i32 %gp_offset751, 8, !dbg !3874
  store i32 %526, i32* %gp_offset_p750, !dbg !3874
  br label %vaarg.end.759, !dbg !3874

vaarg.in_mem.755:                                 ; preds = %if.then.747
  %overflow_arg_area_p756 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay749, i32 0, i32 2, !dbg !3876
  %overflow_arg_area757 = load i8*, i8** %overflow_arg_area_p756, !dbg !3876
  %527 = bitcast i8* %overflow_arg_area757 to i8***, !dbg !3876
  %overflow_arg_area.next758 = getelementptr i8, i8* %overflow_arg_area757, i32 8, !dbg !3876
  store i8* %overflow_arg_area.next758, i8** %overflow_arg_area_p756, !dbg !3876
  br label %vaarg.end.759, !dbg !3876

vaarg.end.759:                                    ; preds = %vaarg.in_mem.755, %vaarg.in_reg.753
  %vaarg.addr760 = phi i8*** [ %525, %vaarg.in_reg.753 ], [ %527, %vaarg.in_mem.755 ], !dbg !3873
  %528 = load i8**, i8*** %vaarg.addr760, !dbg !3878
  store i8** %528, i8*** %p748, align 8, !dbg !3870, !tbaa !981
  %529 = bitcast i32** %q761 to i8*, !dbg !3881
  call void @llvm.lifetime.start(i64 8, i8* %529) #2, !dbg !3881
  call void @llvm.dbg.declare(metadata i32** %q761, metadata !770, metadata !985), !dbg !3882
  store i32* null, i32** %q761, align 8, !dbg !3882, !tbaa !981
  %530 = bitcast i64** %q2762 to i8*, !dbg !3883
  call void @llvm.lifetime.start(i64 8, i8* %530) #2, !dbg !3883
  call void @llvm.dbg.declare(metadata i64** %q2762, metadata !771, metadata !985), !dbg !3884
  store i64* null, i64** %q2762, align 8, !dbg !3884, !tbaa !981
  %531 = load i32, i32* %flags.addr, align 4, !dbg !3885, !tbaa !998
  %and763 = and i32 %531, 2, !dbg !3887
  %tobool764 = icmp ne i32 %and763, 0, !dbg !3887
  br i1 %tobool764, label %if.then.765, label %if.else.778, !dbg !3888

if.then.765:                                      ; preds = %vaarg.end.759
  %532 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !3889, !tbaa !981
  %arraydecay766 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %532, i32 0, i32 0, !dbg !3891
  %gp_offset_p767 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay766, i32 0, i32 0, !dbg !3892
  %gp_offset768 = load i32, i32* %gp_offset_p767, !dbg !3892
  %fits_in_gp769 = icmp ule i32 %gp_offset768, 40, !dbg !3892
  br i1 %fits_in_gp769, label %vaarg.in_reg.770, label %vaarg.in_mem.772, !dbg !3892

vaarg.in_reg.770:                                 ; preds = %if.then.765
  %533 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay766, i32 0, i32 3, !dbg !3893
  %reg_save_area771 = load i8*, i8** %533, !dbg !3893
  %534 = getelementptr i8, i8* %reg_save_area771, i32 %gp_offset768, !dbg !3893
  %535 = bitcast i8* %534 to i64**, !dbg !3893
  %536 = add i32 %gp_offset768, 8, !dbg !3893
  store i32 %536, i32* %gp_offset_p767, !dbg !3893
  br label %vaarg.end.776, !dbg !3893

vaarg.in_mem.772:                                 ; preds = %if.then.765
  %overflow_arg_area_p773 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay766, i32 0, i32 2, !dbg !3895
  %overflow_arg_area774 = load i8*, i8** %overflow_arg_area_p773, !dbg !3895
  %537 = bitcast i8* %overflow_arg_area774 to i64**, !dbg !3895
  %overflow_arg_area.next775 = getelementptr i8, i8* %overflow_arg_area774, i32 8, !dbg !3895
  store i8* %overflow_arg_area.next775, i8** %overflow_arg_area_p773, !dbg !3895
  br label %vaarg.end.776, !dbg !3895

vaarg.end.776:                                    ; preds = %vaarg.in_mem.772, %vaarg.in_reg.770
  %vaarg.addr777 = phi i64** [ %535, %vaarg.in_reg.770 ], [ %537, %vaarg.in_mem.772 ], !dbg !3892
  %538 = load i64*, i64** %vaarg.addr777, !dbg !3897
  store i64* %538, i64** %q2762, align 8, !dbg !3900, !tbaa !981
  br label %if.end.791, !dbg !3901

if.else.778:                                      ; preds = %vaarg.end.759
  %539 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !3902, !tbaa !981
  %arraydecay779 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %539, i32 0, i32 0, !dbg !3904
  %gp_offset_p780 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay779, i32 0, i32 0, !dbg !3905
  %gp_offset781 = load i32, i32* %gp_offset_p780, !dbg !3905
  %fits_in_gp782 = icmp ule i32 %gp_offset781, 40, !dbg !3905
  br i1 %fits_in_gp782, label %vaarg.in_reg.783, label %vaarg.in_mem.785, !dbg !3905

vaarg.in_reg.783:                                 ; preds = %if.else.778
  %540 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay779, i32 0, i32 3, !dbg !3906
  %reg_save_area784 = load i8*, i8** %540, !dbg !3906
  %541 = getelementptr i8, i8* %reg_save_area784, i32 %gp_offset781, !dbg !3906
  %542 = bitcast i8* %541 to i32**, !dbg !3906
  %543 = add i32 %gp_offset781, 8, !dbg !3906
  store i32 %543, i32* %gp_offset_p780, !dbg !3906
  br label %vaarg.end.789, !dbg !3906

vaarg.in_mem.785:                                 ; preds = %if.else.778
  %overflow_arg_area_p786 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay779, i32 0, i32 2, !dbg !3908
  %overflow_arg_area787 = load i8*, i8** %overflow_arg_area_p786, !dbg !3908
  %544 = bitcast i8* %overflow_arg_area787 to i32**, !dbg !3908
  %overflow_arg_area.next788 = getelementptr i8, i8* %overflow_arg_area787, i32 8, !dbg !3908
  store i8* %overflow_arg_area.next788, i8** %overflow_arg_area_p786, !dbg !3908
  br label %vaarg.end.789, !dbg !3908

vaarg.end.789:                                    ; preds = %vaarg.in_mem.785, %vaarg.in_reg.783
  %vaarg.addr790 = phi i32** [ %542, %vaarg.in_reg.783 ], [ %544, %vaarg.in_mem.785 ], !dbg !3905
  %545 = load i32*, i32** %vaarg.addr790, !dbg !3910
  store i32* %545, i32** %q761, align 8, !dbg !3913, !tbaa !981
  br label %if.end.791

if.end.791:                                       ; preds = %vaarg.end.789, %vaarg.end.776
  %546 = load i8, i8* %c, align 1, !dbg !3914, !tbaa !1064
  %conv792 = sext i8 %546 to i32, !dbg !3914
  %cmp793 = icmp eq i32 %conv792, 122, !dbg !3915
  br i1 %cmp793, label %land.lhs.true.795, label %if.else.804, !dbg !3916

land.lhs.true.795:                                ; preds = %if.end.791
  %547 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3917, !tbaa !981
  %cmp796 = icmp eq %struct._object* %547, @_Py_NoneStruct, !dbg !3919
  br i1 %cmp796, label %if.then.798, label %if.else.804, !dbg !3920

if.then.798:                                      ; preds = %land.lhs.true.795
  %548 = load i8**, i8*** %p748, align 8, !dbg !3921, !tbaa !981
  store i8* null, i8** %548, align 8, !dbg !3923, !tbaa !981
  %549 = load i32, i32* %flags.addr, align 4, !dbg !3924, !tbaa !998
  %and799 = and i32 %549, 2, !dbg !3926
  %tobool800 = icmp ne i32 %and799, 0, !dbg !3926
  br i1 %tobool800, label %if.then.801, label %if.else.802, !dbg !3927

if.then.801:                                      ; preds = %if.then.798
  %550 = load i64*, i64** %q2762, align 8, !dbg !3928, !tbaa !981
  store i64 0, i64* %550, align 8, !dbg !3930, !tbaa !1279
  br label %if.end.803, !dbg !3931

if.else.802:                                      ; preds = %if.then.798
  %551 = load i32*, i32** %q761, align 8, !dbg !3932, !tbaa !981
  store i32 0, i32* %551, align 4, !dbg !3935, !tbaa !998
  br label %if.end.803

if.end.803:                                       ; preds = %if.else.802, %if.then.801
  br label %if.end.857, !dbg !3936

if.else.804:                                      ; preds = %land.lhs.true.795, %if.end.791
  %552 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3937, !tbaa !981
  %ob_type805 = getelementptr inbounds %struct._object, %struct._object* %552, i32 0, i32 1, !dbg !3938
  %553 = load %struct._typeobject*, %struct._typeobject** %ob_type805, align 8, !dbg !3938, !tbaa !1259
  %tp_flags806 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %553, i32 0, i32 19, !dbg !3939
  %554 = load i64, i64* %tp_flags806, align 8, !dbg !3939, !tbaa !1263
  %and807 = and i64 %554, 268435456, !dbg !3940
  %cmp808 = icmp ne i64 %and807, 0, !dbg !3941
  br i1 %cmp808, label %if.then.810, label %if.else.832, !dbg !3942

if.then.810:                                      ; preds = %if.else.804
  %555 = bitcast i64* %len811 to i8*, !dbg !3943
  call void @llvm.lifetime.start(i64 8, i8* %555) #2, !dbg !3943
  call void @llvm.dbg.declare(metadata i64* %len811, metadata !772, metadata !985), !dbg !3944
  %556 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3945, !tbaa !981
  %call812 = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %556, i64* %len811), !dbg !3946
  store i8* %call812, i8** %sarg, align 8, !dbg !3947, !tbaa !981
  %557 = load i8*, i8** %sarg, align 8, !dbg !3948, !tbaa !981
  %cmp813 = icmp eq i8* %557, null, !dbg !3950
  br i1 %cmp813, label %if.then.815, label %if.end.817, !dbg !3951

if.then.815:                                      ; preds = %if.then.810
  %558 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3952, !tbaa !981
  %559 = load i8*, i8** %msgbuf.addr, align 8, !dbg !3953, !tbaa !981
  %560 = load i64, i64* %bufsize.addr, align 8, !dbg !3954, !tbaa !1279
  %call816 = call i8* @converterr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i32 0, i32 0), %struct._object* %558, i8* %559, i64 %560), !dbg !3955
  store i8* %call816, i8** %retval, !dbg !3956
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.829, !dbg !3956

if.end.817:                                       ; preds = %if.then.810
  %561 = load i8*, i8** %sarg, align 8, !dbg !3957, !tbaa !981
  %562 = load i8**, i8*** %p748, align 8, !dbg !3958, !tbaa !981
  store i8* %561, i8** %562, align 8, !dbg !3959, !tbaa !981
  %563 = load i32, i32* %flags.addr, align 4, !dbg !3960, !tbaa !998
  %and818 = and i32 %563, 2, !dbg !3962
  %tobool819 = icmp ne i32 %and818, 0, !dbg !3962
  br i1 %tobool819, label %if.then.820, label %if.else.821, !dbg !3963

if.then.820:                                      ; preds = %if.end.817
  %564 = load i64, i64* %len811, align 8, !dbg !3964, !tbaa !1279
  %565 = load i64*, i64** %q2762, align 8, !dbg !3966, !tbaa !981
  store i64 %564, i64* %565, align 8, !dbg !3967, !tbaa !1279
  br label %if.end.828, !dbg !3968

if.else.821:                                      ; preds = %if.end.817
  %566 = load i64, i64* %len811, align 8, !dbg !3969, !tbaa !1279
  %cmp822 = icmp slt i64 2147483647, %566, !dbg !3973
  br i1 %cmp822, label %if.then.824, label %if.end.826, !dbg !3974

if.then.824:                                      ; preds = %if.else.821
  %567 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !3975, !tbaa !981
  call void @PyErr_SetString(%struct._object* %567, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.42, i32 0, i32 0)), !dbg !3978
  %568 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3979, !tbaa !981
  %569 = load i8*, i8** %msgbuf.addr, align 8, !dbg !3980, !tbaa !981
  %570 = load i64, i64* %bufsize.addr, align 8, !dbg !3981, !tbaa !1279
  %call825 = call i8* @converterr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %struct._object* %568, i8* %569, i64 %570), !dbg !3982
  store i8* %call825, i8** %retval, !dbg !3983
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.829, !dbg !3983

if.end.826:                                       ; preds = %if.else.821
  %571 = load i64, i64* %len811, align 8, !dbg !3984, !tbaa !1279
  %conv827 = trunc i64 %571 to i32, !dbg !3986
  %572 = load i32*, i32** %q761, align 8, !dbg !3987, !tbaa !981
  store i32 %conv827, i32* %572, align 4, !dbg !3988, !tbaa !998
  br label %if.end.828

if.end.828:                                       ; preds = %if.end.826, %if.then.820
  store i32 0, i32* %cleanup.dest.slot, !dbg !3989
  br label %cleanup.829, !dbg !3989

cleanup.829:                                      ; preds = %if.end.828, %if.then.824, %if.then.815
  %573 = bitcast i64* %len811 to i8*, !dbg !3990
  call void @llvm.lifetime.end(i64 8, i8* %573) #2, !dbg !3990
  %cleanup.dest.830 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.830, label %cleanup.859 [
    i32 0, label %cleanup.cont.831
  ]

cleanup.cont.831:                                 ; preds = %cleanup.829
  br label %if.end.856, !dbg !3992

if.else.832:                                      ; preds = %if.else.804
  %574 = bitcast i8** %buf833 to i8*, !dbg !3993
  call void @llvm.lifetime.start(i64 8, i8* %574) #2, !dbg !3993
  call void @llvm.dbg.declare(metadata i8** %buf833, metadata !776, metadata !985), !dbg !3994
  %575 = bitcast i64* %count834 to i8*, !dbg !3995
  call void @llvm.lifetime.start(i64 8, i8* %575) #2, !dbg !3995
  call void @llvm.dbg.declare(metadata i64* %count834, metadata !778, metadata !985), !dbg !3996
  %576 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3997, !tbaa !981
  %577 = load i8**, i8*** %p748, align 8, !dbg !3998, !tbaa !981
  %call835 = call i64 @convertbuffer(%struct._object* %576, i8** %577, i8** %buf833), !dbg !3999
  store i64 %call835, i64* %count834, align 8, !dbg !3996, !tbaa !1279
  %578 = load i64, i64* %count834, align 8, !dbg !4000, !tbaa !1279
  %cmp836 = icmp slt i64 %578, 0, !dbg !4002
  br i1 %cmp836, label %if.then.838, label %if.end.840, !dbg !4003

if.then.838:                                      ; preds = %if.else.832
  %579 = load i8*, i8** %buf833, align 8, !dbg !4004, !tbaa !981
  %580 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4005, !tbaa !981
  %581 = load i8*, i8** %msgbuf.addr, align 8, !dbg !4006, !tbaa !981
  %582 = load i64, i64* %bufsize.addr, align 8, !dbg !4007, !tbaa !1279
  %call839 = call i8* @converterr(i8* %579, %struct._object* %580, i8* %581, i64 %582), !dbg !4008
  store i8* %call839, i8** %retval, !dbg !4009
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.852, !dbg !4009

if.end.840:                                       ; preds = %if.else.832
  %583 = load i32, i32* %flags.addr, align 4, !dbg !4010, !tbaa !998
  %and841 = and i32 %583, 2, !dbg !4012
  %tobool842 = icmp ne i32 %and841, 0, !dbg !4012
  br i1 %tobool842, label %if.then.843, label %if.else.844, !dbg !4013

if.then.843:                                      ; preds = %if.end.840
  %584 = load i64, i64* %count834, align 8, !dbg !4014, !tbaa !1279
  %585 = load i64*, i64** %q2762, align 8, !dbg !4016, !tbaa !981
  store i64 %584, i64* %585, align 8, !dbg !4017, !tbaa !1279
  br label %if.end.851, !dbg !4018

if.else.844:                                      ; preds = %if.end.840
  %586 = load i64, i64* %count834, align 8, !dbg !4019, !tbaa !1279
  %cmp845 = icmp slt i64 2147483647, %586, !dbg !4023
  br i1 %cmp845, label %if.then.847, label %if.end.849, !dbg !4024

if.then.847:                                      ; preds = %if.else.844
  %587 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !4025, !tbaa !981
  call void @PyErr_SetString(%struct._object* %587, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.42, i32 0, i32 0)), !dbg !4028
  %588 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4029, !tbaa !981
  %589 = load i8*, i8** %msgbuf.addr, align 8, !dbg !4030, !tbaa !981
  %590 = load i64, i64* %bufsize.addr, align 8, !dbg !4031, !tbaa !1279
  %call848 = call i8* @converterr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %struct._object* %588, i8* %589, i64 %590), !dbg !4032
  store i8* %call848, i8** %retval, !dbg !4033
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.852, !dbg !4033

if.end.849:                                       ; preds = %if.else.844
  %591 = load i64, i64* %count834, align 8, !dbg !4034, !tbaa !1279
  %conv850 = trunc i64 %591 to i32, !dbg !4036
  %592 = load i32*, i32** %q761, align 8, !dbg !4037, !tbaa !981
  store i32 %conv850, i32* %592, align 4, !dbg !4038, !tbaa !998
  br label %if.end.851

if.end.851:                                       ; preds = %if.end.849, %if.then.843
  store i32 0, i32* %cleanup.dest.slot, !dbg !4039
  br label %cleanup.852, !dbg !4039

cleanup.852:                                      ; preds = %if.end.851, %if.then.847, %if.then.838
  %593 = bitcast i64* %count834 to i8*, !dbg !4040
  call void @llvm.lifetime.end(i64 8, i8* %593) #2, !dbg !4040
  %594 = bitcast i8** %buf833 to i8*, !dbg !4040
  call void @llvm.lifetime.end(i64 8, i8* %594) #2, !dbg !4040
  %cleanup.dest.854 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.854, label %cleanup.859 [
    i32 0, label %cleanup.cont.855
  ]

cleanup.cont.855:                                 ; preds = %cleanup.852
  br label %if.end.856

if.end.856:                                       ; preds = %cleanup.cont.855, %cleanup.cont.831
  br label %if.end.857

if.end.857:                                       ; preds = %if.end.856, %if.end.803
  %595 = load i8*, i8** %format, align 8, !dbg !4041, !tbaa !981
  %incdec.ptr858 = getelementptr i8, i8* %595, i32 1, !dbg !4041
  store i8* %incdec.ptr858, i8** %format, align 8, !dbg !4041, !tbaa !981
  store i32 0, i32* %cleanup.dest.slot, !dbg !4042
  br label %cleanup.859, !dbg !4042

cleanup.859:                                      ; preds = %if.end.857, %cleanup.852, %cleanup.829
  %596 = bitcast i64** %q2762 to i8*, !dbg !4043
  call void @llvm.lifetime.end(i64 8, i8* %596) #2, !dbg !4043
  %597 = bitcast i32** %q761 to i8*, !dbg !4043
  call void @llvm.lifetime.end(i64 8, i8* %597) #2, !dbg !4043
  %598 = bitcast i8*** %p748 to i8*, !dbg !4043
  call void @llvm.lifetime.end(i64 8, i8* %598) #2, !dbg !4043
  %cleanup.dest.862 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.862, label %cleanup.1669 [
    i32 0, label %cleanup.cont.863
  ]

cleanup.cont.863:                                 ; preds = %cleanup.859
  br label %if.end.927, !dbg !4045

if.else.864:                                      ; preds = %if.else.743
  %599 = bitcast i8*** %p865 to i8*, !dbg !4046
  call void @llvm.lifetime.start(i64 8, i8* %599) #2, !dbg !4046
  call void @llvm.dbg.declare(metadata i8*** %p865, metadata !779, metadata !985), !dbg !4047
  %600 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !4048, !tbaa !981
  %arraydecay866 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %600, i32 0, i32 0, !dbg !4049
  %gp_offset_p867 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay866, i32 0, i32 0, !dbg !4050
  %gp_offset868 = load i32, i32* %gp_offset_p867, !dbg !4050
  %fits_in_gp869 = icmp ule i32 %gp_offset868, 40, !dbg !4050
  br i1 %fits_in_gp869, label %vaarg.in_reg.870, label %vaarg.in_mem.872, !dbg !4050

vaarg.in_reg.870:                                 ; preds = %if.else.864
  %601 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay866, i32 0, i32 3, !dbg !4051
  %reg_save_area871 = load i8*, i8** %601, !dbg !4051
  %602 = getelementptr i8, i8* %reg_save_area871, i32 %gp_offset868, !dbg !4051
  %603 = bitcast i8* %602 to i8***, !dbg !4051
  %604 = add i32 %gp_offset868, 8, !dbg !4051
  store i32 %604, i32* %gp_offset_p867, !dbg !4051
  br label %vaarg.end.876, !dbg !4051

vaarg.in_mem.872:                                 ; preds = %if.else.864
  %overflow_arg_area_p873 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay866, i32 0, i32 2, !dbg !4053
  %overflow_arg_area874 = load i8*, i8** %overflow_arg_area_p873, !dbg !4053
  %605 = bitcast i8* %overflow_arg_area874 to i8***, !dbg !4053
  %overflow_arg_area.next875 = getelementptr i8, i8* %overflow_arg_area874, i32 8, !dbg !4053
  store i8* %overflow_arg_area.next875, i8** %overflow_arg_area_p873, !dbg !4053
  br label %vaarg.end.876, !dbg !4053

vaarg.end.876:                                    ; preds = %vaarg.in_mem.872, %vaarg.in_reg.870
  %vaarg.addr877 = phi i8*** [ %603, %vaarg.in_reg.870 ], [ %605, %vaarg.in_mem.872 ], !dbg !4050
  %606 = load i8**, i8*** %vaarg.addr877, !dbg !4055
  store i8** %606, i8*** %p865, align 8, !dbg !4047, !tbaa !981
  %607 = bitcast i64* %len878 to i8*, !dbg !4058
  call void @llvm.lifetime.start(i64 8, i8* %607) #2, !dbg !4058
  call void @llvm.dbg.declare(metadata i64* %len878, metadata !781, metadata !985), !dbg !4059
  store i8* null, i8** %sarg, align 8, !dbg !4060, !tbaa !981
  %608 = load i8, i8* %c, align 1, !dbg !4061, !tbaa !1064
  %conv879 = sext i8 %608 to i32, !dbg !4061
  %cmp880 = icmp eq i32 %conv879, 122, !dbg !4063
  br i1 %cmp880, label %land.lhs.true.882, label %if.else.886, !dbg !4064

land.lhs.true.882:                                ; preds = %vaarg.end.876
  %609 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4065, !tbaa !981
  %cmp883 = icmp eq %struct._object* %609, @_Py_NoneStruct, !dbg !4067
  br i1 %cmp883, label %if.then.885, label %if.else.886, !dbg !4068

if.then.885:                                      ; preds = %land.lhs.true.882
  %610 = load i8**, i8*** %p865, align 8, !dbg !4069, !tbaa !981
  store i8* null, i8** %610, align 8, !dbg !4070, !tbaa !981
  br label %if.end.906, !dbg !4071

if.else.886:                                      ; preds = %land.lhs.true.882, %vaarg.end.876
  %611 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4072, !tbaa !981
  %ob_type887 = getelementptr inbounds %struct._object, %struct._object* %611, i32 0, i32 1, !dbg !4074
  %612 = load %struct._typeobject*, %struct._typeobject** %ob_type887, align 8, !dbg !4074, !tbaa !1259
  %tp_flags888 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %612, i32 0, i32 19, !dbg !4075
  %613 = load i64, i64* %tp_flags888, align 8, !dbg !4075, !tbaa !1263
  %and889 = and i64 %613, 268435456, !dbg !4076
  %cmp890 = icmp ne i64 %and889, 0, !dbg !4077
  br i1 %cmp890, label %if.then.892, label %if.else.899, !dbg !4078

if.then.892:                                      ; preds = %if.else.886
  %614 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4079, !tbaa !981
  %call893 = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %614, i64* %len878), !dbg !4081
  store i8* %call893, i8** %sarg, align 8, !dbg !4082, !tbaa !981
  %615 = load i8*, i8** %sarg, align 8, !dbg !4083, !tbaa !981
  %cmp894 = icmp eq i8* %615, null, !dbg !4085
  br i1 %cmp894, label %if.then.896, label %if.end.898, !dbg !4086

if.then.896:                                      ; preds = %if.then.892
  %616 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4087, !tbaa !981
  %617 = load i8*, i8** %msgbuf.addr, align 8, !dbg !4088, !tbaa !981
  %618 = load i64, i64* %bufsize.addr, align 8, !dbg !4089, !tbaa !1279
  %call897 = call i8* @converterr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i32 0, i32 0), %struct._object* %616, i8* %617, i64 %618), !dbg !4090
  store i8* %call897, i8** %retval, !dbg !4091
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.923, !dbg !4091

if.end.898:                                       ; preds = %if.then.892
  %619 = load i8*, i8** %sarg, align 8, !dbg !4092, !tbaa !981
  %620 = load i8**, i8*** %p865, align 8, !dbg !4093, !tbaa !981
  store i8* %619, i8** %620, align 8, !dbg !4094, !tbaa !981
  br label %if.end.905, !dbg !4095

if.else.899:                                      ; preds = %if.else.886
  %621 = load i8, i8* %c, align 1, !dbg !4096, !tbaa !1064
  %conv900 = sext i8 %621 to i32, !dbg !4096
  %cmp901 = icmp eq i32 %conv900, 122, !dbg !4097
  %cond903 = select i1 %cmp901, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), !dbg !4096
  %622 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4098, !tbaa !981
  %623 = load i8*, i8** %msgbuf.addr, align 8, !dbg !4099, !tbaa !981
  %624 = load i64, i64* %bufsize.addr, align 8, !dbg !4100, !tbaa !1279
  %call904 = call i8* @converterr(i8* %cond903, %struct._object* %622, i8* %623, i64 %624), !dbg !4101
  store i8* %call904, i8** %retval, !dbg !4102
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.923, !dbg !4102

if.end.905:                                       ; preds = %if.end.898
  br label %if.end.906

if.end.906:                                       ; preds = %if.end.905, %if.then.885
  %625 = load i8**, i8*** %p865, align 8, !dbg !4103, !tbaa !981
  %626 = load i8*, i8** %625, align 8, !dbg !4105, !tbaa !981
  %cmp907 = icmp ne i8* %626, null, !dbg !4106
  br i1 %cmp907, label %land.lhs.true.909, label %if.end.922, !dbg !4107

land.lhs.true.909:                                ; preds = %if.end.906
  %627 = load i8*, i8** %sarg, align 8, !dbg !4108, !tbaa !981
  %cmp910 = icmp ne i8* %627, null, !dbg !4110
  br i1 %cmp910, label %land.lhs.true.912, label %if.end.922, !dbg !4111

land.lhs.true.912:                                ; preds = %land.lhs.true.909
  %628 = load i8**, i8*** %p865, align 8, !dbg !4112, !tbaa !981
  %629 = load i8*, i8** %628, align 8, !dbg !4114, !tbaa !981
  %call913 = call i64 @strlen(i8* %629) #8, !dbg !4115
  %630 = load i64, i64* %len878, align 8, !dbg !4116, !tbaa !1279
  %cmp914 = icmp ne i64 %call913, %630, !dbg !4117
  br i1 %cmp914, label %if.then.916, label %if.end.922, !dbg !4118

if.then.916:                                      ; preds = %land.lhs.true.912
  %631 = load i8, i8* %c, align 1, !dbg !4119, !tbaa !1064
  %conv917 = sext i8 %631 to i32, !dbg !4119
  %cmp918 = icmp eq i32 %conv917, 122, !dbg !4120
  %cond920 = select i1 %cmp918, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i32 0, i32 0), !dbg !4119
  %632 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4121, !tbaa !981
  %633 = load i8*, i8** %msgbuf.addr, align 8, !dbg !4122, !tbaa !981
  %634 = load i64, i64* %bufsize.addr, align 8, !dbg !4123, !tbaa !1279
  %call921 = call i8* @converterr(i8* %cond920, %struct._object* %632, i8* %633, i64 %634), !dbg !4124
  store i8* %call921, i8** %retval, !dbg !4125
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.923, !dbg !4125

if.end.922:                                       ; preds = %land.lhs.true.912, %land.lhs.true.909, %if.end.906
  store i32 0, i32* %cleanup.dest.slot, !dbg !4126
  br label %cleanup.923, !dbg !4126

cleanup.923:                                      ; preds = %if.end.922, %if.then.916, %if.else.899, %if.then.896
  %635 = bitcast i64* %len878 to i8*, !dbg !4127
  call void @llvm.lifetime.end(i64 8, i8* %635) #2, !dbg !4127
  %636 = bitcast i8*** %p865 to i8*, !dbg !4127
  call void @llvm.lifetime.end(i64 8, i8* %636) #2, !dbg !4127
  %cleanup.dest.925 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.925, label %cleanup.1669 [
    i32 0, label %cleanup.cont.926
  ]

cleanup.cont.926:                                 ; preds = %cleanup.923
  br label %if.end.927

if.end.927:                                       ; preds = %cleanup.cont.926, %cleanup.cont.863
  br label %if.end.928

if.end.928:                                       ; preds = %if.end.927, %cleanup.cont.742
  br label %sw.epilog, !dbg !4128

sw.bb.929:                                        ; preds = %entry, %entry
  %637 = bitcast i32*** %p930 to i8*, !dbg !4129
  call void @llvm.lifetime.start(i64 8, i8* %637) #2, !dbg !4129
  call void @llvm.dbg.declare(metadata i32*** %p930, metadata !782, metadata !985), !dbg !4130
  %638 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !4131, !tbaa !981
  %arraydecay931 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %638, i32 0, i32 0, !dbg !4132
  %gp_offset_p932 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay931, i32 0, i32 0, !dbg !4133
  %gp_offset933 = load i32, i32* %gp_offset_p932, !dbg !4133
  %fits_in_gp934 = icmp ule i32 %gp_offset933, 40, !dbg !4133
  br i1 %fits_in_gp934, label %vaarg.in_reg.935, label %vaarg.in_mem.937, !dbg !4133

vaarg.in_reg.935:                                 ; preds = %sw.bb.929
  %639 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay931, i32 0, i32 3, !dbg !4134
  %reg_save_area936 = load i8*, i8** %639, !dbg !4134
  %640 = getelementptr i8, i8* %reg_save_area936, i32 %gp_offset933, !dbg !4134
  %641 = bitcast i8* %640 to i32***, !dbg !4134
  %642 = add i32 %gp_offset933, 8, !dbg !4134
  store i32 %642, i32* %gp_offset_p932, !dbg !4134
  br label %vaarg.end.941, !dbg !4134

vaarg.in_mem.937:                                 ; preds = %sw.bb.929
  %overflow_arg_area_p938 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay931, i32 0, i32 2, !dbg !4136
  %overflow_arg_area939 = load i8*, i8** %overflow_arg_area_p938, !dbg !4136
  %643 = bitcast i8* %overflow_arg_area939 to i32***, !dbg !4136
  %overflow_arg_area.next940 = getelementptr i8, i8* %overflow_arg_area939, i32 8, !dbg !4136
  store i8* %overflow_arg_area.next940, i8** %overflow_arg_area_p938, !dbg !4136
  br label %vaarg.end.941, !dbg !4136

vaarg.end.941:                                    ; preds = %vaarg.in_mem.937, %vaarg.in_reg.935
  %vaarg.addr942 = phi i32*** [ %641, %vaarg.in_reg.935 ], [ %643, %vaarg.in_mem.937 ], !dbg !4133
  %644 = load i32**, i32*** %vaarg.addr942, !dbg !4138
  store i32** %644, i32*** %p930, align 8, !dbg !4130, !tbaa !981
  %645 = load i8*, i8** %format, align 8, !dbg !4141, !tbaa !981
  %646 = load i8, i8* %645, align 1, !dbg !4142, !tbaa !1064
  %conv943 = sext i8 %646 to i32, !dbg !4142
  %cmp944 = icmp eq i32 %conv943, 35, !dbg !4143
  br i1 %cmp944, label %if.then.946, label %if.else.1026, !dbg !4144

if.then.946:                                      ; preds = %vaarg.end.941
  %647 = bitcast i32** %q947 to i8*, !dbg !4145
  call void @llvm.lifetime.start(i64 8, i8* %647) #2, !dbg !4145
  call void @llvm.dbg.declare(metadata i32** %q947, metadata !787, metadata !985), !dbg !4146
  store i32* null, i32** %q947, align 8, !dbg !4146, !tbaa !981
  %648 = bitcast i64** %q2948 to i8*, !dbg !4147
  call void @llvm.lifetime.start(i64 8, i8* %648) #2, !dbg !4147
  call void @llvm.dbg.declare(metadata i64** %q2948, metadata !790, metadata !985), !dbg !4148
  store i64* null, i64** %q2948, align 8, !dbg !4148, !tbaa !981
  %649 = load i32, i32* %flags.addr, align 4, !dbg !4149, !tbaa !998
  %and949 = and i32 %649, 2, !dbg !4151
  %tobool950 = icmp ne i32 %and949, 0, !dbg !4151
  br i1 %tobool950, label %if.then.951, label %if.else.964, !dbg !4152

if.then.951:                                      ; preds = %if.then.946
  %650 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !4153, !tbaa !981
  %arraydecay952 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %650, i32 0, i32 0, !dbg !4155
  %gp_offset_p953 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay952, i32 0, i32 0, !dbg !4156
  %gp_offset954 = load i32, i32* %gp_offset_p953, !dbg !4156
  %fits_in_gp955 = icmp ule i32 %gp_offset954, 40, !dbg !4156
  br i1 %fits_in_gp955, label %vaarg.in_reg.956, label %vaarg.in_mem.958, !dbg !4156

vaarg.in_reg.956:                                 ; preds = %if.then.951
  %651 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay952, i32 0, i32 3, !dbg !4157
  %reg_save_area957 = load i8*, i8** %651, !dbg !4157
  %652 = getelementptr i8, i8* %reg_save_area957, i32 %gp_offset954, !dbg !4157
  %653 = bitcast i8* %652 to i64**, !dbg !4157
  %654 = add i32 %gp_offset954, 8, !dbg !4157
  store i32 %654, i32* %gp_offset_p953, !dbg !4157
  br label %vaarg.end.962, !dbg !4157

vaarg.in_mem.958:                                 ; preds = %if.then.951
  %overflow_arg_area_p959 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay952, i32 0, i32 2, !dbg !4159
  %overflow_arg_area960 = load i8*, i8** %overflow_arg_area_p959, !dbg !4159
  %655 = bitcast i8* %overflow_arg_area960 to i64**, !dbg !4159
  %overflow_arg_area.next961 = getelementptr i8, i8* %overflow_arg_area960, i32 8, !dbg !4159
  store i8* %overflow_arg_area.next961, i8** %overflow_arg_area_p959, !dbg !4159
  br label %vaarg.end.962, !dbg !4159

vaarg.end.962:                                    ; preds = %vaarg.in_mem.958, %vaarg.in_reg.956
  %vaarg.addr963 = phi i64** [ %653, %vaarg.in_reg.956 ], [ %655, %vaarg.in_mem.958 ], !dbg !4156
  %656 = load i64*, i64** %vaarg.addr963, !dbg !4161
  store i64* %656, i64** %q2948, align 8, !dbg !4164, !tbaa !981
  br label %if.end.977, !dbg !4165

if.else.964:                                      ; preds = %if.then.946
  %657 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !4166, !tbaa !981
  %arraydecay965 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %657, i32 0, i32 0, !dbg !4168
  %gp_offset_p966 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay965, i32 0, i32 0, !dbg !4169
  %gp_offset967 = load i32, i32* %gp_offset_p966, !dbg !4169
  %fits_in_gp968 = icmp ule i32 %gp_offset967, 40, !dbg !4169
  br i1 %fits_in_gp968, label %vaarg.in_reg.969, label %vaarg.in_mem.971, !dbg !4169

vaarg.in_reg.969:                                 ; preds = %if.else.964
  %658 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay965, i32 0, i32 3, !dbg !4170
  %reg_save_area970 = load i8*, i8** %658, !dbg !4170
  %659 = getelementptr i8, i8* %reg_save_area970, i32 %gp_offset967, !dbg !4170
  %660 = bitcast i8* %659 to i32**, !dbg !4170
  %661 = add i32 %gp_offset967, 8, !dbg !4170
  store i32 %661, i32* %gp_offset_p966, !dbg !4170
  br label %vaarg.end.975, !dbg !4170

vaarg.in_mem.971:                                 ; preds = %if.else.964
  %overflow_arg_area_p972 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay965, i32 0, i32 2, !dbg !4172
  %overflow_arg_area973 = load i8*, i8** %overflow_arg_area_p972, !dbg !4172
  %662 = bitcast i8* %overflow_arg_area973 to i32**, !dbg !4172
  %overflow_arg_area.next974 = getelementptr i8, i8* %overflow_arg_area973, i32 8, !dbg !4172
  store i8* %overflow_arg_area.next974, i8** %overflow_arg_area_p972, !dbg !4172
  br label %vaarg.end.975, !dbg !4172

vaarg.end.975:                                    ; preds = %vaarg.in_mem.971, %vaarg.in_reg.969
  %vaarg.addr976 = phi i32** [ %660, %vaarg.in_reg.969 ], [ %662, %vaarg.in_mem.971 ], !dbg !4169
  %663 = load i32*, i32** %vaarg.addr976, !dbg !4174
  store i32* %663, i32** %q947, align 8, !dbg !4177, !tbaa !981
  br label %if.end.977

if.end.977:                                       ; preds = %vaarg.end.975, %vaarg.end.962
  %664 = load i8, i8* %c, align 1, !dbg !4178, !tbaa !1064
  %conv978 = sext i8 %664 to i32, !dbg !4178
  %cmp979 = icmp eq i32 %conv978, 90, !dbg !4179
  br i1 %cmp979, label %land.lhs.true.981, label %if.else.990, !dbg !4180

land.lhs.true.981:                                ; preds = %if.end.977
  %665 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4181, !tbaa !981
  %cmp982 = icmp eq %struct._object* %665, @_Py_NoneStruct, !dbg !4183
  br i1 %cmp982, label %if.then.984, label %if.else.990, !dbg !4184

if.then.984:                                      ; preds = %land.lhs.true.981
  %666 = load i32**, i32*** %p930, align 8, !dbg !4185, !tbaa !981
  store i32* null, i32** %666, align 8, !dbg !4187, !tbaa !981
  %667 = load i32, i32* %flags.addr, align 4, !dbg !4188, !tbaa !998
  %and985 = and i32 %667, 2, !dbg !4190
  %tobool986 = icmp ne i32 %and985, 0, !dbg !4190
  br i1 %tobool986, label %if.then.987, label %if.else.988, !dbg !4191

if.then.987:                                      ; preds = %if.then.984
  %668 = load i64*, i64** %q2948, align 8, !dbg !4192, !tbaa !981
  store i64 0, i64* %668, align 8, !dbg !4194, !tbaa !1279
  br label %if.end.989, !dbg !4195

if.else.988:                                      ; preds = %if.then.984
  %669 = load i32*, i32** %q947, align 8, !dbg !4196, !tbaa !981
  store i32 0, i32* %669, align 4, !dbg !4199, !tbaa !998
  br label %if.end.989

if.end.989:                                       ; preds = %if.else.988, %if.then.987
  br label %if.end.1020, !dbg !4200

if.else.990:                                      ; preds = %land.lhs.true.981, %if.end.977
  %670 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4201, !tbaa !981
  %ob_type991 = getelementptr inbounds %struct._object, %struct._object* %670, i32 0, i32 1, !dbg !4202
  %671 = load %struct._typeobject*, %struct._typeobject** %ob_type991, align 8, !dbg !4202, !tbaa !1259
  %tp_flags992 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %671, i32 0, i32 19, !dbg !4203
  %672 = load i64, i64* %tp_flags992, align 8, !dbg !4203, !tbaa !1263
  %and993 = and i64 %672, 268435456, !dbg !4204
  %cmp994 = icmp ne i64 %and993, 0, !dbg !4205
  br i1 %cmp994, label %if.then.996, label %if.else.1017, !dbg !4206

if.then.996:                                      ; preds = %if.else.990
  %673 = bitcast i64* %len997 to i8*, !dbg !4207
  call void @llvm.lifetime.start(i64 8, i8* %673) #2, !dbg !4207
  call void @llvm.dbg.declare(metadata i64* %len997, metadata !791, metadata !985), !dbg !4208
  %674 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4209, !tbaa !981
  %call998 = call i32* @PyUnicode_AsUnicodeAndSize(%struct._object* %674, i64* %len997), !dbg !4210
  %675 = load i32**, i32*** %p930, align 8, !dbg !4211, !tbaa !981
  store i32* %call998, i32** %675, align 8, !dbg !4212, !tbaa !981
  %676 = load i32**, i32*** %p930, align 8, !dbg !4213, !tbaa !981
  %677 = load i32*, i32** %676, align 8, !dbg !4215, !tbaa !981
  %cmp999 = icmp eq i32* %677, null, !dbg !4216
  br i1 %cmp999, label %if.then.1001, label %if.end.1002, !dbg !4217

if.then.1001:                                     ; preds = %if.then.996
  %678 = load i8*, i8** %msgbuf.addr, align 8, !dbg !4218, !tbaa !981
  store i8* %678, i8** %retval, !dbg !4219
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1014, !dbg !4219

if.end.1002:                                      ; preds = %if.then.996
  %679 = load i32, i32* %flags.addr, align 4, !dbg !4220, !tbaa !998
  %and1003 = and i32 %679, 2, !dbg !4222
  %tobool1004 = icmp ne i32 %and1003, 0, !dbg !4222
  br i1 %tobool1004, label %if.then.1005, label %if.else.1006, !dbg !4223

if.then.1005:                                     ; preds = %if.end.1002
  %680 = load i64, i64* %len997, align 8, !dbg !4224, !tbaa !1279
  %681 = load i64*, i64** %q2948, align 8, !dbg !4226, !tbaa !981
  store i64 %680, i64* %681, align 8, !dbg !4227, !tbaa !1279
  br label %if.end.1013, !dbg !4228

if.else.1006:                                     ; preds = %if.end.1002
  %682 = load i64, i64* %len997, align 8, !dbg !4229, !tbaa !1279
  %cmp1007 = icmp slt i64 2147483647, %682, !dbg !4233
  br i1 %cmp1007, label %if.then.1009, label %if.end.1011, !dbg !4234

if.then.1009:                                     ; preds = %if.else.1006
  %683 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !4235, !tbaa !981
  call void @PyErr_SetString(%struct._object* %683, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.42, i32 0, i32 0)), !dbg !4238
  %684 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4239, !tbaa !981
  %685 = load i8*, i8** %msgbuf.addr, align 8, !dbg !4240, !tbaa !981
  %686 = load i64, i64* %bufsize.addr, align 8, !dbg !4241, !tbaa !1279
  %call1010 = call i8* @converterr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %struct._object* %684, i8* %685, i64 %686), !dbg !4242
  store i8* %call1010, i8** %retval, !dbg !4243
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1014, !dbg !4243

if.end.1011:                                      ; preds = %if.else.1006
  %687 = load i64, i64* %len997, align 8, !dbg !4244, !tbaa !1279
  %conv1012 = trunc i64 %687 to i32, !dbg !4246
  %688 = load i32*, i32** %q947, align 8, !dbg !4247, !tbaa !981
  store i32 %conv1012, i32* %688, align 4, !dbg !4248, !tbaa !998
  br label %if.end.1013

if.end.1013:                                      ; preds = %if.end.1011, %if.then.1005
  store i32 0, i32* %cleanup.dest.slot, !dbg !4249
  br label %cleanup.1014, !dbg !4249

cleanup.1014:                                     ; preds = %if.end.1013, %if.then.1009, %if.then.1001
  %689 = bitcast i64* %len997 to i8*, !dbg !4250
  call void @llvm.lifetime.end(i64 8, i8* %689) #2, !dbg !4250
  %cleanup.dest.1015 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1015, label %cleanup.1022 [
    i32 0, label %cleanup.cont.1016
  ]

cleanup.cont.1016:                                ; preds = %cleanup.1014
  br label %if.end.1019, !dbg !4252

if.else.1017:                                     ; preds = %if.else.990
  %690 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4253, !tbaa !981
  %691 = load i8*, i8** %msgbuf.addr, align 8, !dbg !4254, !tbaa !981
  %692 = load i64, i64* %bufsize.addr, align 8, !dbg !4255, !tbaa !1279
  %call1018 = call i8* @converterr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0), %struct._object* %690, i8* %691, i64 %692), !dbg !4256
  store i8* %call1018, i8** %retval, !dbg !4257
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1022, !dbg !4257

if.end.1019:                                      ; preds = %cleanup.cont.1016
  br label %if.end.1020

if.end.1020:                                      ; preds = %if.end.1019, %if.end.989
  %693 = load i8*, i8** %format, align 8, !dbg !4258, !tbaa !981
  %incdec.ptr1021 = getelementptr i8, i8* %693, i32 1, !dbg !4258
  store i8* %incdec.ptr1021, i8** %format, align 8, !dbg !4258, !tbaa !981
  store i32 0, i32* %cleanup.dest.slot, !dbg !4259
  br label %cleanup.1022, !dbg !4259

cleanup.1022:                                     ; preds = %if.end.1020, %if.else.1017, %cleanup.1014
  %694 = bitcast i64** %q2948 to i8*, !dbg !4260
  call void @llvm.lifetime.end(i64 8, i8* %694) #2, !dbg !4260
  %695 = bitcast i32** %q947 to i8*, !dbg !4260
  call void @llvm.lifetime.end(i64 8, i8* %695) #2, !dbg !4260
  %cleanup.dest.1024 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1024, label %cleanup.1065 [
    i32 0, label %cleanup.cont.1025
  ]

cleanup.cont.1025:                                ; preds = %cleanup.1022
  br label %if.end.1064, !dbg !4262

if.else.1026:                                     ; preds = %vaarg.end.941
  %696 = load i8, i8* %c, align 1, !dbg !4263, !tbaa !1064
  %conv1027 = sext i8 %696 to i32, !dbg !4263
  %cmp1028 = icmp eq i32 %conv1027, 90, !dbg !4264
  br i1 %cmp1028, label %land.lhs.true.1030, label %if.else.1034, !dbg !4265

land.lhs.true.1030:                               ; preds = %if.else.1026
  %697 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4266, !tbaa !981
  %cmp1031 = icmp eq %struct._object* %697, @_Py_NoneStruct, !dbg !4268
  br i1 %cmp1031, label %if.then.1033, label %if.else.1034, !dbg !4269

if.then.1033:                                     ; preds = %land.lhs.true.1030
  %698 = load i32**, i32*** %p930, align 8, !dbg !4270, !tbaa !981
  store i32* null, i32** %698, align 8, !dbg !4271, !tbaa !981
  br label %if.end.1063, !dbg !4272

if.else.1034:                                     ; preds = %land.lhs.true.1030, %if.else.1026
  %699 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4273, !tbaa !981
  %ob_type1035 = getelementptr inbounds %struct._object, %struct._object* %699, i32 0, i32 1, !dbg !4274
  %700 = load %struct._typeobject*, %struct._typeobject** %ob_type1035, align 8, !dbg !4274, !tbaa !1259
  %tp_flags1036 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %700, i32 0, i32 19, !dbg !4275
  %701 = load i64, i64* %tp_flags1036, align 8, !dbg !4275, !tbaa !1263
  %and1037 = and i64 %701, 268435456, !dbg !4276
  %cmp1038 = icmp ne i64 %and1037, 0, !dbg !4277
  br i1 %cmp1038, label %if.then.1040, label %if.else.1056, !dbg !4278

if.then.1040:                                     ; preds = %if.else.1034
  %702 = bitcast i64* %len1041 to i8*, !dbg !4279
  call void @llvm.lifetime.start(i64 8, i8* %702) #2, !dbg !4279
  call void @llvm.dbg.declare(metadata i64* %len1041, metadata !795, metadata !985), !dbg !4280
  %703 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4281, !tbaa !981
  %call1042 = call i32* @PyUnicode_AsUnicodeAndSize(%struct._object* %703, i64* %len1041), !dbg !4282
  %704 = load i32**, i32*** %p930, align 8, !dbg !4283, !tbaa !981
  store i32* %call1042, i32** %704, align 8, !dbg !4284, !tbaa !981
  %705 = load i32**, i32*** %p930, align 8, !dbg !4285, !tbaa !981
  %706 = load i32*, i32** %705, align 8, !dbg !4287, !tbaa !981
  %cmp1043 = icmp eq i32* %706, null, !dbg !4288
  br i1 %cmp1043, label %if.then.1045, label %if.end.1046, !dbg !4289

if.then.1045:                                     ; preds = %if.then.1040
  %707 = load i8*, i8** %msgbuf.addr, align 8, !dbg !4290, !tbaa !981
  store i8* %707, i8** %retval, !dbg !4291
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1053, !dbg !4291

if.end.1046:                                      ; preds = %if.then.1040
  %708 = load i32**, i32*** %p930, align 8, !dbg !4292, !tbaa !981
  %709 = load i32*, i32** %708, align 8, !dbg !4294, !tbaa !981
  %call1047 = call i64 @Py_UNICODE_strlen(i32* %709), !dbg !4295
  %710 = load i64, i64* %len1041, align 8, !dbg !4296, !tbaa !1279
  %cmp1048 = icmp ne i64 %call1047, %710, !dbg !4297
  br i1 %cmp1048, label %if.then.1050, label %if.end.1052, !dbg !4298

if.then.1050:                                     ; preds = %if.end.1046
  %711 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4299, !tbaa !981
  %712 = load i8*, i8** %msgbuf.addr, align 8, !dbg !4300, !tbaa !981
  %713 = load i64, i64* %bufsize.addr, align 8, !dbg !4301, !tbaa !1279
  %call1051 = call i8* @converterr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.47, i32 0, i32 0), %struct._object* %711, i8* %712, i64 %713), !dbg !4302
  store i8* %call1051, i8** %retval, !dbg !4303
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1053, !dbg !4303

if.end.1052:                                      ; preds = %if.end.1046
  store i32 0, i32* %cleanup.dest.slot, !dbg !4304
  br label %cleanup.1053, !dbg !4304

cleanup.1053:                                     ; preds = %if.end.1052, %if.then.1050, %if.then.1045
  %714 = bitcast i64* %len1041 to i8*, !dbg !4305
  call void @llvm.lifetime.end(i64 8, i8* %714) #2, !dbg !4305
  %cleanup.dest.1054 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1054, label %cleanup.1065 [
    i32 0, label %cleanup.cont.1055
  ]

cleanup.cont.1055:                                ; preds = %cleanup.1053
  br label %if.end.1062, !dbg !4307

if.else.1056:                                     ; preds = %if.else.1034
  %715 = load i8, i8* %c, align 1, !dbg !4308, !tbaa !1064
  %conv1057 = sext i8 %715 to i32, !dbg !4308
  %cmp1058 = icmp eq i32 %conv1057, 90, !dbg !4309
  %cond1060 = select i1 %cmp1058, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), !dbg !4308
  %716 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4310, !tbaa !981
  %717 = load i8*, i8** %msgbuf.addr, align 8, !dbg !4311, !tbaa !981
  %718 = load i64, i64* %bufsize.addr, align 8, !dbg !4312, !tbaa !1279
  %call1061 = call i8* @converterr(i8* %cond1060, %struct._object* %716, i8* %717, i64 %718), !dbg !4313
  store i8* %call1061, i8** %retval, !dbg !4314
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1065, !dbg !4314

if.end.1062:                                      ; preds = %cleanup.cont.1055
  br label %if.end.1063

if.end.1063:                                      ; preds = %if.end.1062, %if.then.1033
  br label %if.end.1064

if.end.1064:                                      ; preds = %if.end.1063, %cleanup.cont.1025
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.1065, !dbg !4315

cleanup.1065:                                     ; preds = %if.end.1064, %if.else.1056, %cleanup.1053, %cleanup.1022
  %719 = bitcast i32*** %p930 to i8*, !dbg !4316
  call void @llvm.lifetime.end(i64 8, i8* %719) #2, !dbg !4316
  %cleanup.dest.1066 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1066, label %cleanup.1669 [
    i32 2, label %sw.epilog
  ]

sw.bb.1067:                                       ; preds = %entry
  %720 = bitcast i8*** %buffer to i8*, !dbg !4317
  call void @llvm.lifetime.start(i64 8, i8* %720) #2, !dbg !4317
  call void @llvm.dbg.declare(metadata i8*** %buffer, metadata !800, metadata !985), !dbg !4318
  %721 = bitcast i8** %encoding to i8*, !dbg !4319
  call void @llvm.lifetime.start(i64 8, i8* %721) #2, !dbg !4319
  call void @llvm.dbg.declare(metadata i8** %encoding, metadata !802, metadata !985), !dbg !4320
  %722 = bitcast %struct._object** %s to i8*, !dbg !4321
  call void @llvm.lifetime.start(i64 8, i8* %722) #2, !dbg !4321
  call void @llvm.dbg.declare(metadata %struct._object** %s, metadata !803, metadata !985), !dbg !4322
  %723 = bitcast i32* %recode_strings to i8*, !dbg !4323
  call void @llvm.lifetime.start(i64 4, i8* %723) #2, !dbg !4323
  call void @llvm.dbg.declare(metadata i32* %recode_strings, metadata !804, metadata !985), !dbg !4324
  %724 = bitcast i64* %size to i8*, !dbg !4325
  call void @llvm.lifetime.start(i64 8, i8* %724) #2, !dbg !4325
  call void @llvm.dbg.declare(metadata i64* %size, metadata !805, metadata !985), !dbg !4326
  %725 = bitcast i8** %ptr to i8*, !dbg !4327
  call void @llvm.lifetime.start(i64 8, i8* %725) #2, !dbg !4327
  call void @llvm.dbg.declare(metadata i8** %ptr, metadata !806, metadata !985), !dbg !4328
  %726 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !4329, !tbaa !981
  %arraydecay1068 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %726, i32 0, i32 0, !dbg !4330
  %gp_offset_p1069 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1068, i32 0, i32 0, !dbg !4331
  %gp_offset1070 = load i32, i32* %gp_offset_p1069, !dbg !4331
  %fits_in_gp1071 = icmp ule i32 %gp_offset1070, 40, !dbg !4331
  br i1 %fits_in_gp1071, label %vaarg.in_reg.1072, label %vaarg.in_mem.1074, !dbg !4331

vaarg.in_reg.1072:                                ; preds = %sw.bb.1067
  %727 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1068, i32 0, i32 3, !dbg !4332
  %reg_save_area1073 = load i8*, i8** %727, !dbg !4332
  %728 = getelementptr i8, i8* %reg_save_area1073, i32 %gp_offset1070, !dbg !4332
  %729 = bitcast i8* %728 to i8**, !dbg !4332
  %730 = add i32 %gp_offset1070, 8, !dbg !4332
  store i32 %730, i32* %gp_offset_p1069, !dbg !4332
  br label %vaarg.end.1078, !dbg !4332

vaarg.in_mem.1074:                                ; preds = %sw.bb.1067
  %overflow_arg_area_p1075 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1068, i32 0, i32 2, !dbg !4334
  %overflow_arg_area1076 = load i8*, i8** %overflow_arg_area_p1075, !dbg !4334
  %731 = bitcast i8* %overflow_arg_area1076 to i8**, !dbg !4334
  %overflow_arg_area.next1077 = getelementptr i8, i8* %overflow_arg_area1076, i32 8, !dbg !4334
  store i8* %overflow_arg_area.next1077, i8** %overflow_arg_area_p1075, !dbg !4334
  br label %vaarg.end.1078, !dbg !4334

vaarg.end.1078:                                   ; preds = %vaarg.in_mem.1074, %vaarg.in_reg.1072
  %vaarg.addr1079 = phi i8** [ %729, %vaarg.in_reg.1072 ], [ %731, %vaarg.in_mem.1074 ], !dbg !4331
  %732 = load i8*, i8** %vaarg.addr1079, !dbg !4336
  store i8* %732, i8** %encoding, align 8, !dbg !4339, !tbaa !981
  %733 = load i8*, i8** %encoding, align 8, !dbg !4340, !tbaa !981
  %cmp1080 = icmp eq i8* %733, null, !dbg !4342
  br i1 %cmp1080, label %if.then.1082, label %if.end.1084, !dbg !4343

if.then.1082:                                     ; preds = %vaarg.end.1078
  %call1083 = call i8* @PyUnicode_GetDefaultEncoding(), !dbg !4344
  store i8* %call1083, i8** %encoding, align 8, !dbg !4345, !tbaa !981
  br label %if.end.1084, !dbg !4346

if.end.1084:                                      ; preds = %if.then.1082, %vaarg.end.1078
  %734 = load i8*, i8** %format, align 8, !dbg !4347, !tbaa !981
  %735 = load i8, i8* %734, align 1, !dbg !4349, !tbaa !1064
  %conv1085 = sext i8 %735 to i32, !dbg !4349
  %cmp1086 = icmp eq i32 %conv1085, 115, !dbg !4350
  br i1 %cmp1086, label %if.then.1088, label %if.else.1089, !dbg !4351

if.then.1088:                                     ; preds = %if.end.1084
  store i32 1, i32* %recode_strings, align 4, !dbg !4352, !tbaa !998
  br label %if.end.1097, !dbg !4353

if.else.1089:                                     ; preds = %if.end.1084
  %736 = load i8*, i8** %format, align 8, !dbg !4354, !tbaa !981
  %737 = load i8, i8* %736, align 1, !dbg !4356, !tbaa !1064
  %conv1090 = sext i8 %737 to i32, !dbg !4356
  %cmp1091 = icmp eq i32 %conv1090, 116, !dbg !4357
  br i1 %cmp1091, label %if.then.1093, label %if.else.1094, !dbg !4358

if.then.1093:                                     ; preds = %if.else.1089
  store i32 0, i32* %recode_strings, align 4, !dbg !4359, !tbaa !998
  br label %if.end.1096, !dbg !4360

if.else.1094:                                     ; preds = %if.else.1089
  %738 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4361, !tbaa !981
  %739 = load i8*, i8** %msgbuf.addr, align 8, !dbg !4362, !tbaa !981
  %740 = load i64, i64* %bufsize.addr, align 8, !dbg !4363, !tbaa !1279
  %call1095 = call i8* @converterr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.49, i32 0, i32 0), %struct._object* %738, i8* %739, i64 %740), !dbg !4364
  store i8* %call1095, i8** %retval, !dbg !4365
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1426, !dbg !4365

if.end.1096:                                      ; preds = %if.then.1093
  br label %if.end.1097

if.end.1097:                                      ; preds = %if.end.1096, %if.then.1088
  %741 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !4366, !tbaa !981
  %arraydecay1098 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %741, i32 0, i32 0, !dbg !4367
  %gp_offset_p1099 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1098, i32 0, i32 0, !dbg !4368
  %gp_offset1100 = load i32, i32* %gp_offset_p1099, !dbg !4368
  %fits_in_gp1101 = icmp ule i32 %gp_offset1100, 40, !dbg !4368
  br i1 %fits_in_gp1101, label %vaarg.in_reg.1102, label %vaarg.in_mem.1104, !dbg !4368

vaarg.in_reg.1102:                                ; preds = %if.end.1097
  %742 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1098, i32 0, i32 3, !dbg !4369
  %reg_save_area1103 = load i8*, i8** %742, !dbg !4369
  %743 = getelementptr i8, i8* %reg_save_area1103, i32 %gp_offset1100, !dbg !4369
  %744 = bitcast i8* %743 to i8***, !dbg !4369
  %745 = add i32 %gp_offset1100, 8, !dbg !4369
  store i32 %745, i32* %gp_offset_p1099, !dbg !4369
  br label %vaarg.end.1108, !dbg !4369

vaarg.in_mem.1104:                                ; preds = %if.end.1097
  %overflow_arg_area_p1105 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1098, i32 0, i32 2, !dbg !4370
  %overflow_arg_area1106 = load i8*, i8** %overflow_arg_area_p1105, !dbg !4370
  %746 = bitcast i8* %overflow_arg_area1106 to i8***, !dbg !4370
  %overflow_arg_area.next1107 = getelementptr i8, i8* %overflow_arg_area1106, i32 8, !dbg !4370
  store i8* %overflow_arg_area.next1107, i8** %overflow_arg_area_p1105, !dbg !4370
  br label %vaarg.end.1108, !dbg !4370

vaarg.end.1108:                                   ; preds = %vaarg.in_mem.1104, %vaarg.in_reg.1102
  %vaarg.addr1109 = phi i8*** [ %744, %vaarg.in_reg.1102 ], [ %746, %vaarg.in_mem.1104 ], !dbg !4368
  %747 = load i8**, i8*** %vaarg.addr1109, !dbg !4371
  store i8** %747, i8*** %buffer, align 8, !dbg !4372, !tbaa !981
  %748 = load i8*, i8** %format, align 8, !dbg !4373, !tbaa !981
  %incdec.ptr1110 = getelementptr i8, i8* %748, i32 1, !dbg !4373
  store i8* %incdec.ptr1110, i8** %format, align 8, !dbg !4373, !tbaa !981
  %749 = load i8**, i8*** %buffer, align 8, !dbg !4374, !tbaa !981
  %cmp1111 = icmp eq i8** %749, null, !dbg !4376
  br i1 %cmp1111, label %if.then.1113, label %if.end.1115, !dbg !4377

if.then.1113:                                     ; preds = %vaarg.end.1108
  %750 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4378, !tbaa !981
  %751 = load i8*, i8** %msgbuf.addr, align 8, !dbg !4379, !tbaa !981
  %752 = load i64, i64* %bufsize.addr, align 8, !dbg !4380, !tbaa !1279
  %call1114 = call i8* @converterr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i32 0, i32 0), %struct._object* %750, i8* %751, i64 %752), !dbg !4381
  store i8* %call1114, i8** %retval, !dbg !4382
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1426, !dbg !4382

if.end.1115:                                      ; preds = %vaarg.end.1108
  %753 = load i32, i32* %recode_strings, align 4, !dbg !4383, !tbaa !998
  %tobool1116 = icmp ne i32 %753, 0, !dbg !4383
  br i1 %tobool1116, label %if.else.1139, label %land.lhs.true.1117, !dbg !4384

land.lhs.true.1117:                               ; preds = %if.end.1115
  %754 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4385, !tbaa !981
  %ob_type1118 = getelementptr inbounds %struct._object, %struct._object* %754, i32 0, i32 1, !dbg !4386
  %755 = load %struct._typeobject*, %struct._typeobject** %ob_type1118, align 8, !dbg !4386, !tbaa !1259
  %tp_flags1119 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %755, i32 0, i32 19, !dbg !4387
  %756 = load i64, i64* %tp_flags1119, align 8, !dbg !4387, !tbaa !1263
  %and1120 = and i64 %756, 134217728, !dbg !4388
  %cmp1121 = icmp ne i64 %and1120, 0, !dbg !4389
  br i1 %cmp1121, label %if.then.1131, label %lor.lhs.false.1123, !dbg !4390

lor.lhs.false.1123:                               ; preds = %land.lhs.true.1117
  %757 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4391, !tbaa !981
  %ob_type1124 = getelementptr inbounds %struct._object, %struct._object* %757, i32 0, i32 1, !dbg !4393
  %758 = load %struct._typeobject*, %struct._typeobject** %ob_type1124, align 8, !dbg !4393, !tbaa !1259
  %cmp1125 = icmp eq %struct._typeobject* %758, @PyByteArray_Type, !dbg !4394
  br i1 %cmp1125, label %if.then.1131, label %lor.lhs.false.1127, !dbg !4395

lor.lhs.false.1127:                               ; preds = %lor.lhs.false.1123
  %759 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4396, !tbaa !981
  %ob_type1128 = getelementptr inbounds %struct._object, %struct._object* %759, i32 0, i32 1, !dbg !4398
  %760 = load %struct._typeobject*, %struct._typeobject** %ob_type1128, align 8, !dbg !4398, !tbaa !1259
  %call1129 = call i32 @PyType_IsSubtype(%struct._typeobject* %760, %struct._typeobject* @PyByteArray_Type), !dbg !4399
  %tobool1130 = icmp ne i32 %call1129, 0, !dbg !4399
  br i1 %tobool1130, label %if.then.1131, label %if.else.1139, !dbg !4400

if.then.1131:                                     ; preds = %lor.lhs.false.1127, %lor.lhs.false.1123, %land.lhs.true.1117
  %761 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4401, !tbaa !981
  store %struct._object* %761, %struct._object** %s, align 8, !dbg !4403, !tbaa !981
  %762 = load %struct._object*, %struct._object** %s, align 8, !dbg !4404, !tbaa !981
  %ob_refcnt1132 = getelementptr inbounds %struct._object, %struct._object* %762, i32 0, i32 0, !dbg !4405
  %763 = load i64, i64* %ob_refcnt1132, align 8, !dbg !4406, !tbaa !2764
  %inc = add i64 %763, 1, !dbg !4406
  store i64 %inc, i64* %ob_refcnt1132, align 8, !dbg !4406, !tbaa !2764
  %764 = load %struct._object*, %struct._object** %s, align 8, !dbg !4407, !tbaa !981
  %call1133 = call i32 @PyObject_AsCharBuffer(%struct._object* %764, i8** %ptr, i64* %size), !dbg !4409
  %cmp1134 = icmp slt i32 %call1133, 0, !dbg !4410
  br i1 %cmp1134, label %if.then.1136, label %if.end.1138, !dbg !4411

if.then.1136:                                     ; preds = %if.then.1131
  %765 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4412, !tbaa !981
  %766 = load i8*, i8** %msgbuf.addr, align 8, !dbg !4413, !tbaa !981
  %767 = load i64, i64* %bufsize.addr, align 8, !dbg !4414, !tbaa !1279
  %call1137 = call i8* @converterr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.51, i32 0, i32 0), %struct._object* %765, i8* %766, i64 %767), !dbg !4415
  store i8* %call1137, i8** %retval, !dbg !4416
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1426, !dbg !4416

if.end.1138:                                      ; preds = %if.then.1131
  br label %if.end.1196, !dbg !4417

if.else.1139:                                     ; preds = %lor.lhs.false.1127, %if.end.1115
  %768 = bitcast %struct._object** %u to i8*, !dbg !4418
  call void @llvm.lifetime.start(i64 8, i8* %768) #2, !dbg !4418
  call void @llvm.dbg.declare(metadata %struct._object** %u, metadata !807, metadata !985), !dbg !4419
  %769 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4420, !tbaa !981
  %call1140 = call %struct._object* @PyUnicode_FromObject(%struct._object* %769), !dbg !4421
  store %struct._object* %call1140, %struct._object** %u, align 8, !dbg !4422, !tbaa !981
  %770 = load %struct._object*, %struct._object** %u, align 8, !dbg !4423, !tbaa !981
  %cmp1141 = icmp eq %struct._object* %770, null, !dbg !4425
  br i1 %cmp1141, label %if.then.1143, label %if.end.1145, !dbg !4426

if.then.1143:                                     ; preds = %if.else.1139
  %771 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4427, !tbaa !981
  %772 = load i8*, i8** %msgbuf.addr, align 8, !dbg !4428, !tbaa !981
  %773 = load i64, i64* %bufsize.addr, align 8, !dbg !4429, !tbaa !1279
  %call1144 = call i8* @converterr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.52, i32 0, i32 0), %struct._object* %771, i8* %772, i64 %773), !dbg !4430
  store i8* %call1144, i8** %retval, !dbg !4431
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1193, !dbg !4431

if.end.1145:                                      ; preds = %if.else.1139
  %774 = load %struct._object*, %struct._object** %u, align 8, !dbg !4432, !tbaa !981
  %775 = load i8*, i8** %encoding, align 8, !dbg !4433, !tbaa !981
  %call1146 = call %struct._object* @PyUnicode_AsEncodedString(%struct._object* %774, i8* %775, i8* null), !dbg !4434
  store %struct._object* %call1146, %struct._object** %s, align 8, !dbg !4435, !tbaa !981
  br label %do.body.1147, !dbg !4436

do.body.1147:                                     ; preds = %if.end.1145
  %776 = bitcast %struct._object** %_py_decref_tmp1148 to i8*, !dbg !4437
  call void @llvm.lifetime.start(i64 8, i8* %776) #2, !dbg !4437
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp1148, metadata !810, metadata !985), !dbg !4439
  %777 = load %struct._object*, %struct._object** %u, align 8, !dbg !4440, !tbaa !981
  store %struct._object* %777, %struct._object** %_py_decref_tmp1148, align 8, !dbg !4439, !tbaa !981
  %778 = load %struct._object*, %struct._object** %_py_decref_tmp1148, align 8, !dbg !4441, !tbaa !981
  %ob_refcnt1149 = getelementptr inbounds %struct._object, %struct._object* %778, i32 0, i32 0, !dbg !4443
  %779 = load i64, i64* %ob_refcnt1149, align 8, !dbg !4444, !tbaa !2764
  %dec1150 = add i64 %779, -1, !dbg !4444
  store i64 %dec1150, i64* %ob_refcnt1149, align 8, !dbg !4444, !tbaa !2764
  %cmp1151 = icmp ne i64 %dec1150, 0, !dbg !4445
  br i1 %cmp1151, label %if.then.1153, label %if.else.1154, !dbg !4446

if.then.1153:                                     ; preds = %do.body.1147
  br label %if.end.1157, !dbg !4447

if.else.1154:                                     ; preds = %do.body.1147
  %780 = load %struct._object*, %struct._object** %_py_decref_tmp1148, align 8, !dbg !4449, !tbaa !981
  %ob_type1155 = getelementptr inbounds %struct._object, %struct._object* %780, i32 0, i32 1, !dbg !4451
  %781 = load %struct._typeobject*, %struct._typeobject** %ob_type1155, align 8, !dbg !4451, !tbaa !1259
  %tp_dealloc1156 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %781, i32 0, i32 4, !dbg !4452
  %782 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1156, align 8, !dbg !4452, !tbaa !2773
  %783 = load %struct._object*, %struct._object** %_py_decref_tmp1148, align 8, !dbg !4453, !tbaa !981
  call void %782(%struct._object* %783), !dbg !4454
  br label %if.end.1157

if.end.1157:                                      ; preds = %if.else.1154, %if.then.1153
  %784 = bitcast %struct._object** %_py_decref_tmp1148 to i8*, !dbg !4455
  call void @llvm.lifetime.end(i64 8, i8* %784) #2, !dbg !4455
  br label %do.cond.1158, !dbg !4457

do.cond.1158:                                     ; preds = %if.end.1157
  br label %do.end.1159, !dbg !4458

do.end.1159:                                      ; preds = %do.cond.1158
  %785 = load %struct._object*, %struct._object** %s, align 8, !dbg !4460, !tbaa !981
  %cmp1160 = icmp eq %struct._object* %785, null, !dbg !4462
  br i1 %cmp1160, label %if.then.1162, label %if.end.1164, !dbg !4463

if.then.1162:                                     ; preds = %do.end.1159
  %786 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4464, !tbaa !981
  %787 = load i8*, i8** %msgbuf.addr, align 8, !dbg !4465, !tbaa !981
  %788 = load i64, i64* %bufsize.addr, align 8, !dbg !4466, !tbaa !1279
  %call1163 = call i8* @converterr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.53, i32 0, i32 0), %struct._object* %786, i8* %787, i64 %788), !dbg !4467
  store i8* %call1163, i8** %retval, !dbg !4468
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1193, !dbg !4468

if.end.1164:                                      ; preds = %do.end.1159
  %789 = load %struct._object*, %struct._object** %s, align 8, !dbg !4469, !tbaa !981
  %ob_type1165 = getelementptr inbounds %struct._object, %struct._object* %789, i32 0, i32 1, !dbg !4470
  %790 = load %struct._typeobject*, %struct._typeobject** %ob_type1165, align 8, !dbg !4470, !tbaa !1259
  %tp_flags1166 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %790, i32 0, i32 19, !dbg !4471
  %791 = load i64, i64* %tp_flags1166, align 8, !dbg !4471, !tbaa !1263
  %and1167 = and i64 %791, 134217728, !dbg !4472
  %cmp1168 = icmp ne i64 %and1167, 0, !dbg !4473
  br i1 %cmp1168, label %if.end.1185, label %if.then.1170, !dbg !4474

if.then.1170:                                     ; preds = %if.end.1164
  br label %do.body.1171, !dbg !4475

do.body.1171:                                     ; preds = %if.then.1170
  %792 = bitcast %struct._object** %_py_decref_tmp1172 to i8*, !dbg !4476
  call void @llvm.lifetime.start(i64 8, i8* %792) #2, !dbg !4476
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp1172, metadata !812, metadata !985), !dbg !4478
  %793 = load %struct._object*, %struct._object** %s, align 8, !dbg !4479, !tbaa !981
  store %struct._object* %793, %struct._object** %_py_decref_tmp1172, align 8, !dbg !4478, !tbaa !981
  %794 = load %struct._object*, %struct._object** %_py_decref_tmp1172, align 8, !dbg !4480, !tbaa !981
  %ob_refcnt1173 = getelementptr inbounds %struct._object, %struct._object* %794, i32 0, i32 0, !dbg !4482
  %795 = load i64, i64* %ob_refcnt1173, align 8, !dbg !4483, !tbaa !2764
  %dec1174 = add i64 %795, -1, !dbg !4483
  store i64 %dec1174, i64* %ob_refcnt1173, align 8, !dbg !4483, !tbaa !2764
  %cmp1175 = icmp ne i64 %dec1174, 0, !dbg !4484
  br i1 %cmp1175, label %if.then.1177, label %if.else.1178, !dbg !4485

if.then.1177:                                     ; preds = %do.body.1171
  br label %if.end.1181, !dbg !4486

if.else.1178:                                     ; preds = %do.body.1171
  %796 = load %struct._object*, %struct._object** %_py_decref_tmp1172, align 8, !dbg !4488, !tbaa !981
  %ob_type1179 = getelementptr inbounds %struct._object, %struct._object* %796, i32 0, i32 1, !dbg !4490
  %797 = load %struct._typeobject*, %struct._typeobject** %ob_type1179, align 8, !dbg !4490, !tbaa !1259
  %tp_dealloc1180 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %797, i32 0, i32 4, !dbg !4491
  %798 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1180, align 8, !dbg !4491, !tbaa !2773
  %799 = load %struct._object*, %struct._object** %_py_decref_tmp1172, align 8, !dbg !4492, !tbaa !981
  call void %798(%struct._object* %799), !dbg !4493
  br label %if.end.1181

if.end.1181:                                      ; preds = %if.else.1178, %if.then.1177
  %800 = bitcast %struct._object** %_py_decref_tmp1172 to i8*, !dbg !4494
  call void @llvm.lifetime.end(i64 8, i8* %800) #2, !dbg !4494
  br label %do.cond.1182, !dbg !4496

do.cond.1182:                                     ; preds = %if.end.1181
  br label %do.end.1183, !dbg !4497

do.end.1183:                                      ; preds = %do.cond.1182
  %801 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4499, !tbaa !981
  %802 = load i8*, i8** %msgbuf.addr, align 8, !dbg !4500, !tbaa !981
  %803 = load i64, i64* %bufsize.addr, align 8, !dbg !4501, !tbaa !1279
  %call1184 = call i8* @converterr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.54, i32 0, i32 0), %struct._object* %801, i8* %802, i64 %803), !dbg !4502
  store i8* %call1184, i8** %retval, !dbg !4503
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1193, !dbg !4503

if.end.1185:                                      ; preds = %if.end.1164
  %804 = load %struct._object*, %struct._object** %s, align 8, !dbg !4504, !tbaa !981
  %805 = bitcast %struct._object* %804 to %struct.PyVarObject*, !dbg !4505
  %ob_size1186 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %805, i32 0, i32 1, !dbg !4506
  %806 = load i64, i64* %ob_size1186, align 8, !dbg !4506, !tbaa !1277
  store i64 %806, i64* %size, align 8, !dbg !4507, !tbaa !1279
  %807 = load %struct._object*, %struct._object** %s, align 8, !dbg !4508, !tbaa !981
  %808 = bitcast %struct._object* %807 to %struct.PyBytesObject*, !dbg !4509
  %ob_sval1187 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %808, i32 0, i32 2, !dbg !4510
  %arraydecay1188 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval1187, i32 0, i32 0, !dbg !4511
  store i8* %arraydecay1188, i8** %ptr, align 8, !dbg !4512, !tbaa !981
  %809 = load i8*, i8** %ptr, align 8, !dbg !4513, !tbaa !981
  %cmp1189 = icmp eq i8* %809, null, !dbg !4515
  br i1 %cmp1189, label %if.then.1191, label %if.end.1192, !dbg !4516

if.then.1191:                                     ; preds = %if.end.1185
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8** %ptr, align 8, !dbg !4517, !tbaa !981
  br label %if.end.1192, !dbg !4518

if.end.1192:                                      ; preds = %if.then.1191, %if.end.1185
  store i32 0, i32* %cleanup.dest.slot, !dbg !4519
  br label %cleanup.1193, !dbg !4519

cleanup.1193:                                     ; preds = %if.end.1192, %do.end.1183, %if.then.1162, %if.then.1143
  %810 = bitcast %struct._object** %u to i8*, !dbg !4520
  call void @llvm.lifetime.end(i64 8, i8* %810) #2, !dbg !4520
  %cleanup.dest.1194 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1194, label %cleanup.1426 [
    i32 0, label %cleanup.cont.1195
  ]

cleanup.cont.1195:                                ; preds = %cleanup.1193
  br label %if.end.1196

if.end.1196:                                      ; preds = %cleanup.cont.1195, %if.end.1138
  %811 = load i8*, i8** %format, align 8, !dbg !4521, !tbaa !981
  %812 = load i8, i8* %811, align 1, !dbg !4522, !tbaa !1064
  %conv1197 = sext i8 %812 to i32, !dbg !4522
  %cmp1198 = icmp eq i32 %conv1197, 35, !dbg !4523
  br i1 %cmp1198, label %if.then.1200, label %if.else.1345, !dbg !4524

if.then.1200:                                     ; preds = %if.end.1196
  %813 = bitcast i32** %q1201 to i8*, !dbg !4525
  call void @llvm.lifetime.start(i64 8, i8* %813) #2, !dbg !4525
  call void @llvm.dbg.declare(metadata i32** %q1201, metadata !816, metadata !985), !dbg !4526
  store i32* null, i32** %q1201, align 8, !dbg !4526, !tbaa !981
  %814 = bitcast i64** %q21202 to i8*, !dbg !4527
  call void @llvm.lifetime.start(i64 8, i8* %814) #2, !dbg !4527
  call void @llvm.dbg.declare(metadata i64** %q21202, metadata !819, metadata !985), !dbg !4528
  store i64* null, i64** %q21202, align 8, !dbg !4528, !tbaa !981
  %815 = load i32, i32* %flags.addr, align 4, !dbg !4529, !tbaa !998
  %and1203 = and i32 %815, 2, !dbg !4531
  %tobool1204 = icmp ne i32 %and1203, 0, !dbg !4531
  br i1 %tobool1204, label %if.then.1205, label %if.else.1218, !dbg !4532

if.then.1205:                                     ; preds = %if.then.1200
  %816 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !4533, !tbaa !981
  %arraydecay1206 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %816, i32 0, i32 0, !dbg !4535
  %gp_offset_p1207 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1206, i32 0, i32 0, !dbg !4536
  %gp_offset1208 = load i32, i32* %gp_offset_p1207, !dbg !4536
  %fits_in_gp1209 = icmp ule i32 %gp_offset1208, 40, !dbg !4536
  br i1 %fits_in_gp1209, label %vaarg.in_reg.1210, label %vaarg.in_mem.1212, !dbg !4536

vaarg.in_reg.1210:                                ; preds = %if.then.1205
  %817 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1206, i32 0, i32 3, !dbg !4537
  %reg_save_area1211 = load i8*, i8** %817, !dbg !4537
  %818 = getelementptr i8, i8* %reg_save_area1211, i32 %gp_offset1208, !dbg !4537
  %819 = bitcast i8* %818 to i64**, !dbg !4537
  %820 = add i32 %gp_offset1208, 8, !dbg !4537
  store i32 %820, i32* %gp_offset_p1207, !dbg !4537
  br label %vaarg.end.1216, !dbg !4537

vaarg.in_mem.1212:                                ; preds = %if.then.1205
  %overflow_arg_area_p1213 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1206, i32 0, i32 2, !dbg !4539
  %overflow_arg_area1214 = load i8*, i8** %overflow_arg_area_p1213, !dbg !4539
  %821 = bitcast i8* %overflow_arg_area1214 to i64**, !dbg !4539
  %overflow_arg_area.next1215 = getelementptr i8, i8* %overflow_arg_area1214, i32 8, !dbg !4539
  store i8* %overflow_arg_area.next1215, i8** %overflow_arg_area_p1213, !dbg !4539
  br label %vaarg.end.1216, !dbg !4539

vaarg.end.1216:                                   ; preds = %vaarg.in_mem.1212, %vaarg.in_reg.1210
  %vaarg.addr1217 = phi i64** [ %819, %vaarg.in_reg.1210 ], [ %821, %vaarg.in_mem.1212 ], !dbg !4536
  %822 = load i64*, i64** %vaarg.addr1217, !dbg !4541
  store i64* %822, i64** %q21202, align 8, !dbg !4544, !tbaa !981
  br label %if.end.1231, !dbg !4545

if.else.1218:                                     ; preds = %if.then.1200
  %823 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !4546, !tbaa !981
  %arraydecay1219 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %823, i32 0, i32 0, !dbg !4548
  %gp_offset_p1220 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1219, i32 0, i32 0, !dbg !4549
  %gp_offset1221 = load i32, i32* %gp_offset_p1220, !dbg !4549
  %fits_in_gp1222 = icmp ule i32 %gp_offset1221, 40, !dbg !4549
  br i1 %fits_in_gp1222, label %vaarg.in_reg.1223, label %vaarg.in_mem.1225, !dbg !4549

vaarg.in_reg.1223:                                ; preds = %if.else.1218
  %824 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1219, i32 0, i32 3, !dbg !4550
  %reg_save_area1224 = load i8*, i8** %824, !dbg !4550
  %825 = getelementptr i8, i8* %reg_save_area1224, i32 %gp_offset1221, !dbg !4550
  %826 = bitcast i8* %825 to i32**, !dbg !4550
  %827 = add i32 %gp_offset1221, 8, !dbg !4550
  store i32 %827, i32* %gp_offset_p1220, !dbg !4550
  br label %vaarg.end.1229, !dbg !4550

vaarg.in_mem.1225:                                ; preds = %if.else.1218
  %overflow_arg_area_p1226 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1219, i32 0, i32 2, !dbg !4552
  %overflow_arg_area1227 = load i8*, i8** %overflow_arg_area_p1226, !dbg !4552
  %828 = bitcast i8* %overflow_arg_area1227 to i32**, !dbg !4552
  %overflow_arg_area.next1228 = getelementptr i8, i8* %overflow_arg_area1227, i32 8, !dbg !4552
  store i8* %overflow_arg_area.next1228, i8** %overflow_arg_area_p1226, !dbg !4552
  br label %vaarg.end.1229, !dbg !4552

vaarg.end.1229:                                   ; preds = %vaarg.in_mem.1225, %vaarg.in_reg.1223
  %vaarg.addr1230 = phi i32** [ %826, %vaarg.in_reg.1223 ], [ %828, %vaarg.in_mem.1225 ], !dbg !4549
  %829 = load i32*, i32** %vaarg.addr1230, !dbg !4554
  store i32* %829, i32** %q1201, align 8, !dbg !4557, !tbaa !981
  br label %if.end.1231

if.end.1231:                                      ; preds = %vaarg.end.1229, %vaarg.end.1216
  %830 = load i8*, i8** %format, align 8, !dbg !4558, !tbaa !981
  %incdec.ptr1232 = getelementptr i8, i8* %830, i32 1, !dbg !4558
  store i8* %incdec.ptr1232, i8** %format, align 8, !dbg !4558, !tbaa !981
  %831 = load i32*, i32** %q1201, align 8, !dbg !4559, !tbaa !981
  %cmp1233 = icmp eq i32* %831, null, !dbg !4560
  br i1 %cmp1233, label %land.lhs.true.1235, label %if.end.1253, !dbg !4561

land.lhs.true.1235:                               ; preds = %if.end.1231
  %832 = load i64*, i64** %q21202, align 8, !dbg !4562, !tbaa !981
  %cmp1236 = icmp eq i64* %832, null, !dbg !4564
  br i1 %cmp1236, label %if.then.1238, label %if.end.1253, !dbg !4565

if.then.1238:                                     ; preds = %land.lhs.true.1235
  br label %do.body.1239, !dbg !4566

do.body.1239:                                     ; preds = %if.then.1238
  %833 = bitcast %struct._object** %_py_decref_tmp1240 to i8*, !dbg !4567
  call void @llvm.lifetime.start(i64 8, i8* %833) #2, !dbg !4567
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp1240, metadata !820, metadata !985), !dbg !4569
  %834 = load %struct._object*, %struct._object** %s, align 8, !dbg !4570, !tbaa !981
  store %struct._object* %834, %struct._object** %_py_decref_tmp1240, align 8, !dbg !4569, !tbaa !981
  %835 = load %struct._object*, %struct._object** %_py_decref_tmp1240, align 8, !dbg !4571, !tbaa !981
  %ob_refcnt1241 = getelementptr inbounds %struct._object, %struct._object* %835, i32 0, i32 0, !dbg !4573
  %836 = load i64, i64* %ob_refcnt1241, align 8, !dbg !4574, !tbaa !2764
  %dec1242 = add i64 %836, -1, !dbg !4574
  store i64 %dec1242, i64* %ob_refcnt1241, align 8, !dbg !4574, !tbaa !2764
  %cmp1243 = icmp ne i64 %dec1242, 0, !dbg !4575
  br i1 %cmp1243, label %if.then.1245, label %if.else.1246, !dbg !4576

if.then.1245:                                     ; preds = %do.body.1239
  br label %if.end.1249, !dbg !4577

if.else.1246:                                     ; preds = %do.body.1239
  %837 = load %struct._object*, %struct._object** %_py_decref_tmp1240, align 8, !dbg !4579, !tbaa !981
  %ob_type1247 = getelementptr inbounds %struct._object, %struct._object* %837, i32 0, i32 1, !dbg !4581
  %838 = load %struct._typeobject*, %struct._typeobject** %ob_type1247, align 8, !dbg !4581, !tbaa !1259
  %tp_dealloc1248 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %838, i32 0, i32 4, !dbg !4582
  %839 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1248, align 8, !dbg !4582, !tbaa !2773
  %840 = load %struct._object*, %struct._object** %_py_decref_tmp1240, align 8, !dbg !4583, !tbaa !981
  call void %839(%struct._object* %840), !dbg !4584
  br label %if.end.1249

if.end.1249:                                      ; preds = %if.else.1246, %if.then.1245
  %841 = bitcast %struct._object** %_py_decref_tmp1240 to i8*, !dbg !4585
  call void @llvm.lifetime.end(i64 8, i8* %841) #2, !dbg !4585
  br label %do.cond.1250, !dbg !4587

do.cond.1250:                                     ; preds = %if.end.1249
  br label %do.end.1251, !dbg !4588

do.end.1251:                                      ; preds = %do.cond.1250
  %842 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4590, !tbaa !981
  %843 = load i8*, i8** %msgbuf.addr, align 8, !dbg !4591, !tbaa !981
  %844 = load i64, i64* %bufsize.addr, align 8, !dbg !4592, !tbaa !1279
  %call1252 = call i8* @converterr(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.55, i32 0, i32 0), %struct._object* %842, i8* %843, i64 %844), !dbg !4593
  store i8* %call1252, i8** %retval, !dbg !4594
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1341, !dbg !4594

if.end.1253:                                      ; preds = %land.lhs.true.1235, %if.end.1231
  %845 = load i8**, i8*** %buffer, align 8, !dbg !4595, !tbaa !981
  %846 = load i8*, i8** %845, align 8, !dbg !4596, !tbaa !981
  %cmp1254 = icmp eq i8* %846, null, !dbg !4597
  br i1 %cmp1254, label %if.then.1256, label %if.else.1301, !dbg !4598

if.then.1256:                                     ; preds = %if.end.1253
  %847 = load i64, i64* %size, align 8, !dbg !4599, !tbaa !1279
  %add = add i64 %847, 1, !dbg !4600
  %cmp1257 = icmp ugt i64 %add, 9223372036854775807, !dbg !4601
  br i1 %cmp1257, label %cond.true.1259, label %cond.false.1260, !dbg !4602

cond.true.1259:                                   ; preds = %if.then.1256
  br label %cond.end.1263, !dbg !4603

cond.false.1260:                                  ; preds = %if.then.1256
  %848 = load i64, i64* %size, align 8, !dbg !4605, !tbaa !1279
  %add1261 = add i64 %848, 1, !dbg !4607
  %mul = mul i64 %add1261, 1, !dbg !4608
  %call1262 = call i8* @PyMem_Malloc(i64 %mul), !dbg !4609
  br label %cond.end.1263, !dbg !4602

cond.end.1263:                                    ; preds = %cond.false.1260, %cond.true.1259
  %cond1264 = phi i8* [ null, %cond.true.1259 ], [ %call1262, %cond.false.1260 ], !dbg !4602
  %849 = load i8**, i8*** %buffer, align 8, !dbg !4610, !tbaa !981
  store i8* %cond1264, i8** %849, align 8, !dbg !4613, !tbaa !981
  %850 = load i8**, i8*** %buffer, align 8, !dbg !4614, !tbaa !981
  %851 = load i8*, i8** %850, align 8, !dbg !4615, !tbaa !981
  %cmp1265 = icmp eq i8* %851, null, !dbg !4616
  br i1 %cmp1265, label %if.then.1267, label %if.end.1282, !dbg !4617

if.then.1267:                                     ; preds = %cond.end.1263
  br label %do.body.1268, !dbg !4618

do.body.1268:                                     ; preds = %if.then.1267
  %852 = bitcast %struct._object** %_py_decref_tmp1269 to i8*, !dbg !4619
  call void @llvm.lifetime.start(i64 8, i8* %852) #2, !dbg !4619
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp1269, metadata !824, metadata !985), !dbg !4621
  %853 = load %struct._object*, %struct._object** %s, align 8, !dbg !4622, !tbaa !981
  store %struct._object* %853, %struct._object** %_py_decref_tmp1269, align 8, !dbg !4621, !tbaa !981
  %854 = load %struct._object*, %struct._object** %_py_decref_tmp1269, align 8, !dbg !4623, !tbaa !981
  %ob_refcnt1270 = getelementptr inbounds %struct._object, %struct._object* %854, i32 0, i32 0, !dbg !4625
  %855 = load i64, i64* %ob_refcnt1270, align 8, !dbg !4626, !tbaa !2764
  %dec1271 = add i64 %855, -1, !dbg !4626
  store i64 %dec1271, i64* %ob_refcnt1270, align 8, !dbg !4626, !tbaa !2764
  %cmp1272 = icmp ne i64 %dec1271, 0, !dbg !4627
  br i1 %cmp1272, label %if.then.1274, label %if.else.1275, !dbg !4628

if.then.1274:                                     ; preds = %do.body.1268
  br label %if.end.1278, !dbg !4629

if.else.1275:                                     ; preds = %do.body.1268
  %856 = load %struct._object*, %struct._object** %_py_decref_tmp1269, align 8, !dbg !4631, !tbaa !981
  %ob_type1276 = getelementptr inbounds %struct._object, %struct._object* %856, i32 0, i32 1, !dbg !4633
  %857 = load %struct._typeobject*, %struct._typeobject** %ob_type1276, align 8, !dbg !4633, !tbaa !1259
  %tp_dealloc1277 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %857, i32 0, i32 4, !dbg !4634
  %858 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1277, align 8, !dbg !4634, !tbaa !2773
  %859 = load %struct._object*, %struct._object** %_py_decref_tmp1269, align 8, !dbg !4635, !tbaa !981
  call void %858(%struct._object* %859), !dbg !4636
  br label %if.end.1278

if.end.1278:                                      ; preds = %if.else.1275, %if.then.1274
  %860 = bitcast %struct._object** %_py_decref_tmp1269 to i8*, !dbg !4637
  call void @llvm.lifetime.end(i64 8, i8* %860) #2, !dbg !4637
  br label %do.cond.1279, !dbg !4639

do.cond.1279:                                     ; preds = %if.end.1278
  br label %do.end.1280, !dbg !4640

do.end.1280:                                      ; preds = %do.cond.1279
  %call1281 = call %struct._object* @PyErr_NoMemory(), !dbg !4642
  %861 = load i8*, i8** %msgbuf.addr, align 8, !dbg !4643, !tbaa !981
  store i8* %861, i8** %retval, !dbg !4644
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1341, !dbg !4644

if.end.1282:                                      ; preds = %cond.end.1263
  %862 = load i8**, i8*** %buffer, align 8, !dbg !4645, !tbaa !981
  %863 = load i8*, i8** %862, align 8, !dbg !4646, !tbaa !981
  %864 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8, !dbg !4647, !tbaa !981
  %call1283 = call i32 @addcleanup(i8* %863, %struct.freelist_t* %864, i32 (%struct._object*, i8*)* @cleanup_ptr), !dbg !4648
  %tobool1284 = icmp ne i32 %call1283, 0, !dbg !4648
  br i1 %tobool1284, label %if.then.1285, label %if.end.1300, !dbg !4649

if.then.1285:                                     ; preds = %if.end.1282
  br label %do.body.1286, !dbg !4650

do.body.1286:                                     ; preds = %if.then.1285
  %865 = bitcast %struct._object** %_py_decref_tmp1287 to i8*, !dbg !4651
  call void @llvm.lifetime.start(i64 8, i8* %865) #2, !dbg !4651
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp1287, metadata !830, metadata !985), !dbg !4653
  %866 = load %struct._object*, %struct._object** %s, align 8, !dbg !4654, !tbaa !981
  store %struct._object* %866, %struct._object** %_py_decref_tmp1287, align 8, !dbg !4653, !tbaa !981
  %867 = load %struct._object*, %struct._object** %_py_decref_tmp1287, align 8, !dbg !4655, !tbaa !981
  %ob_refcnt1288 = getelementptr inbounds %struct._object, %struct._object* %867, i32 0, i32 0, !dbg !4657
  %868 = load i64, i64* %ob_refcnt1288, align 8, !dbg !4658, !tbaa !2764
  %dec1289 = add i64 %868, -1, !dbg !4658
  store i64 %dec1289, i64* %ob_refcnt1288, align 8, !dbg !4658, !tbaa !2764
  %cmp1290 = icmp ne i64 %dec1289, 0, !dbg !4659
  br i1 %cmp1290, label %if.then.1292, label %if.else.1293, !dbg !4660

if.then.1292:                                     ; preds = %do.body.1286
  br label %if.end.1296, !dbg !4661

if.else.1293:                                     ; preds = %do.body.1286
  %869 = load %struct._object*, %struct._object** %_py_decref_tmp1287, align 8, !dbg !4663, !tbaa !981
  %ob_type1294 = getelementptr inbounds %struct._object, %struct._object* %869, i32 0, i32 1, !dbg !4665
  %870 = load %struct._typeobject*, %struct._typeobject** %ob_type1294, align 8, !dbg !4665, !tbaa !1259
  %tp_dealloc1295 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %870, i32 0, i32 4, !dbg !4666
  %871 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1295, align 8, !dbg !4666, !tbaa !2773
  %872 = load %struct._object*, %struct._object** %_py_decref_tmp1287, align 8, !dbg !4667, !tbaa !981
  call void %871(%struct._object* %872), !dbg !4668
  br label %if.end.1296

if.end.1296:                                      ; preds = %if.else.1293, %if.then.1292
  %873 = bitcast %struct._object** %_py_decref_tmp1287 to i8*, !dbg !4669
  call void @llvm.lifetime.end(i64 8, i8* %873) #2, !dbg !4669
  br label %do.cond.1297, !dbg !4671

do.cond.1297:                                     ; preds = %if.end.1296
  br label %do.end.1298, !dbg !4672

do.end.1298:                                      ; preds = %do.cond.1297
  %874 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4674, !tbaa !981
  %875 = load i8*, i8** %msgbuf.addr, align 8, !dbg !4675, !tbaa !981
  %876 = load i64, i64* %bufsize.addr, align 8, !dbg !4676, !tbaa !1279
  %call1299 = call i8* @converterr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0), %struct._object* %874, i8* %875, i64 %876), !dbg !4677
  store i8* %call1299, i8** %retval, !dbg !4678
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1341, !dbg !4678

if.end.1300:                                      ; preds = %if.end.1282
  br label %if.end.1328, !dbg !4679

if.else.1301:                                     ; preds = %if.end.1253
  %877 = load i64, i64* %size, align 8, !dbg !4680, !tbaa !1279
  %add1302 = add i64 %877, 1, !dbg !4681
  %878 = load i32, i32* %flags.addr, align 4, !dbg !4682, !tbaa !998
  %and1303 = and i32 %878, 2, !dbg !4683
  %tobool1304 = icmp ne i32 %and1303, 0, !dbg !4683
  br i1 %tobool1304, label %cond.true.1305, label %cond.false.1306, !dbg !4684

cond.true.1305:                                   ; preds = %if.else.1301
  %879 = load i64*, i64** %q21202, align 8, !dbg !4685, !tbaa !981
  %880 = load i64, i64* %879, align 8, !dbg !4687, !tbaa !1279
  br label %cond.end.1308, !dbg !4684

cond.false.1306:                                  ; preds = %if.else.1301
  %881 = load i32*, i32** %q1201, align 8, !dbg !4688, !tbaa !981
  %882 = load i32, i32* %881, align 4, !dbg !4690, !tbaa !998
  %conv1307 = sext i32 %882 to i64, !dbg !4690
  br label %cond.end.1308, !dbg !4684

cond.end.1308:                                    ; preds = %cond.false.1306, %cond.true.1305
  %cond1309 = phi i64 [ %880, %cond.true.1305 ], [ %conv1307, %cond.false.1306 ], !dbg !4684
  %cmp1310 = icmp sgt i64 %add1302, %cond1309, !dbg !4691
  br i1 %cmp1310, label %if.then.1312, label %if.end.1327, !dbg !4694

if.then.1312:                                     ; preds = %cond.end.1308
  br label %do.body.1313, !dbg !4695

do.body.1313:                                     ; preds = %if.then.1312
  %883 = bitcast %struct._object** %_py_decref_tmp1314 to i8*, !dbg !4696
  call void @llvm.lifetime.start(i64 8, i8* %883) #2, !dbg !4696
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp1314, metadata !834, metadata !985), !dbg !4698
  %884 = load %struct._object*, %struct._object** %s, align 8, !dbg !4699, !tbaa !981
  store %struct._object* %884, %struct._object** %_py_decref_tmp1314, align 8, !dbg !4698, !tbaa !981
  %885 = load %struct._object*, %struct._object** %_py_decref_tmp1314, align 8, !dbg !4700, !tbaa !981
  %ob_refcnt1315 = getelementptr inbounds %struct._object, %struct._object* %885, i32 0, i32 0, !dbg !4702
  %886 = load i64, i64* %ob_refcnt1315, align 8, !dbg !4703, !tbaa !2764
  %dec1316 = add i64 %886, -1, !dbg !4703
  store i64 %dec1316, i64* %ob_refcnt1315, align 8, !dbg !4703, !tbaa !2764
  %cmp1317 = icmp ne i64 %dec1316, 0, !dbg !4704
  br i1 %cmp1317, label %if.then.1319, label %if.else.1320, !dbg !4705

if.then.1319:                                     ; preds = %do.body.1313
  br label %if.end.1323, !dbg !4706

if.else.1320:                                     ; preds = %do.body.1313
  %887 = load %struct._object*, %struct._object** %_py_decref_tmp1314, align 8, !dbg !4708, !tbaa !981
  %ob_type1321 = getelementptr inbounds %struct._object, %struct._object* %887, i32 0, i32 1, !dbg !4710
  %888 = load %struct._typeobject*, %struct._typeobject** %ob_type1321, align 8, !dbg !4710, !tbaa !1259
  %tp_dealloc1322 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %888, i32 0, i32 4, !dbg !4711
  %889 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1322, align 8, !dbg !4711, !tbaa !2773
  %890 = load %struct._object*, %struct._object** %_py_decref_tmp1314, align 8, !dbg !4712, !tbaa !981
  call void %889(%struct._object* %890), !dbg !4713
  br label %if.end.1323

if.end.1323:                                      ; preds = %if.else.1320, %if.then.1319
  %891 = bitcast %struct._object** %_py_decref_tmp1314 to i8*, !dbg !4714
  call void @llvm.lifetime.end(i64 8, i8* %891) #2, !dbg !4714
  br label %do.cond.1324, !dbg !4716

do.cond.1324:                                     ; preds = %if.end.1323
  br label %do.end.1325, !dbg !4717

do.end.1325:                                      ; preds = %do.cond.1324
  %892 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4719, !tbaa !981
  %893 = load i8*, i8** %msgbuf.addr, align 8, !dbg !4720, !tbaa !981
  %894 = load i64, i64* %bufsize.addr, align 8, !dbg !4721, !tbaa !1279
  %call1326 = call i8* @converterr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.56, i32 0, i32 0), %struct._object* %892, i8* %893, i64 %894), !dbg !4722
  store i8* %call1326, i8** %retval, !dbg !4723
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1341, !dbg !4723

if.end.1327:                                      ; preds = %cond.end.1308
  br label %if.end.1328

if.end.1328:                                      ; preds = %if.end.1327, %if.end.1300
  %895 = load i8**, i8*** %buffer, align 8, !dbg !4724, !tbaa !981
  %896 = load i8*, i8** %895, align 8, !dbg !4725, !tbaa !981
  %897 = load i8*, i8** %ptr, align 8, !dbg !4726, !tbaa !981
  %898 = load i64, i64* %size, align 8, !dbg !4727, !tbaa !1279
  %add1329 = add i64 %898, 1, !dbg !4728
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %896, i8* %897, i64 %add1329, i32 1, i1 false), !dbg !4729
  %899 = load i32, i32* %flags.addr, align 4, !dbg !4730, !tbaa !998
  %and1330 = and i32 %899, 2, !dbg !4732
  %tobool1331 = icmp ne i32 %and1330, 0, !dbg !4732
  br i1 %tobool1331, label %if.then.1332, label %if.else.1333, !dbg !4733

if.then.1332:                                     ; preds = %if.end.1328
  %900 = load i64, i64* %size, align 8, !dbg !4734, !tbaa !1279
  %901 = load i64*, i64** %q21202, align 8, !dbg !4736, !tbaa !981
  store i64 %900, i64* %901, align 8, !dbg !4737, !tbaa !1279
  br label %if.end.1340, !dbg !4738

if.else.1333:                                     ; preds = %if.end.1328
  %902 = load i64, i64* %size, align 8, !dbg !4739, !tbaa !1279
  %cmp1334 = icmp slt i64 2147483647, %902, !dbg !4743
  br i1 %cmp1334, label %if.then.1336, label %if.end.1338, !dbg !4744

if.then.1336:                                     ; preds = %if.else.1333
  %903 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !4745, !tbaa !981
  call void @PyErr_SetString(%struct._object* %903, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.42, i32 0, i32 0)), !dbg !4748
  %904 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4749, !tbaa !981
  %905 = load i8*, i8** %msgbuf.addr, align 8, !dbg !4750, !tbaa !981
  %906 = load i64, i64* %bufsize.addr, align 8, !dbg !4751, !tbaa !1279
  %call1337 = call i8* @converterr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %struct._object* %904, i8* %905, i64 %906), !dbg !4752
  store i8* %call1337, i8** %retval, !dbg !4753
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1341, !dbg !4753

if.end.1338:                                      ; preds = %if.else.1333
  %907 = load i64, i64* %size, align 8, !dbg !4754, !tbaa !1279
  %conv1339 = trunc i64 %907 to i32, !dbg !4756
  %908 = load i32*, i32** %q1201, align 8, !dbg !4757, !tbaa !981
  store i32 %conv1339, i32* %908, align 4, !dbg !4758, !tbaa !998
  br label %if.end.1340

if.end.1340:                                      ; preds = %if.end.1338, %if.then.1332
  store i32 0, i32* %cleanup.dest.slot, !dbg !4759
  br label %cleanup.1341, !dbg !4759

cleanup.1341:                                     ; preds = %if.end.1340, %if.then.1336, %do.end.1325, %do.end.1298, %do.end.1280, %do.end.1251
  %909 = bitcast i64** %q21202 to i8*, !dbg !4760
  call void @llvm.lifetime.end(i64 8, i8* %909) #2, !dbg !4760
  %910 = bitcast i32** %q1201 to i8*, !dbg !4760
  call void @llvm.lifetime.end(i64 8, i8* %910) #2, !dbg !4760
  %cleanup.dest.1343 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1343, label %cleanup.1426 [
    i32 0, label %cleanup.cont.1344
  ]

cleanup.cont.1344:                                ; preds = %cleanup.1341
  br label %if.end.1412, !dbg !4762

if.else.1345:                                     ; preds = %if.end.1196
  %911 = load i8*, i8** %ptr, align 8, !dbg !4763, !tbaa !981
  %call1346 = call i64 @strlen(i8* %911) #8, !dbg !4764
  %912 = load i64, i64* %size, align 8, !dbg !4765, !tbaa !1279
  %cmp1347 = icmp ne i64 %call1346, %912, !dbg !4766
  br i1 %cmp1347, label %if.then.1349, label %if.end.1364, !dbg !4767

if.then.1349:                                     ; preds = %if.else.1345
  br label %do.body.1350, !dbg !4768

do.body.1350:                                     ; preds = %if.then.1349
  %913 = bitcast %struct._object** %_py_decref_tmp1351 to i8*, !dbg !4769
  call void @llvm.lifetime.start(i64 8, i8* %913) #2, !dbg !4769
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp1351, metadata !839, metadata !985), !dbg !4771
  %914 = load %struct._object*, %struct._object** %s, align 8, !dbg !4772, !tbaa !981
  store %struct._object* %914, %struct._object** %_py_decref_tmp1351, align 8, !dbg !4771, !tbaa !981
  %915 = load %struct._object*, %struct._object** %_py_decref_tmp1351, align 8, !dbg !4773, !tbaa !981
  %ob_refcnt1352 = getelementptr inbounds %struct._object, %struct._object* %915, i32 0, i32 0, !dbg !4775
  %916 = load i64, i64* %ob_refcnt1352, align 8, !dbg !4776, !tbaa !2764
  %dec1353 = add i64 %916, -1, !dbg !4776
  store i64 %dec1353, i64* %ob_refcnt1352, align 8, !dbg !4776, !tbaa !2764
  %cmp1354 = icmp ne i64 %dec1353, 0, !dbg !4777
  br i1 %cmp1354, label %if.then.1356, label %if.else.1357, !dbg !4778

if.then.1356:                                     ; preds = %do.body.1350
  br label %if.end.1360, !dbg !4779

if.else.1357:                                     ; preds = %do.body.1350
  %917 = load %struct._object*, %struct._object** %_py_decref_tmp1351, align 8, !dbg !4781, !tbaa !981
  %ob_type1358 = getelementptr inbounds %struct._object, %struct._object* %917, i32 0, i32 1, !dbg !4783
  %918 = load %struct._typeobject*, %struct._typeobject** %ob_type1358, align 8, !dbg !4783, !tbaa !1259
  %tp_dealloc1359 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %918, i32 0, i32 4, !dbg !4784
  %919 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1359, align 8, !dbg !4784, !tbaa !2773
  %920 = load %struct._object*, %struct._object** %_py_decref_tmp1351, align 8, !dbg !4785, !tbaa !981
  call void %919(%struct._object* %920), !dbg !4786
  br label %if.end.1360

if.end.1360:                                      ; preds = %if.else.1357, %if.then.1356
  %921 = bitcast %struct._object** %_py_decref_tmp1351 to i8*, !dbg !4787
  call void @llvm.lifetime.end(i64 8, i8* %921) #2, !dbg !4787
  br label %do.cond.1361, !dbg !4789

do.cond.1361:                                     ; preds = %if.end.1360
  br label %do.end.1362, !dbg !4790

do.end.1362:                                      ; preds = %do.cond.1361
  %922 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4792, !tbaa !981
  %923 = load i8*, i8** %msgbuf.addr, align 8, !dbg !4793, !tbaa !981
  %924 = load i64, i64* %bufsize.addr, align 8, !dbg !4794, !tbaa !1279
  %call1363 = call i8* @converterr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.57, i32 0, i32 0), %struct._object* %922, i8* %923, i64 %924), !dbg !4795
  store i8* %call1363, i8** %retval, !dbg !4796
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1426, !dbg !4796

if.end.1364:                                      ; preds = %if.else.1345
  %925 = load i64, i64* %size, align 8, !dbg !4797, !tbaa !1279
  %add1365 = add i64 %925, 1, !dbg !4798
  %cmp1366 = icmp ugt i64 %add1365, 9223372036854775807, !dbg !4799
  br i1 %cmp1366, label %cond.true.1368, label %cond.false.1369, !dbg !4800

cond.true.1368:                                   ; preds = %if.end.1364
  br label %cond.end.1373, !dbg !4801

cond.false.1369:                                  ; preds = %if.end.1364
  %926 = load i64, i64* %size, align 8, !dbg !4803, !tbaa !1279
  %add1370 = add i64 %926, 1, !dbg !4805
  %mul1371 = mul i64 %add1370, 1, !dbg !4806
  %call1372 = call i8* @PyMem_Malloc(i64 %mul1371), !dbg !4807
  br label %cond.end.1373, !dbg !4800

cond.end.1373:                                    ; preds = %cond.false.1369, %cond.true.1368
  %cond1374 = phi i8* [ null, %cond.true.1368 ], [ %call1372, %cond.false.1369 ], !dbg !4800
  %927 = load i8**, i8*** %buffer, align 8, !dbg !4808, !tbaa !981
  store i8* %cond1374, i8** %927, align 8, !dbg !4811, !tbaa !981
  %928 = load i8**, i8*** %buffer, align 8, !dbg !4812, !tbaa !981
  %929 = load i8*, i8** %928, align 8, !dbg !4813, !tbaa !981
  %cmp1375 = icmp eq i8* %929, null, !dbg !4814
  br i1 %cmp1375, label %if.then.1377, label %if.end.1392, !dbg !4815

if.then.1377:                                     ; preds = %cond.end.1373
  br label %do.body.1378, !dbg !4816

do.body.1378:                                     ; preds = %if.then.1377
  %930 = bitcast %struct._object** %_py_decref_tmp1379 to i8*, !dbg !4817
  call void @llvm.lifetime.start(i64 8, i8* %930) #2, !dbg !4817
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp1379, metadata !844, metadata !985), !dbg !4819
  %931 = load %struct._object*, %struct._object** %s, align 8, !dbg !4820, !tbaa !981
  store %struct._object* %931, %struct._object** %_py_decref_tmp1379, align 8, !dbg !4819, !tbaa !981
  %932 = load %struct._object*, %struct._object** %_py_decref_tmp1379, align 8, !dbg !4821, !tbaa !981
  %ob_refcnt1380 = getelementptr inbounds %struct._object, %struct._object* %932, i32 0, i32 0, !dbg !4823
  %933 = load i64, i64* %ob_refcnt1380, align 8, !dbg !4824, !tbaa !2764
  %dec1381 = add i64 %933, -1, !dbg !4824
  store i64 %dec1381, i64* %ob_refcnt1380, align 8, !dbg !4824, !tbaa !2764
  %cmp1382 = icmp ne i64 %dec1381, 0, !dbg !4825
  br i1 %cmp1382, label %if.then.1384, label %if.else.1385, !dbg !4826

if.then.1384:                                     ; preds = %do.body.1378
  br label %if.end.1388, !dbg !4827

if.else.1385:                                     ; preds = %do.body.1378
  %934 = load %struct._object*, %struct._object** %_py_decref_tmp1379, align 8, !dbg !4829, !tbaa !981
  %ob_type1386 = getelementptr inbounds %struct._object, %struct._object* %934, i32 0, i32 1, !dbg !4831
  %935 = load %struct._typeobject*, %struct._typeobject** %ob_type1386, align 8, !dbg !4831, !tbaa !1259
  %tp_dealloc1387 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %935, i32 0, i32 4, !dbg !4832
  %936 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1387, align 8, !dbg !4832, !tbaa !2773
  %937 = load %struct._object*, %struct._object** %_py_decref_tmp1379, align 8, !dbg !4833, !tbaa !981
  call void %936(%struct._object* %937), !dbg !4834
  br label %if.end.1388

if.end.1388:                                      ; preds = %if.else.1385, %if.then.1384
  %938 = bitcast %struct._object** %_py_decref_tmp1379 to i8*, !dbg !4835
  call void @llvm.lifetime.end(i64 8, i8* %938) #2, !dbg !4835
  br label %do.cond.1389, !dbg !4837

do.cond.1389:                                     ; preds = %if.end.1388
  br label %do.end.1390, !dbg !4838

do.end.1390:                                      ; preds = %do.cond.1389
  %call1391 = call %struct._object* @PyErr_NoMemory(), !dbg !4840
  %939 = load i8*, i8** %msgbuf.addr, align 8, !dbg !4841, !tbaa !981
  store i8* %939, i8** %retval, !dbg !4842
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1426, !dbg !4842

if.end.1392:                                      ; preds = %cond.end.1373
  %940 = load i8**, i8*** %buffer, align 8, !dbg !4843, !tbaa !981
  %941 = load i8*, i8** %940, align 8, !dbg !4844, !tbaa !981
  %942 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8, !dbg !4845, !tbaa !981
  %call1393 = call i32 @addcleanup(i8* %941, %struct.freelist_t* %942, i32 (%struct._object*, i8*)* @cleanup_ptr), !dbg !4846
  %tobool1394 = icmp ne i32 %call1393, 0, !dbg !4846
  br i1 %tobool1394, label %if.then.1395, label %if.end.1410, !dbg !4847

if.then.1395:                                     ; preds = %if.end.1392
  br label %do.body.1396, !dbg !4848

do.body.1396:                                     ; preds = %if.then.1395
  %943 = bitcast %struct._object** %_py_decref_tmp1397 to i8*, !dbg !4849
  call void @llvm.lifetime.start(i64 8, i8* %943) #2, !dbg !4849
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp1397, metadata !848, metadata !985), !dbg !4851
  %944 = load %struct._object*, %struct._object** %s, align 8, !dbg !4852, !tbaa !981
  store %struct._object* %944, %struct._object** %_py_decref_tmp1397, align 8, !dbg !4851, !tbaa !981
  %945 = load %struct._object*, %struct._object** %_py_decref_tmp1397, align 8, !dbg !4853, !tbaa !981
  %ob_refcnt1398 = getelementptr inbounds %struct._object, %struct._object* %945, i32 0, i32 0, !dbg !4855
  %946 = load i64, i64* %ob_refcnt1398, align 8, !dbg !4856, !tbaa !2764
  %dec1399 = add i64 %946, -1, !dbg !4856
  store i64 %dec1399, i64* %ob_refcnt1398, align 8, !dbg !4856, !tbaa !2764
  %cmp1400 = icmp ne i64 %dec1399, 0, !dbg !4857
  br i1 %cmp1400, label %if.then.1402, label %if.else.1403, !dbg !4858

if.then.1402:                                     ; preds = %do.body.1396
  br label %if.end.1406, !dbg !4859

if.else.1403:                                     ; preds = %do.body.1396
  %947 = load %struct._object*, %struct._object** %_py_decref_tmp1397, align 8, !dbg !4861, !tbaa !981
  %ob_type1404 = getelementptr inbounds %struct._object, %struct._object* %947, i32 0, i32 1, !dbg !4863
  %948 = load %struct._typeobject*, %struct._typeobject** %ob_type1404, align 8, !dbg !4863, !tbaa !1259
  %tp_dealloc1405 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %948, i32 0, i32 4, !dbg !4864
  %949 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1405, align 8, !dbg !4864, !tbaa !2773
  %950 = load %struct._object*, %struct._object** %_py_decref_tmp1397, align 8, !dbg !4865, !tbaa !981
  call void %949(%struct._object* %950), !dbg !4866
  br label %if.end.1406

if.end.1406:                                      ; preds = %if.else.1403, %if.then.1402
  %951 = bitcast %struct._object** %_py_decref_tmp1397 to i8*, !dbg !4867
  call void @llvm.lifetime.end(i64 8, i8* %951) #2, !dbg !4867
  br label %do.cond.1407, !dbg !4869

do.cond.1407:                                     ; preds = %if.end.1406
  br label %do.end.1408, !dbg !4870

do.end.1408:                                      ; preds = %do.cond.1407
  %952 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4872, !tbaa !981
  %953 = load i8*, i8** %msgbuf.addr, align 8, !dbg !4873, !tbaa !981
  %954 = load i64, i64* %bufsize.addr, align 8, !dbg !4874, !tbaa !1279
  %call1409 = call i8* @converterr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0), %struct._object* %952, i8* %953, i64 %954), !dbg !4875
  store i8* %call1409, i8** %retval, !dbg !4876
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1426, !dbg !4876

if.end.1410:                                      ; preds = %if.end.1392
  %955 = load i8**, i8*** %buffer, align 8, !dbg !4877, !tbaa !981
  %956 = load i8*, i8** %955, align 8, !dbg !4878, !tbaa !981
  %957 = load i8*, i8** %ptr, align 8, !dbg !4879, !tbaa !981
  %958 = load i64, i64* %size, align 8, !dbg !4880, !tbaa !1279
  %add1411 = add i64 %958, 1, !dbg !4881
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %956, i8* %957, i64 %add1411, i32 1, i1 false), !dbg !4882
  br label %if.end.1412

if.end.1412:                                      ; preds = %if.end.1410, %cleanup.cont.1344
  br label %do.body.1413, !dbg !4883

do.body.1413:                                     ; preds = %if.end.1412
  %959 = bitcast %struct._object** %_py_decref_tmp1414 to i8*, !dbg !4884
  call void @llvm.lifetime.start(i64 8, i8* %959) #2, !dbg !4884
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp1414, metadata !852, metadata !985), !dbg !4886
  %960 = load %struct._object*, %struct._object** %s, align 8, !dbg !4887, !tbaa !981
  store %struct._object* %960, %struct._object** %_py_decref_tmp1414, align 8, !dbg !4886, !tbaa !981
  %961 = load %struct._object*, %struct._object** %_py_decref_tmp1414, align 8, !dbg !4888, !tbaa !981
  %ob_refcnt1415 = getelementptr inbounds %struct._object, %struct._object* %961, i32 0, i32 0, !dbg !4890
  %962 = load i64, i64* %ob_refcnt1415, align 8, !dbg !4891, !tbaa !2764
  %dec1416 = add i64 %962, -1, !dbg !4891
  store i64 %dec1416, i64* %ob_refcnt1415, align 8, !dbg !4891, !tbaa !2764
  %cmp1417 = icmp ne i64 %dec1416, 0, !dbg !4892
  br i1 %cmp1417, label %if.then.1419, label %if.else.1420, !dbg !4893

if.then.1419:                                     ; preds = %do.body.1413
  br label %if.end.1423, !dbg !4894

if.else.1420:                                     ; preds = %do.body.1413
  %963 = load %struct._object*, %struct._object** %_py_decref_tmp1414, align 8, !dbg !4896, !tbaa !981
  %ob_type1421 = getelementptr inbounds %struct._object, %struct._object* %963, i32 0, i32 1, !dbg !4898
  %964 = load %struct._typeobject*, %struct._typeobject** %ob_type1421, align 8, !dbg !4898, !tbaa !1259
  %tp_dealloc1422 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %964, i32 0, i32 4, !dbg !4899
  %965 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1422, align 8, !dbg !4899, !tbaa !2773
  %966 = load %struct._object*, %struct._object** %_py_decref_tmp1414, align 8, !dbg !4900, !tbaa !981
  call void %965(%struct._object* %966), !dbg !4901
  br label %if.end.1423

if.end.1423:                                      ; preds = %if.else.1420, %if.then.1419
  %967 = bitcast %struct._object** %_py_decref_tmp1414 to i8*, !dbg !4902
  call void @llvm.lifetime.end(i64 8, i8* %967) #2, !dbg !4902
  br label %do.cond.1424, !dbg !4904

do.cond.1424:                                     ; preds = %if.end.1423
  br label %do.end.1425, !dbg !4905

do.end.1425:                                      ; preds = %do.cond.1424
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.1426, !dbg !4907

cleanup.1426:                                     ; preds = %do.end.1425, %do.end.1408, %do.end.1390, %do.end.1362, %cleanup.1341, %cleanup.1193, %if.then.1136, %if.then.1113, %if.else.1094
  %968 = bitcast i8** %ptr to i8*, !dbg !4908
  call void @llvm.lifetime.end(i64 8, i8* %968) #2, !dbg !4908
  %969 = bitcast i64* %size to i8*, !dbg !4908
  call void @llvm.lifetime.end(i64 8, i8* %969) #2, !dbg !4908
  %970 = bitcast i32* %recode_strings to i8*, !dbg !4908
  call void @llvm.lifetime.end(i64 4, i8* %970) #2, !dbg !4908
  %971 = bitcast %struct._object** %s to i8*, !dbg !4908
  call void @llvm.lifetime.end(i64 8, i8* %971) #2, !dbg !4908
  %972 = bitcast i8** %encoding to i8*, !dbg !4908
  call void @llvm.lifetime.end(i64 8, i8* %972) #2, !dbg !4908
  %973 = bitcast i8*** %buffer to i8*, !dbg !4908
  call void @llvm.lifetime.end(i64 8, i8* %973) #2, !dbg !4908
  %cleanup.dest.1432 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1432, label %cleanup.1669 [
    i32 2, label %sw.epilog
  ]

sw.bb.1433:                                       ; preds = %entry
  %974 = bitcast %struct._object*** %p1434 to i8*, !dbg !4909
  call void @llvm.lifetime.start(i64 8, i8* %974) #2, !dbg !4909
  call void @llvm.dbg.declare(metadata %struct._object*** %p1434, metadata !854, metadata !985), !dbg !4910
  %975 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !4911, !tbaa !981
  %arraydecay1435 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %975, i32 0, i32 0, !dbg !4912
  %gp_offset_p1436 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1435, i32 0, i32 0, !dbg !4913
  %gp_offset1437 = load i32, i32* %gp_offset_p1436, !dbg !4913
  %fits_in_gp1438 = icmp ule i32 %gp_offset1437, 40, !dbg !4913
  br i1 %fits_in_gp1438, label %vaarg.in_reg.1439, label %vaarg.in_mem.1441, !dbg !4913

vaarg.in_reg.1439:                                ; preds = %sw.bb.1433
  %976 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1435, i32 0, i32 3, !dbg !4914
  %reg_save_area1440 = load i8*, i8** %976, !dbg !4914
  %977 = getelementptr i8, i8* %reg_save_area1440, i32 %gp_offset1437, !dbg !4914
  %978 = bitcast i8* %977 to %struct._object***, !dbg !4914
  %979 = add i32 %gp_offset1437, 8, !dbg !4914
  store i32 %979, i32* %gp_offset_p1436, !dbg !4914
  br label %vaarg.end.1445, !dbg !4914

vaarg.in_mem.1441:                                ; preds = %sw.bb.1433
  %overflow_arg_area_p1442 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1435, i32 0, i32 2, !dbg !4916
  %overflow_arg_area1443 = load i8*, i8** %overflow_arg_area_p1442, !dbg !4916
  %980 = bitcast i8* %overflow_arg_area1443 to %struct._object***, !dbg !4916
  %overflow_arg_area.next1444 = getelementptr i8, i8* %overflow_arg_area1443, i32 8, !dbg !4916
  store i8* %overflow_arg_area.next1444, i8** %overflow_arg_area_p1442, !dbg !4916
  br label %vaarg.end.1445, !dbg !4916

vaarg.end.1445:                                   ; preds = %vaarg.in_mem.1441, %vaarg.in_reg.1439
  %vaarg.addr1446 = phi %struct._object*** [ %978, %vaarg.in_reg.1439 ], [ %980, %vaarg.in_mem.1441 ], !dbg !4913
  %981 = load %struct._object**, %struct._object*** %vaarg.addr1446, !dbg !4918
  store %struct._object** %981, %struct._object*** %p1434, align 8, !dbg !4910, !tbaa !981
  %982 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4921, !tbaa !981
  %ob_type1447 = getelementptr inbounds %struct._object, %struct._object* %982, i32 0, i32 1, !dbg !4923
  %983 = load %struct._typeobject*, %struct._typeobject** %ob_type1447, align 8, !dbg !4923, !tbaa !1259
  %tp_flags1448 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %983, i32 0, i32 19, !dbg !4924
  %984 = load i64, i64* %tp_flags1448, align 8, !dbg !4924, !tbaa !1263
  %and1449 = and i64 %984, 134217728, !dbg !4925
  %cmp1450 = icmp ne i64 %and1449, 0, !dbg !4926
  br i1 %cmp1450, label %if.then.1452, label %if.else.1453, !dbg !4927

if.then.1452:                                     ; preds = %vaarg.end.1445
  %985 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4928, !tbaa !981
  %986 = load %struct._object**, %struct._object*** %p1434, align 8, !dbg !4929, !tbaa !981
  store %struct._object* %985, %struct._object** %986, align 8, !dbg !4930, !tbaa !981
  br label %if.end.1455, !dbg !4931

if.else.1453:                                     ; preds = %vaarg.end.1445
  %987 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4932, !tbaa !981
  %988 = load i8*, i8** %msgbuf.addr, align 8, !dbg !4933, !tbaa !981
  %989 = load i64, i64* %bufsize.addr, align 8, !dbg !4934, !tbaa !1279
  %call1454 = call i8* @converterr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), %struct._object* %987, i8* %988, i64 %989), !dbg !4935
  store i8* %call1454, i8** %retval, !dbg !4936
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1456, !dbg !4936

if.end.1455:                                      ; preds = %if.then.1452
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.1456, !dbg !4937

cleanup.1456:                                     ; preds = %if.end.1455, %if.else.1453
  %990 = bitcast %struct._object*** %p1434 to i8*, !dbg !4938
  call void @llvm.lifetime.end(i64 8, i8* %990) #2, !dbg !4938
  %cleanup.dest.1457 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1457, label %cleanup.1669 [
    i32 2, label %sw.epilog
  ]

sw.bb.1458:                                       ; preds = %entry
  %991 = bitcast %struct._object*** %p1459 to i8*, !dbg !4939
  call void @llvm.lifetime.start(i64 8, i8* %991) #2, !dbg !4939
  call void @llvm.dbg.declare(metadata %struct._object*** %p1459, metadata !856, metadata !985), !dbg !4940
  %992 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !4941, !tbaa !981
  %arraydecay1460 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %992, i32 0, i32 0, !dbg !4942
  %gp_offset_p1461 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1460, i32 0, i32 0, !dbg !4943
  %gp_offset1462 = load i32, i32* %gp_offset_p1461, !dbg !4943
  %fits_in_gp1463 = icmp ule i32 %gp_offset1462, 40, !dbg !4943
  br i1 %fits_in_gp1463, label %vaarg.in_reg.1464, label %vaarg.in_mem.1466, !dbg !4943

vaarg.in_reg.1464:                                ; preds = %sw.bb.1458
  %993 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1460, i32 0, i32 3, !dbg !4944
  %reg_save_area1465 = load i8*, i8** %993, !dbg !4944
  %994 = getelementptr i8, i8* %reg_save_area1465, i32 %gp_offset1462, !dbg !4944
  %995 = bitcast i8* %994 to %struct._object***, !dbg !4944
  %996 = add i32 %gp_offset1462, 8, !dbg !4944
  store i32 %996, i32* %gp_offset_p1461, !dbg !4944
  br label %vaarg.end.1470, !dbg !4944

vaarg.in_mem.1466:                                ; preds = %sw.bb.1458
  %overflow_arg_area_p1467 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1460, i32 0, i32 2, !dbg !4946
  %overflow_arg_area1468 = load i8*, i8** %overflow_arg_area_p1467, !dbg !4946
  %997 = bitcast i8* %overflow_arg_area1468 to %struct._object***, !dbg !4946
  %overflow_arg_area.next1469 = getelementptr i8, i8* %overflow_arg_area1468, i32 8, !dbg !4946
  store i8* %overflow_arg_area.next1469, i8** %overflow_arg_area_p1467, !dbg !4946
  br label %vaarg.end.1470, !dbg !4946

vaarg.end.1470:                                   ; preds = %vaarg.in_mem.1466, %vaarg.in_reg.1464
  %vaarg.addr1471 = phi %struct._object*** [ %995, %vaarg.in_reg.1464 ], [ %997, %vaarg.in_mem.1466 ], !dbg !4943
  %998 = load %struct._object**, %struct._object*** %vaarg.addr1471, !dbg !4948
  store %struct._object** %998, %struct._object*** %p1459, align 8, !dbg !4940, !tbaa !981
  %999 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4951, !tbaa !981
  %ob_type1472 = getelementptr inbounds %struct._object, %struct._object* %999, i32 0, i32 1, !dbg !4953
  %1000 = load %struct._typeobject*, %struct._typeobject** %ob_type1472, align 8, !dbg !4953, !tbaa !1259
  %cmp1473 = icmp eq %struct._typeobject* %1000, @PyByteArray_Type, !dbg !4954
  br i1 %cmp1473, label %if.then.1479, label %lor.lhs.false.1475, !dbg !4955

lor.lhs.false.1475:                               ; preds = %vaarg.end.1470
  %1001 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4956, !tbaa !981
  %ob_type1476 = getelementptr inbounds %struct._object, %struct._object* %1001, i32 0, i32 1, !dbg !4958
  %1002 = load %struct._typeobject*, %struct._typeobject** %ob_type1476, align 8, !dbg !4958, !tbaa !1259
  %call1477 = call i32 @PyType_IsSubtype(%struct._typeobject* %1002, %struct._typeobject* @PyByteArray_Type), !dbg !4959
  %tobool1478 = icmp ne i32 %call1477, 0, !dbg !4959
  br i1 %tobool1478, label %if.then.1479, label %if.else.1480, !dbg !4960

if.then.1479:                                     ; preds = %lor.lhs.false.1475, %vaarg.end.1470
  %1003 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4961, !tbaa !981
  %1004 = load %struct._object**, %struct._object*** %p1459, align 8, !dbg !4962, !tbaa !981
  store %struct._object* %1003, %struct._object** %1004, align 8, !dbg !4963, !tbaa !981
  br label %if.end.1482, !dbg !4964

if.else.1480:                                     ; preds = %lor.lhs.false.1475
  %1005 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4965, !tbaa !981
  %1006 = load i8*, i8** %msgbuf.addr, align 8, !dbg !4966, !tbaa !981
  %1007 = load i64, i64* %bufsize.addr, align 8, !dbg !4967, !tbaa !1279
  %call1481 = call i8* @converterr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), %struct._object* %1005, i8* %1006, i64 %1007), !dbg !4968
  store i8* %call1481, i8** %retval, !dbg !4969
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1483, !dbg !4969

if.end.1482:                                      ; preds = %if.then.1479
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.1483, !dbg !4970

cleanup.1483:                                     ; preds = %if.end.1482, %if.else.1480
  %1008 = bitcast %struct._object*** %p1459 to i8*, !dbg !4971
  call void @llvm.lifetime.end(i64 8, i8* %1008) #2, !dbg !4971
  %cleanup.dest.1484 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1484, label %cleanup.1669 [
    i32 2, label %sw.epilog
  ]

sw.bb.1485:                                       ; preds = %entry
  %1009 = bitcast %struct._object*** %p1486 to i8*, !dbg !4972
  call void @llvm.lifetime.start(i64 8, i8* %1009) #2, !dbg !4972
  call void @llvm.dbg.declare(metadata %struct._object*** %p1486, metadata !858, metadata !985), !dbg !4973
  %1010 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !4974, !tbaa !981
  %arraydecay1487 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %1010, i32 0, i32 0, !dbg !4975
  %gp_offset_p1488 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1487, i32 0, i32 0, !dbg !4976
  %gp_offset1489 = load i32, i32* %gp_offset_p1488, !dbg !4976
  %fits_in_gp1490 = icmp ule i32 %gp_offset1489, 40, !dbg !4976
  br i1 %fits_in_gp1490, label %vaarg.in_reg.1491, label %vaarg.in_mem.1493, !dbg !4976

vaarg.in_reg.1491:                                ; preds = %sw.bb.1485
  %1011 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1487, i32 0, i32 3, !dbg !4977
  %reg_save_area1492 = load i8*, i8** %1011, !dbg !4977
  %1012 = getelementptr i8, i8* %reg_save_area1492, i32 %gp_offset1489, !dbg !4977
  %1013 = bitcast i8* %1012 to %struct._object***, !dbg !4977
  %1014 = add i32 %gp_offset1489, 8, !dbg !4977
  store i32 %1014, i32* %gp_offset_p1488, !dbg !4977
  br label %vaarg.end.1497, !dbg !4977

vaarg.in_mem.1493:                                ; preds = %sw.bb.1485
  %overflow_arg_area_p1494 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1487, i32 0, i32 2, !dbg !4979
  %overflow_arg_area1495 = load i8*, i8** %overflow_arg_area_p1494, !dbg !4979
  %1015 = bitcast i8* %overflow_arg_area1495 to %struct._object***, !dbg !4979
  %overflow_arg_area.next1496 = getelementptr i8, i8* %overflow_arg_area1495, i32 8, !dbg !4979
  store i8* %overflow_arg_area.next1496, i8** %overflow_arg_area_p1494, !dbg !4979
  br label %vaarg.end.1497, !dbg !4979

vaarg.end.1497:                                   ; preds = %vaarg.in_mem.1493, %vaarg.in_reg.1491
  %vaarg.addr1498 = phi %struct._object*** [ %1013, %vaarg.in_reg.1491 ], [ %1015, %vaarg.in_mem.1493 ], !dbg !4976
  %1016 = load %struct._object**, %struct._object*** %vaarg.addr1498, !dbg !4981
  store %struct._object** %1016, %struct._object*** %p1486, align 8, !dbg !4973, !tbaa !981
  %1017 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4984, !tbaa !981
  %ob_type1499 = getelementptr inbounds %struct._object, %struct._object* %1017, i32 0, i32 1, !dbg !4986
  %1018 = load %struct._typeobject*, %struct._typeobject** %ob_type1499, align 8, !dbg !4986, !tbaa !1259
  %tp_flags1500 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1018, i32 0, i32 19, !dbg !4987
  %1019 = load i64, i64* %tp_flags1500, align 8, !dbg !4987, !tbaa !1263
  %and1501 = and i64 %1019, 268435456, !dbg !4988
  %cmp1502 = icmp ne i64 %and1501, 0, !dbg !4989
  br i1 %cmp1502, label %if.then.1504, label %if.else.1519, !dbg !4990

if.then.1504:                                     ; preds = %vaarg.end.1497
  %1020 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4991, !tbaa !981
  %1021 = bitcast %struct._object* %1020 to %struct.PyASCIIObject*, !dbg !4994
  %state1505 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %1021, i32 0, i32 3, !dbg !4995
  %1022 = bitcast %struct.anon* %state1505 to i32*, !dbg !4996
  %bf.load1506 = load i32, i32* %1022, align 4, !dbg !4996
  %bf.lshr1507 = lshr i32 %bf.load1506, 7, !dbg !4996
  %bf.clear1508 = and i32 %bf.lshr1507, 1, !dbg !4996
  %tobool1509 = icmp ne i32 %bf.clear1508, 0, !dbg !4997
  br i1 %tobool1509, label %cond.true.1510, label %cond.false.1511, !dbg !4997

cond.true.1510:                                   ; preds = %if.then.1504
  br label %cond.end.1513, !dbg !4998

cond.false.1511:                                  ; preds = %if.then.1504
  %1023 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !5000, !tbaa !981
  %call1512 = call i32 @_PyUnicode_Ready(%struct._object* %1023), !dbg !5002
  br label %cond.end.1513, !dbg !4997

cond.end.1513:                                    ; preds = %cond.false.1511, %cond.true.1510
  %cond1514 = phi i32 [ 0, %cond.true.1510 ], [ %call1512, %cond.false.1511 ], !dbg !4997
  %cmp1515 = icmp eq i32 %cond1514, -1, !dbg !5003
  br i1 %cmp1515, label %if.then.1517, label %if.end.1518, !dbg !5006

if.then.1517:                                     ; preds = %cond.end.1513
  %1024 = load i8*, i8** %msgbuf.addr, align 8, !dbg !5007, !tbaa !981
  store i8* %1024, i8** %retval, !dbg !5008
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1522, !dbg !5008

if.end.1518:                                      ; preds = %cond.end.1513
  %1025 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !5009, !tbaa !981
  %1026 = load %struct._object**, %struct._object*** %p1486, align 8, !dbg !5010, !tbaa !981
  store %struct._object* %1025, %struct._object** %1026, align 8, !dbg !5011, !tbaa !981
  br label %if.end.1521, !dbg !5012

if.else.1519:                                     ; preds = %vaarg.end.1497
  %1027 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !5013, !tbaa !981
  %1028 = load i8*, i8** %msgbuf.addr, align 8, !dbg !5014, !tbaa !981
  %1029 = load i64, i64* %bufsize.addr, align 8, !dbg !5015, !tbaa !1279
  %call1520 = call i8* @converterr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), %struct._object* %1027, i8* %1028, i64 %1029), !dbg !5016
  store i8* %call1520, i8** %retval, !dbg !5017
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1522, !dbg !5017

if.end.1521:                                      ; preds = %if.end.1518
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.1522, !dbg !5018

cleanup.1522:                                     ; preds = %if.end.1521, %if.else.1519, %if.then.1517
  %1030 = bitcast %struct._object*** %p1486 to i8*, !dbg !5019
  call void @llvm.lifetime.end(i64 8, i8* %1030) #2, !dbg !5019
  %cleanup.dest.1523 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1523, label %cleanup.1669 [
    i32 2, label %sw.epilog
  ]

sw.bb.1524:                                       ; preds = %entry
  %1031 = bitcast %struct._typeobject** %type to i8*, !dbg !5020
  call void @llvm.lifetime.start(i64 8, i8* %1031) #2, !dbg !5020
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type, metadata !860, metadata !985), !dbg !5021
  %1032 = bitcast %struct._object*** %p1525 to i8*, !dbg !5022
  call void @llvm.lifetime.start(i64 8, i8* %1032) #2, !dbg !5022
  call void @llvm.dbg.declare(metadata %struct._object*** %p1525, metadata !864, metadata !985), !dbg !5023
  %1033 = load i8*, i8** %format, align 8, !dbg !5024, !tbaa !981
  %1034 = load i8, i8* %1033, align 1, !dbg !5025, !tbaa !1064
  %conv1526 = sext i8 %1034 to i32, !dbg !5025
  %cmp1527 = icmp eq i32 %conv1526, 33, !dbg !5026
  br i1 %cmp1527, label %if.then.1529, label %if.else.1562, !dbg !5027

if.then.1529:                                     ; preds = %sw.bb.1524
  %1035 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !5028, !tbaa !981
  %arraydecay1530 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %1035, i32 0, i32 0, !dbg !5030
  %gp_offset_p1531 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1530, i32 0, i32 0, !dbg !5031
  %gp_offset1532 = load i32, i32* %gp_offset_p1531, !dbg !5031
  %fits_in_gp1533 = icmp ule i32 %gp_offset1532, 40, !dbg !5031
  br i1 %fits_in_gp1533, label %vaarg.in_reg.1534, label %vaarg.in_mem.1536, !dbg !5031

vaarg.in_reg.1534:                                ; preds = %if.then.1529
  %1036 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1530, i32 0, i32 3, !dbg !5032
  %reg_save_area1535 = load i8*, i8** %1036, !dbg !5032
  %1037 = getelementptr i8, i8* %reg_save_area1535, i32 %gp_offset1532, !dbg !5032
  %1038 = bitcast i8* %1037 to %struct._typeobject**, !dbg !5032
  %1039 = add i32 %gp_offset1532, 8, !dbg !5032
  store i32 %1039, i32* %gp_offset_p1531, !dbg !5032
  br label %vaarg.end.1540, !dbg !5032

vaarg.in_mem.1536:                                ; preds = %if.then.1529
  %overflow_arg_area_p1537 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1530, i32 0, i32 2, !dbg !5034
  %overflow_arg_area1538 = load i8*, i8** %overflow_arg_area_p1537, !dbg !5034
  %1040 = bitcast i8* %overflow_arg_area1538 to %struct._typeobject**, !dbg !5034
  %overflow_arg_area.next1539 = getelementptr i8, i8* %overflow_arg_area1538, i32 8, !dbg !5034
  store i8* %overflow_arg_area.next1539, i8** %overflow_arg_area_p1537, !dbg !5034
  br label %vaarg.end.1540, !dbg !5034

vaarg.end.1540:                                   ; preds = %vaarg.in_mem.1536, %vaarg.in_reg.1534
  %vaarg.addr1541 = phi %struct._typeobject** [ %1038, %vaarg.in_reg.1534 ], [ %1040, %vaarg.in_mem.1536 ], !dbg !5031
  %1041 = load %struct._typeobject*, %struct._typeobject** %vaarg.addr1541, !dbg !5036
  store %struct._typeobject* %1041, %struct._typeobject** %type, align 8, !dbg !5039, !tbaa !981
  %1042 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !5040, !tbaa !981
  %arraydecay1542 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %1042, i32 0, i32 0, !dbg !5041
  %gp_offset_p1543 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1542, i32 0, i32 0, !dbg !5042
  %gp_offset1544 = load i32, i32* %gp_offset_p1543, !dbg !5042
  %fits_in_gp1545 = icmp ule i32 %gp_offset1544, 40, !dbg !5042
  br i1 %fits_in_gp1545, label %vaarg.in_reg.1546, label %vaarg.in_mem.1548, !dbg !5042

vaarg.in_reg.1546:                                ; preds = %vaarg.end.1540
  %1043 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1542, i32 0, i32 3, !dbg !5043
  %reg_save_area1547 = load i8*, i8** %1043, !dbg !5043
  %1044 = getelementptr i8, i8* %reg_save_area1547, i32 %gp_offset1544, !dbg !5043
  %1045 = bitcast i8* %1044 to %struct._object***, !dbg !5043
  %1046 = add i32 %gp_offset1544, 8, !dbg !5043
  store i32 %1046, i32* %gp_offset_p1543, !dbg !5043
  br label %vaarg.end.1552, !dbg !5043

vaarg.in_mem.1548:                                ; preds = %vaarg.end.1540
  %overflow_arg_area_p1549 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1542, i32 0, i32 2, !dbg !5044
  %overflow_arg_area1550 = load i8*, i8** %overflow_arg_area_p1549, !dbg !5044
  %1047 = bitcast i8* %overflow_arg_area1550 to %struct._object***, !dbg !5044
  %overflow_arg_area.next1551 = getelementptr i8, i8* %overflow_arg_area1550, i32 8, !dbg !5044
  store i8* %overflow_arg_area.next1551, i8** %overflow_arg_area_p1549, !dbg !5044
  br label %vaarg.end.1552, !dbg !5044

vaarg.end.1552:                                   ; preds = %vaarg.in_mem.1548, %vaarg.in_reg.1546
  %vaarg.addr1553 = phi %struct._object*** [ %1045, %vaarg.in_reg.1546 ], [ %1047, %vaarg.in_mem.1548 ], !dbg !5042
  %1048 = load %struct._object**, %struct._object*** %vaarg.addr1553, !dbg !5045
  store %struct._object** %1048, %struct._object*** %p1525, align 8, !dbg !5046, !tbaa !981
  %1049 = load i8*, i8** %format, align 8, !dbg !5047, !tbaa !981
  %incdec.ptr1554 = getelementptr i8, i8* %1049, i32 1, !dbg !5047
  store i8* %incdec.ptr1554, i8** %format, align 8, !dbg !5047, !tbaa !981
  %1050 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !5048, !tbaa !981
  %ob_type1555 = getelementptr inbounds %struct._object, %struct._object* %1050, i32 0, i32 1, !dbg !5050
  %1051 = load %struct._typeobject*, %struct._typeobject** %ob_type1555, align 8, !dbg !5050, !tbaa !1259
  %1052 = load %struct._typeobject*, %struct._typeobject** %type, align 8, !dbg !5051, !tbaa !981
  %call1556 = call i32 @PyType_IsSubtype(%struct._typeobject* %1051, %struct._typeobject* %1052), !dbg !5052
  %tobool1557 = icmp ne i32 %call1556, 0, !dbg !5052
  br i1 %tobool1557, label %if.then.1558, label %if.else.1559, !dbg !5053

if.then.1558:                                     ; preds = %vaarg.end.1552
  %1053 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !5054, !tbaa !981
  %1054 = load %struct._object**, %struct._object*** %p1525, align 8, !dbg !5055, !tbaa !981
  store %struct._object* %1053, %struct._object** %1054, align 8, !dbg !5056, !tbaa !981
  br label %if.end.1561, !dbg !5057

if.else.1559:                                     ; preds = %vaarg.end.1552
  %1055 = load %struct._typeobject*, %struct._typeobject** %type, align 8, !dbg !5058, !tbaa !981
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1055, i32 0, i32 1, !dbg !5059
  %1056 = load i8*, i8** %tp_name, align 8, !dbg !5059, !tbaa !2667
  %1057 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !5060, !tbaa !981
  %1058 = load i8*, i8** %msgbuf.addr, align 8, !dbg !5061, !tbaa !981
  %1059 = load i64, i64* %bufsize.addr, align 8, !dbg !5062, !tbaa !1279
  %call1560 = call i8* @converterr(i8* %1056, %struct._object* %1057, i8* %1058, i64 %1059), !dbg !5063
  store i8* %call1560, i8** %retval, !dbg !5064
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1626, !dbg !5064

if.end.1561:                                      ; preds = %if.then.1558
  br label %if.end.1625, !dbg !5065

if.else.1562:                                     ; preds = %sw.bb.1524
  %1060 = load i8*, i8** %format, align 8, !dbg !5066, !tbaa !981
  %1061 = load i8, i8* %1060, align 1, !dbg !5067, !tbaa !1064
  %conv1563 = sext i8 %1061 to i32, !dbg !5067
  %cmp1564 = icmp eq i32 %conv1563, 38, !dbg !5068
  br i1 %cmp1564, label %if.then.1566, label %if.else.1611, !dbg !5069

if.then.1566:                                     ; preds = %if.else.1562
  %1062 = bitcast i32 (%struct._object*, i8*)** %convert to i8*, !dbg !5070
  call void @llvm.lifetime.start(i64 8, i8* %1062) #2, !dbg !5070
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %convert, metadata !865, metadata !985), !dbg !5071
  %1063 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !5072, !tbaa !981
  %arraydecay1567 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %1063, i32 0, i32 0, !dbg !5073
  %gp_offset_p1568 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1567, i32 0, i32 0, !dbg !5074
  %gp_offset1569 = load i32, i32* %gp_offset_p1568, !dbg !5074
  %fits_in_gp1570 = icmp ule i32 %gp_offset1569, 40, !dbg !5074
  br i1 %fits_in_gp1570, label %vaarg.in_reg.1571, label %vaarg.in_mem.1573, !dbg !5074

vaarg.in_reg.1571:                                ; preds = %if.then.1566
  %1064 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1567, i32 0, i32 3, !dbg !5075
  %reg_save_area1572 = load i8*, i8** %1064, !dbg !5075
  %1065 = getelementptr i8, i8* %reg_save_area1572, i32 %gp_offset1569, !dbg !5075
  %1066 = bitcast i8* %1065 to i32 (%struct._object*, i8*)**, !dbg !5075
  %1067 = add i32 %gp_offset1569, 8, !dbg !5075
  store i32 %1067, i32* %gp_offset_p1568, !dbg !5075
  br label %vaarg.end.1577, !dbg !5075

vaarg.in_mem.1573:                                ; preds = %if.then.1566
  %overflow_arg_area_p1574 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1567, i32 0, i32 2, !dbg !5077
  %overflow_arg_area1575 = load i8*, i8** %overflow_arg_area_p1574, !dbg !5077
  %1068 = bitcast i8* %overflow_arg_area1575 to i32 (%struct._object*, i8*)**, !dbg !5077
  %overflow_arg_area.next1576 = getelementptr i8, i8* %overflow_arg_area1575, i32 8, !dbg !5077
  store i8* %overflow_arg_area.next1576, i8** %overflow_arg_area_p1574, !dbg !5077
  br label %vaarg.end.1577, !dbg !5077

vaarg.end.1577:                                   ; preds = %vaarg.in_mem.1573, %vaarg.in_reg.1571
  %vaarg.addr1578 = phi i32 (%struct._object*, i8*)** [ %1066, %vaarg.in_reg.1571 ], [ %1068, %vaarg.in_mem.1573 ], !dbg !5074
  %1069 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %vaarg.addr1578, !dbg !5079
  store i32 (%struct._object*, i8*)* %1069, i32 (%struct._object*, i8*)** %convert, align 8, !dbg !5071, !tbaa !981
  %1070 = bitcast i8** %addr to i8*, !dbg !5082
  call void @llvm.lifetime.start(i64 8, i8* %1070) #2, !dbg !5082
  call void @llvm.dbg.declare(metadata i8** %addr, metadata !870, metadata !985), !dbg !5083
  %1071 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !5084, !tbaa !981
  %arraydecay1579 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %1071, i32 0, i32 0, !dbg !5085
  %gp_offset_p1580 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1579, i32 0, i32 0, !dbg !5086
  %gp_offset1581 = load i32, i32* %gp_offset_p1580, !dbg !5086
  %fits_in_gp1582 = icmp ule i32 %gp_offset1581, 40, !dbg !5086
  br i1 %fits_in_gp1582, label %vaarg.in_reg.1583, label %vaarg.in_mem.1585, !dbg !5086

vaarg.in_reg.1583:                                ; preds = %vaarg.end.1577
  %1072 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1579, i32 0, i32 3, !dbg !5087
  %reg_save_area1584 = load i8*, i8** %1072, !dbg !5087
  %1073 = getelementptr i8, i8* %reg_save_area1584, i32 %gp_offset1581, !dbg !5087
  %1074 = bitcast i8* %1073 to i8**, !dbg !5087
  %1075 = add i32 %gp_offset1581, 8, !dbg !5087
  store i32 %1075, i32* %gp_offset_p1580, !dbg !5087
  br label %vaarg.end.1589, !dbg !5087

vaarg.in_mem.1585:                                ; preds = %vaarg.end.1577
  %overflow_arg_area_p1586 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1579, i32 0, i32 2, !dbg !5088
  %overflow_arg_area1587 = load i8*, i8** %overflow_arg_area_p1586, !dbg !5088
  %1076 = bitcast i8* %overflow_arg_area1587 to i8**, !dbg !5088
  %overflow_arg_area.next1588 = getelementptr i8, i8* %overflow_arg_area1587, i32 8, !dbg !5088
  store i8* %overflow_arg_area.next1588, i8** %overflow_arg_area_p1586, !dbg !5088
  br label %vaarg.end.1589, !dbg !5088

vaarg.end.1589:                                   ; preds = %vaarg.in_mem.1585, %vaarg.in_reg.1583
  %vaarg.addr1590 = phi i8** [ %1074, %vaarg.in_reg.1583 ], [ %1076, %vaarg.in_mem.1585 ], !dbg !5086
  %1077 = load i8*, i8** %vaarg.addr1590, !dbg !5089
  store i8* %1077, i8** %addr, align 8, !dbg !5083, !tbaa !981
  %1078 = bitcast i32* %res to i8*, !dbg !5090
  call void @llvm.lifetime.start(i64 4, i8* %1078) #2, !dbg !5090
  call void @llvm.dbg.declare(metadata i32* %res, metadata !871, metadata !985), !dbg !5091
  %1079 = load i8*, i8** %format, align 8, !dbg !5092, !tbaa !981
  %incdec.ptr1591 = getelementptr i8, i8* %1079, i32 1, !dbg !5092
  store i8* %incdec.ptr1591, i8** %format, align 8, !dbg !5092, !tbaa !981
  %1080 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %convert, align 8, !dbg !5093, !tbaa !981
  %1081 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !5095, !tbaa !981
  %1082 = load i8*, i8** %addr, align 8, !dbg !5096, !tbaa !981
  %call1592 = call i32 %1080(%struct._object* %1081, i8* %1082), !dbg !5097
  store i32 %call1592, i32* %res, align 4, !dbg !5098, !tbaa !998
  %tobool1593 = icmp ne i32 %call1592, 0, !dbg !5098
  br i1 %tobool1593, label %if.end.1596, label %if.then.1594, !dbg !5099

if.then.1594:                                     ; preds = %vaarg.end.1589
  %1083 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !5100, !tbaa !981
  %1084 = load i8*, i8** %msgbuf.addr, align 8, !dbg !5101, !tbaa !981
  %1085 = load i64, i64* %bufsize.addr, align 8, !dbg !5102, !tbaa !1279
  %call1595 = call i8* @converterr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i32 0, i32 0), %struct._object* %1083, i8* %1084, i64 %1085), !dbg !5103
  store i8* %call1595, i8** %retval, !dbg !5104
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1606, !dbg !5104

if.end.1596:                                      ; preds = %vaarg.end.1589
  %1086 = load i32, i32* %res, align 4, !dbg !5105, !tbaa !998
  %cmp1597 = icmp eq i32 %1086, 131072, !dbg !5107
  br i1 %cmp1597, label %land.lhs.true.1599, label %if.end.1605, !dbg !5108

land.lhs.true.1599:                               ; preds = %if.end.1596
  %1087 = load i8*, i8** %addr, align 8, !dbg !5109, !tbaa !981
  %1088 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8, !dbg !5110, !tbaa !981
  %1089 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %convert, align 8, !dbg !5111, !tbaa !981
  %call1600 = call i32 @addcleanup(i8* %1087, %struct.freelist_t* %1088, i32 (%struct._object*, i8*)* %1089), !dbg !5112
  %cmp1601 = icmp eq i32 %call1600, -1, !dbg !5113
  br i1 %cmp1601, label %if.then.1603, label %if.end.1605, !dbg !5114

if.then.1603:                                     ; preds = %land.lhs.true.1599
  %1090 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !5115, !tbaa !981
  %1091 = load i8*, i8** %msgbuf.addr, align 8, !dbg !5116, !tbaa !981
  %1092 = load i64, i64* %bufsize.addr, align 8, !dbg !5117, !tbaa !1279
  %call1604 = call i8* @converterr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0), %struct._object* %1090, i8* %1091, i64 %1092), !dbg !5118
  store i8* %call1604, i8** %retval, !dbg !5119
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1606, !dbg !5119

if.end.1605:                                      ; preds = %land.lhs.true.1599, %if.end.1596
  store i32 0, i32* %cleanup.dest.slot, !dbg !5120
  br label %cleanup.1606, !dbg !5120

cleanup.1606:                                     ; preds = %if.end.1605, %if.then.1603, %if.then.1594
  %1093 = bitcast i32* %res to i8*, !dbg !5121
  call void @llvm.lifetime.end(i64 4, i8* %1093) #2, !dbg !5121
  %1094 = bitcast i8** %addr to i8*, !dbg !5121
  call void @llvm.lifetime.end(i64 8, i8* %1094) #2, !dbg !5121
  %1095 = bitcast i32 (%struct._object*, i8*)** %convert to i8*, !dbg !5121
  call void @llvm.lifetime.end(i64 8, i8* %1095) #2, !dbg !5121
  %cleanup.dest.1609 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1609, label %cleanup.1626 [
    i32 0, label %cleanup.cont.1610
  ]

cleanup.cont.1610:                                ; preds = %cleanup.1606
  br label %if.end.1624, !dbg !5123

if.else.1611:                                     ; preds = %if.else.1562
  %1096 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !5124, !tbaa !981
  %arraydecay1612 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %1096, i32 0, i32 0, !dbg !5126
  %gp_offset_p1613 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1612, i32 0, i32 0, !dbg !5127
  %gp_offset1614 = load i32, i32* %gp_offset_p1613, !dbg !5127
  %fits_in_gp1615 = icmp ule i32 %gp_offset1614, 40, !dbg !5127
  br i1 %fits_in_gp1615, label %vaarg.in_reg.1616, label %vaarg.in_mem.1618, !dbg !5127

vaarg.in_reg.1616:                                ; preds = %if.else.1611
  %1097 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1612, i32 0, i32 3, !dbg !5128
  %reg_save_area1617 = load i8*, i8** %1097, !dbg !5128
  %1098 = getelementptr i8, i8* %reg_save_area1617, i32 %gp_offset1614, !dbg !5128
  %1099 = bitcast i8* %1098 to %struct._object***, !dbg !5128
  %1100 = add i32 %gp_offset1614, 8, !dbg !5128
  store i32 %1100, i32* %gp_offset_p1613, !dbg !5128
  br label %vaarg.end.1622, !dbg !5128

vaarg.in_mem.1618:                                ; preds = %if.else.1611
  %overflow_arg_area_p1619 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1612, i32 0, i32 2, !dbg !5130
  %overflow_arg_area1620 = load i8*, i8** %overflow_arg_area_p1619, !dbg !5130
  %1101 = bitcast i8* %overflow_arg_area1620 to %struct._object***, !dbg !5130
  %overflow_arg_area.next1621 = getelementptr i8, i8* %overflow_arg_area1620, i32 8, !dbg !5130
  store i8* %overflow_arg_area.next1621, i8** %overflow_arg_area_p1619, !dbg !5130
  br label %vaarg.end.1622, !dbg !5130

vaarg.end.1622:                                   ; preds = %vaarg.in_mem.1618, %vaarg.in_reg.1616
  %vaarg.addr1623 = phi %struct._object*** [ %1099, %vaarg.in_reg.1616 ], [ %1101, %vaarg.in_mem.1618 ], !dbg !5127
  %1102 = load %struct._object**, %struct._object*** %vaarg.addr1623, !dbg !5132
  store %struct._object** %1102, %struct._object*** %p1525, align 8, !dbg !5135, !tbaa !981
  %1103 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !5136, !tbaa !981
  %1104 = load %struct._object**, %struct._object*** %p1525, align 8, !dbg !5137, !tbaa !981
  store %struct._object* %1103, %struct._object** %1104, align 8, !dbg !5138, !tbaa !981
  br label %if.end.1624

if.end.1624:                                      ; preds = %vaarg.end.1622, %cleanup.cont.1610
  br label %if.end.1625

if.end.1625:                                      ; preds = %if.end.1624, %if.end.1561
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.1626, !dbg !5139

cleanup.1626:                                     ; preds = %if.end.1625, %cleanup.1606, %if.else.1559
  %1105 = bitcast %struct._object*** %p1525 to i8*, !dbg !5140
  call void @llvm.lifetime.end(i64 8, i8* %1105) #2, !dbg !5140
  %1106 = bitcast %struct._typeobject** %type to i8*, !dbg !5140
  call void @llvm.lifetime.end(i64 8, i8* %1106) #2, !dbg !5140
  %cleanup.dest.1628 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1628, label %cleanup.1669 [
    i32 2, label %sw.epilog
  ]

sw.bb.1629:                                       ; preds = %entry
  %1107 = bitcast i8*** %p1630 to i8*, !dbg !5141
  call void @llvm.lifetime.start(i64 8, i8* %1107) #2, !dbg !5141
  call void @llvm.dbg.declare(metadata i8*** %p1630, metadata !872, metadata !985), !dbg !5142
  %1108 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !5143, !tbaa !981
  %arraydecay1631 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %1108, i32 0, i32 0, !dbg !5144
  %gp_offset_p1632 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1631, i32 0, i32 0, !dbg !5145
  %gp_offset1633 = load i32, i32* %gp_offset_p1632, !dbg !5145
  %fits_in_gp1634 = icmp ule i32 %gp_offset1633, 40, !dbg !5145
  br i1 %fits_in_gp1634, label %vaarg.in_reg.1635, label %vaarg.in_mem.1637, !dbg !5145

vaarg.in_reg.1635:                                ; preds = %sw.bb.1629
  %1109 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1631, i32 0, i32 3, !dbg !5146
  %reg_save_area1636 = load i8*, i8** %1109, !dbg !5146
  %1110 = getelementptr i8, i8* %reg_save_area1636, i32 %gp_offset1633, !dbg !5146
  %1111 = bitcast i8* %1110 to i8***, !dbg !5146
  %1112 = add i32 %gp_offset1633, 8, !dbg !5146
  store i32 %1112, i32* %gp_offset_p1632, !dbg !5146
  br label %vaarg.end.1641, !dbg !5146

vaarg.in_mem.1637:                                ; preds = %sw.bb.1629
  %overflow_arg_area_p1638 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1631, i32 0, i32 2, !dbg !5148
  %overflow_arg_area1639 = load i8*, i8** %overflow_arg_area_p1638, !dbg !5148
  %1113 = bitcast i8* %overflow_arg_area1639 to i8***, !dbg !5148
  %overflow_arg_area.next1640 = getelementptr i8, i8* %overflow_arg_area1639, i32 8, !dbg !5148
  store i8* %overflow_arg_area.next1640, i8** %overflow_arg_area_p1638, !dbg !5148
  br label %vaarg.end.1641, !dbg !5148

vaarg.end.1641:                                   ; preds = %vaarg.in_mem.1637, %vaarg.in_reg.1635
  %vaarg.addr1642 = phi i8*** [ %1111, %vaarg.in_reg.1635 ], [ %1113, %vaarg.in_mem.1637 ], !dbg !5145
  %1114 = load i8**, i8*** %vaarg.addr1642, !dbg !5150
  store i8** %1114, i8*** %p1630, align 8, !dbg !5142, !tbaa !981
  %1115 = load i8*, i8** %format, align 8, !dbg !5153, !tbaa !981
  %1116 = load i8, i8* %1115, align 1, !dbg !5155, !tbaa !1064
  %conv1643 = sext i8 %1116 to i32, !dbg !5155
  %cmp1644 = icmp ne i32 %conv1643, 42, !dbg !5156
  br i1 %cmp1644, label %if.then.1646, label %if.end.1648, !dbg !5157

if.then.1646:                                     ; preds = %vaarg.end.1641
  %1117 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !5158, !tbaa !981
  %1118 = load i8*, i8** %msgbuf.addr, align 8, !dbg !5159, !tbaa !981
  %1119 = load i64, i64* %bufsize.addr, align 8, !dbg !5160, !tbaa !1279
  %call1647 = call i8* @converterr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.61, i32 0, i32 0), %struct._object* %1117, i8* %1118, i64 %1119), !dbg !5161
  store i8* %call1647, i8** %retval, !dbg !5162
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1666, !dbg !5162

if.end.1648:                                      ; preds = %vaarg.end.1641
  %1120 = load i8*, i8** %format, align 8, !dbg !5163, !tbaa !981
  %incdec.ptr1649 = getelementptr i8, i8* %1120, i32 1, !dbg !5163
  store i8* %incdec.ptr1649, i8** %format, align 8, !dbg !5163, !tbaa !981
  %1121 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !5164, !tbaa !981
  %1122 = load i8**, i8*** %p1630, align 8, !dbg !5166, !tbaa !981
  %1123 = bitcast i8** %1122 to %struct.bufferinfo*, !dbg !5167
  %call1650 = call i32 @PyObject_GetBuffer(%struct._object* %1121, %struct.bufferinfo* %1123, i32 1), !dbg !5168
  %cmp1651 = icmp slt i32 %call1650, 0, !dbg !5169
  br i1 %cmp1651, label %if.then.1653, label %if.end.1655, !dbg !5170

if.then.1653:                                     ; preds = %if.end.1648
  call void @PyErr_Clear(), !dbg !5171
  %1124 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !5173, !tbaa !981
  %1125 = load i8*, i8** %msgbuf.addr, align 8, !dbg !5174, !tbaa !981
  %1126 = load i64, i64* %bufsize.addr, align 8, !dbg !5175, !tbaa !1279
  %call1654 = call i8* @converterr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i32 0, i32 0), %struct._object* %1124, i8* %1125, i64 %1126), !dbg !5176
  store i8* %call1654, i8** %retval, !dbg !5177
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1666, !dbg !5177

if.end.1655:                                      ; preds = %if.end.1648
  %1127 = load i8**, i8*** %p1630, align 8, !dbg !5178, !tbaa !981
  %1128 = bitcast i8** %1127 to %struct.bufferinfo*, !dbg !5180
  %call1656 = call i32 @PyBuffer_IsContiguous(%struct.bufferinfo* %1128, i8 signext 67), !dbg !5181
  %tobool1657 = icmp ne i32 %call1656, 0, !dbg !5181
  br i1 %tobool1657, label %if.end.1660, label %if.then.1658, !dbg !5182

if.then.1658:                                     ; preds = %if.end.1655
  %1129 = load i8**, i8*** %p1630, align 8, !dbg !5183, !tbaa !981
  %1130 = bitcast i8** %1129 to %struct.bufferinfo*, !dbg !5185
  call void @PyBuffer_Release(%struct.bufferinfo* %1130), !dbg !5186
  %1131 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !5187, !tbaa !981
  %1132 = load i8*, i8** %msgbuf.addr, align 8, !dbg !5188, !tbaa !981
  %1133 = load i64, i64* %bufsize.addr, align 8, !dbg !5189, !tbaa !1279
  %call1659 = call i8* @converterr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i32 0, i32 0), %struct._object* %1131, i8* %1132, i64 %1133), !dbg !5190
  store i8* %call1659, i8** %retval, !dbg !5191
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1666, !dbg !5191

if.end.1660:                                      ; preds = %if.end.1655
  %1134 = load i8**, i8*** %p1630, align 8, !dbg !5192, !tbaa !981
  %1135 = bitcast i8** %1134 to i8*, !dbg !5192
  %1136 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8, !dbg !5194, !tbaa !981
  %call1661 = call i32 @addcleanup(i8* %1135, %struct.freelist_t* %1136, i32 (%struct._object*, i8*)* @cleanup_buffer), !dbg !5195
  %tobool1662 = icmp ne i32 %call1661, 0, !dbg !5195
  br i1 %tobool1662, label %if.then.1663, label %if.end.1665, !dbg !5196

if.then.1663:                                     ; preds = %if.end.1660
  %1137 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !5197, !tbaa !981
  %1138 = load i8*, i8** %msgbuf.addr, align 8, !dbg !5199, !tbaa !981
  %1139 = load i64, i64* %bufsize.addr, align 8, !dbg !5200, !tbaa !1279
  %call1664 = call i8* @converterr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0), %struct._object* %1137, i8* %1138, i64 %1139), !dbg !5201
  store i8* %call1664, i8** %retval, !dbg !5202
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1666, !dbg !5202

if.end.1665:                                      ; preds = %if.end.1660
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.1666, !dbg !5203

cleanup.1666:                                     ; preds = %if.end.1665, %if.then.1663, %if.then.1658, %if.then.1653, %if.then.1646
  %1140 = bitcast i8*** %p1630 to i8*, !dbg !5204
  call void @llvm.lifetime.end(i64 8, i8* %1140) #2, !dbg !5204
  %cleanup.dest.1667 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1667, label %cleanup.1669 [
    i32 2, label %sw.epilog
  ]

sw.default:                                       ; preds = %entry
  %1141 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !5205, !tbaa !981
  %1142 = load i8*, i8** %msgbuf.addr, align 8, !dbg !5206, !tbaa !981
  %1143 = load i64, i64* %bufsize.addr, align 8, !dbg !5207, !tbaa !1279
  %call1668 = call i8* @converterr(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i32 0, i32 0), %struct._object* %1141, i8* %1142, i64 %1143), !dbg !5208
  store i8* %call1668, i8** %retval, !dbg !5209
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1669, !dbg !5209

sw.epilog:                                        ; preds = %cleanup.1666, %cleanup.1626, %cleanup.1522, %cleanup.1483, %cleanup.1456, %cleanup.1426, %cleanup.1065, %if.end.928, %cleanup.674, %cleanup.578, %cleanup.549, %cleanup.470, %cleanup.424, %cleanup.401, %cleanup.377, %cleanup.353, %cleanup.325, %cleanup.294, %cleanup.268, %cleanup.236, %cleanup.196, %cleanup.164, %cleanup.122, %cleanup.90, %cleanup.48, %cleanup
  %1144 = load i8*, i8** %format, align 8, !dbg !5210, !tbaa !981
  %1145 = load i8**, i8*** %p_format.addr, align 8, !dbg !5211, !tbaa !981
  store i8* %1144, i8** %1145, align 8, !dbg !5212, !tbaa !981
  store i8* null, i8** %retval, !dbg !5213
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1669, !dbg !5213

cleanup.1669:                                     ; preds = %sw.epilog, %sw.default, %cleanup.1666, %cleanup.1626, %cleanup.1522, %cleanup.1483, %cleanup.1456, %cleanup.1426, %cleanup.1065, %cleanup.923, %cleanup.859, %cleanup.740, %cleanup.674, %cleanup.578, %cleanup.549, %cleanup.470, %cleanup.424, %cleanup.401, %cleanup.377, %cleanup.353, %cleanup.325, %cleanup.294, %cleanup.268, %cleanup.236, %cleanup.196, %cleanup.164, %cleanup.122, %cleanup.90, %cleanup.48, %cleanup
  %1146 = bitcast i8** %sarg to i8*, !dbg !5214
  call void @llvm.lifetime.end(i64 8, i8* %1146) #2, !dbg !5214
  call void @llvm.lifetime.end(i64 1, i8* %c) #2, !dbg !5214
  %1147 = bitcast i8** %format to i8*, !dbg !5214
  call void @llvm.lifetime.end(i64 8, i8* %1147) #2, !dbg !5214
  %1148 = load i8*, i8** %retval, !dbg !5214
  ret i8* %1148, !dbg !5214
}

declare i32 @PySequence_Check(%struct._object*) #3

declare i32 @PyOS_snprintf(i8*, i64, i8*, ...) #3

declare i64 @PySequence_Size(%struct._object*) #3

declare %struct._object* @PySequence_GetItem(%struct._object*, i64) #3

declare void @PyErr_Clear() #3

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #5

; Function Attrs: nounwind uwtable
define internal i32 @float_argument_error(%struct._object* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca %struct._object*, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !876, metadata !985), !dbg !5215
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !5216, !tbaa !981
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !5218
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5218, !tbaa !1259
  %cmp = icmp eq %struct._typeobject* %1, @PyFloat_Type, !dbg !5219
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5220

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !5221, !tbaa !981
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !5223
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !5223, !tbaa !1259
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PyFloat_Type), !dbg !5224
  %tobool = icmp ne i32 %call, 0, !dbg !5224
  br i1 %tobool, label %if.then, label %if.else, !dbg !5225

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !5226, !tbaa !981
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.65, i32 0, i32 0)), !dbg !5228
  store i32 1, i32* %retval, !dbg !5229
  br label %return, !dbg !5229

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %retval, !dbg !5230
  br label %return, !dbg !5230

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %retval, !dbg !5231
  ret i32 %5, !dbg !5231
}

declare i64 @PyLong_AsLong(%struct._object*) #3

declare %struct._object* @PyErr_Occurred() #3

declare i64 @PyLong_AsUnsignedLongMask(%struct._object*) #3

declare %struct._object* @PyNumber_Index(%struct._object*) #3

declare i64 @PyLong_AsSsize_t(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i8* @converterr(i8* %expected, %struct._object* %arg, i8* %msgbuf, i64 %bufsize) #0 {
entry:
  %expected.addr = alloca i8*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %msgbuf.addr = alloca i8*, align 8
  %bufsize.addr = alloca i64, align 8
  store i8* %expected, i8** %expected.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8** %expected.addr, metadata !881, metadata !985), !dbg !5232
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !882, metadata !985), !dbg !5233
  store i8* %msgbuf, i8** %msgbuf.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8** %msgbuf.addr, metadata !883, metadata !985), !dbg !5234
  store i64 %bufsize, i64* %bufsize.addr, align 8, !tbaa !1279
  call void @llvm.dbg.declare(metadata i64* %bufsize.addr, metadata !884, metadata !985), !dbg !5235
  %0 = load i8*, i8** %msgbuf.addr, align 8, !dbg !5236, !tbaa !981
  %1 = load i64, i64* %bufsize.addr, align 8, !dbg !5237, !tbaa !1279
  %2 = load i8*, i8** %expected.addr, align 8, !dbg !5238, !tbaa !981
  %3 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !5239, !tbaa !981
  %cmp = icmp eq %struct._object* %3, @_Py_NoneStruct, !dbg !5240
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5239

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !5241

cond.false:                                       ; preds = %entry
  %4 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !5243, !tbaa !981
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !5245
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5245, !tbaa !1259
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 1, !dbg !5246
  %6 = load i8*, i8** %tp_name, align 8, !dbg !5246, !tbaa !2667
  br label %cond.end, !dbg !5239

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), %cond.true ], [ %6, %cond.false ], !dbg !5239
  %call = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0), i8* %2, i8* %cond), !dbg !5247
  %7 = load i8*, i8** %msgbuf.addr, align 8, !dbg !5248, !tbaa !981
  ret i8* %7, !dbg !5249
}

declare i64 @PyLong_AsLongLong(%struct._object*) #3

declare i64 @PyLong_AsUnsignedLongLongMask(%struct._object*) #3

declare double @PyFloat_AsDouble(%struct._object*) #3

declare { double, double } @PyComplex_AsCComplex(%struct._object*) #3

declare i64 @PyBytes_Size(%struct._object*) #3

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #3

declare i64 @PyByteArray_Size(%struct._object*) #3

declare i32 @_PyUnicode_Ready(%struct._object*) #3

declare i32 @PyObject_IsTrue(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @getbuffer(%struct._object* %arg, %struct.bufferinfo* %view, i8** %errmsg) #0 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca %struct._object*, align 8
  %view.addr = alloca %struct.bufferinfo*, align 8
  %errmsg.addr = alloca i8**, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !889, metadata !985), !dbg !5250
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct.bufferinfo** %view.addr, metadata !890, metadata !985), !dbg !5251
  store i8** %errmsg, i8*** %errmsg.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8*** %errmsg.addr, metadata !891, metadata !985), !dbg !5252
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !5253, !tbaa !981
  %1 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8, !dbg !5255, !tbaa !981
  %call = call i32 @PyObject_GetBuffer(%struct._object* %0, %struct.bufferinfo* %1, i32 0), !dbg !5256
  %cmp = icmp ne i32 %call, 0, !dbg !5257
  br i1 %cmp, label %if.then, label %if.end, !dbg !5258

if.then:                                          ; preds = %entry
  %2 = load i8**, i8*** %errmsg.addr, align 8, !dbg !5259, !tbaa !981
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i32 0, i32 0), i8** %2, align 8, !dbg !5261, !tbaa !981
  store i32 -1, i32* %retval, !dbg !5262
  br label %return, !dbg !5262

if.end:                                           ; preds = %entry
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8, !dbg !5263, !tbaa !981
  %call1 = call i32 @PyBuffer_IsContiguous(%struct.bufferinfo* %3, i8 signext 67), !dbg !5265
  %tobool = icmp ne i32 %call1, 0, !dbg !5265
  br i1 %tobool, label %if.end.3, label %if.then.2, !dbg !5266

if.then.2:                                        ; preds = %if.end
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8, !dbg !5267, !tbaa !981
  call void @PyBuffer_Release(%struct.bufferinfo* %4), !dbg !5269
  %5 = load i8**, i8*** %errmsg.addr, align 8, !dbg !5270, !tbaa !981
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i32 0, i32 0), i8** %5, align 8, !dbg !5271, !tbaa !981
  store i32 -1, i32* %retval, !dbg !5272
  br label %return, !dbg !5272

if.end.3:                                         ; preds = %if.end
  store i32 0, i32* %retval, !dbg !5273
  br label %return, !dbg !5273

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %6 = load i32, i32* %retval, !dbg !5274
  ret i32 %6, !dbg !5274
}

; Function Attrs: nounwind uwtable
define internal i32 @addcleanup(i8* %ptr, %struct.freelist_t* %freelist, i32 (%struct._object*, i8*)* %destructor) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %freelist.addr = alloca %struct.freelist_t*, align 8
  %destructor.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %index = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !896, metadata !985), !dbg !5275
  store %struct.freelist_t* %freelist, %struct.freelist_t** %freelist.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct.freelist_t** %freelist.addr, metadata !897, metadata !985), !dbg !5276
  store i32 (%struct._object*, i8*)* %destructor, i32 (%struct._object*, i8*)** %destructor.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %destructor.addr, metadata !898, metadata !985), !dbg !5277
  %0 = bitcast i32* %index to i8*, !dbg !5278
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !5278
  call void @llvm.dbg.declare(metadata i32* %index, metadata !899, metadata !985), !dbg !5279
  %1 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8, !dbg !5280, !tbaa !981
  %first_available = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %1, i32 0, i32 1, !dbg !5281
  %2 = load i32, i32* %first_available, align 4, !dbg !5281, !tbaa !1048
  store i32 %2, i32* %index, align 4, !dbg !5282, !tbaa !998
  %3 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8, !dbg !5283, !tbaa !981
  %first_available1 = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %3, i32 0, i32 1, !dbg !5284
  %4 = load i32, i32* %first_available1, align 4, !dbg !5285, !tbaa !1048
  %add = add i32 %4, 1, !dbg !5285
  store i32 %add, i32* %first_available1, align 4, !dbg !5285, !tbaa !1048
  %5 = load i8*, i8** %ptr.addr, align 8, !dbg !5286, !tbaa !981
  %6 = load i32, i32* %index, align 4, !dbg !5287, !tbaa !998
  %idxprom = sext i32 %6 to i64, !dbg !5288
  %7 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8, !dbg !5288, !tbaa !981
  %entries = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %7, i32 0, i32 0, !dbg !5289
  %8 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries, align 8, !dbg !5289, !tbaa !1044
  %arrayidx = getelementptr %struct.freelistentry_t, %struct.freelistentry_t* %8, i64 %idxprom, !dbg !5288
  %item = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %arrayidx, i32 0, i32 0, !dbg !5290
  store i8* %5, i8** %item, align 8, !dbg !5291, !tbaa !2369
  %9 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %destructor.addr, align 8, !dbg !5292, !tbaa !981
  %10 = load i32, i32* %index, align 4, !dbg !5293, !tbaa !998
  %idxprom2 = sext i32 %10 to i64, !dbg !5294
  %11 = load %struct.freelist_t*, %struct.freelist_t** %freelist.addr, align 8, !dbg !5294, !tbaa !981
  %entries3 = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %11, i32 0, i32 0, !dbg !5295
  %12 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries3, align 8, !dbg !5295, !tbaa !1044
  %arrayidx4 = getelementptr %struct.freelistentry_t, %struct.freelistentry_t* %12, i64 %idxprom2, !dbg !5294
  %destructor5 = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %arrayidx4, i32 0, i32 1, !dbg !5296
  store i32 (%struct._object*, i8*)* %9, i32 (%struct._object*, i8*)** %destructor5, align 8, !dbg !5297, !tbaa !2363
  %13 = bitcast i32* %index to i8*, !dbg !5298
  call void @llvm.lifetime.end(i64 4, i8* %13) #2, !dbg !5298
  ret i32 0, !dbg !5299
}

; Function Attrs: nounwind uwtable
define internal i32 @cleanup_buffer(%struct._object* %self, i8* %ptr) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %buf = alloca %struct.bufferinfo*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !902, metadata !985), !dbg !5300
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !903, metadata !985), !dbg !5301
  %0 = bitcast %struct.bufferinfo** %buf to i8*, !dbg !5302
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !5302
  call void @llvm.dbg.declare(metadata %struct.bufferinfo** %buf, metadata !904, metadata !985), !dbg !5303
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !5304, !tbaa !981
  %2 = bitcast i8* %1 to %struct.bufferinfo*, !dbg !5305
  store %struct.bufferinfo* %2, %struct.bufferinfo** %buf, align 8, !dbg !5303, !tbaa !981
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %buf, align 8, !dbg !5306, !tbaa !981
  %tobool = icmp ne %struct.bufferinfo* %3, null, !dbg !5306
  br i1 %tobool, label %if.then, label %if.end, !dbg !5308

if.then:                                          ; preds = %entry
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %buf, align 8, !dbg !5309, !tbaa !981
  call void @PyBuffer_Release(%struct.bufferinfo* %4), !dbg !5311
  br label %if.end, !dbg !5312

if.end:                                           ; preds = %if.then, %entry
  %5 = bitcast %struct.bufferinfo** %buf to i8*, !dbg !5313
  call void @llvm.lifetime.end(i64 8, i8* %5) #2, !dbg !5313
  ret i32 0, !dbg !5314
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !909, metadata !985), !dbg !5315
  store i8** %p, i8*** %p.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8*** %p.addr, metadata !910, metadata !985), !dbg !5316
  store i8** %errmsg, i8*** %errmsg.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8*** %errmsg.addr, metadata !911, metadata !985), !dbg !5317
  %0 = bitcast %struct.PyBufferProcs** %pb to i8*, !dbg !5318
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !5318
  call void @llvm.dbg.declare(metadata %struct.PyBufferProcs** %pb, metadata !912, metadata !985), !dbg !5319
  %1 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !5320, !tbaa !981
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1, !dbg !5321
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5321, !tbaa !1259
  %tp_as_buffer = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 18, !dbg !5322
  %3 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer, align 8, !dbg !5322, !tbaa !5323
  store %struct.PyBufferProcs* %3, %struct.PyBufferProcs** %pb, align 8, !dbg !5319, !tbaa !981
  %4 = bitcast i64* %count to i8*, !dbg !5324
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !5324
  call void @llvm.dbg.declare(metadata i64* %count, metadata !913, metadata !985), !dbg !5325
  %5 = bitcast %struct.bufferinfo* %view to i8*, !dbg !5326
  call void @llvm.lifetime.start(i64 80, i8* %5) #2, !dbg !5326
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %view, metadata !914, metadata !985), !dbg !5327
  %6 = load i8**, i8*** %errmsg.addr, align 8, !dbg !5328, !tbaa !981
  store i8* null, i8** %6, align 8, !dbg !5329, !tbaa !981
  %7 = load i8**, i8*** %p.addr, align 8, !dbg !5330, !tbaa !981
  store i8* null, i8** %7, align 8, !dbg !5331, !tbaa !981
  %8 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %pb, align 8, !dbg !5332, !tbaa !981
  %cmp = icmp ne %struct.PyBufferProcs* %8, null, !dbg !5334
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5335

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %pb, align 8, !dbg !5336, !tbaa !981
  %bf_releasebuffer = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %9, i32 0, i32 1, !dbg !5338
  %10 = load void (%struct._object*, %struct.bufferinfo*)*, void (%struct._object*, %struct.bufferinfo*)** %bf_releasebuffer, align 8, !dbg !5338, !tbaa !2363
  %cmp1 = icmp ne void (%struct._object*, %struct.bufferinfo*)* %10, null, !dbg !5339
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5340

if.then:                                          ; preds = %land.lhs.true
  %11 = load i8**, i8*** %errmsg.addr, align 8, !dbg !5341, !tbaa !981
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.68, i32 0, i32 0), i8** %11, align 8, !dbg !5343, !tbaa !981
  store i64 -1, i64* %retval, !dbg !5344
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5344

if.end:                                           ; preds = %land.lhs.true, %entry
  %12 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !5345, !tbaa !981
  %13 = load i8**, i8*** %errmsg.addr, align 8, !dbg !5347, !tbaa !981
  %call = call i32 @getbuffer(%struct._object* %12, %struct.bufferinfo* %view, i8** %13), !dbg !5348
  %cmp2 = icmp slt i32 %call, 0, !dbg !5349
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !5350

if.then.3:                                        ; preds = %if.end
  store i64 -1, i64* %retval, !dbg !5351
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5351

if.end.4:                                         ; preds = %if.end
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 2, !dbg !5352
  %14 = load i64, i64* %len, align 8, !dbg !5352, !tbaa !5353
  store i64 %14, i64* %count, align 8, !dbg !5355, !tbaa !1279
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 0, !dbg !5356
  %15 = load i8*, i8** %buf, align 8, !dbg !5356, !tbaa !5357
  %16 = load i8**, i8*** %p.addr, align 8, !dbg !5358, !tbaa !981
  store i8* %15, i8** %16, align 8, !dbg !5359, !tbaa !981
  call void @PyBuffer_Release(%struct.bufferinfo* %view), !dbg !5360
  %17 = load i64, i64* %count, align 8, !dbg !5361, !tbaa !1279
  store i64 %17, i64* %retval, !dbg !5362
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5362

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %18 = bitcast %struct.bufferinfo* %view to i8*, !dbg !5363
  call void @llvm.lifetime.end(i64 80, i8* %18) #2, !dbg !5363
  %19 = bitcast i64* %count to i8*, !dbg !5363
  call void @llvm.lifetime.end(i64 8, i8* %19) #2, !dbg !5363
  %20 = bitcast %struct.PyBufferProcs** %pb to i8*, !dbg !5363
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !5363
  %21 = load i64, i64* %retval, !dbg !5363
  ret i64 %21, !dbg !5363
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

declare i32 @PyBuffer_FillInfo(%struct.bufferinfo*, %struct._object*, i8*, i64, i32, i32) #3

declare i8* @PyUnicode_AsUTF8AndSize(%struct._object*, i64*) #3

declare i32* @PyUnicode_AsUnicodeAndSize(%struct._object*, i64*) #3

declare i64 @Py_UNICODE_strlen(i32*) #3

declare i8* @PyUnicode_GetDefaultEncoding() #3

declare i32 @PyObject_AsCharBuffer(%struct._object*, i8**, i64*) #3

declare %struct._object* @PyUnicode_FromObject(%struct._object*) #3

declare %struct._object* @PyUnicode_AsEncodedString(%struct._object*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @cleanup_ptr(%struct._object* %self, i8* %ptr) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !917, metadata !985), !dbg !5364
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !918, metadata !985), !dbg !5365
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5366, !tbaa !981
  %tobool = icmp ne i8* %0, null, !dbg !5366
  br i1 %tobool, label %if.then, label %if.end, !dbg !5368

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !5369, !tbaa !981
  call void @PyMem_Free(i8* %1), !dbg !5371
  br label %if.end, !dbg !5372

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !5373
}

declare i32 @PyObject_GetBuffer(%struct._object*, %struct.bufferinfo*, i32) #3

declare i32 @PyBuffer_IsContiguous(%struct.bufferinfo*, i8 signext) #3

declare void @PyBuffer_Release(%struct.bufferinfo*) #3

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #5

declare %struct._object* @PyDict_GetItemString(%struct._object*, i8*) #3

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
  %cleanup.dest.slot = alloca i32
  store i8** %p_format, i8*** %p_format.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata i8*** %p_format.addr, metadata !970, metadata !985), !dbg !5374
  store [1 x %struct.__va_list_tag]* %p_va, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !tbaa !981
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]** %p_va.addr, metadata !971, metadata !985), !dbg !5375
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !998
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !972, metadata !985), !dbg !5376
  %0 = bitcast i8** %format to i8*, !dbg !5377
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !5377
  call void @llvm.dbg.declare(metadata i8** %format, metadata !973, metadata !985), !dbg !5378
  %1 = load i8**, i8*** %p_format.addr, align 8, !dbg !5379, !tbaa !981
  %2 = load i8*, i8** %1, align 8, !dbg !5380, !tbaa !981
  store i8* %2, i8** %format, align 8, !dbg !5378, !tbaa !981
  call void @llvm.lifetime.start(i64 1, i8* %c) #2, !dbg !5381
  call void @llvm.dbg.declare(metadata i8* %c, metadata !974, metadata !985), !dbg !5382
  %3 = load i8*, i8** %format, align 8, !dbg !5383, !tbaa !981
  %incdec.ptr = getelementptr i8, i8* %3, i32 1, !dbg !5383
  store i8* %incdec.ptr, i8** %format, align 8, !dbg !5383, !tbaa !981
  %4 = load i8, i8* %3, align 1, !dbg !5384, !tbaa !1064
  store i8 %4, i8* %c, align 1, !dbg !5382, !tbaa !1064
  %5 = load i8, i8* %c, align 1, !dbg !5385, !tbaa !1064
  %conv = sext i8 %5 to i32, !dbg !5385
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
  ], !dbg !5386

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %6 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !5387, !tbaa !981
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !5389
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay, i32 0, i32 0, !dbg !5390
  %gp_offset = load i32, i32* %gp_offset_p, !dbg !5390
  %fits_in_gp = icmp ule i32 %gp_offset, 40, !dbg !5390
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !5390

vaarg.in_reg:                                     ; preds = %sw.bb
  %7 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay, i32 0, i32 3, !dbg !5391
  %reg_save_area = load i8*, i8** %7, !dbg !5391
  %8 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset, !dbg !5391
  %9 = bitcast i8* %8 to i8**, !dbg !5391
  %10 = add i32 %gp_offset, 8, !dbg !5391
  store i32 %10, i32* %gp_offset_p, !dbg !5391
  br label %vaarg.end, !dbg !5391

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay, i32 0, i32 2, !dbg !5393
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, !dbg !5393
  %11 = bitcast i8* %overflow_arg_area to i8**, !dbg !5393
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8, !dbg !5393
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, !dbg !5393
  br label %vaarg.end, !dbg !5393

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %9, %vaarg.in_reg ], [ %11, %vaarg.in_mem ], !dbg !5390
  %12 = load i8*, i8** %vaarg.addr, !dbg !5395
  br label %sw.epilog, !dbg !5398

sw.bb.1:                                          ; preds = %entry
  %13 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !5399, !tbaa !981
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %13, i32 0, i32 0, !dbg !5401
  %gp_offset_p3 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 0, !dbg !5402
  %gp_offset4 = load i32, i32* %gp_offset_p3, !dbg !5402
  %fits_in_gp5 = icmp ule i32 %gp_offset4, 40, !dbg !5402
  br i1 %fits_in_gp5, label %vaarg.in_reg.6, label %vaarg.in_mem.8, !dbg !5402

vaarg.in_reg.6:                                   ; preds = %sw.bb.1
  %14 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3, !dbg !5403
  %reg_save_area7 = load i8*, i8** %14, !dbg !5403
  %15 = getelementptr i8, i8* %reg_save_area7, i32 %gp_offset4, !dbg !5403
  %16 = bitcast i8* %15 to i8**, !dbg !5403
  %17 = add i32 %gp_offset4, 8, !dbg !5403
  store i32 %17, i32* %gp_offset_p3, !dbg !5403
  br label %vaarg.end.12, !dbg !5403

vaarg.in_mem.8:                                   ; preds = %sw.bb.1
  %overflow_arg_area_p9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2, !dbg !5405
  %overflow_arg_area10 = load i8*, i8** %overflow_arg_area_p9, !dbg !5405
  %18 = bitcast i8* %overflow_arg_area10 to i8**, !dbg !5405
  %overflow_arg_area.next11 = getelementptr i8, i8* %overflow_arg_area10, i32 8, !dbg !5405
  store i8* %overflow_arg_area.next11, i8** %overflow_arg_area_p9, !dbg !5405
  br label %vaarg.end.12, !dbg !5405

vaarg.end.12:                                     ; preds = %vaarg.in_mem.8, %vaarg.in_reg.6
  %vaarg.addr13 = phi i8** [ %16, %vaarg.in_reg.6 ], [ %18, %vaarg.in_mem.8 ], !dbg !5402
  %19 = load i8*, i8** %vaarg.addr13, !dbg !5407
  %20 = load i8*, i8** %format, align 8, !dbg !5410, !tbaa !981
  %21 = load i8, i8* %20, align 1, !dbg !5412, !tbaa !1064
  %conv14 = sext i8 %21 to i32, !dbg !5412
  %cmp = icmp eq i32 %conv14, 115, !dbg !5413
  br i1 %cmp, label %if.end, label %lor.lhs.false, !dbg !5414

lor.lhs.false:                                    ; preds = %vaarg.end.12
  %22 = load i8*, i8** %format, align 8, !dbg !5415, !tbaa !981
  %23 = load i8, i8* %22, align 1, !dbg !5417, !tbaa !1064
  %conv16 = sext i8 %23 to i32, !dbg !5417
  %cmp17 = icmp eq i32 %conv16, 116, !dbg !5418
  br i1 %cmp17, label %if.end, label %if.then, !dbg !5419

if.then:                                          ; preds = %lor.lhs.false
  br label %err, !dbg !5420

if.end:                                           ; preds = %lor.lhs.false, %vaarg.end.12
  %24 = load i8*, i8** %format, align 8, !dbg !5421, !tbaa !981
  %incdec.ptr19 = getelementptr i8, i8* %24, i32 1, !dbg !5421
  store i8* %incdec.ptr19, i8** %format, align 8, !dbg !5421, !tbaa !981
  br label %sw.bb.20, !dbg !5422

sw.bb.20:                                         ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %if.end
  %25 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !5423, !tbaa !981
  %arraydecay21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %25, i32 0, i32 0, !dbg !5425
  %gp_offset_p22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay21, i32 0, i32 0, !dbg !5426
  %gp_offset23 = load i32, i32* %gp_offset_p22, !dbg !5426
  %fits_in_gp24 = icmp ule i32 %gp_offset23, 40, !dbg !5426
  br i1 %fits_in_gp24, label %vaarg.in_reg.25, label %vaarg.in_mem.27, !dbg !5426

vaarg.in_reg.25:                                  ; preds = %sw.bb.20
  %26 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay21, i32 0, i32 3, !dbg !5427
  %reg_save_area26 = load i8*, i8** %26, !dbg !5427
  %27 = getelementptr i8, i8* %reg_save_area26, i32 %gp_offset23, !dbg !5427
  %28 = bitcast i8* %27 to i8***, !dbg !5427
  %29 = add i32 %gp_offset23, 8, !dbg !5427
  store i32 %29, i32* %gp_offset_p22, !dbg !5427
  br label %vaarg.end.31, !dbg !5427

vaarg.in_mem.27:                                  ; preds = %sw.bb.20
  %overflow_arg_area_p28 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay21, i32 0, i32 2, !dbg !5429
  %overflow_arg_area29 = load i8*, i8** %overflow_arg_area_p28, !dbg !5429
  %30 = bitcast i8* %overflow_arg_area29 to i8***, !dbg !5429
  %overflow_arg_area.next30 = getelementptr i8, i8* %overflow_arg_area29, i32 8, !dbg !5429
  store i8* %overflow_arg_area.next30, i8** %overflow_arg_area_p28, !dbg !5429
  br label %vaarg.end.31, !dbg !5429

vaarg.end.31:                                     ; preds = %vaarg.in_mem.27, %vaarg.in_reg.25
  %vaarg.addr32 = phi i8*** [ %28, %vaarg.in_reg.25 ], [ %30, %vaarg.in_mem.27 ], !dbg !5426
  %31 = load i8**, i8*** %vaarg.addr32, !dbg !5431
  %32 = load i8*, i8** %format, align 8, !dbg !5434, !tbaa !981
  %33 = load i8, i8* %32, align 1, !dbg !5436, !tbaa !1064
  %conv33 = sext i8 %33 to i32, !dbg !5436
  %cmp34 = icmp eq i32 %conv33, 35, !dbg !5437
  br i1 %cmp34, label %if.then.36, label %if.else.64, !dbg !5438

if.then.36:                                       ; preds = %vaarg.end.31
  %34 = load i32, i32* %flags.addr, align 4, !dbg !5439, !tbaa !998
  %and = and i32 %34, 2, !dbg !5442
  %tobool = icmp ne i32 %and, 0, !dbg !5442
  br i1 %tobool, label %if.then.37, label %if.else, !dbg !5443

if.then.37:                                       ; preds = %if.then.36
  %35 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !5444, !tbaa !981
  %arraydecay38 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %35, i32 0, i32 0, !dbg !5445
  %gp_offset_p39 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay38, i32 0, i32 0, !dbg !5446
  %gp_offset40 = load i32, i32* %gp_offset_p39, !dbg !5446
  %fits_in_gp41 = icmp ule i32 %gp_offset40, 40, !dbg !5446
  br i1 %fits_in_gp41, label %vaarg.in_reg.42, label %vaarg.in_mem.44, !dbg !5446

vaarg.in_reg.42:                                  ; preds = %if.then.37
  %36 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay38, i32 0, i32 3, !dbg !5447
  %reg_save_area43 = load i8*, i8** %36, !dbg !5447
  %37 = getelementptr i8, i8* %reg_save_area43, i32 %gp_offset40, !dbg !5447
  %38 = bitcast i8* %37 to i64**, !dbg !5447
  %39 = add i32 %gp_offset40, 8, !dbg !5447
  store i32 %39, i32* %gp_offset_p39, !dbg !5447
  br label %vaarg.end.48, !dbg !5447

vaarg.in_mem.44:                                  ; preds = %if.then.37
  %overflow_arg_area_p45 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay38, i32 0, i32 2, !dbg !5449
  %overflow_arg_area46 = load i8*, i8** %overflow_arg_area_p45, !dbg !5449
  %40 = bitcast i8* %overflow_arg_area46 to i64**, !dbg !5449
  %overflow_arg_area.next47 = getelementptr i8, i8* %overflow_arg_area46, i32 8, !dbg !5449
  store i8* %overflow_arg_area.next47, i8** %overflow_arg_area_p45, !dbg !5449
  br label %vaarg.end.48, !dbg !5449

vaarg.end.48:                                     ; preds = %vaarg.in_mem.44, %vaarg.in_reg.42
  %vaarg.addr49 = phi i64** [ %38, %vaarg.in_reg.42 ], [ %40, %vaarg.in_mem.44 ], !dbg !5446
  %41 = load i64*, i64** %vaarg.addr49, !dbg !5451
  br label %if.end.62, !dbg !5454

if.else:                                          ; preds = %if.then.36
  %42 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !5455, !tbaa !981
  %arraydecay50 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %42, i32 0, i32 0, !dbg !5456
  %gp_offset_p51 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay50, i32 0, i32 0, !dbg !5457
  %gp_offset52 = load i32, i32* %gp_offset_p51, !dbg !5457
  %fits_in_gp53 = icmp ule i32 %gp_offset52, 40, !dbg !5457
  br i1 %fits_in_gp53, label %vaarg.in_reg.54, label %vaarg.in_mem.56, !dbg !5457

vaarg.in_reg.54:                                  ; preds = %if.else
  %43 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay50, i32 0, i32 3, !dbg !5458
  %reg_save_area55 = load i8*, i8** %43, !dbg !5458
  %44 = getelementptr i8, i8* %reg_save_area55, i32 %gp_offset52, !dbg !5458
  %45 = bitcast i8* %44 to i32**, !dbg !5458
  %46 = add i32 %gp_offset52, 8, !dbg !5458
  store i32 %46, i32* %gp_offset_p51, !dbg !5458
  br label %vaarg.end.60, !dbg !5458

vaarg.in_mem.56:                                  ; preds = %if.else
  %overflow_arg_area_p57 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay50, i32 0, i32 2, !dbg !5459
  %overflow_arg_area58 = load i8*, i8** %overflow_arg_area_p57, !dbg !5459
  %47 = bitcast i8* %overflow_arg_area58 to i32**, !dbg !5459
  %overflow_arg_area.next59 = getelementptr i8, i8* %overflow_arg_area58, i32 8, !dbg !5459
  store i8* %overflow_arg_area.next59, i8** %overflow_arg_area_p57, !dbg !5459
  br label %vaarg.end.60, !dbg !5459

vaarg.end.60:                                     ; preds = %vaarg.in_mem.56, %vaarg.in_reg.54
  %vaarg.addr61 = phi i32** [ %45, %vaarg.in_reg.54 ], [ %47, %vaarg.in_mem.56 ], !dbg !5457
  %48 = load i32*, i32** %vaarg.addr61, !dbg !5460
  br label %if.end.62

if.end.62:                                        ; preds = %vaarg.end.60, %vaarg.end.48
  %49 = load i8*, i8** %format, align 8, !dbg !5461, !tbaa !981
  %incdec.ptr63 = getelementptr i8, i8* %49, i32 1, !dbg !5461
  store i8* %incdec.ptr63, i8** %format, align 8, !dbg !5461, !tbaa !981
  br label %if.end.82, !dbg !5462

if.else.64:                                       ; preds = %vaarg.end.31
  %50 = load i8, i8* %c, align 1, !dbg !5463, !tbaa !1064
  %conv65 = sext i8 %50 to i32, !dbg !5463
  %cmp66 = icmp eq i32 %conv65, 115, !dbg !5465
  br i1 %cmp66, label %land.lhs.true, label %lor.lhs.false.68, !dbg !5466

lor.lhs.false.68:                                 ; preds = %if.else.64
  %51 = load i8, i8* %c, align 1, !dbg !5467, !tbaa !1064
  %conv69 = sext i8 %51 to i32, !dbg !5467
  %cmp70 = icmp eq i32 %conv69, 122, !dbg !5469
  br i1 %cmp70, label %land.lhs.true, label %lor.lhs.false.72, !dbg !5470

lor.lhs.false.72:                                 ; preds = %lor.lhs.false.68
  %52 = load i8, i8* %c, align 1, !dbg !5471, !tbaa !1064
  %conv73 = sext i8 %52 to i32, !dbg !5471
  %cmp74 = icmp eq i32 %conv73, 121, !dbg !5473
  br i1 %cmp74, label %land.lhs.true, label %if.end.81, !dbg !5474

land.lhs.true:                                    ; preds = %lor.lhs.false.72, %lor.lhs.false.68, %if.else.64
  %53 = load i8*, i8** %format, align 8, !dbg !5475, !tbaa !981
  %54 = load i8, i8* %53, align 1, !dbg !5479, !tbaa !1064
  %conv76 = sext i8 %54 to i32, !dbg !5479
  %cmp77 = icmp eq i32 %conv76, 42, !dbg !5480
  br i1 %cmp77, label %if.then.79, label %if.end.81, !dbg !5481

if.then.79:                                       ; preds = %land.lhs.true
  %55 = load i8*, i8** %format, align 8, !dbg !5482, !tbaa !981
  %incdec.ptr80 = getelementptr i8, i8* %55, i32 1, !dbg !5482
  store i8* %incdec.ptr80, i8** %format, align 8, !dbg !5482, !tbaa !981
  br label %if.end.81, !dbg !5484

if.end.81:                                        ; preds = %if.then.79, %land.lhs.true, %lor.lhs.false.72
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end.62
  br label %sw.epilog, !dbg !5485

sw.bb.83:                                         ; preds = %entry
  %56 = load i8*, i8** %format, align 8, !dbg !5486, !tbaa !981
  %57 = load i8, i8* %56, align 1, !dbg !5489, !tbaa !1064
  %conv84 = sext i8 %57 to i32, !dbg !5489
  %cmp85 = icmp eq i32 %conv84, 33, !dbg !5490
  br i1 %cmp85, label %if.then.87, label %if.else.113, !dbg !5491

if.then.87:                                       ; preds = %sw.bb.83
  %58 = load i8*, i8** %format, align 8, !dbg !5492, !tbaa !981
  %incdec.ptr88 = getelementptr i8, i8* %58, i32 1, !dbg !5492
  store i8* %incdec.ptr88, i8** %format, align 8, !dbg !5492, !tbaa !981
  %59 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !5494, !tbaa !981
  %arraydecay89 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %59, i32 0, i32 0, !dbg !5495
  %gp_offset_p90 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay89, i32 0, i32 0, !dbg !5496
  %gp_offset91 = load i32, i32* %gp_offset_p90, !dbg !5496
  %fits_in_gp92 = icmp ule i32 %gp_offset91, 40, !dbg !5496
  br i1 %fits_in_gp92, label %vaarg.in_reg.93, label %vaarg.in_mem.95, !dbg !5496

vaarg.in_reg.93:                                  ; preds = %if.then.87
  %60 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay89, i32 0, i32 3, !dbg !5497
  %reg_save_area94 = load i8*, i8** %60, !dbg !5497
  %61 = getelementptr i8, i8* %reg_save_area94, i32 %gp_offset91, !dbg !5497
  %62 = bitcast i8* %61 to %struct._typeobject**, !dbg !5497
  %63 = add i32 %gp_offset91, 8, !dbg !5497
  store i32 %63, i32* %gp_offset_p90, !dbg !5497
  br label %vaarg.end.99, !dbg !5497

vaarg.in_mem.95:                                  ; preds = %if.then.87
  %overflow_arg_area_p96 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay89, i32 0, i32 2, !dbg !5499
  %overflow_arg_area97 = load i8*, i8** %overflow_arg_area_p96, !dbg !5499
  %64 = bitcast i8* %overflow_arg_area97 to %struct._typeobject**, !dbg !5499
  %overflow_arg_area.next98 = getelementptr i8, i8* %overflow_arg_area97, i32 8, !dbg !5499
  store i8* %overflow_arg_area.next98, i8** %overflow_arg_area_p96, !dbg !5499
  br label %vaarg.end.99, !dbg !5499

vaarg.end.99:                                     ; preds = %vaarg.in_mem.95, %vaarg.in_reg.93
  %vaarg.addr100 = phi %struct._typeobject** [ %62, %vaarg.in_reg.93 ], [ %64, %vaarg.in_mem.95 ], !dbg !5496
  %65 = load %struct._typeobject*, %struct._typeobject** %vaarg.addr100, !dbg !5501
  %66 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !5504, !tbaa !981
  %arraydecay101 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %66, i32 0, i32 0, !dbg !5505
  %gp_offset_p102 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay101, i32 0, i32 0, !dbg !5506
  %gp_offset103 = load i32, i32* %gp_offset_p102, !dbg !5506
  %fits_in_gp104 = icmp ule i32 %gp_offset103, 40, !dbg !5506
  br i1 %fits_in_gp104, label %vaarg.in_reg.105, label %vaarg.in_mem.107, !dbg !5506

vaarg.in_reg.105:                                 ; preds = %vaarg.end.99
  %67 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay101, i32 0, i32 3, !dbg !5507
  %reg_save_area106 = load i8*, i8** %67, !dbg !5507
  %68 = getelementptr i8, i8* %reg_save_area106, i32 %gp_offset103, !dbg !5507
  %69 = bitcast i8* %68 to %struct._object***, !dbg !5507
  %70 = add i32 %gp_offset103, 8, !dbg !5507
  store i32 %70, i32* %gp_offset_p102, !dbg !5507
  br label %vaarg.end.111, !dbg !5507

vaarg.in_mem.107:                                 ; preds = %vaarg.end.99
  %overflow_arg_area_p108 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay101, i32 0, i32 2, !dbg !5508
  %overflow_arg_area109 = load i8*, i8** %overflow_arg_area_p108, !dbg !5508
  %71 = bitcast i8* %overflow_arg_area109 to %struct._object***, !dbg !5508
  %overflow_arg_area.next110 = getelementptr i8, i8* %overflow_arg_area109, i32 8, !dbg !5508
  store i8* %overflow_arg_area.next110, i8** %overflow_arg_area_p108, !dbg !5508
  br label %vaarg.end.111, !dbg !5508

vaarg.end.111:                                    ; preds = %vaarg.in_mem.107, %vaarg.in_reg.105
  %vaarg.addr112 = phi %struct._object*** [ %69, %vaarg.in_reg.105 ], [ %71, %vaarg.in_mem.107 ], !dbg !5506
  %72 = load %struct._object**, %struct._object*** %vaarg.addr112, !dbg !5509
  br label %if.end.157, !dbg !5510

if.else.113:                                      ; preds = %sw.bb.83
  %73 = load i8*, i8** %format, align 8, !dbg !5511, !tbaa !981
  %74 = load i8, i8* %73, align 1, !dbg !5513, !tbaa !1064
  %conv114 = sext i8 %74 to i32, !dbg !5513
  %cmp115 = icmp eq i32 %conv114, 38, !dbg !5514
  br i1 %cmp115, label %if.then.117, label %if.else.143, !dbg !5515

if.then.117:                                      ; preds = %if.else.113
  %75 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !5516, !tbaa !981
  %arraydecay118 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %75, i32 0, i32 0, !dbg !5518
  %gp_offset_p119 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay118, i32 0, i32 0, !dbg !5519
  %gp_offset120 = load i32, i32* %gp_offset_p119, !dbg !5519
  %fits_in_gp121 = icmp ule i32 %gp_offset120, 40, !dbg !5519
  br i1 %fits_in_gp121, label %vaarg.in_reg.122, label %vaarg.in_mem.124, !dbg !5519

vaarg.in_reg.122:                                 ; preds = %if.then.117
  %76 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay118, i32 0, i32 3, !dbg !5520
  %reg_save_area123 = load i8*, i8** %76, !dbg !5520
  %77 = getelementptr i8, i8* %reg_save_area123, i32 %gp_offset120, !dbg !5520
  %78 = bitcast i8* %77 to i32 (%struct._object*, i8*)**, !dbg !5520
  %79 = add i32 %gp_offset120, 8, !dbg !5520
  store i32 %79, i32* %gp_offset_p119, !dbg !5520
  br label %vaarg.end.128, !dbg !5520

vaarg.in_mem.124:                                 ; preds = %if.then.117
  %overflow_arg_area_p125 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay118, i32 0, i32 2, !dbg !5522
  %overflow_arg_area126 = load i8*, i8** %overflow_arg_area_p125, !dbg !5522
  %80 = bitcast i8* %overflow_arg_area126 to i32 (%struct._object*, i8*)**, !dbg !5522
  %overflow_arg_area.next127 = getelementptr i8, i8* %overflow_arg_area126, i32 8, !dbg !5522
  store i8* %overflow_arg_area.next127, i8** %overflow_arg_area_p125, !dbg !5522
  br label %vaarg.end.128, !dbg !5522

vaarg.end.128:                                    ; preds = %vaarg.in_mem.124, %vaarg.in_reg.122
  %vaarg.addr129 = phi i32 (%struct._object*, i8*)** [ %78, %vaarg.in_reg.122 ], [ %80, %vaarg.in_mem.124 ], !dbg !5519
  %81 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %vaarg.addr129, !dbg !5524
  %82 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !5527, !tbaa !981
  %arraydecay130 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %82, i32 0, i32 0, !dbg !5528
  %gp_offset_p131 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay130, i32 0, i32 0, !dbg !5529
  %gp_offset132 = load i32, i32* %gp_offset_p131, !dbg !5529
  %fits_in_gp133 = icmp ule i32 %gp_offset132, 40, !dbg !5529
  br i1 %fits_in_gp133, label %vaarg.in_reg.134, label %vaarg.in_mem.136, !dbg !5529

vaarg.in_reg.134:                                 ; preds = %vaarg.end.128
  %83 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay130, i32 0, i32 3, !dbg !5530
  %reg_save_area135 = load i8*, i8** %83, !dbg !5530
  %84 = getelementptr i8, i8* %reg_save_area135, i32 %gp_offset132, !dbg !5530
  %85 = bitcast i8* %84 to i8**, !dbg !5530
  %86 = add i32 %gp_offset132, 8, !dbg !5530
  store i32 %86, i32* %gp_offset_p131, !dbg !5530
  br label %vaarg.end.140, !dbg !5530

vaarg.in_mem.136:                                 ; preds = %vaarg.end.128
  %overflow_arg_area_p137 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay130, i32 0, i32 2, !dbg !5531
  %overflow_arg_area138 = load i8*, i8** %overflow_arg_area_p137, !dbg !5531
  %87 = bitcast i8* %overflow_arg_area138 to i8**, !dbg !5531
  %overflow_arg_area.next139 = getelementptr i8, i8* %overflow_arg_area138, i32 8, !dbg !5531
  store i8* %overflow_arg_area.next139, i8** %overflow_arg_area_p137, !dbg !5531
  br label %vaarg.end.140, !dbg !5531

vaarg.end.140:                                    ; preds = %vaarg.in_mem.136, %vaarg.in_reg.134
  %vaarg.addr141 = phi i8** [ %85, %vaarg.in_reg.134 ], [ %87, %vaarg.in_mem.136 ], !dbg !5529
  %88 = load i8*, i8** %vaarg.addr141, !dbg !5532
  %89 = load i8*, i8** %format, align 8, !dbg !5533, !tbaa !981
  %incdec.ptr142 = getelementptr i8, i8* %89, i32 1, !dbg !5533
  store i8* %incdec.ptr142, i8** %format, align 8, !dbg !5533, !tbaa !981
  br label %if.end.156, !dbg !5534

if.else.143:                                      ; preds = %if.else.113
  %90 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !5535, !tbaa !981
  %arraydecay144 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %90, i32 0, i32 0, !dbg !5537
  %gp_offset_p145 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay144, i32 0, i32 0, !dbg !5538
  %gp_offset146 = load i32, i32* %gp_offset_p145, !dbg !5538
  %fits_in_gp147 = icmp ule i32 %gp_offset146, 40, !dbg !5538
  br i1 %fits_in_gp147, label %vaarg.in_reg.148, label %vaarg.in_mem.150, !dbg !5538

vaarg.in_reg.148:                                 ; preds = %if.else.143
  %91 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay144, i32 0, i32 3, !dbg !5539
  %reg_save_area149 = load i8*, i8** %91, !dbg !5539
  %92 = getelementptr i8, i8* %reg_save_area149, i32 %gp_offset146, !dbg !5539
  %93 = bitcast i8* %92 to %struct._object***, !dbg !5539
  %94 = add i32 %gp_offset146, 8, !dbg !5539
  store i32 %94, i32* %gp_offset_p145, !dbg !5539
  br label %vaarg.end.154, !dbg !5539

vaarg.in_mem.150:                                 ; preds = %if.else.143
  %overflow_arg_area_p151 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay144, i32 0, i32 2, !dbg !5541
  %overflow_arg_area152 = load i8*, i8** %overflow_arg_area_p151, !dbg !5541
  %95 = bitcast i8* %overflow_arg_area152 to %struct._object***, !dbg !5541
  %overflow_arg_area.next153 = getelementptr i8, i8* %overflow_arg_area152, i32 8, !dbg !5541
  store i8* %overflow_arg_area.next153, i8** %overflow_arg_area_p151, !dbg !5541
  br label %vaarg.end.154, !dbg !5541

vaarg.end.154:                                    ; preds = %vaarg.in_mem.150, %vaarg.in_reg.148
  %vaarg.addr155 = phi %struct._object*** [ %93, %vaarg.in_reg.148 ], [ %95, %vaarg.in_mem.150 ], !dbg !5538
  %96 = load %struct._object**, %struct._object*** %vaarg.addr155, !dbg !5543
  br label %if.end.156

if.end.156:                                       ; preds = %vaarg.end.154, %vaarg.end.140
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156, %vaarg.end.111
  br label %sw.epilog, !dbg !5546

sw.bb.158:                                        ; preds = %entry
  %97 = bitcast i8** %msg to i8*, !dbg !5547
  call void @llvm.lifetime.start(i64 8, i8* %97) #2, !dbg !5547
  call void @llvm.dbg.declare(metadata i8** %msg, metadata !975, metadata !985), !dbg !5548
  br label %for.cond, !dbg !5549

for.cond:                                         ; preds = %if.end.179, %sw.bb.158
  %98 = load i8*, i8** %format, align 8, !dbg !5550, !tbaa !981
  %99 = load i8, i8* %98, align 1, !dbg !5555, !tbaa !1064
  %conv159 = sext i8 %99 to i32, !dbg !5555
  %cmp160 = icmp eq i32 %conv159, 41, !dbg !5556
  br i1 %cmp160, label %if.then.162, label %if.end.163, !dbg !5557

if.then.162:                                      ; preds = %for.cond
  br label %for.end, !dbg !5558

if.end.163:                                       ; preds = %for.cond
  %100 = load i8*, i8** %format, align 8, !dbg !5559, !tbaa !981
  %101 = load i8, i8* %100, align 1, !dbg !5561, !tbaa !1064
  %conv164 = sext i8 %101 to i32, !dbg !5561
  %cmp165 = icmp eq i32 %conv164, 0, !dbg !5562
  br i1 %cmp165, label %if.then.175, label %lor.lhs.false.167, !dbg !5563

lor.lhs.false.167:                                ; preds = %if.end.163
  %102 = load i8*, i8** %format, align 8, !dbg !5564, !tbaa !981
  %103 = load i8, i8* %102, align 1, !dbg !5566, !tbaa !1064
  %conv168 = sext i8 %103 to i32, !dbg !5566
  %cmp169 = icmp eq i32 %conv168, 59, !dbg !5567
  br i1 %cmp169, label %if.then.175, label %lor.lhs.false.171, !dbg !5568

lor.lhs.false.171:                                ; preds = %lor.lhs.false.167
  %104 = load i8*, i8** %format, align 8, !dbg !5569, !tbaa !981
  %105 = load i8, i8* %104, align 1, !dbg !5571, !tbaa !1064
  %conv172 = sext i8 %105 to i32, !dbg !5571
  %cmp173 = icmp eq i32 %conv172, 58, !dbg !5572
  br i1 %cmp173, label %if.then.175, label %if.end.176, !dbg !5573

if.then.175:                                      ; preds = %lor.lhs.false.171, %lor.lhs.false.167, %if.end.163
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.86, i32 0, i32 0), i8** %retval, !dbg !5574
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5574

if.end.176:                                       ; preds = %lor.lhs.false.171
  %106 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !5575, !tbaa !981
  %107 = load i32, i32* %flags.addr, align 4, !dbg !5576, !tbaa !998
  %call = call i8* @skipitem(i8** %format, [1 x %struct.__va_list_tag]* %106, i32 %107), !dbg !5577
  store i8* %call, i8** %msg, align 8, !dbg !5578, !tbaa !981
  %108 = load i8*, i8** %msg, align 8, !dbg !5579, !tbaa !981
  %tobool177 = icmp ne i8* %108, null, !dbg !5579
  br i1 %tobool177, label %if.then.178, label %if.end.179, !dbg !5581

if.then.178:                                      ; preds = %if.end.176
  %109 = load i8*, i8** %msg, align 8, !dbg !5582, !tbaa !981
  store i8* %109, i8** %retval, !dbg !5583
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5583

if.end.179:                                       ; preds = %if.end.176
  br label %for.cond, !dbg !5584

for.end:                                          ; preds = %if.then.162
  %110 = load i8*, i8** %format, align 8, !dbg !5585, !tbaa !981
  %incdec.ptr180 = getelementptr i8, i8* %110, i32 1, !dbg !5585
  store i8* %incdec.ptr180, i8** %format, align 8, !dbg !5585, !tbaa !981
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5586

cleanup:                                          ; preds = %for.end, %if.then.178, %if.then.175
  %111 = bitcast i8** %msg to i8*, !dbg !5587
  call void @llvm.lifetime.end(i64 8, i8* %111) #2, !dbg !5587
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.182 [
    i32 2, label %sw.epilog
  ]

sw.bb.181:                                        ; preds = %entry
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.87, i32 0, i32 0), i8** %retval, !dbg !5588
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.182, !dbg !5588

sw.default:                                       ; preds = %entry
  br label %err, !dbg !5588

err:                                              ; preds = %sw.default, %if.then
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i32 0, i32 0), i8** %retval, !dbg !5589
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.182, !dbg !5589

sw.epilog:                                        ; preds = %cleanup, %if.end.157, %if.end.82, %vaarg.end
  %112 = load i8*, i8** %format, align 8, !dbg !5590, !tbaa !981
  %113 = load i8**, i8*** %p_format.addr, align 8, !dbg !5591, !tbaa !981
  store i8* %112, i8** %113, align 8, !dbg !5592, !tbaa !981
  store i8* null, i8** %retval, !dbg !5593
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.182, !dbg !5593

cleanup.182:                                      ; preds = %sw.epilog, %err, %sw.bb.181, %cleanup
  call void @llvm.lifetime.end(i64 1, i8* %c) #2, !dbg !5594
  %114 = bitcast i8** %format to i8*, !dbg !5594
  call void @llvm.lifetime.end(i64 8, i8* %114) #2, !dbg !5594
  %115 = load i8*, i8** %retval, !dbg !5594
  ret i8* %115, !dbg !5594
}

declare i32 @PyDict_Next(%struct._object*, i64*, %struct._object**, %struct._object**) #3

declare i32 @PyUnicode_CompareWithASCIIString(%struct._object*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!978, !979}
!llvm.ident = !{!980}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !10, subprograms: !441)
!1 = !DIFile(filename: "getargs.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "PyUnicode_Kind", file: !4, line: 451, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/unicodeobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "PyUnicode_WCHAR_KIND", value: 0)
!7 = !DIEnumerator(name: "PyUnicode_1BYTE_KIND", value: 1)
!8 = !DIEnumerator(name: "PyUnicode_2BYTE_KIND", value: 2)
!9 = !DIEnumerator(name: "PyUnicode_4BYTE_KIND", value: 4)
!10 = !{!11, !12, !350, !351, !359, !101, !18, !360, !24, !368, !84, !348, !369, !370, !371, !379, !389, !407, !415, !432, !433, !435, !437, !439, !242, !51, !36, !440, !59}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !14, line: 109, baseType: !15)
!14 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!15 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !14, line: 105, size: 128, align: 64, elements: !16)
!16 = !{!17, !25}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !15, file: !14, line: 107, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !19, line: 177, baseType: !20)
!19 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !21, line: 102, baseType: !22)
!21 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !23, line: 181, baseType: !24)
!23 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!24 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !15, file: !14, line: 108, baseType: !26, size: 64, align: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !14, line: 334, size: 3200, align: 64, elements: !28)
!28 = !{!29, !35, !39, !40, !41, !46, !109, !114, !119, !120, !125, !177, !208, !220, !226, !227, !228, !230, !232, !263, !264, !265, !274, !275, !280, !281, !283, !285, !295, !298, !316, !317, !318, !320, !322, !323, !325, !330, !335, !340, !341, !342, !343, !344, !345, !346, !347, !349}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !27, file: !14, line: 335, baseType: !30, size: 192, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !14, line: 114, baseType: !31)
!31 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 111, size: 192, align: 64, elements: !32)
!32 = !{!33, !34}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !31, file: !14, line: 112, baseType: !13, size: 128, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !31, file: !14, line: 113, baseType: !18, size: 64, align: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !27, file: !14, line: 336, baseType: !36, size: 64, align: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !27, file: !14, line: 337, baseType: !18, size: 64, align: 64, offset: 256)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !27, file: !14, line: 337, baseType: !18, size: 64, align: 64, offset: 320)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !27, file: !14, line: 341, baseType: !42, size: 64, align: 64, offset: 384)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !14, line: 308, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !12}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !27, file: !14, line: 342, baseType: !47, size: 64, align: 64, offset: 448)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !14, line: 314, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!51, !12, !52, !51}
!51 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !21, line: 48, baseType: !54)
!54 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !55, line: 246, size: 1728, align: 64, elements: !56)
!55 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!56 = !{!57, !58, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !78, !79, !80, !81, !83, !85, !87, !91, !94, !96, !97, !98, !99, !100, !104, !105}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !54, file: !55, line: 247, baseType: !51, size: 32, align: 32)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !54, file: !55, line: 252, baseType: !59, size: 64, align: 64, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !54, file: !55, line: 253, baseType: !59, size: 64, align: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !54, file: !55, line: 254, baseType: !59, size: 64, align: 64, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !54, file: !55, line: 255, baseType: !59, size: 64, align: 64, offset: 256)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !54, file: !55, line: 256, baseType: !59, size: 64, align: 64, offset: 320)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !54, file: !55, line: 257, baseType: !59, size: 64, align: 64, offset: 384)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !54, file: !55, line: 258, baseType: !59, size: 64, align: 64, offset: 448)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !54, file: !55, line: 259, baseType: !59, size: 64, align: 64, offset: 512)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !54, file: !55, line: 261, baseType: !59, size: 64, align: 64, offset: 576)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !54, file: !55, line: 262, baseType: !59, size: 64, align: 64, offset: 640)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !54, file: !55, line: 263, baseType: !59, size: 64, align: 64, offset: 704)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !54, file: !55, line: 265, baseType: !71, size: 64, align: 64, offset: 768)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !55, line: 161, size: 192, align: 64, elements: !73)
!73 = !{!74, !75, !77}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !72, file: !55, line: 162, baseType: !71, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !72, file: !55, line: 163, baseType: !76, size: 64, align: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !72, file: !55, line: 167, baseType: !51, size: 32, align: 32, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !54, file: !55, line: 267, baseType: !76, size: 64, align: 64, offset: 832)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !54, file: !55, line: 269, baseType: !51, size: 32, align: 32, offset: 896)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !54, file: !55, line: 273, baseType: !51, size: 32, align: 32, offset: 928)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !54, file: !55, line: 275, baseType: !82, size: 64, align: 64, offset: 960)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !23, line: 140, baseType: !24)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !54, file: !55, line: 279, baseType: !84, size: 16, align: 16, offset: 1024)
!84 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !54, file: !55, line: 280, baseType: !86, size: 8, align: 8, offset: 1040)
!86 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !54, file: !55, line: 281, baseType: !88, size: 8, align: 8, offset: 1048)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 8, align: 8, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 1)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !54, file: !55, line: 285, baseType: !92, size: 64, align: 64, offset: 1088)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !55, line: 155, baseType: null)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !54, file: !55, line: 294, baseType: !95, size: 64, align: 64, offset: 1152)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !23, line: 141, baseType: !24)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !54, file: !55, line: 303, baseType: !11, size: 64, align: 64, offset: 1216)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !54, file: !55, line: 304, baseType: !11, size: 64, align: 64, offset: 1280)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !54, file: !55, line: 305, baseType: !11, size: 64, align: 64, offset: 1344)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !54, file: !55, line: 306, baseType: !11, size: 64, align: 64, offset: 1408)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !54, file: !55, line: 307, baseType: !101, size: 64, align: 64, offset: 1472)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !102, line: 62, baseType: !103)
!102 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!103 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !54, file: !55, line: 309, baseType: !51, size: 32, align: 32, offset: 1536)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !54, file: !55, line: 311, baseType: !106, size: 160, align: 8, offset: 1568)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 160, align: 8, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 20)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !27, file: !14, line: 343, baseType: !110, size: 64, align: 64, offset: 512)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !14, line: 316, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!12, !12, !59}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !27, file: !14, line: 344, baseType: !115, size: 64, align: 64, offset: 576)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !14, line: 318, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!51, !12, !59, !12}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !27, file: !14, line: 345, baseType: !11, size: 64, align: 64, offset: 640)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !27, file: !14, line: 346, baseType: !121, size: 64, align: 64, offset: 704)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !14, line: 320, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!12, !12}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !27, file: !14, line: 350, baseType: !126, size: 64, align: 64, offset: 768)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !14, line: 278, baseType: !128)
!128 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 236, size: 2176, align: 64, elements: !129)
!129 = !{!130, !135, !136, !137, !138, !139, !144, !146, !147, !148, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !128, file: !14, line: 241, baseType: !131, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !14, line: 166, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!12, !12, !12}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !128, file: !14, line: 242, baseType: !131, size: 64, align: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !128, file: !14, line: 243, baseType: !131, size: 64, align: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !128, file: !14, line: 244, baseType: !131, size: 64, align: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !128, file: !14, line: 245, baseType: !131, size: 64, align: 64, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !128, file: !14, line: 246, baseType: !140, size: 64, align: 64, offset: 320)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !14, line: 167, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!12, !12, !12, !12}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !128, file: !14, line: 247, baseType: !145, size: 64, align: 64, offset: 384)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !14, line: 165, baseType: !122)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !128, file: !14, line: 248, baseType: !145, size: 64, align: 64, offset: 448)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !128, file: !14, line: 249, baseType: !145, size: 64, align: 64, offset: 512)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !128, file: !14, line: 250, baseType: !149, size: 64, align: 64, offset: 576)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !14, line: 168, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!51, !12}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !128, file: !14, line: 251, baseType: !145, size: 64, align: 64, offset: 640)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !128, file: !14, line: 252, baseType: !131, size: 64, align: 64, offset: 704)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !128, file: !14, line: 253, baseType: !131, size: 64, align: 64, offset: 768)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !128, file: !14, line: 254, baseType: !131, size: 64, align: 64, offset: 832)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !128, file: !14, line: 255, baseType: !131, size: 64, align: 64, offset: 896)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !128, file: !14, line: 256, baseType: !131, size: 64, align: 64, offset: 960)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !128, file: !14, line: 257, baseType: !145, size: 64, align: 64, offset: 1024)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !128, file: !14, line: 258, baseType: !11, size: 64, align: 64, offset: 1088)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !128, file: !14, line: 259, baseType: !145, size: 64, align: 64, offset: 1152)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !128, file: !14, line: 261, baseType: !131, size: 64, align: 64, offset: 1216)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !128, file: !14, line: 262, baseType: !131, size: 64, align: 64, offset: 1280)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !128, file: !14, line: 263, baseType: !131, size: 64, align: 64, offset: 1344)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !128, file: !14, line: 264, baseType: !131, size: 64, align: 64, offset: 1408)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !128, file: !14, line: 265, baseType: !140, size: 64, align: 64, offset: 1472)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !128, file: !14, line: 266, baseType: !131, size: 64, align: 64, offset: 1536)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !128, file: !14, line: 267, baseType: !131, size: 64, align: 64, offset: 1600)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !128, file: !14, line: 268, baseType: !131, size: 64, align: 64, offset: 1664)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !128, file: !14, line: 269, baseType: !131, size: 64, align: 64, offset: 1728)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !128, file: !14, line: 270, baseType: !131, size: 64, align: 64, offset: 1792)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !128, file: !14, line: 272, baseType: !131, size: 64, align: 64, offset: 1856)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !128, file: !14, line: 273, baseType: !131, size: 64, align: 64, offset: 1920)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !128, file: !14, line: 274, baseType: !131, size: 64, align: 64, offset: 1984)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !128, file: !14, line: 275, baseType: !131, size: 64, align: 64, offset: 2048)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !128, file: !14, line: 277, baseType: !145, size: 64, align: 64, offset: 2112)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !27, file: !14, line: 351, baseType: !178, size: 64, align: 64, offset: 832)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !14, line: 292, baseType: !180)
!180 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 280, size: 640, align: 64, elements: !181)
!181 = !{!182, !187, !188, !193, !194, !195, !200, !201, !206, !207}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !180, file: !14, line: 281, baseType: !183, size: 64, align: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !14, line: 169, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!18, !12}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !180, file: !14, line: 282, baseType: !131, size: 64, align: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !180, file: !14, line: 283, baseType: !189, size: 64, align: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !14, line: 170, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!12, !12, !18}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !180, file: !14, line: 284, baseType: !189, size: 64, align: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !180, file: !14, line: 285, baseType: !11, size: 64, align: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !180, file: !14, line: 286, baseType: !196, size: 64, align: 64, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !14, line: 172, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!51, !12, !18, !12}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !180, file: !14, line: 287, baseType: !11, size: 64, align: 64, offset: 384)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !180, file: !14, line: 288, baseType: !202, size: 64, align: 64, offset: 448)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !14, line: 231, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!51, !12, !12}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !180, file: !14, line: 290, baseType: !131, size: 64, align: 64, offset: 512)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !180, file: !14, line: 291, baseType: !189, size: 64, align: 64, offset: 576)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !27, file: !14, line: 352, baseType: !209, size: 64, align: 64, offset: 896)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !14, line: 298, baseType: !211)
!211 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 294, size: 192, align: 64, elements: !212)
!212 = !{!213, !214, !215}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !211, file: !14, line: 295, baseType: !183, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !211, file: !14, line: 296, baseType: !131, size: 64, align: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !211, file: !14, line: 297, baseType: !216, size: 64, align: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !14, line: 174, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!51, !12, !12, !12}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !27, file: !14, line: 356, baseType: !221, size: 64, align: 64, offset: 960)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !14, line: 321, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!225, !12}
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !19, line: 186, baseType: !18)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !27, file: !14, line: 357, baseType: !140, size: 64, align: 64, offset: 1024)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !27, file: !14, line: 358, baseType: !121, size: 64, align: 64, offset: 1088)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !27, file: !14, line: 359, baseType: !229, size: 64, align: 64, offset: 1152)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !14, line: 317, baseType: !132)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !27, file: !14, line: 360, baseType: !231, size: 64, align: 64, offset: 1216)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !14, line: 319, baseType: !217)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !27, file: !14, line: 363, baseType: !233, size: 64, align: 64, offset: 1280)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !14, line: 304, baseType: !235)
!235 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 301, size: 128, align: 64, elements: !236)
!236 = !{!237, !258}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !235, file: !14, line: 302, baseType: !238, size: 64, align: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !14, line: 193, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!51, !12, !242, !51}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !14, line: 191, baseType: !244)
!244 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !14, line: 178, size: 640, align: 64, elements: !245)
!245 = !{!246, !247, !248, !249, !250, !251, !252, !253, !255, !256, !257}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !244, file: !14, line: 179, baseType: !11, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !244, file: !14, line: 180, baseType: !12, size: 64, align: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !244, file: !14, line: 181, baseType: !18, size: 64, align: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !244, file: !14, line: 182, baseType: !18, size: 64, align: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !244, file: !14, line: 184, baseType: !51, size: 32, align: 32, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !244, file: !14, line: 185, baseType: !51, size: 32, align: 32, offset: 288)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !244, file: !14, line: 186, baseType: !59, size: 64, align: 64, offset: 320)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !244, file: !14, line: 187, baseType: !254, size: 64, align: 64, offset: 384)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !244, file: !14, line: 188, baseType: !254, size: 64, align: 64, offset: 448)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !244, file: !14, line: 189, baseType: !254, size: 64, align: 64, offset: 512)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !244, file: !14, line: 190, baseType: !11, size: 64, align: 64, offset: 576)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !235, file: !14, line: 303, baseType: !259, size: 64, align: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !14, line: 194, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !12, !242}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !27, file: !14, line: 366, baseType: !103, size: 64, align: 64, offset: 1344)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !27, file: !14, line: 368, baseType: !36, size: 64, align: 64, offset: 1408)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !27, file: !14, line: 372, baseType: !266, size: 64, align: 64, offset: 1472)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !14, line: 233, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!51, !12, !270, !11}
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !14, line: 232, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!51, !12, !11}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !27, file: !14, line: 375, baseType: !149, size: 64, align: 64, offset: 1536)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !27, file: !14, line: 379, baseType: !276, size: 64, align: 64, offset: 1600)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !14, line: 322, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64, align: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!12, !12, !12, !51}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !27, file: !14, line: 382, baseType: !18, size: 64, align: 64, offset: 1664)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !27, file: !14, line: 385, baseType: !282, size: 64, align: 64, offset: 1728)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !14, line: 323, baseType: !122)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !27, file: !14, line: 386, baseType: !284, size: 64, align: 64, offset: 1792)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !14, line: 324, baseType: !122)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !27, file: !14, line: 389, baseType: !286, size: 64, align: 64, offset: 1856)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64)
!287 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !288, line: 40, size: 256, align: 64, elements: !289)
!288 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!289 = !{!290, !291, !293, !294}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !287, file: !288, line: 41, baseType: !36, size: 64, align: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !287, file: !288, line: 42, baseType: !292, size: 64, align: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !288, line: 18, baseType: !132)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !287, file: !288, line: 43, baseType: !51, size: 32, align: 32, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !287, file: !288, line: 45, baseType: !36, size: 64, align: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !27, file: !14, line: 390, baseType: !296, size: 64, align: 64, offset: 1920)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, align: 64)
!297 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !14, line: 390, flags: DIFlagFwdDecl)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !27, file: !14, line: 391, baseType: !299, size: 64, align: 64, offset: 1984)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !301, line: 11, size: 320, align: 64, elements: !302)
!301 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!302 = !{!303, !304, !309, !314, !315}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !300, file: !301, line: 12, baseType: !59, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !300, file: !301, line: 13, baseType: !305, size: 64, align: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !301, line: 8, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!12, !12, !11}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !300, file: !301, line: 14, baseType: !310, size: 64, align: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !301, line: 9, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!51, !12, !12, !11}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !300, file: !301, line: 15, baseType: !59, size: 64, align: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !300, file: !301, line: 16, baseType: !11, size: 64, align: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !27, file: !14, line: 392, baseType: !26, size: 64, align: 64, offset: 2048)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !27, file: !14, line: 393, baseType: !12, size: 64, align: 64, offset: 2112)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !27, file: !14, line: 394, baseType: !319, size: 64, align: 64, offset: 2176)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !14, line: 325, baseType: !141)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !27, file: !14, line: 395, baseType: !321, size: 64, align: 64, offset: 2240)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !14, line: 326, baseType: !217)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !27, file: !14, line: 396, baseType: !18, size: 64, align: 64, offset: 2304)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !27, file: !14, line: 397, baseType: !324, size: 64, align: 64, offset: 2368)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !14, line: 327, baseType: !217)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !27, file: !14, line: 398, baseType: !326, size: 64, align: 64, offset: 2432)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !14, line: 329, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!12, !26, !18}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !27, file: !14, line: 399, baseType: !331, size: 64, align: 64, offset: 2496)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !14, line: 328, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!12, !26, !12, !12}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !27, file: !14, line: 400, baseType: !336, size: 64, align: 64, offset: 2560)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !14, line: 307, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !11}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !27, file: !14, line: 401, baseType: !149, size: 64, align: 64, offset: 2624)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !27, file: !14, line: 402, baseType: !12, size: 64, align: 64, offset: 2688)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !27, file: !14, line: 403, baseType: !12, size: 64, align: 64, offset: 2752)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !27, file: !14, line: 404, baseType: !12, size: 64, align: 64, offset: 2816)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !27, file: !14, line: 405, baseType: !12, size: 64, align: 64, offset: 2880)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !27, file: !14, line: 406, baseType: !12, size: 64, align: 64, offset: 2944)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !27, file: !14, line: 407, baseType: !42, size: 64, align: 64, offset: 3008)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !27, file: !14, line: 410, baseType: !348, size: 32, align: 32, offset: 3072)
!348 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !27, file: !14, line: 412, baseType: !42, size: 64, align: 64, offset: 3136)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !353, line: 33, baseType: !354)
!353 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!354 = !DICompositeType(tag: DW_TAG_structure_type, file: !353, line: 25, size: 256, align: 64, elements: !355)
!355 = !{!356, !357}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !354, file: !353, line: 26, baseType: !30, size: 192, align: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !354, file: !353, line: 27, baseType: !358, size: 64, align: 64, offset: 192)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 64, align: 64, elements: !89)
!359 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "freelistentry_t", file: !362, line: 46, baseType: !363)
!362 = !DIFile(filename: "Python/getargs.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!363 = !DICompositeType(tag: DW_TAG_structure_type, file: !362, line: 43, size: 128, align: 64, elements: !364)
!364 = !{!365, !366}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !363, file: !362, line: 44, baseType: !11, size: 64, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "destructor", scope: !363, file: !362, line: 45, baseType: !367, size: 64, align: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "destr_t", file: !362, line: 36, baseType: !271)
!368 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!369 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!370 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBytesObject", file: !373, line: 41, baseType: !374)
!373 = !DIFile(filename: "Include/bytesobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!374 = !DICompositeType(tag: DW_TAG_structure_type, file: !373, line: 31, size: 320, align: 64, elements: !375)
!375 = !{!376, !377, !378}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !374, file: !373, line: 32, baseType: !30, size: 192, align: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "ob_shash", scope: !374, file: !373, line: 33, baseType: !225, size: 64, align: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "ob_sval", scope: !374, file: !373, line: 34, baseType: !88, size: 8, align: 8, offset: 256)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64, align: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyByteArrayObject", file: !381, line: 30, baseType: !382)
!381 = !DIFile(filename: "Include/bytearrayobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!382 = !DICompositeType(tag: DW_TAG_structure_type, file: !381, line: 23, size: 448, align: 64, elements: !383)
!383 = !{!384, !385, !386, !387, !388}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !382, file: !381, line: 24, baseType: !30, size: 192, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ob_alloc", scope: !382, file: !381, line: 25, baseType: !18, size: 64, align: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ob_bytes", scope: !382, file: !381, line: 26, baseType: !59, size: 64, align: 64, offset: 256)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "ob_start", scope: !382, file: !381, line: 27, baseType: !59, size: 64, align: 64, offset: 320)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ob_exports", scope: !382, file: !381, line: 29, baseType: !51, size: 32, align: 32, offset: 384)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64, align: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyASCIIObject", file: !4, line: 351, baseType: !391)
!391 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 217, size: 384, align: 64, elements: !392)
!392 = !{!393, !394, !395, !396, !404}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !391, file: !4, line: 291, baseType: !13, size: 128, align: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !391, file: !4, line: 292, baseType: !18, size: 64, align: 64, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !391, file: !4, line: 293, baseType: !225, size: 64, align: 64, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !391, file: !4, line: 349, baseType: !397, size: 32, align: 32, offset: 256)
!397 = !DICompositeType(tag: DW_TAG_structure_type, scope: !391, file: !4, line: 294, size: 32, align: 32, elements: !398)
!398 = !{!399, !400, !401, !402, !403}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "interned", scope: !397, file: !4, line: 303, baseType: !348, size: 2, align: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !397, file: !4, line: 331, baseType: !348, size: 3, align: 32, offset: 2)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "compact", scope: !397, file: !4, line: 336, baseType: !348, size: 1, align: 32, offset: 5)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !397, file: !4, line: 340, baseType: !348, size: 1, align: 32, offset: 6)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !397, file: !4, line: 345, baseType: !348, size: 1, align: 32, offset: 7)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "wstr", scope: !391, file: !4, line: 350, baseType: !405, size: 64, align: 64, offset: 320)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64, align: 64)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !102, line: 90, baseType: !51)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64, align: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCompactUnicodeObject", file: !4, line: 363, baseType: !409)
!409 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 356, size: 576, align: 64, elements: !410)
!410 = !{!411, !412, !413, !414}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !409, file: !4, line: 357, baseType: !390, size: 384, align: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_length", scope: !409, file: !4, line: 358, baseType: !18, size: 64, align: 64, offset: 384)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !409, file: !4, line: 360, baseType: !59, size: 64, align: 64, offset: 448)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "wstr_length", scope: !409, file: !4, line: 361, baseType: !18, size: 64, align: 64, offset: 512)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64, align: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyUnicodeObject", file: !4, line: 376, baseType: !417)
!417 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 368, size: 640, align: 64, elements: !418)
!418 = !{!419, !420}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !417, file: !4, line: 369, baseType: !408, size: 576, align: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !417, file: !4, line: 375, baseType: !421, size: 64, align: 64, offset: 576)
!421 = !DICompositeType(tag: DW_TAG_union_type, scope: !417, file: !4, line: 370, size: 64, align: 64, elements: !422)
!422 = !{!423, !424, !427, !430}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "any", scope: !421, file: !4, line: 371, baseType: !11, size: 64, align: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "latin1", scope: !421, file: !4, line: 372, baseType: !425, size: 64, align: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64, align: 64)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS1", file: !4, line: 134, baseType: !359)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "ucs2", scope: !421, file: !4, line: 373, baseType: !428, size: 64, align: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64, align: 64)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS2", file: !4, line: 129, baseType: !84)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "ucs4", scope: !421, file: !4, line: 374, baseType: !431, size: 64, align: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64, align: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS4", file: !4, line: 121, baseType: !348)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64, align: 64)
!434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64, align: 64)
!436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64, align: 64)
!438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!441 = !{!442, !462, !470, !476, !482, !491, !499, !509, !517, !528, !537, !540, !553, !559, !563, !604, !612, !628, !660, !874, !877, !885, !892, !900, !905, !915, !919, !934, !966}
!442 = !DISubprogram(name: "PyArg_Parse", scope: !362, file: !362, line: 73, type: !443, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*, ...)* @PyArg_Parse, variables: !445)
!443 = !DISubroutineType(types: !444)
!444 = !{!51, !12, !36, null}
!445 = !{!446, !447, !448, !449}
!446 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 1, scope: !442, file: !362, line: 73, type: !12)
!447 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 2, scope: !442, file: !362, line: 73, type: !36)
!448 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !442, file: !362, line: 75, type: !51)
!449 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "va", scope: !442, file: !362, line: 76, type: !450)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !21, line: 79, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !452, line: 50, baseType: !453)
!452 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stdarg.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 76, baseType: !454)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 192, align: 64, elements: !89)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__va_list_tag", file: !1, line: 76, baseType: !456)
!456 = !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 76, size: 192, align: 64, elements: !457)
!457 = !{!458, !459, !460, !461}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !456, file: !1, line: 76, baseType: !348, size: 32, align: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !456, file: !1, line: 76, baseType: !348, size: 32, align: 32, offset: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !456, file: !1, line: 76, baseType: !11, size: 64, align: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !456, file: !1, line: 76, baseType: !11, size: 64, align: 64, offset: 128)
!462 = !DISubprogram(name: "_PyArg_Parse_SizeT", scope: !362, file: !362, line: 85, type: !463, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*, ...)* @_PyArg_Parse_SizeT, variables: !465)
!463 = !DISubroutineType(types: !464)
!464 = !{!51, !12, !59, null}
!465 = !{!466, !467, !468, !469}
!466 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 1, scope: !462, file: !362, line: 85, type: !12)
!467 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 2, scope: !462, file: !362, line: 85, type: !59)
!468 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !462, file: !362, line: 87, type: !51)
!469 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "va", scope: !462, file: !362, line: 88, type: !450)
!470 = !DISubprogram(name: "PyArg_ParseTuple", scope: !362, file: !362, line: 98, type: !443, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*, ...)* @PyArg_ParseTuple, variables: !471)
!471 = !{!472, !473, !474, !475}
!472 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 1, scope: !470, file: !362, line: 98, type: !12)
!473 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 2, scope: !470, file: !362, line: 98, type: !36)
!474 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !470, file: !362, line: 100, type: !51)
!475 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "va", scope: !470, file: !362, line: 101, type: !450)
!476 = !DISubprogram(name: "_PyArg_ParseTuple_SizeT", scope: !362, file: !362, line: 110, type: !463, isLocal: false, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*, ...)* @_PyArg_ParseTuple_SizeT, variables: !477)
!477 = !{!478, !479, !480, !481}
!478 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 1, scope: !476, file: !362, line: 110, type: !12)
!479 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 2, scope: !476, file: !362, line: 110, type: !59)
!480 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !476, file: !362, line: 112, type: !51)
!481 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "va", scope: !476, file: !362, line: 113, type: !450)
!482 = !DISubprogram(name: "PyArg_VaParse", scope: !362, file: !362, line: 123, type: !483, isLocal: false, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*, %struct.__va_list_tag*)* @PyArg_VaParse, variables: !486)
!483 = !DISubroutineType(types: !484)
!484 = !{!51, !12, !36, !485}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64, align: 64)
!486 = !{!487, !488, !489, !490}
!487 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 1, scope: !482, file: !362, line: 123, type: !12)
!488 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 2, scope: !482, file: !362, line: 123, type: !36)
!489 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "va", arg: 3, scope: !482, file: !362, line: 123, type: !485)
!490 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lva", scope: !482, file: !362, line: 125, type: !450)
!491 = !DISubprogram(name: "_PyArg_VaParse_SizeT", scope: !362, file: !362, line: 133, type: !492, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*, %struct.__va_list_tag*)* @_PyArg_VaParse_SizeT, variables: !494)
!492 = !DISubroutineType(types: !493)
!493 = !{!51, !12, !59, !485}
!494 = !{!495, !496, !497, !498}
!495 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 1, scope: !491, file: !362, line: 133, type: !12)
!496 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 2, scope: !491, file: !362, line: 133, type: !59)
!497 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "va", arg: 3, scope: !491, file: !362, line: 133, type: !485)
!498 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lva", scope: !491, file: !362, line: 135, type: !450)
!499 = !DISubprogram(name: "PyArg_ParseTupleAndKeywords", scope: !362, file: !362, line: 1318, type: !500, isLocal: false, isDefinition: true, scopeLine: 1322, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*, i8*, i8**, ...)* @PyArg_ParseTupleAndKeywords, variables: !502)
!500 = !DISubroutineType(types: !501)
!501 = !{!51, !12, !12, !36, !440, null}
!502 = !{!503, !504, !505, !506, !507, !508}
!503 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 1, scope: !499, file: !362, line: 1318, type: !12)
!504 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "keywords", arg: 2, scope: !499, file: !362, line: 1319, type: !12)
!505 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 3, scope: !499, file: !362, line: 1320, type: !36)
!506 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwlist", arg: 4, scope: !499, file: !362, line: 1321, type: !440)
!507 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !499, file: !362, line: 1323, type: !51)
!508 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "va", scope: !499, file: !362, line: 1324, type: !450)
!509 = !DISubprogram(name: "_PyArg_ParseTupleAndKeywords_SizeT", scope: !362, file: !362, line: 1342, type: !500, isLocal: false, isDefinition: true, scopeLine: 1346, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*, i8*, i8**, ...)* @_PyArg_ParseTupleAndKeywords_SizeT, variables: !510)
!510 = !{!511, !512, !513, !514, !515, !516}
!511 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 1, scope: !509, file: !362, line: 1342, type: !12)
!512 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "keywords", arg: 2, scope: !509, file: !362, line: 1343, type: !12)
!513 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 3, scope: !509, file: !362, line: 1344, type: !36)
!514 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwlist", arg: 4, scope: !509, file: !362, line: 1345, type: !440)
!515 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !509, file: !362, line: 1347, type: !51)
!516 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "va", scope: !509, file: !362, line: 1348, type: !450)
!517 = !DISubprogram(name: "PyArg_VaParseTupleAndKeywords", scope: !362, file: !362, line: 1368, type: !518, isLocal: false, isDefinition: true, scopeLine: 1372, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*, i8*, i8**, %struct.__va_list_tag*)* @PyArg_VaParseTupleAndKeywords, variables: !520)
!518 = !DISubroutineType(types: !519)
!519 = !{!51, !12, !12, !36, !440, !485}
!520 = !{!521, !522, !523, !524, !525, !526, !527}
!521 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 1, scope: !517, file: !362, line: 1368, type: !12)
!522 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "keywords", arg: 2, scope: !517, file: !362, line: 1369, type: !12)
!523 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 3, scope: !517, file: !362, line: 1370, type: !36)
!524 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwlist", arg: 4, scope: !517, file: !362, line: 1371, type: !440)
!525 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "va", arg: 5, scope: !517, file: !362, line: 1371, type: !485)
!526 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !517, file: !362, line: 1373, type: !51)
!527 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lva", scope: !517, file: !362, line: 1374, type: !450)
!528 = !DISubprogram(name: "_PyArg_VaParseTupleAndKeywords_SizeT", scope: !362, file: !362, line: 1392, type: !518, isLocal: false, isDefinition: true, scopeLine: 1396, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*, i8*, i8**, %struct.__va_list_tag*)* @_PyArg_VaParseTupleAndKeywords_SizeT, variables: !529)
!529 = !{!530, !531, !532, !533, !534, !535, !536}
!530 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 1, scope: !528, file: !362, line: 1392, type: !12)
!531 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "keywords", arg: 2, scope: !528, file: !362, line: 1393, type: !12)
!532 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 3, scope: !528, file: !362, line: 1394, type: !36)
!533 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwlist", arg: 4, scope: !528, file: !362, line: 1395, type: !440)
!534 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "va", arg: 5, scope: !528, file: !362, line: 1395, type: !485)
!535 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !528, file: !362, line: 1397, type: !51)
!536 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lva", scope: !528, file: !362, line: 1398, type: !450)
!537 = !DISubprogram(name: "PyArg_ValidateKeywordArguments", scope: !362, file: !362, line: 1417, type: !151, isLocal: false, isDefinition: true, scopeLine: 1418, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @PyArg_ValidateKeywordArguments, variables: !538)
!538 = !{!539}
!539 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 1, scope: !537, file: !362, line: 1417, type: !12)
!540 = !DISubprogram(name: "PyArg_UnpackTuple", scope: !362, file: !362, line: 1754, type: !541, isLocal: false, isDefinition: true, scopeLine: 1755, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*, i64, i64, ...)* @PyArg_UnpackTuple, variables: !543)
!541 = !DISubroutineType(types: !542)
!542 = !{!51, !12, !36, !18, !18, null}
!543 = !{!544, !545, !546, !547, !548, !549, !550, !552}
!544 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 1, scope: !540, file: !362, line: 1754, type: !12)
!545 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !540, file: !362, line: 1754, type: !36)
!546 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "min", arg: 3, scope: !540, file: !362, line: 1754, type: !18)
!547 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "max", arg: 4, scope: !540, file: !362, line: 1754, type: !18)
!548 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !540, file: !362, line: 1756, type: !18)
!549 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !540, file: !362, line: 1756, type: !18)
!550 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "o", scope: !540, file: !362, line: 1757, type: !551)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!552 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vargs", scope: !540, file: !362, line: 1758, type: !450)
!553 = !DISubprogram(name: "_PyArg_NoKeywords", scope: !362, file: !362, line: 1820, type: !554, isLocal: false, isDefinition: true, scopeLine: 1821, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*)* @_PyArg_NoKeywords, variables: !556)
!554 = !DISubroutineType(types: !555)
!555 = !{!51, !36, !12}
!556 = !{!557, !558}
!557 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "funcname", arg: 1, scope: !553, file: !362, line: 1820, type: !36)
!558 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 2, scope: !553, file: !362, line: 1820, type: !12)
!559 = !DISubprogram(name: "_PyArg_NoPositional", scope: !362, file: !362, line: 1838, type: !554, isLocal: false, isDefinition: true, scopeLine: 1839, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*)* @_PyArg_NoPositional, variables: !560)
!560 = !{!561, !562}
!561 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "funcname", arg: 1, scope: !559, file: !362, line: 1838, type: !36)
!562 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !559, file: !362, line: 1838, type: !12)
!563 = !DISubprogram(name: "vgetargs1", scope: !362, file: !362, line: 199, type: !564, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*, [1 x %struct.__va_list_tag]*, i32)* @vgetargs1, variables: !567)
!564 = !DISubroutineType(types: !565)
!565 = !{!51, !12, !36, !566, !51}
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64, align: 64)
!567 = !{!568, !569, !570, !571, !572, !576, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !595, !602}
!568 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 1, scope: !563, file: !362, line: 199, type: !12)
!569 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 2, scope: !563, file: !362, line: 199, type: !36)
!570 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_va", arg: 3, scope: !563, file: !362, line: 199, type: !566)
!571 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 4, scope: !563, file: !362, line: 199, type: !51)
!572 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msgbuf", scope: !563, file: !362, line: 201, type: !573)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 2048, align: 8, elements: !574)
!574 = !{!575}
!575 = !DISubrange(count: 256)
!576 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "levels", scope: !563, file: !362, line: 202, type: !577)
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 1024, align: 32, elements: !578)
!578 = !{!579}
!579 = !DISubrange(count: 32)
!580 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fname", scope: !563, file: !362, line: 203, type: !36)
!581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "message", scope: !563, file: !362, line: 204, type: !36)
!582 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "min", scope: !563, file: !362, line: 205, type: !51)
!583 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "max", scope: !563, file: !362, line: 206, type: !51)
!584 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "level", scope: !563, file: !362, line: 207, type: !51)
!585 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "endfmt", scope: !563, file: !362, line: 208, type: !51)
!586 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "formatsave", scope: !563, file: !362, line: 209, type: !36)
!587 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !563, file: !362, line: 210, type: !18)
!588 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !563, file: !362, line: 210, type: !18)
!589 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msg", scope: !563, file: !362, line: 211, type: !59)
!590 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "compat", scope: !563, file: !362, line: 212, type: !51)
!591 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "static_entries", scope: !563, file: !362, line: 213, type: !592)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 1024, align: 64, elements: !593)
!593 = !{!594}
!594 = !DISubrange(count: 8)
!595 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "freelist", scope: !563, file: !362, line: 214, type: !596)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "freelist_t", file: !362, line: 52, baseType: !597)
!597 = !DICompositeType(tag: DW_TAG_structure_type, file: !362, line: 48, size: 128, align: 64, elements: !598)
!598 = !{!599, !600, !601}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !597, file: !362, line: 49, baseType: !360, size: 64, align: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "first_available", scope: !597, file: !362, line: 50, baseType: !51, size: 32, align: 32, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "entries_malloced", scope: !597, file: !362, line: 51, baseType: !51, size: 32, align: 32, offset: 96)
!602 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !603, file: !362, line: 224, type: !51)
!603 = distinct !DILexicalBlock(scope: !563, file: !362, line: 223, column: 25)
!604 = !DISubprogram(name: "cleanreturn", scope: !362, file: !362, line: 179, type: !605, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.freelist_t*)* @cleanreturn, variables: !608)
!605 = !DISubroutineType(types: !606)
!606 = !{!51, !51, !607}
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64, align: 64)
!608 = !{!609, !610, !611}
!609 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "retval", arg: 1, scope: !604, file: !362, line: 179, type: !51)
!610 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "freelist", arg: 2, scope: !604, file: !362, line: 179, type: !607)
!611 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !604, file: !362, line: 181, type: !51)
!612 = !DISubprogram(name: "convertitem", scope: !362, file: !362, line: 505, type: !613, isLocal: true, isDefinition: true, scopeLine: 507, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct._object*, i8**, [1 x %struct.__va_list_tag]*, i32, i32*, i8*, i64, %struct.freelist_t*)* @convertitem, variables: !617)
!613 = !DISubroutineType(types: !614)
!614 = !{!59, !12, !615, !566, !51, !616, !59, !101, !607}
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!617 = !{!618, !619, !620, !621, !622, !623, !624, !625, !626, !627}
!618 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 1, scope: !612, file: !362, line: 505, type: !12)
!619 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_format", arg: 2, scope: !612, file: !362, line: 505, type: !615)
!620 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_va", arg: 3, scope: !612, file: !362, line: 505, type: !566)
!621 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 4, scope: !612, file: !362, line: 505, type: !51)
!622 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "levels", arg: 5, scope: !612, file: !362, line: 506, type: !616)
!623 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msgbuf", arg: 6, scope: !612, file: !362, line: 506, type: !59)
!624 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bufsize", arg: 7, scope: !612, file: !362, line: 506, type: !101)
!625 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "freelist", arg: 8, scope: !612, file: !362, line: 506, type: !607)
!626 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msg", scope: !612, file: !362, line: 508, type: !59)
!627 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "format", scope: !612, file: !362, line: 509, type: !36)
!628 = !DISubprogram(name: "converttuple", scope: !362, file: !362, line: 420, type: !629, isLocal: true, isDefinition: true, scopeLine: 423, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct._object*, i8**, [1 x %struct.__va_list_tag]*, i32, i32*, i8*, i64, i32, %struct.freelist_t*)* @converttuple, variables: !631)
!629 = !DISubroutineType(types: !630)
!630 = !{!59, !12, !615, !566, !51, !616, !59, !101, !51, !607}
!631 = !{!632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !650, !654, !655, !657}
!632 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 1, scope: !628, file: !362, line: 420, type: !12)
!633 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_format", arg: 2, scope: !628, file: !362, line: 420, type: !615)
!634 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_va", arg: 3, scope: !628, file: !362, line: 420, type: !566)
!635 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 4, scope: !628, file: !362, line: 420, type: !51)
!636 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "levels", arg: 5, scope: !628, file: !362, line: 421, type: !616)
!637 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msgbuf", arg: 6, scope: !628, file: !362, line: 421, type: !59)
!638 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bufsize", arg: 7, scope: !628, file: !362, line: 421, type: !101)
!639 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "toplevel", arg: 8, scope: !628, file: !362, line: 421, type: !51)
!640 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "freelist", arg: 9, scope: !628, file: !362, line: 422, type: !607)
!641 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "level", scope: !628, file: !362, line: 424, type: !51)
!642 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !628, file: !362, line: 425, type: !51)
!643 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "format", scope: !628, file: !362, line: 426, type: !36)
!644 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !628, file: !362, line: 427, type: !51)
!645 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !628, file: !362, line: 428, type: !18)
!646 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !647, file: !362, line: 431, type: !51)
!647 = distinct !DILexicalBlock(scope: !648, file: !362, line: 430, column: 14)
!648 = distinct !DILexicalBlock(scope: !649, file: !362, line: 430, column: 5)
!649 = distinct !DILexicalBlock(scope: !628, file: !362, line: 430, column: 5)
!650 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msg", scope: !651, file: !362, line: 477, type: !59)
!651 = distinct !DILexicalBlock(scope: !652, file: !362, line: 476, column: 29)
!652 = distinct !DILexicalBlock(scope: !653, file: !362, line: 476, column: 5)
!653 = distinct !DILexicalBlock(scope: !628, file: !362, line: 476, column: 5)
!654 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !651, file: !362, line: 478, type: !12)
!655 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !656, file: !362, line: 490, type: !12)
!656 = distinct !DILexicalBlock(scope: !651, file: !362, line: 490, column: 12)
!657 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !658, file: !362, line: 490, type: !12)
!658 = distinct !DILexicalBlock(scope: !659, file: !362, line: 490, column: 100)
!659 = distinct !DILexicalBlock(scope: !656, file: !362, line: 490, column: 66)
!660 = !DISubprogram(name: "convertsimple", scope: !362, file: !362, line: 570, type: !661, isLocal: true, isDefinition: true, scopeLine: 572, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct._object*, i8**, [1 x %struct.__va_list_tag]*, i32, i8*, i64, %struct.freelist_t*)* @convertsimple, variables: !663)
!661 = !DISubroutineType(types: !662)
!662 = !{!59, !12, !615, !566, !51, !59, !101, !607}
!663 = !{!664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !677, !678, !680, !681, !684, !685, !688, !689, !691, !692, !695, !696, !698, !699, !700, !704, !707, !708, !711, !712, !715, !716, !720, !721, !724, !726, !729, !730, !739, !740, !742, !744, !745, !746, !748, !749, !751, !752, !753, !756, !757, !761, !765, !767, !770, !771, !772, !776, !778, !779, !781, !782, !787, !790, !791, !795, !800, !802, !803, !804, !805, !806, !807, !810, !812, !816, !819, !820, !824, !830, !834, !839, !844, !848, !852, !854, !856, !858, !860, !864, !865, !870, !871, !872}
!664 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 1, scope: !660, file: !362, line: 570, type: !12)
!665 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_format", arg: 2, scope: !660, file: !362, line: 570, type: !615)
!666 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_va", arg: 3, scope: !660, file: !362, line: 570, type: !566)
!667 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 4, scope: !660, file: !362, line: 570, type: !51)
!668 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msgbuf", arg: 5, scope: !660, file: !362, line: 571, type: !59)
!669 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bufsize", arg: 6, scope: !660, file: !362, line: 571, type: !101)
!670 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "freelist", arg: 7, scope: !660, file: !362, line: 571, type: !607)
!671 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "format", scope: !660, file: !362, line: 591, type: !36)
!672 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !660, file: !362, line: 592, type: !38)
!673 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sarg", scope: !660, file: !362, line: 593, type: !59)
!674 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !675, file: !362, line: 598, type: !59)
!675 = distinct !DILexicalBlock(scope: !676, file: !362, line: 597, column: 15)
!676 = distinct !DILexicalBlock(scope: !660, file: !362, line: 595, column: 16)
!677 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ival", scope: !675, file: !362, line: 599, type: !24)
!678 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !679, file: !362, line: 622, type: !59)
!679 = distinct !DILexicalBlock(scope: !676, file: !362, line: 620, column: 15)
!680 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ival", scope: !679, file: !362, line: 623, type: !24)
!681 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !682, file: !362, line: 635, type: !683)
!682 = distinct !DILexicalBlock(scope: !676, file: !362, line: 634, column: 15)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64, align: 64)
!684 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ival", scope: !682, file: !362, line: 636, type: !24)
!685 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !686, file: !362, line: 659, type: !687)
!686 = distinct !DILexicalBlock(scope: !676, file: !362, line: 657, column: 15)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!688 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ival", scope: !686, file: !362, line: 660, type: !24)
!689 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !690, file: !362, line: 672, type: !616)
!690 = distinct !DILexicalBlock(scope: !676, file: !362, line: 671, column: 15)
!691 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ival", scope: !690, file: !362, line: 673, type: !24)
!692 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !693, file: !362, line: 696, type: !694)
!693 = distinct !DILexicalBlock(scope: !676, file: !362, line: 694, column: 15)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!695 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ival", scope: !693, file: !362, line: 697, type: !348)
!696 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iobj", scope: !697, file: !362, line: 710, type: !12)
!697 = distinct !DILexicalBlock(scope: !676, file: !362, line: 709, column: 5)
!698 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !697, file: !362, line: 711, type: !254)
!699 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ival", scope: !697, file: !362, line: 712, type: !18)
!700 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !701, file: !362, line: 718, type: !12)
!701 = distinct !DILexicalBlock(scope: !702, file: !362, line: 718, column: 16)
!702 = distinct !DILexicalBlock(scope: !703, file: !362, line: 716, column: 33)
!703 = distinct !DILexicalBlock(scope: !697, file: !362, line: 716, column: 13)
!704 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !705, file: !362, line: 726, type: !706)
!705 = distinct !DILexicalBlock(scope: !676, file: !362, line: 725, column: 15)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!707 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ival", scope: !705, file: !362, line: 727, type: !24)
!708 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !709, file: !362, line: 739, type: !710)
!709 = distinct !DILexicalBlock(scope: !676, file: !362, line: 738, column: 15)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!711 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ival", scope: !709, file: !362, line: 740, type: !103)
!712 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !713, file: !362, line: 751, type: !714)
!713 = distinct !DILexicalBlock(scope: !676, file: !362, line: 750, column: 15)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!715 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ival", scope: !713, file: !362, line: 752, type: !369)
!716 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !717, file: !362, line: 764, type: !718)
!717 = distinct !DILexicalBlock(scope: !676, file: !362, line: 763, column: 15)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64, align: 64)
!719 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!720 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ival", scope: !717, file: !362, line: 765, type: !719)
!721 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !722, file: !362, line: 776, type: !723)
!722 = distinct !DILexicalBlock(scope: !676, file: !362, line: 775, column: 15)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!724 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dval", scope: !722, file: !362, line: 777, type: !725)
!725 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!726 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !727, file: !362, line: 786, type: !728)
!727 = distinct !DILexicalBlock(scope: !676, file: !362, line: 785, column: 15)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64, align: 64)
!729 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dval", scope: !727, file: !362, line: 787, type: !725)
!730 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !731, file: !362, line: 796, type: !732)
!731 = distinct !DILexicalBlock(scope: !676, file: !362, line: 795, column: 15)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64, align: 64)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_complex", file: !734, line: 13, baseType: !735)
!734 = !DIFile(filename: "Include/complexobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!735 = !DICompositeType(tag: DW_TAG_structure_type, file: !734, line: 10, size: 128, align: 64, elements: !736)
!736 = !{!737, !738}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !735, file: !734, line: 11, baseType: !725, size: 64, align: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !735, file: !734, line: 12, baseType: !725, size: 64, align: 64, offset: 64)
!739 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cval", scope: !731, file: !362, line: 797, type: !733)
!740 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !741, file: !362, line: 807, type: !59)
!741 = distinct !DILexicalBlock(scope: !676, file: !362, line: 806, column: 15)
!742 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !743, file: !362, line: 818, type: !616)
!743 = distinct !DILexicalBlock(scope: !676, file: !362, line: 817, column: 15)
!744 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kind", scope: !743, file: !362, line: 819, type: !51)
!745 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !743, file: !362, line: 820, type: !11)
!746 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !747, file: !362, line: 838, type: !616)
!747 = distinct !DILexicalBlock(scope: !676, file: !362, line: 837, column: 15)
!748 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !747, file: !362, line: 839, type: !51)
!749 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !750, file: !362, line: 853, type: !439)
!750 = distinct !DILexicalBlock(scope: !676, file: !362, line: 852, column: 15)
!751 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !750, file: !362, line: 854, type: !59)
!752 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !750, file: !362, line: 855, type: !18)
!753 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "q", scope: !754, file: !362, line: 871, type: !616)
!754 = distinct !DILexicalBlock(scope: !755, file: !362, line: 870, column: 29)
!755 = distinct !DILexicalBlock(scope: !750, file: !362, line: 870, column: 13)
!756 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "q2", scope: !754, file: !362, line: 871, type: !254)
!757 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !758, file: !362, line: 888, type: !242)
!758 = distinct !DILexicalBlock(scope: !759, file: !362, line: 886, column: 29)
!759 = distinct !DILexicalBlock(scope: !760, file: !362, line: 886, column: 13)
!760 = distinct !DILexicalBlock(scope: !676, file: !362, line: 885, column: 5)
!761 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !762, file: !362, line: 893, type: !18)
!762 = distinct !DILexicalBlock(scope: !763, file: !362, line: 892, column: 90)
!763 = distinct !DILexicalBlock(scope: !764, file: !362, line: 892, column: 22)
!764 = distinct !DILexicalBlock(scope: !758, file: !362, line: 890, column: 17)
!765 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !766, file: !362, line: 901, type: !59)
!766 = distinct !DILexicalBlock(scope: !763, file: !362, line: 900, column: 18)
!767 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !768, file: !362, line: 913, type: !439)
!768 = distinct !DILexicalBlock(scope: !769, file: !362, line: 911, column: 36)
!769 = distinct !DILexicalBlock(scope: !759, file: !362, line: 911, column: 20)
!770 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "q", scope: !768, file: !362, line: 914, type: !616)
!771 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "q2", scope: !768, file: !362, line: 914, type: !254)
!772 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !773, file: !362, line: 921, type: !18)
!773 = distinct !DILexicalBlock(scope: !774, file: !362, line: 920, column: 90)
!774 = distinct !DILexicalBlock(scope: !775, file: !362, line: 920, column: 22)
!775 = distinct !DILexicalBlock(scope: !768, file: !362, line: 916, column: 17)
!776 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !777, file: !362, line: 931, type: !59)
!777 = distinct !DILexicalBlock(scope: !774, file: !362, line: 929, column: 18)
!778 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !777, file: !362, line: 932, type: !18)
!779 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !780, file: !362, line: 940, type: !440)
!780 = distinct !DILexicalBlock(scope: !769, file: !362, line: 938, column: 16)
!781 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !780, file: !362, line: 941, type: !18)
!782 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !783, file: !362, line: 968, type: !784)
!783 = distinct !DILexicalBlock(scope: !676, file: !362, line: 967, column: 5)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64, align: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64, align: 64)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UNICODE", file: !4, line: 93, baseType: !406)
!787 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "q", scope: !788, file: !362, line: 972, type: !616)
!788 = distinct !DILexicalBlock(scope: !789, file: !362, line: 970, column: 29)
!789 = distinct !DILexicalBlock(scope: !783, file: !362, line: 970, column: 13)
!790 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "q2", scope: !788, file: !362, line: 972, type: !254)
!791 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !792, file: !362, line: 979, type: !18)
!792 = distinct !DILexicalBlock(scope: !793, file: !362, line: 978, column: 90)
!793 = distinct !DILexicalBlock(scope: !794, file: !362, line: 978, column: 22)
!794 = distinct !DILexicalBlock(scope: !788, file: !362, line: 974, column: 17)
!795 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !796, file: !362, line: 993, type: !18)
!796 = distinct !DILexicalBlock(scope: !797, file: !362, line: 992, column: 90)
!797 = distinct !DILexicalBlock(scope: !798, file: !362, line: 992, column: 22)
!798 = distinct !DILexicalBlock(scope: !799, file: !362, line: 990, column: 17)
!799 = distinct !DILexicalBlock(scope: !789, file: !362, line: 988, column: 16)
!800 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffer", scope: !801, file: !362, line: 1009, type: !440)
!801 = distinct !DILexicalBlock(scope: !676, file: !362, line: 1008, column: 15)
!802 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "encoding", scope: !801, file: !362, line: 1010, type: !36)
!803 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !801, file: !362, line: 1011, type: !12)
!804 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "recode_strings", scope: !801, file: !362, line: 1012, type: !51)
!805 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !801, file: !362, line: 1013, type: !18)
!806 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !801, file: !362, line: 1014, type: !36)
!807 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "u", scope: !808, file: !362, line: 1049, type: !12)
!808 = distinct !DILexicalBlock(scope: !809, file: !362, line: 1048, column: 14)
!809 = distinct !DILexicalBlock(scope: !801, file: !362, line: 1040, column: 13)
!810 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !811, file: !362, line: 1062, type: !12)
!811 = distinct !DILexicalBlock(scope: !808, file: !362, line: 1062, column: 16)
!812 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !813, file: !362, line: 1067, type: !12)
!813 = distinct !DILexicalBlock(scope: !814, file: !362, line: 1067, column: 20)
!814 = distinct !DILexicalBlock(scope: !815, file: !362, line: 1066, column: 84)
!815 = distinct !DILexicalBlock(scope: !808, file: !362, line: 1066, column: 17)
!816 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "q", scope: !817, file: !362, line: 1101, type: !616)
!817 = distinct !DILexicalBlock(scope: !818, file: !362, line: 1079, column: 29)
!818 = distinct !DILexicalBlock(scope: !801, file: !362, line: 1079, column: 13)
!819 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "q2", scope: !817, file: !362, line: 1101, type: !254)
!820 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !821, file: !362, line: 1105, type: !12)
!821 = distinct !DILexicalBlock(scope: !822, file: !362, line: 1105, column: 20)
!822 = distinct !DILexicalBlock(scope: !823, file: !362, line: 1104, column: 54)
!823 = distinct !DILexicalBlock(scope: !817, file: !362, line: 1104, column: 17)
!824 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !825, file: !362, line: 1113, type: !12)
!825 = distinct !DILexicalBlock(scope: !826, file: !362, line: 1113, column: 24)
!826 = distinct !DILexicalBlock(scope: !827, file: !362, line: 1112, column: 44)
!827 = distinct !DILexicalBlock(scope: !828, file: !362, line: 1112, column: 21)
!828 = distinct !DILexicalBlock(scope: !829, file: !362, line: 1110, column: 40)
!829 = distinct !DILexicalBlock(scope: !817, file: !362, line: 1110, column: 17)
!830 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !831, file: !362, line: 1118, type: !12)
!831 = distinct !DILexicalBlock(scope: !832, file: !362, line: 1118, column: 24)
!832 = distinct !DILexicalBlock(scope: !833, file: !362, line: 1117, column: 65)
!833 = distinct !DILexicalBlock(scope: !828, file: !362, line: 1117, column: 21)
!834 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !835, file: !362, line: 1125, type: !12)
!835 = distinct !DILexicalBlock(scope: !836, file: !362, line: 1125, column: 24)
!836 = distinct !DILexicalBlock(scope: !837, file: !362, line: 1124, column: 56)
!837 = distinct !DILexicalBlock(scope: !838, file: !362, line: 1124, column: 21)
!838 = distinct !DILexicalBlock(scope: !829, file: !362, line: 1123, column: 20)
!839 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !840, file: !362, line: 1148, type: !12)
!840 = distinct !DILexicalBlock(scope: !841, file: !362, line: 1148, column: 20)
!841 = distinct !DILexicalBlock(scope: !842, file: !362, line: 1147, column: 50)
!842 = distinct !DILexicalBlock(scope: !843, file: !362, line: 1147, column: 17)
!843 = distinct !DILexicalBlock(scope: !818, file: !362, line: 1133, column: 16)
!844 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !845, file: !362, line: 1155, type: !12)
!845 = distinct !DILexicalBlock(scope: !846, file: !362, line: 1155, column: 20)
!846 = distinct !DILexicalBlock(scope: !847, file: !362, line: 1154, column: 40)
!847 = distinct !DILexicalBlock(scope: !843, file: !362, line: 1154, column: 17)
!848 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !849, file: !362, line: 1160, type: !12)
!849 = distinct !DILexicalBlock(scope: !850, file: !362, line: 1160, column: 20)
!850 = distinct !DILexicalBlock(scope: !851, file: !362, line: 1159, column: 61)
!851 = distinct !DILexicalBlock(scope: !843, file: !362, line: 1159, column: 17)
!852 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !853, file: !362, line: 1166, type: !12)
!853 = distinct !DILexicalBlock(scope: !801, file: !362, line: 1166, column: 12)
!854 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !855, file: !362, line: 1171, type: !551)
!855 = distinct !DILexicalBlock(scope: !676, file: !362, line: 1170, column: 15)
!856 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !857, file: !362, line: 1180, type: !551)
!857 = distinct !DILexicalBlock(scope: !676, file: !362, line: 1179, column: 15)
!858 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !859, file: !362, line: 1189, type: !551)
!859 = distinct !DILexicalBlock(scope: !676, file: !362, line: 1188, column: 15)
!860 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !861, file: !362, line: 1201, type: !862)
!861 = distinct !DILexicalBlock(scope: !676, file: !362, line: 1200, column: 15)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64, align: 64)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !14, line: 422, baseType: !27)
!864 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !861, file: !362, line: 1202, type: !551)
!865 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "convert", scope: !866, file: !362, line: 1215, type: !869)
!866 = distinct !DILexicalBlock(scope: !867, file: !362, line: 1213, column: 34)
!867 = distinct !DILexicalBlock(scope: !868, file: !362, line: 1213, column: 18)
!868 = distinct !DILexicalBlock(scope: !861, file: !362, line: 1203, column: 13)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "converter", scope: !660, file: !362, line: 1214, baseType: !271)
!870 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "addr", scope: !866, file: !362, line: 1216, type: !11)
!871 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !866, file: !362, line: 1217, type: !51)
!872 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !873, file: !362, line: 1236, type: !439)
!873 = distinct !DILexicalBlock(scope: !676, file: !362, line: 1235, column: 15)
!874 = !DISubprogram(name: "float_argument_error", scope: !362, file: !362, line: 549, type: !151, isLocal: true, isDefinition: true, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @float_argument_error, variables: !875)
!875 = !{!876}
!876 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 1, scope: !874, file: !362, line: 549, type: !12)
!877 = !DISubprogram(name: "converterr", scope: !362, file: !362, line: 534, type: !878, isLocal: true, isDefinition: true, scopeLine: 535, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, %struct._object*, i8*, i64)* @converterr, variables: !880)
!878 = !DISubroutineType(types: !879)
!879 = !{!59, !36, !12, !59, !101}
!880 = !{!881, !882, !883, !884}
!881 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "expected", arg: 1, scope: !877, file: !362, line: 534, type: !36)
!882 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !877, file: !362, line: 534, type: !12)
!883 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msgbuf", arg: 3, scope: !877, file: !362, line: 534, type: !59)
!884 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bufsize", arg: 4, scope: !877, file: !362, line: 534, type: !101)
!885 = !DISubprogram(name: "getbuffer", scope: !362, file: !362, line: 1299, type: !886, isLocal: true, isDefinition: true, scopeLine: 1300, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct.bufferinfo*, i8**)* @getbuffer, variables: !888)
!886 = !DISubroutineType(types: !887)
!887 = !{!51, !12, !242, !440}
!888 = !{!889, !890, !891}
!889 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 1, scope: !885, file: !362, line: 1299, type: !12)
!890 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "view", arg: 2, scope: !885, file: !362, line: 1299, type: !242)
!891 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errmsg", arg: 3, scope: !885, file: !362, line: 1299, type: !440)
!892 = !DISubprogram(name: "addcleanup", scope: !362, file: !362, line: 165, type: !893, isLocal: true, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct.freelist_t*, i32 (%struct._object*, i8*)*)* @addcleanup, variables: !895)
!893 = !DISubroutineType(types: !894)
!894 = !{!51, !11, !607, !367}
!895 = !{!896, !897, !898, !899}
!896 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !892, file: !362, line: 165, type: !11)
!897 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "freelist", arg: 2, scope: !892, file: !362, line: 165, type: !607)
!898 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "destructor", arg: 3, scope: !892, file: !362, line: 165, type: !367)
!899 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !892, file: !362, line: 167, type: !51)
!900 = !DISubprogram(name: "cleanup_buffer", scope: !362, file: !362, line: 155, type: !272, isLocal: true, isDefinition: true, scopeLine: 156, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*)* @cleanup_buffer, variables: !901)
!901 = !{!902, !903, !904}
!902 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !900, file: !362, line: 155, type: !12)
!903 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 2, scope: !900, file: !362, line: 155, type: !11)
!904 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !900, file: !362, line: 157, type: !242)
!905 = !DISubprogram(name: "convertbuffer", scope: !362, file: !362, line: 1277, type: !906, isLocal: true, isDefinition: true, scopeLine: 1278, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct._object*, i8**, i8**)* @convertbuffer, variables: !908)
!906 = !DISubroutineType(types: !907)
!907 = !{!18, !12, !439, !440}
!908 = !{!909, !910, !911, !912, !913, !914}
!909 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 1, scope: !905, file: !362, line: 1277, type: !12)
!910 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 2, scope: !905, file: !362, line: 1277, type: !439)
!911 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errmsg", arg: 3, scope: !905, file: !362, line: 1277, type: !440)
!912 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pb", scope: !905, file: !362, line: 1279, type: !233)
!913 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !905, file: !362, line: 1280, type: !18)
!914 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "view", scope: !905, file: !362, line: 1281, type: !243)
!915 = !DISubprogram(name: "cleanup_ptr", scope: !362, file: !362, line: 146, type: !272, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*)* @cleanup_ptr, variables: !916)
!916 = !{!917, !918}
!917 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !915, file: !362, line: 146, type: !12)
!918 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 2, scope: !915, file: !362, line: 146, type: !11)
!919 = !DISubprogram(name: "seterror", scope: !362, file: !362, line: 364, type: !920, isLocal: true, isDefinition: true, scopeLine: 366, flags: DIFlagPrototyped, isOptimized: true, function: void (i64, i8*, i32*, i8*, i8*)* @seterror, variables: !922)
!920 = !DISubroutineType(types: !921)
!921 = !{null, !18, !36, !616, !36, !36}
!922 = !{!923, !924, !925, !926, !927, !928, !932, !933}
!923 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iarg", arg: 1, scope: !919, file: !362, line: 364, type: !18)
!924 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msg", arg: 2, scope: !919, file: !362, line: 364, type: !36)
!925 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "levels", arg: 3, scope: !919, file: !362, line: 364, type: !616)
!926 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fname", arg: 4, scope: !919, file: !362, line: 364, type: !36)
!927 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "message", arg: 5, scope: !919, file: !362, line: 365, type: !36)
!928 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !919, file: !362, line: 367, type: !929)
!929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 4096, align: 8, elements: !930)
!930 = !{!931}
!931 = !DISubrange(count: 512)
!932 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !919, file: !362, line: 368, type: !51)
!933 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !919, file: !362, line: 369, type: !59)
!934 = !DISubprogram(name: "vgetargskeywords", scope: !362, file: !362, line: 1434, type: !935, isLocal: true, isDefinition: true, scopeLine: 1436, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*, i8*, i8**, [1 x %struct.__va_list_tag]*, i32)* @vgetargskeywords, variables: !937)
!935 = !DISubroutineType(types: !936)
!936 = !{!51, !12, !12, !36, !440, !566, !51}
!937 = !{!938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !962, !963, !964}
!938 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 1, scope: !934, file: !362, line: 1434, type: !12)
!939 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "keywords", arg: 2, scope: !934, file: !362, line: 1434, type: !12)
!940 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 3, scope: !934, file: !362, line: 1434, type: !36)
!941 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwlist", arg: 4, scope: !934, file: !362, line: 1435, type: !440)
!942 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_va", arg: 5, scope: !934, file: !362, line: 1435, type: !566)
!943 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 6, scope: !934, file: !362, line: 1435, type: !51)
!944 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msgbuf", scope: !934, file: !362, line: 1437, type: !929)
!945 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "levels", scope: !934, file: !362, line: 1438, type: !577)
!946 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fname", scope: !934, file: !362, line: 1439, type: !36)
!947 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msg", scope: !934, file: !362, line: 1439, type: !36)
!948 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "custom_msg", scope: !934, file: !362, line: 1439, type: !36)
!949 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "keyword", scope: !934, file: !362, line: 1439, type: !36)
!950 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "min", scope: !934, file: !362, line: 1440, type: !51)
!951 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "max", scope: !934, file: !362, line: 1441, type: !51)
!952 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !934, file: !362, line: 1442, type: !51)
!953 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !934, file: !362, line: 1442, type: !51)
!954 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nargs", scope: !934, file: !362, line: 1443, type: !18)
!955 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nkeywords", scope: !934, file: !362, line: 1443, type: !18)
!956 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "current_arg", scope: !934, file: !362, line: 1444, type: !12)
!957 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "static_entries", scope: !934, file: !362, line: 1445, type: !592)
!958 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "freelist", scope: !934, file: !362, line: 1446, type: !596)
!959 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key", scope: !960, file: !362, line: 1602, type: !12)
!960 = distinct !DILexicalBlock(scope: !961, file: !362, line: 1601, column: 24)
!961 = distinct !DILexicalBlock(scope: !934, file: !362, line: 1601, column: 9)
!962 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !960, file: !362, line: 1602, type: !12)
!963 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !960, file: !362, line: 1603, type: !18)
!964 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "match", scope: !965, file: !362, line: 1605, type: !51)
!965 = distinct !DILexicalBlock(scope: !960, file: !362, line: 1604, column: 59)
!966 = !DISubprogram(name: "skipitem", scope: !362, file: !362, line: 1632, type: !967, isLocal: true, isDefinition: true, scopeLine: 1633, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8**, [1 x %struct.__va_list_tag]*, i32)* @skipitem, variables: !969)
!967 = !DISubroutineType(types: !968)
!968 = !{!59, !615, !566, !51}
!969 = !{!970, !971, !972, !973, !974, !975}
!970 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_format", arg: 1, scope: !966, file: !362, line: 1632, type: !615)
!971 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_va", arg: 2, scope: !966, file: !362, line: 1632, type: !566)
!972 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 3, scope: !966, file: !362, line: 1632, type: !51)
!973 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "format", scope: !966, file: !362, line: 1634, type: !36)
!974 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !966, file: !362, line: 1635, type: !38)
!975 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msg", scope: !976, file: !362, line: 1724, type: !59)
!976 = distinct !DILexicalBlock(scope: !977, file: !362, line: 1723, column: 9)
!977 = distinct !DILexicalBlock(scope: !966, file: !362, line: 1637, column: 16)
!978 = !{i32 2, !"Dwarf Version", i32 4}
!979 = !{i32 2, !"Debug Info Version", i32 3}
!980 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!981 = !{!982, !982, i64 0}
!982 = !{!"any pointer", !983, i64 0}
!983 = !{!"omnipotent char", !984, i64 0}
!984 = !{!"Simple C/C++ TBAA"}
!985 = !DIExpression()
!986 = !DILocation(line: 73, column: 23, scope: !442)
!987 = !DILocation(line: 73, column: 41, scope: !442)
!988 = !DILocation(line: 75, column: 5, scope: !442)
!989 = !DILocation(line: 75, column: 9, scope: !442)
!990 = !DILocation(line: 76, column: 5, scope: !442)
!991 = !DILocation(line: 76, column: 13, scope: !442)
!992 = !DILocation(line: 78, column: 24, scope: !442)
!993 = !DILocation(line: 78, column: 5, scope: !442)
!994 = !DILocation(line: 79, column: 24, scope: !442)
!995 = !DILocation(line: 79, column: 30, scope: !442)
!996 = !DILocation(line: 79, column: 14, scope: !442)
!997 = !DILocation(line: 79, column: 12, scope: !442)
!998 = !{!999, !999, i64 0}
!999 = !{!"int", !983, i64 0}
!1000 = !DILocation(line: 80, column: 22, scope: !442)
!1001 = !DILocation(line: 80, column: 5, scope: !442)
!1002 = !DILocation(line: 81, column: 12, scope: !442)
!1003 = !DILocation(line: 82, column: 1, scope: !442)
!1004 = !DILocation(line: 81, column: 5, scope: !442)
!1005 = !DILocation(line: 199, column: 21, scope: !563)
!1006 = !DILocation(line: 199, column: 39, scope: !563)
!1007 = !DILocation(line: 199, column: 56, scope: !563)
!1008 = !DILocation(line: 199, column: 66, scope: !563)
!1009 = !DILocation(line: 201, column: 5, scope: !563)
!1010 = !DILocation(line: 201, column: 10, scope: !563)
!1011 = !DILocation(line: 202, column: 5, scope: !563)
!1012 = !DILocation(line: 202, column: 9, scope: !563)
!1013 = !DILocation(line: 203, column: 5, scope: !563)
!1014 = !DILocation(line: 203, column: 17, scope: !563)
!1015 = !DILocation(line: 204, column: 5, scope: !563)
!1016 = !DILocation(line: 204, column: 17, scope: !563)
!1017 = !DILocation(line: 205, column: 5, scope: !563)
!1018 = !DILocation(line: 205, column: 9, scope: !563)
!1019 = !DILocation(line: 206, column: 5, scope: !563)
!1020 = !DILocation(line: 206, column: 9, scope: !563)
!1021 = !DILocation(line: 207, column: 5, scope: !563)
!1022 = !DILocation(line: 207, column: 9, scope: !563)
!1023 = !DILocation(line: 208, column: 5, scope: !563)
!1024 = !DILocation(line: 208, column: 9, scope: !563)
!1025 = !DILocation(line: 209, column: 5, scope: !563)
!1026 = !DILocation(line: 209, column: 17, scope: !563)
!1027 = !DILocation(line: 209, column: 30, scope: !563)
!1028 = !DILocation(line: 210, column: 5, scope: !563)
!1029 = !DILocation(line: 210, column: 16, scope: !563)
!1030 = !DILocation(line: 210, column: 19, scope: !563)
!1031 = !DILocation(line: 211, column: 5, scope: !563)
!1032 = !DILocation(line: 211, column: 11, scope: !563)
!1033 = !DILocation(line: 212, column: 5, scope: !563)
!1034 = !DILocation(line: 212, column: 9, scope: !563)
!1035 = !DILocation(line: 212, column: 18, scope: !563)
!1036 = !DILocation(line: 212, column: 24, scope: !563)
!1037 = !DILocation(line: 213, column: 5, scope: !563)
!1038 = !DILocation(line: 213, column: 21, scope: !563)
!1039 = !DILocation(line: 214, column: 5, scope: !563)
!1040 = !DILocation(line: 214, column: 16, scope: !563)
!1041 = !DILocation(line: 216, column: 24, scope: !563)
!1042 = !DILocation(line: 216, column: 14, scope: !563)
!1043 = !DILocation(line: 216, column: 22, scope: !563)
!1044 = !{!1045, !982, i64 0}
!1045 = !{!"", !982, i64 0, !999, i64 8, !999, i64 12}
!1046 = !DILocation(line: 217, column: 14, scope: !563)
!1047 = !DILocation(line: 217, column: 30, scope: !563)
!1048 = !{!1045, !999, i64 8}
!1049 = !DILocation(line: 218, column: 14, scope: !563)
!1050 = !DILocation(line: 218, column: 31, scope: !563)
!1051 = !{!1045, !999, i64 12}
!1052 = !DILocation(line: 221, column: 13, scope: !563)
!1053 = !DILocation(line: 221, column: 19, scope: !563)
!1054 = !DILocation(line: 221, column: 11, scope: !563)
!1055 = !DILocation(line: 223, column: 5, scope: !563)
!1056 = !DILocation(line: 223, column: 12, scope: !1057)
!1057 = !DILexicalBlockFile(scope: !1058, file: !362, discriminator: 2)
!1058 = !DILexicalBlockFile(scope: !563, file: !362, discriminator: 1)
!1059 = !DILocation(line: 223, column: 19, scope: !563)
!1060 = !DILocation(line: 224, column: 9, scope: !603)
!1061 = !DILocation(line: 224, column: 13, scope: !603)
!1062 = !DILocation(line: 224, column: 24, scope: !603)
!1063 = !DILocation(line: 224, column: 17, scope: !603)
!1064 = !{!983, !983, i64 0}
!1065 = !DILocation(line: 225, column: 17, scope: !603)
!1066 = !DILocation(line: 225, column: 9, scope: !603)
!1067 = !DILocation(line: 227, column: 17, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !362, line: 227, column: 17)
!1069 = distinct !DILexicalBlock(scope: !603, file: !362, line: 225, column: 20)
!1070 = !DILocation(line: 227, column: 23, scope: !1068)
!1071 = !DILocation(line: 227, column: 17, scope: !1069)
!1072 = !DILocation(line: 228, column: 20, scope: !1068)
!1073 = !DILocation(line: 228, column: 17, scope: !1068)
!1074 = !DILocation(line: 229, column: 18, scope: !1069)
!1075 = !DILocation(line: 230, column: 17, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1069, file: !362, line: 230, column: 17)
!1077 = !DILocation(line: 230, column: 23, scope: !1076)
!1078 = !DILocation(line: 230, column: 17, scope: !1069)
!1079 = !DILocation(line: 231, column: 17, scope: !1076)
!1080 = !DILocation(line: 233, column: 13, scope: !1069)
!1081 = !DILocation(line: 235, column: 17, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1069, file: !362, line: 235, column: 17)
!1083 = !DILocation(line: 235, column: 23, scope: !1082)
!1084 = !DILocation(line: 235, column: 17, scope: !1069)
!1085 = !DILocation(line: 236, column: 17, scope: !1082)
!1086 = !DILocation(line: 238, column: 22, scope: !1082)
!1087 = !DILocation(line: 239, column: 13, scope: !1069)
!1088 = !DILocation(line: 241, column: 20, scope: !1069)
!1089 = !DILocation(line: 242, column: 13, scope: !1069)
!1090 = !DILocation(line: 244, column: 21, scope: !1069)
!1091 = !DILocation(line: 244, column: 19, scope: !1069)
!1092 = !DILocation(line: 245, column: 20, scope: !1069)
!1093 = !DILocation(line: 246, column: 13, scope: !1069)
!1094 = !DILocation(line: 248, column: 23, scope: !1069)
!1095 = !DILocation(line: 248, column: 21, scope: !1069)
!1096 = !DILocation(line: 249, column: 20, scope: !1069)
!1097 = !DILocation(line: 250, column: 13, scope: !1069)
!1098 = !DILocation(line: 252, column: 17, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1069, file: !362, line: 252, column: 17)
!1100 = !DILocation(line: 252, column: 23, scope: !1099)
!1101 = !DILocation(line: 252, column: 17, scope: !1069)
!1102 = !DILocation(line: 253, column: 23, scope: !1099)
!1103 = !DILocation(line: 253, column: 21, scope: !1099)
!1104 = !DILocation(line: 253, column: 17, scope: !1099)
!1105 = !DILocation(line: 254, column: 13, scope: !1069)
!1106 = !DILocation(line: 256, column: 17, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1069, file: !362, line: 256, column: 17)
!1108 = !DILocation(line: 256, column: 23, scope: !1107)
!1109 = !DILocation(line: 256, column: 17, scope: !1069)
!1110 = !DILocation(line: 257, column: 74, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !362, line: 257, column: 21)
!1112 = distinct !DILexicalBlock(scope: !1107, file: !362, line: 256, column: 29)
!1113 = !DILocation(line: 257, column: 77, scope: !1111)
!1114 = !DILocation(line: 257, column: 57, scope: !1111)
!1115 = !DILocation(line: 257, column: 55, scope: !1111)
!1116 = !DILocation(line: 257, column: 87, scope: !1111)
!1117 = !DILocation(line: 257, column: 39, scope: !1111)
!1118 = !DILocation(line: 257, column: 22, scope: !1111)
!1119 = !DILocation(line: 257, column: 97, scope: !1111)
!1120 = !DILocation(line: 257, column: 21, scope: !1112)
!1121 = !DILocation(line: 258, column: 25, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1111, file: !362, line: 258, column: 25)
!1123 = !DILocation(line: 258, column: 27, scope: !1122)
!1124 = !DILocation(line: 258, column: 25, scope: !1111)
!1125 = !DILocation(line: 259, column: 28, scope: !1122)
!1126 = !DILocation(line: 259, column: 25, scope: !1122)
!1127 = !DILocation(line: 258, column: 30, scope: !1128)
!1128 = !DILexicalBlockFile(scope: !1122, file: !362, discriminator: 1)
!1129 = !DILocation(line: 260, column: 13, scope: !1112)
!1130 = !DILocation(line: 261, column: 13, scope: !1069)
!1131 = !DILocation(line: 263, column: 5, scope: !563)
!1132 = !DILocation(line: 265, column: 9, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !563, file: !362, line: 265, column: 9)
!1134 = !DILocation(line: 265, column: 15, scope: !1133)
!1135 = !DILocation(line: 265, column: 9, scope: !563)
!1136 = !DILocation(line: 266, column: 9, scope: !1133)
!1137 = !DILocation(line: 268, column: 9, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !563, file: !362, line: 268, column: 9)
!1139 = !DILocation(line: 268, column: 13, scope: !1138)
!1140 = !DILocation(line: 268, column: 9, scope: !563)
!1141 = !DILocation(line: 269, column: 15, scope: !1138)
!1142 = !DILocation(line: 269, column: 13, scope: !1138)
!1143 = !DILocation(line: 269, column: 9, scope: !1138)
!1144 = !DILocation(line: 271, column: 14, scope: !563)
!1145 = !DILocation(line: 271, column: 12, scope: !563)
!1146 = !DILocation(line: 273, column: 9, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !563, file: !362, line: 273, column: 9)
!1148 = !DILocation(line: 273, column: 13, scope: !1147)
!1149 = !DILocation(line: 273, column: 9, scope: !563)
!1150 = !DILocation(line: 274, column: 40, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1147, file: !362, line: 273, column: 18)
!1152 = !DILocation(line: 274, column: 31, scope: !1151)
!1153 = !DILocation(line: 274, column: 45, scope: !1151)
!1154 = !DILocation(line: 274, column: 30, scope: !1151)
!1155 = !DILocation(line: 274, column: 30, scope: !1156)
!1156 = !DILexicalBlockFile(scope: !1151, file: !362, discriminator: 1)
!1157 = !DILocation(line: 274, column: 157, scope: !1158)
!1158 = !DILexicalBlockFile(scope: !1151, file: !362, discriminator: 2)
!1159 = !DILocation(line: 274, column: 156, scope: !1151)
!1160 = !DILocation(line: 274, column: 162, scope: !1151)
!1161 = !DILocation(line: 274, column: 143, scope: !1151)
!1162 = !DILocation(line: 274, column: 123, scope: !1151)
!1163 = !DILocation(line: 274, column: 18, scope: !1164)
!1164 = !DILexicalBlockFile(scope: !1165, file: !362, discriminator: 4)
!1165 = !DILexicalBlockFile(scope: !1151, file: !362, discriminator: 3)
!1166 = !DILocation(line: 274, column: 26, scope: !1151)
!1167 = !DILocation(line: 275, column: 22, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1151, file: !362, line: 275, column: 13)
!1169 = !DILocation(line: 275, column: 30, scope: !1168)
!1170 = !DILocation(line: 275, column: 13, scope: !1151)
!1171 = !DILocation(line: 276, column: 13, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1168, file: !362, line: 275, column: 45)
!1173 = !DILocation(line: 277, column: 13, scope: !1172)
!1174 = !DILocation(line: 279, column: 18, scope: !1151)
!1175 = !DILocation(line: 279, column: 35, scope: !1151)
!1176 = !DILocation(line: 280, column: 5, scope: !1151)
!1177 = !DILocation(line: 282, column: 9, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !563, file: !362, line: 282, column: 9)
!1179 = !DILocation(line: 282, column: 9, scope: !563)
!1180 = !DILocation(line: 283, column: 13, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !362, line: 283, column: 13)
!1182 = distinct !DILexicalBlock(scope: !1178, file: !362, line: 282, column: 17)
!1183 = !DILocation(line: 283, column: 17, scope: !1181)
!1184 = !DILocation(line: 283, column: 13, scope: !1182)
!1185 = !DILocation(line: 284, column: 17, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !362, line: 284, column: 17)
!1187 = distinct !DILexicalBlock(scope: !1181, file: !362, line: 283, column: 23)
!1188 = !DILocation(line: 284, column: 22, scope: !1186)
!1189 = !DILocation(line: 284, column: 17, scope: !1187)
!1190 = !DILocation(line: 285, column: 17, scope: !1186)
!1191 = !DILocation(line: 286, column: 26, scope: !1187)
!1192 = !DILocation(line: 288, column: 26, scope: !1187)
!1193 = !DILocation(line: 288, column: 31, scope: !1187)
!1194 = !DILocation(line: 288, column: 26, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1187, file: !362, discriminator: 1)
!1196 = !DILocation(line: 288, column: 59, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !1187, file: !362, discriminator: 2)
!1198 = !DILocation(line: 289, column: 26, scope: !1187)
!1199 = !DILocation(line: 289, column: 31, scope: !1187)
!1200 = !DILocation(line: 286, column: 13, scope: !1187)
!1201 = !DILocation(line: 290, column: 20, scope: !1187)
!1202 = !DILocation(line: 290, column: 13, scope: !1187)
!1203 = !DILocation(line: 292, column: 18, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1181, file: !362, line: 292, column: 18)
!1205 = !DILocation(line: 292, column: 22, scope: !1204)
!1206 = !DILocation(line: 292, column: 27, scope: !1204)
!1207 = !DILocation(line: 292, column: 30, scope: !1208)
!1208 = !DILexicalBlockFile(scope: !1204, file: !362, discriminator: 1)
!1209 = !DILocation(line: 292, column: 34, scope: !1204)
!1210 = !DILocation(line: 292, column: 18, scope: !1181)
!1211 = !DILocation(line: 293, column: 17, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !362, line: 293, column: 17)
!1213 = distinct !DILexicalBlock(scope: !1204, file: !362, line: 292, column: 40)
!1214 = !DILocation(line: 293, column: 22, scope: !1212)
!1215 = !DILocation(line: 293, column: 17, scope: !1213)
!1216 = !DILocation(line: 294, column: 30, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1212, file: !362, line: 293, column: 37)
!1218 = !DILocation(line: 296, column: 30, scope: !1217)
!1219 = !DILocation(line: 296, column: 35, scope: !1217)
!1220 = !DILocation(line: 296, column: 30, scope: !1221)
!1221 = !DILexicalBlockFile(scope: !1217, file: !362, discriminator: 1)
!1222 = !DILocation(line: 296, column: 63, scope: !1223)
!1223 = !DILexicalBlockFile(scope: !1217, file: !362, discriminator: 2)
!1224 = !DILocation(line: 297, column: 30, scope: !1217)
!1225 = !DILocation(line: 297, column: 35, scope: !1217)
!1226 = !DILocation(line: 294, column: 17, scope: !1217)
!1227 = !DILocation(line: 298, column: 24, scope: !1217)
!1228 = !DILocation(line: 298, column: 17, scope: !1217)
!1229 = !DILocation(line: 300, column: 31, scope: !1213)
!1230 = !DILocation(line: 300, column: 46, scope: !1213)
!1231 = !DILocation(line: 300, column: 52, scope: !1213)
!1232 = !DILocation(line: 300, column: 59, scope: !1213)
!1233 = !DILocation(line: 301, column: 31, scope: !1213)
!1234 = !DILocation(line: 300, column: 19, scope: !1213)
!1235 = !DILocation(line: 300, column: 17, scope: !1213)
!1236 = !DILocation(line: 302, column: 17, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1213, file: !362, line: 302, column: 17)
!1238 = !DILocation(line: 302, column: 21, scope: !1237)
!1239 = !DILocation(line: 302, column: 17, scope: !1213)
!1240 = !DILocation(line: 303, column: 24, scope: !1237)
!1241 = !DILocation(line: 303, column: 17, scope: !1237)
!1242 = !DILocation(line: 304, column: 22, scope: !1213)
!1243 = !DILocation(line: 304, column: 33, scope: !1213)
!1244 = !DILocation(line: 304, column: 38, scope: !1213)
!1245 = !DILocation(line: 304, column: 44, scope: !1213)
!1246 = !DILocation(line: 304, column: 48, scope: !1213)
!1247 = !DILocation(line: 304, column: 55, scope: !1213)
!1248 = !DILocation(line: 304, column: 13, scope: !1213)
!1249 = !DILocation(line: 305, column: 20, scope: !1213)
!1250 = !DILocation(line: 305, column: 13, scope: !1213)
!1251 = !DILocation(line: 308, column: 29, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1204, file: !362, line: 307, column: 14)
!1253 = !DILocation(line: 308, column: 13, scope: !1252)
!1254 = !DILocation(line: 310, column: 20, scope: !1252)
!1255 = !DILocation(line: 310, column: 13, scope: !1252)
!1256 = !DILocation(line: 314, column: 27, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !563, file: !362, line: 314, column: 9)
!1258 = !DILocation(line: 314, column: 35, scope: !1257)
!1259 = !{!1260, !982, i64 8}
!1260 = !{!"_object", !1261, i64 0, !982, i64 8}
!1261 = !{!"long", !983, i64 0}
!1262 = !DILocation(line: 314, column: 46, scope: !1257)
!1263 = !{!1264, !1261, i64 168}
!1264 = !{!"_typeobject", !1265, i64 0, !982, i64 24, !1261, i64 32, !1261, i64 40, !982, i64 48, !982, i64 56, !982, i64 64, !982, i64 72, !982, i64 80, !982, i64 88, !982, i64 96, !982, i64 104, !982, i64 112, !982, i64 120, !982, i64 128, !982, i64 136, !982, i64 144, !982, i64 152, !982, i64 160, !1261, i64 168, !982, i64 176, !982, i64 184, !982, i64 192, !982, i64 200, !1261, i64 208, !982, i64 216, !982, i64 224, !982, i64 232, !982, i64 240, !982, i64 248, !982, i64 256, !982, i64 264, !982, i64 272, !982, i64 280, !1261, i64 288, !982, i64 296, !982, i64 304, !982, i64 312, !982, i64 320, !982, i64 328, !982, i64 336, !982, i64 344, !982, i64 352, !982, i64 360, !982, i64 368, !982, i64 376, !999, i64 384, !982, i64 392}
!1265 = !{!"", !1260, i64 0, !1261, i64 16}
!1266 = !DILocation(line: 314, column: 55, scope: !1257)
!1267 = !DILocation(line: 314, column: 72, scope: !1257)
!1268 = !DILocation(line: 314, column: 9, scope: !563)
!1269 = !DILocation(line: 315, column: 25, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1257, file: !362, line: 314, column: 79)
!1271 = !DILocation(line: 315, column: 9, scope: !1270)
!1272 = !DILocation(line: 317, column: 16, scope: !1270)
!1273 = !DILocation(line: 317, column: 9, scope: !1270)
!1274 = !DILocation(line: 320, column: 28, scope: !563)
!1275 = !DILocation(line: 320, column: 13, scope: !563)
!1276 = !DILocation(line: 320, column: 36, scope: !563)
!1277 = !{!1265, !1261, i64 16}
!1278 = !DILocation(line: 320, column: 9, scope: !563)
!1279 = !{!1261, !1261, i64 0}
!1280 = !DILocation(line: 322, column: 9, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !563, file: !362, line: 322, column: 9)
!1282 = !DILocation(line: 322, column: 15, scope: !1281)
!1283 = !DILocation(line: 322, column: 13, scope: !1281)
!1284 = !DILocation(line: 322, column: 19, scope: !1281)
!1285 = !DILocation(line: 322, column: 22, scope: !1286)
!1286 = !DILexicalBlockFile(scope: !1281, file: !362, discriminator: 1)
!1287 = !DILocation(line: 322, column: 28, scope: !1281)
!1288 = !DILocation(line: 322, column: 26, scope: !1281)
!1289 = !DILocation(line: 322, column: 9, scope: !563)
!1290 = !DILocation(line: 323, column: 13, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !362, line: 323, column: 13)
!1292 = distinct !DILexicalBlock(scope: !1281, file: !362, line: 322, column: 33)
!1293 = !DILocation(line: 323, column: 21, scope: !1291)
!1294 = !DILocation(line: 323, column: 13, scope: !1292)
!1295 = !DILocation(line: 324, column: 26, scope: !1291)
!1296 = !DILocation(line: 326, column: 26, scope: !1291)
!1297 = !DILocation(line: 326, column: 31, scope: !1291)
!1298 = !DILocation(line: 326, column: 26, scope: !1299)
!1299 = !DILexicalBlockFile(scope: !1291, file: !362, discriminator: 1)
!1300 = !DILocation(line: 326, column: 59, scope: !1301)
!1301 = !DILexicalBlockFile(scope: !1291, file: !362, discriminator: 2)
!1302 = !DILocation(line: 327, column: 26, scope: !1291)
!1303 = !DILocation(line: 327, column: 31, scope: !1291)
!1304 = !DILocation(line: 328, column: 26, scope: !1291)
!1305 = !DILocation(line: 328, column: 31, scope: !1291)
!1306 = !DILocation(line: 328, column: 29, scope: !1291)
!1307 = !DILocation(line: 328, column: 26, scope: !1299)
!1308 = !DILocation(line: 329, column: 28, scope: !1291)
!1309 = !DILocation(line: 329, column: 34, scope: !1291)
!1310 = !DILocation(line: 329, column: 32, scope: !1291)
!1311 = !DILocation(line: 330, column: 26, scope: !1291)
!1312 = !DILocation(line: 330, column: 32, scope: !1291)
!1313 = !DILocation(line: 330, column: 30, scope: !1291)
!1314 = !DILocation(line: 330, column: 38, scope: !1299)
!1315 = !DILocation(line: 330, column: 44, scope: !1301)
!1316 = !DILocation(line: 331, column: 27, scope: !1291)
!1317 = !DILocation(line: 331, column: 33, scope: !1291)
!1318 = !DILocation(line: 331, column: 31, scope: !1291)
!1319 = !DILocation(line: 331, column: 39, scope: !1299)
!1320 = !DILocation(line: 331, column: 45, scope: !1301)
!1321 = !DILocation(line: 331, column: 50, scope: !1322)
!1322 = !DILexicalBlockFile(scope: !1323, file: !362, discriminator: 4)
!1323 = !DILexicalBlockFile(scope: !1291, file: !362, discriminator: 3)
!1324 = !DILocation(line: 331, column: 26, scope: !1291)
!1325 = !DILocation(line: 332, column: 33, scope: !1291)
!1326 = !DILocation(line: 324, column: 13, scope: !1291)
!1327 = !DILocation(line: 334, column: 29, scope: !1291)
!1328 = !DILocation(line: 334, column: 46, scope: !1291)
!1329 = !DILocation(line: 334, column: 13, scope: !1291)
!1330 = !DILocation(line: 335, column: 16, scope: !1292)
!1331 = !DILocation(line: 335, column: 9, scope: !1292)
!1332 = !DILocation(line: 338, column: 12, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !563, file: !362, line: 338, column: 5)
!1334 = !DILocation(line: 338, column: 10, scope: !1333)
!1335 = !DILocation(line: 338, column: 17, scope: !1336)
!1336 = !DILexicalBlockFile(scope: !1337, file: !362, discriminator: 2)
!1337 = !DILexicalBlockFile(scope: !1338, file: !362, discriminator: 1)
!1338 = distinct !DILexicalBlock(scope: !1333, file: !362, line: 338, column: 5)
!1339 = !DILocation(line: 338, column: 21, scope: !1338)
!1340 = !DILocation(line: 338, column: 19, scope: !1338)
!1341 = !DILocation(line: 338, column: 5, scope: !1333)
!1342 = !DILocation(line: 339, column: 14, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !362, line: 339, column: 13)
!1344 = distinct !DILexicalBlock(scope: !1338, file: !362, line: 338, column: 31)
!1345 = !DILocation(line: 339, column: 13, scope: !1343)
!1346 = !DILocation(line: 339, column: 21, scope: !1343)
!1347 = !DILocation(line: 339, column: 13, scope: !1344)
!1348 = !DILocation(line: 340, column: 19, scope: !1343)
!1349 = !DILocation(line: 340, column: 13, scope: !1343)
!1350 = !DILocation(line: 341, column: 63, scope: !1344)
!1351 = !DILocation(line: 341, column: 47, scope: !1344)
!1352 = !DILocation(line: 341, column: 29, scope: !1344)
!1353 = !DILocation(line: 341, column: 55, scope: !1344)
!1354 = !DILocation(line: 341, column: 28, scope: !1344)
!1355 = !DILocation(line: 341, column: 77, scope: !1344)
!1356 = !DILocation(line: 342, column: 27, scope: !1344)
!1357 = !DILocation(line: 342, column: 34, scope: !1344)
!1358 = !DILocation(line: 342, column: 42, scope: !1344)
!1359 = !DILocation(line: 341, column: 15, scope: !1344)
!1360 = !DILocation(line: 341, column: 13, scope: !1344)
!1361 = !DILocation(line: 344, column: 13, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1344, file: !362, line: 344, column: 13)
!1363 = !DILocation(line: 344, column: 13, scope: !1344)
!1364 = !DILocation(line: 345, column: 22, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1362, file: !362, line: 344, column: 18)
!1366 = !DILocation(line: 345, column: 23, scope: !1365)
!1367 = !DILocation(line: 345, column: 27, scope: !1365)
!1368 = !DILocation(line: 345, column: 32, scope: !1365)
!1369 = !DILocation(line: 345, column: 40, scope: !1365)
!1370 = !DILocation(line: 345, column: 47, scope: !1365)
!1371 = !DILocation(line: 345, column: 13, scope: !1365)
!1372 = !DILocation(line: 346, column: 20, scope: !1365)
!1373 = !DILocation(line: 346, column: 13, scope: !1365)
!1374 = !DILocation(line: 348, column: 5, scope: !1344)
!1375 = !DILocation(line: 338, column: 27, scope: !1338)
!1376 = !DILocation(line: 338, column: 5, scope: !1338)
!1377 = !DILocation(line: 350, column: 10, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !563, file: !362, line: 350, column: 9)
!1379 = !DILocation(line: 350, column: 9, scope: !1378)
!1380 = !DILocation(line: 350, column: 17, scope: !1378)
!1381 = !DILocation(line: 350, column: 25, scope: !1378)
!1382 = !DILocation(line: 350, column: 83, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !1378, file: !362, discriminator: 1)
!1384 = !DILocation(line: 350, column: 82, scope: !1378)
!1385 = !DILocation(line: 350, column: 81, scope: !1378)
!1386 = !DILocation(line: 350, column: 91, scope: !1378)
!1387 = !DILocation(line: 350, column: 65, scope: !1378)
!1388 = !DILocation(line: 350, column: 63, scope: !1378)
!1389 = !DILocation(line: 350, column: 101, scope: !1378)
!1390 = !DILocation(line: 350, column: 47, scope: !1378)
!1391 = !DILocation(line: 350, column: 30, scope: !1378)
!1392 = !DILocation(line: 350, column: 111, scope: !1378)
!1393 = !DILocation(line: 350, column: 126, scope: !1378)
!1394 = !DILocation(line: 351, column: 10, scope: !1378)
!1395 = !DILocation(line: 351, column: 9, scope: !1378)
!1396 = !DILocation(line: 351, column: 17, scope: !1378)
!1397 = !DILocation(line: 351, column: 24, scope: !1378)
!1398 = !DILocation(line: 352, column: 10, scope: !1378)
!1399 = !DILocation(line: 352, column: 9, scope: !1378)
!1400 = !DILocation(line: 352, column: 17, scope: !1378)
!1401 = !DILocation(line: 352, column: 24, scope: !1378)
!1402 = !DILocation(line: 352, column: 28, scope: !1383)
!1403 = !DILocation(line: 352, column: 27, scope: !1378)
!1404 = !DILocation(line: 352, column: 35, scope: !1378)
!1405 = !DILocation(line: 352, column: 42, scope: !1378)
!1406 = !DILocation(line: 352, column: 46, scope: !1407)
!1407 = !DILexicalBlockFile(scope: !1378, file: !362, discriminator: 2)
!1408 = !DILocation(line: 352, column: 45, scope: !1378)
!1409 = !DILocation(line: 352, column: 53, scope: !1378)
!1410 = !DILocation(line: 350, column: 9, scope: !563)
!1411 = !DILocation(line: 353, column: 22, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1378, file: !362, line: 352, column: 61)
!1413 = !DILocation(line: 354, column: 51, scope: !1412)
!1414 = !DILocation(line: 353, column: 9, scope: !1412)
!1415 = !DILocation(line: 355, column: 16, scope: !1412)
!1416 = !DILocation(line: 355, column: 9, scope: !1412)
!1417 = !DILocation(line: 358, column: 12, scope: !563)
!1418 = !DILocation(line: 358, column: 5, scope: !563)
!1419 = !DILocation(line: 359, column: 1, scope: !563)
!1420 = !DILocation(line: 85, column: 30, scope: !462)
!1421 = !DILocation(line: 85, column: 42, scope: !462)
!1422 = !DILocation(line: 87, column: 5, scope: !462)
!1423 = !DILocation(line: 87, column: 9, scope: !462)
!1424 = !DILocation(line: 88, column: 5, scope: !462)
!1425 = !DILocation(line: 88, column: 13, scope: !462)
!1426 = !DILocation(line: 90, column: 24, scope: !462)
!1427 = !DILocation(line: 90, column: 5, scope: !462)
!1428 = !DILocation(line: 91, column: 24, scope: !462)
!1429 = !DILocation(line: 91, column: 30, scope: !462)
!1430 = !DILocation(line: 91, column: 14, scope: !462)
!1431 = !DILocation(line: 91, column: 12, scope: !462)
!1432 = !DILocation(line: 92, column: 22, scope: !462)
!1433 = !DILocation(line: 92, column: 5, scope: !462)
!1434 = !DILocation(line: 93, column: 12, scope: !462)
!1435 = !DILocation(line: 94, column: 1, scope: !462)
!1436 = !DILocation(line: 93, column: 5, scope: !462)
!1437 = !DILocation(line: 98, column: 28, scope: !470)
!1438 = !DILocation(line: 98, column: 46, scope: !470)
!1439 = !DILocation(line: 100, column: 5, scope: !470)
!1440 = !DILocation(line: 100, column: 9, scope: !470)
!1441 = !DILocation(line: 101, column: 5, scope: !470)
!1442 = !DILocation(line: 101, column: 13, scope: !470)
!1443 = !DILocation(line: 103, column: 24, scope: !470)
!1444 = !DILocation(line: 103, column: 5, scope: !470)
!1445 = !DILocation(line: 104, column: 24, scope: !470)
!1446 = !DILocation(line: 104, column: 30, scope: !470)
!1447 = !DILocation(line: 104, column: 14, scope: !470)
!1448 = !DILocation(line: 104, column: 12, scope: !470)
!1449 = !DILocation(line: 105, column: 22, scope: !470)
!1450 = !DILocation(line: 105, column: 5, scope: !470)
!1451 = !DILocation(line: 106, column: 12, scope: !470)
!1452 = !DILocation(line: 107, column: 1, scope: !470)
!1453 = !DILocation(line: 106, column: 5, scope: !470)
!1454 = !DILocation(line: 110, column: 35, scope: !476)
!1455 = !DILocation(line: 110, column: 47, scope: !476)
!1456 = !DILocation(line: 112, column: 5, scope: !476)
!1457 = !DILocation(line: 112, column: 9, scope: !476)
!1458 = !DILocation(line: 113, column: 5, scope: !476)
!1459 = !DILocation(line: 113, column: 13, scope: !476)
!1460 = !DILocation(line: 115, column: 24, scope: !476)
!1461 = !DILocation(line: 115, column: 5, scope: !476)
!1462 = !DILocation(line: 116, column: 24, scope: !476)
!1463 = !DILocation(line: 116, column: 30, scope: !476)
!1464 = !DILocation(line: 116, column: 14, scope: !476)
!1465 = !DILocation(line: 116, column: 12, scope: !476)
!1466 = !DILocation(line: 117, column: 22, scope: !476)
!1467 = !DILocation(line: 117, column: 5, scope: !476)
!1468 = !DILocation(line: 118, column: 12, scope: !476)
!1469 = !DILocation(line: 119, column: 1, scope: !476)
!1470 = !DILocation(line: 118, column: 5, scope: !476)
!1471 = !DILocation(line: 123, column: 25, scope: !482)
!1472 = !DILocation(line: 123, column: 43, scope: !482)
!1473 = !DILocation(line: 123, column: 59, scope: !482)
!1474 = !DILocation(line: 125, column: 5, scope: !482)
!1475 = !DILocation(line: 125, column: 13, scope: !482)
!1476 = !DILocation(line: 127, column: 9, scope: !482)
!1477 = !DILocation(line: 127, column: 24, scope: !482)
!1478 = !DILocation(line: 129, column: 22, scope: !482)
!1479 = !DILocation(line: 129, column: 28, scope: !482)
!1480 = !DILocation(line: 129, column: 12, scope: !482)
!1481 = !DILocation(line: 130, column: 1, scope: !482)
!1482 = !DILocation(line: 129, column: 5, scope: !482)
!1483 = !DILocation(line: 133, column: 32, scope: !491)
!1484 = !DILocation(line: 133, column: 44, scope: !491)
!1485 = !DILocation(line: 133, column: 60, scope: !491)
!1486 = !DILocation(line: 135, column: 5, scope: !491)
!1487 = !DILocation(line: 135, column: 13, scope: !491)
!1488 = !DILocation(line: 137, column: 9, scope: !491)
!1489 = !DILocation(line: 137, column: 24, scope: !491)
!1490 = !DILocation(line: 139, column: 22, scope: !491)
!1491 = !DILocation(line: 139, column: 28, scope: !491)
!1492 = !DILocation(line: 139, column: 12, scope: !491)
!1493 = !DILocation(line: 140, column: 1, scope: !491)
!1494 = !DILocation(line: 139, column: 5, scope: !491)
!1495 = !DILocation(line: 1318, column: 39, scope: !499)
!1496 = !DILocation(line: 1319, column: 39, scope: !499)
!1497 = !DILocation(line: 1320, column: 41, scope: !499)
!1498 = !DILocation(line: 1321, column: 36, scope: !499)
!1499 = !DILocation(line: 1323, column: 5, scope: !499)
!1500 = !DILocation(line: 1323, column: 9, scope: !499)
!1501 = !DILocation(line: 1324, column: 5, scope: !499)
!1502 = !DILocation(line: 1324, column: 13, scope: !499)
!1503 = !DILocation(line: 1326, column: 10, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !499, file: !362, line: 1326, column: 9)
!1505 = !DILocation(line: 1326, column: 15, scope: !1504)
!1506 = !DILocation(line: 1326, column: 29, scope: !1504)
!1507 = !DILocation(line: 1326, column: 50, scope: !1508)
!1508 = !DILexicalBlockFile(scope: !1504, file: !362, discriminator: 1)
!1509 = !DILocation(line: 1326, column: 58, scope: !1504)
!1510 = !DILocation(line: 1326, column: 69, scope: !1504)
!1511 = !DILocation(line: 1326, column: 78, scope: !1504)
!1512 = !DILocation(line: 1326, column: 95, scope: !1504)
!1513 = !DILocation(line: 1326, column: 102, scope: !1504)
!1514 = !DILocation(line: 1327, column: 10, scope: !1504)
!1515 = !DILocation(line: 1327, column: 19, scope: !1504)
!1516 = !DILocation(line: 1327, column: 33, scope: !1504)
!1517 = !DILocation(line: 1327, column: 54, scope: !1508)
!1518 = !DILocation(line: 1327, column: 66, scope: !1504)
!1519 = !DILocation(line: 1327, column: 77, scope: !1504)
!1520 = !DILocation(line: 1327, column: 86, scope: !1504)
!1521 = !DILocation(line: 1327, column: 103, scope: !1504)
!1522 = !DILocation(line: 1327, column: 110, scope: !1504)
!1523 = !DILocation(line: 1328, column: 9, scope: !1504)
!1524 = !DILocation(line: 1328, column: 16, scope: !1504)
!1525 = !DILocation(line: 1328, column: 30, scope: !1504)
!1526 = !DILocation(line: 1329, column: 9, scope: !1504)
!1527 = !DILocation(line: 1329, column: 16, scope: !1504)
!1528 = !DILocation(line: 1326, column: 9, scope: !499)
!1529 = !DILocation(line: 1331, column: 9, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1504, file: !362, line: 1330, column: 5)
!1531 = !DILocation(line: 1332, column: 9, scope: !1530)
!1532 = !DILocation(line: 1335, column: 24, scope: !499)
!1533 = !DILocation(line: 1335, column: 5, scope: !499)
!1534 = !DILocation(line: 1336, column: 31, scope: !499)
!1535 = !DILocation(line: 1336, column: 37, scope: !499)
!1536 = !DILocation(line: 1336, column: 47, scope: !499)
!1537 = !DILocation(line: 1336, column: 55, scope: !499)
!1538 = !DILocation(line: 1336, column: 14, scope: !499)
!1539 = !DILocation(line: 1336, column: 12, scope: !499)
!1540 = !DILocation(line: 1337, column: 22, scope: !499)
!1541 = !DILocation(line: 1337, column: 5, scope: !499)
!1542 = !DILocation(line: 1338, column: 12, scope: !499)
!1543 = !DILocation(line: 1338, column: 5, scope: !499)
!1544 = !DILocation(line: 1339, column: 1, scope: !499)
!1545 = !DILocation(line: 1434, column: 28, scope: !934)
!1546 = !DILocation(line: 1434, column: 44, scope: !934)
!1547 = !DILocation(line: 1434, column: 66, scope: !934)
!1548 = !DILocation(line: 1435, column: 25, scope: !934)
!1549 = !DILocation(line: 1435, column: 42, scope: !934)
!1550 = !DILocation(line: 1435, column: 52, scope: !934)
!1551 = !DILocation(line: 1437, column: 5, scope: !934)
!1552 = !DILocation(line: 1437, column: 10, scope: !934)
!1553 = !DILocation(line: 1438, column: 5, scope: !934)
!1554 = !DILocation(line: 1438, column: 9, scope: !934)
!1555 = !DILocation(line: 1439, column: 5, scope: !934)
!1556 = !DILocation(line: 1439, column: 17, scope: !934)
!1557 = !DILocation(line: 1439, column: 25, scope: !934)
!1558 = !DILocation(line: 1439, column: 31, scope: !934)
!1559 = !DILocation(line: 1439, column: 44, scope: !934)
!1560 = !DILocation(line: 1440, column: 5, scope: !934)
!1561 = !DILocation(line: 1440, column: 9, scope: !934)
!1562 = !DILocation(line: 1441, column: 5, scope: !934)
!1563 = !DILocation(line: 1441, column: 9, scope: !934)
!1564 = !DILocation(line: 1442, column: 5, scope: !934)
!1565 = !DILocation(line: 1442, column: 9, scope: !934)
!1566 = !DILocation(line: 1442, column: 12, scope: !934)
!1567 = !DILocation(line: 1443, column: 5, scope: !934)
!1568 = !DILocation(line: 1443, column: 16, scope: !934)
!1569 = !DILocation(line: 1443, column: 23, scope: !934)
!1570 = !DILocation(line: 1444, column: 5, scope: !934)
!1571 = !DILocation(line: 1444, column: 15, scope: !934)
!1572 = !DILocation(line: 1445, column: 5, scope: !934)
!1573 = !DILocation(line: 1445, column: 21, scope: !934)
!1574 = !DILocation(line: 1446, column: 5, scope: !934)
!1575 = !DILocation(line: 1446, column: 16, scope: !934)
!1576 = !DILocation(line: 1448, column: 24, scope: !934)
!1577 = !DILocation(line: 1448, column: 14, scope: !934)
!1578 = !DILocation(line: 1448, column: 22, scope: !934)
!1579 = !DILocation(line: 1449, column: 14, scope: !934)
!1580 = !DILocation(line: 1449, column: 30, scope: !934)
!1581 = !DILocation(line: 1450, column: 14, scope: !934)
!1582 = !DILocation(line: 1450, column: 31, scope: !934)
!1583 = !DILocation(line: 1459, column: 164, scope: !934)
!1584 = !DILocation(line: 1459, column: 146, scope: !934)
!1585 = !DILocation(line: 1459, column: 11, scope: !934)
!1586 = !DILocation(line: 1460, column: 9, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !934, file: !362, line: 1460, column: 9)
!1588 = !DILocation(line: 1460, column: 9, scope: !934)
!1589 = !DILocation(line: 1461, column: 14, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1587, file: !362, line: 1460, column: 16)
!1591 = !DILocation(line: 1462, column: 20, scope: !1590)
!1592 = !DILocation(line: 1463, column: 5, scope: !1590)
!1593 = !DILocation(line: 1465, column: 173, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1587, file: !362, line: 1464, column: 10)
!1595 = !DILocation(line: 1465, column: 155, scope: !1594)
!1596 = !DILocation(line: 1465, column: 20, scope: !1594)
!1597 = !DILocation(line: 1466, column: 13, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1594, file: !362, line: 1466, column: 13)
!1599 = !DILocation(line: 1466, column: 13, scope: !1594)
!1600 = !DILocation(line: 1467, column: 23, scope: !1598)
!1601 = !DILocation(line: 1467, column: 13, scope: !1598)
!1602 = !DILocation(line: 1471, column: 13, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !934, file: !362, line: 1471, column: 5)
!1604 = !DILocation(line: 1471, column: 10, scope: !1603)
!1605 = !DILocation(line: 1471, column: 24, scope: !1606)
!1606 = !DILexicalBlockFile(scope: !1607, file: !362, discriminator: 2)
!1607 = !DILexicalBlockFile(scope: !1608, file: !362, discriminator: 1)
!1608 = distinct !DILexicalBlock(scope: !1603, file: !362, line: 1471, column: 5)
!1609 = !DILocation(line: 1471, column: 17, scope: !1608)
!1610 = !DILocation(line: 1471, column: 5, scope: !1603)
!1611 = !DILocation(line: 1472, column: 9, scope: !1608)
!1612 = !DILocation(line: 1471, column: 33, scope: !1608)
!1613 = !DILocation(line: 1471, column: 5, scope: !1608)
!1614 = !DILocation(line: 1474, column: 9, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !934, file: !362, line: 1474, column: 9)
!1616 = !DILocation(line: 1474, column: 13, scope: !1615)
!1617 = !DILocation(line: 1474, column: 9, scope: !934)
!1618 = !DILocation(line: 1475, column: 40, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1615, file: !362, line: 1474, column: 18)
!1620 = !DILocation(line: 1475, column: 31, scope: !1619)
!1621 = !DILocation(line: 1475, column: 45, scope: !1619)
!1622 = !DILocation(line: 1475, column: 30, scope: !1619)
!1623 = !DILocation(line: 1475, column: 30, scope: !1624)
!1624 = !DILexicalBlockFile(scope: !1619, file: !362, discriminator: 1)
!1625 = !DILocation(line: 1475, column: 157, scope: !1626)
!1626 = !DILexicalBlockFile(scope: !1619, file: !362, discriminator: 2)
!1627 = !DILocation(line: 1475, column: 156, scope: !1619)
!1628 = !DILocation(line: 1475, column: 162, scope: !1619)
!1629 = !DILocation(line: 1475, column: 143, scope: !1619)
!1630 = !DILocation(line: 1475, column: 123, scope: !1619)
!1631 = !DILocation(line: 1475, column: 18, scope: !1632)
!1632 = !DILexicalBlockFile(scope: !1633, file: !362, discriminator: 4)
!1633 = !DILexicalBlockFile(scope: !1619, file: !362, discriminator: 3)
!1634 = !DILocation(line: 1475, column: 26, scope: !1619)
!1635 = !DILocation(line: 1476, column: 22, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1619, file: !362, line: 1476, column: 13)
!1637 = !DILocation(line: 1476, column: 30, scope: !1636)
!1638 = !DILocation(line: 1476, column: 13, scope: !1619)
!1639 = !DILocation(line: 1477, column: 13, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1636, file: !362, line: 1476, column: 45)
!1641 = !DILocation(line: 1478, column: 13, scope: !1640)
!1642 = !DILocation(line: 1480, column: 18, scope: !1619)
!1643 = !DILocation(line: 1480, column: 35, scope: !1619)
!1644 = !DILocation(line: 1481, column: 5, scope: !1619)
!1645 = !DILocation(line: 1483, column: 30, scope: !934)
!1646 = !DILocation(line: 1483, column: 15, scope: !934)
!1647 = !DILocation(line: 1483, column: 38, scope: !934)
!1648 = !DILocation(line: 1483, column: 11, scope: !934)
!1649 = !DILocation(line: 1484, column: 18, scope: !934)
!1650 = !DILocation(line: 1484, column: 27, scope: !934)
!1651 = !DILocation(line: 1484, column: 17, scope: !934)
!1652 = !DILocation(line: 1484, column: 17, scope: !1653)
!1653 = !DILexicalBlockFile(scope: !934, file: !362, discriminator: 1)
!1654 = !DILocation(line: 1484, column: 60, scope: !1655)
!1655 = !DILexicalBlockFile(scope: !934, file: !362, discriminator: 2)
!1656 = !DILocation(line: 1484, column: 48, scope: !934)
!1657 = !DILocation(line: 1484, column: 15, scope: !1658)
!1658 = !DILexicalBlockFile(scope: !1659, file: !362, discriminator: 4)
!1659 = !DILexicalBlockFile(scope: !934, file: !362, discriminator: 3)
!1660 = !DILocation(line: 1485, column: 9, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !934, file: !362, line: 1485, column: 9)
!1662 = !DILocation(line: 1485, column: 17, scope: !1661)
!1663 = !DILocation(line: 1485, column: 15, scope: !1661)
!1664 = !DILocation(line: 1485, column: 29, scope: !1661)
!1665 = !DILocation(line: 1485, column: 27, scope: !1661)
!1666 = !DILocation(line: 1485, column: 9, scope: !934)
!1667 = !DILocation(line: 1486, column: 22, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1661, file: !362, line: 1485, column: 34)
!1669 = !DILocation(line: 1488, column: 23, scope: !1668)
!1670 = !DILocation(line: 1488, column: 29, scope: !1668)
!1671 = !DILocation(line: 1488, column: 22, scope: !1668)
!1672 = !DILocation(line: 1488, column: 22, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !1668, file: !362, discriminator: 1)
!1674 = !DILocation(line: 1488, column: 59, scope: !1675)
!1675 = !DILexicalBlockFile(scope: !1668, file: !362, discriminator: 2)
!1676 = !DILocation(line: 1489, column: 23, scope: !1668)
!1677 = !DILocation(line: 1489, column: 29, scope: !1668)
!1678 = !DILocation(line: 1489, column: 22, scope: !1668)
!1679 = !DILocation(line: 1490, column: 22, scope: !1668)
!1680 = !DILocation(line: 1491, column: 23, scope: !1668)
!1681 = !DILocation(line: 1491, column: 27, scope: !1668)
!1682 = !DILocation(line: 1491, column: 22, scope: !1668)
!1683 = !DILocation(line: 1492, column: 22, scope: !1668)
!1684 = !DILocation(line: 1492, column: 30, scope: !1668)
!1685 = !DILocation(line: 1492, column: 28, scope: !1668)
!1686 = !DILocation(line: 1486, column: 9, scope: !1668)
!1687 = !DILocation(line: 1493, column: 16, scope: !1668)
!1688 = !DILocation(line: 1493, column: 9, scope: !1668)
!1689 = !DILocation(line: 1497, column: 12, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !934, file: !362, line: 1497, column: 5)
!1691 = !DILocation(line: 1497, column: 10, scope: !1690)
!1692 = !DILocation(line: 1497, column: 17, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !1694, file: !362, discriminator: 2)
!1694 = !DILexicalBlockFile(scope: !1695, file: !362, discriminator: 1)
!1695 = distinct !DILexicalBlock(scope: !1690, file: !362, line: 1497, column: 5)
!1696 = !DILocation(line: 1497, column: 21, scope: !1695)
!1697 = !DILocation(line: 1497, column: 19, scope: !1695)
!1698 = !DILocation(line: 1497, column: 5, scope: !1690)
!1699 = !DILocation(line: 1498, column: 26, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1695, file: !362, line: 1497, column: 31)
!1701 = !DILocation(line: 1498, column: 19, scope: !1700)
!1702 = !DILocation(line: 1498, column: 17, scope: !1700)
!1703 = !DILocation(line: 1499, column: 14, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1700, file: !362, line: 1499, column: 13)
!1705 = !DILocation(line: 1499, column: 13, scope: !1704)
!1706 = !DILocation(line: 1499, column: 21, scope: !1704)
!1707 = !DILocation(line: 1499, column: 13, scope: !1700)
!1708 = !DILocation(line: 1500, column: 17, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !362, line: 1500, column: 17)
!1710 = distinct !DILexicalBlock(scope: !1704, file: !362, line: 1499, column: 29)
!1711 = !DILocation(line: 1500, column: 21, scope: !1709)
!1712 = !DILocation(line: 1500, column: 17, scope: !1710)
!1713 = !DILocation(line: 1501, column: 33, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1709, file: !362, line: 1500, column: 36)
!1715 = !DILocation(line: 1501, column: 17, scope: !1714)
!1716 = !DILocation(line: 1503, column: 24, scope: !1714)
!1717 = !DILocation(line: 1503, column: 17, scope: !1714)
!1718 = !DILocation(line: 1506, column: 19, scope: !1710)
!1719 = !DILocation(line: 1506, column: 17, scope: !1710)
!1720 = !DILocation(line: 1507, column: 19, scope: !1710)
!1721 = !DILocation(line: 1509, column: 17, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1710, file: !362, line: 1509, column: 17)
!1723 = !DILocation(line: 1509, column: 21, scope: !1722)
!1724 = !DILocation(line: 1509, column: 17, scope: !1710)
!1725 = !DILocation(line: 1510, column: 33, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1722, file: !362, line: 1509, column: 36)
!1727 = !DILocation(line: 1510, column: 17, scope: !1726)
!1728 = !DILocation(line: 1512, column: 24, scope: !1726)
!1729 = !DILocation(line: 1512, column: 17, scope: !1726)
!1730 = !DILocation(line: 1514, column: 9, scope: !1710)
!1731 = !DILocation(line: 1515, column: 14, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1700, file: !362, line: 1515, column: 13)
!1733 = !DILocation(line: 1515, column: 13, scope: !1732)
!1734 = !DILocation(line: 1515, column: 21, scope: !1732)
!1735 = !DILocation(line: 1515, column: 13, scope: !1700)
!1736 = !DILocation(line: 1516, column: 17, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !362, line: 1516, column: 17)
!1738 = distinct !DILexicalBlock(scope: !1732, file: !362, line: 1515, column: 29)
!1739 = !DILocation(line: 1516, column: 21, scope: !1737)
!1740 = !DILocation(line: 1516, column: 17, scope: !1738)
!1741 = !DILocation(line: 1517, column: 33, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1737, file: !362, line: 1516, column: 36)
!1743 = !DILocation(line: 1517, column: 17, scope: !1742)
!1744 = !DILocation(line: 1519, column: 24, scope: !1742)
!1745 = !DILocation(line: 1519, column: 17, scope: !1742)
!1746 = !DILocation(line: 1522, column: 19, scope: !1738)
!1747 = !DILocation(line: 1522, column: 17, scope: !1738)
!1748 = !DILocation(line: 1523, column: 19, scope: !1738)
!1749 = !DILocation(line: 1525, column: 17, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1738, file: !362, line: 1525, column: 17)
!1751 = !DILocation(line: 1525, column: 23, scope: !1750)
!1752 = !DILocation(line: 1525, column: 21, scope: !1750)
!1753 = !DILocation(line: 1525, column: 17, scope: !1738)
!1754 = !DILocation(line: 1526, column: 30, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1750, file: !362, line: 1525, column: 30)
!1756 = !DILocation(line: 1529, column: 31, scope: !1755)
!1757 = !DILocation(line: 1529, column: 35, scope: !1755)
!1758 = !DILocation(line: 1529, column: 30, scope: !1755)
!1759 = !DILocation(line: 1530, column: 30, scope: !1755)
!1760 = !DILocation(line: 1530, column: 35, scope: !1755)
!1761 = !DILocation(line: 1526, column: 17, scope: !1755)
!1762 = !DILocation(line: 1531, column: 24, scope: !1755)
!1763 = !DILocation(line: 1531, column: 17, scope: !1755)
!1764 = !DILocation(line: 1533, column: 9, scope: !1738)
!1765 = !DILocation(line: 1534, column: 15, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1700, file: !362, line: 1534, column: 13)
!1767 = !DILocation(line: 1534, column: 14, scope: !1766)
!1768 = !DILocation(line: 1534, column: 22, scope: !1766)
!1769 = !DILocation(line: 1534, column: 30, scope: !1766)
!1770 = !DILocation(line: 1534, column: 34, scope: !1771)
!1771 = !DILexicalBlockFile(scope: !1766, file: !362, discriminator: 1)
!1772 = !DILocation(line: 1534, column: 33, scope: !1766)
!1773 = !DILocation(line: 1534, column: 41, scope: !1766)
!1774 = !DILocation(line: 1534, column: 48, scope: !1766)
!1775 = !DILocation(line: 1534, column: 52, scope: !1776)
!1776 = !DILexicalBlockFile(scope: !1766, file: !362, discriminator: 2)
!1777 = !DILocation(line: 1534, column: 51, scope: !1766)
!1778 = !DILocation(line: 1534, column: 59, scope: !1766)
!1779 = !DILocation(line: 1534, column: 13, scope: !1700)
!1780 = !DILocation(line: 1535, column: 26, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1766, file: !362, line: 1534, column: 68)
!1782 = !DILocation(line: 1537, column: 52, scope: !1781)
!1783 = !DILocation(line: 1537, column: 57, scope: !1781)
!1784 = !DILocation(line: 1535, column: 13, scope: !1781)
!1785 = !DILocation(line: 1538, column: 20, scope: !1781)
!1786 = !DILocation(line: 1538, column: 13, scope: !1781)
!1787 = !DILocation(line: 1540, column: 21, scope: !1700)
!1788 = !DILocation(line: 1541, column: 13, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1700, file: !362, line: 1541, column: 13)
!1790 = !DILocation(line: 1541, column: 13, scope: !1700)
!1791 = !DILocation(line: 1542, column: 48, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1789, file: !362, line: 1541, column: 24)
!1793 = !DILocation(line: 1542, column: 58, scope: !1792)
!1794 = !DILocation(line: 1542, column: 27, scope: !1792)
!1795 = !DILocation(line: 1542, column: 25, scope: !1792)
!1796 = !DILocation(line: 1543, column: 9, scope: !1792)
!1797 = !DILocation(line: 1544, column: 13, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1700, file: !362, line: 1544, column: 13)
!1799 = !DILocation(line: 1544, column: 13, scope: !1700)
!1800 = !DILocation(line: 1545, column: 13, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1798, file: !362, line: 1544, column: 26)
!1802 = !DILocation(line: 1546, column: 17, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1801, file: !362, line: 1546, column: 17)
!1804 = !DILocation(line: 1546, column: 21, scope: !1803)
!1805 = !DILocation(line: 1546, column: 19, scope: !1803)
!1806 = !DILocation(line: 1546, column: 17, scope: !1801)
!1807 = !DILocation(line: 1548, column: 30, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1803, file: !362, line: 1546, column: 28)
!1809 = !DILocation(line: 1551, column: 30, scope: !1808)
!1810 = !DILocation(line: 1551, column: 39, scope: !1808)
!1811 = !DILocation(line: 1551, column: 40, scope: !1808)
!1812 = !DILocation(line: 1548, column: 17, scope: !1808)
!1813 = !DILocation(line: 1552, column: 24, scope: !1808)
!1814 = !DILocation(line: 1552, column: 17, scope: !1808)
!1815 = !DILocation(line: 1554, column: 9, scope: !1801)
!1816 = !DILocation(line: 1555, column: 18, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1798, file: !362, line: 1555, column: 18)
!1818 = !DILocation(line: 1555, column: 28, scope: !1817)
!1819 = !DILocation(line: 1555, column: 31, scope: !1820)
!1820 = !DILexicalBlockFile(scope: !1817, file: !362, discriminator: 1)
!1821 = !DILocation(line: 1555, column: 18, scope: !1798)
!1822 = !DILocation(line: 1556, column: 20, scope: !1817)
!1823 = !DILocation(line: 1556, column: 13, scope: !1817)
!1824 = !DILocation(line: 1557, column: 18, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1817, file: !362, line: 1557, column: 18)
!1826 = !DILocation(line: 1557, column: 22, scope: !1825)
!1827 = !DILocation(line: 1557, column: 20, scope: !1825)
!1828 = !DILocation(line: 1557, column: 18, scope: !1817)
!1829 = !DILocation(line: 1558, column: 63, scope: !1825)
!1830 = !DILocation(line: 1558, column: 28, scope: !1825)
!1831 = !DILocation(line: 1558, column: 47, scope: !1825)
!1832 = !DILocation(line: 1558, column: 29, scope: !1825)
!1833 = !DILocation(line: 1558, column: 55, scope: !1825)
!1834 = !DILocation(line: 1558, column: 25, scope: !1825)
!1835 = !DILocation(line: 1558, column: 13, scope: !1825)
!1836 = !DILocation(line: 1560, column: 13, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1700, file: !362, line: 1560, column: 13)
!1838 = !DILocation(line: 1560, column: 13, scope: !1700)
!1839 = !DILocation(line: 1561, column: 31, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1837, file: !362, line: 1560, column: 26)
!1841 = !DILocation(line: 1561, column: 53, scope: !1840)
!1842 = !DILocation(line: 1561, column: 59, scope: !1840)
!1843 = !DILocation(line: 1562, column: 17, scope: !1840)
!1844 = !DILocation(line: 1562, column: 25, scope: !1840)
!1845 = !DILocation(line: 1561, column: 19, scope: !1840)
!1846 = !DILocation(line: 1561, column: 17, scope: !1840)
!1847 = !DILocation(line: 1563, column: 17, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1840, file: !362, line: 1563, column: 17)
!1849 = !DILocation(line: 1563, column: 17, scope: !1840)
!1850 = !DILocation(line: 1564, column: 26, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1848, file: !362, line: 1563, column: 22)
!1852 = !DILocation(line: 1564, column: 27, scope: !1851)
!1853 = !DILocation(line: 1564, column: 31, scope: !1851)
!1854 = !DILocation(line: 1564, column: 36, scope: !1851)
!1855 = !DILocation(line: 1564, column: 44, scope: !1851)
!1856 = !DILocation(line: 1564, column: 51, scope: !1851)
!1857 = !DILocation(line: 1564, column: 17, scope: !1851)
!1858 = !DILocation(line: 1565, column: 24, scope: !1851)
!1859 = !DILocation(line: 1565, column: 17, scope: !1851)
!1860 = !DILocation(line: 1567, column: 13, scope: !1840)
!1861 = !DILocation(line: 1570, column: 13, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1700, file: !362, line: 1570, column: 13)
!1863 = !DILocation(line: 1570, column: 17, scope: !1862)
!1864 = !DILocation(line: 1570, column: 15, scope: !1862)
!1865 = !DILocation(line: 1570, column: 13, scope: !1700)
!1866 = !DILocation(line: 1571, column: 26, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1862, file: !362, line: 1570, column: 22)
!1868 = !DILocation(line: 1573, column: 26, scope: !1867)
!1869 = !DILocation(line: 1573, column: 35, scope: !1867)
!1870 = !DILocation(line: 1573, column: 36, scope: !1867)
!1871 = !DILocation(line: 1571, column: 13, scope: !1867)
!1872 = !DILocation(line: 1574, column: 20, scope: !1867)
!1873 = !DILocation(line: 1574, column: 13, scope: !1867)
!1874 = !DILocation(line: 1580, column: 14, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1700, file: !362, line: 1580, column: 13)
!1876 = !DILocation(line: 1580, column: 13, scope: !1700)
!1877 = !DILocation(line: 1581, column: 20, scope: !1875)
!1878 = !DILocation(line: 1581, column: 13, scope: !1875)
!1879 = !DILocation(line: 1585, column: 33, scope: !1700)
!1880 = !DILocation(line: 1585, column: 39, scope: !1700)
!1881 = !DILocation(line: 1585, column: 15, scope: !1700)
!1882 = !DILocation(line: 1585, column: 13, scope: !1700)
!1883 = !DILocation(line: 1586, column: 13, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1700, file: !362, line: 1586, column: 13)
!1885 = !DILocation(line: 1586, column: 13, scope: !1700)
!1886 = !DILocation(line: 1587, column: 26, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1884, file: !362, line: 1586, column: 18)
!1888 = !DILocation(line: 1587, column: 58, scope: !1887)
!1889 = !DILocation(line: 1588, column: 26, scope: !1887)
!1890 = !DILocation(line: 1587, column: 13, scope: !1887)
!1891 = !DILocation(line: 1589, column: 20, scope: !1887)
!1892 = !DILocation(line: 1589, column: 13, scope: !1887)
!1893 = !DILocation(line: 1591, column: 5, scope: !1700)
!1894 = !DILocation(line: 1497, column: 27, scope: !1695)
!1895 = !DILocation(line: 1497, column: 5, scope: !1695)
!1896 = !DILocation(line: 1593, column: 12, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !934, file: !362, line: 1593, column: 9)
!1898 = !DILocation(line: 1593, column: 11, scope: !1897)
!1899 = !DILocation(line: 1593, column: 19, scope: !1897)
!1900 = !DILocation(line: 1593, column: 27, scope: !1897)
!1901 = !DILocation(line: 1593, column: 31, scope: !1902)
!1902 = !DILexicalBlockFile(scope: !1897, file: !362, discriminator: 1)
!1903 = !DILocation(line: 1593, column: 30, scope: !1897)
!1904 = !DILocation(line: 1593, column: 38, scope: !1897)
!1905 = !DILocation(line: 1593, column: 45, scope: !1897)
!1906 = !DILocation(line: 1593, column: 49, scope: !1907)
!1907 = !DILexicalBlockFile(scope: !1897, file: !362, discriminator: 2)
!1908 = !DILocation(line: 1593, column: 48, scope: !1897)
!1909 = !DILocation(line: 1593, column: 56, scope: !1897)
!1910 = !DILocation(line: 1593, column: 64, scope: !1897)
!1911 = !DILocation(line: 1593, column: 69, scope: !1912)
!1912 = !DILexicalBlockFile(scope: !1897, file: !362, discriminator: 3)
!1913 = !DILocation(line: 1593, column: 68, scope: !1897)
!1914 = !DILocation(line: 1593, column: 76, scope: !1897)
!1915 = !DILocation(line: 1593, column: 84, scope: !1897)
!1916 = !DILocation(line: 1593, column: 89, scope: !1917)
!1917 = !DILexicalBlockFile(scope: !1897, file: !362, discriminator: 4)
!1918 = !DILocation(line: 1593, column: 88, scope: !1897)
!1919 = !DILocation(line: 1593, column: 96, scope: !1897)
!1920 = !DILocation(line: 1593, column: 9, scope: !934)
!1921 = !DILocation(line: 1594, column: 22, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1897, file: !362, line: 1593, column: 105)
!1923 = !DILocation(line: 1596, column: 40, scope: !1922)
!1924 = !DILocation(line: 1594, column: 9, scope: !1922)
!1925 = !DILocation(line: 1597, column: 16, scope: !1922)
!1926 = !DILocation(line: 1597, column: 9, scope: !1922)
!1927 = !DILocation(line: 1601, column: 9, scope: !961)
!1928 = !DILocation(line: 1601, column: 19, scope: !961)
!1929 = !DILocation(line: 1601, column: 9, scope: !934)
!1930 = !DILocation(line: 1602, column: 9, scope: !960)
!1931 = !DILocation(line: 1602, column: 19, scope: !960)
!1932 = !DILocation(line: 1602, column: 25, scope: !960)
!1933 = !DILocation(line: 1603, column: 9, scope: !960)
!1934 = !DILocation(line: 1603, column: 20, scope: !960)
!1935 = !DILocation(line: 1604, column: 9, scope: !960)
!1936 = !DILocation(line: 1604, column: 28, scope: !1937)
!1937 = !DILexicalBlockFile(scope: !1938, file: !362, discriminator: 2)
!1938 = !DILexicalBlockFile(scope: !960, file: !362, discriminator: 1)
!1939 = !DILocation(line: 1604, column: 16, scope: !960)
!1940 = !DILocation(line: 1605, column: 13, scope: !965)
!1941 = !DILocation(line: 1605, column: 17, scope: !965)
!1942 = !DILocation(line: 1606, column: 35, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !965, file: !362, line: 1606, column: 17)
!1944 = !DILocation(line: 1606, column: 42, scope: !1943)
!1945 = !DILocation(line: 1606, column: 53, scope: !1943)
!1946 = !DILocation(line: 1606, column: 62, scope: !1943)
!1947 = !DILocation(line: 1606, column: 79, scope: !1943)
!1948 = !DILocation(line: 1606, column: 17, scope: !965)
!1949 = !DILocation(line: 1607, column: 33, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1943, file: !362, line: 1606, column: 86)
!1951 = !DILocation(line: 1607, column: 17, scope: !1950)
!1952 = !DILocation(line: 1609, column: 24, scope: !1950)
!1953 = !DILocation(line: 1609, column: 17, scope: !1950)
!1954 = !DILocation(line: 1611, column: 20, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !965, file: !362, line: 1611, column: 13)
!1956 = !DILocation(line: 1611, column: 18, scope: !1955)
!1957 = !DILocation(line: 1611, column: 25, scope: !1958)
!1958 = !DILexicalBlockFile(scope: !1959, file: !362, discriminator: 2)
!1959 = !DILexicalBlockFile(scope: !1960, file: !362, discriminator: 1)
!1960 = distinct !DILexicalBlock(scope: !1955, file: !362, line: 1611, column: 13)
!1961 = !DILocation(line: 1611, column: 29, scope: !1960)
!1962 = !DILocation(line: 1611, column: 27, scope: !1960)
!1963 = !DILocation(line: 1611, column: 13, scope: !1955)
!1964 = !DILocation(line: 1612, column: 55, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !362, line: 1612, column: 21)
!1966 = distinct !DILexicalBlock(scope: !1960, file: !362, line: 1611, column: 39)
!1967 = !DILocation(line: 1612, column: 67, scope: !1965)
!1968 = !DILocation(line: 1612, column: 60, scope: !1965)
!1969 = !DILocation(line: 1612, column: 22, scope: !1965)
!1970 = !DILocation(line: 1612, column: 21, scope: !1966)
!1971 = !DILocation(line: 1613, column: 27, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1965, file: !362, line: 1612, column: 72)
!1973 = !DILocation(line: 1614, column: 21, scope: !1972)
!1974 = !DILocation(line: 1616, column: 13, scope: !1966)
!1975 = !DILocation(line: 1611, column: 35, scope: !1960)
!1976 = !DILocation(line: 1611, column: 13, scope: !1960)
!1977 = !DILocation(line: 1617, column: 18, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !965, file: !362, line: 1617, column: 17)
!1979 = !DILocation(line: 1617, column: 17, scope: !965)
!1980 = !DILocation(line: 1618, column: 30, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1978, file: !362, line: 1617, column: 25)
!1982 = !DILocation(line: 1621, column: 30, scope: !1981)
!1983 = !DILocation(line: 1618, column: 17, scope: !1981)
!1984 = !DILocation(line: 1622, column: 24, scope: !1981)
!1985 = !DILocation(line: 1622, column: 17, scope: !1981)
!1986 = !DILocation(line: 1624, column: 9, scope: !960)
!1987 = !DILocation(line: 1624, column: 9, scope: !1938)
!1988 = !DILocation(line: 1625, column: 5, scope: !961)
!1989 = !DILocation(line: 1625, column: 5, scope: !1990)
!1990 = !DILexicalBlockFile(scope: !961, file: !362, discriminator: 1)
!1991 = !DILocation(line: 1625, column: 5, scope: !960)
!1992 = !DILocation(line: 1627, column: 12, scope: !934)
!1993 = !DILocation(line: 1627, column: 5, scope: !934)
!1994 = !DILocation(line: 1628, column: 1, scope: !934)
!1995 = !DILocation(line: 1342, column: 46, scope: !509)
!1996 = !DILocation(line: 1343, column: 45, scope: !509)
!1997 = !DILocation(line: 1344, column: 47, scope: !509)
!1998 = !DILocation(line: 1345, column: 42, scope: !509)
!1999 = !DILocation(line: 1347, column: 5, scope: !509)
!2000 = !DILocation(line: 1347, column: 9, scope: !509)
!2001 = !DILocation(line: 1348, column: 5, scope: !509)
!2002 = !DILocation(line: 1348, column: 13, scope: !509)
!2003 = !DILocation(line: 1350, column: 10, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !509, file: !362, line: 1350, column: 9)
!2005 = !DILocation(line: 1350, column: 15, scope: !2004)
!2006 = !DILocation(line: 1350, column: 29, scope: !2004)
!2007 = !DILocation(line: 1350, column: 50, scope: !2008)
!2008 = !DILexicalBlockFile(scope: !2004, file: !362, discriminator: 1)
!2009 = !DILocation(line: 1350, column: 58, scope: !2004)
!2010 = !DILocation(line: 1350, column: 69, scope: !2004)
!2011 = !DILocation(line: 1350, column: 78, scope: !2004)
!2012 = !DILocation(line: 1350, column: 95, scope: !2004)
!2013 = !DILocation(line: 1350, column: 102, scope: !2004)
!2014 = !DILocation(line: 1351, column: 10, scope: !2004)
!2015 = !DILocation(line: 1351, column: 19, scope: !2004)
!2016 = !DILocation(line: 1351, column: 33, scope: !2004)
!2017 = !DILocation(line: 1351, column: 54, scope: !2008)
!2018 = !DILocation(line: 1351, column: 66, scope: !2004)
!2019 = !DILocation(line: 1351, column: 77, scope: !2004)
!2020 = !DILocation(line: 1351, column: 86, scope: !2004)
!2021 = !DILocation(line: 1351, column: 103, scope: !2004)
!2022 = !DILocation(line: 1351, column: 110, scope: !2004)
!2023 = !DILocation(line: 1352, column: 9, scope: !2004)
!2024 = !DILocation(line: 1352, column: 16, scope: !2004)
!2025 = !DILocation(line: 1352, column: 30, scope: !2004)
!2026 = !DILocation(line: 1353, column: 9, scope: !2004)
!2027 = !DILocation(line: 1353, column: 16, scope: !2004)
!2028 = !DILocation(line: 1350, column: 9, scope: !509)
!2029 = !DILocation(line: 1355, column: 9, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2004, file: !362, line: 1354, column: 5)
!2031 = !DILocation(line: 1356, column: 9, scope: !2030)
!2032 = !DILocation(line: 1359, column: 24, scope: !509)
!2033 = !DILocation(line: 1359, column: 5, scope: !509)
!2034 = !DILocation(line: 1360, column: 31, scope: !509)
!2035 = !DILocation(line: 1360, column: 37, scope: !509)
!2036 = !DILocation(line: 1360, column: 47, scope: !509)
!2037 = !DILocation(line: 1361, column: 31, scope: !509)
!2038 = !DILocation(line: 1360, column: 14, scope: !509)
!2039 = !DILocation(line: 1360, column: 12, scope: !509)
!2040 = !DILocation(line: 1362, column: 22, scope: !509)
!2041 = !DILocation(line: 1362, column: 5, scope: !509)
!2042 = !DILocation(line: 1363, column: 12, scope: !509)
!2043 = !DILocation(line: 1363, column: 5, scope: !509)
!2044 = !DILocation(line: 1364, column: 1, scope: !509)
!2045 = !DILocation(line: 1368, column: 41, scope: !517)
!2046 = !DILocation(line: 1369, column: 41, scope: !517)
!2047 = !DILocation(line: 1370, column: 43, scope: !517)
!2048 = !DILocation(line: 1371, column: 38, scope: !517)
!2049 = !DILocation(line: 1371, column: 54, scope: !517)
!2050 = !DILocation(line: 1373, column: 5, scope: !517)
!2051 = !DILocation(line: 1373, column: 9, scope: !517)
!2052 = !DILocation(line: 1374, column: 5, scope: !517)
!2053 = !DILocation(line: 1374, column: 13, scope: !517)
!2054 = !DILocation(line: 1376, column: 10, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !517, file: !362, line: 1376, column: 9)
!2056 = !DILocation(line: 1376, column: 15, scope: !2055)
!2057 = !DILocation(line: 1376, column: 29, scope: !2055)
!2058 = !DILocation(line: 1376, column: 50, scope: !2059)
!2059 = !DILexicalBlockFile(scope: !2055, file: !362, discriminator: 1)
!2060 = !DILocation(line: 1376, column: 58, scope: !2055)
!2061 = !DILocation(line: 1376, column: 69, scope: !2055)
!2062 = !DILocation(line: 1376, column: 78, scope: !2055)
!2063 = !DILocation(line: 1376, column: 95, scope: !2055)
!2064 = !DILocation(line: 1376, column: 102, scope: !2055)
!2065 = !DILocation(line: 1377, column: 10, scope: !2055)
!2066 = !DILocation(line: 1377, column: 19, scope: !2055)
!2067 = !DILocation(line: 1377, column: 33, scope: !2055)
!2068 = !DILocation(line: 1377, column: 54, scope: !2059)
!2069 = !DILocation(line: 1377, column: 66, scope: !2055)
!2070 = !DILocation(line: 1377, column: 77, scope: !2055)
!2071 = !DILocation(line: 1377, column: 86, scope: !2055)
!2072 = !DILocation(line: 1377, column: 103, scope: !2055)
!2073 = !DILocation(line: 1377, column: 110, scope: !2055)
!2074 = !DILocation(line: 1378, column: 9, scope: !2055)
!2075 = !DILocation(line: 1378, column: 16, scope: !2055)
!2076 = !DILocation(line: 1378, column: 30, scope: !2055)
!2077 = !DILocation(line: 1379, column: 9, scope: !2055)
!2078 = !DILocation(line: 1379, column: 16, scope: !2055)
!2079 = !DILocation(line: 1376, column: 9, scope: !517)
!2080 = !DILocation(line: 1381, column: 9, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2055, file: !362, line: 1380, column: 5)
!2082 = !DILocation(line: 1382, column: 9, scope: !2081)
!2083 = !DILocation(line: 1385, column: 9, scope: !517)
!2084 = !DILocation(line: 1385, column: 24, scope: !517)
!2085 = !DILocation(line: 1387, column: 31, scope: !517)
!2086 = !DILocation(line: 1387, column: 37, scope: !517)
!2087 = !DILocation(line: 1387, column: 47, scope: !517)
!2088 = !DILocation(line: 1387, column: 55, scope: !517)
!2089 = !DILocation(line: 1387, column: 14, scope: !517)
!2090 = !DILocation(line: 1387, column: 12, scope: !517)
!2091 = !DILocation(line: 1388, column: 12, scope: !517)
!2092 = !DILocation(line: 1388, column: 5, scope: !517)
!2093 = !DILocation(line: 1389, column: 1, scope: !517)
!2094 = !DILocation(line: 1392, column: 48, scope: !528)
!2095 = !DILocation(line: 1393, column: 47, scope: !528)
!2096 = !DILocation(line: 1394, column: 49, scope: !528)
!2097 = !DILocation(line: 1395, column: 44, scope: !528)
!2098 = !DILocation(line: 1395, column: 60, scope: !528)
!2099 = !DILocation(line: 1397, column: 5, scope: !528)
!2100 = !DILocation(line: 1397, column: 9, scope: !528)
!2101 = !DILocation(line: 1398, column: 5, scope: !528)
!2102 = !DILocation(line: 1398, column: 13, scope: !528)
!2103 = !DILocation(line: 1400, column: 10, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !528, file: !362, line: 1400, column: 9)
!2105 = !DILocation(line: 1400, column: 15, scope: !2104)
!2106 = !DILocation(line: 1400, column: 29, scope: !2104)
!2107 = !DILocation(line: 1400, column: 50, scope: !2108)
!2108 = !DILexicalBlockFile(scope: !2104, file: !362, discriminator: 1)
!2109 = !DILocation(line: 1400, column: 58, scope: !2104)
!2110 = !DILocation(line: 1400, column: 69, scope: !2104)
!2111 = !DILocation(line: 1400, column: 78, scope: !2104)
!2112 = !DILocation(line: 1400, column: 95, scope: !2104)
!2113 = !DILocation(line: 1400, column: 102, scope: !2104)
!2114 = !DILocation(line: 1401, column: 10, scope: !2104)
!2115 = !DILocation(line: 1401, column: 19, scope: !2104)
!2116 = !DILocation(line: 1401, column: 33, scope: !2104)
!2117 = !DILocation(line: 1401, column: 54, scope: !2108)
!2118 = !DILocation(line: 1401, column: 66, scope: !2104)
!2119 = !DILocation(line: 1401, column: 77, scope: !2104)
!2120 = !DILocation(line: 1401, column: 86, scope: !2104)
!2121 = !DILocation(line: 1401, column: 103, scope: !2104)
!2122 = !DILocation(line: 1401, column: 110, scope: !2104)
!2123 = !DILocation(line: 1402, column: 9, scope: !2104)
!2124 = !DILocation(line: 1402, column: 16, scope: !2104)
!2125 = !DILocation(line: 1402, column: 30, scope: !2104)
!2126 = !DILocation(line: 1403, column: 9, scope: !2104)
!2127 = !DILocation(line: 1403, column: 16, scope: !2104)
!2128 = !DILocation(line: 1400, column: 9, scope: !528)
!2129 = !DILocation(line: 1405, column: 9, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2104, file: !362, line: 1404, column: 5)
!2131 = !DILocation(line: 1406, column: 9, scope: !2130)
!2132 = !DILocation(line: 1409, column: 9, scope: !528)
!2133 = !DILocation(line: 1409, column: 24, scope: !528)
!2134 = !DILocation(line: 1411, column: 31, scope: !528)
!2135 = !DILocation(line: 1411, column: 37, scope: !528)
!2136 = !DILocation(line: 1411, column: 47, scope: !528)
!2137 = !DILocation(line: 1412, column: 31, scope: !528)
!2138 = !DILocation(line: 1411, column: 14, scope: !528)
!2139 = !DILocation(line: 1411, column: 12, scope: !528)
!2140 = !DILocation(line: 1413, column: 12, scope: !528)
!2141 = !DILocation(line: 1413, column: 5, scope: !528)
!2142 = !DILocation(line: 1414, column: 1, scope: !528)
!2143 = !DILocation(line: 1417, column: 42, scope: !537)
!2144 = !DILocation(line: 1419, column: 27, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !537, file: !362, line: 1419, column: 9)
!2146 = !DILocation(line: 1419, column: 37, scope: !2145)
!2147 = !DILocation(line: 1419, column: 48, scope: !2145)
!2148 = !DILocation(line: 1419, column: 57, scope: !2145)
!2149 = !DILocation(line: 1419, column: 74, scope: !2145)
!2150 = !DILocation(line: 1419, column: 9, scope: !537)
!2151 = !DILocation(line: 1420, column: 9, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2145, file: !362, line: 1419, column: 81)
!2153 = !DILocation(line: 1421, column: 9, scope: !2152)
!2154 = !DILocation(line: 1423, column: 36, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !537, file: !362, line: 1423, column: 9)
!2156 = !DILocation(line: 1423, column: 10, scope: !2155)
!2157 = !DILocation(line: 1423, column: 9, scope: !537)
!2158 = !DILocation(line: 1424, column: 25, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2155, file: !362, line: 1423, column: 45)
!2160 = !DILocation(line: 1424, column: 9, scope: !2159)
!2161 = !DILocation(line: 1426, column: 9, scope: !2159)
!2162 = !DILocation(line: 1428, column: 5, scope: !537)
!2163 = !DILocation(line: 1429, column: 1, scope: !537)
!2164 = !DILocation(line: 1754, column: 29, scope: !540)
!2165 = !DILocation(line: 1754, column: 47, scope: !540)
!2166 = !DILocation(line: 1754, column: 64, scope: !540)
!2167 = !DILocation(line: 1754, column: 80, scope: !540)
!2168 = !DILocation(line: 1756, column: 5, scope: !540)
!2169 = !DILocation(line: 1756, column: 16, scope: !540)
!2170 = !DILocation(line: 1756, column: 19, scope: !540)
!2171 = !DILocation(line: 1757, column: 5, scope: !540)
!2172 = !DILocation(line: 1757, column: 16, scope: !540)
!2173 = !DILocation(line: 1758, column: 5, scope: !540)
!2174 = !DILocation(line: 1758, column: 13, scope: !540)
!2175 = !DILocation(line: 1761, column: 24, scope: !540)
!2176 = !DILocation(line: 1761, column: 5, scope: !540)
!2177 = !DILocation(line: 1768, column: 27, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !540, file: !362, line: 1768, column: 9)
!2179 = !DILocation(line: 1768, column: 35, scope: !2178)
!2180 = !DILocation(line: 1768, column: 46, scope: !2178)
!2181 = !DILocation(line: 1768, column: 55, scope: !2178)
!2182 = !DILocation(line: 1768, column: 72, scope: !2178)
!2183 = !DILocation(line: 1768, column: 9, scope: !540)
!2184 = !DILocation(line: 1769, column: 26, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2178, file: !362, line: 1768, column: 79)
!2186 = !DILocation(line: 1769, column: 9, scope: !2185)
!2187 = !DILocation(line: 1770, column: 25, scope: !2185)
!2188 = !DILocation(line: 1770, column: 9, scope: !2185)
!2189 = !DILocation(line: 1772, column: 9, scope: !2185)
!2190 = !DILocation(line: 1774, column: 26, scope: !540)
!2191 = !DILocation(line: 1774, column: 11, scope: !540)
!2192 = !DILocation(line: 1774, column: 34, scope: !540)
!2193 = !DILocation(line: 1774, column: 7, scope: !540)
!2194 = !DILocation(line: 1775, column: 9, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !540, file: !362, line: 1775, column: 9)
!2196 = !DILocation(line: 1775, column: 13, scope: !2195)
!2197 = !DILocation(line: 1775, column: 11, scope: !2195)
!2198 = !DILocation(line: 1775, column: 9, scope: !540)
!2199 = !DILocation(line: 1776, column: 13, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !362, line: 1776, column: 13)
!2201 = distinct !DILexicalBlock(scope: !2195, file: !362, line: 1775, column: 18)
!2202 = !DILocation(line: 1776, column: 18, scope: !2200)
!2203 = !DILocation(line: 1776, column: 13, scope: !2201)
!2204 = !DILocation(line: 1778, column: 17, scope: !2200)
!2205 = !DILocation(line: 1780, column: 17, scope: !2200)
!2206 = !DILocation(line: 1780, column: 24, scope: !2200)
!2207 = !DILocation(line: 1780, column: 31, scope: !2200)
!2208 = !DILocation(line: 1780, column: 28, scope: !2200)
!2209 = !DILocation(line: 1780, column: 56, scope: !2200)
!2210 = !DILocation(line: 1780, column: 61, scope: !2200)
!2211 = !DILocation(line: 1777, column: 13, scope: !2200)
!2212 = !DILocation(line: 1783, column: 17, scope: !2200)
!2213 = !DILocation(line: 1786, column: 18, scope: !2200)
!2214 = !DILocation(line: 1786, column: 25, scope: !2200)
!2215 = !DILocation(line: 1786, column: 22, scope: !2200)
!2216 = !DILocation(line: 1786, column: 50, scope: !2200)
!2217 = !DILocation(line: 1786, column: 55, scope: !2200)
!2218 = !DILocation(line: 1782, column: 13, scope: !2200)
!2219 = !DILocation(line: 1787, column: 26, scope: !2201)
!2220 = !DILocation(line: 1787, column: 9, scope: !2201)
!2221 = !DILocation(line: 1788, column: 9, scope: !2201)
!2222 = !DILocation(line: 1790, column: 9, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !540, file: !362, line: 1790, column: 9)
!2224 = !DILocation(line: 1790, column: 13, scope: !2223)
!2225 = !DILocation(line: 1790, column: 11, scope: !2223)
!2226 = !DILocation(line: 1790, column: 9, scope: !540)
!2227 = !DILocation(line: 1791, column: 13, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !362, line: 1791, column: 13)
!2229 = distinct !DILexicalBlock(scope: !2223, file: !362, line: 1790, column: 18)
!2230 = !DILocation(line: 1791, column: 18, scope: !2228)
!2231 = !DILocation(line: 1791, column: 13, scope: !2229)
!2232 = !DILocation(line: 1793, column: 17, scope: !2228)
!2233 = !DILocation(line: 1795, column: 17, scope: !2228)
!2234 = !DILocation(line: 1795, column: 24, scope: !2228)
!2235 = !DILocation(line: 1795, column: 31, scope: !2228)
!2236 = !DILocation(line: 1795, column: 28, scope: !2228)
!2237 = !DILocation(line: 1795, column: 55, scope: !2228)
!2238 = !DILocation(line: 1795, column: 60, scope: !2228)
!2239 = !DILocation(line: 1792, column: 13, scope: !2228)
!2240 = !DILocation(line: 1798, column: 17, scope: !2228)
!2241 = !DILocation(line: 1801, column: 18, scope: !2228)
!2242 = !DILocation(line: 1801, column: 25, scope: !2228)
!2243 = !DILocation(line: 1801, column: 22, scope: !2228)
!2244 = !DILocation(line: 1801, column: 49, scope: !2228)
!2245 = !DILocation(line: 1801, column: 54, scope: !2228)
!2246 = !DILocation(line: 1797, column: 13, scope: !2228)
!2247 = !DILocation(line: 1802, column: 26, scope: !2229)
!2248 = !DILocation(line: 1802, column: 9, scope: !2229)
!2249 = !DILocation(line: 1803, column: 9, scope: !2229)
!2250 = !DILocation(line: 1805, column: 12, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !540, file: !362, line: 1805, column: 5)
!2252 = !DILocation(line: 1805, column: 10, scope: !2251)
!2253 = !DILocation(line: 1805, column: 17, scope: !2254)
!2254 = !DILexicalBlockFile(scope: !2255, file: !362, discriminator: 2)
!2255 = !DILexicalBlockFile(scope: !2256, file: !362, discriminator: 1)
!2256 = distinct !DILexicalBlock(scope: !2251, file: !362, line: 1805, column: 5)
!2257 = !DILocation(line: 1805, column: 21, scope: !2256)
!2258 = !DILocation(line: 1805, column: 19, scope: !2256)
!2259 = !DILocation(line: 1805, column: 5, scope: !2251)
!2260 = !DILocation(line: 1806, column: 30, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2256, file: !362, line: 1805, column: 29)
!2262 = !DILocation(line: 1806, column: 13, scope: !2261)
!2263 = !DILocation(line: 1806, column: 13, scope: !2264)
!2264 = !DILexicalBlockFile(scope: !2261, file: !362, discriminator: 1)
!2265 = !DILocation(line: 1806, column: 13, scope: !2266)
!2266 = !DILexicalBlockFile(scope: !2261, file: !362, discriminator: 2)
!2267 = !DILocation(line: 1806, column: 13, scope: !2268)
!2268 = !DILexicalBlockFile(scope: !2269, file: !362, discriminator: 4)
!2269 = !DILexicalBlockFile(scope: !2261, file: !362, discriminator: 3)
!2270 = !DILocation(line: 1806, column: 11, scope: !2261)
!2271 = !DILocation(line: 1807, column: 50, scope: !2261)
!2272 = !DILocation(line: 1807, column: 34, scope: !2261)
!2273 = !DILocation(line: 1807, column: 16, scope: !2261)
!2274 = !DILocation(line: 1807, column: 42, scope: !2261)
!2275 = !DILocation(line: 1807, column: 15, scope: !2261)
!2276 = !DILocation(line: 1807, column: 10, scope: !2261)
!2277 = !DILocation(line: 1807, column: 12, scope: !2261)
!2278 = !DILocation(line: 1808, column: 5, scope: !2261)
!2279 = !DILocation(line: 1805, column: 25, scope: !2256)
!2280 = !DILocation(line: 1805, column: 5, scope: !2256)
!2281 = !DILocation(line: 1809, column: 22, scope: !540)
!2282 = !DILocation(line: 1809, column: 5, scope: !540)
!2283 = !DILocation(line: 1810, column: 5, scope: !540)
!2284 = !DILocation(line: 1811, column: 1, scope: !540)
!2285 = !DILocation(line: 1820, column: 31, scope: !553)
!2286 = !DILocation(line: 1820, column: 51, scope: !553)
!2287 = !DILocation(line: 1822, column: 9, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !553, file: !362, line: 1822, column: 9)
!2289 = !DILocation(line: 1822, column: 12, scope: !2288)
!2290 = !DILocation(line: 1822, column: 9, scope: !553)
!2291 = !DILocation(line: 1823, column: 9, scope: !2288)
!2292 = !DILocation(line: 1824, column: 25, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !553, file: !362, line: 1824, column: 9)
!2294 = !DILocation(line: 1824, column: 31, scope: !2293)
!2295 = !DILocation(line: 1824, column: 40, scope: !2293)
!2296 = !DILocation(line: 1824, column: 9, scope: !553)
!2297 = !DILocation(line: 1825, column: 9, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2293, file: !362, line: 1824, column: 58)
!2299 = !DILocation(line: 1826, column: 9, scope: !2298)
!2300 = !DILocation(line: 1828, column: 21, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !553, file: !362, line: 1828, column: 9)
!2302 = !DILocation(line: 1828, column: 9, scope: !2301)
!2303 = !DILocation(line: 1828, column: 25, scope: !2301)
!2304 = !DILocation(line: 1828, column: 9, scope: !553)
!2305 = !DILocation(line: 1829, column: 9, scope: !2301)
!2306 = !DILocation(line: 1831, column: 18, scope: !553)
!2307 = !DILocation(line: 1832, column: 21, scope: !553)
!2308 = !DILocation(line: 1831, column: 5, scope: !553)
!2309 = !DILocation(line: 1833, column: 5, scope: !553)
!2310 = !DILocation(line: 1834, column: 1, scope: !553)
!2311 = !DILocation(line: 1838, column: 33, scope: !559)
!2312 = !DILocation(line: 1838, column: 53, scope: !559)
!2313 = !DILocation(line: 1840, column: 9, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !559, file: !362, line: 1840, column: 9)
!2315 = !DILocation(line: 1840, column: 14, scope: !2314)
!2316 = !DILocation(line: 1840, column: 9, scope: !559)
!2317 = !DILocation(line: 1841, column: 9, scope: !2314)
!2318 = !DILocation(line: 1842, column: 25, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !559, file: !362, line: 1842, column: 9)
!2320 = !DILocation(line: 1842, column: 33, scope: !2319)
!2321 = !DILocation(line: 1842, column: 42, scope: !2319)
!2322 = !DILocation(line: 1842, column: 9, scope: !559)
!2323 = !DILocation(line: 1843, column: 9, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2319, file: !362, line: 1842, column: 61)
!2325 = !DILocation(line: 1844, column: 9, scope: !2324)
!2326 = !DILocation(line: 1846, column: 26, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !559, file: !362, line: 1846, column: 9)
!2328 = !DILocation(line: 1846, column: 11, scope: !2327)
!2329 = !DILocation(line: 1846, column: 34, scope: !2327)
!2330 = !DILocation(line: 1846, column: 43, scope: !2327)
!2331 = !DILocation(line: 1846, column: 9, scope: !559)
!2332 = !DILocation(line: 1847, column: 9, scope: !2327)
!2333 = !DILocation(line: 1849, column: 18, scope: !559)
!2334 = !DILocation(line: 1850, column: 21, scope: !559)
!2335 = !DILocation(line: 1849, column: 5, scope: !559)
!2336 = !DILocation(line: 1851, column: 5, scope: !559)
!2337 = !DILocation(line: 1852, column: 1, scope: !559)
!2338 = !DILocation(line: 179, column: 17, scope: !604)
!2339 = !DILocation(line: 179, column: 37, scope: !604)
!2340 = !DILocation(line: 181, column: 5, scope: !604)
!2341 = !DILocation(line: 181, column: 9, scope: !604)
!2342 = !DILocation(line: 183, column: 9, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !604, file: !362, line: 183, column: 9)
!2344 = !DILocation(line: 183, column: 16, scope: !2343)
!2345 = !DILocation(line: 183, column: 9, scope: !604)
!2346 = !DILocation(line: 187, column: 18, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !362, line: 187, column: 7)
!2348 = distinct !DILexicalBlock(scope: !2343, file: !362, line: 183, column: 22)
!2349 = !DILocation(line: 187, column: 12, scope: !2347)
!2350 = !DILocation(line: 187, column: 23, scope: !2351)
!2351 = !DILexicalBlockFile(scope: !2352, file: !362, discriminator: 2)
!2352 = !DILexicalBlockFile(scope: !2353, file: !362, discriminator: 1)
!2353 = distinct !DILexicalBlock(scope: !2347, file: !362, line: 187, column: 7)
!2354 = !DILocation(line: 187, column: 31, scope: !2353)
!2355 = !DILocation(line: 187, column: 41, scope: !2353)
!2356 = !DILocation(line: 187, column: 29, scope: !2353)
!2357 = !DILocation(line: 187, column: 7, scope: !2347)
!2358 = !DILocation(line: 188, column: 29, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2353, file: !362, line: 187, column: 67)
!2360 = !DILocation(line: 188, column: 11, scope: !2359)
!2361 = !DILocation(line: 188, column: 21, scope: !2359)
!2362 = !DILocation(line: 188, column: 36, scope: !2359)
!2363 = !{!2364, !982, i64 8}
!2364 = !{!"", !982, i64 0, !982, i64 8}
!2365 = !DILocation(line: 189, column: 65, scope: !2359)
!2366 = !DILocation(line: 189, column: 47, scope: !2359)
!2367 = !DILocation(line: 189, column: 57, scope: !2359)
!2368 = !DILocation(line: 189, column: 72, scope: !2359)
!2369 = !{!2364, !982, i64 0}
!2370 = !DILocation(line: 190, column: 7, scope: !2359)
!2371 = !DILocation(line: 187, column: 58, scope: !2353)
!2372 = !DILocation(line: 187, column: 7, scope: !2353)
!2373 = !DILocation(line: 191, column: 5, scope: !2348)
!2374 = !DILocation(line: 192, column: 9, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !604, file: !362, line: 192, column: 9)
!2376 = !DILocation(line: 192, column: 19, scope: !2375)
!2377 = !DILocation(line: 192, column: 9, scope: !604)
!2378 = !DILocation(line: 193, column: 20, scope: !2375)
!2379 = !DILocation(line: 193, column: 30, scope: !2375)
!2380 = !DILocation(line: 193, column: 9, scope: !2375)
!2381 = !DILocation(line: 194, column: 12, scope: !604)
!2382 = !DILocation(line: 195, column: 1, scope: !604)
!2383 = !DILocation(line: 194, column: 5, scope: !604)
!2384 = !DILocation(line: 505, column: 23, scope: !612)
!2385 = !DILocation(line: 505, column: 41, scope: !612)
!2386 = !DILocation(line: 505, column: 60, scope: !612)
!2387 = !DILocation(line: 505, column: 70, scope: !612)
!2388 = !DILocation(line: 506, column: 18, scope: !612)
!2389 = !DILocation(line: 506, column: 32, scope: !612)
!2390 = !DILocation(line: 506, column: 47, scope: !612)
!2391 = !DILocation(line: 506, column: 68, scope: !612)
!2392 = !DILocation(line: 508, column: 5, scope: !612)
!2393 = !DILocation(line: 508, column: 11, scope: !612)
!2394 = !DILocation(line: 509, column: 5, scope: !612)
!2395 = !DILocation(line: 509, column: 17, scope: !612)
!2396 = !DILocation(line: 509, column: 27, scope: !612)
!2397 = !DILocation(line: 509, column: 26, scope: !612)
!2398 = !DILocation(line: 511, column: 10, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !612, file: !362, line: 511, column: 9)
!2400 = !DILocation(line: 511, column: 9, scope: !2399)
!2401 = !DILocation(line: 511, column: 17, scope: !2399)
!2402 = !DILocation(line: 511, column: 9, scope: !612)
!2403 = !DILocation(line: 512, column: 15, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2399, file: !362, line: 511, column: 26)
!2405 = !DILocation(line: 513, column: 28, scope: !2404)
!2406 = !DILocation(line: 513, column: 42, scope: !2404)
!2407 = !DILocation(line: 513, column: 48, scope: !2404)
!2408 = !DILocation(line: 513, column: 55, scope: !2404)
!2409 = !DILocation(line: 513, column: 63, scope: !2404)
!2410 = !DILocation(line: 514, column: 28, scope: !2404)
!2411 = !DILocation(line: 514, column: 40, scope: !2404)
!2412 = !DILocation(line: 513, column: 15, scope: !2404)
!2413 = !DILocation(line: 513, column: 13, scope: !2404)
!2414 = !DILocation(line: 515, column: 13, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2404, file: !362, line: 515, column: 13)
!2416 = !DILocation(line: 515, column: 17, scope: !2415)
!2417 = !DILocation(line: 515, column: 13, scope: !2404)
!2418 = !DILocation(line: 516, column: 19, scope: !2415)
!2419 = !DILocation(line: 516, column: 13, scope: !2415)
!2420 = !DILocation(line: 517, column: 5, scope: !2404)
!2421 = !DILocation(line: 519, column: 29, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2399, file: !362, line: 518, column: 10)
!2423 = !DILocation(line: 519, column: 43, scope: !2422)
!2424 = !DILocation(line: 519, column: 49, scope: !2422)
!2425 = !DILocation(line: 520, column: 29, scope: !2422)
!2426 = !DILocation(line: 520, column: 37, scope: !2422)
!2427 = !DILocation(line: 520, column: 46, scope: !2422)
!2428 = !DILocation(line: 519, column: 15, scope: !2422)
!2429 = !DILocation(line: 519, column: 13, scope: !2422)
!2430 = !DILocation(line: 521, column: 13, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2422, file: !362, line: 521, column: 13)
!2432 = !DILocation(line: 521, column: 17, scope: !2431)
!2433 = !DILocation(line: 521, column: 13, scope: !2422)
!2434 = !DILocation(line: 522, column: 13, scope: !2431)
!2435 = !DILocation(line: 522, column: 23, scope: !2431)
!2436 = !DILocation(line: 524, column: 9, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !612, file: !362, line: 524, column: 9)
!2438 = !DILocation(line: 524, column: 13, scope: !2437)
!2439 = !DILocation(line: 524, column: 9, scope: !612)
!2440 = !DILocation(line: 525, column: 21, scope: !2437)
!2441 = !DILocation(line: 525, column: 10, scope: !2437)
!2442 = !DILocation(line: 525, column: 19, scope: !2437)
!2443 = !DILocation(line: 525, column: 9, scope: !2437)
!2444 = !DILocation(line: 526, column: 12, scope: !612)
!2445 = !DILocation(line: 527, column: 1, scope: !612)
!2446 = !DILocation(line: 526, column: 5, scope: !612)
!2447 = !DILocation(line: 364, column: 21, scope: !919)
!2448 = !DILocation(line: 364, column: 39, scope: !919)
!2449 = !DILocation(line: 364, column: 49, scope: !919)
!2450 = !DILocation(line: 364, column: 69, scope: !919)
!2451 = !DILocation(line: 365, column: 22, scope: !919)
!2452 = !DILocation(line: 367, column: 5, scope: !919)
!2453 = !DILocation(line: 367, column: 10, scope: !919)
!2454 = !DILocation(line: 368, column: 5, scope: !919)
!2455 = !DILocation(line: 368, column: 9, scope: !919)
!2456 = !DILocation(line: 369, column: 5, scope: !919)
!2457 = !DILocation(line: 369, column: 11, scope: !919)
!2458 = !DILocation(line: 369, column: 15, scope: !919)
!2459 = !DILocation(line: 371, column: 9, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !919, file: !362, line: 371, column: 9)
!2461 = !DILocation(line: 371, column: 9, scope: !919)
!2462 = !DILocation(line: 372, column: 9, scope: !2460)
!2463 = !DILocation(line: 373, column: 14, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2460, file: !362, line: 373, column: 14)
!2465 = !DILocation(line: 373, column: 22, scope: !2464)
!2466 = !DILocation(line: 373, column: 14, scope: !2460)
!2467 = !DILocation(line: 374, column: 13, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2469, file: !362, line: 374, column: 13)
!2469 = distinct !DILexicalBlock(scope: !2464, file: !362, line: 373, column: 37)
!2470 = !DILocation(line: 374, column: 19, scope: !2468)
!2471 = !DILocation(line: 374, column: 13, scope: !2469)
!2472 = !DILocation(line: 375, column: 27, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2468, file: !362, line: 374, column: 34)
!2474 = !DILocation(line: 375, column: 56, scope: !2473)
!2475 = !DILocation(line: 375, column: 13, scope: !2473)
!2476 = !DILocation(line: 376, column: 25, scope: !2473)
!2477 = !DILocation(line: 376, column: 18, scope: !2473)
!2478 = !DILocation(line: 376, column: 15, scope: !2473)
!2479 = !DILocation(line: 377, column: 9, scope: !2473)
!2480 = !DILocation(line: 378, column: 13, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2469, file: !362, line: 378, column: 13)
!2482 = !DILocation(line: 378, column: 18, scope: !2481)
!2483 = !DILocation(line: 378, column: 13, scope: !2469)
!2484 = !DILocation(line: 379, column: 27, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2481, file: !362, line: 378, column: 24)
!2486 = !DILocation(line: 379, column: 45, scope: !2485)
!2487 = !DILocation(line: 379, column: 49, scope: !2485)
!2488 = !DILocation(line: 379, column: 47, scope: !2485)
!2489 = !DILocation(line: 379, column: 42, scope: !2485)
!2490 = !DILocation(line: 380, column: 49, scope: !2485)
!2491 = !DILocation(line: 379, column: 13, scope: !2485)
!2492 = !DILocation(line: 381, column: 15, scope: !2485)
!2493 = !DILocation(line: 382, column: 25, scope: !2485)
!2494 = !DILocation(line: 382, column: 18, scope: !2485)
!2495 = !DILocation(line: 382, column: 15, scope: !2485)
!2496 = !DILocation(line: 383, column: 13, scope: !2485)
!2497 = !DILocation(line: 383, column: 20, scope: !2498)
!2498 = !DILexicalBlockFile(scope: !2499, file: !362, discriminator: 6)
!2499 = !DILexicalBlockFile(scope: !2485, file: !362, discriminator: 1)
!2500 = !DILocation(line: 383, column: 22, scope: !2485)
!2501 = !DILocation(line: 383, column: 27, scope: !2485)
!2502 = !DILocation(line: 383, column: 37, scope: !2503)
!2503 = !DILexicalBlockFile(scope: !2485, file: !362, discriminator: 2)
!2504 = !DILocation(line: 383, column: 30, scope: !2485)
!2505 = !DILocation(line: 383, column: 40, scope: !2485)
!2506 = !DILocation(line: 383, column: 44, scope: !2485)
!2507 = !DILocation(line: 383, column: 53, scope: !2508)
!2508 = !DILexicalBlockFile(scope: !2485, file: !362, discriminator: 4)
!2509 = !DILocation(line: 383, column: 55, scope: !2485)
!2510 = !DILocation(line: 383, column: 54, scope: !2485)
!2511 = !DILocation(line: 383, column: 47, scope: !2485)
!2512 = !DILocation(line: 383, column: 60, scope: !2485)
!2513 = !DILocation(line: 383, column: 13, scope: !2514)
!2514 = !DILexicalBlockFile(scope: !2515, file: !362, discriminator: 5)
!2515 = !DILexicalBlockFile(scope: !2485, file: !362, discriminator: 3)
!2516 = !DILocation(line: 384, column: 31, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2485, file: !362, line: 383, column: 67)
!2518 = !DILocation(line: 384, column: 49, scope: !2517)
!2519 = !DILocation(line: 384, column: 53, scope: !2517)
!2520 = !DILocation(line: 384, column: 51, scope: !2517)
!2521 = !DILocation(line: 384, column: 46, scope: !2517)
!2522 = !DILocation(line: 385, column: 51, scope: !2517)
!2523 = !DILocation(line: 385, column: 44, scope: !2517)
!2524 = !DILocation(line: 385, column: 53, scope: !2517)
!2525 = !DILocation(line: 384, column: 17, scope: !2517)
!2526 = !DILocation(line: 386, column: 29, scope: !2517)
!2527 = !DILocation(line: 386, column: 22, scope: !2517)
!2528 = !DILocation(line: 386, column: 19, scope: !2517)
!2529 = !DILocation(line: 387, column: 18, scope: !2517)
!2530 = !DILocation(line: 389, column: 9, scope: !2485)
!2531 = !DILocation(line: 391, column: 27, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2481, file: !362, line: 390, column: 14)
!2533 = !DILocation(line: 391, column: 45, scope: !2532)
!2534 = !DILocation(line: 391, column: 49, scope: !2532)
!2535 = !DILocation(line: 391, column: 47, scope: !2532)
!2536 = !DILocation(line: 391, column: 42, scope: !2532)
!2537 = !DILocation(line: 391, column: 13, scope: !2532)
!2538 = !DILocation(line: 392, column: 25, scope: !2532)
!2539 = !DILocation(line: 392, column: 18, scope: !2532)
!2540 = !DILocation(line: 392, column: 15, scope: !2532)
!2541 = !DILocation(line: 394, column: 23, scope: !2469)
!2542 = !DILocation(line: 394, column: 41, scope: !2469)
!2543 = !DILocation(line: 394, column: 45, scope: !2469)
!2544 = !DILocation(line: 394, column: 43, scope: !2469)
!2545 = !DILocation(line: 394, column: 38, scope: !2469)
!2546 = !DILocation(line: 394, column: 62, scope: !2469)
!2547 = !DILocation(line: 394, column: 9, scope: !2469)
!2548 = !DILocation(line: 395, column: 19, scope: !2469)
!2549 = !DILocation(line: 395, column: 17, scope: !2469)
!2550 = !DILocation(line: 396, column: 5, scope: !2469)
!2551 = !DILocation(line: 397, column: 21, scope: !919)
!2552 = !DILocation(line: 397, column: 38, scope: !919)
!2553 = !DILocation(line: 397, column: 5, scope: !919)
!2554 = !DILocation(line: 398, column: 1, scope: !919)
!2555 = !DILocation(line: 398, column: 1, scope: !2556)
!2556 = !DILexicalBlockFile(scope: !919, file: !362, discriminator: 1)
!2557 = !DILocation(line: 420, column: 24, scope: !628)
!2558 = !DILocation(line: 420, column: 42, scope: !628)
!2559 = !DILocation(line: 420, column: 61, scope: !628)
!2560 = !DILocation(line: 420, column: 71, scope: !628)
!2561 = !DILocation(line: 421, column: 19, scope: !628)
!2562 = !DILocation(line: 421, column: 33, scope: !628)
!2563 = !DILocation(line: 421, column: 48, scope: !628)
!2564 = !DILocation(line: 421, column: 61, scope: !628)
!2565 = !DILocation(line: 422, column: 26, scope: !628)
!2566 = !DILocation(line: 424, column: 5, scope: !628)
!2567 = !DILocation(line: 424, column: 9, scope: !628)
!2568 = !DILocation(line: 425, column: 5, scope: !628)
!2569 = !DILocation(line: 425, column: 9, scope: !628)
!2570 = !DILocation(line: 426, column: 5, scope: !628)
!2571 = !DILocation(line: 426, column: 17, scope: !628)
!2572 = !DILocation(line: 426, column: 27, scope: !628)
!2573 = !DILocation(line: 426, column: 26, scope: !628)
!2574 = !DILocation(line: 427, column: 5, scope: !628)
!2575 = !DILocation(line: 427, column: 9, scope: !628)
!2576 = !DILocation(line: 428, column: 5, scope: !628)
!2577 = !DILocation(line: 428, column: 16, scope: !628)
!2578 = !DILocation(line: 430, column: 5, scope: !628)
!2579 = !DILocation(line: 431, column: 9, scope: !647)
!2580 = !DILocation(line: 431, column: 13, scope: !647)
!2581 = !DILocation(line: 431, column: 24, scope: !647)
!2582 = !DILocation(line: 431, column: 17, scope: !647)
!2583 = !DILocation(line: 432, column: 13, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !647, file: !362, line: 432, column: 13)
!2585 = !DILocation(line: 432, column: 15, scope: !2584)
!2586 = !DILocation(line: 432, column: 13, scope: !647)
!2587 = !DILocation(line: 433, column: 17, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !362, line: 433, column: 17)
!2589 = distinct !DILexicalBlock(scope: !2584, file: !362, line: 432, column: 23)
!2590 = !DILocation(line: 433, column: 23, scope: !2588)
!2591 = !DILocation(line: 433, column: 17, scope: !2589)
!2592 = !DILocation(line: 434, column: 18, scope: !2588)
!2593 = !DILocation(line: 434, column: 17, scope: !2588)
!2594 = !DILocation(line: 435, column: 18, scope: !2589)
!2595 = !DILocation(line: 436, column: 9, scope: !2589)
!2596 = !DILocation(line: 437, column: 18, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2584, file: !362, line: 437, column: 18)
!2598 = !DILocation(line: 437, column: 20, scope: !2597)
!2599 = !DILocation(line: 437, column: 18, scope: !2584)
!2600 = !DILocation(line: 438, column: 17, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !362, line: 438, column: 17)
!2602 = distinct !DILexicalBlock(scope: !2597, file: !362, line: 437, column: 28)
!2603 = !DILocation(line: 438, column: 23, scope: !2601)
!2604 = !DILocation(line: 438, column: 17, scope: !2602)
!2605 = !DILocation(line: 439, column: 17, scope: !2601)
!2606 = !DILocation(line: 440, column: 18, scope: !2602)
!2607 = !DILocation(line: 441, column: 9, scope: !2602)
!2608 = !DILocation(line: 442, column: 18, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2597, file: !362, line: 442, column: 18)
!2610 = !DILocation(line: 442, column: 20, scope: !2609)
!2611 = !DILocation(line: 442, column: 27, scope: !2609)
!2612 = !DILocation(line: 442, column: 30, scope: !2613)
!2613 = !DILexicalBlockFile(scope: !2609, file: !362, discriminator: 1)
!2614 = !DILocation(line: 442, column: 32, scope: !2609)
!2615 = !DILocation(line: 442, column: 39, scope: !2609)
!2616 = !DILocation(line: 442, column: 42, scope: !2617)
!2617 = !DILexicalBlockFile(scope: !2609, file: !362, discriminator: 2)
!2618 = !DILocation(line: 442, column: 44, scope: !2609)
!2619 = !DILocation(line: 442, column: 18, scope: !2597)
!2620 = !DILocation(line: 443, column: 13, scope: !2609)
!2621 = !DILocation(line: 444, column: 18, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2609, file: !362, line: 444, column: 18)
!2623 = !DILocation(line: 444, column: 24, scope: !2622)
!2624 = !DILocation(line: 444, column: 29, scope: !2622)
!2625 = !DILocation(line: 444, column: 85, scope: !2626)
!2626 = !DILexicalBlockFile(scope: !2622, file: !362, discriminator: 1)
!2627 = !DILocation(line: 444, column: 88, scope: !2622)
!2628 = !DILocation(line: 444, column: 68, scope: !2622)
!2629 = !DILocation(line: 444, column: 66, scope: !2622)
!2630 = !DILocation(line: 444, column: 98, scope: !2622)
!2631 = !DILocation(line: 444, column: 50, scope: !2622)
!2632 = !DILocation(line: 444, column: 33, scope: !2622)
!2633 = !DILocation(line: 444, column: 108, scope: !2622)
!2634 = !DILocation(line: 444, column: 18, scope: !2609)
!2635 = !DILocation(line: 445, column: 14, scope: !2622)
!2636 = !DILocation(line: 445, column: 13, scope: !2622)
!2637 = !DILocation(line: 446, column: 5, scope: !648)
!2638 = !DILocation(line: 446, column: 5, scope: !2639)
!2639 = !DILexicalBlockFile(scope: !648, file: !362, discriminator: 1)
!2640 = !DILocation(line: 430, column: 5, scope: !648)
!2641 = !DILocation(line: 448, column: 27, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !628, file: !362, line: 448, column: 9)
!2643 = !DILocation(line: 448, column: 10, scope: !2642)
!2644 = !DILocation(line: 448, column: 32, scope: !2642)
!2645 = !DILocation(line: 448, column: 52, scope: !2646)
!2646 = !DILexicalBlockFile(scope: !2642, file: !362, discriminator: 1)
!2647 = !DILocation(line: 448, column: 59, scope: !2642)
!2648 = !DILocation(line: 448, column: 70, scope: !2642)
!2649 = !DILocation(line: 448, column: 79, scope: !2642)
!2650 = !DILocation(line: 448, column: 96, scope: !2642)
!2651 = !DILocation(line: 448, column: 9, scope: !628)
!2652 = !DILocation(line: 449, column: 9, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2642, file: !362, line: 448, column: 103)
!2654 = !DILocation(line: 449, column: 19, scope: !2653)
!2655 = !DILocation(line: 450, column: 23, scope: !2653)
!2656 = !DILocation(line: 450, column: 31, scope: !2653)
!2657 = !DILocation(line: 451, column: 23, scope: !2653)
!2658 = !DILocation(line: 453, column: 19, scope: !2653)
!2659 = !DILocation(line: 454, column: 19, scope: !2653)
!2660 = !DILocation(line: 454, column: 23, scope: !2653)
!2661 = !DILocation(line: 454, column: 19, scope: !2662)
!2662 = !DILexicalBlockFile(scope: !2653, file: !362, discriminator: 1)
!2663 = !DILocation(line: 454, column: 55, scope: !2664)
!2664 = !DILexicalBlockFile(scope: !2653, file: !362, discriminator: 2)
!2665 = !DILocation(line: 454, column: 60, scope: !2653)
!2666 = !DILocation(line: 454, column: 69, scope: !2653)
!2667 = !{!1264, !982, i64 24}
!2668 = !DILocation(line: 450, column: 9, scope: !2653)
!2669 = !DILocation(line: 455, column: 16, scope: !2653)
!2670 = !DILocation(line: 455, column: 9, scope: !2653)
!2671 = !DILocation(line: 458, column: 27, scope: !628)
!2672 = !DILocation(line: 458, column: 11, scope: !628)
!2673 = !DILocation(line: 458, column: 9, scope: !628)
!2674 = !DILocation(line: 459, column: 9, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !628, file: !362, line: 459, column: 9)
!2676 = !DILocation(line: 459, column: 16, scope: !2675)
!2677 = !DILocation(line: 459, column: 13, scope: !2675)
!2678 = !DILocation(line: 459, column: 9, scope: !628)
!2679 = !DILocation(line: 460, column: 9, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2675, file: !362, line: 459, column: 19)
!2681 = !DILocation(line: 460, column: 19, scope: !2680)
!2682 = !DILocation(line: 461, column: 13, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2680, file: !362, line: 461, column: 13)
!2684 = !DILocation(line: 461, column: 13, scope: !2680)
!2685 = !DILocation(line: 462, column: 27, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2683, file: !362, line: 461, column: 23)
!2687 = !DILocation(line: 462, column: 35, scope: !2686)
!2688 = !DILocation(line: 464, column: 27, scope: !2686)
!2689 = !DILocation(line: 464, column: 30, scope: !2686)
!2690 = !DILocation(line: 462, column: 13, scope: !2686)
!2691 = !DILocation(line: 465, column: 9, scope: !2686)
!2692 = !DILocation(line: 467, column: 27, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2683, file: !362, line: 466, column: 14)
!2694 = !DILocation(line: 467, column: 35, scope: !2693)
!2695 = !DILocation(line: 470, column: 27, scope: !2693)
!2696 = !DILocation(line: 470, column: 30, scope: !2693)
!2697 = !DILocation(line: 467, column: 13, scope: !2693)
!2698 = !DILocation(line: 472, column: 16, scope: !2680)
!2699 = !DILocation(line: 472, column: 9, scope: !2680)
!2700 = !DILocation(line: 475, column: 15, scope: !628)
!2701 = !DILocation(line: 475, column: 14, scope: !628)
!2702 = !DILocation(line: 475, column: 12, scope: !628)
!2703 = !DILocation(line: 476, column: 12, scope: !653)
!2704 = !DILocation(line: 476, column: 10, scope: !653)
!2705 = !DILocation(line: 476, column: 17, scope: !2706)
!2706 = !DILexicalBlockFile(scope: !2707, file: !362, discriminator: 2)
!2707 = !DILexicalBlockFile(scope: !652, file: !362, discriminator: 1)
!2708 = !DILocation(line: 476, column: 21, scope: !652)
!2709 = !DILocation(line: 476, column: 19, scope: !652)
!2710 = !DILocation(line: 476, column: 5, scope: !653)
!2711 = !DILocation(line: 477, column: 9, scope: !651)
!2712 = !DILocation(line: 477, column: 15, scope: !651)
!2713 = !DILocation(line: 478, column: 9, scope: !651)
!2714 = !DILocation(line: 478, column: 19, scope: !651)
!2715 = !DILocation(line: 479, column: 35, scope: !651)
!2716 = !DILocation(line: 479, column: 40, scope: !651)
!2717 = !DILocation(line: 479, column: 16, scope: !651)
!2718 = !DILocation(line: 479, column: 14, scope: !651)
!2719 = !DILocation(line: 480, column: 13, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !651, file: !362, line: 480, column: 13)
!2721 = !DILocation(line: 480, column: 18, scope: !2720)
!2722 = !DILocation(line: 480, column: 13, scope: !651)
!2723 = !DILocation(line: 481, column: 13, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2720, file: !362, line: 480, column: 33)
!2725 = !DILocation(line: 482, column: 25, scope: !2724)
!2726 = !DILocation(line: 482, column: 26, scope: !2724)
!2727 = !DILocation(line: 482, column: 13, scope: !2724)
!2728 = !DILocation(line: 482, column: 23, scope: !2724)
!2729 = !DILocation(line: 483, column: 13, scope: !2724)
!2730 = !DILocation(line: 483, column: 23, scope: !2724)
!2731 = !DILocation(line: 484, column: 32, scope: !2724)
!2732 = !DILocation(line: 484, column: 62, scope: !2724)
!2733 = !DILocation(line: 484, column: 13, scope: !2724)
!2734 = !DILocation(line: 485, column: 20, scope: !2724)
!2735 = !DILocation(line: 485, column: 13, scope: !2724)
!2736 = !DILocation(line: 487, column: 27, scope: !651)
!2737 = !DILocation(line: 487, column: 42, scope: !651)
!2738 = !DILocation(line: 487, column: 48, scope: !651)
!2739 = !DILocation(line: 487, column: 55, scope: !651)
!2740 = !DILocation(line: 487, column: 61, scope: !651)
!2741 = !DILocation(line: 488, column: 27, scope: !651)
!2742 = !DILocation(line: 488, column: 35, scope: !651)
!2743 = !DILocation(line: 488, column: 44, scope: !651)
!2744 = !DILocation(line: 487, column: 15, scope: !651)
!2745 = !DILocation(line: 487, column: 13, scope: !651)
!2746 = !DILocation(line: 490, column: 9, scope: !651)
!2747 = !DILocation(line: 490, column: 14, scope: !2748)
!2748 = !DILexicalBlockFile(scope: !656, file: !362, discriminator: 1)
!2749 = !DILocation(line: 490, column: 24, scope: !656)
!2750 = !DILocation(line: 490, column: 55, scope: !656)
!2751 = !DILocation(line: 490, column: 66, scope: !659)
!2752 = !DILocation(line: 490, column: 82, scope: !659)
!2753 = !DILocation(line: 490, column: 66, scope: !656)
!2754 = !DILocation(line: 490, column: 97, scope: !2755)
!2755 = !DILexicalBlockFile(scope: !659, file: !362, discriminator: 2)
!2756 = !DILocation(line: 490, column: 102, scope: !2757)
!2757 = !DILexicalBlockFile(scope: !658, file: !362, discriminator: 4)
!2758 = !DILocation(line: 490, column: 112, scope: !658)
!2759 = !DILocation(line: 490, column: 142, scope: !658)
!2760 = !DILocation(line: 490, column: 168, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !658, file: !362, line: 490, column: 165)
!2762 = !DILocation(line: 490, column: 185, scope: !2761)
!2763 = !DILocation(line: 490, column: 165, scope: !2761)
!2764 = !{!1260, !1261, i64 0}
!2765 = !DILocation(line: 490, column: 195, scope: !2761)
!2766 = !DILocation(line: 490, column: 165, scope: !658)
!2767 = !DILocation(line: 490, column: 165, scope: !2768)
!2768 = !DILexicalBlockFile(scope: !658, file: !362, discriminator: 5)
!2769 = !DILocation(line: 490, column: 226, scope: !2770)
!2770 = !DILexicalBlockFile(scope: !2761, file: !362, discriminator: 6)
!2771 = !DILocation(line: 490, column: 244, scope: !2761)
!2772 = !DILocation(line: 490, column: 254, scope: !2761)
!2773 = !{!1264, !982, i64 48}
!2774 = !DILocation(line: 490, column: 279, scope: !2761)
!2775 = !DILocation(line: 490, column: 210, scope: !2761)
!2776 = !DILocation(line: 490, column: 298, scope: !2777)
!2777 = !DILexicalBlockFile(scope: !659, file: !362, discriminator: 7)
!2778 = !DILocation(line: 490, column: 298, scope: !658)
!2779 = !DILocation(line: 490, column: 298, scope: !2780)
!2780 = !DILexicalBlockFile(scope: !658, file: !362, discriminator: 8)
!2781 = !DILocation(line: 490, column: 298, scope: !2782)
!2782 = !DILexicalBlockFile(scope: !658, file: !362, discriminator: 9)
!2783 = !DILocation(line: 490, column: 311, scope: !2784)
!2784 = !DILexicalBlockFile(scope: !2785, file: !362, discriminator: 10)
!2785 = !DILexicalBlockFile(scope: !651, file: !362, discriminator: 3)
!2786 = !DILocation(line: 490, column: 311, scope: !656)
!2787 = !DILocation(line: 490, column: 311, scope: !2788)
!2788 = !DILexicalBlockFile(scope: !656, file: !362, discriminator: 11)
!2789 = !DILocation(line: 491, column: 13, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !651, file: !362, line: 491, column: 13)
!2791 = !DILocation(line: 491, column: 17, scope: !2790)
!2792 = !DILocation(line: 491, column: 13, scope: !651)
!2793 = !DILocation(line: 492, column: 25, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2790, file: !362, line: 491, column: 32)
!2795 = !DILocation(line: 492, column: 26, scope: !2794)
!2796 = !DILocation(line: 492, column: 13, scope: !2794)
!2797 = !DILocation(line: 492, column: 23, scope: !2794)
!2798 = !DILocation(line: 493, column: 20, scope: !2794)
!2799 = !DILocation(line: 493, column: 13, scope: !2794)
!2800 = !DILocation(line: 495, column: 5, scope: !652)
!2801 = !DILocation(line: 495, column: 5, scope: !2707)
!2802 = !DILocation(line: 495, column: 5, scope: !651)
!2803 = !DILocation(line: 476, column: 25, scope: !652)
!2804 = !DILocation(line: 476, column: 5, scope: !652)
!2805 = !DILocation(line: 497, column: 17, scope: !628)
!2806 = !DILocation(line: 497, column: 6, scope: !628)
!2807 = !DILocation(line: 497, column: 15, scope: !628)
!2808 = !DILocation(line: 498, column: 5, scope: !628)
!2809 = !DILocation(line: 499, column: 1, scope: !628)
!2810 = !DILocation(line: 570, column: 25, scope: !660)
!2811 = !DILocation(line: 570, column: 43, scope: !660)
!2812 = !DILocation(line: 570, column: 62, scope: !660)
!2813 = !DILocation(line: 570, column: 72, scope: !660)
!2814 = !DILocation(line: 571, column: 21, scope: !660)
!2815 = !DILocation(line: 571, column: 36, scope: !660)
!2816 = !DILocation(line: 571, column: 57, scope: !660)
!2817 = !DILocation(line: 591, column: 5, scope: !660)
!2818 = !DILocation(line: 591, column: 17, scope: !660)
!2819 = !DILocation(line: 591, column: 27, scope: !660)
!2820 = !DILocation(line: 591, column: 26, scope: !660)
!2821 = !DILocation(line: 592, column: 5, scope: !660)
!2822 = !DILocation(line: 592, column: 10, scope: !660)
!2823 = !DILocation(line: 592, column: 21, scope: !660)
!2824 = !DILocation(line: 592, column: 14, scope: !660)
!2825 = !DILocation(line: 593, column: 5, scope: !660)
!2826 = !DILocation(line: 593, column: 11, scope: !660)
!2827 = !DILocation(line: 595, column: 13, scope: !660)
!2828 = !DILocation(line: 595, column: 5, scope: !660)
!2829 = !DILocation(line: 598, column: 9, scope: !675)
!2830 = !DILocation(line: 598, column: 15, scope: !675)
!2831 = !DILocation(line: 598, column: 37, scope: !675)
!2832 = !DILocation(line: 598, column: 36, scope: !675)
!2833 = !DILocation(line: 598, column: 19, scope: !675)
!2834 = !DILocation(line: 598, column: 19, scope: !2835)
!2835 = !DILexicalBlockFile(scope: !675, file: !362, discriminator: 1)
!2836 = !DILocation(line: 598, column: 19, scope: !2837)
!2837 = !DILexicalBlockFile(scope: !675, file: !362, discriminator: 2)
!2838 = !DILocation(line: 598, column: 19, scope: !2839)
!2839 = !DILexicalBlockFile(scope: !2840, file: !362, discriminator: 4)
!2840 = !DILexicalBlockFile(scope: !675, file: !362, discriminator: 3)
!2841 = !DILocation(line: 599, column: 9, scope: !675)
!2842 = !DILocation(line: 599, column: 14, scope: !675)
!2843 = !DILocation(line: 600, column: 34, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !675, file: !362, line: 600, column: 13)
!2845 = !DILocation(line: 600, column: 13, scope: !2844)
!2846 = !DILocation(line: 600, column: 13, scope: !675)
!2847 = !DILocation(line: 601, column: 20, scope: !2844)
!2848 = !DILocation(line: 601, column: 13, scope: !2844)
!2849 = !DILocation(line: 602, column: 30, scope: !675)
!2850 = !DILocation(line: 602, column: 16, scope: !675)
!2851 = !DILocation(line: 602, column: 14, scope: !675)
!2852 = !DILocation(line: 603, column: 13, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !675, file: !362, line: 603, column: 13)
!2854 = !DILocation(line: 603, column: 18, scope: !2853)
!2855 = !DILocation(line: 603, column: 24, scope: !2853)
!2856 = !DILocation(line: 603, column: 27, scope: !2857)
!2857 = !DILexicalBlockFile(scope: !2853, file: !362, discriminator: 1)
!2858 = !DILocation(line: 603, column: 13, scope: !675)
!2859 = !DILocation(line: 604, column: 20, scope: !2853)
!2860 = !DILocation(line: 604, column: 13, scope: !2853)
!2861 = !DILocation(line: 605, column: 18, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2853, file: !362, line: 605, column: 18)
!2863 = !DILocation(line: 605, column: 23, scope: !2862)
!2864 = !DILocation(line: 605, column: 18, scope: !2853)
!2865 = !DILocation(line: 606, column: 29, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2862, file: !362, line: 605, column: 28)
!2867 = !DILocation(line: 606, column: 13, scope: !2866)
!2868 = !DILocation(line: 608, column: 20, scope: !2866)
!2869 = !DILocation(line: 608, column: 13, scope: !2866)
!2870 = !DILocation(line: 610, column: 18, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2862, file: !362, line: 610, column: 18)
!2872 = !DILocation(line: 610, column: 23, scope: !2871)
!2873 = !DILocation(line: 610, column: 18, scope: !2862)
!2874 = !DILocation(line: 611, column: 29, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2871, file: !362, line: 610, column: 37)
!2876 = !DILocation(line: 611, column: 13, scope: !2875)
!2877 = !DILocation(line: 613, column: 20, scope: !2875)
!2878 = !DILocation(line: 613, column: 13, scope: !2875)
!2879 = !DILocation(line: 616, column: 34, scope: !2871)
!2880 = !DILocation(line: 616, column: 18, scope: !2871)
!2881 = !DILocation(line: 616, column: 14, scope: !2871)
!2882 = !DILocation(line: 616, column: 16, scope: !2871)
!2883 = !DILocation(line: 617, column: 9, scope: !675)
!2884 = !DILocation(line: 618, column: 5, scope: !676)
!2885 = !DILocation(line: 622, column: 9, scope: !679)
!2886 = !DILocation(line: 622, column: 15, scope: !679)
!2887 = !DILocation(line: 622, column: 37, scope: !679)
!2888 = !DILocation(line: 622, column: 36, scope: !679)
!2889 = !DILocation(line: 622, column: 19, scope: !679)
!2890 = !DILocation(line: 622, column: 19, scope: !2891)
!2891 = !DILexicalBlockFile(scope: !679, file: !362, discriminator: 1)
!2892 = !DILocation(line: 622, column: 19, scope: !2893)
!2893 = !DILexicalBlockFile(scope: !679, file: !362, discriminator: 2)
!2894 = !DILocation(line: 622, column: 19, scope: !2895)
!2895 = !DILexicalBlockFile(scope: !2896, file: !362, discriminator: 4)
!2896 = !DILexicalBlockFile(scope: !679, file: !362, discriminator: 3)
!2897 = !DILocation(line: 623, column: 9, scope: !679)
!2898 = !DILocation(line: 623, column: 14, scope: !679)
!2899 = !DILocation(line: 624, column: 34, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !679, file: !362, line: 624, column: 13)
!2901 = !DILocation(line: 624, column: 13, scope: !2900)
!2902 = !DILocation(line: 624, column: 13, scope: !679)
!2903 = !DILocation(line: 625, column: 20, scope: !2900)
!2904 = !DILocation(line: 625, column: 13, scope: !2900)
!2905 = !DILocation(line: 626, column: 42, scope: !679)
!2906 = !DILocation(line: 626, column: 16, scope: !679)
!2907 = !DILocation(line: 626, column: 14, scope: !679)
!2908 = !DILocation(line: 627, column: 13, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !679, file: !362, line: 627, column: 13)
!2910 = !DILocation(line: 627, column: 18, scope: !2909)
!2911 = !DILocation(line: 627, column: 24, scope: !2909)
!2912 = !DILocation(line: 627, column: 27, scope: !2913)
!2913 = !DILexicalBlockFile(scope: !2909, file: !362, discriminator: 1)
!2914 = !DILocation(line: 627, column: 13, scope: !679)
!2915 = !DILocation(line: 628, column: 20, scope: !2909)
!2916 = !DILocation(line: 628, column: 13, scope: !2909)
!2917 = !DILocation(line: 630, column: 34, scope: !2909)
!2918 = !DILocation(line: 630, column: 18, scope: !2909)
!2919 = !DILocation(line: 630, column: 14, scope: !2909)
!2920 = !DILocation(line: 630, column: 16, scope: !2909)
!2921 = !DILocation(line: 631, column: 9, scope: !679)
!2922 = !DILocation(line: 632, column: 5, scope: !676)
!2923 = !DILocation(line: 635, column: 9, scope: !682)
!2924 = !DILocation(line: 635, column: 16, scope: !682)
!2925 = !DILocation(line: 635, column: 38, scope: !682)
!2926 = !DILocation(line: 635, column: 37, scope: !682)
!2927 = !DILocation(line: 635, column: 20, scope: !682)
!2928 = !DILocation(line: 635, column: 20, scope: !2929)
!2929 = !DILexicalBlockFile(scope: !682, file: !362, discriminator: 1)
!2930 = !DILocation(line: 635, column: 20, scope: !2931)
!2931 = !DILexicalBlockFile(scope: !682, file: !362, discriminator: 2)
!2932 = !DILocation(line: 635, column: 20, scope: !2933)
!2933 = !DILexicalBlockFile(scope: !2934, file: !362, discriminator: 4)
!2934 = !DILexicalBlockFile(scope: !682, file: !362, discriminator: 3)
!2935 = !DILocation(line: 636, column: 9, scope: !682)
!2936 = !DILocation(line: 636, column: 14, scope: !682)
!2937 = !DILocation(line: 637, column: 34, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !682, file: !362, line: 637, column: 13)
!2939 = !DILocation(line: 637, column: 13, scope: !2938)
!2940 = !DILocation(line: 637, column: 13, scope: !682)
!2941 = !DILocation(line: 638, column: 20, scope: !2938)
!2942 = !DILocation(line: 638, column: 13, scope: !2938)
!2943 = !DILocation(line: 639, column: 30, scope: !682)
!2944 = !DILocation(line: 639, column: 16, scope: !682)
!2945 = !DILocation(line: 639, column: 14, scope: !682)
!2946 = !DILocation(line: 640, column: 13, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !682, file: !362, line: 640, column: 13)
!2948 = !DILocation(line: 640, column: 18, scope: !2947)
!2949 = !DILocation(line: 640, column: 24, scope: !2947)
!2950 = !DILocation(line: 640, column: 27, scope: !2951)
!2951 = !DILexicalBlockFile(scope: !2947, file: !362, discriminator: 1)
!2952 = !DILocation(line: 640, column: 13, scope: !682)
!2953 = !DILocation(line: 641, column: 20, scope: !2947)
!2954 = !DILocation(line: 641, column: 13, scope: !2947)
!2955 = !DILocation(line: 642, column: 18, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2947, file: !362, line: 642, column: 18)
!2957 = !DILocation(line: 642, column: 23, scope: !2956)
!2958 = !DILocation(line: 642, column: 18, scope: !2947)
!2959 = !DILocation(line: 643, column: 29, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2956, file: !362, line: 642, column: 38)
!2961 = !DILocation(line: 643, column: 13, scope: !2960)
!2962 = !DILocation(line: 645, column: 20, scope: !2960)
!2963 = !DILocation(line: 645, column: 13, scope: !2960)
!2964 = !DILocation(line: 647, column: 18, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2956, file: !362, line: 647, column: 18)
!2966 = !DILocation(line: 647, column: 23, scope: !2965)
!2967 = !DILocation(line: 647, column: 18, scope: !2956)
!2968 = !DILocation(line: 648, column: 29, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2965, file: !362, line: 647, column: 32)
!2970 = !DILocation(line: 648, column: 13, scope: !2969)
!2971 = !DILocation(line: 650, column: 20, scope: !2969)
!2972 = !DILocation(line: 650, column: 13, scope: !2969)
!2973 = !DILocation(line: 653, column: 26, scope: !2965)
!2974 = !DILocation(line: 653, column: 18, scope: !2965)
!2975 = !DILocation(line: 653, column: 14, scope: !2965)
!2976 = !DILocation(line: 653, column: 16, scope: !2965)
!2977 = !{!2978, !2978, i64 0}
!2978 = !{!"short", !983, i64 0}
!2979 = !DILocation(line: 654, column: 9, scope: !682)
!2980 = !DILocation(line: 655, column: 5, scope: !676)
!2981 = !DILocation(line: 659, column: 9, scope: !686)
!2982 = !DILocation(line: 659, column: 25, scope: !686)
!2983 = !DILocation(line: 659, column: 47, scope: !686)
!2984 = !DILocation(line: 659, column: 46, scope: !686)
!2985 = !DILocation(line: 659, column: 29, scope: !686)
!2986 = !DILocation(line: 659, column: 29, scope: !2987)
!2987 = !DILexicalBlockFile(scope: !686, file: !362, discriminator: 1)
!2988 = !DILocation(line: 659, column: 29, scope: !2989)
!2989 = !DILexicalBlockFile(scope: !686, file: !362, discriminator: 2)
!2990 = !DILocation(line: 659, column: 29, scope: !2991)
!2991 = !DILexicalBlockFile(scope: !2992, file: !362, discriminator: 4)
!2992 = !DILexicalBlockFile(scope: !686, file: !362, discriminator: 3)
!2993 = !DILocation(line: 660, column: 9, scope: !686)
!2994 = !DILocation(line: 660, column: 14, scope: !686)
!2995 = !DILocation(line: 661, column: 34, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !686, file: !362, line: 661, column: 13)
!2997 = !DILocation(line: 661, column: 13, scope: !2996)
!2998 = !DILocation(line: 661, column: 13, scope: !686)
!2999 = !DILocation(line: 662, column: 20, scope: !2996)
!3000 = !DILocation(line: 662, column: 13, scope: !2996)
!3001 = !DILocation(line: 663, column: 42, scope: !686)
!3002 = !DILocation(line: 663, column: 16, scope: !686)
!3003 = !DILocation(line: 663, column: 14, scope: !686)
!3004 = !DILocation(line: 664, column: 13, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !686, file: !362, line: 664, column: 13)
!3006 = !DILocation(line: 664, column: 18, scope: !3005)
!3007 = !DILocation(line: 664, column: 24, scope: !3005)
!3008 = !DILocation(line: 664, column: 27, scope: !3009)
!3009 = !DILexicalBlockFile(scope: !3005, file: !362, discriminator: 1)
!3010 = !DILocation(line: 664, column: 13, scope: !686)
!3011 = !DILocation(line: 665, column: 20, scope: !3005)
!3012 = !DILocation(line: 665, column: 13, scope: !3005)
!3013 = !DILocation(line: 667, column: 35, scope: !3005)
!3014 = !DILocation(line: 667, column: 18, scope: !3005)
!3015 = !DILocation(line: 667, column: 14, scope: !3005)
!3016 = !DILocation(line: 667, column: 16, scope: !3005)
!3017 = !DILocation(line: 668, column: 9, scope: !686)
!3018 = !DILocation(line: 669, column: 5, scope: !676)
!3019 = !DILocation(line: 672, column: 9, scope: !690)
!3020 = !DILocation(line: 672, column: 14, scope: !690)
!3021 = !DILocation(line: 672, column: 36, scope: !690)
!3022 = !DILocation(line: 672, column: 35, scope: !690)
!3023 = !DILocation(line: 672, column: 18, scope: !690)
!3024 = !DILocation(line: 672, column: 18, scope: !3025)
!3025 = !DILexicalBlockFile(scope: !690, file: !362, discriminator: 1)
!3026 = !DILocation(line: 672, column: 18, scope: !3027)
!3027 = !DILexicalBlockFile(scope: !690, file: !362, discriminator: 2)
!3028 = !DILocation(line: 672, column: 18, scope: !3029)
!3029 = !DILexicalBlockFile(scope: !3030, file: !362, discriminator: 4)
!3030 = !DILexicalBlockFile(scope: !690, file: !362, discriminator: 3)
!3031 = !DILocation(line: 673, column: 9, scope: !690)
!3032 = !DILocation(line: 673, column: 14, scope: !690)
!3033 = !DILocation(line: 674, column: 34, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !690, file: !362, line: 674, column: 13)
!3035 = !DILocation(line: 674, column: 13, scope: !3034)
!3036 = !DILocation(line: 674, column: 13, scope: !690)
!3037 = !DILocation(line: 675, column: 20, scope: !3034)
!3038 = !DILocation(line: 675, column: 13, scope: !3034)
!3039 = !DILocation(line: 676, column: 30, scope: !690)
!3040 = !DILocation(line: 676, column: 16, scope: !690)
!3041 = !DILocation(line: 676, column: 14, scope: !690)
!3042 = !DILocation(line: 677, column: 13, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !690, file: !362, line: 677, column: 13)
!3044 = !DILocation(line: 677, column: 18, scope: !3043)
!3045 = !DILocation(line: 677, column: 24, scope: !3043)
!3046 = !DILocation(line: 677, column: 27, scope: !3047)
!3047 = !DILexicalBlockFile(scope: !3043, file: !362, discriminator: 1)
!3048 = !DILocation(line: 677, column: 13, scope: !690)
!3049 = !DILocation(line: 678, column: 20, scope: !3043)
!3050 = !DILocation(line: 678, column: 13, scope: !3043)
!3051 = !DILocation(line: 679, column: 18, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3043, file: !362, line: 679, column: 18)
!3053 = !DILocation(line: 679, column: 23, scope: !3052)
!3054 = !DILocation(line: 679, column: 18, scope: !3043)
!3055 = !DILocation(line: 680, column: 29, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3052, file: !362, line: 679, column: 37)
!3057 = !DILocation(line: 680, column: 13, scope: !3056)
!3058 = !DILocation(line: 682, column: 20, scope: !3056)
!3059 = !DILocation(line: 682, column: 13, scope: !3056)
!3060 = !DILocation(line: 684, column: 18, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3052, file: !362, line: 684, column: 18)
!3062 = !DILocation(line: 684, column: 23, scope: !3061)
!3063 = !DILocation(line: 684, column: 18, scope: !3052)
!3064 = !DILocation(line: 685, column: 29, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3061, file: !362, line: 684, column: 43)
!3066 = !DILocation(line: 685, column: 13, scope: !3065)
!3067 = !DILocation(line: 687, column: 20, scope: !3065)
!3068 = !DILocation(line: 687, column: 13, scope: !3065)
!3069 = !DILocation(line: 690, column: 18, scope: !3061)
!3070 = !DILocation(line: 690, column: 14, scope: !3061)
!3071 = !DILocation(line: 690, column: 16, scope: !3061)
!3072 = !DILocation(line: 691, column: 9, scope: !690)
!3073 = !DILocation(line: 692, column: 5, scope: !676)
!3074 = !DILocation(line: 696, column: 9, scope: !693)
!3075 = !DILocation(line: 696, column: 23, scope: !693)
!3076 = !DILocation(line: 696, column: 45, scope: !693)
!3077 = !DILocation(line: 696, column: 44, scope: !693)
!3078 = !DILocation(line: 696, column: 27, scope: !693)
!3079 = !DILocation(line: 696, column: 27, scope: !3080)
!3080 = !DILexicalBlockFile(scope: !693, file: !362, discriminator: 1)
!3081 = !DILocation(line: 696, column: 27, scope: !3082)
!3082 = !DILexicalBlockFile(scope: !693, file: !362, discriminator: 2)
!3083 = !DILocation(line: 696, column: 27, scope: !3084)
!3084 = !DILexicalBlockFile(scope: !3085, file: !362, discriminator: 4)
!3085 = !DILexicalBlockFile(scope: !693, file: !362, discriminator: 3)
!3086 = !DILocation(line: 697, column: 9, scope: !693)
!3087 = !DILocation(line: 697, column: 22, scope: !693)
!3088 = !DILocation(line: 698, column: 34, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !693, file: !362, line: 698, column: 13)
!3090 = !DILocation(line: 698, column: 13, scope: !3089)
!3091 = !DILocation(line: 698, column: 13, scope: !693)
!3092 = !DILocation(line: 699, column: 20, scope: !3089)
!3093 = !DILocation(line: 699, column: 13, scope: !3089)
!3094 = !DILocation(line: 700, column: 56, scope: !693)
!3095 = !DILocation(line: 700, column: 30, scope: !693)
!3096 = !DILocation(line: 700, column: 16, scope: !693)
!3097 = !DILocation(line: 700, column: 14, scope: !693)
!3098 = !DILocation(line: 701, column: 13, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !693, file: !362, line: 701, column: 13)
!3100 = !DILocation(line: 701, column: 18, scope: !3099)
!3101 = !DILocation(line: 701, column: 38, scope: !3099)
!3102 = !DILocation(line: 701, column: 41, scope: !3103)
!3103 = !DILexicalBlockFile(scope: !3099, file: !362, discriminator: 1)
!3104 = !DILocation(line: 701, column: 13, scope: !693)
!3105 = !DILocation(line: 702, column: 20, scope: !3099)
!3106 = !DILocation(line: 702, column: 13, scope: !3099)
!3107 = !DILocation(line: 704, column: 18, scope: !3099)
!3108 = !DILocation(line: 704, column: 14, scope: !3099)
!3109 = !DILocation(line: 704, column: 16, scope: !3099)
!3110 = !DILocation(line: 705, column: 9, scope: !693)
!3111 = !DILocation(line: 706, column: 5, scope: !676)
!3112 = !DILocation(line: 710, column: 9, scope: !697)
!3113 = !DILocation(line: 710, column: 19, scope: !697)
!3114 = !DILocation(line: 711, column: 9, scope: !697)
!3115 = !DILocation(line: 711, column: 21, scope: !697)
!3116 = !DILocation(line: 711, column: 43, scope: !697)
!3117 = !DILocation(line: 711, column: 42, scope: !697)
!3118 = !DILocation(line: 711, column: 25, scope: !697)
!3119 = !DILocation(line: 711, column: 25, scope: !3120)
!3120 = !DILexicalBlockFile(scope: !697, file: !362, discriminator: 1)
!3121 = !DILocation(line: 711, column: 25, scope: !3122)
!3122 = !DILexicalBlockFile(scope: !697, file: !362, discriminator: 2)
!3123 = !DILocation(line: 711, column: 25, scope: !3124)
!3124 = !DILexicalBlockFile(scope: !3125, file: !362, discriminator: 4)
!3125 = !DILexicalBlockFile(scope: !697, file: !362, discriminator: 3)
!3126 = !DILocation(line: 712, column: 9, scope: !697)
!3127 = !DILocation(line: 712, column: 20, scope: !697)
!3128 = !DILocation(line: 713, column: 34, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !697, file: !362, line: 713, column: 13)
!3130 = !DILocation(line: 713, column: 13, scope: !3129)
!3131 = !DILocation(line: 713, column: 13, scope: !697)
!3132 = !DILocation(line: 714, column: 20, scope: !3129)
!3133 = !DILocation(line: 714, column: 13, scope: !3129)
!3134 = !DILocation(line: 715, column: 31, scope: !697)
!3135 = !DILocation(line: 715, column: 16, scope: !697)
!3136 = !DILocation(line: 715, column: 14, scope: !697)
!3137 = !DILocation(line: 716, column: 13, scope: !703)
!3138 = !DILocation(line: 716, column: 18, scope: !703)
!3139 = !DILocation(line: 716, column: 13, scope: !697)
!3140 = !DILocation(line: 717, column: 37, scope: !702)
!3141 = !DILocation(line: 717, column: 20, scope: !702)
!3142 = !DILocation(line: 717, column: 18, scope: !702)
!3143 = !DILocation(line: 718, column: 13, scope: !702)
!3144 = !DILocation(line: 718, column: 18, scope: !3145)
!3145 = !DILexicalBlockFile(scope: !701, file: !362, discriminator: 1)
!3146 = !DILocation(line: 718, column: 28, scope: !701)
!3147 = !DILocation(line: 718, column: 58, scope: !701)
!3148 = !DILocation(line: 718, column: 73, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !701, file: !362, line: 718, column: 70)
!3150 = !DILocation(line: 718, column: 90, scope: !3149)
!3151 = !DILocation(line: 718, column: 70, scope: !3149)
!3152 = !DILocation(line: 718, column: 100, scope: !3149)
!3153 = !DILocation(line: 718, column: 70, scope: !701)
!3154 = !DILocation(line: 718, column: 70, scope: !3155)
!3155 = !DILexicalBlockFile(scope: !701, file: !362, discriminator: 2)
!3156 = !DILocation(line: 718, column: 131, scope: !3157)
!3157 = !DILexicalBlockFile(scope: !3149, file: !362, discriminator: 3)
!3158 = !DILocation(line: 718, column: 149, scope: !3149)
!3159 = !DILocation(line: 718, column: 159, scope: !3149)
!3160 = !DILocation(line: 718, column: 184, scope: !3149)
!3161 = !DILocation(line: 718, column: 115, scope: !3149)
!3162 = !DILocation(line: 718, column: 203, scope: !3163)
!3163 = !DILexicalBlockFile(scope: !702, file: !362, discriminator: 4)
!3164 = !DILocation(line: 718, column: 203, scope: !701)
!3165 = !DILocation(line: 718, column: 203, scope: !3166)
!3166 = !DILexicalBlockFile(scope: !701, file: !362, discriminator: 5)
!3167 = !DILocation(line: 719, column: 9, scope: !702)
!3168 = !DILocation(line: 720, column: 13, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !697, file: !362, line: 720, column: 13)
!3170 = !DILocation(line: 720, column: 18, scope: !3169)
!3171 = !DILocation(line: 720, column: 24, scope: !3169)
!3172 = !DILocation(line: 720, column: 27, scope: !3173)
!3173 = !DILexicalBlockFile(scope: !3169, file: !362, discriminator: 1)
!3174 = !DILocation(line: 720, column: 13, scope: !697)
!3175 = !DILocation(line: 721, column: 20, scope: !3169)
!3176 = !DILocation(line: 721, column: 13, scope: !3169)
!3177 = !DILocation(line: 722, column: 14, scope: !697)
!3178 = !DILocation(line: 722, column: 10, scope: !697)
!3179 = !DILocation(line: 722, column: 12, scope: !697)
!3180 = !DILocation(line: 723, column: 9, scope: !697)
!3181 = !DILocation(line: 724, column: 5, scope: !676)
!3182 = !DILocation(line: 726, column: 9, scope: !705)
!3183 = !DILocation(line: 726, column: 15, scope: !705)
!3184 = !DILocation(line: 726, column: 37, scope: !705)
!3185 = !DILocation(line: 726, column: 36, scope: !705)
!3186 = !DILocation(line: 726, column: 19, scope: !705)
!3187 = !DILocation(line: 726, column: 19, scope: !3188)
!3188 = !DILexicalBlockFile(scope: !705, file: !362, discriminator: 1)
!3189 = !DILocation(line: 726, column: 19, scope: !3190)
!3190 = !DILexicalBlockFile(scope: !705, file: !362, discriminator: 2)
!3191 = !DILocation(line: 726, column: 19, scope: !3192)
!3192 = !DILexicalBlockFile(scope: !3193, file: !362, discriminator: 4)
!3193 = !DILexicalBlockFile(scope: !705, file: !362, discriminator: 3)
!3194 = !DILocation(line: 727, column: 9, scope: !705)
!3195 = !DILocation(line: 727, column: 14, scope: !705)
!3196 = !DILocation(line: 728, column: 34, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !705, file: !362, line: 728, column: 13)
!3198 = !DILocation(line: 728, column: 13, scope: !3197)
!3199 = !DILocation(line: 728, column: 13, scope: !705)
!3200 = !DILocation(line: 729, column: 20, scope: !3197)
!3201 = !DILocation(line: 729, column: 13, scope: !3197)
!3202 = !DILocation(line: 730, column: 30, scope: !705)
!3203 = !DILocation(line: 730, column: 16, scope: !705)
!3204 = !DILocation(line: 730, column: 14, scope: !705)
!3205 = !DILocation(line: 731, column: 13, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !705, file: !362, line: 731, column: 13)
!3207 = !DILocation(line: 731, column: 18, scope: !3206)
!3208 = !DILocation(line: 731, column: 24, scope: !3206)
!3209 = !DILocation(line: 731, column: 27, scope: !3210)
!3210 = !DILexicalBlockFile(scope: !3206, file: !362, discriminator: 1)
!3211 = !DILocation(line: 731, column: 13, scope: !705)
!3212 = !DILocation(line: 732, column: 20, scope: !3206)
!3213 = !DILocation(line: 732, column: 13, scope: !3206)
!3214 = !DILocation(line: 734, column: 18, scope: !3206)
!3215 = !DILocation(line: 734, column: 14, scope: !3206)
!3216 = !DILocation(line: 734, column: 16, scope: !3206)
!3217 = !DILocation(line: 735, column: 9, scope: !705)
!3218 = !DILocation(line: 736, column: 5, scope: !676)
!3219 = !DILocation(line: 739, column: 9, scope: !709)
!3220 = !DILocation(line: 739, column: 24, scope: !709)
!3221 = !DILocation(line: 739, column: 46, scope: !709)
!3222 = !DILocation(line: 739, column: 45, scope: !709)
!3223 = !DILocation(line: 739, column: 28, scope: !709)
!3224 = !DILocation(line: 739, column: 28, scope: !3225)
!3225 = !DILexicalBlockFile(scope: !709, file: !362, discriminator: 1)
!3226 = !DILocation(line: 739, column: 28, scope: !3227)
!3227 = !DILexicalBlockFile(scope: !709, file: !362, discriminator: 2)
!3228 = !DILocation(line: 739, column: 28, scope: !3229)
!3229 = !DILexicalBlockFile(scope: !3230, file: !362, discriminator: 4)
!3230 = !DILexicalBlockFile(scope: !709, file: !362, discriminator: 3)
!3231 = !DILocation(line: 740, column: 9, scope: !709)
!3232 = !DILocation(line: 740, column: 23, scope: !709)
!3233 = !DILocation(line: 741, column: 30, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !709, file: !362, line: 741, column: 13)
!3235 = !DILocation(line: 741, column: 37, scope: !3234)
!3236 = !DILocation(line: 741, column: 48, scope: !3234)
!3237 = !DILocation(line: 741, column: 57, scope: !3234)
!3238 = !DILocation(line: 741, column: 74, scope: !3234)
!3239 = !DILocation(line: 741, column: 13, scope: !709)
!3240 = !DILocation(line: 742, column: 46, scope: !3234)
!3241 = !DILocation(line: 742, column: 20, scope: !3234)
!3242 = !DILocation(line: 742, column: 18, scope: !3234)
!3243 = !DILocation(line: 742, column: 13, scope: !3234)
!3244 = !DILocation(line: 744, column: 45, scope: !3234)
!3245 = !DILocation(line: 744, column: 50, scope: !3234)
!3246 = !DILocation(line: 744, column: 58, scope: !3234)
!3247 = !DILocation(line: 744, column: 20, scope: !3234)
!3248 = !DILocation(line: 744, column: 13, scope: !3234)
!3249 = !DILocation(line: 745, column: 14, scope: !709)
!3250 = !DILocation(line: 745, column: 10, scope: !709)
!3251 = !DILocation(line: 745, column: 12, scope: !709)
!3252 = !DILocation(line: 746, column: 9, scope: !709)
!3253 = !DILocation(line: 747, column: 5, scope: !676)
!3254 = !DILocation(line: 751, column: 9, scope: !713)
!3255 = !DILocation(line: 751, column: 20, scope: !713)
!3256 = !DILocation(line: 751, column: 42, scope: !713)
!3257 = !DILocation(line: 751, column: 41, scope: !713)
!3258 = !DILocation(line: 751, column: 24, scope: !713)
!3259 = !DILocation(line: 751, column: 24, scope: !3260)
!3260 = !DILexicalBlockFile(scope: !713, file: !362, discriminator: 1)
!3261 = !DILocation(line: 751, column: 24, scope: !3262)
!3262 = !DILexicalBlockFile(scope: !713, file: !362, discriminator: 2)
!3263 = !DILocation(line: 751, column: 24, scope: !3264)
!3264 = !DILexicalBlockFile(scope: !3265, file: !362, discriminator: 4)
!3265 = !DILexicalBlockFile(scope: !713, file: !362, discriminator: 3)
!3266 = !DILocation(line: 752, column: 9, scope: !713)
!3267 = !DILocation(line: 752, column: 19, scope: !713)
!3268 = !DILocation(line: 753, column: 34, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !713, file: !362, line: 753, column: 13)
!3270 = !DILocation(line: 753, column: 13, scope: !3269)
!3271 = !DILocation(line: 753, column: 13, scope: !713)
!3272 = !DILocation(line: 754, column: 20, scope: !3269)
!3273 = !DILocation(line: 754, column: 13, scope: !3269)
!3274 = !DILocation(line: 755, column: 34, scope: !713)
!3275 = !DILocation(line: 755, column: 16, scope: !713)
!3276 = !DILocation(line: 755, column: 14, scope: !713)
!3277 = !{!3278, !3278, i64 0}
!3278 = !{!"long long", !983, i64 0}
!3279 = !DILocation(line: 756, column: 13, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !713, file: !362, line: 756, column: 13)
!3281 = !DILocation(line: 756, column: 18, scope: !3280)
!3282 = !DILocation(line: 756, column: 35, scope: !3280)
!3283 = !DILocation(line: 756, column: 38, scope: !3284)
!3284 = !DILexicalBlockFile(scope: !3280, file: !362, discriminator: 1)
!3285 = !DILocation(line: 756, column: 13, scope: !713)
!3286 = !DILocation(line: 757, column: 20, scope: !3280)
!3287 = !DILocation(line: 757, column: 13, scope: !3280)
!3288 = !DILocation(line: 759, column: 18, scope: !3280)
!3289 = !DILocation(line: 759, column: 14, scope: !3280)
!3290 = !DILocation(line: 759, column: 16, scope: !3280)
!3291 = !DILocation(line: 760, column: 9, scope: !713)
!3292 = !DILocation(line: 761, column: 5, scope: !676)
!3293 = !DILocation(line: 764, column: 9, scope: !717)
!3294 = !DILocation(line: 764, column: 29, scope: !717)
!3295 = !DILocation(line: 764, column: 51, scope: !717)
!3296 = !DILocation(line: 764, column: 50, scope: !717)
!3297 = !DILocation(line: 764, column: 33, scope: !717)
!3298 = !DILocation(line: 764, column: 33, scope: !3299)
!3299 = !DILexicalBlockFile(scope: !717, file: !362, discriminator: 1)
!3300 = !DILocation(line: 764, column: 33, scope: !3301)
!3301 = !DILexicalBlockFile(scope: !717, file: !362, discriminator: 2)
!3302 = !DILocation(line: 764, column: 33, scope: !3303)
!3303 = !DILexicalBlockFile(scope: !3304, file: !362, discriminator: 4)
!3304 = !DILexicalBlockFile(scope: !717, file: !362, discriminator: 3)
!3305 = !DILocation(line: 765, column: 9, scope: !717)
!3306 = !DILocation(line: 765, column: 28, scope: !717)
!3307 = !DILocation(line: 766, column: 30, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !717, file: !362, line: 766, column: 13)
!3309 = !DILocation(line: 766, column: 37, scope: !3308)
!3310 = !DILocation(line: 766, column: 48, scope: !3308)
!3311 = !DILocation(line: 766, column: 57, scope: !3308)
!3312 = !DILocation(line: 766, column: 74, scope: !3308)
!3313 = !DILocation(line: 766, column: 13, scope: !717)
!3314 = !DILocation(line: 767, column: 50, scope: !3308)
!3315 = !DILocation(line: 767, column: 20, scope: !3308)
!3316 = !DILocation(line: 767, column: 18, scope: !3308)
!3317 = !DILocation(line: 767, column: 13, scope: !3308)
!3318 = !DILocation(line: 769, column: 45, scope: !3308)
!3319 = !DILocation(line: 769, column: 50, scope: !3308)
!3320 = !DILocation(line: 769, column: 58, scope: !3308)
!3321 = !DILocation(line: 769, column: 20, scope: !3308)
!3322 = !DILocation(line: 769, column: 13, scope: !3308)
!3323 = !DILocation(line: 770, column: 14, scope: !717)
!3324 = !DILocation(line: 770, column: 10, scope: !717)
!3325 = !DILocation(line: 770, column: 12, scope: !717)
!3326 = !DILocation(line: 771, column: 9, scope: !717)
!3327 = !DILocation(line: 772, column: 5, scope: !676)
!3328 = !DILocation(line: 776, column: 9, scope: !722)
!3329 = !DILocation(line: 776, column: 16, scope: !722)
!3330 = !DILocation(line: 776, column: 38, scope: !722)
!3331 = !DILocation(line: 776, column: 37, scope: !722)
!3332 = !DILocation(line: 776, column: 20, scope: !722)
!3333 = !DILocation(line: 776, column: 20, scope: !3334)
!3334 = !DILexicalBlockFile(scope: !722, file: !362, discriminator: 1)
!3335 = !DILocation(line: 776, column: 20, scope: !3336)
!3336 = !DILexicalBlockFile(scope: !722, file: !362, discriminator: 2)
!3337 = !DILocation(line: 776, column: 20, scope: !3338)
!3338 = !DILexicalBlockFile(scope: !3339, file: !362, discriminator: 4)
!3339 = !DILexicalBlockFile(scope: !722, file: !362, discriminator: 3)
!3340 = !DILocation(line: 777, column: 9, scope: !722)
!3341 = !DILocation(line: 777, column: 16, scope: !722)
!3342 = !DILocation(line: 777, column: 40, scope: !722)
!3343 = !DILocation(line: 777, column: 23, scope: !722)
!3344 = !{!3345, !3345, i64 0}
!3345 = !{!"double", !983, i64 0}
!3346 = !DILocation(line: 778, column: 13, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !722, file: !362, line: 778, column: 13)
!3348 = !DILocation(line: 778, column: 13, scope: !722)
!3349 = !DILocation(line: 779, column: 20, scope: !3347)
!3350 = !DILocation(line: 779, column: 13, scope: !3347)
!3351 = !DILocation(line: 781, column: 26, scope: !3347)
!3352 = !DILocation(line: 781, column: 18, scope: !3347)
!3353 = !DILocation(line: 781, column: 14, scope: !3347)
!3354 = !DILocation(line: 781, column: 16, scope: !3347)
!3355 = !{!3356, !3356, i64 0}
!3356 = !{!"float", !983, i64 0}
!3357 = !DILocation(line: 782, column: 9, scope: !722)
!3358 = !DILocation(line: 783, column: 5, scope: !676)
!3359 = !DILocation(line: 786, column: 9, scope: !727)
!3360 = !DILocation(line: 786, column: 17, scope: !727)
!3361 = !DILocation(line: 786, column: 39, scope: !727)
!3362 = !DILocation(line: 786, column: 38, scope: !727)
!3363 = !DILocation(line: 786, column: 21, scope: !727)
!3364 = !DILocation(line: 786, column: 21, scope: !3365)
!3365 = !DILexicalBlockFile(scope: !727, file: !362, discriminator: 1)
!3366 = !DILocation(line: 786, column: 21, scope: !3367)
!3367 = !DILexicalBlockFile(scope: !727, file: !362, discriminator: 2)
!3368 = !DILocation(line: 786, column: 21, scope: !3369)
!3369 = !DILexicalBlockFile(scope: !3370, file: !362, discriminator: 4)
!3370 = !DILexicalBlockFile(scope: !727, file: !362, discriminator: 3)
!3371 = !DILocation(line: 787, column: 9, scope: !727)
!3372 = !DILocation(line: 787, column: 16, scope: !727)
!3373 = !DILocation(line: 787, column: 40, scope: !727)
!3374 = !DILocation(line: 787, column: 23, scope: !727)
!3375 = !DILocation(line: 788, column: 13, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !727, file: !362, line: 788, column: 13)
!3377 = !DILocation(line: 788, column: 13, scope: !727)
!3378 = !DILocation(line: 789, column: 20, scope: !3376)
!3379 = !DILocation(line: 789, column: 13, scope: !3376)
!3380 = !DILocation(line: 791, column: 18, scope: !3376)
!3381 = !DILocation(line: 791, column: 14, scope: !3376)
!3382 = !DILocation(line: 791, column: 16, scope: !3376)
!3383 = !DILocation(line: 792, column: 9, scope: !727)
!3384 = !DILocation(line: 793, column: 5, scope: !676)
!3385 = !DILocation(line: 796, column: 9, scope: !731)
!3386 = !DILocation(line: 796, column: 21, scope: !731)
!3387 = !DILocation(line: 796, column: 43, scope: !731)
!3388 = !DILocation(line: 796, column: 42, scope: !731)
!3389 = !DILocation(line: 796, column: 25, scope: !731)
!3390 = !DILocation(line: 796, column: 25, scope: !3391)
!3391 = !DILexicalBlockFile(scope: !731, file: !362, discriminator: 1)
!3392 = !DILocation(line: 796, column: 25, scope: !3393)
!3393 = !DILexicalBlockFile(scope: !731, file: !362, discriminator: 2)
!3394 = !DILocation(line: 796, column: 25, scope: !3395)
!3395 = !DILexicalBlockFile(scope: !3396, file: !362, discriminator: 4)
!3396 = !DILexicalBlockFile(scope: !731, file: !362, discriminator: 3)
!3397 = !DILocation(line: 797, column: 9, scope: !731)
!3398 = !DILocation(line: 797, column: 20, scope: !731)
!3399 = !DILocation(line: 798, column: 37, scope: !731)
!3400 = !DILocation(line: 798, column: 16, scope: !731)
!3401 = !{i64 0, i64 8, !3344, i64 8, i64 8, !3344}
!3402 = !DILocation(line: 799, column: 13, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !731, file: !362, line: 799, column: 13)
!3404 = !DILocation(line: 799, column: 13, scope: !731)
!3405 = !DILocation(line: 800, column: 20, scope: !3403)
!3406 = !DILocation(line: 800, column: 13, scope: !3403)
!3407 = !DILocation(line: 802, column: 14, scope: !3403)
!3408 = !DILocation(line: 802, column: 18, scope: !3403)
!3409 = !DILocation(line: 803, column: 9, scope: !731)
!3410 = !DILocation(line: 804, column: 5, scope: !676)
!3411 = !DILocation(line: 807, column: 9, scope: !741)
!3412 = !DILocation(line: 807, column: 15, scope: !741)
!3413 = !DILocation(line: 807, column: 37, scope: !741)
!3414 = !DILocation(line: 807, column: 36, scope: !741)
!3415 = !DILocation(line: 807, column: 19, scope: !741)
!3416 = !DILocation(line: 807, column: 19, scope: !3417)
!3417 = !DILexicalBlockFile(scope: !741, file: !362, discriminator: 1)
!3418 = !DILocation(line: 807, column: 19, scope: !3419)
!3419 = !DILexicalBlockFile(scope: !741, file: !362, discriminator: 2)
!3420 = !DILocation(line: 807, column: 19, scope: !3421)
!3421 = !DILexicalBlockFile(scope: !3422, file: !362, discriminator: 4)
!3422 = !DILexicalBlockFile(scope: !741, file: !362, discriminator: 3)
!3423 = !DILocation(line: 808, column: 30, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !741, file: !362, line: 808, column: 13)
!3425 = !DILocation(line: 808, column: 37, scope: !3424)
!3426 = !DILocation(line: 808, column: 48, scope: !3424)
!3427 = !DILocation(line: 808, column: 57, scope: !3424)
!3428 = !DILocation(line: 808, column: 74, scope: !3424)
!3429 = !DILocation(line: 808, column: 80, scope: !3424)
!3430 = !DILocation(line: 808, column: 96, scope: !3431)
!3431 = !DILexicalBlockFile(scope: !3424, file: !362, discriminator: 1)
!3432 = !DILocation(line: 808, column: 83, scope: !3424)
!3433 = !DILocation(line: 808, column: 101, scope: !3424)
!3434 = !DILocation(line: 808, column: 13, scope: !741)
!3435 = !DILocation(line: 809, column: 53, scope: !3424)
!3436 = !DILocation(line: 809, column: 35, scope: !3424)
!3437 = !DILocation(line: 809, column: 60, scope: !3424)
!3438 = !DILocation(line: 809, column: 33, scope: !3424)
!3439 = !DILocation(line: 809, column: 18, scope: !3424)
!3440 = !DILocation(line: 809, column: 14, scope: !3424)
!3441 = !DILocation(line: 809, column: 16, scope: !3424)
!3442 = !DILocation(line: 809, column: 13, scope: !3424)
!3443 = !DILocation(line: 810, column: 33, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3424, file: !362, line: 810, column: 18)
!3445 = !DILocation(line: 810, column: 40, scope: !3444)
!3446 = !DILocation(line: 810, column: 49, scope: !3444)
!3447 = !DILocation(line: 810, column: 72, scope: !3444)
!3448 = !DILocation(line: 810, column: 106, scope: !3449)
!3449 = !DILexicalBlockFile(scope: !3444, file: !362, discriminator: 2)
!3450 = !DILocation(line: 810, column: 113, scope: !3444)
!3451 = !DILocation(line: 810, column: 75, scope: !3444)
!3452 = !DILocation(line: 810, column: 145, scope: !3444)
!3453 = !DILocation(line: 810, column: 165, scope: !3454)
!3454 = !DILexicalBlockFile(scope: !3455, file: !362, discriminator: 3)
!3455 = !DILexicalBlockFile(scope: !3444, file: !362, discriminator: 1)
!3456 = !DILocation(line: 810, column: 148, scope: !3444)
!3457 = !DILocation(line: 810, column: 170, scope: !3444)
!3458 = !DILocation(line: 810, column: 18, scope: !3424)
!3459 = !DILocation(line: 811, column: 50, scope: !3444)
!3460 = !DILocation(line: 811, column: 35, scope: !3444)
!3461 = !DILocation(line: 811, column: 57, scope: !3444)
!3462 = !DILocation(line: 811, column: 33, scope: !3444)
!3463 = !DILocation(line: 811, column: 91, scope: !3455)
!3464 = !DILocation(line: 811, column: 69, scope: !3444)
!3465 = !DILocation(line: 811, column: 98, scope: !3444)
!3466 = !{!3467, !982, i64 40}
!3467 = !{!"", !1265, i64 0, !1261, i64 24, !982, i64 32, !982, i64 40, !999, i64 48}
!3468 = !DILocation(line: 811, column: 33, scope: !3449)
!3469 = !DILocation(line: 811, column: 18, scope: !3470)
!3470 = !DILexicalBlockFile(scope: !3471, file: !362, discriminator: 4)
!3471 = !DILexicalBlockFile(scope: !3444, file: !362, discriminator: 3)
!3472 = !DILocation(line: 811, column: 14, scope: !3444)
!3473 = !DILocation(line: 811, column: 16, scope: !3444)
!3474 = !DILocation(line: 811, column: 13, scope: !3444)
!3475 = !DILocation(line: 813, column: 60, scope: !3444)
!3476 = !DILocation(line: 813, column: 65, scope: !3444)
!3477 = !DILocation(line: 813, column: 73, scope: !3444)
!3478 = !DILocation(line: 813, column: 20, scope: !3444)
!3479 = !DILocation(line: 813, column: 13, scope: !3444)
!3480 = !DILocation(line: 814, column: 9, scope: !741)
!3481 = !DILocation(line: 815, column: 5, scope: !676)
!3482 = !DILocation(line: 818, column: 9, scope: !743)
!3483 = !DILocation(line: 818, column: 14, scope: !743)
!3484 = !DILocation(line: 818, column: 36, scope: !743)
!3485 = !DILocation(line: 818, column: 35, scope: !743)
!3486 = !DILocation(line: 818, column: 18, scope: !743)
!3487 = !DILocation(line: 818, column: 18, scope: !3488)
!3488 = !DILexicalBlockFile(scope: !743, file: !362, discriminator: 1)
!3489 = !DILocation(line: 818, column: 18, scope: !3490)
!3490 = !DILexicalBlockFile(scope: !743, file: !362, discriminator: 2)
!3491 = !DILocation(line: 818, column: 18, scope: !3492)
!3492 = !DILexicalBlockFile(scope: !3493, file: !362, discriminator: 4)
!3493 = !DILexicalBlockFile(scope: !743, file: !362, discriminator: 3)
!3494 = !DILocation(line: 819, column: 9, scope: !743)
!3495 = !DILocation(line: 819, column: 13, scope: !743)
!3496 = !DILocation(line: 820, column: 9, scope: !743)
!3497 = !DILocation(line: 820, column: 15, scope: !743)
!3498 = !DILocation(line: 822, column: 31, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !743, file: !362, line: 822, column: 13)
!3500 = !DILocation(line: 822, column: 38, scope: !3499)
!3501 = !DILocation(line: 822, column: 49, scope: !3499)
!3502 = !DILocation(line: 822, column: 58, scope: !3499)
!3503 = !DILocation(line: 822, column: 75, scope: !3499)
!3504 = !DILocation(line: 822, column: 13, scope: !743)
!3505 = !DILocation(line: 823, column: 54, scope: !3499)
!3506 = !DILocation(line: 823, column: 59, scope: !3499)
!3507 = !DILocation(line: 823, column: 67, scope: !3499)
!3508 = !DILocation(line: 823, column: 20, scope: !3499)
!3509 = !DILocation(line: 823, column: 13, scope: !3499)
!3510 = !DILocation(line: 825, column: 47, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !743, file: !362, line: 825, column: 13)
!3512 = !DILocation(line: 825, column: 31, scope: !3511)
!3513 = !DILocation(line: 825, column: 53, scope: !3511)
!3514 = !DILocation(line: 825, column: 59, scope: !3511)
!3515 = !DILocation(line: 825, column: 29, scope: !3511)
!3516 = !DILocation(line: 825, column: 29, scope: !3517)
!3517 = !DILexicalBlockFile(scope: !3511, file: !362, discriminator: 1)
!3518 = !DILocation(line: 825, column: 102, scope: !3519)
!3519 = !DILexicalBlockFile(scope: !3511, file: !362, discriminator: 2)
!3520 = !DILocation(line: 825, column: 72, scope: !3511)
!3521 = !DILocation(line: 825, column: 26, scope: !3522)
!3522 = !DILexicalBlockFile(scope: !3523, file: !362, discriminator: 4)
!3523 = !DILexicalBlockFile(scope: !3511, file: !362, discriminator: 3)
!3524 = !DILocation(line: 825, column: 13, scope: !743)
!3525 = !DILocation(line: 826, column: 20, scope: !3511)
!3526 = !DILocation(line: 826, column: 13, scope: !3511)
!3527 = !DILocation(line: 828, column: 61, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !743, file: !362, line: 828, column: 13)
!3529 = !DILocation(line: 828, column: 43, scope: !3528)
!3530 = !DILocation(line: 828, column: 68, scope: !3528)
!3531 = !{!3532, !1261, i64 16}
!3532 = !{!"", !1260, i64 0, !1261, i64 16, !1261, i64 24, !3533, i64 32, !982, i64 40}
!3533 = !{!"", !999, i64 0, !999, i64 0, !999, i64 0, !999, i64 0, !999, i64 0, !999, i64 1}
!3534 = !DILocation(line: 828, column: 76, scope: !3528)
!3535 = !DILocation(line: 828, column: 13, scope: !743)
!3536 = !DILocation(line: 829, column: 54, scope: !3528)
!3537 = !DILocation(line: 829, column: 59, scope: !3528)
!3538 = !DILocation(line: 829, column: 67, scope: !3528)
!3539 = !DILocation(line: 829, column: 20, scope: !3528)
!3540 = !DILocation(line: 829, column: 13, scope: !3528)
!3541 = !DILocation(line: 831, column: 64, scope: !743)
!3542 = !DILocation(line: 831, column: 46, scope: !743)
!3543 = !DILocation(line: 831, column: 71, scope: !743)
!3544 = !DILocation(line: 831, column: 77, scope: !743)
!3545 = !DILocation(line: 831, column: 14, scope: !743)
!3546 = !DILocation(line: 832, column: 50, scope: !743)
!3547 = !DILocation(line: 832, column: 33, scope: !743)
!3548 = !DILocation(line: 832, column: 57, scope: !743)
!3549 = !DILocation(line: 832, column: 63, scope: !743)
!3550 = !DILocation(line: 832, column: 31, scope: !743)
!3551 = !DILocation(line: 832, column: 121, scope: !3488)
!3552 = !DILocation(line: 832, column: 105, scope: !743)
!3553 = !DILocation(line: 832, column: 127, scope: !743)
!3554 = !DILocation(line: 832, column: 133, scope: !743)
!3555 = !DILocation(line: 832, column: 75, scope: !743)
!3556 = !DILocation(line: 832, column: 168, scope: !3493)
!3557 = !DILocation(line: 832, column: 151, scope: !743)
!3558 = !DILocation(line: 832, column: 173, scope: !743)
!3559 = !DILocation(line: 832, column: 143, scope: !743)
!3560 = !DILocation(line: 832, column: 216, scope: !3561)
!3561 = !DILexicalBlockFile(scope: !743, file: !362, discriminator: 4)
!3562 = !DILocation(line: 832, column: 190, scope: !743)
!3563 = !DILocation(line: 832, column: 221, scope: !743)
!3564 = !DILocation(line: 832, column: 182, scope: !743)
!3565 = !DILocation(line: 832, column: 31, scope: !3566)
!3566 = !DILexicalBlockFile(scope: !3567, file: !362, discriminator: 6)
!3567 = !DILexicalBlockFile(scope: !743, file: !362, discriminator: 5)
!3568 = !DILocation(line: 832, column: 268, scope: !3490)
!3569 = !DILocation(line: 832, column: 248, scope: !743)
!3570 = !DILocation(line: 832, column: 275, scope: !743)
!3571 = !DILocation(line: 832, column: 280, scope: !743)
!3572 = !DILocation(line: 832, column: 14, scope: !3573)
!3573 = !DILexicalBlockFile(scope: !3574, file: !362, discriminator: 8)
!3574 = !DILexicalBlockFile(scope: !743, file: !362, discriminator: 7)
!3575 = !DILocation(line: 833, column: 27, scope: !743)
!3576 = !DILocation(line: 833, column: 33, scope: !743)
!3577 = !DILocation(line: 833, column: 26, scope: !743)
!3578 = !DILocation(line: 833, column: 78, scope: !3488)
!3579 = !DILocation(line: 833, column: 59, scope: !743)
!3580 = !DILocation(line: 833, column: 94, scope: !3490)
!3581 = !DILocation(line: 833, column: 100, scope: !743)
!3582 = !DILocation(line: 833, column: 93, scope: !743)
!3583 = !DILocation(line: 833, column: 145, scope: !3561)
!3584 = !DILocation(line: 833, column: 127, scope: !743)
!3585 = !DILocation(line: 833, column: 126, scope: !743)
!3586 = !DILocation(line: 833, column: 178, scope: !3567)
!3587 = !DILocation(line: 833, column: 160, scope: !743)
!3588 = !DILocation(line: 833, column: 159, scope: !743)
!3589 = !DILocation(line: 833, column: 26, scope: !3590)
!3590 = !DILexicalBlockFile(scope: !3591, file: !362, discriminator: 7)
!3591 = !DILexicalBlockFile(scope: !743, file: !362, discriminator: 6)
!3592 = !DILocation(line: 833, column: 10, scope: !3593)
!3593 = !DILexicalBlockFile(scope: !3493, file: !362, discriminator: 8)
!3594 = !DILocation(line: 833, column: 12, scope: !743)
!3595 = !DILocation(line: 834, column: 9, scope: !743)
!3596 = !DILocation(line: 835, column: 5, scope: !676)
!3597 = !DILocation(line: 838, column: 9, scope: !747)
!3598 = !DILocation(line: 838, column: 14, scope: !747)
!3599 = !DILocation(line: 838, column: 36, scope: !747)
!3600 = !DILocation(line: 838, column: 35, scope: !747)
!3601 = !DILocation(line: 838, column: 18, scope: !747)
!3602 = !DILocation(line: 838, column: 18, scope: !3603)
!3603 = !DILexicalBlockFile(scope: !747, file: !362, discriminator: 1)
!3604 = !DILocation(line: 838, column: 18, scope: !3605)
!3605 = !DILexicalBlockFile(scope: !747, file: !362, discriminator: 2)
!3606 = !DILocation(line: 838, column: 18, scope: !3607)
!3607 = !DILexicalBlockFile(scope: !3608, file: !362, discriminator: 4)
!3608 = !DILexicalBlockFile(scope: !747, file: !362, discriminator: 3)
!3609 = !DILocation(line: 839, column: 9, scope: !747)
!3610 = !DILocation(line: 839, column: 13, scope: !747)
!3611 = !DILocation(line: 839, column: 35, scope: !747)
!3612 = !DILocation(line: 839, column: 19, scope: !747)
!3613 = !DILocation(line: 840, column: 13, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !747, file: !362, line: 840, column: 13)
!3615 = !DILocation(line: 840, column: 17, scope: !3614)
!3616 = !DILocation(line: 840, column: 13, scope: !747)
!3617 = !DILocation(line: 841, column: 14, scope: !3614)
!3618 = !DILocation(line: 841, column: 16, scope: !3614)
!3619 = !DILocation(line: 841, column: 13, scope: !3614)
!3620 = !DILocation(line: 842, column: 18, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3614, file: !362, line: 842, column: 18)
!3622 = !DILocation(line: 842, column: 22, scope: !3621)
!3623 = !DILocation(line: 842, column: 18, scope: !3614)
!3624 = !DILocation(line: 843, column: 14, scope: !3621)
!3625 = !DILocation(line: 843, column: 16, scope: !3621)
!3626 = !DILocation(line: 843, column: 13, scope: !3621)
!3627 = !DILocation(line: 845, column: 20, scope: !3621)
!3628 = !DILocation(line: 845, column: 13, scope: !3621)
!3629 = !DILocation(line: 846, column: 9, scope: !747)
!3630 = !DILocation(line: 847, column: 5, scope: !676)
!3631 = !DILocation(line: 853, column: 9, scope: !750)
!3632 = !DILocation(line: 853, column: 16, scope: !750)
!3633 = !DILocation(line: 853, column: 47, scope: !750)
!3634 = !DILocation(line: 853, column: 46, scope: !750)
!3635 = !DILocation(line: 853, column: 29, scope: !750)
!3636 = !DILocation(line: 853, column: 29, scope: !3637)
!3637 = !DILexicalBlockFile(scope: !750, file: !362, discriminator: 1)
!3638 = !DILocation(line: 853, column: 29, scope: !3639)
!3639 = !DILexicalBlockFile(scope: !750, file: !362, discriminator: 2)
!3640 = !DILocation(line: 853, column: 29, scope: !3641)
!3641 = !DILexicalBlockFile(scope: !3642, file: !362, discriminator: 4)
!3642 = !DILexicalBlockFile(scope: !750, file: !362, discriminator: 3)
!3643 = !DILocation(line: 854, column: 9, scope: !750)
!3644 = !DILocation(line: 854, column: 15, scope: !750)
!3645 = !DILocation(line: 855, column: 9, scope: !750)
!3646 = !DILocation(line: 855, column: 20, scope: !750)
!3647 = !DILocation(line: 856, column: 14, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !750, file: !362, line: 856, column: 13)
!3649 = !DILocation(line: 856, column: 13, scope: !3648)
!3650 = !DILocation(line: 856, column: 21, scope: !3648)
!3651 = !DILocation(line: 856, column: 13, scope: !750)
!3652 = !DILocation(line: 857, column: 27, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3654, file: !362, line: 857, column: 17)
!3654 = distinct !DILexicalBlock(scope: !3648, file: !362, line: 856, column: 29)
!3655 = !DILocation(line: 857, column: 44, scope: !3653)
!3656 = !DILocation(line: 857, column: 32, scope: !3653)
!3657 = !DILocation(line: 857, column: 17, scope: !3653)
!3658 = !DILocation(line: 857, column: 53, scope: !3653)
!3659 = !DILocation(line: 857, column: 17, scope: !3654)
!3660 = !DILocation(line: 858, column: 35, scope: !3653)
!3661 = !DILocation(line: 858, column: 40, scope: !3653)
!3662 = !DILocation(line: 858, column: 45, scope: !3653)
!3663 = !DILocation(line: 858, column: 53, scope: !3653)
!3664 = !DILocation(line: 858, column: 24, scope: !3653)
!3665 = !DILocation(line: 858, column: 17, scope: !3653)
!3666 = !DILocation(line: 859, column: 19, scope: !3654)
!3667 = !DILocation(line: 860, column: 28, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3654, file: !362, line: 860, column: 17)
!3669 = !DILocation(line: 860, column: 31, scope: !3668)
!3670 = !DILocation(line: 860, column: 17, scope: !3668)
!3671 = !DILocation(line: 860, column: 17, scope: !3654)
!3672 = !DILocation(line: 863, column: 21, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3668, file: !362, line: 860, column: 58)
!3674 = !DILocation(line: 863, column: 26, scope: !3673)
!3675 = !DILocation(line: 863, column: 34, scope: !3673)
!3676 = !DILocation(line: 861, column: 24, scope: !3673)
!3677 = !DILocation(line: 861, column: 17, scope: !3673)
!3678 = !DILocation(line: 865, column: 13, scope: !3654)
!3679 = !DILocation(line: 867, column: 31, scope: !750)
!3680 = !DILocation(line: 867, column: 36, scope: !750)
!3681 = !DILocation(line: 867, column: 17, scope: !750)
!3682 = !DILocation(line: 867, column: 15, scope: !750)
!3683 = !DILocation(line: 868, column: 13, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !750, file: !362, line: 868, column: 13)
!3685 = !DILocation(line: 868, column: 19, scope: !3684)
!3686 = !DILocation(line: 868, column: 13, scope: !750)
!3687 = !DILocation(line: 869, column: 31, scope: !3684)
!3688 = !DILocation(line: 869, column: 36, scope: !3684)
!3689 = !DILocation(line: 869, column: 41, scope: !3684)
!3690 = !DILocation(line: 869, column: 49, scope: !3684)
!3691 = !DILocation(line: 869, column: 20, scope: !3684)
!3692 = !DILocation(line: 869, column: 13, scope: !3684)
!3693 = !DILocation(line: 870, column: 14, scope: !755)
!3694 = !DILocation(line: 870, column: 13, scope: !755)
!3695 = !DILocation(line: 870, column: 21, scope: !755)
!3696 = !DILocation(line: 870, column: 13, scope: !750)
!3697 = !DILocation(line: 871, column: 13, scope: !754)
!3698 = !DILocation(line: 871, column: 18, scope: !754)
!3699 = !DILocation(line: 871, column: 31, scope: !754)
!3700 = !DILocation(line: 871, column: 43, scope: !754)
!3701 = !DILocation(line: 871, column: 62, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !754, file: !362, line: 871, column: 62)
!3703 = !DILocation(line: 871, column: 68, scope: !3702)
!3704 = !DILocation(line: 871, column: 62, scope: !754)
!3705 = !DILocation(line: 871, column: 94, scope: !3706)
!3706 = !DILexicalBlockFile(scope: !3702, file: !362, discriminator: 1)
!3707 = !DILocation(line: 871, column: 93, scope: !3702)
!3708 = !DILocation(line: 871, column: 76, scope: !3702)
!3709 = !DILocation(line: 871, column: 76, scope: !3710)
!3710 = !DILexicalBlockFile(scope: !3702, file: !362, discriminator: 3)
!3711 = !DILocation(line: 871, column: 76, scope: !3712)
!3712 = !DILexicalBlockFile(scope: !3702, file: !362, discriminator: 4)
!3713 = !DILocation(line: 871, column: 76, scope: !3714)
!3714 = !DILexicalBlockFile(scope: !3715, file: !362, discriminator: 6)
!3715 = !DILexicalBlockFile(scope: !3702, file: !362, discriminator: 5)
!3716 = !DILocation(line: 871, column: 75, scope: !3702)
!3717 = !DILocation(line: 871, column: 73, scope: !3702)
!3718 = !DILocation(line: 871, column: 139, scope: !3719)
!3719 = !DILexicalBlockFile(scope: !3702, file: !362, discriminator: 2)
!3720 = !DILocation(line: 871, column: 138, scope: !3702)
!3721 = !DILocation(line: 871, column: 121, scope: !3702)
!3722 = !DILocation(line: 871, column: 121, scope: !3723)
!3723 = !DILexicalBlockFile(scope: !3702, file: !362, discriminator: 7)
!3724 = !DILocation(line: 871, column: 121, scope: !3725)
!3725 = !DILexicalBlockFile(scope: !3702, file: !362, discriminator: 8)
!3726 = !DILocation(line: 871, column: 121, scope: !3727)
!3727 = !DILexicalBlockFile(scope: !3728, file: !362, discriminator: 10)
!3728 = !DILexicalBlockFile(scope: !3702, file: !362, discriminator: 9)
!3729 = !DILocation(line: 871, column: 120, scope: !3702)
!3730 = !DILocation(line: 872, column: 17, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !754, file: !362, line: 872, column: 17)
!3732 = !DILocation(line: 872, column: 23, scope: !3731)
!3733 = !DILocation(line: 872, column: 17, scope: !754)
!3734 = !DILocation(line: 872, column: 32, scope: !3735)
!3735 = !DILexicalBlockFile(scope: !3731, file: !362, discriminator: 1)
!3736 = !DILocation(line: 872, column: 29, scope: !3731)
!3737 = !DILocation(line: 872, column: 31, scope: !3731)
!3738 = !DILocation(line: 872, column: 28, scope: !3731)
!3739 = !DILocation(line: 872, column: 63, scope: !3740)
!3740 = !DILexicalBlockFile(scope: !3741, file: !362, discriminator: 2)
!3741 = distinct !DILexicalBlock(scope: !3742, file: !362, line: 872, column: 50)
!3742 = distinct !DILexicalBlock(scope: !3731, file: !362, line: 872, column: 44)
!3743 = !DILocation(line: 872, column: 61, scope: !3741)
!3744 = !DILocation(line: 872, column: 50, scope: !3742)
!3745 = !DILocation(line: 872, column: 88, scope: !3746)
!3746 = !DILexicalBlockFile(scope: !3747, file: !362, discriminator: 3)
!3747 = distinct !DILexicalBlock(scope: !3741, file: !362, line: 872, column: 70)
!3748 = !DILocation(line: 872, column: 72, scope: !3747)
!3749 = !DILocation(line: 872, column: 163, scope: !3747)
!3750 = !DILocation(line: 872, column: 168, scope: !3747)
!3751 = !DILocation(line: 872, column: 176, scope: !3747)
!3752 = !DILocation(line: 872, column: 148, scope: !3747)
!3753 = !DILocation(line: 872, column: 141, scope: !3747)
!3754 = !DILocation(line: 872, column: 198, scope: !3755)
!3755 = !DILexicalBlockFile(scope: !3742, file: !362, discriminator: 4)
!3756 = !DILocation(line: 872, column: 193, scope: !3742)
!3757 = !DILocation(line: 872, column: 189, scope: !3742)
!3758 = !DILocation(line: 872, column: 191, scope: !3742)
!3759 = !DILocation(line: 873, column: 19, scope: !754)
!3760 = !DILocation(line: 874, column: 9, scope: !755)
!3761 = !DILocation(line: 874, column: 9, scope: !3762)
!3762 = !DILexicalBlockFile(scope: !755, file: !362, discriminator: 1)
!3763 = !DILocation(line: 874, column: 9, scope: !754)
!3764 = !DILocation(line: 875, column: 25, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3766, file: !362, line: 875, column: 17)
!3766 = distinct !DILexicalBlock(scope: !755, file: !362, line: 874, column: 16)
!3767 = !DILocation(line: 875, column: 24, scope: !3765)
!3768 = !DILocation(line: 875, column: 17, scope: !3765)
!3769 = !DILocation(line: 875, column: 31, scope: !3765)
!3770 = !DILocation(line: 875, column: 28, scope: !3765)
!3771 = !DILocation(line: 875, column: 17, scope: !3766)
!3772 = !DILocation(line: 878, column: 21, scope: !3765)
!3773 = !DILocation(line: 878, column: 26, scope: !3765)
!3774 = !DILocation(line: 878, column: 34, scope: !3765)
!3775 = !DILocation(line: 876, column: 24, scope: !3765)
!3776 = !DILocation(line: 876, column: 17, scope: !3765)
!3777 = !DILocation(line: 880, column: 9, scope: !750)
!3778 = !DILocation(line: 881, column: 5, scope: !676)
!3779 = !DILocation(line: 886, column: 14, scope: !759)
!3780 = !DILocation(line: 886, column: 13, scope: !759)
!3781 = !DILocation(line: 886, column: 21, scope: !759)
!3782 = !DILocation(line: 886, column: 13, scope: !760)
!3783 = !DILocation(line: 888, column: 13, scope: !758)
!3784 = !DILocation(line: 888, column: 24, scope: !758)
!3785 = !DILocation(line: 888, column: 59, scope: !758)
!3786 = !DILocation(line: 888, column: 58, scope: !758)
!3787 = !DILocation(line: 888, column: 41, scope: !758)
!3788 = !DILocation(line: 888, column: 41, scope: !3789)
!3789 = !DILexicalBlockFile(scope: !758, file: !362, discriminator: 1)
!3790 = !DILocation(line: 888, column: 41, scope: !3791)
!3791 = !DILexicalBlockFile(scope: !758, file: !362, discriminator: 2)
!3792 = !DILocation(line: 888, column: 41, scope: !3793)
!3793 = !DILexicalBlockFile(scope: !3794, file: !362, discriminator: 4)
!3794 = !DILexicalBlockFile(scope: !758, file: !362, discriminator: 3)
!3795 = !DILocation(line: 890, column: 17, scope: !764)
!3796 = !DILocation(line: 890, column: 19, scope: !764)
!3797 = !DILocation(line: 890, column: 26, scope: !764)
!3798 = !DILocation(line: 890, column: 29, scope: !3799)
!3799 = !DILexicalBlockFile(scope: !764, file: !362, discriminator: 1)
!3800 = !DILocation(line: 890, column: 33, scope: !764)
!3801 = !DILocation(line: 890, column: 17, scope: !758)
!3802 = !DILocation(line: 891, column: 35, scope: !764)
!3803 = !DILocation(line: 891, column: 17, scope: !764)
!3804 = !DILocation(line: 892, column: 39, scope: !763)
!3805 = !DILocation(line: 892, column: 46, scope: !763)
!3806 = !DILocation(line: 892, column: 57, scope: !763)
!3807 = !DILocation(line: 892, column: 66, scope: !763)
!3808 = !DILocation(line: 892, column: 83, scope: !763)
!3809 = !DILocation(line: 892, column: 22, scope: !764)
!3810 = !DILocation(line: 893, column: 17, scope: !762)
!3811 = !DILocation(line: 893, column: 28, scope: !762)
!3812 = !DILocation(line: 894, column: 48, scope: !762)
!3813 = !DILocation(line: 894, column: 24, scope: !762)
!3814 = !DILocation(line: 894, column: 22, scope: !762)
!3815 = !DILocation(line: 895, column: 21, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !762, file: !362, line: 895, column: 21)
!3817 = !DILocation(line: 895, column: 26, scope: !3816)
!3818 = !DILocation(line: 895, column: 21, scope: !762)
!3819 = !DILocation(line: 897, column: 39, scope: !3816)
!3820 = !DILocation(line: 897, column: 44, scope: !3816)
!3821 = !DILocation(line: 897, column: 52, scope: !3816)
!3822 = !DILocation(line: 896, column: 28, scope: !3816)
!3823 = !DILocation(line: 896, column: 21, scope: !3816)
!3824 = !DILocation(line: 898, column: 35, scope: !762)
!3825 = !DILocation(line: 898, column: 38, scope: !762)
!3826 = !DILocation(line: 898, column: 43, scope: !762)
!3827 = !DILocation(line: 898, column: 49, scope: !762)
!3828 = !DILocation(line: 898, column: 17, scope: !762)
!3829 = !DILocation(line: 899, column: 13, scope: !763)
!3830 = !DILocation(line: 899, column: 13, scope: !3831)
!3831 = !DILexicalBlockFile(scope: !763, file: !362, discriminator: 1)
!3832 = !DILocation(line: 899, column: 13, scope: !762)
!3833 = !DILocation(line: 901, column: 17, scope: !766)
!3834 = !DILocation(line: 901, column: 23, scope: !766)
!3835 = !DILocation(line: 902, column: 31, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !766, file: !362, line: 902, column: 21)
!3837 = !DILocation(line: 902, column: 36, scope: !3836)
!3838 = !DILocation(line: 902, column: 21, scope: !3836)
!3839 = !DILocation(line: 902, column: 45, scope: !3836)
!3840 = !DILocation(line: 902, column: 21, scope: !766)
!3841 = !DILocation(line: 903, column: 39, scope: !3836)
!3842 = !DILocation(line: 903, column: 44, scope: !3836)
!3843 = !DILocation(line: 903, column: 49, scope: !3836)
!3844 = !DILocation(line: 903, column: 57, scope: !3836)
!3845 = !DILocation(line: 903, column: 28, scope: !3836)
!3846 = !DILocation(line: 903, column: 21, scope: !3836)
!3847 = !DILocation(line: 904, column: 13, scope: !763)
!3848 = !DILocation(line: 904, column: 13, scope: !3831)
!3849 = !DILocation(line: 905, column: 28, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !758, file: !362, line: 905, column: 17)
!3851 = !DILocation(line: 905, column: 31, scope: !3850)
!3852 = !DILocation(line: 905, column: 17, scope: !3850)
!3853 = !DILocation(line: 905, column: 17, scope: !758)
!3854 = !DILocation(line: 908, column: 21, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3850, file: !362, line: 905, column: 58)
!3856 = !DILocation(line: 908, column: 26, scope: !3855)
!3857 = !DILocation(line: 908, column: 34, scope: !3855)
!3858 = !DILocation(line: 906, column: 24, scope: !3855)
!3859 = !DILocation(line: 906, column: 17, scope: !3855)
!3860 = !DILocation(line: 910, column: 19, scope: !758)
!3861 = !DILocation(line: 911, column: 9, scope: !759)
!3862 = !DILocation(line: 911, column: 9, scope: !3863)
!3863 = !DILexicalBlockFile(scope: !759, file: !362, discriminator: 1)
!3864 = !DILocation(line: 911, column: 9, scope: !758)
!3865 = !DILocation(line: 911, column: 21, scope: !769)
!3866 = !DILocation(line: 911, column: 20, scope: !769)
!3867 = !DILocation(line: 911, column: 28, scope: !769)
!3868 = !DILocation(line: 911, column: 20, scope: !759)
!3869 = !DILocation(line: 913, column: 13, scope: !768)
!3870 = !DILocation(line: 913, column: 20, scope: !768)
!3871 = !DILocation(line: 913, column: 51, scope: !768)
!3872 = !DILocation(line: 913, column: 50, scope: !768)
!3873 = !DILocation(line: 913, column: 33, scope: !768)
!3874 = !DILocation(line: 913, column: 33, scope: !3875)
!3875 = !DILexicalBlockFile(scope: !768, file: !362, discriminator: 1)
!3876 = !DILocation(line: 913, column: 33, scope: !3877)
!3877 = !DILexicalBlockFile(scope: !768, file: !362, discriminator: 2)
!3878 = !DILocation(line: 913, column: 33, scope: !3879)
!3879 = !DILexicalBlockFile(scope: !3880, file: !362, discriminator: 4)
!3880 = !DILexicalBlockFile(scope: !768, file: !362, discriminator: 3)
!3881 = !DILocation(line: 914, column: 13, scope: !768)
!3882 = !DILocation(line: 914, column: 18, scope: !768)
!3883 = !DILocation(line: 914, column: 31, scope: !768)
!3884 = !DILocation(line: 914, column: 43, scope: !768)
!3885 = !DILocation(line: 914, column: 62, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !768, file: !362, line: 914, column: 62)
!3887 = !DILocation(line: 914, column: 68, scope: !3886)
!3888 = !DILocation(line: 914, column: 62, scope: !768)
!3889 = !DILocation(line: 914, column: 94, scope: !3890)
!3890 = !DILexicalBlockFile(scope: !3886, file: !362, discriminator: 1)
!3891 = !DILocation(line: 914, column: 93, scope: !3886)
!3892 = !DILocation(line: 914, column: 76, scope: !3886)
!3893 = !DILocation(line: 914, column: 76, scope: !3894)
!3894 = !DILexicalBlockFile(scope: !3886, file: !362, discriminator: 3)
!3895 = !DILocation(line: 914, column: 76, scope: !3896)
!3896 = !DILexicalBlockFile(scope: !3886, file: !362, discriminator: 4)
!3897 = !DILocation(line: 914, column: 76, scope: !3898)
!3898 = !DILexicalBlockFile(scope: !3899, file: !362, discriminator: 6)
!3899 = !DILexicalBlockFile(scope: !3886, file: !362, discriminator: 5)
!3900 = !DILocation(line: 914, column: 75, scope: !3886)
!3901 = !DILocation(line: 914, column: 73, scope: !3886)
!3902 = !DILocation(line: 914, column: 139, scope: !3903)
!3903 = !DILexicalBlockFile(scope: !3886, file: !362, discriminator: 2)
!3904 = !DILocation(line: 914, column: 138, scope: !3886)
!3905 = !DILocation(line: 914, column: 121, scope: !3886)
!3906 = !DILocation(line: 914, column: 121, scope: !3907)
!3907 = !DILexicalBlockFile(scope: !3886, file: !362, discriminator: 7)
!3908 = !DILocation(line: 914, column: 121, scope: !3909)
!3909 = !DILexicalBlockFile(scope: !3886, file: !362, discriminator: 8)
!3910 = !DILocation(line: 914, column: 121, scope: !3911)
!3911 = !DILexicalBlockFile(scope: !3912, file: !362, discriminator: 10)
!3912 = !DILexicalBlockFile(scope: !3886, file: !362, discriminator: 9)
!3913 = !DILocation(line: 914, column: 120, scope: !3886)
!3914 = !DILocation(line: 916, column: 17, scope: !775)
!3915 = !DILocation(line: 916, column: 19, scope: !775)
!3916 = !DILocation(line: 916, column: 26, scope: !775)
!3917 = !DILocation(line: 916, column: 29, scope: !3918)
!3918 = !DILexicalBlockFile(scope: !775, file: !362, discriminator: 1)
!3919 = !DILocation(line: 916, column: 33, scope: !775)
!3920 = !DILocation(line: 916, column: 17, scope: !768)
!3921 = !DILocation(line: 917, column: 18, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !775, file: !362, line: 916, column: 55)
!3923 = !DILocation(line: 917, column: 20, scope: !3922)
!3924 = !DILocation(line: 918, column: 21, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3922, file: !362, line: 918, column: 21)
!3926 = !DILocation(line: 918, column: 27, scope: !3925)
!3927 = !DILocation(line: 918, column: 21, scope: !3922)
!3928 = !DILocation(line: 918, column: 33, scope: !3929)
!3929 = !DILexicalBlockFile(scope: !3925, file: !362, discriminator: 1)
!3930 = !DILocation(line: 918, column: 35, scope: !3925)
!3931 = !DILocation(line: 918, column: 32, scope: !3925)
!3932 = !DILocation(line: 918, column: 185, scope: !3933)
!3933 = !DILexicalBlockFile(scope: !3934, file: !362, discriminator: 2)
!3934 = distinct !DILexicalBlock(scope: !3925, file: !362, line: 918, column: 44)
!3935 = !DILocation(line: 918, column: 187, scope: !3934)
!3936 = !DILocation(line: 919, column: 13, scope: !3922)
!3937 = !DILocation(line: 920, column: 39, scope: !774)
!3938 = !DILocation(line: 920, column: 46, scope: !774)
!3939 = !DILocation(line: 920, column: 57, scope: !774)
!3940 = !DILocation(line: 920, column: 66, scope: !774)
!3941 = !DILocation(line: 920, column: 83, scope: !774)
!3942 = !DILocation(line: 920, column: 22, scope: !775)
!3943 = !DILocation(line: 921, column: 17, scope: !773)
!3944 = !DILocation(line: 921, column: 28, scope: !773)
!3945 = !DILocation(line: 922, column: 48, scope: !773)
!3946 = !DILocation(line: 922, column: 24, scope: !773)
!3947 = !DILocation(line: 922, column: 22, scope: !773)
!3948 = !DILocation(line: 923, column: 21, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !773, file: !362, line: 923, column: 21)
!3950 = !DILocation(line: 923, column: 26, scope: !3949)
!3951 = !DILocation(line: 923, column: 21, scope: !773)
!3952 = !DILocation(line: 925, column: 39, scope: !3949)
!3953 = !DILocation(line: 925, column: 44, scope: !3949)
!3954 = !DILocation(line: 925, column: 52, scope: !3949)
!3955 = !DILocation(line: 924, column: 28, scope: !3949)
!3956 = !DILocation(line: 924, column: 21, scope: !3949)
!3957 = !DILocation(line: 926, column: 22, scope: !773)
!3958 = !DILocation(line: 926, column: 18, scope: !773)
!3959 = !DILocation(line: 926, column: 20, scope: !773)
!3960 = !DILocation(line: 927, column: 21, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !773, file: !362, line: 927, column: 21)
!3962 = !DILocation(line: 927, column: 27, scope: !3961)
!3963 = !DILocation(line: 927, column: 21, scope: !773)
!3964 = !DILocation(line: 927, column: 36, scope: !3965)
!3965 = !DILexicalBlockFile(scope: !3961, file: !362, discriminator: 1)
!3966 = !DILocation(line: 927, column: 33, scope: !3961)
!3967 = !DILocation(line: 927, column: 35, scope: !3961)
!3968 = !DILocation(line: 927, column: 32, scope: !3961)
!3969 = !DILocation(line: 927, column: 65, scope: !3970)
!3970 = !DILexicalBlockFile(scope: !3971, file: !362, discriminator: 2)
!3971 = distinct !DILexicalBlock(scope: !3972, file: !362, line: 927, column: 52)
!3972 = distinct !DILexicalBlock(scope: !3961, file: !362, line: 927, column: 46)
!3973 = !DILocation(line: 927, column: 63, scope: !3971)
!3974 = !DILocation(line: 927, column: 52, scope: !3972)
!3975 = !DILocation(line: 927, column: 88, scope: !3976)
!3976 = !DILexicalBlockFile(scope: !3977, file: !362, discriminator: 3)
!3977 = distinct !DILexicalBlock(scope: !3971, file: !362, line: 927, column: 70)
!3978 = !DILocation(line: 927, column: 72, scope: !3977)
!3979 = !DILocation(line: 927, column: 163, scope: !3977)
!3980 = !DILocation(line: 927, column: 168, scope: !3977)
!3981 = !DILocation(line: 927, column: 176, scope: !3977)
!3982 = !DILocation(line: 927, column: 148, scope: !3977)
!3983 = !DILocation(line: 927, column: 141, scope: !3977)
!3984 = !DILocation(line: 927, column: 198, scope: !3985)
!3985 = !DILexicalBlockFile(scope: !3972, file: !362, discriminator: 4)
!3986 = !DILocation(line: 927, column: 193, scope: !3972)
!3987 = !DILocation(line: 927, column: 189, scope: !3972)
!3988 = !DILocation(line: 927, column: 191, scope: !3972)
!3989 = !DILocation(line: 928, column: 13, scope: !774)
!3990 = !DILocation(line: 928, column: 13, scope: !3991)
!3991 = !DILexicalBlockFile(scope: !774, file: !362, discriminator: 1)
!3992 = !DILocation(line: 928, column: 13, scope: !773)
!3993 = !DILocation(line: 931, column: 17, scope: !777)
!3994 = !DILocation(line: 931, column: 23, scope: !777)
!3995 = !DILocation(line: 932, column: 17, scope: !777)
!3996 = !DILocation(line: 932, column: 28, scope: !777)
!3997 = !DILocation(line: 932, column: 50, scope: !777)
!3998 = !DILocation(line: 932, column: 55, scope: !777)
!3999 = !DILocation(line: 932, column: 36, scope: !777)
!4000 = !DILocation(line: 933, column: 21, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !777, file: !362, line: 933, column: 21)
!4002 = !DILocation(line: 933, column: 27, scope: !4001)
!4003 = !DILocation(line: 933, column: 21, scope: !777)
!4004 = !DILocation(line: 934, column: 39, scope: !4001)
!4005 = !DILocation(line: 934, column: 44, scope: !4001)
!4006 = !DILocation(line: 934, column: 49, scope: !4001)
!4007 = !DILocation(line: 934, column: 57, scope: !4001)
!4008 = !DILocation(line: 934, column: 28, scope: !4001)
!4009 = !DILocation(line: 934, column: 21, scope: !4001)
!4010 = !DILocation(line: 935, column: 21, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !777, file: !362, line: 935, column: 21)
!4012 = !DILocation(line: 935, column: 27, scope: !4011)
!4013 = !DILocation(line: 935, column: 21, scope: !777)
!4014 = !DILocation(line: 935, column: 36, scope: !4015)
!4015 = !DILexicalBlockFile(scope: !4011, file: !362, discriminator: 1)
!4016 = !DILocation(line: 935, column: 33, scope: !4011)
!4017 = !DILocation(line: 935, column: 35, scope: !4011)
!4018 = !DILocation(line: 935, column: 32, scope: !4011)
!4019 = !DILocation(line: 935, column: 67, scope: !4020)
!4020 = !DILexicalBlockFile(scope: !4021, file: !362, discriminator: 2)
!4021 = distinct !DILexicalBlock(scope: !4022, file: !362, line: 935, column: 54)
!4022 = distinct !DILexicalBlock(scope: !4011, file: !362, line: 935, column: 48)
!4023 = !DILocation(line: 935, column: 65, scope: !4021)
!4024 = !DILocation(line: 935, column: 54, scope: !4022)
!4025 = !DILocation(line: 935, column: 92, scope: !4026)
!4026 = !DILexicalBlockFile(scope: !4027, file: !362, discriminator: 3)
!4027 = distinct !DILexicalBlock(scope: !4021, file: !362, line: 935, column: 74)
!4028 = !DILocation(line: 935, column: 76, scope: !4027)
!4029 = !DILocation(line: 935, column: 167, scope: !4027)
!4030 = !DILocation(line: 935, column: 172, scope: !4027)
!4031 = !DILocation(line: 935, column: 180, scope: !4027)
!4032 = !DILocation(line: 935, column: 152, scope: !4027)
!4033 = !DILocation(line: 935, column: 145, scope: !4027)
!4034 = !DILocation(line: 935, column: 202, scope: !4035)
!4035 = !DILexicalBlockFile(scope: !4022, file: !362, discriminator: 4)
!4036 = !DILocation(line: 935, column: 197, scope: !4022)
!4037 = !DILocation(line: 935, column: 193, scope: !4022)
!4038 = !DILocation(line: 935, column: 195, scope: !4022)
!4039 = !DILocation(line: 936, column: 13, scope: !774)
!4040 = !DILocation(line: 936, column: 13, scope: !3991)
!4041 = !DILocation(line: 937, column: 19, scope: !768)
!4042 = !DILocation(line: 938, column: 9, scope: !769)
!4043 = !DILocation(line: 938, column: 9, scope: !4044)
!4044 = !DILexicalBlockFile(scope: !769, file: !362, discriminator: 1)
!4045 = !DILocation(line: 938, column: 9, scope: !768)
!4046 = !DILocation(line: 940, column: 13, scope: !780)
!4047 = !DILocation(line: 940, column: 20, scope: !780)
!4048 = !DILocation(line: 940, column: 42, scope: !780)
!4049 = !DILocation(line: 940, column: 41, scope: !780)
!4050 = !DILocation(line: 940, column: 24, scope: !780)
!4051 = !DILocation(line: 940, column: 24, scope: !4052)
!4052 = !DILexicalBlockFile(scope: !780, file: !362, discriminator: 1)
!4053 = !DILocation(line: 940, column: 24, scope: !4054)
!4054 = !DILexicalBlockFile(scope: !780, file: !362, discriminator: 2)
!4055 = !DILocation(line: 940, column: 24, scope: !4056)
!4056 = !DILexicalBlockFile(scope: !4057, file: !362, discriminator: 4)
!4057 = !DILexicalBlockFile(scope: !780, file: !362, discriminator: 3)
!4058 = !DILocation(line: 941, column: 13, scope: !780)
!4059 = !DILocation(line: 941, column: 24, scope: !780)
!4060 = !DILocation(line: 942, column: 18, scope: !780)
!4061 = !DILocation(line: 944, column: 17, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !780, file: !362, line: 944, column: 17)
!4063 = !DILocation(line: 944, column: 19, scope: !4062)
!4064 = !DILocation(line: 944, column: 26, scope: !4062)
!4065 = !DILocation(line: 944, column: 29, scope: !4066)
!4066 = !DILexicalBlockFile(scope: !4062, file: !362, discriminator: 1)
!4067 = !DILocation(line: 944, column: 33, scope: !4062)
!4068 = !DILocation(line: 944, column: 17, scope: !780)
!4069 = !DILocation(line: 945, column: 18, scope: !4062)
!4070 = !DILocation(line: 945, column: 20, scope: !4062)
!4071 = !DILocation(line: 945, column: 17, scope: !4062)
!4072 = !DILocation(line: 946, column: 39, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4062, file: !362, line: 946, column: 22)
!4074 = !DILocation(line: 946, column: 46, scope: !4073)
!4075 = !DILocation(line: 946, column: 57, scope: !4073)
!4076 = !DILocation(line: 946, column: 66, scope: !4073)
!4077 = !DILocation(line: 946, column: 83, scope: !4073)
!4078 = !DILocation(line: 946, column: 22, scope: !4062)
!4079 = !DILocation(line: 947, column: 48, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4073, file: !362, line: 946, column: 90)
!4081 = !DILocation(line: 947, column: 24, scope: !4080)
!4082 = !DILocation(line: 947, column: 22, scope: !4080)
!4083 = !DILocation(line: 948, column: 21, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4080, file: !362, line: 948, column: 21)
!4085 = !DILocation(line: 948, column: 26, scope: !4084)
!4086 = !DILocation(line: 948, column: 21, scope: !4080)
!4087 = !DILocation(line: 950, column: 39, scope: !4084)
!4088 = !DILocation(line: 950, column: 44, scope: !4084)
!4089 = !DILocation(line: 950, column: 52, scope: !4084)
!4090 = !DILocation(line: 949, column: 28, scope: !4084)
!4091 = !DILocation(line: 949, column: 21, scope: !4084)
!4092 = !DILocation(line: 951, column: 22, scope: !4080)
!4093 = !DILocation(line: 951, column: 18, scope: !4080)
!4094 = !DILocation(line: 951, column: 20, scope: !4080)
!4095 = !DILocation(line: 952, column: 13, scope: !4080)
!4096 = !DILocation(line: 954, column: 35, scope: !4073)
!4097 = !DILocation(line: 954, column: 37, scope: !4073)
!4098 = !DILocation(line: 955, column: 35, scope: !4073)
!4099 = !DILocation(line: 955, column: 40, scope: !4073)
!4100 = !DILocation(line: 955, column: 48, scope: !4073)
!4101 = !DILocation(line: 954, column: 24, scope: !4073)
!4102 = !DILocation(line: 954, column: 17, scope: !4073)
!4103 = !DILocation(line: 956, column: 18, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !780, file: !362, line: 956, column: 17)
!4105 = !DILocation(line: 956, column: 17, scope: !4104)
!4106 = !DILocation(line: 956, column: 20, scope: !4104)
!4107 = !DILocation(line: 956, column: 34, scope: !4104)
!4108 = !DILocation(line: 956, column: 37, scope: !4109)
!4109 = !DILexicalBlockFile(scope: !4104, file: !362, discriminator: 1)
!4110 = !DILocation(line: 956, column: 42, scope: !4104)
!4111 = !DILocation(line: 956, column: 56, scope: !4104)
!4112 = !DILocation(line: 956, column: 80, scope: !4113)
!4113 = !DILexicalBlockFile(scope: !4104, file: !362, discriminator: 2)
!4114 = !DILocation(line: 956, column: 79, scope: !4104)
!4115 = !DILocation(line: 956, column: 72, scope: !4104)
!4116 = !DILocation(line: 956, column: 86, scope: !4104)
!4117 = !DILocation(line: 956, column: 83, scope: !4104)
!4118 = !DILocation(line: 956, column: 17, scope: !780)
!4119 = !DILocation(line: 958, column: 21, scope: !4104)
!4120 = !DILocation(line: 958, column: 23, scope: !4104)
!4121 = !DILocation(line: 960, column: 21, scope: !4104)
!4122 = !DILocation(line: 960, column: 26, scope: !4104)
!4123 = !DILocation(line: 960, column: 34, scope: !4104)
!4124 = !DILocation(line: 957, column: 24, scope: !4104)
!4125 = !DILocation(line: 957, column: 17, scope: !4104)
!4126 = !DILocation(line: 961, column: 9, scope: !769)
!4127 = !DILocation(line: 961, column: 9, scope: !4044)
!4128 = !DILocation(line: 962, column: 9, scope: !760)
!4129 = !DILocation(line: 968, column: 9, scope: !783)
!4130 = !DILocation(line: 968, column: 22, scope: !783)
!4131 = !DILocation(line: 968, column: 44, scope: !783)
!4132 = !DILocation(line: 968, column: 43, scope: !783)
!4133 = !DILocation(line: 968, column: 26, scope: !783)
!4134 = !DILocation(line: 968, column: 26, scope: !4135)
!4135 = !DILexicalBlockFile(scope: !783, file: !362, discriminator: 1)
!4136 = !DILocation(line: 968, column: 26, scope: !4137)
!4137 = !DILexicalBlockFile(scope: !783, file: !362, discriminator: 2)
!4138 = !DILocation(line: 968, column: 26, scope: !4139)
!4139 = !DILexicalBlockFile(scope: !4140, file: !362, discriminator: 4)
!4140 = !DILexicalBlockFile(scope: !783, file: !362, discriminator: 3)
!4141 = !DILocation(line: 970, column: 14, scope: !789)
!4142 = !DILocation(line: 970, column: 13, scope: !789)
!4143 = !DILocation(line: 970, column: 21, scope: !789)
!4144 = !DILocation(line: 970, column: 13, scope: !783)
!4145 = !DILocation(line: 972, column: 13, scope: !788)
!4146 = !DILocation(line: 972, column: 18, scope: !788)
!4147 = !DILocation(line: 972, column: 31, scope: !788)
!4148 = !DILocation(line: 972, column: 43, scope: !788)
!4149 = !DILocation(line: 972, column: 62, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !788, file: !362, line: 972, column: 62)
!4151 = !DILocation(line: 972, column: 68, scope: !4150)
!4152 = !DILocation(line: 972, column: 62, scope: !788)
!4153 = !DILocation(line: 972, column: 94, scope: !4154)
!4154 = !DILexicalBlockFile(scope: !4150, file: !362, discriminator: 1)
!4155 = !DILocation(line: 972, column: 93, scope: !4150)
!4156 = !DILocation(line: 972, column: 76, scope: !4150)
!4157 = !DILocation(line: 972, column: 76, scope: !4158)
!4158 = !DILexicalBlockFile(scope: !4150, file: !362, discriminator: 3)
!4159 = !DILocation(line: 972, column: 76, scope: !4160)
!4160 = !DILexicalBlockFile(scope: !4150, file: !362, discriminator: 4)
!4161 = !DILocation(line: 972, column: 76, scope: !4162)
!4162 = !DILexicalBlockFile(scope: !4163, file: !362, discriminator: 6)
!4163 = !DILexicalBlockFile(scope: !4150, file: !362, discriminator: 5)
!4164 = !DILocation(line: 972, column: 75, scope: !4150)
!4165 = !DILocation(line: 972, column: 73, scope: !4150)
!4166 = !DILocation(line: 972, column: 139, scope: !4167)
!4167 = !DILexicalBlockFile(scope: !4150, file: !362, discriminator: 2)
!4168 = !DILocation(line: 972, column: 138, scope: !4150)
!4169 = !DILocation(line: 972, column: 121, scope: !4150)
!4170 = !DILocation(line: 972, column: 121, scope: !4171)
!4171 = !DILexicalBlockFile(scope: !4150, file: !362, discriminator: 7)
!4172 = !DILocation(line: 972, column: 121, scope: !4173)
!4173 = !DILexicalBlockFile(scope: !4150, file: !362, discriminator: 8)
!4174 = !DILocation(line: 972, column: 121, scope: !4175)
!4175 = !DILexicalBlockFile(scope: !4176, file: !362, discriminator: 10)
!4176 = !DILexicalBlockFile(scope: !4150, file: !362, discriminator: 9)
!4177 = !DILocation(line: 972, column: 120, scope: !4150)
!4178 = !DILocation(line: 974, column: 17, scope: !794)
!4179 = !DILocation(line: 974, column: 19, scope: !794)
!4180 = !DILocation(line: 974, column: 26, scope: !794)
!4181 = !DILocation(line: 974, column: 29, scope: !4182)
!4182 = !DILexicalBlockFile(scope: !794, file: !362, discriminator: 1)
!4183 = !DILocation(line: 974, column: 33, scope: !794)
!4184 = !DILocation(line: 974, column: 17, scope: !788)
!4185 = !DILocation(line: 975, column: 18, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !794, file: !362, line: 974, column: 55)
!4187 = !DILocation(line: 975, column: 20, scope: !4186)
!4188 = !DILocation(line: 976, column: 21, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4186, file: !362, line: 976, column: 21)
!4190 = !DILocation(line: 976, column: 27, scope: !4189)
!4191 = !DILocation(line: 976, column: 21, scope: !4186)
!4192 = !DILocation(line: 976, column: 33, scope: !4193)
!4193 = !DILexicalBlockFile(scope: !4189, file: !362, discriminator: 1)
!4194 = !DILocation(line: 976, column: 35, scope: !4189)
!4195 = !DILocation(line: 976, column: 32, scope: !4189)
!4196 = !DILocation(line: 976, column: 185, scope: !4197)
!4197 = !DILexicalBlockFile(scope: !4198, file: !362, discriminator: 2)
!4198 = distinct !DILexicalBlock(scope: !4189, file: !362, line: 976, column: 44)
!4199 = !DILocation(line: 976, column: 187, scope: !4198)
!4200 = !DILocation(line: 977, column: 13, scope: !4186)
!4201 = !DILocation(line: 978, column: 39, scope: !793)
!4202 = !DILocation(line: 978, column: 46, scope: !793)
!4203 = !DILocation(line: 978, column: 57, scope: !793)
!4204 = !DILocation(line: 978, column: 66, scope: !793)
!4205 = !DILocation(line: 978, column: 83, scope: !793)
!4206 = !DILocation(line: 978, column: 22, scope: !794)
!4207 = !DILocation(line: 979, column: 17, scope: !792)
!4208 = !DILocation(line: 979, column: 28, scope: !792)
!4209 = !DILocation(line: 980, column: 49, scope: !792)
!4210 = !DILocation(line: 980, column: 22, scope: !792)
!4211 = !DILocation(line: 980, column: 18, scope: !792)
!4212 = !DILocation(line: 980, column: 20, scope: !792)
!4213 = !DILocation(line: 981, column: 22, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !792, file: !362, line: 981, column: 21)
!4215 = !DILocation(line: 981, column: 21, scope: !4214)
!4216 = !DILocation(line: 981, column: 24, scope: !4214)
!4217 = !DILocation(line: 981, column: 21, scope: !792)
!4218 = !DILocation(line: 982, column: 28, scope: !4214)
!4219 = !DILocation(line: 982, column: 21, scope: !4214)
!4220 = !DILocation(line: 983, column: 21, scope: !4221)
!4221 = distinct !DILexicalBlock(scope: !792, file: !362, line: 983, column: 21)
!4222 = !DILocation(line: 983, column: 27, scope: !4221)
!4223 = !DILocation(line: 983, column: 21, scope: !792)
!4224 = !DILocation(line: 983, column: 36, scope: !4225)
!4225 = !DILexicalBlockFile(scope: !4221, file: !362, discriminator: 1)
!4226 = !DILocation(line: 983, column: 33, scope: !4221)
!4227 = !DILocation(line: 983, column: 35, scope: !4221)
!4228 = !DILocation(line: 983, column: 32, scope: !4221)
!4229 = !DILocation(line: 983, column: 65, scope: !4230)
!4230 = !DILexicalBlockFile(scope: !4231, file: !362, discriminator: 2)
!4231 = distinct !DILexicalBlock(scope: !4232, file: !362, line: 983, column: 52)
!4232 = distinct !DILexicalBlock(scope: !4221, file: !362, line: 983, column: 46)
!4233 = !DILocation(line: 983, column: 63, scope: !4231)
!4234 = !DILocation(line: 983, column: 52, scope: !4232)
!4235 = !DILocation(line: 983, column: 88, scope: !4236)
!4236 = !DILexicalBlockFile(scope: !4237, file: !362, discriminator: 3)
!4237 = distinct !DILexicalBlock(scope: !4231, file: !362, line: 983, column: 70)
!4238 = !DILocation(line: 983, column: 72, scope: !4237)
!4239 = !DILocation(line: 983, column: 163, scope: !4237)
!4240 = !DILocation(line: 983, column: 168, scope: !4237)
!4241 = !DILocation(line: 983, column: 176, scope: !4237)
!4242 = !DILocation(line: 983, column: 148, scope: !4237)
!4243 = !DILocation(line: 983, column: 141, scope: !4237)
!4244 = !DILocation(line: 983, column: 198, scope: !4245)
!4245 = !DILexicalBlockFile(scope: !4232, file: !362, discriminator: 4)
!4246 = !DILocation(line: 983, column: 193, scope: !4232)
!4247 = !DILocation(line: 983, column: 189, scope: !4232)
!4248 = !DILocation(line: 983, column: 191, scope: !4232)
!4249 = !DILocation(line: 984, column: 13, scope: !793)
!4250 = !DILocation(line: 984, column: 13, scope: !4251)
!4251 = !DILexicalBlockFile(scope: !793, file: !362, discriminator: 1)
!4252 = !DILocation(line: 984, column: 13, scope: !792)
!4253 = !DILocation(line: 986, column: 50, scope: !793)
!4254 = !DILocation(line: 986, column: 55, scope: !793)
!4255 = !DILocation(line: 986, column: 63, scope: !793)
!4256 = !DILocation(line: 986, column: 24, scope: !793)
!4257 = !DILocation(line: 986, column: 17, scope: !793)
!4258 = !DILocation(line: 987, column: 19, scope: !788)
!4259 = !DILocation(line: 988, column: 9, scope: !789)
!4260 = !DILocation(line: 988, column: 9, scope: !4261)
!4261 = !DILexicalBlockFile(scope: !789, file: !362, discriminator: 1)
!4262 = !DILocation(line: 988, column: 9, scope: !788)
!4263 = !DILocation(line: 990, column: 17, scope: !798)
!4264 = !DILocation(line: 990, column: 19, scope: !798)
!4265 = !DILocation(line: 990, column: 26, scope: !798)
!4266 = !DILocation(line: 990, column: 29, scope: !4267)
!4267 = !DILexicalBlockFile(scope: !798, file: !362, discriminator: 1)
!4268 = !DILocation(line: 990, column: 33, scope: !798)
!4269 = !DILocation(line: 990, column: 17, scope: !799)
!4270 = !DILocation(line: 991, column: 18, scope: !798)
!4271 = !DILocation(line: 991, column: 20, scope: !798)
!4272 = !DILocation(line: 991, column: 17, scope: !798)
!4273 = !DILocation(line: 992, column: 39, scope: !797)
!4274 = !DILocation(line: 992, column: 46, scope: !797)
!4275 = !DILocation(line: 992, column: 57, scope: !797)
!4276 = !DILocation(line: 992, column: 66, scope: !797)
!4277 = !DILocation(line: 992, column: 83, scope: !797)
!4278 = !DILocation(line: 992, column: 22, scope: !798)
!4279 = !DILocation(line: 993, column: 17, scope: !796)
!4280 = !DILocation(line: 993, column: 28, scope: !796)
!4281 = !DILocation(line: 994, column: 49, scope: !796)
!4282 = !DILocation(line: 994, column: 22, scope: !796)
!4283 = !DILocation(line: 994, column: 18, scope: !796)
!4284 = !DILocation(line: 994, column: 20, scope: !796)
!4285 = !DILocation(line: 995, column: 22, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !796, file: !362, line: 995, column: 21)
!4287 = !DILocation(line: 995, column: 21, scope: !4286)
!4288 = !DILocation(line: 995, column: 24, scope: !4286)
!4289 = !DILocation(line: 995, column: 21, scope: !796)
!4290 = !DILocation(line: 996, column: 28, scope: !4286)
!4291 = !DILocation(line: 996, column: 21, scope: !4286)
!4292 = !DILocation(line: 997, column: 40, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !796, file: !362, line: 997, column: 21)
!4294 = !DILocation(line: 997, column: 39, scope: !4293)
!4295 = !DILocation(line: 997, column: 21, scope: !4293)
!4296 = !DILocation(line: 997, column: 46, scope: !4293)
!4297 = !DILocation(line: 997, column: 43, scope: !4293)
!4298 = !DILocation(line: 997, column: 21, scope: !796)
!4299 = !DILocation(line: 1000, column: 25, scope: !4293)
!4300 = !DILocation(line: 1000, column: 30, scope: !4293)
!4301 = !DILocation(line: 1000, column: 38, scope: !4293)
!4302 = !DILocation(line: 998, column: 28, scope: !4293)
!4303 = !DILocation(line: 998, column: 21, scope: !4293)
!4304 = !DILocation(line: 1001, column: 13, scope: !797)
!4305 = !DILocation(line: 1001, column: 13, scope: !4306)
!4306 = !DILexicalBlockFile(scope: !797, file: !362, discriminator: 1)
!4307 = !DILocation(line: 1001, column: 13, scope: !796)
!4308 = !DILocation(line: 1002, column: 35, scope: !797)
!4309 = !DILocation(line: 1002, column: 37, scope: !797)
!4310 = !DILocation(line: 1003, column: 35, scope: !797)
!4311 = !DILocation(line: 1003, column: 40, scope: !797)
!4312 = !DILocation(line: 1003, column: 48, scope: !797)
!4313 = !DILocation(line: 1002, column: 24, scope: !797)
!4314 = !DILocation(line: 1002, column: 17, scope: !797)
!4315 = !DILocation(line: 1005, column: 9, scope: !783)
!4316 = !DILocation(line: 1006, column: 5, scope: !676)
!4317 = !DILocation(line: 1009, column: 9, scope: !801)
!4318 = !DILocation(line: 1009, column: 16, scope: !801)
!4319 = !DILocation(line: 1010, column: 9, scope: !801)
!4320 = !DILocation(line: 1010, column: 21, scope: !801)
!4321 = !DILocation(line: 1011, column: 9, scope: !801)
!4322 = !DILocation(line: 1011, column: 19, scope: !801)
!4323 = !DILocation(line: 1012, column: 9, scope: !801)
!4324 = !DILocation(line: 1012, column: 13, scope: !801)
!4325 = !DILocation(line: 1013, column: 9, scope: !801)
!4326 = !DILocation(line: 1013, column: 20, scope: !801)
!4327 = !DILocation(line: 1014, column: 9, scope: !801)
!4328 = !DILocation(line: 1014, column: 21, scope: !801)
!4329 = !DILocation(line: 1017, column: 52, scope: !801)
!4330 = !DILocation(line: 1017, column: 51, scope: !801)
!4331 = !DILocation(line: 1017, column: 34, scope: !801)
!4332 = !DILocation(line: 1017, column: 34, scope: !4333)
!4333 = !DILexicalBlockFile(scope: !801, file: !362, discriminator: 1)
!4334 = !DILocation(line: 1017, column: 34, scope: !4335)
!4335 = !DILexicalBlockFile(scope: !801, file: !362, discriminator: 2)
!4336 = !DILocation(line: 1017, column: 34, scope: !4337)
!4337 = !DILexicalBlockFile(scope: !4338, file: !362, discriminator: 4)
!4338 = !DILexicalBlockFile(scope: !801, file: !362, discriminator: 3)
!4339 = !DILocation(line: 1017, column: 18, scope: !801)
!4340 = !DILocation(line: 1018, column: 13, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !801, file: !362, line: 1018, column: 13)
!4342 = !DILocation(line: 1018, column: 22, scope: !4341)
!4343 = !DILocation(line: 1018, column: 13, scope: !801)
!4344 = !DILocation(line: 1019, column: 24, scope: !4341)
!4345 = !DILocation(line: 1019, column: 22, scope: !4341)
!4346 = !DILocation(line: 1019, column: 13, scope: !4341)
!4347 = !DILocation(line: 1025, column: 14, scope: !4348)
!4348 = distinct !DILexicalBlock(scope: !801, file: !362, line: 1025, column: 13)
!4349 = !DILocation(line: 1025, column: 13, scope: !4348)
!4350 = !DILocation(line: 1025, column: 21, scope: !4348)
!4351 = !DILocation(line: 1025, column: 13, scope: !801)
!4352 = !DILocation(line: 1026, column: 28, scope: !4348)
!4353 = !DILocation(line: 1026, column: 13, scope: !4348)
!4354 = !DILocation(line: 1027, column: 19, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4348, file: !362, line: 1027, column: 18)
!4356 = !DILocation(line: 1027, column: 18, scope: !4355)
!4357 = !DILocation(line: 1027, column: 26, scope: !4355)
!4358 = !DILocation(line: 1027, column: 18, scope: !4348)
!4359 = !DILocation(line: 1028, column: 28, scope: !4355)
!4360 = !DILocation(line: 1028, column: 13, scope: !4355)
!4361 = !DILocation(line: 1032, column: 17, scope: !4355)
!4362 = !DILocation(line: 1032, column: 22, scope: !4355)
!4363 = !DILocation(line: 1032, column: 30, scope: !4355)
!4364 = !DILocation(line: 1030, column: 20, scope: !4355)
!4365 = !DILocation(line: 1030, column: 13, scope: !4355)
!4366 = !DILocation(line: 1033, column: 45, scope: !801)
!4367 = !DILocation(line: 1033, column: 44, scope: !801)
!4368 = !DILocation(line: 1033, column: 27, scope: !801)
!4369 = !DILocation(line: 1033, column: 27, scope: !4333)
!4370 = !DILocation(line: 1033, column: 27, scope: !4335)
!4371 = !DILocation(line: 1033, column: 27, scope: !4337)
!4372 = !DILocation(line: 1033, column: 16, scope: !801)
!4373 = !DILocation(line: 1034, column: 15, scope: !801)
!4374 = !DILocation(line: 1035, column: 13, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !801, file: !362, line: 1035, column: 13)
!4376 = !DILocation(line: 1035, column: 20, scope: !4375)
!4377 = !DILocation(line: 1035, column: 13, scope: !801)
!4378 = !DILocation(line: 1037, column: 31, scope: !4375)
!4379 = !DILocation(line: 1037, column: 36, scope: !4375)
!4380 = !DILocation(line: 1037, column: 44, scope: !4375)
!4381 = !DILocation(line: 1036, column: 20, scope: !4375)
!4382 = !DILocation(line: 1036, column: 13, scope: !4375)
!4383 = !DILocation(line: 1040, column: 14, scope: !809)
!4384 = !DILocation(line: 1040, column: 29, scope: !809)
!4385 = !DILocation(line: 1041, column: 31, scope: !809)
!4386 = !DILocation(line: 1041, column: 38, scope: !809)
!4387 = !DILocation(line: 1041, column: 49, scope: !809)
!4388 = !DILocation(line: 1041, column: 58, scope: !809)
!4389 = !DILocation(line: 1041, column: 75, scope: !809)
!4390 = !DILocation(line: 1041, column: 81, scope: !809)
!4391 = !DILocation(line: 1041, column: 99, scope: !4392)
!4392 = !DILexicalBlockFile(scope: !809, file: !362, discriminator: 1)
!4393 = !DILocation(line: 1041, column: 106, scope: !809)
!4394 = !DILocation(line: 1041, column: 115, scope: !809)
!4395 = !DILocation(line: 1041, column: 138, scope: !809)
!4396 = !DILocation(line: 1041, column: 172, scope: !4397)
!4397 = !DILexicalBlockFile(scope: !809, file: !362, discriminator: 2)
!4398 = !DILocation(line: 1041, column: 179, scope: !809)
!4399 = !DILocation(line: 1041, column: 141, scope: !809)
!4400 = !DILocation(line: 1040, column: 13, scope: !801)
!4401 = !DILocation(line: 1042, column: 17, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !809, file: !362, line: 1041, column: 213)
!4403 = !DILocation(line: 1042, column: 15, scope: !4402)
!4404 = !DILocation(line: 1043, column: 29, scope: !4402)
!4405 = !DILocation(line: 1043, column: 34, scope: !4402)
!4406 = !DILocation(line: 1043, column: 43, scope: !4402)
!4407 = !DILocation(line: 1044, column: 39, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4402, file: !362, line: 1044, column: 17)
!4409 = !DILocation(line: 1044, column: 17, scope: !4408)
!4410 = !DILocation(line: 1044, column: 55, scope: !4408)
!4411 = !DILocation(line: 1044, column: 17, scope: !4402)
!4412 = !DILocation(line: 1046, column: 35, scope: !4408)
!4413 = !DILocation(line: 1046, column: 40, scope: !4408)
!4414 = !DILocation(line: 1046, column: 48, scope: !4408)
!4415 = !DILocation(line: 1045, column: 24, scope: !4408)
!4416 = !DILocation(line: 1045, column: 17, scope: !4408)
!4417 = !DILocation(line: 1047, column: 9, scope: !4402)
!4418 = !DILocation(line: 1049, column: 13, scope: !808)
!4419 = !DILocation(line: 1049, column: 23, scope: !808)
!4420 = !DILocation(line: 1052, column: 38, scope: !808)
!4421 = !DILocation(line: 1052, column: 17, scope: !808)
!4422 = !DILocation(line: 1052, column: 15, scope: !808)
!4423 = !DILocation(line: 1053, column: 17, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !808, file: !362, line: 1053, column: 17)
!4425 = !DILocation(line: 1053, column: 19, scope: !4424)
!4426 = !DILocation(line: 1053, column: 17, scope: !808)
!4427 = !DILocation(line: 1056, column: 21, scope: !4424)
!4428 = !DILocation(line: 1056, column: 26, scope: !4424)
!4429 = !DILocation(line: 1056, column: 34, scope: !4424)
!4430 = !DILocation(line: 1054, column: 24, scope: !4424)
!4431 = !DILocation(line: 1054, column: 17, scope: !4424)
!4432 = !DILocation(line: 1059, column: 43, scope: !808)
!4433 = !DILocation(line: 1060, column: 43, scope: !808)
!4434 = !DILocation(line: 1059, column: 17, scope: !808)
!4435 = !DILocation(line: 1059, column: 15, scope: !808)
!4436 = !DILocation(line: 1062, column: 13, scope: !808)
!4437 = !DILocation(line: 1062, column: 18, scope: !4438)
!4438 = !DILexicalBlockFile(scope: !811, file: !362, discriminator: 1)
!4439 = !DILocation(line: 1062, column: 28, scope: !811)
!4440 = !DILocation(line: 1062, column: 58, scope: !811)
!4441 = !DILocation(line: 1062, column: 70, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !811, file: !362, line: 1062, column: 67)
!4443 = !DILocation(line: 1062, column: 87, scope: !4442)
!4444 = !DILocation(line: 1062, column: 67, scope: !4442)
!4445 = !DILocation(line: 1062, column: 97, scope: !4442)
!4446 = !DILocation(line: 1062, column: 67, scope: !811)
!4447 = !DILocation(line: 1062, column: 67, scope: !4448)
!4448 = !DILexicalBlockFile(scope: !811, file: !362, discriminator: 2)
!4449 = !DILocation(line: 1062, column: 128, scope: !4450)
!4450 = !DILexicalBlockFile(scope: !4442, file: !362, discriminator: 3)
!4451 = !DILocation(line: 1062, column: 146, scope: !4442)
!4452 = !DILocation(line: 1062, column: 156, scope: !4442)
!4453 = !DILocation(line: 1062, column: 181, scope: !4442)
!4454 = !DILocation(line: 1062, column: 112, scope: !4442)
!4455 = !DILocation(line: 1062, column: 200, scope: !4456)
!4456 = !DILexicalBlockFile(scope: !808, file: !362, discriminator: 4)
!4457 = !DILocation(line: 1062, column: 200, scope: !811)
!4458 = !DILocation(line: 1062, column: 200, scope: !4459)
!4459 = !DILexicalBlockFile(scope: !811, file: !362, discriminator: 5)
!4460 = !DILocation(line: 1063, column: 17, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !808, file: !362, line: 1063, column: 17)
!4462 = !DILocation(line: 1063, column: 19, scope: !4461)
!4463 = !DILocation(line: 1063, column: 17, scope: !808)
!4464 = !DILocation(line: 1065, column: 35, scope: !4461)
!4465 = !DILocation(line: 1065, column: 40, scope: !4461)
!4466 = !DILocation(line: 1065, column: 48, scope: !4461)
!4467 = !DILocation(line: 1064, column: 24, scope: !4461)
!4468 = !DILocation(line: 1064, column: 17, scope: !4461)
!4469 = !DILocation(line: 1066, column: 35, scope: !815)
!4470 = !DILocation(line: 1066, column: 40, scope: !815)
!4471 = !DILocation(line: 1066, column: 51, scope: !815)
!4472 = !DILocation(line: 1066, column: 60, scope: !815)
!4473 = !DILocation(line: 1066, column: 77, scope: !815)
!4474 = !DILocation(line: 1066, column: 17, scope: !808)
!4475 = !DILocation(line: 1067, column: 17, scope: !814)
!4476 = !DILocation(line: 1067, column: 22, scope: !4477)
!4477 = !DILexicalBlockFile(scope: !813, file: !362, discriminator: 1)
!4478 = !DILocation(line: 1067, column: 32, scope: !813)
!4479 = !DILocation(line: 1067, column: 62, scope: !813)
!4480 = !DILocation(line: 1067, column: 74, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !813, file: !362, line: 1067, column: 71)
!4482 = !DILocation(line: 1067, column: 91, scope: !4481)
!4483 = !DILocation(line: 1067, column: 71, scope: !4481)
!4484 = !DILocation(line: 1067, column: 101, scope: !4481)
!4485 = !DILocation(line: 1067, column: 71, scope: !813)
!4486 = !DILocation(line: 1067, column: 71, scope: !4487)
!4487 = !DILexicalBlockFile(scope: !813, file: !362, discriminator: 2)
!4488 = !DILocation(line: 1067, column: 132, scope: !4489)
!4489 = !DILexicalBlockFile(scope: !4481, file: !362, discriminator: 3)
!4490 = !DILocation(line: 1067, column: 150, scope: !4481)
!4491 = !DILocation(line: 1067, column: 160, scope: !4481)
!4492 = !DILocation(line: 1067, column: 185, scope: !4481)
!4493 = !DILocation(line: 1067, column: 116, scope: !4481)
!4494 = !DILocation(line: 1067, column: 204, scope: !4495)
!4495 = !DILexicalBlockFile(scope: !814, file: !362, discriminator: 4)
!4496 = !DILocation(line: 1067, column: 204, scope: !813)
!4497 = !DILocation(line: 1067, column: 204, scope: !4498)
!4498 = !DILexicalBlockFile(scope: !813, file: !362, discriminator: 5)
!4499 = !DILocation(line: 1070, column: 21, scope: !814)
!4500 = !DILocation(line: 1070, column: 26, scope: !814)
!4501 = !DILocation(line: 1070, column: 34, scope: !814)
!4502 = !DILocation(line: 1068, column: 24, scope: !814)
!4503 = !DILocation(line: 1068, column: 17, scope: !814)
!4504 = !DILocation(line: 1072, column: 51, scope: !808)
!4505 = !DILocation(line: 1072, column: 36, scope: !808)
!4506 = !DILocation(line: 1072, column: 56, scope: !808)
!4507 = !DILocation(line: 1072, column: 18, scope: !808)
!4508 = !DILocation(line: 1073, column: 54, scope: !808)
!4509 = !DILocation(line: 1073, column: 36, scope: !808)
!4510 = !DILocation(line: 1073, column: 59, scope: !808)
!4511 = !DILocation(line: 1073, column: 34, scope: !808)
!4512 = !DILocation(line: 1073, column: 17, scope: !808)
!4513 = !DILocation(line: 1074, column: 17, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !808, file: !362, line: 1074, column: 17)
!4515 = !DILocation(line: 1074, column: 21, scope: !4514)
!4516 = !DILocation(line: 1074, column: 17, scope: !808)
!4517 = !DILocation(line: 1075, column: 21, scope: !4514)
!4518 = !DILocation(line: 1075, column: 17, scope: !4514)
!4519 = !DILocation(line: 1076, column: 9, scope: !809)
!4520 = !DILocation(line: 1076, column: 9, scope: !4392)
!4521 = !DILocation(line: 1079, column: 14, scope: !818)
!4522 = !DILocation(line: 1079, column: 13, scope: !818)
!4523 = !DILocation(line: 1079, column: 21, scope: !818)
!4524 = !DILocation(line: 1079, column: 13, scope: !801)
!4525 = !DILocation(line: 1101, column: 13, scope: !817)
!4526 = !DILocation(line: 1101, column: 18, scope: !817)
!4527 = !DILocation(line: 1101, column: 31, scope: !817)
!4528 = !DILocation(line: 1101, column: 43, scope: !817)
!4529 = !DILocation(line: 1101, column: 62, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !817, file: !362, line: 1101, column: 62)
!4531 = !DILocation(line: 1101, column: 68, scope: !4530)
!4532 = !DILocation(line: 1101, column: 62, scope: !817)
!4533 = !DILocation(line: 1101, column: 94, scope: !4534)
!4534 = !DILexicalBlockFile(scope: !4530, file: !362, discriminator: 1)
!4535 = !DILocation(line: 1101, column: 93, scope: !4530)
!4536 = !DILocation(line: 1101, column: 76, scope: !4530)
!4537 = !DILocation(line: 1101, column: 76, scope: !4538)
!4538 = !DILexicalBlockFile(scope: !4530, file: !362, discriminator: 3)
!4539 = !DILocation(line: 1101, column: 76, scope: !4540)
!4540 = !DILexicalBlockFile(scope: !4530, file: !362, discriminator: 4)
!4541 = !DILocation(line: 1101, column: 76, scope: !4542)
!4542 = !DILexicalBlockFile(scope: !4543, file: !362, discriminator: 6)
!4543 = !DILexicalBlockFile(scope: !4530, file: !362, discriminator: 5)
!4544 = !DILocation(line: 1101, column: 75, scope: !4530)
!4545 = !DILocation(line: 1101, column: 73, scope: !4530)
!4546 = !DILocation(line: 1101, column: 139, scope: !4547)
!4547 = !DILexicalBlockFile(scope: !4530, file: !362, discriminator: 2)
!4548 = !DILocation(line: 1101, column: 138, scope: !4530)
!4549 = !DILocation(line: 1101, column: 121, scope: !4530)
!4550 = !DILocation(line: 1101, column: 121, scope: !4551)
!4551 = !DILexicalBlockFile(scope: !4530, file: !362, discriminator: 7)
!4552 = !DILocation(line: 1101, column: 121, scope: !4553)
!4553 = !DILexicalBlockFile(scope: !4530, file: !362, discriminator: 8)
!4554 = !DILocation(line: 1101, column: 121, scope: !4555)
!4555 = !DILexicalBlockFile(scope: !4556, file: !362, discriminator: 10)
!4556 = !DILexicalBlockFile(scope: !4530, file: !362, discriminator: 9)
!4557 = !DILocation(line: 1101, column: 120, scope: !4530)
!4558 = !DILocation(line: 1103, column: 19, scope: !817)
!4559 = !DILocation(line: 1104, column: 17, scope: !823)
!4560 = !DILocation(line: 1104, column: 19, scope: !823)
!4561 = !DILocation(line: 1104, column: 33, scope: !823)
!4562 = !DILocation(line: 1104, column: 36, scope: !4563)
!4563 = !DILexicalBlockFile(scope: !823, file: !362, discriminator: 1)
!4564 = !DILocation(line: 1104, column: 39, scope: !823)
!4565 = !DILocation(line: 1104, column: 17, scope: !817)
!4566 = !DILocation(line: 1105, column: 17, scope: !822)
!4567 = !DILocation(line: 1105, column: 22, scope: !4568)
!4568 = !DILexicalBlockFile(scope: !821, file: !362, discriminator: 1)
!4569 = !DILocation(line: 1105, column: 32, scope: !821)
!4570 = !DILocation(line: 1105, column: 62, scope: !821)
!4571 = !DILocation(line: 1105, column: 74, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !821, file: !362, line: 1105, column: 71)
!4573 = !DILocation(line: 1105, column: 91, scope: !4572)
!4574 = !DILocation(line: 1105, column: 71, scope: !4572)
!4575 = !DILocation(line: 1105, column: 101, scope: !4572)
!4576 = !DILocation(line: 1105, column: 71, scope: !821)
!4577 = !DILocation(line: 1105, column: 71, scope: !4578)
!4578 = !DILexicalBlockFile(scope: !821, file: !362, discriminator: 2)
!4579 = !DILocation(line: 1105, column: 132, scope: !4580)
!4580 = !DILexicalBlockFile(scope: !4572, file: !362, discriminator: 3)
!4581 = !DILocation(line: 1105, column: 150, scope: !4572)
!4582 = !DILocation(line: 1105, column: 160, scope: !4572)
!4583 = !DILocation(line: 1105, column: 185, scope: !4572)
!4584 = !DILocation(line: 1105, column: 116, scope: !4572)
!4585 = !DILocation(line: 1105, column: 204, scope: !4586)
!4586 = !DILexicalBlockFile(scope: !822, file: !362, discriminator: 4)
!4587 = !DILocation(line: 1105, column: 204, scope: !821)
!4588 = !DILocation(line: 1105, column: 204, scope: !4589)
!4589 = !DILexicalBlockFile(scope: !821, file: !362, discriminator: 5)
!4590 = !DILocation(line: 1108, column: 21, scope: !822)
!4591 = !DILocation(line: 1108, column: 26, scope: !822)
!4592 = !DILocation(line: 1108, column: 34, scope: !822)
!4593 = !DILocation(line: 1106, column: 24, scope: !822)
!4594 = !DILocation(line: 1106, column: 17, scope: !822)
!4595 = !DILocation(line: 1110, column: 18, scope: !829)
!4596 = !DILocation(line: 1110, column: 17, scope: !829)
!4597 = !DILocation(line: 1110, column: 25, scope: !829)
!4598 = !DILocation(line: 1110, column: 17, scope: !817)
!4599 = !DILocation(line: 1111, column: 39, scope: !828)
!4600 = !DILocation(line: 1111, column: 44, scope: !828)
!4601 = !DILocation(line: 1111, column: 49, scope: !828)
!4602 = !DILocation(line: 1111, column: 29, scope: !828)
!4603 = !DILocation(line: 1111, column: 29, scope: !4604)
!4604 = !DILexicalBlockFile(scope: !828, file: !362, discriminator: 1)
!4605 = !DILocation(line: 1111, column: 139, scope: !4606)
!4606 = !DILexicalBlockFile(scope: !828, file: !362, discriminator: 2)
!4607 = !DILocation(line: 1111, column: 144, scope: !828)
!4608 = !DILocation(line: 1111, column: 149, scope: !828)
!4609 = !DILocation(line: 1111, column: 125, scope: !828)
!4610 = !DILocation(line: 1111, column: 18, scope: !4611)
!4611 = !DILexicalBlockFile(scope: !4612, file: !362, discriminator: 4)
!4612 = !DILexicalBlockFile(scope: !828, file: !362, discriminator: 3)
!4613 = !DILocation(line: 1111, column: 25, scope: !828)
!4614 = !DILocation(line: 1112, column: 22, scope: !827)
!4615 = !DILocation(line: 1112, column: 21, scope: !827)
!4616 = !DILocation(line: 1112, column: 29, scope: !827)
!4617 = !DILocation(line: 1112, column: 21, scope: !828)
!4618 = !DILocation(line: 1113, column: 21, scope: !826)
!4619 = !DILocation(line: 1113, column: 26, scope: !4620)
!4620 = !DILexicalBlockFile(scope: !825, file: !362, discriminator: 1)
!4621 = !DILocation(line: 1113, column: 36, scope: !825)
!4622 = !DILocation(line: 1113, column: 66, scope: !825)
!4623 = !DILocation(line: 1113, column: 78, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !825, file: !362, line: 1113, column: 75)
!4625 = !DILocation(line: 1113, column: 95, scope: !4624)
!4626 = !DILocation(line: 1113, column: 75, scope: !4624)
!4627 = !DILocation(line: 1113, column: 105, scope: !4624)
!4628 = !DILocation(line: 1113, column: 75, scope: !825)
!4629 = !DILocation(line: 1113, column: 75, scope: !4630)
!4630 = !DILexicalBlockFile(scope: !825, file: !362, discriminator: 2)
!4631 = !DILocation(line: 1113, column: 136, scope: !4632)
!4632 = !DILexicalBlockFile(scope: !4624, file: !362, discriminator: 3)
!4633 = !DILocation(line: 1113, column: 154, scope: !4624)
!4634 = !DILocation(line: 1113, column: 164, scope: !4624)
!4635 = !DILocation(line: 1113, column: 189, scope: !4624)
!4636 = !DILocation(line: 1113, column: 120, scope: !4624)
!4637 = !DILocation(line: 1113, column: 208, scope: !4638)
!4638 = !DILexicalBlockFile(scope: !826, file: !362, discriminator: 4)
!4639 = !DILocation(line: 1113, column: 208, scope: !825)
!4640 = !DILocation(line: 1113, column: 208, scope: !4641)
!4641 = !DILexicalBlockFile(scope: !825, file: !362, discriminator: 5)
!4642 = !DILocation(line: 1114, column: 21, scope: !826)
!4643 = !DILocation(line: 1115, column: 28, scope: !826)
!4644 = !DILocation(line: 1115, column: 21, scope: !826)
!4645 = !DILocation(line: 1117, column: 33, scope: !833)
!4646 = !DILocation(line: 1117, column: 32, scope: !833)
!4647 = !DILocation(line: 1117, column: 41, scope: !833)
!4648 = !DILocation(line: 1117, column: 21, scope: !833)
!4649 = !DILocation(line: 1117, column: 21, scope: !828)
!4650 = !DILocation(line: 1118, column: 21, scope: !832)
!4651 = !DILocation(line: 1118, column: 26, scope: !4652)
!4652 = !DILexicalBlockFile(scope: !831, file: !362, discriminator: 1)
!4653 = !DILocation(line: 1118, column: 36, scope: !831)
!4654 = !DILocation(line: 1118, column: 66, scope: !831)
!4655 = !DILocation(line: 1118, column: 78, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !831, file: !362, line: 1118, column: 75)
!4657 = !DILocation(line: 1118, column: 95, scope: !4656)
!4658 = !DILocation(line: 1118, column: 75, scope: !4656)
!4659 = !DILocation(line: 1118, column: 105, scope: !4656)
!4660 = !DILocation(line: 1118, column: 75, scope: !831)
!4661 = !DILocation(line: 1118, column: 75, scope: !4662)
!4662 = !DILexicalBlockFile(scope: !831, file: !362, discriminator: 2)
!4663 = !DILocation(line: 1118, column: 136, scope: !4664)
!4664 = !DILexicalBlockFile(scope: !4656, file: !362, discriminator: 3)
!4665 = !DILocation(line: 1118, column: 154, scope: !4656)
!4666 = !DILocation(line: 1118, column: 164, scope: !4656)
!4667 = !DILocation(line: 1118, column: 189, scope: !4656)
!4668 = !DILocation(line: 1118, column: 120, scope: !4656)
!4669 = !DILocation(line: 1118, column: 208, scope: !4670)
!4670 = !DILexicalBlockFile(scope: !832, file: !362, discriminator: 4)
!4671 = !DILocation(line: 1118, column: 208, scope: !831)
!4672 = !DILocation(line: 1118, column: 208, scope: !4673)
!4673 = !DILexicalBlockFile(scope: !831, file: !362, discriminator: 5)
!4674 = !DILocation(line: 1121, column: 25, scope: !832)
!4675 = !DILocation(line: 1121, column: 30, scope: !832)
!4676 = !DILocation(line: 1121, column: 38, scope: !832)
!4677 = !DILocation(line: 1119, column: 28, scope: !832)
!4678 = !DILocation(line: 1119, column: 21, scope: !832)
!4679 = !DILocation(line: 1123, column: 13, scope: !828)
!4680 = !DILocation(line: 1124, column: 21, scope: !837)
!4681 = !DILocation(line: 1124, column: 26, scope: !837)
!4682 = !DILocation(line: 1124, column: 34, scope: !837)
!4683 = !DILocation(line: 1124, column: 40, scope: !837)
!4684 = !DILocation(line: 1124, column: 33, scope: !837)
!4685 = !DILocation(line: 1124, column: 48, scope: !4686)
!4686 = !DILexicalBlockFile(scope: !837, file: !362, discriminator: 1)
!4687 = !DILocation(line: 1124, column: 47, scope: !837)
!4688 = !DILocation(line: 1124, column: 52, scope: !4689)
!4689 = !DILexicalBlockFile(scope: !837, file: !362, discriminator: 2)
!4690 = !DILocation(line: 1124, column: 51, scope: !837)
!4691 = !DILocation(line: 1124, column: 30, scope: !4692)
!4692 = !DILexicalBlockFile(scope: !4693, file: !362, discriminator: 4)
!4693 = !DILexicalBlockFile(scope: !837, file: !362, discriminator: 3)
!4694 = !DILocation(line: 1124, column: 21, scope: !838)
!4695 = !DILocation(line: 1125, column: 21, scope: !836)
!4696 = !DILocation(line: 1125, column: 26, scope: !4697)
!4697 = !DILexicalBlockFile(scope: !835, file: !362, discriminator: 1)
!4698 = !DILocation(line: 1125, column: 36, scope: !835)
!4699 = !DILocation(line: 1125, column: 66, scope: !835)
!4700 = !DILocation(line: 1125, column: 78, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !835, file: !362, line: 1125, column: 75)
!4702 = !DILocation(line: 1125, column: 95, scope: !4701)
!4703 = !DILocation(line: 1125, column: 75, scope: !4701)
!4704 = !DILocation(line: 1125, column: 105, scope: !4701)
!4705 = !DILocation(line: 1125, column: 75, scope: !835)
!4706 = !DILocation(line: 1125, column: 75, scope: !4707)
!4707 = !DILexicalBlockFile(scope: !835, file: !362, discriminator: 2)
!4708 = !DILocation(line: 1125, column: 136, scope: !4709)
!4709 = !DILexicalBlockFile(scope: !4701, file: !362, discriminator: 3)
!4710 = !DILocation(line: 1125, column: 154, scope: !4701)
!4711 = !DILocation(line: 1125, column: 164, scope: !4701)
!4712 = !DILocation(line: 1125, column: 189, scope: !4701)
!4713 = !DILocation(line: 1125, column: 120, scope: !4701)
!4714 = !DILocation(line: 1125, column: 208, scope: !4715)
!4715 = !DILexicalBlockFile(scope: !836, file: !362, discriminator: 4)
!4716 = !DILocation(line: 1125, column: 208, scope: !835)
!4717 = !DILocation(line: 1125, column: 208, scope: !4718)
!4718 = !DILexicalBlockFile(scope: !835, file: !362, discriminator: 5)
!4719 = !DILocation(line: 1128, column: 25, scope: !836)
!4720 = !DILocation(line: 1128, column: 30, scope: !836)
!4721 = !DILocation(line: 1128, column: 38, scope: !836)
!4722 = !DILocation(line: 1126, column: 28, scope: !836)
!4723 = !DILocation(line: 1126, column: 21, scope: !836)
!4724 = !DILocation(line: 1131, column: 21, scope: !817)
!4725 = !DILocation(line: 1131, column: 20, scope: !817)
!4726 = !DILocation(line: 1131, column: 29, scope: !817)
!4727 = !DILocation(line: 1131, column: 34, scope: !817)
!4728 = !DILocation(line: 1131, column: 38, scope: !817)
!4729 = !DILocation(line: 1131, column: 13, scope: !817)
!4730 = !DILocation(line: 1132, column: 17, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !817, file: !362, line: 1132, column: 17)
!4732 = !DILocation(line: 1132, column: 23, scope: !4731)
!4733 = !DILocation(line: 1132, column: 17, scope: !817)
!4734 = !DILocation(line: 1132, column: 32, scope: !4735)
!4735 = !DILexicalBlockFile(scope: !4731, file: !362, discriminator: 1)
!4736 = !DILocation(line: 1132, column: 29, scope: !4731)
!4737 = !DILocation(line: 1132, column: 31, scope: !4731)
!4738 = !DILocation(line: 1132, column: 28, scope: !4731)
!4739 = !DILocation(line: 1132, column: 62, scope: !4740)
!4740 = !DILexicalBlockFile(scope: !4741, file: !362, discriminator: 2)
!4741 = distinct !DILexicalBlock(scope: !4742, file: !362, line: 1132, column: 49)
!4742 = distinct !DILexicalBlock(scope: !4731, file: !362, line: 1132, column: 43)
!4743 = !DILocation(line: 1132, column: 60, scope: !4741)
!4744 = !DILocation(line: 1132, column: 49, scope: !4742)
!4745 = !DILocation(line: 1132, column: 86, scope: !4746)
!4746 = !DILexicalBlockFile(scope: !4747, file: !362, discriminator: 3)
!4747 = distinct !DILexicalBlock(scope: !4741, file: !362, line: 1132, column: 68)
!4748 = !DILocation(line: 1132, column: 70, scope: !4747)
!4749 = !DILocation(line: 1132, column: 161, scope: !4747)
!4750 = !DILocation(line: 1132, column: 166, scope: !4747)
!4751 = !DILocation(line: 1132, column: 174, scope: !4747)
!4752 = !DILocation(line: 1132, column: 146, scope: !4747)
!4753 = !DILocation(line: 1132, column: 139, scope: !4747)
!4754 = !DILocation(line: 1132, column: 196, scope: !4755)
!4755 = !DILexicalBlockFile(scope: !4742, file: !362, discriminator: 4)
!4756 = !DILocation(line: 1132, column: 191, scope: !4742)
!4757 = !DILocation(line: 1132, column: 187, scope: !4742)
!4758 = !DILocation(line: 1132, column: 189, scope: !4742)
!4759 = !DILocation(line: 1133, column: 9, scope: !818)
!4760 = !DILocation(line: 1133, column: 9, scope: !4761)
!4761 = !DILexicalBlockFile(scope: !818, file: !362, discriminator: 1)
!4762 = !DILocation(line: 1133, column: 9, scope: !817)
!4763 = !DILocation(line: 1147, column: 36, scope: !842)
!4764 = !DILocation(line: 1147, column: 29, scope: !842)
!4765 = !DILocation(line: 1147, column: 44, scope: !842)
!4766 = !DILocation(line: 1147, column: 41, scope: !842)
!4767 = !DILocation(line: 1147, column: 17, scope: !843)
!4768 = !DILocation(line: 1148, column: 17, scope: !841)
!4769 = !DILocation(line: 1148, column: 22, scope: !4770)
!4770 = !DILexicalBlockFile(scope: !840, file: !362, discriminator: 1)
!4771 = !DILocation(line: 1148, column: 32, scope: !840)
!4772 = !DILocation(line: 1148, column: 62, scope: !840)
!4773 = !DILocation(line: 1148, column: 74, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !840, file: !362, line: 1148, column: 71)
!4775 = !DILocation(line: 1148, column: 91, scope: !4774)
!4776 = !DILocation(line: 1148, column: 71, scope: !4774)
!4777 = !DILocation(line: 1148, column: 101, scope: !4774)
!4778 = !DILocation(line: 1148, column: 71, scope: !840)
!4779 = !DILocation(line: 1148, column: 71, scope: !4780)
!4780 = !DILexicalBlockFile(scope: !840, file: !362, discriminator: 2)
!4781 = !DILocation(line: 1148, column: 132, scope: !4782)
!4782 = !DILexicalBlockFile(scope: !4774, file: !362, discriminator: 3)
!4783 = !DILocation(line: 1148, column: 150, scope: !4774)
!4784 = !DILocation(line: 1148, column: 160, scope: !4774)
!4785 = !DILocation(line: 1148, column: 185, scope: !4774)
!4786 = !DILocation(line: 1148, column: 116, scope: !4774)
!4787 = !DILocation(line: 1148, column: 204, scope: !4788)
!4788 = !DILexicalBlockFile(scope: !841, file: !362, discriminator: 4)
!4789 = !DILocation(line: 1148, column: 204, scope: !840)
!4790 = !DILocation(line: 1148, column: 204, scope: !4791)
!4791 = !DILexicalBlockFile(scope: !840, file: !362, discriminator: 5)
!4792 = !DILocation(line: 1151, column: 21, scope: !841)
!4793 = !DILocation(line: 1151, column: 26, scope: !841)
!4794 = !DILocation(line: 1151, column: 34, scope: !841)
!4795 = !DILocation(line: 1149, column: 24, scope: !841)
!4796 = !DILocation(line: 1149, column: 17, scope: !841)
!4797 = !DILocation(line: 1153, column: 35, scope: !843)
!4798 = !DILocation(line: 1153, column: 40, scope: !843)
!4799 = !DILocation(line: 1153, column: 45, scope: !843)
!4800 = !DILocation(line: 1153, column: 25, scope: !843)
!4801 = !DILocation(line: 1153, column: 25, scope: !4802)
!4802 = !DILexicalBlockFile(scope: !843, file: !362, discriminator: 1)
!4803 = !DILocation(line: 1153, column: 135, scope: !4804)
!4804 = !DILexicalBlockFile(scope: !843, file: !362, discriminator: 2)
!4805 = !DILocation(line: 1153, column: 140, scope: !843)
!4806 = !DILocation(line: 1153, column: 145, scope: !843)
!4807 = !DILocation(line: 1153, column: 121, scope: !843)
!4808 = !DILocation(line: 1153, column: 14, scope: !4809)
!4809 = !DILexicalBlockFile(scope: !4810, file: !362, discriminator: 4)
!4810 = !DILexicalBlockFile(scope: !843, file: !362, discriminator: 3)
!4811 = !DILocation(line: 1153, column: 21, scope: !843)
!4812 = !DILocation(line: 1154, column: 18, scope: !847)
!4813 = !DILocation(line: 1154, column: 17, scope: !847)
!4814 = !DILocation(line: 1154, column: 25, scope: !847)
!4815 = !DILocation(line: 1154, column: 17, scope: !843)
!4816 = !DILocation(line: 1155, column: 17, scope: !846)
!4817 = !DILocation(line: 1155, column: 22, scope: !4818)
!4818 = !DILexicalBlockFile(scope: !845, file: !362, discriminator: 1)
!4819 = !DILocation(line: 1155, column: 32, scope: !845)
!4820 = !DILocation(line: 1155, column: 62, scope: !845)
!4821 = !DILocation(line: 1155, column: 74, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !845, file: !362, line: 1155, column: 71)
!4823 = !DILocation(line: 1155, column: 91, scope: !4822)
!4824 = !DILocation(line: 1155, column: 71, scope: !4822)
!4825 = !DILocation(line: 1155, column: 101, scope: !4822)
!4826 = !DILocation(line: 1155, column: 71, scope: !845)
!4827 = !DILocation(line: 1155, column: 71, scope: !4828)
!4828 = !DILexicalBlockFile(scope: !845, file: !362, discriminator: 2)
!4829 = !DILocation(line: 1155, column: 132, scope: !4830)
!4830 = !DILexicalBlockFile(scope: !4822, file: !362, discriminator: 3)
!4831 = !DILocation(line: 1155, column: 150, scope: !4822)
!4832 = !DILocation(line: 1155, column: 160, scope: !4822)
!4833 = !DILocation(line: 1155, column: 185, scope: !4822)
!4834 = !DILocation(line: 1155, column: 116, scope: !4822)
!4835 = !DILocation(line: 1155, column: 204, scope: !4836)
!4836 = !DILexicalBlockFile(scope: !846, file: !362, discriminator: 4)
!4837 = !DILocation(line: 1155, column: 204, scope: !845)
!4838 = !DILocation(line: 1155, column: 204, scope: !4839)
!4839 = !DILexicalBlockFile(scope: !845, file: !362, discriminator: 5)
!4840 = !DILocation(line: 1156, column: 17, scope: !846)
!4841 = !DILocation(line: 1157, column: 24, scope: !846)
!4842 = !DILocation(line: 1157, column: 17, scope: !846)
!4843 = !DILocation(line: 1159, column: 29, scope: !851)
!4844 = !DILocation(line: 1159, column: 28, scope: !851)
!4845 = !DILocation(line: 1159, column: 37, scope: !851)
!4846 = !DILocation(line: 1159, column: 17, scope: !851)
!4847 = !DILocation(line: 1159, column: 17, scope: !843)
!4848 = !DILocation(line: 1160, column: 17, scope: !850)
!4849 = !DILocation(line: 1160, column: 22, scope: !4850)
!4850 = !DILexicalBlockFile(scope: !849, file: !362, discriminator: 1)
!4851 = !DILocation(line: 1160, column: 32, scope: !849)
!4852 = !DILocation(line: 1160, column: 62, scope: !849)
!4853 = !DILocation(line: 1160, column: 74, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !849, file: !362, line: 1160, column: 71)
!4855 = !DILocation(line: 1160, column: 91, scope: !4854)
!4856 = !DILocation(line: 1160, column: 71, scope: !4854)
!4857 = !DILocation(line: 1160, column: 101, scope: !4854)
!4858 = !DILocation(line: 1160, column: 71, scope: !849)
!4859 = !DILocation(line: 1160, column: 71, scope: !4860)
!4860 = !DILexicalBlockFile(scope: !849, file: !362, discriminator: 2)
!4861 = !DILocation(line: 1160, column: 132, scope: !4862)
!4862 = !DILexicalBlockFile(scope: !4854, file: !362, discriminator: 3)
!4863 = !DILocation(line: 1160, column: 150, scope: !4854)
!4864 = !DILocation(line: 1160, column: 160, scope: !4854)
!4865 = !DILocation(line: 1160, column: 185, scope: !4854)
!4866 = !DILocation(line: 1160, column: 116, scope: !4854)
!4867 = !DILocation(line: 1160, column: 204, scope: !4868)
!4868 = !DILexicalBlockFile(scope: !850, file: !362, discriminator: 4)
!4869 = !DILocation(line: 1160, column: 204, scope: !849)
!4870 = !DILocation(line: 1160, column: 204, scope: !4871)
!4871 = !DILexicalBlockFile(scope: !849, file: !362, discriminator: 5)
!4872 = !DILocation(line: 1162, column: 33, scope: !850)
!4873 = !DILocation(line: 1162, column: 38, scope: !850)
!4874 = !DILocation(line: 1162, column: 46, scope: !850)
!4875 = !DILocation(line: 1161, column: 24, scope: !850)
!4876 = !DILocation(line: 1161, column: 17, scope: !850)
!4877 = !DILocation(line: 1164, column: 21, scope: !843)
!4878 = !DILocation(line: 1164, column: 20, scope: !843)
!4879 = !DILocation(line: 1164, column: 29, scope: !843)
!4880 = !DILocation(line: 1164, column: 34, scope: !843)
!4881 = !DILocation(line: 1164, column: 38, scope: !843)
!4882 = !DILocation(line: 1164, column: 13, scope: !843)
!4883 = !DILocation(line: 1166, column: 9, scope: !801)
!4884 = !DILocation(line: 1166, column: 14, scope: !4885)
!4885 = !DILexicalBlockFile(scope: !853, file: !362, discriminator: 1)
!4886 = !DILocation(line: 1166, column: 24, scope: !853)
!4887 = !DILocation(line: 1166, column: 54, scope: !853)
!4888 = !DILocation(line: 1166, column: 66, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !853, file: !362, line: 1166, column: 63)
!4890 = !DILocation(line: 1166, column: 83, scope: !4889)
!4891 = !DILocation(line: 1166, column: 63, scope: !4889)
!4892 = !DILocation(line: 1166, column: 93, scope: !4889)
!4893 = !DILocation(line: 1166, column: 63, scope: !853)
!4894 = !DILocation(line: 1166, column: 63, scope: !4895)
!4895 = !DILexicalBlockFile(scope: !853, file: !362, discriminator: 2)
!4896 = !DILocation(line: 1166, column: 124, scope: !4897)
!4897 = !DILexicalBlockFile(scope: !4889, file: !362, discriminator: 3)
!4898 = !DILocation(line: 1166, column: 142, scope: !4889)
!4899 = !DILocation(line: 1166, column: 152, scope: !4889)
!4900 = !DILocation(line: 1166, column: 177, scope: !4889)
!4901 = !DILocation(line: 1166, column: 108, scope: !4889)
!4902 = !DILocation(line: 1166, column: 196, scope: !4903)
!4903 = !DILexicalBlockFile(scope: !801, file: !362, discriminator: 4)
!4904 = !DILocation(line: 1166, column: 196, scope: !853)
!4905 = !DILocation(line: 1166, column: 196, scope: !4906)
!4906 = !DILexicalBlockFile(scope: !853, file: !362, discriminator: 5)
!4907 = !DILocation(line: 1167, column: 9, scope: !801)
!4908 = !DILocation(line: 1168, column: 5, scope: !676)
!4909 = !DILocation(line: 1171, column: 9, scope: !855)
!4910 = !DILocation(line: 1171, column: 20, scope: !855)
!4911 = !DILocation(line: 1171, column: 42, scope: !855)
!4912 = !DILocation(line: 1171, column: 41, scope: !855)
!4913 = !DILocation(line: 1171, column: 24, scope: !855)
!4914 = !DILocation(line: 1171, column: 24, scope: !4915)
!4915 = !DILexicalBlockFile(scope: !855, file: !362, discriminator: 1)
!4916 = !DILocation(line: 1171, column: 24, scope: !4917)
!4917 = !DILexicalBlockFile(scope: !855, file: !362, discriminator: 2)
!4918 = !DILocation(line: 1171, column: 24, scope: !4919)
!4919 = !DILexicalBlockFile(scope: !4920, file: !362, discriminator: 4)
!4920 = !DILexicalBlockFile(scope: !855, file: !362, discriminator: 3)
!4921 = !DILocation(line: 1172, column: 30, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !855, file: !362, line: 1172, column: 13)
!4923 = !DILocation(line: 1172, column: 37, scope: !4922)
!4924 = !DILocation(line: 1172, column: 48, scope: !4922)
!4925 = !DILocation(line: 1172, column: 57, scope: !4922)
!4926 = !DILocation(line: 1172, column: 74, scope: !4922)
!4927 = !DILocation(line: 1172, column: 13, scope: !855)
!4928 = !DILocation(line: 1173, column: 18, scope: !4922)
!4929 = !DILocation(line: 1173, column: 14, scope: !4922)
!4930 = !DILocation(line: 1173, column: 16, scope: !4922)
!4931 = !DILocation(line: 1173, column: 13, scope: !4922)
!4932 = !DILocation(line: 1175, column: 40, scope: !4922)
!4933 = !DILocation(line: 1175, column: 45, scope: !4922)
!4934 = !DILocation(line: 1175, column: 53, scope: !4922)
!4935 = !DILocation(line: 1175, column: 20, scope: !4922)
!4936 = !DILocation(line: 1175, column: 13, scope: !4922)
!4937 = !DILocation(line: 1176, column: 9, scope: !855)
!4938 = !DILocation(line: 1177, column: 5, scope: !676)
!4939 = !DILocation(line: 1180, column: 9, scope: !857)
!4940 = !DILocation(line: 1180, column: 20, scope: !857)
!4941 = !DILocation(line: 1180, column: 42, scope: !857)
!4942 = !DILocation(line: 1180, column: 41, scope: !857)
!4943 = !DILocation(line: 1180, column: 24, scope: !857)
!4944 = !DILocation(line: 1180, column: 24, scope: !4945)
!4945 = !DILexicalBlockFile(scope: !857, file: !362, discriminator: 1)
!4946 = !DILocation(line: 1180, column: 24, scope: !4947)
!4947 = !DILexicalBlockFile(scope: !857, file: !362, discriminator: 2)
!4948 = !DILocation(line: 1180, column: 24, scope: !4949)
!4949 = !DILexicalBlockFile(scope: !4950, file: !362, discriminator: 4)
!4950 = !DILexicalBlockFile(scope: !857, file: !362, discriminator: 3)
!4951 = !DILocation(line: 1181, column: 28, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !857, file: !362, line: 1181, column: 13)
!4953 = !DILocation(line: 1181, column: 35, scope: !4952)
!4954 = !DILocation(line: 1181, column: 44, scope: !4952)
!4955 = !DILocation(line: 1181, column: 67, scope: !4952)
!4956 = !DILocation(line: 1181, column: 101, scope: !4957)
!4957 = !DILexicalBlockFile(scope: !4952, file: !362, discriminator: 1)
!4958 = !DILocation(line: 1181, column: 108, scope: !4952)
!4959 = !DILocation(line: 1181, column: 70, scope: !4952)
!4960 = !DILocation(line: 1181, column: 13, scope: !857)
!4961 = !DILocation(line: 1182, column: 18, scope: !4952)
!4962 = !DILocation(line: 1182, column: 14, scope: !4952)
!4963 = !DILocation(line: 1182, column: 16, scope: !4952)
!4964 = !DILocation(line: 1182, column: 13, scope: !4952)
!4965 = !DILocation(line: 1184, column: 44, scope: !4952)
!4966 = !DILocation(line: 1184, column: 49, scope: !4952)
!4967 = !DILocation(line: 1184, column: 57, scope: !4952)
!4968 = !DILocation(line: 1184, column: 20, scope: !4952)
!4969 = !DILocation(line: 1184, column: 13, scope: !4952)
!4970 = !DILocation(line: 1185, column: 9, scope: !857)
!4971 = !DILocation(line: 1186, column: 5, scope: !676)
!4972 = !DILocation(line: 1189, column: 9, scope: !859)
!4973 = !DILocation(line: 1189, column: 20, scope: !859)
!4974 = !DILocation(line: 1189, column: 42, scope: !859)
!4975 = !DILocation(line: 1189, column: 41, scope: !859)
!4976 = !DILocation(line: 1189, column: 24, scope: !859)
!4977 = !DILocation(line: 1189, column: 24, scope: !4978)
!4978 = !DILexicalBlockFile(scope: !859, file: !362, discriminator: 1)
!4979 = !DILocation(line: 1189, column: 24, scope: !4980)
!4980 = !DILexicalBlockFile(scope: !859, file: !362, discriminator: 2)
!4981 = !DILocation(line: 1189, column: 24, scope: !4982)
!4982 = !DILexicalBlockFile(scope: !4983, file: !362, discriminator: 4)
!4983 = !DILexicalBlockFile(scope: !859, file: !362, discriminator: 3)
!4984 = !DILocation(line: 1190, column: 30, scope: !4985)
!4985 = distinct !DILexicalBlock(scope: !859, file: !362, line: 1190, column: 13)
!4986 = !DILocation(line: 1190, column: 37, scope: !4985)
!4987 = !DILocation(line: 1190, column: 48, scope: !4985)
!4988 = !DILocation(line: 1190, column: 57, scope: !4985)
!4989 = !DILocation(line: 1190, column: 74, scope: !4985)
!4990 = !DILocation(line: 1190, column: 13, scope: !859)
!4991 = !DILocation(line: 1191, column: 51, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4993, file: !362, line: 1191, column: 17)
!4993 = distinct !DILexicalBlock(scope: !4985, file: !362, line: 1190, column: 81)
!4994 = !DILocation(line: 1191, column: 35, scope: !4992)
!4995 = !DILocation(line: 1191, column: 57, scope: !4992)
!4996 = !DILocation(line: 1191, column: 63, scope: !4992)
!4997 = !DILocation(line: 1191, column: 33, scope: !4992)
!4998 = !DILocation(line: 1191, column: 33, scope: !4999)
!4999 = !DILexicalBlockFile(scope: !4992, file: !362, discriminator: 1)
!5000 = !DILocation(line: 1191, column: 106, scope: !5001)
!5001 = !DILexicalBlockFile(scope: !4992, file: !362, discriminator: 2)
!5002 = !DILocation(line: 1191, column: 76, scope: !4992)
!5003 = !DILocation(line: 1191, column: 114, scope: !5004)
!5004 = !DILexicalBlockFile(scope: !5005, file: !362, discriminator: 4)
!5005 = !DILexicalBlockFile(scope: !4992, file: !362, discriminator: 3)
!5006 = !DILocation(line: 1191, column: 17, scope: !4993)
!5007 = !DILocation(line: 1192, column: 24, scope: !4992)
!5008 = !DILocation(line: 1192, column: 17, scope: !4992)
!5009 = !DILocation(line: 1193, column: 18, scope: !4993)
!5010 = !DILocation(line: 1193, column: 14, scope: !4993)
!5011 = !DILocation(line: 1193, column: 16, scope: !4993)
!5012 = !DILocation(line: 1194, column: 9, scope: !4993)
!5013 = !DILocation(line: 1196, column: 38, scope: !4985)
!5014 = !DILocation(line: 1196, column: 43, scope: !4985)
!5015 = !DILocation(line: 1196, column: 51, scope: !4985)
!5016 = !DILocation(line: 1196, column: 20, scope: !4985)
!5017 = !DILocation(line: 1196, column: 13, scope: !4985)
!5018 = !DILocation(line: 1197, column: 9, scope: !859)
!5019 = !DILocation(line: 1198, column: 5, scope: !676)
!5020 = !DILocation(line: 1201, column: 9, scope: !861)
!5021 = !DILocation(line: 1201, column: 23, scope: !861)
!5022 = !DILocation(line: 1202, column: 9, scope: !861)
!5023 = !DILocation(line: 1202, column: 20, scope: !861)
!5024 = !DILocation(line: 1203, column: 14, scope: !868)
!5025 = !DILocation(line: 1203, column: 13, scope: !868)
!5026 = !DILocation(line: 1203, column: 21, scope: !868)
!5027 = !DILocation(line: 1203, column: 13, scope: !861)
!5028 = !DILocation(line: 1204, column: 38, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !868, file: !362, line: 1203, column: 29)
!5030 = !DILocation(line: 1204, column: 37, scope: !5029)
!5031 = !DILocation(line: 1204, column: 20, scope: !5029)
!5032 = !DILocation(line: 1204, column: 20, scope: !5033)
!5033 = !DILexicalBlockFile(scope: !5029, file: !362, discriminator: 1)
!5034 = !DILocation(line: 1204, column: 20, scope: !5035)
!5035 = !DILexicalBlockFile(scope: !5029, file: !362, discriminator: 2)
!5036 = !DILocation(line: 1204, column: 20, scope: !5037)
!5037 = !DILexicalBlockFile(scope: !5038, file: !362, discriminator: 4)
!5038 = !DILexicalBlockFile(scope: !5029, file: !362, discriminator: 3)
!5039 = !DILocation(line: 1204, column: 18, scope: !5029)
!5040 = !DILocation(line: 1205, column: 35, scope: !5029)
!5041 = !DILocation(line: 1205, column: 34, scope: !5029)
!5042 = !DILocation(line: 1205, column: 17, scope: !5029)
!5043 = !DILocation(line: 1205, column: 17, scope: !5033)
!5044 = !DILocation(line: 1205, column: 17, scope: !5035)
!5045 = !DILocation(line: 1205, column: 17, scope: !5037)
!5046 = !DILocation(line: 1205, column: 15, scope: !5029)
!5047 = !DILocation(line: 1206, column: 19, scope: !5029)
!5048 = !DILocation(line: 1207, column: 34, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !5029, file: !362, line: 1207, column: 17)
!5050 = !DILocation(line: 1207, column: 39, scope: !5049)
!5051 = !DILocation(line: 1207, column: 48, scope: !5049)
!5052 = !DILocation(line: 1207, column: 17, scope: !5049)
!5053 = !DILocation(line: 1207, column: 17, scope: !5029)
!5054 = !DILocation(line: 1208, column: 22, scope: !5049)
!5055 = !DILocation(line: 1208, column: 18, scope: !5049)
!5056 = !DILocation(line: 1208, column: 20, scope: !5049)
!5057 = !DILocation(line: 1208, column: 17, scope: !5049)
!5058 = !DILocation(line: 1210, column: 35, scope: !5049)
!5059 = !DILocation(line: 1210, column: 41, scope: !5049)
!5060 = !DILocation(line: 1210, column: 50, scope: !5049)
!5061 = !DILocation(line: 1210, column: 55, scope: !5049)
!5062 = !DILocation(line: 1210, column: 63, scope: !5049)
!5063 = !DILocation(line: 1210, column: 24, scope: !5049)
!5064 = !DILocation(line: 1210, column: 17, scope: !5049)
!5065 = !DILocation(line: 1212, column: 9, scope: !5029)
!5066 = !DILocation(line: 1213, column: 19, scope: !867)
!5067 = !DILocation(line: 1213, column: 18, scope: !867)
!5068 = !DILocation(line: 1213, column: 26, scope: !867)
!5069 = !DILocation(line: 1213, column: 18, scope: !868)
!5070 = !DILocation(line: 1215, column: 13, scope: !866)
!5071 = !DILocation(line: 1215, column: 23, scope: !866)
!5072 = !DILocation(line: 1215, column: 51, scope: !866)
!5073 = !DILocation(line: 1215, column: 50, scope: !866)
!5074 = !DILocation(line: 1215, column: 33, scope: !866)
!5075 = !DILocation(line: 1215, column: 33, scope: !5076)
!5076 = !DILexicalBlockFile(scope: !866, file: !362, discriminator: 1)
!5077 = !DILocation(line: 1215, column: 33, scope: !5078)
!5078 = !DILexicalBlockFile(scope: !866, file: !362, discriminator: 2)
!5079 = !DILocation(line: 1215, column: 33, scope: !5080)
!5080 = !DILexicalBlockFile(scope: !5081, file: !362, discriminator: 4)
!5081 = !DILexicalBlockFile(scope: !866, file: !362, discriminator: 3)
!5082 = !DILocation(line: 1216, column: 13, scope: !866)
!5083 = !DILocation(line: 1216, column: 19, scope: !866)
!5084 = !DILocation(line: 1216, column: 44, scope: !866)
!5085 = !DILocation(line: 1216, column: 43, scope: !866)
!5086 = !DILocation(line: 1216, column: 26, scope: !866)
!5087 = !DILocation(line: 1216, column: 26, scope: !5076)
!5088 = !DILocation(line: 1216, column: 26, scope: !5078)
!5089 = !DILocation(line: 1216, column: 26, scope: !5080)
!5090 = !DILocation(line: 1217, column: 13, scope: !866)
!5091 = !DILocation(line: 1217, column: 17, scope: !866)
!5092 = !DILocation(line: 1218, column: 19, scope: !866)
!5093 = !DILocation(line: 1219, column: 28, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !866, file: !362, line: 1219, column: 17)
!5095 = !DILocation(line: 1219, column: 37, scope: !5094)
!5096 = !DILocation(line: 1219, column: 42, scope: !5094)
!5097 = !DILocation(line: 1219, column: 26, scope: !5094)
!5098 = !DILocation(line: 1219, column: 24, scope: !5094)
!5099 = !DILocation(line: 1219, column: 17, scope: !866)
!5100 = !DILocation(line: 1221, column: 35, scope: !5094)
!5101 = !DILocation(line: 1221, column: 40, scope: !5094)
!5102 = !DILocation(line: 1221, column: 48, scope: !5094)
!5103 = !DILocation(line: 1220, column: 24, scope: !5094)
!5104 = !DILocation(line: 1220, column: 17, scope: !5094)
!5105 = !DILocation(line: 1222, column: 17, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !866, file: !362, line: 1222, column: 17)
!5107 = !DILocation(line: 1222, column: 21, scope: !5106)
!5108 = !DILocation(line: 1222, column: 32, scope: !5106)
!5109 = !DILocation(line: 1223, column: 28, scope: !5106)
!5110 = !DILocation(line: 1223, column: 34, scope: !5106)
!5111 = !DILocation(line: 1223, column: 44, scope: !5106)
!5112 = !DILocation(line: 1223, column: 17, scope: !5106)
!5113 = !DILocation(line: 1223, column: 53, scope: !5106)
!5114 = !DILocation(line: 1222, column: 17, scope: !866)
!5115 = !DILocation(line: 1225, column: 33, scope: !5106)
!5116 = !DILocation(line: 1225, column: 38, scope: !5106)
!5117 = !DILocation(line: 1225, column: 46, scope: !5106)
!5118 = !DILocation(line: 1224, column: 24, scope: !5106)
!5119 = !DILocation(line: 1224, column: 17, scope: !5106)
!5120 = !DILocation(line: 1226, column: 9, scope: !867)
!5121 = !DILocation(line: 1226, column: 9, scope: !5122)
!5122 = !DILexicalBlockFile(scope: !867, file: !362, discriminator: 1)
!5123 = !DILocation(line: 1226, column: 9, scope: !866)
!5124 = !DILocation(line: 1228, column: 35, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !867, file: !362, line: 1227, column: 14)
!5126 = !DILocation(line: 1228, column: 34, scope: !5125)
!5127 = !DILocation(line: 1228, column: 17, scope: !5125)
!5128 = !DILocation(line: 1228, column: 17, scope: !5129)
!5129 = !DILexicalBlockFile(scope: !5125, file: !362, discriminator: 1)
!5130 = !DILocation(line: 1228, column: 17, scope: !5131)
!5131 = !DILexicalBlockFile(scope: !5125, file: !362, discriminator: 2)
!5132 = !DILocation(line: 1228, column: 17, scope: !5133)
!5133 = !DILexicalBlockFile(scope: !5134, file: !362, discriminator: 4)
!5134 = !DILexicalBlockFile(scope: !5125, file: !362, discriminator: 3)
!5135 = !DILocation(line: 1228, column: 15, scope: !5125)
!5136 = !DILocation(line: 1229, column: 18, scope: !5125)
!5137 = !DILocation(line: 1229, column: 14, scope: !5125)
!5138 = !DILocation(line: 1229, column: 16, scope: !5125)
!5139 = !DILocation(line: 1231, column: 9, scope: !861)
!5140 = !DILocation(line: 1232, column: 5, scope: !676)
!5141 = !DILocation(line: 1236, column: 9, scope: !873)
!5142 = !DILocation(line: 1236, column: 16, scope: !873)
!5143 = !DILocation(line: 1236, column: 38, scope: !873)
!5144 = !DILocation(line: 1236, column: 37, scope: !873)
!5145 = !DILocation(line: 1236, column: 20, scope: !873)
!5146 = !DILocation(line: 1236, column: 20, scope: !5147)
!5147 = !DILexicalBlockFile(scope: !873, file: !362, discriminator: 1)
!5148 = !DILocation(line: 1236, column: 20, scope: !5149)
!5149 = !DILexicalBlockFile(scope: !873, file: !362, discriminator: 2)
!5150 = !DILocation(line: 1236, column: 20, scope: !5151)
!5151 = !DILexicalBlockFile(scope: !5152, file: !362, discriminator: 4)
!5152 = !DILexicalBlockFile(scope: !873, file: !362, discriminator: 3)
!5153 = !DILocation(line: 1238, column: 14, scope: !5154)
!5154 = distinct !DILexicalBlock(scope: !873, file: !362, line: 1238, column: 13)
!5155 = !DILocation(line: 1238, column: 13, scope: !5154)
!5156 = !DILocation(line: 1238, column: 21, scope: !5154)
!5157 = !DILocation(line: 1238, column: 13, scope: !873)
!5158 = !DILocation(line: 1241, column: 17, scope: !5154)
!5159 = !DILocation(line: 1241, column: 22, scope: !5154)
!5160 = !DILocation(line: 1241, column: 30, scope: !5154)
!5161 = !DILocation(line: 1239, column: 20, scope: !5154)
!5162 = !DILocation(line: 1239, column: 13, scope: !5154)
!5163 = !DILocation(line: 1242, column: 15, scope: !873)
!5164 = !DILocation(line: 1246, column: 32, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !873, file: !362, line: 1246, column: 13)
!5166 = !DILocation(line: 1246, column: 49, scope: !5165)
!5167 = !DILocation(line: 1246, column: 37, scope: !5165)
!5168 = !DILocation(line: 1246, column: 13, scope: !5165)
!5169 = !DILocation(line: 1246, column: 60, scope: !5165)
!5170 = !DILocation(line: 1246, column: 13, scope: !873)
!5171 = !DILocation(line: 1247, column: 13, scope: !5172)
!5172 = distinct !DILexicalBlock(scope: !5165, file: !362, line: 1246, column: 65)
!5173 = !DILocation(line: 1248, column: 52, scope: !5172)
!5174 = !DILocation(line: 1248, column: 57, scope: !5172)
!5175 = !DILocation(line: 1248, column: 65, scope: !5172)
!5176 = !DILocation(line: 1248, column: 20, scope: !5172)
!5177 = !DILocation(line: 1248, column: 13, scope: !5172)
!5178 = !DILocation(line: 1250, column: 48, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !873, file: !362, line: 1250, column: 13)
!5180 = !DILocation(line: 1250, column: 36, scope: !5179)
!5181 = !DILocation(line: 1250, column: 14, scope: !5179)
!5182 = !DILocation(line: 1250, column: 13, scope: !873)
!5183 = !DILocation(line: 1251, column: 42, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5179, file: !362, line: 1250, column: 57)
!5185 = !DILocation(line: 1251, column: 30, scope: !5184)
!5186 = !DILocation(line: 1251, column: 13, scope: !5184)
!5187 = !DILocation(line: 1252, column: 52, scope: !5184)
!5188 = !DILocation(line: 1252, column: 57, scope: !5184)
!5189 = !DILocation(line: 1252, column: 65, scope: !5184)
!5190 = !DILocation(line: 1252, column: 20, scope: !5184)
!5191 = !DILocation(line: 1252, column: 13, scope: !5184)
!5192 = !DILocation(line: 1254, column: 24, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !873, file: !362, line: 1254, column: 13)
!5194 = !DILocation(line: 1254, column: 27, scope: !5193)
!5195 = !DILocation(line: 1254, column: 13, scope: !5193)
!5196 = !DILocation(line: 1254, column: 13, scope: !873)
!5197 = !DILocation(line: 1257, column: 17, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5193, file: !362, line: 1254, column: 54)
!5199 = !DILocation(line: 1257, column: 22, scope: !5198)
!5200 = !DILocation(line: 1257, column: 30, scope: !5198)
!5201 = !DILocation(line: 1255, column: 20, scope: !5198)
!5202 = !DILocation(line: 1255, column: 13, scope: !5198)
!5203 = !DILocation(line: 1259, column: 9, scope: !873)
!5204 = !DILocation(line: 1260, column: 5, scope: !676)
!5205 = !DILocation(line: 1263, column: 58, scope: !676)
!5206 = !DILocation(line: 1263, column: 63, scope: !676)
!5207 = !DILocation(line: 1263, column: 71, scope: !676)
!5208 = !DILocation(line: 1263, column: 16, scope: !676)
!5209 = !DILocation(line: 1263, column: 9, scope: !676)
!5210 = !DILocation(line: 1267, column: 17, scope: !660)
!5211 = !DILocation(line: 1267, column: 6, scope: !660)
!5212 = !DILocation(line: 1267, column: 15, scope: !660)
!5213 = !DILocation(line: 1268, column: 5, scope: !660)
!5214 = !DILocation(line: 1274, column: 1, scope: !660)
!5215 = !DILocation(line: 549, column: 32, scope: !874)
!5216 = !DILocation(line: 551, column: 24, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !874, file: !362, line: 551, column: 9)
!5218 = !DILocation(line: 551, column: 31, scope: !5217)
!5219 = !DILocation(line: 551, column: 40, scope: !5217)
!5220 = !DILocation(line: 551, column: 59, scope: !5217)
!5221 = !DILocation(line: 551, column: 93, scope: !5222)
!5222 = !DILexicalBlockFile(scope: !5217, file: !362, discriminator: 1)
!5223 = !DILocation(line: 551, column: 100, scope: !5217)
!5224 = !DILocation(line: 551, column: 62, scope: !5217)
!5225 = !DILocation(line: 551, column: 9, scope: !874)
!5226 = !DILocation(line: 552, column: 25, scope: !5227)
!5227 = distinct !DILexicalBlock(scope: !5217, file: !362, line: 551, column: 129)
!5228 = !DILocation(line: 552, column: 9, scope: !5227)
!5229 = !DILocation(line: 554, column: 9, scope: !5227)
!5230 = !DILocation(line: 557, column: 9, scope: !5217)
!5231 = !DILocation(line: 558, column: 1, scope: !874)
!5232 = !DILocation(line: 534, column: 24, scope: !877)
!5233 = !DILocation(line: 534, column: 44, scope: !877)
!5234 = !DILocation(line: 534, column: 55, scope: !877)
!5235 = !DILocation(line: 534, column: 70, scope: !877)
!5236 = !DILocation(line: 538, column: 19, scope: !877)
!5237 = !DILocation(line: 538, column: 27, scope: !877)
!5238 = !DILocation(line: 539, column: 47, scope: !877)
!5239 = !DILocation(line: 540, column: 19, scope: !877)
!5240 = !DILocation(line: 540, column: 23, scope: !877)
!5241 = !DILocation(line: 540, column: 19, scope: !5242)
!5242 = !DILexicalBlockFile(scope: !877, file: !362, discriminator: 1)
!5243 = !DILocation(line: 540, column: 55, scope: !5244)
!5244 = !DILexicalBlockFile(scope: !877, file: !362, discriminator: 2)
!5245 = !DILocation(line: 540, column: 60, scope: !877)
!5246 = !DILocation(line: 540, column: 69, scope: !877)
!5247 = !DILocation(line: 538, column: 5, scope: !877)
!5248 = !DILocation(line: 541, column: 12, scope: !877)
!5249 = !DILocation(line: 541, column: 5, scope: !877)
!5250 = !DILocation(line: 1299, column: 21, scope: !885)
!5251 = !DILocation(line: 1299, column: 37, scope: !885)
!5252 = !DILocation(line: 1299, column: 50, scope: !885)
!5253 = !DILocation(line: 1301, column: 28, scope: !5254)
!5254 = distinct !DILexicalBlock(scope: !885, file: !362, line: 1301, column: 9)
!5255 = !DILocation(line: 1301, column: 33, scope: !5254)
!5256 = !DILocation(line: 1301, column: 9, scope: !5254)
!5257 = !DILocation(line: 1301, column: 42, scope: !5254)
!5258 = !DILocation(line: 1301, column: 9, scope: !885)
!5259 = !DILocation(line: 1302, column: 10, scope: !5260)
!5260 = distinct !DILexicalBlock(scope: !5254, file: !362, line: 1301, column: 48)
!5261 = !DILocation(line: 1302, column: 17, scope: !5260)
!5262 = !DILocation(line: 1303, column: 9, scope: !5260)
!5263 = !DILocation(line: 1305, column: 32, scope: !5264)
!5264 = distinct !DILexicalBlock(scope: !885, file: !362, line: 1305, column: 9)
!5265 = !DILocation(line: 1305, column: 10, scope: !5264)
!5266 = !DILocation(line: 1305, column: 9, scope: !885)
!5267 = !DILocation(line: 1306, column: 26, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !5264, file: !362, line: 1305, column: 44)
!5269 = !DILocation(line: 1306, column: 9, scope: !5268)
!5270 = !DILocation(line: 1307, column: 10, scope: !5268)
!5271 = !DILocation(line: 1307, column: 17, scope: !5268)
!5272 = !DILocation(line: 1308, column: 9, scope: !5268)
!5273 = !DILocation(line: 1310, column: 5, scope: !885)
!5274 = !DILocation(line: 1311, column: 1, scope: !885)
!5275 = !DILocation(line: 165, column: 18, scope: !892)
!5276 = !DILocation(line: 165, column: 35, scope: !892)
!5277 = !DILocation(line: 165, column: 53, scope: !892)
!5278 = !DILocation(line: 167, column: 5, scope: !892)
!5279 = !DILocation(line: 167, column: 9, scope: !892)
!5280 = !DILocation(line: 169, column: 13, scope: !892)
!5281 = !DILocation(line: 169, column: 23, scope: !892)
!5282 = !DILocation(line: 169, column: 11, scope: !892)
!5283 = !DILocation(line: 170, column: 5, scope: !892)
!5284 = !DILocation(line: 170, column: 15, scope: !892)
!5285 = !DILocation(line: 170, column: 31, scope: !892)
!5286 = !DILocation(line: 172, column: 37, scope: !892)
!5287 = !DILocation(line: 172, column: 23, scope: !892)
!5288 = !DILocation(line: 172, column: 5, scope: !892)
!5289 = !DILocation(line: 172, column: 15, scope: !892)
!5290 = !DILocation(line: 172, column: 30, scope: !892)
!5291 = !DILocation(line: 172, column: 35, scope: !892)
!5292 = !DILocation(line: 173, column: 43, scope: !892)
!5293 = !DILocation(line: 173, column: 23, scope: !892)
!5294 = !DILocation(line: 173, column: 5, scope: !892)
!5295 = !DILocation(line: 173, column: 15, scope: !892)
!5296 = !DILocation(line: 173, column: 30, scope: !892)
!5297 = !DILocation(line: 173, column: 41, scope: !892)
!5298 = !DILocation(line: 176, column: 1, scope: !892)
!5299 = !DILocation(line: 175, column: 5, scope: !892)
!5300 = !DILocation(line: 155, column: 26, scope: !900)
!5301 = !DILocation(line: 155, column: 38, scope: !900)
!5302 = !DILocation(line: 157, column: 5, scope: !900)
!5303 = !DILocation(line: 157, column: 16, scope: !900)
!5304 = !DILocation(line: 157, column: 35, scope: !900)
!5305 = !DILocation(line: 157, column: 22, scope: !900)
!5306 = !DILocation(line: 158, column: 9, scope: !5307)
!5307 = distinct !DILexicalBlock(scope: !900, file: !362, line: 158, column: 9)
!5308 = !DILocation(line: 158, column: 9, scope: !900)
!5309 = !DILocation(line: 159, column: 26, scope: !5310)
!5310 = distinct !DILexicalBlock(scope: !5307, file: !362, line: 158, column: 14)
!5311 = !DILocation(line: 159, column: 9, scope: !5310)
!5312 = !DILocation(line: 160, column: 5, scope: !5310)
!5313 = !DILocation(line: 162, column: 1, scope: !900)
!5314 = !DILocation(line: 161, column: 5, scope: !900)
!5315 = !DILocation(line: 1277, column: 25, scope: !905)
!5316 = !DILocation(line: 1277, column: 37, scope: !905)
!5317 = !DILocation(line: 1277, column: 47, scope: !905)
!5318 = !DILocation(line: 1279, column: 5, scope: !905)
!5319 = !DILocation(line: 1279, column: 20, scope: !905)
!5320 = !DILocation(line: 1279, column: 39, scope: !905)
!5321 = !DILocation(line: 1279, column: 46, scope: !905)
!5322 = !DILocation(line: 1279, column: 56, scope: !905)
!5323 = !{!1264, !982, i64 160}
!5324 = !DILocation(line: 1280, column: 5, scope: !905)
!5325 = !DILocation(line: 1280, column: 16, scope: !905)
!5326 = !DILocation(line: 1281, column: 5, scope: !905)
!5327 = !DILocation(line: 1281, column: 15, scope: !905)
!5328 = !DILocation(line: 1283, column: 6, scope: !905)
!5329 = !DILocation(line: 1283, column: 13, scope: !905)
!5330 = !DILocation(line: 1284, column: 6, scope: !905)
!5331 = !DILocation(line: 1284, column: 8, scope: !905)
!5332 = !DILocation(line: 1285, column: 9, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !905, file: !362, line: 1285, column: 9)
!5334 = !DILocation(line: 1285, column: 12, scope: !5333)
!5335 = !DILocation(line: 1285, column: 26, scope: !5333)
!5336 = !DILocation(line: 1285, column: 29, scope: !5337)
!5337 = !DILexicalBlockFile(scope: !5333, file: !362, discriminator: 1)
!5338 = !DILocation(line: 1285, column: 33, scope: !5333)
!5339 = !DILocation(line: 1285, column: 50, scope: !5333)
!5340 = !DILocation(line: 1285, column: 9, scope: !905)
!5341 = !DILocation(line: 1286, column: 10, scope: !5342)
!5342 = distinct !DILexicalBlock(scope: !5333, file: !362, line: 1285, column: 65)
!5343 = !DILocation(line: 1286, column: 17, scope: !5342)
!5344 = !DILocation(line: 1287, column: 9, scope: !5342)
!5345 = !DILocation(line: 1290, column: 19, scope: !5346)
!5346 = distinct !DILexicalBlock(scope: !905, file: !362, line: 1290, column: 9)
!5347 = !DILocation(line: 1290, column: 31, scope: !5346)
!5348 = !DILocation(line: 1290, column: 9, scope: !5346)
!5349 = !DILocation(line: 1290, column: 39, scope: !5346)
!5350 = !DILocation(line: 1290, column: 9, scope: !905)
!5351 = !DILocation(line: 1291, column: 9, scope: !5346)
!5352 = !DILocation(line: 1292, column: 18, scope: !905)
!5353 = !{!5354, !1261, i64 16}
!5354 = !{!"bufferinfo", !982, i64 0, !982, i64 8, !1261, i64 16, !1261, i64 24, !999, i64 32, !999, i64 36, !982, i64 40, !982, i64 48, !982, i64 56, !982, i64 64, !982, i64 72}
!5355 = !DILocation(line: 1292, column: 11, scope: !905)
!5356 = !DILocation(line: 1293, column: 15, scope: !905)
!5357 = !{!5354, !982, i64 0}
!5358 = !DILocation(line: 1293, column: 6, scope: !905)
!5359 = !DILocation(line: 1293, column: 8, scope: !905)
!5360 = !DILocation(line: 1294, column: 5, scope: !905)
!5361 = !DILocation(line: 1295, column: 12, scope: !905)
!5362 = !DILocation(line: 1295, column: 5, scope: !905)
!5363 = !DILocation(line: 1296, column: 1, scope: !905)
!5364 = !DILocation(line: 146, column: 23, scope: !915)
!5365 = !DILocation(line: 146, column: 35, scope: !915)
!5366 = !DILocation(line: 148, column: 9, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !915, file: !362, line: 148, column: 9)
!5368 = !DILocation(line: 148, column: 9, scope: !915)
!5369 = !DILocation(line: 149, column: 20, scope: !5370)
!5370 = distinct !DILexicalBlock(scope: !5367, file: !362, line: 148, column: 14)
!5371 = !DILocation(line: 149, column: 9, scope: !5370)
!5372 = !DILocation(line: 150, column: 5, scope: !5370)
!5373 = !DILocation(line: 151, column: 5, scope: !915)
!5374 = !DILocation(line: 1632, column: 23, scope: !966)
!5375 = !DILocation(line: 1632, column: 42, scope: !966)
!5376 = !DILocation(line: 1632, column: 52, scope: !966)
!5377 = !DILocation(line: 1634, column: 5, scope: !966)
!5378 = !DILocation(line: 1634, column: 17, scope: !966)
!5379 = !DILocation(line: 1634, column: 27, scope: !966)
!5380 = !DILocation(line: 1634, column: 26, scope: !966)
!5381 = !DILocation(line: 1635, column: 5, scope: !966)
!5382 = !DILocation(line: 1635, column: 10, scope: !966)
!5383 = !DILocation(line: 1635, column: 21, scope: !966)
!5384 = !DILocation(line: 1635, column: 14, scope: !966)
!5385 = !DILocation(line: 1637, column: 13, scope: !966)
!5386 = !DILocation(line: 1637, column: 5, scope: !966)
!5387 = !DILocation(line: 1667, column: 38, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !977, file: !362, line: 1666, column: 9)
!5389 = !DILocation(line: 1667, column: 37, scope: !5388)
!5390 = !DILocation(line: 1667, column: 20, scope: !5388)
!5391 = !DILocation(line: 1667, column: 20, scope: !5392)
!5392 = !DILexicalBlockFile(scope: !5388, file: !362, discriminator: 1)
!5393 = !DILocation(line: 1667, column: 20, scope: !5394)
!5394 = !DILexicalBlockFile(scope: !5388, file: !362, discriminator: 2)
!5395 = !DILocation(line: 1667, column: 20, scope: !5396)
!5396 = !DILexicalBlockFile(scope: !5397, file: !362, discriminator: 4)
!5397 = !DILexicalBlockFile(scope: !5388, file: !362, discriminator: 3)
!5398 = !DILocation(line: 1668, column: 13, scope: !5388)
!5399 = !DILocation(line: 1675, column: 38, scope: !5400)
!5400 = distinct !DILexicalBlock(scope: !977, file: !362, line: 1674, column: 9)
!5401 = !DILocation(line: 1675, column: 37, scope: !5400)
!5402 = !DILocation(line: 1675, column: 20, scope: !5400)
!5403 = !DILocation(line: 1675, column: 20, scope: !5404)
!5404 = !DILexicalBlockFile(scope: !5400, file: !362, discriminator: 1)
!5405 = !DILocation(line: 1675, column: 20, scope: !5406)
!5406 = !DILexicalBlockFile(scope: !5400, file: !362, discriminator: 2)
!5407 = !DILocation(line: 1675, column: 20, scope: !5408)
!5408 = !DILexicalBlockFile(scope: !5409, file: !362, discriminator: 4)
!5409 = !DILexicalBlockFile(scope: !5400, file: !362, discriminator: 3)
!5410 = !DILocation(line: 1676, column: 20, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5400, file: !362, line: 1676, column: 17)
!5412 = !DILocation(line: 1676, column: 19, scope: !5411)
!5413 = !DILocation(line: 1676, column: 27, scope: !5411)
!5414 = !DILocation(line: 1676, column: 34, scope: !5411)
!5415 = !DILocation(line: 1676, column: 38, scope: !5416)
!5416 = !DILexicalBlockFile(scope: !5411, file: !362, discriminator: 1)
!5417 = !DILocation(line: 1676, column: 37, scope: !5411)
!5418 = !DILocation(line: 1676, column: 45, scope: !5411)
!5419 = !DILocation(line: 1676, column: 17, scope: !5400)
!5420 = !DILocation(line: 1678, column: 17, scope: !5411)
!5421 = !DILocation(line: 1679, column: 19, scope: !5400)
!5422 = !DILocation(line: 1681, column: 9, scope: !5400)
!5423 = !DILocation(line: 1690, column: 38, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !977, file: !362, line: 1689, column: 9)
!5425 = !DILocation(line: 1690, column: 37, scope: !5424)
!5426 = !DILocation(line: 1690, column: 20, scope: !5424)
!5427 = !DILocation(line: 1690, column: 20, scope: !5428)
!5428 = !DILexicalBlockFile(scope: !5424, file: !362, discriminator: 1)
!5429 = !DILocation(line: 1690, column: 20, scope: !5430)
!5430 = !DILexicalBlockFile(scope: !5424, file: !362, discriminator: 2)
!5431 = !DILocation(line: 1690, column: 20, scope: !5432)
!5432 = !DILexicalBlockFile(scope: !5433, file: !362, discriminator: 4)
!5433 = !DILexicalBlockFile(scope: !5424, file: !362, discriminator: 3)
!5434 = !DILocation(line: 1691, column: 18, scope: !5435)
!5435 = distinct !DILexicalBlock(scope: !5424, file: !362, line: 1691, column: 17)
!5436 = !DILocation(line: 1691, column: 17, scope: !5435)
!5437 = !DILocation(line: 1691, column: 25, scope: !5435)
!5438 = !DILocation(line: 1691, column: 17, scope: !5424)
!5439 = !DILocation(line: 1692, column: 21, scope: !5440)
!5440 = distinct !DILexicalBlock(scope: !5441, file: !362, line: 1692, column: 21)
!5441 = distinct !DILexicalBlock(scope: !5435, file: !362, line: 1691, column: 33)
!5442 = !DILocation(line: 1692, column: 27, scope: !5440)
!5443 = !DILocation(line: 1692, column: 21, scope: !5441)
!5444 = !DILocation(line: 1693, column: 46, scope: !5440)
!5445 = !DILocation(line: 1693, column: 45, scope: !5440)
!5446 = !DILocation(line: 1693, column: 28, scope: !5440)
!5447 = !DILocation(line: 1693, column: 28, scope: !5448)
!5448 = !DILexicalBlockFile(scope: !5440, file: !362, discriminator: 1)
!5449 = !DILocation(line: 1693, column: 28, scope: !5450)
!5450 = !DILexicalBlockFile(scope: !5440, file: !362, discriminator: 2)
!5451 = !DILocation(line: 1693, column: 28, scope: !5452)
!5452 = !DILexicalBlockFile(scope: !5453, file: !362, discriminator: 4)
!5453 = !DILexicalBlockFile(scope: !5440, file: !362, discriminator: 3)
!5454 = !DILocation(line: 1693, column: 21, scope: !5440)
!5455 = !DILocation(line: 1695, column: 46, scope: !5440)
!5456 = !DILocation(line: 1695, column: 45, scope: !5440)
!5457 = !DILocation(line: 1695, column: 28, scope: !5440)
!5458 = !DILocation(line: 1695, column: 28, scope: !5448)
!5459 = !DILocation(line: 1695, column: 28, scope: !5450)
!5460 = !DILocation(line: 1695, column: 28, scope: !5452)
!5461 = !DILocation(line: 1696, column: 23, scope: !5441)
!5462 = !DILocation(line: 1697, column: 13, scope: !5441)
!5463 = !DILocation(line: 1697, column: 25, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5435, file: !362, line: 1697, column: 24)
!5465 = !DILocation(line: 1697, column: 27, scope: !5464)
!5466 = !DILocation(line: 1697, column: 34, scope: !5464)
!5467 = !DILocation(line: 1697, column: 37, scope: !5468)
!5468 = !DILexicalBlockFile(scope: !5464, file: !362, discriminator: 2)
!5469 = !DILocation(line: 1697, column: 39, scope: !5464)
!5470 = !DILocation(line: 1697, column: 46, scope: !5464)
!5471 = !DILocation(line: 1697, column: 49, scope: !5472)
!5472 = !DILexicalBlockFile(scope: !5464, file: !362, discriminator: 4)
!5473 = !DILocation(line: 1697, column: 51, scope: !5464)
!5474 = !DILocation(line: 1697, column: 59, scope: !5464)
!5475 = !DILocation(line: 1697, column: 63, scope: !5476)
!5476 = !DILexicalBlockFile(scope: !5477, file: !362, discriminator: 5)
!5477 = !DILexicalBlockFile(scope: !5478, file: !362, discriminator: 3)
!5478 = !DILexicalBlockFile(scope: !5464, file: !362, discriminator: 1)
!5479 = !DILocation(line: 1697, column: 62, scope: !5464)
!5480 = !DILocation(line: 1697, column: 70, scope: !5464)
!5481 = !DILocation(line: 1697, column: 24, scope: !5435)
!5482 = !DILocation(line: 1698, column: 23, scope: !5483)
!5483 = distinct !DILexicalBlock(scope: !5464, file: !362, line: 1697, column: 78)
!5484 = !DILocation(line: 1699, column: 13, scope: !5483)
!5485 = !DILocation(line: 1700, column: 13, scope: !5424)
!5486 = !DILocation(line: 1705, column: 18, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5488, file: !362, line: 1705, column: 17)
!5488 = distinct !DILexicalBlock(scope: !977, file: !362, line: 1704, column: 9)
!5489 = !DILocation(line: 1705, column: 17, scope: !5487)
!5490 = !DILocation(line: 1705, column: 25, scope: !5487)
!5491 = !DILocation(line: 1705, column: 17, scope: !5488)
!5492 = !DILocation(line: 1706, column: 23, scope: !5493)
!5493 = distinct !DILexicalBlock(scope: !5487, file: !362, line: 1705, column: 33)
!5494 = !DILocation(line: 1707, column: 42, scope: !5493)
!5495 = !DILocation(line: 1707, column: 41, scope: !5493)
!5496 = !DILocation(line: 1707, column: 24, scope: !5493)
!5497 = !DILocation(line: 1707, column: 24, scope: !5498)
!5498 = !DILexicalBlockFile(scope: !5493, file: !362, discriminator: 1)
!5499 = !DILocation(line: 1707, column: 24, scope: !5500)
!5500 = !DILexicalBlockFile(scope: !5493, file: !362, discriminator: 2)
!5501 = !DILocation(line: 1707, column: 24, scope: !5502)
!5502 = !DILexicalBlockFile(scope: !5503, file: !362, discriminator: 4)
!5503 = !DILexicalBlockFile(scope: !5493, file: !362, discriminator: 3)
!5504 = !DILocation(line: 1708, column: 42, scope: !5493)
!5505 = !DILocation(line: 1708, column: 41, scope: !5493)
!5506 = !DILocation(line: 1708, column: 24, scope: !5493)
!5507 = !DILocation(line: 1708, column: 24, scope: !5498)
!5508 = !DILocation(line: 1708, column: 24, scope: !5500)
!5509 = !DILocation(line: 1708, column: 24, scope: !5502)
!5510 = !DILocation(line: 1709, column: 13, scope: !5493)
!5511 = !DILocation(line: 1710, column: 23, scope: !5512)
!5512 = distinct !DILexicalBlock(scope: !5487, file: !362, line: 1710, column: 22)
!5513 = !DILocation(line: 1710, column: 22, scope: !5512)
!5514 = !DILocation(line: 1710, column: 30, scope: !5512)
!5515 = !DILocation(line: 1710, column: 22, scope: !5487)
!5516 = !DILocation(line: 1712, column: 42, scope: !5517)
!5517 = distinct !DILexicalBlock(scope: !5512, file: !362, line: 1710, column: 38)
!5518 = !DILocation(line: 1712, column: 41, scope: !5517)
!5519 = !DILocation(line: 1712, column: 24, scope: !5517)
!5520 = !DILocation(line: 1712, column: 24, scope: !5521)
!5521 = !DILexicalBlockFile(scope: !5517, file: !362, discriminator: 1)
!5522 = !DILocation(line: 1712, column: 24, scope: !5523)
!5523 = !DILexicalBlockFile(scope: !5517, file: !362, discriminator: 2)
!5524 = !DILocation(line: 1712, column: 24, scope: !5525)
!5525 = !DILexicalBlockFile(scope: !5526, file: !362, discriminator: 4)
!5526 = !DILexicalBlockFile(scope: !5517, file: !362, discriminator: 3)
!5527 = !DILocation(line: 1713, column: 42, scope: !5517)
!5528 = !DILocation(line: 1713, column: 41, scope: !5517)
!5529 = !DILocation(line: 1713, column: 24, scope: !5517)
!5530 = !DILocation(line: 1713, column: 24, scope: !5521)
!5531 = !DILocation(line: 1713, column: 24, scope: !5523)
!5532 = !DILocation(line: 1713, column: 24, scope: !5525)
!5533 = !DILocation(line: 1714, column: 23, scope: !5517)
!5534 = !DILocation(line: 1715, column: 13, scope: !5517)
!5535 = !DILocation(line: 1717, column: 42, scope: !5536)
!5536 = distinct !DILexicalBlock(scope: !5512, file: !362, line: 1716, column: 18)
!5537 = !DILocation(line: 1717, column: 41, scope: !5536)
!5538 = !DILocation(line: 1717, column: 24, scope: !5536)
!5539 = !DILocation(line: 1717, column: 24, scope: !5540)
!5540 = !DILexicalBlockFile(scope: !5536, file: !362, discriminator: 1)
!5541 = !DILocation(line: 1717, column: 24, scope: !5542)
!5542 = !DILexicalBlockFile(scope: !5536, file: !362, discriminator: 2)
!5543 = !DILocation(line: 1717, column: 24, scope: !5544)
!5544 = !DILexicalBlockFile(scope: !5545, file: !362, discriminator: 4)
!5545 = !DILexicalBlockFile(scope: !5536, file: !362, discriminator: 3)
!5546 = !DILocation(line: 1719, column: 13, scope: !5488)
!5547 = !DILocation(line: 1724, column: 13, scope: !976)
!5548 = !DILocation(line: 1724, column: 19, scope: !976)
!5549 = !DILocation(line: 1725, column: 13, scope: !976)
!5550 = !DILocation(line: 1726, column: 22, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5552, file: !362, line: 1726, column: 21)
!5552 = distinct !DILexicalBlock(scope: !5553, file: !362, line: 1725, column: 22)
!5553 = distinct !DILexicalBlock(scope: !5554, file: !362, line: 1725, column: 13)
!5554 = distinct !DILexicalBlock(scope: !976, file: !362, line: 1725, column: 13)
!5555 = !DILocation(line: 1726, column: 21, scope: !5551)
!5556 = !DILocation(line: 1726, column: 28, scope: !5551)
!5557 = !DILocation(line: 1726, column: 21, scope: !5552)
!5558 = !DILocation(line: 1727, column: 21, scope: !5551)
!5559 = !DILocation(line: 1728, column: 23, scope: !5560)
!5560 = distinct !DILexicalBlock(scope: !5552, file: !362, line: 1728, column: 21)
!5561 = !DILocation(line: 1728, column: 22, scope: !5560)
!5562 = !DILocation(line: 1728, column: 30, scope: !5560)
!5563 = !DILocation(line: 1728, column: 38, scope: !5560)
!5564 = !DILocation(line: 1728, column: 42, scope: !5565)
!5565 = !DILexicalBlockFile(scope: !5560, file: !362, discriminator: 1)
!5566 = !DILocation(line: 1728, column: 41, scope: !5560)
!5567 = !DILocation(line: 1728, column: 49, scope: !5560)
!5568 = !DILocation(line: 1728, column: 56, scope: !5560)
!5569 = !DILocation(line: 1728, column: 60, scope: !5570)
!5570 = !DILexicalBlockFile(scope: !5560, file: !362, discriminator: 2)
!5571 = !DILocation(line: 1728, column: 59, scope: !5560)
!5572 = !DILocation(line: 1728, column: 67, scope: !5560)
!5573 = !DILocation(line: 1728, column: 21, scope: !5552)
!5574 = !DILocation(line: 1729, column: 21, scope: !5560)
!5575 = !DILocation(line: 1731, column: 41, scope: !5552)
!5576 = !DILocation(line: 1731, column: 47, scope: !5552)
!5577 = !DILocation(line: 1731, column: 23, scope: !5552)
!5578 = !DILocation(line: 1731, column: 21, scope: !5552)
!5579 = !DILocation(line: 1732, column: 21, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5552, file: !362, line: 1732, column: 21)
!5581 = !DILocation(line: 1732, column: 21, scope: !5552)
!5582 = !DILocation(line: 1733, column: 28, scope: !5580)
!5583 = !DILocation(line: 1733, column: 21, scope: !5580)
!5584 = !DILocation(line: 1725, column: 13, scope: !5553)
!5585 = !DILocation(line: 1735, column: 19, scope: !976)
!5586 = !DILocation(line: 1736, column: 13, scope: !976)
!5587 = !DILocation(line: 1737, column: 9, scope: !977)
!5588 = !DILocation(line: 1740, column: 9, scope: !977)
!5589 = !DILocation(line: 1744, column: 9, scope: !977)
!5590 = !DILocation(line: 1748, column: 17, scope: !966)
!5591 = !DILocation(line: 1748, column: 6, scope: !966)
!5592 = !DILocation(line: 1748, column: 15, scope: !966)
!5593 = !DILocation(line: 1749, column: 5, scope: !966)
!5594 = !DILocation(line: 1750, column: 1, scope: !966)
