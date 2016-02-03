; ModuleID = 'codecs.o.bc'
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

@.str = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@Py_hexdigits = global i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), align 8
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
  tail call void @llvm.dbg.value(metadata %struct._object* %search_function, i64 0, metadata !480, metadata !1099), !dbg !1100
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !482, metadata !1099), !dbg !1101
  tail call void @llvm.dbg.value(metadata !1102, i64 0, metadata !490, metadata !1099), !dbg !1101
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !493, metadata !1099), !dbg !1101
  %0 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !1103, !tbaa !1106
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !489, metadata !1099), !dbg !1101
  %interp4 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !1110
  %1 = bitcast i8* %interp4 to %struct._is**, !dbg !1110
  %2 = load %struct._is*, %struct._is** %1, align 8, !dbg !1110, !tbaa !1111
  tail call void @llvm.dbg.value(metadata %struct._is* %2, i64 0, metadata !481, metadata !1099), !dbg !1115
  %codec_search_path = getelementptr inbounds %struct._is, %struct._is* %2, i64 0, i32 7, !dbg !1116
  %3 = load %struct._object*, %struct._object** %codec_search_path, align 8, !dbg !1116, !tbaa !1118
  %cmp = icmp eq %struct._object* %3, null, !dbg !1120
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1121

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @_PyCodecRegistry_Init(), !dbg !1122
  %tobool = icmp eq i32 %call, 0, !dbg !1122
  br i1 %tobool, label %if.end, label %cleanup, !dbg !1124

if.end:                                           ; preds = %land.lhs.true, %entry
  %cmp5 = icmp eq %struct._object* %search_function, null, !dbg !1125
  br i1 %cmp5, label %if.then.6, label %if.end.8, !dbg !1127

if.then.6:                                        ; preds = %if.end
  %call7 = tail call i32 @PyErr_BadArgument() #2, !dbg !1128
  br label %cleanup, !dbg !1130

if.end.8:                                         ; preds = %if.end
  %call9 = tail call i32 @PyCallable_Check(%struct._object* %search_function) #2, !dbg !1131
  %tobool10 = icmp eq i32 %call9, 0, !dbg !1131
  br i1 %tobool10, label %if.then.11, label %if.end.12, !dbg !1133

if.then.11:                                       ; preds = %if.end.8
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1134, !tbaa !1106
  tail call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0)) #2, !dbg !1136
  br label %cleanup, !dbg !1137

if.end.12:                                        ; preds = %if.end.8
  %5 = load %struct._object*, %struct._object** %codec_search_path, align 8, !dbg !1138, !tbaa !1118
  %call14 = tail call i32 @PyList_Append(%struct._object* %5, %struct._object* %search_function) #2, !dbg !1139
  br label %cleanup, !dbg !1140

cleanup:                                          ; preds = %if.then.6, %if.then.11, %land.lhs.true, %if.end.12
  %retval.0 = phi i32 [ %call14, %if.end.12 ], [ -1, %land.lhs.true ], [ -1, %if.then.11 ], [ -1, %if.then.6 ]
  ret i32 %retval.0, !dbg !1141
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_PyCodecRegistry_Init() #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !909, metadata !1099), !dbg !1142
  tail call void @llvm.dbg.value(metadata !1102, i64 0, metadata !912, metadata !1099), !dbg !1142
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !913, metadata !1099), !dbg !1142
  %0 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !1143, !tbaa !1106
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !911, metadata !1099), !dbg !1142
  %interp4 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !1146
  %1 = bitcast i8* %interp4 to %struct._is**, !dbg !1146
  %2 = load %struct._is*, %struct._is** %1, align 8, !dbg !1146, !tbaa !1111
  tail call void @llvm.dbg.value(metadata %struct._is* %2, i64 0, metadata !908, metadata !1099), !dbg !1147
  %codec_search_path = getelementptr inbounds %struct._is, %struct._is* %2, i64 0, i32 7, !dbg !1148
  %3 = load %struct._object*, %struct._object** %codec_search_path, align 8, !dbg !1148, !tbaa !1118
  %cmp = icmp eq %struct._object* %3, null, !dbg !1150
  br i1 %cmp, label %if.end, label %cleanup, !dbg !1151

if.end:                                           ; preds = %entry
  %call = tail call %struct._object* @PyList_New(i64 0) #2, !dbg !1152
  store %struct._object* %call, %struct._object** %codec_search_path, align 8, !dbg !1153, !tbaa !1118
  %call8 = tail call %struct._object* @PyDict_New() #2, !dbg !1154
  %codec_search_cache = getelementptr inbounds %struct._is, %struct._is* %2, i64 0, i32 8, !dbg !1155
  store %struct._object* %call8, %struct._object** %codec_search_cache, align 8, !dbg !1156, !tbaa !1157
  %call9 = tail call %struct._object* @PyDict_New() #2, !dbg !1158
  %codec_error_registry = getelementptr inbounds %struct._is, %struct._is* %2, i64 0, i32 9, !dbg !1159
  store %struct._object* %call9, %struct._object** %codec_error_registry, align 8, !dbg !1160, !tbaa !1161
  %tobool = icmp eq %struct._object* %call9, null, !dbg !1162
  br i1 %tobool, label %if.end.31, label %for.body.preheader, !dbg !1163

for.body.preheader:                               ; preds = %if.end
  br label %for.body, !dbg !1164

for.cond:                                         ; preds = %if.end.27
  %cmp12 = icmp ult i64 %indvars.iv.next, 7, !dbg !1165
  br i1 %cmp12, label %for.body, label %if.end.31.loopexit, !dbg !1166

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %for.body.preheader ]
  %def = getelementptr [7 x %struct.anon.0], [7 x %struct.anon.0]* @_PyCodecRegistry_Init.methods, i64 0, i64 %indvars.iv, i32 1, !dbg !1164
  %call15 = tail call %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef* %def, %struct._object* null, %struct._object* null) #2, !dbg !1167
  tail call void @llvm.dbg.value(metadata %struct._object* %call15, i64 0, metadata !916, metadata !1099), !dbg !1168
  %tobool17 = icmp eq %struct._object* %call15, null, !dbg !1169
  br i1 %tobool17, label %if.then.18, label %if.end.19, !dbg !1171

if.then.18:                                       ; preds = %for.body
  tail call void @Py_FatalError(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.45, i64 0, i64 0)) #6, !dbg !1172
  unreachable, !dbg !1172

if.end.19:                                        ; preds = %for.body
  %name = getelementptr [7 x %struct.anon.0], [7 x %struct.anon.0]* @_PyCodecRegistry_Init.methods, i64 0, i64 %indvars.iv, i32 0, !dbg !1173
  %4 = load i8*, i8** %name, align 8, !dbg !1173, !tbaa !1174
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !638, metadata !1099) #2, !dbg !1177
  tail call void @llvm.dbg.value(metadata %struct._object* %call15, i64 0, metadata !639, metadata !1099) #2, !dbg !1179
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !641, metadata !1099) #2, !dbg !1180
  tail call void @llvm.dbg.value(metadata !1102, i64 0, metadata !644, metadata !1099) #2, !dbg !1180
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !645, metadata !1099) #2, !dbg !1180
  %5 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !1181, !tbaa !1106
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !643, metadata !1099) #2, !dbg !1180
  %interp4.i = getelementptr inbounds i8, i8* %5, i64 16, !dbg !1184
  %6 = bitcast i8* %interp4.i to %struct._is**, !dbg !1184
  %7 = load %struct._is*, %struct._is** %6, align 8, !dbg !1184, !tbaa !1111
  tail call void @llvm.dbg.value(metadata %struct._is* %7, i64 0, metadata !640, metadata !1099) #2, !dbg !1185
  %codec_search_path.i = getelementptr inbounds %struct._is, %struct._is* %7, i64 0, i32 7, !dbg !1186
  %8 = load %struct._object*, %struct._object** %codec_search_path.i, align 8, !dbg !1186, !tbaa !1118
  %cmp.i = icmp eq %struct._object* %8, null, !dbg !1188
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i, !dbg !1189

land.lhs.true.i:                                  ; preds = %if.end.19
  %call.i = tail call fastcc i32 @_PyCodecRegistry_Init() #2, !dbg !1190
  %tobool.i = icmp eq i32 %call.i, 0, !dbg !1190
  br i1 %tobool.i, label %if.end.i, label %PyCodec_RegisterError.exit, !dbg !1192

if.end.i:                                         ; preds = %land.lhs.true.i, %if.end.19
  %call5.i = tail call i32 @PyCallable_Check(%struct._object* %call15) #2, !dbg !1193
  %tobool6.i = icmp eq i32 %call5.i, 0, !dbg !1193
  br i1 %tobool6.i, label %if.then.7.i, label %if.end.8.i, !dbg !1195

if.then.7.i:                                      ; preds = %if.end.i
  %9 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1196, !tbaa !1106
  tail call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0)) #2, !dbg !1198
  br label %PyCodec_RegisterError.exit, !dbg !1199

if.end.8.i:                                       ; preds = %if.end.i
  %codec_error_registry.i = getelementptr inbounds %struct._is, %struct._is* %7, i64 0, i32 9, !dbg !1200
  %10 = load %struct._object*, %struct._object** %codec_error_registry.i, align 8, !dbg !1200, !tbaa !1161
  %call9.i = tail call i32 @PyDict_SetItemString(%struct._object* %10, i8* %4, %struct._object* %call15) #2, !dbg !1201
  br label %PyCodec_RegisterError.exit, !dbg !1202

PyCodec_RegisterError.exit:                       ; preds = %land.lhs.true.i, %if.then.7.i, %if.end.8.i
  %retval.0.i = phi i32 [ %call9.i, %if.end.8.i ], [ -1, %if.then.7.i ], [ -1, %land.lhs.true.i ], !dbg !1203
  tail call void @llvm.dbg.value(metadata i32 %retval.0.i, i64 0, metadata !922, metadata !1099), !dbg !1204
  tail call void @llvm.dbg.value(metadata %struct._object* %call15, i64 0, metadata !923, metadata !1099), !dbg !1205
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call15, i64 0, i32 0, !dbg !1207
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !1207, !tbaa !1209
  %dec = add i64 %11, -1, !dbg !1207
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1207, !tbaa !1209
  %cmp24 = icmp eq i64 %dec, 0, !dbg !1207
  br i1 %cmp24, label %if.else, label %if.end.27, !dbg !1211

if.else:                                          ; preds = %PyCodec_RegisterError.exit
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call15, i64 0, i32 1, !dbg !1212
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1212, !tbaa !1214
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !1212
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1212, !tbaa !1215
  tail call void %13(%struct._object* %call15) #2, !dbg !1212
  br label %if.end.27

if.end.27:                                        ; preds = %PyCodec_RegisterError.exit, %if.else
  %tobool28 = icmp eq i32 %retval.0.i, 0, !dbg !1218
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1166
  br i1 %tobool28, label %for.cond, label %if.then.29, !dbg !1220

if.then.29:                                       ; preds = %if.end.27
  tail call void @Py_FatalError(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.45, i64 0, i64 0)) #6, !dbg !1221
  unreachable, !dbg !1221

if.end.31.loopexit:                               ; preds = %for.cond
  br label %if.end.31, !dbg !1222

if.end.31:                                        ; preds = %if.end.31.loopexit, %if.end
  %14 = load %struct._object*, %struct._object** %codec_search_path, align 8, !dbg !1222, !tbaa !1118
  %cmp33 = icmp eq %struct._object* %14, null, !dbg !1224
  br i1 %cmp33, label %if.then.42, label %lor.lhs.false, !dbg !1225

lor.lhs.false:                                    ; preds = %if.end.31
  %15 = load %struct._object*, %struct._object** %codec_search_cache, align 8, !dbg !1226, !tbaa !1157
  %cmp36 = icmp eq %struct._object* %15, null, !dbg !1227
  br i1 %cmp36, label %if.then.42, label %lor.lhs.false.38, !dbg !1228

lor.lhs.false.38:                                 ; preds = %lor.lhs.false
  %16 = load %struct._object*, %struct._object** %codec_error_registry, align 8, !dbg !1229, !tbaa !1161
  %cmp40 = icmp eq %struct._object* %16, null, !dbg !1230
  br i1 %cmp40, label %if.then.42, label %if.end.43, !dbg !1231

if.then.42:                                       ; preds = %lor.lhs.false.38, %lor.lhs.false, %if.end.31
  tail call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.46, i64 0, i64 0)) #6, !dbg !1232
  unreachable, !dbg !1232

if.end.43:                                        ; preds = %lor.lhs.false.38
  %call44 = tail call %struct._object* @PyImport_ImportModuleNoBlock(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i64 0, i64 0)) #2, !dbg !1233
  tail call void @llvm.dbg.value(metadata %struct._object* %call44, i64 0, metadata !914, metadata !1099), !dbg !1234
  %cmp45 = icmp eq %struct._object* %call44, null, !dbg !1235
  br i1 %cmp45, label %cleanup, label %do.body.49, !dbg !1237

do.body.49:                                       ; preds = %if.end.43
  tail call void @llvm.dbg.value(metadata %struct._object* %call44, i64 0, metadata !925, metadata !1099), !dbg !1238
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %call44, i64 0, i32 0, !dbg !1240
  %17 = load i64, i64* %ob_refcnt52, align 8, !dbg !1240, !tbaa !1209
  %dec53 = add i64 %17, -1, !dbg !1240
  store i64 %dec53, i64* %ob_refcnt52, align 8, !dbg !1240, !tbaa !1209
  %cmp54 = icmp eq i64 %dec53, 0, !dbg !1240
  br i1 %cmp54, label %if.else.57, label %if.end.60, !dbg !1242

if.else.57:                                       ; preds = %do.body.49
  %ob_type58 = getelementptr inbounds %struct._object, %struct._object* %call44, i64 0, i32 1, !dbg !1243
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type58, align 8, !dbg !1243, !tbaa !1214
  %tp_dealloc59 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i64 0, i32 4, !dbg !1243
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc59, align 8, !dbg !1243, !tbaa !1215
  tail call void %19(%struct._object* %call44) #2, !dbg !1243
  br label %if.end.60

if.end.60:                                        ; preds = %do.body.49, %if.else.57
  %codecs_initialized = getelementptr inbounds %struct._is, %struct._is* %2, i64 0, i32 10, !dbg !1245
  store i32 1, i32* %codecs_initialized, align 4, !dbg !1246, !tbaa !1247
  br label %cleanup, !dbg !1248

cleanup:                                          ; preds = %if.end.43, %entry, %if.end.60
  %retval.0 = phi i32 [ 0, %if.end.60 ], [ 0, %entry ], [ -1, %if.end.43 ]
  ret i32 %retval.0, !dbg !1249
}

declare i32 @PyErr_BadArgument() #3

declare i32 @PyCallable_Check(%struct._object*) #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare i32 @PyList_Append(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @_PyCodec_Lookup(i8* %encoding) #0 {
entry:
  %v = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata i8* %encoding, i64 0, metadata !499, metadata !1099), !dbg !1250
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !502, metadata !1099), !dbg !1251
  %0 = bitcast %struct._object** %v to i8*, !dbg !1252
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1252
  %cmp = icmp eq i8* %encoding, null, !dbg !1253
  br i1 %cmp, label %if.then, label %if.end, !dbg !1255

if.then:                                          ; preds = %entry
  %call = tail call i32 @PyErr_BadArgument() #2, !dbg !1256
  br label %cleanup.136, !dbg !1258

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !506, metadata !1099), !dbg !1259
  tail call void @llvm.dbg.value(metadata !1102, i64 0, metadata !509, metadata !1099), !dbg !1259
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !510, metadata !1099), !dbg !1259
  %1 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !1260, !tbaa !1106
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !508, metadata !1099), !dbg !1259
  %interp5 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !1263
  %2 = bitcast i8* %interp5 to %struct._is**, !dbg !1263
  %3 = load %struct._is*, %struct._is** %2, align 8, !dbg !1263, !tbaa !1111
  tail call void @llvm.dbg.value(metadata %struct._is* %3, i64 0, metadata !500, metadata !1099), !dbg !1264
  %codec_search_path = getelementptr inbounds %struct._is, %struct._is* %3, i64 0, i32 7, !dbg !1265
  %4 = load %struct._object*, %struct._object** %codec_search_path, align 8, !dbg !1265, !tbaa !1118
  %cmp6 = icmp eq %struct._object* %4, null, !dbg !1267
  br i1 %cmp6, label %land.lhs.true, label %if.end.9, !dbg !1268

land.lhs.true:                                    ; preds = %if.end
  %call7 = tail call fastcc i32 @_PyCodecRegistry_Init(), !dbg !1269
  %tobool = icmp eq i32 %call7, 0, !dbg !1269
  br i1 %tobool, label %if.end.9, label %cleanup.136, !dbg !1271

if.end.9:                                         ; preds = %land.lhs.true, %if.end
  tail call void @llvm.dbg.value(metadata i8* %encoding, i64 0, metadata !741, metadata !1099) #2, !dbg !1272
  %call.i = tail call i64 @strlen(i8* %encoding) #7, !dbg !1274
  tail call void @llvm.dbg.value(metadata i64 %call.i, i64 0, metadata !743, metadata !1099) #2, !dbg !1275
  %cmp.i = icmp slt i64 %call.i, 0, !dbg !1276
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !1278

if.then.i:                                        ; preds = %if.end.9
  %5 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !1279, !tbaa !1106
  tail call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0)) #2, !dbg !1281
  br label %normalizestring.exit.thread, !dbg !1282

if.end.i:                                         ; preds = %if.end.9
  %add.i = add i64 %call.i, 1, !dbg !1283
  %call1.i = tail call i8* @PyMem_Malloc(i64 %add.i) #2, !dbg !1284
  tail call void @llvm.dbg.value(metadata i8* %call1.i, i64 0, metadata !744, metadata !1099) #2, !dbg !1285
  %cmp2.i = icmp eq i8* %call1.i, null, !dbg !1286
  br i1 %cmp2.i, label %normalizestring.exit, label %for.cond.preheader.i, !dbg !1288

for.cond.preheader.i:                             ; preds = %if.end.i
  %cmp6.46.i = icmp eq i64 %call.i, 0, !dbg !1289
  br i1 %cmp6.46.i, label %for.end.i, label %for.body.i.preheader, !dbg !1290

for.body.i.preheader:                             ; preds = %for.cond.preheader.i
  %xtraiter = and i64 %call.i, 1, !dbg !1291
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !1291
  br i1 %lcmp.mod, label %for.body.i.preheader.split, label %for.body.i.prol, !dbg !1291

for.body.i.prol:                                  ; preds = %for.body.i.preheader
  %6 = load i8, i8* %encoding, align 1, !dbg !1291, !tbaa !1292
  tail call void @llvm.dbg.value(metadata i8 %6, i64 0, metadata !746, metadata !1099) #2, !dbg !1293
  %cmp7.i.prol = icmp eq i8 %6, 32, !dbg !1294
  br i1 %cmp7.i.prol, label %if.end.16.i.prol, label %if.else.i.prol, !dbg !1296

if.else.i.prol:                                   ; preds = %for.body.i.prol
  %idxprom.i.prol = zext i8 %6 to i64, !dbg !1297
  %arrayidx15.i.prol = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i64 0, i64 %idxprom.i.prol, !dbg !1297
  %7 = load i8, i8* %arrayidx15.i.prol, align 1, !dbg !1297, !tbaa !1292
  tail call void @llvm.dbg.value(metadata i8 %7, i64 0, metadata !746, metadata !1099) #2, !dbg !1293
  br label %if.end.16.i.prol, !dbg !1298

if.end.16.i.prol:                                 ; preds = %if.else.i.prol, %for.body.i.prol
  %ch.0.i.prol = phi i8 [ %7, %if.else.i.prol ], [ 45, %for.body.i.prol ], !dbg !1298
  store i8 %ch.0.i.prol, i8* %call1.i, align 1, !dbg !1299, !tbaa !1292
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !742, metadata !1099) #2, !dbg !1300
  br label %for.body.i.preheader.split, !dbg !1290

for.body.i.preheader.split:                       ; preds = %for.body.i.preheader, %if.end.16.i.prol
  %i.047.i.unr = phi i64 [ 0, %for.body.i.preheader ], [ 1, %if.end.16.i.prol ]
  %8 = icmp eq i64 %call.i, 1, !dbg !1291
  br i1 %8, label %for.end.i.loopexit, label %for.body.i.preheader.split.split, !dbg !1291

for.body.i.preheader.split.split:                 ; preds = %for.body.i.preheader.split
  br label %for.body.i, !dbg !1291

for.body.i:                                       ; preds = %if.end.16.i.1, %for.body.i.preheader.split.split
  %i.047.i = phi i64 [ %i.047.i.unr, %for.body.i.preheader.split.split ], [ %inc.i.1, %if.end.16.i.1 ], !dbg !1298
  %arrayidx.i = getelementptr i8, i8* %encoding, i64 %i.047.i, !dbg !1291
  %9 = load i8, i8* %arrayidx.i, align 1, !dbg !1291, !tbaa !1292
  tail call void @llvm.dbg.value(metadata i8 %9, i64 0, metadata !746, metadata !1099) #2, !dbg !1293
  %cmp7.i = icmp eq i8 %9, 32, !dbg !1294
  br i1 %cmp7.i, label %if.end.16.i, label %if.else.i, !dbg !1296

if.else.i:                                        ; preds = %for.body.i
  %idxprom.i = zext i8 %9 to i64, !dbg !1297
  %arrayidx15.i = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i64 0, i64 %idxprom.i, !dbg !1297
  %10 = load i8, i8* %arrayidx15.i, align 1, !dbg !1297, !tbaa !1292
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !746, metadata !1099) #2, !dbg !1293
  br label %if.end.16.i, !dbg !1298

if.end.16.i:                                      ; preds = %if.else.i, %for.body.i
  %ch.0.i = phi i8 [ %10, %if.else.i ], [ 45, %for.body.i ], !dbg !1298
  %arrayidx17.i = getelementptr i8, i8* %call1.i, i64 %i.047.i, !dbg !1301
  store i8 %ch.0.i, i8* %arrayidx17.i, align 1, !dbg !1299, !tbaa !1292
  %inc.i = add nuw i64 %i.047.i, 1, !dbg !1302
  tail call void @llvm.dbg.value(metadata i64 %inc.i, i64 0, metadata !742, metadata !1099) #2, !dbg !1300
  %arrayidx.i.1 = getelementptr i8, i8* %encoding, i64 %inc.i, !dbg !1291
  %11 = load i8, i8* %arrayidx.i.1, align 1, !dbg !1291, !tbaa !1292
  tail call void @llvm.dbg.value(metadata i8 %9, i64 0, metadata !746, metadata !1099) #2, !dbg !1293
  %cmp7.i.1 = icmp eq i8 %11, 32, !dbg !1294
  br i1 %cmp7.i.1, label %if.end.16.i.1, label %if.else.i.1, !dbg !1296

for.end.i.loopexit.unr-lcssa:                     ; preds = %if.end.16.i.1
  br label %for.end.i.loopexit, !dbg !1303

for.end.i.loopexit:                               ; preds = %for.body.i.preheader.split, %for.end.i.loopexit.unr-lcssa
  br label %for.end.i, !dbg !1303

for.end.i:                                        ; preds = %for.end.i.loopexit, %for.cond.preheader.i
  %i.0.lcssa.i = phi i64 [ 0, %for.cond.preheader.i ], [ %call.i, %for.end.i.loopexit ], !dbg !1298
  %arrayidx18.i = getelementptr i8, i8* %call1.i, i64 %i.0.lcssa.i, !dbg !1303
  store i8 0, i8* %arrayidx18.i, align 1, !dbg !1304, !tbaa !1292
  %call19.i = tail call %struct._object* @PyUnicode_FromString(i8* %call1.i) #2, !dbg !1305
  tail call void @llvm.dbg.value(metadata %struct._object* %call19.i, i64 0, metadata !745, metadata !1099) #2, !dbg !1306
  %cmp20.i = icmp eq %struct._object* %call19.i, null, !dbg !1307
  br i1 %cmp20.i, label %normalizestring.exit.thread, label %normalizestring.exit.thread204, !dbg !1309

normalizestring.exit.thread204:                   ; preds = %for.end.i
  tail call void @PyMem_Free(i8* %call1.i) #2, !dbg !1310
  tail call void @llvm.dbg.value(metadata %struct._object* %call4.i, i64 0, metadata !503, metadata !1099), !dbg !1311
  store %struct._object* %call19.i, %struct._object** %v, align 8, !dbg !1312, !tbaa !1106
  br label %if.end.13, !dbg !1313

normalizestring.exit.thread:                      ; preds = %if.then.i, %for.end.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call4.i, i64 0, metadata !503, metadata !1099), !dbg !1311
  store %struct._object* null, %struct._object** %v, align 8, !dbg !1312, !tbaa !1106
  br label %cleanup.136, !dbg !1313

normalizestring.exit:                             ; preds = %if.end.i
  %call4.i = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !1314
  tail call void @llvm.dbg.value(metadata %struct._object* %call4.i, i64 0, metadata !503, metadata !1099), !dbg !1311
  store %struct._object* %call4.i, %struct._object** %v, align 8, !dbg !1312, !tbaa !1106
  %cmp11 = icmp eq %struct._object* %call4.i, null, !dbg !1315
  br i1 %cmp11, label %cleanup.136, label %if.end.13, !dbg !1313

if.end.13:                                        ; preds = %normalizestring.exit.thread204, %normalizestring.exit
  tail call void @llvm.dbg.value(metadata %struct._object** %v, i64 0, metadata !503, metadata !1099), !dbg !1311
  call void @PyUnicode_InternInPlace(%struct._object** nonnull %v) #2, !dbg !1317
  %codec_search_cache = getelementptr inbounds %struct._is, %struct._is* %3, i64 0, i32 8, !dbg !1318
  %12 = load %struct._object*, %struct._object** %codec_search_cache, align 8, !dbg !1318, !tbaa !1157
  call void @llvm.dbg.value(metadata %struct._object** %v, i64 0, metadata !503, metadata !1099), !dbg !1311
  %13 = load %struct._object*, %struct._object** %v, align 8, !dbg !1319, !tbaa !1106
  %call14 = call %struct._object* @PyDict_GetItem(%struct._object* %12, %struct._object* %13) #2, !dbg !1320
  call void @llvm.dbg.value(metadata %struct._object* %call14, i64 0, metadata !501, metadata !1099), !dbg !1321
  %cmp15 = icmp eq %struct._object* %call14, null, !dbg !1322
  br i1 %cmp15, label %if.end.22, label %if.then.16, !dbg !1323

if.then.16:                                       ; preds = %if.end.13
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call14, i64 0, i32 0, !dbg !1324
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !1324, !tbaa !1209
  %inc = add i64 %14, 1, !dbg !1324
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1324, !tbaa !1209
  call void @llvm.dbg.value(metadata %struct._object** %v, i64 0, metadata !503, metadata !1099), !dbg !1311
  %15 = load %struct._object*, %struct._object** %v, align 8, !dbg !1325, !tbaa !1106
  call void @llvm.dbg.value(metadata %struct._object* %15, i64 0, metadata !511, metadata !1099), !dbg !1325
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %15, i64 0, i32 0, !dbg !1327
  %16 = load i64, i64* %ob_refcnt18, align 8, !dbg !1327, !tbaa !1209
  %dec = add i64 %16, -1, !dbg !1327
  store i64 %dec, i64* %ob_refcnt18, align 8, !dbg !1327, !tbaa !1209
  %cmp19 = icmp eq i64 %dec, 0, !dbg !1327
  br i1 %cmp19, label %if.else, label %cleanup.136, !dbg !1329

if.else:                                          ; preds = %if.then.16
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i64 0, i32 1, !dbg !1330
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1330, !tbaa !1214
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 4, !dbg !1330
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1330, !tbaa !1215
  call void %18(%struct._object* %15) #2, !dbg !1330
  br label %cleanup.136

if.end.22:                                        ; preds = %if.end.13
  %call23 = call %struct._object* @PyTuple_New(i64 1) #2, !dbg !1332
  call void @llvm.dbg.value(metadata %struct._object* %call23, i64 0, metadata !502, metadata !1099), !dbg !1251
  %cmp24 = icmp eq %struct._object* %call23, null, !dbg !1333
  br i1 %cmp24, label %cleanup.136, label %if.end.26, !dbg !1335

if.end.26:                                        ; preds = %if.end.22
  call void @llvm.dbg.value(metadata %struct._object** %v, i64 0, metadata !503, metadata !1099), !dbg !1311
  %19 = bitcast %struct._object** %v to i64*, !dbg !1336
  %20 = load i64, i64* %19, align 8, !dbg !1336, !tbaa !1106
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %call23, i64 1, i32 1, !dbg !1336
  %21 = bitcast %struct._typeobject** %ob_item to i64*, !dbg !1336
  store i64 %20, i64* %21, align 8, !dbg !1336, !tbaa !1106
  %22 = load %struct._object*, %struct._object** %codec_search_path, align 8, !dbg !1337, !tbaa !1118
  %call28 = call i64 @PyList_Size(%struct._object* %22) #2, !dbg !1338
  call void @llvm.dbg.value(metadata i64 %call28, i64 0, metadata !505, metadata !1099), !dbg !1339
  %cmp29 = icmp slt i64 %call28, 0, !dbg !1340
  br i1 %cmp29, label %do.body.120, label %if.end.31, !dbg !1342

if.end.31:                                        ; preds = %if.end.26
  %cmp32 = icmp eq i64 %call28, 0, !dbg !1343
  br i1 %cmp32, label %if.then.33, label %for.body.preheader, !dbg !1345

for.body.preheader:                               ; preds = %if.end.31
  br label %for.body, !dbg !1346

if.then.33:                                       ; preds = %if.end.31
  %23 = load %struct._object*, %struct._object** @PyExc_LookupError, align 8, !dbg !1347, !tbaa !1106
  call void @PyErr_SetString(%struct._object* %23, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0)) #2, !dbg !1349
  br label %do.body.120, !dbg !1350

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %i.0220 = phi i64 [ %inc80, %for.inc ], [ 0, %for.body.preheader ]
  %24 = load %struct._object*, %struct._object** %codec_search_path, align 8, !dbg !1346, !tbaa !1118
  %call38 = call %struct._object* @PyList_GetItem(%struct._object* %24, i64 %i.0220) #2, !dbg !1351
  call void @llvm.dbg.value(metadata %struct._object* %call38, i64 0, metadata !515, metadata !1099), !dbg !1352
  %cmp39 = icmp eq %struct._object* %call38, null, !dbg !1353
  br i1 %cmp39, label %do.body.120.loopexit, label %if.end.41, !dbg !1355

if.end.41:                                        ; preds = %for.body
  %call42 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %call38, %struct._object* %call23, %struct._object* null) #2, !dbg !1356
  call void @llvm.dbg.value(metadata %struct._object* %call42, i64 0, metadata !501, metadata !1099), !dbg !1321
  %cmp43 = icmp eq %struct._object* %call42, null, !dbg !1357
  br i1 %cmp43, label %do.body.120.loopexit, label %if.end.45, !dbg !1359

if.end.45:                                        ; preds = %if.end.41
  %cmp46 = icmp eq %struct._object* %call42, @_Py_NoneStruct, !dbg !1360
  br i1 %cmp46, label %do.body.48, label %if.end.61, !dbg !1361

do.body.48:                                       ; preds = %if.end.45
  call void @llvm.dbg.value(metadata %struct._object* %call42, i64 0, metadata !519, metadata !1099), !dbg !1362
  %25 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1364, !tbaa !1209
  %dec52 = add i64 %25, -1, !dbg !1364
  store i64 %dec52, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1364, !tbaa !1209
  %cmp53 = icmp eq i64 %dec52, 0, !dbg !1364
  br i1 %cmp53, label %if.else.55, label %for.inc, !dbg !1366

if.else.55:                                       ; preds = %do.body.48
  %26 = load %struct._typeobject*, %struct._typeobject** getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 1), align 8, !dbg !1367, !tbaa !1214
  %tp_dealloc57 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i64 0, i32 4, !dbg !1367
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc57, align 8, !dbg !1367, !tbaa !1215
  call void %27(%struct._object* nonnull @_Py_NoneStruct) #2, !dbg !1367
  br label %for.inc

if.end.61:                                        ; preds = %if.end.45
  %call42.lcssa = phi %struct._object* [ %call42, %if.end.45 ]
  %i.0220.lcssa234 = phi i64 [ %i.0220, %if.end.45 ]
  %ob_type62 = getelementptr inbounds %struct._object, %struct._object* %call42.lcssa, i64 0, i32 1, !dbg !1369
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type62, align 8, !dbg !1369, !tbaa !1214
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i64 0, i32 19, !dbg !1369
  %29 = load i64, i64* %tp_flags, align 8, !dbg !1369, !tbaa !1370
  %and = and i64 %29, 67108864, !dbg !1369
  %cmp63 = icmp eq i64 %and, 0, !dbg !1369
  br i1 %cmp63, label %if.then.65, label %lor.lhs.false, !dbg !1371

lor.lhs.false:                                    ; preds = %if.end.61
  %30 = getelementptr inbounds %struct._object, %struct._object* %call42.lcssa, i64 1, i32 0, !dbg !1372
  %31 = load i64, i64* %30, align 8, !dbg !1372, !tbaa !1374
  %cmp64 = icmp eq i64 %31, 4, !dbg !1375
  br i1 %cmp64, label %for.end, label %if.then.65, !dbg !1376

if.then.65:                                       ; preds = %lor.lhs.false, %if.end.61
  %32 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1377, !tbaa !1106
  call void @PyErr_SetString(%struct._object* %32, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0)) #2, !dbg !1378
  call void @llvm.dbg.value(metadata %struct._object* %call42, i64 0, metadata !523, metadata !1099), !dbg !1379
  %ob_refcnt69 = getelementptr inbounds %struct._object, %struct._object* %call42.lcssa, i64 0, i32 0, !dbg !1381
  %33 = load i64, i64* %ob_refcnt69, align 8, !dbg !1381, !tbaa !1209
  %dec70 = add i64 %33, -1, !dbg !1381
  store i64 %dec70, i64* %ob_refcnt69, align 8, !dbg !1381, !tbaa !1209
  %cmp71 = icmp eq i64 %dec70, 0, !dbg !1381
  br i1 %cmp71, label %if.else.73, label %do.body.120, !dbg !1383

if.else.73:                                       ; preds = %if.then.65
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type62, align 8, !dbg !1384, !tbaa !1214
  %tp_dealloc75 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i64 0, i32 4, !dbg !1384
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc75, align 8, !dbg !1384, !tbaa !1215
  call void %35(%struct._object* %call42.lcssa) #2, !dbg !1384
  br label %do.body.120

for.inc:                                          ; preds = %do.body.48, %if.else.55
  %inc80 = add nuw nsw i64 %i.0220, 1, !dbg !1386
  call void @llvm.dbg.value(metadata i64 %inc80, i64 0, metadata !504, metadata !1099), !dbg !1387
  %cmp35 = icmp slt i64 %inc80, %call28, !dbg !1388
  br i1 %cmp35, label %for.body, label %for.end.loopexit, !dbg !1389

for.end.loopexit:                                 ; preds = %for.inc
  %inc80.lcssa = phi i64 [ %inc80, %for.inc ]
  br label %for.end, !dbg !1390

for.end:                                          ; preds = %for.end.loopexit, %lor.lhs.false
  %i.0216 = phi i64 [ %i.0220.lcssa234, %lor.lhs.false ], [ %inc80.lcssa, %for.end.loopexit ]
  %result.2 = phi %struct._object* [ %call42.lcssa, %lor.lhs.false ], [ @_Py_NoneStruct, %for.end.loopexit ]
  %cmp81 = icmp eq i64 %i.0216, %call28, !dbg !1390
  br i1 %cmp81, label %if.then.82, label %if.end.84, !dbg !1392

if.then.82:                                       ; preds = %for.end
  %36 = load %struct._object*, %struct._object** @PyExc_LookupError, align 8, !dbg !1393, !tbaa !1106
  %call83 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %encoding) #2, !dbg !1395
  br label %do.body.120, !dbg !1396

if.end.84:                                        ; preds = %for.end
  %37 = load %struct._object*, %struct._object** %codec_search_cache, align 8, !dbg !1397, !tbaa !1157
  call void @llvm.dbg.value(metadata %struct._object** %v, i64 0, metadata !503, metadata !1099), !dbg !1311
  %38 = load %struct._object*, %struct._object** %v, align 8, !dbg !1398, !tbaa !1106
  %call86 = call i32 @PyDict_SetItem(%struct._object* %37, %struct._object* %38, %struct._object* %result.2) #2, !dbg !1399
  %cmp87 = icmp slt i32 %call86, 0, !dbg !1400
  br i1 %cmp87, label %do.body.89, label %do.body.103, !dbg !1401

do.body.89:                                       ; preds = %if.end.84
  call void @llvm.dbg.value(metadata %struct._object* %result.2, i64 0, metadata !527, metadata !1099), !dbg !1402
  %ob_refcnt92 = getelementptr inbounds %struct._object, %struct._object* %result.2, i64 0, i32 0, !dbg !1404
  %39 = load i64, i64* %ob_refcnt92, align 8, !dbg !1404, !tbaa !1209
  %dec93 = add i64 %39, -1, !dbg !1404
  store i64 %dec93, i64* %ob_refcnt92, align 8, !dbg !1404, !tbaa !1209
  %cmp94 = icmp eq i64 %dec93, 0, !dbg !1404
  br i1 %cmp94, label %if.else.96, label %do.body.120, !dbg !1406

if.else.96:                                       ; preds = %do.body.89
  %ob_type97 = getelementptr inbounds %struct._object, %struct._object* %result.2, i64 0, i32 1, !dbg !1407
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type97, align 8, !dbg !1407, !tbaa !1214
  %tp_dealloc98 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i64 0, i32 4, !dbg !1407
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc98, align 8, !dbg !1407, !tbaa !1215
  call void %41(%struct._object* %result.2) #2, !dbg !1407
  br label %do.body.120

do.body.103:                                      ; preds = %if.end.84
  call void @llvm.dbg.value(metadata %struct._object* %call23, i64 0, metadata !531, metadata !1099), !dbg !1409
  %ob_refcnt106 = getelementptr inbounds %struct._object, %struct._object* %call23, i64 0, i32 0, !dbg !1411
  %42 = load i64, i64* %ob_refcnt106, align 8, !dbg !1411, !tbaa !1209
  %dec107 = add i64 %42, -1, !dbg !1411
  store i64 %dec107, i64* %ob_refcnt106, align 8, !dbg !1411, !tbaa !1209
  %cmp108 = icmp eq i64 %dec107, 0, !dbg !1411
  br i1 %cmp108, label %if.else.110, label %cleanup.136, !dbg !1413

if.else.110:                                      ; preds = %do.body.103
  %ob_type111 = getelementptr inbounds %struct._object, %struct._object* %call23, i64 0, i32 1, !dbg !1414
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type111, align 8, !dbg !1414, !tbaa !1214
  %tp_dealloc112 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i64 0, i32 4, !dbg !1414
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc112, align 8, !dbg !1414, !tbaa !1215
  call void %44(%struct._object* %call23) #2, !dbg !1414
  br label %cleanup.136

do.body.120.loopexit:                             ; preds = %if.end.41, %for.body
  br label %do.body.120, !dbg !1416

do.body.120:                                      ; preds = %do.body.120.loopexit, %if.then.82, %do.body.89, %if.else.96, %if.then.65, %if.else.73, %if.then.33, %if.end.26
  call void @llvm.dbg.value(metadata %struct._object* %call23, i64 0, metadata !535, metadata !1099), !dbg !1416
  %ob_refcnt123 = getelementptr inbounds %struct._object, %struct._object* %call23, i64 0, i32 0, !dbg !1418
  %45 = load i64, i64* %ob_refcnt123, align 8, !dbg !1418, !tbaa !1209
  %dec124 = add i64 %45, -1, !dbg !1418
  store i64 %dec124, i64* %ob_refcnt123, align 8, !dbg !1418, !tbaa !1209
  %cmp125 = icmp eq i64 %dec124, 0, !dbg !1418
  br i1 %cmp125, label %if.else.127, label %cleanup.136, !dbg !1420

if.else.127:                                      ; preds = %do.body.120
  %ob_type128 = getelementptr inbounds %struct._object, %struct._object* %call23, i64 0, i32 1, !dbg !1421
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type128, align 8, !dbg !1421, !tbaa !1214
  %tp_dealloc129 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i64 0, i32 4, !dbg !1421
  %47 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc129, align 8, !dbg !1421, !tbaa !1215
  call void %47(%struct._object* %call23) #2, !dbg !1421
  br label %cleanup.136

cleanup.136:                                      ; preds = %normalizestring.exit.thread, %if.end.22, %normalizestring.exit, %land.lhs.true, %if.then, %do.body.120, %if.else.127, %if.else.110, %do.body.103, %if.else, %if.then.16
  %retval.0 = phi %struct._object* [ %call14, %if.then.16 ], [ %call14, %if.else ], [ %result.2, %do.body.103 ], [ %result.2, %if.else.110 ], [ null, %if.else.127 ], [ null, %do.body.120 ], [ null, %if.then ], [ null, %land.lhs.true ], [ null, %normalizestring.exit ], [ null, %if.end.22 ], [ null, %normalizestring.exit.thread ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1423
  ret %struct._object* %retval.0, !dbg !1423

if.else.i.1:                                      ; preds = %if.end.16.i
  %idxprom.i.1 = zext i8 %11 to i64, !dbg !1297
  %arrayidx15.i.1 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i64 0, i64 %idxprom.i.1, !dbg !1297
  %48 = load i8, i8* %arrayidx15.i.1, align 1, !dbg !1297, !tbaa !1292
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !746, metadata !1099) #2, !dbg !1293
  br label %if.end.16.i.1, !dbg !1298

if.end.16.i.1:                                    ; preds = %if.else.i.1, %if.end.16.i
  %ch.0.i.1 = phi i8 [ %48, %if.else.i.1 ], [ 45, %if.end.16.i ], !dbg !1298
  %arrayidx17.i.1 = getelementptr i8, i8* %call1.i, i64 %inc.i, !dbg !1301
  store i8 %ch.0.i.1, i8* %arrayidx17.i.1, align 1, !dbg !1299, !tbaa !1292
  %inc.i.1 = add i64 %i.047.i, 2, !dbg !1302
  tail call void @llvm.dbg.value(metadata i64 %inc.i, i64 0, metadata !742, metadata !1099) #2, !dbg !1300
  %exitcond.i.1 = icmp eq i64 %inc.i.1, %call.i, !dbg !1290
  br i1 %exitcond.i.1, label %for.end.i.loopexit.unr-lcssa, label %for.body.i, !dbg !1290
}

declare void @PyUnicode_InternInPlace(%struct._object**) #3

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #3

declare %struct._object* @PyTuple_New(i64) #3

declare i64 @PyList_Size(%struct._object*) #3

declare %struct._object* @PyList_GetItem(%struct._object*, i64) #3

declare %struct._object* @PyEval_CallObjectWithKeywords(%struct._object*, %struct._object*, %struct._object*) #3

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define i32 @PyCodec_KnownEncoding(i8* %encoding) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %encoding, i64 0, metadata !542, metadata !1099), !dbg !1424
  %call = tail call %struct._object* @_PyCodec_Lookup(i8* %encoding), !dbg !1425
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !543, metadata !1099), !dbg !1426
  %tobool = icmp eq %struct._object* %call, null, !dbg !1427
  br i1 %tobool, label %if.then, label %do.body, !dbg !1428

if.then:                                          ; preds = %entry
  tail call void @PyErr_Clear() #2, !dbg !1429
  br label %cleanup, !dbg !1431

do.body:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !544, metadata !1099), !dbg !1432
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1434
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !1434, !tbaa !1209
  %dec = add i64 %0, -1, !dbg !1434
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1434, !tbaa !1209
  %cmp = icmp eq i64 %dec, 0, !dbg !1434
  br i1 %cmp, label %if.else.2, label %cleanup, !dbg !1436

if.else.2:                                        ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1437
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1437, !tbaa !1214
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !1437
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1437, !tbaa !1215
  tail call void %2(%struct._object* %call) #2, !dbg !1437
  br label %cleanup

cleanup:                                          ; preds = %if.else.2, %do.body, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %do.body ], [ 1, %if.else.2 ]
  ret i32 %retval.0, !dbg !1439
}

declare void @PyErr_Clear() #3

; Function Attrs: nounwind uwtable
define %struct._object* @_PyCodecInfo_GetIncrementalDecoder(%struct._object* %codec_info, i8* %errors) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %codec_info, i64 0, metadata !552, metadata !1099), !dbg !1440
  tail call void @llvm.dbg.value(metadata i8* %errors, i64 0, metadata !553, metadata !1099), !dbg !1441
  tail call void @llvm.dbg.value(metadata %struct._object* %codec_info, i64 0, metadata !752, metadata !1099) #2, !dbg !1442
  tail call void @llvm.dbg.value(metadata i8* %errors, i64 0, metadata !753, metadata !1099) #2, !dbg !1444
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i64 0, metadata !754, metadata !1099) #2, !dbg !1445
  %call.i = tail call %struct._object* @PyObject_GetAttrString(%struct._object* %codec_info, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0)) #2, !dbg !1446
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !756, metadata !1099) #2, !dbg !1447
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !1448
  br i1 %cmp.i, label %codec_makeincrementalcodec.exit, label %if.end.i, !dbg !1450

if.end.i:                                         ; preds = %entry
  %tobool.i = icmp eq i8* %errors, null, !dbg !1451
  br i1 %tobool.i, label %if.else.i, label %if.then.1.i, !dbg !1453

if.then.1.i:                                      ; preds = %if.end.i
  %call2.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %call.i, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* %errors) #2, !dbg !1454
  tail call void @llvm.dbg.value(metadata %struct._object* %call2.i, i64 0, metadata !755, metadata !1099) #2, !dbg !1455
  br label %do.body.i, !dbg !1456

if.else.i:                                        ; preds = %if.end.i
  %call3.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %call.i, i8* null) #2, !dbg !1457
  tail call void @llvm.dbg.value(metadata %struct._object* %call3.i, i64 0, metadata !755, metadata !1099) #2, !dbg !1455
  br label %do.body.i, !dbg !1458

do.body.i:                                        ; preds = %if.else.i, %if.then.1.i
  %ret.0.i = phi %struct._object* [ %call2.i, %if.then.1.i ], [ %call3.i, %if.else.i ], !dbg !1458
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !757, metadata !1099) #2, !dbg !1459
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1461
  %0 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1461, !tbaa !1209
  %dec.i = add i64 %0, -1, !dbg !1461
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1461, !tbaa !1209
  %cmp5.i = icmp eq i64 %dec.i, 0, !dbg !1461
  br i1 %cmp5.i, label %if.else.7.i, label %codec_makeincrementalcodec.exit, !dbg !1463

if.else.7.i:                                      ; preds = %do.body.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1464
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1464, !tbaa !1214
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !1464
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1464, !tbaa !1215
  tail call void %2(%struct._object* %call.i) #2, !dbg !1464
  br label %codec_makeincrementalcodec.exit, !dbg !1458

codec_makeincrementalcodec.exit:                  ; preds = %entry, %do.body.i, %if.else.7.i
  %retval.0.i = phi %struct._object* [ null, %entry ], [ %ret.0.i, %do.body.i ], [ %ret.0.i, %if.else.7.i ], !dbg !1458
  ret %struct._object* %retval.0.i, !dbg !1466
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyCodecInfo_GetIncrementalEncoder(%struct._object* %codec_info, i8* %errors) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %codec_info, i64 0, metadata !556, metadata !1099), !dbg !1467
  tail call void @llvm.dbg.value(metadata i8* %errors, i64 0, metadata !557, metadata !1099), !dbg !1468
  tail call void @llvm.dbg.value(metadata %struct._object* %codec_info, i64 0, metadata !752, metadata !1099) #2, !dbg !1469
  tail call void @llvm.dbg.value(metadata i8* %errors, i64 0, metadata !753, metadata !1099) #2, !dbg !1471
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i64 0, metadata !754, metadata !1099) #2, !dbg !1472
  %call.i = tail call %struct._object* @PyObject_GetAttrString(%struct._object* %codec_info, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0)) #2, !dbg !1473
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !756, metadata !1099) #2, !dbg !1474
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !1475
  br i1 %cmp.i, label %codec_makeincrementalcodec.exit, label %if.end.i, !dbg !1476

if.end.i:                                         ; preds = %entry
  %tobool.i = icmp eq i8* %errors, null, !dbg !1477
  br i1 %tobool.i, label %if.else.i, label %if.then.1.i, !dbg !1478

if.then.1.i:                                      ; preds = %if.end.i
  %call2.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %call.i, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* %errors) #2, !dbg !1479
  tail call void @llvm.dbg.value(metadata %struct._object* %call2.i, i64 0, metadata !755, metadata !1099) #2, !dbg !1480
  br label %do.body.i, !dbg !1481

if.else.i:                                        ; preds = %if.end.i
  %call3.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %call.i, i8* null) #2, !dbg !1482
  tail call void @llvm.dbg.value(metadata %struct._object* %call3.i, i64 0, metadata !755, metadata !1099) #2, !dbg !1480
  br label %do.body.i, !dbg !1483

do.body.i:                                        ; preds = %if.else.i, %if.then.1.i
  %ret.0.i = phi %struct._object* [ %call2.i, %if.then.1.i ], [ %call3.i, %if.else.i ], !dbg !1483
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !757, metadata !1099) #2, !dbg !1484
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1485
  %0 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1485, !tbaa !1209
  %dec.i = add i64 %0, -1, !dbg !1485
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1485, !tbaa !1209
  %cmp5.i = icmp eq i64 %dec.i, 0, !dbg !1485
  br i1 %cmp5.i, label %if.else.7.i, label %codec_makeincrementalcodec.exit, !dbg !1486

if.else.7.i:                                      ; preds = %do.body.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1487
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1487, !tbaa !1214
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !1487
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1487, !tbaa !1215
  tail call void %2(%struct._object* %call.i) #2, !dbg !1487
  br label %codec_makeincrementalcodec.exit, !dbg !1483

codec_makeincrementalcodec.exit:                  ; preds = %entry, %do.body.i, %if.else.7.i
  %retval.0.i = phi %struct._object* [ null, %entry ], [ %ret.0.i, %do.body.i ], [ %ret.0.i, %if.else.7.i ], !dbg !1483
  ret %struct._object* %retval.0.i, !dbg !1488
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_Encoder(i8* %encoding) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %encoding, i64 0, metadata !560, metadata !1099), !dbg !1489
  tail call void @llvm.dbg.value(metadata i8* %encoding, i64 0, metadata !763, metadata !1099) #2, !dbg !1490
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !764, metadata !1099) #2, !dbg !1492
  %call.i = tail call %struct._object* @_PyCodec_Lookup(i8* %encoding) #2, !dbg !1493
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !765, metadata !1099) #2, !dbg !1494
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !1495
  br i1 %cmp.i, label %codec_getitem.exit, label %if.end.i, !dbg !1497

if.end.i:                                         ; preds = %entry
  %ob_item.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, i32 1, !dbg !1498
  %arrayidx.i = bitcast %struct._typeobject** %ob_item.i to %struct._object**, !dbg !1498
  %0 = load %struct._object*, %struct._object** %arrayidx.i, align 8, !dbg !1498, !tbaa !1106
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !766, metadata !1099) #2, !dbg !1499
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !767, metadata !1099) #2, !dbg !1500
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1502
  %1 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1502, !tbaa !1209
  %dec.i = add i64 %1, -1, !dbg !1502
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1502, !tbaa !1209
  %cmp1.i = icmp eq i64 %dec.i, 0, !dbg !1502
  br i1 %cmp1.i, label %if.else.i, label %if.end.3.i, !dbg !1504

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1505
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1505, !tbaa !1214
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !1505
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1505, !tbaa !1215
  tail call void %3(%struct._object* %call.i) #2, !dbg !1505
  br label %if.end.3.i, !dbg !1507

if.end.3.i:                                       ; preds = %if.else.i, %if.end.i
  %ob_refcnt4.i = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !1508
  %4 = load i64, i64* %ob_refcnt4.i, align 8, !dbg !1508, !tbaa !1209
  %inc.i = add i64 %4, 1, !dbg !1508
  store i64 %inc.i, i64* %ob_refcnt4.i, align 8, !dbg !1508, !tbaa !1209
  br label %codec_getitem.exit, !dbg !1509

codec_getitem.exit:                               ; preds = %entry, %if.end.3.i
  %retval.0.i = phi %struct._object* [ %0, %if.end.3.i ], [ null, %entry ], !dbg !1507
  ret %struct._object* %retval.0.i, !dbg !1510
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_Decoder(i8* %encoding) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %encoding, i64 0, metadata !563, metadata !1099), !dbg !1511
  tail call void @llvm.dbg.value(metadata i8* %encoding, i64 0, metadata !763, metadata !1099) #2, !dbg !1512
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !764, metadata !1099) #2, !dbg !1514
  %call.i = tail call %struct._object* @_PyCodec_Lookup(i8* %encoding) #2, !dbg !1515
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !765, metadata !1099) #2, !dbg !1516
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !1517
  br i1 %cmp.i, label %codec_getitem.exit, label %if.end.i, !dbg !1518

if.end.i:                                         ; preds = %entry
  %ob_item.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, i32 1, !dbg !1519
  %arrayidx.i = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item.i, i64 1, !dbg !1519
  %0 = bitcast %struct._typeobject** %arrayidx.i to %struct._object**, !dbg !1519
  %1 = load %struct._object*, %struct._object** %0, align 8, !dbg !1519, !tbaa !1106
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !766, metadata !1099) #2, !dbg !1520
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !767, metadata !1099) #2, !dbg !1521
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1522
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1522, !tbaa !1209
  %dec.i = add i64 %2, -1, !dbg !1522
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1522, !tbaa !1209
  %cmp1.i = icmp eq i64 %dec.i, 0, !dbg !1522
  br i1 %cmp1.i, label %if.else.i, label %if.end.3.i, !dbg !1523

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1524
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1524, !tbaa !1214
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !1524
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1524, !tbaa !1215
  tail call void %4(%struct._object* %call.i) #2, !dbg !1524
  br label %if.end.3.i, !dbg !1525

if.end.3.i:                                       ; preds = %if.else.i, %if.end.i
  %ob_refcnt4.i = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 0, !dbg !1526
  %5 = load i64, i64* %ob_refcnt4.i, align 8, !dbg !1526, !tbaa !1209
  %inc.i = add i64 %5, 1, !dbg !1526
  store i64 %inc.i, i64* %ob_refcnt4.i, align 8, !dbg !1526, !tbaa !1209
  br label %codec_getitem.exit, !dbg !1527

codec_getitem.exit:                               ; preds = %entry, %if.end.3.i
  %retval.0.i = phi %struct._object* [ %1, %if.end.3.i ], [ null, %entry ], !dbg !1525
  ret %struct._object* %retval.0.i, !dbg !1528
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_IncrementalEncoder(i8* %encoding, i8* %errors) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %encoding, i64 0, metadata !568, metadata !1099), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8* %errors, i64 0, metadata !569, metadata !1099), !dbg !1530
  tail call void @llvm.dbg.value(metadata i8* %encoding, i64 0, metadata !773, metadata !1099) #2, !dbg !1531
  tail call void @llvm.dbg.value(metadata i8* %errors, i64 0, metadata !774, metadata !1099) #2, !dbg !1533
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i64 0, metadata !775, metadata !1099) #2, !dbg !1534
  %call.i = tail call %struct._object* @_PyCodec_Lookup(i8* %encoding) #2, !dbg !1535
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !776, metadata !1099) #2, !dbg !1536
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !1537
  br i1 %cmp.i, label %codec_getincrementalcodec.exit, label %if.end.i, !dbg !1539

if.end.i:                                         ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !752, metadata !1099) #2, !dbg !1540
  tail call void @llvm.dbg.value(metadata i8* %errors, i64 0, metadata !753, metadata !1099) #2, !dbg !1542
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i64 0, metadata !754, metadata !1099) #2, !dbg !1543
  %call.i.i = tail call %struct._object* @PyObject_GetAttrString(%struct._object* %call.i, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0)) #2, !dbg !1544
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.i, i64 0, metadata !756, metadata !1099) #2, !dbg !1545
  %cmp.i.i = icmp eq %struct._object* %call.i.i, null, !dbg !1546
  br i1 %cmp.i.i, label %codec_makeincrementalcodec.exit.i, label %if.end.i.i, !dbg !1547

if.end.i.i:                                       ; preds = %if.end.i
  %tobool.i.i = icmp eq i8* %errors, null, !dbg !1548
  br i1 %tobool.i.i, label %if.else.i.i, label %if.then.1.i.i, !dbg !1549

if.then.1.i.i:                                    ; preds = %if.end.i.i
  %call2.i.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %call.i.i, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* %errors) #2, !dbg !1550
  tail call void @llvm.dbg.value(metadata %struct._object* %call2.i.i, i64 0, metadata !755, metadata !1099) #2, !dbg !1551
  br label %do.body.i.i, !dbg !1552

if.else.i.i:                                      ; preds = %if.end.i.i
  %call3.i.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %call.i.i, i8* null) #2, !dbg !1553
  tail call void @llvm.dbg.value(metadata %struct._object* %call3.i.i, i64 0, metadata !755, metadata !1099) #2, !dbg !1551
  br label %do.body.i.i, !dbg !1554

do.body.i.i:                                      ; preds = %if.else.i.i, %if.then.1.i.i
  %ret.0.i.i = phi %struct._object* [ %call2.i.i, %if.then.1.i.i ], [ %call3.i.i, %if.else.i.i ], !dbg !1554
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.i, i64 0, metadata !757, metadata !1099) #2, !dbg !1555
  %ob_refcnt.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 0, i32 0, !dbg !1556
  %0 = load i64, i64* %ob_refcnt.i.i, align 8, !dbg !1556, !tbaa !1209
  %dec.i.i = add i64 %0, -1, !dbg !1556
  store i64 %dec.i.i, i64* %ob_refcnt.i.i, align 8, !dbg !1556, !tbaa !1209
  %cmp5.i.i = icmp eq i64 %dec.i.i, 0, !dbg !1556
  br i1 %cmp5.i.i, label %if.else.7.i.i, label %codec_makeincrementalcodec.exit.i, !dbg !1557

if.else.7.i.i:                                    ; preds = %do.body.i.i
  %ob_type.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 0, i32 1, !dbg !1558
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.i, align 8, !dbg !1558, !tbaa !1214
  %tp_dealloc.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !1558
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.i, align 8, !dbg !1558, !tbaa !1215
  tail call void %2(%struct._object* %call.i.i) #2, !dbg !1558
  br label %codec_makeincrementalcodec.exit.i, !dbg !1554

codec_makeincrementalcodec.exit.i:                ; preds = %if.else.7.i.i, %do.body.i.i, %if.end.i
  %retval.0.i.i = phi %struct._object* [ null, %if.end.i ], [ %ret.0.i.i, %do.body.i.i ], [ %ret.0.i.i, %if.else.7.i.i ], !dbg !1554
  tail call void @llvm.dbg.value(metadata %struct._object* %retval.0.i.i, i64 0, metadata !777, metadata !1099) #2, !dbg !1559
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !778, metadata !1099) #2, !dbg !1560
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1562
  %3 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1562, !tbaa !1209
  %dec.i = add i64 %3, -1, !dbg !1562
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1562, !tbaa !1209
  %cmp2.i = icmp eq i64 %dec.i, 0, !dbg !1562
  br i1 %cmp2.i, label %if.else.i, label %codec_getincrementalcodec.exit, !dbg !1564

if.else.i:                                        ; preds = %codec_makeincrementalcodec.exit.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1565
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1565, !tbaa !1214
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 4, !dbg !1565
  %5 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1565, !tbaa !1215
  tail call void %5(%struct._object* %call.i) #2, !dbg !1565
  br label %codec_getincrementalcodec.exit, !dbg !1567

codec_getincrementalcodec.exit:                   ; preds = %entry, %codec_makeincrementalcodec.exit.i, %if.else.i
  %retval.0.i = phi %struct._object* [ null, %entry ], [ %retval.0.i.i, %codec_makeincrementalcodec.exit.i ], [ %retval.0.i.i, %if.else.i ], !dbg !1567
  ret %struct._object* %retval.0.i, !dbg !1568
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_IncrementalDecoder(i8* %encoding, i8* %errors) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %encoding, i64 0, metadata !572, metadata !1099), !dbg !1569
  tail call void @llvm.dbg.value(metadata i8* %errors, i64 0, metadata !573, metadata !1099), !dbg !1570
  tail call void @llvm.dbg.value(metadata i8* %encoding, i64 0, metadata !773, metadata !1099) #2, !dbg !1571
  tail call void @llvm.dbg.value(metadata i8* %errors, i64 0, metadata !774, metadata !1099) #2, !dbg !1573
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i64 0, metadata !775, metadata !1099) #2, !dbg !1574
  %call.i = tail call %struct._object* @_PyCodec_Lookup(i8* %encoding) #2, !dbg !1575
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !776, metadata !1099) #2, !dbg !1576
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !1577
  br i1 %cmp.i, label %codec_getincrementalcodec.exit, label %if.end.i, !dbg !1578

if.end.i:                                         ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !752, metadata !1099) #2, !dbg !1579
  tail call void @llvm.dbg.value(metadata i8* %errors, i64 0, metadata !753, metadata !1099) #2, !dbg !1581
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i64 0, metadata !754, metadata !1099) #2, !dbg !1582
  %call.i.i = tail call %struct._object* @PyObject_GetAttrString(%struct._object* %call.i, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0)) #2, !dbg !1583
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.i, i64 0, metadata !756, metadata !1099) #2, !dbg !1584
  %cmp.i.i = icmp eq %struct._object* %call.i.i, null, !dbg !1585
  br i1 %cmp.i.i, label %codec_makeincrementalcodec.exit.i, label %if.end.i.i, !dbg !1586

if.end.i.i:                                       ; preds = %if.end.i
  %tobool.i.i = icmp eq i8* %errors, null, !dbg !1587
  br i1 %tobool.i.i, label %if.else.i.i, label %if.then.1.i.i, !dbg !1588

if.then.1.i.i:                                    ; preds = %if.end.i.i
  %call2.i.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %call.i.i, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* %errors) #2, !dbg !1589
  tail call void @llvm.dbg.value(metadata %struct._object* %call2.i.i, i64 0, metadata !755, metadata !1099) #2, !dbg !1590
  br label %do.body.i.i, !dbg !1591

if.else.i.i:                                      ; preds = %if.end.i.i
  %call3.i.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %call.i.i, i8* null) #2, !dbg !1592
  tail call void @llvm.dbg.value(metadata %struct._object* %call3.i.i, i64 0, metadata !755, metadata !1099) #2, !dbg !1590
  br label %do.body.i.i, !dbg !1593

do.body.i.i:                                      ; preds = %if.else.i.i, %if.then.1.i.i
  %ret.0.i.i = phi %struct._object* [ %call2.i.i, %if.then.1.i.i ], [ %call3.i.i, %if.else.i.i ], !dbg !1593
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.i, i64 0, metadata !757, metadata !1099) #2, !dbg !1594
  %ob_refcnt.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 0, i32 0, !dbg !1595
  %0 = load i64, i64* %ob_refcnt.i.i, align 8, !dbg !1595, !tbaa !1209
  %dec.i.i = add i64 %0, -1, !dbg !1595
  store i64 %dec.i.i, i64* %ob_refcnt.i.i, align 8, !dbg !1595, !tbaa !1209
  %cmp5.i.i = icmp eq i64 %dec.i.i, 0, !dbg !1595
  br i1 %cmp5.i.i, label %if.else.7.i.i, label %codec_makeincrementalcodec.exit.i, !dbg !1596

if.else.7.i.i:                                    ; preds = %do.body.i.i
  %ob_type.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 0, i32 1, !dbg !1597
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.i, align 8, !dbg !1597, !tbaa !1214
  %tp_dealloc.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !1597
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.i, align 8, !dbg !1597, !tbaa !1215
  tail call void %2(%struct._object* %call.i.i) #2, !dbg !1597
  br label %codec_makeincrementalcodec.exit.i, !dbg !1593

codec_makeincrementalcodec.exit.i:                ; preds = %if.else.7.i.i, %do.body.i.i, %if.end.i
  %retval.0.i.i = phi %struct._object* [ null, %if.end.i ], [ %ret.0.i.i, %do.body.i.i ], [ %ret.0.i.i, %if.else.7.i.i ], !dbg !1593
  tail call void @llvm.dbg.value(metadata %struct._object* %retval.0.i.i, i64 0, metadata !777, metadata !1099) #2, !dbg !1598
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !778, metadata !1099) #2, !dbg !1599
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1600
  %3 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1600, !tbaa !1209
  %dec.i = add i64 %3, -1, !dbg !1600
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1600, !tbaa !1209
  %cmp2.i = icmp eq i64 %dec.i, 0, !dbg !1600
  br i1 %cmp2.i, label %if.else.i, label %codec_getincrementalcodec.exit, !dbg !1601

if.else.i:                                        ; preds = %codec_makeincrementalcodec.exit.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1602
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1602, !tbaa !1214
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 4, !dbg !1602
  %5 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1602, !tbaa !1215
  tail call void %5(%struct._object* %call.i) #2, !dbg !1602
  br label %codec_getincrementalcodec.exit, !dbg !1603

codec_getincrementalcodec.exit:                   ; preds = %entry, %codec_makeincrementalcodec.exit.i, %if.else.i
  %retval.0.i = phi %struct._object* [ null, %entry ], [ %retval.0.i.i, %codec_makeincrementalcodec.exit.i ], [ %retval.0.i.i, %if.else.i ], !dbg !1603
  ret %struct._object* %retval.0.i, !dbg !1604
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_StreamReader(i8* %encoding, %struct._object* %stream, i8* %errors) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %encoding, i64 0, metadata !578, metadata !1099), !dbg !1605
  tail call void @llvm.dbg.value(metadata %struct._object* %stream, i64 0, metadata !579, metadata !1099), !dbg !1606
  tail call void @llvm.dbg.value(metadata i8* %errors, i64 0, metadata !580, metadata !1099), !dbg !1607
  tail call void @llvm.dbg.value(metadata i8* %encoding, i64 0, metadata !785, metadata !1099) #2, !dbg !1608
  tail call void @llvm.dbg.value(metadata %struct._object* %stream, i64 0, metadata !786, metadata !1099) #2, !dbg !1610
  tail call void @llvm.dbg.value(metadata i8* %errors, i64 0, metadata !787, metadata !1099) #2, !dbg !1611
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !788, metadata !1099) #2, !dbg !1612
  %call.i = tail call %struct._object* @_PyCodec_Lookup(i8* %encoding) #2, !dbg !1613
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !789, metadata !1099) #2, !dbg !1614
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !1615
  br i1 %cmp.i, label %codec_getstreamcodec.exit, label %if.end.i, !dbg !1617

if.end.i:                                         ; preds = %entry
  %ob_item.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, i32 1, !dbg !1618
  %arrayidx.i = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item.i, i64 2, !dbg !1618
  %0 = bitcast %struct._typeobject** %arrayidx.i to %struct._object**, !dbg !1618
  %1 = load %struct._object*, %struct._object** %0, align 8, !dbg !1618, !tbaa !1106
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !791, metadata !1099) #2, !dbg !1619
  %cmp1.i = icmp eq i8* %errors, null, !dbg !1620
  br i1 %cmp1.i, label %if.else.i, label %if.then.2.i, !dbg !1622

if.then.2.i:                                      ; preds = %if.end.i
  %call3.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), %struct._object* %stream, i8* %errors) #2, !dbg !1623
  tail call void @llvm.dbg.value(metadata %struct._object* %call3.i, i64 0, metadata !790, metadata !1099) #2, !dbg !1624
  br label %do.body.i, !dbg !1625

if.else.i:                                        ; preds = %if.end.i
  %call4.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %struct._object* %stream) #2, !dbg !1626
  tail call void @llvm.dbg.value(metadata %struct._object* %call4.i, i64 0, metadata !790, metadata !1099) #2, !dbg !1624
  br label %do.body.i, !dbg !1627

do.body.i:                                        ; preds = %if.else.i, %if.then.2.i
  %streamcodec.0.i = phi %struct._object* [ %call3.i, %if.then.2.i ], [ %call4.i, %if.else.i ], !dbg !1627
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !792, metadata !1099) #2, !dbg !1628
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1630
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1630, !tbaa !1209
  %dec.i = add i64 %2, -1, !dbg !1630
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1630, !tbaa !1209
  %cmp6.i = icmp eq i64 %dec.i, 0, !dbg !1630
  br i1 %cmp6.i, label %if.else.8.i, label %codec_getstreamcodec.exit, !dbg !1632

if.else.8.i:                                      ; preds = %do.body.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1633
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1633, !tbaa !1214
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !1633
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1633, !tbaa !1215
  tail call void %4(%struct._object* %call.i) #2, !dbg !1633
  br label %codec_getstreamcodec.exit, !dbg !1627

codec_getstreamcodec.exit:                        ; preds = %entry, %do.body.i, %if.else.8.i
  %retval.0.i = phi %struct._object* [ null, %entry ], [ %streamcodec.0.i, %do.body.i ], [ %streamcodec.0.i, %if.else.8.i ], !dbg !1627
  ret %struct._object* %retval.0.i, !dbg !1635
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_StreamWriter(i8* %encoding, %struct._object* %stream, i8* %errors) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %encoding, i64 0, metadata !583, metadata !1099), !dbg !1636
  tail call void @llvm.dbg.value(metadata %struct._object* %stream, i64 0, metadata !584, metadata !1099), !dbg !1637
  tail call void @llvm.dbg.value(metadata i8* %errors, i64 0, metadata !585, metadata !1099), !dbg !1638
  tail call void @llvm.dbg.value(metadata i8* %encoding, i64 0, metadata !785, metadata !1099) #2, !dbg !1639
  tail call void @llvm.dbg.value(metadata %struct._object* %stream, i64 0, metadata !786, metadata !1099) #2, !dbg !1641
  tail call void @llvm.dbg.value(metadata i8* %errors, i64 0, metadata !787, metadata !1099) #2, !dbg !1642
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !788, metadata !1099) #2, !dbg !1643
  %call.i = tail call %struct._object* @_PyCodec_Lookup(i8* %encoding) #2, !dbg !1644
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !789, metadata !1099) #2, !dbg !1645
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !1646
  br i1 %cmp.i, label %codec_getstreamcodec.exit, label %if.end.i, !dbg !1647

if.end.i:                                         ; preds = %entry
  %ob_item.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, i32 1, !dbg !1648
  %arrayidx.i = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item.i, i64 3, !dbg !1648
  %0 = bitcast %struct._typeobject** %arrayidx.i to %struct._object**, !dbg !1648
  %1 = load %struct._object*, %struct._object** %0, align 8, !dbg !1648, !tbaa !1106
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !791, metadata !1099) #2, !dbg !1649
  %cmp1.i = icmp eq i8* %errors, null, !dbg !1650
  br i1 %cmp1.i, label %if.else.i, label %if.then.2.i, !dbg !1651

if.then.2.i:                                      ; preds = %if.end.i
  %call3.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), %struct._object* %stream, i8* %errors) #2, !dbg !1652
  tail call void @llvm.dbg.value(metadata %struct._object* %call3.i, i64 0, metadata !790, metadata !1099) #2, !dbg !1653
  br label %do.body.i, !dbg !1654

if.else.i:                                        ; preds = %if.end.i
  %call4.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %struct._object* %stream) #2, !dbg !1655
  tail call void @llvm.dbg.value(metadata %struct._object* %call4.i, i64 0, metadata !790, metadata !1099) #2, !dbg !1653
  br label %do.body.i, !dbg !1656

do.body.i:                                        ; preds = %if.else.i, %if.then.2.i
  %streamcodec.0.i = phi %struct._object* [ %call3.i, %if.then.2.i ], [ %call4.i, %if.else.i ], !dbg !1656
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !792, metadata !1099) #2, !dbg !1657
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1658
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1658, !tbaa !1209
  %dec.i = add i64 %2, -1, !dbg !1658
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1658, !tbaa !1209
  %cmp6.i = icmp eq i64 %dec.i, 0, !dbg !1658
  br i1 %cmp6.i, label %if.else.8.i, label %codec_getstreamcodec.exit, !dbg !1659

if.else.8.i:                                      ; preds = %do.body.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1660
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1660, !tbaa !1214
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !1660
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1660, !tbaa !1215
  tail call void %4(%struct._object* %call.i) #2, !dbg !1660
  br label %codec_getstreamcodec.exit, !dbg !1656

codec_getstreamcodec.exit:                        ; preds = %entry, %do.body.i, %if.else.8.i
  %retval.0.i = phi %struct._object* [ null, %entry ], [ %streamcodec.0.i, %do.body.i ], [ %streamcodec.0.i, %if.else.8.i ], !dbg !1656
  ret %struct._object* %retval.0.i, !dbg !1661
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_Encode(%struct._object* %object, i8* %encoding, i8* %errors) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %object, i64 0, metadata !590, metadata !1099), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8* %encoding, i64 0, metadata !591, metadata !1099), !dbg !1663
  tail call void @llvm.dbg.value(metadata i8* %errors, i64 0, metadata !592, metadata !1099), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8* %encoding, i64 0, metadata !560, metadata !1099) #2, !dbg !1665
  tail call void @llvm.dbg.value(metadata i8* %encoding, i64 0, metadata !763, metadata !1099) #2, !dbg !1667
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !764, metadata !1099) #2, !dbg !1669
  %call.i.i = tail call %struct._object* @_PyCodec_Lookup(i8* %encoding) #2, !dbg !1670
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.i, i64 0, metadata !765, metadata !1099) #2, !dbg !1671
  %cmp.i.i = icmp eq %struct._object* %call.i.i, null, !dbg !1672
  br i1 %cmp.i.i, label %cleanup, label %if.end.i.i, !dbg !1673

if.end.i.i:                                       ; preds = %entry
  %ob_item.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 1, i32 1, !dbg !1674
  %arrayidx.i.i = bitcast %struct._typeobject** %ob_item.i.i to %struct._object**, !dbg !1674
  %0 = load %struct._object*, %struct._object** %arrayidx.i.i, align 8, !dbg !1674, !tbaa !1106
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !766, metadata !1099) #2, !dbg !1675
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.i, i64 0, metadata !767, metadata !1099) #2, !dbg !1676
  %ob_refcnt.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 0, i32 0, !dbg !1677
  %1 = load i64, i64* %ob_refcnt.i.i, align 8, !dbg !1677, !tbaa !1209
  %dec.i.i = add i64 %1, -1, !dbg !1677
  store i64 %dec.i.i, i64* %ob_refcnt.i.i, align 8, !dbg !1677, !tbaa !1209
  %cmp1.i.i = icmp eq i64 %dec.i.i, 0, !dbg !1677
  br i1 %cmp1.i.i, label %if.else.i.i, label %PyCodec_Encoder.exit, !dbg !1678

if.else.i.i:                                      ; preds = %if.end.i.i
  %ob_type.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 0, i32 1, !dbg !1679
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.i, align 8, !dbg !1679, !tbaa !1214
  %tp_dealloc.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !1679
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.i, align 8, !dbg !1679, !tbaa !1215
  tail call void %3(%struct._object* %call.i.i) #2, !dbg !1679
  br label %PyCodec_Encoder.exit, !dbg !1680

PyCodec_Encoder.exit:                             ; preds = %if.end.i.i, %if.else.i.i
  %ob_refcnt4.i.i = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !1681
  %4 = load i64, i64* %ob_refcnt4.i.i, align 8, !dbg !1681, !tbaa !1209
  %inc.i.i = add i64 %4, 1, !dbg !1681
  store i64 %inc.i.i, i64* %ob_refcnt4.i.i, align 8, !dbg !1681, !tbaa !1209
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !593, metadata !1099), !dbg !1682
  %cmp = icmp eq %struct._object* %0, null, !dbg !1683
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1685

if.end:                                           ; preds = %PyCodec_Encoder.exit
  %call1 = tail call fastcc %struct._object* @_PyCodec_EncodeInternal(%struct._object* %object, %struct._object* %0, i8* %encoding, i8* %errors), !dbg !1686
  br label %cleanup, !dbg !1687

cleanup:                                          ; preds = %entry, %PyCodec_Encoder.exit, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %PyCodec_Encoder.exit ], [ null, %entry ]
  ret %struct._object* %retval.0, !dbg !1688
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct._object* @_PyCodec_EncodeInternal(%struct._object* %object, %struct._object* %encoder, i8* %encoding, i8* %errors) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %object, i64 0, metadata !798, metadata !1099), !dbg !1689
  tail call void @llvm.dbg.value(metadata %struct._object* %encoder, i64 0, metadata !799, metadata !1099), !dbg !1690
  tail call void @llvm.dbg.value(metadata i8* %encoding, i64 0, metadata !800, metadata !1099), !dbg !1691
  tail call void @llvm.dbg.value(metadata i8* %errors, i64 0, metadata !801, metadata !1099), !dbg !1692
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !802, metadata !1099), !dbg !1693
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !803, metadata !1099), !dbg !1694
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !804, metadata !1099), !dbg !1695
  tail call void @llvm.dbg.value(metadata %struct._object* %object, i64 0, metadata !828, metadata !1099) #2, !dbg !1696
  tail call void @llvm.dbg.value(metadata i8* %errors, i64 0, metadata !829, metadata !1099) #2, !dbg !1698
  %cmp.i = icmp ne i8* %errors, null, !dbg !1699
  %conv1.i = select i1 %cmp.i, i64 2, i64 1, !dbg !1700
  %call.i = tail call %struct._object* @PyTuple_New(i64 %conv1.i) #2, !dbg !1701
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !830, metadata !1099) #2, !dbg !1702
  %cmp2.i = icmp eq %struct._object* %call.i, null, !dbg !1703
  br i1 %cmp2.i, label %if.end.72, label %if.end.i, !dbg !1705

if.end.i:                                         ; preds = %entry
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %object, i64 0, i32 0, !dbg !1706
  %0 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1706, !tbaa !1209
  %inc.i = add i64 %0, 1, !dbg !1706
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !1706, !tbaa !1209
  %ob_item.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, i32 1, !dbg !1707
  %arrayidx.i = bitcast %struct._typeobject** %ob_item.i to %struct._object**, !dbg !1707
  store %struct._object* %object, %struct._object** %arrayidx.i, align 8, !dbg !1707, !tbaa !1106
  br i1 %cmp.i, label %if.then.4.i, label %if.end, !dbg !1708

if.then.4.i:                                      ; preds = %if.end.i
  %call5.i = tail call %struct._object* @PyUnicode_FromString(i8* %errors) #2, !dbg !1709
  tail call void @llvm.dbg.value(metadata %struct._object* %call5.i, i64 0, metadata !831, metadata !1099) #2, !dbg !1710
  %cmp6.i = icmp eq %struct._object* %call5.i, null, !dbg !1711
  br i1 %cmp6.i, label %do.body.i, label %if.end.14.i, !dbg !1712

do.body.i:                                        ; preds = %if.then.4.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !834, metadata !1099) #2, !dbg !1713
  %ob_refcnt9.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1715
  %1 = load i64, i64* %ob_refcnt9.i, align 8, !dbg !1715, !tbaa !1209
  %dec.i = add i64 %1, -1, !dbg !1715
  store i64 %dec.i, i64* %ob_refcnt9.i, align 8, !dbg !1715, !tbaa !1209
  %cmp10.i = icmp eq i64 %dec.i, 0, !dbg !1715
  br i1 %cmp10.i, label %if.else.i, label %if.end.72, !dbg !1717

if.else.i:                                        ; preds = %do.body.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1718
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1718, !tbaa !1214
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !1718
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1718, !tbaa !1215
  tail call void %3(%struct._object* %call.i) #2, !dbg !1718
  br label %if.end.72, !dbg !1720

if.end.14.i:                                      ; preds = %if.then.4.i
  %arrayidx16.i = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item.i, i64 1, !dbg !1721
  %4 = bitcast %struct._typeobject** %arrayidx16.i to %struct._object**, !dbg !1721
  store %struct._object* %call5.i, %struct._object** %4, align 8, !dbg !1721, !tbaa !1106
  br label %if.end, !dbg !1720

if.end:                                           ; preds = %if.end.14.i, %if.end.i
  %call1 = tail call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %encoder, %struct._object* %call.i, %struct._object* null) #2, !dbg !1722
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !803, metadata !1099), !dbg !1694
  %cmp2 = icmp eq %struct._object* %call1, null, !dbg !1723
  br i1 %cmp2, label %do.body.38.thread, label %if.end.4, !dbg !1725

if.end.4:                                         ; preds = %if.end
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !1726
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1726, !tbaa !1214
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 19, !dbg !1726
  %6 = load i64, i64* %tp_flags, align 8, !dbg !1726, !tbaa !1370
  %and = and i64 %6, 67108864, !dbg !1726
  %cmp5 = icmp eq i64 %and, 0, !dbg !1726
  br i1 %cmp5, label %do.body.41, label %lor.lhs.false, !dbg !1728

lor.lhs.false:                                    ; preds = %if.end.4
  %7 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 1, i32 0, !dbg !1729
  %8 = load i64, i64* %7, align 8, !dbg !1729, !tbaa !1374
  %cmp6 = icmp eq i64 %8, 2, !dbg !1730
  br i1 %cmp6, label %if.end.8, label %do.body.41, !dbg !1731

if.end.8:                                         ; preds = %lor.lhs.false
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %call1, i64 1, i32 1, !dbg !1732
  %arrayidx = bitcast %struct._typeobject** %ob_item to %struct._object**, !dbg !1732
  %9 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1732, !tbaa !1106
  tail call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !804, metadata !1099), !dbg !1695
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 0, !dbg !1733
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !1733, !tbaa !1209
  %inc = add i64 %10, 1, !dbg !1733
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1733, !tbaa !1209
  %ob_refcnt9 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1734
  %11 = load i64, i64* %ob_refcnt9, align 8, !dbg !1734, !tbaa !1209
  %dec = add i64 %11, -1, !dbg !1734
  store i64 %dec, i64* %ob_refcnt9, align 8, !dbg !1734, !tbaa !1209
  %cmp10 = icmp eq i64 %dec, 0, !dbg !1734
  br i1 %cmp10, label %if.else, label %if.end.13, !dbg !1736

if.else:                                          ; preds = %if.end.8
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1737
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8, !dbg !1737, !tbaa !1214
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !1737
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1737, !tbaa !1215
  tail call void %13(%struct._object* %call.i) #2, !dbg !1737
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.8, %if.else
  tail call void @llvm.dbg.value(metadata %struct._object* %encoder, i64 0, metadata !807, metadata !1099), !dbg !1739
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %encoder, i64 0, i32 0, !dbg !1741
  %14 = load i64, i64* %ob_refcnt16, align 8, !dbg !1741, !tbaa !1209
  %dec17 = add i64 %14, -1, !dbg !1741
  store i64 %dec17, i64* %ob_refcnt16, align 8, !dbg !1741, !tbaa !1209
  %cmp18 = icmp eq i64 %dec17, 0, !dbg !1741
  br i1 %cmp18, label %if.else.20, label %if.end.23, !dbg !1743

if.else.20:                                       ; preds = %if.end.13
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %encoder, i64 0, i32 1, !dbg !1744
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8, !dbg !1744, !tbaa !1214
  %tp_dealloc22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i64 0, i32 4, !dbg !1744
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8, !dbg !1744, !tbaa !1215
  tail call void %16(%struct._object* %encoder) #2, !dbg !1744
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.13, %if.else.20
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !809, metadata !1099), !dbg !1746
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !1748
  %17 = load i64, i64* %ob_refcnt28, align 8, !dbg !1748, !tbaa !1209
  %dec29 = add i64 %17, -1, !dbg !1748
  store i64 %dec29, i64* %ob_refcnt28, align 8, !dbg !1748, !tbaa !1209
  %cmp30 = icmp eq i64 %dec29, 0, !dbg !1748
  br i1 %cmp30, label %if.else.32, label %cleanup, !dbg !1750

if.else.32:                                       ; preds = %if.end.23
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1751, !tbaa !1214
  %tp_dealloc34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i64 0, i32 4, !dbg !1751
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc34, align 8, !dbg !1751, !tbaa !1215
  tail call void %19(%struct._object* %call1) #2, !dbg !1751
  br label %cleanup

do.body.38.thread:                                ; preds = %if.end
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i64 0, metadata !842, metadata !1099) #2, !dbg !1753
  tail call void @llvm.dbg.value(metadata i8* %encoding, i64 0, metadata !843, metadata !1099) #2, !dbg !1756
  %call.i.134 = tail call %struct._object* (i8*, ...) @_PyErr_TrySetFromCause(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i8* %encoding) #2, !dbg !1757
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !811, metadata !1099), !dbg !1758
  br label %do.body.60

do.body.41:                                       ; preds = %lor.lhs.false, %if.end.4
  %20 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1760, !tbaa !1106
  tail call void @PyErr_SetString(%struct._object* %20, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i64 0, i64 0)) #2, !dbg !1762
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !811, metadata !1099), !dbg !1758
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !813, metadata !1099), !dbg !1763
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !1765
  %21 = load i64, i64* %ob_refcnt43, align 8, !dbg !1765, !tbaa !1209
  %dec44 = add i64 %21, -1, !dbg !1765
  store i64 %dec44, i64* %ob_refcnt43, align 8, !dbg !1765, !tbaa !1209
  %cmp45 = icmp eq i64 %dec44, 0, !dbg !1765
  br i1 %cmp45, label %if.else.47, label %do.body.60, !dbg !1767

if.else.47:                                       ; preds = %do.body.41
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1768, !tbaa !1214
  %tp_dealloc49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i64 0, i32 4, !dbg !1768
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc49, align 8, !dbg !1768, !tbaa !1215
  tail call void %23(%struct._object* %call1) #2, !dbg !1768
  br label %do.body.60

do.body.60:                                       ; preds = %do.body.41, %if.else.47, %do.body.38.thread
  %ob_refcnt62 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1770
  %24 = load i64, i64* %ob_refcnt62, align 8, !dbg !1770, !tbaa !1209
  %dec63 = add i64 %24, -1, !dbg !1770
  store i64 %dec63, i64* %ob_refcnt62, align 8, !dbg !1770, !tbaa !1209
  %cmp64 = icmp eq i64 %dec63, 0, !dbg !1770
  br i1 %cmp64, label %if.else.66, label %if.end.72, !dbg !1772

if.else.66:                                       ; preds = %do.body.60
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1773
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8, !dbg !1773, !tbaa !1214
  %tp_dealloc68 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i64 0, i32 4, !dbg !1773
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc68, align 8, !dbg !1773, !tbaa !1215
  tail call void %26(%struct._object* %call.i) #2, !dbg !1773
  br label %if.end.72

if.end.72:                                        ; preds = %do.body.i, %if.else.i, %entry, %if.else.66, %do.body.60
  tail call void @llvm.dbg.value(metadata %struct._object* %encoder, i64 0, metadata !821, metadata !1099), !dbg !1775
  %cmp77 = icmp eq %struct._object* %encoder, null, !dbg !1777
  br i1 %cmp77, label %cleanup, label %do.body.79, !dbg !1778

do.body.79:                                       ; preds = %if.end.72
  tail call void @llvm.dbg.value(metadata %struct._object* %encoder, i64 0, metadata !823, metadata !1099), !dbg !1779
  %ob_refcnt81 = getelementptr inbounds %struct._object, %struct._object* %encoder, i64 0, i32 0, !dbg !1781
  %27 = load i64, i64* %ob_refcnt81, align 8, !dbg !1781, !tbaa !1209
  %dec82 = add i64 %27, -1, !dbg !1781
  store i64 %dec82, i64* %ob_refcnt81, align 8, !dbg !1781, !tbaa !1209
  %cmp83 = icmp eq i64 %dec82, 0, !dbg !1781
  br i1 %cmp83, label %if.else.85, label %cleanup, !dbg !1783

if.else.85:                                       ; preds = %do.body.79
  %ob_type86 = getelementptr inbounds %struct._object, %struct._object* %encoder, i64 0, i32 1, !dbg !1784
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type86, align 8, !dbg !1784, !tbaa !1214
  %tp_dealloc87 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i64 0, i32 4, !dbg !1784
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc87, align 8, !dbg !1784, !tbaa !1215
  tail call void %29(%struct._object* %encoder) #2, !dbg !1784
  br label %cleanup

cleanup:                                          ; preds = %if.end.72, %do.body.79, %if.else.85, %if.else.32, %if.end.23
  %retval.0 = phi %struct._object* [ %9, %if.end.23 ], [ %9, %if.else.32 ], [ null, %if.else.85 ], [ null, %do.body.79 ], [ null, %if.end.72 ]
  ret %struct._object* %retval.0, !dbg !1786
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_Decode(%struct._object* %object, i8* %encoding, i8* %errors) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %object, i64 0, metadata !596, metadata !1099), !dbg !1787
  tail call void @llvm.dbg.value(metadata i8* %encoding, i64 0, metadata !597, metadata !1099), !dbg !1788
  tail call void @llvm.dbg.value(metadata i8* %errors, i64 0, metadata !598, metadata !1099), !dbg !1789
  tail call void @llvm.dbg.value(metadata i8* %encoding, i64 0, metadata !563, metadata !1099) #2, !dbg !1790
  tail call void @llvm.dbg.value(metadata i8* %encoding, i64 0, metadata !763, metadata !1099) #2, !dbg !1792
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !764, metadata !1099) #2, !dbg !1794
  %call.i.i = tail call %struct._object* @_PyCodec_Lookup(i8* %encoding) #2, !dbg !1795
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.i, i64 0, metadata !765, metadata !1099) #2, !dbg !1796
  %cmp.i.i = icmp eq %struct._object* %call.i.i, null, !dbg !1797
  br i1 %cmp.i.i, label %cleanup, label %if.end.i.i, !dbg !1798

if.end.i.i:                                       ; preds = %entry
  %ob_item.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 1, i32 1, !dbg !1799
  %arrayidx.i.i = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item.i.i, i64 1, !dbg !1799
  %0 = bitcast %struct._typeobject** %arrayidx.i.i to %struct._object**, !dbg !1799
  %1 = load %struct._object*, %struct._object** %0, align 8, !dbg !1799, !tbaa !1106
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !766, metadata !1099) #2, !dbg !1800
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.i, i64 0, metadata !767, metadata !1099) #2, !dbg !1801
  %ob_refcnt.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 0, i32 0, !dbg !1802
  %2 = load i64, i64* %ob_refcnt.i.i, align 8, !dbg !1802, !tbaa !1209
  %dec.i.i = add i64 %2, -1, !dbg !1802
  store i64 %dec.i.i, i64* %ob_refcnt.i.i, align 8, !dbg !1802, !tbaa !1209
  %cmp1.i.i = icmp eq i64 %dec.i.i, 0, !dbg !1802
  br i1 %cmp1.i.i, label %if.else.i.i, label %PyCodec_Decoder.exit, !dbg !1803

if.else.i.i:                                      ; preds = %if.end.i.i
  %ob_type.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 0, i32 1, !dbg !1804
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.i, align 8, !dbg !1804, !tbaa !1214
  %tp_dealloc.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !1804
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.i, align 8, !dbg !1804, !tbaa !1215
  tail call void %4(%struct._object* %call.i.i) #2, !dbg !1804
  br label %PyCodec_Decoder.exit, !dbg !1805

PyCodec_Decoder.exit:                             ; preds = %if.end.i.i, %if.else.i.i
  %ob_refcnt4.i.i = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 0, !dbg !1806
  %5 = load i64, i64* %ob_refcnt4.i.i, align 8, !dbg !1806, !tbaa !1209
  %inc.i.i = add i64 %5, 1, !dbg !1806
  store i64 %inc.i.i, i64* %ob_refcnt4.i.i, align 8, !dbg !1806, !tbaa !1209
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !599, metadata !1099), !dbg !1807
  %cmp = icmp eq %struct._object* %1, null, !dbg !1808
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1810

if.end:                                           ; preds = %PyCodec_Decoder.exit
  %call1 = tail call fastcc %struct._object* @_PyCodec_DecodeInternal(%struct._object* %object, %struct._object* %1, i8* %encoding, i8* %errors), !dbg !1811
  br label %cleanup, !dbg !1812

cleanup:                                          ; preds = %entry, %PyCodec_Decoder.exit, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %PyCodec_Decoder.exit ], [ null, %entry ]
  ret %struct._object* %retval.0, !dbg !1813
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct._object* @_PyCodec_DecodeInternal(%struct._object* %object, %struct._object* %decoder, i8* %encoding, i8* %errors) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %object, i64 0, metadata !846, metadata !1099), !dbg !1814
  tail call void @llvm.dbg.value(metadata %struct._object* %decoder, i64 0, metadata !847, metadata !1099), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8* %encoding, i64 0, metadata !848, metadata !1099), !dbg !1816
  tail call void @llvm.dbg.value(metadata i8* %errors, i64 0, metadata !849, metadata !1099), !dbg !1817
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !850, metadata !1099), !dbg !1818
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !851, metadata !1099), !dbg !1819
  tail call void @llvm.dbg.value(metadata %struct._object* %object, i64 0, metadata !828, metadata !1099) #2, !dbg !1820
  tail call void @llvm.dbg.value(metadata i8* %errors, i64 0, metadata !829, metadata !1099) #2, !dbg !1822
  %cmp.i = icmp ne i8* %errors, null, !dbg !1823
  %conv1.i = select i1 %cmp.i, i64 2, i64 1, !dbg !1824
  %call.i = tail call %struct._object* @PyTuple_New(i64 %conv1.i) #2, !dbg !1825
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !830, metadata !1099) #2, !dbg !1826
  %cmp2.i = icmp eq %struct._object* %call.i, null, !dbg !1827
  br i1 %cmp2.i, label %if.end.53, label %if.end.i, !dbg !1828

if.end.i:                                         ; preds = %entry
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %object, i64 0, i32 0, !dbg !1829
  %0 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1829, !tbaa !1209
  %inc.i = add i64 %0, 1, !dbg !1829
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !1829, !tbaa !1209
  %ob_item.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, i32 1, !dbg !1830
  %arrayidx.i = bitcast %struct._typeobject** %ob_item.i to %struct._object**, !dbg !1830
  store %struct._object* %object, %struct._object** %arrayidx.i, align 8, !dbg !1830, !tbaa !1106
  br i1 %cmp.i, label %if.then.4.i, label %if.end, !dbg !1831

if.then.4.i:                                      ; preds = %if.end.i
  %call5.i = tail call %struct._object* @PyUnicode_FromString(i8* %errors) #2, !dbg !1832
  tail call void @llvm.dbg.value(metadata %struct._object* %call5.i, i64 0, metadata !831, metadata !1099) #2, !dbg !1833
  %cmp6.i = icmp eq %struct._object* %call5.i, null, !dbg !1834
  br i1 %cmp6.i, label %do.body.i, label %if.end.14.i, !dbg !1835

do.body.i:                                        ; preds = %if.then.4.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !834, metadata !1099) #2, !dbg !1836
  %ob_refcnt9.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1837
  %1 = load i64, i64* %ob_refcnt9.i, align 8, !dbg !1837, !tbaa !1209
  %dec.i = add i64 %1, -1, !dbg !1837
  store i64 %dec.i, i64* %ob_refcnt9.i, align 8, !dbg !1837, !tbaa !1209
  %cmp10.i = icmp eq i64 %dec.i, 0, !dbg !1837
  br i1 %cmp10.i, label %if.else.i, label %if.end.53, !dbg !1838

if.else.i:                                        ; preds = %do.body.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1839
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1839, !tbaa !1214
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !1839
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1839, !tbaa !1215
  tail call void %3(%struct._object* %call.i) #2, !dbg !1839
  br label %if.end.53, !dbg !1840

if.end.14.i:                                      ; preds = %if.then.4.i
  %arrayidx16.i = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item.i, i64 1, !dbg !1841
  %4 = bitcast %struct._typeobject** %arrayidx16.i to %struct._object**, !dbg !1841
  store %struct._object* %call5.i, %struct._object** %4, align 8, !dbg !1841, !tbaa !1106
  br label %if.end, !dbg !1840

if.end:                                           ; preds = %if.end.14.i, %if.end.i
  %call1 = tail call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %decoder, %struct._object* %call.i, %struct._object* null) #2, !dbg !1842
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !851, metadata !1099), !dbg !1819
  %cmp2 = icmp eq %struct._object* %call1, null, !dbg !1843
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !1845

if.then.3:                                        ; preds = %if.end
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i64 0, metadata !842, metadata !1099) #2, !dbg !1846
  tail call void @llvm.dbg.value(metadata i8* %encoding, i64 0, metadata !843, metadata !1099) #2, !dbg !1849
  %call.i.134 = tail call %struct._object* (i8*, ...) @_PyErr_TrySetFromCause(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i8* %encoding) #2, !dbg !1850
  br label %do.body.41

if.end.4:                                         ; preds = %if.end
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !1851
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1851, !tbaa !1214
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 19, !dbg !1851
  %6 = load i64, i64* %tp_flags, align 8, !dbg !1851, !tbaa !1370
  %and = and i64 %6, 67108864, !dbg !1851
  %cmp5 = icmp eq i64 %and, 0, !dbg !1851
  br i1 %cmp5, label %do.body.38, label %lor.lhs.false, !dbg !1853

lor.lhs.false:                                    ; preds = %if.end.4
  %7 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 1, i32 0, !dbg !1854
  %8 = load i64, i64* %7, align 8, !dbg !1854, !tbaa !1374
  %cmp6 = icmp eq i64 %8, 2, !dbg !1855
  br i1 %cmp6, label %if.end.8, label %do.body.38, !dbg !1856

if.end.8:                                         ; preds = %lor.lhs.false
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %call1, i64 1, i32 1, !dbg !1857
  %arrayidx = bitcast %struct._typeobject** %ob_item to %struct._object**, !dbg !1857
  %9 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1857, !tbaa !1106
  tail call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !852, metadata !1099), !dbg !1858
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 0, !dbg !1859
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !1859, !tbaa !1209
  %inc = add i64 %10, 1, !dbg !1859
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1859, !tbaa !1209
  %ob_refcnt9 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1860
  %11 = load i64, i64* %ob_refcnt9, align 8, !dbg !1860, !tbaa !1209
  %dec = add i64 %11, -1, !dbg !1860
  store i64 %dec, i64* %ob_refcnt9, align 8, !dbg !1860, !tbaa !1209
  %cmp10 = icmp eq i64 %dec, 0, !dbg !1860
  br i1 %cmp10, label %if.else, label %if.end.13, !dbg !1862

if.else:                                          ; preds = %if.end.8
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1863
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8, !dbg !1863, !tbaa !1214
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !1863
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1863, !tbaa !1215
  tail call void %13(%struct._object* %call.i) #2, !dbg !1863
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.8, %if.else
  tail call void @llvm.dbg.value(metadata %struct._object* %decoder, i64 0, metadata !855, metadata !1099), !dbg !1865
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %decoder, i64 0, i32 0, !dbg !1867
  %14 = load i64, i64* %ob_refcnt16, align 8, !dbg !1867, !tbaa !1209
  %dec17 = add i64 %14, -1, !dbg !1867
  store i64 %dec17, i64* %ob_refcnt16, align 8, !dbg !1867, !tbaa !1209
  %cmp18 = icmp eq i64 %dec17, 0, !dbg !1867
  br i1 %cmp18, label %if.else.20, label %if.end.23, !dbg !1869

if.else.20:                                       ; preds = %if.end.13
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %decoder, i64 0, i32 1, !dbg !1870
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8, !dbg !1870, !tbaa !1214
  %tp_dealloc22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i64 0, i32 4, !dbg !1870
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8, !dbg !1870, !tbaa !1215
  tail call void %16(%struct._object* %decoder) #2, !dbg !1870
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.13, %if.else.20
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !857, metadata !1099), !dbg !1872
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !1874
  %17 = load i64, i64* %ob_refcnt28, align 8, !dbg !1874, !tbaa !1209
  %dec29 = add i64 %17, -1, !dbg !1874
  store i64 %dec29, i64* %ob_refcnt28, align 8, !dbg !1874, !tbaa !1209
  %cmp30 = icmp eq i64 %dec29, 0, !dbg !1874
  br i1 %cmp30, label %if.else.32, label %cleanup, !dbg !1876

if.else.32:                                       ; preds = %if.end.23
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1877, !tbaa !1214
  %tp_dealloc34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i64 0, i32 4, !dbg !1877
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc34, align 8, !dbg !1877, !tbaa !1215
  tail call void %19(%struct._object* %call1) #2, !dbg !1877
  br label %cleanup

do.body.38:                                       ; preds = %if.end.4, %lor.lhs.false
  %20 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1879, !tbaa !1106
  tail call void @PyErr_SetString(%struct._object* %20, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.23, i64 0, i64 0)) #2, !dbg !1881
  br label %do.body.41

do.body.41:                                       ; preds = %if.then.3, %do.body.38
  %result.0145 = phi %struct._object* [ null, %if.then.3 ], [ %call1, %do.body.38 ]
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1882
  %21 = load i64, i64* %ob_refcnt43, align 8, !dbg !1882, !tbaa !1209
  %dec44 = add i64 %21, -1, !dbg !1882
  store i64 %dec44, i64* %ob_refcnt43, align 8, !dbg !1882, !tbaa !1209
  %cmp45 = icmp eq i64 %dec44, 0, !dbg !1882
  br i1 %cmp45, label %if.else.47, label %if.end.53, !dbg !1884

if.else.47:                                       ; preds = %do.body.41
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1885
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8, !dbg !1885, !tbaa !1214
  %tp_dealloc49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i64 0, i32 4, !dbg !1885
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc49, align 8, !dbg !1885, !tbaa !1215
  tail call void %23(%struct._object* %call.i) #2, !dbg !1885
  br label %if.end.53

if.end.53:                                        ; preds = %entry, %if.else.i, %do.body.i, %if.else.47, %do.body.41
  %result.0143 = phi %struct._object* [ %result.0145, %if.else.47 ], [ %result.0145, %do.body.41 ], [ null, %do.body.i ], [ null, %if.else.i ], [ null, %entry ]
  tail call void @llvm.dbg.value(metadata %struct._object* %decoder, i64 0, metadata !864, metadata !1099), !dbg !1887
  %cmp58 = icmp eq %struct._object* %decoder, null, !dbg !1889
  br i1 %cmp58, label %if.end.72, label %do.body.60, !dbg !1890

do.body.60:                                       ; preds = %if.end.53
  tail call void @llvm.dbg.value(metadata %struct._object* %decoder, i64 0, metadata !866, metadata !1099), !dbg !1891
  %ob_refcnt62 = getelementptr inbounds %struct._object, %struct._object* %decoder, i64 0, i32 0, !dbg !1893
  %24 = load i64, i64* %ob_refcnt62, align 8, !dbg !1893, !tbaa !1209
  %dec63 = add i64 %24, -1, !dbg !1893
  store i64 %dec63, i64* %ob_refcnt62, align 8, !dbg !1893, !tbaa !1209
  %cmp64 = icmp eq i64 %dec63, 0, !dbg !1893
  br i1 %cmp64, label %if.else.66, label %if.end.72, !dbg !1895

if.else.66:                                       ; preds = %do.body.60
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %decoder, i64 0, i32 1, !dbg !1896
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8, !dbg !1896, !tbaa !1214
  %tp_dealloc68 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i64 0, i32 4, !dbg !1896
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc68, align 8, !dbg !1896, !tbaa !1215
  tail call void %26(%struct._object* %decoder) #2, !dbg !1896
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.66, %do.body.60, %if.end.53
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !869, metadata !1099), !dbg !1898
  %cmp77 = icmp eq %struct._object* %result.0143, null, !dbg !1900
  br i1 %cmp77, label %cleanup, label %do.body.79, !dbg !1901

do.body.79:                                       ; preds = %if.end.72
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !871, metadata !1099), !dbg !1902
  %ob_refcnt81 = getelementptr inbounds %struct._object, %struct._object* %result.0143, i64 0, i32 0, !dbg !1904
  %27 = load i64, i64* %ob_refcnt81, align 8, !dbg !1904, !tbaa !1209
  %dec82 = add i64 %27, -1, !dbg !1904
  store i64 %dec82, i64* %ob_refcnt81, align 8, !dbg !1904, !tbaa !1209
  %cmp83 = icmp eq i64 %dec82, 0, !dbg !1904
  br i1 %cmp83, label %if.else.85, label %cleanup, !dbg !1906

if.else.85:                                       ; preds = %do.body.79
  %ob_type86 = getelementptr inbounds %struct._object, %struct._object* %result.0143, i64 0, i32 1, !dbg !1907
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type86, align 8, !dbg !1907, !tbaa !1214
  %tp_dealloc87 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i64 0, i32 4, !dbg !1907
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc87, align 8, !dbg !1907, !tbaa !1215
  tail call void %29(%struct._object* %result.0143) #2, !dbg !1907
  br label %cleanup

cleanup:                                          ; preds = %if.end.72, %do.body.79, %if.else.85, %if.else.32, %if.end.23
  %retval.0 = phi %struct._object* [ %9, %if.end.23 ], [ %9, %if.else.32 ], [ null, %if.else.85 ], [ null, %do.body.79 ], [ null, %if.end.72 ]
  ret %struct._object* %retval.0, !dbg !1909
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyCodec_LookupTextEncoding(i8* %encoding, i8* %alternate_command) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %encoding, i64 0, metadata !602, metadata !1099), !dbg !1910
  tail call void @llvm.dbg.value(metadata i8* %alternate_command, i64 0, metadata !603, metadata !1099), !dbg !1911
  %call = tail call %struct._object* @_PyCodec_Lookup(i8* %encoding), !dbg !1912
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !604, metadata !1099), !dbg !1913
  %cmp = icmp eq %struct._object* %call, null, !dbg !1914
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1916

if.end:                                           ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1917
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1917, !tbaa !1214
  %cmp1 = icmp eq %struct._typeobject* %0, @PyTuple_Type, !dbg !1917
  br i1 %cmp1, label %cleanup, label %if.then.2, !dbg !1918

if.then.2:                                        ; preds = %if.end
  %call3 = tail call %struct._object* @_PyObject_GetAttrId(%struct._object* %call, %struct._Py_Identifier* nonnull @_PyCodec_LookupTextEncoding.PyId__is_text_encoding) #2, !dbg !1919
  tail call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !605, metadata !1099), !dbg !1920
  %cmp4 = icmp eq %struct._object* %call3, null, !dbg !1921
  br i1 %cmp4, label %if.then.5, label %if.else.14, !dbg !1922

if.then.5:                                        ; preds = %if.then.2
  %1 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8, !dbg !1923, !tbaa !1106
  %call6 = tail call i32 @PyErr_ExceptionMatches(%struct._object* %1) #2, !dbg !1924
  %tobool = icmp eq i32 %call6, 0, !dbg !1924
  br i1 %tobool, label %do.body, label %if.then.7, !dbg !1925

if.then.7:                                        ; preds = %if.then.5
  tail call void @PyErr_Clear() #2, !dbg !1926
  br label %cleanup, !dbg !1928

do.body:                                          ; preds = %if.then.5
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !607, metadata !1099), !dbg !1929
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1931
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !1931, !tbaa !1209
  %dec = add i64 %2, -1, !dbg !1931
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1931, !tbaa !1209
  %cmp8 = icmp eq i64 %dec, 0, !dbg !1931
  br i1 %cmp8, label %if.else.10, label %cleanup, !dbg !1933

if.else.10:                                       ; preds = %do.body
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1934, !tbaa !1214
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !1934
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1934, !tbaa !1215
  tail call void %4(%struct._object* %call) #2, !dbg !1934
  br label %cleanup

if.else.14:                                       ; preds = %if.then.2
  %call15 = tail call i32 @PyObject_IsTrue(%struct._object* %call3) #2, !dbg !1936
  tail call void @llvm.dbg.value(metadata i32 %call15, i64 0, metadata !606, metadata !1099), !dbg !1937
  tail call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !615, metadata !1099), !dbg !1938
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 0, !dbg !1940
  %5 = load i64, i64* %ob_refcnt18, align 8, !dbg !1940, !tbaa !1209
  %dec19 = add i64 %5, -1, !dbg !1940
  store i64 %dec19, i64* %ob_refcnt18, align 8, !dbg !1940, !tbaa !1209
  %cmp20 = icmp eq i64 %dec19, 0, !dbg !1940
  br i1 %cmp20, label %if.else.22, label %if.end.25, !dbg !1942

if.else.22:                                       ; preds = %if.else.14
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 1, !dbg !1943
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8, !dbg !1943, !tbaa !1214
  %tp_dealloc24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !1943
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc24, align 8, !dbg !1943, !tbaa !1215
  tail call void %7(%struct._object* %call3) #2, !dbg !1943
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.14, %if.else.22
  %tobool28 = icmp eq i32 %call15, 0, !dbg !1945
  br i1 %tobool28, label %do.body.30, label %cleanup, !dbg !1946

do.body.30:                                       ; preds = %if.end.25
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !618, metadata !1099), !dbg !1947
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1949
  %8 = load i64, i64* %ob_refcnt32, align 8, !dbg !1949, !tbaa !1209
  %dec33 = add i64 %8, -1, !dbg !1949
  store i64 %dec33, i64* %ob_refcnt32, align 8, !dbg !1949, !tbaa !1209
  %cmp34 = icmp eq i64 %dec33, 0, !dbg !1949
  br i1 %cmp34, label %if.else.36, label %if.end.39, !dbg !1951

if.else.36:                                       ; preds = %do.body.30
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1952, !tbaa !1214
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 4, !dbg !1952
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8, !dbg !1952, !tbaa !1215
  tail call void %10(%struct._object* %call) #2, !dbg !1952
  br label %if.end.39

if.end.39:                                        ; preds = %do.body.30, %if.else.36
  %11 = load %struct._object*, %struct._object** @PyExc_LookupError, align 8, !dbg !1954, !tbaa !1106
  %call42 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %11, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.8, i64 0, i64 0), i8* %encoding, i8* %alternate_command) #2, !dbg !1955
  br label %cleanup, !dbg !1956

cleanup:                                          ; preds = %if.end, %if.then.7, %if.end.25, %if.else.10, %do.body, %entry, %if.end.39
  %retval.0 = phi %struct._object* [ null, %if.end.39 ], [ null, %entry ], [ null, %do.body ], [ null, %if.else.10 ], [ %call, %if.end.25 ], [ %call, %if.then.7 ], [ %call, %if.end ]
  ret %struct._object* %retval.0, !dbg !1957
}

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #3

declare i32 @PyErr_ExceptionMatches(%struct._object*) #3

declare i32 @PyObject_IsTrue(%struct._object*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @_PyCodec_EncodeText(%struct._object* %object, i8* %encoding, i8* %errors) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %object, i64 0, metadata !624, metadata !1099), !dbg !1958
  tail call void @llvm.dbg.value(metadata i8* %encoding, i64 0, metadata !625, metadata !1099), !dbg !1959
  tail call void @llvm.dbg.value(metadata i8* %errors, i64 0, metadata !626, metadata !1099), !dbg !1960
  tail call void @llvm.dbg.value(metadata i8* %encoding, i64 0, metadata !876, metadata !1099) #2, !dbg !1961
  tail call void @llvm.dbg.value(metadata i8* %encoding, i64 0, metadata !881, metadata !1099) #2, !dbg !1963
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i64 0, metadata !882, metadata !1099) #2, !dbg !1965
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !883, metadata !1099) #2, !dbg !1966
  %call.i.i = tail call %struct._object* @_PyCodec_LookupTextEncoding(i8* %encoding, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0)) #2, !dbg !1967
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.i, i64 0, metadata !884, metadata !1099) #2, !dbg !1968
  %cmp.i.i = icmp eq %struct._object* %call.i.i, null, !dbg !1969
  br i1 %cmp.i.i, label %cleanup, label %if.end.i.i, !dbg !1971

if.end.i.i:                                       ; preds = %entry
  %ob_item.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 1, i32 1, !dbg !1972
  %arrayidx.i.i = bitcast %struct._typeobject** %ob_item.i.i to %struct._object**, !dbg !1972
  %0 = load %struct._object*, %struct._object** %arrayidx.i.i, align 8, !dbg !1972, !tbaa !1106
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !885, metadata !1099) #2, !dbg !1973
  %ob_refcnt.i.i = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !1974
  %1 = load i64, i64* %ob_refcnt.i.i, align 8, !dbg !1974, !tbaa !1209
  %inc.i.i = add i64 %1, 1, !dbg !1974
  store i64 %inc.i.i, i64* %ob_refcnt.i.i, align 8, !dbg !1974, !tbaa !1209
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.i, i64 0, metadata !886, metadata !1099) #2, !dbg !1975
  %ob_refcnt1.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 0, i32 0, !dbg !1977
  %2 = load i64, i64* %ob_refcnt1.i.i, align 8, !dbg !1977, !tbaa !1209
  %dec.i.i = add i64 %2, -1, !dbg !1977
  store i64 %dec.i.i, i64* %ob_refcnt1.i.i, align 8, !dbg !1977, !tbaa !1209
  %cmp2.i.i = icmp eq i64 %dec.i.i, 0, !dbg !1977
  br i1 %cmp2.i.i, label %if.else.i.i, label %_PyCodec_TextEncoder.exit, !dbg !1979

if.else.i.i:                                      ; preds = %if.end.i.i
  %ob_type.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 0, i32 1, !dbg !1980
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.i, align 8, !dbg !1980, !tbaa !1214
  %tp_dealloc.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !1980
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.i, align 8, !dbg !1980, !tbaa !1215
  tail call void %4(%struct._object* %call.i.i) #2, !dbg !1980
  br label %_PyCodec_TextEncoder.exit, !dbg !1982

_PyCodec_TextEncoder.exit:                        ; preds = %if.end.i.i, %if.else.i.i
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !627, metadata !1099), !dbg !1983
  %cmp = icmp eq %struct._object* %0, null, !dbg !1984
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1986

if.end:                                           ; preds = %_PyCodec_TextEncoder.exit
  %call1 = tail call fastcc %struct._object* @_PyCodec_EncodeInternal(%struct._object* %object, %struct._object* %0, i8* %encoding, i8* %errors), !dbg !1987
  br label %cleanup, !dbg !1988

cleanup:                                          ; preds = %entry, %_PyCodec_TextEncoder.exit, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %_PyCodec_TextEncoder.exit ], [ null, %entry ]
  ret %struct._object* %retval.0, !dbg !1989
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyCodec_DecodeText(%struct._object* %object, i8* %encoding, i8* %errors) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %object, i64 0, metadata !630, metadata !1099), !dbg !1990
  tail call void @llvm.dbg.value(metadata i8* %encoding, i64 0, metadata !631, metadata !1099), !dbg !1991
  tail call void @llvm.dbg.value(metadata i8* %errors, i64 0, metadata !632, metadata !1099), !dbg !1992
  tail call void @llvm.dbg.value(metadata i8* %encoding, i64 0, metadata !890, metadata !1099) #2, !dbg !1993
  tail call void @llvm.dbg.value(metadata i8* %encoding, i64 0, metadata !881, metadata !1099) #2, !dbg !1995
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i64 0, metadata !882, metadata !1099) #2, !dbg !1997
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !883, metadata !1099) #2, !dbg !1998
  %call.i.i = tail call %struct._object* @_PyCodec_LookupTextEncoding(i8* %encoding, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0)) #2, !dbg !1999
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.i, i64 0, metadata !884, metadata !1099) #2, !dbg !2000
  %cmp.i.i = icmp eq %struct._object* %call.i.i, null, !dbg !2001
  br i1 %cmp.i.i, label %cleanup, label %if.end.i.i, !dbg !2002

if.end.i.i:                                       ; preds = %entry
  %ob_item.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 1, i32 1, !dbg !2003
  %arrayidx.i.i = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item.i.i, i64 1, !dbg !2003
  %0 = bitcast %struct._typeobject** %arrayidx.i.i to %struct._object**, !dbg !2003
  %1 = load %struct._object*, %struct._object** %0, align 8, !dbg !2003, !tbaa !1106
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !885, metadata !1099) #2, !dbg !2004
  %ob_refcnt.i.i = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 0, !dbg !2005
  %2 = load i64, i64* %ob_refcnt.i.i, align 8, !dbg !2005, !tbaa !1209
  %inc.i.i = add i64 %2, 1, !dbg !2005
  store i64 %inc.i.i, i64* %ob_refcnt.i.i, align 8, !dbg !2005, !tbaa !1209
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.i, i64 0, metadata !886, metadata !1099) #2, !dbg !2006
  %ob_refcnt1.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 0, i32 0, !dbg !2007
  %3 = load i64, i64* %ob_refcnt1.i.i, align 8, !dbg !2007, !tbaa !1209
  %dec.i.i = add i64 %3, -1, !dbg !2007
  store i64 %dec.i.i, i64* %ob_refcnt1.i.i, align 8, !dbg !2007, !tbaa !1209
  %cmp2.i.i = icmp eq i64 %dec.i.i, 0, !dbg !2007
  br i1 %cmp2.i.i, label %if.else.i.i, label %_PyCodec_TextDecoder.exit, !dbg !2008

if.else.i.i:                                      ; preds = %if.end.i.i
  %ob_type.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 0, i32 1, !dbg !2009
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.i, align 8, !dbg !2009, !tbaa !1214
  %tp_dealloc.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 4, !dbg !2009
  %5 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.i, align 8, !dbg !2009, !tbaa !1215
  tail call void %5(%struct._object* %call.i.i) #2, !dbg !2009
  br label %_PyCodec_TextDecoder.exit, !dbg !2010

_PyCodec_TextDecoder.exit:                        ; preds = %if.end.i.i, %if.else.i.i
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !633, metadata !1099), !dbg !2011
  %cmp = icmp eq %struct._object* %1, null, !dbg !2012
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2014

if.end:                                           ; preds = %_PyCodec_TextDecoder.exit
  %call1 = tail call fastcc %struct._object* @_PyCodec_DecodeInternal(%struct._object* %object, %struct._object* %1, i8* %encoding, i8* %errors), !dbg !2015
  br label %cleanup, !dbg !2016

cleanup:                                          ; preds = %entry, %_PyCodec_TextDecoder.exit, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %_PyCodec_TextDecoder.exit ], [ null, %entry ]
  ret %struct._object* %retval.0, !dbg !2017
}

; Function Attrs: nounwind uwtable
define i32 @PyCodec_RegisterError(i8* %name, %struct._object* %error) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !638, metadata !1099), !dbg !2018
  tail call void @llvm.dbg.value(metadata %struct._object* %error, i64 0, metadata !639, metadata !1099), !dbg !2019
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !641, metadata !1099), !dbg !2020
  tail call void @llvm.dbg.value(metadata !1102, i64 0, metadata !644, metadata !1099), !dbg !2020
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !645, metadata !1099), !dbg !2020
  %0 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !2021, !tbaa !1106
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !643, metadata !1099), !dbg !2020
  %interp4 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !2022
  %1 = bitcast i8* %interp4 to %struct._is**, !dbg !2022
  %2 = load %struct._is*, %struct._is** %1, align 8, !dbg !2022, !tbaa !1111
  tail call void @llvm.dbg.value(metadata %struct._is* %2, i64 0, metadata !640, metadata !1099), !dbg !2023
  %codec_search_path = getelementptr inbounds %struct._is, %struct._is* %2, i64 0, i32 7, !dbg !2024
  %3 = load %struct._object*, %struct._object** %codec_search_path, align 8, !dbg !2024, !tbaa !1118
  %cmp = icmp eq %struct._object* %3, null, !dbg !2025
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2026

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @_PyCodecRegistry_Init(), !dbg !2027
  %tobool = icmp eq i32 %call, 0, !dbg !2027
  br i1 %tobool, label %if.end, label %cleanup, !dbg !2028

if.end:                                           ; preds = %land.lhs.true, %entry
  %call5 = tail call i32 @PyCallable_Check(%struct._object* %error) #2, !dbg !2029
  %tobool6 = icmp eq i32 %call5, 0, !dbg !2029
  br i1 %tobool6, label %if.then.7, label %if.end.8, !dbg !2030

if.then.7:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2031, !tbaa !1106
  tail call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0)) #2, !dbg !2032
  br label %cleanup, !dbg !2033

if.end.8:                                         ; preds = %if.end
  %codec_error_registry = getelementptr inbounds %struct._is, %struct._is* %2, i64 0, i32 9, !dbg !2034
  %5 = load %struct._object*, %struct._object** %codec_error_registry, align 8, !dbg !2034, !tbaa !1161
  %call9 = tail call i32 @PyDict_SetItemString(%struct._object* %5, i8* %name, %struct._object* %error) #2, !dbg !2035
  br label %cleanup, !dbg !2036

cleanup:                                          ; preds = %land.lhs.true, %if.end.8, %if.then.7
  %retval.0 = phi i32 [ %call9, %if.end.8 ], [ -1, %if.then.7 ], [ -1, %land.lhs.true ]
  ret i32 %retval.0, !dbg !2037
}

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_LookupError(i8* %name) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !648, metadata !1099), !dbg !2038
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !649, metadata !1099), !dbg !2039
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !651, metadata !1099), !dbg !2040
  tail call void @llvm.dbg.value(metadata !1102, i64 0, metadata !654, metadata !1099), !dbg !2040
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !655, metadata !1099), !dbg !2040
  %0 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !2041, !tbaa !1106
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !653, metadata !1099), !dbg !2040
  %interp4 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !2044
  %1 = bitcast i8* %interp4 to %struct._is**, !dbg !2044
  %2 = load %struct._is*, %struct._is** %1, align 8, !dbg !2044, !tbaa !1111
  tail call void @llvm.dbg.value(metadata %struct._is* %2, i64 0, metadata !650, metadata !1099), !dbg !2045
  %codec_search_path = getelementptr inbounds %struct._is, %struct._is* %2, i64 0, i32 7, !dbg !2046
  %3 = load %struct._object*, %struct._object** %codec_search_path, align 8, !dbg !2046, !tbaa !1118
  %cmp = icmp eq %struct._object* %3, null, !dbg !2048
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2049

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @_PyCodecRegistry_Init(), !dbg !2050
  %tobool = icmp eq i32 %call, 0, !dbg !2050
  br i1 %tobool, label %if.end, label %cleanup, !dbg !2052

if.end:                                           ; preds = %land.lhs.true, %entry
  %cmp5 = icmp eq i8* %name, null, !dbg !2053
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i64 0, metadata !648, metadata !1099), !dbg !2038
  %.name = select i1 %cmp5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %name, !dbg !2055
  %codec_error_registry = getelementptr inbounds %struct._is, %struct._is* %2, i64 0, i32 9, !dbg !2056
  %4 = load %struct._object*, %struct._object** %codec_error_registry, align 8, !dbg !2056, !tbaa !1161
  %call8 = tail call %struct._object* @PyDict_GetItemString(%struct._object* %4, i8* %.name) #2, !dbg !2057
  tail call void @llvm.dbg.value(metadata %struct._object* %call8, i64 0, metadata !649, metadata !1099), !dbg !2039
  %tobool9 = icmp eq %struct._object* %call8, null, !dbg !2058
  br i1 %tobool9, label %if.then.10, label %if.else, !dbg !2060

if.then.10:                                       ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_LookupError, align 8, !dbg !2061, !tbaa !1106
  %call11 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %5, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i8* %.name) #2, !dbg !2062
  br label %cleanup, !dbg !2062

if.else:                                          ; preds = %if.end
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call8, i64 0, i32 0, !dbg !2063
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !2063, !tbaa !1209
  %inc = add i64 %6, 1, !dbg !2063
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2063, !tbaa !1209
  br label %cleanup

cleanup:                                          ; preds = %if.then.10, %if.else, %land.lhs.true
  %retval.0 = phi %struct._object* [ null, %land.lhs.true ], [ %call8, %if.else ], [ null, %if.then.10 ]
  ret %struct._object* %retval.0, !dbg !2064
}

declare %struct._object* @PyDict_GetItemString(%struct._object*, i8*) #3

; Function Attrs: nounwind uwtable
define noalias %struct._object* @PyCodec_StrictErrors(%struct._object* %exc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %exc, i64 0, metadata !658, metadata !1099), !dbg !2065
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %exc, i64 0, i32 1, !dbg !2066
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2066, !tbaa !1214
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 19, !dbg !2066
  %1 = load i64, i64* %tp_flags, align 8, !dbg !2066, !tbaa !1370
  %and = and i64 %1, 1073741824, !dbg !2066
  %cmp = icmp eq i64 %and, 0, !dbg !2066
  br i1 %cmp, label %if.else, label %if.then, !dbg !2068

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 0, i32 0, !dbg !2069
  tail call void @PyErr_SetObject(%struct._object* %2, %struct._object* %exc) #2, !dbg !2070
  br label %if.end, !dbg !2070

if.else:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2071, !tbaa !1106
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0)) #2, !dbg !2072
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret %struct._object* null, !dbg !2073
}

declare void @PyErr_SetObject(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_IgnoreErrors(%struct._object* %exc) #0 {
entry:
  %end = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %exc, i64 0, metadata !661, metadata !1099), !dbg !2074
  %0 = bitcast i64* %end to i8*, !dbg !2075
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2075
  %1 = load %struct._object*, %struct._object** @PyExc_UnicodeEncodeError, align 8, !dbg !2076, !tbaa !1106
  %call = tail call i32 @PyObject_IsInstance(%struct._object* %exc, %struct._object* %1) #2, !dbg !2078
  %tobool = icmp eq i32 %call, 0, !dbg !2078
  br i1 %tobool, label %if.else, label %if.then, !dbg !2079

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata i64* %end, i64 0, metadata !662, metadata !1099), !dbg !2080
  %call1 = call i32 @PyUnicodeEncodeError_GetEnd(%struct._object* %exc, i64* nonnull %end) #2, !dbg !2081
  %tobool2 = icmp eq i32 %call1, 0, !dbg !2081
  br i1 %tobool2, label %if.end.22, label %cleanup, !dbg !2084

if.else:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_UnicodeDecodeError, align 8, !dbg !2085, !tbaa !1106
  %call4 = tail call i32 @PyObject_IsInstance(%struct._object* %exc, %struct._object* %2) #2, !dbg !2087
  %tobool5 = icmp eq i32 %call4, 0, !dbg !2087
  br i1 %tobool5, label %if.else.11, label %if.then.6, !dbg !2088

if.then.6:                                        ; preds = %if.else
  tail call void @llvm.dbg.value(metadata i64* %end, i64 0, metadata !662, metadata !1099), !dbg !2080
  %call7 = call i32 @PyUnicodeDecodeError_GetEnd(%struct._object* %exc, i64* nonnull %end) #2, !dbg !2089
  %tobool8 = icmp eq i32 %call7, 0, !dbg !2089
  br i1 %tobool8, label %if.end.22, label %cleanup, !dbg !2092

if.else.11:                                       ; preds = %if.else
  %3 = load %struct._object*, %struct._object** @PyExc_UnicodeTranslateError, align 8, !dbg !2093, !tbaa !1106
  %call12 = tail call i32 @PyObject_IsInstance(%struct._object* %exc, %struct._object* %3) #2, !dbg !2095
  %tobool13 = icmp eq i32 %call12, 0, !dbg !2095
  br i1 %tobool13, label %if.else.19, label %if.then.14, !dbg !2096

if.then.14:                                       ; preds = %if.else.11
  tail call void @llvm.dbg.value(metadata i64* %end, i64 0, metadata !662, metadata !1099), !dbg !2080
  %call15 = call i32 @PyUnicodeTranslateError_GetEnd(%struct._object* %exc, i64* nonnull %end) #2, !dbg !2097
  %tobool16 = icmp eq i32 %call15, 0, !dbg !2097
  br i1 %tobool16, label %if.end.22, label %cleanup, !dbg !2100

if.else.19:                                       ; preds = %if.else.11
  tail call void @llvm.dbg.value(metadata %struct._object* %exc, i64 0, metadata !893, metadata !1099) #2, !dbg !2101
  %call.i = tail call %struct._object* @_PyObject_GetAttrId(%struct._object* %exc, %struct._Py_Identifier* nonnull @wrong_exception_type.PyId___class__) #2, !dbg !2104
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !894, metadata !1099) #2, !dbg !2105
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !2106
  br i1 %cmp.i, label %cleanup, label %if.then.i, !dbg !2107

if.then.i:                                        ; preds = %if.else.19
  %call1.i = tail call %struct._object* @_PyObject_GetAttrId(%struct._object* %call.i, %struct._Py_Identifier* nonnull @wrong_exception_type.PyId___name__) #2, !dbg !2108
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i, i64 0, metadata !895, metadata !1099) #2, !dbg !2109
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !898, metadata !1099) #2, !dbg !2110
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !2112
  %4 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2112, !tbaa !1209
  %dec.i = add i64 %4, -1, !dbg !2112
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2112, !tbaa !1209
  %cmp2.i = icmp eq i64 %dec.i, 0, !dbg !2112
  br i1 %cmp2.i, label %if.else.i, label %if.end.i, !dbg !2114

if.else.i:                                        ; preds = %if.then.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !2115
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2115, !tbaa !1214
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !2115
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2115, !tbaa !1215
  tail call void %6(%struct._object* %call.i) #2, !dbg !2115
  br label %if.end.i, !dbg !2117

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %cmp4.i = icmp eq %struct._object* %call1.i, null, !dbg !2118
  br i1 %cmp4.i, label %cleanup, label %if.then.5.i, !dbg !2119

if.then.5.i:                                      ; preds = %if.end.i
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2120, !tbaa !1106
  %call6.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %7, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i64 0, i64 0), %struct._object* %call1.i) #2, !dbg !2121
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i, i64 0, metadata !900, metadata !1099) #2, !dbg !2122
  %ob_refcnt9.i = getelementptr inbounds %struct._object, %struct._object* %call1.i, i64 0, i32 0, !dbg !2124
  %8 = load i64, i64* %ob_refcnt9.i, align 8, !dbg !2124, !tbaa !1209
  %dec10.i = add i64 %8, -1, !dbg !2124
  store i64 %dec10.i, i64* %ob_refcnt9.i, align 8, !dbg !2124, !tbaa !1209
  %cmp11.i = icmp eq i64 %dec10.i, 0, !dbg !2124
  br i1 %cmp11.i, label %if.else.13.i, label %cleanup, !dbg !2126

if.else.13.i:                                     ; preds = %if.then.5.i
  %ob_type14.i = getelementptr inbounds %struct._object, %struct._object* %call1.i, i64 0, i32 1, !dbg !2127
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type14.i, align 8, !dbg !2127, !tbaa !1214
  %tp_dealloc15.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 4, !dbg !2127
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc15.i, align 8, !dbg !2127, !tbaa !1215
  tail call void %10(%struct._object* %call1.i) #2, !dbg !2127
  br label %cleanup, !dbg !2117

if.end.22:                                        ; preds = %if.then, %if.then.6, %if.then.14
  %call23 = call %struct._object* @PyUnicode_New(i64 0, i32 0) #2, !dbg !2129
  call void @llvm.dbg.value(metadata i64* %end, i64 0, metadata !662, metadata !1099), !dbg !2080
  %11 = load i64, i64* %end, align 8, !dbg !2130, !tbaa !2131
  %call24 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), %struct._object* %call23, i64 %11) #2, !dbg !2132
  br label %cleanup, !dbg !2133

cleanup:                                          ; preds = %if.else.13.i, %if.then.5.i, %if.end.i, %if.else.19, %if.then.14, %if.then.6, %if.then, %if.end.22
  %retval.0 = phi %struct._object* [ %call24, %if.end.22 ], [ null, %if.then ], [ null, %if.then.6 ], [ null, %if.then.14 ], [ null, %if.else.19 ], [ null, %if.end.i ], [ null, %if.then.5.i ], [ null, %if.else.13.i ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !2134
  ret %struct._object* %retval.0, !dbg !2134
}

declare i32 @PyObject_IsInstance(%struct._object*, %struct._object*) #3

declare i32 @PyUnicodeEncodeError_GetEnd(%struct._object*, i64*) #3

declare i32 @PyUnicodeDecodeError_GetEnd(%struct._object*, i64*) #3

declare i32 @PyUnicodeTranslateError_GetEnd(%struct._object*, i64*) #3

declare %struct._object* @Py_BuildValue(i8*, ...) #3

declare %struct._object* @PyUnicode_New(i64, i32) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_ReplaceErrors(%struct._object* %exc) #0 {
entry:
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %exc, i64 0, metadata !665, metadata !1099), !dbg !2135
  %0 = bitcast i64* %start to i8*, !dbg !2136
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2136
  %1 = bitcast i64* %end to i8*, !dbg !2136
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2136
  %2 = load %struct._object*, %struct._object** @PyExc_UnicodeEncodeError, align 8, !dbg !2137, !tbaa !1106
  %call = tail call i32 @PyObject_IsInstance(%struct._object* %exc, %struct._object* %2) #2, !dbg !2138
  %tobool = icmp eq i32 %call, 0, !dbg !2138
  br i1 %tobool, label %if.else, label %if.then, !dbg !2139

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata i64* %start, i64 0, metadata !666, metadata !1099), !dbg !2140
  %call1 = call i32 @PyUnicodeEncodeError_GetStart(%struct._object* %exc, i64* nonnull %start) #2, !dbg !2141
  %tobool2 = icmp eq i32 %call1, 0, !dbg !2141
  br i1 %tobool2, label %if.end, label %cleanup.109, !dbg !2143

if.end:                                           ; preds = %if.then
  call void @llvm.dbg.value(metadata i64* %end, i64 0, metadata !667, metadata !1099), !dbg !2144
  %call4 = call i32 @PyUnicodeEncodeError_GetEnd(%struct._object* %exc, i64* nonnull %end) #2, !dbg !2145
  %tobool5 = icmp eq i32 %call4, 0, !dbg !2145
  br i1 %tobool5, label %if.end.7, label %cleanup.109, !dbg !2147

if.end.7:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i64* %end, i64 0, metadata !667, metadata !1099), !dbg !2144
  %3 = load i64, i64* %end, align 8, !dbg !2148, !tbaa !2131
  call void @llvm.dbg.value(metadata i64* %start, i64 0, metadata !666, metadata !1099), !dbg !2140
  %4 = load i64, i64* %start, align 8, !dbg !2149, !tbaa !2131
  %sub = sub i64 %3, %4, !dbg !2150
  call void @llvm.dbg.value(metadata i64 %sub, i64 0, metadata !669, metadata !1099), !dbg !2151
  %call8 = call %struct._object* @PyUnicode_New(i64 %sub, i32 63) #2, !dbg !2152
  call void @llvm.dbg.value(metadata %struct._object* %call8, i64 0, metadata !670, metadata !1099), !dbg !2153
  %cmp = icmp eq %struct._object* %call8, null, !dbg !2154
  br i1 %cmp, label %cleanup.109, label %if.end.10, !dbg !2156

if.end.10:                                        ; preds = %if.end.7
  %state = getelementptr inbounds %struct._object, %struct._object* %call8, i64 2, !dbg !2157
  %5 = bitcast %struct._object* %state to i32*, !dbg !2157
  %bf.load = load i32, i32* %5, align 4, !dbg !2157
  %bf.lshr = lshr i32 %bf.load, 2, !dbg !2157
  %bf.clear = and i32 %bf.lshr, 7, !dbg !2157
  call void @llvm.dbg.value(metadata i32 %bf.clear, i64 0, metadata !673, metadata !1099), !dbg !2158
  %bf.clear14 = and i32 %bf.load, 32, !dbg !2159
  %tobool15 = icmp eq i32 %bf.clear14, 0, !dbg !2159
  br i1 %tobool15, label %cond.false.23, label %cond.true, !dbg !2159

cond.true:                                        ; preds = %if.end.10
  %bf.clear19 = and i32 %bf.load, 64, !dbg !2160
  %tobool20 = icmp ne i32 %bf.clear19, 0, !dbg !2160
  %add.ptr = getelementptr %struct._object, %struct._object* %call8, i64 3, !dbg !2162
  %6 = bitcast %struct._object* %add.ptr to i8*, !dbg !2162
  %add.ptr22 = getelementptr %struct._object, %struct._object* %call8, i64 4, i32 1, !dbg !2164
  %7 = bitcast %struct._typeobject** %add.ptr22 to i8*, !dbg !2164
  %cond = select i1 %tobool20, i8* %6, i8* %7, !dbg !2160
  br label %cond.end.25, !dbg !2160

cond.false.23:                                    ; preds = %if.end.10
  %data24 = getelementptr inbounds %struct._object, %struct._object* %call8, i64 4, i32 1, !dbg !2166
  %any = bitcast %struct._typeobject** %data24 to i8**, !dbg !2166
  %8 = load i8*, i8** %any, align 8, !dbg !2166, !tbaa !1106
  br label %cond.end.25, !dbg !2166

cond.end.25:                                      ; preds = %cond.true, %cond.false.23
  %cond26 = phi i8* [ %8, %cond.false.23 ], [ %cond, %cond.true ], !dbg !2159
  call void @llvm.dbg.value(metadata i8* %cond26, i64 0, metadata !674, metadata !1099), !dbg !2168
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !668, metadata !1099), !dbg !2169
  %cmp27.168 = icmp sgt i64 %sub, 0, !dbg !2170
  br i1 %cmp27.168, label %do.body.lr.ph, label %for.end, !dbg !2173

do.body.lr.ph:                                    ; preds = %cond.end.25
  %9 = bitcast i8* %cond26 to i32*, !dbg !2174
  %10 = bitcast i8* %cond26 to i16*, !dbg !2179
  switch i32 %bf.clear, label %for.inc.preheader [
    i32 1, label %for.inc.us.preheader
    i32 2, label %for.inc.us178.preheader
  ]

for.inc.us178.preheader:                          ; preds = %do.body.lr.ph
  %11 = add i64 %3, -1, !dbg !2179
  %12 = sub i64 %11, %4, !dbg !2179
  %backedge.overflow = icmp eq i64 %12, -1
  %13 = sub i64 %3, %4, !dbg !2179
  br i1 %backedge.overflow, label %for.inc.us178.preheader323, label %overflow.checked, !dbg !2179

for.inc.us178.preheader323:                       ; preds = %middle.block, %for.inc.us178.preheader
  %i.0169.us.172.ph = phi i64 [ 0, %for.inc.us178.preheader ], [ %resume.val, %middle.block ]
  br label %for.inc.us178, !dbg !2179

overflow.checked:                                 ; preds = %for.inc.us178.preheader
  %n.vec = and i64 %13, -16, !dbg !2182
  %cmp.zero = icmp eq i64 %n.vec, 0, !dbg !2182
  br i1 %cmp.zero, label %middle.block, label %vector.body.preheader, !dbg !2179

vector.body.preheader:                            ; preds = %overflow.checked
  %14 = sub i64 %3, %4, !dbg !2179
  %15 = add i64 %14, -16, !dbg !2179
  %16 = lshr i64 %15, 4, !dbg !2179
  %17 = add nuw nsw i64 %16, 1, !dbg !2179
  %xtraiter337 = and i64 %17, 3, !dbg !2179
  %lcmp.mod338 = icmp eq i64 %xtraiter337, 0, !dbg !2179
  br i1 %lcmp.mod338, label %vector.body.preheader.split, label %vector.body.prol.preheader, !dbg !2179

vector.body.prol.preheader:                       ; preds = %vector.body.preheader
  br label %vector.body.prol, !dbg !2179

vector.body.prol:                                 ; preds = %vector.body.prol.preheader, %vector.body.prol
  %index.prol = phi i64 [ %index.next.prol, %vector.body.prol ], [ 0, %vector.body.prol.preheader ], !dbg !2182
  %prol.iter339 = phi i64 [ %prol.iter339.sub, %vector.body.prol ], [ %xtraiter337, %vector.body.prol.preheader ]
  %18 = getelementptr i16, i16* %10, i64 %index.prol, !dbg !2179
  %19 = bitcast i16* %18 to <8 x i16>*, !dbg !2179
  store <8 x i16> <i16 63, i16 63, i16 63, i16 63, i16 63, i16 63, i16 63, i16 63>, <8 x i16>* %19, align 2, !dbg !2179, !tbaa !2183
  %20 = getelementptr i16, i16* %18, i64 8, !dbg !2179
  %21 = bitcast i16* %20 to <8 x i16>*, !dbg !2179
  store <8 x i16> <i16 63, i16 63, i16 63, i16 63, i16 63, i16 63, i16 63, i16 63>, <8 x i16>* %21, align 2, !dbg !2179, !tbaa !2183
  %index.next.prol = add i64 %index.prol, 16, !dbg !2182
  %prol.iter339.sub = add i64 %prol.iter339, -1, !dbg !2182
  %prol.iter339.cmp = icmp eq i64 %prol.iter339.sub, 0, !dbg !2182
  br i1 %prol.iter339.cmp, label %vector.body.preheader.split.loopexit, label %vector.body.prol, !dbg !2182, !llvm.loop !2185

vector.body.preheader.split.loopexit:             ; preds = %vector.body.prol
  %index.next.prol.lcssa = phi i64 [ %index.next.prol, %vector.body.prol ]
  br label %vector.body.preheader.split, !dbg !2179

vector.body.preheader.split:                      ; preds = %vector.body.preheader.split.loopexit, %vector.body.preheader
  %index.unr = phi i64 [ 0, %vector.body.preheader ], [ %index.next.prol.lcssa, %vector.body.preheader.split.loopexit ]
  %22 = icmp ult i64 %15, 48, !dbg !2179
  br i1 %22, label %middle.block.loopexit, label %vector.body.preheader.split.split, !dbg !2179

vector.body.preheader.split.split:                ; preds = %vector.body.preheader.split
  br label %vector.body, !dbg !2179

vector.body:                                      ; preds = %vector.body, %vector.body.preheader.split.split
  %index = phi i64 [ %index.unr, %vector.body.preheader.split.split ], [ %index.next.3, %vector.body ], !dbg !2182
  %23 = getelementptr i16, i16* %10, i64 %index, !dbg !2179
  %24 = bitcast i16* %23 to <8 x i16>*, !dbg !2179
  store <8 x i16> <i16 63, i16 63, i16 63, i16 63, i16 63, i16 63, i16 63, i16 63>, <8 x i16>* %24, align 2, !dbg !2179, !tbaa !2183
  %25 = getelementptr i16, i16* %23, i64 8, !dbg !2179
  %26 = bitcast i16* %25 to <8 x i16>*, !dbg !2179
  store <8 x i16> <i16 63, i16 63, i16 63, i16 63, i16 63, i16 63, i16 63, i16 63>, <8 x i16>* %26, align 2, !dbg !2179, !tbaa !2183
  %index.next = add i64 %index, 16, !dbg !2182
  %27 = getelementptr i16, i16* %10, i64 %index.next, !dbg !2179
  %28 = bitcast i16* %27 to <8 x i16>*, !dbg !2179
  store <8 x i16> <i16 63, i16 63, i16 63, i16 63, i16 63, i16 63, i16 63, i16 63>, <8 x i16>* %28, align 2, !dbg !2179, !tbaa !2183
  %29 = getelementptr i16, i16* %27, i64 8, !dbg !2179
  %30 = bitcast i16* %29 to <8 x i16>*, !dbg !2179
  store <8 x i16> <i16 63, i16 63, i16 63, i16 63, i16 63, i16 63, i16 63, i16 63>, <8 x i16>* %30, align 2, !dbg !2179, !tbaa !2183
  %index.next.1 = add i64 %index, 32, !dbg !2182
  %31 = getelementptr i16, i16* %10, i64 %index.next.1, !dbg !2179
  %32 = bitcast i16* %31 to <8 x i16>*, !dbg !2179
  store <8 x i16> <i16 63, i16 63, i16 63, i16 63, i16 63, i16 63, i16 63, i16 63>, <8 x i16>* %32, align 2, !dbg !2179, !tbaa !2183
  %33 = getelementptr i16, i16* %31, i64 8, !dbg !2179
  %34 = bitcast i16* %33 to <8 x i16>*, !dbg !2179
  store <8 x i16> <i16 63, i16 63, i16 63, i16 63, i16 63, i16 63, i16 63, i16 63>, <8 x i16>* %34, align 2, !dbg !2179, !tbaa !2183
  %index.next.2 = add i64 %index, 48, !dbg !2182
  %35 = getelementptr i16, i16* %10, i64 %index.next.2, !dbg !2179
  %36 = bitcast i16* %35 to <8 x i16>*, !dbg !2179
  store <8 x i16> <i16 63, i16 63, i16 63, i16 63, i16 63, i16 63, i16 63, i16 63>, <8 x i16>* %36, align 2, !dbg !2179, !tbaa !2183
  %37 = getelementptr i16, i16* %35, i64 8, !dbg !2179
  %38 = bitcast i16* %37 to <8 x i16>*, !dbg !2179
  store <8 x i16> <i16 63, i16 63, i16 63, i16 63, i16 63, i16 63, i16 63, i16 63>, <8 x i16>* %38, align 2, !dbg !2179, !tbaa !2183
  %index.next.3 = add i64 %index, 64, !dbg !2182
  %39 = icmp eq i64 %index.next.3, %n.vec, !dbg !2182
  br i1 %39, label %middle.block.loopexit.unr-lcssa, label %vector.body, !dbg !2182, !llvm.loop !2187

middle.block.loopexit.unr-lcssa:                  ; preds = %vector.body
  br label %middle.block.loopexit

middle.block.loopexit:                            ; preds = %vector.body.preheader.split, %middle.block.loopexit.unr-lcssa
  br label %middle.block

middle.block:                                     ; preds = %middle.block.loopexit, %overflow.checked
  %resume.val = phi i64 [ 0, %overflow.checked ], [ %n.vec, %middle.block.loopexit ]
  %cmp.n = icmp eq i64 %13, %resume.val
  br i1 %cmp.n, label %for.end, label %for.inc.us178.preheader323, !dbg !2179

for.inc.us.preheader:                             ; preds = %do.body.lr.ph
  %40 = add i64 %3, -1, !dbg !2190
  %41 = sub i64 %40, %4, !dbg !2190
  %backedge.overflow195 = icmp eq i64 %41, -1
  %42 = sub i64 %3, %4, !dbg !2190
  br i1 %backedge.overflow195, label %for.inc.us.preheader321, label %overflow.checked200, !dbg !2190

for.inc.us.preheader321:                          ; preds = %middle.block197, %for.inc.us.preheader
  %i.0169.us.ph = phi i64 [ 0, %for.inc.us.preheader ], [ %resume.val207, %middle.block197 ]
  br label %for.inc.us, !dbg !2190

overflow.checked200:                              ; preds = %for.inc.us.preheader
  %n.vec203 = and i64 %42, -32, !dbg !2182
  %cmp.zero205 = icmp eq i64 %n.vec203, 0, !dbg !2182
  br i1 %cmp.zero205, label %middle.block197, label %vector.body196.preheader, !dbg !2190

vector.body196.preheader:                         ; preds = %overflow.checked200
  %43 = sub i64 %3, %4, !dbg !2190
  %44 = add i64 %43, -32, !dbg !2190
  %45 = lshr i64 %44, 5, !dbg !2190
  %46 = add nuw nsw i64 %45, 1, !dbg !2190
  %xtraiter334 = and i64 %46, 3, !dbg !2190
  %lcmp.mod335 = icmp eq i64 %xtraiter334, 0, !dbg !2190
  br i1 %lcmp.mod335, label %vector.body196.preheader.split, label %vector.body196.prol.preheader, !dbg !2190

vector.body196.prol.preheader:                    ; preds = %vector.body196.preheader
  br label %vector.body196.prol, !dbg !2190

vector.body196.prol:                              ; preds = %vector.body196.prol.preheader, %vector.body196.prol
  %index199.prol = phi i64 [ %index.next212.prol, %vector.body196.prol ], [ 0, %vector.body196.prol.preheader ], !dbg !2182
  %prol.iter336 = phi i64 [ %prol.iter336.sub, %vector.body196.prol ], [ %xtraiter334, %vector.body196.prol.preheader ]
  %47 = getelementptr i8, i8* %cond26, i64 %index199.prol, !dbg !2190
  %48 = bitcast i8* %47 to <16 x i8>*, !dbg !2190
  store <16 x i8> <i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63>, <16 x i8>* %48, align 1, !dbg !2190, !tbaa !1292
  %49 = getelementptr i8, i8* %47, i64 16, !dbg !2190
  %50 = bitcast i8* %49 to <16 x i8>*, !dbg !2190
  store <16 x i8> <i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63>, <16 x i8>* %50, align 1, !dbg !2190, !tbaa !1292
  %index.next212.prol = add i64 %index199.prol, 32, !dbg !2182
  %prol.iter336.sub = add i64 %prol.iter336, -1, !dbg !2182
  %prol.iter336.cmp = icmp eq i64 %prol.iter336.sub, 0, !dbg !2182
  br i1 %prol.iter336.cmp, label %vector.body196.preheader.split.loopexit, label %vector.body196.prol, !dbg !2182, !llvm.loop !2193

vector.body196.preheader.split.loopexit:          ; preds = %vector.body196.prol
  %index.next212.prol.lcssa = phi i64 [ %index.next212.prol, %vector.body196.prol ]
  br label %vector.body196.preheader.split, !dbg !2190

vector.body196.preheader.split:                   ; preds = %vector.body196.preheader.split.loopexit, %vector.body196.preheader
  %index199.unr = phi i64 [ 0, %vector.body196.preheader ], [ %index.next212.prol.lcssa, %vector.body196.preheader.split.loopexit ]
  %51 = icmp ult i64 %44, 96, !dbg !2190
  br i1 %51, label %middle.block197.loopexit, label %vector.body196.preheader.split.split, !dbg !2190

vector.body196.preheader.split.split:             ; preds = %vector.body196.preheader.split
  br label %vector.body196, !dbg !2190

vector.body196:                                   ; preds = %vector.body196, %vector.body196.preheader.split.split
  %index199 = phi i64 [ %index199.unr, %vector.body196.preheader.split.split ], [ %index.next212.3, %vector.body196 ], !dbg !2182
  %52 = getelementptr i8, i8* %cond26, i64 %index199, !dbg !2190
  %53 = bitcast i8* %52 to <16 x i8>*, !dbg !2190
  store <16 x i8> <i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63>, <16 x i8>* %53, align 1, !dbg !2190, !tbaa !1292
  %54 = getelementptr i8, i8* %52, i64 16, !dbg !2190
  %55 = bitcast i8* %54 to <16 x i8>*, !dbg !2190
  store <16 x i8> <i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63>, <16 x i8>* %55, align 1, !dbg !2190, !tbaa !1292
  %index.next212 = add i64 %index199, 32, !dbg !2182
  %56 = getelementptr i8, i8* %cond26, i64 %index.next212, !dbg !2190
  %57 = bitcast i8* %56 to <16 x i8>*, !dbg !2190
  store <16 x i8> <i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63>, <16 x i8>* %57, align 1, !dbg !2190, !tbaa !1292
  %58 = getelementptr i8, i8* %56, i64 16, !dbg !2190
  %59 = bitcast i8* %58 to <16 x i8>*, !dbg !2190
  store <16 x i8> <i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63>, <16 x i8>* %59, align 1, !dbg !2190, !tbaa !1292
  %index.next212.1 = add i64 %index199, 64, !dbg !2182
  %60 = getelementptr i8, i8* %cond26, i64 %index.next212.1, !dbg !2190
  %61 = bitcast i8* %60 to <16 x i8>*, !dbg !2190
  store <16 x i8> <i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63>, <16 x i8>* %61, align 1, !dbg !2190, !tbaa !1292
  %62 = getelementptr i8, i8* %60, i64 16, !dbg !2190
  %63 = bitcast i8* %62 to <16 x i8>*, !dbg !2190
  store <16 x i8> <i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63>, <16 x i8>* %63, align 1, !dbg !2190, !tbaa !1292
  %index.next212.2 = add i64 %index199, 96, !dbg !2182
  %64 = getelementptr i8, i8* %cond26, i64 %index.next212.2, !dbg !2190
  %65 = bitcast i8* %64 to <16 x i8>*, !dbg !2190
  store <16 x i8> <i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63>, <16 x i8>* %65, align 1, !dbg !2190, !tbaa !1292
  %66 = getelementptr i8, i8* %64, i64 16, !dbg !2190
  %67 = bitcast i8* %66 to <16 x i8>*, !dbg !2190
  store <16 x i8> <i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63>, <16 x i8>* %67, align 1, !dbg !2190, !tbaa !1292
  %index.next212.3 = add i64 %index199, 128, !dbg !2182
  %68 = icmp eq i64 %index.next212.3, %n.vec203, !dbg !2182
  br i1 %68, label %middle.block197.loopexit.unr-lcssa, label %vector.body196, !dbg !2182, !llvm.loop !2194

middle.block197.loopexit.unr-lcssa:               ; preds = %vector.body196
  br label %middle.block197.loopexit

middle.block197.loopexit:                         ; preds = %vector.body196.preheader.split, %middle.block197.loopexit.unr-lcssa
  br label %middle.block197

middle.block197:                                  ; preds = %middle.block197.loopexit, %overflow.checked200
  %resume.val207 = phi i64 [ 0, %overflow.checked200 ], [ %n.vec203, %middle.block197.loopexit ]
  %cmp.n211 = icmp eq i64 %42, %resume.val207
  br i1 %cmp.n211, label %for.end, label %for.inc.us.preheader321, !dbg !2190

for.inc.preheader:                                ; preds = %do.body.lr.ph
  %69 = add i64 %3, -1, !dbg !2174
  %70 = sub i64 %69, %4, !dbg !2174
  %backedge.overflow219 = icmp eq i64 %70, -1
  %71 = sub i64 %3, %4, !dbg !2174
  br i1 %backedge.overflow219, label %for.inc.preheader320, label %overflow.checked224, !dbg !2174

for.inc.preheader320:                             ; preds = %middle.block221, %for.inc.preheader
  %i.0169.ph = phi i64 [ 0, %for.inc.preheader ], [ %resume.val231, %middle.block221 ]
  br label %for.inc, !dbg !2174

overflow.checked224:                              ; preds = %for.inc.preheader
  %n.vec227 = and i64 %71, -8, !dbg !2182
  %cmp.zero229 = icmp eq i64 %n.vec227, 0, !dbg !2182
  br i1 %cmp.zero229, label %middle.block221, label %vector.body220.preheader, !dbg !2174

vector.body220.preheader:                         ; preds = %overflow.checked224
  %72 = sub i64 %3, %4, !dbg !2174
  %73 = add i64 %72, -8, !dbg !2174
  %74 = lshr i64 %73, 3, !dbg !2174
  %75 = add nuw nsw i64 %74, 1, !dbg !2174
  %xtraiter331 = and i64 %75, 3, !dbg !2174
  %lcmp.mod332 = icmp eq i64 %xtraiter331, 0, !dbg !2174
  br i1 %lcmp.mod332, label %vector.body220.preheader.split, label %vector.body220.prol.preheader, !dbg !2174

vector.body220.prol.preheader:                    ; preds = %vector.body220.preheader
  br label %vector.body220.prol, !dbg !2174

vector.body220.prol:                              ; preds = %vector.body220.prol.preheader, %vector.body220.prol
  %index223.prol = phi i64 [ %index.next236.prol, %vector.body220.prol ], [ 0, %vector.body220.prol.preheader ], !dbg !2182
  %prol.iter333 = phi i64 [ %prol.iter333.sub, %vector.body220.prol ], [ %xtraiter331, %vector.body220.prol.preheader ]
  %76 = getelementptr i32, i32* %9, i64 %index223.prol, !dbg !2174
  %77 = bitcast i32* %76 to <4 x i32>*, !dbg !2174
  store <4 x i32> <i32 63, i32 63, i32 63, i32 63>, <4 x i32>* %77, align 4, !dbg !2174, !tbaa !2195
  %78 = getelementptr i32, i32* %76, i64 4, !dbg !2174
  %79 = bitcast i32* %78 to <4 x i32>*, !dbg !2174
  store <4 x i32> <i32 63, i32 63, i32 63, i32 63>, <4 x i32>* %79, align 4, !dbg !2174, !tbaa !2195
  %index.next236.prol = add i64 %index223.prol, 8, !dbg !2182
  %prol.iter333.sub = add i64 %prol.iter333, -1, !dbg !2182
  %prol.iter333.cmp = icmp eq i64 %prol.iter333.sub, 0, !dbg !2182
  br i1 %prol.iter333.cmp, label %vector.body220.preheader.split.loopexit, label %vector.body220.prol, !dbg !2182, !llvm.loop !2196

vector.body220.preheader.split.loopexit:          ; preds = %vector.body220.prol
  %index.next236.prol.lcssa = phi i64 [ %index.next236.prol, %vector.body220.prol ]
  br label %vector.body220.preheader.split, !dbg !2174

vector.body220.preheader.split:                   ; preds = %vector.body220.preheader.split.loopexit, %vector.body220.preheader
  %index223.unr = phi i64 [ 0, %vector.body220.preheader ], [ %index.next236.prol.lcssa, %vector.body220.preheader.split.loopexit ]
  %80 = icmp ult i64 %73, 24, !dbg !2174
  br i1 %80, label %middle.block221.loopexit, label %vector.body220.preheader.split.split, !dbg !2174

vector.body220.preheader.split.split:             ; preds = %vector.body220.preheader.split
  br label %vector.body220, !dbg !2174

vector.body220:                                   ; preds = %vector.body220, %vector.body220.preheader.split.split
  %index223 = phi i64 [ %index223.unr, %vector.body220.preheader.split.split ], [ %index.next236.3, %vector.body220 ], !dbg !2182
  %81 = getelementptr i32, i32* %9, i64 %index223, !dbg !2174
  %82 = bitcast i32* %81 to <4 x i32>*, !dbg !2174
  store <4 x i32> <i32 63, i32 63, i32 63, i32 63>, <4 x i32>* %82, align 4, !dbg !2174, !tbaa !2195
  %83 = getelementptr i32, i32* %81, i64 4, !dbg !2174
  %84 = bitcast i32* %83 to <4 x i32>*, !dbg !2174
  store <4 x i32> <i32 63, i32 63, i32 63, i32 63>, <4 x i32>* %84, align 4, !dbg !2174, !tbaa !2195
  %index.next236 = add i64 %index223, 8, !dbg !2182
  %85 = getelementptr i32, i32* %9, i64 %index.next236, !dbg !2174
  %86 = bitcast i32* %85 to <4 x i32>*, !dbg !2174
  store <4 x i32> <i32 63, i32 63, i32 63, i32 63>, <4 x i32>* %86, align 4, !dbg !2174, !tbaa !2195
  %87 = getelementptr i32, i32* %85, i64 4, !dbg !2174
  %88 = bitcast i32* %87 to <4 x i32>*, !dbg !2174
  store <4 x i32> <i32 63, i32 63, i32 63, i32 63>, <4 x i32>* %88, align 4, !dbg !2174, !tbaa !2195
  %index.next236.1 = add i64 %index223, 16, !dbg !2182
  %89 = getelementptr i32, i32* %9, i64 %index.next236.1, !dbg !2174
  %90 = bitcast i32* %89 to <4 x i32>*, !dbg !2174
  store <4 x i32> <i32 63, i32 63, i32 63, i32 63>, <4 x i32>* %90, align 4, !dbg !2174, !tbaa !2195
  %91 = getelementptr i32, i32* %89, i64 4, !dbg !2174
  %92 = bitcast i32* %91 to <4 x i32>*, !dbg !2174
  store <4 x i32> <i32 63, i32 63, i32 63, i32 63>, <4 x i32>* %92, align 4, !dbg !2174, !tbaa !2195
  %index.next236.2 = add i64 %index223, 24, !dbg !2182
  %93 = getelementptr i32, i32* %9, i64 %index.next236.2, !dbg !2174
  %94 = bitcast i32* %93 to <4 x i32>*, !dbg !2174
  store <4 x i32> <i32 63, i32 63, i32 63, i32 63>, <4 x i32>* %94, align 4, !dbg !2174, !tbaa !2195
  %95 = getelementptr i32, i32* %93, i64 4, !dbg !2174
  %96 = bitcast i32* %95 to <4 x i32>*, !dbg !2174
  store <4 x i32> <i32 63, i32 63, i32 63, i32 63>, <4 x i32>* %96, align 4, !dbg !2174, !tbaa !2195
  %index.next236.3 = add i64 %index223, 32, !dbg !2182
  %97 = icmp eq i64 %index.next236.3, %n.vec227, !dbg !2182
  br i1 %97, label %middle.block221.loopexit.unr-lcssa, label %vector.body220, !dbg !2182, !llvm.loop !2197

middle.block221.loopexit.unr-lcssa:               ; preds = %vector.body220
  br label %middle.block221.loopexit

middle.block221.loopexit:                         ; preds = %vector.body220.preheader.split, %middle.block221.loopexit.unr-lcssa
  br label %middle.block221

middle.block221:                                  ; preds = %middle.block221.loopexit, %overflow.checked224
  %resume.val231 = phi i64 [ 0, %overflow.checked224 ], [ %n.vec227, %middle.block221.loopexit ]
  %cmp.n235 = icmp eq i64 %71, %resume.val231
  br i1 %cmp.n235, label %for.end, label %for.inc.preheader320, !dbg !2174

for.inc.us:                                       ; preds = %for.inc.us.preheader321, %for.inc.us
  %i.0169.us = phi i64 [ %inc.us, %for.inc.us ], [ %i.0169.us.ph, %for.inc.us.preheader321 ]
  %arrayidx.us = getelementptr i8, i8* %cond26, i64 %i.0169.us, !dbg !2190
  store i8 63, i8* %arrayidx.us, align 1, !dbg !2190, !tbaa !1292
  %inc.us = add nuw nsw i64 %i.0169.us, 1, !dbg !2182
  call void @llvm.dbg.value(metadata i64 %inc.us, i64 0, metadata !668, metadata !1099), !dbg !2169
  %exitcond183 = icmp eq i64 %inc.us, %sub, !dbg !2173
  br i1 %exitcond183, label %for.end.loopexit322, label %for.inc.us, !dbg !2173, !llvm.loop !2198

for.inc.us178:                                    ; preds = %for.inc.us178.preheader323, %for.inc.us178
  %i.0169.us.172 = phi i64 [ %inc.us.179, %for.inc.us178 ], [ %i.0169.us.172.ph, %for.inc.us178.preheader323 ]
  %arrayidx29.us.174 = getelementptr i16, i16* %10, i64 %i.0169.us.172, !dbg !2179
  store i16 63, i16* %arrayidx29.us.174, align 2, !dbg !2179, !tbaa !2183
  %inc.us.179 = add nuw nsw i64 %i.0169.us.172, 1, !dbg !2182
  call void @llvm.dbg.value(metadata i64 %inc.us.179, i64 0, metadata !668, metadata !1099), !dbg !2169
  %cmp27.us.180 = icmp slt i64 %inc.us.179, %sub, !dbg !2170
  br i1 %cmp27.us.180, label %for.inc.us178, label %for.end.loopexit324, !dbg !2173, !llvm.loop !2200

for.inc:                                          ; preds = %for.inc.preheader320, %for.inc
  %i.0169 = phi i64 [ %inc, %for.inc ], [ %i.0169.ph, %for.inc.preheader320 ]
  %arrayidx30 = getelementptr i32, i32* %9, i64 %i.0169, !dbg !2174
  store i32 63, i32* %arrayidx30, align 4, !dbg !2174, !tbaa !2195
  %inc = add nuw nsw i64 %i.0169, 1, !dbg !2182
  call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !668, metadata !1099), !dbg !2169
  %cmp27 = icmp slt i64 %inc, %sub, !dbg !2170
  br i1 %cmp27, label %for.inc, label %for.end.loopexit, !dbg !2173, !llvm.loop !2201

for.end.loopexit:                                 ; preds = %for.inc
  br label %for.end, !dbg !2144

for.end.loopexit322:                              ; preds = %for.inc.us
  br label %for.end, !dbg !2144

for.end.loopexit324:                              ; preds = %for.inc.us178
  br label %for.end, !dbg !2144

for.end:                                          ; preds = %for.end.loopexit324, %for.end.loopexit322, %for.end.loopexit, %middle.block, %middle.block197, %middle.block221, %cond.end.25
  call void @llvm.dbg.value(metadata i64* %end, i64 0, metadata !667, metadata !1099), !dbg !2144
  %98 = load i64, i64* %end, align 8, !dbg !2202, !tbaa !2131
  %call31 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), %struct._object* %call8, i64 %98) #2, !dbg !2203
  br label %cleanup.109, !dbg !2204

if.else:                                          ; preds = %entry
  %99 = load %struct._object*, %struct._object** @PyExc_UnicodeDecodeError, align 8, !dbg !2205, !tbaa !1106
  %call34 = tail call i32 @PyObject_IsInstance(%struct._object* %exc, %struct._object* %99) #2, !dbg !2206
  %tobool35 = icmp eq i32 %call34, 0, !dbg !2206
  br i1 %tobool35, label %if.else.42, label %if.then.36, !dbg !2207

if.then.36:                                       ; preds = %if.else
  tail call void @llvm.dbg.value(metadata i64* %end, i64 0, metadata !667, metadata !1099), !dbg !2144
  %call37 = call i32 @PyUnicodeDecodeError_GetEnd(%struct._object* %exc, i64* nonnull %end) #2, !dbg !2208
  %tobool38 = icmp eq i32 %call37, 0, !dbg !2208
  br i1 %tobool38, label %if.end.40, label %cleanup.109, !dbg !2211

if.end.40:                                        ; preds = %if.then.36
  call void @llvm.dbg.value(metadata i64* %end, i64 0, metadata !667, metadata !1099), !dbg !2144
  %100 = load i64, i64* %end, align 8, !dbg !2212, !tbaa !2131
  %call41 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 65533, i64 %100) #2, !dbg !2213
  br label %cleanup.109, !dbg !2214

if.else.42:                                       ; preds = %if.else
  %101 = load %struct._object*, %struct._object** @PyExc_UnicodeTranslateError, align 8, !dbg !2215, !tbaa !1106
  %call43 = tail call i32 @PyObject_IsInstance(%struct._object* %exc, %struct._object* %101) #2, !dbg !2216
  %tobool44 = icmp eq i32 %call43, 0, !dbg !2216
  br i1 %tobool44, label %if.else.108, label %if.then.45, !dbg !2217

if.then.45:                                       ; preds = %if.else.42
  tail call void @llvm.dbg.value(metadata i64* %start, i64 0, metadata !666, metadata !1099), !dbg !2140
  %call49 = call i32 @PyUnicodeTranslateError_GetStart(%struct._object* %exc, i64* nonnull %start) #2, !dbg !2218
  %tobool50 = icmp eq i32 %call49, 0, !dbg !2218
  br i1 %tobool50, label %if.end.52, label %cleanup.109, !dbg !2220

if.end.52:                                        ; preds = %if.then.45
  call void @llvm.dbg.value(metadata i64* %end, i64 0, metadata !667, metadata !1099), !dbg !2144
  %call53 = call i32 @PyUnicodeTranslateError_GetEnd(%struct._object* %exc, i64* nonnull %end) #2, !dbg !2221
  %tobool54 = icmp eq i32 %call53, 0, !dbg !2221
  br i1 %tobool54, label %if.end.56, label %cleanup.109, !dbg !2223

if.end.56:                                        ; preds = %if.end.52
  call void @llvm.dbg.value(metadata i64* %end, i64 0, metadata !667, metadata !1099), !dbg !2144
  %102 = load i64, i64* %end, align 8, !dbg !2224, !tbaa !2131
  call void @llvm.dbg.value(metadata i64* %start, i64 0, metadata !666, metadata !1099), !dbg !2140
  %103 = load i64, i64* %start, align 8, !dbg !2225, !tbaa !2131
  %sub57 = sub i64 %102, %103, !dbg !2226
  call void @llvm.dbg.value(metadata i64 %sub57, i64 0, metadata !669, metadata !1099), !dbg !2151
  %call58 = call %struct._object* @PyUnicode_New(i64 %sub57, i32 65533) #2, !dbg !2227
  call void @llvm.dbg.value(metadata %struct._object* %call58, i64 0, metadata !675, metadata !1099), !dbg !2228
  %cmp59 = icmp eq %struct._object* %call58, null, !dbg !2229
  br i1 %cmp59, label %cleanup.109, label %if.end.61, !dbg !2231

if.end.61:                                        ; preds = %if.end.56
  %state62 = getelementptr inbounds %struct._object, %struct._object* %call58, i64 2, !dbg !2232
  %104 = bitcast %struct._object* %state62 to i32*, !dbg !2232
  %bf.load63 = load i32, i32* %104, align 4, !dbg !2232
  %bf.lshr64 = lshr i32 %bf.load63, 2, !dbg !2232
  %bf.clear65 = and i32 %bf.lshr64, 7, !dbg !2232
  call void @llvm.dbg.value(metadata i32 %bf.clear65, i64 0, metadata !679, metadata !1099), !dbg !2233
  %bf.clear69 = and i32 %bf.load63, 32, !dbg !2234
  %tobool70 = icmp eq i32 %bf.clear69, 0, !dbg !2234
  br i1 %tobool70, label %cond.false.83, label %cond.true.71, !dbg !2234

cond.true.71:                                     ; preds = %if.end.61
  %bf.clear75 = and i32 %bf.load63, 64, !dbg !2235
  %tobool76 = icmp ne i32 %bf.clear75, 0, !dbg !2235
  %add.ptr78 = getelementptr %struct._object, %struct._object* %call58, i64 3, !dbg !2237
  %105 = bitcast %struct._object* %add.ptr78 to i8*, !dbg !2237
  %add.ptr80 = getelementptr %struct._object, %struct._object* %call58, i64 4, i32 1, !dbg !2239
  %106 = bitcast %struct._typeobject** %add.ptr80 to i8*, !dbg !2239
  %cond82 = select i1 %tobool76, i8* %105, i8* %106, !dbg !2235
  br label %cond.end.86, !dbg !2235

cond.false.83:                                    ; preds = %if.end.61
  %data84 = getelementptr inbounds %struct._object, %struct._object* %call58, i64 4, i32 1, !dbg !2241
  %any85 = bitcast %struct._typeobject** %data84 to i8**, !dbg !2241
  %107 = load i8*, i8** %any85, align 8, !dbg !2241, !tbaa !1106
  br label %cond.end.86, !dbg !2241

cond.end.86:                                      ; preds = %cond.true.71, %cond.false.83
  %cond87 = phi i8* [ %107, %cond.false.83 ], [ %cond82, %cond.true.71 ], !dbg !2234
  call void @llvm.dbg.value(metadata i8* %cond87, i64 0, metadata !680, metadata !1099), !dbg !2243
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !668, metadata !1099), !dbg !2169
  %cmp89.154 = icmp sgt i64 %sub57, 0, !dbg !2244
  br i1 %cmp89.154, label %do.body.91.lr.ph, label %for.end.103, !dbg !2247

do.body.91.lr.ph:                                 ; preds = %cond.end.86
  %108 = bitcast i8* %cond87 to i32*, !dbg !2248
  %109 = bitcast i8* %cond87 to i16*, !dbg !2253
  switch i32 %bf.clear65, label %for.inc.101.preheader [
    i32 1, label %for.inc.101.us.preheader
    i32 2, label %for.inc.101.us163.preheader
  ]

for.inc.101.us163.preheader:                      ; preds = %do.body.91.lr.ph
  %110 = add i64 %102, -1, !dbg !2253
  %111 = sub i64 %110, %103, !dbg !2253
  %backedge.overflow243 = icmp eq i64 %111, -1
  %112 = sub i64 %102, %103, !dbg !2253
  br i1 %backedge.overflow243, label %for.inc.101.us163.preheader318, label %overflow.checked248, !dbg !2253

for.inc.101.us163.preheader318:                   ; preds = %middle.block245, %for.inc.101.us163.preheader
  %i.1155.us.157.ph = phi i64 [ 0, %for.inc.101.us163.preheader ], [ %resume.val255, %middle.block245 ]
  br label %for.inc.101.us163, !dbg !2253

overflow.checked248:                              ; preds = %for.inc.101.us163.preheader
  %n.vec251 = and i64 %112, -16, !dbg !2256
  %cmp.zero253 = icmp eq i64 %n.vec251, 0, !dbg !2256
  br i1 %cmp.zero253, label %middle.block245, label %vector.body244.preheader, !dbg !2253

vector.body244.preheader:                         ; preds = %overflow.checked248
  %113 = sub i64 %102, %103, !dbg !2253
  %114 = add i64 %113, -16, !dbg !2253
  %115 = lshr i64 %114, 4, !dbg !2253
  %116 = add nuw nsw i64 %115, 1, !dbg !2253
  %xtraiter328 = and i64 %116, 3, !dbg !2253
  %lcmp.mod329 = icmp eq i64 %xtraiter328, 0, !dbg !2253
  br i1 %lcmp.mod329, label %vector.body244.preheader.split, label %vector.body244.prol.preheader, !dbg !2253

vector.body244.prol.preheader:                    ; preds = %vector.body244.preheader
  br label %vector.body244.prol, !dbg !2253

vector.body244.prol:                              ; preds = %vector.body244.prol.preheader, %vector.body244.prol
  %index247.prol = phi i64 [ %index.next260.prol, %vector.body244.prol ], [ 0, %vector.body244.prol.preheader ], !dbg !2256
  %prol.iter330 = phi i64 [ %prol.iter330.sub, %vector.body244.prol ], [ %xtraiter328, %vector.body244.prol.preheader ]
  %117 = getelementptr i16, i16* %109, i64 %index247.prol, !dbg !2253
  %118 = bitcast i16* %117 to <8 x i16>*, !dbg !2253
  store <8 x i16> <i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3>, <8 x i16>* %118, align 2, !dbg !2253, !tbaa !2183
  %119 = getelementptr i16, i16* %117, i64 8, !dbg !2253
  %120 = bitcast i16* %119 to <8 x i16>*, !dbg !2253
  store <8 x i16> <i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3>, <8 x i16>* %120, align 2, !dbg !2253, !tbaa !2183
  %index.next260.prol = add i64 %index247.prol, 16, !dbg !2256
  %prol.iter330.sub = add i64 %prol.iter330, -1, !dbg !2256
  %prol.iter330.cmp = icmp eq i64 %prol.iter330.sub, 0, !dbg !2256
  br i1 %prol.iter330.cmp, label %vector.body244.preheader.split.loopexit, label %vector.body244.prol, !dbg !2256, !llvm.loop !2257

vector.body244.preheader.split.loopexit:          ; preds = %vector.body244.prol
  %index.next260.prol.lcssa = phi i64 [ %index.next260.prol, %vector.body244.prol ]
  br label %vector.body244.preheader.split, !dbg !2253

vector.body244.preheader.split:                   ; preds = %vector.body244.preheader.split.loopexit, %vector.body244.preheader
  %index247.unr = phi i64 [ 0, %vector.body244.preheader ], [ %index.next260.prol.lcssa, %vector.body244.preheader.split.loopexit ]
  %121 = icmp ult i64 %114, 48, !dbg !2253
  br i1 %121, label %middle.block245.loopexit, label %vector.body244.preheader.split.split, !dbg !2253

vector.body244.preheader.split.split:             ; preds = %vector.body244.preheader.split
  br label %vector.body244, !dbg !2253

vector.body244:                                   ; preds = %vector.body244, %vector.body244.preheader.split.split
  %index247 = phi i64 [ %index247.unr, %vector.body244.preheader.split.split ], [ %index.next260.3, %vector.body244 ], !dbg !2256
  %122 = getelementptr i16, i16* %109, i64 %index247, !dbg !2253
  %123 = bitcast i16* %122 to <8 x i16>*, !dbg !2253
  store <8 x i16> <i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3>, <8 x i16>* %123, align 2, !dbg !2253, !tbaa !2183
  %124 = getelementptr i16, i16* %122, i64 8, !dbg !2253
  %125 = bitcast i16* %124 to <8 x i16>*, !dbg !2253
  store <8 x i16> <i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3>, <8 x i16>* %125, align 2, !dbg !2253, !tbaa !2183
  %index.next260 = add i64 %index247, 16, !dbg !2256
  %126 = getelementptr i16, i16* %109, i64 %index.next260, !dbg !2253
  %127 = bitcast i16* %126 to <8 x i16>*, !dbg !2253
  store <8 x i16> <i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3>, <8 x i16>* %127, align 2, !dbg !2253, !tbaa !2183
  %128 = getelementptr i16, i16* %126, i64 8, !dbg !2253
  %129 = bitcast i16* %128 to <8 x i16>*, !dbg !2253
  store <8 x i16> <i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3>, <8 x i16>* %129, align 2, !dbg !2253, !tbaa !2183
  %index.next260.1 = add i64 %index247, 32, !dbg !2256
  %130 = getelementptr i16, i16* %109, i64 %index.next260.1, !dbg !2253
  %131 = bitcast i16* %130 to <8 x i16>*, !dbg !2253
  store <8 x i16> <i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3>, <8 x i16>* %131, align 2, !dbg !2253, !tbaa !2183
  %132 = getelementptr i16, i16* %130, i64 8, !dbg !2253
  %133 = bitcast i16* %132 to <8 x i16>*, !dbg !2253
  store <8 x i16> <i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3>, <8 x i16>* %133, align 2, !dbg !2253, !tbaa !2183
  %index.next260.2 = add i64 %index247, 48, !dbg !2256
  %134 = getelementptr i16, i16* %109, i64 %index.next260.2, !dbg !2253
  %135 = bitcast i16* %134 to <8 x i16>*, !dbg !2253
  store <8 x i16> <i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3>, <8 x i16>* %135, align 2, !dbg !2253, !tbaa !2183
  %136 = getelementptr i16, i16* %134, i64 8, !dbg !2253
  %137 = bitcast i16* %136 to <8 x i16>*, !dbg !2253
  store <8 x i16> <i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3>, <8 x i16>* %137, align 2, !dbg !2253, !tbaa !2183
  %index.next260.3 = add i64 %index247, 64, !dbg !2256
  %138 = icmp eq i64 %index.next260.3, %n.vec251, !dbg !2256
  br i1 %138, label %middle.block245.loopexit.unr-lcssa, label %vector.body244, !dbg !2256, !llvm.loop !2258

middle.block245.loopexit.unr-lcssa:               ; preds = %vector.body244
  br label %middle.block245.loopexit

middle.block245.loopexit:                         ; preds = %vector.body244.preheader.split, %middle.block245.loopexit.unr-lcssa
  br label %middle.block245

middle.block245:                                  ; preds = %middle.block245.loopexit, %overflow.checked248
  %resume.val255 = phi i64 [ 0, %overflow.checked248 ], [ %n.vec251, %middle.block245.loopexit ]
  %cmp.n259 = icmp eq i64 %112, %resume.val255
  br i1 %cmp.n259, label %for.end.103, label %for.inc.101.us163.preheader318, !dbg !2253

for.inc.101.us.preheader:                         ; preds = %do.body.91.lr.ph
  %139 = add i64 %102, -1, !dbg !2259
  %140 = sub i64 %139, %103, !dbg !2259
  %backedge.overflow267 = icmp eq i64 %140, -1
  %141 = sub i64 %102, %103, !dbg !2259
  br i1 %backedge.overflow267, label %for.inc.101.us.preheader316, label %overflow.checked272, !dbg !2259

for.inc.101.us.preheader316:                      ; preds = %middle.block269, %for.inc.101.us.preheader
  %i.1155.us.ph = phi i64 [ 0, %for.inc.101.us.preheader ], [ %resume.val279, %middle.block269 ]
  br label %for.inc.101.us, !dbg !2259

overflow.checked272:                              ; preds = %for.inc.101.us.preheader
  %n.vec275 = and i64 %141, -32, !dbg !2256
  %cmp.zero277 = icmp eq i64 %n.vec275, 0, !dbg !2256
  br i1 %cmp.zero277, label %middle.block269, label %vector.body268.preheader, !dbg !2259

vector.body268.preheader:                         ; preds = %overflow.checked272
  %142 = sub i64 %102, %103, !dbg !2259
  %143 = add i64 %142, -32, !dbg !2259
  %144 = lshr i64 %143, 5, !dbg !2259
  %145 = add nuw nsw i64 %144, 1, !dbg !2259
  %xtraiter325 = and i64 %145, 3, !dbg !2259
  %lcmp.mod326 = icmp eq i64 %xtraiter325, 0, !dbg !2259
  br i1 %lcmp.mod326, label %vector.body268.preheader.split, label %vector.body268.prol.preheader, !dbg !2259

vector.body268.prol.preheader:                    ; preds = %vector.body268.preheader
  br label %vector.body268.prol, !dbg !2259

vector.body268.prol:                              ; preds = %vector.body268.prol.preheader, %vector.body268.prol
  %index271.prol = phi i64 [ %index.next284.prol, %vector.body268.prol ], [ 0, %vector.body268.prol.preheader ], !dbg !2256
  %prol.iter327 = phi i64 [ %prol.iter327.sub, %vector.body268.prol ], [ %xtraiter325, %vector.body268.prol.preheader ]
  %146 = getelementptr i8, i8* %cond87, i64 %index271.prol, !dbg !2259
  %147 = bitcast i8* %146 to <16 x i8>*, !dbg !2259
  store <16 x i8> <i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3>, <16 x i8>* %147, align 1, !dbg !2259, !tbaa !1292
  %148 = getelementptr i8, i8* %146, i64 16, !dbg !2259
  %149 = bitcast i8* %148 to <16 x i8>*, !dbg !2259
  store <16 x i8> <i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3>, <16 x i8>* %149, align 1, !dbg !2259, !tbaa !1292
  %index.next284.prol = add i64 %index271.prol, 32, !dbg !2256
  %prol.iter327.sub = add i64 %prol.iter327, -1, !dbg !2256
  %prol.iter327.cmp = icmp eq i64 %prol.iter327.sub, 0, !dbg !2256
  br i1 %prol.iter327.cmp, label %vector.body268.preheader.split.loopexit, label %vector.body268.prol, !dbg !2256, !llvm.loop !2262

vector.body268.preheader.split.loopexit:          ; preds = %vector.body268.prol
  %index.next284.prol.lcssa = phi i64 [ %index.next284.prol, %vector.body268.prol ]
  br label %vector.body268.preheader.split, !dbg !2259

vector.body268.preheader.split:                   ; preds = %vector.body268.preheader.split.loopexit, %vector.body268.preheader
  %index271.unr = phi i64 [ 0, %vector.body268.preheader ], [ %index.next284.prol.lcssa, %vector.body268.preheader.split.loopexit ]
  %150 = icmp ult i64 %143, 96, !dbg !2259
  br i1 %150, label %middle.block269.loopexit, label %vector.body268.preheader.split.split, !dbg !2259

vector.body268.preheader.split.split:             ; preds = %vector.body268.preheader.split
  br label %vector.body268, !dbg !2259

vector.body268:                                   ; preds = %vector.body268, %vector.body268.preheader.split.split
  %index271 = phi i64 [ %index271.unr, %vector.body268.preheader.split.split ], [ %index.next284.3, %vector.body268 ], !dbg !2256
  %151 = getelementptr i8, i8* %cond87, i64 %index271, !dbg !2259
  %152 = bitcast i8* %151 to <16 x i8>*, !dbg !2259
  store <16 x i8> <i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3>, <16 x i8>* %152, align 1, !dbg !2259, !tbaa !1292
  %153 = getelementptr i8, i8* %151, i64 16, !dbg !2259
  %154 = bitcast i8* %153 to <16 x i8>*, !dbg !2259
  store <16 x i8> <i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3>, <16 x i8>* %154, align 1, !dbg !2259, !tbaa !1292
  %index.next284 = add i64 %index271, 32, !dbg !2256
  %155 = getelementptr i8, i8* %cond87, i64 %index.next284, !dbg !2259
  %156 = bitcast i8* %155 to <16 x i8>*, !dbg !2259
  store <16 x i8> <i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3>, <16 x i8>* %156, align 1, !dbg !2259, !tbaa !1292
  %157 = getelementptr i8, i8* %155, i64 16, !dbg !2259
  %158 = bitcast i8* %157 to <16 x i8>*, !dbg !2259
  store <16 x i8> <i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3>, <16 x i8>* %158, align 1, !dbg !2259, !tbaa !1292
  %index.next284.1 = add i64 %index271, 64, !dbg !2256
  %159 = getelementptr i8, i8* %cond87, i64 %index.next284.1, !dbg !2259
  %160 = bitcast i8* %159 to <16 x i8>*, !dbg !2259
  store <16 x i8> <i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3>, <16 x i8>* %160, align 1, !dbg !2259, !tbaa !1292
  %161 = getelementptr i8, i8* %159, i64 16, !dbg !2259
  %162 = bitcast i8* %161 to <16 x i8>*, !dbg !2259
  store <16 x i8> <i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3>, <16 x i8>* %162, align 1, !dbg !2259, !tbaa !1292
  %index.next284.2 = add i64 %index271, 96, !dbg !2256
  %163 = getelementptr i8, i8* %cond87, i64 %index.next284.2, !dbg !2259
  %164 = bitcast i8* %163 to <16 x i8>*, !dbg !2259
  store <16 x i8> <i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3>, <16 x i8>* %164, align 1, !dbg !2259, !tbaa !1292
  %165 = getelementptr i8, i8* %163, i64 16, !dbg !2259
  %166 = bitcast i8* %165 to <16 x i8>*, !dbg !2259
  store <16 x i8> <i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3, i8 -3>, <16 x i8>* %166, align 1, !dbg !2259, !tbaa !1292
  %index.next284.3 = add i64 %index271, 128, !dbg !2256
  %167 = icmp eq i64 %index.next284.3, %n.vec275, !dbg !2256
  br i1 %167, label %middle.block269.loopexit.unr-lcssa, label %vector.body268, !dbg !2256, !llvm.loop !2263

middle.block269.loopexit.unr-lcssa:               ; preds = %vector.body268
  br label %middle.block269.loopexit

middle.block269.loopexit:                         ; preds = %vector.body268.preheader.split, %middle.block269.loopexit.unr-lcssa
  br label %middle.block269

middle.block269:                                  ; preds = %middle.block269.loopexit, %overflow.checked272
  %resume.val279 = phi i64 [ 0, %overflow.checked272 ], [ %n.vec275, %middle.block269.loopexit ]
  %cmp.n283 = icmp eq i64 %141, %resume.val279
  br i1 %cmp.n283, label %for.end.103, label %for.inc.101.us.preheader316, !dbg !2259

for.inc.101.preheader:                            ; preds = %do.body.91.lr.ph
  %168 = add i64 %102, -1, !dbg !2248
  %169 = sub i64 %168, %103, !dbg !2248
  %backedge.overflow291 = icmp eq i64 %169, -1
  %170 = sub i64 %102, %103, !dbg !2248
  br i1 %backedge.overflow291, label %for.inc.101.preheader315, label %overflow.checked296, !dbg !2248

for.inc.101.preheader315:                         ; preds = %middle.block293, %for.inc.101.preheader
  %i.1155.ph = phi i64 [ 0, %for.inc.101.preheader ], [ %resume.val303, %middle.block293 ]
  br label %for.inc.101, !dbg !2248

overflow.checked296:                              ; preds = %for.inc.101.preheader
  %n.vec299 = and i64 %170, -8, !dbg !2256
  %cmp.zero301 = icmp eq i64 %n.vec299, 0, !dbg !2256
  br i1 %cmp.zero301, label %middle.block293, label %vector.body292.preheader, !dbg !2248

vector.body292.preheader:                         ; preds = %overflow.checked296
  %171 = sub i64 %102, %103, !dbg !2248
  %172 = add i64 %171, -8, !dbg !2248
  %173 = lshr i64 %172, 3, !dbg !2248
  %174 = add nuw nsw i64 %173, 1, !dbg !2248
  %xtraiter = and i64 %174, 3, !dbg !2248
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !2248
  br i1 %lcmp.mod, label %vector.body292.preheader.split, label %vector.body292.prol.preheader, !dbg !2248

vector.body292.prol.preheader:                    ; preds = %vector.body292.preheader
  br label %vector.body292.prol, !dbg !2248

vector.body292.prol:                              ; preds = %vector.body292.prol.preheader, %vector.body292.prol
  %index295.prol = phi i64 [ %index.next308.prol, %vector.body292.prol ], [ 0, %vector.body292.prol.preheader ], !dbg !2256
  %prol.iter = phi i64 [ %prol.iter.sub, %vector.body292.prol ], [ %xtraiter, %vector.body292.prol.preheader ]
  %175 = getelementptr i32, i32* %108, i64 %index295.prol, !dbg !2248
  %176 = bitcast i32* %175 to <4 x i32>*, !dbg !2248
  store <4 x i32> <i32 65533, i32 65533, i32 65533, i32 65533>, <4 x i32>* %176, align 4, !dbg !2248, !tbaa !2195
  %177 = getelementptr i32, i32* %175, i64 4, !dbg !2248
  %178 = bitcast i32* %177 to <4 x i32>*, !dbg !2248
  store <4 x i32> <i32 65533, i32 65533, i32 65533, i32 65533>, <4 x i32>* %178, align 4, !dbg !2248, !tbaa !2195
  %index.next308.prol = add i64 %index295.prol, 8, !dbg !2256
  %prol.iter.sub = add i64 %prol.iter, -1, !dbg !2256
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0, !dbg !2256
  br i1 %prol.iter.cmp, label %vector.body292.preheader.split.loopexit, label %vector.body292.prol, !dbg !2256, !llvm.loop !2264

vector.body292.preheader.split.loopexit:          ; preds = %vector.body292.prol
  %index.next308.prol.lcssa = phi i64 [ %index.next308.prol, %vector.body292.prol ]
  br label %vector.body292.preheader.split, !dbg !2248

vector.body292.preheader.split:                   ; preds = %vector.body292.preheader.split.loopexit, %vector.body292.preheader
  %index295.unr = phi i64 [ 0, %vector.body292.preheader ], [ %index.next308.prol.lcssa, %vector.body292.preheader.split.loopexit ]
  %179 = icmp ult i64 %172, 24, !dbg !2248
  br i1 %179, label %middle.block293.loopexit, label %vector.body292.preheader.split.split, !dbg !2248

vector.body292.preheader.split.split:             ; preds = %vector.body292.preheader.split
  br label %vector.body292, !dbg !2248

vector.body292:                                   ; preds = %vector.body292, %vector.body292.preheader.split.split
  %index295 = phi i64 [ %index295.unr, %vector.body292.preheader.split.split ], [ %index.next308.3, %vector.body292 ], !dbg !2256
  %180 = getelementptr i32, i32* %108, i64 %index295, !dbg !2248
  %181 = bitcast i32* %180 to <4 x i32>*, !dbg !2248
  store <4 x i32> <i32 65533, i32 65533, i32 65533, i32 65533>, <4 x i32>* %181, align 4, !dbg !2248, !tbaa !2195
  %182 = getelementptr i32, i32* %180, i64 4, !dbg !2248
  %183 = bitcast i32* %182 to <4 x i32>*, !dbg !2248
  store <4 x i32> <i32 65533, i32 65533, i32 65533, i32 65533>, <4 x i32>* %183, align 4, !dbg !2248, !tbaa !2195
  %index.next308 = add i64 %index295, 8, !dbg !2256
  %184 = getelementptr i32, i32* %108, i64 %index.next308, !dbg !2248
  %185 = bitcast i32* %184 to <4 x i32>*, !dbg !2248
  store <4 x i32> <i32 65533, i32 65533, i32 65533, i32 65533>, <4 x i32>* %185, align 4, !dbg !2248, !tbaa !2195
  %186 = getelementptr i32, i32* %184, i64 4, !dbg !2248
  %187 = bitcast i32* %186 to <4 x i32>*, !dbg !2248
  store <4 x i32> <i32 65533, i32 65533, i32 65533, i32 65533>, <4 x i32>* %187, align 4, !dbg !2248, !tbaa !2195
  %index.next308.1 = add i64 %index295, 16, !dbg !2256
  %188 = getelementptr i32, i32* %108, i64 %index.next308.1, !dbg !2248
  %189 = bitcast i32* %188 to <4 x i32>*, !dbg !2248
  store <4 x i32> <i32 65533, i32 65533, i32 65533, i32 65533>, <4 x i32>* %189, align 4, !dbg !2248, !tbaa !2195
  %190 = getelementptr i32, i32* %188, i64 4, !dbg !2248
  %191 = bitcast i32* %190 to <4 x i32>*, !dbg !2248
  store <4 x i32> <i32 65533, i32 65533, i32 65533, i32 65533>, <4 x i32>* %191, align 4, !dbg !2248, !tbaa !2195
  %index.next308.2 = add i64 %index295, 24, !dbg !2256
  %192 = getelementptr i32, i32* %108, i64 %index.next308.2, !dbg !2248
  %193 = bitcast i32* %192 to <4 x i32>*, !dbg !2248
  store <4 x i32> <i32 65533, i32 65533, i32 65533, i32 65533>, <4 x i32>* %193, align 4, !dbg !2248, !tbaa !2195
  %194 = getelementptr i32, i32* %192, i64 4, !dbg !2248
  %195 = bitcast i32* %194 to <4 x i32>*, !dbg !2248
  store <4 x i32> <i32 65533, i32 65533, i32 65533, i32 65533>, <4 x i32>* %195, align 4, !dbg !2248, !tbaa !2195
  %index.next308.3 = add i64 %index295, 32, !dbg !2256
  %196 = icmp eq i64 %index.next308.3, %n.vec299, !dbg !2256
  br i1 %196, label %middle.block293.loopexit.unr-lcssa, label %vector.body292, !dbg !2256, !llvm.loop !2265

middle.block293.loopexit.unr-lcssa:               ; preds = %vector.body292
  br label %middle.block293.loopexit

middle.block293.loopexit:                         ; preds = %vector.body292.preheader.split, %middle.block293.loopexit.unr-lcssa
  br label %middle.block293

middle.block293:                                  ; preds = %middle.block293.loopexit, %overflow.checked296
  %resume.val303 = phi i64 [ 0, %overflow.checked296 ], [ %n.vec299, %middle.block293.loopexit ]
  %cmp.n307 = icmp eq i64 %170, %resume.val303
  br i1 %cmp.n307, label %for.end.103, label %for.inc.101.preheader315, !dbg !2248

for.inc.101.us:                                   ; preds = %for.inc.101.us.preheader316, %for.inc.101.us
  %i.1155.us = phi i64 [ %inc102.us, %for.inc.101.us ], [ %i.1155.us.ph, %for.inc.101.us.preheader316 ]
  %arrayidx93.us = getelementptr i8, i8* %cond87, i64 %i.1155.us, !dbg !2259
  store i8 -3, i8* %arrayidx93.us, align 1, !dbg !2259, !tbaa !1292
  %inc102.us = add nuw nsw i64 %i.1155.us, 1, !dbg !2256
  call void @llvm.dbg.value(metadata i64 %inc102.us, i64 0, metadata !668, metadata !1099), !dbg !2169
  %exitcond = icmp eq i64 %inc102.us, %sub57, !dbg !2247
  br i1 %exitcond, label %for.end.103.loopexit317, label %for.inc.101.us, !dbg !2247, !llvm.loop !2266

for.inc.101.us163:                                ; preds = %for.inc.101.us163.preheader318, %for.inc.101.us163
  %i.1155.us.157 = phi i64 [ %inc102.us.164, %for.inc.101.us163 ], [ %i.1155.us.157.ph, %for.inc.101.us163.preheader318 ]
  %arrayidx95.us.159 = getelementptr i16, i16* %109, i64 %i.1155.us.157, !dbg !2253
  store i16 -3, i16* %arrayidx95.us.159, align 2, !dbg !2253, !tbaa !2183
  %inc102.us.164 = add nuw nsw i64 %i.1155.us.157, 1, !dbg !2256
  call void @llvm.dbg.value(metadata i64 %inc102.us.164, i64 0, metadata !668, metadata !1099), !dbg !2169
  %cmp89.us.165 = icmp slt i64 %inc102.us.164, %sub57, !dbg !2244
  br i1 %cmp89.us.165, label %for.inc.101.us163, label %for.end.103.loopexit319, !dbg !2247, !llvm.loop !2267

for.inc.101:                                      ; preds = %for.inc.101.preheader315, %for.inc.101
  %i.1155 = phi i64 [ %inc102, %for.inc.101 ], [ %i.1155.ph, %for.inc.101.preheader315 ]
  %arrayidx97 = getelementptr i32, i32* %108, i64 %i.1155, !dbg !2248
  store i32 65533, i32* %arrayidx97, align 4, !dbg !2248, !tbaa !2195
  %inc102 = add nuw nsw i64 %i.1155, 1, !dbg !2256
  call void @llvm.dbg.value(metadata i64 %inc102, i64 0, metadata !668, metadata !1099), !dbg !2169
  %cmp89 = icmp slt i64 %inc102, %sub57, !dbg !2244
  br i1 %cmp89, label %for.inc.101, label %for.end.103.loopexit, !dbg !2247, !llvm.loop !2268

for.end.103.loopexit:                             ; preds = %for.inc.101
  br label %for.end.103, !dbg !2144

for.end.103.loopexit317:                          ; preds = %for.inc.101.us
  br label %for.end.103, !dbg !2144

for.end.103.loopexit319:                          ; preds = %for.inc.101.us163
  br label %for.end.103, !dbg !2144

for.end.103:                                      ; preds = %for.end.103.loopexit319, %for.end.103.loopexit317, %for.end.103.loopexit, %middle.block245, %middle.block269, %middle.block293, %cond.end.86
  call void @llvm.dbg.value(metadata i64* %end, i64 0, metadata !667, metadata !1099), !dbg !2144
  %197 = load i64, i64* %end, align 8, !dbg !2269, !tbaa !2131
  %call104 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), %struct._object* %call58, i64 %197) #2, !dbg !2270
  br label %cleanup.109, !dbg !2271

if.else.108:                                      ; preds = %if.else.42
  tail call void @llvm.dbg.value(metadata %struct._object* %exc, i64 0, metadata !893, metadata !1099) #2, !dbg !2272
  %call.i = tail call %struct._object* @_PyObject_GetAttrId(%struct._object* %exc, %struct._Py_Identifier* nonnull @wrong_exception_type.PyId___class__) #2, !dbg !2275
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !894, metadata !1099) #2, !dbg !2276
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !2277
  br i1 %cmp.i, label %cleanup.109, label %if.then.i, !dbg !2278

if.then.i:                                        ; preds = %if.else.108
  %call1.i = tail call %struct._object* @_PyObject_GetAttrId(%struct._object* %call.i, %struct._Py_Identifier* nonnull @wrong_exception_type.PyId___name__) #2, !dbg !2279
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i, i64 0, metadata !895, metadata !1099) #2, !dbg !2280
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !898, metadata !1099) #2, !dbg !2281
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !2282
  %198 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2282, !tbaa !1209
  %dec.i = add i64 %198, -1, !dbg !2282
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2282, !tbaa !1209
  %cmp2.i = icmp eq i64 %dec.i, 0, !dbg !2282
  br i1 %cmp2.i, label %if.else.i, label %if.end.i, !dbg !2283

if.else.i:                                        ; preds = %if.then.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !2284
  %199 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2284, !tbaa !1214
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %199, i64 0, i32 4, !dbg !2284
  %200 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2284, !tbaa !1215
  tail call void %200(%struct._object* %call.i) #2, !dbg !2284
  br label %if.end.i, !dbg !2285

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %cmp4.i = icmp eq %struct._object* %call1.i, null, !dbg !2286
  br i1 %cmp4.i, label %cleanup.109, label %if.then.5.i, !dbg !2287

if.then.5.i:                                      ; preds = %if.end.i
  %201 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2288, !tbaa !1106
  %call6.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %201, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i64 0, i64 0), %struct._object* %call1.i) #2, !dbg !2289
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i, i64 0, metadata !900, metadata !1099) #2, !dbg !2290
  %ob_refcnt9.i = getelementptr inbounds %struct._object, %struct._object* %call1.i, i64 0, i32 0, !dbg !2291
  %202 = load i64, i64* %ob_refcnt9.i, align 8, !dbg !2291, !tbaa !1209
  %dec10.i = add i64 %202, -1, !dbg !2291
  store i64 %dec10.i, i64* %ob_refcnt9.i, align 8, !dbg !2291, !tbaa !1209
  %cmp11.i = icmp eq i64 %dec10.i, 0, !dbg !2291
  br i1 %cmp11.i, label %if.else.13.i, label %cleanup.109, !dbg !2292

if.else.13.i:                                     ; preds = %if.then.5.i
  %ob_type14.i = getelementptr inbounds %struct._object, %struct._object* %call1.i, i64 0, i32 1, !dbg !2293
  %203 = load %struct._typeobject*, %struct._typeobject** %ob_type14.i, align 8, !dbg !2293, !tbaa !1214
  %tp_dealloc15.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %203, i64 0, i32 4, !dbg !2293
  %204 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc15.i, align 8, !dbg !2293, !tbaa !1215
  tail call void %204(%struct._object* %call1.i) #2, !dbg !2293
  br label %cleanup.109, !dbg !2285

cleanup.109:                                      ; preds = %if.else.13.i, %if.then.5.i, %if.end.i, %if.else.108, %for.end.103, %if.then.45, %if.end.52, %if.end.56, %if.then.36, %for.end, %if.then, %if.end, %if.end.7, %if.end.40
  %retval.2 = phi %struct._object* [ %call41, %if.end.40 ], [ %call31, %for.end ], [ null, %if.then ], [ null, %if.end ], [ null, %if.end.7 ], [ null, %if.then.36 ], [ %call104, %for.end.103 ], [ null, %if.then.45 ], [ null, %if.end.52 ], [ null, %if.end.56 ], [ null, %if.else.108 ], [ null, %if.end.i ], [ null, %if.then.5.i ], [ null, %if.else.13.i ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !2294
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !2294
  ret %struct._object* %retval.2, !dbg !2294
}

declare i32 @PyUnicodeEncodeError_GetStart(%struct._object*, i64*) #3

declare i32 @PyUnicodeTranslateError_GetStart(%struct._object*, i64*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_XMLCharRefReplaceErrors(%struct._object* %exc) #0 {
entry:
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %exc, i64 0, metadata !683, metadata !1099), !dbg !2295
  %0 = load %struct._object*, %struct._object** @PyExc_UnicodeEncodeError, align 8, !dbg !2296, !tbaa !1106
  %call = tail call i32 @PyObject_IsInstance(%struct._object* %exc, %struct._object* %0) #2, !dbg !2297
  %tobool = icmp eq i32 %call, 0, !dbg !2297
  br i1 %tobool, label %if.else.316, label %if.then, !dbg !2298

if.then:                                          ; preds = %entry
  %1 = bitcast i64* %start to i8*, !dbg !2299
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2299
  %2 = bitcast i64* %end to i8*, !dbg !2300
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2300
  tail call void @llvm.dbg.value(metadata i64* %start, i64 0, metadata !689, metadata !1099), !dbg !2301
  %call1 = call i32 @PyUnicodeEncodeError_GetStart(%struct._object* %exc, i64* nonnull %start) #2, !dbg !2302
  %tobool2 = icmp eq i32 %call1, 0, !dbg !2302
  br i1 %tobool2, label %if.end, label %cleanup, !dbg !2304

if.end:                                           ; preds = %if.then
  call void @llvm.dbg.value(metadata i64* %end, i64 0, metadata !690, metadata !1099), !dbg !2305
  %call4 = call i32 @PyUnicodeEncodeError_GetEnd(%struct._object* %exc, i64* nonnull %end) #2, !dbg !2306
  %tobool5 = icmp eq i32 %call4, 0, !dbg !2306
  br i1 %tobool5, label %if.end.7, label %cleanup, !dbg !2308

if.end.7:                                         ; preds = %if.end
  %call8 = call %struct._object* @PyUnicodeEncodeError_GetObject(%struct._object* %exc) #2, !dbg !2309
  call void @llvm.dbg.value(metadata %struct._object* %call8, i64 0, metadata !687, metadata !1099), !dbg !2311
  %tobool9 = icmp eq %struct._object* %call8, null, !dbg !2312
  br i1 %tobool9, label %cleanup, label %if.end.11, !dbg !2313

if.end.11:                                        ; preds = %if.end.7
  call void @llvm.dbg.value(metadata i64* %start, i64 0, metadata !689, metadata !1099), !dbg !2301
  %3 = load i64, i64* %start, align 8, !dbg !2314, !tbaa !2131
  call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !688, metadata !1099), !dbg !2316
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !693, metadata !1099), !dbg !2317
  call void @llvm.dbg.value(metadata i64* %end, i64 0, metadata !690, metadata !1099), !dbg !2305
  %4 = load i64, i64* %end, align 8, !dbg !2318, !tbaa !2131
  %cmp.399 = icmp slt i64 %3, %4, !dbg !2320
  br i1 %cmp.399, label %for.body.lr.ph, label %for.end, !dbg !2321

for.body.lr.ph:                                   ; preds = %if.end.11
  %state = getelementptr inbounds %struct._object, %struct._object* %call8, i64 2, !dbg !2322
  %5 = bitcast %struct._object* %state to i32*, !dbg !2322
  %bf.load = load i32, i32* %5, align 4, !dbg !2322
  %bf.lshr = lshr i32 %bf.load, 2, !dbg !2322
  %bf.clear = and i32 %bf.lshr, 7, !dbg !2322
  %cmp12 = icmp eq i32 %bf.clear, 1, !dbg !2322
  %bf.clear16 = and i32 %bf.load, 32, !dbg !2324
  %tobool17 = icmp eq i32 %bf.clear16, 0, !dbg !2324
  %data = getelementptr inbounds %struct._object, %struct._object* %call8, i64 4, i32 1, !dbg !2326
  %any = bitcast %struct._typeobject** %data to i8**, !dbg !2326
  %bf.clear22 = and i32 %bf.load, 64, !dbg !2328
  %tobool23 = icmp ne i32 %bf.clear22, 0, !dbg !2328
  %add.ptr = getelementptr %struct._object, %struct._object* %call8, i64 3, !dbg !2330
  %6 = bitcast %struct._object* %add.ptr to i8*, !dbg !2330
  %7 = bitcast %struct._typeobject** %data to i8*, !dbg !2332
  %cond = select i1 %tobool23, i8* %6, i8* %7, !dbg !2328
  %cmp34 = icmp eq i32 %bf.clear, 2, !dbg !2334
  %tobool41 = icmp ne i32 %bf.clear16, 0, !dbg !2336
  br i1 %cmp12, label %cond.true.us.preheader, label %cond.false.29.preheader, !dbg !2322

cond.false.29.preheader:                          ; preds = %for.body.lr.ph
  br label %cond.false.29, !dbg !2334

cond.true.us.preheader:                           ; preds = %for.body.lr.ph
  br label %cond.true.us, !dbg !2324

cond.true.us:                                     ; preds = %cond.true.us.preheader, %for.inc.us
  %i.0401.us = phi i64 [ %inc.us, %for.inc.us ], [ %3, %cond.true.us.preheader ]
  %ressize.0400.us = phi i32 [ %ressize.1.us, %for.inc.us ], [ 0, %cond.true.us.preheader ]
  br i1 %tobool17, label %cond.false.26.us, label %cond.end.87.us, !dbg !2324

cond.false.26.us:                                 ; preds = %cond.true.us
  %8 = load i8*, i8** %any, align 8, !dbg !2326, !tbaa !1106
  br label %cond.end.87.us, !dbg !2326

cond.end.87.us:                                   ; preds = %cond.false.26.us, %cond.true.us
  %cond28.us = phi i8* [ %8, %cond.false.26.us ], [ %cond, %cond.true.us ], !dbg !2322
  %arrayidx.us = getelementptr i8, i8* %cond28.us, i64 %i.0401.us, !dbg !2338
  %9 = load i8, i8* %arrayidx.us, align 1, !dbg !2338, !tbaa !1292
  %cmp89.us = icmp ult i8 %9, 10, !dbg !2341
  br i1 %cmp89.us, label %if.then.91.us, label %if.else.us, !dbg !2343

if.else.us:                                       ; preds = %cond.end.87.us
  %cmp92.us = icmp ult i8 %9, 100, !dbg !2344
  br i1 %cmp92.us, label %if.then.94.us, label %if.then.99.us, !dbg !2346

if.then.99.us:                                    ; preds = %if.else.us
  %add100.us = add i32 %ressize.0400.us, 6, !dbg !2347
  call void @llvm.dbg.value(metadata i32 %add100.us, i64 0, metadata !693, metadata !1099), !dbg !2317
  br label %for.inc.us, !dbg !2349

if.then.94.us:                                    ; preds = %if.else.us
  %add95.us = add i32 %ressize.0400.us, 5, !dbg !2350
  call void @llvm.dbg.value(metadata i32 %add95.us, i64 0, metadata !693, metadata !1099), !dbg !2317
  br label %for.inc.us, !dbg !2351

if.then.91.us:                                    ; preds = %cond.end.87.us
  %add.us = add i32 %ressize.0400.us, 4, !dbg !2352
  call void @llvm.dbg.value(metadata i32 %add.us, i64 0, metadata !693, metadata !1099), !dbg !2317
  br label %for.inc.us, !dbg !2353

for.inc.us:                                       ; preds = %if.then.91.us, %if.then.94.us, %if.then.99.us
  %ressize.1.us = phi i32 [ %add.us, %if.then.91.us ], [ %add95.us, %if.then.94.us ], [ %add100.us, %if.then.99.us ]
  %inc.us = add nsw i64 %i.0401.us, 1, !dbg !2354
  call void @llvm.dbg.value(metadata i64 %inc.us, i64 0, metadata !688, metadata !1099), !dbg !2316
  call void @llvm.dbg.value(metadata i64* %end, i64 0, metadata !690, metadata !1099), !dbg !2305
  %cmp.us = icmp slt i64 %inc.us, %4, !dbg !2320
  br i1 %cmp.us, label %cond.true.us, label %for.end.loopexit, !dbg !2321

cond.false.29:                                    ; preds = %cond.false.29.preheader, %for.inc
  %i.0401 = phi i64 [ %inc, %for.inc ], [ %3, %cond.false.29.preheader ]
  %ressize.0400 = phi i32 [ %ressize.1, %for.inc ], [ 0, %cond.false.29.preheader ]
  br i1 %cmp34, label %cond.true.36, label %cond.false.61, !dbg !2334

cond.true.36:                                     ; preds = %cond.false.29
  br i1 %tobool41, label %cond.end.57, label %cond.false.54, !dbg !2336

cond.false.54:                                    ; preds = %cond.true.36
  %10 = load i8*, i8** %any, align 8, !dbg !2355, !tbaa !1106
  br label %cond.end.57, !dbg !2355

cond.end.57:                                      ; preds = %cond.true.36, %cond.false.54
  %cond58 = phi i8* [ %10, %cond.false.54 ], [ %cond, %cond.true.36 ], !dbg !2322
  %11 = bitcast i8* %cond58 to i16*, !dbg !2357
  %arrayidx59 = getelementptr i16, i16* %11, i64 %i.0401, !dbg !2357
  %12 = load i16, i16* %arrayidx59, align 2, !dbg !2357, !tbaa !2183
  %conv60 = zext i16 %12 to i32, !dbg !2357
  br label %cond.end.87, !dbg !2357

cond.false.61:                                    ; preds = %cond.false.29
  br i1 %tobool41, label %cond.end.82, label %cond.false.79, !dbg !2360

cond.false.79:                                    ; preds = %cond.false.61
  %13 = load i8*, i8** %any, align 8, !dbg !2362, !tbaa !1106
  br label %cond.end.82, !dbg !2362

cond.end.82:                                      ; preds = %cond.false.61, %cond.false.79
  %cond83 = phi i8* [ %13, %cond.false.79 ], [ %cond, %cond.false.61 ], !dbg !2322
  %14 = bitcast i8* %cond83 to i32*, !dbg !2364
  %arrayidx84 = getelementptr i32, i32* %14, i64 %i.0401, !dbg !2364
  %15 = load i32, i32* %arrayidx84, align 4, !dbg !2364, !tbaa !2195
  br label %cond.end.87, !dbg !2364

cond.end.87:                                      ; preds = %cond.end.57, %cond.end.82
  %cond88 = phi i32 [ %conv60, %cond.end.57 ], [ %15, %cond.end.82 ], !dbg !2322
  call void @llvm.dbg.value(metadata i32 %cond88, i64 0, metadata !694, metadata !1099), !dbg !2367
  %cmp89 = icmp ult i32 %cond88, 10, !dbg !2341
  br i1 %cmp89, label %if.then.91, label %if.else, !dbg !2343

if.then.91:                                       ; preds = %cond.end.87
  %add = add i32 %ressize.0400, 4, !dbg !2352
  call void @llvm.dbg.value(metadata i32 %add, i64 0, metadata !693, metadata !1099), !dbg !2317
  br label %for.inc, !dbg !2353

if.else:                                          ; preds = %cond.end.87
  %cmp92 = icmp ult i32 %cond88, 100, !dbg !2344
  br i1 %cmp92, label %if.then.94, label %if.else.96, !dbg !2346

if.then.94:                                       ; preds = %if.else
  %add95 = add i32 %ressize.0400, 5, !dbg !2350
  call void @llvm.dbg.value(metadata i32 %add95, i64 0, metadata !693, metadata !1099), !dbg !2317
  br label %for.inc, !dbg !2351

if.else.96:                                       ; preds = %if.else
  %cmp97 = icmp ult i32 %cond88, 1000, !dbg !2368
  br i1 %cmp97, label %if.then.99, label %if.else.101, !dbg !2369

if.then.99:                                       ; preds = %if.else.96
  %add100 = add i32 %ressize.0400, 6, !dbg !2347
  call void @llvm.dbg.value(metadata i32 %add100, i64 0, metadata !693, metadata !1099), !dbg !2317
  br label %for.inc, !dbg !2349

if.else.101:                                      ; preds = %if.else.96
  %cmp102 = icmp ult i32 %cond88, 10000, !dbg !2370
  br i1 %cmp102, label %if.then.104, label %if.else.106, !dbg !2372

if.then.104:                                      ; preds = %if.else.101
  %add105 = add i32 %ressize.0400, 7, !dbg !2373
  call void @llvm.dbg.value(metadata i32 %add105, i64 0, metadata !693, metadata !1099), !dbg !2317
  br label %for.inc, !dbg !2374

if.else.106:                                      ; preds = %if.else.101
  %cmp107 = icmp ult i32 %cond88, 100000, !dbg !2375
  br i1 %cmp107, label %if.then.109, label %if.else.111, !dbg !2377

if.then.109:                                      ; preds = %if.else.106
  %add110 = add i32 %ressize.0400, 8, !dbg !2378
  call void @llvm.dbg.value(metadata i32 %add110, i64 0, metadata !693, metadata !1099), !dbg !2317
  br label %for.inc, !dbg !2379

if.else.111:                                      ; preds = %if.else.106
  %cmp112 = icmp ult i32 %cond88, 1000000, !dbg !2380
  br i1 %cmp112, label %if.then.114, label %if.else.116, !dbg !2382

if.then.114:                                      ; preds = %if.else.111
  %add115 = add i32 %ressize.0400, 9, !dbg !2383
  call void @llvm.dbg.value(metadata i32 %add115, i64 0, metadata !693, metadata !1099), !dbg !2317
  br label %for.inc, !dbg !2384

if.else.116:                                      ; preds = %if.else.111
  %add117 = add i32 %ressize.0400, 10, !dbg !2385
  call void @llvm.dbg.value(metadata i32 %add117, i64 0, metadata !693, metadata !1099), !dbg !2317
  br label %for.inc

for.inc:                                          ; preds = %if.then.91, %if.then.99, %if.then.109, %if.else.116, %if.then.114, %if.then.104, %if.then.94
  %ressize.1 = phi i32 [ %add, %if.then.91 ], [ %add95, %if.then.94 ], [ %add100, %if.then.99 ], [ %add105, %if.then.104 ], [ %add110, %if.then.109 ], [ %add115, %if.then.114 ], [ %add117, %if.else.116 ]
  %inc = add nsw i64 %i.0401, 1, !dbg !2354
  call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !688, metadata !1099), !dbg !2316
  call void @llvm.dbg.value(metadata i64* %end, i64 0, metadata !690, metadata !1099), !dbg !2305
  %cmp = icmp slt i64 %inc, %4, !dbg !2320
  br i1 %cmp, label %cond.false.29, label %for.end.loopexit412, !dbg !2321

for.end.loopexit:                                 ; preds = %for.inc.us
  %ressize.1.us.lcssa = phi i32 [ %ressize.1.us, %for.inc.us ]
  br label %for.end, !dbg !2386

for.end.loopexit412:                              ; preds = %for.inc
  %ressize.1.lcssa = phi i32 [ %ressize.1, %for.inc ]
  br label %for.end, !dbg !2386

for.end:                                          ; preds = %for.end.loopexit412, %for.end.loopexit, %if.end.11
  %ressize.0.lcssa = phi i32 [ 0, %if.end.11 ], [ %ressize.1.us.lcssa, %for.end.loopexit ], [ %ressize.1.lcssa, %for.end.loopexit412 ]
  %conv124 = sext i32 %ressize.0.lcssa to i64, !dbg !2386
  %call125 = call %struct._object* @PyUnicode_New(i64 %conv124, i32 127) #2, !dbg !2387
  call void @llvm.dbg.value(metadata %struct._object* %call125, i64 0, metadata !691, metadata !1099), !dbg !2388
  %cmp126 = icmp eq %struct._object* %call125, null, !dbg !2389
  br i1 %cmp126, label %do.body, label %if.end.134, !dbg !2390

do.body:                                          ; preds = %for.end
  call void @llvm.dbg.value(metadata %struct._object* %call8, i64 0, metadata !695, metadata !1099), !dbg !2391
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call8, i64 0, i32 0, !dbg !2393
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !2393, !tbaa !1209
  %dec = add i64 %16, -1, !dbg !2393
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2393, !tbaa !1209
  %cmp129 = icmp eq i64 %dec, 0, !dbg !2393
  br i1 %cmp129, label %if.else.132, label %cleanup, !dbg !2395

if.else.132:                                      ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call8, i64 0, i32 1, !dbg !2396
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2396, !tbaa !1214
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 4, !dbg !2396
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2396, !tbaa !1215
  call void %18(%struct._object* %call8) #2, !dbg !2396
  br label %cleanup

if.end.134:                                       ; preds = %for.end
  %state135 = getelementptr inbounds %struct._object, %struct._object* %call125, i64 2, !dbg !2398
  %19 = bitcast %struct._object* %state135 to i32*, !dbg !2398
  %bf.load136 = load i32, i32* %19, align 4, !dbg !2398
  %bf.clear138 = and i32 %bf.load136, 32, !dbg !2398
  %tobool139 = icmp eq i32 %bf.clear138, 0, !dbg !2398
  br i1 %tobool139, label %cond.false.152, label %cond.true.140, !dbg !2398

cond.true.140:                                    ; preds = %if.end.134
  %bf.clear144 = and i32 %bf.load136, 64, !dbg !2399
  %tobool145 = icmp ne i32 %bf.clear144, 0, !dbg !2399
  %add.ptr147 = getelementptr %struct._object, %struct._object* %call125, i64 3, !dbg !2401
  %20 = bitcast %struct._object* %add.ptr147 to i8*, !dbg !2401
  %add.ptr149 = getelementptr %struct._object, %struct._object* %call125, i64 4, i32 1, !dbg !2403
  %21 = bitcast %struct._typeobject** %add.ptr149 to i8*, !dbg !2403
  %cond151 = select i1 %tobool145, i8* %20, i8* %21, !dbg !2399
  br label %cond.end.155, !dbg !2399

cond.false.152:                                   ; preds = %if.end.134
  %data153 = getelementptr inbounds %struct._object, %struct._object* %call125, i64 4, i32 1, !dbg !2405
  %any154 = bitcast %struct._typeobject** %data153 to i8**, !dbg !2405
  %22 = load i8*, i8** %any154, align 8, !dbg !2405, !tbaa !1106
  br label %cond.end.155, !dbg !2405

cond.end.155:                                     ; preds = %cond.true.140, %cond.false.152
  %cond156 = phi i8* [ %22, %cond.false.152 ], [ %cond151, %cond.true.140 ], !dbg !2398
  call void @llvm.dbg.value(metadata i8* %cond156, i64 0, metadata !692, metadata !1099), !dbg !2407
  call void @llvm.dbg.value(metadata i64* %start, i64 0, metadata !689, metadata !1099), !dbg !2301
  %23 = load i64, i64* %start, align 8, !dbg !2408, !tbaa !2131
  call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !688, metadata !1099), !dbg !2316
  call void @llvm.dbg.value(metadata i64* %end, i64 0, metadata !690, metadata !1099), !dbg !2305
  %24 = load i64, i64* %end, align 8, !dbg !2409, !tbaa !2131
  %cmp158.395 = icmp slt i64 %23, %24, !dbg !2410
  br i1 %cmp158.395, label %for.body.160.lr.ph, label %for.end.293, !dbg !2411

for.body.160.lr.ph:                               ; preds = %cond.end.155
  %state161 = getelementptr inbounds %struct._object, %struct._object* %call8, i64 2, !dbg !2412
  %25 = bitcast %struct._object* %state161 to i32*, !dbg !2412
  %data186 = getelementptr inbounds %struct._object, %struct._object* %call8, i64 4, i32 1, !dbg !2413
  %any187 = bitcast %struct._typeobject** %data186 to i8**, !dbg !2413
  %add.ptr180 = getelementptr %struct._object, %struct._object* %call8, i64 3, !dbg !2415
  %26 = bitcast %struct._object* %add.ptr180 to i8*, !dbg !2415
  %27 = bitcast %struct._typeobject** %data186 to i8*, !dbg !2417
  br label %for.body.160, !dbg !2411

for.body.160:                                     ; preds = %for.body.160.lr.ph, %while.end
  %i.1397 = phi i64 [ %23, %for.body.160.lr.ph ], [ %inc292, %while.end ]
  %outp.0396 = phi i8* [ %cond156, %for.body.160.lr.ph ], [ %incdec.ptr290, %while.end ]
  %bf.load162 = load i32, i32* %25, align 4, !dbg !2412
  %bf.lshr163 = lshr i32 %bf.load162, 2, !dbg !2412
  %bf.clear164 = and i32 %bf.lshr163, 7, !dbg !2412
  %cmp165 = icmp eq i32 %bf.clear164, 1, !dbg !2412
  br i1 %cmp165, label %cond.true.167, label %cond.false.192, !dbg !2412

cond.true.167:                                    ; preds = %for.body.160
  %bf.clear171 = and i32 %bf.load162, 32, !dbg !2419
  %tobool172 = icmp eq i32 %bf.clear171, 0, !dbg !2419
  br i1 %tobool172, label %cond.false.185, label %cond.true.173, !dbg !2419

cond.true.173:                                    ; preds = %cond.true.167
  %bf.clear177 = and i32 %bf.load162, 64, !dbg !2421
  %tobool178 = icmp ne i32 %bf.clear177, 0, !dbg !2421
  %cond184 = select i1 %tobool178, i8* %26, i8* %27, !dbg !2421
  br label %cond.end.188, !dbg !2421

cond.false.185:                                   ; preds = %cond.true.167
  %28 = load i8*, i8** %any187, align 8, !dbg !2413, !tbaa !1106
  br label %cond.end.188, !dbg !2413

cond.end.188:                                     ; preds = %cond.true.173, %cond.false.185
  %cond189 = phi i8* [ %28, %cond.false.185 ], [ %cond184, %cond.true.173 ], !dbg !2412
  %arrayidx190 = getelementptr i8, i8* %cond189, i64 %i.1397, !dbg !2423
  %29 = load i8, i8* %arrayidx190, align 1, !dbg !2423, !tbaa !1292
  %conv191 = zext i8 %29 to i32, !dbg !2423
  br label %cond.end.250, !dbg !2423

cond.false.192:                                   ; preds = %for.body.160
  %cmp197 = icmp eq i32 %bf.clear164, 2, !dbg !2426
  %bf.clear203 = and i32 %bf.load162, 32, !dbg !2428
  %tobool204 = icmp ne i32 %bf.clear203, 0, !dbg !2428
  br i1 %cmp197, label %cond.true.199, label %cond.false.224, !dbg !2426

cond.true.199:                                    ; preds = %cond.false.192
  br i1 %tobool204, label %cond.true.205, label %cond.false.217, !dbg !2428

cond.true.205:                                    ; preds = %cond.true.199
  %bf.clear209 = and i32 %bf.load162, 64, !dbg !2430
  %tobool210 = icmp ne i32 %bf.clear209, 0, !dbg !2430
  %cond216 = select i1 %tobool210, i8* %26, i8* %27, !dbg !2430
  br label %cond.end.220, !dbg !2430

cond.false.217:                                   ; preds = %cond.true.199
  %30 = load i8*, i8** %any187, align 8, !dbg !2432, !tbaa !1106
  br label %cond.end.220, !dbg !2432

cond.end.220:                                     ; preds = %cond.true.205, %cond.false.217
  %cond221 = phi i8* [ %30, %cond.false.217 ], [ %cond216, %cond.true.205 ], !dbg !2412
  %31 = bitcast i8* %cond221 to i16*, !dbg !2434
  %arrayidx222 = getelementptr i16, i16* %31, i64 %i.1397, !dbg !2434
  %32 = load i16, i16* %arrayidx222, align 2, !dbg !2434, !tbaa !2183
  %conv223 = zext i16 %32 to i32, !dbg !2434
  br label %cond.end.250, !dbg !2434

cond.false.224:                                   ; preds = %cond.false.192
  br i1 %tobool204, label %cond.true.230, label %cond.false.242, !dbg !2437

cond.true.230:                                    ; preds = %cond.false.224
  %bf.clear234 = and i32 %bf.load162, 64, !dbg !2439
  %tobool235 = icmp ne i32 %bf.clear234, 0, !dbg !2439
  %cond241 = select i1 %tobool235, i8* %26, i8* %27, !dbg !2439
  br label %cond.end.245, !dbg !2439

cond.false.242:                                   ; preds = %cond.false.224
  %33 = load i8*, i8** %any187, align 8, !dbg !2441, !tbaa !1106
  br label %cond.end.245, !dbg !2441

cond.end.245:                                     ; preds = %cond.true.230, %cond.false.242
  %cond246 = phi i8* [ %33, %cond.false.242 ], [ %cond241, %cond.true.230 ], !dbg !2412
  %34 = bitcast i8* %cond246 to i32*, !dbg !2443
  %arrayidx247 = getelementptr i32, i32* %34, i64 %i.1397, !dbg !2443
  %35 = load i32, i32* %arrayidx247, align 4, !dbg !2443, !tbaa !2195
  br label %cond.end.250, !dbg !2443

cond.end.250:                                     ; preds = %cond.end.220, %cond.end.245, %cond.end.188
  %cond251 = phi i32 [ %conv191, %cond.end.188 ], [ %conv223, %cond.end.220 ], [ %35, %cond.end.245 ], !dbg !2412
  call void @llvm.dbg.value(metadata i32 %cond251, i64 0, metadata !694, metadata !1099), !dbg !2367
  %incdec.ptr = getelementptr i8, i8* %outp.0396, i64 1, !dbg !2446
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !692, metadata !1099), !dbg !2407
  store i8 38, i8* %outp.0396, align 1, !dbg !2447, !tbaa !1292
  %incdec.ptr252 = getelementptr i8, i8* %outp.0396, i64 2, !dbg !2448
  call void @llvm.dbg.value(metadata i8* %incdec.ptr252, i64 0, metadata !692, metadata !1099), !dbg !2407
  store i8 35, i8* %incdec.ptr, align 1, !dbg !2449, !tbaa !1292
  %cmp253 = icmp ult i32 %cond251, 10, !dbg !2450
  br i1 %cmp253, label %while.body.preheader, label %if.else.256, !dbg !2452

if.else.256:                                      ; preds = %cond.end.250
  %cmp257 = icmp ult i32 %cond251, 100, !dbg !2453
  br i1 %cmp257, label %while.body.preheader, label %if.else.260, !dbg !2455

if.else.260:                                      ; preds = %if.else.256
  %cmp261 = icmp ult i32 %cond251, 1000, !dbg !2456
  br i1 %cmp261, label %while.body.preheader, label %if.else.264, !dbg !2458

if.else.264:                                      ; preds = %if.else.260
  %cmp265 = icmp ult i32 %cond251, 10000, !dbg !2459
  br i1 %cmp265, label %while.body.preheader, label %if.else.268, !dbg !2461

if.else.268:                                      ; preds = %if.else.264
  %cmp269 = icmp ult i32 %cond251, 100000, !dbg !2462
  br i1 %cmp269, label %while.body.preheader, label %if.else.272, !dbg !2464

if.else.272:                                      ; preds = %if.else.268
  %cmp273 = icmp ult i32 %cond251, 1000000, !dbg !2465
  %. = select i1 %cmp273, i32 6, i32 7, !dbg !2467
  %.390 = select i1 %cmp273, i32 100000, i32 1000000, !dbg !2467
  br label %while.body.preheader, !dbg !2467

while.body.preheader:                             ; preds = %cond.end.250, %if.else.256, %if.else.260, %if.else.264, %if.else.268, %if.else.272
  %base.0394.ph = phi i32 [ 1, %cond.end.250 ], [ 10, %if.else.256 ], [ 100, %if.else.260 ], [ 1000, %if.else.264 ], [ 10000, %if.else.268 ], [ %.390, %if.else.272 ]
  %digits.0393.ph = phi i32 [ 1, %cond.end.250 ], [ 2, %if.else.256 ], [ 3, %if.else.260 ], [ 4, %if.else.264 ], [ 5, %if.else.268 ], [ %., %if.else.272 ]
  br label %while.body, !dbg !2469

while.body:                                       ; preds = %while.body.preheader, %while.body
  %base.0394 = phi i32 [ %div289, %while.body ], [ %base.0394.ph, %while.body.preheader ]
  %digits.0393 = phi i32 [ %dec283, %while.body ], [ %digits.0393.ph, %while.body.preheader ]
  %ch.0392 = phi i32 [ %rem, %while.body ], [ %cond251, %while.body.preheader ]
  %outp.1391 = phi i8* [ %incdec.ptr288, %while.body ], [ %incdec.ptr252, %while.body.preheader ]
  %dec283 = add nsw i32 %digits.0393, -1, !dbg !2469
  %div = udiv i32 %ch.0392, %base.0394, !dbg !2471
  %add286 = add i32 %div, 48, !dbg !2473
  %conv287 = trunc i32 %add286 to i8, !dbg !2474
  %incdec.ptr288 = getelementptr i8, i8* %outp.1391, i64 1, !dbg !2475
  call void @llvm.dbg.value(metadata i8* %incdec.ptr288, i64 0, metadata !692, metadata !1099), !dbg !2407
  store i8 %conv287, i8* %outp.1391, align 1, !dbg !2476, !tbaa !1292
  %rem = urem i32 %ch.0392, %base.0394, !dbg !2477
  call void @llvm.dbg.value(metadata i32 %rem, i64 0, metadata !694, metadata !1099), !dbg !2367
  %div289 = sdiv i32 %base.0394, 10, !dbg !2478
  call void @llvm.dbg.value(metadata i32 %div289, i64 0, metadata !703, metadata !1099), !dbg !2479
  call void @llvm.dbg.value(metadata i32 %dec283, i64 0, metadata !699, metadata !1099), !dbg !2480
  %cmp284 = icmp sgt i32 %digits.0393, 1, !dbg !2481
  br i1 %cmp284, label %while.body, label %while.end, !dbg !2482

while.end:                                        ; preds = %while.body
  %incdec.ptr288.lcssa = phi i8* [ %incdec.ptr288, %while.body ]
  %outp.1391.lcssa = phi i8* [ %outp.1391, %while.body ]
  %incdec.ptr290 = getelementptr i8, i8* %outp.1391.lcssa, i64 2, !dbg !2483
  call void @llvm.dbg.value(metadata i8* %incdec.ptr290, i64 0, metadata !692, metadata !1099), !dbg !2407
  store i8 59, i8* %incdec.ptr288.lcssa, align 1, !dbg !2484, !tbaa !1292
  %inc292 = add i64 %i.1397, 1, !dbg !2485
  call void @llvm.dbg.value(metadata i64 %inc292, i64 0, metadata !688, metadata !1099), !dbg !2316
  call void @llvm.dbg.value(metadata i64* %end, i64 0, metadata !690, metadata !1099), !dbg !2305
  %36 = load i64, i64* %end, align 8, !dbg !2409, !tbaa !2131
  %cmp158 = icmp slt i64 %inc292, %36, !dbg !2410
  br i1 %cmp158, label %for.body.160, label %for.end.293.loopexit, !dbg !2411

for.end.293.loopexit:                             ; preds = %while.end
  %.lcssa414 = phi i64 [ %36, %while.end ]
  br label %for.end.293, !dbg !2486

for.end.293:                                      ; preds = %for.end.293.loopexit, %cond.end.155
  %.lcssa = phi i64 [ %24, %cond.end.155 ], [ %.lcssa414, %for.end.293.loopexit ]
  %call294 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), %struct._object* %call125, i64 %.lcssa) #2, !dbg !2486
  call void @llvm.dbg.value(metadata %struct._object* %call294, i64 0, metadata !684, metadata !1099), !dbg !2487
  call void @llvm.dbg.value(metadata %struct._object* %call8, i64 0, metadata !704, metadata !1099), !dbg !2488
  %ob_refcnt297 = getelementptr inbounds %struct._object, %struct._object* %call8, i64 0, i32 0, !dbg !2490
  %37 = load i64, i64* %ob_refcnt297, align 8, !dbg !2490, !tbaa !1209
  %dec298 = add i64 %37, -1, !dbg !2490
  store i64 %dec298, i64* %ob_refcnt297, align 8, !dbg !2490, !tbaa !1209
  %cmp299 = icmp eq i64 %dec298, 0, !dbg !2490
  br i1 %cmp299, label %if.else.302, label %cleanup, !dbg !2492

if.else.302:                                      ; preds = %for.end.293
  %ob_type303 = getelementptr inbounds %struct._object, %struct._object* %call8, i64 0, i32 1, !dbg !2493
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type303, align 8, !dbg !2493, !tbaa !1214
  %tp_dealloc304 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i64 0, i32 4, !dbg !2493
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc304, align 8, !dbg !2493, !tbaa !1215
  call void %39(%struct._object* %call8) #2, !dbg !2493
  br label %cleanup

cleanup:                                          ; preds = %if.else.302, %for.end.293, %if.else.132, %do.body, %if.end.7, %if.end, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ null, %if.end ], [ null, %if.end.7 ], [ null, %do.body ], [ null, %if.else.132 ], [ %call294, %for.end.293 ], [ %call294, %if.else.302 ]
  call void @llvm.lifetime.end(i64 8, i8* %2) #2, !dbg !2495
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !2495
  br label %return

if.else.316:                                      ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %exc, i64 0, metadata !893, metadata !1099) #2, !dbg !2496
  %call.i = tail call %struct._object* @_PyObject_GetAttrId(%struct._object* %exc, %struct._Py_Identifier* nonnull @wrong_exception_type.PyId___class__) #2, !dbg !2499
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !894, metadata !1099) #2, !dbg !2500
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !2501
  br i1 %cmp.i, label %return, label %if.then.i, !dbg !2502

if.then.i:                                        ; preds = %if.else.316
  %call1.i = tail call %struct._object* @_PyObject_GetAttrId(%struct._object* %call.i, %struct._Py_Identifier* nonnull @wrong_exception_type.PyId___name__) #2, !dbg !2503
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i, i64 0, metadata !895, metadata !1099) #2, !dbg !2504
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !898, metadata !1099) #2, !dbg !2505
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !2506
  %40 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2506, !tbaa !1209
  %dec.i = add i64 %40, -1, !dbg !2506
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2506, !tbaa !1209
  %cmp2.i = icmp eq i64 %dec.i, 0, !dbg !2506
  br i1 %cmp2.i, label %if.else.i, label %if.end.i, !dbg !2507

if.else.i:                                        ; preds = %if.then.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !2508
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2508, !tbaa !1214
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i64 0, i32 4, !dbg !2508
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2508, !tbaa !1215
  tail call void %42(%struct._object* %call.i) #2, !dbg !2508
  br label %if.end.i, !dbg !2509

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %cmp4.i = icmp eq %struct._object* %call1.i, null, !dbg !2510
  br i1 %cmp4.i, label %return, label %if.then.5.i, !dbg !2511

if.then.5.i:                                      ; preds = %if.end.i
  %43 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2512, !tbaa !1106
  %call6.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %43, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i64 0, i64 0), %struct._object* %call1.i) #2, !dbg !2513
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i, i64 0, metadata !900, metadata !1099) #2, !dbg !2514
  %ob_refcnt9.i = getelementptr inbounds %struct._object, %struct._object* %call1.i, i64 0, i32 0, !dbg !2515
  %44 = load i64, i64* %ob_refcnt9.i, align 8, !dbg !2515, !tbaa !1209
  %dec10.i = add i64 %44, -1, !dbg !2515
  store i64 %dec10.i, i64* %ob_refcnt9.i, align 8, !dbg !2515, !tbaa !1209
  %cmp11.i = icmp eq i64 %dec10.i, 0, !dbg !2515
  br i1 %cmp11.i, label %if.else.13.i, label %return, !dbg !2516

if.else.13.i:                                     ; preds = %if.then.5.i
  %ob_type14.i = getelementptr inbounds %struct._object, %struct._object* %call1.i, i64 0, i32 1, !dbg !2517
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type14.i, align 8, !dbg !2517, !tbaa !1214
  %tp_dealloc15.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i64 0, i32 4, !dbg !2517
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc15.i, align 8, !dbg !2517, !tbaa !1215
  tail call void %46(%struct._object* %call1.i) #2, !dbg !2517
  br label %return, !dbg !2509

return:                                           ; preds = %if.else.13.i, %if.then.5.i, %if.end.i, %if.else.316, %cleanup
  %retval.1 = phi %struct._object* [ %retval.0, %cleanup ], [ null, %if.else.316 ], [ null, %if.end.i ], [ null, %if.then.5.i ], [ null, %if.else.13.i ]
  ret %struct._object* %retval.1, !dbg !2518
}

declare %struct._object* @PyUnicodeEncodeError_GetObject(%struct._object*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_BackslashReplaceErrors(%struct._object* %exc) #0 {
entry:
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %exc, i64 0, metadata !708, metadata !1099), !dbg !2519
  %0 = load %struct._object*, %struct._object** @PyExc_UnicodeEncodeError, align 8, !dbg !2520, !tbaa !1106
  %call = tail call i32 @PyObject_IsInstance(%struct._object* %exc, %struct._object* %0) #2, !dbg !2521
  %tobool = icmp eq i32 %call, 0, !dbg !2521
  br i1 %tobool, label %if.else.299, label %if.then, !dbg !2522

if.then:                                          ; preds = %entry
  %1 = bitcast i64* %start to i8*, !dbg !2523
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2523
  %2 = bitcast i64* %end to i8*, !dbg !2524
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2524
  tail call void @llvm.dbg.value(metadata i64* %start, i64 0, metadata !714, metadata !1099), !dbg !2525
  %call1 = call i32 @PyUnicodeEncodeError_GetStart(%struct._object* %exc, i64* nonnull %start) #2, !dbg !2526
  %tobool2 = icmp eq i32 %call1, 0, !dbg !2526
  br i1 %tobool2, label %if.end, label %cleanup, !dbg !2528

if.end:                                           ; preds = %if.then
  call void @llvm.dbg.value(metadata i64* %end, i64 0, metadata !715, metadata !1099), !dbg !2529
  %call4 = call i32 @PyUnicodeEncodeError_GetEnd(%struct._object* %exc, i64* nonnull %end) #2, !dbg !2530
  %tobool5 = icmp eq i32 %call4, 0, !dbg !2530
  br i1 %tobool5, label %if.end.7, label %cleanup, !dbg !2532

if.end.7:                                         ; preds = %if.end
  %call8 = call %struct._object* @PyUnicodeEncodeError_GetObject(%struct._object* %exc) #2, !dbg !2533
  call void @llvm.dbg.value(metadata %struct._object* %call8, i64 0, metadata !712, metadata !1099), !dbg !2535
  %tobool9 = icmp eq %struct._object* %call8, null, !dbg !2536
  br i1 %tobool9, label %cleanup, label %if.end.11, !dbg !2537

if.end.11:                                        ; preds = %if.end.7
  call void @llvm.dbg.value(metadata i64* %start, i64 0, metadata !714, metadata !1099), !dbg !2525
  %3 = load i64, i64* %start, align 8, !dbg !2538, !tbaa !2131
  call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !713, metadata !1099), !dbg !2540
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !718, metadata !1099), !dbg !2541
  call void @llvm.dbg.value(metadata i64* %end, i64 0, metadata !715, metadata !1099), !dbg !2529
  %4 = load i64, i64* %end, align 8, !dbg !2542, !tbaa !2131
  %cmp.385 = icmp sgt i64 %4, %3, !dbg !2544
  br i1 %cmp.385, label %for.body.lr.ph, label %for.end, !dbg !2545

for.body.lr.ph:                                   ; preds = %if.end.11
  %state = getelementptr inbounds %struct._object, %struct._object* %call8, i64 2, !dbg !2546
  %5 = bitcast %struct._object* %state to i32*, !dbg !2546
  %bf.load = load i32, i32* %5, align 4, !dbg !2546
  %bf.lshr = lshr i32 %bf.load, 2, !dbg !2546
  %bf.clear = and i32 %bf.lshr, 7, !dbg !2546
  %bf.clear40 = and i32 %bf.load, 32, !dbg !2548
  %tobool41 = icmp ne i32 %bf.clear40, 0, !dbg !2548
  %bf.clear46 = and i32 %bf.load, 64, !dbg !2550
  %tobool47 = icmp ne i32 %bf.clear46, 0, !dbg !2550
  %add.ptr49 = getelementptr %struct._object, %struct._object* %call8, i64 3, !dbg !2552
  %6 = bitcast %struct._object* %add.ptr49 to i8*, !dbg !2552
  %add.ptr51 = getelementptr %struct._object, %struct._object* %call8, i64 4, i32 1, !dbg !2554
  %7 = bitcast %struct._typeobject** %add.ptr51 to i8*, !dbg !2554
  %cond53 = select i1 %tobool47, i8* %6, i8* %7, !dbg !2550
  %any56 = bitcast %struct._typeobject** %add.ptr51 to i8**, !dbg !2556
  switch i32 %bf.clear, label %cond.false.61.preheader [
    i32 1, label %for.inc.us.preheader
    i32 2, label %cond.true.36.us405.preheader
  ], !dbg !2546

cond.true.36.us405.preheader:                     ; preds = %for.body.lr.ph
  %8 = sub i64 %4, %3, !dbg !2548
  %9 = add i64 %4, -1, !dbg !2548
  %xtraiter436 = and i64 %8, 1, !dbg !2548
  %lcmp.mod437 = icmp eq i64 %xtraiter436, 0, !dbg !2548
  br i1 %lcmp.mod437, label %cond.true.36.us405.preheader.split, label %cond.true.36.us405.prol, !dbg !2548

cond.true.36.us405.prol:                          ; preds = %cond.true.36.us405.preheader
  br i1 %tobool41, label %if.else.us412.prol, label %cond.false.54.us406.prol, !dbg !2548

cond.false.54.us406.prol:                         ; preds = %cond.true.36.us405.prol
  %10 = load i8*, i8** %any56, align 8, !dbg !2556, !tbaa !1106
  br label %if.else.us412.prol, !dbg !2556

if.else.us412.prol:                               ; preds = %cond.false.54.us406.prol, %cond.true.36.us405.prol
  %cond58.us.409.prol = phi i8* [ %10, %cond.false.54.us406.prol ], [ %cond53, %cond.true.36.us405.prol ], !dbg !2546
  %11 = bitcast i8* %cond58.us.409.prol to i16*, !dbg !2558
  %arrayidx59.us.410.prol = getelementptr i16, i16* %11, i64 %3, !dbg !2558
  %12 = load i16, i16* %arrayidx59.us.410.prol, align 2, !dbg !2558, !tbaa !2183
  %cmp92.us.415.prol = icmp ugt i16 %12, 255, !dbg !2561
  %ressize.1.us.423.v.prol = select i1 %cmp92.us.415.prol, i32 6, i32 4, !dbg !2564
  %inc.us.424.prol = add nsw i64 %3, 1, !dbg !2565
  call void @llvm.dbg.value(metadata i64 %inc.us.424.prol, i64 0, metadata !713, metadata !1099), !dbg !2540
  call void @llvm.dbg.value(metadata i64* %end, i64 0, metadata !715, metadata !1099), !dbg !2529
  br label %cond.true.36.us405.preheader.split, !dbg !2545

cond.true.36.us405.preheader.split:               ; preds = %cond.true.36.us405.preheader, %if.else.us412.prol
  %ressize.0390.us.393.unr = phi i32 [ 0, %cond.true.36.us405.preheader ], [ %ressize.1.us.423.v.prol, %if.else.us412.prol ]
  %i.0386.us.394.unr = phi i64 [ %3, %cond.true.36.us405.preheader ], [ %inc.us.424.prol, %if.else.us412.prol ]
  %ressize.1.us.423.lcssa.unr = phi i32 [ undef, %cond.true.36.us405.preheader ], [ %ressize.1.us.423.v.prol, %if.else.us412.prol ]
  %13 = icmp eq i64 %9, %3, !dbg !2548
  br i1 %13, label %for.end.loopexit434, label %cond.true.36.us405.preheader.split.split, !dbg !2548

cond.true.36.us405.preheader.split.split:         ; preds = %cond.true.36.us405.preheader.split
  br label %cond.true.36.us405, !dbg !2548

for.inc.us.preheader:                             ; preds = %for.body.lr.ph
  %14 = sub i64 %4, %3, !dbg !2566
  %15 = add i64 %4, -1, !dbg !2566
  %16 = sub i64 %15, %3, !dbg !2566
  %xtraiter = and i64 %14, 7, !dbg !2566
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !2566
  br i1 %lcmp.mod, label %for.inc.us.preheader.split, label %for.inc.us.prol.preheader, !dbg !2566

for.inc.us.prol.preheader:                        ; preds = %for.inc.us.preheader
  br label %for.inc.us.prol, !dbg !2566

for.inc.us.prol:                                  ; preds = %for.inc.us.prol.preheader, %for.inc.us.prol
  %ressize.0390.us.prol = phi i32 [ %add97.us.prol, %for.inc.us.prol ], [ 0, %for.inc.us.prol.preheader ]
  %i.0386.us.prol = phi i64 [ %inc.us.prol, %for.inc.us.prol ], [ %3, %for.inc.us.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %for.inc.us.prol ], [ %xtraiter, %for.inc.us.prol.preheader ]
  %add97.us.prol = add i32 %ressize.0390.us.prol, 4, !dbg !2566
  call void @llvm.dbg.value(metadata i32 %add97.us.prol, i64 0, metadata !718, metadata !1099), !dbg !2541
  %inc.us.prol = add nsw i64 %i.0386.us.prol, 1, !dbg !2565
  call void @llvm.dbg.value(metadata i64 %inc.us.prol, i64 0, metadata !713, metadata !1099), !dbg !2540
  call void @llvm.dbg.value(metadata i64* %end, i64 0, metadata !715, metadata !1099), !dbg !2529
  %prol.iter.sub = add i64 %prol.iter, -1, !dbg !2545
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0, !dbg !2545
  br i1 %prol.iter.cmp, label %for.inc.us.preheader.split.loopexit, label %for.inc.us.prol, !dbg !2545, !llvm.loop !2567

for.inc.us.preheader.split.loopexit:              ; preds = %for.inc.us.prol
  %inc.us.prol.lcssa = phi i64 [ %inc.us.prol, %for.inc.us.prol ]
  %add97.us.prol.lcssa = phi i32 [ %add97.us.prol, %for.inc.us.prol ]
  br label %for.inc.us.preheader.split, !dbg !2566

for.inc.us.preheader.split:                       ; preds = %for.inc.us.preheader.split.loopexit, %for.inc.us.preheader
  %ressize.0390.us.unr = phi i32 [ 0, %for.inc.us.preheader ], [ %add97.us.prol.lcssa, %for.inc.us.preheader.split.loopexit ]
  %i.0386.us.unr = phi i64 [ %3, %for.inc.us.preheader ], [ %inc.us.prol.lcssa, %for.inc.us.preheader.split.loopexit ]
  %add97.us.lcssa.unr = phi i32 [ undef, %for.inc.us.preheader ], [ %add97.us.prol.lcssa, %for.inc.us.preheader.split.loopexit ]
  %17 = icmp ult i64 %16, 7, !dbg !2566
  br i1 %17, label %for.end.loopexit433, label %for.inc.us.preheader.split.split, !dbg !2566

for.inc.us.preheader.split.split:                 ; preds = %for.inc.us.preheader.split
  br label %for.inc.us, !dbg !2566

cond.false.61.preheader:                          ; preds = %for.body.lr.ph
  br label %cond.false.61, !dbg !2568

for.inc.us:                                       ; preds = %for.inc.us, %for.inc.us.preheader.split.split
  %ressize.0390.us = phi i32 [ %ressize.0390.us.unr, %for.inc.us.preheader.split.split ], [ %add97.us.7, %for.inc.us ]
  %i.0386.us = phi i64 [ %i.0386.us.unr, %for.inc.us.preheader.split.split ], [ %inc.us.7, %for.inc.us ]
  call void @llvm.dbg.value(metadata i64* %end, i64 0, metadata !715, metadata !1099), !dbg !2529
  call void @llvm.dbg.value(metadata i64* %end, i64 0, metadata !715, metadata !1099), !dbg !2529
  call void @llvm.dbg.value(metadata i64* %end, i64 0, metadata !715, metadata !1099), !dbg !2529
  call void @llvm.dbg.value(metadata i64* %end, i64 0, metadata !715, metadata !1099), !dbg !2529
  call void @llvm.dbg.value(metadata i64* %end, i64 0, metadata !715, metadata !1099), !dbg !2529
  call void @llvm.dbg.value(metadata i64* %end, i64 0, metadata !715, metadata !1099), !dbg !2529
  call void @llvm.dbg.value(metadata i64* %end, i64 0, metadata !715, metadata !1099), !dbg !2529
  %add97.us.7 = add i32 %ressize.0390.us, 32, !dbg !2566
  %inc.us.7 = add nsw i64 %i.0386.us, 8, !dbg !2565
  call void @llvm.dbg.value(metadata i64* %end, i64 0, metadata !715, metadata !1099), !dbg !2529
  %cmp.us.7 = icmp slt i64 %inc.us.7, %4, !dbg !2544
  br i1 %cmp.us.7, label %for.inc.us, label %for.end.loopexit433.unr-lcssa, !dbg !2545

cond.true.36.us405:                               ; preds = %if.else.us412.1, %cond.true.36.us405.preheader.split.split
  %ressize.0390.us.393 = phi i32 [ %ressize.0390.us.393.unr, %cond.true.36.us405.preheader.split.split ], [ %ressize.1.us.423.1, %if.else.us412.1 ]
  %i.0386.us.394 = phi i64 [ %i.0386.us.394.unr, %cond.true.36.us405.preheader.split.split ], [ %inc.us.424.1, %if.else.us412.1 ]
  br i1 %tobool41, label %if.else.us412, label %cond.false.54.us406, !dbg !2548

cond.false.54.us406:                              ; preds = %cond.true.36.us405
  %18 = load i8*, i8** %any56, align 8, !dbg !2556, !tbaa !1106
  br label %if.else.us412, !dbg !2556

if.else.us412:                                    ; preds = %cond.false.54.us406, %cond.true.36.us405
  %cond58.us.409 = phi i8* [ %18, %cond.false.54.us406 ], [ %cond53, %cond.true.36.us405 ], !dbg !2546
  %19 = bitcast i8* %cond58.us.409 to i16*, !dbg !2558
  %arrayidx59.us.410 = getelementptr i16, i16* %19, i64 %i.0386.us.394, !dbg !2558
  %20 = load i16, i16* %arrayidx59.us.410, align 2, !dbg !2558, !tbaa !2183
  %cmp92.us.415 = icmp ugt i16 %20, 255, !dbg !2561
  %ressize.1.us.423.v = select i1 %cmp92.us.415, i32 6, i32 4, !dbg !2564
  %ressize.1.us.423 = add i32 %ressize.0390.us.393, %ressize.1.us.423.v, !dbg !2564
  %inc.us.424 = add nsw i64 %i.0386.us.394, 1, !dbg !2565
  call void @llvm.dbg.value(metadata i64 %inc.us.424, i64 0, metadata !713, metadata !1099), !dbg !2540
  call void @llvm.dbg.value(metadata i64* %end, i64 0, metadata !715, metadata !1099), !dbg !2529
  br i1 %tobool41, label %if.else.us412.1, label %cond.false.54.us406.1, !dbg !2548

cond.false.61:                                    ; preds = %cond.false.61.preheader, %for.inc
  %ressize.0390 = phi i32 [ %ressize.1, %for.inc ], [ 0, %cond.false.61.preheader ]
  %i.0386 = phi i64 [ %inc, %for.inc ], [ %3, %cond.false.61.preheader ]
  br i1 %tobool41, label %cond.end.87, label %cond.false.79, !dbg !2568

cond.false.79:                                    ; preds = %cond.false.61
  %21 = load i8*, i8** %any56, align 8, !dbg !2570, !tbaa !1106
  br label %cond.end.87, !dbg !2570

cond.end.87:                                      ; preds = %cond.false.61, %cond.false.79
  %cond83 = phi i8* [ %21, %cond.false.79 ], [ %cond53, %cond.false.61 ], !dbg !2546
  %22 = bitcast i8* %cond83 to i32*, !dbg !2572
  %arrayidx84 = getelementptr i32, i32* %22, i64 %i.0386, !dbg !2572
  %23 = load i32, i32* %arrayidx84, align 4, !dbg !2572, !tbaa !2195
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !719, metadata !1099), !dbg !2575
  %cmp89 = icmp ugt i32 %23, 65535, !dbg !2576
  br i1 %cmp89, label %if.then.91, label %if.else, !dbg !2577

if.then.91:                                       ; preds = %cond.end.87
  %add = add i32 %ressize.0390, 10, !dbg !2578
  call void @llvm.dbg.value(metadata i32 %add, i64 0, metadata !718, metadata !1099), !dbg !2541
  br label %for.inc, !dbg !2580

if.else:                                          ; preds = %cond.end.87
  %cmp92 = icmp ugt i32 %23, 255, !dbg !2561
  br i1 %cmp92, label %if.then.94, label %if.else.96, !dbg !2564

if.then.94:                                       ; preds = %if.else
  %add95 = add i32 %ressize.0390, 6, !dbg !2581
  call void @llvm.dbg.value(metadata i32 %add95, i64 0, metadata !718, metadata !1099), !dbg !2541
  br label %for.inc, !dbg !2583

if.else.96:                                       ; preds = %if.else
  %add97 = add i32 %ressize.0390, 4, !dbg !2566
  call void @llvm.dbg.value(metadata i32 %add97, i64 0, metadata !718, metadata !1099), !dbg !2541
  br label %for.inc

for.inc:                                          ; preds = %if.then.91, %if.else.96, %if.then.94
  %ressize.1 = phi i32 [ %add, %if.then.91 ], [ %add95, %if.then.94 ], [ %add97, %if.else.96 ]
  %inc = add nsw i64 %i.0386, 1, !dbg !2565
  call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !713, metadata !1099), !dbg !2540
  call void @llvm.dbg.value(metadata i64* %end, i64 0, metadata !715, metadata !1099), !dbg !2529
  %cmp = icmp slt i64 %inc, %4, !dbg !2544
  br i1 %cmp, label %cond.false.61, label %for.end.loopexit, !dbg !2545

for.end.loopexit:                                 ; preds = %for.inc
  %ressize.1.lcssa = phi i32 [ %ressize.1, %for.inc ]
  br label %for.end, !dbg !2584

for.end.loopexit433.unr-lcssa:                    ; preds = %for.inc.us
  %add97.us.7.lcssa = phi i32 [ %add97.us.7, %for.inc.us ]
  br label %for.end.loopexit433, !dbg !2584

for.end.loopexit433:                              ; preds = %for.inc.us.preheader.split, %for.end.loopexit433.unr-lcssa
  %add97.us.lcssa = phi i32 [ %add97.us.lcssa.unr, %for.inc.us.preheader.split ], [ %add97.us.7.lcssa, %for.end.loopexit433.unr-lcssa ]
  br label %for.end, !dbg !2584

for.end.loopexit434.unr-lcssa:                    ; preds = %if.else.us412.1
  %ressize.1.us.423.1.lcssa = phi i32 [ %ressize.1.us.423.1, %if.else.us412.1 ]
  br label %for.end.loopexit434, !dbg !2584

for.end.loopexit434:                              ; preds = %cond.true.36.us405.preheader.split, %for.end.loopexit434.unr-lcssa
  %ressize.1.us.423.lcssa = phi i32 [ %ressize.1.us.423.lcssa.unr, %cond.true.36.us405.preheader.split ], [ %ressize.1.us.423.1.lcssa, %for.end.loopexit434.unr-lcssa ]
  br label %for.end, !dbg !2584

for.end:                                          ; preds = %for.end.loopexit434, %for.end.loopexit433, %for.end.loopexit, %if.end.11
  %ressize.0.lcssa = phi i32 [ 0, %if.end.11 ], [ %ressize.1.lcssa, %for.end.loopexit ], [ %add97.us.lcssa, %for.end.loopexit433 ], [ %ressize.1.us.423.lcssa, %for.end.loopexit434 ]
  %conv100 = sext i32 %ressize.0.lcssa to i64, !dbg !2584
  %call101 = call %struct._object* @PyUnicode_New(i64 %conv100, i32 127) #2, !dbg !2585
  call void @llvm.dbg.value(metadata %struct._object* %call101, i64 0, metadata !716, metadata !1099), !dbg !2586
  %cmp102 = icmp eq %struct._object* %call101, null, !dbg !2587
  br i1 %cmp102, label %cleanup, label %if.end.105, !dbg !2589

if.end.105:                                       ; preds = %for.end
  call void @llvm.dbg.value(metadata i64* %start, i64 0, metadata !714, metadata !1099), !dbg !2525
  %24 = load i64, i64* %start, align 8, !dbg !2590, !tbaa !2131
  call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !713, metadata !1099), !dbg !2540
  %state106 = getelementptr inbounds %struct._object, %struct._object* %call101, i64 2, !dbg !2592
  %25 = bitcast %struct._object* %state106 to i32*, !dbg !2592
  %bf.load107 = load i32, i32* %25, align 4, !dbg !2592
  %bf.clear109 = and i32 %bf.load107, 32, !dbg !2592
  %tobool110 = icmp eq i32 %bf.clear109, 0, !dbg !2592
  br i1 %tobool110, label %cond.false.123, label %cond.true.111, !dbg !2592

cond.true.111:                                    ; preds = %if.end.105
  %bf.clear115 = and i32 %bf.load107, 64, !dbg !2593
  %tobool116 = icmp ne i32 %bf.clear115, 0, !dbg !2593
  %add.ptr118 = getelementptr %struct._object, %struct._object* %call101, i64 3, !dbg !2595
  %26 = bitcast %struct._object* %add.ptr118 to i8*, !dbg !2595
  %add.ptr120 = getelementptr %struct._object, %struct._object* %call101, i64 4, i32 1, !dbg !2597
  %27 = bitcast %struct._typeobject** %add.ptr120 to i8*, !dbg !2597
  %cond122 = select i1 %tobool116, i8* %26, i8* %27, !dbg !2593
  br label %for.cond.128.preheader, !dbg !2593

cond.false.123:                                   ; preds = %if.end.105
  %data124 = getelementptr inbounds %struct._object, %struct._object* %call101, i64 4, i32 1, !dbg !2599
  %any125 = bitcast %struct._typeobject** %data124 to i8**, !dbg !2599
  %28 = load i8*, i8** %any125, align 8, !dbg !2599, !tbaa !1106
  br label %for.cond.128.preheader, !dbg !2599

for.cond.128.preheader:                           ; preds = %cond.true.111, %cond.false.123
  %outp.0.ph = phi i8* [ %28, %cond.false.123 ], [ %cond122, %cond.true.111 ]
  call void @llvm.dbg.value(metadata i64* %end, i64 0, metadata !715, metadata !1099), !dbg !2529
  %29 = load i64, i64* %end, align 8, !dbg !2601, !tbaa !2131
  %cmp129.378 = icmp slt i64 %24, %29, !dbg !2603
  br i1 %cmp129.378, label %for.body.131.lr.ph, label %for.end.284, !dbg !2604

for.body.131.lr.ph:                               ; preds = %for.cond.128.preheader
  %state132 = getelementptr inbounds %struct._object, %struct._object* %call8, i64 2, !dbg !2605
  %30 = bitcast %struct._object* %state132 to i32*, !dbg !2605
  %data157 = getelementptr inbounds %struct._object, %struct._object* %call8, i64 4, i32 1, !dbg !2607
  %any158 = bitcast %struct._typeobject** %data157 to i8**, !dbg !2607
  %add.ptr151 = getelementptr %struct._object, %struct._object* %call8, i64 3, !dbg !2609
  %31 = bitcast %struct._object* %add.ptr151 to i8*, !dbg !2609
  %32 = bitcast %struct._typeobject** %data157 to i8*, !dbg !2611
  br label %for.body.131, !dbg !2604

for.body.131:                                     ; preds = %for.body.131.lr.ph, %if.end.272
  %outp.0383 = phi i8* [ %outp.0.ph, %for.body.131.lr.ph ], [ %incdec.ptr281, %if.end.272 ]
  %i.1379 = phi i64 [ %24, %for.body.131.lr.ph ], [ %inc283, %if.end.272 ]
  %bf.load133 = load i32, i32* %30, align 4, !dbg !2605
  %bf.lshr134 = lshr i32 %bf.load133, 2, !dbg !2605
  %bf.clear135 = and i32 %bf.lshr134, 7, !dbg !2605
  %cmp136 = icmp eq i32 %bf.clear135, 1, !dbg !2605
  br i1 %cmp136, label %cond.true.138, label %cond.false.163, !dbg !2605

cond.true.138:                                    ; preds = %for.body.131
  %bf.clear142 = and i32 %bf.load133, 32, !dbg !2613
  %tobool143 = icmp eq i32 %bf.clear142, 0, !dbg !2613
  br i1 %tobool143, label %cond.false.156, label %cond.true.144, !dbg !2613

cond.true.144:                                    ; preds = %cond.true.138
  %bf.clear148 = and i32 %bf.load133, 64, !dbg !2615
  %tobool149 = icmp ne i32 %bf.clear148, 0, !dbg !2615
  %cond155 = select i1 %tobool149, i8* %31, i8* %32, !dbg !2615
  br label %cond.end.159, !dbg !2615

cond.false.156:                                   ; preds = %cond.true.138
  %33 = load i8*, i8** %any158, align 8, !dbg !2607, !tbaa !1106
  br label %cond.end.159, !dbg !2607

cond.end.159:                                     ; preds = %cond.true.144, %cond.false.156
  %cond160 = phi i8* [ %33, %cond.false.156 ], [ %cond155, %cond.true.144 ], !dbg !2605
  %arrayidx161 = getelementptr i8, i8* %cond160, i64 %i.1379, !dbg !2617
  %34 = load i8, i8* %arrayidx161, align 1, !dbg !2617, !tbaa !1292
  %conv162 = zext i8 %34 to i32, !dbg !2617
  br label %cond.end.221.thread, !dbg !2617

cond.false.163:                                   ; preds = %for.body.131
  %cmp168 = icmp eq i32 %bf.clear135, 2, !dbg !2620
  %bf.clear174 = and i32 %bf.load133, 32, !dbg !2622
  %tobool175 = icmp ne i32 %bf.clear174, 0, !dbg !2622
  br i1 %cmp168, label %cond.true.170, label %cond.false.195, !dbg !2620

cond.true.170:                                    ; preds = %cond.false.163
  br i1 %tobool175, label %cond.true.176, label %cond.false.188, !dbg !2622

cond.true.176:                                    ; preds = %cond.true.170
  %bf.clear180 = and i32 %bf.load133, 64, !dbg !2624
  %tobool181 = icmp ne i32 %bf.clear180, 0, !dbg !2624
  %cond187 = select i1 %tobool181, i8* %31, i8* %32, !dbg !2624
  br label %cond.end.191, !dbg !2624

cond.false.188:                                   ; preds = %cond.true.170
  %35 = load i8*, i8** %any158, align 8, !dbg !2626, !tbaa !1106
  br label %cond.end.191, !dbg !2626

cond.end.191:                                     ; preds = %cond.true.176, %cond.false.188
  %cond192 = phi i8* [ %35, %cond.false.188 ], [ %cond187, %cond.true.176 ], !dbg !2605
  %36 = bitcast i8* %cond192 to i16*, !dbg !2628
  %arrayidx193 = getelementptr i16, i16* %36, i64 %i.1379, !dbg !2628
  %37 = load i16, i16* %arrayidx193, align 2, !dbg !2628, !tbaa !2183
  %conv194 = zext i16 %37 to i32, !dbg !2628
  br label %cond.end.221.thread, !dbg !2628

cond.false.195:                                   ; preds = %cond.false.163
  br i1 %tobool175, label %cond.true.201, label %cond.false.213, !dbg !2631

cond.true.201:                                    ; preds = %cond.false.195
  %bf.clear205 = and i32 %bf.load133, 64, !dbg !2633
  %tobool206 = icmp ne i32 %bf.clear205, 0, !dbg !2633
  %cond212 = select i1 %tobool206, i8* %31, i8* %32, !dbg !2633
  br label %cond.end.221, !dbg !2633

cond.false.213:                                   ; preds = %cond.false.195
  %38 = load i8*, i8** %any158, align 8, !dbg !2635, !tbaa !1106
  br label %cond.end.221, !dbg !2635

cond.end.221.thread:                              ; preds = %cond.end.159, %cond.end.191
  %cond222.ph = phi i32 [ %conv194, %cond.end.191 ], [ %conv162, %cond.end.159 ]
  call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !719, metadata !1099), !dbg !2575
  %incdec.ptr.372 = getelementptr i8, i8* %outp.0383, i64 1, !dbg !2637
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !717, metadata !1099), !dbg !2638
  store i8 92, i8* %outp.0383, align 1, !dbg !2639, !tbaa !1292
  br label %if.else.254, !dbg !2640

cond.end.221:                                     ; preds = %cond.false.213, %cond.true.201
  %cond217 = phi i8* [ %38, %cond.false.213 ], [ %cond212, %cond.true.201 ], !dbg !2605
  %39 = bitcast i8* %cond217 to i32*, !dbg !2641
  %arrayidx218 = getelementptr i32, i32* %39, i64 %i.1379, !dbg !2641
  %40 = load i32, i32* %arrayidx218, align 4, !dbg !2641, !tbaa !2195
  call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !719, metadata !1099), !dbg !2575
  %incdec.ptr = getelementptr i8, i8* %outp.0383, i64 1, !dbg !2637
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !717, metadata !1099), !dbg !2638
  store i8 92, i8* %outp.0383, align 1, !dbg !2639, !tbaa !1292
  %cmp223 = icmp ugt i32 %40, 65535, !dbg !2644
  br i1 %cmp223, label %if.then.225, label %if.else.254, !dbg !2640

if.then.225:                                      ; preds = %cond.end.221
  %incdec.ptr226 = getelementptr i8, i8* %outp.0383, i64 2, !dbg !2646
  call void @llvm.dbg.value(metadata i8* %incdec.ptr226, i64 0, metadata !717, metadata !1099), !dbg !2638
  store i8 85, i8* %incdec.ptr, align 1, !dbg !2648, !tbaa !1292
  %shr = lshr i32 %40, 28, !dbg !2649
  %idxprom = zext i32 %shr to i64, !dbg !2650
  %41 = load i8*, i8** @Py_hexdigits, align 8, !dbg !2650, !tbaa !1106
  %arrayidx227 = getelementptr i8, i8* %41, i64 %idxprom, !dbg !2650
  %42 = load i8, i8* %arrayidx227, align 1, !dbg !2650, !tbaa !1292
  %incdec.ptr228 = getelementptr i8, i8* %outp.0383, i64 3, !dbg !2651
  call void @llvm.dbg.value(metadata i8* %incdec.ptr228, i64 0, metadata !717, metadata !1099), !dbg !2638
  store i8 %42, i8* %incdec.ptr226, align 1, !dbg !2652, !tbaa !1292
  %shr229 = lshr i32 %40, 24, !dbg !2653
  %and230 = and i32 %shr229, 15, !dbg !2654
  %idxprom231 = zext i32 %and230 to i64, !dbg !2655
  %43 = load i8*, i8** @Py_hexdigits, align 8, !dbg !2655, !tbaa !1106
  %arrayidx232 = getelementptr i8, i8* %43, i64 %idxprom231, !dbg !2655
  %44 = load i8, i8* %arrayidx232, align 1, !dbg !2655, !tbaa !1292
  %incdec.ptr233 = getelementptr i8, i8* %outp.0383, i64 4, !dbg !2656
  call void @llvm.dbg.value(metadata i8* %incdec.ptr233, i64 0, metadata !717, metadata !1099), !dbg !2638
  store i8 %44, i8* %incdec.ptr228, align 1, !dbg !2657, !tbaa !1292
  %shr234 = lshr i32 %40, 20, !dbg !2658
  %and235 = and i32 %shr234, 15, !dbg !2659
  %idxprom236 = zext i32 %and235 to i64, !dbg !2660
  %45 = load i8*, i8** @Py_hexdigits, align 8, !dbg !2660, !tbaa !1106
  %arrayidx237 = getelementptr i8, i8* %45, i64 %idxprom236, !dbg !2660
  %46 = load i8, i8* %arrayidx237, align 1, !dbg !2660, !tbaa !1292
  %incdec.ptr238 = getelementptr i8, i8* %outp.0383, i64 5, !dbg !2661
  call void @llvm.dbg.value(metadata i8* %incdec.ptr238, i64 0, metadata !717, metadata !1099), !dbg !2638
  store i8 %46, i8* %incdec.ptr233, align 1, !dbg !2662, !tbaa !1292
  %shr239 = lshr i32 %40, 16, !dbg !2663
  %and240 = and i32 %shr239, 15, !dbg !2664
  %idxprom241 = zext i32 %and240 to i64, !dbg !2665
  %47 = load i8*, i8** @Py_hexdigits, align 8, !dbg !2665, !tbaa !1106
  %arrayidx242 = getelementptr i8, i8* %47, i64 %idxprom241, !dbg !2665
  %48 = load i8, i8* %arrayidx242, align 1, !dbg !2665, !tbaa !1292
  %incdec.ptr243 = getelementptr i8, i8* %outp.0383, i64 6, !dbg !2666
  call void @llvm.dbg.value(metadata i8* %incdec.ptr243, i64 0, metadata !717, metadata !1099), !dbg !2638
  store i8 %48, i8* %incdec.ptr238, align 1, !dbg !2667, !tbaa !1292
  %shr244 = lshr i32 %40, 12, !dbg !2668
  %and245 = and i32 %shr244, 15, !dbg !2669
  %idxprom246 = zext i32 %and245 to i64, !dbg !2670
  %49 = load i8*, i8** @Py_hexdigits, align 8, !dbg !2670, !tbaa !1106
  %arrayidx247 = getelementptr i8, i8* %49, i64 %idxprom246, !dbg !2670
  %50 = load i8, i8* %arrayidx247, align 1, !dbg !2670, !tbaa !1292
  %incdec.ptr248 = getelementptr i8, i8* %outp.0383, i64 7, !dbg !2671
  call void @llvm.dbg.value(metadata i8* %incdec.ptr248, i64 0, metadata !717, metadata !1099), !dbg !2638
  store i8 %50, i8* %incdec.ptr243, align 1, !dbg !2672, !tbaa !1292
  %shr249 = lshr i32 %40, 8, !dbg !2673
  %and250 = and i32 %shr249, 15, !dbg !2674
  %idxprom251 = zext i32 %and250 to i64, !dbg !2675
  %51 = load i8*, i8** @Py_hexdigits, align 8, !dbg !2675, !tbaa !1106
  %arrayidx252 = getelementptr i8, i8* %51, i64 %idxprom251, !dbg !2675
  %52 = load i8, i8* %arrayidx252, align 1, !dbg !2675, !tbaa !1292
  %incdec.ptr253 = getelementptr i8, i8* %outp.0383, i64 8, !dbg !2676
  call void @llvm.dbg.value(metadata i8* %incdec.ptr253, i64 0, metadata !717, metadata !1099), !dbg !2638
  store i8 %52, i8* %incdec.ptr248, align 1, !dbg !2677, !tbaa !1292
  br label %if.end.272, !dbg !2678

if.else.254:                                      ; preds = %cond.end.221.thread, %cond.end.221
  %incdec.ptr376 = phi i8* [ %incdec.ptr.372, %cond.end.221.thread ], [ %incdec.ptr, %cond.end.221 ]
  %cond222375 = phi i32 [ %cond222.ph, %cond.end.221.thread ], [ %40, %cond.end.221 ]
  %cmp255 = icmp ugt i32 %cond222375, 255, !dbg !2679
  %incdec.ptr258 = getelementptr i8, i8* %outp.0383, i64 2, !dbg !2681
  call void @llvm.dbg.value(metadata i8* %incdec.ptr258, i64 0, metadata !717, metadata !1099), !dbg !2638
  br i1 %cmp255, label %if.then.257, label %if.else.269, !dbg !2683

if.then.257:                                      ; preds = %if.else.254
  store i8 117, i8* %incdec.ptr376, align 1, !dbg !2684, !tbaa !1292
  %shr259 = lshr i32 %cond222375, 12, !dbg !2685
  %and260 = and i32 %shr259, 15, !dbg !2686
  %idxprom261 = zext i32 %and260 to i64, !dbg !2687
  %53 = load i8*, i8** @Py_hexdigits, align 8, !dbg !2687, !tbaa !1106
  %arrayidx262 = getelementptr i8, i8* %53, i64 %idxprom261, !dbg !2687
  %54 = load i8, i8* %arrayidx262, align 1, !dbg !2687, !tbaa !1292
  %incdec.ptr263 = getelementptr i8, i8* %outp.0383, i64 3, !dbg !2688
  call void @llvm.dbg.value(metadata i8* %incdec.ptr263, i64 0, metadata !717, metadata !1099), !dbg !2638
  store i8 %54, i8* %incdec.ptr258, align 1, !dbg !2689, !tbaa !1292
  %shr264 = lshr i32 %cond222375, 8, !dbg !2690
  %and265 = and i32 %shr264, 15, !dbg !2691
  %idxprom266 = zext i32 %and265 to i64, !dbg !2692
  %55 = load i8*, i8** @Py_hexdigits, align 8, !dbg !2692, !tbaa !1106
  %arrayidx267 = getelementptr i8, i8* %55, i64 %idxprom266, !dbg !2692
  %56 = load i8, i8* %arrayidx267, align 1, !dbg !2692, !tbaa !1292
  %incdec.ptr268 = getelementptr i8, i8* %outp.0383, i64 4, !dbg !2693
  call void @llvm.dbg.value(metadata i8* %incdec.ptr268, i64 0, metadata !717, metadata !1099), !dbg !2638
  store i8 %56, i8* %incdec.ptr263, align 1, !dbg !2694, !tbaa !1292
  br label %if.end.272, !dbg !2695

if.else.269:                                      ; preds = %if.else.254
  store i8 120, i8* %incdec.ptr376, align 1, !dbg !2696, !tbaa !1292
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.257, %if.else.269, %if.then.225
  %cond222374 = phi i32 [ %40, %if.then.225 ], [ %cond222375, %if.then.257 ], [ %cond222375, %if.else.269 ]
  %outp.1 = phi i8* [ %incdec.ptr253, %if.then.225 ], [ %incdec.ptr268, %if.then.257 ], [ %incdec.ptr258, %if.else.269 ]
  %shr273 = lshr i32 %cond222374, 4, !dbg !2697
  %and274 = and i32 %shr273, 15, !dbg !2698
  %idxprom275 = zext i32 %and274 to i64, !dbg !2699
  %57 = load i8*, i8** @Py_hexdigits, align 8, !dbg !2699, !tbaa !1106
  %arrayidx276 = getelementptr i8, i8* %57, i64 %idxprom275, !dbg !2699
  %58 = load i8, i8* %arrayidx276, align 1, !dbg !2699, !tbaa !1292
  %incdec.ptr277 = getelementptr i8, i8* %outp.1, i64 1, !dbg !2700
  call void @llvm.dbg.value(metadata i8* %incdec.ptr277, i64 0, metadata !717, metadata !1099), !dbg !2638
  store i8 %58, i8* %outp.1, align 1, !dbg !2701, !tbaa !1292
  %and278 = and i32 %cond222374, 15, !dbg !2702
  %idxprom279 = zext i32 %and278 to i64, !dbg !2703
  %59 = load i8*, i8** @Py_hexdigits, align 8, !dbg !2703, !tbaa !1106
  %arrayidx280 = getelementptr i8, i8* %59, i64 %idxprom279, !dbg !2703
  %60 = load i8, i8* %arrayidx280, align 1, !dbg !2703, !tbaa !1292
  %incdec.ptr281 = getelementptr i8, i8* %outp.1, i64 2, !dbg !2704
  call void @llvm.dbg.value(metadata i8* %incdec.ptr281, i64 0, metadata !717, metadata !1099), !dbg !2638
  store i8 %60, i8* %incdec.ptr277, align 1, !dbg !2705, !tbaa !1292
  %inc283 = add i64 %i.1379, 1, !dbg !2706
  call void @llvm.dbg.value(metadata i64 %inc283, i64 0, metadata !713, metadata !1099), !dbg !2540
  call void @llvm.dbg.value(metadata i64* %end, i64 0, metadata !715, metadata !1099), !dbg !2529
  %61 = load i64, i64* %end, align 8, !dbg !2601, !tbaa !2131
  %cmp129 = icmp slt i64 %inc283, %61, !dbg !2603
  br i1 %cmp129, label %for.body.131, label %for.end.284.loopexit, !dbg !2604

for.end.284.loopexit:                             ; preds = %if.end.272
  %.lcssa438 = phi i64 [ %61, %if.end.272 ]
  br label %for.end.284, !dbg !2707

for.end.284:                                      ; preds = %for.end.284.loopexit, %for.cond.128.preheader
  %.lcssa = phi i64 [ %29, %for.cond.128.preheader ], [ %.lcssa438, %for.end.284.loopexit ]
  %call285 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), %struct._object* %call101, i64 %.lcssa) #2, !dbg !2707
  call void @llvm.dbg.value(metadata %struct._object* %call285, i64 0, metadata !709, metadata !1099), !dbg !2708
  call void @llvm.dbg.value(metadata %struct._object* %call8, i64 0, metadata !720, metadata !1099), !dbg !2709
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call8, i64 0, i32 0, !dbg !2711
  %62 = load i64, i64* %ob_refcnt, align 8, !dbg !2711, !tbaa !1209
  %dec = add i64 %62, -1, !dbg !2711
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2711, !tbaa !1209
  %cmp286 = icmp eq i64 %dec, 0, !dbg !2711
  br i1 %cmp286, label %if.else.289, label %cleanup, !dbg !2713

if.else.289:                                      ; preds = %for.end.284
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call8, i64 0, i32 1, !dbg !2714
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2714, !tbaa !1214
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i64 0, i32 4, !dbg !2714
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2714, !tbaa !1215
  call void %64(%struct._object* %call8) #2, !dbg !2714
  br label %cleanup

cleanup:                                          ; preds = %if.else.289, %for.end.284, %for.end, %if.end.7, %if.end, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ null, %if.end ], [ null, %if.end.7 ], [ null, %for.end ], [ %call285, %for.end.284 ], [ %call285, %if.else.289 ]
  call void @llvm.lifetime.end(i64 8, i8* %2) #2, !dbg !2716
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !2716
  br label %return

if.else.299:                                      ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %exc, i64 0, metadata !893, metadata !1099) #2, !dbg !2717
  %call.i = tail call %struct._object* @_PyObject_GetAttrId(%struct._object* %exc, %struct._Py_Identifier* nonnull @wrong_exception_type.PyId___class__) #2, !dbg !2720
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !894, metadata !1099) #2, !dbg !2721
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !2722
  br i1 %cmp.i, label %return, label %if.then.i, !dbg !2723

if.then.i:                                        ; preds = %if.else.299
  %call1.i = tail call %struct._object* @_PyObject_GetAttrId(%struct._object* %call.i, %struct._Py_Identifier* nonnull @wrong_exception_type.PyId___name__) #2, !dbg !2724
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i, i64 0, metadata !895, metadata !1099) #2, !dbg !2725
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !898, metadata !1099) #2, !dbg !2726
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !2727
  %65 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2727, !tbaa !1209
  %dec.i = add i64 %65, -1, !dbg !2727
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2727, !tbaa !1209
  %cmp2.i = icmp eq i64 %dec.i, 0, !dbg !2727
  br i1 %cmp2.i, label %if.else.i, label %if.end.i, !dbg !2728

if.else.i:                                        ; preds = %if.then.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !2729
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2729, !tbaa !1214
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i64 0, i32 4, !dbg !2729
  %67 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2729, !tbaa !1215
  tail call void %67(%struct._object* %call.i) #2, !dbg !2729
  br label %if.end.i, !dbg !2730

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %cmp4.i = icmp eq %struct._object* %call1.i, null, !dbg !2731
  br i1 %cmp4.i, label %return, label %if.then.5.i, !dbg !2732

if.then.5.i:                                      ; preds = %if.end.i
  %68 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2733, !tbaa !1106
  %call6.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %68, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i64 0, i64 0), %struct._object* %call1.i) #2, !dbg !2734
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i, i64 0, metadata !900, metadata !1099) #2, !dbg !2735
  %ob_refcnt9.i = getelementptr inbounds %struct._object, %struct._object* %call1.i, i64 0, i32 0, !dbg !2736
  %69 = load i64, i64* %ob_refcnt9.i, align 8, !dbg !2736, !tbaa !1209
  %dec10.i = add i64 %69, -1, !dbg !2736
  store i64 %dec10.i, i64* %ob_refcnt9.i, align 8, !dbg !2736, !tbaa !1209
  %cmp11.i = icmp eq i64 %dec10.i, 0, !dbg !2736
  br i1 %cmp11.i, label %if.else.13.i, label %return, !dbg !2737

if.else.13.i:                                     ; preds = %if.then.5.i
  %ob_type14.i = getelementptr inbounds %struct._object, %struct._object* %call1.i, i64 0, i32 1, !dbg !2738
  %70 = load %struct._typeobject*, %struct._typeobject** %ob_type14.i, align 8, !dbg !2738, !tbaa !1214
  %tp_dealloc15.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %70, i64 0, i32 4, !dbg !2738
  %71 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc15.i, align 8, !dbg !2738, !tbaa !1215
  tail call void %71(%struct._object* %call1.i) #2, !dbg !2738
  br label %return, !dbg !2730

return:                                           ; preds = %if.else.13.i, %if.then.5.i, %if.end.i, %if.else.299, %cleanup
  %retval.1 = phi %struct._object* [ %retval.0, %cleanup ], [ null, %if.else.299 ], [ null, %if.end.i ], [ null, %if.then.5.i ], [ null, %if.else.13.i ]
  ret %struct._object* %retval.1, !dbg !2739

cond.false.54.us406.1:                            ; preds = %if.else.us412
  %72 = load i8*, i8** %any56, align 8, !dbg !2556, !tbaa !1106
  br label %if.else.us412.1, !dbg !2556

if.else.us412.1:                                  ; preds = %cond.false.54.us406.1, %if.else.us412
  %cond58.us.409.1 = phi i8* [ %72, %cond.false.54.us406.1 ], [ %cond53, %if.else.us412 ], !dbg !2546
  %73 = bitcast i8* %cond58.us.409.1 to i16*, !dbg !2558
  %arrayidx59.us.410.1 = getelementptr i16, i16* %73, i64 %inc.us.424, !dbg !2558
  %74 = load i16, i16* %arrayidx59.us.410.1, align 2, !dbg !2558, !tbaa !2183
  %cmp92.us.415.1 = icmp ugt i16 %74, 255, !dbg !2561
  %ressize.1.us.423.v.1 = select i1 %cmp92.us.415.1, i32 6, i32 4, !dbg !2564
  %ressize.1.us.423.1 = add i32 %ressize.1.us.423, %ressize.1.us.423.v.1, !dbg !2564
  %inc.us.424.1 = add nsw i64 %i.0386.us.394, 2, !dbg !2565
  call void @llvm.dbg.value(metadata i64 %inc.us.424, i64 0, metadata !713, metadata !1099), !dbg !2540
  call void @llvm.dbg.value(metadata i64* %end, i64 0, metadata !715, metadata !1099), !dbg !2529
  %cmp.us.425.1 = icmp slt i64 %inc.us.424.1, %4, !dbg !2544
  br i1 %cmp.us.425.1, label %cond.true.36.us405, label %for.end.loopexit434.unr-lcssa, !dbg !2545
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #4

declare i8* @PyMem_Malloc(i64) #3

declare %struct._object* @PyErr_NoMemory() #3

declare %struct._object* @PyUnicode_FromString(i8*) #3

declare void @PyMem_Free(i8*) #3

declare %struct._object* @PyObject_GetAttrString(%struct._object*, i8*) #3

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #3

declare %struct._object* @_PyErr_TrySetFromCause(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal noalias %struct._object* @strict_errors(%struct._object* nocapture readnone %self, %struct._object* %exc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !929, metadata !1099), !dbg !2740
  tail call void @llvm.dbg.value(metadata %struct._object* %exc, i64 0, metadata !930, metadata !1099), !dbg !2741
  tail call void @llvm.dbg.value(metadata %struct._object* %exc, i64 0, metadata !658, metadata !1099) #2, !dbg !2742
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %exc, i64 0, i32 1, !dbg !2744
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2744, !tbaa !1214
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 19, !dbg !2744
  %1 = load i64, i64* %tp_flags.i, align 8, !dbg !2744, !tbaa !1370
  %and.i = and i64 %1, 1073741824, !dbg !2744
  %cmp.i = icmp eq i64 %and.i, 0, !dbg !2744
  br i1 %cmp.i, label %if.else.i, label %if.then.i, !dbg !2745

if.then.i:                                        ; preds = %entry
  %2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 0, i32 0, !dbg !2746
  tail call void @PyErr_SetObject(%struct._object* %2, %struct._object* %exc) #2, !dbg !2747
  br label %PyCodec_StrictErrors.exit, !dbg !2747

if.else.i:                                        ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2748, !tbaa !1106
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0)) #2, !dbg !2749
  br label %PyCodec_StrictErrors.exit, !dbg !2750

PyCodec_StrictErrors.exit:                        ; preds = %if.then.i, %if.else.i
  ret %struct._object* null, !dbg !2751
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ignore_errors(%struct._object* nocapture readnone %self, %struct._object* %exc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !933, metadata !1099), !dbg !2752
  tail call void @llvm.dbg.value(metadata %struct._object* %exc, i64 0, metadata !934, metadata !1099), !dbg !2753
  %call = tail call %struct._object* @PyCodec_IgnoreErrors(%struct._object* %exc), !dbg !2754
  ret %struct._object* %call, !dbg !2755
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @replace_errors(%struct._object* nocapture readnone %self, %struct._object* %exc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !937, metadata !1099), !dbg !2756
  tail call void @llvm.dbg.value(metadata %struct._object* %exc, i64 0, metadata !938, metadata !1099), !dbg !2757
  %call = tail call %struct._object* @PyCodec_ReplaceErrors(%struct._object* %exc), !dbg !2758
  ret %struct._object* %call, !dbg !2759
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @xmlcharrefreplace_errors(%struct._object* nocapture readnone %self, %struct._object* %exc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !941, metadata !1099), !dbg !2760
  tail call void @llvm.dbg.value(metadata %struct._object* %exc, i64 0, metadata !942, metadata !1099), !dbg !2761
  %call = tail call %struct._object* @PyCodec_XMLCharRefReplaceErrors(%struct._object* %exc), !dbg !2762
  ret %struct._object* %call, !dbg !2763
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @backslashreplace_errors(%struct._object* nocapture readnone %self, %struct._object* %exc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !945, metadata !1099), !dbg !2764
  tail call void @llvm.dbg.value(metadata %struct._object* %exc, i64 0, metadata !946, metadata !1099), !dbg !2765
  %call = tail call %struct._object* @PyCodec_BackslashReplaceErrors(%struct._object* %exc), !dbg !2766
  ret %struct._object* %call, !dbg !2767
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @surrogatepass_errors(%struct._object* nocapture readnone %self, %struct._object* %exc) #0 {
entry:
  %bytelength.i = alloca i32, align 4
  %start.i = alloca i64, align 8
  %end.i = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !949, metadata !1099), !dbg !2768
  tail call void @llvm.dbg.value(metadata %struct._object* %exc, i64 0, metadata !950, metadata !1099), !dbg !2769
  tail call void @llvm.dbg.value(metadata %struct._object* %exc, i64 0, metadata !953, metadata !1099) #2, !dbg !2770
  %0 = bitcast i32* %bytelength.i to i8*, !dbg !2772
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !2772
  %1 = bitcast i64* %start.i to i8*, !dbg !2773
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2773
  %2 = bitcast i64* %end.i to i8*, !dbg !2774
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2774
  %3 = load %struct._object*, %struct._object** @PyExc_UnicodeEncodeError, align 8, !dbg !2775, !tbaa !1106
  %call.i = tail call i32 @PyObject_IsInstance(%struct._object* %exc, %struct._object* %3) #2, !dbg !2776
  %tobool.i = icmp eq i32 %call.i, 0, !dbg !2776
  br i1 %tobool.i, label %if.else.264.i, label %if.then.i, !dbg !2777

if.then.i:                                        ; preds = %entry
  tail call void @llvm.dbg.value(metadata i64* %start.i, i64 0, metadata !961, metadata !1099) #2, !dbg !2778
  %call1.i = call i32 @PyUnicodeEncodeError_GetStart(%struct._object* %exc, i64* nonnull %start.i) #2, !dbg !2779
  %tobool2.i = icmp eq i32 %call1.i, 0, !dbg !2779
  br i1 %tobool2.i, label %if.end.i, label %PyCodec_SurrogatePassErrors.exit, !dbg !2781

if.end.i:                                         ; preds = %if.then.i
  call void @llvm.dbg.value(metadata i64* %end.i, i64 0, metadata !962, metadata !1099) #2, !dbg !2782
  %call4.i = call i32 @PyUnicodeEncodeError_GetEnd(%struct._object* %exc, i64* nonnull %end.i) #2, !dbg !2783
  %tobool5.i = icmp eq i32 %call4.i, 0, !dbg !2783
  br i1 %tobool5.i, label %if.end.7.i, label %PyCodec_SurrogatePassErrors.exit, !dbg !2785

if.end.7.i:                                       ; preds = %if.end.i
  %call8.i = call %struct._object* @PyUnicodeEncodeError_GetObject(%struct._object* %exc) #2, !dbg !2786
  call void @llvm.dbg.value(metadata %struct._object* %call8.i, i64 0, metadata !955, metadata !1099) #2, !dbg !2788
  %tobool9.i = icmp eq %struct._object* %call8.i, null, !dbg !2789
  br i1 %tobool9.i, label %PyCodec_SurrogatePassErrors.exit, label %if.end.11.i, !dbg !2790

if.end.11.i:                                      ; preds = %if.end.7.i
  %call12.i = call %struct._object* @PyUnicodeEncodeError_GetEncoding(%struct._object* %exc) #2, !dbg !2791
  call void @llvm.dbg.value(metadata %struct._object* %call12.i, i64 0, metadata !956, metadata !1099) #2, !dbg !2792
  %tobool13.i = icmp eq %struct._object* %call12.i, null, !dbg !2793
  br i1 %tobool13.i, label %do.body.i, label %if.end.17.i, !dbg !2794

do.body.i:                                        ; preds = %if.end.11.i
  call void @llvm.dbg.value(metadata %struct._object* %call8.i, i64 0, metadata !967, metadata !1099) #2, !dbg !2795
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call8.i, i64 0, i32 0, !dbg !2797
  %4 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2797, !tbaa !1209
  %dec.i = add i64 %4, -1, !dbg !2797
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2797, !tbaa !1209
  %cmp.i = icmp eq i64 %dec.i, 0, !dbg !2797
  br i1 %cmp.i, label %if.else.i, label %PyCodec_SurrogatePassErrors.exit, !dbg !2799

if.else.i:                                        ; preds = %do.body.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call8.i, i64 0, i32 1, !dbg !2800
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2800, !tbaa !1214
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !2800
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2800, !tbaa !1215
  call void %6(%struct._object* %call8.i) #2, !dbg !2800
  br label %PyCodec_SurrogatePassErrors.exit, !dbg !2802

if.end.17.i:                                      ; preds = %if.end.11.i
  %call18.i = call i8* @PyUnicode_AsUTF8(%struct._object* %call12.i) #2, !dbg !2803
  call void @llvm.dbg.value(metadata i8* %call18.i, i64 0, metadata !957, metadata !1099) #2, !dbg !2804
  %tobool19.i = icmp eq i8* %call18.i, null, !dbg !2805
  br i1 %tobool19.i, label %do.body.21.i, label %if.end.45.i, !dbg !2806

do.body.21.i:                                     ; preds = %if.end.17.i
  call void @llvm.dbg.value(metadata %struct._object* %call8.i, i64 0, metadata !971, metadata !1099) #2, !dbg !2807
  %ob_refcnt23.i = getelementptr inbounds %struct._object, %struct._object* %call8.i, i64 0, i32 0, !dbg !2809
  %7 = load i64, i64* %ob_refcnt23.i, align 8, !dbg !2809, !tbaa !1209
  %dec24.i = add i64 %7, -1, !dbg !2809
  store i64 %dec24.i, i64* %ob_refcnt23.i, align 8, !dbg !2809, !tbaa !1209
  %cmp25.i = icmp eq i64 %dec24.i, 0, !dbg !2809
  br i1 %cmp25.i, label %if.else.27.i, label %if.end.30.i, !dbg !2811

if.else.27.i:                                     ; preds = %do.body.21.i
  %ob_type28.i = getelementptr inbounds %struct._object, %struct._object* %call8.i, i64 0, i32 1, !dbg !2812
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type28.i, align 8, !dbg !2812, !tbaa !1214
  %tp_dealloc29.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !2812
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29.i, align 8, !dbg !2812, !tbaa !1215
  call void %9(%struct._object* %call8.i) #2, !dbg !2812
  br label %if.end.30.i, !dbg !2802

if.end.30.i:                                      ; preds = %if.else.27.i, %do.body.21.i
  call void @llvm.dbg.value(metadata %struct._object* %call12.i, i64 0, metadata !975, metadata !1099) #2, !dbg !2814
  %ob_refcnt35.i = getelementptr inbounds %struct._object, %struct._object* %call12.i, i64 0, i32 0, !dbg !2816
  %10 = load i64, i64* %ob_refcnt35.i, align 8, !dbg !2816, !tbaa !1209
  %dec36.i = add i64 %10, -1, !dbg !2816
  store i64 %dec36.i, i64* %ob_refcnt35.i, align 8, !dbg !2816, !tbaa !1209
  %cmp37.i = icmp eq i64 %dec36.i, 0, !dbg !2816
  br i1 %cmp37.i, label %if.else.39.i, label %PyCodec_SurrogatePassErrors.exit, !dbg !2818

if.else.39.i:                                     ; preds = %if.end.30.i
  %ob_type40.i = getelementptr inbounds %struct._object, %struct._object* %call12.i, i64 0, i32 1, !dbg !2819
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type40.i, align 8, !dbg !2819, !tbaa !1214
  %tp_dealloc41.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !2819
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41.i, align 8, !dbg !2819, !tbaa !1215
  call void %12(%struct._object* %call12.i) #2, !dbg !2819
  br label %PyCodec_SurrogatePassErrors.exit, !dbg !2802

if.end.45.i:                                      ; preds = %if.end.17.i
  call void @llvm.dbg.value(metadata i32* %bytelength.i, i64 0, metadata !959, metadata !1099) #2, !dbg !2821
  %call46.i = call fastcc i32 @get_standard_encoding(i8* %call18.i, i32* nonnull %bytelength.i) #2, !dbg !2822
  call void @llvm.dbg.value(metadata i32 %call46.i, i64 0, metadata !958, metadata !1099) #2, !dbg !2823
  call void @llvm.dbg.value(metadata %struct._object* %call12.i, i64 0, metadata !977, metadata !1099) #2, !dbg !2824
  %ob_refcnt49.i = getelementptr inbounds %struct._object, %struct._object* %call12.i, i64 0, i32 0, !dbg !2826
  %13 = load i64, i64* %ob_refcnt49.i, align 8, !dbg !2826, !tbaa !1209
  %dec50.i = add i64 %13, -1, !dbg !2826
  store i64 %dec50.i, i64* %ob_refcnt49.i, align 8, !dbg !2826, !tbaa !1209
  %cmp51.i = icmp eq i64 %dec50.i, 0, !dbg !2826
  br i1 %cmp51.i, label %if.else.53.i, label %if.end.56.i, !dbg !2828

if.else.53.i:                                     ; preds = %if.end.45.i
  %ob_type54.i = getelementptr inbounds %struct._object, %struct._object* %call12.i, i64 0, i32 1, !dbg !2829
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type54.i, align 8, !dbg !2829, !tbaa !1214
  %tp_dealloc55.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !2829
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc55.i, align 8, !dbg !2829, !tbaa !1215
  call void %15(%struct._object* %call12.i) #2, !dbg !2829
  br label %if.end.56.i, !dbg !2802

if.end.56.i:                                      ; preds = %if.else.53.i, %if.end.45.i
  call void @llvm.dbg.value(metadata i32* %bytelength.i, i64 0, metadata !959, metadata !1099) #2, !dbg !2821
  %16 = load i32, i32* %bytelength.i, align 4, !dbg !2831, !tbaa !2195
  %conv.i = sext i32 %16 to i64, !dbg !2831
  call void @llvm.dbg.value(metadata i64* %end.i, i64 0, metadata !962, metadata !1099) #2, !dbg !2782
  %17 = load i64, i64* %end.i, align 8, !dbg !2832, !tbaa !2131
  call void @llvm.dbg.value(metadata i64* %start.i, i64 0, metadata !961, metadata !1099) #2, !dbg !2778
  %18 = load i64, i64* %start.i, align 8, !dbg !2833, !tbaa !2131
  %sub.i = sub i64 %17, %18, !dbg !2834
  %mul.i = mul i64 %sub.i, %conv.i, !dbg !2835
  %call59.i = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %mul.i) #2, !dbg !2836
  call void @llvm.dbg.value(metadata %struct._object* %call59.i, i64 0, metadata !963, metadata !1099) #2, !dbg !2837
  %tobool60.i = icmp eq %struct._object* %call59.i, null, !dbg !2838
  br i1 %tobool60.i, label %do.body.62.i, label %if.end.75.i, !dbg !2839

do.body.62.i:                                     ; preds = %if.end.56.i
  call void @llvm.dbg.value(metadata %struct._object* %call8.i, i64 0, metadata !979, metadata !1099) #2, !dbg !2840
  %ob_refcnt64.i = getelementptr inbounds %struct._object, %struct._object* %call8.i, i64 0, i32 0, !dbg !2842
  %19 = load i64, i64* %ob_refcnt64.i, align 8, !dbg !2842, !tbaa !1209
  %dec65.i = add i64 %19, -1, !dbg !2842
  store i64 %dec65.i, i64* %ob_refcnt64.i, align 8, !dbg !2842, !tbaa !1209
  %cmp66.i = icmp eq i64 %dec65.i, 0, !dbg !2842
  br i1 %cmp66.i, label %if.else.69.i, label %PyCodec_SurrogatePassErrors.exit, !dbg !2844

if.else.69.i:                                     ; preds = %do.body.62.i
  %ob_type70.i = getelementptr inbounds %struct._object, %struct._object* %call8.i, i64 0, i32 1, !dbg !2845
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type70.i, align 8, !dbg !2845, !tbaa !1214
  %tp_dealloc71.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i64 0, i32 4, !dbg !2845
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71.i, align 8, !dbg !2845, !tbaa !1215
  call void %21(%struct._object* %call8.i) #2, !dbg !2845
  br label %PyCodec_SurrogatePassErrors.exit, !dbg !2802

if.end.75.i:                                      ; preds = %if.end.56.i
  %call76.i = call i8* @PyBytes_AsString(%struct._object* %call59.i) #2, !dbg !2847
  call void @llvm.dbg.value(metadata i8* %call76.i, i64 0, metadata !964, metadata !1099) #2, !dbg !2848
  call void @llvm.dbg.value(metadata i64* %start.i, i64 0, metadata !961, metadata !1099) #2, !dbg !2778
  %22 = load i64, i64* %start.i, align 8, !dbg !2849, !tbaa !2131
  call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !960, metadata !1099) #2, !dbg !2850
  call void @llvm.dbg.value(metadata i64* %end.i, i64 0, metadata !962, metadata !1099) #2, !dbg !2782
  %23 = load i64, i64* %end.i, align 8, !dbg !2851, !tbaa !2131
  %cmp77.643.i = icmp slt i64 %22, %23, !dbg !2852
  br i1 %cmp77.643.i, label %for.body.lr.ph.i, label %for.end.i, !dbg !2853

for.body.lr.ph.i:                                 ; preds = %if.end.75.i
  %state.i = getelementptr inbounds %struct._object, %struct._object* %call8.i, i64 2, !dbg !2854
  %24 = bitcast %struct._object* %state.i to i32*, !dbg !2854
  %data.i = getelementptr inbounds %struct._object, %struct._object* %call8.i, i64 4, i32 1, !dbg !2855
  %any.i = bitcast %struct._typeobject** %data.i to i8**, !dbg !2855
  %add.ptr.i = getelementptr %struct._object, %struct._object* %call8.i, i64 3, !dbg !2857
  %25 = bitcast %struct._object* %add.ptr.i to i8*, !dbg !2857
  %26 = bitcast %struct._typeobject** %data.i to i8*, !dbg !2859
  switch i32 %call46.i, label %for.body.i.preheader [
    i32 0, label %for.body.us.i.preheader
    i32 3, label %for.body.i.us.preheader
  ], !dbg !2802

for.body.i.us.preheader:                          ; preds = %for.body.lr.ph.i
  br label %for.body.i.us, !dbg !2854

for.body.us.i.preheader:                          ; preds = %for.body.lr.ph.i
  br label %for.body.us.i, !dbg !2854

for.body.i.preheader:                             ; preds = %for.body.lr.ph.i
  br label %for.body.i, !dbg !2854

for.body.i.us:                                    ; preds = %for.body.i.us.preheader, %for.inc.i.us
  %i.0645.i.us = phi i64 [ %inc.i.us, %for.inc.i.us ], [ %22, %for.body.i.us.preheader ], !dbg !2802
  %outp.0644.i.us = phi i8* [ %incdec.ptr235.i.us, %for.inc.i.us ], [ %call76.i, %for.body.i.us.preheader ], !dbg !2802
  %bf.load.i.us = load i32, i32* %24, align 4, !dbg !2854
  %bf.lshr.i.us = lshr i32 %bf.load.i.us, 2, !dbg !2854
  %bf.clear.i.us = and i32 %bf.lshr.i.us, 7, !dbg !2854
  %cmp79.i.us = icmp eq i32 %bf.clear.i.us, 1, !dbg !2854
  br i1 %cmp79.i.us, label %cond.true.i.us, label %cond.false.98.i.us, !dbg !2854

cond.false.98.i.us:                               ; preds = %for.body.i.us
  %cmp103.i.us = icmp eq i32 %bf.clear.i.us, 2, !dbg !2861
  %bf.clear109.i.us = and i32 %bf.load.i.us, 32, !dbg !2863
  %tobool110.i.us = icmp ne i32 %bf.clear109.i.us, 0, !dbg !2863
  br i1 %cmp103.i.us, label %cond.true.105.i.us, label %cond.false.130.i.us, !dbg !2861

cond.false.130.i.us:                              ; preds = %cond.false.98.i.us
  br i1 %tobool110.i.us, label %cond.true.136.i.us, label %cond.false.148.i.us, !dbg !2865

cond.false.148.i.us:                              ; preds = %cond.false.130.i.us
  %27 = load i8*, i8** %any.i, align 8, !dbg !2867, !tbaa !1106
  br label %cond.end.151.i.us, !dbg !2867

cond.true.136.i.us:                               ; preds = %cond.false.130.i.us
  %bf.clear140.i.us = and i32 %bf.load.i.us, 64, !dbg !2869
  %tobool141.i.us = icmp ne i32 %bf.clear140.i.us, 0, !dbg !2869
  %cond147.i.us = select i1 %tobool141.i.us, i8* %25, i8* %26, !dbg !2869
  br label %cond.end.151.i.us, !dbg !2869

cond.end.151.i.us:                                ; preds = %cond.true.136.i.us, %cond.false.148.i.us
  %cond152.i.us = phi i8* [ %27, %cond.false.148.i.us ], [ %cond147.i.us, %cond.true.136.i.us ], !dbg !2854
  %28 = bitcast i8* %cond152.i.us to i32*, !dbg !2871
  %arrayidx153.i.us = getelementptr i32, i32* %28, i64 %i.0645.i.us, !dbg !2871
  %29 = load i32, i32* %arrayidx153.i.us, align 4, !dbg !2871, !tbaa !2195
  br label %cond.end.156.i.us, !dbg !2871

cond.true.105.i.us:                               ; preds = %cond.false.98.i.us
  br i1 %tobool110.i.us, label %cond.true.111.i.us, label %cond.false.123.i.us, !dbg !2863

cond.false.123.i.us:                              ; preds = %cond.true.105.i.us
  %30 = load i8*, i8** %any.i, align 8, !dbg !2874, !tbaa !1106
  br label %cond.end.126.i.us, !dbg !2874

cond.true.111.i.us:                               ; preds = %cond.true.105.i.us
  %bf.clear115.i.us = and i32 %bf.load.i.us, 64, !dbg !2876
  %tobool116.i.us = icmp ne i32 %bf.clear115.i.us, 0, !dbg !2876
  %cond122.i.us = select i1 %tobool116.i.us, i8* %25, i8* %26, !dbg !2876
  br label %cond.end.126.i.us, !dbg !2876

cond.end.126.i.us:                                ; preds = %cond.true.111.i.us, %cond.false.123.i.us
  %cond127.i.us = phi i8* [ %30, %cond.false.123.i.us ], [ %cond122.i.us, %cond.true.111.i.us ], !dbg !2854
  %31 = bitcast i8* %cond127.i.us to i16*, !dbg !2878
  %arrayidx128.i.us = getelementptr i16, i16* %31, i64 %i.0645.i.us, !dbg !2878
  %32 = load i16, i16* %arrayidx128.i.us, align 2, !dbg !2878, !tbaa !2183
  %conv129.i.us = zext i16 %32 to i32, !dbg !2878
  br label %cond.end.156.i.us, !dbg !2878

cond.true.i.us:                                   ; preds = %for.body.i.us
  %bf.clear84.i.us = and i32 %bf.load.i.us, 32, !dbg !2881
  %tobool85.i.us = icmp eq i32 %bf.clear84.i.us, 0, !dbg !2881
  br i1 %tobool85.i.us, label %cond.false.94.i.us, label %cond.true.86.i.us, !dbg !2881

cond.true.86.i.us:                                ; preds = %cond.true.i.us
  %bf.clear90.i.us = and i32 %bf.load.i.us, 64, !dbg !2883
  %tobool91.i.us = icmp ne i32 %bf.clear90.i.us, 0, !dbg !2883
  %cond.i.us = select i1 %tobool91.i.us, i8* %25, i8* %26, !dbg !2883
  br label %cond.end.95.i.us, !dbg !2883

cond.false.94.i.us:                               ; preds = %cond.true.i.us
  %33 = load i8*, i8** %any.i, align 8, !dbg !2855, !tbaa !1106
  br label %cond.end.95.i.us, !dbg !2855

cond.end.95.i.us:                                 ; preds = %cond.false.94.i.us, %cond.true.86.i.us
  %cond96.i.us = phi i8* [ %33, %cond.false.94.i.us ], [ %cond.i.us, %cond.true.86.i.us ], !dbg !2854
  %arrayidx.i.us = getelementptr i8, i8* %cond96.i.us, i64 %i.0645.i.us, !dbg !2885
  %34 = load i8, i8* %arrayidx.i.us, align 1, !dbg !2885, !tbaa !1292
  %conv97.i.us = zext i8 %34 to i32, !dbg !2885
  br label %cond.end.156.i.us, !dbg !2885

cond.end.156.i.us:                                ; preds = %cond.end.95.i.us, %cond.end.126.i.us, %cond.end.151.i.us
  %cond157.i.us = phi i32 [ %conv97.i.us, %cond.end.95.i.us ], [ %conv129.i.us, %cond.end.126.i.us ], [ %29, %cond.end.151.i.us ], !dbg !2854
  call void @llvm.dbg.value(metadata i32 %cond157.i.us, i64 0, metadata !983, metadata !1099) #2, !dbg !2888
  %35 = and i32 %cond157.i.us, -2048, !dbg !2889
  %36 = icmp eq i32 %35, 55296, !dbg !2889
  br i1 %36, label %for.inc.i.us, label %if.then.162.i.loopexit16, !dbg !2889

for.inc.i.us:                                     ; preds = %cond.end.156.i.us
  %shr225.i.us = lshr i32 %cond157.i.us, 24, !dbg !2890
  %conv226.i.us = trunc i32 %shr225.i.us to i8, !dbg !2892
  %incdec.ptr227.i.us = getelementptr i8, i8* %outp.0644.i.us, i64 1, !dbg !2893
  call void @llvm.dbg.value(metadata i8* %incdec.ptr227.i.us, i64 0, metadata !964, metadata !1099) #2, !dbg !2848
  store i8 %conv226.i.us, i8* %outp.0644.i.us, align 1, !dbg !2894, !tbaa !1292
  %shr228.i.us = lshr i32 %cond157.i.us, 16, !dbg !2895
  %conv229.i.us = trunc i32 %shr228.i.us to i8, !dbg !2896
  %incdec.ptr230.i.us = getelementptr i8, i8* %outp.0644.i.us, i64 2, !dbg !2897
  call void @llvm.dbg.value(metadata i8* %incdec.ptr230.i.us, i64 0, metadata !964, metadata !1099) #2, !dbg !2848
  store i8 %conv229.i.us, i8* %incdec.ptr227.i.us, align 1, !dbg !2898, !tbaa !1292
  %shr231.i.us = lshr i32 %cond157.i.us, 8, !dbg !2899
  %conv232.i.us = trunc i32 %shr231.i.us to i8, !dbg !2900
  %incdec.ptr233.i.us = getelementptr i8, i8* %outp.0644.i.us, i64 3, !dbg !2901
  call void @llvm.dbg.value(metadata i8* %incdec.ptr233.i.us, i64 0, metadata !964, metadata !1099) #2, !dbg !2848
  store i8 %conv232.i.us, i8* %incdec.ptr230.i.us, align 1, !dbg !2902, !tbaa !1292
  %conv234.i.us = trunc i32 %cond157.i.us to i8, !dbg !2903
  %incdec.ptr235.i.us = getelementptr i8, i8* %outp.0644.i.us, i64 4, !dbg !2904
  call void @llvm.dbg.value(metadata i8* %incdec.ptr235.i.us, i64 0, metadata !964, metadata !1099) #2, !dbg !2848
  store i8 %conv234.i.us, i8* %incdec.ptr233.i.us, align 1, !dbg !2905, !tbaa !1292
  %.pre = load i64, i64* %end.i, align 8, !dbg !2851, !tbaa !2131
  %inc.i.us = add i64 %i.0645.i.us, 1, !dbg !2906
  call void @llvm.dbg.value(metadata i64 %inc.i.us, i64 0, metadata !960, metadata !1099) #2, !dbg !2850
  call void @llvm.dbg.value(metadata i64* %end.i, i64 0, metadata !962, metadata !1099) #2, !dbg !2782
  %cmp77.i.us = icmp slt i64 %inc.i.us, %.pre, !dbg !2852
  br i1 %cmp77.i.us, label %for.body.i.us, label %for.end.i.loopexit17, !dbg !2853

for.body.us.i:                                    ; preds = %for.body.us.i.preheader, %for.inc.us.i
  %i.0645.us.i = phi i64 [ %inc.us.i, %for.inc.us.i ], [ %22, %for.body.us.i.preheader ], !dbg !2802
  %outp.0644.us.i = phi i8* [ %incdec.ptr199.us.i, %for.inc.us.i ], [ %call76.i, %for.body.us.i.preheader ], !dbg !2802
  %bf.load.us.i = load i32, i32* %24, align 4, !dbg !2854
  %bf.lshr.us.i = lshr i32 %bf.load.us.i, 2, !dbg !2854
  %bf.clear.us.i = and i32 %bf.lshr.us.i, 7, !dbg !2854
  %cmp79.us.i = icmp eq i32 %bf.clear.us.i, 1, !dbg !2854
  br i1 %cmp79.us.i, label %cond.true.us.i, label %cond.false.98.us.i, !dbg !2854

cond.false.98.us.i:                               ; preds = %for.body.us.i
  %cmp103.us.i = icmp eq i32 %bf.clear.us.i, 2, !dbg !2861
  %bf.clear109.us.i = and i32 %bf.load.us.i, 32, !dbg !2863
  %tobool110.us.i = icmp ne i32 %bf.clear109.us.i, 0, !dbg !2863
  br i1 %cmp103.us.i, label %cond.true.105.us.i, label %cond.false.130.us.i, !dbg !2861

cond.false.130.us.i:                              ; preds = %cond.false.98.us.i
  br i1 %tobool110.us.i, label %cond.true.136.us.i, label %cond.false.148.us.i, !dbg !2865

cond.false.148.us.i:                              ; preds = %cond.false.130.us.i
  %37 = load i8*, i8** %any.i, align 8, !dbg !2867, !tbaa !1106
  br label %cond.end.151.us.i, !dbg !2867

cond.true.136.us.i:                               ; preds = %cond.false.130.us.i
  %bf.clear140.us.i = and i32 %bf.load.us.i, 64, !dbg !2869
  %tobool141.us.i = icmp ne i32 %bf.clear140.us.i, 0, !dbg !2869
  %cond147.us.i = select i1 %tobool141.us.i, i8* %25, i8* %26, !dbg !2869
  br label %cond.end.151.us.i, !dbg !2869

cond.end.151.us.i:                                ; preds = %cond.true.136.us.i, %cond.false.148.us.i
  %cond152.us.i = phi i8* [ %37, %cond.false.148.us.i ], [ %cond147.us.i, %cond.true.136.us.i ], !dbg !2854
  %38 = bitcast i8* %cond152.us.i to i32*, !dbg !2871
  %arrayidx153.us.i = getelementptr i32, i32* %38, i64 %i.0645.us.i, !dbg !2871
  %39 = load i32, i32* %arrayidx153.us.i, align 4, !dbg !2871, !tbaa !2195
  br label %cond.end.156.us.i, !dbg !2871

cond.true.105.us.i:                               ; preds = %cond.false.98.us.i
  br i1 %tobool110.us.i, label %cond.true.111.us.i, label %cond.false.123.us.i, !dbg !2863

cond.false.123.us.i:                              ; preds = %cond.true.105.us.i
  %40 = load i8*, i8** %any.i, align 8, !dbg !2874, !tbaa !1106
  br label %cond.end.126.us.i, !dbg !2874

cond.true.111.us.i:                               ; preds = %cond.true.105.us.i
  %bf.clear115.us.i = and i32 %bf.load.us.i, 64, !dbg !2876
  %tobool116.us.i = icmp ne i32 %bf.clear115.us.i, 0, !dbg !2876
  %cond122.us.i = select i1 %tobool116.us.i, i8* %25, i8* %26, !dbg !2876
  br label %cond.end.126.us.i, !dbg !2876

cond.end.126.us.i:                                ; preds = %cond.true.111.us.i, %cond.false.123.us.i
  %cond127.us.i = phi i8* [ %40, %cond.false.123.us.i ], [ %cond122.us.i, %cond.true.111.us.i ], !dbg !2854
  %41 = bitcast i8* %cond127.us.i to i16*, !dbg !2878
  %arrayidx128.us.i = getelementptr i16, i16* %41, i64 %i.0645.us.i, !dbg !2878
  %42 = load i16, i16* %arrayidx128.us.i, align 2, !dbg !2878, !tbaa !2183
  %conv129.us.i = zext i16 %42 to i32, !dbg !2878
  br label %cond.end.156.us.i, !dbg !2878

cond.true.us.i:                                   ; preds = %for.body.us.i
  %bf.clear84.us.i = and i32 %bf.load.us.i, 32, !dbg !2881
  %tobool85.us.i = icmp eq i32 %bf.clear84.us.i, 0, !dbg !2881
  br i1 %tobool85.us.i, label %cond.false.94.us.i, label %cond.true.86.us.i, !dbg !2881

cond.true.86.us.i:                                ; preds = %cond.true.us.i
  %bf.clear90.us.i = and i32 %bf.load.us.i, 64, !dbg !2883
  %tobool91.us.i = icmp ne i32 %bf.clear90.us.i, 0, !dbg !2883
  %cond.us.i = select i1 %tobool91.us.i, i8* %25, i8* %26, !dbg !2883
  br label %cond.end.95.us.i, !dbg !2883

cond.false.94.us.i:                               ; preds = %cond.true.us.i
  %43 = load i8*, i8** %any.i, align 8, !dbg !2855, !tbaa !1106
  br label %cond.end.95.us.i, !dbg !2855

cond.end.95.us.i:                                 ; preds = %cond.false.94.us.i, %cond.true.86.us.i
  %cond96.us.i = phi i8* [ %43, %cond.false.94.us.i ], [ %cond.us.i, %cond.true.86.us.i ], !dbg !2854
  %arrayidx.us.i = getelementptr i8, i8* %cond96.us.i, i64 %i.0645.us.i, !dbg !2885
  %44 = load i8, i8* %arrayidx.us.i, align 1, !dbg !2885, !tbaa !1292
  %conv97.us.i = zext i8 %44 to i32, !dbg !2885
  br label %cond.end.156.us.i, !dbg !2885

cond.end.156.us.i:                                ; preds = %cond.end.95.us.i, %cond.end.126.us.i, %cond.end.151.us.i
  %cond157.us.i = phi i32 [ %conv97.us.i, %cond.end.95.us.i ], [ %conv129.us.i, %cond.end.126.us.i ], [ %39, %cond.end.151.us.i ], !dbg !2854
  call void @llvm.dbg.value(metadata i32 %cond157.us.i, i64 0, metadata !983, metadata !1099) #2, !dbg !2888
  %45 = and i32 %cond157.us.i, -2048, !dbg !2889
  %46 = icmp eq i32 %45, 55296, !dbg !2889
  br i1 %46, label %for.inc.us.i, label %if.then.162.i.loopexit14, !dbg !2889

for.inc.us.i:                                     ; preds = %cond.end.156.us.i
  %shr.us.i = lshr i32 %cond157.us.i, 12, !dbg !2907
  %or.us.i = or i32 %shr.us.i, 224, !dbg !2908
  %conv191.us.i = trunc i32 %or.us.i to i8, !dbg !2909
  %incdec.ptr.us.i = getelementptr i8, i8* %outp.0644.us.i, i64 1, !dbg !2910
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.us.i, i64 0, metadata !964, metadata !1099) #2, !dbg !2848
  store i8 %conv191.us.i, i8* %outp.0644.us.i, align 1, !dbg !2911, !tbaa !1292
  %shr192.us.i = lshr i32 %cond157.us.i, 6, !dbg !2912
  %and.us.i = and i32 %shr192.us.i, 63, !dbg !2913
  %or193.us.i = or i32 %and.us.i, 128, !dbg !2914
  %conv194.us.i = trunc i32 %or193.us.i to i8, !dbg !2915
  %incdec.ptr195.us.i = getelementptr i8, i8* %outp.0644.us.i, i64 2, !dbg !2916
  call void @llvm.dbg.value(metadata i8* %incdec.ptr195.us.i, i64 0, metadata !964, metadata !1099) #2, !dbg !2848
  store i8 %conv194.us.i, i8* %incdec.ptr.us.i, align 1, !dbg !2917, !tbaa !1292
  %and196.us.i = and i32 %cond157.us.i, 63, !dbg !2918
  %or197.us.i = or i32 %and196.us.i, 128, !dbg !2919
  %conv198.us.i = trunc i32 %or197.us.i to i8, !dbg !2920
  %incdec.ptr199.us.i = getelementptr i8, i8* %outp.0644.us.i, i64 3, !dbg !2921
  call void @llvm.dbg.value(metadata i8* %incdec.ptr199.us.i, i64 0, metadata !964, metadata !1099) #2, !dbg !2848
  store i8 %conv198.us.i, i8* %incdec.ptr195.us.i, align 1, !dbg !2922, !tbaa !1292
  %.pre.i = load i64, i64* %end.i, align 8, !dbg !2851, !tbaa !2131
  %inc.us.i = add i64 %i.0645.us.i, 1, !dbg !2906
  call void @llvm.dbg.value(metadata i64 %inc.us.i, i64 0, metadata !960, metadata !1099) #2, !dbg !2850
  call void @llvm.dbg.value(metadata i64* %end.i, i64 0, metadata !962, metadata !1099) #2, !dbg !2782
  %cmp77.us.i = icmp slt i64 %inc.us.i, %.pre.i, !dbg !2852
  br i1 %cmp77.us.i, label %for.body.us.i, label %for.end.i.loopexit15, !dbg !2853

for.body.i:                                       ; preds = %for.body.i.preheader, %for.inc.i
  %i.0645.i = phi i64 [ %inc.i, %for.inc.i ], [ %22, %for.body.i.preheader ], !dbg !2802
  %outp.0644.i = phi i8* [ %outp.2.ph.i, %for.inc.i ], [ %call76.i, %for.body.i.preheader ], !dbg !2802
  %bf.load.i = load i32, i32* %24, align 4, !dbg !2854
  %bf.lshr.i = lshr i32 %bf.load.i, 2, !dbg !2854
  %bf.clear.i = and i32 %bf.lshr.i, 7, !dbg !2854
  %cmp79.i = icmp eq i32 %bf.clear.i, 1, !dbg !2854
  br i1 %cmp79.i, label %cond.true.i, label %cond.false.98.i, !dbg !2854

cond.true.i:                                      ; preds = %for.body.i
  %bf.clear84.i = and i32 %bf.load.i, 32, !dbg !2881
  %tobool85.i = icmp eq i32 %bf.clear84.i, 0, !dbg !2881
  br i1 %tobool85.i, label %cond.false.94.i, label %cond.true.86.i, !dbg !2881

cond.true.86.i:                                   ; preds = %cond.true.i
  %bf.clear90.i = and i32 %bf.load.i, 64, !dbg !2883
  %tobool91.i = icmp ne i32 %bf.clear90.i, 0, !dbg !2883
  %cond.i = select i1 %tobool91.i, i8* %25, i8* %26, !dbg !2883
  br label %cond.end.95.i, !dbg !2883

cond.false.94.i:                                  ; preds = %cond.true.i
  %47 = load i8*, i8** %any.i, align 8, !dbg !2855, !tbaa !1106
  br label %cond.end.95.i, !dbg !2855

cond.end.95.i:                                    ; preds = %cond.false.94.i, %cond.true.86.i
  %cond96.i = phi i8* [ %47, %cond.false.94.i ], [ %cond.i, %cond.true.86.i ], !dbg !2854
  %arrayidx.i = getelementptr i8, i8* %cond96.i, i64 %i.0645.i, !dbg !2885
  %48 = load i8, i8* %arrayidx.i, align 1, !dbg !2885, !tbaa !1292
  %conv97.i = zext i8 %48 to i32, !dbg !2885
  br label %cond.end.156.i, !dbg !2885

cond.false.98.i:                                  ; preds = %for.body.i
  %cmp103.i = icmp eq i32 %bf.clear.i, 2, !dbg !2861
  %bf.clear109.i = and i32 %bf.load.i, 32, !dbg !2863
  %tobool110.i = icmp ne i32 %bf.clear109.i, 0, !dbg !2863
  br i1 %cmp103.i, label %cond.true.105.i, label %cond.false.130.i, !dbg !2861

cond.true.105.i:                                  ; preds = %cond.false.98.i
  br i1 %tobool110.i, label %cond.true.111.i, label %cond.false.123.i, !dbg !2863

cond.true.111.i:                                  ; preds = %cond.true.105.i
  %bf.clear115.i = and i32 %bf.load.i, 64, !dbg !2876
  %tobool116.i = icmp ne i32 %bf.clear115.i, 0, !dbg !2876
  %cond122.i = select i1 %tobool116.i, i8* %25, i8* %26, !dbg !2876
  br label %cond.end.126.i, !dbg !2876

cond.false.123.i:                                 ; preds = %cond.true.105.i
  %49 = load i8*, i8** %any.i, align 8, !dbg !2874, !tbaa !1106
  br label %cond.end.126.i, !dbg !2874

cond.end.126.i:                                   ; preds = %cond.false.123.i, %cond.true.111.i
  %cond127.i = phi i8* [ %49, %cond.false.123.i ], [ %cond122.i, %cond.true.111.i ], !dbg !2854
  %50 = bitcast i8* %cond127.i to i16*, !dbg !2878
  %arrayidx128.i = getelementptr i16, i16* %50, i64 %i.0645.i, !dbg !2878
  %51 = load i16, i16* %arrayidx128.i, align 2, !dbg !2878, !tbaa !2183
  %conv129.i = zext i16 %51 to i32, !dbg !2878
  br label %cond.end.156.i, !dbg !2878

cond.false.130.i:                                 ; preds = %cond.false.98.i
  br i1 %tobool110.i, label %cond.true.136.i, label %cond.false.148.i, !dbg !2865

cond.true.136.i:                                  ; preds = %cond.false.130.i
  %bf.clear140.i = and i32 %bf.load.i, 64, !dbg !2869
  %tobool141.i = icmp ne i32 %bf.clear140.i, 0, !dbg !2869
  %cond147.i = select i1 %tobool141.i, i8* %25, i8* %26, !dbg !2869
  br label %cond.end.151.i, !dbg !2869

cond.false.148.i:                                 ; preds = %cond.false.130.i
  %52 = load i8*, i8** %any.i, align 8, !dbg !2867, !tbaa !1106
  br label %cond.end.151.i, !dbg !2867

cond.end.151.i:                                   ; preds = %cond.false.148.i, %cond.true.136.i
  %cond152.i = phi i8* [ %52, %cond.false.148.i ], [ %cond147.i, %cond.true.136.i ], !dbg !2854
  %53 = bitcast i8* %cond152.i to i32*, !dbg !2871
  %arrayidx153.i = getelementptr i32, i32* %53, i64 %i.0645.i, !dbg !2871
  %54 = load i32, i32* %arrayidx153.i, align 4, !dbg !2871, !tbaa !2195
  br label %cond.end.156.i, !dbg !2871

cond.end.156.i:                                   ; preds = %cond.end.151.i, %cond.end.126.i, %cond.end.95.i
  %cond157.i = phi i32 [ %conv97.i, %cond.end.95.i ], [ %conv129.i, %cond.end.126.i ], [ %54, %cond.end.151.i ], !dbg !2854
  call void @llvm.dbg.value(metadata i32 %cond157.i, i64 0, metadata !983, metadata !1099) #2, !dbg !2888
  %55 = and i32 %cond157.i, -2048, !dbg !2889
  %56 = icmp eq i32 %55, 55296, !dbg !2889
  br i1 %56, label %if.end.190.i, label %if.then.162.i.loopexit, !dbg !2889

if.then.162.i.loopexit:                           ; preds = %cond.end.156.i
  br label %if.then.162.i, !dbg !2923

if.then.162.i.loopexit14:                         ; preds = %cond.end.156.us.i
  br label %if.then.162.i, !dbg !2923

if.then.162.i.loopexit16:                         ; preds = %cond.end.156.i.us
  br label %if.then.162.i, !dbg !2923

if.then.162.i:                                    ; preds = %if.then.162.i.loopexit16, %if.then.162.i.loopexit14, %if.then.162.i.loopexit
  %ob_type163.i = getelementptr inbounds %struct._object, %struct._object* %exc, i64 0, i32 1, !dbg !2923
  %57 = bitcast %struct._typeobject** %ob_type163.i to %struct._object**, !dbg !2923
  %58 = load %struct._object*, %struct._object** %57, align 8, !dbg !2923, !tbaa !1214
  call void @PyErr_SetObject(%struct._object* %58, %struct._object* %exc) #2, !dbg !2924
  call void @llvm.dbg.value(metadata %struct._object* %call59.i, i64 0, metadata !987, metadata !1099) #2, !dbg !2925
  %ob_refcnt166.i = getelementptr inbounds %struct._object, %struct._object* %call59.i, i64 0, i32 0, !dbg !2927
  %59 = load i64, i64* %ob_refcnt166.i, align 8, !dbg !2927, !tbaa !1209
  %dec167.i = add i64 %59, -1, !dbg !2927
  store i64 %dec167.i, i64* %ob_refcnt166.i, align 8, !dbg !2927, !tbaa !1209
  %cmp168.i = icmp eq i64 %dec167.i, 0, !dbg !2927
  br i1 %cmp168.i, label %if.else.171.i, label %if.end.174.i, !dbg !2929

if.else.171.i:                                    ; preds = %if.then.162.i
  %ob_type172.i = getelementptr inbounds %struct._object, %struct._object* %call59.i, i64 0, i32 1, !dbg !2930
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type172.i, align 8, !dbg !2930, !tbaa !1214
  %tp_dealloc173.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i64 0, i32 4, !dbg !2930
  %61 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc173.i, align 8, !dbg !2930, !tbaa !1215
  call void %61(%struct._object* %call59.i) #2, !dbg !2930
  br label %if.end.174.i, !dbg !2802

if.end.174.i:                                     ; preds = %if.else.171.i, %if.then.162.i
  call void @llvm.dbg.value(metadata %struct._object* %call8.i, i64 0, metadata !991, metadata !1099) #2, !dbg !2932
  %ob_refcnt179.i = getelementptr inbounds %struct._object, %struct._object* %call8.i, i64 0, i32 0, !dbg !2934
  %62 = load i64, i64* %ob_refcnt179.i, align 8, !dbg !2934, !tbaa !1209
  %dec180.i = add i64 %62, -1, !dbg !2934
  store i64 %dec180.i, i64* %ob_refcnt179.i, align 8, !dbg !2934, !tbaa !1209
  %cmp181.i = icmp eq i64 %dec180.i, 0, !dbg !2934
  br i1 %cmp181.i, label %if.else.184.i, label %PyCodec_SurrogatePassErrors.exit, !dbg !2936

if.else.184.i:                                    ; preds = %if.end.174.i
  %ob_type185.i = getelementptr inbounds %struct._object, %struct._object* %call8.i, i64 0, i32 1, !dbg !2937
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type185.i, align 8, !dbg !2937, !tbaa !1214
  %tp_dealloc186.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i64 0, i32 4, !dbg !2937
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc186.i, align 8, !dbg !2937, !tbaa !1215
  call void %64(%struct._object* %call8.i) #2, !dbg !2937
  br label %PyCodec_SurrogatePassErrors.exit, !dbg !2802

if.end.190.i:                                     ; preds = %cond.end.156.i
  switch i32 %call46.i, label %for.inc.i [
    i32 4, label %sw.bb.212.i
    i32 2, label %sw.bb.200.i
    i32 1, label %sw.bb.206.i
  ], !dbg !2939

sw.bb.200.i:                                      ; preds = %if.end.190.i
  %conv201.i = trunc i32 %cond157.i to i8, !dbg !2940
  %incdec.ptr202.i = getelementptr i8, i8* %outp.0644.i, i64 1, !dbg !2941
  call void @llvm.dbg.value(metadata i8* %incdec.ptr202.i, i64 0, metadata !964, metadata !1099) #2, !dbg !2848
  store i8 %conv201.i, i8* %outp.0644.i, align 1, !dbg !2942, !tbaa !1292
  %shr203.i = lshr i32 %cond157.i, 8, !dbg !2943
  %conv204.i = trunc i32 %shr203.i to i8, !dbg !2944
  %incdec.ptr205.i = getelementptr i8, i8* %outp.0644.i, i64 2, !dbg !2945
  call void @llvm.dbg.value(metadata i8* %incdec.ptr205.i, i64 0, metadata !964, metadata !1099) #2, !dbg !2848
  store i8 %conv204.i, i8* %incdec.ptr202.i, align 1, !dbg !2946, !tbaa !1292
  br label %for.inc.i, !dbg !2947

sw.bb.206.i:                                      ; preds = %if.end.190.i
  %shr207.i = lshr i32 %cond157.i, 8, !dbg !2948
  %conv208.i = trunc i32 %shr207.i to i8, !dbg !2949
  %incdec.ptr209.i = getelementptr i8, i8* %outp.0644.i, i64 1, !dbg !2950
  call void @llvm.dbg.value(metadata i8* %incdec.ptr209.i, i64 0, metadata !964, metadata !1099) #2, !dbg !2848
  store i8 %conv208.i, i8* %outp.0644.i, align 1, !dbg !2951, !tbaa !1292
  %conv210.i = trunc i32 %cond157.i to i8, !dbg !2952
  %incdec.ptr211.i = getelementptr i8, i8* %outp.0644.i, i64 2, !dbg !2953
  call void @llvm.dbg.value(metadata i8* %incdec.ptr211.i, i64 0, metadata !964, metadata !1099) #2, !dbg !2848
  store i8 %conv210.i, i8* %incdec.ptr209.i, align 1, !dbg !2954, !tbaa !1292
  br label %for.inc.i, !dbg !2955

sw.bb.212.i:                                      ; preds = %if.end.190.i
  %conv213.i = trunc i32 %cond157.i to i8, !dbg !2956
  %incdec.ptr214.i = getelementptr i8, i8* %outp.0644.i, i64 1, !dbg !2957
  call void @llvm.dbg.value(metadata i8* %incdec.ptr214.i, i64 0, metadata !964, metadata !1099) #2, !dbg !2848
  store i8 %conv213.i, i8* %outp.0644.i, align 1, !dbg !2958, !tbaa !1292
  %shr215.i = lshr i32 %cond157.i, 8, !dbg !2959
  %conv216.i = trunc i32 %shr215.i to i8, !dbg !2960
  %incdec.ptr217.i = getelementptr i8, i8* %outp.0644.i, i64 2, !dbg !2961
  call void @llvm.dbg.value(metadata i8* %incdec.ptr217.i, i64 0, metadata !964, metadata !1099) #2, !dbg !2848
  store i8 %conv216.i, i8* %incdec.ptr214.i, align 1, !dbg !2962, !tbaa !1292
  %shr218.i = lshr i32 %cond157.i, 16, !dbg !2963
  %conv219.i = trunc i32 %shr218.i to i8, !dbg !2964
  %incdec.ptr220.i = getelementptr i8, i8* %outp.0644.i, i64 3, !dbg !2965
  call void @llvm.dbg.value(metadata i8* %incdec.ptr220.i, i64 0, metadata !964, metadata !1099) #2, !dbg !2848
  store i8 %conv219.i, i8* %incdec.ptr217.i, align 1, !dbg !2966, !tbaa !1292
  %shr221.i = lshr i32 %cond157.i, 24, !dbg !2967
  %conv222.i = trunc i32 %shr221.i to i8, !dbg !2968
  %incdec.ptr223.i = getelementptr i8, i8* %outp.0644.i, i64 4, !dbg !2969
  call void @llvm.dbg.value(metadata i8* %incdec.ptr223.i, i64 0, metadata !964, metadata !1099) #2, !dbg !2848
  store i8 %conv222.i, i8* %incdec.ptr220.i, align 1, !dbg !2970, !tbaa !1292
  br label %for.inc.i, !dbg !2971

for.inc.i:                                        ; preds = %sw.bb.212.i, %sw.bb.206.i, %sw.bb.200.i, %if.end.190.i
  %outp.2.ph.i = phi i8* [ %incdec.ptr205.i, %sw.bb.200.i ], [ %incdec.ptr211.i, %sw.bb.206.i ], [ %incdec.ptr223.i, %sw.bb.212.i ], [ %outp.0644.i, %if.end.190.i ], !dbg !2802
  %inc.i = add i64 %i.0645.i, 1, !dbg !2906
  call void @llvm.dbg.value(metadata i64 %inc.i, i64 0, metadata !960, metadata !1099) #2, !dbg !2850
  call void @llvm.dbg.value(metadata i64* %end.i, i64 0, metadata !962, metadata !1099) #2, !dbg !2782
  %65 = load i64, i64* %end.i, align 8, !dbg !2851, !tbaa !2131
  %cmp77.i = icmp slt i64 %inc.i, %65, !dbg !2852
  br i1 %cmp77.i, label %for.body.i, label %for.end.i.loopexit, !dbg !2853

for.end.i.loopexit:                               ; preds = %for.inc.i
  %.lcssa = phi i64 [ %65, %for.inc.i ]
  br label %for.end.i, !dbg !2972

for.end.i.loopexit15:                             ; preds = %for.inc.us.i
  %.pre.i.lcssa = phi i64 [ %.pre.i, %for.inc.us.i ]
  br label %for.end.i, !dbg !2972

for.end.i.loopexit17:                             ; preds = %for.inc.i.us
  %.pre.lcssa = phi i64 [ %.pre, %for.inc.i.us ]
  br label %for.end.i, !dbg !2972

for.end.i:                                        ; preds = %for.end.i.loopexit17, %for.end.i.loopexit15, %for.end.i.loopexit, %if.end.75.i
  %.lcssa.i = phi i64 [ %23, %if.end.75.i ], [ %.lcssa, %for.end.i.loopexit ], [ %.pre.i.lcssa, %for.end.i.loopexit15 ], [ %.pre.lcssa, %for.end.i.loopexit17 ], !dbg !2802
  %call236.i = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), %struct._object* %call59.i, i64 %.lcssa.i) #2, !dbg !2972
  call void @llvm.dbg.value(metadata %struct._object* %call236.i, i64 0, metadata !954, metadata !1099) #2, !dbg !2973
  call void @llvm.dbg.value(metadata %struct._object* %call59.i, i64 0, metadata !993, metadata !1099) #2, !dbg !2974
  %ob_refcnt239.i = getelementptr inbounds %struct._object, %struct._object* %call59.i, i64 0, i32 0, !dbg !2976
  %66 = load i64, i64* %ob_refcnt239.i, align 8, !dbg !2976, !tbaa !1209
  %dec240.i = add i64 %66, -1, !dbg !2976
  store i64 %dec240.i, i64* %ob_refcnt239.i, align 8, !dbg !2976, !tbaa !1209
  %cmp241.i = icmp eq i64 %dec240.i, 0, !dbg !2976
  br i1 %cmp241.i, label %if.else.244.i, label %if.end.247.i, !dbg !2978

if.else.244.i:                                    ; preds = %for.end.i
  %ob_type245.i = getelementptr inbounds %struct._object, %struct._object* %call59.i, i64 0, i32 1, !dbg !2979
  %67 = load %struct._typeobject*, %struct._typeobject** %ob_type245.i, align 8, !dbg !2979, !tbaa !1214
  %tp_dealloc246.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %67, i64 0, i32 4, !dbg !2979
  %68 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc246.i, align 8, !dbg !2979, !tbaa !1215
  call void %68(%struct._object* %call59.i) #2, !dbg !2979
  br label %if.end.247.i, !dbg !2802

if.end.247.i:                                     ; preds = %if.else.244.i, %for.end.i
  call void @llvm.dbg.value(metadata %struct._object* %call8.i, i64 0, metadata !995, metadata !1099) #2, !dbg !2981
  %ob_refcnt252.i = getelementptr inbounds %struct._object, %struct._object* %call8.i, i64 0, i32 0, !dbg !2983
  %69 = load i64, i64* %ob_refcnt252.i, align 8, !dbg !2983, !tbaa !1209
  %dec253.i = add i64 %69, -1, !dbg !2983
  store i64 %dec253.i, i64* %ob_refcnt252.i, align 8, !dbg !2983, !tbaa !1209
  %cmp254.i = icmp eq i64 %dec253.i, 0, !dbg !2983
  br i1 %cmp254.i, label %if.else.257.i, label %PyCodec_SurrogatePassErrors.exit, !dbg !2985

if.else.257.i:                                    ; preds = %if.end.247.i
  %ob_type258.i = getelementptr inbounds %struct._object, %struct._object* %call8.i, i64 0, i32 1, !dbg !2986
  %70 = load %struct._typeobject*, %struct._typeobject** %ob_type258.i, align 8, !dbg !2986, !tbaa !1214
  %tp_dealloc259.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %70, i64 0, i32 4, !dbg !2986
  %71 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc259.i, align 8, !dbg !2986, !tbaa !1215
  call void %71(%struct._object* %call8.i) #2, !dbg !2986
  br label %PyCodec_SurrogatePassErrors.exit, !dbg !2802

if.else.264.i:                                    ; preds = %entry
  %72 = load %struct._object*, %struct._object** @PyExc_UnicodeDecodeError, align 8, !dbg !2988, !tbaa !1106
  %call265.i = tail call i32 @PyObject_IsInstance(%struct._object* %exc, %struct._object* %72) #2, !dbg !2989
  %tobool266.i = icmp eq i32 %call265.i, 0, !dbg !2989
  br i1 %tobool266.i, label %if.else.473.i, label %if.then.267.i, !dbg !2990

if.then.267.i:                                    ; preds = %if.else.264.i
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1000, metadata !1099) #2, !dbg !2991
  tail call void @llvm.dbg.value(metadata i64* %start.i, i64 0, metadata !961, metadata !1099) #2, !dbg !2778
  %call269.i = call i32 @PyUnicodeDecodeError_GetStart(%struct._object* %exc, i64* nonnull %start.i) #2, !dbg !2992
  %tobool270.i = icmp eq i32 %call269.i, 0, !dbg !2992
  br i1 %tobool270.i, label %if.end.272.i, label %PyCodec_SurrogatePassErrors.exit, !dbg !2994

if.end.272.i:                                     ; preds = %if.then.267.i
  call void @llvm.dbg.value(metadata i64* %end.i, i64 0, metadata !962, metadata !1099) #2, !dbg !2782
  %call273.i = call i32 @PyUnicodeDecodeError_GetEnd(%struct._object* %exc, i64* nonnull %end.i) #2, !dbg !2995
  %tobool274.i = icmp eq i32 %call273.i, 0, !dbg !2995
  br i1 %tobool274.i, label %if.end.276.i, label %PyCodec_SurrogatePassErrors.exit, !dbg !2997

if.end.276.i:                                     ; preds = %if.end.272.i
  %call277.i = call %struct._object* @PyUnicodeDecodeError_GetObject(%struct._object* %exc) #2, !dbg !2998
  call void @llvm.dbg.value(metadata %struct._object* %call277.i, i64 0, metadata !955, metadata !1099) #2, !dbg !2788
  %tobool278.i = icmp eq %struct._object* %call277.i, null, !dbg !3000
  br i1 %tobool278.i, label %PyCodec_SurrogatePassErrors.exit, label %if.end.280.i, !dbg !3001

if.end.280.i:                                     ; preds = %if.end.276.i
  %call281.i = call i8* @PyBytes_AsString(%struct._object* %call277.i) #2, !dbg !3002
  call void @llvm.dbg.value(metadata i8* %call281.i, i64 0, metadata !997, metadata !1099) #2, !dbg !3003
  %tobool282.i = icmp eq i8* %call281.i, null, !dbg !3004
  br i1 %tobool282.i, label %do.body.284.i, label %if.end.297.i, !dbg !3005

do.body.284.i:                                    ; preds = %if.end.280.i
  call void @llvm.dbg.value(metadata %struct._object* %call277.i, i64 0, metadata !1001, metadata !1099) #2, !dbg !3006
  %ob_refcnt286.i = getelementptr inbounds %struct._object, %struct._object* %call277.i, i64 0, i32 0, !dbg !3008
  %73 = load i64, i64* %ob_refcnt286.i, align 8, !dbg !3008, !tbaa !1209
  %dec287.i = add i64 %73, -1, !dbg !3008
  store i64 %dec287.i, i64* %ob_refcnt286.i, align 8, !dbg !3008, !tbaa !1209
  %cmp288.i = icmp eq i64 %dec287.i, 0, !dbg !3008
  br i1 %cmp288.i, label %if.else.291.i, label %PyCodec_SurrogatePassErrors.exit, !dbg !3010

if.else.291.i:                                    ; preds = %do.body.284.i
  %ob_type292.i = getelementptr inbounds %struct._object, %struct._object* %call277.i, i64 0, i32 1, !dbg !3011
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type292.i, align 8, !dbg !3011, !tbaa !1214
  %tp_dealloc293.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %74, i64 0, i32 4, !dbg !3011
  %75 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc293.i, align 8, !dbg !3011, !tbaa !1215
  call void %75(%struct._object* %call277.i) #2, !dbg !3011
  br label %PyCodec_SurrogatePassErrors.exit, !dbg !2802

if.end.297.i:                                     ; preds = %if.end.280.i
  %call298.i = call %struct._object* @PyUnicodeDecodeError_GetEncoding(%struct._object* %exc) #2, !dbg !3013
  call void @llvm.dbg.value(metadata %struct._object* %call298.i, i64 0, metadata !956, metadata !1099) #2, !dbg !2792
  %tobool299.i = icmp eq %struct._object* %call298.i, null, !dbg !3014
  br i1 %tobool299.i, label %do.body.301.i, label %if.end.314.i, !dbg !3015

do.body.301.i:                                    ; preds = %if.end.297.i
  call void @llvm.dbg.value(metadata %struct._object* %call277.i, i64 0, metadata !1005, metadata !1099) #2, !dbg !3016
  %ob_refcnt303.i = getelementptr inbounds %struct._object, %struct._object* %call277.i, i64 0, i32 0, !dbg !3018
  %76 = load i64, i64* %ob_refcnt303.i, align 8, !dbg !3018, !tbaa !1209
  %dec304.i = add i64 %76, -1, !dbg !3018
  store i64 %dec304.i, i64* %ob_refcnt303.i, align 8, !dbg !3018, !tbaa !1209
  %cmp305.i = icmp eq i64 %dec304.i, 0, !dbg !3018
  br i1 %cmp305.i, label %if.else.308.i, label %PyCodec_SurrogatePassErrors.exit, !dbg !3020

if.else.308.i:                                    ; preds = %do.body.301.i
  %ob_type309.i = getelementptr inbounds %struct._object, %struct._object* %call277.i, i64 0, i32 1, !dbg !3021
  %77 = load %struct._typeobject*, %struct._typeobject** %ob_type309.i, align 8, !dbg !3021, !tbaa !1214
  %tp_dealloc310.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %77, i64 0, i32 4, !dbg !3021
  %78 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc310.i, align 8, !dbg !3021, !tbaa !1215
  call void %78(%struct._object* %call277.i) #2, !dbg !3021
  br label %PyCodec_SurrogatePassErrors.exit, !dbg !2802

if.end.314.i:                                     ; preds = %if.end.297.i
  %call315.i = call i8* @PyUnicode_AsUTF8(%struct._object* %call298.i) #2, !dbg !3023
  call void @llvm.dbg.value(metadata i8* %call315.i, i64 0, metadata !957, metadata !1099) #2, !dbg !2804
  %tobool316.i = icmp eq i8* %call315.i, null, !dbg !3024
  br i1 %tobool316.i, label %do.body.318.i, label %if.end.344.i, !dbg !3025

do.body.318.i:                                    ; preds = %if.end.314.i
  call void @llvm.dbg.value(metadata %struct._object* %call277.i, i64 0, metadata !1009, metadata !1099) #2, !dbg !3026
  %ob_refcnt320.i = getelementptr inbounds %struct._object, %struct._object* %call277.i, i64 0, i32 0, !dbg !3028
  %79 = load i64, i64* %ob_refcnt320.i, align 8, !dbg !3028, !tbaa !1209
  %dec321.i = add i64 %79, -1, !dbg !3028
  store i64 %dec321.i, i64* %ob_refcnt320.i, align 8, !dbg !3028, !tbaa !1209
  %cmp322.i = icmp eq i64 %dec321.i, 0, !dbg !3028
  br i1 %cmp322.i, label %if.else.325.i, label %if.end.328.i, !dbg !3030

if.else.325.i:                                    ; preds = %do.body.318.i
  %ob_type326.i = getelementptr inbounds %struct._object, %struct._object* %call277.i, i64 0, i32 1, !dbg !3031
  %80 = load %struct._typeobject*, %struct._typeobject** %ob_type326.i, align 8, !dbg !3031, !tbaa !1214
  %tp_dealloc327.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %80, i64 0, i32 4, !dbg !3031
  %81 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc327.i, align 8, !dbg !3031, !tbaa !1215
  call void %81(%struct._object* %call277.i) #2, !dbg !3031
  br label %if.end.328.i, !dbg !2802

if.end.328.i:                                     ; preds = %if.else.325.i, %do.body.318.i
  call void @llvm.dbg.value(metadata %struct._object* %call298.i, i64 0, metadata !1013, metadata !1099) #2, !dbg !3033
  %ob_refcnt333.i = getelementptr inbounds %struct._object, %struct._object* %call298.i, i64 0, i32 0, !dbg !3035
  %82 = load i64, i64* %ob_refcnt333.i, align 8, !dbg !3035, !tbaa !1209
  %dec334.i = add i64 %82, -1, !dbg !3035
  store i64 %dec334.i, i64* %ob_refcnt333.i, align 8, !dbg !3035, !tbaa !1209
  %cmp335.i = icmp eq i64 %dec334.i, 0, !dbg !3035
  br i1 %cmp335.i, label %if.else.338.i, label %PyCodec_SurrogatePassErrors.exit, !dbg !3037

if.else.338.i:                                    ; preds = %if.end.328.i
  %ob_type339.i = getelementptr inbounds %struct._object, %struct._object* %call298.i, i64 0, i32 1, !dbg !3038
  %83 = load %struct._typeobject*, %struct._typeobject** %ob_type339.i, align 8, !dbg !3038, !tbaa !1214
  %tp_dealloc340.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %83, i64 0, i32 4, !dbg !3038
  %84 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc340.i, align 8, !dbg !3038, !tbaa !1215
  call void %84(%struct._object* %call298.i) #2, !dbg !3038
  br label %PyCodec_SurrogatePassErrors.exit, !dbg !2802

if.end.344.i:                                     ; preds = %if.end.314.i
  call void @llvm.dbg.value(metadata i32* %bytelength.i, i64 0, metadata !959, metadata !1099) #2, !dbg !2821
  %call345.i = call fastcc i32 @get_standard_encoding(i8* %call315.i, i32* nonnull %bytelength.i) #2, !dbg !3040
  call void @llvm.dbg.value(metadata i32 %call345.i, i64 0, metadata !958, metadata !1099) #2, !dbg !2823
  call void @llvm.dbg.value(metadata %struct._object* %call298.i, i64 0, metadata !1015, metadata !1099) #2, !dbg !3041
  %ob_refcnt348.i = getelementptr inbounds %struct._object, %struct._object* %call298.i, i64 0, i32 0, !dbg !3043
  %85 = load i64, i64* %ob_refcnt348.i, align 8, !dbg !3043, !tbaa !1209
  %dec349.i = add i64 %85, -1, !dbg !3043
  store i64 %dec349.i, i64* %ob_refcnt348.i, align 8, !dbg !3043, !tbaa !1209
  %cmp350.i = icmp eq i64 %dec349.i, 0, !dbg !3043
  br i1 %cmp350.i, label %if.else.353.i, label %if.end.356.i, !dbg !3045

if.else.353.i:                                    ; preds = %if.end.344.i
  %ob_type354.i = getelementptr inbounds %struct._object, %struct._object* %call298.i, i64 0, i32 1, !dbg !3046
  %86 = load %struct._typeobject*, %struct._typeobject** %ob_type354.i, align 8, !dbg !3046, !tbaa !1214
  %tp_dealloc355.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %86, i64 0, i32 4, !dbg !3046
  %87 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc355.i, align 8, !dbg !3046, !tbaa !1215
  call void %87(%struct._object* %call298.i) #2, !dbg !3046
  br label %if.end.356.i, !dbg !2802

if.end.356.i:                                     ; preds = %if.else.353.i, %if.end.344.i
  call void @llvm.dbg.value(metadata i64* %start.i, i64 0, metadata !961, metadata !1099) #2, !dbg !2778
  %88 = load i64, i64* %start.i, align 8, !dbg !3048, !tbaa !2131
  %add.ptr359.i = getelementptr i8, i8* %call281.i, i64 %88, !dbg !3049
  call void @llvm.dbg.value(metadata i8* %add.ptr359.i, i64 0, metadata !997, metadata !1099) #2, !dbg !3003
  %89 = getelementptr inbounds %struct._object, %struct._object* %call277.i, i64 1, i32 0, !dbg !3050
  %90 = load i64, i64* %89, align 8, !dbg !3050, !tbaa !1374
  %sub360.i = sub i64 %90, %88, !dbg !3052
  call void @llvm.dbg.value(metadata i32* %bytelength.i, i64 0, metadata !959, metadata !1099) #2, !dbg !2821
  %91 = load i32, i32* %bytelength.i, align 4, !dbg !3053, !tbaa !2195
  %conv361.i = sext i32 %91 to i64, !dbg !3054
  %cmp362.i = icmp slt i64 %sub360.i, %conv361.i, !dbg !3055
  br i1 %cmp362.i, label %do.body.442.i, label %if.then.364.i, !dbg !3056

if.then.364.i:                                    ; preds = %if.end.356.i
  switch i32 %call345.i, label %do.body.442.i [
    i32 0, label %sw.bb.365.i
    i32 2, label %sw.bb.396.i
    i32 1, label %sw.bb.403.i
    i32 4, label %sw.bb.410.i
    i32 3, label %sw.bb.425.i
  ], !dbg !3057

sw.bb.365.i:                                      ; preds = %if.then.364.i
  %92 = load i8, i8* %add.ptr359.i, align 1, !dbg !3059, !tbaa !1292
  %conv367.i = zext i8 %92 to i32, !dbg !3059
  %and368.i = and i32 %conv367.i, 240, !dbg !3062
  %cmp369.i = icmp eq i32 %and368.i, 224, !dbg !3063
  br i1 %cmp369.i, label %land.lhs.true.371.i, label %do.body.442.i, !dbg !3064

land.lhs.true.371.i:                              ; preds = %sw.bb.365.i
  %arrayidx372.i = getelementptr i8, i8* %add.ptr359.i, i64 1, !dbg !3065
  %93 = load i8, i8* %arrayidx372.i, align 1, !dbg !3065, !tbaa !1292
  %conv373.i = zext i8 %93 to i32, !dbg !3065
  %and374.i = and i32 %conv373.i, 192, !dbg !3066
  %cmp375.i = icmp eq i32 %and374.i, 128, !dbg !3067
  br i1 %cmp375.i, label %land.lhs.true.377.i, label %do.body.442.i, !dbg !3068

land.lhs.true.377.i:                              ; preds = %land.lhs.true.371.i
  %arrayidx378.i = getelementptr i8, i8* %add.ptr359.i, i64 2, !dbg !3069
  %94 = load i8, i8* %arrayidx378.i, align 1, !dbg !3069, !tbaa !1292
  %conv379.i = zext i8 %94 to i32, !dbg !3069
  %and380.i = and i32 %conv379.i, 192, !dbg !3070
  %cmp381.i = icmp eq i32 %and380.i, 128, !dbg !3071
  br i1 %cmp381.i, label %if.then.383.i, label %do.body.442.i, !dbg !3072

if.then.383.i:                                    ; preds = %land.lhs.true.377.i
  %and386.i = shl nuw nsw i32 %conv367.i, 12, !dbg !3073
  %shl.i = and i32 %and386.i, 61440, !dbg !3073
  %and389.i = shl nuw nsw i32 %conv373.i, 6, !dbg !3075
  %shl390.i = and i32 %and389.i, 4032, !dbg !3075
  %add.i = or i32 %shl390.i, %shl.i, !dbg !3076
  %and393.i = and i32 %conv379.i, 63, !dbg !3077
  %add394.i = or i32 %add.i, %and393.i, !dbg !3078
  call void @llvm.dbg.value(metadata i32 %add394.i, i64 0, metadata !1000, metadata !1099) #2, !dbg !2991
  br label %do.body.442.i, !dbg !3079

sw.bb.396.i:                                      ; preds = %if.then.364.i
  %arrayidx397.i = getelementptr i8, i8* %add.ptr359.i, i64 1, !dbg !3080
  %95 = load i8, i8* %arrayidx397.i, align 1, !dbg !3080, !tbaa !1292
  %conv398.i = zext i8 %95 to i32, !dbg !3080
  %shl399.i = shl nuw nsw i32 %conv398.i, 8, !dbg !3081
  %96 = load i8, i8* %add.ptr359.i, align 1, !dbg !3082, !tbaa !1292
  %conv401.i = zext i8 %96 to i32, !dbg !3082
  %or402.i = or i32 %shl399.i, %conv401.i, !dbg !3083
  call void @llvm.dbg.value(metadata i32 %or402.i, i64 0, metadata !1000, metadata !1099) #2, !dbg !2991
  br label %do.body.442.i, !dbg !3084

sw.bb.403.i:                                      ; preds = %if.then.364.i
  %97 = load i8, i8* %add.ptr359.i, align 1, !dbg !3085, !tbaa !1292
  %conv405.i = zext i8 %97 to i32, !dbg !3085
  %shl406.i = shl nuw nsw i32 %conv405.i, 8, !dbg !3086
  %arrayidx407.i = getelementptr i8, i8* %add.ptr359.i, i64 1, !dbg !3087
  %98 = load i8, i8* %arrayidx407.i, align 1, !dbg !3087, !tbaa !1292
  %conv408.i = zext i8 %98 to i32, !dbg !3087
  %or409.i = or i32 %shl406.i, %conv408.i, !dbg !3088
  call void @llvm.dbg.value(metadata i32 %or409.i, i64 0, metadata !1000, metadata !1099) #2, !dbg !2991
  br label %do.body.442.i, !dbg !3089

sw.bb.410.i:                                      ; preds = %if.then.364.i
  %arrayidx411.i = getelementptr i8, i8* %add.ptr359.i, i64 3, !dbg !3090
  %99 = load i8, i8* %arrayidx411.i, align 1, !dbg !3090, !tbaa !1292
  %conv412.i = zext i8 %99 to i32, !dbg !3090
  %shl413.i = shl nuw i32 %conv412.i, 24, !dbg !3091
  %arrayidx414.i = getelementptr i8, i8* %add.ptr359.i, i64 2, !dbg !3092
  %100 = load i8, i8* %arrayidx414.i, align 1, !dbg !3092, !tbaa !1292
  %conv415.i = zext i8 %100 to i32, !dbg !3092
  %shl416.i = shl nuw nsw i32 %conv415.i, 16, !dbg !3093
  %or417.i = or i32 %shl416.i, %shl413.i, !dbg !3094
  %arrayidx418.i = getelementptr i8, i8* %add.ptr359.i, i64 1, !dbg !3095
  %101 = load i8, i8* %arrayidx418.i, align 1, !dbg !3095, !tbaa !1292
  %conv419.i = zext i8 %101 to i32, !dbg !3095
  %shl420.i = shl nuw nsw i32 %conv419.i, 8, !dbg !3096
  %or421.i = or i32 %or417.i, %shl420.i, !dbg !3097
  %102 = load i8, i8* %add.ptr359.i, align 1, !dbg !3098, !tbaa !1292
  %conv423.i = zext i8 %102 to i32, !dbg !3098
  %or424.i = or i32 %or421.i, %conv423.i, !dbg !3099
  call void @llvm.dbg.value(metadata i32 %or424.i, i64 0, metadata !1000, metadata !1099) #2, !dbg !2991
  br label %do.body.442.i, !dbg !3100

sw.bb.425.i:                                      ; preds = %if.then.364.i
  %103 = load i8, i8* %add.ptr359.i, align 1, !dbg !3101, !tbaa !1292
  %conv427.i = zext i8 %103 to i32, !dbg !3101
  %shl428.i = shl nuw i32 %conv427.i, 24, !dbg !3102
  %arrayidx429.i = getelementptr i8, i8* %add.ptr359.i, i64 1, !dbg !3103
  %104 = load i8, i8* %arrayidx429.i, align 1, !dbg !3103, !tbaa !1292
  %conv430.i = zext i8 %104 to i32, !dbg !3103
  %shl431.i = shl nuw nsw i32 %conv430.i, 16, !dbg !3104
  %or432.i = or i32 %shl431.i, %shl428.i, !dbg !3105
  %arrayidx433.i = getelementptr i8, i8* %add.ptr359.i, i64 2, !dbg !3106
  %105 = load i8, i8* %arrayidx433.i, align 1, !dbg !3106, !tbaa !1292
  %conv434.i = zext i8 %105 to i32, !dbg !3106
  %shl435.i = shl nuw nsw i32 %conv434.i, 8, !dbg !3107
  %or436.i = or i32 %or432.i, %shl435.i, !dbg !3108
  %arrayidx437.i = getelementptr i8, i8* %add.ptr359.i, i64 3, !dbg !3109
  %106 = load i8, i8* %arrayidx437.i, align 1, !dbg !3109, !tbaa !1292
  %conv438.i = zext i8 %106 to i32, !dbg !3109
  %or439.i = or i32 %or436.i, %conv438.i, !dbg !3110
  call void @llvm.dbg.value(metadata i32 %or439.i, i64 0, metadata !1000, metadata !1099) #2, !dbg !2991
  br label %do.body.442.i, !dbg !3111

do.body.442.i:                                    ; preds = %sw.bb.425.i, %sw.bb.410.i, %sw.bb.403.i, %sw.bb.396.i, %if.then.383.i, %land.lhs.true.377.i, %land.lhs.true.371.i, %sw.bb.365.i, %if.then.364.i, %if.end.356.i
  %ch268.0.i = phi i32 [ 0, %if.then.364.i ], [ %or439.i, %sw.bb.425.i ], [ %or424.i, %sw.bb.410.i ], [ %or409.i, %sw.bb.403.i ], [ %or402.i, %sw.bb.396.i ], [ %add394.i, %if.then.383.i ], [ 0, %land.lhs.true.377.i ], [ 0, %land.lhs.true.371.i ], [ 0, %sw.bb.365.i ], [ 0, %if.end.356.i ], !dbg !2802
  call void @llvm.dbg.value(metadata %struct._object* %call277.i, i64 0, metadata !1017, metadata !1099) #2, !dbg !3112
  %ob_refcnt444.i = getelementptr inbounds %struct._object, %struct._object* %call277.i, i64 0, i32 0, !dbg !3114
  %107 = load i64, i64* %ob_refcnt444.i, align 8, !dbg !3114, !tbaa !1209
  %dec445.i = add i64 %107, -1, !dbg !3114
  store i64 %dec445.i, i64* %ob_refcnt444.i, align 8, !dbg !3114, !tbaa !1209
  %cmp446.i = icmp eq i64 %dec445.i, 0, !dbg !3114
  br i1 %cmp446.i, label %if.else.449.i, label %if.end.452.i, !dbg !3116

if.else.449.i:                                    ; preds = %do.body.442.i
  %ob_type450.i = getelementptr inbounds %struct._object, %struct._object* %call277.i, i64 0, i32 1, !dbg !3117
  %108 = load %struct._typeobject*, %struct._typeobject** %ob_type450.i, align 8, !dbg !3117, !tbaa !1214
  %tp_dealloc451.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %108, i64 0, i32 4, !dbg !3117
  %109 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc451.i, align 8, !dbg !3117, !tbaa !1215
  call void %109(%struct._object* %call277.i) #2, !dbg !3117
  br label %if.end.452.i, !dbg !2802

if.end.452.i:                                     ; preds = %if.else.449.i, %do.body.442.i
  %110 = and i32 %ch268.0.i, -2048, !dbg !3119
  %111 = icmp eq i32 %110, 55296, !dbg !3119
  br i1 %111, label %if.end.462.i, label %if.then.460.i, !dbg !3119

if.then.460.i:                                    ; preds = %if.end.452.i
  %ob_type461.i = getelementptr inbounds %struct._object, %struct._object* %exc, i64 0, i32 1, !dbg !3121
  %112 = bitcast %struct._typeobject** %ob_type461.i to %struct._object**, !dbg !3121
  %113 = load %struct._object*, %struct._object** %112, align 8, !dbg !3121, !tbaa !1214
  call void @PyErr_SetObject(%struct._object* %113, %struct._object* %exc) #2, !dbg !3123
  br label %PyCodec_SurrogatePassErrors.exit, !dbg !3124

if.end.462.i:                                     ; preds = %if.end.452.i
  %call463.i = call %struct._object* @PyUnicode_FromOrdinal(i32 %ch268.0.i) #2, !dbg !3125
  call void @llvm.dbg.value(metadata %struct._object* %call463.i, i64 0, metadata !963, metadata !1099) #2, !dbg !2837
  %cmp464.i = icmp eq %struct._object* %call463.i, null, !dbg !3126
  br i1 %cmp464.i, label %PyCodec_SurrogatePassErrors.exit, label %if.end.467.i, !dbg !3128

if.end.467.i:                                     ; preds = %if.end.462.i
  call void @llvm.dbg.value(metadata i64* %start.i, i64 0, metadata !961, metadata !1099) #2, !dbg !2778
  %114 = load i64, i64* %start.i, align 8, !dbg !3129, !tbaa !2131
  call void @llvm.dbg.value(metadata i32* %bytelength.i, i64 0, metadata !959, metadata !1099) #2, !dbg !2821
  %add469.i = add i64 %114, %conv361.i, !dbg !3130
  %call470.i = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), %struct._object* %call463.i, i64 %add469.i) #2, !dbg !3131
  br label %PyCodec_SurrogatePassErrors.exit, !dbg !3132

if.else.473.i:                                    ; preds = %if.else.264.i
  tail call void @llvm.dbg.value(metadata %struct._object* %exc, i64 0, metadata !893, metadata !1099) #2, !dbg !3133
  %call.i.i = tail call %struct._object* @_PyObject_GetAttrId(%struct._object* %exc, %struct._Py_Identifier* nonnull @wrong_exception_type.PyId___class__) #2, !dbg !3136
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.i, i64 0, metadata !894, metadata !1099) #2, !dbg !3137
  %cmp.i.i = icmp eq %struct._object* %call.i.i, null, !dbg !3138
  br i1 %cmp.i.i, label %PyCodec_SurrogatePassErrors.exit, label %if.then.i.i, !dbg !3139

if.then.i.i:                                      ; preds = %if.else.473.i
  %call1.i.i = tail call %struct._object* @_PyObject_GetAttrId(%struct._object* %call.i.i, %struct._Py_Identifier* nonnull @wrong_exception_type.PyId___name__) #2, !dbg !3140
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i.i, i64 0, metadata !895, metadata !1099) #2, !dbg !3141
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.i, i64 0, metadata !898, metadata !1099) #2, !dbg !3142
  %ob_refcnt.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 0, i32 0, !dbg !3143
  %115 = load i64, i64* %ob_refcnt.i.i, align 8, !dbg !3143, !tbaa !1209
  %dec.i.i = add i64 %115, -1, !dbg !3143
  store i64 %dec.i.i, i64* %ob_refcnt.i.i, align 8, !dbg !3143, !tbaa !1209
  %cmp2.i.i = icmp eq i64 %dec.i.i, 0, !dbg !3143
  br i1 %cmp2.i.i, label %if.else.i.i, label %if.end.i.i, !dbg !3144

if.else.i.i:                                      ; preds = %if.then.i.i
  %ob_type.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 0, i32 1, !dbg !3145
  %116 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.i, align 8, !dbg !3145, !tbaa !1214
  %tp_dealloc.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %116, i64 0, i32 4, !dbg !3145
  %117 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.i, align 8, !dbg !3145, !tbaa !1215
  tail call void %117(%struct._object* %call.i.i) #2, !dbg !3145
  br label %if.end.i.i, !dbg !3146

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %cmp4.i.i = icmp eq %struct._object* %call1.i.i, null, !dbg !3147
  br i1 %cmp4.i.i, label %PyCodec_SurrogatePassErrors.exit, label %if.then.5.i.i, !dbg !3148

if.then.5.i.i:                                    ; preds = %if.end.i.i
  %118 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !3149, !tbaa !1106
  %call6.i.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %118, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i64 0, i64 0), %struct._object* %call1.i.i) #2, !dbg !3150
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i.i, i64 0, metadata !900, metadata !1099) #2, !dbg !3151
  %ob_refcnt9.i.i = getelementptr inbounds %struct._object, %struct._object* %call1.i.i, i64 0, i32 0, !dbg !3152
  %119 = load i64, i64* %ob_refcnt9.i.i, align 8, !dbg !3152, !tbaa !1209
  %dec10.i.i = add i64 %119, -1, !dbg !3152
  store i64 %dec10.i.i, i64* %ob_refcnt9.i.i, align 8, !dbg !3152, !tbaa !1209
  %cmp11.i.i = icmp eq i64 %dec10.i.i, 0, !dbg !3152
  br i1 %cmp11.i.i, label %if.else.13.i.i, label %PyCodec_SurrogatePassErrors.exit, !dbg !3153

if.else.13.i.i:                                   ; preds = %if.then.5.i.i
  %ob_type14.i.i = getelementptr inbounds %struct._object, %struct._object* %call1.i.i, i64 0, i32 1, !dbg !3154
  %120 = load %struct._typeobject*, %struct._typeobject** %ob_type14.i.i, align 8, !dbg !3154, !tbaa !1214
  %tp_dealloc15.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %120, i64 0, i32 4, !dbg !3154
  %121 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc15.i.i, align 8, !dbg !3154, !tbaa !1215
  tail call void %121(%struct._object* %call1.i.i) #2, !dbg !3154
  br label %PyCodec_SurrogatePassErrors.exit, !dbg !3146

PyCodec_SurrogatePassErrors.exit:                 ; preds = %if.then.i, %if.end.i, %if.end.7.i, %do.body.i, %if.else.i, %if.end.30.i, %if.else.39.i, %do.body.62.i, %if.else.69.i, %if.end.174.i, %if.else.184.i, %if.end.247.i, %if.else.257.i, %if.then.267.i, %if.end.272.i, %if.end.276.i, %do.body.284.i, %if.else.291.i, %do.body.301.i, %if.else.308.i, %if.end.328.i, %if.else.338.i, %if.then.460.i, %if.end.462.i, %if.end.467.i, %if.else.473.i, %if.end.i.i, %if.then.5.i.i, %if.else.13.i.i
  %retval.4.i = phi %struct._object* [ null, %if.then.i ], [ null, %if.end.i ], [ null, %if.end.7.i ], [ null, %do.body.i ], [ null, %if.else.i ], [ null, %if.end.30.i ], [ null, %if.else.39.i ], [ null, %do.body.62.i ], [ null, %if.else.69.i ], [ %call236.i, %if.end.247.i ], [ %call236.i, %if.else.257.i ], [ %call470.i, %if.end.467.i ], [ null, %if.then.460.i ], [ null, %if.then.267.i ], [ null, %if.end.272.i ], [ null, %if.end.276.i ], [ null, %do.body.284.i ], [ null, %if.else.291.i ], [ null, %do.body.301.i ], [ null, %if.else.308.i ], [ null, %if.end.328.i ], [ null, %if.else.338.i ], [ null, %if.end.462.i ], [ null, %if.else.184.i ], [ null, %if.end.174.i ], [ null, %if.else.473.i ], [ null, %if.end.i.i ], [ null, %if.then.5.i.i ], [ null, %if.else.13.i.i ], !dbg !2802
  call void @llvm.lifetime.end(i64 8, i8* %2) #2, !dbg !3155
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !3155
  call void @llvm.lifetime.end(i64 4, i8* %0) #2, !dbg !3155
  ret %struct._object* %retval.4.i, !dbg !3156
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @surrogateescape_errors(%struct._object* nocapture readnone %self, %struct._object* %exc) #0 {
entry:
  %start.i = alloca i64, align 8
  %end.i = alloca i64, align 8
  %ch164.i = alloca [4 x i16], align 2
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !1028, metadata !1099), !dbg !3157
  tail call void @llvm.dbg.value(metadata %struct._object* %exc, i64 0, metadata !1029, metadata !1099), !dbg !3158
  tail call void @llvm.dbg.value(metadata %struct._object* %exc, i64 0, metadata !1032, metadata !1099) #2, !dbg !3159
  %0 = bitcast i64* %start.i to i8*, !dbg !3161
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3161
  %1 = bitcast i64* %end.i to i8*, !dbg !3162
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3162
  %2 = load %struct._object*, %struct._object** @PyExc_UnicodeEncodeError, align 8, !dbg !3163, !tbaa !1106
  %call.i = tail call i32 @PyObject_IsInstance(%struct._object* %exc, %struct._object* %2) #2, !dbg !3164
  %tobool.i = icmp eq i32 %call.i, 0, !dbg !3164
  br i1 %tobool.i, label %if.else.160.i, label %if.then.i, !dbg !3165

if.then.i:                                        ; preds = %entry
  tail call void @llvm.dbg.value(metadata i64* %start.i, i64 0, metadata !1036, metadata !1099) #2, !dbg !3166
  %call1.i = call i32 @PyUnicodeEncodeError_GetStart(%struct._object* %exc, i64* nonnull %start.i) #2, !dbg !3167
  %tobool2.i = icmp eq i32 %call1.i, 0, !dbg !3167
  br i1 %tobool2.i, label %if.end.i, label %PyCodec_SurrogateEscapeErrors.exit, !dbg !3169

if.end.i:                                         ; preds = %if.then.i
  call void @llvm.dbg.value(metadata i64* %end.i, i64 0, metadata !1037, metadata !1099) #2, !dbg !3170
  %call4.i = call i32 @PyUnicodeEncodeError_GetEnd(%struct._object* %exc, i64* nonnull %end.i) #2, !dbg !3171
  %tobool5.i = icmp eq i32 %call4.i, 0, !dbg !3171
  br i1 %tobool5.i, label %if.end.7.i, label %PyCodec_SurrogateEscapeErrors.exit, !dbg !3173

if.end.7.i:                                       ; preds = %if.end.i
  %call8.i = call %struct._object* @PyUnicodeEncodeError_GetObject(%struct._object* %exc) #2, !dbg !3174
  call void @llvm.dbg.value(metadata %struct._object* %call8.i, i64 0, metadata !1034, metadata !1099) #2, !dbg !3176
  %tobool9.i = icmp eq %struct._object* %call8.i, null, !dbg !3177
  br i1 %tobool9.i, label %PyCodec_SurrogateEscapeErrors.exit, label %if.end.11.i, !dbg !3178

if.end.11.i:                                      ; preds = %if.end.7.i
  call void @llvm.dbg.value(metadata i64* %end.i, i64 0, metadata !1037, metadata !1099) #2, !dbg !3170
  %3 = load i64, i64* %end.i, align 8, !dbg !3179, !tbaa !2131
  call void @llvm.dbg.value(metadata i64* %start.i, i64 0, metadata !1036, metadata !1099) #2, !dbg !3166
  %4 = load i64, i64* %start.i, align 8, !dbg !3180, !tbaa !2131
  %sub.i = sub i64 %3, %4, !dbg !3181
  %call12.i = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %sub.i) #2, !dbg !3182
  call void @llvm.dbg.value(metadata %struct._object* %call12.i, i64 0, metadata !1038, metadata !1099) #2, !dbg !3183
  %tobool13.i = icmp eq %struct._object* %call12.i, null, !dbg !3184
  br i1 %tobool13.i, label %do.body.i, label %if.end.17.i, !dbg !3185

do.body.i:                                        ; preds = %if.end.11.i
  call void @llvm.dbg.value(metadata %struct._object* %call8.i, i64 0, metadata !1042, metadata !1099) #2, !dbg !3186
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call8.i, i64 0, i32 0, !dbg !3188
  %5 = load i64, i64* %ob_refcnt.i, align 8, !dbg !3188, !tbaa !1209
  %dec.i = add i64 %5, -1, !dbg !3188
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !3188, !tbaa !1209
  %cmp.i = icmp eq i64 %dec.i, 0, !dbg !3188
  br i1 %cmp.i, label %if.else.i, label %PyCodec_SurrogateEscapeErrors.exit, !dbg !3190

if.else.i:                                        ; preds = %do.body.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call8.i, i64 0, i32 1, !dbg !3191
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !3191, !tbaa !1214
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !3191
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !3191, !tbaa !1215
  call void %7(%struct._object* %call8.i) #2, !dbg !3191
  br label %PyCodec_SurrogateEscapeErrors.exit, !dbg !3193

if.end.17.i:                                      ; preds = %if.end.11.i
  %call18.i = call i8* @PyBytes_AsString(%struct._object* %call12.i) #2, !dbg !3194
  call void @llvm.dbg.value(metadata i8* %call18.i, i64 0, metadata !1039, metadata !1099) #2, !dbg !3195
  call void @llvm.dbg.value(metadata i64* %start.i, i64 0, metadata !1036, metadata !1099) #2, !dbg !3166
  %8 = load i64, i64* %start.i, align 8, !dbg !3196, !tbaa !2131
  call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !1035, metadata !1099) #2, !dbg !3197
  call void @llvm.dbg.value(metadata i64* %end.i, i64 0, metadata !1037, metadata !1099) #2, !dbg !3170
  %9 = load i64, i64* %end.i, align 8, !dbg !3198, !tbaa !2131
  %cmp19.330.i = icmp slt i64 %8, %9, !dbg !3199
  br i1 %cmp19.330.i, label %for.body.lr.ph.i, label %for.end.i, !dbg !3200

for.body.lr.ph.i:                                 ; preds = %if.end.17.i
  %state.i = getelementptr inbounds %struct._object, %struct._object* %call8.i, i64 2, !dbg !3201
  %10 = bitcast %struct._object* %state.i to i32*, !dbg !3201
  %data.i = getelementptr inbounds %struct._object, %struct._object* %call8.i, i64 4, i32 1, !dbg !3202
  %any.i = bitcast %struct._typeobject** %data.i to i8**, !dbg !3202
  %add.ptr.i = getelementptr %struct._object, %struct._object* %call8.i, i64 3, !dbg !3204
  %11 = bitcast %struct._object* %add.ptr.i to i8*, !dbg !3204
  %12 = bitcast %struct._typeobject** %data.i to i8*, !dbg !3206
  br label %for.body.i, !dbg !3200

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %i.0332.i = phi i64 [ %8, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i ], !dbg !3193
  %outp.0331.i = phi i8* [ %call18.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i ], !dbg !3193
  %bf.load.i = load i32, i32* %10, align 4, !dbg !3201
  %bf.lshr.i = lshr i32 %bf.load.i, 2, !dbg !3201
  %bf.clear.i = and i32 %bf.lshr.i, 7, !dbg !3201
  %cmp20.i = icmp eq i32 %bf.clear.i, 1, !dbg !3201
  br i1 %cmp20.i, label %cond.true.i, label %cond.false.37.i, !dbg !3201

cond.true.i:                                      ; preds = %for.body.i
  %bf.clear24.i = and i32 %bf.load.i, 32, !dbg !3208
  %tobool25.i = icmp eq i32 %bf.clear24.i, 0, !dbg !3208
  br i1 %tobool25.i, label %cond.false.34.i, label %cond.true.26.i, !dbg !3208

cond.true.26.i:                                   ; preds = %cond.true.i
  %bf.clear30.i = and i32 %bf.load.i, 64, !dbg !3210
  %tobool31.i = icmp ne i32 %bf.clear30.i, 0, !dbg !3210
  %cond.i = select i1 %tobool31.i, i8* %11, i8* %12, !dbg !3210
  br label %cond.end.35.i, !dbg !3210

cond.false.34.i:                                  ; preds = %cond.true.i
  %13 = load i8*, i8** %any.i, align 8, !dbg !3202, !tbaa !1106
  br label %cond.end.35.i, !dbg !3202

cond.end.35.i:                                    ; preds = %cond.false.34.i, %cond.true.26.i
  %cond36.i = phi i8* [ %13, %cond.false.34.i ], [ %cond.i, %cond.true.26.i ], !dbg !3201
  %arrayidx.i = getelementptr i8, i8* %cond36.i, i64 %i.0332.i, !dbg !3212
  %14 = load i8, i8* %arrayidx.i, align 1, !dbg !3212, !tbaa !1292
  %conv.i = zext i8 %14 to i32, !dbg !3212
  br label %cond.end.95.i, !dbg !3212

cond.false.37.i:                                  ; preds = %for.body.i
  %cmp42.i = icmp eq i32 %bf.clear.i, 2, !dbg !3215
  %bf.clear48.i = and i32 %bf.load.i, 32, !dbg !3217
  %tobool49.i = icmp ne i32 %bf.clear48.i, 0, !dbg !3217
  br i1 %cmp42.i, label %cond.true.44.i, label %cond.false.69.i, !dbg !3215

cond.true.44.i:                                   ; preds = %cond.false.37.i
  br i1 %tobool49.i, label %cond.true.50.i, label %cond.false.62.i, !dbg !3217

cond.true.50.i:                                   ; preds = %cond.true.44.i
  %bf.clear54.i = and i32 %bf.load.i, 64, !dbg !3219
  %tobool55.i = icmp ne i32 %bf.clear54.i, 0, !dbg !3219
  %cond61.i = select i1 %tobool55.i, i8* %11, i8* %12, !dbg !3219
  br label %cond.end.65.i, !dbg !3219

cond.false.62.i:                                  ; preds = %cond.true.44.i
  %15 = load i8*, i8** %any.i, align 8, !dbg !3221, !tbaa !1106
  br label %cond.end.65.i, !dbg !3221

cond.end.65.i:                                    ; preds = %cond.false.62.i, %cond.true.50.i
  %cond66.i = phi i8* [ %15, %cond.false.62.i ], [ %cond61.i, %cond.true.50.i ], !dbg !3201
  %16 = bitcast i8* %cond66.i to i16*, !dbg !3223
  %arrayidx67.i = getelementptr i16, i16* %16, i64 %i.0332.i, !dbg !3223
  %17 = load i16, i16* %arrayidx67.i, align 2, !dbg !3223, !tbaa !2183
  %conv68.i = zext i16 %17 to i32, !dbg !3223
  br label %cond.end.95.i, !dbg !3223

cond.false.69.i:                                  ; preds = %cond.false.37.i
  br i1 %tobool49.i, label %cond.true.75.i, label %cond.false.87.i, !dbg !3226

cond.true.75.i:                                   ; preds = %cond.false.69.i
  %bf.clear79.i = and i32 %bf.load.i, 64, !dbg !3228
  %tobool80.i = icmp ne i32 %bf.clear79.i, 0, !dbg !3228
  %cond86.i = select i1 %tobool80.i, i8* %11, i8* %12, !dbg !3228
  br label %cond.end.90.i, !dbg !3228

cond.false.87.i:                                  ; preds = %cond.false.69.i
  %18 = load i8*, i8** %any.i, align 8, !dbg !3230, !tbaa !1106
  br label %cond.end.90.i, !dbg !3230

cond.end.90.i:                                    ; preds = %cond.false.87.i, %cond.true.75.i
  %cond91.i = phi i8* [ %18, %cond.false.87.i ], [ %cond86.i, %cond.true.75.i ], !dbg !3201
  %19 = bitcast i8* %cond91.i to i32*, !dbg !3232
  %arrayidx92.i = getelementptr i32, i32* %19, i64 %i.0332.i, !dbg !3232
  %20 = load i32, i32* %arrayidx92.i, align 4, !dbg !3232, !tbaa !2195
  br label %cond.end.95.i, !dbg !3232

cond.end.95.i:                                    ; preds = %cond.end.90.i, %cond.end.65.i, %cond.end.35.i
  %cond96.i = phi i32 [ %conv.i, %cond.end.35.i ], [ %conv68.i, %cond.end.65.i ], [ %20, %cond.end.90.i ], !dbg !3201
  call void @llvm.dbg.value(metadata i32 %cond96.i, i64 0, metadata !1046, metadata !1099) #2, !dbg !3235
  %21 = and i32 %cond96.i, -128, !dbg !3236
  %22 = icmp eq i32 %21, 56448, !dbg !3236
  br i1 %22, label %for.inc.i, label %if.then.101.i, !dbg !3236

if.then.101.i:                                    ; preds = %cond.end.95.i
  %ob_type102.i = getelementptr inbounds %struct._object, %struct._object* %exc, i64 0, i32 1, !dbg !3237
  %23 = bitcast %struct._typeobject** %ob_type102.i to %struct._object**, !dbg !3237
  %24 = load %struct._object*, %struct._object** %23, align 8, !dbg !3237, !tbaa !1214
  call void @PyErr_SetObject(%struct._object* %24, %struct._object* %exc) #2, !dbg !3238
  call void @llvm.dbg.value(metadata %struct._object* %call12.i, i64 0, metadata !1050, metadata !1099) #2, !dbg !3239
  %ob_refcnt105.i = getelementptr inbounds %struct._object, %struct._object* %call12.i, i64 0, i32 0, !dbg !3241
  %25 = load i64, i64* %ob_refcnt105.i, align 8, !dbg !3241, !tbaa !1209
  %dec106.i = add i64 %25, -1, !dbg !3241
  store i64 %dec106.i, i64* %ob_refcnt105.i, align 8, !dbg !3241, !tbaa !1209
  %cmp107.i = icmp eq i64 %dec106.i, 0, !dbg !3241
  br i1 %cmp107.i, label %if.else.110.i, label %if.end.113.i, !dbg !3243

if.else.110.i:                                    ; preds = %if.then.101.i
  %ob_type111.i = getelementptr inbounds %struct._object, %struct._object* %call12.i, i64 0, i32 1, !dbg !3244
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type111.i, align 8, !dbg !3244, !tbaa !1214
  %tp_dealloc112.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i64 0, i32 4, !dbg !3244
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc112.i, align 8, !dbg !3244, !tbaa !1215
  call void %27(%struct._object* %call12.i) #2, !dbg !3244
  br label %if.end.113.i, !dbg !3193

if.end.113.i:                                     ; preds = %if.else.110.i, %if.then.101.i
  call void @llvm.dbg.value(metadata %struct._object* %call8.i, i64 0, metadata !1054, metadata !1099) #2, !dbg !3246
  %ob_refcnt118.i = getelementptr inbounds %struct._object, %struct._object* %call8.i, i64 0, i32 0, !dbg !3248
  %28 = load i64, i64* %ob_refcnt118.i, align 8, !dbg !3248, !tbaa !1209
  %dec119.i = add i64 %28, -1, !dbg !3248
  store i64 %dec119.i, i64* %ob_refcnt118.i, align 8, !dbg !3248, !tbaa !1209
  %cmp120.i = icmp eq i64 %dec119.i, 0, !dbg !3248
  br i1 %cmp120.i, label %if.else.123.i, label %PyCodec_SurrogateEscapeErrors.exit, !dbg !3250

if.else.123.i:                                    ; preds = %if.end.113.i
  %ob_type124.i = getelementptr inbounds %struct._object, %struct._object* %call8.i, i64 0, i32 1, !dbg !3251
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type124.i, align 8, !dbg !3251, !tbaa !1214
  %tp_dealloc125.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i64 0, i32 4, !dbg !3251
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc125.i, align 8, !dbg !3251, !tbaa !1215
  call void %30(%struct._object* %call8.i) #2, !dbg !3251
  br label %PyCodec_SurrogateEscapeErrors.exit, !dbg !3193

for.inc.i:                                        ; preds = %cond.end.95.i
  %conv131.i = trunc i32 %cond96.i to i8, !dbg !3253
  %incdec.ptr.i = getelementptr i8, i8* %outp.0331.i, i64 1, !dbg !3254
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.i, i64 0, metadata !1039, metadata !1099) #2, !dbg !3195
  store i8 %conv131.i, i8* %outp.0331.i, align 1, !dbg !3255, !tbaa !1292
  %inc.i = add i64 %i.0332.i, 1, !dbg !3256
  call void @llvm.dbg.value(metadata i64 %inc.i, i64 0, metadata !1035, metadata !1099) #2, !dbg !3197
  call void @llvm.dbg.value(metadata i64* %end.i, i64 0, metadata !1037, metadata !1099) #2, !dbg !3170
  %31 = load i64, i64* %end.i, align 8, !dbg !3198, !tbaa !2131
  %cmp19.i = icmp slt i64 %inc.i, %31, !dbg !3199
  br i1 %cmp19.i, label %for.body.i, label %for.end.i.loopexit, !dbg !3200

for.end.i.loopexit:                               ; preds = %for.inc.i
  %.lcssa = phi i64 [ %31, %for.inc.i ]
  br label %for.end.i, !dbg !3257

for.end.i:                                        ; preds = %for.end.i.loopexit, %if.end.17.i
  %.lcssa.i = phi i64 [ %9, %if.end.17.i ], [ %.lcssa, %for.end.i.loopexit ], !dbg !3193
  %call132.i = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), %struct._object* %call12.i, i64 %.lcssa.i) #2, !dbg !3257
  call void @llvm.dbg.value(metadata %struct._object* %call132.i, i64 0, metadata !1033, metadata !1099) #2, !dbg !3258
  call void @llvm.dbg.value(metadata %struct._object* %call12.i, i64 0, metadata !1056, metadata !1099) #2, !dbg !3259
  %ob_refcnt135.i = getelementptr inbounds %struct._object, %struct._object* %call12.i, i64 0, i32 0, !dbg !3261
  %32 = load i64, i64* %ob_refcnt135.i, align 8, !dbg !3261, !tbaa !1209
  %dec136.i = add i64 %32, -1, !dbg !3261
  store i64 %dec136.i, i64* %ob_refcnt135.i, align 8, !dbg !3261, !tbaa !1209
  %cmp137.i = icmp eq i64 %dec136.i, 0, !dbg !3261
  br i1 %cmp137.i, label %if.else.140.i, label %if.end.143.i, !dbg !3263

if.else.140.i:                                    ; preds = %for.end.i
  %ob_type141.i = getelementptr inbounds %struct._object, %struct._object* %call12.i, i64 0, i32 1, !dbg !3264
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type141.i, align 8, !dbg !3264, !tbaa !1214
  %tp_dealloc142.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i64 0, i32 4, !dbg !3264
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc142.i, align 8, !dbg !3264, !tbaa !1215
  call void %34(%struct._object* %call12.i) #2, !dbg !3264
  br label %if.end.143.i, !dbg !3193

if.end.143.i:                                     ; preds = %if.else.140.i, %for.end.i
  call void @llvm.dbg.value(metadata %struct._object* %call8.i, i64 0, metadata !1058, metadata !1099) #2, !dbg !3266
  %ob_refcnt148.i = getelementptr inbounds %struct._object, %struct._object* %call8.i, i64 0, i32 0, !dbg !3268
  %35 = load i64, i64* %ob_refcnt148.i, align 8, !dbg !3268, !tbaa !1209
  %dec149.i = add i64 %35, -1, !dbg !3268
  store i64 %dec149.i, i64* %ob_refcnt148.i, align 8, !dbg !3268, !tbaa !1209
  %cmp150.i = icmp eq i64 %dec149.i, 0, !dbg !3268
  br i1 %cmp150.i, label %if.else.153.i, label %PyCodec_SurrogateEscapeErrors.exit, !dbg !3270

if.else.153.i:                                    ; preds = %if.end.143.i
  %ob_type154.i = getelementptr inbounds %struct._object, %struct._object* %call8.i, i64 0, i32 1, !dbg !3271
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type154.i, align 8, !dbg !3271, !tbaa !1214
  %tp_dealloc155.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i64 0, i32 4, !dbg !3271
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc155.i, align 8, !dbg !3271, !tbaa !1215
  call void %37(%struct._object* %call8.i) #2, !dbg !3271
  br label %PyCodec_SurrogateEscapeErrors.exit, !dbg !3193

if.else.160.i:                                    ; preds = %entry
  %38 = load %struct._object*, %struct._object** @PyExc_UnicodeDecodeError, align 8, !dbg !3273, !tbaa !1106
  %call161.i = tail call i32 @PyObject_IsInstance(%struct._object* %exc, %struct._object* %38) #2, !dbg !3274
  %tobool162.i = icmp eq i32 %call161.i, 0, !dbg !3274
  br i1 %tobool162.i, label %if.else.245.i, label %if.then.163.i, !dbg !3275

if.then.163.i:                                    ; preds = %if.else.160.i
  %39 = bitcast [4 x i16]* %ch164.i to i8*, !dbg !3276
  call void @llvm.lifetime.start(i64 8, i8* %39) #2, !dbg !3276
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1068, metadata !1099) #2, !dbg !3277
  tail call void @llvm.dbg.value(metadata i64* %start.i, i64 0, metadata !1036, metadata !1099) #2, !dbg !3166
  %call165.i = call i32 @PyUnicodeDecodeError_GetStart(%struct._object* %exc, i64* nonnull %start.i) #2, !dbg !3278
  %tobool166.i = icmp eq i32 %call165.i, 0, !dbg !3278
  br i1 %tobool166.i, label %if.end.168.i, label %cleanup.241.i, !dbg !3280

if.end.168.i:                                     ; preds = %if.then.163.i
  call void @llvm.dbg.value(metadata i64* %end.i, i64 0, metadata !1037, metadata !1099) #2, !dbg !3170
  %call169.i = call i32 @PyUnicodeDecodeError_GetEnd(%struct._object* %exc, i64* nonnull %end.i) #2, !dbg !3281
  %tobool170.i = icmp eq i32 %call169.i, 0, !dbg !3281
  br i1 %tobool170.i, label %if.end.172.i, label %cleanup.241.i, !dbg !3283

if.end.172.i:                                     ; preds = %if.end.168.i
  %call173.i = call %struct._object* @PyUnicodeDecodeError_GetObject(%struct._object* %exc) #2, !dbg !3284
  call void @llvm.dbg.value(metadata %struct._object* %call173.i, i64 0, metadata !1034, metadata !1099) #2, !dbg !3176
  %tobool174.i = icmp eq %struct._object* %call173.i, null, !dbg !3286
  br i1 %tobool174.i, label %cleanup.241.i, label %if.end.176.i, !dbg !3287

if.end.176.i:                                     ; preds = %if.end.172.i
  %call177.i = call i8* @PyBytes_AsString(%struct._object* %call173.i) #2, !dbg !3288
  call void @llvm.dbg.value(metadata i8* %call177.i, i64 0, metadata !1063, metadata !1099) #2, !dbg !3289
  %tobool178.i = icmp eq i8* %call177.i, null, !dbg !3290
  br i1 %tobool178.i, label %do.body.180.i, label %while.cond.preheader.i, !dbg !3291

while.cond.preheader.i:                           ; preds = %if.end.176.i
  call void @llvm.dbg.value(metadata i64* %end.i, i64 0, metadata !1037, metadata !1099) #2, !dbg !3170
  %40 = load i64, i64* %end.i, align 8, !dbg !3292, !tbaa !2131
  call void @llvm.dbg.value(metadata i64* %start.i, i64 0, metadata !1036, metadata !1099) #2, !dbg !3166
  %41 = load i64, i64* %start.i, align 8, !dbg !3293, !tbaa !2131
  %sub197.i = sub i64 %40, %41, !dbg !3294
  %cmp198.i = icmp sgt i64 %sub197.i, 0, !dbg !3295
  br i1 %cmp198.i, label %while.body.i, label %do.body.215.i, !dbg !3296

do.body.180.i:                                    ; preds = %if.end.176.i
  call void @llvm.dbg.value(metadata %struct._object* %call173.i, i64 0, metadata !1069, metadata !1099) #2, !dbg !3298
  %ob_refcnt182.i = getelementptr inbounds %struct._object, %struct._object* %call173.i, i64 0, i32 0, !dbg !3300
  %42 = load i64, i64* %ob_refcnt182.i, align 8, !dbg !3300, !tbaa !1209
  %dec183.i = add i64 %42, -1, !dbg !3300
  store i64 %dec183.i, i64* %ob_refcnt182.i, align 8, !dbg !3300, !tbaa !1209
  %cmp184.i = icmp eq i64 %dec183.i, 0, !dbg !3300
  br i1 %cmp184.i, label %if.else.187.i, label %cleanup.241.i, !dbg !3302

if.else.187.i:                                    ; preds = %do.body.180.i
  %ob_type188.i = getelementptr inbounds %struct._object, %struct._object* %call173.i, i64 0, i32 1, !dbg !3303
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type188.i, align 8, !dbg !3303, !tbaa !1214
  %tp_dealloc189.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i64 0, i32 4, !dbg !3303
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc189.i, align 8, !dbg !3303, !tbaa !1215
  call void %44(%struct._object* %call173.i) #2, !dbg !3303
  br label %cleanup.241.i, !dbg !3193

while.body.i:                                     ; preds = %while.cond.preheader.i
  %arrayidx201.i = getelementptr i8, i8* %call177.i, i64 %41, !dbg !3305
  %45 = load i8, i8* %arrayidx201.i, align 1, !dbg !3305, !tbaa !1292
  %cmp203.i = icmp sgt i8 %45, -1, !dbg !3308
  br i1 %cmp203.i, label %do.body.215.i, label %if.end.206.i, !dbg !3309

if.end.206.i:                                     ; preds = %while.body.i
  %conv202.i = zext i8 %45 to i16, !dbg !3305
  %add211.i = or i16 %conv202.i, -9216, !dbg !3310
  %arrayidx213.i = getelementptr [4 x i16], [4 x i16]* %ch164.i, i64 0, i64 0, !dbg !3311
  store i16 %add211.i, i16* %arrayidx213.i, align 2, !dbg !3312, !tbaa !2183
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1068, metadata !1099) #2, !dbg !3277
  call void @llvm.dbg.value(metadata i64* %end.i, i64 0, metadata !1037, metadata !1099) #2, !dbg !3170
  call void @llvm.dbg.value(metadata i64* %start.i, i64 0, metadata !1036, metadata !1099) #2, !dbg !3166
  %cmp198.1.i = icmp sgt i64 %sub197.i, 1, !dbg !3295
  br i1 %cmp198.1.i, label %while.body.1.i, label %do.body.215.i, !dbg !3296

do.body.215.i:                                    ; preds = %if.end.206.3.i, %while.body.3.i, %if.end.206.2.i, %while.body.2.i, %if.end.206.1.i, %while.body.1.i, %if.end.206.i, %while.body.i, %while.cond.preheader.i
  %consumed.0.lcssa.i = phi i32 [ 0, %while.cond.preheader.i ], [ 0, %while.body.i ], [ 1, %if.end.206.i ], [ 1, %while.body.1.i ], [ 2, %if.end.206.1.i ], [ 2, %while.body.2.i ], [ 3, %if.end.206.2.i ], [ 3, %while.body.3.i ], [ 4, %if.end.206.3.i ], !dbg !3193
  call void @llvm.dbg.value(metadata %struct._object* %call173.i, i64 0, metadata !1073, metadata !1099) #2, !dbg !3313
  %ob_refcnt217.i = getelementptr inbounds %struct._object, %struct._object* %call173.i, i64 0, i32 0, !dbg !3315
  %46 = load i64, i64* %ob_refcnt217.i, align 8, !dbg !3315, !tbaa !1209
  %dec218.i = add i64 %46, -1, !dbg !3315
  store i64 %dec218.i, i64* %ob_refcnt217.i, align 8, !dbg !3315, !tbaa !1209
  %cmp219.i = icmp eq i64 %dec218.i, 0, !dbg !3315
  br i1 %cmp219.i, label %if.else.222.i, label %if.end.225.i, !dbg !3317

if.else.222.i:                                    ; preds = %do.body.215.i
  %ob_type223.i = getelementptr inbounds %struct._object, %struct._object* %call173.i, i64 0, i32 1, !dbg !3318
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type223.i, align 8, !dbg !3318, !tbaa !1214
  %tp_dealloc224.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i64 0, i32 4, !dbg !3318
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc224.i, align 8, !dbg !3318, !tbaa !1215
  call void %48(%struct._object* %call173.i) #2, !dbg !3318
  br label %if.end.225.i, !dbg !3193

if.end.225.i:                                     ; preds = %if.else.222.i, %do.body.215.i
  %tobool228.i = icmp eq i32 %consumed.0.lcssa.i, 0, !dbg !3320
  br i1 %tobool228.i, label %if.then.229.i, label %if.end.231.i, !dbg !3322

if.then.229.i:                                    ; preds = %if.end.225.i
  %ob_type230.i = getelementptr inbounds %struct._object, %struct._object* %exc, i64 0, i32 1, !dbg !3323
  %49 = bitcast %struct._typeobject** %ob_type230.i to %struct._object**, !dbg !3323
  %50 = load %struct._object*, %struct._object** %49, align 8, !dbg !3323, !tbaa !1214
  call void @PyErr_SetObject(%struct._object* %50, %struct._object* %exc) #2, !dbg !3325
  br label %cleanup.241.i, !dbg !3326

if.end.231.i:                                     ; preds = %if.end.225.i
  %conv232.335.i = zext i32 %consumed.0.lcssa.i to i64, !dbg !3327
  %call233.i = call %struct._object* @PyUnicode_FromKindAndData(i32 2, i8* %39, i64 %conv232.335.i) #2, !dbg !3328
  call void @llvm.dbg.value(metadata %struct._object* %call233.i, i64 0, metadata !1060, metadata !1099) #2, !dbg !3329
  %cmp234.i = icmp eq %struct._object* %call233.i, null, !dbg !3330
  br i1 %cmp234.i, label %cleanup.241.i, label %if.end.237.i, !dbg !3332

if.end.237.i:                                     ; preds = %if.end.231.i
  call void @llvm.dbg.value(metadata i64* %start.i, i64 0, metadata !1036, metadata !1099) #2, !dbg !3166
  %51 = load i64, i64* %start.i, align 8, !dbg !3333, !tbaa !2131
  %add239.i = add i64 %51, %conv232.335.i, !dbg !3334
  %call240.i = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), %struct._object* %call233.i, i64 %add239.i) #2, !dbg !3335
  br label %cleanup.241.i, !dbg !3336

cleanup.241.i:                                    ; preds = %if.end.237.i, %if.end.231.i, %if.then.229.i, %if.else.187.i, %do.body.180.i, %if.end.172.i, %if.end.168.i, %if.then.163.i
  %retval.3.i = phi %struct._object* [ %call240.i, %if.end.237.i ], [ null, %if.then.229.i ], [ null, %if.then.163.i ], [ null, %if.end.168.i ], [ null, %if.end.172.i ], [ null, %do.body.180.i ], [ null, %if.else.187.i ], [ null, %if.end.231.i ], !dbg !3193
  call void @llvm.lifetime.end(i64 8, i8* %39) #2, !dbg !3337
  br label %PyCodec_SurrogateEscapeErrors.exit, !dbg !3193

if.else.245.i:                                    ; preds = %if.else.160.i
  tail call void @llvm.dbg.value(metadata %struct._object* %exc, i64 0, metadata !893, metadata !1099) #2, !dbg !3338
  %call.i.i = tail call %struct._object* @_PyObject_GetAttrId(%struct._object* %exc, %struct._Py_Identifier* nonnull @wrong_exception_type.PyId___class__) #2, !dbg !3341
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.i, i64 0, metadata !894, metadata !1099) #2, !dbg !3342
  %cmp.i.i = icmp eq %struct._object* %call.i.i, null, !dbg !3343
  br i1 %cmp.i.i, label %PyCodec_SurrogateEscapeErrors.exit, label %if.then.i.i, !dbg !3344

if.then.i.i:                                      ; preds = %if.else.245.i
  %call1.i.i = tail call %struct._object* @_PyObject_GetAttrId(%struct._object* %call.i.i, %struct._Py_Identifier* nonnull @wrong_exception_type.PyId___name__) #2, !dbg !3345
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i.i, i64 0, metadata !895, metadata !1099) #2, !dbg !3346
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.i, i64 0, metadata !898, metadata !1099) #2, !dbg !3347
  %ob_refcnt.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 0, i32 0, !dbg !3348
  %52 = load i64, i64* %ob_refcnt.i.i, align 8, !dbg !3348, !tbaa !1209
  %dec.i.i = add i64 %52, -1, !dbg !3348
  store i64 %dec.i.i, i64* %ob_refcnt.i.i, align 8, !dbg !3348, !tbaa !1209
  %cmp2.i.i = icmp eq i64 %dec.i.i, 0, !dbg !3348
  br i1 %cmp2.i.i, label %if.else.i.i, label %if.end.i.i, !dbg !3349

if.else.i.i:                                      ; preds = %if.then.i.i
  %ob_type.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 0, i32 1, !dbg !3350
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.i, align 8, !dbg !3350, !tbaa !1214
  %tp_dealloc.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i64 0, i32 4, !dbg !3350
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.i, align 8, !dbg !3350, !tbaa !1215
  tail call void %54(%struct._object* %call.i.i) #2, !dbg !3350
  br label %if.end.i.i, !dbg !3351

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %cmp4.i.i = icmp eq %struct._object* %call1.i.i, null, !dbg !3352
  br i1 %cmp4.i.i, label %PyCodec_SurrogateEscapeErrors.exit, label %if.then.5.i.i, !dbg !3353

if.then.5.i.i:                                    ; preds = %if.end.i.i
  %55 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !3354, !tbaa !1106
  %call6.i.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %55, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i64 0, i64 0), %struct._object* %call1.i.i) #2, !dbg !3355
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i.i, i64 0, metadata !900, metadata !1099) #2, !dbg !3356
  %ob_refcnt9.i.i = getelementptr inbounds %struct._object, %struct._object* %call1.i.i, i64 0, i32 0, !dbg !3357
  %56 = load i64, i64* %ob_refcnt9.i.i, align 8, !dbg !3357, !tbaa !1209
  %dec10.i.i = add i64 %56, -1, !dbg !3357
  store i64 %dec10.i.i, i64* %ob_refcnt9.i.i, align 8, !dbg !3357, !tbaa !1209
  %cmp11.i.i = icmp eq i64 %dec10.i.i, 0, !dbg !3357
  br i1 %cmp11.i.i, label %if.else.13.i.i, label %PyCodec_SurrogateEscapeErrors.exit, !dbg !3358

if.else.13.i.i:                                   ; preds = %if.then.5.i.i
  %ob_type14.i.i = getelementptr inbounds %struct._object, %struct._object* %call1.i.i, i64 0, i32 1, !dbg !3359
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type14.i.i, align 8, !dbg !3359, !tbaa !1214
  %tp_dealloc15.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i64 0, i32 4, !dbg !3359
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc15.i.i, align 8, !dbg !3359, !tbaa !1215
  tail call void %58(%struct._object* %call1.i.i) #2, !dbg !3359
  br label %PyCodec_SurrogateEscapeErrors.exit, !dbg !3351

while.body.1.i:                                   ; preds = %if.end.206.i
  %add.1.i = add i64 %41, 1, !dbg !3360
  %arrayidx201.1.i = getelementptr i8, i8* %call177.i, i64 %add.1.i, !dbg !3305
  %59 = load i8, i8* %arrayidx201.1.i, align 1, !dbg !3305, !tbaa !1292
  %cmp203.1.i = icmp sgt i8 %59, -1, !dbg !3308
  br i1 %cmp203.1.i, label %do.body.215.i, label %if.end.206.1.i, !dbg !3309

if.end.206.1.i:                                   ; preds = %while.body.1.i
  %conv202.1.i = zext i8 %59 to i16, !dbg !3305
  %add211.1.i = or i16 %conv202.1.i, -9216, !dbg !3310
  %arrayidx213.1.i = getelementptr [4 x i16], [4 x i16]* %ch164.i, i64 0, i64 1, !dbg !3311
  store i16 %add211.1.i, i16* %arrayidx213.1.i, align 2, !dbg !3312, !tbaa !2183
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1068, metadata !1099) #2, !dbg !3277
  call void @llvm.dbg.value(metadata i64* %end.i, i64 0, metadata !1037, metadata !1099) #2, !dbg !3170
  call void @llvm.dbg.value(metadata i64* %start.i, i64 0, metadata !1036, metadata !1099) #2, !dbg !3166
  %cmp198.2.i = icmp sgt i64 %sub197.i, 2, !dbg !3295
  br i1 %cmp198.2.i, label %while.body.2.i, label %do.body.215.i, !dbg !3296

while.body.2.i:                                   ; preds = %if.end.206.1.i
  %add.2.i = add i64 %41, 2, !dbg !3360
  %arrayidx201.2.i = getelementptr i8, i8* %call177.i, i64 %add.2.i, !dbg !3305
  %60 = load i8, i8* %arrayidx201.2.i, align 1, !dbg !3305, !tbaa !1292
  %cmp203.2.i = icmp sgt i8 %60, -1, !dbg !3308
  br i1 %cmp203.2.i, label %do.body.215.i, label %if.end.206.2.i, !dbg !3309

if.end.206.2.i:                                   ; preds = %while.body.2.i
  %conv202.2.i = zext i8 %60 to i16, !dbg !3305
  %add211.2.i = or i16 %conv202.2.i, -9216, !dbg !3310
  %arrayidx213.2.i = getelementptr [4 x i16], [4 x i16]* %ch164.i, i64 0, i64 2, !dbg !3311
  store i16 %add211.2.i, i16* %arrayidx213.2.i, align 2, !dbg !3312, !tbaa !2183
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1068, metadata !1099) #2, !dbg !3277
  call void @llvm.dbg.value(metadata i64* %end.i, i64 0, metadata !1037, metadata !1099) #2, !dbg !3170
  call void @llvm.dbg.value(metadata i64* %start.i, i64 0, metadata !1036, metadata !1099) #2, !dbg !3166
  %cmp198.3.i = icmp sgt i64 %sub197.i, 3, !dbg !3295
  br i1 %cmp198.3.i, label %while.body.3.i, label %do.body.215.i, !dbg !3296

while.body.3.i:                                   ; preds = %if.end.206.2.i
  %add.3.i = add i64 %41, 3, !dbg !3360
  %arrayidx201.3.i = getelementptr i8, i8* %call177.i, i64 %add.3.i, !dbg !3305
  %61 = load i8, i8* %arrayidx201.3.i, align 1, !dbg !3305, !tbaa !1292
  %cmp203.3.i = icmp sgt i8 %61, -1, !dbg !3308
  br i1 %cmp203.3.i, label %do.body.215.i, label %if.end.206.3.i, !dbg !3309

if.end.206.3.i:                                   ; preds = %while.body.3.i
  %conv202.3.i = zext i8 %61 to i16, !dbg !3305
  %add211.3.i = or i16 %conv202.3.i, -9216, !dbg !3310
  %arrayidx213.3.i = getelementptr [4 x i16], [4 x i16]* %ch164.i, i64 0, i64 3, !dbg !3311
  store i16 %add211.3.i, i16* %arrayidx213.3.i, align 2, !dbg !3312, !tbaa !2183
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1068, metadata !1099) #2, !dbg !3277
  br label %do.body.215.i, !dbg !3193

PyCodec_SurrogateEscapeErrors.exit:               ; preds = %if.then.i, %if.end.i, %if.end.7.i, %do.body.i, %if.else.i, %if.end.113.i, %if.else.123.i, %if.end.143.i, %if.else.153.i, %cleanup.241.i, %if.else.245.i, %if.end.i.i, %if.then.5.i.i, %if.else.13.i.i
  %retval.4.i = phi %struct._object* [ %retval.3.i, %cleanup.241.i ], [ null, %if.then.i ], [ null, %if.end.i ], [ null, %if.end.7.i ], [ null, %do.body.i ], [ null, %if.else.i ], [ %call132.i, %if.end.143.i ], [ %call132.i, %if.else.153.i ], [ null, %if.else.245.i ], [ null, %if.end.i.i ], [ null, %if.then.5.i.i ], [ null, %if.else.13.i.i ], [ null, %if.end.113.i ], [ null, %if.else.123.i ], !dbg !3193
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !3361
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !3361
  call void @llvm.dbg.declare(metadata [4 x i16]* %ch164.i, metadata !1064, metadata !1099), !dbg !3362
  ret %struct._object* %retval.4.i, !dbg !3363
}

declare %struct._object* @PyList_New(i64) #3

declare %struct._object* @PyDict_New() #3

declare %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef*, %struct._object*, %struct._object*) #3

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #5

declare %struct._object* @PyImport_ImportModuleNoBlock(i8*) #3

declare %struct._object* @PyUnicodeEncodeError_GetEncoding(%struct._object*) #3

declare i8* @PyUnicode_AsUTF8(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get_standard_encoding(i8* nocapture readonly %encoding, i32* nocapture %bytelength) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %encoding, i64 0, metadata !1024, metadata !1099), !dbg !3364
  tail call void @llvm.dbg.value(metadata i32* %bytelength, i64 0, metadata !1025, metadata !1099), !dbg !3365
  %0 = load i8, i8* %encoding, align 1, !dbg !3366, !tbaa !1292
  %idxprom = zext i8 %0 to i64, !dbg !3366
  %arrayidx2 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i64 0, i64 %idxprom, !dbg !3366
  %1 = load i8, i8* %arrayidx2, align 1, !dbg !3366, !tbaa !1292
  %cmp = icmp eq i8 %1, 117, !dbg !3368
  br i1 %cmp, label %land.lhs.true, label %if.end.161, !dbg !3369

land.lhs.true:                                    ; preds = %entry
  %arrayidx5 = getelementptr i8, i8* %encoding, i64 1, !dbg !3370
  %2 = load i8, i8* %arrayidx5, align 1, !dbg !3370, !tbaa !1292
  %idxprom9 = zext i8 %2 to i64, !dbg !3370
  %arrayidx10 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i64 0, i64 %idxprom9, !dbg !3370
  %3 = load i8, i8* %arrayidx10, align 1, !dbg !3370, !tbaa !1292
  %cmp12 = icmp eq i8 %3, 116, !dbg !3371
  br i1 %cmp12, label %land.lhs.true.14, label %if.end.161, !dbg !3372

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %arrayidx15 = getelementptr i8, i8* %encoding, i64 2, !dbg !3373
  %4 = load i8, i8* %arrayidx15, align 1, !dbg !3373, !tbaa !1292
  %idxprom19 = zext i8 %4 to i64, !dbg !3373
  %arrayidx20 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i64 0, i64 %idxprom19, !dbg !3373
  %5 = load i8, i8* %arrayidx20, align 1, !dbg !3373, !tbaa !1292
  %cmp22 = icmp eq i8 %5, 102, !dbg !3374
  br i1 %cmp22, label %if.then, label %if.end.161, !dbg !3375

if.then:                                          ; preds = %land.lhs.true.14
  %add.ptr = getelementptr i8, i8* %encoding, i64 3, !dbg !3376
  tail call void @llvm.dbg.value(metadata i8* %add.ptr, i64 0, metadata !1024, metadata !1099), !dbg !3364
  %6 = load i8, i8* %add.ptr, align 1, !dbg !3378, !tbaa !1292
  switch i8 %6, label %if.end [
    i8 45, label %if.then.30
    i8 95, label %if.then.30
  ], !dbg !3380

if.then.30:                                       ; preds = %if.then, %if.then
  %incdec.ptr = getelementptr i8, i8* %encoding, i64 4, !dbg !3381
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !1024, metadata !1099), !dbg !3364
  %.pre = load i8, i8* %incdec.ptr, align 1, !dbg !3382, !tbaa !1292
  br label %if.end, !dbg !3384

if.end:                                           ; preds = %if.then, %if.then.30
  %.pr = phi i8 [ %.pre, %if.then.30 ], [ %6, %if.then ], !dbg !3385
  %7 = phi i64 [ 4, %if.then.30 ], [ 3, %if.then ]
  switch i8 %.pr, label %if.end.161 [
    i8 49, label %land.lhs.true.35
    i8 51, label %land.lhs.true.99
  ], !dbg !3387

land.lhs.true.35:                                 ; preds = %if.end
  %8 = getelementptr i8, i8* %encoding, i64 %7, !dbg !3381
  %arrayidx36 = getelementptr i8, i8* %8, i64 1, !dbg !3388
  %9 = load i8, i8* %arrayidx36, align 1, !dbg !3388, !tbaa !1292
  %cmp38 = icmp eq i8 %9, 54, !dbg !3390
  br i1 %cmp38, label %if.then.40, label %if.end.161, !dbg !3391

if.then.40:                                       ; preds = %land.lhs.true.35
  %add.ptr41 = getelementptr i8, i8* %8, i64 2, !dbg !3392
  tail call void @llvm.dbg.value(metadata i8* %add.ptr41, i64 0, metadata !1024, metadata !1099), !dbg !3364
  store i32 2, i32* %bytelength, align 4, !dbg !3394, !tbaa !2195
  %10 = load i8, i8* %add.ptr41, align 1, !dbg !3395, !tbaa !1292
  switch i8 %10, label %if.end.56 [
    i8 0, label %return
    i8 45, label %if.then.54
    i8 95, label %if.then.54
  ], !dbg !3397

if.then.54:                                       ; preds = %if.then.40, %if.then.40
  %incdec.ptr55 = getelementptr i8, i8* %8, i64 3, !dbg !3398
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr55, i64 0, metadata !1024, metadata !1099), !dbg !3364
  br label %if.end.56, !dbg !3400

if.end.56:                                        ; preds = %if.then.40, %if.then.54
  %11 = phi i64 [ 3, %if.then.54 ], [ 2, %if.then.40 ]
  %encoding.addr.1 = phi i8* [ %incdec.ptr55, %if.then.54 ], [ %add.ptr41, %if.then.40 ]
  %12 = getelementptr i8, i8* %8, i64 %11, !dbg !3398
  %arrayidx57 = getelementptr i8, i8* %12, i64 1, !dbg !3401
  %13 = load i8, i8* %arrayidx57, align 1, !dbg !3401, !tbaa !1292
  %idxprom61 = zext i8 %13 to i64, !dbg !3401
  %arrayidx62 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i64 0, i64 %idxprom61, !dbg !3401
  %14 = load i8, i8* %arrayidx62, align 1, !dbg !3401, !tbaa !1292
  %cmp64 = icmp eq i8 %14, 101, !dbg !3403
  br i1 %cmp64, label %land.lhs.true.66, label %if.end.161, !dbg !3404

land.lhs.true.66:                                 ; preds = %if.end.56
  %arrayidx67 = getelementptr i8, i8* %12, i64 2, !dbg !3405
  %15 = load i8, i8* %arrayidx67, align 1, !dbg !3405, !tbaa !1292
  %cmp69 = icmp eq i8 %15, 0, !dbg !3407
  br i1 %cmp69, label %if.then.71, label %if.end.161, !dbg !3408

if.then.71:                                       ; preds = %land.lhs.true.66
  %16 = load i8, i8* %encoding.addr.1, align 1, !dbg !3409, !tbaa !1292
  %idxprom76 = zext i8 %16 to i64, !dbg !3409
  %arrayidx77 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i64 0, i64 %idxprom76, !dbg !3409
  %17 = load i8, i8* %arrayidx77, align 1, !dbg !3409, !tbaa !1292
  switch i8 %17, label %if.end.161 [
    i8 98, label %return
    i8 108, label %if.then.92
  ], !dbg !3412

if.then.92:                                       ; preds = %if.then.71
  br label %return, !dbg !3413

land.lhs.true.99:                                 ; preds = %if.end
  %18 = getelementptr i8, i8* %encoding, i64 %7, !dbg !3381
  %arrayidx100 = getelementptr i8, i8* %18, i64 1, !dbg !3415
  %19 = load i8, i8* %arrayidx100, align 1, !dbg !3415, !tbaa !1292
  %cmp102 = icmp eq i8 %19, 50, !dbg !3417
  br i1 %cmp102, label %if.then.104, label %if.end.161, !dbg !3418

if.then.104:                                      ; preds = %land.lhs.true.99
  %add.ptr105 = getelementptr i8, i8* %18, i64 2, !dbg !3419
  tail call void @llvm.dbg.value(metadata i8* %add.ptr105, i64 0, metadata !1024, metadata !1099), !dbg !3364
  store i32 4, i32* %bytelength, align 4, !dbg !3421, !tbaa !2195
  %20 = load i8, i8* %add.ptr105, align 1, !dbg !3422, !tbaa !1292
  switch i8 %20, label %if.end.120 [
    i8 0, label %return
    i8 45, label %if.then.118
    i8 95, label %if.then.118
  ], !dbg !3424

if.then.118:                                      ; preds = %if.then.104, %if.then.104
  %incdec.ptr119 = getelementptr i8, i8* %18, i64 3, !dbg !3425
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr119, i64 0, metadata !1024, metadata !1099), !dbg !3364
  br label %if.end.120, !dbg !3427

if.end.120:                                       ; preds = %if.then.104, %if.then.118
  %21 = phi i64 [ 3, %if.then.118 ], [ 2, %if.then.104 ]
  %encoding.addr.2 = phi i8* [ %incdec.ptr119, %if.then.118 ], [ %add.ptr105, %if.then.104 ]
  %22 = getelementptr i8, i8* %18, i64 %21, !dbg !3425
  %arrayidx121 = getelementptr i8, i8* %22, i64 1, !dbg !3428
  %23 = load i8, i8* %arrayidx121, align 1, !dbg !3428, !tbaa !1292
  %idxprom125 = zext i8 %23 to i64, !dbg !3428
  %arrayidx126 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i64 0, i64 %idxprom125, !dbg !3428
  %24 = load i8, i8* %arrayidx126, align 1, !dbg !3428, !tbaa !1292
  %cmp128 = icmp eq i8 %24, 101, !dbg !3430
  br i1 %cmp128, label %land.lhs.true.130, label %if.end.161, !dbg !3431

land.lhs.true.130:                                ; preds = %if.end.120
  %arrayidx131 = getelementptr i8, i8* %22, i64 2, !dbg !3432
  %25 = load i8, i8* %arrayidx131, align 1, !dbg !3432, !tbaa !1292
  %cmp133 = icmp eq i8 %25, 0, !dbg !3434
  br i1 %cmp133, label %if.then.135, label %if.end.161, !dbg !3435

if.then.135:                                      ; preds = %land.lhs.true.130
  %26 = load i8, i8* %encoding.addr.2, align 1, !dbg !3436, !tbaa !1292
  %idxprom140 = zext i8 %26 to i64, !dbg !3436
  %arrayidx141 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i64 0, i64 %idxprom140, !dbg !3436
  %27 = load i8, i8* %arrayidx141, align 1, !dbg !3436, !tbaa !1292
  switch i8 %27, label %if.end.161 [
    i8 98, label %return
    i8 108, label %if.then.156
  ], !dbg !3439

if.then.156:                                      ; preds = %if.then.135
  br label %return, !dbg !3440

if.end.161:                                       ; preds = %if.end, %land.lhs.true.35, %if.then.135, %if.then.71, %land.lhs.true.66, %if.end.56, %if.end.120, %land.lhs.true.130, %land.lhs.true.99, %land.lhs.true.14, %land.lhs.true, %entry
  store i32 3, i32* %bytelength, align 4, !dbg !3442, !tbaa !2195
  br label %return, !dbg !3443

return:                                           ; preds = %if.then.135, %if.then.104, %if.then.71, %if.then.40, %if.end.161, %if.then.156, %if.then.92
  %retval.0 = phi i32 [ 2, %if.then.92 ], [ 0, %if.end.161 ], [ 4, %if.then.156 ], [ 2, %if.then.40 ], [ 1, %if.then.71 ], [ 4, %if.then.104 ], [ 3, %if.then.135 ]
  ret i32 %retval.0, !dbg !3444
}

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #3

declare i8* @PyBytes_AsString(%struct._object*) #3

declare i32 @PyUnicodeDecodeError_GetStart(%struct._object*, i64*) #3

declare %struct._object* @PyUnicodeDecodeError_GetObject(%struct._object*) #3

declare %struct._object* @PyUnicodeDecodeError_GetEncoding(%struct._object*) #3

declare %struct._object* @PyUnicode_FromOrdinal(i32) #3

declare %struct._object* @PyUnicode_FromKindAndData(i32, i8*, i64) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1096, !1097}
!llvm.ident = !{!1098}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !18, subprograms: !477, globals: !1075)
!1 = !DIFile(filename: "Python/codecs.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{!3, !11}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Py_memory_order", file: !4, line: 23, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/pyatomic.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "_Py_memory_order_relaxed", value: 0)
!7 = !DIEnumerator(name: "_Py_memory_order_acquire", value: 1)
!8 = !DIEnumerator(name: "_Py_memory_order_release", value: 2)
!9 = !DIEnumerator(name: "_Py_memory_order_acq_rel", value: 3)
!10 = !DIEnumerator(name: "_Py_memory_order_seq_cst", value: 4)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "PyUnicode_Kind", file: !12, line: 451, size: 32, align: 32, elements: !13)
!12 = !DIFile(filename: "Include/unicodeobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "PyUnicode_WCHAR_KIND", value: 0)
!15 = !DIEnumerator(name: "PyUnicode_1BYTE_KIND", value: 1)
!16 = !DIEnumerator(name: "PyUnicode_2BYTE_KIND", value: 2)
!17 = !DIEnumerator(name: "PyUnicode_4BYTE_KIND", value: 4)
!18 = !{!19, !121, !36, !416, !424, !425, !443, !451, !462, !461, !466, !465, !469, !468, !75, !470, !472, !474, !42, !126, !463, !476}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !21, line: 139, baseType: !22)
!21 = !DIFile(filename: "Include/pystate.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!38 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!39 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !38, line: 105, size: 128, align: 64, elements: !40)
!40 = !{!41, !49}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !39, file: !38, line: 107, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !43, line: 177, baseType: !44)
!43 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !45, line: 102, baseType: !46)
!45 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !47, line: 181, baseType: !48)
!47 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!79 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!127 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!313 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!326 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!418 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!477 = !{!478, !495, !538, !548, !554, !558, !561, !564, !570, !574, !581, !586, !594, !600, !622, !628, !634, !646, !656, !659, !663, !681, !706, !722, !731, !736, !739, !750, !759, !769, !780, !794, !826, !838, !844, !874, !877, !888, !891, !904, !927, !931, !935, !939, !943, !947, !951, !1019, !1026, !1030}
!478 = !DISubprogram(name: "PyCodec_Register", scope: !1, file: !1, line: 31, type: !176, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @PyCodec_Register, variables: !479)
!479 = !{!480, !481, !482, !489, !490, !493}
!480 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "search_function", arg: 1, scope: !478, file: !1, line: 31, type: !36)
!481 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "interp", scope: !478, file: !1, line: 33, type: !28)
!482 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !483, file: !1, line: 33, type: !484)
!483 = distinct !DILexicalBlock(scope: !478, file: !1, line: 33, column: 34)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64, align: 64)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_atomic_address", file: !4, line: 33, baseType: !486)
!486 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_atomic_address", file: !4, line: 31, size: 64, align: 64, elements: !487)
!487 = !{!488}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_value", scope: !486, file: !4, line: 32, baseType: !121, size: 64, align: 64)
!489 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !483, file: !1, line: 33, type: !121)
!490 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !483, file: !1, line: 33, type: !491)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64, align: 64)
!492 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !121)
!493 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !483, file: !1, line: 33, type: !494)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_memory_order", file: !4, line: 29, baseType: !3)
!495 = !DISubprogram(name: "_PyCodec_Lookup", scope: !1, file: !1, line: 100, type: !496, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*)* @_PyCodec_Lookup, variables: !498)
!496 = !DISubroutineType(types: !497)
!497 = !{!36, !60}
!498 = !{!499, !500, !501, !502, !503, !504, !505, !506, !508, !509, !510, !511, !515, !519, !523, !527, !531, !533, !535}
!499 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 1, scope: !495, file: !1, line: 100, type: !60)
!500 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "interp", scope: !495, file: !1, line: 102, type: !28)
!501 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !495, file: !1, line: 103, type: !36)
!502 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !495, file: !1, line: 103, type: !36)
!503 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !495, file: !1, line: 103, type: !36)
!504 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !495, file: !1, line: 104, type: !42)
!505 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !495, file: !1, line: 104, type: !42)
!506 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !507, file: !1, line: 111, type: !484)
!507 = distinct !DILexicalBlock(scope: !495, file: !1, line: 111, column: 14)
!508 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !507, file: !1, line: 111, type: !121)
!509 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !507, file: !1, line: 111, type: !491)
!510 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !507, file: !1, line: 111, type: !494)
!511 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !512, file: !1, line: 127, type: !36)
!512 = distinct !DILexicalBlock(scope: !513, file: !1, line: 127, column: 9)
!513 = distinct !DILexicalBlock(scope: !514, file: !1, line: 125, column: 25)
!514 = distinct !DILexicalBlock(scope: !495, file: !1, line: 125, column: 9)
!515 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !516, file: !1, line: 148, type: !36)
!516 = distinct !DILexicalBlock(scope: !517, file: !1, line: 147, column: 31)
!517 = distinct !DILexicalBlock(scope: !518, file: !1, line: 147, column: 5)
!518 = distinct !DILexicalBlock(scope: !495, file: !1, line: 147, column: 5)
!519 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !520, file: !1, line: 157, type: !36)
!520 = distinct !DILexicalBlock(scope: !521, file: !1, line: 157, column: 13)
!521 = distinct !DILexicalBlock(scope: !522, file: !1, line: 156, column: 32)
!522 = distinct !DILexicalBlock(scope: !516, file: !1, line: 156, column: 13)
!523 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !524, file: !1, line: 163, type: !36)
!524 = distinct !DILexicalBlock(scope: !525, file: !1, line: 163, column: 13)
!525 = distinct !DILexicalBlock(scope: !526, file: !1, line: 160, column: 70)
!526 = distinct !DILexicalBlock(scope: !516, file: !1, line: 160, column: 13)
!527 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !528, file: !1, line: 177, type: !36)
!528 = distinct !DILexicalBlock(scope: !529, file: !1, line: 177, column: 9)
!529 = distinct !DILexicalBlock(scope: !530, file: !1, line: 176, column: 68)
!530 = distinct !DILexicalBlock(scope: !495, file: !1, line: 176, column: 9)
!531 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !532, file: !1, line: 180, type: !36)
!532 = distinct !DILexicalBlock(scope: !495, file: !1, line: 180, column: 5)
!533 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !534, file: !1, line: 184, type: !36)
!534 = distinct !DILexicalBlock(scope: !495, file: !1, line: 184, column: 5)
!535 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !536, file: !1, line: 184, type: !36)
!536 = distinct !DILexicalBlock(scope: !537, file: !1, line: 184, column: 5)
!537 = distinct !DILexicalBlock(scope: !534, file: !1, line: 184, column: 5)
!538 = !DISubprogram(name: "PyCodec_KnownEncoding", scope: !1, file: !1, line: 190, type: !539, isLocal: false, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*)* @PyCodec_KnownEncoding, variables: !541)
!539 = !DISubroutineType(types: !540)
!540 = !{!75, !60}
!541 = !{!542, !543, !544}
!542 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 1, scope: !538, file: !1, line: 190, type: !60)
!543 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "codecs", scope: !538, file: !1, line: 192, type: !36)
!544 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !545, file: !1, line: 200, type: !36)
!545 = distinct !DILexicalBlock(scope: !546, file: !1, line: 200, column: 9)
!546 = distinct !DILexicalBlock(scope: !547, file: !1, line: 199, column: 10)
!547 = distinct !DILexicalBlock(scope: !538, file: !1, line: 195, column: 9)
!548 = !DISubprogram(name: "_PyCodecInfo_GetIncrementalDecoder", scope: !1, file: !1, line: 306, type: !549, isLocal: false, isDefinition: true, scopeLine: 308, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i8*)* @_PyCodecInfo_GetIncrementalDecoder, variables: !551)
!549 = !DISubroutineType(types: !550)
!550 = !{!36, !36, !60}
!551 = !{!552, !553}
!552 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "codec_info", arg: 1, scope: !548, file: !1, line: 306, type: !36)
!553 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errors", arg: 2, scope: !548, file: !1, line: 307, type: !60)
!554 = !DISubprogram(name: "_PyCodecInfo_GetIncrementalEncoder", scope: !1, file: !1, line: 313, type: !549, isLocal: false, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i8*)* @_PyCodecInfo_GetIncrementalEncoder, variables: !555)
!555 = !{!556, !557}
!556 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "codec_info", arg: 1, scope: !554, file: !1, line: 313, type: !36)
!557 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errors", arg: 2, scope: !554, file: !1, line: 314, type: !60)
!558 = !DISubprogram(name: "PyCodec_Encoder", scope: !1, file: !1, line: 327, type: !496, isLocal: false, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*)* @PyCodec_Encoder, variables: !559)
!559 = !{!560}
!560 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 1, scope: !558, file: !1, line: 327, type: !60)
!561 = !DISubprogram(name: "PyCodec_Decoder", scope: !1, file: !1, line: 332, type: !496, isLocal: false, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*)* @PyCodec_Decoder, variables: !562)
!562 = !{!563}
!563 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 1, scope: !561, file: !1, line: 332, type: !60)
!564 = !DISubprogram(name: "PyCodec_IncrementalEncoder", scope: !1, file: !1, line: 337, type: !565, isLocal: false, isDefinition: true, scopeLine: 339, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i8*)* @PyCodec_IncrementalEncoder, variables: !567)
!565 = !DISubroutineType(types: !566)
!566 = !{!36, !60, !60}
!567 = !{!568, !569}
!568 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 1, scope: !564, file: !1, line: 337, type: !60)
!569 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errors", arg: 2, scope: !564, file: !1, line: 338, type: !60)
!570 = !DISubprogram(name: "PyCodec_IncrementalDecoder", scope: !1, file: !1, line: 343, type: !565, isLocal: false, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i8*)* @PyCodec_IncrementalDecoder, variables: !571)
!571 = !{!572, !573}
!572 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 1, scope: !570, file: !1, line: 343, type: !60)
!573 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errors", arg: 2, scope: !570, file: !1, line: 344, type: !60)
!574 = !DISubprogram(name: "PyCodec_StreamReader", scope: !1, file: !1, line: 349, type: !575, isLocal: false, isDefinition: true, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i8*)* @PyCodec_StreamReader, variables: !577)
!575 = !DISubroutineType(types: !576)
!576 = !{!36, !60, !36, !60}
!577 = !{!578, !579, !580}
!578 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 1, scope: !574, file: !1, line: 349, type: !60)
!579 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stream", arg: 2, scope: !574, file: !1, line: 350, type: !36)
!580 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errors", arg: 3, scope: !574, file: !1, line: 351, type: !60)
!581 = !DISubprogram(name: "PyCodec_StreamWriter", scope: !1, file: !1, line: 356, type: !575, isLocal: false, isDefinition: true, scopeLine: 359, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i8*)* @PyCodec_StreamWriter, variables: !582)
!582 = !{!583, !584, !585}
!583 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 1, scope: !581, file: !1, line: 356, type: !60)
!584 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stream", arg: 2, scope: !581, file: !1, line: 357, type: !36)
!585 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errors", arg: 3, scope: !581, file: !1, line: 358, type: !60)
!586 = !DISubprogram(name: "PyCodec_Encode", scope: !1, file: !1, line: 471, type: !587, isLocal: false, isDefinition: true, scopeLine: 474, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i8*, i8*)* @PyCodec_Encode, variables: !589)
!587 = !DISubroutineType(types: !588)
!588 = !{!36, !36, !60, !60}
!589 = !{!590, !591, !592, !593}
!590 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "object", arg: 1, scope: !586, file: !1, line: 471, type: !36)
!591 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 2, scope: !586, file: !1, line: 472, type: !60)
!592 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errors", arg: 3, scope: !586, file: !1, line: 473, type: !60)
!593 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "encoder", scope: !586, file: !1, line: 475, type: !36)
!594 = !DISubprogram(name: "PyCodec_Decode", scope: !1, file: !1, line: 484, type: !587, isLocal: false, isDefinition: true, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i8*, i8*)* @PyCodec_Decode, variables: !595)
!595 = !{!596, !597, !598, !599}
!596 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "object", arg: 1, scope: !594, file: !1, line: 484, type: !36)
!597 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 2, scope: !594, file: !1, line: 485, type: !60)
!598 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errors", arg: 3, scope: !594, file: !1, line: 486, type: !60)
!599 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decoder", scope: !594, file: !1, line: 488, type: !36)
!600 = !DISubprogram(name: "_PyCodec_LookupTextEncoding", scope: !1, file: !1, line: 498, type: !565, isLocal: false, isDefinition: true, scopeLine: 500, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i8*)* @_PyCodec_LookupTextEncoding, variables: !601)
!601 = !{!602, !603, !604, !605, !606, !607, !615, !618}
!602 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 1, scope: !600, file: !1, line: 498, type: !60)
!603 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alternate_command", arg: 2, scope: !600, file: !1, line: 499, type: !60)
!604 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "codec", scope: !600, file: !1, line: 502, type: !36)
!605 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "attr", scope: !600, file: !1, line: 503, type: !36)
!606 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "is_text_codec", scope: !600, file: !1, line: 504, type: !75)
!607 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !608, file: !1, line: 520, type: !36)
!608 = distinct !DILexicalBlock(scope: !609, file: !1, line: 520, column: 17)
!609 = distinct !DILexicalBlock(scope: !610, file: !1, line: 519, column: 20)
!610 = distinct !DILexicalBlock(scope: !611, file: !1, line: 517, column: 17)
!611 = distinct !DILexicalBlock(scope: !612, file: !1, line: 516, column: 27)
!612 = distinct !DILexicalBlock(scope: !613, file: !1, line: 516, column: 13)
!613 = distinct !DILexicalBlock(scope: !614, file: !1, line: 514, column: 37)
!614 = distinct !DILexicalBlock(scope: !600, file: !1, line: 514, column: 9)
!615 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !616, file: !1, line: 525, type: !36)
!616 = distinct !DILexicalBlock(scope: !617, file: !1, line: 525, column: 13)
!617 = distinct !DILexicalBlock(scope: !612, file: !1, line: 523, column: 16)
!618 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !619, file: !1, line: 527, type: !36)
!619 = distinct !DILexicalBlock(scope: !620, file: !1, line: 527, column: 17)
!620 = distinct !DILexicalBlock(scope: !621, file: !1, line: 526, column: 33)
!621 = distinct !DILexicalBlock(scope: !617, file: !1, line: 526, column: 17)
!622 = !DISubprogram(name: "_PyCodec_EncodeText", scope: !1, file: !1, line: 570, type: !587, isLocal: false, isDefinition: true, scopeLine: 573, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i8*, i8*)* @_PyCodec_EncodeText, variables: !623)
!623 = !{!624, !625, !626, !627}
!624 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "object", arg: 1, scope: !622, file: !1, line: 570, type: !36)
!625 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 2, scope: !622, file: !1, line: 571, type: !60)
!626 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errors", arg: 3, scope: !622, file: !1, line: 572, type: !60)
!627 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "encoder", scope: !622, file: !1, line: 574, type: !36)
!628 = !DISubprogram(name: "_PyCodec_DecodeText", scope: !1, file: !1, line: 583, type: !587, isLocal: false, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i8*, i8*)* @_PyCodec_DecodeText, variables: !629)
!629 = !{!630, !631, !632, !633}
!630 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "object", arg: 1, scope: !628, file: !1, line: 583, type: !36)
!631 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 2, scope: !628, file: !1, line: 584, type: !60)
!632 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errors", arg: 3, scope: !628, file: !1, line: 585, type: !60)
!633 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decoder", scope: !628, file: !1, line: 587, type: !36)
!634 = !DISubprogram(name: "PyCodec_RegisterError", scope: !1, file: !1, line: 602, type: !635, isLocal: false, isDefinition: true, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*)* @PyCodec_RegisterError, variables: !637)
!635 = !DISubroutineType(types: !636)
!636 = !{!75, !60, !36}
!637 = !{!638, !639, !640, !641, !643, !644, !645}
!638 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !634, file: !1, line: 602, type: !60)
!639 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "error", arg: 2, scope: !634, file: !1, line: 602, type: !36)
!640 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "interp", scope: !634, file: !1, line: 604, type: !28)
!641 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !642, file: !1, line: 604, type: !484)
!642 = distinct !DILexicalBlock(scope: !634, file: !1, line: 604, column: 34)
!643 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !642, file: !1, line: 604, type: !121)
!644 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !642, file: !1, line: 604, type: !491)
!645 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !642, file: !1, line: 604, type: !494)
!646 = !DISubprogram(name: "PyCodec_LookupError", scope: !1, file: !1, line: 618, type: !496, isLocal: false, isDefinition: true, scopeLine: 619, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*)* @PyCodec_LookupError, variables: !647)
!647 = !{!648, !649, !650, !651, !653, !654, !655}
!648 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !646, file: !1, line: 618, type: !60)
!649 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "handler", scope: !646, file: !1, line: 620, type: !36)
!650 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "interp", scope: !646, file: !1, line: 622, type: !28)
!651 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !652, file: !1, line: 622, type: !484)
!652 = distinct !DILexicalBlock(scope: !646, file: !1, line: 622, column: 34)
!653 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !652, file: !1, line: 622, type: !121)
!654 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !652, file: !1, line: 622, type: !491)
!655 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !652, file: !1, line: 622, type: !494)
!656 = !DISubprogram(name: "PyCodec_StrictErrors", scope: !1, file: !1, line: 652, type: !148, isLocal: false, isDefinition: true, scopeLine: 653, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyCodec_StrictErrors, variables: !657)
!657 = !{!658}
!658 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 1, scope: !656, file: !1, line: 652, type: !36)
!659 = !DISubprogram(name: "PyCodec_IgnoreErrors", scope: !1, file: !1, line: 662, type: !148, isLocal: false, isDefinition: true, scopeLine: 663, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyCodec_IgnoreErrors, variables: !660)
!660 = !{!661, !662}
!661 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 1, scope: !659, file: !1, line: 662, type: !36)
!662 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end", scope: !659, file: !1, line: 664, type: !42)
!663 = !DISubprogram(name: "PyCodec_ReplaceErrors", scope: !1, file: !1, line: 685, type: !148, isLocal: false, isDefinition: true, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyCodec_ReplaceErrors, variables: !664)
!664 = !{!665, !666, !667, !668, !669, !670, !673, !674, !675, !679, !680}
!665 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 1, scope: !663, file: !1, line: 685, type: !36)
!666 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !663, file: !1, line: 687, type: !42)
!667 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end", scope: !663, file: !1, line: 687, type: !42)
!668 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !663, file: !1, line: 687, type: !42)
!669 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !663, file: !1, line: 687, type: !42)
!670 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !671, file: !1, line: 690, type: !36)
!671 = distinct !DILexicalBlock(scope: !672, file: !1, line: 689, column: 61)
!672 = distinct !DILexicalBlock(scope: !663, file: !1, line: 689, column: 9)
!673 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kind", scope: !671, file: !1, line: 691, type: !75)
!674 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !671, file: !1, line: 692, type: !121)
!675 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !676, file: !1, line: 716, type: !36)
!676 = distinct !DILexicalBlock(scope: !677, file: !1, line: 715, column: 69)
!677 = distinct !DILexicalBlock(scope: !678, file: !1, line: 715, column: 14)
!678 = distinct !DILexicalBlock(scope: !672, file: !1, line: 708, column: 14)
!679 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kind", scope: !676, file: !1, line: 717, type: !75)
!680 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !676, file: !1, line: 718, type: !121)
!681 = !DISubprogram(name: "PyCodec_XMLCharRefReplaceErrors", scope: !1, file: !1, line: 740, type: !148, isLocal: false, isDefinition: true, scopeLine: 741, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyCodec_XMLCharRefReplaceErrors, variables: !682)
!682 = !{!683, !684, !687, !688, !689, !690, !691, !692, !693, !694, !695, !699, !703, !704}
!683 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 1, scope: !681, file: !1, line: 740, type: !36)
!684 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "restuple", scope: !685, file: !1, line: 743, type: !36)
!685 = distinct !DILexicalBlock(scope: !686, file: !1, line: 742, column: 61)
!686 = distinct !DILexicalBlock(scope: !681, file: !1, line: 742, column: 9)
!687 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "object", scope: !685, file: !1, line: 744, type: !36)
!688 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !685, file: !1, line: 745, type: !42)
!689 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !685, file: !1, line: 746, type: !42)
!690 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end", scope: !685, file: !1, line: 747, type: !42)
!691 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !685, file: !1, line: 748, type: !36)
!692 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outp", scope: !685, file: !1, line: 749, type: !476)
!693 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ressize", scope: !685, file: !1, line: 750, type: !75)
!694 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch", scope: !685, file: !1, line: 751, type: !469)
!695 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !696, file: !1, line: 779, type: !36)
!696 = distinct !DILexicalBlock(scope: !697, file: !1, line: 779, column: 13)
!697 = distinct !DILexicalBlock(scope: !698, file: !1, line: 778, column: 26)
!698 = distinct !DILexicalBlock(scope: !685, file: !1, line: 778, column: 13)
!699 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "digits", scope: !700, file: !1, line: 785, type: !75)
!700 = distinct !DILexicalBlock(scope: !701, file: !1, line: 784, column: 39)
!701 = distinct !DILexicalBlock(scope: !702, file: !1, line: 784, column: 9)
!702 = distinct !DILexicalBlock(scope: !685, file: !1, line: 784, column: 9)
!703 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "base", scope: !700, file: !1, line: 786, type: !75)
!704 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !705, file: !1, line: 827, type: !36)
!705 = distinct !DILexicalBlock(scope: !685, file: !1, line: 827, column: 9)
!706 = !DISubprogram(name: "PyCodec_BackslashReplaceErrors", scope: !1, file: !1, line: 836, type: !148, isLocal: false, isDefinition: true, scopeLine: 837, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyCodec_BackslashReplaceErrors, variables: !707)
!707 = !{!708, !709, !712, !713, !714, !715, !716, !717, !718, !719, !720}
!708 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 1, scope: !706, file: !1, line: 836, type: !36)
!709 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "restuple", scope: !710, file: !1, line: 839, type: !36)
!710 = distinct !DILexicalBlock(scope: !711, file: !1, line: 838, column: 61)
!711 = distinct !DILexicalBlock(scope: !706, file: !1, line: 838, column: 9)
!712 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "object", scope: !710, file: !1, line: 840, type: !36)
!713 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !710, file: !1, line: 841, type: !42)
!714 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !710, file: !1, line: 842, type: !42)
!715 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end", scope: !710, file: !1, line: 843, type: !42)
!716 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !710, file: !1, line: 844, type: !36)
!717 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outp", scope: !710, file: !1, line: 845, type: !476)
!718 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ressize", scope: !710, file: !1, line: 846, type: !75)
!719 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !710, file: !1, line: 847, type: !469)
!720 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !721, file: !1, line: 895, type: !36)
!721 = distinct !DILexicalBlock(scope: !710, file: !1, line: 895, column: 9)
!722 = !DISubprogram(name: "_Py_ANNOTATE_MEMORY_ORDER", scope: !4, file: !4, line: 59, type: !723, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, variables: !728)
!723 = !DISubroutineType(types: !724)
!724 = !{null, !725, !494}
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64, align: 64)
!726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !727)
!727 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!728 = !{!729, !730}
!729 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "address", arg: 1, scope: !722, file: !4, line: 59, type: !725)
!730 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 2, scope: !722, file: !4, line: 59, type: !494)
!731 = !DISubprogram(name: "_Py_atomic_thread_fence", scope: !4, file: !4, line: 51, type: !732, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, variables: !734)
!732 = !DISubroutineType(types: !733)
!733 = !{null, !494}
!734 = !{!735}
!735 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !731, file: !4, line: 51, type: !494)
!736 = !DISubprogram(name: "_Py_atomic_signal_fence", scope: !4, file: !4, line: 44, type: !732, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, variables: !737)
!737 = !{!738}
!738 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !736, file: !4, line: 44, type: !494)
!739 = !DISubprogram(name: "normalizestring", scope: !1, file: !1, line: 54, type: !496, isLocal: true, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, variables: !740)
!740 = !{!741, !742, !743, !744, !745, !746}
!741 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "string", arg: 1, scope: !739, file: !1, line: 54, type: !60)
!742 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !739, file: !1, line: 56, type: !126)
!743 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !739, file: !1, line: 57, type: !126)
!744 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !739, file: !1, line: 58, type: !83)
!745 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !739, file: !1, line: 59, type: !36)
!746 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch", scope: !747, file: !1, line: 70, type: !62)
!747 = distinct !DILexicalBlock(scope: !748, file: !1, line: 69, column: 31)
!748 = distinct !DILexicalBlock(scope: !749, file: !1, line: 69, column: 5)
!749 = distinct !DILexicalBlock(scope: !739, file: !1, line: 69, column: 5)
!750 = !DISubprogram(name: "codec_makeincrementalcodec", scope: !1, file: !1, line: 248, type: !587, isLocal: true, isDefinition: true, scopeLine: 251, flags: DIFlagPrototyped, isOptimized: true, variables: !751)
!751 = !{!752, !753, !754, !755, !756, !757}
!752 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "codec_info", arg: 1, scope: !750, file: !1, line: 248, type: !36)
!753 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errors", arg: 2, scope: !750, file: !1, line: 249, type: !60)
!754 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "attrname", arg: 3, scope: !750, file: !1, line: 250, type: !60)
!755 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !750, file: !1, line: 252, type: !36)
!756 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inccodec", scope: !750, file: !1, line: 252, type: !36)
!757 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !758, file: !1, line: 261, type: !36)
!758 = distinct !DILexicalBlock(scope: !750, file: !1, line: 261, column: 5)
!759 = !DISubprogram(name: "codec_getitem", scope: !1, file: !1, line: 232, type: !760, isLocal: true, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: true, variables: !762)
!760 = !DISubroutineType(types: !761)
!761 = !{!36, !60, !75}
!762 = !{!763, !764, !765, !766, !767}
!763 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 1, scope: !759, file: !1, line: 232, type: !60)
!764 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "index", arg: 2, scope: !759, file: !1, line: 232, type: !75)
!765 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "codecs", scope: !759, file: !1, line: 234, type: !36)
!766 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !759, file: !1, line: 235, type: !36)
!767 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !768, file: !1, line: 241, type: !36)
!768 = distinct !DILexicalBlock(scope: !759, file: !1, line: 241, column: 5)
!769 = !DISubprogram(name: "codec_getincrementalcodec", scope: !1, file: !1, line: 266, type: !770, isLocal: true, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: true, variables: !772)
!770 = !DISubroutineType(types: !771)
!771 = !{!36, !60, !60, !60}
!772 = !{!773, !774, !775, !776, !777, !778}
!773 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 1, scope: !769, file: !1, line: 266, type: !60)
!774 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errors", arg: 2, scope: !769, file: !1, line: 267, type: !60)
!775 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "attrname", arg: 3, scope: !769, file: !1, line: 268, type: !60)
!776 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "codec_info", scope: !769, file: !1, line: 270, type: !36)
!777 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !769, file: !1, line: 270, type: !36)
!778 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !779, file: !1, line: 276, type: !36)
!779 = distinct !DILexicalBlock(scope: !769, file: !1, line: 276, column: 5)
!780 = !DISubprogram(name: "codec_getstreamcodec", scope: !1, file: !1, line: 283, type: !781, isLocal: true, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: true, variables: !784)
!781 = !DISubroutineType(types: !782)
!782 = !{!36, !60, !36, !60, !783}
!783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!784 = !{!785, !786, !787, !788, !789, !790, !791, !792}
!785 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 1, scope: !780, file: !1, line: 283, type: !60)
!786 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stream", arg: 2, scope: !780, file: !1, line: 284, type: !36)
!787 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errors", arg: 3, scope: !780, file: !1, line: 285, type: !60)
!788 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "index", arg: 4, scope: !780, file: !1, line: 286, type: !783)
!789 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "codecs", scope: !780, file: !1, line: 288, type: !36)
!790 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "streamcodec", scope: !780, file: !1, line: 288, type: !36)
!791 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "codeccls", scope: !780, file: !1, line: 288, type: !36)
!792 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !793, file: !1, line: 299, type: !36)
!793 = distinct !DILexicalBlock(scope: !780, file: !1, line: 299, column: 5)
!794 = !DISubprogram(name: "_PyCodec_EncodeInternal", scope: !1, file: !1, line: 385, type: !795, isLocal: true, isDefinition: true, scopeLine: 389, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, i8*, i8*)* @_PyCodec_EncodeInternal, variables: !797)
!795 = !DISubroutineType(types: !796)
!796 = !{!36, !36, !36, !60, !60}
!797 = !{!798, !799, !800, !801, !802, !803, !804, !805, !807, !809, !811, !813, !816, !818, !821, !823}
!798 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "object", arg: 1, scope: !794, file: !1, line: 385, type: !36)
!799 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoder", arg: 2, scope: !794, file: !1, line: 386, type: !36)
!800 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 3, scope: !794, file: !1, line: 387, type: !60)
!801 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errors", arg: 4, scope: !794, file: !1, line: 388, type: !60)
!802 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !794, file: !1, line: 390, type: !36)
!803 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !794, file: !1, line: 390, type: !36)
!804 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !794, file: !1, line: 391, type: !36)
!805 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !806, file: !1, line: 413, type: !36)
!806 = distinct !DILexicalBlock(scope: !794, file: !1, line: 413, column: 5)
!807 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !808, file: !1, line: 414, type: !36)
!808 = distinct !DILexicalBlock(scope: !794, file: !1, line: 414, column: 5)
!809 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !810, file: !1, line: 415, type: !36)
!810 = distinct !DILexicalBlock(scope: !794, file: !1, line: 415, column: 5)
!811 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !812, file: !1, line: 419, type: !36)
!812 = distinct !DILexicalBlock(scope: !794, file: !1, line: 419, column: 5)
!813 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !814, file: !1, line: 419, type: !36)
!814 = distinct !DILexicalBlock(scope: !815, file: !1, line: 419, column: 5)
!815 = distinct !DILexicalBlock(scope: !812, file: !1, line: 419, column: 5)
!816 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !817, file: !1, line: 420, type: !36)
!817 = distinct !DILexicalBlock(scope: !794, file: !1, line: 420, column: 5)
!818 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !819, file: !1, line: 420, type: !36)
!819 = distinct !DILexicalBlock(scope: !820, file: !1, line: 420, column: 5)
!820 = distinct !DILexicalBlock(scope: !817, file: !1, line: 420, column: 5)
!821 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !822, file: !1, line: 421, type: !36)
!822 = distinct !DILexicalBlock(scope: !794, file: !1, line: 421, column: 5)
!823 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !824, file: !1, line: 421, type: !36)
!824 = distinct !DILexicalBlock(scope: !825, file: !1, line: 421, column: 5)
!825 = distinct !DILexicalBlock(scope: !822, file: !1, line: 421, column: 5)
!826 = !DISubprogram(name: "args_tuple", scope: !1, file: !1, line: 206, type: !549, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, variables: !827)
!827 = !{!828, !829, !830, !831, !834}
!828 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "object", arg: 1, scope: !826, file: !1, line: 206, type: !36)
!829 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errors", arg: 2, scope: !826, file: !1, line: 207, type: !60)
!830 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !826, file: !1, line: 209, type: !36)
!831 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !832, file: !1, line: 217, type: !36)
!832 = distinct !DILexicalBlock(scope: !833, file: !1, line: 216, column: 17)
!833 = distinct !DILexicalBlock(scope: !826, file: !1, line: 216, column: 9)
!834 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !835, file: !1, line: 221, type: !36)
!835 = distinct !DILexicalBlock(scope: !836, file: !1, line: 221, column: 13)
!836 = distinct !DILexicalBlock(scope: !837, file: !1, line: 220, column: 24)
!837 = distinct !DILexicalBlock(scope: !832, file: !1, line: 220, column: 13)
!838 = !DISubprogram(name: "wrap_codec_error", scope: !1, file: !1, line: 368, type: !839, isLocal: true, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: true, variables: !841)
!839 = !DISubroutineType(types: !840)
!840 = !{null, !60, !60}
!841 = !{!842, !843}
!842 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "operation", arg: 1, scope: !838, file: !1, line: 368, type: !60)
!843 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 2, scope: !838, file: !1, line: 369, type: !60)
!844 = !DISubprogram(name: "_PyCodec_DecodeInternal", scope: !1, file: !1, line: 431, type: !795, isLocal: true, isDefinition: true, scopeLine: 435, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, i8*, i8*)* @_PyCodec_DecodeInternal, variables: !845)
!845 = !{!846, !847, !848, !849, !850, !851, !852, !853, !855, !857, !859, !861, !864, !866, !869, !871}
!846 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "object", arg: 1, scope: !844, file: !1, line: 431, type: !36)
!847 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "decoder", arg: 2, scope: !844, file: !1, line: 432, type: !36)
!848 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 3, scope: !844, file: !1, line: 433, type: !60)
!849 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errors", arg: 4, scope: !844, file: !1, line: 434, type: !60)
!850 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !844, file: !1, line: 436, type: !36)
!851 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !844, file: !1, line: 436, type: !36)
!852 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !844, file: !1, line: 437, type: !36)
!853 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !854, file: !1, line: 458, type: !36)
!854 = distinct !DILexicalBlock(scope: !844, file: !1, line: 458, column: 5)
!855 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !856, file: !1, line: 459, type: !36)
!856 = distinct !DILexicalBlock(scope: !844, file: !1, line: 459, column: 5)
!857 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !858, file: !1, line: 460, type: !36)
!858 = distinct !DILexicalBlock(scope: !844, file: !1, line: 460, column: 5)
!859 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !860, file: !1, line: 464, type: !36)
!860 = distinct !DILexicalBlock(scope: !844, file: !1, line: 464, column: 5)
!861 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !862, file: !1, line: 464, type: !36)
!862 = distinct !DILexicalBlock(scope: !863, file: !1, line: 464, column: 5)
!863 = distinct !DILexicalBlock(scope: !860, file: !1, line: 464, column: 5)
!864 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !865, file: !1, line: 465, type: !36)
!865 = distinct !DILexicalBlock(scope: !844, file: !1, line: 465, column: 5)
!866 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !867, file: !1, line: 465, type: !36)
!867 = distinct !DILexicalBlock(scope: !868, file: !1, line: 465, column: 5)
!868 = distinct !DILexicalBlock(scope: !865, file: !1, line: 465, column: 5)
!869 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !870, file: !1, line: 466, type: !36)
!870 = distinct !DILexicalBlock(scope: !844, file: !1, line: 466, column: 5)
!871 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !872, file: !1, line: 466, type: !36)
!872 = distinct !DILexicalBlock(scope: !873, file: !1, line: 466, column: 5)
!873 = distinct !DILexicalBlock(scope: !870, file: !1, line: 466, column: 5)
!874 = !DISubprogram(name: "_PyCodec_TextEncoder", scope: !1, file: !1, line: 560, type: !496, isLocal: true, isDefinition: true, scopeLine: 561, flags: DIFlagPrototyped, isOptimized: true, variables: !875)
!875 = !{!876}
!876 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 1, scope: !874, file: !1, line: 560, type: !60)
!877 = !DISubprogram(name: "codec_getitem_checked", scope: !1, file: !1, line: 543, type: !878, isLocal: true, isDefinition: true, scopeLine: 546, flags: DIFlagPrototyped, isOptimized: true, variables: !880)
!878 = !DISubroutineType(types: !879)
!879 = !{!36, !60, !60, !75}
!880 = !{!881, !882, !883, !884, !885, !886}
!881 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 1, scope: !877, file: !1, line: 543, type: !60)
!882 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alternate_command", arg: 2, scope: !877, file: !1, line: 544, type: !60)
!883 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "index", arg: 3, scope: !877, file: !1, line: 545, type: !75)
!884 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "codec", scope: !877, file: !1, line: 547, type: !36)
!885 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !877, file: !1, line: 548, type: !36)
!886 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !887, file: !1, line: 556, type: !36)
!887 = distinct !DILexicalBlock(scope: !877, file: !1, line: 556, column: 5)
!888 = !DISubprogram(name: "_PyCodec_TextDecoder", scope: !1, file: !1, line: 565, type: !496, isLocal: true, isDefinition: true, scopeLine: 566, flags: DIFlagPrototyped, isOptimized: true, variables: !889)
!889 = !{!890}
!890 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 1, scope: !888, file: !1, line: 565, type: !60)
!891 = !DISubprogram(name: "wrong_exception_type", scope: !1, file: !1, line: 636, type: !68, isLocal: true, isDefinition: true, scopeLine: 637, flags: DIFlagPrototyped, isOptimized: true, variables: !892)
!892 = !{!893, !894, !895, !898, !900}
!893 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 1, scope: !891, file: !1, line: 636, type: !36)
!894 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !891, file: !1, line: 640, type: !36)
!895 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !896, file: !1, line: 642, type: !36)
!896 = distinct !DILexicalBlock(scope: !897, file: !1, line: 641, column: 23)
!897 = distinct !DILexicalBlock(scope: !891, file: !1, line: 641, column: 9)
!898 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !899, file: !1, line: 643, type: !36)
!899 = distinct !DILexicalBlock(scope: !896, file: !1, line: 643, column: 9)
!900 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !901, file: !1, line: 647, type: !36)
!901 = distinct !DILexicalBlock(scope: !902, file: !1, line: 647, column: 13)
!902 = distinct !DILexicalBlock(scope: !903, file: !1, line: 644, column: 27)
!903 = distinct !DILexicalBlock(scope: !896, file: !1, line: 644, column: 13)
!904 = !DISubprogram(name: "_PyCodecRegistry_Init", scope: !1, file: !1, line: 1236, type: !905, isLocal: true, isDefinition: true, scopeLine: 1237, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @_PyCodecRegistry_Init, variables: !907)
!905 = !DISubroutineType(types: !906)
!906 = !{!75}
!907 = !{!908, !909, !911, !912, !913, !914, !915, !916, !922, !923, !925}
!908 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "interp", scope: !904, file: !1, line: 1313, type: !28)
!909 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !910, file: !1, line: 1313, type: !484)
!910 = distinct !DILexicalBlock(scope: !904, file: !1, line: 1313, column: 34)
!911 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !910, file: !1, line: 1313, type: !121)
!912 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !910, file: !1, line: 1313, type: !491)
!913 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !910, file: !1, line: 1313, type: !494)
!914 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mod", scope: !904, file: !1, line: 1314, type: !36)
!915 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !904, file: !1, line: 1315, type: !373)
!916 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !917, file: !1, line: 1326, type: !36)
!917 = distinct !DILexicalBlock(scope: !918, file: !1, line: 1325, column: 56)
!918 = distinct !DILexicalBlock(scope: !919, file: !1, line: 1325, column: 9)
!919 = distinct !DILexicalBlock(scope: !920, file: !1, line: 1325, column: 9)
!920 = distinct !DILexicalBlock(scope: !921, file: !1, line: 1324, column: 39)
!921 = distinct !DILexicalBlock(scope: !904, file: !1, line: 1324, column: 9)
!922 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !917, file: !1, line: 1327, type: !75)
!923 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !924, file: !1, line: 1331, type: !36)
!924 = distinct !DILexicalBlock(scope: !917, file: !1, line: 1331, column: 13)
!925 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !926, file: !1, line: 1346, type: !36)
!926 = distinct !DILexicalBlock(scope: !904, file: !1, line: 1346, column: 5)
!927 = !DISubprogram(name: "strict_errors", scope: !1, file: !1, line: 1197, type: !158, isLocal: true, isDefinition: true, scopeLine: 1198, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @strict_errors, variables: !928)
!928 = !{!929, !930}
!929 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !927, file: !1, line: 1197, type: !36)
!930 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 2, scope: !927, file: !1, line: 1197, type: !36)
!931 = !DISubprogram(name: "ignore_errors", scope: !1, file: !1, line: 1203, type: !158, isLocal: true, isDefinition: true, scopeLine: 1204, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @ignore_errors, variables: !932)
!932 = !{!933, !934}
!933 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !931, file: !1, line: 1203, type: !36)
!934 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 2, scope: !931, file: !1, line: 1203, type: !36)
!935 = !DISubprogram(name: "replace_errors", scope: !1, file: !1, line: 1209, type: !158, isLocal: true, isDefinition: true, scopeLine: 1210, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @replace_errors, variables: !936)
!936 = !{!937, !938}
!937 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !935, file: !1, line: 1209, type: !36)
!938 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 2, scope: !935, file: !1, line: 1209, type: !36)
!939 = !DISubprogram(name: "xmlcharrefreplace_errors", scope: !1, file: !1, line: 1215, type: !158, isLocal: true, isDefinition: true, scopeLine: 1216, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @xmlcharrefreplace_errors, variables: !940)
!940 = !{!941, !942}
!941 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !939, file: !1, line: 1215, type: !36)
!942 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 2, scope: !939, file: !1, line: 1215, type: !36)
!943 = !DISubprogram(name: "backslashreplace_errors", scope: !1, file: !1, line: 1221, type: !158, isLocal: true, isDefinition: true, scopeLine: 1222, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @backslashreplace_errors, variables: !944)
!944 = !{!945, !946}
!945 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !943, file: !1, line: 1221, type: !36)
!946 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 2, scope: !943, file: !1, line: 1221, type: !36)
!947 = !DISubprogram(name: "surrogatepass_errors", scope: !1, file: !1, line: 1226, type: !158, isLocal: true, isDefinition: true, scopeLine: 1227, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @surrogatepass_errors, variables: !948)
!948 = !{!949, !950}
!949 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !947, file: !1, line: 1226, type: !36)
!950 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 2, scope: !947, file: !1, line: 1226, type: !36)
!951 = !DISubprogram(name: "PyCodec_SurrogatePassErrors", scope: !1, file: !1, line: 966, type: !148, isLocal: true, isDefinition: true, scopeLine: 967, flags: DIFlagPrototyped, isOptimized: true, variables: !952)
!952 = !{!953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !967, !971, !975, !977, !979, !983, !987, !991, !993, !995, !997, !1000, !1001, !1005, !1009, !1013, !1015, !1017}
!953 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 1, scope: !951, file: !1, line: 966, type: !36)
!954 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "restuple", scope: !951, file: !1, line: 968, type: !36)
!955 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "object", scope: !951, file: !1, line: 969, type: !36)
!956 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "encode", scope: !951, file: !1, line: 970, type: !36)
!957 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "encoding", scope: !951, file: !1, line: 971, type: !83)
!958 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "code", scope: !951, file: !1, line: 972, type: !75)
!959 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytelength", scope: !951, file: !1, line: 973, type: !75)
!960 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !951, file: !1, line: 974, type: !42)
!961 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !951, file: !1, line: 975, type: !42)
!962 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end", scope: !951, file: !1, line: 976, type: !42)
!963 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !951, file: !1, line: 977, type: !36)
!964 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outp", scope: !965, file: !1, line: 979, type: !476)
!965 = distinct !DILexicalBlock(scope: !966, file: !1, line: 978, column: 61)
!966 = distinct !DILexicalBlock(scope: !951, file: !1, line: 978, column: 9)
!967 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !968, file: !1, line: 987, type: !36)
!968 = distinct !DILexicalBlock(scope: !969, file: !1, line: 987, column: 13)
!969 = distinct !DILexicalBlock(scope: !970, file: !1, line: 986, column: 64)
!970 = distinct !DILexicalBlock(scope: !965, file: !1, line: 986, column: 13)
!971 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !972, file: !1, line: 991, type: !36)
!972 = distinct !DILexicalBlock(scope: !973, file: !1, line: 991, column: 13)
!973 = distinct !DILexicalBlock(scope: !974, file: !1, line: 990, column: 53)
!974 = distinct !DILexicalBlock(scope: !965, file: !1, line: 990, column: 13)
!975 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !976, file: !1, line: 992, type: !36)
!976 = distinct !DILexicalBlock(scope: !973, file: !1, line: 992, column: 13)
!977 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !978, file: !1, line: 996, type: !36)
!978 = distinct !DILexicalBlock(scope: !965, file: !1, line: 996, column: 9)
!979 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !980, file: !1, line: 1000, type: !36)
!980 = distinct !DILexicalBlock(scope: !981, file: !1, line: 1000, column: 13)
!981 = distinct !DILexicalBlock(scope: !982, file: !1, line: 999, column: 19)
!982 = distinct !DILexicalBlock(scope: !965, file: !1, line: 999, column: 13)
!983 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch", scope: !984, file: !1, line: 1006, type: !469)
!984 = distinct !DILexicalBlock(scope: !985, file: !1, line: 1004, column: 39)
!985 = distinct !DILexicalBlock(scope: !986, file: !1, line: 1004, column: 9)
!986 = distinct !DILexicalBlock(scope: !965, file: !1, line: 1004, column: 9)
!987 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !988, file: !1, line: 1010, type: !36)
!988 = distinct !DILexicalBlock(scope: !989, file: !1, line: 1010, column: 17)
!989 = distinct !DILexicalBlock(scope: !990, file: !1, line: 1007, column: 47)
!990 = distinct !DILexicalBlock(scope: !984, file: !1, line: 1007, column: 17)
!991 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !992, file: !1, line: 1011, type: !36)
!992 = distinct !DILexicalBlock(scope: !989, file: !1, line: 1011, column: 17)
!993 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !994, file: !1, line: 1043, type: !36)
!994 = distinct !DILexicalBlock(scope: !965, file: !1, line: 1043, column: 9)
!995 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !996, file: !1, line: 1044, type: !36)
!996 = distinct !DILexicalBlock(scope: !965, file: !1, line: 1044, column: 9)
!997 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !998, file: !1, line: 1048, type: !476)
!998 = distinct !DILexicalBlock(scope: !999, file: !1, line: 1047, column: 66)
!999 = distinct !DILexicalBlock(scope: !966, file: !1, line: 1047, column: 14)
!1000 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch", scope: !998, file: !1, line: 1049, type: !469)
!1001 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1002, file: !1, line: 1057, type: !36)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !1, line: 1057, column: 13)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !1, line: 1056, column: 62)
!1004 = distinct !DILexicalBlock(scope: !998, file: !1, line: 1056, column: 13)
!1005 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1006, file: !1, line: 1061, type: !36)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !1, line: 1061, column: 13)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !1, line: 1060, column: 64)
!1008 = distinct !DILexicalBlock(scope: !998, file: !1, line: 1060, column: 13)
!1009 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1010, file: !1, line: 1065, type: !36)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !1, line: 1065, column: 13)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !1, line: 1064, column: 53)
!1012 = distinct !DILexicalBlock(scope: !998, file: !1, line: 1064, column: 13)
!1013 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1014, file: !1, line: 1066, type: !36)
!1014 = distinct !DILexicalBlock(scope: !1011, file: !1, line: 1066, column: 13)
!1015 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1016, file: !1, line: 1070, type: !36)
!1016 = distinct !DILexicalBlock(scope: !998, file: !1, line: 1070, column: 9)
!1017 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1018, file: !1, line: 1100, type: !36)
!1018 = distinct !DILexicalBlock(scope: !998, file: !1, line: 1100, column: 9)
!1019 = !DISubprogram(name: "get_standard_encoding", scope: !1, file: !1, line: 911, type: !1020, isLocal: true, isDefinition: true, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32*)* @get_standard_encoding, variables: !1023)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!75, !60, !1022}
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!1023 = !{!1024, !1025}
!1024 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 1, scope: !1019, file: !1, line: 911, type: !60)
!1025 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bytelength", arg: 2, scope: !1019, file: !1, line: 911, type: !1022)
!1026 = !DISubprogram(name: "surrogateescape_errors", scope: !1, file: !1, line: 1231, type: !158, isLocal: true, isDefinition: true, scopeLine: 1232, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @surrogateescape_errors, variables: !1027)
!1027 = !{!1028, !1029}
!1028 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !1026, file: !1, line: 1231, type: !36)
!1029 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 2, scope: !1026, file: !1, line: 1231, type: !36)
!1030 = !DISubprogram(name: "PyCodec_SurrogateEscapeErrors", scope: !1, file: !1, line: 1118, type: !148, isLocal: true, isDefinition: true, scopeLine: 1119, flags: DIFlagPrototyped, isOptimized: true, variables: !1031)
!1031 = !{!1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1042, !1046, !1050, !1054, !1056, !1058, !1060, !1063, !1064, !1068, !1069, !1073}
!1032 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 1, scope: !1030, file: !1, line: 1118, type: !36)
!1033 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "restuple", scope: !1030, file: !1, line: 1120, type: !36)
!1034 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "object", scope: !1030, file: !1, line: 1121, type: !36)
!1035 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !1030, file: !1, line: 1122, type: !42)
!1036 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !1030, file: !1, line: 1123, type: !42)
!1037 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end", scope: !1030, file: !1, line: 1124, type: !42)
!1038 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !1030, file: !1, line: 1125, type: !36)
!1039 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outp", scope: !1040, file: !1, line: 1127, type: !83)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !1, line: 1126, column: 61)
!1041 = distinct !DILexicalBlock(scope: !1030, file: !1, line: 1126, column: 9)
!1042 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1043, file: !1, line: 1136, type: !36)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !1, line: 1136, column: 13)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 1135, column: 19)
!1045 = distinct !DILexicalBlock(scope: !1040, file: !1, line: 1135, column: 13)
!1046 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch", scope: !1047, file: !1, line: 1142, type: !469)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 1140, column: 39)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 1140, column: 9)
!1049 = distinct !DILexicalBlock(scope: !1040, file: !1, line: 1140, column: 9)
!1050 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1051, file: !1, line: 1146, type: !36)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !1, line: 1146, column: 17)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !1, line: 1143, column: 45)
!1053 = distinct !DILexicalBlock(scope: !1047, file: !1, line: 1143, column: 17)
!1054 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1055, file: !1, line: 1147, type: !36)
!1055 = distinct !DILexicalBlock(scope: !1052, file: !1, line: 1147, column: 17)
!1056 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1057, file: !1, line: 1153, type: !36)
!1057 = distinct !DILexicalBlock(scope: !1040, file: !1, line: 1153, column: 9)
!1058 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1059, file: !1, line: 1154, type: !36)
!1059 = distinct !DILexicalBlock(scope: !1040, file: !1, line: 1154, column: 9)
!1060 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !1061, file: !1, line: 1158, type: !36)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !1, line: 1157, column: 66)
!1062 = distinct !DILexicalBlock(scope: !1041, file: !1, line: 1157, column: 14)
!1063 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !1061, file: !1, line: 1159, type: !476)
!1064 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch", scope: !1061, file: !1, line: 1160, type: !1065)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 64, align: 16, elements: !1066)
!1066 = !{!1067}
!1067 = !DISubrange(count: 4)
!1068 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "consumed", scope: !1061, file: !1, line: 1161, type: !75)
!1069 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1070, file: !1, line: 1169, type: !36)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !1, line: 1169, column: 13)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !1, line: 1168, column: 62)
!1072 = distinct !DILexicalBlock(scope: !1061, file: !1, line: 1168, column: 13)
!1073 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1074, file: !1, line: 1179, type: !36)
!1074 = distinct !DILexicalBlock(scope: !1061, file: !1, line: 1179, column: 9)
!1075 = !{!1076, !1077, !1085, !1086, !1087}
!1076 = !DIGlobalVariable(name: "Py_hexdigits", scope: !0, file: !1, line: 14, type: !60, isLocal: false, isDefinition: true, variable: i8** @Py_hexdigits)
!1077 = !DIGlobalVariable(name: "PyId__is_text_encoding", scope: !600, file: !1, line: 501, type: !1078, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @_PyCodec_LookupTextEncoding.PyId__is_text_encoding)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !38, line: 144, baseType: !1079)
!1079 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !38, line: 140, size: 192, align: 64, elements: !1080)
!1080 = !{!1081, !1083, !1084}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1079, file: !38, line: 141, baseType: !1082, size: 64, align: 64)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64, align: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1079, file: !38, line: 142, baseType: !60, size: 64, align: 64, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1079, file: !38, line: 143, baseType: !36, size: 64, align: 64, offset: 128)
!1085 = !DIGlobalVariable(name: "PyId___class__", scope: !891, file: !1, line: 638, type: !1078, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @wrong_exception_type.PyId___class__)
!1086 = !DIGlobalVariable(name: "PyId___name__", scope: !891, file: !1, line: 639, type: !1078, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @wrong_exception_type.PyId___name__)
!1087 = !DIGlobalVariable(name: "methods", scope: !904, file: !1, line: 1241, type: !1088, isLocal: true, isDefinition: true, variable: [7 x %struct.anon.0]* @_PyCodecRegistry_Init.methods)
!1088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1089, size: 2240, align: 64, elements: !1094)
!1089 = !DICompositeType(tag: DW_TAG_structure_type, scope: !904, file: !1, line: 1238, size: 320, align: 64, elements: !1090)
!1090 = !{!1091, !1092}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1089, file: !1, line: 1239, baseType: !83, size: 64, align: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1089, file: !1, line: 1240, baseType: !1093, size: 256, align: 64, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !313, line: 47, baseType: !312)
!1094 = !{!1095}
!1095 = !DISubrange(count: 7)
!1096 = !{i32 2, !"Dwarf Version", i32 4}
!1097 = !{i32 2, !"Debug Info Version", i32 3}
!1098 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1099 = !DIExpression()
!1100 = !DILocation(line: 31, column: 32, scope: !478)
!1101 = !DILocation(line: 33, column: 34, scope: !483)
!1102 = !{}
!1103 = !DILocation(line: 33, column: 34, scope: !1104)
!1104 = !DILexicalBlockFile(scope: !1105, file: !1, discriminator: 6)
!1105 = !DILexicalBlockFile(scope: !483, file: !1, discriminator: 5)
!1106 = !{!1107, !1107, i64 0}
!1107 = !{!"any pointer", !1108, i64 0}
!1108 = !{!"omnipotent char", !1109, i64 0}
!1109 = !{!"Simple C/C++ TBAA"}
!1110 = !DILocation(line: 33, column: 55, scope: !478)
!1111 = !{!1112, !1107, i64 16}
!1112 = !{!"_ts", !1107, i64 0, !1107, i64 8, !1107, i64 16, !1107, i64 24, !1113, i64 32, !1108, i64 36, !1108, i64 37, !1113, i64 40, !1113, i64 44, !1107, i64 48, !1107, i64 56, !1107, i64 64, !1107, i64 72, !1107, i64 80, !1107, i64 88, !1107, i64 96, !1107, i64 104, !1107, i64 112, !1107, i64 120, !1107, i64 128, !1113, i64 136, !1107, i64 144, !1114, i64 152, !1113, i64 160, !1107, i64 168, !1107, i64 176, !1107, i64 184}
!1113 = !{!"int", !1108, i64 0}
!1114 = !{!"long", !1108, i64 0}
!1115 = !DILocation(line: 33, column: 25, scope: !478)
!1116 = !DILocation(line: 34, column: 17, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !478, file: !1, line: 34, column: 9)
!1118 = !{!1119, !1107, i64 56}
!1119 = !{!"_is", !1107, i64 0, !1107, i64 8, !1107, i64 16, !1107, i64 24, !1107, i64 32, !1107, i64 40, !1107, i64 48, !1107, i64 56, !1107, i64 64, !1107, i64 72, !1113, i64 80, !1113, i64 84, !1113, i64 88, !1107, i64 96}
!1120 = !DILocation(line: 34, column: 35, scope: !1117)
!1121 = !DILocation(line: 34, column: 43, scope: !1117)
!1122 = !DILocation(line: 34, column: 46, scope: !1123)
!1123 = !DILexicalBlockFile(scope: !1117, file: !1, discriminator: 1)
!1124 = !DILocation(line: 34, column: 9, scope: !478)
!1125 = !DILocation(line: 36, column: 25, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !478, file: !1, line: 36, column: 9)
!1127 = !DILocation(line: 36, column: 9, scope: !478)
!1128 = !DILocation(line: 37, column: 9, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1126, file: !1, line: 36, column: 34)
!1130 = !DILocation(line: 38, column: 9, scope: !1129)
!1131 = !DILocation(line: 40, column: 10, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !478, file: !1, line: 40, column: 9)
!1133 = !DILocation(line: 40, column: 9, scope: !478)
!1134 = !DILocation(line: 41, column: 25, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1132, file: !1, line: 40, column: 45)
!1136 = !DILocation(line: 41, column: 9, scope: !1135)
!1137 = !DILocation(line: 42, column: 9, scope: !1135)
!1138 = !DILocation(line: 44, column: 34, scope: !478)
!1139 = !DILocation(line: 44, column: 12, scope: !478)
!1140 = !DILocation(line: 44, column: 5, scope: !478)
!1141 = !DILocation(line: 48, column: 1, scope: !478)
!1142 = !DILocation(line: 1313, column: 34, scope: !910)
!1143 = !DILocation(line: 1313, column: 34, scope: !1144)
!1144 = !DILexicalBlockFile(scope: !1145, file: !1, discriminator: 6)
!1145 = !DILexicalBlockFile(scope: !910, file: !1, discriminator: 5)
!1146 = !DILocation(line: 1313, column: 55, scope: !904)
!1147 = !DILocation(line: 1313, column: 25, scope: !904)
!1148 = !DILocation(line: 1317, column: 17, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !904, file: !1, line: 1317, column: 9)
!1150 = !DILocation(line: 1317, column: 35, scope: !1149)
!1151 = !DILocation(line: 1317, column: 9, scope: !904)
!1152 = !DILocation(line: 1320, column: 33, scope: !904)
!1153 = !DILocation(line: 1320, column: 31, scope: !904)
!1154 = !DILocation(line: 1321, column: 34, scope: !904)
!1155 = !DILocation(line: 1321, column: 13, scope: !904)
!1156 = !DILocation(line: 1321, column: 32, scope: !904)
!1157 = !{!1119, !1107, i64 64}
!1158 = !DILocation(line: 1322, column: 36, scope: !904)
!1159 = !DILocation(line: 1322, column: 13, scope: !904)
!1160 = !DILocation(line: 1322, column: 34, scope: !904)
!1161 = !{!1119, !1107, i64 72}
!1162 = !DILocation(line: 1324, column: 9, scope: !921)
!1163 = !DILocation(line: 1324, column: 9, scope: !904)
!1164 = !DILocation(line: 1326, column: 60, scope: !917)
!1165 = !DILocation(line: 1325, column: 23, scope: !918)
!1166 = !DILocation(line: 1325, column: 9, scope: !919)
!1167 = !DILocation(line: 1326, column: 30, scope: !917)
!1168 = !DILocation(line: 1326, column: 23, scope: !917)
!1169 = !DILocation(line: 1328, column: 18, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !917, file: !1, line: 1328, column: 17)
!1171 = !DILocation(line: 1328, column: 17, scope: !917)
!1172 = !DILocation(line: 1329, column: 17, scope: !1170)
!1173 = !DILocation(line: 1330, column: 52, scope: !917)
!1174 = !{!1175, !1107, i64 0}
!1175 = !{!"", !1107, i64 0, !1176, i64 8}
!1176 = !{!"PyMethodDef", !1107, i64 0, !1107, i64 8, !1113, i64 16, !1107, i64 24}
!1177 = !DILocation(line: 602, column: 39, scope: !634, inlinedAt: !1178)
!1178 = distinct !DILocation(line: 1330, column: 19, scope: !917)
!1179 = !DILocation(line: 602, column: 55, scope: !634, inlinedAt: !1178)
!1180 = !DILocation(line: 604, column: 34, scope: !642, inlinedAt: !1178)
!1181 = !DILocation(line: 604, column: 34, scope: !1182, inlinedAt: !1178)
!1182 = !DILexicalBlockFile(scope: !1183, file: !1, discriminator: 6)
!1183 = !DILexicalBlockFile(scope: !642, file: !1, discriminator: 5)
!1184 = !DILocation(line: 604, column: 55, scope: !634, inlinedAt: !1178)
!1185 = !DILocation(line: 604, column: 25, scope: !634, inlinedAt: !1178)
!1186 = !DILocation(line: 605, column: 17, scope: !1187, inlinedAt: !1178)
!1187 = distinct !DILexicalBlock(scope: !634, file: !1, line: 605, column: 9)
!1188 = !DILocation(line: 605, column: 35, scope: !1187, inlinedAt: !1178)
!1189 = !DILocation(line: 605, column: 43, scope: !1187, inlinedAt: !1178)
!1190 = !DILocation(line: 605, column: 46, scope: !1191, inlinedAt: !1178)
!1191 = !DILexicalBlockFile(scope: !1187, file: !1, discriminator: 1)
!1192 = !DILocation(line: 605, column: 9, scope: !634, inlinedAt: !1178)
!1193 = !DILocation(line: 607, column: 10, scope: !1194, inlinedAt: !1178)
!1194 = distinct !DILexicalBlock(scope: !634, file: !1, line: 607, column: 9)
!1195 = !DILocation(line: 607, column: 9, scope: !634, inlinedAt: !1178)
!1196 = !DILocation(line: 608, column: 25, scope: !1197, inlinedAt: !1178)
!1197 = distinct !DILexicalBlock(scope: !1194, file: !1, line: 607, column: 35)
!1198 = !DILocation(line: 608, column: 9, scope: !1197, inlinedAt: !1178)
!1199 = !DILocation(line: 609, column: 9, scope: !1197, inlinedAt: !1178)
!1200 = !DILocation(line: 611, column: 41, scope: !634, inlinedAt: !1178)
!1201 = !DILocation(line: 611, column: 12, scope: !634, inlinedAt: !1178)
!1202 = !DILocation(line: 611, column: 5, scope: !634, inlinedAt: !1178)
!1203 = !DILocation(line: 1330, column: 19, scope: !917)
!1204 = !DILocation(line: 1327, column: 17, scope: !917)
!1205 = !DILocation(line: 1331, column: 13, scope: !1206)
!1206 = !DILexicalBlockFile(scope: !924, file: !1, discriminator: 1)
!1207 = !DILocation(line: 1331, column: 13, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !924, file: !1, line: 1331, column: 13)
!1209 = !{!1210, !1114, i64 0}
!1210 = !{!"_object", !1114, i64 0, !1107, i64 8}
!1211 = !DILocation(line: 1331, column: 13, scope: !924)
!1212 = !DILocation(line: 1331, column: 13, scope: !1213)
!1213 = !DILexicalBlockFile(scope: !1208, file: !1, discriminator: 3)
!1214 = !{!1210, !1107, i64 8}
!1215 = !{!1216, !1107, i64 48}
!1216 = !{!"_typeobject", !1217, i64 0, !1107, i64 24, !1114, i64 32, !1114, i64 40, !1107, i64 48, !1107, i64 56, !1107, i64 64, !1107, i64 72, !1107, i64 80, !1107, i64 88, !1107, i64 96, !1107, i64 104, !1107, i64 112, !1107, i64 120, !1107, i64 128, !1107, i64 136, !1107, i64 144, !1107, i64 152, !1107, i64 160, !1114, i64 168, !1107, i64 176, !1107, i64 184, !1107, i64 192, !1107, i64 200, !1114, i64 208, !1107, i64 216, !1107, i64 224, !1107, i64 232, !1107, i64 240, !1107, i64 248, !1107, i64 256, !1107, i64 264, !1107, i64 272, !1107, i64 280, !1114, i64 288, !1107, i64 296, !1107, i64 304, !1107, i64 312, !1107, i64 320, !1107, i64 328, !1107, i64 336, !1107, i64 344, !1107, i64 352, !1107, i64 360, !1107, i64 368, !1107, i64 376, !1113, i64 384, !1107, i64 392}
!1217 = !{!"", !1210, i64 0, !1114, i64 16}
!1218 = !DILocation(line: 1332, column: 17, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !917, file: !1, line: 1332, column: 17)
!1220 = !DILocation(line: 1332, column: 17, scope: !917)
!1221 = !DILocation(line: 1333, column: 17, scope: !1219)
!1222 = !DILocation(line: 1337, column: 17, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !904, file: !1, line: 1337, column: 9)
!1224 = !DILocation(line: 1337, column: 35, scope: !1223)
!1225 = !DILocation(line: 1337, column: 43, scope: !1223)
!1226 = !DILocation(line: 1338, column: 17, scope: !1223)
!1227 = !DILocation(line: 1338, column: 36, scope: !1223)
!1228 = !DILocation(line: 1338, column: 44, scope: !1223)
!1229 = !DILocation(line: 1339, column: 17, scope: !1223)
!1230 = !DILocation(line: 1339, column: 38, scope: !1223)
!1231 = !DILocation(line: 1337, column: 9, scope: !904)
!1232 = !DILocation(line: 1340, column: 9, scope: !1223)
!1233 = !DILocation(line: 1342, column: 11, scope: !904)
!1234 = !DILocation(line: 1314, column: 15, scope: !904)
!1235 = !DILocation(line: 1343, column: 13, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !904, file: !1, line: 1343, column: 9)
!1237 = !DILocation(line: 1343, column: 9, scope: !904)
!1238 = !DILocation(line: 1346, column: 5, scope: !1239)
!1239 = !DILexicalBlockFile(scope: !926, file: !1, discriminator: 1)
!1240 = !DILocation(line: 1346, column: 5, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !926, file: !1, line: 1346, column: 5)
!1242 = !DILocation(line: 1346, column: 5, scope: !926)
!1243 = !DILocation(line: 1346, column: 5, scope: !1244)
!1244 = !DILexicalBlockFile(scope: !1241, file: !1, discriminator: 3)
!1245 = !DILocation(line: 1347, column: 13, scope: !904)
!1246 = !DILocation(line: 1347, column: 32, scope: !904)
!1247 = !{!1119, !1113, i64 80}
!1248 = !DILocation(line: 1348, column: 5, scope: !904)
!1249 = !DILocation(line: 1349, column: 1, scope: !904)
!1250 = !DILocation(line: 100, column: 39, scope: !495)
!1251 = !DILocation(line: 103, column: 24, scope: !495)
!1252 = !DILocation(line: 103, column: 5, scope: !495)
!1253 = !DILocation(line: 106, column: 18, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !495, file: !1, line: 106, column: 9)
!1255 = !DILocation(line: 106, column: 9, scope: !495)
!1256 = !DILocation(line: 107, column: 9, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1254, file: !1, line: 106, column: 27)
!1258 = !DILocation(line: 108, column: 9, scope: !1257)
!1259 = !DILocation(line: 111, column: 14, scope: !507)
!1260 = !DILocation(line: 111, column: 14, scope: !1261)
!1261 = !DILexicalBlockFile(scope: !1262, file: !1, discriminator: 6)
!1262 = !DILexicalBlockFile(scope: !507, file: !1, discriminator: 5)
!1263 = !DILocation(line: 111, column: 35, scope: !495)
!1264 = !DILocation(line: 102, column: 25, scope: !495)
!1265 = !DILocation(line: 112, column: 17, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !495, file: !1, line: 112, column: 9)
!1267 = !DILocation(line: 112, column: 35, scope: !1266)
!1268 = !DILocation(line: 112, column: 43, scope: !1266)
!1269 = !DILocation(line: 112, column: 46, scope: !1270)
!1270 = !DILexicalBlockFile(scope: !1266, file: !1, discriminator: 1)
!1271 = !DILocation(line: 112, column: 9, scope: !495)
!1272 = !DILocation(line: 54, column: 39, scope: !739, inlinedAt: !1273)
!1273 = distinct !DILocation(line: 118, column: 9, scope: !495)
!1274 = !DILocation(line: 57, column: 18, scope: !739, inlinedAt: !1273)
!1275 = !DILocation(line: 57, column: 12, scope: !739, inlinedAt: !1273)
!1276 = !DILocation(line: 61, column: 13, scope: !1277, inlinedAt: !1273)
!1277 = distinct !DILexicalBlock(scope: !739, file: !1, line: 61, column: 9)
!1278 = !DILocation(line: 61, column: 9, scope: !739, inlinedAt: !1273)
!1279 = !DILocation(line: 62, column: 25, scope: !1280, inlinedAt: !1273)
!1280 = distinct !DILexicalBlock(scope: !1277, file: !1, line: 61, column: 31)
!1281 = !DILocation(line: 62, column: 9, scope: !1280, inlinedAt: !1273)
!1282 = !DILocation(line: 63, column: 9, scope: !1280, inlinedAt: !1273)
!1283 = !DILocation(line: 66, column: 26, scope: !739, inlinedAt: !1273)
!1284 = !DILocation(line: 66, column: 9, scope: !739, inlinedAt: !1273)
!1285 = !DILocation(line: 58, column: 11, scope: !739, inlinedAt: !1273)
!1286 = !DILocation(line: 67, column: 11, scope: !1287, inlinedAt: !1273)
!1287 = distinct !DILexicalBlock(scope: !739, file: !1, line: 67, column: 9)
!1288 = !DILocation(line: 67, column: 9, scope: !739, inlinedAt: !1273)
!1289 = !DILocation(line: 69, column: 19, scope: !748, inlinedAt: !1273)
!1290 = !DILocation(line: 69, column: 5, scope: !749, inlinedAt: !1273)
!1291 = !DILocation(line: 70, column: 19, scope: !747, inlinedAt: !1273)
!1292 = !{!1108, !1108, i64 0}
!1293 = !DILocation(line: 70, column: 14, scope: !747, inlinedAt: !1273)
!1294 = !DILocation(line: 71, column: 16, scope: !1295, inlinedAt: !1273)
!1295 = distinct !DILexicalBlock(scope: !747, file: !1, line: 71, column: 13)
!1296 = !DILocation(line: 71, column: 13, scope: !747, inlinedAt: !1273)
!1297 = !DILocation(line: 74, column: 18, scope: !1295, inlinedAt: !1273)
!1298 = !DILocation(line: 118, column: 9, scope: !495)
!1299 = !DILocation(line: 75, column: 14, scope: !747, inlinedAt: !1273)
!1300 = !DILocation(line: 56, column: 12, scope: !739, inlinedAt: !1273)
!1301 = !DILocation(line: 75, column: 9, scope: !747, inlinedAt: !1273)
!1302 = !DILocation(line: 69, column: 27, scope: !748, inlinedAt: !1273)
!1303 = !DILocation(line: 77, column: 5, scope: !739, inlinedAt: !1273)
!1304 = !DILocation(line: 77, column: 10, scope: !739, inlinedAt: !1273)
!1305 = !DILocation(line: 78, column: 9, scope: !739, inlinedAt: !1273)
!1306 = !DILocation(line: 59, column: 15, scope: !739, inlinedAt: !1273)
!1307 = !DILocation(line: 79, column: 11, scope: !1308, inlinedAt: !1273)
!1308 = distinct !DILexicalBlock(scope: !739, file: !1, line: 79, column: 9)
!1309 = !DILocation(line: 79, column: 9, scope: !739, inlinedAt: !1273)
!1310 = !DILocation(line: 81, column: 5, scope: !739, inlinedAt: !1273)
!1311 = !DILocation(line: 103, column: 38, scope: !495)
!1312 = !DILocation(line: 118, column: 7, scope: !495)
!1313 = !DILocation(line: 119, column: 9, scope: !495)
!1314 = !DILocation(line: 68, column: 16, scope: !1287, inlinedAt: !1273)
!1315 = !DILocation(line: 119, column: 11, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !495, file: !1, line: 119, column: 9)
!1317 = !DILocation(line: 121, column: 5, scope: !495)
!1318 = !DILocation(line: 124, column: 37, scope: !495)
!1319 = !DILocation(line: 124, column: 57, scope: !495)
!1320 = !DILocation(line: 124, column: 14, scope: !495)
!1321 = !DILocation(line: 103, column: 15, scope: !495)
!1322 = !DILocation(line: 125, column: 16, scope: !514)
!1323 = !DILocation(line: 125, column: 9, scope: !495)
!1324 = !DILocation(line: 126, column: 9, scope: !513)
!1325 = !DILocation(line: 127, column: 9, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !512, file: !1, discriminator: 1)
!1327 = !DILocation(line: 127, column: 9, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !512, file: !1, line: 127, column: 9)
!1329 = !DILocation(line: 127, column: 9, scope: !512)
!1330 = !DILocation(line: 127, column: 9, scope: !1331)
!1331 = !DILexicalBlockFile(scope: !1328, file: !1, discriminator: 3)
!1332 = !DILocation(line: 132, column: 12, scope: !495)
!1333 = !DILocation(line: 133, column: 14, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !495, file: !1, line: 133, column: 9)
!1335 = !DILocation(line: 133, column: 9, scope: !495)
!1336 = !DILocation(line: 135, column: 5, scope: !495)
!1337 = !DILocation(line: 137, column: 31, scope: !495)
!1338 = !DILocation(line: 137, column: 11, scope: !495)
!1339 = !DILocation(line: 104, column: 19, scope: !495)
!1340 = !DILocation(line: 138, column: 13, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !495, file: !1, line: 138, column: 9)
!1342 = !DILocation(line: 138, column: 9, scope: !495)
!1343 = !DILocation(line: 140, column: 13, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !495, file: !1, line: 140, column: 9)
!1345 = !DILocation(line: 140, column: 9, scope: !495)
!1346 = !DILocation(line: 150, column: 39, scope: !516)
!1347 = !DILocation(line: 141, column: 25, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1344, file: !1, line: 140, column: 19)
!1349 = !DILocation(line: 141, column: 9, scope: !1348)
!1350 = !DILocation(line: 144, column: 9, scope: !1348)
!1351 = !DILocation(line: 150, column: 16, scope: !516)
!1352 = !DILocation(line: 148, column: 19, scope: !516)
!1353 = !DILocation(line: 151, column: 18, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !516, file: !1, line: 151, column: 13)
!1355 = !DILocation(line: 151, column: 13, scope: !516)
!1356 = !DILocation(line: 153, column: 18, scope: !516)
!1357 = !DILocation(line: 154, column: 20, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !516, file: !1, line: 154, column: 13)
!1359 = !DILocation(line: 154, column: 13, scope: !516)
!1360 = !DILocation(line: 156, column: 20, scope: !522)
!1361 = !DILocation(line: 156, column: 13, scope: !516)
!1362 = !DILocation(line: 157, column: 13, scope: !1363)
!1363 = !DILexicalBlockFile(scope: !520, file: !1, discriminator: 1)
!1364 = !DILocation(line: 157, column: 13, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !520, file: !1, line: 157, column: 13)
!1366 = !DILocation(line: 157, column: 13, scope: !520)
!1367 = !DILocation(line: 157, column: 13, scope: !1368)
!1368 = !DILexicalBlockFile(scope: !1365, file: !1, discriminator: 3)
!1369 = !DILocation(line: 160, column: 14, scope: !526)
!1370 = !{!1216, !1114, i64 168}
!1371 = !DILocation(line: 160, column: 36, scope: !526)
!1372 = !DILocation(line: 160, column: 39, scope: !1373)
!1373 = !DILexicalBlockFile(scope: !526, file: !1, discriminator: 1)
!1374 = !{!1217, !1114, i64 16}
!1375 = !DILocation(line: 160, column: 64, scope: !526)
!1376 = !DILocation(line: 160, column: 13, scope: !516)
!1377 = !DILocation(line: 161, column: 29, scope: !525)
!1378 = !DILocation(line: 161, column: 13, scope: !525)
!1379 = !DILocation(line: 163, column: 13, scope: !1380)
!1380 = !DILexicalBlockFile(scope: !524, file: !1, discriminator: 1)
!1381 = !DILocation(line: 163, column: 13, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !524, file: !1, line: 163, column: 13)
!1383 = !DILocation(line: 163, column: 13, scope: !524)
!1384 = !DILocation(line: 163, column: 13, scope: !1385)
!1385 = !DILexicalBlockFile(scope: !1382, file: !1, discriminator: 3)
!1386 = !DILocation(line: 147, column: 27, scope: !517)
!1387 = !DILocation(line: 104, column: 16, scope: !495)
!1388 = !DILocation(line: 147, column: 19, scope: !517)
!1389 = !DILocation(line: 147, column: 5, scope: !518)
!1390 = !DILocation(line: 168, column: 11, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !495, file: !1, line: 168, column: 9)
!1392 = !DILocation(line: 168, column: 9, scope: !495)
!1393 = !DILocation(line: 170, column: 22, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1391, file: !1, line: 168, column: 19)
!1395 = !DILocation(line: 170, column: 9, scope: !1394)
!1396 = !DILocation(line: 172, column: 9, scope: !1394)
!1397 = !DILocation(line: 176, column: 32, scope: !530)
!1398 = !DILocation(line: 176, column: 52, scope: !530)
!1399 = !DILocation(line: 176, column: 9, scope: !530)
!1400 = !DILocation(line: 176, column: 63, scope: !530)
!1401 = !DILocation(line: 176, column: 9, scope: !495)
!1402 = !DILocation(line: 177, column: 9, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !528, file: !1, discriminator: 1)
!1404 = !DILocation(line: 177, column: 9, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !528, file: !1, line: 177, column: 9)
!1406 = !DILocation(line: 177, column: 9, scope: !528)
!1407 = !DILocation(line: 177, column: 9, scope: !1408)
!1408 = !DILexicalBlockFile(scope: !1405, file: !1, discriminator: 3)
!1409 = !DILocation(line: 180, column: 5, scope: !1410)
!1410 = !DILexicalBlockFile(scope: !532, file: !1, discriminator: 1)
!1411 = !DILocation(line: 180, column: 5, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !532, file: !1, line: 180, column: 5)
!1413 = !DILocation(line: 180, column: 5, scope: !532)
!1414 = !DILocation(line: 180, column: 5, scope: !1415)
!1415 = !DILexicalBlockFile(scope: !1412, file: !1, discriminator: 3)
!1416 = !DILocation(line: 184, column: 5, scope: !1417)
!1417 = !DILexicalBlockFile(scope: !536, file: !1, discriminator: 4)
!1418 = !DILocation(line: 184, column: 5, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !536, file: !1, line: 184, column: 5)
!1420 = !DILocation(line: 184, column: 5, scope: !536)
!1421 = !DILocation(line: 184, column: 5, scope: !1422)
!1422 = !DILexicalBlockFile(scope: !1419, file: !1, discriminator: 6)
!1423 = !DILocation(line: 186, column: 1, scope: !495)
!1424 = !DILocation(line: 190, column: 39, scope: !538)
!1425 = !DILocation(line: 194, column: 14, scope: !538)
!1426 = !DILocation(line: 192, column: 15, scope: !538)
!1427 = !DILocation(line: 195, column: 10, scope: !547)
!1428 = !DILocation(line: 195, column: 9, scope: !538)
!1429 = !DILocation(line: 196, column: 9, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !547, file: !1, line: 195, column: 18)
!1431 = !DILocation(line: 197, column: 9, scope: !1430)
!1432 = !DILocation(line: 200, column: 9, scope: !1433)
!1433 = !DILexicalBlockFile(scope: !545, file: !1, discriminator: 1)
!1434 = !DILocation(line: 200, column: 9, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !545, file: !1, line: 200, column: 9)
!1436 = !DILocation(line: 200, column: 9, scope: !545)
!1437 = !DILocation(line: 200, column: 9, scope: !1438)
!1438 = !DILexicalBlockFile(scope: !1435, file: !1, discriminator: 3)
!1439 = !DILocation(line: 203, column: 1, scope: !538)
!1440 = !DILocation(line: 306, column: 56, scope: !548)
!1441 = !DILocation(line: 307, column: 58, scope: !548)
!1442 = !DILocation(line: 248, column: 48, scope: !750, inlinedAt: !1443)
!1443 = distinct !DILocation(line: 309, column: 12, scope: !548)
!1444 = !DILocation(line: 249, column: 50, scope: !750, inlinedAt: !1443)
!1445 = !DILocation(line: 250, column: 50, scope: !750, inlinedAt: !1443)
!1446 = !DILocation(line: 254, column: 16, scope: !750, inlinedAt: !1443)
!1447 = !DILocation(line: 252, column: 21, scope: !750, inlinedAt: !1443)
!1448 = !DILocation(line: 255, column: 18, scope: !1449, inlinedAt: !1443)
!1449 = distinct !DILexicalBlock(scope: !750, file: !1, line: 255, column: 9)
!1450 = !DILocation(line: 255, column: 9, scope: !750, inlinedAt: !1443)
!1451 = !DILocation(line: 257, column: 9, scope: !1452, inlinedAt: !1443)
!1452 = distinct !DILexicalBlock(scope: !750, file: !1, line: 257, column: 9)
!1453 = !DILocation(line: 257, column: 9, scope: !750, inlinedAt: !1443)
!1454 = !DILocation(line: 258, column: 15, scope: !1452, inlinedAt: !1443)
!1455 = !DILocation(line: 252, column: 15, scope: !750, inlinedAt: !1443)
!1456 = !DILocation(line: 258, column: 9, scope: !1452, inlinedAt: !1443)
!1457 = !DILocation(line: 260, column: 15, scope: !1452, inlinedAt: !1443)
!1458 = !DILocation(line: 309, column: 12, scope: !548)
!1459 = !DILocation(line: 261, column: 5, scope: !1460, inlinedAt: !1443)
!1460 = !DILexicalBlockFile(scope: !758, file: !1, discriminator: 1)
!1461 = !DILocation(line: 261, column: 5, scope: !1462, inlinedAt: !1443)
!1462 = distinct !DILexicalBlock(scope: !758, file: !1, line: 261, column: 5)
!1463 = !DILocation(line: 261, column: 5, scope: !758, inlinedAt: !1443)
!1464 = !DILocation(line: 261, column: 5, scope: !1465, inlinedAt: !1443)
!1465 = !DILexicalBlockFile(scope: !1462, file: !1, discriminator: 3)
!1466 = !DILocation(line: 309, column: 5, scope: !548)
!1467 = !DILocation(line: 313, column: 56, scope: !554)
!1468 = !DILocation(line: 314, column: 58, scope: !554)
!1469 = !DILocation(line: 248, column: 48, scope: !750, inlinedAt: !1470)
!1470 = distinct !DILocation(line: 316, column: 12, scope: !554)
!1471 = !DILocation(line: 249, column: 50, scope: !750, inlinedAt: !1470)
!1472 = !DILocation(line: 250, column: 50, scope: !750, inlinedAt: !1470)
!1473 = !DILocation(line: 254, column: 16, scope: !750, inlinedAt: !1470)
!1474 = !DILocation(line: 252, column: 21, scope: !750, inlinedAt: !1470)
!1475 = !DILocation(line: 255, column: 18, scope: !1449, inlinedAt: !1470)
!1476 = !DILocation(line: 255, column: 9, scope: !750, inlinedAt: !1470)
!1477 = !DILocation(line: 257, column: 9, scope: !1452, inlinedAt: !1470)
!1478 = !DILocation(line: 257, column: 9, scope: !750, inlinedAt: !1470)
!1479 = !DILocation(line: 258, column: 15, scope: !1452, inlinedAt: !1470)
!1480 = !DILocation(line: 252, column: 15, scope: !750, inlinedAt: !1470)
!1481 = !DILocation(line: 258, column: 9, scope: !1452, inlinedAt: !1470)
!1482 = !DILocation(line: 260, column: 15, scope: !1452, inlinedAt: !1470)
!1483 = !DILocation(line: 316, column: 12, scope: !554)
!1484 = !DILocation(line: 261, column: 5, scope: !1460, inlinedAt: !1470)
!1485 = !DILocation(line: 261, column: 5, scope: !1462, inlinedAt: !1470)
!1486 = !DILocation(line: 261, column: 5, scope: !758, inlinedAt: !1470)
!1487 = !DILocation(line: 261, column: 5, scope: !1465, inlinedAt: !1470)
!1488 = !DILocation(line: 316, column: 5, scope: !554)
!1489 = !DILocation(line: 327, column: 39, scope: !558)
!1490 = !DILocation(line: 232, column: 37, scope: !759, inlinedAt: !1491)
!1491 = distinct !DILocation(line: 329, column: 12, scope: !558)
!1492 = !DILocation(line: 232, column: 51, scope: !759, inlinedAt: !1491)
!1493 = !DILocation(line: 237, column: 14, scope: !759, inlinedAt: !1491)
!1494 = !DILocation(line: 234, column: 15, scope: !759, inlinedAt: !1491)
!1495 = !DILocation(line: 238, column: 16, scope: !1496, inlinedAt: !1491)
!1496 = distinct !DILexicalBlock(scope: !759, file: !1, line: 238, column: 9)
!1497 = !DILocation(line: 238, column: 9, scope: !759, inlinedAt: !1491)
!1498 = !DILocation(line: 240, column: 9, scope: !759, inlinedAt: !1491)
!1499 = !DILocation(line: 235, column: 15, scope: !759, inlinedAt: !1491)
!1500 = !DILocation(line: 241, column: 5, scope: !1501, inlinedAt: !1491)
!1501 = !DILexicalBlockFile(scope: !768, file: !1, discriminator: 1)
!1502 = !DILocation(line: 241, column: 5, scope: !1503, inlinedAt: !1491)
!1503 = distinct !DILexicalBlock(scope: !768, file: !1, line: 241, column: 5)
!1504 = !DILocation(line: 241, column: 5, scope: !768, inlinedAt: !1491)
!1505 = !DILocation(line: 241, column: 5, scope: !1506, inlinedAt: !1491)
!1506 = !DILexicalBlockFile(scope: !1503, file: !1, discriminator: 3)
!1507 = !DILocation(line: 329, column: 12, scope: !558)
!1508 = !DILocation(line: 242, column: 5, scope: !759, inlinedAt: !1491)
!1509 = !DILocation(line: 243, column: 5, scope: !759, inlinedAt: !1491)
!1510 = !DILocation(line: 329, column: 5, scope: !558)
!1511 = !DILocation(line: 332, column: 39, scope: !561)
!1512 = !DILocation(line: 232, column: 37, scope: !759, inlinedAt: !1513)
!1513 = distinct !DILocation(line: 334, column: 12, scope: !561)
!1514 = !DILocation(line: 232, column: 51, scope: !759, inlinedAt: !1513)
!1515 = !DILocation(line: 237, column: 14, scope: !759, inlinedAt: !1513)
!1516 = !DILocation(line: 234, column: 15, scope: !759, inlinedAt: !1513)
!1517 = !DILocation(line: 238, column: 16, scope: !1496, inlinedAt: !1513)
!1518 = !DILocation(line: 238, column: 9, scope: !759, inlinedAt: !1513)
!1519 = !DILocation(line: 240, column: 9, scope: !759, inlinedAt: !1513)
!1520 = !DILocation(line: 235, column: 15, scope: !759, inlinedAt: !1513)
!1521 = !DILocation(line: 241, column: 5, scope: !1501, inlinedAt: !1513)
!1522 = !DILocation(line: 241, column: 5, scope: !1503, inlinedAt: !1513)
!1523 = !DILocation(line: 241, column: 5, scope: !768, inlinedAt: !1513)
!1524 = !DILocation(line: 241, column: 5, scope: !1506, inlinedAt: !1513)
!1525 = !DILocation(line: 334, column: 12, scope: !561)
!1526 = !DILocation(line: 242, column: 5, scope: !759, inlinedAt: !1513)
!1527 = !DILocation(line: 243, column: 5, scope: !759, inlinedAt: !1513)
!1528 = !DILocation(line: 334, column: 5, scope: !561)
!1529 = !DILocation(line: 337, column: 50, scope: !564)
!1530 = !DILocation(line: 338, column: 50, scope: !564)
!1531 = !DILocation(line: 266, column: 49, scope: !769, inlinedAt: !1532)
!1532 = distinct !DILocation(line: 340, column: 12, scope: !564)
!1533 = !DILocation(line: 267, column: 49, scope: !769, inlinedAt: !1532)
!1534 = !DILocation(line: 268, column: 49, scope: !769, inlinedAt: !1532)
!1535 = !DILocation(line: 272, column: 18, scope: !769, inlinedAt: !1532)
!1536 = !DILocation(line: 270, column: 15, scope: !769, inlinedAt: !1532)
!1537 = !DILocation(line: 273, column: 20, scope: !1538, inlinedAt: !1532)
!1538 = distinct !DILexicalBlock(scope: !769, file: !1, line: 273, column: 9)
!1539 = !DILocation(line: 273, column: 9, scope: !769, inlinedAt: !1532)
!1540 = !DILocation(line: 248, column: 48, scope: !750, inlinedAt: !1541)
!1541 = distinct !DILocation(line: 275, column: 11, scope: !769, inlinedAt: !1532)
!1542 = !DILocation(line: 249, column: 50, scope: !750, inlinedAt: !1541)
!1543 = !DILocation(line: 250, column: 50, scope: !750, inlinedAt: !1541)
!1544 = !DILocation(line: 254, column: 16, scope: !750, inlinedAt: !1541)
!1545 = !DILocation(line: 252, column: 21, scope: !750, inlinedAt: !1541)
!1546 = !DILocation(line: 255, column: 18, scope: !1449, inlinedAt: !1541)
!1547 = !DILocation(line: 255, column: 9, scope: !750, inlinedAt: !1541)
!1548 = !DILocation(line: 257, column: 9, scope: !1452, inlinedAt: !1541)
!1549 = !DILocation(line: 257, column: 9, scope: !750, inlinedAt: !1541)
!1550 = !DILocation(line: 258, column: 15, scope: !1452, inlinedAt: !1541)
!1551 = !DILocation(line: 252, column: 15, scope: !750, inlinedAt: !1541)
!1552 = !DILocation(line: 258, column: 9, scope: !1452, inlinedAt: !1541)
!1553 = !DILocation(line: 260, column: 15, scope: !1452, inlinedAt: !1541)
!1554 = !DILocation(line: 275, column: 11, scope: !769, inlinedAt: !1532)
!1555 = !DILocation(line: 261, column: 5, scope: !1460, inlinedAt: !1541)
!1556 = !DILocation(line: 261, column: 5, scope: !1462, inlinedAt: !1541)
!1557 = !DILocation(line: 261, column: 5, scope: !758, inlinedAt: !1541)
!1558 = !DILocation(line: 261, column: 5, scope: !1465, inlinedAt: !1541)
!1559 = !DILocation(line: 270, column: 28, scope: !769, inlinedAt: !1532)
!1560 = !DILocation(line: 276, column: 5, scope: !1561, inlinedAt: !1532)
!1561 = !DILexicalBlockFile(scope: !779, file: !1, discriminator: 1)
!1562 = !DILocation(line: 276, column: 5, scope: !1563, inlinedAt: !1532)
!1563 = distinct !DILexicalBlock(scope: !779, file: !1, line: 276, column: 5)
!1564 = !DILocation(line: 276, column: 5, scope: !779, inlinedAt: !1532)
!1565 = !DILocation(line: 276, column: 5, scope: !1566, inlinedAt: !1532)
!1566 = !DILexicalBlockFile(scope: !1563, file: !1, discriminator: 3)
!1567 = !DILocation(line: 340, column: 12, scope: !564)
!1568 = !DILocation(line: 340, column: 5, scope: !564)
!1569 = !DILocation(line: 343, column: 50, scope: !570)
!1570 = !DILocation(line: 344, column: 50, scope: !570)
!1571 = !DILocation(line: 266, column: 49, scope: !769, inlinedAt: !1572)
!1572 = distinct !DILocation(line: 346, column: 12, scope: !570)
!1573 = !DILocation(line: 267, column: 49, scope: !769, inlinedAt: !1572)
!1574 = !DILocation(line: 268, column: 49, scope: !769, inlinedAt: !1572)
!1575 = !DILocation(line: 272, column: 18, scope: !769, inlinedAt: !1572)
!1576 = !DILocation(line: 270, column: 15, scope: !769, inlinedAt: !1572)
!1577 = !DILocation(line: 273, column: 20, scope: !1538, inlinedAt: !1572)
!1578 = !DILocation(line: 273, column: 9, scope: !769, inlinedAt: !1572)
!1579 = !DILocation(line: 248, column: 48, scope: !750, inlinedAt: !1580)
!1580 = distinct !DILocation(line: 275, column: 11, scope: !769, inlinedAt: !1572)
!1581 = !DILocation(line: 249, column: 50, scope: !750, inlinedAt: !1580)
!1582 = !DILocation(line: 250, column: 50, scope: !750, inlinedAt: !1580)
!1583 = !DILocation(line: 254, column: 16, scope: !750, inlinedAt: !1580)
!1584 = !DILocation(line: 252, column: 21, scope: !750, inlinedAt: !1580)
!1585 = !DILocation(line: 255, column: 18, scope: !1449, inlinedAt: !1580)
!1586 = !DILocation(line: 255, column: 9, scope: !750, inlinedAt: !1580)
!1587 = !DILocation(line: 257, column: 9, scope: !1452, inlinedAt: !1580)
!1588 = !DILocation(line: 257, column: 9, scope: !750, inlinedAt: !1580)
!1589 = !DILocation(line: 258, column: 15, scope: !1452, inlinedAt: !1580)
!1590 = !DILocation(line: 252, column: 15, scope: !750, inlinedAt: !1580)
!1591 = !DILocation(line: 258, column: 9, scope: !1452, inlinedAt: !1580)
!1592 = !DILocation(line: 260, column: 15, scope: !1452, inlinedAt: !1580)
!1593 = !DILocation(line: 275, column: 11, scope: !769, inlinedAt: !1572)
!1594 = !DILocation(line: 261, column: 5, scope: !1460, inlinedAt: !1580)
!1595 = !DILocation(line: 261, column: 5, scope: !1462, inlinedAt: !1580)
!1596 = !DILocation(line: 261, column: 5, scope: !758, inlinedAt: !1580)
!1597 = !DILocation(line: 261, column: 5, scope: !1465, inlinedAt: !1580)
!1598 = !DILocation(line: 270, column: 28, scope: !769, inlinedAt: !1572)
!1599 = !DILocation(line: 276, column: 5, scope: !1561, inlinedAt: !1572)
!1600 = !DILocation(line: 276, column: 5, scope: !1563, inlinedAt: !1572)
!1601 = !DILocation(line: 276, column: 5, scope: !779, inlinedAt: !1572)
!1602 = !DILocation(line: 276, column: 5, scope: !1566, inlinedAt: !1572)
!1603 = !DILocation(line: 346, column: 12, scope: !570)
!1604 = !DILocation(line: 346, column: 5, scope: !570)
!1605 = !DILocation(line: 349, column: 44, scope: !574)
!1606 = !DILocation(line: 350, column: 42, scope: !574)
!1607 = !DILocation(line: 351, column: 44, scope: !574)
!1608 = !DILocation(line: 283, column: 44, scope: !780, inlinedAt: !1609)
!1609 = distinct !DILocation(line: 353, column: 12, scope: !574)
!1610 = !DILocation(line: 284, column: 42, scope: !780, inlinedAt: !1609)
!1611 = !DILocation(line: 285, column: 44, scope: !780, inlinedAt: !1609)
!1612 = !DILocation(line: 286, column: 42, scope: !780, inlinedAt: !1609)
!1613 = !DILocation(line: 290, column: 14, scope: !780, inlinedAt: !1609)
!1614 = !DILocation(line: 288, column: 15, scope: !780, inlinedAt: !1609)
!1615 = !DILocation(line: 291, column: 16, scope: !1616, inlinedAt: !1609)
!1616 = distinct !DILexicalBlock(scope: !780, file: !1, line: 291, column: 9)
!1617 = !DILocation(line: 291, column: 9, scope: !780, inlinedAt: !1609)
!1618 = !DILocation(line: 294, column: 16, scope: !780, inlinedAt: !1609)
!1619 = !DILocation(line: 288, column: 38, scope: !780, inlinedAt: !1609)
!1620 = !DILocation(line: 295, column: 16, scope: !1621, inlinedAt: !1609)
!1621 = distinct !DILexicalBlock(scope: !780, file: !1, line: 295, column: 9)
!1622 = !DILocation(line: 295, column: 9, scope: !780, inlinedAt: !1609)
!1623 = !DILocation(line: 296, column: 23, scope: !1621, inlinedAt: !1609)
!1624 = !DILocation(line: 288, column: 24, scope: !780, inlinedAt: !1609)
!1625 = !DILocation(line: 296, column: 9, scope: !1621, inlinedAt: !1609)
!1626 = !DILocation(line: 298, column: 23, scope: !1621, inlinedAt: !1609)
!1627 = !DILocation(line: 353, column: 12, scope: !574)
!1628 = !DILocation(line: 299, column: 5, scope: !1629, inlinedAt: !1609)
!1629 = !DILexicalBlockFile(scope: !793, file: !1, discriminator: 1)
!1630 = !DILocation(line: 299, column: 5, scope: !1631, inlinedAt: !1609)
!1631 = distinct !DILexicalBlock(scope: !793, file: !1, line: 299, column: 5)
!1632 = !DILocation(line: 299, column: 5, scope: !793, inlinedAt: !1609)
!1633 = !DILocation(line: 299, column: 5, scope: !1634, inlinedAt: !1609)
!1634 = !DILexicalBlockFile(scope: !1631, file: !1, discriminator: 3)
!1635 = !DILocation(line: 353, column: 5, scope: !574)
!1636 = !DILocation(line: 356, column: 44, scope: !581)
!1637 = !DILocation(line: 357, column: 42, scope: !581)
!1638 = !DILocation(line: 358, column: 44, scope: !581)
!1639 = !DILocation(line: 283, column: 44, scope: !780, inlinedAt: !1640)
!1640 = distinct !DILocation(line: 360, column: 12, scope: !581)
!1641 = !DILocation(line: 284, column: 42, scope: !780, inlinedAt: !1640)
!1642 = !DILocation(line: 285, column: 44, scope: !780, inlinedAt: !1640)
!1643 = !DILocation(line: 286, column: 42, scope: !780, inlinedAt: !1640)
!1644 = !DILocation(line: 290, column: 14, scope: !780, inlinedAt: !1640)
!1645 = !DILocation(line: 288, column: 15, scope: !780, inlinedAt: !1640)
!1646 = !DILocation(line: 291, column: 16, scope: !1616, inlinedAt: !1640)
!1647 = !DILocation(line: 291, column: 9, scope: !780, inlinedAt: !1640)
!1648 = !DILocation(line: 294, column: 16, scope: !780, inlinedAt: !1640)
!1649 = !DILocation(line: 288, column: 38, scope: !780, inlinedAt: !1640)
!1650 = !DILocation(line: 295, column: 16, scope: !1621, inlinedAt: !1640)
!1651 = !DILocation(line: 295, column: 9, scope: !780, inlinedAt: !1640)
!1652 = !DILocation(line: 296, column: 23, scope: !1621, inlinedAt: !1640)
!1653 = !DILocation(line: 288, column: 24, scope: !780, inlinedAt: !1640)
!1654 = !DILocation(line: 296, column: 9, scope: !1621, inlinedAt: !1640)
!1655 = !DILocation(line: 298, column: 23, scope: !1621, inlinedAt: !1640)
!1656 = !DILocation(line: 360, column: 12, scope: !581)
!1657 = !DILocation(line: 299, column: 5, scope: !1629, inlinedAt: !1640)
!1658 = !DILocation(line: 299, column: 5, scope: !1631, inlinedAt: !1640)
!1659 = !DILocation(line: 299, column: 5, scope: !793, inlinedAt: !1640)
!1660 = !DILocation(line: 299, column: 5, scope: !1634, inlinedAt: !1640)
!1661 = !DILocation(line: 360, column: 5, scope: !581)
!1662 = !DILocation(line: 471, column: 36, scope: !586)
!1663 = !DILocation(line: 472, column: 38, scope: !586)
!1664 = !DILocation(line: 473, column: 38, scope: !586)
!1665 = !DILocation(line: 327, column: 39, scope: !558, inlinedAt: !1666)
!1666 = distinct !DILocation(line: 477, column: 15, scope: !586)
!1667 = !DILocation(line: 232, column: 37, scope: !759, inlinedAt: !1668)
!1668 = distinct !DILocation(line: 329, column: 12, scope: !558, inlinedAt: !1666)
!1669 = !DILocation(line: 232, column: 51, scope: !759, inlinedAt: !1668)
!1670 = !DILocation(line: 237, column: 14, scope: !759, inlinedAt: !1668)
!1671 = !DILocation(line: 234, column: 15, scope: !759, inlinedAt: !1668)
!1672 = !DILocation(line: 238, column: 16, scope: !1496, inlinedAt: !1668)
!1673 = !DILocation(line: 238, column: 9, scope: !759, inlinedAt: !1668)
!1674 = !DILocation(line: 240, column: 9, scope: !759, inlinedAt: !1668)
!1675 = !DILocation(line: 235, column: 15, scope: !759, inlinedAt: !1668)
!1676 = !DILocation(line: 241, column: 5, scope: !1501, inlinedAt: !1668)
!1677 = !DILocation(line: 241, column: 5, scope: !1503, inlinedAt: !1668)
!1678 = !DILocation(line: 241, column: 5, scope: !768, inlinedAt: !1668)
!1679 = !DILocation(line: 241, column: 5, scope: !1506, inlinedAt: !1668)
!1680 = !DILocation(line: 329, column: 12, scope: !558, inlinedAt: !1666)
!1681 = !DILocation(line: 242, column: 5, scope: !759, inlinedAt: !1668)
!1682 = !DILocation(line: 475, column: 15, scope: !586)
!1683 = !DILocation(line: 478, column: 17, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !586, file: !1, line: 478, column: 9)
!1685 = !DILocation(line: 478, column: 9, scope: !586)
!1686 = !DILocation(line: 481, column: 12, scope: !586)
!1687 = !DILocation(line: 481, column: 5, scope: !586)
!1688 = !DILocation(line: 482, column: 1, scope: !586)
!1689 = !DILocation(line: 385, column: 35, scope: !794)
!1690 = !DILocation(line: 386, column: 35, scope: !794)
!1691 = !DILocation(line: 387, column: 37, scope: !794)
!1692 = !DILocation(line: 388, column: 37, scope: !794)
!1693 = !DILocation(line: 390, column: 15, scope: !794)
!1694 = !DILocation(line: 390, column: 29, scope: !794)
!1695 = !DILocation(line: 391, column: 15, scope: !794)
!1696 = !DILocation(line: 206, column: 32, scope: !826, inlinedAt: !1697)
!1697 = distinct !DILocation(line: 393, column: 12, scope: !794)
!1698 = !DILocation(line: 207, column: 34, scope: !826, inlinedAt: !1697)
!1699 = !DILocation(line: 211, column: 36, scope: !826, inlinedAt: !1697)
!1700 = !DILocation(line: 211, column: 24, scope: !826, inlinedAt: !1697)
!1701 = !DILocation(line: 211, column: 12, scope: !826, inlinedAt: !1697)
!1702 = !DILocation(line: 209, column: 15, scope: !826, inlinedAt: !1697)
!1703 = !DILocation(line: 212, column: 14, scope: !1704, inlinedAt: !1697)
!1704 = distinct !DILexicalBlock(scope: !826, file: !1, line: 212, column: 9)
!1705 = !DILocation(line: 212, column: 9, scope: !826, inlinedAt: !1697)
!1706 = !DILocation(line: 214, column: 5, scope: !826, inlinedAt: !1697)
!1707 = !DILocation(line: 215, column: 5, scope: !826, inlinedAt: !1697)
!1708 = !DILocation(line: 216, column: 9, scope: !826, inlinedAt: !1697)
!1709 = !DILocation(line: 219, column: 13, scope: !832, inlinedAt: !1697)
!1710 = !DILocation(line: 217, column: 19, scope: !832, inlinedAt: !1697)
!1711 = !DILocation(line: 220, column: 15, scope: !837, inlinedAt: !1697)
!1712 = !DILocation(line: 220, column: 13, scope: !832, inlinedAt: !1697)
!1713 = !DILocation(line: 221, column: 13, scope: !1714, inlinedAt: !1697)
!1714 = !DILexicalBlockFile(scope: !835, file: !1, discriminator: 1)
!1715 = !DILocation(line: 221, column: 13, scope: !1716, inlinedAt: !1697)
!1716 = distinct !DILexicalBlock(scope: !835, file: !1, line: 221, column: 13)
!1717 = !DILocation(line: 221, column: 13, scope: !835, inlinedAt: !1697)
!1718 = !DILocation(line: 221, column: 13, scope: !1719, inlinedAt: !1697)
!1719 = !DILexicalBlockFile(scope: !1716, file: !1, discriminator: 3)
!1720 = !DILocation(line: 393, column: 12, scope: !794)
!1721 = !DILocation(line: 224, column: 9, scope: !832, inlinedAt: !1697)
!1722 = !DILocation(line: 397, column: 14, scope: !794)
!1723 = !DILocation(line: 398, column: 16, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !794, file: !1, line: 398, column: 9)
!1725 = !DILocation(line: 398, column: 9, scope: !794)
!1726 = !DILocation(line: 403, column: 10, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !794, file: !1, line: 403, column: 9)
!1728 = !DILocation(line: 403, column: 32, scope: !1727)
!1729 = !DILocation(line: 404, column: 9, scope: !1727)
!1730 = !DILocation(line: 404, column: 34, scope: !1727)
!1731 = !DILocation(line: 403, column: 9, scope: !794)
!1732 = !DILocation(line: 409, column: 9, scope: !794)
!1733 = !DILocation(line: 410, column: 5, scope: !794)
!1734 = !DILocation(line: 413, column: 5, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !806, file: !1, line: 413, column: 5)
!1736 = !DILocation(line: 413, column: 5, scope: !806)
!1737 = !DILocation(line: 413, column: 5, scope: !1738)
!1738 = !DILexicalBlockFile(scope: !1735, file: !1, discriminator: 3)
!1739 = !DILocation(line: 414, column: 5, scope: !1740)
!1740 = !DILexicalBlockFile(scope: !808, file: !1, discriminator: 1)
!1741 = !DILocation(line: 414, column: 5, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !808, file: !1, line: 414, column: 5)
!1743 = !DILocation(line: 414, column: 5, scope: !808)
!1744 = !DILocation(line: 414, column: 5, scope: !1745)
!1745 = !DILexicalBlockFile(scope: !1742, file: !1, discriminator: 3)
!1746 = !DILocation(line: 415, column: 5, scope: !1747)
!1747 = !DILexicalBlockFile(scope: !810, file: !1, discriminator: 1)
!1748 = !DILocation(line: 415, column: 5, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !810, file: !1, line: 415, column: 5)
!1750 = !DILocation(line: 415, column: 5, scope: !810)
!1751 = !DILocation(line: 415, column: 5, scope: !1752)
!1752 = !DILexicalBlockFile(scope: !1749, file: !1, discriminator: 3)
!1753 = !DILocation(line: 368, column: 30, scope: !838, inlinedAt: !1754)
!1754 = distinct !DILocation(line: 399, column: 9, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1724, file: !1, line: 398, column: 25)
!1756 = !DILocation(line: 369, column: 30, scope: !838, inlinedAt: !1754)
!1757 = !DILocation(line: 375, column: 5, scope: !838, inlinedAt: !1754)
!1758 = !DILocation(line: 419, column: 5, scope: !1759)
!1759 = !DILexicalBlockFile(scope: !812, file: !1, discriminator: 1)
!1760 = !DILocation(line: 405, column: 25, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1727, file: !1, line: 404, column: 40)
!1762 = !DILocation(line: 405, column: 9, scope: !1761)
!1763 = !DILocation(line: 419, column: 5, scope: !1764)
!1764 = !DILexicalBlockFile(scope: !814, file: !1, discriminator: 4)
!1765 = !DILocation(line: 419, column: 5, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !814, file: !1, line: 419, column: 5)
!1767 = !DILocation(line: 419, column: 5, scope: !814)
!1768 = !DILocation(line: 419, column: 5, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1766, file: !1, discriminator: 6)
!1770 = !DILocation(line: 420, column: 5, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !819, file: !1, line: 420, column: 5)
!1772 = !DILocation(line: 420, column: 5, scope: !819)
!1773 = !DILocation(line: 420, column: 5, scope: !1774)
!1774 = !DILexicalBlockFile(scope: !1771, file: !1, discriminator: 6)
!1775 = !DILocation(line: 421, column: 5, scope: !1776)
!1776 = !DILexicalBlockFile(scope: !822, file: !1, discriminator: 1)
!1777 = !DILocation(line: 421, column: 5, scope: !825)
!1778 = !DILocation(line: 421, column: 5, scope: !822)
!1779 = !DILocation(line: 421, column: 5, scope: !1780)
!1780 = !DILexicalBlockFile(scope: !824, file: !1, discriminator: 4)
!1781 = !DILocation(line: 421, column: 5, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !824, file: !1, line: 421, column: 5)
!1783 = !DILocation(line: 421, column: 5, scope: !824)
!1784 = !DILocation(line: 421, column: 5, scope: !1785)
!1785 = !DILexicalBlockFile(scope: !1782, file: !1, discriminator: 6)
!1786 = !DILocation(line: 423, column: 1, scope: !794)
!1787 = !DILocation(line: 484, column: 36, scope: !594)
!1788 = !DILocation(line: 485, column: 38, scope: !594)
!1789 = !DILocation(line: 486, column: 38, scope: !594)
!1790 = !DILocation(line: 332, column: 39, scope: !561, inlinedAt: !1791)
!1791 = distinct !DILocation(line: 490, column: 15, scope: !594)
!1792 = !DILocation(line: 232, column: 37, scope: !759, inlinedAt: !1793)
!1793 = distinct !DILocation(line: 334, column: 12, scope: !561, inlinedAt: !1791)
!1794 = !DILocation(line: 232, column: 51, scope: !759, inlinedAt: !1793)
!1795 = !DILocation(line: 237, column: 14, scope: !759, inlinedAt: !1793)
!1796 = !DILocation(line: 234, column: 15, scope: !759, inlinedAt: !1793)
!1797 = !DILocation(line: 238, column: 16, scope: !1496, inlinedAt: !1793)
!1798 = !DILocation(line: 238, column: 9, scope: !759, inlinedAt: !1793)
!1799 = !DILocation(line: 240, column: 9, scope: !759, inlinedAt: !1793)
!1800 = !DILocation(line: 235, column: 15, scope: !759, inlinedAt: !1793)
!1801 = !DILocation(line: 241, column: 5, scope: !1501, inlinedAt: !1793)
!1802 = !DILocation(line: 241, column: 5, scope: !1503, inlinedAt: !1793)
!1803 = !DILocation(line: 241, column: 5, scope: !768, inlinedAt: !1793)
!1804 = !DILocation(line: 241, column: 5, scope: !1506, inlinedAt: !1793)
!1805 = !DILocation(line: 334, column: 12, scope: !561, inlinedAt: !1791)
!1806 = !DILocation(line: 242, column: 5, scope: !759, inlinedAt: !1793)
!1807 = !DILocation(line: 488, column: 15, scope: !594)
!1808 = !DILocation(line: 491, column: 17, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !594, file: !1, line: 491, column: 9)
!1810 = !DILocation(line: 491, column: 9, scope: !594)
!1811 = !DILocation(line: 494, column: 12, scope: !594)
!1812 = !DILocation(line: 494, column: 5, scope: !594)
!1813 = !DILocation(line: 495, column: 1, scope: !594)
!1814 = !DILocation(line: 431, column: 35, scope: !844)
!1815 = !DILocation(line: 432, column: 35, scope: !844)
!1816 = !DILocation(line: 433, column: 37, scope: !844)
!1817 = !DILocation(line: 434, column: 37, scope: !844)
!1818 = !DILocation(line: 436, column: 15, scope: !844)
!1819 = !DILocation(line: 436, column: 29, scope: !844)
!1820 = !DILocation(line: 206, column: 32, scope: !826, inlinedAt: !1821)
!1821 = distinct !DILocation(line: 439, column: 12, scope: !844)
!1822 = !DILocation(line: 207, column: 34, scope: !826, inlinedAt: !1821)
!1823 = !DILocation(line: 211, column: 36, scope: !826, inlinedAt: !1821)
!1824 = !DILocation(line: 211, column: 24, scope: !826, inlinedAt: !1821)
!1825 = !DILocation(line: 211, column: 12, scope: !826, inlinedAt: !1821)
!1826 = !DILocation(line: 209, column: 15, scope: !826, inlinedAt: !1821)
!1827 = !DILocation(line: 212, column: 14, scope: !1704, inlinedAt: !1821)
!1828 = !DILocation(line: 212, column: 9, scope: !826, inlinedAt: !1821)
!1829 = !DILocation(line: 214, column: 5, scope: !826, inlinedAt: !1821)
!1830 = !DILocation(line: 215, column: 5, scope: !826, inlinedAt: !1821)
!1831 = !DILocation(line: 216, column: 9, scope: !826, inlinedAt: !1821)
!1832 = !DILocation(line: 219, column: 13, scope: !832, inlinedAt: !1821)
!1833 = !DILocation(line: 217, column: 19, scope: !832, inlinedAt: !1821)
!1834 = !DILocation(line: 220, column: 15, scope: !837, inlinedAt: !1821)
!1835 = !DILocation(line: 220, column: 13, scope: !832, inlinedAt: !1821)
!1836 = !DILocation(line: 221, column: 13, scope: !1714, inlinedAt: !1821)
!1837 = !DILocation(line: 221, column: 13, scope: !1716, inlinedAt: !1821)
!1838 = !DILocation(line: 221, column: 13, scope: !835, inlinedAt: !1821)
!1839 = !DILocation(line: 221, column: 13, scope: !1719, inlinedAt: !1821)
!1840 = !DILocation(line: 439, column: 12, scope: !844)
!1841 = !DILocation(line: 224, column: 9, scope: !832, inlinedAt: !1821)
!1842 = !DILocation(line: 443, column: 14, scope: !844)
!1843 = !DILocation(line: 444, column: 16, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !844, file: !1, line: 444, column: 9)
!1845 = !DILocation(line: 444, column: 9, scope: !844)
!1846 = !DILocation(line: 368, column: 30, scope: !838, inlinedAt: !1847)
!1847 = distinct !DILocation(line: 445, column: 9, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1844, file: !1, line: 444, column: 25)
!1849 = !DILocation(line: 369, column: 30, scope: !838, inlinedAt: !1847)
!1850 = !DILocation(line: 375, column: 5, scope: !838, inlinedAt: !1847)
!1851 = !DILocation(line: 448, column: 10, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !844, file: !1, line: 448, column: 9)
!1853 = !DILocation(line: 448, column: 32, scope: !1852)
!1854 = !DILocation(line: 449, column: 9, scope: !1852)
!1855 = !DILocation(line: 449, column: 34, scope: !1852)
!1856 = !DILocation(line: 448, column: 9, scope: !844)
!1857 = !DILocation(line: 454, column: 9, scope: !844)
!1858 = !DILocation(line: 437, column: 15, scope: !844)
!1859 = !DILocation(line: 455, column: 5, scope: !844)
!1860 = !DILocation(line: 458, column: 5, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !854, file: !1, line: 458, column: 5)
!1862 = !DILocation(line: 458, column: 5, scope: !854)
!1863 = !DILocation(line: 458, column: 5, scope: !1864)
!1864 = !DILexicalBlockFile(scope: !1861, file: !1, discriminator: 3)
!1865 = !DILocation(line: 459, column: 5, scope: !1866)
!1866 = !DILexicalBlockFile(scope: !856, file: !1, discriminator: 1)
!1867 = !DILocation(line: 459, column: 5, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !856, file: !1, line: 459, column: 5)
!1869 = !DILocation(line: 459, column: 5, scope: !856)
!1870 = !DILocation(line: 459, column: 5, scope: !1871)
!1871 = !DILexicalBlockFile(scope: !1868, file: !1, discriminator: 3)
!1872 = !DILocation(line: 460, column: 5, scope: !1873)
!1873 = !DILexicalBlockFile(scope: !858, file: !1, discriminator: 1)
!1874 = !DILocation(line: 460, column: 5, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !858, file: !1, line: 460, column: 5)
!1876 = !DILocation(line: 460, column: 5, scope: !858)
!1877 = !DILocation(line: 460, column: 5, scope: !1878)
!1878 = !DILexicalBlockFile(scope: !1875, file: !1, discriminator: 3)
!1879 = !DILocation(line: 450, column: 25, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1852, file: !1, line: 449, column: 40)
!1881 = !DILocation(line: 450, column: 9, scope: !1880)
!1882 = !DILocation(line: 464, column: 5, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !862, file: !1, line: 464, column: 5)
!1884 = !DILocation(line: 464, column: 5, scope: !862)
!1885 = !DILocation(line: 464, column: 5, scope: !1886)
!1886 = !DILexicalBlockFile(scope: !1883, file: !1, discriminator: 6)
!1887 = !DILocation(line: 465, column: 5, scope: !1888)
!1888 = !DILexicalBlockFile(scope: !865, file: !1, discriminator: 1)
!1889 = !DILocation(line: 465, column: 5, scope: !868)
!1890 = !DILocation(line: 465, column: 5, scope: !865)
!1891 = !DILocation(line: 465, column: 5, scope: !1892)
!1892 = !DILexicalBlockFile(scope: !867, file: !1, discriminator: 4)
!1893 = !DILocation(line: 465, column: 5, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !867, file: !1, line: 465, column: 5)
!1895 = !DILocation(line: 465, column: 5, scope: !867)
!1896 = !DILocation(line: 465, column: 5, scope: !1897)
!1897 = !DILexicalBlockFile(scope: !1894, file: !1, discriminator: 6)
!1898 = !DILocation(line: 466, column: 5, scope: !1899)
!1899 = !DILexicalBlockFile(scope: !870, file: !1, discriminator: 1)
!1900 = !DILocation(line: 466, column: 5, scope: !873)
!1901 = !DILocation(line: 466, column: 5, scope: !870)
!1902 = !DILocation(line: 466, column: 5, scope: !1903)
!1903 = !DILexicalBlockFile(scope: !872, file: !1, discriminator: 4)
!1904 = !DILocation(line: 466, column: 5, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !872, file: !1, line: 466, column: 5)
!1906 = !DILocation(line: 466, column: 5, scope: !872)
!1907 = !DILocation(line: 466, column: 5, scope: !1908)
!1908 = !DILexicalBlockFile(scope: !1905, file: !1, discriminator: 6)
!1909 = !DILocation(line: 468, column: 1, scope: !844)
!1910 = !DILocation(line: 498, column: 52, scope: !600)
!1911 = !DILocation(line: 499, column: 52, scope: !600)
!1912 = !DILocation(line: 506, column: 13, scope: !600)
!1913 = !DILocation(line: 502, column: 15, scope: !600)
!1914 = !DILocation(line: 507, column: 15, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !600, file: !1, line: 507, column: 9)
!1916 = !DILocation(line: 507, column: 9, scope: !600)
!1917 = !DILocation(line: 514, column: 10, scope: !614)
!1918 = !DILocation(line: 514, column: 9, scope: !600)
!1919 = !DILocation(line: 515, column: 16, scope: !613)
!1920 = !DILocation(line: 503, column: 15, scope: !600)
!1921 = !DILocation(line: 516, column: 18, scope: !612)
!1922 = !DILocation(line: 516, column: 13, scope: !613)
!1923 = !DILocation(line: 517, column: 40, scope: !610)
!1924 = !DILocation(line: 517, column: 17, scope: !610)
!1925 = !DILocation(line: 517, column: 17, scope: !611)
!1926 = !DILocation(line: 518, column: 17, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !610, file: !1, line: 517, column: 63)
!1928 = !DILocation(line: 523, column: 9, scope: !611)
!1929 = !DILocation(line: 520, column: 17, scope: !1930)
!1930 = !DILexicalBlockFile(scope: !608, file: !1, discriminator: 1)
!1931 = !DILocation(line: 520, column: 17, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !608, file: !1, line: 520, column: 17)
!1933 = !DILocation(line: 520, column: 17, scope: !608)
!1934 = !DILocation(line: 520, column: 17, scope: !1935)
!1935 = !DILexicalBlockFile(scope: !1932, file: !1, discriminator: 3)
!1936 = !DILocation(line: 524, column: 29, scope: !617)
!1937 = !DILocation(line: 504, column: 9, scope: !600)
!1938 = !DILocation(line: 525, column: 13, scope: !1939)
!1939 = !DILexicalBlockFile(scope: !616, file: !1, discriminator: 1)
!1940 = !DILocation(line: 525, column: 13, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !616, file: !1, line: 525, column: 13)
!1942 = !DILocation(line: 525, column: 13, scope: !616)
!1943 = !DILocation(line: 525, column: 13, scope: !1944)
!1944 = !DILexicalBlockFile(scope: !1941, file: !1, discriminator: 3)
!1945 = !DILocation(line: 526, column: 18, scope: !621)
!1946 = !DILocation(line: 526, column: 17, scope: !617)
!1947 = !DILocation(line: 527, column: 17, scope: !1948)
!1948 = !DILexicalBlockFile(scope: !619, file: !1, discriminator: 1)
!1949 = !DILocation(line: 527, column: 17, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !619, file: !1, line: 527, column: 17)
!1951 = !DILocation(line: 527, column: 17, scope: !619)
!1952 = !DILocation(line: 527, column: 17, scope: !1953)
!1953 = !DILexicalBlockFile(scope: !1950, file: !1, discriminator: 3)
!1954 = !DILocation(line: 528, column: 30, scope: !620)
!1955 = !DILocation(line: 528, column: 17, scope: !620)
!1956 = !DILocation(line: 532, column: 17, scope: !620)
!1957 = !DILocation(line: 539, column: 1, scope: !600)
!1958 = !DILocation(line: 570, column: 41, scope: !622)
!1959 = !DILocation(line: 571, column: 43, scope: !622)
!1960 = !DILocation(line: 572, column: 43, scope: !622)
!1961 = !DILocation(line: 560, column: 52, scope: !874, inlinedAt: !1962)
!1962 = distinct !DILocation(line: 576, column: 15, scope: !622)
!1963 = !DILocation(line: 543, column: 45, scope: !877, inlinedAt: !1964)
!1964 = distinct !DILocation(line: 562, column: 12, scope: !874, inlinedAt: !1962)
!1965 = !DILocation(line: 544, column: 45, scope: !877, inlinedAt: !1964)
!1966 = !DILocation(line: 545, column: 37, scope: !877, inlinedAt: !1964)
!1967 = !DILocation(line: 550, column: 13, scope: !877, inlinedAt: !1964)
!1968 = !DILocation(line: 547, column: 15, scope: !877, inlinedAt: !1964)
!1969 = !DILocation(line: 551, column: 15, scope: !1970, inlinedAt: !1964)
!1970 = distinct !DILexicalBlock(scope: !877, file: !1, line: 551, column: 9)
!1971 = !DILocation(line: 551, column: 9, scope: !877, inlinedAt: !1964)
!1972 = !DILocation(line: 554, column: 9, scope: !877, inlinedAt: !1964)
!1973 = !DILocation(line: 548, column: 15, scope: !877, inlinedAt: !1964)
!1974 = !DILocation(line: 555, column: 5, scope: !877, inlinedAt: !1964)
!1975 = !DILocation(line: 556, column: 5, scope: !1976, inlinedAt: !1964)
!1976 = !DILexicalBlockFile(scope: !887, file: !1, discriminator: 1)
!1977 = !DILocation(line: 556, column: 5, scope: !1978, inlinedAt: !1964)
!1978 = distinct !DILexicalBlock(scope: !887, file: !1, line: 556, column: 5)
!1979 = !DILocation(line: 556, column: 5, scope: !887, inlinedAt: !1964)
!1980 = !DILocation(line: 556, column: 5, scope: !1981, inlinedAt: !1964)
!1981 = !DILexicalBlockFile(scope: !1978, file: !1, discriminator: 3)
!1982 = !DILocation(line: 562, column: 12, scope: !874, inlinedAt: !1962)
!1983 = !DILocation(line: 574, column: 15, scope: !622)
!1984 = !DILocation(line: 577, column: 17, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !622, file: !1, line: 577, column: 9)
!1986 = !DILocation(line: 577, column: 9, scope: !622)
!1987 = !DILocation(line: 580, column: 12, scope: !622)
!1988 = !DILocation(line: 580, column: 5, scope: !622)
!1989 = !DILocation(line: 581, column: 1, scope: !622)
!1990 = !DILocation(line: 583, column: 41, scope: !628)
!1991 = !DILocation(line: 584, column: 43, scope: !628)
!1992 = !DILocation(line: 585, column: 43, scope: !628)
!1993 = !DILocation(line: 565, column: 52, scope: !888, inlinedAt: !1994)
!1994 = distinct !DILocation(line: 589, column: 15, scope: !628)
!1995 = !DILocation(line: 543, column: 45, scope: !877, inlinedAt: !1996)
!1996 = distinct !DILocation(line: 567, column: 12, scope: !888, inlinedAt: !1994)
!1997 = !DILocation(line: 544, column: 45, scope: !877, inlinedAt: !1996)
!1998 = !DILocation(line: 545, column: 37, scope: !877, inlinedAt: !1996)
!1999 = !DILocation(line: 550, column: 13, scope: !877, inlinedAt: !1996)
!2000 = !DILocation(line: 547, column: 15, scope: !877, inlinedAt: !1996)
!2001 = !DILocation(line: 551, column: 15, scope: !1970, inlinedAt: !1996)
!2002 = !DILocation(line: 551, column: 9, scope: !877, inlinedAt: !1996)
!2003 = !DILocation(line: 554, column: 9, scope: !877, inlinedAt: !1996)
!2004 = !DILocation(line: 548, column: 15, scope: !877, inlinedAt: !1996)
!2005 = !DILocation(line: 555, column: 5, scope: !877, inlinedAt: !1996)
!2006 = !DILocation(line: 556, column: 5, scope: !1976, inlinedAt: !1996)
!2007 = !DILocation(line: 556, column: 5, scope: !1978, inlinedAt: !1996)
!2008 = !DILocation(line: 556, column: 5, scope: !887, inlinedAt: !1996)
!2009 = !DILocation(line: 556, column: 5, scope: !1981, inlinedAt: !1996)
!2010 = !DILocation(line: 567, column: 12, scope: !888, inlinedAt: !1994)
!2011 = !DILocation(line: 587, column: 15, scope: !628)
!2012 = !DILocation(line: 590, column: 17, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !628, file: !1, line: 590, column: 9)
!2014 = !DILocation(line: 590, column: 9, scope: !628)
!2015 = !DILocation(line: 593, column: 12, scope: !628)
!2016 = !DILocation(line: 593, column: 5, scope: !628)
!2017 = !DILocation(line: 594, column: 1, scope: !628)
!2018 = !DILocation(line: 602, column: 39, scope: !634)
!2019 = !DILocation(line: 602, column: 55, scope: !634)
!2020 = !DILocation(line: 604, column: 34, scope: !642)
!2021 = !DILocation(line: 604, column: 34, scope: !1182)
!2022 = !DILocation(line: 604, column: 55, scope: !634)
!2023 = !DILocation(line: 604, column: 25, scope: !634)
!2024 = !DILocation(line: 605, column: 17, scope: !1187)
!2025 = !DILocation(line: 605, column: 35, scope: !1187)
!2026 = !DILocation(line: 605, column: 43, scope: !1187)
!2027 = !DILocation(line: 605, column: 46, scope: !1191)
!2028 = !DILocation(line: 605, column: 9, scope: !634)
!2029 = !DILocation(line: 607, column: 10, scope: !1194)
!2030 = !DILocation(line: 607, column: 9, scope: !634)
!2031 = !DILocation(line: 608, column: 25, scope: !1197)
!2032 = !DILocation(line: 608, column: 9, scope: !1197)
!2033 = !DILocation(line: 609, column: 9, scope: !1197)
!2034 = !DILocation(line: 611, column: 41, scope: !634)
!2035 = !DILocation(line: 611, column: 12, scope: !634)
!2036 = !DILocation(line: 611, column: 5, scope: !634)
!2037 = !DILocation(line: 613, column: 1, scope: !634)
!2038 = !DILocation(line: 618, column: 43, scope: !646)
!2039 = !DILocation(line: 620, column: 15, scope: !646)
!2040 = !DILocation(line: 622, column: 34, scope: !652)
!2041 = !DILocation(line: 622, column: 34, scope: !2042)
!2042 = !DILexicalBlockFile(scope: !2043, file: !1, discriminator: 6)
!2043 = !DILexicalBlockFile(scope: !652, file: !1, discriminator: 5)
!2044 = !DILocation(line: 622, column: 55, scope: !646)
!2045 = !DILocation(line: 622, column: 25, scope: !646)
!2046 = !DILocation(line: 623, column: 17, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !646, file: !1, line: 623, column: 9)
!2048 = !DILocation(line: 623, column: 35, scope: !2047)
!2049 = !DILocation(line: 623, column: 43, scope: !2047)
!2050 = !DILocation(line: 623, column: 46, scope: !2051)
!2051 = !DILexicalBlockFile(scope: !2047, file: !1, discriminator: 1)
!2052 = !DILocation(line: 623, column: 9, scope: !646)
!2053 = !DILocation(line: 626, column: 13, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !646, file: !1, line: 626, column: 9)
!2055 = !DILocation(line: 626, column: 9, scope: !646)
!2056 = !DILocation(line: 628, column: 44, scope: !646)
!2057 = !DILocation(line: 628, column: 15, scope: !646)
!2058 = !DILocation(line: 629, column: 10, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !646, file: !1, line: 629, column: 9)
!2060 = !DILocation(line: 629, column: 9, scope: !646)
!2061 = !DILocation(line: 630, column: 22, scope: !2059)
!2062 = !DILocation(line: 630, column: 9, scope: !2059)
!2063 = !DILocation(line: 632, column: 9, scope: !2059)
!2064 = !DILocation(line: 634, column: 1, scope: !646)
!2065 = !DILocation(line: 652, column: 42, scope: !656)
!2066 = !DILocation(line: 654, column: 9, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !656, file: !1, line: 654, column: 9)
!2068 = !DILocation(line: 654, column: 9, scope: !656)
!2069 = !DILocation(line: 655, column: 25, scope: !2067)
!2070 = !DILocation(line: 655, column: 9, scope: !2067)
!2071 = !DILocation(line: 657, column: 25, scope: !2067)
!2072 = !DILocation(line: 657, column: 9, scope: !2067)
!2073 = !DILocation(line: 658, column: 5, scope: !656)
!2074 = !DILocation(line: 662, column: 42, scope: !659)
!2075 = !DILocation(line: 664, column: 5, scope: !659)
!2076 = !DILocation(line: 665, column: 34, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !659, file: !1, line: 665, column: 9)
!2078 = !DILocation(line: 665, column: 9, scope: !2077)
!2079 = !DILocation(line: 665, column: 9, scope: !659)
!2080 = !DILocation(line: 664, column: 16, scope: !659)
!2081 = !DILocation(line: 666, column: 13, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !1, line: 666, column: 13)
!2083 = distinct !DILexicalBlock(scope: !2077, file: !1, line: 665, column: 61)
!2084 = !DILocation(line: 666, column: 13, scope: !2083)
!2085 = !DILocation(line: 669, column: 39, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2077, file: !1, line: 669, column: 14)
!2087 = !DILocation(line: 669, column: 14, scope: !2086)
!2088 = !DILocation(line: 669, column: 14, scope: !2077)
!2089 = !DILocation(line: 670, column: 13, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !1, line: 670, column: 13)
!2091 = distinct !DILexicalBlock(scope: !2086, file: !1, line: 669, column: 66)
!2092 = !DILocation(line: 670, column: 13, scope: !2091)
!2093 = !DILocation(line: 673, column: 39, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2086, file: !1, line: 673, column: 14)
!2095 = !DILocation(line: 673, column: 14, scope: !2094)
!2096 = !DILocation(line: 673, column: 14, scope: !2086)
!2097 = !DILocation(line: 674, column: 13, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !1, line: 674, column: 13)
!2099 = distinct !DILexicalBlock(scope: !2094, file: !1, line: 673, column: 69)
!2100 = !DILocation(line: 674, column: 13, scope: !2099)
!2101 = !DILocation(line: 636, column: 44, scope: !891, inlinedAt: !2102)
!2102 = distinct !DILocation(line: 678, column: 9, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2094, file: !1, line: 677, column: 10)
!2104 = !DILocation(line: 640, column: 22, scope: !891, inlinedAt: !2102)
!2105 = !DILocation(line: 640, column: 15, scope: !891, inlinedAt: !2102)
!2106 = !DILocation(line: 641, column: 14, scope: !897, inlinedAt: !2102)
!2107 = !DILocation(line: 641, column: 9, scope: !891, inlinedAt: !2102)
!2108 = !DILocation(line: 642, column: 26, scope: !896, inlinedAt: !2102)
!2109 = !DILocation(line: 642, column: 19, scope: !896, inlinedAt: !2102)
!2110 = !DILocation(line: 643, column: 9, scope: !2111, inlinedAt: !2102)
!2111 = !DILexicalBlockFile(scope: !899, file: !1, discriminator: 1)
!2112 = !DILocation(line: 643, column: 9, scope: !2113, inlinedAt: !2102)
!2113 = distinct !DILexicalBlock(scope: !899, file: !1, line: 643, column: 9)
!2114 = !DILocation(line: 643, column: 9, scope: !899, inlinedAt: !2102)
!2115 = !DILocation(line: 643, column: 9, scope: !2116, inlinedAt: !2102)
!2116 = !DILexicalBlockFile(scope: !2113, file: !1, discriminator: 3)
!2117 = !DILocation(line: 678, column: 9, scope: !2103)
!2118 = !DILocation(line: 644, column: 18, scope: !903, inlinedAt: !2102)
!2119 = !DILocation(line: 644, column: 13, scope: !896, inlinedAt: !2102)
!2120 = !DILocation(line: 645, column: 26, scope: !902, inlinedAt: !2102)
!2121 = !DILocation(line: 645, column: 13, scope: !902, inlinedAt: !2102)
!2122 = !DILocation(line: 647, column: 13, scope: !2123, inlinedAt: !2102)
!2123 = !DILexicalBlockFile(scope: !901, file: !1, discriminator: 1)
!2124 = !DILocation(line: 647, column: 13, scope: !2125, inlinedAt: !2102)
!2125 = distinct !DILexicalBlock(scope: !901, file: !1, line: 647, column: 13)
!2126 = !DILocation(line: 647, column: 13, scope: !901, inlinedAt: !2102)
!2127 = !DILocation(line: 647, column: 13, scope: !2128, inlinedAt: !2102)
!2128 = !DILexicalBlockFile(scope: !2125, file: !1, discriminator: 3)
!2129 = !DILocation(line: 681, column: 34, scope: !659)
!2130 = !DILocation(line: 681, column: 55, scope: !659)
!2131 = !{!1114, !1114, i64 0}
!2132 = !DILocation(line: 681, column: 12, scope: !659)
!2133 = !DILocation(line: 681, column: 5, scope: !659)
!2134 = !DILocation(line: 682, column: 1, scope: !659)
!2135 = !DILocation(line: 685, column: 43, scope: !663)
!2136 = !DILocation(line: 687, column: 5, scope: !663)
!2137 = !DILocation(line: 689, column: 34, scope: !672)
!2138 = !DILocation(line: 689, column: 9, scope: !672)
!2139 = !DILocation(line: 689, column: 9, scope: !663)
!2140 = !DILocation(line: 687, column: 16, scope: !663)
!2141 = !DILocation(line: 693, column: 13, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !671, file: !1, line: 693, column: 13)
!2143 = !DILocation(line: 693, column: 13, scope: !671)
!2144 = !DILocation(line: 687, column: 23, scope: !663)
!2145 = !DILocation(line: 695, column: 13, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !671, file: !1, line: 695, column: 13)
!2147 = !DILocation(line: 695, column: 13, scope: !671)
!2148 = !DILocation(line: 697, column: 15, scope: !671)
!2149 = !DILocation(line: 697, column: 21, scope: !671)
!2150 = !DILocation(line: 697, column: 19, scope: !671)
!2151 = !DILocation(line: 687, column: 31, scope: !663)
!2152 = !DILocation(line: 698, column: 15, scope: !671)
!2153 = !DILocation(line: 690, column: 19, scope: !671)
!2154 = !DILocation(line: 699, column: 17, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !671, file: !1, line: 699, column: 13)
!2156 = !DILocation(line: 699, column: 13, scope: !671)
!2157 = !DILocation(line: 701, column: 16, scope: !671)
!2158 = !DILocation(line: 691, column: 13, scope: !671)
!2159 = !DILocation(line: 702, column: 16, scope: !671)
!2160 = !DILocation(line: 702, column: 16, scope: !2161)
!2161 = !DILexicalBlockFile(scope: !671, file: !1, discriminator: 1)
!2162 = !DILocation(line: 702, column: 16, scope: !2163)
!2163 = !DILexicalBlockFile(scope: !671, file: !1, discriminator: 3)
!2164 = !DILocation(line: 702, column: 16, scope: !2165)
!2165 = !DILexicalBlockFile(scope: !671, file: !1, discriminator: 4)
!2166 = !DILocation(line: 702, column: 16, scope: !2167)
!2167 = !DILexicalBlockFile(scope: !671, file: !1, discriminator: 2)
!2168 = !DILocation(line: 692, column: 15, scope: !671)
!2169 = !DILocation(line: 687, column: 28, scope: !663)
!2170 = !DILocation(line: 703, column: 23, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !1, line: 703, column: 9)
!2172 = distinct !DILexicalBlock(scope: !671, file: !1, line: 703, column: 9)
!2173 = !DILocation(line: 703, column: 9, scope: !2172)
!2174 = !DILocation(line: 704, column: 13, scope: !2175)
!2175 = !DILexicalBlockFile(scope: !2176, file: !1, discriminator: 2)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !1, line: 704, column: 13)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !1, line: 704, column: 13)
!2178 = distinct !DILexicalBlock(scope: !2171, file: !1, line: 704, column: 13)
!2179 = !DILocation(line: 704, column: 13, scope: !2180)
!2180 = !DILexicalBlockFile(scope: !2181, file: !1, discriminator: 4)
!2181 = distinct !DILexicalBlock(scope: !2177, file: !1, line: 704, column: 13)
!2182 = !DILocation(line: 703, column: 30, scope: !2171)
!2183 = !{!2184, !2184, i64 0}
!2184 = !{!"short", !1108, i64 0}
!2185 = distinct !{!2185, !2186}
!2186 = !{!"llvm.loop.unroll.disable"}
!2187 = distinct !{!2187, !2188, !2189}
!2188 = !{!"llvm.loop.vectorize.width", i32 1}
!2189 = !{!"llvm.loop.interleave.count", i32 1}
!2190 = !DILocation(line: 704, column: 13, scope: !2191)
!2191 = !DILexicalBlockFile(scope: !2192, file: !1, discriminator: 3)
!2192 = distinct !DILexicalBlock(scope: !2177, file: !1, line: 704, column: 13)
!2193 = distinct !{!2193, !2186}
!2194 = distinct !{!2194, !2188, !2189}
!2195 = !{!1113, !1113, i64 0}
!2196 = distinct !{!2196, !2186}
!2197 = distinct !{!2197, !2188, !2189}
!2198 = distinct !{!2198, !2199, !2188, !2189}
!2199 = !{!"llvm.loop.unroll.runtime.disable"}
!2200 = distinct !{!2200, !2199, !2188, !2189}
!2201 = distinct !{!2201, !2199, !2188, !2189}
!2202 = !DILocation(line: 706, column: 43, scope: !671)
!2203 = !DILocation(line: 706, column: 16, scope: !671)
!2204 = !DILocation(line: 706, column: 9, scope: !671)
!2205 = !DILocation(line: 708, column: 39, scope: !678)
!2206 = !DILocation(line: 708, column: 14, scope: !678)
!2207 = !DILocation(line: 708, column: 14, scope: !672)
!2208 = !DILocation(line: 709, column: 13, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !1, line: 709, column: 13)
!2210 = distinct !DILexicalBlock(scope: !678, file: !1, line: 708, column: 66)
!2211 = !DILocation(line: 709, column: 13, scope: !2210)
!2212 = !DILocation(line: 713, column: 30, scope: !2210)
!2213 = !DILocation(line: 711, column: 16, scope: !2210)
!2214 = !DILocation(line: 711, column: 9, scope: !2210)
!2215 = !DILocation(line: 715, column: 39, scope: !677)
!2216 = !DILocation(line: 715, column: 14, scope: !677)
!2217 = !DILocation(line: 715, column: 14, scope: !678)
!2218 = !DILocation(line: 719, column: 13, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !676, file: !1, line: 719, column: 13)
!2220 = !DILocation(line: 719, column: 13, scope: !676)
!2221 = !DILocation(line: 721, column: 13, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !676, file: !1, line: 721, column: 13)
!2223 = !DILocation(line: 721, column: 13, scope: !676)
!2224 = !DILocation(line: 723, column: 15, scope: !676)
!2225 = !DILocation(line: 723, column: 21, scope: !676)
!2226 = !DILocation(line: 723, column: 19, scope: !676)
!2227 = !DILocation(line: 724, column: 15, scope: !676)
!2228 = !DILocation(line: 716, column: 19, scope: !676)
!2229 = !DILocation(line: 725, column: 17, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !676, file: !1, line: 725, column: 13)
!2231 = !DILocation(line: 725, column: 13, scope: !676)
!2232 = !DILocation(line: 727, column: 16, scope: !676)
!2233 = !DILocation(line: 717, column: 13, scope: !676)
!2234 = !DILocation(line: 728, column: 16, scope: !676)
!2235 = !DILocation(line: 728, column: 16, scope: !2236)
!2236 = !DILexicalBlockFile(scope: !676, file: !1, discriminator: 1)
!2237 = !DILocation(line: 728, column: 16, scope: !2238)
!2238 = !DILexicalBlockFile(scope: !676, file: !1, discriminator: 3)
!2239 = !DILocation(line: 728, column: 16, scope: !2240)
!2240 = !DILexicalBlockFile(scope: !676, file: !1, discriminator: 4)
!2241 = !DILocation(line: 728, column: 16, scope: !2242)
!2242 = !DILexicalBlockFile(scope: !676, file: !1, discriminator: 2)
!2243 = !DILocation(line: 718, column: 15, scope: !676)
!2244 = !DILocation(line: 729, column: 21, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !1, line: 729, column: 9)
!2246 = distinct !DILexicalBlock(scope: !676, file: !1, line: 729, column: 9)
!2247 = !DILocation(line: 729, column: 9, scope: !2246)
!2248 = !DILocation(line: 730, column: 13, scope: !2249)
!2249 = !DILexicalBlockFile(scope: !2250, file: !1, discriminator: 2)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !1, line: 730, column: 13)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !1, line: 730, column: 13)
!2252 = distinct !DILexicalBlock(scope: !2245, file: !1, line: 730, column: 13)
!2253 = !DILocation(line: 730, column: 13, scope: !2254)
!2254 = !DILexicalBlockFile(scope: !2255, file: !1, discriminator: 4)
!2255 = distinct !DILexicalBlock(scope: !2251, file: !1, line: 730, column: 13)
!2256 = !DILocation(line: 729, column: 29, scope: !2245)
!2257 = distinct !{!2257, !2186}
!2258 = distinct !{!2258, !2188, !2189}
!2259 = !DILocation(line: 730, column: 13, scope: !2260)
!2260 = !DILexicalBlockFile(scope: !2261, file: !1, discriminator: 3)
!2261 = distinct !DILexicalBlock(scope: !2251, file: !1, line: 730, column: 13)
!2262 = distinct !{!2262, !2186}
!2263 = distinct !{!2263, !2188, !2189}
!2264 = distinct !{!2264, !2186}
!2265 = distinct !{!2265, !2188, !2189}
!2266 = distinct !{!2266, !2199, !2188, !2189}
!2267 = distinct !{!2267, !2199, !2188, !2189}
!2268 = distinct !{!2268, !2199, !2188, !2189}
!2269 = !DILocation(line: 732, column: 43, scope: !676)
!2270 = !DILocation(line: 732, column: 16, scope: !676)
!2271 = !DILocation(line: 732, column: 9, scope: !676)
!2272 = !DILocation(line: 636, column: 44, scope: !891, inlinedAt: !2273)
!2273 = distinct !DILocation(line: 735, column: 9, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !677, file: !1, line: 734, column: 10)
!2275 = !DILocation(line: 640, column: 22, scope: !891, inlinedAt: !2273)
!2276 = !DILocation(line: 640, column: 15, scope: !891, inlinedAt: !2273)
!2277 = !DILocation(line: 641, column: 14, scope: !897, inlinedAt: !2273)
!2278 = !DILocation(line: 641, column: 9, scope: !891, inlinedAt: !2273)
!2279 = !DILocation(line: 642, column: 26, scope: !896, inlinedAt: !2273)
!2280 = !DILocation(line: 642, column: 19, scope: !896, inlinedAt: !2273)
!2281 = !DILocation(line: 643, column: 9, scope: !2111, inlinedAt: !2273)
!2282 = !DILocation(line: 643, column: 9, scope: !2113, inlinedAt: !2273)
!2283 = !DILocation(line: 643, column: 9, scope: !899, inlinedAt: !2273)
!2284 = !DILocation(line: 643, column: 9, scope: !2116, inlinedAt: !2273)
!2285 = !DILocation(line: 735, column: 9, scope: !2274)
!2286 = !DILocation(line: 644, column: 18, scope: !903, inlinedAt: !2273)
!2287 = !DILocation(line: 644, column: 13, scope: !896, inlinedAt: !2273)
!2288 = !DILocation(line: 645, column: 26, scope: !902, inlinedAt: !2273)
!2289 = !DILocation(line: 645, column: 13, scope: !902, inlinedAt: !2273)
!2290 = !DILocation(line: 647, column: 13, scope: !2123, inlinedAt: !2273)
!2291 = !DILocation(line: 647, column: 13, scope: !2125, inlinedAt: !2273)
!2292 = !DILocation(line: 647, column: 13, scope: !901, inlinedAt: !2273)
!2293 = !DILocation(line: 647, column: 13, scope: !2128, inlinedAt: !2273)
!2294 = !DILocation(line: 738, column: 1, scope: !663)
!2295 = !DILocation(line: 740, column: 53, scope: !681)
!2296 = !DILocation(line: 742, column: 34, scope: !686)
!2297 = !DILocation(line: 742, column: 9, scope: !686)
!2298 = !DILocation(line: 742, column: 9, scope: !681)
!2299 = !DILocation(line: 746, column: 9, scope: !685)
!2300 = !DILocation(line: 747, column: 9, scope: !685)
!2301 = !DILocation(line: 746, column: 20, scope: !685)
!2302 = !DILocation(line: 752, column: 13, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !685, file: !1, line: 752, column: 13)
!2304 = !DILocation(line: 752, column: 13, scope: !685)
!2305 = !DILocation(line: 747, column: 20, scope: !685)
!2306 = !DILocation(line: 754, column: 13, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !685, file: !1, line: 754, column: 13)
!2308 = !DILocation(line: 754, column: 13, scope: !685)
!2309 = !DILocation(line: 756, column: 24, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !685, file: !1, line: 756, column: 13)
!2311 = !DILocation(line: 744, column: 19, scope: !685)
!2312 = !DILocation(line: 756, column: 22, scope: !2310)
!2313 = !DILocation(line: 756, column: 13, scope: !685)
!2314 = !DILocation(line: 758, column: 18, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !685, file: !1, line: 758, column: 9)
!2316 = !DILocation(line: 745, column: 20, scope: !685)
!2317 = !DILocation(line: 750, column: 13, scope: !685)
!2318 = !DILocation(line: 758, column: 42, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2315, file: !1, line: 758, column: 9)
!2320 = !DILocation(line: 758, column: 40, scope: !2319)
!2321 = !DILocation(line: 758, column: 9, scope: !2315)
!2322 = !DILocation(line: 760, column: 18, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2319, file: !1, line: 758, column: 52)
!2324 = !DILocation(line: 760, column: 18, scope: !2325)
!2325 = !DILexicalBlockFile(scope: !2323, file: !1, discriminator: 1)
!2326 = !DILocation(line: 760, column: 18, scope: !2327)
!2327 = !DILexicalBlockFile(scope: !2323, file: !1, discriminator: 4)
!2328 = !DILocation(line: 760, column: 18, scope: !2329)
!2329 = !DILexicalBlockFile(scope: !2323, file: !1, discriminator: 3)
!2330 = !DILocation(line: 760, column: 18, scope: !2331)
!2331 = !DILexicalBlockFile(scope: !2323, file: !1, discriminator: 5)
!2332 = !DILocation(line: 760, column: 18, scope: !2333)
!2333 = !DILexicalBlockFile(scope: !2323, file: !1, discriminator: 6)
!2334 = !DILocation(line: 760, column: 18, scope: !2335)
!2335 = !DILexicalBlockFile(scope: !2323, file: !1, discriminator: 2)
!2336 = !DILocation(line: 760, column: 18, scope: !2337)
!2337 = !DILexicalBlockFile(scope: !2323, file: !1, discriminator: 12)
!2338 = !DILocation(line: 760, column: 18, scope: !2339)
!2339 = !DILexicalBlockFile(scope: !2340, file: !1, discriminator: 10)
!2340 = !DILexicalBlockFile(scope: !2323, file: !1, discriminator: 9)
!2341 = !DILocation(line: 761, column: 19, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2323, file: !1, line: 761, column: 17)
!2343 = !DILocation(line: 761, column: 17, scope: !2323)
!2344 = !DILocation(line: 763, column: 24, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2342, file: !1, line: 763, column: 22)
!2346 = !DILocation(line: 763, column: 22, scope: !2342)
!2347 = !DILocation(line: 766, column: 25, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2345, file: !1, line: 765, column: 22)
!2349 = !DILocation(line: 766, column: 17, scope: !2348)
!2350 = !DILocation(line: 764, column: 25, scope: !2345)
!2351 = !DILocation(line: 764, column: 17, scope: !2345)
!2352 = !DILocation(line: 762, column: 25, scope: !2342)
!2353 = !DILocation(line: 762, column: 17, scope: !2342)
!2354 = !DILocation(line: 758, column: 47, scope: !2319)
!2355 = !DILocation(line: 760, column: 18, scope: !2356)
!2356 = !DILexicalBlockFile(scope: !2323, file: !1, discriminator: 15)
!2357 = !DILocation(line: 760, column: 18, scope: !2358)
!2358 = !DILexicalBlockFile(scope: !2359, file: !1, discriminator: 21)
!2359 = !DILexicalBlockFile(scope: !2323, file: !1, discriminator: 20)
!2360 = !DILocation(line: 760, column: 18, scope: !2361)
!2361 = !DILexicalBlockFile(scope: !2323, file: !1, discriminator: 13)
!2362 = !DILocation(line: 760, column: 18, scope: !2363)
!2363 = !DILexicalBlockFile(scope: !2323, file: !1, discriminator: 24)
!2364 = !DILocation(line: 760, column: 18, scope: !2365)
!2365 = !DILexicalBlockFile(scope: !2366, file: !1, discriminator: 30)
!2366 = !DILexicalBlockFile(scope: !2323, file: !1, discriminator: 29)
!2367 = !DILocation(line: 751, column: 17, scope: !685)
!2368 = !DILocation(line: 765, column: 24, scope: !2348)
!2369 = !DILocation(line: 765, column: 22, scope: !2345)
!2370 = !DILocation(line: 767, column: 24, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2348, file: !1, line: 767, column: 22)
!2372 = !DILocation(line: 767, column: 22, scope: !2348)
!2373 = !DILocation(line: 768, column: 25, scope: !2371)
!2374 = !DILocation(line: 768, column: 17, scope: !2371)
!2375 = !DILocation(line: 769, column: 24, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2371, file: !1, line: 769, column: 22)
!2377 = !DILocation(line: 769, column: 22, scope: !2371)
!2378 = !DILocation(line: 770, column: 25, scope: !2376)
!2379 = !DILocation(line: 770, column: 17, scope: !2376)
!2380 = !DILocation(line: 771, column: 24, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2376, file: !1, line: 771, column: 22)
!2382 = !DILocation(line: 771, column: 22, scope: !2376)
!2383 = !DILocation(line: 772, column: 25, scope: !2381)
!2384 = !DILocation(line: 772, column: 17, scope: !2381)
!2385 = !DILocation(line: 774, column: 25, scope: !2381)
!2386 = !DILocation(line: 777, column: 29, scope: !685)
!2387 = !DILocation(line: 777, column: 15, scope: !685)
!2388 = !DILocation(line: 748, column: 19, scope: !685)
!2389 = !DILocation(line: 778, column: 17, scope: !698)
!2390 = !DILocation(line: 778, column: 13, scope: !685)
!2391 = !DILocation(line: 779, column: 13, scope: !2392)
!2392 = !DILexicalBlockFile(scope: !696, file: !1, discriminator: 1)
!2393 = !DILocation(line: 779, column: 13, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !696, file: !1, line: 779, column: 13)
!2395 = !DILocation(line: 779, column: 13, scope: !696)
!2396 = !DILocation(line: 779, column: 13, scope: !2397)
!2397 = !DILexicalBlockFile(scope: !2394, file: !1, discriminator: 3)
!2398 = !DILocation(line: 782, column: 16, scope: !685)
!2399 = !DILocation(line: 782, column: 16, scope: !2400)
!2400 = !DILexicalBlockFile(scope: !685, file: !1, discriminator: 1)
!2401 = !DILocation(line: 782, column: 16, scope: !2402)
!2402 = !DILexicalBlockFile(scope: !685, file: !1, discriminator: 3)
!2403 = !DILocation(line: 782, column: 16, scope: !2404)
!2404 = !DILexicalBlockFile(scope: !685, file: !1, discriminator: 4)
!2405 = !DILocation(line: 782, column: 16, scope: !2406)
!2406 = !DILexicalBlockFile(scope: !685, file: !1, discriminator: 2)
!2407 = !DILocation(line: 749, column: 24, scope: !685)
!2408 = !DILocation(line: 784, column: 18, scope: !702)
!2409 = !DILocation(line: 784, column: 29, scope: !701)
!2410 = !DILocation(line: 784, column: 27, scope: !701)
!2411 = !DILocation(line: 784, column: 9, scope: !702)
!2412 = !DILocation(line: 787, column: 18, scope: !700)
!2413 = !DILocation(line: 787, column: 18, scope: !2414)
!2414 = !DILexicalBlockFile(scope: !700, file: !1, discriminator: 4)
!2415 = !DILocation(line: 787, column: 18, scope: !2416)
!2416 = !DILexicalBlockFile(scope: !700, file: !1, discriminator: 5)
!2417 = !DILocation(line: 787, column: 18, scope: !2418)
!2418 = !DILexicalBlockFile(scope: !700, file: !1, discriminator: 6)
!2419 = !DILocation(line: 787, column: 18, scope: !2420)
!2420 = !DILexicalBlockFile(scope: !700, file: !1, discriminator: 1)
!2421 = !DILocation(line: 787, column: 18, scope: !2422)
!2422 = !DILexicalBlockFile(scope: !700, file: !1, discriminator: 3)
!2423 = !DILocation(line: 787, column: 18, scope: !2424)
!2424 = !DILexicalBlockFile(scope: !2425, file: !1, discriminator: 10)
!2425 = !DILexicalBlockFile(scope: !700, file: !1, discriminator: 9)
!2426 = !DILocation(line: 787, column: 18, scope: !2427)
!2427 = !DILexicalBlockFile(scope: !700, file: !1, discriminator: 2)
!2428 = !DILocation(line: 787, column: 18, scope: !2429)
!2429 = !DILexicalBlockFile(scope: !700, file: !1, discriminator: 12)
!2430 = !DILocation(line: 787, column: 18, scope: !2431)
!2431 = !DILexicalBlockFile(scope: !700, file: !1, discriminator: 14)
!2432 = !DILocation(line: 787, column: 18, scope: !2433)
!2433 = !DILexicalBlockFile(scope: !700, file: !1, discriminator: 15)
!2434 = !DILocation(line: 787, column: 18, scope: !2435)
!2435 = !DILexicalBlockFile(scope: !2436, file: !1, discriminator: 21)
!2436 = !DILexicalBlockFile(scope: !700, file: !1, discriminator: 20)
!2437 = !DILocation(line: 787, column: 18, scope: !2438)
!2438 = !DILexicalBlockFile(scope: !700, file: !1, discriminator: 13)
!2439 = !DILocation(line: 787, column: 18, scope: !2440)
!2440 = !DILexicalBlockFile(scope: !700, file: !1, discriminator: 23)
!2441 = !DILocation(line: 787, column: 18, scope: !2442)
!2442 = !DILexicalBlockFile(scope: !700, file: !1, discriminator: 24)
!2443 = !DILocation(line: 787, column: 18, scope: !2444)
!2444 = !DILexicalBlockFile(scope: !2445, file: !1, discriminator: 30)
!2445 = !DILexicalBlockFile(scope: !700, file: !1, discriminator: 29)
!2446 = !DILocation(line: 788, column: 18, scope: !700)
!2447 = !DILocation(line: 788, column: 21, scope: !700)
!2448 = !DILocation(line: 789, column: 18, scope: !700)
!2449 = !DILocation(line: 789, column: 21, scope: !700)
!2450 = !DILocation(line: 790, column: 19, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !700, file: !1, line: 790, column: 17)
!2452 = !DILocation(line: 790, column: 17, scope: !700)
!2453 = !DILocation(line: 794, column: 24, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2451, file: !1, line: 794, column: 22)
!2455 = !DILocation(line: 794, column: 22, scope: !2451)
!2456 = !DILocation(line: 798, column: 24, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2454, file: !1, line: 798, column: 22)
!2458 = !DILocation(line: 798, column: 22, scope: !2454)
!2459 = !DILocation(line: 802, column: 24, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2457, file: !1, line: 802, column: 22)
!2461 = !DILocation(line: 802, column: 22, scope: !2457)
!2462 = !DILocation(line: 806, column: 24, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2460, file: !1, line: 806, column: 22)
!2464 = !DILocation(line: 806, column: 22, scope: !2460)
!2465 = !DILocation(line: 810, column: 24, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2463, file: !1, line: 810, column: 22)
!2467 = !DILocation(line: 813, column: 13, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2466, file: !1, line: 810, column: 34)
!2469 = !DILocation(line: 818, column: 26, scope: !2470)
!2470 = !DILexicalBlockFile(scope: !2420, file: !1, discriminator: 2)
!2471 = !DILocation(line: 819, column: 35, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !700, file: !1, line: 818, column: 32)
!2473 = !DILocation(line: 819, column: 31, scope: !2472)
!2474 = !DILocation(line: 819, column: 27, scope: !2472)
!2475 = !DILocation(line: 819, column: 22, scope: !2472)
!2476 = !DILocation(line: 819, column: 25, scope: !2472)
!2477 = !DILocation(line: 820, column: 20, scope: !2472)
!2478 = !DILocation(line: 821, column: 22, scope: !2472)
!2479 = !DILocation(line: 786, column: 17, scope: !700)
!2480 = !DILocation(line: 785, column: 17, scope: !700)
!2481 = !DILocation(line: 818, column: 28, scope: !700)
!2482 = !DILocation(line: 818, column: 13, scope: !700)
!2483 = !DILocation(line: 823, column: 18, scope: !700)
!2484 = !DILocation(line: 823, column: 21, scope: !700)
!2485 = !DILocation(line: 784, column: 34, scope: !701)
!2486 = !DILocation(line: 826, column: 20, scope: !685)
!2487 = !DILocation(line: 743, column: 19, scope: !685)
!2488 = !DILocation(line: 827, column: 9, scope: !2489)
!2489 = !DILexicalBlockFile(scope: !705, file: !1, discriminator: 1)
!2490 = !DILocation(line: 827, column: 9, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !705, file: !1, line: 827, column: 9)
!2492 = !DILocation(line: 827, column: 9, scope: !705)
!2493 = !DILocation(line: 827, column: 9, scope: !2494)
!2494 = !DILexicalBlockFile(scope: !2491, file: !1, discriminator: 3)
!2495 = !DILocation(line: 829, column: 5, scope: !686)
!2496 = !DILocation(line: 636, column: 44, scope: !891, inlinedAt: !2497)
!2497 = distinct !DILocation(line: 831, column: 9, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !686, file: !1, line: 830, column: 10)
!2499 = !DILocation(line: 640, column: 22, scope: !891, inlinedAt: !2497)
!2500 = !DILocation(line: 640, column: 15, scope: !891, inlinedAt: !2497)
!2501 = !DILocation(line: 641, column: 14, scope: !897, inlinedAt: !2497)
!2502 = !DILocation(line: 641, column: 9, scope: !891, inlinedAt: !2497)
!2503 = !DILocation(line: 642, column: 26, scope: !896, inlinedAt: !2497)
!2504 = !DILocation(line: 642, column: 19, scope: !896, inlinedAt: !2497)
!2505 = !DILocation(line: 643, column: 9, scope: !2111, inlinedAt: !2497)
!2506 = !DILocation(line: 643, column: 9, scope: !2113, inlinedAt: !2497)
!2507 = !DILocation(line: 643, column: 9, scope: !899, inlinedAt: !2497)
!2508 = !DILocation(line: 643, column: 9, scope: !2116, inlinedAt: !2497)
!2509 = !DILocation(line: 831, column: 9, scope: !2498)
!2510 = !DILocation(line: 644, column: 18, scope: !903, inlinedAt: !2497)
!2511 = !DILocation(line: 644, column: 13, scope: !896, inlinedAt: !2497)
!2512 = !DILocation(line: 645, column: 26, scope: !902, inlinedAt: !2497)
!2513 = !DILocation(line: 645, column: 13, scope: !902, inlinedAt: !2497)
!2514 = !DILocation(line: 647, column: 13, scope: !2123, inlinedAt: !2497)
!2515 = !DILocation(line: 647, column: 13, scope: !2125, inlinedAt: !2497)
!2516 = !DILocation(line: 647, column: 13, scope: !901, inlinedAt: !2497)
!2517 = !DILocation(line: 647, column: 13, scope: !2128, inlinedAt: !2497)
!2518 = !DILocation(line: 834, column: 1, scope: !681)
!2519 = !DILocation(line: 836, column: 52, scope: !706)
!2520 = !DILocation(line: 838, column: 34, scope: !711)
!2521 = !DILocation(line: 838, column: 9, scope: !711)
!2522 = !DILocation(line: 838, column: 9, scope: !706)
!2523 = !DILocation(line: 842, column: 9, scope: !710)
!2524 = !DILocation(line: 843, column: 9, scope: !710)
!2525 = !DILocation(line: 842, column: 20, scope: !710)
!2526 = !DILocation(line: 848, column: 13, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !710, file: !1, line: 848, column: 13)
!2528 = !DILocation(line: 848, column: 13, scope: !710)
!2529 = !DILocation(line: 843, column: 20, scope: !710)
!2530 = !DILocation(line: 850, column: 13, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !710, file: !1, line: 850, column: 13)
!2532 = !DILocation(line: 850, column: 13, scope: !710)
!2533 = !DILocation(line: 852, column: 24, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !710, file: !1, line: 852, column: 13)
!2535 = !DILocation(line: 840, column: 19, scope: !710)
!2536 = !DILocation(line: 852, column: 22, scope: !2534)
!2537 = !DILocation(line: 852, column: 13, scope: !710)
!2538 = !DILocation(line: 854, column: 18, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !710, file: !1, line: 854, column: 9)
!2540 = !DILocation(line: 841, column: 20, scope: !710)
!2541 = !DILocation(line: 846, column: 13, scope: !710)
!2542 = !DILocation(line: 854, column: 42, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2539, file: !1, line: 854, column: 9)
!2544 = !DILocation(line: 854, column: 40, scope: !2543)
!2545 = !DILocation(line: 854, column: 9, scope: !2539)
!2546 = !DILocation(line: 856, column: 17, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2543, file: !1, line: 854, column: 52)
!2548 = !DILocation(line: 856, column: 17, scope: !2549)
!2549 = !DILexicalBlockFile(scope: !2547, file: !1, discriminator: 12)
!2550 = !DILocation(line: 856, column: 17, scope: !2551)
!2551 = !DILexicalBlockFile(scope: !2547, file: !1, discriminator: 14)
!2552 = !DILocation(line: 856, column: 17, scope: !2553)
!2553 = !DILexicalBlockFile(scope: !2547, file: !1, discriminator: 16)
!2554 = !DILocation(line: 856, column: 17, scope: !2555)
!2555 = !DILexicalBlockFile(scope: !2547, file: !1, discriminator: 17)
!2556 = !DILocation(line: 856, column: 17, scope: !2557)
!2557 = !DILexicalBlockFile(scope: !2547, file: !1, discriminator: 15)
!2558 = !DILocation(line: 856, column: 17, scope: !2559)
!2559 = !DILexicalBlockFile(scope: !2560, file: !1, discriminator: 21)
!2560 = !DILexicalBlockFile(scope: !2547, file: !1, discriminator: 20)
!2561 = !DILocation(line: 860, column: 24, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !1, line: 860, column: 22)
!2563 = distinct !DILexicalBlock(scope: !2547, file: !1, line: 857, column: 17)
!2564 = !DILocation(line: 860, column: 22, scope: !2563)
!2565 = !DILocation(line: 854, column: 47, scope: !2543)
!2566 = !DILocation(line: 864, column: 25, scope: !2562)
!2567 = distinct !{!2567, !2186}
!2568 = !DILocation(line: 856, column: 17, scope: !2569)
!2569 = !DILexicalBlockFile(scope: !2547, file: !1, discriminator: 13)
!2570 = !DILocation(line: 856, column: 17, scope: !2571)
!2571 = !DILexicalBlockFile(scope: !2547, file: !1, discriminator: 24)
!2572 = !DILocation(line: 856, column: 17, scope: !2573)
!2573 = !DILexicalBlockFile(scope: !2574, file: !1, discriminator: 30)
!2574 = !DILexicalBlockFile(scope: !2547, file: !1, discriminator: 29)
!2575 = !DILocation(line: 847, column: 17, scope: !710)
!2576 = !DILocation(line: 857, column: 19, scope: !2563)
!2577 = !DILocation(line: 857, column: 17, scope: !2547)
!2578 = !DILocation(line: 858, column: 25, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2563, file: !1, line: 857, column: 31)
!2580 = !DILocation(line: 859, column: 13, scope: !2579)
!2581 = !DILocation(line: 861, column: 25, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2562, file: !1, line: 860, column: 34)
!2583 = !DILocation(line: 862, column: 13, scope: !2582)
!2584 = !DILocation(line: 866, column: 29, scope: !710)
!2585 = !DILocation(line: 866, column: 15, scope: !710)
!2586 = !DILocation(line: 844, column: 19, scope: !710)
!2587 = !DILocation(line: 867, column: 16, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !710, file: !1, line: 867, column: 13)
!2589 = !DILocation(line: 867, column: 13, scope: !710)
!2590 = !DILocation(line: 869, column: 18, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !710, file: !1, line: 869, column: 9)
!2592 = !DILocation(line: 869, column: 32, scope: !2591)
!2593 = !DILocation(line: 869, column: 32, scope: !2594)
!2594 = !DILexicalBlockFile(scope: !2591, file: !1, discriminator: 1)
!2595 = !DILocation(line: 869, column: 32, scope: !2596)
!2596 = !DILexicalBlockFile(scope: !2591, file: !1, discriminator: 3)
!2597 = !DILocation(line: 869, column: 32, scope: !2598)
!2598 = !DILexicalBlockFile(scope: !2591, file: !1, discriminator: 4)
!2599 = !DILocation(line: 869, column: 32, scope: !2600)
!2600 = !DILexicalBlockFile(scope: !2591, file: !1, discriminator: 2)
!2601 = !DILocation(line: 870, column: 17, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2591, file: !1, line: 869, column: 9)
!2603 = !DILocation(line: 870, column: 15, scope: !2602)
!2604 = !DILocation(line: 869, column: 9, scope: !2591)
!2605 = !DILocation(line: 871, column: 17, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2602, file: !1, line: 870, column: 27)
!2607 = !DILocation(line: 871, column: 17, scope: !2608)
!2608 = !DILexicalBlockFile(scope: !2606, file: !1, discriminator: 4)
!2609 = !DILocation(line: 871, column: 17, scope: !2610)
!2610 = !DILexicalBlockFile(scope: !2606, file: !1, discriminator: 5)
!2611 = !DILocation(line: 871, column: 17, scope: !2612)
!2612 = !DILexicalBlockFile(scope: !2606, file: !1, discriminator: 6)
!2613 = !DILocation(line: 871, column: 17, scope: !2614)
!2614 = !DILexicalBlockFile(scope: !2606, file: !1, discriminator: 1)
!2615 = !DILocation(line: 871, column: 17, scope: !2616)
!2616 = !DILexicalBlockFile(scope: !2606, file: !1, discriminator: 3)
!2617 = !DILocation(line: 871, column: 17, scope: !2618)
!2618 = !DILexicalBlockFile(scope: !2619, file: !1, discriminator: 10)
!2619 = !DILexicalBlockFile(scope: !2606, file: !1, discriminator: 9)
!2620 = !DILocation(line: 871, column: 17, scope: !2621)
!2621 = !DILexicalBlockFile(scope: !2606, file: !1, discriminator: 2)
!2622 = !DILocation(line: 871, column: 17, scope: !2623)
!2623 = !DILexicalBlockFile(scope: !2606, file: !1, discriminator: 12)
!2624 = !DILocation(line: 871, column: 17, scope: !2625)
!2625 = !DILexicalBlockFile(scope: !2606, file: !1, discriminator: 14)
!2626 = !DILocation(line: 871, column: 17, scope: !2627)
!2627 = !DILexicalBlockFile(scope: !2606, file: !1, discriminator: 15)
!2628 = !DILocation(line: 871, column: 17, scope: !2629)
!2629 = !DILexicalBlockFile(scope: !2630, file: !1, discriminator: 21)
!2630 = !DILexicalBlockFile(scope: !2606, file: !1, discriminator: 20)
!2631 = !DILocation(line: 871, column: 17, scope: !2632)
!2632 = !DILexicalBlockFile(scope: !2606, file: !1, discriminator: 13)
!2633 = !DILocation(line: 871, column: 17, scope: !2634)
!2634 = !DILexicalBlockFile(scope: !2606, file: !1, discriminator: 23)
!2635 = !DILocation(line: 871, column: 17, scope: !2636)
!2636 = !DILexicalBlockFile(scope: !2606, file: !1, discriminator: 24)
!2637 = !DILocation(line: 872, column: 18, scope: !2606)
!2638 = !DILocation(line: 845, column: 24, scope: !710)
!2639 = !DILocation(line: 872, column: 21, scope: !2606)
!2640 = !DILocation(line: 873, column: 17, scope: !2606)
!2641 = !DILocation(line: 871, column: 17, scope: !2642)
!2642 = !DILexicalBlockFile(scope: !2643, file: !1, discriminator: 30)
!2643 = !DILexicalBlockFile(scope: !2606, file: !1, discriminator: 29)
!2644 = !DILocation(line: 873, column: 19, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2606, file: !1, line: 873, column: 17)
!2646 = !DILocation(line: 874, column: 22, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2645, file: !1, line: 873, column: 34)
!2648 = !DILocation(line: 874, column: 25, scope: !2647)
!2649 = !DILocation(line: 875, column: 42, scope: !2647)
!2650 = !DILocation(line: 875, column: 27, scope: !2647)
!2651 = !DILocation(line: 875, column: 22, scope: !2647)
!2652 = !DILocation(line: 875, column: 25, scope: !2647)
!2653 = !DILocation(line: 876, column: 42, scope: !2647)
!2654 = !DILocation(line: 876, column: 47, scope: !2647)
!2655 = !DILocation(line: 876, column: 27, scope: !2647)
!2656 = !DILocation(line: 876, column: 22, scope: !2647)
!2657 = !DILocation(line: 876, column: 25, scope: !2647)
!2658 = !DILocation(line: 877, column: 42, scope: !2647)
!2659 = !DILocation(line: 877, column: 47, scope: !2647)
!2660 = !DILocation(line: 877, column: 27, scope: !2647)
!2661 = !DILocation(line: 877, column: 22, scope: !2647)
!2662 = !DILocation(line: 877, column: 25, scope: !2647)
!2663 = !DILocation(line: 878, column: 42, scope: !2647)
!2664 = !DILocation(line: 878, column: 47, scope: !2647)
!2665 = !DILocation(line: 878, column: 27, scope: !2647)
!2666 = !DILocation(line: 878, column: 22, scope: !2647)
!2667 = !DILocation(line: 878, column: 25, scope: !2647)
!2668 = !DILocation(line: 879, column: 42, scope: !2647)
!2669 = !DILocation(line: 879, column: 47, scope: !2647)
!2670 = !DILocation(line: 879, column: 27, scope: !2647)
!2671 = !DILocation(line: 879, column: 22, scope: !2647)
!2672 = !DILocation(line: 879, column: 25, scope: !2647)
!2673 = !DILocation(line: 880, column: 42, scope: !2647)
!2674 = !DILocation(line: 880, column: 46, scope: !2647)
!2675 = !DILocation(line: 880, column: 27, scope: !2647)
!2676 = !DILocation(line: 880, column: 22, scope: !2647)
!2677 = !DILocation(line: 880, column: 25, scope: !2647)
!2678 = !DILocation(line: 881, column: 13, scope: !2647)
!2679 = !DILocation(line: 882, column: 24, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2645, file: !1, line: 882, column: 22)
!2681 = !DILocation(line: 883, column: 22, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2680, file: !1, line: 882, column: 34)
!2683 = !DILocation(line: 882, column: 22, scope: !2645)
!2684 = !DILocation(line: 883, column: 25, scope: !2682)
!2685 = !DILocation(line: 884, column: 42, scope: !2682)
!2686 = !DILocation(line: 884, column: 47, scope: !2682)
!2687 = !DILocation(line: 884, column: 27, scope: !2682)
!2688 = !DILocation(line: 884, column: 22, scope: !2682)
!2689 = !DILocation(line: 884, column: 25, scope: !2682)
!2690 = !DILocation(line: 885, column: 42, scope: !2682)
!2691 = !DILocation(line: 885, column: 46, scope: !2682)
!2692 = !DILocation(line: 885, column: 27, scope: !2682)
!2693 = !DILocation(line: 885, column: 22, scope: !2682)
!2694 = !DILocation(line: 885, column: 25, scope: !2682)
!2695 = !DILocation(line: 886, column: 13, scope: !2682)
!2696 = !DILocation(line: 888, column: 25, scope: !2680)
!2697 = !DILocation(line: 889, column: 38, scope: !2606)
!2698 = !DILocation(line: 889, column: 42, scope: !2606)
!2699 = !DILocation(line: 889, column: 23, scope: !2606)
!2700 = !DILocation(line: 889, column: 18, scope: !2606)
!2701 = !DILocation(line: 889, column: 21, scope: !2606)
!2702 = !DILocation(line: 890, column: 37, scope: !2606)
!2703 = !DILocation(line: 890, column: 23, scope: !2606)
!2704 = !DILocation(line: 890, column: 18, scope: !2606)
!2705 = !DILocation(line: 890, column: 21, scope: !2606)
!2706 = !DILocation(line: 870, column: 22, scope: !2602)
!2707 = !DILocation(line: 894, column: 20, scope: !710)
!2708 = !DILocation(line: 839, column: 19, scope: !710)
!2709 = !DILocation(line: 895, column: 9, scope: !2710)
!2710 = !DILexicalBlockFile(scope: !721, file: !1, discriminator: 1)
!2711 = !DILocation(line: 895, column: 9, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !721, file: !1, line: 895, column: 9)
!2713 = !DILocation(line: 895, column: 9, scope: !721)
!2714 = !DILocation(line: 895, column: 9, scope: !2715)
!2715 = !DILexicalBlockFile(scope: !2712, file: !1, discriminator: 3)
!2716 = !DILocation(line: 897, column: 5, scope: !711)
!2717 = !DILocation(line: 636, column: 44, scope: !891, inlinedAt: !2718)
!2718 = distinct !DILocation(line: 899, column: 9, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !711, file: !1, line: 898, column: 10)
!2720 = !DILocation(line: 640, column: 22, scope: !891, inlinedAt: !2718)
!2721 = !DILocation(line: 640, column: 15, scope: !891, inlinedAt: !2718)
!2722 = !DILocation(line: 641, column: 14, scope: !897, inlinedAt: !2718)
!2723 = !DILocation(line: 641, column: 9, scope: !891, inlinedAt: !2718)
!2724 = !DILocation(line: 642, column: 26, scope: !896, inlinedAt: !2718)
!2725 = !DILocation(line: 642, column: 19, scope: !896, inlinedAt: !2718)
!2726 = !DILocation(line: 643, column: 9, scope: !2111, inlinedAt: !2718)
!2727 = !DILocation(line: 643, column: 9, scope: !2113, inlinedAt: !2718)
!2728 = !DILocation(line: 643, column: 9, scope: !899, inlinedAt: !2718)
!2729 = !DILocation(line: 643, column: 9, scope: !2116, inlinedAt: !2718)
!2730 = !DILocation(line: 899, column: 9, scope: !2719)
!2731 = !DILocation(line: 644, column: 18, scope: !903, inlinedAt: !2718)
!2732 = !DILocation(line: 644, column: 13, scope: !896, inlinedAt: !2718)
!2733 = !DILocation(line: 645, column: 26, scope: !902, inlinedAt: !2718)
!2734 = !DILocation(line: 645, column: 13, scope: !902, inlinedAt: !2718)
!2735 = !DILocation(line: 647, column: 13, scope: !2123, inlinedAt: !2718)
!2736 = !DILocation(line: 647, column: 13, scope: !2125, inlinedAt: !2718)
!2737 = !DILocation(line: 647, column: 13, scope: !901, inlinedAt: !2718)
!2738 = !DILocation(line: 647, column: 13, scope: !2128, inlinedAt: !2718)
!2739 = !DILocation(line: 902, column: 1, scope: !706)
!2740 = !DILocation(line: 1197, column: 42, scope: !927)
!2741 = !DILocation(line: 1197, column: 58, scope: !927)
!2742 = !DILocation(line: 652, column: 42, scope: !656, inlinedAt: !2743)
!2743 = distinct !DILocation(line: 1199, column: 12, scope: !927)
!2744 = !DILocation(line: 654, column: 9, scope: !2067, inlinedAt: !2743)
!2745 = !DILocation(line: 654, column: 9, scope: !656, inlinedAt: !2743)
!2746 = !DILocation(line: 655, column: 25, scope: !2067, inlinedAt: !2743)
!2747 = !DILocation(line: 655, column: 9, scope: !2067, inlinedAt: !2743)
!2748 = !DILocation(line: 657, column: 25, scope: !2067, inlinedAt: !2743)
!2749 = !DILocation(line: 657, column: 9, scope: !2067, inlinedAt: !2743)
!2750 = !DILocation(line: 1199, column: 12, scope: !927)
!2751 = !DILocation(line: 1199, column: 5, scope: !927)
!2752 = !DILocation(line: 1203, column: 42, scope: !931)
!2753 = !DILocation(line: 1203, column: 58, scope: !931)
!2754 = !DILocation(line: 1205, column: 12, scope: !931)
!2755 = !DILocation(line: 1205, column: 5, scope: !931)
!2756 = !DILocation(line: 1209, column: 43, scope: !935)
!2757 = !DILocation(line: 1209, column: 59, scope: !935)
!2758 = !DILocation(line: 1211, column: 12, scope: !935)
!2759 = !DILocation(line: 1211, column: 5, scope: !935)
!2760 = !DILocation(line: 1215, column: 53, scope: !939)
!2761 = !DILocation(line: 1215, column: 69, scope: !939)
!2762 = !DILocation(line: 1217, column: 12, scope: !939)
!2763 = !DILocation(line: 1217, column: 5, scope: !939)
!2764 = !DILocation(line: 1221, column: 52, scope: !943)
!2765 = !DILocation(line: 1221, column: 68, scope: !943)
!2766 = !DILocation(line: 1223, column: 12, scope: !943)
!2767 = !DILocation(line: 1223, column: 5, scope: !943)
!2768 = !DILocation(line: 1226, column: 49, scope: !947)
!2769 = !DILocation(line: 1226, column: 65, scope: !947)
!2770 = !DILocation(line: 966, column: 39, scope: !951, inlinedAt: !2771)
!2771 = distinct !DILocation(line: 1228, column: 12, scope: !947)
!2772 = !DILocation(line: 973, column: 5, scope: !951, inlinedAt: !2771)
!2773 = !DILocation(line: 975, column: 5, scope: !951, inlinedAt: !2771)
!2774 = !DILocation(line: 976, column: 5, scope: !951, inlinedAt: !2771)
!2775 = !DILocation(line: 978, column: 34, scope: !966, inlinedAt: !2771)
!2776 = !DILocation(line: 978, column: 9, scope: !966, inlinedAt: !2771)
!2777 = !DILocation(line: 978, column: 9, scope: !951, inlinedAt: !2771)
!2778 = !DILocation(line: 975, column: 16, scope: !951, inlinedAt: !2771)
!2779 = !DILocation(line: 980, column: 13, scope: !2780, inlinedAt: !2771)
!2780 = distinct !DILexicalBlock(scope: !965, file: !1, line: 980, column: 13)
!2781 = !DILocation(line: 980, column: 13, scope: !965, inlinedAt: !2771)
!2782 = !DILocation(line: 976, column: 16, scope: !951, inlinedAt: !2771)
!2783 = !DILocation(line: 982, column: 13, scope: !2784, inlinedAt: !2771)
!2784 = distinct !DILexicalBlock(scope: !965, file: !1, line: 982, column: 13)
!2785 = !DILocation(line: 982, column: 13, scope: !965, inlinedAt: !2771)
!2786 = !DILocation(line: 984, column: 24, scope: !2787, inlinedAt: !2771)
!2787 = distinct !DILexicalBlock(scope: !965, file: !1, line: 984, column: 13)
!2788 = !DILocation(line: 969, column: 15, scope: !951, inlinedAt: !2771)
!2789 = !DILocation(line: 984, column: 22, scope: !2787, inlinedAt: !2771)
!2790 = !DILocation(line: 984, column: 13, scope: !965, inlinedAt: !2771)
!2791 = !DILocation(line: 986, column: 24, scope: !970, inlinedAt: !2771)
!2792 = !DILocation(line: 970, column: 15, scope: !951, inlinedAt: !2771)
!2793 = !DILocation(line: 986, column: 22, scope: !970, inlinedAt: !2771)
!2794 = !DILocation(line: 986, column: 13, scope: !965, inlinedAt: !2771)
!2795 = !DILocation(line: 987, column: 13, scope: !2796, inlinedAt: !2771)
!2796 = !DILexicalBlockFile(scope: !968, file: !1, discriminator: 1)
!2797 = !DILocation(line: 987, column: 13, scope: !2798, inlinedAt: !2771)
!2798 = distinct !DILexicalBlock(scope: !968, file: !1, line: 987, column: 13)
!2799 = !DILocation(line: 987, column: 13, scope: !968, inlinedAt: !2771)
!2800 = !DILocation(line: 987, column: 13, scope: !2801, inlinedAt: !2771)
!2801 = !DILexicalBlockFile(scope: !2798, file: !1, discriminator: 3)
!2802 = !DILocation(line: 1228, column: 12, scope: !947)
!2803 = !DILocation(line: 990, column: 26, scope: !974, inlinedAt: !2771)
!2804 = !DILocation(line: 971, column: 11, scope: !951, inlinedAt: !2771)
!2805 = !DILocation(line: 990, column: 24, scope: !974, inlinedAt: !2771)
!2806 = !DILocation(line: 990, column: 13, scope: !965, inlinedAt: !2771)
!2807 = !DILocation(line: 991, column: 13, scope: !2808, inlinedAt: !2771)
!2808 = !DILexicalBlockFile(scope: !972, file: !1, discriminator: 1)
!2809 = !DILocation(line: 991, column: 13, scope: !2810, inlinedAt: !2771)
!2810 = distinct !DILexicalBlock(scope: !972, file: !1, line: 991, column: 13)
!2811 = !DILocation(line: 991, column: 13, scope: !972, inlinedAt: !2771)
!2812 = !DILocation(line: 991, column: 13, scope: !2813, inlinedAt: !2771)
!2813 = !DILexicalBlockFile(scope: !2810, file: !1, discriminator: 3)
!2814 = !DILocation(line: 992, column: 13, scope: !2815, inlinedAt: !2771)
!2815 = !DILexicalBlockFile(scope: !976, file: !1, discriminator: 1)
!2816 = !DILocation(line: 992, column: 13, scope: !2817, inlinedAt: !2771)
!2817 = distinct !DILexicalBlock(scope: !976, file: !1, line: 992, column: 13)
!2818 = !DILocation(line: 992, column: 13, scope: !976, inlinedAt: !2771)
!2819 = !DILocation(line: 992, column: 13, scope: !2820, inlinedAt: !2771)
!2820 = !DILexicalBlockFile(scope: !2817, file: !1, discriminator: 3)
!2821 = !DILocation(line: 973, column: 9, scope: !951, inlinedAt: !2771)
!2822 = !DILocation(line: 995, column: 16, scope: !965, inlinedAt: !2771)
!2823 = !DILocation(line: 972, column: 9, scope: !951, inlinedAt: !2771)
!2824 = !DILocation(line: 996, column: 9, scope: !2825, inlinedAt: !2771)
!2825 = !DILexicalBlockFile(scope: !978, file: !1, discriminator: 1)
!2826 = !DILocation(line: 996, column: 9, scope: !2827, inlinedAt: !2771)
!2827 = distinct !DILexicalBlock(scope: !978, file: !1, line: 996, column: 9)
!2828 = !DILocation(line: 996, column: 9, scope: !978, inlinedAt: !2771)
!2829 = !DILocation(line: 996, column: 9, scope: !2830, inlinedAt: !2771)
!2830 = !DILexicalBlockFile(scope: !2827, file: !1, discriminator: 3)
!2831 = !DILocation(line: 998, column: 47, scope: !965, inlinedAt: !2771)
!2832 = !DILocation(line: 998, column: 59, scope: !965, inlinedAt: !2771)
!2833 = !DILocation(line: 998, column: 63, scope: !965, inlinedAt: !2771)
!2834 = !DILocation(line: 998, column: 62, scope: !965, inlinedAt: !2771)
!2835 = !DILocation(line: 998, column: 57, scope: !965, inlinedAt: !2771)
!2836 = !DILocation(line: 998, column: 15, scope: !965, inlinedAt: !2771)
!2837 = !DILocation(line: 977, column: 15, scope: !951, inlinedAt: !2771)
!2838 = !DILocation(line: 999, column: 14, scope: !982, inlinedAt: !2771)
!2839 = !DILocation(line: 999, column: 13, scope: !965, inlinedAt: !2771)
!2840 = !DILocation(line: 1000, column: 13, scope: !2841, inlinedAt: !2771)
!2841 = !DILexicalBlockFile(scope: !980, file: !1, discriminator: 1)
!2842 = !DILocation(line: 1000, column: 13, scope: !2843, inlinedAt: !2771)
!2843 = distinct !DILexicalBlock(scope: !980, file: !1, line: 1000, column: 13)
!2844 = !DILocation(line: 1000, column: 13, scope: !980, inlinedAt: !2771)
!2845 = !DILocation(line: 1000, column: 13, scope: !2846, inlinedAt: !2771)
!2846 = !DILexicalBlockFile(scope: !2843, file: !1, discriminator: 3)
!2847 = !DILocation(line: 1003, column: 32, scope: !965, inlinedAt: !2771)
!2848 = !DILocation(line: 979, column: 24, scope: !965, inlinedAt: !2771)
!2849 = !DILocation(line: 1004, column: 18, scope: !986, inlinedAt: !2771)
!2850 = !DILocation(line: 974, column: 16, scope: !951, inlinedAt: !2771)
!2851 = !DILocation(line: 1004, column: 29, scope: !985, inlinedAt: !2771)
!2852 = !DILocation(line: 1004, column: 27, scope: !985, inlinedAt: !2771)
!2853 = !DILocation(line: 1004, column: 9, scope: !986, inlinedAt: !2771)
!2854 = !DILocation(line: 1006, column: 26, scope: !984, inlinedAt: !2771)
!2855 = !DILocation(line: 1006, column: 26, scope: !2856, inlinedAt: !2771)
!2856 = !DILexicalBlockFile(scope: !984, file: !1, discriminator: 4)
!2857 = !DILocation(line: 1006, column: 26, scope: !2858, inlinedAt: !2771)
!2858 = !DILexicalBlockFile(scope: !984, file: !1, discriminator: 5)
!2859 = !DILocation(line: 1006, column: 26, scope: !2860, inlinedAt: !2771)
!2860 = !DILexicalBlockFile(scope: !984, file: !1, discriminator: 6)
!2861 = !DILocation(line: 1006, column: 26, scope: !2862, inlinedAt: !2771)
!2862 = !DILexicalBlockFile(scope: !984, file: !1, discriminator: 2)
!2863 = !DILocation(line: 1006, column: 26, scope: !2864, inlinedAt: !2771)
!2864 = !DILexicalBlockFile(scope: !984, file: !1, discriminator: 12)
!2865 = !DILocation(line: 1006, column: 26, scope: !2866, inlinedAt: !2771)
!2866 = !DILexicalBlockFile(scope: !984, file: !1, discriminator: 13)
!2867 = !DILocation(line: 1006, column: 26, scope: !2868, inlinedAt: !2771)
!2868 = !DILexicalBlockFile(scope: !984, file: !1, discriminator: 24)
!2869 = !DILocation(line: 1006, column: 26, scope: !2870, inlinedAt: !2771)
!2870 = !DILexicalBlockFile(scope: !984, file: !1, discriminator: 23)
!2871 = !DILocation(line: 1006, column: 26, scope: !2872, inlinedAt: !2771)
!2872 = !DILexicalBlockFile(scope: !2873, file: !1, discriminator: 30)
!2873 = !DILexicalBlockFile(scope: !984, file: !1, discriminator: 29)
!2874 = !DILocation(line: 1006, column: 26, scope: !2875, inlinedAt: !2771)
!2875 = !DILexicalBlockFile(scope: !984, file: !1, discriminator: 15)
!2876 = !DILocation(line: 1006, column: 26, scope: !2877, inlinedAt: !2771)
!2877 = !DILexicalBlockFile(scope: !984, file: !1, discriminator: 14)
!2878 = !DILocation(line: 1006, column: 26, scope: !2879, inlinedAt: !2771)
!2879 = !DILexicalBlockFile(scope: !2880, file: !1, discriminator: 21)
!2880 = !DILexicalBlockFile(scope: !984, file: !1, discriminator: 20)
!2881 = !DILocation(line: 1006, column: 26, scope: !2882, inlinedAt: !2771)
!2882 = !DILexicalBlockFile(scope: !984, file: !1, discriminator: 1)
!2883 = !DILocation(line: 1006, column: 26, scope: !2884, inlinedAt: !2771)
!2884 = !DILexicalBlockFile(scope: !984, file: !1, discriminator: 3)
!2885 = !DILocation(line: 1006, column: 26, scope: !2886, inlinedAt: !2771)
!2886 = !DILexicalBlockFile(scope: !2887, file: !1, discriminator: 10)
!2887 = !DILexicalBlockFile(scope: !984, file: !1, discriminator: 9)
!2888 = !DILocation(line: 1006, column: 21, scope: !984, inlinedAt: !2771)
!2889 = !DILocation(line: 1007, column: 18, scope: !990, inlinedAt: !2771)
!2890 = !DILocation(line: 1035, column: 46, scope: !2891, inlinedAt: !2771)
!2891 = distinct !DILexicalBlock(scope: !984, file: !1, line: 1014, column: 27)
!2892 = !DILocation(line: 1035, column: 27, scope: !2891, inlinedAt: !2771)
!2893 = !DILocation(line: 1035, column: 22, scope: !2891, inlinedAt: !2771)
!2894 = !DILocation(line: 1035, column: 25, scope: !2891, inlinedAt: !2771)
!2895 = !DILocation(line: 1036, column: 46, scope: !2891, inlinedAt: !2771)
!2896 = !DILocation(line: 1036, column: 27, scope: !2891, inlinedAt: !2771)
!2897 = !DILocation(line: 1036, column: 22, scope: !2891, inlinedAt: !2771)
!2898 = !DILocation(line: 1036, column: 25, scope: !2891, inlinedAt: !2771)
!2899 = !DILocation(line: 1037, column: 46, scope: !2891, inlinedAt: !2771)
!2900 = !DILocation(line: 1037, column: 27, scope: !2891, inlinedAt: !2771)
!2901 = !DILocation(line: 1037, column: 22, scope: !2891, inlinedAt: !2771)
!2902 = !DILocation(line: 1037, column: 25, scope: !2891, inlinedAt: !2771)
!2903 = !DILocation(line: 1038, column: 27, scope: !2891, inlinedAt: !2771)
!2904 = !DILocation(line: 1038, column: 22, scope: !2891, inlinedAt: !2771)
!2905 = !DILocation(line: 1038, column: 25, scope: !2891, inlinedAt: !2771)
!2906 = !DILocation(line: 1004, column: 35, scope: !985, inlinedAt: !2771)
!2907 = !DILocation(line: 1016, column: 54, scope: !2891, inlinedAt: !2771)
!2908 = !DILocation(line: 1016, column: 48, scope: !2891, inlinedAt: !2771)
!2909 = !DILocation(line: 1016, column: 27, scope: !2891, inlinedAt: !2771)
!2910 = !DILocation(line: 1016, column: 22, scope: !2891, inlinedAt: !2771)
!2911 = !DILocation(line: 1016, column: 25, scope: !2891, inlinedAt: !2771)
!2912 = !DILocation(line: 1017, column: 55, scope: !2891, inlinedAt: !2771)
!2913 = !DILocation(line: 1017, column: 61, scope: !2891, inlinedAt: !2771)
!2914 = !DILocation(line: 1017, column: 48, scope: !2891, inlinedAt: !2771)
!2915 = !DILocation(line: 1017, column: 27, scope: !2891, inlinedAt: !2771)
!2916 = !DILocation(line: 1017, column: 22, scope: !2891, inlinedAt: !2771)
!2917 = !DILocation(line: 1017, column: 25, scope: !2891, inlinedAt: !2771)
!2918 = !DILocation(line: 1018, column: 54, scope: !2891, inlinedAt: !2771)
!2919 = !DILocation(line: 1018, column: 48, scope: !2891, inlinedAt: !2771)
!2920 = !DILocation(line: 1018, column: 27, scope: !2891, inlinedAt: !2771)
!2921 = !DILocation(line: 1018, column: 22, scope: !2891, inlinedAt: !2771)
!2922 = !DILocation(line: 1018, column: 25, scope: !2891, inlinedAt: !2771)
!2923 = !DILocation(line: 1009, column: 33, scope: !989, inlinedAt: !2771)
!2924 = !DILocation(line: 1009, column: 17, scope: !989, inlinedAt: !2771)
!2925 = !DILocation(line: 1010, column: 17, scope: !2926, inlinedAt: !2771)
!2926 = !DILexicalBlockFile(scope: !988, file: !1, discriminator: 1)
!2927 = !DILocation(line: 1010, column: 17, scope: !2928, inlinedAt: !2771)
!2928 = distinct !DILexicalBlock(scope: !988, file: !1, line: 1010, column: 17)
!2929 = !DILocation(line: 1010, column: 17, scope: !988, inlinedAt: !2771)
!2930 = !DILocation(line: 1010, column: 17, scope: !2931, inlinedAt: !2771)
!2931 = !DILexicalBlockFile(scope: !2928, file: !1, discriminator: 3)
!2932 = !DILocation(line: 1011, column: 17, scope: !2933, inlinedAt: !2771)
!2933 = !DILexicalBlockFile(scope: !992, file: !1, discriminator: 1)
!2934 = !DILocation(line: 1011, column: 17, scope: !2935, inlinedAt: !2771)
!2935 = distinct !DILexicalBlock(scope: !992, file: !1, line: 1011, column: 17)
!2936 = !DILocation(line: 1011, column: 17, scope: !992, inlinedAt: !2771)
!2937 = !DILocation(line: 1011, column: 17, scope: !2938, inlinedAt: !2771)
!2938 = !DILexicalBlockFile(scope: !2935, file: !1, discriminator: 3)
!2939 = !DILocation(line: 1014, column: 13, scope: !984, inlinedAt: !2771)
!2940 = !DILocation(line: 1021, column: 27, scope: !2891, inlinedAt: !2771)
!2941 = !DILocation(line: 1021, column: 22, scope: !2891, inlinedAt: !2771)
!2942 = !DILocation(line: 1021, column: 25, scope: !2891, inlinedAt: !2771)
!2943 = !DILocation(line: 1022, column: 46, scope: !2891, inlinedAt: !2771)
!2944 = !DILocation(line: 1022, column: 27, scope: !2891, inlinedAt: !2771)
!2945 = !DILocation(line: 1022, column: 22, scope: !2891, inlinedAt: !2771)
!2946 = !DILocation(line: 1022, column: 25, scope: !2891, inlinedAt: !2771)
!2947 = !DILocation(line: 1023, column: 17, scope: !2891, inlinedAt: !2771)
!2948 = !DILocation(line: 1025, column: 46, scope: !2891, inlinedAt: !2771)
!2949 = !DILocation(line: 1025, column: 27, scope: !2891, inlinedAt: !2771)
!2950 = !DILocation(line: 1025, column: 22, scope: !2891, inlinedAt: !2771)
!2951 = !DILocation(line: 1025, column: 25, scope: !2891, inlinedAt: !2771)
!2952 = !DILocation(line: 1026, column: 27, scope: !2891, inlinedAt: !2771)
!2953 = !DILocation(line: 1026, column: 22, scope: !2891, inlinedAt: !2771)
!2954 = !DILocation(line: 1026, column: 25, scope: !2891, inlinedAt: !2771)
!2955 = !DILocation(line: 1027, column: 17, scope: !2891, inlinedAt: !2771)
!2956 = !DILocation(line: 1029, column: 27, scope: !2891, inlinedAt: !2771)
!2957 = !DILocation(line: 1029, column: 22, scope: !2891, inlinedAt: !2771)
!2958 = !DILocation(line: 1029, column: 25, scope: !2891, inlinedAt: !2771)
!2959 = !DILocation(line: 1030, column: 46, scope: !2891, inlinedAt: !2771)
!2960 = !DILocation(line: 1030, column: 27, scope: !2891, inlinedAt: !2771)
!2961 = !DILocation(line: 1030, column: 22, scope: !2891, inlinedAt: !2771)
!2962 = !DILocation(line: 1030, column: 25, scope: !2891, inlinedAt: !2771)
!2963 = !DILocation(line: 1031, column: 46, scope: !2891, inlinedAt: !2771)
!2964 = !DILocation(line: 1031, column: 27, scope: !2891, inlinedAt: !2771)
!2965 = !DILocation(line: 1031, column: 22, scope: !2891, inlinedAt: !2771)
!2966 = !DILocation(line: 1031, column: 25, scope: !2891, inlinedAt: !2771)
!2967 = !DILocation(line: 1032, column: 46, scope: !2891, inlinedAt: !2771)
!2968 = !DILocation(line: 1032, column: 27, scope: !2891, inlinedAt: !2771)
!2969 = !DILocation(line: 1032, column: 22, scope: !2891, inlinedAt: !2771)
!2970 = !DILocation(line: 1032, column: 25, scope: !2891, inlinedAt: !2771)
!2971 = !DILocation(line: 1033, column: 17, scope: !2891, inlinedAt: !2771)
!2972 = !DILocation(line: 1042, column: 20, scope: !965, inlinedAt: !2771)
!2973 = !DILocation(line: 968, column: 15, scope: !951, inlinedAt: !2771)
!2974 = !DILocation(line: 1043, column: 9, scope: !2975, inlinedAt: !2771)
!2975 = !DILexicalBlockFile(scope: !994, file: !1, discriminator: 1)
!2976 = !DILocation(line: 1043, column: 9, scope: !2977, inlinedAt: !2771)
!2977 = distinct !DILexicalBlock(scope: !994, file: !1, line: 1043, column: 9)
!2978 = !DILocation(line: 1043, column: 9, scope: !994, inlinedAt: !2771)
!2979 = !DILocation(line: 1043, column: 9, scope: !2980, inlinedAt: !2771)
!2980 = !DILexicalBlockFile(scope: !2977, file: !1, discriminator: 3)
!2981 = !DILocation(line: 1044, column: 9, scope: !2982, inlinedAt: !2771)
!2982 = !DILexicalBlockFile(scope: !996, file: !1, discriminator: 1)
!2983 = !DILocation(line: 1044, column: 9, scope: !2984, inlinedAt: !2771)
!2984 = distinct !DILexicalBlock(scope: !996, file: !1, line: 1044, column: 9)
!2985 = !DILocation(line: 1044, column: 9, scope: !996, inlinedAt: !2771)
!2986 = !DILocation(line: 1044, column: 9, scope: !2987, inlinedAt: !2771)
!2987 = !DILexicalBlockFile(scope: !2984, file: !1, discriminator: 3)
!2988 = !DILocation(line: 1047, column: 39, scope: !999, inlinedAt: !2771)
!2989 = !DILocation(line: 1047, column: 14, scope: !999, inlinedAt: !2771)
!2990 = !DILocation(line: 1047, column: 14, scope: !966, inlinedAt: !2771)
!2991 = !DILocation(line: 1049, column: 17, scope: !998, inlinedAt: !2771)
!2992 = !DILocation(line: 1050, column: 13, scope: !2993, inlinedAt: !2771)
!2993 = distinct !DILexicalBlock(scope: !998, file: !1, line: 1050, column: 13)
!2994 = !DILocation(line: 1050, column: 13, scope: !998, inlinedAt: !2771)
!2995 = !DILocation(line: 1052, column: 13, scope: !2996, inlinedAt: !2771)
!2996 = distinct !DILexicalBlock(scope: !998, file: !1, line: 1052, column: 13)
!2997 = !DILocation(line: 1052, column: 13, scope: !998, inlinedAt: !2771)
!2998 = !DILocation(line: 1054, column: 24, scope: !2999, inlinedAt: !2771)
!2999 = distinct !DILexicalBlock(scope: !998, file: !1, line: 1054, column: 13)
!3000 = !DILocation(line: 1054, column: 22, scope: !2999, inlinedAt: !2771)
!3001 = !DILocation(line: 1054, column: 13, scope: !998, inlinedAt: !2771)
!3002 = !DILocation(line: 1056, column: 35, scope: !1004, inlinedAt: !2771)
!3003 = !DILocation(line: 1048, column: 24, scope: !998, inlinedAt: !2771)
!3004 = !DILocation(line: 1056, column: 17, scope: !1004, inlinedAt: !2771)
!3005 = !DILocation(line: 1056, column: 13, scope: !998, inlinedAt: !2771)
!3006 = !DILocation(line: 1057, column: 13, scope: !3007, inlinedAt: !2771)
!3007 = !DILexicalBlockFile(scope: !1002, file: !1, discriminator: 1)
!3008 = !DILocation(line: 1057, column: 13, scope: !3009, inlinedAt: !2771)
!3009 = distinct !DILexicalBlock(scope: !1002, file: !1, line: 1057, column: 13)
!3010 = !DILocation(line: 1057, column: 13, scope: !1002, inlinedAt: !2771)
!3011 = !DILocation(line: 1057, column: 13, scope: !3012, inlinedAt: !2771)
!3012 = !DILexicalBlockFile(scope: !3009, file: !1, discriminator: 3)
!3013 = !DILocation(line: 1060, column: 24, scope: !1008, inlinedAt: !2771)
!3014 = !DILocation(line: 1060, column: 22, scope: !1008, inlinedAt: !2771)
!3015 = !DILocation(line: 1060, column: 13, scope: !998, inlinedAt: !2771)
!3016 = !DILocation(line: 1061, column: 13, scope: !3017, inlinedAt: !2771)
!3017 = !DILexicalBlockFile(scope: !1006, file: !1, discriminator: 1)
!3018 = !DILocation(line: 1061, column: 13, scope: !3019, inlinedAt: !2771)
!3019 = distinct !DILexicalBlock(scope: !1006, file: !1, line: 1061, column: 13)
!3020 = !DILocation(line: 1061, column: 13, scope: !1006, inlinedAt: !2771)
!3021 = !DILocation(line: 1061, column: 13, scope: !3022, inlinedAt: !2771)
!3022 = !DILexicalBlockFile(scope: !3019, file: !1, discriminator: 3)
!3023 = !DILocation(line: 1064, column: 26, scope: !1012, inlinedAt: !2771)
!3024 = !DILocation(line: 1064, column: 24, scope: !1012, inlinedAt: !2771)
!3025 = !DILocation(line: 1064, column: 13, scope: !998, inlinedAt: !2771)
!3026 = !DILocation(line: 1065, column: 13, scope: !3027, inlinedAt: !2771)
!3027 = !DILexicalBlockFile(scope: !1010, file: !1, discriminator: 1)
!3028 = !DILocation(line: 1065, column: 13, scope: !3029, inlinedAt: !2771)
!3029 = distinct !DILexicalBlock(scope: !1010, file: !1, line: 1065, column: 13)
!3030 = !DILocation(line: 1065, column: 13, scope: !1010, inlinedAt: !2771)
!3031 = !DILocation(line: 1065, column: 13, scope: !3032, inlinedAt: !2771)
!3032 = !DILexicalBlockFile(scope: !3029, file: !1, discriminator: 3)
!3033 = !DILocation(line: 1066, column: 13, scope: !3034, inlinedAt: !2771)
!3034 = !DILexicalBlockFile(scope: !1014, file: !1, discriminator: 1)
!3035 = !DILocation(line: 1066, column: 13, scope: !3036, inlinedAt: !2771)
!3036 = distinct !DILexicalBlock(scope: !1014, file: !1, line: 1066, column: 13)
!3037 = !DILocation(line: 1066, column: 13, scope: !1014, inlinedAt: !2771)
!3038 = !DILocation(line: 1066, column: 13, scope: !3039, inlinedAt: !2771)
!3039 = !DILexicalBlockFile(scope: !3036, file: !1, discriminator: 3)
!3040 = !DILocation(line: 1069, column: 16, scope: !998, inlinedAt: !2771)
!3041 = !DILocation(line: 1070, column: 9, scope: !3042, inlinedAt: !2771)
!3042 = !DILexicalBlockFile(scope: !1016, file: !1, discriminator: 1)
!3043 = !DILocation(line: 1070, column: 9, scope: !3044, inlinedAt: !2771)
!3044 = distinct !DILexicalBlock(scope: !1016, file: !1, line: 1070, column: 9)
!3045 = !DILocation(line: 1070, column: 9, scope: !1016, inlinedAt: !2771)
!3046 = !DILocation(line: 1070, column: 9, scope: !3047, inlinedAt: !2771)
!3047 = !DILexicalBlockFile(scope: !3044, file: !1, discriminator: 3)
!3048 = !DILocation(line: 1074, column: 14, scope: !998, inlinedAt: !2771)
!3049 = !DILocation(line: 1074, column: 11, scope: !998, inlinedAt: !2771)
!3050 = !DILocation(line: 1075, column: 13, scope: !3051, inlinedAt: !2771)
!3051 = distinct !DILexicalBlock(scope: !998, file: !1, line: 1075, column: 13)
!3052 = !DILocation(line: 1075, column: 38, scope: !3051, inlinedAt: !2771)
!3053 = !DILocation(line: 1109, column: 51, scope: !998, inlinedAt: !2771)
!3054 = !DILocation(line: 1075, column: 49, scope: !3051, inlinedAt: !2771)
!3055 = !DILocation(line: 1075, column: 46, scope: !3051, inlinedAt: !2771)
!3056 = !DILocation(line: 1075, column: 13, scope: !998, inlinedAt: !2771)
!3057 = !DILocation(line: 1076, column: 13, scope: !3058, inlinedAt: !2771)
!3058 = distinct !DILexicalBlock(scope: !3051, file: !1, line: 1075, column: 61)
!3059 = !DILocation(line: 1078, column: 22, scope: !3060, inlinedAt: !2771)
!3060 = distinct !DILexicalBlock(scope: !3061, file: !1, line: 1078, column: 21)
!3061 = distinct !DILexicalBlock(scope: !3058, file: !1, line: 1076, column: 27)
!3062 = !DILocation(line: 1078, column: 27, scope: !3060, inlinedAt: !2771)
!3063 = !DILocation(line: 1078, column: 35, scope: !3060, inlinedAt: !2771)
!3064 = !DILocation(line: 1078, column: 43, scope: !3060, inlinedAt: !2771)
!3065 = !DILocation(line: 1079, column: 22, scope: !3060, inlinedAt: !2771)
!3066 = !DILocation(line: 1079, column: 27, scope: !3060, inlinedAt: !2771)
!3067 = !DILocation(line: 1079, column: 35, scope: !3060, inlinedAt: !2771)
!3068 = !DILocation(line: 1079, column: 43, scope: !3060, inlinedAt: !2771)
!3069 = !DILocation(line: 1080, column: 22, scope: !3060, inlinedAt: !2771)
!3070 = !DILocation(line: 1080, column: 27, scope: !3060, inlinedAt: !2771)
!3071 = !DILocation(line: 1080, column: 35, scope: !3060, inlinedAt: !2771)
!3072 = !DILocation(line: 1078, column: 21, scope: !3061, inlinedAt: !2771)
!3073 = !DILocation(line: 1082, column: 41, scope: !3074, inlinedAt: !2771)
!3074 = distinct !DILexicalBlock(scope: !3060, file: !1, line: 1080, column: 44)
!3075 = !DILocation(line: 1082, column: 65, scope: !3074, inlinedAt: !2771)
!3076 = !DILocation(line: 1082, column: 48, scope: !3074, inlinedAt: !2771)
!3077 = !DILocation(line: 1082, column: 79, scope: !3074, inlinedAt: !2771)
!3078 = !DILocation(line: 1082, column: 71, scope: !3074, inlinedAt: !2771)
!3079 = !DILocation(line: 1083, column: 17, scope: !3074, inlinedAt: !2771)
!3080 = !DILocation(line: 1086, column: 22, scope: !3061, inlinedAt: !2771)
!3081 = !DILocation(line: 1086, column: 27, scope: !3061, inlinedAt: !2771)
!3082 = !DILocation(line: 1086, column: 34, scope: !3061, inlinedAt: !2771)
!3083 = !DILocation(line: 1086, column: 32, scope: !3061, inlinedAt: !2771)
!3084 = !DILocation(line: 1087, column: 17, scope: !3061, inlinedAt: !2771)
!3085 = !DILocation(line: 1089, column: 22, scope: !3061, inlinedAt: !2771)
!3086 = !DILocation(line: 1089, column: 27, scope: !3061, inlinedAt: !2771)
!3087 = !DILocation(line: 1089, column: 34, scope: !3061, inlinedAt: !2771)
!3088 = !DILocation(line: 1089, column: 32, scope: !3061, inlinedAt: !2771)
!3089 = !DILocation(line: 1090, column: 17, scope: !3061, inlinedAt: !2771)
!3090 = !DILocation(line: 1092, column: 23, scope: !3061, inlinedAt: !2771)
!3091 = !DILocation(line: 1092, column: 28, scope: !3061, inlinedAt: !2771)
!3092 = !DILocation(line: 1092, column: 38, scope: !3061, inlinedAt: !2771)
!3093 = !DILocation(line: 1092, column: 43, scope: !3061, inlinedAt: !2771)
!3094 = !DILocation(line: 1092, column: 35, scope: !3061, inlinedAt: !2771)
!3095 = !DILocation(line: 1092, column: 53, scope: !3061, inlinedAt: !2771)
!3096 = !DILocation(line: 1092, column: 58, scope: !3061, inlinedAt: !2771)
!3097 = !DILocation(line: 1092, column: 50, scope: !3061, inlinedAt: !2771)
!3098 = !DILocation(line: 1092, column: 66, scope: !3061, inlinedAt: !2771)
!3099 = !DILocation(line: 1092, column: 64, scope: !3061, inlinedAt: !2771)
!3100 = !DILocation(line: 1093, column: 17, scope: !3061, inlinedAt: !2771)
!3101 = !DILocation(line: 1095, column: 23, scope: !3061, inlinedAt: !2771)
!3102 = !DILocation(line: 1095, column: 28, scope: !3061, inlinedAt: !2771)
!3103 = !DILocation(line: 1095, column: 38, scope: !3061, inlinedAt: !2771)
!3104 = !DILocation(line: 1095, column: 43, scope: !3061, inlinedAt: !2771)
!3105 = !DILocation(line: 1095, column: 35, scope: !3061, inlinedAt: !2771)
!3106 = !DILocation(line: 1095, column: 53, scope: !3061, inlinedAt: !2771)
!3107 = !DILocation(line: 1095, column: 58, scope: !3061, inlinedAt: !2771)
!3108 = !DILocation(line: 1095, column: 50, scope: !3061, inlinedAt: !2771)
!3109 = !DILocation(line: 1095, column: 66, scope: !3061, inlinedAt: !2771)
!3110 = !DILocation(line: 1095, column: 64, scope: !3061, inlinedAt: !2771)
!3111 = !DILocation(line: 1096, column: 17, scope: !3061, inlinedAt: !2771)
!3112 = !DILocation(line: 1100, column: 9, scope: !3113, inlinedAt: !2771)
!3113 = !DILexicalBlockFile(scope: !1018, file: !1, discriminator: 1)
!3114 = !DILocation(line: 1100, column: 9, scope: !3115, inlinedAt: !2771)
!3115 = distinct !DILexicalBlock(scope: !1018, file: !1, line: 1100, column: 9)
!3116 = !DILocation(line: 1100, column: 9, scope: !1018, inlinedAt: !2771)
!3117 = !DILocation(line: 1100, column: 9, scope: !3118, inlinedAt: !2771)
!3118 = !DILexicalBlockFile(scope: !3115, file: !1, discriminator: 3)
!3119 = !DILocation(line: 1101, column: 14, scope: !3120, inlinedAt: !2771)
!3120 = distinct !DILexicalBlock(scope: !998, file: !1, line: 1101, column: 13)
!3121 = !DILocation(line: 1103, column: 29, scope: !3122, inlinedAt: !2771)
!3122 = distinct !DILexicalBlock(scope: !3120, file: !1, line: 1101, column: 43)
!3123 = !DILocation(line: 1103, column: 13, scope: !3122, inlinedAt: !2771)
!3124 = !DILocation(line: 1104, column: 13, scope: !3122, inlinedAt: !2771)
!3125 = !DILocation(line: 1106, column: 15, scope: !998, inlinedAt: !2771)
!3126 = !DILocation(line: 1107, column: 17, scope: !3127, inlinedAt: !2771)
!3127 = distinct !DILexicalBlock(scope: !998, file: !1, line: 1107, column: 13)
!3128 = !DILocation(line: 1107, column: 13, scope: !998, inlinedAt: !2771)
!3129 = !DILocation(line: 1109, column: 43, scope: !998, inlinedAt: !2771)
!3130 = !DILocation(line: 1109, column: 49, scope: !998, inlinedAt: !2771)
!3131 = !DILocation(line: 1109, column: 16, scope: !998, inlinedAt: !2771)
!3132 = !DILocation(line: 1109, column: 9, scope: !998, inlinedAt: !2771)
!3133 = !DILocation(line: 636, column: 44, scope: !891, inlinedAt: !3134)
!3134 = distinct !DILocation(line: 1112, column: 9, scope: !3135, inlinedAt: !2771)
!3135 = distinct !DILexicalBlock(scope: !999, file: !1, line: 1111, column: 10)
!3136 = !DILocation(line: 640, column: 22, scope: !891, inlinedAt: !3134)
!3137 = !DILocation(line: 640, column: 15, scope: !891, inlinedAt: !3134)
!3138 = !DILocation(line: 641, column: 14, scope: !897, inlinedAt: !3134)
!3139 = !DILocation(line: 641, column: 9, scope: !891, inlinedAt: !3134)
!3140 = !DILocation(line: 642, column: 26, scope: !896, inlinedAt: !3134)
!3141 = !DILocation(line: 642, column: 19, scope: !896, inlinedAt: !3134)
!3142 = !DILocation(line: 643, column: 9, scope: !2111, inlinedAt: !3134)
!3143 = !DILocation(line: 643, column: 9, scope: !2113, inlinedAt: !3134)
!3144 = !DILocation(line: 643, column: 9, scope: !899, inlinedAt: !3134)
!3145 = !DILocation(line: 643, column: 9, scope: !2116, inlinedAt: !3134)
!3146 = !DILocation(line: 1112, column: 9, scope: !3135, inlinedAt: !2771)
!3147 = !DILocation(line: 644, column: 18, scope: !903, inlinedAt: !3134)
!3148 = !DILocation(line: 644, column: 13, scope: !896, inlinedAt: !3134)
!3149 = !DILocation(line: 645, column: 26, scope: !902, inlinedAt: !3134)
!3150 = !DILocation(line: 645, column: 13, scope: !902, inlinedAt: !3134)
!3151 = !DILocation(line: 647, column: 13, scope: !2123, inlinedAt: !3134)
!3152 = !DILocation(line: 647, column: 13, scope: !2125, inlinedAt: !3134)
!3153 = !DILocation(line: 647, column: 13, scope: !901, inlinedAt: !3134)
!3154 = !DILocation(line: 647, column: 13, scope: !2128, inlinedAt: !3134)
!3155 = !DILocation(line: 1115, column: 1, scope: !951, inlinedAt: !2771)
!3156 = !DILocation(line: 1228, column: 5, scope: !947)
!3157 = !DILocation(line: 1231, column: 51, scope: !1026)
!3158 = !DILocation(line: 1231, column: 67, scope: !1026)
!3159 = !DILocation(line: 1118, column: 41, scope: !1030, inlinedAt: !3160)
!3160 = distinct !DILocation(line: 1233, column: 12, scope: !1026)
!3161 = !DILocation(line: 1123, column: 5, scope: !1030, inlinedAt: !3160)
!3162 = !DILocation(line: 1124, column: 5, scope: !1030, inlinedAt: !3160)
!3163 = !DILocation(line: 1126, column: 34, scope: !1041, inlinedAt: !3160)
!3164 = !DILocation(line: 1126, column: 9, scope: !1041, inlinedAt: !3160)
!3165 = !DILocation(line: 1126, column: 9, scope: !1030, inlinedAt: !3160)
!3166 = !DILocation(line: 1123, column: 16, scope: !1030, inlinedAt: !3160)
!3167 = !DILocation(line: 1128, column: 13, scope: !3168, inlinedAt: !3160)
!3168 = distinct !DILexicalBlock(scope: !1040, file: !1, line: 1128, column: 13)
!3169 = !DILocation(line: 1128, column: 13, scope: !1040, inlinedAt: !3160)
!3170 = !DILocation(line: 1124, column: 16, scope: !1030, inlinedAt: !3160)
!3171 = !DILocation(line: 1130, column: 13, scope: !3172, inlinedAt: !3160)
!3172 = distinct !DILexicalBlock(scope: !1040, file: !1, line: 1130, column: 13)
!3173 = !DILocation(line: 1130, column: 13, scope: !1040, inlinedAt: !3160)
!3174 = !DILocation(line: 1132, column: 24, scope: !3175, inlinedAt: !3160)
!3175 = distinct !DILexicalBlock(scope: !1040, file: !1, line: 1132, column: 13)
!3176 = !DILocation(line: 1121, column: 15, scope: !1030, inlinedAt: !3160)
!3177 = !DILocation(line: 1132, column: 22, scope: !3175, inlinedAt: !3160)
!3178 = !DILocation(line: 1132, column: 13, scope: !1040, inlinedAt: !3160)
!3179 = !DILocation(line: 1134, column: 47, scope: !1040, inlinedAt: !3160)
!3180 = !DILocation(line: 1134, column: 51, scope: !1040, inlinedAt: !3160)
!3181 = !DILocation(line: 1134, column: 50, scope: !1040, inlinedAt: !3160)
!3182 = !DILocation(line: 1134, column: 15, scope: !1040, inlinedAt: !3160)
!3183 = !DILocation(line: 1125, column: 15, scope: !1030, inlinedAt: !3160)
!3184 = !DILocation(line: 1135, column: 14, scope: !1045, inlinedAt: !3160)
!3185 = !DILocation(line: 1135, column: 13, scope: !1040, inlinedAt: !3160)
!3186 = !DILocation(line: 1136, column: 13, scope: !3187, inlinedAt: !3160)
!3187 = !DILexicalBlockFile(scope: !1043, file: !1, discriminator: 1)
!3188 = !DILocation(line: 1136, column: 13, scope: !3189, inlinedAt: !3160)
!3189 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 1136, column: 13)
!3190 = !DILocation(line: 1136, column: 13, scope: !1043, inlinedAt: !3160)
!3191 = !DILocation(line: 1136, column: 13, scope: !3192, inlinedAt: !3160)
!3192 = !DILexicalBlockFile(scope: !3189, file: !1, discriminator: 3)
!3193 = !DILocation(line: 1233, column: 12, scope: !1026)
!3194 = !DILocation(line: 1139, column: 16, scope: !1040, inlinedAt: !3160)
!3195 = !DILocation(line: 1127, column: 15, scope: !1040, inlinedAt: !3160)
!3196 = !DILocation(line: 1140, column: 18, scope: !1049, inlinedAt: !3160)
!3197 = !DILocation(line: 1122, column: 16, scope: !1030, inlinedAt: !3160)
!3198 = !DILocation(line: 1140, column: 29, scope: !1048, inlinedAt: !3160)
!3199 = !DILocation(line: 1140, column: 27, scope: !1048, inlinedAt: !3160)
!3200 = !DILocation(line: 1140, column: 9, scope: !1049, inlinedAt: !3160)
!3201 = !DILocation(line: 1142, column: 26, scope: !1047, inlinedAt: !3160)
!3202 = !DILocation(line: 1142, column: 26, scope: !3203, inlinedAt: !3160)
!3203 = !DILexicalBlockFile(scope: !1047, file: !1, discriminator: 4)
!3204 = !DILocation(line: 1142, column: 26, scope: !3205, inlinedAt: !3160)
!3205 = !DILexicalBlockFile(scope: !1047, file: !1, discriminator: 5)
!3206 = !DILocation(line: 1142, column: 26, scope: !3207, inlinedAt: !3160)
!3207 = !DILexicalBlockFile(scope: !1047, file: !1, discriminator: 6)
!3208 = !DILocation(line: 1142, column: 26, scope: !3209, inlinedAt: !3160)
!3209 = !DILexicalBlockFile(scope: !1047, file: !1, discriminator: 1)
!3210 = !DILocation(line: 1142, column: 26, scope: !3211, inlinedAt: !3160)
!3211 = !DILexicalBlockFile(scope: !1047, file: !1, discriminator: 3)
!3212 = !DILocation(line: 1142, column: 26, scope: !3213, inlinedAt: !3160)
!3213 = !DILexicalBlockFile(scope: !3214, file: !1, discriminator: 10)
!3214 = !DILexicalBlockFile(scope: !1047, file: !1, discriminator: 9)
!3215 = !DILocation(line: 1142, column: 26, scope: !3216, inlinedAt: !3160)
!3216 = !DILexicalBlockFile(scope: !1047, file: !1, discriminator: 2)
!3217 = !DILocation(line: 1142, column: 26, scope: !3218, inlinedAt: !3160)
!3218 = !DILexicalBlockFile(scope: !1047, file: !1, discriminator: 12)
!3219 = !DILocation(line: 1142, column: 26, scope: !3220, inlinedAt: !3160)
!3220 = !DILexicalBlockFile(scope: !1047, file: !1, discriminator: 14)
!3221 = !DILocation(line: 1142, column: 26, scope: !3222, inlinedAt: !3160)
!3222 = !DILexicalBlockFile(scope: !1047, file: !1, discriminator: 15)
!3223 = !DILocation(line: 1142, column: 26, scope: !3224, inlinedAt: !3160)
!3224 = !DILexicalBlockFile(scope: !3225, file: !1, discriminator: 21)
!3225 = !DILexicalBlockFile(scope: !1047, file: !1, discriminator: 20)
!3226 = !DILocation(line: 1142, column: 26, scope: !3227, inlinedAt: !3160)
!3227 = !DILexicalBlockFile(scope: !1047, file: !1, discriminator: 13)
!3228 = !DILocation(line: 1142, column: 26, scope: !3229, inlinedAt: !3160)
!3229 = !DILexicalBlockFile(scope: !1047, file: !1, discriminator: 23)
!3230 = !DILocation(line: 1142, column: 26, scope: !3231, inlinedAt: !3160)
!3231 = !DILexicalBlockFile(scope: !1047, file: !1, discriminator: 24)
!3232 = !DILocation(line: 1142, column: 26, scope: !3233, inlinedAt: !3160)
!3233 = !DILexicalBlockFile(scope: !3234, file: !1, discriminator: 30)
!3234 = !DILexicalBlockFile(scope: !1047, file: !1, discriminator: 29)
!3235 = !DILocation(line: 1142, column: 21, scope: !1047, inlinedAt: !3160)
!3236 = !DILocation(line: 1143, column: 29, scope: !1053, inlinedAt: !3160)
!3237 = !DILocation(line: 1145, column: 33, scope: !1052, inlinedAt: !3160)
!3238 = !DILocation(line: 1145, column: 17, scope: !1052, inlinedAt: !3160)
!3239 = !DILocation(line: 1146, column: 17, scope: !3240, inlinedAt: !3160)
!3240 = !DILexicalBlockFile(scope: !1051, file: !1, discriminator: 1)
!3241 = !DILocation(line: 1146, column: 17, scope: !3242, inlinedAt: !3160)
!3242 = distinct !DILexicalBlock(scope: !1051, file: !1, line: 1146, column: 17)
!3243 = !DILocation(line: 1146, column: 17, scope: !1051, inlinedAt: !3160)
!3244 = !DILocation(line: 1146, column: 17, scope: !3245, inlinedAt: !3160)
!3245 = !DILexicalBlockFile(scope: !3242, file: !1, discriminator: 3)
!3246 = !DILocation(line: 1147, column: 17, scope: !3247, inlinedAt: !3160)
!3247 = !DILexicalBlockFile(scope: !1055, file: !1, discriminator: 1)
!3248 = !DILocation(line: 1147, column: 17, scope: !3249, inlinedAt: !3160)
!3249 = distinct !DILexicalBlock(scope: !1055, file: !1, line: 1147, column: 17)
!3250 = !DILocation(line: 1147, column: 17, scope: !1055, inlinedAt: !3160)
!3251 = !DILocation(line: 1147, column: 17, scope: !3252, inlinedAt: !3160)
!3252 = !DILexicalBlockFile(scope: !3249, file: !1, discriminator: 3)
!3253 = !DILocation(line: 1150, column: 23, scope: !1047, inlinedAt: !3160)
!3254 = !DILocation(line: 1150, column: 18, scope: !1047, inlinedAt: !3160)
!3255 = !DILocation(line: 1150, column: 21, scope: !1047, inlinedAt: !3160)
!3256 = !DILocation(line: 1140, column: 35, scope: !1048, inlinedAt: !3160)
!3257 = !DILocation(line: 1152, column: 20, scope: !1040, inlinedAt: !3160)
!3258 = !DILocation(line: 1120, column: 15, scope: !1030, inlinedAt: !3160)
!3259 = !DILocation(line: 1153, column: 9, scope: !3260, inlinedAt: !3160)
!3260 = !DILexicalBlockFile(scope: !1057, file: !1, discriminator: 1)
!3261 = !DILocation(line: 1153, column: 9, scope: !3262, inlinedAt: !3160)
!3262 = distinct !DILexicalBlock(scope: !1057, file: !1, line: 1153, column: 9)
!3263 = !DILocation(line: 1153, column: 9, scope: !1057, inlinedAt: !3160)
!3264 = !DILocation(line: 1153, column: 9, scope: !3265, inlinedAt: !3160)
!3265 = !DILexicalBlockFile(scope: !3262, file: !1, discriminator: 3)
!3266 = !DILocation(line: 1154, column: 9, scope: !3267, inlinedAt: !3160)
!3267 = !DILexicalBlockFile(scope: !1059, file: !1, discriminator: 1)
!3268 = !DILocation(line: 1154, column: 9, scope: !3269, inlinedAt: !3160)
!3269 = distinct !DILexicalBlock(scope: !1059, file: !1, line: 1154, column: 9)
!3270 = !DILocation(line: 1154, column: 9, scope: !1059, inlinedAt: !3160)
!3271 = !DILocation(line: 1154, column: 9, scope: !3272, inlinedAt: !3160)
!3272 = !DILexicalBlockFile(scope: !3269, file: !1, discriminator: 3)
!3273 = !DILocation(line: 1157, column: 39, scope: !1062, inlinedAt: !3160)
!3274 = !DILocation(line: 1157, column: 14, scope: !1062, inlinedAt: !3160)
!3275 = !DILocation(line: 1157, column: 14, scope: !1041, inlinedAt: !3160)
!3276 = !DILocation(line: 1160, column: 9, scope: !1061, inlinedAt: !3160)
!3277 = !DILocation(line: 1161, column: 13, scope: !1061, inlinedAt: !3160)
!3278 = !DILocation(line: 1162, column: 13, scope: !3279, inlinedAt: !3160)
!3279 = distinct !DILexicalBlock(scope: !1061, file: !1, line: 1162, column: 13)
!3280 = !DILocation(line: 1162, column: 13, scope: !1061, inlinedAt: !3160)
!3281 = !DILocation(line: 1164, column: 13, scope: !3282, inlinedAt: !3160)
!3282 = distinct !DILexicalBlock(scope: !1061, file: !1, line: 1164, column: 13)
!3283 = !DILocation(line: 1164, column: 13, scope: !1061, inlinedAt: !3160)
!3284 = !DILocation(line: 1166, column: 24, scope: !3285, inlinedAt: !3160)
!3285 = distinct !DILexicalBlock(scope: !1061, file: !1, line: 1166, column: 13)
!3286 = !DILocation(line: 1166, column: 22, scope: !3285, inlinedAt: !3160)
!3287 = !DILocation(line: 1166, column: 13, scope: !1061, inlinedAt: !3160)
!3288 = !DILocation(line: 1168, column: 35, scope: !1072, inlinedAt: !3160)
!3289 = !DILocation(line: 1159, column: 24, scope: !1061, inlinedAt: !3160)
!3290 = !DILocation(line: 1168, column: 17, scope: !1072, inlinedAt: !3160)
!3291 = !DILocation(line: 1168, column: 13, scope: !1061, inlinedAt: !3160)
!3292 = !DILocation(line: 1172, column: 43, scope: !1061, inlinedAt: !3160)
!3293 = !DILocation(line: 1172, column: 47, scope: !1061, inlinedAt: !3160)
!3294 = !DILocation(line: 1172, column: 46, scope: !1061, inlinedAt: !3160)
!3295 = !DILocation(line: 1172, column: 41, scope: !1061, inlinedAt: !3160)
!3296 = !DILocation(line: 1172, column: 9, scope: !3297, inlinedAt: !3160)
!3297 = !DILexicalBlockFile(scope: !1061, file: !1, discriminator: 3)
!3298 = !DILocation(line: 1169, column: 13, scope: !3299, inlinedAt: !3160)
!3299 = !DILexicalBlockFile(scope: !1070, file: !1, discriminator: 1)
!3300 = !DILocation(line: 1169, column: 13, scope: !3301, inlinedAt: !3160)
!3301 = distinct !DILexicalBlock(scope: !1070, file: !1, line: 1169, column: 13)
!3302 = !DILocation(line: 1169, column: 13, scope: !1070, inlinedAt: !3160)
!3303 = !DILocation(line: 1169, column: 13, scope: !3304, inlinedAt: !3160)
!3304 = !DILexicalBlockFile(scope: !3301, file: !1, discriminator: 3)
!3305 = !DILocation(line: 1174, column: 17, scope: !3306, inlinedAt: !3160)
!3306 = distinct !DILexicalBlock(scope: !3307, file: !1, line: 1174, column: 17)
!3307 = distinct !DILexicalBlock(scope: !1061, file: !1, line: 1172, column: 54)
!3308 = !DILocation(line: 1174, column: 35, scope: !3306, inlinedAt: !3160)
!3309 = !DILocation(line: 1174, column: 17, scope: !3307, inlinedAt: !3160)
!3310 = !DILocation(line: 1176, column: 35, scope: !3307, inlinedAt: !3160)
!3311 = !DILocation(line: 1176, column: 13, scope: !3307, inlinedAt: !3160)
!3312 = !DILocation(line: 1176, column: 26, scope: !3307, inlinedAt: !3160)
!3313 = !DILocation(line: 1179, column: 9, scope: !3314, inlinedAt: !3160)
!3314 = !DILexicalBlockFile(scope: !1074, file: !1, discriminator: 1)
!3315 = !DILocation(line: 1179, column: 9, scope: !3316, inlinedAt: !3160)
!3316 = distinct !DILexicalBlock(scope: !1074, file: !1, line: 1179, column: 9)
!3317 = !DILocation(line: 1179, column: 9, scope: !1074, inlinedAt: !3160)
!3318 = !DILocation(line: 1179, column: 9, scope: !3319, inlinedAt: !3160)
!3319 = !DILexicalBlockFile(scope: !3316, file: !1, discriminator: 3)
!3320 = !DILocation(line: 1180, column: 14, scope: !3321, inlinedAt: !3160)
!3321 = distinct !DILexicalBlock(scope: !1061, file: !1, line: 1180, column: 13)
!3322 = !DILocation(line: 1180, column: 13, scope: !1061, inlinedAt: !3160)
!3323 = !DILocation(line: 1182, column: 29, scope: !3324, inlinedAt: !3160)
!3324 = distinct !DILexicalBlock(scope: !3321, file: !1, line: 1180, column: 24)
!3325 = !DILocation(line: 1182, column: 13, scope: !3324, inlinedAt: !3160)
!3326 = !DILocation(line: 1183, column: 13, scope: !3324, inlinedAt: !3160)
!3327 = !DILocation(line: 1185, column: 67, scope: !1061, inlinedAt: !3160)
!3328 = !DILocation(line: 1185, column: 15, scope: !1061, inlinedAt: !3160)
!3329 = !DILocation(line: 1158, column: 19, scope: !1061, inlinedAt: !3160)
!3330 = !DILocation(line: 1186, column: 17, scope: !3331, inlinedAt: !3160)
!3331 = distinct !DILexicalBlock(scope: !1061, file: !1, line: 1186, column: 13)
!3332 = !DILocation(line: 1186, column: 13, scope: !1061, inlinedAt: !3160)
!3333 = !DILocation(line: 1188, column: 43, scope: !1061, inlinedAt: !3160)
!3334 = !DILocation(line: 1188, column: 48, scope: !1061, inlinedAt: !3160)
!3335 = !DILocation(line: 1188, column: 16, scope: !1061, inlinedAt: !3160)
!3336 = !DILocation(line: 1188, column: 9, scope: !1061, inlinedAt: !3160)
!3337 = !DILocation(line: 1189, column: 5, scope: !1062, inlinedAt: !3160)
!3338 = !DILocation(line: 636, column: 44, scope: !891, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 1191, column: 9, scope: !3340, inlinedAt: !3160)
!3340 = distinct !DILexicalBlock(scope: !1062, file: !1, line: 1190, column: 10)
!3341 = !DILocation(line: 640, column: 22, scope: !891, inlinedAt: !3339)
!3342 = !DILocation(line: 640, column: 15, scope: !891, inlinedAt: !3339)
!3343 = !DILocation(line: 641, column: 14, scope: !897, inlinedAt: !3339)
!3344 = !DILocation(line: 641, column: 9, scope: !891, inlinedAt: !3339)
!3345 = !DILocation(line: 642, column: 26, scope: !896, inlinedAt: !3339)
!3346 = !DILocation(line: 642, column: 19, scope: !896, inlinedAt: !3339)
!3347 = !DILocation(line: 643, column: 9, scope: !2111, inlinedAt: !3339)
!3348 = !DILocation(line: 643, column: 9, scope: !2113, inlinedAt: !3339)
!3349 = !DILocation(line: 643, column: 9, scope: !899, inlinedAt: !3339)
!3350 = !DILocation(line: 643, column: 9, scope: !2116, inlinedAt: !3339)
!3351 = !DILocation(line: 1191, column: 9, scope: !3340, inlinedAt: !3160)
!3352 = !DILocation(line: 644, column: 18, scope: !903, inlinedAt: !3339)
!3353 = !DILocation(line: 644, column: 13, scope: !896, inlinedAt: !3339)
!3354 = !DILocation(line: 645, column: 26, scope: !902, inlinedAt: !3339)
!3355 = !DILocation(line: 645, column: 13, scope: !902, inlinedAt: !3339)
!3356 = !DILocation(line: 647, column: 13, scope: !2123, inlinedAt: !3339)
!3357 = !DILocation(line: 647, column: 13, scope: !2125, inlinedAt: !3339)
!3358 = !DILocation(line: 647, column: 13, scope: !901, inlinedAt: !3339)
!3359 = !DILocation(line: 647, column: 13, scope: !2128, inlinedAt: !3339)
!3360 = !DILocation(line: 1174, column: 24, scope: !3306, inlinedAt: !3160)
!3361 = !DILocation(line: 1194, column: 1, scope: !1030, inlinedAt: !3160)
!3362 = !DILocation(line: 1160, column: 17, scope: !1061, inlinedAt: !3160)
!3363 = !DILocation(line: 1233, column: 5, scope: !1026)
!3364 = !DILocation(line: 911, column: 35, scope: !1019)
!3365 = !DILocation(line: 911, column: 50, scope: !1019)
!3366 = !DILocation(line: 913, column: 9, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !1019, file: !1, line: 913, column: 9)
!3368 = !DILocation(line: 913, column: 33, scope: !3367)
!3369 = !DILocation(line: 913, column: 40, scope: !3367)
!3370 = !DILocation(line: 914, column: 9, scope: !3367)
!3371 = !DILocation(line: 914, column: 33, scope: !3367)
!3372 = !DILocation(line: 914, column: 40, scope: !3367)
!3373 = !DILocation(line: 915, column: 9, scope: !3367)
!3374 = !DILocation(line: 915, column: 33, scope: !3367)
!3375 = !DILocation(line: 913, column: 9, scope: !1019)
!3376 = !DILocation(line: 916, column: 18, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3367, file: !1, line: 915, column: 41)
!3378 = !DILocation(line: 917, column: 13, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3377, file: !1, line: 917, column: 13)
!3380 = !DILocation(line: 917, column: 30, scope: !3379)
!3381 = !DILocation(line: 918, column: 21, scope: !3379)
!3382 = !DILocation(line: 919, column: 13, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3377, file: !1, line: 919, column: 13)
!3384 = !DILocation(line: 918, column: 13, scope: !3379)
!3385 = !DILocation(line: 938, column: 18, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3383, file: !1, line: 938, column: 18)
!3387 = !DILocation(line: 919, column: 32, scope: !3383)
!3388 = !DILocation(line: 919, column: 35, scope: !3389)
!3389 = !DILexicalBlockFile(scope: !3383, file: !1, discriminator: 1)
!3390 = !DILocation(line: 919, column: 47, scope: !3383)
!3391 = !DILocation(line: 919, column: 13, scope: !3377)
!3392 = !DILocation(line: 920, column: 22, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3383, file: !1, line: 919, column: 55)
!3394 = !DILocation(line: 921, column: 25, scope: !3393)
!3395 = !DILocation(line: 922, column: 17, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3393, file: !1, line: 922, column: 17)
!3397 = !DILocation(line: 922, column: 17, scope: !3393)
!3398 = !DILocation(line: 930, column: 25, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3393, file: !1, line: 929, column: 17)
!3400 = !DILocation(line: 930, column: 17, scope: !3399)
!3401 = !DILocation(line: 931, column: 17, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3393, file: !1, line: 931, column: 17)
!3403 = !DILocation(line: 931, column: 41, scope: !3402)
!3404 = !DILocation(line: 931, column: 48, scope: !3402)
!3405 = !DILocation(line: 931, column: 51, scope: !3406)
!3406 = !DILexicalBlockFile(scope: !3402, file: !1, discriminator: 1)
!3407 = !DILocation(line: 931, column: 63, scope: !3402)
!3408 = !DILocation(line: 931, column: 17, scope: !3393)
!3409 = !DILocation(line: 932, column: 21, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3411, file: !1, line: 932, column: 21)
!3411 = distinct !DILexicalBlock(scope: !3402, file: !1, line: 931, column: 72)
!3412 = !DILocation(line: 932, column: 21, scope: !3411)
!3413 = !DILocation(line: 935, column: 21, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3411, file: !1, line: 934, column: 21)
!3415 = !DILocation(line: 938, column: 40, scope: !3416)
!3416 = !DILexicalBlockFile(scope: !3386, file: !1, discriminator: 1)
!3417 = !DILocation(line: 938, column: 52, scope: !3386)
!3418 = !DILocation(line: 938, column: 18, scope: !3383)
!3419 = !DILocation(line: 939, column: 22, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3386, file: !1, line: 938, column: 60)
!3421 = !DILocation(line: 940, column: 25, scope: !3420)
!3422 = !DILocation(line: 941, column: 17, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3420, file: !1, line: 941, column: 17)
!3424 = !DILocation(line: 941, column: 17, scope: !3420)
!3425 = !DILocation(line: 949, column: 25, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3420, file: !1, line: 948, column: 17)
!3427 = !DILocation(line: 949, column: 17, scope: !3426)
!3428 = !DILocation(line: 950, column: 17, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3420, file: !1, line: 950, column: 17)
!3430 = !DILocation(line: 950, column: 41, scope: !3429)
!3431 = !DILocation(line: 950, column: 48, scope: !3429)
!3432 = !DILocation(line: 950, column: 51, scope: !3433)
!3433 = !DILexicalBlockFile(scope: !3429, file: !1, discriminator: 1)
!3434 = !DILocation(line: 950, column: 63, scope: !3429)
!3435 = !DILocation(line: 950, column: 17, scope: !3420)
!3436 = !DILocation(line: 951, column: 21, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3438, file: !1, line: 951, column: 21)
!3438 = distinct !DILexicalBlock(scope: !3429, file: !1, line: 950, column: 72)
!3439 = !DILocation(line: 951, column: 21, scope: !3438)
!3440 = !DILocation(line: 954, column: 21, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3438, file: !1, line: 953, column: 21)
!3442 = !DILocation(line: 959, column: 17, scope: !1019)
!3443 = !DILocation(line: 960, column: 5, scope: !1019)
!3444 = !DILocation(line: 961, column: 1, scope: !1019)
