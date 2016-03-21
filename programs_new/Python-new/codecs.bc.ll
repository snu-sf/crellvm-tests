; ModuleID = 'irs-onlybc/codecs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Py_atomic_address = type { i8* }
%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, {}*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, {}*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PyNumberMethods = type { %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, {}*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)* }
%struct.PySequenceMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)*, i8*, i32 (%struct._object*, i64, %struct._object*)*, i8*, i32 (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)* }
%struct.PyMappingMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)* }
%struct.PyBufferProcs = type { i32 (%struct._object*, %struct.bufferinfo*, i32)*, void (%struct._object*, %struct.bufferinfo*)* }
%struct.bufferinfo = type { i8*, %struct._object*, i64, i64, i32, i32, i8*, i64*, i64*, i64*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct.anon.0 = type { i8*, %struct.PyMethodDef }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._frame = type opaque
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }
%struct.PyCompactUnicodeObject = type { %struct.PyASCIIObject, i64, i8*, i64 }
%struct.PyUnicodeObject = type { %struct.PyCompactUnicodeObject, %union.anon }
%union.anon = type { i8* }

@.str = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@Py_hexdigits = global i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), align 8
@_PyThreadState_Current = external global %struct._Py_atomic_address, align 8
@PyExc_TypeError = external global %struct._object*, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"argument must be callable\00", align 1
@PyExc_LookupError = external global %struct._object*, align 8
@.str.2 = private unnamed_addr constant [58 x i8] c"no codec search functions registered: can't find encoding\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"codec search functions must return 4-tuples\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"unknown encoding: %s\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"incrementaldecoder\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"incrementalencoder\00", align 1
@_PyCodec_LookupTextEncoding.PyId__is_text_encoding = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), %struct._object* null }, align 8
@.str.7 = private unnamed_addr constant [18 x i8] c"_is_text_encoding\00", align 1
@PyTuple_Type = external global %struct._typeobject, align 8
@PyExc_AttributeError = external global %struct._object*, align 8
@.str.8 = private unnamed_addr constant [67 x i8] c"'%.400s' is not a text encoding; use %s to handle arbitrary codecs\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"handler must be callable\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"unknown error handler name '%.400s'\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"codec must pass exception instance\00", align 1
@PyExc_UnicodeEncodeError = external global %struct._object*, align 8
@PyExc_UnicodeDecodeError = external global %struct._object*, align 8
@PyExc_UnicodeTranslateError = external global %struct._object*, align 8
@.str.13 = private unnamed_addr constant [5 x i8] c"(Nn)\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"(Cn)\00", align 1
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.15 = private unnamed_addr constant [20 x i8] c"string is too large\00", align 1
@_Py_ctype_tolower = external constant [256 x i8], align 16
@.str.16 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"Os\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.20 = private unnamed_addr constant [46 x i8] c"encoder must return a tuple (object, integer)\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"%s with '%s' codec failed\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"decoding\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"decoder must return a tuple (object,integer)\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"codecs.encode()\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"codecs.decode()\00", align 1
@wrong_exception_type.PyId___class__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), %struct._object* null }, align 8
@.str.26 = private unnamed_addr constant [10 x i8] c"__class__\00", align 1
@wrong_exception_type.PyId___name__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), %struct._object* null }, align 8
@.str.27 = private unnamed_addr constant [9 x i8] c"__name__\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"don't know how to handle %S in error callback\00", align 1
@_PyCodecRegistry_Init.methods = internal global [7 x %struct.anon.0] [%struct.anon.0 { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @strict_errors, i32 8, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.30, i32 0, i32 0) } }, %struct.anon.0 { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @ignore_errors, i32 8, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.33, i32 0, i32 0) } }, %struct.anon.0 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), %struct.PyMethodDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @replace_errors, i32 8, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.36, i32 0, i32 0) } }, %struct.anon.0 { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i32 0, i32 0), %struct.PyMethodDef { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @xmlcharrefreplace_errors, i32 8, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.39, i32 0, i32 0) } }, %struct.anon.0 { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i32 0, i32 0), %struct.PyMethodDef { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @backslashreplace_errors, i32 8, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.42, i32 0, i32 0) } }, %struct.anon.0 { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @surrogatepass_errors, i32 8, i8* null } }, %struct.anon.0 { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i32 0, i32 0), %struct.PyMethodDef { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @surrogateescape_errors, i32 8, i8* null } }], align 16
@.str.29 = private unnamed_addr constant [14 x i8] c"strict_errors\00", align 1
@.str.30 = private unnamed_addr constant [86 x i8] c"Implements the 'strict' error handling, which raises a UnicodeError on coding errors.\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"ignore_errors\00", align 1
@.str.33 = private unnamed_addr constant [84 x i8] c"Implements the 'ignore' error handling, which ignores malformed data and continues.\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"replace_errors\00", align 1
@.str.36 = private unnamed_addr constant [98 x i8] c"Implements the 'replace' error handling, which replaces malformed data with a replacement marker.\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"xmlcharrefreplace\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"xmlcharrefreplace_errors\00", align 1
@.str.39 = private unnamed_addr constant [137 x i8] c"Implements the 'xmlcharrefreplace' error handling, which replaces an unencodable character with the appropriate XML character reference.\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"backslashreplace\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"backslashreplace_errors\00", align 1
@.str.42 = private unnamed_addr constant [126 x i8] c"Implements the 'backslashreplace' error handling, which replaces an unencodable character with a backslashed escape sequence.\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"surrogatepass\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"surrogateescape\00", align 1
@.str.45 = private unnamed_addr constant [38 x i8] c"can't initialize codec error registry\00", align 1
@.str.46 = private unnamed_addr constant [32 x i8] c"can't initialize codec registry\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"encodings\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"(On)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @PyCodec_Register(%struct._object* %search_function) #0 {
entry:
  %retval = alloca i32, align 4
  %search_function.addr = alloca %struct._object*, align 8
  %interp = alloca %struct._is*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %search_function, %struct._object** %search_function.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %search_function.addr, metadata !481, metadata !1104), !dbg !1105
  %0 = bitcast %struct._is** %interp to i8*, !dbg !1106
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1106
  call void @llvm.dbg.declare(metadata %struct._is** %interp, metadata !482, metadata !1104), !dbg !1107
  %1 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !1108
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1108
  call void @llvm.dbg.declare(metadata %struct._Py_atomic_address** %atomic_val, metadata !483, metadata !1104), !dbg !1109
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !1109, !tbaa !1100
  %2 = bitcast i8** %result to i8*, !dbg !1110
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1110
  call void @llvm.dbg.declare(metadata i8** %result, metadata !490, metadata !1104), !dbg !1111
  %3 = bitcast i8*** %volatile_data to i8*, !dbg !1112
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1112
  call void @llvm.dbg.declare(metadata i8*** %volatile_data, metadata !491, metadata !1104), !dbg !1113
  %4 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !1114, !tbaa !1100
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %4, i32 0, i32 0, !dbg !1115
  store i8** %_value, i8*** %volatile_data, align 8, !dbg !1113, !tbaa !1100
  %5 = bitcast i32* %order to i8*, !dbg !1116
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !1116
  call void @llvm.dbg.declare(metadata i32* %order, metadata !494, metadata !1104), !dbg !1117
  store i32 0, i32* %order, align 4, !dbg !1117, !tbaa !1118
  %6 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !1119, !tbaa !1100
  %7 = bitcast %struct._Py_atomic_address* %6 to i8*, !dbg !1119
  %8 = load i32, i32* %order, align 4, !dbg !1120, !tbaa !1118
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %7, i32 %8), !dbg !1121
  %9 = load i32, i32* %order, align 4, !dbg !1122, !tbaa !1118
  switch i32 %9, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ], !dbg !1123

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2), !dbg !1124
  br label %sw.epilog, !dbg !1129

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !1130

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %10 = load i8**, i8*** %volatile_data, align 8, !dbg !1132, !tbaa !1100
  %11 = load volatile i8*, i8** %10, align 8, !dbg !1135, !tbaa !1100
  store i8* %11, i8** %result, align 8, !dbg !1136, !tbaa !1100
  %12 = load i32, i32* %order, align 4, !dbg !1137, !tbaa !1118
  switch i32 %12, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ], !dbg !1138

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1), !dbg !1139
  br label %sw.epilog.3, !dbg !1144

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3, !dbg !1145

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %13 = load i8*, i8** %result, align 8, !dbg !1147, !tbaa !1100
  store i8* %13, i8** %tmp, !dbg !1150, !tbaa !1100
  %14 = bitcast i32* %order to i8*, !dbg !1151
  call void @llvm.lifetime.end(i64 4, i8* %14) #2, !dbg !1151
  %15 = bitcast i8*** %volatile_data to i8*, !dbg !1151
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !1151
  %16 = bitcast i8** %result to i8*, !dbg !1151
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !1151
  %17 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !1151
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !1151
  %18 = load i8*, i8** %tmp, !dbg !1152, !tbaa !1100
  %19 = bitcast i8* %18 to %struct._ts*, !dbg !1153
  %interp4 = getelementptr inbounds %struct._ts, %struct._ts* %19, i32 0, i32 2, !dbg !1154
  %20 = load %struct._is*, %struct._is** %interp4, align 8, !dbg !1154, !tbaa !1155
  store %struct._is* %20, %struct._is** %interp, align 8, !dbg !1107, !tbaa !1100
  %21 = load %struct._is*, %struct._is** %interp, align 8, !dbg !1159, !tbaa !1100
  %codec_search_path = getelementptr inbounds %struct._is, %struct._is* %21, i32 0, i32 7, !dbg !1161
  %22 = load %struct._object*, %struct._object** %codec_search_path, align 8, !dbg !1161, !tbaa !1162
  %cmp = icmp eq %struct._object* %22, null, !dbg !1164
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1165

land.lhs.true:                                    ; preds = %sw.epilog.3
  %call = call i32 @_PyCodecRegistry_Init(), !dbg !1166
  %tobool = icmp ne i32 %call, 0, !dbg !1166
  br i1 %tobool, label %if.then, label %if.end, !dbg !1168

if.then:                                          ; preds = %land.lhs.true
  br label %onError, !dbg !1169

if.end:                                           ; preds = %land.lhs.true, %sw.epilog.3
  %23 = load %struct._object*, %struct._object** %search_function.addr, align 8, !dbg !1170, !tbaa !1100
  %cmp5 = icmp eq %struct._object* %23, null, !dbg !1172
  br i1 %cmp5, label %if.then.6, label %if.end.8, !dbg !1173

if.then.6:                                        ; preds = %if.end
  %call7 = call i32 @PyErr_BadArgument(), !dbg !1174
  br label %onError, !dbg !1176

if.end.8:                                         ; preds = %if.end
  %24 = load %struct._object*, %struct._object** %search_function.addr, align 8, !dbg !1177, !tbaa !1100
  %call9 = call i32 @PyCallable_Check(%struct._object* %24), !dbg !1179
  %tobool10 = icmp ne i32 %call9, 0, !dbg !1179
  br i1 %tobool10, label %if.end.12, label %if.then.11, !dbg !1180

if.then.11:                                       ; preds = %if.end.8
  %25 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1181, !tbaa !1100
  call void @PyErr_SetString(%struct._object* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)), !dbg !1183
  br label %onError, !dbg !1184

if.end.12:                                        ; preds = %if.end.8
  %26 = load %struct._is*, %struct._is** %interp, align 8, !dbg !1185, !tbaa !1100
  %codec_search_path13 = getelementptr inbounds %struct._is, %struct._is* %26, i32 0, i32 7, !dbg !1186
  %27 = load %struct._object*, %struct._object** %codec_search_path13, align 8, !dbg !1186, !tbaa !1162
  %28 = load %struct._object*, %struct._object** %search_function.addr, align 8, !dbg !1187, !tbaa !1100
  %call14 = call i32 @PyList_Append(%struct._object* %27, %struct._object* %28), !dbg !1188
  store i32 %call14, i32* %retval, !dbg !1189
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1189

onError:                                          ; preds = %if.then.11, %if.then.6, %if.then
  store i32 -1, i32* %retval, !dbg !1190
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1190

cleanup:                                          ; preds = %onError, %if.end.12
  %29 = bitcast %struct._is** %interp to i8*, !dbg !1191
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !1191
  %30 = load i32, i32* %retval, !dbg !1191
  ret i32 %30, !dbg !1191
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_ANNOTATE_MEMORY_ORDER(i8* %address, i32 %order) #3 {
entry:
  %address.addr = alloca i8*, align 8
  %order.addr = alloca i32, align 4
  store i8* %address, i8** %address.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %address.addr, metadata !730, metadata !1104), !dbg !1192
  store i32 %order, i32* %order.addr, align 4, !tbaa !1118
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !731, metadata !1104), !dbg !1193
  %0 = load i8*, i8** %address.addr, align 8, !dbg !1194, !tbaa !1100
  %1 = load i32, i32* %order.addr, align 4, !dbg !1195, !tbaa !1118
  switch i32 %1, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 0, label %sw.bb.1
    i32 1, label %sw.bb.1
  ], !dbg !1196

sw.bb:                                            ; preds = %entry, %entry, %entry
  br label %sw.epilog, !dbg !1197

sw.bb.1:                                          ; preds = %entry, %entry
  br label %sw.epilog, !dbg !1199

sw.epilog:                                        ; preds = %entry, %sw.bb.1, %sw.bb
  %2 = load i32, i32* %order.addr, align 4, !dbg !1200, !tbaa !1118
  switch i32 %2, label %sw.epilog.4 [
    i32 1, label %sw.bb.2
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.2
    i32 0, label %sw.bb.3
    i32 2, label %sw.bb.3
  ], !dbg !1201

sw.bb.2:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  br label %sw.epilog.4, !dbg !1202

sw.bb.3:                                          ; preds = %sw.epilog, %sw.epilog
  br label %sw.epilog.4, !dbg !1204

sw.epilog.4:                                      ; preds = %sw.epilog, %sw.bb.3, %sw.bb.2
  ret void, !dbg !1205
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_thread_fence(i32 %order) #3 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4, !tbaa !1118
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !736, metadata !1104), !dbg !1206
  %0 = load i32, i32* %order.addr, align 4, !dbg !1207, !tbaa !1118
  %cmp = icmp ne i32 %0, 0, !dbg !1209
  br i1 %cmp, label %if.then, label %if.end, !dbg !1210

if.then:                                          ; preds = %entry
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !dbg !1211, !srcloc !1212
  br label %if.end, !dbg !1211

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1213
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_signal_fence(i32 %order) #3 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4, !tbaa !1118
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !739, metadata !1104), !dbg !1214
  %0 = load i32, i32* %order.addr, align 4, !dbg !1215, !tbaa !1118
  %cmp = icmp ne i32 %0, 0, !dbg !1217
  br i1 %cmp, label %if.then, label %if.end, !dbg !1218

if.then:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !dbg !1219, !srcloc !1220
  br label %if.end, !dbg !1219

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1221
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @_PyCodecRegistry_Init() #0 {
entry:
  %retval = alloca i32, align 4
  %interp = alloca %struct._is*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %mod = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %func = alloca %struct._object*, align 8
  %res = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp51 = alloca %struct._object*, align 8
  %0 = bitcast %struct._is** %interp to i8*, !dbg !1222
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1222
  call void @llvm.dbg.declare(metadata %struct._is** %interp, metadata !909, metadata !1104), !dbg !1223
  %1 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !1224
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1224
  call void @llvm.dbg.declare(metadata %struct._Py_atomic_address** %atomic_val, metadata !910, metadata !1104), !dbg !1225
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !1225, !tbaa !1100
  %2 = bitcast i8** %result to i8*, !dbg !1226
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1226
  call void @llvm.dbg.declare(metadata i8** %result, metadata !912, metadata !1104), !dbg !1227
  %3 = bitcast i8*** %volatile_data to i8*, !dbg !1228
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1228
  call void @llvm.dbg.declare(metadata i8*** %volatile_data, metadata !913, metadata !1104), !dbg !1229
  %4 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !1230, !tbaa !1100
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %4, i32 0, i32 0, !dbg !1231
  store i8** %_value, i8*** %volatile_data, align 8, !dbg !1229, !tbaa !1100
  %5 = bitcast i32* %order to i8*, !dbg !1232
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !1232
  call void @llvm.dbg.declare(metadata i32* %order, metadata !914, metadata !1104), !dbg !1233
  store i32 0, i32* %order, align 4, !dbg !1233, !tbaa !1118
  %6 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !1234, !tbaa !1100
  %7 = bitcast %struct._Py_atomic_address* %6 to i8*, !dbg !1234
  %8 = load i32, i32* %order, align 4, !dbg !1235, !tbaa !1118
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %7, i32 %8), !dbg !1236
  %9 = load i32, i32* %order, align 4, !dbg !1237, !tbaa !1118
  switch i32 %9, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ], !dbg !1238

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2), !dbg !1239
  br label %sw.epilog, !dbg !1244

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !1245

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %10 = load i8**, i8*** %volatile_data, align 8, !dbg !1247, !tbaa !1100
  %11 = load volatile i8*, i8** %10, align 8, !dbg !1250, !tbaa !1100
  store i8* %11, i8** %result, align 8, !dbg !1251, !tbaa !1100
  %12 = load i32, i32* %order, align 4, !dbg !1252, !tbaa !1118
  switch i32 %12, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ], !dbg !1253

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1), !dbg !1254
  br label %sw.epilog.3, !dbg !1259

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3, !dbg !1260

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %13 = load i8*, i8** %result, align 8, !dbg !1262, !tbaa !1100
  store i8* %13, i8** %tmp, !dbg !1265, !tbaa !1100
  %14 = bitcast i32* %order to i8*, !dbg !1266
  call void @llvm.lifetime.end(i64 4, i8* %14) #2, !dbg !1266
  %15 = bitcast i8*** %volatile_data to i8*, !dbg !1266
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !1266
  %16 = bitcast i8** %result to i8*, !dbg !1266
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !1266
  %17 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !1266
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !1266
  %18 = load i8*, i8** %tmp, !dbg !1267, !tbaa !1100
  %19 = bitcast i8* %18 to %struct._ts*, !dbg !1268
  %interp4 = getelementptr inbounds %struct._ts, %struct._ts* %19, i32 0, i32 2, !dbg !1269
  %20 = load %struct._is*, %struct._is** %interp4, align 8, !dbg !1269, !tbaa !1155
  store %struct._is* %20, %struct._is** %interp, align 8, !dbg !1223, !tbaa !1100
  %21 = bitcast %struct._object** %mod to i8*, !dbg !1270
  call void @llvm.lifetime.start(i64 8, i8* %21) #2, !dbg !1270
  call void @llvm.dbg.declare(metadata %struct._object** %mod, metadata !915, metadata !1104), !dbg !1271
  %22 = bitcast i32* %i to i8*, !dbg !1272
  call void @llvm.lifetime.start(i64 4, i8* %22) #2, !dbg !1272
  call void @llvm.dbg.declare(metadata i32* %i, metadata !916, metadata !1104), !dbg !1273
  %23 = load %struct._is*, %struct._is** %interp, align 8, !dbg !1274, !tbaa !1100
  %codec_search_path = getelementptr inbounds %struct._is, %struct._is* %23, i32 0, i32 7, !dbg !1276
  %24 = load %struct._object*, %struct._object** %codec_search_path, align 8, !dbg !1276, !tbaa !1162
  %cmp = icmp ne %struct._object* %24, null, !dbg !1277
  br i1 %cmp, label %if.then, label %if.end, !dbg !1278

if.then:                                          ; preds = %sw.epilog.3
  store i32 0, i32* %retval, !dbg !1279
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1279

if.end:                                           ; preds = %sw.epilog.3
  %call = call %struct._object* @PyList_New(i64 0), !dbg !1280
  %25 = load %struct._is*, %struct._is** %interp, align 8, !dbg !1281, !tbaa !1100
  %codec_search_path7 = getelementptr inbounds %struct._is, %struct._is* %25, i32 0, i32 7, !dbg !1282
  store %struct._object* %call, %struct._object** %codec_search_path7, align 8, !dbg !1283, !tbaa !1162
  %call8 = call %struct._object* @PyDict_New(), !dbg !1284
  %26 = load %struct._is*, %struct._is** %interp, align 8, !dbg !1285, !tbaa !1100
  %codec_search_cache = getelementptr inbounds %struct._is, %struct._is* %26, i32 0, i32 8, !dbg !1286
  store %struct._object* %call8, %struct._object** %codec_search_cache, align 8, !dbg !1287, !tbaa !1288
  %call9 = call %struct._object* @PyDict_New(), !dbg !1289
  %27 = load %struct._is*, %struct._is** %interp, align 8, !dbg !1290, !tbaa !1100
  %codec_error_registry = getelementptr inbounds %struct._is, %struct._is* %27, i32 0, i32 9, !dbg !1291
  store %struct._object* %call9, %struct._object** %codec_error_registry, align 8, !dbg !1292, !tbaa !1293
  %28 = load %struct._is*, %struct._is** %interp, align 8, !dbg !1294, !tbaa !1100
  %codec_error_registry10 = getelementptr inbounds %struct._is, %struct._is* %28, i32 0, i32 9, !dbg !1295
  %29 = load %struct._object*, %struct._object** %codec_error_registry10, align 8, !dbg !1295, !tbaa !1293
  %tobool = icmp ne %struct._object* %29, null, !dbg !1294
  br i1 %tobool, label %if.then.11, label %if.end.31, !dbg !1296

if.then.11:                                       ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !1297, !tbaa !1298
  br label %for.cond, !dbg !1299

for.cond:                                         ; preds = %for.inc, %if.then.11
  %30 = load i32, i32* %i, align 4, !dbg !1300, !tbaa !1298
  %conv = zext i32 %30 to i64, !dbg !1300
  %cmp12 = icmp ult i64 %conv, 7, !dbg !1303
  br i1 %cmp12, label %for.body, label %for.end, !dbg !1304

for.body:                                         ; preds = %for.cond
  %31 = bitcast %struct._object** %func to i8*, !dbg !1305
  call void @llvm.lifetime.start(i64 8, i8* %31) #2, !dbg !1305
  call void @llvm.dbg.declare(metadata %struct._object** %func, metadata !917, metadata !1104), !dbg !1306
  %32 = load i32, i32* %i, align 4, !dbg !1307, !tbaa !1298
  %idxprom = zext i32 %32 to i64, !dbg !1308
  %arrayidx = getelementptr [7 x %struct.anon.0], [7 x %struct.anon.0]* @_PyCodecRegistry_Init.methods, i32 0, i64 %idxprom, !dbg !1308
  %def = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx, i32 0, i32 1, !dbg !1309
  %call15 = call %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef* %def, %struct._object* null, %struct._object* null), !dbg !1310
  store %struct._object* %call15, %struct._object** %func, align 8, !dbg !1306, !tbaa !1100
  %33 = bitcast i32* %res to i8*, !dbg !1311
  call void @llvm.lifetime.start(i64 4, i8* %33) #2, !dbg !1311
  call void @llvm.dbg.declare(metadata i32* %res, metadata !923, metadata !1104), !dbg !1312
  %34 = load %struct._object*, %struct._object** %func, align 8, !dbg !1313, !tbaa !1100
  %tobool17 = icmp ne %struct._object* %34, null, !dbg !1313
  br i1 %tobool17, label %if.end.19, label %if.then.18, !dbg !1315

if.then.18:                                       ; preds = %for.body
  call void @Py_FatalError(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.45, i32 0, i32 0)) #7, !dbg !1316
  unreachable, !dbg !1316

if.end.19:                                        ; preds = %for.body
  %35 = load i32, i32* %i, align 4, !dbg !1317, !tbaa !1298
  %idxprom20 = zext i32 %35 to i64, !dbg !1318
  %arrayidx21 = getelementptr [7 x %struct.anon.0], [7 x %struct.anon.0]* @_PyCodecRegistry_Init.methods, i32 0, i64 %idxprom20, !dbg !1318
  %name = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx21, i32 0, i32 0, !dbg !1319
  %36 = load i8*, i8** %name, align 8, !dbg !1319, !tbaa !1320
  %37 = load %struct._object*, %struct._object** %func, align 8, !dbg !1323, !tbaa !1100
  %call22 = call i32 @PyCodec_RegisterError(i8* %36, %struct._object* %37), !dbg !1324
  store i32 %call22, i32* %res, align 4, !dbg !1325, !tbaa !1298
  br label %do.body, !dbg !1326

do.body:                                          ; preds = %if.end.19
  %38 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1327
  call void @llvm.lifetime.start(i64 8, i8* %38) #2, !dbg !1327
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !924, metadata !1104), !dbg !1329
  %39 = load %struct._object*, %struct._object** %func, align 8, !dbg !1330, !tbaa !1100
  store %struct._object* %39, %struct._object** %_py_decref_tmp, align 8, !dbg !1329, !tbaa !1100
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1331, !tbaa !1100
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0, !dbg !1333
  %41 = load i64, i64* %ob_refcnt, align 8, !dbg !1334, !tbaa !1335
  %dec = add i64 %41, -1, !dbg !1334
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1334, !tbaa !1335
  %cmp24 = icmp ne i64 %dec, 0, !dbg !1337
  br i1 %cmp24, label %if.then.26, label %if.else, !dbg !1338

if.then.26:                                       ; preds = %do.body
  br label %if.end.27, !dbg !1339

if.else:                                          ; preds = %do.body
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1341, !tbaa !1100
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1, !dbg !1343
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1343, !tbaa !1344
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4, !dbg !1345
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1345, !tbaa !1346
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1349, !tbaa !1100
  call void %44(%struct._object* %45), !dbg !1350
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.26
  %46 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1351
  call void @llvm.lifetime.end(i64 8, i8* %46) #2, !dbg !1351
  br label %do.cond, !dbg !1353

do.cond:                                          ; preds = %if.end.27
  br label %do.end, !dbg !1354

do.end:                                           ; preds = %do.cond
  %47 = load i32, i32* %res, align 4, !dbg !1356, !tbaa !1298
  %tobool28 = icmp ne i32 %47, 0, !dbg !1356
  br i1 %tobool28, label %if.then.29, label %if.end.30, !dbg !1358

if.then.29:                                       ; preds = %do.end
  call void @Py_FatalError(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.45, i32 0, i32 0)) #7, !dbg !1359
  unreachable, !dbg !1359

if.end.30:                                        ; preds = %do.end
  %48 = bitcast i32* %res to i8*, !dbg !1360
  call void @llvm.lifetime.end(i64 4, i8* %48) #2, !dbg !1360
  %49 = bitcast %struct._object** %func to i8*, !dbg !1360
  call void @llvm.lifetime.end(i64 8, i8* %49) #2, !dbg !1360
  br label %for.inc, !dbg !1361

for.inc:                                          ; preds = %if.end.30
  %50 = load i32, i32* %i, align 4, !dbg !1362, !tbaa !1298
  %inc = add i32 %50, 1, !dbg !1362
  store i32 %inc, i32* %i, align 4, !dbg !1362, !tbaa !1298
  br label %for.cond, !dbg !1363

for.end:                                          ; preds = %for.cond
  br label %if.end.31, !dbg !1364

if.end.31:                                        ; preds = %for.end, %if.end
  %51 = load %struct._is*, %struct._is** %interp, align 8, !dbg !1365, !tbaa !1100
  %codec_search_path32 = getelementptr inbounds %struct._is, %struct._is* %51, i32 0, i32 7, !dbg !1367
  %52 = load %struct._object*, %struct._object** %codec_search_path32, align 8, !dbg !1367, !tbaa !1162
  %cmp33 = icmp eq %struct._object* %52, null, !dbg !1368
  br i1 %cmp33, label %if.then.42, label %lor.lhs.false, !dbg !1369

lor.lhs.false:                                    ; preds = %if.end.31
  %53 = load %struct._is*, %struct._is** %interp, align 8, !dbg !1370, !tbaa !1100
  %codec_search_cache35 = getelementptr inbounds %struct._is, %struct._is* %53, i32 0, i32 8, !dbg !1371
  %54 = load %struct._object*, %struct._object** %codec_search_cache35, align 8, !dbg !1371, !tbaa !1288
  %cmp36 = icmp eq %struct._object* %54, null, !dbg !1372
  br i1 %cmp36, label %if.then.42, label %lor.lhs.false.38, !dbg !1373

lor.lhs.false.38:                                 ; preds = %lor.lhs.false
  %55 = load %struct._is*, %struct._is** %interp, align 8, !dbg !1374, !tbaa !1100
  %codec_error_registry39 = getelementptr inbounds %struct._is, %struct._is* %55, i32 0, i32 9, !dbg !1375
  %56 = load %struct._object*, %struct._object** %codec_error_registry39, align 8, !dbg !1375, !tbaa !1293
  %cmp40 = icmp eq %struct._object* %56, null, !dbg !1376
  br i1 %cmp40, label %if.then.42, label %if.end.43, !dbg !1377

if.then.42:                                       ; preds = %lor.lhs.false.38, %lor.lhs.false, %if.end.31
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.46, i32 0, i32 0)) #7, !dbg !1378
  unreachable, !dbg !1378

if.end.43:                                        ; preds = %lor.lhs.false.38
  %call44 = call %struct._object* @PyImport_ImportModuleNoBlock(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0)), !dbg !1379
  store %struct._object* %call44, %struct._object** %mod, align 8, !dbg !1380, !tbaa !1100
  %57 = load %struct._object*, %struct._object** %mod, align 8, !dbg !1381, !tbaa !1100
  %cmp45 = icmp eq %struct._object* %57, null, !dbg !1383
  br i1 %cmp45, label %if.then.47, label %if.end.48, !dbg !1384

if.then.47:                                       ; preds = %if.end.43
  store i32 -1, i32* %retval, !dbg !1385
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1385

if.end.48:                                        ; preds = %if.end.43
  br label %do.body.49, !dbg !1387

do.body.49:                                       ; preds = %if.end.48
  %58 = bitcast %struct._object** %_py_decref_tmp51 to i8*, !dbg !1388
  call void @llvm.lifetime.start(i64 8, i8* %58) #2, !dbg !1388
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp51, metadata !926, metadata !1104), !dbg !1390
  %59 = load %struct._object*, %struct._object** %mod, align 8, !dbg !1391, !tbaa !1100
  store %struct._object* %59, %struct._object** %_py_decref_tmp51, align 8, !dbg !1390, !tbaa !1100
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8, !dbg !1392, !tbaa !1100
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0, !dbg !1394
  %61 = load i64, i64* %ob_refcnt52, align 8, !dbg !1395, !tbaa !1335
  %dec53 = add i64 %61, -1, !dbg !1395
  store i64 %dec53, i64* %ob_refcnt52, align 8, !dbg !1395, !tbaa !1335
  %cmp54 = icmp ne i64 %dec53, 0, !dbg !1396
  br i1 %cmp54, label %if.then.56, label %if.else.57, !dbg !1397

if.then.56:                                       ; preds = %do.body.49
  br label %if.end.60, !dbg !1398

if.else.57:                                       ; preds = %do.body.49
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8, !dbg !1400, !tbaa !1100
  %ob_type58 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 1, !dbg !1402
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type58, align 8, !dbg !1402, !tbaa !1344
  %tp_dealloc59 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i32 0, i32 4, !dbg !1403
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc59, align 8, !dbg !1403, !tbaa !1346
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8, !dbg !1404, !tbaa !1100
  call void %64(%struct._object* %65), !dbg !1405
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.57, %if.then.56
  %66 = bitcast %struct._object** %_py_decref_tmp51 to i8*, !dbg !1406
  call void @llvm.lifetime.end(i64 8, i8* %66) #2, !dbg !1406
  br label %do.cond.61, !dbg !1408

do.cond.61:                                       ; preds = %if.end.60
  br label %do.end.62, !dbg !1409

do.end.62:                                        ; preds = %do.cond.61
  %67 = load %struct._is*, %struct._is** %interp, align 8, !dbg !1411, !tbaa !1100
  %codecs_initialized = getelementptr inbounds %struct._is, %struct._is* %67, i32 0, i32 10, !dbg !1412
  store i32 1, i32* %codecs_initialized, align 4, !dbg !1413, !tbaa !1414
  store i32 0, i32* %retval, !dbg !1415
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1415

cleanup:                                          ; preds = %do.end.62, %if.then.47, %if.then
  %68 = bitcast i32* %i to i8*, !dbg !1416
  call void @llvm.lifetime.end(i64 4, i8* %68) #2, !dbg !1416
  %69 = bitcast %struct._object** %mod to i8*, !dbg !1416
  call void @llvm.lifetime.end(i64 8, i8* %69) #2, !dbg !1416
  %70 = bitcast %struct._is** %interp to i8*, !dbg !1416
  call void @llvm.lifetime.end(i64 8, i8* %70) #2, !dbg !1416
  %71 = load i32, i32* %retval, !dbg !1416
  ret i32 %71, !dbg !1416
}

declare i32 @PyErr_BadArgument() #4

declare i32 @PyCallable_Check(%struct._object*) #4

declare void @PyErr_SetString(%struct._object*, i8*) #4

declare i32 @PyList_Append(%struct._object*, %struct._object*) #4

; Function Attrs: nounwind uwtable
define %struct._object* @_PyCodec_Lookup(i8* %encoding) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %encoding.addr = alloca i8*, align 8
  %interp = alloca %struct._is*, align 8
  %result = alloca %struct._object*, align 8
  %args = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result1 = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %func = alloca %struct._object*, align 8
  %_py_decref_tmp50 = alloca %struct._object*, align 8
  %_py_decref_tmp68 = alloca %struct._object*, align 8
  %_py_decref_tmp91 = alloca %struct._object*, align 8
  %_py_decref_tmp105 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp122 = alloca %struct._object*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %encoding.addr, metadata !500, metadata !1104), !dbg !1417
  %0 = bitcast %struct._is** %interp to i8*, !dbg !1418
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1418
  call void @llvm.dbg.declare(metadata %struct._is** %interp, metadata !501, metadata !1104), !dbg !1419
  %1 = bitcast %struct._object** %result to i8*, !dbg !1420
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1420
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !502, metadata !1104), !dbg !1421
  %2 = bitcast %struct._object** %args to i8*, !dbg !1420
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1420
  call void @llvm.dbg.declare(metadata %struct._object** %args, metadata !503, metadata !1104), !dbg !1422
  store %struct._object* null, %struct._object** %args, align 8, !dbg !1422, !tbaa !1100
  %3 = bitcast %struct._object** %v to i8*, !dbg !1420
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1420
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !504, metadata !1104), !dbg !1423
  %4 = bitcast i64* %i to i8*, !dbg !1424
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1424
  call void @llvm.dbg.declare(metadata i64* %i, metadata !505, metadata !1104), !dbg !1425
  %5 = bitcast i64* %len to i8*, !dbg !1424
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !1424
  call void @llvm.dbg.declare(metadata i64* %len, metadata !506, metadata !1104), !dbg !1426
  %6 = load i8*, i8** %encoding.addr, align 8, !dbg !1427, !tbaa !1100
  %cmp = icmp eq i8* %6, null, !dbg !1429
  br i1 %cmp, label %if.then, label %if.end, !dbg !1430

if.then:                                          ; preds = %entry
  %call = call i32 @PyErr_BadArgument(), !dbg !1431
  br label %onError, !dbg !1433

if.end:                                           ; preds = %entry
  %7 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !1434
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !1434
  call void @llvm.dbg.declare(metadata %struct._Py_atomic_address** %atomic_val, metadata !507, metadata !1104), !dbg !1435
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !1435, !tbaa !1100
  %8 = bitcast i8** %result1 to i8*, !dbg !1436
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !1436
  call void @llvm.dbg.declare(metadata i8** %result1, metadata !509, metadata !1104), !dbg !1437
  %9 = bitcast i8*** %volatile_data to i8*, !dbg !1438
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !1438
  call void @llvm.dbg.declare(metadata i8*** %volatile_data, metadata !510, metadata !1104), !dbg !1439
  %10 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !1440, !tbaa !1100
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %10, i32 0, i32 0, !dbg !1441
  store i8** %_value, i8*** %volatile_data, align 8, !dbg !1439, !tbaa !1100
  %11 = bitcast i32* %order to i8*, !dbg !1442
  call void @llvm.lifetime.start(i64 4, i8* %11) #2, !dbg !1442
  call void @llvm.dbg.declare(metadata i32* %order, metadata !511, metadata !1104), !dbg !1443
  store i32 0, i32* %order, align 4, !dbg !1443, !tbaa !1118
  %12 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !1444, !tbaa !1100
  %13 = bitcast %struct._Py_atomic_address* %12 to i8*, !dbg !1444
  %14 = load i32, i32* %order, align 4, !dbg !1445, !tbaa !1118
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %13, i32 %14), !dbg !1446
  %15 = load i32, i32* %order, align 4, !dbg !1447, !tbaa !1118
  switch i32 %15, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ], !dbg !1448

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  call void @_Py_atomic_thread_fence(i32 2), !dbg !1449
  br label %sw.epilog, !dbg !1454

sw.default:                                       ; preds = %if.end
  br label %sw.epilog, !dbg !1455

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %16 = load i8**, i8*** %volatile_data, align 8, !dbg !1457, !tbaa !1100
  %17 = load volatile i8*, i8** %16, align 8, !dbg !1460, !tbaa !1100
  store i8* %17, i8** %result1, align 8, !dbg !1461, !tbaa !1100
  %18 = load i32, i32* %order, align 4, !dbg !1462, !tbaa !1118
  switch i32 %18, label %sw.default.3 [
    i32 1, label %sw.bb.2
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.2
  ], !dbg !1463

sw.bb.2:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1), !dbg !1464
  br label %sw.epilog.4, !dbg !1469

sw.default.3:                                     ; preds = %sw.epilog
  br label %sw.epilog.4, !dbg !1470

sw.epilog.4:                                      ; preds = %sw.default.3, %sw.bb.2
  %19 = load i8*, i8** %result1, align 8, !dbg !1472, !tbaa !1100
  store i8* %19, i8** %tmp, !dbg !1475, !tbaa !1100
  %20 = bitcast i32* %order to i8*, !dbg !1476
  call void @llvm.lifetime.end(i64 4, i8* %20) #2, !dbg !1476
  %21 = bitcast i8*** %volatile_data to i8*, !dbg !1476
  call void @llvm.lifetime.end(i64 8, i8* %21) #2, !dbg !1476
  %22 = bitcast i8** %result1 to i8*, !dbg !1476
  call void @llvm.lifetime.end(i64 8, i8* %22) #2, !dbg !1476
  %23 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !1476
  call void @llvm.lifetime.end(i64 8, i8* %23) #2, !dbg !1476
  %24 = load i8*, i8** %tmp, !dbg !1477, !tbaa !1100
  %25 = bitcast i8* %24 to %struct._ts*, !dbg !1478
  %interp5 = getelementptr inbounds %struct._ts, %struct._ts* %25, i32 0, i32 2, !dbg !1479
  %26 = load %struct._is*, %struct._is** %interp5, align 8, !dbg !1479, !tbaa !1155
  store %struct._is* %26, %struct._is** %interp, align 8, !dbg !1480, !tbaa !1100
  %27 = load %struct._is*, %struct._is** %interp, align 8, !dbg !1481, !tbaa !1100
  %codec_search_path = getelementptr inbounds %struct._is, %struct._is* %27, i32 0, i32 7, !dbg !1483
  %28 = load %struct._object*, %struct._object** %codec_search_path, align 8, !dbg !1483, !tbaa !1162
  %cmp6 = icmp eq %struct._object* %28, null, !dbg !1484
  br i1 %cmp6, label %land.lhs.true, label %if.end.9, !dbg !1485

land.lhs.true:                                    ; preds = %sw.epilog.4
  %call7 = call i32 @_PyCodecRegistry_Init(), !dbg !1486
  %tobool = icmp ne i32 %call7, 0, !dbg !1486
  br i1 %tobool, label %if.then.8, label %if.end.9, !dbg !1488

if.then.8:                                        ; preds = %land.lhs.true
  br label %onError, !dbg !1489

if.end.9:                                         ; preds = %land.lhs.true, %sw.epilog.4
  %29 = load i8*, i8** %encoding.addr, align 8, !dbg !1490, !tbaa !1100
  %call10 = call %struct._object* @normalizestring(i8* %29), !dbg !1491
  store %struct._object* %call10, %struct._object** %v, align 8, !dbg !1492, !tbaa !1100
  %30 = load %struct._object*, %struct._object** %v, align 8, !dbg !1493, !tbaa !1100
  %cmp11 = icmp eq %struct._object* %30, null, !dbg !1495
  br i1 %cmp11, label %if.then.12, label %if.end.13, !dbg !1496

if.then.12:                                       ; preds = %if.end.9
  br label %onError, !dbg !1497

if.end.13:                                        ; preds = %if.end.9
  call void @PyUnicode_InternInPlace(%struct._object** %v), !dbg !1498
  %31 = load %struct._is*, %struct._is** %interp, align 8, !dbg !1499, !tbaa !1100
  %codec_search_cache = getelementptr inbounds %struct._is, %struct._is* %31, i32 0, i32 8, !dbg !1500
  %32 = load %struct._object*, %struct._object** %codec_search_cache, align 8, !dbg !1500, !tbaa !1288
  %33 = load %struct._object*, %struct._object** %v, align 8, !dbg !1501, !tbaa !1100
  %call14 = call %struct._object* @PyDict_GetItem(%struct._object* %32, %struct._object* %33), !dbg !1502
  store %struct._object* %call14, %struct._object** %result, align 8, !dbg !1503, !tbaa !1100
  %34 = load %struct._object*, %struct._object** %result, align 8, !dbg !1504, !tbaa !1100
  %cmp15 = icmp ne %struct._object* %34, null, !dbg !1505
  br i1 %cmp15, label %if.then.16, label %if.end.22, !dbg !1506

if.then.16:                                       ; preds = %if.end.13
  %35 = load %struct._object*, %struct._object** %result, align 8, !dbg !1507, !tbaa !1100
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0, !dbg !1508
  %36 = load i64, i64* %ob_refcnt, align 8, !dbg !1509, !tbaa !1335
  %inc = add i64 %36, 1, !dbg !1509
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1509, !tbaa !1335
  br label %do.body, !dbg !1510

do.body:                                          ; preds = %if.then.16
  %37 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1511
  call void @llvm.lifetime.start(i64 8, i8* %37) #2, !dbg !1511
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !512, metadata !1104), !dbg !1513
  %38 = load %struct._object*, %struct._object** %v, align 8, !dbg !1514, !tbaa !1100
  store %struct._object* %38, %struct._object** %_py_decref_tmp, align 8, !dbg !1513, !tbaa !1100
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1515, !tbaa !1100
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0, !dbg !1517
  %40 = load i64, i64* %ob_refcnt18, align 8, !dbg !1518, !tbaa !1335
  %dec = add i64 %40, -1, !dbg !1518
  store i64 %dec, i64* %ob_refcnt18, align 8, !dbg !1518, !tbaa !1335
  %cmp19 = icmp ne i64 %dec, 0, !dbg !1519
  br i1 %cmp19, label %if.then.20, label %if.else, !dbg !1520

if.then.20:                                       ; preds = %do.body
  br label %if.end.21, !dbg !1521

if.else:                                          ; preds = %do.body
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1523, !tbaa !1100
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1, !dbg !1525
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1525, !tbaa !1344
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4, !dbg !1526
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1526, !tbaa !1346
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1527, !tbaa !1100
  call void %43(%struct._object* %44), !dbg !1528
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.20
  %45 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1529
  call void @llvm.lifetime.end(i64 8, i8* %45) #2, !dbg !1529
  br label %do.cond, !dbg !1531

do.cond:                                          ; preds = %if.end.21
  br label %do.end, !dbg !1532

do.end:                                           ; preds = %do.cond
  %46 = load %struct._object*, %struct._object** %result, align 8, !dbg !1534, !tbaa !1100
  store %struct._object* %46, %struct._object** %retval, !dbg !1535
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.136, !dbg !1535

if.end.22:                                        ; preds = %if.end.13
  %call23 = call %struct._object* @PyTuple_New(i64 1), !dbg !1536
  store %struct._object* %call23, %struct._object** %args, align 8, !dbg !1537, !tbaa !1100
  %47 = load %struct._object*, %struct._object** %args, align 8, !dbg !1538, !tbaa !1100
  %cmp24 = icmp eq %struct._object* %47, null, !dbg !1540
  br i1 %cmp24, label %if.then.25, label %if.end.26, !dbg !1541

if.then.25:                                       ; preds = %if.end.22
  br label %onError, !dbg !1542

if.end.26:                                        ; preds = %if.end.22
  %48 = load %struct._object*, %struct._object** %v, align 8, !dbg !1543, !tbaa !1100
  %49 = load %struct._object*, %struct._object** %args, align 8, !dbg !1544, !tbaa !1100
  %50 = bitcast %struct._object* %49 to %struct.PyTupleObject*, !dbg !1545
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %50, i32 0, i32 1, !dbg !1546
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0, !dbg !1547
  store %struct._object* %48, %struct._object** %arrayidx, align 8, !dbg !1548, !tbaa !1100
  %51 = load %struct._is*, %struct._is** %interp, align 8, !dbg !1549, !tbaa !1100
  %codec_search_path27 = getelementptr inbounds %struct._is, %struct._is* %51, i32 0, i32 7, !dbg !1550
  %52 = load %struct._object*, %struct._object** %codec_search_path27, align 8, !dbg !1550, !tbaa !1162
  %call28 = call i64 @PyList_Size(%struct._object* %52), !dbg !1551
  store i64 %call28, i64* %len, align 8, !dbg !1552, !tbaa !1553
  %53 = load i64, i64* %len, align 8, !dbg !1554, !tbaa !1553
  %cmp29 = icmp slt i64 %53, 0, !dbg !1556
  br i1 %cmp29, label %if.then.30, label %if.end.31, !dbg !1557

if.then.30:                                       ; preds = %if.end.26
  br label %onError, !dbg !1558

if.end.31:                                        ; preds = %if.end.26
  %54 = load i64, i64* %len, align 8, !dbg !1559, !tbaa !1553
  %cmp32 = icmp eq i64 %54, 0, !dbg !1561
  br i1 %cmp32, label %if.then.33, label %if.end.34, !dbg !1562

if.then.33:                                       ; preds = %if.end.31
  %55 = load %struct._object*, %struct._object** @PyExc_LookupError, align 8, !dbg !1563, !tbaa !1100
  call void @PyErr_SetString(%struct._object* %55, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i32 0, i32 0)), !dbg !1565
  br label %onError, !dbg !1566

if.end.34:                                        ; preds = %if.end.31
  store i64 0, i64* %i, align 8, !dbg !1567, !tbaa !1553
  br label %for.cond, !dbg !1568

for.cond:                                         ; preds = %for.inc, %if.end.34
  %56 = load i64, i64* %i, align 8, !dbg !1569, !tbaa !1553
  %57 = load i64, i64* %len, align 8, !dbg !1572, !tbaa !1553
  %cmp35 = icmp slt i64 %56, %57, !dbg !1573
  br i1 %cmp35, label %for.body, label %for.end, !dbg !1574

for.body:                                         ; preds = %for.cond
  %58 = bitcast %struct._object** %func to i8*, !dbg !1575
  call void @llvm.lifetime.start(i64 8, i8* %58) #2, !dbg !1575
  call void @llvm.dbg.declare(metadata %struct._object** %func, metadata !516, metadata !1104), !dbg !1576
  %59 = load %struct._is*, %struct._is** %interp, align 8, !dbg !1577, !tbaa !1100
  %codec_search_path37 = getelementptr inbounds %struct._is, %struct._is* %59, i32 0, i32 7, !dbg !1578
  %60 = load %struct._object*, %struct._object** %codec_search_path37, align 8, !dbg !1578, !tbaa !1162
  %61 = load i64, i64* %i, align 8, !dbg !1579, !tbaa !1553
  %call38 = call %struct._object* @PyList_GetItem(%struct._object* %60, i64 %61), !dbg !1580
  store %struct._object* %call38, %struct._object** %func, align 8, !dbg !1581, !tbaa !1100
  %62 = load %struct._object*, %struct._object** %func, align 8, !dbg !1582, !tbaa !1100
  %cmp39 = icmp eq %struct._object* %62, null, !dbg !1584
  br i1 %cmp39, label %if.then.40, label %if.end.41, !dbg !1585

if.then.40:                                       ; preds = %for.body
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1586

if.end.41:                                        ; preds = %for.body
  %63 = load %struct._object*, %struct._object** %func, align 8, !dbg !1587, !tbaa !1100
  %64 = load %struct._object*, %struct._object** %args, align 8, !dbg !1588, !tbaa !1100
  %call42 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %63, %struct._object* %64, %struct._object* null), !dbg !1589
  store %struct._object* %call42, %struct._object** %result, align 8, !dbg !1590, !tbaa !1100
  %65 = load %struct._object*, %struct._object** %result, align 8, !dbg !1591, !tbaa !1100
  %cmp43 = icmp eq %struct._object* %65, null, !dbg !1593
  br i1 %cmp43, label %if.then.44, label %if.end.45, !dbg !1594

if.then.44:                                       ; preds = %if.end.41
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1595

if.end.45:                                        ; preds = %if.end.41
  %66 = load %struct._object*, %struct._object** %result, align 8, !dbg !1596, !tbaa !1100
  %cmp46 = icmp eq %struct._object* %66, @_Py_NoneStruct, !dbg !1597
  br i1 %cmp46, label %if.then.47, label %if.end.61, !dbg !1598

if.then.47:                                       ; preds = %if.end.45
  br label %do.body.48, !dbg !1599

do.body.48:                                       ; preds = %if.then.47
  %67 = bitcast %struct._object** %_py_decref_tmp50 to i8*, !dbg !1600
  call void @llvm.lifetime.start(i64 8, i8* %67) #2, !dbg !1600
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp50, metadata !520, metadata !1104), !dbg !1602
  %68 = load %struct._object*, %struct._object** %result, align 8, !dbg !1603, !tbaa !1100
  store %struct._object* %68, %struct._object** %_py_decref_tmp50, align 8, !dbg !1602, !tbaa !1100
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8, !dbg !1604, !tbaa !1100
  %ob_refcnt51 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 0, !dbg !1606
  %70 = load i64, i64* %ob_refcnt51, align 8, !dbg !1607, !tbaa !1335
  %dec52 = add i64 %70, -1, !dbg !1607
  store i64 %dec52, i64* %ob_refcnt51, align 8, !dbg !1607, !tbaa !1335
  %cmp53 = icmp ne i64 %dec52, 0, !dbg !1608
  br i1 %cmp53, label %if.then.54, label %if.else.55, !dbg !1609

if.then.54:                                       ; preds = %do.body.48
  br label %if.end.58, !dbg !1610

if.else.55:                                       ; preds = %do.body.48
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8, !dbg !1612, !tbaa !1100
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 1, !dbg !1614
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8, !dbg !1614, !tbaa !1344
  %tp_dealloc57 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %72, i32 0, i32 4, !dbg !1615
  %73 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc57, align 8, !dbg !1615, !tbaa !1346
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8, !dbg !1616, !tbaa !1100
  call void %73(%struct._object* %74), !dbg !1617
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.55, %if.then.54
  %75 = bitcast %struct._object** %_py_decref_tmp50 to i8*, !dbg !1618
  call void @llvm.lifetime.end(i64 8, i8* %75) #2, !dbg !1618
  br label %do.cond.59, !dbg !1620

do.cond.59:                                       ; preds = %if.end.58
  br label %do.end.60, !dbg !1621

do.end.60:                                        ; preds = %do.cond.59
  store i32 9, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1623

if.end.61:                                        ; preds = %if.end.45
  %76 = load %struct._object*, %struct._object** %result, align 8, !dbg !1624, !tbaa !1100
  %ob_type62 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 1, !dbg !1625
  %77 = load %struct._typeobject*, %struct._typeobject** %ob_type62, align 8, !dbg !1625, !tbaa !1344
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %77, i32 0, i32 19, !dbg !1626
  %78 = load i64, i64* %tp_flags, align 8, !dbg !1626, !tbaa !1627
  %and = and i64 %78, 67108864, !dbg !1628
  %cmp63 = icmp ne i64 %and, 0, !dbg !1629
  br i1 %cmp63, label %lor.lhs.false, label %if.then.65, !dbg !1630

lor.lhs.false:                                    ; preds = %if.end.61
  %79 = load %struct._object*, %struct._object** %result, align 8, !dbg !1631, !tbaa !1100
  %80 = bitcast %struct._object* %79 to %struct.PyVarObject*, !dbg !1633
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %80, i32 0, i32 1, !dbg !1634
  %81 = load i64, i64* %ob_size, align 8, !dbg !1634, !tbaa !1635
  %cmp64 = icmp ne i64 %81, 4, !dbg !1636
  br i1 %cmp64, label %if.then.65, label %if.end.79, !dbg !1637

if.then.65:                                       ; preds = %lor.lhs.false, %if.end.61
  %82 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1638, !tbaa !1100
  call void @PyErr_SetString(%struct._object* %82, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i32 0, i32 0)), !dbg !1639
  br label %do.body.66, !dbg !1640

do.body.66:                                       ; preds = %if.then.65
  %83 = bitcast %struct._object** %_py_decref_tmp68 to i8*, !dbg !1641
  call void @llvm.lifetime.start(i64 8, i8* %83) #2, !dbg !1641
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp68, metadata !524, metadata !1104), !dbg !1643
  %84 = load %struct._object*, %struct._object** %result, align 8, !dbg !1644, !tbaa !1100
  store %struct._object* %84, %struct._object** %_py_decref_tmp68, align 8, !dbg !1643, !tbaa !1100
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8, !dbg !1645, !tbaa !1100
  %ob_refcnt69 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 0, !dbg !1647
  %86 = load i64, i64* %ob_refcnt69, align 8, !dbg !1648, !tbaa !1335
  %dec70 = add i64 %86, -1, !dbg !1648
  store i64 %dec70, i64* %ob_refcnt69, align 8, !dbg !1648, !tbaa !1335
  %cmp71 = icmp ne i64 %dec70, 0, !dbg !1649
  br i1 %cmp71, label %if.then.72, label %if.else.73, !dbg !1650

if.then.72:                                       ; preds = %do.body.66
  br label %if.end.76, !dbg !1651

if.else.73:                                       ; preds = %do.body.66
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8, !dbg !1653, !tbaa !1100
  %ob_type74 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 1, !dbg !1655
  %88 = load %struct._typeobject*, %struct._typeobject** %ob_type74, align 8, !dbg !1655, !tbaa !1344
  %tp_dealloc75 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %88, i32 0, i32 4, !dbg !1656
  %89 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc75, align 8, !dbg !1656, !tbaa !1346
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8, !dbg !1657, !tbaa !1100
  call void %89(%struct._object* %90), !dbg !1658
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.73, %if.then.72
  %91 = bitcast %struct._object** %_py_decref_tmp68 to i8*, !dbg !1659
  call void @llvm.lifetime.end(i64 8, i8* %91) #2, !dbg !1659
  br label %do.cond.77, !dbg !1661

do.cond.77:                                       ; preds = %if.end.76
  br label %do.end.78, !dbg !1662

do.end.78:                                        ; preds = %do.cond.77
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1664

if.end.79:                                        ; preds = %lor.lhs.false
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1665

cleanup:                                          ; preds = %do.end.78, %if.then.44, %if.then.40, %if.end.79, %do.end.60
  %92 = bitcast %struct._object** %func to i8*, !dbg !1666
  call void @llvm.lifetime.end(i64 8, i8* %92) #2, !dbg !1666
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.136 [
    i32 9, label %for.inc
    i32 7, label %for.end
    i32 2, label %onError
  ]

for.inc:                                          ; preds = %cleanup
  %93 = load i64, i64* %i, align 8, !dbg !1667, !tbaa !1553
  %inc80 = add i64 %93, 1, !dbg !1667
  store i64 %inc80, i64* %i, align 8, !dbg !1667, !tbaa !1553
  br label %for.cond, !dbg !1668

for.end:                                          ; preds = %cleanup, %for.cond
  %94 = load i64, i64* %i, align 8, !dbg !1669, !tbaa !1553
  %95 = load i64, i64* %len, align 8, !dbg !1671, !tbaa !1553
  %cmp81 = icmp eq i64 %94, %95, !dbg !1672
  br i1 %cmp81, label %if.then.82, label %if.end.84, !dbg !1673

if.then.82:                                       ; preds = %for.end
  %96 = load %struct._object*, %struct._object** @PyExc_LookupError, align 8, !dbg !1674, !tbaa !1100
  %97 = load i8*, i8** %encoding.addr, align 8, !dbg !1676, !tbaa !1100
  %call83 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i8* %97), !dbg !1677
  br label %onError, !dbg !1678

if.end.84:                                        ; preds = %for.end
  %98 = load %struct._is*, %struct._is** %interp, align 8, !dbg !1679, !tbaa !1100
  %codec_search_cache85 = getelementptr inbounds %struct._is, %struct._is* %98, i32 0, i32 8, !dbg !1680
  %99 = load %struct._object*, %struct._object** %codec_search_cache85, align 8, !dbg !1680, !tbaa !1288
  %100 = load %struct._object*, %struct._object** %v, align 8, !dbg !1681, !tbaa !1100
  %101 = load %struct._object*, %struct._object** %result, align 8, !dbg !1682, !tbaa !1100
  %call86 = call i32 @PyDict_SetItem(%struct._object* %99, %struct._object* %100, %struct._object* %101), !dbg !1683
  %cmp87 = icmp slt i32 %call86, 0, !dbg !1684
  br i1 %cmp87, label %if.then.88, label %if.end.102, !dbg !1685

if.then.88:                                       ; preds = %if.end.84
  br label %do.body.89, !dbg !1686

do.body.89:                                       ; preds = %if.then.88
  %102 = bitcast %struct._object** %_py_decref_tmp91 to i8*, !dbg !1687
  call void @llvm.lifetime.start(i64 8, i8* %102) #2, !dbg !1687
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp91, metadata !528, metadata !1104), !dbg !1689
  %103 = load %struct._object*, %struct._object** %result, align 8, !dbg !1690, !tbaa !1100
  store %struct._object* %103, %struct._object** %_py_decref_tmp91, align 8, !dbg !1689, !tbaa !1100
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8, !dbg !1691, !tbaa !1100
  %ob_refcnt92 = getelementptr inbounds %struct._object, %struct._object* %104, i32 0, i32 0, !dbg !1693
  %105 = load i64, i64* %ob_refcnt92, align 8, !dbg !1694, !tbaa !1335
  %dec93 = add i64 %105, -1, !dbg !1694
  store i64 %dec93, i64* %ob_refcnt92, align 8, !dbg !1694, !tbaa !1335
  %cmp94 = icmp ne i64 %dec93, 0, !dbg !1695
  br i1 %cmp94, label %if.then.95, label %if.else.96, !dbg !1696

if.then.95:                                       ; preds = %do.body.89
  br label %if.end.99, !dbg !1697

if.else.96:                                       ; preds = %do.body.89
  %106 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8, !dbg !1699, !tbaa !1100
  %ob_type97 = getelementptr inbounds %struct._object, %struct._object* %106, i32 0, i32 1, !dbg !1701
  %107 = load %struct._typeobject*, %struct._typeobject** %ob_type97, align 8, !dbg !1701, !tbaa !1344
  %tp_dealloc98 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %107, i32 0, i32 4, !dbg !1702
  %108 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc98, align 8, !dbg !1702, !tbaa !1346
  %109 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8, !dbg !1703, !tbaa !1100
  call void %108(%struct._object* %109), !dbg !1704
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.96, %if.then.95
  %110 = bitcast %struct._object** %_py_decref_tmp91 to i8*, !dbg !1705
  call void @llvm.lifetime.end(i64 8, i8* %110) #2, !dbg !1705
  br label %do.cond.100, !dbg !1707

do.cond.100:                                      ; preds = %if.end.99
  br label %do.end.101, !dbg !1708

do.end.101:                                       ; preds = %do.cond.100
  br label %onError, !dbg !1710

if.end.102:                                       ; preds = %if.end.84
  br label %do.body.103, !dbg !1711

do.body.103:                                      ; preds = %if.end.102
  %111 = bitcast %struct._object** %_py_decref_tmp105 to i8*, !dbg !1712
  call void @llvm.lifetime.start(i64 8, i8* %111) #2, !dbg !1712
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp105, metadata !532, metadata !1104), !dbg !1714
  %112 = load %struct._object*, %struct._object** %args, align 8, !dbg !1715, !tbaa !1100
  store %struct._object* %112, %struct._object** %_py_decref_tmp105, align 8, !dbg !1714, !tbaa !1100
  %113 = load %struct._object*, %struct._object** %_py_decref_tmp105, align 8, !dbg !1716, !tbaa !1100
  %ob_refcnt106 = getelementptr inbounds %struct._object, %struct._object* %113, i32 0, i32 0, !dbg !1718
  %114 = load i64, i64* %ob_refcnt106, align 8, !dbg !1719, !tbaa !1335
  %dec107 = add i64 %114, -1, !dbg !1719
  store i64 %dec107, i64* %ob_refcnt106, align 8, !dbg !1719, !tbaa !1335
  %cmp108 = icmp ne i64 %dec107, 0, !dbg !1720
  br i1 %cmp108, label %if.then.109, label %if.else.110, !dbg !1721

if.then.109:                                      ; preds = %do.body.103
  br label %if.end.113, !dbg !1722

if.else.110:                                      ; preds = %do.body.103
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp105, align 8, !dbg !1724, !tbaa !1100
  %ob_type111 = getelementptr inbounds %struct._object, %struct._object* %115, i32 0, i32 1, !dbg !1726
  %116 = load %struct._typeobject*, %struct._typeobject** %ob_type111, align 8, !dbg !1726, !tbaa !1344
  %tp_dealloc112 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %116, i32 0, i32 4, !dbg !1727
  %117 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc112, align 8, !dbg !1727, !tbaa !1346
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp105, align 8, !dbg !1728, !tbaa !1100
  call void %117(%struct._object* %118), !dbg !1729
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.110, %if.then.109
  %119 = bitcast %struct._object** %_py_decref_tmp105 to i8*, !dbg !1730
  call void @llvm.lifetime.end(i64 8, i8* %119) #2, !dbg !1730
  br label %do.cond.114, !dbg !1732

do.cond.114:                                      ; preds = %if.end.113
  br label %do.end.115, !dbg !1733

do.end.115:                                       ; preds = %do.cond.114
  %120 = load %struct._object*, %struct._object** %result, align 8, !dbg !1735, !tbaa !1100
  store %struct._object* %120, %struct._object** %retval, !dbg !1736
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.136, !dbg !1736

onError:                                          ; preds = %cleanup, %do.end.101, %if.then.82, %if.then.33, %if.then.30, %if.then.25, %if.then.12, %if.then.8, %if.then
  br label %do.body.116, !dbg !1737

do.body.116:                                      ; preds = %onError
  %121 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1738
  call void @llvm.lifetime.start(i64 8, i8* %121) #2, !dbg !1738
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !534, metadata !1104), !dbg !1740
  %122 = load %struct._object*, %struct._object** %args, align 8, !dbg !1741, !tbaa !1100
  store %struct._object* %122, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1740, !tbaa !1100
  %123 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1742, !tbaa !1100
  %cmp118 = icmp ne %struct._object* %123, null, !dbg !1743
  br i1 %cmp118, label %if.then.119, label %if.end.133, !dbg !1744

if.then.119:                                      ; preds = %do.body.116
  br label %do.body.120, !dbg !1745

do.body.120:                                      ; preds = %if.then.119
  %124 = bitcast %struct._object** %_py_decref_tmp122 to i8*, !dbg !1747
  call void @llvm.lifetime.start(i64 8, i8* %124) #2, !dbg !1747
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp122, metadata !536, metadata !1104), !dbg !1749
  %125 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1750, !tbaa !1100
  store %struct._object* %125, %struct._object** %_py_decref_tmp122, align 8, !dbg !1749, !tbaa !1100
  %126 = load %struct._object*, %struct._object** %_py_decref_tmp122, align 8, !dbg !1751, !tbaa !1100
  %ob_refcnt123 = getelementptr inbounds %struct._object, %struct._object* %126, i32 0, i32 0, !dbg !1753
  %127 = load i64, i64* %ob_refcnt123, align 8, !dbg !1754, !tbaa !1335
  %dec124 = add i64 %127, -1, !dbg !1754
  store i64 %dec124, i64* %ob_refcnt123, align 8, !dbg !1754, !tbaa !1335
  %cmp125 = icmp ne i64 %dec124, 0, !dbg !1755
  br i1 %cmp125, label %if.then.126, label %if.else.127, !dbg !1756

if.then.126:                                      ; preds = %do.body.120
  br label %if.end.130, !dbg !1757

if.else.127:                                      ; preds = %do.body.120
  %128 = load %struct._object*, %struct._object** %_py_decref_tmp122, align 8, !dbg !1759, !tbaa !1100
  %ob_type128 = getelementptr inbounds %struct._object, %struct._object* %128, i32 0, i32 1, !dbg !1761
  %129 = load %struct._typeobject*, %struct._typeobject** %ob_type128, align 8, !dbg !1761, !tbaa !1344
  %tp_dealloc129 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %129, i32 0, i32 4, !dbg !1762
  %130 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc129, align 8, !dbg !1762, !tbaa !1346
  %131 = load %struct._object*, %struct._object** %_py_decref_tmp122, align 8, !dbg !1763, !tbaa !1100
  call void %130(%struct._object* %131), !dbg !1764
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.127, %if.then.126
  %132 = bitcast %struct._object** %_py_decref_tmp122 to i8*, !dbg !1765
  call void @llvm.lifetime.end(i64 8, i8* %132) #2, !dbg !1765
  br label %do.cond.131, !dbg !1767

do.cond.131:                                      ; preds = %if.end.130
  br label %do.end.132, !dbg !1768

do.end.132:                                       ; preds = %do.cond.131
  br label %if.end.133, !dbg !1770

if.end.133:                                       ; preds = %do.end.132, %do.body.116
  %133 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1772
  call void @llvm.lifetime.end(i64 8, i8* %133) #2, !dbg !1772
  br label %do.cond.134, !dbg !1775

do.cond.134:                                      ; preds = %if.end.133
  br label %do.end.135, !dbg !1776

do.end.135:                                       ; preds = %do.cond.134
  store %struct._object* null, %struct._object** %retval, !dbg !1778
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.136, !dbg !1778

cleanup.136:                                      ; preds = %do.end.135, %do.end.115, %cleanup, %do.end
  %134 = bitcast i64* %len to i8*, !dbg !1779
  call void @llvm.lifetime.end(i64 8, i8* %134) #2, !dbg !1779
  %135 = bitcast i64* %i to i8*, !dbg !1779
  call void @llvm.lifetime.end(i64 8, i8* %135) #2, !dbg !1779
  %136 = bitcast %struct._object** %v to i8*, !dbg !1779
  call void @llvm.lifetime.end(i64 8, i8* %136) #2, !dbg !1779
  %137 = bitcast %struct._object** %args to i8*, !dbg !1779
  call void @llvm.lifetime.end(i64 8, i8* %137) #2, !dbg !1779
  %138 = bitcast %struct._object** %result to i8*, !dbg !1779
  call void @llvm.lifetime.end(i64 8, i8* %138) #2, !dbg !1779
  %139 = bitcast %struct._is** %interp to i8*, !dbg !1779
  call void @llvm.lifetime.end(i64 8, i8* %139) #2, !dbg !1779
  %140 = load %struct._object*, %struct._object** %retval, !dbg !1779
  ret %struct._object* %140, !dbg !1779
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @normalizestring(i8* %string) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %string.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  %p = alloca i8*, align 8
  %v = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %ch = alloca i8, align 1
  store i8* %string, i8** %string.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %string.addr, metadata !742, metadata !1104), !dbg !1780
  %0 = bitcast i64* %i to i8*, !dbg !1781
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1781
  call void @llvm.dbg.declare(metadata i64* %i, metadata !743, metadata !1104), !dbg !1782
  %1 = bitcast i64* %len to i8*, !dbg !1783
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1783
  call void @llvm.dbg.declare(metadata i64* %len, metadata !744, metadata !1104), !dbg !1784
  %2 = load i8*, i8** %string.addr, align 8, !dbg !1785, !tbaa !1100
  %call = call i64 @strlen(i8* %2) #8, !dbg !1786
  store i64 %call, i64* %len, align 8, !dbg !1784, !tbaa !1553
  %3 = bitcast i8** %p to i8*, !dbg !1787
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1787
  call void @llvm.dbg.declare(metadata i8** %p, metadata !745, metadata !1104), !dbg !1788
  %4 = bitcast %struct._object** %v to i8*, !dbg !1789
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1789
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !746, metadata !1104), !dbg !1790
  %5 = load i64, i64* %len, align 8, !dbg !1791, !tbaa !1553
  %cmp = icmp ugt i64 %5, 9223372036854775807, !dbg !1793
  br i1 %cmp, label %if.then, label %if.end, !dbg !1794

if.then:                                          ; preds = %entry
  %6 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !1795, !tbaa !1100
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0)), !dbg !1797
  store %struct._object* null, %struct._object** %retval, !dbg !1798
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1798

if.end:                                           ; preds = %entry
  %7 = load i64, i64* %len, align 8, !dbg !1799, !tbaa !1553
  %add = add i64 %7, 1, !dbg !1800
  %call1 = call i8* @PyMem_Malloc(i64 %add), !dbg !1801
  store i8* %call1, i8** %p, align 8, !dbg !1802, !tbaa !1100
  %8 = load i8*, i8** %p, align 8, !dbg !1803, !tbaa !1100
  %cmp2 = icmp eq i8* %8, null, !dbg !1805
  br i1 %cmp2, label %if.then.3, label %if.end.5, !dbg !1806

if.then.3:                                        ; preds = %if.end
  %call4 = call %struct._object* @PyErr_NoMemory(), !dbg !1807
  store %struct._object* %call4, %struct._object** %retval, !dbg !1808
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1808

if.end.5:                                         ; preds = %if.end
  store i64 0, i64* %i, align 8, !dbg !1809, !tbaa !1553
  br label %for.cond, !dbg !1810

for.cond:                                         ; preds = %for.inc, %if.end.5
  %9 = load i64, i64* %i, align 8, !dbg !1811, !tbaa !1553
  %10 = load i64, i64* %len, align 8, !dbg !1814, !tbaa !1553
  %cmp6 = icmp ult i64 %9, %10, !dbg !1815
  br i1 %cmp6, label %for.body, label %for.end, !dbg !1816

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start(i64 1, i8* %ch) #2, !dbg !1817
  call void @llvm.dbg.declare(metadata i8* %ch, metadata !747, metadata !1104), !dbg !1818
  %11 = load i64, i64* %i, align 8, !dbg !1819, !tbaa !1553
  %12 = load i8*, i8** %string.addr, align 8, !dbg !1820, !tbaa !1100
  %arrayidx = getelementptr i8, i8* %12, i64 %11, !dbg !1820
  %13 = load i8, i8* %arrayidx, align 1, !dbg !1820, !tbaa !1118
  store i8 %13, i8* %ch, align 1, !dbg !1818, !tbaa !1118
  %14 = load i8, i8* %ch, align 1, !dbg !1821, !tbaa !1118
  %conv = sext i8 %14 to i32, !dbg !1821
  %cmp7 = icmp eq i32 %conv, 32, !dbg !1823
  br i1 %cmp7, label %if.then.9, label %if.else, !dbg !1824

if.then.9:                                        ; preds = %for.body
  store i8 45, i8* %ch, align 1, !dbg !1825, !tbaa !1118
  br label %if.end.16, !dbg !1826

if.else:                                          ; preds = %for.body
  %15 = load i8, i8* %ch, align 1, !dbg !1827, !tbaa !1118
  %conv10 = sext i8 %15 to i32, !dbg !1828
  %and = and i32 %conv10, 255, !dbg !1829
  %conv11 = trunc i32 %and to i8, !dbg !1830
  %conv12 = zext i8 %conv11 to i32, !dbg !1831
  %and13 = and i32 %conv12, 255, !dbg !1832
  %conv14 = trunc i32 %and13 to i8, !dbg !1833
  %idxprom = zext i8 %conv14 to i64, !dbg !1834
  %arrayidx15 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom, !dbg !1834
  %16 = load i8, i8* %arrayidx15, align 1, !dbg !1834, !tbaa !1118
  store i8 %16, i8* %ch, align 1, !dbg !1835, !tbaa !1118
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.9
  %17 = load i8, i8* %ch, align 1, !dbg !1836, !tbaa !1118
  %18 = load i64, i64* %i, align 8, !dbg !1837, !tbaa !1553
  %19 = load i8*, i8** %p, align 8, !dbg !1838, !tbaa !1100
  %arrayidx17 = getelementptr i8, i8* %19, i64 %18, !dbg !1838
  store i8 %17, i8* %arrayidx17, align 1, !dbg !1839, !tbaa !1118
  call void @llvm.lifetime.end(i64 1, i8* %ch) #2, !dbg !1840
  br label %for.inc, !dbg !1841

for.inc:                                          ; preds = %if.end.16
  %20 = load i64, i64* %i, align 8, !dbg !1842, !tbaa !1553
  %inc = add i64 %20, 1, !dbg !1842
  store i64 %inc, i64* %i, align 8, !dbg !1842, !tbaa !1553
  br label %for.cond, !dbg !1843

for.end:                                          ; preds = %for.cond
  %21 = load i64, i64* %i, align 8, !dbg !1844, !tbaa !1553
  %22 = load i8*, i8** %p, align 8, !dbg !1845, !tbaa !1100
  %arrayidx18 = getelementptr i8, i8* %22, i64 %21, !dbg !1845
  store i8 0, i8* %arrayidx18, align 1, !dbg !1846, !tbaa !1118
  %23 = load i8*, i8** %p, align 8, !dbg !1847, !tbaa !1100
  %call19 = call %struct._object* @PyUnicode_FromString(i8* %23), !dbg !1848
  store %struct._object* %call19, %struct._object** %v, align 8, !dbg !1849, !tbaa !1100
  %24 = load %struct._object*, %struct._object** %v, align 8, !dbg !1850, !tbaa !1100
  %cmp20 = icmp eq %struct._object* %24, null, !dbg !1852
  br i1 %cmp20, label %if.then.22, label %if.end.23, !dbg !1853

if.then.22:                                       ; preds = %for.end
  store %struct._object* null, %struct._object** %retval, !dbg !1854
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1854

if.end.23:                                        ; preds = %for.end
  %25 = load i8*, i8** %p, align 8, !dbg !1855, !tbaa !1100
  call void @PyMem_Free(i8* %25), !dbg !1856
  %26 = load %struct._object*, %struct._object** %v, align 8, !dbg !1857, !tbaa !1100
  store %struct._object* %26, %struct._object** %retval, !dbg !1858
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1858

cleanup:                                          ; preds = %if.end.23, %if.then.22, %if.then.3, %if.then
  %27 = bitcast %struct._object** %v to i8*, !dbg !1859
  call void @llvm.lifetime.end(i64 8, i8* %27) #2, !dbg !1859
  %28 = bitcast i8** %p to i8*, !dbg !1859
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !1859
  %29 = bitcast i64* %len to i8*, !dbg !1859
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !1859
  %30 = bitcast i64* %i to i8*, !dbg !1859
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !1859
  %31 = load %struct._object*, %struct._object** %retval, !dbg !1859
  ret %struct._object* %31, !dbg !1859
}

declare void @PyUnicode_InternInPlace(%struct._object**) #4

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #4

declare %struct._object* @PyTuple_New(i64) #4

declare i64 @PyList_Size(%struct._object*) #4

declare %struct._object* @PyList_GetItem(%struct._object*, i64) #4

declare %struct._object* @PyEval_CallObjectWithKeywords(%struct._object*, %struct._object*, %struct._object*) #4

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #4

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #4

; Function Attrs: nounwind uwtable
define i32 @PyCodec_KnownEncoding(i8* %encoding) #0 {
entry:
  %retval = alloca i32, align 4
  %encoding.addr = alloca i8*, align 8
  %codecs = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %encoding.addr, metadata !543, metadata !1104), !dbg !1860
  %0 = bitcast %struct._object** %codecs to i8*, !dbg !1861
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1861
  call void @llvm.dbg.declare(metadata %struct._object** %codecs, metadata !544, metadata !1104), !dbg !1862
  %1 = load i8*, i8** %encoding.addr, align 8, !dbg !1863, !tbaa !1100
  %call = call %struct._object* @_PyCodec_Lookup(i8* %1), !dbg !1864
  store %struct._object* %call, %struct._object** %codecs, align 8, !dbg !1865, !tbaa !1100
  %2 = load %struct._object*, %struct._object** %codecs, align 8, !dbg !1866, !tbaa !1100
  %tobool = icmp ne %struct._object* %2, null, !dbg !1866
  br i1 %tobool, label %if.else, label %if.then, !dbg !1867

if.then:                                          ; preds = %entry
  call void @PyErr_Clear(), !dbg !1868
  store i32 0, i32* %retval, !dbg !1870
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1870

if.else:                                          ; preds = %entry
  br label %do.body, !dbg !1871

do.body:                                          ; preds = %if.else
  %3 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1872
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1872
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !545, metadata !1104), !dbg !1874
  %4 = load %struct._object*, %struct._object** %codecs, align 8, !dbg !1875, !tbaa !1100
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8, !dbg !1874, !tbaa !1100
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1876, !tbaa !1100
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0, !dbg !1878
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !1879, !tbaa !1335
  %dec = add i64 %6, -1, !dbg !1879
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1879, !tbaa !1335
  %cmp = icmp ne i64 %dec, 0, !dbg !1880
  br i1 %cmp, label %if.then.1, label %if.else.2, !dbg !1881

if.then.1:                                        ; preds = %do.body
  br label %if.end, !dbg !1882

if.else.2:                                        ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1884, !tbaa !1100
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !1886
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1886, !tbaa !1344
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4, !dbg !1887
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1887, !tbaa !1346
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1888, !tbaa !1100
  call void %9(%struct._object* %10), !dbg !1889
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  %11 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1890
  call void @llvm.lifetime.end(i64 8, i8* %11) #2, !dbg !1890
  br label %do.cond, !dbg !1892

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1893

do.end:                                           ; preds = %do.cond
  store i32 1, i32* %retval, !dbg !1895
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1895

cleanup:                                          ; preds = %do.end, %if.then
  %12 = bitcast %struct._object** %codecs to i8*, !dbg !1896
  call void @llvm.lifetime.end(i64 8, i8* %12) #2, !dbg !1896
  %13 = load i32, i32* %retval, !dbg !1896
  ret i32 %13, !dbg !1896
}

declare void @PyErr_Clear() #4

; Function Attrs: nounwind uwtable
define %struct._object* @_PyCodecInfo_GetIncrementalDecoder(%struct._object* %codec_info, i8* %errors) #0 {
entry:
  %codec_info.addr = alloca %struct._object*, align 8
  %errors.addr = alloca i8*, align 8
  store %struct._object* %codec_info, %struct._object** %codec_info.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %codec_info.addr, metadata !553, metadata !1104), !dbg !1897
  store i8* %errors, i8** %errors.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %errors.addr, metadata !554, metadata !1104), !dbg !1898
  %0 = load %struct._object*, %struct._object** %codec_info.addr, align 8, !dbg !1899, !tbaa !1100
  %1 = load i8*, i8** %errors.addr, align 8, !dbg !1900, !tbaa !1100
  %call = call %struct._object* @codec_makeincrementalcodec(%struct._object* %0, i8* %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0)), !dbg !1901
  ret %struct._object* %call, !dbg !1902
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @codec_makeincrementalcodec(%struct._object* %codec_info, i8* %errors, i8* %attrname) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %codec_info.addr = alloca %struct._object*, align 8
  %errors.addr = alloca i8*, align 8
  %attrname.addr = alloca i8*, align 8
  %ret = alloca %struct._object*, align 8
  %inccodec = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %codec_info, %struct._object** %codec_info.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %codec_info.addr, metadata !753, metadata !1104), !dbg !1903
  store i8* %errors, i8** %errors.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %errors.addr, metadata !754, metadata !1104), !dbg !1904
  store i8* %attrname, i8** %attrname.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %attrname.addr, metadata !755, metadata !1104), !dbg !1905
  %0 = bitcast %struct._object** %ret to i8*, !dbg !1906
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1906
  call void @llvm.dbg.declare(metadata %struct._object** %ret, metadata !756, metadata !1104), !dbg !1907
  %1 = bitcast %struct._object** %inccodec to i8*, !dbg !1906
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1906
  call void @llvm.dbg.declare(metadata %struct._object** %inccodec, metadata !757, metadata !1104), !dbg !1908
  %2 = load %struct._object*, %struct._object** %codec_info.addr, align 8, !dbg !1909, !tbaa !1100
  %3 = load i8*, i8** %attrname.addr, align 8, !dbg !1910, !tbaa !1100
  %call = call %struct._object* @PyObject_GetAttrString(%struct._object* %2, i8* %3), !dbg !1911
  store %struct._object* %call, %struct._object** %inccodec, align 8, !dbg !1912, !tbaa !1100
  %4 = load %struct._object*, %struct._object** %inccodec, align 8, !dbg !1913, !tbaa !1100
  %cmp = icmp eq %struct._object* %4, null, !dbg !1915
  br i1 %cmp, label %if.then, label %if.end, !dbg !1916

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1917
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1917

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %errors.addr, align 8, !dbg !1918, !tbaa !1100
  %tobool = icmp ne i8* %5, null, !dbg !1918
  br i1 %tobool, label %if.then.1, label %if.else, !dbg !1920

if.then.1:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %inccodec, align 8, !dbg !1921, !tbaa !1100
  %7 = load i8*, i8** %errors.addr, align 8, !dbg !1922, !tbaa !1100
  %call2 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8* %7), !dbg !1923
  store %struct._object* %call2, %struct._object** %ret, align 8, !dbg !1924, !tbaa !1100
  br label %if.end.4, !dbg !1925

if.else:                                          ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %inccodec, align 8, !dbg !1926, !tbaa !1100
  %call3 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %8, i8* null), !dbg !1927
  store %struct._object* %call3, %struct._object** %ret, align 8, !dbg !1928, !tbaa !1100
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.1
  br label %do.body, !dbg !1929

do.body:                                          ; preds = %if.end.4
  %9 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1930
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !1930
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !758, metadata !1104), !dbg !1932
  %10 = load %struct._object*, %struct._object** %inccodec, align 8, !dbg !1933, !tbaa !1100
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8, !dbg !1932, !tbaa !1100
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1934, !tbaa !1100
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !1936
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !1937, !tbaa !1335
  %dec = add i64 %12, -1, !dbg !1937
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1937, !tbaa !1335
  %cmp5 = icmp ne i64 %dec, 0, !dbg !1938
  br i1 %cmp5, label %if.then.6, label %if.else.7, !dbg !1939

if.then.6:                                        ; preds = %do.body
  br label %if.end.8, !dbg !1940

if.else.7:                                        ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1942, !tbaa !1100
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !1944
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1944, !tbaa !1344
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4, !dbg !1945
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1945, !tbaa !1346
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1946, !tbaa !1100
  call void %15(%struct._object* %16), !dbg !1947
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.7, %if.then.6
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1948
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !1948
  br label %do.cond, !dbg !1950

do.cond:                                          ; preds = %if.end.8
  br label %do.end, !dbg !1951

do.end:                                           ; preds = %do.cond
  %18 = load %struct._object*, %struct._object** %ret, align 8, !dbg !1953, !tbaa !1100
  store %struct._object* %18, %struct._object** %retval, !dbg !1954
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1954

cleanup:                                          ; preds = %do.end, %if.then
  %19 = bitcast %struct._object** %inccodec to i8*, !dbg !1955
  call void @llvm.lifetime.end(i64 8, i8* %19) #2, !dbg !1955
  %20 = bitcast %struct._object** %ret to i8*, !dbg !1955
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !1955
  %21 = load %struct._object*, %struct._object** %retval, !dbg !1955
  ret %struct._object* %21, !dbg !1955
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyCodecInfo_GetIncrementalEncoder(%struct._object* %codec_info, i8* %errors) #0 {
entry:
  %codec_info.addr = alloca %struct._object*, align 8
  %errors.addr = alloca i8*, align 8
  store %struct._object* %codec_info, %struct._object** %codec_info.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %codec_info.addr, metadata !557, metadata !1104), !dbg !1956
  store i8* %errors, i8** %errors.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %errors.addr, metadata !558, metadata !1104), !dbg !1957
  %0 = load %struct._object*, %struct._object** %codec_info.addr, align 8, !dbg !1958, !tbaa !1100
  %1 = load i8*, i8** %errors.addr, align 8, !dbg !1959, !tbaa !1100
  %call = call %struct._object* @codec_makeincrementalcodec(%struct._object* %0, i8* %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0)), !dbg !1960
  ret %struct._object* %call, !dbg !1961
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_Encoder(i8* %encoding) #0 {
entry:
  %encoding.addr = alloca i8*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %encoding.addr, metadata !561, metadata !1104), !dbg !1962
  %0 = load i8*, i8** %encoding.addr, align 8, !dbg !1963, !tbaa !1100
  %call = call %struct._object* @codec_getitem(i8* %0, i32 0), !dbg !1964
  ret %struct._object* %call, !dbg !1965
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @codec_getitem(i8* %encoding, i32 %index) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %encoding.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  %codecs = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %encoding.addr, metadata !764, metadata !1104), !dbg !1966
  store i32 %index, i32* %index.addr, align 4, !tbaa !1298
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !765, metadata !1104), !dbg !1967
  %0 = bitcast %struct._object** %codecs to i8*, !dbg !1968
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1968
  call void @llvm.dbg.declare(metadata %struct._object** %codecs, metadata !766, metadata !1104), !dbg !1969
  %1 = bitcast %struct._object** %v to i8*, !dbg !1970
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1970
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !767, metadata !1104), !dbg !1971
  %2 = load i8*, i8** %encoding.addr, align 8, !dbg !1972, !tbaa !1100
  %call = call %struct._object* @_PyCodec_Lookup(i8* %2), !dbg !1973
  store %struct._object* %call, %struct._object** %codecs, align 8, !dbg !1974, !tbaa !1100
  %3 = load %struct._object*, %struct._object** %codecs, align 8, !dbg !1975, !tbaa !1100
  %cmp = icmp eq %struct._object* %3, null, !dbg !1977
  br i1 %cmp, label %if.then, label %if.end, !dbg !1978

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1979
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1979

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %index.addr, align 4, !dbg !1980, !tbaa !1298
  %idxprom = sext i32 %4 to i64, !dbg !1981
  %5 = load %struct._object*, %struct._object** %codecs, align 8, !dbg !1982, !tbaa !1100
  %6 = bitcast %struct._object* %5 to %struct.PyTupleObject*, !dbg !1983
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %6, i32 0, i32 1, !dbg !1984
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom, !dbg !1981
  %7 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1981, !tbaa !1100
  store %struct._object* %7, %struct._object** %v, align 8, !dbg !1985, !tbaa !1100
  br label %do.body, !dbg !1986

do.body:                                          ; preds = %if.end
  %8 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1987
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !1987
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !768, metadata !1104), !dbg !1989
  %9 = load %struct._object*, %struct._object** %codecs, align 8, !dbg !1990, !tbaa !1100
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8, !dbg !1989, !tbaa !1100
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1991, !tbaa !1100
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0, !dbg !1993
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !1994, !tbaa !1335
  %dec = add i64 %11, -1, !dbg !1994
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1994, !tbaa !1335
  %cmp1 = icmp ne i64 %dec, 0, !dbg !1995
  br i1 %cmp1, label %if.then.2, label %if.else, !dbg !1996

if.then.2:                                        ; preds = %do.body
  br label %if.end.3, !dbg !1997

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1999, !tbaa !1100
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !2001
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2001, !tbaa !1344
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4, !dbg !2002
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2002, !tbaa !1346
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2003, !tbaa !1100
  call void %14(%struct._object* %15), !dbg !2004
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2005
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !2005
  br label %do.cond, !dbg !2007

do.cond:                                          ; preds = %if.end.3
  br label %do.end, !dbg !2008

do.end:                                           ; preds = %do.cond
  %17 = load %struct._object*, %struct._object** %v, align 8, !dbg !2010, !tbaa !1100
  %ob_refcnt4 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0, !dbg !2011
  %18 = load i64, i64* %ob_refcnt4, align 8, !dbg !2012, !tbaa !1335
  %inc = add i64 %18, 1, !dbg !2012
  store i64 %inc, i64* %ob_refcnt4, align 8, !dbg !2012, !tbaa !1335
  %19 = load %struct._object*, %struct._object** %v, align 8, !dbg !2013, !tbaa !1100
  store %struct._object* %19, %struct._object** %retval, !dbg !2014
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2014

cleanup:                                          ; preds = %do.end, %if.then
  %20 = bitcast %struct._object** %v to i8*, !dbg !2015
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !2015
  %21 = bitcast %struct._object** %codecs to i8*, !dbg !2015
  call void @llvm.lifetime.end(i64 8, i8* %21) #2, !dbg !2015
  %22 = load %struct._object*, %struct._object** %retval, !dbg !2015
  ret %struct._object* %22, !dbg !2015
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_Decoder(i8* %encoding) #0 {
entry:
  %encoding.addr = alloca i8*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %encoding.addr, metadata !564, metadata !1104), !dbg !2016
  %0 = load i8*, i8** %encoding.addr, align 8, !dbg !2017, !tbaa !1100
  %call = call %struct._object* @codec_getitem(i8* %0, i32 1), !dbg !2018
  ret %struct._object* %call, !dbg !2019
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_IncrementalEncoder(i8* %encoding, i8* %errors) #0 {
entry:
  %encoding.addr = alloca i8*, align 8
  %errors.addr = alloca i8*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %encoding.addr, metadata !569, metadata !1104), !dbg !2020
  store i8* %errors, i8** %errors.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %errors.addr, metadata !570, metadata !1104), !dbg !2021
  %0 = load i8*, i8** %encoding.addr, align 8, !dbg !2022, !tbaa !1100
  %1 = load i8*, i8** %errors.addr, align 8, !dbg !2023, !tbaa !1100
  %call = call %struct._object* @codec_getincrementalcodec(i8* %0, i8* %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0)), !dbg !2024
  ret %struct._object* %call, !dbg !2025
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @codec_getincrementalcodec(i8* %encoding, i8* %errors, i8* %attrname) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %encoding.addr = alloca i8*, align 8
  %errors.addr = alloca i8*, align 8
  %attrname.addr = alloca i8*, align 8
  %codec_info = alloca %struct._object*, align 8
  %ret = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %encoding.addr, metadata !774, metadata !1104), !dbg !2026
  store i8* %errors, i8** %errors.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %errors.addr, metadata !775, metadata !1104), !dbg !2027
  store i8* %attrname, i8** %attrname.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %attrname.addr, metadata !776, metadata !1104), !dbg !2028
  %0 = bitcast %struct._object** %codec_info to i8*, !dbg !2029
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2029
  call void @llvm.dbg.declare(metadata %struct._object** %codec_info, metadata !777, metadata !1104), !dbg !2030
  %1 = bitcast %struct._object** %ret to i8*, !dbg !2029
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2029
  call void @llvm.dbg.declare(metadata %struct._object** %ret, metadata !778, metadata !1104), !dbg !2031
  %2 = load i8*, i8** %encoding.addr, align 8, !dbg !2032, !tbaa !1100
  %call = call %struct._object* @_PyCodec_Lookup(i8* %2), !dbg !2033
  store %struct._object* %call, %struct._object** %codec_info, align 8, !dbg !2034, !tbaa !1100
  %3 = load %struct._object*, %struct._object** %codec_info, align 8, !dbg !2035, !tbaa !1100
  %cmp = icmp eq %struct._object* %3, null, !dbg !2037
  br i1 %cmp, label %if.then, label %if.end, !dbg !2038

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2039
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2039

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %codec_info, align 8, !dbg !2040, !tbaa !1100
  %5 = load i8*, i8** %errors.addr, align 8, !dbg !2041, !tbaa !1100
  %6 = load i8*, i8** %attrname.addr, align 8, !dbg !2042, !tbaa !1100
  %call1 = call %struct._object* @codec_makeincrementalcodec(%struct._object* %4, i8* %5, i8* %6), !dbg !2043
  store %struct._object* %call1, %struct._object** %ret, align 8, !dbg !2044, !tbaa !1100
  br label %do.body, !dbg !2045

do.body:                                          ; preds = %if.end
  %7 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2046
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !2046
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !779, metadata !1104), !dbg !2048
  %8 = load %struct._object*, %struct._object** %codec_info, align 8, !dbg !2049, !tbaa !1100
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8, !dbg !2048, !tbaa !1100
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2050, !tbaa !1100
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !2052
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !2053, !tbaa !1335
  %dec = add i64 %10, -1, !dbg !2053
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2053, !tbaa !1335
  %cmp2 = icmp ne i64 %dec, 0, !dbg !2054
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !2055

if.then.3:                                        ; preds = %do.body
  br label %if.end.4, !dbg !2056

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2058, !tbaa !1100
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !2060
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2060, !tbaa !1344
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4, !dbg !2061
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2061, !tbaa !1346
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2062, !tbaa !1100
  call void %13(%struct._object* %14), !dbg !2063
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2064
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !2064
  br label %do.cond, !dbg !2066

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !2067

do.end:                                           ; preds = %do.cond
  %16 = load %struct._object*, %struct._object** %ret, align 8, !dbg !2069, !tbaa !1100
  store %struct._object* %16, %struct._object** %retval, !dbg !2070
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2070

cleanup:                                          ; preds = %do.end, %if.then
  %17 = bitcast %struct._object** %ret to i8*, !dbg !2071
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !2071
  %18 = bitcast %struct._object** %codec_info to i8*, !dbg !2071
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !2071
  %19 = load %struct._object*, %struct._object** %retval, !dbg !2071
  ret %struct._object* %19, !dbg !2071
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_IncrementalDecoder(i8* %encoding, i8* %errors) #0 {
entry:
  %encoding.addr = alloca i8*, align 8
  %errors.addr = alloca i8*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %encoding.addr, metadata !573, metadata !1104), !dbg !2072
  store i8* %errors, i8** %errors.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %errors.addr, metadata !574, metadata !1104), !dbg !2073
  %0 = load i8*, i8** %encoding.addr, align 8, !dbg !2074, !tbaa !1100
  %1 = load i8*, i8** %errors.addr, align 8, !dbg !2075, !tbaa !1100
  %call = call %struct._object* @codec_getincrementalcodec(i8* %0, i8* %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0)), !dbg !2076
  ret %struct._object* %call, !dbg !2077
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_StreamReader(i8* %encoding, %struct._object* %stream, i8* %errors) #0 {
entry:
  %encoding.addr = alloca i8*, align 8
  %stream.addr = alloca %struct._object*, align 8
  %errors.addr = alloca i8*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %encoding.addr, metadata !579, metadata !1104), !dbg !2078
  store %struct._object* %stream, %struct._object** %stream.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %stream.addr, metadata !580, metadata !1104), !dbg !2079
  store i8* %errors, i8** %errors.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %errors.addr, metadata !581, metadata !1104), !dbg !2080
  %0 = load i8*, i8** %encoding.addr, align 8, !dbg !2081, !tbaa !1100
  %1 = load %struct._object*, %struct._object** %stream.addr, align 8, !dbg !2082, !tbaa !1100
  %2 = load i8*, i8** %errors.addr, align 8, !dbg !2083, !tbaa !1100
  %call = call %struct._object* @codec_getstreamcodec(i8* %0, %struct._object* %1, i8* %2, i32 2), !dbg !2084
  ret %struct._object* %call, !dbg !2085
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @codec_getstreamcodec(i8* %encoding, %struct._object* %stream, i8* %errors, i32 %index) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %encoding.addr = alloca i8*, align 8
  %stream.addr = alloca %struct._object*, align 8
  %errors.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  %codecs = alloca %struct._object*, align 8
  %streamcodec = alloca %struct._object*, align 8
  %codeccls = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %encoding.addr, metadata !786, metadata !1104), !dbg !2086
  store %struct._object* %stream, %struct._object** %stream.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %stream.addr, metadata !787, metadata !1104), !dbg !2087
  store i8* %errors, i8** %errors.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %errors.addr, metadata !788, metadata !1104), !dbg !2088
  store i32 %index, i32* %index.addr, align 4, !tbaa !1298
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !789, metadata !1104), !dbg !2089
  %0 = bitcast %struct._object** %codecs to i8*, !dbg !2090
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2090
  call void @llvm.dbg.declare(metadata %struct._object** %codecs, metadata !790, metadata !1104), !dbg !2091
  %1 = bitcast %struct._object** %streamcodec to i8*, !dbg !2090
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2090
  call void @llvm.dbg.declare(metadata %struct._object** %streamcodec, metadata !791, metadata !1104), !dbg !2092
  %2 = bitcast %struct._object** %codeccls to i8*, !dbg !2090
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2090
  call void @llvm.dbg.declare(metadata %struct._object** %codeccls, metadata !792, metadata !1104), !dbg !2093
  %3 = load i8*, i8** %encoding.addr, align 8, !dbg !2094, !tbaa !1100
  %call = call %struct._object* @_PyCodec_Lookup(i8* %3), !dbg !2095
  store %struct._object* %call, %struct._object** %codecs, align 8, !dbg !2096, !tbaa !1100
  %4 = load %struct._object*, %struct._object** %codecs, align 8, !dbg !2097, !tbaa !1100
  %cmp = icmp eq %struct._object* %4, null, !dbg !2099
  br i1 %cmp, label %if.then, label %if.end, !dbg !2100

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2101
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2101

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %index.addr, align 4, !dbg !2102, !tbaa !1298
  %idxprom = sext i32 %5 to i64, !dbg !2103
  %6 = load %struct._object*, %struct._object** %codecs, align 8, !dbg !2104, !tbaa !1100
  %7 = bitcast %struct._object* %6 to %struct.PyTupleObject*, !dbg !2105
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %7, i32 0, i32 1, !dbg !2106
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom, !dbg !2103
  %8 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2103, !tbaa !1100
  store %struct._object* %8, %struct._object** %codeccls, align 8, !dbg !2107, !tbaa !1100
  %9 = load i8*, i8** %errors.addr, align 8, !dbg !2108, !tbaa !1100
  %cmp1 = icmp ne i8* %9, null, !dbg !2110
  br i1 %cmp1, label %if.then.2, label %if.else, !dbg !2111

if.then.2:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %codeccls, align 8, !dbg !2112, !tbaa !1100
  %11 = load %struct._object*, %struct._object** %stream.addr, align 8, !dbg !2113, !tbaa !1100
  %12 = load i8*, i8** %errors.addr, align 8, !dbg !2114, !tbaa !1100
  %call3 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), %struct._object* %11, i8* %12), !dbg !2115
  store %struct._object* %call3, %struct._object** %streamcodec, align 8, !dbg !2116, !tbaa !1100
  br label %if.end.5, !dbg !2117

if.else:                                          ; preds = %if.end
  %13 = load %struct._object*, %struct._object** %codeccls, align 8, !dbg !2118, !tbaa !1100
  %14 = load %struct._object*, %struct._object** %stream.addr, align 8, !dbg !2119, !tbaa !1100
  %call4 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), %struct._object* %14), !dbg !2120
  store %struct._object* %call4, %struct._object** %streamcodec, align 8, !dbg !2121, !tbaa !1100
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.2
  br label %do.body, !dbg !2122

do.body:                                          ; preds = %if.end.5
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2123
  call void @llvm.lifetime.start(i64 8, i8* %15) #2, !dbg !2123
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !793, metadata !1104), !dbg !2125
  %16 = load %struct._object*, %struct._object** %codecs, align 8, !dbg !2126, !tbaa !1100
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8, !dbg !2125, !tbaa !1100
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2127, !tbaa !1100
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0, !dbg !2129
  %18 = load i64, i64* %ob_refcnt, align 8, !dbg !2130, !tbaa !1335
  %dec = add i64 %18, -1, !dbg !2130
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2130, !tbaa !1335
  %cmp6 = icmp ne i64 %dec, 0, !dbg !2131
  br i1 %cmp6, label %if.then.7, label %if.else.8, !dbg !2132

if.then.7:                                        ; preds = %do.body
  br label %if.end.9, !dbg !2133

if.else.8:                                        ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2135, !tbaa !1100
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1, !dbg !2137
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2137, !tbaa !1344
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4, !dbg !2138
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2138, !tbaa !1346
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2139, !tbaa !1100
  call void %21(%struct._object* %22), !dbg !2140
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.8, %if.then.7
  %23 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2141
  call void @llvm.lifetime.end(i64 8, i8* %23) #2, !dbg !2141
  br label %do.cond, !dbg !2143

do.cond:                                          ; preds = %if.end.9
  br label %do.end, !dbg !2144

do.end:                                           ; preds = %do.cond
  %24 = load %struct._object*, %struct._object** %streamcodec, align 8, !dbg !2146, !tbaa !1100
  store %struct._object* %24, %struct._object** %retval, !dbg !2147
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2147

cleanup:                                          ; preds = %do.end, %if.then
  %25 = bitcast %struct._object** %codeccls to i8*, !dbg !2148
  call void @llvm.lifetime.end(i64 8, i8* %25) #2, !dbg !2148
  %26 = bitcast %struct._object** %streamcodec to i8*, !dbg !2148
  call void @llvm.lifetime.end(i64 8, i8* %26) #2, !dbg !2148
  %27 = bitcast %struct._object** %codecs to i8*, !dbg !2148
  call void @llvm.lifetime.end(i64 8, i8* %27) #2, !dbg !2148
  %28 = load %struct._object*, %struct._object** %retval, !dbg !2148
  ret %struct._object* %28, !dbg !2148
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_StreamWriter(i8* %encoding, %struct._object* %stream, i8* %errors) #0 {
entry:
  %encoding.addr = alloca i8*, align 8
  %stream.addr = alloca %struct._object*, align 8
  %errors.addr = alloca i8*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %encoding.addr, metadata !584, metadata !1104), !dbg !2149
  store %struct._object* %stream, %struct._object** %stream.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %stream.addr, metadata !585, metadata !1104), !dbg !2150
  store i8* %errors, i8** %errors.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %errors.addr, metadata !586, metadata !1104), !dbg !2151
  %0 = load i8*, i8** %encoding.addr, align 8, !dbg !2152, !tbaa !1100
  %1 = load %struct._object*, %struct._object** %stream.addr, align 8, !dbg !2153, !tbaa !1100
  %2 = load i8*, i8** %errors.addr, align 8, !dbg !2154, !tbaa !1100
  %call = call %struct._object* @codec_getstreamcodec(i8* %0, %struct._object* %1, i8* %2, i32 3), !dbg !2155
  ret %struct._object* %call, !dbg !2156
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_Encode(%struct._object* %object, i8* %encoding, i8* %errors) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %object.addr = alloca %struct._object*, align 8
  %encoding.addr = alloca i8*, align 8
  %errors.addr = alloca i8*, align 8
  %encoder = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %object, %struct._object** %object.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %object.addr, metadata !591, metadata !1104), !dbg !2157
  store i8* %encoding, i8** %encoding.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %encoding.addr, metadata !592, metadata !1104), !dbg !2158
  store i8* %errors, i8** %errors.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %errors.addr, metadata !593, metadata !1104), !dbg !2159
  %0 = bitcast %struct._object** %encoder to i8*, !dbg !2160
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2160
  call void @llvm.dbg.declare(metadata %struct._object** %encoder, metadata !594, metadata !1104), !dbg !2161
  %1 = load i8*, i8** %encoding.addr, align 8, !dbg !2162, !tbaa !1100
  %call = call %struct._object* @PyCodec_Encoder(i8* %1), !dbg !2163
  store %struct._object* %call, %struct._object** %encoder, align 8, !dbg !2164, !tbaa !1100
  %2 = load %struct._object*, %struct._object** %encoder, align 8, !dbg !2165, !tbaa !1100
  %cmp = icmp eq %struct._object* %2, null, !dbg !2167
  br i1 %cmp, label %if.then, label %if.end, !dbg !2168

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2169
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2169

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %object.addr, align 8, !dbg !2170, !tbaa !1100
  %4 = load %struct._object*, %struct._object** %encoder, align 8, !dbg !2171, !tbaa !1100
  %5 = load i8*, i8** %encoding.addr, align 8, !dbg !2172, !tbaa !1100
  %6 = load i8*, i8** %errors.addr, align 8, !dbg !2173, !tbaa !1100
  %call1 = call %struct._object* @_PyCodec_EncodeInternal(%struct._object* %3, %struct._object* %4, i8* %5, i8* %6), !dbg !2174
  store %struct._object* %call1, %struct._object** %retval, !dbg !2175
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2175

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast %struct._object** %encoder to i8*, !dbg !2176
  call void @llvm.lifetime.end(i64 8, i8* %7) #2, !dbg !2176
  %8 = load %struct._object*, %struct._object** %retval, !dbg !2176
  ret %struct._object* %8, !dbg !2176
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_PyCodec_EncodeInternal(%struct._object* %object, %struct._object* %encoder, i8* %encoding, i8* %errors) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %object.addr = alloca %struct._object*, align 8
  %encoder.addr = alloca %struct._object*, align 8
  %encoding.addr = alloca i8*, align 8
  %errors.addr = alloca i8*, align 8
  %args = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp15 = alloca %struct._object*, align 8
  %_py_decref_tmp27 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp42 = alloca %struct._object*, align 8
  %_py_xdecref_tmp57 = alloca %struct._object*, align 8
  %_py_decref_tmp61 = alloca %struct._object*, align 8
  %_py_xdecref_tmp76 = alloca %struct._object*, align 8
  %_py_decref_tmp80 = alloca %struct._object*, align 8
  store %struct._object* %object, %struct._object** %object.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %object.addr, metadata !799, metadata !1104), !dbg !2177
  store %struct._object* %encoder, %struct._object** %encoder.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %encoder.addr, metadata !800, metadata !1104), !dbg !2178
  store i8* %encoding, i8** %encoding.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %encoding.addr, metadata !801, metadata !1104), !dbg !2179
  store i8* %errors, i8** %errors.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %errors.addr, metadata !802, metadata !1104), !dbg !2180
  %0 = bitcast %struct._object** %args to i8*, !dbg !2181
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2181
  call void @llvm.dbg.declare(metadata %struct._object** %args, metadata !803, metadata !1104), !dbg !2182
  store %struct._object* null, %struct._object** %args, align 8, !dbg !2182, !tbaa !1100
  %1 = bitcast %struct._object** %result to i8*, !dbg !2181
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2181
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !804, metadata !1104), !dbg !2183
  store %struct._object* null, %struct._object** %result, align 8, !dbg !2183, !tbaa !1100
  %2 = bitcast %struct._object** %v to i8*, !dbg !2184
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2184
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !805, metadata !1104), !dbg !2185
  store %struct._object* null, %struct._object** %v, align 8, !dbg !2185, !tbaa !1100
  %3 = load %struct._object*, %struct._object** %object.addr, align 8, !dbg !2186, !tbaa !1100
  %4 = load i8*, i8** %errors.addr, align 8, !dbg !2187, !tbaa !1100
  %call = call %struct._object* @args_tuple(%struct._object* %3, i8* %4), !dbg !2188
  store %struct._object* %call, %struct._object** %args, align 8, !dbg !2189, !tbaa !1100
  %5 = load %struct._object*, %struct._object** %args, align 8, !dbg !2190, !tbaa !1100
  %cmp = icmp eq %struct._object* %5, null, !dbg !2192
  br i1 %cmp, label %if.then, label %if.end, !dbg !2193

if.then:                                          ; preds = %entry
  br label %onError, !dbg !2194

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %encoder.addr, align 8, !dbg !2195, !tbaa !1100
  %7 = load %struct._object*, %struct._object** %args, align 8, !dbg !2196, !tbaa !1100
  %call1 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %6, %struct._object* %7, %struct._object* null), !dbg !2197
  store %struct._object* %call1, %struct._object** %result, align 8, !dbg !2198, !tbaa !1100
  %8 = load %struct._object*, %struct._object** %result, align 8, !dbg !2199, !tbaa !1100
  %cmp2 = icmp eq %struct._object* %8, null, !dbg !2201
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !2202

if.then.3:                                        ; preds = %if.end
  %9 = load i8*, i8** %encoding.addr, align 8, !dbg !2203, !tbaa !1100
  call void @wrap_codec_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* %9), !dbg !2205
  br label %onError, !dbg !2206

if.end.4:                                         ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %result, align 8, !dbg !2207, !tbaa !1100
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !2209
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2209, !tbaa !1344
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 19, !dbg !2210
  %12 = load i64, i64* %tp_flags, align 8, !dbg !2210, !tbaa !1627
  %and = and i64 %12, 67108864, !dbg !2211
  %cmp5 = icmp ne i64 %and, 0, !dbg !2212
  br i1 %cmp5, label %lor.lhs.false, label %if.then.7, !dbg !2213

lor.lhs.false:                                    ; preds = %if.end.4
  %13 = load %struct._object*, %struct._object** %result, align 8, !dbg !2214, !tbaa !1100
  %14 = bitcast %struct._object* %13 to %struct.PyVarObject*, !dbg !2215
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %14, i32 0, i32 1, !dbg !2216
  %15 = load i64, i64* %ob_size, align 8, !dbg !2216, !tbaa !1635
  %cmp6 = icmp ne i64 %15, 2, !dbg !2217
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !2218

if.then.7:                                        ; preds = %lor.lhs.false, %if.end.4
  %16 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2219, !tbaa !1100
  call void @PyErr_SetString(%struct._object* %16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i32 0, i32 0)), !dbg !2221
  br label %onError, !dbg !2222

if.end.8:                                         ; preds = %lor.lhs.false
  %17 = load %struct._object*, %struct._object** %result, align 8, !dbg !2223, !tbaa !1100
  %18 = bitcast %struct._object* %17 to %struct.PyTupleObject*, !dbg !2224
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %18, i32 0, i32 1, !dbg !2225
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0, !dbg !2226
  %19 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2226, !tbaa !1100
  store %struct._object* %19, %struct._object** %v, align 8, !dbg !2227, !tbaa !1100
  %20 = load %struct._object*, %struct._object** %v, align 8, !dbg !2228, !tbaa !1100
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0, !dbg !2229
  %21 = load i64, i64* %ob_refcnt, align 8, !dbg !2230, !tbaa !1335
  %inc = add i64 %21, 1, !dbg !2230
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2230, !tbaa !1335
  br label %do.body, !dbg !2231

do.body:                                          ; preds = %if.end.8
  %22 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2232
  call void @llvm.lifetime.start(i64 8, i8* %22) #2, !dbg !2232
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !806, metadata !1104), !dbg !2234
  %23 = load %struct._object*, %struct._object** %args, align 8, !dbg !2235, !tbaa !1100
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8, !dbg !2234, !tbaa !1100
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2236, !tbaa !1100
  %ob_refcnt9 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0, !dbg !2238
  %25 = load i64, i64* %ob_refcnt9, align 8, !dbg !2239, !tbaa !1335
  %dec = add i64 %25, -1, !dbg !2239
  store i64 %dec, i64* %ob_refcnt9, align 8, !dbg !2239, !tbaa !1335
  %cmp10 = icmp ne i64 %dec, 0, !dbg !2240
  br i1 %cmp10, label %if.then.11, label %if.else, !dbg !2241

if.then.11:                                       ; preds = %do.body
  br label %if.end.13, !dbg !2242

if.else:                                          ; preds = %do.body
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2244, !tbaa !1100
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1, !dbg !2246
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8, !dbg !2246, !tbaa !1344
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4, !dbg !2247
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2247, !tbaa !1346
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2248, !tbaa !1100
  call void %28(%struct._object* %29), !dbg !2249
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.11
  %30 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2250
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !2250
  br label %do.cond, !dbg !2252

do.cond:                                          ; preds = %if.end.13
  br label %do.end, !dbg !2253

do.end:                                           ; preds = %do.cond
  br label %do.body.14, !dbg !2255

do.body.14:                                       ; preds = %do.end
  %31 = bitcast %struct._object** %_py_decref_tmp15 to i8*, !dbg !2256
  call void @llvm.lifetime.start(i64 8, i8* %31) #2, !dbg !2256
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp15, metadata !808, metadata !1104), !dbg !2258
  %32 = load %struct._object*, %struct._object** %encoder.addr, align 8, !dbg !2259, !tbaa !1100
  store %struct._object* %32, %struct._object** %_py_decref_tmp15, align 8, !dbg !2258, !tbaa !1100
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8, !dbg !2260, !tbaa !1100
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0, !dbg !2262
  %34 = load i64, i64* %ob_refcnt16, align 8, !dbg !2263, !tbaa !1335
  %dec17 = add i64 %34, -1, !dbg !2263
  store i64 %dec17, i64* %ob_refcnt16, align 8, !dbg !2263, !tbaa !1335
  %cmp18 = icmp ne i64 %dec17, 0, !dbg !2264
  br i1 %cmp18, label %if.then.19, label %if.else.20, !dbg !2265

if.then.19:                                       ; preds = %do.body.14
  br label %if.end.23, !dbg !2266

if.else.20:                                       ; preds = %do.body.14
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8, !dbg !2268, !tbaa !1100
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1, !dbg !2270
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8, !dbg !2270, !tbaa !1344
  %tp_dealloc22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4, !dbg !2271
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8, !dbg !2271, !tbaa !1346
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8, !dbg !2272, !tbaa !1100
  call void %37(%struct._object* %38), !dbg !2273
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.then.19
  %39 = bitcast %struct._object** %_py_decref_tmp15 to i8*, !dbg !2274
  call void @llvm.lifetime.end(i64 8, i8* %39) #2, !dbg !2274
  br label %do.cond.24, !dbg !2275

do.cond.24:                                       ; preds = %if.end.23
  br label %do.end.25, !dbg !2276

do.end.25:                                        ; preds = %do.cond.24
  br label %do.body.26, !dbg !2278

do.body.26:                                       ; preds = %do.end.25
  %40 = bitcast %struct._object** %_py_decref_tmp27 to i8*, !dbg !2279
  call void @llvm.lifetime.start(i64 8, i8* %40) #2, !dbg !2279
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp27, metadata !810, metadata !1104), !dbg !2281
  %41 = load %struct._object*, %struct._object** %result, align 8, !dbg !2282, !tbaa !1100
  store %struct._object* %41, %struct._object** %_py_decref_tmp27, align 8, !dbg !2281, !tbaa !1100
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8, !dbg !2283, !tbaa !1100
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0, !dbg !2285
  %43 = load i64, i64* %ob_refcnt28, align 8, !dbg !2286, !tbaa !1335
  %dec29 = add i64 %43, -1, !dbg !2286
  store i64 %dec29, i64* %ob_refcnt28, align 8, !dbg !2286, !tbaa !1335
  %cmp30 = icmp ne i64 %dec29, 0, !dbg !2287
  br i1 %cmp30, label %if.then.31, label %if.else.32, !dbg !2288

if.then.31:                                       ; preds = %do.body.26
  br label %if.end.35, !dbg !2289

if.else.32:                                       ; preds = %do.body.26
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8, !dbg !2291, !tbaa !1100
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1, !dbg !2293
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8, !dbg !2293, !tbaa !1344
  %tp_dealloc34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4, !dbg !2294
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc34, align 8, !dbg !2294, !tbaa !1346
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8, !dbg !2295, !tbaa !1100
  call void %46(%struct._object* %47), !dbg !2296
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.31
  %48 = bitcast %struct._object** %_py_decref_tmp27 to i8*, !dbg !2297
  call void @llvm.lifetime.end(i64 8, i8* %48) #2, !dbg !2297
  br label %do.cond.36, !dbg !2298

do.cond.36:                                       ; preds = %if.end.35
  br label %do.end.37, !dbg !2299

do.end.37:                                        ; preds = %do.cond.36
  %49 = load %struct._object*, %struct._object** %v, align 8, !dbg !2301, !tbaa !1100
  store %struct._object* %49, %struct._object** %retval, !dbg !2302
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2302

onError:                                          ; preds = %if.then.7, %if.then.3, %if.then
  br label %do.body.38, !dbg !2303

do.body.38:                                       ; preds = %onError
  %50 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2304
  call void @llvm.lifetime.start(i64 8, i8* %50) #2, !dbg !2304
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !812, metadata !1104), !dbg !2306
  %51 = load %struct._object*, %struct._object** %result, align 8, !dbg !2307, !tbaa !1100
  store %struct._object* %51, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2306, !tbaa !1100
  %52 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2308, !tbaa !1100
  %cmp39 = icmp ne %struct._object* %52, null, !dbg !2309
  br i1 %cmp39, label %if.then.40, label %if.end.53, !dbg !2310

if.then.40:                                       ; preds = %do.body.38
  br label %do.body.41, !dbg !2311

do.body.41:                                       ; preds = %if.then.40
  %53 = bitcast %struct._object** %_py_decref_tmp42 to i8*, !dbg !2313
  call void @llvm.lifetime.start(i64 8, i8* %53) #2, !dbg !2313
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp42, metadata !814, metadata !1104), !dbg !2315
  %54 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2316, !tbaa !1100
  store %struct._object* %54, %struct._object** %_py_decref_tmp42, align 8, !dbg !2315, !tbaa !1100
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8, !dbg !2317, !tbaa !1100
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0, !dbg !2319
  %56 = load i64, i64* %ob_refcnt43, align 8, !dbg !2320, !tbaa !1335
  %dec44 = add i64 %56, -1, !dbg !2320
  store i64 %dec44, i64* %ob_refcnt43, align 8, !dbg !2320, !tbaa !1335
  %cmp45 = icmp ne i64 %dec44, 0, !dbg !2321
  br i1 %cmp45, label %if.then.46, label %if.else.47, !dbg !2322

if.then.46:                                       ; preds = %do.body.41
  br label %if.end.50, !dbg !2323

if.else.47:                                       ; preds = %do.body.41
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8, !dbg !2325, !tbaa !1100
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1, !dbg !2327
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8, !dbg !2327, !tbaa !1344
  %tp_dealloc49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4, !dbg !2328
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc49, align 8, !dbg !2328, !tbaa !1346
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8, !dbg !2329, !tbaa !1100
  call void %59(%struct._object* %60), !dbg !2330
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.47, %if.then.46
  %61 = bitcast %struct._object** %_py_decref_tmp42 to i8*, !dbg !2331
  call void @llvm.lifetime.end(i64 8, i8* %61) #2, !dbg !2331
  br label %do.cond.51, !dbg !2333

do.cond.51:                                       ; preds = %if.end.50
  br label %do.end.52, !dbg !2334

do.end.52:                                        ; preds = %do.cond.51
  br label %if.end.53, !dbg !2336

if.end.53:                                        ; preds = %do.end.52, %do.body.38
  %62 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2338
  call void @llvm.lifetime.end(i64 8, i8* %62) #2, !dbg !2338
  br label %do.cond.54, !dbg !2341

do.cond.54:                                       ; preds = %if.end.53
  br label %do.end.55, !dbg !2342

do.end.55:                                        ; preds = %do.cond.54
  br label %do.body.56, !dbg !2344

do.body.56:                                       ; preds = %do.end.55
  %63 = bitcast %struct._object** %_py_xdecref_tmp57 to i8*, !dbg !2345
  call void @llvm.lifetime.start(i64 8, i8* %63) #2, !dbg !2345
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp57, metadata !817, metadata !1104), !dbg !2347
  %64 = load %struct._object*, %struct._object** %args, align 8, !dbg !2348, !tbaa !1100
  store %struct._object* %64, %struct._object** %_py_xdecref_tmp57, align 8, !dbg !2347, !tbaa !1100
  %65 = load %struct._object*, %struct._object** %_py_xdecref_tmp57, align 8, !dbg !2349, !tbaa !1100
  %cmp58 = icmp ne %struct._object* %65, null, !dbg !2350
  br i1 %cmp58, label %if.then.59, label %if.end.72, !dbg !2351

if.then.59:                                       ; preds = %do.body.56
  br label %do.body.60, !dbg !2352

do.body.60:                                       ; preds = %if.then.59
  %66 = bitcast %struct._object** %_py_decref_tmp61 to i8*, !dbg !2354
  call void @llvm.lifetime.start(i64 8, i8* %66) #2, !dbg !2354
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp61, metadata !819, metadata !1104), !dbg !2356
  %67 = load %struct._object*, %struct._object** %_py_xdecref_tmp57, align 8, !dbg !2357, !tbaa !1100
  store %struct._object* %67, %struct._object** %_py_decref_tmp61, align 8, !dbg !2356, !tbaa !1100
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8, !dbg !2358, !tbaa !1100
  %ob_refcnt62 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 0, !dbg !2360
  %69 = load i64, i64* %ob_refcnt62, align 8, !dbg !2361, !tbaa !1335
  %dec63 = add i64 %69, -1, !dbg !2361
  store i64 %dec63, i64* %ob_refcnt62, align 8, !dbg !2361, !tbaa !1335
  %cmp64 = icmp ne i64 %dec63, 0, !dbg !2362
  br i1 %cmp64, label %if.then.65, label %if.else.66, !dbg !2363

if.then.65:                                       ; preds = %do.body.60
  br label %if.end.69, !dbg !2364

if.else.66:                                       ; preds = %do.body.60
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8, !dbg !2366, !tbaa !1100
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 1, !dbg !2368
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8, !dbg !2368, !tbaa !1344
  %tp_dealloc68 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %71, i32 0, i32 4, !dbg !2369
  %72 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc68, align 8, !dbg !2369, !tbaa !1346
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8, !dbg !2370, !tbaa !1100
  call void %72(%struct._object* %73), !dbg !2371
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.66, %if.then.65
  %74 = bitcast %struct._object** %_py_decref_tmp61 to i8*, !dbg !2372
  call void @llvm.lifetime.end(i64 8, i8* %74) #2, !dbg !2372
  br label %do.cond.70, !dbg !2374

do.cond.70:                                       ; preds = %if.end.69
  br label %do.end.71, !dbg !2375

do.end.71:                                        ; preds = %do.cond.70
  br label %if.end.72, !dbg !2377

if.end.72:                                        ; preds = %do.end.71, %do.body.56
  %75 = bitcast %struct._object** %_py_xdecref_tmp57 to i8*, !dbg !2379
  call void @llvm.lifetime.end(i64 8, i8* %75) #2, !dbg !2379
  br label %do.cond.73, !dbg !2380

do.cond.73:                                       ; preds = %if.end.72
  br label %do.end.74, !dbg !2381

do.end.74:                                        ; preds = %do.cond.73
  br label %do.body.75, !dbg !2383

do.body.75:                                       ; preds = %do.end.74
  %76 = bitcast %struct._object** %_py_xdecref_tmp76 to i8*, !dbg !2384
  call void @llvm.lifetime.start(i64 8, i8* %76) #2, !dbg !2384
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp76, metadata !822, metadata !1104), !dbg !2386
  %77 = load %struct._object*, %struct._object** %encoder.addr, align 8, !dbg !2387, !tbaa !1100
  store %struct._object* %77, %struct._object** %_py_xdecref_tmp76, align 8, !dbg !2386, !tbaa !1100
  %78 = load %struct._object*, %struct._object** %_py_xdecref_tmp76, align 8, !dbg !2388, !tbaa !1100
  %cmp77 = icmp ne %struct._object* %78, null, !dbg !2389
  br i1 %cmp77, label %if.then.78, label %if.end.91, !dbg !2390

if.then.78:                                       ; preds = %do.body.75
  br label %do.body.79, !dbg !2391

do.body.79:                                       ; preds = %if.then.78
  %79 = bitcast %struct._object** %_py_decref_tmp80 to i8*, !dbg !2393
  call void @llvm.lifetime.start(i64 8, i8* %79) #2, !dbg !2393
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp80, metadata !824, metadata !1104), !dbg !2395
  %80 = load %struct._object*, %struct._object** %_py_xdecref_tmp76, align 8, !dbg !2396, !tbaa !1100
  store %struct._object* %80, %struct._object** %_py_decref_tmp80, align 8, !dbg !2395, !tbaa !1100
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8, !dbg !2397, !tbaa !1100
  %ob_refcnt81 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 0, !dbg !2399
  %82 = load i64, i64* %ob_refcnt81, align 8, !dbg !2400, !tbaa !1335
  %dec82 = add i64 %82, -1, !dbg !2400
  store i64 %dec82, i64* %ob_refcnt81, align 8, !dbg !2400, !tbaa !1335
  %cmp83 = icmp ne i64 %dec82, 0, !dbg !2401
  br i1 %cmp83, label %if.then.84, label %if.else.85, !dbg !2402

if.then.84:                                       ; preds = %do.body.79
  br label %if.end.88, !dbg !2403

if.else.85:                                       ; preds = %do.body.79
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8, !dbg !2405, !tbaa !1100
  %ob_type86 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 1, !dbg !2407
  %84 = load %struct._typeobject*, %struct._typeobject** %ob_type86, align 8, !dbg !2407, !tbaa !1344
  %tp_dealloc87 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %84, i32 0, i32 4, !dbg !2408
  %85 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc87, align 8, !dbg !2408, !tbaa !1346
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8, !dbg !2409, !tbaa !1100
  call void %85(%struct._object* %86), !dbg !2410
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.85, %if.then.84
  %87 = bitcast %struct._object** %_py_decref_tmp80 to i8*, !dbg !2411
  call void @llvm.lifetime.end(i64 8, i8* %87) #2, !dbg !2411
  br label %do.cond.89, !dbg !2413

do.cond.89:                                       ; preds = %if.end.88
  br label %do.end.90, !dbg !2414

do.end.90:                                        ; preds = %do.cond.89
  br label %if.end.91, !dbg !2416

if.end.91:                                        ; preds = %do.end.90, %do.body.75
  %88 = bitcast %struct._object** %_py_xdecref_tmp76 to i8*, !dbg !2418
  call void @llvm.lifetime.end(i64 8, i8* %88) #2, !dbg !2418
  br label %do.cond.92, !dbg !2419

do.cond.92:                                       ; preds = %if.end.91
  br label %do.end.93, !dbg !2420

do.end.93:                                        ; preds = %do.cond.92
  store %struct._object* null, %struct._object** %retval, !dbg !2422
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2422

cleanup:                                          ; preds = %do.end.93, %do.end.37
  %89 = bitcast %struct._object** %v to i8*, !dbg !2423
  call void @llvm.lifetime.end(i64 8, i8* %89) #2, !dbg !2423
  %90 = bitcast %struct._object** %result to i8*, !dbg !2423
  call void @llvm.lifetime.end(i64 8, i8* %90) #2, !dbg !2423
  %91 = bitcast %struct._object** %args to i8*, !dbg !2423
  call void @llvm.lifetime.end(i64 8, i8* %91) #2, !dbg !2423
  %92 = load %struct._object*, %struct._object** %retval, !dbg !2423
  ret %struct._object* %92, !dbg !2423
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_Decode(%struct._object* %object, i8* %encoding, i8* %errors) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %object.addr = alloca %struct._object*, align 8
  %encoding.addr = alloca i8*, align 8
  %errors.addr = alloca i8*, align 8
  %decoder = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %object, %struct._object** %object.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %object.addr, metadata !597, metadata !1104), !dbg !2424
  store i8* %encoding, i8** %encoding.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %encoding.addr, metadata !598, metadata !1104), !dbg !2425
  store i8* %errors, i8** %errors.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %errors.addr, metadata !599, metadata !1104), !dbg !2426
  %0 = bitcast %struct._object** %decoder to i8*, !dbg !2427
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2427
  call void @llvm.dbg.declare(metadata %struct._object** %decoder, metadata !600, metadata !1104), !dbg !2428
  %1 = load i8*, i8** %encoding.addr, align 8, !dbg !2429, !tbaa !1100
  %call = call %struct._object* @PyCodec_Decoder(i8* %1), !dbg !2430
  store %struct._object* %call, %struct._object** %decoder, align 8, !dbg !2431, !tbaa !1100
  %2 = load %struct._object*, %struct._object** %decoder, align 8, !dbg !2432, !tbaa !1100
  %cmp = icmp eq %struct._object* %2, null, !dbg !2434
  br i1 %cmp, label %if.then, label %if.end, !dbg !2435

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2436
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2436

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %object.addr, align 8, !dbg !2437, !tbaa !1100
  %4 = load %struct._object*, %struct._object** %decoder, align 8, !dbg !2438, !tbaa !1100
  %5 = load i8*, i8** %encoding.addr, align 8, !dbg !2439, !tbaa !1100
  %6 = load i8*, i8** %errors.addr, align 8, !dbg !2440, !tbaa !1100
  %call1 = call %struct._object* @_PyCodec_DecodeInternal(%struct._object* %3, %struct._object* %4, i8* %5, i8* %6), !dbg !2441
  store %struct._object* %call1, %struct._object** %retval, !dbg !2442
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2442

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast %struct._object** %decoder to i8*, !dbg !2443
  call void @llvm.lifetime.end(i64 8, i8* %7) #2, !dbg !2443
  %8 = load %struct._object*, %struct._object** %retval, !dbg !2443
  ret %struct._object* %8, !dbg !2443
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_PyCodec_DecodeInternal(%struct._object* %object, %struct._object* %decoder, i8* %encoding, i8* %errors) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %object.addr = alloca %struct._object*, align 8
  %decoder.addr = alloca %struct._object*, align 8
  %encoding.addr = alloca i8*, align 8
  %errors.addr = alloca i8*, align 8
  %args = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp15 = alloca %struct._object*, align 8
  %_py_decref_tmp27 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp42 = alloca %struct._object*, align 8
  %_py_xdecref_tmp57 = alloca %struct._object*, align 8
  %_py_decref_tmp61 = alloca %struct._object*, align 8
  %_py_xdecref_tmp76 = alloca %struct._object*, align 8
  %_py_decref_tmp80 = alloca %struct._object*, align 8
  store %struct._object* %object, %struct._object** %object.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %object.addr, metadata !847, metadata !1104), !dbg !2444
  store %struct._object* %decoder, %struct._object** %decoder.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %decoder.addr, metadata !848, metadata !1104), !dbg !2445
  store i8* %encoding, i8** %encoding.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %encoding.addr, metadata !849, metadata !1104), !dbg !2446
  store i8* %errors, i8** %errors.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %errors.addr, metadata !850, metadata !1104), !dbg !2447
  %0 = bitcast %struct._object** %args to i8*, !dbg !2448
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2448
  call void @llvm.dbg.declare(metadata %struct._object** %args, metadata !851, metadata !1104), !dbg !2449
  store %struct._object* null, %struct._object** %args, align 8, !dbg !2449, !tbaa !1100
  %1 = bitcast %struct._object** %result to i8*, !dbg !2448
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2448
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !852, metadata !1104), !dbg !2450
  store %struct._object* null, %struct._object** %result, align 8, !dbg !2450, !tbaa !1100
  %2 = bitcast %struct._object** %v to i8*, !dbg !2451
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2451
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !853, metadata !1104), !dbg !2452
  %3 = load %struct._object*, %struct._object** %object.addr, align 8, !dbg !2453, !tbaa !1100
  %4 = load i8*, i8** %errors.addr, align 8, !dbg !2454, !tbaa !1100
  %call = call %struct._object* @args_tuple(%struct._object* %3, i8* %4), !dbg !2455
  store %struct._object* %call, %struct._object** %args, align 8, !dbg !2456, !tbaa !1100
  %5 = load %struct._object*, %struct._object** %args, align 8, !dbg !2457, !tbaa !1100
  %cmp = icmp eq %struct._object* %5, null, !dbg !2459
  br i1 %cmp, label %if.then, label %if.end, !dbg !2460

if.then:                                          ; preds = %entry
  br label %onError, !dbg !2461

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %decoder.addr, align 8, !dbg !2462, !tbaa !1100
  %7 = load %struct._object*, %struct._object** %args, align 8, !dbg !2463, !tbaa !1100
  %call1 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %6, %struct._object* %7, %struct._object* null), !dbg !2464
  store %struct._object* %call1, %struct._object** %result, align 8, !dbg !2465, !tbaa !1100
  %8 = load %struct._object*, %struct._object** %result, align 8, !dbg !2466, !tbaa !1100
  %cmp2 = icmp eq %struct._object* %8, null, !dbg !2468
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !2469

if.then.3:                                        ; preds = %if.end
  %9 = load i8*, i8** %encoding.addr, align 8, !dbg !2470, !tbaa !1100
  call void @wrap_codec_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* %9), !dbg !2472
  br label %onError, !dbg !2473

if.end.4:                                         ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %result, align 8, !dbg !2474, !tbaa !1100
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !2476
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2476, !tbaa !1344
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 19, !dbg !2477
  %12 = load i64, i64* %tp_flags, align 8, !dbg !2477, !tbaa !1627
  %and = and i64 %12, 67108864, !dbg !2478
  %cmp5 = icmp ne i64 %and, 0, !dbg !2479
  br i1 %cmp5, label %lor.lhs.false, label %if.then.7, !dbg !2480

lor.lhs.false:                                    ; preds = %if.end.4
  %13 = load %struct._object*, %struct._object** %result, align 8, !dbg !2481, !tbaa !1100
  %14 = bitcast %struct._object* %13 to %struct.PyVarObject*, !dbg !2482
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %14, i32 0, i32 1, !dbg !2483
  %15 = load i64, i64* %ob_size, align 8, !dbg !2483, !tbaa !1635
  %cmp6 = icmp ne i64 %15, 2, !dbg !2484
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !2485

if.then.7:                                        ; preds = %lor.lhs.false, %if.end.4
  %16 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2486, !tbaa !1100
  call void @PyErr_SetString(%struct._object* %16, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.23, i32 0, i32 0)), !dbg !2488
  br label %onError, !dbg !2489

if.end.8:                                         ; preds = %lor.lhs.false
  %17 = load %struct._object*, %struct._object** %result, align 8, !dbg !2490, !tbaa !1100
  %18 = bitcast %struct._object* %17 to %struct.PyTupleObject*, !dbg !2491
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %18, i32 0, i32 1, !dbg !2492
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0, !dbg !2493
  %19 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2493, !tbaa !1100
  store %struct._object* %19, %struct._object** %v, align 8, !dbg !2494, !tbaa !1100
  %20 = load %struct._object*, %struct._object** %v, align 8, !dbg !2495, !tbaa !1100
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0, !dbg !2496
  %21 = load i64, i64* %ob_refcnt, align 8, !dbg !2497, !tbaa !1335
  %inc = add i64 %21, 1, !dbg !2497
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2497, !tbaa !1335
  br label %do.body, !dbg !2498

do.body:                                          ; preds = %if.end.8
  %22 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2499
  call void @llvm.lifetime.start(i64 8, i8* %22) #2, !dbg !2499
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !854, metadata !1104), !dbg !2501
  %23 = load %struct._object*, %struct._object** %args, align 8, !dbg !2502, !tbaa !1100
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8, !dbg !2501, !tbaa !1100
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2503, !tbaa !1100
  %ob_refcnt9 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0, !dbg !2505
  %25 = load i64, i64* %ob_refcnt9, align 8, !dbg !2506, !tbaa !1335
  %dec = add i64 %25, -1, !dbg !2506
  store i64 %dec, i64* %ob_refcnt9, align 8, !dbg !2506, !tbaa !1335
  %cmp10 = icmp ne i64 %dec, 0, !dbg !2507
  br i1 %cmp10, label %if.then.11, label %if.else, !dbg !2508

if.then.11:                                       ; preds = %do.body
  br label %if.end.13, !dbg !2509

if.else:                                          ; preds = %do.body
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2511, !tbaa !1100
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1, !dbg !2513
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8, !dbg !2513, !tbaa !1344
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4, !dbg !2514
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2514, !tbaa !1346
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2515, !tbaa !1100
  call void %28(%struct._object* %29), !dbg !2516
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.11
  %30 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2517
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !2517
  br label %do.cond, !dbg !2519

do.cond:                                          ; preds = %if.end.13
  br label %do.end, !dbg !2520

do.end:                                           ; preds = %do.cond
  br label %do.body.14, !dbg !2522

do.body.14:                                       ; preds = %do.end
  %31 = bitcast %struct._object** %_py_decref_tmp15 to i8*, !dbg !2523
  call void @llvm.lifetime.start(i64 8, i8* %31) #2, !dbg !2523
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp15, metadata !856, metadata !1104), !dbg !2525
  %32 = load %struct._object*, %struct._object** %decoder.addr, align 8, !dbg !2526, !tbaa !1100
  store %struct._object* %32, %struct._object** %_py_decref_tmp15, align 8, !dbg !2525, !tbaa !1100
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8, !dbg !2527, !tbaa !1100
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0, !dbg !2529
  %34 = load i64, i64* %ob_refcnt16, align 8, !dbg !2530, !tbaa !1335
  %dec17 = add i64 %34, -1, !dbg !2530
  store i64 %dec17, i64* %ob_refcnt16, align 8, !dbg !2530, !tbaa !1335
  %cmp18 = icmp ne i64 %dec17, 0, !dbg !2531
  br i1 %cmp18, label %if.then.19, label %if.else.20, !dbg !2532

if.then.19:                                       ; preds = %do.body.14
  br label %if.end.23, !dbg !2533

if.else.20:                                       ; preds = %do.body.14
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8, !dbg !2535, !tbaa !1100
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1, !dbg !2537
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8, !dbg !2537, !tbaa !1344
  %tp_dealloc22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4, !dbg !2538
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8, !dbg !2538, !tbaa !1346
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8, !dbg !2539, !tbaa !1100
  call void %37(%struct._object* %38), !dbg !2540
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.then.19
  %39 = bitcast %struct._object** %_py_decref_tmp15 to i8*, !dbg !2541
  call void @llvm.lifetime.end(i64 8, i8* %39) #2, !dbg !2541
  br label %do.cond.24, !dbg !2542

do.cond.24:                                       ; preds = %if.end.23
  br label %do.end.25, !dbg !2543

do.end.25:                                        ; preds = %do.cond.24
  br label %do.body.26, !dbg !2545

do.body.26:                                       ; preds = %do.end.25
  %40 = bitcast %struct._object** %_py_decref_tmp27 to i8*, !dbg !2546
  call void @llvm.lifetime.start(i64 8, i8* %40) #2, !dbg !2546
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp27, metadata !858, metadata !1104), !dbg !2548
  %41 = load %struct._object*, %struct._object** %result, align 8, !dbg !2549, !tbaa !1100
  store %struct._object* %41, %struct._object** %_py_decref_tmp27, align 8, !dbg !2548, !tbaa !1100
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8, !dbg !2550, !tbaa !1100
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0, !dbg !2552
  %43 = load i64, i64* %ob_refcnt28, align 8, !dbg !2553, !tbaa !1335
  %dec29 = add i64 %43, -1, !dbg !2553
  store i64 %dec29, i64* %ob_refcnt28, align 8, !dbg !2553, !tbaa !1335
  %cmp30 = icmp ne i64 %dec29, 0, !dbg !2554
  br i1 %cmp30, label %if.then.31, label %if.else.32, !dbg !2555

if.then.31:                                       ; preds = %do.body.26
  br label %if.end.35, !dbg !2556

if.else.32:                                       ; preds = %do.body.26
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8, !dbg !2558, !tbaa !1100
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1, !dbg !2560
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8, !dbg !2560, !tbaa !1344
  %tp_dealloc34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4, !dbg !2561
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc34, align 8, !dbg !2561, !tbaa !1346
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8, !dbg !2562, !tbaa !1100
  call void %46(%struct._object* %47), !dbg !2563
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.31
  %48 = bitcast %struct._object** %_py_decref_tmp27 to i8*, !dbg !2564
  call void @llvm.lifetime.end(i64 8, i8* %48) #2, !dbg !2564
  br label %do.cond.36, !dbg !2565

do.cond.36:                                       ; preds = %if.end.35
  br label %do.end.37, !dbg !2566

do.end.37:                                        ; preds = %do.cond.36
  %49 = load %struct._object*, %struct._object** %v, align 8, !dbg !2568, !tbaa !1100
  store %struct._object* %49, %struct._object** %retval, !dbg !2569
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2569

onError:                                          ; preds = %if.then.7, %if.then.3, %if.then
  br label %do.body.38, !dbg !2570

do.body.38:                                       ; preds = %onError
  %50 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2571
  call void @llvm.lifetime.start(i64 8, i8* %50) #2, !dbg !2571
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !860, metadata !1104), !dbg !2573
  %51 = load %struct._object*, %struct._object** %args, align 8, !dbg !2574, !tbaa !1100
  store %struct._object* %51, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2573, !tbaa !1100
  %52 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2575, !tbaa !1100
  %cmp39 = icmp ne %struct._object* %52, null, !dbg !2576
  br i1 %cmp39, label %if.then.40, label %if.end.53, !dbg !2577

if.then.40:                                       ; preds = %do.body.38
  br label %do.body.41, !dbg !2578

do.body.41:                                       ; preds = %if.then.40
  %53 = bitcast %struct._object** %_py_decref_tmp42 to i8*, !dbg !2580
  call void @llvm.lifetime.start(i64 8, i8* %53) #2, !dbg !2580
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp42, metadata !862, metadata !1104), !dbg !2582
  %54 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2583, !tbaa !1100
  store %struct._object* %54, %struct._object** %_py_decref_tmp42, align 8, !dbg !2582, !tbaa !1100
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8, !dbg !2584, !tbaa !1100
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0, !dbg !2586
  %56 = load i64, i64* %ob_refcnt43, align 8, !dbg !2587, !tbaa !1335
  %dec44 = add i64 %56, -1, !dbg !2587
  store i64 %dec44, i64* %ob_refcnt43, align 8, !dbg !2587, !tbaa !1335
  %cmp45 = icmp ne i64 %dec44, 0, !dbg !2588
  br i1 %cmp45, label %if.then.46, label %if.else.47, !dbg !2589

if.then.46:                                       ; preds = %do.body.41
  br label %if.end.50, !dbg !2590

if.else.47:                                       ; preds = %do.body.41
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8, !dbg !2592, !tbaa !1100
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1, !dbg !2594
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8, !dbg !2594, !tbaa !1344
  %tp_dealloc49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4, !dbg !2595
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc49, align 8, !dbg !2595, !tbaa !1346
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8, !dbg !2596, !tbaa !1100
  call void %59(%struct._object* %60), !dbg !2597
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.47, %if.then.46
  %61 = bitcast %struct._object** %_py_decref_tmp42 to i8*, !dbg !2598
  call void @llvm.lifetime.end(i64 8, i8* %61) #2, !dbg !2598
  br label %do.cond.51, !dbg !2600

do.cond.51:                                       ; preds = %if.end.50
  br label %do.end.52, !dbg !2601

do.end.52:                                        ; preds = %do.cond.51
  br label %if.end.53, !dbg !2603

if.end.53:                                        ; preds = %do.end.52, %do.body.38
  %62 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2605
  call void @llvm.lifetime.end(i64 8, i8* %62) #2, !dbg !2605
  br label %do.cond.54, !dbg !2608

do.cond.54:                                       ; preds = %if.end.53
  br label %do.end.55, !dbg !2609

do.end.55:                                        ; preds = %do.cond.54
  br label %do.body.56, !dbg !2611

do.body.56:                                       ; preds = %do.end.55
  %63 = bitcast %struct._object** %_py_xdecref_tmp57 to i8*, !dbg !2612
  call void @llvm.lifetime.start(i64 8, i8* %63) #2, !dbg !2612
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp57, metadata !865, metadata !1104), !dbg !2614
  %64 = load %struct._object*, %struct._object** %decoder.addr, align 8, !dbg !2615, !tbaa !1100
  store %struct._object* %64, %struct._object** %_py_xdecref_tmp57, align 8, !dbg !2614, !tbaa !1100
  %65 = load %struct._object*, %struct._object** %_py_xdecref_tmp57, align 8, !dbg !2616, !tbaa !1100
  %cmp58 = icmp ne %struct._object* %65, null, !dbg !2617
  br i1 %cmp58, label %if.then.59, label %if.end.72, !dbg !2618

if.then.59:                                       ; preds = %do.body.56
  br label %do.body.60, !dbg !2619

do.body.60:                                       ; preds = %if.then.59
  %66 = bitcast %struct._object** %_py_decref_tmp61 to i8*, !dbg !2621
  call void @llvm.lifetime.start(i64 8, i8* %66) #2, !dbg !2621
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp61, metadata !867, metadata !1104), !dbg !2623
  %67 = load %struct._object*, %struct._object** %_py_xdecref_tmp57, align 8, !dbg !2624, !tbaa !1100
  store %struct._object* %67, %struct._object** %_py_decref_tmp61, align 8, !dbg !2623, !tbaa !1100
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8, !dbg !2625, !tbaa !1100
  %ob_refcnt62 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 0, !dbg !2627
  %69 = load i64, i64* %ob_refcnt62, align 8, !dbg !2628, !tbaa !1335
  %dec63 = add i64 %69, -1, !dbg !2628
  store i64 %dec63, i64* %ob_refcnt62, align 8, !dbg !2628, !tbaa !1335
  %cmp64 = icmp ne i64 %dec63, 0, !dbg !2629
  br i1 %cmp64, label %if.then.65, label %if.else.66, !dbg !2630

if.then.65:                                       ; preds = %do.body.60
  br label %if.end.69, !dbg !2631

if.else.66:                                       ; preds = %do.body.60
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8, !dbg !2633, !tbaa !1100
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 1, !dbg !2635
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8, !dbg !2635, !tbaa !1344
  %tp_dealloc68 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %71, i32 0, i32 4, !dbg !2636
  %72 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc68, align 8, !dbg !2636, !tbaa !1346
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8, !dbg !2637, !tbaa !1100
  call void %72(%struct._object* %73), !dbg !2638
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.66, %if.then.65
  %74 = bitcast %struct._object** %_py_decref_tmp61 to i8*, !dbg !2639
  call void @llvm.lifetime.end(i64 8, i8* %74) #2, !dbg !2639
  br label %do.cond.70, !dbg !2641

do.cond.70:                                       ; preds = %if.end.69
  br label %do.end.71, !dbg !2642

do.end.71:                                        ; preds = %do.cond.70
  br label %if.end.72, !dbg !2644

if.end.72:                                        ; preds = %do.end.71, %do.body.56
  %75 = bitcast %struct._object** %_py_xdecref_tmp57 to i8*, !dbg !2646
  call void @llvm.lifetime.end(i64 8, i8* %75) #2, !dbg !2646
  br label %do.cond.73, !dbg !2647

do.cond.73:                                       ; preds = %if.end.72
  br label %do.end.74, !dbg !2648

do.end.74:                                        ; preds = %do.cond.73
  br label %do.body.75, !dbg !2650

do.body.75:                                       ; preds = %do.end.74
  %76 = bitcast %struct._object** %_py_xdecref_tmp76 to i8*, !dbg !2651
  call void @llvm.lifetime.start(i64 8, i8* %76) #2, !dbg !2651
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp76, metadata !870, metadata !1104), !dbg !2653
  %77 = load %struct._object*, %struct._object** %result, align 8, !dbg !2654, !tbaa !1100
  store %struct._object* %77, %struct._object** %_py_xdecref_tmp76, align 8, !dbg !2653, !tbaa !1100
  %78 = load %struct._object*, %struct._object** %_py_xdecref_tmp76, align 8, !dbg !2655, !tbaa !1100
  %cmp77 = icmp ne %struct._object* %78, null, !dbg !2656
  br i1 %cmp77, label %if.then.78, label %if.end.91, !dbg !2657

if.then.78:                                       ; preds = %do.body.75
  br label %do.body.79, !dbg !2658

do.body.79:                                       ; preds = %if.then.78
  %79 = bitcast %struct._object** %_py_decref_tmp80 to i8*, !dbg !2660
  call void @llvm.lifetime.start(i64 8, i8* %79) #2, !dbg !2660
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp80, metadata !872, metadata !1104), !dbg !2662
  %80 = load %struct._object*, %struct._object** %_py_xdecref_tmp76, align 8, !dbg !2663, !tbaa !1100
  store %struct._object* %80, %struct._object** %_py_decref_tmp80, align 8, !dbg !2662, !tbaa !1100
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8, !dbg !2664, !tbaa !1100
  %ob_refcnt81 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 0, !dbg !2666
  %82 = load i64, i64* %ob_refcnt81, align 8, !dbg !2667, !tbaa !1335
  %dec82 = add i64 %82, -1, !dbg !2667
  store i64 %dec82, i64* %ob_refcnt81, align 8, !dbg !2667, !tbaa !1335
  %cmp83 = icmp ne i64 %dec82, 0, !dbg !2668
  br i1 %cmp83, label %if.then.84, label %if.else.85, !dbg !2669

if.then.84:                                       ; preds = %do.body.79
  br label %if.end.88, !dbg !2670

if.else.85:                                       ; preds = %do.body.79
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8, !dbg !2672, !tbaa !1100
  %ob_type86 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 1, !dbg !2674
  %84 = load %struct._typeobject*, %struct._typeobject** %ob_type86, align 8, !dbg !2674, !tbaa !1344
  %tp_dealloc87 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %84, i32 0, i32 4, !dbg !2675
  %85 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc87, align 8, !dbg !2675, !tbaa !1346
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8, !dbg !2676, !tbaa !1100
  call void %85(%struct._object* %86), !dbg !2677
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.85, %if.then.84
  %87 = bitcast %struct._object** %_py_decref_tmp80 to i8*, !dbg !2678
  call void @llvm.lifetime.end(i64 8, i8* %87) #2, !dbg !2678
  br label %do.cond.89, !dbg !2680

do.cond.89:                                       ; preds = %if.end.88
  br label %do.end.90, !dbg !2681

do.end.90:                                        ; preds = %do.cond.89
  br label %if.end.91, !dbg !2683

if.end.91:                                        ; preds = %do.end.90, %do.body.75
  %88 = bitcast %struct._object** %_py_xdecref_tmp76 to i8*, !dbg !2685
  call void @llvm.lifetime.end(i64 8, i8* %88) #2, !dbg !2685
  br label %do.cond.92, !dbg !2686

do.cond.92:                                       ; preds = %if.end.91
  br label %do.end.93, !dbg !2687

do.end.93:                                        ; preds = %do.cond.92
  store %struct._object* null, %struct._object** %retval, !dbg !2689
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2689

cleanup:                                          ; preds = %do.end.93, %do.end.37
  %89 = bitcast %struct._object** %v to i8*, !dbg !2690
  call void @llvm.lifetime.end(i64 8, i8* %89) #2, !dbg !2690
  %90 = bitcast %struct._object** %result to i8*, !dbg !2690
  call void @llvm.lifetime.end(i64 8, i8* %90) #2, !dbg !2690
  %91 = bitcast %struct._object** %args to i8*, !dbg !2690
  call void @llvm.lifetime.end(i64 8, i8* %91) #2, !dbg !2690
  %92 = load %struct._object*, %struct._object** %retval, !dbg !2690
  ret %struct._object* %92, !dbg !2690
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyCodec_LookupTextEncoding(i8* %encoding, i8* %alternate_command) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %encoding.addr = alloca i8*, align 8
  %alternate_command.addr = alloca i8*, align 8
  %codec = alloca %struct._object*, align 8
  %attr = alloca %struct._object*, align 8
  %is_text_codec = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp17 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %encoding.addr, metadata !603, metadata !1104), !dbg !2691
  store i8* %alternate_command, i8** %alternate_command.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %alternate_command.addr, metadata !604, metadata !1104), !dbg !2692
  %0 = bitcast %struct._object** %codec to i8*, !dbg !2693
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2693
  call void @llvm.dbg.declare(metadata %struct._object** %codec, metadata !605, metadata !1104), !dbg !2694
  %1 = bitcast %struct._object** %attr to i8*, !dbg !2695
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2695
  call void @llvm.dbg.declare(metadata %struct._object** %attr, metadata !606, metadata !1104), !dbg !2696
  %2 = bitcast i32* %is_text_codec to i8*, !dbg !2697
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !2697
  call void @llvm.dbg.declare(metadata i32* %is_text_codec, metadata !607, metadata !1104), !dbg !2698
  %3 = load i8*, i8** %encoding.addr, align 8, !dbg !2699, !tbaa !1100
  %call = call %struct._object* @_PyCodec_Lookup(i8* %3), !dbg !2700
  store %struct._object* %call, %struct._object** %codec, align 8, !dbg !2701, !tbaa !1100
  %4 = load %struct._object*, %struct._object** %codec, align 8, !dbg !2702, !tbaa !1100
  %cmp = icmp eq %struct._object* %4, null, !dbg !2704
  br i1 %cmp, label %if.then, label %if.end, !dbg !2705

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2706
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2706

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %codec, align 8, !dbg !2707, !tbaa !1100
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1, !dbg !2708
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2708, !tbaa !1344
  %cmp1 = icmp eq %struct._typeobject* %6, @PyTuple_Type, !dbg !2709
  br i1 %cmp1, label %if.end.45, label %if.then.2, !dbg !2710

if.then.2:                                        ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %codec, align 8, !dbg !2711, !tbaa !1100
  %call3 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %7, %struct._Py_Identifier* @_PyCodec_LookupTextEncoding.PyId__is_text_encoding), !dbg !2712
  store %struct._object* %call3, %struct._object** %attr, align 8, !dbg !2713, !tbaa !1100
  %8 = load %struct._object*, %struct._object** %attr, align 8, !dbg !2714, !tbaa !1100
  %cmp4 = icmp eq %struct._object* %8, null, !dbg !2715
  br i1 %cmp4, label %if.then.5, label %if.else.14, !dbg !2716

if.then.5:                                        ; preds = %if.then.2
  %9 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8, !dbg !2717, !tbaa !1100
  %call6 = call i32 @PyErr_ExceptionMatches(%struct._object* %9), !dbg !2718
  %tobool = icmp ne i32 %call6, 0, !dbg !2718
  br i1 %tobool, label %if.then.7, label %if.else, !dbg !2719

if.then.7:                                        ; preds = %if.then.5
  call void @PyErr_Clear(), !dbg !2720
  br label %if.end.13, !dbg !2722

if.else:                                          ; preds = %if.then.5
  br label %do.body, !dbg !2723

do.body:                                          ; preds = %if.else
  %10 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2724
  call void @llvm.lifetime.start(i64 8, i8* %10) #2, !dbg !2724
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !608, metadata !1104), !dbg !2726
  %11 = load %struct._object*, %struct._object** %codec, align 8, !dbg !2727, !tbaa !1100
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8, !dbg !2726, !tbaa !1100
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2728, !tbaa !1100
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0, !dbg !2730
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !2731, !tbaa !1335
  %dec = add i64 %13, -1, !dbg !2731
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2731, !tbaa !1335
  %cmp8 = icmp ne i64 %dec, 0, !dbg !2732
  br i1 %cmp8, label %if.then.9, label %if.else.10, !dbg !2733

if.then.9:                                        ; preds = %do.body
  br label %if.end.12, !dbg !2734

if.else.10:                                       ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2736, !tbaa !1100
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1, !dbg !2738
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8, !dbg !2738, !tbaa !1344
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4, !dbg !2739
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2739, !tbaa !1346
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2740, !tbaa !1100
  call void %16(%struct._object* %17), !dbg !2741
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.9
  %18 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2742
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !2742
  br label %do.cond, !dbg !2744

do.cond:                                          ; preds = %if.end.12
  br label %do.end, !dbg !2745

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !2747
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2747

if.end.13:                                        ; preds = %if.then.7
  br label %if.end.44, !dbg !2748

if.else.14:                                       ; preds = %if.then.2
  %19 = load %struct._object*, %struct._object** %attr, align 8, !dbg !2749, !tbaa !1100
  %call15 = call i32 @PyObject_IsTrue(%struct._object* %19), !dbg !2750
  store i32 %call15, i32* %is_text_codec, align 4, !dbg !2751, !tbaa !1298
  br label %do.body.16, !dbg !2752

do.body.16:                                       ; preds = %if.else.14
  %20 = bitcast %struct._object** %_py_decref_tmp17 to i8*, !dbg !2753
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !2753
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp17, metadata !616, metadata !1104), !dbg !2755
  %21 = load %struct._object*, %struct._object** %attr, align 8, !dbg !2756, !tbaa !1100
  store %struct._object* %21, %struct._object** %_py_decref_tmp17, align 8, !dbg !2755, !tbaa !1100
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8, !dbg !2757, !tbaa !1100
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !2759
  %23 = load i64, i64* %ob_refcnt18, align 8, !dbg !2760, !tbaa !1335
  %dec19 = add i64 %23, -1, !dbg !2760
  store i64 %dec19, i64* %ob_refcnt18, align 8, !dbg !2760, !tbaa !1335
  %cmp20 = icmp ne i64 %dec19, 0, !dbg !2761
  br i1 %cmp20, label %if.then.21, label %if.else.22, !dbg !2762

if.then.21:                                       ; preds = %do.body.16
  br label %if.end.25, !dbg !2763

if.else.22:                                       ; preds = %do.body.16
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8, !dbg !2765, !tbaa !1100
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !2767
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8, !dbg !2767, !tbaa !1344
  %tp_dealloc24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !2768
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc24, align 8, !dbg !2768, !tbaa !1346
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8, !dbg !2769, !tbaa !1100
  call void %26(%struct._object* %27), !dbg !2770
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.22, %if.then.21
  %28 = bitcast %struct._object** %_py_decref_tmp17 to i8*, !dbg !2771
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !2771
  br label %do.cond.26, !dbg !2773

do.cond.26:                                       ; preds = %if.end.25
  br label %do.end.27, !dbg !2774

do.end.27:                                        ; preds = %do.cond.26
  %29 = load i32, i32* %is_text_codec, align 4, !dbg !2776, !tbaa !1298
  %tobool28 = icmp ne i32 %29, 0, !dbg !2776
  br i1 %tobool28, label %if.end.43, label %if.then.29, !dbg !2777

if.then.29:                                       ; preds = %do.end.27
  br label %do.body.30, !dbg !2778

do.body.30:                                       ; preds = %if.then.29
  %30 = bitcast %struct._object** %_py_decref_tmp31 to i8*, !dbg !2779
  call void @llvm.lifetime.start(i64 8, i8* %30) #2, !dbg !2779
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp31, metadata !619, metadata !1104), !dbg !2781
  %31 = load %struct._object*, %struct._object** %codec, align 8, !dbg !2782, !tbaa !1100
  store %struct._object* %31, %struct._object** %_py_decref_tmp31, align 8, !dbg !2781, !tbaa !1100
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !2783, !tbaa !1100
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0, !dbg !2785
  %33 = load i64, i64* %ob_refcnt32, align 8, !dbg !2786, !tbaa !1335
  %dec33 = add i64 %33, -1, !dbg !2786
  store i64 %dec33, i64* %ob_refcnt32, align 8, !dbg !2786, !tbaa !1335
  %cmp34 = icmp ne i64 %dec33, 0, !dbg !2787
  br i1 %cmp34, label %if.then.35, label %if.else.36, !dbg !2788

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39, !dbg !2789

if.else.36:                                       ; preds = %do.body.30
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !2791, !tbaa !1100
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1, !dbg !2793
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8, !dbg !2793, !tbaa !1344
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4, !dbg !2794
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8, !dbg !2794, !tbaa !1346
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !2795, !tbaa !1100
  call void %36(%struct._object* %37), !dbg !2796
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  %38 = bitcast %struct._object** %_py_decref_tmp31 to i8*, !dbg !2797
  call void @llvm.lifetime.end(i64 8, i8* %38) #2, !dbg !2797
  br label %do.cond.40, !dbg !2799

do.cond.40:                                       ; preds = %if.end.39
  br label %do.end.41, !dbg !2800

do.end.41:                                        ; preds = %do.cond.40
  %39 = load %struct._object*, %struct._object** @PyExc_LookupError, align 8, !dbg !2802, !tbaa !1100
  %40 = load i8*, i8** %encoding.addr, align 8, !dbg !2803, !tbaa !1100
  %41 = load i8*, i8** %alternate_command.addr, align 8, !dbg !2804, !tbaa !1100
  %call42 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %39, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.8, i32 0, i32 0), i8* %40, i8* %41), !dbg !2805
  store %struct._object* null, %struct._object** %retval, !dbg !2806
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2806

if.end.43:                                        ; preds = %do.end.27
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.13
  br label %if.end.45, !dbg !2807

if.end.45:                                        ; preds = %if.end.44, %if.end
  %42 = load %struct._object*, %struct._object** %codec, align 8, !dbg !2808, !tbaa !1100
  store %struct._object* %42, %struct._object** %retval, !dbg !2809
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2809

cleanup:                                          ; preds = %if.end.45, %do.end.41, %do.end, %if.then
  %43 = bitcast i32* %is_text_codec to i8*, !dbg !2810
  call void @llvm.lifetime.end(i64 4, i8* %43) #2, !dbg !2810
  %44 = bitcast %struct._object** %attr to i8*, !dbg !2810
  call void @llvm.lifetime.end(i64 8, i8* %44) #2, !dbg !2810
  %45 = bitcast %struct._object** %codec to i8*, !dbg !2810
  call void @llvm.lifetime.end(i64 8, i8* %45) #2, !dbg !2810
  %46 = load %struct._object*, %struct._object** %retval, !dbg !2810
  ret %struct._object* %46, !dbg !2810
}

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #4

declare i32 @PyErr_ExceptionMatches(%struct._object*) #4

declare i32 @PyObject_IsTrue(%struct._object*) #4

; Function Attrs: nounwind uwtable
define %struct._object* @_PyCodec_EncodeText(%struct._object* %object, i8* %encoding, i8* %errors) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %object.addr = alloca %struct._object*, align 8
  %encoding.addr = alloca i8*, align 8
  %errors.addr = alloca i8*, align 8
  %encoder = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %object, %struct._object** %object.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %object.addr, metadata !625, metadata !1104), !dbg !2811
  store i8* %encoding, i8** %encoding.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %encoding.addr, metadata !626, metadata !1104), !dbg !2812
  store i8* %errors, i8** %errors.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %errors.addr, metadata !627, metadata !1104), !dbg !2813
  %0 = bitcast %struct._object** %encoder to i8*, !dbg !2814
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2814
  call void @llvm.dbg.declare(metadata %struct._object** %encoder, metadata !628, metadata !1104), !dbg !2815
  %1 = load i8*, i8** %encoding.addr, align 8, !dbg !2816, !tbaa !1100
  %call = call %struct._object* @_PyCodec_TextEncoder(i8* %1), !dbg !2817
  store %struct._object* %call, %struct._object** %encoder, align 8, !dbg !2818, !tbaa !1100
  %2 = load %struct._object*, %struct._object** %encoder, align 8, !dbg !2819, !tbaa !1100
  %cmp = icmp eq %struct._object* %2, null, !dbg !2821
  br i1 %cmp, label %if.then, label %if.end, !dbg !2822

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2823
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2823

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %object.addr, align 8, !dbg !2824, !tbaa !1100
  %4 = load %struct._object*, %struct._object** %encoder, align 8, !dbg !2825, !tbaa !1100
  %5 = load i8*, i8** %encoding.addr, align 8, !dbg !2826, !tbaa !1100
  %6 = load i8*, i8** %errors.addr, align 8, !dbg !2827, !tbaa !1100
  %call1 = call %struct._object* @_PyCodec_EncodeInternal(%struct._object* %3, %struct._object* %4, i8* %5, i8* %6), !dbg !2828
  store %struct._object* %call1, %struct._object** %retval, !dbg !2829
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2829

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast %struct._object** %encoder to i8*, !dbg !2830
  call void @llvm.lifetime.end(i64 8, i8* %7) #2, !dbg !2830
  %8 = load %struct._object*, %struct._object** %retval, !dbg !2830
  ret %struct._object* %8, !dbg !2830
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_PyCodec_TextEncoder(i8* %encoding) #0 {
entry:
  %encoding.addr = alloca i8*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %encoding.addr, metadata !877, metadata !1104), !dbg !2831
  %0 = load i8*, i8** %encoding.addr, align 8, !dbg !2832, !tbaa !1100
  %call = call %struct._object* @codec_getitem_checked(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0), i32 0), !dbg !2833
  ret %struct._object* %call, !dbg !2834
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyCodec_DecodeText(%struct._object* %object, i8* %encoding, i8* %errors) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %object.addr = alloca %struct._object*, align 8
  %encoding.addr = alloca i8*, align 8
  %errors.addr = alloca i8*, align 8
  %decoder = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %object, %struct._object** %object.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %object.addr, metadata !631, metadata !1104), !dbg !2835
  store i8* %encoding, i8** %encoding.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %encoding.addr, metadata !632, metadata !1104), !dbg !2836
  store i8* %errors, i8** %errors.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %errors.addr, metadata !633, metadata !1104), !dbg !2837
  %0 = bitcast %struct._object** %decoder to i8*, !dbg !2838
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2838
  call void @llvm.dbg.declare(metadata %struct._object** %decoder, metadata !634, metadata !1104), !dbg !2839
  %1 = load i8*, i8** %encoding.addr, align 8, !dbg !2840, !tbaa !1100
  %call = call %struct._object* @_PyCodec_TextDecoder(i8* %1), !dbg !2841
  store %struct._object* %call, %struct._object** %decoder, align 8, !dbg !2842, !tbaa !1100
  %2 = load %struct._object*, %struct._object** %decoder, align 8, !dbg !2843, !tbaa !1100
  %cmp = icmp eq %struct._object* %2, null, !dbg !2845
  br i1 %cmp, label %if.then, label %if.end, !dbg !2846

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2847
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2847

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %object.addr, align 8, !dbg !2848, !tbaa !1100
  %4 = load %struct._object*, %struct._object** %decoder, align 8, !dbg !2849, !tbaa !1100
  %5 = load i8*, i8** %encoding.addr, align 8, !dbg !2850, !tbaa !1100
  %6 = load i8*, i8** %errors.addr, align 8, !dbg !2851, !tbaa !1100
  %call1 = call %struct._object* @_PyCodec_DecodeInternal(%struct._object* %3, %struct._object* %4, i8* %5, i8* %6), !dbg !2852
  store %struct._object* %call1, %struct._object** %retval, !dbg !2853
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2853

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast %struct._object** %decoder to i8*, !dbg !2854
  call void @llvm.lifetime.end(i64 8, i8* %7) #2, !dbg !2854
  %8 = load %struct._object*, %struct._object** %retval, !dbg !2854
  ret %struct._object* %8, !dbg !2854
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_PyCodec_TextDecoder(i8* %encoding) #0 {
entry:
  %encoding.addr = alloca i8*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %encoding.addr, metadata !891, metadata !1104), !dbg !2855
  %0 = load i8*, i8** %encoding.addr, align 8, !dbg !2856, !tbaa !1100
  %call = call %struct._object* @codec_getitem_checked(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), i32 1), !dbg !2857
  ret %struct._object* %call, !dbg !2858
}

; Function Attrs: nounwind uwtable
define i32 @PyCodec_RegisterError(i8* %name, %struct._object* %error) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %error.addr = alloca %struct._object*, align 8
  %interp = alloca %struct._is*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %name, i8** %name.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !639, metadata !1104), !dbg !2859
  store %struct._object* %error, %struct._object** %error.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %error.addr, metadata !640, metadata !1104), !dbg !2860
  %0 = bitcast %struct._is** %interp to i8*, !dbg !2861
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2861
  call void @llvm.dbg.declare(metadata %struct._is** %interp, metadata !641, metadata !1104), !dbg !2862
  %1 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !2863
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2863
  call void @llvm.dbg.declare(metadata %struct._Py_atomic_address** %atomic_val, metadata !642, metadata !1104), !dbg !2864
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2864, !tbaa !1100
  %2 = bitcast i8** %result to i8*, !dbg !2865
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2865
  call void @llvm.dbg.declare(metadata i8** %result, metadata !644, metadata !1104), !dbg !2866
  %3 = bitcast i8*** %volatile_data to i8*, !dbg !2867
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2867
  call void @llvm.dbg.declare(metadata i8*** %volatile_data, metadata !645, metadata !1104), !dbg !2868
  %4 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2869, !tbaa !1100
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %4, i32 0, i32 0, !dbg !2870
  store i8** %_value, i8*** %volatile_data, align 8, !dbg !2868, !tbaa !1100
  %5 = bitcast i32* %order to i8*, !dbg !2871
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !2871
  call void @llvm.dbg.declare(metadata i32* %order, metadata !646, metadata !1104), !dbg !2872
  store i32 0, i32* %order, align 4, !dbg !2872, !tbaa !1118
  %6 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2873, !tbaa !1100
  %7 = bitcast %struct._Py_atomic_address* %6 to i8*, !dbg !2873
  %8 = load i32, i32* %order, align 4, !dbg !2874, !tbaa !1118
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %7, i32 %8), !dbg !2875
  %9 = load i32, i32* %order, align 4, !dbg !2876, !tbaa !1118
  switch i32 %9, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ], !dbg !2877

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2), !dbg !2878
  br label %sw.epilog, !dbg !2883

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !2884

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %10 = load i8**, i8*** %volatile_data, align 8, !dbg !2886, !tbaa !1100
  %11 = load volatile i8*, i8** %10, align 8, !dbg !2889, !tbaa !1100
  store i8* %11, i8** %result, align 8, !dbg !2890, !tbaa !1100
  %12 = load i32, i32* %order, align 4, !dbg !2891, !tbaa !1118
  switch i32 %12, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ], !dbg !2892

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1), !dbg !2893
  br label %sw.epilog.3, !dbg !2898

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3, !dbg !2899

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %13 = load i8*, i8** %result, align 8, !dbg !2901, !tbaa !1100
  store i8* %13, i8** %tmp, !dbg !2904, !tbaa !1100
  %14 = bitcast i32* %order to i8*, !dbg !2905
  call void @llvm.lifetime.end(i64 4, i8* %14) #2, !dbg !2905
  %15 = bitcast i8*** %volatile_data to i8*, !dbg !2905
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !2905
  %16 = bitcast i8** %result to i8*, !dbg !2905
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !2905
  %17 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !2905
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !2905
  %18 = load i8*, i8** %tmp, !dbg !2906, !tbaa !1100
  %19 = bitcast i8* %18 to %struct._ts*, !dbg !2907
  %interp4 = getelementptr inbounds %struct._ts, %struct._ts* %19, i32 0, i32 2, !dbg !2908
  %20 = load %struct._is*, %struct._is** %interp4, align 8, !dbg !2908, !tbaa !1155
  store %struct._is* %20, %struct._is** %interp, align 8, !dbg !2862, !tbaa !1100
  %21 = load %struct._is*, %struct._is** %interp, align 8, !dbg !2909, !tbaa !1100
  %codec_search_path = getelementptr inbounds %struct._is, %struct._is* %21, i32 0, i32 7, !dbg !2911
  %22 = load %struct._object*, %struct._object** %codec_search_path, align 8, !dbg !2911, !tbaa !1162
  %cmp = icmp eq %struct._object* %22, null, !dbg !2912
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2913

land.lhs.true:                                    ; preds = %sw.epilog.3
  %call = call i32 @_PyCodecRegistry_Init(), !dbg !2914
  %tobool = icmp ne i32 %call, 0, !dbg !2914
  br i1 %tobool, label %if.then, label %if.end, !dbg !2916

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, i32* %retval, !dbg !2917
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2917

if.end:                                           ; preds = %land.lhs.true, %sw.epilog.3
  %23 = load %struct._object*, %struct._object** %error.addr, align 8, !dbg !2918, !tbaa !1100
  %call5 = call i32 @PyCallable_Check(%struct._object* %23), !dbg !2920
  %tobool6 = icmp ne i32 %call5, 0, !dbg !2920
  br i1 %tobool6, label %if.end.8, label %if.then.7, !dbg !2921

if.then.7:                                        ; preds = %if.end
  %24 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2922, !tbaa !1100
  call void @PyErr_SetString(%struct._object* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0)), !dbg !2924
  store i32 -1, i32* %retval, !dbg !2925
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2925

if.end.8:                                         ; preds = %if.end
  %25 = load %struct._is*, %struct._is** %interp, align 8, !dbg !2926, !tbaa !1100
  %codec_error_registry = getelementptr inbounds %struct._is, %struct._is* %25, i32 0, i32 9, !dbg !2927
  %26 = load %struct._object*, %struct._object** %codec_error_registry, align 8, !dbg !2927, !tbaa !1293
  %27 = load i8*, i8** %name.addr, align 8, !dbg !2928, !tbaa !1100
  %28 = load %struct._object*, %struct._object** %error.addr, align 8, !dbg !2929, !tbaa !1100
  %call9 = call i32 @PyDict_SetItemString(%struct._object* %26, i8* %27, %struct._object* %28), !dbg !2930
  store i32 %call9, i32* %retval, !dbg !2931
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2931

cleanup:                                          ; preds = %if.end.8, %if.then.7, %if.then
  %29 = bitcast %struct._is** %interp to i8*, !dbg !2932
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !2932
  %30 = load i32, i32* %retval, !dbg !2932
  ret i32 %30, !dbg !2932
}

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #4

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_LookupError(i8* %name) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %handler = alloca %struct._object*, align 8
  %interp = alloca %struct._is*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %name, i8** %name.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !649, metadata !1104), !dbg !2933
  %0 = bitcast %struct._object** %handler to i8*, !dbg !2934
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2934
  call void @llvm.dbg.declare(metadata %struct._object** %handler, metadata !650, metadata !1104), !dbg !2935
  store %struct._object* null, %struct._object** %handler, align 8, !dbg !2935, !tbaa !1100
  %1 = bitcast %struct._is** %interp to i8*, !dbg !2936
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2936
  call void @llvm.dbg.declare(metadata %struct._is** %interp, metadata !651, metadata !1104), !dbg !2937
  %2 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !2938
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2938
  call void @llvm.dbg.declare(metadata %struct._Py_atomic_address** %atomic_val, metadata !652, metadata !1104), !dbg !2939
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2939, !tbaa !1100
  %3 = bitcast i8** %result to i8*, !dbg !2940
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2940
  call void @llvm.dbg.declare(metadata i8** %result, metadata !654, metadata !1104), !dbg !2941
  %4 = bitcast i8*** %volatile_data to i8*, !dbg !2942
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !2942
  call void @llvm.dbg.declare(metadata i8*** %volatile_data, metadata !655, metadata !1104), !dbg !2943
  %5 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2944, !tbaa !1100
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %5, i32 0, i32 0, !dbg !2945
  store i8** %_value, i8*** %volatile_data, align 8, !dbg !2943, !tbaa !1100
  %6 = bitcast i32* %order to i8*, !dbg !2946
  call void @llvm.lifetime.start(i64 4, i8* %6) #2, !dbg !2946
  call void @llvm.dbg.declare(metadata i32* %order, metadata !656, metadata !1104), !dbg !2947
  store i32 0, i32* %order, align 4, !dbg !2947, !tbaa !1118
  %7 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2948, !tbaa !1100
  %8 = bitcast %struct._Py_atomic_address* %7 to i8*, !dbg !2948
  %9 = load i32, i32* %order, align 4, !dbg !2949, !tbaa !1118
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %8, i32 %9), !dbg !2950
  %10 = load i32, i32* %order, align 4, !dbg !2951, !tbaa !1118
  switch i32 %10, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ], !dbg !2952

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2), !dbg !2953
  br label %sw.epilog, !dbg !2958

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !2959

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %11 = load i8**, i8*** %volatile_data, align 8, !dbg !2961, !tbaa !1100
  %12 = load volatile i8*, i8** %11, align 8, !dbg !2964, !tbaa !1100
  store i8* %12, i8** %result, align 8, !dbg !2965, !tbaa !1100
  %13 = load i32, i32* %order, align 4, !dbg !2966, !tbaa !1118
  switch i32 %13, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ], !dbg !2967

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1), !dbg !2968
  br label %sw.epilog.3, !dbg !2973

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3, !dbg !2974

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %14 = load i8*, i8** %result, align 8, !dbg !2976, !tbaa !1100
  store i8* %14, i8** %tmp, !dbg !2979, !tbaa !1100
  %15 = bitcast i32* %order to i8*, !dbg !2980
  call void @llvm.lifetime.end(i64 4, i8* %15) #2, !dbg !2980
  %16 = bitcast i8*** %volatile_data to i8*, !dbg !2980
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !2980
  %17 = bitcast i8** %result to i8*, !dbg !2980
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !2980
  %18 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !2980
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !2980
  %19 = load i8*, i8** %tmp, !dbg !2981, !tbaa !1100
  %20 = bitcast i8* %19 to %struct._ts*, !dbg !2982
  %interp4 = getelementptr inbounds %struct._ts, %struct._ts* %20, i32 0, i32 2, !dbg !2983
  %21 = load %struct._is*, %struct._is** %interp4, align 8, !dbg !2983, !tbaa !1155
  store %struct._is* %21, %struct._is** %interp, align 8, !dbg !2937, !tbaa !1100
  %22 = load %struct._is*, %struct._is** %interp, align 8, !dbg !2984, !tbaa !1100
  %codec_search_path = getelementptr inbounds %struct._is, %struct._is* %22, i32 0, i32 7, !dbg !2986
  %23 = load %struct._object*, %struct._object** %codec_search_path, align 8, !dbg !2986, !tbaa !1162
  %cmp = icmp eq %struct._object* %23, null, !dbg !2987
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2988

land.lhs.true:                                    ; preds = %sw.epilog.3
  %call = call i32 @_PyCodecRegistry_Init(), !dbg !2989
  %tobool = icmp ne i32 %call, 0, !dbg !2989
  br i1 %tobool, label %if.then, label %if.end, !dbg !2991

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !2992
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2992

if.end:                                           ; preds = %land.lhs.true, %sw.epilog.3
  %24 = load i8*, i8** %name.addr, align 8, !dbg !2993, !tbaa !1100
  %cmp5 = icmp eq i8* %24, null, !dbg !2995
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !2996

if.then.6:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8** %name.addr, align 8, !dbg !2997, !tbaa !1100
  br label %if.end.7, !dbg !2998

if.end.7:                                         ; preds = %if.then.6, %if.end
  %25 = load %struct._is*, %struct._is** %interp, align 8, !dbg !2999, !tbaa !1100
  %codec_error_registry = getelementptr inbounds %struct._is, %struct._is* %25, i32 0, i32 9, !dbg !3000
  %26 = load %struct._object*, %struct._object** %codec_error_registry, align 8, !dbg !3000, !tbaa !1293
  %27 = load i8*, i8** %name.addr, align 8, !dbg !3001, !tbaa !1100
  %call8 = call %struct._object* @PyDict_GetItemString(%struct._object* %26, i8* %27), !dbg !3002
  store %struct._object* %call8, %struct._object** %handler, align 8, !dbg !3003, !tbaa !1100
  %28 = load %struct._object*, %struct._object** %handler, align 8, !dbg !3004, !tbaa !1100
  %tobool9 = icmp ne %struct._object* %28, null, !dbg !3004
  br i1 %tobool9, label %if.else, label %if.then.10, !dbg !3006

if.then.10:                                       ; preds = %if.end.7
  %29 = load %struct._object*, %struct._object** @PyExc_LookupError, align 8, !dbg !3007, !tbaa !1100
  %30 = load i8*, i8** %name.addr, align 8, !dbg !3008, !tbaa !1100
  %call11 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i32 0, i32 0), i8* %30), !dbg !3009
  br label %if.end.12, !dbg !3009

if.else:                                          ; preds = %if.end.7
  %31 = load %struct._object*, %struct._object** %handler, align 8, !dbg !3010, !tbaa !1100
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0, !dbg !3011
  %32 = load i64, i64* %ob_refcnt, align 8, !dbg !3012, !tbaa !1335
  %inc = add i64 %32, 1, !dbg !3012
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3012, !tbaa !1335
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.10
  %33 = load %struct._object*, %struct._object** %handler, align 8, !dbg !3013, !tbaa !1100
  store %struct._object* %33, %struct._object** %retval, !dbg !3014
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3014

cleanup:                                          ; preds = %if.end.12, %if.then
  %34 = bitcast %struct._is** %interp to i8*, !dbg !3015
  call void @llvm.lifetime.end(i64 8, i8* %34) #2, !dbg !3015
  %35 = bitcast %struct._object** %handler to i8*, !dbg !3015
  call void @llvm.lifetime.end(i64 8, i8* %35) #2, !dbg !3015
  %36 = load %struct._object*, %struct._object** %retval, !dbg !3015
  ret %struct._object* %36, !dbg !3015
}

declare %struct._object* @PyDict_GetItemString(%struct._object*, i8*) #4

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_StrictErrors(%struct._object* %exc) #0 {
entry:
  %exc.addr = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %exc.addr, metadata !659, metadata !1104), !dbg !3016
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3017, !tbaa !1100
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !3019
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3019, !tbaa !1344
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19, !dbg !3020
  %2 = load i64, i64* %tp_flags, align 8, !dbg !3020, !tbaa !1627
  %and = and i64 %2, 1073741824, !dbg !3021
  %cmp = icmp ne i64 %and, 0, !dbg !3022
  br i1 %cmp, label %if.then, label %if.else, !dbg !3023

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3024, !tbaa !1100
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !3025
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !3025, !tbaa !1344
  %5 = bitcast %struct._typeobject* %4 to %struct._object*, !dbg !3026
  %6 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3027, !tbaa !1100
  call void @PyErr_SetObject(%struct._object* %5, %struct._object* %6), !dbg !3028
  br label %if.end, !dbg !3028

if.else:                                          ; preds = %entry
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !3029, !tbaa !1100
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0)), !dbg !3030
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret %struct._object* null, !dbg !3031
}

declare void @PyErr_SetObject(%struct._object*, %struct._object*) #4

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_IgnoreErrors(%struct._object* %exc) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %exc.addr = alloca %struct._object*, align 8
  %end = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %exc, %struct._object** %exc.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %exc.addr, metadata !662, metadata !1104), !dbg !3032
  %0 = bitcast i64* %end to i8*, !dbg !3033
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3033
  call void @llvm.dbg.declare(metadata i64* %end, metadata !663, metadata !1104), !dbg !3034
  %1 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3035, !tbaa !1100
  %2 = load %struct._object*, %struct._object** @PyExc_UnicodeEncodeError, align 8, !dbg !3037, !tbaa !1100
  %call = call i32 @PyObject_IsInstance(%struct._object* %1, %struct._object* %2), !dbg !3038
  %tobool = icmp ne i32 %call, 0, !dbg !3038
  br i1 %tobool, label %if.then, label %if.else, !dbg !3039

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3040, !tbaa !1100
  %call1 = call i32 @PyUnicodeEncodeError_GetEnd(%struct._object* %3, i64* %end), !dbg !3043
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3043
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !3044

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !3045
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3045

if.end:                                           ; preds = %if.then
  br label %if.end.22, !dbg !3046

if.else:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3047, !tbaa !1100
  %5 = load %struct._object*, %struct._object** @PyExc_UnicodeDecodeError, align 8, !dbg !3049, !tbaa !1100
  %call4 = call i32 @PyObject_IsInstance(%struct._object* %4, %struct._object* %5), !dbg !3050
  %tobool5 = icmp ne i32 %call4, 0, !dbg !3050
  br i1 %tobool5, label %if.then.6, label %if.else.11, !dbg !3051

if.then.6:                                        ; preds = %if.else
  %6 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3052, !tbaa !1100
  %call7 = call i32 @PyUnicodeDecodeError_GetEnd(%struct._object* %6, i64* %end), !dbg !3055
  %tobool8 = icmp ne i32 %call7, 0, !dbg !3055
  br i1 %tobool8, label %if.then.9, label %if.end.10, !dbg !3056

if.then.9:                                        ; preds = %if.then.6
  store %struct._object* null, %struct._object** %retval, !dbg !3057
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3057

if.end.10:                                        ; preds = %if.then.6
  br label %if.end.21, !dbg !3058

if.else.11:                                       ; preds = %if.else
  %7 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3059, !tbaa !1100
  %8 = load %struct._object*, %struct._object** @PyExc_UnicodeTranslateError, align 8, !dbg !3061, !tbaa !1100
  %call12 = call i32 @PyObject_IsInstance(%struct._object* %7, %struct._object* %8), !dbg !3062
  %tobool13 = icmp ne i32 %call12, 0, !dbg !3062
  br i1 %tobool13, label %if.then.14, label %if.else.19, !dbg !3063

if.then.14:                                       ; preds = %if.else.11
  %9 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3064, !tbaa !1100
  %call15 = call i32 @PyUnicodeTranslateError_GetEnd(%struct._object* %9, i64* %end), !dbg !3067
  %tobool16 = icmp ne i32 %call15, 0, !dbg !3067
  br i1 %tobool16, label %if.then.17, label %if.end.18, !dbg !3068

if.then.17:                                       ; preds = %if.then.14
  store %struct._object* null, %struct._object** %retval, !dbg !3069
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3069

if.end.18:                                        ; preds = %if.then.14
  br label %if.end.20, !dbg !3070

if.else.19:                                       ; preds = %if.else.11
  %10 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3071, !tbaa !1100
  call void @wrong_exception_type(%struct._object* %10), !dbg !3073
  store %struct._object* null, %struct._object** %retval, !dbg !3074
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3074

if.end.20:                                        ; preds = %if.end.18
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.10
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end
  %call23 = call %struct._object* @PyUnicode_New(i64 0, i32 0), !dbg !3075
  %11 = load i64, i64* %end, align 8, !dbg !3076, !tbaa !1553
  %call24 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), %struct._object* %call23, i64 %11), !dbg !3077
  store %struct._object* %call24, %struct._object** %retval, !dbg !3078
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3078

cleanup:                                          ; preds = %if.end.22, %if.else.19, %if.then.17, %if.then.9, %if.then.3
  %12 = bitcast i64* %end to i8*, !dbg !3079
  call void @llvm.lifetime.end(i64 8, i8* %12) #2, !dbg !3079
  %13 = load %struct._object*, %struct._object** %retval, !dbg !3079
  ret %struct._object* %13, !dbg !3079
}

declare i32 @PyObject_IsInstance(%struct._object*, %struct._object*) #4

declare i32 @PyUnicodeEncodeError_GetEnd(%struct._object*, i64*) #4

declare i32 @PyUnicodeDecodeError_GetEnd(%struct._object*, i64*) #4

declare i32 @PyUnicodeTranslateError_GetEnd(%struct._object*, i64*) #4

; Function Attrs: nounwind uwtable
define internal void @wrong_exception_type(%struct._object* %exc) #0 {
entry:
  %exc.addr = alloca %struct._object*, align 8
  %type = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp8 = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %exc.addr, metadata !894, metadata !1104), !dbg !3080
  %0 = bitcast %struct._object** %type to i8*, !dbg !3081
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3081
  call void @llvm.dbg.declare(metadata %struct._object** %type, metadata !895, metadata !1104), !dbg !3082
  %1 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3083, !tbaa !1100
  %call = call %struct._object* @_PyObject_GetAttrId(%struct._object* %1, %struct._Py_Identifier* @wrong_exception_type.PyId___class__), !dbg !3084
  store %struct._object* %call, %struct._object** %type, align 8, !dbg !3082, !tbaa !1100
  %2 = load %struct._object*, %struct._object** %type, align 8, !dbg !3085, !tbaa !1100
  %cmp = icmp ne %struct._object* %2, null, !dbg !3086
  br i1 %cmp, label %if.then, label %if.end.20, !dbg !3087

if.then:                                          ; preds = %entry
  %3 = bitcast %struct._object** %name to i8*, !dbg !3088
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !3088
  call void @llvm.dbg.declare(metadata %struct._object** %name, metadata !896, metadata !1104), !dbg !3089
  %4 = load %struct._object*, %struct._object** %type, align 8, !dbg !3090, !tbaa !1100
  %call1 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %4, %struct._Py_Identifier* @wrong_exception_type.PyId___name__), !dbg !3091
  store %struct._object* %call1, %struct._object** %name, align 8, !dbg !3089, !tbaa !1100
  br label %do.body, !dbg !3092

do.body:                                          ; preds = %if.then
  %5 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3093
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !3093
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !899, metadata !1104), !dbg !3095
  %6 = load %struct._object*, %struct._object** %type, align 8, !dbg !3096, !tbaa !1100
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8, !dbg !3095, !tbaa !1100
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3097, !tbaa !1100
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !3099
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !3100, !tbaa !1335
  %dec = add i64 %8, -1, !dbg !3100
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3100, !tbaa !1335
  %cmp2 = icmp ne i64 %dec, 0, !dbg !3101
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !3102

if.then.3:                                        ; preds = %do.body
  br label %if.end, !dbg !3103

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3105, !tbaa !1100
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !3107
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3107, !tbaa !1344
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4, !dbg !3108
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3108, !tbaa !1346
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3109, !tbaa !1100
  call void %11(%struct._object* %12), !dbg !3110
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3111
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !3111
  br label %do.cond, !dbg !3113

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !3114

do.end:                                           ; preds = %do.cond
  %14 = load %struct._object*, %struct._object** %name, align 8, !dbg !3116, !tbaa !1100
  %cmp4 = icmp ne %struct._object* %14, null, !dbg !3117
  br i1 %cmp4, label %if.then.5, label %if.end.19, !dbg !3118

if.then.5:                                        ; preds = %do.end
  %15 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !3119, !tbaa !1100
  %16 = load %struct._object*, %struct._object** %name, align 8, !dbg !3120, !tbaa !1100
  %call6 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %15, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i32 0, i32 0), %struct._object* %16), !dbg !3121
  br label %do.body.7, !dbg !3122

do.body.7:                                        ; preds = %if.then.5
  %17 = bitcast %struct._object** %_py_decref_tmp8 to i8*, !dbg !3123
  call void @llvm.lifetime.start(i64 8, i8* %17) #2, !dbg !3123
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp8, metadata !901, metadata !1104), !dbg !3125
  %18 = load %struct._object*, %struct._object** %name, align 8, !dbg !3126, !tbaa !1100
  store %struct._object* %18, %struct._object** %_py_decref_tmp8, align 8, !dbg !3125, !tbaa !1100
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp8, align 8, !dbg !3127, !tbaa !1100
  %ob_refcnt9 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0, !dbg !3129
  %20 = load i64, i64* %ob_refcnt9, align 8, !dbg !3130, !tbaa !1335
  %dec10 = add i64 %20, -1, !dbg !3130
  store i64 %dec10, i64* %ob_refcnt9, align 8, !dbg !3130, !tbaa !1335
  %cmp11 = icmp ne i64 %dec10, 0, !dbg !3131
  br i1 %cmp11, label %if.then.12, label %if.else.13, !dbg !3132

if.then.12:                                       ; preds = %do.body.7
  br label %if.end.16, !dbg !3133

if.else.13:                                       ; preds = %do.body.7
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp8, align 8, !dbg !3135, !tbaa !1100
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1, !dbg !3137
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8, !dbg !3137, !tbaa !1344
  %tp_dealloc15 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4, !dbg !3138
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc15, align 8, !dbg !3138, !tbaa !1346
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp8, align 8, !dbg !3139, !tbaa !1100
  call void %23(%struct._object* %24), !dbg !3140
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.13, %if.then.12
  %25 = bitcast %struct._object** %_py_decref_tmp8 to i8*, !dbg !3141
  call void @llvm.lifetime.end(i64 8, i8* %25) #2, !dbg !3141
  br label %do.cond.17, !dbg !3143

do.cond.17:                                       ; preds = %if.end.16
  br label %do.end.18, !dbg !3144

do.end.18:                                        ; preds = %do.cond.17
  br label %if.end.19, !dbg !3146

if.end.19:                                        ; preds = %do.end.18, %do.end
  %26 = bitcast %struct._object** %name to i8*, !dbg !3147
  call void @llvm.lifetime.end(i64 8, i8* %26) #2, !dbg !3147
  br label %if.end.20, !dbg !3148

if.end.20:                                        ; preds = %if.end.19, %entry
  %27 = bitcast %struct._object** %type to i8*, !dbg !3149
  call void @llvm.lifetime.end(i64 8, i8* %27) #2, !dbg !3149
  ret void, !dbg !3149
}

declare %struct._object* @Py_BuildValue(i8*, ...) #4

declare %struct._object* @PyUnicode_New(i64, i32) #4

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_ReplaceErrors(%struct._object* %exc) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %exc.addr = alloca %struct._object*, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  %res = alloca %struct._object*, align 8
  %kind = alloca i32, align 4
  %data = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %res46 = alloca %struct._object*, align 8
  %kind47 = alloca i32, align 4
  %data48 = alloca i8*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %exc.addr, metadata !666, metadata !1104), !dbg !3150
  %0 = bitcast i64* %start to i8*, !dbg !3151
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3151
  call void @llvm.dbg.declare(metadata i64* %start, metadata !667, metadata !1104), !dbg !3152
  %1 = bitcast i64* %end to i8*, !dbg !3151
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3151
  call void @llvm.dbg.declare(metadata i64* %end, metadata !668, metadata !1104), !dbg !3153
  %2 = bitcast i64* %i to i8*, !dbg !3151
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !3151
  call void @llvm.dbg.declare(metadata i64* %i, metadata !669, metadata !1104), !dbg !3154
  %3 = bitcast i64* %len to i8*, !dbg !3151
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !3151
  call void @llvm.dbg.declare(metadata i64* %len, metadata !670, metadata !1104), !dbg !3155
  %4 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3156, !tbaa !1100
  %5 = load %struct._object*, %struct._object** @PyExc_UnicodeEncodeError, align 8, !dbg !3157, !tbaa !1100
  %call = call i32 @PyObject_IsInstance(%struct._object* %4, %struct._object* %5), !dbg !3158
  %tobool = icmp ne i32 %call, 0, !dbg !3158
  br i1 %tobool, label %if.then, label %if.else, !dbg !3159

if.then:                                          ; preds = %entry
  %6 = bitcast %struct._object** %res to i8*, !dbg !3160
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !3160
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !671, metadata !1104), !dbg !3161
  %7 = bitcast i32* %kind to i8*, !dbg !3162
  call void @llvm.lifetime.start(i64 4, i8* %7) #2, !dbg !3162
  call void @llvm.dbg.declare(metadata i32* %kind, metadata !674, metadata !1104), !dbg !3163
  %8 = bitcast i8** %data to i8*, !dbg !3164
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !3164
  call void @llvm.dbg.declare(metadata i8** %data, metadata !675, metadata !1104), !dbg !3165
  %9 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3166, !tbaa !1100
  %call1 = call i32 @PyUnicodeEncodeError_GetStart(%struct._object* %9, i64* %start), !dbg !3168
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3168
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !3169

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !3170
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3170

if.end:                                           ; preds = %if.then
  %10 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3171, !tbaa !1100
  %call4 = call i32 @PyUnicodeEncodeError_GetEnd(%struct._object* %10, i64* %end), !dbg !3173
  %tobool5 = icmp ne i32 %call4, 0, !dbg !3173
  br i1 %tobool5, label %if.then.6, label %if.end.7, !dbg !3174

if.then.6:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !3175
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3175

if.end.7:                                         ; preds = %if.end
  %11 = load i64, i64* %end, align 8, !dbg !3176, !tbaa !1553
  %12 = load i64, i64* %start, align 8, !dbg !3177, !tbaa !1553
  %sub = sub i64 %11, %12, !dbg !3178
  store i64 %sub, i64* %len, align 8, !dbg !3179, !tbaa !1553
  %13 = load i64, i64* %len, align 8, !dbg !3180, !tbaa !1553
  %call8 = call %struct._object* @PyUnicode_New(i64 %13, i32 63), !dbg !3181
  store %struct._object* %call8, %struct._object** %res, align 8, !dbg !3182, !tbaa !1100
  %14 = load %struct._object*, %struct._object** %res, align 8, !dbg !3183, !tbaa !1100
  %cmp = icmp eq %struct._object* %14, null, !dbg !3185
  br i1 %cmp, label %if.then.9, label %if.end.10, !dbg !3186

if.then.9:                                        ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval, !dbg !3187
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3187

if.end.10:                                        ; preds = %if.end.7
  %15 = load %struct._object*, %struct._object** %res, align 8, !dbg !3188, !tbaa !1100
  %16 = bitcast %struct._object* %15 to %struct.PyASCIIObject*, !dbg !3189
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %16, i32 0, i32 3, !dbg !3190
  %17 = bitcast %struct.anon* %state to i32*, !dbg !3191
  %bf.load = load i32, i32* %17, align 4, !dbg !3191
  %bf.lshr = lshr i32 %bf.load, 2, !dbg !3191
  %bf.clear = and i32 %bf.lshr, 7, !dbg !3191
  store i32 %bf.clear, i32* %kind, align 4, !dbg !3192, !tbaa !1298
  %18 = load %struct._object*, %struct._object** %res, align 8, !dbg !3193, !tbaa !1100
  %19 = bitcast %struct._object* %18 to %struct.PyASCIIObject*, !dbg !3194
  %state11 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %19, i32 0, i32 3, !dbg !3195
  %20 = bitcast %struct.anon* %state11 to i32*, !dbg !3196
  %bf.load12 = load i32, i32* %20, align 4, !dbg !3196
  %bf.lshr13 = lshr i32 %bf.load12, 5, !dbg !3196
  %bf.clear14 = and i32 %bf.lshr13, 1, !dbg !3196
  %tobool15 = icmp ne i32 %bf.clear14, 0, !dbg !3197
  br i1 %tobool15, label %cond.true, label %cond.false.23, !dbg !3197

cond.true:                                        ; preds = %if.end.10
  %21 = load %struct._object*, %struct._object** %res, align 8, !dbg !3198, !tbaa !1100
  %22 = bitcast %struct._object* %21 to %struct.PyASCIIObject*, !dbg !3200
  %state16 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %22, i32 0, i32 3, !dbg !3201
  %23 = bitcast %struct.anon* %state16 to i32*, !dbg !3202
  %bf.load17 = load i32, i32* %23, align 4, !dbg !3202
  %bf.lshr18 = lshr i32 %bf.load17, 6, !dbg !3202
  %bf.clear19 = and i32 %bf.lshr18, 1, !dbg !3202
  %tobool20 = icmp ne i32 %bf.clear19, 0, !dbg !3203
  br i1 %tobool20, label %cond.true.21, label %cond.false, !dbg !3203

cond.true.21:                                     ; preds = %cond.true
  %24 = load %struct._object*, %struct._object** %res, align 8, !dbg !3204, !tbaa !1100
  %25 = bitcast %struct._object* %24 to %struct.PyASCIIObject*, !dbg !3206
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %25, i64 1, !dbg !3207
  %26 = bitcast %struct.PyASCIIObject* %add.ptr to i8*, !dbg !3208
  br label %cond.end, !dbg !3203

cond.false:                                       ; preds = %cond.true
  %27 = load %struct._object*, %struct._object** %res, align 8, !dbg !3209, !tbaa !1100
  %28 = bitcast %struct._object* %27 to %struct.PyCompactUnicodeObject*, !dbg !3211
  %add.ptr22 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %28, i64 1, !dbg !3212
  %29 = bitcast %struct.PyCompactUnicodeObject* %add.ptr22 to i8*, !dbg !3213
  br label %cond.end, !dbg !3203

cond.end:                                         ; preds = %cond.false, %cond.true.21
  %cond = phi i8* [ %26, %cond.true.21 ], [ %29, %cond.false ], !dbg !3203
  br label %cond.end.25, !dbg !3214

cond.false.23:                                    ; preds = %if.end.10
  %30 = load %struct._object*, %struct._object** %res, align 8, !dbg !3217, !tbaa !1100
  %31 = bitcast %struct._object* %30 to %struct.PyUnicodeObject*, !dbg !3219
  %data24 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %31, i32 0, i32 1, !dbg !3220
  %any = bitcast %union.anon* %data24 to i8**, !dbg !3221
  %32 = load i8*, i8** %any, align 8, !dbg !3221, !tbaa !1100
  br label %cond.end.25, !dbg !3197

cond.end.25:                                      ; preds = %cond.false.23, %cond.end
  %cond26 = phi i8* [ %cond, %cond.end ], [ %32, %cond.false.23 ], !dbg !3197
  store i8* %cond26, i8** %data, align 8, !dbg !3222, !tbaa !1100
  store i64 0, i64* %i, align 8, !dbg !3225, !tbaa !1553
  br label %for.cond, !dbg !3227

for.cond:                                         ; preds = %for.inc, %cond.end.25
  %33 = load i64, i64* %i, align 8, !dbg !3228, !tbaa !1553
  %34 = load i64, i64* %len, align 8, !dbg !3232, !tbaa !1553
  %cmp27 = icmp slt i64 %33, %34, !dbg !3233
  br i1 %cmp27, label %for.body, label %for.end, !dbg !3234

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !3235

do.body:                                          ; preds = %for.body
  %35 = load i32, i32* %kind, align 4, !dbg !3236, !tbaa !1298
  switch i32 %35, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.28
  ], !dbg !3239

sw.bb:                                            ; preds = %do.body
  %36 = load i64, i64* %i, align 8, !dbg !3240, !tbaa !1553
  %37 = load i8*, i8** %data, align 8, !dbg !3244, !tbaa !1100
  %arrayidx = getelementptr i8, i8* %37, i64 %36, !dbg !3245
  store i8 63, i8* %arrayidx, align 1, !dbg !3246, !tbaa !1118
  br label %sw.epilog, !dbg !3247

sw.bb.28:                                         ; preds = %do.body
  %38 = load i64, i64* %i, align 8, !dbg !3248, !tbaa !1553
  %39 = load i8*, i8** %data, align 8, !dbg !3251, !tbaa !1100
  %40 = bitcast i8* %39 to i16*, !dbg !3252
  %arrayidx29 = getelementptr i16, i16* %40, i64 %38, !dbg !3253
  store i16 63, i16* %arrayidx29, align 2, !dbg !3254, !tbaa !3255
  br label %sw.epilog, !dbg !3257

sw.default:                                       ; preds = %do.body
  %41 = load i64, i64* %i, align 8, !dbg !3258, !tbaa !1553
  %42 = load i8*, i8** %data, align 8, !dbg !3261, !tbaa !1100
  %43 = bitcast i8* %42 to i32*, !dbg !3262
  %arrayidx30 = getelementptr i32, i32* %43, i64 %41, !dbg !3263
  store i32 63, i32* %arrayidx30, align 4, !dbg !3264, !tbaa !1298
  br label %sw.epilog, !dbg !3265

sw.epilog:                                        ; preds = %sw.default, %sw.bb.28, %sw.bb
  br label %do.cond, !dbg !3266

do.cond:                                          ; preds = %sw.epilog
  br label %do.end, !dbg !3270

do.end:                                           ; preds = %do.cond
  br label %for.inc, !dbg !3272

for.inc:                                          ; preds = %do.end
  %44 = load i64, i64* %i, align 8, !dbg !3274, !tbaa !1553
  %inc = add i64 %44, 1, !dbg !3274
  store i64 %inc, i64* %i, align 8, !dbg !3274, !tbaa !1553
  br label %for.cond, !dbg !3275

for.end:                                          ; preds = %for.cond
  %45 = load %struct._object*, %struct._object** %res, align 8, !dbg !3276, !tbaa !1100
  %46 = load i64, i64* %end, align 8, !dbg !3277, !tbaa !1553
  %call31 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), %struct._object* %45, i64 %46), !dbg !3278
  store %struct._object* %call31, %struct._object** %retval, !dbg !3279
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3279

cleanup:                                          ; preds = %for.end, %if.then.9, %if.then.6, %if.then.3
  %47 = bitcast i8** %data to i8*, !dbg !3280
  call void @llvm.lifetime.end(i64 8, i8* %47) #2, !dbg !3280
  %48 = bitcast i32* %kind to i8*, !dbg !3280
  call void @llvm.lifetime.end(i64 4, i8* %48) #2, !dbg !3280
  %49 = bitcast %struct._object** %res to i8*, !dbg !3280
  call void @llvm.lifetime.end(i64 8, i8* %49) #2, !dbg !3280
  br label %cleanup.109

if.else:                                          ; preds = %entry
  %50 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3281, !tbaa !1100
  %51 = load %struct._object*, %struct._object** @PyExc_UnicodeDecodeError, align 8, !dbg !3282, !tbaa !1100
  %call34 = call i32 @PyObject_IsInstance(%struct._object* %50, %struct._object* %51), !dbg !3283
  %tobool35 = icmp ne i32 %call34, 0, !dbg !3283
  br i1 %tobool35, label %if.then.36, label %if.else.42, !dbg !3284

if.then.36:                                       ; preds = %if.else
  %52 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3285, !tbaa !1100
  %call37 = call i32 @PyUnicodeDecodeError_GetEnd(%struct._object* %52, i64* %end), !dbg !3288
  %tobool38 = icmp ne i32 %call37, 0, !dbg !3288
  br i1 %tobool38, label %if.then.39, label %if.end.40, !dbg !3289

if.then.39:                                       ; preds = %if.then.36
  store %struct._object* null, %struct._object** %retval, !dbg !3290
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.109, !dbg !3290

if.end.40:                                        ; preds = %if.then.36
  %53 = load i64, i64* %end, align 8, !dbg !3291, !tbaa !1553
  %call41 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 65533, i64 %53), !dbg !3292
  store %struct._object* %call41, %struct._object** %retval, !dbg !3293
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.109, !dbg !3293

if.else.42:                                       ; preds = %if.else
  %54 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3294, !tbaa !1100
  %55 = load %struct._object*, %struct._object** @PyExc_UnicodeTranslateError, align 8, !dbg !3295, !tbaa !1100
  %call43 = call i32 @PyObject_IsInstance(%struct._object* %54, %struct._object* %55), !dbg !3296
  %tobool44 = icmp ne i32 %call43, 0, !dbg !3296
  br i1 %tobool44, label %if.then.45, label %if.else.108, !dbg !3297

if.then.45:                                       ; preds = %if.else.42
  %56 = bitcast %struct._object** %res46 to i8*, !dbg !3298
  call void @llvm.lifetime.start(i64 8, i8* %56) #2, !dbg !3298
  call void @llvm.dbg.declare(metadata %struct._object** %res46, metadata !676, metadata !1104), !dbg !3299
  %57 = bitcast i32* %kind47 to i8*, !dbg !3300
  call void @llvm.lifetime.start(i64 4, i8* %57) #2, !dbg !3300
  call void @llvm.dbg.declare(metadata i32* %kind47, metadata !680, metadata !1104), !dbg !3301
  %58 = bitcast i8** %data48 to i8*, !dbg !3302
  call void @llvm.lifetime.start(i64 8, i8* %58) #2, !dbg !3302
  call void @llvm.dbg.declare(metadata i8** %data48, metadata !681, metadata !1104), !dbg !3303
  %59 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3304, !tbaa !1100
  %call49 = call i32 @PyUnicodeTranslateError_GetStart(%struct._object* %59, i64* %start), !dbg !3306
  %tobool50 = icmp ne i32 %call49, 0, !dbg !3306
  br i1 %tobool50, label %if.then.51, label %if.end.52, !dbg !3307

if.then.51:                                       ; preds = %if.then.45
  store %struct._object* null, %struct._object** %retval, !dbg !3308
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.105, !dbg !3308

if.end.52:                                        ; preds = %if.then.45
  %60 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3309, !tbaa !1100
  %call53 = call i32 @PyUnicodeTranslateError_GetEnd(%struct._object* %60, i64* %end), !dbg !3311
  %tobool54 = icmp ne i32 %call53, 0, !dbg !3311
  br i1 %tobool54, label %if.then.55, label %if.end.56, !dbg !3312

if.then.55:                                       ; preds = %if.end.52
  store %struct._object* null, %struct._object** %retval, !dbg !3313
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.105, !dbg !3313

if.end.56:                                        ; preds = %if.end.52
  %61 = load i64, i64* %end, align 8, !dbg !3314, !tbaa !1553
  %62 = load i64, i64* %start, align 8, !dbg !3315, !tbaa !1553
  %sub57 = sub i64 %61, %62, !dbg !3316
  store i64 %sub57, i64* %len, align 8, !dbg !3317, !tbaa !1553
  %63 = load i64, i64* %len, align 8, !dbg !3318, !tbaa !1553
  %call58 = call %struct._object* @PyUnicode_New(i64 %63, i32 65533), !dbg !3319
  store %struct._object* %call58, %struct._object** %res46, align 8, !dbg !3320, !tbaa !1100
  %64 = load %struct._object*, %struct._object** %res46, align 8, !dbg !3321, !tbaa !1100
  %cmp59 = icmp eq %struct._object* %64, null, !dbg !3323
  br i1 %cmp59, label %if.then.60, label %if.end.61, !dbg !3324

if.then.60:                                       ; preds = %if.end.56
  store %struct._object* null, %struct._object** %retval, !dbg !3325
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.105, !dbg !3325

if.end.61:                                        ; preds = %if.end.56
  %65 = load %struct._object*, %struct._object** %res46, align 8, !dbg !3326, !tbaa !1100
  %66 = bitcast %struct._object* %65 to %struct.PyASCIIObject*, !dbg !3327
  %state62 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %66, i32 0, i32 3, !dbg !3328
  %67 = bitcast %struct.anon* %state62 to i32*, !dbg !3329
  %bf.load63 = load i32, i32* %67, align 4, !dbg !3329
  %bf.lshr64 = lshr i32 %bf.load63, 2, !dbg !3329
  %bf.clear65 = and i32 %bf.lshr64, 7, !dbg !3329
  store i32 %bf.clear65, i32* %kind47, align 4, !dbg !3330, !tbaa !1298
  %68 = load %struct._object*, %struct._object** %res46, align 8, !dbg !3331, !tbaa !1100
  %69 = bitcast %struct._object* %68 to %struct.PyASCIIObject*, !dbg !3332
  %state66 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %69, i32 0, i32 3, !dbg !3333
  %70 = bitcast %struct.anon* %state66 to i32*, !dbg !3334
  %bf.load67 = load i32, i32* %70, align 4, !dbg !3334
  %bf.lshr68 = lshr i32 %bf.load67, 5, !dbg !3334
  %bf.clear69 = and i32 %bf.lshr68, 1, !dbg !3334
  %tobool70 = icmp ne i32 %bf.clear69, 0, !dbg !3335
  br i1 %tobool70, label %cond.true.71, label %cond.false.83, !dbg !3335

cond.true.71:                                     ; preds = %if.end.61
  %71 = load %struct._object*, %struct._object** %res46, align 8, !dbg !3336, !tbaa !1100
  %72 = bitcast %struct._object* %71 to %struct.PyASCIIObject*, !dbg !3338
  %state72 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %72, i32 0, i32 3, !dbg !3339
  %73 = bitcast %struct.anon* %state72 to i32*, !dbg !3340
  %bf.load73 = load i32, i32* %73, align 4, !dbg !3340
  %bf.lshr74 = lshr i32 %bf.load73, 6, !dbg !3340
  %bf.clear75 = and i32 %bf.lshr74, 1, !dbg !3340
  %tobool76 = icmp ne i32 %bf.clear75, 0, !dbg !3341
  br i1 %tobool76, label %cond.true.77, label %cond.false.79, !dbg !3341

cond.true.77:                                     ; preds = %cond.true.71
  %74 = load %struct._object*, %struct._object** %res46, align 8, !dbg !3342, !tbaa !1100
  %75 = bitcast %struct._object* %74 to %struct.PyASCIIObject*, !dbg !3344
  %add.ptr78 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %75, i64 1, !dbg !3345
  %76 = bitcast %struct.PyASCIIObject* %add.ptr78 to i8*, !dbg !3346
  br label %cond.end.81, !dbg !3341

cond.false.79:                                    ; preds = %cond.true.71
  %77 = load %struct._object*, %struct._object** %res46, align 8, !dbg !3347, !tbaa !1100
  %78 = bitcast %struct._object* %77 to %struct.PyCompactUnicodeObject*, !dbg !3349
  %add.ptr80 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %78, i64 1, !dbg !3350
  %79 = bitcast %struct.PyCompactUnicodeObject* %add.ptr80 to i8*, !dbg !3351
  br label %cond.end.81, !dbg !3341

cond.end.81:                                      ; preds = %cond.false.79, %cond.true.77
  %cond82 = phi i8* [ %76, %cond.true.77 ], [ %79, %cond.false.79 ], !dbg !3341
  br label %cond.end.86, !dbg !3352

cond.false.83:                                    ; preds = %if.end.61
  %80 = load %struct._object*, %struct._object** %res46, align 8, !dbg !3355, !tbaa !1100
  %81 = bitcast %struct._object* %80 to %struct.PyUnicodeObject*, !dbg !3357
  %data84 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %81, i32 0, i32 1, !dbg !3358
  %any85 = bitcast %union.anon* %data84 to i8**, !dbg !3359
  %82 = load i8*, i8** %any85, align 8, !dbg !3359, !tbaa !1100
  br label %cond.end.86, !dbg !3335

cond.end.86:                                      ; preds = %cond.false.83, %cond.end.81
  %cond87 = phi i8* [ %cond82, %cond.end.81 ], [ %82, %cond.false.83 ], !dbg !3335
  store i8* %cond87, i8** %data48, align 8, !dbg !3360, !tbaa !1100
  store i64 0, i64* %i, align 8, !dbg !3363, !tbaa !1553
  br label %for.cond.88, !dbg !3365

for.cond.88:                                      ; preds = %for.inc.101, %cond.end.86
  %83 = load i64, i64* %i, align 8, !dbg !3366, !tbaa !1553
  %84 = load i64, i64* %len, align 8, !dbg !3370, !tbaa !1553
  %cmp89 = icmp slt i64 %83, %84, !dbg !3371
  br i1 %cmp89, label %for.body.90, label %for.end.103, !dbg !3372

for.body.90:                                      ; preds = %for.cond.88
  br label %do.body.91, !dbg !3373

do.body.91:                                       ; preds = %for.body.90
  %85 = load i32, i32* %kind47, align 4, !dbg !3374, !tbaa !1298
  switch i32 %85, label %sw.default.96 [
    i32 1, label %sw.bb.92
    i32 2, label %sw.bb.94
  ], !dbg !3377

sw.bb.92:                                         ; preds = %do.body.91
  %86 = load i64, i64* %i, align 8, !dbg !3378, !tbaa !1553
  %87 = load i8*, i8** %data48, align 8, !dbg !3382, !tbaa !1100
  %arrayidx93 = getelementptr i8, i8* %87, i64 %86, !dbg !3383
  store i8 -3, i8* %arrayidx93, align 1, !dbg !3384, !tbaa !1118
  br label %sw.epilog.98, !dbg !3385

sw.bb.94:                                         ; preds = %do.body.91
  %88 = load i64, i64* %i, align 8, !dbg !3386, !tbaa !1553
  %89 = load i8*, i8** %data48, align 8, !dbg !3389, !tbaa !1100
  %90 = bitcast i8* %89 to i16*, !dbg !3390
  %arrayidx95 = getelementptr i16, i16* %90, i64 %88, !dbg !3391
  store i16 -3, i16* %arrayidx95, align 2, !dbg !3392, !tbaa !3255
  br label %sw.epilog.98, !dbg !3393

sw.default.96:                                    ; preds = %do.body.91
  %91 = load i64, i64* %i, align 8, !dbg !3394, !tbaa !1553
  %92 = load i8*, i8** %data48, align 8, !dbg !3397, !tbaa !1100
  %93 = bitcast i8* %92 to i32*, !dbg !3398
  %arrayidx97 = getelementptr i32, i32* %93, i64 %91, !dbg !3399
  store i32 65533, i32* %arrayidx97, align 4, !dbg !3400, !tbaa !1298
  br label %sw.epilog.98, !dbg !3401

sw.epilog.98:                                     ; preds = %sw.default.96, %sw.bb.94, %sw.bb.92
  br label %do.cond.99, !dbg !3402

do.cond.99:                                       ; preds = %sw.epilog.98
  br label %do.end.100, !dbg !3406

do.end.100:                                       ; preds = %do.cond.99
  br label %for.inc.101, !dbg !3408

for.inc.101:                                      ; preds = %do.end.100
  %94 = load i64, i64* %i, align 8, !dbg !3410, !tbaa !1553
  %inc102 = add i64 %94, 1, !dbg !3410
  store i64 %inc102, i64* %i, align 8, !dbg !3410, !tbaa !1553
  br label %for.cond.88, !dbg !3411

for.end.103:                                      ; preds = %for.cond.88
  %95 = load %struct._object*, %struct._object** %res46, align 8, !dbg !3412, !tbaa !1100
  %96 = load i64, i64* %end, align 8, !dbg !3413, !tbaa !1553
  %call104 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), %struct._object* %95, i64 %96), !dbg !3414
  store %struct._object* %call104, %struct._object** %retval, !dbg !3415
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.105, !dbg !3415

cleanup.105:                                      ; preds = %for.end.103, %if.then.60, %if.then.55, %if.then.51
  %97 = bitcast i8** %data48 to i8*, !dbg !3416
  call void @llvm.lifetime.end(i64 8, i8* %97) #2, !dbg !3416
  %98 = bitcast i32* %kind47 to i8*, !dbg !3416
  call void @llvm.lifetime.end(i64 4, i8* %98) #2, !dbg !3416
  %99 = bitcast %struct._object** %res46 to i8*, !dbg !3416
  call void @llvm.lifetime.end(i64 8, i8* %99) #2, !dbg !3416
  br label %cleanup.109

if.else.108:                                      ; preds = %if.else.42
  %100 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3417, !tbaa !1100
  call void @wrong_exception_type(%struct._object* %100), !dbg !3419
  store %struct._object* null, %struct._object** %retval, !dbg !3420
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.109, !dbg !3420

cleanup.109:                                      ; preds = %if.else.108, %cleanup.105, %if.end.40, %if.then.39, %cleanup
  %101 = bitcast i64* %len to i8*, !dbg !3421
  call void @llvm.lifetime.end(i64 8, i8* %101) #2, !dbg !3421
  %102 = bitcast i64* %i to i8*, !dbg !3421
  call void @llvm.lifetime.end(i64 8, i8* %102) #2, !dbg !3421
  %103 = bitcast i64* %end to i8*, !dbg !3421
  call void @llvm.lifetime.end(i64 8, i8* %103) #2, !dbg !3421
  %104 = bitcast i64* %start to i8*, !dbg !3421
  call void @llvm.lifetime.end(i64 8, i8* %104) #2, !dbg !3421
  %105 = load %struct._object*, %struct._object** %retval, !dbg !3421
  ret %struct._object* %105, !dbg !3421
}

declare i32 @PyUnicodeEncodeError_GetStart(%struct._object*, i64*) #4

declare i32 @PyUnicodeTranslateError_GetStart(%struct._object*, i64*) #4

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_XMLCharRefReplaceErrors(%struct._object* %exc) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %exc.addr = alloca %struct._object*, align 8
  %restuple = alloca %struct._object*, align 8
  %object = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %res = alloca %struct._object*, align 8
  %outp = alloca i8*, align 8
  %ressize = alloca i32, align 4
  %ch = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %digits = alloca i32, align 4
  %base = alloca i32, align 4
  %_py_decref_tmp296 = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %exc.addr, metadata !684, metadata !1104), !dbg !3422
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3423, !tbaa !1100
  %1 = load %struct._object*, %struct._object** @PyExc_UnicodeEncodeError, align 8, !dbg !3424, !tbaa !1100
  %call = call i32 @PyObject_IsInstance(%struct._object* %0, %struct._object* %1), !dbg !3425
  %tobool = icmp ne i32 %call, 0, !dbg !3425
  br i1 %tobool, label %if.then, label %if.else.316, !dbg !3426

if.then:                                          ; preds = %entry
  %2 = bitcast %struct._object** %restuple to i8*, !dbg !3427
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !3427
  call void @llvm.dbg.declare(metadata %struct._object** %restuple, metadata !685, metadata !1104), !dbg !3428
  %3 = bitcast %struct._object** %object to i8*, !dbg !3429
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !3429
  call void @llvm.dbg.declare(metadata %struct._object** %object, metadata !688, metadata !1104), !dbg !3430
  %4 = bitcast i64* %i to i8*, !dbg !3431
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !3431
  call void @llvm.dbg.declare(metadata i64* %i, metadata !689, metadata !1104), !dbg !3432
  %5 = bitcast i64* %start to i8*, !dbg !3433
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !3433
  call void @llvm.dbg.declare(metadata i64* %start, metadata !690, metadata !1104), !dbg !3434
  %6 = bitcast i64* %end to i8*, !dbg !3435
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !3435
  call void @llvm.dbg.declare(metadata i64* %end, metadata !691, metadata !1104), !dbg !3436
  %7 = bitcast %struct._object** %res to i8*, !dbg !3437
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !3437
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !692, metadata !1104), !dbg !3438
  %8 = bitcast i8** %outp to i8*, !dbg !3439
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !3439
  call void @llvm.dbg.declare(metadata i8** %outp, metadata !693, metadata !1104), !dbg !3440
  %9 = bitcast i32* %ressize to i8*, !dbg !3441
  call void @llvm.lifetime.start(i64 4, i8* %9) #2, !dbg !3441
  call void @llvm.dbg.declare(metadata i32* %ressize, metadata !694, metadata !1104), !dbg !3442
  %10 = bitcast i32* %ch to i8*, !dbg !3443
  call void @llvm.lifetime.start(i64 4, i8* %10) #2, !dbg !3443
  call void @llvm.dbg.declare(metadata i32* %ch, metadata !695, metadata !1104), !dbg !3444
  %11 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3445, !tbaa !1100
  %call1 = call i32 @PyUnicodeEncodeError_GetStart(%struct._object* %11, i64* %start), !dbg !3447
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3447
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !3448

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !3449
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3449

if.end:                                           ; preds = %if.then
  %12 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3450, !tbaa !1100
  %call4 = call i32 @PyUnicodeEncodeError_GetEnd(%struct._object* %12, i64* %end), !dbg !3452
  %tobool5 = icmp ne i32 %call4, 0, !dbg !3452
  br i1 %tobool5, label %if.then.6, label %if.end.7, !dbg !3453

if.then.6:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !3454
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3454

if.end.7:                                         ; preds = %if.end
  %13 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3455, !tbaa !1100
  %call8 = call %struct._object* @PyUnicodeEncodeError_GetObject(%struct._object* %13), !dbg !3457
  store %struct._object* %call8, %struct._object** %object, align 8, !dbg !3458, !tbaa !1100
  %tobool9 = icmp ne %struct._object* %call8, null, !dbg !3458
  br i1 %tobool9, label %if.end.11, label %if.then.10, !dbg !3459

if.then.10:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval, !dbg !3460
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3460

if.end.11:                                        ; preds = %if.end.7
  %14 = load i64, i64* %start, align 8, !dbg !3461, !tbaa !1553
  store i64 %14, i64* %i, align 8, !dbg !3463, !tbaa !1553
  store i32 0, i32* %ressize, align 4, !dbg !3464, !tbaa !1298
  br label %for.cond, !dbg !3465

for.cond:                                         ; preds = %for.inc, %if.end.11
  %15 = load i64, i64* %i, align 8, !dbg !3466, !tbaa !1553
  %16 = load i64, i64* %end, align 8, !dbg !3470, !tbaa !1553
  %cmp = icmp slt i64 %15, %16, !dbg !3471
  br i1 %cmp, label %for.body, label %for.end, !dbg !3472

for.body:                                         ; preds = %for.cond
  %17 = load %struct._object*, %struct._object** %object, align 8, !dbg !3473, !tbaa !1100
  %18 = bitcast %struct._object* %17 to %struct.PyASCIIObject*, !dbg !3475
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %18, i32 0, i32 3, !dbg !3476
  %19 = bitcast %struct.anon* %state to i32*, !dbg !3477
  %bf.load = load i32, i32* %19, align 4, !dbg !3477
  %bf.lshr = lshr i32 %bf.load, 2, !dbg !3477
  %bf.clear = and i32 %bf.lshr, 7, !dbg !3477
  %cmp12 = icmp eq i32 %bf.clear, 1, !dbg !3478
  br i1 %cmp12, label %cond.true, label %cond.false.29, !dbg !3479

cond.true:                                        ; preds = %for.body
  %20 = load i64, i64* %i, align 8, !dbg !3480, !tbaa !1553
  %21 = load %struct._object*, %struct._object** %object, align 8, !dbg !3482, !tbaa !1100
  %22 = bitcast %struct._object* %21 to %struct.PyASCIIObject*, !dbg !3483
  %state13 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %22, i32 0, i32 3, !dbg !3484
  %23 = bitcast %struct.anon* %state13 to i32*, !dbg !3485
  %bf.load14 = load i32, i32* %23, align 4, !dbg !3485
  %bf.lshr15 = lshr i32 %bf.load14, 5, !dbg !3485
  %bf.clear16 = and i32 %bf.lshr15, 1, !dbg !3485
  %tobool17 = icmp ne i32 %bf.clear16, 0, !dbg !3486
  br i1 %tobool17, label %cond.true.18, label %cond.false.26, !dbg !3486

cond.true.18:                                     ; preds = %cond.true
  %24 = load %struct._object*, %struct._object** %object, align 8, !dbg !3487, !tbaa !1100
  %25 = bitcast %struct._object* %24 to %struct.PyASCIIObject*, !dbg !3489
  %state19 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %25, i32 0, i32 3, !dbg !3490
  %26 = bitcast %struct.anon* %state19 to i32*, !dbg !3491
  %bf.load20 = load i32, i32* %26, align 4, !dbg !3491
  %bf.lshr21 = lshr i32 %bf.load20, 6, !dbg !3491
  %bf.clear22 = and i32 %bf.lshr21, 1, !dbg !3491
  %tobool23 = icmp ne i32 %bf.clear22, 0, !dbg !3492
  br i1 %tobool23, label %cond.true.24, label %cond.false, !dbg !3492

cond.true.24:                                     ; preds = %cond.true.18
  %27 = load %struct._object*, %struct._object** %object, align 8, !dbg !3493, !tbaa !1100
  %28 = bitcast %struct._object* %27 to %struct.PyASCIIObject*, !dbg !3495
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %28, i64 1, !dbg !3496
  %29 = bitcast %struct.PyASCIIObject* %add.ptr to i8*, !dbg !3497
  br label %cond.end, !dbg !3492

cond.false:                                       ; preds = %cond.true.18
  %30 = load %struct._object*, %struct._object** %object, align 8, !dbg !3498, !tbaa !1100
  %31 = bitcast %struct._object* %30 to %struct.PyCompactUnicodeObject*, !dbg !3500
  %add.ptr25 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %31, i64 1, !dbg !3501
  %32 = bitcast %struct.PyCompactUnicodeObject* %add.ptr25 to i8*, !dbg !3502
  br label %cond.end, !dbg !3492

cond.end:                                         ; preds = %cond.false, %cond.true.24
  %cond = phi i8* [ %29, %cond.true.24 ], [ %32, %cond.false ], !dbg !3492
  br label %cond.end.27, !dbg !3503

cond.false.26:                                    ; preds = %cond.true
  %33 = load %struct._object*, %struct._object** %object, align 8, !dbg !3506, !tbaa !1100
  %34 = bitcast %struct._object* %33 to %struct.PyUnicodeObject*, !dbg !3508
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %34, i32 0, i32 1, !dbg !3509
  %any = bitcast %union.anon* %data to i8**, !dbg !3510
  %35 = load i8*, i8** %any, align 8, !dbg !3510, !tbaa !1100
  br label %cond.end.27, !dbg !3486

cond.end.27:                                      ; preds = %cond.false.26, %cond.end
  %cond28 = phi i8* [ %cond, %cond.end ], [ %35, %cond.false.26 ], !dbg !3486
  %arrayidx = getelementptr i8, i8* %cond28, i64 %20, !dbg !3511
  %36 = load i8, i8* %arrayidx, align 1, !dbg !3511, !tbaa !1118
  %conv = zext i8 %36 to i32, !dbg !3511
  br label %cond.end.87, !dbg !3479

cond.false.29:                                    ; preds = %for.body
  %37 = load %struct._object*, %struct._object** %object, align 8, !dbg !3514, !tbaa !1100
  %38 = bitcast %struct._object* %37 to %struct.PyASCIIObject*, !dbg !3516
  %state30 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %38, i32 0, i32 3, !dbg !3517
  %39 = bitcast %struct.anon* %state30 to i32*, !dbg !3518
  %bf.load31 = load i32, i32* %39, align 4, !dbg !3518
  %bf.lshr32 = lshr i32 %bf.load31, 2, !dbg !3518
  %bf.clear33 = and i32 %bf.lshr32, 7, !dbg !3518
  %cmp34 = icmp eq i32 %bf.clear33, 2, !dbg !3519
  br i1 %cmp34, label %cond.true.36, label %cond.false.61, !dbg !3520

cond.true.36:                                     ; preds = %cond.false.29
  %40 = load i64, i64* %i, align 8, !dbg !3521, !tbaa !1553
  %41 = load %struct._object*, %struct._object** %object, align 8, !dbg !3523, !tbaa !1100
  %42 = bitcast %struct._object* %41 to %struct.PyASCIIObject*, !dbg !3524
  %state37 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %42, i32 0, i32 3, !dbg !3525
  %43 = bitcast %struct.anon* %state37 to i32*, !dbg !3526
  %bf.load38 = load i32, i32* %43, align 4, !dbg !3526
  %bf.lshr39 = lshr i32 %bf.load38, 5, !dbg !3526
  %bf.clear40 = and i32 %bf.lshr39, 1, !dbg !3526
  %tobool41 = icmp ne i32 %bf.clear40, 0, !dbg !3527
  br i1 %tobool41, label %cond.true.42, label %cond.false.54, !dbg !3527

cond.true.42:                                     ; preds = %cond.true.36
  %44 = load %struct._object*, %struct._object** %object, align 8, !dbg !3528, !tbaa !1100
  %45 = bitcast %struct._object* %44 to %struct.PyASCIIObject*, !dbg !3530
  %state43 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %45, i32 0, i32 3, !dbg !3531
  %46 = bitcast %struct.anon* %state43 to i32*, !dbg !3532
  %bf.load44 = load i32, i32* %46, align 4, !dbg !3532
  %bf.lshr45 = lshr i32 %bf.load44, 6, !dbg !3532
  %bf.clear46 = and i32 %bf.lshr45, 1, !dbg !3532
  %tobool47 = icmp ne i32 %bf.clear46, 0, !dbg !3533
  br i1 %tobool47, label %cond.true.48, label %cond.false.50, !dbg !3533

cond.true.48:                                     ; preds = %cond.true.42
  %47 = load %struct._object*, %struct._object** %object, align 8, !dbg !3534, !tbaa !1100
  %48 = bitcast %struct._object* %47 to %struct.PyASCIIObject*, !dbg !3536
  %add.ptr49 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %48, i64 1, !dbg !3537
  %49 = bitcast %struct.PyASCIIObject* %add.ptr49 to i8*, !dbg !3538
  br label %cond.end.52, !dbg !3533

cond.false.50:                                    ; preds = %cond.true.42
  %50 = load %struct._object*, %struct._object** %object, align 8, !dbg !3539, !tbaa !1100
  %51 = bitcast %struct._object* %50 to %struct.PyCompactUnicodeObject*, !dbg !3541
  %add.ptr51 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %51, i64 1, !dbg !3542
  %52 = bitcast %struct.PyCompactUnicodeObject* %add.ptr51 to i8*, !dbg !3543
  br label %cond.end.52, !dbg !3533

cond.end.52:                                      ; preds = %cond.false.50, %cond.true.48
  %cond53 = phi i8* [ %49, %cond.true.48 ], [ %52, %cond.false.50 ], !dbg !3533
  br label %cond.end.57, !dbg !3544

cond.false.54:                                    ; preds = %cond.true.36
  %53 = load %struct._object*, %struct._object** %object, align 8, !dbg !3547, !tbaa !1100
  %54 = bitcast %struct._object* %53 to %struct.PyUnicodeObject*, !dbg !3549
  %data55 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %54, i32 0, i32 1, !dbg !3550
  %any56 = bitcast %union.anon* %data55 to i8**, !dbg !3551
  %55 = load i8*, i8** %any56, align 8, !dbg !3551, !tbaa !1100
  br label %cond.end.57, !dbg !3527

cond.end.57:                                      ; preds = %cond.false.54, %cond.end.52
  %cond58 = phi i8* [ %cond53, %cond.end.52 ], [ %55, %cond.false.54 ], !dbg !3527
  %56 = bitcast i8* %cond58 to i16*, !dbg !3552
  %arrayidx59 = getelementptr i16, i16* %56, i64 %40, !dbg !3555
  %57 = load i16, i16* %arrayidx59, align 2, !dbg !3555, !tbaa !3255
  %conv60 = zext i16 %57 to i32, !dbg !3555
  br label %cond.end.85, !dbg !3520

cond.false.61:                                    ; preds = %cond.false.29
  %58 = load i64, i64* %i, align 8, !dbg !3556, !tbaa !1553
  %59 = load %struct._object*, %struct._object** %object, align 8, !dbg !3558, !tbaa !1100
  %60 = bitcast %struct._object* %59 to %struct.PyASCIIObject*, !dbg !3559
  %state62 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %60, i32 0, i32 3, !dbg !3560
  %61 = bitcast %struct.anon* %state62 to i32*, !dbg !3561
  %bf.load63 = load i32, i32* %61, align 4, !dbg !3561
  %bf.lshr64 = lshr i32 %bf.load63, 5, !dbg !3561
  %bf.clear65 = and i32 %bf.lshr64, 1, !dbg !3561
  %tobool66 = icmp ne i32 %bf.clear65, 0, !dbg !3562
  br i1 %tobool66, label %cond.true.67, label %cond.false.79, !dbg !3562

cond.true.67:                                     ; preds = %cond.false.61
  %62 = load %struct._object*, %struct._object** %object, align 8, !dbg !3563, !tbaa !1100
  %63 = bitcast %struct._object* %62 to %struct.PyASCIIObject*, !dbg !3565
  %state68 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %63, i32 0, i32 3, !dbg !3566
  %64 = bitcast %struct.anon* %state68 to i32*, !dbg !3567
  %bf.load69 = load i32, i32* %64, align 4, !dbg !3567
  %bf.lshr70 = lshr i32 %bf.load69, 6, !dbg !3567
  %bf.clear71 = and i32 %bf.lshr70, 1, !dbg !3567
  %tobool72 = icmp ne i32 %bf.clear71, 0, !dbg !3568
  br i1 %tobool72, label %cond.true.73, label %cond.false.75, !dbg !3568

cond.true.73:                                     ; preds = %cond.true.67
  %65 = load %struct._object*, %struct._object** %object, align 8, !dbg !3569, !tbaa !1100
  %66 = bitcast %struct._object* %65 to %struct.PyASCIIObject*, !dbg !3571
  %add.ptr74 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %66, i64 1, !dbg !3572
  %67 = bitcast %struct.PyASCIIObject* %add.ptr74 to i8*, !dbg !3573
  br label %cond.end.77, !dbg !3568

cond.false.75:                                    ; preds = %cond.true.67
  %68 = load %struct._object*, %struct._object** %object, align 8, !dbg !3574, !tbaa !1100
  %69 = bitcast %struct._object* %68 to %struct.PyCompactUnicodeObject*, !dbg !3576
  %add.ptr76 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %69, i64 1, !dbg !3577
  %70 = bitcast %struct.PyCompactUnicodeObject* %add.ptr76 to i8*, !dbg !3578
  br label %cond.end.77, !dbg !3568

cond.end.77:                                      ; preds = %cond.false.75, %cond.true.73
  %cond78 = phi i8* [ %67, %cond.true.73 ], [ %70, %cond.false.75 ], !dbg !3568
  br label %cond.end.82, !dbg !3579

cond.false.79:                                    ; preds = %cond.false.61
  %71 = load %struct._object*, %struct._object** %object, align 8, !dbg !3582, !tbaa !1100
  %72 = bitcast %struct._object* %71 to %struct.PyUnicodeObject*, !dbg !3584
  %data80 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %72, i32 0, i32 1, !dbg !3585
  %any81 = bitcast %union.anon* %data80 to i8**, !dbg !3586
  %73 = load i8*, i8** %any81, align 8, !dbg !3586, !tbaa !1100
  br label %cond.end.82, !dbg !3562

cond.end.82:                                      ; preds = %cond.false.79, %cond.end.77
  %cond83 = phi i8* [ %cond78, %cond.end.77 ], [ %73, %cond.false.79 ], !dbg !3562
  %74 = bitcast i8* %cond83 to i32*, !dbg !3587
  %arrayidx84 = getelementptr i32, i32* %74, i64 %58, !dbg !3590
  %75 = load i32, i32* %arrayidx84, align 4, !dbg !3590, !tbaa !1298
  br label %cond.end.85, !dbg !3520

cond.end.85:                                      ; preds = %cond.end.82, %cond.end.57
  %cond86 = phi i32 [ %conv60, %cond.end.57 ], [ %75, %cond.end.82 ], !dbg !3520
  br label %cond.end.87, !dbg !3591

cond.end.87:                                      ; preds = %cond.end.85, %cond.end.27
  %cond88 = phi i32 [ %conv, %cond.end.27 ], [ %cond86, %cond.end.85 ], !dbg !3479
  store i32 %cond88, i32* %ch, align 4, !dbg !3594, !tbaa !1298
  %76 = load i32, i32* %ch, align 4, !dbg !3597, !tbaa !1298
  %cmp89 = icmp ult i32 %76, 10, !dbg !3599
  br i1 %cmp89, label %if.then.91, label %if.else, !dbg !3600

if.then.91:                                       ; preds = %cond.end.87
  %77 = load i32, i32* %ressize, align 4, !dbg !3601, !tbaa !1298
  %add = add i32 %77, 4, !dbg !3601
  store i32 %add, i32* %ressize, align 4, !dbg !3601, !tbaa !1298
  br label %if.end.123, !dbg !3602

if.else:                                          ; preds = %cond.end.87
  %78 = load i32, i32* %ch, align 4, !dbg !3603, !tbaa !1298
  %cmp92 = icmp ult i32 %78, 100, !dbg !3605
  br i1 %cmp92, label %if.then.94, label %if.else.96, !dbg !3606

if.then.94:                                       ; preds = %if.else
  %79 = load i32, i32* %ressize, align 4, !dbg !3607, !tbaa !1298
  %add95 = add i32 %79, 5, !dbg !3607
  store i32 %add95, i32* %ressize, align 4, !dbg !3607, !tbaa !1298
  br label %if.end.122, !dbg !3608

if.else.96:                                       ; preds = %if.else
  %80 = load i32, i32* %ch, align 4, !dbg !3609, !tbaa !1298
  %cmp97 = icmp ult i32 %80, 1000, !dbg !3611
  br i1 %cmp97, label %if.then.99, label %if.else.101, !dbg !3612

if.then.99:                                       ; preds = %if.else.96
  %81 = load i32, i32* %ressize, align 4, !dbg !3613, !tbaa !1298
  %add100 = add i32 %81, 6, !dbg !3613
  store i32 %add100, i32* %ressize, align 4, !dbg !3613, !tbaa !1298
  br label %if.end.121, !dbg !3614

if.else.101:                                      ; preds = %if.else.96
  %82 = load i32, i32* %ch, align 4, !dbg !3615, !tbaa !1298
  %cmp102 = icmp ult i32 %82, 10000, !dbg !3617
  br i1 %cmp102, label %if.then.104, label %if.else.106, !dbg !3618

if.then.104:                                      ; preds = %if.else.101
  %83 = load i32, i32* %ressize, align 4, !dbg !3619, !tbaa !1298
  %add105 = add i32 %83, 7, !dbg !3619
  store i32 %add105, i32* %ressize, align 4, !dbg !3619, !tbaa !1298
  br label %if.end.120, !dbg !3620

if.else.106:                                      ; preds = %if.else.101
  %84 = load i32, i32* %ch, align 4, !dbg !3621, !tbaa !1298
  %cmp107 = icmp ult i32 %84, 100000, !dbg !3623
  br i1 %cmp107, label %if.then.109, label %if.else.111, !dbg !3624

if.then.109:                                      ; preds = %if.else.106
  %85 = load i32, i32* %ressize, align 4, !dbg !3625, !tbaa !1298
  %add110 = add i32 %85, 8, !dbg !3625
  store i32 %add110, i32* %ressize, align 4, !dbg !3625, !tbaa !1298
  br label %if.end.119, !dbg !3626

if.else.111:                                      ; preds = %if.else.106
  %86 = load i32, i32* %ch, align 4, !dbg !3627, !tbaa !1298
  %cmp112 = icmp ult i32 %86, 1000000, !dbg !3629
  br i1 %cmp112, label %if.then.114, label %if.else.116, !dbg !3630

if.then.114:                                      ; preds = %if.else.111
  %87 = load i32, i32* %ressize, align 4, !dbg !3631, !tbaa !1298
  %add115 = add i32 %87, 9, !dbg !3631
  store i32 %add115, i32* %ressize, align 4, !dbg !3631, !tbaa !1298
  br label %if.end.118, !dbg !3632

if.else.116:                                      ; preds = %if.else.111
  %88 = load i32, i32* %ressize, align 4, !dbg !3633, !tbaa !1298
  %add117 = add i32 %88, 10, !dbg !3633
  store i32 %add117, i32* %ressize, align 4, !dbg !3633, !tbaa !1298
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.116, %if.then.114
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.then.109
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.then.104
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.then.99
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.then.94
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.then.91
  br label %for.inc, !dbg !3634

for.inc:                                          ; preds = %if.end.123
  %89 = load i64, i64* %i, align 8, !dbg !3635, !tbaa !1553
  %inc = add i64 %89, 1, !dbg !3635
  store i64 %inc, i64* %i, align 8, !dbg !3635, !tbaa !1553
  br label %for.cond, !dbg !3636

for.end:                                          ; preds = %for.cond
  %90 = load i32, i32* %ressize, align 4, !dbg !3637, !tbaa !1298
  %conv124 = sext i32 %90 to i64, !dbg !3637
  %call125 = call %struct._object* @PyUnicode_New(i64 %conv124, i32 127), !dbg !3638
  store %struct._object* %call125, %struct._object** %res, align 8, !dbg !3639, !tbaa !1100
  %91 = load %struct._object*, %struct._object** %res, align 8, !dbg !3640, !tbaa !1100
  %cmp126 = icmp eq %struct._object* %91, null, !dbg !3641
  br i1 %cmp126, label %if.then.128, label %if.end.134, !dbg !3642

if.then.128:                                      ; preds = %for.end
  br label %do.body, !dbg !3643

do.body:                                          ; preds = %if.then.128
  %92 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3644
  call void @llvm.lifetime.start(i64 8, i8* %92) #2, !dbg !3644
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !696, metadata !1104), !dbg !3646
  %93 = load %struct._object*, %struct._object** %object, align 8, !dbg !3647, !tbaa !1100
  store %struct._object* %93, %struct._object** %_py_decref_tmp, align 8, !dbg !3646, !tbaa !1100
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3648, !tbaa !1100
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %94, i32 0, i32 0, !dbg !3650
  %95 = load i64, i64* %ob_refcnt, align 8, !dbg !3651, !tbaa !1335
  %dec = add i64 %95, -1, !dbg !3651
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3651, !tbaa !1335
  %cmp129 = icmp ne i64 %dec, 0, !dbg !3652
  br i1 %cmp129, label %if.then.131, label %if.else.132, !dbg !3653

if.then.131:                                      ; preds = %do.body
  br label %if.end.133, !dbg !3654

if.else.132:                                      ; preds = %do.body
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3656, !tbaa !1100
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %96, i32 0, i32 1, !dbg !3658
  %97 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3658, !tbaa !1344
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %97, i32 0, i32 4, !dbg !3659
  %98 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3659, !tbaa !1346
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3660, !tbaa !1100
  call void %98(%struct._object* %99), !dbg !3661
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.132, %if.then.131
  %100 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3662
  call void @llvm.lifetime.end(i64 8, i8* %100) #2, !dbg !3662
  br label %do.cond, !dbg !3664

do.cond:                                          ; preds = %if.end.133
  br label %do.end, !dbg !3665

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !3667
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3667

if.end.134:                                       ; preds = %for.end
  %101 = load %struct._object*, %struct._object** %res, align 8, !dbg !3668, !tbaa !1100
  %102 = bitcast %struct._object* %101 to %struct.PyASCIIObject*, !dbg !3669
  %state135 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %102, i32 0, i32 3, !dbg !3670
  %103 = bitcast %struct.anon* %state135 to i32*, !dbg !3671
  %bf.load136 = load i32, i32* %103, align 4, !dbg !3671
  %bf.lshr137 = lshr i32 %bf.load136, 5, !dbg !3671
  %bf.clear138 = and i32 %bf.lshr137, 1, !dbg !3671
  %tobool139 = icmp ne i32 %bf.clear138, 0, !dbg !3672
  br i1 %tobool139, label %cond.true.140, label %cond.false.152, !dbg !3672

cond.true.140:                                    ; preds = %if.end.134
  %104 = load %struct._object*, %struct._object** %res, align 8, !dbg !3673, !tbaa !1100
  %105 = bitcast %struct._object* %104 to %struct.PyASCIIObject*, !dbg !3675
  %state141 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %105, i32 0, i32 3, !dbg !3676
  %106 = bitcast %struct.anon* %state141 to i32*, !dbg !3677
  %bf.load142 = load i32, i32* %106, align 4, !dbg !3677
  %bf.lshr143 = lshr i32 %bf.load142, 6, !dbg !3677
  %bf.clear144 = and i32 %bf.lshr143, 1, !dbg !3677
  %tobool145 = icmp ne i32 %bf.clear144, 0, !dbg !3678
  br i1 %tobool145, label %cond.true.146, label %cond.false.148, !dbg !3678

cond.true.146:                                    ; preds = %cond.true.140
  %107 = load %struct._object*, %struct._object** %res, align 8, !dbg !3679, !tbaa !1100
  %108 = bitcast %struct._object* %107 to %struct.PyASCIIObject*, !dbg !3681
  %add.ptr147 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %108, i64 1, !dbg !3682
  %109 = bitcast %struct.PyASCIIObject* %add.ptr147 to i8*, !dbg !3683
  br label %cond.end.150, !dbg !3678

cond.false.148:                                   ; preds = %cond.true.140
  %110 = load %struct._object*, %struct._object** %res, align 8, !dbg !3684, !tbaa !1100
  %111 = bitcast %struct._object* %110 to %struct.PyCompactUnicodeObject*, !dbg !3686
  %add.ptr149 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %111, i64 1, !dbg !3687
  %112 = bitcast %struct.PyCompactUnicodeObject* %add.ptr149 to i8*, !dbg !3688
  br label %cond.end.150, !dbg !3678

cond.end.150:                                     ; preds = %cond.false.148, %cond.true.146
  %cond151 = phi i8* [ %109, %cond.true.146 ], [ %112, %cond.false.148 ], !dbg !3678
  br label %cond.end.155, !dbg !3689

cond.false.152:                                   ; preds = %if.end.134
  %113 = load %struct._object*, %struct._object** %res, align 8, !dbg !3692, !tbaa !1100
  %114 = bitcast %struct._object* %113 to %struct.PyUnicodeObject*, !dbg !3694
  %data153 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %114, i32 0, i32 1, !dbg !3695
  %any154 = bitcast %union.anon* %data153 to i8**, !dbg !3696
  %115 = load i8*, i8** %any154, align 8, !dbg !3696, !tbaa !1100
  br label %cond.end.155, !dbg !3672

cond.end.155:                                     ; preds = %cond.false.152, %cond.end.150
  %cond156 = phi i8* [ %cond151, %cond.end.150 ], [ %115, %cond.false.152 ], !dbg !3672
  store i8* %cond156, i8** %outp, align 8, !dbg !3697, !tbaa !1100
  %116 = load i64, i64* %start, align 8, !dbg !3700, !tbaa !1553
  store i64 %116, i64* %i, align 8, !dbg !3701, !tbaa !1553
  br label %for.cond.157, !dbg !3702

for.cond.157:                                     ; preds = %for.inc.291, %cond.end.155
  %117 = load i64, i64* %i, align 8, !dbg !3703, !tbaa !1553
  %118 = load i64, i64* %end, align 8, !dbg !3706, !tbaa !1553
  %cmp158 = icmp slt i64 %117, %118, !dbg !3707
  br i1 %cmp158, label %for.body.160, label %for.end.293, !dbg !3708

for.body.160:                                     ; preds = %for.cond.157
  %119 = bitcast i32* %digits to i8*, !dbg !3709
  call void @llvm.lifetime.start(i64 4, i8* %119) #2, !dbg !3709
  call void @llvm.dbg.declare(metadata i32* %digits, metadata !700, metadata !1104), !dbg !3710
  %120 = bitcast i32* %base to i8*, !dbg !3711
  call void @llvm.lifetime.start(i64 4, i8* %120) #2, !dbg !3711
  call void @llvm.dbg.declare(metadata i32* %base, metadata !704, metadata !1104), !dbg !3712
  %121 = load %struct._object*, %struct._object** %object, align 8, !dbg !3713, !tbaa !1100
  %122 = bitcast %struct._object* %121 to %struct.PyASCIIObject*, !dbg !3714
  %state161 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %122, i32 0, i32 3, !dbg !3715
  %123 = bitcast %struct.anon* %state161 to i32*, !dbg !3716
  %bf.load162 = load i32, i32* %123, align 4, !dbg !3716
  %bf.lshr163 = lshr i32 %bf.load162, 2, !dbg !3716
  %bf.clear164 = and i32 %bf.lshr163, 7, !dbg !3716
  %cmp165 = icmp eq i32 %bf.clear164, 1, !dbg !3717
  br i1 %cmp165, label %cond.true.167, label %cond.false.192, !dbg !3718

cond.true.167:                                    ; preds = %for.body.160
  %124 = load i64, i64* %i, align 8, !dbg !3719, !tbaa !1553
  %125 = load %struct._object*, %struct._object** %object, align 8, !dbg !3721, !tbaa !1100
  %126 = bitcast %struct._object* %125 to %struct.PyASCIIObject*, !dbg !3722
  %state168 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %126, i32 0, i32 3, !dbg !3723
  %127 = bitcast %struct.anon* %state168 to i32*, !dbg !3724
  %bf.load169 = load i32, i32* %127, align 4, !dbg !3724
  %bf.lshr170 = lshr i32 %bf.load169, 5, !dbg !3724
  %bf.clear171 = and i32 %bf.lshr170, 1, !dbg !3724
  %tobool172 = icmp ne i32 %bf.clear171, 0, !dbg !3725
  br i1 %tobool172, label %cond.true.173, label %cond.false.185, !dbg !3725

cond.true.173:                                    ; preds = %cond.true.167
  %128 = load %struct._object*, %struct._object** %object, align 8, !dbg !3726, !tbaa !1100
  %129 = bitcast %struct._object* %128 to %struct.PyASCIIObject*, !dbg !3728
  %state174 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %129, i32 0, i32 3, !dbg !3729
  %130 = bitcast %struct.anon* %state174 to i32*, !dbg !3730
  %bf.load175 = load i32, i32* %130, align 4, !dbg !3730
  %bf.lshr176 = lshr i32 %bf.load175, 6, !dbg !3730
  %bf.clear177 = and i32 %bf.lshr176, 1, !dbg !3730
  %tobool178 = icmp ne i32 %bf.clear177, 0, !dbg !3731
  br i1 %tobool178, label %cond.true.179, label %cond.false.181, !dbg !3731

cond.true.179:                                    ; preds = %cond.true.173
  %131 = load %struct._object*, %struct._object** %object, align 8, !dbg !3732, !tbaa !1100
  %132 = bitcast %struct._object* %131 to %struct.PyASCIIObject*, !dbg !3734
  %add.ptr180 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %132, i64 1, !dbg !3735
  %133 = bitcast %struct.PyASCIIObject* %add.ptr180 to i8*, !dbg !3736
  br label %cond.end.183, !dbg !3731

cond.false.181:                                   ; preds = %cond.true.173
  %134 = load %struct._object*, %struct._object** %object, align 8, !dbg !3737, !tbaa !1100
  %135 = bitcast %struct._object* %134 to %struct.PyCompactUnicodeObject*, !dbg !3739
  %add.ptr182 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %135, i64 1, !dbg !3740
  %136 = bitcast %struct.PyCompactUnicodeObject* %add.ptr182 to i8*, !dbg !3741
  br label %cond.end.183, !dbg !3731

cond.end.183:                                     ; preds = %cond.false.181, %cond.true.179
  %cond184 = phi i8* [ %133, %cond.true.179 ], [ %136, %cond.false.181 ], !dbg !3731
  br label %cond.end.188, !dbg !3742

cond.false.185:                                   ; preds = %cond.true.167
  %137 = load %struct._object*, %struct._object** %object, align 8, !dbg !3745, !tbaa !1100
  %138 = bitcast %struct._object* %137 to %struct.PyUnicodeObject*, !dbg !3747
  %data186 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %138, i32 0, i32 1, !dbg !3748
  %any187 = bitcast %union.anon* %data186 to i8**, !dbg !3749
  %139 = load i8*, i8** %any187, align 8, !dbg !3749, !tbaa !1100
  br label %cond.end.188, !dbg !3725

cond.end.188:                                     ; preds = %cond.false.185, %cond.end.183
  %cond189 = phi i8* [ %cond184, %cond.end.183 ], [ %139, %cond.false.185 ], !dbg !3725
  %arrayidx190 = getelementptr i8, i8* %cond189, i64 %124, !dbg !3750
  %140 = load i8, i8* %arrayidx190, align 1, !dbg !3750, !tbaa !1118
  %conv191 = zext i8 %140 to i32, !dbg !3750
  br label %cond.end.250, !dbg !3718

cond.false.192:                                   ; preds = %for.body.160
  %141 = load %struct._object*, %struct._object** %object, align 8, !dbg !3753, !tbaa !1100
  %142 = bitcast %struct._object* %141 to %struct.PyASCIIObject*, !dbg !3755
  %state193 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %142, i32 0, i32 3, !dbg !3756
  %143 = bitcast %struct.anon* %state193 to i32*, !dbg !3757
  %bf.load194 = load i32, i32* %143, align 4, !dbg !3757
  %bf.lshr195 = lshr i32 %bf.load194, 2, !dbg !3757
  %bf.clear196 = and i32 %bf.lshr195, 7, !dbg !3757
  %cmp197 = icmp eq i32 %bf.clear196, 2, !dbg !3758
  br i1 %cmp197, label %cond.true.199, label %cond.false.224, !dbg !3759

cond.true.199:                                    ; preds = %cond.false.192
  %144 = load i64, i64* %i, align 8, !dbg !3760, !tbaa !1553
  %145 = load %struct._object*, %struct._object** %object, align 8, !dbg !3762, !tbaa !1100
  %146 = bitcast %struct._object* %145 to %struct.PyASCIIObject*, !dbg !3763
  %state200 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %146, i32 0, i32 3, !dbg !3764
  %147 = bitcast %struct.anon* %state200 to i32*, !dbg !3765
  %bf.load201 = load i32, i32* %147, align 4, !dbg !3765
  %bf.lshr202 = lshr i32 %bf.load201, 5, !dbg !3765
  %bf.clear203 = and i32 %bf.lshr202, 1, !dbg !3765
  %tobool204 = icmp ne i32 %bf.clear203, 0, !dbg !3766
  br i1 %tobool204, label %cond.true.205, label %cond.false.217, !dbg !3766

cond.true.205:                                    ; preds = %cond.true.199
  %148 = load %struct._object*, %struct._object** %object, align 8, !dbg !3767, !tbaa !1100
  %149 = bitcast %struct._object* %148 to %struct.PyASCIIObject*, !dbg !3769
  %state206 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %149, i32 0, i32 3, !dbg !3770
  %150 = bitcast %struct.anon* %state206 to i32*, !dbg !3771
  %bf.load207 = load i32, i32* %150, align 4, !dbg !3771
  %bf.lshr208 = lshr i32 %bf.load207, 6, !dbg !3771
  %bf.clear209 = and i32 %bf.lshr208, 1, !dbg !3771
  %tobool210 = icmp ne i32 %bf.clear209, 0, !dbg !3772
  br i1 %tobool210, label %cond.true.211, label %cond.false.213, !dbg !3772

cond.true.211:                                    ; preds = %cond.true.205
  %151 = load %struct._object*, %struct._object** %object, align 8, !dbg !3773, !tbaa !1100
  %152 = bitcast %struct._object* %151 to %struct.PyASCIIObject*, !dbg !3775
  %add.ptr212 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %152, i64 1, !dbg !3776
  %153 = bitcast %struct.PyASCIIObject* %add.ptr212 to i8*, !dbg !3777
  br label %cond.end.215, !dbg !3772

cond.false.213:                                   ; preds = %cond.true.205
  %154 = load %struct._object*, %struct._object** %object, align 8, !dbg !3778, !tbaa !1100
  %155 = bitcast %struct._object* %154 to %struct.PyCompactUnicodeObject*, !dbg !3780
  %add.ptr214 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %155, i64 1, !dbg !3781
  %156 = bitcast %struct.PyCompactUnicodeObject* %add.ptr214 to i8*, !dbg !3782
  br label %cond.end.215, !dbg !3772

cond.end.215:                                     ; preds = %cond.false.213, %cond.true.211
  %cond216 = phi i8* [ %153, %cond.true.211 ], [ %156, %cond.false.213 ], !dbg !3772
  br label %cond.end.220, !dbg !3783

cond.false.217:                                   ; preds = %cond.true.199
  %157 = load %struct._object*, %struct._object** %object, align 8, !dbg !3786, !tbaa !1100
  %158 = bitcast %struct._object* %157 to %struct.PyUnicodeObject*, !dbg !3788
  %data218 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %158, i32 0, i32 1, !dbg !3789
  %any219 = bitcast %union.anon* %data218 to i8**, !dbg !3790
  %159 = load i8*, i8** %any219, align 8, !dbg !3790, !tbaa !1100
  br label %cond.end.220, !dbg !3766

cond.end.220:                                     ; preds = %cond.false.217, %cond.end.215
  %cond221 = phi i8* [ %cond216, %cond.end.215 ], [ %159, %cond.false.217 ], !dbg !3766
  %160 = bitcast i8* %cond221 to i16*, !dbg !3791
  %arrayidx222 = getelementptr i16, i16* %160, i64 %144, !dbg !3794
  %161 = load i16, i16* %arrayidx222, align 2, !dbg !3794, !tbaa !3255
  %conv223 = zext i16 %161 to i32, !dbg !3794
  br label %cond.end.248, !dbg !3759

cond.false.224:                                   ; preds = %cond.false.192
  %162 = load i64, i64* %i, align 8, !dbg !3795, !tbaa !1553
  %163 = load %struct._object*, %struct._object** %object, align 8, !dbg !3797, !tbaa !1100
  %164 = bitcast %struct._object* %163 to %struct.PyASCIIObject*, !dbg !3798
  %state225 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %164, i32 0, i32 3, !dbg !3799
  %165 = bitcast %struct.anon* %state225 to i32*, !dbg !3800
  %bf.load226 = load i32, i32* %165, align 4, !dbg !3800
  %bf.lshr227 = lshr i32 %bf.load226, 5, !dbg !3800
  %bf.clear228 = and i32 %bf.lshr227, 1, !dbg !3800
  %tobool229 = icmp ne i32 %bf.clear228, 0, !dbg !3801
  br i1 %tobool229, label %cond.true.230, label %cond.false.242, !dbg !3801

cond.true.230:                                    ; preds = %cond.false.224
  %166 = load %struct._object*, %struct._object** %object, align 8, !dbg !3802, !tbaa !1100
  %167 = bitcast %struct._object* %166 to %struct.PyASCIIObject*, !dbg !3804
  %state231 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %167, i32 0, i32 3, !dbg !3805
  %168 = bitcast %struct.anon* %state231 to i32*, !dbg !3806
  %bf.load232 = load i32, i32* %168, align 4, !dbg !3806
  %bf.lshr233 = lshr i32 %bf.load232, 6, !dbg !3806
  %bf.clear234 = and i32 %bf.lshr233, 1, !dbg !3806
  %tobool235 = icmp ne i32 %bf.clear234, 0, !dbg !3807
  br i1 %tobool235, label %cond.true.236, label %cond.false.238, !dbg !3807

cond.true.236:                                    ; preds = %cond.true.230
  %169 = load %struct._object*, %struct._object** %object, align 8, !dbg !3808, !tbaa !1100
  %170 = bitcast %struct._object* %169 to %struct.PyASCIIObject*, !dbg !3810
  %add.ptr237 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %170, i64 1, !dbg !3811
  %171 = bitcast %struct.PyASCIIObject* %add.ptr237 to i8*, !dbg !3812
  br label %cond.end.240, !dbg !3807

cond.false.238:                                   ; preds = %cond.true.230
  %172 = load %struct._object*, %struct._object** %object, align 8, !dbg !3813, !tbaa !1100
  %173 = bitcast %struct._object* %172 to %struct.PyCompactUnicodeObject*, !dbg !3815
  %add.ptr239 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %173, i64 1, !dbg !3816
  %174 = bitcast %struct.PyCompactUnicodeObject* %add.ptr239 to i8*, !dbg !3817
  br label %cond.end.240, !dbg !3807

cond.end.240:                                     ; preds = %cond.false.238, %cond.true.236
  %cond241 = phi i8* [ %171, %cond.true.236 ], [ %174, %cond.false.238 ], !dbg !3807
  br label %cond.end.245, !dbg !3818

cond.false.242:                                   ; preds = %cond.false.224
  %175 = load %struct._object*, %struct._object** %object, align 8, !dbg !3821, !tbaa !1100
  %176 = bitcast %struct._object* %175 to %struct.PyUnicodeObject*, !dbg !3823
  %data243 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %176, i32 0, i32 1, !dbg !3824
  %any244 = bitcast %union.anon* %data243 to i8**, !dbg !3825
  %177 = load i8*, i8** %any244, align 8, !dbg !3825, !tbaa !1100
  br label %cond.end.245, !dbg !3801

cond.end.245:                                     ; preds = %cond.false.242, %cond.end.240
  %cond246 = phi i8* [ %cond241, %cond.end.240 ], [ %177, %cond.false.242 ], !dbg !3801
  %178 = bitcast i8* %cond246 to i32*, !dbg !3826
  %arrayidx247 = getelementptr i32, i32* %178, i64 %162, !dbg !3829
  %179 = load i32, i32* %arrayidx247, align 4, !dbg !3829, !tbaa !1298
  br label %cond.end.248, !dbg !3759

cond.end.248:                                     ; preds = %cond.end.245, %cond.end.220
  %cond249 = phi i32 [ %conv223, %cond.end.220 ], [ %179, %cond.end.245 ], !dbg !3759
  br label %cond.end.250, !dbg !3830

cond.end.250:                                     ; preds = %cond.end.248, %cond.end.188
  %cond251 = phi i32 [ %conv191, %cond.end.188 ], [ %cond249, %cond.end.248 ], !dbg !3718
  store i32 %cond251, i32* %ch, align 4, !dbg !3833, !tbaa !1298
  %180 = load i8*, i8** %outp, align 8, !dbg !3836, !tbaa !1100
  %incdec.ptr = getelementptr i8, i8* %180, i32 1, !dbg !3836
  store i8* %incdec.ptr, i8** %outp, align 8, !dbg !3836, !tbaa !1100
  store i8 38, i8* %180, align 1, !dbg !3837, !tbaa !1118
  %181 = load i8*, i8** %outp, align 8, !dbg !3838, !tbaa !1100
  %incdec.ptr252 = getelementptr i8, i8* %181, i32 1, !dbg !3838
  store i8* %incdec.ptr252, i8** %outp, align 8, !dbg !3838, !tbaa !1100
  store i8 35, i8* %181, align 1, !dbg !3839, !tbaa !1118
  %182 = load i32, i32* %ch, align 4, !dbg !3840, !tbaa !1298
  %cmp253 = icmp ult i32 %182, 10, !dbg !3842
  br i1 %cmp253, label %if.then.255, label %if.else.256, !dbg !3843

if.then.255:                                      ; preds = %cond.end.250
  store i32 1, i32* %digits, align 4, !dbg !3844, !tbaa !1298
  store i32 1, i32* %base, align 4, !dbg !3846, !tbaa !1298
  br label %if.end.282, !dbg !3847

if.else.256:                                      ; preds = %cond.end.250
  %183 = load i32, i32* %ch, align 4, !dbg !3848, !tbaa !1298
  %cmp257 = icmp ult i32 %183, 100, !dbg !3850
  br i1 %cmp257, label %if.then.259, label %if.else.260, !dbg !3851

if.then.259:                                      ; preds = %if.else.256
  store i32 2, i32* %digits, align 4, !dbg !3852, !tbaa !1298
  store i32 10, i32* %base, align 4, !dbg !3854, !tbaa !1298
  br label %if.end.281, !dbg !3855

if.else.260:                                      ; preds = %if.else.256
  %184 = load i32, i32* %ch, align 4, !dbg !3856, !tbaa !1298
  %cmp261 = icmp ult i32 %184, 1000, !dbg !3858
  br i1 %cmp261, label %if.then.263, label %if.else.264, !dbg !3859

if.then.263:                                      ; preds = %if.else.260
  store i32 3, i32* %digits, align 4, !dbg !3860, !tbaa !1298
  store i32 100, i32* %base, align 4, !dbg !3862, !tbaa !1298
  br label %if.end.280, !dbg !3863

if.else.264:                                      ; preds = %if.else.260
  %185 = load i32, i32* %ch, align 4, !dbg !3864, !tbaa !1298
  %cmp265 = icmp ult i32 %185, 10000, !dbg !3866
  br i1 %cmp265, label %if.then.267, label %if.else.268, !dbg !3867

if.then.267:                                      ; preds = %if.else.264
  store i32 4, i32* %digits, align 4, !dbg !3868, !tbaa !1298
  store i32 1000, i32* %base, align 4, !dbg !3870, !tbaa !1298
  br label %if.end.279, !dbg !3871

if.else.268:                                      ; preds = %if.else.264
  %186 = load i32, i32* %ch, align 4, !dbg !3872, !tbaa !1298
  %cmp269 = icmp ult i32 %186, 100000, !dbg !3874
  br i1 %cmp269, label %if.then.271, label %if.else.272, !dbg !3875

if.then.271:                                      ; preds = %if.else.268
  store i32 5, i32* %digits, align 4, !dbg !3876, !tbaa !1298
  store i32 10000, i32* %base, align 4, !dbg !3878, !tbaa !1298
  br label %if.end.278, !dbg !3879

if.else.272:                                      ; preds = %if.else.268
  %187 = load i32, i32* %ch, align 4, !dbg !3880, !tbaa !1298
  %cmp273 = icmp ult i32 %187, 1000000, !dbg !3882
  br i1 %cmp273, label %if.then.275, label %if.else.276, !dbg !3883

if.then.275:                                      ; preds = %if.else.272
  store i32 6, i32* %digits, align 4, !dbg !3884, !tbaa !1298
  store i32 100000, i32* %base, align 4, !dbg !3886, !tbaa !1298
  br label %if.end.277, !dbg !3887

if.else.276:                                      ; preds = %if.else.272
  store i32 7, i32* %digits, align 4, !dbg !3888, !tbaa !1298
  store i32 1000000, i32* %base, align 4, !dbg !3890, !tbaa !1298
  br label %if.end.277

if.end.277:                                       ; preds = %if.else.276, %if.then.275
  br label %if.end.278

if.end.278:                                       ; preds = %if.end.277, %if.then.271
  br label %if.end.279

if.end.279:                                       ; preds = %if.end.278, %if.then.267
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.279, %if.then.263
  br label %if.end.281

if.end.281:                                       ; preds = %if.end.280, %if.then.259
  br label %if.end.282

if.end.282:                                       ; preds = %if.end.281, %if.then.255
  br label %while.cond, !dbg !3891

while.cond:                                       ; preds = %while.body, %if.end.282
  %188 = load i32, i32* %digits, align 4, !dbg !3892, !tbaa !1298
  %dec283 = add i32 %188, -1, !dbg !3892
  store i32 %dec283, i32* %digits, align 4, !dbg !3892, !tbaa !1298
  %cmp284 = icmp sgt i32 %188, 0, !dbg !3894
  br i1 %cmp284, label %while.body, label %while.end, !dbg !3891

while.body:                                       ; preds = %while.cond
  %189 = load i32, i32* %ch, align 4, !dbg !3895, !tbaa !1298
  %190 = load i32, i32* %base, align 4, !dbg !3897, !tbaa !1298
  %div = udiv i32 %189, %190, !dbg !3898
  %add286 = add i32 48, %div, !dbg !3899
  %conv287 = trunc i32 %add286 to i8, !dbg !3900
  %191 = load i8*, i8** %outp, align 8, !dbg !3901, !tbaa !1100
  %incdec.ptr288 = getelementptr i8, i8* %191, i32 1, !dbg !3901
  store i8* %incdec.ptr288, i8** %outp, align 8, !dbg !3901, !tbaa !1100
  store i8 %conv287, i8* %191, align 1, !dbg !3902, !tbaa !1118
  %192 = load i32, i32* %base, align 4, !dbg !3903, !tbaa !1298
  %193 = load i32, i32* %ch, align 4, !dbg !3904, !tbaa !1298
  %rem = urem i32 %193, %192, !dbg !3904
  store i32 %rem, i32* %ch, align 4, !dbg !3904, !tbaa !1298
  %194 = load i32, i32* %base, align 4, !dbg !3905, !tbaa !1298
  %div289 = sdiv i32 %194, 10, !dbg !3905
  store i32 %div289, i32* %base, align 4, !dbg !3905, !tbaa !1298
  br label %while.cond, !dbg !3891

while.end:                                        ; preds = %while.cond
  %195 = load i8*, i8** %outp, align 8, !dbg !3906, !tbaa !1100
  %incdec.ptr290 = getelementptr i8, i8* %195, i32 1, !dbg !3906
  store i8* %incdec.ptr290, i8** %outp, align 8, !dbg !3906, !tbaa !1100
  store i8 59, i8* %195, align 1, !dbg !3907, !tbaa !1118
  %196 = bitcast i32* %base to i8*, !dbg !3908
  call void @llvm.lifetime.end(i64 4, i8* %196) #2, !dbg !3908
  %197 = bitcast i32* %digits to i8*, !dbg !3908
  call void @llvm.lifetime.end(i64 4, i8* %197) #2, !dbg !3908
  br label %for.inc.291, !dbg !3909

for.inc.291:                                      ; preds = %while.end
  %198 = load i64, i64* %i, align 8, !dbg !3910, !tbaa !1553
  %inc292 = add i64 %198, 1, !dbg !3910
  store i64 %inc292, i64* %i, align 8, !dbg !3910, !tbaa !1553
  br label %for.cond.157, !dbg !3911

for.end.293:                                      ; preds = %for.cond.157
  %199 = load %struct._object*, %struct._object** %res, align 8, !dbg !3912, !tbaa !1100
  %200 = load i64, i64* %end, align 8, !dbg !3913, !tbaa !1553
  %call294 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), %struct._object* %199, i64 %200), !dbg !3914
  store %struct._object* %call294, %struct._object** %restuple, align 8, !dbg !3915, !tbaa !1100
  br label %do.body.295, !dbg !3916

do.body.295:                                      ; preds = %for.end.293
  %201 = bitcast %struct._object** %_py_decref_tmp296 to i8*, !dbg !3917
  call void @llvm.lifetime.start(i64 8, i8* %201) #2, !dbg !3917
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp296, metadata !705, metadata !1104), !dbg !3919
  %202 = load %struct._object*, %struct._object** %object, align 8, !dbg !3920, !tbaa !1100
  store %struct._object* %202, %struct._object** %_py_decref_tmp296, align 8, !dbg !3919, !tbaa !1100
  %203 = load %struct._object*, %struct._object** %_py_decref_tmp296, align 8, !dbg !3921, !tbaa !1100
  %ob_refcnt297 = getelementptr inbounds %struct._object, %struct._object* %203, i32 0, i32 0, !dbg !3923
  %204 = load i64, i64* %ob_refcnt297, align 8, !dbg !3924, !tbaa !1335
  %dec298 = add i64 %204, -1, !dbg !3924
  store i64 %dec298, i64* %ob_refcnt297, align 8, !dbg !3924, !tbaa !1335
  %cmp299 = icmp ne i64 %dec298, 0, !dbg !3925
  br i1 %cmp299, label %if.then.301, label %if.else.302, !dbg !3926

if.then.301:                                      ; preds = %do.body.295
  br label %if.end.305, !dbg !3927

if.else.302:                                      ; preds = %do.body.295
  %205 = load %struct._object*, %struct._object** %_py_decref_tmp296, align 8, !dbg !3929, !tbaa !1100
  %ob_type303 = getelementptr inbounds %struct._object, %struct._object* %205, i32 0, i32 1, !dbg !3931
  %206 = load %struct._typeobject*, %struct._typeobject** %ob_type303, align 8, !dbg !3931, !tbaa !1344
  %tp_dealloc304 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %206, i32 0, i32 4, !dbg !3932
  %207 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc304, align 8, !dbg !3932, !tbaa !1346
  %208 = load %struct._object*, %struct._object** %_py_decref_tmp296, align 8, !dbg !3933, !tbaa !1100
  call void %207(%struct._object* %208), !dbg !3934
  br label %if.end.305

if.end.305:                                       ; preds = %if.else.302, %if.then.301
  %209 = bitcast %struct._object** %_py_decref_tmp296 to i8*, !dbg !3935
  call void @llvm.lifetime.end(i64 8, i8* %209) #2, !dbg !3935
  br label %do.cond.306, !dbg !3936

do.cond.306:                                      ; preds = %if.end.305
  br label %do.end.307, !dbg !3937

do.end.307:                                       ; preds = %do.cond.306
  %210 = load %struct._object*, %struct._object** %restuple, align 8, !dbg !3939, !tbaa !1100
  store %struct._object* %210, %struct._object** %retval, !dbg !3940
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3940

cleanup:                                          ; preds = %do.end.307, %do.end, %if.then.10, %if.then.6, %if.then.3
  %211 = bitcast i32* %ch to i8*, !dbg !3941
  call void @llvm.lifetime.end(i64 4, i8* %211) #2, !dbg !3941
  %212 = bitcast i32* %ressize to i8*, !dbg !3941
  call void @llvm.lifetime.end(i64 4, i8* %212) #2, !dbg !3941
  %213 = bitcast i8** %outp to i8*, !dbg !3941
  call void @llvm.lifetime.end(i64 8, i8* %213) #2, !dbg !3941
  %214 = bitcast %struct._object** %res to i8*, !dbg !3941
  call void @llvm.lifetime.end(i64 8, i8* %214) #2, !dbg !3941
  %215 = bitcast i64* %end to i8*, !dbg !3941
  call void @llvm.lifetime.end(i64 8, i8* %215) #2, !dbg !3941
  %216 = bitcast i64* %start to i8*, !dbg !3941
  call void @llvm.lifetime.end(i64 8, i8* %216) #2, !dbg !3941
  %217 = bitcast i64* %i to i8*, !dbg !3941
  call void @llvm.lifetime.end(i64 8, i8* %217) #2, !dbg !3941
  %218 = bitcast %struct._object** %object to i8*, !dbg !3941
  call void @llvm.lifetime.end(i64 8, i8* %218) #2, !dbg !3941
  %219 = bitcast %struct._object** %restuple to i8*, !dbg !3941
  call void @llvm.lifetime.end(i64 8, i8* %219) #2, !dbg !3941
  br label %return

if.else.316:                                      ; preds = %entry
  %220 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3942, !tbaa !1100
  call void @wrong_exception_type(%struct._object* %220), !dbg !3944
  store %struct._object* null, %struct._object** %retval, !dbg !3945
  br label %return, !dbg !3945

return:                                           ; preds = %if.else.316, %cleanup
  %221 = load %struct._object*, %struct._object** %retval, !dbg !3946
  ret %struct._object* %221, !dbg !3946
}

declare %struct._object* @PyUnicodeEncodeError_GetObject(%struct._object*) #4

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_BackslashReplaceErrors(%struct._object* %exc) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %exc.addr = alloca %struct._object*, align 8
  %restuple = alloca %struct._object*, align 8
  %object = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %res = alloca %struct._object*, align 8
  %outp = alloca i8*, align 8
  %ressize = alloca i32, align 4
  %c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %exc.addr, metadata !709, metadata !1104), !dbg !3947
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3948, !tbaa !1100
  %1 = load %struct._object*, %struct._object** @PyExc_UnicodeEncodeError, align 8, !dbg !3949, !tbaa !1100
  %call = call i32 @PyObject_IsInstance(%struct._object* %0, %struct._object* %1), !dbg !3950
  %tobool = icmp ne i32 %call, 0, !dbg !3950
  br i1 %tobool, label %if.then, label %if.else.299, !dbg !3951

if.then:                                          ; preds = %entry
  %2 = bitcast %struct._object** %restuple to i8*, !dbg !3952
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !3952
  call void @llvm.dbg.declare(metadata %struct._object** %restuple, metadata !710, metadata !1104), !dbg !3953
  %3 = bitcast %struct._object** %object to i8*, !dbg !3954
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !3954
  call void @llvm.dbg.declare(metadata %struct._object** %object, metadata !713, metadata !1104), !dbg !3955
  %4 = bitcast i64* %i to i8*, !dbg !3956
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !3956
  call void @llvm.dbg.declare(metadata i64* %i, metadata !714, metadata !1104), !dbg !3957
  %5 = bitcast i64* %start to i8*, !dbg !3958
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !3958
  call void @llvm.dbg.declare(metadata i64* %start, metadata !715, metadata !1104), !dbg !3959
  %6 = bitcast i64* %end to i8*, !dbg !3960
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !3960
  call void @llvm.dbg.declare(metadata i64* %end, metadata !716, metadata !1104), !dbg !3961
  %7 = bitcast %struct._object** %res to i8*, !dbg !3962
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !3962
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !717, metadata !1104), !dbg !3963
  %8 = bitcast i8** %outp to i8*, !dbg !3964
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !3964
  call void @llvm.dbg.declare(metadata i8** %outp, metadata !718, metadata !1104), !dbg !3965
  %9 = bitcast i32* %ressize to i8*, !dbg !3966
  call void @llvm.lifetime.start(i64 4, i8* %9) #2, !dbg !3966
  call void @llvm.dbg.declare(metadata i32* %ressize, metadata !719, metadata !1104), !dbg !3967
  %10 = bitcast i32* %c to i8*, !dbg !3968
  call void @llvm.lifetime.start(i64 4, i8* %10) #2, !dbg !3968
  call void @llvm.dbg.declare(metadata i32* %c, metadata !720, metadata !1104), !dbg !3969
  %11 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3970, !tbaa !1100
  %call1 = call i32 @PyUnicodeEncodeError_GetStart(%struct._object* %11, i64* %start), !dbg !3972
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3972
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !3973

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !3974
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3974

if.end:                                           ; preds = %if.then
  %12 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3975, !tbaa !1100
  %call4 = call i32 @PyUnicodeEncodeError_GetEnd(%struct._object* %12, i64* %end), !dbg !3977
  %tobool5 = icmp ne i32 %call4, 0, !dbg !3977
  br i1 %tobool5, label %if.then.6, label %if.end.7, !dbg !3978

if.then.6:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !3979
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3979

if.end.7:                                         ; preds = %if.end
  %13 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3980, !tbaa !1100
  %call8 = call %struct._object* @PyUnicodeEncodeError_GetObject(%struct._object* %13), !dbg !3982
  store %struct._object* %call8, %struct._object** %object, align 8, !dbg !3983, !tbaa !1100
  %tobool9 = icmp ne %struct._object* %call8, null, !dbg !3983
  br i1 %tobool9, label %if.end.11, label %if.then.10, !dbg !3984

if.then.10:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval, !dbg !3985
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3985

if.end.11:                                        ; preds = %if.end.7
  %14 = load i64, i64* %start, align 8, !dbg !3986, !tbaa !1553
  store i64 %14, i64* %i, align 8, !dbg !3988, !tbaa !1553
  store i32 0, i32* %ressize, align 4, !dbg !3989, !tbaa !1298
  br label %for.cond, !dbg !3990

for.cond:                                         ; preds = %for.inc, %if.end.11
  %15 = load i64, i64* %i, align 8, !dbg !3991, !tbaa !1553
  %16 = load i64, i64* %end, align 8, !dbg !3995, !tbaa !1553
  %cmp = icmp slt i64 %15, %16, !dbg !3996
  br i1 %cmp, label %for.body, label %for.end, !dbg !3997

for.body:                                         ; preds = %for.cond
  %17 = load %struct._object*, %struct._object** %object, align 8, !dbg !3998, !tbaa !1100
  %18 = bitcast %struct._object* %17 to %struct.PyASCIIObject*, !dbg !4000
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %18, i32 0, i32 3, !dbg !4001
  %19 = bitcast %struct.anon* %state to i32*, !dbg !4002
  %bf.load = load i32, i32* %19, align 4, !dbg !4002
  %bf.lshr = lshr i32 %bf.load, 2, !dbg !4002
  %bf.clear = and i32 %bf.lshr, 7, !dbg !4002
  %cmp12 = icmp eq i32 %bf.clear, 1, !dbg !4003
  br i1 %cmp12, label %cond.true, label %cond.false.29, !dbg !4004

cond.true:                                        ; preds = %for.body
  %20 = load i64, i64* %i, align 8, !dbg !4005, !tbaa !1553
  %21 = load %struct._object*, %struct._object** %object, align 8, !dbg !4007, !tbaa !1100
  %22 = bitcast %struct._object* %21 to %struct.PyASCIIObject*, !dbg !4008
  %state13 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %22, i32 0, i32 3, !dbg !4009
  %23 = bitcast %struct.anon* %state13 to i32*, !dbg !4010
  %bf.load14 = load i32, i32* %23, align 4, !dbg !4010
  %bf.lshr15 = lshr i32 %bf.load14, 5, !dbg !4010
  %bf.clear16 = and i32 %bf.lshr15, 1, !dbg !4010
  %tobool17 = icmp ne i32 %bf.clear16, 0, !dbg !4011
  br i1 %tobool17, label %cond.true.18, label %cond.false.26, !dbg !4011

cond.true.18:                                     ; preds = %cond.true
  %24 = load %struct._object*, %struct._object** %object, align 8, !dbg !4012, !tbaa !1100
  %25 = bitcast %struct._object* %24 to %struct.PyASCIIObject*, !dbg !4014
  %state19 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %25, i32 0, i32 3, !dbg !4015
  %26 = bitcast %struct.anon* %state19 to i32*, !dbg !4016
  %bf.load20 = load i32, i32* %26, align 4, !dbg !4016
  %bf.lshr21 = lshr i32 %bf.load20, 6, !dbg !4016
  %bf.clear22 = and i32 %bf.lshr21, 1, !dbg !4016
  %tobool23 = icmp ne i32 %bf.clear22, 0, !dbg !4017
  br i1 %tobool23, label %cond.true.24, label %cond.false, !dbg !4017

cond.true.24:                                     ; preds = %cond.true.18
  %27 = load %struct._object*, %struct._object** %object, align 8, !dbg !4018, !tbaa !1100
  %28 = bitcast %struct._object* %27 to %struct.PyASCIIObject*, !dbg !4020
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %28, i64 1, !dbg !4021
  %29 = bitcast %struct.PyASCIIObject* %add.ptr to i8*, !dbg !4022
  br label %cond.end, !dbg !4017

cond.false:                                       ; preds = %cond.true.18
  %30 = load %struct._object*, %struct._object** %object, align 8, !dbg !4023, !tbaa !1100
  %31 = bitcast %struct._object* %30 to %struct.PyCompactUnicodeObject*, !dbg !4025
  %add.ptr25 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %31, i64 1, !dbg !4026
  %32 = bitcast %struct.PyCompactUnicodeObject* %add.ptr25 to i8*, !dbg !4027
  br label %cond.end, !dbg !4017

cond.end:                                         ; preds = %cond.false, %cond.true.24
  %cond = phi i8* [ %29, %cond.true.24 ], [ %32, %cond.false ], !dbg !4017
  br label %cond.end.27, !dbg !4028

cond.false.26:                                    ; preds = %cond.true
  %33 = load %struct._object*, %struct._object** %object, align 8, !dbg !4031, !tbaa !1100
  %34 = bitcast %struct._object* %33 to %struct.PyUnicodeObject*, !dbg !4033
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %34, i32 0, i32 1, !dbg !4034
  %any = bitcast %union.anon* %data to i8**, !dbg !4035
  %35 = load i8*, i8** %any, align 8, !dbg !4035, !tbaa !1100
  br label %cond.end.27, !dbg !4011

cond.end.27:                                      ; preds = %cond.false.26, %cond.end
  %cond28 = phi i8* [ %cond, %cond.end ], [ %35, %cond.false.26 ], !dbg !4011
  %arrayidx = getelementptr i8, i8* %cond28, i64 %20, !dbg !4036
  %36 = load i8, i8* %arrayidx, align 1, !dbg !4036, !tbaa !1118
  %conv = zext i8 %36 to i32, !dbg !4036
  br label %cond.end.87, !dbg !4004

cond.false.29:                                    ; preds = %for.body
  %37 = load %struct._object*, %struct._object** %object, align 8, !dbg !4039, !tbaa !1100
  %38 = bitcast %struct._object* %37 to %struct.PyASCIIObject*, !dbg !4041
  %state30 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %38, i32 0, i32 3, !dbg !4042
  %39 = bitcast %struct.anon* %state30 to i32*, !dbg !4043
  %bf.load31 = load i32, i32* %39, align 4, !dbg !4043
  %bf.lshr32 = lshr i32 %bf.load31, 2, !dbg !4043
  %bf.clear33 = and i32 %bf.lshr32, 7, !dbg !4043
  %cmp34 = icmp eq i32 %bf.clear33, 2, !dbg !4044
  br i1 %cmp34, label %cond.true.36, label %cond.false.61, !dbg !4045

cond.true.36:                                     ; preds = %cond.false.29
  %40 = load i64, i64* %i, align 8, !dbg !4046, !tbaa !1553
  %41 = load %struct._object*, %struct._object** %object, align 8, !dbg !4048, !tbaa !1100
  %42 = bitcast %struct._object* %41 to %struct.PyASCIIObject*, !dbg !4049
  %state37 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %42, i32 0, i32 3, !dbg !4050
  %43 = bitcast %struct.anon* %state37 to i32*, !dbg !4051
  %bf.load38 = load i32, i32* %43, align 4, !dbg !4051
  %bf.lshr39 = lshr i32 %bf.load38, 5, !dbg !4051
  %bf.clear40 = and i32 %bf.lshr39, 1, !dbg !4051
  %tobool41 = icmp ne i32 %bf.clear40, 0, !dbg !4052
  br i1 %tobool41, label %cond.true.42, label %cond.false.54, !dbg !4052

cond.true.42:                                     ; preds = %cond.true.36
  %44 = load %struct._object*, %struct._object** %object, align 8, !dbg !4053, !tbaa !1100
  %45 = bitcast %struct._object* %44 to %struct.PyASCIIObject*, !dbg !4055
  %state43 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %45, i32 0, i32 3, !dbg !4056
  %46 = bitcast %struct.anon* %state43 to i32*, !dbg !4057
  %bf.load44 = load i32, i32* %46, align 4, !dbg !4057
  %bf.lshr45 = lshr i32 %bf.load44, 6, !dbg !4057
  %bf.clear46 = and i32 %bf.lshr45, 1, !dbg !4057
  %tobool47 = icmp ne i32 %bf.clear46, 0, !dbg !4058
  br i1 %tobool47, label %cond.true.48, label %cond.false.50, !dbg !4058

cond.true.48:                                     ; preds = %cond.true.42
  %47 = load %struct._object*, %struct._object** %object, align 8, !dbg !4059, !tbaa !1100
  %48 = bitcast %struct._object* %47 to %struct.PyASCIIObject*, !dbg !4061
  %add.ptr49 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %48, i64 1, !dbg !4062
  %49 = bitcast %struct.PyASCIIObject* %add.ptr49 to i8*, !dbg !4063
  br label %cond.end.52, !dbg !4058

cond.false.50:                                    ; preds = %cond.true.42
  %50 = load %struct._object*, %struct._object** %object, align 8, !dbg !4064, !tbaa !1100
  %51 = bitcast %struct._object* %50 to %struct.PyCompactUnicodeObject*, !dbg !4066
  %add.ptr51 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %51, i64 1, !dbg !4067
  %52 = bitcast %struct.PyCompactUnicodeObject* %add.ptr51 to i8*, !dbg !4068
  br label %cond.end.52, !dbg !4058

cond.end.52:                                      ; preds = %cond.false.50, %cond.true.48
  %cond53 = phi i8* [ %49, %cond.true.48 ], [ %52, %cond.false.50 ], !dbg !4058
  br label %cond.end.57, !dbg !4069

cond.false.54:                                    ; preds = %cond.true.36
  %53 = load %struct._object*, %struct._object** %object, align 8, !dbg !4072, !tbaa !1100
  %54 = bitcast %struct._object* %53 to %struct.PyUnicodeObject*, !dbg !4074
  %data55 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %54, i32 0, i32 1, !dbg !4075
  %any56 = bitcast %union.anon* %data55 to i8**, !dbg !4076
  %55 = load i8*, i8** %any56, align 8, !dbg !4076, !tbaa !1100
  br label %cond.end.57, !dbg !4052

cond.end.57:                                      ; preds = %cond.false.54, %cond.end.52
  %cond58 = phi i8* [ %cond53, %cond.end.52 ], [ %55, %cond.false.54 ], !dbg !4052
  %56 = bitcast i8* %cond58 to i16*, !dbg !4077
  %arrayidx59 = getelementptr i16, i16* %56, i64 %40, !dbg !4080
  %57 = load i16, i16* %arrayidx59, align 2, !dbg !4080, !tbaa !3255
  %conv60 = zext i16 %57 to i32, !dbg !4080
  br label %cond.end.85, !dbg !4045

cond.false.61:                                    ; preds = %cond.false.29
  %58 = load i64, i64* %i, align 8, !dbg !4081, !tbaa !1553
  %59 = load %struct._object*, %struct._object** %object, align 8, !dbg !4083, !tbaa !1100
  %60 = bitcast %struct._object* %59 to %struct.PyASCIIObject*, !dbg !4084
  %state62 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %60, i32 0, i32 3, !dbg !4085
  %61 = bitcast %struct.anon* %state62 to i32*, !dbg !4086
  %bf.load63 = load i32, i32* %61, align 4, !dbg !4086
  %bf.lshr64 = lshr i32 %bf.load63, 5, !dbg !4086
  %bf.clear65 = and i32 %bf.lshr64, 1, !dbg !4086
  %tobool66 = icmp ne i32 %bf.clear65, 0, !dbg !4087
  br i1 %tobool66, label %cond.true.67, label %cond.false.79, !dbg !4087

cond.true.67:                                     ; preds = %cond.false.61
  %62 = load %struct._object*, %struct._object** %object, align 8, !dbg !4088, !tbaa !1100
  %63 = bitcast %struct._object* %62 to %struct.PyASCIIObject*, !dbg !4090
  %state68 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %63, i32 0, i32 3, !dbg !4091
  %64 = bitcast %struct.anon* %state68 to i32*, !dbg !4092
  %bf.load69 = load i32, i32* %64, align 4, !dbg !4092
  %bf.lshr70 = lshr i32 %bf.load69, 6, !dbg !4092
  %bf.clear71 = and i32 %bf.lshr70, 1, !dbg !4092
  %tobool72 = icmp ne i32 %bf.clear71, 0, !dbg !4093
  br i1 %tobool72, label %cond.true.73, label %cond.false.75, !dbg !4093

cond.true.73:                                     ; preds = %cond.true.67
  %65 = load %struct._object*, %struct._object** %object, align 8, !dbg !4094, !tbaa !1100
  %66 = bitcast %struct._object* %65 to %struct.PyASCIIObject*, !dbg !4096
  %add.ptr74 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %66, i64 1, !dbg !4097
  %67 = bitcast %struct.PyASCIIObject* %add.ptr74 to i8*, !dbg !4098
  br label %cond.end.77, !dbg !4093

cond.false.75:                                    ; preds = %cond.true.67
  %68 = load %struct._object*, %struct._object** %object, align 8, !dbg !4099, !tbaa !1100
  %69 = bitcast %struct._object* %68 to %struct.PyCompactUnicodeObject*, !dbg !4101
  %add.ptr76 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %69, i64 1, !dbg !4102
  %70 = bitcast %struct.PyCompactUnicodeObject* %add.ptr76 to i8*, !dbg !4103
  br label %cond.end.77, !dbg !4093

cond.end.77:                                      ; preds = %cond.false.75, %cond.true.73
  %cond78 = phi i8* [ %67, %cond.true.73 ], [ %70, %cond.false.75 ], !dbg !4093
  br label %cond.end.82, !dbg !4104

cond.false.79:                                    ; preds = %cond.false.61
  %71 = load %struct._object*, %struct._object** %object, align 8, !dbg !4107, !tbaa !1100
  %72 = bitcast %struct._object* %71 to %struct.PyUnicodeObject*, !dbg !4109
  %data80 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %72, i32 0, i32 1, !dbg !4110
  %any81 = bitcast %union.anon* %data80 to i8**, !dbg !4111
  %73 = load i8*, i8** %any81, align 8, !dbg !4111, !tbaa !1100
  br label %cond.end.82, !dbg !4087

cond.end.82:                                      ; preds = %cond.false.79, %cond.end.77
  %cond83 = phi i8* [ %cond78, %cond.end.77 ], [ %73, %cond.false.79 ], !dbg !4087
  %74 = bitcast i8* %cond83 to i32*, !dbg !4112
  %arrayidx84 = getelementptr i32, i32* %74, i64 %58, !dbg !4115
  %75 = load i32, i32* %arrayidx84, align 4, !dbg !4115, !tbaa !1298
  br label %cond.end.85, !dbg !4045

cond.end.85:                                      ; preds = %cond.end.82, %cond.end.57
  %cond86 = phi i32 [ %conv60, %cond.end.57 ], [ %75, %cond.end.82 ], !dbg !4045
  br label %cond.end.87, !dbg !4116

cond.end.87:                                      ; preds = %cond.end.85, %cond.end.27
  %cond88 = phi i32 [ %conv, %cond.end.27 ], [ %cond86, %cond.end.85 ], !dbg !4004
  store i32 %cond88, i32* %c, align 4, !dbg !4119, !tbaa !1298
  %76 = load i32, i32* %c, align 4, !dbg !4122, !tbaa !1298
  %cmp89 = icmp uge i32 %76, 65536, !dbg !4124
  br i1 %cmp89, label %if.then.91, label %if.else, !dbg !4125

if.then.91:                                       ; preds = %cond.end.87
  %77 = load i32, i32* %ressize, align 4, !dbg !4126, !tbaa !1298
  %add = add i32 %77, 10, !dbg !4126
  store i32 %add, i32* %ressize, align 4, !dbg !4126, !tbaa !1298
  br label %if.end.99, !dbg !4128

if.else:                                          ; preds = %cond.end.87
  %78 = load i32, i32* %c, align 4, !dbg !4129, !tbaa !1298
  %cmp92 = icmp uge i32 %78, 256, !dbg !4131
  br i1 %cmp92, label %if.then.94, label %if.else.96, !dbg !4132

if.then.94:                                       ; preds = %if.else
  %79 = load i32, i32* %ressize, align 4, !dbg !4133, !tbaa !1298
  %add95 = add i32 %79, 6, !dbg !4133
  store i32 %add95, i32* %ressize, align 4, !dbg !4133, !tbaa !1298
  br label %if.end.98, !dbg !4135

if.else.96:                                       ; preds = %if.else
  %80 = load i32, i32* %ressize, align 4, !dbg !4136, !tbaa !1298
  %add97 = add i32 %80, 4, !dbg !4136
  store i32 %add97, i32* %ressize, align 4, !dbg !4136, !tbaa !1298
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.96, %if.then.94
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then.91
  br label %for.inc, !dbg !4137

for.inc:                                          ; preds = %if.end.99
  %81 = load i64, i64* %i, align 8, !dbg !4138, !tbaa !1553
  %inc = add i64 %81, 1, !dbg !4138
  store i64 %inc, i64* %i, align 8, !dbg !4138, !tbaa !1553
  br label %for.cond, !dbg !4139

for.end:                                          ; preds = %for.cond
  %82 = load i32, i32* %ressize, align 4, !dbg !4140, !tbaa !1298
  %conv100 = sext i32 %82 to i64, !dbg !4140
  %call101 = call %struct._object* @PyUnicode_New(i64 %conv100, i32 127), !dbg !4141
  store %struct._object* %call101, %struct._object** %res, align 8, !dbg !4142, !tbaa !1100
  %83 = load %struct._object*, %struct._object** %res, align 8, !dbg !4143, !tbaa !1100
  %cmp102 = icmp eq %struct._object* %83, null, !dbg !4145
  br i1 %cmp102, label %if.then.104, label %if.end.105, !dbg !4146

if.then.104:                                      ; preds = %for.end
  store %struct._object* null, %struct._object** %retval, !dbg !4147
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4147

if.end.105:                                       ; preds = %for.end
  %84 = load i64, i64* %start, align 8, !dbg !4148, !tbaa !1553
  store i64 %84, i64* %i, align 8, !dbg !4150, !tbaa !1553
  %85 = load %struct._object*, %struct._object** %res, align 8, !dbg !4151, !tbaa !1100
  %86 = bitcast %struct._object* %85 to %struct.PyASCIIObject*, !dbg !4152
  %state106 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %86, i32 0, i32 3, !dbg !4153
  %87 = bitcast %struct.anon* %state106 to i32*, !dbg !4154
  %bf.load107 = load i32, i32* %87, align 4, !dbg !4154
  %bf.lshr108 = lshr i32 %bf.load107, 5, !dbg !4154
  %bf.clear109 = and i32 %bf.lshr108, 1, !dbg !4154
  %tobool110 = icmp ne i32 %bf.clear109, 0, !dbg !4155
  br i1 %tobool110, label %cond.true.111, label %cond.false.123, !dbg !4155

cond.true.111:                                    ; preds = %if.end.105
  %88 = load %struct._object*, %struct._object** %res, align 8, !dbg !4156, !tbaa !1100
  %89 = bitcast %struct._object* %88 to %struct.PyASCIIObject*, !dbg !4158
  %state112 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %89, i32 0, i32 3, !dbg !4159
  %90 = bitcast %struct.anon* %state112 to i32*, !dbg !4160
  %bf.load113 = load i32, i32* %90, align 4, !dbg !4160
  %bf.lshr114 = lshr i32 %bf.load113, 6, !dbg !4160
  %bf.clear115 = and i32 %bf.lshr114, 1, !dbg !4160
  %tobool116 = icmp ne i32 %bf.clear115, 0, !dbg !4161
  br i1 %tobool116, label %cond.true.117, label %cond.false.119, !dbg !4161

cond.true.117:                                    ; preds = %cond.true.111
  %91 = load %struct._object*, %struct._object** %res, align 8, !dbg !4162, !tbaa !1100
  %92 = bitcast %struct._object* %91 to %struct.PyASCIIObject*, !dbg !4164
  %add.ptr118 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %92, i64 1, !dbg !4165
  %93 = bitcast %struct.PyASCIIObject* %add.ptr118 to i8*, !dbg !4166
  br label %cond.end.121, !dbg !4161

cond.false.119:                                   ; preds = %cond.true.111
  %94 = load %struct._object*, %struct._object** %res, align 8, !dbg !4167, !tbaa !1100
  %95 = bitcast %struct._object* %94 to %struct.PyCompactUnicodeObject*, !dbg !4169
  %add.ptr120 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %95, i64 1, !dbg !4170
  %96 = bitcast %struct.PyCompactUnicodeObject* %add.ptr120 to i8*, !dbg !4171
  br label %cond.end.121, !dbg !4161

cond.end.121:                                     ; preds = %cond.false.119, %cond.true.117
  %cond122 = phi i8* [ %93, %cond.true.117 ], [ %96, %cond.false.119 ], !dbg !4161
  br label %cond.end.126, !dbg !4172

cond.false.123:                                   ; preds = %if.end.105
  %97 = load %struct._object*, %struct._object** %res, align 8, !dbg !4175, !tbaa !1100
  %98 = bitcast %struct._object* %97 to %struct.PyUnicodeObject*, !dbg !4177
  %data124 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %98, i32 0, i32 1, !dbg !4178
  %any125 = bitcast %union.anon* %data124 to i8**, !dbg !4179
  %99 = load i8*, i8** %any125, align 8, !dbg !4179, !tbaa !1100
  br label %cond.end.126, !dbg !4155

cond.end.126:                                     ; preds = %cond.false.123, %cond.end.121
  %cond127 = phi i8* [ %cond122, %cond.end.121 ], [ %99, %cond.false.123 ], !dbg !4155
  store i8* %cond127, i8** %outp, align 8, !dbg !4180, !tbaa !1100
  br label %for.cond.128, !dbg !4183

for.cond.128:                                     ; preds = %for.inc.282, %cond.end.126
  %100 = load i64, i64* %i, align 8, !dbg !4184, !tbaa !1553
  %101 = load i64, i64* %end, align 8, !dbg !4186, !tbaa !1553
  %cmp129 = icmp slt i64 %100, %101, !dbg !4187
  br i1 %cmp129, label %for.body.131, label %for.end.284, !dbg !4188

for.body.131:                                     ; preds = %for.cond.128
  %102 = load %struct._object*, %struct._object** %object, align 8, !dbg !4189, !tbaa !1100
  %103 = bitcast %struct._object* %102 to %struct.PyASCIIObject*, !dbg !4191
  %state132 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %103, i32 0, i32 3, !dbg !4192
  %104 = bitcast %struct.anon* %state132 to i32*, !dbg !4193
  %bf.load133 = load i32, i32* %104, align 4, !dbg !4193
  %bf.lshr134 = lshr i32 %bf.load133, 2, !dbg !4193
  %bf.clear135 = and i32 %bf.lshr134, 7, !dbg !4193
  %cmp136 = icmp eq i32 %bf.clear135, 1, !dbg !4194
  br i1 %cmp136, label %cond.true.138, label %cond.false.163, !dbg !4195

cond.true.138:                                    ; preds = %for.body.131
  %105 = load i64, i64* %i, align 8, !dbg !4196, !tbaa !1553
  %106 = load %struct._object*, %struct._object** %object, align 8, !dbg !4198, !tbaa !1100
  %107 = bitcast %struct._object* %106 to %struct.PyASCIIObject*, !dbg !4199
  %state139 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %107, i32 0, i32 3, !dbg !4200
  %108 = bitcast %struct.anon* %state139 to i32*, !dbg !4201
  %bf.load140 = load i32, i32* %108, align 4, !dbg !4201
  %bf.lshr141 = lshr i32 %bf.load140, 5, !dbg !4201
  %bf.clear142 = and i32 %bf.lshr141, 1, !dbg !4201
  %tobool143 = icmp ne i32 %bf.clear142, 0, !dbg !4202
  br i1 %tobool143, label %cond.true.144, label %cond.false.156, !dbg !4202

cond.true.144:                                    ; preds = %cond.true.138
  %109 = load %struct._object*, %struct._object** %object, align 8, !dbg !4203, !tbaa !1100
  %110 = bitcast %struct._object* %109 to %struct.PyASCIIObject*, !dbg !4205
  %state145 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %110, i32 0, i32 3, !dbg !4206
  %111 = bitcast %struct.anon* %state145 to i32*, !dbg !4207
  %bf.load146 = load i32, i32* %111, align 4, !dbg !4207
  %bf.lshr147 = lshr i32 %bf.load146, 6, !dbg !4207
  %bf.clear148 = and i32 %bf.lshr147, 1, !dbg !4207
  %tobool149 = icmp ne i32 %bf.clear148, 0, !dbg !4208
  br i1 %tobool149, label %cond.true.150, label %cond.false.152, !dbg !4208

cond.true.150:                                    ; preds = %cond.true.144
  %112 = load %struct._object*, %struct._object** %object, align 8, !dbg !4209, !tbaa !1100
  %113 = bitcast %struct._object* %112 to %struct.PyASCIIObject*, !dbg !4211
  %add.ptr151 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %113, i64 1, !dbg !4212
  %114 = bitcast %struct.PyASCIIObject* %add.ptr151 to i8*, !dbg !4213
  br label %cond.end.154, !dbg !4208

cond.false.152:                                   ; preds = %cond.true.144
  %115 = load %struct._object*, %struct._object** %object, align 8, !dbg !4214, !tbaa !1100
  %116 = bitcast %struct._object* %115 to %struct.PyCompactUnicodeObject*, !dbg !4216
  %add.ptr153 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %116, i64 1, !dbg !4217
  %117 = bitcast %struct.PyCompactUnicodeObject* %add.ptr153 to i8*, !dbg !4218
  br label %cond.end.154, !dbg !4208

cond.end.154:                                     ; preds = %cond.false.152, %cond.true.150
  %cond155 = phi i8* [ %114, %cond.true.150 ], [ %117, %cond.false.152 ], !dbg !4208
  br label %cond.end.159, !dbg !4219

cond.false.156:                                   ; preds = %cond.true.138
  %118 = load %struct._object*, %struct._object** %object, align 8, !dbg !4222, !tbaa !1100
  %119 = bitcast %struct._object* %118 to %struct.PyUnicodeObject*, !dbg !4224
  %data157 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %119, i32 0, i32 1, !dbg !4225
  %any158 = bitcast %union.anon* %data157 to i8**, !dbg !4226
  %120 = load i8*, i8** %any158, align 8, !dbg !4226, !tbaa !1100
  br label %cond.end.159, !dbg !4202

cond.end.159:                                     ; preds = %cond.false.156, %cond.end.154
  %cond160 = phi i8* [ %cond155, %cond.end.154 ], [ %120, %cond.false.156 ], !dbg !4202
  %arrayidx161 = getelementptr i8, i8* %cond160, i64 %105, !dbg !4227
  %121 = load i8, i8* %arrayidx161, align 1, !dbg !4227, !tbaa !1118
  %conv162 = zext i8 %121 to i32, !dbg !4227
  br label %cond.end.221, !dbg !4195

cond.false.163:                                   ; preds = %for.body.131
  %122 = load %struct._object*, %struct._object** %object, align 8, !dbg !4230, !tbaa !1100
  %123 = bitcast %struct._object* %122 to %struct.PyASCIIObject*, !dbg !4232
  %state164 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %123, i32 0, i32 3, !dbg !4233
  %124 = bitcast %struct.anon* %state164 to i32*, !dbg !4234
  %bf.load165 = load i32, i32* %124, align 4, !dbg !4234
  %bf.lshr166 = lshr i32 %bf.load165, 2, !dbg !4234
  %bf.clear167 = and i32 %bf.lshr166, 7, !dbg !4234
  %cmp168 = icmp eq i32 %bf.clear167, 2, !dbg !4235
  br i1 %cmp168, label %cond.true.170, label %cond.false.195, !dbg !4236

cond.true.170:                                    ; preds = %cond.false.163
  %125 = load i64, i64* %i, align 8, !dbg !4237, !tbaa !1553
  %126 = load %struct._object*, %struct._object** %object, align 8, !dbg !4239, !tbaa !1100
  %127 = bitcast %struct._object* %126 to %struct.PyASCIIObject*, !dbg !4240
  %state171 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %127, i32 0, i32 3, !dbg !4241
  %128 = bitcast %struct.anon* %state171 to i32*, !dbg !4242
  %bf.load172 = load i32, i32* %128, align 4, !dbg !4242
  %bf.lshr173 = lshr i32 %bf.load172, 5, !dbg !4242
  %bf.clear174 = and i32 %bf.lshr173, 1, !dbg !4242
  %tobool175 = icmp ne i32 %bf.clear174, 0, !dbg !4243
  br i1 %tobool175, label %cond.true.176, label %cond.false.188, !dbg !4243

cond.true.176:                                    ; preds = %cond.true.170
  %129 = load %struct._object*, %struct._object** %object, align 8, !dbg !4244, !tbaa !1100
  %130 = bitcast %struct._object* %129 to %struct.PyASCIIObject*, !dbg !4246
  %state177 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %130, i32 0, i32 3, !dbg !4247
  %131 = bitcast %struct.anon* %state177 to i32*, !dbg !4248
  %bf.load178 = load i32, i32* %131, align 4, !dbg !4248
  %bf.lshr179 = lshr i32 %bf.load178, 6, !dbg !4248
  %bf.clear180 = and i32 %bf.lshr179, 1, !dbg !4248
  %tobool181 = icmp ne i32 %bf.clear180, 0, !dbg !4249
  br i1 %tobool181, label %cond.true.182, label %cond.false.184, !dbg !4249

cond.true.182:                                    ; preds = %cond.true.176
  %132 = load %struct._object*, %struct._object** %object, align 8, !dbg !4250, !tbaa !1100
  %133 = bitcast %struct._object* %132 to %struct.PyASCIIObject*, !dbg !4252
  %add.ptr183 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %133, i64 1, !dbg !4253
  %134 = bitcast %struct.PyASCIIObject* %add.ptr183 to i8*, !dbg !4254
  br label %cond.end.186, !dbg !4249

cond.false.184:                                   ; preds = %cond.true.176
  %135 = load %struct._object*, %struct._object** %object, align 8, !dbg !4255, !tbaa !1100
  %136 = bitcast %struct._object* %135 to %struct.PyCompactUnicodeObject*, !dbg !4257
  %add.ptr185 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %136, i64 1, !dbg !4258
  %137 = bitcast %struct.PyCompactUnicodeObject* %add.ptr185 to i8*, !dbg !4259
  br label %cond.end.186, !dbg !4249

cond.end.186:                                     ; preds = %cond.false.184, %cond.true.182
  %cond187 = phi i8* [ %134, %cond.true.182 ], [ %137, %cond.false.184 ], !dbg !4249
  br label %cond.end.191, !dbg !4260

cond.false.188:                                   ; preds = %cond.true.170
  %138 = load %struct._object*, %struct._object** %object, align 8, !dbg !4263, !tbaa !1100
  %139 = bitcast %struct._object* %138 to %struct.PyUnicodeObject*, !dbg !4265
  %data189 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %139, i32 0, i32 1, !dbg !4266
  %any190 = bitcast %union.anon* %data189 to i8**, !dbg !4267
  %140 = load i8*, i8** %any190, align 8, !dbg !4267, !tbaa !1100
  br label %cond.end.191, !dbg !4243

cond.end.191:                                     ; preds = %cond.false.188, %cond.end.186
  %cond192 = phi i8* [ %cond187, %cond.end.186 ], [ %140, %cond.false.188 ], !dbg !4243
  %141 = bitcast i8* %cond192 to i16*, !dbg !4268
  %arrayidx193 = getelementptr i16, i16* %141, i64 %125, !dbg !4271
  %142 = load i16, i16* %arrayidx193, align 2, !dbg !4271, !tbaa !3255
  %conv194 = zext i16 %142 to i32, !dbg !4271
  br label %cond.end.219, !dbg !4236

cond.false.195:                                   ; preds = %cond.false.163
  %143 = load i64, i64* %i, align 8, !dbg !4272, !tbaa !1553
  %144 = load %struct._object*, %struct._object** %object, align 8, !dbg !4274, !tbaa !1100
  %145 = bitcast %struct._object* %144 to %struct.PyASCIIObject*, !dbg !4275
  %state196 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %145, i32 0, i32 3, !dbg !4276
  %146 = bitcast %struct.anon* %state196 to i32*, !dbg !4277
  %bf.load197 = load i32, i32* %146, align 4, !dbg !4277
  %bf.lshr198 = lshr i32 %bf.load197, 5, !dbg !4277
  %bf.clear199 = and i32 %bf.lshr198, 1, !dbg !4277
  %tobool200 = icmp ne i32 %bf.clear199, 0, !dbg !4278
  br i1 %tobool200, label %cond.true.201, label %cond.false.213, !dbg !4278

cond.true.201:                                    ; preds = %cond.false.195
  %147 = load %struct._object*, %struct._object** %object, align 8, !dbg !4279, !tbaa !1100
  %148 = bitcast %struct._object* %147 to %struct.PyASCIIObject*, !dbg !4281
  %state202 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %148, i32 0, i32 3, !dbg !4282
  %149 = bitcast %struct.anon* %state202 to i32*, !dbg !4283
  %bf.load203 = load i32, i32* %149, align 4, !dbg !4283
  %bf.lshr204 = lshr i32 %bf.load203, 6, !dbg !4283
  %bf.clear205 = and i32 %bf.lshr204, 1, !dbg !4283
  %tobool206 = icmp ne i32 %bf.clear205, 0, !dbg !4284
  br i1 %tobool206, label %cond.true.207, label %cond.false.209, !dbg !4284

cond.true.207:                                    ; preds = %cond.true.201
  %150 = load %struct._object*, %struct._object** %object, align 8, !dbg !4285, !tbaa !1100
  %151 = bitcast %struct._object* %150 to %struct.PyASCIIObject*, !dbg !4287
  %add.ptr208 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %151, i64 1, !dbg !4288
  %152 = bitcast %struct.PyASCIIObject* %add.ptr208 to i8*, !dbg !4289
  br label %cond.end.211, !dbg !4284

cond.false.209:                                   ; preds = %cond.true.201
  %153 = load %struct._object*, %struct._object** %object, align 8, !dbg !4290, !tbaa !1100
  %154 = bitcast %struct._object* %153 to %struct.PyCompactUnicodeObject*, !dbg !4292
  %add.ptr210 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %154, i64 1, !dbg !4293
  %155 = bitcast %struct.PyCompactUnicodeObject* %add.ptr210 to i8*, !dbg !4294
  br label %cond.end.211, !dbg !4284

cond.end.211:                                     ; preds = %cond.false.209, %cond.true.207
  %cond212 = phi i8* [ %152, %cond.true.207 ], [ %155, %cond.false.209 ], !dbg !4284
  br label %cond.end.216, !dbg !4295

cond.false.213:                                   ; preds = %cond.false.195
  %156 = load %struct._object*, %struct._object** %object, align 8, !dbg !4298, !tbaa !1100
  %157 = bitcast %struct._object* %156 to %struct.PyUnicodeObject*, !dbg !4300
  %data214 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %157, i32 0, i32 1, !dbg !4301
  %any215 = bitcast %union.anon* %data214 to i8**, !dbg !4302
  %158 = load i8*, i8** %any215, align 8, !dbg !4302, !tbaa !1100
  br label %cond.end.216, !dbg !4278

cond.end.216:                                     ; preds = %cond.false.213, %cond.end.211
  %cond217 = phi i8* [ %cond212, %cond.end.211 ], [ %158, %cond.false.213 ], !dbg !4278
  %159 = bitcast i8* %cond217 to i32*, !dbg !4303
  %arrayidx218 = getelementptr i32, i32* %159, i64 %143, !dbg !4306
  %160 = load i32, i32* %arrayidx218, align 4, !dbg !4306, !tbaa !1298
  br label %cond.end.219, !dbg !4236

cond.end.219:                                     ; preds = %cond.end.216, %cond.end.191
  %cond220 = phi i32 [ %conv194, %cond.end.191 ], [ %160, %cond.end.216 ], !dbg !4236
  br label %cond.end.221, !dbg !4307

cond.end.221:                                     ; preds = %cond.end.219, %cond.end.159
  %cond222 = phi i32 [ %conv162, %cond.end.159 ], [ %cond220, %cond.end.219 ], !dbg !4195
  store i32 %cond222, i32* %c, align 4, !dbg !4310, !tbaa !1298
  %161 = load i8*, i8** %outp, align 8, !dbg !4313, !tbaa !1100
  %incdec.ptr = getelementptr i8, i8* %161, i32 1, !dbg !4313
  store i8* %incdec.ptr, i8** %outp, align 8, !dbg !4313, !tbaa !1100
  store i8 92, i8* %161, align 1, !dbg !4314, !tbaa !1118
  %162 = load i32, i32* %c, align 4, !dbg !4315, !tbaa !1298
  %cmp223 = icmp uge i32 %162, 65536, !dbg !4317
  br i1 %cmp223, label %if.then.225, label %if.else.254, !dbg !4318

if.then.225:                                      ; preds = %cond.end.221
  %163 = load i8*, i8** %outp, align 8, !dbg !4319, !tbaa !1100
  %incdec.ptr226 = getelementptr i8, i8* %163, i32 1, !dbg !4319
  store i8* %incdec.ptr226, i8** %outp, align 8, !dbg !4319, !tbaa !1100
  store i8 85, i8* %163, align 1, !dbg !4321, !tbaa !1118
  %164 = load i32, i32* %c, align 4, !dbg !4322, !tbaa !1298
  %shr = lshr i32 %164, 28, !dbg !4323
  %and = and i32 %shr, 15, !dbg !4324
  %idxprom = zext i32 %and to i64, !dbg !4325
  %165 = load i8*, i8** @Py_hexdigits, align 8, !dbg !4325, !tbaa !1100
  %arrayidx227 = getelementptr i8, i8* %165, i64 %idxprom, !dbg !4325
  %166 = load i8, i8* %arrayidx227, align 1, !dbg !4325, !tbaa !1118
  %167 = load i8*, i8** %outp, align 8, !dbg !4326, !tbaa !1100
  %incdec.ptr228 = getelementptr i8, i8* %167, i32 1, !dbg !4326
  store i8* %incdec.ptr228, i8** %outp, align 8, !dbg !4326, !tbaa !1100
  store i8 %166, i8* %167, align 1, !dbg !4327, !tbaa !1118
  %168 = load i32, i32* %c, align 4, !dbg !4328, !tbaa !1298
  %shr229 = lshr i32 %168, 24, !dbg !4329
  %and230 = and i32 %shr229, 15, !dbg !4330
  %idxprom231 = zext i32 %and230 to i64, !dbg !4331
  %169 = load i8*, i8** @Py_hexdigits, align 8, !dbg !4331, !tbaa !1100
  %arrayidx232 = getelementptr i8, i8* %169, i64 %idxprom231, !dbg !4331
  %170 = load i8, i8* %arrayidx232, align 1, !dbg !4331, !tbaa !1118
  %171 = load i8*, i8** %outp, align 8, !dbg !4332, !tbaa !1100
  %incdec.ptr233 = getelementptr i8, i8* %171, i32 1, !dbg !4332
  store i8* %incdec.ptr233, i8** %outp, align 8, !dbg !4332, !tbaa !1100
  store i8 %170, i8* %171, align 1, !dbg !4333, !tbaa !1118
  %172 = load i32, i32* %c, align 4, !dbg !4334, !tbaa !1298
  %shr234 = lshr i32 %172, 20, !dbg !4335
  %and235 = and i32 %shr234, 15, !dbg !4336
  %idxprom236 = zext i32 %and235 to i64, !dbg !4337
  %173 = load i8*, i8** @Py_hexdigits, align 8, !dbg !4337, !tbaa !1100
  %arrayidx237 = getelementptr i8, i8* %173, i64 %idxprom236, !dbg !4337
  %174 = load i8, i8* %arrayidx237, align 1, !dbg !4337, !tbaa !1118
  %175 = load i8*, i8** %outp, align 8, !dbg !4338, !tbaa !1100
  %incdec.ptr238 = getelementptr i8, i8* %175, i32 1, !dbg !4338
  store i8* %incdec.ptr238, i8** %outp, align 8, !dbg !4338, !tbaa !1100
  store i8 %174, i8* %175, align 1, !dbg !4339, !tbaa !1118
  %176 = load i32, i32* %c, align 4, !dbg !4340, !tbaa !1298
  %shr239 = lshr i32 %176, 16, !dbg !4341
  %and240 = and i32 %shr239, 15, !dbg !4342
  %idxprom241 = zext i32 %and240 to i64, !dbg !4343
  %177 = load i8*, i8** @Py_hexdigits, align 8, !dbg !4343, !tbaa !1100
  %arrayidx242 = getelementptr i8, i8* %177, i64 %idxprom241, !dbg !4343
  %178 = load i8, i8* %arrayidx242, align 1, !dbg !4343, !tbaa !1118
  %179 = load i8*, i8** %outp, align 8, !dbg !4344, !tbaa !1100
  %incdec.ptr243 = getelementptr i8, i8* %179, i32 1, !dbg !4344
  store i8* %incdec.ptr243, i8** %outp, align 8, !dbg !4344, !tbaa !1100
  store i8 %178, i8* %179, align 1, !dbg !4345, !tbaa !1118
  %180 = load i32, i32* %c, align 4, !dbg !4346, !tbaa !1298
  %shr244 = lshr i32 %180, 12, !dbg !4347
  %and245 = and i32 %shr244, 15, !dbg !4348
  %idxprom246 = zext i32 %and245 to i64, !dbg !4349
  %181 = load i8*, i8** @Py_hexdigits, align 8, !dbg !4349, !tbaa !1100
  %arrayidx247 = getelementptr i8, i8* %181, i64 %idxprom246, !dbg !4349
  %182 = load i8, i8* %arrayidx247, align 1, !dbg !4349, !tbaa !1118
  %183 = load i8*, i8** %outp, align 8, !dbg !4350, !tbaa !1100
  %incdec.ptr248 = getelementptr i8, i8* %183, i32 1, !dbg !4350
  store i8* %incdec.ptr248, i8** %outp, align 8, !dbg !4350, !tbaa !1100
  store i8 %182, i8* %183, align 1, !dbg !4351, !tbaa !1118
  %184 = load i32, i32* %c, align 4, !dbg !4352, !tbaa !1298
  %shr249 = lshr i32 %184, 8, !dbg !4353
  %and250 = and i32 %shr249, 15, !dbg !4354
  %idxprom251 = zext i32 %and250 to i64, !dbg !4355
  %185 = load i8*, i8** @Py_hexdigits, align 8, !dbg !4355, !tbaa !1100
  %arrayidx252 = getelementptr i8, i8* %185, i64 %idxprom251, !dbg !4355
  %186 = load i8, i8* %arrayidx252, align 1, !dbg !4355, !tbaa !1118
  %187 = load i8*, i8** %outp, align 8, !dbg !4356, !tbaa !1100
  %incdec.ptr253 = getelementptr i8, i8* %187, i32 1, !dbg !4356
  store i8* %incdec.ptr253, i8** %outp, align 8, !dbg !4356, !tbaa !1100
  store i8 %186, i8* %187, align 1, !dbg !4357, !tbaa !1118
  br label %if.end.272, !dbg !4358

if.else.254:                                      ; preds = %cond.end.221
  %188 = load i32, i32* %c, align 4, !dbg !4359, !tbaa !1298
  %cmp255 = icmp uge i32 %188, 256, !dbg !4361
  br i1 %cmp255, label %if.then.257, label %if.else.269, !dbg !4362

if.then.257:                                      ; preds = %if.else.254
  %189 = load i8*, i8** %outp, align 8, !dbg !4363, !tbaa !1100
  %incdec.ptr258 = getelementptr i8, i8* %189, i32 1, !dbg !4363
  store i8* %incdec.ptr258, i8** %outp, align 8, !dbg !4363, !tbaa !1100
  store i8 117, i8* %189, align 1, !dbg !4365, !tbaa !1118
  %190 = load i32, i32* %c, align 4, !dbg !4366, !tbaa !1298
  %shr259 = lshr i32 %190, 12, !dbg !4367
  %and260 = and i32 %shr259, 15, !dbg !4368
  %idxprom261 = zext i32 %and260 to i64, !dbg !4369
  %191 = load i8*, i8** @Py_hexdigits, align 8, !dbg !4369, !tbaa !1100
  %arrayidx262 = getelementptr i8, i8* %191, i64 %idxprom261, !dbg !4369
  %192 = load i8, i8* %arrayidx262, align 1, !dbg !4369, !tbaa !1118
  %193 = load i8*, i8** %outp, align 8, !dbg !4370, !tbaa !1100
  %incdec.ptr263 = getelementptr i8, i8* %193, i32 1, !dbg !4370
  store i8* %incdec.ptr263, i8** %outp, align 8, !dbg !4370, !tbaa !1100
  store i8 %192, i8* %193, align 1, !dbg !4371, !tbaa !1118
  %194 = load i32, i32* %c, align 4, !dbg !4372, !tbaa !1298
  %shr264 = lshr i32 %194, 8, !dbg !4373
  %and265 = and i32 %shr264, 15, !dbg !4374
  %idxprom266 = zext i32 %and265 to i64, !dbg !4375
  %195 = load i8*, i8** @Py_hexdigits, align 8, !dbg !4375, !tbaa !1100
  %arrayidx267 = getelementptr i8, i8* %195, i64 %idxprom266, !dbg !4375
  %196 = load i8, i8* %arrayidx267, align 1, !dbg !4375, !tbaa !1118
  %197 = load i8*, i8** %outp, align 8, !dbg !4376, !tbaa !1100
  %incdec.ptr268 = getelementptr i8, i8* %197, i32 1, !dbg !4376
  store i8* %incdec.ptr268, i8** %outp, align 8, !dbg !4376, !tbaa !1100
  store i8 %196, i8* %197, align 1, !dbg !4377, !tbaa !1118
  br label %if.end.271, !dbg !4378

if.else.269:                                      ; preds = %if.else.254
  %198 = load i8*, i8** %outp, align 8, !dbg !4379, !tbaa !1100
  %incdec.ptr270 = getelementptr i8, i8* %198, i32 1, !dbg !4379
  store i8* %incdec.ptr270, i8** %outp, align 8, !dbg !4379, !tbaa !1100
  store i8 120, i8* %198, align 1, !dbg !4380, !tbaa !1118
  br label %if.end.271

if.end.271:                                       ; preds = %if.else.269, %if.then.257
  br label %if.end.272

if.end.272:                                       ; preds = %if.end.271, %if.then.225
  %199 = load i32, i32* %c, align 4, !dbg !4381, !tbaa !1298
  %shr273 = lshr i32 %199, 4, !dbg !4382
  %and274 = and i32 %shr273, 15, !dbg !4383
  %idxprom275 = zext i32 %and274 to i64, !dbg !4384
  %200 = load i8*, i8** @Py_hexdigits, align 8, !dbg !4384, !tbaa !1100
  %arrayidx276 = getelementptr i8, i8* %200, i64 %idxprom275, !dbg !4384
  %201 = load i8, i8* %arrayidx276, align 1, !dbg !4384, !tbaa !1118
  %202 = load i8*, i8** %outp, align 8, !dbg !4385, !tbaa !1100
  %incdec.ptr277 = getelementptr i8, i8* %202, i32 1, !dbg !4385
  store i8* %incdec.ptr277, i8** %outp, align 8, !dbg !4385, !tbaa !1100
  store i8 %201, i8* %202, align 1, !dbg !4386, !tbaa !1118
  %203 = load i32, i32* %c, align 4, !dbg !4387, !tbaa !1298
  %and278 = and i32 %203, 15, !dbg !4388
  %idxprom279 = zext i32 %and278 to i64, !dbg !4389
  %204 = load i8*, i8** @Py_hexdigits, align 8, !dbg !4389, !tbaa !1100
  %arrayidx280 = getelementptr i8, i8* %204, i64 %idxprom279, !dbg !4389
  %205 = load i8, i8* %arrayidx280, align 1, !dbg !4389, !tbaa !1118
  %206 = load i8*, i8** %outp, align 8, !dbg !4390, !tbaa !1100
  %incdec.ptr281 = getelementptr i8, i8* %206, i32 1, !dbg !4390
  store i8* %incdec.ptr281, i8** %outp, align 8, !dbg !4390, !tbaa !1100
  store i8 %205, i8* %206, align 1, !dbg !4391, !tbaa !1118
  br label %for.inc.282, !dbg !4392

for.inc.282:                                      ; preds = %if.end.272
  %207 = load i64, i64* %i, align 8, !dbg !4393, !tbaa !1553
  %inc283 = add i64 %207, 1, !dbg !4393
  store i64 %inc283, i64* %i, align 8, !dbg !4393, !tbaa !1553
  br label %for.cond.128, !dbg !4394

for.end.284:                                      ; preds = %for.cond.128
  %208 = load %struct._object*, %struct._object** %res, align 8, !dbg !4395, !tbaa !1100
  %209 = load i64, i64* %end, align 8, !dbg !4396, !tbaa !1553
  %call285 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), %struct._object* %208, i64 %209), !dbg !4397
  store %struct._object* %call285, %struct._object** %restuple, align 8, !dbg !4398, !tbaa !1100
  br label %do.body, !dbg !4399

do.body:                                          ; preds = %for.end.284
  %210 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4400
  call void @llvm.lifetime.start(i64 8, i8* %210) #2, !dbg !4400
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !721, metadata !1104), !dbg !4402
  %211 = load %struct._object*, %struct._object** %object, align 8, !dbg !4403, !tbaa !1100
  store %struct._object* %211, %struct._object** %_py_decref_tmp, align 8, !dbg !4402, !tbaa !1100
  %212 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4404, !tbaa !1100
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %212, i32 0, i32 0, !dbg !4406
  %213 = load i64, i64* %ob_refcnt, align 8, !dbg !4407, !tbaa !1335
  %dec = add i64 %213, -1, !dbg !4407
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4407, !tbaa !1335
  %cmp286 = icmp ne i64 %dec, 0, !dbg !4408
  br i1 %cmp286, label %if.then.288, label %if.else.289, !dbg !4409

if.then.288:                                      ; preds = %do.body
  br label %if.end.290, !dbg !4410

if.else.289:                                      ; preds = %do.body
  %214 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4412, !tbaa !1100
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %214, i32 0, i32 1, !dbg !4414
  %215 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4414, !tbaa !1344
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %215, i32 0, i32 4, !dbg !4415
  %216 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4415, !tbaa !1346
  %217 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4416, !tbaa !1100
  call void %216(%struct._object* %217), !dbg !4417
  br label %if.end.290

if.end.290:                                       ; preds = %if.else.289, %if.then.288
  %218 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4418
  call void @llvm.lifetime.end(i64 8, i8* %218) #2, !dbg !4418
  br label %do.cond, !dbg !4420

do.cond:                                          ; preds = %if.end.290
  br label %do.end, !dbg !4421

do.end:                                           ; preds = %do.cond
  %219 = load %struct._object*, %struct._object** %restuple, align 8, !dbg !4423, !tbaa !1100
  store %struct._object* %219, %struct._object** %retval, !dbg !4424
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4424

cleanup:                                          ; preds = %do.end, %if.then.104, %if.then.10, %if.then.6, %if.then.3
  %220 = bitcast i32* %c to i8*, !dbg !4425
  call void @llvm.lifetime.end(i64 4, i8* %220) #2, !dbg !4425
  %221 = bitcast i32* %ressize to i8*, !dbg !4425
  call void @llvm.lifetime.end(i64 4, i8* %221) #2, !dbg !4425
  %222 = bitcast i8** %outp to i8*, !dbg !4425
  call void @llvm.lifetime.end(i64 8, i8* %222) #2, !dbg !4425
  %223 = bitcast %struct._object** %res to i8*, !dbg !4425
  call void @llvm.lifetime.end(i64 8, i8* %223) #2, !dbg !4425
  %224 = bitcast i64* %end to i8*, !dbg !4425
  call void @llvm.lifetime.end(i64 8, i8* %224) #2, !dbg !4425
  %225 = bitcast i64* %start to i8*, !dbg !4425
  call void @llvm.lifetime.end(i64 8, i8* %225) #2, !dbg !4425
  %226 = bitcast i64* %i to i8*, !dbg !4425
  call void @llvm.lifetime.end(i64 8, i8* %226) #2, !dbg !4425
  %227 = bitcast %struct._object** %object to i8*, !dbg !4425
  call void @llvm.lifetime.end(i64 8, i8* %227) #2, !dbg !4425
  %228 = bitcast %struct._object** %restuple to i8*, !dbg !4425
  call void @llvm.lifetime.end(i64 8, i8* %228) #2, !dbg !4425
  br label %return

if.else.299:                                      ; preds = %entry
  %229 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !4426, !tbaa !1100
  call void @wrong_exception_type(%struct._object* %229), !dbg !4428
  store %struct._object* null, %struct._object** %retval, !dbg !4429
  br label %return, !dbg !4429

return:                                           ; preds = %if.else.299, %cleanup
  %230 = load %struct._object*, %struct._object** %retval, !dbg !4430
  ret %struct._object* %230, !dbg !4430
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i8* @PyMem_Malloc(i64) #4

declare %struct._object* @PyErr_NoMemory() #4

declare %struct._object* @PyUnicode_FromString(i8*) #4

declare void @PyMem_Free(i8*) #4

declare %struct._object* @PyObject_GetAttrString(%struct._object*, i8*) #4

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #4

; Function Attrs: nounwind uwtable
define internal %struct._object* @args_tuple(%struct._object* %object, i8* %errors) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %object.addr = alloca %struct._object*, align 8
  %errors.addr = alloca i8*, align 8
  %args = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %object, %struct._object** %object.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %object.addr, metadata !829, metadata !1104), !dbg !4431
  store i8* %errors, i8** %errors.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %errors.addr, metadata !830, metadata !1104), !dbg !4432
  %0 = bitcast %struct._object** %args to i8*, !dbg !4433
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4433
  call void @llvm.dbg.declare(metadata %struct._object** %args, metadata !831, metadata !1104), !dbg !4434
  %1 = load i8*, i8** %errors.addr, align 8, !dbg !4435, !tbaa !1100
  %cmp = icmp ne i8* %1, null, !dbg !4436
  %conv = zext i1 %cmp to i32, !dbg !4436
  %add = add i32 1, %conv, !dbg !4437
  %conv1 = sext i32 %add to i64, !dbg !4438
  %call = call %struct._object* @PyTuple_New(i64 %conv1), !dbg !4439
  store %struct._object* %call, %struct._object** %args, align 8, !dbg !4440, !tbaa !1100
  %2 = load %struct._object*, %struct._object** %args, align 8, !dbg !4441, !tbaa !1100
  %cmp2 = icmp eq %struct._object* %2, null, !dbg !4443
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4444

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !4445
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.18, !dbg !4445

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %object.addr, align 8, !dbg !4446, !tbaa !1100
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0, !dbg !4447
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !4448, !tbaa !1335
  %inc = add i64 %4, 1, !dbg !4448
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !4448, !tbaa !1335
  %5 = load %struct._object*, %struct._object** %object.addr, align 8, !dbg !4449, !tbaa !1100
  %6 = load %struct._object*, %struct._object** %args, align 8, !dbg !4450, !tbaa !1100
  %7 = bitcast %struct._object* %6 to %struct.PyTupleObject*, !dbg !4451
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %7, i32 0, i32 1, !dbg !4452
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0, !dbg !4453
  store %struct._object* %5, %struct._object** %arrayidx, align 8, !dbg !4454, !tbaa !1100
  %8 = load i8*, i8** %errors.addr, align 8, !dbg !4455, !tbaa !1100
  %tobool = icmp ne i8* %8, null, !dbg !4455
  br i1 %tobool, label %if.then.4, label %if.end.17, !dbg !4456

if.then.4:                                        ; preds = %if.end
  %9 = bitcast %struct._object** %v to i8*, !dbg !4457
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !4457
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !832, metadata !1104), !dbg !4458
  %10 = load i8*, i8** %errors.addr, align 8, !dbg !4459, !tbaa !1100
  %call5 = call %struct._object* @PyUnicode_FromString(i8* %10), !dbg !4460
  store %struct._object* %call5, %struct._object** %v, align 8, !dbg !4461, !tbaa !1100
  %11 = load %struct._object*, %struct._object** %v, align 8, !dbg !4462, !tbaa !1100
  %cmp6 = icmp eq %struct._object* %11, null, !dbg !4463
  br i1 %cmp6, label %if.then.8, label %if.end.14, !dbg !4464

if.then.8:                                        ; preds = %if.then.4
  br label %do.body, !dbg !4465

do.body:                                          ; preds = %if.then.8
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4466
  call void @llvm.lifetime.start(i64 8, i8* %12) #2, !dbg !4466
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !835, metadata !1104), !dbg !4468
  %13 = load %struct._object*, %struct._object** %args, align 8, !dbg !4469, !tbaa !1100
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8, !dbg !4468, !tbaa !1100
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4470, !tbaa !1100
  %ob_refcnt9 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0, !dbg !4472
  %15 = load i64, i64* %ob_refcnt9, align 8, !dbg !4473, !tbaa !1335
  %dec = add i64 %15, -1, !dbg !4473
  store i64 %dec, i64* %ob_refcnt9, align 8, !dbg !4473, !tbaa !1335
  %cmp10 = icmp ne i64 %dec, 0, !dbg !4474
  br i1 %cmp10, label %if.then.12, label %if.else, !dbg !4475

if.then.12:                                       ; preds = %do.body
  br label %if.end.13, !dbg !4476

if.else:                                          ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4478, !tbaa !1100
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1, !dbg !4480
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4480, !tbaa !1344
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4, !dbg !4481
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4481, !tbaa !1346
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4482, !tbaa !1100
  call void %18(%struct._object* %19), !dbg !4483
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4484
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !4484
  br label %do.cond, !dbg !4486

do.cond:                                          ; preds = %if.end.13
  br label %do.end, !dbg !4487

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !4489
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4489

if.end.14:                                        ; preds = %if.then.4
  %21 = load %struct._object*, %struct._object** %v, align 8, !dbg !4490, !tbaa !1100
  %22 = load %struct._object*, %struct._object** %args, align 8, !dbg !4491, !tbaa !1100
  %23 = bitcast %struct._object* %22 to %struct.PyTupleObject*, !dbg !4492
  %ob_item15 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %23, i32 0, i32 1, !dbg !4493
  %arrayidx16 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item15, i32 0, i64 1, !dbg !4494
  store %struct._object* %21, %struct._object** %arrayidx16, align 8, !dbg !4495, !tbaa !1100
  store i32 0, i32* %cleanup.dest.slot, !dbg !4496
  br label %cleanup, !dbg !4496

cleanup:                                          ; preds = %if.end.14, %do.end
  %24 = bitcast %struct._object** %v to i8*, !dbg !4497
  call void @llvm.lifetime.end(i64 8, i8* %24) #2, !dbg !4497
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.18 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.17, !dbg !4499

if.end.17:                                        ; preds = %cleanup.cont, %if.end
  %25 = load %struct._object*, %struct._object** %args, align 8, !dbg !4500, !tbaa !1100
  store %struct._object* %25, %struct._object** %retval, !dbg !4501
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.18, !dbg !4501

cleanup.18:                                       ; preds = %if.end.17, %cleanup, %if.then
  %26 = bitcast %struct._object** %args to i8*, !dbg !4502
  call void @llvm.lifetime.end(i64 8, i8* %26) #2, !dbg !4502
  %27 = load %struct._object*, %struct._object** %retval, !dbg !4502
  ret %struct._object* %27, !dbg !4502
}

; Function Attrs: nounwind uwtable
define internal void @wrap_codec_error(i8* %operation, i8* %encoding) #0 {
entry:
  %operation.addr = alloca i8*, align 8
  %encoding.addr = alloca i8*, align 8
  store i8* %operation, i8** %operation.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %operation.addr, metadata !843, metadata !1104), !dbg !4503
  store i8* %encoding, i8** %encoding.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %encoding.addr, metadata !844, metadata !1104), !dbg !4504
  %0 = load i8*, i8** %operation.addr, align 8, !dbg !4505, !tbaa !1100
  %1 = load i8*, i8** %encoding.addr, align 8, !dbg !4506, !tbaa !1100
  %call = call %struct._object* (i8*, ...) @_PyErr_TrySetFromCause(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i32 0, i32 0), i8* %0, i8* %1), !dbg !4507
  ret void, !dbg !4508
}

declare %struct._object* @_PyErr_TrySetFromCause(i8*, ...) #4

; Function Attrs: nounwind uwtable
define internal %struct._object* @codec_getitem_checked(i8* %encoding, i8* %alternate_command, i32 %index) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %encoding.addr = alloca i8*, align 8
  %alternate_command.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  %codec = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %encoding.addr, metadata !882, metadata !1104), !dbg !4509
  store i8* %alternate_command, i8** %alternate_command.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %alternate_command.addr, metadata !883, metadata !1104), !dbg !4510
  store i32 %index, i32* %index.addr, align 4, !tbaa !1298
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !884, metadata !1104), !dbg !4511
  %0 = bitcast %struct._object** %codec to i8*, !dbg !4512
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4512
  call void @llvm.dbg.declare(metadata %struct._object** %codec, metadata !885, metadata !1104), !dbg !4513
  %1 = bitcast %struct._object** %v to i8*, !dbg !4514
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !4514
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !886, metadata !1104), !dbg !4515
  %2 = load i8*, i8** %encoding.addr, align 8, !dbg !4516, !tbaa !1100
  %3 = load i8*, i8** %alternate_command.addr, align 8, !dbg !4517, !tbaa !1100
  %call = call %struct._object* @_PyCodec_LookupTextEncoding(i8* %2, i8* %3), !dbg !4518
  store %struct._object* %call, %struct._object** %codec, align 8, !dbg !4519, !tbaa !1100
  %4 = load %struct._object*, %struct._object** %codec, align 8, !dbg !4520, !tbaa !1100
  %cmp = icmp eq %struct._object* %4, null, !dbg !4522
  br i1 %cmp, label %if.then, label %if.end, !dbg !4523

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !4524
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4524

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %index.addr, align 4, !dbg !4525, !tbaa !1298
  %idxprom = sext i32 %5 to i64, !dbg !4526
  %6 = load %struct._object*, %struct._object** %codec, align 8, !dbg !4527, !tbaa !1100
  %7 = bitcast %struct._object* %6 to %struct.PyTupleObject*, !dbg !4528
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %7, i32 0, i32 1, !dbg !4529
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom, !dbg !4526
  %8 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !4526, !tbaa !1100
  store %struct._object* %8, %struct._object** %v, align 8, !dbg !4530, !tbaa !1100
  %9 = load %struct._object*, %struct._object** %v, align 8, !dbg !4531, !tbaa !1100
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !4532
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !4533, !tbaa !1335
  %inc = add i64 %10, 1, !dbg !4533
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !4533, !tbaa !1335
  br label %do.body, !dbg !4534

do.body:                                          ; preds = %if.end
  %11 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4535
  call void @llvm.lifetime.start(i64 8, i8* %11) #2, !dbg !4535
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !887, metadata !1104), !dbg !4537
  %12 = load %struct._object*, %struct._object** %codec, align 8, !dbg !4538, !tbaa !1100
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8, !dbg !4537, !tbaa !1100
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4539, !tbaa !1100
  %ob_refcnt1 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !4541
  %14 = load i64, i64* %ob_refcnt1, align 8, !dbg !4542, !tbaa !1335
  %dec = add i64 %14, -1, !dbg !4542
  store i64 %dec, i64* %ob_refcnt1, align 8, !dbg !4542, !tbaa !1335
  %cmp2 = icmp ne i64 %dec, 0, !dbg !4543
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !4544

if.then.3:                                        ; preds = %do.body
  br label %if.end.4, !dbg !4545

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4547, !tbaa !1100
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !4549
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4549, !tbaa !1344
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4, !dbg !4550
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4550, !tbaa !1346
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4551, !tbaa !1100
  call void %17(%struct._object* %18), !dbg !4552
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %19 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4553
  call void @llvm.lifetime.end(i64 8, i8* %19) #2, !dbg !4553
  br label %do.cond, !dbg !4555

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !4556

do.end:                                           ; preds = %do.cond
  %20 = load %struct._object*, %struct._object** %v, align 8, !dbg !4558, !tbaa !1100
  store %struct._object* %20, %struct._object** %retval, !dbg !4559
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4559

cleanup:                                          ; preds = %do.end, %if.then
  %21 = bitcast %struct._object** %v to i8*, !dbg !4560
  call void @llvm.lifetime.end(i64 8, i8* %21) #2, !dbg !4560
  %22 = bitcast %struct._object** %codec to i8*, !dbg !4560
  call void @llvm.lifetime.end(i64 8, i8* %22) #2, !dbg !4560
  %23 = load %struct._object*, %struct._object** %retval, !dbg !4560
  ret %struct._object* %23, !dbg !4560
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @strict_errors(%struct._object* %self, %struct._object* %exc) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %exc.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !930, metadata !1104), !dbg !4561
  store %struct._object* %exc, %struct._object** %exc.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %exc.addr, metadata !931, metadata !1104), !dbg !4562
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !4563, !tbaa !1100
  %call = call %struct._object* @PyCodec_StrictErrors(%struct._object* %0), !dbg !4564
  ret %struct._object* %call, !dbg !4565
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ignore_errors(%struct._object* %self, %struct._object* %exc) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %exc.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !934, metadata !1104), !dbg !4566
  store %struct._object* %exc, %struct._object** %exc.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %exc.addr, metadata !935, metadata !1104), !dbg !4567
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !4568, !tbaa !1100
  %call = call %struct._object* @PyCodec_IgnoreErrors(%struct._object* %0), !dbg !4569
  ret %struct._object* %call, !dbg !4570
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @replace_errors(%struct._object* %self, %struct._object* %exc) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %exc.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !938, metadata !1104), !dbg !4571
  store %struct._object* %exc, %struct._object** %exc.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %exc.addr, metadata !939, metadata !1104), !dbg !4572
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !4573, !tbaa !1100
  %call = call %struct._object* @PyCodec_ReplaceErrors(%struct._object* %0), !dbg !4574
  ret %struct._object* %call, !dbg !4575
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @xmlcharrefreplace_errors(%struct._object* %self, %struct._object* %exc) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %exc.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !942, metadata !1104), !dbg !4576
  store %struct._object* %exc, %struct._object** %exc.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %exc.addr, metadata !943, metadata !1104), !dbg !4577
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !4578, !tbaa !1100
  %call = call %struct._object* @PyCodec_XMLCharRefReplaceErrors(%struct._object* %0), !dbg !4579
  ret %struct._object* %call, !dbg !4580
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @backslashreplace_errors(%struct._object* %self, %struct._object* %exc) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %exc.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !946, metadata !1104), !dbg !4581
  store %struct._object* %exc, %struct._object** %exc.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %exc.addr, metadata !947, metadata !1104), !dbg !4582
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !4583, !tbaa !1100
  %call = call %struct._object* @PyCodec_BackslashReplaceErrors(%struct._object* %0), !dbg !4584
  ret %struct._object* %call, !dbg !4585
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @surrogatepass_errors(%struct._object* %self, %struct._object* %exc) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %exc.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !950, metadata !1104), !dbg !4586
  store %struct._object* %exc, %struct._object** %exc.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %exc.addr, metadata !951, metadata !1104), !dbg !4587
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !4588, !tbaa !1100
  %call = call %struct._object* @PyCodec_SurrogatePassErrors(%struct._object* %0), !dbg !4589
  ret %struct._object* %call, !dbg !4590
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @surrogateescape_errors(%struct._object* %self, %struct._object* %exc) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %exc.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !1029, metadata !1104), !dbg !4591
  store %struct._object* %exc, %struct._object** %exc.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %exc.addr, metadata !1030, metadata !1104), !dbg !4592
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !4593, !tbaa !1100
  %call = call %struct._object* @PyCodec_SurrogateEscapeErrors(%struct._object* %0), !dbg !4594
  ret %struct._object* %call, !dbg !4595
}

declare %struct._object* @PyList_New(i64) #4

declare %struct._object* @PyDict_New() #4

declare %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef*, %struct._object*, %struct._object*) #4

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #6

declare %struct._object* @PyImport_ImportModuleNoBlock(i8*) #4

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCodec_SurrogatePassErrors(%struct._object* %exc) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %exc.addr = alloca %struct._object*, align 8
  %restuple = alloca %struct._object*, align 8
  %object = alloca %struct._object*, align 8
  %encode = alloca %struct._object*, align 8
  %encoding = alloca i8*, align 8
  %code = alloca i32, align 4
  %bytelength = alloca i32, align 4
  %i = alloca i64, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %res = alloca %struct._object*, align 8
  %outp = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  %_py_decref_tmp48 = alloca %struct._object*, align 8
  %_py_decref_tmp63 = alloca %struct._object*, align 8
  %ch = alloca i32, align 4
  %_py_decref_tmp165 = alloca %struct._object*, align 8
  %_py_decref_tmp178 = alloca %struct._object*, align 8
  %_py_decref_tmp238 = alloca %struct._object*, align 8
  %_py_decref_tmp251 = alloca %struct._object*, align 8
  %p = alloca i8*, align 8
  %ch268 = alloca i32, align 4
  %_py_decref_tmp285 = alloca %struct._object*, align 8
  %_py_decref_tmp302 = alloca %struct._object*, align 8
  %_py_decref_tmp319 = alloca %struct._object*, align 8
  %_py_decref_tmp332 = alloca %struct._object*, align 8
  %_py_decref_tmp347 = alloca %struct._object*, align 8
  %_py_decref_tmp443 = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %exc.addr, metadata !954, metadata !1104), !dbg !4596
  %0 = bitcast %struct._object** %restuple to i8*, !dbg !4597
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4597
  call void @llvm.dbg.declare(metadata %struct._object** %restuple, metadata !955, metadata !1104), !dbg !4598
  %1 = bitcast %struct._object** %object to i8*, !dbg !4599
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !4599
  call void @llvm.dbg.declare(metadata %struct._object** %object, metadata !956, metadata !1104), !dbg !4600
  %2 = bitcast %struct._object** %encode to i8*, !dbg !4601
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !4601
  call void @llvm.dbg.declare(metadata %struct._object** %encode, metadata !957, metadata !1104), !dbg !4602
  %3 = bitcast i8** %encoding to i8*, !dbg !4603
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !4603
  call void @llvm.dbg.declare(metadata i8** %encoding, metadata !958, metadata !1104), !dbg !4604
  %4 = bitcast i32* %code to i8*, !dbg !4605
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !4605
  call void @llvm.dbg.declare(metadata i32* %code, metadata !959, metadata !1104), !dbg !4606
  %5 = bitcast i32* %bytelength to i8*, !dbg !4607
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !4607
  call void @llvm.dbg.declare(metadata i32* %bytelength, metadata !960, metadata !1104), !dbg !4608
  %6 = bitcast i64* %i to i8*, !dbg !4609
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !4609
  call void @llvm.dbg.declare(metadata i64* %i, metadata !961, metadata !1104), !dbg !4610
  %7 = bitcast i64* %start to i8*, !dbg !4611
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !4611
  call void @llvm.dbg.declare(metadata i64* %start, metadata !962, metadata !1104), !dbg !4612
  %8 = bitcast i64* %end to i8*, !dbg !4613
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !4613
  call void @llvm.dbg.declare(metadata i64* %end, metadata !963, metadata !1104), !dbg !4614
  %9 = bitcast %struct._object** %res to i8*, !dbg !4615
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !4615
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !964, metadata !1104), !dbg !4616
  %10 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !4617, !tbaa !1100
  %11 = load %struct._object*, %struct._object** @PyExc_UnicodeEncodeError, align 8, !dbg !4618, !tbaa !1100
  %call = call i32 @PyObject_IsInstance(%struct._object* %10, %struct._object* %11), !dbg !4619
  %tobool = icmp ne i32 %call, 0, !dbg !4619
  br i1 %tobool, label %if.then, label %if.else.264, !dbg !4620

if.then:                                          ; preds = %entry
  %12 = bitcast i8** %outp to i8*, !dbg !4621
  call void @llvm.lifetime.start(i64 8, i8* %12) #2, !dbg !4621
  call void @llvm.dbg.declare(metadata i8** %outp, metadata !965, metadata !1104), !dbg !4622
  %13 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !4623, !tbaa !1100
  %call1 = call i32 @PyUnicodeEncodeError_GetStart(%struct._object* %13, i64* %start), !dbg !4625
  %tobool2 = icmp ne i32 %call1, 0, !dbg !4625
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !4626

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !4627
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.263, !dbg !4627

if.end:                                           ; preds = %if.then
  %14 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !4628, !tbaa !1100
  %call4 = call i32 @PyUnicodeEncodeError_GetEnd(%struct._object* %14, i64* %end), !dbg !4630
  %tobool5 = icmp ne i32 %call4, 0, !dbg !4630
  br i1 %tobool5, label %if.then.6, label %if.end.7, !dbg !4631

if.then.6:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !4632
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.263, !dbg !4632

if.end.7:                                         ; preds = %if.end
  %15 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !4633, !tbaa !1100
  %call8 = call %struct._object* @PyUnicodeEncodeError_GetObject(%struct._object* %15), !dbg !4635
  store %struct._object* %call8, %struct._object** %object, align 8, !dbg !4636, !tbaa !1100
  %tobool9 = icmp ne %struct._object* %call8, null, !dbg !4636
  br i1 %tobool9, label %if.end.11, label %if.then.10, !dbg !4637

if.then.10:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval, !dbg !4638
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.263, !dbg !4638

if.end.11:                                        ; preds = %if.end.7
  %16 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !4639, !tbaa !1100
  %call12 = call %struct._object* @PyUnicodeEncodeError_GetEncoding(%struct._object* %16), !dbg !4640
  store %struct._object* %call12, %struct._object** %encode, align 8, !dbg !4641, !tbaa !1100
  %tobool13 = icmp ne %struct._object* %call12, null, !dbg !4641
  br i1 %tobool13, label %if.end.17, label %if.then.14, !dbg !4642

if.then.14:                                       ; preds = %if.end.11
  br label %do.body, !dbg !4643

do.body:                                          ; preds = %if.then.14
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4644
  call void @llvm.lifetime.start(i64 8, i8* %17) #2, !dbg !4644
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !968, metadata !1104), !dbg !4646
  %18 = load %struct._object*, %struct._object** %object, align 8, !dbg !4647, !tbaa !1100
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8, !dbg !4646, !tbaa !1100
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4648, !tbaa !1100
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0, !dbg !4650
  %20 = load i64, i64* %ob_refcnt, align 8, !dbg !4651, !tbaa !1335
  %dec = add i64 %20, -1, !dbg !4651
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4651, !tbaa !1335
  %cmp = icmp ne i64 %dec, 0, !dbg !4652
  br i1 %cmp, label %if.then.15, label %if.else, !dbg !4653

if.then.15:                                       ; preds = %do.body
  br label %if.end.16, !dbg !4654

if.else:                                          ; preds = %do.body
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4656, !tbaa !1100
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1, !dbg !4658
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4658, !tbaa !1344
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4, !dbg !4659
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4659, !tbaa !1346
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4660, !tbaa !1100
  call void %23(%struct._object* %24), !dbg !4661
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  %25 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4662
  call void @llvm.lifetime.end(i64 8, i8* %25) #2, !dbg !4662
  br label %do.cond, !dbg !4664

do.cond:                                          ; preds = %if.end.16
  br label %do.end, !dbg !4665

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !4667
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.263, !dbg !4667

if.end.17:                                        ; preds = %if.end.11
  %26 = load %struct._object*, %struct._object** %encode, align 8, !dbg !4668, !tbaa !1100
  %call18 = call i8* @PyUnicode_AsUTF8(%struct._object* %26), !dbg !4669
  store i8* %call18, i8** %encoding, align 8, !dbg !4670, !tbaa !1100
  %tobool19 = icmp ne i8* %call18, null, !dbg !4670
  br i1 %tobool19, label %if.end.45, label %if.then.20, !dbg !4671

if.then.20:                                       ; preds = %if.end.17
  br label %do.body.21, !dbg !4672

do.body.21:                                       ; preds = %if.then.20
  %27 = bitcast %struct._object** %_py_decref_tmp22 to i8*, !dbg !4673
  call void @llvm.lifetime.start(i64 8, i8* %27) #2, !dbg !4673
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp22, metadata !972, metadata !1104), !dbg !4675
  %28 = load %struct._object*, %struct._object** %object, align 8, !dbg !4676, !tbaa !1100
  store %struct._object* %28, %struct._object** %_py_decref_tmp22, align 8, !dbg !4675, !tbaa !1100
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8, !dbg !4677, !tbaa !1100
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0, !dbg !4679
  %30 = load i64, i64* %ob_refcnt23, align 8, !dbg !4680, !tbaa !1335
  %dec24 = add i64 %30, -1, !dbg !4680
  store i64 %dec24, i64* %ob_refcnt23, align 8, !dbg !4680, !tbaa !1335
  %cmp25 = icmp ne i64 %dec24, 0, !dbg !4681
  br i1 %cmp25, label %if.then.26, label %if.else.27, !dbg !4682

if.then.26:                                       ; preds = %do.body.21
  br label %if.end.30, !dbg !4683

if.else.27:                                       ; preds = %do.body.21
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8, !dbg !4685, !tbaa !1100
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1, !dbg !4687
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8, !dbg !4687, !tbaa !1344
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4, !dbg !4688
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8, !dbg !4688, !tbaa !1346
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8, !dbg !4689, !tbaa !1100
  call void %33(%struct._object* %34), !dbg !4690
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  %35 = bitcast %struct._object** %_py_decref_tmp22 to i8*, !dbg !4691
  call void @llvm.lifetime.end(i64 8, i8* %35) #2, !dbg !4691
  br label %do.cond.31, !dbg !4693

do.cond.31:                                       ; preds = %if.end.30
  br label %do.end.32, !dbg !4694

do.end.32:                                        ; preds = %do.cond.31
  br label %do.body.33, !dbg !4696

do.body.33:                                       ; preds = %do.end.32
  %36 = bitcast %struct._object** %_py_decref_tmp34 to i8*, !dbg !4697
  call void @llvm.lifetime.start(i64 8, i8* %36) #2, !dbg !4697
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp34, metadata !976, metadata !1104), !dbg !4699
  %37 = load %struct._object*, %struct._object** %encode, align 8, !dbg !4700, !tbaa !1100
  store %struct._object* %37, %struct._object** %_py_decref_tmp34, align 8, !dbg !4699, !tbaa !1100
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !4701, !tbaa !1100
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0, !dbg !4703
  %39 = load i64, i64* %ob_refcnt35, align 8, !dbg !4704, !tbaa !1335
  %dec36 = add i64 %39, -1, !dbg !4704
  store i64 %dec36, i64* %ob_refcnt35, align 8, !dbg !4704, !tbaa !1335
  %cmp37 = icmp ne i64 %dec36, 0, !dbg !4705
  br i1 %cmp37, label %if.then.38, label %if.else.39, !dbg !4706

if.then.38:                                       ; preds = %do.body.33
  br label %if.end.42, !dbg !4707

if.else.39:                                       ; preds = %do.body.33
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !4709, !tbaa !1100
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1, !dbg !4711
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8, !dbg !4711, !tbaa !1344
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4, !dbg !4712
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8, !dbg !4712, !tbaa !1346
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !4713, !tbaa !1100
  call void %42(%struct._object* %43), !dbg !4714
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  %44 = bitcast %struct._object** %_py_decref_tmp34 to i8*, !dbg !4715
  call void @llvm.lifetime.end(i64 8, i8* %44) #2, !dbg !4715
  br label %do.cond.43, !dbg !4716

do.cond.43:                                       ; preds = %if.end.42
  br label %do.end.44, !dbg !4717

do.end.44:                                        ; preds = %do.cond.43
  store %struct._object* null, %struct._object** %retval, !dbg !4719
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.263, !dbg !4719

if.end.45:                                        ; preds = %if.end.17
  %45 = load i8*, i8** %encoding, align 8, !dbg !4720, !tbaa !1100
  %call46 = call i32 @get_standard_encoding(i8* %45, i32* %bytelength), !dbg !4721
  store i32 %call46, i32* %code, align 4, !dbg !4722, !tbaa !1298
  br label %do.body.47, !dbg !4723

do.body.47:                                       ; preds = %if.end.45
  %46 = bitcast %struct._object** %_py_decref_tmp48 to i8*, !dbg !4724
  call void @llvm.lifetime.start(i64 8, i8* %46) #2, !dbg !4724
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp48, metadata !978, metadata !1104), !dbg !4726
  %47 = load %struct._object*, %struct._object** %encode, align 8, !dbg !4727, !tbaa !1100
  store %struct._object* %47, %struct._object** %_py_decref_tmp48, align 8, !dbg !4726, !tbaa !1100
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8, !dbg !4728, !tbaa !1100
  %ob_refcnt49 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0, !dbg !4730
  %49 = load i64, i64* %ob_refcnt49, align 8, !dbg !4731, !tbaa !1335
  %dec50 = add i64 %49, -1, !dbg !4731
  store i64 %dec50, i64* %ob_refcnt49, align 8, !dbg !4731, !tbaa !1335
  %cmp51 = icmp ne i64 %dec50, 0, !dbg !4732
  br i1 %cmp51, label %if.then.52, label %if.else.53, !dbg !4733

if.then.52:                                       ; preds = %do.body.47
  br label %if.end.56, !dbg !4734

if.else.53:                                       ; preds = %do.body.47
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8, !dbg !4736, !tbaa !1100
  %ob_type54 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1, !dbg !4738
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type54, align 8, !dbg !4738, !tbaa !1344
  %tp_dealloc55 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4, !dbg !4739
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc55, align 8, !dbg !4739, !tbaa !1346
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8, !dbg !4740, !tbaa !1100
  call void %52(%struct._object* %53), !dbg !4741
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.53, %if.then.52
  %54 = bitcast %struct._object** %_py_decref_tmp48 to i8*, !dbg !4742
  call void @llvm.lifetime.end(i64 8, i8* %54) #2, !dbg !4742
  br label %do.cond.57, !dbg !4744

do.cond.57:                                       ; preds = %if.end.56
  br label %do.end.58, !dbg !4745

do.end.58:                                        ; preds = %do.cond.57
  %55 = load i32, i32* %bytelength, align 4, !dbg !4747, !tbaa !1298
  %conv = sext i32 %55 to i64, !dbg !4747
  %56 = load i64, i64* %end, align 8, !dbg !4748, !tbaa !1553
  %57 = load i64, i64* %start, align 8, !dbg !4749, !tbaa !1553
  %sub = sub i64 %56, %57, !dbg !4750
  %mul = mul i64 %conv, %sub, !dbg !4751
  %call59 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %mul), !dbg !4752
  store %struct._object* %call59, %struct._object** %res, align 8, !dbg !4753, !tbaa !1100
  %58 = load %struct._object*, %struct._object** %res, align 8, !dbg !4754, !tbaa !1100
  %tobool60 = icmp ne %struct._object* %58, null, !dbg !4754
  br i1 %tobool60, label %if.end.75, label %if.then.61, !dbg !4755

if.then.61:                                       ; preds = %do.end.58
  br label %do.body.62, !dbg !4756

do.body.62:                                       ; preds = %if.then.61
  %59 = bitcast %struct._object** %_py_decref_tmp63 to i8*, !dbg !4757
  call void @llvm.lifetime.start(i64 8, i8* %59) #2, !dbg !4757
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp63, metadata !980, metadata !1104), !dbg !4759
  %60 = load %struct._object*, %struct._object** %object, align 8, !dbg !4760, !tbaa !1100
  store %struct._object* %60, %struct._object** %_py_decref_tmp63, align 8, !dbg !4759, !tbaa !1100
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8, !dbg !4761, !tbaa !1100
  %ob_refcnt64 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 0, !dbg !4763
  %62 = load i64, i64* %ob_refcnt64, align 8, !dbg !4764, !tbaa !1335
  %dec65 = add i64 %62, -1, !dbg !4764
  store i64 %dec65, i64* %ob_refcnt64, align 8, !dbg !4764, !tbaa !1335
  %cmp66 = icmp ne i64 %dec65, 0, !dbg !4765
  br i1 %cmp66, label %if.then.68, label %if.else.69, !dbg !4766

if.then.68:                                       ; preds = %do.body.62
  br label %if.end.72, !dbg !4767

if.else.69:                                       ; preds = %do.body.62
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8, !dbg !4769, !tbaa !1100
  %ob_type70 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 1, !dbg !4771
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type70, align 8, !dbg !4771, !tbaa !1344
  %tp_dealloc71 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %64, i32 0, i32 4, !dbg !4772
  %65 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71, align 8, !dbg !4772, !tbaa !1346
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8, !dbg !4773, !tbaa !1100
  call void %65(%struct._object* %66), !dbg !4774
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.69, %if.then.68
  %67 = bitcast %struct._object** %_py_decref_tmp63 to i8*, !dbg !4775
  call void @llvm.lifetime.end(i64 8, i8* %67) #2, !dbg !4775
  br label %do.cond.73, !dbg !4777

do.cond.73:                                       ; preds = %if.end.72
  br label %do.end.74, !dbg !4778

do.end.74:                                        ; preds = %do.cond.73
  store %struct._object* null, %struct._object** %retval, !dbg !4780
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.263, !dbg !4780

if.end.75:                                        ; preds = %do.end.58
  %68 = load %struct._object*, %struct._object** %res, align 8, !dbg !4781, !tbaa !1100
  %call76 = call i8* @PyBytes_AsString(%struct._object* %68), !dbg !4782
  store i8* %call76, i8** %outp, align 8, !dbg !4783, !tbaa !1100
  %69 = load i64, i64* %start, align 8, !dbg !4784, !tbaa !1553
  store i64 %69, i64* %i, align 8, !dbg !4785, !tbaa !1553
  br label %for.cond, !dbg !4786

for.cond:                                         ; preds = %for.inc, %if.end.75
  %70 = load i64, i64* %i, align 8, !dbg !4787, !tbaa !1553
  %71 = load i64, i64* %end, align 8, !dbg !4790, !tbaa !1553
  %cmp77 = icmp slt i64 %70, %71, !dbg !4791
  br i1 %cmp77, label %for.body, label %for.end, !dbg !4792

for.body:                                         ; preds = %for.cond
  %72 = bitcast i32* %ch to i8*, !dbg !4793
  call void @llvm.lifetime.start(i64 4, i8* %72) #2, !dbg !4793
  call void @llvm.dbg.declare(metadata i32* %ch, metadata !984, metadata !1104), !dbg !4794
  %73 = load %struct._object*, %struct._object** %object, align 8, !dbg !4795, !tbaa !1100
  %74 = bitcast %struct._object* %73 to %struct.PyASCIIObject*, !dbg !4796
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %74, i32 0, i32 3, !dbg !4797
  %75 = bitcast %struct.anon* %state to i32*, !dbg !4798
  %bf.load = load i32, i32* %75, align 4, !dbg !4798
  %bf.lshr = lshr i32 %bf.load, 2, !dbg !4798
  %bf.clear = and i32 %bf.lshr, 7, !dbg !4798
  %cmp79 = icmp eq i32 %bf.clear, 1, !dbg !4799
  br i1 %cmp79, label %cond.true, label %cond.false.98, !dbg !4800

cond.true:                                        ; preds = %for.body
  %76 = load i64, i64* %i, align 8, !dbg !4801, !tbaa !1553
  %77 = load %struct._object*, %struct._object** %object, align 8, !dbg !4803, !tbaa !1100
  %78 = bitcast %struct._object* %77 to %struct.PyASCIIObject*, !dbg !4804
  %state81 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %78, i32 0, i32 3, !dbg !4805
  %79 = bitcast %struct.anon* %state81 to i32*, !dbg !4806
  %bf.load82 = load i32, i32* %79, align 4, !dbg !4806
  %bf.lshr83 = lshr i32 %bf.load82, 5, !dbg !4806
  %bf.clear84 = and i32 %bf.lshr83, 1, !dbg !4806
  %tobool85 = icmp ne i32 %bf.clear84, 0, !dbg !4807
  br i1 %tobool85, label %cond.true.86, label %cond.false.94, !dbg !4807

cond.true.86:                                     ; preds = %cond.true
  %80 = load %struct._object*, %struct._object** %object, align 8, !dbg !4808, !tbaa !1100
  %81 = bitcast %struct._object* %80 to %struct.PyASCIIObject*, !dbg !4810
  %state87 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %81, i32 0, i32 3, !dbg !4811
  %82 = bitcast %struct.anon* %state87 to i32*, !dbg !4812
  %bf.load88 = load i32, i32* %82, align 4, !dbg !4812
  %bf.lshr89 = lshr i32 %bf.load88, 6, !dbg !4812
  %bf.clear90 = and i32 %bf.lshr89, 1, !dbg !4812
  %tobool91 = icmp ne i32 %bf.clear90, 0, !dbg !4813
  br i1 %tobool91, label %cond.true.92, label %cond.false, !dbg !4813

cond.true.92:                                     ; preds = %cond.true.86
  %83 = load %struct._object*, %struct._object** %object, align 8, !dbg !4814, !tbaa !1100
  %84 = bitcast %struct._object* %83 to %struct.PyASCIIObject*, !dbg !4816
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %84, i64 1, !dbg !4817
  %85 = bitcast %struct.PyASCIIObject* %add.ptr to i8*, !dbg !4818
  br label %cond.end, !dbg !4813

cond.false:                                       ; preds = %cond.true.86
  %86 = load %struct._object*, %struct._object** %object, align 8, !dbg !4819, !tbaa !1100
  %87 = bitcast %struct._object* %86 to %struct.PyCompactUnicodeObject*, !dbg !4821
  %add.ptr93 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %87, i64 1, !dbg !4822
  %88 = bitcast %struct.PyCompactUnicodeObject* %add.ptr93 to i8*, !dbg !4823
  br label %cond.end, !dbg !4813

cond.end:                                         ; preds = %cond.false, %cond.true.92
  %cond = phi i8* [ %85, %cond.true.92 ], [ %88, %cond.false ], !dbg !4813
  br label %cond.end.95, !dbg !4824

cond.false.94:                                    ; preds = %cond.true
  %89 = load %struct._object*, %struct._object** %object, align 8, !dbg !4827, !tbaa !1100
  %90 = bitcast %struct._object* %89 to %struct.PyUnicodeObject*, !dbg !4829
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %90, i32 0, i32 1, !dbg !4830
  %any = bitcast %union.anon* %data to i8**, !dbg !4831
  %91 = load i8*, i8** %any, align 8, !dbg !4831, !tbaa !1100
  br label %cond.end.95, !dbg !4807

cond.end.95:                                      ; preds = %cond.false.94, %cond.end
  %cond96 = phi i8* [ %cond, %cond.end ], [ %91, %cond.false.94 ], !dbg !4807
  %arrayidx = getelementptr i8, i8* %cond96, i64 %76, !dbg !4832
  %92 = load i8, i8* %arrayidx, align 1, !dbg !4832, !tbaa !1118
  %conv97 = zext i8 %92 to i32, !dbg !4832
  br label %cond.end.156, !dbg !4800

cond.false.98:                                    ; preds = %for.body
  %93 = load %struct._object*, %struct._object** %object, align 8, !dbg !4835, !tbaa !1100
  %94 = bitcast %struct._object* %93 to %struct.PyASCIIObject*, !dbg !4837
  %state99 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %94, i32 0, i32 3, !dbg !4838
  %95 = bitcast %struct.anon* %state99 to i32*, !dbg !4839
  %bf.load100 = load i32, i32* %95, align 4, !dbg !4839
  %bf.lshr101 = lshr i32 %bf.load100, 2, !dbg !4839
  %bf.clear102 = and i32 %bf.lshr101, 7, !dbg !4839
  %cmp103 = icmp eq i32 %bf.clear102, 2, !dbg !4840
  br i1 %cmp103, label %cond.true.105, label %cond.false.130, !dbg !4841

cond.true.105:                                    ; preds = %cond.false.98
  %96 = load i64, i64* %i, align 8, !dbg !4842, !tbaa !1553
  %97 = load %struct._object*, %struct._object** %object, align 8, !dbg !4844, !tbaa !1100
  %98 = bitcast %struct._object* %97 to %struct.PyASCIIObject*, !dbg !4845
  %state106 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %98, i32 0, i32 3, !dbg !4846
  %99 = bitcast %struct.anon* %state106 to i32*, !dbg !4847
  %bf.load107 = load i32, i32* %99, align 4, !dbg !4847
  %bf.lshr108 = lshr i32 %bf.load107, 5, !dbg !4847
  %bf.clear109 = and i32 %bf.lshr108, 1, !dbg !4847
  %tobool110 = icmp ne i32 %bf.clear109, 0, !dbg !4848
  br i1 %tobool110, label %cond.true.111, label %cond.false.123, !dbg !4848

cond.true.111:                                    ; preds = %cond.true.105
  %100 = load %struct._object*, %struct._object** %object, align 8, !dbg !4849, !tbaa !1100
  %101 = bitcast %struct._object* %100 to %struct.PyASCIIObject*, !dbg !4851
  %state112 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %101, i32 0, i32 3, !dbg !4852
  %102 = bitcast %struct.anon* %state112 to i32*, !dbg !4853
  %bf.load113 = load i32, i32* %102, align 4, !dbg !4853
  %bf.lshr114 = lshr i32 %bf.load113, 6, !dbg !4853
  %bf.clear115 = and i32 %bf.lshr114, 1, !dbg !4853
  %tobool116 = icmp ne i32 %bf.clear115, 0, !dbg !4854
  br i1 %tobool116, label %cond.true.117, label %cond.false.119, !dbg !4854

cond.true.117:                                    ; preds = %cond.true.111
  %103 = load %struct._object*, %struct._object** %object, align 8, !dbg !4855, !tbaa !1100
  %104 = bitcast %struct._object* %103 to %struct.PyASCIIObject*, !dbg !4857
  %add.ptr118 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %104, i64 1, !dbg !4858
  %105 = bitcast %struct.PyASCIIObject* %add.ptr118 to i8*, !dbg !4859
  br label %cond.end.121, !dbg !4854

cond.false.119:                                   ; preds = %cond.true.111
  %106 = load %struct._object*, %struct._object** %object, align 8, !dbg !4860, !tbaa !1100
  %107 = bitcast %struct._object* %106 to %struct.PyCompactUnicodeObject*, !dbg !4862
  %add.ptr120 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %107, i64 1, !dbg !4863
  %108 = bitcast %struct.PyCompactUnicodeObject* %add.ptr120 to i8*, !dbg !4864
  br label %cond.end.121, !dbg !4854

cond.end.121:                                     ; preds = %cond.false.119, %cond.true.117
  %cond122 = phi i8* [ %105, %cond.true.117 ], [ %108, %cond.false.119 ], !dbg !4854
  br label %cond.end.126, !dbg !4865

cond.false.123:                                   ; preds = %cond.true.105
  %109 = load %struct._object*, %struct._object** %object, align 8, !dbg !4868, !tbaa !1100
  %110 = bitcast %struct._object* %109 to %struct.PyUnicodeObject*, !dbg !4870
  %data124 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %110, i32 0, i32 1, !dbg !4871
  %any125 = bitcast %union.anon* %data124 to i8**, !dbg !4872
  %111 = load i8*, i8** %any125, align 8, !dbg !4872, !tbaa !1100
  br label %cond.end.126, !dbg !4848

cond.end.126:                                     ; preds = %cond.false.123, %cond.end.121
  %cond127 = phi i8* [ %cond122, %cond.end.121 ], [ %111, %cond.false.123 ], !dbg !4848
  %112 = bitcast i8* %cond127 to i16*, !dbg !4873
  %arrayidx128 = getelementptr i16, i16* %112, i64 %96, !dbg !4876
  %113 = load i16, i16* %arrayidx128, align 2, !dbg !4876, !tbaa !3255
  %conv129 = zext i16 %113 to i32, !dbg !4876
  br label %cond.end.154, !dbg !4841

cond.false.130:                                   ; preds = %cond.false.98
  %114 = load i64, i64* %i, align 8, !dbg !4877, !tbaa !1553
  %115 = load %struct._object*, %struct._object** %object, align 8, !dbg !4879, !tbaa !1100
  %116 = bitcast %struct._object* %115 to %struct.PyASCIIObject*, !dbg !4880
  %state131 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %116, i32 0, i32 3, !dbg !4881
  %117 = bitcast %struct.anon* %state131 to i32*, !dbg !4882
  %bf.load132 = load i32, i32* %117, align 4, !dbg !4882
  %bf.lshr133 = lshr i32 %bf.load132, 5, !dbg !4882
  %bf.clear134 = and i32 %bf.lshr133, 1, !dbg !4882
  %tobool135 = icmp ne i32 %bf.clear134, 0, !dbg !4883
  br i1 %tobool135, label %cond.true.136, label %cond.false.148, !dbg !4883

cond.true.136:                                    ; preds = %cond.false.130
  %118 = load %struct._object*, %struct._object** %object, align 8, !dbg !4884, !tbaa !1100
  %119 = bitcast %struct._object* %118 to %struct.PyASCIIObject*, !dbg !4886
  %state137 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %119, i32 0, i32 3, !dbg !4887
  %120 = bitcast %struct.anon* %state137 to i32*, !dbg !4888
  %bf.load138 = load i32, i32* %120, align 4, !dbg !4888
  %bf.lshr139 = lshr i32 %bf.load138, 6, !dbg !4888
  %bf.clear140 = and i32 %bf.lshr139, 1, !dbg !4888
  %tobool141 = icmp ne i32 %bf.clear140, 0, !dbg !4889
  br i1 %tobool141, label %cond.true.142, label %cond.false.144, !dbg !4889

cond.true.142:                                    ; preds = %cond.true.136
  %121 = load %struct._object*, %struct._object** %object, align 8, !dbg !4890, !tbaa !1100
  %122 = bitcast %struct._object* %121 to %struct.PyASCIIObject*, !dbg !4892
  %add.ptr143 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %122, i64 1, !dbg !4893
  %123 = bitcast %struct.PyASCIIObject* %add.ptr143 to i8*, !dbg !4894
  br label %cond.end.146, !dbg !4889

cond.false.144:                                   ; preds = %cond.true.136
  %124 = load %struct._object*, %struct._object** %object, align 8, !dbg !4895, !tbaa !1100
  %125 = bitcast %struct._object* %124 to %struct.PyCompactUnicodeObject*, !dbg !4897
  %add.ptr145 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %125, i64 1, !dbg !4898
  %126 = bitcast %struct.PyCompactUnicodeObject* %add.ptr145 to i8*, !dbg !4899
  br label %cond.end.146, !dbg !4889

cond.end.146:                                     ; preds = %cond.false.144, %cond.true.142
  %cond147 = phi i8* [ %123, %cond.true.142 ], [ %126, %cond.false.144 ], !dbg !4889
  br label %cond.end.151, !dbg !4900

cond.false.148:                                   ; preds = %cond.false.130
  %127 = load %struct._object*, %struct._object** %object, align 8, !dbg !4903, !tbaa !1100
  %128 = bitcast %struct._object* %127 to %struct.PyUnicodeObject*, !dbg !4905
  %data149 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %128, i32 0, i32 1, !dbg !4906
  %any150 = bitcast %union.anon* %data149 to i8**, !dbg !4907
  %129 = load i8*, i8** %any150, align 8, !dbg !4907, !tbaa !1100
  br label %cond.end.151, !dbg !4883

cond.end.151:                                     ; preds = %cond.false.148, %cond.end.146
  %cond152 = phi i8* [ %cond147, %cond.end.146 ], [ %129, %cond.false.148 ], !dbg !4883
  %130 = bitcast i8* %cond152 to i32*, !dbg !4908
  %arrayidx153 = getelementptr i32, i32* %130, i64 %114, !dbg !4911
  %131 = load i32, i32* %arrayidx153, align 4, !dbg !4911, !tbaa !1298
  br label %cond.end.154, !dbg !4841

cond.end.154:                                     ; preds = %cond.end.151, %cond.end.126
  %cond155 = phi i32 [ %conv129, %cond.end.126 ], [ %131, %cond.end.151 ], !dbg !4841
  br label %cond.end.156, !dbg !4912

cond.end.156:                                     ; preds = %cond.end.154, %cond.end.95
  %cond157 = phi i32 [ %conv97, %cond.end.95 ], [ %cond155, %cond.end.154 ], !dbg !4800
  store i32 %cond157, i32* %ch, align 4, !dbg !4915, !tbaa !1298
  %132 = load i32, i32* %ch, align 4, !dbg !4918, !tbaa !1298
  %cmp158 = icmp ule i32 55296, %132, !dbg !4919
  br i1 %cmp158, label %land.lhs.true, label %if.then.162, !dbg !4920

land.lhs.true:                                    ; preds = %cond.end.156
  %133 = load i32, i32* %ch, align 4, !dbg !4921, !tbaa !1298
  %cmp160 = icmp ule i32 %133, 57343, !dbg !4923
  br i1 %cmp160, label %if.end.190, label %if.then.162, !dbg !4924

if.then.162:                                      ; preds = %land.lhs.true, %cond.end.156
  %134 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !4925, !tbaa !1100
  %ob_type163 = getelementptr inbounds %struct._object, %struct._object* %134, i32 0, i32 1, !dbg !4926
  %135 = load %struct._typeobject*, %struct._typeobject** %ob_type163, align 8, !dbg !4926, !tbaa !1344
  %136 = bitcast %struct._typeobject* %135 to %struct._object*, !dbg !4927
  %137 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !4928, !tbaa !1100
  call void @PyErr_SetObject(%struct._object* %136, %struct._object* %137), !dbg !4929
  br label %do.body.164, !dbg !4930

do.body.164:                                      ; preds = %if.then.162
  %138 = bitcast %struct._object** %_py_decref_tmp165 to i8*, !dbg !4931
  call void @llvm.lifetime.start(i64 8, i8* %138) #2, !dbg !4931
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp165, metadata !988, metadata !1104), !dbg !4933
  %139 = load %struct._object*, %struct._object** %res, align 8, !dbg !4934, !tbaa !1100
  store %struct._object* %139, %struct._object** %_py_decref_tmp165, align 8, !dbg !4933, !tbaa !1100
  %140 = load %struct._object*, %struct._object** %_py_decref_tmp165, align 8, !dbg !4935, !tbaa !1100
  %ob_refcnt166 = getelementptr inbounds %struct._object, %struct._object* %140, i32 0, i32 0, !dbg !4937
  %141 = load i64, i64* %ob_refcnt166, align 8, !dbg !4938, !tbaa !1335
  %dec167 = add i64 %141, -1, !dbg !4938
  store i64 %dec167, i64* %ob_refcnt166, align 8, !dbg !4938, !tbaa !1335
  %cmp168 = icmp ne i64 %dec167, 0, !dbg !4939
  br i1 %cmp168, label %if.then.170, label %if.else.171, !dbg !4940

if.then.170:                                      ; preds = %do.body.164
  br label %if.end.174, !dbg !4941

if.else.171:                                      ; preds = %do.body.164
  %142 = load %struct._object*, %struct._object** %_py_decref_tmp165, align 8, !dbg !4943, !tbaa !1100
  %ob_type172 = getelementptr inbounds %struct._object, %struct._object* %142, i32 0, i32 1, !dbg !4945
  %143 = load %struct._typeobject*, %struct._typeobject** %ob_type172, align 8, !dbg !4945, !tbaa !1344
  %tp_dealloc173 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %143, i32 0, i32 4, !dbg !4946
  %144 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc173, align 8, !dbg !4946, !tbaa !1346
  %145 = load %struct._object*, %struct._object** %_py_decref_tmp165, align 8, !dbg !4947, !tbaa !1100
  call void %144(%struct._object* %145), !dbg !4948
  br label %if.end.174

if.end.174:                                       ; preds = %if.else.171, %if.then.170
  %146 = bitcast %struct._object** %_py_decref_tmp165 to i8*, !dbg !4949
  call void @llvm.lifetime.end(i64 8, i8* %146) #2, !dbg !4949
  br label %do.cond.175, !dbg !4951

do.cond.175:                                      ; preds = %if.end.174
  br label %do.end.176, !dbg !4952

do.end.176:                                       ; preds = %do.cond.175
  br label %do.body.177, !dbg !4954

do.body.177:                                      ; preds = %do.end.176
  %147 = bitcast %struct._object** %_py_decref_tmp178 to i8*, !dbg !4955
  call void @llvm.lifetime.start(i64 8, i8* %147) #2, !dbg !4955
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp178, metadata !992, metadata !1104), !dbg !4957
  %148 = load %struct._object*, %struct._object** %object, align 8, !dbg !4958, !tbaa !1100
  store %struct._object* %148, %struct._object** %_py_decref_tmp178, align 8, !dbg !4957, !tbaa !1100
  %149 = load %struct._object*, %struct._object** %_py_decref_tmp178, align 8, !dbg !4959, !tbaa !1100
  %ob_refcnt179 = getelementptr inbounds %struct._object, %struct._object* %149, i32 0, i32 0, !dbg !4961
  %150 = load i64, i64* %ob_refcnt179, align 8, !dbg !4962, !tbaa !1335
  %dec180 = add i64 %150, -1, !dbg !4962
  store i64 %dec180, i64* %ob_refcnt179, align 8, !dbg !4962, !tbaa !1335
  %cmp181 = icmp ne i64 %dec180, 0, !dbg !4963
  br i1 %cmp181, label %if.then.183, label %if.else.184, !dbg !4964

if.then.183:                                      ; preds = %do.body.177
  br label %if.end.187, !dbg !4965

if.else.184:                                      ; preds = %do.body.177
  %151 = load %struct._object*, %struct._object** %_py_decref_tmp178, align 8, !dbg !4967, !tbaa !1100
  %ob_type185 = getelementptr inbounds %struct._object, %struct._object* %151, i32 0, i32 1, !dbg !4969
  %152 = load %struct._typeobject*, %struct._typeobject** %ob_type185, align 8, !dbg !4969, !tbaa !1344
  %tp_dealloc186 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %152, i32 0, i32 4, !dbg !4970
  %153 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc186, align 8, !dbg !4970, !tbaa !1346
  %154 = load %struct._object*, %struct._object** %_py_decref_tmp178, align 8, !dbg !4971, !tbaa !1100
  call void %153(%struct._object* %154), !dbg !4972
  br label %if.end.187

if.end.187:                                       ; preds = %if.else.184, %if.then.183
  %155 = bitcast %struct._object** %_py_decref_tmp178 to i8*, !dbg !4973
  call void @llvm.lifetime.end(i64 8, i8* %155) #2, !dbg !4973
  br label %do.cond.188, !dbg !4974

do.cond.188:                                      ; preds = %if.end.187
  br label %do.end.189, !dbg !4975

do.end.189:                                       ; preds = %do.cond.188
  store %struct._object* null, %struct._object** %retval, !dbg !4977
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4977

if.end.190:                                       ; preds = %land.lhs.true
  %156 = load i32, i32* %code, align 4, !dbg !4978, !tbaa !1298
  switch i32 %156, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.200
    i32 1, label %sw.bb.206
    i32 4, label %sw.bb.212
    i32 3, label %sw.bb.224
  ], !dbg !4979

sw.bb:                                            ; preds = %if.end.190
  %157 = load i32, i32* %ch, align 4, !dbg !4980, !tbaa !1298
  %shr = lshr i32 %157, 12, !dbg !4982
  %or = or i32 224, %shr, !dbg !4983
  %conv191 = trunc i32 %or to i8, !dbg !4984
  %158 = load i8*, i8** %outp, align 8, !dbg !4985, !tbaa !1100
  %incdec.ptr = getelementptr i8, i8* %158, i32 1, !dbg !4985
  store i8* %incdec.ptr, i8** %outp, align 8, !dbg !4985, !tbaa !1100
  store i8 %conv191, i8* %158, align 1, !dbg !4986, !tbaa !1118
  %159 = load i32, i32* %ch, align 4, !dbg !4987, !tbaa !1298
  %shr192 = lshr i32 %159, 6, !dbg !4988
  %and = and i32 %shr192, 63, !dbg !4989
  %or193 = or i32 128, %and, !dbg !4990
  %conv194 = trunc i32 %or193 to i8, !dbg !4991
  %160 = load i8*, i8** %outp, align 8, !dbg !4992, !tbaa !1100
  %incdec.ptr195 = getelementptr i8, i8* %160, i32 1, !dbg !4992
  store i8* %incdec.ptr195, i8** %outp, align 8, !dbg !4992, !tbaa !1100
  store i8 %conv194, i8* %160, align 1, !dbg !4993, !tbaa !1118
  %161 = load i32, i32* %ch, align 4, !dbg !4994, !tbaa !1298
  %and196 = and i32 %161, 63, !dbg !4995
  %or197 = or i32 128, %and196, !dbg !4996
  %conv198 = trunc i32 %or197 to i8, !dbg !4997
  %162 = load i8*, i8** %outp, align 8, !dbg !4998, !tbaa !1100
  %incdec.ptr199 = getelementptr i8, i8* %162, i32 1, !dbg !4998
  store i8* %incdec.ptr199, i8** %outp, align 8, !dbg !4998, !tbaa !1100
  store i8 %conv198, i8* %162, align 1, !dbg !4999, !tbaa !1118
  br label %sw.epilog, !dbg !5000

sw.bb.200:                                        ; preds = %if.end.190
  %163 = load i32, i32* %ch, align 4, !dbg !5001, !tbaa !1298
  %conv201 = trunc i32 %163 to i8, !dbg !5002
  %164 = load i8*, i8** %outp, align 8, !dbg !5003, !tbaa !1100
  %incdec.ptr202 = getelementptr i8, i8* %164, i32 1, !dbg !5003
  store i8* %incdec.ptr202, i8** %outp, align 8, !dbg !5003, !tbaa !1100
  store i8 %conv201, i8* %164, align 1, !dbg !5004, !tbaa !1118
  %165 = load i32, i32* %ch, align 4, !dbg !5005, !tbaa !1298
  %shr203 = lshr i32 %165, 8, !dbg !5006
  %conv204 = trunc i32 %shr203 to i8, !dbg !5007
  %166 = load i8*, i8** %outp, align 8, !dbg !5008, !tbaa !1100
  %incdec.ptr205 = getelementptr i8, i8* %166, i32 1, !dbg !5008
  store i8* %incdec.ptr205, i8** %outp, align 8, !dbg !5008, !tbaa !1100
  store i8 %conv204, i8* %166, align 1, !dbg !5009, !tbaa !1118
  br label %sw.epilog, !dbg !5010

sw.bb.206:                                        ; preds = %if.end.190
  %167 = load i32, i32* %ch, align 4, !dbg !5011, !tbaa !1298
  %shr207 = lshr i32 %167, 8, !dbg !5012
  %conv208 = trunc i32 %shr207 to i8, !dbg !5013
  %168 = load i8*, i8** %outp, align 8, !dbg !5014, !tbaa !1100
  %incdec.ptr209 = getelementptr i8, i8* %168, i32 1, !dbg !5014
  store i8* %incdec.ptr209, i8** %outp, align 8, !dbg !5014, !tbaa !1100
  store i8 %conv208, i8* %168, align 1, !dbg !5015, !tbaa !1118
  %169 = load i32, i32* %ch, align 4, !dbg !5016, !tbaa !1298
  %conv210 = trunc i32 %169 to i8, !dbg !5017
  %170 = load i8*, i8** %outp, align 8, !dbg !5018, !tbaa !1100
  %incdec.ptr211 = getelementptr i8, i8* %170, i32 1, !dbg !5018
  store i8* %incdec.ptr211, i8** %outp, align 8, !dbg !5018, !tbaa !1100
  store i8 %conv210, i8* %170, align 1, !dbg !5019, !tbaa !1118
  br label %sw.epilog, !dbg !5020

sw.bb.212:                                        ; preds = %if.end.190
  %171 = load i32, i32* %ch, align 4, !dbg !5021, !tbaa !1298
  %conv213 = trunc i32 %171 to i8, !dbg !5022
  %172 = load i8*, i8** %outp, align 8, !dbg !5023, !tbaa !1100
  %incdec.ptr214 = getelementptr i8, i8* %172, i32 1, !dbg !5023
  store i8* %incdec.ptr214, i8** %outp, align 8, !dbg !5023, !tbaa !1100
  store i8 %conv213, i8* %172, align 1, !dbg !5024, !tbaa !1118
  %173 = load i32, i32* %ch, align 4, !dbg !5025, !tbaa !1298
  %shr215 = lshr i32 %173, 8, !dbg !5026
  %conv216 = trunc i32 %shr215 to i8, !dbg !5027
  %174 = load i8*, i8** %outp, align 8, !dbg !5028, !tbaa !1100
  %incdec.ptr217 = getelementptr i8, i8* %174, i32 1, !dbg !5028
  store i8* %incdec.ptr217, i8** %outp, align 8, !dbg !5028, !tbaa !1100
  store i8 %conv216, i8* %174, align 1, !dbg !5029, !tbaa !1118
  %175 = load i32, i32* %ch, align 4, !dbg !5030, !tbaa !1298
  %shr218 = lshr i32 %175, 16, !dbg !5031
  %conv219 = trunc i32 %shr218 to i8, !dbg !5032
  %176 = load i8*, i8** %outp, align 8, !dbg !5033, !tbaa !1100
  %incdec.ptr220 = getelementptr i8, i8* %176, i32 1, !dbg !5033
  store i8* %incdec.ptr220, i8** %outp, align 8, !dbg !5033, !tbaa !1100
  store i8 %conv219, i8* %176, align 1, !dbg !5034, !tbaa !1118
  %177 = load i32, i32* %ch, align 4, !dbg !5035, !tbaa !1298
  %shr221 = lshr i32 %177, 24, !dbg !5036
  %conv222 = trunc i32 %shr221 to i8, !dbg !5037
  %178 = load i8*, i8** %outp, align 8, !dbg !5038, !tbaa !1100
  %incdec.ptr223 = getelementptr i8, i8* %178, i32 1, !dbg !5038
  store i8* %incdec.ptr223, i8** %outp, align 8, !dbg !5038, !tbaa !1100
  store i8 %conv222, i8* %178, align 1, !dbg !5039, !tbaa !1118
  br label %sw.epilog, !dbg !5040

sw.bb.224:                                        ; preds = %if.end.190
  %179 = load i32, i32* %ch, align 4, !dbg !5041, !tbaa !1298
  %shr225 = lshr i32 %179, 24, !dbg !5042
  %conv226 = trunc i32 %shr225 to i8, !dbg !5043
  %180 = load i8*, i8** %outp, align 8, !dbg !5044, !tbaa !1100
  %incdec.ptr227 = getelementptr i8, i8* %180, i32 1, !dbg !5044
  store i8* %incdec.ptr227, i8** %outp, align 8, !dbg !5044, !tbaa !1100
  store i8 %conv226, i8* %180, align 1, !dbg !5045, !tbaa !1118
  %181 = load i32, i32* %ch, align 4, !dbg !5046, !tbaa !1298
  %shr228 = lshr i32 %181, 16, !dbg !5047
  %conv229 = trunc i32 %shr228 to i8, !dbg !5048
  %182 = load i8*, i8** %outp, align 8, !dbg !5049, !tbaa !1100
  %incdec.ptr230 = getelementptr i8, i8* %182, i32 1, !dbg !5049
  store i8* %incdec.ptr230, i8** %outp, align 8, !dbg !5049, !tbaa !1100
  store i8 %conv229, i8* %182, align 1, !dbg !5050, !tbaa !1118
  %183 = load i32, i32* %ch, align 4, !dbg !5051, !tbaa !1298
  %shr231 = lshr i32 %183, 8, !dbg !5052
  %conv232 = trunc i32 %shr231 to i8, !dbg !5053
  %184 = load i8*, i8** %outp, align 8, !dbg !5054, !tbaa !1100
  %incdec.ptr233 = getelementptr i8, i8* %184, i32 1, !dbg !5054
  store i8* %incdec.ptr233, i8** %outp, align 8, !dbg !5054, !tbaa !1100
  store i8 %conv232, i8* %184, align 1, !dbg !5055, !tbaa !1118
  %185 = load i32, i32* %ch, align 4, !dbg !5056, !tbaa !1298
  %conv234 = trunc i32 %185 to i8, !dbg !5057
  %186 = load i8*, i8** %outp, align 8, !dbg !5058, !tbaa !1100
  %incdec.ptr235 = getelementptr i8, i8* %186, i32 1, !dbg !5058
  store i8* %incdec.ptr235, i8** %outp, align 8, !dbg !5058, !tbaa !1100
  store i8 %conv234, i8* %186, align 1, !dbg !5059, !tbaa !1118
  br label %sw.epilog, !dbg !5060

sw.epilog:                                        ; preds = %if.end.190, %sw.bb.224, %sw.bb.212, %sw.bb.206, %sw.bb.200, %sw.bb
  store i32 0, i32* %cleanup.dest.slot, !dbg !5061
  br label %cleanup, !dbg !5061

cleanup:                                          ; preds = %sw.epilog, %do.end.189
  %187 = bitcast i32* %ch to i8*, !dbg !5062
  call void @llvm.lifetime.end(i64 4, i8* %187) #2, !dbg !5062
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.263 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5063

for.inc:                                          ; preds = %cleanup.cont
  %188 = load i64, i64* %i, align 8, !dbg !5064, !tbaa !1553
  %inc = add i64 %188, 1, !dbg !5064
  store i64 %inc, i64* %i, align 8, !dbg !5064, !tbaa !1553
  br label %for.cond, !dbg !5065

for.end:                                          ; preds = %for.cond
  %189 = load %struct._object*, %struct._object** %res, align 8, !dbg !5066, !tbaa !1100
  %190 = load i64, i64* %end, align 8, !dbg !5067, !tbaa !1553
  %call236 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), %struct._object* %189, i64 %190), !dbg !5068
  store %struct._object* %call236, %struct._object** %restuple, align 8, !dbg !5069, !tbaa !1100
  br label %do.body.237, !dbg !5070

do.body.237:                                      ; preds = %for.end
  %191 = bitcast %struct._object** %_py_decref_tmp238 to i8*, !dbg !5071
  call void @llvm.lifetime.start(i64 8, i8* %191) #2, !dbg !5071
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp238, metadata !994, metadata !1104), !dbg !5073
  %192 = load %struct._object*, %struct._object** %res, align 8, !dbg !5074, !tbaa !1100
  store %struct._object* %192, %struct._object** %_py_decref_tmp238, align 8, !dbg !5073, !tbaa !1100
  %193 = load %struct._object*, %struct._object** %_py_decref_tmp238, align 8, !dbg !5075, !tbaa !1100
  %ob_refcnt239 = getelementptr inbounds %struct._object, %struct._object* %193, i32 0, i32 0, !dbg !5077
  %194 = load i64, i64* %ob_refcnt239, align 8, !dbg !5078, !tbaa !1335
  %dec240 = add i64 %194, -1, !dbg !5078
  store i64 %dec240, i64* %ob_refcnt239, align 8, !dbg !5078, !tbaa !1335
  %cmp241 = icmp ne i64 %dec240, 0, !dbg !5079
  br i1 %cmp241, label %if.then.243, label %if.else.244, !dbg !5080

if.then.243:                                      ; preds = %do.body.237
  br label %if.end.247, !dbg !5081

if.else.244:                                      ; preds = %do.body.237
  %195 = load %struct._object*, %struct._object** %_py_decref_tmp238, align 8, !dbg !5083, !tbaa !1100
  %ob_type245 = getelementptr inbounds %struct._object, %struct._object* %195, i32 0, i32 1, !dbg !5085
  %196 = load %struct._typeobject*, %struct._typeobject** %ob_type245, align 8, !dbg !5085, !tbaa !1344
  %tp_dealloc246 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %196, i32 0, i32 4, !dbg !5086
  %197 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc246, align 8, !dbg !5086, !tbaa !1346
  %198 = load %struct._object*, %struct._object** %_py_decref_tmp238, align 8, !dbg !5087, !tbaa !1100
  call void %197(%struct._object* %198), !dbg !5088
  br label %if.end.247

if.end.247:                                       ; preds = %if.else.244, %if.then.243
  %199 = bitcast %struct._object** %_py_decref_tmp238 to i8*, !dbg !5089
  call void @llvm.lifetime.end(i64 8, i8* %199) #2, !dbg !5089
  br label %do.cond.248, !dbg !5090

do.cond.248:                                      ; preds = %if.end.247
  br label %do.end.249, !dbg !5091

do.end.249:                                       ; preds = %do.cond.248
  br label %do.body.250, !dbg !5093

do.body.250:                                      ; preds = %do.end.249
  %200 = bitcast %struct._object** %_py_decref_tmp251 to i8*, !dbg !5094
  call void @llvm.lifetime.start(i64 8, i8* %200) #2, !dbg !5094
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp251, metadata !996, metadata !1104), !dbg !5096
  %201 = load %struct._object*, %struct._object** %object, align 8, !dbg !5097, !tbaa !1100
  store %struct._object* %201, %struct._object** %_py_decref_tmp251, align 8, !dbg !5096, !tbaa !1100
  %202 = load %struct._object*, %struct._object** %_py_decref_tmp251, align 8, !dbg !5098, !tbaa !1100
  %ob_refcnt252 = getelementptr inbounds %struct._object, %struct._object* %202, i32 0, i32 0, !dbg !5100
  %203 = load i64, i64* %ob_refcnt252, align 8, !dbg !5101, !tbaa !1335
  %dec253 = add i64 %203, -1, !dbg !5101
  store i64 %dec253, i64* %ob_refcnt252, align 8, !dbg !5101, !tbaa !1335
  %cmp254 = icmp ne i64 %dec253, 0, !dbg !5102
  br i1 %cmp254, label %if.then.256, label %if.else.257, !dbg !5103

if.then.256:                                      ; preds = %do.body.250
  br label %if.end.260, !dbg !5104

if.else.257:                                      ; preds = %do.body.250
  %204 = load %struct._object*, %struct._object** %_py_decref_tmp251, align 8, !dbg !5106, !tbaa !1100
  %ob_type258 = getelementptr inbounds %struct._object, %struct._object* %204, i32 0, i32 1, !dbg !5108
  %205 = load %struct._typeobject*, %struct._typeobject** %ob_type258, align 8, !dbg !5108, !tbaa !1344
  %tp_dealloc259 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %205, i32 0, i32 4, !dbg !5109
  %206 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc259, align 8, !dbg !5109, !tbaa !1346
  %207 = load %struct._object*, %struct._object** %_py_decref_tmp251, align 8, !dbg !5110, !tbaa !1100
  call void %206(%struct._object* %207), !dbg !5111
  br label %if.end.260

if.end.260:                                       ; preds = %if.else.257, %if.then.256
  %208 = bitcast %struct._object** %_py_decref_tmp251 to i8*, !dbg !5112
  call void @llvm.lifetime.end(i64 8, i8* %208) #2, !dbg !5112
  br label %do.cond.261, !dbg !5113

do.cond.261:                                      ; preds = %if.end.260
  br label %do.end.262, !dbg !5114

do.end.262:                                       ; preds = %do.cond.261
  %209 = load %struct._object*, %struct._object** %restuple, align 8, !dbg !5116, !tbaa !1100
  store %struct._object* %209, %struct._object** %retval, !dbg !5117
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.263, !dbg !5117

cleanup.263:                                      ; preds = %do.end.262, %cleanup, %do.end.74, %do.end.44, %do.end, %if.then.10, %if.then.6, %if.then.3
  %210 = bitcast i8** %outp to i8*, !dbg !5118
  call void @llvm.lifetime.end(i64 8, i8* %210) #2, !dbg !5118
  br label %cleanup.474

if.else.264:                                      ; preds = %entry
  %211 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !5119, !tbaa !1100
  %212 = load %struct._object*, %struct._object** @PyExc_UnicodeDecodeError, align 8, !dbg !5120, !tbaa !1100
  %call265 = call i32 @PyObject_IsInstance(%struct._object* %211, %struct._object* %212), !dbg !5121
  %tobool266 = icmp ne i32 %call265, 0, !dbg !5121
  br i1 %tobool266, label %if.then.267, label %if.else.473, !dbg !5122

if.then.267:                                      ; preds = %if.else.264
  %213 = bitcast i8** %p to i8*, !dbg !5123
  call void @llvm.lifetime.start(i64 8, i8* %213) #2, !dbg !5123
  call void @llvm.dbg.declare(metadata i8** %p, metadata !998, metadata !1104), !dbg !5124
  %214 = bitcast i32* %ch268 to i8*, !dbg !5125
  call void @llvm.lifetime.start(i64 4, i8* %214) #2, !dbg !5125
  call void @llvm.dbg.declare(metadata i32* %ch268, metadata !1001, metadata !1104), !dbg !5126
  store i32 0, i32* %ch268, align 4, !dbg !5126, !tbaa !1298
  %215 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !5127, !tbaa !1100
  %call269 = call i32 @PyUnicodeDecodeError_GetStart(%struct._object* %215, i64* %start), !dbg !5129
  %tobool270 = icmp ne i32 %call269, 0, !dbg !5129
  br i1 %tobool270, label %if.then.271, label %if.end.272, !dbg !5130

if.then.271:                                      ; preds = %if.then.267
  store %struct._object* null, %struct._object** %retval, !dbg !5131
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.471, !dbg !5131

if.end.272:                                       ; preds = %if.then.267
  %216 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !5132, !tbaa !1100
  %call273 = call i32 @PyUnicodeDecodeError_GetEnd(%struct._object* %216, i64* %end), !dbg !5134
  %tobool274 = icmp ne i32 %call273, 0, !dbg !5134
  br i1 %tobool274, label %if.then.275, label %if.end.276, !dbg !5135

if.then.275:                                      ; preds = %if.end.272
  store %struct._object* null, %struct._object** %retval, !dbg !5136
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.471, !dbg !5136

if.end.276:                                       ; preds = %if.end.272
  %217 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !5137, !tbaa !1100
  %call277 = call %struct._object* @PyUnicodeDecodeError_GetObject(%struct._object* %217), !dbg !5139
  store %struct._object* %call277, %struct._object** %object, align 8, !dbg !5140, !tbaa !1100
  %tobool278 = icmp ne %struct._object* %call277, null, !dbg !5140
  br i1 %tobool278, label %if.end.280, label %if.then.279, !dbg !5141

if.then.279:                                      ; preds = %if.end.276
  store %struct._object* null, %struct._object** %retval, !dbg !5142
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.471, !dbg !5142

if.end.280:                                       ; preds = %if.end.276
  %218 = load %struct._object*, %struct._object** %object, align 8, !dbg !5143, !tbaa !1100
  %call281 = call i8* @PyBytes_AsString(%struct._object* %218), !dbg !5144
  store i8* %call281, i8** %p, align 8, !dbg !5145, !tbaa !1100
  %tobool282 = icmp ne i8* %call281, null, !dbg !5145
  br i1 %tobool282, label %if.end.297, label %if.then.283, !dbg !5146

if.then.283:                                      ; preds = %if.end.280
  br label %do.body.284, !dbg !5147

do.body.284:                                      ; preds = %if.then.283
  %219 = bitcast %struct._object** %_py_decref_tmp285 to i8*, !dbg !5148
  call void @llvm.lifetime.start(i64 8, i8* %219) #2, !dbg !5148
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp285, metadata !1002, metadata !1104), !dbg !5150
  %220 = load %struct._object*, %struct._object** %object, align 8, !dbg !5151, !tbaa !1100
  store %struct._object* %220, %struct._object** %_py_decref_tmp285, align 8, !dbg !5150, !tbaa !1100
  %221 = load %struct._object*, %struct._object** %_py_decref_tmp285, align 8, !dbg !5152, !tbaa !1100
  %ob_refcnt286 = getelementptr inbounds %struct._object, %struct._object* %221, i32 0, i32 0, !dbg !5154
  %222 = load i64, i64* %ob_refcnt286, align 8, !dbg !5155, !tbaa !1335
  %dec287 = add i64 %222, -1, !dbg !5155
  store i64 %dec287, i64* %ob_refcnt286, align 8, !dbg !5155, !tbaa !1335
  %cmp288 = icmp ne i64 %dec287, 0, !dbg !5156
  br i1 %cmp288, label %if.then.290, label %if.else.291, !dbg !5157

if.then.290:                                      ; preds = %do.body.284
  br label %if.end.294, !dbg !5158

if.else.291:                                      ; preds = %do.body.284
  %223 = load %struct._object*, %struct._object** %_py_decref_tmp285, align 8, !dbg !5160, !tbaa !1100
  %ob_type292 = getelementptr inbounds %struct._object, %struct._object* %223, i32 0, i32 1, !dbg !5162
  %224 = load %struct._typeobject*, %struct._typeobject** %ob_type292, align 8, !dbg !5162, !tbaa !1344
  %tp_dealloc293 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %224, i32 0, i32 4, !dbg !5163
  %225 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc293, align 8, !dbg !5163, !tbaa !1346
  %226 = load %struct._object*, %struct._object** %_py_decref_tmp285, align 8, !dbg !5164, !tbaa !1100
  call void %225(%struct._object* %226), !dbg !5165
  br label %if.end.294

if.end.294:                                       ; preds = %if.else.291, %if.then.290
  %227 = bitcast %struct._object** %_py_decref_tmp285 to i8*, !dbg !5166
  call void @llvm.lifetime.end(i64 8, i8* %227) #2, !dbg !5166
  br label %do.cond.295, !dbg !5168

do.cond.295:                                      ; preds = %if.end.294
  br label %do.end.296, !dbg !5169

do.end.296:                                       ; preds = %do.cond.295
  store %struct._object* null, %struct._object** %retval, !dbg !5171
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.471, !dbg !5171

if.end.297:                                       ; preds = %if.end.280
  %228 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !5172, !tbaa !1100
  %call298 = call %struct._object* @PyUnicodeDecodeError_GetEncoding(%struct._object* %228), !dbg !5173
  store %struct._object* %call298, %struct._object** %encode, align 8, !dbg !5174, !tbaa !1100
  %tobool299 = icmp ne %struct._object* %call298, null, !dbg !5174
  br i1 %tobool299, label %if.end.314, label %if.then.300, !dbg !5175

if.then.300:                                      ; preds = %if.end.297
  br label %do.body.301, !dbg !5176

do.body.301:                                      ; preds = %if.then.300
  %229 = bitcast %struct._object** %_py_decref_tmp302 to i8*, !dbg !5177
  call void @llvm.lifetime.start(i64 8, i8* %229) #2, !dbg !5177
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp302, metadata !1006, metadata !1104), !dbg !5179
  %230 = load %struct._object*, %struct._object** %object, align 8, !dbg !5180, !tbaa !1100
  store %struct._object* %230, %struct._object** %_py_decref_tmp302, align 8, !dbg !5179, !tbaa !1100
  %231 = load %struct._object*, %struct._object** %_py_decref_tmp302, align 8, !dbg !5181, !tbaa !1100
  %ob_refcnt303 = getelementptr inbounds %struct._object, %struct._object* %231, i32 0, i32 0, !dbg !5183
  %232 = load i64, i64* %ob_refcnt303, align 8, !dbg !5184, !tbaa !1335
  %dec304 = add i64 %232, -1, !dbg !5184
  store i64 %dec304, i64* %ob_refcnt303, align 8, !dbg !5184, !tbaa !1335
  %cmp305 = icmp ne i64 %dec304, 0, !dbg !5185
  br i1 %cmp305, label %if.then.307, label %if.else.308, !dbg !5186

if.then.307:                                      ; preds = %do.body.301
  br label %if.end.311, !dbg !5187

if.else.308:                                      ; preds = %do.body.301
  %233 = load %struct._object*, %struct._object** %_py_decref_tmp302, align 8, !dbg !5189, !tbaa !1100
  %ob_type309 = getelementptr inbounds %struct._object, %struct._object* %233, i32 0, i32 1, !dbg !5191
  %234 = load %struct._typeobject*, %struct._typeobject** %ob_type309, align 8, !dbg !5191, !tbaa !1344
  %tp_dealloc310 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %234, i32 0, i32 4, !dbg !5192
  %235 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc310, align 8, !dbg !5192, !tbaa !1346
  %236 = load %struct._object*, %struct._object** %_py_decref_tmp302, align 8, !dbg !5193, !tbaa !1100
  call void %235(%struct._object* %236), !dbg !5194
  br label %if.end.311

if.end.311:                                       ; preds = %if.else.308, %if.then.307
  %237 = bitcast %struct._object** %_py_decref_tmp302 to i8*, !dbg !5195
  call void @llvm.lifetime.end(i64 8, i8* %237) #2, !dbg !5195
  br label %do.cond.312, !dbg !5197

do.cond.312:                                      ; preds = %if.end.311
  br label %do.end.313, !dbg !5198

do.end.313:                                       ; preds = %do.cond.312
  store %struct._object* null, %struct._object** %retval, !dbg !5200
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.471, !dbg !5200

if.end.314:                                       ; preds = %if.end.297
  %238 = load %struct._object*, %struct._object** %encode, align 8, !dbg !5201, !tbaa !1100
  %call315 = call i8* @PyUnicode_AsUTF8(%struct._object* %238), !dbg !5202
  store i8* %call315, i8** %encoding, align 8, !dbg !5203, !tbaa !1100
  %tobool316 = icmp ne i8* %call315, null, !dbg !5203
  br i1 %tobool316, label %if.end.344, label %if.then.317, !dbg !5204

if.then.317:                                      ; preds = %if.end.314
  br label %do.body.318, !dbg !5205

do.body.318:                                      ; preds = %if.then.317
  %239 = bitcast %struct._object** %_py_decref_tmp319 to i8*, !dbg !5206
  call void @llvm.lifetime.start(i64 8, i8* %239) #2, !dbg !5206
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp319, metadata !1010, metadata !1104), !dbg !5208
  %240 = load %struct._object*, %struct._object** %object, align 8, !dbg !5209, !tbaa !1100
  store %struct._object* %240, %struct._object** %_py_decref_tmp319, align 8, !dbg !5208, !tbaa !1100
  %241 = load %struct._object*, %struct._object** %_py_decref_tmp319, align 8, !dbg !5210, !tbaa !1100
  %ob_refcnt320 = getelementptr inbounds %struct._object, %struct._object* %241, i32 0, i32 0, !dbg !5212
  %242 = load i64, i64* %ob_refcnt320, align 8, !dbg !5213, !tbaa !1335
  %dec321 = add i64 %242, -1, !dbg !5213
  store i64 %dec321, i64* %ob_refcnt320, align 8, !dbg !5213, !tbaa !1335
  %cmp322 = icmp ne i64 %dec321, 0, !dbg !5214
  br i1 %cmp322, label %if.then.324, label %if.else.325, !dbg !5215

if.then.324:                                      ; preds = %do.body.318
  br label %if.end.328, !dbg !5216

if.else.325:                                      ; preds = %do.body.318
  %243 = load %struct._object*, %struct._object** %_py_decref_tmp319, align 8, !dbg !5218, !tbaa !1100
  %ob_type326 = getelementptr inbounds %struct._object, %struct._object* %243, i32 0, i32 1, !dbg !5220
  %244 = load %struct._typeobject*, %struct._typeobject** %ob_type326, align 8, !dbg !5220, !tbaa !1344
  %tp_dealloc327 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %244, i32 0, i32 4, !dbg !5221
  %245 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc327, align 8, !dbg !5221, !tbaa !1346
  %246 = load %struct._object*, %struct._object** %_py_decref_tmp319, align 8, !dbg !5222, !tbaa !1100
  call void %245(%struct._object* %246), !dbg !5223
  br label %if.end.328

if.end.328:                                       ; preds = %if.else.325, %if.then.324
  %247 = bitcast %struct._object** %_py_decref_tmp319 to i8*, !dbg !5224
  call void @llvm.lifetime.end(i64 8, i8* %247) #2, !dbg !5224
  br label %do.cond.329, !dbg !5226

do.cond.329:                                      ; preds = %if.end.328
  br label %do.end.330, !dbg !5227

do.end.330:                                       ; preds = %do.cond.329
  br label %do.body.331, !dbg !5229

do.body.331:                                      ; preds = %do.end.330
  %248 = bitcast %struct._object** %_py_decref_tmp332 to i8*, !dbg !5230
  call void @llvm.lifetime.start(i64 8, i8* %248) #2, !dbg !5230
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp332, metadata !1014, metadata !1104), !dbg !5232
  %249 = load %struct._object*, %struct._object** %encode, align 8, !dbg !5233, !tbaa !1100
  store %struct._object* %249, %struct._object** %_py_decref_tmp332, align 8, !dbg !5232, !tbaa !1100
  %250 = load %struct._object*, %struct._object** %_py_decref_tmp332, align 8, !dbg !5234, !tbaa !1100
  %ob_refcnt333 = getelementptr inbounds %struct._object, %struct._object* %250, i32 0, i32 0, !dbg !5236
  %251 = load i64, i64* %ob_refcnt333, align 8, !dbg !5237, !tbaa !1335
  %dec334 = add i64 %251, -1, !dbg !5237
  store i64 %dec334, i64* %ob_refcnt333, align 8, !dbg !5237, !tbaa !1335
  %cmp335 = icmp ne i64 %dec334, 0, !dbg !5238
  br i1 %cmp335, label %if.then.337, label %if.else.338, !dbg !5239

if.then.337:                                      ; preds = %do.body.331
  br label %if.end.341, !dbg !5240

if.else.338:                                      ; preds = %do.body.331
  %252 = load %struct._object*, %struct._object** %_py_decref_tmp332, align 8, !dbg !5242, !tbaa !1100
  %ob_type339 = getelementptr inbounds %struct._object, %struct._object* %252, i32 0, i32 1, !dbg !5244
  %253 = load %struct._typeobject*, %struct._typeobject** %ob_type339, align 8, !dbg !5244, !tbaa !1344
  %tp_dealloc340 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %253, i32 0, i32 4, !dbg !5245
  %254 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc340, align 8, !dbg !5245, !tbaa !1346
  %255 = load %struct._object*, %struct._object** %_py_decref_tmp332, align 8, !dbg !5246, !tbaa !1100
  call void %254(%struct._object* %255), !dbg !5247
  br label %if.end.341

if.end.341:                                       ; preds = %if.else.338, %if.then.337
  %256 = bitcast %struct._object** %_py_decref_tmp332 to i8*, !dbg !5248
  call void @llvm.lifetime.end(i64 8, i8* %256) #2, !dbg !5248
  br label %do.cond.342, !dbg !5249

do.cond.342:                                      ; preds = %if.end.341
  br label %do.end.343, !dbg !5250

do.end.343:                                       ; preds = %do.cond.342
  store %struct._object* null, %struct._object** %retval, !dbg !5252
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.471, !dbg !5252

if.end.344:                                       ; preds = %if.end.314
  %257 = load i8*, i8** %encoding, align 8, !dbg !5253, !tbaa !1100
  %call345 = call i32 @get_standard_encoding(i8* %257, i32* %bytelength), !dbg !5254
  store i32 %call345, i32* %code, align 4, !dbg !5255, !tbaa !1298
  br label %do.body.346, !dbg !5256

do.body.346:                                      ; preds = %if.end.344
  %258 = bitcast %struct._object** %_py_decref_tmp347 to i8*, !dbg !5257
  call void @llvm.lifetime.start(i64 8, i8* %258) #2, !dbg !5257
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp347, metadata !1016, metadata !1104), !dbg !5259
  %259 = load %struct._object*, %struct._object** %encode, align 8, !dbg !5260, !tbaa !1100
  store %struct._object* %259, %struct._object** %_py_decref_tmp347, align 8, !dbg !5259, !tbaa !1100
  %260 = load %struct._object*, %struct._object** %_py_decref_tmp347, align 8, !dbg !5261, !tbaa !1100
  %ob_refcnt348 = getelementptr inbounds %struct._object, %struct._object* %260, i32 0, i32 0, !dbg !5263
  %261 = load i64, i64* %ob_refcnt348, align 8, !dbg !5264, !tbaa !1335
  %dec349 = add i64 %261, -1, !dbg !5264
  store i64 %dec349, i64* %ob_refcnt348, align 8, !dbg !5264, !tbaa !1335
  %cmp350 = icmp ne i64 %dec349, 0, !dbg !5265
  br i1 %cmp350, label %if.then.352, label %if.else.353, !dbg !5266

if.then.352:                                      ; preds = %do.body.346
  br label %if.end.356, !dbg !5267

if.else.353:                                      ; preds = %do.body.346
  %262 = load %struct._object*, %struct._object** %_py_decref_tmp347, align 8, !dbg !5269, !tbaa !1100
  %ob_type354 = getelementptr inbounds %struct._object, %struct._object* %262, i32 0, i32 1, !dbg !5271
  %263 = load %struct._typeobject*, %struct._typeobject** %ob_type354, align 8, !dbg !5271, !tbaa !1344
  %tp_dealloc355 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %263, i32 0, i32 4, !dbg !5272
  %264 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc355, align 8, !dbg !5272, !tbaa !1346
  %265 = load %struct._object*, %struct._object** %_py_decref_tmp347, align 8, !dbg !5273, !tbaa !1100
  call void %264(%struct._object* %265), !dbg !5274
  br label %if.end.356

if.end.356:                                       ; preds = %if.else.353, %if.then.352
  %266 = bitcast %struct._object** %_py_decref_tmp347 to i8*, !dbg !5275
  call void @llvm.lifetime.end(i64 8, i8* %266) #2, !dbg !5275
  br label %do.cond.357, !dbg !5277

do.cond.357:                                      ; preds = %if.end.356
  br label %do.end.358, !dbg !5278

do.end.358:                                       ; preds = %do.cond.357
  %267 = load i64, i64* %start, align 8, !dbg !5280, !tbaa !1553
  %268 = load i8*, i8** %p, align 8, !dbg !5281, !tbaa !1100
  %add.ptr359 = getelementptr i8, i8* %268, i64 %267, !dbg !5281
  store i8* %add.ptr359, i8** %p, align 8, !dbg !5281, !tbaa !1100
  %269 = load %struct._object*, %struct._object** %object, align 8, !dbg !5282, !tbaa !1100
  %270 = bitcast %struct._object* %269 to %struct.PyVarObject*, !dbg !5284
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %270, i32 0, i32 1, !dbg !5285
  %271 = load i64, i64* %ob_size, align 8, !dbg !5285, !tbaa !1635
  %272 = load i64, i64* %start, align 8, !dbg !5286, !tbaa !1553
  %sub360 = sub i64 %271, %272, !dbg !5287
  %273 = load i32, i32* %bytelength, align 4, !dbg !5288, !tbaa !1298
  %conv361 = sext i32 %273 to i64, !dbg !5288
  %cmp362 = icmp sge i64 %sub360, %conv361, !dbg !5289
  br i1 %cmp362, label %if.then.364, label %if.end.441, !dbg !5290

if.then.364:                                      ; preds = %do.end.358
  %274 = load i32, i32* %code, align 4, !dbg !5291, !tbaa !1298
  switch i32 %274, label %sw.epilog.440 [
    i32 0, label %sw.bb.365
    i32 2, label %sw.bb.396
    i32 1, label %sw.bb.403
    i32 4, label %sw.bb.410
    i32 3, label %sw.bb.425
  ], !dbg !5293

sw.bb.365:                                        ; preds = %if.then.364
  %275 = load i8*, i8** %p, align 8, !dbg !5294, !tbaa !1100
  %arrayidx366 = getelementptr i8, i8* %275, i64 0, !dbg !5294
  %276 = load i8, i8* %arrayidx366, align 1, !dbg !5294, !tbaa !1118
  %conv367 = zext i8 %276 to i32, !dbg !5294
  %and368 = and i32 %conv367, 240, !dbg !5297
  %cmp369 = icmp eq i32 %and368, 224, !dbg !5298
  br i1 %cmp369, label %land.lhs.true.371, label %if.end.395, !dbg !5299

land.lhs.true.371:                                ; preds = %sw.bb.365
  %277 = load i8*, i8** %p, align 8, !dbg !5300, !tbaa !1100
  %arrayidx372 = getelementptr i8, i8* %277, i64 1, !dbg !5300
  %278 = load i8, i8* %arrayidx372, align 1, !dbg !5300, !tbaa !1118
  %conv373 = zext i8 %278 to i32, !dbg !5300
  %and374 = and i32 %conv373, 192, !dbg !5301
  %cmp375 = icmp eq i32 %and374, 128, !dbg !5302
  br i1 %cmp375, label %land.lhs.true.377, label %if.end.395, !dbg !5303

land.lhs.true.377:                                ; preds = %land.lhs.true.371
  %279 = load i8*, i8** %p, align 8, !dbg !5304, !tbaa !1100
  %arrayidx378 = getelementptr i8, i8* %279, i64 2, !dbg !5304
  %280 = load i8, i8* %arrayidx378, align 1, !dbg !5304, !tbaa !1118
  %conv379 = zext i8 %280 to i32, !dbg !5304
  %and380 = and i32 %conv379, 192, !dbg !5305
  %cmp381 = icmp eq i32 %and380, 128, !dbg !5306
  br i1 %cmp381, label %if.then.383, label %if.end.395, !dbg !5307

if.then.383:                                      ; preds = %land.lhs.true.377
  %281 = load i8*, i8** %p, align 8, !dbg !5308, !tbaa !1100
  %arrayidx384 = getelementptr i8, i8* %281, i64 0, !dbg !5308
  %282 = load i8, i8* %arrayidx384, align 1, !dbg !5308, !tbaa !1118
  %conv385 = zext i8 %282 to i32, !dbg !5308
  %and386 = and i32 %conv385, 15, !dbg !5310
  %shl = shl i32 %and386, 12, !dbg !5311
  %283 = load i8*, i8** %p, align 8, !dbg !5312, !tbaa !1100
  %arrayidx387 = getelementptr i8, i8* %283, i64 1, !dbg !5312
  %284 = load i8, i8* %arrayidx387, align 1, !dbg !5312, !tbaa !1118
  %conv388 = zext i8 %284 to i32, !dbg !5312
  %and389 = and i32 %conv388, 63, !dbg !5313
  %shl390 = shl i32 %and389, 6, !dbg !5314
  %add = add i32 %shl, %shl390, !dbg !5315
  %285 = load i8*, i8** %p, align 8, !dbg !5316, !tbaa !1100
  %arrayidx391 = getelementptr i8, i8* %285, i64 2, !dbg !5316
  %286 = load i8, i8* %arrayidx391, align 1, !dbg !5316, !tbaa !1118
  %conv392 = zext i8 %286 to i32, !dbg !5316
  %and393 = and i32 %conv392, 63, !dbg !5317
  %add394 = add i32 %add, %and393, !dbg !5318
  store i32 %add394, i32* %ch268, align 4, !dbg !5319, !tbaa !1298
  br label %if.end.395, !dbg !5320

if.end.395:                                       ; preds = %if.then.383, %land.lhs.true.377, %land.lhs.true.371, %sw.bb.365
  br label %sw.epilog.440, !dbg !5321

sw.bb.396:                                        ; preds = %if.then.364
  %287 = load i8*, i8** %p, align 8, !dbg !5322, !tbaa !1100
  %arrayidx397 = getelementptr i8, i8* %287, i64 1, !dbg !5322
  %288 = load i8, i8* %arrayidx397, align 1, !dbg !5322, !tbaa !1118
  %conv398 = zext i8 %288 to i32, !dbg !5322
  %shl399 = shl i32 %conv398, 8, !dbg !5323
  %289 = load i8*, i8** %p, align 8, !dbg !5324, !tbaa !1100
  %arrayidx400 = getelementptr i8, i8* %289, i64 0, !dbg !5324
  %290 = load i8, i8* %arrayidx400, align 1, !dbg !5324, !tbaa !1118
  %conv401 = zext i8 %290 to i32, !dbg !5324
  %or402 = or i32 %shl399, %conv401, !dbg !5325
  store i32 %or402, i32* %ch268, align 4, !dbg !5326, !tbaa !1298
  br label %sw.epilog.440, !dbg !5327

sw.bb.403:                                        ; preds = %if.then.364
  %291 = load i8*, i8** %p, align 8, !dbg !5328, !tbaa !1100
  %arrayidx404 = getelementptr i8, i8* %291, i64 0, !dbg !5328
  %292 = load i8, i8* %arrayidx404, align 1, !dbg !5328, !tbaa !1118
  %conv405 = zext i8 %292 to i32, !dbg !5328
  %shl406 = shl i32 %conv405, 8, !dbg !5329
  %293 = load i8*, i8** %p, align 8, !dbg !5330, !tbaa !1100
  %arrayidx407 = getelementptr i8, i8* %293, i64 1, !dbg !5330
  %294 = load i8, i8* %arrayidx407, align 1, !dbg !5330, !tbaa !1118
  %conv408 = zext i8 %294 to i32, !dbg !5330
  %or409 = or i32 %shl406, %conv408, !dbg !5331
  store i32 %or409, i32* %ch268, align 4, !dbg !5332, !tbaa !1298
  br label %sw.epilog.440, !dbg !5333

sw.bb.410:                                        ; preds = %if.then.364
  %295 = load i8*, i8** %p, align 8, !dbg !5334, !tbaa !1100
  %arrayidx411 = getelementptr i8, i8* %295, i64 3, !dbg !5334
  %296 = load i8, i8* %arrayidx411, align 1, !dbg !5334, !tbaa !1118
  %conv412 = zext i8 %296 to i32, !dbg !5334
  %shl413 = shl i32 %conv412, 24, !dbg !5335
  %297 = load i8*, i8** %p, align 8, !dbg !5336, !tbaa !1100
  %arrayidx414 = getelementptr i8, i8* %297, i64 2, !dbg !5336
  %298 = load i8, i8* %arrayidx414, align 1, !dbg !5336, !tbaa !1118
  %conv415 = zext i8 %298 to i32, !dbg !5336
  %shl416 = shl i32 %conv415, 16, !dbg !5337
  %or417 = or i32 %shl413, %shl416, !dbg !5338
  %299 = load i8*, i8** %p, align 8, !dbg !5339, !tbaa !1100
  %arrayidx418 = getelementptr i8, i8* %299, i64 1, !dbg !5339
  %300 = load i8, i8* %arrayidx418, align 1, !dbg !5339, !tbaa !1118
  %conv419 = zext i8 %300 to i32, !dbg !5339
  %shl420 = shl i32 %conv419, 8, !dbg !5340
  %or421 = or i32 %or417, %shl420, !dbg !5341
  %301 = load i8*, i8** %p, align 8, !dbg !5342, !tbaa !1100
  %arrayidx422 = getelementptr i8, i8* %301, i64 0, !dbg !5342
  %302 = load i8, i8* %arrayidx422, align 1, !dbg !5342, !tbaa !1118
  %conv423 = zext i8 %302 to i32, !dbg !5342
  %or424 = or i32 %or421, %conv423, !dbg !5343
  store i32 %or424, i32* %ch268, align 4, !dbg !5344, !tbaa !1298
  br label %sw.epilog.440, !dbg !5345

sw.bb.425:                                        ; preds = %if.then.364
  %303 = load i8*, i8** %p, align 8, !dbg !5346, !tbaa !1100
  %arrayidx426 = getelementptr i8, i8* %303, i64 0, !dbg !5346
  %304 = load i8, i8* %arrayidx426, align 1, !dbg !5346, !tbaa !1118
  %conv427 = zext i8 %304 to i32, !dbg !5346
  %shl428 = shl i32 %conv427, 24, !dbg !5347
  %305 = load i8*, i8** %p, align 8, !dbg !5348, !tbaa !1100
  %arrayidx429 = getelementptr i8, i8* %305, i64 1, !dbg !5348
  %306 = load i8, i8* %arrayidx429, align 1, !dbg !5348, !tbaa !1118
  %conv430 = zext i8 %306 to i32, !dbg !5348
  %shl431 = shl i32 %conv430, 16, !dbg !5349
  %or432 = or i32 %shl428, %shl431, !dbg !5350
  %307 = load i8*, i8** %p, align 8, !dbg !5351, !tbaa !1100
  %arrayidx433 = getelementptr i8, i8* %307, i64 2, !dbg !5351
  %308 = load i8, i8* %arrayidx433, align 1, !dbg !5351, !tbaa !1118
  %conv434 = zext i8 %308 to i32, !dbg !5351
  %shl435 = shl i32 %conv434, 8, !dbg !5352
  %or436 = or i32 %or432, %shl435, !dbg !5353
  %309 = load i8*, i8** %p, align 8, !dbg !5354, !tbaa !1100
  %arrayidx437 = getelementptr i8, i8* %309, i64 3, !dbg !5354
  %310 = load i8, i8* %arrayidx437, align 1, !dbg !5354, !tbaa !1118
  %conv438 = zext i8 %310 to i32, !dbg !5354
  %or439 = or i32 %or436, %conv438, !dbg !5355
  store i32 %or439, i32* %ch268, align 4, !dbg !5356, !tbaa !1298
  br label %sw.epilog.440, !dbg !5357

sw.epilog.440:                                    ; preds = %if.then.364, %sw.bb.425, %sw.bb.410, %sw.bb.403, %sw.bb.396, %if.end.395
  br label %if.end.441, !dbg !5358

if.end.441:                                       ; preds = %sw.epilog.440, %do.end.358
  br label %do.body.442, !dbg !5359

do.body.442:                                      ; preds = %if.end.441
  %311 = bitcast %struct._object** %_py_decref_tmp443 to i8*, !dbg !5360
  call void @llvm.lifetime.start(i64 8, i8* %311) #2, !dbg !5360
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp443, metadata !1018, metadata !1104), !dbg !5362
  %312 = load %struct._object*, %struct._object** %object, align 8, !dbg !5363, !tbaa !1100
  store %struct._object* %312, %struct._object** %_py_decref_tmp443, align 8, !dbg !5362, !tbaa !1100
  %313 = load %struct._object*, %struct._object** %_py_decref_tmp443, align 8, !dbg !5364, !tbaa !1100
  %ob_refcnt444 = getelementptr inbounds %struct._object, %struct._object* %313, i32 0, i32 0, !dbg !5366
  %314 = load i64, i64* %ob_refcnt444, align 8, !dbg !5367, !tbaa !1335
  %dec445 = add i64 %314, -1, !dbg !5367
  store i64 %dec445, i64* %ob_refcnt444, align 8, !dbg !5367, !tbaa !1335
  %cmp446 = icmp ne i64 %dec445, 0, !dbg !5368
  br i1 %cmp446, label %if.then.448, label %if.else.449, !dbg !5369

if.then.448:                                      ; preds = %do.body.442
  br label %if.end.452, !dbg !5370

if.else.449:                                      ; preds = %do.body.442
  %315 = load %struct._object*, %struct._object** %_py_decref_tmp443, align 8, !dbg !5372, !tbaa !1100
  %ob_type450 = getelementptr inbounds %struct._object, %struct._object* %315, i32 0, i32 1, !dbg !5374
  %316 = load %struct._typeobject*, %struct._typeobject** %ob_type450, align 8, !dbg !5374, !tbaa !1344
  %tp_dealloc451 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %316, i32 0, i32 4, !dbg !5375
  %317 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc451, align 8, !dbg !5375, !tbaa !1346
  %318 = load %struct._object*, %struct._object** %_py_decref_tmp443, align 8, !dbg !5376, !tbaa !1100
  call void %317(%struct._object* %318), !dbg !5377
  br label %if.end.452

if.end.452:                                       ; preds = %if.else.449, %if.then.448
  %319 = bitcast %struct._object** %_py_decref_tmp443 to i8*, !dbg !5378
  call void @llvm.lifetime.end(i64 8, i8* %319) #2, !dbg !5378
  br label %do.cond.453, !dbg !5379

do.cond.453:                                      ; preds = %if.end.452
  br label %do.end.454, !dbg !5380

do.end.454:                                       ; preds = %do.cond.453
  %320 = load i32, i32* %ch268, align 4, !dbg !5382, !tbaa !1298
  %cmp455 = icmp ule i32 55296, %320, !dbg !5384
  br i1 %cmp455, label %land.lhs.true.457, label %if.then.460, !dbg !5385

land.lhs.true.457:                                ; preds = %do.end.454
  %321 = load i32, i32* %ch268, align 4, !dbg !5386, !tbaa !1298
  %cmp458 = icmp ule i32 %321, 57343, !dbg !5388
  br i1 %cmp458, label %if.end.462, label %if.then.460, !dbg !5389

if.then.460:                                      ; preds = %land.lhs.true.457, %do.end.454
  %322 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !5390, !tbaa !1100
  %ob_type461 = getelementptr inbounds %struct._object, %struct._object* %322, i32 0, i32 1, !dbg !5392
  %323 = load %struct._typeobject*, %struct._typeobject** %ob_type461, align 8, !dbg !5392, !tbaa !1344
  %324 = bitcast %struct._typeobject* %323 to %struct._object*, !dbg !5393
  %325 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !5394, !tbaa !1100
  call void @PyErr_SetObject(%struct._object* %324, %struct._object* %325), !dbg !5395
  store %struct._object* null, %struct._object** %retval, !dbg !5396
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.471, !dbg !5396

if.end.462:                                       ; preds = %land.lhs.true.457
  %326 = load i32, i32* %ch268, align 4, !dbg !5397, !tbaa !1298
  %call463 = call %struct._object* @PyUnicode_FromOrdinal(i32 %326), !dbg !5398
  store %struct._object* %call463, %struct._object** %res, align 8, !dbg !5399, !tbaa !1100
  %327 = load %struct._object*, %struct._object** %res, align 8, !dbg !5400, !tbaa !1100
  %cmp464 = icmp eq %struct._object* %327, null, !dbg !5402
  br i1 %cmp464, label %if.then.466, label %if.end.467, !dbg !5403

if.then.466:                                      ; preds = %if.end.462
  store %struct._object* null, %struct._object** %retval, !dbg !5404
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.471, !dbg !5404

if.end.467:                                       ; preds = %if.end.462
  %328 = load %struct._object*, %struct._object** %res, align 8, !dbg !5405, !tbaa !1100
  %329 = load i64, i64* %start, align 8, !dbg !5406, !tbaa !1553
  %330 = load i32, i32* %bytelength, align 4, !dbg !5407, !tbaa !1298
  %conv468 = sext i32 %330 to i64, !dbg !5407
  %add469 = add i64 %329, %conv468, !dbg !5408
  %call470 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), %struct._object* %328, i64 %add469), !dbg !5409
  store %struct._object* %call470, %struct._object** %retval, !dbg !5410
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.471, !dbg !5410

cleanup.471:                                      ; preds = %if.end.467, %if.then.466, %if.then.460, %do.end.343, %do.end.313, %do.end.296, %if.then.279, %if.then.275, %if.then.271
  %331 = bitcast i32* %ch268 to i8*, !dbg !5411
  call void @llvm.lifetime.end(i64 4, i8* %331) #2, !dbg !5411
  %332 = bitcast i8** %p to i8*, !dbg !5411
  call void @llvm.lifetime.end(i64 8, i8* %332) #2, !dbg !5411
  br label %cleanup.474

if.else.473:                                      ; preds = %if.else.264
  %333 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !5412, !tbaa !1100
  call void @wrong_exception_type(%struct._object* %333), !dbg !5414
  store %struct._object* null, %struct._object** %retval, !dbg !5415
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.474, !dbg !5415

cleanup.474:                                      ; preds = %if.else.473, %cleanup.471, %cleanup.263
  %334 = bitcast %struct._object** %res to i8*, !dbg !5416
  call void @llvm.lifetime.end(i64 8, i8* %334) #2, !dbg !5416
  %335 = bitcast i64* %end to i8*, !dbg !5416
  call void @llvm.lifetime.end(i64 8, i8* %335) #2, !dbg !5416
  %336 = bitcast i64* %start to i8*, !dbg !5416
  call void @llvm.lifetime.end(i64 8, i8* %336) #2, !dbg !5416
  %337 = bitcast i64* %i to i8*, !dbg !5416
  call void @llvm.lifetime.end(i64 8, i8* %337) #2, !dbg !5416
  %338 = bitcast i32* %bytelength to i8*, !dbg !5416
  call void @llvm.lifetime.end(i64 4, i8* %338) #2, !dbg !5416
  %339 = bitcast i32* %code to i8*, !dbg !5416
  call void @llvm.lifetime.end(i64 4, i8* %339) #2, !dbg !5416
  %340 = bitcast i8** %encoding to i8*, !dbg !5416
  call void @llvm.lifetime.end(i64 8, i8* %340) #2, !dbg !5416
  %341 = bitcast %struct._object** %encode to i8*, !dbg !5416
  call void @llvm.lifetime.end(i64 8, i8* %341) #2, !dbg !5416
  %342 = bitcast %struct._object** %object to i8*, !dbg !5416
  call void @llvm.lifetime.end(i64 8, i8* %342) #2, !dbg !5416
  %343 = bitcast %struct._object** %restuple to i8*, !dbg !5416
  call void @llvm.lifetime.end(i64 8, i8* %343) #2, !dbg !5416
  %344 = load %struct._object*, %struct._object** %retval, !dbg !5416
  ret %struct._object* %344, !dbg !5416
}

declare %struct._object* @PyUnicodeEncodeError_GetEncoding(%struct._object*) #4

declare i8* @PyUnicode_AsUTF8(%struct._object*) #4

; Function Attrs: nounwind uwtable
define internal i32 @get_standard_encoding(i8* %encoding, i32* %bytelength) #0 {
entry:
  %retval = alloca i32, align 4
  %encoding.addr = alloca i8*, align 8
  %bytelength.addr = alloca i32*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i8** %encoding.addr, metadata !1025, metadata !1104), !dbg !5417
  store i32* %bytelength, i32** %bytelength.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata i32** %bytelength.addr, metadata !1026, metadata !1104), !dbg !5418
  %0 = load i8*, i8** %encoding.addr, align 8, !dbg !5419, !tbaa !1100
  %arrayidx = getelementptr i8, i8* %0, i64 0, !dbg !5419
  %1 = load i8, i8* %arrayidx, align 1, !dbg !5419, !tbaa !1118
  %conv = sext i8 %1 to i32, !dbg !5421
  %and = and i32 %conv, 255, !dbg !5422
  %conv1 = trunc i32 %and to i8, !dbg !5423
  %idxprom = zext i8 %conv1 to i64, !dbg !5424
  %arrayidx2 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom, !dbg !5424
  %2 = load i8, i8* %arrayidx2, align 1, !dbg !5424, !tbaa !1118
  %conv3 = zext i8 %2 to i32, !dbg !5425
  %cmp = icmp eq i32 %conv3, 117, !dbg !5426
  br i1 %cmp, label %land.lhs.true, label %if.end.161, !dbg !5427

land.lhs.true:                                    ; preds = %entry
  %3 = load i8*, i8** %encoding.addr, align 8, !dbg !5428, !tbaa !1100
  %arrayidx5 = getelementptr i8, i8* %3, i64 1, !dbg !5428
  %4 = load i8, i8* %arrayidx5, align 1, !dbg !5428, !tbaa !1118
  %conv6 = sext i8 %4 to i32, !dbg !5429
  %and7 = and i32 %conv6, 255, !dbg !5430
  %conv8 = trunc i32 %and7 to i8, !dbg !5431
  %idxprom9 = zext i8 %conv8 to i64, !dbg !5432
  %arrayidx10 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom9, !dbg !5432
  %5 = load i8, i8* %arrayidx10, align 1, !dbg !5432, !tbaa !1118
  %conv11 = zext i8 %5 to i32, !dbg !5433
  %cmp12 = icmp eq i32 %conv11, 116, !dbg !5434
  br i1 %cmp12, label %land.lhs.true.14, label %if.end.161, !dbg !5435

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %6 = load i8*, i8** %encoding.addr, align 8, !dbg !5436, !tbaa !1100
  %arrayidx15 = getelementptr i8, i8* %6, i64 2, !dbg !5436
  %7 = load i8, i8* %arrayidx15, align 1, !dbg !5436, !tbaa !1118
  %conv16 = sext i8 %7 to i32, !dbg !5437
  %and17 = and i32 %conv16, 255, !dbg !5438
  %conv18 = trunc i32 %and17 to i8, !dbg !5439
  %idxprom19 = zext i8 %conv18 to i64, !dbg !5440
  %arrayidx20 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom19, !dbg !5440
  %8 = load i8, i8* %arrayidx20, align 1, !dbg !5440, !tbaa !1118
  %conv21 = zext i8 %8 to i32, !dbg !5441
  %cmp22 = icmp eq i32 %conv21, 102, !dbg !5442
  br i1 %cmp22, label %if.then, label %if.end.161, !dbg !5443

if.then:                                          ; preds = %land.lhs.true.14
  %9 = load i8*, i8** %encoding.addr, align 8, !dbg !5444, !tbaa !1100
  %add.ptr = getelementptr i8, i8* %9, i64 3, !dbg !5444
  store i8* %add.ptr, i8** %encoding.addr, align 8, !dbg !5444, !tbaa !1100
  %10 = load i8*, i8** %encoding.addr, align 8, !dbg !5446, !tbaa !1100
  %11 = load i8, i8* %10, align 1, !dbg !5448, !tbaa !1118
  %conv24 = sext i8 %11 to i32, !dbg !5448
  %cmp25 = icmp eq i32 %conv24, 45, !dbg !5449
  br i1 %cmp25, label %if.then.30, label %lor.lhs.false, !dbg !5450

lor.lhs.false:                                    ; preds = %if.then
  %12 = load i8*, i8** %encoding.addr, align 8, !dbg !5451, !tbaa !1100
  %13 = load i8, i8* %12, align 1, !dbg !5453, !tbaa !1118
  %conv27 = sext i8 %13 to i32, !dbg !5453
  %cmp28 = icmp eq i32 %conv27, 95, !dbg !5454
  br i1 %cmp28, label %if.then.30, label %if.end, !dbg !5455

if.then.30:                                       ; preds = %lor.lhs.false, %if.then
  %14 = load i8*, i8** %encoding.addr, align 8, !dbg !5456, !tbaa !1100
  %incdec.ptr = getelementptr i8, i8* %14, i32 1, !dbg !5456
  store i8* %incdec.ptr, i8** %encoding.addr, align 8, !dbg !5456, !tbaa !1100
  br label %if.end, !dbg !5457

if.end:                                           ; preds = %if.then.30, %lor.lhs.false
  %15 = load i8*, i8** %encoding.addr, align 8, !dbg !5458, !tbaa !1100
  %arrayidx31 = getelementptr i8, i8* %15, i64 0, !dbg !5458
  %16 = load i8, i8* %arrayidx31, align 1, !dbg !5458, !tbaa !1118
  %conv32 = sext i8 %16 to i32, !dbg !5458
  %cmp33 = icmp eq i32 %conv32, 49, !dbg !5460
  br i1 %cmp33, label %land.lhs.true.35, label %if.else, !dbg !5461

land.lhs.true.35:                                 ; preds = %if.end
  %17 = load i8*, i8** %encoding.addr, align 8, !dbg !5462, !tbaa !1100
  %arrayidx36 = getelementptr i8, i8* %17, i64 1, !dbg !5462
  %18 = load i8, i8* %arrayidx36, align 1, !dbg !5462, !tbaa !1118
  %conv37 = sext i8 %18 to i32, !dbg !5462
  %cmp38 = icmp eq i32 %conv37, 54, !dbg !5464
  br i1 %cmp38, label %if.then.40, label %if.else, !dbg !5465

if.then.40:                                       ; preds = %land.lhs.true.35
  %19 = load i8*, i8** %encoding.addr, align 8, !dbg !5466, !tbaa !1100
  %add.ptr41 = getelementptr i8, i8* %19, i64 2, !dbg !5466
  store i8* %add.ptr41, i8** %encoding.addr, align 8, !dbg !5466, !tbaa !1100
  %20 = load i32*, i32** %bytelength.addr, align 8, !dbg !5468, !tbaa !1100
  store i32 2, i32* %20, align 4, !dbg !5469, !tbaa !1298
  %21 = load i8*, i8** %encoding.addr, align 8, !dbg !5470, !tbaa !1100
  %22 = load i8, i8* %21, align 1, !dbg !5472, !tbaa !1118
  %conv42 = sext i8 %22 to i32, !dbg !5472
  %cmp43 = icmp eq i32 %conv42, 0, !dbg !5473
  br i1 %cmp43, label %if.then.45, label %if.end.46, !dbg !5474

if.then.45:                                       ; preds = %if.then.40
  store i32 2, i32* %retval, !dbg !5475
  br label %return, !dbg !5475

if.end.46:                                        ; preds = %if.then.40
  %23 = load i8*, i8** %encoding.addr, align 8, !dbg !5477, !tbaa !1100
  %24 = load i8, i8* %23, align 1, !dbg !5479, !tbaa !1118
  %conv47 = sext i8 %24 to i32, !dbg !5479
  %cmp48 = icmp eq i32 %conv47, 45, !dbg !5480
  br i1 %cmp48, label %if.then.54, label %lor.lhs.false.50, !dbg !5481

lor.lhs.false.50:                                 ; preds = %if.end.46
  %25 = load i8*, i8** %encoding.addr, align 8, !dbg !5482, !tbaa !1100
  %26 = load i8, i8* %25, align 1, !dbg !5484, !tbaa !1118
  %conv51 = sext i8 %26 to i32, !dbg !5484
  %cmp52 = icmp eq i32 %conv51, 95, !dbg !5485
  br i1 %cmp52, label %if.then.54, label %if.end.56, !dbg !5486

if.then.54:                                       ; preds = %lor.lhs.false.50, %if.end.46
  %27 = load i8*, i8** %encoding.addr, align 8, !dbg !5487, !tbaa !1100
  %incdec.ptr55 = getelementptr i8, i8* %27, i32 1, !dbg !5487
  store i8* %incdec.ptr55, i8** %encoding.addr, align 8, !dbg !5487, !tbaa !1100
  br label %if.end.56, !dbg !5488

if.end.56:                                        ; preds = %if.then.54, %lor.lhs.false.50
  %28 = load i8*, i8** %encoding.addr, align 8, !dbg !5489, !tbaa !1100
  %arrayidx57 = getelementptr i8, i8* %28, i64 1, !dbg !5489
  %29 = load i8, i8* %arrayidx57, align 1, !dbg !5489, !tbaa !1118
  %conv58 = sext i8 %29 to i32, !dbg !5491
  %and59 = and i32 %conv58, 255, !dbg !5492
  %conv60 = trunc i32 %and59 to i8, !dbg !5493
  %idxprom61 = zext i8 %conv60 to i64, !dbg !5494
  %arrayidx62 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom61, !dbg !5494
  %30 = load i8, i8* %arrayidx62, align 1, !dbg !5494, !tbaa !1118
  %conv63 = zext i8 %30 to i32, !dbg !5495
  %cmp64 = icmp eq i32 %conv63, 101, !dbg !5496
  br i1 %cmp64, label %land.lhs.true.66, label %if.end.94, !dbg !5497

land.lhs.true.66:                                 ; preds = %if.end.56
  %31 = load i8*, i8** %encoding.addr, align 8, !dbg !5498, !tbaa !1100
  %arrayidx67 = getelementptr i8, i8* %31, i64 2, !dbg !5498
  %32 = load i8, i8* %arrayidx67, align 1, !dbg !5498, !tbaa !1118
  %conv68 = sext i8 %32 to i32, !dbg !5498
  %cmp69 = icmp eq i32 %conv68, 0, !dbg !5500
  br i1 %cmp69, label %if.then.71, label %if.end.94, !dbg !5501

if.then.71:                                       ; preds = %land.lhs.true.66
  %33 = load i8*, i8** %encoding.addr, align 8, !dbg !5502, !tbaa !1100
  %arrayidx72 = getelementptr i8, i8* %33, i64 0, !dbg !5502
  %34 = load i8, i8* %arrayidx72, align 1, !dbg !5502, !tbaa !1118
  %conv73 = sext i8 %34 to i32, !dbg !5505
  %and74 = and i32 %conv73, 255, !dbg !5506
  %conv75 = trunc i32 %and74 to i8, !dbg !5507
  %idxprom76 = zext i8 %conv75 to i64, !dbg !5508
  %arrayidx77 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom76, !dbg !5508
  %35 = load i8, i8* %arrayidx77, align 1, !dbg !5508, !tbaa !1118
  %conv78 = zext i8 %35 to i32, !dbg !5509
  %cmp79 = icmp eq i32 %conv78, 98, !dbg !5510
  br i1 %cmp79, label %if.then.81, label %if.end.82, !dbg !5511

if.then.81:                                       ; preds = %if.then.71
  store i32 1, i32* %retval, !dbg !5512
  br label %return, !dbg !5512

if.end.82:                                        ; preds = %if.then.71
  %36 = load i8*, i8** %encoding.addr, align 8, !dbg !5513, !tbaa !1100
  %arrayidx83 = getelementptr i8, i8* %36, i64 0, !dbg !5513
  %37 = load i8, i8* %arrayidx83, align 1, !dbg !5513, !tbaa !1118
  %conv84 = sext i8 %37 to i32, !dbg !5515
  %and85 = and i32 %conv84, 255, !dbg !5516
  %conv86 = trunc i32 %and85 to i8, !dbg !5517
  %idxprom87 = zext i8 %conv86 to i64, !dbg !5518
  %arrayidx88 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom87, !dbg !5518
  %38 = load i8, i8* %arrayidx88, align 1, !dbg !5518, !tbaa !1118
  %conv89 = zext i8 %38 to i32, !dbg !5519
  %cmp90 = icmp eq i32 %conv89, 108, !dbg !5520
  br i1 %cmp90, label %if.then.92, label %if.end.93, !dbg !5521

if.then.92:                                       ; preds = %if.end.82
  store i32 2, i32* %retval, !dbg !5522
  br label %return, !dbg !5522

if.end.93:                                        ; preds = %if.end.82
  br label %if.end.94, !dbg !5523

if.end.94:                                        ; preds = %if.end.93, %land.lhs.true.66, %if.end.56
  br label %if.end.160, !dbg !5524

if.else:                                          ; preds = %land.lhs.true.35, %if.end
  %39 = load i8*, i8** %encoding.addr, align 8, !dbg !5525, !tbaa !1100
  %arrayidx95 = getelementptr i8, i8* %39, i64 0, !dbg !5525
  %40 = load i8, i8* %arrayidx95, align 1, !dbg !5525, !tbaa !1118
  %conv96 = sext i8 %40 to i32, !dbg !5525
  %cmp97 = icmp eq i32 %conv96, 51, !dbg !5527
  br i1 %cmp97, label %land.lhs.true.99, label %if.end.159, !dbg !5528

land.lhs.true.99:                                 ; preds = %if.else
  %41 = load i8*, i8** %encoding.addr, align 8, !dbg !5529, !tbaa !1100
  %arrayidx100 = getelementptr i8, i8* %41, i64 1, !dbg !5529
  %42 = load i8, i8* %arrayidx100, align 1, !dbg !5529, !tbaa !1118
  %conv101 = sext i8 %42 to i32, !dbg !5529
  %cmp102 = icmp eq i32 %conv101, 50, !dbg !5531
  br i1 %cmp102, label %if.then.104, label %if.end.159, !dbg !5532

if.then.104:                                      ; preds = %land.lhs.true.99
  %43 = load i8*, i8** %encoding.addr, align 8, !dbg !5533, !tbaa !1100
  %add.ptr105 = getelementptr i8, i8* %43, i64 2, !dbg !5533
  store i8* %add.ptr105, i8** %encoding.addr, align 8, !dbg !5533, !tbaa !1100
  %44 = load i32*, i32** %bytelength.addr, align 8, !dbg !5535, !tbaa !1100
  store i32 4, i32* %44, align 4, !dbg !5536, !tbaa !1298
  %45 = load i8*, i8** %encoding.addr, align 8, !dbg !5537, !tbaa !1100
  %46 = load i8, i8* %45, align 1, !dbg !5539, !tbaa !1118
  %conv106 = sext i8 %46 to i32, !dbg !5539
  %cmp107 = icmp eq i32 %conv106, 0, !dbg !5540
  br i1 %cmp107, label %if.then.109, label %if.end.110, !dbg !5541

if.then.109:                                      ; preds = %if.then.104
  store i32 4, i32* %retval, !dbg !5542
  br label %return, !dbg !5542

if.end.110:                                       ; preds = %if.then.104
  %47 = load i8*, i8** %encoding.addr, align 8, !dbg !5544, !tbaa !1100
  %48 = load i8, i8* %47, align 1, !dbg !5546, !tbaa !1118
  %conv111 = sext i8 %48 to i32, !dbg !5546
  %cmp112 = icmp eq i32 %conv111, 45, !dbg !5547
  br i1 %cmp112, label %if.then.118, label %lor.lhs.false.114, !dbg !5548

lor.lhs.false.114:                                ; preds = %if.end.110
  %49 = load i8*, i8** %encoding.addr, align 8, !dbg !5549, !tbaa !1100
  %50 = load i8, i8* %49, align 1, !dbg !5551, !tbaa !1118
  %conv115 = sext i8 %50 to i32, !dbg !5551
  %cmp116 = icmp eq i32 %conv115, 95, !dbg !5552
  br i1 %cmp116, label %if.then.118, label %if.end.120, !dbg !5553

if.then.118:                                      ; preds = %lor.lhs.false.114, %if.end.110
  %51 = load i8*, i8** %encoding.addr, align 8, !dbg !5554, !tbaa !1100
  %incdec.ptr119 = getelementptr i8, i8* %51, i32 1, !dbg !5554
  store i8* %incdec.ptr119, i8** %encoding.addr, align 8, !dbg !5554, !tbaa !1100
  br label %if.end.120, !dbg !5555

if.end.120:                                       ; preds = %if.then.118, %lor.lhs.false.114
  %52 = load i8*, i8** %encoding.addr, align 8, !dbg !5556, !tbaa !1100
  %arrayidx121 = getelementptr i8, i8* %52, i64 1, !dbg !5556
  %53 = load i8, i8* %arrayidx121, align 1, !dbg !5556, !tbaa !1118
  %conv122 = sext i8 %53 to i32, !dbg !5558
  %and123 = and i32 %conv122, 255, !dbg !5559
  %conv124 = trunc i32 %and123 to i8, !dbg !5560
  %idxprom125 = zext i8 %conv124 to i64, !dbg !5561
  %arrayidx126 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom125, !dbg !5561
  %54 = load i8, i8* %arrayidx126, align 1, !dbg !5561, !tbaa !1118
  %conv127 = zext i8 %54 to i32, !dbg !5562
  %cmp128 = icmp eq i32 %conv127, 101, !dbg !5563
  br i1 %cmp128, label %land.lhs.true.130, label %if.end.158, !dbg !5564

land.lhs.true.130:                                ; preds = %if.end.120
  %55 = load i8*, i8** %encoding.addr, align 8, !dbg !5565, !tbaa !1100
  %arrayidx131 = getelementptr i8, i8* %55, i64 2, !dbg !5565
  %56 = load i8, i8* %arrayidx131, align 1, !dbg !5565, !tbaa !1118
  %conv132 = sext i8 %56 to i32, !dbg !5565
  %cmp133 = icmp eq i32 %conv132, 0, !dbg !5567
  br i1 %cmp133, label %if.then.135, label %if.end.158, !dbg !5568

if.then.135:                                      ; preds = %land.lhs.true.130
  %57 = load i8*, i8** %encoding.addr, align 8, !dbg !5569, !tbaa !1100
  %arrayidx136 = getelementptr i8, i8* %57, i64 0, !dbg !5569
  %58 = load i8, i8* %arrayidx136, align 1, !dbg !5569, !tbaa !1118
  %conv137 = sext i8 %58 to i32, !dbg !5572
  %and138 = and i32 %conv137, 255, !dbg !5573
  %conv139 = trunc i32 %and138 to i8, !dbg !5574
  %idxprom140 = zext i8 %conv139 to i64, !dbg !5575
  %arrayidx141 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom140, !dbg !5575
  %59 = load i8, i8* %arrayidx141, align 1, !dbg !5575, !tbaa !1118
  %conv142 = zext i8 %59 to i32, !dbg !5576
  %cmp143 = icmp eq i32 %conv142, 98, !dbg !5577
  br i1 %cmp143, label %if.then.145, label %if.end.146, !dbg !5578

if.then.145:                                      ; preds = %if.then.135
  store i32 3, i32* %retval, !dbg !5579
  br label %return, !dbg !5579

if.end.146:                                       ; preds = %if.then.135
  %60 = load i8*, i8** %encoding.addr, align 8, !dbg !5580, !tbaa !1100
  %arrayidx147 = getelementptr i8, i8* %60, i64 0, !dbg !5580
  %61 = load i8, i8* %arrayidx147, align 1, !dbg !5580, !tbaa !1118
  %conv148 = sext i8 %61 to i32, !dbg !5582
  %and149 = and i32 %conv148, 255, !dbg !5583
  %conv150 = trunc i32 %and149 to i8, !dbg !5584
  %idxprom151 = zext i8 %conv150 to i64, !dbg !5585
  %arrayidx152 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom151, !dbg !5585
  %62 = load i8, i8* %arrayidx152, align 1, !dbg !5585, !tbaa !1118
  %conv153 = zext i8 %62 to i32, !dbg !5586
  %cmp154 = icmp eq i32 %conv153, 108, !dbg !5587
  br i1 %cmp154, label %if.then.156, label %if.end.157, !dbg !5588

if.then.156:                                      ; preds = %if.end.146
  store i32 4, i32* %retval, !dbg !5589
  br label %return, !dbg !5589

if.end.157:                                       ; preds = %if.end.146
  br label %if.end.158, !dbg !5590

if.end.158:                                       ; preds = %if.end.157, %land.lhs.true.130, %if.end.120
  br label %if.end.159, !dbg !5591

if.end.159:                                       ; preds = %if.end.158, %land.lhs.true.99, %if.else
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %if.end.94
  br label %if.end.161, !dbg !5592

if.end.161:                                       ; preds = %if.end.160, %land.lhs.true.14, %land.lhs.true, %entry
  %63 = load i32*, i32** %bytelength.addr, align 8, !dbg !5593, !tbaa !1100
  store i32 3, i32* %63, align 4, !dbg !5594, !tbaa !1298
  store i32 0, i32* %retval, !dbg !5595
  br label %return, !dbg !5595

return:                                           ; preds = %if.end.161, %if.then.156, %if.then.145, %if.then.109, %if.then.92, %if.then.81, %if.then.45
  %64 = load i32, i32* %retval, !dbg !5596
  ret i32 %64, !dbg !5596
}

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #4

declare i8* @PyBytes_AsString(%struct._object*) #4

declare i32 @PyUnicodeDecodeError_GetStart(%struct._object*, i64*) #4

declare %struct._object* @PyUnicodeDecodeError_GetObject(%struct._object*) #4

declare %struct._object* @PyUnicodeDecodeError_GetEncoding(%struct._object*) #4

declare %struct._object* @PyUnicode_FromOrdinal(i32) #4

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCodec_SurrogateEscapeErrors(%struct._object* %exc) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %exc.addr = alloca %struct._object*, align 8
  %restuple = alloca %struct._object*, align 8
  %object = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %res = alloca %struct._object*, align 8
  %outp = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %ch = alloca i32, align 4
  %_py_decref_tmp104 = alloca %struct._object*, align 8
  %_py_decref_tmp117 = alloca %struct._object*, align 8
  %_py_decref_tmp134 = alloca %struct._object*, align 8
  %_py_decref_tmp147 = alloca %struct._object*, align 8
  %str = alloca %struct._object*, align 8
  %p = alloca i8*, align 8
  %ch164 = alloca [4 x i16], align 2
  %consumed = alloca i32, align 4
  %_py_decref_tmp181 = alloca %struct._object*, align 8
  %_py_decref_tmp216 = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8, !tbaa !1100
  call void @llvm.dbg.declare(metadata %struct._object** %exc.addr, metadata !1033, metadata !1104), !dbg !5597
  %0 = bitcast %struct._object** %restuple to i8*, !dbg !5598
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !5598
  call void @llvm.dbg.declare(metadata %struct._object** %restuple, metadata !1034, metadata !1104), !dbg !5599
  %1 = bitcast %struct._object** %object to i8*, !dbg !5600
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !5600
  call void @llvm.dbg.declare(metadata %struct._object** %object, metadata !1035, metadata !1104), !dbg !5601
  %2 = bitcast i64* %i to i8*, !dbg !5602
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !5602
  call void @llvm.dbg.declare(metadata i64* %i, metadata !1036, metadata !1104), !dbg !5603
  %3 = bitcast i64* %start to i8*, !dbg !5604
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !5604
  call void @llvm.dbg.declare(metadata i64* %start, metadata !1037, metadata !1104), !dbg !5605
  %4 = bitcast i64* %end to i8*, !dbg !5606
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !5606
  call void @llvm.dbg.declare(metadata i64* %end, metadata !1038, metadata !1104), !dbg !5607
  %5 = bitcast %struct._object** %res to i8*, !dbg !5608
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !5608
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !1039, metadata !1104), !dbg !5609
  %6 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !5610, !tbaa !1100
  %7 = load %struct._object*, %struct._object** @PyExc_UnicodeEncodeError, align 8, !dbg !5611, !tbaa !1100
  %call = call i32 @PyObject_IsInstance(%struct._object* %6, %struct._object* %7), !dbg !5612
  %tobool = icmp ne i32 %call, 0, !dbg !5612
  br i1 %tobool, label %if.then, label %if.else.160, !dbg !5613

if.then:                                          ; preds = %entry
  %8 = bitcast i8** %outp to i8*, !dbg !5614
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !5614
  call void @llvm.dbg.declare(metadata i8** %outp, metadata !1040, metadata !1104), !dbg !5615
  %9 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !5616, !tbaa !1100
  %call1 = call i32 @PyUnicodeEncodeError_GetStart(%struct._object* %9, i64* %start), !dbg !5618
  %tobool2 = icmp ne i32 %call1, 0, !dbg !5618
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !5619

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !5620
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.159, !dbg !5620

if.end:                                           ; preds = %if.then
  %10 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !5621, !tbaa !1100
  %call4 = call i32 @PyUnicodeEncodeError_GetEnd(%struct._object* %10, i64* %end), !dbg !5623
  %tobool5 = icmp ne i32 %call4, 0, !dbg !5623
  br i1 %tobool5, label %if.then.6, label %if.end.7, !dbg !5624

if.then.6:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !5625
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.159, !dbg !5625

if.end.7:                                         ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !5626, !tbaa !1100
  %call8 = call %struct._object* @PyUnicodeEncodeError_GetObject(%struct._object* %11), !dbg !5628
  store %struct._object* %call8, %struct._object** %object, align 8, !dbg !5629, !tbaa !1100
  %tobool9 = icmp ne %struct._object* %call8, null, !dbg !5629
  br i1 %tobool9, label %if.end.11, label %if.then.10, !dbg !5630

if.then.10:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval, !dbg !5631
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.159, !dbg !5631

if.end.11:                                        ; preds = %if.end.7
  %12 = load i64, i64* %end, align 8, !dbg !5632, !tbaa !1553
  %13 = load i64, i64* %start, align 8, !dbg !5633, !tbaa !1553
  %sub = sub i64 %12, %13, !dbg !5634
  %call12 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %sub), !dbg !5635
  store %struct._object* %call12, %struct._object** %res, align 8, !dbg !5636, !tbaa !1100
  %14 = load %struct._object*, %struct._object** %res, align 8, !dbg !5637, !tbaa !1100
  %tobool13 = icmp ne %struct._object* %14, null, !dbg !5637
  br i1 %tobool13, label %if.end.17, label %if.then.14, !dbg !5638

if.then.14:                                       ; preds = %if.end.11
  br label %do.body, !dbg !5639

do.body:                                          ; preds = %if.then.14
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5640
  call void @llvm.lifetime.start(i64 8, i8* %15) #2, !dbg !5640
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !1043, metadata !1104), !dbg !5642
  %16 = load %struct._object*, %struct._object** %object, align 8, !dbg !5643, !tbaa !1100
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8, !dbg !5642, !tbaa !1100
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5644, !tbaa !1100
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0, !dbg !5646
  %18 = load i64, i64* %ob_refcnt, align 8, !dbg !5647, !tbaa !1335
  %dec = add i64 %18, -1, !dbg !5647
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !5647, !tbaa !1335
  %cmp = icmp ne i64 %dec, 0, !dbg !5648
  br i1 %cmp, label %if.then.15, label %if.else, !dbg !5649

if.then.15:                                       ; preds = %do.body
  br label %if.end.16, !dbg !5650

if.else:                                          ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5652, !tbaa !1100
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1, !dbg !5654
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5654, !tbaa !1344
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4, !dbg !5655
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !5655, !tbaa !1346
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5656, !tbaa !1100
  call void %21(%struct._object* %22), !dbg !5657
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  %23 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5658
  call void @llvm.lifetime.end(i64 8, i8* %23) #2, !dbg !5658
  br label %do.cond, !dbg !5660

do.cond:                                          ; preds = %if.end.16
  br label %do.end, !dbg !5661

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !5663
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.159, !dbg !5663

if.end.17:                                        ; preds = %if.end.11
  %24 = load %struct._object*, %struct._object** %res, align 8, !dbg !5664, !tbaa !1100
  %call18 = call i8* @PyBytes_AsString(%struct._object* %24), !dbg !5665
  store i8* %call18, i8** %outp, align 8, !dbg !5666, !tbaa !1100
  %25 = load i64, i64* %start, align 8, !dbg !5667, !tbaa !1553
  store i64 %25, i64* %i, align 8, !dbg !5668, !tbaa !1553
  br label %for.cond, !dbg !5669

for.cond:                                         ; preds = %for.inc, %if.end.17
  %26 = load i64, i64* %i, align 8, !dbg !5670, !tbaa !1553
  %27 = load i64, i64* %end, align 8, !dbg !5673, !tbaa !1553
  %cmp19 = icmp slt i64 %26, %27, !dbg !5674
  br i1 %cmp19, label %for.body, label %for.end, !dbg !5675

for.body:                                         ; preds = %for.cond
  %28 = bitcast i32* %ch to i8*, !dbg !5676
  call void @llvm.lifetime.start(i64 4, i8* %28) #2, !dbg !5676
  call void @llvm.dbg.declare(metadata i32* %ch, metadata !1047, metadata !1104), !dbg !5677
  %29 = load %struct._object*, %struct._object** %object, align 8, !dbg !5678, !tbaa !1100
  %30 = bitcast %struct._object* %29 to %struct.PyASCIIObject*, !dbg !5679
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %30, i32 0, i32 3, !dbg !5680
  %31 = bitcast %struct.anon* %state to i32*, !dbg !5681
  %bf.load = load i32, i32* %31, align 4, !dbg !5681
  %bf.lshr = lshr i32 %bf.load, 2, !dbg !5681
  %bf.clear = and i32 %bf.lshr, 7, !dbg !5681
  %cmp20 = icmp eq i32 %bf.clear, 1, !dbg !5682
  br i1 %cmp20, label %cond.true, label %cond.false.37, !dbg !5683

cond.true:                                        ; preds = %for.body
  %32 = load i64, i64* %i, align 8, !dbg !5684, !tbaa !1553
  %33 = load %struct._object*, %struct._object** %object, align 8, !dbg !5686, !tbaa !1100
  %34 = bitcast %struct._object* %33 to %struct.PyASCIIObject*, !dbg !5687
  %state21 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %34, i32 0, i32 3, !dbg !5688
  %35 = bitcast %struct.anon* %state21 to i32*, !dbg !5689
  %bf.load22 = load i32, i32* %35, align 4, !dbg !5689
  %bf.lshr23 = lshr i32 %bf.load22, 5, !dbg !5689
  %bf.clear24 = and i32 %bf.lshr23, 1, !dbg !5689
  %tobool25 = icmp ne i32 %bf.clear24, 0, !dbg !5690
  br i1 %tobool25, label %cond.true.26, label %cond.false.34, !dbg !5690

cond.true.26:                                     ; preds = %cond.true
  %36 = load %struct._object*, %struct._object** %object, align 8, !dbg !5691, !tbaa !1100
  %37 = bitcast %struct._object* %36 to %struct.PyASCIIObject*, !dbg !5693
  %state27 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %37, i32 0, i32 3, !dbg !5694
  %38 = bitcast %struct.anon* %state27 to i32*, !dbg !5695
  %bf.load28 = load i32, i32* %38, align 4, !dbg !5695
  %bf.lshr29 = lshr i32 %bf.load28, 6, !dbg !5695
  %bf.clear30 = and i32 %bf.lshr29, 1, !dbg !5695
  %tobool31 = icmp ne i32 %bf.clear30, 0, !dbg !5696
  br i1 %tobool31, label %cond.true.32, label %cond.false, !dbg !5696

cond.true.32:                                     ; preds = %cond.true.26
  %39 = load %struct._object*, %struct._object** %object, align 8, !dbg !5697, !tbaa !1100
  %40 = bitcast %struct._object* %39 to %struct.PyASCIIObject*, !dbg !5699
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %40, i64 1, !dbg !5700
  %41 = bitcast %struct.PyASCIIObject* %add.ptr to i8*, !dbg !5701
  br label %cond.end, !dbg !5696

cond.false:                                       ; preds = %cond.true.26
  %42 = load %struct._object*, %struct._object** %object, align 8, !dbg !5702, !tbaa !1100
  %43 = bitcast %struct._object* %42 to %struct.PyCompactUnicodeObject*, !dbg !5704
  %add.ptr33 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %43, i64 1, !dbg !5705
  %44 = bitcast %struct.PyCompactUnicodeObject* %add.ptr33 to i8*, !dbg !5706
  br label %cond.end, !dbg !5696

cond.end:                                         ; preds = %cond.false, %cond.true.32
  %cond = phi i8* [ %41, %cond.true.32 ], [ %44, %cond.false ], !dbg !5696
  br label %cond.end.35, !dbg !5707

cond.false.34:                                    ; preds = %cond.true
  %45 = load %struct._object*, %struct._object** %object, align 8, !dbg !5710, !tbaa !1100
  %46 = bitcast %struct._object* %45 to %struct.PyUnicodeObject*, !dbg !5712
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %46, i32 0, i32 1, !dbg !5713
  %any = bitcast %union.anon* %data to i8**, !dbg !5714
  %47 = load i8*, i8** %any, align 8, !dbg !5714, !tbaa !1100
  br label %cond.end.35, !dbg !5690

cond.end.35:                                      ; preds = %cond.false.34, %cond.end
  %cond36 = phi i8* [ %cond, %cond.end ], [ %47, %cond.false.34 ], !dbg !5690
  %arrayidx = getelementptr i8, i8* %cond36, i64 %32, !dbg !5715
  %48 = load i8, i8* %arrayidx, align 1, !dbg !5715, !tbaa !1118
  %conv = zext i8 %48 to i32, !dbg !5715
  br label %cond.end.95, !dbg !5683

cond.false.37:                                    ; preds = %for.body
  %49 = load %struct._object*, %struct._object** %object, align 8, !dbg !5718, !tbaa !1100
  %50 = bitcast %struct._object* %49 to %struct.PyASCIIObject*, !dbg !5720
  %state38 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %50, i32 0, i32 3, !dbg !5721
  %51 = bitcast %struct.anon* %state38 to i32*, !dbg !5722
  %bf.load39 = load i32, i32* %51, align 4, !dbg !5722
  %bf.lshr40 = lshr i32 %bf.load39, 2, !dbg !5722
  %bf.clear41 = and i32 %bf.lshr40, 7, !dbg !5722
  %cmp42 = icmp eq i32 %bf.clear41, 2, !dbg !5723
  br i1 %cmp42, label %cond.true.44, label %cond.false.69, !dbg !5724

cond.true.44:                                     ; preds = %cond.false.37
  %52 = load i64, i64* %i, align 8, !dbg !5725, !tbaa !1553
  %53 = load %struct._object*, %struct._object** %object, align 8, !dbg !5727, !tbaa !1100
  %54 = bitcast %struct._object* %53 to %struct.PyASCIIObject*, !dbg !5728
  %state45 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %54, i32 0, i32 3, !dbg !5729
  %55 = bitcast %struct.anon* %state45 to i32*, !dbg !5730
  %bf.load46 = load i32, i32* %55, align 4, !dbg !5730
  %bf.lshr47 = lshr i32 %bf.load46, 5, !dbg !5730
  %bf.clear48 = and i32 %bf.lshr47, 1, !dbg !5730
  %tobool49 = icmp ne i32 %bf.clear48, 0, !dbg !5731
  br i1 %tobool49, label %cond.true.50, label %cond.false.62, !dbg !5731

cond.true.50:                                     ; preds = %cond.true.44
  %56 = load %struct._object*, %struct._object** %object, align 8, !dbg !5732, !tbaa !1100
  %57 = bitcast %struct._object* %56 to %struct.PyASCIIObject*, !dbg !5734
  %state51 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %57, i32 0, i32 3, !dbg !5735
  %58 = bitcast %struct.anon* %state51 to i32*, !dbg !5736
  %bf.load52 = load i32, i32* %58, align 4, !dbg !5736
  %bf.lshr53 = lshr i32 %bf.load52, 6, !dbg !5736
  %bf.clear54 = and i32 %bf.lshr53, 1, !dbg !5736
  %tobool55 = icmp ne i32 %bf.clear54, 0, !dbg !5737
  br i1 %tobool55, label %cond.true.56, label %cond.false.58, !dbg !5737

cond.true.56:                                     ; preds = %cond.true.50
  %59 = load %struct._object*, %struct._object** %object, align 8, !dbg !5738, !tbaa !1100
  %60 = bitcast %struct._object* %59 to %struct.PyASCIIObject*, !dbg !5740
  %add.ptr57 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %60, i64 1, !dbg !5741
  %61 = bitcast %struct.PyASCIIObject* %add.ptr57 to i8*, !dbg !5742
  br label %cond.end.60, !dbg !5737

cond.false.58:                                    ; preds = %cond.true.50
  %62 = load %struct._object*, %struct._object** %object, align 8, !dbg !5743, !tbaa !1100
  %63 = bitcast %struct._object* %62 to %struct.PyCompactUnicodeObject*, !dbg !5745
  %add.ptr59 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %63, i64 1, !dbg !5746
  %64 = bitcast %struct.PyCompactUnicodeObject* %add.ptr59 to i8*, !dbg !5747
  br label %cond.end.60, !dbg !5737

cond.end.60:                                      ; preds = %cond.false.58, %cond.true.56
  %cond61 = phi i8* [ %61, %cond.true.56 ], [ %64, %cond.false.58 ], !dbg !5737
  br label %cond.end.65, !dbg !5748

cond.false.62:                                    ; preds = %cond.true.44
  %65 = load %struct._object*, %struct._object** %object, align 8, !dbg !5751, !tbaa !1100
  %66 = bitcast %struct._object* %65 to %struct.PyUnicodeObject*, !dbg !5753
  %data63 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %66, i32 0, i32 1, !dbg !5754
  %any64 = bitcast %union.anon* %data63 to i8**, !dbg !5755
  %67 = load i8*, i8** %any64, align 8, !dbg !5755, !tbaa !1100
  br label %cond.end.65, !dbg !5731

cond.end.65:                                      ; preds = %cond.false.62, %cond.end.60
  %cond66 = phi i8* [ %cond61, %cond.end.60 ], [ %67, %cond.false.62 ], !dbg !5731
  %68 = bitcast i8* %cond66 to i16*, !dbg !5756
  %arrayidx67 = getelementptr i16, i16* %68, i64 %52, !dbg !5759
  %69 = load i16, i16* %arrayidx67, align 2, !dbg !5759, !tbaa !3255
  %conv68 = zext i16 %69 to i32, !dbg !5759
  br label %cond.end.93, !dbg !5724

cond.false.69:                                    ; preds = %cond.false.37
  %70 = load i64, i64* %i, align 8, !dbg !5760, !tbaa !1553
  %71 = load %struct._object*, %struct._object** %object, align 8, !dbg !5762, !tbaa !1100
  %72 = bitcast %struct._object* %71 to %struct.PyASCIIObject*, !dbg !5763
  %state70 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %72, i32 0, i32 3, !dbg !5764
  %73 = bitcast %struct.anon* %state70 to i32*, !dbg !5765
  %bf.load71 = load i32, i32* %73, align 4, !dbg !5765
  %bf.lshr72 = lshr i32 %bf.load71, 5, !dbg !5765
  %bf.clear73 = and i32 %bf.lshr72, 1, !dbg !5765
  %tobool74 = icmp ne i32 %bf.clear73, 0, !dbg !5766
  br i1 %tobool74, label %cond.true.75, label %cond.false.87, !dbg !5766

cond.true.75:                                     ; preds = %cond.false.69
  %74 = load %struct._object*, %struct._object** %object, align 8, !dbg !5767, !tbaa !1100
  %75 = bitcast %struct._object* %74 to %struct.PyASCIIObject*, !dbg !5769
  %state76 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %75, i32 0, i32 3, !dbg !5770
  %76 = bitcast %struct.anon* %state76 to i32*, !dbg !5771
  %bf.load77 = load i32, i32* %76, align 4, !dbg !5771
  %bf.lshr78 = lshr i32 %bf.load77, 6, !dbg !5771
  %bf.clear79 = and i32 %bf.lshr78, 1, !dbg !5771
  %tobool80 = icmp ne i32 %bf.clear79, 0, !dbg !5772
  br i1 %tobool80, label %cond.true.81, label %cond.false.83, !dbg !5772

cond.true.81:                                     ; preds = %cond.true.75
  %77 = load %struct._object*, %struct._object** %object, align 8, !dbg !5773, !tbaa !1100
  %78 = bitcast %struct._object* %77 to %struct.PyASCIIObject*, !dbg !5775
  %add.ptr82 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %78, i64 1, !dbg !5776
  %79 = bitcast %struct.PyASCIIObject* %add.ptr82 to i8*, !dbg !5777
  br label %cond.end.85, !dbg !5772

cond.false.83:                                    ; preds = %cond.true.75
  %80 = load %struct._object*, %struct._object** %object, align 8, !dbg !5778, !tbaa !1100
  %81 = bitcast %struct._object* %80 to %struct.PyCompactUnicodeObject*, !dbg !5780
  %add.ptr84 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %81, i64 1, !dbg !5781
  %82 = bitcast %struct.PyCompactUnicodeObject* %add.ptr84 to i8*, !dbg !5782
  br label %cond.end.85, !dbg !5772

cond.end.85:                                      ; preds = %cond.false.83, %cond.true.81
  %cond86 = phi i8* [ %79, %cond.true.81 ], [ %82, %cond.false.83 ], !dbg !5772
  br label %cond.end.90, !dbg !5783

cond.false.87:                                    ; preds = %cond.false.69
  %83 = load %struct._object*, %struct._object** %object, align 8, !dbg !5786, !tbaa !1100
  %84 = bitcast %struct._object* %83 to %struct.PyUnicodeObject*, !dbg !5788
  %data88 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %84, i32 0, i32 1, !dbg !5789
  %any89 = bitcast %union.anon* %data88 to i8**, !dbg !5790
  %85 = load i8*, i8** %any89, align 8, !dbg !5790, !tbaa !1100
  br label %cond.end.90, !dbg !5766

cond.end.90:                                      ; preds = %cond.false.87, %cond.end.85
  %cond91 = phi i8* [ %cond86, %cond.end.85 ], [ %85, %cond.false.87 ], !dbg !5766
  %86 = bitcast i8* %cond91 to i32*, !dbg !5791
  %arrayidx92 = getelementptr i32, i32* %86, i64 %70, !dbg !5794
  %87 = load i32, i32* %arrayidx92, align 4, !dbg !5794, !tbaa !1298
  br label %cond.end.93, !dbg !5724

cond.end.93:                                      ; preds = %cond.end.90, %cond.end.65
  %cond94 = phi i32 [ %conv68, %cond.end.65 ], [ %87, %cond.end.90 ], !dbg !5724
  br label %cond.end.95, !dbg !5795

cond.end.95:                                      ; preds = %cond.end.93, %cond.end.35
  %cond96 = phi i32 [ %conv, %cond.end.35 ], [ %cond94, %cond.end.93 ], !dbg !5683
  store i32 %cond96, i32* %ch, align 4, !dbg !5798, !tbaa !1298
  %88 = load i32, i32* %ch, align 4, !dbg !5801, !tbaa !1298
  %cmp97 = icmp ult i32 %88, 56448, !dbg !5802
  br i1 %cmp97, label %if.then.101, label %lor.lhs.false, !dbg !5803

lor.lhs.false:                                    ; preds = %cond.end.95
  %89 = load i32, i32* %ch, align 4, !dbg !5804, !tbaa !1298
  %cmp99 = icmp ugt i32 %89, 56575, !dbg !5806
  br i1 %cmp99, label %if.then.101, label %if.end.129, !dbg !5807

if.then.101:                                      ; preds = %lor.lhs.false, %cond.end.95
  %90 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !5808, !tbaa !1100
  %ob_type102 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 1, !dbg !5809
  %91 = load %struct._typeobject*, %struct._typeobject** %ob_type102, align 8, !dbg !5809, !tbaa !1344
  %92 = bitcast %struct._typeobject* %91 to %struct._object*, !dbg !5810
  %93 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !5811, !tbaa !1100
  call void @PyErr_SetObject(%struct._object* %92, %struct._object* %93), !dbg !5812
  br label %do.body.103, !dbg !5813

do.body.103:                                      ; preds = %if.then.101
  %94 = bitcast %struct._object** %_py_decref_tmp104 to i8*, !dbg !5814
  call void @llvm.lifetime.start(i64 8, i8* %94) #2, !dbg !5814
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp104, metadata !1051, metadata !1104), !dbg !5816
  %95 = load %struct._object*, %struct._object** %res, align 8, !dbg !5817, !tbaa !1100
  store %struct._object* %95, %struct._object** %_py_decref_tmp104, align 8, !dbg !5816, !tbaa !1100
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8, !dbg !5818, !tbaa !1100
  %ob_refcnt105 = getelementptr inbounds %struct._object, %struct._object* %96, i32 0, i32 0, !dbg !5820
  %97 = load i64, i64* %ob_refcnt105, align 8, !dbg !5821, !tbaa !1335
  %dec106 = add i64 %97, -1, !dbg !5821
  store i64 %dec106, i64* %ob_refcnt105, align 8, !dbg !5821, !tbaa !1335
  %cmp107 = icmp ne i64 %dec106, 0, !dbg !5822
  br i1 %cmp107, label %if.then.109, label %if.else.110, !dbg !5823

if.then.109:                                      ; preds = %do.body.103
  br label %if.end.113, !dbg !5824

if.else.110:                                      ; preds = %do.body.103
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8, !dbg !5826, !tbaa !1100
  %ob_type111 = getelementptr inbounds %struct._object, %struct._object* %98, i32 0, i32 1, !dbg !5828
  %99 = load %struct._typeobject*, %struct._typeobject** %ob_type111, align 8, !dbg !5828, !tbaa !1344
  %tp_dealloc112 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %99, i32 0, i32 4, !dbg !5829
  %100 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc112, align 8, !dbg !5829, !tbaa !1346
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8, !dbg !5830, !tbaa !1100
  call void %100(%struct._object* %101), !dbg !5831
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.110, %if.then.109
  %102 = bitcast %struct._object** %_py_decref_tmp104 to i8*, !dbg !5832
  call void @llvm.lifetime.end(i64 8, i8* %102) #2, !dbg !5832
  br label %do.cond.114, !dbg !5834

do.cond.114:                                      ; preds = %if.end.113
  br label %do.end.115, !dbg !5835

do.end.115:                                       ; preds = %do.cond.114
  br label %do.body.116, !dbg !5837

do.body.116:                                      ; preds = %do.end.115
  %103 = bitcast %struct._object** %_py_decref_tmp117 to i8*, !dbg !5838
  call void @llvm.lifetime.start(i64 8, i8* %103) #2, !dbg !5838
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp117, metadata !1055, metadata !1104), !dbg !5840
  %104 = load %struct._object*, %struct._object** %object, align 8, !dbg !5841, !tbaa !1100
  store %struct._object* %104, %struct._object** %_py_decref_tmp117, align 8, !dbg !5840, !tbaa !1100
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp117, align 8, !dbg !5842, !tbaa !1100
  %ob_refcnt118 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 0, !dbg !5844
  %106 = load i64, i64* %ob_refcnt118, align 8, !dbg !5845, !tbaa !1335
  %dec119 = add i64 %106, -1, !dbg !5845
  store i64 %dec119, i64* %ob_refcnt118, align 8, !dbg !5845, !tbaa !1335
  %cmp120 = icmp ne i64 %dec119, 0, !dbg !5846
  br i1 %cmp120, label %if.then.122, label %if.else.123, !dbg !5847

if.then.122:                                      ; preds = %do.body.116
  br label %if.end.126, !dbg !5848

if.else.123:                                      ; preds = %do.body.116
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp117, align 8, !dbg !5850, !tbaa !1100
  %ob_type124 = getelementptr inbounds %struct._object, %struct._object* %107, i32 0, i32 1, !dbg !5852
  %108 = load %struct._typeobject*, %struct._typeobject** %ob_type124, align 8, !dbg !5852, !tbaa !1344
  %tp_dealloc125 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %108, i32 0, i32 4, !dbg !5853
  %109 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc125, align 8, !dbg !5853, !tbaa !1346
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp117, align 8, !dbg !5854, !tbaa !1100
  call void %109(%struct._object* %110), !dbg !5855
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.123, %if.then.122
  %111 = bitcast %struct._object** %_py_decref_tmp117 to i8*, !dbg !5856
  call void @llvm.lifetime.end(i64 8, i8* %111) #2, !dbg !5856
  br label %do.cond.127, !dbg !5857

do.cond.127:                                      ; preds = %if.end.126
  br label %do.end.128, !dbg !5858

do.end.128:                                       ; preds = %do.cond.127
  store %struct._object* null, %struct._object** %retval, !dbg !5860
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5860

if.end.129:                                       ; preds = %lor.lhs.false
  %112 = load i32, i32* %ch, align 4, !dbg !5861, !tbaa !1298
  %sub130 = sub i32 %112, 56320, !dbg !5862
  %conv131 = trunc i32 %sub130 to i8, !dbg !5861
  %113 = load i8*, i8** %outp, align 8, !dbg !5863, !tbaa !1100
  %incdec.ptr = getelementptr i8, i8* %113, i32 1, !dbg !5863
  store i8* %incdec.ptr, i8** %outp, align 8, !dbg !5863, !tbaa !1100
  store i8 %conv131, i8* %113, align 1, !dbg !5864, !tbaa !1118
  store i32 0, i32* %cleanup.dest.slot, !dbg !5865
  br label %cleanup, !dbg !5865

cleanup:                                          ; preds = %if.end.129, %do.end.128
  %114 = bitcast i32* %ch to i8*, !dbg !5866
  call void @llvm.lifetime.end(i64 4, i8* %114) #2, !dbg !5866
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.159 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5867

for.inc:                                          ; preds = %cleanup.cont
  %115 = load i64, i64* %i, align 8, !dbg !5868, !tbaa !1553
  %inc = add i64 %115, 1, !dbg !5868
  store i64 %inc, i64* %i, align 8, !dbg !5868, !tbaa !1553
  br label %for.cond, !dbg !5869

for.end:                                          ; preds = %for.cond
  %116 = load %struct._object*, %struct._object** %res, align 8, !dbg !5870, !tbaa !1100
  %117 = load i64, i64* %end, align 8, !dbg !5871, !tbaa !1553
  %call132 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), %struct._object* %116, i64 %117), !dbg !5872
  store %struct._object* %call132, %struct._object** %restuple, align 8, !dbg !5873, !tbaa !1100
  br label %do.body.133, !dbg !5874

do.body.133:                                      ; preds = %for.end
  %118 = bitcast %struct._object** %_py_decref_tmp134 to i8*, !dbg !5875
  call void @llvm.lifetime.start(i64 8, i8* %118) #2, !dbg !5875
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp134, metadata !1057, metadata !1104), !dbg !5877
  %119 = load %struct._object*, %struct._object** %res, align 8, !dbg !5878, !tbaa !1100
  store %struct._object* %119, %struct._object** %_py_decref_tmp134, align 8, !dbg !5877, !tbaa !1100
  %120 = load %struct._object*, %struct._object** %_py_decref_tmp134, align 8, !dbg !5879, !tbaa !1100
  %ob_refcnt135 = getelementptr inbounds %struct._object, %struct._object* %120, i32 0, i32 0, !dbg !5881
  %121 = load i64, i64* %ob_refcnt135, align 8, !dbg !5882, !tbaa !1335
  %dec136 = add i64 %121, -1, !dbg !5882
  store i64 %dec136, i64* %ob_refcnt135, align 8, !dbg !5882, !tbaa !1335
  %cmp137 = icmp ne i64 %dec136, 0, !dbg !5883
  br i1 %cmp137, label %if.then.139, label %if.else.140, !dbg !5884

if.then.139:                                      ; preds = %do.body.133
  br label %if.end.143, !dbg !5885

if.else.140:                                      ; preds = %do.body.133
  %122 = load %struct._object*, %struct._object** %_py_decref_tmp134, align 8, !dbg !5887, !tbaa !1100
  %ob_type141 = getelementptr inbounds %struct._object, %struct._object* %122, i32 0, i32 1, !dbg !5889
  %123 = load %struct._typeobject*, %struct._typeobject** %ob_type141, align 8, !dbg !5889, !tbaa !1344
  %tp_dealloc142 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %123, i32 0, i32 4, !dbg !5890
  %124 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc142, align 8, !dbg !5890, !tbaa !1346
  %125 = load %struct._object*, %struct._object** %_py_decref_tmp134, align 8, !dbg !5891, !tbaa !1100
  call void %124(%struct._object* %125), !dbg !5892
  br label %if.end.143

if.end.143:                                       ; preds = %if.else.140, %if.then.139
  %126 = bitcast %struct._object** %_py_decref_tmp134 to i8*, !dbg !5893
  call void @llvm.lifetime.end(i64 8, i8* %126) #2, !dbg !5893
  br label %do.cond.144, !dbg !5895

do.cond.144:                                      ; preds = %if.end.143
  br label %do.end.145, !dbg !5896

do.end.145:                                       ; preds = %do.cond.144
  br label %do.body.146, !dbg !5898

do.body.146:                                      ; preds = %do.end.145
  %127 = bitcast %struct._object** %_py_decref_tmp147 to i8*, !dbg !5899
  call void @llvm.lifetime.start(i64 8, i8* %127) #2, !dbg !5899
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp147, metadata !1059, metadata !1104), !dbg !5901
  %128 = load %struct._object*, %struct._object** %object, align 8, !dbg !5902, !tbaa !1100
  store %struct._object* %128, %struct._object** %_py_decref_tmp147, align 8, !dbg !5901, !tbaa !1100
  %129 = load %struct._object*, %struct._object** %_py_decref_tmp147, align 8, !dbg !5903, !tbaa !1100
  %ob_refcnt148 = getelementptr inbounds %struct._object, %struct._object* %129, i32 0, i32 0, !dbg !5905
  %130 = load i64, i64* %ob_refcnt148, align 8, !dbg !5906, !tbaa !1335
  %dec149 = add i64 %130, -1, !dbg !5906
  store i64 %dec149, i64* %ob_refcnt148, align 8, !dbg !5906, !tbaa !1335
  %cmp150 = icmp ne i64 %dec149, 0, !dbg !5907
  br i1 %cmp150, label %if.then.152, label %if.else.153, !dbg !5908

if.then.152:                                      ; preds = %do.body.146
  br label %if.end.156, !dbg !5909

if.else.153:                                      ; preds = %do.body.146
  %131 = load %struct._object*, %struct._object** %_py_decref_tmp147, align 8, !dbg !5911, !tbaa !1100
  %ob_type154 = getelementptr inbounds %struct._object, %struct._object* %131, i32 0, i32 1, !dbg !5913
  %132 = load %struct._typeobject*, %struct._typeobject** %ob_type154, align 8, !dbg !5913, !tbaa !1344
  %tp_dealloc155 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %132, i32 0, i32 4, !dbg !5914
  %133 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc155, align 8, !dbg !5914, !tbaa !1346
  %134 = load %struct._object*, %struct._object** %_py_decref_tmp147, align 8, !dbg !5915, !tbaa !1100
  call void %133(%struct._object* %134), !dbg !5916
  br label %if.end.156

if.end.156:                                       ; preds = %if.else.153, %if.then.152
  %135 = bitcast %struct._object** %_py_decref_tmp147 to i8*, !dbg !5917
  call void @llvm.lifetime.end(i64 8, i8* %135) #2, !dbg !5917
  br label %do.cond.157, !dbg !5918

do.cond.157:                                      ; preds = %if.end.156
  br label %do.end.158, !dbg !5919

do.end.158:                                       ; preds = %do.cond.157
  %136 = load %struct._object*, %struct._object** %restuple, align 8, !dbg !5921, !tbaa !1100
  store %struct._object* %136, %struct._object** %retval, !dbg !5922
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.159, !dbg !5922

cleanup.159:                                      ; preds = %do.end.158, %cleanup, %do.end, %if.then.10, %if.then.6, %if.then.3
  %137 = bitcast i8** %outp to i8*, !dbg !5923
  call void @llvm.lifetime.end(i64 8, i8* %137) #2, !dbg !5923
  br label %cleanup.246

if.else.160:                                      ; preds = %entry
  %138 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !5924, !tbaa !1100
  %139 = load %struct._object*, %struct._object** @PyExc_UnicodeDecodeError, align 8, !dbg !5925, !tbaa !1100
  %call161 = call i32 @PyObject_IsInstance(%struct._object* %138, %struct._object* %139), !dbg !5926
  %tobool162 = icmp ne i32 %call161, 0, !dbg !5926
  br i1 %tobool162, label %if.then.163, label %if.else.245, !dbg !5927

if.then.163:                                      ; preds = %if.else.160
  %140 = bitcast %struct._object** %str to i8*, !dbg !5928
  call void @llvm.lifetime.start(i64 8, i8* %140) #2, !dbg !5928
  call void @llvm.dbg.declare(metadata %struct._object** %str, metadata !1061, metadata !1104), !dbg !5929
  %141 = bitcast i8** %p to i8*, !dbg !5930
  call void @llvm.lifetime.start(i64 8, i8* %141) #2, !dbg !5930
  call void @llvm.dbg.declare(metadata i8** %p, metadata !1064, metadata !1104), !dbg !5931
  %142 = bitcast [4 x i16]* %ch164 to i8*, !dbg !5932
  call void @llvm.lifetime.start(i64 8, i8* %142) #2, !dbg !5932
  call void @llvm.dbg.declare(metadata [4 x i16]* %ch164, metadata !1065, metadata !1104), !dbg !5933
  %143 = bitcast i32* %consumed to i8*, !dbg !5934
  call void @llvm.lifetime.start(i64 4, i8* %143) #2, !dbg !5934
  call void @llvm.dbg.declare(metadata i32* %consumed, metadata !1069, metadata !1104), !dbg !5935
  store i32 0, i32* %consumed, align 4, !dbg !5935, !tbaa !1298
  %144 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !5936, !tbaa !1100
  %call165 = call i32 @PyUnicodeDecodeError_GetStart(%struct._object* %144, i64* %start), !dbg !5938
  %tobool166 = icmp ne i32 %call165, 0, !dbg !5938
  br i1 %tobool166, label %if.then.167, label %if.end.168, !dbg !5939

if.then.167:                                      ; preds = %if.then.163
  store %struct._object* null, %struct._object** %retval, !dbg !5940
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.241, !dbg !5940

if.end.168:                                       ; preds = %if.then.163
  %145 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !5941, !tbaa !1100
  %call169 = call i32 @PyUnicodeDecodeError_GetEnd(%struct._object* %145, i64* %end), !dbg !5943
  %tobool170 = icmp ne i32 %call169, 0, !dbg !5943
  br i1 %tobool170, label %if.then.171, label %if.end.172, !dbg !5944

if.then.171:                                      ; preds = %if.end.168
  store %struct._object* null, %struct._object** %retval, !dbg !5945
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.241, !dbg !5945

if.end.172:                                       ; preds = %if.end.168
  %146 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !5946, !tbaa !1100
  %call173 = call %struct._object* @PyUnicodeDecodeError_GetObject(%struct._object* %146), !dbg !5948
  store %struct._object* %call173, %struct._object** %object, align 8, !dbg !5949, !tbaa !1100
  %tobool174 = icmp ne %struct._object* %call173, null, !dbg !5949
  br i1 %tobool174, label %if.end.176, label %if.then.175, !dbg !5950

if.then.175:                                      ; preds = %if.end.172
  store %struct._object* null, %struct._object** %retval, !dbg !5951
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.241, !dbg !5951

if.end.176:                                       ; preds = %if.end.172
  %147 = load %struct._object*, %struct._object** %object, align 8, !dbg !5952, !tbaa !1100
  %call177 = call i8* @PyBytes_AsString(%struct._object* %147), !dbg !5953
  store i8* %call177, i8** %p, align 8, !dbg !5954, !tbaa !1100
  %tobool178 = icmp ne i8* %call177, null, !dbg !5954
  br i1 %tobool178, label %if.end.193, label %if.then.179, !dbg !5955

if.then.179:                                      ; preds = %if.end.176
  br label %do.body.180, !dbg !5956

do.body.180:                                      ; preds = %if.then.179
  %148 = bitcast %struct._object** %_py_decref_tmp181 to i8*, !dbg !5957
  call void @llvm.lifetime.start(i64 8, i8* %148) #2, !dbg !5957
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp181, metadata !1070, metadata !1104), !dbg !5959
  %149 = load %struct._object*, %struct._object** %object, align 8, !dbg !5960, !tbaa !1100
  store %struct._object* %149, %struct._object** %_py_decref_tmp181, align 8, !dbg !5959, !tbaa !1100
  %150 = load %struct._object*, %struct._object** %_py_decref_tmp181, align 8, !dbg !5961, !tbaa !1100
  %ob_refcnt182 = getelementptr inbounds %struct._object, %struct._object* %150, i32 0, i32 0, !dbg !5963
  %151 = load i64, i64* %ob_refcnt182, align 8, !dbg !5964, !tbaa !1335
  %dec183 = add i64 %151, -1, !dbg !5964
  store i64 %dec183, i64* %ob_refcnt182, align 8, !dbg !5964, !tbaa !1335
  %cmp184 = icmp ne i64 %dec183, 0, !dbg !5965
  br i1 %cmp184, label %if.then.186, label %if.else.187, !dbg !5966

if.then.186:                                      ; preds = %do.body.180
  br label %if.end.190, !dbg !5967

if.else.187:                                      ; preds = %do.body.180
  %152 = load %struct._object*, %struct._object** %_py_decref_tmp181, align 8, !dbg !5969, !tbaa !1100
  %ob_type188 = getelementptr inbounds %struct._object, %struct._object* %152, i32 0, i32 1, !dbg !5971
  %153 = load %struct._typeobject*, %struct._typeobject** %ob_type188, align 8, !dbg !5971, !tbaa !1344
  %tp_dealloc189 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %153, i32 0, i32 4, !dbg !5972
  %154 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc189, align 8, !dbg !5972, !tbaa !1346
  %155 = load %struct._object*, %struct._object** %_py_decref_tmp181, align 8, !dbg !5973, !tbaa !1100
  call void %154(%struct._object* %155), !dbg !5974
  br label %if.end.190

if.end.190:                                       ; preds = %if.else.187, %if.then.186
  %156 = bitcast %struct._object** %_py_decref_tmp181 to i8*, !dbg !5975
  call void @llvm.lifetime.end(i64 8, i8* %156) #2, !dbg !5975
  br label %do.cond.191, !dbg !5977

do.cond.191:                                      ; preds = %if.end.190
  br label %do.end.192, !dbg !5978

do.end.192:                                       ; preds = %do.cond.191
  store %struct._object* null, %struct._object** %retval, !dbg !5980
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.241, !dbg !5980

if.end.193:                                       ; preds = %if.end.176
  br label %while.cond, !dbg !5981

while.cond:                                       ; preds = %if.end.206, %if.end.193
  %157 = load i32, i32* %consumed, align 4, !dbg !5982, !tbaa !1298
  %cmp194 = icmp slt i32 %157, 4, !dbg !5985
  br i1 %cmp194, label %land.rhs, label %land.end, !dbg !5986

land.rhs:                                         ; preds = %while.cond
  %158 = load i32, i32* %consumed, align 4, !dbg !5987, !tbaa !1298
  %conv196 = sext i32 %158 to i64, !dbg !5987
  %159 = load i64, i64* %end, align 8, !dbg !5989, !tbaa !1553
  %160 = load i64, i64* %start, align 8, !dbg !5990, !tbaa !1553
  %sub197 = sub i64 %159, %160, !dbg !5991
  %cmp198 = icmp slt i64 %conv196, %sub197, !dbg !5992
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %161 = phi i1 [ false, %while.cond ], [ %cmp198, %land.rhs ]
  br i1 %161, label %while.body, label %while.end, !dbg !5993

while.body:                                       ; preds = %land.end
  %162 = load i64, i64* %start, align 8, !dbg !5995, !tbaa !1553
  %163 = load i32, i32* %consumed, align 4, !dbg !5998, !tbaa !1298
  %conv200 = sext i32 %163 to i64, !dbg !5998
  %add = add i64 %162, %conv200, !dbg !5999
  %164 = load i8*, i8** %p, align 8, !dbg !6000, !tbaa !1100
  %arrayidx201 = getelementptr i8, i8* %164, i64 %add, !dbg !6000
  %165 = load i8, i8* %arrayidx201, align 1, !dbg !6000, !tbaa !1118
  %conv202 = zext i8 %165 to i32, !dbg !6000
  %cmp203 = icmp slt i32 %conv202, 128, !dbg !6001
  br i1 %cmp203, label %if.then.205, label %if.end.206, !dbg !6002

if.then.205:                                      ; preds = %while.body
  br label %while.end, !dbg !6003

if.end.206:                                       ; preds = %while.body
  %166 = load i64, i64* %start, align 8, !dbg !6004, !tbaa !1553
  %167 = load i32, i32* %consumed, align 4, !dbg !6005, !tbaa !1298
  %conv207 = sext i32 %167 to i64, !dbg !6005
  %add208 = add i64 %166, %conv207, !dbg !6006
  %168 = load i8*, i8** %p, align 8, !dbg !6007, !tbaa !1100
  %arrayidx209 = getelementptr i8, i8* %168, i64 %add208, !dbg !6007
  %169 = load i8, i8* %arrayidx209, align 1, !dbg !6007, !tbaa !1118
  %conv210 = zext i8 %169 to i32, !dbg !6007
  %add211 = add i32 56320, %conv210, !dbg !6008
  %conv212 = trunc i32 %add211 to i16, !dbg !6009
  %170 = load i32, i32* %consumed, align 4, !dbg !6010, !tbaa !1298
  %idxprom = sext i32 %170 to i64, !dbg !6011
  %arrayidx213 = getelementptr [4 x i16], [4 x i16]* %ch164, i32 0, i64 %idxprom, !dbg !6011
  store i16 %conv212, i16* %arrayidx213, align 2, !dbg !6012, !tbaa !3255
  %171 = load i32, i32* %consumed, align 4, !dbg !6013, !tbaa !1298
  %inc214 = add i32 %171, 1, !dbg !6013
  store i32 %inc214, i32* %consumed, align 4, !dbg !6013, !tbaa !1298
  br label %while.cond, !dbg !5981

while.end:                                        ; preds = %if.then.205, %land.end
  br label %do.body.215, !dbg !6014

do.body.215:                                      ; preds = %while.end
  %172 = bitcast %struct._object** %_py_decref_tmp216 to i8*, !dbg !6015
  call void @llvm.lifetime.start(i64 8, i8* %172) #2, !dbg !6015
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp216, metadata !1074, metadata !1104), !dbg !6017
  %173 = load %struct._object*, %struct._object** %object, align 8, !dbg !6018, !tbaa !1100
  store %struct._object* %173, %struct._object** %_py_decref_tmp216, align 8, !dbg !6017, !tbaa !1100
  %174 = load %struct._object*, %struct._object** %_py_decref_tmp216, align 8, !dbg !6019, !tbaa !1100
  %ob_refcnt217 = getelementptr inbounds %struct._object, %struct._object* %174, i32 0, i32 0, !dbg !6021
  %175 = load i64, i64* %ob_refcnt217, align 8, !dbg !6022, !tbaa !1335
  %dec218 = add i64 %175, -1, !dbg !6022
  store i64 %dec218, i64* %ob_refcnt217, align 8, !dbg !6022, !tbaa !1335
  %cmp219 = icmp ne i64 %dec218, 0, !dbg !6023
  br i1 %cmp219, label %if.then.221, label %if.else.222, !dbg !6024

if.then.221:                                      ; preds = %do.body.215
  br label %if.end.225, !dbg !6025

if.else.222:                                      ; preds = %do.body.215
  %176 = load %struct._object*, %struct._object** %_py_decref_tmp216, align 8, !dbg !6027, !tbaa !1100
  %ob_type223 = getelementptr inbounds %struct._object, %struct._object* %176, i32 0, i32 1, !dbg !6029
  %177 = load %struct._typeobject*, %struct._typeobject** %ob_type223, align 8, !dbg !6029, !tbaa !1344
  %tp_dealloc224 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %177, i32 0, i32 4, !dbg !6030
  %178 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc224, align 8, !dbg !6030, !tbaa !1346
  %179 = load %struct._object*, %struct._object** %_py_decref_tmp216, align 8, !dbg !6031, !tbaa !1100
  call void %178(%struct._object* %179), !dbg !6032
  br label %if.end.225

if.end.225:                                       ; preds = %if.else.222, %if.then.221
  %180 = bitcast %struct._object** %_py_decref_tmp216 to i8*, !dbg !6033
  call void @llvm.lifetime.end(i64 8, i8* %180) #2, !dbg !6033
  br label %do.cond.226, !dbg !6035

do.cond.226:                                      ; preds = %if.end.225
  br label %do.end.227, !dbg !6036

do.end.227:                                       ; preds = %do.cond.226
  %181 = load i32, i32* %consumed, align 4, !dbg !6038, !tbaa !1298
  %tobool228 = icmp ne i32 %181, 0, !dbg !6038
  br i1 %tobool228, label %if.end.231, label %if.then.229, !dbg !6040

if.then.229:                                      ; preds = %do.end.227
  %182 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !6041, !tbaa !1100
  %ob_type230 = getelementptr inbounds %struct._object, %struct._object* %182, i32 0, i32 1, !dbg !6043
  %183 = load %struct._typeobject*, %struct._typeobject** %ob_type230, align 8, !dbg !6043, !tbaa !1344
  %184 = bitcast %struct._typeobject* %183 to %struct._object*, !dbg !6044
  %185 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !6045, !tbaa !1100
  call void @PyErr_SetObject(%struct._object* %184, %struct._object* %185), !dbg !6046
  store %struct._object* null, %struct._object** %retval, !dbg !6047
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.241, !dbg !6047

if.end.231:                                       ; preds = %do.end.227
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %ch164, i32 0, i32 0, !dbg !6048
  %186 = bitcast i16* %arraydecay to i8*, !dbg !6048
  %187 = load i32, i32* %consumed, align 4, !dbg !6049, !tbaa !1298
  %conv232 = sext i32 %187 to i64, !dbg !6049
  %call233 = call %struct._object* @PyUnicode_FromKindAndData(i32 2, i8* %186, i64 %conv232), !dbg !6050
  store %struct._object* %call233, %struct._object** %str, align 8, !dbg !6051, !tbaa !1100
  %188 = load %struct._object*, %struct._object** %str, align 8, !dbg !6052, !tbaa !1100
  %cmp234 = icmp eq %struct._object* %188, null, !dbg !6054
  br i1 %cmp234, label %if.then.236, label %if.end.237, !dbg !6055

if.then.236:                                      ; preds = %if.end.231
  store %struct._object* null, %struct._object** %retval, !dbg !6056
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.241, !dbg !6056

if.end.237:                                       ; preds = %if.end.231
  %189 = load %struct._object*, %struct._object** %str, align 8, !dbg !6057, !tbaa !1100
  %190 = load i64, i64* %start, align 8, !dbg !6058, !tbaa !1553
  %191 = load i32, i32* %consumed, align 4, !dbg !6059, !tbaa !1298
  %conv238 = sext i32 %191 to i64, !dbg !6059
  %add239 = add i64 %190, %conv238, !dbg !6060
  %call240 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), %struct._object* %189, i64 %add239), !dbg !6061
  store %struct._object* %call240, %struct._object** %retval, !dbg !6062
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.241, !dbg !6062

cleanup.241:                                      ; preds = %if.end.237, %if.then.236, %if.then.229, %do.end.192, %if.then.175, %if.then.171, %if.then.167
  %192 = bitcast i32* %consumed to i8*, !dbg !6063
  call void @llvm.lifetime.end(i64 4, i8* %192) #2, !dbg !6063
  %193 = bitcast [4 x i16]* %ch164 to i8*, !dbg !6063
  call void @llvm.lifetime.end(i64 8, i8* %193) #2, !dbg !6063
  %194 = bitcast i8** %p to i8*, !dbg !6063
  call void @llvm.lifetime.end(i64 8, i8* %194) #2, !dbg !6063
  %195 = bitcast %struct._object** %str to i8*, !dbg !6063
  call void @llvm.lifetime.end(i64 8, i8* %195) #2, !dbg !6063
  br label %cleanup.246

if.else.245:                                      ; preds = %if.else.160
  %196 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !6064, !tbaa !1100
  call void @wrong_exception_type(%struct._object* %196), !dbg !6066
  store %struct._object* null, %struct._object** %retval, !dbg !6067
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.246, !dbg !6067

cleanup.246:                                      ; preds = %if.else.245, %cleanup.241, %cleanup.159
  %197 = bitcast %struct._object** %res to i8*, !dbg !6068
  call void @llvm.lifetime.end(i64 8, i8* %197) #2, !dbg !6068
  %198 = bitcast i64* %end to i8*, !dbg !6068
  call void @llvm.lifetime.end(i64 8, i8* %198) #2, !dbg !6068
  %199 = bitcast i64* %start to i8*, !dbg !6068
  call void @llvm.lifetime.end(i64 8, i8* %199) #2, !dbg !6068
  %200 = bitcast i64* %i to i8*, !dbg !6068
  call void @llvm.lifetime.end(i64 8, i8* %200) #2, !dbg !6068
  %201 = bitcast %struct._object** %object to i8*, !dbg !6068
  call void @llvm.lifetime.end(i64 8, i8* %201) #2, !dbg !6068
  %202 = bitcast %struct._object** %restuple to i8*, !dbg !6068
  call void @llvm.lifetime.end(i64 8, i8* %202) #2, !dbg !6068
  %203 = load %struct._object*, %struct._object** %retval, !dbg !6068
  ret %struct._object* %203, !dbg !6068
}

declare %struct._object* @PyUnicode_FromKindAndData(i32, i8*, i64) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1097, !1098}
!llvm.ident = !{!1099}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !18, subprograms: !477, globals: !1076)
!1 = !DIFile(filename: "codecs.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3, !11}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Py_memory_order", file: !4, line: 23, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/pyatomic.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "_Py_memory_order_relaxed", value: 0)
!7 = !DIEnumerator(name: "_Py_memory_order_acquire", value: 1)
!8 = !DIEnumerator(name: "_Py_memory_order_release", value: 2)
!9 = !DIEnumerator(name: "_Py_memory_order_acq_rel", value: 3)
!10 = !DIEnumerator(name: "_Py_memory_order_seq_cst", value: 4)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "PyUnicode_Kind", file: !12, line: 451, size: 32, align: 32, elements: !13)
!12 = !DIFile(filename: "Include/unicodeobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "PyUnicode_WCHAR_KIND", value: 0)
!15 = !DIEnumerator(name: "PyUnicode_1BYTE_KIND", value: 1)
!16 = !DIEnumerator(name: "PyUnicode_2BYTE_KIND", value: 2)
!17 = !DIEnumerator(name: "PyUnicode_4BYTE_KIND", value: 4)
!18 = !{!19, !121, !36, !416, !424, !425, !443, !451, !462, !461, !466, !465, !469, !468, !75, !470, !472, !474, !42, !126, !463, !476}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !21, line: 139, baseType: !22)
!21 = !DIFile(filename: "Include/pystate.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!22 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !21, line: 69, size: 1536, align: 64, elements: !23)
!23 = !{!24, !26, !27, !386, !389, !390, !391, !392, !393, !394, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !22, file: !21, line: 72, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !22, file: !21, line: 73, baseType: !25, size: 64, align: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !22, file: !21, line: 74, baseType: !28, size: 64, align: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !21, line: 44, baseType: !30)
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !21, line: 19, size: 832, align: 64, elements: !31)
!31 = !{!32, !34, !35, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !30, file: !21, line: 21, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !30, file: !21, line: 22, baseType: !25, size: 64, align: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !30, file: !21, line: 24, baseType: !36, size: 64, align: 64, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !38, line: 109, baseType: !39)
!38 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!39 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !38, line: 105, size: 128, align: 64, elements: !40)
!40 = !{!41, !49}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !39, file: !38, line: 107, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !43, line: 177, baseType: !44)
!43 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !45, line: 102, baseType: !46)
!45 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !47, line: 181, baseType: !48)
!47 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!48 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !39, file: !38, line: 108, baseType: !50, size: 64, align: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !38, line: 334, size: 3200, align: 64, elements: !52)
!52 = !{!53, !59, !63, !64, !65, !70, !134, !139, !144, !145, !150, !202, !233, !245, !251, !252, !253, !255, !257, !288, !289, !290, !299, !300, !305, !306, !308, !310, !320, !323, !341, !342, !343, !345, !347, !348, !350, !355, !360, !365, !366, !367, !368, !369, !370, !371, !372, !374}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !51, file: !38, line: 335, baseType: !54, size: 192, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !38, line: 114, baseType: !55)
!55 = !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 111, size: 192, align: 64, elements: !56)
!56 = !{!57, !58}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !55, file: !38, line: 112, baseType: !37, size: 128, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !55, file: !38, line: 113, baseType: !42, size: 64, align: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !51, file: !38, line: 336, baseType: !60, size: 64, align: 64, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!62 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !51, file: !38, line: 337, baseType: !42, size: 64, align: 64, offset: 256)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !51, file: !38, line: 337, baseType: !42, size: 64, align: 64, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !51, file: !38, line: 341, baseType: !66, size: 64, align: 64, offset: 384)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !38, line: 308, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !36}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !51, file: !38, line: 342, baseType: !71, size: 64, align: 64, offset: 448)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !38, line: 314, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{!75, !36, !76, !75}
!75 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !45, line: 48, baseType: !78)
!78 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !79, line: 246, size: 1728, align: 64, elements: !80)
!79 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!80 = !{!81, !82, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !102, !103, !104, !105, !107, !109, !111, !115, !118, !120, !122, !123, !124, !125, !129, !130}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !78, file: !79, line: 247, baseType: !75, size: 32, align: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !78, file: !79, line: 252, baseType: !83, size: 64, align: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !78, file: !79, line: 253, baseType: !83, size: 64, align: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !78, file: !79, line: 254, baseType: !83, size: 64, align: 64, offset: 192)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !78, file: !79, line: 255, baseType: !83, size: 64, align: 64, offset: 256)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !78, file: !79, line: 256, baseType: !83, size: 64, align: 64, offset: 320)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !78, file: !79, line: 257, baseType: !83, size: 64, align: 64, offset: 384)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !78, file: !79, line: 258, baseType: !83, size: 64, align: 64, offset: 448)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !78, file: !79, line: 259, baseType: !83, size: 64, align: 64, offset: 512)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !78, file: !79, line: 261, baseType: !83, size: 64, align: 64, offset: 576)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !78, file: !79, line: 262, baseType: !83, size: 64, align: 64, offset: 640)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !78, file: !79, line: 263, baseType: !83, size: 64, align: 64, offset: 704)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !78, file: !79, line: 265, baseType: !95, size: 64, align: 64, offset: 768)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !79, line: 161, size: 192, align: 64, elements: !97)
!97 = !{!98, !99, !101}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !96, file: !79, line: 162, baseType: !95, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !96, file: !79, line: 163, baseType: !100, size: 64, align: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !96, file: !79, line: 167, baseType: !75, size: 32, align: 32, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !78, file: !79, line: 267, baseType: !100, size: 64, align: 64, offset: 832)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !78, file: !79, line: 269, baseType: !75, size: 32, align: 32, offset: 896)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !78, file: !79, line: 273, baseType: !75, size: 32, align: 32, offset: 928)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !78, file: !79, line: 275, baseType: !106, size: 64, align: 64, offset: 960)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !47, line: 140, baseType: !48)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !78, file: !79, line: 279, baseType: !108, size: 16, align: 16, offset: 1024)
!108 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !78, file: !79, line: 280, baseType: !110, size: 8, align: 8, offset: 1040)
!110 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !78, file: !79, line: 281, baseType: !112, size: 8, align: 8, offset: 1048)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 8, align: 8, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 1)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !78, file: !79, line: 285, baseType: !116, size: 64, align: 64, offset: 1088)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !79, line: 155, baseType: null)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !78, file: !79, line: 294, baseType: !119, size: 64, align: 64, offset: 1152)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !47, line: 141, baseType: !48)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !78, file: !79, line: 303, baseType: !121, size: 64, align: 64, offset: 1216)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !78, file: !79, line: 304, baseType: !121, size: 64, align: 64, offset: 1280)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !78, file: !79, line: 305, baseType: !121, size: 64, align: 64, offset: 1344)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !78, file: !79, line: 306, baseType: !121, size: 64, align: 64, offset: 1408)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !78, file: !79, line: 307, baseType: !126, size: 64, align: 64, offset: 1472)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !127, line: 62, baseType: !128)
!127 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!128 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !78, file: !79, line: 309, baseType: !75, size: 32, align: 32, offset: 1536)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !78, file: !79, line: 311, baseType: !131, size: 160, align: 8, offset: 1568)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 160, align: 8, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 20)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !51, file: !38, line: 343, baseType: !135, size: 64, align: 64, offset: 512)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !38, line: 316, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!36, !36, !83}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !51, file: !38, line: 344, baseType: !140, size: 64, align: 64, offset: 576)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !38, line: 318, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!75, !36, !83, !36}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !51, file: !38, line: 345, baseType: !121, size: 64, align: 64, offset: 640)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !51, file: !38, line: 346, baseType: !146, size: 64, align: 64, offset: 704)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !38, line: 320, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{!36, !36}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !51, file: !38, line: 350, baseType: !151, size: 64, align: 64, offset: 768)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !38, line: 278, baseType: !153)
!153 = !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 236, size: 2176, align: 64, elements: !154)
!154 = !{!155, !160, !161, !162, !163, !164, !169, !171, !172, !173, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !153, file: !38, line: 241, baseType: !156, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !38, line: 166, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!36, !36, !36}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !153, file: !38, line: 242, baseType: !156, size: 64, align: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !153, file: !38, line: 243, baseType: !156, size: 64, align: 64, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !153, file: !38, line: 244, baseType: !156, size: 64, align: 64, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !153, file: !38, line: 245, baseType: !156, size: 64, align: 64, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !153, file: !38, line: 246, baseType: !165, size: 64, align: 64, offset: 320)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !38, line: 167, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{!36, !36, !36, !36}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !153, file: !38, line: 247, baseType: !170, size: 64, align: 64, offset: 384)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !38, line: 165, baseType: !147)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !153, file: !38, line: 248, baseType: !170, size: 64, align: 64, offset: 448)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !153, file: !38, line: 249, baseType: !170, size: 64, align: 64, offset: 512)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !153, file: !38, line: 250, baseType: !174, size: 64, align: 64, offset: 576)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !38, line: 168, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64, align: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{!75, !36}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !153, file: !38, line: 251, baseType: !170, size: 64, align: 64, offset: 640)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !153, file: !38, line: 252, baseType: !156, size: 64, align: 64, offset: 704)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !153, file: !38, line: 253, baseType: !156, size: 64, align: 64, offset: 768)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !153, file: !38, line: 254, baseType: !156, size: 64, align: 64, offset: 832)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !153, file: !38, line: 255, baseType: !156, size: 64, align: 64, offset: 896)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !153, file: !38, line: 256, baseType: !156, size: 64, align: 64, offset: 960)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !153, file: !38, line: 257, baseType: !170, size: 64, align: 64, offset: 1024)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !153, file: !38, line: 258, baseType: !121, size: 64, align: 64, offset: 1088)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !153, file: !38, line: 259, baseType: !170, size: 64, align: 64, offset: 1152)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !153, file: !38, line: 261, baseType: !156, size: 64, align: 64, offset: 1216)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !153, file: !38, line: 262, baseType: !156, size: 64, align: 64, offset: 1280)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !153, file: !38, line: 263, baseType: !156, size: 64, align: 64, offset: 1344)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !153, file: !38, line: 264, baseType: !156, size: 64, align: 64, offset: 1408)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !153, file: !38, line: 265, baseType: !165, size: 64, align: 64, offset: 1472)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !153, file: !38, line: 266, baseType: !156, size: 64, align: 64, offset: 1536)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !153, file: !38, line: 267, baseType: !156, size: 64, align: 64, offset: 1600)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !153, file: !38, line: 268, baseType: !156, size: 64, align: 64, offset: 1664)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !153, file: !38, line: 269, baseType: !156, size: 64, align: 64, offset: 1728)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !153, file: !38, line: 270, baseType: !156, size: 64, align: 64, offset: 1792)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !153, file: !38, line: 272, baseType: !156, size: 64, align: 64, offset: 1856)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !153, file: !38, line: 273, baseType: !156, size: 64, align: 64, offset: 1920)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !153, file: !38, line: 274, baseType: !156, size: 64, align: 64, offset: 1984)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !153, file: !38, line: 275, baseType: !156, size: 64, align: 64, offset: 2048)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !153, file: !38, line: 277, baseType: !170, size: 64, align: 64, offset: 2112)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !51, file: !38, line: 351, baseType: !203, size: 64, align: 64, offset: 832)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !38, line: 292, baseType: !205)
!205 = !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 280, size: 640, align: 64, elements: !206)
!206 = !{!207, !212, !213, !218, !219, !220, !225, !226, !231, !232}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !205, file: !38, line: 281, baseType: !208, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !38, line: 169, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, align: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!42, !36}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !205, file: !38, line: 282, baseType: !156, size: 64, align: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !205, file: !38, line: 283, baseType: !214, size: 64, align: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !38, line: 170, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!36, !36, !42}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !205, file: !38, line: 284, baseType: !214, size: 64, align: 64, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !205, file: !38, line: 285, baseType: !121, size: 64, align: 64, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !205, file: !38, line: 286, baseType: !221, size: 64, align: 64, offset: 320)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !38, line: 172, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!75, !36, !42, !36}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !205, file: !38, line: 287, baseType: !121, size: 64, align: 64, offset: 384)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !205, file: !38, line: 288, baseType: !227, size: 64, align: 64, offset: 448)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !38, line: 231, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!75, !36, !36}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !205, file: !38, line: 290, baseType: !156, size: 64, align: 64, offset: 512)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !205, file: !38, line: 291, baseType: !214, size: 64, align: 64, offset: 576)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !51, file: !38, line: 352, baseType: !234, size: 64, align: 64, offset: 896)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !38, line: 298, baseType: !236)
!236 = !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 294, size: 192, align: 64, elements: !237)
!237 = !{!238, !239, !240}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !236, file: !38, line: 295, baseType: !208, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !236, file: !38, line: 296, baseType: !156, size: 64, align: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !236, file: !38, line: 297, baseType: !241, size: 64, align: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !38, line: 174, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!75, !36, !36, !36}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !51, file: !38, line: 356, baseType: !246, size: 64, align: 64, offset: 960)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !38, line: 321, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, align: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!250, !36}
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !43, line: 186, baseType: !42)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !51, file: !38, line: 357, baseType: !165, size: 64, align: 64, offset: 1024)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !51, file: !38, line: 358, baseType: !146, size: 64, align: 64, offset: 1088)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !51, file: !38, line: 359, baseType: !254, size: 64, align: 64, offset: 1152)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !38, line: 317, baseType: !157)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !51, file: !38, line: 360, baseType: !256, size: 64, align: 64, offset: 1216)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !38, line: 319, baseType: !242)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !51, file: !38, line: 363, baseType: !258, size: 64, align: 64, offset: 1280)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !38, line: 304, baseType: !260)
!260 = !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 301, size: 128, align: 64, elements: !261)
!261 = !{!262, !283}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !260, file: !38, line: 302, baseType: !263, size: 64, align: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !38, line: 193, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!75, !36, !267, !75}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !38, line: 191, baseType: !269)
!269 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !38, line: 178, size: 640, align: 64, elements: !270)
!270 = !{!271, !272, !273, !274, !275, !276, !277, !278, !280, !281, !282}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !269, file: !38, line: 179, baseType: !121, size: 64, align: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !269, file: !38, line: 180, baseType: !36, size: 64, align: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !269, file: !38, line: 181, baseType: !42, size: 64, align: 64, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !269, file: !38, line: 182, baseType: !42, size: 64, align: 64, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !269, file: !38, line: 184, baseType: !75, size: 32, align: 32, offset: 256)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !269, file: !38, line: 185, baseType: !75, size: 32, align: 32, offset: 288)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !269, file: !38, line: 186, baseType: !83, size: 64, align: 64, offset: 320)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !269, file: !38, line: 187, baseType: !279, size: 64, align: 64, offset: 384)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !269, file: !38, line: 188, baseType: !279, size: 64, align: 64, offset: 448)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !269, file: !38, line: 189, baseType: !279, size: 64, align: 64, offset: 512)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !269, file: !38, line: 190, baseType: !121, size: 64, align: 64, offset: 576)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !260, file: !38, line: 303, baseType: !284, size: 64, align: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !38, line: 194, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !36, !267}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !51, file: !38, line: 366, baseType: !128, size: 64, align: 64, offset: 1344)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !51, file: !38, line: 368, baseType: !60, size: 64, align: 64, offset: 1408)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !51, file: !38, line: 372, baseType: !291, size: 64, align: 64, offset: 1472)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !38, line: 233, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!75, !36, !295, !121}
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !38, line: 232, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, align: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!75, !36, !121}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !51, file: !38, line: 375, baseType: !174, size: 64, align: 64, offset: 1536)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !51, file: !38, line: 379, baseType: !301, size: 64, align: 64, offset: 1600)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !38, line: 322, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64, align: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!36, !36, !36, !75}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !51, file: !38, line: 382, baseType: !42, size: 64, align: 64, offset: 1664)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !51, file: !38, line: 385, baseType: !307, size: 64, align: 64, offset: 1728)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !38, line: 323, baseType: !147)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !51, file: !38, line: 386, baseType: !309, size: 64, align: 64, offset: 1792)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !38, line: 324, baseType: !147)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !51, file: !38, line: 389, baseType: !311, size: 64, align: 64, offset: 1856)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !313, line: 40, size: 256, align: 64, elements: !314)
!313 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!314 = !{!315, !316, !318, !319}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !312, file: !313, line: 41, baseType: !60, size: 64, align: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !312, file: !313, line: 42, baseType: !317, size: 64, align: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !313, line: 18, baseType: !157)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !312, file: !313, line: 43, baseType: !75, size: 32, align: 32, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !312, file: !313, line: 45, baseType: !60, size: 64, align: 64, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !51, file: !38, line: 390, baseType: !321, size: 64, align: 64, offset: 1920)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64, align: 64)
!322 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !38, line: 390, flags: DIFlagFwdDecl)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !51, file: !38, line: 391, baseType: !324, size: 64, align: 64, offset: 1984)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, align: 64)
!325 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !326, line: 11, size: 320, align: 64, elements: !327)
!326 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!327 = !{!328, !329, !334, !339, !340}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !325, file: !326, line: 12, baseType: !83, size: 64, align: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !325, file: !326, line: 13, baseType: !330, size: 64, align: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !326, line: 8, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!36, !36, !121}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !325, file: !326, line: 14, baseType: !335, size: 64, align: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !326, line: 9, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64, align: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!75, !36, !36, !121}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !325, file: !326, line: 15, baseType: !83, size: 64, align: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !325, file: !326, line: 16, baseType: !121, size: 64, align: 64, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !51, file: !38, line: 392, baseType: !50, size: 64, align: 64, offset: 2048)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !51, file: !38, line: 393, baseType: !36, size: 64, align: 64, offset: 2112)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !51, file: !38, line: 394, baseType: !344, size: 64, align: 64, offset: 2176)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !38, line: 325, baseType: !166)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !51, file: !38, line: 395, baseType: !346, size: 64, align: 64, offset: 2240)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !38, line: 326, baseType: !242)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !51, file: !38, line: 396, baseType: !42, size: 64, align: 64, offset: 2304)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !51, file: !38, line: 397, baseType: !349, size: 64, align: 64, offset: 2368)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !38, line: 327, baseType: !242)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !51, file: !38, line: 398, baseType: !351, size: 64, align: 64, offset: 2432)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !38, line: 329, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!36, !50, !42}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !51, file: !38, line: 399, baseType: !356, size: 64, align: 64, offset: 2496)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !38, line: 328, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64, align: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!36, !50, !36, !36}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !51, file: !38, line: 400, baseType: !361, size: 64, align: 64, offset: 2560)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !38, line: 307, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !121}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !51, file: !38, line: 401, baseType: !174, size: 64, align: 64, offset: 2624)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !51, file: !38, line: 402, baseType: !36, size: 64, align: 64, offset: 2688)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !51, file: !38, line: 403, baseType: !36, size: 64, align: 64, offset: 2752)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !51, file: !38, line: 404, baseType: !36, size: 64, align: 64, offset: 2816)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !51, file: !38, line: 405, baseType: !36, size: 64, align: 64, offset: 2880)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !51, file: !38, line: 406, baseType: !36, size: 64, align: 64, offset: 2944)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !51, file: !38, line: 407, baseType: !66, size: 64, align: 64, offset: 3008)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !51, file: !38, line: 410, baseType: !373, size: 32, align: 32, offset: 3072)
!373 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !51, file: !38, line: 412, baseType: !66, size: 64, align: 64, offset: 3136)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !30, file: !21, line: 25, baseType: !36, size: 64, align: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !30, file: !21, line: 26, baseType: !36, size: 64, align: 64, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !30, file: !21, line: 27, baseType: !36, size: 64, align: 64, offset: 320)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !30, file: !21, line: 28, baseType: !36, size: 64, align: 64, offset: 384)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !30, file: !21, line: 30, baseType: !36, size: 64, align: 64, offset: 448)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !30, file: !21, line: 31, baseType: !36, size: 64, align: 64, offset: 512)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !30, file: !21, line: 32, baseType: !36, size: 64, align: 64, offset: 576)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !30, file: !21, line: 33, baseType: !75, size: 32, align: 32, offset: 640)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !30, file: !21, line: 34, baseType: !75, size: 32, align: 32, offset: 672)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !30, file: !21, line: 37, baseType: !75, size: 32, align: 32, offset: 704)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !30, file: !21, line: 43, baseType: !36, size: 64, align: 64, offset: 768)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !22, file: !21, line: 76, baseType: !387, size: 64, align: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64, align: 64)
!388 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !21, line: 50, flags: DIFlagFwdDecl)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !22, file: !21, line: 77, baseType: !75, size: 32, align: 32, offset: 256)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !22, file: !21, line: 78, baseType: !62, size: 8, align: 8, offset: 288)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !22, file: !21, line: 80, baseType: !62, size: 8, align: 8, offset: 296)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !22, file: !21, line: 85, baseType: !75, size: 32, align: 32, offset: 320)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !22, file: !21, line: 86, baseType: !75, size: 32, align: 32, offset: 352)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !22, file: !21, line: 88, baseType: !395, size: 64, align: 64, offset: 384)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !21, line: 54, baseType: !396)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64, align: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{!75, !36, !387, !75, !36}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !22, file: !21, line: 89, baseType: !395, size: 64, align: 64, offset: 448)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !22, file: !21, line: 90, baseType: !36, size: 64, align: 64, offset: 512)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !22, file: !21, line: 91, baseType: !36, size: 64, align: 64, offset: 576)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !22, file: !21, line: 93, baseType: !36, size: 64, align: 64, offset: 640)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !22, file: !21, line: 94, baseType: !36, size: 64, align: 64, offset: 704)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !22, file: !21, line: 95, baseType: !36, size: 64, align: 64, offset: 768)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !22, file: !21, line: 97, baseType: !36, size: 64, align: 64, offset: 832)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !22, file: !21, line: 98, baseType: !36, size: 64, align: 64, offset: 896)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !22, file: !21, line: 99, baseType: !36, size: 64, align: 64, offset: 960)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !22, file: !21, line: 101, baseType: !36, size: 64, align: 64, offset: 1024)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !22, file: !21, line: 103, baseType: !75, size: 32, align: 32, offset: 1088)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !22, file: !21, line: 105, baseType: !36, size: 64, align: 64, offset: 1152)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !22, file: !21, line: 106, baseType: !48, size: 64, align: 64, offset: 1216)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !22, file: !21, line: 108, baseType: !75, size: 32, align: 32, offset: 1280)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !22, file: !21, line: 109, baseType: !36, size: 64, align: 64, offset: 1344)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !22, file: !21, line: 134, baseType: !362, size: 64, align: 64, offset: 1408)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !22, file: !21, line: 135, baseType: !121, size: 64, align: 64, offset: 1472)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64, align: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !418, line: 33, baseType: !419)
!418 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!419 = !DICompositeType(tag: DW_TAG_structure_type, file: !418, line: 25, size: 256, align: 64, elements: !420)
!420 = !{!421, !422}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !419, file: !418, line: 26, baseType: !54, size: 192, align: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !419, file: !418, line: 27, baseType: !423, size: 64, align: 64, offset: 192)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 64, align: 64, elements: !113)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64, align: 64)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyASCIIObject", file: !12, line: 351, baseType: !427)
!427 = !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 217, size: 384, align: 64, elements: !428)
!428 = !{!429, !430, !431, !432, !440}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !427, file: !12, line: 291, baseType: !37, size: 128, align: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !427, file: !12, line: 292, baseType: !42, size: 64, align: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !427, file: !12, line: 293, baseType: !250, size: 64, align: 64, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !427, file: !12, line: 349, baseType: !433, size: 32, align: 32, offset: 256)
!433 = !DICompositeType(tag: DW_TAG_structure_type, scope: !427, file: !12, line: 294, size: 32, align: 32, elements: !434)
!434 = !{!435, !436, !437, !438, !439}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "interned", scope: !433, file: !12, line: 303, baseType: !373, size: 2, align: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !433, file: !12, line: 331, baseType: !373, size: 3, align: 32, offset: 2)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "compact", scope: !433, file: !12, line: 336, baseType: !373, size: 1, align: 32, offset: 5)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !433, file: !12, line: 340, baseType: !373, size: 1, align: 32, offset: 6)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !433, file: !12, line: 345, baseType: !373, size: 1, align: 32, offset: 7)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "wstr", scope: !427, file: !12, line: 350, baseType: !441, size: 64, align: 64, offset: 320)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64, align: 64)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !127, line: 90, baseType: !75)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64, align: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCompactUnicodeObject", file: !12, line: 363, baseType: !445)
!445 = !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 356, size: 576, align: 64, elements: !446)
!446 = !{!447, !448, !449, !450}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !445, file: !12, line: 357, baseType: !426, size: 384, align: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_length", scope: !445, file: !12, line: 358, baseType: !42, size: 64, align: 64, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !445, file: !12, line: 360, baseType: !83, size: 64, align: 64, offset: 448)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "wstr_length", scope: !445, file: !12, line: 361, baseType: !42, size: 64, align: 64, offset: 512)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64, align: 64)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyUnicodeObject", file: !12, line: 376, baseType: !453)
!453 = !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 368, size: 640, align: 64, elements: !454)
!454 = !{!455, !456}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !453, file: !12, line: 369, baseType: !444, size: 576, align: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !453, file: !12, line: 375, baseType: !457, size: 64, align: 64, offset: 576)
!457 = !DICompositeType(tag: DW_TAG_union_type, scope: !453, file: !12, line: 370, size: 64, align: 64, elements: !458)
!458 = !{!459, !460, !464, !467}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "any", scope: !457, file: !12, line: 371, baseType: !121, size: 64, align: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "latin1", scope: !457, file: !12, line: 372, baseType: !461, size: 64, align: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64, align: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS1", file: !12, line: 134, baseType: !463)
!463 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "ucs2", scope: !457, file: !12, line: 373, baseType: !465, size: 64, align: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64, align: 64)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS2", file: !12, line: 129, baseType: !108)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "ucs4", scope: !457, file: !12, line: 374, baseType: !468, size: 64, align: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64, align: 64)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS4", file: !12, line: 121, baseType: !373)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64, align: 64)
!471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !462)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64, align: 64)
!473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64, align: 64)
!475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !469)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64, align: 64)
!477 = !{!478, !496, !539, !549, !555, !559, !562, !565, !571, !575, !582, !587, !595, !601, !623, !629, !635, !647, !657, !660, !664, !682, !707, !723, !732, !737, !740, !751, !760, !770, !781, !795, !827, !839, !845, !875, !878, !889, !892, !905, !928, !932, !936, !940, !944, !948, !952, !1020, !1027, !1031}
!478 = !DISubprogram(name: "PyCodec_Register", scope: !479, file: !479, line: 31, type: !176, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @PyCodec_Register, variables: !480)
!479 = !DIFile(filename: "Python/codecs.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!480 = !{!481, !482, !483, !490, !491, !494}
!481 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "search_function", arg: 1, scope: !478, file: !479, line: 31, type: !36)
!482 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "interp", scope: !478, file: !479, line: 33, type: !28)
!483 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !484, file: !479, line: 33, type: !485)
!484 = distinct !DILexicalBlock(scope: !478, file: !479, line: 33, column: 66)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64, align: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_atomic_address", file: !4, line: 33, baseType: !487)
!487 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_atomic_address", file: !4, line: 31, size: 64, align: 64, elements: !488)
!488 = !{!489}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "_value", scope: !487, file: !4, line: 32, baseType: !121, size: 64, align: 64)
!490 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !484, file: !479, line: 33, type: !121)
!491 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !484, file: !479, line: 33, type: !492)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64, align: 64)
!493 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !121)
!494 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !484, file: !479, line: 33, type: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_memory_order", file: !4, line: 29, baseType: !3)
!496 = !DISubprogram(name: "_PyCodec_Lookup", scope: !479, file: !479, line: 100, type: !497, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*)* @_PyCodec_Lookup, variables: !499)
!497 = !DISubroutineType(types: !498)
!498 = !{!36, !60}
!499 = !{!500, !501, !502, !503, !504, !505, !506, !507, !509, !510, !511, !512, !516, !520, !524, !528, !532, !534, !536}
!500 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 1, scope: !496, file: !479, line: 100, type: !60)
!501 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "interp", scope: !496, file: !479, line: 102, type: !28)
!502 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !496, file: !479, line: 103, type: !36)
!503 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !496, file: !479, line: 103, type: !36)
!504 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !496, file: !479, line: 103, type: !36)
!505 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !496, file: !479, line: 104, type: !42)
!506 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !496, file: !479, line: 104, type: !42)
!507 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !508, file: !479, line: 111, type: !485)
!508 = distinct !DILexicalBlock(scope: !496, file: !479, line: 111, column: 46)
!509 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !508, file: !479, line: 111, type: !121)
!510 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !508, file: !479, line: 111, type: !492)
!511 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !508, file: !479, line: 111, type: !495)
!512 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !513, file: !479, line: 127, type: !36)
!513 = distinct !DILexicalBlock(scope: !514, file: !479, line: 127, column: 12)
!514 = distinct !DILexicalBlock(scope: !515, file: !479, line: 125, column: 31)
!515 = distinct !DILexicalBlock(scope: !496, file: !479, line: 125, column: 9)
!516 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !517, file: !479, line: 148, type: !36)
!517 = distinct !DILexicalBlock(scope: !518, file: !479, line: 147, column: 31)
!518 = distinct !DILexicalBlock(scope: !519, file: !479, line: 147, column: 5)
!519 = distinct !DILexicalBlock(scope: !496, file: !479, line: 147, column: 5)
!520 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !521, file: !479, line: 157, type: !36)
!521 = distinct !DILexicalBlock(scope: !522, file: !479, line: 157, column: 16)
!522 = distinct !DILexicalBlock(scope: !523, file: !479, line: 156, column: 42)
!523 = distinct !DILexicalBlock(scope: !517, file: !479, line: 156, column: 13)
!524 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !525, file: !479, line: 163, type: !36)
!525 = distinct !DILexicalBlock(scope: !526, file: !479, line: 163, column: 16)
!526 = distinct !DILexicalBlock(scope: !527, file: !479, line: 160, column: 129)
!527 = distinct !DILexicalBlock(scope: !517, file: !479, line: 160, column: 13)
!528 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !529, file: !479, line: 177, type: !36)
!529 = distinct !DILexicalBlock(scope: !530, file: !479, line: 177, column: 12)
!530 = distinct !DILexicalBlock(scope: !531, file: !479, line: 176, column: 68)
!531 = distinct !DILexicalBlock(scope: !496, file: !479, line: 176, column: 9)
!532 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !533, file: !479, line: 180, type: !36)
!533 = distinct !DILexicalBlock(scope: !496, file: !479, line: 180, column: 8)
!534 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !535, file: !479, line: 184, type: !36)
!535 = distinct !DILexicalBlock(scope: !496, file: !479, line: 184, column: 8)
!536 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !537, file: !479, line: 184, type: !36)
!537 = distinct !DILexicalBlock(scope: !538, file: !479, line: 184, column: 96)
!538 = distinct !DILexicalBlock(scope: !535, file: !479, line: 184, column: 62)
!539 = !DISubprogram(name: "PyCodec_KnownEncoding", scope: !479, file: !479, line: 190, type: !540, isLocal: false, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*)* @PyCodec_KnownEncoding, variables: !542)
!540 = !DISubroutineType(types: !541)
!541 = !{!75, !60}
!542 = !{!543, !544, !545}
!543 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 1, scope: !539, file: !479, line: 190, type: !60)
!544 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "codecs", scope: !539, file: !479, line: 192, type: !36)
!545 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !546, file: !479, line: 200, type: !36)
!546 = distinct !DILexicalBlock(scope: !547, file: !479, line: 200, column: 12)
!547 = distinct !DILexicalBlock(scope: !548, file: !479, line: 199, column: 10)
!548 = distinct !DILexicalBlock(scope: !539, file: !479, line: 195, column: 9)
!549 = !DISubprogram(name: "_PyCodecInfo_GetIncrementalDecoder", scope: !479, file: !479, line: 306, type: !550, isLocal: false, isDefinition: true, scopeLine: 308, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i8*)* @_PyCodecInfo_GetIncrementalDecoder, variables: !552)
!550 = !DISubroutineType(types: !551)
!551 = !{!36, !36, !60}
!552 = !{!553, !554}
!553 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "codec_info", arg: 1, scope: !549, file: !479, line: 306, type: !36)
!554 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errors", arg: 2, scope: !549, file: !479, line: 307, type: !60)
!555 = !DISubprogram(name: "_PyCodecInfo_GetIncrementalEncoder", scope: !479, file: !479, line: 313, type: !550, isLocal: false, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i8*)* @_PyCodecInfo_GetIncrementalEncoder, variables: !556)
!556 = !{!557, !558}
!557 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "codec_info", arg: 1, scope: !555, file: !479, line: 313, type: !36)
!558 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errors", arg: 2, scope: !555, file: !479, line: 314, type: !60)
!559 = !DISubprogram(name: "PyCodec_Encoder", scope: !479, file: !479, line: 327, type: !497, isLocal: false, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*)* @PyCodec_Encoder, variables: !560)
!560 = !{!561}
!561 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 1, scope: !559, file: !479, line: 327, type: !60)
!562 = !DISubprogram(name: "PyCodec_Decoder", scope: !479, file: !479, line: 332, type: !497, isLocal: false, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*)* @PyCodec_Decoder, variables: !563)
!563 = !{!564}
!564 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 1, scope: !562, file: !479, line: 332, type: !60)
!565 = !DISubprogram(name: "PyCodec_IncrementalEncoder", scope: !479, file: !479, line: 337, type: !566, isLocal: false, isDefinition: true, scopeLine: 339, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i8*)* @PyCodec_IncrementalEncoder, variables: !568)
!566 = !DISubroutineType(types: !567)
!567 = !{!36, !60, !60}
!568 = !{!569, !570}
!569 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 1, scope: !565, file: !479, line: 337, type: !60)
!570 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errors", arg: 2, scope: !565, file: !479, line: 338, type: !60)
!571 = !DISubprogram(name: "PyCodec_IncrementalDecoder", scope: !479, file: !479, line: 343, type: !566, isLocal: false, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i8*)* @PyCodec_IncrementalDecoder, variables: !572)
!572 = !{!573, !574}
!573 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 1, scope: !571, file: !479, line: 343, type: !60)
!574 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errors", arg: 2, scope: !571, file: !479, line: 344, type: !60)
!575 = !DISubprogram(name: "PyCodec_StreamReader", scope: !479, file: !479, line: 349, type: !576, isLocal: false, isDefinition: true, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i8*)* @PyCodec_StreamReader, variables: !578)
!576 = !DISubroutineType(types: !577)
!577 = !{!36, !60, !36, !60}
!578 = !{!579, !580, !581}
!579 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 1, scope: !575, file: !479, line: 349, type: !60)
!580 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stream", arg: 2, scope: !575, file: !479, line: 350, type: !36)
!581 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errors", arg: 3, scope: !575, file: !479, line: 351, type: !60)
!582 = !DISubprogram(name: "PyCodec_StreamWriter", scope: !479, file: !479, line: 356, type: !576, isLocal: false, isDefinition: true, scopeLine: 359, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i8*)* @PyCodec_StreamWriter, variables: !583)
!583 = !{!584, !585, !586}
!584 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 1, scope: !582, file: !479, line: 356, type: !60)
!585 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stream", arg: 2, scope: !582, file: !479, line: 357, type: !36)
!586 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errors", arg: 3, scope: !582, file: !479, line: 358, type: !60)
!587 = !DISubprogram(name: "PyCodec_Encode", scope: !479, file: !479, line: 471, type: !588, isLocal: false, isDefinition: true, scopeLine: 474, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i8*, i8*)* @PyCodec_Encode, variables: !590)
!588 = !DISubroutineType(types: !589)
!589 = !{!36, !36, !60, !60}
!590 = !{!591, !592, !593, !594}
!591 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "object", arg: 1, scope: !587, file: !479, line: 471, type: !36)
!592 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 2, scope: !587, file: !479, line: 472, type: !60)
!593 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errors", arg: 3, scope: !587, file: !479, line: 473, type: !60)
!594 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "encoder", scope: !587, file: !479, line: 475, type: !36)
!595 = !DISubprogram(name: "PyCodec_Decode", scope: !479, file: !479, line: 484, type: !588, isLocal: false, isDefinition: true, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i8*, i8*)* @PyCodec_Decode, variables: !596)
!596 = !{!597, !598, !599, !600}
!597 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "object", arg: 1, scope: !595, file: !479, line: 484, type: !36)
!598 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 2, scope: !595, file: !479, line: 485, type: !60)
!599 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errors", arg: 3, scope: !595, file: !479, line: 486, type: !60)
!600 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decoder", scope: !595, file: !479, line: 488, type: !36)
!601 = !DISubprogram(name: "_PyCodec_LookupTextEncoding", scope: !479, file: !479, line: 498, type: !566, isLocal: false, isDefinition: true, scopeLine: 500, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i8*)* @_PyCodec_LookupTextEncoding, variables: !602)
!602 = !{!603, !604, !605, !606, !607, !608, !616, !619}
!603 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 1, scope: !601, file: !479, line: 498, type: !60)
!604 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alternate_command", arg: 2, scope: !601, file: !479, line: 499, type: !60)
!605 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "codec", scope: !601, file: !479, line: 502, type: !36)
!606 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "attr", scope: !601, file: !479, line: 503, type: !36)
!607 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "is_text_codec", scope: !601, file: !479, line: 504, type: !75)
!608 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !609, file: !479, line: 520, type: !36)
!609 = distinct !DILexicalBlock(scope: !610, file: !479, line: 520, column: 20)
!610 = distinct !DILexicalBlock(scope: !611, file: !479, line: 519, column: 20)
!611 = distinct !DILexicalBlock(scope: !612, file: !479, line: 517, column: 17)
!612 = distinct !DILexicalBlock(scope: !613, file: !479, line: 516, column: 33)
!613 = distinct !DILexicalBlock(scope: !614, file: !479, line: 516, column: 13)
!614 = distinct !DILexicalBlock(scope: !615, file: !479, line: 514, column: 62)
!615 = distinct !DILexicalBlock(scope: !601, file: !479, line: 514, column: 9)
!616 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !617, file: !479, line: 525, type: !36)
!617 = distinct !DILexicalBlock(scope: !618, file: !479, line: 525, column: 16)
!618 = distinct !DILexicalBlock(scope: !613, file: !479, line: 523, column: 16)
!619 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !620, file: !479, line: 527, type: !36)
!620 = distinct !DILexicalBlock(scope: !621, file: !479, line: 527, column: 20)
!621 = distinct !DILexicalBlock(scope: !622, file: !479, line: 526, column: 33)
!622 = distinct !DILexicalBlock(scope: !618, file: !479, line: 526, column: 17)
!623 = !DISubprogram(name: "_PyCodec_EncodeText", scope: !479, file: !479, line: 570, type: !588, isLocal: false, isDefinition: true, scopeLine: 573, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i8*, i8*)* @_PyCodec_EncodeText, variables: !624)
!624 = !{!625, !626, !627, !628}
!625 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "object", arg: 1, scope: !623, file: !479, line: 570, type: !36)
!626 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 2, scope: !623, file: !479, line: 571, type: !60)
!627 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errors", arg: 3, scope: !623, file: !479, line: 572, type: !60)
!628 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "encoder", scope: !623, file: !479, line: 574, type: !36)
!629 = !DISubprogram(name: "_PyCodec_DecodeText", scope: !479, file: !479, line: 583, type: !588, isLocal: false, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i8*, i8*)* @_PyCodec_DecodeText, variables: !630)
!630 = !{!631, !632, !633, !634}
!631 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "object", arg: 1, scope: !629, file: !479, line: 583, type: !36)
!632 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 2, scope: !629, file: !479, line: 584, type: !60)
!633 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errors", arg: 3, scope: !629, file: !479, line: 585, type: !60)
!634 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decoder", scope: !629, file: !479, line: 587, type: !36)
!635 = !DISubprogram(name: "PyCodec_RegisterError", scope: !479, file: !479, line: 602, type: !636, isLocal: false, isDefinition: true, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*)* @PyCodec_RegisterError, variables: !638)
!636 = !DISubroutineType(types: !637)
!637 = !{!75, !60, !36}
!638 = !{!639, !640, !641, !642, !644, !645, !646}
!639 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !635, file: !479, line: 602, type: !60)
!640 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "error", arg: 2, scope: !635, file: !479, line: 602, type: !36)
!641 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "interp", scope: !635, file: !479, line: 604, type: !28)
!642 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !643, file: !479, line: 604, type: !485)
!643 = distinct !DILexicalBlock(scope: !635, file: !479, line: 604, column: 66)
!644 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !643, file: !479, line: 604, type: !121)
!645 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !643, file: !479, line: 604, type: !492)
!646 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !643, file: !479, line: 604, type: !495)
!647 = !DISubprogram(name: "PyCodec_LookupError", scope: !479, file: !479, line: 618, type: !497, isLocal: false, isDefinition: true, scopeLine: 619, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*)* @PyCodec_LookupError, variables: !648)
!648 = !{!649, !650, !651, !652, !654, !655, !656}
!649 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !647, file: !479, line: 618, type: !60)
!650 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "handler", scope: !647, file: !479, line: 620, type: !36)
!651 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "interp", scope: !647, file: !479, line: 622, type: !28)
!652 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !653, file: !479, line: 622, type: !485)
!653 = distinct !DILexicalBlock(scope: !647, file: !479, line: 622, column: 66)
!654 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !653, file: !479, line: 622, type: !121)
!655 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !653, file: !479, line: 622, type: !492)
!656 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !653, file: !479, line: 622, type: !495)
!657 = !DISubprogram(name: "PyCodec_StrictErrors", scope: !479, file: !479, line: 652, type: !148, isLocal: false, isDefinition: true, scopeLine: 653, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyCodec_StrictErrors, variables: !658)
!658 = !{!659}
!659 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 1, scope: !657, file: !479, line: 652, type: !36)
!660 = !DISubprogram(name: "PyCodec_IgnoreErrors", scope: !479, file: !479, line: 662, type: !148, isLocal: false, isDefinition: true, scopeLine: 663, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyCodec_IgnoreErrors, variables: !661)
!661 = !{!662, !663}
!662 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 1, scope: !660, file: !479, line: 662, type: !36)
!663 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end", scope: !660, file: !479, line: 664, type: !42)
!664 = !DISubprogram(name: "PyCodec_ReplaceErrors", scope: !479, file: !479, line: 685, type: !148, isLocal: false, isDefinition: true, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyCodec_ReplaceErrors, variables: !665)
!665 = !{!666, !667, !668, !669, !670, !671, !674, !675, !676, !680, !681}
!666 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 1, scope: !664, file: !479, line: 685, type: !36)
!667 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !664, file: !479, line: 687, type: !42)
!668 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end", scope: !664, file: !479, line: 687, type: !42)
!669 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !664, file: !479, line: 687, type: !42)
!670 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !664, file: !479, line: 687, type: !42)
!671 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !672, file: !479, line: 690, type: !36)
!672 = distinct !DILexicalBlock(scope: !673, file: !479, line: 689, column: 61)
!673 = distinct !DILexicalBlock(scope: !664, file: !479, line: 689, column: 9)
!674 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kind", scope: !672, file: !479, line: 691, type: !75)
!675 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !672, file: !479, line: 692, type: !121)
!676 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !677, file: !479, line: 716, type: !36)
!677 = distinct !DILexicalBlock(scope: !678, file: !479, line: 715, column: 69)
!678 = distinct !DILexicalBlock(scope: !679, file: !479, line: 715, column: 14)
!679 = distinct !DILexicalBlock(scope: !673, file: !479, line: 708, column: 14)
!680 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kind", scope: !677, file: !479, line: 717, type: !75)
!681 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !677, file: !479, line: 718, type: !121)
!682 = !DISubprogram(name: "PyCodec_XMLCharRefReplaceErrors", scope: !479, file: !479, line: 740, type: !148, isLocal: false, isDefinition: true, scopeLine: 741, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyCodec_XMLCharRefReplaceErrors, variables: !683)
!683 = !{!684, !685, !688, !689, !690, !691, !692, !693, !694, !695, !696, !700, !704, !705}
!684 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 1, scope: !682, file: !479, line: 740, type: !36)
!685 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "restuple", scope: !686, file: !479, line: 743, type: !36)
!686 = distinct !DILexicalBlock(scope: !687, file: !479, line: 742, column: 61)
!687 = distinct !DILexicalBlock(scope: !682, file: !479, line: 742, column: 9)
!688 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "object", scope: !686, file: !479, line: 744, type: !36)
!689 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !686, file: !479, line: 745, type: !42)
!690 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !686, file: !479, line: 746, type: !42)
!691 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end", scope: !686, file: !479, line: 747, type: !42)
!692 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !686, file: !479, line: 748, type: !36)
!693 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outp", scope: !686, file: !479, line: 749, type: !476)
!694 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ressize", scope: !686, file: !479, line: 750, type: !75)
!695 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch", scope: !686, file: !479, line: 751, type: !469)
!696 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !697, file: !479, line: 779, type: !36)
!697 = distinct !DILexicalBlock(scope: !698, file: !479, line: 779, column: 16)
!698 = distinct !DILexicalBlock(scope: !699, file: !479, line: 778, column: 32)
!699 = distinct !DILexicalBlock(scope: !686, file: !479, line: 778, column: 13)
!700 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "digits", scope: !701, file: !479, line: 785, type: !75)
!701 = distinct !DILexicalBlock(scope: !702, file: !479, line: 784, column: 39)
!702 = distinct !DILexicalBlock(scope: !703, file: !479, line: 784, column: 9)
!703 = distinct !DILexicalBlock(scope: !686, file: !479, line: 784, column: 9)
!704 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "base", scope: !701, file: !479, line: 786, type: !75)
!705 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !706, file: !479, line: 827, type: !36)
!706 = distinct !DILexicalBlock(scope: !686, file: !479, line: 827, column: 12)
!707 = !DISubprogram(name: "PyCodec_BackslashReplaceErrors", scope: !479, file: !479, line: 836, type: !148, isLocal: false, isDefinition: true, scopeLine: 837, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyCodec_BackslashReplaceErrors, variables: !708)
!708 = !{!709, !710, !713, !714, !715, !716, !717, !718, !719, !720, !721}
!709 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 1, scope: !707, file: !479, line: 836, type: !36)
!710 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "restuple", scope: !711, file: !479, line: 839, type: !36)
!711 = distinct !DILexicalBlock(scope: !712, file: !479, line: 838, column: 61)
!712 = distinct !DILexicalBlock(scope: !707, file: !479, line: 838, column: 9)
!713 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "object", scope: !711, file: !479, line: 840, type: !36)
!714 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !711, file: !479, line: 841, type: !42)
!715 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !711, file: !479, line: 842, type: !42)
!716 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end", scope: !711, file: !479, line: 843, type: !42)
!717 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !711, file: !479, line: 844, type: !36)
!718 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outp", scope: !711, file: !479, line: 845, type: !476)
!719 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ressize", scope: !711, file: !479, line: 846, type: !75)
!720 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !711, file: !479, line: 847, type: !469)
!721 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !722, file: !479, line: 895, type: !36)
!722 = distinct !DILexicalBlock(scope: !711, file: !479, line: 895, column: 12)
!723 = !DISubprogram(name: "_Py_ANNOTATE_MEMORY_ORDER", scope: !4, file: !4, line: 59, type: !724, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32)* @_Py_ANNOTATE_MEMORY_ORDER, variables: !729)
!724 = !DISubroutineType(types: !725)
!725 = !{null, !726, !495}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64, align: 64)
!727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !728)
!728 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!729 = !{!730, !731}
!730 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "address", arg: 1, scope: !723, file: !4, line: 59, type: !726)
!731 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 2, scope: !723, file: !4, line: 59, type: !495)
!732 = !DISubprogram(name: "_Py_atomic_thread_fence", scope: !4, file: !4, line: 51, type: !733, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @_Py_atomic_thread_fence, variables: !735)
!733 = !DISubroutineType(types: !734)
!734 = !{null, !495}
!735 = !{!736}
!736 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !732, file: !4, line: 51, type: !495)
!737 = !DISubprogram(name: "_Py_atomic_signal_fence", scope: !4, file: !4, line: 44, type: !733, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @_Py_atomic_signal_fence, variables: !738)
!738 = !{!739}
!739 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !737, file: !4, line: 44, type: !495)
!740 = !DISubprogram(name: "normalizestring", scope: !479, file: !479, line: 54, type: !497, isLocal: true, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*)* @normalizestring, variables: !741)
!741 = !{!742, !743, !744, !745, !746, !747}
!742 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "string", arg: 1, scope: !740, file: !479, line: 54, type: !60)
!743 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !740, file: !479, line: 56, type: !126)
!744 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !740, file: !479, line: 57, type: !126)
!745 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !740, file: !479, line: 58, type: !83)
!746 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !740, file: !479, line: 59, type: !36)
!747 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch", scope: !748, file: !479, line: 70, type: !62)
!748 = distinct !DILexicalBlock(scope: !749, file: !479, line: 69, column: 31)
!749 = distinct !DILexicalBlock(scope: !750, file: !479, line: 69, column: 5)
!750 = distinct !DILexicalBlock(scope: !740, file: !479, line: 69, column: 5)
!751 = !DISubprogram(name: "codec_makeincrementalcodec", scope: !479, file: !479, line: 248, type: !588, isLocal: true, isDefinition: true, scopeLine: 251, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i8*, i8*)* @codec_makeincrementalcodec, variables: !752)
!752 = !{!753, !754, !755, !756, !757, !758}
!753 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "codec_info", arg: 1, scope: !751, file: !479, line: 248, type: !36)
!754 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errors", arg: 2, scope: !751, file: !479, line: 249, type: !60)
!755 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "attrname", arg: 3, scope: !751, file: !479, line: 250, type: !60)
!756 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !751, file: !479, line: 252, type: !36)
!757 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inccodec", scope: !751, file: !479, line: 252, type: !36)
!758 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !759, file: !479, line: 261, type: !36)
!759 = distinct !DILexicalBlock(scope: !751, file: !479, line: 261, column: 8)
!760 = !DISubprogram(name: "codec_getitem", scope: !479, file: !479, line: 232, type: !761, isLocal: true, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i32)* @codec_getitem, variables: !763)
!761 = !DISubroutineType(types: !762)
!762 = !{!36, !60, !75}
!763 = !{!764, !765, !766, !767, !768}
!764 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 1, scope: !760, file: !479, line: 232, type: !60)
!765 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "index", arg: 2, scope: !760, file: !479, line: 232, type: !75)
!766 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "codecs", scope: !760, file: !479, line: 234, type: !36)
!767 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !760, file: !479, line: 235, type: !36)
!768 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !769, file: !479, line: 241, type: !36)
!769 = distinct !DILexicalBlock(scope: !760, file: !479, line: 241, column: 8)
!770 = !DISubprogram(name: "codec_getincrementalcodec", scope: !479, file: !479, line: 266, type: !771, isLocal: true, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i8*, i8*)* @codec_getincrementalcodec, variables: !773)
!771 = !DISubroutineType(types: !772)
!772 = !{!36, !60, !60, !60}
!773 = !{!774, !775, !776, !777, !778, !779}
!774 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 1, scope: !770, file: !479, line: 266, type: !60)
!775 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errors", arg: 2, scope: !770, file: !479, line: 267, type: !60)
!776 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "attrname", arg: 3, scope: !770, file: !479, line: 268, type: !60)
!777 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "codec_info", scope: !770, file: !479, line: 270, type: !36)
!778 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !770, file: !479, line: 270, type: !36)
!779 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !780, file: !479, line: 276, type: !36)
!780 = distinct !DILexicalBlock(scope: !770, file: !479, line: 276, column: 8)
!781 = !DISubprogram(name: "codec_getstreamcodec", scope: !479, file: !479, line: 283, type: !782, isLocal: true, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i8*, i32)* @codec_getstreamcodec, variables: !785)
!782 = !DISubroutineType(types: !783)
!783 = !{!36, !60, !36, !60, !784}
!784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!785 = !{!786, !787, !788, !789, !790, !791, !792, !793}
!786 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 1, scope: !781, file: !479, line: 283, type: !60)
!787 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stream", arg: 2, scope: !781, file: !479, line: 284, type: !36)
!788 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errors", arg: 3, scope: !781, file: !479, line: 285, type: !60)
!789 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "index", arg: 4, scope: !781, file: !479, line: 286, type: !784)
!790 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "codecs", scope: !781, file: !479, line: 288, type: !36)
!791 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "streamcodec", scope: !781, file: !479, line: 288, type: !36)
!792 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "codeccls", scope: !781, file: !479, line: 288, type: !36)
!793 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !794, file: !479, line: 299, type: !36)
!794 = distinct !DILexicalBlock(scope: !781, file: !479, line: 299, column: 8)
!795 = !DISubprogram(name: "_PyCodec_EncodeInternal", scope: !479, file: !479, line: 385, type: !796, isLocal: true, isDefinition: true, scopeLine: 389, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, i8*, i8*)* @_PyCodec_EncodeInternal, variables: !798)
!796 = !DISubroutineType(types: !797)
!797 = !{!36, !36, !36, !60, !60}
!798 = !{!799, !800, !801, !802, !803, !804, !805, !806, !808, !810, !812, !814, !817, !819, !822, !824}
!799 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "object", arg: 1, scope: !795, file: !479, line: 385, type: !36)
!800 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoder", arg: 2, scope: !795, file: !479, line: 386, type: !36)
!801 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 3, scope: !795, file: !479, line: 387, type: !60)
!802 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errors", arg: 4, scope: !795, file: !479, line: 388, type: !60)
!803 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !795, file: !479, line: 390, type: !36)
!804 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !795, file: !479, line: 390, type: !36)
!805 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !795, file: !479, line: 391, type: !36)
!806 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !807, file: !479, line: 413, type: !36)
!807 = distinct !DILexicalBlock(scope: !795, file: !479, line: 413, column: 8)
!808 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !809, file: !479, line: 414, type: !36)
!809 = distinct !DILexicalBlock(scope: !795, file: !479, line: 414, column: 8)
!810 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !811, file: !479, line: 415, type: !36)
!811 = distinct !DILexicalBlock(scope: !795, file: !479, line: 415, column: 8)
!812 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !813, file: !479, line: 419, type: !36)
!813 = distinct !DILexicalBlock(scope: !795, file: !479, line: 419, column: 8)
!814 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !815, file: !479, line: 419, type: !36)
!815 = distinct !DILexicalBlock(scope: !816, file: !479, line: 419, column: 98)
!816 = distinct !DILexicalBlock(scope: !813, file: !479, line: 419, column: 64)
!817 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !818, file: !479, line: 420, type: !36)
!818 = distinct !DILexicalBlock(scope: !795, file: !479, line: 420, column: 8)
!819 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !820, file: !479, line: 420, type: !36)
!820 = distinct !DILexicalBlock(scope: !821, file: !479, line: 420, column: 96)
!821 = distinct !DILexicalBlock(scope: !818, file: !479, line: 420, column: 62)
!822 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !823, file: !479, line: 421, type: !36)
!823 = distinct !DILexicalBlock(scope: !795, file: !479, line: 421, column: 8)
!824 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !825, file: !479, line: 421, type: !36)
!825 = distinct !DILexicalBlock(scope: !826, file: !479, line: 421, column: 99)
!826 = distinct !DILexicalBlock(scope: !823, file: !479, line: 421, column: 65)
!827 = !DISubprogram(name: "args_tuple", scope: !479, file: !479, line: 206, type: !550, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i8*)* @args_tuple, variables: !828)
!828 = !{!829, !830, !831, !832, !835}
!829 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "object", arg: 1, scope: !827, file: !479, line: 206, type: !36)
!830 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errors", arg: 2, scope: !827, file: !479, line: 207, type: !60)
!831 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !827, file: !479, line: 209, type: !36)
!832 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !833, file: !479, line: 217, type: !36)
!833 = distinct !DILexicalBlock(scope: !834, file: !479, line: 216, column: 17)
!834 = distinct !DILexicalBlock(scope: !827, file: !479, line: 216, column: 9)
!835 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !836, file: !479, line: 221, type: !36)
!836 = distinct !DILexicalBlock(scope: !837, file: !479, line: 221, column: 16)
!837 = distinct !DILexicalBlock(scope: !838, file: !479, line: 220, column: 30)
!838 = distinct !DILexicalBlock(scope: !833, file: !479, line: 220, column: 13)
!839 = !DISubprogram(name: "wrap_codec_error", scope: !479, file: !479, line: 368, type: !840, isLocal: true, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*)* @wrap_codec_error, variables: !842)
!840 = !DISubroutineType(types: !841)
!841 = !{null, !60, !60}
!842 = !{!843, !844}
!843 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "operation", arg: 1, scope: !839, file: !479, line: 368, type: !60)
!844 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 2, scope: !839, file: !479, line: 369, type: !60)
!845 = !DISubprogram(name: "_PyCodec_DecodeInternal", scope: !479, file: !479, line: 431, type: !796, isLocal: true, isDefinition: true, scopeLine: 435, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, i8*, i8*)* @_PyCodec_DecodeInternal, variables: !846)
!846 = !{!847, !848, !849, !850, !851, !852, !853, !854, !856, !858, !860, !862, !865, !867, !870, !872}
!847 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "object", arg: 1, scope: !845, file: !479, line: 431, type: !36)
!848 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "decoder", arg: 2, scope: !845, file: !479, line: 432, type: !36)
!849 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 3, scope: !845, file: !479, line: 433, type: !60)
!850 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errors", arg: 4, scope: !845, file: !479, line: 434, type: !60)
!851 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !845, file: !479, line: 436, type: !36)
!852 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !845, file: !479, line: 436, type: !36)
!853 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !845, file: !479, line: 437, type: !36)
!854 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !855, file: !479, line: 458, type: !36)
!855 = distinct !DILexicalBlock(scope: !845, file: !479, line: 458, column: 8)
!856 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !857, file: !479, line: 459, type: !36)
!857 = distinct !DILexicalBlock(scope: !845, file: !479, line: 459, column: 8)
!858 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !859, file: !479, line: 460, type: !36)
!859 = distinct !DILexicalBlock(scope: !845, file: !479, line: 460, column: 8)
!860 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !861, file: !479, line: 464, type: !36)
!861 = distinct !DILexicalBlock(scope: !845, file: !479, line: 464, column: 8)
!862 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !863, file: !479, line: 464, type: !36)
!863 = distinct !DILexicalBlock(scope: !864, file: !479, line: 464, column: 96)
!864 = distinct !DILexicalBlock(scope: !861, file: !479, line: 464, column: 62)
!865 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !866, file: !479, line: 465, type: !36)
!866 = distinct !DILexicalBlock(scope: !845, file: !479, line: 465, column: 8)
!867 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !868, file: !479, line: 465, type: !36)
!868 = distinct !DILexicalBlock(scope: !869, file: !479, line: 465, column: 99)
!869 = distinct !DILexicalBlock(scope: !866, file: !479, line: 465, column: 65)
!870 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !871, file: !479, line: 466, type: !36)
!871 = distinct !DILexicalBlock(scope: !845, file: !479, line: 466, column: 8)
!872 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !873, file: !479, line: 466, type: !36)
!873 = distinct !DILexicalBlock(scope: !874, file: !479, line: 466, column: 98)
!874 = distinct !DILexicalBlock(scope: !871, file: !479, line: 466, column: 64)
!875 = !DISubprogram(name: "_PyCodec_TextEncoder", scope: !479, file: !479, line: 560, type: !497, isLocal: true, isDefinition: true, scopeLine: 561, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*)* @_PyCodec_TextEncoder, variables: !876)
!876 = !{!877}
!877 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 1, scope: !875, file: !479, line: 560, type: !60)
!878 = !DISubprogram(name: "codec_getitem_checked", scope: !479, file: !479, line: 543, type: !879, isLocal: true, isDefinition: true, scopeLine: 546, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i8*, i32)* @codec_getitem_checked, variables: !881)
!879 = !DISubroutineType(types: !880)
!880 = !{!36, !60, !60, !75}
!881 = !{!882, !883, !884, !885, !886, !887}
!882 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 1, scope: !878, file: !479, line: 543, type: !60)
!883 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alternate_command", arg: 2, scope: !878, file: !479, line: 544, type: !60)
!884 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "index", arg: 3, scope: !878, file: !479, line: 545, type: !75)
!885 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "codec", scope: !878, file: !479, line: 547, type: !36)
!886 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !878, file: !479, line: 548, type: !36)
!887 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !888, file: !479, line: 556, type: !36)
!888 = distinct !DILexicalBlock(scope: !878, file: !479, line: 556, column: 8)
!889 = !DISubprogram(name: "_PyCodec_TextDecoder", scope: !479, file: !479, line: 565, type: !497, isLocal: true, isDefinition: true, scopeLine: 566, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*)* @_PyCodec_TextDecoder, variables: !890)
!890 = !{!891}
!891 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 1, scope: !889, file: !479, line: 565, type: !60)
!892 = !DISubprogram(name: "wrong_exception_type", scope: !479, file: !479, line: 636, type: !68, isLocal: true, isDefinition: true, scopeLine: 637, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @wrong_exception_type, variables: !893)
!893 = !{!894, !895, !896, !899, !901}
!894 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 1, scope: !892, file: !479, line: 636, type: !36)
!895 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !892, file: !479, line: 640, type: !36)
!896 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !897, file: !479, line: 642, type: !36)
!897 = distinct !DILexicalBlock(scope: !898, file: !479, line: 641, column: 29)
!898 = distinct !DILexicalBlock(scope: !892, file: !479, line: 641, column: 9)
!899 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !900, file: !479, line: 643, type: !36)
!900 = distinct !DILexicalBlock(scope: !897, file: !479, line: 643, column: 12)
!901 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !902, file: !479, line: 647, type: !36)
!902 = distinct !DILexicalBlock(scope: !903, file: !479, line: 647, column: 16)
!903 = distinct !DILexicalBlock(scope: !904, file: !479, line: 644, column: 33)
!904 = distinct !DILexicalBlock(scope: !897, file: !479, line: 644, column: 13)
!905 = !DISubprogram(name: "_PyCodecRegistry_Init", scope: !479, file: !479, line: 1236, type: !906, isLocal: true, isDefinition: true, scopeLine: 1237, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @_PyCodecRegistry_Init, variables: !908)
!906 = !DISubroutineType(types: !907)
!907 = !{!75}
!908 = !{!909, !910, !912, !913, !914, !915, !916, !917, !923, !924, !926}
!909 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "interp", scope: !905, file: !479, line: 1313, type: !28)
!910 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !911, file: !479, line: 1313, type: !485)
!911 = distinct !DILexicalBlock(scope: !905, file: !479, line: 1313, column: 66)
!912 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !911, file: !479, line: 1313, type: !121)
!913 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !911, file: !479, line: 1313, type: !492)
!914 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !911, file: !479, line: 1313, type: !495)
!915 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mod", scope: !905, file: !479, line: 1314, type: !36)
!916 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !905, file: !479, line: 1315, type: !373)
!917 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !918, file: !479, line: 1326, type: !36)
!918 = distinct !DILexicalBlock(scope: !919, file: !479, line: 1325, column: 174)
!919 = distinct !DILexicalBlock(scope: !920, file: !479, line: 1325, column: 9)
!920 = distinct !DILexicalBlock(scope: !921, file: !479, line: 1325, column: 9)
!921 = distinct !DILexicalBlock(scope: !922, file: !479, line: 1324, column: 39)
!922 = distinct !DILexicalBlock(scope: !905, file: !479, line: 1324, column: 9)
!923 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !918, file: !479, line: 1327, type: !75)
!924 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !925, file: !479, line: 1331, type: !36)
!925 = distinct !DILexicalBlock(scope: !918, file: !479, line: 1331, column: 16)
!926 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !927, file: !479, line: 1346, type: !36)
!927 = distinct !DILexicalBlock(scope: !905, file: !479, line: 1346, column: 8)
!928 = !DISubprogram(name: "strict_errors", scope: !479, file: !479, line: 1197, type: !158, isLocal: true, isDefinition: true, scopeLine: 1198, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @strict_errors, variables: !929)
!929 = !{!930, !931}
!930 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !928, file: !479, line: 1197, type: !36)
!931 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 2, scope: !928, file: !479, line: 1197, type: !36)
!932 = !DISubprogram(name: "ignore_errors", scope: !479, file: !479, line: 1203, type: !158, isLocal: true, isDefinition: true, scopeLine: 1204, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @ignore_errors, variables: !933)
!933 = !{!934, !935}
!934 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !932, file: !479, line: 1203, type: !36)
!935 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 2, scope: !932, file: !479, line: 1203, type: !36)
!936 = !DISubprogram(name: "replace_errors", scope: !479, file: !479, line: 1209, type: !158, isLocal: true, isDefinition: true, scopeLine: 1210, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @replace_errors, variables: !937)
!937 = !{!938, !939}
!938 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !936, file: !479, line: 1209, type: !36)
!939 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 2, scope: !936, file: !479, line: 1209, type: !36)
!940 = !DISubprogram(name: "xmlcharrefreplace_errors", scope: !479, file: !479, line: 1215, type: !158, isLocal: true, isDefinition: true, scopeLine: 1216, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @xmlcharrefreplace_errors, variables: !941)
!941 = !{!942, !943}
!942 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !940, file: !479, line: 1215, type: !36)
!943 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 2, scope: !940, file: !479, line: 1215, type: !36)
!944 = !DISubprogram(name: "backslashreplace_errors", scope: !479, file: !479, line: 1221, type: !158, isLocal: true, isDefinition: true, scopeLine: 1222, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @backslashreplace_errors, variables: !945)
!945 = !{!946, !947}
!946 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !944, file: !479, line: 1221, type: !36)
!947 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 2, scope: !944, file: !479, line: 1221, type: !36)
!948 = !DISubprogram(name: "surrogatepass_errors", scope: !479, file: !479, line: 1226, type: !158, isLocal: true, isDefinition: true, scopeLine: 1227, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @surrogatepass_errors, variables: !949)
!949 = !{!950, !951}
!950 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !948, file: !479, line: 1226, type: !36)
!951 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 2, scope: !948, file: !479, line: 1226, type: !36)
!952 = !DISubprogram(name: "PyCodec_SurrogatePassErrors", scope: !479, file: !479, line: 966, type: !148, isLocal: true, isDefinition: true, scopeLine: 967, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyCodec_SurrogatePassErrors, variables: !953)
!953 = !{!954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !968, !972, !976, !978, !980, !984, !988, !992, !994, !996, !998, !1001, !1002, !1006, !1010, !1014, !1016, !1018}
!954 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 1, scope: !952, file: !479, line: 966, type: !36)
!955 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "restuple", scope: !952, file: !479, line: 968, type: !36)
!956 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "object", scope: !952, file: !479, line: 969, type: !36)
!957 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "encode", scope: !952, file: !479, line: 970, type: !36)
!958 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "encoding", scope: !952, file: !479, line: 971, type: !83)
!959 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "code", scope: !952, file: !479, line: 972, type: !75)
!960 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytelength", scope: !952, file: !479, line: 973, type: !75)
!961 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !952, file: !479, line: 974, type: !42)
!962 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !952, file: !479, line: 975, type: !42)
!963 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end", scope: !952, file: !479, line: 976, type: !42)
!964 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !952, file: !479, line: 977, type: !36)
!965 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outp", scope: !966, file: !479, line: 979, type: !476)
!966 = distinct !DILexicalBlock(scope: !967, file: !479, line: 978, column: 61)
!967 = distinct !DILexicalBlock(scope: !952, file: !479, line: 978, column: 9)
!968 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !969, file: !479, line: 987, type: !36)
!969 = distinct !DILexicalBlock(scope: !970, file: !479, line: 987, column: 16)
!970 = distinct !DILexicalBlock(scope: !971, file: !479, line: 986, column: 64)
!971 = distinct !DILexicalBlock(scope: !966, file: !479, line: 986, column: 13)
!972 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !973, file: !479, line: 991, type: !36)
!973 = distinct !DILexicalBlock(scope: !974, file: !479, line: 991, column: 16)
!974 = distinct !DILexicalBlock(scope: !975, file: !479, line: 990, column: 53)
!975 = distinct !DILexicalBlock(scope: !966, file: !479, line: 990, column: 13)
!976 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !977, file: !479, line: 992, type: !36)
!977 = distinct !DILexicalBlock(scope: !974, file: !479, line: 992, column: 16)
!978 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !979, file: !479, line: 996, type: !36)
!979 = distinct !DILexicalBlock(scope: !966, file: !479, line: 996, column: 12)
!980 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !981, file: !479, line: 1000, type: !36)
!981 = distinct !DILexicalBlock(scope: !982, file: !479, line: 1000, column: 16)
!982 = distinct !DILexicalBlock(scope: !983, file: !479, line: 999, column: 19)
!983 = distinct !DILexicalBlock(scope: !966, file: !479, line: 999, column: 13)
!984 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch", scope: !985, file: !479, line: 1006, type: !469)
!985 = distinct !DILexicalBlock(scope: !986, file: !479, line: 1004, column: 39)
!986 = distinct !DILexicalBlock(scope: !987, file: !479, line: 1004, column: 9)
!987 = distinct !DILexicalBlock(scope: !966, file: !479, line: 1004, column: 9)
!988 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !989, file: !479, line: 1010, type: !36)
!989 = distinct !DILexicalBlock(scope: !990, file: !479, line: 1010, column: 20)
!990 = distinct !DILexicalBlock(scope: !991, file: !479, line: 1007, column: 54)
!991 = distinct !DILexicalBlock(scope: !985, file: !479, line: 1007, column: 17)
!992 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !993, file: !479, line: 1011, type: !36)
!993 = distinct !DILexicalBlock(scope: !990, file: !479, line: 1011, column: 20)
!994 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !995, file: !479, line: 1043, type: !36)
!995 = distinct !DILexicalBlock(scope: !966, file: !479, line: 1043, column: 12)
!996 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !997, file: !479, line: 1044, type: !36)
!997 = distinct !DILexicalBlock(scope: !966, file: !479, line: 1044, column: 12)
!998 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !999, file: !479, line: 1048, type: !476)
!999 = distinct !DILexicalBlock(scope: !1000, file: !479, line: 1047, column: 66)
!1000 = distinct !DILexicalBlock(scope: !967, file: !479, line: 1047, column: 14)
!1001 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch", scope: !999, file: !479, line: 1049, type: !469)
!1002 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1003, file: !479, line: 1057, type: !36)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !479, line: 1057, column: 16)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !479, line: 1056, column: 62)
!1005 = distinct !DILexicalBlock(scope: !999, file: !479, line: 1056, column: 13)
!1006 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1007, file: !479, line: 1061, type: !36)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !479, line: 1061, column: 16)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !479, line: 1060, column: 64)
!1009 = distinct !DILexicalBlock(scope: !999, file: !479, line: 1060, column: 13)
!1010 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1011, file: !479, line: 1065, type: !36)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !479, line: 1065, column: 16)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !479, line: 1064, column: 53)
!1013 = distinct !DILexicalBlock(scope: !999, file: !479, line: 1064, column: 13)
!1014 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1015, file: !479, line: 1066, type: !36)
!1015 = distinct !DILexicalBlock(scope: !1012, file: !479, line: 1066, column: 16)
!1016 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1017, file: !479, line: 1070, type: !36)
!1017 = distinct !DILexicalBlock(scope: !999, file: !479, line: 1070, column: 12)
!1018 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1019, file: !479, line: 1100, type: !36)
!1019 = distinct !DILexicalBlock(scope: !999, file: !479, line: 1100, column: 12)
!1020 = !DISubprogram(name: "get_standard_encoding", scope: !479, file: !479, line: 911, type: !1021, isLocal: true, isDefinition: true, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32*)* @get_standard_encoding, variables: !1024)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!75, !60, !1023}
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!1024 = !{!1025, !1026}
!1025 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 1, scope: !1020, file: !479, line: 911, type: !60)
!1026 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bytelength", arg: 2, scope: !1020, file: !479, line: 911, type: !1023)
!1027 = !DISubprogram(name: "surrogateescape_errors", scope: !479, file: !479, line: 1231, type: !158, isLocal: true, isDefinition: true, scopeLine: 1232, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @surrogateescape_errors, variables: !1028)
!1028 = !{!1029, !1030}
!1029 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !1027, file: !479, line: 1231, type: !36)
!1030 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 2, scope: !1027, file: !479, line: 1231, type: !36)
!1031 = !DISubprogram(name: "PyCodec_SurrogateEscapeErrors", scope: !479, file: !479, line: 1118, type: !148, isLocal: true, isDefinition: true, scopeLine: 1119, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyCodec_SurrogateEscapeErrors, variables: !1032)
!1032 = !{!1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1043, !1047, !1051, !1055, !1057, !1059, !1061, !1064, !1065, !1069, !1070, !1074}
!1033 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 1, scope: !1031, file: !479, line: 1118, type: !36)
!1034 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "restuple", scope: !1031, file: !479, line: 1120, type: !36)
!1035 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "object", scope: !1031, file: !479, line: 1121, type: !36)
!1036 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !1031, file: !479, line: 1122, type: !42)
!1037 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !1031, file: !479, line: 1123, type: !42)
!1038 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end", scope: !1031, file: !479, line: 1124, type: !42)
!1039 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !1031, file: !479, line: 1125, type: !36)
!1040 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outp", scope: !1041, file: !479, line: 1127, type: !83)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !479, line: 1126, column: 61)
!1042 = distinct !DILexicalBlock(scope: !1031, file: !479, line: 1126, column: 9)
!1043 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1044, file: !479, line: 1136, type: !36)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !479, line: 1136, column: 16)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !479, line: 1135, column: 19)
!1046 = distinct !DILexicalBlock(scope: !1041, file: !479, line: 1135, column: 13)
!1047 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch", scope: !1048, file: !479, line: 1142, type: !469)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !479, line: 1140, column: 39)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !479, line: 1140, column: 9)
!1050 = distinct !DILexicalBlock(scope: !1041, file: !479, line: 1140, column: 9)
!1051 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1052, file: !479, line: 1146, type: !36)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !479, line: 1146, column: 20)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !479, line: 1143, column: 45)
!1054 = distinct !DILexicalBlock(scope: !1048, file: !479, line: 1143, column: 17)
!1055 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1056, file: !479, line: 1147, type: !36)
!1056 = distinct !DILexicalBlock(scope: !1053, file: !479, line: 1147, column: 20)
!1057 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1058, file: !479, line: 1153, type: !36)
!1058 = distinct !DILexicalBlock(scope: !1041, file: !479, line: 1153, column: 12)
!1059 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1060, file: !479, line: 1154, type: !36)
!1060 = distinct !DILexicalBlock(scope: !1041, file: !479, line: 1154, column: 12)
!1061 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !1062, file: !479, line: 1158, type: !36)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !479, line: 1157, column: 66)
!1063 = distinct !DILexicalBlock(scope: !1042, file: !479, line: 1157, column: 14)
!1064 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !1062, file: !479, line: 1159, type: !476)
!1065 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch", scope: !1062, file: !479, line: 1160, type: !1066)
!1066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 64, align: 16, elements: !1067)
!1067 = !{!1068}
!1068 = !DISubrange(count: 4)
!1069 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "consumed", scope: !1062, file: !479, line: 1161, type: !75)
!1070 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1071, file: !479, line: 1169, type: !36)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !479, line: 1169, column: 16)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !479, line: 1168, column: 62)
!1073 = distinct !DILexicalBlock(scope: !1062, file: !479, line: 1168, column: 13)
!1074 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1075, file: !479, line: 1179, type: !36)
!1075 = distinct !DILexicalBlock(scope: !1062, file: !479, line: 1179, column: 12)
!1076 = !{!1077, !1078, !1086, !1087, !1088}
!1077 = !DIGlobalVariable(name: "Py_hexdigits", scope: !0, file: !479, line: 14, type: !60, isLocal: false, isDefinition: true, variable: i8** @Py_hexdigits)
!1078 = !DIGlobalVariable(name: "PyId__is_text_encoding", scope: !601, file: !479, line: 501, type: !1079, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @_PyCodec_LookupTextEncoding.PyId__is_text_encoding)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !38, line: 144, baseType: !1080)
!1080 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !38, line: 140, size: 192, align: 64, elements: !1081)
!1081 = !{!1082, !1084, !1085}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1080, file: !38, line: 141, baseType: !1083, size: 64, align: 64)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64, align: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1080, file: !38, line: 142, baseType: !60, size: 64, align: 64, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1080, file: !38, line: 143, baseType: !36, size: 64, align: 64, offset: 128)
!1086 = !DIGlobalVariable(name: "PyId___class__", scope: !892, file: !479, line: 638, type: !1079, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @wrong_exception_type.PyId___class__)
!1087 = !DIGlobalVariable(name: "PyId___name__", scope: !892, file: !479, line: 639, type: !1079, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @wrong_exception_type.PyId___name__)
!1088 = !DIGlobalVariable(name: "methods", scope: !905, file: !479, line: 1241, type: !1089, isLocal: true, isDefinition: true, variable: [7 x %struct.anon.0]* @_PyCodecRegistry_Init.methods)
!1089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1090, size: 2240, align: 64, elements: !1095)
!1090 = !DICompositeType(tag: DW_TAG_structure_type, scope: !905, file: !479, line: 1238, size: 320, align: 64, elements: !1091)
!1091 = !{!1092, !1093}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1090, file: !479, line: 1239, baseType: !83, size: 64, align: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1090, file: !479, line: 1240, baseType: !1094, size: 256, align: 64, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !313, line: 47, baseType: !312)
!1095 = !{!1096}
!1096 = !DISubrange(count: 7)
!1097 = !{i32 2, !"Dwarf Version", i32 4}
!1098 = !{i32 2, !"Debug Info Version", i32 3}
!1099 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!1100 = !{!1101, !1101, i64 0}
!1101 = !{!"any pointer", !1102, i64 0}
!1102 = !{!"omnipotent char", !1103, i64 0}
!1103 = !{!"Simple C/C++ TBAA"}
!1104 = !DIExpression()
!1105 = !DILocation(line: 31, column: 32, scope: !478)
!1106 = !DILocation(line: 33, column: 5, scope: !478)
!1107 = !DILocation(line: 33, column: 25, scope: !478)
!1108 = !DILocation(line: 33, column: 68, scope: !484)
!1109 = !DILocation(line: 33, column: 104, scope: !484)
!1110 = !DILocation(line: 33, column: 142, scope: !484)
!1111 = !DILocation(line: 33, column: 173, scope: !484)
!1112 = !DILocation(line: 33, column: 181, scope: !484)
!1113 = !DILocation(line: 33, column: 210, scope: !484)
!1114 = !DILocation(line: 33, column: 227, scope: !484)
!1115 = !DILocation(line: 33, column: 239, scope: !484)
!1116 = !DILocation(line: 33, column: 247, scope: !484)
!1117 = !DILocation(line: 33, column: 264, scope: !484)
!1118 = !{!1102, !1102, i64 0}
!1119 = !DILocation(line: 33, column: 324, scope: !484)
!1120 = !DILocation(line: 33, column: 336, scope: !484)
!1121 = !DILocation(line: 33, column: 298, scope: !484)
!1122 = !DILocation(line: 33, column: 353, scope: !484)
!1123 = !DILocation(line: 33, column: 346, scope: !484)
!1124 = !DILocation(line: 33, column: 455, scope: !1125)
!1125 = !DILexicalBlockFile(scope: !1126, file: !479, discriminator: 4)
!1126 = !DILexicalBlockFile(scope: !1127, file: !479, discriminator: 3)
!1127 = !DILexicalBlockFile(scope: !1128, file: !479, discriminator: 2)
!1128 = distinct !DILexicalBlock(scope: !484, file: !479, line: 33, column: 360)
!1129 = !DILocation(line: 33, column: 506, scope: !1128)
!1130 = !DILocation(line: 33, column: 522, scope: !1131)
!1131 = !DILexicalBlockFile(scope: !1128, file: !479, discriminator: 1)
!1132 = !DILocation(line: 33, column: 541, scope: !1133)
!1133 = !DILexicalBlockFile(scope: !1134, file: !479, discriminator: 6)
!1134 = !DILexicalBlockFile(scope: !484, file: !479, discriminator: 5)
!1135 = !DILocation(line: 33, column: 540, scope: !484)
!1136 = !DILocation(line: 33, column: 538, scope: !484)
!1137 = !DILocation(line: 33, column: 563, scope: !484)
!1138 = !DILocation(line: 33, column: 556, scope: !484)
!1139 = !DILocation(line: 33, column: 665, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !1141, file: !479, discriminator: 10)
!1141 = !DILexicalBlockFile(scope: !1142, file: !479, discriminator: 9)
!1142 = !DILexicalBlockFile(scope: !1143, file: !479, discriminator: 8)
!1143 = distinct !DILexicalBlock(scope: !484, file: !479, line: 33, column: 570)
!1144 = !DILocation(line: 33, column: 716, scope: !1143)
!1145 = !DILocation(line: 33, column: 732, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !1143, file: !479, discriminator: 7)
!1147 = !DILocation(line: 33, column: 743, scope: !1148)
!1148 = !DILexicalBlockFile(scope: !1149, file: !479, discriminator: 12)
!1149 = !DILexicalBlockFile(scope: !484, file: !479, discriminator: 11)
!1150 = !DILocation(line: 33, column: 739, scope: !1143)
!1151 = !DILocation(line: 33, column: 751, scope: !478)
!1152 = !DILocation(line: 33, column: 751, scope: !484)
!1153 = !DILocation(line: 33, column: 35, scope: !478)
!1154 = !DILocation(line: 33, column: 756, scope: !478)
!1155 = !{!1156, !1101, i64 16}
!1156 = !{!"_ts", !1101, i64 0, !1101, i64 8, !1101, i64 16, !1101, i64 24, !1157, i64 32, !1102, i64 36, !1102, i64 37, !1157, i64 40, !1157, i64 44, !1101, i64 48, !1101, i64 56, !1101, i64 64, !1101, i64 72, !1101, i64 80, !1101, i64 88, !1101, i64 96, !1101, i64 104, !1101, i64 112, !1101, i64 120, !1101, i64 128, !1157, i64 136, !1101, i64 144, !1158, i64 152, !1157, i64 160, !1101, i64 168, !1101, i64 176, !1101, i64 184}
!1157 = !{!"int", !1102, i64 0}
!1158 = !{!"long", !1102, i64 0}
!1159 = !DILocation(line: 34, column: 9, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !478, file: !479, line: 34, column: 9)
!1161 = !DILocation(line: 34, column: 17, scope: !1160)
!1162 = !{!1163, !1101, i64 56}
!1163 = !{!"_is", !1101, i64 0, !1101, i64 8, !1101, i64 16, !1101, i64 24, !1101, i64 32, !1101, i64 40, !1101, i64 48, !1101, i64 56, !1101, i64 64, !1101, i64 72, !1157, i64 80, !1157, i64 84, !1157, i64 88, !1101, i64 96}
!1164 = !DILocation(line: 34, column: 35, scope: !1160)
!1165 = !DILocation(line: 34, column: 49, scope: !1160)
!1166 = !DILocation(line: 34, column: 52, scope: !1167)
!1167 = !DILexicalBlockFile(scope: !1160, file: !479, discriminator: 1)
!1168 = !DILocation(line: 34, column: 9, scope: !478)
!1169 = !DILocation(line: 35, column: 9, scope: !1160)
!1170 = !DILocation(line: 36, column: 9, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !478, file: !479, line: 36, column: 9)
!1172 = !DILocation(line: 36, column: 25, scope: !1171)
!1173 = !DILocation(line: 36, column: 9, scope: !478)
!1174 = !DILocation(line: 37, column: 9, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1171, file: !479, line: 36, column: 40)
!1176 = !DILocation(line: 38, column: 9, scope: !1175)
!1177 = !DILocation(line: 40, column: 27, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !478, file: !479, line: 40, column: 9)
!1179 = !DILocation(line: 40, column: 10, scope: !1178)
!1180 = !DILocation(line: 40, column: 9, scope: !478)
!1181 = !DILocation(line: 41, column: 25, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1178, file: !479, line: 40, column: 45)
!1183 = !DILocation(line: 41, column: 9, scope: !1182)
!1184 = !DILocation(line: 42, column: 9, scope: !1182)
!1185 = !DILocation(line: 44, column: 26, scope: !478)
!1186 = !DILocation(line: 44, column: 34, scope: !478)
!1187 = !DILocation(line: 44, column: 53, scope: !478)
!1188 = !DILocation(line: 44, column: 12, scope: !478)
!1189 = !DILocation(line: 44, column: 5, scope: !478)
!1190 = !DILocation(line: 47, column: 5, scope: !478)
!1191 = !DILocation(line: 48, column: 1, scope: !478)
!1192 = !DILocation(line: 59, column: 48, scope: !723)
!1193 = !DILocation(line: 59, column: 74, scope: !723)
!1194 = !DILocation(line: 61, column: 11, scope: !723)
!1195 = !DILocation(line: 62, column: 12, scope: !723)
!1196 = !DILocation(line: 62, column: 5, scope: !723)
!1197 = !DILocation(line: 67, column: 9, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !723, file: !4, line: 62, column: 19)
!1199 = !DILocation(line: 70, column: 9, scope: !1198)
!1200 = !DILocation(line: 72, column: 12, scope: !723)
!1201 = !DILocation(line: 72, column: 5, scope: !723)
!1202 = !DILocation(line: 77, column: 9, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !723, file: !4, line: 72, column: 19)
!1204 = !DILocation(line: 80, column: 9, scope: !1203)
!1205 = !DILocation(line: 82, column: 1, scope: !723)
!1206 = !DILocation(line: 51, column: 42, scope: !732)
!1207 = !DILocation(line: 53, column: 9, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !732, file: !4, line: 53, column: 9)
!1209 = !DILocation(line: 53, column: 15, scope: !1208)
!1210 = !DILocation(line: 53, column: 9, scope: !732)
!1211 = !DILocation(line: 54, column: 9, scope: !1208)
!1212 = !{i32 154984}
!1213 = !DILocation(line: 55, column: 1, scope: !732)
!1214 = !DILocation(line: 44, column: 42, scope: !737)
!1215 = !DILocation(line: 46, column: 9, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !737, file: !4, line: 46, column: 9)
!1217 = !DILocation(line: 46, column: 15, scope: !1216)
!1218 = !DILocation(line: 46, column: 9, scope: !737)
!1219 = !DILocation(line: 47, column: 9, scope: !1216)
!1220 = !{i32 154824}
!1221 = !DILocation(line: 48, column: 1, scope: !737)
!1222 = !DILocation(line: 1313, column: 5, scope: !905)
!1223 = !DILocation(line: 1313, column: 25, scope: !905)
!1224 = !DILocation(line: 1313, column: 68, scope: !911)
!1225 = !DILocation(line: 1313, column: 104, scope: !911)
!1226 = !DILocation(line: 1313, column: 142, scope: !911)
!1227 = !DILocation(line: 1313, column: 173, scope: !911)
!1228 = !DILocation(line: 1313, column: 181, scope: !911)
!1229 = !DILocation(line: 1313, column: 210, scope: !911)
!1230 = !DILocation(line: 1313, column: 227, scope: !911)
!1231 = !DILocation(line: 1313, column: 239, scope: !911)
!1232 = !DILocation(line: 1313, column: 247, scope: !911)
!1233 = !DILocation(line: 1313, column: 264, scope: !911)
!1234 = !DILocation(line: 1313, column: 324, scope: !911)
!1235 = !DILocation(line: 1313, column: 336, scope: !911)
!1236 = !DILocation(line: 1313, column: 298, scope: !911)
!1237 = !DILocation(line: 1313, column: 353, scope: !911)
!1238 = !DILocation(line: 1313, column: 346, scope: !911)
!1239 = !DILocation(line: 1313, column: 455, scope: !1240)
!1240 = !DILexicalBlockFile(scope: !1241, file: !479, discriminator: 4)
!1241 = !DILexicalBlockFile(scope: !1242, file: !479, discriminator: 3)
!1242 = !DILexicalBlockFile(scope: !1243, file: !479, discriminator: 2)
!1243 = distinct !DILexicalBlock(scope: !911, file: !479, line: 1313, column: 360)
!1244 = !DILocation(line: 1313, column: 506, scope: !1243)
!1245 = !DILocation(line: 1313, column: 522, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !1243, file: !479, discriminator: 1)
!1247 = !DILocation(line: 1313, column: 541, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !1249, file: !479, discriminator: 6)
!1249 = !DILexicalBlockFile(scope: !911, file: !479, discriminator: 5)
!1250 = !DILocation(line: 1313, column: 540, scope: !911)
!1251 = !DILocation(line: 1313, column: 538, scope: !911)
!1252 = !DILocation(line: 1313, column: 563, scope: !911)
!1253 = !DILocation(line: 1313, column: 556, scope: !911)
!1254 = !DILocation(line: 1313, column: 665, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1256, file: !479, discriminator: 10)
!1256 = !DILexicalBlockFile(scope: !1257, file: !479, discriminator: 9)
!1257 = !DILexicalBlockFile(scope: !1258, file: !479, discriminator: 8)
!1258 = distinct !DILexicalBlock(scope: !911, file: !479, line: 1313, column: 570)
!1259 = !DILocation(line: 1313, column: 716, scope: !1258)
!1260 = !DILocation(line: 1313, column: 732, scope: !1261)
!1261 = !DILexicalBlockFile(scope: !1258, file: !479, discriminator: 7)
!1262 = !DILocation(line: 1313, column: 743, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !1264, file: !479, discriminator: 12)
!1264 = !DILexicalBlockFile(scope: !911, file: !479, discriminator: 11)
!1265 = !DILocation(line: 1313, column: 739, scope: !1258)
!1266 = !DILocation(line: 1313, column: 751, scope: !905)
!1267 = !DILocation(line: 1313, column: 751, scope: !911)
!1268 = !DILocation(line: 1313, column: 35, scope: !905)
!1269 = !DILocation(line: 1313, column: 756, scope: !905)
!1270 = !DILocation(line: 1314, column: 5, scope: !905)
!1271 = !DILocation(line: 1314, column: 15, scope: !905)
!1272 = !DILocation(line: 1315, column: 5, scope: !905)
!1273 = !DILocation(line: 1315, column: 14, scope: !905)
!1274 = !DILocation(line: 1317, column: 9, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !905, file: !479, line: 1317, column: 9)
!1276 = !DILocation(line: 1317, column: 17, scope: !1275)
!1277 = !DILocation(line: 1317, column: 35, scope: !1275)
!1278 = !DILocation(line: 1317, column: 9, scope: !905)
!1279 = !DILocation(line: 1318, column: 9, scope: !1275)
!1280 = !DILocation(line: 1320, column: 33, scope: !905)
!1281 = !DILocation(line: 1320, column: 5, scope: !905)
!1282 = !DILocation(line: 1320, column: 13, scope: !905)
!1283 = !DILocation(line: 1320, column: 31, scope: !905)
!1284 = !DILocation(line: 1321, column: 34, scope: !905)
!1285 = !DILocation(line: 1321, column: 5, scope: !905)
!1286 = !DILocation(line: 1321, column: 13, scope: !905)
!1287 = !DILocation(line: 1321, column: 32, scope: !905)
!1288 = !{!1163, !1101, i64 64}
!1289 = !DILocation(line: 1322, column: 36, scope: !905)
!1290 = !DILocation(line: 1322, column: 5, scope: !905)
!1291 = !DILocation(line: 1322, column: 13, scope: !905)
!1292 = !DILocation(line: 1322, column: 34, scope: !905)
!1293 = !{!1163, !1101, i64 72}
!1294 = !DILocation(line: 1324, column: 9, scope: !922)
!1295 = !DILocation(line: 1324, column: 17, scope: !922)
!1296 = !DILocation(line: 1324, column: 9, scope: !905)
!1297 = !DILocation(line: 1325, column: 16, scope: !920)
!1298 = !{!1157, !1157, i64 0}
!1299 = !DILocation(line: 1325, column: 14, scope: !920)
!1300 = !DILocation(line: 1325, column: 21, scope: !1301)
!1301 = !DILexicalBlockFile(scope: !1302, file: !479, discriminator: 2)
!1302 = !DILexicalBlockFile(scope: !919, file: !479, discriminator: 1)
!1303 = !DILocation(line: 1325, column: 23, scope: !919)
!1304 = !DILocation(line: 1325, column: 9, scope: !920)
!1305 = !DILocation(line: 1326, column: 13, scope: !918)
!1306 = !DILocation(line: 1326, column: 23, scope: !918)
!1307 = !DILocation(line: 1326, column: 57, scope: !918)
!1308 = !DILocation(line: 1326, column: 49, scope: !918)
!1309 = !DILocation(line: 1326, column: 60, scope: !918)
!1310 = !DILocation(line: 1326, column: 30, scope: !918)
!1311 = !DILocation(line: 1327, column: 13, scope: !918)
!1312 = !DILocation(line: 1327, column: 17, scope: !918)
!1313 = !DILocation(line: 1328, column: 18, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !918, file: !479, line: 1328, column: 17)
!1315 = !DILocation(line: 1328, column: 17, scope: !918)
!1316 = !DILocation(line: 1329, column: 17, scope: !1314)
!1317 = !DILocation(line: 1330, column: 49, scope: !918)
!1318 = !DILocation(line: 1330, column: 41, scope: !918)
!1319 = !DILocation(line: 1330, column: 52, scope: !918)
!1320 = !{!1321, !1101, i64 0}
!1321 = !{!"", !1101, i64 0, !1322, i64 8}
!1322 = !{!"PyMethodDef", !1101, i64 0, !1101, i64 8, !1157, i64 16, !1101, i64 24}
!1323 = !DILocation(line: 1330, column: 58, scope: !918)
!1324 = !DILocation(line: 1330, column: 19, scope: !918)
!1325 = !DILocation(line: 1330, column: 17, scope: !918)
!1326 = !DILocation(line: 1331, column: 13, scope: !918)
!1327 = !DILocation(line: 1331, column: 18, scope: !1328)
!1328 = !DILexicalBlockFile(scope: !925, file: !479, discriminator: 1)
!1329 = !DILocation(line: 1331, column: 28, scope: !925)
!1330 = !DILocation(line: 1331, column: 58, scope: !925)
!1331 = !DILocation(line: 1331, column: 73, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !925, file: !479, line: 1331, column: 70)
!1333 = !DILocation(line: 1331, column: 90, scope: !1332)
!1334 = !DILocation(line: 1331, column: 70, scope: !1332)
!1335 = !{!1336, !1158, i64 0}
!1336 = !{!"_object", !1158, i64 0, !1101, i64 8}
!1337 = !DILocation(line: 1331, column: 100, scope: !1332)
!1338 = !DILocation(line: 1331, column: 70, scope: !925)
!1339 = !DILocation(line: 1331, column: 70, scope: !1340)
!1340 = !DILexicalBlockFile(scope: !925, file: !479, discriminator: 2)
!1341 = !DILocation(line: 1331, column: 131, scope: !1342)
!1342 = !DILexicalBlockFile(scope: !1332, file: !479, discriminator: 3)
!1343 = !DILocation(line: 1331, column: 149, scope: !1332)
!1344 = !{!1336, !1101, i64 8}
!1345 = !DILocation(line: 1331, column: 159, scope: !1332)
!1346 = !{!1347, !1101, i64 48}
!1347 = !{!"_typeobject", !1348, i64 0, !1101, i64 24, !1158, i64 32, !1158, i64 40, !1101, i64 48, !1101, i64 56, !1101, i64 64, !1101, i64 72, !1101, i64 80, !1101, i64 88, !1101, i64 96, !1101, i64 104, !1101, i64 112, !1101, i64 120, !1101, i64 128, !1101, i64 136, !1101, i64 144, !1101, i64 152, !1101, i64 160, !1158, i64 168, !1101, i64 176, !1101, i64 184, !1101, i64 192, !1101, i64 200, !1158, i64 208, !1101, i64 216, !1101, i64 224, !1101, i64 232, !1101, i64 240, !1101, i64 248, !1101, i64 256, !1101, i64 264, !1101, i64 272, !1101, i64 280, !1158, i64 288, !1101, i64 296, !1101, i64 304, !1101, i64 312, !1101, i64 320, !1101, i64 328, !1101, i64 336, !1101, i64 344, !1101, i64 352, !1101, i64 360, !1101, i64 368, !1101, i64 376, !1157, i64 384, !1101, i64 392}
!1348 = !{!"", !1336, i64 0, !1158, i64 16}
!1349 = !DILocation(line: 1331, column: 184, scope: !1332)
!1350 = !DILocation(line: 1331, column: 115, scope: !1332)
!1351 = !DILocation(line: 1331, column: 203, scope: !1352)
!1352 = !DILexicalBlockFile(scope: !918, file: !479, discriminator: 4)
!1353 = !DILocation(line: 1331, column: 203, scope: !925)
!1354 = !DILocation(line: 1331, column: 203, scope: !1355)
!1355 = !DILexicalBlockFile(scope: !925, file: !479, discriminator: 5)
!1356 = !DILocation(line: 1332, column: 17, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !918, file: !479, line: 1332, column: 17)
!1358 = !DILocation(line: 1332, column: 17, scope: !918)
!1359 = !DILocation(line: 1333, column: 17, scope: !1357)
!1360 = !DILocation(line: 1334, column: 9, scope: !919)
!1361 = !DILocation(line: 1334, column: 9, scope: !918)
!1362 = !DILocation(line: 1325, column: 169, scope: !919)
!1363 = !DILocation(line: 1325, column: 9, scope: !919)
!1364 = !DILocation(line: 1335, column: 5, scope: !921)
!1365 = !DILocation(line: 1337, column: 9, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !905, file: !479, line: 1337, column: 9)
!1367 = !DILocation(line: 1337, column: 17, scope: !1366)
!1368 = !DILocation(line: 1337, column: 35, scope: !1366)
!1369 = !DILocation(line: 1337, column: 49, scope: !1366)
!1370 = !DILocation(line: 1338, column: 9, scope: !1366)
!1371 = !DILocation(line: 1338, column: 17, scope: !1366)
!1372 = !DILocation(line: 1338, column: 36, scope: !1366)
!1373 = !DILocation(line: 1338, column: 50, scope: !1366)
!1374 = !DILocation(line: 1339, column: 9, scope: !1366)
!1375 = !DILocation(line: 1339, column: 17, scope: !1366)
!1376 = !DILocation(line: 1339, column: 38, scope: !1366)
!1377 = !DILocation(line: 1337, column: 9, scope: !905)
!1378 = !DILocation(line: 1340, column: 9, scope: !1366)
!1379 = !DILocation(line: 1342, column: 11, scope: !905)
!1380 = !DILocation(line: 1342, column: 9, scope: !905)
!1381 = !DILocation(line: 1343, column: 9, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !905, file: !479, line: 1343, column: 9)
!1383 = !DILocation(line: 1343, column: 13, scope: !1382)
!1384 = !DILocation(line: 1343, column: 9, scope: !905)
!1385 = !DILocation(line: 1344, column: 9, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1382, file: !479, line: 1343, column: 28)
!1387 = !DILocation(line: 1346, column: 5, scope: !905)
!1388 = !DILocation(line: 1346, column: 10, scope: !1389)
!1389 = !DILexicalBlockFile(scope: !927, file: !479, discriminator: 1)
!1390 = !DILocation(line: 1346, column: 20, scope: !927)
!1391 = !DILocation(line: 1346, column: 50, scope: !927)
!1392 = !DILocation(line: 1346, column: 64, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !927, file: !479, line: 1346, column: 61)
!1394 = !DILocation(line: 1346, column: 81, scope: !1393)
!1395 = !DILocation(line: 1346, column: 61, scope: !1393)
!1396 = !DILocation(line: 1346, column: 91, scope: !1393)
!1397 = !DILocation(line: 1346, column: 61, scope: !927)
!1398 = !DILocation(line: 1346, column: 61, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !927, file: !479, discriminator: 2)
!1400 = !DILocation(line: 1346, column: 122, scope: !1401)
!1401 = !DILexicalBlockFile(scope: !1393, file: !479, discriminator: 3)
!1402 = !DILocation(line: 1346, column: 140, scope: !1393)
!1403 = !DILocation(line: 1346, column: 150, scope: !1393)
!1404 = !DILocation(line: 1346, column: 175, scope: !1393)
!1405 = !DILocation(line: 1346, column: 106, scope: !1393)
!1406 = !DILocation(line: 1346, column: 194, scope: !1407)
!1407 = !DILexicalBlockFile(scope: !905, file: !479, discriminator: 4)
!1408 = !DILocation(line: 1346, column: 194, scope: !927)
!1409 = !DILocation(line: 1346, column: 194, scope: !1410)
!1410 = !DILexicalBlockFile(scope: !927, file: !479, discriminator: 5)
!1411 = !DILocation(line: 1347, column: 5, scope: !905)
!1412 = !DILocation(line: 1347, column: 13, scope: !905)
!1413 = !DILocation(line: 1347, column: 32, scope: !905)
!1414 = !{!1163, !1157, i64 80}
!1415 = !DILocation(line: 1348, column: 5, scope: !905)
!1416 = !DILocation(line: 1349, column: 1, scope: !905)
!1417 = !DILocation(line: 100, column: 39, scope: !496)
!1418 = !DILocation(line: 102, column: 5, scope: !496)
!1419 = !DILocation(line: 102, column: 25, scope: !496)
!1420 = !DILocation(line: 103, column: 5, scope: !496)
!1421 = !DILocation(line: 103, column: 15, scope: !496)
!1422 = !DILocation(line: 103, column: 24, scope: !496)
!1423 = !DILocation(line: 103, column: 44, scope: !496)
!1424 = !DILocation(line: 104, column: 5, scope: !496)
!1425 = !DILocation(line: 104, column: 16, scope: !496)
!1426 = !DILocation(line: 104, column: 19, scope: !496)
!1427 = !DILocation(line: 106, column: 9, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !496, file: !479, line: 106, column: 9)
!1429 = !DILocation(line: 106, column: 18, scope: !1428)
!1430 = !DILocation(line: 106, column: 9, scope: !496)
!1431 = !DILocation(line: 107, column: 9, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1428, file: !479, line: 106, column: 33)
!1433 = !DILocation(line: 108, column: 9, scope: !1432)
!1434 = !DILocation(line: 111, column: 48, scope: !508)
!1435 = !DILocation(line: 111, column: 84, scope: !508)
!1436 = !DILocation(line: 111, column: 122, scope: !508)
!1437 = !DILocation(line: 111, column: 153, scope: !508)
!1438 = !DILocation(line: 111, column: 161, scope: !508)
!1439 = !DILocation(line: 111, column: 190, scope: !508)
!1440 = !DILocation(line: 111, column: 207, scope: !508)
!1441 = !DILocation(line: 111, column: 219, scope: !508)
!1442 = !DILocation(line: 111, column: 227, scope: !508)
!1443 = !DILocation(line: 111, column: 244, scope: !508)
!1444 = !DILocation(line: 111, column: 304, scope: !508)
!1445 = !DILocation(line: 111, column: 316, scope: !508)
!1446 = !DILocation(line: 111, column: 278, scope: !508)
!1447 = !DILocation(line: 111, column: 333, scope: !508)
!1448 = !DILocation(line: 111, column: 326, scope: !508)
!1449 = !DILocation(line: 111, column: 435, scope: !1450)
!1450 = !DILexicalBlockFile(scope: !1451, file: !479, discriminator: 4)
!1451 = !DILexicalBlockFile(scope: !1452, file: !479, discriminator: 3)
!1452 = !DILexicalBlockFile(scope: !1453, file: !479, discriminator: 2)
!1453 = distinct !DILexicalBlock(scope: !508, file: !479, line: 111, column: 340)
!1454 = !DILocation(line: 111, column: 486, scope: !1453)
!1455 = !DILocation(line: 111, column: 502, scope: !1456)
!1456 = !DILexicalBlockFile(scope: !1453, file: !479, discriminator: 1)
!1457 = !DILocation(line: 111, column: 521, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !1459, file: !479, discriminator: 6)
!1459 = !DILexicalBlockFile(scope: !508, file: !479, discriminator: 5)
!1460 = !DILocation(line: 111, column: 520, scope: !508)
!1461 = !DILocation(line: 111, column: 518, scope: !508)
!1462 = !DILocation(line: 111, column: 543, scope: !508)
!1463 = !DILocation(line: 111, column: 536, scope: !508)
!1464 = !DILocation(line: 111, column: 645, scope: !1465)
!1465 = !DILexicalBlockFile(scope: !1466, file: !479, discriminator: 10)
!1466 = !DILexicalBlockFile(scope: !1467, file: !479, discriminator: 9)
!1467 = !DILexicalBlockFile(scope: !1468, file: !479, discriminator: 8)
!1468 = distinct !DILexicalBlock(scope: !508, file: !479, line: 111, column: 550)
!1469 = !DILocation(line: 111, column: 696, scope: !1468)
!1470 = !DILocation(line: 111, column: 712, scope: !1471)
!1471 = !DILexicalBlockFile(scope: !1468, file: !479, discriminator: 7)
!1472 = !DILocation(line: 111, column: 723, scope: !1473)
!1473 = !DILexicalBlockFile(scope: !1474, file: !479, discriminator: 12)
!1474 = !DILexicalBlockFile(scope: !508, file: !479, discriminator: 11)
!1475 = !DILocation(line: 111, column: 719, scope: !1468)
!1476 = !DILocation(line: 111, column: 731, scope: !496)
!1477 = !DILocation(line: 111, column: 731, scope: !508)
!1478 = !DILocation(line: 111, column: 15, scope: !496)
!1479 = !DILocation(line: 111, column: 736, scope: !496)
!1480 = !DILocation(line: 111, column: 12, scope: !496)
!1481 = !DILocation(line: 112, column: 9, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !496, file: !479, line: 112, column: 9)
!1483 = !DILocation(line: 112, column: 17, scope: !1482)
!1484 = !DILocation(line: 112, column: 35, scope: !1482)
!1485 = !DILocation(line: 112, column: 49, scope: !1482)
!1486 = !DILocation(line: 112, column: 52, scope: !1487)
!1487 = !DILexicalBlockFile(scope: !1482, file: !479, discriminator: 1)
!1488 = !DILocation(line: 112, column: 9, scope: !496)
!1489 = !DILocation(line: 113, column: 9, scope: !1482)
!1490 = !DILocation(line: 118, column: 25, scope: !496)
!1491 = !DILocation(line: 118, column: 9, scope: !496)
!1492 = !DILocation(line: 118, column: 7, scope: !496)
!1493 = !DILocation(line: 119, column: 9, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !496, file: !479, line: 119, column: 9)
!1495 = !DILocation(line: 119, column: 11, scope: !1494)
!1496 = !DILocation(line: 119, column: 9, scope: !496)
!1497 = !DILocation(line: 120, column: 9, scope: !1494)
!1498 = !DILocation(line: 121, column: 5, scope: !496)
!1499 = !DILocation(line: 124, column: 29, scope: !496)
!1500 = !DILocation(line: 124, column: 37, scope: !496)
!1501 = !DILocation(line: 124, column: 57, scope: !496)
!1502 = !DILocation(line: 124, column: 14, scope: !496)
!1503 = !DILocation(line: 124, column: 12, scope: !496)
!1504 = !DILocation(line: 125, column: 9, scope: !515)
!1505 = !DILocation(line: 125, column: 16, scope: !515)
!1506 = !DILocation(line: 125, column: 9, scope: !496)
!1507 = !DILocation(line: 126, column: 25, scope: !514)
!1508 = !DILocation(line: 126, column: 35, scope: !514)
!1509 = !DILocation(line: 126, column: 44, scope: !514)
!1510 = !DILocation(line: 127, column: 9, scope: !514)
!1511 = !DILocation(line: 127, column: 14, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !513, file: !479, discriminator: 1)
!1513 = !DILocation(line: 127, column: 24, scope: !513)
!1514 = !DILocation(line: 127, column: 54, scope: !513)
!1515 = !DILocation(line: 127, column: 66, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !513, file: !479, line: 127, column: 63)
!1517 = !DILocation(line: 127, column: 83, scope: !1516)
!1518 = !DILocation(line: 127, column: 63, scope: !1516)
!1519 = !DILocation(line: 127, column: 93, scope: !1516)
!1520 = !DILocation(line: 127, column: 63, scope: !513)
!1521 = !DILocation(line: 127, column: 63, scope: !1522)
!1522 = !DILexicalBlockFile(scope: !513, file: !479, discriminator: 2)
!1523 = !DILocation(line: 127, column: 124, scope: !1524)
!1524 = !DILexicalBlockFile(scope: !1516, file: !479, discriminator: 3)
!1525 = !DILocation(line: 127, column: 142, scope: !1516)
!1526 = !DILocation(line: 127, column: 152, scope: !1516)
!1527 = !DILocation(line: 127, column: 177, scope: !1516)
!1528 = !DILocation(line: 127, column: 108, scope: !1516)
!1529 = !DILocation(line: 127, column: 196, scope: !1530)
!1530 = !DILexicalBlockFile(scope: !514, file: !479, discriminator: 4)
!1531 = !DILocation(line: 127, column: 196, scope: !513)
!1532 = !DILocation(line: 127, column: 196, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !513, file: !479, discriminator: 5)
!1534 = !DILocation(line: 128, column: 16, scope: !514)
!1535 = !DILocation(line: 128, column: 9, scope: !514)
!1536 = !DILocation(line: 132, column: 12, scope: !496)
!1537 = !DILocation(line: 132, column: 10, scope: !496)
!1538 = !DILocation(line: 133, column: 9, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !496, file: !479, line: 133, column: 9)
!1540 = !DILocation(line: 133, column: 14, scope: !1539)
!1541 = !DILocation(line: 133, column: 9, scope: !496)
!1542 = !DILocation(line: 134, column: 9, scope: !1539)
!1543 = !DILocation(line: 135, column: 46, scope: !496)
!1544 = !DILocation(line: 135, column: 25, scope: !496)
!1545 = !DILocation(line: 135, column: 7, scope: !496)
!1546 = !DILocation(line: 135, column: 33, scope: !496)
!1547 = !DILocation(line: 135, column: 6, scope: !496)
!1548 = !DILocation(line: 135, column: 44, scope: !496)
!1549 = !DILocation(line: 137, column: 23, scope: !496)
!1550 = !DILocation(line: 137, column: 31, scope: !496)
!1551 = !DILocation(line: 137, column: 11, scope: !496)
!1552 = !DILocation(line: 137, column: 9, scope: !496)
!1553 = !{!1158, !1158, i64 0}
!1554 = !DILocation(line: 138, column: 9, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !496, file: !479, line: 138, column: 9)
!1556 = !DILocation(line: 138, column: 13, scope: !1555)
!1557 = !DILocation(line: 138, column: 9, scope: !496)
!1558 = !DILocation(line: 139, column: 9, scope: !1555)
!1559 = !DILocation(line: 140, column: 9, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !496, file: !479, line: 140, column: 9)
!1561 = !DILocation(line: 140, column: 13, scope: !1560)
!1562 = !DILocation(line: 140, column: 9, scope: !496)
!1563 = !DILocation(line: 141, column: 25, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1560, file: !479, line: 140, column: 19)
!1565 = !DILocation(line: 141, column: 9, scope: !1564)
!1566 = !DILocation(line: 144, column: 9, scope: !1564)
!1567 = !DILocation(line: 147, column: 12, scope: !519)
!1568 = !DILocation(line: 147, column: 10, scope: !519)
!1569 = !DILocation(line: 147, column: 17, scope: !1570)
!1570 = !DILexicalBlockFile(scope: !1571, file: !479, discriminator: 2)
!1571 = !DILexicalBlockFile(scope: !518, file: !479, discriminator: 1)
!1572 = !DILocation(line: 147, column: 21, scope: !518)
!1573 = !DILocation(line: 147, column: 19, scope: !518)
!1574 = !DILocation(line: 147, column: 5, scope: !519)
!1575 = !DILocation(line: 148, column: 9, scope: !517)
!1576 = !DILocation(line: 148, column: 19, scope: !517)
!1577 = !DILocation(line: 150, column: 31, scope: !517)
!1578 = !DILocation(line: 150, column: 39, scope: !517)
!1579 = !DILocation(line: 150, column: 58, scope: !517)
!1580 = !DILocation(line: 150, column: 16, scope: !517)
!1581 = !DILocation(line: 150, column: 14, scope: !517)
!1582 = !DILocation(line: 151, column: 13, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !517, file: !479, line: 151, column: 13)
!1584 = !DILocation(line: 151, column: 18, scope: !1583)
!1585 = !DILocation(line: 151, column: 13, scope: !517)
!1586 = !DILocation(line: 152, column: 13, scope: !1583)
!1587 = !DILocation(line: 153, column: 48, scope: !517)
!1588 = !DILocation(line: 153, column: 54, scope: !517)
!1589 = !DILocation(line: 153, column: 18, scope: !517)
!1590 = !DILocation(line: 153, column: 16, scope: !517)
!1591 = !DILocation(line: 154, column: 13, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !517, file: !479, line: 154, column: 13)
!1593 = !DILocation(line: 154, column: 20, scope: !1592)
!1594 = !DILocation(line: 154, column: 13, scope: !517)
!1595 = !DILocation(line: 155, column: 13, scope: !1592)
!1596 = !DILocation(line: 156, column: 13, scope: !523)
!1597 = !DILocation(line: 156, column: 20, scope: !523)
!1598 = !DILocation(line: 156, column: 13, scope: !517)
!1599 = !DILocation(line: 157, column: 13, scope: !522)
!1600 = !DILocation(line: 157, column: 18, scope: !1601)
!1601 = !DILexicalBlockFile(scope: !521, file: !479, discriminator: 1)
!1602 = !DILocation(line: 157, column: 28, scope: !521)
!1603 = !DILocation(line: 157, column: 58, scope: !521)
!1604 = !DILocation(line: 157, column: 75, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !521, file: !479, line: 157, column: 72)
!1606 = !DILocation(line: 157, column: 92, scope: !1605)
!1607 = !DILocation(line: 157, column: 72, scope: !1605)
!1608 = !DILocation(line: 157, column: 102, scope: !1605)
!1609 = !DILocation(line: 157, column: 72, scope: !521)
!1610 = !DILocation(line: 157, column: 72, scope: !1611)
!1611 = !DILexicalBlockFile(scope: !521, file: !479, discriminator: 2)
!1612 = !DILocation(line: 157, column: 133, scope: !1613)
!1613 = !DILexicalBlockFile(scope: !1605, file: !479, discriminator: 3)
!1614 = !DILocation(line: 157, column: 151, scope: !1605)
!1615 = !DILocation(line: 157, column: 161, scope: !1605)
!1616 = !DILocation(line: 157, column: 186, scope: !1605)
!1617 = !DILocation(line: 157, column: 117, scope: !1605)
!1618 = !DILocation(line: 157, column: 205, scope: !1619)
!1619 = !DILexicalBlockFile(scope: !522, file: !479, discriminator: 4)
!1620 = !DILocation(line: 157, column: 205, scope: !521)
!1621 = !DILocation(line: 157, column: 205, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !521, file: !479, discriminator: 5)
!1623 = !DILocation(line: 158, column: 13, scope: !522)
!1624 = !DILocation(line: 160, column: 31, scope: !527)
!1625 = !DILocation(line: 160, column: 41, scope: !527)
!1626 = !DILocation(line: 160, column: 52, scope: !527)
!1627 = !{!1347, !1158, i64 168}
!1628 = !DILocation(line: 160, column: 61, scope: !527)
!1629 = !DILocation(line: 160, column: 78, scope: !527)
!1630 = !DILocation(line: 160, column: 84, scope: !527)
!1631 = !DILocation(line: 160, column: 104, scope: !1632)
!1632 = !DILexicalBlockFile(scope: !527, file: !479, discriminator: 1)
!1633 = !DILocation(line: 160, column: 89, scope: !527)
!1634 = !DILocation(line: 160, column: 114, scope: !527)
!1635 = !{!1348, !1158, i64 16}
!1636 = !DILocation(line: 160, column: 123, scope: !527)
!1637 = !DILocation(line: 160, column: 13, scope: !517)
!1638 = !DILocation(line: 161, column: 29, scope: !526)
!1639 = !DILocation(line: 161, column: 13, scope: !526)
!1640 = !DILocation(line: 163, column: 13, scope: !526)
!1641 = !DILocation(line: 163, column: 18, scope: !1642)
!1642 = !DILexicalBlockFile(scope: !525, file: !479, discriminator: 1)
!1643 = !DILocation(line: 163, column: 28, scope: !525)
!1644 = !DILocation(line: 163, column: 58, scope: !525)
!1645 = !DILocation(line: 163, column: 75, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !525, file: !479, line: 163, column: 72)
!1647 = !DILocation(line: 163, column: 92, scope: !1646)
!1648 = !DILocation(line: 163, column: 72, scope: !1646)
!1649 = !DILocation(line: 163, column: 102, scope: !1646)
!1650 = !DILocation(line: 163, column: 72, scope: !525)
!1651 = !DILocation(line: 163, column: 72, scope: !1652)
!1652 = !DILexicalBlockFile(scope: !525, file: !479, discriminator: 2)
!1653 = !DILocation(line: 163, column: 133, scope: !1654)
!1654 = !DILexicalBlockFile(scope: !1646, file: !479, discriminator: 3)
!1655 = !DILocation(line: 163, column: 151, scope: !1646)
!1656 = !DILocation(line: 163, column: 161, scope: !1646)
!1657 = !DILocation(line: 163, column: 186, scope: !1646)
!1658 = !DILocation(line: 163, column: 117, scope: !1646)
!1659 = !DILocation(line: 163, column: 205, scope: !1660)
!1660 = !DILexicalBlockFile(scope: !526, file: !479, discriminator: 4)
!1661 = !DILocation(line: 163, column: 205, scope: !525)
!1662 = !DILocation(line: 163, column: 205, scope: !1663)
!1663 = !DILexicalBlockFile(scope: !525, file: !479, discriminator: 5)
!1664 = !DILocation(line: 164, column: 13, scope: !526)
!1665 = !DILocation(line: 166, column: 9, scope: !517)
!1666 = !DILocation(line: 167, column: 5, scope: !518)
!1667 = !DILocation(line: 147, column: 27, scope: !518)
!1668 = !DILocation(line: 147, column: 5, scope: !518)
!1669 = !DILocation(line: 168, column: 9, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !496, file: !479, line: 168, column: 9)
!1671 = !DILocation(line: 168, column: 14, scope: !1670)
!1672 = !DILocation(line: 168, column: 11, scope: !1670)
!1673 = !DILocation(line: 168, column: 9, scope: !496)
!1674 = !DILocation(line: 170, column: 22, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1670, file: !479, line: 168, column: 19)
!1676 = !DILocation(line: 171, column: 46, scope: !1675)
!1677 = !DILocation(line: 170, column: 9, scope: !1675)
!1678 = !DILocation(line: 172, column: 9, scope: !1675)
!1679 = !DILocation(line: 176, column: 24, scope: !531)
!1680 = !DILocation(line: 176, column: 32, scope: !531)
!1681 = !DILocation(line: 176, column: 52, scope: !531)
!1682 = !DILocation(line: 176, column: 55, scope: !531)
!1683 = !DILocation(line: 176, column: 9, scope: !531)
!1684 = !DILocation(line: 176, column: 63, scope: !531)
!1685 = !DILocation(line: 176, column: 9, scope: !496)
!1686 = !DILocation(line: 177, column: 9, scope: !530)
!1687 = !DILocation(line: 177, column: 14, scope: !1688)
!1688 = !DILexicalBlockFile(scope: !529, file: !479, discriminator: 1)
!1689 = !DILocation(line: 177, column: 24, scope: !529)
!1690 = !DILocation(line: 177, column: 54, scope: !529)
!1691 = !DILocation(line: 177, column: 71, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !529, file: !479, line: 177, column: 68)
!1693 = !DILocation(line: 177, column: 88, scope: !1692)
!1694 = !DILocation(line: 177, column: 68, scope: !1692)
!1695 = !DILocation(line: 177, column: 98, scope: !1692)
!1696 = !DILocation(line: 177, column: 68, scope: !529)
!1697 = !DILocation(line: 177, column: 68, scope: !1698)
!1698 = !DILexicalBlockFile(scope: !529, file: !479, discriminator: 2)
!1699 = !DILocation(line: 177, column: 129, scope: !1700)
!1700 = !DILexicalBlockFile(scope: !1692, file: !479, discriminator: 3)
!1701 = !DILocation(line: 177, column: 147, scope: !1692)
!1702 = !DILocation(line: 177, column: 157, scope: !1692)
!1703 = !DILocation(line: 177, column: 182, scope: !1692)
!1704 = !DILocation(line: 177, column: 113, scope: !1692)
!1705 = !DILocation(line: 177, column: 201, scope: !1706)
!1706 = !DILexicalBlockFile(scope: !530, file: !479, discriminator: 4)
!1707 = !DILocation(line: 177, column: 201, scope: !529)
!1708 = !DILocation(line: 177, column: 201, scope: !1709)
!1709 = !DILexicalBlockFile(scope: !529, file: !479, discriminator: 5)
!1710 = !DILocation(line: 178, column: 9, scope: !530)
!1711 = !DILocation(line: 180, column: 5, scope: !496)
!1712 = !DILocation(line: 180, column: 10, scope: !1713)
!1713 = !DILexicalBlockFile(scope: !533, file: !479, discriminator: 1)
!1714 = !DILocation(line: 180, column: 20, scope: !533)
!1715 = !DILocation(line: 180, column: 50, scope: !533)
!1716 = !DILocation(line: 180, column: 65, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !533, file: !479, line: 180, column: 62)
!1718 = !DILocation(line: 180, column: 82, scope: !1717)
!1719 = !DILocation(line: 180, column: 62, scope: !1717)
!1720 = !DILocation(line: 180, column: 92, scope: !1717)
!1721 = !DILocation(line: 180, column: 62, scope: !533)
!1722 = !DILocation(line: 180, column: 62, scope: !1723)
!1723 = !DILexicalBlockFile(scope: !533, file: !479, discriminator: 2)
!1724 = !DILocation(line: 180, column: 123, scope: !1725)
!1725 = !DILexicalBlockFile(scope: !1717, file: !479, discriminator: 3)
!1726 = !DILocation(line: 180, column: 141, scope: !1717)
!1727 = !DILocation(line: 180, column: 151, scope: !1717)
!1728 = !DILocation(line: 180, column: 176, scope: !1717)
!1729 = !DILocation(line: 180, column: 107, scope: !1717)
!1730 = !DILocation(line: 180, column: 195, scope: !1731)
!1731 = !DILexicalBlockFile(scope: !496, file: !479, discriminator: 4)
!1732 = !DILocation(line: 180, column: 195, scope: !533)
!1733 = !DILocation(line: 180, column: 195, scope: !1734)
!1734 = !DILexicalBlockFile(scope: !533, file: !479, discriminator: 5)
!1735 = !DILocation(line: 181, column: 12, scope: !496)
!1736 = !DILocation(line: 181, column: 5, scope: !496)
!1737 = !DILocation(line: 184, column: 5, scope: !496)
!1738 = !DILocation(line: 184, column: 10, scope: !1739)
!1739 = !DILexicalBlockFile(scope: !535, file: !479, discriminator: 1)
!1740 = !DILocation(line: 184, column: 20, scope: !535)
!1741 = !DILocation(line: 184, column: 51, scope: !535)
!1742 = !DILocation(line: 184, column: 62, scope: !538)
!1743 = !DILocation(line: 184, column: 78, scope: !538)
!1744 = !DILocation(line: 184, column: 62, scope: !535)
!1745 = !DILocation(line: 184, column: 93, scope: !1746)
!1746 = !DILexicalBlockFile(scope: !538, file: !479, discriminator: 2)
!1747 = !DILocation(line: 184, column: 98, scope: !1748)
!1748 = !DILexicalBlockFile(scope: !537, file: !479, discriminator: 4)
!1749 = !DILocation(line: 184, column: 108, scope: !537)
!1750 = !DILocation(line: 184, column: 138, scope: !537)
!1751 = !DILocation(line: 184, column: 164, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !537, file: !479, line: 184, column: 161)
!1753 = !DILocation(line: 184, column: 181, scope: !1752)
!1754 = !DILocation(line: 184, column: 161, scope: !1752)
!1755 = !DILocation(line: 184, column: 191, scope: !1752)
!1756 = !DILocation(line: 184, column: 161, scope: !537)
!1757 = !DILocation(line: 184, column: 161, scope: !1758)
!1758 = !DILexicalBlockFile(scope: !537, file: !479, discriminator: 5)
!1759 = !DILocation(line: 184, column: 222, scope: !1760)
!1760 = !DILexicalBlockFile(scope: !1752, file: !479, discriminator: 6)
!1761 = !DILocation(line: 184, column: 240, scope: !1752)
!1762 = !DILocation(line: 184, column: 250, scope: !1752)
!1763 = !DILocation(line: 184, column: 275, scope: !1752)
!1764 = !DILocation(line: 184, column: 206, scope: !1752)
!1765 = !DILocation(line: 184, column: 294, scope: !1766)
!1766 = !DILexicalBlockFile(scope: !538, file: !479, discriminator: 7)
!1767 = !DILocation(line: 184, column: 294, scope: !537)
!1768 = !DILocation(line: 184, column: 294, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !537, file: !479, discriminator: 8)
!1770 = !DILocation(line: 184, column: 294, scope: !1771)
!1771 = !DILexicalBlockFile(scope: !537, file: !479, discriminator: 9)
!1772 = !DILocation(line: 184, column: 307, scope: !1773)
!1773 = !DILexicalBlockFile(scope: !1774, file: !479, discriminator: 10)
!1774 = !DILexicalBlockFile(scope: !496, file: !479, discriminator: 3)
!1775 = !DILocation(line: 184, column: 307, scope: !535)
!1776 = !DILocation(line: 184, column: 307, scope: !1777)
!1777 = !DILexicalBlockFile(scope: !535, file: !479, discriminator: 11)
!1778 = !DILocation(line: 185, column: 5, scope: !496)
!1779 = !DILocation(line: 186, column: 1, scope: !496)
!1780 = !DILocation(line: 54, column: 39, scope: !740)
!1781 = !DILocation(line: 56, column: 5, scope: !740)
!1782 = !DILocation(line: 56, column: 12, scope: !740)
!1783 = !DILocation(line: 57, column: 5, scope: !740)
!1784 = !DILocation(line: 57, column: 12, scope: !740)
!1785 = !DILocation(line: 57, column: 25, scope: !740)
!1786 = !DILocation(line: 57, column: 18, scope: !740)
!1787 = !DILocation(line: 58, column: 5, scope: !740)
!1788 = !DILocation(line: 58, column: 11, scope: !740)
!1789 = !DILocation(line: 59, column: 5, scope: !740)
!1790 = !DILocation(line: 59, column: 15, scope: !740)
!1791 = !DILocation(line: 61, column: 9, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !740, file: !479, line: 61, column: 9)
!1793 = !DILocation(line: 61, column: 13, scope: !1792)
!1794 = !DILocation(line: 61, column: 9, scope: !740)
!1795 = !DILocation(line: 62, column: 25, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1792, file: !479, line: 61, column: 48)
!1797 = !DILocation(line: 62, column: 9, scope: !1796)
!1798 = !DILocation(line: 63, column: 9, scope: !1796)
!1799 = !DILocation(line: 66, column: 22, scope: !740)
!1800 = !DILocation(line: 66, column: 26, scope: !740)
!1801 = !DILocation(line: 66, column: 9, scope: !740)
!1802 = !DILocation(line: 66, column: 7, scope: !740)
!1803 = !DILocation(line: 67, column: 9, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !740, file: !479, line: 67, column: 9)
!1805 = !DILocation(line: 67, column: 11, scope: !1804)
!1806 = !DILocation(line: 67, column: 9, scope: !740)
!1807 = !DILocation(line: 68, column: 16, scope: !1804)
!1808 = !DILocation(line: 68, column: 9, scope: !1804)
!1809 = !DILocation(line: 69, column: 12, scope: !750)
!1810 = !DILocation(line: 69, column: 10, scope: !750)
!1811 = !DILocation(line: 69, column: 17, scope: !1812)
!1812 = !DILexicalBlockFile(scope: !1813, file: !479, discriminator: 2)
!1813 = !DILexicalBlockFile(scope: !749, file: !479, discriminator: 1)
!1814 = !DILocation(line: 69, column: 21, scope: !749)
!1815 = !DILocation(line: 69, column: 19, scope: !749)
!1816 = !DILocation(line: 69, column: 5, scope: !750)
!1817 = !DILocation(line: 70, column: 9, scope: !748)
!1818 = !DILocation(line: 70, column: 14, scope: !748)
!1819 = !DILocation(line: 70, column: 26, scope: !748)
!1820 = !DILocation(line: 70, column: 19, scope: !748)
!1821 = !DILocation(line: 71, column: 13, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !748, file: !479, line: 71, column: 13)
!1823 = !DILocation(line: 71, column: 16, scope: !1822)
!1824 = !DILocation(line: 71, column: 13, scope: !748)
!1825 = !DILocation(line: 72, column: 16, scope: !1822)
!1826 = !DILocation(line: 72, column: 13, scope: !1822)
!1827 = !DILocation(line: 74, column: 73, scope: !1822)
!1828 = !DILocation(line: 74, column: 72, scope: !1822)
!1829 = !DILocation(line: 74, column: 77, scope: !1822)
!1830 = !DILocation(line: 74, column: 56, scope: !1822)
!1831 = !DILocation(line: 74, column: 54, scope: !1822)
!1832 = !DILocation(line: 74, column: 87, scope: !1822)
!1833 = !DILocation(line: 74, column: 38, scope: !1822)
!1834 = !DILocation(line: 74, column: 19, scope: !1822)
!1835 = !DILocation(line: 74, column: 16, scope: !1822)
!1836 = !DILocation(line: 75, column: 16, scope: !748)
!1837 = !DILocation(line: 75, column: 11, scope: !748)
!1838 = !DILocation(line: 75, column: 9, scope: !748)
!1839 = !DILocation(line: 75, column: 14, scope: !748)
!1840 = !DILocation(line: 76, column: 5, scope: !749)
!1841 = !DILocation(line: 76, column: 5, scope: !748)
!1842 = !DILocation(line: 69, column: 27, scope: !749)
!1843 = !DILocation(line: 69, column: 5, scope: !749)
!1844 = !DILocation(line: 77, column: 7, scope: !740)
!1845 = !DILocation(line: 77, column: 5, scope: !740)
!1846 = !DILocation(line: 77, column: 10, scope: !740)
!1847 = !DILocation(line: 78, column: 30, scope: !740)
!1848 = !DILocation(line: 78, column: 9, scope: !740)
!1849 = !DILocation(line: 78, column: 7, scope: !740)
!1850 = !DILocation(line: 79, column: 9, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !740, file: !479, line: 79, column: 9)
!1852 = !DILocation(line: 79, column: 11, scope: !1851)
!1853 = !DILocation(line: 79, column: 9, scope: !740)
!1854 = !DILocation(line: 80, column: 9, scope: !1851)
!1855 = !DILocation(line: 81, column: 16, scope: !740)
!1856 = !DILocation(line: 81, column: 5, scope: !740)
!1857 = !DILocation(line: 82, column: 12, scope: !740)
!1858 = !DILocation(line: 82, column: 5, scope: !740)
!1859 = !DILocation(line: 83, column: 1, scope: !740)
!1860 = !DILocation(line: 190, column: 39, scope: !539)
!1861 = !DILocation(line: 192, column: 5, scope: !539)
!1862 = !DILocation(line: 192, column: 15, scope: !539)
!1863 = !DILocation(line: 194, column: 30, scope: !539)
!1864 = !DILocation(line: 194, column: 14, scope: !539)
!1865 = !DILocation(line: 194, column: 12, scope: !539)
!1866 = !DILocation(line: 195, column: 10, scope: !548)
!1867 = !DILocation(line: 195, column: 9, scope: !539)
!1868 = !DILocation(line: 196, column: 9, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !548, file: !479, line: 195, column: 18)
!1870 = !DILocation(line: 197, column: 9, scope: !1869)
!1871 = !DILocation(line: 200, column: 9, scope: !547)
!1872 = !DILocation(line: 200, column: 14, scope: !1873)
!1873 = !DILexicalBlockFile(scope: !546, file: !479, discriminator: 1)
!1874 = !DILocation(line: 200, column: 24, scope: !546)
!1875 = !DILocation(line: 200, column: 54, scope: !546)
!1876 = !DILocation(line: 200, column: 71, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !546, file: !479, line: 200, column: 68)
!1878 = !DILocation(line: 200, column: 88, scope: !1877)
!1879 = !DILocation(line: 200, column: 68, scope: !1877)
!1880 = !DILocation(line: 200, column: 98, scope: !1877)
!1881 = !DILocation(line: 200, column: 68, scope: !546)
!1882 = !DILocation(line: 200, column: 68, scope: !1883)
!1883 = !DILexicalBlockFile(scope: !546, file: !479, discriminator: 2)
!1884 = !DILocation(line: 200, column: 129, scope: !1885)
!1885 = !DILexicalBlockFile(scope: !1877, file: !479, discriminator: 3)
!1886 = !DILocation(line: 200, column: 147, scope: !1877)
!1887 = !DILocation(line: 200, column: 157, scope: !1877)
!1888 = !DILocation(line: 200, column: 182, scope: !1877)
!1889 = !DILocation(line: 200, column: 113, scope: !1877)
!1890 = !DILocation(line: 200, column: 201, scope: !1891)
!1891 = !DILexicalBlockFile(scope: !547, file: !479, discriminator: 4)
!1892 = !DILocation(line: 200, column: 201, scope: !546)
!1893 = !DILocation(line: 200, column: 201, scope: !1894)
!1894 = !DILexicalBlockFile(scope: !546, file: !479, discriminator: 5)
!1895 = !DILocation(line: 201, column: 9, scope: !547)
!1896 = !DILocation(line: 203, column: 1, scope: !539)
!1897 = !DILocation(line: 306, column: 56, scope: !549)
!1898 = !DILocation(line: 307, column: 58, scope: !549)
!1899 = !DILocation(line: 309, column: 39, scope: !549)
!1900 = !DILocation(line: 309, column: 51, scope: !549)
!1901 = !DILocation(line: 309, column: 12, scope: !549)
!1902 = !DILocation(line: 309, column: 5, scope: !549)
!1903 = !DILocation(line: 248, column: 48, scope: !751)
!1904 = !DILocation(line: 249, column: 50, scope: !751)
!1905 = !DILocation(line: 250, column: 50, scope: !751)
!1906 = !DILocation(line: 252, column: 5, scope: !751)
!1907 = !DILocation(line: 252, column: 15, scope: !751)
!1908 = !DILocation(line: 252, column: 21, scope: !751)
!1909 = !DILocation(line: 254, column: 39, scope: !751)
!1910 = !DILocation(line: 254, column: 51, scope: !751)
!1911 = !DILocation(line: 254, column: 16, scope: !751)
!1912 = !DILocation(line: 254, column: 14, scope: !751)
!1913 = !DILocation(line: 255, column: 9, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !751, file: !479, line: 255, column: 9)
!1915 = !DILocation(line: 255, column: 18, scope: !1914)
!1916 = !DILocation(line: 255, column: 9, scope: !751)
!1917 = !DILocation(line: 256, column: 9, scope: !1914)
!1918 = !DILocation(line: 257, column: 9, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !751, file: !479, line: 257, column: 9)
!1920 = !DILocation(line: 257, column: 9, scope: !751)
!1921 = !DILocation(line: 258, column: 37, scope: !1919)
!1922 = !DILocation(line: 258, column: 52, scope: !1919)
!1923 = !DILocation(line: 258, column: 15, scope: !1919)
!1924 = !DILocation(line: 258, column: 13, scope: !1919)
!1925 = !DILocation(line: 258, column: 9, scope: !1919)
!1926 = !DILocation(line: 260, column: 37, scope: !1919)
!1927 = !DILocation(line: 260, column: 15, scope: !1919)
!1928 = !DILocation(line: 260, column: 13, scope: !1919)
!1929 = !DILocation(line: 261, column: 5, scope: !751)
!1930 = !DILocation(line: 261, column: 10, scope: !1931)
!1931 = !DILexicalBlockFile(scope: !759, file: !479, discriminator: 1)
!1932 = !DILocation(line: 261, column: 20, scope: !759)
!1933 = !DILocation(line: 261, column: 50, scope: !759)
!1934 = !DILocation(line: 261, column: 69, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !759, file: !479, line: 261, column: 66)
!1936 = !DILocation(line: 261, column: 86, scope: !1935)
!1937 = !DILocation(line: 261, column: 66, scope: !1935)
!1938 = !DILocation(line: 261, column: 96, scope: !1935)
!1939 = !DILocation(line: 261, column: 66, scope: !759)
!1940 = !DILocation(line: 261, column: 66, scope: !1941)
!1941 = !DILexicalBlockFile(scope: !759, file: !479, discriminator: 2)
!1942 = !DILocation(line: 261, column: 127, scope: !1943)
!1943 = !DILexicalBlockFile(scope: !1935, file: !479, discriminator: 3)
!1944 = !DILocation(line: 261, column: 145, scope: !1935)
!1945 = !DILocation(line: 261, column: 155, scope: !1935)
!1946 = !DILocation(line: 261, column: 180, scope: !1935)
!1947 = !DILocation(line: 261, column: 111, scope: !1935)
!1948 = !DILocation(line: 261, column: 199, scope: !1949)
!1949 = !DILexicalBlockFile(scope: !751, file: !479, discriminator: 4)
!1950 = !DILocation(line: 261, column: 199, scope: !759)
!1951 = !DILocation(line: 261, column: 199, scope: !1952)
!1952 = !DILexicalBlockFile(scope: !759, file: !479, discriminator: 5)
!1953 = !DILocation(line: 262, column: 12, scope: !751)
!1954 = !DILocation(line: 262, column: 5, scope: !751)
!1955 = !DILocation(line: 263, column: 1, scope: !751)
!1956 = !DILocation(line: 313, column: 56, scope: !555)
!1957 = !DILocation(line: 314, column: 58, scope: !555)
!1958 = !DILocation(line: 316, column: 39, scope: !555)
!1959 = !DILocation(line: 316, column: 51, scope: !555)
!1960 = !DILocation(line: 316, column: 12, scope: !555)
!1961 = !DILocation(line: 316, column: 5, scope: !555)
!1962 = !DILocation(line: 327, column: 39, scope: !559)
!1963 = !DILocation(line: 329, column: 26, scope: !559)
!1964 = !DILocation(line: 329, column: 12, scope: !559)
!1965 = !DILocation(line: 329, column: 5, scope: !559)
!1966 = !DILocation(line: 232, column: 37, scope: !760)
!1967 = !DILocation(line: 232, column: 51, scope: !760)
!1968 = !DILocation(line: 234, column: 5, scope: !760)
!1969 = !DILocation(line: 234, column: 15, scope: !760)
!1970 = !DILocation(line: 235, column: 5, scope: !760)
!1971 = !DILocation(line: 235, column: 15, scope: !760)
!1972 = !DILocation(line: 237, column: 30, scope: !760)
!1973 = !DILocation(line: 237, column: 14, scope: !760)
!1974 = !DILocation(line: 237, column: 12, scope: !760)
!1975 = !DILocation(line: 238, column: 9, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !760, file: !479, line: 238, column: 9)
!1977 = !DILocation(line: 238, column: 16, scope: !1976)
!1978 = !DILocation(line: 238, column: 9, scope: !760)
!1979 = !DILocation(line: 239, column: 9, scope: !1976)
!1980 = !DILocation(line: 240, column: 47, scope: !760)
!1981 = !DILocation(line: 240, column: 10, scope: !760)
!1982 = !DILocation(line: 240, column: 29, scope: !760)
!1983 = !DILocation(line: 240, column: 11, scope: !760)
!1984 = !DILocation(line: 240, column: 39, scope: !760)
!1985 = !DILocation(line: 240, column: 7, scope: !760)
!1986 = !DILocation(line: 241, column: 5, scope: !760)
!1987 = !DILocation(line: 241, column: 10, scope: !1988)
!1988 = !DILexicalBlockFile(scope: !769, file: !479, discriminator: 1)
!1989 = !DILocation(line: 241, column: 20, scope: !769)
!1990 = !DILocation(line: 241, column: 50, scope: !769)
!1991 = !DILocation(line: 241, column: 67, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !769, file: !479, line: 241, column: 64)
!1993 = !DILocation(line: 241, column: 84, scope: !1992)
!1994 = !DILocation(line: 241, column: 64, scope: !1992)
!1995 = !DILocation(line: 241, column: 94, scope: !1992)
!1996 = !DILocation(line: 241, column: 64, scope: !769)
!1997 = !DILocation(line: 241, column: 64, scope: !1998)
!1998 = !DILexicalBlockFile(scope: !769, file: !479, discriminator: 2)
!1999 = !DILocation(line: 241, column: 125, scope: !2000)
!2000 = !DILexicalBlockFile(scope: !1992, file: !479, discriminator: 3)
!2001 = !DILocation(line: 241, column: 143, scope: !1992)
!2002 = !DILocation(line: 241, column: 153, scope: !1992)
!2003 = !DILocation(line: 241, column: 178, scope: !1992)
!2004 = !DILocation(line: 241, column: 109, scope: !1992)
!2005 = !DILocation(line: 241, column: 197, scope: !2006)
!2006 = !DILexicalBlockFile(scope: !760, file: !479, discriminator: 4)
!2007 = !DILocation(line: 241, column: 197, scope: !769)
!2008 = !DILocation(line: 241, column: 197, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !769, file: !479, discriminator: 5)
!2010 = !DILocation(line: 242, column: 21, scope: !760)
!2011 = !DILocation(line: 242, column: 26, scope: !760)
!2012 = !DILocation(line: 242, column: 35, scope: !760)
!2013 = !DILocation(line: 243, column: 12, scope: !760)
!2014 = !DILocation(line: 243, column: 5, scope: !760)
!2015 = !DILocation(line: 244, column: 1, scope: !760)
!2016 = !DILocation(line: 332, column: 39, scope: !562)
!2017 = !DILocation(line: 334, column: 26, scope: !562)
!2018 = !DILocation(line: 334, column: 12, scope: !562)
!2019 = !DILocation(line: 334, column: 5, scope: !562)
!2020 = !DILocation(line: 337, column: 50, scope: !565)
!2021 = !DILocation(line: 338, column: 50, scope: !565)
!2022 = !DILocation(line: 340, column: 38, scope: !565)
!2023 = !DILocation(line: 340, column: 48, scope: !565)
!2024 = !DILocation(line: 340, column: 12, scope: !565)
!2025 = !DILocation(line: 340, column: 5, scope: !565)
!2026 = !DILocation(line: 266, column: 49, scope: !770)
!2027 = !DILocation(line: 267, column: 49, scope: !770)
!2028 = !DILocation(line: 268, column: 49, scope: !770)
!2029 = !DILocation(line: 270, column: 5, scope: !770)
!2030 = !DILocation(line: 270, column: 15, scope: !770)
!2031 = !DILocation(line: 270, column: 28, scope: !770)
!2032 = !DILocation(line: 272, column: 34, scope: !770)
!2033 = !DILocation(line: 272, column: 18, scope: !770)
!2034 = !DILocation(line: 272, column: 16, scope: !770)
!2035 = !DILocation(line: 273, column: 9, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !770, file: !479, line: 273, column: 9)
!2037 = !DILocation(line: 273, column: 20, scope: !2036)
!2038 = !DILocation(line: 273, column: 9, scope: !770)
!2039 = !DILocation(line: 274, column: 9, scope: !2036)
!2040 = !DILocation(line: 275, column: 38, scope: !770)
!2041 = !DILocation(line: 275, column: 50, scope: !770)
!2042 = !DILocation(line: 275, column: 58, scope: !770)
!2043 = !DILocation(line: 275, column: 11, scope: !770)
!2044 = !DILocation(line: 275, column: 9, scope: !770)
!2045 = !DILocation(line: 276, column: 5, scope: !770)
!2046 = !DILocation(line: 276, column: 10, scope: !2047)
!2047 = !DILexicalBlockFile(scope: !780, file: !479, discriminator: 1)
!2048 = !DILocation(line: 276, column: 20, scope: !780)
!2049 = !DILocation(line: 276, column: 50, scope: !780)
!2050 = !DILocation(line: 276, column: 71, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !780, file: !479, line: 276, column: 68)
!2052 = !DILocation(line: 276, column: 88, scope: !2051)
!2053 = !DILocation(line: 276, column: 68, scope: !2051)
!2054 = !DILocation(line: 276, column: 98, scope: !2051)
!2055 = !DILocation(line: 276, column: 68, scope: !780)
!2056 = !DILocation(line: 276, column: 68, scope: !2057)
!2057 = !DILexicalBlockFile(scope: !780, file: !479, discriminator: 2)
!2058 = !DILocation(line: 276, column: 129, scope: !2059)
!2059 = !DILexicalBlockFile(scope: !2051, file: !479, discriminator: 3)
!2060 = !DILocation(line: 276, column: 147, scope: !2051)
!2061 = !DILocation(line: 276, column: 157, scope: !2051)
!2062 = !DILocation(line: 276, column: 182, scope: !2051)
!2063 = !DILocation(line: 276, column: 113, scope: !2051)
!2064 = !DILocation(line: 276, column: 201, scope: !2065)
!2065 = !DILexicalBlockFile(scope: !770, file: !479, discriminator: 4)
!2066 = !DILocation(line: 276, column: 201, scope: !780)
!2067 = !DILocation(line: 276, column: 201, scope: !2068)
!2068 = !DILexicalBlockFile(scope: !780, file: !479, discriminator: 5)
!2069 = !DILocation(line: 277, column: 12, scope: !770)
!2070 = !DILocation(line: 277, column: 5, scope: !770)
!2071 = !DILocation(line: 278, column: 1, scope: !770)
!2072 = !DILocation(line: 343, column: 50, scope: !571)
!2073 = !DILocation(line: 344, column: 50, scope: !571)
!2074 = !DILocation(line: 346, column: 38, scope: !571)
!2075 = !DILocation(line: 346, column: 48, scope: !571)
!2076 = !DILocation(line: 346, column: 12, scope: !571)
!2077 = !DILocation(line: 346, column: 5, scope: !571)
!2078 = !DILocation(line: 349, column: 44, scope: !575)
!2079 = !DILocation(line: 350, column: 42, scope: !575)
!2080 = !DILocation(line: 351, column: 44, scope: !575)
!2081 = !DILocation(line: 353, column: 33, scope: !575)
!2082 = !DILocation(line: 353, column: 43, scope: !575)
!2083 = !DILocation(line: 353, column: 51, scope: !575)
!2084 = !DILocation(line: 353, column: 12, scope: !575)
!2085 = !DILocation(line: 353, column: 5, scope: !575)
!2086 = !DILocation(line: 283, column: 44, scope: !781)
!2087 = !DILocation(line: 284, column: 42, scope: !781)
!2088 = !DILocation(line: 285, column: 44, scope: !781)
!2089 = !DILocation(line: 286, column: 42, scope: !781)
!2090 = !DILocation(line: 288, column: 5, scope: !781)
!2091 = !DILocation(line: 288, column: 15, scope: !781)
!2092 = !DILocation(line: 288, column: 24, scope: !781)
!2093 = !DILocation(line: 288, column: 38, scope: !781)
!2094 = !DILocation(line: 290, column: 30, scope: !781)
!2095 = !DILocation(line: 290, column: 14, scope: !781)
!2096 = !DILocation(line: 290, column: 12, scope: !781)
!2097 = !DILocation(line: 291, column: 9, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !781, file: !479, line: 291, column: 9)
!2099 = !DILocation(line: 291, column: 16, scope: !2098)
!2100 = !DILocation(line: 291, column: 9, scope: !781)
!2101 = !DILocation(line: 292, column: 9, scope: !2098)
!2102 = !DILocation(line: 294, column: 54, scope: !781)
!2103 = !DILocation(line: 294, column: 17, scope: !781)
!2104 = !DILocation(line: 294, column: 36, scope: !781)
!2105 = !DILocation(line: 294, column: 18, scope: !781)
!2106 = !DILocation(line: 294, column: 46, scope: !781)
!2107 = !DILocation(line: 294, column: 14, scope: !781)
!2108 = !DILocation(line: 295, column: 9, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !781, file: !479, line: 295, column: 9)
!2110 = !DILocation(line: 295, column: 16, scope: !2109)
!2111 = !DILocation(line: 295, column: 9, scope: !781)
!2112 = !DILocation(line: 296, column: 45, scope: !2109)
!2113 = !DILocation(line: 296, column: 61, scope: !2109)
!2114 = !DILocation(line: 296, column: 69, scope: !2109)
!2115 = !DILocation(line: 296, column: 23, scope: !2109)
!2116 = !DILocation(line: 296, column: 21, scope: !2109)
!2117 = !DILocation(line: 296, column: 9, scope: !2109)
!2118 = !DILocation(line: 298, column: 45, scope: !2109)
!2119 = !DILocation(line: 298, column: 60, scope: !2109)
!2120 = !DILocation(line: 298, column: 23, scope: !2109)
!2121 = !DILocation(line: 298, column: 21, scope: !2109)
!2122 = !DILocation(line: 299, column: 5, scope: !781)
!2123 = !DILocation(line: 299, column: 10, scope: !2124)
!2124 = !DILexicalBlockFile(scope: !794, file: !479, discriminator: 1)
!2125 = !DILocation(line: 299, column: 20, scope: !794)
!2126 = !DILocation(line: 299, column: 50, scope: !794)
!2127 = !DILocation(line: 299, column: 67, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !794, file: !479, line: 299, column: 64)
!2129 = !DILocation(line: 299, column: 84, scope: !2128)
!2130 = !DILocation(line: 299, column: 64, scope: !2128)
!2131 = !DILocation(line: 299, column: 94, scope: !2128)
!2132 = !DILocation(line: 299, column: 64, scope: !794)
!2133 = !DILocation(line: 299, column: 64, scope: !2134)
!2134 = !DILexicalBlockFile(scope: !794, file: !479, discriminator: 2)
!2135 = !DILocation(line: 299, column: 125, scope: !2136)
!2136 = !DILexicalBlockFile(scope: !2128, file: !479, discriminator: 3)
!2137 = !DILocation(line: 299, column: 143, scope: !2128)
!2138 = !DILocation(line: 299, column: 153, scope: !2128)
!2139 = !DILocation(line: 299, column: 178, scope: !2128)
!2140 = !DILocation(line: 299, column: 109, scope: !2128)
!2141 = !DILocation(line: 299, column: 197, scope: !2142)
!2142 = !DILexicalBlockFile(scope: !781, file: !479, discriminator: 4)
!2143 = !DILocation(line: 299, column: 197, scope: !794)
!2144 = !DILocation(line: 299, column: 197, scope: !2145)
!2145 = !DILexicalBlockFile(scope: !794, file: !479, discriminator: 5)
!2146 = !DILocation(line: 300, column: 12, scope: !781)
!2147 = !DILocation(line: 300, column: 5, scope: !781)
!2148 = !DILocation(line: 301, column: 1, scope: !781)
!2149 = !DILocation(line: 356, column: 44, scope: !582)
!2150 = !DILocation(line: 357, column: 42, scope: !582)
!2151 = !DILocation(line: 358, column: 44, scope: !582)
!2152 = !DILocation(line: 360, column: 33, scope: !582)
!2153 = !DILocation(line: 360, column: 43, scope: !582)
!2154 = !DILocation(line: 360, column: 51, scope: !582)
!2155 = !DILocation(line: 360, column: 12, scope: !582)
!2156 = !DILocation(line: 360, column: 5, scope: !582)
!2157 = !DILocation(line: 471, column: 36, scope: !587)
!2158 = !DILocation(line: 472, column: 38, scope: !587)
!2159 = !DILocation(line: 473, column: 38, scope: !587)
!2160 = !DILocation(line: 475, column: 5, scope: !587)
!2161 = !DILocation(line: 475, column: 15, scope: !587)
!2162 = !DILocation(line: 477, column: 31, scope: !587)
!2163 = !DILocation(line: 477, column: 15, scope: !587)
!2164 = !DILocation(line: 477, column: 13, scope: !587)
!2165 = !DILocation(line: 478, column: 9, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !587, file: !479, line: 478, column: 9)
!2167 = !DILocation(line: 478, column: 17, scope: !2166)
!2168 = !DILocation(line: 478, column: 9, scope: !587)
!2169 = !DILocation(line: 479, column: 9, scope: !2166)
!2170 = !DILocation(line: 481, column: 36, scope: !587)
!2171 = !DILocation(line: 481, column: 44, scope: !587)
!2172 = !DILocation(line: 481, column: 53, scope: !587)
!2173 = !DILocation(line: 481, column: 63, scope: !587)
!2174 = !DILocation(line: 481, column: 12, scope: !587)
!2175 = !DILocation(line: 481, column: 5, scope: !587)
!2176 = !DILocation(line: 482, column: 1, scope: !587)
!2177 = !DILocation(line: 385, column: 35, scope: !795)
!2178 = !DILocation(line: 386, column: 35, scope: !795)
!2179 = !DILocation(line: 387, column: 37, scope: !795)
!2180 = !DILocation(line: 388, column: 37, scope: !795)
!2181 = !DILocation(line: 390, column: 5, scope: !795)
!2182 = !DILocation(line: 390, column: 15, scope: !795)
!2183 = !DILocation(line: 390, column: 35, scope: !795)
!2184 = !DILocation(line: 391, column: 5, scope: !795)
!2185 = !DILocation(line: 391, column: 15, scope: !795)
!2186 = !DILocation(line: 393, column: 23, scope: !795)
!2187 = !DILocation(line: 393, column: 31, scope: !795)
!2188 = !DILocation(line: 393, column: 12, scope: !795)
!2189 = !DILocation(line: 393, column: 10, scope: !795)
!2190 = !DILocation(line: 394, column: 9, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !795, file: !479, line: 394, column: 9)
!2192 = !DILocation(line: 394, column: 14, scope: !2191)
!2193 = !DILocation(line: 394, column: 9, scope: !795)
!2194 = !DILocation(line: 395, column: 9, scope: !2191)
!2195 = !DILocation(line: 397, column: 44, scope: !795)
!2196 = !DILocation(line: 397, column: 53, scope: !795)
!2197 = !DILocation(line: 397, column: 14, scope: !795)
!2198 = !DILocation(line: 397, column: 12, scope: !795)
!2199 = !DILocation(line: 398, column: 9, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !795, file: !479, line: 398, column: 9)
!2201 = !DILocation(line: 398, column: 16, scope: !2200)
!2202 = !DILocation(line: 398, column: 9, scope: !795)
!2203 = !DILocation(line: 399, column: 38, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2200, file: !479, line: 398, column: 31)
!2205 = !DILocation(line: 399, column: 9, scope: !2204)
!2206 = !DILocation(line: 400, column: 9, scope: !2204)
!2207 = !DILocation(line: 403, column: 27, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !795, file: !479, line: 403, column: 9)
!2209 = !DILocation(line: 403, column: 37, scope: !2208)
!2210 = !DILocation(line: 403, column: 48, scope: !2208)
!2211 = !DILocation(line: 403, column: 57, scope: !2208)
!2212 = !DILocation(line: 403, column: 74, scope: !2208)
!2213 = !DILocation(line: 403, column: 80, scope: !2208)
!2214 = !DILocation(line: 404, column: 26, scope: !2208)
!2215 = !DILocation(line: 404, column: 11, scope: !2208)
!2216 = !DILocation(line: 404, column: 36, scope: !2208)
!2217 = !DILocation(line: 404, column: 45, scope: !2208)
!2218 = !DILocation(line: 403, column: 9, scope: !795)
!2219 = !DILocation(line: 405, column: 25, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2208, file: !479, line: 404, column: 51)
!2221 = !DILocation(line: 405, column: 9, scope: !2220)
!2222 = !DILocation(line: 407, column: 9, scope: !2220)
!2223 = !DILocation(line: 409, column: 29, scope: !795)
!2224 = !DILocation(line: 409, column: 11, scope: !795)
!2225 = !DILocation(line: 409, column: 39, scope: !795)
!2226 = !DILocation(line: 409, column: 10, scope: !795)
!2227 = !DILocation(line: 409, column: 7, scope: !795)
!2228 = !DILocation(line: 410, column: 21, scope: !795)
!2229 = !DILocation(line: 410, column: 26, scope: !795)
!2230 = !DILocation(line: 410, column: 35, scope: !795)
!2231 = !DILocation(line: 413, column: 5, scope: !795)
!2232 = !DILocation(line: 413, column: 10, scope: !2233)
!2233 = !DILexicalBlockFile(scope: !807, file: !479, discriminator: 1)
!2234 = !DILocation(line: 413, column: 20, scope: !807)
!2235 = !DILocation(line: 413, column: 50, scope: !807)
!2236 = !DILocation(line: 413, column: 65, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !807, file: !479, line: 413, column: 62)
!2238 = !DILocation(line: 413, column: 82, scope: !2237)
!2239 = !DILocation(line: 413, column: 62, scope: !2237)
!2240 = !DILocation(line: 413, column: 92, scope: !2237)
!2241 = !DILocation(line: 413, column: 62, scope: !807)
!2242 = !DILocation(line: 413, column: 62, scope: !2243)
!2243 = !DILexicalBlockFile(scope: !807, file: !479, discriminator: 2)
!2244 = !DILocation(line: 413, column: 123, scope: !2245)
!2245 = !DILexicalBlockFile(scope: !2237, file: !479, discriminator: 3)
!2246 = !DILocation(line: 413, column: 141, scope: !2237)
!2247 = !DILocation(line: 413, column: 151, scope: !2237)
!2248 = !DILocation(line: 413, column: 176, scope: !2237)
!2249 = !DILocation(line: 413, column: 107, scope: !2237)
!2250 = !DILocation(line: 413, column: 195, scope: !2251)
!2251 = !DILexicalBlockFile(scope: !795, file: !479, discriminator: 4)
!2252 = !DILocation(line: 413, column: 195, scope: !807)
!2253 = !DILocation(line: 413, column: 195, scope: !2254)
!2254 = !DILexicalBlockFile(scope: !807, file: !479, discriminator: 5)
!2255 = !DILocation(line: 414, column: 5, scope: !795)
!2256 = !DILocation(line: 414, column: 10, scope: !2257)
!2257 = !DILexicalBlockFile(scope: !809, file: !479, discriminator: 1)
!2258 = !DILocation(line: 414, column: 20, scope: !809)
!2259 = !DILocation(line: 414, column: 50, scope: !809)
!2260 = !DILocation(line: 414, column: 68, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !809, file: !479, line: 414, column: 65)
!2262 = !DILocation(line: 414, column: 85, scope: !2261)
!2263 = !DILocation(line: 414, column: 65, scope: !2261)
!2264 = !DILocation(line: 414, column: 95, scope: !2261)
!2265 = !DILocation(line: 414, column: 65, scope: !809)
!2266 = !DILocation(line: 414, column: 65, scope: !2267)
!2267 = !DILexicalBlockFile(scope: !809, file: !479, discriminator: 2)
!2268 = !DILocation(line: 414, column: 126, scope: !2269)
!2269 = !DILexicalBlockFile(scope: !2261, file: !479, discriminator: 3)
!2270 = !DILocation(line: 414, column: 144, scope: !2261)
!2271 = !DILocation(line: 414, column: 154, scope: !2261)
!2272 = !DILocation(line: 414, column: 179, scope: !2261)
!2273 = !DILocation(line: 414, column: 110, scope: !2261)
!2274 = !DILocation(line: 414, column: 198, scope: !2251)
!2275 = !DILocation(line: 414, column: 198, scope: !809)
!2276 = !DILocation(line: 414, column: 198, scope: !2277)
!2277 = !DILexicalBlockFile(scope: !809, file: !479, discriminator: 5)
!2278 = !DILocation(line: 415, column: 5, scope: !795)
!2279 = !DILocation(line: 415, column: 10, scope: !2280)
!2280 = !DILexicalBlockFile(scope: !811, file: !479, discriminator: 1)
!2281 = !DILocation(line: 415, column: 20, scope: !811)
!2282 = !DILocation(line: 415, column: 50, scope: !811)
!2283 = !DILocation(line: 415, column: 67, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !811, file: !479, line: 415, column: 64)
!2285 = !DILocation(line: 415, column: 84, scope: !2284)
!2286 = !DILocation(line: 415, column: 64, scope: !2284)
!2287 = !DILocation(line: 415, column: 94, scope: !2284)
!2288 = !DILocation(line: 415, column: 64, scope: !811)
!2289 = !DILocation(line: 415, column: 64, scope: !2290)
!2290 = !DILexicalBlockFile(scope: !811, file: !479, discriminator: 2)
!2291 = !DILocation(line: 415, column: 125, scope: !2292)
!2292 = !DILexicalBlockFile(scope: !2284, file: !479, discriminator: 3)
!2293 = !DILocation(line: 415, column: 143, scope: !2284)
!2294 = !DILocation(line: 415, column: 153, scope: !2284)
!2295 = !DILocation(line: 415, column: 178, scope: !2284)
!2296 = !DILocation(line: 415, column: 109, scope: !2284)
!2297 = !DILocation(line: 415, column: 197, scope: !2251)
!2298 = !DILocation(line: 415, column: 197, scope: !811)
!2299 = !DILocation(line: 415, column: 197, scope: !2300)
!2300 = !DILexicalBlockFile(scope: !811, file: !479, discriminator: 5)
!2301 = !DILocation(line: 416, column: 12, scope: !795)
!2302 = !DILocation(line: 416, column: 5, scope: !795)
!2303 = !DILocation(line: 419, column: 5, scope: !795)
!2304 = !DILocation(line: 419, column: 10, scope: !2305)
!2305 = !DILexicalBlockFile(scope: !813, file: !479, discriminator: 1)
!2306 = !DILocation(line: 419, column: 20, scope: !813)
!2307 = !DILocation(line: 419, column: 51, scope: !813)
!2308 = !DILocation(line: 419, column: 64, scope: !816)
!2309 = !DILocation(line: 419, column: 80, scope: !816)
!2310 = !DILocation(line: 419, column: 64, scope: !813)
!2311 = !DILocation(line: 419, column: 95, scope: !2312)
!2312 = !DILexicalBlockFile(scope: !816, file: !479, discriminator: 2)
!2313 = !DILocation(line: 419, column: 100, scope: !2314)
!2314 = !DILexicalBlockFile(scope: !815, file: !479, discriminator: 4)
!2315 = !DILocation(line: 419, column: 110, scope: !815)
!2316 = !DILocation(line: 419, column: 140, scope: !815)
!2317 = !DILocation(line: 419, column: 166, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !815, file: !479, line: 419, column: 163)
!2319 = !DILocation(line: 419, column: 183, scope: !2318)
!2320 = !DILocation(line: 419, column: 163, scope: !2318)
!2321 = !DILocation(line: 419, column: 193, scope: !2318)
!2322 = !DILocation(line: 419, column: 163, scope: !815)
!2323 = !DILocation(line: 419, column: 163, scope: !2324)
!2324 = !DILexicalBlockFile(scope: !815, file: !479, discriminator: 5)
!2325 = !DILocation(line: 419, column: 224, scope: !2326)
!2326 = !DILexicalBlockFile(scope: !2318, file: !479, discriminator: 6)
!2327 = !DILocation(line: 419, column: 242, scope: !2318)
!2328 = !DILocation(line: 419, column: 252, scope: !2318)
!2329 = !DILocation(line: 419, column: 277, scope: !2318)
!2330 = !DILocation(line: 419, column: 208, scope: !2318)
!2331 = !DILocation(line: 419, column: 296, scope: !2332)
!2332 = !DILexicalBlockFile(scope: !816, file: !479, discriminator: 7)
!2333 = !DILocation(line: 419, column: 296, scope: !815)
!2334 = !DILocation(line: 419, column: 296, scope: !2335)
!2335 = !DILexicalBlockFile(scope: !815, file: !479, discriminator: 8)
!2336 = !DILocation(line: 419, column: 296, scope: !2337)
!2337 = !DILexicalBlockFile(scope: !815, file: !479, discriminator: 9)
!2338 = !DILocation(line: 419, column: 309, scope: !2339)
!2339 = !DILexicalBlockFile(scope: !2340, file: !479, discriminator: 10)
!2340 = !DILexicalBlockFile(scope: !795, file: !479, discriminator: 3)
!2341 = !DILocation(line: 419, column: 309, scope: !813)
!2342 = !DILocation(line: 419, column: 309, scope: !2343)
!2343 = !DILexicalBlockFile(scope: !813, file: !479, discriminator: 11)
!2344 = !DILocation(line: 420, column: 5, scope: !795)
!2345 = !DILocation(line: 420, column: 10, scope: !2346)
!2346 = !DILexicalBlockFile(scope: !818, file: !479, discriminator: 1)
!2347 = !DILocation(line: 420, column: 20, scope: !818)
!2348 = !DILocation(line: 420, column: 51, scope: !818)
!2349 = !DILocation(line: 420, column: 62, scope: !821)
!2350 = !DILocation(line: 420, column: 78, scope: !821)
!2351 = !DILocation(line: 420, column: 62, scope: !818)
!2352 = !DILocation(line: 420, column: 93, scope: !2353)
!2353 = !DILexicalBlockFile(scope: !821, file: !479, discriminator: 2)
!2354 = !DILocation(line: 420, column: 98, scope: !2355)
!2355 = !DILexicalBlockFile(scope: !820, file: !479, discriminator: 4)
!2356 = !DILocation(line: 420, column: 108, scope: !820)
!2357 = !DILocation(line: 420, column: 138, scope: !820)
!2358 = !DILocation(line: 420, column: 164, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !820, file: !479, line: 420, column: 161)
!2360 = !DILocation(line: 420, column: 181, scope: !2359)
!2361 = !DILocation(line: 420, column: 161, scope: !2359)
!2362 = !DILocation(line: 420, column: 191, scope: !2359)
!2363 = !DILocation(line: 420, column: 161, scope: !820)
!2364 = !DILocation(line: 420, column: 161, scope: !2365)
!2365 = !DILexicalBlockFile(scope: !820, file: !479, discriminator: 5)
!2366 = !DILocation(line: 420, column: 222, scope: !2367)
!2367 = !DILexicalBlockFile(scope: !2359, file: !479, discriminator: 6)
!2368 = !DILocation(line: 420, column: 240, scope: !2359)
!2369 = !DILocation(line: 420, column: 250, scope: !2359)
!2370 = !DILocation(line: 420, column: 275, scope: !2359)
!2371 = !DILocation(line: 420, column: 206, scope: !2359)
!2372 = !DILocation(line: 420, column: 294, scope: !2373)
!2373 = !DILexicalBlockFile(scope: !821, file: !479, discriminator: 7)
!2374 = !DILocation(line: 420, column: 294, scope: !820)
!2375 = !DILocation(line: 420, column: 294, scope: !2376)
!2376 = !DILexicalBlockFile(scope: !820, file: !479, discriminator: 8)
!2377 = !DILocation(line: 420, column: 294, scope: !2378)
!2378 = !DILexicalBlockFile(scope: !820, file: !479, discriminator: 9)
!2379 = !DILocation(line: 420, column: 307, scope: !2339)
!2380 = !DILocation(line: 420, column: 307, scope: !818)
!2381 = !DILocation(line: 420, column: 307, scope: !2382)
!2382 = !DILexicalBlockFile(scope: !818, file: !479, discriminator: 11)
!2383 = !DILocation(line: 421, column: 5, scope: !795)
!2384 = !DILocation(line: 421, column: 10, scope: !2385)
!2385 = !DILexicalBlockFile(scope: !823, file: !479, discriminator: 1)
!2386 = !DILocation(line: 421, column: 20, scope: !823)
!2387 = !DILocation(line: 421, column: 51, scope: !823)
!2388 = !DILocation(line: 421, column: 65, scope: !826)
!2389 = !DILocation(line: 421, column: 81, scope: !826)
!2390 = !DILocation(line: 421, column: 65, scope: !823)
!2391 = !DILocation(line: 421, column: 96, scope: !2392)
!2392 = !DILexicalBlockFile(scope: !826, file: !479, discriminator: 2)
!2393 = !DILocation(line: 421, column: 101, scope: !2394)
!2394 = !DILexicalBlockFile(scope: !825, file: !479, discriminator: 4)
!2395 = !DILocation(line: 421, column: 111, scope: !825)
!2396 = !DILocation(line: 421, column: 141, scope: !825)
!2397 = !DILocation(line: 421, column: 167, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !825, file: !479, line: 421, column: 164)
!2399 = !DILocation(line: 421, column: 184, scope: !2398)
!2400 = !DILocation(line: 421, column: 164, scope: !2398)
!2401 = !DILocation(line: 421, column: 194, scope: !2398)
!2402 = !DILocation(line: 421, column: 164, scope: !825)
!2403 = !DILocation(line: 421, column: 164, scope: !2404)
!2404 = !DILexicalBlockFile(scope: !825, file: !479, discriminator: 5)
!2405 = !DILocation(line: 421, column: 225, scope: !2406)
!2406 = !DILexicalBlockFile(scope: !2398, file: !479, discriminator: 6)
!2407 = !DILocation(line: 421, column: 243, scope: !2398)
!2408 = !DILocation(line: 421, column: 253, scope: !2398)
!2409 = !DILocation(line: 421, column: 278, scope: !2398)
!2410 = !DILocation(line: 421, column: 209, scope: !2398)
!2411 = !DILocation(line: 421, column: 297, scope: !2412)
!2412 = !DILexicalBlockFile(scope: !826, file: !479, discriminator: 7)
!2413 = !DILocation(line: 421, column: 297, scope: !825)
!2414 = !DILocation(line: 421, column: 297, scope: !2415)
!2415 = !DILexicalBlockFile(scope: !825, file: !479, discriminator: 8)
!2416 = !DILocation(line: 421, column: 297, scope: !2417)
!2417 = !DILexicalBlockFile(scope: !825, file: !479, discriminator: 9)
!2418 = !DILocation(line: 421, column: 310, scope: !2339)
!2419 = !DILocation(line: 421, column: 310, scope: !823)
!2420 = !DILocation(line: 421, column: 310, scope: !2421)
!2421 = !DILexicalBlockFile(scope: !823, file: !479, discriminator: 11)
!2422 = !DILocation(line: 422, column: 5, scope: !795)
!2423 = !DILocation(line: 423, column: 1, scope: !795)
!2424 = !DILocation(line: 484, column: 36, scope: !595)
!2425 = !DILocation(line: 485, column: 38, scope: !595)
!2426 = !DILocation(line: 486, column: 38, scope: !595)
!2427 = !DILocation(line: 488, column: 5, scope: !595)
!2428 = !DILocation(line: 488, column: 15, scope: !595)
!2429 = !DILocation(line: 490, column: 31, scope: !595)
!2430 = !DILocation(line: 490, column: 15, scope: !595)
!2431 = !DILocation(line: 490, column: 13, scope: !595)
!2432 = !DILocation(line: 491, column: 9, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !595, file: !479, line: 491, column: 9)
!2434 = !DILocation(line: 491, column: 17, scope: !2433)
!2435 = !DILocation(line: 491, column: 9, scope: !595)
!2436 = !DILocation(line: 492, column: 9, scope: !2433)
!2437 = !DILocation(line: 494, column: 36, scope: !595)
!2438 = !DILocation(line: 494, column: 44, scope: !595)
!2439 = !DILocation(line: 494, column: 53, scope: !595)
!2440 = !DILocation(line: 494, column: 63, scope: !595)
!2441 = !DILocation(line: 494, column: 12, scope: !595)
!2442 = !DILocation(line: 494, column: 5, scope: !595)
!2443 = !DILocation(line: 495, column: 1, scope: !595)
!2444 = !DILocation(line: 431, column: 35, scope: !845)
!2445 = !DILocation(line: 432, column: 35, scope: !845)
!2446 = !DILocation(line: 433, column: 37, scope: !845)
!2447 = !DILocation(line: 434, column: 37, scope: !845)
!2448 = !DILocation(line: 436, column: 5, scope: !845)
!2449 = !DILocation(line: 436, column: 15, scope: !845)
!2450 = !DILocation(line: 436, column: 35, scope: !845)
!2451 = !DILocation(line: 437, column: 5, scope: !845)
!2452 = !DILocation(line: 437, column: 15, scope: !845)
!2453 = !DILocation(line: 439, column: 23, scope: !845)
!2454 = !DILocation(line: 439, column: 31, scope: !845)
!2455 = !DILocation(line: 439, column: 12, scope: !845)
!2456 = !DILocation(line: 439, column: 10, scope: !845)
!2457 = !DILocation(line: 440, column: 9, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !845, file: !479, line: 440, column: 9)
!2459 = !DILocation(line: 440, column: 14, scope: !2458)
!2460 = !DILocation(line: 440, column: 9, scope: !845)
!2461 = !DILocation(line: 441, column: 9, scope: !2458)
!2462 = !DILocation(line: 443, column: 44, scope: !845)
!2463 = !DILocation(line: 443, column: 53, scope: !845)
!2464 = !DILocation(line: 443, column: 14, scope: !845)
!2465 = !DILocation(line: 443, column: 12, scope: !845)
!2466 = !DILocation(line: 444, column: 9, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !845, file: !479, line: 444, column: 9)
!2468 = !DILocation(line: 444, column: 16, scope: !2467)
!2469 = !DILocation(line: 444, column: 9, scope: !845)
!2470 = !DILocation(line: 445, column: 38, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2467, file: !479, line: 444, column: 31)
!2472 = !DILocation(line: 445, column: 9, scope: !2471)
!2473 = !DILocation(line: 446, column: 9, scope: !2471)
!2474 = !DILocation(line: 448, column: 27, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !845, file: !479, line: 448, column: 9)
!2476 = !DILocation(line: 448, column: 37, scope: !2475)
!2477 = !DILocation(line: 448, column: 48, scope: !2475)
!2478 = !DILocation(line: 448, column: 57, scope: !2475)
!2479 = !DILocation(line: 448, column: 74, scope: !2475)
!2480 = !DILocation(line: 448, column: 80, scope: !2475)
!2481 = !DILocation(line: 449, column: 26, scope: !2475)
!2482 = !DILocation(line: 449, column: 11, scope: !2475)
!2483 = !DILocation(line: 449, column: 36, scope: !2475)
!2484 = !DILocation(line: 449, column: 45, scope: !2475)
!2485 = !DILocation(line: 448, column: 9, scope: !845)
!2486 = !DILocation(line: 450, column: 25, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2475, file: !479, line: 449, column: 51)
!2488 = !DILocation(line: 450, column: 9, scope: !2487)
!2489 = !DILocation(line: 452, column: 9, scope: !2487)
!2490 = !DILocation(line: 454, column: 29, scope: !845)
!2491 = !DILocation(line: 454, column: 11, scope: !845)
!2492 = !DILocation(line: 454, column: 39, scope: !845)
!2493 = !DILocation(line: 454, column: 10, scope: !845)
!2494 = !DILocation(line: 454, column: 7, scope: !845)
!2495 = !DILocation(line: 455, column: 21, scope: !845)
!2496 = !DILocation(line: 455, column: 26, scope: !845)
!2497 = !DILocation(line: 455, column: 35, scope: !845)
!2498 = !DILocation(line: 458, column: 5, scope: !845)
!2499 = !DILocation(line: 458, column: 10, scope: !2500)
!2500 = !DILexicalBlockFile(scope: !855, file: !479, discriminator: 1)
!2501 = !DILocation(line: 458, column: 20, scope: !855)
!2502 = !DILocation(line: 458, column: 50, scope: !855)
!2503 = !DILocation(line: 458, column: 65, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !855, file: !479, line: 458, column: 62)
!2505 = !DILocation(line: 458, column: 82, scope: !2504)
!2506 = !DILocation(line: 458, column: 62, scope: !2504)
!2507 = !DILocation(line: 458, column: 92, scope: !2504)
!2508 = !DILocation(line: 458, column: 62, scope: !855)
!2509 = !DILocation(line: 458, column: 62, scope: !2510)
!2510 = !DILexicalBlockFile(scope: !855, file: !479, discriminator: 2)
!2511 = !DILocation(line: 458, column: 123, scope: !2512)
!2512 = !DILexicalBlockFile(scope: !2504, file: !479, discriminator: 3)
!2513 = !DILocation(line: 458, column: 141, scope: !2504)
!2514 = !DILocation(line: 458, column: 151, scope: !2504)
!2515 = !DILocation(line: 458, column: 176, scope: !2504)
!2516 = !DILocation(line: 458, column: 107, scope: !2504)
!2517 = !DILocation(line: 458, column: 195, scope: !2518)
!2518 = !DILexicalBlockFile(scope: !845, file: !479, discriminator: 4)
!2519 = !DILocation(line: 458, column: 195, scope: !855)
!2520 = !DILocation(line: 458, column: 195, scope: !2521)
!2521 = !DILexicalBlockFile(scope: !855, file: !479, discriminator: 5)
!2522 = !DILocation(line: 459, column: 5, scope: !845)
!2523 = !DILocation(line: 459, column: 10, scope: !2524)
!2524 = !DILexicalBlockFile(scope: !857, file: !479, discriminator: 1)
!2525 = !DILocation(line: 459, column: 20, scope: !857)
!2526 = !DILocation(line: 459, column: 50, scope: !857)
!2527 = !DILocation(line: 459, column: 68, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !857, file: !479, line: 459, column: 65)
!2529 = !DILocation(line: 459, column: 85, scope: !2528)
!2530 = !DILocation(line: 459, column: 65, scope: !2528)
!2531 = !DILocation(line: 459, column: 95, scope: !2528)
!2532 = !DILocation(line: 459, column: 65, scope: !857)
!2533 = !DILocation(line: 459, column: 65, scope: !2534)
!2534 = !DILexicalBlockFile(scope: !857, file: !479, discriminator: 2)
!2535 = !DILocation(line: 459, column: 126, scope: !2536)
!2536 = !DILexicalBlockFile(scope: !2528, file: !479, discriminator: 3)
!2537 = !DILocation(line: 459, column: 144, scope: !2528)
!2538 = !DILocation(line: 459, column: 154, scope: !2528)
!2539 = !DILocation(line: 459, column: 179, scope: !2528)
!2540 = !DILocation(line: 459, column: 110, scope: !2528)
!2541 = !DILocation(line: 459, column: 198, scope: !2518)
!2542 = !DILocation(line: 459, column: 198, scope: !857)
!2543 = !DILocation(line: 459, column: 198, scope: !2544)
!2544 = !DILexicalBlockFile(scope: !857, file: !479, discriminator: 5)
!2545 = !DILocation(line: 460, column: 5, scope: !845)
!2546 = !DILocation(line: 460, column: 10, scope: !2547)
!2547 = !DILexicalBlockFile(scope: !859, file: !479, discriminator: 1)
!2548 = !DILocation(line: 460, column: 20, scope: !859)
!2549 = !DILocation(line: 460, column: 50, scope: !859)
!2550 = !DILocation(line: 460, column: 67, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !859, file: !479, line: 460, column: 64)
!2552 = !DILocation(line: 460, column: 84, scope: !2551)
!2553 = !DILocation(line: 460, column: 64, scope: !2551)
!2554 = !DILocation(line: 460, column: 94, scope: !2551)
!2555 = !DILocation(line: 460, column: 64, scope: !859)
!2556 = !DILocation(line: 460, column: 64, scope: !2557)
!2557 = !DILexicalBlockFile(scope: !859, file: !479, discriminator: 2)
!2558 = !DILocation(line: 460, column: 125, scope: !2559)
!2559 = !DILexicalBlockFile(scope: !2551, file: !479, discriminator: 3)
!2560 = !DILocation(line: 460, column: 143, scope: !2551)
!2561 = !DILocation(line: 460, column: 153, scope: !2551)
!2562 = !DILocation(line: 460, column: 178, scope: !2551)
!2563 = !DILocation(line: 460, column: 109, scope: !2551)
!2564 = !DILocation(line: 460, column: 197, scope: !2518)
!2565 = !DILocation(line: 460, column: 197, scope: !859)
!2566 = !DILocation(line: 460, column: 197, scope: !2567)
!2567 = !DILexicalBlockFile(scope: !859, file: !479, discriminator: 5)
!2568 = !DILocation(line: 461, column: 12, scope: !845)
!2569 = !DILocation(line: 461, column: 5, scope: !845)
!2570 = !DILocation(line: 464, column: 5, scope: !845)
!2571 = !DILocation(line: 464, column: 10, scope: !2572)
!2572 = !DILexicalBlockFile(scope: !861, file: !479, discriminator: 1)
!2573 = !DILocation(line: 464, column: 20, scope: !861)
!2574 = !DILocation(line: 464, column: 51, scope: !861)
!2575 = !DILocation(line: 464, column: 62, scope: !864)
!2576 = !DILocation(line: 464, column: 78, scope: !864)
!2577 = !DILocation(line: 464, column: 62, scope: !861)
!2578 = !DILocation(line: 464, column: 93, scope: !2579)
!2579 = !DILexicalBlockFile(scope: !864, file: !479, discriminator: 2)
!2580 = !DILocation(line: 464, column: 98, scope: !2581)
!2581 = !DILexicalBlockFile(scope: !863, file: !479, discriminator: 4)
!2582 = !DILocation(line: 464, column: 108, scope: !863)
!2583 = !DILocation(line: 464, column: 138, scope: !863)
!2584 = !DILocation(line: 464, column: 164, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !863, file: !479, line: 464, column: 161)
!2586 = !DILocation(line: 464, column: 181, scope: !2585)
!2587 = !DILocation(line: 464, column: 161, scope: !2585)
!2588 = !DILocation(line: 464, column: 191, scope: !2585)
!2589 = !DILocation(line: 464, column: 161, scope: !863)
!2590 = !DILocation(line: 464, column: 161, scope: !2591)
!2591 = !DILexicalBlockFile(scope: !863, file: !479, discriminator: 5)
!2592 = !DILocation(line: 464, column: 222, scope: !2593)
!2593 = !DILexicalBlockFile(scope: !2585, file: !479, discriminator: 6)
!2594 = !DILocation(line: 464, column: 240, scope: !2585)
!2595 = !DILocation(line: 464, column: 250, scope: !2585)
!2596 = !DILocation(line: 464, column: 275, scope: !2585)
!2597 = !DILocation(line: 464, column: 206, scope: !2585)
!2598 = !DILocation(line: 464, column: 294, scope: !2599)
!2599 = !DILexicalBlockFile(scope: !864, file: !479, discriminator: 7)
!2600 = !DILocation(line: 464, column: 294, scope: !863)
!2601 = !DILocation(line: 464, column: 294, scope: !2602)
!2602 = !DILexicalBlockFile(scope: !863, file: !479, discriminator: 8)
!2603 = !DILocation(line: 464, column: 294, scope: !2604)
!2604 = !DILexicalBlockFile(scope: !863, file: !479, discriminator: 9)
!2605 = !DILocation(line: 464, column: 307, scope: !2606)
!2606 = !DILexicalBlockFile(scope: !2607, file: !479, discriminator: 10)
!2607 = !DILexicalBlockFile(scope: !845, file: !479, discriminator: 3)
!2608 = !DILocation(line: 464, column: 307, scope: !861)
!2609 = !DILocation(line: 464, column: 307, scope: !2610)
!2610 = !DILexicalBlockFile(scope: !861, file: !479, discriminator: 11)
!2611 = !DILocation(line: 465, column: 5, scope: !845)
!2612 = !DILocation(line: 465, column: 10, scope: !2613)
!2613 = !DILexicalBlockFile(scope: !866, file: !479, discriminator: 1)
!2614 = !DILocation(line: 465, column: 20, scope: !866)
!2615 = !DILocation(line: 465, column: 51, scope: !866)
!2616 = !DILocation(line: 465, column: 65, scope: !869)
!2617 = !DILocation(line: 465, column: 81, scope: !869)
!2618 = !DILocation(line: 465, column: 65, scope: !866)
!2619 = !DILocation(line: 465, column: 96, scope: !2620)
!2620 = !DILexicalBlockFile(scope: !869, file: !479, discriminator: 2)
!2621 = !DILocation(line: 465, column: 101, scope: !2622)
!2622 = !DILexicalBlockFile(scope: !868, file: !479, discriminator: 4)
!2623 = !DILocation(line: 465, column: 111, scope: !868)
!2624 = !DILocation(line: 465, column: 141, scope: !868)
!2625 = !DILocation(line: 465, column: 167, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !868, file: !479, line: 465, column: 164)
!2627 = !DILocation(line: 465, column: 184, scope: !2626)
!2628 = !DILocation(line: 465, column: 164, scope: !2626)
!2629 = !DILocation(line: 465, column: 194, scope: !2626)
!2630 = !DILocation(line: 465, column: 164, scope: !868)
!2631 = !DILocation(line: 465, column: 164, scope: !2632)
!2632 = !DILexicalBlockFile(scope: !868, file: !479, discriminator: 5)
!2633 = !DILocation(line: 465, column: 225, scope: !2634)
!2634 = !DILexicalBlockFile(scope: !2626, file: !479, discriminator: 6)
!2635 = !DILocation(line: 465, column: 243, scope: !2626)
!2636 = !DILocation(line: 465, column: 253, scope: !2626)
!2637 = !DILocation(line: 465, column: 278, scope: !2626)
!2638 = !DILocation(line: 465, column: 209, scope: !2626)
!2639 = !DILocation(line: 465, column: 297, scope: !2640)
!2640 = !DILexicalBlockFile(scope: !869, file: !479, discriminator: 7)
!2641 = !DILocation(line: 465, column: 297, scope: !868)
!2642 = !DILocation(line: 465, column: 297, scope: !2643)
!2643 = !DILexicalBlockFile(scope: !868, file: !479, discriminator: 8)
!2644 = !DILocation(line: 465, column: 297, scope: !2645)
!2645 = !DILexicalBlockFile(scope: !868, file: !479, discriminator: 9)
!2646 = !DILocation(line: 465, column: 310, scope: !2606)
!2647 = !DILocation(line: 465, column: 310, scope: !866)
!2648 = !DILocation(line: 465, column: 310, scope: !2649)
!2649 = !DILexicalBlockFile(scope: !866, file: !479, discriminator: 11)
!2650 = !DILocation(line: 466, column: 5, scope: !845)
!2651 = !DILocation(line: 466, column: 10, scope: !2652)
!2652 = !DILexicalBlockFile(scope: !871, file: !479, discriminator: 1)
!2653 = !DILocation(line: 466, column: 20, scope: !871)
!2654 = !DILocation(line: 466, column: 51, scope: !871)
!2655 = !DILocation(line: 466, column: 64, scope: !874)
!2656 = !DILocation(line: 466, column: 80, scope: !874)
!2657 = !DILocation(line: 466, column: 64, scope: !871)
!2658 = !DILocation(line: 466, column: 95, scope: !2659)
!2659 = !DILexicalBlockFile(scope: !874, file: !479, discriminator: 2)
!2660 = !DILocation(line: 466, column: 100, scope: !2661)
!2661 = !DILexicalBlockFile(scope: !873, file: !479, discriminator: 4)
!2662 = !DILocation(line: 466, column: 110, scope: !873)
!2663 = !DILocation(line: 466, column: 140, scope: !873)
!2664 = !DILocation(line: 466, column: 166, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !873, file: !479, line: 466, column: 163)
!2666 = !DILocation(line: 466, column: 183, scope: !2665)
!2667 = !DILocation(line: 466, column: 163, scope: !2665)
!2668 = !DILocation(line: 466, column: 193, scope: !2665)
!2669 = !DILocation(line: 466, column: 163, scope: !873)
!2670 = !DILocation(line: 466, column: 163, scope: !2671)
!2671 = !DILexicalBlockFile(scope: !873, file: !479, discriminator: 5)
!2672 = !DILocation(line: 466, column: 224, scope: !2673)
!2673 = !DILexicalBlockFile(scope: !2665, file: !479, discriminator: 6)
!2674 = !DILocation(line: 466, column: 242, scope: !2665)
!2675 = !DILocation(line: 466, column: 252, scope: !2665)
!2676 = !DILocation(line: 466, column: 277, scope: !2665)
!2677 = !DILocation(line: 466, column: 208, scope: !2665)
!2678 = !DILocation(line: 466, column: 296, scope: !2679)
!2679 = !DILexicalBlockFile(scope: !874, file: !479, discriminator: 7)
!2680 = !DILocation(line: 466, column: 296, scope: !873)
!2681 = !DILocation(line: 466, column: 296, scope: !2682)
!2682 = !DILexicalBlockFile(scope: !873, file: !479, discriminator: 8)
!2683 = !DILocation(line: 466, column: 296, scope: !2684)
!2684 = !DILexicalBlockFile(scope: !873, file: !479, discriminator: 9)
!2685 = !DILocation(line: 466, column: 309, scope: !2606)
!2686 = !DILocation(line: 466, column: 309, scope: !871)
!2687 = !DILocation(line: 466, column: 309, scope: !2688)
!2688 = !DILexicalBlockFile(scope: !871, file: !479, discriminator: 11)
!2689 = !DILocation(line: 467, column: 5, scope: !845)
!2690 = !DILocation(line: 468, column: 1, scope: !845)
!2691 = !DILocation(line: 498, column: 52, scope: !601)
!2692 = !DILocation(line: 499, column: 52, scope: !601)
!2693 = !DILocation(line: 502, column: 5, scope: !601)
!2694 = !DILocation(line: 502, column: 15, scope: !601)
!2695 = !DILocation(line: 503, column: 5, scope: !601)
!2696 = !DILocation(line: 503, column: 15, scope: !601)
!2697 = !DILocation(line: 504, column: 5, scope: !601)
!2698 = !DILocation(line: 504, column: 9, scope: !601)
!2699 = !DILocation(line: 506, column: 29, scope: !601)
!2700 = !DILocation(line: 506, column: 13, scope: !601)
!2701 = !DILocation(line: 506, column: 11, scope: !601)
!2702 = !DILocation(line: 507, column: 9, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !601, file: !479, line: 507, column: 9)
!2704 = !DILocation(line: 507, column: 15, scope: !2703)
!2705 = !DILocation(line: 507, column: 9, scope: !601)
!2706 = !DILocation(line: 508, column: 9, scope: !2703)
!2707 = !DILocation(line: 514, column: 25, scope: !615)
!2708 = !DILocation(line: 514, column: 34, scope: !615)
!2709 = !DILocation(line: 514, column: 43, scope: !615)
!2710 = !DILocation(line: 514, column: 9, scope: !601)
!2711 = !DILocation(line: 515, column: 36, scope: !614)
!2712 = !DILocation(line: 515, column: 16, scope: !614)
!2713 = !DILocation(line: 515, column: 14, scope: !614)
!2714 = !DILocation(line: 516, column: 13, scope: !613)
!2715 = !DILocation(line: 516, column: 18, scope: !613)
!2716 = !DILocation(line: 516, column: 13, scope: !614)
!2717 = !DILocation(line: 517, column: 40, scope: !611)
!2718 = !DILocation(line: 517, column: 17, scope: !611)
!2719 = !DILocation(line: 517, column: 17, scope: !612)
!2720 = !DILocation(line: 518, column: 17, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !611, file: !479, line: 517, column: 63)
!2722 = !DILocation(line: 519, column: 13, scope: !2721)
!2723 = !DILocation(line: 520, column: 17, scope: !610)
!2724 = !DILocation(line: 520, column: 22, scope: !2725)
!2725 = !DILexicalBlockFile(scope: !609, file: !479, discriminator: 1)
!2726 = !DILocation(line: 520, column: 32, scope: !609)
!2727 = !DILocation(line: 520, column: 62, scope: !609)
!2728 = !DILocation(line: 520, column: 78, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !609, file: !479, line: 520, column: 75)
!2730 = !DILocation(line: 520, column: 95, scope: !2729)
!2731 = !DILocation(line: 520, column: 75, scope: !2729)
!2732 = !DILocation(line: 520, column: 105, scope: !2729)
!2733 = !DILocation(line: 520, column: 75, scope: !609)
!2734 = !DILocation(line: 520, column: 75, scope: !2735)
!2735 = !DILexicalBlockFile(scope: !609, file: !479, discriminator: 2)
!2736 = !DILocation(line: 520, column: 136, scope: !2737)
!2737 = !DILexicalBlockFile(scope: !2729, file: !479, discriminator: 3)
!2738 = !DILocation(line: 520, column: 154, scope: !2729)
!2739 = !DILocation(line: 520, column: 164, scope: !2729)
!2740 = !DILocation(line: 520, column: 189, scope: !2729)
!2741 = !DILocation(line: 520, column: 120, scope: !2729)
!2742 = !DILocation(line: 520, column: 208, scope: !2743)
!2743 = !DILexicalBlockFile(scope: !610, file: !479, discriminator: 4)
!2744 = !DILocation(line: 520, column: 208, scope: !609)
!2745 = !DILocation(line: 520, column: 208, scope: !2746)
!2746 = !DILexicalBlockFile(scope: !609, file: !479, discriminator: 5)
!2747 = !DILocation(line: 521, column: 17, scope: !610)
!2748 = !DILocation(line: 523, column: 9, scope: !612)
!2749 = !DILocation(line: 524, column: 45, scope: !618)
!2750 = !DILocation(line: 524, column: 29, scope: !618)
!2751 = !DILocation(line: 524, column: 27, scope: !618)
!2752 = !DILocation(line: 525, column: 13, scope: !618)
!2753 = !DILocation(line: 525, column: 18, scope: !2754)
!2754 = !DILexicalBlockFile(scope: !617, file: !479, discriminator: 1)
!2755 = !DILocation(line: 525, column: 28, scope: !617)
!2756 = !DILocation(line: 525, column: 58, scope: !617)
!2757 = !DILocation(line: 525, column: 73, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !617, file: !479, line: 525, column: 70)
!2759 = !DILocation(line: 525, column: 90, scope: !2758)
!2760 = !DILocation(line: 525, column: 70, scope: !2758)
!2761 = !DILocation(line: 525, column: 100, scope: !2758)
!2762 = !DILocation(line: 525, column: 70, scope: !617)
!2763 = !DILocation(line: 525, column: 70, scope: !2764)
!2764 = !DILexicalBlockFile(scope: !617, file: !479, discriminator: 2)
!2765 = !DILocation(line: 525, column: 131, scope: !2766)
!2766 = !DILexicalBlockFile(scope: !2758, file: !479, discriminator: 3)
!2767 = !DILocation(line: 525, column: 149, scope: !2758)
!2768 = !DILocation(line: 525, column: 159, scope: !2758)
!2769 = !DILocation(line: 525, column: 184, scope: !2758)
!2770 = !DILocation(line: 525, column: 115, scope: !2758)
!2771 = !DILocation(line: 525, column: 203, scope: !2772)
!2772 = !DILexicalBlockFile(scope: !618, file: !479, discriminator: 4)
!2773 = !DILocation(line: 525, column: 203, scope: !617)
!2774 = !DILocation(line: 525, column: 203, scope: !2775)
!2775 = !DILexicalBlockFile(scope: !617, file: !479, discriminator: 5)
!2776 = !DILocation(line: 526, column: 18, scope: !622)
!2777 = !DILocation(line: 526, column: 17, scope: !618)
!2778 = !DILocation(line: 527, column: 17, scope: !621)
!2779 = !DILocation(line: 527, column: 22, scope: !2780)
!2780 = !DILexicalBlockFile(scope: !620, file: !479, discriminator: 1)
!2781 = !DILocation(line: 527, column: 32, scope: !620)
!2782 = !DILocation(line: 527, column: 62, scope: !620)
!2783 = !DILocation(line: 527, column: 78, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !620, file: !479, line: 527, column: 75)
!2785 = !DILocation(line: 527, column: 95, scope: !2784)
!2786 = !DILocation(line: 527, column: 75, scope: !2784)
!2787 = !DILocation(line: 527, column: 105, scope: !2784)
!2788 = !DILocation(line: 527, column: 75, scope: !620)
!2789 = !DILocation(line: 527, column: 75, scope: !2790)
!2790 = !DILexicalBlockFile(scope: !620, file: !479, discriminator: 2)
!2791 = !DILocation(line: 527, column: 136, scope: !2792)
!2792 = !DILexicalBlockFile(scope: !2784, file: !479, discriminator: 3)
!2793 = !DILocation(line: 527, column: 154, scope: !2784)
!2794 = !DILocation(line: 527, column: 164, scope: !2784)
!2795 = !DILocation(line: 527, column: 189, scope: !2784)
!2796 = !DILocation(line: 527, column: 120, scope: !2784)
!2797 = !DILocation(line: 527, column: 208, scope: !2798)
!2798 = !DILexicalBlockFile(scope: !621, file: !479, discriminator: 4)
!2799 = !DILocation(line: 527, column: 208, scope: !620)
!2800 = !DILocation(line: 527, column: 208, scope: !2801)
!2801 = !DILexicalBlockFile(scope: !620, file: !479, discriminator: 5)
!2802 = !DILocation(line: 528, column: 30, scope: !621)
!2803 = !DILocation(line: 531, column: 30, scope: !621)
!2804 = !DILocation(line: 531, column: 40, scope: !621)
!2805 = !DILocation(line: 528, column: 17, scope: !621)
!2806 = !DILocation(line: 532, column: 17, scope: !621)
!2807 = !DILocation(line: 535, column: 5, scope: !614)
!2808 = !DILocation(line: 538, column: 12, scope: !601)
!2809 = !DILocation(line: 538, column: 5, scope: !601)
!2810 = !DILocation(line: 539, column: 1, scope: !601)
!2811 = !DILocation(line: 570, column: 41, scope: !623)
!2812 = !DILocation(line: 571, column: 43, scope: !623)
!2813 = !DILocation(line: 572, column: 43, scope: !623)
!2814 = !DILocation(line: 574, column: 5, scope: !623)
!2815 = !DILocation(line: 574, column: 15, scope: !623)
!2816 = !DILocation(line: 576, column: 36, scope: !623)
!2817 = !DILocation(line: 576, column: 15, scope: !623)
!2818 = !DILocation(line: 576, column: 13, scope: !623)
!2819 = !DILocation(line: 577, column: 9, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !623, file: !479, line: 577, column: 9)
!2821 = !DILocation(line: 577, column: 17, scope: !2820)
!2822 = !DILocation(line: 577, column: 9, scope: !623)
!2823 = !DILocation(line: 578, column: 9, scope: !2820)
!2824 = !DILocation(line: 580, column: 36, scope: !623)
!2825 = !DILocation(line: 580, column: 44, scope: !623)
!2826 = !DILocation(line: 580, column: 53, scope: !623)
!2827 = !DILocation(line: 580, column: 63, scope: !623)
!2828 = !DILocation(line: 580, column: 12, scope: !623)
!2829 = !DILocation(line: 580, column: 5, scope: !623)
!2830 = !DILocation(line: 581, column: 1, scope: !623)
!2831 = !DILocation(line: 560, column: 52, scope: !875)
!2832 = !DILocation(line: 562, column: 34, scope: !875)
!2833 = !DILocation(line: 562, column: 12, scope: !875)
!2834 = !DILocation(line: 562, column: 5, scope: !875)
!2835 = !DILocation(line: 583, column: 41, scope: !629)
!2836 = !DILocation(line: 584, column: 43, scope: !629)
!2837 = !DILocation(line: 585, column: 43, scope: !629)
!2838 = !DILocation(line: 587, column: 5, scope: !629)
!2839 = !DILocation(line: 587, column: 15, scope: !629)
!2840 = !DILocation(line: 589, column: 36, scope: !629)
!2841 = !DILocation(line: 589, column: 15, scope: !629)
!2842 = !DILocation(line: 589, column: 13, scope: !629)
!2843 = !DILocation(line: 590, column: 9, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !629, file: !479, line: 590, column: 9)
!2845 = !DILocation(line: 590, column: 17, scope: !2844)
!2846 = !DILocation(line: 590, column: 9, scope: !629)
!2847 = !DILocation(line: 591, column: 9, scope: !2844)
!2848 = !DILocation(line: 593, column: 36, scope: !629)
!2849 = !DILocation(line: 593, column: 44, scope: !629)
!2850 = !DILocation(line: 593, column: 53, scope: !629)
!2851 = !DILocation(line: 593, column: 63, scope: !629)
!2852 = !DILocation(line: 593, column: 12, scope: !629)
!2853 = !DILocation(line: 593, column: 5, scope: !629)
!2854 = !DILocation(line: 594, column: 1, scope: !629)
!2855 = !DILocation(line: 565, column: 52, scope: !889)
!2856 = !DILocation(line: 567, column: 34, scope: !889)
!2857 = !DILocation(line: 567, column: 12, scope: !889)
!2858 = !DILocation(line: 567, column: 5, scope: !889)
!2859 = !DILocation(line: 602, column: 39, scope: !635)
!2860 = !DILocation(line: 602, column: 55, scope: !635)
!2861 = !DILocation(line: 604, column: 5, scope: !635)
!2862 = !DILocation(line: 604, column: 25, scope: !635)
!2863 = !DILocation(line: 604, column: 68, scope: !643)
!2864 = !DILocation(line: 604, column: 104, scope: !643)
!2865 = !DILocation(line: 604, column: 142, scope: !643)
!2866 = !DILocation(line: 604, column: 173, scope: !643)
!2867 = !DILocation(line: 604, column: 181, scope: !643)
!2868 = !DILocation(line: 604, column: 210, scope: !643)
!2869 = !DILocation(line: 604, column: 227, scope: !643)
!2870 = !DILocation(line: 604, column: 239, scope: !643)
!2871 = !DILocation(line: 604, column: 247, scope: !643)
!2872 = !DILocation(line: 604, column: 264, scope: !643)
!2873 = !DILocation(line: 604, column: 324, scope: !643)
!2874 = !DILocation(line: 604, column: 336, scope: !643)
!2875 = !DILocation(line: 604, column: 298, scope: !643)
!2876 = !DILocation(line: 604, column: 353, scope: !643)
!2877 = !DILocation(line: 604, column: 346, scope: !643)
!2878 = !DILocation(line: 604, column: 455, scope: !2879)
!2879 = !DILexicalBlockFile(scope: !2880, file: !479, discriminator: 4)
!2880 = !DILexicalBlockFile(scope: !2881, file: !479, discriminator: 3)
!2881 = !DILexicalBlockFile(scope: !2882, file: !479, discriminator: 2)
!2882 = distinct !DILexicalBlock(scope: !643, file: !479, line: 604, column: 360)
!2883 = !DILocation(line: 604, column: 506, scope: !2882)
!2884 = !DILocation(line: 604, column: 522, scope: !2885)
!2885 = !DILexicalBlockFile(scope: !2882, file: !479, discriminator: 1)
!2886 = !DILocation(line: 604, column: 541, scope: !2887)
!2887 = !DILexicalBlockFile(scope: !2888, file: !479, discriminator: 6)
!2888 = !DILexicalBlockFile(scope: !643, file: !479, discriminator: 5)
!2889 = !DILocation(line: 604, column: 540, scope: !643)
!2890 = !DILocation(line: 604, column: 538, scope: !643)
!2891 = !DILocation(line: 604, column: 563, scope: !643)
!2892 = !DILocation(line: 604, column: 556, scope: !643)
!2893 = !DILocation(line: 604, column: 665, scope: !2894)
!2894 = !DILexicalBlockFile(scope: !2895, file: !479, discriminator: 10)
!2895 = !DILexicalBlockFile(scope: !2896, file: !479, discriminator: 9)
!2896 = !DILexicalBlockFile(scope: !2897, file: !479, discriminator: 8)
!2897 = distinct !DILexicalBlock(scope: !643, file: !479, line: 604, column: 570)
!2898 = !DILocation(line: 604, column: 716, scope: !2897)
!2899 = !DILocation(line: 604, column: 732, scope: !2900)
!2900 = !DILexicalBlockFile(scope: !2897, file: !479, discriminator: 7)
!2901 = !DILocation(line: 604, column: 743, scope: !2902)
!2902 = !DILexicalBlockFile(scope: !2903, file: !479, discriminator: 12)
!2903 = !DILexicalBlockFile(scope: !643, file: !479, discriminator: 11)
!2904 = !DILocation(line: 604, column: 739, scope: !2897)
!2905 = !DILocation(line: 604, column: 751, scope: !635)
!2906 = !DILocation(line: 604, column: 751, scope: !643)
!2907 = !DILocation(line: 604, column: 35, scope: !635)
!2908 = !DILocation(line: 604, column: 756, scope: !635)
!2909 = !DILocation(line: 605, column: 9, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !635, file: !479, line: 605, column: 9)
!2911 = !DILocation(line: 605, column: 17, scope: !2910)
!2912 = !DILocation(line: 605, column: 35, scope: !2910)
!2913 = !DILocation(line: 605, column: 49, scope: !2910)
!2914 = !DILocation(line: 605, column: 52, scope: !2915)
!2915 = !DILexicalBlockFile(scope: !2910, file: !479, discriminator: 1)
!2916 = !DILocation(line: 605, column: 9, scope: !635)
!2917 = !DILocation(line: 606, column: 9, scope: !2910)
!2918 = !DILocation(line: 607, column: 27, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !635, file: !479, line: 607, column: 9)
!2920 = !DILocation(line: 607, column: 10, scope: !2919)
!2921 = !DILocation(line: 607, column: 9, scope: !635)
!2922 = !DILocation(line: 608, column: 25, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2919, file: !479, line: 607, column: 35)
!2924 = !DILocation(line: 608, column: 9, scope: !2923)
!2925 = !DILocation(line: 609, column: 9, scope: !2923)
!2926 = !DILocation(line: 611, column: 33, scope: !635)
!2927 = !DILocation(line: 611, column: 41, scope: !635)
!2928 = !DILocation(line: 612, column: 33, scope: !635)
!2929 = !DILocation(line: 612, column: 39, scope: !635)
!2930 = !DILocation(line: 611, column: 12, scope: !635)
!2931 = !DILocation(line: 611, column: 5, scope: !635)
!2932 = !DILocation(line: 613, column: 1, scope: !635)
!2933 = !DILocation(line: 618, column: 43, scope: !647)
!2934 = !DILocation(line: 620, column: 5, scope: !647)
!2935 = !DILocation(line: 620, column: 15, scope: !647)
!2936 = !DILocation(line: 622, column: 5, scope: !647)
!2937 = !DILocation(line: 622, column: 25, scope: !647)
!2938 = !DILocation(line: 622, column: 68, scope: !653)
!2939 = !DILocation(line: 622, column: 104, scope: !653)
!2940 = !DILocation(line: 622, column: 142, scope: !653)
!2941 = !DILocation(line: 622, column: 173, scope: !653)
!2942 = !DILocation(line: 622, column: 181, scope: !653)
!2943 = !DILocation(line: 622, column: 210, scope: !653)
!2944 = !DILocation(line: 622, column: 227, scope: !653)
!2945 = !DILocation(line: 622, column: 239, scope: !653)
!2946 = !DILocation(line: 622, column: 247, scope: !653)
!2947 = !DILocation(line: 622, column: 264, scope: !653)
!2948 = !DILocation(line: 622, column: 324, scope: !653)
!2949 = !DILocation(line: 622, column: 336, scope: !653)
!2950 = !DILocation(line: 622, column: 298, scope: !653)
!2951 = !DILocation(line: 622, column: 353, scope: !653)
!2952 = !DILocation(line: 622, column: 346, scope: !653)
!2953 = !DILocation(line: 622, column: 455, scope: !2954)
!2954 = !DILexicalBlockFile(scope: !2955, file: !479, discriminator: 4)
!2955 = !DILexicalBlockFile(scope: !2956, file: !479, discriminator: 3)
!2956 = !DILexicalBlockFile(scope: !2957, file: !479, discriminator: 2)
!2957 = distinct !DILexicalBlock(scope: !653, file: !479, line: 622, column: 360)
!2958 = !DILocation(line: 622, column: 506, scope: !2957)
!2959 = !DILocation(line: 622, column: 522, scope: !2960)
!2960 = !DILexicalBlockFile(scope: !2957, file: !479, discriminator: 1)
!2961 = !DILocation(line: 622, column: 541, scope: !2962)
!2962 = !DILexicalBlockFile(scope: !2963, file: !479, discriminator: 6)
!2963 = !DILexicalBlockFile(scope: !653, file: !479, discriminator: 5)
!2964 = !DILocation(line: 622, column: 540, scope: !653)
!2965 = !DILocation(line: 622, column: 538, scope: !653)
!2966 = !DILocation(line: 622, column: 563, scope: !653)
!2967 = !DILocation(line: 622, column: 556, scope: !653)
!2968 = !DILocation(line: 622, column: 665, scope: !2969)
!2969 = !DILexicalBlockFile(scope: !2970, file: !479, discriminator: 10)
!2970 = !DILexicalBlockFile(scope: !2971, file: !479, discriminator: 9)
!2971 = !DILexicalBlockFile(scope: !2972, file: !479, discriminator: 8)
!2972 = distinct !DILexicalBlock(scope: !653, file: !479, line: 622, column: 570)
!2973 = !DILocation(line: 622, column: 716, scope: !2972)
!2974 = !DILocation(line: 622, column: 732, scope: !2975)
!2975 = !DILexicalBlockFile(scope: !2972, file: !479, discriminator: 7)
!2976 = !DILocation(line: 622, column: 743, scope: !2977)
!2977 = !DILexicalBlockFile(scope: !2978, file: !479, discriminator: 12)
!2978 = !DILexicalBlockFile(scope: !653, file: !479, discriminator: 11)
!2979 = !DILocation(line: 622, column: 739, scope: !2972)
!2980 = !DILocation(line: 622, column: 751, scope: !647)
!2981 = !DILocation(line: 622, column: 751, scope: !653)
!2982 = !DILocation(line: 622, column: 35, scope: !647)
!2983 = !DILocation(line: 622, column: 756, scope: !647)
!2984 = !DILocation(line: 623, column: 9, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !647, file: !479, line: 623, column: 9)
!2986 = !DILocation(line: 623, column: 17, scope: !2985)
!2987 = !DILocation(line: 623, column: 35, scope: !2985)
!2988 = !DILocation(line: 623, column: 49, scope: !2985)
!2989 = !DILocation(line: 623, column: 52, scope: !2990)
!2990 = !DILexicalBlockFile(scope: !2985, file: !479, discriminator: 1)
!2991 = !DILocation(line: 623, column: 9, scope: !647)
!2992 = !DILocation(line: 624, column: 9, scope: !2985)
!2993 = !DILocation(line: 626, column: 9, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !647, file: !479, line: 626, column: 9)
!2995 = !DILocation(line: 626, column: 13, scope: !2994)
!2996 = !DILocation(line: 626, column: 9, scope: !647)
!2997 = !DILocation(line: 627, column: 14, scope: !2994)
!2998 = !DILocation(line: 627, column: 9, scope: !2994)
!2999 = !DILocation(line: 628, column: 36, scope: !647)
!3000 = !DILocation(line: 628, column: 44, scope: !647)
!3001 = !DILocation(line: 628, column: 66, scope: !647)
!3002 = !DILocation(line: 628, column: 15, scope: !647)
!3003 = !DILocation(line: 628, column: 13, scope: !647)
!3004 = !DILocation(line: 629, column: 10, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !647, file: !479, line: 629, column: 9)
!3006 = !DILocation(line: 629, column: 9, scope: !647)
!3007 = !DILocation(line: 630, column: 22, scope: !3005)
!3008 = !DILocation(line: 630, column: 80, scope: !3005)
!3009 = !DILocation(line: 630, column: 9, scope: !3005)
!3010 = !DILocation(line: 632, column: 25, scope: !3005)
!3011 = !DILocation(line: 632, column: 36, scope: !3005)
!3012 = !DILocation(line: 632, column: 45, scope: !3005)
!3013 = !DILocation(line: 633, column: 12, scope: !647)
!3014 = !DILocation(line: 633, column: 5, scope: !647)
!3015 = !DILocation(line: 634, column: 1, scope: !647)
!3016 = !DILocation(line: 652, column: 42, scope: !657)
!3017 = !DILocation(line: 654, column: 13, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !657, file: !479, line: 654, column: 9)
!3019 = !DILocation(line: 654, column: 19, scope: !3018)
!3020 = !DILocation(line: 654, column: 29, scope: !3018)
!3021 = !DILocation(line: 654, column: 38, scope: !3018)
!3022 = !DILocation(line: 654, column: 55, scope: !3018)
!3023 = !DILocation(line: 654, column: 9, scope: !657)
!3024 = !DILocation(line: 655, column: 39, scope: !3018)
!3025 = !DILocation(line: 655, column: 45, scope: !3018)
!3026 = !DILocation(line: 655, column: 26, scope: !3018)
!3027 = !DILocation(line: 655, column: 56, scope: !3018)
!3028 = !DILocation(line: 655, column: 9, scope: !3018)
!3029 = !DILocation(line: 657, column: 25, scope: !3018)
!3030 = !DILocation(line: 657, column: 9, scope: !3018)
!3031 = !DILocation(line: 658, column: 5, scope: !657)
!3032 = !DILocation(line: 662, column: 42, scope: !660)
!3033 = !DILocation(line: 664, column: 5, scope: !660)
!3034 = !DILocation(line: 664, column: 16, scope: !660)
!3035 = !DILocation(line: 665, column: 29, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !660, file: !479, line: 665, column: 9)
!3037 = !DILocation(line: 665, column: 34, scope: !3036)
!3038 = !DILocation(line: 665, column: 9, scope: !3036)
!3039 = !DILocation(line: 665, column: 9, scope: !660)
!3040 = !DILocation(line: 666, column: 41, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !479, line: 666, column: 13)
!3042 = distinct !DILexicalBlock(scope: !3036, file: !479, line: 665, column: 61)
!3043 = !DILocation(line: 666, column: 13, scope: !3041)
!3044 = !DILocation(line: 666, column: 13, scope: !3042)
!3045 = !DILocation(line: 667, column: 13, scope: !3041)
!3046 = !DILocation(line: 668, column: 5, scope: !3042)
!3047 = !DILocation(line: 669, column: 34, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3036, file: !479, line: 669, column: 14)
!3049 = !DILocation(line: 669, column: 39, scope: !3048)
!3050 = !DILocation(line: 669, column: 14, scope: !3048)
!3051 = !DILocation(line: 669, column: 14, scope: !3036)
!3052 = !DILocation(line: 670, column: 41, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3054, file: !479, line: 670, column: 13)
!3054 = distinct !DILexicalBlock(scope: !3048, file: !479, line: 669, column: 66)
!3055 = !DILocation(line: 670, column: 13, scope: !3053)
!3056 = !DILocation(line: 670, column: 13, scope: !3054)
!3057 = !DILocation(line: 671, column: 13, scope: !3053)
!3058 = !DILocation(line: 672, column: 5, scope: !3054)
!3059 = !DILocation(line: 673, column: 34, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3048, file: !479, line: 673, column: 14)
!3061 = !DILocation(line: 673, column: 39, scope: !3060)
!3062 = !DILocation(line: 673, column: 14, scope: !3060)
!3063 = !DILocation(line: 673, column: 14, scope: !3048)
!3064 = !DILocation(line: 674, column: 44, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3066, file: !479, line: 674, column: 13)
!3066 = distinct !DILexicalBlock(scope: !3060, file: !479, line: 673, column: 69)
!3067 = !DILocation(line: 674, column: 13, scope: !3065)
!3068 = !DILocation(line: 674, column: 13, scope: !3066)
!3069 = !DILocation(line: 675, column: 13, scope: !3065)
!3070 = !DILocation(line: 676, column: 5, scope: !3066)
!3071 = !DILocation(line: 678, column: 30, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3060, file: !479, line: 677, column: 10)
!3073 = !DILocation(line: 678, column: 9, scope: !3072)
!3074 = !DILocation(line: 679, column: 9, scope: !3072)
!3075 = !DILocation(line: 681, column: 34, scope: !660)
!3076 = !DILocation(line: 681, column: 55, scope: !660)
!3077 = !DILocation(line: 681, column: 12, scope: !660)
!3078 = !DILocation(line: 681, column: 5, scope: !660)
!3079 = !DILocation(line: 682, column: 1, scope: !660)
!3080 = !DILocation(line: 636, column: 44, scope: !892)
!3081 = !DILocation(line: 640, column: 5, scope: !892)
!3082 = !DILocation(line: 640, column: 15, scope: !892)
!3083 = !DILocation(line: 640, column: 42, scope: !892)
!3084 = !DILocation(line: 640, column: 22, scope: !892)
!3085 = !DILocation(line: 641, column: 9, scope: !898)
!3086 = !DILocation(line: 641, column: 14, scope: !898)
!3087 = !DILocation(line: 641, column: 9, scope: !892)
!3088 = !DILocation(line: 642, column: 9, scope: !897)
!3089 = !DILocation(line: 642, column: 19, scope: !897)
!3090 = !DILocation(line: 642, column: 46, scope: !897)
!3091 = !DILocation(line: 642, column: 26, scope: !897)
!3092 = !DILocation(line: 643, column: 9, scope: !897)
!3093 = !DILocation(line: 643, column: 14, scope: !3094)
!3094 = !DILexicalBlockFile(scope: !900, file: !479, discriminator: 1)
!3095 = !DILocation(line: 643, column: 24, scope: !900)
!3096 = !DILocation(line: 643, column: 54, scope: !900)
!3097 = !DILocation(line: 643, column: 69, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !900, file: !479, line: 643, column: 66)
!3099 = !DILocation(line: 643, column: 86, scope: !3098)
!3100 = !DILocation(line: 643, column: 66, scope: !3098)
!3101 = !DILocation(line: 643, column: 96, scope: !3098)
!3102 = !DILocation(line: 643, column: 66, scope: !900)
!3103 = !DILocation(line: 643, column: 66, scope: !3104)
!3104 = !DILexicalBlockFile(scope: !900, file: !479, discriminator: 2)
!3105 = !DILocation(line: 643, column: 127, scope: !3106)
!3106 = !DILexicalBlockFile(scope: !3098, file: !479, discriminator: 3)
!3107 = !DILocation(line: 643, column: 145, scope: !3098)
!3108 = !DILocation(line: 643, column: 155, scope: !3098)
!3109 = !DILocation(line: 643, column: 180, scope: !3098)
!3110 = !DILocation(line: 643, column: 111, scope: !3098)
!3111 = !DILocation(line: 643, column: 199, scope: !3112)
!3112 = !DILexicalBlockFile(scope: !897, file: !479, discriminator: 4)
!3113 = !DILocation(line: 643, column: 199, scope: !900)
!3114 = !DILocation(line: 643, column: 199, scope: !3115)
!3115 = !DILexicalBlockFile(scope: !900, file: !479, discriminator: 5)
!3116 = !DILocation(line: 644, column: 13, scope: !904)
!3117 = !DILocation(line: 644, column: 18, scope: !904)
!3118 = !DILocation(line: 644, column: 13, scope: !897)
!3119 = !DILocation(line: 645, column: 26, scope: !903)
!3120 = !DILocation(line: 646, column: 75, scope: !903)
!3121 = !DILocation(line: 645, column: 13, scope: !903)
!3122 = !DILocation(line: 647, column: 13, scope: !903)
!3123 = !DILocation(line: 647, column: 18, scope: !3124)
!3124 = !DILexicalBlockFile(scope: !902, file: !479, discriminator: 1)
!3125 = !DILocation(line: 647, column: 28, scope: !902)
!3126 = !DILocation(line: 647, column: 58, scope: !902)
!3127 = !DILocation(line: 647, column: 73, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !902, file: !479, line: 647, column: 70)
!3129 = !DILocation(line: 647, column: 90, scope: !3128)
!3130 = !DILocation(line: 647, column: 70, scope: !3128)
!3131 = !DILocation(line: 647, column: 100, scope: !3128)
!3132 = !DILocation(line: 647, column: 70, scope: !902)
!3133 = !DILocation(line: 647, column: 70, scope: !3134)
!3134 = !DILexicalBlockFile(scope: !902, file: !479, discriminator: 2)
!3135 = !DILocation(line: 647, column: 131, scope: !3136)
!3136 = !DILexicalBlockFile(scope: !3128, file: !479, discriminator: 3)
!3137 = !DILocation(line: 647, column: 149, scope: !3128)
!3138 = !DILocation(line: 647, column: 159, scope: !3128)
!3139 = !DILocation(line: 647, column: 184, scope: !3128)
!3140 = !DILocation(line: 647, column: 115, scope: !3128)
!3141 = !DILocation(line: 647, column: 203, scope: !3142)
!3142 = !DILexicalBlockFile(scope: !903, file: !479, discriminator: 4)
!3143 = !DILocation(line: 647, column: 203, scope: !902)
!3144 = !DILocation(line: 647, column: 203, scope: !3145)
!3145 = !DILexicalBlockFile(scope: !902, file: !479, discriminator: 5)
!3146 = !DILocation(line: 648, column: 9, scope: !903)
!3147 = !DILocation(line: 649, column: 5, scope: !898)
!3148 = !DILocation(line: 649, column: 5, scope: !897)
!3149 = !DILocation(line: 650, column: 1, scope: !892)
!3150 = !DILocation(line: 685, column: 43, scope: !664)
!3151 = !DILocation(line: 687, column: 5, scope: !664)
!3152 = !DILocation(line: 687, column: 16, scope: !664)
!3153 = !DILocation(line: 687, column: 23, scope: !664)
!3154 = !DILocation(line: 687, column: 28, scope: !664)
!3155 = !DILocation(line: 687, column: 31, scope: !664)
!3156 = !DILocation(line: 689, column: 29, scope: !673)
!3157 = !DILocation(line: 689, column: 34, scope: !673)
!3158 = !DILocation(line: 689, column: 9, scope: !673)
!3159 = !DILocation(line: 689, column: 9, scope: !664)
!3160 = !DILocation(line: 690, column: 9, scope: !672)
!3161 = !DILocation(line: 690, column: 19, scope: !672)
!3162 = !DILocation(line: 691, column: 9, scope: !672)
!3163 = !DILocation(line: 691, column: 13, scope: !672)
!3164 = !DILocation(line: 692, column: 9, scope: !672)
!3165 = !DILocation(line: 692, column: 15, scope: !672)
!3166 = !DILocation(line: 693, column: 43, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !672, file: !479, line: 693, column: 13)
!3168 = !DILocation(line: 693, column: 13, scope: !3167)
!3169 = !DILocation(line: 693, column: 13, scope: !672)
!3170 = !DILocation(line: 694, column: 13, scope: !3167)
!3171 = !DILocation(line: 695, column: 41, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !672, file: !479, line: 695, column: 13)
!3173 = !DILocation(line: 695, column: 13, scope: !3172)
!3174 = !DILocation(line: 695, column: 13, scope: !672)
!3175 = !DILocation(line: 696, column: 13, scope: !3172)
!3176 = !DILocation(line: 697, column: 15, scope: !672)
!3177 = !DILocation(line: 697, column: 21, scope: !672)
!3178 = !DILocation(line: 697, column: 19, scope: !672)
!3179 = !DILocation(line: 697, column: 13, scope: !672)
!3180 = !DILocation(line: 698, column: 29, scope: !672)
!3181 = !DILocation(line: 698, column: 15, scope: !672)
!3182 = !DILocation(line: 698, column: 13, scope: !672)
!3183 = !DILocation(line: 699, column: 13, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !672, file: !479, line: 699, column: 13)
!3185 = !DILocation(line: 699, column: 17, scope: !3184)
!3186 = !DILocation(line: 699, column: 13, scope: !672)
!3187 = !DILocation(line: 700, column: 13, scope: !3184)
!3188 = !DILocation(line: 701, column: 64, scope: !672)
!3189 = !DILocation(line: 701, column: 46, scope: !672)
!3190 = !DILocation(line: 701, column: 71, scope: !672)
!3191 = !DILocation(line: 701, column: 77, scope: !672)
!3192 = !DILocation(line: 701, column: 14, scope: !672)
!3193 = !DILocation(line: 702, column: 50, scope: !672)
!3194 = !DILocation(line: 702, column: 33, scope: !672)
!3195 = !DILocation(line: 702, column: 57, scope: !672)
!3196 = !DILocation(line: 702, column: 63, scope: !672)
!3197 = !DILocation(line: 702, column: 31, scope: !672)
!3198 = !DILocation(line: 702, column: 121, scope: !3199)
!3199 = !DILexicalBlockFile(scope: !672, file: !479, discriminator: 1)
!3200 = !DILocation(line: 702, column: 105, scope: !672)
!3201 = !DILocation(line: 702, column: 127, scope: !672)
!3202 = !DILocation(line: 702, column: 133, scope: !672)
!3203 = !DILocation(line: 702, column: 75, scope: !672)
!3204 = !DILocation(line: 702, column: 168, scope: !3205)
!3205 = !DILexicalBlockFile(scope: !672, file: !479, discriminator: 3)
!3206 = !DILocation(line: 702, column: 151, scope: !672)
!3207 = !DILocation(line: 702, column: 173, scope: !672)
!3208 = !DILocation(line: 702, column: 143, scope: !672)
!3209 = !DILocation(line: 702, column: 216, scope: !3210)
!3210 = !DILexicalBlockFile(scope: !672, file: !479, discriminator: 4)
!3211 = !DILocation(line: 702, column: 190, scope: !672)
!3212 = !DILocation(line: 702, column: 221, scope: !672)
!3213 = !DILocation(line: 702, column: 182, scope: !672)
!3214 = !DILocation(line: 702, column: 31, scope: !3215)
!3215 = !DILexicalBlockFile(scope: !3216, file: !479, discriminator: 6)
!3216 = !DILexicalBlockFile(scope: !672, file: !479, discriminator: 5)
!3217 = !DILocation(line: 702, column: 268, scope: !3218)
!3218 = !DILexicalBlockFile(scope: !672, file: !479, discriminator: 2)
!3219 = !DILocation(line: 702, column: 248, scope: !672)
!3220 = !DILocation(line: 702, column: 275, scope: !672)
!3221 = !DILocation(line: 702, column: 280, scope: !672)
!3222 = !DILocation(line: 702, column: 14, scope: !3223)
!3223 = !DILexicalBlockFile(scope: !3224, file: !479, discriminator: 8)
!3224 = !DILexicalBlockFile(scope: !672, file: !479, discriminator: 7)
!3225 = !DILocation(line: 703, column: 16, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !672, file: !479, line: 703, column: 9)
!3227 = !DILocation(line: 703, column: 14, scope: !3226)
!3228 = !DILocation(line: 703, column: 21, scope: !3229)
!3229 = !DILexicalBlockFile(scope: !3230, file: !479, discriminator: 2)
!3230 = !DILexicalBlockFile(scope: !3231, file: !479, discriminator: 1)
!3231 = distinct !DILexicalBlock(scope: !3226, file: !479, line: 703, column: 9)
!3232 = !DILocation(line: 703, column: 25, scope: !3231)
!3233 = !DILocation(line: 703, column: 23, scope: !3231)
!3234 = !DILocation(line: 703, column: 9, scope: !3226)
!3235 = !DILocation(line: 704, column: 13, scope: !3231)
!3236 = !DILocation(line: 704, column: 27, scope: !3237)
!3237 = !DILexicalBlockFile(scope: !3238, file: !479, discriminator: 1)
!3238 = distinct !DILexicalBlock(scope: !3231, file: !479, line: 704, column: 16)
!3239 = !DILocation(line: 704, column: 18, scope: !3238)
!3240 = !DILocation(line: 704, column: 86, scope: !3241)
!3241 = !DILexicalBlockFile(scope: !3242, file: !479, discriminator: 3)
!3242 = distinct !DILexicalBlock(scope: !3243, file: !479, line: 704, column: 63)
!3243 = distinct !DILexicalBlock(scope: !3238, file: !479, line: 704, column: 34)
!3244 = !DILocation(line: 704, column: 78, scope: !3242)
!3245 = !DILocation(line: 704, column: 65, scope: !3242)
!3246 = !DILocation(line: 704, column: 90, scope: !3242)
!3247 = !DILocation(line: 704, column: 108, scope: !3242)
!3248 = !DILocation(line: 704, column: 167, scope: !3249)
!3249 = !DILexicalBlockFile(scope: !3250, file: !479, discriminator: 4)
!3250 = distinct !DILexicalBlock(scope: !3243, file: !479, line: 704, column: 144)
!3251 = !DILocation(line: 704, column: 159, scope: !3250)
!3252 = !DILocation(line: 704, column: 147, scope: !3250)
!3253 = !DILocation(line: 704, column: 146, scope: !3250)
!3254 = !DILocation(line: 704, column: 171, scope: !3250)
!3255 = !{!3256, !3256, i64 0}
!3256 = !{!"short", !1102, i64 0}
!3257 = !DILocation(line: 704, column: 189, scope: !3250)
!3258 = !DILocation(line: 704, column: 244, scope: !3259)
!3259 = !DILexicalBlockFile(scope: !3260, file: !479, discriminator: 2)
!3260 = distinct !DILexicalBlock(scope: !3243, file: !479, line: 704, column: 207)
!3261 = !DILocation(line: 704, column: 236, scope: !3260)
!3262 = !DILocation(line: 704, column: 224, scope: !3260)
!3263 = !DILocation(line: 704, column: 223, scope: !3260)
!3264 = !DILocation(line: 704, column: 248, scope: !3260)
!3265 = !DILocation(line: 704, column: 268, scope: !3243)
!3266 = !DILocation(line: 704, column: 270, scope: !3267)
!3267 = !DILexicalBlockFile(scope: !3268, file: !479, discriminator: 7)
!3268 = !DILexicalBlockFile(scope: !3269, file: !479, discriminator: 6)
!3269 = !DILexicalBlockFile(scope: !3238, file: !479, discriminator: 5)
!3270 = !DILocation(line: 704, column: 270, scope: !3271)
!3271 = !DILexicalBlockFile(scope: !3238, file: !479, discriminator: 8)
!3272 = !DILocation(line: 704, column: 270, scope: !3273)
!3273 = !DILexicalBlockFile(scope: !3238, file: !479, discriminator: 9)
!3274 = !DILocation(line: 703, column: 30, scope: !3231)
!3275 = !DILocation(line: 703, column: 9, scope: !3231)
!3276 = !DILocation(line: 706, column: 38, scope: !672)
!3277 = !DILocation(line: 706, column: 43, scope: !672)
!3278 = !DILocation(line: 706, column: 16, scope: !672)
!3279 = !DILocation(line: 706, column: 9, scope: !672)
!3280 = !DILocation(line: 707, column: 5, scope: !673)
!3281 = !DILocation(line: 708, column: 34, scope: !679)
!3282 = !DILocation(line: 708, column: 39, scope: !679)
!3283 = !DILocation(line: 708, column: 14, scope: !679)
!3284 = !DILocation(line: 708, column: 14, scope: !673)
!3285 = !DILocation(line: 709, column: 41, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3287, file: !479, line: 709, column: 13)
!3287 = distinct !DILexicalBlock(scope: !679, file: !479, line: 708, column: 66)
!3288 = !DILocation(line: 709, column: 13, scope: !3286)
!3289 = !DILocation(line: 709, column: 13, scope: !3287)
!3290 = !DILocation(line: 710, column: 13, scope: !3286)
!3291 = !DILocation(line: 713, column: 30, scope: !3287)
!3292 = !DILocation(line: 711, column: 16, scope: !3287)
!3293 = !DILocation(line: 711, column: 9, scope: !3287)
!3294 = !DILocation(line: 715, column: 34, scope: !678)
!3295 = !DILocation(line: 715, column: 39, scope: !678)
!3296 = !DILocation(line: 715, column: 14, scope: !678)
!3297 = !DILocation(line: 715, column: 14, scope: !679)
!3298 = !DILocation(line: 716, column: 9, scope: !677)
!3299 = !DILocation(line: 716, column: 19, scope: !677)
!3300 = !DILocation(line: 717, column: 9, scope: !677)
!3301 = !DILocation(line: 717, column: 13, scope: !677)
!3302 = !DILocation(line: 718, column: 9, scope: !677)
!3303 = !DILocation(line: 718, column: 15, scope: !677)
!3304 = !DILocation(line: 719, column: 46, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !677, file: !479, line: 719, column: 13)
!3306 = !DILocation(line: 719, column: 13, scope: !3305)
!3307 = !DILocation(line: 719, column: 13, scope: !677)
!3308 = !DILocation(line: 720, column: 13, scope: !3305)
!3309 = !DILocation(line: 721, column: 44, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !677, file: !479, line: 721, column: 13)
!3311 = !DILocation(line: 721, column: 13, scope: !3310)
!3312 = !DILocation(line: 721, column: 13, scope: !677)
!3313 = !DILocation(line: 722, column: 13, scope: !3310)
!3314 = !DILocation(line: 723, column: 15, scope: !677)
!3315 = !DILocation(line: 723, column: 21, scope: !677)
!3316 = !DILocation(line: 723, column: 19, scope: !677)
!3317 = !DILocation(line: 723, column: 13, scope: !677)
!3318 = !DILocation(line: 724, column: 29, scope: !677)
!3319 = !DILocation(line: 724, column: 15, scope: !677)
!3320 = !DILocation(line: 724, column: 13, scope: !677)
!3321 = !DILocation(line: 725, column: 13, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !677, file: !479, line: 725, column: 13)
!3323 = !DILocation(line: 725, column: 17, scope: !3322)
!3324 = !DILocation(line: 725, column: 13, scope: !677)
!3325 = !DILocation(line: 726, column: 13, scope: !3322)
!3326 = !DILocation(line: 727, column: 64, scope: !677)
!3327 = !DILocation(line: 727, column: 46, scope: !677)
!3328 = !DILocation(line: 727, column: 71, scope: !677)
!3329 = !DILocation(line: 727, column: 77, scope: !677)
!3330 = !DILocation(line: 727, column: 14, scope: !677)
!3331 = !DILocation(line: 728, column: 50, scope: !677)
!3332 = !DILocation(line: 728, column: 33, scope: !677)
!3333 = !DILocation(line: 728, column: 57, scope: !677)
!3334 = !DILocation(line: 728, column: 63, scope: !677)
!3335 = !DILocation(line: 728, column: 31, scope: !677)
!3336 = !DILocation(line: 728, column: 121, scope: !3337)
!3337 = !DILexicalBlockFile(scope: !677, file: !479, discriminator: 1)
!3338 = !DILocation(line: 728, column: 105, scope: !677)
!3339 = !DILocation(line: 728, column: 127, scope: !677)
!3340 = !DILocation(line: 728, column: 133, scope: !677)
!3341 = !DILocation(line: 728, column: 75, scope: !677)
!3342 = !DILocation(line: 728, column: 168, scope: !3343)
!3343 = !DILexicalBlockFile(scope: !677, file: !479, discriminator: 3)
!3344 = !DILocation(line: 728, column: 151, scope: !677)
!3345 = !DILocation(line: 728, column: 173, scope: !677)
!3346 = !DILocation(line: 728, column: 143, scope: !677)
!3347 = !DILocation(line: 728, column: 216, scope: !3348)
!3348 = !DILexicalBlockFile(scope: !677, file: !479, discriminator: 4)
!3349 = !DILocation(line: 728, column: 190, scope: !677)
!3350 = !DILocation(line: 728, column: 221, scope: !677)
!3351 = !DILocation(line: 728, column: 182, scope: !677)
!3352 = !DILocation(line: 728, column: 31, scope: !3353)
!3353 = !DILexicalBlockFile(scope: !3354, file: !479, discriminator: 6)
!3354 = !DILexicalBlockFile(scope: !677, file: !479, discriminator: 5)
!3355 = !DILocation(line: 728, column: 268, scope: !3356)
!3356 = !DILexicalBlockFile(scope: !677, file: !479, discriminator: 2)
!3357 = !DILocation(line: 728, column: 248, scope: !677)
!3358 = !DILocation(line: 728, column: 275, scope: !677)
!3359 = !DILocation(line: 728, column: 280, scope: !677)
!3360 = !DILocation(line: 728, column: 14, scope: !3361)
!3361 = !DILexicalBlockFile(scope: !3362, file: !479, discriminator: 8)
!3362 = !DILexicalBlockFile(scope: !677, file: !479, discriminator: 7)
!3363 = !DILocation(line: 729, column: 15, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !677, file: !479, line: 729, column: 9)
!3365 = !DILocation(line: 729, column: 14, scope: !3364)
!3366 = !DILocation(line: 729, column: 19, scope: !3367)
!3367 = !DILexicalBlockFile(scope: !3368, file: !479, discriminator: 2)
!3368 = !DILexicalBlockFile(scope: !3369, file: !479, discriminator: 1)
!3369 = distinct !DILexicalBlock(scope: !3364, file: !479, line: 729, column: 9)
!3370 = !DILocation(line: 729, column: 23, scope: !3369)
!3371 = !DILocation(line: 729, column: 21, scope: !3369)
!3372 = !DILocation(line: 729, column: 9, scope: !3364)
!3373 = !DILocation(line: 730, column: 13, scope: !3369)
!3374 = !DILocation(line: 730, column: 27, scope: !3375)
!3375 = !DILexicalBlockFile(scope: !3376, file: !479, discriminator: 1)
!3376 = distinct !DILexicalBlock(scope: !3369, file: !479, line: 730, column: 16)
!3377 = !DILocation(line: 730, column: 18, scope: !3376)
!3378 = !DILocation(line: 730, column: 86, scope: !3379)
!3379 = !DILexicalBlockFile(scope: !3380, file: !479, discriminator: 3)
!3380 = distinct !DILexicalBlock(scope: !3381, file: !479, line: 730, column: 63)
!3381 = distinct !DILexicalBlock(scope: !3376, file: !479, line: 730, column: 34)
!3382 = !DILocation(line: 730, column: 78, scope: !3380)
!3383 = !DILocation(line: 730, column: 65, scope: !3380)
!3384 = !DILocation(line: 730, column: 90, scope: !3380)
!3385 = !DILocation(line: 730, column: 123, scope: !3380)
!3386 = !DILocation(line: 730, column: 182, scope: !3387)
!3387 = !DILexicalBlockFile(scope: !3388, file: !479, discriminator: 4)
!3388 = distinct !DILexicalBlock(scope: !3381, file: !479, line: 730, column: 159)
!3389 = !DILocation(line: 730, column: 174, scope: !3388)
!3390 = !DILocation(line: 730, column: 162, scope: !3388)
!3391 = !DILocation(line: 730, column: 161, scope: !3388)
!3392 = !DILocation(line: 730, column: 186, scope: !3388)
!3393 = !DILocation(line: 730, column: 219, scope: !3388)
!3394 = !DILocation(line: 730, column: 274, scope: !3395)
!3395 = !DILexicalBlockFile(scope: !3396, file: !479, discriminator: 2)
!3396 = distinct !DILexicalBlock(scope: !3381, file: !479, line: 730, column: 237)
!3397 = !DILocation(line: 730, column: 266, scope: !3396)
!3398 = !DILocation(line: 730, column: 254, scope: !3396)
!3399 = !DILocation(line: 730, column: 253, scope: !3396)
!3400 = !DILocation(line: 730, column: 278, scope: !3396)
!3401 = !DILocation(line: 730, column: 313, scope: !3381)
!3402 = !DILocation(line: 730, column: 315, scope: !3403)
!3403 = !DILexicalBlockFile(scope: !3404, file: !479, discriminator: 7)
!3404 = !DILexicalBlockFile(scope: !3405, file: !479, discriminator: 6)
!3405 = !DILexicalBlockFile(scope: !3376, file: !479, discriminator: 5)
!3406 = !DILocation(line: 730, column: 315, scope: !3407)
!3407 = !DILexicalBlockFile(scope: !3376, file: !479, discriminator: 8)
!3408 = !DILocation(line: 730, column: 315, scope: !3409)
!3409 = !DILexicalBlockFile(scope: !3376, file: !479, discriminator: 9)
!3410 = !DILocation(line: 729, column: 29, scope: !3369)
!3411 = !DILocation(line: 729, column: 9, scope: !3369)
!3412 = !DILocation(line: 732, column: 38, scope: !677)
!3413 = !DILocation(line: 732, column: 43, scope: !677)
!3414 = !DILocation(line: 732, column: 16, scope: !677)
!3415 = !DILocation(line: 732, column: 9, scope: !677)
!3416 = !DILocation(line: 733, column: 5, scope: !678)
!3417 = !DILocation(line: 735, column: 30, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !678, file: !479, line: 734, column: 10)
!3419 = !DILocation(line: 735, column: 9, scope: !3418)
!3420 = !DILocation(line: 736, column: 9, scope: !3418)
!3421 = !DILocation(line: 738, column: 1, scope: !664)
!3422 = !DILocation(line: 740, column: 53, scope: !682)
!3423 = !DILocation(line: 742, column: 29, scope: !687)
!3424 = !DILocation(line: 742, column: 34, scope: !687)
!3425 = !DILocation(line: 742, column: 9, scope: !687)
!3426 = !DILocation(line: 742, column: 9, scope: !682)
!3427 = !DILocation(line: 743, column: 9, scope: !686)
!3428 = !DILocation(line: 743, column: 19, scope: !686)
!3429 = !DILocation(line: 744, column: 9, scope: !686)
!3430 = !DILocation(line: 744, column: 19, scope: !686)
!3431 = !DILocation(line: 745, column: 9, scope: !686)
!3432 = !DILocation(line: 745, column: 20, scope: !686)
!3433 = !DILocation(line: 746, column: 9, scope: !686)
!3434 = !DILocation(line: 746, column: 20, scope: !686)
!3435 = !DILocation(line: 747, column: 9, scope: !686)
!3436 = !DILocation(line: 747, column: 20, scope: !686)
!3437 = !DILocation(line: 748, column: 9, scope: !686)
!3438 = !DILocation(line: 748, column: 19, scope: !686)
!3439 = !DILocation(line: 749, column: 9, scope: !686)
!3440 = !DILocation(line: 749, column: 24, scope: !686)
!3441 = !DILocation(line: 750, column: 9, scope: !686)
!3442 = !DILocation(line: 750, column: 13, scope: !686)
!3443 = !DILocation(line: 751, column: 9, scope: !686)
!3444 = !DILocation(line: 751, column: 17, scope: !686)
!3445 = !DILocation(line: 752, column: 43, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !686, file: !479, line: 752, column: 13)
!3447 = !DILocation(line: 752, column: 13, scope: !3446)
!3448 = !DILocation(line: 752, column: 13, scope: !686)
!3449 = !DILocation(line: 753, column: 13, scope: !3446)
!3450 = !DILocation(line: 754, column: 41, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !686, file: !479, line: 754, column: 13)
!3452 = !DILocation(line: 754, column: 13, scope: !3451)
!3453 = !DILocation(line: 754, column: 13, scope: !686)
!3454 = !DILocation(line: 755, column: 13, scope: !3451)
!3455 = !DILocation(line: 756, column: 55, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !686, file: !479, line: 756, column: 13)
!3457 = !DILocation(line: 756, column: 24, scope: !3456)
!3458 = !DILocation(line: 756, column: 22, scope: !3456)
!3459 = !DILocation(line: 756, column: 13, scope: !686)
!3460 = !DILocation(line: 757, column: 13, scope: !3456)
!3461 = !DILocation(line: 758, column: 18, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !686, file: !479, line: 758, column: 9)
!3463 = !DILocation(line: 758, column: 16, scope: !3462)
!3464 = !DILocation(line: 758, column: 33, scope: !3462)
!3465 = !DILocation(line: 758, column: 14, scope: !3462)
!3466 = !DILocation(line: 758, column: 38, scope: !3467)
!3467 = !DILexicalBlockFile(scope: !3468, file: !479, discriminator: 2)
!3468 = !DILexicalBlockFile(scope: !3469, file: !479, discriminator: 1)
!3469 = distinct !DILexicalBlock(scope: !3462, file: !479, line: 758, column: 9)
!3470 = !DILocation(line: 758, column: 42, scope: !3469)
!3471 = !DILocation(line: 758, column: 40, scope: !3469)
!3472 = !DILocation(line: 758, column: 9, scope: !3462)
!3473 = !DILocation(line: 760, column: 107, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3469, file: !479, line: 758, column: 52)
!3475 = !DILocation(line: 760, column: 88, scope: !3474)
!3476 = !DILocation(line: 760, column: 118, scope: !3474)
!3477 = !DILocation(line: 760, column: 124, scope: !3474)
!3478 = !DILocation(line: 760, column: 130, scope: !3474)
!3479 = !DILocation(line: 760, column: 58, scope: !3474)
!3480 = !DILocation(line: 760, column: 475, scope: !3481)
!3481 = !DILexicalBlockFile(scope: !3474, file: !479, discriminator: 1)
!3482 = !DILocation(line: 760, column: 210, scope: !3474)
!3483 = !DILocation(line: 760, column: 192, scope: !3474)
!3484 = !DILocation(line: 760, column: 221, scope: !3474)
!3485 = !DILocation(line: 760, column: 227, scope: !3474)
!3486 = !DILocation(line: 760, column: 190, scope: !3474)
!3487 = !DILocation(line: 760, column: 286, scope: !3488)
!3488 = !DILexicalBlockFile(scope: !3474, file: !479, discriminator: 3)
!3489 = !DILocation(line: 760, column: 269, scope: !3474)
!3490 = !DILocation(line: 760, column: 296, scope: !3474)
!3491 = !DILocation(line: 760, column: 302, scope: !3474)
!3492 = !DILocation(line: 760, column: 239, scope: !3474)
!3493 = !DILocation(line: 760, column: 338, scope: !3494)
!3494 = !DILexicalBlockFile(scope: !3474, file: !479, discriminator: 5)
!3495 = !DILocation(line: 760, column: 320, scope: !3474)
!3496 = !DILocation(line: 760, column: 347, scope: !3474)
!3497 = !DILocation(line: 760, column: 312, scope: !3474)
!3498 = !DILocation(line: 760, column: 391, scope: !3499)
!3499 = !DILexicalBlockFile(scope: !3474, file: !479, discriminator: 6)
!3500 = !DILocation(line: 760, column: 364, scope: !3474)
!3501 = !DILocation(line: 760, column: 400, scope: !3474)
!3502 = !DILocation(line: 760, column: 356, scope: !3474)
!3503 = !DILocation(line: 760, column: 190, scope: !3504)
!3504 = !DILexicalBlockFile(scope: !3505, file: !479, discriminator: 8)
!3505 = !DILexicalBlockFile(scope: !3474, file: !479, discriminator: 7)
!3506 = !DILocation(line: 760, column: 448, scope: !3507)
!3507 = !DILexicalBlockFile(scope: !3474, file: !479, discriminator: 4)
!3508 = !DILocation(line: 760, column: 427, scope: !3474)
!3509 = !DILocation(line: 760, column: 459, scope: !3474)
!3510 = !DILocation(line: 760, column: 464, scope: !3474)
!3511 = !DILocation(line: 760, column: 156, scope: !3512)
!3512 = !DILexicalBlockFile(scope: !3513, file: !479, discriminator: 10)
!3513 = !DILexicalBlockFile(scope: !3474, file: !479, discriminator: 9)
!3514 = !DILocation(line: 760, column: 531, scope: !3515)
!3515 = !DILexicalBlockFile(scope: !3474, file: !479, discriminator: 2)
!3516 = !DILocation(line: 760, column: 512, scope: !3474)
!3517 = !DILocation(line: 760, column: 542, scope: !3474)
!3518 = !DILocation(line: 760, column: 548, scope: !3474)
!3519 = !DILocation(line: 760, column: 554, scope: !3474)
!3520 = !DILocation(line: 760, column: 482, scope: !3474)
!3521 = !DILocation(line: 760, column: 899, scope: !3522)
!3522 = !DILexicalBlockFile(scope: !3474, file: !479, discriminator: 12)
!3523 = !DILocation(line: 760, column: 634, scope: !3474)
!3524 = !DILocation(line: 760, column: 616, scope: !3474)
!3525 = !DILocation(line: 760, column: 645, scope: !3474)
!3526 = !DILocation(line: 760, column: 651, scope: !3474)
!3527 = !DILocation(line: 760, column: 614, scope: !3474)
!3528 = !DILocation(line: 760, column: 710, scope: !3529)
!3529 = !DILexicalBlockFile(scope: !3474, file: !479, discriminator: 14)
!3530 = !DILocation(line: 760, column: 693, scope: !3474)
!3531 = !DILocation(line: 760, column: 720, scope: !3474)
!3532 = !DILocation(line: 760, column: 726, scope: !3474)
!3533 = !DILocation(line: 760, column: 663, scope: !3474)
!3534 = !DILocation(line: 760, column: 762, scope: !3535)
!3535 = !DILexicalBlockFile(scope: !3474, file: !479, discriminator: 16)
!3536 = !DILocation(line: 760, column: 744, scope: !3474)
!3537 = !DILocation(line: 760, column: 771, scope: !3474)
!3538 = !DILocation(line: 760, column: 736, scope: !3474)
!3539 = !DILocation(line: 760, column: 815, scope: !3540)
!3540 = !DILexicalBlockFile(scope: !3474, file: !479, discriminator: 17)
!3541 = !DILocation(line: 760, column: 788, scope: !3474)
!3542 = !DILocation(line: 760, column: 824, scope: !3474)
!3543 = !DILocation(line: 760, column: 780, scope: !3474)
!3544 = !DILocation(line: 760, column: 614, scope: !3545)
!3545 = !DILexicalBlockFile(scope: !3546, file: !479, discriminator: 19)
!3546 = !DILexicalBlockFile(scope: !3474, file: !479, discriminator: 18)
!3547 = !DILocation(line: 760, column: 872, scope: !3548)
!3548 = !DILexicalBlockFile(scope: !3474, file: !479, discriminator: 15)
!3549 = !DILocation(line: 760, column: 851, scope: !3474)
!3550 = !DILocation(line: 760, column: 883, scope: !3474)
!3551 = !DILocation(line: 760, column: 888, scope: !3474)
!3552 = !DILocation(line: 760, column: 581, scope: !3553)
!3553 = !DILexicalBlockFile(scope: !3554, file: !479, discriminator: 21)
!3554 = !DILexicalBlockFile(scope: !3474, file: !479, discriminator: 20)
!3555 = !DILocation(line: 760, column: 580, scope: !3474)
!3556 = !DILocation(line: 760, column: 1224, scope: !3557)
!3557 = !DILexicalBlockFile(scope: !3474, file: !479, discriminator: 13)
!3558 = !DILocation(line: 760, column: 959, scope: !3474)
!3559 = !DILocation(line: 760, column: 941, scope: !3474)
!3560 = !DILocation(line: 760, column: 970, scope: !3474)
!3561 = !DILocation(line: 760, column: 976, scope: !3474)
!3562 = !DILocation(line: 760, column: 939, scope: !3474)
!3563 = !DILocation(line: 760, column: 1035, scope: !3564)
!3564 = !DILexicalBlockFile(scope: !3474, file: !479, discriminator: 23)
!3565 = !DILocation(line: 760, column: 1018, scope: !3474)
!3566 = !DILocation(line: 760, column: 1045, scope: !3474)
!3567 = !DILocation(line: 760, column: 1051, scope: !3474)
!3568 = !DILocation(line: 760, column: 988, scope: !3474)
!3569 = !DILocation(line: 760, column: 1087, scope: !3570)
!3570 = !DILexicalBlockFile(scope: !3474, file: !479, discriminator: 25)
!3571 = !DILocation(line: 760, column: 1069, scope: !3474)
!3572 = !DILocation(line: 760, column: 1096, scope: !3474)
!3573 = !DILocation(line: 760, column: 1061, scope: !3474)
!3574 = !DILocation(line: 760, column: 1140, scope: !3575)
!3575 = !DILexicalBlockFile(scope: !3474, file: !479, discriminator: 26)
!3576 = !DILocation(line: 760, column: 1113, scope: !3474)
!3577 = !DILocation(line: 760, column: 1149, scope: !3474)
!3578 = !DILocation(line: 760, column: 1105, scope: !3474)
!3579 = !DILocation(line: 760, column: 939, scope: !3580)
!3580 = !DILexicalBlockFile(scope: !3581, file: !479, discriminator: 28)
!3581 = !DILexicalBlockFile(scope: !3474, file: !479, discriminator: 27)
!3582 = !DILocation(line: 760, column: 1197, scope: !3583)
!3583 = !DILexicalBlockFile(scope: !3474, file: !479, discriminator: 24)
!3584 = !DILocation(line: 760, column: 1176, scope: !3474)
!3585 = !DILocation(line: 760, column: 1208, scope: !3474)
!3586 = !DILocation(line: 760, column: 1213, scope: !3474)
!3587 = !DILocation(line: 760, column: 906, scope: !3588)
!3588 = !DILexicalBlockFile(scope: !3589, file: !479, discriminator: 30)
!3589 = !DILexicalBlockFile(scope: !3474, file: !479, discriminator: 29)
!3590 = !DILocation(line: 760, column: 905, scope: !3474)
!3591 = !DILocation(line: 760, column: 58, scope: !3592)
!3592 = !DILexicalBlockFile(scope: !3593, file: !479, discriminator: 31)
!3593 = !DILexicalBlockFile(scope: !3474, file: !479, discriminator: 22)
!3594 = !DILocation(line: 760, column: 16, scope: !3595)
!3595 = !DILexicalBlockFile(scope: !3596, file: !479, discriminator: 32)
!3596 = !DILexicalBlockFile(scope: !3474, file: !479, discriminator: 11)
!3597 = !DILocation(line: 761, column: 17, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3474, file: !479, line: 761, column: 17)
!3599 = !DILocation(line: 761, column: 19, scope: !3598)
!3600 = !DILocation(line: 761, column: 17, scope: !3474)
!3601 = !DILocation(line: 762, column: 25, scope: !3598)
!3602 = !DILocation(line: 762, column: 17, scope: !3598)
!3603 = !DILocation(line: 763, column: 22, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3598, file: !479, line: 763, column: 22)
!3605 = !DILocation(line: 763, column: 24, scope: !3604)
!3606 = !DILocation(line: 763, column: 22, scope: !3598)
!3607 = !DILocation(line: 764, column: 25, scope: !3604)
!3608 = !DILocation(line: 764, column: 17, scope: !3604)
!3609 = !DILocation(line: 765, column: 22, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3604, file: !479, line: 765, column: 22)
!3611 = !DILocation(line: 765, column: 24, scope: !3610)
!3612 = !DILocation(line: 765, column: 22, scope: !3604)
!3613 = !DILocation(line: 766, column: 25, scope: !3610)
!3614 = !DILocation(line: 766, column: 17, scope: !3610)
!3615 = !DILocation(line: 767, column: 22, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3610, file: !479, line: 767, column: 22)
!3617 = !DILocation(line: 767, column: 24, scope: !3616)
!3618 = !DILocation(line: 767, column: 22, scope: !3610)
!3619 = !DILocation(line: 768, column: 25, scope: !3616)
!3620 = !DILocation(line: 768, column: 17, scope: !3616)
!3621 = !DILocation(line: 769, column: 22, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3616, file: !479, line: 769, column: 22)
!3623 = !DILocation(line: 769, column: 24, scope: !3622)
!3624 = !DILocation(line: 769, column: 22, scope: !3616)
!3625 = !DILocation(line: 770, column: 25, scope: !3622)
!3626 = !DILocation(line: 770, column: 17, scope: !3622)
!3627 = !DILocation(line: 771, column: 22, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3622, file: !479, line: 771, column: 22)
!3629 = !DILocation(line: 771, column: 24, scope: !3628)
!3630 = !DILocation(line: 771, column: 22, scope: !3622)
!3631 = !DILocation(line: 772, column: 25, scope: !3628)
!3632 = !DILocation(line: 772, column: 17, scope: !3628)
!3633 = !DILocation(line: 774, column: 25, scope: !3628)
!3634 = !DILocation(line: 775, column: 9, scope: !3474)
!3635 = !DILocation(line: 758, column: 47, scope: !3469)
!3636 = !DILocation(line: 758, column: 9, scope: !3469)
!3637 = !DILocation(line: 777, column: 29, scope: !686)
!3638 = !DILocation(line: 777, column: 15, scope: !686)
!3639 = !DILocation(line: 777, column: 13, scope: !686)
!3640 = !DILocation(line: 778, column: 13, scope: !699)
!3641 = !DILocation(line: 778, column: 17, scope: !699)
!3642 = !DILocation(line: 778, column: 13, scope: !686)
!3643 = !DILocation(line: 779, column: 13, scope: !698)
!3644 = !DILocation(line: 779, column: 18, scope: !3645)
!3645 = !DILexicalBlockFile(scope: !697, file: !479, discriminator: 1)
!3646 = !DILocation(line: 779, column: 28, scope: !697)
!3647 = !DILocation(line: 779, column: 58, scope: !697)
!3648 = !DILocation(line: 779, column: 75, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !697, file: !479, line: 779, column: 72)
!3650 = !DILocation(line: 779, column: 92, scope: !3649)
!3651 = !DILocation(line: 779, column: 72, scope: !3649)
!3652 = !DILocation(line: 779, column: 102, scope: !3649)
!3653 = !DILocation(line: 779, column: 72, scope: !697)
!3654 = !DILocation(line: 779, column: 72, scope: !3655)
!3655 = !DILexicalBlockFile(scope: !697, file: !479, discriminator: 2)
!3656 = !DILocation(line: 779, column: 133, scope: !3657)
!3657 = !DILexicalBlockFile(scope: !3649, file: !479, discriminator: 3)
!3658 = !DILocation(line: 779, column: 151, scope: !3649)
!3659 = !DILocation(line: 779, column: 161, scope: !3649)
!3660 = !DILocation(line: 779, column: 186, scope: !3649)
!3661 = !DILocation(line: 779, column: 117, scope: !3649)
!3662 = !DILocation(line: 779, column: 205, scope: !3663)
!3663 = !DILexicalBlockFile(scope: !698, file: !479, discriminator: 4)
!3664 = !DILocation(line: 779, column: 205, scope: !697)
!3665 = !DILocation(line: 779, column: 205, scope: !3666)
!3666 = !DILexicalBlockFile(scope: !697, file: !479, discriminator: 5)
!3667 = !DILocation(line: 780, column: 13, scope: !698)
!3668 = !DILocation(line: 782, column: 61, scope: !686)
!3669 = !DILocation(line: 782, column: 44, scope: !686)
!3670 = !DILocation(line: 782, column: 68, scope: !686)
!3671 = !DILocation(line: 782, column: 74, scope: !686)
!3672 = !DILocation(line: 782, column: 42, scope: !686)
!3673 = !DILocation(line: 782, column: 132, scope: !3674)
!3674 = !DILexicalBlockFile(scope: !686, file: !479, discriminator: 1)
!3675 = !DILocation(line: 782, column: 116, scope: !686)
!3676 = !DILocation(line: 782, column: 138, scope: !686)
!3677 = !DILocation(line: 782, column: 144, scope: !686)
!3678 = !DILocation(line: 782, column: 86, scope: !686)
!3679 = !DILocation(line: 782, column: 179, scope: !3680)
!3680 = !DILexicalBlockFile(scope: !686, file: !479, discriminator: 3)
!3681 = !DILocation(line: 782, column: 162, scope: !686)
!3682 = !DILocation(line: 782, column: 184, scope: !686)
!3683 = !DILocation(line: 782, column: 154, scope: !686)
!3684 = !DILocation(line: 782, column: 227, scope: !3685)
!3685 = !DILexicalBlockFile(scope: !686, file: !479, discriminator: 4)
!3686 = !DILocation(line: 782, column: 201, scope: !686)
!3687 = !DILocation(line: 782, column: 232, scope: !686)
!3688 = !DILocation(line: 782, column: 193, scope: !686)
!3689 = !DILocation(line: 782, column: 42, scope: !3690)
!3690 = !DILexicalBlockFile(scope: !3691, file: !479, discriminator: 6)
!3691 = !DILexicalBlockFile(scope: !686, file: !479, discriminator: 5)
!3692 = !DILocation(line: 782, column: 279, scope: !3693)
!3693 = !DILexicalBlockFile(scope: !686, file: !479, discriminator: 2)
!3694 = !DILocation(line: 782, column: 259, scope: !686)
!3695 = !DILocation(line: 782, column: 286, scope: !686)
!3696 = !DILocation(line: 782, column: 291, scope: !686)
!3697 = !DILocation(line: 782, column: 14, scope: !3698)
!3698 = !DILexicalBlockFile(scope: !3699, file: !479, discriminator: 8)
!3699 = !DILexicalBlockFile(scope: !686, file: !479, discriminator: 7)
!3700 = !DILocation(line: 784, column: 18, scope: !703)
!3701 = !DILocation(line: 784, column: 16, scope: !703)
!3702 = !DILocation(line: 784, column: 14, scope: !703)
!3703 = !DILocation(line: 784, column: 25, scope: !3704)
!3704 = !DILexicalBlockFile(scope: !3705, file: !479, discriminator: 2)
!3705 = !DILexicalBlockFile(scope: !702, file: !479, discriminator: 1)
!3706 = !DILocation(line: 784, column: 29, scope: !702)
!3707 = !DILocation(line: 784, column: 27, scope: !702)
!3708 = !DILocation(line: 784, column: 9, scope: !703)
!3709 = !DILocation(line: 785, column: 13, scope: !701)
!3710 = !DILocation(line: 785, column: 17, scope: !701)
!3711 = !DILocation(line: 786, column: 13, scope: !701)
!3712 = !DILocation(line: 786, column: 17, scope: !701)
!3713 = !DILocation(line: 787, column: 107, scope: !701)
!3714 = !DILocation(line: 787, column: 88, scope: !701)
!3715 = !DILocation(line: 787, column: 118, scope: !701)
!3716 = !DILocation(line: 787, column: 124, scope: !701)
!3717 = !DILocation(line: 787, column: 130, scope: !701)
!3718 = !DILocation(line: 787, column: 58, scope: !701)
!3719 = !DILocation(line: 787, column: 475, scope: !3720)
!3720 = !DILexicalBlockFile(scope: !701, file: !479, discriminator: 1)
!3721 = !DILocation(line: 787, column: 210, scope: !701)
!3722 = !DILocation(line: 787, column: 192, scope: !701)
!3723 = !DILocation(line: 787, column: 221, scope: !701)
!3724 = !DILocation(line: 787, column: 227, scope: !701)
!3725 = !DILocation(line: 787, column: 190, scope: !701)
!3726 = !DILocation(line: 787, column: 286, scope: !3727)
!3727 = !DILexicalBlockFile(scope: !701, file: !479, discriminator: 3)
!3728 = !DILocation(line: 787, column: 269, scope: !701)
!3729 = !DILocation(line: 787, column: 296, scope: !701)
!3730 = !DILocation(line: 787, column: 302, scope: !701)
!3731 = !DILocation(line: 787, column: 239, scope: !701)
!3732 = !DILocation(line: 787, column: 338, scope: !3733)
!3733 = !DILexicalBlockFile(scope: !701, file: !479, discriminator: 5)
!3734 = !DILocation(line: 787, column: 320, scope: !701)
!3735 = !DILocation(line: 787, column: 347, scope: !701)
!3736 = !DILocation(line: 787, column: 312, scope: !701)
!3737 = !DILocation(line: 787, column: 391, scope: !3738)
!3738 = !DILexicalBlockFile(scope: !701, file: !479, discriminator: 6)
!3739 = !DILocation(line: 787, column: 364, scope: !701)
!3740 = !DILocation(line: 787, column: 400, scope: !701)
!3741 = !DILocation(line: 787, column: 356, scope: !701)
!3742 = !DILocation(line: 787, column: 190, scope: !3743)
!3743 = !DILexicalBlockFile(scope: !3744, file: !479, discriminator: 8)
!3744 = !DILexicalBlockFile(scope: !701, file: !479, discriminator: 7)
!3745 = !DILocation(line: 787, column: 448, scope: !3746)
!3746 = !DILexicalBlockFile(scope: !701, file: !479, discriminator: 4)
!3747 = !DILocation(line: 787, column: 427, scope: !701)
!3748 = !DILocation(line: 787, column: 459, scope: !701)
!3749 = !DILocation(line: 787, column: 464, scope: !701)
!3750 = !DILocation(line: 787, column: 156, scope: !3751)
!3751 = !DILexicalBlockFile(scope: !3752, file: !479, discriminator: 10)
!3752 = !DILexicalBlockFile(scope: !701, file: !479, discriminator: 9)
!3753 = !DILocation(line: 787, column: 531, scope: !3754)
!3754 = !DILexicalBlockFile(scope: !701, file: !479, discriminator: 2)
!3755 = !DILocation(line: 787, column: 512, scope: !701)
!3756 = !DILocation(line: 787, column: 542, scope: !701)
!3757 = !DILocation(line: 787, column: 548, scope: !701)
!3758 = !DILocation(line: 787, column: 554, scope: !701)
!3759 = !DILocation(line: 787, column: 482, scope: !701)
!3760 = !DILocation(line: 787, column: 899, scope: !3761)
!3761 = !DILexicalBlockFile(scope: !701, file: !479, discriminator: 12)
!3762 = !DILocation(line: 787, column: 634, scope: !701)
!3763 = !DILocation(line: 787, column: 616, scope: !701)
!3764 = !DILocation(line: 787, column: 645, scope: !701)
!3765 = !DILocation(line: 787, column: 651, scope: !701)
!3766 = !DILocation(line: 787, column: 614, scope: !701)
!3767 = !DILocation(line: 787, column: 710, scope: !3768)
!3768 = !DILexicalBlockFile(scope: !701, file: !479, discriminator: 14)
!3769 = !DILocation(line: 787, column: 693, scope: !701)
!3770 = !DILocation(line: 787, column: 720, scope: !701)
!3771 = !DILocation(line: 787, column: 726, scope: !701)
!3772 = !DILocation(line: 787, column: 663, scope: !701)
!3773 = !DILocation(line: 787, column: 762, scope: !3774)
!3774 = !DILexicalBlockFile(scope: !701, file: !479, discriminator: 16)
!3775 = !DILocation(line: 787, column: 744, scope: !701)
!3776 = !DILocation(line: 787, column: 771, scope: !701)
!3777 = !DILocation(line: 787, column: 736, scope: !701)
!3778 = !DILocation(line: 787, column: 815, scope: !3779)
!3779 = !DILexicalBlockFile(scope: !701, file: !479, discriminator: 17)
!3780 = !DILocation(line: 787, column: 788, scope: !701)
!3781 = !DILocation(line: 787, column: 824, scope: !701)
!3782 = !DILocation(line: 787, column: 780, scope: !701)
!3783 = !DILocation(line: 787, column: 614, scope: !3784)
!3784 = !DILexicalBlockFile(scope: !3785, file: !479, discriminator: 19)
!3785 = !DILexicalBlockFile(scope: !701, file: !479, discriminator: 18)
!3786 = !DILocation(line: 787, column: 872, scope: !3787)
!3787 = !DILexicalBlockFile(scope: !701, file: !479, discriminator: 15)
!3788 = !DILocation(line: 787, column: 851, scope: !701)
!3789 = !DILocation(line: 787, column: 883, scope: !701)
!3790 = !DILocation(line: 787, column: 888, scope: !701)
!3791 = !DILocation(line: 787, column: 581, scope: !3792)
!3792 = !DILexicalBlockFile(scope: !3793, file: !479, discriminator: 21)
!3793 = !DILexicalBlockFile(scope: !701, file: !479, discriminator: 20)
!3794 = !DILocation(line: 787, column: 580, scope: !701)
!3795 = !DILocation(line: 787, column: 1224, scope: !3796)
!3796 = !DILexicalBlockFile(scope: !701, file: !479, discriminator: 13)
!3797 = !DILocation(line: 787, column: 959, scope: !701)
!3798 = !DILocation(line: 787, column: 941, scope: !701)
!3799 = !DILocation(line: 787, column: 970, scope: !701)
!3800 = !DILocation(line: 787, column: 976, scope: !701)
!3801 = !DILocation(line: 787, column: 939, scope: !701)
!3802 = !DILocation(line: 787, column: 1035, scope: !3803)
!3803 = !DILexicalBlockFile(scope: !701, file: !479, discriminator: 23)
!3804 = !DILocation(line: 787, column: 1018, scope: !701)
!3805 = !DILocation(line: 787, column: 1045, scope: !701)
!3806 = !DILocation(line: 787, column: 1051, scope: !701)
!3807 = !DILocation(line: 787, column: 988, scope: !701)
!3808 = !DILocation(line: 787, column: 1087, scope: !3809)
!3809 = !DILexicalBlockFile(scope: !701, file: !479, discriminator: 25)
!3810 = !DILocation(line: 787, column: 1069, scope: !701)
!3811 = !DILocation(line: 787, column: 1096, scope: !701)
!3812 = !DILocation(line: 787, column: 1061, scope: !701)
!3813 = !DILocation(line: 787, column: 1140, scope: !3814)
!3814 = !DILexicalBlockFile(scope: !701, file: !479, discriminator: 26)
!3815 = !DILocation(line: 787, column: 1113, scope: !701)
!3816 = !DILocation(line: 787, column: 1149, scope: !701)
!3817 = !DILocation(line: 787, column: 1105, scope: !701)
!3818 = !DILocation(line: 787, column: 939, scope: !3819)
!3819 = !DILexicalBlockFile(scope: !3820, file: !479, discriminator: 28)
!3820 = !DILexicalBlockFile(scope: !701, file: !479, discriminator: 27)
!3821 = !DILocation(line: 787, column: 1197, scope: !3822)
!3822 = !DILexicalBlockFile(scope: !701, file: !479, discriminator: 24)
!3823 = !DILocation(line: 787, column: 1176, scope: !701)
!3824 = !DILocation(line: 787, column: 1208, scope: !701)
!3825 = !DILocation(line: 787, column: 1213, scope: !701)
!3826 = !DILocation(line: 787, column: 906, scope: !3827)
!3827 = !DILexicalBlockFile(scope: !3828, file: !479, discriminator: 30)
!3828 = !DILexicalBlockFile(scope: !701, file: !479, discriminator: 29)
!3829 = !DILocation(line: 787, column: 905, scope: !701)
!3830 = !DILocation(line: 787, column: 58, scope: !3831)
!3831 = !DILexicalBlockFile(scope: !3832, file: !479, discriminator: 31)
!3832 = !DILexicalBlockFile(scope: !701, file: !479, discriminator: 22)
!3833 = !DILocation(line: 787, column: 16, scope: !3834)
!3834 = !DILexicalBlockFile(scope: !3835, file: !479, discriminator: 32)
!3835 = !DILexicalBlockFile(scope: !701, file: !479, discriminator: 11)
!3836 = !DILocation(line: 788, column: 18, scope: !701)
!3837 = !DILocation(line: 788, column: 21, scope: !701)
!3838 = !DILocation(line: 789, column: 18, scope: !701)
!3839 = !DILocation(line: 789, column: 21, scope: !701)
!3840 = !DILocation(line: 790, column: 17, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !701, file: !479, line: 790, column: 17)
!3842 = !DILocation(line: 790, column: 19, scope: !3841)
!3843 = !DILocation(line: 790, column: 17, scope: !701)
!3844 = !DILocation(line: 791, column: 24, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3841, file: !479, line: 790, column: 24)
!3846 = !DILocation(line: 792, column: 22, scope: !3845)
!3847 = !DILocation(line: 793, column: 13, scope: !3845)
!3848 = !DILocation(line: 794, column: 22, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3841, file: !479, line: 794, column: 22)
!3850 = !DILocation(line: 794, column: 24, scope: !3849)
!3851 = !DILocation(line: 794, column: 22, scope: !3841)
!3852 = !DILocation(line: 795, column: 24, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3849, file: !479, line: 794, column: 30)
!3854 = !DILocation(line: 796, column: 22, scope: !3853)
!3855 = !DILocation(line: 797, column: 13, scope: !3853)
!3856 = !DILocation(line: 798, column: 22, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3849, file: !479, line: 798, column: 22)
!3858 = !DILocation(line: 798, column: 24, scope: !3857)
!3859 = !DILocation(line: 798, column: 22, scope: !3849)
!3860 = !DILocation(line: 799, column: 24, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3857, file: !479, line: 798, column: 31)
!3862 = !DILocation(line: 800, column: 22, scope: !3861)
!3863 = !DILocation(line: 801, column: 13, scope: !3861)
!3864 = !DILocation(line: 802, column: 22, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3857, file: !479, line: 802, column: 22)
!3866 = !DILocation(line: 802, column: 24, scope: !3865)
!3867 = !DILocation(line: 802, column: 22, scope: !3857)
!3868 = !DILocation(line: 803, column: 24, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3865, file: !479, line: 802, column: 32)
!3870 = !DILocation(line: 804, column: 22, scope: !3869)
!3871 = !DILocation(line: 805, column: 13, scope: !3869)
!3872 = !DILocation(line: 806, column: 22, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3865, file: !479, line: 806, column: 22)
!3874 = !DILocation(line: 806, column: 24, scope: !3873)
!3875 = !DILocation(line: 806, column: 22, scope: !3865)
!3876 = !DILocation(line: 807, column: 24, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3873, file: !479, line: 806, column: 33)
!3878 = !DILocation(line: 808, column: 22, scope: !3877)
!3879 = !DILocation(line: 809, column: 13, scope: !3877)
!3880 = !DILocation(line: 810, column: 22, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3873, file: !479, line: 810, column: 22)
!3882 = !DILocation(line: 810, column: 24, scope: !3881)
!3883 = !DILocation(line: 810, column: 22, scope: !3873)
!3884 = !DILocation(line: 811, column: 24, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3881, file: !479, line: 810, column: 34)
!3886 = !DILocation(line: 812, column: 22, scope: !3885)
!3887 = !DILocation(line: 813, column: 13, scope: !3885)
!3888 = !DILocation(line: 815, column: 24, scope: !3889)
!3889 = distinct !DILexicalBlock(scope: !3881, file: !479, line: 814, column: 18)
!3890 = !DILocation(line: 816, column: 22, scope: !3889)
!3891 = !DILocation(line: 818, column: 13, scope: !701)
!3892 = !DILocation(line: 818, column: 26, scope: !3893)
!3893 = !DILexicalBlockFile(scope: !3720, file: !479, discriminator: 2)
!3894 = !DILocation(line: 818, column: 28, scope: !701)
!3895 = !DILocation(line: 819, column: 33, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !701, file: !479, line: 818, column: 32)
!3897 = !DILocation(line: 819, column: 36, scope: !3896)
!3898 = !DILocation(line: 819, column: 35, scope: !3896)
!3899 = !DILocation(line: 819, column: 31, scope: !3896)
!3900 = !DILocation(line: 819, column: 27, scope: !3896)
!3901 = !DILocation(line: 819, column: 22, scope: !3896)
!3902 = !DILocation(line: 819, column: 25, scope: !3896)
!3903 = !DILocation(line: 820, column: 23, scope: !3896)
!3904 = !DILocation(line: 820, column: 20, scope: !3896)
!3905 = !DILocation(line: 821, column: 22, scope: !3896)
!3906 = !DILocation(line: 823, column: 18, scope: !701)
!3907 = !DILocation(line: 823, column: 21, scope: !701)
!3908 = !DILocation(line: 824, column: 9, scope: !702)
!3909 = !DILocation(line: 824, column: 9, scope: !701)
!3910 = !DILocation(line: 784, column: 34, scope: !702)
!3911 = !DILocation(line: 784, column: 9, scope: !702)
!3912 = !DILocation(line: 826, column: 42, scope: !686)
!3913 = !DILocation(line: 826, column: 47, scope: !686)
!3914 = !DILocation(line: 826, column: 20, scope: !686)
!3915 = !DILocation(line: 826, column: 18, scope: !686)
!3916 = !DILocation(line: 827, column: 9, scope: !686)
!3917 = !DILocation(line: 827, column: 14, scope: !3918)
!3918 = !DILexicalBlockFile(scope: !706, file: !479, discriminator: 1)
!3919 = !DILocation(line: 827, column: 24, scope: !706)
!3920 = !DILocation(line: 827, column: 54, scope: !706)
!3921 = !DILocation(line: 827, column: 71, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !706, file: !479, line: 827, column: 68)
!3923 = !DILocation(line: 827, column: 88, scope: !3922)
!3924 = !DILocation(line: 827, column: 68, scope: !3922)
!3925 = !DILocation(line: 827, column: 98, scope: !3922)
!3926 = !DILocation(line: 827, column: 68, scope: !706)
!3927 = !DILocation(line: 827, column: 68, scope: !3928)
!3928 = !DILexicalBlockFile(scope: !706, file: !479, discriminator: 2)
!3929 = !DILocation(line: 827, column: 129, scope: !3930)
!3930 = !DILexicalBlockFile(scope: !3922, file: !479, discriminator: 3)
!3931 = !DILocation(line: 827, column: 147, scope: !3922)
!3932 = !DILocation(line: 827, column: 157, scope: !3922)
!3933 = !DILocation(line: 827, column: 182, scope: !3922)
!3934 = !DILocation(line: 827, column: 113, scope: !3922)
!3935 = !DILocation(line: 827, column: 201, scope: !3685)
!3936 = !DILocation(line: 827, column: 201, scope: !706)
!3937 = !DILocation(line: 827, column: 201, scope: !3938)
!3938 = !DILexicalBlockFile(scope: !706, file: !479, discriminator: 5)
!3939 = !DILocation(line: 828, column: 16, scope: !686)
!3940 = !DILocation(line: 828, column: 9, scope: !686)
!3941 = !DILocation(line: 829, column: 5, scope: !687)
!3942 = !DILocation(line: 831, column: 30, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !687, file: !479, line: 830, column: 10)
!3944 = !DILocation(line: 831, column: 9, scope: !3943)
!3945 = !DILocation(line: 832, column: 9, scope: !3943)
!3946 = !DILocation(line: 834, column: 1, scope: !682)
!3947 = !DILocation(line: 836, column: 52, scope: !707)
!3948 = !DILocation(line: 838, column: 29, scope: !712)
!3949 = !DILocation(line: 838, column: 34, scope: !712)
!3950 = !DILocation(line: 838, column: 9, scope: !712)
!3951 = !DILocation(line: 838, column: 9, scope: !707)
!3952 = !DILocation(line: 839, column: 9, scope: !711)
!3953 = !DILocation(line: 839, column: 19, scope: !711)
!3954 = !DILocation(line: 840, column: 9, scope: !711)
!3955 = !DILocation(line: 840, column: 19, scope: !711)
!3956 = !DILocation(line: 841, column: 9, scope: !711)
!3957 = !DILocation(line: 841, column: 20, scope: !711)
!3958 = !DILocation(line: 842, column: 9, scope: !711)
!3959 = !DILocation(line: 842, column: 20, scope: !711)
!3960 = !DILocation(line: 843, column: 9, scope: !711)
!3961 = !DILocation(line: 843, column: 20, scope: !711)
!3962 = !DILocation(line: 844, column: 9, scope: !711)
!3963 = !DILocation(line: 844, column: 19, scope: !711)
!3964 = !DILocation(line: 845, column: 9, scope: !711)
!3965 = !DILocation(line: 845, column: 24, scope: !711)
!3966 = !DILocation(line: 846, column: 9, scope: !711)
!3967 = !DILocation(line: 846, column: 13, scope: !711)
!3968 = !DILocation(line: 847, column: 9, scope: !711)
!3969 = !DILocation(line: 847, column: 17, scope: !711)
!3970 = !DILocation(line: 848, column: 43, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !711, file: !479, line: 848, column: 13)
!3972 = !DILocation(line: 848, column: 13, scope: !3971)
!3973 = !DILocation(line: 848, column: 13, scope: !711)
!3974 = !DILocation(line: 849, column: 13, scope: !3971)
!3975 = !DILocation(line: 850, column: 41, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !711, file: !479, line: 850, column: 13)
!3977 = !DILocation(line: 850, column: 13, scope: !3976)
!3978 = !DILocation(line: 850, column: 13, scope: !711)
!3979 = !DILocation(line: 851, column: 13, scope: !3976)
!3980 = !DILocation(line: 852, column: 55, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !711, file: !479, line: 852, column: 13)
!3982 = !DILocation(line: 852, column: 24, scope: !3981)
!3983 = !DILocation(line: 852, column: 22, scope: !3981)
!3984 = !DILocation(line: 852, column: 13, scope: !711)
!3985 = !DILocation(line: 853, column: 13, scope: !3981)
!3986 = !DILocation(line: 854, column: 18, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !711, file: !479, line: 854, column: 9)
!3988 = !DILocation(line: 854, column: 16, scope: !3987)
!3989 = !DILocation(line: 854, column: 33, scope: !3987)
!3990 = !DILocation(line: 854, column: 14, scope: !3987)
!3991 = !DILocation(line: 854, column: 38, scope: !3992)
!3992 = !DILexicalBlockFile(scope: !3993, file: !479, discriminator: 2)
!3993 = !DILexicalBlockFile(scope: !3994, file: !479, discriminator: 1)
!3994 = distinct !DILexicalBlock(scope: !3987, file: !479, line: 854, column: 9)
!3995 = !DILocation(line: 854, column: 42, scope: !3994)
!3996 = !DILocation(line: 854, column: 40, scope: !3994)
!3997 = !DILocation(line: 854, column: 9, scope: !3987)
!3998 = !DILocation(line: 856, column: 106, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3994, file: !479, line: 854, column: 52)
!4000 = !DILocation(line: 856, column: 87, scope: !3999)
!4001 = !DILocation(line: 856, column: 117, scope: !3999)
!4002 = !DILocation(line: 856, column: 123, scope: !3999)
!4003 = !DILocation(line: 856, column: 129, scope: !3999)
!4004 = !DILocation(line: 856, column: 57, scope: !3999)
!4005 = !DILocation(line: 856, column: 474, scope: !4006)
!4006 = !DILexicalBlockFile(scope: !3999, file: !479, discriminator: 1)
!4007 = !DILocation(line: 856, column: 209, scope: !3999)
!4008 = !DILocation(line: 856, column: 191, scope: !3999)
!4009 = !DILocation(line: 856, column: 220, scope: !3999)
!4010 = !DILocation(line: 856, column: 226, scope: !3999)
!4011 = !DILocation(line: 856, column: 189, scope: !3999)
!4012 = !DILocation(line: 856, column: 285, scope: !4013)
!4013 = !DILexicalBlockFile(scope: !3999, file: !479, discriminator: 3)
!4014 = !DILocation(line: 856, column: 268, scope: !3999)
!4015 = !DILocation(line: 856, column: 295, scope: !3999)
!4016 = !DILocation(line: 856, column: 301, scope: !3999)
!4017 = !DILocation(line: 856, column: 238, scope: !3999)
!4018 = !DILocation(line: 856, column: 337, scope: !4019)
!4019 = !DILexicalBlockFile(scope: !3999, file: !479, discriminator: 5)
!4020 = !DILocation(line: 856, column: 319, scope: !3999)
!4021 = !DILocation(line: 856, column: 346, scope: !3999)
!4022 = !DILocation(line: 856, column: 311, scope: !3999)
!4023 = !DILocation(line: 856, column: 390, scope: !4024)
!4024 = !DILexicalBlockFile(scope: !3999, file: !479, discriminator: 6)
!4025 = !DILocation(line: 856, column: 363, scope: !3999)
!4026 = !DILocation(line: 856, column: 399, scope: !3999)
!4027 = !DILocation(line: 856, column: 355, scope: !3999)
!4028 = !DILocation(line: 856, column: 189, scope: !4029)
!4029 = !DILexicalBlockFile(scope: !4030, file: !479, discriminator: 8)
!4030 = !DILexicalBlockFile(scope: !3999, file: !479, discriminator: 7)
!4031 = !DILocation(line: 856, column: 447, scope: !4032)
!4032 = !DILexicalBlockFile(scope: !3999, file: !479, discriminator: 4)
!4033 = !DILocation(line: 856, column: 426, scope: !3999)
!4034 = !DILocation(line: 856, column: 458, scope: !3999)
!4035 = !DILocation(line: 856, column: 463, scope: !3999)
!4036 = !DILocation(line: 856, column: 155, scope: !4037)
!4037 = !DILexicalBlockFile(scope: !4038, file: !479, discriminator: 10)
!4038 = !DILexicalBlockFile(scope: !3999, file: !479, discriminator: 9)
!4039 = !DILocation(line: 856, column: 530, scope: !4040)
!4040 = !DILexicalBlockFile(scope: !3999, file: !479, discriminator: 2)
!4041 = !DILocation(line: 856, column: 511, scope: !3999)
!4042 = !DILocation(line: 856, column: 541, scope: !3999)
!4043 = !DILocation(line: 856, column: 547, scope: !3999)
!4044 = !DILocation(line: 856, column: 553, scope: !3999)
!4045 = !DILocation(line: 856, column: 481, scope: !3999)
!4046 = !DILocation(line: 856, column: 898, scope: !4047)
!4047 = !DILexicalBlockFile(scope: !3999, file: !479, discriminator: 12)
!4048 = !DILocation(line: 856, column: 633, scope: !3999)
!4049 = !DILocation(line: 856, column: 615, scope: !3999)
!4050 = !DILocation(line: 856, column: 644, scope: !3999)
!4051 = !DILocation(line: 856, column: 650, scope: !3999)
!4052 = !DILocation(line: 856, column: 613, scope: !3999)
!4053 = !DILocation(line: 856, column: 709, scope: !4054)
!4054 = !DILexicalBlockFile(scope: !3999, file: !479, discriminator: 14)
!4055 = !DILocation(line: 856, column: 692, scope: !3999)
!4056 = !DILocation(line: 856, column: 719, scope: !3999)
!4057 = !DILocation(line: 856, column: 725, scope: !3999)
!4058 = !DILocation(line: 856, column: 662, scope: !3999)
!4059 = !DILocation(line: 856, column: 761, scope: !4060)
!4060 = !DILexicalBlockFile(scope: !3999, file: !479, discriminator: 16)
!4061 = !DILocation(line: 856, column: 743, scope: !3999)
!4062 = !DILocation(line: 856, column: 770, scope: !3999)
!4063 = !DILocation(line: 856, column: 735, scope: !3999)
!4064 = !DILocation(line: 856, column: 814, scope: !4065)
!4065 = !DILexicalBlockFile(scope: !3999, file: !479, discriminator: 17)
!4066 = !DILocation(line: 856, column: 787, scope: !3999)
!4067 = !DILocation(line: 856, column: 823, scope: !3999)
!4068 = !DILocation(line: 856, column: 779, scope: !3999)
!4069 = !DILocation(line: 856, column: 613, scope: !4070)
!4070 = !DILexicalBlockFile(scope: !4071, file: !479, discriminator: 19)
!4071 = !DILexicalBlockFile(scope: !3999, file: !479, discriminator: 18)
!4072 = !DILocation(line: 856, column: 871, scope: !4073)
!4073 = !DILexicalBlockFile(scope: !3999, file: !479, discriminator: 15)
!4074 = !DILocation(line: 856, column: 850, scope: !3999)
!4075 = !DILocation(line: 856, column: 882, scope: !3999)
!4076 = !DILocation(line: 856, column: 887, scope: !3999)
!4077 = !DILocation(line: 856, column: 580, scope: !4078)
!4078 = !DILexicalBlockFile(scope: !4079, file: !479, discriminator: 21)
!4079 = !DILexicalBlockFile(scope: !3999, file: !479, discriminator: 20)
!4080 = !DILocation(line: 856, column: 579, scope: !3999)
!4081 = !DILocation(line: 856, column: 1223, scope: !4082)
!4082 = !DILexicalBlockFile(scope: !3999, file: !479, discriminator: 13)
!4083 = !DILocation(line: 856, column: 958, scope: !3999)
!4084 = !DILocation(line: 856, column: 940, scope: !3999)
!4085 = !DILocation(line: 856, column: 969, scope: !3999)
!4086 = !DILocation(line: 856, column: 975, scope: !3999)
!4087 = !DILocation(line: 856, column: 938, scope: !3999)
!4088 = !DILocation(line: 856, column: 1034, scope: !4089)
!4089 = !DILexicalBlockFile(scope: !3999, file: !479, discriminator: 23)
!4090 = !DILocation(line: 856, column: 1017, scope: !3999)
!4091 = !DILocation(line: 856, column: 1044, scope: !3999)
!4092 = !DILocation(line: 856, column: 1050, scope: !3999)
!4093 = !DILocation(line: 856, column: 987, scope: !3999)
!4094 = !DILocation(line: 856, column: 1086, scope: !4095)
!4095 = !DILexicalBlockFile(scope: !3999, file: !479, discriminator: 25)
!4096 = !DILocation(line: 856, column: 1068, scope: !3999)
!4097 = !DILocation(line: 856, column: 1095, scope: !3999)
!4098 = !DILocation(line: 856, column: 1060, scope: !3999)
!4099 = !DILocation(line: 856, column: 1139, scope: !4100)
!4100 = !DILexicalBlockFile(scope: !3999, file: !479, discriminator: 26)
!4101 = !DILocation(line: 856, column: 1112, scope: !3999)
!4102 = !DILocation(line: 856, column: 1148, scope: !3999)
!4103 = !DILocation(line: 856, column: 1104, scope: !3999)
!4104 = !DILocation(line: 856, column: 938, scope: !4105)
!4105 = !DILexicalBlockFile(scope: !4106, file: !479, discriminator: 28)
!4106 = !DILexicalBlockFile(scope: !3999, file: !479, discriminator: 27)
!4107 = !DILocation(line: 856, column: 1196, scope: !4108)
!4108 = !DILexicalBlockFile(scope: !3999, file: !479, discriminator: 24)
!4109 = !DILocation(line: 856, column: 1175, scope: !3999)
!4110 = !DILocation(line: 856, column: 1207, scope: !3999)
!4111 = !DILocation(line: 856, column: 1212, scope: !3999)
!4112 = !DILocation(line: 856, column: 905, scope: !4113)
!4113 = !DILexicalBlockFile(scope: !4114, file: !479, discriminator: 30)
!4114 = !DILexicalBlockFile(scope: !3999, file: !479, discriminator: 29)
!4115 = !DILocation(line: 856, column: 904, scope: !3999)
!4116 = !DILocation(line: 856, column: 57, scope: !4117)
!4117 = !DILexicalBlockFile(scope: !4118, file: !479, discriminator: 31)
!4118 = !DILexicalBlockFile(scope: !3999, file: !479, discriminator: 22)
!4119 = !DILocation(line: 856, column: 15, scope: !4120)
!4120 = !DILexicalBlockFile(scope: !4121, file: !479, discriminator: 32)
!4121 = !DILexicalBlockFile(scope: !3999, file: !479, discriminator: 11)
!4122 = !DILocation(line: 857, column: 17, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !3999, file: !479, line: 857, column: 17)
!4124 = !DILocation(line: 857, column: 19, scope: !4123)
!4125 = !DILocation(line: 857, column: 17, scope: !3999)
!4126 = !DILocation(line: 858, column: 25, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4123, file: !479, line: 857, column: 31)
!4128 = !DILocation(line: 859, column: 13, scope: !4127)
!4129 = !DILocation(line: 860, column: 22, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4123, file: !479, line: 860, column: 22)
!4131 = !DILocation(line: 860, column: 24, scope: !4130)
!4132 = !DILocation(line: 860, column: 22, scope: !4123)
!4133 = !DILocation(line: 861, column: 25, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4130, file: !479, line: 860, column: 34)
!4135 = !DILocation(line: 862, column: 13, scope: !4134)
!4136 = !DILocation(line: 864, column: 25, scope: !4130)
!4137 = !DILocation(line: 865, column: 9, scope: !3999)
!4138 = !DILocation(line: 854, column: 47, scope: !3994)
!4139 = !DILocation(line: 854, column: 9, scope: !3994)
!4140 = !DILocation(line: 866, column: 29, scope: !711)
!4141 = !DILocation(line: 866, column: 15, scope: !711)
!4142 = !DILocation(line: 866, column: 13, scope: !711)
!4143 = !DILocation(line: 867, column: 13, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !711, file: !479, line: 867, column: 13)
!4145 = !DILocation(line: 867, column: 16, scope: !4144)
!4146 = !DILocation(line: 867, column: 13, scope: !711)
!4147 = !DILocation(line: 868, column: 13, scope: !4144)
!4148 = !DILocation(line: 869, column: 18, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !711, file: !479, line: 869, column: 9)
!4150 = !DILocation(line: 869, column: 16, scope: !4149)
!4151 = !DILocation(line: 869, column: 77, scope: !4149)
!4152 = !DILocation(line: 869, column: 60, scope: !4149)
!4153 = !DILocation(line: 869, column: 84, scope: !4149)
!4154 = !DILocation(line: 869, column: 90, scope: !4149)
!4155 = !DILocation(line: 869, column: 58, scope: !4149)
!4156 = !DILocation(line: 869, column: 148, scope: !4157)
!4157 = !DILexicalBlockFile(scope: !4149, file: !479, discriminator: 1)
!4158 = !DILocation(line: 869, column: 132, scope: !4149)
!4159 = !DILocation(line: 869, column: 154, scope: !4149)
!4160 = !DILocation(line: 869, column: 160, scope: !4149)
!4161 = !DILocation(line: 869, column: 102, scope: !4149)
!4162 = !DILocation(line: 869, column: 195, scope: !4163)
!4163 = !DILexicalBlockFile(scope: !4149, file: !479, discriminator: 3)
!4164 = !DILocation(line: 869, column: 178, scope: !4149)
!4165 = !DILocation(line: 869, column: 200, scope: !4149)
!4166 = !DILocation(line: 869, column: 170, scope: !4149)
!4167 = !DILocation(line: 869, column: 243, scope: !4168)
!4168 = !DILexicalBlockFile(scope: !4149, file: !479, discriminator: 4)
!4169 = !DILocation(line: 869, column: 217, scope: !4149)
!4170 = !DILocation(line: 869, column: 248, scope: !4149)
!4171 = !DILocation(line: 869, column: 209, scope: !4149)
!4172 = !DILocation(line: 869, column: 58, scope: !4173)
!4173 = !DILexicalBlockFile(scope: !4174, file: !479, discriminator: 6)
!4174 = !DILexicalBlockFile(scope: !4149, file: !479, discriminator: 5)
!4175 = !DILocation(line: 869, column: 295, scope: !4176)
!4176 = !DILexicalBlockFile(scope: !4149, file: !479, discriminator: 2)
!4177 = !DILocation(line: 869, column: 275, scope: !4149)
!4178 = !DILocation(line: 869, column: 302, scope: !4149)
!4179 = !DILocation(line: 869, column: 307, scope: !4149)
!4180 = !DILocation(line: 869, column: 30, scope: !4181)
!4181 = !DILexicalBlockFile(scope: !4182, file: !479, discriminator: 8)
!4182 = !DILexicalBlockFile(scope: !4149, file: !479, discriminator: 7)
!4183 = !DILocation(line: 869, column: 14, scope: !4149)
!4184 = !DILocation(line: 870, column: 13, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4149, file: !479, line: 869, column: 9)
!4186 = !DILocation(line: 870, column: 17, scope: !4185)
!4187 = !DILocation(line: 870, column: 15, scope: !4185)
!4188 = !DILocation(line: 869, column: 9, scope: !4149)
!4189 = !DILocation(line: 871, column: 106, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4185, file: !479, line: 870, column: 27)
!4191 = !DILocation(line: 871, column: 87, scope: !4190)
!4192 = !DILocation(line: 871, column: 117, scope: !4190)
!4193 = !DILocation(line: 871, column: 123, scope: !4190)
!4194 = !DILocation(line: 871, column: 129, scope: !4190)
!4195 = !DILocation(line: 871, column: 57, scope: !4190)
!4196 = !DILocation(line: 871, column: 474, scope: !4197)
!4197 = !DILexicalBlockFile(scope: !4190, file: !479, discriminator: 1)
!4198 = !DILocation(line: 871, column: 209, scope: !4190)
!4199 = !DILocation(line: 871, column: 191, scope: !4190)
!4200 = !DILocation(line: 871, column: 220, scope: !4190)
!4201 = !DILocation(line: 871, column: 226, scope: !4190)
!4202 = !DILocation(line: 871, column: 189, scope: !4190)
!4203 = !DILocation(line: 871, column: 285, scope: !4204)
!4204 = !DILexicalBlockFile(scope: !4190, file: !479, discriminator: 3)
!4205 = !DILocation(line: 871, column: 268, scope: !4190)
!4206 = !DILocation(line: 871, column: 295, scope: !4190)
!4207 = !DILocation(line: 871, column: 301, scope: !4190)
!4208 = !DILocation(line: 871, column: 238, scope: !4190)
!4209 = !DILocation(line: 871, column: 337, scope: !4210)
!4210 = !DILexicalBlockFile(scope: !4190, file: !479, discriminator: 5)
!4211 = !DILocation(line: 871, column: 319, scope: !4190)
!4212 = !DILocation(line: 871, column: 346, scope: !4190)
!4213 = !DILocation(line: 871, column: 311, scope: !4190)
!4214 = !DILocation(line: 871, column: 390, scope: !4215)
!4215 = !DILexicalBlockFile(scope: !4190, file: !479, discriminator: 6)
!4216 = !DILocation(line: 871, column: 363, scope: !4190)
!4217 = !DILocation(line: 871, column: 399, scope: !4190)
!4218 = !DILocation(line: 871, column: 355, scope: !4190)
!4219 = !DILocation(line: 871, column: 189, scope: !4220)
!4220 = !DILexicalBlockFile(scope: !4221, file: !479, discriminator: 8)
!4221 = !DILexicalBlockFile(scope: !4190, file: !479, discriminator: 7)
!4222 = !DILocation(line: 871, column: 447, scope: !4223)
!4223 = !DILexicalBlockFile(scope: !4190, file: !479, discriminator: 4)
!4224 = !DILocation(line: 871, column: 426, scope: !4190)
!4225 = !DILocation(line: 871, column: 458, scope: !4190)
!4226 = !DILocation(line: 871, column: 463, scope: !4190)
!4227 = !DILocation(line: 871, column: 155, scope: !4228)
!4228 = !DILexicalBlockFile(scope: !4229, file: !479, discriminator: 10)
!4229 = !DILexicalBlockFile(scope: !4190, file: !479, discriminator: 9)
!4230 = !DILocation(line: 871, column: 530, scope: !4231)
!4231 = !DILexicalBlockFile(scope: !4190, file: !479, discriminator: 2)
!4232 = !DILocation(line: 871, column: 511, scope: !4190)
!4233 = !DILocation(line: 871, column: 541, scope: !4190)
!4234 = !DILocation(line: 871, column: 547, scope: !4190)
!4235 = !DILocation(line: 871, column: 553, scope: !4190)
!4236 = !DILocation(line: 871, column: 481, scope: !4190)
!4237 = !DILocation(line: 871, column: 898, scope: !4238)
!4238 = !DILexicalBlockFile(scope: !4190, file: !479, discriminator: 12)
!4239 = !DILocation(line: 871, column: 633, scope: !4190)
!4240 = !DILocation(line: 871, column: 615, scope: !4190)
!4241 = !DILocation(line: 871, column: 644, scope: !4190)
!4242 = !DILocation(line: 871, column: 650, scope: !4190)
!4243 = !DILocation(line: 871, column: 613, scope: !4190)
!4244 = !DILocation(line: 871, column: 709, scope: !4245)
!4245 = !DILexicalBlockFile(scope: !4190, file: !479, discriminator: 14)
!4246 = !DILocation(line: 871, column: 692, scope: !4190)
!4247 = !DILocation(line: 871, column: 719, scope: !4190)
!4248 = !DILocation(line: 871, column: 725, scope: !4190)
!4249 = !DILocation(line: 871, column: 662, scope: !4190)
!4250 = !DILocation(line: 871, column: 761, scope: !4251)
!4251 = !DILexicalBlockFile(scope: !4190, file: !479, discriminator: 16)
!4252 = !DILocation(line: 871, column: 743, scope: !4190)
!4253 = !DILocation(line: 871, column: 770, scope: !4190)
!4254 = !DILocation(line: 871, column: 735, scope: !4190)
!4255 = !DILocation(line: 871, column: 814, scope: !4256)
!4256 = !DILexicalBlockFile(scope: !4190, file: !479, discriminator: 17)
!4257 = !DILocation(line: 871, column: 787, scope: !4190)
!4258 = !DILocation(line: 871, column: 823, scope: !4190)
!4259 = !DILocation(line: 871, column: 779, scope: !4190)
!4260 = !DILocation(line: 871, column: 613, scope: !4261)
!4261 = !DILexicalBlockFile(scope: !4262, file: !479, discriminator: 19)
!4262 = !DILexicalBlockFile(scope: !4190, file: !479, discriminator: 18)
!4263 = !DILocation(line: 871, column: 871, scope: !4264)
!4264 = !DILexicalBlockFile(scope: !4190, file: !479, discriminator: 15)
!4265 = !DILocation(line: 871, column: 850, scope: !4190)
!4266 = !DILocation(line: 871, column: 882, scope: !4190)
!4267 = !DILocation(line: 871, column: 887, scope: !4190)
!4268 = !DILocation(line: 871, column: 580, scope: !4269)
!4269 = !DILexicalBlockFile(scope: !4270, file: !479, discriminator: 21)
!4270 = !DILexicalBlockFile(scope: !4190, file: !479, discriminator: 20)
!4271 = !DILocation(line: 871, column: 579, scope: !4190)
!4272 = !DILocation(line: 871, column: 1223, scope: !4273)
!4273 = !DILexicalBlockFile(scope: !4190, file: !479, discriminator: 13)
!4274 = !DILocation(line: 871, column: 958, scope: !4190)
!4275 = !DILocation(line: 871, column: 940, scope: !4190)
!4276 = !DILocation(line: 871, column: 969, scope: !4190)
!4277 = !DILocation(line: 871, column: 975, scope: !4190)
!4278 = !DILocation(line: 871, column: 938, scope: !4190)
!4279 = !DILocation(line: 871, column: 1034, scope: !4280)
!4280 = !DILexicalBlockFile(scope: !4190, file: !479, discriminator: 23)
!4281 = !DILocation(line: 871, column: 1017, scope: !4190)
!4282 = !DILocation(line: 871, column: 1044, scope: !4190)
!4283 = !DILocation(line: 871, column: 1050, scope: !4190)
!4284 = !DILocation(line: 871, column: 987, scope: !4190)
!4285 = !DILocation(line: 871, column: 1086, scope: !4286)
!4286 = !DILexicalBlockFile(scope: !4190, file: !479, discriminator: 25)
!4287 = !DILocation(line: 871, column: 1068, scope: !4190)
!4288 = !DILocation(line: 871, column: 1095, scope: !4190)
!4289 = !DILocation(line: 871, column: 1060, scope: !4190)
!4290 = !DILocation(line: 871, column: 1139, scope: !4291)
!4291 = !DILexicalBlockFile(scope: !4190, file: !479, discriminator: 26)
!4292 = !DILocation(line: 871, column: 1112, scope: !4190)
!4293 = !DILocation(line: 871, column: 1148, scope: !4190)
!4294 = !DILocation(line: 871, column: 1104, scope: !4190)
!4295 = !DILocation(line: 871, column: 938, scope: !4296)
!4296 = !DILexicalBlockFile(scope: !4297, file: !479, discriminator: 28)
!4297 = !DILexicalBlockFile(scope: !4190, file: !479, discriminator: 27)
!4298 = !DILocation(line: 871, column: 1196, scope: !4299)
!4299 = !DILexicalBlockFile(scope: !4190, file: !479, discriminator: 24)
!4300 = !DILocation(line: 871, column: 1175, scope: !4190)
!4301 = !DILocation(line: 871, column: 1207, scope: !4190)
!4302 = !DILocation(line: 871, column: 1212, scope: !4190)
!4303 = !DILocation(line: 871, column: 905, scope: !4304)
!4304 = !DILexicalBlockFile(scope: !4305, file: !479, discriminator: 30)
!4305 = !DILexicalBlockFile(scope: !4190, file: !479, discriminator: 29)
!4306 = !DILocation(line: 871, column: 904, scope: !4190)
!4307 = !DILocation(line: 871, column: 57, scope: !4308)
!4308 = !DILexicalBlockFile(scope: !4309, file: !479, discriminator: 31)
!4309 = !DILexicalBlockFile(scope: !4190, file: !479, discriminator: 22)
!4310 = !DILocation(line: 871, column: 15, scope: !4311)
!4311 = !DILexicalBlockFile(scope: !4312, file: !479, discriminator: 32)
!4312 = !DILexicalBlockFile(scope: !4190, file: !479, discriminator: 11)
!4313 = !DILocation(line: 872, column: 18, scope: !4190)
!4314 = !DILocation(line: 872, column: 21, scope: !4190)
!4315 = !DILocation(line: 873, column: 17, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4190, file: !479, line: 873, column: 17)
!4317 = !DILocation(line: 873, column: 19, scope: !4316)
!4318 = !DILocation(line: 873, column: 17, scope: !4190)
!4319 = !DILocation(line: 874, column: 22, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4316, file: !479, line: 873, column: 34)
!4321 = !DILocation(line: 874, column: 25, scope: !4320)
!4322 = !DILocation(line: 875, column: 41, scope: !4320)
!4323 = !DILocation(line: 875, column: 42, scope: !4320)
!4324 = !DILocation(line: 875, column: 47, scope: !4320)
!4325 = !DILocation(line: 875, column: 27, scope: !4320)
!4326 = !DILocation(line: 875, column: 22, scope: !4320)
!4327 = !DILocation(line: 875, column: 25, scope: !4320)
!4328 = !DILocation(line: 876, column: 41, scope: !4320)
!4329 = !DILocation(line: 876, column: 42, scope: !4320)
!4330 = !DILocation(line: 876, column: 47, scope: !4320)
!4331 = !DILocation(line: 876, column: 27, scope: !4320)
!4332 = !DILocation(line: 876, column: 22, scope: !4320)
!4333 = !DILocation(line: 876, column: 25, scope: !4320)
!4334 = !DILocation(line: 877, column: 41, scope: !4320)
!4335 = !DILocation(line: 877, column: 42, scope: !4320)
!4336 = !DILocation(line: 877, column: 47, scope: !4320)
!4337 = !DILocation(line: 877, column: 27, scope: !4320)
!4338 = !DILocation(line: 877, column: 22, scope: !4320)
!4339 = !DILocation(line: 877, column: 25, scope: !4320)
!4340 = !DILocation(line: 878, column: 41, scope: !4320)
!4341 = !DILocation(line: 878, column: 42, scope: !4320)
!4342 = !DILocation(line: 878, column: 47, scope: !4320)
!4343 = !DILocation(line: 878, column: 27, scope: !4320)
!4344 = !DILocation(line: 878, column: 22, scope: !4320)
!4345 = !DILocation(line: 878, column: 25, scope: !4320)
!4346 = !DILocation(line: 879, column: 41, scope: !4320)
!4347 = !DILocation(line: 879, column: 42, scope: !4320)
!4348 = !DILocation(line: 879, column: 47, scope: !4320)
!4349 = !DILocation(line: 879, column: 27, scope: !4320)
!4350 = !DILocation(line: 879, column: 22, scope: !4320)
!4351 = !DILocation(line: 879, column: 25, scope: !4320)
!4352 = !DILocation(line: 880, column: 41, scope: !4320)
!4353 = !DILocation(line: 880, column: 42, scope: !4320)
!4354 = !DILocation(line: 880, column: 46, scope: !4320)
!4355 = !DILocation(line: 880, column: 27, scope: !4320)
!4356 = !DILocation(line: 880, column: 22, scope: !4320)
!4357 = !DILocation(line: 880, column: 25, scope: !4320)
!4358 = !DILocation(line: 881, column: 13, scope: !4320)
!4359 = !DILocation(line: 882, column: 22, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4316, file: !479, line: 882, column: 22)
!4361 = !DILocation(line: 882, column: 24, scope: !4360)
!4362 = !DILocation(line: 882, column: 22, scope: !4316)
!4363 = !DILocation(line: 883, column: 22, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4360, file: !479, line: 882, column: 34)
!4365 = !DILocation(line: 883, column: 25, scope: !4364)
!4366 = !DILocation(line: 884, column: 41, scope: !4364)
!4367 = !DILocation(line: 884, column: 42, scope: !4364)
!4368 = !DILocation(line: 884, column: 47, scope: !4364)
!4369 = !DILocation(line: 884, column: 27, scope: !4364)
!4370 = !DILocation(line: 884, column: 22, scope: !4364)
!4371 = !DILocation(line: 884, column: 25, scope: !4364)
!4372 = !DILocation(line: 885, column: 41, scope: !4364)
!4373 = !DILocation(line: 885, column: 42, scope: !4364)
!4374 = !DILocation(line: 885, column: 46, scope: !4364)
!4375 = !DILocation(line: 885, column: 27, scope: !4364)
!4376 = !DILocation(line: 885, column: 22, scope: !4364)
!4377 = !DILocation(line: 885, column: 25, scope: !4364)
!4378 = !DILocation(line: 886, column: 13, scope: !4364)
!4379 = !DILocation(line: 888, column: 22, scope: !4360)
!4380 = !DILocation(line: 888, column: 25, scope: !4360)
!4381 = !DILocation(line: 889, column: 37, scope: !4190)
!4382 = !DILocation(line: 889, column: 38, scope: !4190)
!4383 = !DILocation(line: 889, column: 42, scope: !4190)
!4384 = !DILocation(line: 889, column: 23, scope: !4190)
!4385 = !DILocation(line: 889, column: 18, scope: !4190)
!4386 = !DILocation(line: 889, column: 21, scope: !4190)
!4387 = !DILocation(line: 890, column: 36, scope: !4190)
!4388 = !DILocation(line: 890, column: 37, scope: !4190)
!4389 = !DILocation(line: 890, column: 23, scope: !4190)
!4390 = !DILocation(line: 890, column: 18, scope: !4190)
!4391 = !DILocation(line: 890, column: 21, scope: !4190)
!4392 = !DILocation(line: 891, column: 9, scope: !4190)
!4393 = !DILocation(line: 870, column: 22, scope: !4185)
!4394 = !DILocation(line: 869, column: 9, scope: !4185)
!4395 = !DILocation(line: 894, column: 42, scope: !711)
!4396 = !DILocation(line: 894, column: 47, scope: !711)
!4397 = !DILocation(line: 894, column: 20, scope: !711)
!4398 = !DILocation(line: 894, column: 18, scope: !711)
!4399 = !DILocation(line: 895, column: 9, scope: !711)
!4400 = !DILocation(line: 895, column: 14, scope: !4401)
!4401 = !DILexicalBlockFile(scope: !722, file: !479, discriminator: 1)
!4402 = !DILocation(line: 895, column: 24, scope: !722)
!4403 = !DILocation(line: 895, column: 54, scope: !722)
!4404 = !DILocation(line: 895, column: 71, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !722, file: !479, line: 895, column: 68)
!4406 = !DILocation(line: 895, column: 88, scope: !4405)
!4407 = !DILocation(line: 895, column: 68, scope: !4405)
!4408 = !DILocation(line: 895, column: 98, scope: !4405)
!4409 = !DILocation(line: 895, column: 68, scope: !722)
!4410 = !DILocation(line: 895, column: 68, scope: !4411)
!4411 = !DILexicalBlockFile(scope: !722, file: !479, discriminator: 2)
!4412 = !DILocation(line: 895, column: 129, scope: !4413)
!4413 = !DILexicalBlockFile(scope: !4405, file: !479, discriminator: 3)
!4414 = !DILocation(line: 895, column: 147, scope: !4405)
!4415 = !DILocation(line: 895, column: 157, scope: !4405)
!4416 = !DILocation(line: 895, column: 182, scope: !4405)
!4417 = !DILocation(line: 895, column: 113, scope: !4405)
!4418 = !DILocation(line: 895, column: 201, scope: !4419)
!4419 = !DILexicalBlockFile(scope: !711, file: !479, discriminator: 4)
!4420 = !DILocation(line: 895, column: 201, scope: !722)
!4421 = !DILocation(line: 895, column: 201, scope: !4422)
!4422 = !DILexicalBlockFile(scope: !722, file: !479, discriminator: 5)
!4423 = !DILocation(line: 896, column: 16, scope: !711)
!4424 = !DILocation(line: 896, column: 9, scope: !711)
!4425 = !DILocation(line: 897, column: 5, scope: !712)
!4426 = !DILocation(line: 899, column: 30, scope: !4427)
!4427 = distinct !DILexicalBlock(scope: !712, file: !479, line: 898, column: 10)
!4428 = !DILocation(line: 899, column: 9, scope: !4427)
!4429 = !DILocation(line: 900, column: 9, scope: !4427)
!4430 = !DILocation(line: 902, column: 1, scope: !707)
!4431 = !DILocation(line: 206, column: 32, scope: !827)
!4432 = !DILocation(line: 207, column: 34, scope: !827)
!4433 = !DILocation(line: 209, column: 5, scope: !827)
!4434 = !DILocation(line: 209, column: 15, scope: !827)
!4435 = !DILocation(line: 211, column: 29, scope: !827)
!4436 = !DILocation(line: 211, column: 36, scope: !827)
!4437 = !DILocation(line: 211, column: 26, scope: !827)
!4438 = !DILocation(line: 211, column: 24, scope: !827)
!4439 = !DILocation(line: 211, column: 12, scope: !827)
!4440 = !DILocation(line: 211, column: 10, scope: !827)
!4441 = !DILocation(line: 212, column: 9, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !827, file: !479, line: 212, column: 9)
!4443 = !DILocation(line: 212, column: 14, scope: !4442)
!4444 = !DILocation(line: 212, column: 9, scope: !827)
!4445 = !DILocation(line: 213, column: 9, scope: !4442)
!4446 = !DILocation(line: 214, column: 21, scope: !827)
!4447 = !DILocation(line: 214, column: 31, scope: !827)
!4448 = !DILocation(line: 214, column: 40, scope: !827)
!4449 = !DILocation(line: 215, column: 46, scope: !827)
!4450 = !DILocation(line: 215, column: 25, scope: !827)
!4451 = !DILocation(line: 215, column: 7, scope: !827)
!4452 = !DILocation(line: 215, column: 33, scope: !827)
!4453 = !DILocation(line: 215, column: 6, scope: !827)
!4454 = !DILocation(line: 215, column: 44, scope: !827)
!4455 = !DILocation(line: 216, column: 9, scope: !834)
!4456 = !DILocation(line: 216, column: 9, scope: !827)
!4457 = !DILocation(line: 217, column: 9, scope: !833)
!4458 = !DILocation(line: 217, column: 19, scope: !833)
!4459 = !DILocation(line: 219, column: 34, scope: !833)
!4460 = !DILocation(line: 219, column: 13, scope: !833)
!4461 = !DILocation(line: 219, column: 11, scope: !833)
!4462 = !DILocation(line: 220, column: 13, scope: !838)
!4463 = !DILocation(line: 220, column: 15, scope: !838)
!4464 = !DILocation(line: 220, column: 13, scope: !833)
!4465 = !DILocation(line: 221, column: 13, scope: !837)
!4466 = !DILocation(line: 221, column: 18, scope: !4467)
!4467 = !DILexicalBlockFile(scope: !836, file: !479, discriminator: 1)
!4468 = !DILocation(line: 221, column: 28, scope: !836)
!4469 = !DILocation(line: 221, column: 58, scope: !836)
!4470 = !DILocation(line: 221, column: 73, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !836, file: !479, line: 221, column: 70)
!4472 = !DILocation(line: 221, column: 90, scope: !4471)
!4473 = !DILocation(line: 221, column: 70, scope: !4471)
!4474 = !DILocation(line: 221, column: 100, scope: !4471)
!4475 = !DILocation(line: 221, column: 70, scope: !836)
!4476 = !DILocation(line: 221, column: 70, scope: !4477)
!4477 = !DILexicalBlockFile(scope: !836, file: !479, discriminator: 2)
!4478 = !DILocation(line: 221, column: 131, scope: !4479)
!4479 = !DILexicalBlockFile(scope: !4471, file: !479, discriminator: 3)
!4480 = !DILocation(line: 221, column: 149, scope: !4471)
!4481 = !DILocation(line: 221, column: 159, scope: !4471)
!4482 = !DILocation(line: 221, column: 184, scope: !4471)
!4483 = !DILocation(line: 221, column: 115, scope: !4471)
!4484 = !DILocation(line: 221, column: 203, scope: !4485)
!4485 = !DILexicalBlockFile(scope: !837, file: !479, discriminator: 4)
!4486 = !DILocation(line: 221, column: 203, scope: !836)
!4487 = !DILocation(line: 221, column: 203, scope: !4488)
!4488 = !DILexicalBlockFile(scope: !836, file: !479, discriminator: 5)
!4489 = !DILocation(line: 222, column: 13, scope: !837)
!4490 = !DILocation(line: 224, column: 50, scope: !833)
!4491 = !DILocation(line: 224, column: 29, scope: !833)
!4492 = !DILocation(line: 224, column: 11, scope: !833)
!4493 = !DILocation(line: 224, column: 37, scope: !833)
!4494 = !DILocation(line: 224, column: 10, scope: !833)
!4495 = !DILocation(line: 224, column: 48, scope: !833)
!4496 = !DILocation(line: 225, column: 5, scope: !834)
!4497 = !DILocation(line: 225, column: 5, scope: !4498)
!4498 = !DILexicalBlockFile(scope: !834, file: !479, discriminator: 1)
!4499 = !DILocation(line: 225, column: 5, scope: !833)
!4500 = !DILocation(line: 226, column: 12, scope: !827)
!4501 = !DILocation(line: 226, column: 5, scope: !827)
!4502 = !DILocation(line: 227, column: 1, scope: !827)
!4503 = !DILocation(line: 368, column: 30, scope: !839)
!4504 = !DILocation(line: 369, column: 30, scope: !839)
!4505 = !DILocation(line: 376, column: 28, scope: !839)
!4506 = !DILocation(line: 376, column: 39, scope: !839)
!4507 = !DILocation(line: 375, column: 5, scope: !839)
!4508 = !DILocation(line: 377, column: 1, scope: !839)
!4509 = !DILocation(line: 543, column: 45, scope: !878)
!4510 = !DILocation(line: 544, column: 45, scope: !878)
!4511 = !DILocation(line: 545, column: 37, scope: !878)
!4512 = !DILocation(line: 547, column: 5, scope: !878)
!4513 = !DILocation(line: 547, column: 15, scope: !878)
!4514 = !DILocation(line: 548, column: 5, scope: !878)
!4515 = !DILocation(line: 548, column: 15, scope: !878)
!4516 = !DILocation(line: 550, column: 41, scope: !878)
!4517 = !DILocation(line: 550, column: 51, scope: !878)
!4518 = !DILocation(line: 550, column: 13, scope: !878)
!4519 = !DILocation(line: 550, column: 11, scope: !878)
!4520 = !DILocation(line: 551, column: 9, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !878, file: !479, line: 551, column: 9)
!4522 = !DILocation(line: 551, column: 15, scope: !4521)
!4523 = !DILocation(line: 551, column: 9, scope: !878)
!4524 = !DILocation(line: 552, column: 9, scope: !4521)
!4525 = !DILocation(line: 554, column: 46, scope: !878)
!4526 = !DILocation(line: 554, column: 10, scope: !878)
!4527 = !DILocation(line: 554, column: 29, scope: !878)
!4528 = !DILocation(line: 554, column: 11, scope: !878)
!4529 = !DILocation(line: 554, column: 38, scope: !878)
!4530 = !DILocation(line: 554, column: 7, scope: !878)
!4531 = !DILocation(line: 555, column: 21, scope: !878)
!4532 = !DILocation(line: 555, column: 26, scope: !878)
!4533 = !DILocation(line: 555, column: 35, scope: !878)
!4534 = !DILocation(line: 556, column: 5, scope: !878)
!4535 = !DILocation(line: 556, column: 10, scope: !4536)
!4536 = !DILexicalBlockFile(scope: !888, file: !479, discriminator: 1)
!4537 = !DILocation(line: 556, column: 20, scope: !888)
!4538 = !DILocation(line: 556, column: 50, scope: !888)
!4539 = !DILocation(line: 556, column: 66, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !888, file: !479, line: 556, column: 63)
!4541 = !DILocation(line: 556, column: 83, scope: !4540)
!4542 = !DILocation(line: 556, column: 63, scope: !4540)
!4543 = !DILocation(line: 556, column: 93, scope: !4540)
!4544 = !DILocation(line: 556, column: 63, scope: !888)
!4545 = !DILocation(line: 556, column: 63, scope: !4546)
!4546 = !DILexicalBlockFile(scope: !888, file: !479, discriminator: 2)
!4547 = !DILocation(line: 556, column: 124, scope: !4548)
!4548 = !DILexicalBlockFile(scope: !4540, file: !479, discriminator: 3)
!4549 = !DILocation(line: 556, column: 142, scope: !4540)
!4550 = !DILocation(line: 556, column: 152, scope: !4540)
!4551 = !DILocation(line: 556, column: 177, scope: !4540)
!4552 = !DILocation(line: 556, column: 108, scope: !4540)
!4553 = !DILocation(line: 556, column: 196, scope: !4554)
!4554 = !DILexicalBlockFile(scope: !878, file: !479, discriminator: 4)
!4555 = !DILocation(line: 556, column: 196, scope: !888)
!4556 = !DILocation(line: 556, column: 196, scope: !4557)
!4557 = !DILexicalBlockFile(scope: !888, file: !479, discriminator: 5)
!4558 = !DILocation(line: 557, column: 12, scope: !878)
!4559 = !DILocation(line: 557, column: 5, scope: !878)
!4560 = !DILocation(line: 558, column: 1, scope: !878)
!4561 = !DILocation(line: 1197, column: 42, scope: !928)
!4562 = !DILocation(line: 1197, column: 58, scope: !928)
!4563 = !DILocation(line: 1199, column: 33, scope: !928)
!4564 = !DILocation(line: 1199, column: 12, scope: !928)
!4565 = !DILocation(line: 1199, column: 5, scope: !928)
!4566 = !DILocation(line: 1203, column: 42, scope: !932)
!4567 = !DILocation(line: 1203, column: 58, scope: !932)
!4568 = !DILocation(line: 1205, column: 33, scope: !932)
!4569 = !DILocation(line: 1205, column: 12, scope: !932)
!4570 = !DILocation(line: 1205, column: 5, scope: !932)
!4571 = !DILocation(line: 1209, column: 43, scope: !936)
!4572 = !DILocation(line: 1209, column: 59, scope: !936)
!4573 = !DILocation(line: 1211, column: 34, scope: !936)
!4574 = !DILocation(line: 1211, column: 12, scope: !936)
!4575 = !DILocation(line: 1211, column: 5, scope: !936)
!4576 = !DILocation(line: 1215, column: 53, scope: !940)
!4577 = !DILocation(line: 1215, column: 69, scope: !940)
!4578 = !DILocation(line: 1217, column: 44, scope: !940)
!4579 = !DILocation(line: 1217, column: 12, scope: !940)
!4580 = !DILocation(line: 1217, column: 5, scope: !940)
!4581 = !DILocation(line: 1221, column: 52, scope: !944)
!4582 = !DILocation(line: 1221, column: 68, scope: !944)
!4583 = !DILocation(line: 1223, column: 43, scope: !944)
!4584 = !DILocation(line: 1223, column: 12, scope: !944)
!4585 = !DILocation(line: 1223, column: 5, scope: !944)
!4586 = !DILocation(line: 1226, column: 49, scope: !948)
!4587 = !DILocation(line: 1226, column: 65, scope: !948)
!4588 = !DILocation(line: 1228, column: 40, scope: !948)
!4589 = !DILocation(line: 1228, column: 12, scope: !948)
!4590 = !DILocation(line: 1228, column: 5, scope: !948)
!4591 = !DILocation(line: 1231, column: 51, scope: !1027)
!4592 = !DILocation(line: 1231, column: 67, scope: !1027)
!4593 = !DILocation(line: 1233, column: 42, scope: !1027)
!4594 = !DILocation(line: 1233, column: 12, scope: !1027)
!4595 = !DILocation(line: 1233, column: 5, scope: !1027)
!4596 = !DILocation(line: 966, column: 39, scope: !952)
!4597 = !DILocation(line: 968, column: 5, scope: !952)
!4598 = !DILocation(line: 968, column: 15, scope: !952)
!4599 = !DILocation(line: 969, column: 5, scope: !952)
!4600 = !DILocation(line: 969, column: 15, scope: !952)
!4601 = !DILocation(line: 970, column: 5, scope: !952)
!4602 = !DILocation(line: 970, column: 15, scope: !952)
!4603 = !DILocation(line: 971, column: 5, scope: !952)
!4604 = !DILocation(line: 971, column: 11, scope: !952)
!4605 = !DILocation(line: 972, column: 5, scope: !952)
!4606 = !DILocation(line: 972, column: 9, scope: !952)
!4607 = !DILocation(line: 973, column: 5, scope: !952)
!4608 = !DILocation(line: 973, column: 9, scope: !952)
!4609 = !DILocation(line: 974, column: 5, scope: !952)
!4610 = !DILocation(line: 974, column: 16, scope: !952)
!4611 = !DILocation(line: 975, column: 5, scope: !952)
!4612 = !DILocation(line: 975, column: 16, scope: !952)
!4613 = !DILocation(line: 976, column: 5, scope: !952)
!4614 = !DILocation(line: 976, column: 16, scope: !952)
!4615 = !DILocation(line: 977, column: 5, scope: !952)
!4616 = !DILocation(line: 977, column: 15, scope: !952)
!4617 = !DILocation(line: 978, column: 29, scope: !967)
!4618 = !DILocation(line: 978, column: 34, scope: !967)
!4619 = !DILocation(line: 978, column: 9, scope: !967)
!4620 = !DILocation(line: 978, column: 9, scope: !952)
!4621 = !DILocation(line: 979, column: 9, scope: !966)
!4622 = !DILocation(line: 979, column: 24, scope: !966)
!4623 = !DILocation(line: 980, column: 43, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !966, file: !479, line: 980, column: 13)
!4625 = !DILocation(line: 980, column: 13, scope: !4624)
!4626 = !DILocation(line: 980, column: 13, scope: !966)
!4627 = !DILocation(line: 981, column: 13, scope: !4624)
!4628 = !DILocation(line: 982, column: 41, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !966, file: !479, line: 982, column: 13)
!4630 = !DILocation(line: 982, column: 13, scope: !4629)
!4631 = !DILocation(line: 982, column: 13, scope: !966)
!4632 = !DILocation(line: 983, column: 13, scope: !4629)
!4633 = !DILocation(line: 984, column: 55, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !966, file: !479, line: 984, column: 13)
!4635 = !DILocation(line: 984, column: 24, scope: !4634)
!4636 = !DILocation(line: 984, column: 22, scope: !4634)
!4637 = !DILocation(line: 984, column: 13, scope: !966)
!4638 = !DILocation(line: 985, column: 13, scope: !4634)
!4639 = !DILocation(line: 986, column: 57, scope: !971)
!4640 = !DILocation(line: 986, column: 24, scope: !971)
!4641 = !DILocation(line: 986, column: 22, scope: !971)
!4642 = !DILocation(line: 986, column: 13, scope: !966)
!4643 = !DILocation(line: 987, column: 13, scope: !970)
!4644 = !DILocation(line: 987, column: 18, scope: !4645)
!4645 = !DILexicalBlockFile(scope: !969, file: !479, discriminator: 1)
!4646 = !DILocation(line: 987, column: 28, scope: !969)
!4647 = !DILocation(line: 987, column: 58, scope: !969)
!4648 = !DILocation(line: 987, column: 75, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !969, file: !479, line: 987, column: 72)
!4650 = !DILocation(line: 987, column: 92, scope: !4649)
!4651 = !DILocation(line: 987, column: 72, scope: !4649)
!4652 = !DILocation(line: 987, column: 102, scope: !4649)
!4653 = !DILocation(line: 987, column: 72, scope: !969)
!4654 = !DILocation(line: 987, column: 72, scope: !4655)
!4655 = !DILexicalBlockFile(scope: !969, file: !479, discriminator: 2)
!4656 = !DILocation(line: 987, column: 133, scope: !4657)
!4657 = !DILexicalBlockFile(scope: !4649, file: !479, discriminator: 3)
!4658 = !DILocation(line: 987, column: 151, scope: !4649)
!4659 = !DILocation(line: 987, column: 161, scope: !4649)
!4660 = !DILocation(line: 987, column: 186, scope: !4649)
!4661 = !DILocation(line: 987, column: 117, scope: !4649)
!4662 = !DILocation(line: 987, column: 205, scope: !4663)
!4663 = !DILexicalBlockFile(scope: !970, file: !479, discriminator: 4)
!4664 = !DILocation(line: 987, column: 205, scope: !969)
!4665 = !DILocation(line: 987, column: 205, scope: !4666)
!4666 = !DILexicalBlockFile(scope: !969, file: !479, discriminator: 5)
!4667 = !DILocation(line: 988, column: 13, scope: !970)
!4668 = !DILocation(line: 990, column: 43, scope: !975)
!4669 = !DILocation(line: 990, column: 26, scope: !975)
!4670 = !DILocation(line: 990, column: 24, scope: !975)
!4671 = !DILocation(line: 990, column: 13, scope: !966)
!4672 = !DILocation(line: 991, column: 13, scope: !974)
!4673 = !DILocation(line: 991, column: 18, scope: !4674)
!4674 = !DILexicalBlockFile(scope: !973, file: !479, discriminator: 1)
!4675 = !DILocation(line: 991, column: 28, scope: !973)
!4676 = !DILocation(line: 991, column: 58, scope: !973)
!4677 = !DILocation(line: 991, column: 75, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !973, file: !479, line: 991, column: 72)
!4679 = !DILocation(line: 991, column: 92, scope: !4678)
!4680 = !DILocation(line: 991, column: 72, scope: !4678)
!4681 = !DILocation(line: 991, column: 102, scope: !4678)
!4682 = !DILocation(line: 991, column: 72, scope: !973)
!4683 = !DILocation(line: 991, column: 72, scope: !4684)
!4684 = !DILexicalBlockFile(scope: !973, file: !479, discriminator: 2)
!4685 = !DILocation(line: 991, column: 133, scope: !4686)
!4686 = !DILexicalBlockFile(scope: !4678, file: !479, discriminator: 3)
!4687 = !DILocation(line: 991, column: 151, scope: !4678)
!4688 = !DILocation(line: 991, column: 161, scope: !4678)
!4689 = !DILocation(line: 991, column: 186, scope: !4678)
!4690 = !DILocation(line: 991, column: 117, scope: !4678)
!4691 = !DILocation(line: 991, column: 205, scope: !4692)
!4692 = !DILexicalBlockFile(scope: !974, file: !479, discriminator: 4)
!4693 = !DILocation(line: 991, column: 205, scope: !973)
!4694 = !DILocation(line: 991, column: 205, scope: !4695)
!4695 = !DILexicalBlockFile(scope: !973, file: !479, discriminator: 5)
!4696 = !DILocation(line: 992, column: 13, scope: !974)
!4697 = !DILocation(line: 992, column: 18, scope: !4698)
!4698 = !DILexicalBlockFile(scope: !977, file: !479, discriminator: 1)
!4699 = !DILocation(line: 992, column: 28, scope: !977)
!4700 = !DILocation(line: 992, column: 58, scope: !977)
!4701 = !DILocation(line: 992, column: 75, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !977, file: !479, line: 992, column: 72)
!4703 = !DILocation(line: 992, column: 92, scope: !4702)
!4704 = !DILocation(line: 992, column: 72, scope: !4702)
!4705 = !DILocation(line: 992, column: 102, scope: !4702)
!4706 = !DILocation(line: 992, column: 72, scope: !977)
!4707 = !DILocation(line: 992, column: 72, scope: !4708)
!4708 = !DILexicalBlockFile(scope: !977, file: !479, discriminator: 2)
!4709 = !DILocation(line: 992, column: 133, scope: !4710)
!4710 = !DILexicalBlockFile(scope: !4702, file: !479, discriminator: 3)
!4711 = !DILocation(line: 992, column: 151, scope: !4702)
!4712 = !DILocation(line: 992, column: 161, scope: !4702)
!4713 = !DILocation(line: 992, column: 186, scope: !4702)
!4714 = !DILocation(line: 992, column: 117, scope: !4702)
!4715 = !DILocation(line: 992, column: 205, scope: !4692)
!4716 = !DILocation(line: 992, column: 205, scope: !977)
!4717 = !DILocation(line: 992, column: 205, scope: !4718)
!4718 = !DILexicalBlockFile(scope: !977, file: !479, discriminator: 5)
!4719 = !DILocation(line: 993, column: 13, scope: !974)
!4720 = !DILocation(line: 995, column: 38, scope: !966)
!4721 = !DILocation(line: 995, column: 16, scope: !966)
!4722 = !DILocation(line: 995, column: 14, scope: !966)
!4723 = !DILocation(line: 996, column: 9, scope: !966)
!4724 = !DILocation(line: 996, column: 14, scope: !4725)
!4725 = !DILexicalBlockFile(scope: !979, file: !479, discriminator: 1)
!4726 = !DILocation(line: 996, column: 24, scope: !979)
!4727 = !DILocation(line: 996, column: 54, scope: !979)
!4728 = !DILocation(line: 996, column: 71, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !979, file: !479, line: 996, column: 68)
!4730 = !DILocation(line: 996, column: 88, scope: !4729)
!4731 = !DILocation(line: 996, column: 68, scope: !4729)
!4732 = !DILocation(line: 996, column: 98, scope: !4729)
!4733 = !DILocation(line: 996, column: 68, scope: !979)
!4734 = !DILocation(line: 996, column: 68, scope: !4735)
!4735 = !DILexicalBlockFile(scope: !979, file: !479, discriminator: 2)
!4736 = !DILocation(line: 996, column: 129, scope: !4737)
!4737 = !DILexicalBlockFile(scope: !4729, file: !479, discriminator: 3)
!4738 = !DILocation(line: 996, column: 147, scope: !4729)
!4739 = !DILocation(line: 996, column: 157, scope: !4729)
!4740 = !DILocation(line: 996, column: 182, scope: !4729)
!4741 = !DILocation(line: 996, column: 113, scope: !4729)
!4742 = !DILocation(line: 996, column: 201, scope: !4743)
!4743 = !DILexicalBlockFile(scope: !966, file: !479, discriminator: 4)
!4744 = !DILocation(line: 996, column: 201, scope: !979)
!4745 = !DILocation(line: 996, column: 201, scope: !4746)
!4746 = !DILexicalBlockFile(scope: !979, file: !479, discriminator: 5)
!4747 = !DILocation(line: 998, column: 53, scope: !966)
!4748 = !DILocation(line: 998, column: 65, scope: !966)
!4749 = !DILocation(line: 998, column: 69, scope: !966)
!4750 = !DILocation(line: 998, column: 68, scope: !966)
!4751 = !DILocation(line: 998, column: 63, scope: !966)
!4752 = !DILocation(line: 998, column: 15, scope: !966)
!4753 = !DILocation(line: 998, column: 13, scope: !966)
!4754 = !DILocation(line: 999, column: 14, scope: !983)
!4755 = !DILocation(line: 999, column: 13, scope: !966)
!4756 = !DILocation(line: 1000, column: 13, scope: !982)
!4757 = !DILocation(line: 1000, column: 18, scope: !4758)
!4758 = !DILexicalBlockFile(scope: !981, file: !479, discriminator: 1)
!4759 = !DILocation(line: 1000, column: 28, scope: !981)
!4760 = !DILocation(line: 1000, column: 58, scope: !981)
!4761 = !DILocation(line: 1000, column: 75, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !981, file: !479, line: 1000, column: 72)
!4763 = !DILocation(line: 1000, column: 92, scope: !4762)
!4764 = !DILocation(line: 1000, column: 72, scope: !4762)
!4765 = !DILocation(line: 1000, column: 102, scope: !4762)
!4766 = !DILocation(line: 1000, column: 72, scope: !981)
!4767 = !DILocation(line: 1000, column: 72, scope: !4768)
!4768 = !DILexicalBlockFile(scope: !981, file: !479, discriminator: 2)
!4769 = !DILocation(line: 1000, column: 133, scope: !4770)
!4770 = !DILexicalBlockFile(scope: !4762, file: !479, discriminator: 3)
!4771 = !DILocation(line: 1000, column: 151, scope: !4762)
!4772 = !DILocation(line: 1000, column: 161, scope: !4762)
!4773 = !DILocation(line: 1000, column: 186, scope: !4762)
!4774 = !DILocation(line: 1000, column: 117, scope: !4762)
!4775 = !DILocation(line: 1000, column: 205, scope: !4776)
!4776 = !DILexicalBlockFile(scope: !982, file: !479, discriminator: 4)
!4777 = !DILocation(line: 1000, column: 205, scope: !981)
!4778 = !DILocation(line: 1000, column: 205, scope: !4779)
!4779 = !DILexicalBlockFile(scope: !981, file: !479, discriminator: 5)
!4780 = !DILocation(line: 1001, column: 13, scope: !982)
!4781 = !DILocation(line: 1003, column: 49, scope: !966)
!4782 = !DILocation(line: 1003, column: 32, scope: !966)
!4783 = !DILocation(line: 1003, column: 14, scope: !966)
!4784 = !DILocation(line: 1004, column: 18, scope: !987)
!4785 = !DILocation(line: 1004, column: 16, scope: !987)
!4786 = !DILocation(line: 1004, column: 14, scope: !987)
!4787 = !DILocation(line: 1004, column: 25, scope: !4788)
!4788 = !DILexicalBlockFile(scope: !4789, file: !479, discriminator: 2)
!4789 = !DILexicalBlockFile(scope: !986, file: !479, discriminator: 1)
!4790 = !DILocation(line: 1004, column: 29, scope: !986)
!4791 = !DILocation(line: 1004, column: 27, scope: !986)
!4792 = !DILocation(line: 1004, column: 9, scope: !987)
!4793 = !DILocation(line: 1006, column: 13, scope: !985)
!4794 = !DILocation(line: 1006, column: 21, scope: !985)
!4795 = !DILocation(line: 1006, column: 115, scope: !985)
!4796 = !DILocation(line: 1006, column: 96, scope: !985)
!4797 = !DILocation(line: 1006, column: 126, scope: !985)
!4798 = !DILocation(line: 1006, column: 132, scope: !985)
!4799 = !DILocation(line: 1006, column: 138, scope: !985)
!4800 = !DILocation(line: 1006, column: 66, scope: !985)
!4801 = !DILocation(line: 1006, column: 483, scope: !4802)
!4802 = !DILexicalBlockFile(scope: !985, file: !479, discriminator: 1)
!4803 = !DILocation(line: 1006, column: 218, scope: !985)
!4804 = !DILocation(line: 1006, column: 200, scope: !985)
!4805 = !DILocation(line: 1006, column: 229, scope: !985)
!4806 = !DILocation(line: 1006, column: 235, scope: !985)
!4807 = !DILocation(line: 1006, column: 198, scope: !985)
!4808 = !DILocation(line: 1006, column: 294, scope: !4809)
!4809 = !DILexicalBlockFile(scope: !985, file: !479, discriminator: 3)
!4810 = !DILocation(line: 1006, column: 277, scope: !985)
!4811 = !DILocation(line: 1006, column: 304, scope: !985)
!4812 = !DILocation(line: 1006, column: 310, scope: !985)
!4813 = !DILocation(line: 1006, column: 247, scope: !985)
!4814 = !DILocation(line: 1006, column: 346, scope: !4815)
!4815 = !DILexicalBlockFile(scope: !985, file: !479, discriminator: 5)
!4816 = !DILocation(line: 1006, column: 328, scope: !985)
!4817 = !DILocation(line: 1006, column: 355, scope: !985)
!4818 = !DILocation(line: 1006, column: 320, scope: !985)
!4819 = !DILocation(line: 1006, column: 399, scope: !4820)
!4820 = !DILexicalBlockFile(scope: !985, file: !479, discriminator: 6)
!4821 = !DILocation(line: 1006, column: 372, scope: !985)
!4822 = !DILocation(line: 1006, column: 408, scope: !985)
!4823 = !DILocation(line: 1006, column: 364, scope: !985)
!4824 = !DILocation(line: 1006, column: 198, scope: !4825)
!4825 = !DILexicalBlockFile(scope: !4826, file: !479, discriminator: 8)
!4826 = !DILexicalBlockFile(scope: !985, file: !479, discriminator: 7)
!4827 = !DILocation(line: 1006, column: 456, scope: !4828)
!4828 = !DILexicalBlockFile(scope: !985, file: !479, discriminator: 4)
!4829 = !DILocation(line: 1006, column: 435, scope: !985)
!4830 = !DILocation(line: 1006, column: 467, scope: !985)
!4831 = !DILocation(line: 1006, column: 472, scope: !985)
!4832 = !DILocation(line: 1006, column: 164, scope: !4833)
!4833 = !DILexicalBlockFile(scope: !4834, file: !479, discriminator: 10)
!4834 = !DILexicalBlockFile(scope: !985, file: !479, discriminator: 9)
!4835 = !DILocation(line: 1006, column: 539, scope: !4836)
!4836 = !DILexicalBlockFile(scope: !985, file: !479, discriminator: 2)
!4837 = !DILocation(line: 1006, column: 520, scope: !985)
!4838 = !DILocation(line: 1006, column: 550, scope: !985)
!4839 = !DILocation(line: 1006, column: 556, scope: !985)
!4840 = !DILocation(line: 1006, column: 562, scope: !985)
!4841 = !DILocation(line: 1006, column: 490, scope: !985)
!4842 = !DILocation(line: 1006, column: 907, scope: !4843)
!4843 = !DILexicalBlockFile(scope: !985, file: !479, discriminator: 12)
!4844 = !DILocation(line: 1006, column: 642, scope: !985)
!4845 = !DILocation(line: 1006, column: 624, scope: !985)
!4846 = !DILocation(line: 1006, column: 653, scope: !985)
!4847 = !DILocation(line: 1006, column: 659, scope: !985)
!4848 = !DILocation(line: 1006, column: 622, scope: !985)
!4849 = !DILocation(line: 1006, column: 718, scope: !4850)
!4850 = !DILexicalBlockFile(scope: !985, file: !479, discriminator: 14)
!4851 = !DILocation(line: 1006, column: 701, scope: !985)
!4852 = !DILocation(line: 1006, column: 728, scope: !985)
!4853 = !DILocation(line: 1006, column: 734, scope: !985)
!4854 = !DILocation(line: 1006, column: 671, scope: !985)
!4855 = !DILocation(line: 1006, column: 770, scope: !4856)
!4856 = !DILexicalBlockFile(scope: !985, file: !479, discriminator: 16)
!4857 = !DILocation(line: 1006, column: 752, scope: !985)
!4858 = !DILocation(line: 1006, column: 779, scope: !985)
!4859 = !DILocation(line: 1006, column: 744, scope: !985)
!4860 = !DILocation(line: 1006, column: 823, scope: !4861)
!4861 = !DILexicalBlockFile(scope: !985, file: !479, discriminator: 17)
!4862 = !DILocation(line: 1006, column: 796, scope: !985)
!4863 = !DILocation(line: 1006, column: 832, scope: !985)
!4864 = !DILocation(line: 1006, column: 788, scope: !985)
!4865 = !DILocation(line: 1006, column: 622, scope: !4866)
!4866 = !DILexicalBlockFile(scope: !4867, file: !479, discriminator: 19)
!4867 = !DILexicalBlockFile(scope: !985, file: !479, discriminator: 18)
!4868 = !DILocation(line: 1006, column: 880, scope: !4869)
!4869 = !DILexicalBlockFile(scope: !985, file: !479, discriminator: 15)
!4870 = !DILocation(line: 1006, column: 859, scope: !985)
!4871 = !DILocation(line: 1006, column: 891, scope: !985)
!4872 = !DILocation(line: 1006, column: 896, scope: !985)
!4873 = !DILocation(line: 1006, column: 589, scope: !4874)
!4874 = !DILexicalBlockFile(scope: !4875, file: !479, discriminator: 21)
!4875 = !DILexicalBlockFile(scope: !985, file: !479, discriminator: 20)
!4876 = !DILocation(line: 1006, column: 588, scope: !985)
!4877 = !DILocation(line: 1006, column: 1232, scope: !4878)
!4878 = !DILexicalBlockFile(scope: !985, file: !479, discriminator: 13)
!4879 = !DILocation(line: 1006, column: 967, scope: !985)
!4880 = !DILocation(line: 1006, column: 949, scope: !985)
!4881 = !DILocation(line: 1006, column: 978, scope: !985)
!4882 = !DILocation(line: 1006, column: 984, scope: !985)
!4883 = !DILocation(line: 1006, column: 947, scope: !985)
!4884 = !DILocation(line: 1006, column: 1043, scope: !4885)
!4885 = !DILexicalBlockFile(scope: !985, file: !479, discriminator: 23)
!4886 = !DILocation(line: 1006, column: 1026, scope: !985)
!4887 = !DILocation(line: 1006, column: 1053, scope: !985)
!4888 = !DILocation(line: 1006, column: 1059, scope: !985)
!4889 = !DILocation(line: 1006, column: 996, scope: !985)
!4890 = !DILocation(line: 1006, column: 1095, scope: !4891)
!4891 = !DILexicalBlockFile(scope: !985, file: !479, discriminator: 25)
!4892 = !DILocation(line: 1006, column: 1077, scope: !985)
!4893 = !DILocation(line: 1006, column: 1104, scope: !985)
!4894 = !DILocation(line: 1006, column: 1069, scope: !985)
!4895 = !DILocation(line: 1006, column: 1148, scope: !4896)
!4896 = !DILexicalBlockFile(scope: !985, file: !479, discriminator: 26)
!4897 = !DILocation(line: 1006, column: 1121, scope: !985)
!4898 = !DILocation(line: 1006, column: 1157, scope: !985)
!4899 = !DILocation(line: 1006, column: 1113, scope: !985)
!4900 = !DILocation(line: 1006, column: 947, scope: !4901)
!4901 = !DILexicalBlockFile(scope: !4902, file: !479, discriminator: 28)
!4902 = !DILexicalBlockFile(scope: !985, file: !479, discriminator: 27)
!4903 = !DILocation(line: 1006, column: 1205, scope: !4904)
!4904 = !DILexicalBlockFile(scope: !985, file: !479, discriminator: 24)
!4905 = !DILocation(line: 1006, column: 1184, scope: !985)
!4906 = !DILocation(line: 1006, column: 1216, scope: !985)
!4907 = !DILocation(line: 1006, column: 1221, scope: !985)
!4908 = !DILocation(line: 1006, column: 914, scope: !4909)
!4909 = !DILexicalBlockFile(scope: !4910, file: !479, discriminator: 30)
!4910 = !DILexicalBlockFile(scope: !985, file: !479, discriminator: 29)
!4911 = !DILocation(line: 1006, column: 913, scope: !985)
!4912 = !DILocation(line: 1006, column: 66, scope: !4913)
!4913 = !DILexicalBlockFile(scope: !4914, file: !479, discriminator: 31)
!4914 = !DILexicalBlockFile(scope: !985, file: !479, discriminator: 22)
!4915 = !DILocation(line: 1006, column: 21, scope: !4916)
!4916 = !DILexicalBlockFile(scope: !4917, file: !479, discriminator: 32)
!4917 = !DILexicalBlockFile(scope: !985, file: !479, discriminator: 11)
!4918 = !DILocation(line: 1007, column: 30, scope: !991)
!4919 = !DILocation(line: 1007, column: 26, scope: !991)
!4920 = !DILocation(line: 1007, column: 34, scope: !991)
!4921 = !DILocation(line: 1007, column: 38, scope: !4922)
!4922 = !DILexicalBlockFile(scope: !991, file: !479, discriminator: 1)
!4923 = !DILocation(line: 1007, column: 42, scope: !991)
!4924 = !DILocation(line: 1007, column: 17, scope: !985)
!4925 = !DILocation(line: 1009, column: 47, scope: !990)
!4926 = !DILocation(line: 1009, column: 53, scope: !990)
!4927 = !DILocation(line: 1009, column: 34, scope: !990)
!4928 = !DILocation(line: 1009, column: 64, scope: !990)
!4929 = !DILocation(line: 1009, column: 17, scope: !990)
!4930 = !DILocation(line: 1010, column: 17, scope: !990)
!4931 = !DILocation(line: 1010, column: 22, scope: !4932)
!4932 = !DILexicalBlockFile(scope: !989, file: !479, discriminator: 1)
!4933 = !DILocation(line: 1010, column: 32, scope: !989)
!4934 = !DILocation(line: 1010, column: 62, scope: !989)
!4935 = !DILocation(line: 1010, column: 76, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !989, file: !479, line: 1010, column: 73)
!4937 = !DILocation(line: 1010, column: 93, scope: !4936)
!4938 = !DILocation(line: 1010, column: 73, scope: !4936)
!4939 = !DILocation(line: 1010, column: 103, scope: !4936)
!4940 = !DILocation(line: 1010, column: 73, scope: !989)
!4941 = !DILocation(line: 1010, column: 73, scope: !4942)
!4942 = !DILexicalBlockFile(scope: !989, file: !479, discriminator: 2)
!4943 = !DILocation(line: 1010, column: 134, scope: !4944)
!4944 = !DILexicalBlockFile(scope: !4936, file: !479, discriminator: 3)
!4945 = !DILocation(line: 1010, column: 152, scope: !4936)
!4946 = !DILocation(line: 1010, column: 162, scope: !4936)
!4947 = !DILocation(line: 1010, column: 187, scope: !4936)
!4948 = !DILocation(line: 1010, column: 118, scope: !4936)
!4949 = !DILocation(line: 1010, column: 206, scope: !4950)
!4950 = !DILexicalBlockFile(scope: !990, file: !479, discriminator: 4)
!4951 = !DILocation(line: 1010, column: 206, scope: !989)
!4952 = !DILocation(line: 1010, column: 206, scope: !4953)
!4953 = !DILexicalBlockFile(scope: !989, file: !479, discriminator: 5)
!4954 = !DILocation(line: 1011, column: 17, scope: !990)
!4955 = !DILocation(line: 1011, column: 22, scope: !4956)
!4956 = !DILexicalBlockFile(scope: !993, file: !479, discriminator: 1)
!4957 = !DILocation(line: 1011, column: 32, scope: !993)
!4958 = !DILocation(line: 1011, column: 62, scope: !993)
!4959 = !DILocation(line: 1011, column: 79, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !993, file: !479, line: 1011, column: 76)
!4961 = !DILocation(line: 1011, column: 96, scope: !4960)
!4962 = !DILocation(line: 1011, column: 76, scope: !4960)
!4963 = !DILocation(line: 1011, column: 106, scope: !4960)
!4964 = !DILocation(line: 1011, column: 76, scope: !993)
!4965 = !DILocation(line: 1011, column: 76, scope: !4966)
!4966 = !DILexicalBlockFile(scope: !993, file: !479, discriminator: 2)
!4967 = !DILocation(line: 1011, column: 137, scope: !4968)
!4968 = !DILexicalBlockFile(scope: !4960, file: !479, discriminator: 3)
!4969 = !DILocation(line: 1011, column: 155, scope: !4960)
!4970 = !DILocation(line: 1011, column: 165, scope: !4960)
!4971 = !DILocation(line: 1011, column: 190, scope: !4960)
!4972 = !DILocation(line: 1011, column: 121, scope: !4960)
!4973 = !DILocation(line: 1011, column: 209, scope: !4950)
!4974 = !DILocation(line: 1011, column: 209, scope: !993)
!4975 = !DILocation(line: 1011, column: 209, scope: !4976)
!4976 = !DILexicalBlockFile(scope: !993, file: !479, discriminator: 5)
!4977 = !DILocation(line: 1012, column: 17, scope: !990)
!4978 = !DILocation(line: 1014, column: 21, scope: !985)
!4979 = !DILocation(line: 1014, column: 13, scope: !985)
!4980 = !DILocation(line: 1016, column: 51, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !985, file: !479, line: 1014, column: 27)
!4982 = !DILocation(line: 1016, column: 54, scope: !4981)
!4983 = !DILocation(line: 1016, column: 48, scope: !4981)
!4984 = !DILocation(line: 1016, column: 27, scope: !4981)
!4985 = !DILocation(line: 1016, column: 22, scope: !4981)
!4986 = !DILocation(line: 1016, column: 25, scope: !4981)
!4987 = !DILocation(line: 1017, column: 52, scope: !4981)
!4988 = !DILocation(line: 1017, column: 55, scope: !4981)
!4989 = !DILocation(line: 1017, column: 61, scope: !4981)
!4990 = !DILocation(line: 1017, column: 48, scope: !4981)
!4991 = !DILocation(line: 1017, column: 27, scope: !4981)
!4992 = !DILocation(line: 1017, column: 22, scope: !4981)
!4993 = !DILocation(line: 1017, column: 25, scope: !4981)
!4994 = !DILocation(line: 1018, column: 51, scope: !4981)
!4995 = !DILocation(line: 1018, column: 54, scope: !4981)
!4996 = !DILocation(line: 1018, column: 48, scope: !4981)
!4997 = !DILocation(line: 1018, column: 27, scope: !4981)
!4998 = !DILocation(line: 1018, column: 22, scope: !4981)
!4999 = !DILocation(line: 1018, column: 25, scope: !4981)
!5000 = !DILocation(line: 1019, column: 17, scope: !4981)
!5001 = !DILocation(line: 1021, column: 43, scope: !4981)
!5002 = !DILocation(line: 1021, column: 27, scope: !4981)
!5003 = !DILocation(line: 1021, column: 22, scope: !4981)
!5004 = !DILocation(line: 1021, column: 25, scope: !4981)
!5005 = !DILocation(line: 1022, column: 43, scope: !4981)
!5006 = !DILocation(line: 1022, column: 46, scope: !4981)
!5007 = !DILocation(line: 1022, column: 27, scope: !4981)
!5008 = !DILocation(line: 1022, column: 22, scope: !4981)
!5009 = !DILocation(line: 1022, column: 25, scope: !4981)
!5010 = !DILocation(line: 1023, column: 17, scope: !4981)
!5011 = !DILocation(line: 1025, column: 43, scope: !4981)
!5012 = !DILocation(line: 1025, column: 46, scope: !4981)
!5013 = !DILocation(line: 1025, column: 27, scope: !4981)
!5014 = !DILocation(line: 1025, column: 22, scope: !4981)
!5015 = !DILocation(line: 1025, column: 25, scope: !4981)
!5016 = !DILocation(line: 1026, column: 43, scope: !4981)
!5017 = !DILocation(line: 1026, column: 27, scope: !4981)
!5018 = !DILocation(line: 1026, column: 22, scope: !4981)
!5019 = !DILocation(line: 1026, column: 25, scope: !4981)
!5020 = !DILocation(line: 1027, column: 17, scope: !4981)
!5021 = !DILocation(line: 1029, column: 43, scope: !4981)
!5022 = !DILocation(line: 1029, column: 27, scope: !4981)
!5023 = !DILocation(line: 1029, column: 22, scope: !4981)
!5024 = !DILocation(line: 1029, column: 25, scope: !4981)
!5025 = !DILocation(line: 1030, column: 43, scope: !4981)
!5026 = !DILocation(line: 1030, column: 46, scope: !4981)
!5027 = !DILocation(line: 1030, column: 27, scope: !4981)
!5028 = !DILocation(line: 1030, column: 22, scope: !4981)
!5029 = !DILocation(line: 1030, column: 25, scope: !4981)
!5030 = !DILocation(line: 1031, column: 43, scope: !4981)
!5031 = !DILocation(line: 1031, column: 46, scope: !4981)
!5032 = !DILocation(line: 1031, column: 27, scope: !4981)
!5033 = !DILocation(line: 1031, column: 22, scope: !4981)
!5034 = !DILocation(line: 1031, column: 25, scope: !4981)
!5035 = !DILocation(line: 1032, column: 43, scope: !4981)
!5036 = !DILocation(line: 1032, column: 46, scope: !4981)
!5037 = !DILocation(line: 1032, column: 27, scope: !4981)
!5038 = !DILocation(line: 1032, column: 22, scope: !4981)
!5039 = !DILocation(line: 1032, column: 25, scope: !4981)
!5040 = !DILocation(line: 1033, column: 17, scope: !4981)
!5041 = !DILocation(line: 1035, column: 43, scope: !4981)
!5042 = !DILocation(line: 1035, column: 46, scope: !4981)
!5043 = !DILocation(line: 1035, column: 27, scope: !4981)
!5044 = !DILocation(line: 1035, column: 22, scope: !4981)
!5045 = !DILocation(line: 1035, column: 25, scope: !4981)
!5046 = !DILocation(line: 1036, column: 43, scope: !4981)
!5047 = !DILocation(line: 1036, column: 46, scope: !4981)
!5048 = !DILocation(line: 1036, column: 27, scope: !4981)
!5049 = !DILocation(line: 1036, column: 22, scope: !4981)
!5050 = !DILocation(line: 1036, column: 25, scope: !4981)
!5051 = !DILocation(line: 1037, column: 43, scope: !4981)
!5052 = !DILocation(line: 1037, column: 46, scope: !4981)
!5053 = !DILocation(line: 1037, column: 27, scope: !4981)
!5054 = !DILocation(line: 1037, column: 22, scope: !4981)
!5055 = !DILocation(line: 1037, column: 25, scope: !4981)
!5056 = !DILocation(line: 1038, column: 43, scope: !4981)
!5057 = !DILocation(line: 1038, column: 27, scope: !4981)
!5058 = !DILocation(line: 1038, column: 22, scope: !4981)
!5059 = !DILocation(line: 1038, column: 25, scope: !4981)
!5060 = !DILocation(line: 1039, column: 17, scope: !4981)
!5061 = !DILocation(line: 1041, column: 9, scope: !986)
!5062 = !DILocation(line: 1041, column: 9, scope: !4789)
!5063 = !DILocation(line: 1041, column: 9, scope: !985)
!5064 = !DILocation(line: 1004, column: 35, scope: !986)
!5065 = !DILocation(line: 1004, column: 9, scope: !986)
!5066 = !DILocation(line: 1042, column: 42, scope: !966)
!5067 = !DILocation(line: 1042, column: 47, scope: !966)
!5068 = !DILocation(line: 1042, column: 20, scope: !966)
!5069 = !DILocation(line: 1042, column: 18, scope: !966)
!5070 = !DILocation(line: 1043, column: 9, scope: !966)
!5071 = !DILocation(line: 1043, column: 14, scope: !5072)
!5072 = !DILexicalBlockFile(scope: !995, file: !479, discriminator: 1)
!5073 = !DILocation(line: 1043, column: 24, scope: !995)
!5074 = !DILocation(line: 1043, column: 54, scope: !995)
!5075 = !DILocation(line: 1043, column: 68, scope: !5076)
!5076 = distinct !DILexicalBlock(scope: !995, file: !479, line: 1043, column: 65)
!5077 = !DILocation(line: 1043, column: 85, scope: !5076)
!5078 = !DILocation(line: 1043, column: 65, scope: !5076)
!5079 = !DILocation(line: 1043, column: 95, scope: !5076)
!5080 = !DILocation(line: 1043, column: 65, scope: !995)
!5081 = !DILocation(line: 1043, column: 65, scope: !5082)
!5082 = !DILexicalBlockFile(scope: !995, file: !479, discriminator: 2)
!5083 = !DILocation(line: 1043, column: 126, scope: !5084)
!5084 = !DILexicalBlockFile(scope: !5076, file: !479, discriminator: 3)
!5085 = !DILocation(line: 1043, column: 144, scope: !5076)
!5086 = !DILocation(line: 1043, column: 154, scope: !5076)
!5087 = !DILocation(line: 1043, column: 179, scope: !5076)
!5088 = !DILocation(line: 1043, column: 110, scope: !5076)
!5089 = !DILocation(line: 1043, column: 198, scope: !4743)
!5090 = !DILocation(line: 1043, column: 198, scope: !995)
!5091 = !DILocation(line: 1043, column: 198, scope: !5092)
!5092 = !DILexicalBlockFile(scope: !995, file: !479, discriminator: 5)
!5093 = !DILocation(line: 1044, column: 9, scope: !966)
!5094 = !DILocation(line: 1044, column: 14, scope: !5095)
!5095 = !DILexicalBlockFile(scope: !997, file: !479, discriminator: 1)
!5096 = !DILocation(line: 1044, column: 24, scope: !997)
!5097 = !DILocation(line: 1044, column: 54, scope: !997)
!5098 = !DILocation(line: 1044, column: 71, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !997, file: !479, line: 1044, column: 68)
!5100 = !DILocation(line: 1044, column: 88, scope: !5099)
!5101 = !DILocation(line: 1044, column: 68, scope: !5099)
!5102 = !DILocation(line: 1044, column: 98, scope: !5099)
!5103 = !DILocation(line: 1044, column: 68, scope: !997)
!5104 = !DILocation(line: 1044, column: 68, scope: !5105)
!5105 = !DILexicalBlockFile(scope: !997, file: !479, discriminator: 2)
!5106 = !DILocation(line: 1044, column: 129, scope: !5107)
!5107 = !DILexicalBlockFile(scope: !5099, file: !479, discriminator: 3)
!5108 = !DILocation(line: 1044, column: 147, scope: !5099)
!5109 = !DILocation(line: 1044, column: 157, scope: !5099)
!5110 = !DILocation(line: 1044, column: 182, scope: !5099)
!5111 = !DILocation(line: 1044, column: 113, scope: !5099)
!5112 = !DILocation(line: 1044, column: 201, scope: !4743)
!5113 = !DILocation(line: 1044, column: 201, scope: !997)
!5114 = !DILocation(line: 1044, column: 201, scope: !5115)
!5115 = !DILexicalBlockFile(scope: !997, file: !479, discriminator: 5)
!5116 = !DILocation(line: 1045, column: 16, scope: !966)
!5117 = !DILocation(line: 1045, column: 9, scope: !966)
!5118 = !DILocation(line: 1046, column: 5, scope: !967)
!5119 = !DILocation(line: 1047, column: 34, scope: !1000)
!5120 = !DILocation(line: 1047, column: 39, scope: !1000)
!5121 = !DILocation(line: 1047, column: 14, scope: !1000)
!5122 = !DILocation(line: 1047, column: 14, scope: !967)
!5123 = !DILocation(line: 1048, column: 9, scope: !999)
!5124 = !DILocation(line: 1048, column: 24, scope: !999)
!5125 = !DILocation(line: 1049, column: 9, scope: !999)
!5126 = !DILocation(line: 1049, column: 17, scope: !999)
!5127 = !DILocation(line: 1050, column: 43, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !999, file: !479, line: 1050, column: 13)
!5129 = !DILocation(line: 1050, column: 13, scope: !5128)
!5130 = !DILocation(line: 1050, column: 13, scope: !999)
!5131 = !DILocation(line: 1051, column: 13, scope: !5128)
!5132 = !DILocation(line: 1052, column: 41, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !999, file: !479, line: 1052, column: 13)
!5134 = !DILocation(line: 1052, column: 13, scope: !5133)
!5135 = !DILocation(line: 1052, column: 13, scope: !999)
!5136 = !DILocation(line: 1053, column: 13, scope: !5133)
!5137 = !DILocation(line: 1054, column: 55, scope: !5138)
!5138 = distinct !DILexicalBlock(scope: !999, file: !479, line: 1054, column: 13)
!5139 = !DILocation(line: 1054, column: 24, scope: !5138)
!5140 = !DILocation(line: 1054, column: 22, scope: !5138)
!5141 = !DILocation(line: 1054, column: 13, scope: !999)
!5142 = !DILocation(line: 1055, column: 13, scope: !5138)
!5143 = !DILocation(line: 1056, column: 52, scope: !1005)
!5144 = !DILocation(line: 1056, column: 35, scope: !1005)
!5145 = !DILocation(line: 1056, column: 17, scope: !1005)
!5146 = !DILocation(line: 1056, column: 13, scope: !999)
!5147 = !DILocation(line: 1057, column: 13, scope: !1004)
!5148 = !DILocation(line: 1057, column: 18, scope: !5149)
!5149 = !DILexicalBlockFile(scope: !1003, file: !479, discriminator: 1)
!5150 = !DILocation(line: 1057, column: 28, scope: !1003)
!5151 = !DILocation(line: 1057, column: 58, scope: !1003)
!5152 = !DILocation(line: 1057, column: 75, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !1003, file: !479, line: 1057, column: 72)
!5154 = !DILocation(line: 1057, column: 92, scope: !5153)
!5155 = !DILocation(line: 1057, column: 72, scope: !5153)
!5156 = !DILocation(line: 1057, column: 102, scope: !5153)
!5157 = !DILocation(line: 1057, column: 72, scope: !1003)
!5158 = !DILocation(line: 1057, column: 72, scope: !5159)
!5159 = !DILexicalBlockFile(scope: !1003, file: !479, discriminator: 2)
!5160 = !DILocation(line: 1057, column: 133, scope: !5161)
!5161 = !DILexicalBlockFile(scope: !5153, file: !479, discriminator: 3)
!5162 = !DILocation(line: 1057, column: 151, scope: !5153)
!5163 = !DILocation(line: 1057, column: 161, scope: !5153)
!5164 = !DILocation(line: 1057, column: 186, scope: !5153)
!5165 = !DILocation(line: 1057, column: 117, scope: !5153)
!5166 = !DILocation(line: 1057, column: 205, scope: !5167)
!5167 = !DILexicalBlockFile(scope: !1004, file: !479, discriminator: 4)
!5168 = !DILocation(line: 1057, column: 205, scope: !1003)
!5169 = !DILocation(line: 1057, column: 205, scope: !5170)
!5170 = !DILexicalBlockFile(scope: !1003, file: !479, discriminator: 5)
!5171 = !DILocation(line: 1058, column: 13, scope: !1004)
!5172 = !DILocation(line: 1060, column: 57, scope: !1009)
!5173 = !DILocation(line: 1060, column: 24, scope: !1009)
!5174 = !DILocation(line: 1060, column: 22, scope: !1009)
!5175 = !DILocation(line: 1060, column: 13, scope: !999)
!5176 = !DILocation(line: 1061, column: 13, scope: !1008)
!5177 = !DILocation(line: 1061, column: 18, scope: !5178)
!5178 = !DILexicalBlockFile(scope: !1007, file: !479, discriminator: 1)
!5179 = !DILocation(line: 1061, column: 28, scope: !1007)
!5180 = !DILocation(line: 1061, column: 58, scope: !1007)
!5181 = !DILocation(line: 1061, column: 75, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !1007, file: !479, line: 1061, column: 72)
!5183 = !DILocation(line: 1061, column: 92, scope: !5182)
!5184 = !DILocation(line: 1061, column: 72, scope: !5182)
!5185 = !DILocation(line: 1061, column: 102, scope: !5182)
!5186 = !DILocation(line: 1061, column: 72, scope: !1007)
!5187 = !DILocation(line: 1061, column: 72, scope: !5188)
!5188 = !DILexicalBlockFile(scope: !1007, file: !479, discriminator: 2)
!5189 = !DILocation(line: 1061, column: 133, scope: !5190)
!5190 = !DILexicalBlockFile(scope: !5182, file: !479, discriminator: 3)
!5191 = !DILocation(line: 1061, column: 151, scope: !5182)
!5192 = !DILocation(line: 1061, column: 161, scope: !5182)
!5193 = !DILocation(line: 1061, column: 186, scope: !5182)
!5194 = !DILocation(line: 1061, column: 117, scope: !5182)
!5195 = !DILocation(line: 1061, column: 205, scope: !5196)
!5196 = !DILexicalBlockFile(scope: !1008, file: !479, discriminator: 4)
!5197 = !DILocation(line: 1061, column: 205, scope: !1007)
!5198 = !DILocation(line: 1061, column: 205, scope: !5199)
!5199 = !DILexicalBlockFile(scope: !1007, file: !479, discriminator: 5)
!5200 = !DILocation(line: 1062, column: 13, scope: !1008)
!5201 = !DILocation(line: 1064, column: 43, scope: !1013)
!5202 = !DILocation(line: 1064, column: 26, scope: !1013)
!5203 = !DILocation(line: 1064, column: 24, scope: !1013)
!5204 = !DILocation(line: 1064, column: 13, scope: !999)
!5205 = !DILocation(line: 1065, column: 13, scope: !1012)
!5206 = !DILocation(line: 1065, column: 18, scope: !5207)
!5207 = !DILexicalBlockFile(scope: !1011, file: !479, discriminator: 1)
!5208 = !DILocation(line: 1065, column: 28, scope: !1011)
!5209 = !DILocation(line: 1065, column: 58, scope: !1011)
!5210 = !DILocation(line: 1065, column: 75, scope: !5211)
!5211 = distinct !DILexicalBlock(scope: !1011, file: !479, line: 1065, column: 72)
!5212 = !DILocation(line: 1065, column: 92, scope: !5211)
!5213 = !DILocation(line: 1065, column: 72, scope: !5211)
!5214 = !DILocation(line: 1065, column: 102, scope: !5211)
!5215 = !DILocation(line: 1065, column: 72, scope: !1011)
!5216 = !DILocation(line: 1065, column: 72, scope: !5217)
!5217 = !DILexicalBlockFile(scope: !1011, file: !479, discriminator: 2)
!5218 = !DILocation(line: 1065, column: 133, scope: !5219)
!5219 = !DILexicalBlockFile(scope: !5211, file: !479, discriminator: 3)
!5220 = !DILocation(line: 1065, column: 151, scope: !5211)
!5221 = !DILocation(line: 1065, column: 161, scope: !5211)
!5222 = !DILocation(line: 1065, column: 186, scope: !5211)
!5223 = !DILocation(line: 1065, column: 117, scope: !5211)
!5224 = !DILocation(line: 1065, column: 205, scope: !5225)
!5225 = !DILexicalBlockFile(scope: !1012, file: !479, discriminator: 4)
!5226 = !DILocation(line: 1065, column: 205, scope: !1011)
!5227 = !DILocation(line: 1065, column: 205, scope: !5228)
!5228 = !DILexicalBlockFile(scope: !1011, file: !479, discriminator: 5)
!5229 = !DILocation(line: 1066, column: 13, scope: !1012)
!5230 = !DILocation(line: 1066, column: 18, scope: !5231)
!5231 = !DILexicalBlockFile(scope: !1015, file: !479, discriminator: 1)
!5232 = !DILocation(line: 1066, column: 28, scope: !1015)
!5233 = !DILocation(line: 1066, column: 58, scope: !1015)
!5234 = !DILocation(line: 1066, column: 75, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !1015, file: !479, line: 1066, column: 72)
!5236 = !DILocation(line: 1066, column: 92, scope: !5235)
!5237 = !DILocation(line: 1066, column: 72, scope: !5235)
!5238 = !DILocation(line: 1066, column: 102, scope: !5235)
!5239 = !DILocation(line: 1066, column: 72, scope: !1015)
!5240 = !DILocation(line: 1066, column: 72, scope: !5241)
!5241 = !DILexicalBlockFile(scope: !1015, file: !479, discriminator: 2)
!5242 = !DILocation(line: 1066, column: 133, scope: !5243)
!5243 = !DILexicalBlockFile(scope: !5235, file: !479, discriminator: 3)
!5244 = !DILocation(line: 1066, column: 151, scope: !5235)
!5245 = !DILocation(line: 1066, column: 161, scope: !5235)
!5246 = !DILocation(line: 1066, column: 186, scope: !5235)
!5247 = !DILocation(line: 1066, column: 117, scope: !5235)
!5248 = !DILocation(line: 1066, column: 205, scope: !5225)
!5249 = !DILocation(line: 1066, column: 205, scope: !1015)
!5250 = !DILocation(line: 1066, column: 205, scope: !5251)
!5251 = !DILexicalBlockFile(scope: !1015, file: !479, discriminator: 5)
!5252 = !DILocation(line: 1067, column: 13, scope: !1012)
!5253 = !DILocation(line: 1069, column: 38, scope: !999)
!5254 = !DILocation(line: 1069, column: 16, scope: !999)
!5255 = !DILocation(line: 1069, column: 14, scope: !999)
!5256 = !DILocation(line: 1070, column: 9, scope: !999)
!5257 = !DILocation(line: 1070, column: 14, scope: !5258)
!5258 = !DILexicalBlockFile(scope: !1017, file: !479, discriminator: 1)
!5259 = !DILocation(line: 1070, column: 24, scope: !1017)
!5260 = !DILocation(line: 1070, column: 54, scope: !1017)
!5261 = !DILocation(line: 1070, column: 71, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !1017, file: !479, line: 1070, column: 68)
!5263 = !DILocation(line: 1070, column: 88, scope: !5262)
!5264 = !DILocation(line: 1070, column: 68, scope: !5262)
!5265 = !DILocation(line: 1070, column: 98, scope: !5262)
!5266 = !DILocation(line: 1070, column: 68, scope: !1017)
!5267 = !DILocation(line: 1070, column: 68, scope: !5268)
!5268 = !DILexicalBlockFile(scope: !1017, file: !479, discriminator: 2)
!5269 = !DILocation(line: 1070, column: 129, scope: !5270)
!5270 = !DILexicalBlockFile(scope: !5262, file: !479, discriminator: 3)
!5271 = !DILocation(line: 1070, column: 147, scope: !5262)
!5272 = !DILocation(line: 1070, column: 157, scope: !5262)
!5273 = !DILocation(line: 1070, column: 182, scope: !5262)
!5274 = !DILocation(line: 1070, column: 113, scope: !5262)
!5275 = !DILocation(line: 1070, column: 201, scope: !5276)
!5276 = !DILexicalBlockFile(scope: !999, file: !479, discriminator: 4)
!5277 = !DILocation(line: 1070, column: 201, scope: !1017)
!5278 = !DILocation(line: 1070, column: 201, scope: !5279)
!5279 = !DILexicalBlockFile(scope: !1017, file: !479, discriminator: 5)
!5280 = !DILocation(line: 1074, column: 14, scope: !999)
!5281 = !DILocation(line: 1074, column: 11, scope: !999)
!5282 = !DILocation(line: 1075, column: 44, scope: !5283)
!5283 = distinct !DILexicalBlock(scope: !999, file: !479, line: 1075, column: 13)
!5284 = !DILocation(line: 1075, column: 29, scope: !5283)
!5285 = !DILocation(line: 1075, column: 54, scope: !5283)
!5286 = !DILocation(line: 1075, column: 66, scope: !5283)
!5287 = !DILocation(line: 1075, column: 64, scope: !5283)
!5288 = !DILocation(line: 1075, column: 75, scope: !5283)
!5289 = !DILocation(line: 1075, column: 72, scope: !5283)
!5290 = !DILocation(line: 1075, column: 13, scope: !999)
!5291 = !DILocation(line: 1076, column: 21, scope: !5292)
!5292 = distinct !DILexicalBlock(scope: !5283, file: !479, line: 1075, column: 87)
!5293 = !DILocation(line: 1076, column: 13, scope: !5292)
!5294 = !DILocation(line: 1078, column: 22, scope: !5295)
!5295 = distinct !DILexicalBlock(scope: !5296, file: !479, line: 1078, column: 21)
!5296 = distinct !DILexicalBlock(scope: !5292, file: !479, line: 1076, column: 27)
!5297 = !DILocation(line: 1078, column: 27, scope: !5295)
!5298 = !DILocation(line: 1078, column: 35, scope: !5295)
!5299 = !DILocation(line: 1078, column: 43, scope: !5295)
!5300 = !DILocation(line: 1079, column: 22, scope: !5295)
!5301 = !DILocation(line: 1079, column: 27, scope: !5295)
!5302 = !DILocation(line: 1079, column: 35, scope: !5295)
!5303 = !DILocation(line: 1079, column: 43, scope: !5295)
!5304 = !DILocation(line: 1080, column: 22, scope: !5295)
!5305 = !DILocation(line: 1080, column: 27, scope: !5295)
!5306 = !DILocation(line: 1080, column: 35, scope: !5295)
!5307 = !DILocation(line: 1078, column: 21, scope: !5296)
!5308 = !DILocation(line: 1082, column: 28, scope: !5309)
!5309 = distinct !DILexicalBlock(scope: !5295, file: !479, line: 1080, column: 44)
!5310 = !DILocation(line: 1082, column: 33, scope: !5309)
!5311 = !DILocation(line: 1082, column: 41, scope: !5309)
!5312 = !DILocation(line: 1082, column: 52, scope: !5309)
!5313 = !DILocation(line: 1082, column: 57, scope: !5309)
!5314 = !DILocation(line: 1082, column: 65, scope: !5309)
!5315 = !DILocation(line: 1082, column: 48, scope: !5309)
!5316 = !DILocation(line: 1082, column: 74, scope: !5309)
!5317 = !DILocation(line: 1082, column: 79, scope: !5309)
!5318 = !DILocation(line: 1082, column: 71, scope: !5309)
!5319 = !DILocation(line: 1082, column: 24, scope: !5309)
!5320 = !DILocation(line: 1083, column: 17, scope: !5309)
!5321 = !DILocation(line: 1084, column: 17, scope: !5296)
!5322 = !DILocation(line: 1086, column: 22, scope: !5296)
!5323 = !DILocation(line: 1086, column: 27, scope: !5296)
!5324 = !DILocation(line: 1086, column: 34, scope: !5296)
!5325 = !DILocation(line: 1086, column: 32, scope: !5296)
!5326 = !DILocation(line: 1086, column: 20, scope: !5296)
!5327 = !DILocation(line: 1087, column: 17, scope: !5296)
!5328 = !DILocation(line: 1089, column: 22, scope: !5296)
!5329 = !DILocation(line: 1089, column: 27, scope: !5296)
!5330 = !DILocation(line: 1089, column: 34, scope: !5296)
!5331 = !DILocation(line: 1089, column: 32, scope: !5296)
!5332 = !DILocation(line: 1089, column: 20, scope: !5296)
!5333 = !DILocation(line: 1090, column: 17, scope: !5296)
!5334 = !DILocation(line: 1092, column: 23, scope: !5296)
!5335 = !DILocation(line: 1092, column: 28, scope: !5296)
!5336 = !DILocation(line: 1092, column: 38, scope: !5296)
!5337 = !DILocation(line: 1092, column: 43, scope: !5296)
!5338 = !DILocation(line: 1092, column: 35, scope: !5296)
!5339 = !DILocation(line: 1092, column: 53, scope: !5296)
!5340 = !DILocation(line: 1092, column: 58, scope: !5296)
!5341 = !DILocation(line: 1092, column: 50, scope: !5296)
!5342 = !DILocation(line: 1092, column: 66, scope: !5296)
!5343 = !DILocation(line: 1092, column: 64, scope: !5296)
!5344 = !DILocation(line: 1092, column: 20, scope: !5296)
!5345 = !DILocation(line: 1093, column: 17, scope: !5296)
!5346 = !DILocation(line: 1095, column: 23, scope: !5296)
!5347 = !DILocation(line: 1095, column: 28, scope: !5296)
!5348 = !DILocation(line: 1095, column: 38, scope: !5296)
!5349 = !DILocation(line: 1095, column: 43, scope: !5296)
!5350 = !DILocation(line: 1095, column: 35, scope: !5296)
!5351 = !DILocation(line: 1095, column: 53, scope: !5296)
!5352 = !DILocation(line: 1095, column: 58, scope: !5296)
!5353 = !DILocation(line: 1095, column: 50, scope: !5296)
!5354 = !DILocation(line: 1095, column: 66, scope: !5296)
!5355 = !DILocation(line: 1095, column: 64, scope: !5296)
!5356 = !DILocation(line: 1095, column: 20, scope: !5296)
!5357 = !DILocation(line: 1096, column: 17, scope: !5296)
!5358 = !DILocation(line: 1098, column: 9, scope: !5292)
!5359 = !DILocation(line: 1100, column: 9, scope: !999)
!5360 = !DILocation(line: 1100, column: 14, scope: !5361)
!5361 = !DILexicalBlockFile(scope: !1019, file: !479, discriminator: 1)
!5362 = !DILocation(line: 1100, column: 24, scope: !1019)
!5363 = !DILocation(line: 1100, column: 54, scope: !1019)
!5364 = !DILocation(line: 1100, column: 71, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !1019, file: !479, line: 1100, column: 68)
!5366 = !DILocation(line: 1100, column: 88, scope: !5365)
!5367 = !DILocation(line: 1100, column: 68, scope: !5365)
!5368 = !DILocation(line: 1100, column: 98, scope: !5365)
!5369 = !DILocation(line: 1100, column: 68, scope: !1019)
!5370 = !DILocation(line: 1100, column: 68, scope: !5371)
!5371 = !DILexicalBlockFile(scope: !1019, file: !479, discriminator: 2)
!5372 = !DILocation(line: 1100, column: 129, scope: !5373)
!5373 = !DILexicalBlockFile(scope: !5365, file: !479, discriminator: 3)
!5374 = !DILocation(line: 1100, column: 147, scope: !5365)
!5375 = !DILocation(line: 1100, column: 157, scope: !5365)
!5376 = !DILocation(line: 1100, column: 182, scope: !5365)
!5377 = !DILocation(line: 1100, column: 113, scope: !5365)
!5378 = !DILocation(line: 1100, column: 201, scope: !5276)
!5379 = !DILocation(line: 1100, column: 201, scope: !1019)
!5380 = !DILocation(line: 1100, column: 201, scope: !5381)
!5381 = !DILexicalBlockFile(scope: !1019, file: !479, discriminator: 5)
!5382 = !DILocation(line: 1101, column: 26, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !999, file: !479, line: 1101, column: 13)
!5384 = !DILocation(line: 1101, column: 22, scope: !5383)
!5385 = !DILocation(line: 1101, column: 30, scope: !5383)
!5386 = !DILocation(line: 1101, column: 34, scope: !5387)
!5387 = !DILexicalBlockFile(scope: !5383, file: !479, discriminator: 1)
!5388 = !DILocation(line: 1101, column: 38, scope: !5383)
!5389 = !DILocation(line: 1101, column: 13, scope: !999)
!5390 = !DILocation(line: 1103, column: 43, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5383, file: !479, line: 1101, column: 50)
!5392 = !DILocation(line: 1103, column: 49, scope: !5391)
!5393 = !DILocation(line: 1103, column: 30, scope: !5391)
!5394 = !DILocation(line: 1103, column: 60, scope: !5391)
!5395 = !DILocation(line: 1103, column: 13, scope: !5391)
!5396 = !DILocation(line: 1104, column: 13, scope: !5391)
!5397 = !DILocation(line: 1106, column: 37, scope: !999)
!5398 = !DILocation(line: 1106, column: 15, scope: !999)
!5399 = !DILocation(line: 1106, column: 13, scope: !999)
!5400 = !DILocation(line: 1107, column: 13, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !999, file: !479, line: 1107, column: 13)
!5402 = !DILocation(line: 1107, column: 17, scope: !5401)
!5403 = !DILocation(line: 1107, column: 13, scope: !999)
!5404 = !DILocation(line: 1108, column: 13, scope: !5401)
!5405 = !DILocation(line: 1109, column: 38, scope: !999)
!5406 = !DILocation(line: 1109, column: 43, scope: !999)
!5407 = !DILocation(line: 1109, column: 51, scope: !999)
!5408 = !DILocation(line: 1109, column: 49, scope: !999)
!5409 = !DILocation(line: 1109, column: 16, scope: !999)
!5410 = !DILocation(line: 1109, column: 9, scope: !999)
!5411 = !DILocation(line: 1110, column: 5, scope: !1000)
!5412 = !DILocation(line: 1112, column: 30, scope: !5413)
!5413 = distinct !DILexicalBlock(scope: !1000, file: !479, line: 1111, column: 10)
!5414 = !DILocation(line: 1112, column: 9, scope: !5413)
!5415 = !DILocation(line: 1113, column: 9, scope: !5413)
!5416 = !DILocation(line: 1115, column: 1, scope: !952)
!5417 = !DILocation(line: 911, column: 35, scope: !1020)
!5418 = !DILocation(line: 911, column: 50, scope: !1020)
!5419 = !DILocation(line: 913, column: 46, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !1020, file: !479, line: 913, column: 9)
!5421 = !DILocation(line: 913, column: 45, scope: !5420)
!5422 = !DILocation(line: 913, column: 59, scope: !5420)
!5423 = !DILocation(line: 913, column: 29, scope: !5420)
!5424 = !DILocation(line: 913, column: 10, scope: !5420)
!5425 = !DILocation(line: 913, column: 9, scope: !5420)
!5426 = !DILocation(line: 913, column: 70, scope: !5420)
!5427 = !DILocation(line: 913, column: 77, scope: !5420)
!5428 = !DILocation(line: 914, column: 46, scope: !5420)
!5429 = !DILocation(line: 914, column: 45, scope: !5420)
!5430 = !DILocation(line: 914, column: 59, scope: !5420)
!5431 = !DILocation(line: 914, column: 29, scope: !5420)
!5432 = !DILocation(line: 914, column: 10, scope: !5420)
!5433 = !DILocation(line: 914, column: 9, scope: !5420)
!5434 = !DILocation(line: 914, column: 70, scope: !5420)
!5435 = !DILocation(line: 914, column: 77, scope: !5420)
!5436 = !DILocation(line: 915, column: 46, scope: !5420)
!5437 = !DILocation(line: 915, column: 45, scope: !5420)
!5438 = !DILocation(line: 915, column: 59, scope: !5420)
!5439 = !DILocation(line: 915, column: 29, scope: !5420)
!5440 = !DILocation(line: 915, column: 10, scope: !5420)
!5441 = !DILocation(line: 915, column: 9, scope: !5420)
!5442 = !DILocation(line: 915, column: 70, scope: !5420)
!5443 = !DILocation(line: 913, column: 9, scope: !1020)
!5444 = !DILocation(line: 916, column: 18, scope: !5445)
!5445 = distinct !DILexicalBlock(scope: !5420, file: !479, line: 915, column: 78)
!5446 = !DILocation(line: 917, column: 14, scope: !5447)
!5447 = distinct !DILexicalBlock(scope: !5445, file: !479, line: 917, column: 13)
!5448 = !DILocation(line: 917, column: 13, scope: !5447)
!5449 = !DILocation(line: 917, column: 23, scope: !5447)
!5450 = !DILocation(line: 917, column: 30, scope: !5447)
!5451 = !DILocation(line: 917, column: 34, scope: !5452)
!5452 = !DILexicalBlockFile(scope: !5447, file: !479, discriminator: 1)
!5453 = !DILocation(line: 917, column: 33, scope: !5447)
!5454 = !DILocation(line: 917, column: 43, scope: !5447)
!5455 = !DILocation(line: 917, column: 13, scope: !5445)
!5456 = !DILocation(line: 918, column: 21, scope: !5447)
!5457 = !DILocation(line: 918, column: 13, scope: !5447)
!5458 = !DILocation(line: 919, column: 13, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5445, file: !479, line: 919, column: 13)
!5460 = !DILocation(line: 919, column: 25, scope: !5459)
!5461 = !DILocation(line: 919, column: 32, scope: !5459)
!5462 = !DILocation(line: 919, column: 35, scope: !5463)
!5463 = !DILexicalBlockFile(scope: !5459, file: !479, discriminator: 1)
!5464 = !DILocation(line: 919, column: 47, scope: !5459)
!5465 = !DILocation(line: 919, column: 13, scope: !5445)
!5466 = !DILocation(line: 920, column: 22, scope: !5467)
!5467 = distinct !DILexicalBlock(scope: !5459, file: !479, line: 919, column: 55)
!5468 = !DILocation(line: 921, column: 14, scope: !5467)
!5469 = !DILocation(line: 921, column: 25, scope: !5467)
!5470 = !DILocation(line: 922, column: 18, scope: !5471)
!5471 = distinct !DILexicalBlock(scope: !5467, file: !479, line: 922, column: 17)
!5472 = !DILocation(line: 922, column: 17, scope: !5471)
!5473 = !DILocation(line: 922, column: 27, scope: !5471)
!5474 = !DILocation(line: 922, column: 17, scope: !5467)
!5475 = !DILocation(line: 926, column: 17, scope: !5476)
!5476 = distinct !DILexicalBlock(scope: !5471, file: !479, line: 922, column: 36)
!5477 = !DILocation(line: 929, column: 18, scope: !5478)
!5478 = distinct !DILexicalBlock(scope: !5467, file: !479, line: 929, column: 17)
!5479 = !DILocation(line: 929, column: 17, scope: !5478)
!5480 = !DILocation(line: 929, column: 27, scope: !5478)
!5481 = !DILocation(line: 929, column: 34, scope: !5478)
!5482 = !DILocation(line: 929, column: 38, scope: !5483)
!5483 = !DILexicalBlockFile(scope: !5478, file: !479, discriminator: 1)
!5484 = !DILocation(line: 929, column: 37, scope: !5478)
!5485 = !DILocation(line: 929, column: 47, scope: !5478)
!5486 = !DILocation(line: 929, column: 17, scope: !5467)
!5487 = !DILocation(line: 930, column: 25, scope: !5478)
!5488 = !DILocation(line: 930, column: 17, scope: !5478)
!5489 = !DILocation(line: 931, column: 54, scope: !5490)
!5490 = distinct !DILexicalBlock(scope: !5467, file: !479, line: 931, column: 17)
!5491 = !DILocation(line: 931, column: 53, scope: !5490)
!5492 = !DILocation(line: 931, column: 67, scope: !5490)
!5493 = !DILocation(line: 931, column: 37, scope: !5490)
!5494 = !DILocation(line: 931, column: 18, scope: !5490)
!5495 = !DILocation(line: 931, column: 17, scope: !5490)
!5496 = !DILocation(line: 931, column: 78, scope: !5490)
!5497 = !DILocation(line: 931, column: 85, scope: !5490)
!5498 = !DILocation(line: 931, column: 88, scope: !5499)
!5499 = !DILexicalBlockFile(scope: !5490, file: !479, discriminator: 1)
!5500 = !DILocation(line: 931, column: 100, scope: !5490)
!5501 = !DILocation(line: 931, column: 17, scope: !5467)
!5502 = !DILocation(line: 932, column: 58, scope: !5503)
!5503 = distinct !DILexicalBlock(scope: !5504, file: !479, line: 932, column: 21)
!5504 = distinct !DILexicalBlock(scope: !5490, file: !479, line: 931, column: 109)
!5505 = !DILocation(line: 932, column: 57, scope: !5503)
!5506 = !DILocation(line: 932, column: 71, scope: !5503)
!5507 = !DILocation(line: 932, column: 41, scope: !5503)
!5508 = !DILocation(line: 932, column: 22, scope: !5503)
!5509 = !DILocation(line: 932, column: 21, scope: !5503)
!5510 = !DILocation(line: 932, column: 82, scope: !5503)
!5511 = !DILocation(line: 932, column: 21, scope: !5504)
!5512 = !DILocation(line: 933, column: 21, scope: !5503)
!5513 = !DILocation(line: 934, column: 58, scope: !5514)
!5514 = distinct !DILexicalBlock(scope: !5504, file: !479, line: 934, column: 21)
!5515 = !DILocation(line: 934, column: 57, scope: !5514)
!5516 = !DILocation(line: 934, column: 71, scope: !5514)
!5517 = !DILocation(line: 934, column: 41, scope: !5514)
!5518 = !DILocation(line: 934, column: 22, scope: !5514)
!5519 = !DILocation(line: 934, column: 21, scope: !5514)
!5520 = !DILocation(line: 934, column: 82, scope: !5514)
!5521 = !DILocation(line: 934, column: 21, scope: !5504)
!5522 = !DILocation(line: 935, column: 21, scope: !5514)
!5523 = !DILocation(line: 936, column: 13, scope: !5504)
!5524 = !DILocation(line: 937, column: 9, scope: !5467)
!5525 = !DILocation(line: 938, column: 18, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5459, file: !479, line: 938, column: 18)
!5527 = !DILocation(line: 938, column: 30, scope: !5526)
!5528 = !DILocation(line: 938, column: 37, scope: !5526)
!5529 = !DILocation(line: 938, column: 40, scope: !5530)
!5530 = !DILexicalBlockFile(scope: !5526, file: !479, discriminator: 1)
!5531 = !DILocation(line: 938, column: 52, scope: !5526)
!5532 = !DILocation(line: 938, column: 18, scope: !5459)
!5533 = !DILocation(line: 939, column: 22, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5526, file: !479, line: 938, column: 60)
!5535 = !DILocation(line: 940, column: 14, scope: !5534)
!5536 = !DILocation(line: 940, column: 25, scope: !5534)
!5537 = !DILocation(line: 941, column: 18, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !5534, file: !479, line: 941, column: 17)
!5539 = !DILocation(line: 941, column: 17, scope: !5538)
!5540 = !DILocation(line: 941, column: 27, scope: !5538)
!5541 = !DILocation(line: 941, column: 17, scope: !5534)
!5542 = !DILocation(line: 945, column: 17, scope: !5543)
!5543 = distinct !DILexicalBlock(scope: !5538, file: !479, line: 941, column: 36)
!5544 = !DILocation(line: 948, column: 18, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5534, file: !479, line: 948, column: 17)
!5546 = !DILocation(line: 948, column: 17, scope: !5545)
!5547 = !DILocation(line: 948, column: 27, scope: !5545)
!5548 = !DILocation(line: 948, column: 34, scope: !5545)
!5549 = !DILocation(line: 948, column: 38, scope: !5550)
!5550 = !DILexicalBlockFile(scope: !5545, file: !479, discriminator: 1)
!5551 = !DILocation(line: 948, column: 37, scope: !5545)
!5552 = !DILocation(line: 948, column: 47, scope: !5545)
!5553 = !DILocation(line: 948, column: 17, scope: !5534)
!5554 = !DILocation(line: 949, column: 25, scope: !5545)
!5555 = !DILocation(line: 949, column: 17, scope: !5545)
!5556 = !DILocation(line: 950, column: 54, scope: !5557)
!5557 = distinct !DILexicalBlock(scope: !5534, file: !479, line: 950, column: 17)
!5558 = !DILocation(line: 950, column: 53, scope: !5557)
!5559 = !DILocation(line: 950, column: 67, scope: !5557)
!5560 = !DILocation(line: 950, column: 37, scope: !5557)
!5561 = !DILocation(line: 950, column: 18, scope: !5557)
!5562 = !DILocation(line: 950, column: 17, scope: !5557)
!5563 = !DILocation(line: 950, column: 78, scope: !5557)
!5564 = !DILocation(line: 950, column: 85, scope: !5557)
!5565 = !DILocation(line: 950, column: 88, scope: !5566)
!5566 = !DILexicalBlockFile(scope: !5557, file: !479, discriminator: 1)
!5567 = !DILocation(line: 950, column: 100, scope: !5557)
!5568 = !DILocation(line: 950, column: 17, scope: !5534)
!5569 = !DILocation(line: 951, column: 58, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5571, file: !479, line: 951, column: 21)
!5571 = distinct !DILexicalBlock(scope: !5557, file: !479, line: 950, column: 109)
!5572 = !DILocation(line: 951, column: 57, scope: !5570)
!5573 = !DILocation(line: 951, column: 71, scope: !5570)
!5574 = !DILocation(line: 951, column: 41, scope: !5570)
!5575 = !DILocation(line: 951, column: 22, scope: !5570)
!5576 = !DILocation(line: 951, column: 21, scope: !5570)
!5577 = !DILocation(line: 951, column: 82, scope: !5570)
!5578 = !DILocation(line: 951, column: 21, scope: !5571)
!5579 = !DILocation(line: 952, column: 21, scope: !5570)
!5580 = !DILocation(line: 953, column: 58, scope: !5581)
!5581 = distinct !DILexicalBlock(scope: !5571, file: !479, line: 953, column: 21)
!5582 = !DILocation(line: 953, column: 57, scope: !5581)
!5583 = !DILocation(line: 953, column: 71, scope: !5581)
!5584 = !DILocation(line: 953, column: 41, scope: !5581)
!5585 = !DILocation(line: 953, column: 22, scope: !5581)
!5586 = !DILocation(line: 953, column: 21, scope: !5581)
!5587 = !DILocation(line: 953, column: 82, scope: !5581)
!5588 = !DILocation(line: 953, column: 21, scope: !5571)
!5589 = !DILocation(line: 954, column: 21, scope: !5581)
!5590 = !DILocation(line: 955, column: 13, scope: !5571)
!5591 = !DILocation(line: 956, column: 9, scope: !5534)
!5592 = !DILocation(line: 957, column: 5, scope: !5445)
!5593 = !DILocation(line: 959, column: 6, scope: !1020)
!5594 = !DILocation(line: 959, column: 17, scope: !1020)
!5595 = !DILocation(line: 960, column: 5, scope: !1020)
!5596 = !DILocation(line: 961, column: 1, scope: !1020)
!5597 = !DILocation(line: 1118, column: 41, scope: !1031)
!5598 = !DILocation(line: 1120, column: 5, scope: !1031)
!5599 = !DILocation(line: 1120, column: 15, scope: !1031)
!5600 = !DILocation(line: 1121, column: 5, scope: !1031)
!5601 = !DILocation(line: 1121, column: 15, scope: !1031)
!5602 = !DILocation(line: 1122, column: 5, scope: !1031)
!5603 = !DILocation(line: 1122, column: 16, scope: !1031)
!5604 = !DILocation(line: 1123, column: 5, scope: !1031)
!5605 = !DILocation(line: 1123, column: 16, scope: !1031)
!5606 = !DILocation(line: 1124, column: 5, scope: !1031)
!5607 = !DILocation(line: 1124, column: 16, scope: !1031)
!5608 = !DILocation(line: 1125, column: 5, scope: !1031)
!5609 = !DILocation(line: 1125, column: 15, scope: !1031)
!5610 = !DILocation(line: 1126, column: 29, scope: !1042)
!5611 = !DILocation(line: 1126, column: 34, scope: !1042)
!5612 = !DILocation(line: 1126, column: 9, scope: !1042)
!5613 = !DILocation(line: 1126, column: 9, scope: !1031)
!5614 = !DILocation(line: 1127, column: 9, scope: !1041)
!5615 = !DILocation(line: 1127, column: 15, scope: !1041)
!5616 = !DILocation(line: 1128, column: 43, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !1041, file: !479, line: 1128, column: 13)
!5618 = !DILocation(line: 1128, column: 13, scope: !5617)
!5619 = !DILocation(line: 1128, column: 13, scope: !1041)
!5620 = !DILocation(line: 1129, column: 13, scope: !5617)
!5621 = !DILocation(line: 1130, column: 41, scope: !5622)
!5622 = distinct !DILexicalBlock(scope: !1041, file: !479, line: 1130, column: 13)
!5623 = !DILocation(line: 1130, column: 13, scope: !5622)
!5624 = !DILocation(line: 1130, column: 13, scope: !1041)
!5625 = !DILocation(line: 1131, column: 13, scope: !5622)
!5626 = !DILocation(line: 1132, column: 55, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !1041, file: !479, line: 1132, column: 13)
!5628 = !DILocation(line: 1132, column: 24, scope: !5627)
!5629 = !DILocation(line: 1132, column: 22, scope: !5627)
!5630 = !DILocation(line: 1132, column: 13, scope: !1041)
!5631 = !DILocation(line: 1133, column: 13, scope: !5627)
!5632 = !DILocation(line: 1134, column: 53, scope: !1041)
!5633 = !DILocation(line: 1134, column: 57, scope: !1041)
!5634 = !DILocation(line: 1134, column: 56, scope: !1041)
!5635 = !DILocation(line: 1134, column: 15, scope: !1041)
!5636 = !DILocation(line: 1134, column: 13, scope: !1041)
!5637 = !DILocation(line: 1135, column: 14, scope: !1046)
!5638 = !DILocation(line: 1135, column: 13, scope: !1041)
!5639 = !DILocation(line: 1136, column: 13, scope: !1045)
!5640 = !DILocation(line: 1136, column: 18, scope: !5641)
!5641 = !DILexicalBlockFile(scope: !1044, file: !479, discriminator: 1)
!5642 = !DILocation(line: 1136, column: 28, scope: !1044)
!5643 = !DILocation(line: 1136, column: 58, scope: !1044)
!5644 = !DILocation(line: 1136, column: 75, scope: !5645)
!5645 = distinct !DILexicalBlock(scope: !1044, file: !479, line: 1136, column: 72)
!5646 = !DILocation(line: 1136, column: 92, scope: !5645)
!5647 = !DILocation(line: 1136, column: 72, scope: !5645)
!5648 = !DILocation(line: 1136, column: 102, scope: !5645)
!5649 = !DILocation(line: 1136, column: 72, scope: !1044)
!5650 = !DILocation(line: 1136, column: 72, scope: !5651)
!5651 = !DILexicalBlockFile(scope: !1044, file: !479, discriminator: 2)
!5652 = !DILocation(line: 1136, column: 133, scope: !5653)
!5653 = !DILexicalBlockFile(scope: !5645, file: !479, discriminator: 3)
!5654 = !DILocation(line: 1136, column: 151, scope: !5645)
!5655 = !DILocation(line: 1136, column: 161, scope: !5645)
!5656 = !DILocation(line: 1136, column: 186, scope: !5645)
!5657 = !DILocation(line: 1136, column: 117, scope: !5645)
!5658 = !DILocation(line: 1136, column: 205, scope: !5659)
!5659 = !DILexicalBlockFile(scope: !1045, file: !479, discriminator: 4)
!5660 = !DILocation(line: 1136, column: 205, scope: !1044)
!5661 = !DILocation(line: 1136, column: 205, scope: !5662)
!5662 = !DILexicalBlockFile(scope: !1044, file: !479, discriminator: 5)
!5663 = !DILocation(line: 1137, column: 13, scope: !1045)
!5664 = !DILocation(line: 1139, column: 33, scope: !1041)
!5665 = !DILocation(line: 1139, column: 16, scope: !1041)
!5666 = !DILocation(line: 1139, column: 14, scope: !1041)
!5667 = !DILocation(line: 1140, column: 18, scope: !1050)
!5668 = !DILocation(line: 1140, column: 16, scope: !1050)
!5669 = !DILocation(line: 1140, column: 14, scope: !1050)
!5670 = !DILocation(line: 1140, column: 25, scope: !5671)
!5671 = !DILexicalBlockFile(scope: !5672, file: !479, discriminator: 2)
!5672 = !DILexicalBlockFile(scope: !1049, file: !479, discriminator: 1)
!5673 = !DILocation(line: 1140, column: 29, scope: !1049)
!5674 = !DILocation(line: 1140, column: 27, scope: !1049)
!5675 = !DILocation(line: 1140, column: 9, scope: !1050)
!5676 = !DILocation(line: 1142, column: 13, scope: !1048)
!5677 = !DILocation(line: 1142, column: 21, scope: !1048)
!5678 = !DILocation(line: 1142, column: 115, scope: !1048)
!5679 = !DILocation(line: 1142, column: 96, scope: !1048)
!5680 = !DILocation(line: 1142, column: 126, scope: !1048)
!5681 = !DILocation(line: 1142, column: 132, scope: !1048)
!5682 = !DILocation(line: 1142, column: 138, scope: !1048)
!5683 = !DILocation(line: 1142, column: 66, scope: !1048)
!5684 = !DILocation(line: 1142, column: 483, scope: !5685)
!5685 = !DILexicalBlockFile(scope: !1048, file: !479, discriminator: 1)
!5686 = !DILocation(line: 1142, column: 218, scope: !1048)
!5687 = !DILocation(line: 1142, column: 200, scope: !1048)
!5688 = !DILocation(line: 1142, column: 229, scope: !1048)
!5689 = !DILocation(line: 1142, column: 235, scope: !1048)
!5690 = !DILocation(line: 1142, column: 198, scope: !1048)
!5691 = !DILocation(line: 1142, column: 294, scope: !5692)
!5692 = !DILexicalBlockFile(scope: !1048, file: !479, discriminator: 3)
!5693 = !DILocation(line: 1142, column: 277, scope: !1048)
!5694 = !DILocation(line: 1142, column: 304, scope: !1048)
!5695 = !DILocation(line: 1142, column: 310, scope: !1048)
!5696 = !DILocation(line: 1142, column: 247, scope: !1048)
!5697 = !DILocation(line: 1142, column: 346, scope: !5698)
!5698 = !DILexicalBlockFile(scope: !1048, file: !479, discriminator: 5)
!5699 = !DILocation(line: 1142, column: 328, scope: !1048)
!5700 = !DILocation(line: 1142, column: 355, scope: !1048)
!5701 = !DILocation(line: 1142, column: 320, scope: !1048)
!5702 = !DILocation(line: 1142, column: 399, scope: !5703)
!5703 = !DILexicalBlockFile(scope: !1048, file: !479, discriminator: 6)
!5704 = !DILocation(line: 1142, column: 372, scope: !1048)
!5705 = !DILocation(line: 1142, column: 408, scope: !1048)
!5706 = !DILocation(line: 1142, column: 364, scope: !1048)
!5707 = !DILocation(line: 1142, column: 198, scope: !5708)
!5708 = !DILexicalBlockFile(scope: !5709, file: !479, discriminator: 8)
!5709 = !DILexicalBlockFile(scope: !1048, file: !479, discriminator: 7)
!5710 = !DILocation(line: 1142, column: 456, scope: !5711)
!5711 = !DILexicalBlockFile(scope: !1048, file: !479, discriminator: 4)
!5712 = !DILocation(line: 1142, column: 435, scope: !1048)
!5713 = !DILocation(line: 1142, column: 467, scope: !1048)
!5714 = !DILocation(line: 1142, column: 472, scope: !1048)
!5715 = !DILocation(line: 1142, column: 164, scope: !5716)
!5716 = !DILexicalBlockFile(scope: !5717, file: !479, discriminator: 10)
!5717 = !DILexicalBlockFile(scope: !1048, file: !479, discriminator: 9)
!5718 = !DILocation(line: 1142, column: 539, scope: !5719)
!5719 = !DILexicalBlockFile(scope: !1048, file: !479, discriminator: 2)
!5720 = !DILocation(line: 1142, column: 520, scope: !1048)
!5721 = !DILocation(line: 1142, column: 550, scope: !1048)
!5722 = !DILocation(line: 1142, column: 556, scope: !1048)
!5723 = !DILocation(line: 1142, column: 562, scope: !1048)
!5724 = !DILocation(line: 1142, column: 490, scope: !1048)
!5725 = !DILocation(line: 1142, column: 907, scope: !5726)
!5726 = !DILexicalBlockFile(scope: !1048, file: !479, discriminator: 12)
!5727 = !DILocation(line: 1142, column: 642, scope: !1048)
!5728 = !DILocation(line: 1142, column: 624, scope: !1048)
!5729 = !DILocation(line: 1142, column: 653, scope: !1048)
!5730 = !DILocation(line: 1142, column: 659, scope: !1048)
!5731 = !DILocation(line: 1142, column: 622, scope: !1048)
!5732 = !DILocation(line: 1142, column: 718, scope: !5733)
!5733 = !DILexicalBlockFile(scope: !1048, file: !479, discriminator: 14)
!5734 = !DILocation(line: 1142, column: 701, scope: !1048)
!5735 = !DILocation(line: 1142, column: 728, scope: !1048)
!5736 = !DILocation(line: 1142, column: 734, scope: !1048)
!5737 = !DILocation(line: 1142, column: 671, scope: !1048)
!5738 = !DILocation(line: 1142, column: 770, scope: !5739)
!5739 = !DILexicalBlockFile(scope: !1048, file: !479, discriminator: 16)
!5740 = !DILocation(line: 1142, column: 752, scope: !1048)
!5741 = !DILocation(line: 1142, column: 779, scope: !1048)
!5742 = !DILocation(line: 1142, column: 744, scope: !1048)
!5743 = !DILocation(line: 1142, column: 823, scope: !5744)
!5744 = !DILexicalBlockFile(scope: !1048, file: !479, discriminator: 17)
!5745 = !DILocation(line: 1142, column: 796, scope: !1048)
!5746 = !DILocation(line: 1142, column: 832, scope: !1048)
!5747 = !DILocation(line: 1142, column: 788, scope: !1048)
!5748 = !DILocation(line: 1142, column: 622, scope: !5749)
!5749 = !DILexicalBlockFile(scope: !5750, file: !479, discriminator: 19)
!5750 = !DILexicalBlockFile(scope: !1048, file: !479, discriminator: 18)
!5751 = !DILocation(line: 1142, column: 880, scope: !5752)
!5752 = !DILexicalBlockFile(scope: !1048, file: !479, discriminator: 15)
!5753 = !DILocation(line: 1142, column: 859, scope: !1048)
!5754 = !DILocation(line: 1142, column: 891, scope: !1048)
!5755 = !DILocation(line: 1142, column: 896, scope: !1048)
!5756 = !DILocation(line: 1142, column: 589, scope: !5757)
!5757 = !DILexicalBlockFile(scope: !5758, file: !479, discriminator: 21)
!5758 = !DILexicalBlockFile(scope: !1048, file: !479, discriminator: 20)
!5759 = !DILocation(line: 1142, column: 588, scope: !1048)
!5760 = !DILocation(line: 1142, column: 1232, scope: !5761)
!5761 = !DILexicalBlockFile(scope: !1048, file: !479, discriminator: 13)
!5762 = !DILocation(line: 1142, column: 967, scope: !1048)
!5763 = !DILocation(line: 1142, column: 949, scope: !1048)
!5764 = !DILocation(line: 1142, column: 978, scope: !1048)
!5765 = !DILocation(line: 1142, column: 984, scope: !1048)
!5766 = !DILocation(line: 1142, column: 947, scope: !1048)
!5767 = !DILocation(line: 1142, column: 1043, scope: !5768)
!5768 = !DILexicalBlockFile(scope: !1048, file: !479, discriminator: 23)
!5769 = !DILocation(line: 1142, column: 1026, scope: !1048)
!5770 = !DILocation(line: 1142, column: 1053, scope: !1048)
!5771 = !DILocation(line: 1142, column: 1059, scope: !1048)
!5772 = !DILocation(line: 1142, column: 996, scope: !1048)
!5773 = !DILocation(line: 1142, column: 1095, scope: !5774)
!5774 = !DILexicalBlockFile(scope: !1048, file: !479, discriminator: 25)
!5775 = !DILocation(line: 1142, column: 1077, scope: !1048)
!5776 = !DILocation(line: 1142, column: 1104, scope: !1048)
!5777 = !DILocation(line: 1142, column: 1069, scope: !1048)
!5778 = !DILocation(line: 1142, column: 1148, scope: !5779)
!5779 = !DILexicalBlockFile(scope: !1048, file: !479, discriminator: 26)
!5780 = !DILocation(line: 1142, column: 1121, scope: !1048)
!5781 = !DILocation(line: 1142, column: 1157, scope: !1048)
!5782 = !DILocation(line: 1142, column: 1113, scope: !1048)
!5783 = !DILocation(line: 1142, column: 947, scope: !5784)
!5784 = !DILexicalBlockFile(scope: !5785, file: !479, discriminator: 28)
!5785 = !DILexicalBlockFile(scope: !1048, file: !479, discriminator: 27)
!5786 = !DILocation(line: 1142, column: 1205, scope: !5787)
!5787 = !DILexicalBlockFile(scope: !1048, file: !479, discriminator: 24)
!5788 = !DILocation(line: 1142, column: 1184, scope: !1048)
!5789 = !DILocation(line: 1142, column: 1216, scope: !1048)
!5790 = !DILocation(line: 1142, column: 1221, scope: !1048)
!5791 = !DILocation(line: 1142, column: 914, scope: !5792)
!5792 = !DILexicalBlockFile(scope: !5793, file: !479, discriminator: 30)
!5793 = !DILexicalBlockFile(scope: !1048, file: !479, discriminator: 29)
!5794 = !DILocation(line: 1142, column: 913, scope: !1048)
!5795 = !DILocation(line: 1142, column: 66, scope: !5796)
!5796 = !DILexicalBlockFile(scope: !5797, file: !479, discriminator: 31)
!5797 = !DILexicalBlockFile(scope: !1048, file: !479, discriminator: 22)
!5798 = !DILocation(line: 1142, column: 21, scope: !5799)
!5799 = !DILexicalBlockFile(scope: !5800, file: !479, discriminator: 32)
!5800 = !DILexicalBlockFile(scope: !1048, file: !479, discriminator: 11)
!5801 = !DILocation(line: 1143, column: 17, scope: !1054)
!5802 = !DILocation(line: 1143, column: 20, scope: !1054)
!5803 = !DILocation(line: 1143, column: 29, scope: !1054)
!5804 = !DILocation(line: 1143, column: 32, scope: !5805)
!5805 = !DILexicalBlockFile(scope: !1054, file: !479, discriminator: 1)
!5806 = !DILocation(line: 1143, column: 35, scope: !1054)
!5807 = !DILocation(line: 1143, column: 17, scope: !1048)
!5808 = !DILocation(line: 1145, column: 47, scope: !1053)
!5809 = !DILocation(line: 1145, column: 53, scope: !1053)
!5810 = !DILocation(line: 1145, column: 34, scope: !1053)
!5811 = !DILocation(line: 1145, column: 64, scope: !1053)
!5812 = !DILocation(line: 1145, column: 17, scope: !1053)
!5813 = !DILocation(line: 1146, column: 17, scope: !1053)
!5814 = !DILocation(line: 1146, column: 22, scope: !5815)
!5815 = !DILexicalBlockFile(scope: !1052, file: !479, discriminator: 1)
!5816 = !DILocation(line: 1146, column: 32, scope: !1052)
!5817 = !DILocation(line: 1146, column: 62, scope: !1052)
!5818 = !DILocation(line: 1146, column: 76, scope: !5819)
!5819 = distinct !DILexicalBlock(scope: !1052, file: !479, line: 1146, column: 73)
!5820 = !DILocation(line: 1146, column: 93, scope: !5819)
!5821 = !DILocation(line: 1146, column: 73, scope: !5819)
!5822 = !DILocation(line: 1146, column: 103, scope: !5819)
!5823 = !DILocation(line: 1146, column: 73, scope: !1052)
!5824 = !DILocation(line: 1146, column: 73, scope: !5825)
!5825 = !DILexicalBlockFile(scope: !1052, file: !479, discriminator: 2)
!5826 = !DILocation(line: 1146, column: 134, scope: !5827)
!5827 = !DILexicalBlockFile(scope: !5819, file: !479, discriminator: 3)
!5828 = !DILocation(line: 1146, column: 152, scope: !5819)
!5829 = !DILocation(line: 1146, column: 162, scope: !5819)
!5830 = !DILocation(line: 1146, column: 187, scope: !5819)
!5831 = !DILocation(line: 1146, column: 118, scope: !5819)
!5832 = !DILocation(line: 1146, column: 206, scope: !5833)
!5833 = !DILexicalBlockFile(scope: !1053, file: !479, discriminator: 4)
!5834 = !DILocation(line: 1146, column: 206, scope: !1052)
!5835 = !DILocation(line: 1146, column: 206, scope: !5836)
!5836 = !DILexicalBlockFile(scope: !1052, file: !479, discriminator: 5)
!5837 = !DILocation(line: 1147, column: 17, scope: !1053)
!5838 = !DILocation(line: 1147, column: 22, scope: !5839)
!5839 = !DILexicalBlockFile(scope: !1056, file: !479, discriminator: 1)
!5840 = !DILocation(line: 1147, column: 32, scope: !1056)
!5841 = !DILocation(line: 1147, column: 62, scope: !1056)
!5842 = !DILocation(line: 1147, column: 79, scope: !5843)
!5843 = distinct !DILexicalBlock(scope: !1056, file: !479, line: 1147, column: 76)
!5844 = !DILocation(line: 1147, column: 96, scope: !5843)
!5845 = !DILocation(line: 1147, column: 76, scope: !5843)
!5846 = !DILocation(line: 1147, column: 106, scope: !5843)
!5847 = !DILocation(line: 1147, column: 76, scope: !1056)
!5848 = !DILocation(line: 1147, column: 76, scope: !5849)
!5849 = !DILexicalBlockFile(scope: !1056, file: !479, discriminator: 2)
!5850 = !DILocation(line: 1147, column: 137, scope: !5851)
!5851 = !DILexicalBlockFile(scope: !5843, file: !479, discriminator: 3)
!5852 = !DILocation(line: 1147, column: 155, scope: !5843)
!5853 = !DILocation(line: 1147, column: 165, scope: !5843)
!5854 = !DILocation(line: 1147, column: 190, scope: !5843)
!5855 = !DILocation(line: 1147, column: 121, scope: !5843)
!5856 = !DILocation(line: 1147, column: 209, scope: !5833)
!5857 = !DILocation(line: 1147, column: 209, scope: !1056)
!5858 = !DILocation(line: 1147, column: 209, scope: !5859)
!5859 = !DILexicalBlockFile(scope: !1056, file: !479, discriminator: 5)
!5860 = !DILocation(line: 1148, column: 17, scope: !1053)
!5861 = !DILocation(line: 1150, column: 23, scope: !1048)
!5862 = !DILocation(line: 1150, column: 26, scope: !1048)
!5863 = !DILocation(line: 1150, column: 18, scope: !1048)
!5864 = !DILocation(line: 1150, column: 21, scope: !1048)
!5865 = !DILocation(line: 1151, column: 9, scope: !1049)
!5866 = !DILocation(line: 1151, column: 9, scope: !5672)
!5867 = !DILocation(line: 1151, column: 9, scope: !1048)
!5868 = !DILocation(line: 1140, column: 35, scope: !1049)
!5869 = !DILocation(line: 1140, column: 9, scope: !1049)
!5870 = !DILocation(line: 1152, column: 42, scope: !1041)
!5871 = !DILocation(line: 1152, column: 47, scope: !1041)
!5872 = !DILocation(line: 1152, column: 20, scope: !1041)
!5873 = !DILocation(line: 1152, column: 18, scope: !1041)
!5874 = !DILocation(line: 1153, column: 9, scope: !1041)
!5875 = !DILocation(line: 1153, column: 14, scope: !5876)
!5876 = !DILexicalBlockFile(scope: !1058, file: !479, discriminator: 1)
!5877 = !DILocation(line: 1153, column: 24, scope: !1058)
!5878 = !DILocation(line: 1153, column: 54, scope: !1058)
!5879 = !DILocation(line: 1153, column: 68, scope: !5880)
!5880 = distinct !DILexicalBlock(scope: !1058, file: !479, line: 1153, column: 65)
!5881 = !DILocation(line: 1153, column: 85, scope: !5880)
!5882 = !DILocation(line: 1153, column: 65, scope: !5880)
!5883 = !DILocation(line: 1153, column: 95, scope: !5880)
!5884 = !DILocation(line: 1153, column: 65, scope: !1058)
!5885 = !DILocation(line: 1153, column: 65, scope: !5886)
!5886 = !DILexicalBlockFile(scope: !1058, file: !479, discriminator: 2)
!5887 = !DILocation(line: 1153, column: 126, scope: !5888)
!5888 = !DILexicalBlockFile(scope: !5880, file: !479, discriminator: 3)
!5889 = !DILocation(line: 1153, column: 144, scope: !5880)
!5890 = !DILocation(line: 1153, column: 154, scope: !5880)
!5891 = !DILocation(line: 1153, column: 179, scope: !5880)
!5892 = !DILocation(line: 1153, column: 110, scope: !5880)
!5893 = !DILocation(line: 1153, column: 198, scope: !5894)
!5894 = !DILexicalBlockFile(scope: !1041, file: !479, discriminator: 4)
!5895 = !DILocation(line: 1153, column: 198, scope: !1058)
!5896 = !DILocation(line: 1153, column: 198, scope: !5897)
!5897 = !DILexicalBlockFile(scope: !1058, file: !479, discriminator: 5)
!5898 = !DILocation(line: 1154, column: 9, scope: !1041)
!5899 = !DILocation(line: 1154, column: 14, scope: !5900)
!5900 = !DILexicalBlockFile(scope: !1060, file: !479, discriminator: 1)
!5901 = !DILocation(line: 1154, column: 24, scope: !1060)
!5902 = !DILocation(line: 1154, column: 54, scope: !1060)
!5903 = !DILocation(line: 1154, column: 71, scope: !5904)
!5904 = distinct !DILexicalBlock(scope: !1060, file: !479, line: 1154, column: 68)
!5905 = !DILocation(line: 1154, column: 88, scope: !5904)
!5906 = !DILocation(line: 1154, column: 68, scope: !5904)
!5907 = !DILocation(line: 1154, column: 98, scope: !5904)
!5908 = !DILocation(line: 1154, column: 68, scope: !1060)
!5909 = !DILocation(line: 1154, column: 68, scope: !5910)
!5910 = !DILexicalBlockFile(scope: !1060, file: !479, discriminator: 2)
!5911 = !DILocation(line: 1154, column: 129, scope: !5912)
!5912 = !DILexicalBlockFile(scope: !5904, file: !479, discriminator: 3)
!5913 = !DILocation(line: 1154, column: 147, scope: !5904)
!5914 = !DILocation(line: 1154, column: 157, scope: !5904)
!5915 = !DILocation(line: 1154, column: 182, scope: !5904)
!5916 = !DILocation(line: 1154, column: 113, scope: !5904)
!5917 = !DILocation(line: 1154, column: 201, scope: !5894)
!5918 = !DILocation(line: 1154, column: 201, scope: !1060)
!5919 = !DILocation(line: 1154, column: 201, scope: !5920)
!5920 = !DILexicalBlockFile(scope: !1060, file: !479, discriminator: 5)
!5921 = !DILocation(line: 1155, column: 16, scope: !1041)
!5922 = !DILocation(line: 1155, column: 9, scope: !1041)
!5923 = !DILocation(line: 1156, column: 5, scope: !1042)
!5924 = !DILocation(line: 1157, column: 34, scope: !1063)
!5925 = !DILocation(line: 1157, column: 39, scope: !1063)
!5926 = !DILocation(line: 1157, column: 14, scope: !1063)
!5927 = !DILocation(line: 1157, column: 14, scope: !1042)
!5928 = !DILocation(line: 1158, column: 9, scope: !1062)
!5929 = !DILocation(line: 1158, column: 19, scope: !1062)
!5930 = !DILocation(line: 1159, column: 9, scope: !1062)
!5931 = !DILocation(line: 1159, column: 24, scope: !1062)
!5932 = !DILocation(line: 1160, column: 9, scope: !1062)
!5933 = !DILocation(line: 1160, column: 17, scope: !1062)
!5934 = !DILocation(line: 1161, column: 9, scope: !1062)
!5935 = !DILocation(line: 1161, column: 13, scope: !1062)
!5936 = !DILocation(line: 1162, column: 43, scope: !5937)
!5937 = distinct !DILexicalBlock(scope: !1062, file: !479, line: 1162, column: 13)
!5938 = !DILocation(line: 1162, column: 13, scope: !5937)
!5939 = !DILocation(line: 1162, column: 13, scope: !1062)
!5940 = !DILocation(line: 1163, column: 13, scope: !5937)
!5941 = !DILocation(line: 1164, column: 41, scope: !5942)
!5942 = distinct !DILexicalBlock(scope: !1062, file: !479, line: 1164, column: 13)
!5943 = !DILocation(line: 1164, column: 13, scope: !5942)
!5944 = !DILocation(line: 1164, column: 13, scope: !1062)
!5945 = !DILocation(line: 1165, column: 13, scope: !5942)
!5946 = !DILocation(line: 1166, column: 55, scope: !5947)
!5947 = distinct !DILexicalBlock(scope: !1062, file: !479, line: 1166, column: 13)
!5948 = !DILocation(line: 1166, column: 24, scope: !5947)
!5949 = !DILocation(line: 1166, column: 22, scope: !5947)
!5950 = !DILocation(line: 1166, column: 13, scope: !1062)
!5951 = !DILocation(line: 1167, column: 13, scope: !5947)
!5952 = !DILocation(line: 1168, column: 52, scope: !1073)
!5953 = !DILocation(line: 1168, column: 35, scope: !1073)
!5954 = !DILocation(line: 1168, column: 17, scope: !1073)
!5955 = !DILocation(line: 1168, column: 13, scope: !1062)
!5956 = !DILocation(line: 1169, column: 13, scope: !1072)
!5957 = !DILocation(line: 1169, column: 18, scope: !5958)
!5958 = !DILexicalBlockFile(scope: !1071, file: !479, discriminator: 1)
!5959 = !DILocation(line: 1169, column: 28, scope: !1071)
!5960 = !DILocation(line: 1169, column: 58, scope: !1071)
!5961 = !DILocation(line: 1169, column: 75, scope: !5962)
!5962 = distinct !DILexicalBlock(scope: !1071, file: !479, line: 1169, column: 72)
!5963 = !DILocation(line: 1169, column: 92, scope: !5962)
!5964 = !DILocation(line: 1169, column: 72, scope: !5962)
!5965 = !DILocation(line: 1169, column: 102, scope: !5962)
!5966 = !DILocation(line: 1169, column: 72, scope: !1071)
!5967 = !DILocation(line: 1169, column: 72, scope: !5968)
!5968 = !DILexicalBlockFile(scope: !1071, file: !479, discriminator: 2)
!5969 = !DILocation(line: 1169, column: 133, scope: !5970)
!5970 = !DILexicalBlockFile(scope: !5962, file: !479, discriminator: 3)
!5971 = !DILocation(line: 1169, column: 151, scope: !5962)
!5972 = !DILocation(line: 1169, column: 161, scope: !5962)
!5973 = !DILocation(line: 1169, column: 186, scope: !5962)
!5974 = !DILocation(line: 1169, column: 117, scope: !5962)
!5975 = !DILocation(line: 1169, column: 205, scope: !5976)
!5976 = !DILexicalBlockFile(scope: !1072, file: !479, discriminator: 4)
!5977 = !DILocation(line: 1169, column: 205, scope: !1071)
!5978 = !DILocation(line: 1169, column: 205, scope: !5979)
!5979 = !DILexicalBlockFile(scope: !1071, file: !479, discriminator: 5)
!5980 = !DILocation(line: 1170, column: 13, scope: !1072)
!5981 = !DILocation(line: 1172, column: 9, scope: !1062)
!5982 = !DILocation(line: 1172, column: 16, scope: !5983)
!5983 = !DILexicalBlockFile(scope: !5984, file: !479, discriminator: 4)
!5984 = !DILexicalBlockFile(scope: !1062, file: !479, discriminator: 1)
!5985 = !DILocation(line: 1172, column: 25, scope: !1062)
!5986 = !DILocation(line: 1172, column: 29, scope: !1062)
!5987 = !DILocation(line: 1172, column: 32, scope: !5988)
!5988 = !DILexicalBlockFile(scope: !1062, file: !479, discriminator: 2)
!5989 = !DILocation(line: 1172, column: 43, scope: !1062)
!5990 = !DILocation(line: 1172, column: 47, scope: !1062)
!5991 = !DILocation(line: 1172, column: 46, scope: !1062)
!5992 = !DILocation(line: 1172, column: 41, scope: !1062)
!5993 = !DILocation(line: 1172, column: 9, scope: !5994)
!5994 = !DILexicalBlockFile(scope: !1062, file: !479, discriminator: 3)
!5995 = !DILocation(line: 1174, column: 19, scope: !5996)
!5996 = distinct !DILexicalBlock(scope: !5997, file: !479, line: 1174, column: 17)
!5997 = distinct !DILexicalBlock(scope: !1062, file: !479, line: 1172, column: 54)
!5998 = !DILocation(line: 1174, column: 25, scope: !5996)
!5999 = !DILocation(line: 1174, column: 24, scope: !5996)
!6000 = !DILocation(line: 1174, column: 17, scope: !5996)
!6001 = !DILocation(line: 1174, column: 35, scope: !5996)
!6002 = !DILocation(line: 1174, column: 17, scope: !5997)
!6003 = !DILocation(line: 1175, column: 17, scope: !5996)
!6004 = !DILocation(line: 1176, column: 39, scope: !5997)
!6005 = !DILocation(line: 1176, column: 45, scope: !5997)
!6006 = !DILocation(line: 1176, column: 44, scope: !5997)
!6007 = !DILocation(line: 1176, column: 37, scope: !5997)
!6008 = !DILocation(line: 1176, column: 35, scope: !5997)
!6009 = !DILocation(line: 1176, column: 28, scope: !5997)
!6010 = !DILocation(line: 1176, column: 16, scope: !5997)
!6011 = !DILocation(line: 1176, column: 13, scope: !5997)
!6012 = !DILocation(line: 1176, column: 26, scope: !5997)
!6013 = !DILocation(line: 1177, column: 21, scope: !5997)
!6014 = !DILocation(line: 1179, column: 9, scope: !1062)
!6015 = !DILocation(line: 1179, column: 14, scope: !6016)
!6016 = !DILexicalBlockFile(scope: !1075, file: !479, discriminator: 1)
!6017 = !DILocation(line: 1179, column: 24, scope: !1075)
!6018 = !DILocation(line: 1179, column: 54, scope: !1075)
!6019 = !DILocation(line: 1179, column: 71, scope: !6020)
!6020 = distinct !DILexicalBlock(scope: !1075, file: !479, line: 1179, column: 68)
!6021 = !DILocation(line: 1179, column: 88, scope: !6020)
!6022 = !DILocation(line: 1179, column: 68, scope: !6020)
!6023 = !DILocation(line: 1179, column: 98, scope: !6020)
!6024 = !DILocation(line: 1179, column: 68, scope: !1075)
!6025 = !DILocation(line: 1179, column: 68, scope: !6026)
!6026 = !DILexicalBlockFile(scope: !1075, file: !479, discriminator: 2)
!6027 = !DILocation(line: 1179, column: 129, scope: !6028)
!6028 = !DILexicalBlockFile(scope: !6020, file: !479, discriminator: 3)
!6029 = !DILocation(line: 1179, column: 147, scope: !6020)
!6030 = !DILocation(line: 1179, column: 157, scope: !6020)
!6031 = !DILocation(line: 1179, column: 182, scope: !6020)
!6032 = !DILocation(line: 1179, column: 113, scope: !6020)
!6033 = !DILocation(line: 1179, column: 201, scope: !6034)
!6034 = !DILexicalBlockFile(scope: !1062, file: !479, discriminator: 4)
!6035 = !DILocation(line: 1179, column: 201, scope: !1075)
!6036 = !DILocation(line: 1179, column: 201, scope: !6037)
!6037 = !DILexicalBlockFile(scope: !1075, file: !479, discriminator: 5)
!6038 = !DILocation(line: 1180, column: 14, scope: !6039)
!6039 = distinct !DILexicalBlock(scope: !1062, file: !479, line: 1180, column: 13)
!6040 = !DILocation(line: 1180, column: 13, scope: !1062)
!6041 = !DILocation(line: 1182, column: 43, scope: !6042)
!6042 = distinct !DILexicalBlock(scope: !6039, file: !479, line: 1180, column: 24)
!6043 = !DILocation(line: 1182, column: 49, scope: !6042)
!6044 = !DILocation(line: 1182, column: 30, scope: !6042)
!6045 = !DILocation(line: 1182, column: 60, scope: !6042)
!6046 = !DILocation(line: 1182, column: 13, scope: !6042)
!6047 = !DILocation(line: 1183, column: 13, scope: !6042)
!6048 = !DILocation(line: 1185, column: 63, scope: !1062)
!6049 = !DILocation(line: 1185, column: 67, scope: !1062)
!6050 = !DILocation(line: 1185, column: 15, scope: !1062)
!6051 = !DILocation(line: 1185, column: 13, scope: !1062)
!6052 = !DILocation(line: 1186, column: 13, scope: !6053)
!6053 = distinct !DILexicalBlock(scope: !1062, file: !479, line: 1186, column: 13)
!6054 = !DILocation(line: 1186, column: 17, scope: !6053)
!6055 = !DILocation(line: 1186, column: 13, scope: !1062)
!6056 = !DILocation(line: 1187, column: 13, scope: !6053)
!6057 = !DILocation(line: 1188, column: 38, scope: !1062)
!6058 = !DILocation(line: 1188, column: 43, scope: !1062)
!6059 = !DILocation(line: 1188, column: 49, scope: !1062)
!6060 = !DILocation(line: 1188, column: 48, scope: !1062)
!6061 = !DILocation(line: 1188, column: 16, scope: !1062)
!6062 = !DILocation(line: 1188, column: 9, scope: !1062)
!6063 = !DILocation(line: 1189, column: 5, scope: !1063)
!6064 = !DILocation(line: 1191, column: 30, scope: !6065)
!6065 = distinct !DILexicalBlock(scope: !1063, file: !479, line: 1190, column: 10)
!6066 = !DILocation(line: 1191, column: 9, scope: !6065)
!6067 = !DILocation(line: 1192, column: 9, scope: !6065)
!6068 = !DILocation(line: 1194, column: 1, scope: !1031)
