; ModuleID = 'getargs.o.bc'
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
%struct.Py_complex = type { double, double }

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
@.str.26 = private unnamed_addr constant [36 x i8] c"must be %d-item sequence, not %.50s\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.27 = private unnamed_addr constant [5 x i8] c"None\00", align 1
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
  %va = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !445, metadata !980), !dbg !981
  tail call void @llvm.dbg.value(metadata i8* %format, i64 0, metadata !446, metadata !980), !dbg !982
  %0 = bitcast [1 x %struct.__va_list_tag]* %va to i8*, !dbg !983
  call void @llvm.lifetime.start(i64 24, i8* %0) #2, !dbg !983
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %va, metadata !448, metadata !980), !dbg !984
  call void @llvm.va_start(i8* %0), !dbg !985
  %call = call fastcc i32 @vgetargs1(%struct._object* %args, i8* %format, [1 x %struct.__va_list_tag]* nonnull %va, i32 1), !dbg !986
  call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !447, metadata !980), !dbg !987
  call void @llvm.va_end(i8* %0), !dbg !988
  call void @llvm.lifetime.end(i64 24, i8* %0) #2, !dbg !989
  ret i32 %call, !dbg !990
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @vgetargs1(%struct._object* %args, i8* %format, [1 x %struct.__va_list_tag]* %p_va, i32 %flags) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %msgbuf = alloca [256 x i8], align 16
  %levels = alloca [32 x i32], align 16
  %static_entries = alloca [8 x %struct.freelistentry_t], align 16
  %freelist = alloca %struct.freelist_t, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !567, metadata !980), !dbg !991
  tail call void @llvm.dbg.value(metadata i8* %format, i64 0, metadata !568, metadata !980), !dbg !992
  store i8* %format, i8** %format.addr, align 8, !tbaa !993
  tail call void @llvm.dbg.value(metadata [1 x %struct.__va_list_tag]* %p_va, i64 0, metadata !569, metadata !980), !dbg !997
  tail call void @llvm.dbg.value(metadata i32 %flags, i64 0, metadata !570, metadata !980), !dbg !998
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %msgbuf, i64 0, i64 0, !dbg !999
  call void @llvm.lifetime.start(i64 256, i8* %0) #2, !dbg !999
  tail call void @llvm.dbg.declare(metadata [256 x i8]* %msgbuf, metadata !571, metadata !980), !dbg !1000
  %1 = bitcast [32 x i32]* %levels to i8*, !dbg !1001
  call void @llvm.lifetime.start(i64 128, i8* %1) #2, !dbg !1001
  tail call void @llvm.dbg.declare(metadata [32 x i32]* %levels, metadata !575, metadata !980), !dbg !1002
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !579, metadata !980), !dbg !1003
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !580, metadata !980), !dbg !1004
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !581, metadata !980), !dbg !1005
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !582, metadata !980), !dbg !1006
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !583, metadata !980), !dbg !1007
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !584, metadata !980), !dbg !1008
  tail call void @llvm.dbg.value(metadata i8** %format.addr, i64 0, metadata !568, metadata !980), !dbg !992
  tail call void @llvm.dbg.value(metadata i8* %format, i64 0, metadata !585, metadata !980), !dbg !1009
  %and = and i32 %flags, 1, !dbg !1010
  tail call void @llvm.dbg.value(metadata i32 %and, i64 0, metadata !589, metadata !980), !dbg !1011
  %2 = bitcast [8 x %struct.freelistentry_t]* %static_entries to i8*, !dbg !1012
  call void @llvm.lifetime.start(i64 128, i8* %2) #2, !dbg !1012
  tail call void @llvm.dbg.declare(metadata [8 x %struct.freelistentry_t]* %static_entries, metadata !590, metadata !980), !dbg !1013
  %3 = bitcast %struct.freelist_t* %freelist to i8*, !dbg !1014
  call void @llvm.lifetime.start(i64 16, i8* %3) #2, !dbg !1014
  %arraydecay = getelementptr inbounds [8 x %struct.freelistentry_t], [8 x %struct.freelistentry_t]* %static_entries, i64 0, i64 0, !dbg !1015
  %entries = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i64 0, i32 0, !dbg !1016
  store %struct.freelistentry_t* %arraydecay, %struct.freelistentry_t** %entries, align 8, !dbg !1017, !tbaa !1018
  %first_available = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i64 0, i32 1, !dbg !1021
  store i32 0, i32* %first_available, align 8, !dbg !1022, !tbaa !1023
  %entries_malloced = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i64 0, i32 2, !dbg !1024
  store i32 0, i32* %entries_malloced, align 4, !dbg !1025, !tbaa !1026
  %and1 = and i32 %flags, -2, !dbg !1027
  call void @llvm.dbg.value(metadata i32 %and1, i64 0, metadata !570, metadata !980), !dbg !998
  %4 = bitcast [8 x %struct.freelistentry_t]* %static_entries to i8*, !dbg !1028
  br label %while.body.outer.outer, !dbg !1028

while.body.outer.outer:                           ; preds = %while.body.outer.outer.backedge, %entry
  %incdec.ptr471.ph.ph = phi i8* [ %format, %entry ], [ %incdec.ptr613, %while.body.outer.outer.backedge ]
  %level.0468.ph.ph = phi i32 [ 0, %entry ], [ %level.0468.ph.ph.be, %while.body.outer.outer.backedge ]
  %max.0467.ph.ph = phi i32 [ 0, %entry ], [ %max.0467.ph.ph.be, %while.body.outer.outer.backedge ]
  %min.0466.ph.ph = phi i32 [ -1, %entry ], [ %min.0466.ph495627, %while.body.outer.outer.backedge ]
  br label %while.body.outer, !dbg !992

while.body.outer:                                 ; preds = %while.body.outer.outer, %if.else
  %incdec.ptr471.ph = phi i8* [ %incdec.ptr.lcssa607, %if.else ], [ %incdec.ptr471.ph.ph, %while.body.outer.outer ]
  %level.0468.ph = phi i32 [ %dec, %if.else ], [ %level.0468.ph.ph, %while.body.outer.outer ]
  %min.0466.ph = phi i32 [ %min.0466.ph495.lcssa622, %if.else ], [ %min.0466.ph.ph, %while.body.outer.outer ]
  %cmp22 = icmp eq i32 %level.0468.ph, 0, !dbg !1029
  %cmp18 = icmp eq i32 %level.0468.ph, 0, !dbg !1032
  br label %while.body.outer493, !dbg !992

while.body.outer493:                              ; preds = %while.body.outer, %sw.bb.17
  %incdec.ptr471.ph494 = phi i8* [ %incdec.ptr471.ph, %while.body.outer ], [ %incdec.ptr.lcssa611, %sw.bb.17 ]
  %min.0466.ph495 = phi i32 [ %min.0466.ph, %while.body.outer ], [ %max.0.min.0, %sw.bb.17 ]
  br label %while.body, !dbg !992

while.body:                                       ; preds = %while.body.outer493, %sw.default
  %incdec.ptr471 = phi i8* [ %incdec.ptr, %sw.default ], [ %incdec.ptr471.ph494, %while.body.outer493 ], !dbg !992
  call void @llvm.dbg.value(metadata i8** %format.addr, i64 0, metadata !568, metadata !980), !dbg !992
  %incdec.ptr = getelementptr i8, i8* %incdec.ptr471, i64 1, !dbg !1034
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !568, metadata !980), !dbg !992
  %5 = load i8, i8* %incdec.ptr471, align 1, !dbg !1035, !tbaa !1036
  %conv = sext i8 %5 to i32, !dbg !1035
  call void @llvm.dbg.value(metadata i32 %conv, i64 0, metadata !601, metadata !980), !dbg !1037
  switch i32 %conv, label %sw.default [
    i32 40, label %sw.bb
    i32 41, label %sw.bb.9
    i32 0, label %while.end.loopexit
    i32 58, label %while.end.loopexit530
    i32 59, label %while.end.loopexit567
    i32 124, label %sw.bb.17
  ], !dbg !1038

sw.bb:                                            ; preds = %while.body
  %level.0468.ph.lcssa = phi i32 [ %level.0468.ph, %while.body ]
  %min.0466.ph495.lcssa = phi i32 [ %min.0466.ph495, %while.body ]
  %incdec.ptr.lcssa = phi i8* [ %incdec.ptr, %while.body ]
  %cmp2 = icmp eq i32 %level.0468.ph.lcssa, 0, !dbg !1039
  %inc = zext i1 %cmp2 to i32, !dbg !1041
  %inc4 = add i32 %level.0468.ph.lcssa, 1, !dbg !1042
  call void @llvm.dbg.value(metadata i32 %inc4, i64 0, metadata !583, metadata !980), !dbg !1007
  %cmp5 = icmp sgt i32 %inc4, 29, !dbg !1043
  br i1 %cmp5, label %if.then.7, label %while.body.outer.outer.backedge, !dbg !1045

while.body.outer.outer.backedge:                  ; preds = %sw.bb, %if.then.24
  %min.0466.ph495627 = phi i32 [ %min.0466.ph495.lcssa626, %if.then.24 ], [ %min.0466.ph495.lcssa, %sw.bb ]
  %incdec.ptr613 = phi i8* [ %incdec.ptr.lcssa612, %if.then.24 ], [ %incdec.ptr.lcssa, %sw.bb ]
  %level.0468.ph.ph.be = phi i32 [ 0, %if.then.24 ], [ %inc4, %sw.bb ]
  %inc35.pn = phi i32 [ %inc35, %if.then.24 ], [ %inc, %sw.bb ]
  %max.0467.ph.ph.be = add i32 %inc35.pn, %max.0467.ph.ph, !dbg !1046
  br label %while.body.outer.outer, !dbg !992

if.then.7:                                        ; preds = %sw.bb
  call void @Py_FatalError(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !1048
  unreachable, !dbg !1048

sw.bb.9:                                          ; preds = %while.body
  %min.0466.ph495.lcssa622 = phi i32 [ %min.0466.ph495, %while.body ]
  %incdec.ptr.lcssa607 = phi i8* [ %incdec.ptr, %while.body ]
  %cmp10 = icmp eq i32 %level.0468.ph, 0, !dbg !1049
  br i1 %cmp10, label %if.then.12, label %if.else, !dbg !1051

if.then.12:                                       ; preds = %sw.bb.9
  call void @Py_FatalError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0)) #7, !dbg !1052
  unreachable, !dbg !1052

if.else:                                          ; preds = %sw.bb.9
  %dec = add i32 %level.0468.ph, -1, !dbg !1053
  call void @llvm.dbg.value(metadata i32 %dec, i64 0, metadata !583, metadata !980), !dbg !1007
  br label %while.body.outer, !dbg !1054

sw.bb.17:                                         ; preds = %while.body
  %incdec.ptr.lcssa611 = phi i8* [ %incdec.ptr, %while.body ]
  call void @llvm.dbg.value(metadata i32 %max.0467.ph.ph, i64 0, metadata !581, metadata !980), !dbg !1005
  %max.0.min.0 = select i1 %cmp18, i32 %max.0467.ph.ph, i32 %min.0466.ph495, !dbg !1055
  br label %while.body.outer493, !dbg !1055

sw.default:                                       ; preds = %while.body
  br i1 %cmp22, label %if.then.24, label %while.body, !dbg !1056

if.then.24:                                       ; preds = %sw.default
  %min.0466.ph495.lcssa626 = phi i32 [ %min.0466.ph495, %sw.default ]
  %.lcssa621 = phi i8 [ %5, %sw.default ]
  %incdec.ptr.lcssa612 = phi i8* [ %incdec.ptr, %sw.default ]
  %idxprom = zext i8 %.lcssa621 to i64, !dbg !1057
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom, !dbg !1057
  %6 = load i32, i32* %arrayidx, align 4, !dbg !1057, !tbaa !1059
  %and30 = and i32 %6, 3, !dbg !1057
  %tobool = icmp ne i32 %and30, 0, !dbg !1057
  %cmp32 = icmp ne i8 %.lcssa621, 101, !dbg !1060
  %or.cond243 = and i1 %cmp32, %tobool, !dbg !1046
  %inc35 = zext i1 %or.cond243 to i32, !dbg !1046
  br label %while.body.outer.outer.backedge, !dbg !1046

while.end.loopexit:                               ; preds = %while.body
  %max.0467.ph.ph.lcssa = phi i32 [ %max.0467.ph.ph, %while.body ]
  %level.0468.ph.lcssa629 = phi i32 [ %level.0468.ph, %while.body ]
  %min.0466.ph495.lcssa623 = phi i32 [ %min.0466.ph495, %while.body ]
  %incdec.ptr.lcssa608 = phi i8* [ %incdec.ptr, %while.body ]
  br label %while.end, !dbg !1034

while.end.loopexit530:                            ; preds = %while.body
  %max.0467.ph.ph.lcssa635 = phi i32 [ %max.0467.ph.ph, %while.body ]
  %level.0468.ph.lcssa630 = phi i32 [ %level.0468.ph, %while.body ]
  %min.0466.ph495.lcssa624 = phi i32 [ %min.0466.ph495, %while.body ]
  %incdec.ptr.lcssa609 = phi i8* [ %incdec.ptr, %while.body ]
  br label %while.end, !dbg !1034

while.end.loopexit567:                            ; preds = %while.body
  %max.0467.ph.ph.lcssa636 = phi i32 [ %max.0467.ph.ph, %while.body ]
  %level.0468.ph.lcssa631 = phi i32 [ %level.0468.ph, %while.body ]
  %min.0466.ph495.lcssa625 = phi i32 [ %min.0466.ph495, %while.body ]
  %incdec.ptr.lcssa610 = phi i8* [ %incdec.ptr, %while.body ]
  br label %while.end, !dbg !1034

while.end:                                        ; preds = %while.end.loopexit567, %while.end.loopexit530, %while.end.loopexit
  %max.0467.ph.ph639 = phi i32 [ %max.0467.ph.ph.lcssa, %while.end.loopexit ], [ %max.0467.ph.ph.lcssa635, %while.end.loopexit530 ], [ %max.0467.ph.ph.lcssa636, %while.end.loopexit567 ]
  %level.0468.ph634 = phi i32 [ %level.0468.ph.lcssa629, %while.end.loopexit ], [ %level.0468.ph.lcssa630, %while.end.loopexit530 ], [ %level.0468.ph.lcssa631, %while.end.loopexit567 ]
  %min.0466.ph495628 = phi i32 [ %min.0466.ph495.lcssa623, %while.end.loopexit ], [ %min.0466.ph495.lcssa624, %while.end.loopexit530 ], [ %min.0466.ph495.lcssa625, %while.end.loopexit567 ]
  %incdec.ptr614 = phi i8* [ %incdec.ptr.lcssa608, %while.end.loopexit ], [ %incdec.ptr.lcssa609, %while.end.loopexit530 ], [ %incdec.ptr.lcssa610, %while.end.loopexit567 ]
  %message.0.be = phi i8* [ null, %while.end.loopexit ], [ null, %while.end.loopexit530 ], [ %incdec.ptr.lcssa610, %while.end.loopexit567 ]
  %fname.0.be = phi i8* [ null, %while.end.loopexit ], [ %incdec.ptr.lcssa609, %while.end.loopexit530 ], [ null, %while.end.loopexit567 ]
  store i8* %incdec.ptr614, i8** %format.addr, align 8, !dbg !1034, !tbaa !993
  %cmp39 = icmp eq i32 %level.0468.ph634, 0, !dbg !1062
  br i1 %cmp39, label %if.end.42, label %if.then.41, !dbg !1064

if.then.41:                                       ; preds = %while.end
  call void @Py_FatalError(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0)) #7, !dbg !1065
  unreachable, !dbg !1065

if.end.42:                                        ; preds = %while.end
  %cmp43 = icmp slt i32 %min.0466.ph495628, 0, !dbg !1066
  call void @llvm.dbg.value(metadata i32 %max.0467.ph.ph, i64 0, metadata !581, metadata !980), !dbg !1005
  %max.0.min.0320 = select i1 %cmp43, i32 %max.0467.ph.ph639, i32 %min.0466.ph495628, !dbg !1068
  call void @llvm.dbg.value(metadata i8* %format, i64 0, metadata !568, metadata !980), !dbg !992
  store i8* %format, i8** %format.addr, align 8, !dbg !1069, !tbaa !993
  %cmp47 = icmp sgt i32 %max.0467.ph.ph639, 8, !dbg !1070
  br i1 %cmp47, label %cond.end, label %if.end.62, !dbg !1072

cond.end:                                         ; preds = %if.end.42
  %conv50 = sext i32 %max.0467.ph.ph639 to i64, !dbg !1073
  %mul = shl nsw i64 %conv50, 4, !dbg !1075
  %call = call i8* @PyMem_Malloc(i64 %mul) #2, !dbg !1075
  %7 = bitcast %struct.freelist_t* %freelist to i8**, !dbg !1077
  store i8* %call, i8** %7, align 8, !dbg !1077, !tbaa !1018
  %cmp56 = icmp eq i8* %call, null, !dbg !1078
  br i1 %cmp56, label %if.then.58, label %if.end.60, !dbg !1080

if.then.58:                                       ; preds = %cond.end
  %call59 = call %struct._object* @PyErr_NoMemory() #2, !dbg !1081
  br label %cleanup, !dbg !1083

if.end.60:                                        ; preds = %cond.end
  store i32 1, i32* %entries_malloced, align 4, !dbg !1084, !tbaa !1026
  br label %if.end.62, !dbg !1085

if.end.62:                                        ; preds = %if.end.60, %if.end.42
  %8 = phi i8* [ %call, %if.end.60 ], [ %4, %if.end.42 ]
  %9 = phi i32 [ 1, %if.end.60 ], [ 0, %if.end.42 ]
  %tobool63 = icmp eq i32 %and, 0, !dbg !1086
  br i1 %tobool63, label %if.end.118, label %if.then.64, !dbg !1088

if.then.64:                                       ; preds = %if.end.62
  %cmp65 = icmp eq i32 %max.0467.ph.ph639, 0, !dbg !1089
  br i1 %cmp65, label %if.then.67, label %if.else.83, !dbg !1092

if.then.67:                                       ; preds = %if.then.64
  %cmp68 = icmp eq %struct._object* %args, null, !dbg !1093
  br i1 %cmp68, label %cleanup, label %if.end.i, !dbg !1096

if.end.i:                                         ; preds = %if.then.67
  %10 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1097, !tbaa !993
  %cmp72 = icmp eq i8* %fname.0.be, null, !dbg !1098
  %cond77 = select i1 %cmp72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* %fname.0.be, !dbg !1099
  %cond80 = select i1 %cmp72, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), !dbg !1100
  %call81 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i8* %cond77, i8* %cond80) #2, !dbg !1101
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !594, metadata !980), !dbg !1102
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !608, metadata !980) #2, !dbg !1103
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !609, metadata !980) #2, !dbg !1105
  %tobool.i = icmp eq i32 %9, 0, !dbg !1106
  br i1 %tobool.i, label %cleanup, label %if.then.6.i, !dbg !1108

if.then.6.i:                                      ; preds = %if.end.i
  call void @PyMem_Free(i8* %8) #2, !dbg !1109
  br label %cleanup, !dbg !1109

if.else.83:                                       ; preds = %if.then.64
  %cmp84 = icmp eq i32 %max.0.min.0320, 1, !dbg !1110
  %cmp86 = icmp eq i32 %max.0467.ph.ph639, 1, !dbg !1112
  %or.cond = and i1 %cmp86, %cmp84, !dbg !1113
  br i1 %or.cond, label %if.then.88, label %if.end.i.379, !dbg !1113

if.then.88:                                       ; preds = %if.else.83
  %cmp89 = icmp eq %struct._object* %args, null, !dbg !1114
  br i1 %cmp89, label %if.end.i.340, label %if.end.103, !dbg !1117

if.end.i.340:                                     ; preds = %if.then.88
  %11 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1118, !tbaa !993
  %cmp92 = icmp eq i8* %fname.0.be, null, !dbg !1120
  %cond97 = select i1 %cmp92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* %fname.0.be, !dbg !1121
  %cond100 = select i1 %cmp92, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), !dbg !1122
  %call101 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0), i8* %cond97, i8* %cond100) #2, !dbg !1123
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !594, metadata !980), !dbg !1102
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !608, metadata !980) #2, !dbg !1124
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !609, metadata !980) #2, !dbg !1126
  %tobool.i.339 = icmp eq i32 %9, 0, !dbg !1127
  br i1 %tobool.i.339, label %cleanup, label %if.then.6.i.341, !dbg !1128

if.then.6.i.341:                                  ; preds = %if.end.i.340
  call void @PyMem_Free(i8* %8) #2, !dbg !1129
  br label %cleanup, !dbg !1129

if.end.103:                                       ; preds = %if.then.88
  %arraydecay104 = getelementptr inbounds [32 x i32], [32 x i32]* %levels, i64 0, i64 0, !dbg !1130
  call void @llvm.dbg.value(metadata i8** %format.addr, i64 0, metadata !568, metadata !980), !dbg !992
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !594, metadata !980), !dbg !1102
  %call106 = call fastcc i8* @convertitem(%struct._object* %args, i8** nonnull %format.addr, [1 x %struct.__va_list_tag]* %p_va, i32 %and1, i32* %arraydecay104, i8* %0, i64 256, %struct.freelist_t* nonnull %freelist), !dbg !1131
  call void @llvm.dbg.value(metadata i8* %call106, i64 0, metadata !588, metadata !980), !dbg !1132
  %cmp107 = icmp eq i8* %call106, null, !dbg !1133
  br i1 %cmp107, label %if.then.109, label %if.end.111, !dbg !1135

if.then.109:                                      ; preds = %if.end.103
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !594, metadata !980), !dbg !1102
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !608, metadata !980) #2, !dbg !1136
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !609, metadata !980) #2, !dbg !1138
  %12 = load i32, i32* %entries_malloced, align 4, !dbg !1139, !tbaa !1026
  %tobool.i.344 = icmp eq i32 %12, 0, !dbg !1140
  br i1 %tobool.i.344, label %cleanup, label %if.then.6.i.346, !dbg !1141

if.then.6.i.346:                                  ; preds = %if.then.109
  %13 = bitcast %struct.freelist_t* %freelist to i8**, !dbg !1142
  %14 = load i8*, i8** %13, align 8, !dbg !1142, !tbaa !1018
  call void @PyMem_Free(i8* %14) #2, !dbg !1142
  br label %cleanup, !dbg !1142

if.end.111:                                       ; preds = %if.end.103
  %15 = load i32, i32* %arraydecay104, align 16, !dbg !1143, !tbaa !1059
  %conv113 = sext i32 %15 to i64, !dbg !1143
  %add.ptr = getelementptr [32 x i32], [32 x i32]* %levels, i64 0, i64 1, !dbg !1144
  call fastcc void @seterror(i64 %conv113, i8* %call106, i32* %add.ptr, i8* %fname.0.be, i8* %message.0.be), !dbg !1145
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !594, metadata !980), !dbg !1102
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !608, metadata !980) #2, !dbg !1146
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !609, metadata !980) #2, !dbg !1148
  %16 = bitcast i32* %first_available to i64*, !dbg !1149
  %17 = load i64, i64* %16, align 8, !dbg !1149
  %18 = trunc i64 %17 to i32, !dbg !1149
  %cmp2.18.i.349 = icmp sgt i32 %18, 0, !dbg !1154
  br i1 %cmp2.18.i.349, label %for.body.i.359.preheader, label %if.end.i.362, !dbg !1155

for.body.i.359.preheader:                         ; preds = %if.end.111
  %19 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries, align 8, !dbg !1156, !tbaa !1018
  %sext = shl i64 %17, 32, !dbg !1158
  %20 = ashr exact i64 %sext, 32, !dbg !1158
  br label %for.body.i.359, !dbg !1158

for.body.i.359:                                   ; preds = %for.body.i.359.preheader, %for.body.i.359
  %indvars.iv487 = phi i64 [ 0, %for.body.i.359.preheader ], [ %indvars.iv.next488, %for.body.i.359 ], !dbg !1159
  %destructor.i.354 = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %19, i64 %indvars.iv487, i32 1, !dbg !1160
  %21 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %destructor.i.354, align 8, !dbg !1160, !tbaa !1161
  %item.i.355 = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %19, i64 %indvars.iv487, i32 0, !dbg !1163
  %22 = load i8*, i8** %item.i.355, align 8, !dbg !1163, !tbaa !1164
  %call.i.356 = call i32 %21(%struct._object* null, i8* %22) #2, !dbg !1158
  %indvars.iv.next488 = add nuw nsw i64 %indvars.iv487, 1, !dbg !1155
  %cmp2.i.358 = icmp slt i64 %indvars.iv.next488, %20, !dbg !1154
  br i1 %cmp2.i.358, label %for.body.i.359, label %if.end.i.362.loopexit, !dbg !1155

if.end.i.362.loopexit:                            ; preds = %for.body.i.359
  br label %if.end.i.362, !dbg !1165

if.end.i.362:                                     ; preds = %if.end.i.362.loopexit, %if.end.111
  %tobool.i.361 = icmp ult i64 %17, 4294967296, !dbg !1165
  br i1 %tobool.i.361, label %cleanup, label %if.then.6.i.363, !dbg !1166

if.then.6.i.363:                                  ; preds = %if.end.i.362
  %23 = bitcast %struct.freelist_t* %freelist to i8**, !dbg !1167
  %24 = load i8*, i8** %23, align 8, !dbg !1167, !tbaa !1018
  call void @PyMem_Free(i8* %24) #2, !dbg !1167
  br label %cleanup, !dbg !1167

if.end.i.379:                                     ; preds = %if.else.83
  %25 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1168, !tbaa !993
  call void @PyErr_SetString(%struct._object* %25, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i64 0, i64 0)) #2, !dbg !1170
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !594, metadata !980), !dbg !1102
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !608, metadata !980) #2, !dbg !1171
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !609, metadata !980) #2, !dbg !1173
  %tobool.i.378 = icmp eq i32 %9, 0, !dbg !1174
  br i1 %tobool.i.378, label %cleanup, label %if.then.6.i.380, !dbg !1175

if.then.6.i.380:                                  ; preds = %if.end.i.379
  call void @PyMem_Free(i8* %8) #2, !dbg !1176
  br label %cleanup, !dbg !1176

if.end.118:                                       ; preds = %if.end.62
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %args, i64 0, i32 1, !dbg !1177
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1177, !tbaa !1179
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i64 0, i32 19, !dbg !1177
  %27 = load i64, i64* %tp_flags, align 8, !dbg !1177, !tbaa !1182
  %and119 = and i64 %27, 67108864, !dbg !1177
  %cmp120 = icmp eq i64 %and119, 0, !dbg !1177
  br i1 %cmp120, label %if.end.i.396, label %if.end.124, !dbg !1185

if.end.i.396:                                     ; preds = %if.end.118
  %28 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1186, !tbaa !993
  call void @PyErr_SetString(%struct._object* %28, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.18, i64 0, i64 0)) #2, !dbg !1188
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !594, metadata !980), !dbg !1102
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !608, metadata !980) #2, !dbg !1189
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !609, metadata !980) #2, !dbg !1191
  %tobool.i.395 = icmp eq i32 %9, 0, !dbg !1192
  br i1 %tobool.i.395, label %cleanup, label %if.then.6.i.397, !dbg !1193

if.then.6.i.397:                                  ; preds = %if.end.i.396
  call void @PyMem_Free(i8* %8) #2, !dbg !1194
  br label %cleanup, !dbg !1194

if.end.124:                                       ; preds = %if.end.118
  %29 = getelementptr inbounds %struct._object, %struct._object* %args, i64 1, i32 0, !dbg !1195
  %30 = load i64, i64* %29, align 8, !dbg !1195, !tbaa !1196
  call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !587, metadata !980), !dbg !1197
  %conv125 = sext i32 %max.0.min.0320 to i64, !dbg !1198
  %cmp126 = icmp slt i64 %30, %conv125, !dbg !1200
  %conv128 = sext i32 %max.0467.ph.ph639 to i64
  %cmp129 = icmp slt i64 %conv128, %30, !dbg !1201
  %or.cond321 = or i1 %cmp126, %cmp129, !dbg !1202
  br i1 %or.cond321, label %if.then.131, label %for.cond.preheader, !dbg !1202

for.cond.preheader:                               ; preds = %if.end.124
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %args, i64 1, i32 1, !dbg !1203
  %31 = bitcast %struct._typeobject** %ob_item to [1 x %struct._object*]*, !dbg !1203
  %arraydecay185 = getelementptr inbounds [32 x i32], [32 x i32]* %levels, i64 0, i64 0, !dbg !1207
  %cmp176.565 = icmp sgt i64 %30, 0, !dbg !1208
  call void @llvm.dbg.value(metadata i8** %format.addr, i64 0, metadata !568, metadata !980), !dbg !992
  %32 = load i8, i8* %format, align 1, !dbg !1209, !tbaa !1036
  br i1 %cmp176.565, label %for.body.preheader, label %for.end, !dbg !1211

for.body.preheader:                               ; preds = %for.cond.preheader
  br label %for.body, !dbg !1212

if.then.131:                                      ; preds = %if.end.124
  %cmp132 = icmp eq i8* %message.0.be, null, !dbg !1213
  %33 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1216, !tbaa !993
  br i1 %cmp132, label %if.then.134, label %if.else.172, !dbg !1217

if.then.134:                                      ; preds = %if.then.131
  %cmp135 = icmp eq i8* %fname.0.be, null, !dbg !1218
  %cond140 = select i1 %cmp135, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* %fname.0.be, !dbg !1219
  %cond143 = select i1 %cmp135, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), !dbg !1220
  %cmp144 = icmp eq i32 %max.0.min.0320, %max.0467.ph.ph639, !dbg !1221
  %cond151 = select i1 %cmp126, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), !dbg !1222
  %cond153 = select i1 %cmp144, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i8* %cond151, !dbg !1223
  %cond160 = select i1 %cmp126, i32 %max.0.min.0320, i32 %max.0467.ph.ph639, !dbg !1224
  %cmp168 = icmp eq i32 %cond160, 1, !dbg !1225
  %cond170 = select i1 %cmp168, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), !dbg !1228
  %call171 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %33, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i64 0, i64 0), i8* %cond140, i8* %cond143, i8* %cond153, i32 %cond160, i8* %cond170, i64 %30) #2, !dbg !1229
  br label %if.end.i.413, !dbg !1229

if.else.172:                                      ; preds = %if.then.131
  call void @PyErr_SetString(%struct._object* %33, i8* %message.0.be) #2, !dbg !1230
  br label %if.end.i.413

if.end.i.413:                                     ; preds = %if.then.134, %if.else.172
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !594, metadata !980), !dbg !1102
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !608, metadata !980) #2, !dbg !1231
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !609, metadata !980) #2, !dbg !1233
  %tobool.i.412 = icmp eq i32 %9, 0, !dbg !1234
  br i1 %tobool.i.412, label %cleanup, label %if.then.6.i.414, !dbg !1235

if.then.6.i.414:                                  ; preds = %if.end.i.413
  call void @PyMem_Free(i8* %8) #2, !dbg !1236
  br label %cleanup, !dbg !1236

for.body:                                         ; preds = %for.body.preheader, %if.end.183.for.cond_crit_edge
  %34 = phi i8 [ %37, %if.end.183.for.cond_crit_edge ], [ %32, %for.body.preheader ]
  %i.0566 = phi i64 [ %add, %if.end.183.for.cond_crit_edge ], [ 0, %for.body.preheader ]
  %35 = phi i8* [ %.pre, %if.end.183.for.cond_crit_edge ], [ %format, %for.body.preheader ]
  %cmp179 = icmp eq i8 %34, 124, !dbg !1212
  br i1 %cmp179, label %if.then.181, label %if.end.183, !dbg !1237

if.then.181:                                      ; preds = %for.body
  %incdec.ptr182 = getelementptr i8, i8* %35, i64 1, !dbg !1238
  call void @llvm.dbg.value(metadata i8* %incdec.ptr182, i64 0, metadata !568, metadata !980), !dbg !992
  store i8* %incdec.ptr182, i8** %format.addr, align 8, !dbg !1238, !tbaa !993
  br label %if.end.183, !dbg !1239

if.end.183:                                       ; preds = %if.then.181, %for.body
  %arrayidx184 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %31, i64 0, i64 %i.0566, !dbg !1203
  %36 = load %struct._object*, %struct._object** %arrayidx184, align 8, !dbg !1203, !tbaa !993
  call void @llvm.dbg.value(metadata i8** %format.addr, i64 0, metadata !568, metadata !980), !dbg !992
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !594, metadata !980), !dbg !1102
  %call187 = call fastcc i8* @convertitem(%struct._object* %36, i8** nonnull %format.addr, [1 x %struct.__va_list_tag]* %p_va, i32 %and1, i32* %arraydecay185, i8* %0, i64 256, %struct.freelist_t* nonnull %freelist), !dbg !1240
  call void @llvm.dbg.value(metadata i8* %call187, i64 0, metadata !588, metadata !980), !dbg !1132
  %tobool188 = icmp eq i8* %call187, null, !dbg !1241
  %add = add nuw i64 %i.0566, 1, !dbg !1243
  br i1 %tobool188, label %if.end.183.for.cond_crit_edge, label %if.then.189, !dbg !1245

if.end.183.for.cond_crit_edge:                    ; preds = %if.end.183
  %.pre = load i8*, i8** %format.addr, align 8, !dbg !1246, !tbaa !993
  %cmp176 = icmp slt i64 %add, %30, !dbg !1208
  call void @llvm.dbg.value(metadata i8** %format.addr, i64 0, metadata !568, metadata !980), !dbg !992
  %37 = load i8, i8* %.pre, align 1, !dbg !1209, !tbaa !1036
  br i1 %cmp176, label %for.body, label %for.end.loopexit, !dbg !1211

if.then.189:                                      ; preds = %if.end.183
  %add.lcssa = phi i64 [ %add, %if.end.183 ]
  %call187.lcssa = phi i8* [ %call187, %if.end.183 ]
  call fastcc void @seterror(i64 %add.lcssa, i8* %call187.lcssa, i32* %arraydecay185, i8* %fname.0.be, i8* %call187.lcssa), !dbg !1247
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !594, metadata !980), !dbg !1102
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !608, metadata !980) #2, !dbg !1248
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !609, metadata !980) #2, !dbg !1250
  %38 = bitcast i32* %first_available to i64*, !dbg !1251
  %39 = load i64, i64* %38, align 8, !dbg !1251
  %40 = trunc i64 %39 to i32, !dbg !1251
  %cmp2.18.i.417 = icmp sgt i32 %40, 0, !dbg !1252
  br i1 %cmp2.18.i.417, label %for.body.i.427.preheader, label %if.end.i.430, !dbg !1253

for.body.i.427.preheader:                         ; preds = %if.then.189
  %41 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries, align 8, !dbg !1254, !tbaa !1018
  %sext492 = shl i64 %39, 32, !dbg !1255
  %42 = ashr exact i64 %sext492, 32, !dbg !1255
  br label %for.body.i.427, !dbg !1255

for.body.i.427:                                   ; preds = %for.body.i.427.preheader, %for.body.i.427
  %indvars.iv479 = phi i64 [ 0, %for.body.i.427.preheader ], [ %indvars.iv.next480, %for.body.i.427 ], !dbg !1256
  %destructor.i.422 = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %41, i64 %indvars.iv479, i32 1, !dbg !1257
  %43 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %destructor.i.422, align 8, !dbg !1257, !tbaa !1161
  %item.i.423 = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %41, i64 %indvars.iv479, i32 0, !dbg !1258
  %44 = load i8*, i8** %item.i.423, align 8, !dbg !1258, !tbaa !1164
  %call.i.424 = call i32 %43(%struct._object* null, i8* %44) #2, !dbg !1255
  %indvars.iv.next480 = add nuw nsw i64 %indvars.iv479, 1, !dbg !1253
  %cmp2.i.426 = icmp slt i64 %indvars.iv.next480, %42, !dbg !1252
  br i1 %cmp2.i.426, label %for.body.i.427, label %if.end.i.430.loopexit, !dbg !1253

if.end.i.430.loopexit:                            ; preds = %for.body.i.427
  br label %if.end.i.430, !dbg !1259

if.end.i.430:                                     ; preds = %if.end.i.430.loopexit, %if.then.189
  %tobool.i.429 = icmp ult i64 %39, 4294967296, !dbg !1259
  br i1 %tobool.i.429, label %cleanup, label %if.then.6.i.431, !dbg !1260

if.then.6.i.431:                                  ; preds = %if.end.i.430
  %45 = bitcast %struct.freelist_t* %freelist to i8**, !dbg !1261
  %46 = load i8*, i8** %45, align 8, !dbg !1261, !tbaa !1018
  call void @PyMem_Free(i8* %46) #2, !dbg !1261
  br label %cleanup, !dbg !1261

for.end.loopexit:                                 ; preds = %if.end.183.for.cond_crit_edge
  %.lcssa606 = phi i8 [ %37, %if.end.183.for.cond_crit_edge ]
  br label %for.end, !dbg !1262

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader
  %.lcssa = phi i8 [ %32, %for.cond.preheader ], [ %.lcssa606, %for.end.loopexit ]
  %cmp195 = icmp eq i8 %.lcssa, 0, !dbg !1262
  br i1 %cmp195, label %if.end.227, label %land.lhs.true.197, !dbg !1264

land.lhs.true.197:                                ; preds = %for.end
  %idxprom204 = zext i8 %.lcssa to i64, !dbg !1265
  %arrayidx205 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom204, !dbg !1265
  %47 = load i32, i32* %arrayidx205, align 4, !dbg !1265, !tbaa !1059
  %and206 = and i32 %47, 3, !dbg !1265
  %tobool207 = icmp eq i32 %and206, 0, !dbg !1265
  br i1 %tobool207, label %switch.early.test, label %if.end.227, !dbg !1267

switch.early.test:                                ; preds = %land.lhs.true.197
  switch i8 %.lcssa, label %if.then.224 [
    i8 124, label %if.end.227
    i8 59, label %if.end.227
    i8 58, label %if.end.227
    i8 40, label %if.end.227
  ], !dbg !1267

if.then.224:                                      ; preds = %switch.early.test
  %48 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1268, !tbaa !993
  %call225 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0), i8* %format) #2, !dbg !1270
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !594, metadata !980), !dbg !1102
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !608, metadata !980) #2, !dbg !1271
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !609, metadata !980) #2, !dbg !1273
  %49 = bitcast i32* %first_available to i64*, !dbg !1274
  %50 = load i64, i64* %49, align 8, !dbg !1274
  %51 = trunc i64 %50 to i32, !dbg !1274
  %cmp2.18.i.434 = icmp sgt i32 %51, 0, !dbg !1275
  br i1 %cmp2.18.i.434, label %for.body.i.444.preheader, label %if.end.i.447, !dbg !1276

for.body.i.444.preheader:                         ; preds = %if.then.224
  %52 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries, align 8, !dbg !1277, !tbaa !1018
  %sext491 = shl i64 %50, 32, !dbg !1278
  %53 = ashr exact i64 %sext491, 32, !dbg !1278
  br label %for.body.i.444, !dbg !1278

for.body.i.444:                                   ; preds = %for.body.i.444.preheader, %for.body.i.444
  %indvars.iv481 = phi i64 [ 0, %for.body.i.444.preheader ], [ %indvars.iv.next482, %for.body.i.444 ], !dbg !1279
  %destructor.i.439 = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %52, i64 %indvars.iv481, i32 1, !dbg !1280
  %54 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %destructor.i.439, align 8, !dbg !1280, !tbaa !1161
  %item.i.440 = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %52, i64 %indvars.iv481, i32 0, !dbg !1281
  %55 = load i8*, i8** %item.i.440, align 8, !dbg !1281, !tbaa !1164
  %call.i.441 = call i32 %54(%struct._object* null, i8* %55) #2, !dbg !1278
  %indvars.iv.next482 = add nuw nsw i64 %indvars.iv481, 1, !dbg !1276
  %cmp2.i.443 = icmp slt i64 %indvars.iv.next482, %53, !dbg !1275
  br i1 %cmp2.i.443, label %for.body.i.444, label %if.end.i.447.loopexit, !dbg !1276

if.end.i.447.loopexit:                            ; preds = %for.body.i.444
  br label %if.end.i.447, !dbg !1282

if.end.i.447:                                     ; preds = %if.end.i.447.loopexit, %if.then.224
  %tobool.i.446 = icmp ult i64 %50, 4294967296, !dbg !1282
  br i1 %tobool.i.446, label %cleanup, label %if.then.6.i.448, !dbg !1283

if.then.6.i.448:                                  ; preds = %if.end.i.447
  %56 = bitcast %struct.freelist_t* %freelist to i8**, !dbg !1284
  %57 = load i8*, i8** %56, align 8, !dbg !1284, !tbaa !1018
  call void @PyMem_Free(i8* %57) #2, !dbg !1284
  br label %cleanup, !dbg !1284

if.end.227:                                       ; preds = %land.lhs.true.197, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %for.end
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !594, metadata !980), !dbg !1102
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !608, metadata !980) #2, !dbg !1285
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !609, metadata !980) #2, !dbg !1287
  %58 = load i32, i32* %entries_malloced, align 4, !dbg !1288, !tbaa !1026
  %tobool.i.451 = icmp eq i32 %58, 0, !dbg !1289
  br i1 %tobool.i.451, label %cleanup, label %if.then.6.i.453, !dbg !1290

if.then.6.i.453:                                  ; preds = %if.end.227
  %59 = bitcast %struct.freelist_t* %freelist to i8**, !dbg !1291
  %60 = load i8*, i8** %59, align 8, !dbg !1291, !tbaa !1018
  call void @PyMem_Free(i8* %60) #2, !dbg !1291
  br label %cleanup, !dbg !1291

cleanup:                                          ; preds = %if.then.6.i.453, %if.end.227, %if.then.6.i.448, %if.end.i.447, %if.then.6.i.431, %if.end.i.430, %if.then.6.i.414, %if.end.i.413, %if.then.6.i.397, %if.end.i.396, %if.then.6.i.380, %if.end.i.379, %if.then.6.i.363, %if.end.i.362, %if.then.6.i.346, %if.then.109, %if.then.6.i.341, %if.end.i.340, %if.then.6.i, %if.end.i, %if.then.67, %if.then.58
  %retval.0 = phi i32 [ 0, %if.then.58 ], [ 1, %if.then.67 ], [ 0, %if.end.i ], [ 0, %if.then.6.i ], [ 0, %if.end.i.340 ], [ 0, %if.then.6.i.341 ], [ 1, %if.then.109 ], [ 1, %if.then.6.i.346 ], [ 0, %if.end.i.362 ], [ 0, %if.then.6.i.363 ], [ 0, %if.end.i.379 ], [ 0, %if.then.6.i.380 ], [ 0, %if.end.i.396 ], [ 0, %if.then.6.i.397 ], [ 0, %if.end.i.413 ], [ 0, %if.then.6.i.414 ], [ 0, %if.end.i.430 ], [ 0, %if.then.6.i.431 ], [ 0, %if.end.i.447 ], [ 0, %if.then.6.i.448 ], [ 1, %if.end.227 ], [ 1, %if.then.6.i.453 ]
  call void @llvm.lifetime.end(i64 16, i8* %3) #2, !dbg !1292
  call void @llvm.lifetime.end(i64 128, i8* %2) #2, !dbg !1292
  call void @llvm.lifetime.end(i64 128, i8* %1) #2, !dbg !1292
  call void @llvm.lifetime.end(i64 256, i8* %0) #2, !dbg !1292
  ret i32 %retval.0, !dbg !1292
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @_PyArg_Parse_SizeT(%struct._object* %args, i8* %format, ...) #0 {
entry:
  %va = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !465, metadata !980), !dbg !1293
  tail call void @llvm.dbg.value(metadata i8* %format, i64 0, metadata !466, metadata !980), !dbg !1294
  %0 = bitcast [1 x %struct.__va_list_tag]* %va to i8*, !dbg !1295
  call void @llvm.lifetime.start(i64 24, i8* %0) #2, !dbg !1295
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %va, metadata !468, metadata !980), !dbg !1296
  call void @llvm.va_start(i8* %0), !dbg !1297
  %call = call fastcc i32 @vgetargs1(%struct._object* %args, i8* %format, [1 x %struct.__va_list_tag]* nonnull %va, i32 3), !dbg !1298
  call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !467, metadata !980), !dbg !1299
  call void @llvm.va_end(i8* %0), !dbg !1300
  call void @llvm.lifetime.end(i64 24, i8* %0) #2, !dbg !1301
  ret i32 %call, !dbg !1302
}

; Function Attrs: nounwind uwtable
define i32 @PyArg_ParseTuple(%struct._object* %args, i8* %format, ...) #0 {
entry:
  %va = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !471, metadata !980), !dbg !1303
  tail call void @llvm.dbg.value(metadata i8* %format, i64 0, metadata !472, metadata !980), !dbg !1304
  %0 = bitcast [1 x %struct.__va_list_tag]* %va to i8*, !dbg !1305
  call void @llvm.lifetime.start(i64 24, i8* %0) #2, !dbg !1305
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %va, metadata !474, metadata !980), !dbg !1306
  call void @llvm.va_start(i8* %0), !dbg !1307
  %call = call fastcc i32 @vgetargs1(%struct._object* %args, i8* %format, [1 x %struct.__va_list_tag]* nonnull %va, i32 0), !dbg !1308
  call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !473, metadata !980), !dbg !1309
  call void @llvm.va_end(i8* %0), !dbg !1310
  call void @llvm.lifetime.end(i64 24, i8* %0) #2, !dbg !1311
  ret i32 %call, !dbg !1312
}

; Function Attrs: nounwind uwtable
define i32 @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* %format, ...) #0 {
entry:
  %va = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !477, metadata !980), !dbg !1313
  tail call void @llvm.dbg.value(metadata i8* %format, i64 0, metadata !478, metadata !980), !dbg !1314
  %0 = bitcast [1 x %struct.__va_list_tag]* %va to i8*, !dbg !1315
  call void @llvm.lifetime.start(i64 24, i8* %0) #2, !dbg !1315
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %va, metadata !480, metadata !980), !dbg !1316
  call void @llvm.va_start(i8* %0), !dbg !1317
  %call = call fastcc i32 @vgetargs1(%struct._object* %args, i8* %format, [1 x %struct.__va_list_tag]* nonnull %va, i32 2), !dbg !1318
  call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !479, metadata !980), !dbg !1319
  call void @llvm.va_end(i8* %0), !dbg !1320
  call void @llvm.lifetime.end(i64 24, i8* %0) #2, !dbg !1321
  ret i32 %call, !dbg !1322
}

; Function Attrs: nounwind uwtable
define i32 @PyArg_VaParse(%struct._object* %args, i8* %format, %struct.__va_list_tag* nocapture readonly %va) #0 {
entry:
  %lva = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !486, metadata !980), !dbg !1323
  tail call void @llvm.dbg.value(metadata i8* %format, i64 0, metadata !487, metadata !980), !dbg !1324
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %va, i64 0, metadata !488, metadata !980), !dbg !1325
  %0 = bitcast [1 x %struct.__va_list_tag]* %lva to i8*, !dbg !1326
  call void @llvm.lifetime.start(i64 24, i8* %0) #2, !dbg !1326
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %lva, metadata !489, metadata !980), !dbg !1327
  %1 = bitcast %struct.__va_list_tag* %va to i8*, !dbg !1328
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 24, i32 8, i1 false), !dbg !1328
  %call = call fastcc i32 @vgetargs1(%struct._object* %args, i8* %format, [1 x %struct.__va_list_tag]* nonnull %lva, i32 0), !dbg !1329
  call void @llvm.lifetime.end(i64 24, i8* %0) #2, !dbg !1330
  ret i32 %call, !dbg !1331
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @_PyArg_VaParse_SizeT(%struct._object* %args, i8* %format, %struct.__va_list_tag* nocapture readonly %va) #0 {
entry:
  %lva = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !494, metadata !980), !dbg !1332
  tail call void @llvm.dbg.value(metadata i8* %format, i64 0, metadata !495, metadata !980), !dbg !1333
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %va, i64 0, metadata !496, metadata !980), !dbg !1334
  %0 = bitcast [1 x %struct.__va_list_tag]* %lva to i8*, !dbg !1335
  call void @llvm.lifetime.start(i64 24, i8* %0) #2, !dbg !1335
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %lva, metadata !497, metadata !980), !dbg !1336
  %1 = bitcast %struct.__va_list_tag* %va to i8*, !dbg !1337
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 24, i32 8, i1 false), !dbg !1337
  %call = call fastcc i32 @vgetargs1(%struct._object* %args, i8* %format, [1 x %struct.__va_list_tag]* nonnull %lva, i32 2), !dbg !1338
  call void @llvm.lifetime.end(i64 24, i8* %0) #2, !dbg !1339
  ret i32 %call, !dbg !1340
}

; Function Attrs: nounwind uwtable
define i32 @PyArg_ParseTupleAndKeywords(%struct._object* readonly %args, %struct._object* %keywords, i8* %format, i8** readonly %kwlist, ...) #0 {
entry:
  %va = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !502, metadata !980), !dbg !1341
  tail call void @llvm.dbg.value(metadata %struct._object* %keywords, i64 0, metadata !503, metadata !980), !dbg !1342
  tail call void @llvm.dbg.value(metadata i8* %format, i64 0, metadata !504, metadata !980), !dbg !1343
  tail call void @llvm.dbg.value(metadata i8** %kwlist, i64 0, metadata !505, metadata !980), !dbg !1344
  %0 = bitcast [1 x %struct.__va_list_tag]* %va to i8*, !dbg !1345
  call void @llvm.lifetime.start(i64 24, i8* %0) #2, !dbg !1345
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %va, metadata !507, metadata !980), !dbg !1346
  %cmp = icmp eq %struct._object* %args, null, !dbg !1347
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1349

lor.lhs.false:                                    ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %args, i64 0, i32 1, !dbg !1350
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1350, !tbaa !1179
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 19, !dbg !1350
  %2 = load i64, i64* %tp_flags, align 8, !dbg !1350, !tbaa !1182
  %and = and i64 %2, 67108864, !dbg !1350
  %cmp2 = icmp eq i64 %and, 0, !dbg !1350
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3, !dbg !1352

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %cmp4 = icmp eq %struct._object* %keywords, null, !dbg !1353
  br i1 %cmp4, label %lor.lhs.false.9, label %land.lhs.true, !dbg !1354

land.lhs.true:                                    ; preds = %lor.lhs.false.3
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %keywords, i64 0, i32 1, !dbg !1355
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8, !dbg !1355, !tbaa !1179
  %tp_flags6 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 19, !dbg !1355
  %4 = load i64, i64* %tp_flags6, align 8, !dbg !1355, !tbaa !1182
  %and7 = and i64 %4, 536870912, !dbg !1355
  %cmp8 = icmp eq i64 %and7, 0, !dbg !1355
  %cmp10 = icmp eq i8* %format, null, !dbg !1356
  %or.cond = or i1 %cmp10, %cmp8, !dbg !1357
  %cmp12 = icmp eq i8** %kwlist, null, !dbg !1358
  %or.cond18 = or i1 %cmp12, %or.cond, !dbg !1357
  br i1 %or.cond18, label %if.then, label %if.end, !dbg !1357

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.3
  %cmp10.old = icmp eq i8* %format, null, !dbg !1356
  %cmp12.old = icmp eq i8** %kwlist, null, !dbg !1358
  %or.cond20 = or i1 %cmp10.old, %cmp12.old, !dbg !1359
  br i1 %or.cond20, label %if.then, label %if.end, !dbg !1359

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true, %lor.lhs.false.9, %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 1331) #2, !dbg !1360
  br label %cleanup, !dbg !1362

if.end:                                           ; preds = %lor.lhs.false.9, %land.lhs.true
  call void @llvm.va_start(i8* %0), !dbg !1363
  %call = call fastcc i32 @vgetargskeywords(%struct._object* %args, %struct._object* %keywords, i8* %format, i8** %kwlist, [1 x %struct.__va_list_tag]* nonnull %va, i32 0), !dbg !1364
  call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !506, metadata !980), !dbg !1365
  call void @llvm.va_end(i8* %0), !dbg !1366
  br label %cleanup, !dbg !1367

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  call void @llvm.lifetime.end(i64 24, i8* %0) #2, !dbg !1368
  ret i32 %retval.0, !dbg !1368
}

declare void @_PyErr_BadInternalCall(i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @vgetargskeywords(%struct._object* nocapture readonly %args, %struct._object* %keywords, i8* %format, i8** nocapture readonly %kwlist, [1 x %struct.__va_list_tag]* %p_va, i32 %flags) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %msgbuf = alloca [512 x i8], align 16
  %levels = alloca [32 x i32], align 16
  %static_entries = alloca [8 x %struct.freelistentry_t], align 16
  %freelist = alloca %struct.freelist_t, align 8
  %key = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %pos = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !937, metadata !980), !dbg !1369
  tail call void @llvm.dbg.value(metadata %struct._object* %keywords, i64 0, metadata !938, metadata !980), !dbg !1370
  tail call void @llvm.dbg.value(metadata i8* %format, i64 0, metadata !939, metadata !980), !dbg !1371
  store i8* %format, i8** %format.addr, align 8, !tbaa !993
  tail call void @llvm.dbg.value(metadata i8** %kwlist, i64 0, metadata !940, metadata !980), !dbg !1372
  tail call void @llvm.dbg.value(metadata [1 x %struct.__va_list_tag]* %p_va, i64 0, metadata !941, metadata !980), !dbg !1373
  tail call void @llvm.dbg.value(metadata i32 %flags, i64 0, metadata !942, metadata !980), !dbg !1374
  %0 = getelementptr inbounds [512 x i8], [512 x i8]* %msgbuf, i64 0, i64 0, !dbg !1375
  call void @llvm.lifetime.start(i64 512, i8* %0) #2, !dbg !1375
  tail call void @llvm.dbg.declare(metadata [512 x i8]* %msgbuf, metadata !943, metadata !980), !dbg !1376
  %1 = bitcast [32 x i32]* %levels to i8*, !dbg !1377
  call void @llvm.lifetime.start(i64 128, i8* %1) #2, !dbg !1377
  tail call void @llvm.dbg.declare(metadata [32 x i32]* %levels, metadata !944, metadata !980), !dbg !1378
  tail call void @llvm.dbg.value(metadata i32 2147483647, i64 0, metadata !949, metadata !980), !dbg !1379
  tail call void @llvm.dbg.value(metadata i32 2147483647, i64 0, metadata !950, metadata !980), !dbg !1380
  %2 = bitcast [8 x %struct.freelistentry_t]* %static_entries to i8*, !dbg !1381
  call void @llvm.lifetime.start(i64 128, i8* %2) #2, !dbg !1381
  tail call void @llvm.dbg.declare(metadata [8 x %struct.freelistentry_t]* %static_entries, metadata !956, metadata !980), !dbg !1382
  %3 = bitcast %struct.freelist_t* %freelist to i8*, !dbg !1383
  call void @llvm.lifetime.start(i64 16, i8* %3) #2, !dbg !1383
  %arraydecay = getelementptr inbounds [8 x %struct.freelistentry_t], [8 x %struct.freelistentry_t]* %static_entries, i64 0, i64 0, !dbg !1384
  %entries = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i64 0, i32 0, !dbg !1385
  store %struct.freelistentry_t* %arraydecay, %struct.freelistentry_t** %entries, align 8, !dbg !1386, !tbaa !1018
  %first_available = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i64 0, i32 1, !dbg !1387
  store i32 0, i32* %first_available, align 8, !dbg !1388, !tbaa !1023
  %entries_malloced = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i64 0, i32 2, !dbg !1389
  store i32 0, i32* %entries_malloced, align 4, !dbg !1390, !tbaa !1026
  call void @llvm.dbg.value(metadata i8** %format.addr, i64 0, metadata !939, metadata !980), !dbg !1371
  %call = call i8* @strchr(i8* %format, i32 58) #2, !dbg !1391
  call void @llvm.dbg.value(metadata i8* %call, i64 0, metadata !945, metadata !980), !dbg !1392
  %tobool = icmp eq i8* %call, null, !dbg !1393
  br i1 %tobool, label %if.else, label %if.then, !dbg !1395

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr i8, i8* %call, i64 1, !dbg !1396
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !945, metadata !980), !dbg !1392
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !947, metadata !980), !dbg !1398
  br label %if.end.5, !dbg !1399

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i8** %format.addr, i64 0, metadata !939, metadata !980), !dbg !1371
  %call1 = call i8* @strchr(i8* %format, i32 59) #2, !dbg !1400
  call void @llvm.dbg.value(metadata i8* %call1, i64 0, metadata !947, metadata !980), !dbg !1398
  %tobool2 = icmp eq i8* %call1, null, !dbg !1402
  %incdec.ptr4 = getelementptr i8, i8* %call1, i64 1, !dbg !1404
  call void @llvm.dbg.value(metadata i8* %incdec.ptr4, i64 0, metadata !947, metadata !980), !dbg !1398
  %call1.incdec.ptr4 = select i1 %tobool2, i8* null, i8* %incdec.ptr4, !dbg !1405
  br label %if.end.5, !dbg !1405

if.end.5:                                         ; preds = %if.else, %if.then
  %custom_msg.0 = phi i8* [ null, %if.then ], [ %call1.incdec.ptr4, %if.else ]
  %fname.0 = phi i8* [ %incdec.ptr, %if.then ], [ null, %if.else ]
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !952, metadata !980), !dbg !1406
  br label %for.cond, !dbg !1407

for.cond:                                         ; preds = %for.cond, %if.end.5
  %len.0 = phi i32 [ 0, %if.end.5 ], [ %inc, %for.cond ]
  %idxprom = sext i32 %len.0 to i64, !dbg !1409
  %arrayidx = getelementptr i8*, i8** %kwlist, i64 %idxprom, !dbg !1409
  %4 = load i8*, i8** %arrayidx, align 8, !dbg !1409, !tbaa !993
  %tobool6 = icmp eq i8* %4, null, !dbg !1411
  %inc = add i32 %len.0, 1, !dbg !1412
  call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !952, metadata !980), !dbg !1406
  br i1 %tobool6, label %for.end, label %for.cond, !dbg !1411

for.end:                                          ; preds = %for.cond
  %idxprom.lcssa = phi i64 [ %idxprom, %for.cond ]
  %len.0.lcssa = phi i32 [ %len.0, %for.cond ]
  %cmp = icmp sgt i32 %len.0.lcssa, 8, !dbg !1413
  br i1 %cmp, label %cond.end, label %if.end.20, !dbg !1415

cond.end:                                         ; preds = %for.end
  %mul = shl nsw i64 %idxprom.lcssa, 4, !dbg !1416
  %call11 = call i8* @PyMem_Malloc(i64 %mul) #2, !dbg !1416
  %5 = bitcast %struct.freelist_t* %freelist to i8**, !dbg !1419
  store i8* %call11, i8** %5, align 8, !dbg !1419, !tbaa !1018
  %cmp14 = icmp eq i8* %call11, null, !dbg !1420
  br i1 %cmp14, label %if.then.16, label %if.end.18, !dbg !1422

if.then.16:                                       ; preds = %cond.end
  %call17 = call %struct._object* @PyErr_NoMemory() #2, !dbg !1423
  br label %cleanup.226, !dbg !1425

if.end.18:                                        ; preds = %cond.end
  store i32 1, i32* %entries_malloced, align 4, !dbg !1426, !tbaa !1026
  br label %if.end.20, !dbg !1427

if.end.20:                                        ; preds = %if.end.18, %for.end
  %6 = getelementptr inbounds %struct._object, %struct._object* %args, i64 1, i32 0, !dbg !1428
  %7 = load i64, i64* %6, align 8, !dbg !1428, !tbaa !1196
  call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !953, metadata !980), !dbg !1429
  %cmp21 = icmp eq %struct._object* %keywords, null, !dbg !1430
  br i1 %cmp21, label %cond.end.26, label %cond.false.24, !dbg !1431

cond.false.24:                                    ; preds = %if.end.20
  %call25 = call i64 @PyDict_Size(%struct._object* %keywords) #2, !dbg !1432
  br label %cond.end.26, !dbg !1431

cond.end.26:                                      ; preds = %if.end.20, %cond.false.24
  %cond27 = phi i64 [ %call25, %cond.false.24 ], [ 0, %if.end.20 ], !dbg !1431
  call void @llvm.dbg.value(metadata i64 %cond27, i64 0, metadata !954, metadata !980), !dbg !1433
  %add = add i64 %cond27, %7, !dbg !1434
  %cmp29 = icmp sgt i64 %add, %idxprom.lcssa, !dbg !1436
  br i1 %cmp29, label %if.then.31, label %for.cond.48.preheader, !dbg !1437

for.cond.48.preheader:                            ; preds = %cond.end.26
  %cmp49.607 = icmp sgt i32 %len.0.lcssa, 0, !dbg !1438
  br i1 %cmp49.607, label %for.body.51.lr.ph, label %for.end.167, !dbg !1441

for.body.51.lr.ph:                                ; preds = %for.cond.48.preheader
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %args, i64 1, i32 1, !dbg !1442
  %8 = bitcast %struct._typeobject** %ob_item to [1 x %struct._object*]*, !dbg !1442
  %arraydecay137 = getelementptr inbounds [32 x i32], [32 x i32]* %levels, i64 0, i64 0, !dbg !1447
  br label %for.body.51, !dbg !1441

if.then.31:                                       ; preds = %cond.end.26
  %9 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1450, !tbaa !993
  %cmp32 = icmp eq i8* %fname.0, null, !dbg !1452
  %cond37 = select i1 %cmp32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* %fname.0, !dbg !1453
  %cond40 = select i1 %cmp32, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), !dbg !1454
  %cmp41 = icmp eq i32 %len.0.lcssa, 1, !dbg !1455
  %cond43 = select i1 %cmp41, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), !dbg !1456
  %call45 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %9, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.74, i64 0, i64 0), i8* %cond37, i8* %cond40, i32 %len.0.lcssa, i8* %cond43, i64 %add) #2, !dbg !1457
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !957, metadata !980), !dbg !1458
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !608, metadata !980) #2, !dbg !1459
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !609, metadata !980) #2, !dbg !1461
  %10 = bitcast i32* %first_available to i64*, !dbg !1462
  %11 = load i64, i64* %10, align 8, !dbg !1462
  %12 = trunc i64 %11 to i32, !dbg !1462
  %cmp2.18.i = icmp sgt i32 %12, 0, !dbg !1463
  br i1 %cmp2.18.i, label %for.body.i.preheader, label %if.end.i, !dbg !1464

for.body.i.preheader:                             ; preds = %if.then.31
  br label %for.body.i, !dbg !1465

for.body.i:                                       ; preds = %for.body.i.preheader, %for.body.i
  %index.019.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %for.body.i.preheader ], !dbg !1466
  %idxprom.i = sext i32 %index.019.i to i64, !dbg !1465
  %13 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries, align 8, !dbg !1467, !tbaa !1018
  %destructor.i = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %13, i64 %idxprom.i, i32 1, !dbg !1468
  %14 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %destructor.i, align 8, !dbg !1468, !tbaa !1161
  %item.i = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %13, i64 %idxprom.i, i32 0, !dbg !1469
  %15 = load i8*, i8** %item.i, align 8, !dbg !1469, !tbaa !1164
  %call.i = call i32 %14(%struct._object* null, i8* %15) #2, !dbg !1465
  %inc.i = add i32 %index.019.i, 1, !dbg !1470
  call void @llvm.dbg.value(metadata i32 %inc.i, i64 0, metadata !610, metadata !980) #2, !dbg !1471
  %16 = load i64, i64* %10, align 8, !dbg !1462
  %17 = trunc i64 %16 to i32, !dbg !1462
  %cmp2.i = icmp slt i32 %inc.i, %17, !dbg !1463
  br i1 %cmp2.i, label %for.body.i, label %if.end.i.loopexit, !dbg !1464

if.end.i.loopexit:                                ; preds = %for.body.i
  %.lcssa = phi i64 [ %16, %for.body.i ]
  br label %if.end.i, !dbg !1472

if.end.i:                                         ; preds = %if.end.i.loopexit, %if.then.31
  %.in.666.in = phi i64 [ %11, %if.then.31 ], [ %.lcssa, %if.end.i.loopexit ]
  %tobool.i = icmp ult i64 %.in.666.in, 4294967296, !dbg !1472
  br i1 %tobool.i, label %cleanup.226, label %if.then.6.i, !dbg !1473

if.then.6.i:                                      ; preds = %if.end.i
  %18 = bitcast %struct.freelist_t* %freelist to i8**, !dbg !1474
  %19 = load i8*, i8** %18, align 8, !dbg !1474, !tbaa !1018
  call void @PyMem_Free(i8* %19) #2, !dbg !1474
  br label %cleanup.226, !dbg !1474

for.body.51:                                      ; preds = %for.inc.165, %for.body.51.lr.ph
  %20 = phi i8* [ %format, %for.body.51.lr.ph ], [ %.pre, %for.inc.165 ], !dbg !1475
  %indvars.iv = phi i64 [ 0, %for.body.51.lr.ph ], [ %indvars.iv.next, %for.inc.165 ]
  %nkeywords.0613 = phi i64 [ %cond27, %for.body.51.lr.ph ], [ %nkeywords.1555, %for.inc.165 ]
  %max.0609 = phi i32 [ 2147483647, %for.body.51.lr.ph ], [ %max.1, %for.inc.165 ]
  %min.0608 = phi i32 [ 2147483647, %for.body.51.lr.ph ], [ %min.1, %for.inc.165 ]
  %arrayidx53 = getelementptr i8*, i8** %kwlist, i64 %indvars.iv, !dbg !1477
  %21 = load i8*, i8** %arrayidx53, align 8, !dbg !1477, !tbaa !993
  call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !948, metadata !980), !dbg !1478
  call void @llvm.dbg.value(metadata i8** %format.addr, i64 0, metadata !939, metadata !980), !dbg !1371
  %22 = load i8, i8* %20, align 1, !dbg !1479, !tbaa !1036
  %cmp55 = icmp eq i8 %22, 124, !dbg !1480
  br i1 %cmp55, label %if.then.57, label %if.end.69, !dbg !1481

if.then.57:                                       ; preds = %for.body.51
  %cmp58 = icmp eq i32 %min.0608, 2147483647, !dbg !1482
  br i1 %cmp58, label %if.end.62, label %if.then.60, !dbg !1485

if.then.60:                                       ; preds = %if.then.57
  %23 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1486, !tbaa !993
  call void @PyErr_SetString(%struct._object* %23, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.75, i64 0, i64 0)) #2, !dbg !1488
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !957, metadata !980), !dbg !1458
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !608, metadata !980) #2, !dbg !1489
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !609, metadata !980) #2, !dbg !1491
  %24 = bitcast i32* %first_available to i64*, !dbg !1492
  %25 = load i64, i64* %24, align 8, !dbg !1492
  %26 = trunc i64 %25 to i32, !dbg !1492
  %cmp2.18.i.319 = icmp sgt i32 %26, 0, !dbg !1493
  br i1 %cmp2.18.i.319, label %for.body.i.329.preheader, label %if.end.i.332, !dbg !1494

for.body.i.329.preheader:                         ; preds = %if.then.60
  br label %for.body.i.329, !dbg !1495

for.body.i.329:                                   ; preds = %for.body.i.329.preheader, %for.body.i.329
  %index.019.i.322 = phi i32 [ %inc.i.327, %for.body.i.329 ], [ 0, %for.body.i.329.preheader ], !dbg !1496
  %idxprom.i.323 = sext i32 %index.019.i.322 to i64, !dbg !1495
  %27 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries, align 8, !dbg !1497, !tbaa !1018
  %destructor.i.324 = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %27, i64 %idxprom.i.323, i32 1, !dbg !1498
  %28 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %destructor.i.324, align 8, !dbg !1498, !tbaa !1161
  %item.i.325 = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %27, i64 %idxprom.i.323, i32 0, !dbg !1499
  %29 = load i8*, i8** %item.i.325, align 8, !dbg !1499, !tbaa !1164
  %call.i.326 = call i32 %28(%struct._object* null, i8* %29) #2, !dbg !1495
  %inc.i.327 = add i32 %index.019.i.322, 1, !dbg !1500
  call void @llvm.dbg.value(metadata i32 %inc.i.327, i64 0, metadata !610, metadata !980) #2, !dbg !1501
  %30 = load i64, i64* %24, align 8, !dbg !1492
  %31 = trunc i64 %30 to i32, !dbg !1492
  %cmp2.i.328 = icmp slt i32 %inc.i.327, %31, !dbg !1493
  br i1 %cmp2.i.328, label %for.body.i.329, label %if.end.i.332.loopexit, !dbg !1494

if.end.i.332.loopexit:                            ; preds = %for.body.i.329
  %.lcssa805 = phi i64 [ %30, %for.body.i.329 ]
  br label %if.end.i.332, !dbg !1502

if.end.i.332:                                     ; preds = %if.end.i.332.loopexit, %if.then.60
  %.in.664.in = phi i64 [ %25, %if.then.60 ], [ %.lcssa805, %if.end.i.332.loopexit ]
  %tobool.i.331 = icmp ult i64 %.in.664.in, 4294967296, !dbg !1502
  br i1 %tobool.i.331, label %cleanup.226, label %if.then.6.i.333, !dbg !1503

if.then.6.i.333:                                  ; preds = %if.end.i.332
  %32 = bitcast %struct.freelist_t* %freelist to i8**, !dbg !1504
  %33 = load i8*, i8** %32, align 8, !dbg !1504, !tbaa !1018
  call void @PyMem_Free(i8* %33) #2, !dbg !1504
  br label %cleanup.226, !dbg !1504

if.end.62:                                        ; preds = %if.then.57
  %incdec.ptr63 = getelementptr i8, i8* %20, i64 1, !dbg !1505
  call void @llvm.dbg.value(metadata i8* %incdec.ptr63, i64 0, metadata !939, metadata !980), !dbg !1371
  store i8* %incdec.ptr63, i8** %format.addr, align 8, !dbg !1505, !tbaa !993
  %cmp64 = icmp eq i32 %max.0609, 2147483647, !dbg !1506
  br i1 %cmp64, label %if.end.62.if.end.69_crit_edge, label %if.then.66, !dbg !1508

if.end.62.if.end.69_crit_edge:                    ; preds = %if.end.62
  %34 = trunc i64 %indvars.iv to i32, !dbg !1508
  %.pre647 = load i8, i8* %incdec.ptr63, align 1, !dbg !1509, !tbaa !1036
  br label %if.end.69, !dbg !1508

if.then.66:                                       ; preds = %if.end.62
  %35 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1511, !tbaa !993
  call void @PyErr_SetString(%struct._object* %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.76, i64 0, i64 0)) #2, !dbg !1513
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !957, metadata !980), !dbg !1458
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !608, metadata !980) #2, !dbg !1514
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !609, metadata !980) #2, !dbg !1516
  %36 = bitcast i32* %first_available to i64*, !dbg !1517
  %37 = load i64, i64* %36, align 8, !dbg !1517
  %38 = trunc i64 %37 to i32, !dbg !1517
  %cmp2.18.i.336 = icmp sgt i32 %38, 0, !dbg !1518
  br i1 %cmp2.18.i.336, label %for.body.i.346.preheader, label %if.end.i.349, !dbg !1519

for.body.i.346.preheader:                         ; preds = %if.then.66
  br label %for.body.i.346, !dbg !1520

for.body.i.346:                                   ; preds = %for.body.i.346.preheader, %for.body.i.346
  %index.019.i.339 = phi i32 [ %inc.i.344, %for.body.i.346 ], [ 0, %for.body.i.346.preheader ], !dbg !1521
  %idxprom.i.340 = sext i32 %index.019.i.339 to i64, !dbg !1520
  %39 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries, align 8, !dbg !1522, !tbaa !1018
  %destructor.i.341 = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %39, i64 %idxprom.i.340, i32 1, !dbg !1523
  %40 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %destructor.i.341, align 8, !dbg !1523, !tbaa !1161
  %item.i.342 = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %39, i64 %idxprom.i.340, i32 0, !dbg !1524
  %41 = load i8*, i8** %item.i.342, align 8, !dbg !1524, !tbaa !1164
  %call.i.343 = call i32 %40(%struct._object* null, i8* %41) #2, !dbg !1520
  %inc.i.344 = add i32 %index.019.i.339, 1, !dbg !1525
  call void @llvm.dbg.value(metadata i32 %inc.i.344, i64 0, metadata !610, metadata !980) #2, !dbg !1526
  %42 = load i64, i64* %36, align 8, !dbg !1517
  %43 = trunc i64 %42 to i32, !dbg !1517
  %cmp2.i.345 = icmp slt i32 %inc.i.344, %43, !dbg !1518
  br i1 %cmp2.i.345, label %for.body.i.346, label %if.end.i.349.loopexit, !dbg !1519

if.end.i.349.loopexit:                            ; preds = %for.body.i.346
  %.lcssa804 = phi i64 [ %42, %for.body.i.346 ]
  br label %if.end.i.349, !dbg !1527

if.end.i.349:                                     ; preds = %if.end.i.349.loopexit, %if.then.66
  %.in.665.in = phi i64 [ %37, %if.then.66 ], [ %.lcssa804, %if.end.i.349.loopexit ]
  %tobool.i.348 = icmp ult i64 %.in.665.in, 4294967296, !dbg !1527
  br i1 %tobool.i.348, label %cleanup.226, label %if.then.6.i.350, !dbg !1528

if.then.6.i.350:                                  ; preds = %if.end.i.349
  %44 = bitcast %struct.freelist_t* %freelist to i8**, !dbg !1529
  %45 = load i8*, i8** %44, align 8, !dbg !1529, !tbaa !1018
  call void @PyMem_Free(i8* %45) #2, !dbg !1529
  br label %cleanup.226, !dbg !1529

if.end.69:                                        ; preds = %if.end.62.if.end.69_crit_edge, %for.body.51
  %46 = phi i8 [ %.pre647, %if.end.62.if.end.69_crit_edge ], [ %22, %for.body.51 ], !dbg !1509
  %47 = phi i8* [ %incdec.ptr63, %if.end.62.if.end.69_crit_edge ], [ %20, %for.body.51 ], !dbg !1530
  %min.1 = phi i32 [ %34, %if.end.62.if.end.69_crit_edge ], [ %min.0608, %for.body.51 ]
  call void @llvm.dbg.value(metadata i8** %format.addr, i64 0, metadata !939, metadata !980), !dbg !1371
  %cmp71 = icmp eq i8 %46, 36, !dbg !1531
  br i1 %cmp71, label %if.then.73, label %if.end.69.if.end.90_crit_edge, !dbg !1532

if.end.69.if.end.90_crit_edge:                    ; preds = %if.end.69
  %.pre653 = trunc i64 %indvars.iv to i32, !dbg !1533
  br label %if.end.90, !dbg !1532

if.then.73:                                       ; preds = %if.end.69
  %cmp74 = icmp eq i32 %max.0609, 2147483647, !dbg !1535
  br i1 %cmp74, label %if.end.78, label %if.then.76, !dbg !1538

if.then.76:                                       ; preds = %if.then.73
  %48 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1539, !tbaa !993
  call void @PyErr_SetString(%struct._object* %48, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.77, i64 0, i64 0)) #2, !dbg !1541
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !957, metadata !980), !dbg !1458
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !608, metadata !980) #2, !dbg !1542
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !609, metadata !980) #2, !dbg !1544
  %49 = bitcast i32* %first_available to i64*, !dbg !1545
  %50 = load i64, i64* %49, align 8, !dbg !1545
  %51 = trunc i64 %50 to i32, !dbg !1545
  %cmp2.18.i.353 = icmp sgt i32 %51, 0, !dbg !1546
  br i1 %cmp2.18.i.353, label %for.body.i.363.preheader, label %if.end.i.366, !dbg !1547

for.body.i.363.preheader:                         ; preds = %if.then.76
  br label %for.body.i.363, !dbg !1548

for.body.i.363:                                   ; preds = %for.body.i.363.preheader, %for.body.i.363
  %index.019.i.356 = phi i32 [ %inc.i.361, %for.body.i.363 ], [ 0, %for.body.i.363.preheader ], !dbg !1549
  %idxprom.i.357 = sext i32 %index.019.i.356 to i64, !dbg !1548
  %52 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries, align 8, !dbg !1550, !tbaa !1018
  %destructor.i.358 = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %52, i64 %idxprom.i.357, i32 1, !dbg !1551
  %53 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %destructor.i.358, align 8, !dbg !1551, !tbaa !1161
  %item.i.359 = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %52, i64 %idxprom.i.357, i32 0, !dbg !1552
  %54 = load i8*, i8** %item.i.359, align 8, !dbg !1552, !tbaa !1164
  %call.i.360 = call i32 %53(%struct._object* null, i8* %54) #2, !dbg !1548
  %inc.i.361 = add i32 %index.019.i.356, 1, !dbg !1553
  call void @llvm.dbg.value(metadata i32 %inc.i.361, i64 0, metadata !610, metadata !980) #2, !dbg !1554
  %55 = load i64, i64* %49, align 8, !dbg !1545
  %56 = trunc i64 %55 to i32, !dbg !1545
  %cmp2.i.362 = icmp slt i32 %inc.i.361, %56, !dbg !1546
  br i1 %cmp2.i.362, label %for.body.i.363, label %if.end.i.366.loopexit, !dbg !1547

if.end.i.366.loopexit:                            ; preds = %for.body.i.363
  %.lcssa803 = phi i64 [ %55, %for.body.i.363 ]
  br label %if.end.i.366, !dbg !1555

if.end.i.366:                                     ; preds = %if.end.i.366.loopexit, %if.then.76
  %.in.662.in = phi i64 [ %50, %if.then.76 ], [ %.lcssa803, %if.end.i.366.loopexit ]
  %tobool.i.365 = icmp ult i64 %.in.662.in, 4294967296, !dbg !1555
  br i1 %tobool.i.365, label %cleanup.226, label %if.then.6.i.367, !dbg !1556

if.then.6.i.367:                                  ; preds = %if.end.i.366
  %57 = bitcast %struct.freelist_t* %freelist to i8**, !dbg !1557
  %58 = load i8*, i8** %57, align 8, !dbg !1557, !tbaa !1018
  call void @PyMem_Free(i8* %58) #2, !dbg !1557
  br label %cleanup.226, !dbg !1557

if.end.78:                                        ; preds = %if.then.73
  %incdec.ptr79 = getelementptr i8, i8* %47, i64 1, !dbg !1558
  call void @llvm.dbg.value(metadata i8* %incdec.ptr79, i64 0, metadata !939, metadata !980), !dbg !1371
  store i8* %incdec.ptr79, i8** %format.addr, align 8, !dbg !1558, !tbaa !993
  %cmp81 = icmp slt i64 %indvars.iv, %7, !dbg !1559
  %59 = trunc i64 %indvars.iv to i32, !dbg !1561
  br i1 %cmp81, label %if.then.83, label %if.end.78.if.end.90_crit_edge, !dbg !1561

if.end.78.if.end.90_crit_edge:                    ; preds = %if.end.78
  %.pre648 = load i8, i8* %incdec.ptr79, align 1, !dbg !1533, !tbaa !1036
  br label %if.end.90, !dbg !1561

if.then.83:                                       ; preds = %if.end.78
  %.lcssa827 = phi i32 [ %59, %if.end.78 ]
  %min.1.lcssa818 = phi i32 [ %min.1, %if.end.78 ]
  %60 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1562, !tbaa !993
  %cmp84 = icmp ne i32 %min.1.lcssa818, 2147483647, !dbg !1564
  %cond86 = select i1 %cmp84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), !dbg !1565
  %call87 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %60, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.78, i64 0, i64 0), i8* %cond86, i32 %.lcssa827, i64 %7) #2, !dbg !1566
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !957, metadata !980), !dbg !1458
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !608, metadata !980) #2, !dbg !1567
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !609, metadata !980) #2, !dbg !1569
  %61 = bitcast i32* %first_available to i64*, !dbg !1570
  %62 = load i64, i64* %61, align 8, !dbg !1570
  %63 = trunc i64 %62 to i32, !dbg !1570
  %cmp2.18.i.370 = icmp sgt i32 %63, 0, !dbg !1571
  br i1 %cmp2.18.i.370, label %for.body.i.380.preheader, label %if.end.i.383, !dbg !1572

for.body.i.380.preheader:                         ; preds = %if.then.83
  br label %for.body.i.380, !dbg !1573

for.body.i.380:                                   ; preds = %for.body.i.380.preheader, %for.body.i.380
  %index.019.i.373 = phi i32 [ %inc.i.378, %for.body.i.380 ], [ 0, %for.body.i.380.preheader ], !dbg !1574
  %idxprom.i.374 = sext i32 %index.019.i.373 to i64, !dbg !1573
  %64 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries, align 8, !dbg !1575, !tbaa !1018
  %destructor.i.375 = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %64, i64 %idxprom.i.374, i32 1, !dbg !1576
  %65 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %destructor.i.375, align 8, !dbg !1576, !tbaa !1161
  %item.i.376 = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %64, i64 %idxprom.i.374, i32 0, !dbg !1577
  %66 = load i8*, i8** %item.i.376, align 8, !dbg !1577, !tbaa !1164
  %call.i.377 = call i32 %65(%struct._object* null, i8* %66) #2, !dbg !1573
  %inc.i.378 = add i32 %index.019.i.373, 1, !dbg !1578
  call void @llvm.dbg.value(metadata i32 %inc.i.378, i64 0, metadata !610, metadata !980) #2, !dbg !1579
  %67 = load i64, i64* %61, align 8, !dbg !1570
  %68 = trunc i64 %67 to i32, !dbg !1570
  %cmp2.i.379 = icmp slt i32 %inc.i.378, %68, !dbg !1571
  br i1 %cmp2.i.379, label %for.body.i.380, label %if.end.i.383.loopexit, !dbg !1572

if.end.i.383.loopexit:                            ; preds = %for.body.i.380
  %.lcssa793 = phi i64 [ %67, %for.body.i.380 ]
  br label %if.end.i.383, !dbg !1580

if.end.i.383:                                     ; preds = %if.end.i.383.loopexit, %if.then.83
  %.in.663.in = phi i64 [ %62, %if.then.83 ], [ %.lcssa793, %if.end.i.383.loopexit ]
  %tobool.i.382 = icmp ult i64 %.in.663.in, 4294967296, !dbg !1580
  br i1 %tobool.i.382, label %cleanup.226, label %if.then.6.i.384, !dbg !1581

if.then.6.i.384:                                  ; preds = %if.end.i.383
  %69 = bitcast %struct.freelist_t* %freelist to i8**, !dbg !1582
  %70 = load i8*, i8** %69, align 8, !dbg !1582, !tbaa !1018
  call void @PyMem_Free(i8* %70) #2, !dbg !1582
  br label %cleanup.226, !dbg !1582

if.end.90:                                        ; preds = %if.end.69.if.end.90_crit_edge, %if.end.78.if.end.90_crit_edge
  %.pre-phi = phi i32 [ %.pre653, %if.end.69.if.end.90_crit_edge ], [ %59, %if.end.78.if.end.90_crit_edge ], !dbg !1533
  %71 = phi i8 [ %46, %if.end.69.if.end.90_crit_edge ], [ %.pre648, %if.end.78.if.end.90_crit_edge ], !dbg !1533
  %max.1 = phi i32 [ %max.0609, %if.end.69.if.end.90_crit_edge ], [ %59, %if.end.78.if.end.90_crit_edge ]
  call void @llvm.dbg.value(metadata i8** %format.addr, i64 0, metadata !939, metadata !980), !dbg !1371
  switch i8 %71, label %if.end.104 [
    i8 0, label %if.then.101
    i8 59, label %if.then.101
    i8 58, label %if.then.101
  ], !dbg !1533

if.then.101:                                      ; preds = %if.end.90, %if.end.90, %if.end.90
  %.pre-phi.lcssa = phi i32 [ %.pre-phi, %if.end.90 ], [ %.pre-phi, %if.end.90 ], [ %.pre-phi, %if.end.90 ]
  %72 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1583, !tbaa !993
  %call102 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %72, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.79, i64 0, i64 0), i32 %len.0.lcssa, i32 %.pre-phi.lcssa) #2, !dbg !1585
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !957, metadata !980), !dbg !1458
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !608, metadata !980) #2, !dbg !1586
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !609, metadata !980) #2, !dbg !1588
  %73 = bitcast i32* %first_available to i64*, !dbg !1589
  %74 = load i64, i64* %73, align 8, !dbg !1589
  %75 = trunc i64 %74 to i32, !dbg !1589
  %cmp2.18.i.387 = icmp sgt i32 %75, 0, !dbg !1590
  br i1 %cmp2.18.i.387, label %for.body.i.397.preheader, label %if.end.i.400, !dbg !1591

for.body.i.397.preheader:                         ; preds = %if.then.101
  br label %for.body.i.397, !dbg !1592

for.body.i.397:                                   ; preds = %for.body.i.397.preheader, %for.body.i.397
  %index.019.i.390 = phi i32 [ %inc.i.395, %for.body.i.397 ], [ 0, %for.body.i.397.preheader ], !dbg !1593
  %idxprom.i.391 = sext i32 %index.019.i.390 to i64, !dbg !1592
  %76 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries, align 8, !dbg !1594, !tbaa !1018
  %destructor.i.392 = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %76, i64 %idxprom.i.391, i32 1, !dbg !1595
  %77 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %destructor.i.392, align 8, !dbg !1595, !tbaa !1161
  %item.i.393 = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %76, i64 %idxprom.i.391, i32 0, !dbg !1596
  %78 = load i8*, i8** %item.i.393, align 8, !dbg !1596, !tbaa !1164
  %call.i.394 = call i32 %77(%struct._object* null, i8* %78) #2, !dbg !1592
  %inc.i.395 = add i32 %index.019.i.390, 1, !dbg !1597
  call void @llvm.dbg.value(metadata i32 %inc.i.395, i64 0, metadata !610, metadata !980) #2, !dbg !1598
  %79 = load i64, i64* %73, align 8, !dbg !1589
  %80 = trunc i64 %79 to i32, !dbg !1589
  %cmp2.i.396 = icmp slt i32 %inc.i.395, %80, !dbg !1590
  br i1 %cmp2.i.396, label %for.body.i.397, label %if.end.i.400.loopexit, !dbg !1591

if.end.i.400.loopexit:                            ; preds = %for.body.i.397
  %.lcssa802 = phi i64 [ %79, %for.body.i.397 ]
  br label %if.end.i.400, !dbg !1599

if.end.i.400:                                     ; preds = %if.end.i.400.loopexit, %if.then.101
  %.in.656.in = phi i64 [ %74, %if.then.101 ], [ %.lcssa802, %if.end.i.400.loopexit ]
  %tobool.i.399 = icmp ult i64 %.in.656.in, 4294967296, !dbg !1599
  br i1 %tobool.i.399, label %cleanup.226, label %if.then.6.i.401, !dbg !1600

if.then.6.i.401:                                  ; preds = %if.end.i.400
  %81 = bitcast %struct.freelist_t* %freelist to i8**, !dbg !1601
  %82 = load i8*, i8** %81, align 8, !dbg !1601, !tbaa !1018
  call void @PyMem_Free(i8* %82) #2, !dbg !1601
  br label %cleanup.226, !dbg !1601

if.end.104:                                       ; preds = %if.end.90
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !955, metadata !980), !dbg !1602
  %tobool105 = icmp eq i64 %nkeywords.0613, 0, !dbg !1603
  br i1 %tobool105, label %if.else.125, label %if.end.108, !dbg !1605

if.end.108:                                       ; preds = %if.end.104
  %call107 = call %struct._object* @PyDict_GetItemString(%struct._object* %keywords, i8* %21) #2, !dbg !1606
  call void @llvm.dbg.value(metadata %struct._object* %call107, i64 0, metadata !955, metadata !980), !dbg !1602
  %tobool109 = icmp eq %struct._object* %call107, null, !dbg !1608
  br i1 %tobool109, label %land.lhs.true, label %if.then.110, !dbg !1609

if.then.110:                                      ; preds = %if.end.108
  %dec = add i64 %nkeywords.0613, -1, !dbg !1610
  call void @llvm.dbg.value(metadata i64 %dec, i64 0, metadata !954, metadata !980), !dbg !1433
  %cmp112 = icmp slt i64 %indvars.iv, %7, !dbg !1612
  br i1 %cmp112, label %if.then.114, label %if.then.136, !dbg !1614

if.then.114:                                      ; preds = %if.then.110
  %.pre-phi.lcssa828 = phi i32 [ %.pre-phi, %if.then.110 ]
  %.lcssa811 = phi i8* [ %21, %if.then.110 ]
  %83 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1615, !tbaa !993
  %add115 = add i32 %.pre-phi.lcssa828, 1, !dbg !1617
  %call116 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %83, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.80, i64 0, i64 0), i8* %.lcssa811, i32 %add115) #2, !dbg !1618
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !957, metadata !980), !dbg !1458
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !608, metadata !980) #2, !dbg !1619
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !609, metadata !980) #2, !dbg !1621
  %84 = bitcast i32* %first_available to i64*, !dbg !1622
  %85 = load i64, i64* %84, align 8, !dbg !1622
  %86 = trunc i64 %85 to i32, !dbg !1622
  %cmp2.18.i.404 = icmp sgt i32 %86, 0, !dbg !1623
  br i1 %cmp2.18.i.404, label %for.body.i.414.preheader, label %if.end.i.417, !dbg !1624

for.body.i.414.preheader:                         ; preds = %if.then.114
  br label %for.body.i.414, !dbg !1625

for.body.i.414:                                   ; preds = %for.body.i.414.preheader, %for.body.i.414
  %index.019.i.407 = phi i32 [ %inc.i.412, %for.body.i.414 ], [ 0, %for.body.i.414.preheader ], !dbg !1626
  %idxprom.i.408 = sext i32 %index.019.i.407 to i64, !dbg !1625
  %87 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries, align 8, !dbg !1627, !tbaa !1018
  %destructor.i.409 = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %87, i64 %idxprom.i.408, i32 1, !dbg !1628
  %88 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %destructor.i.409, align 8, !dbg !1628, !tbaa !1161
  %item.i.410 = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %87, i64 %idxprom.i.408, i32 0, !dbg !1629
  %89 = load i8*, i8** %item.i.410, align 8, !dbg !1629, !tbaa !1164
  %call.i.411 = call i32 %88(%struct._object* null, i8* %89) #2, !dbg !1625
  %inc.i.412 = add i32 %index.019.i.407, 1, !dbg !1630
  call void @llvm.dbg.value(metadata i32 %inc.i.412, i64 0, metadata !610, metadata !980) #2, !dbg !1631
  %90 = load i64, i64* %84, align 8, !dbg !1622
  %91 = trunc i64 %90 to i32, !dbg !1622
  %cmp2.i.413 = icmp slt i32 %inc.i.412, %91, !dbg !1623
  br i1 %cmp2.i.413, label %for.body.i.414, label %if.end.i.417.loopexit, !dbg !1624

if.end.i.417.loopexit:                            ; preds = %for.body.i.414
  %.lcssa801 = phi i64 [ %90, %for.body.i.414 ]
  br label %if.end.i.417, !dbg !1632

if.end.i.417:                                     ; preds = %if.end.i.417.loopexit, %if.then.114
  %.in.658.in = phi i64 [ %85, %if.then.114 ], [ %.lcssa801, %if.end.i.417.loopexit ]
  %tobool.i.416 = icmp ult i64 %.in.658.in, 4294967296, !dbg !1632
  br i1 %tobool.i.416, label %cleanup.226, label %if.then.6.i.418, !dbg !1633

if.then.6.i.418:                                  ; preds = %if.end.i.417
  %92 = bitcast %struct.freelist_t* %freelist to i8**, !dbg !1634
  %93 = load i8*, i8** %92, align 8, !dbg !1634, !tbaa !1018
  call void @PyMem_Free(i8* %93) #2, !dbg !1634
  br label %cleanup.226, !dbg !1634

land.lhs.true:                                    ; preds = %if.end.108
  %call121 = call %struct._object* @PyErr_Occurred() #2, !dbg !1635
  %tobool122 = icmp eq %struct._object* %call121, null, !dbg !1635
  br i1 %tobool122, label %if.else.125, label %if.then.123, !dbg !1637

if.then.123:                                      ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !957, metadata !980), !dbg !1458
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !608, metadata !980) #2, !dbg !1638
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !609, metadata !980) #2, !dbg !1640
  %94 = bitcast i32* %first_available to i64*, !dbg !1641
  %95 = load i64, i64* %94, align 8, !dbg !1641
  %96 = trunc i64 %95 to i32, !dbg !1641
  %cmp2.18.i.421 = icmp sgt i32 %96, 0, !dbg !1642
  br i1 %cmp2.18.i.421, label %for.body.i.431.preheader, label %if.end.i.434, !dbg !1643

for.body.i.431.preheader:                         ; preds = %if.then.123
  br label %for.body.i.431, !dbg !1644

for.body.i.431:                                   ; preds = %for.body.i.431.preheader, %for.body.i.431
  %index.019.i.424 = phi i32 [ %inc.i.429, %for.body.i.431 ], [ 0, %for.body.i.431.preheader ], !dbg !1645
  %idxprom.i.425 = sext i32 %index.019.i.424 to i64, !dbg !1644
  %97 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries, align 8, !dbg !1646, !tbaa !1018
  %destructor.i.426 = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %97, i64 %idxprom.i.425, i32 1, !dbg !1647
  %98 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %destructor.i.426, align 8, !dbg !1647, !tbaa !1161
  %item.i.427 = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %97, i64 %idxprom.i.425, i32 0, !dbg !1648
  %99 = load i8*, i8** %item.i.427, align 8, !dbg !1648, !tbaa !1164
  %call.i.428 = call i32 %98(%struct._object* null, i8* %99) #2, !dbg !1644
  %inc.i.429 = add i32 %index.019.i.424, 1, !dbg !1649
  call void @llvm.dbg.value(metadata i32 %inc.i.429, i64 0, metadata !610, metadata !980) #2, !dbg !1650
  %100 = load i64, i64* %94, align 8, !dbg !1641
  %101 = trunc i64 %100 to i32, !dbg !1641
  %cmp2.i.430 = icmp slt i32 %inc.i.429, %101, !dbg !1642
  br i1 %cmp2.i.430, label %for.body.i.431, label %if.end.i.434.loopexit, !dbg !1643

if.end.i.434.loopexit:                            ; preds = %for.body.i.431
  %.lcssa800 = phi i64 [ %100, %for.body.i.431 ]
  br label %if.end.i.434, !dbg !1651

if.end.i.434:                                     ; preds = %if.end.i.434.loopexit, %if.then.123
  %.in.659.in = phi i64 [ %95, %if.then.123 ], [ %.lcssa800, %if.end.i.434.loopexit ]
  %tobool.i.433 = icmp ult i64 %.in.659.in, 4294967296, !dbg !1651
  br i1 %tobool.i.433, label %cleanup.226, label %if.then.6.i.435, !dbg !1652

if.then.6.i.435:                                  ; preds = %if.end.i.434
  %102 = bitcast %struct.freelist_t* %freelist to i8**, !dbg !1653
  %103 = load i8*, i8** %102, align 8, !dbg !1653, !tbaa !1018
  call void @PyMem_Free(i8* %103) #2, !dbg !1653
  br label %cleanup.226, !dbg !1653

if.else.125:                                      ; preds = %if.end.104, %land.lhs.true
  %cmp127 = icmp slt i64 %indvars.iv, %7, !dbg !1654
  br i1 %cmp127, label %if.end.134, label %if.end.147, !dbg !1655

if.end.134:                                       ; preds = %if.else.125
  %arrayidx131 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %8, i64 0, i64 %indvars.iv, !dbg !1442
  %104 = load %struct._object*, %struct._object** %arrayidx131, align 8, !dbg !1442, !tbaa !993
  call void @llvm.dbg.value(metadata %struct._object* %104, i64 0, metadata !955, metadata !980), !dbg !1602
  %tobool135 = icmp eq %struct._object* %104, null, !dbg !1656
  br i1 %tobool135, label %if.end.147, label %if.then.136, !dbg !1657

if.then.136:                                      ; preds = %if.then.110, %if.end.134
  %current_arg.1559 = phi %struct._object* [ %104, %if.end.134 ], [ %call107, %if.then.110 ]
  %nkeywords.1558 = phi i64 [ %nkeywords.0613, %if.end.134 ], [ %dec, %if.then.110 ]
  call void @llvm.dbg.value(metadata i8** %format.addr, i64 0, metadata !939, metadata !980), !dbg !1371
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !957, metadata !980), !dbg !1458
  %call139 = call fastcc i8* @convertitem(%struct._object* %current_arg.1559, i8** nonnull %format.addr, [1 x %struct.__va_list_tag]* %p_va, i32 %flags, i32* %arraydecay137, i8* %0, i64 512, %struct.freelist_t* nonnull %freelist), !dbg !1658
  call void @llvm.dbg.value(metadata i8* %call139, i64 0, metadata !946, metadata !980), !dbg !1659
  %tobool140 = icmp eq i8* %call139, null, !dbg !1660
  br i1 %tobool140, label %for.inc.165, label %if.then.141, !dbg !1662

if.then.141:                                      ; preds = %if.then.136
  %call139.lcssa = phi i8* [ %call139, %if.then.136 ]
  %.pre-phi.lcssa830 = phi i32 [ %.pre-phi, %if.then.136 ]
  %add142 = add i32 %.pre-phi.lcssa830, 1, !dbg !1663
  %conv143 = sext i32 %add142 to i64, !dbg !1665
  call fastcc void @seterror(i64 %conv143, i8* %call139.lcssa, i32* %arraydecay137, i8* %fname.0, i8* %custom_msg.0), !dbg !1666
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !957, metadata !980), !dbg !1458
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !608, metadata !980) #2, !dbg !1667
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !609, metadata !980) #2, !dbg !1669
  %105 = bitcast i32* %first_available to i64*, !dbg !1670
  %106 = load i64, i64* %105, align 8, !dbg !1670
  %107 = trunc i64 %106 to i32, !dbg !1670
  %cmp2.18.i.438 = icmp sgt i32 %107, 0, !dbg !1671
  br i1 %cmp2.18.i.438, label %for.body.i.448.preheader, label %if.end.i.451, !dbg !1672

for.body.i.448.preheader:                         ; preds = %if.then.141
  br label %for.body.i.448, !dbg !1673

for.body.i.448:                                   ; preds = %for.body.i.448.preheader, %for.body.i.448
  %index.019.i.441 = phi i32 [ %inc.i.446, %for.body.i.448 ], [ 0, %for.body.i.448.preheader ], !dbg !1674
  %idxprom.i.442 = sext i32 %index.019.i.441 to i64, !dbg !1673
  %108 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries, align 8, !dbg !1675, !tbaa !1018
  %destructor.i.443 = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %108, i64 %idxprom.i.442, i32 1, !dbg !1676
  %109 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %destructor.i.443, align 8, !dbg !1676, !tbaa !1161
  %item.i.444 = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %108, i64 %idxprom.i.442, i32 0, !dbg !1677
  %110 = load i8*, i8** %item.i.444, align 8, !dbg !1677, !tbaa !1164
  %call.i.445 = call i32 %109(%struct._object* null, i8* %110) #2, !dbg !1673
  %inc.i.446 = add i32 %index.019.i.441, 1, !dbg !1678
  call void @llvm.dbg.value(metadata i32 %inc.i.446, i64 0, metadata !610, metadata !980) #2, !dbg !1679
  %111 = load i64, i64* %105, align 8, !dbg !1670
  %112 = trunc i64 %111 to i32, !dbg !1670
  %cmp2.i.447 = icmp slt i32 %inc.i.446, %112, !dbg !1671
  br i1 %cmp2.i.447, label %for.body.i.448, label %if.end.i.451.loopexit, !dbg !1672

if.end.i.451.loopexit:                            ; preds = %for.body.i.448
  %.lcssa799 = phi i64 [ %111, %for.body.i.448 ]
  br label %if.end.i.451, !dbg !1680

if.end.i.451:                                     ; preds = %if.end.i.451.loopexit, %if.then.141
  %.in.657.in = phi i64 [ %106, %if.then.141 ], [ %.lcssa799, %if.end.i.451.loopexit ]
  %tobool.i.450 = icmp ult i64 %.in.657.in, 4294967296, !dbg !1680
  br i1 %tobool.i.450, label %cleanup.226, label %if.then.6.i.452, !dbg !1681

if.then.6.i.452:                                  ; preds = %if.end.i.451
  %113 = bitcast %struct.freelist_t* %freelist to i8**, !dbg !1682
  %114 = load i8*, i8** %113, align 8, !dbg !1682, !tbaa !1018
  call void @PyMem_Free(i8* %114) #2, !dbg !1682
  br label %cleanup.226, !dbg !1682

if.end.147:                                       ; preds = %if.else.125, %if.end.134
  %115 = sext i32 %min.1 to i64, !dbg !1683
  %cmp148 = icmp slt i64 %indvars.iv, %115, !dbg !1683
  br i1 %cmp148, label %if.then.150, label %if.end.154, !dbg !1685

if.then.150:                                      ; preds = %if.end.147
  %.pre-phi.lcssa831 = phi i32 [ %.pre-phi, %if.end.147 ]
  %.lcssa814 = phi i8* [ %21, %if.end.147 ]
  %116 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1686, !tbaa !993
  %add151 = add i32 %.pre-phi.lcssa831, 1, !dbg !1688
  %call152 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %116, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.81, i64 0, i64 0), i8* %.lcssa814, i32 %add151) #2, !dbg !1689
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !957, metadata !980), !dbg !1458
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !608, metadata !980) #2, !dbg !1690
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !609, metadata !980) #2, !dbg !1692
  %117 = bitcast i32* %first_available to i64*, !dbg !1693
  %118 = load i64, i64* %117, align 8, !dbg !1693
  %119 = trunc i64 %118 to i32, !dbg !1693
  %cmp2.18.i.455 = icmp sgt i32 %119, 0, !dbg !1694
  br i1 %cmp2.18.i.455, label %for.body.i.465.preheader, label %if.end.i.468, !dbg !1695

for.body.i.465.preheader:                         ; preds = %if.then.150
  br label %for.body.i.465, !dbg !1696

for.body.i.465:                                   ; preds = %for.body.i.465.preheader, %for.body.i.465
  %index.019.i.458 = phi i32 [ %inc.i.463, %for.body.i.465 ], [ 0, %for.body.i.465.preheader ], !dbg !1697
  %idxprom.i.459 = sext i32 %index.019.i.458 to i64, !dbg !1696
  %120 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries, align 8, !dbg !1698, !tbaa !1018
  %destructor.i.460 = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %120, i64 %idxprom.i.459, i32 1, !dbg !1699
  %121 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %destructor.i.460, align 8, !dbg !1699, !tbaa !1161
  %item.i.461 = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %120, i64 %idxprom.i.459, i32 0, !dbg !1700
  %122 = load i8*, i8** %item.i.461, align 8, !dbg !1700, !tbaa !1164
  %call.i.462 = call i32 %121(%struct._object* null, i8* %122) #2, !dbg !1696
  %inc.i.463 = add i32 %index.019.i.458, 1, !dbg !1701
  call void @llvm.dbg.value(metadata i32 %inc.i.463, i64 0, metadata !610, metadata !980) #2, !dbg !1702
  %123 = load i64, i64* %117, align 8, !dbg !1693
  %124 = trunc i64 %123 to i32, !dbg !1693
  %cmp2.i.464 = icmp slt i32 %inc.i.463, %124, !dbg !1694
  br i1 %cmp2.i.464, label %for.body.i.465, label %if.end.i.468.loopexit, !dbg !1695

if.end.i.468.loopexit:                            ; preds = %for.body.i.465
  %.lcssa794 = phi i64 [ %123, %for.body.i.465 ]
  br label %if.end.i.468, !dbg !1703

if.end.i.468:                                     ; preds = %if.end.i.468.loopexit, %if.then.150
  %.in.661.in = phi i64 [ %118, %if.then.150 ], [ %.lcssa794, %if.end.i.468.loopexit ]
  %tobool.i.467 = icmp ult i64 %.in.661.in, 4294967296, !dbg !1703
  br i1 %tobool.i.467, label %cleanup.226, label %if.then.6.i.469, !dbg !1704

if.then.6.i.469:                                  ; preds = %if.end.i.468
  %125 = bitcast %struct.freelist_t* %freelist to i8**, !dbg !1705
  %126 = load i8*, i8** %125, align 8, !dbg !1705, !tbaa !1018
  call void @PyMem_Free(i8* %126) #2, !dbg !1705
  br label %cleanup.226, !dbg !1705

if.end.154:                                       ; preds = %if.end.147
  br i1 %tobool105, label %if.then.156, label %if.end.158, !dbg !1706

if.then.156:                                      ; preds = %if.end.154
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !957, metadata !980), !dbg !1458
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !608, metadata !980) #2, !dbg !1707
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !609, metadata !980) #2, !dbg !1710
  %127 = load i32, i32* %entries_malloced, align 4, !dbg !1711, !tbaa !1026
  %tobool.i.472 = icmp eq i32 %127, 0, !dbg !1712
  br i1 %tobool.i.472, label %cleanup.226, label %if.then.6.i.474, !dbg !1713

if.then.6.i.474:                                  ; preds = %if.then.156
  %128 = bitcast %struct.freelist_t* %freelist to i8**, !dbg !1714
  %129 = load i8*, i8** %128, align 8, !dbg !1714, !tbaa !1018
  call void @PyMem_Free(i8* %129) #2, !dbg !1714
  br label %cleanup.226, !dbg !1714

if.end.158:                                       ; preds = %if.end.154
  call void @llvm.dbg.value(metadata i8** %format.addr, i64 0, metadata !939, metadata !980), !dbg !1371
  %call159 = call fastcc i8* @skipitem(i8** nonnull %format.addr, [1 x %struct.__va_list_tag]* %p_va, i32 %flags), !dbg !1715
  call void @llvm.dbg.value(metadata i8* %call159, i64 0, metadata !946, metadata !980), !dbg !1659
  %tobool160 = icmp eq i8* %call159, null, !dbg !1716
  br i1 %tobool160, label %for.inc.165, label %if.then.161, !dbg !1718

if.then.161:                                      ; preds = %if.end.158
  %call159.lcssa = phi i8* [ %call159, %if.end.158 ]
  %130 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1719, !tbaa !993
  call void @llvm.dbg.value(metadata i8** %format.addr, i64 0, metadata !939, metadata !980), !dbg !1371
  %131 = load i8*, i8** %format.addr, align 8, !dbg !1721, !tbaa !993
  %call162 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %130, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.82, i64 0, i64 0), i8* %call159.lcssa, i8* %131) #2, !dbg !1722
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !957, metadata !980), !dbg !1458
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !608, metadata !980) #2, !dbg !1723
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !609, metadata !980) #2, !dbg !1725
  %132 = bitcast i32* %first_available to i64*, !dbg !1726
  %133 = load i64, i64* %132, align 8, !dbg !1726
  %134 = trunc i64 %133 to i32, !dbg !1726
  %cmp2.18.i.477 = icmp sgt i32 %134, 0, !dbg !1727
  br i1 %cmp2.18.i.477, label %for.body.i.487.preheader, label %if.end.i.490, !dbg !1728

for.body.i.487.preheader:                         ; preds = %if.then.161
  br label %for.body.i.487, !dbg !1729

for.body.i.487:                                   ; preds = %for.body.i.487.preheader, %for.body.i.487
  %index.019.i.480 = phi i32 [ %inc.i.485, %for.body.i.487 ], [ 0, %for.body.i.487.preheader ], !dbg !1730
  %idxprom.i.481 = sext i32 %index.019.i.480 to i64, !dbg !1729
  %135 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries, align 8, !dbg !1731, !tbaa !1018
  %destructor.i.482 = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %135, i64 %idxprom.i.481, i32 1, !dbg !1732
  %136 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %destructor.i.482, align 8, !dbg !1732, !tbaa !1161
  %item.i.483 = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %135, i64 %idxprom.i.481, i32 0, !dbg !1733
  %137 = load i8*, i8** %item.i.483, align 8, !dbg !1733, !tbaa !1164
  %call.i.484 = call i32 %136(%struct._object* null, i8* %137) #2, !dbg !1729
  %inc.i.485 = add i32 %index.019.i.480, 1, !dbg !1734
  call void @llvm.dbg.value(metadata i32 %inc.i.485, i64 0, metadata !610, metadata !980) #2, !dbg !1735
  %138 = load i64, i64* %132, align 8, !dbg !1726
  %139 = trunc i64 %138 to i32, !dbg !1726
  %cmp2.i.486 = icmp slt i32 %inc.i.485, %139, !dbg !1727
  br i1 %cmp2.i.486, label %for.body.i.487, label %if.end.i.490.loopexit, !dbg !1728

if.end.i.490.loopexit:                            ; preds = %for.body.i.487
  %.lcssa798 = phi i64 [ %138, %for.body.i.487 ]
  br label %if.end.i.490, !dbg !1736

if.end.i.490:                                     ; preds = %if.end.i.490.loopexit, %if.then.161
  %.in.660.in = phi i64 [ %133, %if.then.161 ], [ %.lcssa798, %if.end.i.490.loopexit ]
  %tobool.i.489 = icmp ult i64 %.in.660.in, 4294967296, !dbg !1736
  br i1 %tobool.i.489, label %cleanup.226, label %if.then.6.i.491, !dbg !1737

if.then.6.i.491:                                  ; preds = %if.end.i.490
  %140 = bitcast %struct.freelist_t* %freelist to i8**, !dbg !1738
  %141 = load i8*, i8** %140, align 8, !dbg !1738, !tbaa !1018
  call void @PyMem_Free(i8* %141) #2, !dbg !1738
  br label %cleanup.226, !dbg !1738

for.inc.165:                                      ; preds = %if.then.136, %if.end.158
  %nkeywords.1555 = phi i64 [ %nkeywords.1558, %if.then.136 ], [ %nkeywords.0613, %if.end.158 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1441
  %cmp49 = icmp slt i64 %indvars.iv.next, %idxprom.lcssa, !dbg !1438
  %.pre = load i8*, i8** %format.addr, align 8, !dbg !1475, !tbaa !993
  br i1 %cmp49, label %for.body.51, label %for.end.167.loopexit, !dbg !1441

for.end.167.loopexit:                             ; preds = %for.inc.165
  %.pre.lcssa = phi i8* [ %.pre, %for.inc.165 ]
  %nkeywords.1555.lcssa = phi i64 [ %nkeywords.1555, %for.inc.165 ]
  br label %for.end.167, !dbg !1371

for.end.167:                                      ; preds = %for.end.167.loopexit, %for.cond.48.preheader
  %142 = phi i8* [ %format, %for.cond.48.preheader ], [ %.pre.lcssa, %for.end.167.loopexit ], !dbg !1739
  %nkeywords.0.lcssa = phi i64 [ %cond27, %for.cond.48.preheader ], [ %nkeywords.1555.lcssa, %for.end.167.loopexit ]
  call void @llvm.dbg.value(metadata i8** %format.addr, i64 0, metadata !939, metadata !980), !dbg !1371
  %143 = load i8, i8* %142, align 1, !dbg !1739, !tbaa !1036
  switch i8 %143, label %if.then.187 [
    i8 0, label %if.end.190
    i8 59, label %if.end.190
    i8 58, label %if.end.190
    i8 124, label %if.end.190
    i8 36, label %if.end.190
  ], !dbg !1739

if.then.187:                                      ; preds = %for.end.167
  %144 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1741, !tbaa !993
  %call188 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %144, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.83, i64 0, i64 0), i8* %142) #2, !dbg !1743
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !957, metadata !980), !dbg !1458
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !608, metadata !980) #2, !dbg !1744
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !609, metadata !980) #2, !dbg !1746
  %145 = bitcast i32* %first_available to i64*, !dbg !1747
  %146 = load i64, i64* %145, align 8, !dbg !1747
  %147 = trunc i64 %146 to i32, !dbg !1747
  %cmp2.18.i.494 = icmp sgt i32 %147, 0, !dbg !1748
  br i1 %cmp2.18.i.494, label %for.body.i.504.preheader, label %if.end.i.507, !dbg !1749

for.body.i.504.preheader:                         ; preds = %if.then.187
  br label %for.body.i.504, !dbg !1750

for.body.i.504:                                   ; preds = %for.body.i.504.preheader, %for.body.i.504
  %index.019.i.497 = phi i32 [ %inc.i.502, %for.body.i.504 ], [ 0, %for.body.i.504.preheader ], !dbg !1751
  %idxprom.i.498 = sext i32 %index.019.i.497 to i64, !dbg !1750
  %148 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries, align 8, !dbg !1752, !tbaa !1018
  %destructor.i.499 = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %148, i64 %idxprom.i.498, i32 1, !dbg !1753
  %149 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %destructor.i.499, align 8, !dbg !1753, !tbaa !1161
  %item.i.500 = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %148, i64 %idxprom.i.498, i32 0, !dbg !1754
  %150 = load i8*, i8** %item.i.500, align 8, !dbg !1754, !tbaa !1164
  %call.i.501 = call i32 %149(%struct._object* null, i8* %150) #2, !dbg !1750
  %inc.i.502 = add i32 %index.019.i.497, 1, !dbg !1755
  call void @llvm.dbg.value(metadata i32 %inc.i.502, i64 0, metadata !610, metadata !980) #2, !dbg !1756
  %151 = load i64, i64* %145, align 8, !dbg !1747
  %152 = trunc i64 %151 to i32, !dbg !1747
  %cmp2.i.503 = icmp slt i32 %inc.i.502, %152, !dbg !1748
  br i1 %cmp2.i.503, label %for.body.i.504, label %if.end.i.507.loopexit, !dbg !1749

if.end.i.507.loopexit:                            ; preds = %for.body.i.504
  %.lcssa795 = phi i64 [ %151, %for.body.i.504 ]
  br label %if.end.i.507, !dbg !1757

if.end.i.507:                                     ; preds = %if.end.i.507.loopexit, %if.then.187
  %.in.655.in = phi i64 [ %146, %if.then.187 ], [ %.lcssa795, %if.end.i.507.loopexit ]
  %tobool.i.506 = icmp ult i64 %.in.655.in, 4294967296, !dbg !1757
  br i1 %tobool.i.506, label %cleanup.226, label %if.then.6.i.508, !dbg !1758

if.then.6.i.508:                                  ; preds = %if.end.i.507
  %153 = bitcast %struct.freelist_t* %freelist to i8**, !dbg !1759
  %154 = load i8*, i8** %153, align 8, !dbg !1759, !tbaa !1018
  call void @PyMem_Free(i8* %154) #2, !dbg !1759
  br label %cleanup.226, !dbg !1759

if.end.190:                                       ; preds = %for.end.167, %for.end.167, %for.end.167, %for.end.167, %for.end.167
  %cmp191 = icmp sgt i64 %nkeywords.0.lcssa, 0, !dbg !1760
  br i1 %cmp191, label %if.then.193, label %if.end.224, !dbg !1761

if.then.193:                                      ; preds = %if.end.190
  %155 = bitcast %struct._object** %key to i8*, !dbg !1762
  call void @llvm.lifetime.start(i64 8, i8* %155) #2, !dbg !1762
  %156 = bitcast %struct._object** %value to i8*, !dbg !1762
  call void @llvm.lifetime.start(i64 8, i8* %156) #2, !dbg !1762
  %157 = bitcast i64* %pos to i8*, !dbg !1763
  call void @llvm.lifetime.start(i64 8, i8* %157) #2, !dbg !1763
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !962, metadata !980), !dbg !1764
  store i64 0, i64* %pos, align 8, !dbg !1764, !tbaa !1765
  call void @llvm.dbg.value(metadata %struct._object** %key, i64 0, metadata !958, metadata !980), !dbg !1766
  call void @llvm.dbg.value(metadata %struct._object** %value, i64 0, metadata !961, metadata !980), !dbg !1767
  call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !962, metadata !980), !dbg !1764
  %call194.605 = call i32 @PyDict_Next(%struct._object* %keywords, i64* nonnull %pos, %struct._object** nonnull %key, %struct._object** nonnull %value) #2, !dbg !1768
  %tobool195.606 = icmp eq i32 %call194.605, 0, !dbg !1769
  br i1 %tobool195.606, label %if.end.224.critedge, label %while.body.lr.ph, !dbg !1769

while.body.lr.ph:                                 ; preds = %if.then.193
  br i1 %cmp49.607, label %while.body.us.preheader, label %while.body.lr.ph.while.body.lr.ph.split_crit_edge, !dbg !1770

while.body.us.preheader:                          ; preds = %while.body.lr.ph
  br label %while.body.us, !dbg !1772

while.body.lr.ph.while.body.lr.ph.split_crit_edge: ; preds = %while.body.lr.ph
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !963, metadata !980), !dbg !1772
  call void @llvm.dbg.value(metadata %struct._object** %key, i64 0, metadata !958, metadata !980), !dbg !1766
  %158 = load %struct._object*, %struct._object** %key, align 8, !dbg !1773, !tbaa !993
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %158, i64 0, i32 1, !dbg !1773
  %159 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1773, !tbaa !1179
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %159, i64 0, i32 19, !dbg !1773
  %160 = load i64, i64* %tp_flags, align 8, !dbg !1773, !tbaa !1182
  %and = and i64 %160, 268435456, !dbg !1773
  %cmp196 = icmp eq i64 %and, 0, !dbg !1773
  br i1 %cmp196, label %if.then.198, label %if.then.215.critedge, !dbg !1775

while.body.us:                                    ; preds = %while.body.us.preheader, %while.cond.loopexit.us
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !963, metadata !980), !dbg !1772
  call void @llvm.dbg.value(metadata %struct._object** %key, i64 0, metadata !958, metadata !980), !dbg !1766
  %161 = load %struct._object*, %struct._object** %key, align 8, !dbg !1773, !tbaa !993
  %ob_type.us = getelementptr inbounds %struct._object, %struct._object* %161, i64 0, i32 1, !dbg !1773
  %162 = load %struct._typeobject*, %struct._typeobject** %ob_type.us, align 8, !dbg !1773, !tbaa !1179
  %tp_flags.us = getelementptr inbounds %struct._typeobject, %struct._typeobject* %162, i64 0, i32 19, !dbg !1773
  %163 = load i64, i64* %tp_flags.us, align 8, !dbg !1773, !tbaa !1182
  %and.us = and i64 %163, 268435456, !dbg !1773
  %cmp196.us = icmp eq i64 %and.us, 0, !dbg !1773
  br i1 %cmp196.us, label %if.then.198.loopexit, label %for.body.204.us.preheader, !dbg !1775

for.body.204.us.preheader:                        ; preds = %while.body.us
  br label %for.body.204.us, !dbg !1766

for.cond.201.us:                                  ; preds = %for.body.204.us
  %cmp202.us = icmp slt i64 %indvars.iv.next646, %idxprom.lcssa, !dbg !1776
  %.pre650 = load %struct._object*, %struct._object** %key, align 8, !dbg !1778, !tbaa !993
  br i1 %cmp202.us, label %for.body.204.us, label %if.then.215.critedge.loopexit, !dbg !1770

for.body.204.us:                                  ; preds = %for.body.204.us.preheader, %for.cond.201.us
  %164 = phi %struct._object* [ %.pre650, %for.cond.201.us ], [ %161, %for.body.204.us.preheader ], !dbg !1778
  %indvars.iv645 = phi i64 [ %indvars.iv.next646, %for.cond.201.us ], [ 0, %for.body.204.us.preheader ]
  call void @llvm.dbg.value(metadata %struct._object** %key, i64 0, metadata !958, metadata !980), !dbg !1766
  %arrayidx206.us = getelementptr i8*, i8** %kwlist, i64 %indvars.iv645, !dbg !1781
  %165 = load i8*, i8** %arrayidx206.us, align 8, !dbg !1781, !tbaa !993
  %call207.us = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %164, i8* %165) #2, !dbg !1782
  %tobool208.us = icmp eq i32 %call207.us, 0, !dbg !1782
  %indvars.iv.next646 = add nuw nsw i64 %indvars.iv645, 1, !dbg !1770
  br i1 %tobool208.us, label %while.cond.loopexit.us, label %for.cond.201.us, !dbg !1783

while.cond.loopexit.us:                           ; preds = %for.body.204.us
  call void @llvm.dbg.value(metadata %struct._object** %key, i64 0, metadata !958, metadata !980), !dbg !1766
  call void @llvm.dbg.value(metadata %struct._object** %value, i64 0, metadata !961, metadata !980), !dbg !1767
  call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !962, metadata !980), !dbg !1764
  %call194.us = call i32 @PyDict_Next(%struct._object* %keywords, i64* nonnull %pos, %struct._object** nonnull %key, %struct._object** nonnull %value) #2, !dbg !1768
  %tobool195.us = icmp eq i32 %call194.us, 0, !dbg !1769
  br i1 %tobool195.us, label %if.end.224.critedge.loopexit, label %while.body.us, !dbg !1769

if.then.198.loopexit:                             ; preds = %while.body.us
  br label %if.then.198, !dbg !1784

if.then.198:                                      ; preds = %if.then.198.loopexit, %while.body.lr.ph.while.body.lr.ph.split_crit_edge
  %166 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1784, !tbaa !993
  call void @PyErr_SetString(%struct._object* %166, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.84, i64 0, i64 0)) #2, !dbg !1786
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !957, metadata !980), !dbg !1458
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !608, metadata !980) #2, !dbg !1787
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !609, metadata !980) #2, !dbg !1789
  %167 = bitcast i32* %first_available to i64*, !dbg !1790
  %168 = load i64, i64* %167, align 8, !dbg !1790
  %169 = trunc i64 %168 to i32, !dbg !1790
  %cmp2.18.i.511 = icmp sgt i32 %169, 0, !dbg !1791
  br i1 %cmp2.18.i.511, label %for.body.i.521.preheader, label %if.end.i.524, !dbg !1792

for.body.i.521.preheader:                         ; preds = %if.then.198
  br label %for.body.i.521, !dbg !1793

for.body.i.521:                                   ; preds = %for.body.i.521.preheader, %for.body.i.521
  %index.019.i.514 = phi i32 [ %inc.i.519, %for.body.i.521 ], [ 0, %for.body.i.521.preheader ], !dbg !1794
  %idxprom.i.515 = sext i32 %index.019.i.514 to i64, !dbg !1793
  %170 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries, align 8, !dbg !1795, !tbaa !1018
  %destructor.i.516 = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %170, i64 %idxprom.i.515, i32 1, !dbg !1796
  %171 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %destructor.i.516, align 8, !dbg !1796, !tbaa !1161
  %item.i.517 = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %170, i64 %idxprom.i.515, i32 0, !dbg !1797
  %172 = load i8*, i8** %item.i.517, align 8, !dbg !1797, !tbaa !1164
  %call.i.518 = call i32 %171(%struct._object* null, i8* %172) #2, !dbg !1793
  %inc.i.519 = add i32 %index.019.i.514, 1, !dbg !1798
  call void @llvm.dbg.value(metadata i32 %inc.i.519, i64 0, metadata !610, metadata !980) #2, !dbg !1799
  %173 = load i64, i64* %167, align 8, !dbg !1790
  %174 = trunc i64 %173 to i32, !dbg !1790
  %cmp2.i.520 = icmp slt i32 %inc.i.519, %174, !dbg !1791
  br i1 %cmp2.i.520, label %for.body.i.521, label %if.end.i.524.loopexit, !dbg !1792

if.end.i.524.loopexit:                            ; preds = %for.body.i.521
  %.lcssa796 = phi i64 [ %173, %for.body.i.521 ]
  br label %if.end.i.524, !dbg !1800

if.end.i.524:                                     ; preds = %if.end.i.524.loopexit, %if.then.198
  %.in.654.in = phi i64 [ %168, %if.then.198 ], [ %.lcssa796, %if.end.i.524.loopexit ]
  %tobool.i.523 = icmp ult i64 %.in.654.in, 4294967296, !dbg !1800
  br i1 %tobool.i.523, label %cleanup.219, label %if.then.6.i.525, !dbg !1801

if.then.6.i.525:                                  ; preds = %if.end.i.524
  %175 = bitcast %struct.freelist_t* %freelist to i8**, !dbg !1802
  %176 = load i8*, i8** %175, align 8, !dbg !1802, !tbaa !1018
  call void @PyMem_Free(i8* %176) #2, !dbg !1802
  br label %cleanup.219, !dbg !1802

if.then.215.critedge.loopexit:                    ; preds = %for.cond.201.us
  %.pre650.lcssa = phi %struct._object* [ %.pre650, %for.cond.201.us ]
  br label %if.then.215.critedge, !dbg !1803

if.then.215.critedge:                             ; preds = %if.then.215.critedge.loopexit, %while.body.lr.ph.while.body.lr.ph.split_crit_edge
  %177 = phi %struct._object* [ %158, %while.body.lr.ph.while.body.lr.ph.split_crit_edge ], [ %.pre650.lcssa, %if.then.215.critedge.loopexit ], !dbg !1806
  %178 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1803, !tbaa !993
  call void @llvm.dbg.value(metadata %struct._object** %key, i64 0, metadata !958, metadata !980), !dbg !1766
  %call216 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %178, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.85, i64 0, i64 0), %struct._object* %177) #2, !dbg !1807
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !957, metadata !980), !dbg !1458
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !608, metadata !980) #2, !dbg !1808
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !609, metadata !980) #2, !dbg !1810
  %179 = bitcast i32* %first_available to i64*, !dbg !1811
  %180 = load i64, i64* %179, align 8, !dbg !1811
  %181 = trunc i64 %180 to i32, !dbg !1811
  %cmp2.18.i.528 = icmp sgt i32 %181, 0, !dbg !1812
  br i1 %cmp2.18.i.528, label %for.body.i.538.preheader, label %if.end.i.541, !dbg !1813

for.body.i.538.preheader:                         ; preds = %if.then.215.critedge
  br label %for.body.i.538, !dbg !1814

for.body.i.538:                                   ; preds = %for.body.i.538.preheader, %for.body.i.538
  %index.019.i.531 = phi i32 [ %inc.i.536, %for.body.i.538 ], [ 0, %for.body.i.538.preheader ], !dbg !1815
  %idxprom.i.532 = sext i32 %index.019.i.531 to i64, !dbg !1814
  %182 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries, align 8, !dbg !1816, !tbaa !1018
  %destructor.i.533 = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %182, i64 %idxprom.i.532, i32 1, !dbg !1817
  %183 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %destructor.i.533, align 8, !dbg !1817, !tbaa !1161
  %item.i.534 = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %182, i64 %idxprom.i.532, i32 0, !dbg !1818
  %184 = load i8*, i8** %item.i.534, align 8, !dbg !1818, !tbaa !1164
  %call.i.535 = call i32 %183(%struct._object* null, i8* %184) #2, !dbg !1814
  %inc.i.536 = add i32 %index.019.i.531, 1, !dbg !1819
  call void @llvm.dbg.value(metadata i32 %inc.i.536, i64 0, metadata !610, metadata !980) #2, !dbg !1820
  %185 = load i64, i64* %179, align 8, !dbg !1811
  %186 = trunc i64 %185 to i32, !dbg !1811
  %cmp2.i.537 = icmp slt i32 %inc.i.536, %186, !dbg !1812
  br i1 %cmp2.i.537, label %for.body.i.538, label %if.end.i.541.loopexit, !dbg !1813

if.end.i.541.loopexit:                            ; preds = %for.body.i.538
  %.lcssa797 = phi i64 [ %185, %for.body.i.538 ]
  br label %if.end.i.541, !dbg !1821

if.end.i.541:                                     ; preds = %if.end.i.541.loopexit, %if.then.215.critedge
  %.in.in = phi i64 [ %180, %if.then.215.critedge ], [ %.lcssa797, %if.end.i.541.loopexit ]
  %tobool.i.540 = icmp ult i64 %.in.in, 4294967296, !dbg !1821
  br i1 %tobool.i.540, label %cleanup.219, label %if.then.6.i.542, !dbg !1822

if.then.6.i.542:                                  ; preds = %if.end.i.541
  %187 = bitcast %struct.freelist_t* %freelist to i8**, !dbg !1823
  %188 = load i8*, i8** %187, align 8, !dbg !1823, !tbaa !1018
  call void @PyMem_Free(i8* %188) #2, !dbg !1823
  br label %cleanup.219, !dbg !1823

cleanup.219:                                      ; preds = %if.then.6.i.542, %if.end.i.541, %if.then.6.i.525, %if.end.i.524
  call void @llvm.lifetime.end(i64 8, i8* %157) #2, !dbg !1824
  call void @llvm.lifetime.end(i64 8, i8* %156) #2, !dbg !1824
  call void @llvm.lifetime.end(i64 8, i8* %155) #2, !dbg !1824
  br label %cleanup.226

if.end.224.critedge.loopexit:                     ; preds = %while.cond.loopexit.us
  br label %if.end.224.critedge, !dbg !1824

if.end.224.critedge:                              ; preds = %if.end.224.critedge.loopexit, %if.then.193
  call void @llvm.lifetime.end(i64 8, i8* %157) #2, !dbg !1824
  call void @llvm.lifetime.end(i64 8, i8* %156) #2, !dbg !1824
  call void @llvm.lifetime.end(i64 8, i8* %155) #2, !dbg !1824
  br label %if.end.224

if.end.224:                                       ; preds = %if.end.224.critedge, %if.end.190
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !957, metadata !980), !dbg !1458
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !608, metadata !980) #2, !dbg !1826
  call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !609, metadata !980) #2, !dbg !1828
  %189 = load i32, i32* %entries_malloced, align 4, !dbg !1829, !tbaa !1026
  %tobool.i.545 = icmp eq i32 %189, 0, !dbg !1830
  br i1 %tobool.i.545, label %cleanup.226, label %if.then.6.i.547, !dbg !1831

if.then.6.i.547:                                  ; preds = %if.end.224
  %190 = bitcast %struct.freelist_t* %freelist to i8**, !dbg !1832
  %191 = load i8*, i8** %190, align 8, !dbg !1832, !tbaa !1018
  call void @PyMem_Free(i8* %191) #2, !dbg !1832
  br label %cleanup.226, !dbg !1832

cleanup.226:                                      ; preds = %cleanup.219, %if.then.6.i.547, %if.end.224, %if.then.6.i.508, %if.end.i.507, %if.then.6.i.491, %if.end.i.490, %if.then.6.i.474, %if.then.156, %if.then.6.i.469, %if.end.i.468, %if.then.6.i.452, %if.end.i.451, %if.then.6.i.435, %if.end.i.434, %if.then.6.i.418, %if.end.i.417, %if.then.6.i.401, %if.end.i.400, %if.then.6.i.384, %if.end.i.383, %if.then.6.i.367, %if.end.i.366, %if.then.6.i.350, %if.end.i.349, %if.then.6.i.333, %if.end.i.332, %if.then.6.i, %if.end.i, %if.then.16
  %retval.3 = phi i32 [ 0, %if.then.16 ], [ 0, %cleanup.219 ], [ 0, %if.end.i ], [ 0, %if.then.6.i ], [ 0, %if.end.i.332 ], [ 0, %if.then.6.i.333 ], [ 0, %if.end.i.349 ], [ 0, %if.then.6.i.350 ], [ 0, %if.end.i.366 ], [ 0, %if.then.6.i.367 ], [ 0, %if.end.i.383 ], [ 0, %if.then.6.i.384 ], [ 0, %if.end.i.400 ], [ 0, %if.then.6.i.401 ], [ 0, %if.end.i.417 ], [ 0, %if.then.6.i.418 ], [ 0, %if.end.i.434 ], [ 0, %if.then.6.i.435 ], [ 0, %if.end.i.451 ], [ 0, %if.then.6.i.452 ], [ 0, %if.end.i.468 ], [ 0, %if.then.6.i.469 ], [ 1, %if.then.156 ], [ 1, %if.then.6.i.474 ], [ 0, %if.end.i.490 ], [ 0, %if.then.6.i.491 ], [ 0, %if.end.i.507 ], [ 0, %if.then.6.i.508 ], [ 1, %if.end.224 ], [ 1, %if.then.6.i.547 ]
  call void @llvm.lifetime.end(i64 16, i8* %3) #2, !dbg !1833
  call void @llvm.lifetime.end(i64 128, i8* %2) #2, !dbg !1833
  call void @llvm.lifetime.end(i64 128, i8* %1) #2, !dbg !1833
  call void @llvm.lifetime.end(i64 512, i8* %0) #2, !dbg !1833
  ret i32 %retval.3, !dbg !1833
}

; Function Attrs: nounwind uwtable
define i32 @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* readonly %args, %struct._object* %keywords, i8* %format, i8** readonly %kwlist, ...) #0 {
entry:
  %va = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !510, metadata !980), !dbg !1834
  tail call void @llvm.dbg.value(metadata %struct._object* %keywords, i64 0, metadata !511, metadata !980), !dbg !1835
  tail call void @llvm.dbg.value(metadata i8* %format, i64 0, metadata !512, metadata !980), !dbg !1836
  tail call void @llvm.dbg.value(metadata i8** %kwlist, i64 0, metadata !513, metadata !980), !dbg !1837
  %0 = bitcast [1 x %struct.__va_list_tag]* %va to i8*, !dbg !1838
  call void @llvm.lifetime.start(i64 24, i8* %0) #2, !dbg !1838
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %va, metadata !515, metadata !980), !dbg !1839
  %cmp = icmp eq %struct._object* %args, null, !dbg !1840
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1842

lor.lhs.false:                                    ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %args, i64 0, i32 1, !dbg !1843
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1843, !tbaa !1179
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 19, !dbg !1843
  %2 = load i64, i64* %tp_flags, align 8, !dbg !1843, !tbaa !1182
  %and = and i64 %2, 67108864, !dbg !1843
  %cmp2 = icmp eq i64 %and, 0, !dbg !1843
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3, !dbg !1845

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %cmp4 = icmp eq %struct._object* %keywords, null, !dbg !1846
  br i1 %cmp4, label %lor.lhs.false.9, label %land.lhs.true, !dbg !1847

land.lhs.true:                                    ; preds = %lor.lhs.false.3
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %keywords, i64 0, i32 1, !dbg !1848
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8, !dbg !1848, !tbaa !1179
  %tp_flags6 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 19, !dbg !1848
  %4 = load i64, i64* %tp_flags6, align 8, !dbg !1848, !tbaa !1182
  %and7 = and i64 %4, 536870912, !dbg !1848
  %cmp8 = icmp eq i64 %and7, 0, !dbg !1848
  %cmp10 = icmp eq i8* %format, null, !dbg !1849
  %or.cond = or i1 %cmp10, %cmp8, !dbg !1850
  %cmp12 = icmp eq i8** %kwlist, null, !dbg !1851
  %or.cond18 = or i1 %cmp12, %or.cond, !dbg !1850
  br i1 %or.cond18, label %if.then, label %if.end, !dbg !1850

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.3
  %cmp10.old = icmp eq i8* %format, null, !dbg !1849
  %cmp12.old = icmp eq i8** %kwlist, null, !dbg !1851
  %or.cond20 = or i1 %cmp10.old, %cmp12.old, !dbg !1852
  br i1 %or.cond20, label %if.then, label %if.end, !dbg !1852

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true, %lor.lhs.false.9, %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 1355) #2, !dbg !1853
  br label %cleanup, !dbg !1855

if.end:                                           ; preds = %lor.lhs.false.9, %land.lhs.true
  call void @llvm.va_start(i8* %0), !dbg !1856
  %call = call fastcc i32 @vgetargskeywords(%struct._object* %args, %struct._object* %keywords, i8* %format, i8** %kwlist, [1 x %struct.__va_list_tag]* nonnull %va, i32 2), !dbg !1857
  call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !514, metadata !980), !dbg !1858
  call void @llvm.va_end(i8* %0), !dbg !1859
  br label %cleanup, !dbg !1860

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  call void @llvm.lifetime.end(i64 24, i8* %0) #2, !dbg !1861
  ret i32 %retval.0, !dbg !1861
}

; Function Attrs: nounwind uwtable
define i32 @PyArg_VaParseTupleAndKeywords(%struct._object* readonly %args, %struct._object* %keywords, i8* %format, i8** readonly %kwlist, %struct.__va_list_tag* nocapture readonly %va) #0 {
entry:
  %lva = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !520, metadata !980), !dbg !1862
  tail call void @llvm.dbg.value(metadata %struct._object* %keywords, i64 0, metadata !521, metadata !980), !dbg !1863
  tail call void @llvm.dbg.value(metadata i8* %format, i64 0, metadata !522, metadata !980), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8** %kwlist, i64 0, metadata !523, metadata !980), !dbg !1865
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %va, i64 0, metadata !524, metadata !980), !dbg !1866
  %0 = bitcast [1 x %struct.__va_list_tag]* %lva to i8*, !dbg !1867
  call void @llvm.lifetime.start(i64 24, i8* %0) #2, !dbg !1867
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %lva, metadata !526, metadata !980), !dbg !1868
  %cmp = icmp eq %struct._object* %args, null, !dbg !1869
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1871

lor.lhs.false:                                    ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %args, i64 0, i32 1, !dbg !1872
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1872, !tbaa !1179
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 19, !dbg !1872
  %2 = load i64, i64* %tp_flags, align 8, !dbg !1872, !tbaa !1182
  %and = and i64 %2, 67108864, !dbg !1872
  %cmp2 = icmp eq i64 %and, 0, !dbg !1872
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3, !dbg !1874

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %cmp4 = icmp eq %struct._object* %keywords, null, !dbg !1875
  br i1 %cmp4, label %lor.lhs.false.9, label %land.lhs.true, !dbg !1876

land.lhs.true:                                    ; preds = %lor.lhs.false.3
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %keywords, i64 0, i32 1, !dbg !1877
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8, !dbg !1877, !tbaa !1179
  %tp_flags6 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 19, !dbg !1877
  %4 = load i64, i64* %tp_flags6, align 8, !dbg !1877, !tbaa !1182
  %and7 = and i64 %4, 536870912, !dbg !1877
  %cmp8 = icmp eq i64 %and7, 0, !dbg !1877
  %cmp10 = icmp eq i8* %format, null, !dbg !1878
  %or.cond = or i1 %cmp10, %cmp8, !dbg !1879
  %cmp12 = icmp eq i8** %kwlist, null, !dbg !1880
  %or.cond15 = or i1 %cmp12, %or.cond, !dbg !1879
  br i1 %or.cond15, label %if.then, label %if.end, !dbg !1879

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.3
  %cmp10.old = icmp eq i8* %format, null, !dbg !1878
  %cmp12.old = icmp eq i8** %kwlist, null, !dbg !1880
  %or.cond17 = or i1 %cmp10.old, %cmp12.old, !dbg !1881
  br i1 %or.cond17, label %if.then, label %if.end, !dbg !1881

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true, %lor.lhs.false.9, %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 1381) #2, !dbg !1882
  br label %cleanup, !dbg !1884

if.end:                                           ; preds = %lor.lhs.false.9, %land.lhs.true
  %5 = bitcast %struct.__va_list_tag* %va to i8*, !dbg !1885
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %5, i64 24, i32 8, i1 false), !dbg !1885
  %call = call fastcc i32 @vgetargskeywords(%struct._object* %args, %struct._object* %keywords, i8* %format, i8** %kwlist, [1 x %struct.__va_list_tag]* nonnull %lva, i32 0), !dbg !1886
  call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !525, metadata !980), !dbg !1887
  br label %cleanup, !dbg !1888

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  call void @llvm.lifetime.end(i64 24, i8* %0) #2, !dbg !1889
  ret i32 %retval.0, !dbg !1889
}

; Function Attrs: nounwind uwtable
define i32 @_PyArg_VaParseTupleAndKeywords_SizeT(%struct._object* readonly %args, %struct._object* %keywords, i8* %format, i8** readonly %kwlist, %struct.__va_list_tag* nocapture readonly %va) #0 {
entry:
  %lva = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !529, metadata !980), !dbg !1890
  tail call void @llvm.dbg.value(metadata %struct._object* %keywords, i64 0, metadata !530, metadata !980), !dbg !1891
  tail call void @llvm.dbg.value(metadata i8* %format, i64 0, metadata !531, metadata !980), !dbg !1892
  tail call void @llvm.dbg.value(metadata i8** %kwlist, i64 0, metadata !532, metadata !980), !dbg !1893
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %va, i64 0, metadata !533, metadata !980), !dbg !1894
  %0 = bitcast [1 x %struct.__va_list_tag]* %lva to i8*, !dbg !1895
  call void @llvm.lifetime.start(i64 24, i8* %0) #2, !dbg !1895
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %lva, metadata !535, metadata !980), !dbg !1896
  %cmp = icmp eq %struct._object* %args, null, !dbg !1897
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1899

lor.lhs.false:                                    ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %args, i64 0, i32 1, !dbg !1900
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1900, !tbaa !1179
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 19, !dbg !1900
  %2 = load i64, i64* %tp_flags, align 8, !dbg !1900, !tbaa !1182
  %and = and i64 %2, 67108864, !dbg !1900
  %cmp2 = icmp eq i64 %and, 0, !dbg !1900
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3, !dbg !1902

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %cmp4 = icmp eq %struct._object* %keywords, null, !dbg !1903
  br i1 %cmp4, label %lor.lhs.false.9, label %land.lhs.true, !dbg !1904

land.lhs.true:                                    ; preds = %lor.lhs.false.3
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %keywords, i64 0, i32 1, !dbg !1905
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8, !dbg !1905, !tbaa !1179
  %tp_flags6 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 19, !dbg !1905
  %4 = load i64, i64* %tp_flags6, align 8, !dbg !1905, !tbaa !1182
  %and7 = and i64 %4, 536870912, !dbg !1905
  %cmp8 = icmp eq i64 %and7, 0, !dbg !1905
  %cmp10 = icmp eq i8* %format, null, !dbg !1906
  %or.cond = or i1 %cmp10, %cmp8, !dbg !1907
  %cmp12 = icmp eq i8** %kwlist, null, !dbg !1908
  %or.cond15 = or i1 %cmp12, %or.cond, !dbg !1907
  br i1 %or.cond15, label %if.then, label %if.end, !dbg !1907

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.3
  %cmp10.old = icmp eq i8* %format, null, !dbg !1906
  %cmp12.old = icmp eq i8** %kwlist, null, !dbg !1908
  %or.cond17 = or i1 %cmp10.old, %cmp12.old, !dbg !1909
  br i1 %or.cond17, label %if.then, label %if.end, !dbg !1909

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true, %lor.lhs.false.9, %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 1405) #2, !dbg !1910
  br label %cleanup, !dbg !1912

if.end:                                           ; preds = %lor.lhs.false.9, %land.lhs.true
  %5 = bitcast %struct.__va_list_tag* %va to i8*, !dbg !1913
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %5, i64 24, i32 8, i1 false), !dbg !1913
  %call = call fastcc i32 @vgetargskeywords(%struct._object* %args, %struct._object* %keywords, i8* %format, i8** %kwlist, [1 x %struct.__va_list_tag]* nonnull %lva, i32 2), !dbg !1914
  call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !534, metadata !980), !dbg !1915
  br label %cleanup, !dbg !1916

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  call void @llvm.lifetime.end(i64 24, i8* %0) #2, !dbg !1917
  ret i32 %retval.0, !dbg !1917
}

; Function Attrs: nounwind uwtable
define i32 @PyArg_ValidateKeywordArguments(%struct._object* %kwargs) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %kwargs, i64 0, metadata !538, metadata !980), !dbg !1918
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %kwargs, i64 0, i32 1, !dbg !1919
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1919, !tbaa !1179
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 19, !dbg !1919
  %1 = load i64, i64* %tp_flags, align 8, !dbg !1919, !tbaa !1182
  %and = and i64 %1, 536870912, !dbg !1919
  %cmp = icmp eq i64 %and, 0, !dbg !1919
  br i1 %cmp, label %if.then, label %if.end, !dbg !1921

if.then:                                          ; preds = %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 1420) #2, !dbg !1922
  br label %return, !dbg !1924

if.end:                                           ; preds = %entry
  %call = tail call i32 @_PyDict_HasOnlyStringKeys(%struct._object* %kwargs) #2, !dbg !1925
  %tobool = icmp eq i32 %call, 0, !dbg !1925
  br i1 %tobool, label %if.then.1, label %return, !dbg !1927

if.then.1:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1928, !tbaa !993
  tail call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0)) #2, !dbg !1930
  br label %return, !dbg !1931

return:                                           ; preds = %if.end, %if.then.1, %if.then
  %retval.0 = phi i32 [ 0, %if.then.1 ], [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0, !dbg !1932
}

declare i32 @_PyDict_HasOnlyStringKeys(%struct._object*) #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @PyArg_UnpackTuple(%struct._object* nocapture readonly %args, i8* %name, i64 %min, i64 %max, ...) #0 {
entry:
  %vargs = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !543, metadata !980), !dbg !1933
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !544, metadata !980), !dbg !1934
  tail call void @llvm.dbg.value(metadata i64 %min, i64 0, metadata !545, metadata !980), !dbg !1935
  tail call void @llvm.dbg.value(metadata i64 %max, i64 0, metadata !546, metadata !980), !dbg !1936
  %0 = bitcast [1 x %struct.__va_list_tag]* %vargs to i8*, !dbg !1937
  call void @llvm.lifetime.start(i64 24, i8* %0) #2, !dbg !1937
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %vargs, metadata !551, metadata !980), !dbg !1938
  call void @llvm.va_start(i8* %0), !dbg !1939
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %args, i64 0, i32 1, !dbg !1940
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1940, !tbaa !1179
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 19, !dbg !1940
  %2 = load i64, i64* %tp_flags, align 8, !dbg !1940, !tbaa !1182
  %and = and i64 %2, 67108864, !dbg !1940
  %cmp = icmp eq i64 %and, 0, !dbg !1940
  br i1 %cmp, label %if.then, label %if.end, !dbg !1942

if.then:                                          ; preds = %entry
  call void @llvm.va_end(i8* %0), !dbg !1943
  %3 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1945, !tbaa !993
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0)) #2, !dbg !1946
  br label %cleanup, !dbg !1947

if.end:                                           ; preds = %entry
  %4 = getelementptr inbounds %struct._object, %struct._object* %args, i64 1, i32 0, !dbg !1948
  %5 = load i64, i64* %4, align 8, !dbg !1948, !tbaa !1196
  call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !548, metadata !980), !dbg !1949
  %cmp4 = icmp slt i64 %5, %min, !dbg !1950
  br i1 %cmp4, label %if.then.5, label %if.end.15, !dbg !1952

if.then.5:                                        ; preds = %if.end
  %cmp6 = icmp eq i8* %name, null, !dbg !1953
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1956, !tbaa !993
  %cmp9 = icmp eq i64 %min, %max, !dbg !1957
  %cond10 = select i1 %cmp9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), !dbg !1958
  br i1 %cmp6, label %if.else, label %if.then.7, !dbg !1959

if.then.7:                                        ; preds = %if.then.5
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %name, i8* %cond10, i64 %min, i64 %5) #2, !dbg !1960
  br label %if.end.12, !dbg !1960

if.else:                                          ; preds = %if.then.5
  %call11 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i8* %cond10, i64 %min, i64 %5) #2, !dbg !1961
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.7
  call void @llvm.va_end(i8* %0), !dbg !1962
  br label %cleanup, !dbg !1963

if.end.15:                                        ; preds = %if.end
  %cmp16 = icmp sgt i64 %5, %max, !dbg !1964
  br i1 %cmp16, label %if.then.17, label %for.cond.preheader, !dbg !1966

for.cond.preheader:                               ; preds = %if.end.15
  %cmp31.66 = icmp sgt i64 %5, 0, !dbg !1967
  br i1 %cmp31.66, label %for.body.lr.ph, label %for.end, !dbg !1970

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i64 0, i64 0, i32 0, !dbg !1971
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i64 0, i64 0, i32 3, !dbg !1973
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %args, i64 1, i32 1, !dbg !1975
  %8 = bitcast %struct._typeobject** %ob_item to [1 x %struct._object*]*, !dbg !1975
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i64 0, i64 0, i32 2, !dbg !1976
  br label %for.body, !dbg !1970

if.then.17:                                       ; preds = %if.end.15
  %cmp18 = icmp eq i8* %name, null, !dbg !1978
  %9 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1981, !tbaa !993
  %cmp24 = icmp eq i64 %min, %max, !dbg !1982
  %cond25 = select i1 %cmp24, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), !dbg !1983
  br i1 %cmp18, label %if.else.23, label %if.then.19, !dbg !1984

if.then.19:                                       ; preds = %if.then.17
  %call22 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %9, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %name, i8* %cond25, i64 %max, i64 %5) #2, !dbg !1985
  br label %if.end.27, !dbg !1985

if.else.23:                                       ; preds = %if.then.17
  %call26 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %9, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i8* %cond25, i64 %max, i64 %5) #2, !dbg !1986
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.23, %if.then.19
  call void @llvm.va_end(i8* %0), !dbg !1987
  br label %cleanup, !dbg !1988

for.body:                                         ; preds = %vaarg.end, %for.body.lr.ph
  %i.067 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %vaarg.end ]
  %gp_offset = load i32, i32* %gp_offset_p, align 16, !dbg !1971
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !1971
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !1971

vaarg.in_reg:                                     ; preds = %for.body
  %reg_save_area = load i8*, i8** %7, align 16, !dbg !1973
  %10 = sext i32 %gp_offset to i64, !dbg !1973
  %11 = getelementptr i8, i8* %reg_save_area, i64 %10, !dbg !1973
  %12 = add i32 %gp_offset, 8, !dbg !1973
  store i32 %12, i32* %gp_offset_p, align 16, !dbg !1973
  br label %vaarg.end, !dbg !1973

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8, !dbg !1976
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i64 8, !dbg !1976
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !1976
  br label %vaarg.end, !dbg !1976

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %11, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %13 = bitcast i8* %vaarg.addr.in to i64**, !dbg !1989
  %14 = load i64*, i64** %13, align 8, !dbg !1989
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %8, i64 0, i64 %i.067, !dbg !1975
  %15 = bitcast %struct._object** %arrayidx to i64*, !dbg !1975
  %16 = load i64, i64* %15, align 8, !dbg !1975, !tbaa !993
  store i64 %16, i64* %14, align 8, !dbg !1992, !tbaa !993
  %inc = add nuw nsw i64 %i.067, 1, !dbg !1993
  call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !547, metadata !980), !dbg !1994
  %exitcond = icmp eq i64 %inc, %5, !dbg !1970
  br i1 %exitcond, label %for.end.loopexit, label %for.body, !dbg !1970

for.end.loopexit:                                 ; preds = %vaarg.end
  br label %for.end, !dbg !1995

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader
  call void @llvm.va_end(i8* %0), !dbg !1995
  br label %cleanup, !dbg !1996

cleanup:                                          ; preds = %for.end, %if.end.27, %if.end.12, %if.then
  %retval.0 = phi i32 [ 0, %if.end.12 ], [ 0, %if.end.27 ], [ 1, %for.end ], [ 0, %if.then ]
  call void @llvm.lifetime.end(i64 24, i8* %0) #2, !dbg !1997
  ret i32 %retval.0, !dbg !1997
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define i32 @_PyArg_NoKeywords(i8* %funcname, %struct._object* %kw) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %funcname, i64 0, metadata !556, metadata !980), !dbg !1998
  tail call void @llvm.dbg.value(metadata %struct._object* %kw, i64 0, metadata !557, metadata !980), !dbg !1999
  %cmp = icmp eq %struct._object* %kw, null, !dbg !2000
  br i1 %cmp, label %return, label %if.end, !dbg !2002

if.end:                                           ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %kw, i64 0, i32 1, !dbg !2003
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2003, !tbaa !1179
  %cmp1 = icmp eq %struct._typeobject* %0, @PyDict_Type, !dbg !2003
  br i1 %cmp1, label %if.end.3, label %if.then.2, !dbg !2005

if.then.2:                                        ; preds = %if.end
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 1825) #2, !dbg !2006
  br label %return, !dbg !2008

if.end.3:                                         ; preds = %if.end
  %call = tail call i64 @PyDict_Size(%struct._object* %kw) #2, !dbg !2009
  %cmp4 = icmp eq i64 %call, 0, !dbg !2011
  br i1 %cmp4, label %return, label %if.end.6, !dbg !2012

if.end.6:                                         ; preds = %if.end.3
  %1 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2013, !tbaa !993
  %call7 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i8* %funcname) #2, !dbg !2014
  br label %return, !dbg !2015

return:                                           ; preds = %if.end.3, %entry, %if.end.6, %if.then.2
  %retval.0 = phi i32 [ 0, %if.end.6 ], [ 0, %if.then.2 ], [ 1, %entry ], [ 1, %if.end.3 ]
  ret i32 %retval.0, !dbg !2016
}

declare i64 @PyDict_Size(%struct._object*) #3

; Function Attrs: nounwind uwtable
define i32 @_PyArg_NoPositional(i8* %funcname, %struct._object* readonly %args) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %funcname, i64 0, metadata !560, metadata !980), !dbg !2017
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !561, metadata !980), !dbg !2018
  %cmp = icmp eq %struct._object* %args, null, !dbg !2019
  br i1 %cmp, label %return, label %if.end, !dbg !2021

if.end:                                           ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %args, i64 0, i32 1, !dbg !2022
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2022, !tbaa !1179
  %cmp1 = icmp eq %struct._typeobject* %0, @PyTuple_Type, !dbg !2022
  br i1 %cmp1, label %if.end.3, label %if.then.2, !dbg !2024

if.then.2:                                        ; preds = %if.end
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 1843) #2, !dbg !2025
  br label %return, !dbg !2027

if.end.3:                                         ; preds = %if.end
  %1 = getelementptr inbounds %struct._object, %struct._object* %args, i64 1, i32 0, !dbg !2028
  %2 = load i64, i64* %1, align 8, !dbg !2028, !tbaa !1196
  %cmp4 = icmp eq i64 %2, 0, !dbg !2030
  br i1 %cmp4, label %return, label %if.end.6, !dbg !2031

if.end.6:                                         ; preds = %if.end.3
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2032, !tbaa !993
  %call = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i8* %funcname) #2, !dbg !2033
  br label %return, !dbg !2034

return:                                           ; preds = %if.end.3, %entry, %if.end.6, %if.then.2
  %retval.0 = phi i32 [ 0, %if.end.6 ], [ 0, %if.then.2 ], [ 1, %entry ], [ 1, %if.end.3 ]
  ret i32 %retval.0, !dbg !2035
}

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #4

declare i8* @PyMem_Malloc(i64) #3

declare %struct._object* @PyErr_NoMemory() #3

; Function Attrs: nounwind uwtable
define internal fastcc i8* @convertitem(%struct._object* %arg, i8** nocapture %p_format, [1 x %struct.__va_list_tag]* %p_va, i32 %flags, i32* nocapture %levels, i8* %msgbuf, i64 %bufsize, %struct.freelist_t* nocapture %freelist) #0 {
entry:
  %format.i = alloca i8*, align 8
  %view.i.2474.i = alloca %struct.bufferinfo, align 8
  %view.i.i = alloca %struct.bufferinfo, align 8
  %len.i = alloca i64, align 8
  %len811.i = alloca i64, align 8
  %len878.i = alloca i64, align 8
  %len997.i = alloca i64, align 8
  %len1041.i = alloca i64, align 8
  %size.i = alloca i64, align 8
  %ptr.i = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !617, metadata !980), !dbg !2036
  tail call void @llvm.dbg.value(metadata i8** %p_format, i64 0, metadata !618, metadata !980), !dbg !2037
  tail call void @llvm.dbg.value(metadata [1 x %struct.__va_list_tag]* %p_va, i64 0, metadata !619, metadata !980), !dbg !2038
  tail call void @llvm.dbg.value(metadata i32 %flags, i64 0, metadata !620, metadata !980), !dbg !2039
  tail call void @llvm.dbg.value(metadata i32* %levels, i64 0, metadata !621, metadata !980), !dbg !2040
  tail call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !622, metadata !980), !dbg !2041
  tail call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !623, metadata !980), !dbg !2042
  tail call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !624, metadata !980), !dbg !2043
  %0 = load i8*, i8** %p_format, align 8, !dbg !2044, !tbaa !993
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !626, metadata !980), !dbg !2045
  %1 = load i8, i8* %0, align 1, !dbg !2046, !tbaa !1036
  %cmp = icmp eq i8 %1, 40, !dbg !2050
  %incdec.ptr = getelementptr i8, i8* %0, i64 1, !dbg !2051
  br i1 %cmp, label %if.then, label %if.else, !dbg !2053

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !626, metadata !980), !dbg !2045
  %2 = ptrtoint i8* %incdec.ptr to i64, !dbg !2051
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !626, metadata !980), !dbg !2045
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !638, metadata !980) #2, !dbg !2054
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !640, metadata !980) #2, !dbg !2056
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !641, metadata !980) #2, !dbg !2057
  %3 = bitcast i8** %format.i to i8*, !dbg !2058
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2058
  %4 = bitcast i8** %format.i to i64*, !dbg !2059
  store i64 %2, i64* %4, align 8, !dbg !2059, !tbaa !993
  br label %for.cond.i.outer, !dbg !2060

for.cond.i.outer:                                 ; preds = %for.cond.i.outer.backedge, %if.then
  %format.i.promoted109 = phi i8* [ %incdec.ptr, %if.then ], [ %format.i.promoted110, %for.cond.i.outer.backedge ]
  %n.0.i.ph = phi i32 [ 0, %if.then ], [ %n.0.i.ph.be, %for.cond.i.outer.backedge ]
  %level.0.i.ph = phi i32 [ 0, %if.then ], [ %level.0.i.ph.be, %for.cond.i.outer.backedge ]
  br label %for.cond.i.outer61, !dbg !2059

for.cond.i.outer61:                               ; preds = %for.cond.i.outer, %cleanup.i
  %format.i.promoted = phi i8* [ %format.i.promoted109, %for.cond.i.outer ], [ %incdec.ptr.i.28.lcssa173, %cleanup.i ], !dbg !2061
  %level.0.i.ph62 = phi i32 [ %level.0.i.ph, %for.cond.i.outer ], [ %dec.i.30, %cleanup.i ]
  %cmp23.i = icmp eq i32 %level.0.i.ph62, 0, !dbg !2062
  br i1 %cmp23.i, label %for.cond.i.outer61.split.us, label %for.cond.i.preheader, !dbg !2067

for.cond.i.preheader:                             ; preds = %for.cond.i.outer61
  br label %for.cond.i, !dbg !2059

for.cond.i.outer61.split.us:                      ; preds = %for.cond.i.outer61
  %format.i.promoted.lcssa = phi i8* [ %format.i.promoted, %for.cond.i.outer61 ]
  tail call void @llvm.dbg.value(metadata i8** %format.i, i64 0, metadata !642, metadata !980) #2, !dbg !2059
  %incdec.ptr.i.28.us = getelementptr i8, i8* %format.i.promoted.lcssa, i64 1, !dbg !2061
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr.i.28.us, i64 0, metadata !642, metadata !980) #2, !dbg !2059
  %5 = load i8, i8* %format.i.promoted.lcssa, align 1, !dbg !2068, !tbaa !1036
  switch i8 %5, label %land.lhs.true.i.32 [
    i8 40, label %if.then.i
    i8 41, label %cleanup.i.thread
    i8 59, label %for.end.i.loopexit.loopexit152
    i8 58, label %for.end.i.loopexit.loopexit152
    i8 0, label %for.end.i.loopexit.loopexit152
  ], !dbg !2069

cleanup.i.thread:                                 ; preds = %for.cond.i.outer61.split.us
  %incdec.ptr.i.28.us.lcssa = phi i8* [ %incdec.ptr.i.28.us, %for.cond.i.outer61.split.us ]
  %n.0.i.ph.lcssa182 = phi i32 [ %n.0.i.ph, %for.cond.i.outer61.split.us ]
  store i8* %incdec.ptr.i.28.us.lcssa, i8** %format.i, align 8, !dbg !2061, !tbaa !993
  tail call void @llvm.dbg.value(metadata i32 %dec.i.30, i64 0, metadata !640, metadata !980) #2, !dbg !2056
  br label %for.end.i, !dbg !2070

for.cond.i:                                       ; preds = %for.cond.i.preheader, %for.cond.i
  %incdec.ptr.i.2874 = phi i8* [ %incdec.ptr.i.28, %for.cond.i ], [ %format.i.promoted, %for.cond.i.preheader ], !dbg !2059
  tail call void @llvm.dbg.value(metadata i8** %format.i, i64 0, metadata !642, metadata !980) #2, !dbg !2059
  %incdec.ptr.i.28 = getelementptr i8, i8* %incdec.ptr.i.2874, i64 1, !dbg !2061
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr.i.28, i64 0, metadata !642, metadata !980) #2, !dbg !2059
  %6 = load i8, i8* %incdec.ptr.i.2874, align 1, !dbg !2068, !tbaa !1036
  switch i8 %6, label %for.cond.i [
    i8 40, label %if.then.i.loopexit
    i8 41, label %cleanup.i
    i8 59, label %for.end.i.loopexit.loopexit
    i8 58, label %for.end.i.loopexit.loopexit
    i8 0, label %for.end.i.loopexit.loopexit
  ], !dbg !2069

if.then.i.loopexit:                               ; preds = %for.cond.i
  %level.0.i.ph62.lcssa178 = phi i32 [ %level.0.i.ph62, %for.cond.i ]
  %incdec.ptr.i.28.lcssa172 = phi i8* [ %incdec.ptr.i.28, %for.cond.i ]
  br label %if.then.i, !dbg !2061

if.then.i:                                        ; preds = %if.then.i.loopexit, %for.cond.i.outer61.split.us
  %level.0.i.ph6296 = phi i32 [ 0, %for.cond.i.outer61.split.us ], [ %level.0.i.ph62.lcssa178, %if.then.i.loopexit ]
  %incdec.ptr.i.28.lcssa = phi i8* [ %incdec.ptr.i.28.us, %for.cond.i.outer61.split.us ], [ %incdec.ptr.i.28.lcssa172, %if.then.i.loopexit ]
  store i8* %incdec.ptr.i.28.lcssa, i8** %format.i, align 8, !dbg !2061, !tbaa !993
  %cmp2.i = icmp eq i32 %level.0.i.ph6296, 0, !dbg !2071
  %inc.i.29 = zext i1 %cmp2.i to i32, !dbg !2074
  %inc5.i = add i32 %level.0.i.ph6296, 1, !dbg !2075
  tail call void @llvm.dbg.value(metadata i32 %inc5.i, i64 0, metadata !640, metadata !980) #2, !dbg !2056
  br label %for.cond.i.outer.backedge, !dbg !2076

land.lhs.true.i.32:                               ; preds = %for.cond.i.outer61.split.us
  store i8* %incdec.ptr.i.28.us, i8** %format.i, align 8, !dbg !2061, !tbaa !993
  %idxprom.i = zext i8 %5 to i64, !dbg !2077
  %arrayidx.i = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom.i, !dbg !2077
  %7 = load i32, i32* %arrayidx.i, align 4, !dbg !2077, !tbaa !1059
  %and29.i = and i32 %7, 3, !dbg !2077
  %not.tobool.i = icmp ne i32 %and29.i, 0, !dbg !2079
  %inc31.i = zext i1 %not.tobool.i to i32, !dbg !2079
  br label %for.cond.i.outer.backedge, !dbg !2079

for.cond.i.outer.backedge:                        ; preds = %land.lhs.true.i.32, %if.then.i
  %format.i.promoted110 = phi i8* [ %incdec.ptr.i.28.lcssa, %if.then.i ], [ %incdec.ptr.i.28.us, %land.lhs.true.i.32 ]
  %inc.i.29.pn = phi i32 [ %inc.i.29, %if.then.i ], [ %inc31.i, %land.lhs.true.i.32 ]
  %level.0.i.ph.be = phi i32 [ %inc5.i, %if.then.i ], [ 0, %land.lhs.true.i.32 ]
  %n.0.i.ph.be = add i32 %inc.i.29.pn, %n.0.i.ph, !dbg !2074
  br label %for.cond.i.outer, !dbg !2059

cleanup.i:                                        ; preds = %for.cond.i
  %incdec.ptr.i.28.lcssa173 = phi i8* [ %incdec.ptr.i.28, %for.cond.i ]
  store i8* %incdec.ptr.i.28.lcssa173, i8** %format.i, align 8, !dbg !2061, !tbaa !993
  %dec.i.30 = add i32 %level.0.i.ph62, -1, !dbg !2080
  tail call void @llvm.dbg.value(metadata i32 %dec.i.30, i64 0, metadata !640, metadata !980) #2, !dbg !2056
  br i1 %cmp23.i, label %for.end.i.loopexit151, label %for.cond.i.outer61, !dbg !2070

for.end.i.loopexit.loopexit:                      ; preds = %for.cond.i, %for.cond.i, %for.cond.i
  %n.0.i.ph.lcssa = phi i32 [ %n.0.i.ph, %for.cond.i ], [ %n.0.i.ph, %for.cond.i ], [ %n.0.i.ph, %for.cond.i ]
  %incdec.ptr.i.28.lcssa174 = phi i8* [ %incdec.ptr.i.28, %for.cond.i ], [ %incdec.ptr.i.28, %for.cond.i ], [ %incdec.ptr.i.28, %for.cond.i ]
  br label %for.end.i.loopexit, !dbg !2061

for.end.i.loopexit.loopexit152:                   ; preds = %for.cond.i.outer61.split.us, %for.cond.i.outer61.split.us, %for.cond.i.outer61.split.us
  %incdec.ptr.i.28.us.lcssa186 = phi i8* [ %incdec.ptr.i.28.us, %for.cond.i.outer61.split.us ], [ %incdec.ptr.i.28.us, %for.cond.i.outer61.split.us ], [ %incdec.ptr.i.28.us, %for.cond.i.outer61.split.us ]
  %n.0.i.ph.lcssa183 = phi i32 [ %n.0.i.ph, %for.cond.i.outer61.split.us ], [ %n.0.i.ph, %for.cond.i.outer61.split.us ], [ %n.0.i.ph, %for.cond.i.outer61.split.us ]
  br label %for.end.i.loopexit, !dbg !2061

for.end.i.loopexit:                               ; preds = %for.end.i.loopexit.loopexit152, %for.end.i.loopexit.loopexit
  %n.0.i.ph185 = phi i32 [ %n.0.i.ph.lcssa, %for.end.i.loopexit.loopexit ], [ %n.0.i.ph.lcssa183, %for.end.i.loopexit.loopexit152 ]
  %incdec.ptr.i.28.lcssa76 = phi i8* [ %incdec.ptr.i.28.lcssa174, %for.end.i.loopexit.loopexit ], [ %incdec.ptr.i.28.us.lcssa186, %for.end.i.loopexit.loopexit152 ]
  store i8* %incdec.ptr.i.28.lcssa76, i8** %format.i, align 8, !dbg !2061, !tbaa !993
  br label %for.end.i, !dbg !2082

for.end.i.loopexit151:                            ; preds = %cleanup.i
  %n.0.i.ph.lcssa181 = phi i32 [ %n.0.i.ph, %cleanup.i ]
  br label %for.end.i, !dbg !2082

for.end.i:                                        ; preds = %for.end.i.loopexit151, %cleanup.i.thread, %for.end.i.loopexit
  %n.0.i.ph184 = phi i32 [ %n.0.i.ph.lcssa181, %for.end.i.loopexit151 ], [ %n.0.i.ph.lcssa182, %cleanup.i.thread ], [ %n.0.i.ph185, %for.end.i.loopexit ]
  %call.i = tail call i32 @PySequence_Check(%struct._object* %arg) #2, !dbg !2082
  %tobool36.i = icmp eq i32 %call.i, 0, !dbg !2082
  br i1 %tobool36.i, label %if.then.41.i, label %lor.lhs.false.37.i, !dbg !2084

lor.lhs.false.37.i:                               ; preds = %for.end.i
  %ob_type.i.33 = getelementptr inbounds %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !2085
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.33, align 8, !dbg !2085, !tbaa !1179
  %tp_flags.i.34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 19, !dbg !2085
  %9 = load i64, i64* %tp_flags.i.34, align 8, !dbg !2085, !tbaa !1182
  %and38.i = and i64 %9, 134217728, !dbg !2085
  %cmp39.i.35 = icmp eq i64 %and38.i, 0, !dbg !2085
  br i1 %cmp39.i.35, label %if.end.49.i, label %if.then.41.i, !dbg !2087

if.then.41.i:                                     ; preds = %lor.lhs.false.37.i, %for.end.i
  store i32 0, i32* %levels, align 4, !dbg !2088, !tbaa !1059
  %cmp44.i = icmp eq %struct._object* %arg, @_Py_NoneStruct, !dbg !2090
  br i1 %cmp44.i, label %cond.end.i, label %cond.false.i, !dbg !2091

cond.false.i:                                     ; preds = %if.then.41.i
  %ob_type46.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !2092
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type46.i, align 8, !dbg !2092, !tbaa !1179
  %tp_name.i.36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 1, !dbg !2093
  %11 = load i8*, i8** %tp_name.i.36, align 8, !dbg !2093, !tbaa !2094
  br label %cond.end.i, !dbg !2091

cond.end.i:                                       ; preds = %cond.false.i, %if.then.41.i
  %cond47.i = phi i8* [ %11, %cond.false.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.then.41.i ], !dbg !2091
  %call48.i = tail call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i64 0, i64 0), i32 %n.0.i.ph184, i8* %cond47.i) #2, !dbg !2095
  br label %converttuple.exit, !dbg !2096

if.end.49.i:                                      ; preds = %lor.lhs.false.37.i
  %call50.i = tail call i64 @PySequence_Size(%struct._object* %arg) #2, !dbg !2097
  tail call void @llvm.dbg.value(metadata i64 %call50.i, i64 0, metadata !644, metadata !980) #2, !dbg !2098
  %conv51.i = sext i32 %n.0.i.ph184 to i64, !dbg !2099
  %cmp52.i = icmp eq i64 %call50.i, %conv51.i, !dbg !2101
  br i1 %cmp52.i, label %if.end.62.i, label %if.then.54.i, !dbg !2102

if.then.54.i:                                     ; preds = %if.end.49.i
  store i32 0, i32* %levels, align 4, !dbg !2103, !tbaa !1059
  %call60.i = tail call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i64 0, i64 0), i32 %n.0.i.ph184, i64 %call50.i) #2, !dbg !2105
  br label %converttuple.exit, !dbg !2108

if.end.62.i:                                      ; preds = %if.end.49.i
  store i64 %2, i64* %4, align 8, !dbg !2109, !tbaa !993
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !643, metadata !980) #2, !dbg !2110
  %add.ptr.i.38 = getelementptr i32, i32* %levels, i64 1, !dbg !2111
  br label %for.cond.63.i, !dbg !2112

for.cond.63.i:                                    ; preds = %if.end.87.i, %if.end.62.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end.87.i ], [ 0, %if.end.62.i ], !dbg !2070
  %cmp64.i = icmp slt i64 %indvars.iv, %call50.i, !dbg !2113
  br i1 %cmp64.i, label %for.body.i, label %converttuple.exit.thread, !dbg !2114

for.body.i:                                       ; preds = %for.cond.63.i
  %call67.i = tail call %struct._object* @PySequence_GetItem(%struct._object* %arg, i64 %indvars.iv) #2, !dbg !2115
  tail call void @llvm.dbg.value(metadata %struct._object* %call67.i, i64 0, metadata !653, metadata !980) #2, !dbg !2116
  %cmp68.i = icmp eq %struct._object* %call67.i, null, !dbg !2117
  br i1 %cmp68.i, label %if.then.70.i, label %if.end.74.i, !dbg !2119

if.then.70.i:                                     ; preds = %for.body.i
  %indvars.iv.lcssa170 = phi i64 [ %indvars.iv, %for.body.i ]
  %12 = trunc i64 %indvars.iv.lcssa170 to i32, !dbg !2120
  tail call void @PyErr_Clear() #2, !dbg !2120
  %add.i.37 = add i32 %12, 1, !dbg !2122
  store i32 %add.i.37, i32* %levels, align 4, !dbg !2123, !tbaa !1059
  store i32 0, i32* %add.ptr.i.38, align 4, !dbg !2124, !tbaa !1059
  %call73.i = tail call i8* @strncpy(i8* %msgbuf, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0), i64 %bufsize) #2, !dbg !2125
  br label %converttuple.exit, !dbg !2126

if.end.74.i:                                      ; preds = %for.body.i
  tail call void @llvm.dbg.value(metadata i8** %format.i, i64 0, metadata !642, metadata !980) #2, !dbg !2059
  %call75.i = call fastcc i8* @convertitem(%struct._object* %call67.i, i8** nonnull %format.i, [1 x %struct.__va_list_tag]* %p_va, i32 %flags, i32* %add.ptr.i.38, i8* %msgbuf, i64 %bufsize, %struct.freelist_t* %freelist) #2, !dbg !2127
  tail call void @llvm.dbg.value(metadata i8* %call75.i, i64 0, metadata !649, metadata !980) #2, !dbg !2128
  tail call void @llvm.dbg.value(metadata %struct._object* %call67.i, i64 0, metadata !654, metadata !980) #2, !dbg !2129
  tail call void @llvm.dbg.value(metadata %struct._object* %call67.i, i64 0, metadata !656, metadata !980) #2, !dbg !2131
  %ob_refcnt.i.39 = getelementptr inbounds %struct._object, %struct._object* %call67.i, i64 0, i32 0, !dbg !2133
  %13 = load i64, i64* %ob_refcnt.i.39, align 8, !dbg !2133, !tbaa !2135
  %dec80.i = add i64 %13, -1, !dbg !2133
  store i64 %dec80.i, i64* %ob_refcnt.i.39, align 8, !dbg !2133, !tbaa !2135
  %cmp81.i = icmp eq i64 %dec80.i, 0, !dbg !2133
  br i1 %cmp81.i, label %if.else.84.i, label %if.end.87.i, !dbg !2136

if.else.84.i:                                     ; preds = %if.end.74.i
  %ob_type85.i = getelementptr inbounds %struct._object, %struct._object* %call67.i, i64 0, i32 1, !dbg !2137
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type85.i, align 8, !dbg !2137, !tbaa !1179
  %tp_dealloc.i.40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !2137
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.40, align 8, !dbg !2137, !tbaa !2139
  tail call void %15(%struct._object* %call67.i) #2, !dbg !2137
  br label %if.end.87.i, !dbg !2070

if.end.87.i:                                      ; preds = %if.else.84.i, %if.end.74.i
  %cmp90.i = icmp eq i8* %call75.i, null, !dbg !2140
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2142
  br i1 %cmp90.i, label %for.cond.63.i, label %converttuple.exit.thread59, !dbg !2142

converttuple.exit.thread59:                       ; preds = %if.end.87.i
  %call75.i.lcssa = phi i8* [ %call75.i, %if.end.87.i ]
  %indvars.iv.lcssa171 = phi i64 [ %indvars.iv, %if.end.87.i ]
  %16 = trunc i64 %indvars.iv.lcssa171 to i32, !dbg !2143
  %inc100.i = add nuw i32 %16, 1, !dbg !2143
  store i32 %inc100.i, i32* %levels, align 4, !dbg !2144, !tbaa !1059
  call void @llvm.lifetime.end(i64 8, i8* %3) #2, !dbg !2146
  tail call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !625, metadata !980), !dbg !2147
  br label %if.end.15, !dbg !2148

converttuple.exit.thread:                         ; preds = %for.cond.63.i
  tail call void @llvm.dbg.value(metadata i8** %format.i, i64 0, metadata !642, metadata !980) #2, !dbg !2059
  %17 = load i64, i64* %4, align 8, !dbg !2149, !tbaa !993
  call void @llvm.lifetime.end(i64 8, i8* %3) #2, !dbg !2146
  tail call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !625, metadata !980), !dbg !2147
  br label %if.then.4, !dbg !2148

converttuple.exit:                                ; preds = %if.then.70.i, %cond.end.i, %if.then.54.i
  call void @llvm.lifetime.end(i64 8, i8* %3) #2, !dbg !2146
  tail call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !625, metadata !980), !dbg !2147
  %cmp2 = icmp eq i8* %msgbuf, null, !dbg !2150
  br i1 %cmp2, label %if.then.4, label %if.end.15, !dbg !2148

if.then.4:                                        ; preds = %converttuple.exit.thread, %converttuple.exit
  %18 = phi i64 [ %17, %converttuple.exit.thread ], [ %2, %converttuple.exit ]
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !626, metadata !980), !dbg !2045
  %19 = inttoptr i64 %18 to i8*, !dbg !2152
  %incdec.ptr5 = getelementptr i8, i8* %19, i64 1, !dbg !2152
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr5, i64 0, metadata !626, metadata !980), !dbg !2045
  br label %if.then.14, !dbg !2153

if.else:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !626, metadata !980), !dbg !2045
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !663, metadata !980) #2, !dbg !2154
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !664, metadata !980) #2, !dbg !2155
  tail call void @llvm.dbg.value(metadata [1 x %struct.__va_list_tag]* %p_va, i64 0, metadata !665, metadata !980) #2, !dbg !2156
  tail call void @llvm.dbg.value(metadata i32 %flags, i64 0, metadata !666, metadata !980) #2, !dbg !2157
  tail call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !667, metadata !980) #2, !dbg !2158
  tail call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !668, metadata !980) #2, !dbg !2159
  tail call void @llvm.dbg.value(metadata %struct.freelist_t* %freelist, i64 0, metadata !669, metadata !980) #2, !dbg !2160
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !670, metadata !980) #2, !dbg !2161
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !670, metadata !980) #2, !dbg !2161
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !671, metadata !980) #2, !dbg !2162
  %conv.i = sext i8 %1 to i32, !dbg !2163
  switch i32 %conv.i, label %sw.default.i [
    i32 98, label %sw.bb.i
    i32 66, label %sw.bb.19.i
    i32 104, label %sw.bb.51.i
    i32 72, label %sw.bb.93.i
    i32 105, label %sw.bb.125.i
    i32 73, label %sw.bb.167.i
    i32 110, label %sw.bb.199.i
    i32 108, label %sw.bb.240.i
    i32 107, label %sw.bb.271.i
    i32 76, label %sw.bb.297.i
    i32 75, label %sw.bb.328.i
    i32 102, label %sw.bb.356.i
    i32 100, label %sw.bb.380.i
    i32 68, label %sw.bb.404.i
    i32 99, label %sw.bb.427.i
    i32 67, label %sw.bb.472.i
    i32 112, label %sw.bb.553.i
    i32 121, label %sw.bb.581.i
    i32 115, label %sw.bb.678.i
    i32 122, label %sw.bb.678.i
    i32 117, label %sw.bb.929.i
    i32 90, label %sw.bb.929.i
    i32 101, label %sw.bb.1067.i
    i32 83, label %sw.bb.1433.i
    i32 89, label %sw.bb.1458.i
    i32 85, label %sw.bb.1485.i
    i32 79, label %sw.bb.1524.i
    i32 119, label %sw.bb.1629.i
  ], !dbg !2164

sw.bb.i:                                          ; preds = %if.else
  %gp_offset_p.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 0, !dbg !2165
  %gp_offset.i = load i32, i32* %gp_offset_p.i, align 4, !dbg !2165
  %fits_in_gp.i = icmp ult i32 %gp_offset.i, 41, !dbg !2165
  br i1 %fits_in_gp.i, label %vaarg.in_reg.i, label %vaarg.in_mem.i, !dbg !2165

vaarg.in_reg.i:                                   ; preds = %sw.bb.i
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !2166
  %reg_save_area.i = load i8*, i8** %20, align 8, !dbg !2166
  %21 = sext i32 %gp_offset.i to i64, !dbg !2166
  %22 = getelementptr i8, i8* %reg_save_area.i, i64 %21, !dbg !2166
  %23 = add i32 %gp_offset.i, 8, !dbg !2166
  store i32 %23, i32* %gp_offset_p.i, align 4, !dbg !2166
  br label %vaarg.end.i, !dbg !2166

vaarg.in_mem.i:                                   ; preds = %sw.bb.i
  %overflow_arg_area_p.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !2168
  %overflow_arg_area.i = load i8*, i8** %overflow_arg_area_p.i, align 8, !dbg !2168
  %overflow_arg_area.next.i = getelementptr i8, i8* %overflow_arg_area.i, i64 8, !dbg !2168
  store i8* %overflow_arg_area.next.i, i8** %overflow_arg_area_p.i, align 8, !dbg !2168
  br label %vaarg.end.i, !dbg !2168

vaarg.end.i:                                      ; preds = %vaarg.in_mem.i, %vaarg.in_reg.i
  %vaarg.addr.in.i = phi i8* [ %22, %vaarg.in_reg.i ], [ %overflow_arg_area.i, %vaarg.in_mem.i ], !dbg !2170
  %vaarg.addr.i = bitcast i8* %vaarg.addr.in.i to i8**, !dbg !2165
  %24 = load i8*, i8** %vaarg.addr.i, align 8, !dbg !2171
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !673, metadata !980) #2, !dbg !2174
  %arg.idx2306.i = getelementptr %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !2170
  %arg.idx2306.val.i = load %struct._typeobject*, %struct._typeobject** %arg.idx2306.i, align 8, !dbg !2170, !tbaa !1179
  %cmp.i.i = icmp eq %struct._typeobject* %arg.idx2306.val.i, @PyFloat_Type, !dbg !2175
  br i1 %cmp.i.i, label %float_argument_error.exit.i, label %lor.lhs.false.i.i, !dbg !2175

lor.lhs.false.i.i:                                ; preds = %vaarg.end.i
  %call.i.i = tail call i32 @PyType_IsSubtype(%struct._typeobject* %arg.idx2306.val.i, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !2179
  %tobool.i.i = icmp eq i32 %call.i.i, 0, !dbg !2179
  br i1 %tobool.i.i, label %if.end.i, label %float_argument_error.exit.i, !dbg !2181

float_argument_error.exit.i:                      ; preds = %lor.lhs.false.i.i, %vaarg.end.i
  %25 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2182, !tbaa !993
  tail call void @PyErr_SetString(%struct._object* %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.65, i64 0, i64 0)) #2, !dbg !2184
  br label %convertsimple.exit, !dbg !2185

if.end.i:                                         ; preds = %lor.lhs.false.i.i
  %call1.i = tail call i64 @PyLong_AsLong(%struct._object* %arg) #2, !dbg !2186
  tail call void @llvm.dbg.value(metadata i64 %call1.i, i64 0, metadata !676, metadata !980) #2, !dbg !2187
  %cmp.i = icmp eq i64 %call1.i, -1, !dbg !2188
  br i1 %cmp.i, label %land.lhs.true.i, label %if.else.i, !dbg !2190

land.lhs.true.i:                                  ; preds = %if.end.i
  %call3.i = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2191
  %tobool4.i = icmp eq %struct._object* %call3.i, null, !dbg !2191
  br i1 %tobool4.i, label %if.then.8.i, label %convertsimple.exit, !dbg !2193

if.else.i:                                        ; preds = %if.end.i
  %cmp6.i = icmp slt i64 %call1.i, 0, !dbg !2194
  br i1 %cmp6.i, label %if.then.8.i, label %if.else.9.i, !dbg !2196

if.then.8.i:                                      ; preds = %if.else.i, %land.lhs.true.i
  %26 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2197, !tbaa !993
  tail call void @PyErr_SetString(%struct._object* %26, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.31, i64 0, i64 0)) #2, !dbg !2199
  br label %convertsimple.exit, !dbg !2170

if.else.9.i:                                      ; preds = %if.else.i
  %cmp10.i = icmp sgt i64 %call1.i, 255, !dbg !2200
  br i1 %cmp10.i, label %if.then.12.i, label %if.else.13.i, !dbg !2202

if.then.12.i:                                     ; preds = %if.else.9.i
  %27 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2203, !tbaa !993
  tail call void @PyErr_SetString(%struct._object* %27, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.32, i64 0, i64 0)) #2, !dbg !2205
  br label %convertsimple.exit, !dbg !2170

if.else.13.i:                                     ; preds = %if.else.9.i
  %conv14.i = trunc i64 %call1.i to i8, !dbg !2206
  store i8 %conv14.i, i8* %24, align 1, !dbg !2207, !tbaa !1036
  br label %if.then.14, !dbg !2170

sw.bb.19.i:                                       ; preds = %if.else
  %gp_offset_p22.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 0, !dbg !2208
  %gp_offset23.i = load i32, i32* %gp_offset_p22.i, align 4, !dbg !2208
  %fits_in_gp24.i = icmp ult i32 %gp_offset23.i, 41, !dbg !2208
  br i1 %fits_in_gp24.i, label %vaarg.in_reg.25.i, label %vaarg.in_mem.27.i, !dbg !2208

vaarg.in_reg.25.i:                                ; preds = %sw.bb.19.i
  %28 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !2209
  %reg_save_area26.i = load i8*, i8** %28, align 8, !dbg !2209
  %29 = sext i32 %gp_offset23.i to i64, !dbg !2209
  %30 = getelementptr i8, i8* %reg_save_area26.i, i64 %29, !dbg !2209
  %31 = add i32 %gp_offset23.i, 8, !dbg !2209
  store i32 %31, i32* %gp_offset_p22.i, align 4, !dbg !2209
  br label %vaarg.end.31.i, !dbg !2209

vaarg.in_mem.27.i:                                ; preds = %sw.bb.19.i
  %overflow_arg_area_p28.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !2211
  %overflow_arg_area29.i = load i8*, i8** %overflow_arg_area_p28.i, align 8, !dbg !2211
  %overflow_arg_area.next30.i = getelementptr i8, i8* %overflow_arg_area29.i, i64 8, !dbg !2211
  store i8* %overflow_arg_area.next30.i, i8** %overflow_arg_area_p28.i, align 8, !dbg !2211
  br label %vaarg.end.31.i, !dbg !2211

vaarg.end.31.i:                                   ; preds = %vaarg.in_mem.27.i, %vaarg.in_reg.25.i
  %vaarg.addr32.in.i = phi i8* [ %30, %vaarg.in_reg.25.i ], [ %overflow_arg_area29.i, %vaarg.in_mem.27.i ], !dbg !2170
  %vaarg.addr32.i = bitcast i8* %vaarg.addr32.in.i to i8**, !dbg !2208
  %32 = load i8*, i8** %vaarg.addr32.i, align 8, !dbg !2213
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !677, metadata !980) #2, !dbg !2216
  %arg.idx2305.i = getelementptr %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !2170
  %arg.idx2305.val.i = load %struct._typeobject*, %struct._typeobject** %arg.idx2305.i, align 8, !dbg !2170, !tbaa !1179
  %cmp.i.2307.i = icmp eq %struct._typeobject* %arg.idx2305.val.i, @PyFloat_Type, !dbg !2217
  br i1 %cmp.i.2307.i, label %float_argument_error.exit2313.i, label %lor.lhs.false.i.2310.i, !dbg !2217

lor.lhs.false.i.2310.i:                           ; preds = %vaarg.end.31.i
  %call.i.2308.i = tail call i32 @PyType_IsSubtype(%struct._typeobject* %arg.idx2305.val.i, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !2220
  %tobool.i.2309.i = icmp eq i32 %call.i.2308.i, 0, !dbg !2220
  br i1 %tobool.i.2309.i, label %if.end.37.i, label %float_argument_error.exit2313.i, !dbg !2221

float_argument_error.exit2313.i:                  ; preds = %lor.lhs.false.i.2310.i, %vaarg.end.31.i
  %33 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2222, !tbaa !993
  tail call void @PyErr_SetString(%struct._object* %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.65, i64 0, i64 0)) #2, !dbg !2223
  br label %convertsimple.exit, !dbg !2224

if.end.37.i:                                      ; preds = %lor.lhs.false.i.2310.i
  %call38.i = tail call i64 @PyLong_AsUnsignedLongMask(%struct._object* %arg) #2, !dbg !2225
  tail call void @llvm.dbg.value(metadata i64 %call38.i, i64 0, metadata !679, metadata !980) #2, !dbg !2226
  %cmp39.i = icmp eq i64 %call38.i, -1, !dbg !2227
  br i1 %cmp39.i, label %land.lhs.true.41.i, label %if.else.45.i, !dbg !2229

land.lhs.true.41.i:                               ; preds = %if.end.37.i
  %call42.i = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2230
  %tobool43.i = icmp eq %struct._object* %call42.i, null, !dbg !2230
  br i1 %tobool43.i, label %if.else.45.i, label %convertsimple.exit, !dbg !2232

if.else.45.i:                                     ; preds = %land.lhs.true.41.i, %if.end.37.i
  %conv46.i = trunc i64 %call38.i to i8, !dbg !2233
  store i8 %conv46.i, i8* %32, align 1, !dbg !2234, !tbaa !1036
  br label %if.then.14, !dbg !2170

sw.bb.51.i:                                       ; preds = %if.else
  %gp_offset_p54.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 0, !dbg !2235
  %gp_offset55.i = load i32, i32* %gp_offset_p54.i, align 4, !dbg !2235
  %fits_in_gp56.i = icmp ult i32 %gp_offset55.i, 41, !dbg !2235
  br i1 %fits_in_gp56.i, label %vaarg.in_reg.57.i, label %vaarg.in_mem.59.i, !dbg !2235

vaarg.in_reg.57.i:                                ; preds = %sw.bb.51.i
  %34 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !2236
  %reg_save_area58.i = load i8*, i8** %34, align 8, !dbg !2236
  %35 = sext i32 %gp_offset55.i to i64, !dbg !2236
  %36 = getelementptr i8, i8* %reg_save_area58.i, i64 %35, !dbg !2236
  %37 = add i32 %gp_offset55.i, 8, !dbg !2236
  store i32 %37, i32* %gp_offset_p54.i, align 4, !dbg !2236
  br label %vaarg.end.63.i, !dbg !2236

vaarg.in_mem.59.i:                                ; preds = %sw.bb.51.i
  %overflow_arg_area_p60.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !2238
  %overflow_arg_area61.i = load i8*, i8** %overflow_arg_area_p60.i, align 8, !dbg !2238
  %overflow_arg_area.next62.i = getelementptr i8, i8* %overflow_arg_area61.i, i64 8, !dbg !2238
  store i8* %overflow_arg_area.next62.i, i8** %overflow_arg_area_p60.i, align 8, !dbg !2238
  br label %vaarg.end.63.i, !dbg !2238

vaarg.end.63.i:                                   ; preds = %vaarg.in_mem.59.i, %vaarg.in_reg.57.i
  %vaarg.addr64.in.i = phi i8* [ %36, %vaarg.in_reg.57.i ], [ %overflow_arg_area61.i, %vaarg.in_mem.59.i ], !dbg !2170
  %vaarg.addr64.i = bitcast i8* %vaarg.addr64.in.i to i16**, !dbg !2235
  %38 = load i16*, i16** %vaarg.addr64.i, align 8, !dbg !2240
  tail call void @llvm.dbg.value(metadata i16* %38, i64 0, metadata !680, metadata !980) #2, !dbg !2243
  %arg.idx2304.i = getelementptr %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !2170
  %arg.idx2304.val.i = load %struct._typeobject*, %struct._typeobject** %arg.idx2304.i, align 8, !dbg !2170, !tbaa !1179
  %cmp.i.2314.i = icmp eq %struct._typeobject* %arg.idx2304.val.i, @PyFloat_Type, !dbg !2244
  br i1 %cmp.i.2314.i, label %float_argument_error.exit2320.i, label %lor.lhs.false.i.2317.i, !dbg !2244

lor.lhs.false.i.2317.i:                           ; preds = %vaarg.end.63.i
  %call.i.2315.i = tail call i32 @PyType_IsSubtype(%struct._typeobject* %arg.idx2304.val.i, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !2247
  %tobool.i.2316.i = icmp eq i32 %call.i.2315.i, 0, !dbg !2247
  br i1 %tobool.i.2316.i, label %if.end.69.i, label %float_argument_error.exit2320.i, !dbg !2248

float_argument_error.exit2320.i:                  ; preds = %lor.lhs.false.i.2317.i, %vaarg.end.63.i
  %39 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2249, !tbaa !993
  tail call void @PyErr_SetString(%struct._object* %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.65, i64 0, i64 0)) #2, !dbg !2250
  br label %convertsimple.exit, !dbg !2251

if.end.69.i:                                      ; preds = %lor.lhs.false.i.2317.i
  %call70.i = tail call i64 @PyLong_AsLong(%struct._object* %arg) #2, !dbg !2252
  tail call void @llvm.dbg.value(metadata i64 %call70.i, i64 0, metadata !683, metadata !980) #2, !dbg !2253
  %cmp71.i = icmp eq i64 %call70.i, -1, !dbg !2254
  br i1 %cmp71.i, label %land.lhs.true.73.i, label %if.else.77.i, !dbg !2256

land.lhs.true.73.i:                               ; preds = %if.end.69.i
  %call74.i = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2257
  %tobool75.i = icmp eq %struct._object* %call74.i, null, !dbg !2257
  br i1 %tobool75.i, label %if.else.85.i, label %convertsimple.exit, !dbg !2259

if.else.77.i:                                     ; preds = %if.end.69.i
  %cmp78.i = icmp slt i64 %call70.i, -32768, !dbg !2260
  br i1 %cmp78.i, label %if.then.80.i, label %if.else.81.i, !dbg !2262

if.then.80.i:                                     ; preds = %if.else.77.i
  %40 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2263, !tbaa !993
  tail call void @PyErr_SetString(%struct._object* %40, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.33, i64 0, i64 0)) #2, !dbg !2265
  br label %convertsimple.exit, !dbg !2170

if.else.81.i:                                     ; preds = %if.else.77.i
  %cmp82.i = icmp sgt i64 %call70.i, 32767, !dbg !2266
  br i1 %cmp82.i, label %if.then.84.i, label %if.else.85.i, !dbg !2268

if.then.84.i:                                     ; preds = %if.else.81.i
  %41 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2269, !tbaa !993
  tail call void @PyErr_SetString(%struct._object* %41, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.34, i64 0, i64 0)) #2, !dbg !2271
  br label %convertsimple.exit, !dbg !2170

if.else.85.i:                                     ; preds = %if.else.81.i, %land.lhs.true.73.i
  %conv86.i = trunc i64 %call70.i to i16, !dbg !2272
  store i16 %conv86.i, i16* %38, align 2, !dbg !2273, !tbaa !2274
  br label %if.then.14, !dbg !2170

sw.bb.93.i:                                       ; preds = %if.else
  %gp_offset_p96.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 0, !dbg !2276
  %gp_offset97.i = load i32, i32* %gp_offset_p96.i, align 4, !dbg !2276
  %fits_in_gp98.i = icmp ult i32 %gp_offset97.i, 41, !dbg !2276
  br i1 %fits_in_gp98.i, label %vaarg.in_reg.99.i, label %vaarg.in_mem.101.i, !dbg !2276

vaarg.in_reg.99.i:                                ; preds = %sw.bb.93.i
  %42 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !2277
  %reg_save_area100.i = load i8*, i8** %42, align 8, !dbg !2277
  %43 = sext i32 %gp_offset97.i to i64, !dbg !2277
  %44 = getelementptr i8, i8* %reg_save_area100.i, i64 %43, !dbg !2277
  %45 = add i32 %gp_offset97.i, 8, !dbg !2277
  store i32 %45, i32* %gp_offset_p96.i, align 4, !dbg !2277
  br label %vaarg.end.105.i, !dbg !2277

vaarg.in_mem.101.i:                               ; preds = %sw.bb.93.i
  %overflow_arg_area_p102.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !2279
  %overflow_arg_area103.i = load i8*, i8** %overflow_arg_area_p102.i, align 8, !dbg !2279
  %overflow_arg_area.next104.i = getelementptr i8, i8* %overflow_arg_area103.i, i64 8, !dbg !2279
  store i8* %overflow_arg_area.next104.i, i8** %overflow_arg_area_p102.i, align 8, !dbg !2279
  br label %vaarg.end.105.i, !dbg !2279

vaarg.end.105.i:                                  ; preds = %vaarg.in_mem.101.i, %vaarg.in_reg.99.i
  %vaarg.addr106.in.i = phi i8* [ %44, %vaarg.in_reg.99.i ], [ %overflow_arg_area103.i, %vaarg.in_mem.101.i ], !dbg !2170
  %vaarg.addr106.i = bitcast i8* %vaarg.addr106.in.i to i16**, !dbg !2276
  %46 = load i16*, i16** %vaarg.addr106.i, align 8, !dbg !2281
  tail call void @llvm.dbg.value(metadata i16* %46, i64 0, metadata !684, metadata !980) #2, !dbg !2284
  %arg.idx2303.i = getelementptr %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !2170
  %arg.idx2303.val.i = load %struct._typeobject*, %struct._typeobject** %arg.idx2303.i, align 8, !dbg !2170, !tbaa !1179
  %cmp.i.2321.i = icmp eq %struct._typeobject* %arg.idx2303.val.i, @PyFloat_Type, !dbg !2285
  br i1 %cmp.i.2321.i, label %float_argument_error.exit2327.i, label %lor.lhs.false.i.2324.i, !dbg !2285

lor.lhs.false.i.2324.i:                           ; preds = %vaarg.end.105.i
  %call.i.2322.i = tail call i32 @PyType_IsSubtype(%struct._typeobject* %arg.idx2303.val.i, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !2288
  %tobool.i.2323.i = icmp eq i32 %call.i.2322.i, 0, !dbg !2288
  br i1 %tobool.i.2323.i, label %if.end.111.i, label %float_argument_error.exit2327.i, !dbg !2289

float_argument_error.exit2327.i:                  ; preds = %lor.lhs.false.i.2324.i, %vaarg.end.105.i
  %47 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2290, !tbaa !993
  tail call void @PyErr_SetString(%struct._object* %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.65, i64 0, i64 0)) #2, !dbg !2291
  br label %convertsimple.exit, !dbg !2292

if.end.111.i:                                     ; preds = %lor.lhs.false.i.2324.i
  %call112.i = tail call i64 @PyLong_AsUnsignedLongMask(%struct._object* %arg) #2, !dbg !2293
  tail call void @llvm.dbg.value(metadata i64 %call112.i, i64 0, metadata !687, metadata !980) #2, !dbg !2294
  %cmp113.i = icmp eq i64 %call112.i, -1, !dbg !2295
  br i1 %cmp113.i, label %land.lhs.true.115.i, label %if.else.119.i, !dbg !2297

land.lhs.true.115.i:                              ; preds = %if.end.111.i
  %call116.i = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2298
  %tobool117.i = icmp eq %struct._object* %call116.i, null, !dbg !2298
  br i1 %tobool117.i, label %if.else.119.i, label %convertsimple.exit, !dbg !2300

if.else.119.i:                                    ; preds = %land.lhs.true.115.i, %if.end.111.i
  %conv120.i = trunc i64 %call112.i to i16, !dbg !2301
  store i16 %conv120.i, i16* %46, align 2, !dbg !2302, !tbaa !2274
  br label %if.then.14, !dbg !2170

sw.bb.125.i:                                      ; preds = %if.else
  %gp_offset_p128.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 0, !dbg !2303
  %gp_offset129.i = load i32, i32* %gp_offset_p128.i, align 4, !dbg !2303
  %fits_in_gp130.i = icmp ult i32 %gp_offset129.i, 41, !dbg !2303
  br i1 %fits_in_gp130.i, label %vaarg.in_reg.131.i, label %vaarg.in_mem.133.i, !dbg !2303

vaarg.in_reg.131.i:                               ; preds = %sw.bb.125.i
  %48 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !2304
  %reg_save_area132.i = load i8*, i8** %48, align 8, !dbg !2304
  %49 = sext i32 %gp_offset129.i to i64, !dbg !2304
  %50 = getelementptr i8, i8* %reg_save_area132.i, i64 %49, !dbg !2304
  %51 = add i32 %gp_offset129.i, 8, !dbg !2304
  store i32 %51, i32* %gp_offset_p128.i, align 4, !dbg !2304
  br label %vaarg.end.137.i, !dbg !2304

vaarg.in_mem.133.i:                               ; preds = %sw.bb.125.i
  %overflow_arg_area_p134.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !2306
  %overflow_arg_area135.i = load i8*, i8** %overflow_arg_area_p134.i, align 8, !dbg !2306
  %overflow_arg_area.next136.i = getelementptr i8, i8* %overflow_arg_area135.i, i64 8, !dbg !2306
  store i8* %overflow_arg_area.next136.i, i8** %overflow_arg_area_p134.i, align 8, !dbg !2306
  br label %vaarg.end.137.i, !dbg !2306

vaarg.end.137.i:                                  ; preds = %vaarg.in_mem.133.i, %vaarg.in_reg.131.i
  %vaarg.addr138.in.i = phi i8* [ %50, %vaarg.in_reg.131.i ], [ %overflow_arg_area135.i, %vaarg.in_mem.133.i ], !dbg !2170
  %vaarg.addr138.i = bitcast i8* %vaarg.addr138.in.i to i32**, !dbg !2303
  %52 = load i32*, i32** %vaarg.addr138.i, align 8, !dbg !2308
  tail call void @llvm.dbg.value(metadata i32* %52, i64 0, metadata !688, metadata !980) #2, !dbg !2311
  %arg.idx2302.i = getelementptr %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !2170
  %arg.idx2302.val.i = load %struct._typeobject*, %struct._typeobject** %arg.idx2302.i, align 8, !dbg !2170, !tbaa !1179
  %cmp.i.2328.i = icmp eq %struct._typeobject* %arg.idx2302.val.i, @PyFloat_Type, !dbg !2312
  br i1 %cmp.i.2328.i, label %float_argument_error.exit2334.i, label %lor.lhs.false.i.2331.i, !dbg !2312

lor.lhs.false.i.2331.i:                           ; preds = %vaarg.end.137.i
  %call.i.2329.i = tail call i32 @PyType_IsSubtype(%struct._typeobject* %arg.idx2302.val.i, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !2315
  %tobool.i.2330.i = icmp eq i32 %call.i.2329.i, 0, !dbg !2315
  br i1 %tobool.i.2330.i, label %if.end.143.i, label %float_argument_error.exit2334.i, !dbg !2316

float_argument_error.exit2334.i:                  ; preds = %lor.lhs.false.i.2331.i, %vaarg.end.137.i
  %53 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2317, !tbaa !993
  tail call void @PyErr_SetString(%struct._object* %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.65, i64 0, i64 0)) #2, !dbg !2318
  br label %convertsimple.exit, !dbg !2319

if.end.143.i:                                     ; preds = %lor.lhs.false.i.2331.i
  %call144.i = tail call i64 @PyLong_AsLong(%struct._object* %arg) #2, !dbg !2320
  tail call void @llvm.dbg.value(metadata i64 %call144.i, i64 0, metadata !690, metadata !980) #2, !dbg !2321
  %cmp145.i = icmp eq i64 %call144.i, -1, !dbg !2322
  br i1 %cmp145.i, label %land.lhs.true.147.i, label %if.else.151.i, !dbg !2324

land.lhs.true.147.i:                              ; preds = %if.end.143.i
  %call148.i = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2325
  %tobool149.i = icmp eq %struct._object* %call148.i, null, !dbg !2325
  br i1 %tobool149.i, label %if.else.159.i, label %convertsimple.exit, !dbg !2327

if.else.151.i:                                    ; preds = %if.end.143.i
  %cmp152.i = icmp sgt i64 %call144.i, 2147483647, !dbg !2328
  br i1 %cmp152.i, label %if.then.154.i, label %if.else.155.i, !dbg !2330

if.then.154.i:                                    ; preds = %if.else.151.i
  %54 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2331, !tbaa !993
  tail call void @PyErr_SetString(%struct._object* %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.35, i64 0, i64 0)) #2, !dbg !2333
  br label %convertsimple.exit, !dbg !2170

if.else.155.i:                                    ; preds = %if.else.151.i
  %cmp156.i = icmp slt i64 %call144.i, -2147483648, !dbg !2334
  br i1 %cmp156.i, label %if.then.158.i, label %if.else.159.i, !dbg !2336

if.then.158.i:                                    ; preds = %if.else.155.i
  %55 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2337, !tbaa !993
  tail call void @PyErr_SetString(%struct._object* %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i64 0, i64 0)) #2, !dbg !2339
  br label %convertsimple.exit, !dbg !2170

if.else.159.i:                                    ; preds = %if.else.155.i, %land.lhs.true.147.i
  %conv160.i = trunc i64 %call144.i to i32, !dbg !2340
  store i32 %conv160.i, i32* %52, align 4, !dbg !2341, !tbaa !1059
  br label %if.then.14, !dbg !2170

sw.bb.167.i:                                      ; preds = %if.else
  %gp_offset_p170.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 0, !dbg !2342
  %gp_offset171.i = load i32, i32* %gp_offset_p170.i, align 4, !dbg !2342
  %fits_in_gp172.i = icmp ult i32 %gp_offset171.i, 41, !dbg !2342
  br i1 %fits_in_gp172.i, label %vaarg.in_reg.173.i, label %vaarg.in_mem.175.i, !dbg !2342

vaarg.in_reg.173.i:                               ; preds = %sw.bb.167.i
  %56 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !2343
  %reg_save_area174.i = load i8*, i8** %56, align 8, !dbg !2343
  %57 = sext i32 %gp_offset171.i to i64, !dbg !2343
  %58 = getelementptr i8, i8* %reg_save_area174.i, i64 %57, !dbg !2343
  %59 = add i32 %gp_offset171.i, 8, !dbg !2343
  store i32 %59, i32* %gp_offset_p170.i, align 4, !dbg !2343
  br label %vaarg.end.179.i, !dbg !2343

vaarg.in_mem.175.i:                               ; preds = %sw.bb.167.i
  %overflow_arg_area_p176.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !2345
  %overflow_arg_area177.i = load i8*, i8** %overflow_arg_area_p176.i, align 8, !dbg !2345
  %overflow_arg_area.next178.i = getelementptr i8, i8* %overflow_arg_area177.i, i64 8, !dbg !2345
  store i8* %overflow_arg_area.next178.i, i8** %overflow_arg_area_p176.i, align 8, !dbg !2345
  br label %vaarg.end.179.i, !dbg !2345

vaarg.end.179.i:                                  ; preds = %vaarg.in_mem.175.i, %vaarg.in_reg.173.i
  %vaarg.addr180.in.i = phi i8* [ %58, %vaarg.in_reg.173.i ], [ %overflow_arg_area177.i, %vaarg.in_mem.175.i ], !dbg !2170
  %vaarg.addr180.i = bitcast i8* %vaarg.addr180.in.i to i32**, !dbg !2342
  %60 = load i32*, i32** %vaarg.addr180.i, align 8, !dbg !2347
  tail call void @llvm.dbg.value(metadata i32* %60, i64 0, metadata !691, metadata !980) #2, !dbg !2350
  %arg.idx2301.i = getelementptr %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !2170
  %arg.idx2301.val.i = load %struct._typeobject*, %struct._typeobject** %arg.idx2301.i, align 8, !dbg !2170, !tbaa !1179
  %cmp.i.2335.i = icmp eq %struct._typeobject* %arg.idx2301.val.i, @PyFloat_Type, !dbg !2351
  br i1 %cmp.i.2335.i, label %float_argument_error.exit2341.i, label %lor.lhs.false.i.2338.i, !dbg !2351

lor.lhs.false.i.2338.i:                           ; preds = %vaarg.end.179.i
  %call.i.2336.i = tail call i32 @PyType_IsSubtype(%struct._typeobject* %arg.idx2301.val.i, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !2354
  %tobool.i.2337.i = icmp eq i32 %call.i.2336.i, 0, !dbg !2354
  br i1 %tobool.i.2337.i, label %if.end.185.i, label %float_argument_error.exit2341.i, !dbg !2355

float_argument_error.exit2341.i:                  ; preds = %lor.lhs.false.i.2338.i, %vaarg.end.179.i
  %61 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2356, !tbaa !993
  tail call void @PyErr_SetString(%struct._object* %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.65, i64 0, i64 0)) #2, !dbg !2357
  br label %convertsimple.exit, !dbg !2358

if.end.185.i:                                     ; preds = %lor.lhs.false.i.2338.i
  %call186.i = tail call i64 @PyLong_AsUnsignedLongMask(%struct._object* %arg) #2, !dbg !2359
  %conv187.i = trunc i64 %call186.i to i32, !dbg !2360
  tail call void @llvm.dbg.value(metadata i32 %conv187.i, i64 0, metadata !694, metadata !980) #2, !dbg !2361
  %cmp188.i = icmp eq i32 %conv187.i, -1, !dbg !2362
  br i1 %cmp188.i, label %land.lhs.true.190.i, label %if.else.194.i, !dbg !2364

land.lhs.true.190.i:                              ; preds = %if.end.185.i
  %call191.i = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2365
  %tobool192.i = icmp eq %struct._object* %call191.i, null, !dbg !2365
  br i1 %tobool192.i, label %if.else.194.i, label %convertsimple.exit, !dbg !2367

if.else.194.i:                                    ; preds = %land.lhs.true.190.i, %if.end.185.i
  store i32 %conv187.i, i32* %60, align 4, !dbg !2368, !tbaa !1059
  br label %if.then.14, !dbg !2170

sw.bb.199.i:                                      ; preds = %if.else
  %gp_offset_p202.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 0, !dbg !2369
  %gp_offset203.i = load i32, i32* %gp_offset_p202.i, align 4, !dbg !2369
  %fits_in_gp204.i = icmp ult i32 %gp_offset203.i, 41, !dbg !2369
  br i1 %fits_in_gp204.i, label %vaarg.in_reg.205.i, label %vaarg.in_mem.207.i, !dbg !2369

vaarg.in_reg.205.i:                               ; preds = %sw.bb.199.i
  %62 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !2370
  %reg_save_area206.i = load i8*, i8** %62, align 8, !dbg !2370
  %63 = sext i32 %gp_offset203.i to i64, !dbg !2370
  %64 = getelementptr i8, i8* %reg_save_area206.i, i64 %63, !dbg !2370
  %65 = add i32 %gp_offset203.i, 8, !dbg !2370
  store i32 %65, i32* %gp_offset_p202.i, align 4, !dbg !2370
  br label %vaarg.end.211.i, !dbg !2370

vaarg.in_mem.207.i:                               ; preds = %sw.bb.199.i
  %overflow_arg_area_p208.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !2372
  %overflow_arg_area209.i = load i8*, i8** %overflow_arg_area_p208.i, align 8, !dbg !2372
  %overflow_arg_area.next210.i = getelementptr i8, i8* %overflow_arg_area209.i, i64 8, !dbg !2372
  store i8* %overflow_arg_area.next210.i, i8** %overflow_arg_area_p208.i, align 8, !dbg !2372
  br label %vaarg.end.211.i, !dbg !2372

vaarg.end.211.i:                                  ; preds = %vaarg.in_mem.207.i, %vaarg.in_reg.205.i
  %vaarg.addr212.in.i = phi i8* [ %64, %vaarg.in_reg.205.i ], [ %overflow_arg_area209.i, %vaarg.in_mem.207.i ], !dbg !2170
  %vaarg.addr212.i = bitcast i8* %vaarg.addr212.in.i to i64**, !dbg !2369
  %66 = load i64*, i64** %vaarg.addr212.i, align 8, !dbg !2374
  tail call void @llvm.dbg.value(metadata i64* %66, i64 0, metadata !697, metadata !980) #2, !dbg !2377
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !698, metadata !980) #2, !dbg !2378
  %arg.idx2300.i = getelementptr %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !2170
  %arg.idx2300.val.i = load %struct._typeobject*, %struct._typeobject** %arg.idx2300.i, align 8, !dbg !2170, !tbaa !1179
  %cmp.i.2342.i = icmp eq %struct._typeobject* %arg.idx2300.val.i, @PyFloat_Type, !dbg !2379
  br i1 %cmp.i.2342.i, label %float_argument_error.exit2348.i, label %lor.lhs.false.i.2345.i, !dbg !2379

lor.lhs.false.i.2345.i:                           ; preds = %vaarg.end.211.i
  %call.i.2343.i = tail call i32 @PyType_IsSubtype(%struct._typeobject* %arg.idx2300.val.i, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !2382
  %tobool.i.2344.i = icmp eq i32 %call.i.2343.i, 0, !dbg !2382
  br i1 %tobool.i.2344.i, label %if.end.217.i, label %float_argument_error.exit2348.i, !dbg !2383

float_argument_error.exit2348.i:                  ; preds = %lor.lhs.false.i.2345.i, %vaarg.end.211.i
  %67 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2384, !tbaa !993
  tail call void @PyErr_SetString(%struct._object* %67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.65, i64 0, i64 0)) #2, !dbg !2385
  br label %convertsimple.exit, !dbg !2386

if.end.217.i:                                     ; preds = %lor.lhs.false.i.2345.i
  %call218.i = tail call %struct._object* @PyNumber_Index(%struct._object* %arg) #2, !dbg !2387
  tail call void @llvm.dbg.value(metadata %struct._object* %call218.i, i64 0, metadata !695, metadata !980) #2, !dbg !2388
  %cmp219.i = icmp eq %struct._object* %call218.i, null, !dbg !2389
  br i1 %cmp219.i, label %land.lhs.true.231.i, label %if.then.221.i, !dbg !2390

if.then.221.i:                                    ; preds = %if.end.217.i
  %call222.i = tail call i64 @PyLong_AsSsize_t(%struct._object* %call218.i) #2, !dbg !2391
  tail call void @llvm.dbg.value(metadata i64 %call222.i, i64 0, metadata !698, metadata !980) #2, !dbg !2378
  tail call void @llvm.dbg.value(metadata %struct._object* %call218.i, i64 0, metadata !699, metadata !980) #2, !dbg !2392
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call218.i, i64 0, i32 0, !dbg !2394
  %68 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2394, !tbaa !2135
  %dec.i = add i64 %68, -1, !dbg !2394
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2394, !tbaa !2135
  %cmp223.i = icmp eq i64 %dec.i, 0, !dbg !2394
  br i1 %cmp223.i, label %if.else.226.i, label %if.end.228.i, !dbg !2396

if.else.226.i:                                    ; preds = %if.then.221.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call218.i, i64 0, i32 1, !dbg !2397
  %69 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2397, !tbaa !1179
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %69, i64 0, i32 4, !dbg !2397
  %70 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2397, !tbaa !2139
  tail call void %70(%struct._object* %call218.i) #2, !dbg !2397
  br label %if.end.228.i, !dbg !2170

if.end.228.i:                                     ; preds = %if.else.226.i, %if.then.221.i
  %cmp229.i = icmp eq i64 %call222.i, -1, !dbg !2399
  br i1 %cmp229.i, label %land.lhs.true.231.i, label %if.end.235.i, !dbg !2401

land.lhs.true.231.i:                              ; preds = %if.end.228.i, %if.end.217.i
  %call232.i = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2402
  %tobool233.i = icmp eq %struct._object* %call232.i, null, !dbg !2402
  br i1 %tobool233.i, label %if.end.235.i, label %convertsimple.exit, !dbg !2404

if.end.235.i:                                     ; preds = %land.lhs.true.231.i, %if.end.228.i
  %ival213.02735.i = phi i64 [ -1, %land.lhs.true.231.i ], [ %call222.i, %if.end.228.i ], !dbg !2170
  store i64 %ival213.02735.i, i64* %66, align 8, !dbg !2405, !tbaa !1765
  br label %if.then.14, !dbg !2170

sw.bb.240.i:                                      ; preds = %if.else
  %gp_offset_p243.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 0, !dbg !2406
  %gp_offset244.i = load i32, i32* %gp_offset_p243.i, align 4, !dbg !2406
  %fits_in_gp245.i = icmp ult i32 %gp_offset244.i, 41, !dbg !2406
  br i1 %fits_in_gp245.i, label %vaarg.in_reg.246.i, label %vaarg.in_mem.248.i, !dbg !2406

vaarg.in_reg.246.i:                               ; preds = %sw.bb.240.i
  %71 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !2407
  %reg_save_area247.i = load i8*, i8** %71, align 8, !dbg !2407
  %72 = sext i32 %gp_offset244.i to i64, !dbg !2407
  %73 = getelementptr i8, i8* %reg_save_area247.i, i64 %72, !dbg !2407
  %74 = add i32 %gp_offset244.i, 8, !dbg !2407
  store i32 %74, i32* %gp_offset_p243.i, align 4, !dbg !2407
  br label %vaarg.end.252.i, !dbg !2407

vaarg.in_mem.248.i:                               ; preds = %sw.bb.240.i
  %overflow_arg_area_p249.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !2409
  %overflow_arg_area250.i = load i8*, i8** %overflow_arg_area_p249.i, align 8, !dbg !2409
  %overflow_arg_area.next251.i = getelementptr i8, i8* %overflow_arg_area250.i, i64 8, !dbg !2409
  store i8* %overflow_arg_area.next251.i, i8** %overflow_arg_area_p249.i, align 8, !dbg !2409
  br label %vaarg.end.252.i, !dbg !2409

vaarg.end.252.i:                                  ; preds = %vaarg.in_mem.248.i, %vaarg.in_reg.246.i
  %vaarg.addr253.in.i = phi i8* [ %73, %vaarg.in_reg.246.i ], [ %overflow_arg_area250.i, %vaarg.in_mem.248.i ], !dbg !2170
  %vaarg.addr253.i = bitcast i8* %vaarg.addr253.in.i to i64**, !dbg !2406
  %75 = load i64*, i64** %vaarg.addr253.i, align 8, !dbg !2411
  tail call void @llvm.dbg.value(metadata i64* %75, i64 0, metadata !703, metadata !980) #2, !dbg !2414
  %arg.idx2299.i = getelementptr %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !2170
  %arg.idx2299.val.i = load %struct._typeobject*, %struct._typeobject** %arg.idx2299.i, align 8, !dbg !2170, !tbaa !1179
  %cmp.i.2349.i = icmp eq %struct._typeobject* %arg.idx2299.val.i, @PyFloat_Type, !dbg !2415
  br i1 %cmp.i.2349.i, label %float_argument_error.exit2355.i, label %lor.lhs.false.i.2352.i, !dbg !2415

lor.lhs.false.i.2352.i:                           ; preds = %vaarg.end.252.i
  %call.i.2350.i = tail call i32 @PyType_IsSubtype(%struct._typeobject* %arg.idx2299.val.i, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !2418
  %tobool.i.2351.i = icmp eq i32 %call.i.2350.i, 0, !dbg !2418
  br i1 %tobool.i.2351.i, label %if.end.258.i, label %float_argument_error.exit2355.i, !dbg !2419

float_argument_error.exit2355.i:                  ; preds = %lor.lhs.false.i.2352.i, %vaarg.end.252.i
  %76 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2420, !tbaa !993
  tail call void @PyErr_SetString(%struct._object* %76, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.65, i64 0, i64 0)) #2, !dbg !2421
  br label %convertsimple.exit, !dbg !2422

if.end.258.i:                                     ; preds = %lor.lhs.false.i.2352.i
  %call259.i = tail call i64 @PyLong_AsLong(%struct._object* %arg) #2, !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %call259.i, i64 0, metadata !706, metadata !980) #2, !dbg !2424
  %cmp260.i = icmp eq i64 %call259.i, -1, !dbg !2425
  br i1 %cmp260.i, label %land.lhs.true.262.i, label %if.else.266.i, !dbg !2427

land.lhs.true.262.i:                              ; preds = %if.end.258.i
  %call263.i = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2428
  %tobool264.i = icmp eq %struct._object* %call263.i, null, !dbg !2428
  br i1 %tobool264.i, label %if.else.266.i, label %convertsimple.exit, !dbg !2430

if.else.266.i:                                    ; preds = %land.lhs.true.262.i, %if.end.258.i
  store i64 %call259.i, i64* %75, align 8, !dbg !2431, !tbaa !1765
  br label %if.then.14, !dbg !2170

sw.bb.271.i:                                      ; preds = %if.else
  %gp_offset_p274.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 0, !dbg !2432
  %gp_offset275.i = load i32, i32* %gp_offset_p274.i, align 4, !dbg !2432
  %fits_in_gp276.i = icmp ult i32 %gp_offset275.i, 41, !dbg !2432
  br i1 %fits_in_gp276.i, label %vaarg.in_reg.277.i, label %vaarg.in_mem.279.i, !dbg !2432

vaarg.in_reg.277.i:                               ; preds = %sw.bb.271.i
  %77 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !2433
  %reg_save_area278.i = load i8*, i8** %77, align 8, !dbg !2433
  %78 = sext i32 %gp_offset275.i to i64, !dbg !2433
  %79 = getelementptr i8, i8* %reg_save_area278.i, i64 %78, !dbg !2433
  %80 = add i32 %gp_offset275.i, 8, !dbg !2433
  store i32 %80, i32* %gp_offset_p274.i, align 4, !dbg !2433
  br label %vaarg.end.283.i, !dbg !2433

vaarg.in_mem.279.i:                               ; preds = %sw.bb.271.i
  %overflow_arg_area_p280.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !2435
  %overflow_arg_area281.i = load i8*, i8** %overflow_arg_area_p280.i, align 8, !dbg !2435
  %overflow_arg_area.next282.i = getelementptr i8, i8* %overflow_arg_area281.i, i64 8, !dbg !2435
  store i8* %overflow_arg_area.next282.i, i8** %overflow_arg_area_p280.i, align 8, !dbg !2435
  br label %vaarg.end.283.i, !dbg !2435

vaarg.end.283.i:                                  ; preds = %vaarg.in_mem.279.i, %vaarg.in_reg.277.i
  %vaarg.addr284.in.i = phi i8* [ %79, %vaarg.in_reg.277.i ], [ %overflow_arg_area281.i, %vaarg.in_mem.279.i ], !dbg !2170
  %ob_type286.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !2437
  %81 = load %struct._typeobject*, %struct._typeobject** %ob_type286.i, align 8, !dbg !2437, !tbaa !1179
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %81, i64 0, i32 19, !dbg !2437
  %82 = load i64, i64* %tp_flags.i, align 8, !dbg !2437, !tbaa !1182
  %and.i = and i64 %82, 16777216, !dbg !2437
  %cmp287.i = icmp eq i64 %and.i, 0, !dbg !2437
  br i1 %cmp287.i, label %if.else.291.i, label %cleanup.294.thread.i, !dbg !2439

cleanup.294.thread.i:                             ; preds = %vaarg.end.283.i
  %vaarg.addr284.i = bitcast i8* %vaarg.addr284.in.i to i64**, !dbg !2432
  %83 = load i64*, i64** %vaarg.addr284.i, align 8, !dbg !2440
  %call290.i = tail call i64 @PyLong_AsUnsignedLongMask(%struct._object* %arg) #2, !dbg !2443
  tail call void @llvm.dbg.value(metadata i64 %call290.i, i64 0, metadata !710, metadata !980) #2, !dbg !2444
  store i64 %call290.i, i64* %83, align 8, !dbg !2445, !tbaa !1765
  br label %if.then.14, !dbg !2170

if.else.291.i:                                    ; preds = %vaarg.end.283.i
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i64 0, i64 0), i64 0, metadata !880, metadata !980) #2, !dbg !2446
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !2448
  tail call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !2449
  tail call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !2450
  %cmp.i.2356.i = icmp eq %struct._object* %arg, @_Py_NoneStruct, !dbg !2451
  br i1 %cmp.i.2356.i, label %cleanup.294.i, label %cond.false.i.i, !dbg !2452

cond.false.i.i:                                   ; preds = %if.else.291.i
  %tp_name.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %81, i64 0, i32 1, !dbg !2453
  %84 = load i8*, i8** %tp_name.i.i, align 8, !dbg !2453, !tbaa !2094
  br label %cleanup.294.i, !dbg !2452

cleanup.294.i:                                    ; preds = %cond.false.i.i, %if.else.291.i
  %cond.i.i = phi i8* [ %84, %cond.false.i.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.else.291.i ], !dbg !2452
  %call.i.2357.i = tail call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i64 0, i64 0), i8* %cond.i.i) #2, !dbg !2454
  br label %convertsimple.exit, !dbg !2170

sw.bb.297.i:                                      ; preds = %if.else
  %gp_offset_p300.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 0, !dbg !2455
  %gp_offset301.i = load i32, i32* %gp_offset_p300.i, align 4, !dbg !2455
  %fits_in_gp302.i = icmp ult i32 %gp_offset301.i, 41, !dbg !2455
  br i1 %fits_in_gp302.i, label %vaarg.in_reg.303.i, label %vaarg.in_mem.305.i, !dbg !2455

vaarg.in_reg.303.i:                               ; preds = %sw.bb.297.i
  %85 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !2456
  %reg_save_area304.i = load i8*, i8** %85, align 8, !dbg !2456
  %86 = sext i32 %gp_offset301.i to i64, !dbg !2456
  %87 = getelementptr i8, i8* %reg_save_area304.i, i64 %86, !dbg !2456
  %88 = add i32 %gp_offset301.i, 8, !dbg !2456
  store i32 %88, i32* %gp_offset_p300.i, align 4, !dbg !2456
  br label %vaarg.end.309.i, !dbg !2456

vaarg.in_mem.305.i:                               ; preds = %sw.bb.297.i
  %overflow_arg_area_p306.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !2458
  %overflow_arg_area307.i = load i8*, i8** %overflow_arg_area_p306.i, align 8, !dbg !2458
  %overflow_arg_area.next308.i = getelementptr i8, i8* %overflow_arg_area307.i, i64 8, !dbg !2458
  store i8* %overflow_arg_area.next308.i, i8** %overflow_arg_area_p306.i, align 8, !dbg !2458
  br label %vaarg.end.309.i, !dbg !2458

vaarg.end.309.i:                                  ; preds = %vaarg.in_mem.305.i, %vaarg.in_reg.303.i
  %vaarg.addr310.in.i = phi i8* [ %87, %vaarg.in_reg.303.i ], [ %overflow_arg_area307.i, %vaarg.in_mem.305.i ], !dbg !2170
  %vaarg.addr310.i = bitcast i8* %vaarg.addr310.in.i to i64**, !dbg !2455
  %89 = load i64*, i64** %vaarg.addr310.i, align 8, !dbg !2460
  tail call void @llvm.dbg.value(metadata i64* %89, i64 0, metadata !711, metadata !980) #2, !dbg !2463
  %arg.idx.i = getelementptr %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !2170
  %arg.idx.val.i = load %struct._typeobject*, %struct._typeobject** %arg.idx.i, align 8, !dbg !2170, !tbaa !1179
  %cmp.i.2358.i = icmp eq %struct._typeobject* %arg.idx.val.i, @PyFloat_Type, !dbg !2464
  br i1 %cmp.i.2358.i, label %float_argument_error.exit2364.i, label %lor.lhs.false.i.2361.i, !dbg !2464

lor.lhs.false.i.2361.i:                           ; preds = %vaarg.end.309.i
  %call.i.2359.i = tail call i32 @PyType_IsSubtype(%struct._typeobject* %arg.idx.val.i, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !2467
  %tobool.i.2360.i = icmp eq i32 %call.i.2359.i, 0, !dbg !2467
  br i1 %tobool.i.2360.i, label %if.end.315.i, label %float_argument_error.exit2364.i, !dbg !2468

float_argument_error.exit2364.i:                  ; preds = %lor.lhs.false.i.2361.i, %vaarg.end.309.i
  %90 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2469, !tbaa !993
  tail call void @PyErr_SetString(%struct._object* %90, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.65, i64 0, i64 0)) #2, !dbg !2470
  br label %convertsimple.exit, !dbg !2471

if.end.315.i:                                     ; preds = %lor.lhs.false.i.2361.i
  %call316.i = tail call i64 @PyLong_AsLongLong(%struct._object* %arg) #2, !dbg !2472
  tail call void @llvm.dbg.value(metadata i64 %call316.i, i64 0, metadata !714, metadata !980) #2, !dbg !2473
  %cmp317.i = icmp eq i64 %call316.i, -1, !dbg !2474
  br i1 %cmp317.i, label %land.lhs.true.319.i, label %if.else.323.i, !dbg !2476

land.lhs.true.319.i:                              ; preds = %if.end.315.i
  %call320.i = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2477
  %tobool321.i = icmp eq %struct._object* %call320.i, null, !dbg !2477
  br i1 %tobool321.i, label %if.else.323.i, label %convertsimple.exit, !dbg !2479

if.else.323.i:                                    ; preds = %land.lhs.true.319.i, %if.end.315.i
  store i64 %call316.i, i64* %89, align 8, !dbg !2480, !tbaa !2481
  br label %if.then.14, !dbg !2170

sw.bb.328.i:                                      ; preds = %if.else
  %gp_offset_p331.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 0, !dbg !2483
  %gp_offset332.i = load i32, i32* %gp_offset_p331.i, align 4, !dbg !2483
  %fits_in_gp333.i = icmp ult i32 %gp_offset332.i, 41, !dbg !2483
  br i1 %fits_in_gp333.i, label %vaarg.in_reg.334.i, label %vaarg.in_mem.336.i, !dbg !2483

vaarg.in_reg.334.i:                               ; preds = %sw.bb.328.i
  %91 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !2484
  %reg_save_area335.i = load i8*, i8** %91, align 8, !dbg !2484
  %92 = sext i32 %gp_offset332.i to i64, !dbg !2484
  %93 = getelementptr i8, i8* %reg_save_area335.i, i64 %92, !dbg !2484
  %94 = add i32 %gp_offset332.i, 8, !dbg !2484
  store i32 %94, i32* %gp_offset_p331.i, align 4, !dbg !2484
  br label %vaarg.end.340.i, !dbg !2484

vaarg.in_mem.336.i:                               ; preds = %sw.bb.328.i
  %overflow_arg_area_p337.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !2486
  %overflow_arg_area338.i = load i8*, i8** %overflow_arg_area_p337.i, align 8, !dbg !2486
  %overflow_arg_area.next339.i = getelementptr i8, i8* %overflow_arg_area338.i, i64 8, !dbg !2486
  store i8* %overflow_arg_area.next339.i, i8** %overflow_arg_area_p337.i, align 8, !dbg !2486
  br label %vaarg.end.340.i, !dbg !2486

vaarg.end.340.i:                                  ; preds = %vaarg.in_mem.336.i, %vaarg.in_reg.334.i
  %vaarg.addr341.in.i = phi i8* [ %93, %vaarg.in_reg.334.i ], [ %overflow_arg_area338.i, %vaarg.in_mem.336.i ], !dbg !2170
  %ob_type343.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !2488
  %95 = load %struct._typeobject*, %struct._typeobject** %ob_type343.i, align 8, !dbg !2488, !tbaa !1179
  %tp_flags344.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %95, i64 0, i32 19, !dbg !2488
  %96 = load i64, i64* %tp_flags344.i, align 8, !dbg !2488, !tbaa !1182
  %and345.i = and i64 %96, 16777216, !dbg !2488
  %cmp346.i = icmp eq i64 %and345.i, 0, !dbg !2488
  br i1 %cmp346.i, label %if.else.350.i, label %cleanup.353.thread.i, !dbg !2490

cleanup.353.thread.i:                             ; preds = %vaarg.end.340.i
  %vaarg.addr341.i = bitcast i8* %vaarg.addr341.in.i to i64**, !dbg !2483
  %97 = load i64*, i64** %vaarg.addr341.i, align 8, !dbg !2491
  %call349.i = tail call i64 @PyLong_AsUnsignedLongLongMask(%struct._object* %arg) #2, !dbg !2494
  tail call void @llvm.dbg.value(metadata i64 %call349.i, i64 0, metadata !719, metadata !980) #2, !dbg !2495
  store i64 %call349.i, i64* %97, align 8, !dbg !2496, !tbaa !2481
  br label %if.then.14, !dbg !2170

if.else.350.i:                                    ; preds = %vaarg.end.340.i
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0), i64 0, metadata !880, metadata !980) #2, !dbg !2497
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !2499
  tail call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !2500
  tail call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !2501
  %cmp.i.2365.i = icmp eq %struct._object* %arg, @_Py_NoneStruct, !dbg !2502
  br i1 %cmp.i.2365.i, label %cleanup.353.i, label %cond.false.i.2368.i, !dbg !2503

cond.false.i.2368.i:                              ; preds = %if.else.350.i
  %tp_name.i.2367.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %95, i64 0, i32 1, !dbg !2504
  %98 = load i8*, i8** %tp_name.i.2367.i, align 8, !dbg !2504, !tbaa !2094
  br label %cleanup.353.i, !dbg !2503

cleanup.353.i:                                    ; preds = %cond.false.i.2368.i, %if.else.350.i
  %cond.i.2369.i = phi i8* [ %98, %cond.false.i.2368.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.else.350.i ], !dbg !2503
  %call.i.2370.i = tail call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0), i8* %cond.i.2369.i) #2, !dbg !2505
  br label %convertsimple.exit, !dbg !2170

sw.bb.356.i:                                      ; preds = %if.else
  %gp_offset_p359.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 0, !dbg !2506
  %gp_offset360.i = load i32, i32* %gp_offset_p359.i, align 4, !dbg !2506
  %fits_in_gp361.i = icmp ult i32 %gp_offset360.i, 41, !dbg !2506
  br i1 %fits_in_gp361.i, label %vaarg.in_reg.362.i, label %vaarg.in_mem.364.i, !dbg !2506

vaarg.in_reg.362.i:                               ; preds = %sw.bb.356.i
  %99 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !2507
  %reg_save_area363.i = load i8*, i8** %99, align 8, !dbg !2507
  %100 = sext i32 %gp_offset360.i to i64, !dbg !2507
  %101 = getelementptr i8, i8* %reg_save_area363.i, i64 %100, !dbg !2507
  %102 = add i32 %gp_offset360.i, 8, !dbg !2507
  store i32 %102, i32* %gp_offset_p359.i, align 4, !dbg !2507
  br label %vaarg.end.368.i, !dbg !2507

vaarg.in_mem.364.i:                               ; preds = %sw.bb.356.i
  %overflow_arg_area_p365.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !2509
  %overflow_arg_area366.i = load i8*, i8** %overflow_arg_area_p365.i, align 8, !dbg !2509
  %overflow_arg_area.next367.i = getelementptr i8, i8* %overflow_arg_area366.i, i64 8, !dbg !2509
  store i8* %overflow_arg_area.next367.i, i8** %overflow_arg_area_p365.i, align 8, !dbg !2509
  br label %vaarg.end.368.i, !dbg !2509

vaarg.end.368.i:                                  ; preds = %vaarg.in_mem.364.i, %vaarg.in_reg.362.i
  %vaarg.addr369.in.i = phi i8* [ %101, %vaarg.in_reg.362.i ], [ %overflow_arg_area366.i, %vaarg.in_mem.364.i ], !dbg !2170
  %vaarg.addr369.i = bitcast i8* %vaarg.addr369.in.i to float**, !dbg !2506
  %103 = load float*, float** %vaarg.addr369.i, align 8, !dbg !2511
  tail call void @llvm.dbg.value(metadata float* %103, i64 0, metadata !720, metadata !980) #2, !dbg !2514
  %call370.i = tail call double @PyFloat_AsDouble(%struct._object* %arg) #2, !dbg !2515
  tail call void @llvm.dbg.value(metadata double %call370.i, i64 0, metadata !723, metadata !980) #2, !dbg !2516
  %call371.i = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2517
  %tobool372.i = icmp eq %struct._object* %call371.i, null, !dbg !2517
  br i1 %tobool372.i, label %if.else.374.i, label %convertsimple.exit, !dbg !2519

if.else.374.i:                                    ; preds = %vaarg.end.368.i
  %conv375.i = fptrunc double %call370.i to float, !dbg !2520
  store float %conv375.i, float* %103, align 4, !dbg !2521, !tbaa !2522
  br label %if.then.14, !dbg !2170

sw.bb.380.i:                                      ; preds = %if.else
  %gp_offset_p383.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 0, !dbg !2524
  %gp_offset384.i = load i32, i32* %gp_offset_p383.i, align 4, !dbg !2524
  %fits_in_gp385.i = icmp ult i32 %gp_offset384.i, 41, !dbg !2524
  br i1 %fits_in_gp385.i, label %vaarg.in_reg.386.i, label %vaarg.in_mem.388.i, !dbg !2524

vaarg.in_reg.386.i:                               ; preds = %sw.bb.380.i
  %104 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !2525
  %reg_save_area387.i = load i8*, i8** %104, align 8, !dbg !2525
  %105 = sext i32 %gp_offset384.i to i64, !dbg !2525
  %106 = getelementptr i8, i8* %reg_save_area387.i, i64 %105, !dbg !2525
  %107 = add i32 %gp_offset384.i, 8, !dbg !2525
  store i32 %107, i32* %gp_offset_p383.i, align 4, !dbg !2525
  br label %vaarg.end.392.i, !dbg !2525

vaarg.in_mem.388.i:                               ; preds = %sw.bb.380.i
  %overflow_arg_area_p389.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !2527
  %overflow_arg_area390.i = load i8*, i8** %overflow_arg_area_p389.i, align 8, !dbg !2527
  %overflow_arg_area.next391.i = getelementptr i8, i8* %overflow_arg_area390.i, i64 8, !dbg !2527
  store i8* %overflow_arg_area.next391.i, i8** %overflow_arg_area_p389.i, align 8, !dbg !2527
  br label %vaarg.end.392.i, !dbg !2527

vaarg.end.392.i:                                  ; preds = %vaarg.in_mem.388.i, %vaarg.in_reg.386.i
  %vaarg.addr393.in.i = phi i8* [ %106, %vaarg.in_reg.386.i ], [ %overflow_arg_area390.i, %vaarg.in_mem.388.i ], !dbg !2170
  %vaarg.addr393.i = bitcast i8* %vaarg.addr393.in.i to double**, !dbg !2524
  %108 = load double*, double** %vaarg.addr393.i, align 8, !dbg !2529
  tail call void @llvm.dbg.value(metadata double* %108, i64 0, metadata !725, metadata !980) #2, !dbg !2532
  %call395.i = tail call double @PyFloat_AsDouble(%struct._object* %arg) #2, !dbg !2533
  tail call void @llvm.dbg.value(metadata double %call395.i, i64 0, metadata !728, metadata !980) #2, !dbg !2534
  %call396.i = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2535
  %tobool397.i = icmp eq %struct._object* %call396.i, null, !dbg !2535
  br i1 %tobool397.i, label %if.else.399.i, label %convertsimple.exit, !dbg !2537

if.else.399.i:                                    ; preds = %vaarg.end.392.i
  store double %call395.i, double* %108, align 8, !dbg !2538, !tbaa !2539
  br label %if.then.14, !dbg !2170

sw.bb.404.i:                                      ; preds = %if.else
  %gp_offset_p407.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 0, !dbg !2541
  %gp_offset408.i = load i32, i32* %gp_offset_p407.i, align 4, !dbg !2541
  %fits_in_gp409.i = icmp ult i32 %gp_offset408.i, 41, !dbg !2541
  br i1 %fits_in_gp409.i, label %vaarg.in_reg.410.i, label %vaarg.in_mem.412.i, !dbg !2541

vaarg.in_reg.410.i:                               ; preds = %sw.bb.404.i
  %109 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !2542
  %reg_save_area411.i = load i8*, i8** %109, align 8, !dbg !2542
  %110 = sext i32 %gp_offset408.i to i64, !dbg !2542
  %111 = getelementptr i8, i8* %reg_save_area411.i, i64 %110, !dbg !2542
  %112 = add i32 %gp_offset408.i, 8, !dbg !2542
  store i32 %112, i32* %gp_offset_p407.i, align 4, !dbg !2542
  br label %vaarg.end.416.i, !dbg !2542

vaarg.in_mem.412.i:                               ; preds = %sw.bb.404.i
  %overflow_arg_area_p413.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !2544
  %overflow_arg_area414.i = load i8*, i8** %overflow_arg_area_p413.i, align 8, !dbg !2544
  %overflow_arg_area.next415.i = getelementptr i8, i8* %overflow_arg_area414.i, i64 8, !dbg !2544
  store i8* %overflow_arg_area.next415.i, i8** %overflow_arg_area_p413.i, align 8, !dbg !2544
  br label %vaarg.end.416.i, !dbg !2544

vaarg.end.416.i:                                  ; preds = %vaarg.in_mem.412.i, %vaarg.in_reg.410.i
  %vaarg.addr417.in.i = phi i8* [ %111, %vaarg.in_reg.410.i ], [ %overflow_arg_area414.i, %vaarg.in_mem.412.i ], !dbg !2170
  %vaarg.addr417.i = bitcast i8* %vaarg.addr417.in.i to %struct.Py_complex**, !dbg !2541
  %113 = load %struct.Py_complex*, %struct.Py_complex** %vaarg.addr417.i, align 8, !dbg !2546
  tail call void @llvm.dbg.value(metadata %struct.Py_complex* %113, i64 0, metadata !729, metadata !980) #2, !dbg !2549
  tail call void @llvm.dbg.declare(metadata %struct.Py_complex* undef, metadata !738, metadata !980) #2, !dbg !2550
  %call418.i = tail call { double, double } @PyComplex_AsCComplex(%struct._object* %arg) #2, !dbg !2551
  %call419.i = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2552
  %tobool420.i = icmp eq %struct._object* %call419.i, null, !dbg !2552
  br i1 %tobool420.i, label %if.else.422.i, label %convertsimple.exit, !dbg !2554

if.else.422.i:                                    ; preds = %vaarg.end.416.i
  %114 = extractvalue { double, double } %call418.i, 1, !dbg !2551
  %115 = extractvalue { double, double } %call418.i, 0, !dbg !2551
  %cval.sroa.0.0..sroa_idx.i = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %113, i64 0, i32 0, !dbg !2555
  store double %115, double* %cval.sroa.0.0..sroa_idx.i, align 8, !dbg !2555
  %cval.sroa.4.0..sroa_idx1852.i = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %113, i64 0, i32 1, !dbg !2555
  store double %114, double* %cval.sroa.4.0..sroa_idx1852.i, align 8, !dbg !2555
  br label %if.then.14, !dbg !2170

sw.bb.427.i:                                      ; preds = %if.else
  %gp_offset_p430.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 0, !dbg !2556
  %gp_offset431.i = load i32, i32* %gp_offset_p430.i, align 4, !dbg !2556
  %fits_in_gp432.i = icmp ult i32 %gp_offset431.i, 41, !dbg !2556
  br i1 %fits_in_gp432.i, label %vaarg.in_reg.433.i, label %vaarg.in_mem.435.i, !dbg !2556

vaarg.in_reg.433.i:                               ; preds = %sw.bb.427.i
  %116 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !2557
  %reg_save_area434.i = load i8*, i8** %116, align 8, !dbg !2557
  %117 = sext i32 %gp_offset431.i to i64, !dbg !2557
  %118 = getelementptr i8, i8* %reg_save_area434.i, i64 %117, !dbg !2557
  %119 = add i32 %gp_offset431.i, 8, !dbg !2557
  store i32 %119, i32* %gp_offset_p430.i, align 4, !dbg !2557
  br label %vaarg.end.439.i, !dbg !2557

vaarg.in_mem.435.i:                               ; preds = %sw.bb.427.i
  %overflow_arg_area_p436.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !2559
  %overflow_arg_area437.i = load i8*, i8** %overflow_arg_area_p436.i, align 8, !dbg !2559
  %overflow_arg_area.next438.i = getelementptr i8, i8* %overflow_arg_area437.i, i64 8, !dbg !2559
  store i8* %overflow_arg_area.next438.i, i8** %overflow_arg_area_p436.i, align 8, !dbg !2559
  br label %vaarg.end.439.i, !dbg !2559

vaarg.end.439.i:                                  ; preds = %vaarg.in_mem.435.i, %vaarg.in_reg.433.i
  %vaarg.addr440.in.i = phi i8* [ %118, %vaarg.in_reg.433.i ], [ %overflow_arg_area437.i, %vaarg.in_mem.435.i ], !dbg !2170
  %vaarg.addr440.i = bitcast i8* %vaarg.addr440.in.i to i8**, !dbg !2556
  %120 = load i8*, i8** %vaarg.addr440.i, align 8, !dbg !2561
  tail call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !739, metadata !980) #2, !dbg !2564
  %ob_type441.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !2565
  %121 = load %struct._typeobject*, %struct._typeobject** %ob_type441.i, align 8, !dbg !2565, !tbaa !1179
  %tp_flags442.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %121, i64 0, i32 19, !dbg !2565
  %122 = load i64, i64* %tp_flags442.i, align 8, !dbg !2565, !tbaa !1182
  %and443.i = and i64 %122, 134217728, !dbg !2565
  %cmp444.i = icmp eq i64 %and443.i, 0, !dbg !2565
  br i1 %cmp444.i, label %if.else.452.i, label %land.lhs.true.446.i, !dbg !2567

land.lhs.true.446.i:                              ; preds = %vaarg.end.439.i
  %call447.i = tail call i64 @PyBytes_Size(%struct._object* %arg) #2, !dbg !2568
  %cmp448.i = icmp eq i64 %call447.i, 1, !dbg !2569
  br i1 %cmp448.i, label %if.then.450.i, label %if.else.452thread-pre-split.i, !dbg !2570

if.then.450.i:                                    ; preds = %land.lhs.true.446.i
  %ob_sval.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 2, !dbg !2571
  %arraydecay451.i = bitcast %struct._object* %ob_sval.i to i8*, !dbg !2571
  br label %cleanup.470.thread.i, !dbg !2572

if.else.452thread-pre-split.i:                    ; preds = %land.lhs.true.446.i
  %.pr.i = load %struct._typeobject*, %struct._typeobject** %ob_type441.i, align 8, !dbg !2573, !tbaa !1179
  br label %if.else.452.i, !dbg !2573

if.else.452.i:                                    ; preds = %if.else.452thread-pre-split.i, %vaarg.end.439.i
  %123 = phi %struct._typeobject* [ %.pr.i, %if.else.452thread-pre-split.i ], [ %121, %vaarg.end.439.i ], !dbg !2573
  %cmp454.i = icmp eq %struct._typeobject* %123, @PyByteArray_Type, !dbg !2573
  br i1 %cmp454.i, label %land.lhs.true.459.i, label %lor.lhs.false.i, !dbg !2573

lor.lhs.false.i:                                  ; preds = %if.else.452.i
  %call457.i = tail call i32 @PyType_IsSubtype(%struct._typeobject* %123, %struct._typeobject* nonnull @PyByteArray_Type) #2, !dbg !2575
  %tobool458.i = icmp eq i32 %call457.i, 0, !dbg !2575
  br i1 %tobool458.i, label %if.else.466.i, label %land.lhs.true.459.i, !dbg !2577

land.lhs.true.459.i:                              ; preds = %lor.lhs.false.i, %if.else.452.i
  %call460.i = tail call i64 @PyByteArray_Size(%struct._object* %arg) #2, !dbg !2578
  %cmp461.i = icmp eq i64 %call460.i, 1, !dbg !2579
  br i1 %cmp461.i, label %if.then.463.i, label %if.else.466.i, !dbg !2580

if.then.463.i:                                    ; preds = %land.lhs.true.459.i
  %124 = getelementptr inbounds %struct._object, %struct._object* %arg, i64 1, i32 0, !dbg !2581
  %125 = load i64, i64* %124, align 8, !dbg !2581, !tbaa !1196
  %tobool464.i = icmp eq i64 %125, 0, !dbg !2581
  br i1 %tobool464.i, label %cleanup.470.thread.i, label %cond.true.i, !dbg !2581

cond.true.i:                                      ; preds = %if.then.463.i
  %ob_start.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 2, i32 1, !dbg !2582
  %126 = bitcast %struct._typeobject** %ob_start.i to i8**, !dbg !2582
  %127 = load i8*, i8** %126, align 8, !dbg !2582, !tbaa !2584
  br label %cleanup.470.thread.i, !dbg !2582

if.else.466.i:                                    ; preds = %land.lhs.true.459.i, %lor.lhs.false.i
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.39, i64 0, i64 0), i64 0, metadata !880, metadata !980) #2, !dbg !2586
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !2588
  tail call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !2589
  tail call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !2590
  %cmp.i.2372.i = icmp eq %struct._object* %arg, @_Py_NoneStruct, !dbg !2591
  br i1 %cmp.i.2372.i, label %cleanup.470.i, label %cond.false.i.2375.i, !dbg !2592

cond.false.i.2375.i:                              ; preds = %if.else.466.i
  %128 = load %struct._typeobject*, %struct._typeobject** %ob_type441.i, align 8, !dbg !2593, !tbaa !1179
  %tp_name.i.2374.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %128, i64 0, i32 1, !dbg !2594
  %129 = load i8*, i8** %tp_name.i.2374.i, align 8, !dbg !2594, !tbaa !2094
  br label %cleanup.470.i, !dbg !2592

cleanup.470.thread.i:                             ; preds = %cond.true.i, %if.then.463.i, %if.then.450.i
  %storemerge.2280.in.i = phi i8* [ %arraydecay451.i, %if.then.450.i ], [ %127, %cond.true.i ], [ getelementptr inbounds ([0 x i8], [0 x i8]* @_PyByteArray_empty_string, i64 0, i64 0), %if.then.463.i ], !dbg !2170
  %storemerge.2280.i = load i8, i8* %storemerge.2280.in.i, align 1, !dbg !2595
  store i8 %storemerge.2280.i, i8* %120, align 1, !dbg !2598, !tbaa !1036
  br label %if.then.14, !dbg !2170

cleanup.470.i:                                    ; preds = %cond.false.i.2375.i, %if.else.466.i
  %cond.i.2376.i = phi i8* [ %129, %cond.false.i.2375.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.else.466.i ], !dbg !2592
  %call.i.2377.i = tail call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.39, i64 0, i64 0), i8* %cond.i.2376.i) #2, !dbg !2599
  br label %convertsimple.exit, !dbg !2170

sw.bb.472.i:                                      ; preds = %if.else
  %gp_offset_p475.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 0, !dbg !2600
  %gp_offset476.i = load i32, i32* %gp_offset_p475.i, align 4, !dbg !2600
  %fits_in_gp477.i = icmp ult i32 %gp_offset476.i, 41, !dbg !2600
  br i1 %fits_in_gp477.i, label %vaarg.in_reg.478.i, label %vaarg.in_mem.480.i, !dbg !2600

vaarg.in_reg.478.i:                               ; preds = %sw.bb.472.i
  %130 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !2601
  %reg_save_area479.i = load i8*, i8** %130, align 8, !dbg !2601
  %131 = sext i32 %gp_offset476.i to i64, !dbg !2601
  %132 = getelementptr i8, i8* %reg_save_area479.i, i64 %131, !dbg !2601
  %133 = add i32 %gp_offset476.i, 8, !dbg !2601
  store i32 %133, i32* %gp_offset_p475.i, align 4, !dbg !2601
  br label %vaarg.end.484.i, !dbg !2601

vaarg.in_mem.480.i:                               ; preds = %sw.bb.472.i
  %overflow_arg_area_p481.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !2603
  %overflow_arg_area482.i = load i8*, i8** %overflow_arg_area_p481.i, align 8, !dbg !2603
  %overflow_arg_area.next483.i = getelementptr i8, i8* %overflow_arg_area482.i, i64 8, !dbg !2603
  store i8* %overflow_arg_area.next483.i, i8** %overflow_arg_area_p481.i, align 8, !dbg !2603
  br label %vaarg.end.484.i, !dbg !2603

vaarg.end.484.i:                                  ; preds = %vaarg.in_mem.480.i, %vaarg.in_reg.478.i
  %vaarg.addr485.in.i = phi i8* [ %132, %vaarg.in_reg.478.i ], [ %overflow_arg_area482.i, %vaarg.in_mem.480.i ], !dbg !2170
  %vaarg.addr485.i = bitcast i8* %vaarg.addr485.in.i to i32**, !dbg !2600
  %134 = load i32*, i32** %vaarg.addr485.i, align 8, !dbg !2605
  tail call void @llvm.dbg.value(metadata i32* %134, i64 0, metadata !741, metadata !980) #2, !dbg !2608
  %ob_type486.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !2609
  %135 = load %struct._typeobject*, %struct._typeobject** %ob_type486.i, align 8, !dbg !2609, !tbaa !1179
  %tp_flags487.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %135, i64 0, i32 19, !dbg !2609
  %136 = load i64, i64* %tp_flags487.i, align 8, !dbg !2609, !tbaa !1182
  %and488.i = and i64 %136, 268435456, !dbg !2609
  %cmp489.i = icmp eq i64 %and488.i, 0, !dbg !2609
  br i1 %cmp489.i, label %if.then.491.i, label %if.end.493.i, !dbg !2611

if.then.491.i:                                    ; preds = %vaarg.end.484.i
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i64 0, i64 0), i64 0, metadata !880, metadata !980) #2, !dbg !2612
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !2614
  tail call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !2615
  tail call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !2616
  %cmp.i.2379.i = icmp eq %struct._object* %arg, @_Py_NoneStruct, !dbg !2617
  br i1 %cmp.i.2379.i, label %converterr.exit2385.i, label %cond.false.i.2382.i, !dbg !2618

cond.false.i.2382.i:                              ; preds = %if.then.491.i
  %tp_name.i.2381.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %135, i64 0, i32 1, !dbg !2619
  %137 = load i8*, i8** %tp_name.i.2381.i, align 8, !dbg !2619, !tbaa !2094
  br label %converterr.exit2385.i, !dbg !2618

converterr.exit2385.i:                            ; preds = %cond.false.i.2382.i, %if.then.491.i
  %cond.i.2383.i = phi i8* [ %137, %cond.false.i.2382.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.then.491.i ], !dbg !2618
  %call.i.2384.i = tail call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i64 0, i64 0), i8* %cond.i.2383.i) #2, !dbg !2620
  br label %convertsimple.exit, !dbg !2621

if.end.493.i:                                     ; preds = %vaarg.end.484.i
  %state.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 2, !dbg !2622
  %138 = bitcast %struct._object* %state.i to i32*, !dbg !2622
  %bf.load.i = load i32, i32* %138, align 4, !dbg !2622
  %bf.clear.i = and i32 %bf.load.i, 128, !dbg !2622
  %tobool494.i = icmp eq i32 %bf.clear.i, 0, !dbg !2622
  br i1 %tobool494.i, label %cond.false.496.i, label %if.end.502.i, !dbg !2622

cond.false.496.i:                                 ; preds = %if.end.493.i
  %call497.i = tail call i32 @_PyUnicode_Ready(%struct._object* %arg) #2, !dbg !2624
  %phitmp2279.i = icmp eq i32 %call497.i, 0, !dbg !2624
  br i1 %phitmp2279.i, label %if.end.502.i, label %convertsimple.exit, !dbg !2626

if.end.502.i:                                     ; preds = %cond.false.496.i, %if.end.493.i
  %139 = getelementptr inbounds %struct._object, %struct._object* %arg, i64 1, i32 0, !dbg !2627
  %140 = load i64, i64* %139, align 8, !dbg !2627, !tbaa !2629
  %cmp503.i = icmp eq i64 %140, 1, !dbg !2632
  br i1 %cmp503.i, label %if.end.507.i, label %if.then.505.i, !dbg !2633

if.then.505.i:                                    ; preds = %if.end.502.i
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i64 0, i64 0), i64 0, metadata !880, metadata !980) #2, !dbg !2634
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !2636
  tail call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !2637
  tail call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !2638
  %cmp.i.2386.i = icmp eq %struct._object* %arg, @_Py_NoneStruct, !dbg !2639
  br i1 %cmp.i.2386.i, label %converterr.exit2392.i, label %cond.false.i.2389.i, !dbg !2640

cond.false.i.2389.i:                              ; preds = %if.then.505.i
  %141 = load %struct._typeobject*, %struct._typeobject** %ob_type486.i, align 8, !dbg !2641, !tbaa !1179
  %tp_name.i.2388.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %141, i64 0, i32 1, !dbg !2642
  %142 = load i8*, i8** %tp_name.i.2388.i, align 8, !dbg !2642, !tbaa !2094
  br label %converterr.exit2392.i, !dbg !2640

converterr.exit2392.i:                            ; preds = %cond.false.i.2389.i, %if.then.505.i
  %cond.i.2390.i = phi i8* [ %142, %cond.false.i.2389.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.then.505.i ], !dbg !2640
  %call.i.2391.i = tail call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i64 0, i64 0), i8* %cond.i.2390.i) #2, !dbg !2643
  br label %convertsimple.exit, !dbg !2644

if.end.507.i:                                     ; preds = %if.end.502.i
  %bf.load509.i = load i32, i32* %138, align 4, !dbg !2645
  %bf.lshr510.i = lshr i32 %bf.load509.i, 2, !dbg !2645
  %bf.clear511.i = and i32 %bf.lshr510.i, 7, !dbg !2645
  tail call void @llvm.dbg.value(metadata i32 %bf.clear511.i, i64 0, metadata !743, metadata !980) #2, !dbg !2646
  %bf.clear515.i = and i32 %bf.load509.i, 32, !dbg !2647
  %tobool516.i = icmp eq i32 %bf.clear515.i, 0, !dbg !2647
  br i1 %tobool516.i, label %cond.false.528.i, label %cond.true.517.i, !dbg !2647

cond.true.517.i:                                  ; preds = %if.end.507.i
  %bf.clear521.i = and i32 %bf.load509.i, 64, !dbg !2648
  %tobool522.i = icmp ne i32 %bf.clear521.i, 0, !dbg !2648
  %add.ptr.i = getelementptr %struct._object, %struct._object* %arg, i64 3, !dbg !2649
  %143 = bitcast %struct._object* %add.ptr.i to i8*, !dbg !2649
  %add.ptr525.i = getelementptr %struct._object, %struct._object* %arg, i64 4, i32 1, !dbg !2650
  %144 = bitcast %struct._typeobject** %add.ptr525.i to i8*, !dbg !2650
  %cond527.i = select i1 %tobool522.i, i8* %143, i8* %144, !dbg !2648
  br label %cond.end.530.i, !dbg !2648

cond.false.528.i:                                 ; preds = %if.end.507.i
  %data529.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 4, i32 1, !dbg !2652
  %any.i = bitcast %struct._typeobject** %data529.i to i8**, !dbg !2652
  %145 = load i8*, i8** %any.i, align 8, !dbg !2652, !tbaa !993
  br label %cond.end.530.i, !dbg !2652

cond.end.530.i:                                   ; preds = %cond.false.528.i, %cond.true.517.i
  %cond531.i = phi i8* [ %145, %cond.false.528.i ], [ %cond527.i, %cond.true.517.i ], !dbg !2647
  tail call void @llvm.dbg.value(metadata i8* %cond531.i, i64 0, metadata !744, metadata !980) #2, !dbg !2653
  switch i32 %bf.clear511.i, label %cond.false.543.i [
    i32 1, label %cond.true.534.i
    i32 2, label %cond.true.540.i
  ], !dbg !2654

cond.true.534.i:                                  ; preds = %cond.end.530.i
  %146 = load i8, i8* %cond531.i, align 1, !dbg !2655, !tbaa !1036
  %conv536.i = zext i8 %146 to i32, !dbg !2655
  br label %cleanup.549.i, !dbg !2655

cond.true.540.i:                                  ; preds = %cond.end.530.i
  %147 = bitcast i8* %cond531.i to i16*, !dbg !2656
  %148 = load i16, i16* %147, align 2, !dbg !2656, !tbaa !2274
  %conv542.i = zext i16 %148 to i32, !dbg !2656
  br label %cleanup.549.i, !dbg !2656

cond.false.543.i:                                 ; preds = %cond.end.530.i
  %149 = bitcast i8* %cond531.i to i32*, !dbg !2657
  %150 = load i32, i32* %149, align 4, !dbg !2657, !tbaa !1059
  br label %cleanup.549.i, !dbg !2657

cleanup.549.i:                                    ; preds = %cond.false.543.i, %cond.true.540.i, %cond.true.534.i
  %cond548.i = phi i32 [ %conv536.i, %cond.true.534.i ], [ %conv542.i, %cond.true.540.i ], [ %150, %cond.false.543.i ], !dbg !2654
  store i32 %cond548.i, i32* %134, align 4, !dbg !2659, !tbaa !1059
  br label %if.then.14, !dbg !2170

sw.bb.553.i:                                      ; preds = %if.else
  %gp_offset_p556.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 0, !dbg !2660
  %gp_offset557.i = load i32, i32* %gp_offset_p556.i, align 4, !dbg !2660
  %fits_in_gp558.i = icmp ult i32 %gp_offset557.i, 41, !dbg !2660
  br i1 %fits_in_gp558.i, label %vaarg.in_reg.559.i, label %vaarg.in_mem.561.i, !dbg !2660

vaarg.in_reg.559.i:                               ; preds = %sw.bb.553.i
  %151 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !2661
  %reg_save_area560.i = load i8*, i8** %151, align 8, !dbg !2661
  %152 = sext i32 %gp_offset557.i to i64, !dbg !2661
  %153 = getelementptr i8, i8* %reg_save_area560.i, i64 %152, !dbg !2661
  %154 = add i32 %gp_offset557.i, 8, !dbg !2661
  store i32 %154, i32* %gp_offset_p556.i, align 4, !dbg !2661
  br label %vaarg.end.565.i, !dbg !2661

vaarg.in_mem.561.i:                               ; preds = %sw.bb.553.i
  %overflow_arg_area_p562.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !2663
  %overflow_arg_area563.i = load i8*, i8** %overflow_arg_area_p562.i, align 8, !dbg !2663
  %overflow_arg_area.next564.i = getelementptr i8, i8* %overflow_arg_area563.i, i64 8, !dbg !2663
  store i8* %overflow_arg_area.next564.i, i8** %overflow_arg_area_p562.i, align 8, !dbg !2663
  br label %vaarg.end.565.i, !dbg !2663

vaarg.end.565.i:                                  ; preds = %vaarg.in_mem.561.i, %vaarg.in_reg.559.i
  %vaarg.addr566.in.i = phi i8* [ %153, %vaarg.in_reg.559.i ], [ %overflow_arg_area563.i, %vaarg.in_mem.561.i ], !dbg !2170
  %vaarg.addr566.i = bitcast i8* %vaarg.addr566.in.i to i32**, !dbg !2660
  %155 = load i32*, i32** %vaarg.addr566.i, align 8, !dbg !2665
  tail call void @llvm.dbg.value(metadata i32* %155, i64 0, metadata !745, metadata !980) #2, !dbg !2668
  %call567.i = tail call i32 @PyObject_IsTrue(%struct._object* %arg) #2, !dbg !2669
  tail call void @llvm.dbg.value(metadata i32 %call567.i, i64 0, metadata !747, metadata !980) #2, !dbg !2670
  %cmp568.i = icmp sgt i32 %call567.i, 0, !dbg !2671
  br i1 %cmp568.i, label %if.end.577.i, label %if.else.571.i, !dbg !2673

if.else.571.i:                                    ; preds = %vaarg.end.565.i
  %cmp572.i = icmp eq i32 %call567.i, 0, !dbg !2674
  br i1 %cmp572.i, label %if.end.577.i, label %convertsimple.exit, !dbg !2676

if.end.577.i:                                     ; preds = %if.else.571.i, %vaarg.end.565.i
  %storemerge.2278.i = phi i32 [ 1, %vaarg.end.565.i ], [ 0, %if.else.571.i ], !dbg !2170
  store i32 %storemerge.2278.i, i32* %155, align 4, !dbg !2677, !tbaa !1059
  br label %if.then.14, !dbg !2170

sw.bb.581.i:                                      ; preds = %if.else
  %gp_offset_p584.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 0, !dbg !2678
  %gp_offset585.i = load i32, i32* %gp_offset_p584.i, align 4, !dbg !2678
  %fits_in_gp586.i = icmp ult i32 %gp_offset585.i, 41, !dbg !2678
  br i1 %fits_in_gp586.i, label %vaarg.in_reg.587.i, label %vaarg.in_mem.589.i, !dbg !2678

vaarg.in_reg.587.i:                               ; preds = %sw.bb.581.i
  %156 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !2679
  %reg_save_area588.i = load i8*, i8** %156, align 8, !dbg !2679
  %157 = sext i32 %gp_offset585.i to i64, !dbg !2679
  %158 = getelementptr i8, i8* %reg_save_area588.i, i64 %157, !dbg !2679
  %159 = add i32 %gp_offset585.i, 8, !dbg !2679
  store i32 %159, i32* %gp_offset_p584.i, align 4, !dbg !2679
  br label %vaarg.end.593.i, !dbg !2679

vaarg.in_mem.589.i:                               ; preds = %sw.bb.581.i
  %overflow_arg_area_p590.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !2681
  %overflow_arg_area591.i = load i8*, i8** %overflow_arg_area_p590.i, align 8, !dbg !2681
  %overflow_arg_area.next592.i = getelementptr i8, i8* %overflow_arg_area591.i, i64 8, !dbg !2681
  store i8* %overflow_arg_area.next592.i, i8** %overflow_arg_area_p590.i, align 8, !dbg !2681
  br label %vaarg.end.593.i, !dbg !2681

vaarg.end.593.i:                                  ; preds = %vaarg.in_mem.589.i, %vaarg.in_reg.587.i
  %vaarg.addr594.in.i = phi i8* [ %158, %vaarg.in_reg.587.i ], [ %overflow_arg_area591.i, %vaarg.in_mem.589.i ], !dbg !2170
  %vaarg.addr594.i = bitcast i8* %vaarg.addr594.in.i to i8***, !dbg !2678
  %160 = load i8**, i8*** %vaarg.addr594.i, align 8, !dbg !2683
  tail call void @llvm.dbg.value(metadata i8** %160, i64 0, metadata !748, metadata !980) #2, !dbg !2686
  %161 = load i8, i8* %incdec.ptr, align 1, !dbg !2687, !tbaa !1036
  %cmp596.i = icmp eq i8 %161, 42, !dbg !2689
  br i1 %cmp596.i, label %if.then.598.i, label %if.end.611.i, !dbg !2690

if.then.598.i:                                    ; preds = %vaarg.end.593.i
  %162 = bitcast i8** %160 to %struct.bufferinfo*, !dbg !2691
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !888, metadata !980) #2, !dbg !2694
  tail call void @llvm.dbg.value(metadata %struct.bufferinfo* %162, i64 0, metadata !889, metadata !980) #2, !dbg !2696
  %call.i.2393.i = tail call i32 @PyObject_GetBuffer(%struct._object* %arg, %struct.bufferinfo* %162, i32 0) #2, !dbg !2697
  %cmp.i.2394.i = icmp eq i32 %call.i.2393.i, 0, !dbg !2699
  br i1 %cmp.i.2394.i, label %if.end.i.i, label %if.then.602.i, !dbg !2700

if.end.i.i:                                       ; preds = %if.then.598.i
  %call1.i.i = tail call i32 @PyBuffer_IsContiguous(%struct.bufferinfo* %162, i8 signext 67) #2, !dbg !2701
  %tobool.i.2396.i = icmp eq i32 %call1.i.i, 0, !dbg !2701
  br i1 %tobool.i.2396.i, label %if.then.2.i.i, label %if.end.604.i, !dbg !2703

if.then.2.i.i:                                    ; preds = %if.end.i.i
  tail call void @PyBuffer_Release(%struct.bufferinfo* %162) #2, !dbg !2704
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), i64 0, metadata !890, metadata !980) #2, !dbg !2706
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), i64 0, metadata !910, metadata !980) #2, !dbg !2710
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), i64 0, metadata !890, metadata !980) #2, !dbg !2711
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), i64 0, metadata !750, metadata !980) #2, !dbg !2712
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), i64 0, metadata !750, metadata !980) #2, !dbg !2712
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), i64 0, metadata !750, metadata !980) #2, !dbg !2712
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), i64 0, metadata !750, metadata !980) #2, !dbg !2712
  br label %if.then.602.i, !dbg !2713

if.then.602.i:                                    ; preds = %if.then.2.i.i, %if.then.598.i
  %buf.0.2720.ph.i = phi i8* [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i64 0, i64 0), %if.then.598.i ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), %if.then.2.i.i ], !dbg !2170
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !2714
  tail call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !2716
  tail call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !2717
  %cmp.i.2398.i = icmp eq %struct._object* %arg, @_Py_NoneStruct, !dbg !2718
  br i1 %cmp.i.2398.i, label %converterr.exit2404.i, label %cond.false.i.2401.i, !dbg !2719

cond.false.i.2401.i:                              ; preds = %if.then.602.i
  %ob_type.i.2399.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !2720
  %163 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.2399.i, align 8, !dbg !2720, !tbaa !1179
  %tp_name.i.2400.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %163, i64 0, i32 1, !dbg !2721
  %164 = load i8*, i8** %tp_name.i.2400.i, align 8, !dbg !2721, !tbaa !2094
  br label %converterr.exit2404.i, !dbg !2719

converterr.exit2404.i:                            ; preds = %cond.false.i.2401.i, %if.then.602.i
  %cond.i.2402.i = phi i8* [ %164, %cond.false.i.2401.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.then.602.i ], !dbg !2719
  %call.i.2403.i = tail call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* %buf.0.2720.ph.i, i8* %cond.i.2402.i) #2, !dbg !2722
  br label %convertsimple.exit, !dbg !2723

if.end.604.i:                                     ; preds = %if.end.i.i
  %first_available.i.i = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i64 0, i32 1, !dbg !2724
  %165 = load i32, i32* %first_available.i.i, align 4, !dbg !2724, !tbaa !1023
  tail call void @llvm.dbg.value(metadata i32 %165, i64 0, metadata !898, metadata !980) #2, !dbg !2727
  %add.i.i = add i32 %165, 1, !dbg !2728
  store i32 %add.i.i, i32* %first_available.i.i, align 4, !dbg !2728, !tbaa !1023
  %idxprom.i.i = sext i32 %165 to i64, !dbg !2729
  %entries.i.i = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i64 0, i32 0, !dbg !2730
  %166 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries.i.i, align 8, !dbg !2730, !tbaa !1018
  %item.i.i = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %166, i64 %idxprom.i.i, i32 0, !dbg !2731
  %167 = bitcast i8** %item.i.i to i8***, !dbg !2732
  store i8** %160, i8*** %167, align 8, !dbg !2732, !tbaa !1164
  %destructor5.i.i = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %166, i64 %idxprom.i.i, i32 1, !dbg !2733
  store i32 (%struct._object*, i8*)* @cleanup_buffer, i32 (%struct._object*, i8*)** %destructor5.i.i, align 8, !dbg !2734, !tbaa !1161
  %incdec.ptr605.i = getelementptr i8, i8* %0, i64 2, !dbg !2735
  br label %if.then.14, !dbg !2736

if.end.611.i:                                     ; preds = %vaarg.end.593.i
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !908, metadata !980) #2, !dbg !2737
  tail call void @llvm.dbg.value(metadata i8** %160, i64 0, metadata !909, metadata !980) #2, !dbg !2738
  %ob_type.i.2405.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !2739
  %168 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.2405.i, align 8, !dbg !2739, !tbaa !1179
  %tp_as_buffer.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %168, i64 0, i32 18, !dbg !2740
  %169 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer.i.i, align 8, !dbg !2740, !tbaa !2741
  tail call void @llvm.dbg.value(metadata %struct.PyBufferProcs* %169, i64 0, metadata !911, metadata !980) #2, !dbg !2742
  %170 = bitcast %struct.bufferinfo* %view.i.i to i8*, !dbg !2743
  call void @llvm.lifetime.start(i64 80, i8* %170) #2, !dbg !2743
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !890, metadata !980) #2, !dbg !2706
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !910, metadata !980) #2, !dbg !2710
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !890, metadata !980) #2, !dbg !2711
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !750, metadata !980) #2, !dbg !2712
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !750, metadata !980) #2, !dbg !2712
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !750, metadata !980) #2, !dbg !2712
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !750, metadata !980) #2, !dbg !2712
  store i8* null, i8** %160, align 8, !dbg !2744, !tbaa !993
  %cmp.i.2406.i = icmp eq %struct.PyBufferProcs* %169, null, !dbg !2745
  br i1 %cmp.i.2406.i, label %if.end.i.2408.i, label %land.lhs.true.i.i, !dbg !2747

land.lhs.true.i.i:                                ; preds = %if.end.611.i
  %bf_releasebuffer.i.i = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %169, i64 0, i32 1, !dbg !2748
  %171 = load void (%struct._object*, %struct.bufferinfo*)*, void (%struct._object*, %struct.bufferinfo*)** %bf_releasebuffer.i.i, align 8, !dbg !2748, !tbaa !1161
  %cmp1.i.i = icmp eq void (%struct._object*, %struct.bufferinfo*)* %171, null, !dbg !2749
  br i1 %cmp1.i.i, label %if.end.i.2408.i, label %convertbuffer.exit.thread.i, !dbg !2750

if.end.i.2408.i:                                  ; preds = %land.lhs.true.i.i, %if.end.611.i
  tail call void @llvm.dbg.value(metadata %struct.bufferinfo* %view.i.i, i64 0, metadata !913, metadata !980) #2, !dbg !2751
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !888, metadata !980) #2, !dbg !2752
  tail call void @llvm.dbg.value(metadata %struct.bufferinfo* %view.i.i, i64 0, metadata !889, metadata !980) #2, !dbg !2753
  %call.i.i.i = call i32 @PyObject_GetBuffer(%struct._object* %arg, %struct.bufferinfo* nonnull %view.i.i, i32 0) #2, !dbg !2754
  %cmp.i.i.i = icmp eq i32 %call.i.i.i, 0, !dbg !2755
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %convertbuffer.exit.thread.i, !dbg !2756

if.end.i.i.i:                                     ; preds = %if.end.i.2408.i
  %call1.i.i.i = call i32 @PyBuffer_IsContiguous(%struct.bufferinfo* nonnull %view.i.i, i8 signext 67) #2, !dbg !2757
  %tobool.i.i.i = icmp eq i32 %call1.i.i.i, 0, !dbg !2757
  br i1 %tobool.i.i.i, label %if.then.2.i.i.i, label %convertbuffer.exit.i, !dbg !2758

if.then.2.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @PyBuffer_Release(%struct.bufferinfo* nonnull %view.i.i) #2, !dbg !2759
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), i64 0, metadata !890, metadata !980) #2, !dbg !2706
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), i64 0, metadata !910, metadata !980) #2, !dbg !2710
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), i64 0, metadata !890, metadata !980) #2, !dbg !2711
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), i64 0, metadata !750, metadata !980) #2, !dbg !2712
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), i64 0, metadata !750, metadata !980) #2, !dbg !2712
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), i64 0, metadata !750, metadata !980) #2, !dbg !2712
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), i64 0, metadata !750, metadata !980) #2, !dbg !2712
  br label %convertbuffer.exit.thread.i, !dbg !2760

convertbuffer.exit.thread.i:                      ; preds = %if.then.2.i.i.i, %if.end.i.2408.i, %land.lhs.true.i.i
  %buf.0.2721.ph.i = phi i8* [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i64 0, i64 0), %if.end.i.2408.i ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.68, i64 0, i64 0), %land.lhs.true.i.i ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), %if.then.2.i.i.i ], !dbg !2170
  call void @llvm.lifetime.end(i64 80, i8* %170) #2, !dbg !2761
  br label %if.then.615.i, !dbg !2762

convertbuffer.exit.i:                             ; preds = %if.end.i.i.i
  %len.i.i = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view.i.i, i64 0, i32 2, !dbg !2763
  %172 = load i64, i64* %len.i.i, align 8, !dbg !2763, !tbaa !2764
  %173 = bitcast %struct.bufferinfo* %view.i.i to i64*, !dbg !2766
  %174 = load i64, i64* %173, align 8, !dbg !2766, !tbaa !2767
  %175 = bitcast i8** %160 to i64*, !dbg !2768
  store i64 %174, i64* %175, align 8, !dbg !2768, !tbaa !993
  call void @llvm.dbg.value(metadata %struct.bufferinfo* %view.i.i, i64 0, metadata !913, metadata !980) #2, !dbg !2751
  call void @PyBuffer_Release(%struct.bufferinfo* nonnull %view.i.i) #2, !dbg !2769
  call void @llvm.lifetime.end(i64 80, i8* %170) #2, !dbg !2761
  %cmp613.i = icmp slt i64 %172, 0, !dbg !2770
  br i1 %cmp613.i, label %if.then.615.i, label %if.end.617.i, !dbg !2762

if.then.615.i:                                    ; preds = %convertbuffer.exit.i, %convertbuffer.exit.thread.i
  %buf.0.27212744.i = phi i8* [ %buf.0.2721.ph.i, %convertbuffer.exit.thread.i ], [ null, %convertbuffer.exit.i ], !dbg !2170
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !880, metadata !980) #2, !dbg !2772
  call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !2774
  call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !2775
  call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !2776
  %cmp.i.2410.i = icmp eq %struct._object* %arg, @_Py_NoneStruct, !dbg !2777
  br i1 %cmp.i.2410.i, label %converterr.exit2416.i, label %cond.false.i.2413.i, !dbg !2778

cond.false.i.2413.i:                              ; preds = %if.then.615.i
  %176 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.2405.i, align 8, !dbg !2779, !tbaa !1179
  %tp_name.i.2412.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %176, i64 0, i32 1, !dbg !2780
  %177 = load i8*, i8** %tp_name.i.2412.i, align 8, !dbg !2780, !tbaa !2094
  br label %converterr.exit2416.i, !dbg !2778

converterr.exit2416.i:                            ; preds = %cond.false.i.2413.i, %if.then.615.i
  %cond.i.2414.i = phi i8* [ %177, %cond.false.i.2413.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.then.615.i ], !dbg !2778
  %call.i.2415.i = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* %buf.0.27212744.i, i8* %cond.i.2414.i) #2, !dbg !2781
  br label %convertsimple.exit, !dbg !2782

if.end.617.i:                                     ; preds = %convertbuffer.exit.i
  %178 = load i8, i8* %incdec.ptr, align 1, !dbg !2783, !tbaa !1036
  %cmp619.i = icmp eq i8 %178, 35, !dbg !2784
  br i1 %cmp619.i, label %if.then.621.i, label %if.else.666.i, !dbg !2785

if.then.621.i:                                    ; preds = %if.end.617.i
  call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !752, metadata !980) #2, !dbg !2786
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !755, metadata !980) #2, !dbg !2786
  %and622.i = and i32 %flags, 2, !dbg !2787
  %tobool623.i = icmp eq i32 %and622.i, 0, !dbg !2787
  %gp_offset627.i = load i32, i32* %gp_offset_p584.i, align 4, !dbg !2789
  %fits_in_gp628.i = icmp ult i32 %gp_offset627.i, 41, !dbg !2789
  br i1 %tobool623.i, label %if.else.637.i, label %if.then.624.i, !dbg !2786

if.then.624.i:                                    ; preds = %if.then.621.i
  br i1 %fits_in_gp628.i, label %vaarg.in_reg.629.i, label %vaarg.in_mem.631.i, !dbg !2789

vaarg.in_reg.629.i:                               ; preds = %if.then.624.i
  %179 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !2791
  %reg_save_area630.i = load i8*, i8** %179, align 8, !dbg !2791
  %180 = sext i32 %gp_offset627.i to i64, !dbg !2791
  %181 = getelementptr i8, i8* %reg_save_area630.i, i64 %180, !dbg !2791
  %182 = add i32 %gp_offset627.i, 8, !dbg !2791
  store i32 %182, i32* %gp_offset_p584.i, align 4, !dbg !2791
  br label %if.then.653.i, !dbg !2791

vaarg.in_mem.631.i:                               ; preds = %if.then.624.i
  %overflow_arg_area_p632.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !2793
  %overflow_arg_area633.i = load i8*, i8** %overflow_arg_area_p632.i, align 8, !dbg !2793
  %overflow_arg_area.next634.i = getelementptr i8, i8* %overflow_arg_area633.i, i64 8, !dbg !2793
  store i8* %overflow_arg_area.next634.i, i8** %overflow_arg_area_p632.i, align 8, !dbg !2793
  br label %if.then.653.i, !dbg !2793

if.else.637.i:                                    ; preds = %if.then.621.i
  br i1 %fits_in_gp628.i, label %vaarg.in_reg.642.i, label %vaarg.in_mem.644.i, !dbg !2795

vaarg.in_reg.642.i:                               ; preds = %if.else.637.i
  %183 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !2797
  %reg_save_area643.i = load i8*, i8** %183, align 8, !dbg !2797
  %184 = sext i32 %gp_offset627.i to i64, !dbg !2797
  %185 = getelementptr i8, i8* %reg_save_area643.i, i64 %184, !dbg !2797
  %186 = add i32 %gp_offset627.i, 8, !dbg !2797
  store i32 %186, i32* %gp_offset_p584.i, align 4, !dbg !2797
  br label %if.else.654.i, !dbg !2797

vaarg.in_mem.644.i:                               ; preds = %if.else.637.i
  %overflow_arg_area_p645.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !2799
  %overflow_arg_area646.i = load i8*, i8** %overflow_arg_area_p645.i, align 8, !dbg !2799
  %overflow_arg_area.next647.i = getelementptr i8, i8* %overflow_arg_area646.i, i64 8, !dbg !2799
  store i8* %overflow_arg_area.next647.i, i8** %overflow_arg_area_p645.i, align 8, !dbg !2799
  br label %if.else.654.i, !dbg !2799

if.then.653.i:                                    ; preds = %vaarg.in_mem.631.i, %vaarg.in_reg.629.i
  %vaarg.addr636.in.i = phi i8* [ %181, %vaarg.in_reg.629.i ], [ %overflow_arg_area633.i, %vaarg.in_mem.631.i ], !dbg !2170
  %vaarg.addr636.i = bitcast i8* %vaarg.addr636.in.i to i64**, !dbg !2787
  %187 = load i64*, i64** %vaarg.addr636.i, align 8, !dbg !2801
  call void @llvm.dbg.value(metadata i64* %187, i64 0, metadata !755, metadata !980) #2, !dbg !2786
  store i64 %172, i64* %187, align 8, !dbg !2804, !tbaa !1765
  br label %cleanup.663.thread.i, !dbg !2804

if.else.654.i:                                    ; preds = %vaarg.in_mem.644.i, %vaarg.in_reg.642.i
  %vaarg.addr649.in.i = phi i8* [ %185, %vaarg.in_reg.642.i ], [ %overflow_arg_area646.i, %vaarg.in_mem.644.i ], !dbg !2170
  %cmp655.i = icmp sgt i64 %172, 2147483647, !dbg !2807
  br i1 %cmp655.i, label %if.then.657.i, label %if.end.659.i, !dbg !2811

if.then.657.i:                                    ; preds = %if.else.654.i
  %188 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2812, !tbaa !993
  call void @PyErr_SetString(%struct._object* %188, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.42, i64 0, i64 0)) #2, !dbg !2812
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i64 0, metadata !880, metadata !980) #2, !dbg !2815
  call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !2817
  call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !2818
  call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !2819
  %cmp.i.2417.i = icmp eq %struct._object* %arg, @_Py_NoneStruct, !dbg !2820
  br i1 %cmp.i.2417.i, label %cleanup.663.i, label %cond.false.i.2420.i, !dbg !2821

cond.false.i.2420.i:                              ; preds = %if.then.657.i
  %189 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.2405.i, align 8, !dbg !2822, !tbaa !1179
  %tp_name.i.2419.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %189, i64 0, i32 1, !dbg !2823
  %190 = load i8*, i8** %tp_name.i.2419.i, align 8, !dbg !2823, !tbaa !2094
  br label %cleanup.663.i, !dbg !2821

if.end.659.i:                                     ; preds = %if.else.654.i
  %vaarg.addr649.i = bitcast i8* %vaarg.addr649.in.i to i32**, !dbg !2787
  %191 = load i32*, i32** %vaarg.addr649.i, align 8, !dbg !2824
  %conv660.i = trunc i64 %172 to i32, !dbg !2827
  store i32 %conv660.i, i32* %191, align 4, !dbg !2827, !tbaa !1059
  br label %cleanup.663.thread.i, !dbg !2170

cleanup.663.thread.i:                             ; preds = %if.end.659.i, %if.then.653.i
  %incdec.ptr662.i = getelementptr i8, i8* %0, i64 2, !dbg !2829
  call void @llvm.dbg.value(metadata i8* %incdec.ptr662.i, i64 0, metadata !670, metadata !980) #2, !dbg !2161
  br label %if.then.14, !dbg !2170

cleanup.663.i:                                    ; preds = %cond.false.i.2420.i, %if.then.657.i
  %cond.i.2421.i = phi i8* [ %190, %cond.false.i.2420.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.then.657.i ], !dbg !2821
  %call.i.2422.i = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* %cond.i.2421.i) #2, !dbg !2830
  br label %convertsimple.exit, !dbg !2170

if.else.666.i:                                    ; preds = %if.end.617.i
  %192 = load i8*, i8** %160, align 8, !dbg !2831, !tbaa !993
  %call667.i = call i64 @strlen(i8* %192) #8, !dbg !2834
  %cmp668.i = icmp eq i64 %call667.i, %172, !dbg !2835
  br i1 %cmp668.i, label %if.then.14, label %if.then.670.i, !dbg !2836

if.then.670.i:                                    ; preds = %if.else.666.i
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.43, i64 0, i64 0), i64 0, metadata !880, metadata !980) #2, !dbg !2837
  call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !2839
  call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !2840
  call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !2841
  %cmp.i.2424.i = icmp eq %struct._object* %arg, @_Py_NoneStruct, !dbg !2842
  br i1 %cmp.i.2424.i, label %converterr.exit2430.i, label %cond.false.i.2427.i, !dbg !2843

cond.false.i.2427.i:                              ; preds = %if.then.670.i
  %193 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.2405.i, align 8, !dbg !2844, !tbaa !1179
  %tp_name.i.2426.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %193, i64 0, i32 1, !dbg !2845
  %194 = load i8*, i8** %tp_name.i.2426.i, align 8, !dbg !2845, !tbaa !2094
  br label %converterr.exit2430.i, !dbg !2843

converterr.exit2430.i:                            ; preds = %cond.false.i.2427.i, %if.then.670.i
  %cond.i.2428.i = phi i8* [ %194, %cond.false.i.2427.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.then.670.i ], !dbg !2843
  %call.i.2429.i = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.43, i64 0, i64 0), i8* %cond.i.2428.i) #2, !dbg !2846
  br label %convertsimple.exit, !dbg !2847

sw.bb.678.i:                                      ; preds = %if.else, %if.else
  %195 = load i8, i8* %incdec.ptr, align 1, !dbg !2848, !tbaa !1036
  switch i8 %195, label %if.else.864.i [
    i8 42, label %if.then.682.i
    i8 35, label %if.then.747.i
  ], !dbg !2849

if.then.682.i:                                    ; preds = %sw.bb.678.i
  %gp_offset_p685.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 0, !dbg !2850
  %gp_offset686.i = load i32, i32* %gp_offset_p685.i, align 4, !dbg !2850
  %fits_in_gp687.i = icmp ult i32 %gp_offset686.i, 41, !dbg !2850
  br i1 %fits_in_gp687.i, label %vaarg.in_reg.688.i, label %vaarg.in_mem.690.i, !dbg !2850

vaarg.in_reg.688.i:                               ; preds = %if.then.682.i
  %196 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !2851
  %reg_save_area689.i = load i8*, i8** %196, align 8, !dbg !2851
  %197 = sext i32 %gp_offset686.i to i64, !dbg !2851
  %198 = getelementptr i8, i8* %reg_save_area689.i, i64 %197, !dbg !2851
  %199 = add i32 %gp_offset686.i, 8, !dbg !2851
  store i32 %199, i32* %gp_offset_p685.i, align 4, !dbg !2851
  br label %vaarg.end.694.i, !dbg !2851

vaarg.in_mem.690.i:                               ; preds = %if.then.682.i
  %overflow_arg_area_p691.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !2853
  %overflow_arg_area692.i = load i8*, i8** %overflow_arg_area_p691.i, align 8, !dbg !2853
  %overflow_arg_area.next693.i = getelementptr i8, i8* %overflow_arg_area692.i, i64 8, !dbg !2853
  store i8* %overflow_arg_area.next693.i, i8** %overflow_arg_area_p691.i, align 8, !dbg !2853
  br label %vaarg.end.694.i, !dbg !2853

vaarg.end.694.i:                                  ; preds = %vaarg.in_mem.690.i, %vaarg.in_reg.688.i
  %vaarg.addr695.in.i = phi i8* [ %198, %vaarg.in_reg.688.i ], [ %overflow_arg_area692.i, %vaarg.in_mem.690.i ], !dbg !2170
  %vaarg.addr695.i = bitcast i8* %vaarg.addr695.in.i to %struct.bufferinfo**, !dbg !2850
  %200 = load %struct.bufferinfo*, %struct.bufferinfo** %vaarg.addr695.i, align 8, !dbg !2855
  tail call void @llvm.dbg.value(metadata %struct.bufferinfo* %200, i64 0, metadata !756, metadata !980) #2, !dbg !2858
  %cmp697.i = icmp eq i8 %1, 122, !dbg !2859
  %cmp700.i = icmp eq %struct._object* %arg, @_Py_NoneStruct, !dbg !2860
  %or.cond.i = and i1 %cmp700.i, %cmp697.i, !dbg !2861
  br i1 %or.cond.i, label %if.then.702.i, label %if.else.704.i, !dbg !2861

if.then.702.i:                                    ; preds = %vaarg.end.694.i
  %call703.i = tail call i32 @PyBuffer_FillInfo(%struct.bufferinfo* %200, %struct._object* null, i8* null, i64 0, i32 1, i32 0) #2, !dbg !2862
  br label %cleanup.740.i, !dbg !2862

if.else.704.i:                                    ; preds = %vaarg.end.694.i
  %ob_type705.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !2863
  %201 = load %struct._typeobject*, %struct._typeobject** %ob_type705.i, align 8, !dbg !2863, !tbaa !1179
  %tp_flags706.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %201, i64 0, i32 19, !dbg !2863
  %202 = load i64, i64* %tp_flags706.i, align 8, !dbg !2863, !tbaa !1182
  %and707.i = and i64 %202, 268435456, !dbg !2863
  %cmp708.i = icmp eq i64 %and707.i, 0, !dbg !2863
  br i1 %cmp708.i, label %if.else.721.i, label %if.then.710.i, !dbg !2864

if.then.710.i:                                    ; preds = %if.else.704.i
  %203 = bitcast i64* %len.i to i8*, !dbg !2865
  call void @llvm.lifetime.start(i64 8, i8* %203) #2, !dbg !2865
  tail call void @llvm.dbg.value(metadata i64* %len.i, i64 0, metadata !760, metadata !980) #2, !dbg !2866
  %call711.i = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %arg, i64* nonnull %len.i) #2, !dbg !2867
  call void @llvm.dbg.value(metadata i8* %call711.i, i64 0, metadata !672, metadata !980) #2, !dbg !2868
  %cmp712.i = icmp eq i8* %call711.i, null, !dbg !2869
  br i1 %cmp712.i, label %if.then.714.i, label %cleanup.718.thread.i, !dbg !2871

if.then.714.i:                                    ; preds = %if.then.710.i
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i64 0, i64 0), i64 0, metadata !880, metadata !980) #2, !dbg !2872
  call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !2874
  call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !2875
  call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !2876
  br i1 %cmp700.i, label %cleanup.718.i, label %cond.false.i.2434.i, !dbg !2877

cond.false.i.2434.i:                              ; preds = %if.then.714.i
  %204 = load %struct._typeobject*, %struct._typeobject** %ob_type705.i, align 8, !dbg !2878, !tbaa !1179
  %tp_name.i.2433.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %204, i64 0, i32 1, !dbg !2879
  %205 = load i8*, i8** %tp_name.i.2433.i, align 8, !dbg !2879, !tbaa !2094
  br label %cleanup.718.i, !dbg !2877

cleanup.718.thread.i:                             ; preds = %if.then.710.i
  call void @llvm.dbg.value(metadata i64* %len.i, i64 0, metadata !760, metadata !980) #2, !dbg !2866
  %206 = load i64, i64* %len.i, align 8, !dbg !2880, !tbaa !1765
  %call717.i = call i32 @PyBuffer_FillInfo(%struct.bufferinfo* %200, %struct._object* %arg, i8* %call711.i, i64 %206, i32 1, i32 0) #2, !dbg !2881
  call void @llvm.lifetime.end(i64 8, i8* %203) #2, !dbg !2882
  br label %cleanup.740.i, !dbg !2170

cleanup.718.i:                                    ; preds = %cond.false.i.2434.i, %if.then.714.i
  %cond.i.2435.i = phi i8* [ %205, %cond.false.i.2434.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.then.714.i ], !dbg !2877
  %call.i.2436.i = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i64 0, i64 0), i8* %cond.i.2435.i) #2, !dbg !2884
  call void @llvm.lifetime.end(i64 8, i8* %203) #2, !dbg !2882
  br label %convertsimple.exit, !dbg !2170

if.else.721.i:                                    ; preds = %if.else.704.i
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !888, metadata !980) #2, !dbg !2885
  tail call void @llvm.dbg.value(metadata %struct.bufferinfo* %200, i64 0, metadata !889, metadata !980) #2, !dbg !2888
  %call.i.2438.i = tail call i32 @PyObject_GetBuffer(%struct._object* %arg, %struct.bufferinfo* %200, i32 0) #2, !dbg !2889
  %cmp.i.2439.i = icmp eq i32 %call.i.2438.i, 0, !dbg !2890
  br i1 %cmp.i.2439.i, label %if.end.i.2443.i, label %if.then.726.i, !dbg !2891

if.end.i.2443.i:                                  ; preds = %if.else.721.i
  %call1.i.2441.i = tail call i32 @PyBuffer_IsContiguous(%struct.bufferinfo* %200, i8 signext 67) #2, !dbg !2892
  %tobool.i.2442.i = icmp eq i32 %call1.i.2441.i, 0, !dbg !2892
  br i1 %tobool.i.2442.i, label %if.then.2.i.2444.i, label %cleanup.740.i, !dbg !2893

if.then.2.i.2444.i:                               ; preds = %if.end.i.2443.i
  tail call void @PyBuffer_Release(%struct.bufferinfo* %200) #2, !dbg !2894
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), i64 0, metadata !890, metadata !980) #2, !dbg !2895
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), i64 0, metadata !764, metadata !980) #2, !dbg !2896
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), i64 0, metadata !764, metadata !980) #2, !dbg !2896
  br label %if.then.726.i, !dbg !2897

if.then.726.i:                                    ; preds = %if.then.2.i.2444.i, %if.else.721.i
  %buf722.0.2719.ph.i = phi i8* [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i64 0, i64 0), %if.else.721.i ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), %if.then.2.i.2444.i ], !dbg !2170
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !2898
  tail call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !2900
  tail call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !2901
  br i1 %cmp700.i, label %cleanup.729.i, label %cond.false.i.2450.i, !dbg !2902

cond.false.i.2450.i:                              ; preds = %if.then.726.i
  %207 = load %struct._typeobject*, %struct._typeobject** %ob_type705.i, align 8, !dbg !2903, !tbaa !1179
  %tp_name.i.2449.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %207, i64 0, i32 1, !dbg !2904
  %208 = load i8*, i8** %tp_name.i.2449.i, align 8, !dbg !2904, !tbaa !2094
  br label %cleanup.729.i, !dbg !2902

cleanup.729.i:                                    ; preds = %cond.false.i.2450.i, %if.then.726.i
  %cond.i.2451.i = phi i8* [ %208, %cond.false.i.2450.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.then.726.i ], !dbg !2902
  %call.i.2452.i = tail call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* %buf722.0.2719.ph.i, i8* %cond.i.2451.i) #2, !dbg !2905
  br label %convertsimple.exit, !dbg !2170

cleanup.740.i:                                    ; preds = %if.end.i.2443.i, %cleanup.718.thread.i, %if.then.702.i
  %first_available.i.2454.i = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i64 0, i32 1, !dbg !2906
  %209 = load i32, i32* %first_available.i.2454.i, align 4, !dbg !2906, !tbaa !1023
  call void @llvm.dbg.value(metadata i32 %209, i64 0, metadata !898, metadata !980) #2, !dbg !2909
  %add.i.2455.i = add i32 %209, 1, !dbg !2910
  store i32 %add.i.2455.i, i32* %first_available.i.2454.i, align 4, !dbg !2910, !tbaa !1023
  %idxprom.i.2456.i = sext i32 %209 to i64, !dbg !2911
  %entries.i.2457.i = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i64 0, i32 0, !dbg !2912
  %210 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries.i.2457.i, align 8, !dbg !2912, !tbaa !1018
  %item.i.2458.i = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %210, i64 %idxprom.i.2456.i, i32 0, !dbg !2913
  %211 = bitcast i8** %item.i.2458.i to %struct.bufferinfo**, !dbg !2914
  store %struct.bufferinfo* %200, %struct.bufferinfo** %211, align 8, !dbg !2914, !tbaa !1164
  %destructor5.i.2459.i = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %210, i64 %idxprom.i.2456.i, i32 1, !dbg !2915
  store i32 (%struct._object*, i8*)* @cleanup_buffer, i32 (%struct._object*, i8*)** %destructor5.i.2459.i, align 8, !dbg !2916, !tbaa !1161
  %incdec.ptr739.i = getelementptr i8, i8* %0, i64 2, !dbg !2917
  call void @llvm.dbg.value(metadata i8* %incdec.ptr739.i, i64 0, metadata !670, metadata !980) #2, !dbg !2161
  br label %if.then.14, !dbg !2170

if.then.747.i:                                    ; preds = %sw.bb.678.i
  %gp_offset_p750.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 0, !dbg !2918
  %gp_offset751.i = load i32, i32* %gp_offset_p750.i, align 4, !dbg !2919
  %fits_in_gp752.i = icmp ult i32 %gp_offset751.i, 41, !dbg !2918
  br i1 %fits_in_gp752.i, label %vaarg.in_reg.753.i, label %vaarg.in_mem.755.i, !dbg !2918

vaarg.in_reg.753.i:                               ; preds = %if.then.747.i
  %212 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !2922
  %reg_save_area754.i = load i8*, i8** %212, align 8, !dbg !2922
  %213 = sext i32 %gp_offset751.i to i64, !dbg !2922
  %214 = getelementptr i8, i8* %reg_save_area754.i, i64 %213, !dbg !2922
  %215 = add i32 %gp_offset751.i, 8, !dbg !2922
  store i32 %215, i32* %gp_offset_p750.i, align 4, !dbg !2922
  br label %vaarg.end.759.i, !dbg !2922

vaarg.in_mem.755.i:                               ; preds = %if.then.747.i
  %overflow_arg_area_p756.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !2924
  %overflow_arg_area757.i = load i8*, i8** %overflow_arg_area_p756.i, align 8, !dbg !2924
  %overflow_arg_area.next758.i = getelementptr i8, i8* %overflow_arg_area757.i, i64 8, !dbg !2924
  store i8* %overflow_arg_area.next758.i, i8** %overflow_arg_area_p756.i, align 8, !dbg !2924
  br label %vaarg.end.759.i, !dbg !2924

vaarg.end.759.i:                                  ; preds = %vaarg.in_mem.755.i, %vaarg.in_reg.753.i
  %gp_offset768.i = phi i32 [ %gp_offset751.i, %vaarg.in_mem.755.i ], [ %215, %vaarg.in_reg.753.i ], !dbg !2919
  %vaarg.addr760.in.i = phi i8* [ %overflow_arg_area757.i, %vaarg.in_mem.755.i ], [ %214, %vaarg.in_reg.753.i ], !dbg !2170
  %vaarg.addr760.i = bitcast i8* %vaarg.addr760.in.i to i8***, !dbg !2918
  %216 = load i8**, i8*** %vaarg.addr760.i, align 8, !dbg !2926
  tail call void @llvm.dbg.value(metadata i8** %216, i64 0, metadata !766, metadata !980) #2, !dbg !2929
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !769, metadata !980) #2, !dbg !2930
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !770, metadata !980) #2, !dbg !2930
  %and763.i = and i32 %flags, 2, !dbg !2931
  %tobool764.i = icmp ne i32 %and763.i, 0, !dbg !2931
  %fits_in_gp769.i = icmp ult i32 %gp_offset768.i, 41, !dbg !2919
  br i1 %tobool764.i, label %if.then.765.i, label %if.else.778.i, !dbg !2930

if.then.765.i:                                    ; preds = %vaarg.end.759.i
  br i1 %fits_in_gp769.i, label %vaarg.in_reg.770.i, label %vaarg.in_mem.772.i, !dbg !2919

vaarg.in_reg.770.i:                               ; preds = %if.then.765.i
  %217 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !2932
  %reg_save_area771.i = load i8*, i8** %217, align 8, !dbg !2932
  %218 = sext i32 %gp_offset768.i to i64, !dbg !2932
  %219 = getelementptr i8, i8* %reg_save_area771.i, i64 %218, !dbg !2932
  %220 = add i32 %gp_offset768.i, 8, !dbg !2932
  store i32 %220, i32* %gp_offset_p750.i, align 4, !dbg !2932
  br label %vaarg.end.776.i, !dbg !2932

vaarg.in_mem.772.i:                               ; preds = %if.then.765.i
  %overflow_arg_area_p773.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !2934
  %overflow_arg_area774.i = load i8*, i8** %overflow_arg_area_p773.i, align 8, !dbg !2934
  %overflow_arg_area.next775.i = getelementptr i8, i8* %overflow_arg_area774.i, i64 8, !dbg !2934
  store i8* %overflow_arg_area.next775.i, i8** %overflow_arg_area_p773.i, align 8, !dbg !2934
  br label %vaarg.end.776.i, !dbg !2934

vaarg.end.776.i:                                  ; preds = %vaarg.in_mem.772.i, %vaarg.in_reg.770.i
  %vaarg.addr777.in.i = phi i8* [ %219, %vaarg.in_reg.770.i ], [ %overflow_arg_area774.i, %vaarg.in_mem.772.i ], !dbg !2170
  %vaarg.addr777.i = bitcast i8* %vaarg.addr777.in.i to i64**, !dbg !2931
  %221 = load i64*, i64** %vaarg.addr777.i, align 8, !dbg !2936
  tail call void @llvm.dbg.value(metadata i64* %221, i64 0, metadata !770, metadata !980) #2, !dbg !2930
  br label %if.end.791.i, !dbg !2936

if.else.778.i:                                    ; preds = %vaarg.end.759.i
  br i1 %fits_in_gp769.i, label %vaarg.in_reg.783.i, label %vaarg.in_mem.785.i, !dbg !2939

vaarg.in_reg.783.i:                               ; preds = %if.else.778.i
  %222 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !2941
  %reg_save_area784.i = load i8*, i8** %222, align 8, !dbg !2941
  %223 = sext i32 %gp_offset768.i to i64, !dbg !2941
  %224 = getelementptr i8, i8* %reg_save_area784.i, i64 %223, !dbg !2941
  %225 = add i32 %gp_offset768.i, 8, !dbg !2941
  store i32 %225, i32* %gp_offset_p750.i, align 4, !dbg !2941
  br label %vaarg.end.789.i, !dbg !2941

vaarg.in_mem.785.i:                               ; preds = %if.else.778.i
  %overflow_arg_area_p786.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !2943
  %overflow_arg_area787.i = load i8*, i8** %overflow_arg_area_p786.i, align 8, !dbg !2943
  %overflow_arg_area.next788.i = getelementptr i8, i8* %overflow_arg_area787.i, i64 8, !dbg !2943
  store i8* %overflow_arg_area.next788.i, i8** %overflow_arg_area_p786.i, align 8, !dbg !2943
  br label %vaarg.end.789.i, !dbg !2943

vaarg.end.789.i:                                  ; preds = %vaarg.in_mem.785.i, %vaarg.in_reg.783.i
  %vaarg.addr790.in.i = phi i8* [ %224, %vaarg.in_reg.783.i ], [ %overflow_arg_area787.i, %vaarg.in_mem.785.i ], !dbg !2170
  %vaarg.addr790.i = bitcast i8* %vaarg.addr790.in.i to i32**, !dbg !2931
  %226 = load i32*, i32** %vaarg.addr790.i, align 8, !dbg !2945
  tail call void @llvm.dbg.value(metadata i32* %226, i64 0, metadata !769, metadata !980) #2, !dbg !2930
  br label %if.end.791.i, !dbg !2170

if.end.791.i:                                     ; preds = %vaarg.end.789.i, %vaarg.end.776.i
  %q2762.0.i = phi i64* [ %221, %vaarg.end.776.i ], [ null, %vaarg.end.789.i ], !dbg !2170
  %q761.0.i = phi i32* [ null, %vaarg.end.776.i ], [ %226, %vaarg.end.789.i ], !dbg !2170
  %cmp793.i = icmp eq i8 %1, 122, !dbg !2948
  %cmp796.i = icmp eq %struct._object* %arg, @_Py_NoneStruct, !dbg !2949
  %or.cond1711.i = and i1 %cmp796.i, %cmp793.i, !dbg !2950
  br i1 %or.cond1711.i, label %if.then.798.i, label %if.else.804.i, !dbg !2950

if.then.798.i:                                    ; preds = %if.end.791.i
  store i8* null, i8** %216, align 8, !dbg !2951, !tbaa !993
  br i1 %tobool764.i, label %if.then.801.i, label %if.else.802.i, !dbg !2953

if.then.801.i:                                    ; preds = %if.then.798.i
  store i64 0, i64* %q2762.0.i, align 8, !dbg !2954, !tbaa !1765
  br label %cleanup.859.i, !dbg !2954

if.else.802.i:                                    ; preds = %if.then.798.i
  store i32 0, i32* %q761.0.i, align 4, !dbg !2957, !tbaa !1059
  br label %cleanup.859.i, !dbg !2170

if.else.804.i:                                    ; preds = %if.end.791.i
  %ob_type805.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !2960
  %227 = load %struct._typeobject*, %struct._typeobject** %ob_type805.i, align 8, !dbg !2960, !tbaa !1179
  %tp_flags806.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %227, i64 0, i32 19, !dbg !2960
  %228 = load i64, i64* %tp_flags806.i, align 8, !dbg !2960, !tbaa !1182
  %and807.i = and i64 %228, 268435456, !dbg !2960
  %cmp808.i = icmp eq i64 %and807.i, 0, !dbg !2960
  br i1 %cmp808.i, label %if.else.832.i, label %if.then.810.i, !dbg !2961

if.then.810.i:                                    ; preds = %if.else.804.i
  %229 = bitcast i64* %len811.i to i8*, !dbg !2962
  call void @llvm.lifetime.start(i64 8, i8* %229) #2, !dbg !2962
  tail call void @llvm.dbg.value(metadata i64* %len811.i, i64 0, metadata !771, metadata !980) #2, !dbg !2963
  %call812.i = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %arg, i64* nonnull %len811.i) #2, !dbg !2964
  call void @llvm.dbg.value(metadata i8* %call812.i, i64 0, metadata !672, metadata !980) #2, !dbg !2868
  %cmp813.i = icmp eq i8* %call812.i, null, !dbg !2965
  br i1 %cmp813.i, label %if.then.815.i, label %if.end.817.i, !dbg !2967

if.then.815.i:                                    ; preds = %if.then.810.i
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i64 0, i64 0), i64 0, metadata !880, metadata !980) #2, !dbg !2968
  call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !2970
  call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !2971
  call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !2972
  br i1 %cmp796.i, label %converterr.exit2466.i, label %cond.false.i.2463.i, !dbg !2973

cond.false.i.2463.i:                              ; preds = %if.then.815.i
  %230 = load %struct._typeobject*, %struct._typeobject** %ob_type805.i, align 8, !dbg !2974, !tbaa !1179
  %tp_name.i.2462.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %230, i64 0, i32 1, !dbg !2975
  %231 = load i8*, i8** %tp_name.i.2462.i, align 8, !dbg !2975, !tbaa !2094
  br label %converterr.exit2466.i, !dbg !2973

converterr.exit2466.i:                            ; preds = %cond.false.i.2463.i, %if.then.815.i
  %cond.i.2464.i = phi i8* [ %231, %cond.false.i.2463.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.then.815.i ], !dbg !2973
  %call.i.2465.i = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i64 0, i64 0), i8* %cond.i.2464.i) #2, !dbg !2976
  br label %cleanup.829.thread2760.i, !dbg !2977

if.end.817.i:                                     ; preds = %if.then.810.i
  store i8* %call812.i, i8** %216, align 8, !dbg !2978, !tbaa !993
  call void @llvm.dbg.value(metadata i64* %len811.i, i64 0, metadata !771, metadata !980) #2, !dbg !2963
  %232 = load i64, i64* %len811.i, align 8, !dbg !2979, !tbaa !1765
  br i1 %tobool764.i, label %if.then.820.i, label %if.else.821.i, !dbg !2982

if.then.820.i:                                    ; preds = %if.end.817.i
  store i64 %232, i64* %q2762.0.i, align 8, !dbg !2979, !tbaa !1765
  br label %cleanup.829.thread.i, !dbg !2979

if.else.821.i:                                    ; preds = %if.end.817.i
  %cmp822.i = icmp sgt i64 %232, 2147483647, !dbg !2983
  br i1 %cmp822.i, label %if.then.824.i, label %if.end.826.i, !dbg !2987

if.then.824.i:                                    ; preds = %if.else.821.i
  %233 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2988, !tbaa !993
  call void @PyErr_SetString(%struct._object* %233, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.42, i64 0, i64 0)) #2, !dbg !2988
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i64 0, metadata !880, metadata !980) #2, !dbg !2991
  call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !2993
  call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !2994
  call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !2995
  br i1 %cmp796.i, label %converterr.exit2473.i, label %cond.false.i.2470.i, !dbg !2996

cond.false.i.2470.i:                              ; preds = %if.then.824.i
  %234 = load %struct._typeobject*, %struct._typeobject** %ob_type805.i, align 8, !dbg !2997, !tbaa !1179
  %tp_name.i.2469.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %234, i64 0, i32 1, !dbg !2998
  %235 = load i8*, i8** %tp_name.i.2469.i, align 8, !dbg !2998, !tbaa !2094
  br label %converterr.exit2473.i, !dbg !2996

converterr.exit2473.i:                            ; preds = %cond.false.i.2470.i, %if.then.824.i
  %cond.i.2471.i = phi i8* [ %235, %cond.false.i.2470.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.then.824.i ], !dbg !2996
  %call.i.2472.i = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* %cond.i.2471.i) #2, !dbg !2999
  br label %cleanup.829.thread2760.i, !dbg !3000

if.end.826.i:                                     ; preds = %if.else.821.i
  %conv827.i = trunc i64 %232 to i32, !dbg !3001
  store i32 %conv827.i, i32* %q761.0.i, align 4, !dbg !3001, !tbaa !1059
  br label %cleanup.829.thread.i, !dbg !2170

cleanup.829.thread.i:                             ; preds = %if.end.826.i, %if.then.820.i
  call void @llvm.lifetime.end(i64 8, i8* %229) #2, !dbg !3003
  br label %cleanup.859.i, !dbg !2170

cleanup.829.thread2760.i:                         ; preds = %converterr.exit2473.i, %converterr.exit2466.i
  call void @llvm.lifetime.end(i64 8, i8* %229) #2, !dbg !3003
  br label %convertsimple.exit, !dbg !2170

if.else.832.i:                                    ; preds = %if.else.804.i
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !908, metadata !980) #2, !dbg !3005
  tail call void @llvm.dbg.value(metadata i8** %216, i64 0, metadata !909, metadata !980) #2, !dbg !3007
  %tp_as_buffer.i.2476.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %227, i64 0, i32 18, !dbg !3008
  %236 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer.i.2476.i, align 8, !dbg !3008, !tbaa !2741
  tail call void @llvm.dbg.value(metadata %struct.PyBufferProcs* %236, i64 0, metadata !911, metadata !980) #2, !dbg !3009
  %237 = bitcast %struct.bufferinfo* %view.i.2474.i to i8*, !dbg !3010
  call void @llvm.lifetime.start(i64 80, i8* %237) #2, !dbg !3010
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !890, metadata !980) #2, !dbg !3011
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !910, metadata !980) #2, !dbg !3013
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !775, metadata !980) #2, !dbg !3014
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !775, metadata !980) #2, !dbg !3014
  store i8* null, i8** %216, align 8, !dbg !3015, !tbaa !993
  %cmp.i.2477.i = icmp eq %struct.PyBufferProcs* %236, null, !dbg !3016
  br i1 %cmp.i.2477.i, label %if.end.i.2484.i, label %land.lhs.true.i.2480.i, !dbg !3017

land.lhs.true.i.2480.i:                           ; preds = %if.else.832.i
  %bf_releasebuffer.i.2478.i = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %236, i64 0, i32 1, !dbg !3018
  %238 = load void (%struct._object*, %struct.bufferinfo*)*, void (%struct._object*, %struct.bufferinfo*)** %bf_releasebuffer.i.2478.i, align 8, !dbg !3018, !tbaa !1161
  %cmp1.i.2479.i = icmp eq void (%struct._object*, %struct.bufferinfo*)* %238, null, !dbg !3019
  br i1 %cmp1.i.2479.i, label %if.end.i.2484.i, label %convertbuffer.exit2493.thread.i, !dbg !3020

if.end.i.2484.i:                                  ; preds = %land.lhs.true.i.2480.i, %if.else.832.i
  tail call void @llvm.dbg.value(metadata %struct.bufferinfo* %view.i.2474.i, i64 0, metadata !913, metadata !980) #2, !dbg !3021
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !888, metadata !980) #2, !dbg !3022
  tail call void @llvm.dbg.value(metadata %struct.bufferinfo* %view.i.2474.i, i64 0, metadata !889, metadata !980) #2, !dbg !3023
  %call.i.i.2482.i = call i32 @PyObject_GetBuffer(%struct._object* %arg, %struct.bufferinfo* nonnull %view.i.2474.i, i32 0) #2, !dbg !3024
  %cmp.i.i.2483.i = icmp eq i32 %call.i.i.2482.i, 0, !dbg !3025
  br i1 %cmp.i.i.2483.i, label %if.end.i.i.2488.i, label %convertbuffer.exit2493.thread.i, !dbg !3026

if.end.i.i.2488.i:                                ; preds = %if.end.i.2484.i
  %call1.i.i.2486.i = call i32 @PyBuffer_IsContiguous(%struct.bufferinfo* nonnull %view.i.2474.i, i8 signext 67) #2, !dbg !3027
  %tobool.i.i.2487.i = icmp eq i32 %call1.i.i.2486.i, 0, !dbg !3027
  br i1 %tobool.i.i.2487.i, label %if.then.2.i.i.2489.i, label %convertbuffer.exit2493.i, !dbg !3028

if.then.2.i.i.2489.i:                             ; preds = %if.end.i.i.2488.i
  call void @PyBuffer_Release(%struct.bufferinfo* nonnull %view.i.2474.i) #2, !dbg !3029
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), i64 0, metadata !890, metadata !980) #2, !dbg !3011
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), i64 0, metadata !910, metadata !980) #2, !dbg !3013
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), i64 0, metadata !775, metadata !980) #2, !dbg !3014
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), i64 0, metadata !775, metadata !980) #2, !dbg !3014
  br label %convertbuffer.exit2493.thread.i, !dbg !3030

convertbuffer.exit2493.thread.i:                  ; preds = %if.then.2.i.i.2489.i, %if.end.i.2484.i, %land.lhs.true.i.2480.i
  %buf833.0.2718.ph.i = phi i8* [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i64 0, i64 0), %if.end.i.2484.i ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.68, i64 0, i64 0), %land.lhs.true.i.2480.i ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), %if.then.2.i.i.2489.i ], !dbg !2170
  call void @llvm.lifetime.end(i64 80, i8* %237) #2, !dbg !3031
  br label %if.then.838.i, !dbg !3032

convertbuffer.exit2493.i:                         ; preds = %if.end.i.i.2488.i
  %len.i.2490.i = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view.i.2474.i, i64 0, i32 2, !dbg !3033
  %239 = load i64, i64* %len.i.2490.i, align 8, !dbg !3033, !tbaa !2764
  %240 = bitcast %struct.bufferinfo* %view.i.2474.i to i64*, !dbg !3034
  %241 = load i64, i64* %240, align 8, !dbg !3034, !tbaa !2767
  %242 = bitcast i8** %216 to i64*, !dbg !3035
  store i64 %241, i64* %242, align 8, !dbg !3035, !tbaa !993
  call void @llvm.dbg.value(metadata %struct.bufferinfo* %view.i.2474.i, i64 0, metadata !913, metadata !980) #2, !dbg !3021
  call void @PyBuffer_Release(%struct.bufferinfo* nonnull %view.i.2474.i) #2, !dbg !3036
  call void @llvm.lifetime.end(i64 80, i8* %237) #2, !dbg !3031
  %cmp836.i = icmp slt i64 %239, 0, !dbg !3037
  br i1 %cmp836.i, label %if.then.838.i, label %if.end.840.i, !dbg !3032

if.then.838.i:                                    ; preds = %convertbuffer.exit2493.i, %convertbuffer.exit2493.thread.i
  %buf833.0.27182763.i = phi i8* [ %buf833.0.2718.ph.i, %convertbuffer.exit2493.thread.i ], [ null, %convertbuffer.exit2493.i ], !dbg !2170
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !880, metadata !980) #2, !dbg !3039
  call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !3041
  call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !3042
  call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !3043
  br i1 %cmp796.i, label %converterr.exit2500.i, label %cond.false.i.2497.i, !dbg !3044

cond.false.i.2497.i:                              ; preds = %if.then.838.i
  %243 = load %struct._typeobject*, %struct._typeobject** %ob_type805.i, align 8, !dbg !3045, !tbaa !1179
  %tp_name.i.2496.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %243, i64 0, i32 1, !dbg !3046
  %244 = load i8*, i8** %tp_name.i.2496.i, align 8, !dbg !3046, !tbaa !2094
  br label %converterr.exit2500.i, !dbg !3044

converterr.exit2500.i:                            ; preds = %cond.false.i.2497.i, %if.then.838.i
  %cond.i.2498.i = phi i8* [ %244, %cond.false.i.2497.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.then.838.i ], !dbg !3044
  %call.i.2499.i = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* %buf833.0.27182763.i, i8* %cond.i.2498.i) #2, !dbg !3047
  br label %convertsimple.exit, !dbg !3048

if.end.840.i:                                     ; preds = %convertbuffer.exit2493.i
  br i1 %tobool764.i, label %if.then.843.i, label %if.else.844.i, !dbg !3049

if.then.843.i:                                    ; preds = %if.end.840.i
  store i64 %239, i64* %q2762.0.i, align 8, !dbg !3050, !tbaa !1765
  br label %cleanup.859.i, !dbg !3050

if.else.844.i:                                    ; preds = %if.end.840.i
  %cmp845.i = icmp sgt i64 %239, 2147483647, !dbg !3053
  br i1 %cmp845.i, label %if.then.847.i, label %if.end.849.i, !dbg !3057

if.then.847.i:                                    ; preds = %if.else.844.i
  %245 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !3058, !tbaa !993
  call void @PyErr_SetString(%struct._object* %245, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.42, i64 0, i64 0)) #2, !dbg !3058
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i64 0, metadata !880, metadata !980) #2, !dbg !3061
  call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !3063
  call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !3064
  call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !3065
  br i1 %cmp796.i, label %converterr.exit2507.i, label %cond.false.i.2504.i, !dbg !3066

cond.false.i.2504.i:                              ; preds = %if.then.847.i
  %246 = load %struct._typeobject*, %struct._typeobject** %ob_type805.i, align 8, !dbg !3067, !tbaa !1179
  %tp_name.i.2503.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %246, i64 0, i32 1, !dbg !3068
  %247 = load i8*, i8** %tp_name.i.2503.i, align 8, !dbg !3068, !tbaa !2094
  br label %converterr.exit2507.i, !dbg !3066

converterr.exit2507.i:                            ; preds = %cond.false.i.2504.i, %if.then.847.i
  %cond.i.2505.i = phi i8* [ %247, %cond.false.i.2504.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.then.847.i ], !dbg !3066
  %call.i.2506.i = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* %cond.i.2505.i) #2, !dbg !3069
  br label %convertsimple.exit, !dbg !3070

if.end.849.i:                                     ; preds = %if.else.844.i
  %conv850.i = trunc i64 %239 to i32, !dbg !3071
  store i32 %conv850.i, i32* %q761.0.i, align 4, !dbg !3071, !tbaa !1059
  br label %cleanup.859.i, !dbg !2170

cleanup.859.i:                                    ; preds = %if.end.849.i, %if.then.843.i, %cleanup.829.thread.i, %if.else.802.i, %if.then.801.i
  %incdec.ptr858.i = getelementptr i8, i8* %0, i64 2, !dbg !3073
  call void @llvm.dbg.value(metadata i8* %incdec.ptr858.i, i64 0, metadata !670, metadata !980) #2, !dbg !2161
  br label %if.then.14, !dbg !2170

if.else.864.i:                                    ; preds = %sw.bb.678.i
  %gp_offset_p867.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 0, !dbg !3074
  %gp_offset868.i = load i32, i32* %gp_offset_p867.i, align 4, !dbg !3074
  %fits_in_gp869.i = icmp ult i32 %gp_offset868.i, 41, !dbg !3074
  br i1 %fits_in_gp869.i, label %vaarg.in_reg.870.i, label %vaarg.in_mem.872.i, !dbg !3074

vaarg.in_reg.870.i:                               ; preds = %if.else.864.i
  %248 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !3075
  %reg_save_area871.i = load i8*, i8** %248, align 8, !dbg !3075
  %249 = sext i32 %gp_offset868.i to i64, !dbg !3075
  %250 = getelementptr i8, i8* %reg_save_area871.i, i64 %249, !dbg !3075
  %251 = add i32 %gp_offset868.i, 8, !dbg !3075
  store i32 %251, i32* %gp_offset_p867.i, align 4, !dbg !3075
  br label %vaarg.end.876.i, !dbg !3075

vaarg.in_mem.872.i:                               ; preds = %if.else.864.i
  %overflow_arg_area_p873.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !3077
  %overflow_arg_area874.i = load i8*, i8** %overflow_arg_area_p873.i, align 8, !dbg !3077
  %overflow_arg_area.next875.i = getelementptr i8, i8* %overflow_arg_area874.i, i64 8, !dbg !3077
  store i8* %overflow_arg_area.next875.i, i8** %overflow_arg_area_p873.i, align 8, !dbg !3077
  br label %vaarg.end.876.i, !dbg !3077

vaarg.end.876.i:                                  ; preds = %vaarg.in_mem.872.i, %vaarg.in_reg.870.i
  %vaarg.addr877.in.i = phi i8* [ %250, %vaarg.in_reg.870.i ], [ %overflow_arg_area874.i, %vaarg.in_mem.872.i ], !dbg !2170
  %vaarg.addr877.i = bitcast i8* %vaarg.addr877.in.i to i8***, !dbg !3074
  %252 = load i8**, i8*** %vaarg.addr877.i, align 8, !dbg !3079
  tail call void @llvm.dbg.value(metadata i8** %252, i64 0, metadata !778, metadata !980) #2, !dbg !3082
  %253 = bitcast i64* %len878.i to i8*, !dbg !3083
  call void @llvm.lifetime.start(i64 8, i8* %253) #2, !dbg !3083
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !672, metadata !980) #2, !dbg !2868
  %cmp880.i = icmp eq i8 %1, 122, !dbg !3084
  %cmp883.i = icmp eq %struct._object* %arg, @_Py_NoneStruct, !dbg !3086
  %or.cond1712.i = and i1 %cmp883.i, %cmp880.i, !dbg !3087
  br i1 %or.cond1712.i, label %if.end.906.thread.i, label %if.else.886.i, !dbg !3087

if.end.906.thread.i:                              ; preds = %vaarg.end.876.i
  store i8* null, i8** %252, align 8, !dbg !3088, !tbaa !993
  br label %cleanup.923.thread.i, !dbg !3089

if.else.886.i:                                    ; preds = %vaarg.end.876.i
  %ob_type887.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !3091
  %254 = load %struct._typeobject*, %struct._typeobject** %ob_type887.i, align 8, !dbg !3091, !tbaa !1179
  %tp_flags888.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %254, i64 0, i32 19, !dbg !3091
  %255 = load i64, i64* %tp_flags888.i, align 8, !dbg !3091, !tbaa !1182
  %and889.i = and i64 %255, 268435456, !dbg !3091
  %cmp890.i = icmp eq i64 %and889.i, 0, !dbg !3091
  br i1 %cmp890.i, label %if.else.899.i, label %if.then.892.i, !dbg !3093

if.then.892.i:                                    ; preds = %if.else.886.i
  tail call void @llvm.dbg.value(metadata i64* %len878.i, i64 0, metadata !780, metadata !980) #2, !dbg !3094
  %call893.i = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %arg, i64* nonnull %len878.i) #2, !dbg !3095
  call void @llvm.dbg.value(metadata i8* %call893.i, i64 0, metadata !672, metadata !980) #2, !dbg !2868
  %cmp894.i = icmp eq i8* %call893.i, null, !dbg !3097
  br i1 %cmp894.i, label %if.then.896.i, label %if.end.906.i, !dbg !3099

if.then.896.i:                                    ; preds = %if.then.892.i
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i64 0, i64 0), i64 0, metadata !880, metadata !980) #2, !dbg !3100
  call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !3102
  call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !3103
  call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !3104
  br i1 %cmp883.i, label %converterr.exit2514.i, label %cond.false.i.2511.i, !dbg !3105

cond.false.i.2511.i:                              ; preds = %if.then.896.i
  %256 = load %struct._typeobject*, %struct._typeobject** %ob_type887.i, align 8, !dbg !3106, !tbaa !1179
  %tp_name.i.2510.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %256, i64 0, i32 1, !dbg !3107
  %257 = load i8*, i8** %tp_name.i.2510.i, align 8, !dbg !3107, !tbaa !2094
  br label %converterr.exit2514.i, !dbg !3105

converterr.exit2514.i:                            ; preds = %cond.false.i.2511.i, %if.then.896.i
  %cond.i.2512.i = phi i8* [ %257, %cond.false.i.2511.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.then.896.i ], !dbg !3105
  %call.i.2513.i = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i64 0, i64 0), i8* %cond.i.2512.i) #2, !dbg !3108
  br label %cleanup.923.i, !dbg !3109

if.else.899.i:                                    ; preds = %if.else.886.i
  %cond903.i = select i1 %cmp880.i, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0), !dbg !3110
  tail call void @llvm.dbg.value(metadata i8* %cond903.i, i64 0, metadata !880, metadata !980) #2, !dbg !3111
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !3113
  tail call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !3114
  tail call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !3115
  br i1 %cmp883.i, label %converterr.exit2521.i, label %cond.false.i.2518.i, !dbg !3116

cond.false.i.2518.i:                              ; preds = %if.else.899.i
  %tp_name.i.2517.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %254, i64 0, i32 1, !dbg !3117
  %258 = load i8*, i8** %tp_name.i.2517.i, align 8, !dbg !3117, !tbaa !2094
  br label %converterr.exit2521.i, !dbg !3116

converterr.exit2521.i:                            ; preds = %cond.false.i.2518.i, %if.else.899.i
  %cond.i.2519.i = phi i8* [ %258, %cond.false.i.2518.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.else.899.i ], !dbg !3116
  %call.i.2520.i = tail call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* %cond903.i, i8* %cond.i.2519.i) #2, !dbg !3118
  br label %cleanup.923.i, !dbg !3119

if.end.906.i:                                     ; preds = %if.then.892.i
  store i8* %call893.i, i8** %252, align 8, !dbg !3088, !tbaa !993
  %call913.i = call i64 @strlen(i8* %call893.i) #8, !dbg !3120
  call void @llvm.dbg.value(metadata i64* %len878.i, i64 0, metadata !780, metadata !980) #2, !dbg !3094
  %259 = load i64, i64* %len878.i, align 8, !dbg !3121, !tbaa !1765
  %cmp914.i = icmp eq i64 %call913.i, %259, !dbg !3122
  br i1 %cmp914.i, label %cleanup.923.thread.i, label %if.then.916.i, !dbg !3123

if.then.916.i:                                    ; preds = %if.end.906.i
  %cond920.i = select i1 %cmp880.i, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i64 0, i64 0), !dbg !3124
  call void @llvm.dbg.value(metadata i8* %cond920.i, i64 0, metadata !880, metadata !980) #2, !dbg !3125
  call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !3127
  call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !3128
  call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !3129
  br i1 %cmp883.i, label %converterr.exit2528.i, label %cond.false.i.2525.i, !dbg !3130

cond.false.i.2525.i:                              ; preds = %if.then.916.i
  %260 = load %struct._typeobject*, %struct._typeobject** %ob_type887.i, align 8, !dbg !3131, !tbaa !1179
  %tp_name.i.2524.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %260, i64 0, i32 1, !dbg !3132
  %261 = load i8*, i8** %tp_name.i.2524.i, align 8, !dbg !3132, !tbaa !2094
  br label %converterr.exit2528.i, !dbg !3130

converterr.exit2528.i:                            ; preds = %cond.false.i.2525.i, %if.then.916.i
  %cond.i.2526.i = phi i8* [ %261, %cond.false.i.2525.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.then.916.i ], !dbg !3130
  %call.i.2527.i = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* %cond920.i, i8* %cond.i.2526.i) #2, !dbg !3133
  br label %cleanup.923.i, !dbg !3134

cleanup.923.thread.i:                             ; preds = %if.end.906.i, %if.end.906.thread.i
  call void @llvm.lifetime.end(i64 8, i8* %253) #2, !dbg !3135
  br label %if.then.14, !dbg !2170

cleanup.923.i:                                    ; preds = %converterr.exit2528.i, %converterr.exit2521.i, %converterr.exit2514.i
  call void @llvm.lifetime.end(i64 8, i8* %253) #2, !dbg !3135
  br label %convertsimple.exit, !dbg !2170

sw.bb.929.i:                                      ; preds = %if.else, %if.else
  %gp_offset_p932.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 0, !dbg !3137
  %gp_offset933.i = load i32, i32* %gp_offset_p932.i, align 4, !dbg !3137
  %fits_in_gp934.i = icmp ult i32 %gp_offset933.i, 41, !dbg !3137
  br i1 %fits_in_gp934.i, label %vaarg.in_reg.935.i, label %vaarg.in_mem.937.i, !dbg !3137

vaarg.in_reg.935.i:                               ; preds = %sw.bb.929.i
  %262 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !3138
  %reg_save_area936.i = load i8*, i8** %262, align 8, !dbg !3138
  %263 = sext i32 %gp_offset933.i to i64, !dbg !3138
  %264 = getelementptr i8, i8* %reg_save_area936.i, i64 %263, !dbg !3138
  %265 = add i32 %gp_offset933.i, 8, !dbg !3138
  store i32 %265, i32* %gp_offset_p932.i, align 4, !dbg !3138
  br label %vaarg.end.941.i, !dbg !3138

vaarg.in_mem.937.i:                               ; preds = %sw.bb.929.i
  %overflow_arg_area_p938.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !3140
  %overflow_arg_area939.i = load i8*, i8** %overflow_arg_area_p938.i, align 8, !dbg !3140
  %overflow_arg_area.next940.i = getelementptr i8, i8* %overflow_arg_area939.i, i64 8, !dbg !3140
  store i8* %overflow_arg_area.next940.i, i8** %overflow_arg_area_p938.i, align 8, !dbg !3140
  br label %vaarg.end.941.i, !dbg !3140

vaarg.end.941.i:                                  ; preds = %vaarg.in_mem.937.i, %vaarg.in_reg.935.i
  %gp_offset954.i = phi i32 [ %265, %vaarg.in_reg.935.i ], [ %gp_offset933.i, %vaarg.in_mem.937.i ], !dbg !3142
  %vaarg.addr942.in.i = phi i8* [ %264, %vaarg.in_reg.935.i ], [ %overflow_arg_area939.i, %vaarg.in_mem.937.i ], !dbg !2170
  %vaarg.addr942.i = bitcast i8* %vaarg.addr942.in.i to i32***, !dbg !3137
  %266 = load i32**, i32*** %vaarg.addr942.i, align 8, !dbg !3145
  tail call void @llvm.dbg.value(metadata i32** %266, i64 0, metadata !781, metadata !980) #2, !dbg !3148
  %267 = load i8, i8* %incdec.ptr, align 1, !dbg !3149, !tbaa !1036
  %cmp944.i = icmp eq i8 %267, 35, !dbg !3150
  br i1 %cmp944.i, label %if.then.946.i, label %if.else.1026.i, !dbg !3151

if.then.946.i:                                    ; preds = %vaarg.end.941.i
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !786, metadata !980) #2, !dbg !3152
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !789, metadata !980) #2, !dbg !3152
  %and949.i = and i32 %flags, 2, !dbg !3153
  %tobool950.i = icmp ne i32 %and949.i, 0, !dbg !3153
  %fits_in_gp955.i = icmp ult i32 %gp_offset954.i, 41, !dbg !3142
  br i1 %tobool950.i, label %if.then.951.i, label %if.else.964.i, !dbg !3152

if.then.951.i:                                    ; preds = %if.then.946.i
  br i1 %fits_in_gp955.i, label %vaarg.in_reg.956.i, label %vaarg.in_mem.958.i, !dbg !3142

vaarg.in_reg.956.i:                               ; preds = %if.then.951.i
  %268 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !3154
  %reg_save_area957.i = load i8*, i8** %268, align 8, !dbg !3154
  %269 = sext i32 %gp_offset954.i to i64, !dbg !3154
  %270 = getelementptr i8, i8* %reg_save_area957.i, i64 %269, !dbg !3154
  %271 = add i32 %gp_offset954.i, 8, !dbg !3154
  store i32 %271, i32* %gp_offset_p932.i, align 4, !dbg !3154
  br label %vaarg.end.962.i, !dbg !3154

vaarg.in_mem.958.i:                               ; preds = %if.then.951.i
  %overflow_arg_area_p959.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !3156
  %overflow_arg_area960.i = load i8*, i8** %overflow_arg_area_p959.i, align 8, !dbg !3156
  %overflow_arg_area.next961.i = getelementptr i8, i8* %overflow_arg_area960.i, i64 8, !dbg !3156
  store i8* %overflow_arg_area.next961.i, i8** %overflow_arg_area_p959.i, align 8, !dbg !3156
  br label %vaarg.end.962.i, !dbg !3156

vaarg.end.962.i:                                  ; preds = %vaarg.in_mem.958.i, %vaarg.in_reg.956.i
  %vaarg.addr963.in.i = phi i8* [ %270, %vaarg.in_reg.956.i ], [ %overflow_arg_area960.i, %vaarg.in_mem.958.i ], !dbg !2170
  %vaarg.addr963.i = bitcast i8* %vaarg.addr963.in.i to i64**, !dbg !3153
  %272 = load i64*, i64** %vaarg.addr963.i, align 8, !dbg !3158
  tail call void @llvm.dbg.value(metadata i64* %272, i64 0, metadata !789, metadata !980) #2, !dbg !3152
  br label %if.end.977.i, !dbg !3158

if.else.964.i:                                    ; preds = %if.then.946.i
  br i1 %fits_in_gp955.i, label %vaarg.in_reg.969.i, label %vaarg.in_mem.971.i, !dbg !3161

vaarg.in_reg.969.i:                               ; preds = %if.else.964.i
  %273 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !3163
  %reg_save_area970.i = load i8*, i8** %273, align 8, !dbg !3163
  %274 = sext i32 %gp_offset954.i to i64, !dbg !3163
  %275 = getelementptr i8, i8* %reg_save_area970.i, i64 %274, !dbg !3163
  %276 = add i32 %gp_offset954.i, 8, !dbg !3163
  store i32 %276, i32* %gp_offset_p932.i, align 4, !dbg !3163
  br label %vaarg.end.975.i, !dbg !3163

vaarg.in_mem.971.i:                               ; preds = %if.else.964.i
  %overflow_arg_area_p972.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !3165
  %overflow_arg_area973.i = load i8*, i8** %overflow_arg_area_p972.i, align 8, !dbg !3165
  %overflow_arg_area.next974.i = getelementptr i8, i8* %overflow_arg_area973.i, i64 8, !dbg !3165
  store i8* %overflow_arg_area.next974.i, i8** %overflow_arg_area_p972.i, align 8, !dbg !3165
  br label %vaarg.end.975.i, !dbg !3165

vaarg.end.975.i:                                  ; preds = %vaarg.in_mem.971.i, %vaarg.in_reg.969.i
  %vaarg.addr976.in.i = phi i8* [ %275, %vaarg.in_reg.969.i ], [ %overflow_arg_area973.i, %vaarg.in_mem.971.i ], !dbg !2170
  %vaarg.addr976.i = bitcast i8* %vaarg.addr976.in.i to i32**, !dbg !3153
  %277 = load i32*, i32** %vaarg.addr976.i, align 8, !dbg !3167
  tail call void @llvm.dbg.value(metadata i32* %277, i64 0, metadata !786, metadata !980) #2, !dbg !3152
  br label %if.end.977.i, !dbg !2170

if.end.977.i:                                     ; preds = %vaarg.end.975.i, %vaarg.end.962.i
  %q2948.0.i = phi i64* [ %272, %vaarg.end.962.i ], [ null, %vaarg.end.975.i ], !dbg !2170
  %q947.0.i = phi i32* [ null, %vaarg.end.962.i ], [ %277, %vaarg.end.975.i ], !dbg !2170
  %cmp979.i = icmp eq i8 %1, 90, !dbg !3170
  %cmp982.i = icmp eq %struct._object* %arg, @_Py_NoneStruct, !dbg !3171
  %or.cond1714.i = and i1 %cmp982.i, %cmp979.i, !dbg !3172
  br i1 %or.cond1714.i, label %if.then.984.i, label %if.else.990.i, !dbg !3172

if.then.984.i:                                    ; preds = %if.end.977.i
  store i32* null, i32** %266, align 8, !dbg !3173, !tbaa !993
  br i1 %tobool950.i, label %if.then.987.i, label %if.else.988.i, !dbg !3175

if.then.987.i:                                    ; preds = %if.then.984.i
  store i64 0, i64* %q2948.0.i, align 8, !dbg !3176, !tbaa !1765
  br label %cleanup.1022.i, !dbg !3176

if.else.988.i:                                    ; preds = %if.then.984.i
  store i32 0, i32* %q947.0.i, align 4, !dbg !3179, !tbaa !1059
  br label %cleanup.1022.i, !dbg !2170

if.else.990.i:                                    ; preds = %if.end.977.i
  %ob_type991.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !3182
  %278 = load %struct._typeobject*, %struct._typeobject** %ob_type991.i, align 8, !dbg !3182, !tbaa !1179
  %tp_flags992.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %278, i64 0, i32 19, !dbg !3182
  %279 = load i64, i64* %tp_flags992.i, align 8, !dbg !3182, !tbaa !1182
  %and993.i = and i64 %279, 268435456, !dbg !3182
  %cmp994.i = icmp eq i64 %and993.i, 0, !dbg !3182
  br i1 %cmp994.i, label %if.else.1017.i, label %if.then.996.i, !dbg !3183

if.then.996.i:                                    ; preds = %if.else.990.i
  %280 = bitcast i64* %len997.i to i8*, !dbg !3184
  call void @llvm.lifetime.start(i64 8, i8* %280) #2, !dbg !3184
  tail call void @llvm.dbg.value(metadata i64* %len997.i, i64 0, metadata !790, metadata !980) #2, !dbg !3185
  %call998.i = call i32* @PyUnicode_AsUnicodeAndSize(%struct._object* %arg, i64* nonnull %len997.i) #2, !dbg !3186
  store i32* %call998.i, i32** %266, align 8, !dbg !3187, !tbaa !993
  %cmp999.i = icmp eq i32* %call998.i, null, !dbg !3188
  br i1 %cmp999.i, label %cleanup.1014.thread2773.i, label %if.end.1002.i, !dbg !3190

if.end.1002.i:                                    ; preds = %if.then.996.i
  call void @llvm.dbg.value(metadata i64* %len997.i, i64 0, metadata !790, metadata !980) #2, !dbg !3185
  %281 = load i64, i64* %len997.i, align 8, !dbg !3191, !tbaa !1765
  br i1 %tobool950.i, label %if.then.1005.i, label %if.else.1006.i, !dbg !3194

if.then.1005.i:                                   ; preds = %if.end.1002.i
  store i64 %281, i64* %q2948.0.i, align 8, !dbg !3191, !tbaa !1765
  br label %cleanup.1014.thread.i, !dbg !3191

if.else.1006.i:                                   ; preds = %if.end.1002.i
  %cmp1007.i = icmp sgt i64 %281, 2147483647, !dbg !3195
  br i1 %cmp1007.i, label %if.then.1009.i, label %if.end.1011.i, !dbg !3199

if.then.1009.i:                                   ; preds = %if.else.1006.i
  %282 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !3200, !tbaa !993
  call void @PyErr_SetString(%struct._object* %282, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.42, i64 0, i64 0)) #2, !dbg !3200
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i64 0, metadata !880, metadata !980) #2, !dbg !3203
  call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !3205
  call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !3206
  call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !3207
  br i1 %cmp982.i, label %converterr.exit2535.i, label %cond.false.i.2532.i, !dbg !3208

cond.false.i.2532.i:                              ; preds = %if.then.1009.i
  %283 = load %struct._typeobject*, %struct._typeobject** %ob_type991.i, align 8, !dbg !3209, !tbaa !1179
  %tp_name.i.2531.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %283, i64 0, i32 1, !dbg !3210
  %284 = load i8*, i8** %tp_name.i.2531.i, align 8, !dbg !3210, !tbaa !2094
  br label %converterr.exit2535.i, !dbg !3208

converterr.exit2535.i:                            ; preds = %cond.false.i.2532.i, %if.then.1009.i
  %cond.i.2533.i = phi i8* [ %284, %cond.false.i.2532.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.then.1009.i ], !dbg !3208
  %call.i.2534.i = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* %cond.i.2533.i) #2, !dbg !3211
  br label %cleanup.1014.thread2773.i, !dbg !3212

if.end.1011.i:                                    ; preds = %if.else.1006.i
  %conv1012.i = trunc i64 %281 to i32, !dbg !3213
  store i32 %conv1012.i, i32* %q947.0.i, align 4, !dbg !3213, !tbaa !1059
  br label %cleanup.1014.thread.i, !dbg !2170

cleanup.1014.thread.i:                            ; preds = %if.end.1011.i, %if.then.1005.i
  call void @llvm.lifetime.end(i64 8, i8* %280) #2, !dbg !3215
  br label %cleanup.1022.i, !dbg !2170

cleanup.1014.thread2773.i:                        ; preds = %converterr.exit2535.i, %if.then.996.i
  call void @llvm.lifetime.end(i64 8, i8* %280) #2, !dbg !3215
  br label %convertsimple.exit, !dbg !2170

if.else.1017.i:                                   ; preds = %if.else.990.i
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0), i64 0, metadata !880, metadata !980) #2, !dbg !3217
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !3219
  tail call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !3220
  tail call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !3221
  br i1 %cmp982.i, label %converterr.exit2542.i, label %cond.false.i.2539.i, !dbg !3222

cond.false.i.2539.i:                              ; preds = %if.else.1017.i
  %tp_name.i.2538.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %278, i64 0, i32 1, !dbg !3223
  %285 = load i8*, i8** %tp_name.i.2538.i, align 8, !dbg !3223, !tbaa !2094
  br label %converterr.exit2542.i, !dbg !3222

converterr.exit2542.i:                            ; preds = %cond.false.i.2539.i, %if.else.1017.i
  %cond.i.2540.i = phi i8* [ %285, %cond.false.i.2539.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.else.1017.i ], !dbg !3222
  %call.i.2541.i = tail call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0), i8* %cond.i.2540.i) #2, !dbg !3224
  br label %convertsimple.exit, !dbg !3225

cleanup.1022.i:                                   ; preds = %cleanup.1014.thread.i, %if.else.988.i, %if.then.987.i
  %incdec.ptr1021.i = getelementptr i8, i8* %0, i64 2, !dbg !3226
  call void @llvm.dbg.value(metadata i8* %incdec.ptr1021.i, i64 0, metadata !670, metadata !980) #2, !dbg !2161
  br label %if.then.14, !dbg !2170

if.else.1026.i:                                   ; preds = %vaarg.end.941.i
  %cmp1028.i = icmp eq i8 %1, 90, !dbg !3227
  %cmp1031.i = icmp eq %struct._object* %arg, @_Py_NoneStruct, !dbg !3228
  %or.cond1715.i = and i1 %cmp1031.i, %cmp1028.i, !dbg !3229
  br i1 %or.cond1715.i, label %if.then.1033.i, label %if.else.1034.i, !dbg !3229

if.then.1033.i:                                   ; preds = %if.else.1026.i
  store i32* null, i32** %266, align 8, !dbg !3230, !tbaa !993
  br label %if.then.14, !dbg !3231

if.else.1034.i:                                   ; preds = %if.else.1026.i
  %ob_type1035.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !3232
  %286 = load %struct._typeobject*, %struct._typeobject** %ob_type1035.i, align 8, !dbg !3232, !tbaa !1179
  %tp_flags1036.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %286, i64 0, i32 19, !dbg !3232
  %287 = load i64, i64* %tp_flags1036.i, align 8, !dbg !3232, !tbaa !1182
  %and1037.i = and i64 %287, 268435456, !dbg !3232
  %cmp1038.i = icmp eq i64 %and1037.i, 0, !dbg !3232
  br i1 %cmp1038.i, label %if.else.1056.i, label %if.then.1040.i, !dbg !3233

if.then.1040.i:                                   ; preds = %if.else.1034.i
  %288 = bitcast i64* %len1041.i to i8*, !dbg !3234
  call void @llvm.lifetime.start(i64 8, i8* %288) #2, !dbg !3234
  tail call void @llvm.dbg.value(metadata i64* %len1041.i, i64 0, metadata !794, metadata !980) #2, !dbg !3235
  %call1042.i = call i32* @PyUnicode_AsUnicodeAndSize(%struct._object* %arg, i64* nonnull %len1041.i) #2, !dbg !3236
  store i32* %call1042.i, i32** %266, align 8, !dbg !3237, !tbaa !993
  %cmp1043.i = icmp eq i32* %call1042.i, null, !dbg !3238
  br i1 %cmp1043.i, label %cleanup.1053.thread.i, label %if.end.1046.i, !dbg !3240

if.end.1046.i:                                    ; preds = %if.then.1040.i
  %call1047.i = call i64 @Py_UNICODE_strlen(i32* %call1042.i) #2, !dbg !3241
  call void @llvm.dbg.value(metadata i64* %len1041.i, i64 0, metadata !794, metadata !980) #2, !dbg !3235
  %289 = load i64, i64* %len1041.i, align 8, !dbg !3243, !tbaa !1765
  %cmp1048.i = icmp eq i64 %call1047.i, %289, !dbg !3244
  br i1 %cmp1048.i, label %cleanup.1053.thread2777.i, label %if.then.1050.i, !dbg !3245

cleanup.1053.thread2777.i:                        ; preds = %if.end.1046.i
  call void @llvm.lifetime.end(i64 8, i8* %288) #2, !dbg !3246
  br label %if.then.14, !dbg !2170

if.then.1050.i:                                   ; preds = %if.end.1046.i
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.47, i64 0, i64 0), i64 0, metadata !880, metadata !980) #2, !dbg !3248
  call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !3250
  call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !3251
  call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !3252
  br i1 %cmp1031.i, label %converterr.exit2549.i, label %cond.false.i.2546.i, !dbg !3253

cond.false.i.2546.i:                              ; preds = %if.then.1050.i
  %290 = load %struct._typeobject*, %struct._typeobject** %ob_type1035.i, align 8, !dbg !3254, !tbaa !1179
  %tp_name.i.2545.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %290, i64 0, i32 1, !dbg !3255
  %291 = load i8*, i8** %tp_name.i.2545.i, align 8, !dbg !3255, !tbaa !2094
  br label %converterr.exit2549.i, !dbg !3253

converterr.exit2549.i:                            ; preds = %cond.false.i.2546.i, %if.then.1050.i
  %cond.i.2547.i = phi i8* [ %291, %cond.false.i.2546.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.then.1050.i ], !dbg !3253
  %call.i.2548.i = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.47, i64 0, i64 0), i8* %cond.i.2547.i) #2, !dbg !3256
  br label %cleanup.1053.thread.i, !dbg !3257

cleanup.1053.thread.i:                            ; preds = %converterr.exit2549.i, %if.then.1040.i
  call void @llvm.lifetime.end(i64 8, i8* %288) #2, !dbg !3246
  br label %convertsimple.exit, !dbg !2170

if.else.1056.i:                                   ; preds = %if.else.1034.i
  %cond1060.i = select i1 %cmp1028.i, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0), !dbg !3258
  tail call void @llvm.dbg.value(metadata i8* %cond1060.i, i64 0, metadata !880, metadata !980) #2, !dbg !3259
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !3261
  tail call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !3262
  tail call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !3263
  br i1 %cmp1031.i, label %converterr.exit2556.i, label %cond.false.i.2553.i, !dbg !3264

cond.false.i.2553.i:                              ; preds = %if.else.1056.i
  %tp_name.i.2552.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %286, i64 0, i32 1, !dbg !3265
  %292 = load i8*, i8** %tp_name.i.2552.i, align 8, !dbg !3265, !tbaa !2094
  br label %converterr.exit2556.i, !dbg !3264

converterr.exit2556.i:                            ; preds = %cond.false.i.2553.i, %if.else.1056.i
  %cond.i.2554.i = phi i8* [ %292, %cond.false.i.2553.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.else.1056.i ], !dbg !3264
  %call.i.2555.i = tail call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* %cond1060.i, i8* %cond.i.2554.i) #2, !dbg !3266
  br label %convertsimple.exit, !dbg !3267

sw.bb.1067.i:                                     ; preds = %if.else
  %293 = bitcast i64* %size.i to i8*, !dbg !3268
  call void @llvm.lifetime.start(i64 8, i8* %293) #2, !dbg !3268
  %294 = bitcast i8** %ptr.i to i8*, !dbg !3269
  call void @llvm.lifetime.start(i64 8, i8* %294) #2, !dbg !3269
  %gp_offset_p1069.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 0, !dbg !3270
  %gp_offset1070.i = load i32, i32* %gp_offset_p1069.i, align 4, !dbg !3270
  %fits_in_gp1071.i = icmp ult i32 %gp_offset1070.i, 41, !dbg !3270
  br i1 %fits_in_gp1071.i, label %vaarg.in_reg.1072.i, label %vaarg.in_mem.1074.i, !dbg !3270

vaarg.in_reg.1072.i:                              ; preds = %sw.bb.1067.i
  %295 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !3271
  %reg_save_area1073.i = load i8*, i8** %295, align 8, !dbg !3271
  %296 = sext i32 %gp_offset1070.i to i64, !dbg !3271
  %297 = getelementptr i8, i8* %reg_save_area1073.i, i64 %296, !dbg !3271
  %298 = add i32 %gp_offset1070.i, 8, !dbg !3271
  store i32 %298, i32* %gp_offset_p1069.i, align 4, !dbg !3271
  br label %vaarg.end.1078.i, !dbg !3271

vaarg.in_mem.1074.i:                              ; preds = %sw.bb.1067.i
  %overflow_arg_area_p1075.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !3273
  %overflow_arg_area1076.i = load i8*, i8** %overflow_arg_area_p1075.i, align 8, !dbg !3273
  %overflow_arg_area.next1077.i = getelementptr i8, i8* %overflow_arg_area1076.i, i64 8, !dbg !3273
  store i8* %overflow_arg_area.next1077.i, i8** %overflow_arg_area_p1075.i, align 8, !dbg !3273
  br label %vaarg.end.1078.i, !dbg !3273

vaarg.end.1078.i:                                 ; preds = %vaarg.in_mem.1074.i, %vaarg.in_reg.1072.i
  %vaarg.addr1079.in.i = phi i8* [ %297, %vaarg.in_reg.1072.i ], [ %overflow_arg_area1076.i, %vaarg.in_mem.1074.i ], !dbg !2170
  %vaarg.addr1079.i = bitcast i8* %vaarg.addr1079.in.i to i8**, !dbg !3270
  %299 = load i8*, i8** %vaarg.addr1079.i, align 8, !dbg !3275
  tail call void @llvm.dbg.value(metadata i8* %299, i64 0, metadata !801, metadata !980) #2, !dbg !3278
  %cmp1080.i = icmp eq i8* %299, null, !dbg !3279
  br i1 %cmp1080.i, label %if.then.1082.i, label %if.end.1084.i, !dbg !3281

if.then.1082.i:                                   ; preds = %vaarg.end.1078.i
  %call1083.i = tail call i8* @PyUnicode_GetDefaultEncoding() #2, !dbg !3282
  tail call void @llvm.dbg.value(metadata i8* %call1083.i, i64 0, metadata !801, metadata !980) #2, !dbg !3278
  br label %if.end.1084.i, !dbg !3283

if.end.1084.i:                                    ; preds = %if.then.1082.i, %vaarg.end.1078.i
  %encoding.0.i = phi i8* [ %call1083.i, %if.then.1082.i ], [ %299, %vaarg.end.1078.i ], !dbg !2170
  %300 = load i8, i8* %incdec.ptr, align 1, !dbg !3284, !tbaa !1036
  switch i8 %300, label %if.else.1094.i [
    i8 115, label %if.end.1097.i
    i8 116, label %if.then.1093.i
  ], !dbg !3286

if.then.1093.i:                                   ; preds = %if.end.1084.i
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !803, metadata !980) #2, !dbg !3287
  br label %if.end.1097.i, !dbg !2170

if.else.1094.i:                                   ; preds = %if.end.1084.i
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.49, i64 0, i64 0), i64 0, metadata !880, metadata !980) #2, !dbg !3288
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !3291
  tail call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !3292
  tail call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !3293
  %cmp.i.2557.i = icmp eq %struct._object* %arg, @_Py_NoneStruct, !dbg !3294
  br i1 %cmp.i.2557.i, label %converterr.exit2563.i, label %cond.false.i.2560.i, !dbg !3295

cond.false.i.2560.i:                              ; preds = %if.else.1094.i
  %ob_type.i.2558.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !3296
  %301 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.2558.i, align 8, !dbg !3296, !tbaa !1179
  %tp_name.i.2559.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %301, i64 0, i32 1, !dbg !3297
  %302 = load i8*, i8** %tp_name.i.2559.i, align 8, !dbg !3297, !tbaa !2094
  br label %converterr.exit2563.i, !dbg !3295

converterr.exit2563.i:                            ; preds = %cond.false.i.2560.i, %if.else.1094.i
  %cond.i.2561.i = phi i8* [ %302, %cond.false.i.2560.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.else.1094.i ], !dbg !3295
  %call.i.2562.i = tail call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.49, i64 0, i64 0), i8* %cond.i.2561.i) #2, !dbg !3298
  br label %cleanup.1426.thread.i, !dbg !3299

if.end.1097.i:                                    ; preds = %if.then.1093.i, %if.end.1084.i
  %recode_strings.0.i = phi i32 [ 0, %if.then.1093.i ], [ 1, %if.end.1084.i ], !dbg !2170
  %gp_offset1100.i = load i32, i32* %gp_offset_p1069.i, align 4, !dbg !3300
  %fits_in_gp1101.i = icmp ult i32 %gp_offset1100.i, 41, !dbg !3300
  br i1 %fits_in_gp1101.i, label %vaarg.in_reg.1102.i, label %vaarg.in_mem.1104.i, !dbg !3300

vaarg.in_reg.1102.i:                              ; preds = %if.end.1097.i
  %303 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !3301
  %reg_save_area1103.i = load i8*, i8** %303, align 8, !dbg !3301
  %304 = sext i32 %gp_offset1100.i to i64, !dbg !3301
  %305 = getelementptr i8, i8* %reg_save_area1103.i, i64 %304, !dbg !3301
  %306 = add i32 %gp_offset1100.i, 8, !dbg !3301
  store i32 %306, i32* %gp_offset_p1069.i, align 4, !dbg !3301
  br label %vaarg.end.1108.i, !dbg !3301

vaarg.in_mem.1104.i:                              ; preds = %if.end.1097.i
  %overflow_arg_area_p1105.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !3302
  %overflow_arg_area1106.i = load i8*, i8** %overflow_arg_area_p1105.i, align 8, !dbg !3302
  %overflow_arg_area.next1107.i = getelementptr i8, i8* %overflow_arg_area1106.i, i64 8, !dbg !3302
  store i8* %overflow_arg_area.next1107.i, i8** %overflow_arg_area_p1105.i, align 8, !dbg !3302
  br label %vaarg.end.1108.i, !dbg !3302

vaarg.end.1108.i:                                 ; preds = %vaarg.in_mem.1104.i, %vaarg.in_reg.1102.i
  %vaarg.addr1109.in.i = phi i8* [ %305, %vaarg.in_reg.1102.i ], [ %overflow_arg_area1106.i, %vaarg.in_mem.1104.i ], !dbg !2170
  %vaarg.addr1109.i = bitcast i8* %vaarg.addr1109.in.i to i8***, !dbg !3300
  %307 = load i8**, i8*** %vaarg.addr1109.i, align 8, !dbg !3303
  tail call void @llvm.dbg.value(metadata i8** %307, i64 0, metadata !799, metadata !980) #2, !dbg !3304
  %incdec.ptr1110.i = getelementptr i8, i8* %0, i64 2, !dbg !3305
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr1110.i, i64 0, metadata !670, metadata !980) #2, !dbg !2161
  %cmp1111.i = icmp eq i8** %307, null, !dbg !3306
  br i1 %cmp1111.i, label %if.then.1113.i, label %if.end.1115.i, !dbg !3308

if.then.1113.i:                                   ; preds = %vaarg.end.1108.i
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i64 0, i64 0), i64 0, metadata !880, metadata !980) #2, !dbg !3309
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !3311
  tail call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !3312
  tail call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !3313
  %cmp.i.2564.i = icmp eq %struct._object* %arg, @_Py_NoneStruct, !dbg !3314
  br i1 %cmp.i.2564.i, label %converterr.exit2570.i, label %cond.false.i.2567.i, !dbg !3315

cond.false.i.2567.i:                              ; preds = %if.then.1113.i
  %ob_type.i.2565.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !3316
  %308 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.2565.i, align 8, !dbg !3316, !tbaa !1179
  %tp_name.i.2566.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %308, i64 0, i32 1, !dbg !3317
  %309 = load i8*, i8** %tp_name.i.2566.i, align 8, !dbg !3317, !tbaa !2094
  br label %converterr.exit2570.i, !dbg !3315

converterr.exit2570.i:                            ; preds = %cond.false.i.2567.i, %if.then.1113.i
  %cond.i.2568.i = phi i8* [ %309, %cond.false.i.2567.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.then.1113.i ], !dbg !3315
  %call.i.2569.i = tail call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i64 0, i64 0), i8* %cond.i.2568.i) #2, !dbg !3318
  br label %cleanup.1426.thread.i, !dbg !3319

if.end.1115.i:                                    ; preds = %vaarg.end.1108.i
  %tobool1116.i = icmp eq i32 %recode_strings.0.i, 0, !dbg !3320
  br i1 %tobool1116.i, label %land.lhs.true.1117.i, label %if.else.1139.i, !dbg !3321

land.lhs.true.1117.i:                             ; preds = %if.end.1115.i
  %ob_type1118.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !3322
  %310 = load %struct._typeobject*, %struct._typeobject** %ob_type1118.i, align 8, !dbg !3322, !tbaa !1179
  %tp_flags1119.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %310, i64 0, i32 19, !dbg !3322
  %311 = load i64, i64* %tp_flags1119.i, align 8, !dbg !3322, !tbaa !1182
  %and1120.i = and i64 %311, 134217728, !dbg !3322
  %cmp1121.i = icmp ne i64 %and1120.i, 0, !dbg !3322
  %cmp1125.i = icmp eq %struct._typeobject* %310, @PyByteArray_Type, !dbg !3323
  %or.cond2298.i = or i1 %cmp1125.i, %cmp1121.i, !dbg !3325
  br i1 %or.cond2298.i, label %if.then.1131.i, label %lor.lhs.false.1127.i, !dbg !3325

lor.lhs.false.1127.i:                             ; preds = %land.lhs.true.1117.i
  %call1129.i = tail call i32 @PyType_IsSubtype(%struct._typeobject* %310, %struct._typeobject* nonnull @PyByteArray_Type) #2, !dbg !3326
  %tobool1130.i = icmp eq i32 %call1129.i, 0, !dbg !3326
  br i1 %tobool1130.i, label %if.else.1139.i, label %if.then.1131.i, !dbg !3328

if.then.1131.i:                                   ; preds = %lor.lhs.false.1127.i, %land.lhs.true.1117.i
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !802, metadata !980) #2, !dbg !3329
  %ob_refcnt1132.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 0, i32 0, !dbg !3330
  %312 = load i64, i64* %ob_refcnt1132.i, align 8, !dbg !3330, !tbaa !2135
  %inc.i = add i64 %312, 1, !dbg !3330
  store i64 %inc.i, i64* %ob_refcnt1132.i, align 8, !dbg !3330, !tbaa !2135
  tail call void @llvm.dbg.value(metadata i64* %size.i, i64 0, metadata !804, metadata !980) #2, !dbg !3332
  tail call void @llvm.dbg.value(metadata i8** %ptr.i, i64 0, metadata !805, metadata !980) #2, !dbg !3333
  %call1133.i = call i32 @PyObject_AsCharBuffer(%struct._object* %arg, i8** nonnull %ptr.i, i64* nonnull %size.i) #2, !dbg !3334
  %cmp1134.i = icmp slt i32 %call1133.i, 0, !dbg !3336
  br i1 %cmp1134.i, label %if.then.1136.i, label %if.end.1196.i, !dbg !3337

if.then.1136.i:                                   ; preds = %if.then.1131.i
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.51, i64 0, i64 0), i64 0, metadata !880, metadata !980) #2, !dbg !3338
  call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !3340
  call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !3341
  call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !3342
  %cmp.i.2571.i = icmp eq %struct._object* %arg, @_Py_NoneStruct, !dbg !3343
  br i1 %cmp.i.2571.i, label %converterr.exit2577.i, label %cond.false.i.2574.i, !dbg !3344

cond.false.i.2574.i:                              ; preds = %if.then.1136.i
  %313 = load %struct._typeobject*, %struct._typeobject** %ob_type1118.i, align 8, !dbg !3345, !tbaa !1179
  %tp_name.i.2573.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %313, i64 0, i32 1, !dbg !3346
  %314 = load i8*, i8** %tp_name.i.2573.i, align 8, !dbg !3346, !tbaa !2094
  br label %converterr.exit2577.i, !dbg !3344

converterr.exit2577.i:                            ; preds = %cond.false.i.2574.i, %if.then.1136.i
  %cond.i.2575.i = phi i8* [ %314, %cond.false.i.2574.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.then.1136.i ], !dbg !3344
  %call.i.2576.i = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.51, i64 0, i64 0), i8* %cond.i.2575.i) #2, !dbg !3347
  br label %cleanup.1426.thread.i, !dbg !3348

if.else.1139.i:                                   ; preds = %lor.lhs.false.1127.i, %if.end.1115.i
  %call1140.i = tail call %struct._object* @PyUnicode_FromObject(%struct._object* %arg) #2, !dbg !3349
  tail call void @llvm.dbg.value(metadata %struct._object* %call1140.i, i64 0, metadata !806, metadata !980) #2, !dbg !3350
  %cmp1141.i = icmp eq %struct._object* %call1140.i, null, !dbg !3351
  br i1 %cmp1141.i, label %if.then.1143.i, label %if.end.1145.i, !dbg !3353

if.then.1143.i:                                   ; preds = %if.else.1139.i
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.52, i64 0, i64 0), i64 0, metadata !880, metadata !980) #2, !dbg !3354
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !3356
  tail call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !3357
  tail call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !3358
  %cmp.i.2578.i = icmp eq %struct._object* %arg, @_Py_NoneStruct, !dbg !3359
  br i1 %cmp.i.2578.i, label %converterr.exit2584.i, label %cond.false.i.2581.i, !dbg !3360

cond.false.i.2581.i:                              ; preds = %if.then.1143.i
  %ob_type.i.2579.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !3361
  %315 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.2579.i, align 8, !dbg !3361, !tbaa !1179
  %tp_name.i.2580.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %315, i64 0, i32 1, !dbg !3362
  %316 = load i8*, i8** %tp_name.i.2580.i, align 8, !dbg !3362, !tbaa !2094
  br label %converterr.exit2584.i, !dbg !3360

converterr.exit2584.i:                            ; preds = %cond.false.i.2581.i, %if.then.1143.i
  %cond.i.2582.i = phi i8* [ %316, %cond.false.i.2581.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.then.1143.i ], !dbg !3360
  %call.i.2583.i = tail call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.52, i64 0, i64 0), i8* %cond.i.2582.i) #2, !dbg !3363
  br label %cleanup.1426.thread.i, !dbg !3364

if.end.1145.i:                                    ; preds = %if.else.1139.i
  %call1146.i = tail call %struct._object* @PyUnicode_AsEncodedString(%struct._object* %call1140.i, i8* %encoding.0.i, i8* null) #2, !dbg !3365
  tail call void @llvm.dbg.value(metadata %struct._object* %call1146.i, i64 0, metadata !802, metadata !980) #2, !dbg !3329
  tail call void @llvm.dbg.value(metadata %struct._object* %call1140.i, i64 0, metadata !809, metadata !980) #2, !dbg !3366
  %ob_refcnt1149.i = getelementptr inbounds %struct._object, %struct._object* %call1140.i, i64 0, i32 0, !dbg !3368
  %317 = load i64, i64* %ob_refcnt1149.i, align 8, !dbg !3368, !tbaa !2135
  %dec1150.i = add i64 %317, -1, !dbg !3368
  store i64 %dec1150.i, i64* %ob_refcnt1149.i, align 8, !dbg !3368, !tbaa !2135
  %cmp1151.i = icmp eq i64 %dec1150.i, 0, !dbg !3368
  br i1 %cmp1151.i, label %if.else.1154.i, label %if.end.1157.i, !dbg !3370

if.else.1154.i:                                   ; preds = %if.end.1145.i
  %ob_type1155.i = getelementptr inbounds %struct._object, %struct._object* %call1140.i, i64 0, i32 1, !dbg !3371
  %318 = load %struct._typeobject*, %struct._typeobject** %ob_type1155.i, align 8, !dbg !3371, !tbaa !1179
  %tp_dealloc1156.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %318, i64 0, i32 4, !dbg !3371
  %319 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1156.i, align 8, !dbg !3371, !tbaa !2139
  tail call void %319(%struct._object* %call1140.i) #2, !dbg !3371
  br label %if.end.1157.i, !dbg !2170

if.end.1157.i:                                    ; preds = %if.else.1154.i, %if.end.1145.i
  %cmp1160.i = icmp eq %struct._object* %call1146.i, null, !dbg !3373
  br i1 %cmp1160.i, label %if.then.1162.i, label %if.end.1164.i, !dbg !3375

if.then.1162.i:                                   ; preds = %if.end.1157.i
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.53, i64 0, i64 0), i64 0, metadata !880, metadata !980) #2, !dbg !3376
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !3378
  tail call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !3379
  tail call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !3380
  %cmp.i.2585.i = icmp eq %struct._object* %arg, @_Py_NoneStruct, !dbg !3381
  br i1 %cmp.i.2585.i, label %converterr.exit2591.i, label %cond.false.i.2588.i, !dbg !3382

cond.false.i.2588.i:                              ; preds = %if.then.1162.i
  %ob_type.i.2586.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !3383
  %320 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.2586.i, align 8, !dbg !3383, !tbaa !1179
  %tp_name.i.2587.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %320, i64 0, i32 1, !dbg !3384
  %321 = load i8*, i8** %tp_name.i.2587.i, align 8, !dbg !3384, !tbaa !2094
  br label %converterr.exit2591.i, !dbg !3382

converterr.exit2591.i:                            ; preds = %cond.false.i.2588.i, %if.then.1162.i
  %cond.i.2589.i = phi i8* [ %321, %cond.false.i.2588.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.then.1162.i ], !dbg !3382
  %call.i.2590.i = tail call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.53, i64 0, i64 0), i8* %cond.i.2589.i) #2, !dbg !3385
  br label %cleanup.1426.thread.i, !dbg !3386

if.end.1164.i:                                    ; preds = %if.end.1157.i
  %ob_type1165.i = getelementptr inbounds %struct._object, %struct._object* %call1146.i, i64 0, i32 1, !dbg !3387
  %322 = load %struct._typeobject*, %struct._typeobject** %ob_type1165.i, align 8, !dbg !3388, !tbaa !1179
  %tp_flags1166.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %322, i64 0, i32 19, !dbg !3387
  %323 = load i64, i64* %tp_flags1166.i, align 8, !dbg !3387, !tbaa !1182
  %and1167.i = and i64 %323, 134217728, !dbg !3387
  %cmp1168.i = icmp eq i64 %and1167.i, 0, !dbg !3387
  br i1 %cmp1168.i, label %do.body.1171.i, label %cleanup.1193.i, !dbg !3391

do.body.1171.i:                                   ; preds = %if.end.1164.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call1146.i, i64 0, metadata !811, metadata !980) #2, !dbg !3392
  %ob_refcnt1173.i = getelementptr inbounds %struct._object, %struct._object* %call1146.i, i64 0, i32 0, !dbg !3394
  %324 = load i64, i64* %ob_refcnt1173.i, align 8, !dbg !3394, !tbaa !2135
  %dec1174.i = add i64 %324, -1, !dbg !3394
  store i64 %dec1174.i, i64* %ob_refcnt1173.i, align 8, !dbg !3394, !tbaa !2135
  %cmp1175.i = icmp eq i64 %dec1174.i, 0, !dbg !3394
  br i1 %cmp1175.i, label %if.else.1178.i, label %if.end.1181.i, !dbg !3395

if.else.1178.i:                                   ; preds = %do.body.1171.i
  %tp_dealloc1180.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %322, i64 0, i32 4, !dbg !3388
  %325 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1180.i, align 8, !dbg !3388, !tbaa !2139
  tail call void %325(%struct._object* %call1146.i) #2, !dbg !3388
  br label %if.end.1181.i, !dbg !2170

if.end.1181.i:                                    ; preds = %if.else.1178.i, %do.body.1171.i
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.54, i64 0, i64 0), i64 0, metadata !880, metadata !980) #2, !dbg !3396
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !3398
  tail call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !3399
  tail call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !3400
  %cmp.i.2592.i = icmp eq %struct._object* %arg, @_Py_NoneStruct, !dbg !3401
  br i1 %cmp.i.2592.i, label %converterr.exit2598.i, label %cond.false.i.2595.i, !dbg !3402

cond.false.i.2595.i:                              ; preds = %if.end.1181.i
  %ob_type.i.2593.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !3403
  %326 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.2593.i, align 8, !dbg !3403, !tbaa !1179
  %tp_name.i.2594.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %326, i64 0, i32 1, !dbg !3404
  %327 = load i8*, i8** %tp_name.i.2594.i, align 8, !dbg !3404, !tbaa !2094
  br label %converterr.exit2598.i, !dbg !3402

converterr.exit2598.i:                            ; preds = %cond.false.i.2595.i, %if.end.1181.i
  %cond.i.2596.i = phi i8* [ %327, %cond.false.i.2595.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.end.1181.i ], !dbg !3402
  %call.i.2597.i = tail call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.54, i64 0, i64 0), i8* %cond.i.2596.i) #2, !dbg !3405
  br label %cleanup.1426.thread.i, !dbg !3406

cleanup.1193.i:                                   ; preds = %if.end.1164.i
  %328 = getelementptr inbounds %struct._object, %struct._object* %call1146.i, i64 1, i32 0, !dbg !3407
  %329 = load i64, i64* %328, align 8, !dbg !3407, !tbaa !1196
  tail call void @llvm.dbg.value(metadata i64 %329, i64 0, metadata !804, metadata !980) #2, !dbg !3332
  store i64 %329, i64* %size.i, align 8, !dbg !3408, !tbaa !1765
  %ob_sval1187.i = getelementptr inbounds %struct._object, %struct._object* %call1146.i, i64 2, !dbg !3409
  %330 = bitcast i8** %ptr.i to %struct._object**, !dbg !3410
  store %struct._object* %ob_sval1187.i, %struct._object** %330, align 8, !dbg !3410, !tbaa !993
  br label %if.end.1196.i, !dbg !2170

if.end.1196.i:                                    ; preds = %cleanup.1193.i, %if.then.1131.i
  %s.1.i = phi %struct._object* [ %call1146.i, %cleanup.1193.i ], [ %arg, %if.then.1131.i ], !dbg !2170
  %331 = load i8, i8* %incdec.ptr1110.i, align 1, !dbg !3412, !tbaa !1036
  %cmp1198.i = icmp eq i8 %331, 35, !dbg !3413
  br i1 %cmp1198.i, label %if.then.1200.i, label %if.else.1345.i, !dbg !3414

if.then.1200.i:                                   ; preds = %if.end.1196.i
  call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !815, metadata !980) #2, !dbg !3415
  call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !818, metadata !980) #2, !dbg !3415
  %and1203.i = and i32 %flags, 2, !dbg !3416
  %tobool1204.i = icmp ne i32 %and1203.i, 0, !dbg !3416
  %gp_offset1208.i = load i32, i32* %gp_offset_p1069.i, align 4, !dbg !3418
  %fits_in_gp1209.i = icmp ult i32 %gp_offset1208.i, 41, !dbg !3418
  br i1 %tobool1204.i, label %if.then.1205.i, label %if.else.1218.i, !dbg !3415

if.then.1205.i:                                   ; preds = %if.then.1200.i
  br i1 %fits_in_gp1209.i, label %vaarg.in_reg.1210.i, label %vaarg.in_mem.1212.i, !dbg !3418

vaarg.in_reg.1210.i:                              ; preds = %if.then.1205.i
  %332 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !3420
  %reg_save_area1211.i = load i8*, i8** %332, align 8, !dbg !3420
  %333 = sext i32 %gp_offset1208.i to i64, !dbg !3420
  %334 = getelementptr i8, i8* %reg_save_area1211.i, i64 %333, !dbg !3420
  %335 = add i32 %gp_offset1208.i, 8, !dbg !3420
  store i32 %335, i32* %gp_offset_p1069.i, align 4, !dbg !3420
  br label %vaarg.end.1216.i, !dbg !3420

vaarg.in_mem.1212.i:                              ; preds = %if.then.1205.i
  %overflow_arg_area_p1213.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !3422
  %overflow_arg_area1214.i = load i8*, i8** %overflow_arg_area_p1213.i, align 8, !dbg !3422
  %overflow_arg_area.next1215.i = getelementptr i8, i8* %overflow_arg_area1214.i, i64 8, !dbg !3422
  store i8* %overflow_arg_area.next1215.i, i8** %overflow_arg_area_p1213.i, align 8, !dbg !3422
  br label %vaarg.end.1216.i, !dbg !3422

vaarg.end.1216.i:                                 ; preds = %vaarg.in_mem.1212.i, %vaarg.in_reg.1210.i
  %vaarg.addr1217.in.i = phi i8* [ %334, %vaarg.in_reg.1210.i ], [ %overflow_arg_area1214.i, %vaarg.in_mem.1212.i ], !dbg !2170
  %vaarg.addr1217.i = bitcast i8* %vaarg.addr1217.in.i to i64**, !dbg !3416
  %336 = load i64*, i64** %vaarg.addr1217.i, align 8, !dbg !3424
  call void @llvm.dbg.value(metadata i64* %336, i64 0, metadata !818, metadata !980) #2, !dbg !3415
  br label %if.end.1231.i, !dbg !3424

if.else.1218.i:                                   ; preds = %if.then.1200.i
  br i1 %fits_in_gp1209.i, label %vaarg.in_reg.1223.i, label %vaarg.in_mem.1225.i, !dbg !3427

vaarg.in_reg.1223.i:                              ; preds = %if.else.1218.i
  %337 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !3429
  %reg_save_area1224.i = load i8*, i8** %337, align 8, !dbg !3429
  %338 = sext i32 %gp_offset1208.i to i64, !dbg !3429
  %339 = getelementptr i8, i8* %reg_save_area1224.i, i64 %338, !dbg !3429
  %340 = add i32 %gp_offset1208.i, 8, !dbg !3429
  store i32 %340, i32* %gp_offset_p1069.i, align 4, !dbg !3429
  br label %vaarg.end.1229.i, !dbg !3429

vaarg.in_mem.1225.i:                              ; preds = %if.else.1218.i
  %overflow_arg_area_p1226.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !3431
  %overflow_arg_area1227.i = load i8*, i8** %overflow_arg_area_p1226.i, align 8, !dbg !3431
  %overflow_arg_area.next1228.i = getelementptr i8, i8* %overflow_arg_area1227.i, i64 8, !dbg !3431
  store i8* %overflow_arg_area.next1228.i, i8** %overflow_arg_area_p1226.i, align 8, !dbg !3431
  br label %vaarg.end.1229.i, !dbg !3431

vaarg.end.1229.i:                                 ; preds = %vaarg.in_mem.1225.i, %vaarg.in_reg.1223.i
  %vaarg.addr1230.in.i = phi i8* [ %339, %vaarg.in_reg.1223.i ], [ %overflow_arg_area1227.i, %vaarg.in_mem.1225.i ], !dbg !2170
  %vaarg.addr1230.i = bitcast i8* %vaarg.addr1230.in.i to i32**, !dbg !3416
  %341 = load i32*, i32** %vaarg.addr1230.i, align 8, !dbg !3433
  call void @llvm.dbg.value(metadata i32* %341, i64 0, metadata !815, metadata !980) #2, !dbg !3415
  br label %if.end.1231.i, !dbg !2170

if.end.1231.i:                                    ; preds = %vaarg.end.1229.i, %vaarg.end.1216.i
  %q21202.0.i = phi i64* [ %336, %vaarg.end.1216.i ], [ null, %vaarg.end.1229.i ], !dbg !2170
  %q1201.0.i = phi i32* [ null, %vaarg.end.1216.i ], [ %341, %vaarg.end.1229.i ], !dbg !2170
  %incdec.ptr1232.i = getelementptr i8, i8* %0, i64 3, !dbg !3436
  call void @llvm.dbg.value(metadata i8* %incdec.ptr1232.i, i64 0, metadata !670, metadata !980) #2, !dbg !2161
  %cmp1233.i = icmp eq i32* %q1201.0.i, null, !dbg !3437
  %cmp1236.i = icmp eq i64* %q21202.0.i, null, !dbg !3438
  %or.cond1716.i = and i1 %cmp1236.i, %cmp1233.i, !dbg !3439
  br i1 %or.cond1716.i, label %do.body.1239.i, label %if.end.1253.i, !dbg !3439

do.body.1239.i:                                   ; preds = %if.end.1231.i
  call void @llvm.dbg.value(metadata %struct._object* %s.1.i, i64 0, metadata !819, metadata !980) #2, !dbg !3440
  %ob_refcnt1241.i = getelementptr inbounds %struct._object, %struct._object* %s.1.i, i64 0, i32 0, !dbg !3442
  %342 = load i64, i64* %ob_refcnt1241.i, align 8, !dbg !3442, !tbaa !2135
  %dec1242.i = add i64 %342, -1, !dbg !3442
  store i64 %dec1242.i, i64* %ob_refcnt1241.i, align 8, !dbg !3442, !tbaa !2135
  %cmp1243.i = icmp eq i64 %dec1242.i, 0, !dbg !3442
  br i1 %cmp1243.i, label %if.else.1246.i, label %if.end.1249.i, !dbg !3444

if.else.1246.i:                                   ; preds = %do.body.1239.i
  %ob_type1247.i = getelementptr inbounds %struct._object, %struct._object* %s.1.i, i64 0, i32 1, !dbg !3445
  %343 = load %struct._typeobject*, %struct._typeobject** %ob_type1247.i, align 8, !dbg !3445, !tbaa !1179
  %tp_dealloc1248.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %343, i64 0, i32 4, !dbg !3445
  %344 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1248.i, align 8, !dbg !3445, !tbaa !2139
  call void %344(%struct._object* %s.1.i) #2, !dbg !3445
  br label %if.end.1249.i, !dbg !2170

if.end.1249.i:                                    ; preds = %if.else.1246.i, %do.body.1239.i
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.55, i64 0, i64 0), i64 0, metadata !880, metadata !980) #2, !dbg !3447
  call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !3449
  call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !3450
  call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !3451
  %cmp.i.2599.i = icmp eq %struct._object* %arg, @_Py_NoneStruct, !dbg !3452
  br i1 %cmp.i.2599.i, label %converterr.exit2605.i, label %cond.false.i.2602.i, !dbg !3453

cond.false.i.2602.i:                              ; preds = %if.end.1249.i
  %ob_type.i.2600.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !3454
  %345 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.2600.i, align 8, !dbg !3454, !tbaa !1179
  %tp_name.i.2601.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %345, i64 0, i32 1, !dbg !3455
  %346 = load i8*, i8** %tp_name.i.2601.i, align 8, !dbg !3455, !tbaa !2094
  br label %converterr.exit2605.i, !dbg !3453

converterr.exit2605.i:                            ; preds = %cond.false.i.2602.i, %if.end.1249.i
  %cond.i.2603.i = phi i8* [ %346, %cond.false.i.2602.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.end.1249.i ], !dbg !3453
  %call.i.2604.i = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.55, i64 0, i64 0), i8* %cond.i.2603.i) #2, !dbg !3456
  br label %cleanup.1426.thread.i, !dbg !3457

if.end.1253.i:                                    ; preds = %if.end.1231.i
  %347 = load i8*, i8** %307, align 8, !dbg !3458, !tbaa !993
  %cmp1254.i = icmp eq i8* %347, null, !dbg !3459
  call void @llvm.dbg.value(metadata i64* %size.i, i64 0, metadata !804, metadata !980) #2, !dbg !3332
  %348 = load i64, i64* %size.i, align 8, !dbg !3460, !tbaa !1765
  %add.i = add i64 %348, 1, !dbg !3460
  br i1 %cmp1254.i, label %if.then.1256.i, label %if.else.1301.i, !dbg !3461

if.then.1256.i:                                   ; preds = %if.end.1253.i
  %cmp1257.i = icmp slt i64 %add.i, 0, !dbg !3460
  br i1 %cmp1257.i, label %cond.end.1263.thread.i, label %cond.end.1263.i, !dbg !3460

cond.end.1263.thread.i:                           ; preds = %if.then.1256.i
  store i8* null, i8** %307, align 8, !dbg !3462, !tbaa !993
  br label %do.body.1268.i, !dbg !3463

cond.end.1263.i:                                  ; preds = %if.then.1256.i
  %call1262.i = call i8* @PyMem_Malloc(i64 %add.i) #2, !dbg !3464
  store i8* %call1262.i, i8** %307, align 8, !dbg !3462, !tbaa !993
  %cmp1265.i = icmp eq i8* %call1262.i, null, !dbg !3466
  br i1 %cmp1265.i, label %do.body.1268.i, label %if.end.1282.i, !dbg !3463

do.body.1268.i:                                   ; preds = %cond.end.1263.i, %cond.end.1263.thread.i
  call void @llvm.dbg.value(metadata %struct._object* %s.1.i, i64 0, metadata !823, metadata !980) #2, !dbg !3467
  %ob_refcnt1270.i = getelementptr inbounds %struct._object, %struct._object* %s.1.i, i64 0, i32 0, !dbg !3469
  %349 = load i64, i64* %ob_refcnt1270.i, align 8, !dbg !3469, !tbaa !2135
  %dec1271.i = add i64 %349, -1, !dbg !3469
  store i64 %dec1271.i, i64* %ob_refcnt1270.i, align 8, !dbg !3469, !tbaa !2135
  %cmp1272.i = icmp eq i64 %dec1271.i, 0, !dbg !3469
  br i1 %cmp1272.i, label %if.else.1275.i, label %if.end.1278.i, !dbg !3471

if.else.1275.i:                                   ; preds = %do.body.1268.i
  %ob_type1276.i = getelementptr inbounds %struct._object, %struct._object* %s.1.i, i64 0, i32 1, !dbg !3472
  %350 = load %struct._typeobject*, %struct._typeobject** %ob_type1276.i, align 8, !dbg !3472, !tbaa !1179
  %tp_dealloc1277.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %350, i64 0, i32 4, !dbg !3472
  %351 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1277.i, align 8, !dbg !3472, !tbaa !2139
  call void %351(%struct._object* %s.1.i) #2, !dbg !3472
  br label %if.end.1278.i, !dbg !2170

if.end.1278.i:                                    ; preds = %if.else.1275.i, %do.body.1268.i
  %call1281.i = call %struct._object* @PyErr_NoMemory() #2, !dbg !3474
  br label %cleanup.1426.thread.i, !dbg !3475

if.end.1282.i:                                    ; preds = %cond.end.1263.i
  %first_available.i.2606.i = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i64 0, i32 1, !dbg !3476
  %352 = load i32, i32* %first_available.i.2606.i, align 4, !dbg !3476, !tbaa !1023
  call void @llvm.dbg.value(metadata i32 %352, i64 0, metadata !898, metadata !980) #2, !dbg !3478
  %add.i.2607.i = add i32 %352, 1, !dbg !3479
  store i32 %add.i.2607.i, i32* %first_available.i.2606.i, align 4, !dbg !3479, !tbaa !1023
  %idxprom.i.2608.i = sext i32 %352 to i64, !dbg !3480
  %entries.i.2609.i = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i64 0, i32 0, !dbg !3481
  %353 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries.i.2609.i, align 8, !dbg !3481, !tbaa !1018
  %item.i.2610.i = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %353, i64 %idxprom.i.2608.i, i32 0, !dbg !3482
  store i8* %call1262.i, i8** %item.i.2610.i, align 8, !dbg !3483, !tbaa !1164
  %destructor5.i.2611.i = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %353, i64 %idxprom.i.2608.i, i32 1, !dbg !3484
  store i32 (%struct._object*, i8*)* @cleanup_ptr, i32 (%struct._object*, i8*)** %destructor5.i.2611.i, align 8, !dbg !3485, !tbaa !1161
  %.pre.i = load i8*, i8** %307, align 8, !dbg !3486, !tbaa !993
  %.pre2800.i = load i64, i64* %size.i, align 8, !dbg !3487, !tbaa !1765
  br label %if.end.1328.i, !dbg !3488

if.else.1301.i:                                   ; preds = %if.end.1253.i
  br i1 %tobool1204.i, label %cond.true.1305.i, label %cond.false.1306.i, !dbg !3489

cond.true.1305.i:                                 ; preds = %if.else.1301.i
  %354 = load i64, i64* %q21202.0.i, align 8, !dbg !3490, !tbaa !1765
  br label %cond.end.1308.i, !dbg !3490

cond.false.1306.i:                                ; preds = %if.else.1301.i
  %355 = load i32, i32* %q1201.0.i, align 4, !dbg !3492, !tbaa !1059
  %conv1307.i = sext i32 %355 to i64, !dbg !3492
  br label %cond.end.1308.i, !dbg !3492

cond.end.1308.i:                                  ; preds = %cond.false.1306.i, %cond.true.1305.i
  %cond1309.i = phi i64 [ %354, %cond.true.1305.i ], [ %conv1307.i, %cond.false.1306.i ], !dbg !3489
  %cmp1310.i = icmp sgt i64 %add.i, %cond1309.i, !dbg !3494
  br i1 %cmp1310.i, label %do.body.1313.i, label %if.end.1328.i, !dbg !3497

do.body.1313.i:                                   ; preds = %cond.end.1308.i
  call void @llvm.dbg.value(metadata %struct._object* %s.1.i, i64 0, metadata !833, metadata !980) #2, !dbg !3498
  %ob_refcnt1315.i = getelementptr inbounds %struct._object, %struct._object* %s.1.i, i64 0, i32 0, !dbg !3500
  %356 = load i64, i64* %ob_refcnt1315.i, align 8, !dbg !3500, !tbaa !2135
  %dec1316.i = add i64 %356, -1, !dbg !3500
  store i64 %dec1316.i, i64* %ob_refcnt1315.i, align 8, !dbg !3500, !tbaa !2135
  %cmp1317.i = icmp eq i64 %dec1316.i, 0, !dbg !3500
  br i1 %cmp1317.i, label %if.else.1320.i, label %if.end.1323.i, !dbg !3502

if.else.1320.i:                                   ; preds = %do.body.1313.i
  %ob_type1321.i = getelementptr inbounds %struct._object, %struct._object* %s.1.i, i64 0, i32 1, !dbg !3503
  %357 = load %struct._typeobject*, %struct._typeobject** %ob_type1321.i, align 8, !dbg !3503, !tbaa !1179
  %tp_dealloc1322.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %357, i64 0, i32 4, !dbg !3503
  %358 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1322.i, align 8, !dbg !3503, !tbaa !2139
  call void %358(%struct._object* %s.1.i) #2, !dbg !3503
  br label %if.end.1323.i, !dbg !2170

if.end.1323.i:                                    ; preds = %if.else.1320.i, %do.body.1313.i
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.56, i64 0, i64 0), i64 0, metadata !880, metadata !980) #2, !dbg !3505
  call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !3507
  call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !3508
  call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !3509
  %cmp.i.2612.i = icmp eq %struct._object* %arg, @_Py_NoneStruct, !dbg !3510
  br i1 %cmp.i.2612.i, label %converterr.exit2618.i, label %cond.false.i.2615.i, !dbg !3511

cond.false.i.2615.i:                              ; preds = %if.end.1323.i
  %ob_type.i.2613.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !3512
  %359 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.2613.i, align 8, !dbg !3512, !tbaa !1179
  %tp_name.i.2614.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %359, i64 0, i32 1, !dbg !3513
  %360 = load i8*, i8** %tp_name.i.2614.i, align 8, !dbg !3513, !tbaa !2094
  br label %converterr.exit2618.i, !dbg !3511

converterr.exit2618.i:                            ; preds = %cond.false.i.2615.i, %if.end.1323.i
  %cond.i.2616.i = phi i8* [ %360, %cond.false.i.2615.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.end.1323.i ], !dbg !3511
  %call.i.2617.i = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.56, i64 0, i64 0), i8* %cond.i.2616.i) #2, !dbg !3514
  br label %cleanup.1426.thread.i, !dbg !3515

if.end.1328.i:                                    ; preds = %cond.end.1308.i, %if.end.1282.i
  %361 = phi i64 [ %.pre2800.i, %if.end.1282.i ], [ %348, %cond.end.1308.i ], !dbg !3487
  %362 = phi i8* [ %.pre.i, %if.end.1282.i ], [ %347, %cond.end.1308.i ], !dbg !3486
  call void @llvm.dbg.value(metadata i8** %ptr.i, i64 0, metadata !805, metadata !980) #2, !dbg !3333
  %363 = load i8*, i8** %ptr.i, align 8, !dbg !3516, !tbaa !993
  call void @llvm.dbg.value(metadata i64* %size.i, i64 0, metadata !804, metadata !980) #2, !dbg !3332
  %add1329.i = add i64 %361, 1, !dbg !3517
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %362, i8* %363, i64 %add1329.i, i32 1, i1 false) #2, !dbg !3518
  call void @llvm.dbg.value(metadata i64* %size.i, i64 0, metadata !804, metadata !980) #2, !dbg !3332
  %364 = load i64, i64* %size.i, align 8, !dbg !3519, !tbaa !1765
  br i1 %tobool1204.i, label %if.then.1332.i, label %if.else.1333.i, !dbg !3522

if.then.1332.i:                                   ; preds = %if.end.1328.i
  store i64 %364, i64* %q21202.0.i, align 8, !dbg !3519, !tbaa !1765
  br label %do.body.1413.i, !dbg !3519

if.else.1333.i:                                   ; preds = %if.end.1328.i
  %cmp1334.i = icmp sgt i64 %364, 2147483647, !dbg !3523
  br i1 %cmp1334.i, label %if.then.1336.i, label %if.end.1338.i, !dbg !3527

if.then.1336.i:                                   ; preds = %if.else.1333.i
  %365 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !3528, !tbaa !993
  call void @PyErr_SetString(%struct._object* %365, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.42, i64 0, i64 0)) #2, !dbg !3528
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i64 0, metadata !880, metadata !980) #2, !dbg !3531
  call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !3533
  call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !3534
  call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !3535
  %cmp.i.2619.i = icmp eq %struct._object* %arg, @_Py_NoneStruct, !dbg !3536
  br i1 %cmp.i.2619.i, label %converterr.exit2625.i, label %cond.false.i.2622.i, !dbg !3537

cond.false.i.2622.i:                              ; preds = %if.then.1336.i
  %ob_type.i.2620.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !3538
  %366 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.2620.i, align 8, !dbg !3538, !tbaa !1179
  %tp_name.i.2621.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %366, i64 0, i32 1, !dbg !3539
  %367 = load i8*, i8** %tp_name.i.2621.i, align 8, !dbg !3539, !tbaa !2094
  br label %converterr.exit2625.i, !dbg !3537

converterr.exit2625.i:                            ; preds = %cond.false.i.2622.i, %if.then.1336.i
  %cond.i.2623.i = phi i8* [ %367, %cond.false.i.2622.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.then.1336.i ], !dbg !3537
  %call.i.2624.i = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* %cond.i.2623.i) #2, !dbg !3540
  br label %cleanup.1426.thread.i, !dbg !3541

if.end.1338.i:                                    ; preds = %if.else.1333.i
  %conv1339.i = trunc i64 %364 to i32, !dbg !3542
  store i32 %conv1339.i, i32* %q1201.0.i, align 4, !dbg !3542, !tbaa !1059
  br label %do.body.1413.i, !dbg !2170

if.else.1345.i:                                   ; preds = %if.end.1196.i
  call void @llvm.dbg.value(metadata i8** %ptr.i, i64 0, metadata !805, metadata !980) #2, !dbg !3333
  %368 = load i8*, i8** %ptr.i, align 8, !dbg !3544, !tbaa !993
  %call1346.i = call i64 @strlen(i8* %368) #8, !dbg !3545
  call void @llvm.dbg.value(metadata i64* %size.i, i64 0, metadata !804, metadata !980) #2, !dbg !3332
  %369 = load i64, i64* %size.i, align 8, !dbg !3546, !tbaa !1765
  %cmp1347.i = icmp eq i64 %call1346.i, %369, !dbg !3547
  br i1 %cmp1347.i, label %if.end.1364.i, label %do.body.1350.i, !dbg !3548

do.body.1350.i:                                   ; preds = %if.else.1345.i
  call void @llvm.dbg.value(metadata %struct._object* %s.1.i, i64 0, metadata !838, metadata !980) #2, !dbg !3549
  %ob_refcnt1352.i = getelementptr inbounds %struct._object, %struct._object* %s.1.i, i64 0, i32 0, !dbg !3551
  %370 = load i64, i64* %ob_refcnt1352.i, align 8, !dbg !3551, !tbaa !2135
  %dec1353.i = add i64 %370, -1, !dbg !3551
  store i64 %dec1353.i, i64* %ob_refcnt1352.i, align 8, !dbg !3551, !tbaa !2135
  %cmp1354.i = icmp eq i64 %dec1353.i, 0, !dbg !3551
  br i1 %cmp1354.i, label %if.else.1357.i, label %if.end.1360.i, !dbg !3553

if.else.1357.i:                                   ; preds = %do.body.1350.i
  %ob_type1358.i = getelementptr inbounds %struct._object, %struct._object* %s.1.i, i64 0, i32 1, !dbg !3554
  %371 = load %struct._typeobject*, %struct._typeobject** %ob_type1358.i, align 8, !dbg !3554, !tbaa !1179
  %tp_dealloc1359.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %371, i64 0, i32 4, !dbg !3554
  %372 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1359.i, align 8, !dbg !3554, !tbaa !2139
  call void %372(%struct._object* %s.1.i) #2, !dbg !3554
  br label %if.end.1360.i, !dbg !2170

if.end.1360.i:                                    ; preds = %if.else.1357.i, %do.body.1350.i
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.57, i64 0, i64 0), i64 0, metadata !880, metadata !980) #2, !dbg !3556
  call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !3558
  call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !3559
  call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !3560
  %cmp.i.2626.i = icmp eq %struct._object* %arg, @_Py_NoneStruct, !dbg !3561
  br i1 %cmp.i.2626.i, label %converterr.exit2632.i, label %cond.false.i.2629.i, !dbg !3562

cond.false.i.2629.i:                              ; preds = %if.end.1360.i
  %ob_type.i.2627.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !3563
  %373 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.2627.i, align 8, !dbg !3563, !tbaa !1179
  %tp_name.i.2628.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %373, i64 0, i32 1, !dbg !3564
  %374 = load i8*, i8** %tp_name.i.2628.i, align 8, !dbg !3564, !tbaa !2094
  br label %converterr.exit2632.i, !dbg !3562

converterr.exit2632.i:                            ; preds = %cond.false.i.2629.i, %if.end.1360.i
  %cond.i.2630.i = phi i8* [ %374, %cond.false.i.2629.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.end.1360.i ], !dbg !3562
  %call.i.2631.i = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.57, i64 0, i64 0), i8* %cond.i.2630.i) #2, !dbg !3565
  br label %cleanup.1426.thread.i, !dbg !3566

if.end.1364.i:                                    ; preds = %if.else.1345.i
  %add1365.i = add i64 %call1346.i, 1, !dbg !3567
  %cmp1366.i = icmp slt i64 %add1365.i, 0, !dbg !3567
  br i1 %cmp1366.i, label %cond.end.1373.thread.i, label %cond.end.1373.i, !dbg !3567

cond.end.1373.thread.i:                           ; preds = %if.end.1364.i
  store i8* null, i8** %307, align 8, !dbg !3568, !tbaa !993
  br label %do.body.1378.i, !dbg !3569

cond.end.1373.i:                                  ; preds = %if.end.1364.i
  %call1372.i = call i8* @PyMem_Malloc(i64 %add1365.i) #2, !dbg !3570
  store i8* %call1372.i, i8** %307, align 8, !dbg !3568, !tbaa !993
  %cmp1375.i = icmp eq i8* %call1372.i, null, !dbg !3572
  br i1 %cmp1375.i, label %do.body.1378.i, label %if.end.1392.i, !dbg !3569

do.body.1378.i:                                   ; preds = %cond.end.1373.i, %cond.end.1373.thread.i
  call void @llvm.dbg.value(metadata %struct._object* %s.1.i, i64 0, metadata !843, metadata !980) #2, !dbg !3573
  %ob_refcnt1380.i = getelementptr inbounds %struct._object, %struct._object* %s.1.i, i64 0, i32 0, !dbg !3575
  %375 = load i64, i64* %ob_refcnt1380.i, align 8, !dbg !3575, !tbaa !2135
  %dec1381.i = add i64 %375, -1, !dbg !3575
  store i64 %dec1381.i, i64* %ob_refcnt1380.i, align 8, !dbg !3575, !tbaa !2135
  %cmp1382.i = icmp eq i64 %dec1381.i, 0, !dbg !3575
  br i1 %cmp1382.i, label %if.else.1385.i, label %if.end.1388.i, !dbg !3577

if.else.1385.i:                                   ; preds = %do.body.1378.i
  %ob_type1386.i = getelementptr inbounds %struct._object, %struct._object* %s.1.i, i64 0, i32 1, !dbg !3578
  %376 = load %struct._typeobject*, %struct._typeobject** %ob_type1386.i, align 8, !dbg !3578, !tbaa !1179
  %tp_dealloc1387.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %376, i64 0, i32 4, !dbg !3578
  %377 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1387.i, align 8, !dbg !3578, !tbaa !2139
  call void %377(%struct._object* %s.1.i) #2, !dbg !3578
  br label %if.end.1388.i, !dbg !2170

if.end.1388.i:                                    ; preds = %if.else.1385.i, %do.body.1378.i
  %call1391.i = call %struct._object* @PyErr_NoMemory() #2, !dbg !3580
  br label %cleanup.1426.thread.i, !dbg !3581

if.end.1392.i:                                    ; preds = %cond.end.1373.i
  %first_available.i.2633.i = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i64 0, i32 1, !dbg !3582
  %378 = load i32, i32* %first_available.i.2633.i, align 4, !dbg !3582, !tbaa !1023
  call void @llvm.dbg.value(metadata i32 %378, i64 0, metadata !898, metadata !980) #2, !dbg !3584
  %add.i.2634.i = add i32 %378, 1, !dbg !3585
  store i32 %add.i.2634.i, i32* %first_available.i.2633.i, align 4, !dbg !3585, !tbaa !1023
  %idxprom.i.2635.i = sext i32 %378 to i64, !dbg !3586
  %entries.i.2636.i = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i64 0, i32 0, !dbg !3587
  %379 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries.i.2636.i, align 8, !dbg !3587, !tbaa !1018
  %item.i.2637.i = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %379, i64 %idxprom.i.2635.i, i32 0, !dbg !3588
  store i8* %call1372.i, i8** %item.i.2637.i, align 8, !dbg !3589, !tbaa !1164
  %destructor5.i.2638.i = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %379, i64 %idxprom.i.2635.i, i32 1, !dbg !3590
  store i32 (%struct._object*, i8*)* @cleanup_ptr, i32 (%struct._object*, i8*)** %destructor5.i.2638.i, align 8, !dbg !3591, !tbaa !1161
  %380 = load i8*, i8** %307, align 8, !dbg !3592, !tbaa !993
  call void @llvm.dbg.value(metadata i8** %ptr.i, i64 0, metadata !805, metadata !980) #2, !dbg !3333
  %381 = load i8*, i8** %ptr.i, align 8, !dbg !3593, !tbaa !993
  call void @llvm.dbg.value(metadata i64* %size.i, i64 0, metadata !804, metadata !980) #2, !dbg !3332
  %382 = load i64, i64* %size.i, align 8, !dbg !3594, !tbaa !1765
  %add1411.i = add i64 %382, 1, !dbg !3595
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %380, i8* %381, i64 %add1411.i, i32 1, i1 false) #2, !dbg !3596
  br label %do.body.1413.i, !dbg !2170

do.body.1413.i:                                   ; preds = %if.end.1392.i, %if.end.1338.i, %if.then.1332.i
  %format.8.i = phi i8* [ %incdec.ptr1110.i, %if.end.1392.i ], [ %incdec.ptr1232.i, %if.end.1338.i ], [ %incdec.ptr1232.i, %if.then.1332.i ], !dbg !2170
  call void @llvm.dbg.value(metadata %struct._object* %s.1.i, i64 0, metadata !851, metadata !980) #2, !dbg !3597
  %ob_refcnt1415.i = getelementptr inbounds %struct._object, %struct._object* %s.1.i, i64 0, i32 0, !dbg !3599
  %383 = load i64, i64* %ob_refcnt1415.i, align 8, !dbg !3599, !tbaa !2135
  %dec1416.i = add i64 %383, -1, !dbg !3599
  store i64 %dec1416.i, i64* %ob_refcnt1415.i, align 8, !dbg !3599, !tbaa !2135
  %cmp1417.i = icmp eq i64 %dec1416.i, 0, !dbg !3599
  br i1 %cmp1417.i, label %if.else.1420.i, label %cleanup.1426.thread2792.i, !dbg !3601

if.else.1420.i:                                   ; preds = %do.body.1413.i
  %ob_type1421.i = getelementptr inbounds %struct._object, %struct._object* %s.1.i, i64 0, i32 1, !dbg !3602
  %384 = load %struct._typeobject*, %struct._typeobject** %ob_type1421.i, align 8, !dbg !3602, !tbaa !1179
  %tp_dealloc1422.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %384, i64 0, i32 4, !dbg !3602
  %385 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1422.i, align 8, !dbg !3602, !tbaa !2139
  call void %385(%struct._object* %s.1.i) #2, !dbg !3602
  br label %cleanup.1426.thread2792.i, !dbg !2170

cleanup.1426.thread.i:                            ; preds = %if.end.1388.i, %converterr.exit2632.i, %converterr.exit2625.i, %converterr.exit2618.i, %if.end.1278.i, %converterr.exit2605.i, %converterr.exit2598.i, %converterr.exit2591.i, %converterr.exit2584.i, %converterr.exit2577.i, %converterr.exit2570.i, %converterr.exit2563.i
  call void @llvm.lifetime.end(i64 8, i8* %294) #2, !dbg !3604
  call void @llvm.lifetime.end(i64 8, i8* %293) #2, !dbg !3604
  br label %convertsimple.exit, !dbg !2170

cleanup.1426.thread2792.i:                        ; preds = %if.else.1420.i, %do.body.1413.i
  call void @llvm.lifetime.end(i64 8, i8* %294) #2, !dbg !3604
  call void @llvm.lifetime.end(i64 8, i8* %293) #2, !dbg !3604
  br label %if.then.14, !dbg !2170

sw.bb.1433.i:                                     ; preds = %if.else
  %gp_offset_p1436.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 0, !dbg !3605
  %gp_offset1437.i = load i32, i32* %gp_offset_p1436.i, align 4, !dbg !3605
  %fits_in_gp1438.i = icmp ult i32 %gp_offset1437.i, 41, !dbg !3605
  br i1 %fits_in_gp1438.i, label %vaarg.in_reg.1439.i, label %vaarg.in_mem.1441.i, !dbg !3605

vaarg.in_reg.1439.i:                              ; preds = %sw.bb.1433.i
  %386 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !3606
  %reg_save_area1440.i = load i8*, i8** %386, align 8, !dbg !3606
  %387 = sext i32 %gp_offset1437.i to i64, !dbg !3606
  %388 = getelementptr i8, i8* %reg_save_area1440.i, i64 %387, !dbg !3606
  %389 = add i32 %gp_offset1437.i, 8, !dbg !3606
  store i32 %389, i32* %gp_offset_p1436.i, align 4, !dbg !3606
  br label %vaarg.end.1445.i, !dbg !3606

vaarg.in_mem.1441.i:                              ; preds = %sw.bb.1433.i
  %overflow_arg_area_p1442.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !3608
  %overflow_arg_area1443.i = load i8*, i8** %overflow_arg_area_p1442.i, align 8, !dbg !3608
  %overflow_arg_area.next1444.i = getelementptr i8, i8* %overflow_arg_area1443.i, i64 8, !dbg !3608
  store i8* %overflow_arg_area.next1444.i, i8** %overflow_arg_area_p1442.i, align 8, !dbg !3608
  br label %vaarg.end.1445.i, !dbg !3608

vaarg.end.1445.i:                                 ; preds = %vaarg.in_mem.1441.i, %vaarg.in_reg.1439.i
  %vaarg.addr1446.in.i = phi i8* [ %388, %vaarg.in_reg.1439.i ], [ %overflow_arg_area1443.i, %vaarg.in_mem.1441.i ], !dbg !2170
  %ob_type1447.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !3610
  %390 = load %struct._typeobject*, %struct._typeobject** %ob_type1447.i, align 8, !dbg !3610, !tbaa !1179
  %tp_flags1448.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %390, i64 0, i32 19, !dbg !3610
  %391 = load i64, i64* %tp_flags1448.i, align 8, !dbg !3610, !tbaa !1182
  %and1449.i = and i64 %391, 134217728, !dbg !3610
  %cmp1450.i = icmp eq i64 %and1449.i, 0, !dbg !3610
  br i1 %cmp1450.i, label %if.else.1453.i, label %cleanup.1456.thread.i, !dbg !3612

cleanup.1456.thread.i:                            ; preds = %vaarg.end.1445.i
  %vaarg.addr1446.i = bitcast i8* %vaarg.addr1446.in.i to %struct._object***, !dbg !3605
  %392 = load %struct._object**, %struct._object*** %vaarg.addr1446.i, align 8, !dbg !3613
  store %struct._object* %arg, %struct._object** %392, align 8, !dbg !3616, !tbaa !993
  br label %if.then.14, !dbg !2170

if.else.1453.i:                                   ; preds = %vaarg.end.1445.i
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i64 0, metadata !880, metadata !980) #2, !dbg !3617
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !3619
  tail call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !3620
  tail call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !3621
  %cmp.i.2639.i = icmp eq %struct._object* %arg, @_Py_NoneStruct, !dbg !3622
  br i1 %cmp.i.2639.i, label %cleanup.1456.i, label %cond.false.i.2642.i, !dbg !3623

cond.false.i.2642.i:                              ; preds = %if.else.1453.i
  %tp_name.i.2641.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %390, i64 0, i32 1, !dbg !3624
  %393 = load i8*, i8** %tp_name.i.2641.i, align 8, !dbg !3624, !tbaa !2094
  br label %cleanup.1456.i, !dbg !3623

cleanup.1456.i:                                   ; preds = %cond.false.i.2642.i, %if.else.1453.i
  %cond.i.2643.i = phi i8* [ %393, %cond.false.i.2642.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.else.1453.i ], !dbg !3623
  %call.i.2644.i = tail call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i8* %cond.i.2643.i) #2, !dbg !3625
  br label %convertsimple.exit, !dbg !2170

sw.bb.1458.i:                                     ; preds = %if.else
  %gp_offset_p1461.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 0, !dbg !3626
  %gp_offset1462.i = load i32, i32* %gp_offset_p1461.i, align 4, !dbg !3626
  %fits_in_gp1463.i = icmp ult i32 %gp_offset1462.i, 41, !dbg !3626
  br i1 %fits_in_gp1463.i, label %vaarg.in_reg.1464.i, label %vaarg.in_mem.1466.i, !dbg !3626

vaarg.in_reg.1464.i:                              ; preds = %sw.bb.1458.i
  %394 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !3627
  %reg_save_area1465.i = load i8*, i8** %394, align 8, !dbg !3627
  %395 = sext i32 %gp_offset1462.i to i64, !dbg !3627
  %396 = getelementptr i8, i8* %reg_save_area1465.i, i64 %395, !dbg !3627
  %397 = add i32 %gp_offset1462.i, 8, !dbg !3627
  store i32 %397, i32* %gp_offset_p1461.i, align 4, !dbg !3627
  br label %vaarg.end.1470.i, !dbg !3627

vaarg.in_mem.1466.i:                              ; preds = %sw.bb.1458.i
  %overflow_arg_area_p1467.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !3629
  %overflow_arg_area1468.i = load i8*, i8** %overflow_arg_area_p1467.i, align 8, !dbg !3629
  %overflow_arg_area.next1469.i = getelementptr i8, i8* %overflow_arg_area1468.i, i64 8, !dbg !3629
  store i8* %overflow_arg_area.next1469.i, i8** %overflow_arg_area_p1467.i, align 8, !dbg !3629
  br label %vaarg.end.1470.i, !dbg !3629

vaarg.end.1470.i:                                 ; preds = %vaarg.in_mem.1466.i, %vaarg.in_reg.1464.i
  %vaarg.addr1471.in.i = phi i8* [ %396, %vaarg.in_reg.1464.i ], [ %overflow_arg_area1468.i, %vaarg.in_mem.1466.i ], !dbg !2170
  %vaarg.addr1471.i = bitcast i8* %vaarg.addr1471.in.i to %struct._object***, !dbg !3626
  %398 = load %struct._object**, %struct._object*** %vaarg.addr1471.i, align 8, !dbg !3631
  tail call void @llvm.dbg.value(metadata %struct._object** %398, i64 0, metadata !855, metadata !980) #2, !dbg !3634
  %ob_type1472.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !3635
  %399 = load %struct._typeobject*, %struct._typeobject** %ob_type1472.i, align 8, !dbg !3635, !tbaa !1179
  %cmp1473.i = icmp eq %struct._typeobject* %399, @PyByteArray_Type, !dbg !3635
  br i1 %cmp1473.i, label %cleanup.1483.thread.i, label %lor.lhs.false.1475.i, !dbg !3635

lor.lhs.false.1475.i:                             ; preds = %vaarg.end.1470.i
  %call1477.i = tail call i32 @PyType_IsSubtype(%struct._typeobject* %399, %struct._typeobject* nonnull @PyByteArray_Type) #2, !dbg !3637
  %tobool1478.i = icmp eq i32 %call1477.i, 0, !dbg !3637
  br i1 %tobool1478.i, label %if.else.1480.i, label %cleanup.1483.thread.i, !dbg !3639

cleanup.1483.thread.i:                            ; preds = %lor.lhs.false.1475.i, %vaarg.end.1470.i
  store %struct._object* %arg, %struct._object** %398, align 8, !dbg !3640, !tbaa !993
  br label %if.then.14, !dbg !2170

if.else.1480.i:                                   ; preds = %lor.lhs.false.1475.i
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i64 0, i64 0), i64 0, metadata !880, metadata !980) #2, !dbg !3641
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !3643
  tail call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !3644
  tail call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !3645
  %cmp.i.2646.i = icmp eq %struct._object* %arg, @_Py_NoneStruct, !dbg !3646
  br i1 %cmp.i.2646.i, label %cleanup.1483.i, label %cond.false.i.2649.i, !dbg !3647

cond.false.i.2649.i:                              ; preds = %if.else.1480.i
  %400 = load %struct._typeobject*, %struct._typeobject** %ob_type1472.i, align 8, !dbg !3648, !tbaa !1179
  %tp_name.i.2648.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %400, i64 0, i32 1, !dbg !3649
  %401 = load i8*, i8** %tp_name.i.2648.i, align 8, !dbg !3649, !tbaa !2094
  br label %cleanup.1483.i, !dbg !3647

cleanup.1483.i:                                   ; preds = %cond.false.i.2649.i, %if.else.1480.i
  %cond.i.2650.i = phi i8* [ %401, %cond.false.i.2649.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.else.1480.i ], !dbg !3647
  %call.i.2651.i = tail call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i64 0, i64 0), i8* %cond.i.2650.i) #2, !dbg !3650
  br label %convertsimple.exit, !dbg !2170

sw.bb.1485.i:                                     ; preds = %if.else
  %gp_offset_p1488.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 0, !dbg !3651
  %gp_offset1489.i = load i32, i32* %gp_offset_p1488.i, align 4, !dbg !3651
  %fits_in_gp1490.i = icmp ult i32 %gp_offset1489.i, 41, !dbg !3651
  br i1 %fits_in_gp1490.i, label %vaarg.in_reg.1491.i, label %vaarg.in_mem.1493.i, !dbg !3651

vaarg.in_reg.1491.i:                              ; preds = %sw.bb.1485.i
  %402 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !3652
  %reg_save_area1492.i = load i8*, i8** %402, align 8, !dbg !3652
  %403 = sext i32 %gp_offset1489.i to i64, !dbg !3652
  %404 = getelementptr i8, i8* %reg_save_area1492.i, i64 %403, !dbg !3652
  %405 = add i32 %gp_offset1489.i, 8, !dbg !3652
  store i32 %405, i32* %gp_offset_p1488.i, align 4, !dbg !3652
  br label %vaarg.end.1497.i, !dbg !3652

vaarg.in_mem.1493.i:                              ; preds = %sw.bb.1485.i
  %overflow_arg_area_p1494.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !3654
  %overflow_arg_area1495.i = load i8*, i8** %overflow_arg_area_p1494.i, align 8, !dbg !3654
  %overflow_arg_area.next1496.i = getelementptr i8, i8* %overflow_arg_area1495.i, i64 8, !dbg !3654
  store i8* %overflow_arg_area.next1496.i, i8** %overflow_arg_area_p1494.i, align 8, !dbg !3654
  br label %vaarg.end.1497.i, !dbg !3654

vaarg.end.1497.i:                                 ; preds = %vaarg.in_mem.1493.i, %vaarg.in_reg.1491.i
  %vaarg.addr1498.in.i = phi i8* [ %404, %vaarg.in_reg.1491.i ], [ %overflow_arg_area1495.i, %vaarg.in_mem.1493.i ], !dbg !2170
  %vaarg.addr1498.i = bitcast i8* %vaarg.addr1498.in.i to %struct._object***, !dbg !3651
  %406 = load %struct._object**, %struct._object*** %vaarg.addr1498.i, align 8, !dbg !3656
  tail call void @llvm.dbg.value(metadata %struct._object** %406, i64 0, metadata !857, metadata !980) #2, !dbg !3659
  %ob_type1499.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !3660
  %407 = load %struct._typeobject*, %struct._typeobject** %ob_type1499.i, align 8, !dbg !3660, !tbaa !1179
  %tp_flags1500.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %407, i64 0, i32 19, !dbg !3660
  %408 = load i64, i64* %tp_flags1500.i, align 8, !dbg !3660, !tbaa !1182
  %and1501.i = and i64 %408, 268435456, !dbg !3660
  %cmp1502.i = icmp eq i64 %and1501.i, 0, !dbg !3660
  br i1 %cmp1502.i, label %if.else.1519.i, label %if.then.1504.i, !dbg !3662

if.then.1504.i:                                   ; preds = %vaarg.end.1497.i
  %state1505.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 2, !dbg !3663
  %409 = bitcast %struct._object* %state1505.i to i32*, !dbg !3663
  %bf.load1506.i = load i32, i32* %409, align 4, !dbg !3663
  %bf.clear1508.i = and i32 %bf.load1506.i, 128, !dbg !3663
  %tobool1509.i = icmp eq i32 %bf.clear1508.i, 0, !dbg !3663
  br i1 %tobool1509.i, label %cond.false.1511.i, label %cleanup.1522.i, !dbg !3663

cond.false.1511.i:                                ; preds = %if.then.1504.i
  %call1512.i = tail call i32 @_PyUnicode_Ready(%struct._object* %arg) #2, !dbg !3666
  %phitmp.i = icmp eq i32 %call1512.i, -1, !dbg !3666
  br i1 %phitmp.i, label %convertsimple.exit, label %cleanup.1522.i, !dbg !3668

if.else.1519.i:                                   ; preds = %vaarg.end.1497.i
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0), i64 0, metadata !880, metadata !980) #2, !dbg !3669
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !3671
  tail call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !3672
  tail call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !3673
  %cmp.i.2653.i = icmp eq %struct._object* %arg, @_Py_NoneStruct, !dbg !3674
  br i1 %cmp.i.2653.i, label %converterr.exit2659.i, label %cond.false.i.2656.i, !dbg !3675

cond.false.i.2656.i:                              ; preds = %if.else.1519.i
  %tp_name.i.2655.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %407, i64 0, i32 1, !dbg !3676
  %410 = load i8*, i8** %tp_name.i.2655.i, align 8, !dbg !3676, !tbaa !2094
  br label %converterr.exit2659.i, !dbg !3675

converterr.exit2659.i:                            ; preds = %cond.false.i.2656.i, %if.else.1519.i
  %cond.i.2657.i = phi i8* [ %410, %cond.false.i.2656.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.else.1519.i ], !dbg !3675
  %call.i.2658.i = tail call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0), i8* %cond.i.2657.i) #2, !dbg !3677
  br label %convertsimple.exit, !dbg !3678

cleanup.1522.i:                                   ; preds = %cond.false.1511.i, %if.then.1504.i
  store %struct._object* %arg, %struct._object** %406, align 8, !dbg !3679, !tbaa !993
  br label %if.then.14, !dbg !2170

sw.bb.1524.i:                                     ; preds = %if.else
  %411 = load i8, i8* %incdec.ptr, align 1, !dbg !3680, !tbaa !1036
  switch i8 %411, label %if.else.1611.i [
    i8 33, label %if.then.1529.i
    i8 38, label %if.then.1566.i
  ], !dbg !3681

if.then.1529.i:                                   ; preds = %sw.bb.1524.i
  %gp_offset_p1531.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 0, !dbg !3682
  %gp_offset1532.i = load i32, i32* %gp_offset_p1531.i, align 4, !dbg !3684
  %fits_in_gp1533.i = icmp ult i32 %gp_offset1532.i, 41, !dbg !3682
  br i1 %fits_in_gp1533.i, label %vaarg.end.1540.i, label %vaarg.end.1540.thread.i, !dbg !3682

vaarg.end.1540.thread.i:                          ; preds = %if.then.1529.i
  %overflow_arg_area_p1537.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !3685
  %overflow_arg_area1538.i = load i8*, i8** %overflow_arg_area_p1537.i, align 8, !dbg !3685
  %overflow_arg_area.next1539.i = getelementptr i8, i8* %overflow_arg_area1538.i, i64 8, !dbg !3685
  store i8* %overflow_arg_area.next1539.i, i8** %overflow_arg_area_p1537.i, align 8, !dbg !3685
  %vaarg.addr1541.2802.i = bitcast i8* %overflow_arg_area1538.i to %struct._typeobject**, !dbg !3682
  %412 = load %struct._typeobject*, %struct._typeobject** %vaarg.addr1541.2802.i, align 8, !dbg !3687
  br label %vaarg.in_mem.1548.i, !dbg !3684

vaarg.end.1540.i:                                 ; preds = %if.then.1529.i
  %413 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !3690
  %reg_save_area1535.i = load i8*, i8** %413, align 8, !dbg !3692
  %414 = sext i32 %gp_offset1532.i to i64, !dbg !3690
  %415 = getelementptr i8, i8* %reg_save_area1535.i, i64 %414, !dbg !3690
  %416 = add i32 %gp_offset1532.i, 8, !dbg !3690
  store i32 %416, i32* %gp_offset_p1531.i, align 4, !dbg !3690
  %vaarg.addr1541.i = bitcast i8* %415 to %struct._typeobject**, !dbg !3682
  %417 = load %struct._typeobject*, %struct._typeobject** %vaarg.addr1541.i, align 8, !dbg !3687
  %fits_in_gp1545.i = icmp ult i32 %416, 41, !dbg !3684
  br i1 %fits_in_gp1545.i, label %vaarg.in_reg.1546.i, label %vaarg.end.1540.i.vaarg.in_mem.1548.i_crit_edge, !dbg !3684

vaarg.end.1540.i.vaarg.in_mem.1548.i_crit_edge:   ; preds = %vaarg.end.1540.i
  %overflow_arg_area_p1549.i.phi.trans.insert = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !3693
  %overflow_arg_area1550.i.pre = load i8*, i8** %overflow_arg_area_p1549.i.phi.trans.insert, align 8, !dbg !3693
  br label %vaarg.in_mem.1548.i, !dbg !3684

vaarg.in_reg.1546.i:                              ; preds = %vaarg.end.1540.i
  %418 = sext i32 %416 to i64, !dbg !3692
  %419 = getelementptr i8, i8* %reg_save_area1535.i, i64 %418, !dbg !3692
  %420 = add i32 %gp_offset1532.i, 16, !dbg !3692
  store i32 %420, i32* %gp_offset_p1531.i, align 4, !dbg !3692
  br label %vaarg.end.1552.i, !dbg !3692

vaarg.in_mem.1548.i:                              ; preds = %vaarg.end.1540.i.vaarg.in_mem.1548.i_crit_edge, %vaarg.end.1540.thread.i
  %overflow_arg_area_p1549.i.pre-phi = phi i8** [ %overflow_arg_area_p1549.i.phi.trans.insert, %vaarg.end.1540.i.vaarg.in_mem.1548.i_crit_edge ], [ %overflow_arg_area_p1537.i, %vaarg.end.1540.thread.i ], !dbg !3693
  %overflow_arg_area1550.i = phi i8* [ %overflow_arg_area1550.i.pre, %vaarg.end.1540.i.vaarg.in_mem.1548.i_crit_edge ], [ %overflow_arg_area.next1539.i, %vaarg.end.1540.thread.i ], !dbg !3693
  %421 = phi %struct._typeobject* [ %417, %vaarg.end.1540.i.vaarg.in_mem.1548.i_crit_edge ], [ %412, %vaarg.end.1540.thread.i ], !dbg !2170
  %overflow_arg_area.next1551.i = getelementptr i8, i8* %overflow_arg_area1550.i, i64 8, !dbg !3693
  store i8* %overflow_arg_area.next1551.i, i8** %overflow_arg_area_p1549.i.pre-phi, align 8, !dbg !3693
  br label %vaarg.end.1552.i, !dbg !3693

vaarg.end.1552.i:                                 ; preds = %vaarg.in_mem.1548.i, %vaarg.in_reg.1546.i
  %422 = phi %struct._typeobject* [ %417, %vaarg.in_reg.1546.i ], [ %421, %vaarg.in_mem.1548.i ], !dbg !2170
  %vaarg.addr1553.in.i = phi i8* [ %419, %vaarg.in_reg.1546.i ], [ %overflow_arg_area1550.i, %vaarg.in_mem.1548.i ], !dbg !2170
  %vaarg.addr1553.i = bitcast i8* %vaarg.addr1553.in.i to %struct._object***, !dbg !3684
  %423 = load %struct._object**, %struct._object*** %vaarg.addr1553.i, align 8, !dbg !3694
  tail call void @llvm.dbg.value(metadata %struct._object** %423, i64 0, metadata !863, metadata !980) #2, !dbg !3695
  %ob_type1555.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !3696
  %424 = load %struct._typeobject*, %struct._typeobject** %ob_type1555.i, align 8, !dbg !3696, !tbaa !1179
  %call1556.i = tail call i32 @PyType_IsSubtype(%struct._typeobject* %424, %struct._typeobject* %422) #2, !dbg !3698
  %tobool1557.i = icmp eq i32 %call1556.i, 0, !dbg !3698
  br i1 %tobool1557.i, label %if.else.1559.i, label %if.then.1558.i, !dbg !3699

if.then.1558.i:                                   ; preds = %vaarg.end.1552.i
  %incdec.ptr1554.i = getelementptr i8, i8* %0, i64 2, !dbg !3700
  store %struct._object* %arg, %struct._object** %423, align 8, !dbg !3701, !tbaa !993
  br label %if.then.14, !dbg !3702

if.else.1559.i:                                   ; preds = %vaarg.end.1552.i
  %tp_name.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %422, i64 0, i32 1, !dbg !3703
  %425 = load i8*, i8** %tp_name.i, align 8, !dbg !3703, !tbaa !2094
  tail call void @llvm.dbg.value(metadata i8* %425, i64 0, metadata !880, metadata !980) #2, !dbg !3704
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !3706
  tail call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !3707
  tail call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !3708
  %cmp.i.2660.i = icmp eq %struct._object* %arg, @_Py_NoneStruct, !dbg !3709
  br i1 %cmp.i.2660.i, label %converterr.exit2666.i, label %cond.false.i.2663.i, !dbg !3710

cond.false.i.2663.i:                              ; preds = %if.else.1559.i
  %426 = load %struct._typeobject*, %struct._typeobject** %ob_type1555.i, align 8, !dbg !3711, !tbaa !1179
  %tp_name.i.2662.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %426, i64 0, i32 1, !dbg !3712
  %427 = load i8*, i8** %tp_name.i.2662.i, align 8, !dbg !3712, !tbaa !2094
  br label %converterr.exit2666.i, !dbg !3710

converterr.exit2666.i:                            ; preds = %cond.false.i.2663.i, %if.else.1559.i
  %cond.i.2664.i = phi i8* [ %427, %cond.false.i.2663.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.else.1559.i ], !dbg !3710
  %call.i.2665.i = tail call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* %425, i8* %cond.i.2664.i) #2, !dbg !3713
  br label %convertsimple.exit, !dbg !3714

if.then.1566.i:                                   ; preds = %sw.bb.1524.i
  %gp_offset_p1568.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 0, !dbg !3715
  %gp_offset1569.i = load i32, i32* %gp_offset_p1568.i, align 4, !dbg !3716
  %fits_in_gp1570.i = icmp ult i32 %gp_offset1569.i, 41, !dbg !3715
  br i1 %fits_in_gp1570.i, label %vaarg.end.1577.i, label %vaarg.end.1577.thread.i, !dbg !3715

vaarg.end.1577.thread.i:                          ; preds = %if.then.1566.i
  %overflow_arg_area_p1574.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !3717
  %overflow_arg_area1575.i = load i8*, i8** %overflow_arg_area_p1574.i, align 8, !dbg !3717
  %overflow_arg_area.next1576.i = getelementptr i8, i8* %overflow_arg_area1575.i, i64 8, !dbg !3717
  store i8* %overflow_arg_area.next1576.i, i8** %overflow_arg_area_p1574.i, align 8, !dbg !3717
  %vaarg.addr1578.2804.i = bitcast i8* %overflow_arg_area1575.i to i32 (%struct._object*, i8*)**, !dbg !3715
  %428 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %vaarg.addr1578.2804.i, align 8, !dbg !3719
  br label %vaarg.in_mem.1585.i, !dbg !3716

vaarg.end.1577.i:                                 ; preds = %if.then.1566.i
  %429 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !3722
  %reg_save_area1572.i = load i8*, i8** %429, align 8, !dbg !3724
  %430 = sext i32 %gp_offset1569.i to i64, !dbg !3722
  %431 = getelementptr i8, i8* %reg_save_area1572.i, i64 %430, !dbg !3722
  %432 = add i32 %gp_offset1569.i, 8, !dbg !3722
  store i32 %432, i32* %gp_offset_p1568.i, align 4, !dbg !3722
  %vaarg.addr1578.i = bitcast i8* %431 to i32 (%struct._object*, i8*)**, !dbg !3715
  %433 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %vaarg.addr1578.i, align 8, !dbg !3719
  %fits_in_gp1582.i = icmp ult i32 %432, 41, !dbg !3716
  br i1 %fits_in_gp1582.i, label %vaarg.in_reg.1583.i, label %vaarg.end.1577.i.vaarg.in_mem.1585.i_crit_edge, !dbg !3716

vaarg.end.1577.i.vaarg.in_mem.1585.i_crit_edge:   ; preds = %vaarg.end.1577.i
  %overflow_arg_area_p1586.i.phi.trans.insert = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !3725
  %overflow_arg_area1587.i.pre = load i8*, i8** %overflow_arg_area_p1586.i.phi.trans.insert, align 8, !dbg !3725
  br label %vaarg.in_mem.1585.i, !dbg !3716

vaarg.in_reg.1583.i:                              ; preds = %vaarg.end.1577.i
  %434 = sext i32 %432 to i64, !dbg !3724
  %435 = getelementptr i8, i8* %reg_save_area1572.i, i64 %434, !dbg !3724
  %436 = add i32 %gp_offset1569.i, 16, !dbg !3724
  store i32 %436, i32* %gp_offset_p1568.i, align 4, !dbg !3724
  br label %vaarg.end.1589.i, !dbg !3724

vaarg.in_mem.1585.i:                              ; preds = %vaarg.end.1577.i.vaarg.in_mem.1585.i_crit_edge, %vaarg.end.1577.thread.i
  %overflow_arg_area_p1586.i.pre-phi = phi i8** [ %overflow_arg_area_p1586.i.phi.trans.insert, %vaarg.end.1577.i.vaarg.in_mem.1585.i_crit_edge ], [ %overflow_arg_area_p1574.i, %vaarg.end.1577.thread.i ], !dbg !3725
  %overflow_arg_area1587.i = phi i8* [ %overflow_arg_area1587.i.pre, %vaarg.end.1577.i.vaarg.in_mem.1585.i_crit_edge ], [ %overflow_arg_area.next1576.i, %vaarg.end.1577.thread.i ], !dbg !3725
  %437 = phi i32 (%struct._object*, i8*)* [ %433, %vaarg.end.1577.i.vaarg.in_mem.1585.i_crit_edge ], [ %428, %vaarg.end.1577.thread.i ], !dbg !2170
  %overflow_arg_area.next1588.i = getelementptr i8, i8* %overflow_arg_area1587.i, i64 8, !dbg !3725
  store i8* %overflow_arg_area.next1588.i, i8** %overflow_arg_area_p1586.i.pre-phi, align 8, !dbg !3725
  br label %vaarg.end.1589.i, !dbg !3725

vaarg.end.1589.i:                                 ; preds = %vaarg.in_mem.1585.i, %vaarg.in_reg.1583.i
  %438 = phi i32 (%struct._object*, i8*)* [ %433, %vaarg.in_reg.1583.i ], [ %437, %vaarg.in_mem.1585.i ], !dbg !2170
  %vaarg.addr1590.in.i = phi i8* [ %435, %vaarg.in_reg.1583.i ], [ %overflow_arg_area1587.i, %vaarg.in_mem.1585.i ], !dbg !2170
  %vaarg.addr1590.i = bitcast i8* %vaarg.addr1590.in.i to i8**, !dbg !3716
  %439 = load i8*, i8** %vaarg.addr1590.i, align 8, !dbg !3726
  tail call void @llvm.dbg.value(metadata i8* %439, i64 0, metadata !869, metadata !980) #2, !dbg !3727
  %incdec.ptr1591.i = getelementptr i8, i8* %0, i64 2, !dbg !3728
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr1591.i, i64 0, metadata !670, metadata !980) #2, !dbg !2161
  %call1592.i = tail call i32 %438(%struct._object* %arg, i8* %439) #2, !dbg !3729
  tail call void @llvm.dbg.value(metadata i32 %call1592.i, i64 0, metadata !870, metadata !980) #2, !dbg !3731
  switch i32 %call1592.i, label %if.then.14 [
    i32 0, label %if.then.1594.i
    i32 131072, label %land.lhs.true.1599.i
  ], !dbg !3732

if.then.1594.i:                                   ; preds = %vaarg.end.1589.i
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i64 0, i64 0), i64 0, metadata !880, metadata !980) #2, !dbg !3733
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !3735
  tail call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !3736
  tail call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !3737
  %cmp.i.2667.i = icmp eq %struct._object* %arg, @_Py_NoneStruct, !dbg !3738
  br i1 %cmp.i.2667.i, label %cleanup.1606.i, label %cond.false.i.2670.i, !dbg !3739

cond.false.i.2670.i:                              ; preds = %if.then.1594.i
  %ob_type.i.2668.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !3740
  %440 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.2668.i, align 8, !dbg !3740, !tbaa !1179
  %tp_name.i.2669.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %440, i64 0, i32 1, !dbg !3741
  %441 = load i8*, i8** %tp_name.i.2669.i, align 8, !dbg !3741, !tbaa !2094
  br label %cleanup.1606.i, !dbg !3739

land.lhs.true.1599.i:                             ; preds = %vaarg.end.1589.i
  %first_available.i.2674.i = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i64 0, i32 1, !dbg !3742
  %442 = load i32, i32* %first_available.i.2674.i, align 4, !dbg !3742, !tbaa !1023
  tail call void @llvm.dbg.value(metadata i32 %442, i64 0, metadata !898, metadata !980) #2, !dbg !3745
  %add.i.2675.i = add i32 %442, 1, !dbg !3746
  store i32 %add.i.2675.i, i32* %first_available.i.2674.i, align 4, !dbg !3746, !tbaa !1023
  %idxprom.i.2676.i = sext i32 %442 to i64, !dbg !3747
  %entries.i.2677.i = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i64 0, i32 0, !dbg !3748
  %443 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries.i.2677.i, align 8, !dbg !3748, !tbaa !1018
  %item.i.2678.i = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %443, i64 %idxprom.i.2676.i, i32 0, !dbg !3749
  store i8* %439, i8** %item.i.2678.i, align 8, !dbg !3750, !tbaa !1164
  %destructor5.i.2679.i = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %443, i64 %idxprom.i.2676.i, i32 1, !dbg !3751
  store i32 (%struct._object*, i8*)* %438, i32 (%struct._object*, i8*)** %destructor5.i.2679.i, align 8, !dbg !3752, !tbaa !1161
  br label %if.then.14, !dbg !3753

cleanup.1606.i:                                   ; preds = %cond.false.i.2670.i, %if.then.1594.i
  %cond.i.2671.i = phi i8* [ %441, %cond.false.i.2670.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.then.1594.i ], !dbg !3739
  %call.i.2672.i = tail call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i64 0, i64 0), i8* %cond.i.2671.i) #2, !dbg !3754
  br label %convertsimple.exit, !dbg !2170

if.else.1611.i:                                   ; preds = %sw.bb.1524.i
  %gp_offset_p1613.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 0, !dbg !3755
  %gp_offset1614.i = load i32, i32* %gp_offset_p1613.i, align 4, !dbg !3755
  %fits_in_gp1615.i = icmp ult i32 %gp_offset1614.i, 41, !dbg !3755
  br i1 %fits_in_gp1615.i, label %vaarg.in_reg.1616.i, label %vaarg.in_mem.1618.i, !dbg !3755

vaarg.in_reg.1616.i:                              ; preds = %if.else.1611.i
  %444 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !3757
  %reg_save_area1617.i = load i8*, i8** %444, align 8, !dbg !3757
  %445 = sext i32 %gp_offset1614.i to i64, !dbg !3757
  %446 = getelementptr i8, i8* %reg_save_area1617.i, i64 %445, !dbg !3757
  %447 = add i32 %gp_offset1614.i, 8, !dbg !3757
  store i32 %447, i32* %gp_offset_p1613.i, align 4, !dbg !3757
  br label %vaarg.end.1622.i, !dbg !3757

vaarg.in_mem.1618.i:                              ; preds = %if.else.1611.i
  %overflow_arg_area_p1619.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !3759
  %overflow_arg_area1620.i = load i8*, i8** %overflow_arg_area_p1619.i, align 8, !dbg !3759
  %overflow_arg_area.next1621.i = getelementptr i8, i8* %overflow_arg_area1620.i, i64 8, !dbg !3759
  store i8* %overflow_arg_area.next1621.i, i8** %overflow_arg_area_p1619.i, align 8, !dbg !3759
  br label %vaarg.end.1622.i, !dbg !3759

vaarg.end.1622.i:                                 ; preds = %vaarg.in_mem.1618.i, %vaarg.in_reg.1616.i
  %vaarg.addr1623.in.i = phi i8* [ %446, %vaarg.in_reg.1616.i ], [ %overflow_arg_area1620.i, %vaarg.in_mem.1618.i ], !dbg !2170
  %vaarg.addr1623.i = bitcast i8* %vaarg.addr1623.in.i to %struct._object***, !dbg !3755
  %448 = load %struct._object**, %struct._object*** %vaarg.addr1623.i, align 8, !dbg !3761
  tail call void @llvm.dbg.value(metadata %struct._object** %448, i64 0, metadata !863, metadata !980) #2, !dbg !3695
  store %struct._object* %arg, %struct._object** %448, align 8, !dbg !3764, !tbaa !993
  br label %if.then.14, !dbg !2170

sw.bb.1629.i:                                     ; preds = %if.else
  %gp_offset_p1632.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 0, !dbg !3765
  %gp_offset1633.i = load i32, i32* %gp_offset_p1632.i, align 4, !dbg !3765
  %fits_in_gp1634.i = icmp ult i32 %gp_offset1633.i, 41, !dbg !3765
  br i1 %fits_in_gp1634.i, label %vaarg.in_reg.1635.i, label %vaarg.in_mem.1637.i, !dbg !3765

vaarg.in_reg.1635.i:                              ; preds = %sw.bb.1629.i
  %449 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 3, !dbg !3766
  %reg_save_area1636.i = load i8*, i8** %449, align 8, !dbg !3766
  %450 = sext i32 %gp_offset1633.i to i64, !dbg !3766
  %451 = getelementptr i8, i8* %reg_save_area1636.i, i64 %450, !dbg !3766
  %452 = add i32 %gp_offset1633.i, 8, !dbg !3766
  store i32 %452, i32* %gp_offset_p1632.i, align 4, !dbg !3766
  br label %vaarg.end.1641.i, !dbg !3766

vaarg.in_mem.1637.i:                              ; preds = %sw.bb.1629.i
  %overflow_arg_area_p1638.i = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !3768
  %overflow_arg_area1639.i = load i8*, i8** %overflow_arg_area_p1638.i, align 8, !dbg !3768
  %overflow_arg_area.next1640.i = getelementptr i8, i8* %overflow_arg_area1639.i, i64 8, !dbg !3768
  store i8* %overflow_arg_area.next1640.i, i8** %overflow_arg_area_p1638.i, align 8, !dbg !3768
  br label %vaarg.end.1641.i, !dbg !3768

vaarg.end.1641.i:                                 ; preds = %vaarg.in_mem.1637.i, %vaarg.in_reg.1635.i
  %vaarg.addr1642.in.i = phi i8* [ %451, %vaarg.in_reg.1635.i ], [ %overflow_arg_area1639.i, %vaarg.in_mem.1637.i ], !dbg !2170
  %vaarg.addr1642.i = bitcast i8* %vaarg.addr1642.in.i to i8***, !dbg !3765
  %453 = load i8**, i8*** %vaarg.addr1642.i, align 8, !dbg !3770
  tail call void @llvm.dbg.value(metadata i8** %453, i64 0, metadata !871, metadata !980) #2, !dbg !3773
  %454 = load i8, i8* %incdec.ptr, align 1, !dbg !3774, !tbaa !1036
  %cmp1644.i = icmp eq i8 %454, 42, !dbg !3776
  br i1 %cmp1644.i, label %if.end.1648.i, label %if.then.1646.i, !dbg !3777

if.then.1646.i:                                   ; preds = %vaarg.end.1641.i
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.61, i64 0, i64 0), i64 0, metadata !880, metadata !980) #2, !dbg !3778
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !3780
  tail call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !3781
  tail call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !3782
  %cmp.i.2680.i = icmp eq %struct._object* %arg, @_Py_NoneStruct, !dbg !3783
  br i1 %cmp.i.2680.i, label %converterr.exit2686.i, label %cond.false.i.2683.i, !dbg !3784

cond.false.i.2683.i:                              ; preds = %if.then.1646.i
  %ob_type.i.2681.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !3785
  %455 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.2681.i, align 8, !dbg !3785, !tbaa !1179
  %tp_name.i.2682.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %455, i64 0, i32 1, !dbg !3786
  %456 = load i8*, i8** %tp_name.i.2682.i, align 8, !dbg !3786, !tbaa !2094
  br label %converterr.exit2686.i, !dbg !3784

converterr.exit2686.i:                            ; preds = %cond.false.i.2683.i, %if.then.1646.i
  %cond.i.2684.i = phi i8* [ %456, %cond.false.i.2683.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.then.1646.i ], !dbg !3784
  %call.i.2685.i = tail call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.61, i64 0, i64 0), i8* %cond.i.2684.i) #2, !dbg !3787
  br label %convertsimple.exit, !dbg !3788

if.end.1648.i:                                    ; preds = %vaarg.end.1641.i
  %incdec.ptr1649.i = getelementptr i8, i8* %0, i64 2, !dbg !3789
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr1649.i, i64 0, metadata !670, metadata !980) #2, !dbg !2161
  %457 = bitcast i8** %453 to %struct.bufferinfo*, !dbg !3790
  %call1650.i = tail call i32 @PyObject_GetBuffer(%struct._object* %arg, %struct.bufferinfo* %457, i32 1) #2, !dbg !3792
  %cmp1651.i = icmp slt i32 %call1650.i, 0, !dbg !3793
  br i1 %cmp1651.i, label %if.then.1653.i, label %if.end.1655.i, !dbg !3794

if.then.1653.i:                                   ; preds = %if.end.1648.i
  tail call void @PyErr_Clear() #2, !dbg !3795
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i64 0, i64 0), i64 0, metadata !880, metadata !980) #2, !dbg !3797
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !3799
  tail call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !3800
  tail call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !3801
  %cmp.i.2687.i = icmp eq %struct._object* %arg, @_Py_NoneStruct, !dbg !3802
  br i1 %cmp.i.2687.i, label %converterr.exit2693.i, label %cond.false.i.2690.i, !dbg !3803

cond.false.i.2690.i:                              ; preds = %if.then.1653.i
  %ob_type.i.2688.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !3804
  %458 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.2688.i, align 8, !dbg !3804, !tbaa !1179
  %tp_name.i.2689.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %458, i64 0, i32 1, !dbg !3805
  %459 = load i8*, i8** %tp_name.i.2689.i, align 8, !dbg !3805, !tbaa !2094
  br label %converterr.exit2693.i, !dbg !3803

converterr.exit2693.i:                            ; preds = %cond.false.i.2690.i, %if.then.1653.i
  %cond.i.2691.i = phi i8* [ %459, %cond.false.i.2690.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.then.1653.i ], !dbg !3803
  %call.i.2692.i = tail call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i64 0, i64 0), i8* %cond.i.2691.i) #2, !dbg !3806
  br label %convertsimple.exit, !dbg !3807

if.end.1655.i:                                    ; preds = %if.end.1648.i
  %call1656.i = tail call i32 @PyBuffer_IsContiguous(%struct.bufferinfo* %457, i8 signext 67) #2, !dbg !3808
  %tobool1657.i = icmp eq i32 %call1656.i, 0, !dbg !3808
  br i1 %tobool1657.i, label %if.then.1658.i, label %cleanup.1666.i, !dbg !3810

if.then.1658.i:                                   ; preds = %if.end.1655.i
  tail call void @PyBuffer_Release(%struct.bufferinfo* %457) #2, !dbg !3811
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), i64 0, metadata !880, metadata !980) #2, !dbg !3813
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !3815
  tail call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !3816
  tail call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !3817
  %cmp.i.2694.i = icmp eq %struct._object* %arg, @_Py_NoneStruct, !dbg !3818
  br i1 %cmp.i.2694.i, label %converterr.exit2700.i, label %cond.false.i.2697.i, !dbg !3819

cond.false.i.2697.i:                              ; preds = %if.then.1658.i
  %ob_type.i.2695.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !3820
  %460 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.2695.i, align 8, !dbg !3820, !tbaa !1179
  %tp_name.i.2696.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %460, i64 0, i32 1, !dbg !3821
  %461 = load i8*, i8** %tp_name.i.2696.i, align 8, !dbg !3821, !tbaa !2094
  br label %converterr.exit2700.i, !dbg !3819

converterr.exit2700.i:                            ; preds = %cond.false.i.2697.i, %if.then.1658.i
  %cond.i.2698.i = phi i8* [ %461, %cond.false.i.2697.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %if.then.1658.i ], !dbg !3819
  %call.i.2699.i = tail call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), i8* %cond.i.2698.i) #2, !dbg !3822
  br label %convertsimple.exit, !dbg !3823

cleanup.1666.i:                                   ; preds = %if.end.1655.i
  %first_available.i.2701.i = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i64 0, i32 1, !dbg !3824
  %462 = load i32, i32* %first_available.i.2701.i, align 4, !dbg !3824, !tbaa !1023
  tail call void @llvm.dbg.value(metadata i32 %462, i64 0, metadata !898, metadata !980) #2, !dbg !3827
  %add.i.2702.i = add i32 %462, 1, !dbg !3828
  store i32 %add.i.2702.i, i32* %first_available.i.2701.i, align 4, !dbg !3828, !tbaa !1023
  %idxprom.i.2703.i = sext i32 %462 to i64, !dbg !3829
  %entries.i.2704.i = getelementptr inbounds %struct.freelist_t, %struct.freelist_t* %freelist, i64 0, i32 0, !dbg !3830
  %463 = load %struct.freelistentry_t*, %struct.freelistentry_t** %entries.i.2704.i, align 8, !dbg !3830, !tbaa !1018
  %item.i.2705.i = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %463, i64 %idxprom.i.2703.i, i32 0, !dbg !3831
  %464 = bitcast i8** %item.i.2705.i to i8***, !dbg !3832
  store i8** %453, i8*** %464, align 8, !dbg !3832, !tbaa !1164
  %destructor5.i.2706.i = getelementptr inbounds %struct.freelistentry_t, %struct.freelistentry_t* %463, i64 %idxprom.i.2703.i, i32 1, !dbg !3833
  store i32 (%struct._object*, i8*)* @cleanup_buffer, i32 (%struct._object*, i8*)** %destructor5.i.2706.i, align 8, !dbg !3834, !tbaa !1161
  br label %if.then.14, !dbg !2170

sw.default.i:                                     ; preds = %if.else
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0), i64 0, metadata !880, metadata !980) #2, !dbg !3835
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !881, metadata !980) #2, !dbg !3837
  tail call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !882, metadata !980) #2, !dbg !3838
  tail call void @llvm.dbg.value(metadata i64 %bufsize, i64 0, metadata !883, metadata !980) #2, !dbg !3839
  %cmp.i.2707.i = icmp eq %struct._object* %arg, @_Py_NoneStruct, !dbg !3840
  br i1 %cmp.i.2707.i, label %converterr.exit2713.i, label %cond.false.i.2710.i, !dbg !3841

cond.false.i.2710.i:                              ; preds = %sw.default.i
  %ob_type.i.2708.i = getelementptr inbounds %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !3842
  %465 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.2708.i, align 8, !dbg !3842, !tbaa !1179
  %tp_name.i.2709.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %465, i64 0, i32 1, !dbg !3843
  %466 = load i8*, i8** %tp_name.i.2709.i, align 8, !dbg !3843, !tbaa !2094
  br label %converterr.exit2713.i, !dbg !3841

converterr.exit2713.i:                            ; preds = %cond.false.i.2710.i, %sw.default.i
  %cond.i.2711.i = phi i8* [ %466, %cond.false.i.2710.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %sw.default.i ], !dbg !3841
  %call.i.2712.i = tail call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %msgbuf, i64 %bufsize, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0), i8* %cond.i.2711.i) #2, !dbg !3844
  br label %convertsimple.exit, !dbg !3845

convertsimple.exit:                               ; preds = %float_argument_error.exit.i, %land.lhs.true.i, %if.then.8.i, %if.then.12.i, %float_argument_error.exit2313.i, %land.lhs.true.41.i, %float_argument_error.exit2320.i, %land.lhs.true.73.i, %if.then.80.i, %if.then.84.i, %float_argument_error.exit2327.i, %land.lhs.true.115.i, %float_argument_error.exit2334.i, %land.lhs.true.147.i, %if.then.154.i, %if.then.158.i, %float_argument_error.exit2341.i, %land.lhs.true.190.i, %float_argument_error.exit2348.i, %land.lhs.true.231.i, %float_argument_error.exit2355.i, %land.lhs.true.262.i, %cleanup.294.i, %float_argument_error.exit2364.i, %land.lhs.true.319.i, %cleanup.353.i, %vaarg.end.368.i, %vaarg.end.392.i, %vaarg.end.416.i, %cleanup.470.i, %converterr.exit2385.i, %cond.false.496.i, %converterr.exit2392.i, %if.else.571.i, %converterr.exit2404.i, %converterr.exit2416.i, %cleanup.663.i, %converterr.exit2430.i, %cleanup.718.i, %cleanup.729.i, %cleanup.829.thread2760.i, %converterr.exit2500.i, %converterr.exit2507.i, %cleanup.923.i, %cleanup.1014.thread2773.i, %converterr.exit2542.i, %cleanup.1053.thread.i, %converterr.exit2556.i, %cleanup.1426.thread.i, %cleanup.1456.i, %cleanup.1483.i, %cond.false.1511.i, %converterr.exit2659.i, %converterr.exit2666.i, %cleanup.1606.i, %converterr.exit2686.i, %converterr.exit2693.i, %converterr.exit2700.i, %converterr.exit2713.i
  call void @llvm.dbg.value(metadata i8* %msgbuf, i64 0, metadata !625, metadata !980), !dbg !2147
  %cmp7 = icmp eq i8* %msgbuf, null, !dbg !3846
  br i1 %cmp7, label %if.then.14, label %if.then.9, !dbg !3848

if.then.9:                                        ; preds = %convertsimple.exit
  store i32 0, i32* %levels, align 4, !dbg !3849, !tbaa !1059
  br label %if.end.15, !dbg !3850

if.then.14:                                       ; preds = %cleanup.1666.i, %vaarg.end.1622.i, %land.lhs.true.1599.i, %vaarg.end.1589.i, %if.then.1558.i, %cleanup.1522.i, %cleanup.1483.thread.i, %cleanup.1456.thread.i, %cleanup.1426.thread2792.i, %cleanup.1053.thread2777.i, %if.then.1033.i, %cleanup.1022.i, %cleanup.923.thread.i, %cleanup.859.i, %cleanup.740.i, %if.else.666.i, %cleanup.663.thread.i, %if.end.604.i, %if.end.577.i, %cleanup.549.i, %cleanup.470.thread.i, %if.else.422.i, %if.else.399.i, %if.else.374.i, %cleanup.353.thread.i, %if.else.323.i, %cleanup.294.thread.i, %if.else.266.i, %if.end.235.i, %if.else.194.i, %if.else.159.i, %if.else.119.i, %if.else.85.i, %if.else.45.i, %if.else.13.i, %if.then.4, %convertsimple.exit
  %.ph.in = phi i8* [ %0, %convertsimple.exit ], [ %incdec.ptr5, %if.then.4 ], [ %incdec.ptr1649.i, %cleanup.1666.i ], [ %incdec.ptr, %cleanup.1522.i ], [ %incdec.ptr739.i, %cleanup.740.i ], [ %incdec.ptr858.i, %cleanup.859.i ], [ %incdec.ptr, %cleanup.549.i ], [ %incdec.ptr, %if.else.13.i ], [ %incdec.ptr, %if.else.45.i ], [ %incdec.ptr, %if.else.85.i ], [ %incdec.ptr, %if.else.119.i ], [ %incdec.ptr, %if.else.159.i ], [ %incdec.ptr, %if.else.194.i ], [ %incdec.ptr, %if.end.235.i ], [ %incdec.ptr, %if.else.266.i ], [ %incdec.ptr, %if.else.323.i ], [ %incdec.ptr, %if.else.374.i ], [ %incdec.ptr, %if.else.399.i ], [ %incdec.ptr, %if.else.422.i ], [ %incdec.ptr, %if.end.577.i ], [ %incdec.ptr, %cleanup.294.thread.i ], [ %incdec.ptr, %cleanup.353.thread.i ], [ %incdec.ptr, %cleanup.470.thread.i ], [ %incdec.ptr, %cleanup.923.thread.i ], [ %format.8.i, %cleanup.1426.thread2792.i ], [ %incdec.ptr, %cleanup.1456.thread.i ], [ %incdec.ptr, %cleanup.1483.thread.i ], [ %incdec.ptr662.i, %cleanup.663.thread.i ], [ %incdec.ptr, %if.else.666.i ], [ %incdec.ptr605.i, %if.end.604.i ], [ %incdec.ptr, %cleanup.1053.thread2777.i ], [ %incdec.ptr, %if.then.1033.i ], [ %incdec.ptr1021.i, %cleanup.1022.i ], [ %incdec.ptr, %vaarg.end.1622.i ], [ %incdec.ptr1554.i, %if.then.1558.i ], [ %incdec.ptr1591.i, %vaarg.end.1589.i ], [ %incdec.ptr1591.i, %land.lhs.true.1599.i ]
  %.ph = ptrtoint i8* %.ph.in to i64, !dbg !3851
  call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !626, metadata !980), !dbg !2045
  %467 = bitcast i8** %p_format to i64*, !dbg !3852
  store i64 %.ph, i64* %467, align 8, !dbg !3852, !tbaa !993
  br label %if.end.15, !dbg !3854

if.end.15:                                        ; preds = %converttuple.exit.thread59, %if.then.9, %converttuple.exit, %if.then.14
  %msg.052 = phi i8* [ null, %if.then.14 ], [ %msgbuf, %if.then.9 ], [ %msgbuf, %converttuple.exit ], [ %call75.i.lcssa, %converttuple.exit.thread59 ]
  ret i8* %msg.052, !dbg !3855
}

; Function Attrs: nounwind uwtable
define internal fastcc void @seterror(i64 %iarg, i8* %msg, i32* nocapture readonly %levels, i8* %fname, i8* %message) #0 {
entry:
  %buf = alloca [512 x i8], align 16
  tail call void @llvm.dbg.value(metadata i64 %iarg, i64 0, metadata !922, metadata !980), !dbg !3856
  tail call void @llvm.dbg.value(metadata i8* %msg, i64 0, metadata !923, metadata !980), !dbg !3857
  tail call void @llvm.dbg.value(metadata i32* %levels, i64 0, metadata !924, metadata !980), !dbg !3858
  tail call void @llvm.dbg.value(metadata i8* %fname, i64 0, metadata !925, metadata !980), !dbg !3859
  tail call void @llvm.dbg.value(metadata i8* %message, i64 0, metadata !926, metadata !980), !dbg !3860
  %0 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i64 0, i64 0, !dbg !3861
  call void @llvm.lifetime.start(i64 512, i8* %0) #2, !dbg !3861
  tail call void @llvm.dbg.declare(metadata [512 x i8]* %buf, metadata !927, metadata !980), !dbg !3862
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !932, metadata !980), !dbg !3863
  %call = tail call %struct._object* @PyErr_Occurred() #2, !dbg !3864
  %tobool = icmp eq %struct._object* %call, null, !dbg !3864
  br i1 %tobool, label %if.else, label %cleanup, !dbg !3866

if.else:                                          ; preds = %entry
  %cmp = icmp eq i8* %message, null, !dbg !3867
  br i1 %cmp, label %if.then.1, label %if.end.49, !dbg !3869

if.then.1:                                        ; preds = %if.else
  %cmp2 = icmp eq i8* %fname, null, !dbg !3870
  br i1 %cmp2, label %if.end, label %if.then.3, !dbg !3873

if.then.3:                                        ; preds = %if.then.1
  %call4 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %0, i64 512, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i64 0, i64 0), i8* %fname) #2, !dbg !3874
  %call5 = call i64 @strlen(i8* %0) #8, !dbg !3876
  %add.ptr = getelementptr [512 x i8], [512 x i8]* %buf, i64 0, i64 %call5, !dbg !3877
  call void @llvm.dbg.value(metadata i8* %add.ptr, i64 0, metadata !932, metadata !980), !dbg !3863
  br label %if.end, !dbg !3878

if.end:                                           ; preds = %if.then.1, %if.then.3
  %1 = phi i64 [ %call5, %if.then.3 ], [ 0, %if.then.1 ]
  %p.0 = phi i8* [ %add.ptr, %if.then.3 ], [ %0, %if.then.1 ]
  %cmp6 = icmp eq i64 %iarg, 0, !dbg !3879
  %sub.ptr.lhs.cast = ptrtoint i8* %p.0 to i64, !dbg !3881
  %sub.ptr.rhs.cast = ptrtoint [512 x i8]* %buf to i64, !dbg !3881
  %sub.ptr.sub77 = sub i64 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast, !dbg !3883
  %sub = add i64 %sub.ptr.sub77, 512, !dbg !3883
  %2 = getelementptr [512 x i8], [512 x i8]* %buf, i64 0, i64 %1, !dbg !3877
  br i1 %cmp6, label %if.else.31, label %if.then.7, !dbg !3884

if.then.7:                                        ; preds = %if.end
  %call9 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %p.0, i64 %sub, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i64 0, i64 0), i64 %iarg) #2, !dbg !3885
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !931, metadata !980), !dbg !3886
  %call10 = call i64 @strlen(i8* %p.0) #8, !dbg !3887
  %add.ptr11 = getelementptr i8, i8* %2, i64 %call10, !dbg !3888
  call void @llvm.dbg.value(metadata i8* %add.ptr11, i64 0, metadata !932, metadata !980), !dbg !3863
  br label %land.lhs.true, !dbg !3889

land.lhs.true:                                    ; preds = %if.then.7, %while.body
  %p.180 = phi i8* [ %add.ptr11, %if.then.7 ], [ %add.ptr30, %while.body ]
  %i.079 = phi i32 [ 0, %if.then.7 ], [ %inc, %while.body ]
  %idxprom = sext i32 %i.079 to i64, !dbg !3890
  %arrayidx = getelementptr i32, i32* %levels, i64 %idxprom, !dbg !3890
  %3 = load i32, i32* %arrayidx, align 4, !dbg !3890, !tbaa !1059
  %cmp13 = icmp sgt i32 %3, 0, !dbg !3891
  br i1 %cmp13, label %land.rhs, label %if.end.40.loopexit, !dbg !3892

land.rhs:                                         ; preds = %land.lhs.true
  %sub.ptr.lhs.cast15 = ptrtoint i8* %p.180 to i64, !dbg !3893
  %sub.ptr.sub17 = sub i64 %sub.ptr.lhs.cast15, %sub.ptr.rhs.cast, !dbg !3893
  %conv = trunc i64 %sub.ptr.sub17 to i32, !dbg !3894
  %cmp18 = icmp slt i32 %conv, 220, !dbg !3895
  br i1 %cmp18, label %while.body, label %if.end.40.loopexit, !dbg !3896

while.body:                                       ; preds = %land.rhs
  %sub24 = sub i64 512, %sub.ptr.sub17, !dbg !3899
  %sub27 = add i32 %3, -1, !dbg !3901
  %call28 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %p.180, i64 %sub24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i64 0, i64 0), i32 %sub27) #2, !dbg !3902
  %call29 = call i64 @strlen(i8* %p.180) #8, !dbg !3903
  %add.ptr30 = getelementptr i8, i8* %p.180, i64 %call29, !dbg !3904
  call void @llvm.dbg.value(metadata i8* %add.ptr30, i64 0, metadata !932, metadata !980), !dbg !3863
  %inc = add nuw i32 %i.079, 1, !dbg !3905
  call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !931, metadata !980), !dbg !3886
  %cmp12 = icmp slt i32 %inc, 32, !dbg !3906
  br i1 %cmp12, label %land.lhs.true, label %if.end.40.loopexit, !dbg !3889

if.else.31:                                       ; preds = %if.end
  %call37 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %p.0, i64 %sub, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i64 0, i64 0)) #2, !dbg !3907
  %call38 = call i64 @strlen(i8* %p.0) #8, !dbg !3909
  %add.ptr39 = getelementptr i8, i8* %2, i64 %call38, !dbg !3910
  call void @llvm.dbg.value(metadata i8* %add.ptr39, i64 0, metadata !932, metadata !980), !dbg !3863
  br label %if.end.40

if.end.40.loopexit:                               ; preds = %while.body, %land.lhs.true, %land.rhs
  %p.2.ph = phi i8* [ %p.180, %land.rhs ], [ %p.180, %land.lhs.true ], [ %add.ptr30, %while.body ]
  br label %if.end.40, !dbg !3911

if.end.40:                                        ; preds = %if.end.40.loopexit, %if.else.31
  %p.2 = phi i8* [ %add.ptr39, %if.else.31 ], [ %p.2.ph, %if.end.40.loopexit ]
  %sub.ptr.lhs.cast42 = ptrtoint i8* %p.2 to i64, !dbg !3911
  %sub.ptr.sub4478 = add i64 %sub.ptr.rhs.cast, 512, !dbg !3912
  %sub45 = sub i64 %sub.ptr.sub4478, %sub.ptr.lhs.cast42, !dbg !3912
  %call46 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %p.2, i64 %sub45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i64 0, i64 0), i8* %msg) #2, !dbg !3913
  call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !926, metadata !980), !dbg !3860
  br label %if.end.49, !dbg !3914

if.end.49:                                        ; preds = %if.else, %if.end.40
  %message.addr.0 = phi i8* [ %0, %if.end.40 ], [ %message, %if.else ]
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !3915, !tbaa !993
  call void @PyErr_SetString(%struct._object* %4, i8* %message.addr.0) #2, !dbg !3916
  br label %cleanup, !dbg !3917

cleanup:                                          ; preds = %entry, %if.end.49
  call void @llvm.lifetime.end(i64 512, i8* %0) #2, !dbg !3918
  ret void, !dbg !3917
}

declare void @PyMem_Free(i8*) #3

declare i32 @PySequence_Check(%struct._object*) #3

declare i32 @PyOS_snprintf(i8*, i64, i8*, ...) #3

declare i64 @PySequence_Size(%struct._object*) #3

declare %struct._object* @PySequence_GetItem(%struct._object*, i64) #3

declare void @PyErr_Clear() #3

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8* nocapture readonly, i64) #5

declare i64 @PyLong_AsLong(%struct._object*) #3

declare %struct._object* @PyErr_Occurred() #3

declare i64 @PyLong_AsUnsignedLongMask(%struct._object*) #3

declare %struct._object* @PyNumber_Index(%struct._object*) #3

declare i64 @PyLong_AsSsize_t(%struct._object*) #3

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
define internal i32 @cleanup_buffer(%struct._object* nocapture readnone %self, i8* %ptr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !901, metadata !980), !dbg !3920
  tail call void @llvm.dbg.value(metadata i8* %ptr, i64 0, metadata !902, metadata !980), !dbg !3921
  tail call void @llvm.dbg.value(metadata %struct.bufferinfo* %0, i64 0, metadata !903, metadata !980), !dbg !3922
  %tobool = icmp eq i8* %ptr, null, !dbg !3923
  br i1 %tobool, label %if.end, label %if.then, !dbg !3925

if.then:                                          ; preds = %entry
  %0 = bitcast i8* %ptr to %struct.bufferinfo*, !dbg !3926
  tail call void @PyBuffer_Release(%struct.bufferinfo* %0) #2, !dbg !3927
  br label %if.end, !dbg !3929

if.end:                                           ; preds = %entry, %if.then
  ret i32 0, !dbg !3930
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #6

declare i32 @PyBuffer_FillInfo(%struct.bufferinfo*, %struct._object*, i8*, i64, i32, i32) #3

declare i8* @PyUnicode_AsUTF8AndSize(%struct._object*, i64*) #3

declare i32* @PyUnicode_AsUnicodeAndSize(%struct._object*, i64*) #3

declare i64 @Py_UNICODE_strlen(i32*) #3

declare i8* @PyUnicode_GetDefaultEncoding() #3

declare i32 @PyObject_AsCharBuffer(%struct._object*, i8**, i64*) #3

declare %struct._object* @PyUnicode_FromObject(%struct._object*) #3

declare %struct._object* @PyUnicode_AsEncodedString(%struct._object*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @cleanup_ptr(%struct._object* nocapture readnone %self, i8* %ptr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !916, metadata !980), !dbg !3931
  tail call void @llvm.dbg.value(metadata i8* %ptr, i64 0, metadata !917, metadata !980), !dbg !3932
  %tobool = icmp eq i8* %ptr, null, !dbg !3933
  br i1 %tobool, label %if.end, label %if.then, !dbg !3935

if.then:                                          ; preds = %entry
  tail call void @PyMem_Free(i8* %ptr) #2, !dbg !3936
  br label %if.end, !dbg !3938

if.end:                                           ; preds = %entry, %if.then
  ret i32 0, !dbg !3939
}

declare i32 @PyObject_GetBuffer(%struct._object*, %struct.bufferinfo*, i32) #3

declare i32 @PyBuffer_IsContiguous(%struct.bufferinfo*, i8 signext) #3

declare void @PyBuffer_Release(%struct.bufferinfo*) #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #6

declare %struct._object* @PyDict_GetItemString(%struct._object*, i8*) #3

; Function Attrs: nounwind uwtable
define internal fastcc i8* @skipitem(i8** nocapture %p_format, [1 x %struct.__va_list_tag]* nocapture %p_va, i32 %flags) #0 {
entry:
  %format = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8** %p_format, i64 0, metadata !969, metadata !980), !dbg !3940
  tail call void @llvm.dbg.value(metadata [1 x %struct.__va_list_tag]* %p_va, i64 0, metadata !970, metadata !980), !dbg !3941
  tail call void @llvm.dbg.value(metadata i32 %flags, i64 0, metadata !971, metadata !980), !dbg !3942
  %0 = bitcast i8** %format to i8*, !dbg !3943
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3943
  %1 = load i8*, i8** %p_format, align 8, !dbg !3944, !tbaa !993
  %incdec.ptr = getelementptr i8, i8* %1, i64 1, !dbg !3945
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !972, metadata !980), !dbg !3948
  store i8* %incdec.ptr, i8** %format, align 8, !dbg !3949, !tbaa !993
  %2 = load i8, i8* %1, align 1, !dbg !3950, !tbaa !1036
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !973, metadata !980), !dbg !3951
  %conv = sext i8 %2 to i32, !dbg !3952
  %3 = ptrtoint i8* %incdec.ptr to i64, !dbg !3953
  switch i32 %conv, label %err [
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
    i32 40, label %for.cond.preheader
    i32 41, label %cleanup.182
  ], !dbg !3953

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !3948

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 0, !dbg !3954
  %gp_offset = load i32, i32* %gp_offset_p, align 4, !dbg !3954
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !3954
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !3954

vaarg.in_reg:                                     ; preds = %sw.bb
  %4 = add i32 %gp_offset, 8, !dbg !3956
  store i32 %4, i32* %gp_offset_p, align 4, !dbg !3956
  br label %sw.epilog, !dbg !3956

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !3958
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8, !dbg !3958
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i64 8, !dbg !3958
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !3958
  br label %sw.epilog, !dbg !3958

sw.bb.1:                                          ; preds = %entry
  %gp_offset_p3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 0, !dbg !3960
  %gp_offset4 = load i32, i32* %gp_offset_p3, align 4, !dbg !3960
  %fits_in_gp5 = icmp ult i32 %gp_offset4, 41, !dbg !3960
  br i1 %fits_in_gp5, label %vaarg.in_reg.6, label %vaarg.in_mem.8, !dbg !3960

vaarg.in_reg.6:                                   ; preds = %sw.bb.1
  %5 = add i32 %gp_offset4, 8, !dbg !3961
  store i32 %5, i32* %gp_offset_p3, align 4, !dbg !3961
  br label %vaarg.end.12, !dbg !3961

vaarg.in_mem.8:                                   ; preds = %sw.bb.1
  %overflow_arg_area_p9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !3963
  %overflow_arg_area10 = load i8*, i8** %overflow_arg_area_p9, align 8, !dbg !3963
  %overflow_arg_area.next11 = getelementptr i8, i8* %overflow_arg_area10, i64 8, !dbg !3963
  store i8* %overflow_arg_area.next11, i8** %overflow_arg_area_p9, align 8, !dbg !3963
  br label %vaarg.end.12, !dbg !3963

vaarg.end.12:                                     ; preds = %vaarg.in_mem.8, %vaarg.in_reg.6
  tail call void @llvm.dbg.value(metadata i8** %format, i64 0, metadata !972, metadata !980), !dbg !3948
  %6 = load i8, i8* %incdec.ptr, align 1, !dbg !3965, !tbaa !1036
  %.off = add i8 %6, -115, !dbg !3966
  %switch = icmp ult i8 %.off, 2, !dbg !3966
  br i1 %switch, label %if.end, label %err, !dbg !3966

if.end:                                           ; preds = %vaarg.end.12
  tail call void @llvm.dbg.value(metadata i8** %format, i64 0, metadata !972, metadata !980), !dbg !3948
  %incdec.ptr19 = getelementptr i8, i8* %1, i64 2, !dbg !3967
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr19, i64 0, metadata !972, metadata !980), !dbg !3948
  store i8* %incdec.ptr19, i8** %format, align 8, !dbg !3967, !tbaa !993
  %7 = ptrtoint i8* %incdec.ptr19 to i64, !dbg !3968
  br label %sw.bb.20, !dbg !3968

sw.bb.20:                                         ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %if.end
  %8 = phi i64 [ %3, %entry ], [ %3, %entry ], [ %3, %entry ], [ %3, %entry ], [ %3, %entry ], [ %3, %entry ], [ %7, %if.end ]
  %9 = phi i8* [ %1, %entry ], [ %1, %entry ], [ %1, %entry ], [ %1, %entry ], [ %1, %entry ], [ %1, %entry ], [ %incdec.ptr, %if.end ], !dbg !3969
  %10 = phi i8* [ %incdec.ptr, %entry ], [ %incdec.ptr, %entry ], [ %incdec.ptr, %entry ], [ %incdec.ptr, %entry ], [ %incdec.ptr, %entry ], [ %incdec.ptr, %entry ], [ %incdec.ptr19, %if.end ], !dbg !3969
  %gp_offset_p22 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 0, !dbg !3973
  %gp_offset23 = load i32, i32* %gp_offset_p22, align 4, !dbg !3973
  %fits_in_gp24 = icmp ult i32 %gp_offset23, 41, !dbg !3973
  br i1 %fits_in_gp24, label %vaarg.in_reg.25, label %vaarg.in_mem.27, !dbg !3973

vaarg.in_reg.25:                                  ; preds = %sw.bb.20
  %11 = add i32 %gp_offset23, 8, !dbg !3974
  store i32 %11, i32* %gp_offset_p22, align 4, !dbg !3974
  br label %vaarg.end.31, !dbg !3974

vaarg.in_mem.27:                                  ; preds = %sw.bb.20
  %overflow_arg_area_p28 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !3976
  %overflow_arg_area29 = load i8*, i8** %overflow_arg_area_p28, align 8, !dbg !3976
  %overflow_arg_area.next30 = getelementptr i8, i8* %overflow_arg_area29, i64 8, !dbg !3976
  store i8* %overflow_arg_area.next30, i8** %overflow_arg_area_p28, align 8, !dbg !3976
  br label %vaarg.end.31, !dbg !3976

vaarg.end.31:                                     ; preds = %vaarg.in_mem.27, %vaarg.in_reg.25
  %gp_offset40 = phi i32 [ %gp_offset23, %vaarg.in_mem.27 ], [ %11, %vaarg.in_reg.25 ], !dbg !3978
  tail call void @llvm.dbg.value(metadata i8** %format, i64 0, metadata !972, metadata !980), !dbg !3948
  %12 = load i8, i8* %10, align 1, !dbg !3980, !tbaa !1036
  %cmp34 = icmp eq i8 %12, 35, !dbg !3982
  br i1 %cmp34, label %if.then.36, label %if.else.64, !dbg !3983

if.then.36:                                       ; preds = %vaarg.end.31
  %and = and i32 %flags, 2, !dbg !3984
  %tobool = icmp eq i32 %and, 0, !dbg !3984
  %fits_in_gp41 = icmp ult i32 %gp_offset40, 41, !dbg !3978
  br i1 %tobool, label %if.else, label %if.then.37, !dbg !3985

if.then.37:                                       ; preds = %if.then.36
  br i1 %fits_in_gp41, label %vaarg.in_reg.42, label %vaarg.in_mem.44, !dbg !3978

vaarg.in_reg.42:                                  ; preds = %if.then.37
  %13 = add i32 %gp_offset40, 8, !dbg !3986
  store i32 %13, i32* %gp_offset_p22, align 4, !dbg !3986
  br label %if.end.62, !dbg !3986

vaarg.in_mem.44:                                  ; preds = %if.then.37
  %overflow_arg_area_p45 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !3988
  %overflow_arg_area46 = load i8*, i8** %overflow_arg_area_p45, align 8, !dbg !3988
  %overflow_arg_area.next47 = getelementptr i8, i8* %overflow_arg_area46, i64 8, !dbg !3988
  store i8* %overflow_arg_area.next47, i8** %overflow_arg_area_p45, align 8, !dbg !3988
  br label %if.end.62, !dbg !3988

if.else:                                          ; preds = %if.then.36
  br i1 %fits_in_gp41, label %vaarg.in_reg.54, label %vaarg.in_mem.56, !dbg !3990

vaarg.in_reg.54:                                  ; preds = %if.else
  %14 = add i32 %gp_offset40, 8, !dbg !3991
  store i32 %14, i32* %gp_offset_p22, align 4, !dbg !3991
  br label %if.end.62, !dbg !3991

vaarg.in_mem.56:                                  ; preds = %if.else
  %overflow_arg_area_p57 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !3992
  %overflow_arg_area58 = load i8*, i8** %overflow_arg_area_p57, align 8, !dbg !3992
  %overflow_arg_area.next59 = getelementptr i8, i8* %overflow_arg_area58, i64 8, !dbg !3992
  store i8* %overflow_arg_area.next59, i8** %overflow_arg_area_p57, align 8, !dbg !3992
  br label %if.end.62, !dbg !3992

if.end.62:                                        ; preds = %vaarg.in_reg.54, %vaarg.in_mem.56, %vaarg.in_reg.42, %vaarg.in_mem.44
  tail call void @llvm.dbg.value(metadata i8** %format, i64 0, metadata !972, metadata !980), !dbg !3948
  %incdec.ptr63 = getelementptr i8, i8* %9, i64 2, !dbg !3969
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr63, i64 0, metadata !972, metadata !980), !dbg !3948
  store i8* %incdec.ptr63, i8** %format, align 8, !dbg !3969, !tbaa !993
  %15 = ptrtoint i8* %incdec.ptr63 to i64, !dbg !3993
  br label %sw.epilog, !dbg !3993

if.else.64:                                       ; preds = %vaarg.end.31
  switch i8 %2, label %sw.epilog [
    i8 115, label %land.lhs.true
    i8 122, label %land.lhs.true
    i8 121, label %land.lhs.true
  ], !dbg !3994

land.lhs.true:                                    ; preds = %if.else.64, %if.else.64, %if.else.64
  tail call void @llvm.dbg.value(metadata i8** %format, i64 0, metadata !972, metadata !980), !dbg !3948
  %cmp77 = icmp eq i8 %12, 42, !dbg !3995
  br i1 %cmp77, label %if.then.79, label %sw.epilog, !dbg !3996

if.then.79:                                       ; preds = %land.lhs.true
  %incdec.ptr80 = getelementptr i8, i8* %9, i64 2, !dbg !3997
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr80, i64 0, metadata !972, metadata !980), !dbg !3948
  store i8* %incdec.ptr80, i8** %format, align 8, !dbg !3997, !tbaa !993
  %16 = ptrtoint i8* %incdec.ptr80 to i64, !dbg !3999
  br label %sw.epilog, !dbg !3999

sw.bb.83:                                         ; preds = %entry
  %17 = load i8, i8* %incdec.ptr, align 1, !dbg !4000, !tbaa !1036
  %cmp85 = icmp eq i8 %17, 33, !dbg !4003
  br i1 %cmp85, label %if.then.87, label %if.else.113, !dbg !4004

if.then.87:                                       ; preds = %sw.bb.83
  %incdec.ptr88 = getelementptr i8, i8* %1, i64 2, !dbg !4005
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr88, i64 0, metadata !972, metadata !980), !dbg !3948
  store i8* %incdec.ptr88, i8** %format, align 8, !dbg !4005, !tbaa !993
  %gp_offset_p90 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 0, !dbg !4007
  %gp_offset91 = load i32, i32* %gp_offset_p90, align 4, !dbg !4008
  %fits_in_gp92 = icmp ult i32 %gp_offset91, 41, !dbg !4007
  %18 = ptrtoint i8* %incdec.ptr88 to i64, !dbg !4007
  br i1 %fits_in_gp92, label %vaarg.end.99, label %vaarg.end.99.thread, !dbg !4007

vaarg.end.99.thread:                              ; preds = %if.then.87
  %overflow_arg_area_p96 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !4009
  %overflow_arg_area97 = load i8*, i8** %overflow_arg_area_p96, align 8, !dbg !4009
  %overflow_arg_area.next98 = getelementptr i8, i8* %overflow_arg_area97, i64 8, !dbg !4009
  store i8* %overflow_arg_area.next98, i8** %overflow_arg_area_p96, align 8, !dbg !4009
  br label %vaarg.in_mem.107, !dbg !4008

vaarg.end.99:                                     ; preds = %if.then.87
  %19 = add i32 %gp_offset91, 8, !dbg !4011
  store i32 %19, i32* %gp_offset_p90, align 4, !dbg !4011
  %fits_in_gp104 = icmp ult i32 %19, 41, !dbg !4008
  br i1 %fits_in_gp104, label %vaarg.in_reg.105, label %vaarg.in_mem.107, !dbg !4008

vaarg.in_reg.105:                                 ; preds = %vaarg.end.99
  %20 = add i32 %gp_offset91, 16, !dbg !4013
  store i32 %20, i32* %gp_offset_p90, align 4, !dbg !4013
  br label %sw.epilog, !dbg !4013

vaarg.in_mem.107:                                 ; preds = %vaarg.end.99.thread, %vaarg.end.99
  %overflow_arg_area_p108 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !4014
  %overflow_arg_area109 = load i8*, i8** %overflow_arg_area_p108, align 8, !dbg !4014
  %overflow_arg_area.next110 = getelementptr i8, i8* %overflow_arg_area109, i64 8, !dbg !4014
  store i8* %overflow_arg_area.next110, i8** %overflow_arg_area_p108, align 8, !dbg !4014
  br label %sw.epilog, !dbg !4014

if.else.113:                                      ; preds = %sw.bb.83
  %cmp115 = icmp eq i8 %17, 38, !dbg !4015
  %gp_offset_p119 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 0, !dbg !4017
  %gp_offset120 = load i32, i32* %gp_offset_p119, align 4, !dbg !4019
  %fits_in_gp121 = icmp ult i32 %gp_offset120, 41, !dbg !4017
  br i1 %cmp115, label %if.then.117, label %if.else.143, !dbg !4020

if.then.117:                                      ; preds = %if.else.113
  br i1 %fits_in_gp121, label %vaarg.end.128, label %vaarg.end.128.thread, !dbg !4017

vaarg.end.128.thread:                             ; preds = %if.then.117
  %overflow_arg_area_p125 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !4021
  %overflow_arg_area126 = load i8*, i8** %overflow_arg_area_p125, align 8, !dbg !4021
  %overflow_arg_area.next127 = getelementptr i8, i8* %overflow_arg_area126, i64 8, !dbg !4021
  store i8* %overflow_arg_area.next127, i8** %overflow_arg_area_p125, align 8, !dbg !4021
  br label %vaarg.in_mem.136, !dbg !4019

vaarg.end.128:                                    ; preds = %if.then.117
  %21 = add i32 %gp_offset120, 8, !dbg !4023
  store i32 %21, i32* %gp_offset_p119, align 4, !dbg !4023
  %fits_in_gp133 = icmp ult i32 %21, 41, !dbg !4019
  br i1 %fits_in_gp133, label %vaarg.in_reg.134, label %vaarg.in_mem.136, !dbg !4019

vaarg.in_reg.134:                                 ; preds = %vaarg.end.128
  %22 = add i32 %gp_offset120, 16, !dbg !4025
  store i32 %22, i32* %gp_offset_p119, align 4, !dbg !4025
  br label %vaarg.end.140, !dbg !4025

vaarg.in_mem.136:                                 ; preds = %vaarg.end.128.thread, %vaarg.end.128
  %overflow_arg_area_p137 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !4026
  %overflow_arg_area138 = load i8*, i8** %overflow_arg_area_p137, align 8, !dbg !4026
  %overflow_arg_area.next139 = getelementptr i8, i8* %overflow_arg_area138, i64 8, !dbg !4026
  store i8* %overflow_arg_area.next139, i8** %overflow_arg_area_p137, align 8, !dbg !4026
  br label %vaarg.end.140, !dbg !4026

vaarg.end.140:                                    ; preds = %vaarg.in_mem.136, %vaarg.in_reg.134
  tail call void @llvm.dbg.value(metadata i8** %format, i64 0, metadata !972, metadata !980), !dbg !3948
  %incdec.ptr142 = getelementptr i8, i8* %1, i64 2, !dbg !4027
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr142, i64 0, metadata !972, metadata !980), !dbg !3948
  store i8* %incdec.ptr142, i8** %format, align 8, !dbg !4027, !tbaa !993
  %23 = ptrtoint i8* %incdec.ptr142 to i64, !dbg !4028
  br label %sw.epilog, !dbg !4028

if.else.143:                                      ; preds = %if.else.113
  br i1 %fits_in_gp121, label %vaarg.in_reg.148, label %vaarg.in_mem.150, !dbg !4029

vaarg.in_reg.148:                                 ; preds = %if.else.143
  %24 = add i32 %gp_offset120, 8, !dbg !4031
  store i32 %24, i32* %gp_offset_p119, align 4, !dbg !4031
  br label %sw.epilog, !dbg !4031

vaarg.in_mem.150:                                 ; preds = %if.else.143
  %overflow_arg_area_p151 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p_va, i64 0, i64 0, i32 2, !dbg !4033
  %overflow_arg_area152 = load i8*, i8** %overflow_arg_area_p151, align 8, !dbg !4033
  %overflow_arg_area.next153 = getelementptr i8, i8* %overflow_arg_area152, i64 8, !dbg !4033
  store i8* %overflow_arg_area.next153, i8** %overflow_arg_area_p151, align 8, !dbg !4033
  br label %sw.epilog, !dbg !4033

for.cond:                                         ; preds = %for.cond.preheader, %if.end.176.for.cond_crit_edge
  %25 = phi i8* [ %.pre, %if.end.176.for.cond_crit_edge ], [ %incdec.ptr, %for.cond.preheader ], !dbg !4035
  tail call void @llvm.dbg.value(metadata i8** %format, i64 0, metadata !972, metadata !980), !dbg !3948
  %26 = load i8, i8* %25, align 1, !dbg !4040, !tbaa !1036
  switch i8 %26, label %if.end.176 [
    i8 41, label %cleanup
    i8 0, label %cleanup.182.loopexit
    i8 59, label %cleanup.182.loopexit
    i8 58, label %cleanup.182.loopexit
  ], !dbg !4041

if.end.176:                                       ; preds = %for.cond
  tail call void @llvm.dbg.value(metadata i8** %format, i64 0, metadata !972, metadata !980), !dbg !3948
  %call = call fastcc i8* @skipitem(i8** nonnull %format, [1 x %struct.__va_list_tag]* %p_va, i32 %flags), !dbg !4042
  tail call void @llvm.dbg.value(metadata i8* %call, i64 0, metadata !974, metadata !980), !dbg !4043
  %tobool177 = icmp eq i8* %call, null, !dbg !4044
  br i1 %tobool177, label %if.end.176.for.cond_crit_edge, label %cleanup.182.loopexit, !dbg !4046

if.end.176.for.cond_crit_edge:                    ; preds = %if.end.176
  %.pre = load i8*, i8** %format, align 8, !dbg !4035, !tbaa !993
  br label %for.cond, !dbg !4046

cleanup:                                          ; preds = %for.cond
  %.lcssa = phi i8* [ %25, %for.cond ]
  %incdec.ptr180 = getelementptr i8, i8* %.lcssa, i64 1, !dbg !4047
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr180, i64 0, metadata !972, metadata !980), !dbg !3948
  store i8* %incdec.ptr180, i8** %format, align 8, !dbg !4047, !tbaa !993
  %27 = ptrtoint i8* %incdec.ptr180 to i64
  br label %sw.epilog

err:                                              ; preds = %vaarg.end.12, %entry
  br label %cleanup.182, !dbg !4048

sw.epilog:                                        ; preds = %cleanup, %vaarg.in_reg.148, %vaarg.in_mem.150, %vaarg.in_reg.105, %vaarg.in_mem.107, %if.else.64, %vaarg.in_reg, %vaarg.in_mem, %vaarg.end.140, %if.end.62, %if.then.79, %land.lhs.true
  %28 = phi i64 [ %27, %cleanup ], [ %3, %vaarg.in_reg.148 ], [ %3, %vaarg.in_mem.150 ], [ %18, %vaarg.in_reg.105 ], [ %18, %vaarg.in_mem.107 ], [ %8, %if.else.64 ], [ %3, %vaarg.in_reg ], [ %3, %vaarg.in_mem ], [ %23, %vaarg.end.140 ], [ %15, %if.end.62 ], [ %16, %if.then.79 ], [ %8, %land.lhs.true ], !dbg !4049
  tail call void @llvm.dbg.value(metadata i8** %format, i64 0, metadata !972, metadata !980), !dbg !3948
  %29 = bitcast i8** %p_format to i64*, !dbg !4050
  store i64 %28, i64* %29, align 8, !dbg !4050, !tbaa !993
  br label %cleanup.182, !dbg !4051

cleanup.182.loopexit:                             ; preds = %for.cond, %for.cond, %for.cond, %if.end.176
  %retval.1.ph = phi i8* [ %call, %if.end.176 ], [ getelementptr inbounds ([38 x i8], [38 x i8]* @.str.86, i64 0, i64 0), %for.cond ], [ getelementptr inbounds ([38 x i8], [38 x i8]* @.str.86, i64 0, i64 0), %for.cond ], [ getelementptr inbounds ([38 x i8], [38 x i8]* @.str.86, i64 0, i64 0), %for.cond ]
  br label %cleanup.182, !dbg !4052

cleanup.182:                                      ; preds = %cleanup.182.loopexit, %entry, %sw.epilog, %err
  %retval.1 = phi i8* [ getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0), %err ], [ null, %sw.epilog ], [ getelementptr inbounds ([39 x i8], [39 x i8]* @.str.87, i64 0, i64 0), %entry ], [ %retval.1.ph, %cleanup.182.loopexit ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !4052
  ret i8* %retval.1, !dbg !4052
}

declare i32 @PyDict_Next(%struct._object*, i64*, %struct._object**, %struct._object**) #3

declare i32 @PyUnicode_CompareWithASCIIString(%struct._object*, i8*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!977, !978}
!llvm.ident = !{!979}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !10, subprograms: !440)
!1 = !DIFile(filename: "Python/getargs.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "PyUnicode_Kind", file: !4, line: 451, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/unicodeobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "PyUnicode_WCHAR_KIND", value: 0)
!7 = !DIEnumerator(name: "PyUnicode_1BYTE_KIND", value: 1)
!8 = !DIEnumerator(name: "PyUnicode_2BYTE_KIND", value: 2)
!9 = !DIEnumerator(name: "PyUnicode_4BYTE_KIND", value: 4)
!10 = !{!11, !12, !350, !351, !359, !101, !18, !360, !24, !367, !84, !348, !368, !369, !370, !378, !388, !406, !414, !431, !432, !434, !436, !438, !242, !51, !36, !439, !59}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !14, line: 109, baseType: !15)
!14 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!15 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !14, line: 105, size: 128, align: 64, elements: !16)
!16 = !{!17, !25}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !15, file: !14, line: 107, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !19, line: 177, baseType: !20)
!19 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !21, line: 102, baseType: !22)
!21 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !23, line: 181, baseType: !24)
!23 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!55 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!102 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!288 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!301 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!353 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!354 = !DICompositeType(tag: DW_TAG_structure_type, file: !353, line: 25, size: 256, align: 64, elements: !355)
!355 = !{!356, !357}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !354, file: !353, line: 26, baseType: !30, size: 192, align: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !354, file: !353, line: 27, baseType: !358, size: 64, align: 64, offset: 192)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 64, align: 64, elements: !89)
!359 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "freelistentry_t", file: !1, line: 46, baseType: !362)
!362 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 43, size: 128, align: 64, elements: !363)
!363 = !{!364, !365}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !362, file: !1, line: 44, baseType: !11, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "destructor", scope: !362, file: !1, line: 45, baseType: !366, size: 64, align: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "destr_t", file: !1, line: 36, baseType: !271)
!367 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!368 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!369 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64, align: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBytesObject", file: !372, line: 41, baseType: !373)
!372 = !DIFile(filename: "Include/bytesobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!373 = !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 31, size: 320, align: 64, elements: !374)
!374 = !{!375, !376, !377}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !373, file: !372, line: 32, baseType: !30, size: 192, align: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "ob_shash", scope: !373, file: !372, line: 33, baseType: !225, size: 64, align: 64, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "ob_sval", scope: !373, file: !372, line: 34, baseType: !88, size: 8, align: 8, offset: 256)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyByteArrayObject", file: !380, line: 30, baseType: !381)
!380 = !DIFile(filename: "Include/bytearrayobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!381 = !DICompositeType(tag: DW_TAG_structure_type, file: !380, line: 23, size: 448, align: 64, elements: !382)
!382 = !{!383, !384, !385, !386, !387}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !381, file: !380, line: 24, baseType: !30, size: 192, align: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "ob_alloc", scope: !381, file: !380, line: 25, baseType: !18, size: 64, align: 64, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ob_bytes", scope: !381, file: !380, line: 26, baseType: !59, size: 64, align: 64, offset: 256)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ob_start", scope: !381, file: !380, line: 27, baseType: !59, size: 64, align: 64, offset: 320)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "ob_exports", scope: !381, file: !380, line: 29, baseType: !51, size: 32, align: 32, offset: 384)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64, align: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyASCIIObject", file: !4, line: 351, baseType: !390)
!390 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 217, size: 384, align: 64, elements: !391)
!391 = !{!392, !393, !394, !395, !403}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !390, file: !4, line: 291, baseType: !13, size: 128, align: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !390, file: !4, line: 292, baseType: !18, size: 64, align: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !390, file: !4, line: 293, baseType: !225, size: 64, align: 64, offset: 192)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !390, file: !4, line: 349, baseType: !396, size: 32, align: 32, offset: 256)
!396 = !DICompositeType(tag: DW_TAG_structure_type, scope: !390, file: !4, line: 294, size: 32, align: 32, elements: !397)
!397 = !{!398, !399, !400, !401, !402}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "interned", scope: !396, file: !4, line: 303, baseType: !348, size: 2, align: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !396, file: !4, line: 331, baseType: !348, size: 3, align: 32, offset: 2)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "compact", scope: !396, file: !4, line: 336, baseType: !348, size: 1, align: 32, offset: 5)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !396, file: !4, line: 340, baseType: !348, size: 1, align: 32, offset: 6)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !396, file: !4, line: 345, baseType: !348, size: 1, align: 32, offset: 7)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "wstr", scope: !390, file: !4, line: 350, baseType: !404, size: 64, align: 64, offset: 320)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64, align: 64)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !102, line: 90, baseType: !51)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64, align: 64)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCompactUnicodeObject", file: !4, line: 363, baseType: !408)
!408 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 356, size: 576, align: 64, elements: !409)
!409 = !{!410, !411, !412, !413}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !408, file: !4, line: 357, baseType: !389, size: 384, align: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_length", scope: !408, file: !4, line: 358, baseType: !18, size: 64, align: 64, offset: 384)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !408, file: !4, line: 360, baseType: !59, size: 64, align: 64, offset: 448)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "wstr_length", scope: !408, file: !4, line: 361, baseType: !18, size: 64, align: 64, offset: 512)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64, align: 64)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyUnicodeObject", file: !4, line: 376, baseType: !416)
!416 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 368, size: 640, align: 64, elements: !417)
!417 = !{!418, !419}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !416, file: !4, line: 369, baseType: !407, size: 576, align: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !416, file: !4, line: 375, baseType: !420, size: 64, align: 64, offset: 576)
!420 = !DICompositeType(tag: DW_TAG_union_type, scope: !416, file: !4, line: 370, size: 64, align: 64, elements: !421)
!421 = !{!422, !423, !426, !429}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "any", scope: !420, file: !4, line: 371, baseType: !11, size: 64, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "latin1", scope: !420, file: !4, line: 372, baseType: !424, size: 64, align: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64, align: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS1", file: !4, line: 134, baseType: !359)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "ucs2", scope: !420, file: !4, line: 373, baseType: !427, size: 64, align: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64, align: 64)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS2", file: !4, line: 129, baseType: !84)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "ucs4", scope: !420, file: !4, line: 374, baseType: !430, size: 64, align: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64, align: 64)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS4", file: !4, line: 121, baseType: !348)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64, align: 64)
!433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64, align: 64)
!435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !428)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64, align: 64)
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!440 = !{!441, !461, !469, !475, !481, !490, !498, !508, !516, !527, !536, !539, !552, !558, !562, !603, !611, !627, !659, !873, !876, !884, !891, !899, !904, !914, !918, !933, !965}
!441 = !DISubprogram(name: "PyArg_Parse", scope: !1, file: !1, line: 73, type: !442, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*, ...)* @PyArg_Parse, variables: !444)
!442 = !DISubroutineType(types: !443)
!443 = !{!51, !12, !36, null}
!444 = !{!445, !446, !447, !448}
!445 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 1, scope: !441, file: !1, line: 73, type: !12)
!446 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 2, scope: !441, file: !1, line: 73, type: !36)
!447 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !441, file: !1, line: 75, type: !51)
!448 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "va", scope: !441, file: !1, line: 76, type: !449)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !21, line: 79, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !451, line: 50, baseType: !452)
!451 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdarg.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 76, baseType: !453)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 192, align: 64, elements: !89)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__va_list_tag", file: !1, line: 76, baseType: !455)
!455 = !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 76, size: 192, align: 64, elements: !456)
!456 = !{!457, !458, !459, !460}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !455, file: !1, line: 76, baseType: !348, size: 32, align: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !455, file: !1, line: 76, baseType: !348, size: 32, align: 32, offset: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !455, file: !1, line: 76, baseType: !11, size: 64, align: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !455, file: !1, line: 76, baseType: !11, size: 64, align: 64, offset: 128)
!461 = !DISubprogram(name: "_PyArg_Parse_SizeT", scope: !1, file: !1, line: 85, type: !462, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*, ...)* @_PyArg_Parse_SizeT, variables: !464)
!462 = !DISubroutineType(types: !463)
!463 = !{!51, !12, !59, null}
!464 = !{!465, !466, !467, !468}
!465 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 1, scope: !461, file: !1, line: 85, type: !12)
!466 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 2, scope: !461, file: !1, line: 85, type: !59)
!467 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !461, file: !1, line: 87, type: !51)
!468 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "va", scope: !461, file: !1, line: 88, type: !449)
!469 = !DISubprogram(name: "PyArg_ParseTuple", scope: !1, file: !1, line: 98, type: !442, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*, ...)* @PyArg_ParseTuple, variables: !470)
!470 = !{!471, !472, !473, !474}
!471 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 1, scope: !469, file: !1, line: 98, type: !12)
!472 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 2, scope: !469, file: !1, line: 98, type: !36)
!473 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !469, file: !1, line: 100, type: !51)
!474 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "va", scope: !469, file: !1, line: 101, type: !449)
!475 = !DISubprogram(name: "_PyArg_ParseTuple_SizeT", scope: !1, file: !1, line: 110, type: !462, isLocal: false, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*, ...)* @_PyArg_ParseTuple_SizeT, variables: !476)
!476 = !{!477, !478, !479, !480}
!477 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 1, scope: !475, file: !1, line: 110, type: !12)
!478 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 2, scope: !475, file: !1, line: 110, type: !59)
!479 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !475, file: !1, line: 112, type: !51)
!480 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "va", scope: !475, file: !1, line: 113, type: !449)
!481 = !DISubprogram(name: "PyArg_VaParse", scope: !1, file: !1, line: 123, type: !482, isLocal: false, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*, %struct.__va_list_tag*)* @PyArg_VaParse, variables: !485)
!482 = !DISubroutineType(types: !483)
!483 = !{!51, !12, !36, !484}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64, align: 64)
!485 = !{!486, !487, !488, !489}
!486 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 1, scope: !481, file: !1, line: 123, type: !12)
!487 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 2, scope: !481, file: !1, line: 123, type: !36)
!488 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "va", arg: 3, scope: !481, file: !1, line: 123, type: !484)
!489 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lva", scope: !481, file: !1, line: 125, type: !449)
!490 = !DISubprogram(name: "_PyArg_VaParse_SizeT", scope: !1, file: !1, line: 133, type: !491, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*, %struct.__va_list_tag*)* @_PyArg_VaParse_SizeT, variables: !493)
!491 = !DISubroutineType(types: !492)
!492 = !{!51, !12, !59, !484}
!493 = !{!494, !495, !496, !497}
!494 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 1, scope: !490, file: !1, line: 133, type: !12)
!495 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 2, scope: !490, file: !1, line: 133, type: !59)
!496 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "va", arg: 3, scope: !490, file: !1, line: 133, type: !484)
!497 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lva", scope: !490, file: !1, line: 135, type: !449)
!498 = !DISubprogram(name: "PyArg_ParseTupleAndKeywords", scope: !1, file: !1, line: 1318, type: !499, isLocal: false, isDefinition: true, scopeLine: 1322, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*, i8*, i8**, ...)* @PyArg_ParseTupleAndKeywords, variables: !501)
!499 = !DISubroutineType(types: !500)
!500 = !{!51, !12, !12, !36, !439, null}
!501 = !{!502, !503, !504, !505, !506, !507}
!502 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 1, scope: !498, file: !1, line: 1318, type: !12)
!503 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "keywords", arg: 2, scope: !498, file: !1, line: 1319, type: !12)
!504 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 3, scope: !498, file: !1, line: 1320, type: !36)
!505 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwlist", arg: 4, scope: !498, file: !1, line: 1321, type: !439)
!506 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !498, file: !1, line: 1323, type: !51)
!507 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "va", scope: !498, file: !1, line: 1324, type: !449)
!508 = !DISubprogram(name: "_PyArg_ParseTupleAndKeywords_SizeT", scope: !1, file: !1, line: 1342, type: !499, isLocal: false, isDefinition: true, scopeLine: 1346, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*, i8*, i8**, ...)* @_PyArg_ParseTupleAndKeywords_SizeT, variables: !509)
!509 = !{!510, !511, !512, !513, !514, !515}
!510 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 1, scope: !508, file: !1, line: 1342, type: !12)
!511 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "keywords", arg: 2, scope: !508, file: !1, line: 1343, type: !12)
!512 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 3, scope: !508, file: !1, line: 1344, type: !36)
!513 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwlist", arg: 4, scope: !508, file: !1, line: 1345, type: !439)
!514 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !508, file: !1, line: 1347, type: !51)
!515 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "va", scope: !508, file: !1, line: 1348, type: !449)
!516 = !DISubprogram(name: "PyArg_VaParseTupleAndKeywords", scope: !1, file: !1, line: 1368, type: !517, isLocal: false, isDefinition: true, scopeLine: 1372, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*, i8*, i8**, %struct.__va_list_tag*)* @PyArg_VaParseTupleAndKeywords, variables: !519)
!517 = !DISubroutineType(types: !518)
!518 = !{!51, !12, !12, !36, !439, !484}
!519 = !{!520, !521, !522, !523, !524, !525, !526}
!520 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 1, scope: !516, file: !1, line: 1368, type: !12)
!521 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "keywords", arg: 2, scope: !516, file: !1, line: 1369, type: !12)
!522 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 3, scope: !516, file: !1, line: 1370, type: !36)
!523 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwlist", arg: 4, scope: !516, file: !1, line: 1371, type: !439)
!524 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "va", arg: 5, scope: !516, file: !1, line: 1371, type: !484)
!525 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !516, file: !1, line: 1373, type: !51)
!526 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lva", scope: !516, file: !1, line: 1374, type: !449)
!527 = !DISubprogram(name: "_PyArg_VaParseTupleAndKeywords_SizeT", scope: !1, file: !1, line: 1392, type: !517, isLocal: false, isDefinition: true, scopeLine: 1396, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*, i8*, i8**, %struct.__va_list_tag*)* @_PyArg_VaParseTupleAndKeywords_SizeT, variables: !528)
!528 = !{!529, !530, !531, !532, !533, !534, !535}
!529 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 1, scope: !527, file: !1, line: 1392, type: !12)
!530 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "keywords", arg: 2, scope: !527, file: !1, line: 1393, type: !12)
!531 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 3, scope: !527, file: !1, line: 1394, type: !36)
!532 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwlist", arg: 4, scope: !527, file: !1, line: 1395, type: !439)
!533 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "va", arg: 5, scope: !527, file: !1, line: 1395, type: !484)
!534 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !527, file: !1, line: 1397, type: !51)
!535 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lva", scope: !527, file: !1, line: 1398, type: !449)
!536 = !DISubprogram(name: "PyArg_ValidateKeywordArguments", scope: !1, file: !1, line: 1417, type: !151, isLocal: false, isDefinition: true, scopeLine: 1418, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @PyArg_ValidateKeywordArguments, variables: !537)
!537 = !{!538}
!538 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 1, scope: !536, file: !1, line: 1417, type: !12)
!539 = !DISubprogram(name: "PyArg_UnpackTuple", scope: !1, file: !1, line: 1754, type: !540, isLocal: false, isDefinition: true, scopeLine: 1755, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*, i64, i64, ...)* @PyArg_UnpackTuple, variables: !542)
!540 = !DISubroutineType(types: !541)
!541 = !{!51, !12, !36, !18, !18, null}
!542 = !{!543, !544, !545, !546, !547, !548, !549, !551}
!543 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 1, scope: !539, file: !1, line: 1754, type: !12)
!544 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !539, file: !1, line: 1754, type: !36)
!545 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "min", arg: 3, scope: !539, file: !1, line: 1754, type: !18)
!546 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "max", arg: 4, scope: !539, file: !1, line: 1754, type: !18)
!547 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !539, file: !1, line: 1756, type: !18)
!548 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !539, file: !1, line: 1756, type: !18)
!549 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "o", scope: !539, file: !1, line: 1757, type: !550)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!551 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vargs", scope: !539, file: !1, line: 1758, type: !449)
!552 = !DISubprogram(name: "_PyArg_NoKeywords", scope: !1, file: !1, line: 1820, type: !553, isLocal: false, isDefinition: true, scopeLine: 1821, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*)* @_PyArg_NoKeywords, variables: !555)
!553 = !DISubroutineType(types: !554)
!554 = !{!51, !36, !12}
!555 = !{!556, !557}
!556 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "funcname", arg: 1, scope: !552, file: !1, line: 1820, type: !36)
!557 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 2, scope: !552, file: !1, line: 1820, type: !12)
!558 = !DISubprogram(name: "_PyArg_NoPositional", scope: !1, file: !1, line: 1838, type: !553, isLocal: false, isDefinition: true, scopeLine: 1839, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*)* @_PyArg_NoPositional, variables: !559)
!559 = !{!560, !561}
!560 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "funcname", arg: 1, scope: !558, file: !1, line: 1838, type: !36)
!561 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !558, file: !1, line: 1838, type: !12)
!562 = !DISubprogram(name: "vgetargs1", scope: !1, file: !1, line: 199, type: !563, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*, [1 x %struct.__va_list_tag]*, i32)* @vgetargs1, variables: !566)
!563 = !DISubroutineType(types: !564)
!564 = !{!51, !12, !36, !565, !51}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64, align: 64)
!566 = !{!567, !568, !569, !570, !571, !575, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !594, !601}
!567 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 1, scope: !562, file: !1, line: 199, type: !12)
!568 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 2, scope: !562, file: !1, line: 199, type: !36)
!569 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_va", arg: 3, scope: !562, file: !1, line: 199, type: !565)
!570 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 4, scope: !562, file: !1, line: 199, type: !51)
!571 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msgbuf", scope: !562, file: !1, line: 201, type: !572)
!572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 2048, align: 8, elements: !573)
!573 = !{!574}
!574 = !DISubrange(count: 256)
!575 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "levels", scope: !562, file: !1, line: 202, type: !576)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 1024, align: 32, elements: !577)
!577 = !{!578}
!578 = !DISubrange(count: 32)
!579 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fname", scope: !562, file: !1, line: 203, type: !36)
!580 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "message", scope: !562, file: !1, line: 204, type: !36)
!581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "min", scope: !562, file: !1, line: 205, type: !51)
!582 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "max", scope: !562, file: !1, line: 206, type: !51)
!583 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "level", scope: !562, file: !1, line: 207, type: !51)
!584 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "endfmt", scope: !562, file: !1, line: 208, type: !51)
!585 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "formatsave", scope: !562, file: !1, line: 209, type: !36)
!586 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !562, file: !1, line: 210, type: !18)
!587 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !562, file: !1, line: 210, type: !18)
!588 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msg", scope: !562, file: !1, line: 211, type: !59)
!589 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "compat", scope: !562, file: !1, line: 212, type: !51)
!590 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "static_entries", scope: !562, file: !1, line: 213, type: !591)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 1024, align: 64, elements: !592)
!592 = !{!593}
!593 = !DISubrange(count: 8)
!594 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "freelist", scope: !562, file: !1, line: 214, type: !595)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "freelist_t", file: !1, line: 52, baseType: !596)
!596 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 48, size: 128, align: 64, elements: !597)
!597 = !{!598, !599, !600}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !596, file: !1, line: 49, baseType: !360, size: 64, align: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "first_available", scope: !596, file: !1, line: 50, baseType: !51, size: 32, align: 32, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "entries_malloced", scope: !596, file: !1, line: 51, baseType: !51, size: 32, align: 32, offset: 96)
!601 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !602, file: !1, line: 224, type: !51)
!602 = distinct !DILexicalBlock(scope: !562, file: !1, line: 223, column: 25)
!603 = !DISubprogram(name: "cleanreturn", scope: !1, file: !1, line: 179, type: !604, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, variables: !607)
!604 = !DISubroutineType(types: !605)
!605 = !{!51, !51, !606}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64, align: 64)
!607 = !{!608, !609, !610}
!608 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "retval", arg: 1, scope: !603, file: !1, line: 179, type: !51)
!609 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "freelist", arg: 2, scope: !603, file: !1, line: 179, type: !606)
!610 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !603, file: !1, line: 181, type: !51)
!611 = !DISubprogram(name: "convertitem", scope: !1, file: !1, line: 505, type: !612, isLocal: true, isDefinition: true, scopeLine: 507, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct._object*, i8**, [1 x %struct.__va_list_tag]*, i32, i32*, i8*, i64, %struct.freelist_t*)* @convertitem, variables: !616)
!612 = !DISubroutineType(types: !613)
!613 = !{!59, !12, !614, !565, !51, !615, !59, !101, !606}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!616 = !{!617, !618, !619, !620, !621, !622, !623, !624, !625, !626}
!617 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 1, scope: !611, file: !1, line: 505, type: !12)
!618 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_format", arg: 2, scope: !611, file: !1, line: 505, type: !614)
!619 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_va", arg: 3, scope: !611, file: !1, line: 505, type: !565)
!620 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 4, scope: !611, file: !1, line: 505, type: !51)
!621 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "levels", arg: 5, scope: !611, file: !1, line: 506, type: !615)
!622 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msgbuf", arg: 6, scope: !611, file: !1, line: 506, type: !59)
!623 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bufsize", arg: 7, scope: !611, file: !1, line: 506, type: !101)
!624 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "freelist", arg: 8, scope: !611, file: !1, line: 506, type: !606)
!625 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msg", scope: !611, file: !1, line: 508, type: !59)
!626 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "format", scope: !611, file: !1, line: 509, type: !36)
!627 = !DISubprogram(name: "converttuple", scope: !1, file: !1, line: 420, type: !628, isLocal: true, isDefinition: true, scopeLine: 423, flags: DIFlagPrototyped, isOptimized: true, variables: !630)
!628 = !DISubroutineType(types: !629)
!629 = !{!59, !12, !614, !565, !51, !615, !59, !101, !51, !606}
!630 = !{!631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !649, !653, !654, !656}
!631 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 1, scope: !627, file: !1, line: 420, type: !12)
!632 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_format", arg: 2, scope: !627, file: !1, line: 420, type: !614)
!633 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_va", arg: 3, scope: !627, file: !1, line: 420, type: !565)
!634 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 4, scope: !627, file: !1, line: 420, type: !51)
!635 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "levels", arg: 5, scope: !627, file: !1, line: 421, type: !615)
!636 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msgbuf", arg: 6, scope: !627, file: !1, line: 421, type: !59)
!637 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bufsize", arg: 7, scope: !627, file: !1, line: 421, type: !101)
!638 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "toplevel", arg: 8, scope: !627, file: !1, line: 421, type: !51)
!639 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "freelist", arg: 9, scope: !627, file: !1, line: 422, type: !606)
!640 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "level", scope: !627, file: !1, line: 424, type: !51)
!641 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !627, file: !1, line: 425, type: !51)
!642 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "format", scope: !627, file: !1, line: 426, type: !36)
!643 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !627, file: !1, line: 427, type: !51)
!644 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !627, file: !1, line: 428, type: !18)
!645 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !646, file: !1, line: 431, type: !51)
!646 = distinct !DILexicalBlock(scope: !647, file: !1, line: 430, column: 14)
!647 = distinct !DILexicalBlock(scope: !648, file: !1, line: 430, column: 5)
!648 = distinct !DILexicalBlock(scope: !627, file: !1, line: 430, column: 5)
!649 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msg", scope: !650, file: !1, line: 477, type: !59)
!650 = distinct !DILexicalBlock(scope: !651, file: !1, line: 476, column: 29)
!651 = distinct !DILexicalBlock(scope: !652, file: !1, line: 476, column: 5)
!652 = distinct !DILexicalBlock(scope: !627, file: !1, line: 476, column: 5)
!653 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !650, file: !1, line: 478, type: !12)
!654 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !655, file: !1, line: 490, type: !12)
!655 = distinct !DILexicalBlock(scope: !650, file: !1, line: 490, column: 9)
!656 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !657, file: !1, line: 490, type: !12)
!657 = distinct !DILexicalBlock(scope: !658, file: !1, line: 490, column: 9)
!658 = distinct !DILexicalBlock(scope: !655, file: !1, line: 490, column: 9)
!659 = !DISubprogram(name: "convertsimple", scope: !1, file: !1, line: 570, type: !660, isLocal: true, isDefinition: true, scopeLine: 572, flags: DIFlagPrototyped, isOptimized: true, variables: !662)
!660 = !DISubroutineType(types: !661)
!661 = !{!59, !12, !614, !565, !51, !59, !101, !606}
!662 = !{!663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !676, !677, !679, !680, !683, !684, !687, !688, !690, !691, !694, !695, !697, !698, !699, !703, !706, !707, !710, !711, !714, !715, !719, !720, !723, !725, !728, !729, !738, !739, !741, !743, !744, !745, !747, !748, !750, !751, !752, !755, !756, !760, !764, !766, !769, !770, !771, !775, !777, !778, !780, !781, !786, !789, !790, !794, !799, !801, !802, !803, !804, !805, !806, !809, !811, !815, !818, !819, !823, !829, !833, !838, !843, !847, !851, !853, !855, !857, !859, !863, !864, !869, !870, !871}
!663 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 1, scope: !659, file: !1, line: 570, type: !12)
!664 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_format", arg: 2, scope: !659, file: !1, line: 570, type: !614)
!665 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_va", arg: 3, scope: !659, file: !1, line: 570, type: !565)
!666 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 4, scope: !659, file: !1, line: 570, type: !51)
!667 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msgbuf", arg: 5, scope: !659, file: !1, line: 571, type: !59)
!668 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bufsize", arg: 6, scope: !659, file: !1, line: 571, type: !101)
!669 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "freelist", arg: 7, scope: !659, file: !1, line: 571, type: !606)
!670 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "format", scope: !659, file: !1, line: 591, type: !36)
!671 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !659, file: !1, line: 592, type: !38)
!672 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sarg", scope: !659, file: !1, line: 593, type: !59)
!673 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !674, file: !1, line: 598, type: !59)
!674 = distinct !DILexicalBlock(scope: !675, file: !1, line: 597, column: 15)
!675 = distinct !DILexicalBlock(scope: !659, file: !1, line: 595, column: 16)
!676 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ival", scope: !674, file: !1, line: 599, type: !24)
!677 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !678, file: !1, line: 622, type: !59)
!678 = distinct !DILexicalBlock(scope: !675, file: !1, line: 620, column: 15)
!679 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ival", scope: !678, file: !1, line: 623, type: !24)
!680 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !681, file: !1, line: 635, type: !682)
!681 = distinct !DILexicalBlock(scope: !675, file: !1, line: 634, column: 15)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64, align: 64)
!683 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ival", scope: !681, file: !1, line: 636, type: !24)
!684 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !685, file: !1, line: 659, type: !686)
!685 = distinct !DILexicalBlock(scope: !675, file: !1, line: 657, column: 15)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!687 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ival", scope: !685, file: !1, line: 660, type: !24)
!688 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !689, file: !1, line: 672, type: !615)
!689 = distinct !DILexicalBlock(scope: !675, file: !1, line: 671, column: 15)
!690 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ival", scope: !689, file: !1, line: 673, type: !24)
!691 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !692, file: !1, line: 696, type: !693)
!692 = distinct !DILexicalBlock(scope: !675, file: !1, line: 694, column: 15)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!694 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ival", scope: !692, file: !1, line: 697, type: !348)
!695 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iobj", scope: !696, file: !1, line: 710, type: !12)
!696 = distinct !DILexicalBlock(scope: !675, file: !1, line: 709, column: 5)
!697 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !696, file: !1, line: 711, type: !254)
!698 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ival", scope: !696, file: !1, line: 712, type: !18)
!699 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !700, file: !1, line: 718, type: !12)
!700 = distinct !DILexicalBlock(scope: !701, file: !1, line: 718, column: 13)
!701 = distinct !DILexicalBlock(scope: !702, file: !1, line: 716, column: 27)
!702 = distinct !DILexicalBlock(scope: !696, file: !1, line: 716, column: 13)
!703 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !704, file: !1, line: 726, type: !705)
!704 = distinct !DILexicalBlock(scope: !675, file: !1, line: 725, column: 15)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!706 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ival", scope: !704, file: !1, line: 727, type: !24)
!707 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !708, file: !1, line: 739, type: !709)
!708 = distinct !DILexicalBlock(scope: !675, file: !1, line: 738, column: 15)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!710 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ival", scope: !708, file: !1, line: 740, type: !103)
!711 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !712, file: !1, line: 751, type: !713)
!712 = distinct !DILexicalBlock(scope: !675, file: !1, line: 750, column: 15)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64, align: 64)
!714 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ival", scope: !712, file: !1, line: 752, type: !368)
!715 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !716, file: !1, line: 764, type: !717)
!716 = distinct !DILexicalBlock(scope: !675, file: !1, line: 763, column: 15)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64, align: 64)
!718 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!719 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ival", scope: !716, file: !1, line: 765, type: !718)
!720 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !721, file: !1, line: 776, type: !722)
!721 = distinct !DILexicalBlock(scope: !675, file: !1, line: 775, column: 15)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!723 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dval", scope: !721, file: !1, line: 777, type: !724)
!724 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!725 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !726, file: !1, line: 786, type: !727)
!726 = distinct !DILexicalBlock(scope: !675, file: !1, line: 785, column: 15)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64, align: 64)
!728 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dval", scope: !726, file: !1, line: 787, type: !724)
!729 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !730, file: !1, line: 796, type: !731)
!730 = distinct !DILexicalBlock(scope: !675, file: !1, line: 795, column: 15)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64, align: 64)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_complex", file: !733, line: 13, baseType: !734)
!733 = !DIFile(filename: "Include/complexobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!734 = !DICompositeType(tag: DW_TAG_structure_type, file: !733, line: 10, size: 128, align: 64, elements: !735)
!735 = !{!736, !737}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !734, file: !733, line: 11, baseType: !724, size: 64, align: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !734, file: !733, line: 12, baseType: !724, size: 64, align: 64, offset: 64)
!738 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cval", scope: !730, file: !1, line: 797, type: !732)
!739 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !740, file: !1, line: 807, type: !59)
!740 = distinct !DILexicalBlock(scope: !675, file: !1, line: 806, column: 15)
!741 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !742, file: !1, line: 818, type: !615)
!742 = distinct !DILexicalBlock(scope: !675, file: !1, line: 817, column: 15)
!743 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kind", scope: !742, file: !1, line: 819, type: !51)
!744 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !742, file: !1, line: 820, type: !11)
!745 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !746, file: !1, line: 838, type: !615)
!746 = distinct !DILexicalBlock(scope: !675, file: !1, line: 837, column: 15)
!747 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !746, file: !1, line: 839, type: !51)
!748 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !749, file: !1, line: 853, type: !438)
!749 = distinct !DILexicalBlock(scope: !675, file: !1, line: 852, column: 15)
!750 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !749, file: !1, line: 854, type: !59)
!751 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !749, file: !1, line: 855, type: !18)
!752 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "q", scope: !753, file: !1, line: 871, type: !615)
!753 = distinct !DILexicalBlock(scope: !754, file: !1, line: 870, column: 29)
!754 = distinct !DILexicalBlock(scope: !749, file: !1, line: 870, column: 13)
!755 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "q2", scope: !753, file: !1, line: 871, type: !254)
!756 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !757, file: !1, line: 888, type: !242)
!757 = distinct !DILexicalBlock(scope: !758, file: !1, line: 886, column: 29)
!758 = distinct !DILexicalBlock(scope: !759, file: !1, line: 886, column: 13)
!759 = distinct !DILexicalBlock(scope: !675, file: !1, line: 885, column: 5)
!760 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !761, file: !1, line: 893, type: !18)
!761 = distinct !DILexicalBlock(scope: !762, file: !1, line: 892, column: 44)
!762 = distinct !DILexicalBlock(scope: !763, file: !1, line: 892, column: 22)
!763 = distinct !DILexicalBlock(scope: !757, file: !1, line: 890, column: 17)
!764 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !765, file: !1, line: 901, type: !59)
!765 = distinct !DILexicalBlock(scope: !762, file: !1, line: 900, column: 18)
!766 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !767, file: !1, line: 913, type: !438)
!767 = distinct !DILexicalBlock(scope: !768, file: !1, line: 911, column: 36)
!768 = distinct !DILexicalBlock(scope: !758, file: !1, line: 911, column: 20)
!769 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "q", scope: !767, file: !1, line: 914, type: !615)
!770 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "q2", scope: !767, file: !1, line: 914, type: !254)
!771 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !772, file: !1, line: 921, type: !18)
!772 = distinct !DILexicalBlock(scope: !773, file: !1, line: 920, column: 44)
!773 = distinct !DILexicalBlock(scope: !774, file: !1, line: 920, column: 22)
!774 = distinct !DILexicalBlock(scope: !767, file: !1, line: 916, column: 17)
!775 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !776, file: !1, line: 931, type: !59)
!776 = distinct !DILexicalBlock(scope: !773, file: !1, line: 929, column: 18)
!777 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !776, file: !1, line: 932, type: !18)
!778 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !779, file: !1, line: 940, type: !439)
!779 = distinct !DILexicalBlock(scope: !768, file: !1, line: 938, column: 16)
!780 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !779, file: !1, line: 941, type: !18)
!781 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !782, file: !1, line: 968, type: !783)
!782 = distinct !DILexicalBlock(scope: !675, file: !1, line: 967, column: 5)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64, align: 64)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64, align: 64)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UNICODE", file: !4, line: 93, baseType: !405)
!786 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "q", scope: !787, file: !1, line: 972, type: !615)
!787 = distinct !DILexicalBlock(scope: !788, file: !1, line: 970, column: 29)
!788 = distinct !DILexicalBlock(scope: !782, file: !1, line: 970, column: 13)
!789 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "q2", scope: !787, file: !1, line: 972, type: !254)
!790 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !791, file: !1, line: 979, type: !18)
!791 = distinct !DILexicalBlock(scope: !792, file: !1, line: 978, column: 44)
!792 = distinct !DILexicalBlock(scope: !793, file: !1, line: 978, column: 22)
!793 = distinct !DILexicalBlock(scope: !787, file: !1, line: 974, column: 17)
!794 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !795, file: !1, line: 993, type: !18)
!795 = distinct !DILexicalBlock(scope: !796, file: !1, line: 992, column: 44)
!796 = distinct !DILexicalBlock(scope: !797, file: !1, line: 992, column: 22)
!797 = distinct !DILexicalBlock(scope: !798, file: !1, line: 990, column: 17)
!798 = distinct !DILexicalBlock(scope: !788, file: !1, line: 988, column: 16)
!799 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffer", scope: !800, file: !1, line: 1009, type: !439)
!800 = distinct !DILexicalBlock(scope: !675, file: !1, line: 1008, column: 15)
!801 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "encoding", scope: !800, file: !1, line: 1010, type: !36)
!802 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !800, file: !1, line: 1011, type: !12)
!803 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "recode_strings", scope: !800, file: !1, line: 1012, type: !51)
!804 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !800, file: !1, line: 1013, type: !18)
!805 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !800, file: !1, line: 1014, type: !36)
!806 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "u", scope: !807, file: !1, line: 1049, type: !12)
!807 = distinct !DILexicalBlock(scope: !808, file: !1, line: 1048, column: 14)
!808 = distinct !DILexicalBlock(scope: !800, file: !1, line: 1040, column: 13)
!809 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !810, file: !1, line: 1062, type: !12)
!810 = distinct !DILexicalBlock(scope: !807, file: !1, line: 1062, column: 13)
!811 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !812, file: !1, line: 1067, type: !12)
!812 = distinct !DILexicalBlock(scope: !813, file: !1, line: 1067, column: 17)
!813 = distinct !DILexicalBlock(scope: !814, file: !1, line: 1066, column: 36)
!814 = distinct !DILexicalBlock(scope: !807, file: !1, line: 1066, column: 17)
!815 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "q", scope: !816, file: !1, line: 1101, type: !615)
!816 = distinct !DILexicalBlock(scope: !817, file: !1, line: 1079, column: 29)
!817 = distinct !DILexicalBlock(scope: !800, file: !1, line: 1079, column: 13)
!818 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "q2", scope: !816, file: !1, line: 1101, type: !254)
!819 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !820, file: !1, line: 1105, type: !12)
!820 = distinct !DILexicalBlock(scope: !821, file: !1, line: 1105, column: 17)
!821 = distinct !DILexicalBlock(scope: !822, file: !1, line: 1104, column: 42)
!822 = distinct !DILexicalBlock(scope: !816, file: !1, line: 1104, column: 17)
!823 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !824, file: !1, line: 1113, type: !12)
!824 = distinct !DILexicalBlock(scope: !825, file: !1, line: 1113, column: 21)
!825 = distinct !DILexicalBlock(scope: !826, file: !1, line: 1112, column: 38)
!826 = distinct !DILexicalBlock(scope: !827, file: !1, line: 1112, column: 21)
!827 = distinct !DILexicalBlock(scope: !828, file: !1, line: 1110, column: 34)
!828 = distinct !DILexicalBlock(scope: !816, file: !1, line: 1110, column: 17)
!829 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !830, file: !1, line: 1118, type: !12)
!830 = distinct !DILexicalBlock(scope: !831, file: !1, line: 1118, column: 21)
!831 = distinct !DILexicalBlock(scope: !832, file: !1, line: 1117, column: 65)
!832 = distinct !DILexicalBlock(scope: !827, file: !1, line: 1117, column: 21)
!833 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !834, file: !1, line: 1125, type: !12)
!834 = distinct !DILexicalBlock(scope: !835, file: !1, line: 1125, column: 21)
!835 = distinct !DILexicalBlock(scope: !836, file: !1, line: 1124, column: 44)
!836 = distinct !DILexicalBlock(scope: !837, file: !1, line: 1124, column: 21)
!837 = distinct !DILexicalBlock(scope: !828, file: !1, line: 1123, column: 20)
!838 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !839, file: !1, line: 1148, type: !12)
!839 = distinct !DILexicalBlock(scope: !840, file: !1, line: 1148, column: 17)
!840 = distinct !DILexicalBlock(scope: !841, file: !1, line: 1147, column: 50)
!841 = distinct !DILexicalBlock(scope: !842, file: !1, line: 1147, column: 17)
!842 = distinct !DILexicalBlock(scope: !817, file: !1, line: 1133, column: 16)
!843 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !844, file: !1, line: 1155, type: !12)
!844 = distinct !DILexicalBlock(scope: !845, file: !1, line: 1155, column: 17)
!845 = distinct !DILexicalBlock(scope: !846, file: !1, line: 1154, column: 34)
!846 = distinct !DILexicalBlock(scope: !842, file: !1, line: 1154, column: 17)
!847 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !848, file: !1, line: 1160, type: !12)
!848 = distinct !DILexicalBlock(scope: !849, file: !1, line: 1160, column: 17)
!849 = distinct !DILexicalBlock(scope: !850, file: !1, line: 1159, column: 61)
!850 = distinct !DILexicalBlock(scope: !842, file: !1, line: 1159, column: 17)
!851 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !852, file: !1, line: 1166, type: !12)
!852 = distinct !DILexicalBlock(scope: !800, file: !1, line: 1166, column: 9)
!853 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !854, file: !1, line: 1171, type: !550)
!854 = distinct !DILexicalBlock(scope: !675, file: !1, line: 1170, column: 15)
!855 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !856, file: !1, line: 1180, type: !550)
!856 = distinct !DILexicalBlock(scope: !675, file: !1, line: 1179, column: 15)
!857 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !858, file: !1, line: 1189, type: !550)
!858 = distinct !DILexicalBlock(scope: !675, file: !1, line: 1188, column: 15)
!859 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !860, file: !1, line: 1201, type: !861)
!860 = distinct !DILexicalBlock(scope: !675, file: !1, line: 1200, column: 15)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64, align: 64)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !14, line: 422, baseType: !27)
!863 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !860, file: !1, line: 1202, type: !550)
!864 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "convert", scope: !865, file: !1, line: 1215, type: !868)
!865 = distinct !DILexicalBlock(scope: !866, file: !1, line: 1213, column: 34)
!866 = distinct !DILexicalBlock(scope: !867, file: !1, line: 1213, column: 18)
!867 = distinct !DILexicalBlock(scope: !860, file: !1, line: 1203, column: 13)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "converter", scope: !659, file: !1, line: 1214, baseType: !271)
!869 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "addr", scope: !865, file: !1, line: 1216, type: !11)
!870 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !865, file: !1, line: 1217, type: !51)
!871 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !872, file: !1, line: 1236, type: !438)
!872 = distinct !DILexicalBlock(scope: !675, file: !1, line: 1235, column: 15)
!873 = !DISubprogram(name: "float_argument_error", scope: !1, file: !1, line: 549, type: !151, isLocal: true, isDefinition: true, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: true, variables: !874)
!874 = !{!875}
!875 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 1, scope: !873, file: !1, line: 549, type: !12)
!876 = !DISubprogram(name: "converterr", scope: !1, file: !1, line: 534, type: !877, isLocal: true, isDefinition: true, scopeLine: 535, flags: DIFlagPrototyped, isOptimized: true, variables: !879)
!877 = !DISubroutineType(types: !878)
!878 = !{!59, !36, !12, !59, !101}
!879 = !{!880, !881, !882, !883}
!880 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "expected", arg: 1, scope: !876, file: !1, line: 534, type: !36)
!881 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !876, file: !1, line: 534, type: !12)
!882 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msgbuf", arg: 3, scope: !876, file: !1, line: 534, type: !59)
!883 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bufsize", arg: 4, scope: !876, file: !1, line: 534, type: !101)
!884 = !DISubprogram(name: "getbuffer", scope: !1, file: !1, line: 1299, type: !885, isLocal: true, isDefinition: true, scopeLine: 1300, flags: DIFlagPrototyped, isOptimized: true, variables: !887)
!885 = !DISubroutineType(types: !886)
!886 = !{!51, !12, !242, !439}
!887 = !{!888, !889, !890}
!888 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 1, scope: !884, file: !1, line: 1299, type: !12)
!889 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "view", arg: 2, scope: !884, file: !1, line: 1299, type: !242)
!890 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errmsg", arg: 3, scope: !884, file: !1, line: 1299, type: !439)
!891 = !DISubprogram(name: "addcleanup", scope: !1, file: !1, line: 165, type: !892, isLocal: true, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: true, variables: !894)
!892 = !DISubroutineType(types: !893)
!893 = !{!51, !11, !606, !366}
!894 = !{!895, !896, !897, !898}
!895 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !891, file: !1, line: 165, type: !11)
!896 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "freelist", arg: 2, scope: !891, file: !1, line: 165, type: !606)
!897 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "destructor", arg: 3, scope: !891, file: !1, line: 165, type: !366)
!898 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !891, file: !1, line: 167, type: !51)
!899 = !DISubprogram(name: "cleanup_buffer", scope: !1, file: !1, line: 155, type: !272, isLocal: true, isDefinition: true, scopeLine: 156, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*)* @cleanup_buffer, variables: !900)
!900 = !{!901, !902, !903}
!901 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !899, file: !1, line: 155, type: !12)
!902 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 2, scope: !899, file: !1, line: 155, type: !11)
!903 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !899, file: !1, line: 157, type: !242)
!904 = !DISubprogram(name: "convertbuffer", scope: !1, file: !1, line: 1277, type: !905, isLocal: true, isDefinition: true, scopeLine: 1278, flags: DIFlagPrototyped, isOptimized: true, variables: !907)
!905 = !DISubroutineType(types: !906)
!906 = !{!18, !12, !438, !439}
!907 = !{!908, !909, !910, !911, !912, !913}
!908 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 1, scope: !904, file: !1, line: 1277, type: !12)
!909 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 2, scope: !904, file: !1, line: 1277, type: !438)
!910 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errmsg", arg: 3, scope: !904, file: !1, line: 1277, type: !439)
!911 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pb", scope: !904, file: !1, line: 1279, type: !233)
!912 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !904, file: !1, line: 1280, type: !18)
!913 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "view", scope: !904, file: !1, line: 1281, type: !243)
!914 = !DISubprogram(name: "cleanup_ptr", scope: !1, file: !1, line: 146, type: !272, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*)* @cleanup_ptr, variables: !915)
!915 = !{!916, !917}
!916 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !914, file: !1, line: 146, type: !12)
!917 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 2, scope: !914, file: !1, line: 146, type: !11)
!918 = !DISubprogram(name: "seterror", scope: !1, file: !1, line: 364, type: !919, isLocal: true, isDefinition: true, scopeLine: 366, flags: DIFlagPrototyped, isOptimized: true, function: void (i64, i8*, i32*, i8*, i8*)* @seterror, variables: !921)
!919 = !DISubroutineType(types: !920)
!920 = !{null, !18, !36, !615, !36, !36}
!921 = !{!922, !923, !924, !925, !926, !927, !931, !932}
!922 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iarg", arg: 1, scope: !918, file: !1, line: 364, type: !18)
!923 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msg", arg: 2, scope: !918, file: !1, line: 364, type: !36)
!924 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "levels", arg: 3, scope: !918, file: !1, line: 364, type: !615)
!925 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fname", arg: 4, scope: !918, file: !1, line: 364, type: !36)
!926 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "message", arg: 5, scope: !918, file: !1, line: 365, type: !36)
!927 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !918, file: !1, line: 367, type: !928)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 4096, align: 8, elements: !929)
!929 = !{!930}
!930 = !DISubrange(count: 512)
!931 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !918, file: !1, line: 368, type: !51)
!932 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !918, file: !1, line: 369, type: !59)
!933 = !DISubprogram(name: "vgetargskeywords", scope: !1, file: !1, line: 1434, type: !934, isLocal: true, isDefinition: true, scopeLine: 1436, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*, i8*, i8**, [1 x %struct.__va_list_tag]*, i32)* @vgetargskeywords, variables: !936)
!934 = !DISubroutineType(types: !935)
!935 = !{!51, !12, !12, !36, !439, !565, !51}
!936 = !{!937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !961, !962, !963}
!937 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 1, scope: !933, file: !1, line: 1434, type: !12)
!938 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "keywords", arg: 2, scope: !933, file: !1, line: 1434, type: !12)
!939 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 3, scope: !933, file: !1, line: 1434, type: !36)
!940 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwlist", arg: 4, scope: !933, file: !1, line: 1435, type: !439)
!941 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_va", arg: 5, scope: !933, file: !1, line: 1435, type: !565)
!942 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 6, scope: !933, file: !1, line: 1435, type: !51)
!943 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msgbuf", scope: !933, file: !1, line: 1437, type: !928)
!944 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "levels", scope: !933, file: !1, line: 1438, type: !576)
!945 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fname", scope: !933, file: !1, line: 1439, type: !36)
!946 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msg", scope: !933, file: !1, line: 1439, type: !36)
!947 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "custom_msg", scope: !933, file: !1, line: 1439, type: !36)
!948 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "keyword", scope: !933, file: !1, line: 1439, type: !36)
!949 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "min", scope: !933, file: !1, line: 1440, type: !51)
!950 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "max", scope: !933, file: !1, line: 1441, type: !51)
!951 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !933, file: !1, line: 1442, type: !51)
!952 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !933, file: !1, line: 1442, type: !51)
!953 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nargs", scope: !933, file: !1, line: 1443, type: !18)
!954 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nkeywords", scope: !933, file: !1, line: 1443, type: !18)
!955 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "current_arg", scope: !933, file: !1, line: 1444, type: !12)
!956 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "static_entries", scope: !933, file: !1, line: 1445, type: !591)
!957 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "freelist", scope: !933, file: !1, line: 1446, type: !595)
!958 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key", scope: !959, file: !1, line: 1602, type: !12)
!959 = distinct !DILexicalBlock(scope: !960, file: !1, line: 1601, column: 24)
!960 = distinct !DILexicalBlock(scope: !933, file: !1, line: 1601, column: 9)
!961 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !959, file: !1, line: 1602, type: !12)
!962 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !959, file: !1, line: 1603, type: !18)
!963 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "match", scope: !964, file: !1, line: 1605, type: !51)
!964 = distinct !DILexicalBlock(scope: !959, file: !1, line: 1604, column: 59)
!965 = !DISubprogram(name: "skipitem", scope: !1, file: !1, line: 1632, type: !966, isLocal: true, isDefinition: true, scopeLine: 1633, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8**, [1 x %struct.__va_list_tag]*, i32)* @skipitem, variables: !968)
!966 = !DISubroutineType(types: !967)
!967 = !{!59, !614, !565, !51}
!968 = !{!969, !970, !971, !972, !973, !974}
!969 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_format", arg: 1, scope: !965, file: !1, line: 1632, type: !614)
!970 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_va", arg: 2, scope: !965, file: !1, line: 1632, type: !565)
!971 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 3, scope: !965, file: !1, line: 1632, type: !51)
!972 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "format", scope: !965, file: !1, line: 1634, type: !36)
!973 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !965, file: !1, line: 1635, type: !38)
!974 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msg", scope: !975, file: !1, line: 1724, type: !59)
!975 = distinct !DILexicalBlock(scope: !976, file: !1, line: 1723, column: 9)
!976 = distinct !DILexicalBlock(scope: !965, file: !1, line: 1637, column: 16)
!977 = !{i32 2, !"Dwarf Version", i32 4}
!978 = !{i32 2, !"Debug Info Version", i32 3}
!979 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!980 = !DIExpression()
!981 = !DILocation(line: 73, column: 23, scope: !441)
!982 = !DILocation(line: 73, column: 41, scope: !441)
!983 = !DILocation(line: 76, column: 5, scope: !441)
!984 = !DILocation(line: 76, column: 13, scope: !441)
!985 = !DILocation(line: 78, column: 5, scope: !441)
!986 = !DILocation(line: 79, column: 14, scope: !441)
!987 = !DILocation(line: 75, column: 9, scope: !441)
!988 = !DILocation(line: 80, column: 5, scope: !441)
!989 = !DILocation(line: 82, column: 1, scope: !441)
!990 = !DILocation(line: 81, column: 5, scope: !441)
!991 = !DILocation(line: 199, column: 21, scope: !562)
!992 = !DILocation(line: 199, column: 39, scope: !562)
!993 = !{!994, !994, i64 0}
!994 = !{!"any pointer", !995, i64 0}
!995 = !{!"omnipotent char", !996, i64 0}
!996 = !{!"Simple C/C++ TBAA"}
!997 = !DILocation(line: 199, column: 56, scope: !562)
!998 = !DILocation(line: 199, column: 66, scope: !562)
!999 = !DILocation(line: 201, column: 5, scope: !562)
!1000 = !DILocation(line: 201, column: 10, scope: !562)
!1001 = !DILocation(line: 202, column: 5, scope: !562)
!1002 = !DILocation(line: 202, column: 9, scope: !562)
!1003 = !DILocation(line: 203, column: 17, scope: !562)
!1004 = !DILocation(line: 204, column: 17, scope: !562)
!1005 = !DILocation(line: 205, column: 9, scope: !562)
!1006 = !DILocation(line: 206, column: 9, scope: !562)
!1007 = !DILocation(line: 207, column: 9, scope: !562)
!1008 = !DILocation(line: 208, column: 9, scope: !562)
!1009 = !DILocation(line: 209, column: 17, scope: !562)
!1010 = !DILocation(line: 212, column: 24, scope: !562)
!1011 = !DILocation(line: 212, column: 9, scope: !562)
!1012 = !DILocation(line: 213, column: 5, scope: !562)
!1013 = !DILocation(line: 213, column: 21, scope: !562)
!1014 = !DILocation(line: 214, column: 5, scope: !562)
!1015 = !DILocation(line: 216, column: 24, scope: !562)
!1016 = !DILocation(line: 216, column: 14, scope: !562)
!1017 = !DILocation(line: 216, column: 22, scope: !562)
!1018 = !{!1019, !994, i64 0}
!1019 = !{!"", !994, i64 0, !1020, i64 8, !1020, i64 12}
!1020 = !{!"int", !995, i64 0}
!1021 = !DILocation(line: 217, column: 14, scope: !562)
!1022 = !DILocation(line: 217, column: 30, scope: !562)
!1023 = !{!1019, !1020, i64 8}
!1024 = !DILocation(line: 218, column: 14, scope: !562)
!1025 = !DILocation(line: 218, column: 31, scope: !562)
!1026 = !{!1019, !1020, i64 12}
!1027 = !DILocation(line: 221, column: 19, scope: !562)
!1028 = !DILocation(line: 223, column: 5, scope: !562)
!1029 = !DILocation(line: 256, column: 23, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !1, line: 256, column: 17)
!1031 = distinct !DILexicalBlock(scope: !602, file: !1, line: 225, column: 20)
!1032 = !DILocation(line: 252, column: 23, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1031, file: !1, line: 252, column: 17)
!1034 = !DILocation(line: 224, column: 24, scope: !602)
!1035 = !DILocation(line: 224, column: 17, scope: !602)
!1036 = !{!995, !995, i64 0}
!1037 = !DILocation(line: 224, column: 13, scope: !602)
!1038 = !DILocation(line: 225, column: 9, scope: !602)
!1039 = !DILocation(line: 227, column: 23, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1031, file: !1, line: 227, column: 17)
!1041 = !DILocation(line: 227, column: 17, scope: !1031)
!1042 = !DILocation(line: 229, column: 18, scope: !1031)
!1043 = !DILocation(line: 230, column: 23, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1031, file: !1, line: 230, column: 17)
!1045 = !DILocation(line: 230, column: 17, scope: !1031)
!1046 = !DILocation(line: 257, column: 21, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1030, file: !1, line: 256, column: 29)
!1048 = !DILocation(line: 231, column: 17, scope: !1044)
!1049 = !DILocation(line: 235, column: 23, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1031, file: !1, line: 235, column: 17)
!1051 = !DILocation(line: 235, column: 17, scope: !1031)
!1052 = !DILocation(line: 236, column: 17, scope: !1050)
!1053 = !DILocation(line: 238, column: 22, scope: !1050)
!1054 = !DILocation(line: 239, column: 13, scope: !1031)
!1055 = !DILocation(line: 252, column: 17, scope: !1031)
!1056 = !DILocation(line: 256, column: 17, scope: !1031)
!1057 = !DILocation(line: 257, column: 21, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1047, file: !1, line: 257, column: 21)
!1059 = !{!1020, !1020, i64 0}
!1060 = !DILocation(line: 258, column: 27, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1058, file: !1, line: 258, column: 25)
!1062 = !DILocation(line: 265, column: 15, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !562, file: !1, line: 265, column: 9)
!1064 = !DILocation(line: 265, column: 9, scope: !562)
!1065 = !DILocation(line: 266, column: 9, scope: !1063)
!1066 = !DILocation(line: 268, column: 13, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !562, file: !1, line: 268, column: 9)
!1068 = !DILocation(line: 268, column: 9, scope: !562)
!1069 = !DILocation(line: 271, column: 12, scope: !562)
!1070 = !DILocation(line: 273, column: 13, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !562, file: !1, line: 273, column: 9)
!1072 = !DILocation(line: 273, column: 9, scope: !562)
!1073 = !DILocation(line: 274, column: 28, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1071, file: !1, line: 273, column: 40)
!1075 = !DILocation(line: 274, column: 28, scope: !1076)
!1076 = !DILexicalBlockFile(scope: !1074, file: !1, discriminator: 2)
!1077 = !DILocation(line: 274, column: 26, scope: !1074)
!1078 = !DILocation(line: 275, column: 30, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1074, file: !1, line: 275, column: 13)
!1080 = !DILocation(line: 275, column: 13, scope: !1074)
!1081 = !DILocation(line: 276, column: 13, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1079, file: !1, line: 275, column: 39)
!1083 = !DILocation(line: 277, column: 13, scope: !1082)
!1084 = !DILocation(line: 279, column: 35, scope: !1074)
!1085 = !DILocation(line: 280, column: 5, scope: !1074)
!1086 = !DILocation(line: 282, column: 9, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !562, file: !1, line: 282, column: 9)
!1088 = !DILocation(line: 282, column: 9, scope: !562)
!1089 = !DILocation(line: 283, column: 17, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !1, line: 283, column: 13)
!1091 = distinct !DILexicalBlock(scope: !1087, file: !1, line: 282, column: 17)
!1092 = !DILocation(line: 283, column: 13, scope: !1091)
!1093 = !DILocation(line: 284, column: 22, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !1, line: 284, column: 17)
!1095 = distinct !DILexicalBlock(scope: !1090, file: !1, line: 283, column: 23)
!1096 = !DILocation(line: 284, column: 17, scope: !1095)
!1097 = !DILocation(line: 286, column: 26, scope: !1095)
!1098 = !DILocation(line: 288, column: 31, scope: !1095)
!1099 = !DILocation(line: 288, column: 26, scope: !1095)
!1100 = !DILocation(line: 289, column: 26, scope: !1095)
!1101 = !DILocation(line: 286, column: 13, scope: !1095)
!1102 = !DILocation(line: 214, column: 16, scope: !562)
!1103 = !DILocation(line: 179, column: 17, scope: !603, inlinedAt: !1104)
!1104 = distinct !DILocation(line: 290, column: 20, scope: !1095)
!1105 = !DILocation(line: 179, column: 37, scope: !603, inlinedAt: !1104)
!1106 = !DILocation(line: 192, column: 9, scope: !1107, inlinedAt: !1104)
!1107 = distinct !DILexicalBlock(scope: !603, file: !1, line: 192, column: 9)
!1108 = !DILocation(line: 192, column: 9, scope: !603, inlinedAt: !1104)
!1109 = !DILocation(line: 193, column: 9, scope: !1107, inlinedAt: !1104)
!1110 = !DILocation(line: 292, column: 22, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1090, file: !1, line: 292, column: 18)
!1112 = !DILocation(line: 292, column: 34, scope: !1111)
!1113 = !DILocation(line: 292, column: 27, scope: !1111)
!1114 = !DILocation(line: 293, column: 22, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !1, line: 293, column: 17)
!1116 = distinct !DILexicalBlock(scope: !1111, file: !1, line: 292, column: 40)
!1117 = !DILocation(line: 293, column: 17, scope: !1116)
!1118 = !DILocation(line: 294, column: 30, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1115, file: !1, line: 293, column: 31)
!1120 = !DILocation(line: 296, column: 35, scope: !1119)
!1121 = !DILocation(line: 296, column: 30, scope: !1119)
!1122 = !DILocation(line: 297, column: 30, scope: !1119)
!1123 = !DILocation(line: 294, column: 17, scope: !1119)
!1124 = !DILocation(line: 179, column: 17, scope: !603, inlinedAt: !1125)
!1125 = distinct !DILocation(line: 298, column: 24, scope: !1119)
!1126 = !DILocation(line: 179, column: 37, scope: !603, inlinedAt: !1125)
!1127 = !DILocation(line: 192, column: 9, scope: !1107, inlinedAt: !1125)
!1128 = !DILocation(line: 192, column: 9, scope: !603, inlinedAt: !1125)
!1129 = !DILocation(line: 193, column: 9, scope: !1107, inlinedAt: !1125)
!1130 = !DILocation(line: 300, column: 59, scope: !1116)
!1131 = !DILocation(line: 300, column: 19, scope: !1116)
!1132 = !DILocation(line: 211, column: 11, scope: !562)
!1133 = !DILocation(line: 302, column: 21, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1116, file: !1, line: 302, column: 17)
!1135 = !DILocation(line: 302, column: 17, scope: !1116)
!1136 = !DILocation(line: 179, column: 17, scope: !603, inlinedAt: !1137)
!1137 = distinct !DILocation(line: 303, column: 24, scope: !1134)
!1138 = !DILocation(line: 179, column: 37, scope: !603, inlinedAt: !1137)
!1139 = !DILocation(line: 192, column: 19, scope: !1107, inlinedAt: !1137)
!1140 = !DILocation(line: 192, column: 9, scope: !1107, inlinedAt: !1137)
!1141 = !DILocation(line: 192, column: 9, scope: !603, inlinedAt: !1137)
!1142 = !DILocation(line: 193, column: 9, scope: !1107, inlinedAt: !1137)
!1143 = !DILocation(line: 304, column: 22, scope: !1116)
!1144 = !DILocation(line: 304, column: 44, scope: !1116)
!1145 = !DILocation(line: 304, column: 13, scope: !1116)
!1146 = !DILocation(line: 179, column: 17, scope: !603, inlinedAt: !1147)
!1147 = distinct !DILocation(line: 305, column: 20, scope: !1116)
!1148 = !DILocation(line: 179, column: 37, scope: !603, inlinedAt: !1147)
!1149 = !DILocation(line: 187, column: 41, scope: !1150, inlinedAt: !1147)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !1, line: 187, column: 7)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !1, line: 187, column: 7)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !1, line: 183, column: 22)
!1153 = distinct !DILexicalBlock(scope: !603, file: !1, line: 183, column: 9)
!1154 = !DILocation(line: 187, column: 29, scope: !1150, inlinedAt: !1147)
!1155 = !DILocation(line: 187, column: 7, scope: !1151, inlinedAt: !1147)
!1156 = !DILocation(line: 188, column: 21, scope: !1157, inlinedAt: !1147)
!1157 = distinct !DILexicalBlock(scope: !1150, file: !1, line: 187, column: 67)
!1158 = !DILocation(line: 188, column: 11, scope: !1157, inlinedAt: !1147)
!1159 = !DILocation(line: 305, column: 20, scope: !1116)
!1160 = !DILocation(line: 188, column: 36, scope: !1157, inlinedAt: !1147)
!1161 = !{!1162, !994, i64 8}
!1162 = !{!"", !994, i64 0, !994, i64 8}
!1163 = !DILocation(line: 189, column: 72, scope: !1157, inlinedAt: !1147)
!1164 = !{!1162, !994, i64 0}
!1165 = !DILocation(line: 192, column: 9, scope: !1107, inlinedAt: !1147)
!1166 = !DILocation(line: 192, column: 9, scope: !603, inlinedAt: !1147)
!1167 = !DILocation(line: 193, column: 9, scope: !1107, inlinedAt: !1147)
!1168 = !DILocation(line: 308, column: 29, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1111, file: !1, line: 307, column: 14)
!1170 = !DILocation(line: 308, column: 13, scope: !1169)
!1171 = !DILocation(line: 179, column: 17, scope: !603, inlinedAt: !1172)
!1172 = distinct !DILocation(line: 310, column: 20, scope: !1169)
!1173 = !DILocation(line: 179, column: 37, scope: !603, inlinedAt: !1172)
!1174 = !DILocation(line: 192, column: 9, scope: !1107, inlinedAt: !1172)
!1175 = !DILocation(line: 192, column: 9, scope: !603, inlinedAt: !1172)
!1176 = !DILocation(line: 193, column: 9, scope: !1107, inlinedAt: !1172)
!1177 = !DILocation(line: 314, column: 10, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !562, file: !1, line: 314, column: 9)
!1179 = !{!1180, !994, i64 8}
!1180 = !{!"_object", !1181, i64 0, !994, i64 8}
!1181 = !{!"long", !995, i64 0}
!1182 = !{!1183, !1181, i64 168}
!1183 = !{!"_typeobject", !1184, i64 0, !994, i64 24, !1181, i64 32, !1181, i64 40, !994, i64 48, !994, i64 56, !994, i64 64, !994, i64 72, !994, i64 80, !994, i64 88, !994, i64 96, !994, i64 104, !994, i64 112, !994, i64 120, !994, i64 128, !994, i64 136, !994, i64 144, !994, i64 152, !994, i64 160, !1181, i64 168, !994, i64 176, !994, i64 184, !994, i64 192, !994, i64 200, !1181, i64 208, !994, i64 216, !994, i64 224, !994, i64 232, !994, i64 240, !994, i64 248, !994, i64 256, !994, i64 264, !994, i64 272, !994, i64 280, !1181, i64 288, !994, i64 296, !994, i64 304, !994, i64 312, !994, i64 320, !994, i64 328, !994, i64 336, !994, i64 344, !994, i64 352, !994, i64 360, !994, i64 368, !994, i64 376, !1020, i64 384, !994, i64 392}
!1184 = !{!"", !1180, i64 0, !1181, i64 16}
!1185 = !DILocation(line: 314, column: 9, scope: !562)
!1186 = !DILocation(line: 315, column: 25, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1178, file: !1, line: 314, column: 31)
!1188 = !DILocation(line: 315, column: 9, scope: !1187)
!1189 = !DILocation(line: 179, column: 17, scope: !603, inlinedAt: !1190)
!1190 = distinct !DILocation(line: 317, column: 16, scope: !1187)
!1191 = !DILocation(line: 179, column: 37, scope: !603, inlinedAt: !1190)
!1192 = !DILocation(line: 192, column: 9, scope: !1107, inlinedAt: !1190)
!1193 = !DILocation(line: 192, column: 9, scope: !603, inlinedAt: !1190)
!1194 = !DILocation(line: 193, column: 9, scope: !1107, inlinedAt: !1190)
!1195 = !DILocation(line: 320, column: 11, scope: !562)
!1196 = !{!1184, !1181, i64 16}
!1197 = !DILocation(line: 210, column: 19, scope: !562)
!1198 = !DILocation(line: 322, column: 15, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !562, file: !1, line: 322, column: 9)
!1200 = !DILocation(line: 322, column: 13, scope: !1199)
!1201 = !DILocation(line: 322, column: 26, scope: !1199)
!1202 = !DILocation(line: 322, column: 19, scope: !1199)
!1203 = !DILocation(line: 341, column: 27, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !1, line: 338, column: 31)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !1, line: 338, column: 5)
!1206 = distinct !DILexicalBlock(scope: !562, file: !1, line: 338, column: 5)
!1207 = !DILocation(line: 342, column: 34, scope: !1204)
!1208 = !DILocation(line: 338, column: 19, scope: !1205)
!1209 = !DILocation(line: 339, column: 13, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1204, file: !1, line: 339, column: 13)
!1211 = !DILocation(line: 338, column: 5, scope: !1206)
!1212 = !DILocation(line: 339, column: 21, scope: !1210)
!1213 = !DILocation(line: 323, column: 21, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !1, line: 323, column: 13)
!1215 = distinct !DILexicalBlock(scope: !1199, file: !1, line: 322, column: 33)
!1216 = !DILocation(line: 324, column: 26, scope: !1214)
!1217 = !DILocation(line: 323, column: 13, scope: !1215)
!1218 = !DILocation(line: 326, column: 31, scope: !1214)
!1219 = !DILocation(line: 326, column: 26, scope: !1214)
!1220 = !DILocation(line: 327, column: 26, scope: !1214)
!1221 = !DILocation(line: 328, column: 29, scope: !1214)
!1222 = !DILocation(line: 329, column: 28, scope: !1214)
!1223 = !DILocation(line: 328, column: 26, scope: !1214)
!1224 = !DILocation(line: 330, column: 26, scope: !1214)
!1225 = !DILocation(line: 331, column: 50, scope: !1226)
!1226 = !DILexicalBlockFile(scope: !1227, file: !1, discriminator: 4)
!1227 = !DILexicalBlockFile(scope: !1214, file: !1, discriminator: 3)
!1228 = !DILocation(line: 331, column: 26, scope: !1214)
!1229 = !DILocation(line: 324, column: 13, scope: !1214)
!1230 = !DILocation(line: 334, column: 13, scope: !1214)
!1231 = !DILocation(line: 179, column: 17, scope: !603, inlinedAt: !1232)
!1232 = distinct !DILocation(line: 335, column: 16, scope: !1215)
!1233 = !DILocation(line: 179, column: 37, scope: !603, inlinedAt: !1232)
!1234 = !DILocation(line: 192, column: 9, scope: !1107, inlinedAt: !1232)
!1235 = !DILocation(line: 192, column: 9, scope: !603, inlinedAt: !1232)
!1236 = !DILocation(line: 193, column: 9, scope: !1107, inlinedAt: !1232)
!1237 = !DILocation(line: 339, column: 13, scope: !1204)
!1238 = !DILocation(line: 340, column: 19, scope: !1210)
!1239 = !DILocation(line: 340, column: 13, scope: !1210)
!1240 = !DILocation(line: 341, column: 15, scope: !1204)
!1241 = !DILocation(line: 344, column: 13, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1204, file: !1, line: 344, column: 13)
!1243 = !DILocation(line: 345, column: 23, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1242, file: !1, line: 344, column: 18)
!1245 = !DILocation(line: 344, column: 13, scope: !1204)
!1246 = !DILocation(line: 339, column: 14, scope: !1210)
!1247 = !DILocation(line: 345, column: 13, scope: !1244)
!1248 = !DILocation(line: 179, column: 17, scope: !603, inlinedAt: !1249)
!1249 = distinct !DILocation(line: 346, column: 20, scope: !1244)
!1250 = !DILocation(line: 179, column: 37, scope: !603, inlinedAt: !1249)
!1251 = !DILocation(line: 187, column: 41, scope: !1150, inlinedAt: !1249)
!1252 = !DILocation(line: 187, column: 29, scope: !1150, inlinedAt: !1249)
!1253 = !DILocation(line: 187, column: 7, scope: !1151, inlinedAt: !1249)
!1254 = !DILocation(line: 188, column: 21, scope: !1157, inlinedAt: !1249)
!1255 = !DILocation(line: 188, column: 11, scope: !1157, inlinedAt: !1249)
!1256 = !DILocation(line: 346, column: 20, scope: !1244)
!1257 = !DILocation(line: 188, column: 36, scope: !1157, inlinedAt: !1249)
!1258 = !DILocation(line: 189, column: 72, scope: !1157, inlinedAt: !1249)
!1259 = !DILocation(line: 192, column: 9, scope: !1107, inlinedAt: !1249)
!1260 = !DILocation(line: 192, column: 9, scope: !603, inlinedAt: !1249)
!1261 = !DILocation(line: 193, column: 9, scope: !1107, inlinedAt: !1249)
!1262 = !DILocation(line: 350, column: 17, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !562, file: !1, line: 350, column: 9)
!1264 = !DILocation(line: 350, column: 25, scope: !1263)
!1265 = !DILocation(line: 350, column: 29, scope: !1266)
!1266 = !DILexicalBlockFile(scope: !1263, file: !1, discriminator: 1)
!1267 = !DILocation(line: 350, column: 62, scope: !1263)
!1268 = !DILocation(line: 353, column: 22, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1263, file: !1, line: 352, column: 61)
!1270 = !DILocation(line: 353, column: 9, scope: !1269)
!1271 = !DILocation(line: 179, column: 17, scope: !603, inlinedAt: !1272)
!1272 = distinct !DILocation(line: 355, column: 16, scope: !1269)
!1273 = !DILocation(line: 179, column: 37, scope: !603, inlinedAt: !1272)
!1274 = !DILocation(line: 187, column: 41, scope: !1150, inlinedAt: !1272)
!1275 = !DILocation(line: 187, column: 29, scope: !1150, inlinedAt: !1272)
!1276 = !DILocation(line: 187, column: 7, scope: !1151, inlinedAt: !1272)
!1277 = !DILocation(line: 188, column: 21, scope: !1157, inlinedAt: !1272)
!1278 = !DILocation(line: 188, column: 11, scope: !1157, inlinedAt: !1272)
!1279 = !DILocation(line: 355, column: 16, scope: !1269)
!1280 = !DILocation(line: 188, column: 36, scope: !1157, inlinedAt: !1272)
!1281 = !DILocation(line: 189, column: 72, scope: !1157, inlinedAt: !1272)
!1282 = !DILocation(line: 192, column: 9, scope: !1107, inlinedAt: !1272)
!1283 = !DILocation(line: 192, column: 9, scope: !603, inlinedAt: !1272)
!1284 = !DILocation(line: 193, column: 9, scope: !1107, inlinedAt: !1272)
!1285 = !DILocation(line: 179, column: 17, scope: !603, inlinedAt: !1286)
!1286 = distinct !DILocation(line: 358, column: 12, scope: !562)
!1287 = !DILocation(line: 179, column: 37, scope: !603, inlinedAt: !1286)
!1288 = !DILocation(line: 192, column: 19, scope: !1107, inlinedAt: !1286)
!1289 = !DILocation(line: 192, column: 9, scope: !1107, inlinedAt: !1286)
!1290 = !DILocation(line: 192, column: 9, scope: !603, inlinedAt: !1286)
!1291 = !DILocation(line: 193, column: 9, scope: !1107, inlinedAt: !1286)
!1292 = !DILocation(line: 359, column: 1, scope: !562)
!1293 = !DILocation(line: 85, column: 30, scope: !461)
!1294 = !DILocation(line: 85, column: 42, scope: !461)
!1295 = !DILocation(line: 88, column: 5, scope: !461)
!1296 = !DILocation(line: 88, column: 13, scope: !461)
!1297 = !DILocation(line: 90, column: 5, scope: !461)
!1298 = !DILocation(line: 91, column: 14, scope: !461)
!1299 = !DILocation(line: 87, column: 9, scope: !461)
!1300 = !DILocation(line: 92, column: 5, scope: !461)
!1301 = !DILocation(line: 94, column: 1, scope: !461)
!1302 = !DILocation(line: 93, column: 5, scope: !461)
!1303 = !DILocation(line: 98, column: 28, scope: !469)
!1304 = !DILocation(line: 98, column: 46, scope: !469)
!1305 = !DILocation(line: 101, column: 5, scope: !469)
!1306 = !DILocation(line: 101, column: 13, scope: !469)
!1307 = !DILocation(line: 103, column: 5, scope: !469)
!1308 = !DILocation(line: 104, column: 14, scope: !469)
!1309 = !DILocation(line: 100, column: 9, scope: !469)
!1310 = !DILocation(line: 105, column: 5, scope: !469)
!1311 = !DILocation(line: 107, column: 1, scope: !469)
!1312 = !DILocation(line: 106, column: 5, scope: !469)
!1313 = !DILocation(line: 110, column: 35, scope: !475)
!1314 = !DILocation(line: 110, column: 47, scope: !475)
!1315 = !DILocation(line: 113, column: 5, scope: !475)
!1316 = !DILocation(line: 113, column: 13, scope: !475)
!1317 = !DILocation(line: 115, column: 5, scope: !475)
!1318 = !DILocation(line: 116, column: 14, scope: !475)
!1319 = !DILocation(line: 112, column: 9, scope: !475)
!1320 = !DILocation(line: 117, column: 5, scope: !475)
!1321 = !DILocation(line: 119, column: 1, scope: !475)
!1322 = !DILocation(line: 118, column: 5, scope: !475)
!1323 = !DILocation(line: 123, column: 25, scope: !481)
!1324 = !DILocation(line: 123, column: 43, scope: !481)
!1325 = !DILocation(line: 123, column: 59, scope: !481)
!1326 = !DILocation(line: 125, column: 5, scope: !481)
!1327 = !DILocation(line: 125, column: 13, scope: !481)
!1328 = !DILocation(line: 127, column: 9, scope: !481)
!1329 = !DILocation(line: 129, column: 12, scope: !481)
!1330 = !DILocation(line: 130, column: 1, scope: !481)
!1331 = !DILocation(line: 129, column: 5, scope: !481)
!1332 = !DILocation(line: 133, column: 32, scope: !490)
!1333 = !DILocation(line: 133, column: 44, scope: !490)
!1334 = !DILocation(line: 133, column: 60, scope: !490)
!1335 = !DILocation(line: 135, column: 5, scope: !490)
!1336 = !DILocation(line: 135, column: 13, scope: !490)
!1337 = !DILocation(line: 137, column: 9, scope: !490)
!1338 = !DILocation(line: 139, column: 12, scope: !490)
!1339 = !DILocation(line: 140, column: 1, scope: !490)
!1340 = !DILocation(line: 139, column: 5, scope: !490)
!1341 = !DILocation(line: 1318, column: 39, scope: !498)
!1342 = !DILocation(line: 1319, column: 39, scope: !498)
!1343 = !DILocation(line: 1320, column: 41, scope: !498)
!1344 = !DILocation(line: 1321, column: 36, scope: !498)
!1345 = !DILocation(line: 1324, column: 5, scope: !498)
!1346 = !DILocation(line: 1324, column: 13, scope: !498)
!1347 = !DILocation(line: 1326, column: 15, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !498, file: !1, line: 1326, column: 9)
!1349 = !DILocation(line: 1326, column: 23, scope: !1348)
!1350 = !DILocation(line: 1326, column: 27, scope: !1351)
!1351 = !DILexicalBlockFile(scope: !1348, file: !1, discriminator: 1)
!1352 = !DILocation(line: 1326, column: 48, scope: !1348)
!1353 = !DILocation(line: 1327, column: 19, scope: !1348)
!1354 = !DILocation(line: 1327, column: 27, scope: !1348)
!1355 = !DILocation(line: 1327, column: 31, scope: !1351)
!1356 = !DILocation(line: 1328, column: 16, scope: !1348)
!1357 = !DILocation(line: 1327, column: 55, scope: !1348)
!1358 = !DILocation(line: 1329, column: 16, scope: !1348)
!1359 = !DILocation(line: 1328, column: 24, scope: !1348)
!1360 = !DILocation(line: 1331, column: 9, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1348, file: !1, line: 1330, column: 5)
!1362 = !DILocation(line: 1332, column: 9, scope: !1361)
!1363 = !DILocation(line: 1335, column: 5, scope: !498)
!1364 = !DILocation(line: 1336, column: 14, scope: !498)
!1365 = !DILocation(line: 1323, column: 9, scope: !498)
!1366 = !DILocation(line: 1337, column: 5, scope: !498)
!1367 = !DILocation(line: 1338, column: 5, scope: !498)
!1368 = !DILocation(line: 1339, column: 1, scope: !498)
!1369 = !DILocation(line: 1434, column: 28, scope: !933)
!1370 = !DILocation(line: 1434, column: 44, scope: !933)
!1371 = !DILocation(line: 1434, column: 66, scope: !933)
!1372 = !DILocation(line: 1435, column: 25, scope: !933)
!1373 = !DILocation(line: 1435, column: 42, scope: !933)
!1374 = !DILocation(line: 1435, column: 52, scope: !933)
!1375 = !DILocation(line: 1437, column: 5, scope: !933)
!1376 = !DILocation(line: 1437, column: 10, scope: !933)
!1377 = !DILocation(line: 1438, column: 5, scope: !933)
!1378 = !DILocation(line: 1438, column: 9, scope: !933)
!1379 = !DILocation(line: 1440, column: 9, scope: !933)
!1380 = !DILocation(line: 1441, column: 9, scope: !933)
!1381 = !DILocation(line: 1445, column: 5, scope: !933)
!1382 = !DILocation(line: 1445, column: 21, scope: !933)
!1383 = !DILocation(line: 1446, column: 5, scope: !933)
!1384 = !DILocation(line: 1448, column: 24, scope: !933)
!1385 = !DILocation(line: 1448, column: 14, scope: !933)
!1386 = !DILocation(line: 1448, column: 22, scope: !933)
!1387 = !DILocation(line: 1449, column: 14, scope: !933)
!1388 = !DILocation(line: 1449, column: 30, scope: !933)
!1389 = !DILocation(line: 1450, column: 14, scope: !933)
!1390 = !DILocation(line: 1450, column: 31, scope: !933)
!1391 = !DILocation(line: 1459, column: 13, scope: !933)
!1392 = !DILocation(line: 1439, column: 17, scope: !933)
!1393 = !DILocation(line: 1460, column: 9, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !933, file: !1, line: 1460, column: 9)
!1395 = !DILocation(line: 1460, column: 9, scope: !933)
!1396 = !DILocation(line: 1461, column: 14, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1394, file: !1, line: 1460, column: 16)
!1398 = !DILocation(line: 1439, column: 31, scope: !933)
!1399 = !DILocation(line: 1463, column: 5, scope: !1397)
!1400 = !DILocation(line: 1465, column: 22, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1394, file: !1, line: 1464, column: 10)
!1402 = !DILocation(line: 1466, column: 13, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1401, file: !1, line: 1466, column: 13)
!1404 = !DILocation(line: 1467, column: 23, scope: !1403)
!1405 = !DILocation(line: 1466, column: 13, scope: !1401)
!1406 = !DILocation(line: 1442, column: 12, scope: !933)
!1407 = !DILocation(line: 1471, column: 10, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !933, file: !1, line: 1471, column: 5)
!1409 = !DILocation(line: 1471, column: 17, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1408, file: !1, line: 1471, column: 5)
!1411 = !DILocation(line: 1471, column: 5, scope: !1408)
!1412 = !DILocation(line: 1471, column: 33, scope: !1410)
!1413 = !DILocation(line: 1474, column: 13, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !933, file: !1, line: 1474, column: 9)
!1415 = !DILocation(line: 1474, column: 9, scope: !933)
!1416 = !DILocation(line: 1475, column: 28, scope: !1417)
!1417 = !DILexicalBlockFile(scope: !1418, file: !1, discriminator: 2)
!1418 = distinct !DILexicalBlock(scope: !1414, file: !1, line: 1474, column: 40)
!1419 = !DILocation(line: 1475, column: 26, scope: !1418)
!1420 = !DILocation(line: 1476, column: 30, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1418, file: !1, line: 1476, column: 13)
!1422 = !DILocation(line: 1476, column: 13, scope: !1418)
!1423 = !DILocation(line: 1477, column: 13, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1421, file: !1, line: 1476, column: 39)
!1425 = !DILocation(line: 1478, column: 13, scope: !1424)
!1426 = !DILocation(line: 1480, column: 35, scope: !1418)
!1427 = !DILocation(line: 1481, column: 5, scope: !1418)
!1428 = !DILocation(line: 1483, column: 13, scope: !933)
!1429 = !DILocation(line: 1443, column: 16, scope: !933)
!1430 = !DILocation(line: 1484, column: 27, scope: !933)
!1431 = !DILocation(line: 1484, column: 17, scope: !933)
!1432 = !DILocation(line: 1484, column: 42, scope: !933)
!1433 = !DILocation(line: 1443, column: 23, scope: !933)
!1434 = !DILocation(line: 1485, column: 15, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !933, file: !1, line: 1485, column: 9)
!1436 = !DILocation(line: 1485, column: 27, scope: !1435)
!1437 = !DILocation(line: 1485, column: 9, scope: !933)
!1438 = !DILocation(line: 1497, column: 19, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !1, line: 1497, column: 5)
!1440 = distinct !DILexicalBlock(scope: !933, file: !1, line: 1497, column: 5)
!1441 = !DILocation(line: 1497, column: 5, scope: !1440)
!1442 = !DILocation(line: 1558, column: 27, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !1, line: 1557, column: 18)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !1, line: 1555, column: 18)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !1, line: 1544, column: 13)
!1446 = distinct !DILexicalBlock(scope: !1439, file: !1, line: 1497, column: 31)
!1447 = !DILocation(line: 1562, column: 17, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !1, line: 1560, column: 26)
!1449 = distinct !DILexicalBlock(scope: !1446, file: !1, line: 1560, column: 13)
!1450 = !DILocation(line: 1486, column: 22, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1435, file: !1, line: 1485, column: 34)
!1452 = !DILocation(line: 1488, column: 29, scope: !1451)
!1453 = !DILocation(line: 1488, column: 22, scope: !1451)
!1454 = !DILocation(line: 1489, column: 22, scope: !1451)
!1455 = !DILocation(line: 1491, column: 27, scope: !1451)
!1456 = !DILocation(line: 1491, column: 22, scope: !1451)
!1457 = !DILocation(line: 1486, column: 9, scope: !1451)
!1458 = !DILocation(line: 1446, column: 16, scope: !933)
!1459 = !DILocation(line: 179, column: 17, scope: !603, inlinedAt: !1460)
!1460 = distinct !DILocation(line: 1493, column: 16, scope: !1451)
!1461 = !DILocation(line: 179, column: 37, scope: !603, inlinedAt: !1460)
!1462 = !DILocation(line: 187, column: 41, scope: !1150, inlinedAt: !1460)
!1463 = !DILocation(line: 187, column: 29, scope: !1150, inlinedAt: !1460)
!1464 = !DILocation(line: 187, column: 7, scope: !1151, inlinedAt: !1460)
!1465 = !DILocation(line: 188, column: 11, scope: !1157, inlinedAt: !1460)
!1466 = !DILocation(line: 1493, column: 16, scope: !1451)
!1467 = !DILocation(line: 188, column: 21, scope: !1157, inlinedAt: !1460)
!1468 = !DILocation(line: 188, column: 36, scope: !1157, inlinedAt: !1460)
!1469 = !DILocation(line: 189, column: 72, scope: !1157, inlinedAt: !1460)
!1470 = !DILocation(line: 187, column: 58, scope: !1150, inlinedAt: !1460)
!1471 = !DILocation(line: 181, column: 9, scope: !603, inlinedAt: !1460)
!1472 = !DILocation(line: 192, column: 9, scope: !1107, inlinedAt: !1460)
!1473 = !DILocation(line: 192, column: 9, scope: !603, inlinedAt: !1460)
!1474 = !DILocation(line: 193, column: 9, scope: !1107, inlinedAt: !1460)
!1475 = !DILocation(line: 1499, column: 14, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1446, file: !1, line: 1499, column: 13)
!1477 = !DILocation(line: 1498, column: 19, scope: !1446)
!1478 = !DILocation(line: 1439, column: 44, scope: !933)
!1479 = !DILocation(line: 1499, column: 13, scope: !1476)
!1480 = !DILocation(line: 1499, column: 21, scope: !1476)
!1481 = !DILocation(line: 1499, column: 13, scope: !1446)
!1482 = !DILocation(line: 1500, column: 21, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !1, line: 1500, column: 17)
!1484 = distinct !DILexicalBlock(scope: !1476, file: !1, line: 1499, column: 29)
!1485 = !DILocation(line: 1500, column: 17, scope: !1484)
!1486 = !DILocation(line: 1501, column: 33, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1483, file: !1, line: 1500, column: 33)
!1488 = !DILocation(line: 1501, column: 17, scope: !1487)
!1489 = !DILocation(line: 179, column: 17, scope: !603, inlinedAt: !1490)
!1490 = distinct !DILocation(line: 1503, column: 24, scope: !1487)
!1491 = !DILocation(line: 179, column: 37, scope: !603, inlinedAt: !1490)
!1492 = !DILocation(line: 187, column: 41, scope: !1150, inlinedAt: !1490)
!1493 = !DILocation(line: 187, column: 29, scope: !1150, inlinedAt: !1490)
!1494 = !DILocation(line: 187, column: 7, scope: !1151, inlinedAt: !1490)
!1495 = !DILocation(line: 188, column: 11, scope: !1157, inlinedAt: !1490)
!1496 = !DILocation(line: 1503, column: 24, scope: !1487)
!1497 = !DILocation(line: 188, column: 21, scope: !1157, inlinedAt: !1490)
!1498 = !DILocation(line: 188, column: 36, scope: !1157, inlinedAt: !1490)
!1499 = !DILocation(line: 189, column: 72, scope: !1157, inlinedAt: !1490)
!1500 = !DILocation(line: 187, column: 58, scope: !1150, inlinedAt: !1490)
!1501 = !DILocation(line: 181, column: 9, scope: !603, inlinedAt: !1490)
!1502 = !DILocation(line: 192, column: 9, scope: !1107, inlinedAt: !1490)
!1503 = !DILocation(line: 192, column: 9, scope: !603, inlinedAt: !1490)
!1504 = !DILocation(line: 193, column: 9, scope: !1107, inlinedAt: !1490)
!1505 = !DILocation(line: 1507, column: 19, scope: !1484)
!1506 = !DILocation(line: 1509, column: 21, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1484, file: !1, line: 1509, column: 17)
!1508 = !DILocation(line: 1509, column: 17, scope: !1484)
!1509 = !DILocation(line: 1515, column: 13, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1446, file: !1, line: 1515, column: 13)
!1511 = !DILocation(line: 1510, column: 33, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1507, file: !1, line: 1509, column: 33)
!1513 = !DILocation(line: 1510, column: 17, scope: !1512)
!1514 = !DILocation(line: 179, column: 17, scope: !603, inlinedAt: !1515)
!1515 = distinct !DILocation(line: 1512, column: 24, scope: !1512)
!1516 = !DILocation(line: 179, column: 37, scope: !603, inlinedAt: !1515)
!1517 = !DILocation(line: 187, column: 41, scope: !1150, inlinedAt: !1515)
!1518 = !DILocation(line: 187, column: 29, scope: !1150, inlinedAt: !1515)
!1519 = !DILocation(line: 187, column: 7, scope: !1151, inlinedAt: !1515)
!1520 = !DILocation(line: 188, column: 11, scope: !1157, inlinedAt: !1515)
!1521 = !DILocation(line: 1512, column: 24, scope: !1512)
!1522 = !DILocation(line: 188, column: 21, scope: !1157, inlinedAt: !1515)
!1523 = !DILocation(line: 188, column: 36, scope: !1157, inlinedAt: !1515)
!1524 = !DILocation(line: 189, column: 72, scope: !1157, inlinedAt: !1515)
!1525 = !DILocation(line: 187, column: 58, scope: !1150, inlinedAt: !1515)
!1526 = !DILocation(line: 181, column: 9, scope: !603, inlinedAt: !1515)
!1527 = !DILocation(line: 192, column: 9, scope: !1107, inlinedAt: !1515)
!1528 = !DILocation(line: 192, column: 9, scope: !603, inlinedAt: !1515)
!1529 = !DILocation(line: 193, column: 9, scope: !1107, inlinedAt: !1515)
!1530 = !DILocation(line: 1515, column: 14, scope: !1510)
!1531 = !DILocation(line: 1515, column: 21, scope: !1510)
!1532 = !DILocation(line: 1515, column: 13, scope: !1446)
!1533 = !DILocation(line: 1534, column: 13, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1446, file: !1, line: 1534, column: 13)
!1535 = !DILocation(line: 1516, column: 21, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !1, line: 1516, column: 17)
!1537 = distinct !DILexicalBlock(scope: !1510, file: !1, line: 1515, column: 29)
!1538 = !DILocation(line: 1516, column: 17, scope: !1537)
!1539 = !DILocation(line: 1517, column: 33, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1536, file: !1, line: 1516, column: 33)
!1541 = !DILocation(line: 1517, column: 17, scope: !1540)
!1542 = !DILocation(line: 179, column: 17, scope: !603, inlinedAt: !1543)
!1543 = distinct !DILocation(line: 1519, column: 24, scope: !1540)
!1544 = !DILocation(line: 179, column: 37, scope: !603, inlinedAt: !1543)
!1545 = !DILocation(line: 187, column: 41, scope: !1150, inlinedAt: !1543)
!1546 = !DILocation(line: 187, column: 29, scope: !1150, inlinedAt: !1543)
!1547 = !DILocation(line: 187, column: 7, scope: !1151, inlinedAt: !1543)
!1548 = !DILocation(line: 188, column: 11, scope: !1157, inlinedAt: !1543)
!1549 = !DILocation(line: 1519, column: 24, scope: !1540)
!1550 = !DILocation(line: 188, column: 21, scope: !1157, inlinedAt: !1543)
!1551 = !DILocation(line: 188, column: 36, scope: !1157, inlinedAt: !1543)
!1552 = !DILocation(line: 189, column: 72, scope: !1157, inlinedAt: !1543)
!1553 = !DILocation(line: 187, column: 58, scope: !1150, inlinedAt: !1543)
!1554 = !DILocation(line: 181, column: 9, scope: !603, inlinedAt: !1543)
!1555 = !DILocation(line: 192, column: 9, scope: !1107, inlinedAt: !1543)
!1556 = !DILocation(line: 192, column: 9, scope: !603, inlinedAt: !1543)
!1557 = !DILocation(line: 193, column: 9, scope: !1107, inlinedAt: !1543)
!1558 = !DILocation(line: 1523, column: 19, scope: !1537)
!1559 = !DILocation(line: 1525, column: 21, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1537, file: !1, line: 1525, column: 17)
!1561 = !DILocation(line: 1525, column: 17, scope: !1537)
!1562 = !DILocation(line: 1526, column: 30, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1560, file: !1, line: 1525, column: 30)
!1564 = !DILocation(line: 1529, column: 35, scope: !1563)
!1565 = !DILocation(line: 1529, column: 30, scope: !1563)
!1566 = !DILocation(line: 1526, column: 17, scope: !1563)
!1567 = !DILocation(line: 179, column: 17, scope: !603, inlinedAt: !1568)
!1568 = distinct !DILocation(line: 1531, column: 24, scope: !1563)
!1569 = !DILocation(line: 179, column: 37, scope: !603, inlinedAt: !1568)
!1570 = !DILocation(line: 187, column: 41, scope: !1150, inlinedAt: !1568)
!1571 = !DILocation(line: 187, column: 29, scope: !1150, inlinedAt: !1568)
!1572 = !DILocation(line: 187, column: 7, scope: !1151, inlinedAt: !1568)
!1573 = !DILocation(line: 188, column: 11, scope: !1157, inlinedAt: !1568)
!1574 = !DILocation(line: 1531, column: 24, scope: !1563)
!1575 = !DILocation(line: 188, column: 21, scope: !1157, inlinedAt: !1568)
!1576 = !DILocation(line: 188, column: 36, scope: !1157, inlinedAt: !1568)
!1577 = !DILocation(line: 189, column: 72, scope: !1157, inlinedAt: !1568)
!1578 = !DILocation(line: 187, column: 58, scope: !1150, inlinedAt: !1568)
!1579 = !DILocation(line: 181, column: 9, scope: !603, inlinedAt: !1568)
!1580 = !DILocation(line: 192, column: 9, scope: !1107, inlinedAt: !1568)
!1581 = !DILocation(line: 192, column: 9, scope: !603, inlinedAt: !1568)
!1582 = !DILocation(line: 193, column: 9, scope: !1107, inlinedAt: !1568)
!1583 = !DILocation(line: 1535, column: 26, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1534, file: !1, line: 1534, column: 40)
!1585 = !DILocation(line: 1535, column: 13, scope: !1584)
!1586 = !DILocation(line: 179, column: 17, scope: !603, inlinedAt: !1587)
!1587 = distinct !DILocation(line: 1538, column: 20, scope: !1584)
!1588 = !DILocation(line: 179, column: 37, scope: !603, inlinedAt: !1587)
!1589 = !DILocation(line: 187, column: 41, scope: !1150, inlinedAt: !1587)
!1590 = !DILocation(line: 187, column: 29, scope: !1150, inlinedAt: !1587)
!1591 = !DILocation(line: 187, column: 7, scope: !1151, inlinedAt: !1587)
!1592 = !DILocation(line: 188, column: 11, scope: !1157, inlinedAt: !1587)
!1593 = !DILocation(line: 1538, column: 20, scope: !1584)
!1594 = !DILocation(line: 188, column: 21, scope: !1157, inlinedAt: !1587)
!1595 = !DILocation(line: 188, column: 36, scope: !1157, inlinedAt: !1587)
!1596 = !DILocation(line: 189, column: 72, scope: !1157, inlinedAt: !1587)
!1597 = !DILocation(line: 187, column: 58, scope: !1150, inlinedAt: !1587)
!1598 = !DILocation(line: 181, column: 9, scope: !603, inlinedAt: !1587)
!1599 = !DILocation(line: 192, column: 9, scope: !1107, inlinedAt: !1587)
!1600 = !DILocation(line: 192, column: 9, scope: !603, inlinedAt: !1587)
!1601 = !DILocation(line: 193, column: 9, scope: !1107, inlinedAt: !1587)
!1602 = !DILocation(line: 1444, column: 15, scope: !933)
!1603 = !DILocation(line: 1541, column: 13, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1446, file: !1, line: 1541, column: 13)
!1605 = !DILocation(line: 1541, column: 13, scope: !1446)
!1606 = !DILocation(line: 1542, column: 27, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1604, file: !1, line: 1541, column: 24)
!1608 = !DILocation(line: 1544, column: 13, scope: !1445)
!1609 = !DILocation(line: 1544, column: 13, scope: !1446)
!1610 = !DILocation(line: 1545, column: 13, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1445, file: !1, line: 1544, column: 26)
!1612 = !DILocation(line: 1546, column: 19, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1611, file: !1, line: 1546, column: 17)
!1614 = !DILocation(line: 1546, column: 17, scope: !1611)
!1615 = !DILocation(line: 1548, column: 30, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1613, file: !1, line: 1546, column: 28)
!1617 = !DILocation(line: 1551, column: 40, scope: !1616)
!1618 = !DILocation(line: 1548, column: 17, scope: !1616)
!1619 = !DILocation(line: 179, column: 17, scope: !603, inlinedAt: !1620)
!1620 = distinct !DILocation(line: 1552, column: 24, scope: !1616)
!1621 = !DILocation(line: 179, column: 37, scope: !603, inlinedAt: !1620)
!1622 = !DILocation(line: 187, column: 41, scope: !1150, inlinedAt: !1620)
!1623 = !DILocation(line: 187, column: 29, scope: !1150, inlinedAt: !1620)
!1624 = !DILocation(line: 187, column: 7, scope: !1151, inlinedAt: !1620)
!1625 = !DILocation(line: 188, column: 11, scope: !1157, inlinedAt: !1620)
!1626 = !DILocation(line: 1552, column: 24, scope: !1616)
!1627 = !DILocation(line: 188, column: 21, scope: !1157, inlinedAt: !1620)
!1628 = !DILocation(line: 188, column: 36, scope: !1157, inlinedAt: !1620)
!1629 = !DILocation(line: 189, column: 72, scope: !1157, inlinedAt: !1620)
!1630 = !DILocation(line: 187, column: 58, scope: !1150, inlinedAt: !1620)
!1631 = !DILocation(line: 181, column: 9, scope: !603, inlinedAt: !1620)
!1632 = !DILocation(line: 192, column: 9, scope: !1107, inlinedAt: !1620)
!1633 = !DILocation(line: 192, column: 9, scope: !603, inlinedAt: !1620)
!1634 = !DILocation(line: 193, column: 9, scope: !1107, inlinedAt: !1620)
!1635 = !DILocation(line: 1555, column: 31, scope: !1636)
!1636 = !DILexicalBlockFile(scope: !1444, file: !1, discriminator: 1)
!1637 = !DILocation(line: 1555, column: 18, scope: !1445)
!1638 = !DILocation(line: 179, column: 17, scope: !603, inlinedAt: !1639)
!1639 = distinct !DILocation(line: 1556, column: 20, scope: !1444)
!1640 = !DILocation(line: 179, column: 37, scope: !603, inlinedAt: !1639)
!1641 = !DILocation(line: 187, column: 41, scope: !1150, inlinedAt: !1639)
!1642 = !DILocation(line: 187, column: 29, scope: !1150, inlinedAt: !1639)
!1643 = !DILocation(line: 187, column: 7, scope: !1151, inlinedAt: !1639)
!1644 = !DILocation(line: 188, column: 11, scope: !1157, inlinedAt: !1639)
!1645 = !DILocation(line: 1556, column: 20, scope: !1444)
!1646 = !DILocation(line: 188, column: 21, scope: !1157, inlinedAt: !1639)
!1647 = !DILocation(line: 188, column: 36, scope: !1157, inlinedAt: !1639)
!1648 = !DILocation(line: 189, column: 72, scope: !1157, inlinedAt: !1639)
!1649 = !DILocation(line: 187, column: 58, scope: !1150, inlinedAt: !1639)
!1650 = !DILocation(line: 181, column: 9, scope: !603, inlinedAt: !1639)
!1651 = !DILocation(line: 192, column: 9, scope: !1107, inlinedAt: !1639)
!1652 = !DILocation(line: 192, column: 9, scope: !603, inlinedAt: !1639)
!1653 = !DILocation(line: 193, column: 9, scope: !1107, inlinedAt: !1639)
!1654 = !DILocation(line: 1557, column: 20, scope: !1443)
!1655 = !DILocation(line: 1557, column: 18, scope: !1444)
!1656 = !DILocation(line: 1560, column: 13, scope: !1449)
!1657 = !DILocation(line: 1560, column: 13, scope: !1446)
!1658 = !DILocation(line: 1561, column: 19, scope: !1448)
!1659 = !DILocation(line: 1439, column: 25, scope: !933)
!1660 = !DILocation(line: 1563, column: 17, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1448, file: !1, line: 1563, column: 17)
!1662 = !DILocation(line: 1563, column: 17, scope: !1448)
!1663 = !DILocation(line: 1564, column: 27, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1661, file: !1, line: 1563, column: 22)
!1665 = !DILocation(line: 1564, column: 26, scope: !1664)
!1666 = !DILocation(line: 1564, column: 17, scope: !1664)
!1667 = !DILocation(line: 179, column: 17, scope: !603, inlinedAt: !1668)
!1668 = distinct !DILocation(line: 1565, column: 24, scope: !1664)
!1669 = !DILocation(line: 179, column: 37, scope: !603, inlinedAt: !1668)
!1670 = !DILocation(line: 187, column: 41, scope: !1150, inlinedAt: !1668)
!1671 = !DILocation(line: 187, column: 29, scope: !1150, inlinedAt: !1668)
!1672 = !DILocation(line: 187, column: 7, scope: !1151, inlinedAt: !1668)
!1673 = !DILocation(line: 188, column: 11, scope: !1157, inlinedAt: !1668)
!1674 = !DILocation(line: 1565, column: 24, scope: !1664)
!1675 = !DILocation(line: 188, column: 21, scope: !1157, inlinedAt: !1668)
!1676 = !DILocation(line: 188, column: 36, scope: !1157, inlinedAt: !1668)
!1677 = !DILocation(line: 189, column: 72, scope: !1157, inlinedAt: !1668)
!1678 = !DILocation(line: 187, column: 58, scope: !1150, inlinedAt: !1668)
!1679 = !DILocation(line: 181, column: 9, scope: !603, inlinedAt: !1668)
!1680 = !DILocation(line: 192, column: 9, scope: !1107, inlinedAt: !1668)
!1681 = !DILocation(line: 192, column: 9, scope: !603, inlinedAt: !1668)
!1682 = !DILocation(line: 193, column: 9, scope: !1107, inlinedAt: !1668)
!1683 = !DILocation(line: 1570, column: 15, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1446, file: !1, line: 1570, column: 13)
!1685 = !DILocation(line: 1570, column: 13, scope: !1446)
!1686 = !DILocation(line: 1571, column: 26, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1684, file: !1, line: 1570, column: 22)
!1688 = !DILocation(line: 1573, column: 36, scope: !1687)
!1689 = !DILocation(line: 1571, column: 13, scope: !1687)
!1690 = !DILocation(line: 179, column: 17, scope: !603, inlinedAt: !1691)
!1691 = distinct !DILocation(line: 1574, column: 20, scope: !1687)
!1692 = !DILocation(line: 179, column: 37, scope: !603, inlinedAt: !1691)
!1693 = !DILocation(line: 187, column: 41, scope: !1150, inlinedAt: !1691)
!1694 = !DILocation(line: 187, column: 29, scope: !1150, inlinedAt: !1691)
!1695 = !DILocation(line: 187, column: 7, scope: !1151, inlinedAt: !1691)
!1696 = !DILocation(line: 188, column: 11, scope: !1157, inlinedAt: !1691)
!1697 = !DILocation(line: 1574, column: 20, scope: !1687)
!1698 = !DILocation(line: 188, column: 21, scope: !1157, inlinedAt: !1691)
!1699 = !DILocation(line: 188, column: 36, scope: !1157, inlinedAt: !1691)
!1700 = !DILocation(line: 189, column: 72, scope: !1157, inlinedAt: !1691)
!1701 = !DILocation(line: 187, column: 58, scope: !1150, inlinedAt: !1691)
!1702 = !DILocation(line: 181, column: 9, scope: !603, inlinedAt: !1691)
!1703 = !DILocation(line: 192, column: 9, scope: !1107, inlinedAt: !1691)
!1704 = !DILocation(line: 192, column: 9, scope: !603, inlinedAt: !1691)
!1705 = !DILocation(line: 193, column: 9, scope: !1107, inlinedAt: !1691)
!1706 = !DILocation(line: 1580, column: 13, scope: !1446)
!1707 = !DILocation(line: 179, column: 17, scope: !603, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 1581, column: 20, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1446, file: !1, line: 1580, column: 13)
!1710 = !DILocation(line: 179, column: 37, scope: !603, inlinedAt: !1708)
!1711 = !DILocation(line: 192, column: 19, scope: !1107, inlinedAt: !1708)
!1712 = !DILocation(line: 192, column: 9, scope: !1107, inlinedAt: !1708)
!1713 = !DILocation(line: 192, column: 9, scope: !603, inlinedAt: !1708)
!1714 = !DILocation(line: 193, column: 9, scope: !1107, inlinedAt: !1708)
!1715 = !DILocation(line: 1585, column: 15, scope: !1446)
!1716 = !DILocation(line: 1586, column: 13, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1446, file: !1, line: 1586, column: 13)
!1718 = !DILocation(line: 1586, column: 13, scope: !1446)
!1719 = !DILocation(line: 1587, column: 26, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1717, file: !1, line: 1586, column: 18)
!1721 = !DILocation(line: 1588, column: 26, scope: !1720)
!1722 = !DILocation(line: 1587, column: 13, scope: !1720)
!1723 = !DILocation(line: 179, column: 17, scope: !603, inlinedAt: !1724)
!1724 = distinct !DILocation(line: 1589, column: 20, scope: !1720)
!1725 = !DILocation(line: 179, column: 37, scope: !603, inlinedAt: !1724)
!1726 = !DILocation(line: 187, column: 41, scope: !1150, inlinedAt: !1724)
!1727 = !DILocation(line: 187, column: 29, scope: !1150, inlinedAt: !1724)
!1728 = !DILocation(line: 187, column: 7, scope: !1151, inlinedAt: !1724)
!1729 = !DILocation(line: 188, column: 11, scope: !1157, inlinedAt: !1724)
!1730 = !DILocation(line: 1589, column: 20, scope: !1720)
!1731 = !DILocation(line: 188, column: 21, scope: !1157, inlinedAt: !1724)
!1732 = !DILocation(line: 188, column: 36, scope: !1157, inlinedAt: !1724)
!1733 = !DILocation(line: 189, column: 72, scope: !1157, inlinedAt: !1724)
!1734 = !DILocation(line: 187, column: 58, scope: !1150, inlinedAt: !1724)
!1735 = !DILocation(line: 181, column: 9, scope: !603, inlinedAt: !1724)
!1736 = !DILocation(line: 192, column: 9, scope: !1107, inlinedAt: !1724)
!1737 = !DILocation(line: 192, column: 9, scope: !603, inlinedAt: !1724)
!1738 = !DILocation(line: 193, column: 9, scope: !1107, inlinedAt: !1724)
!1739 = !DILocation(line: 1593, column: 10, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !933, file: !1, line: 1593, column: 9)
!1741 = !DILocation(line: 1594, column: 22, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1740, file: !1, line: 1593, column: 77)
!1743 = !DILocation(line: 1594, column: 9, scope: !1742)
!1744 = !DILocation(line: 179, column: 17, scope: !603, inlinedAt: !1745)
!1745 = distinct !DILocation(line: 1597, column: 16, scope: !1742)
!1746 = !DILocation(line: 179, column: 37, scope: !603, inlinedAt: !1745)
!1747 = !DILocation(line: 187, column: 41, scope: !1150, inlinedAt: !1745)
!1748 = !DILocation(line: 187, column: 29, scope: !1150, inlinedAt: !1745)
!1749 = !DILocation(line: 187, column: 7, scope: !1151, inlinedAt: !1745)
!1750 = !DILocation(line: 188, column: 11, scope: !1157, inlinedAt: !1745)
!1751 = !DILocation(line: 1597, column: 16, scope: !1742)
!1752 = !DILocation(line: 188, column: 21, scope: !1157, inlinedAt: !1745)
!1753 = !DILocation(line: 188, column: 36, scope: !1157, inlinedAt: !1745)
!1754 = !DILocation(line: 189, column: 72, scope: !1157, inlinedAt: !1745)
!1755 = !DILocation(line: 187, column: 58, scope: !1150, inlinedAt: !1745)
!1756 = !DILocation(line: 181, column: 9, scope: !603, inlinedAt: !1745)
!1757 = !DILocation(line: 192, column: 9, scope: !1107, inlinedAt: !1745)
!1758 = !DILocation(line: 192, column: 9, scope: !603, inlinedAt: !1745)
!1759 = !DILocation(line: 193, column: 9, scope: !1107, inlinedAt: !1745)
!1760 = !DILocation(line: 1601, column: 19, scope: !960)
!1761 = !DILocation(line: 1601, column: 9, scope: !933)
!1762 = !DILocation(line: 1602, column: 9, scope: !959)
!1763 = !DILocation(line: 1603, column: 9, scope: !959)
!1764 = !DILocation(line: 1603, column: 20, scope: !959)
!1765 = !{!1181, !1181, i64 0}
!1766 = !DILocation(line: 1602, column: 19, scope: !959)
!1767 = !DILocation(line: 1602, column: 25, scope: !959)
!1768 = !DILocation(line: 1604, column: 16, scope: !959)
!1769 = !DILocation(line: 1604, column: 9, scope: !959)
!1770 = !DILocation(line: 1611, column: 13, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !964, file: !1, line: 1611, column: 13)
!1772 = !DILocation(line: 1605, column: 17, scope: !964)
!1773 = !DILocation(line: 1606, column: 18, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !964, file: !1, line: 1606, column: 17)
!1775 = !DILocation(line: 1606, column: 17, scope: !964)
!1776 = !DILocation(line: 1611, column: 27, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1771, file: !1, line: 1611, column: 13)
!1778 = !DILocation(line: 1612, column: 55, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !1, line: 1612, column: 21)
!1780 = distinct !DILexicalBlock(scope: !1777, file: !1, line: 1611, column: 39)
!1781 = !DILocation(line: 1612, column: 60, scope: !1779)
!1782 = !DILocation(line: 1612, column: 22, scope: !1779)
!1783 = !DILocation(line: 1612, column: 21, scope: !1780)
!1784 = !DILocation(line: 1607, column: 33, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1774, file: !1, line: 1606, column: 40)
!1786 = !DILocation(line: 1607, column: 17, scope: !1785)
!1787 = !DILocation(line: 179, column: 17, scope: !603, inlinedAt: !1788)
!1788 = distinct !DILocation(line: 1609, column: 24, scope: !1785)
!1789 = !DILocation(line: 179, column: 37, scope: !603, inlinedAt: !1788)
!1790 = !DILocation(line: 187, column: 41, scope: !1150, inlinedAt: !1788)
!1791 = !DILocation(line: 187, column: 29, scope: !1150, inlinedAt: !1788)
!1792 = !DILocation(line: 187, column: 7, scope: !1151, inlinedAt: !1788)
!1793 = !DILocation(line: 188, column: 11, scope: !1157, inlinedAt: !1788)
!1794 = !DILocation(line: 1609, column: 24, scope: !1785)
!1795 = !DILocation(line: 188, column: 21, scope: !1157, inlinedAt: !1788)
!1796 = !DILocation(line: 188, column: 36, scope: !1157, inlinedAt: !1788)
!1797 = !DILocation(line: 189, column: 72, scope: !1157, inlinedAt: !1788)
!1798 = !DILocation(line: 187, column: 58, scope: !1150, inlinedAt: !1788)
!1799 = !DILocation(line: 181, column: 9, scope: !603, inlinedAt: !1788)
!1800 = !DILocation(line: 192, column: 9, scope: !1107, inlinedAt: !1788)
!1801 = !DILocation(line: 192, column: 9, scope: !603, inlinedAt: !1788)
!1802 = !DILocation(line: 193, column: 9, scope: !1107, inlinedAt: !1788)
!1803 = !DILocation(line: 1618, column: 30, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !1, line: 1617, column: 25)
!1805 = distinct !DILexicalBlock(scope: !964, file: !1, line: 1617, column: 17)
!1806 = !DILocation(line: 1621, column: 30, scope: !1804)
!1807 = !DILocation(line: 1618, column: 17, scope: !1804)
!1808 = !DILocation(line: 179, column: 17, scope: !603, inlinedAt: !1809)
!1809 = distinct !DILocation(line: 1622, column: 24, scope: !1804)
!1810 = !DILocation(line: 179, column: 37, scope: !603, inlinedAt: !1809)
!1811 = !DILocation(line: 187, column: 41, scope: !1150, inlinedAt: !1809)
!1812 = !DILocation(line: 187, column: 29, scope: !1150, inlinedAt: !1809)
!1813 = !DILocation(line: 187, column: 7, scope: !1151, inlinedAt: !1809)
!1814 = !DILocation(line: 188, column: 11, scope: !1157, inlinedAt: !1809)
!1815 = !DILocation(line: 1622, column: 24, scope: !1804)
!1816 = !DILocation(line: 188, column: 21, scope: !1157, inlinedAt: !1809)
!1817 = !DILocation(line: 188, column: 36, scope: !1157, inlinedAt: !1809)
!1818 = !DILocation(line: 189, column: 72, scope: !1157, inlinedAt: !1809)
!1819 = !DILocation(line: 187, column: 58, scope: !1150, inlinedAt: !1809)
!1820 = !DILocation(line: 181, column: 9, scope: !603, inlinedAt: !1809)
!1821 = !DILocation(line: 192, column: 9, scope: !1107, inlinedAt: !1809)
!1822 = !DILocation(line: 192, column: 9, scope: !603, inlinedAt: !1809)
!1823 = !DILocation(line: 193, column: 9, scope: !1107, inlinedAt: !1809)
!1824 = !DILocation(line: 1625, column: 5, scope: !1825)
!1825 = !DILexicalBlockFile(scope: !960, file: !1, discriminator: 1)
!1826 = !DILocation(line: 179, column: 17, scope: !603, inlinedAt: !1827)
!1827 = distinct !DILocation(line: 1627, column: 12, scope: !933)
!1828 = !DILocation(line: 179, column: 37, scope: !603, inlinedAt: !1827)
!1829 = !DILocation(line: 192, column: 19, scope: !1107, inlinedAt: !1827)
!1830 = !DILocation(line: 192, column: 9, scope: !1107, inlinedAt: !1827)
!1831 = !DILocation(line: 192, column: 9, scope: !603, inlinedAt: !1827)
!1832 = !DILocation(line: 193, column: 9, scope: !1107, inlinedAt: !1827)
!1833 = !DILocation(line: 1628, column: 1, scope: !933)
!1834 = !DILocation(line: 1342, column: 46, scope: !508)
!1835 = !DILocation(line: 1343, column: 45, scope: !508)
!1836 = !DILocation(line: 1344, column: 47, scope: !508)
!1837 = !DILocation(line: 1345, column: 42, scope: !508)
!1838 = !DILocation(line: 1348, column: 5, scope: !508)
!1839 = !DILocation(line: 1348, column: 13, scope: !508)
!1840 = !DILocation(line: 1350, column: 15, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !508, file: !1, line: 1350, column: 9)
!1842 = !DILocation(line: 1350, column: 23, scope: !1841)
!1843 = !DILocation(line: 1350, column: 27, scope: !1844)
!1844 = !DILexicalBlockFile(scope: !1841, file: !1, discriminator: 1)
!1845 = !DILocation(line: 1350, column: 48, scope: !1841)
!1846 = !DILocation(line: 1351, column: 19, scope: !1841)
!1847 = !DILocation(line: 1351, column: 27, scope: !1841)
!1848 = !DILocation(line: 1351, column: 31, scope: !1844)
!1849 = !DILocation(line: 1352, column: 16, scope: !1841)
!1850 = !DILocation(line: 1351, column: 55, scope: !1841)
!1851 = !DILocation(line: 1353, column: 16, scope: !1841)
!1852 = !DILocation(line: 1352, column: 24, scope: !1841)
!1853 = !DILocation(line: 1355, column: 9, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1841, file: !1, line: 1354, column: 5)
!1855 = !DILocation(line: 1356, column: 9, scope: !1854)
!1856 = !DILocation(line: 1359, column: 5, scope: !508)
!1857 = !DILocation(line: 1360, column: 14, scope: !508)
!1858 = !DILocation(line: 1347, column: 9, scope: !508)
!1859 = !DILocation(line: 1362, column: 5, scope: !508)
!1860 = !DILocation(line: 1363, column: 5, scope: !508)
!1861 = !DILocation(line: 1364, column: 1, scope: !508)
!1862 = !DILocation(line: 1368, column: 41, scope: !516)
!1863 = !DILocation(line: 1369, column: 41, scope: !516)
!1864 = !DILocation(line: 1370, column: 43, scope: !516)
!1865 = !DILocation(line: 1371, column: 38, scope: !516)
!1866 = !DILocation(line: 1371, column: 54, scope: !516)
!1867 = !DILocation(line: 1374, column: 5, scope: !516)
!1868 = !DILocation(line: 1374, column: 13, scope: !516)
!1869 = !DILocation(line: 1376, column: 15, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !516, file: !1, line: 1376, column: 9)
!1871 = !DILocation(line: 1376, column: 23, scope: !1870)
!1872 = !DILocation(line: 1376, column: 27, scope: !1873)
!1873 = !DILexicalBlockFile(scope: !1870, file: !1, discriminator: 1)
!1874 = !DILocation(line: 1376, column: 48, scope: !1870)
!1875 = !DILocation(line: 1377, column: 19, scope: !1870)
!1876 = !DILocation(line: 1377, column: 27, scope: !1870)
!1877 = !DILocation(line: 1377, column: 31, scope: !1873)
!1878 = !DILocation(line: 1378, column: 16, scope: !1870)
!1879 = !DILocation(line: 1377, column: 55, scope: !1870)
!1880 = !DILocation(line: 1379, column: 16, scope: !1870)
!1881 = !DILocation(line: 1378, column: 24, scope: !1870)
!1882 = !DILocation(line: 1381, column: 9, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1870, file: !1, line: 1380, column: 5)
!1884 = !DILocation(line: 1382, column: 9, scope: !1883)
!1885 = !DILocation(line: 1385, column: 9, scope: !516)
!1886 = !DILocation(line: 1387, column: 14, scope: !516)
!1887 = !DILocation(line: 1373, column: 9, scope: !516)
!1888 = !DILocation(line: 1388, column: 5, scope: !516)
!1889 = !DILocation(line: 1389, column: 1, scope: !516)
!1890 = !DILocation(line: 1392, column: 48, scope: !527)
!1891 = !DILocation(line: 1393, column: 47, scope: !527)
!1892 = !DILocation(line: 1394, column: 49, scope: !527)
!1893 = !DILocation(line: 1395, column: 44, scope: !527)
!1894 = !DILocation(line: 1395, column: 60, scope: !527)
!1895 = !DILocation(line: 1398, column: 5, scope: !527)
!1896 = !DILocation(line: 1398, column: 13, scope: !527)
!1897 = !DILocation(line: 1400, column: 15, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !527, file: !1, line: 1400, column: 9)
!1899 = !DILocation(line: 1400, column: 23, scope: !1898)
!1900 = !DILocation(line: 1400, column: 27, scope: !1901)
!1901 = !DILexicalBlockFile(scope: !1898, file: !1, discriminator: 1)
!1902 = !DILocation(line: 1400, column: 48, scope: !1898)
!1903 = !DILocation(line: 1401, column: 19, scope: !1898)
!1904 = !DILocation(line: 1401, column: 27, scope: !1898)
!1905 = !DILocation(line: 1401, column: 31, scope: !1901)
!1906 = !DILocation(line: 1402, column: 16, scope: !1898)
!1907 = !DILocation(line: 1401, column: 55, scope: !1898)
!1908 = !DILocation(line: 1403, column: 16, scope: !1898)
!1909 = !DILocation(line: 1402, column: 24, scope: !1898)
!1910 = !DILocation(line: 1405, column: 9, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1898, file: !1, line: 1404, column: 5)
!1912 = !DILocation(line: 1406, column: 9, scope: !1911)
!1913 = !DILocation(line: 1409, column: 9, scope: !527)
!1914 = !DILocation(line: 1411, column: 14, scope: !527)
!1915 = !DILocation(line: 1397, column: 9, scope: !527)
!1916 = !DILocation(line: 1413, column: 5, scope: !527)
!1917 = !DILocation(line: 1414, column: 1, scope: !527)
!1918 = !DILocation(line: 1417, column: 42, scope: !536)
!1919 = !DILocation(line: 1419, column: 10, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !536, file: !1, line: 1419, column: 9)
!1921 = !DILocation(line: 1419, column: 9, scope: !536)
!1922 = !DILocation(line: 1420, column: 9, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1920, file: !1, line: 1419, column: 32)
!1924 = !DILocation(line: 1421, column: 9, scope: !1923)
!1925 = !DILocation(line: 1423, column: 10, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !536, file: !1, line: 1423, column: 9)
!1927 = !DILocation(line: 1423, column: 9, scope: !536)
!1928 = !DILocation(line: 1424, column: 25, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1926, file: !1, line: 1423, column: 45)
!1930 = !DILocation(line: 1424, column: 9, scope: !1929)
!1931 = !DILocation(line: 1426, column: 9, scope: !1929)
!1932 = !DILocation(line: 1429, column: 1, scope: !536)
!1933 = !DILocation(line: 1754, column: 29, scope: !539)
!1934 = !DILocation(line: 1754, column: 47, scope: !539)
!1935 = !DILocation(line: 1754, column: 64, scope: !539)
!1936 = !DILocation(line: 1754, column: 80, scope: !539)
!1937 = !DILocation(line: 1758, column: 5, scope: !539)
!1938 = !DILocation(line: 1758, column: 13, scope: !539)
!1939 = !DILocation(line: 1761, column: 5, scope: !539)
!1940 = !DILocation(line: 1768, column: 10, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !539, file: !1, line: 1768, column: 9)
!1942 = !DILocation(line: 1768, column: 9, scope: !539)
!1943 = !DILocation(line: 1769, column: 9, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1941, file: !1, line: 1768, column: 31)
!1945 = !DILocation(line: 1770, column: 25, scope: !1944)
!1946 = !DILocation(line: 1770, column: 9, scope: !1944)
!1947 = !DILocation(line: 1772, column: 9, scope: !1944)
!1948 = !DILocation(line: 1774, column: 9, scope: !539)
!1949 = !DILocation(line: 1756, column: 19, scope: !539)
!1950 = !DILocation(line: 1775, column: 11, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !539, file: !1, line: 1775, column: 9)
!1952 = !DILocation(line: 1775, column: 9, scope: !539)
!1953 = !DILocation(line: 1776, column: 18, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !1, line: 1776, column: 13)
!1955 = distinct !DILexicalBlock(scope: !1951, file: !1, line: 1775, column: 18)
!1956 = !DILocation(line: 1778, column: 17, scope: !1954)
!1957 = !DILocation(line: 1786, column: 22, scope: !1954)
!1958 = !DILocation(line: 1786, column: 18, scope: !1954)
!1959 = !DILocation(line: 1776, column: 13, scope: !1955)
!1960 = !DILocation(line: 1777, column: 13, scope: !1954)
!1961 = !DILocation(line: 1782, column: 13, scope: !1954)
!1962 = !DILocation(line: 1787, column: 9, scope: !1955)
!1963 = !DILocation(line: 1788, column: 9, scope: !1955)
!1964 = !DILocation(line: 1790, column: 11, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !539, file: !1, line: 1790, column: 9)
!1966 = !DILocation(line: 1790, column: 9, scope: !539)
!1967 = !DILocation(line: 1805, column: 19, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !1, line: 1805, column: 5)
!1969 = distinct !DILexicalBlock(scope: !539, file: !1, line: 1805, column: 5)
!1970 = !DILocation(line: 1805, column: 5, scope: !1969)
!1971 = !DILocation(line: 1806, column: 13, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1968, file: !1, line: 1805, column: 29)
!1973 = !DILocation(line: 1806, column: 13, scope: !1974)
!1974 = !DILexicalBlockFile(scope: !1972, file: !1, discriminator: 1)
!1975 = !DILocation(line: 1807, column: 14, scope: !1972)
!1976 = !DILocation(line: 1806, column: 13, scope: !1977)
!1977 = !DILexicalBlockFile(scope: !1972, file: !1, discriminator: 2)
!1978 = !DILocation(line: 1791, column: 18, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !1, line: 1791, column: 13)
!1980 = distinct !DILexicalBlock(scope: !1965, file: !1, line: 1790, column: 18)
!1981 = !DILocation(line: 1793, column: 17, scope: !1979)
!1982 = !DILocation(line: 1801, column: 22, scope: !1979)
!1983 = !DILocation(line: 1801, column: 18, scope: !1979)
!1984 = !DILocation(line: 1791, column: 13, scope: !1980)
!1985 = !DILocation(line: 1792, column: 13, scope: !1979)
!1986 = !DILocation(line: 1797, column: 13, scope: !1979)
!1987 = !DILocation(line: 1802, column: 9, scope: !1980)
!1988 = !DILocation(line: 1803, column: 9, scope: !1980)
!1989 = !DILocation(line: 1806, column: 13, scope: !1990)
!1990 = !DILexicalBlockFile(scope: !1991, file: !1, discriminator: 4)
!1991 = !DILexicalBlockFile(scope: !1972, file: !1, discriminator: 3)
!1992 = !DILocation(line: 1807, column: 12, scope: !1972)
!1993 = !DILocation(line: 1805, column: 25, scope: !1968)
!1994 = !DILocation(line: 1756, column: 16, scope: !539)
!1995 = !DILocation(line: 1809, column: 5, scope: !539)
!1996 = !DILocation(line: 1810, column: 5, scope: !539)
!1997 = !DILocation(line: 1811, column: 1, scope: !539)
!1998 = !DILocation(line: 1820, column: 31, scope: !552)
!1999 = !DILocation(line: 1820, column: 51, scope: !552)
!2000 = !DILocation(line: 1822, column: 12, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !552, file: !1, line: 1822, column: 9)
!2002 = !DILocation(line: 1822, column: 9, scope: !552)
!2003 = !DILocation(line: 1824, column: 10, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !552, file: !1, line: 1824, column: 9)
!2005 = !DILocation(line: 1824, column: 9, scope: !552)
!2006 = !DILocation(line: 1825, column: 9, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2004, file: !1, line: 1824, column: 33)
!2008 = !DILocation(line: 1826, column: 9, scope: !2007)
!2009 = !DILocation(line: 1828, column: 9, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !552, file: !1, line: 1828, column: 9)
!2011 = !DILocation(line: 1828, column: 25, scope: !2010)
!2012 = !DILocation(line: 1828, column: 9, scope: !552)
!2013 = !DILocation(line: 1831, column: 18, scope: !552)
!2014 = !DILocation(line: 1831, column: 5, scope: !552)
!2015 = !DILocation(line: 1833, column: 5, scope: !552)
!2016 = !DILocation(line: 1834, column: 1, scope: !552)
!2017 = !DILocation(line: 1838, column: 33, scope: !558)
!2018 = !DILocation(line: 1838, column: 53, scope: !558)
!2019 = !DILocation(line: 1840, column: 14, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !558, file: !1, line: 1840, column: 9)
!2021 = !DILocation(line: 1840, column: 9, scope: !558)
!2022 = !DILocation(line: 1842, column: 10, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !558, file: !1, line: 1842, column: 9)
!2024 = !DILocation(line: 1842, column: 9, scope: !558)
!2025 = !DILocation(line: 1843, column: 9, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2023, file: !1, line: 1842, column: 36)
!2027 = !DILocation(line: 1844, column: 9, scope: !2026)
!2028 = !DILocation(line: 1846, column: 9, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !558, file: !1, line: 1846, column: 9)
!2030 = !DILocation(line: 1846, column: 32, scope: !2029)
!2031 = !DILocation(line: 1846, column: 9, scope: !558)
!2032 = !DILocation(line: 1849, column: 18, scope: !558)
!2033 = !DILocation(line: 1849, column: 5, scope: !558)
!2034 = !DILocation(line: 1851, column: 5, scope: !558)
!2035 = !DILocation(line: 1852, column: 1, scope: !558)
!2036 = !DILocation(line: 505, column: 23, scope: !611)
!2037 = !DILocation(line: 505, column: 41, scope: !611)
!2038 = !DILocation(line: 505, column: 60, scope: !611)
!2039 = !DILocation(line: 505, column: 70, scope: !611)
!2040 = !DILocation(line: 506, column: 18, scope: !611)
!2041 = !DILocation(line: 506, column: 32, scope: !611)
!2042 = !DILocation(line: 506, column: 47, scope: !611)
!2043 = !DILocation(line: 506, column: 68, scope: !611)
!2044 = !DILocation(line: 509, column: 26, scope: !611)
!2045 = !DILocation(line: 509, column: 17, scope: !611)
!2046 = !DILocation(line: 592, column: 14, scope: !659, inlinedAt: !2047)
!2047 = distinct !DILocation(line: 519, column: 15, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !1, line: 518, column: 10)
!2049 = distinct !DILexicalBlock(scope: !611, file: !1, line: 511, column: 9)
!2050 = !DILocation(line: 511, column: 17, scope: !2049)
!2051 = !DILocation(line: 512, column: 15, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2049, file: !1, line: 511, column: 35)
!2053 = !DILocation(line: 511, column: 9, scope: !611)
!2054 = !DILocation(line: 421, column: 61, scope: !627, inlinedAt: !2055)
!2055 = distinct !DILocation(line: 513, column: 15, scope: !2052)
!2056 = !DILocation(line: 424, column: 9, scope: !627, inlinedAt: !2055)
!2057 = !DILocation(line: 425, column: 9, scope: !627, inlinedAt: !2055)
!2058 = !DILocation(line: 426, column: 5, scope: !627, inlinedAt: !2055)
!2059 = !DILocation(line: 426, column: 17, scope: !627, inlinedAt: !2055)
!2060 = !DILocation(line: 430, column: 5, scope: !627, inlinedAt: !2055)
!2061 = !DILocation(line: 431, column: 24, scope: !646, inlinedAt: !2055)
!2062 = !DILocation(line: 444, column: 24, scope: !2063, inlinedAt: !2055)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !1, line: 444, column: 18)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !1, line: 442, column: 18)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !1, line: 437, column: 18)
!2066 = distinct !DILexicalBlock(scope: !646, file: !1, line: 432, column: 13)
!2067 = !DILocation(line: 444, column: 29, scope: !2063, inlinedAt: !2055)
!2068 = !DILocation(line: 431, column: 17, scope: !646, inlinedAt: !2055)
!2069 = !DILocation(line: 432, column: 13, scope: !646, inlinedAt: !2055)
!2070 = !DILocation(line: 513, column: 15, scope: !2052)
!2071 = !DILocation(line: 433, column: 23, scope: !2072, inlinedAt: !2055)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !1, line: 433, column: 17)
!2073 = distinct !DILexicalBlock(scope: !2066, file: !1, line: 432, column: 23)
!2074 = !DILocation(line: 433, column: 17, scope: !2073, inlinedAt: !2055)
!2075 = !DILocation(line: 435, column: 18, scope: !2073, inlinedAt: !2055)
!2076 = !DILocation(line: 436, column: 9, scope: !2073, inlinedAt: !2055)
!2077 = !DILocation(line: 444, column: 32, scope: !2078, inlinedAt: !2055)
!2078 = !DILexicalBlockFile(scope: !2063, file: !1, discriminator: 1)
!2079 = !DILocation(line: 444, column: 18, scope: !2064, inlinedAt: !2055)
!2080 = !DILocation(line: 440, column: 18, scope: !2081, inlinedAt: !2055)
!2081 = distinct !DILexicalBlock(scope: !2065, file: !1, line: 437, column: 28)
!2082 = !DILocation(line: 448, column: 10, scope: !2083, inlinedAt: !2055)
!2083 = distinct !DILexicalBlock(scope: !627, file: !1, line: 448, column: 9)
!2084 = !DILocation(line: 448, column: 32, scope: !2083, inlinedAt: !2055)
!2085 = !DILocation(line: 448, column: 35, scope: !2086, inlinedAt: !2055)
!2086 = !DILexicalBlockFile(scope: !2083, file: !1, discriminator: 1)
!2087 = !DILocation(line: 448, column: 9, scope: !627, inlinedAt: !2055)
!2088 = !DILocation(line: 449, column: 19, scope: !2089, inlinedAt: !2055)
!2089 = distinct !DILexicalBlock(scope: !2083, file: !1, line: 448, column: 55)
!2090 = !DILocation(line: 454, column: 23, scope: !2089, inlinedAt: !2055)
!2091 = !DILocation(line: 454, column: 19, scope: !2089, inlinedAt: !2055)
!2092 = !DILocation(line: 454, column: 50, scope: !2089, inlinedAt: !2055)
!2093 = !DILocation(line: 454, column: 59, scope: !2089, inlinedAt: !2055)
!2094 = !{!1183, !994, i64 24}
!2095 = !DILocation(line: 450, column: 9, scope: !2089, inlinedAt: !2055)
!2096 = !DILocation(line: 455, column: 9, scope: !2089, inlinedAt: !2055)
!2097 = !DILocation(line: 458, column: 11, scope: !627, inlinedAt: !2055)
!2098 = !DILocation(line: 428, column: 16, scope: !627, inlinedAt: !2055)
!2099 = !DILocation(line: 459, column: 16, scope: !2100, inlinedAt: !2055)
!2100 = distinct !DILexicalBlock(scope: !627, file: !1, line: 459, column: 9)
!2101 = !DILocation(line: 459, column: 13, scope: !2100, inlinedAt: !2055)
!2102 = !DILocation(line: 459, column: 9, scope: !627, inlinedAt: !2055)
!2103 = !DILocation(line: 460, column: 19, scope: !2104, inlinedAt: !2055)
!2104 = distinct !DILexicalBlock(scope: !2100, file: !1, line: 459, column: 19)
!2105 = !DILocation(line: 467, column: 13, scope: !2106, inlinedAt: !2055)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !1, line: 466, column: 14)
!2107 = distinct !DILexicalBlock(scope: !2104, file: !1, line: 461, column: 13)
!2108 = !DILocation(line: 472, column: 9, scope: !2104, inlinedAt: !2055)
!2109 = !DILocation(line: 475, column: 12, scope: !627, inlinedAt: !2055)
!2110 = !DILocation(line: 427, column: 9, scope: !627, inlinedAt: !2055)
!2111 = !DILocation(line: 487, column: 61, scope: !650, inlinedAt: !2055)
!2112 = !DILocation(line: 476, column: 10, scope: !652, inlinedAt: !2055)
!2113 = !DILocation(line: 476, column: 19, scope: !651, inlinedAt: !2055)
!2114 = !DILocation(line: 476, column: 5, scope: !652, inlinedAt: !2055)
!2115 = !DILocation(line: 479, column: 16, scope: !650, inlinedAt: !2055)
!2116 = !DILocation(line: 478, column: 19, scope: !650, inlinedAt: !2055)
!2117 = !DILocation(line: 480, column: 18, scope: !2118, inlinedAt: !2055)
!2118 = distinct !DILexicalBlock(scope: !650, file: !1, line: 480, column: 13)
!2119 = !DILocation(line: 480, column: 13, scope: !650, inlinedAt: !2055)
!2120 = !DILocation(line: 481, column: 13, scope: !2121, inlinedAt: !2055)
!2121 = distinct !DILexicalBlock(scope: !2118, file: !1, line: 480, column: 27)
!2122 = !DILocation(line: 482, column: 26, scope: !2121, inlinedAt: !2055)
!2123 = !DILocation(line: 482, column: 23, scope: !2121, inlinedAt: !2055)
!2124 = !DILocation(line: 483, column: 23, scope: !2121, inlinedAt: !2055)
!2125 = !DILocation(line: 484, column: 13, scope: !2121, inlinedAt: !2055)
!2126 = !DILocation(line: 485, column: 13, scope: !2121, inlinedAt: !2055)
!2127 = !DILocation(line: 487, column: 15, scope: !650, inlinedAt: !2055)
!2128 = !DILocation(line: 477, column: 15, scope: !650, inlinedAt: !2055)
!2129 = !DILocation(line: 490, column: 9, scope: !2130, inlinedAt: !2055)
!2130 = !DILexicalBlockFile(scope: !655, file: !1, discriminator: 1)
!2131 = !DILocation(line: 490, column: 9, scope: !2132, inlinedAt: !2055)
!2132 = !DILexicalBlockFile(scope: !657, file: !1, discriminator: 4)
!2133 = !DILocation(line: 490, column: 9, scope: !2134, inlinedAt: !2055)
!2134 = distinct !DILexicalBlock(scope: !657, file: !1, line: 490, column: 9)
!2135 = !{!1180, !1181, i64 0}
!2136 = !DILocation(line: 490, column: 9, scope: !657, inlinedAt: !2055)
!2137 = !DILocation(line: 490, column: 9, scope: !2138, inlinedAt: !2055)
!2138 = !DILexicalBlockFile(scope: !2134, file: !1, discriminator: 6)
!2139 = !{!1183, !994, i64 48}
!2140 = !DILocation(line: 491, column: 17, scope: !2141, inlinedAt: !2055)
!2141 = distinct !DILexicalBlock(scope: !650, file: !1, line: 491, column: 13)
!2142 = !DILocation(line: 491, column: 13, scope: !650, inlinedAt: !2055)
!2143 = !DILocation(line: 476, column: 25, scope: !651, inlinedAt: !2055)
!2144 = !DILocation(line: 492, column: 23, scope: !2145, inlinedAt: !2055)
!2145 = distinct !DILexicalBlock(scope: !2141, file: !1, line: 491, column: 26)
!2146 = !DILocation(line: 499, column: 1, scope: !627, inlinedAt: !2055)
!2147 = !DILocation(line: 508, column: 11, scope: !611)
!2148 = !DILocation(line: 515, column: 13, scope: !2052)
!2149 = !DILocation(line: 497, column: 17, scope: !627, inlinedAt: !2055)
!2150 = !DILocation(line: 515, column: 17, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2052, file: !1, line: 515, column: 13)
!2152 = !DILocation(line: 516, column: 19, scope: !2151)
!2153 = !DILocation(line: 516, column: 13, scope: !2151)
!2154 = !DILocation(line: 570, column: 25, scope: !659, inlinedAt: !2047)
!2155 = !DILocation(line: 570, column: 43, scope: !659, inlinedAt: !2047)
!2156 = !DILocation(line: 570, column: 62, scope: !659, inlinedAt: !2047)
!2157 = !DILocation(line: 570, column: 72, scope: !659, inlinedAt: !2047)
!2158 = !DILocation(line: 571, column: 21, scope: !659, inlinedAt: !2047)
!2159 = !DILocation(line: 571, column: 36, scope: !659, inlinedAt: !2047)
!2160 = !DILocation(line: 571, column: 57, scope: !659, inlinedAt: !2047)
!2161 = !DILocation(line: 591, column: 17, scope: !659, inlinedAt: !2047)
!2162 = !DILocation(line: 592, column: 10, scope: !659, inlinedAt: !2047)
!2163 = !DILocation(line: 595, column: 13, scope: !659, inlinedAt: !2047)
!2164 = !DILocation(line: 595, column: 5, scope: !659, inlinedAt: !2047)
!2165 = !DILocation(line: 598, column: 19, scope: !674, inlinedAt: !2047)
!2166 = !DILocation(line: 598, column: 19, scope: !2167, inlinedAt: !2047)
!2167 = !DILexicalBlockFile(scope: !674, file: !1, discriminator: 1)
!2168 = !DILocation(line: 598, column: 19, scope: !2169, inlinedAt: !2047)
!2169 = !DILexicalBlockFile(scope: !674, file: !1, discriminator: 2)
!2170 = !DILocation(line: 519, column: 15, scope: !2048)
!2171 = !DILocation(line: 598, column: 19, scope: !2172, inlinedAt: !2047)
!2172 = !DILexicalBlockFile(scope: !2173, file: !1, discriminator: 4)
!2173 = !DILexicalBlockFile(scope: !674, file: !1, discriminator: 3)
!2174 = !DILocation(line: 598, column: 15, scope: !674, inlinedAt: !2047)
!2175 = !DILocation(line: 551, column: 9, scope: !2176, inlinedAt: !2177)
!2176 = distinct !DILexicalBlock(scope: !873, file: !1, line: 551, column: 9)
!2177 = distinct !DILocation(line: 600, column: 13, scope: !2178, inlinedAt: !2047)
!2178 = distinct !DILexicalBlock(scope: !674, file: !1, line: 600, column: 13)
!2179 = !DILocation(line: 551, column: 9, scope: !2180, inlinedAt: !2177)
!2180 = !DILexicalBlockFile(scope: !2176, file: !1, discriminator: 1)
!2181 = !DILocation(line: 551, column: 9, scope: !873, inlinedAt: !2177)
!2182 = !DILocation(line: 552, column: 25, scope: !2183, inlinedAt: !2177)
!2183 = distinct !DILexicalBlock(scope: !2176, file: !1, line: 551, column: 29)
!2184 = !DILocation(line: 552, column: 9, scope: !2183, inlinedAt: !2177)
!2185 = !DILocation(line: 600, column: 13, scope: !674, inlinedAt: !2047)
!2186 = !DILocation(line: 602, column: 16, scope: !674, inlinedAt: !2047)
!2187 = !DILocation(line: 599, column: 14, scope: !674, inlinedAt: !2047)
!2188 = !DILocation(line: 603, column: 18, scope: !2189, inlinedAt: !2047)
!2189 = distinct !DILexicalBlock(scope: !674, file: !1, line: 603, column: 13)
!2190 = !DILocation(line: 603, column: 24, scope: !2189, inlinedAt: !2047)
!2191 = !DILocation(line: 603, column: 27, scope: !2192, inlinedAt: !2047)
!2192 = !DILexicalBlockFile(scope: !2189, file: !1, discriminator: 1)
!2193 = !DILocation(line: 603, column: 13, scope: !674, inlinedAt: !2047)
!2194 = !DILocation(line: 605, column: 23, scope: !2195, inlinedAt: !2047)
!2195 = distinct !DILexicalBlock(scope: !2189, file: !1, line: 605, column: 18)
!2196 = !DILocation(line: 605, column: 18, scope: !2189, inlinedAt: !2047)
!2197 = !DILocation(line: 606, column: 29, scope: !2198, inlinedAt: !2047)
!2198 = distinct !DILexicalBlock(scope: !2195, file: !1, line: 605, column: 28)
!2199 = !DILocation(line: 606, column: 13, scope: !2198, inlinedAt: !2047)
!2200 = !DILocation(line: 610, column: 23, scope: !2201, inlinedAt: !2047)
!2201 = distinct !DILexicalBlock(scope: !2195, file: !1, line: 610, column: 18)
!2202 = !DILocation(line: 610, column: 18, scope: !2195, inlinedAt: !2047)
!2203 = !DILocation(line: 611, column: 29, scope: !2204, inlinedAt: !2047)
!2204 = distinct !DILexicalBlock(scope: !2201, file: !1, line: 610, column: 36)
!2205 = !DILocation(line: 611, column: 13, scope: !2204, inlinedAt: !2047)
!2206 = !DILocation(line: 616, column: 18, scope: !2201, inlinedAt: !2047)
!2207 = !DILocation(line: 616, column: 16, scope: !2201, inlinedAt: !2047)
!2208 = !DILocation(line: 622, column: 19, scope: !678, inlinedAt: !2047)
!2209 = !DILocation(line: 622, column: 19, scope: !2210, inlinedAt: !2047)
!2210 = !DILexicalBlockFile(scope: !678, file: !1, discriminator: 1)
!2211 = !DILocation(line: 622, column: 19, scope: !2212, inlinedAt: !2047)
!2212 = !DILexicalBlockFile(scope: !678, file: !1, discriminator: 2)
!2213 = !DILocation(line: 622, column: 19, scope: !2214, inlinedAt: !2047)
!2214 = !DILexicalBlockFile(scope: !2215, file: !1, discriminator: 4)
!2215 = !DILexicalBlockFile(scope: !678, file: !1, discriminator: 3)
!2216 = !DILocation(line: 622, column: 15, scope: !678, inlinedAt: !2047)
!2217 = !DILocation(line: 551, column: 9, scope: !2176, inlinedAt: !2218)
!2218 = distinct !DILocation(line: 624, column: 13, scope: !2219, inlinedAt: !2047)
!2219 = distinct !DILexicalBlock(scope: !678, file: !1, line: 624, column: 13)
!2220 = !DILocation(line: 551, column: 9, scope: !2180, inlinedAt: !2218)
!2221 = !DILocation(line: 551, column: 9, scope: !873, inlinedAt: !2218)
!2222 = !DILocation(line: 552, column: 25, scope: !2183, inlinedAt: !2218)
!2223 = !DILocation(line: 552, column: 9, scope: !2183, inlinedAt: !2218)
!2224 = !DILocation(line: 624, column: 13, scope: !678, inlinedAt: !2047)
!2225 = !DILocation(line: 626, column: 16, scope: !678, inlinedAt: !2047)
!2226 = !DILocation(line: 623, column: 14, scope: !678, inlinedAt: !2047)
!2227 = !DILocation(line: 627, column: 18, scope: !2228, inlinedAt: !2047)
!2228 = distinct !DILexicalBlock(scope: !678, file: !1, line: 627, column: 13)
!2229 = !DILocation(line: 627, column: 24, scope: !2228, inlinedAt: !2047)
!2230 = !DILocation(line: 627, column: 27, scope: !2231, inlinedAt: !2047)
!2231 = !DILexicalBlockFile(scope: !2228, file: !1, discriminator: 1)
!2232 = !DILocation(line: 627, column: 13, scope: !678, inlinedAt: !2047)
!2233 = !DILocation(line: 630, column: 18, scope: !2228, inlinedAt: !2047)
!2234 = !DILocation(line: 630, column: 16, scope: !2228, inlinedAt: !2047)
!2235 = !DILocation(line: 635, column: 20, scope: !681, inlinedAt: !2047)
!2236 = !DILocation(line: 635, column: 20, scope: !2237, inlinedAt: !2047)
!2237 = !DILexicalBlockFile(scope: !681, file: !1, discriminator: 1)
!2238 = !DILocation(line: 635, column: 20, scope: !2239, inlinedAt: !2047)
!2239 = !DILexicalBlockFile(scope: !681, file: !1, discriminator: 2)
!2240 = !DILocation(line: 635, column: 20, scope: !2241, inlinedAt: !2047)
!2241 = !DILexicalBlockFile(scope: !2242, file: !1, discriminator: 4)
!2242 = !DILexicalBlockFile(scope: !681, file: !1, discriminator: 3)
!2243 = !DILocation(line: 635, column: 16, scope: !681, inlinedAt: !2047)
!2244 = !DILocation(line: 551, column: 9, scope: !2176, inlinedAt: !2245)
!2245 = distinct !DILocation(line: 637, column: 13, scope: !2246, inlinedAt: !2047)
!2246 = distinct !DILexicalBlock(scope: !681, file: !1, line: 637, column: 13)
!2247 = !DILocation(line: 551, column: 9, scope: !2180, inlinedAt: !2245)
!2248 = !DILocation(line: 551, column: 9, scope: !873, inlinedAt: !2245)
!2249 = !DILocation(line: 552, column: 25, scope: !2183, inlinedAt: !2245)
!2250 = !DILocation(line: 552, column: 9, scope: !2183, inlinedAt: !2245)
!2251 = !DILocation(line: 637, column: 13, scope: !681, inlinedAt: !2047)
!2252 = !DILocation(line: 639, column: 16, scope: !681, inlinedAt: !2047)
!2253 = !DILocation(line: 636, column: 14, scope: !681, inlinedAt: !2047)
!2254 = !DILocation(line: 640, column: 18, scope: !2255, inlinedAt: !2047)
!2255 = distinct !DILexicalBlock(scope: !681, file: !1, line: 640, column: 13)
!2256 = !DILocation(line: 640, column: 24, scope: !2255, inlinedAt: !2047)
!2257 = !DILocation(line: 640, column: 27, scope: !2258, inlinedAt: !2047)
!2258 = !DILexicalBlockFile(scope: !2255, file: !1, discriminator: 1)
!2259 = !DILocation(line: 640, column: 13, scope: !681, inlinedAt: !2047)
!2260 = !DILocation(line: 642, column: 23, scope: !2261, inlinedAt: !2047)
!2261 = distinct !DILexicalBlock(scope: !2255, file: !1, line: 642, column: 18)
!2262 = !DILocation(line: 642, column: 18, scope: !2255, inlinedAt: !2047)
!2263 = !DILocation(line: 643, column: 29, scope: !2264, inlinedAt: !2047)
!2264 = distinct !DILexicalBlock(scope: !2261, file: !1, line: 642, column: 35)
!2265 = !DILocation(line: 643, column: 13, scope: !2264, inlinedAt: !2047)
!2266 = !DILocation(line: 647, column: 23, scope: !2267, inlinedAt: !2047)
!2267 = distinct !DILexicalBlock(scope: !2261, file: !1, line: 647, column: 18)
!2268 = !DILocation(line: 647, column: 18, scope: !2261, inlinedAt: !2047)
!2269 = !DILocation(line: 648, column: 29, scope: !2270, inlinedAt: !2047)
!2270 = distinct !DILexicalBlock(scope: !2267, file: !1, line: 647, column: 35)
!2271 = !DILocation(line: 648, column: 13, scope: !2270, inlinedAt: !2047)
!2272 = !DILocation(line: 653, column: 18, scope: !2267, inlinedAt: !2047)
!2273 = !DILocation(line: 653, column: 16, scope: !2267, inlinedAt: !2047)
!2274 = !{!2275, !2275, i64 0}
!2275 = !{!"short", !995, i64 0}
!2276 = !DILocation(line: 659, column: 29, scope: !685, inlinedAt: !2047)
!2277 = !DILocation(line: 659, column: 29, scope: !2278, inlinedAt: !2047)
!2278 = !DILexicalBlockFile(scope: !685, file: !1, discriminator: 1)
!2279 = !DILocation(line: 659, column: 29, scope: !2280, inlinedAt: !2047)
!2280 = !DILexicalBlockFile(scope: !685, file: !1, discriminator: 2)
!2281 = !DILocation(line: 659, column: 29, scope: !2282, inlinedAt: !2047)
!2282 = !DILexicalBlockFile(scope: !2283, file: !1, discriminator: 4)
!2283 = !DILexicalBlockFile(scope: !685, file: !1, discriminator: 3)
!2284 = !DILocation(line: 659, column: 25, scope: !685, inlinedAt: !2047)
!2285 = !DILocation(line: 551, column: 9, scope: !2176, inlinedAt: !2286)
!2286 = distinct !DILocation(line: 661, column: 13, scope: !2287, inlinedAt: !2047)
!2287 = distinct !DILexicalBlock(scope: !685, file: !1, line: 661, column: 13)
!2288 = !DILocation(line: 551, column: 9, scope: !2180, inlinedAt: !2286)
!2289 = !DILocation(line: 551, column: 9, scope: !873, inlinedAt: !2286)
!2290 = !DILocation(line: 552, column: 25, scope: !2183, inlinedAt: !2286)
!2291 = !DILocation(line: 552, column: 9, scope: !2183, inlinedAt: !2286)
!2292 = !DILocation(line: 661, column: 13, scope: !685, inlinedAt: !2047)
!2293 = !DILocation(line: 663, column: 16, scope: !685, inlinedAt: !2047)
!2294 = !DILocation(line: 660, column: 14, scope: !685, inlinedAt: !2047)
!2295 = !DILocation(line: 664, column: 18, scope: !2296, inlinedAt: !2047)
!2296 = distinct !DILexicalBlock(scope: !685, file: !1, line: 664, column: 13)
!2297 = !DILocation(line: 664, column: 24, scope: !2296, inlinedAt: !2047)
!2298 = !DILocation(line: 664, column: 27, scope: !2299, inlinedAt: !2047)
!2299 = !DILexicalBlockFile(scope: !2296, file: !1, discriminator: 1)
!2300 = !DILocation(line: 664, column: 13, scope: !685, inlinedAt: !2047)
!2301 = !DILocation(line: 667, column: 18, scope: !2296, inlinedAt: !2047)
!2302 = !DILocation(line: 667, column: 16, scope: !2296, inlinedAt: !2047)
!2303 = !DILocation(line: 672, column: 18, scope: !689, inlinedAt: !2047)
!2304 = !DILocation(line: 672, column: 18, scope: !2305, inlinedAt: !2047)
!2305 = !DILexicalBlockFile(scope: !689, file: !1, discriminator: 1)
!2306 = !DILocation(line: 672, column: 18, scope: !2307, inlinedAt: !2047)
!2307 = !DILexicalBlockFile(scope: !689, file: !1, discriminator: 2)
!2308 = !DILocation(line: 672, column: 18, scope: !2309, inlinedAt: !2047)
!2309 = !DILexicalBlockFile(scope: !2310, file: !1, discriminator: 4)
!2310 = !DILexicalBlockFile(scope: !689, file: !1, discriminator: 3)
!2311 = !DILocation(line: 672, column: 14, scope: !689, inlinedAt: !2047)
!2312 = !DILocation(line: 551, column: 9, scope: !2176, inlinedAt: !2313)
!2313 = distinct !DILocation(line: 674, column: 13, scope: !2314, inlinedAt: !2047)
!2314 = distinct !DILexicalBlock(scope: !689, file: !1, line: 674, column: 13)
!2315 = !DILocation(line: 551, column: 9, scope: !2180, inlinedAt: !2313)
!2316 = !DILocation(line: 551, column: 9, scope: !873, inlinedAt: !2313)
!2317 = !DILocation(line: 552, column: 25, scope: !2183, inlinedAt: !2313)
!2318 = !DILocation(line: 552, column: 9, scope: !2183, inlinedAt: !2313)
!2319 = !DILocation(line: 674, column: 13, scope: !689, inlinedAt: !2047)
!2320 = !DILocation(line: 676, column: 16, scope: !689, inlinedAt: !2047)
!2321 = !DILocation(line: 673, column: 14, scope: !689, inlinedAt: !2047)
!2322 = !DILocation(line: 677, column: 18, scope: !2323, inlinedAt: !2047)
!2323 = distinct !DILexicalBlock(scope: !689, file: !1, line: 677, column: 13)
!2324 = !DILocation(line: 677, column: 24, scope: !2323, inlinedAt: !2047)
!2325 = !DILocation(line: 677, column: 27, scope: !2326, inlinedAt: !2047)
!2326 = !DILexicalBlockFile(scope: !2323, file: !1, discriminator: 1)
!2327 = !DILocation(line: 677, column: 13, scope: !689, inlinedAt: !2047)
!2328 = !DILocation(line: 679, column: 23, scope: !2329, inlinedAt: !2047)
!2329 = distinct !DILexicalBlock(scope: !2323, file: !1, line: 679, column: 18)
!2330 = !DILocation(line: 679, column: 18, scope: !2323, inlinedAt: !2047)
!2331 = !DILocation(line: 680, column: 29, scope: !2332, inlinedAt: !2047)
!2332 = distinct !DILexicalBlock(scope: !2329, file: !1, line: 679, column: 34)
!2333 = !DILocation(line: 680, column: 13, scope: !2332, inlinedAt: !2047)
!2334 = !DILocation(line: 684, column: 23, scope: !2335, inlinedAt: !2047)
!2335 = distinct !DILexicalBlock(scope: !2329, file: !1, line: 684, column: 18)
!2336 = !DILocation(line: 684, column: 18, scope: !2329, inlinedAt: !2047)
!2337 = !DILocation(line: 685, column: 29, scope: !2338, inlinedAt: !2047)
!2338 = distinct !DILexicalBlock(scope: !2335, file: !1, line: 684, column: 34)
!2339 = !DILocation(line: 685, column: 13, scope: !2338, inlinedAt: !2047)
!2340 = !DILocation(line: 690, column: 18, scope: !2335, inlinedAt: !2047)
!2341 = !DILocation(line: 690, column: 16, scope: !2335, inlinedAt: !2047)
!2342 = !DILocation(line: 696, column: 27, scope: !692, inlinedAt: !2047)
!2343 = !DILocation(line: 696, column: 27, scope: !2344, inlinedAt: !2047)
!2344 = !DILexicalBlockFile(scope: !692, file: !1, discriminator: 1)
!2345 = !DILocation(line: 696, column: 27, scope: !2346, inlinedAt: !2047)
!2346 = !DILexicalBlockFile(scope: !692, file: !1, discriminator: 2)
!2347 = !DILocation(line: 696, column: 27, scope: !2348, inlinedAt: !2047)
!2348 = !DILexicalBlockFile(scope: !2349, file: !1, discriminator: 4)
!2349 = !DILexicalBlockFile(scope: !692, file: !1, discriminator: 3)
!2350 = !DILocation(line: 696, column: 23, scope: !692, inlinedAt: !2047)
!2351 = !DILocation(line: 551, column: 9, scope: !2176, inlinedAt: !2352)
!2352 = distinct !DILocation(line: 698, column: 13, scope: !2353, inlinedAt: !2047)
!2353 = distinct !DILexicalBlock(scope: !692, file: !1, line: 698, column: 13)
!2354 = !DILocation(line: 551, column: 9, scope: !2180, inlinedAt: !2352)
!2355 = !DILocation(line: 551, column: 9, scope: !873, inlinedAt: !2352)
!2356 = !DILocation(line: 552, column: 25, scope: !2183, inlinedAt: !2352)
!2357 = !DILocation(line: 552, column: 9, scope: !2183, inlinedAt: !2352)
!2358 = !DILocation(line: 698, column: 13, scope: !692, inlinedAt: !2047)
!2359 = !DILocation(line: 700, column: 30, scope: !692, inlinedAt: !2047)
!2360 = !DILocation(line: 700, column: 16, scope: !692, inlinedAt: !2047)
!2361 = !DILocation(line: 697, column: 22, scope: !692, inlinedAt: !2047)
!2362 = !DILocation(line: 701, column: 18, scope: !2363, inlinedAt: !2047)
!2363 = distinct !DILexicalBlock(scope: !692, file: !1, line: 701, column: 13)
!2364 = !DILocation(line: 701, column: 38, scope: !2363, inlinedAt: !2047)
!2365 = !DILocation(line: 701, column: 41, scope: !2366, inlinedAt: !2047)
!2366 = !DILexicalBlockFile(scope: !2363, file: !1, discriminator: 1)
!2367 = !DILocation(line: 701, column: 13, scope: !692, inlinedAt: !2047)
!2368 = !DILocation(line: 704, column: 16, scope: !2363, inlinedAt: !2047)
!2369 = !DILocation(line: 711, column: 25, scope: !696, inlinedAt: !2047)
!2370 = !DILocation(line: 711, column: 25, scope: !2371, inlinedAt: !2047)
!2371 = !DILexicalBlockFile(scope: !696, file: !1, discriminator: 1)
!2372 = !DILocation(line: 711, column: 25, scope: !2373, inlinedAt: !2047)
!2373 = !DILexicalBlockFile(scope: !696, file: !1, discriminator: 2)
!2374 = !DILocation(line: 711, column: 25, scope: !2375, inlinedAt: !2047)
!2375 = !DILexicalBlockFile(scope: !2376, file: !1, discriminator: 4)
!2376 = !DILexicalBlockFile(scope: !696, file: !1, discriminator: 3)
!2377 = !DILocation(line: 711, column: 21, scope: !696, inlinedAt: !2047)
!2378 = !DILocation(line: 712, column: 20, scope: !696, inlinedAt: !2047)
!2379 = !DILocation(line: 551, column: 9, scope: !2176, inlinedAt: !2380)
!2380 = distinct !DILocation(line: 713, column: 13, scope: !2381, inlinedAt: !2047)
!2381 = distinct !DILexicalBlock(scope: !696, file: !1, line: 713, column: 13)
!2382 = !DILocation(line: 551, column: 9, scope: !2180, inlinedAt: !2380)
!2383 = !DILocation(line: 551, column: 9, scope: !873, inlinedAt: !2380)
!2384 = !DILocation(line: 552, column: 25, scope: !2183, inlinedAt: !2380)
!2385 = !DILocation(line: 552, column: 9, scope: !2183, inlinedAt: !2380)
!2386 = !DILocation(line: 713, column: 13, scope: !696, inlinedAt: !2047)
!2387 = !DILocation(line: 715, column: 16, scope: !696, inlinedAt: !2047)
!2388 = !DILocation(line: 710, column: 19, scope: !696, inlinedAt: !2047)
!2389 = !DILocation(line: 716, column: 18, scope: !702, inlinedAt: !2047)
!2390 = !DILocation(line: 716, column: 13, scope: !696, inlinedAt: !2047)
!2391 = !DILocation(line: 717, column: 20, scope: !701, inlinedAt: !2047)
!2392 = !DILocation(line: 718, column: 13, scope: !2393, inlinedAt: !2047)
!2393 = !DILexicalBlockFile(scope: !700, file: !1, discriminator: 1)
!2394 = !DILocation(line: 718, column: 13, scope: !2395, inlinedAt: !2047)
!2395 = distinct !DILexicalBlock(scope: !700, file: !1, line: 718, column: 13)
!2396 = !DILocation(line: 718, column: 13, scope: !700, inlinedAt: !2047)
!2397 = !DILocation(line: 718, column: 13, scope: !2398, inlinedAt: !2047)
!2398 = !DILexicalBlockFile(scope: !2395, file: !1, discriminator: 3)
!2399 = !DILocation(line: 720, column: 18, scope: !2400, inlinedAt: !2047)
!2400 = distinct !DILexicalBlock(scope: !696, file: !1, line: 720, column: 13)
!2401 = !DILocation(line: 720, column: 24, scope: !2400, inlinedAt: !2047)
!2402 = !DILocation(line: 720, column: 27, scope: !2403, inlinedAt: !2047)
!2403 = !DILexicalBlockFile(scope: !2400, file: !1, discriminator: 1)
!2404 = !DILocation(line: 720, column: 13, scope: !696, inlinedAt: !2047)
!2405 = !DILocation(line: 722, column: 12, scope: !696, inlinedAt: !2047)
!2406 = !DILocation(line: 726, column: 19, scope: !704, inlinedAt: !2047)
!2407 = !DILocation(line: 726, column: 19, scope: !2408, inlinedAt: !2047)
!2408 = !DILexicalBlockFile(scope: !704, file: !1, discriminator: 1)
!2409 = !DILocation(line: 726, column: 19, scope: !2410, inlinedAt: !2047)
!2410 = !DILexicalBlockFile(scope: !704, file: !1, discriminator: 2)
!2411 = !DILocation(line: 726, column: 19, scope: !2412, inlinedAt: !2047)
!2412 = !DILexicalBlockFile(scope: !2413, file: !1, discriminator: 4)
!2413 = !DILexicalBlockFile(scope: !704, file: !1, discriminator: 3)
!2414 = !DILocation(line: 726, column: 15, scope: !704, inlinedAt: !2047)
!2415 = !DILocation(line: 551, column: 9, scope: !2176, inlinedAt: !2416)
!2416 = distinct !DILocation(line: 728, column: 13, scope: !2417, inlinedAt: !2047)
!2417 = distinct !DILexicalBlock(scope: !704, file: !1, line: 728, column: 13)
!2418 = !DILocation(line: 551, column: 9, scope: !2180, inlinedAt: !2416)
!2419 = !DILocation(line: 551, column: 9, scope: !873, inlinedAt: !2416)
!2420 = !DILocation(line: 552, column: 25, scope: !2183, inlinedAt: !2416)
!2421 = !DILocation(line: 552, column: 9, scope: !2183, inlinedAt: !2416)
!2422 = !DILocation(line: 728, column: 13, scope: !704, inlinedAt: !2047)
!2423 = !DILocation(line: 730, column: 16, scope: !704, inlinedAt: !2047)
!2424 = !DILocation(line: 727, column: 14, scope: !704, inlinedAt: !2047)
!2425 = !DILocation(line: 731, column: 18, scope: !2426, inlinedAt: !2047)
!2426 = distinct !DILexicalBlock(scope: !704, file: !1, line: 731, column: 13)
!2427 = !DILocation(line: 731, column: 24, scope: !2426, inlinedAt: !2047)
!2428 = !DILocation(line: 731, column: 27, scope: !2429, inlinedAt: !2047)
!2429 = !DILexicalBlockFile(scope: !2426, file: !1, discriminator: 1)
!2430 = !DILocation(line: 731, column: 13, scope: !704, inlinedAt: !2047)
!2431 = !DILocation(line: 734, column: 16, scope: !2426, inlinedAt: !2047)
!2432 = !DILocation(line: 739, column: 28, scope: !708, inlinedAt: !2047)
!2433 = !DILocation(line: 739, column: 28, scope: !2434, inlinedAt: !2047)
!2434 = !DILexicalBlockFile(scope: !708, file: !1, discriminator: 1)
!2435 = !DILocation(line: 739, column: 28, scope: !2436, inlinedAt: !2047)
!2436 = !DILexicalBlockFile(scope: !708, file: !1, discriminator: 2)
!2437 = !DILocation(line: 741, column: 13, scope: !2438, inlinedAt: !2047)
!2438 = distinct !DILexicalBlock(scope: !708, file: !1, line: 741, column: 13)
!2439 = !DILocation(line: 741, column: 13, scope: !708, inlinedAt: !2047)
!2440 = !DILocation(line: 739, column: 28, scope: !2441, inlinedAt: !2047)
!2441 = !DILexicalBlockFile(scope: !2442, file: !1, discriminator: 4)
!2442 = !DILexicalBlockFile(scope: !708, file: !1, discriminator: 3)
!2443 = !DILocation(line: 742, column: 20, scope: !2438, inlinedAt: !2047)
!2444 = !DILocation(line: 740, column: 23, scope: !708, inlinedAt: !2047)
!2445 = !DILocation(line: 745, column: 12, scope: !708, inlinedAt: !2047)
!2446 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !2447)
!2447 = distinct !DILocation(line: 744, column: 20, scope: !2438, inlinedAt: !2047)
!2448 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !2447)
!2449 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !2447)
!2450 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !2447)
!2451 = !DILocation(line: 540, column: 23, scope: !876, inlinedAt: !2447)
!2452 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !2447)
!2453 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !2447)
!2454 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !2447)
!2455 = !DILocation(line: 751, column: 27, scope: !712, inlinedAt: !2047)
!2456 = !DILocation(line: 751, column: 27, scope: !2457, inlinedAt: !2047)
!2457 = !DILexicalBlockFile(scope: !712, file: !1, discriminator: 1)
!2458 = !DILocation(line: 751, column: 27, scope: !2459, inlinedAt: !2047)
!2459 = !DILexicalBlockFile(scope: !712, file: !1, discriminator: 2)
!2460 = !DILocation(line: 751, column: 27, scope: !2461, inlinedAt: !2047)
!2461 = !DILexicalBlockFile(scope: !2462, file: !1, discriminator: 4)
!2462 = !DILexicalBlockFile(scope: !712, file: !1, discriminator: 3)
!2463 = !DILocation(line: 751, column: 23, scope: !712, inlinedAt: !2047)
!2464 = !DILocation(line: 551, column: 9, scope: !2176, inlinedAt: !2465)
!2465 = distinct !DILocation(line: 753, column: 13, scope: !2466, inlinedAt: !2047)
!2466 = distinct !DILexicalBlock(scope: !712, file: !1, line: 753, column: 13)
!2467 = !DILocation(line: 551, column: 9, scope: !2180, inlinedAt: !2465)
!2468 = !DILocation(line: 551, column: 9, scope: !873, inlinedAt: !2465)
!2469 = !DILocation(line: 552, column: 25, scope: !2183, inlinedAt: !2465)
!2470 = !DILocation(line: 552, column: 9, scope: !2183, inlinedAt: !2465)
!2471 = !DILocation(line: 753, column: 13, scope: !712, inlinedAt: !2047)
!2472 = !DILocation(line: 755, column: 16, scope: !712, inlinedAt: !2047)
!2473 = !DILocation(line: 752, column: 22, scope: !712, inlinedAt: !2047)
!2474 = !DILocation(line: 756, column: 18, scope: !2475, inlinedAt: !2047)
!2475 = distinct !DILexicalBlock(scope: !712, file: !1, line: 756, column: 13)
!2476 = !DILocation(line: 756, column: 38, scope: !2475, inlinedAt: !2047)
!2477 = !DILocation(line: 756, column: 41, scope: !2478, inlinedAt: !2047)
!2478 = !DILexicalBlockFile(scope: !2475, file: !1, discriminator: 1)
!2479 = !DILocation(line: 756, column: 13, scope: !712, inlinedAt: !2047)
!2480 = !DILocation(line: 759, column: 16, scope: !2475, inlinedAt: !2047)
!2481 = !{!2482, !2482, i64 0}
!2482 = !{!"long long", !995, i64 0}
!2483 = !DILocation(line: 764, column: 36, scope: !716, inlinedAt: !2047)
!2484 = !DILocation(line: 764, column: 36, scope: !2485, inlinedAt: !2047)
!2485 = !DILexicalBlockFile(scope: !716, file: !1, discriminator: 1)
!2486 = !DILocation(line: 764, column: 36, scope: !2487, inlinedAt: !2047)
!2487 = !DILexicalBlockFile(scope: !716, file: !1, discriminator: 2)
!2488 = !DILocation(line: 766, column: 13, scope: !2489, inlinedAt: !2047)
!2489 = distinct !DILexicalBlock(scope: !716, file: !1, line: 766, column: 13)
!2490 = !DILocation(line: 766, column: 13, scope: !716, inlinedAt: !2047)
!2491 = !DILocation(line: 764, column: 36, scope: !2492, inlinedAt: !2047)
!2492 = !DILexicalBlockFile(scope: !2493, file: !1, discriminator: 4)
!2493 = !DILexicalBlockFile(scope: !716, file: !1, discriminator: 3)
!2494 = !DILocation(line: 767, column: 20, scope: !2489, inlinedAt: !2047)
!2495 = !DILocation(line: 765, column: 31, scope: !716, inlinedAt: !2047)
!2496 = !DILocation(line: 770, column: 12, scope: !716, inlinedAt: !2047)
!2497 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 769, column: 20, scope: !2489, inlinedAt: !2047)
!2499 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !2498)
!2500 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !2498)
!2501 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !2498)
!2502 = !DILocation(line: 540, column: 23, scope: !876, inlinedAt: !2498)
!2503 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !2498)
!2504 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !2498)
!2505 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !2498)
!2506 = !DILocation(line: 776, column: 20, scope: !721, inlinedAt: !2047)
!2507 = !DILocation(line: 776, column: 20, scope: !2508, inlinedAt: !2047)
!2508 = !DILexicalBlockFile(scope: !721, file: !1, discriminator: 1)
!2509 = !DILocation(line: 776, column: 20, scope: !2510, inlinedAt: !2047)
!2510 = !DILexicalBlockFile(scope: !721, file: !1, discriminator: 2)
!2511 = !DILocation(line: 776, column: 20, scope: !2512, inlinedAt: !2047)
!2512 = !DILexicalBlockFile(scope: !2513, file: !1, discriminator: 4)
!2513 = !DILexicalBlockFile(scope: !721, file: !1, discriminator: 3)
!2514 = !DILocation(line: 776, column: 16, scope: !721, inlinedAt: !2047)
!2515 = !DILocation(line: 777, column: 23, scope: !721, inlinedAt: !2047)
!2516 = !DILocation(line: 777, column: 16, scope: !721, inlinedAt: !2047)
!2517 = !DILocation(line: 778, column: 13, scope: !2518, inlinedAt: !2047)
!2518 = distinct !DILexicalBlock(scope: !721, file: !1, line: 778, column: 13)
!2519 = !DILocation(line: 778, column: 13, scope: !721, inlinedAt: !2047)
!2520 = !DILocation(line: 781, column: 18, scope: !2518, inlinedAt: !2047)
!2521 = !DILocation(line: 781, column: 16, scope: !2518, inlinedAt: !2047)
!2522 = !{!2523, !2523, i64 0}
!2523 = !{!"float", !995, i64 0}
!2524 = !DILocation(line: 786, column: 21, scope: !726, inlinedAt: !2047)
!2525 = !DILocation(line: 786, column: 21, scope: !2526, inlinedAt: !2047)
!2526 = !DILexicalBlockFile(scope: !726, file: !1, discriminator: 1)
!2527 = !DILocation(line: 786, column: 21, scope: !2528, inlinedAt: !2047)
!2528 = !DILexicalBlockFile(scope: !726, file: !1, discriminator: 2)
!2529 = !DILocation(line: 786, column: 21, scope: !2530, inlinedAt: !2047)
!2530 = !DILexicalBlockFile(scope: !2531, file: !1, discriminator: 4)
!2531 = !DILexicalBlockFile(scope: !726, file: !1, discriminator: 3)
!2532 = !DILocation(line: 786, column: 17, scope: !726, inlinedAt: !2047)
!2533 = !DILocation(line: 787, column: 23, scope: !726, inlinedAt: !2047)
!2534 = !DILocation(line: 787, column: 16, scope: !726, inlinedAt: !2047)
!2535 = !DILocation(line: 788, column: 13, scope: !2536, inlinedAt: !2047)
!2536 = distinct !DILexicalBlock(scope: !726, file: !1, line: 788, column: 13)
!2537 = !DILocation(line: 788, column: 13, scope: !726, inlinedAt: !2047)
!2538 = !DILocation(line: 791, column: 16, scope: !2536, inlinedAt: !2047)
!2539 = !{!2540, !2540, i64 0}
!2540 = !{!"double", !995, i64 0}
!2541 = !DILocation(line: 796, column: 25, scope: !730, inlinedAt: !2047)
!2542 = !DILocation(line: 796, column: 25, scope: !2543, inlinedAt: !2047)
!2543 = !DILexicalBlockFile(scope: !730, file: !1, discriminator: 1)
!2544 = !DILocation(line: 796, column: 25, scope: !2545, inlinedAt: !2047)
!2545 = !DILexicalBlockFile(scope: !730, file: !1, discriminator: 2)
!2546 = !DILocation(line: 796, column: 25, scope: !2547, inlinedAt: !2047)
!2547 = !DILexicalBlockFile(scope: !2548, file: !1, discriminator: 4)
!2548 = !DILexicalBlockFile(scope: !730, file: !1, discriminator: 3)
!2549 = !DILocation(line: 796, column: 21, scope: !730, inlinedAt: !2047)
!2550 = !DILocation(line: 797, column: 20, scope: !730, inlinedAt: !2047)
!2551 = !DILocation(line: 798, column: 16, scope: !730, inlinedAt: !2047)
!2552 = !DILocation(line: 799, column: 13, scope: !2553, inlinedAt: !2047)
!2553 = distinct !DILexicalBlock(scope: !730, file: !1, line: 799, column: 13)
!2554 = !DILocation(line: 799, column: 13, scope: !730, inlinedAt: !2047)
!2555 = !DILocation(line: 802, column: 18, scope: !2553, inlinedAt: !2047)
!2556 = !DILocation(line: 807, column: 19, scope: !740, inlinedAt: !2047)
!2557 = !DILocation(line: 807, column: 19, scope: !2558, inlinedAt: !2047)
!2558 = !DILexicalBlockFile(scope: !740, file: !1, discriminator: 1)
!2559 = !DILocation(line: 807, column: 19, scope: !2560, inlinedAt: !2047)
!2560 = !DILexicalBlockFile(scope: !740, file: !1, discriminator: 2)
!2561 = !DILocation(line: 807, column: 19, scope: !2562, inlinedAt: !2047)
!2562 = !DILexicalBlockFile(scope: !2563, file: !1, discriminator: 4)
!2563 = !DILexicalBlockFile(scope: !740, file: !1, discriminator: 3)
!2564 = !DILocation(line: 807, column: 15, scope: !740, inlinedAt: !2047)
!2565 = !DILocation(line: 808, column: 13, scope: !2566, inlinedAt: !2047)
!2566 = distinct !DILexicalBlock(scope: !740, file: !1, line: 808, column: 13)
!2567 = !DILocation(line: 808, column: 32, scope: !2566, inlinedAt: !2047)
!2568 = !DILocation(line: 808, column: 35, scope: !2566, inlinedAt: !2047)
!2569 = !DILocation(line: 808, column: 53, scope: !2566, inlinedAt: !2047)
!2570 = !DILocation(line: 808, column: 13, scope: !740, inlinedAt: !2047)
!2571 = !DILocation(line: 809, column: 18, scope: !2566, inlinedAt: !2047)
!2572 = !DILocation(line: 809, column: 13, scope: !2566, inlinedAt: !2047)
!2573 = !DILocation(line: 810, column: 18, scope: !2574, inlinedAt: !2047)
!2574 = distinct !DILexicalBlock(scope: !2566, file: !1, line: 810, column: 18)
!2575 = !DILocation(line: 810, column: 18, scope: !2576, inlinedAt: !2047)
!2576 = !DILexicalBlockFile(scope: !2574, file: !1, discriminator: 2)
!2577 = !DILocation(line: 810, column: 41, scope: !2574, inlinedAt: !2047)
!2578 = !DILocation(line: 810, column: 44, scope: !2574, inlinedAt: !2047)
!2579 = !DILocation(line: 810, column: 66, scope: !2574, inlinedAt: !2047)
!2580 = !DILocation(line: 810, column: 18, scope: !2566, inlinedAt: !2047)
!2581 = !DILocation(line: 811, column: 18, scope: !2574, inlinedAt: !2047)
!2582 = !DILocation(line: 811, column: 18, scope: !2583, inlinedAt: !2047)
!2583 = !DILexicalBlockFile(scope: !2574, file: !1, discriminator: 1)
!2584 = !{!2585, !994, i64 40}
!2585 = !{!"", !1184, i64 0, !1181, i64 24, !994, i64 32, !994, i64 40, !1020, i64 48}
!2586 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !2587)
!2587 = distinct !DILocation(line: 813, column: 20, scope: !2574, inlinedAt: !2047)
!2588 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !2587)
!2589 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !2587)
!2590 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !2587)
!2591 = !DILocation(line: 540, column: 23, scope: !876, inlinedAt: !2587)
!2592 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !2587)
!2593 = !DILocation(line: 540, column: 50, scope: !876, inlinedAt: !2587)
!2594 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !2587)
!2595 = !DILocation(line: 811, column: 18, scope: !2596, inlinedAt: !2047)
!2596 = !DILexicalBlockFile(scope: !2597, file: !1, discriminator: 4)
!2597 = !DILexicalBlockFile(scope: !2574, file: !1, discriminator: 3)
!2598 = !DILocation(line: 809, column: 16, scope: !2566, inlinedAt: !2047)
!2599 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !2587)
!2600 = !DILocation(line: 818, column: 18, scope: !742, inlinedAt: !2047)
!2601 = !DILocation(line: 818, column: 18, scope: !2602, inlinedAt: !2047)
!2602 = !DILexicalBlockFile(scope: !742, file: !1, discriminator: 1)
!2603 = !DILocation(line: 818, column: 18, scope: !2604, inlinedAt: !2047)
!2604 = !DILexicalBlockFile(scope: !742, file: !1, discriminator: 2)
!2605 = !DILocation(line: 818, column: 18, scope: !2606, inlinedAt: !2047)
!2606 = !DILexicalBlockFile(scope: !2607, file: !1, discriminator: 4)
!2607 = !DILexicalBlockFile(scope: !742, file: !1, discriminator: 3)
!2608 = !DILocation(line: 818, column: 14, scope: !742, inlinedAt: !2047)
!2609 = !DILocation(line: 822, column: 14, scope: !2610, inlinedAt: !2047)
!2610 = distinct !DILexicalBlock(scope: !742, file: !1, line: 822, column: 13)
!2611 = !DILocation(line: 822, column: 13, scope: !742, inlinedAt: !2047)
!2612 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !2613)
!2613 = distinct !DILocation(line: 823, column: 20, scope: !2610, inlinedAt: !2047)
!2614 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !2613)
!2615 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !2613)
!2616 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !2613)
!2617 = !DILocation(line: 540, column: 23, scope: !876, inlinedAt: !2613)
!2618 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !2613)
!2619 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !2613)
!2620 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !2613)
!2621 = !DILocation(line: 823, column: 13, scope: !2610, inlinedAt: !2047)
!2622 = !DILocation(line: 825, column: 13, scope: !2623, inlinedAt: !2047)
!2623 = distinct !DILexicalBlock(scope: !742, file: !1, line: 825, column: 13)
!2624 = !DILocation(line: 825, column: 13, scope: !2625, inlinedAt: !2047)
!2625 = !DILexicalBlockFile(scope: !2623, file: !1, discriminator: 2)
!2626 = !DILocation(line: 825, column: 13, scope: !742, inlinedAt: !2047)
!2627 = !DILocation(line: 828, column: 13, scope: !2628, inlinedAt: !2047)
!2628 = distinct !DILexicalBlock(scope: !742, file: !1, line: 828, column: 13)
!2629 = !{!2630, !1181, i64 16}
!2630 = !{!"", !1180, i64 0, !1181, i64 16, !1181, i64 24, !2631, i64 32, !994, i64 40}
!2631 = !{!"", !1020, i64 0, !1020, i64 0, !1020, i64 0, !1020, i64 0, !1020, i64 0, !1020, i64 1}
!2632 = !DILocation(line: 828, column: 39, scope: !2628, inlinedAt: !2047)
!2633 = !DILocation(line: 828, column: 13, scope: !742, inlinedAt: !2047)
!2634 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !2635)
!2635 = distinct !DILocation(line: 829, column: 20, scope: !2628, inlinedAt: !2047)
!2636 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !2635)
!2637 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !2635)
!2638 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !2635)
!2639 = !DILocation(line: 540, column: 23, scope: !876, inlinedAt: !2635)
!2640 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !2635)
!2641 = !DILocation(line: 540, column: 50, scope: !876, inlinedAt: !2635)
!2642 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !2635)
!2643 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !2635)
!2644 = !DILocation(line: 829, column: 13, scope: !2628, inlinedAt: !2047)
!2645 = !DILocation(line: 831, column: 16, scope: !742, inlinedAt: !2047)
!2646 = !DILocation(line: 819, column: 13, scope: !742, inlinedAt: !2047)
!2647 = !DILocation(line: 832, column: 16, scope: !742, inlinedAt: !2047)
!2648 = !DILocation(line: 832, column: 16, scope: !2602, inlinedAt: !2047)
!2649 = !DILocation(line: 832, column: 16, scope: !2607, inlinedAt: !2047)
!2650 = !DILocation(line: 832, column: 16, scope: !2651, inlinedAt: !2047)
!2651 = !DILexicalBlockFile(scope: !742, file: !1, discriminator: 4)
!2652 = !DILocation(line: 832, column: 16, scope: !2604, inlinedAt: !2047)
!2653 = !DILocation(line: 820, column: 15, scope: !742, inlinedAt: !2047)
!2654 = !DILocation(line: 833, column: 14, scope: !742, inlinedAt: !2047)
!2655 = !DILocation(line: 833, column: 14, scope: !2602, inlinedAt: !2047)
!2656 = !DILocation(line: 833, column: 14, scope: !2651, inlinedAt: !2047)
!2657 = !DILocation(line: 833, column: 14, scope: !2658, inlinedAt: !2047)
!2658 = !DILexicalBlockFile(scope: !742, file: !1, discriminator: 5)
!2659 = !DILocation(line: 833, column: 12, scope: !742, inlinedAt: !2047)
!2660 = !DILocation(line: 838, column: 18, scope: !746, inlinedAt: !2047)
!2661 = !DILocation(line: 838, column: 18, scope: !2662, inlinedAt: !2047)
!2662 = !DILexicalBlockFile(scope: !746, file: !1, discriminator: 1)
!2663 = !DILocation(line: 838, column: 18, scope: !2664, inlinedAt: !2047)
!2664 = !DILexicalBlockFile(scope: !746, file: !1, discriminator: 2)
!2665 = !DILocation(line: 838, column: 18, scope: !2666, inlinedAt: !2047)
!2666 = !DILexicalBlockFile(scope: !2667, file: !1, discriminator: 4)
!2667 = !DILexicalBlockFile(scope: !746, file: !1, discriminator: 3)
!2668 = !DILocation(line: 838, column: 14, scope: !746, inlinedAt: !2047)
!2669 = !DILocation(line: 839, column: 19, scope: !746, inlinedAt: !2047)
!2670 = !DILocation(line: 839, column: 13, scope: !746, inlinedAt: !2047)
!2671 = !DILocation(line: 840, column: 17, scope: !2672, inlinedAt: !2047)
!2672 = distinct !DILexicalBlock(scope: !746, file: !1, line: 840, column: 13)
!2673 = !DILocation(line: 840, column: 13, scope: !746, inlinedAt: !2047)
!2674 = !DILocation(line: 842, column: 22, scope: !2675, inlinedAt: !2047)
!2675 = distinct !DILexicalBlock(scope: !2672, file: !1, line: 842, column: 18)
!2676 = !DILocation(line: 842, column: 18, scope: !2672, inlinedAt: !2047)
!2677 = !DILocation(line: 841, column: 16, scope: !2672, inlinedAt: !2047)
!2678 = !DILocation(line: 853, column: 29, scope: !749, inlinedAt: !2047)
!2679 = !DILocation(line: 853, column: 29, scope: !2680, inlinedAt: !2047)
!2680 = !DILexicalBlockFile(scope: !749, file: !1, discriminator: 1)
!2681 = !DILocation(line: 853, column: 29, scope: !2682, inlinedAt: !2047)
!2682 = !DILexicalBlockFile(scope: !749, file: !1, discriminator: 2)
!2683 = !DILocation(line: 853, column: 29, scope: !2684, inlinedAt: !2047)
!2684 = !DILexicalBlockFile(scope: !2685, file: !1, discriminator: 4)
!2685 = !DILexicalBlockFile(scope: !749, file: !1, discriminator: 3)
!2686 = !DILocation(line: 853, column: 16, scope: !749, inlinedAt: !2047)
!2687 = !DILocation(line: 856, column: 13, scope: !2688, inlinedAt: !2047)
!2688 = distinct !DILexicalBlock(scope: !749, file: !1, line: 856, column: 13)
!2689 = !DILocation(line: 856, column: 21, scope: !2688, inlinedAt: !2047)
!2690 = !DILocation(line: 856, column: 13, scope: !749, inlinedAt: !2047)
!2691 = !DILocation(line: 857, column: 32, scope: !2692, inlinedAt: !2047)
!2692 = distinct !DILexicalBlock(scope: !2693, file: !1, line: 857, column: 17)
!2693 = distinct !DILexicalBlock(scope: !2688, file: !1, line: 856, column: 29)
!2694 = !DILocation(line: 1299, column: 21, scope: !884, inlinedAt: !2695)
!2695 = distinct !DILocation(line: 857, column: 17, scope: !2692, inlinedAt: !2047)
!2696 = !DILocation(line: 1299, column: 37, scope: !884, inlinedAt: !2695)
!2697 = !DILocation(line: 1301, column: 9, scope: !2698, inlinedAt: !2695)
!2698 = distinct !DILexicalBlock(scope: !884, file: !1, line: 1301, column: 9)
!2699 = !DILocation(line: 1301, column: 53, scope: !2698, inlinedAt: !2695)
!2700 = !DILocation(line: 1301, column: 9, scope: !884, inlinedAt: !2695)
!2701 = !DILocation(line: 1305, column: 10, scope: !2702, inlinedAt: !2695)
!2702 = distinct !DILexicalBlock(scope: !884, file: !1, line: 1305, column: 9)
!2703 = !DILocation(line: 1305, column: 9, scope: !884, inlinedAt: !2695)
!2704 = !DILocation(line: 1306, column: 9, scope: !2705, inlinedAt: !2695)
!2705 = distinct !DILexicalBlock(scope: !2702, file: !1, line: 1305, column: 44)
!2706 = !DILocation(line: 1299, column: 50, scope: !884, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 1290, column: 9, scope: !2708, inlinedAt: !2709)
!2708 = distinct !DILexicalBlock(scope: !904, file: !1, line: 1290, column: 9)
!2709 = distinct !DILocation(line: 867, column: 17, scope: !749, inlinedAt: !2047)
!2710 = !DILocation(line: 1277, column: 47, scope: !904, inlinedAt: !2709)
!2711 = !DILocation(line: 1299, column: 50, scope: !884, inlinedAt: !2695)
!2712 = !DILocation(line: 854, column: 15, scope: !749, inlinedAt: !2047)
!2713 = !DILocation(line: 1308, column: 9, scope: !2705, inlinedAt: !2695)
!2714 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !2715)
!2715 = distinct !DILocation(line: 858, column: 24, scope: !2692, inlinedAt: !2047)
!2716 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !2715)
!2717 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !2715)
!2718 = !DILocation(line: 540, column: 23, scope: !876, inlinedAt: !2715)
!2719 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !2715)
!2720 = !DILocation(line: 540, column: 50, scope: !876, inlinedAt: !2715)
!2721 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !2715)
!2722 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !2715)
!2723 = !DILocation(line: 858, column: 17, scope: !2692, inlinedAt: !2047)
!2724 = !DILocation(line: 169, column: 23, scope: !891, inlinedAt: !2725)
!2725 = distinct !DILocation(line: 860, column: 17, scope: !2726, inlinedAt: !2047)
!2726 = distinct !DILexicalBlock(scope: !2693, file: !1, line: 860, column: 17)
!2727 = !DILocation(line: 167, column: 9, scope: !891, inlinedAt: !2725)
!2728 = !DILocation(line: 170, column: 31, scope: !891, inlinedAt: !2725)
!2729 = !DILocation(line: 172, column: 5, scope: !891, inlinedAt: !2725)
!2730 = !DILocation(line: 172, column: 15, scope: !891, inlinedAt: !2725)
!2731 = !DILocation(line: 172, column: 30, scope: !891, inlinedAt: !2725)
!2732 = !DILocation(line: 172, column: 35, scope: !891, inlinedAt: !2725)
!2733 = !DILocation(line: 173, column: 30, scope: !891, inlinedAt: !2725)
!2734 = !DILocation(line: 173, column: 41, scope: !891, inlinedAt: !2725)
!2735 = !DILocation(line: 859, column: 19, scope: !2693, inlinedAt: !2047)
!2736 = !DILocation(line: 865, column: 13, scope: !2693, inlinedAt: !2047)
!2737 = !DILocation(line: 1277, column: 25, scope: !904, inlinedAt: !2709)
!2738 = !DILocation(line: 1277, column: 37, scope: !904, inlinedAt: !2709)
!2739 = !DILocation(line: 1279, column: 25, scope: !904, inlinedAt: !2709)
!2740 = !DILocation(line: 1279, column: 39, scope: !904, inlinedAt: !2709)
!2741 = !{!1183, !994, i64 160}
!2742 = !DILocation(line: 1279, column: 20, scope: !904, inlinedAt: !2709)
!2743 = !DILocation(line: 1281, column: 5, scope: !904, inlinedAt: !2709)
!2744 = !DILocation(line: 1284, column: 8, scope: !904, inlinedAt: !2709)
!2745 = !DILocation(line: 1285, column: 12, scope: !2746, inlinedAt: !2709)
!2746 = distinct !DILexicalBlock(scope: !904, file: !1, line: 1285, column: 9)
!2747 = !DILocation(line: 1285, column: 20, scope: !2746, inlinedAt: !2709)
!2748 = !DILocation(line: 1285, column: 27, scope: !2746, inlinedAt: !2709)
!2749 = !DILocation(line: 1285, column: 44, scope: !2746, inlinedAt: !2709)
!2750 = !DILocation(line: 1285, column: 9, scope: !904, inlinedAt: !2709)
!2751 = !DILocation(line: 1281, column: 15, scope: !904, inlinedAt: !2709)
!2752 = !DILocation(line: 1299, column: 21, scope: !884, inlinedAt: !2707)
!2753 = !DILocation(line: 1299, column: 37, scope: !884, inlinedAt: !2707)
!2754 = !DILocation(line: 1301, column: 9, scope: !2698, inlinedAt: !2707)
!2755 = !DILocation(line: 1301, column: 53, scope: !2698, inlinedAt: !2707)
!2756 = !DILocation(line: 1301, column: 9, scope: !884, inlinedAt: !2707)
!2757 = !DILocation(line: 1305, column: 10, scope: !2702, inlinedAt: !2707)
!2758 = !DILocation(line: 1305, column: 9, scope: !884, inlinedAt: !2707)
!2759 = !DILocation(line: 1306, column: 9, scope: !2705, inlinedAt: !2707)
!2760 = !DILocation(line: 1308, column: 9, scope: !2705, inlinedAt: !2707)
!2761 = !DILocation(line: 1296, column: 1, scope: !904, inlinedAt: !2709)
!2762 = !DILocation(line: 868, column: 13, scope: !749, inlinedAt: !2047)
!2763 = !DILocation(line: 1292, column: 18, scope: !904, inlinedAt: !2709)
!2764 = !{!2765, !1181, i64 16}
!2765 = !{!"bufferinfo", !994, i64 0, !994, i64 8, !1181, i64 16, !1181, i64 24, !1020, i64 32, !1020, i64 36, !994, i64 40, !994, i64 48, !994, i64 56, !994, i64 64, !994, i64 72}
!2766 = !DILocation(line: 1293, column: 15, scope: !904, inlinedAt: !2709)
!2767 = !{!2765, !994, i64 0}
!2768 = !DILocation(line: 1293, column: 8, scope: !904, inlinedAt: !2709)
!2769 = !DILocation(line: 1294, column: 5, scope: !904, inlinedAt: !2709)
!2770 = !DILocation(line: 868, column: 19, scope: !2771, inlinedAt: !2047)
!2771 = distinct !DILexicalBlock(scope: !749, file: !1, line: 868, column: 13)
!2772 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !2773)
!2773 = distinct !DILocation(line: 869, column: 20, scope: !2771, inlinedAt: !2047)
!2774 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !2773)
!2775 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !2773)
!2776 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !2773)
!2777 = !DILocation(line: 540, column: 23, scope: !876, inlinedAt: !2773)
!2778 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !2773)
!2779 = !DILocation(line: 540, column: 50, scope: !876, inlinedAt: !2773)
!2780 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !2773)
!2781 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !2773)
!2782 = !DILocation(line: 869, column: 13, scope: !2771, inlinedAt: !2047)
!2783 = !DILocation(line: 870, column: 13, scope: !754, inlinedAt: !2047)
!2784 = !DILocation(line: 870, column: 21, scope: !754, inlinedAt: !2047)
!2785 = !DILocation(line: 870, column: 13, scope: !749, inlinedAt: !2047)
!2786 = !DILocation(line: 871, column: 13, scope: !753, inlinedAt: !2047)
!2787 = !DILocation(line: 871, column: 13, scope: !2788, inlinedAt: !2047)
!2788 = distinct !DILexicalBlock(scope: !753, file: !1, line: 871, column: 13)
!2789 = !DILocation(line: 871, column: 13, scope: !2790, inlinedAt: !2047)
!2790 = !DILexicalBlockFile(scope: !2788, file: !1, discriminator: 1)
!2791 = !DILocation(line: 871, column: 13, scope: !2792, inlinedAt: !2047)
!2792 = !DILexicalBlockFile(scope: !2788, file: !1, discriminator: 3)
!2793 = !DILocation(line: 871, column: 13, scope: !2794, inlinedAt: !2047)
!2794 = !DILexicalBlockFile(scope: !2788, file: !1, discriminator: 4)
!2795 = !DILocation(line: 871, column: 13, scope: !2796, inlinedAt: !2047)
!2796 = !DILexicalBlockFile(scope: !2788, file: !1, discriminator: 2)
!2797 = !DILocation(line: 871, column: 13, scope: !2798, inlinedAt: !2047)
!2798 = !DILexicalBlockFile(scope: !2788, file: !1, discriminator: 7)
!2799 = !DILocation(line: 871, column: 13, scope: !2800, inlinedAt: !2047)
!2800 = !DILexicalBlockFile(scope: !2788, file: !1, discriminator: 8)
!2801 = !DILocation(line: 871, column: 13, scope: !2802, inlinedAt: !2047)
!2802 = !DILexicalBlockFile(scope: !2803, file: !1, discriminator: 6)
!2803 = !DILexicalBlockFile(scope: !2788, file: !1, discriminator: 5)
!2804 = !DILocation(line: 872, column: 13, scope: !2805, inlinedAt: !2047)
!2805 = !DILexicalBlockFile(scope: !2806, file: !1, discriminator: 1)
!2806 = distinct !DILexicalBlock(scope: !753, file: !1, line: 872, column: 13)
!2807 = !DILocation(line: 872, column: 13, scope: !2808, inlinedAt: !2047)
!2808 = !DILexicalBlockFile(scope: !2809, file: !1, discriminator: 2)
!2809 = distinct !DILexicalBlock(scope: !2810, file: !1, line: 872, column: 13)
!2810 = distinct !DILexicalBlock(scope: !2806, file: !1, line: 872, column: 13)
!2811 = !DILocation(line: 872, column: 13, scope: !2810, inlinedAt: !2047)
!2812 = !DILocation(line: 872, column: 13, scope: !2813, inlinedAt: !2047)
!2813 = !DILexicalBlockFile(scope: !2814, file: !1, discriminator: 3)
!2814 = distinct !DILexicalBlock(scope: !2809, file: !1, line: 872, column: 13)
!2815 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !2816)
!2816 = distinct !DILocation(line: 872, column: 13, scope: !2813, inlinedAt: !2047)
!2817 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !2816)
!2818 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !2816)
!2819 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !2816)
!2820 = !DILocation(line: 540, column: 23, scope: !876, inlinedAt: !2816)
!2821 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !2816)
!2822 = !DILocation(line: 540, column: 50, scope: !876, inlinedAt: !2816)
!2823 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !2816)
!2824 = !DILocation(line: 871, column: 13, scope: !2825, inlinedAt: !2047)
!2825 = !DILexicalBlockFile(scope: !2826, file: !1, discriminator: 10)
!2826 = !DILexicalBlockFile(scope: !2788, file: !1, discriminator: 9)
!2827 = !DILocation(line: 872, column: 13, scope: !2828, inlinedAt: !2047)
!2828 = !DILexicalBlockFile(scope: !2810, file: !1, discriminator: 4)
!2829 = !DILocation(line: 873, column: 19, scope: !753, inlinedAt: !2047)
!2830 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !2816)
!2831 = !DILocation(line: 875, column: 24, scope: !2832, inlinedAt: !2047)
!2832 = distinct !DILexicalBlock(scope: !2833, file: !1, line: 875, column: 17)
!2833 = distinct !DILexicalBlock(scope: !754, file: !1, line: 874, column: 16)
!2834 = !DILocation(line: 875, column: 17, scope: !2832, inlinedAt: !2047)
!2835 = !DILocation(line: 875, column: 28, scope: !2832, inlinedAt: !2047)
!2836 = !DILocation(line: 875, column: 17, scope: !2833, inlinedAt: !2047)
!2837 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !2838)
!2838 = distinct !DILocation(line: 876, column: 24, scope: !2832, inlinedAt: !2047)
!2839 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !2838)
!2840 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !2838)
!2841 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !2838)
!2842 = !DILocation(line: 540, column: 23, scope: !876, inlinedAt: !2838)
!2843 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !2838)
!2844 = !DILocation(line: 540, column: 50, scope: !876, inlinedAt: !2838)
!2845 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !2838)
!2846 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !2838)
!2847 = !DILocation(line: 876, column: 17, scope: !2832, inlinedAt: !2047)
!2848 = !DILocation(line: 886, column: 13, scope: !758, inlinedAt: !2047)
!2849 = !DILocation(line: 886, column: 13, scope: !759, inlinedAt: !2047)
!2850 = !DILocation(line: 888, column: 41, scope: !757, inlinedAt: !2047)
!2851 = !DILocation(line: 888, column: 41, scope: !2852, inlinedAt: !2047)
!2852 = !DILexicalBlockFile(scope: !757, file: !1, discriminator: 1)
!2853 = !DILocation(line: 888, column: 41, scope: !2854, inlinedAt: !2047)
!2854 = !DILexicalBlockFile(scope: !757, file: !1, discriminator: 2)
!2855 = !DILocation(line: 888, column: 41, scope: !2856, inlinedAt: !2047)
!2856 = !DILexicalBlockFile(scope: !2857, file: !1, discriminator: 4)
!2857 = !DILexicalBlockFile(scope: !757, file: !1, discriminator: 3)
!2858 = !DILocation(line: 888, column: 24, scope: !757, inlinedAt: !2047)
!2859 = !DILocation(line: 890, column: 19, scope: !763, inlinedAt: !2047)
!2860 = !DILocation(line: 890, column: 33, scope: !763, inlinedAt: !2047)
!2861 = !DILocation(line: 890, column: 26, scope: !763, inlinedAt: !2047)
!2862 = !DILocation(line: 891, column: 17, scope: !763, inlinedAt: !2047)
!2863 = !DILocation(line: 892, column: 22, scope: !762, inlinedAt: !2047)
!2864 = !DILocation(line: 892, column: 22, scope: !763, inlinedAt: !2047)
!2865 = !DILocation(line: 893, column: 17, scope: !761, inlinedAt: !2047)
!2866 = !DILocation(line: 893, column: 28, scope: !761, inlinedAt: !2047)
!2867 = !DILocation(line: 894, column: 24, scope: !761, inlinedAt: !2047)
!2868 = !DILocation(line: 593, column: 11, scope: !659, inlinedAt: !2047)
!2869 = !DILocation(line: 895, column: 26, scope: !2870, inlinedAt: !2047)
!2870 = distinct !DILexicalBlock(scope: !761, file: !1, line: 895, column: 21)
!2871 = !DILocation(line: 895, column: 21, scope: !761, inlinedAt: !2047)
!2872 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !2873)
!2873 = distinct !DILocation(line: 896, column: 28, scope: !2870, inlinedAt: !2047)
!2874 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !2873)
!2875 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !2873)
!2876 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !2873)
!2877 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !2873)
!2878 = !DILocation(line: 540, column: 50, scope: !876, inlinedAt: !2873)
!2879 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !2873)
!2880 = !DILocation(line: 898, column: 49, scope: !761, inlinedAt: !2047)
!2881 = !DILocation(line: 898, column: 17, scope: !761, inlinedAt: !2047)
!2882 = !DILocation(line: 899, column: 13, scope: !2883, inlinedAt: !2047)
!2883 = !DILexicalBlockFile(scope: !762, file: !1, discriminator: 1)
!2884 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !2873)
!2885 = !DILocation(line: 1299, column: 21, scope: !884, inlinedAt: !2886)
!2886 = distinct !DILocation(line: 902, column: 21, scope: !2887, inlinedAt: !2047)
!2887 = distinct !DILexicalBlock(scope: !765, file: !1, line: 902, column: 21)
!2888 = !DILocation(line: 1299, column: 37, scope: !884, inlinedAt: !2886)
!2889 = !DILocation(line: 1301, column: 9, scope: !2698, inlinedAt: !2886)
!2890 = !DILocation(line: 1301, column: 53, scope: !2698, inlinedAt: !2886)
!2891 = !DILocation(line: 1301, column: 9, scope: !884, inlinedAt: !2886)
!2892 = !DILocation(line: 1305, column: 10, scope: !2702, inlinedAt: !2886)
!2893 = !DILocation(line: 1305, column: 9, scope: !884, inlinedAt: !2886)
!2894 = !DILocation(line: 1306, column: 9, scope: !2705, inlinedAt: !2886)
!2895 = !DILocation(line: 1299, column: 50, scope: !884, inlinedAt: !2886)
!2896 = !DILocation(line: 901, column: 23, scope: !765, inlinedAt: !2047)
!2897 = !DILocation(line: 1308, column: 9, scope: !2705, inlinedAt: !2886)
!2898 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !2899)
!2899 = distinct !DILocation(line: 903, column: 28, scope: !2887, inlinedAt: !2047)
!2900 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !2899)
!2901 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !2899)
!2902 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !2899)
!2903 = !DILocation(line: 540, column: 50, scope: !876, inlinedAt: !2899)
!2904 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !2899)
!2905 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !2899)
!2906 = !DILocation(line: 169, column: 23, scope: !891, inlinedAt: !2907)
!2907 = distinct !DILocation(line: 905, column: 17, scope: !2908, inlinedAt: !2047)
!2908 = distinct !DILexicalBlock(scope: !757, file: !1, line: 905, column: 17)
!2909 = !DILocation(line: 167, column: 9, scope: !891, inlinedAt: !2907)
!2910 = !DILocation(line: 170, column: 31, scope: !891, inlinedAt: !2907)
!2911 = !DILocation(line: 172, column: 5, scope: !891, inlinedAt: !2907)
!2912 = !DILocation(line: 172, column: 15, scope: !891, inlinedAt: !2907)
!2913 = !DILocation(line: 172, column: 30, scope: !891, inlinedAt: !2907)
!2914 = !DILocation(line: 172, column: 35, scope: !891, inlinedAt: !2907)
!2915 = !DILocation(line: 173, column: 30, scope: !891, inlinedAt: !2907)
!2916 = !DILocation(line: 173, column: 41, scope: !891, inlinedAt: !2907)
!2917 = !DILocation(line: 910, column: 19, scope: !757, inlinedAt: !2047)
!2918 = !DILocation(line: 913, column: 33, scope: !767, inlinedAt: !2047)
!2919 = !DILocation(line: 914, column: 13, scope: !2920, inlinedAt: !2047)
!2920 = !DILexicalBlockFile(scope: !2921, file: !1, discriminator: 1)
!2921 = distinct !DILexicalBlock(scope: !767, file: !1, line: 914, column: 13)
!2922 = !DILocation(line: 913, column: 33, scope: !2923, inlinedAt: !2047)
!2923 = !DILexicalBlockFile(scope: !767, file: !1, discriminator: 1)
!2924 = !DILocation(line: 913, column: 33, scope: !2925, inlinedAt: !2047)
!2925 = !DILexicalBlockFile(scope: !767, file: !1, discriminator: 2)
!2926 = !DILocation(line: 913, column: 33, scope: !2927, inlinedAt: !2047)
!2927 = !DILexicalBlockFile(scope: !2928, file: !1, discriminator: 4)
!2928 = !DILexicalBlockFile(scope: !767, file: !1, discriminator: 3)
!2929 = !DILocation(line: 913, column: 20, scope: !767, inlinedAt: !2047)
!2930 = !DILocation(line: 914, column: 13, scope: !767, inlinedAt: !2047)
!2931 = !DILocation(line: 914, column: 13, scope: !2921, inlinedAt: !2047)
!2932 = !DILocation(line: 914, column: 13, scope: !2933, inlinedAt: !2047)
!2933 = !DILexicalBlockFile(scope: !2921, file: !1, discriminator: 3)
!2934 = !DILocation(line: 914, column: 13, scope: !2935, inlinedAt: !2047)
!2935 = !DILexicalBlockFile(scope: !2921, file: !1, discriminator: 4)
!2936 = !DILocation(line: 914, column: 13, scope: !2937, inlinedAt: !2047)
!2937 = !DILexicalBlockFile(scope: !2938, file: !1, discriminator: 6)
!2938 = !DILexicalBlockFile(scope: !2921, file: !1, discriminator: 5)
!2939 = !DILocation(line: 914, column: 13, scope: !2940, inlinedAt: !2047)
!2940 = !DILexicalBlockFile(scope: !2921, file: !1, discriminator: 2)
!2941 = !DILocation(line: 914, column: 13, scope: !2942, inlinedAt: !2047)
!2942 = !DILexicalBlockFile(scope: !2921, file: !1, discriminator: 7)
!2943 = !DILocation(line: 914, column: 13, scope: !2944, inlinedAt: !2047)
!2944 = !DILexicalBlockFile(scope: !2921, file: !1, discriminator: 8)
!2945 = !DILocation(line: 914, column: 13, scope: !2946, inlinedAt: !2047)
!2946 = !DILexicalBlockFile(scope: !2947, file: !1, discriminator: 10)
!2947 = !DILexicalBlockFile(scope: !2921, file: !1, discriminator: 9)
!2948 = !DILocation(line: 916, column: 19, scope: !774, inlinedAt: !2047)
!2949 = !DILocation(line: 916, column: 33, scope: !774, inlinedAt: !2047)
!2950 = !DILocation(line: 916, column: 26, scope: !774, inlinedAt: !2047)
!2951 = !DILocation(line: 917, column: 20, scope: !2952, inlinedAt: !2047)
!2952 = distinct !DILexicalBlock(scope: !774, file: !1, line: 916, column: 45)
!2953 = !DILocation(line: 918, column: 17, scope: !2952, inlinedAt: !2047)
!2954 = !DILocation(line: 918, column: 17, scope: !2955, inlinedAt: !2047)
!2955 = !DILexicalBlockFile(scope: !2956, file: !1, discriminator: 1)
!2956 = distinct !DILexicalBlock(scope: !2952, file: !1, line: 918, column: 17)
!2957 = !DILocation(line: 918, column: 17, scope: !2958, inlinedAt: !2047)
!2958 = !DILexicalBlockFile(scope: !2959, file: !1, discriminator: 2)
!2959 = distinct !DILexicalBlock(scope: !2956, file: !1, line: 918, column: 17)
!2960 = !DILocation(line: 920, column: 22, scope: !773, inlinedAt: !2047)
!2961 = !DILocation(line: 920, column: 22, scope: !774, inlinedAt: !2047)
!2962 = !DILocation(line: 921, column: 17, scope: !772, inlinedAt: !2047)
!2963 = !DILocation(line: 921, column: 28, scope: !772, inlinedAt: !2047)
!2964 = !DILocation(line: 922, column: 24, scope: !772, inlinedAt: !2047)
!2965 = !DILocation(line: 923, column: 26, scope: !2966, inlinedAt: !2047)
!2966 = distinct !DILexicalBlock(scope: !772, file: !1, line: 923, column: 21)
!2967 = !DILocation(line: 923, column: 21, scope: !772, inlinedAt: !2047)
!2968 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 924, column: 28, scope: !2966, inlinedAt: !2047)
!2970 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !2969)
!2971 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !2969)
!2972 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !2969)
!2973 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !2969)
!2974 = !DILocation(line: 540, column: 50, scope: !876, inlinedAt: !2969)
!2975 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !2969)
!2976 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !2969)
!2977 = !DILocation(line: 924, column: 21, scope: !2966, inlinedAt: !2047)
!2978 = !DILocation(line: 926, column: 20, scope: !772, inlinedAt: !2047)
!2979 = !DILocation(line: 927, column: 17, scope: !2980, inlinedAt: !2047)
!2980 = !DILexicalBlockFile(scope: !2981, file: !1, discriminator: 1)
!2981 = distinct !DILexicalBlock(scope: !772, file: !1, line: 927, column: 17)
!2982 = !DILocation(line: 927, column: 17, scope: !772, inlinedAt: !2047)
!2983 = !DILocation(line: 927, column: 17, scope: !2984, inlinedAt: !2047)
!2984 = !DILexicalBlockFile(scope: !2985, file: !1, discriminator: 2)
!2985 = distinct !DILexicalBlock(scope: !2986, file: !1, line: 927, column: 17)
!2986 = distinct !DILexicalBlock(scope: !2981, file: !1, line: 927, column: 17)
!2987 = !DILocation(line: 927, column: 17, scope: !2986, inlinedAt: !2047)
!2988 = !DILocation(line: 927, column: 17, scope: !2989, inlinedAt: !2047)
!2989 = !DILexicalBlockFile(scope: !2990, file: !1, discriminator: 3)
!2990 = distinct !DILexicalBlock(scope: !2985, file: !1, line: 927, column: 17)
!2991 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 927, column: 17, scope: !2989, inlinedAt: !2047)
!2993 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !2992)
!2994 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !2992)
!2995 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !2992)
!2996 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !2992)
!2997 = !DILocation(line: 540, column: 50, scope: !876, inlinedAt: !2992)
!2998 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !2992)
!2999 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !2992)
!3000 = !DILocation(line: 927, column: 17, scope: !2990, inlinedAt: !2047)
!3001 = !DILocation(line: 927, column: 17, scope: !3002, inlinedAt: !2047)
!3002 = !DILexicalBlockFile(scope: !2986, file: !1, discriminator: 4)
!3003 = !DILocation(line: 928, column: 13, scope: !3004, inlinedAt: !2047)
!3004 = !DILexicalBlockFile(scope: !773, file: !1, discriminator: 1)
!3005 = !DILocation(line: 1277, column: 25, scope: !904, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 932, column: 36, scope: !776, inlinedAt: !2047)
!3007 = !DILocation(line: 1277, column: 37, scope: !904, inlinedAt: !3006)
!3008 = !DILocation(line: 1279, column: 39, scope: !904, inlinedAt: !3006)
!3009 = !DILocation(line: 1279, column: 20, scope: !904, inlinedAt: !3006)
!3010 = !DILocation(line: 1281, column: 5, scope: !904, inlinedAt: !3006)
!3011 = !DILocation(line: 1299, column: 50, scope: !884, inlinedAt: !3012)
!3012 = distinct !DILocation(line: 1290, column: 9, scope: !2708, inlinedAt: !3006)
!3013 = !DILocation(line: 1277, column: 47, scope: !904, inlinedAt: !3006)
!3014 = !DILocation(line: 931, column: 23, scope: !776, inlinedAt: !2047)
!3015 = !DILocation(line: 1284, column: 8, scope: !904, inlinedAt: !3006)
!3016 = !DILocation(line: 1285, column: 12, scope: !2746, inlinedAt: !3006)
!3017 = !DILocation(line: 1285, column: 20, scope: !2746, inlinedAt: !3006)
!3018 = !DILocation(line: 1285, column: 27, scope: !2746, inlinedAt: !3006)
!3019 = !DILocation(line: 1285, column: 44, scope: !2746, inlinedAt: !3006)
!3020 = !DILocation(line: 1285, column: 9, scope: !904, inlinedAt: !3006)
!3021 = !DILocation(line: 1281, column: 15, scope: !904, inlinedAt: !3006)
!3022 = !DILocation(line: 1299, column: 21, scope: !884, inlinedAt: !3012)
!3023 = !DILocation(line: 1299, column: 37, scope: !884, inlinedAt: !3012)
!3024 = !DILocation(line: 1301, column: 9, scope: !2698, inlinedAt: !3012)
!3025 = !DILocation(line: 1301, column: 53, scope: !2698, inlinedAt: !3012)
!3026 = !DILocation(line: 1301, column: 9, scope: !884, inlinedAt: !3012)
!3027 = !DILocation(line: 1305, column: 10, scope: !2702, inlinedAt: !3012)
!3028 = !DILocation(line: 1305, column: 9, scope: !884, inlinedAt: !3012)
!3029 = !DILocation(line: 1306, column: 9, scope: !2705, inlinedAt: !3012)
!3030 = !DILocation(line: 1308, column: 9, scope: !2705, inlinedAt: !3012)
!3031 = !DILocation(line: 1296, column: 1, scope: !904, inlinedAt: !3006)
!3032 = !DILocation(line: 933, column: 21, scope: !776, inlinedAt: !2047)
!3033 = !DILocation(line: 1292, column: 18, scope: !904, inlinedAt: !3006)
!3034 = !DILocation(line: 1293, column: 15, scope: !904, inlinedAt: !3006)
!3035 = !DILocation(line: 1293, column: 8, scope: !904, inlinedAt: !3006)
!3036 = !DILocation(line: 1294, column: 5, scope: !904, inlinedAt: !3006)
!3037 = !DILocation(line: 933, column: 27, scope: !3038, inlinedAt: !2047)
!3038 = distinct !DILexicalBlock(scope: !776, file: !1, line: 933, column: 21)
!3039 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !3040)
!3040 = distinct !DILocation(line: 934, column: 28, scope: !3038, inlinedAt: !2047)
!3041 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !3040)
!3042 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !3040)
!3043 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !3040)
!3044 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !3040)
!3045 = !DILocation(line: 540, column: 50, scope: !876, inlinedAt: !3040)
!3046 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !3040)
!3047 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !3040)
!3048 = !DILocation(line: 934, column: 21, scope: !3038, inlinedAt: !2047)
!3049 = !DILocation(line: 935, column: 17, scope: !776, inlinedAt: !2047)
!3050 = !DILocation(line: 935, column: 17, scope: !3051, inlinedAt: !2047)
!3051 = !DILexicalBlockFile(scope: !3052, file: !1, discriminator: 1)
!3052 = distinct !DILexicalBlock(scope: !776, file: !1, line: 935, column: 17)
!3053 = !DILocation(line: 935, column: 17, scope: !3054, inlinedAt: !2047)
!3054 = !DILexicalBlockFile(scope: !3055, file: !1, discriminator: 2)
!3055 = distinct !DILexicalBlock(scope: !3056, file: !1, line: 935, column: 17)
!3056 = distinct !DILexicalBlock(scope: !3052, file: !1, line: 935, column: 17)
!3057 = !DILocation(line: 935, column: 17, scope: !3056, inlinedAt: !2047)
!3058 = !DILocation(line: 935, column: 17, scope: !3059, inlinedAt: !2047)
!3059 = !DILexicalBlockFile(scope: !3060, file: !1, discriminator: 3)
!3060 = distinct !DILexicalBlock(scope: !3055, file: !1, line: 935, column: 17)
!3061 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !3062)
!3062 = distinct !DILocation(line: 935, column: 17, scope: !3059, inlinedAt: !2047)
!3063 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !3062)
!3064 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !3062)
!3065 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !3062)
!3066 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !3062)
!3067 = !DILocation(line: 540, column: 50, scope: !876, inlinedAt: !3062)
!3068 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !3062)
!3069 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !3062)
!3070 = !DILocation(line: 935, column: 17, scope: !3060, inlinedAt: !2047)
!3071 = !DILocation(line: 935, column: 17, scope: !3072, inlinedAt: !2047)
!3072 = !DILexicalBlockFile(scope: !3056, file: !1, discriminator: 4)
!3073 = !DILocation(line: 937, column: 19, scope: !767, inlinedAt: !2047)
!3074 = !DILocation(line: 940, column: 24, scope: !779, inlinedAt: !2047)
!3075 = !DILocation(line: 940, column: 24, scope: !3076, inlinedAt: !2047)
!3076 = !DILexicalBlockFile(scope: !779, file: !1, discriminator: 1)
!3077 = !DILocation(line: 940, column: 24, scope: !3078, inlinedAt: !2047)
!3078 = !DILexicalBlockFile(scope: !779, file: !1, discriminator: 2)
!3079 = !DILocation(line: 940, column: 24, scope: !3080, inlinedAt: !2047)
!3080 = !DILexicalBlockFile(scope: !3081, file: !1, discriminator: 4)
!3081 = !DILexicalBlockFile(scope: !779, file: !1, discriminator: 3)
!3082 = !DILocation(line: 940, column: 20, scope: !779, inlinedAt: !2047)
!3083 = !DILocation(line: 941, column: 13, scope: !779, inlinedAt: !2047)
!3084 = !DILocation(line: 944, column: 19, scope: !3085, inlinedAt: !2047)
!3085 = distinct !DILexicalBlock(scope: !779, file: !1, line: 944, column: 17)
!3086 = !DILocation(line: 944, column: 33, scope: !3085, inlinedAt: !2047)
!3087 = !DILocation(line: 944, column: 26, scope: !3085, inlinedAt: !2047)
!3088 = !DILocation(line: 945, column: 20, scope: !3085, inlinedAt: !2047)
!3089 = !DILocation(line: 956, column: 28, scope: !3090, inlinedAt: !2047)
!3090 = distinct !DILexicalBlock(scope: !779, file: !1, line: 956, column: 17)
!3091 = !DILocation(line: 946, column: 22, scope: !3092, inlinedAt: !2047)
!3092 = distinct !DILexicalBlock(scope: !3085, file: !1, line: 946, column: 22)
!3093 = !DILocation(line: 946, column: 22, scope: !3085, inlinedAt: !2047)
!3094 = !DILocation(line: 941, column: 24, scope: !779, inlinedAt: !2047)
!3095 = !DILocation(line: 947, column: 24, scope: !3096, inlinedAt: !2047)
!3096 = distinct !DILexicalBlock(scope: !3092, file: !1, line: 946, column: 44)
!3097 = !DILocation(line: 948, column: 26, scope: !3098, inlinedAt: !2047)
!3098 = distinct !DILexicalBlock(scope: !3096, file: !1, line: 948, column: 21)
!3099 = !DILocation(line: 948, column: 21, scope: !3096, inlinedAt: !2047)
!3100 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !3101)
!3101 = distinct !DILocation(line: 949, column: 28, scope: !3098, inlinedAt: !2047)
!3102 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !3101)
!3103 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !3101)
!3104 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !3101)
!3105 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !3101)
!3106 = !DILocation(line: 540, column: 50, scope: !876, inlinedAt: !3101)
!3107 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !3101)
!3108 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !3101)
!3109 = !DILocation(line: 949, column: 21, scope: !3098, inlinedAt: !2047)
!3110 = !DILocation(line: 954, column: 35, scope: !3092, inlinedAt: !2047)
!3111 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !3112)
!3112 = distinct !DILocation(line: 954, column: 24, scope: !3092, inlinedAt: !2047)
!3113 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !3112)
!3114 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !3112)
!3115 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !3112)
!3116 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !3112)
!3117 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !3112)
!3118 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !3112)
!3119 = !DILocation(line: 954, column: 17, scope: !3092, inlinedAt: !2047)
!3120 = !DILocation(line: 956, column: 60, scope: !3090, inlinedAt: !2047)
!3121 = !DILocation(line: 956, column: 74, scope: !3090, inlinedAt: !2047)
!3122 = !DILocation(line: 956, column: 71, scope: !3090, inlinedAt: !2047)
!3123 = !DILocation(line: 956, column: 17, scope: !779, inlinedAt: !2047)
!3124 = !DILocation(line: 958, column: 21, scope: !3090, inlinedAt: !2047)
!3125 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !3126)
!3126 = distinct !DILocation(line: 957, column: 24, scope: !3090, inlinedAt: !2047)
!3127 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !3126)
!3128 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !3126)
!3129 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !3126)
!3130 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !3126)
!3131 = !DILocation(line: 540, column: 50, scope: !876, inlinedAt: !3126)
!3132 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !3126)
!3133 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !3126)
!3134 = !DILocation(line: 957, column: 17, scope: !3090, inlinedAt: !2047)
!3135 = !DILocation(line: 961, column: 9, scope: !3136, inlinedAt: !2047)
!3136 = !DILexicalBlockFile(scope: !768, file: !1, discriminator: 1)
!3137 = !DILocation(line: 968, column: 26, scope: !782, inlinedAt: !2047)
!3138 = !DILocation(line: 968, column: 26, scope: !3139, inlinedAt: !2047)
!3139 = !DILexicalBlockFile(scope: !782, file: !1, discriminator: 1)
!3140 = !DILocation(line: 968, column: 26, scope: !3141, inlinedAt: !2047)
!3141 = !DILexicalBlockFile(scope: !782, file: !1, discriminator: 2)
!3142 = !DILocation(line: 972, column: 13, scope: !3143, inlinedAt: !2047)
!3143 = !DILexicalBlockFile(scope: !3144, file: !1, discriminator: 1)
!3144 = distinct !DILexicalBlock(scope: !787, file: !1, line: 972, column: 13)
!3145 = !DILocation(line: 968, column: 26, scope: !3146, inlinedAt: !2047)
!3146 = !DILexicalBlockFile(scope: !3147, file: !1, discriminator: 4)
!3147 = !DILexicalBlockFile(scope: !782, file: !1, discriminator: 3)
!3148 = !DILocation(line: 968, column: 22, scope: !782, inlinedAt: !2047)
!3149 = !DILocation(line: 970, column: 13, scope: !788, inlinedAt: !2047)
!3150 = !DILocation(line: 970, column: 21, scope: !788, inlinedAt: !2047)
!3151 = !DILocation(line: 970, column: 13, scope: !782, inlinedAt: !2047)
!3152 = !DILocation(line: 972, column: 13, scope: !787, inlinedAt: !2047)
!3153 = !DILocation(line: 972, column: 13, scope: !3144, inlinedAt: !2047)
!3154 = !DILocation(line: 972, column: 13, scope: !3155, inlinedAt: !2047)
!3155 = !DILexicalBlockFile(scope: !3144, file: !1, discriminator: 3)
!3156 = !DILocation(line: 972, column: 13, scope: !3157, inlinedAt: !2047)
!3157 = !DILexicalBlockFile(scope: !3144, file: !1, discriminator: 4)
!3158 = !DILocation(line: 972, column: 13, scope: !3159, inlinedAt: !2047)
!3159 = !DILexicalBlockFile(scope: !3160, file: !1, discriminator: 6)
!3160 = !DILexicalBlockFile(scope: !3144, file: !1, discriminator: 5)
!3161 = !DILocation(line: 972, column: 13, scope: !3162, inlinedAt: !2047)
!3162 = !DILexicalBlockFile(scope: !3144, file: !1, discriminator: 2)
!3163 = !DILocation(line: 972, column: 13, scope: !3164, inlinedAt: !2047)
!3164 = !DILexicalBlockFile(scope: !3144, file: !1, discriminator: 7)
!3165 = !DILocation(line: 972, column: 13, scope: !3166, inlinedAt: !2047)
!3166 = !DILexicalBlockFile(scope: !3144, file: !1, discriminator: 8)
!3167 = !DILocation(line: 972, column: 13, scope: !3168, inlinedAt: !2047)
!3168 = !DILexicalBlockFile(scope: !3169, file: !1, discriminator: 10)
!3169 = !DILexicalBlockFile(scope: !3144, file: !1, discriminator: 9)
!3170 = !DILocation(line: 974, column: 19, scope: !793, inlinedAt: !2047)
!3171 = !DILocation(line: 974, column: 33, scope: !793, inlinedAt: !2047)
!3172 = !DILocation(line: 974, column: 26, scope: !793, inlinedAt: !2047)
!3173 = !DILocation(line: 975, column: 20, scope: !3174, inlinedAt: !2047)
!3174 = distinct !DILexicalBlock(scope: !793, file: !1, line: 974, column: 45)
!3175 = !DILocation(line: 976, column: 17, scope: !3174, inlinedAt: !2047)
!3176 = !DILocation(line: 976, column: 17, scope: !3177, inlinedAt: !2047)
!3177 = !DILexicalBlockFile(scope: !3178, file: !1, discriminator: 1)
!3178 = distinct !DILexicalBlock(scope: !3174, file: !1, line: 976, column: 17)
!3179 = !DILocation(line: 976, column: 17, scope: !3180, inlinedAt: !2047)
!3180 = !DILexicalBlockFile(scope: !3181, file: !1, discriminator: 2)
!3181 = distinct !DILexicalBlock(scope: !3178, file: !1, line: 976, column: 17)
!3182 = !DILocation(line: 978, column: 22, scope: !792, inlinedAt: !2047)
!3183 = !DILocation(line: 978, column: 22, scope: !793, inlinedAt: !2047)
!3184 = !DILocation(line: 979, column: 17, scope: !791, inlinedAt: !2047)
!3185 = !DILocation(line: 979, column: 28, scope: !791, inlinedAt: !2047)
!3186 = !DILocation(line: 980, column: 22, scope: !791, inlinedAt: !2047)
!3187 = !DILocation(line: 980, column: 20, scope: !791, inlinedAt: !2047)
!3188 = !DILocation(line: 981, column: 24, scope: !3189, inlinedAt: !2047)
!3189 = distinct !DILexicalBlock(scope: !791, file: !1, line: 981, column: 21)
!3190 = !DILocation(line: 981, column: 21, scope: !791, inlinedAt: !2047)
!3191 = !DILocation(line: 983, column: 17, scope: !3192, inlinedAt: !2047)
!3192 = !DILexicalBlockFile(scope: !3193, file: !1, discriminator: 1)
!3193 = distinct !DILexicalBlock(scope: !791, file: !1, line: 983, column: 17)
!3194 = !DILocation(line: 983, column: 17, scope: !791, inlinedAt: !2047)
!3195 = !DILocation(line: 983, column: 17, scope: !3196, inlinedAt: !2047)
!3196 = !DILexicalBlockFile(scope: !3197, file: !1, discriminator: 2)
!3197 = distinct !DILexicalBlock(scope: !3198, file: !1, line: 983, column: 17)
!3198 = distinct !DILexicalBlock(scope: !3193, file: !1, line: 983, column: 17)
!3199 = !DILocation(line: 983, column: 17, scope: !3198, inlinedAt: !2047)
!3200 = !DILocation(line: 983, column: 17, scope: !3201, inlinedAt: !2047)
!3201 = !DILexicalBlockFile(scope: !3202, file: !1, discriminator: 3)
!3202 = distinct !DILexicalBlock(scope: !3197, file: !1, line: 983, column: 17)
!3203 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !3204)
!3204 = distinct !DILocation(line: 983, column: 17, scope: !3201, inlinedAt: !2047)
!3205 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !3204)
!3206 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !3204)
!3207 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !3204)
!3208 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !3204)
!3209 = !DILocation(line: 540, column: 50, scope: !876, inlinedAt: !3204)
!3210 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !3204)
!3211 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !3204)
!3212 = !DILocation(line: 983, column: 17, scope: !3202, inlinedAt: !2047)
!3213 = !DILocation(line: 983, column: 17, scope: !3214, inlinedAt: !2047)
!3214 = !DILexicalBlockFile(scope: !3198, file: !1, discriminator: 4)
!3215 = !DILocation(line: 984, column: 13, scope: !3216, inlinedAt: !2047)
!3216 = !DILexicalBlockFile(scope: !792, file: !1, discriminator: 1)
!3217 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !3218)
!3218 = distinct !DILocation(line: 986, column: 24, scope: !792, inlinedAt: !2047)
!3219 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !3218)
!3220 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !3218)
!3221 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !3218)
!3222 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !3218)
!3223 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !3218)
!3224 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !3218)
!3225 = !DILocation(line: 986, column: 17, scope: !792, inlinedAt: !2047)
!3226 = !DILocation(line: 987, column: 19, scope: !787, inlinedAt: !2047)
!3227 = !DILocation(line: 990, column: 19, scope: !797, inlinedAt: !2047)
!3228 = !DILocation(line: 990, column: 33, scope: !797, inlinedAt: !2047)
!3229 = !DILocation(line: 990, column: 26, scope: !797, inlinedAt: !2047)
!3230 = !DILocation(line: 991, column: 20, scope: !797, inlinedAt: !2047)
!3231 = !DILocation(line: 991, column: 17, scope: !797, inlinedAt: !2047)
!3232 = !DILocation(line: 992, column: 22, scope: !796, inlinedAt: !2047)
!3233 = !DILocation(line: 992, column: 22, scope: !797, inlinedAt: !2047)
!3234 = !DILocation(line: 993, column: 17, scope: !795, inlinedAt: !2047)
!3235 = !DILocation(line: 993, column: 28, scope: !795, inlinedAt: !2047)
!3236 = !DILocation(line: 994, column: 22, scope: !795, inlinedAt: !2047)
!3237 = !DILocation(line: 994, column: 20, scope: !795, inlinedAt: !2047)
!3238 = !DILocation(line: 995, column: 24, scope: !3239, inlinedAt: !2047)
!3239 = distinct !DILexicalBlock(scope: !795, file: !1, line: 995, column: 21)
!3240 = !DILocation(line: 995, column: 21, scope: !795, inlinedAt: !2047)
!3241 = !DILocation(line: 997, column: 21, scope: !3242, inlinedAt: !2047)
!3242 = distinct !DILexicalBlock(scope: !795, file: !1, line: 997, column: 21)
!3243 = !DILocation(line: 997, column: 46, scope: !3242, inlinedAt: !2047)
!3244 = !DILocation(line: 997, column: 43, scope: !3242, inlinedAt: !2047)
!3245 = !DILocation(line: 997, column: 21, scope: !795, inlinedAt: !2047)
!3246 = !DILocation(line: 1001, column: 13, scope: !3247, inlinedAt: !2047)
!3247 = !DILexicalBlockFile(scope: !796, file: !1, discriminator: 1)
!3248 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !3249)
!3249 = distinct !DILocation(line: 998, column: 28, scope: !3242, inlinedAt: !2047)
!3250 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !3249)
!3251 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !3249)
!3252 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !3249)
!3253 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !3249)
!3254 = !DILocation(line: 540, column: 50, scope: !876, inlinedAt: !3249)
!3255 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !3249)
!3256 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !3249)
!3257 = !DILocation(line: 998, column: 21, scope: !3242, inlinedAt: !2047)
!3258 = !DILocation(line: 1002, column: 35, scope: !796, inlinedAt: !2047)
!3259 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 1002, column: 24, scope: !796, inlinedAt: !2047)
!3261 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !3260)
!3262 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !3260)
!3263 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !3260)
!3264 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !3260)
!3265 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !3260)
!3266 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !3260)
!3267 = !DILocation(line: 1002, column: 17, scope: !796, inlinedAt: !2047)
!3268 = !DILocation(line: 1013, column: 9, scope: !800, inlinedAt: !2047)
!3269 = !DILocation(line: 1014, column: 9, scope: !800, inlinedAt: !2047)
!3270 = !DILocation(line: 1017, column: 34, scope: !800, inlinedAt: !2047)
!3271 = !DILocation(line: 1017, column: 34, scope: !3272, inlinedAt: !2047)
!3272 = !DILexicalBlockFile(scope: !800, file: !1, discriminator: 1)
!3273 = !DILocation(line: 1017, column: 34, scope: !3274, inlinedAt: !2047)
!3274 = !DILexicalBlockFile(scope: !800, file: !1, discriminator: 2)
!3275 = !DILocation(line: 1017, column: 34, scope: !3276, inlinedAt: !2047)
!3276 = !DILexicalBlockFile(scope: !3277, file: !1, discriminator: 4)
!3277 = !DILexicalBlockFile(scope: !800, file: !1, discriminator: 3)
!3278 = !DILocation(line: 1010, column: 21, scope: !800, inlinedAt: !2047)
!3279 = !DILocation(line: 1018, column: 22, scope: !3280, inlinedAt: !2047)
!3280 = distinct !DILexicalBlock(scope: !800, file: !1, line: 1018, column: 13)
!3281 = !DILocation(line: 1018, column: 13, scope: !800, inlinedAt: !2047)
!3282 = !DILocation(line: 1019, column: 24, scope: !3280, inlinedAt: !2047)
!3283 = !DILocation(line: 1019, column: 13, scope: !3280, inlinedAt: !2047)
!3284 = !DILocation(line: 1025, column: 13, scope: !3285, inlinedAt: !2047)
!3285 = distinct !DILexicalBlock(scope: !800, file: !1, line: 1025, column: 13)
!3286 = !DILocation(line: 1025, column: 13, scope: !800, inlinedAt: !2047)
!3287 = !DILocation(line: 1012, column: 13, scope: !800, inlinedAt: !2047)
!3288 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !3289)
!3289 = distinct !DILocation(line: 1030, column: 20, scope: !3290, inlinedAt: !2047)
!3290 = distinct !DILexicalBlock(scope: !3285, file: !1, line: 1027, column: 18)
!3291 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !3289)
!3292 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !3289)
!3293 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !3289)
!3294 = !DILocation(line: 540, column: 23, scope: !876, inlinedAt: !3289)
!3295 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !3289)
!3296 = !DILocation(line: 540, column: 50, scope: !876, inlinedAt: !3289)
!3297 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !3289)
!3298 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !3289)
!3299 = !DILocation(line: 1030, column: 13, scope: !3290, inlinedAt: !2047)
!3300 = !DILocation(line: 1033, column: 27, scope: !800, inlinedAt: !2047)
!3301 = !DILocation(line: 1033, column: 27, scope: !3272, inlinedAt: !2047)
!3302 = !DILocation(line: 1033, column: 27, scope: !3274, inlinedAt: !2047)
!3303 = !DILocation(line: 1033, column: 27, scope: !3276, inlinedAt: !2047)
!3304 = !DILocation(line: 1009, column: 16, scope: !800, inlinedAt: !2047)
!3305 = !DILocation(line: 1034, column: 15, scope: !800, inlinedAt: !2047)
!3306 = !DILocation(line: 1035, column: 20, scope: !3307, inlinedAt: !2047)
!3307 = distinct !DILexicalBlock(scope: !800, file: !1, line: 1035, column: 13)
!3308 = !DILocation(line: 1035, column: 13, scope: !800, inlinedAt: !2047)
!3309 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !3310)
!3310 = distinct !DILocation(line: 1036, column: 20, scope: !3307, inlinedAt: !2047)
!3311 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !3310)
!3312 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !3310)
!3313 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !3310)
!3314 = !DILocation(line: 540, column: 23, scope: !876, inlinedAt: !3310)
!3315 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !3310)
!3316 = !DILocation(line: 540, column: 50, scope: !876, inlinedAt: !3310)
!3317 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !3310)
!3318 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !3310)
!3319 = !DILocation(line: 1036, column: 13, scope: !3307, inlinedAt: !2047)
!3320 = !DILocation(line: 1040, column: 14, scope: !808, inlinedAt: !2047)
!3321 = !DILocation(line: 1040, column: 29, scope: !808, inlinedAt: !2047)
!3322 = !DILocation(line: 1041, column: 14, scope: !808, inlinedAt: !2047)
!3323 = !DILocation(line: 1041, column: 36, scope: !3324, inlinedAt: !2047)
!3324 = !DILexicalBlockFile(scope: !808, file: !1, discriminator: 1)
!3325 = !DILocation(line: 1041, column: 33, scope: !808, inlinedAt: !2047)
!3326 = !DILocation(line: 1041, column: 36, scope: !3327, inlinedAt: !2047)
!3327 = !DILexicalBlockFile(scope: !808, file: !1, discriminator: 2)
!3328 = !DILocation(line: 1040, column: 13, scope: !800, inlinedAt: !2047)
!3329 = !DILocation(line: 1011, column: 19, scope: !800, inlinedAt: !2047)
!3330 = !DILocation(line: 1043, column: 13, scope: !3331, inlinedAt: !2047)
!3331 = distinct !DILexicalBlock(scope: !808, file: !1, line: 1041, column: 61)
!3332 = !DILocation(line: 1013, column: 20, scope: !800, inlinedAt: !2047)
!3333 = !DILocation(line: 1014, column: 21, scope: !800, inlinedAt: !2047)
!3334 = !DILocation(line: 1044, column: 17, scope: !3335, inlinedAt: !2047)
!3335 = distinct !DILexicalBlock(scope: !3331, file: !1, line: 1044, column: 17)
!3336 = !DILocation(line: 1044, column: 55, scope: !3335, inlinedAt: !2047)
!3337 = !DILocation(line: 1044, column: 17, scope: !3331, inlinedAt: !2047)
!3338 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 1045, column: 24, scope: !3335, inlinedAt: !2047)
!3340 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !3339)
!3341 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !3339)
!3342 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !3339)
!3343 = !DILocation(line: 540, column: 23, scope: !876, inlinedAt: !3339)
!3344 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !3339)
!3345 = !DILocation(line: 540, column: 50, scope: !876, inlinedAt: !3339)
!3346 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !3339)
!3347 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !3339)
!3348 = !DILocation(line: 1045, column: 17, scope: !3335, inlinedAt: !2047)
!3349 = !DILocation(line: 1052, column: 17, scope: !807, inlinedAt: !2047)
!3350 = !DILocation(line: 1049, column: 23, scope: !807, inlinedAt: !2047)
!3351 = !DILocation(line: 1053, column: 19, scope: !3352, inlinedAt: !2047)
!3352 = distinct !DILexicalBlock(scope: !807, file: !1, line: 1053, column: 17)
!3353 = !DILocation(line: 1053, column: 17, scope: !807, inlinedAt: !2047)
!3354 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !3355)
!3355 = distinct !DILocation(line: 1054, column: 24, scope: !3352, inlinedAt: !2047)
!3356 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !3355)
!3357 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !3355)
!3358 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !3355)
!3359 = !DILocation(line: 540, column: 23, scope: !876, inlinedAt: !3355)
!3360 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !3355)
!3361 = !DILocation(line: 540, column: 50, scope: !876, inlinedAt: !3355)
!3362 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !3355)
!3363 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !3355)
!3364 = !DILocation(line: 1054, column: 17, scope: !3352, inlinedAt: !2047)
!3365 = !DILocation(line: 1059, column: 17, scope: !807, inlinedAt: !2047)
!3366 = !DILocation(line: 1062, column: 13, scope: !3367, inlinedAt: !2047)
!3367 = !DILexicalBlockFile(scope: !810, file: !1, discriminator: 1)
!3368 = !DILocation(line: 1062, column: 13, scope: !3369, inlinedAt: !2047)
!3369 = distinct !DILexicalBlock(scope: !810, file: !1, line: 1062, column: 13)
!3370 = !DILocation(line: 1062, column: 13, scope: !810, inlinedAt: !2047)
!3371 = !DILocation(line: 1062, column: 13, scope: !3372, inlinedAt: !2047)
!3372 = !DILexicalBlockFile(scope: !3369, file: !1, discriminator: 3)
!3373 = !DILocation(line: 1063, column: 19, scope: !3374, inlinedAt: !2047)
!3374 = distinct !DILexicalBlock(scope: !807, file: !1, line: 1063, column: 17)
!3375 = !DILocation(line: 1063, column: 17, scope: !807, inlinedAt: !2047)
!3376 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !3377)
!3377 = distinct !DILocation(line: 1064, column: 24, scope: !3374, inlinedAt: !2047)
!3378 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !3377)
!3379 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !3377)
!3380 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !3377)
!3381 = !DILocation(line: 540, column: 23, scope: !876, inlinedAt: !3377)
!3382 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !3377)
!3383 = !DILocation(line: 540, column: 50, scope: !876, inlinedAt: !3377)
!3384 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !3377)
!3385 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !3377)
!3386 = !DILocation(line: 1064, column: 17, scope: !3374, inlinedAt: !2047)
!3387 = !DILocation(line: 1066, column: 18, scope: !814, inlinedAt: !2047)
!3388 = !DILocation(line: 1067, column: 17, scope: !3389, inlinedAt: !2047)
!3389 = !DILexicalBlockFile(scope: !3390, file: !1, discriminator: 3)
!3390 = distinct !DILexicalBlock(scope: !812, file: !1, line: 1067, column: 17)
!3391 = !DILocation(line: 1066, column: 17, scope: !807, inlinedAt: !2047)
!3392 = !DILocation(line: 1067, column: 17, scope: !3393, inlinedAt: !2047)
!3393 = !DILexicalBlockFile(scope: !812, file: !1, discriminator: 1)
!3394 = !DILocation(line: 1067, column: 17, scope: !3390, inlinedAt: !2047)
!3395 = !DILocation(line: 1067, column: 17, scope: !812, inlinedAt: !2047)
!3396 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !3397)
!3397 = distinct !DILocation(line: 1068, column: 24, scope: !813, inlinedAt: !2047)
!3398 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !3397)
!3399 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !3397)
!3400 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !3397)
!3401 = !DILocation(line: 540, column: 23, scope: !876, inlinedAt: !3397)
!3402 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !3397)
!3403 = !DILocation(line: 540, column: 50, scope: !876, inlinedAt: !3397)
!3404 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !3397)
!3405 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !3397)
!3406 = !DILocation(line: 1068, column: 17, scope: !813, inlinedAt: !2047)
!3407 = !DILocation(line: 1072, column: 20, scope: !807, inlinedAt: !2047)
!3408 = !DILocation(line: 1072, column: 18, scope: !807, inlinedAt: !2047)
!3409 = !DILocation(line: 1073, column: 19, scope: !807, inlinedAt: !2047)
!3410 = !DILocation(line: 1075, column: 21, scope: !3411, inlinedAt: !2047)
!3411 = distinct !DILexicalBlock(scope: !807, file: !1, line: 1074, column: 17)
!3412 = !DILocation(line: 1079, column: 13, scope: !817, inlinedAt: !2047)
!3413 = !DILocation(line: 1079, column: 21, scope: !817, inlinedAt: !2047)
!3414 = !DILocation(line: 1079, column: 13, scope: !800, inlinedAt: !2047)
!3415 = !DILocation(line: 1101, column: 13, scope: !816, inlinedAt: !2047)
!3416 = !DILocation(line: 1101, column: 13, scope: !3417, inlinedAt: !2047)
!3417 = distinct !DILexicalBlock(scope: !816, file: !1, line: 1101, column: 13)
!3418 = !DILocation(line: 1101, column: 13, scope: !3419, inlinedAt: !2047)
!3419 = !DILexicalBlockFile(scope: !3417, file: !1, discriminator: 1)
!3420 = !DILocation(line: 1101, column: 13, scope: !3421, inlinedAt: !2047)
!3421 = !DILexicalBlockFile(scope: !3417, file: !1, discriminator: 3)
!3422 = !DILocation(line: 1101, column: 13, scope: !3423, inlinedAt: !2047)
!3423 = !DILexicalBlockFile(scope: !3417, file: !1, discriminator: 4)
!3424 = !DILocation(line: 1101, column: 13, scope: !3425, inlinedAt: !2047)
!3425 = !DILexicalBlockFile(scope: !3426, file: !1, discriminator: 6)
!3426 = !DILexicalBlockFile(scope: !3417, file: !1, discriminator: 5)
!3427 = !DILocation(line: 1101, column: 13, scope: !3428, inlinedAt: !2047)
!3428 = !DILexicalBlockFile(scope: !3417, file: !1, discriminator: 2)
!3429 = !DILocation(line: 1101, column: 13, scope: !3430, inlinedAt: !2047)
!3430 = !DILexicalBlockFile(scope: !3417, file: !1, discriminator: 7)
!3431 = !DILocation(line: 1101, column: 13, scope: !3432, inlinedAt: !2047)
!3432 = !DILexicalBlockFile(scope: !3417, file: !1, discriminator: 8)
!3433 = !DILocation(line: 1101, column: 13, scope: !3434, inlinedAt: !2047)
!3434 = !DILexicalBlockFile(scope: !3435, file: !1, discriminator: 10)
!3435 = !DILexicalBlockFile(scope: !3417, file: !1, discriminator: 9)
!3436 = !DILocation(line: 1103, column: 19, scope: !816, inlinedAt: !2047)
!3437 = !DILocation(line: 1104, column: 19, scope: !822, inlinedAt: !2047)
!3438 = !DILocation(line: 1104, column: 33, scope: !822, inlinedAt: !2047)
!3439 = !DILocation(line: 1104, column: 27, scope: !822, inlinedAt: !2047)
!3440 = !DILocation(line: 1105, column: 17, scope: !3441, inlinedAt: !2047)
!3441 = !DILexicalBlockFile(scope: !820, file: !1, discriminator: 1)
!3442 = !DILocation(line: 1105, column: 17, scope: !3443, inlinedAt: !2047)
!3443 = distinct !DILexicalBlock(scope: !820, file: !1, line: 1105, column: 17)
!3444 = !DILocation(line: 1105, column: 17, scope: !820, inlinedAt: !2047)
!3445 = !DILocation(line: 1105, column: 17, scope: !3446, inlinedAt: !2047)
!3446 = !DILexicalBlockFile(scope: !3443, file: !1, discriminator: 3)
!3447 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !3448)
!3448 = distinct !DILocation(line: 1106, column: 24, scope: !821, inlinedAt: !2047)
!3449 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !3448)
!3450 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !3448)
!3451 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !3448)
!3452 = !DILocation(line: 540, column: 23, scope: !876, inlinedAt: !3448)
!3453 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !3448)
!3454 = !DILocation(line: 540, column: 50, scope: !876, inlinedAt: !3448)
!3455 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !3448)
!3456 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !3448)
!3457 = !DILocation(line: 1106, column: 17, scope: !821, inlinedAt: !2047)
!3458 = !DILocation(line: 1110, column: 17, scope: !828, inlinedAt: !2047)
!3459 = !DILocation(line: 1110, column: 25, scope: !828, inlinedAt: !2047)
!3460 = !DILocation(line: 1111, column: 27, scope: !827, inlinedAt: !2047)
!3461 = !DILocation(line: 1110, column: 17, scope: !816, inlinedAt: !2047)
!3462 = !DILocation(line: 1111, column: 25, scope: !827, inlinedAt: !2047)
!3463 = !DILocation(line: 1112, column: 21, scope: !827, inlinedAt: !2047)
!3464 = !DILocation(line: 1111, column: 27, scope: !3465, inlinedAt: !2047)
!3465 = !DILexicalBlockFile(scope: !827, file: !1, discriminator: 2)
!3466 = !DILocation(line: 1112, column: 29, scope: !826, inlinedAt: !2047)
!3467 = !DILocation(line: 1113, column: 21, scope: !3468, inlinedAt: !2047)
!3468 = !DILexicalBlockFile(scope: !824, file: !1, discriminator: 1)
!3469 = !DILocation(line: 1113, column: 21, scope: !3470, inlinedAt: !2047)
!3470 = distinct !DILexicalBlock(scope: !824, file: !1, line: 1113, column: 21)
!3471 = !DILocation(line: 1113, column: 21, scope: !824, inlinedAt: !2047)
!3472 = !DILocation(line: 1113, column: 21, scope: !3473, inlinedAt: !2047)
!3473 = !DILexicalBlockFile(scope: !3470, file: !1, discriminator: 3)
!3474 = !DILocation(line: 1114, column: 21, scope: !825, inlinedAt: !2047)
!3475 = !DILocation(line: 1115, column: 21, scope: !825, inlinedAt: !2047)
!3476 = !DILocation(line: 169, column: 23, scope: !891, inlinedAt: !3477)
!3477 = distinct !DILocation(line: 1117, column: 21, scope: !832, inlinedAt: !2047)
!3478 = !DILocation(line: 167, column: 9, scope: !891, inlinedAt: !3477)
!3479 = !DILocation(line: 170, column: 31, scope: !891, inlinedAt: !3477)
!3480 = !DILocation(line: 172, column: 5, scope: !891, inlinedAt: !3477)
!3481 = !DILocation(line: 172, column: 15, scope: !891, inlinedAt: !3477)
!3482 = !DILocation(line: 172, column: 30, scope: !891, inlinedAt: !3477)
!3483 = !DILocation(line: 172, column: 35, scope: !891, inlinedAt: !3477)
!3484 = !DILocation(line: 173, column: 30, scope: !891, inlinedAt: !3477)
!3485 = !DILocation(line: 173, column: 41, scope: !891, inlinedAt: !3477)
!3486 = !DILocation(line: 1131, column: 20, scope: !816, inlinedAt: !2047)
!3487 = !DILocation(line: 1131, column: 34, scope: !816, inlinedAt: !2047)
!3488 = !DILocation(line: 1117, column: 21, scope: !827, inlinedAt: !2047)
!3489 = !DILocation(line: 1124, column: 32, scope: !836, inlinedAt: !2047)
!3490 = !DILocation(line: 1124, column: 32, scope: !3491, inlinedAt: !2047)
!3491 = !DILexicalBlockFile(scope: !836, file: !1, discriminator: 1)
!3492 = !DILocation(line: 1124, column: 32, scope: !3493, inlinedAt: !2047)
!3493 = !DILexicalBlockFile(scope: !836, file: !1, discriminator: 2)
!3494 = !DILocation(line: 1124, column: 30, scope: !3495, inlinedAt: !2047)
!3495 = !DILexicalBlockFile(scope: !3496, file: !1, discriminator: 4)
!3496 = !DILexicalBlockFile(scope: !836, file: !1, discriminator: 3)
!3497 = !DILocation(line: 1124, column: 21, scope: !837, inlinedAt: !2047)
!3498 = !DILocation(line: 1125, column: 21, scope: !3499, inlinedAt: !2047)
!3499 = !DILexicalBlockFile(scope: !834, file: !1, discriminator: 1)
!3500 = !DILocation(line: 1125, column: 21, scope: !3501, inlinedAt: !2047)
!3501 = distinct !DILexicalBlock(scope: !834, file: !1, line: 1125, column: 21)
!3502 = !DILocation(line: 1125, column: 21, scope: !834, inlinedAt: !2047)
!3503 = !DILocation(line: 1125, column: 21, scope: !3504, inlinedAt: !2047)
!3504 = !DILexicalBlockFile(scope: !3501, file: !1, discriminator: 3)
!3505 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !3506)
!3506 = distinct !DILocation(line: 1126, column: 28, scope: !835, inlinedAt: !2047)
!3507 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !3506)
!3508 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !3506)
!3509 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !3506)
!3510 = !DILocation(line: 540, column: 23, scope: !876, inlinedAt: !3506)
!3511 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !3506)
!3512 = !DILocation(line: 540, column: 50, scope: !876, inlinedAt: !3506)
!3513 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !3506)
!3514 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !3506)
!3515 = !DILocation(line: 1126, column: 21, scope: !835, inlinedAt: !2047)
!3516 = !DILocation(line: 1131, column: 29, scope: !816, inlinedAt: !2047)
!3517 = !DILocation(line: 1131, column: 38, scope: !816, inlinedAt: !2047)
!3518 = !DILocation(line: 1131, column: 13, scope: !816, inlinedAt: !2047)
!3519 = !DILocation(line: 1132, column: 13, scope: !3520, inlinedAt: !2047)
!3520 = !DILexicalBlockFile(scope: !3521, file: !1, discriminator: 1)
!3521 = distinct !DILexicalBlock(scope: !816, file: !1, line: 1132, column: 13)
!3522 = !DILocation(line: 1132, column: 13, scope: !816, inlinedAt: !2047)
!3523 = !DILocation(line: 1132, column: 13, scope: !3524, inlinedAt: !2047)
!3524 = !DILexicalBlockFile(scope: !3525, file: !1, discriminator: 2)
!3525 = distinct !DILexicalBlock(scope: !3526, file: !1, line: 1132, column: 13)
!3526 = distinct !DILexicalBlock(scope: !3521, file: !1, line: 1132, column: 13)
!3527 = !DILocation(line: 1132, column: 13, scope: !3526, inlinedAt: !2047)
!3528 = !DILocation(line: 1132, column: 13, scope: !3529, inlinedAt: !2047)
!3529 = !DILexicalBlockFile(scope: !3530, file: !1, discriminator: 3)
!3530 = distinct !DILexicalBlock(scope: !3525, file: !1, line: 1132, column: 13)
!3531 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !3532)
!3532 = distinct !DILocation(line: 1132, column: 13, scope: !3529, inlinedAt: !2047)
!3533 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !3532)
!3534 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !3532)
!3535 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !3532)
!3536 = !DILocation(line: 540, column: 23, scope: !876, inlinedAt: !3532)
!3537 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !3532)
!3538 = !DILocation(line: 540, column: 50, scope: !876, inlinedAt: !3532)
!3539 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !3532)
!3540 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !3532)
!3541 = !DILocation(line: 1132, column: 13, scope: !3530, inlinedAt: !2047)
!3542 = !DILocation(line: 1132, column: 13, scope: !3543, inlinedAt: !2047)
!3543 = !DILexicalBlockFile(scope: !3526, file: !1, discriminator: 4)
!3544 = !DILocation(line: 1147, column: 36, scope: !841, inlinedAt: !2047)
!3545 = !DILocation(line: 1147, column: 29, scope: !841, inlinedAt: !2047)
!3546 = !DILocation(line: 1147, column: 44, scope: !841, inlinedAt: !2047)
!3547 = !DILocation(line: 1147, column: 41, scope: !841, inlinedAt: !2047)
!3548 = !DILocation(line: 1147, column: 17, scope: !842, inlinedAt: !2047)
!3549 = !DILocation(line: 1148, column: 17, scope: !3550, inlinedAt: !2047)
!3550 = !DILexicalBlockFile(scope: !839, file: !1, discriminator: 1)
!3551 = !DILocation(line: 1148, column: 17, scope: !3552, inlinedAt: !2047)
!3552 = distinct !DILexicalBlock(scope: !839, file: !1, line: 1148, column: 17)
!3553 = !DILocation(line: 1148, column: 17, scope: !839, inlinedAt: !2047)
!3554 = !DILocation(line: 1148, column: 17, scope: !3555, inlinedAt: !2047)
!3555 = !DILexicalBlockFile(scope: !3552, file: !1, discriminator: 3)
!3556 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !3557)
!3557 = distinct !DILocation(line: 1149, column: 24, scope: !840, inlinedAt: !2047)
!3558 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !3557)
!3559 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !3557)
!3560 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !3557)
!3561 = !DILocation(line: 540, column: 23, scope: !876, inlinedAt: !3557)
!3562 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !3557)
!3563 = !DILocation(line: 540, column: 50, scope: !876, inlinedAt: !3557)
!3564 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !3557)
!3565 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !3557)
!3566 = !DILocation(line: 1149, column: 17, scope: !840, inlinedAt: !2047)
!3567 = !DILocation(line: 1153, column: 23, scope: !842, inlinedAt: !2047)
!3568 = !DILocation(line: 1153, column: 21, scope: !842, inlinedAt: !2047)
!3569 = !DILocation(line: 1154, column: 17, scope: !842, inlinedAt: !2047)
!3570 = !DILocation(line: 1153, column: 23, scope: !3571, inlinedAt: !2047)
!3571 = !DILexicalBlockFile(scope: !842, file: !1, discriminator: 2)
!3572 = !DILocation(line: 1154, column: 25, scope: !846, inlinedAt: !2047)
!3573 = !DILocation(line: 1155, column: 17, scope: !3574, inlinedAt: !2047)
!3574 = !DILexicalBlockFile(scope: !844, file: !1, discriminator: 1)
!3575 = !DILocation(line: 1155, column: 17, scope: !3576, inlinedAt: !2047)
!3576 = distinct !DILexicalBlock(scope: !844, file: !1, line: 1155, column: 17)
!3577 = !DILocation(line: 1155, column: 17, scope: !844, inlinedAt: !2047)
!3578 = !DILocation(line: 1155, column: 17, scope: !3579, inlinedAt: !2047)
!3579 = !DILexicalBlockFile(scope: !3576, file: !1, discriminator: 3)
!3580 = !DILocation(line: 1156, column: 17, scope: !845, inlinedAt: !2047)
!3581 = !DILocation(line: 1157, column: 17, scope: !845, inlinedAt: !2047)
!3582 = !DILocation(line: 169, column: 23, scope: !891, inlinedAt: !3583)
!3583 = distinct !DILocation(line: 1159, column: 17, scope: !850, inlinedAt: !2047)
!3584 = !DILocation(line: 167, column: 9, scope: !891, inlinedAt: !3583)
!3585 = !DILocation(line: 170, column: 31, scope: !891, inlinedAt: !3583)
!3586 = !DILocation(line: 172, column: 5, scope: !891, inlinedAt: !3583)
!3587 = !DILocation(line: 172, column: 15, scope: !891, inlinedAt: !3583)
!3588 = !DILocation(line: 172, column: 30, scope: !891, inlinedAt: !3583)
!3589 = !DILocation(line: 172, column: 35, scope: !891, inlinedAt: !3583)
!3590 = !DILocation(line: 173, column: 30, scope: !891, inlinedAt: !3583)
!3591 = !DILocation(line: 173, column: 41, scope: !891, inlinedAt: !3583)
!3592 = !DILocation(line: 1164, column: 20, scope: !842, inlinedAt: !2047)
!3593 = !DILocation(line: 1164, column: 29, scope: !842, inlinedAt: !2047)
!3594 = !DILocation(line: 1164, column: 34, scope: !842, inlinedAt: !2047)
!3595 = !DILocation(line: 1164, column: 38, scope: !842, inlinedAt: !2047)
!3596 = !DILocation(line: 1164, column: 13, scope: !842, inlinedAt: !2047)
!3597 = !DILocation(line: 1166, column: 9, scope: !3598, inlinedAt: !2047)
!3598 = !DILexicalBlockFile(scope: !852, file: !1, discriminator: 1)
!3599 = !DILocation(line: 1166, column: 9, scope: !3600, inlinedAt: !2047)
!3600 = distinct !DILexicalBlock(scope: !852, file: !1, line: 1166, column: 9)
!3601 = !DILocation(line: 1166, column: 9, scope: !852, inlinedAt: !2047)
!3602 = !DILocation(line: 1166, column: 9, scope: !3603, inlinedAt: !2047)
!3603 = !DILexicalBlockFile(scope: !3600, file: !1, discriminator: 3)
!3604 = !DILocation(line: 1168, column: 5, scope: !675, inlinedAt: !2047)
!3605 = !DILocation(line: 1171, column: 24, scope: !854, inlinedAt: !2047)
!3606 = !DILocation(line: 1171, column: 24, scope: !3607, inlinedAt: !2047)
!3607 = !DILexicalBlockFile(scope: !854, file: !1, discriminator: 1)
!3608 = !DILocation(line: 1171, column: 24, scope: !3609, inlinedAt: !2047)
!3609 = !DILexicalBlockFile(scope: !854, file: !1, discriminator: 2)
!3610 = !DILocation(line: 1172, column: 13, scope: !3611, inlinedAt: !2047)
!3611 = distinct !DILexicalBlock(scope: !854, file: !1, line: 1172, column: 13)
!3612 = !DILocation(line: 1172, column: 13, scope: !854, inlinedAt: !2047)
!3613 = !DILocation(line: 1171, column: 24, scope: !3614, inlinedAt: !2047)
!3614 = !DILexicalBlockFile(scope: !3615, file: !1, discriminator: 4)
!3615 = !DILexicalBlockFile(scope: !854, file: !1, discriminator: 3)
!3616 = !DILocation(line: 1173, column: 16, scope: !3611, inlinedAt: !2047)
!3617 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !3618)
!3618 = distinct !DILocation(line: 1175, column: 20, scope: !3611, inlinedAt: !2047)
!3619 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !3618)
!3620 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !3618)
!3621 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !3618)
!3622 = !DILocation(line: 540, column: 23, scope: !876, inlinedAt: !3618)
!3623 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !3618)
!3624 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !3618)
!3625 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !3618)
!3626 = !DILocation(line: 1180, column: 24, scope: !856, inlinedAt: !2047)
!3627 = !DILocation(line: 1180, column: 24, scope: !3628, inlinedAt: !2047)
!3628 = !DILexicalBlockFile(scope: !856, file: !1, discriminator: 1)
!3629 = !DILocation(line: 1180, column: 24, scope: !3630, inlinedAt: !2047)
!3630 = !DILexicalBlockFile(scope: !856, file: !1, discriminator: 2)
!3631 = !DILocation(line: 1180, column: 24, scope: !3632, inlinedAt: !2047)
!3632 = !DILexicalBlockFile(scope: !3633, file: !1, discriminator: 4)
!3633 = !DILexicalBlockFile(scope: !856, file: !1, discriminator: 3)
!3634 = !DILocation(line: 1180, column: 20, scope: !856, inlinedAt: !2047)
!3635 = !DILocation(line: 1181, column: 13, scope: !3636, inlinedAt: !2047)
!3636 = distinct !DILexicalBlock(scope: !856, file: !1, line: 1181, column: 13)
!3637 = !DILocation(line: 1181, column: 13, scope: !3638, inlinedAt: !2047)
!3638 = !DILexicalBlockFile(scope: !3636, file: !1, discriminator: 1)
!3639 = !DILocation(line: 1181, column: 13, scope: !856, inlinedAt: !2047)
!3640 = !DILocation(line: 1182, column: 16, scope: !3636, inlinedAt: !2047)
!3641 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !3642)
!3642 = distinct !DILocation(line: 1184, column: 20, scope: !3636, inlinedAt: !2047)
!3643 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !3642)
!3644 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !3642)
!3645 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !3642)
!3646 = !DILocation(line: 540, column: 23, scope: !876, inlinedAt: !3642)
!3647 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !3642)
!3648 = !DILocation(line: 540, column: 50, scope: !876, inlinedAt: !3642)
!3649 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !3642)
!3650 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !3642)
!3651 = !DILocation(line: 1189, column: 24, scope: !858, inlinedAt: !2047)
!3652 = !DILocation(line: 1189, column: 24, scope: !3653, inlinedAt: !2047)
!3653 = !DILexicalBlockFile(scope: !858, file: !1, discriminator: 1)
!3654 = !DILocation(line: 1189, column: 24, scope: !3655, inlinedAt: !2047)
!3655 = !DILexicalBlockFile(scope: !858, file: !1, discriminator: 2)
!3656 = !DILocation(line: 1189, column: 24, scope: !3657, inlinedAt: !2047)
!3657 = !DILexicalBlockFile(scope: !3658, file: !1, discriminator: 4)
!3658 = !DILexicalBlockFile(scope: !858, file: !1, discriminator: 3)
!3659 = !DILocation(line: 1189, column: 20, scope: !858, inlinedAt: !2047)
!3660 = !DILocation(line: 1190, column: 13, scope: !3661, inlinedAt: !2047)
!3661 = distinct !DILexicalBlock(scope: !858, file: !1, line: 1190, column: 13)
!3662 = !DILocation(line: 1190, column: 13, scope: !858, inlinedAt: !2047)
!3663 = !DILocation(line: 1191, column: 17, scope: !3664, inlinedAt: !2047)
!3664 = distinct !DILexicalBlock(scope: !3665, file: !1, line: 1191, column: 17)
!3665 = distinct !DILexicalBlock(scope: !3661, file: !1, line: 1190, column: 35)
!3666 = !DILocation(line: 1191, column: 17, scope: !3667, inlinedAt: !2047)
!3667 = !DILexicalBlockFile(scope: !3664, file: !1, discriminator: 2)
!3668 = !DILocation(line: 1191, column: 17, scope: !3665, inlinedAt: !2047)
!3669 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !3670)
!3670 = distinct !DILocation(line: 1196, column: 20, scope: !3661, inlinedAt: !2047)
!3671 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !3670)
!3672 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !3670)
!3673 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !3670)
!3674 = !DILocation(line: 540, column: 23, scope: !876, inlinedAt: !3670)
!3675 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !3670)
!3676 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !3670)
!3677 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !3670)
!3678 = !DILocation(line: 1196, column: 13, scope: !3661, inlinedAt: !2047)
!3679 = !DILocation(line: 1193, column: 16, scope: !3665, inlinedAt: !2047)
!3680 = !DILocation(line: 1203, column: 13, scope: !867, inlinedAt: !2047)
!3681 = !DILocation(line: 1203, column: 13, scope: !860, inlinedAt: !2047)
!3682 = !DILocation(line: 1204, column: 20, scope: !3683, inlinedAt: !2047)
!3683 = distinct !DILexicalBlock(scope: !867, file: !1, line: 1203, column: 29)
!3684 = !DILocation(line: 1205, column: 17, scope: !3683, inlinedAt: !2047)
!3685 = !DILocation(line: 1204, column: 20, scope: !3686, inlinedAt: !2047)
!3686 = !DILexicalBlockFile(scope: !3683, file: !1, discriminator: 2)
!3687 = !DILocation(line: 1204, column: 20, scope: !3688, inlinedAt: !2047)
!3688 = !DILexicalBlockFile(scope: !3689, file: !1, discriminator: 4)
!3689 = !DILexicalBlockFile(scope: !3683, file: !1, discriminator: 3)
!3690 = !DILocation(line: 1204, column: 20, scope: !3691, inlinedAt: !2047)
!3691 = !DILexicalBlockFile(scope: !3683, file: !1, discriminator: 1)
!3692 = !DILocation(line: 1205, column: 17, scope: !3691, inlinedAt: !2047)
!3693 = !DILocation(line: 1205, column: 17, scope: !3686, inlinedAt: !2047)
!3694 = !DILocation(line: 1205, column: 17, scope: !3688, inlinedAt: !2047)
!3695 = !DILocation(line: 1202, column: 20, scope: !860, inlinedAt: !2047)
!3696 = !DILocation(line: 1207, column: 39, scope: !3697, inlinedAt: !2047)
!3697 = distinct !DILexicalBlock(scope: !3683, file: !1, line: 1207, column: 17)
!3698 = !DILocation(line: 1207, column: 17, scope: !3697, inlinedAt: !2047)
!3699 = !DILocation(line: 1207, column: 17, scope: !3683, inlinedAt: !2047)
!3700 = !DILocation(line: 1206, column: 19, scope: !3683, inlinedAt: !2047)
!3701 = !DILocation(line: 1208, column: 20, scope: !3697, inlinedAt: !2047)
!3702 = !DILocation(line: 1212, column: 9, scope: !3683, inlinedAt: !2047)
!3703 = !DILocation(line: 1210, column: 41, scope: !3697, inlinedAt: !2047)
!3704 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !3705)
!3705 = distinct !DILocation(line: 1210, column: 24, scope: !3697, inlinedAt: !2047)
!3706 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !3705)
!3707 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !3705)
!3708 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !3705)
!3709 = !DILocation(line: 540, column: 23, scope: !876, inlinedAt: !3705)
!3710 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !3705)
!3711 = !DILocation(line: 540, column: 50, scope: !876, inlinedAt: !3705)
!3712 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !3705)
!3713 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !3705)
!3714 = !DILocation(line: 1210, column: 17, scope: !3697, inlinedAt: !2047)
!3715 = !DILocation(line: 1215, column: 33, scope: !865, inlinedAt: !2047)
!3716 = !DILocation(line: 1216, column: 26, scope: !865, inlinedAt: !2047)
!3717 = !DILocation(line: 1215, column: 33, scope: !3718, inlinedAt: !2047)
!3718 = !DILexicalBlockFile(scope: !865, file: !1, discriminator: 2)
!3719 = !DILocation(line: 1215, column: 33, scope: !3720, inlinedAt: !2047)
!3720 = !DILexicalBlockFile(scope: !3721, file: !1, discriminator: 4)
!3721 = !DILexicalBlockFile(scope: !865, file: !1, discriminator: 3)
!3722 = !DILocation(line: 1215, column: 33, scope: !3723, inlinedAt: !2047)
!3723 = !DILexicalBlockFile(scope: !865, file: !1, discriminator: 1)
!3724 = !DILocation(line: 1216, column: 26, scope: !3723, inlinedAt: !2047)
!3725 = !DILocation(line: 1216, column: 26, scope: !3718, inlinedAt: !2047)
!3726 = !DILocation(line: 1216, column: 26, scope: !3720, inlinedAt: !2047)
!3727 = !DILocation(line: 1216, column: 19, scope: !865, inlinedAt: !2047)
!3728 = !DILocation(line: 1218, column: 19, scope: !865, inlinedAt: !2047)
!3729 = !DILocation(line: 1219, column: 26, scope: !3730, inlinedAt: !2047)
!3730 = distinct !DILexicalBlock(scope: !865, file: !1, line: 1219, column: 17)
!3731 = !DILocation(line: 1217, column: 17, scope: !865, inlinedAt: !2047)
!3732 = !DILocation(line: 1219, column: 17, scope: !865, inlinedAt: !2047)
!3733 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !3734)
!3734 = distinct !DILocation(line: 1220, column: 24, scope: !3730, inlinedAt: !2047)
!3735 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !3734)
!3736 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !3734)
!3737 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !3734)
!3738 = !DILocation(line: 540, column: 23, scope: !876, inlinedAt: !3734)
!3739 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !3734)
!3740 = !DILocation(line: 540, column: 50, scope: !876, inlinedAt: !3734)
!3741 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !3734)
!3742 = !DILocation(line: 169, column: 23, scope: !891, inlinedAt: !3743)
!3743 = distinct !DILocation(line: 1223, column: 17, scope: !3744, inlinedAt: !2047)
!3744 = distinct !DILexicalBlock(scope: !865, file: !1, line: 1222, column: 17)
!3745 = !DILocation(line: 167, column: 9, scope: !891, inlinedAt: !3743)
!3746 = !DILocation(line: 170, column: 31, scope: !891, inlinedAt: !3743)
!3747 = !DILocation(line: 172, column: 5, scope: !891, inlinedAt: !3743)
!3748 = !DILocation(line: 172, column: 15, scope: !891, inlinedAt: !3743)
!3749 = !DILocation(line: 172, column: 30, scope: !891, inlinedAt: !3743)
!3750 = !DILocation(line: 172, column: 35, scope: !891, inlinedAt: !3743)
!3751 = !DILocation(line: 173, column: 30, scope: !891, inlinedAt: !3743)
!3752 = !DILocation(line: 173, column: 41, scope: !891, inlinedAt: !3743)
!3753 = !DILocation(line: 1222, column: 17, scope: !865, inlinedAt: !2047)
!3754 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !3734)
!3755 = !DILocation(line: 1228, column: 17, scope: !3756, inlinedAt: !2047)
!3756 = distinct !DILexicalBlock(scope: !866, file: !1, line: 1227, column: 14)
!3757 = !DILocation(line: 1228, column: 17, scope: !3758, inlinedAt: !2047)
!3758 = !DILexicalBlockFile(scope: !3756, file: !1, discriminator: 1)
!3759 = !DILocation(line: 1228, column: 17, scope: !3760, inlinedAt: !2047)
!3760 = !DILexicalBlockFile(scope: !3756, file: !1, discriminator: 2)
!3761 = !DILocation(line: 1228, column: 17, scope: !3762, inlinedAt: !2047)
!3762 = !DILexicalBlockFile(scope: !3763, file: !1, discriminator: 4)
!3763 = !DILexicalBlockFile(scope: !3756, file: !1, discriminator: 3)
!3764 = !DILocation(line: 1229, column: 16, scope: !3756, inlinedAt: !2047)
!3765 = !DILocation(line: 1236, column: 20, scope: !872, inlinedAt: !2047)
!3766 = !DILocation(line: 1236, column: 20, scope: !3767, inlinedAt: !2047)
!3767 = !DILexicalBlockFile(scope: !872, file: !1, discriminator: 1)
!3768 = !DILocation(line: 1236, column: 20, scope: !3769, inlinedAt: !2047)
!3769 = !DILexicalBlockFile(scope: !872, file: !1, discriminator: 2)
!3770 = !DILocation(line: 1236, column: 20, scope: !3771, inlinedAt: !2047)
!3771 = !DILexicalBlockFile(scope: !3772, file: !1, discriminator: 4)
!3772 = !DILexicalBlockFile(scope: !872, file: !1, discriminator: 3)
!3773 = !DILocation(line: 1236, column: 16, scope: !872, inlinedAt: !2047)
!3774 = !DILocation(line: 1238, column: 13, scope: !3775, inlinedAt: !2047)
!3775 = distinct !DILexicalBlock(scope: !872, file: !1, line: 1238, column: 13)
!3776 = !DILocation(line: 1238, column: 21, scope: !3775, inlinedAt: !2047)
!3777 = !DILocation(line: 1238, column: 13, scope: !872, inlinedAt: !2047)
!3778 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !3779)
!3779 = distinct !DILocation(line: 1239, column: 20, scope: !3775, inlinedAt: !2047)
!3780 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !3779)
!3781 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !3779)
!3782 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !3779)
!3783 = !DILocation(line: 540, column: 23, scope: !876, inlinedAt: !3779)
!3784 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !3779)
!3785 = !DILocation(line: 540, column: 50, scope: !876, inlinedAt: !3779)
!3786 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !3779)
!3787 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !3779)
!3788 = !DILocation(line: 1239, column: 13, scope: !3775, inlinedAt: !2047)
!3789 = !DILocation(line: 1242, column: 15, scope: !872, inlinedAt: !2047)
!3790 = !DILocation(line: 1246, column: 37, scope: !3791, inlinedAt: !2047)
!3791 = distinct !DILexicalBlock(scope: !872, file: !1, line: 1246, column: 13)
!3792 = !DILocation(line: 1246, column: 13, scope: !3791, inlinedAt: !2047)
!3793 = !DILocation(line: 1246, column: 68, scope: !3791, inlinedAt: !2047)
!3794 = !DILocation(line: 1246, column: 13, scope: !872, inlinedAt: !2047)
!3795 = !DILocation(line: 1247, column: 13, scope: !3796, inlinedAt: !2047)
!3796 = distinct !DILexicalBlock(scope: !3791, file: !1, line: 1246, column: 73)
!3797 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !3798)
!3798 = distinct !DILocation(line: 1248, column: 20, scope: !3796, inlinedAt: !2047)
!3799 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !3798)
!3800 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !3798)
!3801 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !3798)
!3802 = !DILocation(line: 540, column: 23, scope: !876, inlinedAt: !3798)
!3803 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !3798)
!3804 = !DILocation(line: 540, column: 50, scope: !876, inlinedAt: !3798)
!3805 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !3798)
!3806 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !3798)
!3807 = !DILocation(line: 1248, column: 13, scope: !3796, inlinedAt: !2047)
!3808 = !DILocation(line: 1250, column: 14, scope: !3809, inlinedAt: !2047)
!3809 = distinct !DILexicalBlock(scope: !872, file: !1, line: 1250, column: 13)
!3810 = !DILocation(line: 1250, column: 13, scope: !872, inlinedAt: !2047)
!3811 = !DILocation(line: 1251, column: 13, scope: !3812, inlinedAt: !2047)
!3812 = distinct !DILexicalBlock(scope: !3809, file: !1, line: 1250, column: 57)
!3813 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !3814)
!3814 = distinct !DILocation(line: 1252, column: 20, scope: !3812, inlinedAt: !2047)
!3815 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !3814)
!3816 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !3814)
!3817 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !3814)
!3818 = !DILocation(line: 540, column: 23, scope: !876, inlinedAt: !3814)
!3819 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !3814)
!3820 = !DILocation(line: 540, column: 50, scope: !876, inlinedAt: !3814)
!3821 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !3814)
!3822 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !3814)
!3823 = !DILocation(line: 1252, column: 13, scope: !3812, inlinedAt: !2047)
!3824 = !DILocation(line: 169, column: 23, scope: !891, inlinedAt: !3825)
!3825 = distinct !DILocation(line: 1254, column: 13, scope: !3826, inlinedAt: !2047)
!3826 = distinct !DILexicalBlock(scope: !872, file: !1, line: 1254, column: 13)
!3827 = !DILocation(line: 167, column: 9, scope: !891, inlinedAt: !3825)
!3828 = !DILocation(line: 170, column: 31, scope: !891, inlinedAt: !3825)
!3829 = !DILocation(line: 172, column: 5, scope: !891, inlinedAt: !3825)
!3830 = !DILocation(line: 172, column: 15, scope: !891, inlinedAt: !3825)
!3831 = !DILocation(line: 172, column: 30, scope: !891, inlinedAt: !3825)
!3832 = !DILocation(line: 172, column: 35, scope: !891, inlinedAt: !3825)
!3833 = !DILocation(line: 173, column: 30, scope: !891, inlinedAt: !3825)
!3834 = !DILocation(line: 173, column: 41, scope: !891, inlinedAt: !3825)
!3835 = !DILocation(line: 534, column: 24, scope: !876, inlinedAt: !3836)
!3836 = distinct !DILocation(line: 1263, column: 16, scope: !675, inlinedAt: !2047)
!3837 = !DILocation(line: 534, column: 44, scope: !876, inlinedAt: !3836)
!3838 = !DILocation(line: 534, column: 55, scope: !876, inlinedAt: !3836)
!3839 = !DILocation(line: 534, column: 70, scope: !876, inlinedAt: !3836)
!3840 = !DILocation(line: 540, column: 23, scope: !876, inlinedAt: !3836)
!3841 = !DILocation(line: 540, column: 19, scope: !876, inlinedAt: !3836)
!3842 = !DILocation(line: 540, column: 50, scope: !876, inlinedAt: !3836)
!3843 = !DILocation(line: 540, column: 59, scope: !876, inlinedAt: !3836)
!3844 = !DILocation(line: 538, column: 5, scope: !876, inlinedAt: !3836)
!3845 = !DILocation(line: 1263, column: 9, scope: !675, inlinedAt: !2047)
!3846 = !DILocation(line: 521, column: 17, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !2048, file: !1, line: 521, column: 13)
!3848 = !DILocation(line: 521, column: 13, scope: !2048)
!3849 = !DILocation(line: 522, column: 23, scope: !3847)
!3850 = !DILocation(line: 522, column: 13, scope: !3847)
!3851 = !DILocation(line: 1267, column: 15, scope: !659, inlinedAt: !2047)
!3852 = !DILocation(line: 525, column: 19, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !611, file: !1, line: 524, column: 9)
!3854 = !DILocation(line: 525, column: 9, scope: !3853)
!3855 = !DILocation(line: 526, column: 5, scope: !611)
!3856 = !DILocation(line: 364, column: 21, scope: !918)
!3857 = !DILocation(line: 364, column: 39, scope: !918)
!3858 = !DILocation(line: 364, column: 49, scope: !918)
!3859 = !DILocation(line: 364, column: 69, scope: !918)
!3860 = !DILocation(line: 365, column: 22, scope: !918)
!3861 = !DILocation(line: 367, column: 5, scope: !918)
!3862 = !DILocation(line: 367, column: 10, scope: !918)
!3863 = !DILocation(line: 369, column: 11, scope: !918)
!3864 = !DILocation(line: 371, column: 9, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !918, file: !1, line: 371, column: 9)
!3866 = !DILocation(line: 371, column: 9, scope: !918)
!3867 = !DILocation(line: 373, column: 22, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3865, file: !1, line: 373, column: 14)
!3869 = !DILocation(line: 373, column: 14, scope: !3865)
!3870 = !DILocation(line: 374, column: 19, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3872, file: !1, line: 374, column: 13)
!3872 = distinct !DILexicalBlock(scope: !3868, file: !1, line: 373, column: 31)
!3873 = !DILocation(line: 374, column: 13, scope: !3872)
!3874 = !DILocation(line: 375, column: 13, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3871, file: !1, line: 374, column: 28)
!3876 = !DILocation(line: 376, column: 18, scope: !3875)
!3877 = !DILocation(line: 376, column: 15, scope: !3875)
!3878 = !DILocation(line: 377, column: 9, scope: !3875)
!3879 = !DILocation(line: 378, column: 18, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3872, file: !1, line: 378, column: 13)
!3881 = !DILocation(line: 379, column: 47, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3880, file: !1, line: 378, column: 24)
!3883 = !DILocation(line: 379, column: 42, scope: !3882)
!3884 = !DILocation(line: 378, column: 13, scope: !3872)
!3885 = !DILocation(line: 379, column: 13, scope: !3882)
!3886 = !DILocation(line: 368, column: 9, scope: !918)
!3887 = !DILocation(line: 382, column: 18, scope: !3882)
!3888 = !DILocation(line: 382, column: 15, scope: !3882)
!3889 = !DILocation(line: 383, column: 27, scope: !3882)
!3890 = !DILocation(line: 383, column: 30, scope: !3882)
!3891 = !DILocation(line: 383, column: 40, scope: !3882)
!3892 = !DILocation(line: 383, column: 44, scope: !3882)
!3893 = !DILocation(line: 383, column: 54, scope: !3882)
!3894 = !DILocation(line: 383, column: 47, scope: !3882)
!3895 = !DILocation(line: 383, column: 60, scope: !3882)
!3896 = !DILocation(line: 383, column: 13, scope: !3897)
!3897 = !DILexicalBlockFile(scope: !3898, file: !1, discriminator: 5)
!3898 = !DILexicalBlockFile(scope: !3882, file: !1, discriminator: 3)
!3899 = !DILocation(line: 384, column: 46, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3882, file: !1, line: 383, column: 67)
!3901 = !DILocation(line: 385, column: 53, scope: !3900)
!3902 = !DILocation(line: 384, column: 17, scope: !3900)
!3903 = !DILocation(line: 386, column: 22, scope: !3900)
!3904 = !DILocation(line: 386, column: 19, scope: !3900)
!3905 = !DILocation(line: 387, column: 18, scope: !3900)
!3906 = !DILocation(line: 383, column: 22, scope: !3882)
!3907 = !DILocation(line: 391, column: 13, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3880, file: !1, line: 390, column: 14)
!3909 = !DILocation(line: 392, column: 18, scope: !3908)
!3910 = !DILocation(line: 392, column: 15, scope: !3908)
!3911 = !DILocation(line: 394, column: 43, scope: !3872)
!3912 = !DILocation(line: 394, column: 38, scope: !3872)
!3913 = !DILocation(line: 394, column: 9, scope: !3872)
!3914 = !DILocation(line: 396, column: 5, scope: !3872)
!3915 = !DILocation(line: 397, column: 21, scope: !918)
!3916 = !DILocation(line: 397, column: 5, scope: !918)
!3917 = !DILocation(line: 398, column: 1, scope: !918)
!3918 = !DILocation(line: 398, column: 1, scope: !3919)
!3919 = !DILexicalBlockFile(scope: !918, file: !1, discriminator: 1)
!3920 = !DILocation(line: 155, column: 26, scope: !899)
!3921 = !DILocation(line: 155, column: 38, scope: !899)
!3922 = !DILocation(line: 157, column: 16, scope: !899)
!3923 = !DILocation(line: 158, column: 9, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !899, file: !1, line: 158, column: 9)
!3925 = !DILocation(line: 158, column: 9, scope: !899)
!3926 = !DILocation(line: 157, column: 22, scope: !899)
!3927 = !DILocation(line: 159, column: 9, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3924, file: !1, line: 158, column: 14)
!3929 = !DILocation(line: 160, column: 5, scope: !3928)
!3930 = !DILocation(line: 161, column: 5, scope: !899)
!3931 = !DILocation(line: 146, column: 23, scope: !914)
!3932 = !DILocation(line: 146, column: 35, scope: !914)
!3933 = !DILocation(line: 148, column: 9, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !914, file: !1, line: 148, column: 9)
!3935 = !DILocation(line: 148, column: 9, scope: !914)
!3936 = !DILocation(line: 149, column: 9, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3934, file: !1, line: 148, column: 14)
!3938 = !DILocation(line: 150, column: 5, scope: !3937)
!3939 = !DILocation(line: 151, column: 5, scope: !914)
!3940 = !DILocation(line: 1632, column: 23, scope: !965)
!3941 = !DILocation(line: 1632, column: 42, scope: !965)
!3942 = !DILocation(line: 1632, column: 52, scope: !965)
!3943 = !DILocation(line: 1634, column: 5, scope: !965)
!3944 = !DILocation(line: 1634, column: 26, scope: !965)
!3945 = !DILocation(line: 1676, column: 20, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3947, file: !1, line: 1676, column: 17)
!3947 = distinct !DILexicalBlock(scope: !976, file: !1, line: 1674, column: 9)
!3948 = !DILocation(line: 1634, column: 17, scope: !965)
!3949 = !DILocation(line: 1635, column: 21, scope: !965)
!3950 = !DILocation(line: 1635, column: 14, scope: !965)
!3951 = !DILocation(line: 1635, column: 10, scope: !965)
!3952 = !DILocation(line: 1637, column: 13, scope: !965)
!3953 = !DILocation(line: 1637, column: 5, scope: !965)
!3954 = !DILocation(line: 1667, column: 20, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !976, file: !1, line: 1666, column: 9)
!3956 = !DILocation(line: 1667, column: 20, scope: !3957)
!3957 = !DILexicalBlockFile(scope: !3955, file: !1, discriminator: 1)
!3958 = !DILocation(line: 1667, column: 20, scope: !3959)
!3959 = !DILexicalBlockFile(scope: !3955, file: !1, discriminator: 2)
!3960 = !DILocation(line: 1675, column: 20, scope: !3947)
!3961 = !DILocation(line: 1675, column: 20, scope: !3962)
!3962 = !DILexicalBlockFile(scope: !3947, file: !1, discriminator: 1)
!3963 = !DILocation(line: 1675, column: 20, scope: !3964)
!3964 = !DILexicalBlockFile(scope: !3947, file: !1, discriminator: 2)
!3965 = !DILocation(line: 1676, column: 19, scope: !3946)
!3966 = !DILocation(line: 1676, column: 34, scope: !3946)
!3967 = !DILocation(line: 1679, column: 19, scope: !3947)
!3968 = !DILocation(line: 1681, column: 9, scope: !3947)
!3969 = !DILocation(line: 1696, column: 23, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3971, file: !1, line: 1691, column: 33)
!3971 = distinct !DILexicalBlock(scope: !3972, file: !1, line: 1691, column: 17)
!3972 = distinct !DILexicalBlock(scope: !976, file: !1, line: 1689, column: 9)
!3973 = !DILocation(line: 1690, column: 20, scope: !3972)
!3974 = !DILocation(line: 1690, column: 20, scope: !3975)
!3975 = !DILexicalBlockFile(scope: !3972, file: !1, discriminator: 1)
!3976 = !DILocation(line: 1690, column: 20, scope: !3977)
!3977 = !DILexicalBlockFile(scope: !3972, file: !1, discriminator: 2)
!3978 = !DILocation(line: 1693, column: 28, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3970, file: !1, line: 1692, column: 21)
!3980 = !DILocation(line: 1697, column: 62, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3971, file: !1, line: 1697, column: 24)
!3982 = !DILocation(line: 1691, column: 25, scope: !3971)
!3983 = !DILocation(line: 1691, column: 17, scope: !3972)
!3984 = !DILocation(line: 1692, column: 27, scope: !3979)
!3985 = !DILocation(line: 1692, column: 21, scope: !3970)
!3986 = !DILocation(line: 1693, column: 28, scope: !3987)
!3987 = !DILexicalBlockFile(scope: !3979, file: !1, discriminator: 1)
!3988 = !DILocation(line: 1693, column: 28, scope: !3989)
!3989 = !DILexicalBlockFile(scope: !3979, file: !1, discriminator: 2)
!3990 = !DILocation(line: 1695, column: 28, scope: !3979)
!3991 = !DILocation(line: 1695, column: 28, scope: !3987)
!3992 = !DILocation(line: 1695, column: 28, scope: !3989)
!3993 = !DILocation(line: 1697, column: 13, scope: !3970)
!3994 = !DILocation(line: 1697, column: 34, scope: !3981)
!3995 = !DILocation(line: 1697, column: 70, scope: !3981)
!3996 = !DILocation(line: 1697, column: 24, scope: !3971)
!3997 = !DILocation(line: 1698, column: 23, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3981, file: !1, line: 1697, column: 78)
!3999 = !DILocation(line: 1699, column: 13, scope: !3998)
!4000 = !DILocation(line: 1705, column: 17, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !4002, file: !1, line: 1705, column: 17)
!4002 = distinct !DILexicalBlock(scope: !976, file: !1, line: 1704, column: 9)
!4003 = !DILocation(line: 1705, column: 25, scope: !4001)
!4004 = !DILocation(line: 1705, column: 17, scope: !4002)
!4005 = !DILocation(line: 1706, column: 23, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !4001, file: !1, line: 1705, column: 33)
!4007 = !DILocation(line: 1707, column: 24, scope: !4006)
!4008 = !DILocation(line: 1708, column: 24, scope: !4006)
!4009 = !DILocation(line: 1707, column: 24, scope: !4010)
!4010 = !DILexicalBlockFile(scope: !4006, file: !1, discriminator: 2)
!4011 = !DILocation(line: 1707, column: 24, scope: !4012)
!4012 = !DILexicalBlockFile(scope: !4006, file: !1, discriminator: 1)
!4013 = !DILocation(line: 1708, column: 24, scope: !4012)
!4014 = !DILocation(line: 1708, column: 24, scope: !4010)
!4015 = !DILocation(line: 1710, column: 30, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !4001, file: !1, line: 1710, column: 22)
!4017 = !DILocation(line: 1712, column: 24, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !4016, file: !1, line: 1710, column: 38)
!4019 = !DILocation(line: 1713, column: 24, scope: !4018)
!4020 = !DILocation(line: 1710, column: 22, scope: !4001)
!4021 = !DILocation(line: 1712, column: 24, scope: !4022)
!4022 = !DILexicalBlockFile(scope: !4018, file: !1, discriminator: 2)
!4023 = !DILocation(line: 1712, column: 24, scope: !4024)
!4024 = !DILexicalBlockFile(scope: !4018, file: !1, discriminator: 1)
!4025 = !DILocation(line: 1713, column: 24, scope: !4024)
!4026 = !DILocation(line: 1713, column: 24, scope: !4022)
!4027 = !DILocation(line: 1714, column: 23, scope: !4018)
!4028 = !DILocation(line: 1715, column: 13, scope: !4018)
!4029 = !DILocation(line: 1717, column: 24, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !4016, file: !1, line: 1716, column: 18)
!4031 = !DILocation(line: 1717, column: 24, scope: !4032)
!4032 = !DILexicalBlockFile(scope: !4030, file: !1, discriminator: 1)
!4033 = !DILocation(line: 1717, column: 24, scope: !4034)
!4034 = !DILexicalBlockFile(scope: !4030, file: !1, discriminator: 2)
!4035 = !DILocation(line: 1726, column: 22, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !4037, file: !1, line: 1726, column: 21)
!4037 = distinct !DILexicalBlock(scope: !4038, file: !1, line: 1725, column: 22)
!4038 = distinct !DILexicalBlock(scope: !4039, file: !1, line: 1725, column: 13)
!4039 = distinct !DILexicalBlock(scope: !975, file: !1, line: 1725, column: 13)
!4040 = !DILocation(line: 1726, column: 21, scope: !4036)
!4041 = !DILocation(line: 1726, column: 21, scope: !4037)
!4042 = !DILocation(line: 1731, column: 23, scope: !4037)
!4043 = !DILocation(line: 1724, column: 19, scope: !975)
!4044 = !DILocation(line: 1732, column: 21, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4037, file: !1, line: 1732, column: 21)
!4046 = !DILocation(line: 1732, column: 21, scope: !4037)
!4047 = !DILocation(line: 1735, column: 19, scope: !975)
!4048 = !DILocation(line: 1744, column: 9, scope: !976)
!4049 = !DILocation(line: 1748, column: 17, scope: !965)
!4050 = !DILocation(line: 1748, column: 15, scope: !965)
!4051 = !DILocation(line: 1749, column: 5, scope: !965)
!4052 = !DILocation(line: 1750, column: 1, scope: !965)
