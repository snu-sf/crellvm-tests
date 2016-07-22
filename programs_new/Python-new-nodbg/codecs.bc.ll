; ModuleID = './codecs.bc'
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
  store %struct._object* %search_function, %struct._object** %search_function.addr, align 8
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %0 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %0, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %1 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %2 = bitcast %struct._Py_atomic_address* %1 to i8*
  %3 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %2, i32 %3)
  %4 = load i32, i32* %order, align 4
  switch i32 %4, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %5 = load i8**, i8*** %volatile_data, align 8
  %6 = load volatile i8*, i8** %5, align 8
  store i8* %6, i8** %result, align 8
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ]

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.3

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %8 = load i8*, i8** %result, align 8
  store i8* %8, i8** %tmp
  %9 = load i8*, i8** %tmp
  %10 = bitcast i8* %9 to %struct._ts*
  %interp4 = getelementptr inbounds %struct._ts, %struct._ts* %10, i32 0, i32 2
  %11 = load %struct._is*, %struct._is** %interp4, align 8
  store %struct._is* %11, %struct._is** %interp, align 8
  %12 = load %struct._is*, %struct._is** %interp, align 8
  %codec_search_path = getelementptr inbounds %struct._is, %struct._is* %12, i32 0, i32 7
  %13 = load %struct._object*, %struct._object** %codec_search_path, align 8
  %cmp = icmp eq %struct._object* %13, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.epilog.3
  %call = call i32 @_PyCodecRegistry_Init()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %onError

if.end:                                           ; preds = %land.lhs.true, %sw.epilog.3
  %14 = load %struct._object*, %struct._object** %search_function.addr, align 8
  %cmp5 = icmp eq %struct._object* %14, null
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %call7 = call i32 @PyErr_BadArgument()
  br label %onError

if.end.8:                                         ; preds = %if.end
  %15 = load %struct._object*, %struct._object** %search_function.addr, align 8
  %call9 = call i32 @PyCallable_Check(%struct._object* %15)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.8
  %16 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  br label %onError

if.end.12:                                        ; preds = %if.end.8
  %17 = load %struct._is*, %struct._is** %interp, align 8
  %codec_search_path13 = getelementptr inbounds %struct._is, %struct._is* %17, i32 0, i32 7
  %18 = load %struct._object*, %struct._object** %codec_search_path13, align 8
  %19 = load %struct._object*, %struct._object** %search_function.addr, align 8
  %call14 = call i32 @PyList_Append(%struct._object* %18, %struct._object* %19)
  store i32 %call14, i32* %retval
  br label %return

onError:                                          ; preds = %if.then.11, %if.then.6, %if.then
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %onError, %if.end.12
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_ANNOTATE_MEMORY_ORDER(i8* %address, i32 %order) #1 {
entry:
  %address.addr = alloca i8*, align 8
  %order.addr = alloca i32, align 4
  store i8* %address, i8** %address.addr, align 8
  store i32 %order, i32* %order.addr, align 4
  %0 = load i8*, i8** %address.addr, align 8
  %1 = load i32, i32* %order.addr, align 4
  switch i32 %1, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 0, label %sw.bb.1
    i32 1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry, %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.1, %sw.bb
  %2 = load i32, i32* %order.addr, align 4
  switch i32 %2, label %sw.epilog.4 [
    i32 1, label %sw.bb.2
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.2
    i32 0, label %sw.bb.3
    i32 2, label %sw.bb.3
  ]

sw.bb.2:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  br label %sw.epilog.4

sw.bb.3:                                          ; preds = %sw.epilog, %sw.epilog
  br label %sw.epilog.4

sw.epilog.4:                                      ; preds = %sw.epilog, %sw.bb.3, %sw.bb.2
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_thread_fence(i32 %order) #1 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_signal_fence(i32 %order) #1 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

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
  %func = alloca %struct._object*, align 8
  %res = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp51 = alloca %struct._object*, align 8
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %0 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %0, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %1 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %2 = bitcast %struct._Py_atomic_address* %1 to i8*
  %3 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %2, i32 %3)
  %4 = load i32, i32* %order, align 4
  switch i32 %4, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %5 = load i8**, i8*** %volatile_data, align 8
  %6 = load volatile i8*, i8** %5, align 8
  store i8* %6, i8** %result, align 8
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ]

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.3

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %8 = load i8*, i8** %result, align 8
  store i8* %8, i8** %tmp
  %9 = load i8*, i8** %tmp
  %10 = bitcast i8* %9 to %struct._ts*
  %interp4 = getelementptr inbounds %struct._ts, %struct._ts* %10, i32 0, i32 2
  %11 = load %struct._is*, %struct._is** %interp4, align 8
  store %struct._is* %11, %struct._is** %interp, align 8
  %12 = load %struct._is*, %struct._is** %interp, align 8
  %codec_search_path = getelementptr inbounds %struct._is, %struct._is* %12, i32 0, i32 7
  %13 = load %struct._object*, %struct._object** %codec_search_path, align 8
  %cmp = icmp ne %struct._object* %13, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog.3
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.epilog.3
  %call = call %struct._object* @PyList_New(i64 0)
  %14 = load %struct._is*, %struct._is** %interp, align 8
  %codec_search_path7 = getelementptr inbounds %struct._is, %struct._is* %14, i32 0, i32 7
  store %struct._object* %call, %struct._object** %codec_search_path7, align 8
  %call8 = call %struct._object* @PyDict_New()
  %15 = load %struct._is*, %struct._is** %interp, align 8
  %codec_search_cache = getelementptr inbounds %struct._is, %struct._is* %15, i32 0, i32 8
  store %struct._object* %call8, %struct._object** %codec_search_cache, align 8
  %call9 = call %struct._object* @PyDict_New()
  %16 = load %struct._is*, %struct._is** %interp, align 8
  %codec_error_registry = getelementptr inbounds %struct._is, %struct._is* %16, i32 0, i32 9
  store %struct._object* %call9, %struct._object** %codec_error_registry, align 8
  %17 = load %struct._is*, %struct._is** %interp, align 8
  %codec_error_registry10 = getelementptr inbounds %struct._is, %struct._is* %17, i32 0, i32 9
  %18 = load %struct._object*, %struct._object** %codec_error_registry10, align 8
  %tobool = icmp ne %struct._object* %18, null
  br i1 %tobool, label %if.then.11, label %if.end.31

if.then.11:                                       ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.11
  %19 = load i32, i32* %i, align 4
  %conv = zext i32 %19 to i64
  %cmp12 = icmp ult i64 %conv, 7
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %i, align 4
  %idxprom = zext i32 %20 to i64
  %arrayidx = getelementptr [7 x %struct.anon.0], [7 x %struct.anon.0]* @_PyCodecRegistry_Init.methods, i32 0, i64 %idxprom
  %def = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx, i32 0, i32 1
  %call15 = call %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef* %def, %struct._object* null, %struct._object* null)
  store %struct._object* %call15, %struct._object** %func, align 8
  %21 = load %struct._object*, %struct._object** %func, align 8
  %tobool17 = icmp ne %struct._object* %21, null
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %for.body
  call void @Py_FatalError(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.45, i32 0, i32 0)) #6
  unreachable

if.end.19:                                        ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %idxprom20 = zext i32 %22 to i64
  %arrayidx21 = getelementptr [7 x %struct.anon.0], [7 x %struct.anon.0]* @_PyCodecRegistry_Init.methods, i32 0, i64 %idxprom20
  %name = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx21, i32 0, i32 0
  %23 = load i8*, i8** %name, align 8
  %24 = load %struct._object*, %struct._object** %func, align 8
  %call22 = call i32 @PyCodec_RegisterError(i8* %23, %struct._object* %24)
  store i32 %call22, i32* %res, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.19
  %25 = load %struct._object*, %struct._object** %func, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %27, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp24 = icmp ne i64 %dec, 0
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %do.body
  br label %if.end.27

if.else:                                          ; preds = %do.body
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %30(%struct._object* %31)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.26
  br label %do.end

do.end:                                           ; preds = %if.end.27
  %32 = load i32, i32* %res, align 4
  %tobool28 = icmp ne i32 %32, 0
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %do.end
  call void @Py_FatalError(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.45, i32 0, i32 0)) #6
  unreachable

if.end.30:                                        ; preds = %do.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %33 = load i32, i32* %i, align 4
  %inc = add i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.31

if.end.31:                                        ; preds = %for.end, %if.end
  %34 = load %struct._is*, %struct._is** %interp, align 8
  %codec_search_path32 = getelementptr inbounds %struct._is, %struct._is* %34, i32 0, i32 7
  %35 = load %struct._object*, %struct._object** %codec_search_path32, align 8
  %cmp33 = icmp eq %struct._object* %35, null
  br i1 %cmp33, label %if.then.42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.31
  %36 = load %struct._is*, %struct._is** %interp, align 8
  %codec_search_cache35 = getelementptr inbounds %struct._is, %struct._is* %36, i32 0, i32 8
  %37 = load %struct._object*, %struct._object** %codec_search_cache35, align 8
  %cmp36 = icmp eq %struct._object* %37, null
  br i1 %cmp36, label %if.then.42, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %lor.lhs.false
  %38 = load %struct._is*, %struct._is** %interp, align 8
  %codec_error_registry39 = getelementptr inbounds %struct._is, %struct._is* %38, i32 0, i32 9
  %39 = load %struct._object*, %struct._object** %codec_error_registry39, align 8
  %cmp40 = icmp eq %struct._object* %39, null
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %lor.lhs.false.38, %lor.lhs.false, %if.end.31
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.46, i32 0, i32 0)) #6
  unreachable

if.end.43:                                        ; preds = %lor.lhs.false.38
  %call44 = call %struct._object* @PyImport_ImportModuleNoBlock(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0))
  store %struct._object* %call44, %struct._object** %mod, align 8
  %40 = load %struct._object*, %struct._object** %mod, align 8
  %cmp45 = icmp eq %struct._object* %40, null
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.43
  store i32 -1, i32* %retval
  br label %return

if.end.48:                                        ; preds = %if.end.43
  br label %do.body.49

do.body.49:                                       ; preds = %if.end.48
  %41 = load %struct._object*, %struct._object** %mod, align 8
  store %struct._object* %41, %struct._object** %_py_decref_tmp51, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt52, align 8
  %dec53 = add i64 %43, -1
  store i64 %dec53, i64* %ob_refcnt52, align 8
  %cmp54 = icmp ne i64 %dec53, 0
  br i1 %cmp54, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %do.body.49
  br label %if.end.60

if.else.57:                                       ; preds = %do.body.49
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  %ob_type58 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type58, align 8
  %tp_dealloc59 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc59, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  call void %46(%struct._object* %47)
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.57, %if.then.56
  br label %do.end.61

do.end.61:                                        ; preds = %if.end.60
  %48 = load %struct._is*, %struct._is** %interp, align 8
  %codecs_initialized = getelementptr inbounds %struct._is, %struct._is* %48, i32 0, i32 10
  store i32 1, i32* %codecs_initialized, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.61, %if.then.47, %if.then
  %49 = load i32, i32* %retval
  ret i32 %49
}

declare i32 @PyErr_BadArgument() #2

declare i32 @PyCallable_Check(%struct._object*) #2

declare void @PyErr_SetString(%struct._object*, i8*) #2

declare i32 @PyList_Append(%struct._object*, %struct._object*) #2

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
  %func = alloca %struct._object*, align 8
  %_py_decref_tmp50 = alloca %struct._object*, align 8
  %_py_decref_tmp67 = alloca %struct._object*, align 8
  %_py_decref_tmp89 = alloca %struct._object*, align 8
  %_py_decref_tmp102 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp118 = alloca %struct._object*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8
  store %struct._object* null, %struct._object** %args, align 8
  %0 = load i8*, i8** %encoding.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @PyErr_BadArgument()
  br label %onError

if.end:                                           ; preds = %entry
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %1 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %1, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %2 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %3 = bitcast %struct._Py_atomic_address* %2 to i8*
  %4 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %3, i32 %4)
  %5 = load i32, i32* %order, align 4
  switch i32 %5, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %6 = load i8**, i8*** %volatile_data, align 8
  %7 = load volatile i8*, i8** %6, align 8
  store i8* %7, i8** %result1, align 8
  %8 = load i32, i32* %order, align 4
  switch i32 %8, label %sw.default.3 [
    i32 1, label %sw.bb.2
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.2
  ]

sw.bb.2:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.4

sw.default.3:                                     ; preds = %sw.epilog
  br label %sw.epilog.4

sw.epilog.4:                                      ; preds = %sw.default.3, %sw.bb.2
  %9 = load i8*, i8** %result1, align 8
  store i8* %9, i8** %tmp
  %10 = load i8*, i8** %tmp
  %11 = bitcast i8* %10 to %struct._ts*
  %interp5 = getelementptr inbounds %struct._ts, %struct._ts* %11, i32 0, i32 2
  %12 = load %struct._is*, %struct._is** %interp5, align 8
  store %struct._is* %12, %struct._is** %interp, align 8
  %13 = load %struct._is*, %struct._is** %interp, align 8
  %codec_search_path = getelementptr inbounds %struct._is, %struct._is* %13, i32 0, i32 7
  %14 = load %struct._object*, %struct._object** %codec_search_path, align 8
  %cmp6 = icmp eq %struct._object* %14, null
  br i1 %cmp6, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %sw.epilog.4
  %call7 = call i32 @_PyCodecRegistry_Init()
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true
  br label %onError

if.end.9:                                         ; preds = %land.lhs.true, %sw.epilog.4
  %15 = load i8*, i8** %encoding.addr, align 8
  %call10 = call %struct._object* @normalizestring(i8* %15)
  store %struct._object* %call10, %struct._object** %v, align 8
  %16 = load %struct._object*, %struct._object** %v, align 8
  %cmp11 = icmp eq %struct._object* %16, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  br label %onError

if.end.13:                                        ; preds = %if.end.9
  call void @PyUnicode_InternInPlace(%struct._object** %v)
  %17 = load %struct._is*, %struct._is** %interp, align 8
  %codec_search_cache = getelementptr inbounds %struct._is, %struct._is* %17, i32 0, i32 8
  %18 = load %struct._object*, %struct._object** %codec_search_cache, align 8
  %19 = load %struct._object*, %struct._object** %v, align 8
  %call14 = call %struct._object* @PyDict_GetItem(%struct._object* %18, %struct._object* %19)
  store %struct._object* %call14, %struct._object** %result, align 8
  %20 = load %struct._object*, %struct._object** %result, align 8
  %cmp15 = icmp ne %struct._object* %20, null
  br i1 %cmp15, label %if.then.16, label %if.end.22

if.then.16:                                       ; preds = %if.end.13
  %21 = load %struct._object*, %struct._object** %result, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %22, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.16
  %23 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt18, align 8
  %dec = add i64 %25, -1
  store i64 %dec, i64* %ob_refcnt18, align 8
  %cmp19 = icmp ne i64 %dec, 0
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %do.body
  br label %if.end.21

if.else:                                          ; preds = %do.body
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %28(%struct._object* %29)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.20
  br label %do.end

do.end:                                           ; preds = %if.end.21
  %30 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %30, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %if.end.13
  %call23 = call %struct._object* @PyTuple_New(i64 1)
  store %struct._object* %call23, %struct._object** %args, align 8
  %31 = load %struct._object*, %struct._object** %args, align 8
  %cmp24 = icmp eq %struct._object* %31, null
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.22
  br label %onError

if.end.26:                                        ; preds = %if.end.22
  %32 = load %struct._object*, %struct._object** %v, align 8
  %33 = load %struct._object*, %struct._object** %args, align 8
  %34 = bitcast %struct._object* %33 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %34, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %32, %struct._object** %arrayidx, align 8
  %35 = load %struct._is*, %struct._is** %interp, align 8
  %codec_search_path27 = getelementptr inbounds %struct._is, %struct._is* %35, i32 0, i32 7
  %36 = load %struct._object*, %struct._object** %codec_search_path27, align 8
  %call28 = call i64 @PyList_Size(%struct._object* %36)
  store i64 %call28, i64* %len, align 8
  %37 = load i64, i64* %len, align 8
  %cmp29 = icmp slt i64 %37, 0
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.26
  br label %onError

if.end.31:                                        ; preds = %if.end.26
  %38 = load i64, i64* %len, align 8
  %cmp32 = icmp eq i64 %38, 0
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.31
  %39 = load %struct._object*, %struct._object** @PyExc_LookupError, align 8
  call void @PyErr_SetString(%struct._object* %39, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i32 0, i32 0))
  br label %onError

if.end.34:                                        ; preds = %if.end.31
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.34
  %40 = load i64, i64* %i, align 8
  %41 = load i64, i64* %len, align 8
  %cmp35 = icmp slt i64 %40, %41
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load %struct._is*, %struct._is** %interp, align 8
  %codec_search_path37 = getelementptr inbounds %struct._is, %struct._is* %42, i32 0, i32 7
  %43 = load %struct._object*, %struct._object** %codec_search_path37, align 8
  %44 = load i64, i64* %i, align 8
  %call38 = call %struct._object* @PyList_GetItem(%struct._object* %43, i64 %44)
  store %struct._object* %call38, %struct._object** %func, align 8
  %45 = load %struct._object*, %struct._object** %func, align 8
  %cmp39 = icmp eq %struct._object* %45, null
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %for.body
  br label %onError

if.end.41:                                        ; preds = %for.body
  %46 = load %struct._object*, %struct._object** %func, align 8
  %47 = load %struct._object*, %struct._object** %args, align 8
  %call42 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %46, %struct._object* %47, %struct._object* null)
  store %struct._object* %call42, %struct._object** %result, align 8
  %48 = load %struct._object*, %struct._object** %result, align 8
  %cmp43 = icmp eq %struct._object* %48, null
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.41
  br label %onError

if.end.45:                                        ; preds = %if.end.41
  %49 = load %struct._object*, %struct._object** %result, align 8
  %cmp46 = icmp eq %struct._object* %49, @_Py_NoneStruct
  br i1 %cmp46, label %if.then.47, label %if.end.60

if.then.47:                                       ; preds = %if.end.45
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.47
  %50 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %50, %struct._object** %_py_decref_tmp50, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  %ob_refcnt51 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0
  %52 = load i64, i64* %ob_refcnt51, align 8
  %dec52 = add i64 %52, -1
  store i64 %dec52, i64* %ob_refcnt51, align 8
  %cmp53 = icmp ne i64 %dec52, 0
  br i1 %cmp53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %do.body.48
  br label %if.end.58

if.else.55:                                       ; preds = %do.body.48
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8
  %tp_dealloc57 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 4
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc57, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  call void %55(%struct._object* %56)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.55, %if.then.54
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  br label %for.inc

if.end.60:                                        ; preds = %if.end.45
  %57 = load %struct._object*, %struct._object** %result, align 8
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 19
  %59 = load i64, i64* %tp_flags, align 8
  %and = and i64 %59, 67108864
  %cmp62 = icmp ne i64 %and, 0
  br i1 %cmp62, label %lor.lhs.false, label %if.then.64

lor.lhs.false:                                    ; preds = %if.end.60
  %60 = load %struct._object*, %struct._object** %result, align 8
  %61 = bitcast %struct._object* %60 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %61, i32 0, i32 1
  %62 = load i64, i64* %ob_size, align 8
  %cmp63 = icmp ne i64 %62, 4
  br i1 %cmp63, label %if.then.64, label %if.end.77

if.then.64:                                       ; preds = %lor.lhs.false, %if.end.60
  %63 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %63, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i32 0, i32 0))
  br label %do.body.65

do.body.65:                                       ; preds = %if.then.64
  %64 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %64, %struct._object** %_py_decref_tmp67, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_refcnt68 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 0
  %66 = load i64, i64* %ob_refcnt68, align 8
  %dec69 = add i64 %66, -1
  store i64 %dec69, i64* %ob_refcnt68, align 8
  %cmp70 = icmp ne i64 %dec69, 0
  br i1 %cmp70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %do.body.65
  br label %if.end.75

if.else.72:                                       ; preds = %do.body.65
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_type73 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 1
  %68 = load %struct._typeobject*, %struct._typeobject** %ob_type73, align 8
  %tp_dealloc74 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %68, i32 0, i32 4
  %69 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc74, align 8
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  call void %69(%struct._object* %70)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.72, %if.then.71
  br label %do.end.76

do.end.76:                                        ; preds = %if.end.75
  br label %onError

if.end.77:                                        ; preds = %lor.lhs.false
  br label %for.end

for.inc:                                          ; preds = %do.end.59
  %71 = load i64, i64* %i, align 8
  %inc78 = add i64 %71, 1
  store i64 %inc78, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end.77, %for.cond
  %72 = load i64, i64* %i, align 8
  %73 = load i64, i64* %len, align 8
  %cmp79 = icmp eq i64 %72, %73
  br i1 %cmp79, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %for.end
  %74 = load %struct._object*, %struct._object** @PyExc_LookupError, align 8
  %75 = load i8*, i8** %encoding.addr, align 8
  %call81 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i8* %75)
  br label %onError

if.end.82:                                        ; preds = %for.end
  %76 = load %struct._is*, %struct._is** %interp, align 8
  %codec_search_cache83 = getelementptr inbounds %struct._is, %struct._is* %76, i32 0, i32 8
  %77 = load %struct._object*, %struct._object** %codec_search_cache83, align 8
  %78 = load %struct._object*, %struct._object** %v, align 8
  %79 = load %struct._object*, %struct._object** %result, align 8
  %call84 = call i32 @PyDict_SetItem(%struct._object* %77, %struct._object* %78, %struct._object* %79)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %if.then.86, label %if.end.99

if.then.86:                                       ; preds = %if.end.82
  br label %do.body.87

do.body.87:                                       ; preds = %if.then.86
  %80 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %80, %struct._object** %_py_decref_tmp89, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  %ob_refcnt90 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 0
  %82 = load i64, i64* %ob_refcnt90, align 8
  %dec91 = add i64 %82, -1
  store i64 %dec91, i64* %ob_refcnt90, align 8
  %cmp92 = icmp ne i64 %dec91, 0
  br i1 %cmp92, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %do.body.87
  br label %if.end.97

if.else.94:                                       ; preds = %do.body.87
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  %ob_type95 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 1
  %84 = load %struct._typeobject*, %struct._typeobject** %ob_type95, align 8
  %tp_dealloc96 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %84, i32 0, i32 4
  %85 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc96, align 8
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  call void %85(%struct._object* %86)
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.94, %if.then.93
  br label %do.end.98

do.end.98:                                        ; preds = %if.end.97
  br label %onError

if.end.99:                                        ; preds = %if.end.82
  br label %do.body.100

do.body.100:                                      ; preds = %if.end.99
  %87 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %87, %struct._object** %_py_decref_tmp102, align 8
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp102, align 8
  %ob_refcnt103 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 0
  %89 = load i64, i64* %ob_refcnt103, align 8
  %dec104 = add i64 %89, -1
  store i64 %dec104, i64* %ob_refcnt103, align 8
  %cmp105 = icmp ne i64 %dec104, 0
  br i1 %cmp105, label %if.then.106, label %if.else.107

if.then.106:                                      ; preds = %do.body.100
  br label %if.end.110

if.else.107:                                      ; preds = %do.body.100
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp102, align 8
  %ob_type108 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 1
  %91 = load %struct._typeobject*, %struct._typeobject** %ob_type108, align 8
  %tp_dealloc109 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %91, i32 0, i32 4
  %92 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc109, align 8
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp102, align 8
  call void %92(%struct._object* %93)
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.107, %if.then.106
  br label %do.end.111

do.end.111:                                       ; preds = %if.end.110
  %94 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %94, %struct._object** %retval
  br label %return

onError:                                          ; preds = %do.end.98, %if.then.80, %do.end.76, %if.then.44, %if.then.40, %if.then.33, %if.then.30, %if.then.25, %if.then.12, %if.then.8, %if.then
  br label %do.body.112

do.body.112:                                      ; preds = %onError
  %95 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %95, %struct._object** %_py_xdecref_tmp, align 8
  %96 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp114 = icmp ne %struct._object* %96, null
  br i1 %cmp114, label %if.then.115, label %if.end.128

if.then.115:                                      ; preds = %do.body.112
  br label %do.body.116

do.body.116:                                      ; preds = %if.then.115
  %97 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %97, %struct._object** %_py_decref_tmp118, align 8
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp118, align 8
  %ob_refcnt119 = getelementptr inbounds %struct._object, %struct._object* %98, i32 0, i32 0
  %99 = load i64, i64* %ob_refcnt119, align 8
  %dec120 = add i64 %99, -1
  store i64 %dec120, i64* %ob_refcnt119, align 8
  %cmp121 = icmp ne i64 %dec120, 0
  br i1 %cmp121, label %if.then.122, label %if.else.123

if.then.122:                                      ; preds = %do.body.116
  br label %if.end.126

if.else.123:                                      ; preds = %do.body.116
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp118, align 8
  %ob_type124 = getelementptr inbounds %struct._object, %struct._object* %100, i32 0, i32 1
  %101 = load %struct._typeobject*, %struct._typeobject** %ob_type124, align 8
  %tp_dealloc125 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %101, i32 0, i32 4
  %102 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc125, align 8
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp118, align 8
  call void %102(%struct._object* %103)
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.123, %if.then.122
  br label %do.end.127

do.end.127:                                       ; preds = %if.end.126
  br label %if.end.128

if.end.128:                                       ; preds = %do.end.127, %do.body.112
  br label %do.end.129

do.end.129:                                       ; preds = %if.end.128
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.129, %do.end.111, %do.end
  %104 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %104
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
  %ch = alloca i8, align 1
  store i8* %string, i8** %string.addr, align 8
  %0 = load i8*, i8** %string.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  store i64 %call, i64* %len, align 8
  %1 = load i64, i64* %len, align 8
  %cmp = icmp ugt i64 %1, 9223372036854775807
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %len, align 8
  %add = add i64 %3, 1
  %call1 = call i8* @PyMem_Malloc(i64 %add)
  store i8* %call1, i8** %p, align 8
  %4 = load i8*, i8** %p, align 8
  %cmp2 = icmp eq i8* %4, null
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %call4 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call4, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %5 = load i64, i64* %i, align 8
  %6 = load i64, i64* %len, align 8
  %cmp6 = icmp ult i64 %5, %6
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64, i64* %i, align 8
  %8 = load i8*, i8** %string.addr, align 8
  %arrayidx = getelementptr i8, i8* %8, i64 %7
  %9 = load i8, i8* %arrayidx, align 1
  store i8 %9, i8* %ch, align 1
  %10 = load i8, i8* %ch, align 1
  %conv = sext i8 %10 to i32
  %cmp7 = icmp eq i32 %conv, 32
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %for.body
  store i8 45, i8* %ch, align 1
  br label %if.end.16

if.else:                                          ; preds = %for.body
  %11 = load i8, i8* %ch, align 1
  %conv10 = sext i8 %11 to i32
  %and = and i32 %conv10, 255
  %conv11 = trunc i32 %and to i8
  %conv12 = zext i8 %conv11 to i32
  %and13 = and i32 %conv12, 255
  %conv14 = trunc i32 %and13 to i8
  %idxprom = zext i8 %conv14 to i64
  %arrayidx15 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom
  %12 = load i8, i8* %arrayidx15, align 1
  store i8 %12, i8* %ch, align 1
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.9
  %13 = load i8, i8* %ch, align 1
  %14 = load i64, i64* %i, align 8
  %15 = load i8*, i8** %p, align 8
  %arrayidx17 = getelementptr i8, i8* %15, i64 %14
  store i8 %13, i8* %arrayidx17, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %16 = load i64, i64* %i, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i64, i64* %i, align 8
  %18 = load i8*, i8** %p, align 8
  %arrayidx18 = getelementptr i8, i8* %18, i64 %17
  store i8 0, i8* %arrayidx18, align 1
  %19 = load i8*, i8** %p, align 8
  %call19 = call %struct._object* @PyUnicode_FromString(i8* %19)
  store %struct._object* %call19, %struct._object** %v, align 8
  %20 = load %struct._object*, %struct._object** %v, align 8
  %cmp20 = icmp eq %struct._object* %20, null
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %for.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %for.end
  %21 = load i8*, i8** %p, align 8
  call void @PyMem_Free(i8* %21)
  %22 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %22, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.22, %if.then.3, %if.then
  %23 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %23
}

declare void @PyUnicode_InternInPlace(%struct._object**) #2

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #2

declare %struct._object* @PyTuple_New(i64) #2

declare i64 @PyList_Size(%struct._object*) #2

declare %struct._object* @PyList_GetItem(%struct._object*, i64) #2

declare %struct._object* @PyEval_CallObjectWithKeywords(%struct._object*, %struct._object*, %struct._object*) #2

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #2

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define i32 @PyCodec_KnownEncoding(i8* %encoding) #0 {
entry:
  %retval = alloca i32, align 4
  %encoding.addr = alloca i8*, align 8
  %codecs = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8
  %0 = load i8*, i8** %encoding.addr, align 8
  %call = call %struct._object* @_PyCodec_Lookup(i8* %0)
  store %struct._object* %call, %struct._object** %codecs, align 8
  %1 = load %struct._object*, %struct._object** %codecs, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @PyErr_Clear()
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.else
  %2 = load %struct._object*, %struct._object** %codecs, align 8
  store %struct._object* %2, %struct._object** %_py_decref_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %do.body
  br label %if.end

if.else.2:                                        ; preds = %do.body
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 4
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %7(%struct._object* %8)
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare void @PyErr_Clear() #2

; Function Attrs: nounwind uwtable
define %struct._object* @_PyCodecInfo_GetIncrementalDecoder(%struct._object* %codec_info, i8* %errors) #0 {
entry:
  %codec_info.addr = alloca %struct._object*, align 8
  %errors.addr = alloca i8*, align 8
  store %struct._object* %codec_info, %struct._object** %codec_info.addr, align 8
  store i8* %errors, i8** %errors.addr, align 8
  %0 = load %struct._object*, %struct._object** %codec_info.addr, align 8
  %1 = load i8*, i8** %errors.addr, align 8
  %call = call %struct._object* @codec_makeincrementalcodec(%struct._object* %0, i8* %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0))
  ret %struct._object* %call
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %codec_info, %struct._object** %codec_info.addr, align 8
  store i8* %errors, i8** %errors.addr, align 8
  store i8* %attrname, i8** %attrname.addr, align 8
  %0 = load %struct._object*, %struct._object** %codec_info.addr, align 8
  %1 = load i8*, i8** %attrname.addr, align 8
  %call = call %struct._object* @PyObject_GetAttrString(%struct._object* %0, i8* %1)
  store %struct._object* %call, %struct._object** %inccodec, align 8
  %2 = load %struct._object*, %struct._object** %inccodec, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %errors.addr, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %inccodec, align 8
  %5 = load i8*, i8** %errors.addr, align 8
  %call2 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8* %5)
  store %struct._object* %call2, %struct._object** %ret, align 8
  br label %if.end.4

if.else:                                          ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %inccodec, align 8
  %call3 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %6, i8* null)
  store %struct._object* %call3, %struct._object** %ret, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.1
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %7 = load %struct._object*, %struct._object** %inccodec, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %do.body
  br label %if.end.8

if.else.7:                                        ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.7, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %14 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %14, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyCodecInfo_GetIncrementalEncoder(%struct._object* %codec_info, i8* %errors) #0 {
entry:
  %codec_info.addr = alloca %struct._object*, align 8
  %errors.addr = alloca i8*, align 8
  store %struct._object* %codec_info, %struct._object** %codec_info.addr, align 8
  store i8* %errors, i8** %errors.addr, align 8
  %0 = load %struct._object*, %struct._object** %codec_info.addr, align 8
  %1 = load i8*, i8** %errors.addr, align 8
  %call = call %struct._object* @codec_makeincrementalcodec(%struct._object* %0, i8* %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_Encoder(i8* %encoding) #0 {
entry:
  %encoding.addr = alloca i8*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8
  %0 = load i8*, i8** %encoding.addr, align 8
  %call = call %struct._object* @codec_getitem(i8* %0, i32 0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @codec_getitem(i8* %encoding, i32 %index) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %encoding.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  %codecs = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load i8*, i8** %encoding.addr, align 8
  %call = call %struct._object* @_PyCodec_Lookup(i8* %0)
  store %struct._object* %call, %struct._object** %codecs, align 8
  %1 = load %struct._object*, %struct._object** %codecs, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct._object*, %struct._object** %codecs, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %4, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom
  %5 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %5, %struct._object** %v, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %codecs, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp1 = icmp ne i64 %dec, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
  br label %if.end.3

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  br label %do.end

do.end:                                           ; preds = %if.end.3
  %13 = load %struct._object*, %struct._object** %v, align 8
  %ob_refcnt4 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt4, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %ob_refcnt4, align 8
  %15 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %15, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_Decoder(i8* %encoding) #0 {
entry:
  %encoding.addr = alloca i8*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8
  %0 = load i8*, i8** %encoding.addr, align 8
  %call = call %struct._object* @codec_getitem(i8* %0, i32 1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_IncrementalEncoder(i8* %encoding, i8* %errors) #0 {
entry:
  %encoding.addr = alloca i8*, align 8
  %errors.addr = alloca i8*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8
  store i8* %errors, i8** %errors.addr, align 8
  %0 = load i8*, i8** %encoding.addr, align 8
  %1 = load i8*, i8** %errors.addr, align 8
  %call = call %struct._object* @codec_getincrementalcodec(i8* %0, i8* %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0))
  ret %struct._object* %call
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8
  store i8* %errors, i8** %errors.addr, align 8
  store i8* %attrname, i8** %attrname.addr, align 8
  %0 = load i8*, i8** %encoding.addr, align 8
  %call = call %struct._object* @_PyCodec_Lookup(i8* %0)
  store %struct._object* %call, %struct._object** %codec_info, align 8
  %1 = load %struct._object*, %struct._object** %codec_info, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %codec_info, align 8
  %3 = load i8*, i8** %errors.addr, align 8
  %4 = load i8*, i8** %attrname.addr, align 8
  %call1 = call %struct._object* @codec_makeincrementalcodec(%struct._object* %2, i8* %3, i8* %4)
  store %struct._object* %call1, %struct._object** %ret, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %codec_info, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %12 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %12, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %13 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %13
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_IncrementalDecoder(i8* %encoding, i8* %errors) #0 {
entry:
  %encoding.addr = alloca i8*, align 8
  %errors.addr = alloca i8*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8
  store i8* %errors, i8** %errors.addr, align 8
  %0 = load i8*, i8** %encoding.addr, align 8
  %1 = load i8*, i8** %errors.addr, align 8
  %call = call %struct._object* @codec_getincrementalcodec(i8* %0, i8* %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_StreamReader(i8* %encoding, %struct._object* %stream, i8* %errors) #0 {
entry:
  %encoding.addr = alloca i8*, align 8
  %stream.addr = alloca %struct._object*, align 8
  %errors.addr = alloca i8*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8
  store %struct._object* %stream, %struct._object** %stream.addr, align 8
  store i8* %errors, i8** %errors.addr, align 8
  %0 = load i8*, i8** %encoding.addr, align 8
  %1 = load %struct._object*, %struct._object** %stream.addr, align 8
  %2 = load i8*, i8** %errors.addr, align 8
  %call = call %struct._object* @codec_getstreamcodec(i8* %0, %struct._object* %1, i8* %2, i32 2)
  ret %struct._object* %call
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8
  store %struct._object* %stream, %struct._object** %stream.addr, align 8
  store i8* %errors, i8** %errors.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load i8*, i8** %encoding.addr, align 8
  %call = call %struct._object* @_PyCodec_Lookup(i8* %0)
  store %struct._object* %call, %struct._object** %codecs, align 8
  %1 = load %struct._object*, %struct._object** %codecs, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct._object*, %struct._object** %codecs, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %4, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom
  %5 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %5, %struct._object** %codeccls, align 8
  %6 = load i8*, i8** %errors.addr, align 8
  %cmp1 = icmp ne i8* %6, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %codeccls, align 8
  %8 = load %struct._object*, %struct._object** %stream.addr, align 8
  %9 = load i8*, i8** %errors.addr, align 8
  %call3 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), %struct._object* %8, i8* %9)
  store %struct._object* %call3, %struct._object** %streamcodec, align 8
  br label %if.end.5

if.else:                                          ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %codeccls, align 8
  %11 = load %struct._object*, %struct._object** %stream.addr, align 8
  %call4 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), %struct._object* %11)
  store %struct._object* %call4, %struct._object** %streamcodec, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.2
  br label %do.body

do.body:                                          ; preds = %if.end.5
  %12 = load %struct._object*, %struct._object** %codecs, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %do.body
  br label %if.end.9

if.else.8:                                        ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.8, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.9
  %19 = load %struct._object*, %struct._object** %streamcodec, align 8
  store %struct._object* %19, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %20 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %20
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_StreamWriter(i8* %encoding, %struct._object* %stream, i8* %errors) #0 {
entry:
  %encoding.addr = alloca i8*, align 8
  %stream.addr = alloca %struct._object*, align 8
  %errors.addr = alloca i8*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8
  store %struct._object* %stream, %struct._object** %stream.addr, align 8
  store i8* %errors, i8** %errors.addr, align 8
  %0 = load i8*, i8** %encoding.addr, align 8
  %1 = load %struct._object*, %struct._object** %stream.addr, align 8
  %2 = load i8*, i8** %errors.addr, align 8
  %call = call %struct._object* @codec_getstreamcodec(i8* %0, %struct._object* %1, i8* %2, i32 3)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_Encode(%struct._object* %object, i8* %encoding, i8* %errors) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %object.addr = alloca %struct._object*, align 8
  %encoding.addr = alloca i8*, align 8
  %errors.addr = alloca i8*, align 8
  %encoder = alloca %struct._object*, align 8
  store %struct._object* %object, %struct._object** %object.addr, align 8
  store i8* %encoding, i8** %encoding.addr, align 8
  store i8* %errors, i8** %errors.addr, align 8
  %0 = load i8*, i8** %encoding.addr, align 8
  %call = call %struct._object* @PyCodec_Encoder(i8* %0)
  store %struct._object* %call, %struct._object** %encoder, align 8
  %1 = load %struct._object*, %struct._object** %encoder, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %object.addr, align 8
  %3 = load %struct._object*, %struct._object** %encoder, align 8
  %4 = load i8*, i8** %encoding.addr, align 8
  %5 = load i8*, i8** %errors.addr, align 8
  %call1 = call %struct._object* @_PyCodec_EncodeInternal(%struct._object* %2, %struct._object* %3, i8* %4, i8* %5)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
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
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp40 = alloca %struct._object*, align 8
  %_py_xdecref_tmp53 = alloca %struct._object*, align 8
  %_py_decref_tmp57 = alloca %struct._object*, align 8
  %_py_xdecref_tmp70 = alloca %struct._object*, align 8
  %_py_decref_tmp74 = alloca %struct._object*, align 8
  store %struct._object* %object, %struct._object** %object.addr, align 8
  store %struct._object* %encoder, %struct._object** %encoder.addr, align 8
  store i8* %encoding, i8** %encoding.addr, align 8
  store i8* %errors, i8** %errors.addr, align 8
  store %struct._object* null, %struct._object** %args, align 8
  store %struct._object* null, %struct._object** %result, align 8
  store %struct._object* null, %struct._object** %v, align 8
  %0 = load %struct._object*, %struct._object** %object.addr, align 8
  %1 = load i8*, i8** %errors.addr, align 8
  %call = call %struct._object* @args_tuple(%struct._object* %0, i8* %1)
  store %struct._object* %call, %struct._object** %args, align 8
  %2 = load %struct._object*, %struct._object** %args, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %onError

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %encoder.addr, align 8
  %4 = load %struct._object*, %struct._object** %args, align 8
  %call1 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %3, %struct._object* %4, %struct._object* null)
  store %struct._object* %call1, %struct._object** %result, align 8
  %5 = load %struct._object*, %struct._object** %result, align 8
  %cmp2 = icmp eq %struct._object* %5, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %6 = load i8*, i8** %encoding.addr, align 8
  call void @wrap_codec_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* %6)
  br label %onError

if.end.4:                                         ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %result, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 19
  %9 = load i64, i64* %tp_flags, align 8
  %and = and i64 %9, 67108864
  %cmp5 = icmp ne i64 %and, 0
  br i1 %cmp5, label %lor.lhs.false, label %if.then.7

lor.lhs.false:                                    ; preds = %if.end.4
  %10 = load %struct._object*, %struct._object** %result, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %11, i32 0, i32 1
  %12 = load i64, i64* %ob_size, align 8
  %cmp6 = icmp ne i64 %12, 2
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %lor.lhs.false, %if.end.4
  %13 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %13, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i32 0, i32 0))
  br label %onError

if.end.8:                                         ; preds = %lor.lhs.false
  %14 = load %struct._object*, %struct._object** %result, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %15, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %16 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %16, %struct._object** %v, align 8
  %17 = load %struct._object*, %struct._object** %v, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.8
  %19 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt9 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt9, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %ob_refcnt9, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %do.body
  br label %if.end.13

if.else:                                          ; preds = %do.body
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %24(%struct._object* %25)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.13
  br label %do.body.14

do.body.14:                                       ; preds = %do.end
  %26 = load %struct._object*, %struct._object** %encoder.addr, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp15, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt16, align 8
  %dec17 = add i64 %28, -1
  store i64 %dec17, i64* %ob_refcnt16, align 8
  %cmp18 = icmp ne i64 %dec17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.14
  br label %if.end.23

if.else.20:                                       ; preds = %do.body.14
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %tp_dealloc22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  call void %31(%struct._object* %32)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.then.19
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  br label %do.body.25

do.body.25:                                       ; preds = %do.end.24
  %33 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp26, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt27, align 8
  %dec28 = add i64 %35, -1
  store i64 %dec28, i64* %ob_refcnt27, align 8
  %cmp29 = icmp ne i64 %dec28, 0
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %do.body.25
  br label %if.end.34

if.else.31:                                       ; preds = %do.body.25
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  call void %38(%struct._object* %39)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.30
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  %40 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %40, %struct._object** %retval
  br label %return

onError:                                          ; preds = %if.then.7, %if.then.3, %if.then
  br label %do.body.36

do.body.36:                                       ; preds = %onError
  %41 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %41, %struct._object** %_py_xdecref_tmp, align 8
  %42 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp37 = icmp ne %struct._object* %42, null
  br i1 %cmp37, label %if.then.38, label %if.end.50

if.then.38:                                       ; preds = %do.body.36
  br label %do.body.39

do.body.39:                                       ; preds = %if.then.38
  %43 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %43, %struct._object** %_py_decref_tmp40, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0
  %45 = load i64, i64* %ob_refcnt41, align 8
  %dec42 = add i64 %45, -1
  store i64 %dec42, i64* %ob_refcnt41, align 8
  %cmp43 = icmp ne i64 %dec42, 0
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.48

if.else.45:                                       ; preds = %do.body.39
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8
  %tp_dealloc47 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc47, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  call void %48(%struct._object* %49)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.45, %if.then.44
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  br label %if.end.50

if.end.50:                                        ; preds = %do.end.49, %do.body.36
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  br label %do.body.52

do.body.52:                                       ; preds = %do.end.51
  %50 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %50, %struct._object** %_py_xdecref_tmp53, align 8
  %51 = load %struct._object*, %struct._object** %_py_xdecref_tmp53, align 8
  %cmp54 = icmp ne %struct._object* %51, null
  br i1 %cmp54, label %if.then.55, label %if.end.67

if.then.55:                                       ; preds = %do.body.52
  br label %do.body.56

do.body.56:                                       ; preds = %if.then.55
  %52 = load %struct._object*, %struct._object** %_py_xdecref_tmp53, align 8
  store %struct._object* %52, %struct._object** %_py_decref_tmp57, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0
  %54 = load i64, i64* %ob_refcnt58, align 8
  %dec59 = add i64 %54, -1
  store i64 %dec59, i64* %ob_refcnt58, align 8
  %cmp60 = icmp ne i64 %dec59, 0
  br i1 %cmp60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %do.body.56
  br label %if.end.65

if.else.62:                                       ; preds = %do.body.56
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  call void %57(%struct._object* %58)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.61
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  br label %if.end.67

if.end.67:                                        ; preds = %do.end.66, %do.body.52
  br label %do.end.68

do.end.68:                                        ; preds = %if.end.67
  br label %do.body.69

do.body.69:                                       ; preds = %do.end.68
  %59 = load %struct._object*, %struct._object** %encoder.addr, align 8
  store %struct._object* %59, %struct._object** %_py_xdecref_tmp70, align 8
  %60 = load %struct._object*, %struct._object** %_py_xdecref_tmp70, align 8
  %cmp71 = icmp ne %struct._object* %60, null
  br i1 %cmp71, label %if.then.72, label %if.end.84

if.then.72:                                       ; preds = %do.body.69
  br label %do.body.73

do.body.73:                                       ; preds = %if.then.72
  %61 = load %struct._object*, %struct._object** %_py_xdecref_tmp70, align 8
  store %struct._object* %61, %struct._object** %_py_decref_tmp74, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  %ob_refcnt75 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0
  %63 = load i64, i64* %ob_refcnt75, align 8
  %dec76 = add i64 %63, -1
  store i64 %dec76, i64* %ob_refcnt75, align 8
  %cmp77 = icmp ne i64 %dec76, 0
  br i1 %cmp77, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %do.body.73
  br label %if.end.82

if.else.79:                                       ; preds = %do.body.73
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  %ob_type80 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type80, align 8
  %tp_dealloc81 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc81, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  call void %66(%struct._object* %67)
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.79, %if.then.78
  br label %do.end.83

do.end.83:                                        ; preds = %if.end.82
  br label %if.end.84

if.end.84:                                        ; preds = %do.end.83, %do.body.69
  br label %do.end.85

do.end.85:                                        ; preds = %if.end.84
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.85, %do.end.35
  %68 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %68
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_Decode(%struct._object* %object, i8* %encoding, i8* %errors) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %object.addr = alloca %struct._object*, align 8
  %encoding.addr = alloca i8*, align 8
  %errors.addr = alloca i8*, align 8
  %decoder = alloca %struct._object*, align 8
  store %struct._object* %object, %struct._object** %object.addr, align 8
  store i8* %encoding, i8** %encoding.addr, align 8
  store i8* %errors, i8** %errors.addr, align 8
  %0 = load i8*, i8** %encoding.addr, align 8
  %call = call %struct._object* @PyCodec_Decoder(i8* %0)
  store %struct._object* %call, %struct._object** %decoder, align 8
  %1 = load %struct._object*, %struct._object** %decoder, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %object.addr, align 8
  %3 = load %struct._object*, %struct._object** %decoder, align 8
  %4 = load i8*, i8** %encoding.addr, align 8
  %5 = load i8*, i8** %errors.addr, align 8
  %call1 = call %struct._object* @_PyCodec_DecodeInternal(%struct._object* %2, %struct._object* %3, i8* %4, i8* %5)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
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
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp40 = alloca %struct._object*, align 8
  %_py_xdecref_tmp53 = alloca %struct._object*, align 8
  %_py_decref_tmp57 = alloca %struct._object*, align 8
  %_py_xdecref_tmp70 = alloca %struct._object*, align 8
  %_py_decref_tmp74 = alloca %struct._object*, align 8
  store %struct._object* %object, %struct._object** %object.addr, align 8
  store %struct._object* %decoder, %struct._object** %decoder.addr, align 8
  store i8* %encoding, i8** %encoding.addr, align 8
  store i8* %errors, i8** %errors.addr, align 8
  store %struct._object* null, %struct._object** %args, align 8
  store %struct._object* null, %struct._object** %result, align 8
  %0 = load %struct._object*, %struct._object** %object.addr, align 8
  %1 = load i8*, i8** %errors.addr, align 8
  %call = call %struct._object* @args_tuple(%struct._object* %0, i8* %1)
  store %struct._object* %call, %struct._object** %args, align 8
  %2 = load %struct._object*, %struct._object** %args, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %onError

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %decoder.addr, align 8
  %4 = load %struct._object*, %struct._object** %args, align 8
  %call1 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %3, %struct._object* %4, %struct._object* null)
  store %struct._object* %call1, %struct._object** %result, align 8
  %5 = load %struct._object*, %struct._object** %result, align 8
  %cmp2 = icmp eq %struct._object* %5, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %6 = load i8*, i8** %encoding.addr, align 8
  call void @wrap_codec_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* %6)
  br label %onError

if.end.4:                                         ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %result, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 19
  %9 = load i64, i64* %tp_flags, align 8
  %and = and i64 %9, 67108864
  %cmp5 = icmp ne i64 %and, 0
  br i1 %cmp5, label %lor.lhs.false, label %if.then.7

lor.lhs.false:                                    ; preds = %if.end.4
  %10 = load %struct._object*, %struct._object** %result, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %11, i32 0, i32 1
  %12 = load i64, i64* %ob_size, align 8
  %cmp6 = icmp ne i64 %12, 2
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %lor.lhs.false, %if.end.4
  %13 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %13, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.23, i32 0, i32 0))
  br label %onError

if.end.8:                                         ; preds = %lor.lhs.false
  %14 = load %struct._object*, %struct._object** %result, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %15, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %16 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %16, %struct._object** %v, align 8
  %17 = load %struct._object*, %struct._object** %v, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.8
  %19 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt9 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt9, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %ob_refcnt9, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %do.body
  br label %if.end.13

if.else:                                          ; preds = %do.body
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %24(%struct._object* %25)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.13
  br label %do.body.14

do.body.14:                                       ; preds = %do.end
  %26 = load %struct._object*, %struct._object** %decoder.addr, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp15, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt16, align 8
  %dec17 = add i64 %28, -1
  store i64 %dec17, i64* %ob_refcnt16, align 8
  %cmp18 = icmp ne i64 %dec17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.14
  br label %if.end.23

if.else.20:                                       ; preds = %do.body.14
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %tp_dealloc22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  call void %31(%struct._object* %32)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.then.19
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  br label %do.body.25

do.body.25:                                       ; preds = %do.end.24
  %33 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp26, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt27, align 8
  %dec28 = add i64 %35, -1
  store i64 %dec28, i64* %ob_refcnt27, align 8
  %cmp29 = icmp ne i64 %dec28, 0
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %do.body.25
  br label %if.end.34

if.else.31:                                       ; preds = %do.body.25
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  call void %38(%struct._object* %39)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.30
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  %40 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %40, %struct._object** %retval
  br label %return

onError:                                          ; preds = %if.then.7, %if.then.3, %if.then
  br label %do.body.36

do.body.36:                                       ; preds = %onError
  %41 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %41, %struct._object** %_py_xdecref_tmp, align 8
  %42 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp37 = icmp ne %struct._object* %42, null
  br i1 %cmp37, label %if.then.38, label %if.end.50

if.then.38:                                       ; preds = %do.body.36
  br label %do.body.39

do.body.39:                                       ; preds = %if.then.38
  %43 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %43, %struct._object** %_py_decref_tmp40, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0
  %45 = load i64, i64* %ob_refcnt41, align 8
  %dec42 = add i64 %45, -1
  store i64 %dec42, i64* %ob_refcnt41, align 8
  %cmp43 = icmp ne i64 %dec42, 0
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.48

if.else.45:                                       ; preds = %do.body.39
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8
  %tp_dealloc47 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc47, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  call void %48(%struct._object* %49)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.45, %if.then.44
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  br label %if.end.50

if.end.50:                                        ; preds = %do.end.49, %do.body.36
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  br label %do.body.52

do.body.52:                                       ; preds = %do.end.51
  %50 = load %struct._object*, %struct._object** %decoder.addr, align 8
  store %struct._object* %50, %struct._object** %_py_xdecref_tmp53, align 8
  %51 = load %struct._object*, %struct._object** %_py_xdecref_tmp53, align 8
  %cmp54 = icmp ne %struct._object* %51, null
  br i1 %cmp54, label %if.then.55, label %if.end.67

if.then.55:                                       ; preds = %do.body.52
  br label %do.body.56

do.body.56:                                       ; preds = %if.then.55
  %52 = load %struct._object*, %struct._object** %_py_xdecref_tmp53, align 8
  store %struct._object* %52, %struct._object** %_py_decref_tmp57, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0
  %54 = load i64, i64* %ob_refcnt58, align 8
  %dec59 = add i64 %54, -1
  store i64 %dec59, i64* %ob_refcnt58, align 8
  %cmp60 = icmp ne i64 %dec59, 0
  br i1 %cmp60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %do.body.56
  br label %if.end.65

if.else.62:                                       ; preds = %do.body.56
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  call void %57(%struct._object* %58)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.61
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  br label %if.end.67

if.end.67:                                        ; preds = %do.end.66, %do.body.52
  br label %do.end.68

do.end.68:                                        ; preds = %if.end.67
  br label %do.body.69

do.body.69:                                       ; preds = %do.end.68
  %59 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %59, %struct._object** %_py_xdecref_tmp70, align 8
  %60 = load %struct._object*, %struct._object** %_py_xdecref_tmp70, align 8
  %cmp71 = icmp ne %struct._object* %60, null
  br i1 %cmp71, label %if.then.72, label %if.end.84

if.then.72:                                       ; preds = %do.body.69
  br label %do.body.73

do.body.73:                                       ; preds = %if.then.72
  %61 = load %struct._object*, %struct._object** %_py_xdecref_tmp70, align 8
  store %struct._object* %61, %struct._object** %_py_decref_tmp74, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  %ob_refcnt75 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0
  %63 = load i64, i64* %ob_refcnt75, align 8
  %dec76 = add i64 %63, -1
  store i64 %dec76, i64* %ob_refcnt75, align 8
  %cmp77 = icmp ne i64 %dec76, 0
  br i1 %cmp77, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %do.body.73
  br label %if.end.82

if.else.79:                                       ; preds = %do.body.73
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  %ob_type80 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type80, align 8
  %tp_dealloc81 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc81, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  call void %66(%struct._object* %67)
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.79, %if.then.78
  br label %do.end.83

do.end.83:                                        ; preds = %if.end.82
  br label %if.end.84

if.end.84:                                        ; preds = %do.end.83, %do.body.69
  br label %do.end.85

do.end.85:                                        ; preds = %if.end.84
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.85, %do.end.35
  %68 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %68
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp17 = alloca %struct._object*, align 8
  %_py_decref_tmp30 = alloca %struct._object*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8
  store i8* %alternate_command, i8** %alternate_command.addr, align 8
  %0 = load i8*, i8** %encoding.addr, align 8
  %call = call %struct._object* @_PyCodec_Lookup(i8* %0)
  store %struct._object* %call, %struct._object** %codec, align 8
  %1 = load %struct._object*, %struct._object** %codec, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %codec, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %3, @PyTuple_Type
  br i1 %cmp1, label %if.end.43, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %codec, align 8
  %call3 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %4, %struct._Py_Identifier* @_PyCodec_LookupTextEncoding.PyId__is_text_encoding)
  store %struct._object* %call3, %struct._object** %attr, align 8
  %5 = load %struct._object*, %struct._object** %attr, align 8
  %cmp4 = icmp eq %struct._object* %5, null
  br i1 %cmp4, label %if.then.5, label %if.else.14

if.then.5:                                        ; preds = %if.then.2
  %6 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %call6 = call i32 @PyErr_ExceptionMatches(%struct._object* %6)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.5
  call void @PyErr_Clear()
  br label %if.end.13

if.else:                                          ; preds = %if.then.5
  br label %do.body

do.body:                                          ; preds = %if.else
  %7 = load %struct._object*, %struct._object** %codec, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body
  br label %if.end.12

if.else.10:                                       ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.then.7
  br label %if.end.42

if.else.14:                                       ; preds = %if.then.2
  %14 = load %struct._object*, %struct._object** %attr, align 8
  %call15 = call i32 @PyObject_IsTrue(%struct._object* %14)
  store i32 %call15, i32* %is_text_codec, align 4
  br label %do.body.16

do.body.16:                                       ; preds = %if.else.14
  %15 = load %struct._object*, %struct._object** %attr, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp17, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt18, align 8
  %dec19 = add i64 %17, -1
  store i64 %dec19, i64* %ob_refcnt18, align 8
  %cmp20 = icmp ne i64 %dec19, 0
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body.16
  br label %if.end.25

if.else.22:                                       ; preds = %do.body.16
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_dealloc24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc24, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8
  call void %20(%struct._object* %21)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.22, %if.then.21
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  %22 = load i32, i32* %is_text_codec, align 4
  %tobool27 = icmp ne i32 %22, 0
  br i1 %tobool27, label %if.end.41, label %if.then.28

if.then.28:                                       ; preds = %do.end.26
  br label %do.body.29

do.body.29:                                       ; preds = %if.then.28
  %23 = load %struct._object*, %struct._object** %codec, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp30, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8
  %ob_refcnt31 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt31, align 8
  %dec32 = add i64 %25, -1
  store i64 %dec32, i64* %ob_refcnt31, align 8
  %cmp33 = icmp ne i64 %dec32, 0
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %do.body.29
  br label %if.end.38

if.else.35:                                       ; preds = %do.body.29
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8
  %tp_dealloc37 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc37, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8
  call void %28(%struct._object* %29)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.35, %if.then.34
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %30 = load %struct._object*, %struct._object** @PyExc_LookupError, align 8
  %31 = load i8*, i8** %encoding.addr, align 8
  %32 = load i8*, i8** %alternate_command.addr, align 8
  %call40 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %30, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.8, i32 0, i32 0), i8* %31, i8* %32)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.41:                                        ; preds = %do.end.26
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.13
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end
  %33 = load %struct._object*, %struct._object** %codec, align 8
  store %struct._object* %33, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.43, %do.end.39, %do.end, %if.then
  %34 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %34
}

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #2

declare i32 @PyErr_ExceptionMatches(%struct._object*) #2

declare i32 @PyObject_IsTrue(%struct._object*) #2

; Function Attrs: nounwind uwtable
define %struct._object* @_PyCodec_EncodeText(%struct._object* %object, i8* %encoding, i8* %errors) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %object.addr = alloca %struct._object*, align 8
  %encoding.addr = alloca i8*, align 8
  %errors.addr = alloca i8*, align 8
  %encoder = alloca %struct._object*, align 8
  store %struct._object* %object, %struct._object** %object.addr, align 8
  store i8* %encoding, i8** %encoding.addr, align 8
  store i8* %errors, i8** %errors.addr, align 8
  %0 = load i8*, i8** %encoding.addr, align 8
  %call = call %struct._object* @_PyCodec_TextEncoder(i8* %0)
  store %struct._object* %call, %struct._object** %encoder, align 8
  %1 = load %struct._object*, %struct._object** %encoder, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %object.addr, align 8
  %3 = load %struct._object*, %struct._object** %encoder, align 8
  %4 = load i8*, i8** %encoding.addr, align 8
  %5 = load i8*, i8** %errors.addr, align 8
  %call1 = call %struct._object* @_PyCodec_EncodeInternal(%struct._object* %2, %struct._object* %3, i8* %4, i8* %5)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_PyCodec_TextEncoder(i8* %encoding) #0 {
entry:
  %encoding.addr = alloca i8*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8
  %0 = load i8*, i8** %encoding.addr, align 8
  %call = call %struct._object* @codec_getitem_checked(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0), i32 0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyCodec_DecodeText(%struct._object* %object, i8* %encoding, i8* %errors) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %object.addr = alloca %struct._object*, align 8
  %encoding.addr = alloca i8*, align 8
  %errors.addr = alloca i8*, align 8
  %decoder = alloca %struct._object*, align 8
  store %struct._object* %object, %struct._object** %object.addr, align 8
  store i8* %encoding, i8** %encoding.addr, align 8
  store i8* %errors, i8** %errors.addr, align 8
  %0 = load i8*, i8** %encoding.addr, align 8
  %call = call %struct._object* @_PyCodec_TextDecoder(i8* %0)
  store %struct._object* %call, %struct._object** %decoder, align 8
  %1 = load %struct._object*, %struct._object** %decoder, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %object.addr, align 8
  %3 = load %struct._object*, %struct._object** %decoder, align 8
  %4 = load i8*, i8** %encoding.addr, align 8
  %5 = load i8*, i8** %errors.addr, align 8
  %call1 = call %struct._object* @_PyCodec_DecodeInternal(%struct._object* %2, %struct._object* %3, i8* %4, i8* %5)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_PyCodec_TextDecoder(i8* %encoding) #0 {
entry:
  %encoding.addr = alloca i8*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8
  %0 = load i8*, i8** %encoding.addr, align 8
  %call = call %struct._object* @codec_getitem_checked(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), i32 1)
  ret %struct._object* %call
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
  store i8* %name, i8** %name.addr, align 8
  store %struct._object* %error, %struct._object** %error.addr, align 8
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %0 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %0, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %1 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %2 = bitcast %struct._Py_atomic_address* %1 to i8*
  %3 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %2, i32 %3)
  %4 = load i32, i32* %order, align 4
  switch i32 %4, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %5 = load i8**, i8*** %volatile_data, align 8
  %6 = load volatile i8*, i8** %5, align 8
  store i8* %6, i8** %result, align 8
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ]

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.3

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %8 = load i8*, i8** %result, align 8
  store i8* %8, i8** %tmp
  %9 = load i8*, i8** %tmp
  %10 = bitcast i8* %9 to %struct._ts*
  %interp4 = getelementptr inbounds %struct._ts, %struct._ts* %10, i32 0, i32 2
  %11 = load %struct._is*, %struct._is** %interp4, align 8
  store %struct._is* %11, %struct._is** %interp, align 8
  %12 = load %struct._is*, %struct._is** %interp, align 8
  %codec_search_path = getelementptr inbounds %struct._is, %struct._is* %12, i32 0, i32 7
  %13 = load %struct._object*, %struct._object** %codec_search_path, align 8
  %cmp = icmp eq %struct._object* %13, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.epilog.3
  %call = call i32 @_PyCodecRegistry_Init()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %sw.epilog.3
  %14 = load %struct._object*, %struct._object** %error.addr, align 8
  %call5 = call i32 @PyCallable_Check(%struct._object* %14)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end
  %15 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %16 = load %struct._is*, %struct._is** %interp, align 8
  %codec_error_registry = getelementptr inbounds %struct._is, %struct._is* %16, i32 0, i32 9
  %17 = load %struct._object*, %struct._object** %codec_error_registry, align 8
  %18 = load i8*, i8** %name.addr, align 8
  %19 = load %struct._object*, %struct._object** %error.addr, align 8
  %call9 = call i32 @PyDict_SetItemString(%struct._object* %17, i8* %18, %struct._object* %19)
  store i32 %call9, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #2

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
  store i8* %name, i8** %name.addr, align 8
  store %struct._object* null, %struct._object** %handler, align 8
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %0 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %0, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %1 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %2 = bitcast %struct._Py_atomic_address* %1 to i8*
  %3 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %2, i32 %3)
  %4 = load i32, i32* %order, align 4
  switch i32 %4, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %5 = load i8**, i8*** %volatile_data, align 8
  %6 = load volatile i8*, i8** %5, align 8
  store i8* %6, i8** %result, align 8
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ]

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.3

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %8 = load i8*, i8** %result, align 8
  store i8* %8, i8** %tmp
  %9 = load i8*, i8** %tmp
  %10 = bitcast i8* %9 to %struct._ts*
  %interp4 = getelementptr inbounds %struct._ts, %struct._ts* %10, i32 0, i32 2
  %11 = load %struct._is*, %struct._is** %interp4, align 8
  store %struct._is* %11, %struct._is** %interp, align 8
  %12 = load %struct._is*, %struct._is** %interp, align 8
  %codec_search_path = getelementptr inbounds %struct._is, %struct._is* %12, i32 0, i32 7
  %13 = load %struct._object*, %struct._object** %codec_search_path, align 8
  %cmp = icmp eq %struct._object* %13, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.epilog.3
  %call = call i32 @_PyCodecRegistry_Init()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %sw.epilog.3
  %14 = load i8*, i8** %name.addr, align 8
  %cmp5 = icmp eq i8* %14, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8** %name.addr, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %15 = load %struct._is*, %struct._is** %interp, align 8
  %codec_error_registry = getelementptr inbounds %struct._is, %struct._is* %15, i32 0, i32 9
  %16 = load %struct._object*, %struct._object** %codec_error_registry, align 8
  %17 = load i8*, i8** %name.addr, align 8
  %call8 = call %struct._object* @PyDict_GetItemString(%struct._object* %16, i8* %17)
  store %struct._object* %call8, %struct._object** %handler, align 8
  %18 = load %struct._object*, %struct._object** %handler, align 8
  %tobool9 = icmp ne %struct._object* %18, null
  br i1 %tobool9, label %if.else, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  %19 = load %struct._object*, %struct._object** @PyExc_LookupError, align 8
  %20 = load i8*, i8** %name.addr, align 8
  %call11 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i32 0, i32 0), i8* %20)
  br label %if.end.12

if.else:                                          ; preds = %if.end.7
  %21 = load %struct._object*, %struct._object** %handler, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %22, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.10
  %23 = load %struct._object*, %struct._object** %handler, align 8
  store %struct._object* %23, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then
  %24 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %24
}

declare %struct._object* @PyDict_GetItemString(%struct._object*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_StrictErrors(%struct._object* %exc) #0 {
entry:
  %exc.addr = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 1073741824
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %exc.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %5 = bitcast %struct._typeobject* %4 to %struct._object*
  %6 = load %struct._object*, %struct._object** %exc.addr, align 8
  call void @PyErr_SetObject(%struct._object* %5, %struct._object* %6)
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret %struct._object* null
}

declare void @PyErr_SetObject(%struct._object*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PyCodec_IgnoreErrors(%struct._object* %exc) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %exc.addr = alloca %struct._object*, align 8
  %end = alloca i64, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8
  %1 = load %struct._object*, %struct._object** @PyExc_UnicodeEncodeError, align 8
  %call = call i32 @PyObject_IsInstance(%struct._object* %0, %struct._object* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call1 = call i32 @PyUnicodeEncodeError_GetEnd(%struct._object* %2, i64* %end)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.22

if.else:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %exc.addr, align 8
  %4 = load %struct._object*, %struct._object** @PyExc_UnicodeDecodeError, align 8
  %call4 = call i32 @PyObject_IsInstance(%struct._object* %3, %struct._object* %4)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else.11

if.then.6:                                        ; preds = %if.else
  %5 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call7 = call i32 @PyUnicodeDecodeError_GetEnd(%struct._object* %5, i64* %end)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.6
  br label %if.end.21

if.else.11:                                       ; preds = %if.else
  %6 = load %struct._object*, %struct._object** %exc.addr, align 8
  %7 = load %struct._object*, %struct._object** @PyExc_UnicodeTranslateError, align 8
  %call12 = call i32 @PyObject_IsInstance(%struct._object* %6, %struct._object* %7)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.19

if.then.14:                                       ; preds = %if.else.11
  %8 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call15 = call i32 @PyUnicodeTranslateError_GetEnd(%struct._object* %8, i64* %end)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.14
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.14
  br label %if.end.20

if.else.19:                                       ; preds = %if.else.11
  %9 = load %struct._object*, %struct._object** %exc.addr, align 8
  call void @wrong_exception_type(%struct._object* %9)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.18
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.10
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end
  %call23 = call %struct._object* @PyUnicode_New(i64 0, i32 0)
  %10 = load i64, i64* %end, align 8
  %call24 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), %struct._object* %call23, i64 %10)
  store %struct._object* %call24, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.else.19, %if.then.17, %if.then.9, %if.then.3
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

declare i32 @PyObject_IsInstance(%struct._object*, %struct._object*) #2

declare i32 @PyUnicodeEncodeError_GetEnd(%struct._object*, i64*) #2

declare i32 @PyUnicodeDecodeError_GetEnd(%struct._object*, i64*) #2

declare i32 @PyUnicodeTranslateError_GetEnd(%struct._object*, i64*) #2

; Function Attrs: nounwind uwtable
define internal void @wrong_exception_type(%struct._object* %exc) #0 {
entry:
  %exc.addr = alloca %struct._object*, align 8
  %type = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp8 = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call = call %struct._object* @_PyObject_GetAttrId(%struct._object* %0, %struct._Py_Identifier* @wrong_exception_type.PyId___class__)
  store %struct._object* %call, %struct._object** %type, align 8
  %1 = load %struct._object*, %struct._object** %type, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %type, align 8
  %call1 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %2, %struct._Py_Identifier* @wrong_exception_type.PyId___name__)
  store %struct._object* %call1, %struct._object** %name, align 8
  br label %do.body

do.body:                                          ; preds = %if.then
  %3 = load %struct._object*, %struct._object** %type, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %name, align 8
  %cmp4 = icmp ne %struct._object* %10, null
  br i1 %cmp4, label %if.then.5, label %if.end.18

if.then.5:                                        ; preds = %do.end
  %11 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %12 = load %struct._object*, %struct._object** %name, align 8
  %call6 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %11, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i32 0, i32 0), %struct._object* %12)
  br label %do.body.7

do.body.7:                                        ; preds = %if.then.5
  %13 = load %struct._object*, %struct._object** %name, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp8, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp8, align 8
  %ob_refcnt9 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt9, align 8
  %dec10 = add i64 %15, -1
  store i64 %dec10, i64* %ob_refcnt9, align 8
  %cmp11 = icmp ne i64 %dec10, 0
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %do.body.7
  br label %if.end.16

if.else.13:                                       ; preds = %do.body.7
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp8, align 8
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8
  %tp_dealloc15 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc15, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp8, align 8
  call void %18(%struct._object* %19)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.13, %if.then.12
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %if.end.18

if.end.18:                                        ; preds = %do.end.17, %do.end
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %entry
  ret void
}

declare %struct._object* @Py_BuildValue(i8*, ...) #2

declare %struct._object* @PyUnicode_New(i64, i32) #2

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
  %res44 = alloca %struct._object*, align 8
  %kind45 = alloca i32, align 4
  %data46 = alloca i8*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8
  %1 = load %struct._object*, %struct._object** @PyExc_UnicodeEncodeError, align 8
  %call = call i32 @PyObject_IsInstance(%struct._object* %0, %struct._object* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call1 = call i32 @PyUnicodeEncodeError_GetStart(%struct._object* %2, i64* %start)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call4 = call i32 @PyUnicodeEncodeError_GetEnd(%struct._object* %3, i64* %end)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %4 = load i64, i64* %end, align 8
  %5 = load i64, i64* %start, align 8
  %sub = sub i64 %4, %5
  store i64 %sub, i64* %len, align 8
  %6 = load i64, i64* %len, align 8
  %call8 = call %struct._object* @PyUnicode_New(i64 %6, i32 63)
  store %struct._object* %call8, %struct._object** %res, align 8
  %7 = load %struct._object*, %struct._object** %res, align 8
  %cmp = icmp eq %struct._object* %7, null
  br i1 %cmp, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.7
  %8 = load %struct._object*, %struct._object** %res, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %9, i32 0, i32 3
  %10 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %10, align 4
  %bf.lshr = lshr i32 %bf.load, 2
  %bf.clear = and i32 %bf.lshr, 7
  store i32 %bf.clear, i32* %kind, align 4
  %11 = load %struct._object*, %struct._object** %res, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyASCIIObject*
  %state11 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %12, i32 0, i32 3
  %13 = bitcast %struct.anon* %state11 to i32*
  %bf.load12 = load i32, i32* %13, align 4
  %bf.lshr13 = lshr i32 %bf.load12, 5
  %bf.clear14 = and i32 %bf.lshr13, 1
  %tobool15 = icmp ne i32 %bf.clear14, 0
  br i1 %tobool15, label %cond.true, label %cond.false.23

cond.true:                                        ; preds = %if.end.10
  %14 = load %struct._object*, %struct._object** %res, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyASCIIObject*
  %state16 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %15, i32 0, i32 3
  %16 = bitcast %struct.anon* %state16 to i32*
  %bf.load17 = load i32, i32* %16, align 4
  %bf.lshr18 = lshr i32 %bf.load17, 6
  %bf.clear19 = and i32 %bf.lshr18, 1
  %tobool20 = icmp ne i32 %bf.clear19, 0
  br i1 %tobool20, label %cond.true.21, label %cond.false

cond.true.21:                                     ; preds = %cond.true
  %17 = load %struct._object*, %struct._object** %res, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %18, i64 1
  %19 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %20 = load %struct._object*, %struct._object** %res, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyCompactUnicodeObject*
  %add.ptr22 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %21, i64 1
  %22 = bitcast %struct.PyCompactUnicodeObject* %add.ptr22 to i8*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.21
  %cond = phi i8* [ %19, %cond.true.21 ], [ %22, %cond.false ]
  br label %cond.end.25

cond.false.23:                                    ; preds = %if.end.10
  %23 = load %struct._object*, %struct._object** %res, align 8
  %24 = bitcast %struct._object* %23 to %struct.PyUnicodeObject*
  %data24 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %24, i32 0, i32 1
  %any = bitcast %union.anon* %data24 to i8**
  %25 = load i8*, i8** %any, align 8
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.23, %cond.end
  %cond26 = phi i8* [ %cond, %cond.end ], [ %25, %cond.false.23 ]
  store i8* %cond26, i8** %data, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.25
  %26 = load i64, i64* %i, align 8
  %27 = load i64, i64* %len, align 8
  %cmp27 = icmp slt i64 %26, %27
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %28 = load i32, i32* %kind, align 4
  switch i32 %28, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.28
  ]

sw.bb:                                            ; preds = %do.body
  %29 = load i64, i64* %i, align 8
  %30 = load i8*, i8** %data, align 8
  %arrayidx = getelementptr i8, i8* %30, i64 %29
  store i8 63, i8* %arrayidx, align 1
  br label %sw.epilog

sw.bb.28:                                         ; preds = %do.body
  %31 = load i64, i64* %i, align 8
  %32 = load i8*, i8** %data, align 8
  %33 = bitcast i8* %32 to i16*
  %arrayidx29 = getelementptr i16, i16* %33, i64 %31
  store i16 63, i16* %arrayidx29, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  %34 = load i64, i64* %i, align 8
  %35 = load i8*, i8** %data, align 8
  %36 = bitcast i8* %35 to i32*
  %arrayidx30 = getelementptr i32, i32* %36, i64 %34
  store i32 63, i32* %arrayidx30, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.28, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %37 = load i64, i64* %i, align 8
  %inc = add i64 %37, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load %struct._object*, %struct._object** %res, align 8
  %39 = load i64, i64* %end, align 8
  %call31 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), %struct._object* %38, i64 %39)
  store %struct._object* %call31, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %40 = load %struct._object*, %struct._object** %exc.addr, align 8
  %41 = load %struct._object*, %struct._object** @PyExc_UnicodeDecodeError, align 8
  %call32 = call i32 @PyObject_IsInstance(%struct._object* %40, %struct._object* %41)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.else.40

if.then.34:                                       ; preds = %if.else
  %42 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call35 = call i32 @PyUnicodeDecodeError_GetEnd(%struct._object* %42, i64* %end)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.then.34
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.34
  %43 = load i64, i64* %end, align 8
  %call39 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 65533, i64 %43)
  store %struct._object* %call39, %struct._object** %retval
  br label %return

if.else.40:                                       ; preds = %if.else
  %44 = load %struct._object*, %struct._object** %exc.addr, align 8
  %45 = load %struct._object*, %struct._object** @PyExc_UnicodeTranslateError, align 8
  %call41 = call i32 @PyObject_IsInstance(%struct._object* %44, %struct._object* %45)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.else.102

if.then.43:                                       ; preds = %if.else.40
  %46 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call47 = call i32 @PyUnicodeTranslateError_GetStart(%struct._object* %46, i64* %start)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.then.43
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.50:                                        ; preds = %if.then.43
  %47 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call51 = call i32 @PyUnicodeTranslateError_GetEnd(%struct._object* %47, i64* %end)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.50
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.54:                                        ; preds = %if.end.50
  %48 = load i64, i64* %end, align 8
  %49 = load i64, i64* %start, align 8
  %sub55 = sub i64 %48, %49
  store i64 %sub55, i64* %len, align 8
  %50 = load i64, i64* %len, align 8
  %call56 = call %struct._object* @PyUnicode_New(i64 %50, i32 65533)
  store %struct._object* %call56, %struct._object** %res44, align 8
  %51 = load %struct._object*, %struct._object** %res44, align 8
  %cmp57 = icmp eq %struct._object* %51, null
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.54
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.59:                                        ; preds = %if.end.54
  %52 = load %struct._object*, %struct._object** %res44, align 8
  %53 = bitcast %struct._object* %52 to %struct.PyASCIIObject*
  %state60 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %53, i32 0, i32 3
  %54 = bitcast %struct.anon* %state60 to i32*
  %bf.load61 = load i32, i32* %54, align 4
  %bf.lshr62 = lshr i32 %bf.load61, 2
  %bf.clear63 = and i32 %bf.lshr62, 7
  store i32 %bf.clear63, i32* %kind45, align 4
  %55 = load %struct._object*, %struct._object** %res44, align 8
  %56 = bitcast %struct._object* %55 to %struct.PyASCIIObject*
  %state64 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %56, i32 0, i32 3
  %57 = bitcast %struct.anon* %state64 to i32*
  %bf.load65 = load i32, i32* %57, align 4
  %bf.lshr66 = lshr i32 %bf.load65, 5
  %bf.clear67 = and i32 %bf.lshr66, 1
  %tobool68 = icmp ne i32 %bf.clear67, 0
  br i1 %tobool68, label %cond.true.69, label %cond.false.81

cond.true.69:                                     ; preds = %if.end.59
  %58 = load %struct._object*, %struct._object** %res44, align 8
  %59 = bitcast %struct._object* %58 to %struct.PyASCIIObject*
  %state70 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %59, i32 0, i32 3
  %60 = bitcast %struct.anon* %state70 to i32*
  %bf.load71 = load i32, i32* %60, align 4
  %bf.lshr72 = lshr i32 %bf.load71, 6
  %bf.clear73 = and i32 %bf.lshr72, 1
  %tobool74 = icmp ne i32 %bf.clear73, 0
  br i1 %tobool74, label %cond.true.75, label %cond.false.77

cond.true.75:                                     ; preds = %cond.true.69
  %61 = load %struct._object*, %struct._object** %res44, align 8
  %62 = bitcast %struct._object* %61 to %struct.PyASCIIObject*
  %add.ptr76 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %62, i64 1
  %63 = bitcast %struct.PyASCIIObject* %add.ptr76 to i8*
  br label %cond.end.79

cond.false.77:                                    ; preds = %cond.true.69
  %64 = load %struct._object*, %struct._object** %res44, align 8
  %65 = bitcast %struct._object* %64 to %struct.PyCompactUnicodeObject*
  %add.ptr78 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %65, i64 1
  %66 = bitcast %struct.PyCompactUnicodeObject* %add.ptr78 to i8*
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.77, %cond.true.75
  %cond80 = phi i8* [ %63, %cond.true.75 ], [ %66, %cond.false.77 ]
  br label %cond.end.84

cond.false.81:                                    ; preds = %if.end.59
  %67 = load %struct._object*, %struct._object** %res44, align 8
  %68 = bitcast %struct._object* %67 to %struct.PyUnicodeObject*
  %data82 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %68, i32 0, i32 1
  %any83 = bitcast %union.anon* %data82 to i8**
  %69 = load i8*, i8** %any83, align 8
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.81, %cond.end.79
  %cond85 = phi i8* [ %cond80, %cond.end.79 ], [ %69, %cond.false.81 ]
  store i8* %cond85, i8** %data46, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.98, %cond.end.84
  %70 = load i64, i64* %i, align 8
  %71 = load i64, i64* %len, align 8
  %cmp87 = icmp slt i64 %70, %71
  br i1 %cmp87, label %for.body.88, label %for.end.100

for.body.88:                                      ; preds = %for.cond.86
  br label %do.body.89

do.body.89:                                       ; preds = %for.body.88
  %72 = load i32, i32* %kind45, align 4
  switch i32 %72, label %sw.default.94 [
    i32 1, label %sw.bb.90
    i32 2, label %sw.bb.92
  ]

sw.bb.90:                                         ; preds = %do.body.89
  %73 = load i64, i64* %i, align 8
  %74 = load i8*, i8** %data46, align 8
  %arrayidx91 = getelementptr i8, i8* %74, i64 %73
  store i8 -3, i8* %arrayidx91, align 1
  br label %sw.epilog.96

sw.bb.92:                                         ; preds = %do.body.89
  %75 = load i64, i64* %i, align 8
  %76 = load i8*, i8** %data46, align 8
  %77 = bitcast i8* %76 to i16*
  %arrayidx93 = getelementptr i16, i16* %77, i64 %75
  store i16 -3, i16* %arrayidx93, align 2
  br label %sw.epilog.96

sw.default.94:                                    ; preds = %do.body.89
  %78 = load i64, i64* %i, align 8
  %79 = load i8*, i8** %data46, align 8
  %80 = bitcast i8* %79 to i32*
  %arrayidx95 = getelementptr i32, i32* %80, i64 %78
  store i32 65533, i32* %arrayidx95, align 4
  br label %sw.epilog.96

sw.epilog.96:                                     ; preds = %sw.default.94, %sw.bb.92, %sw.bb.90
  br label %do.end.97

do.end.97:                                        ; preds = %sw.epilog.96
  br label %for.inc.98

for.inc.98:                                       ; preds = %do.end.97
  %81 = load i64, i64* %i, align 8
  %inc99 = add i64 %81, 1
  store i64 %inc99, i64* %i, align 8
  br label %for.cond.86

for.end.100:                                      ; preds = %for.cond.86
  %82 = load %struct._object*, %struct._object** %res44, align 8
  %83 = load i64, i64* %end, align 8
  %call101 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), %struct._object* %82, i64 %83)
  store %struct._object* %call101, %struct._object** %retval
  br label %return

if.else.102:                                      ; preds = %if.else.40
  %84 = load %struct._object*, %struct._object** %exc.addr, align 8
  call void @wrong_exception_type(%struct._object* %84)
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.102, %for.end.100, %if.then.58, %if.then.53, %if.then.49, %if.end.38, %if.then.37, %for.end, %if.then.9, %if.then.6, %if.then.3
  %85 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %85
}

declare i32 @PyUnicodeEncodeError_GetStart(%struct._object*, i64*) #2

declare i32 @PyUnicodeTranslateError_GetStart(%struct._object*, i64*) #2

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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %digits = alloca i32, align 4
  %base = alloca i32, align 4
  %_py_decref_tmp296 = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8
  %1 = load %struct._object*, %struct._object** @PyExc_UnicodeEncodeError, align 8
  %call = call i32 @PyObject_IsInstance(%struct._object* %0, %struct._object* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else.307

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call1 = call i32 @PyUnicodeEncodeError_GetStart(%struct._object* %2, i64* %start)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call4 = call i32 @PyUnicodeEncodeError_GetEnd(%struct._object* %3, i64* %end)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call8 = call %struct._object* @PyUnicodeEncodeError_GetObject(%struct._object* %4)
  store %struct._object* %call8, %struct._object** %object, align 8
  %tobool9 = icmp ne %struct._object* %call8, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  %5 = load i64, i64* %start, align 8
  store i64 %5, i64* %i, align 8
  store i32 0, i32* %ressize, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %6 = load i64, i64* %i, align 8
  %7 = load i64, i64* %end, align 8
  %cmp = icmp slt i64 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._object*, %struct._object** %object, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %9, i32 0, i32 3
  %10 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %10, align 4
  %bf.lshr = lshr i32 %bf.load, 2
  %bf.clear = and i32 %bf.lshr, 7
  %cmp12 = icmp eq i32 %bf.clear, 1
  br i1 %cmp12, label %cond.true, label %cond.false.29

cond.true:                                        ; preds = %for.body
  %11 = load i64, i64* %i, align 8
  %12 = load %struct._object*, %struct._object** %object, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyASCIIObject*
  %state13 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %13, i32 0, i32 3
  %14 = bitcast %struct.anon* %state13 to i32*
  %bf.load14 = load i32, i32* %14, align 4
  %bf.lshr15 = lshr i32 %bf.load14, 5
  %bf.clear16 = and i32 %bf.lshr15, 1
  %tobool17 = icmp ne i32 %bf.clear16, 0
  br i1 %tobool17, label %cond.true.18, label %cond.false.26

cond.true.18:                                     ; preds = %cond.true
  %15 = load %struct._object*, %struct._object** %object, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyASCIIObject*
  %state19 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %16, i32 0, i32 3
  %17 = bitcast %struct.anon* %state19 to i32*
  %bf.load20 = load i32, i32* %17, align 4
  %bf.lshr21 = lshr i32 %bf.load20, 6
  %bf.clear22 = and i32 %bf.lshr21, 1
  %tobool23 = icmp ne i32 %bf.clear22, 0
  br i1 %tobool23, label %cond.true.24, label %cond.false

cond.true.24:                                     ; preds = %cond.true.18
  %18 = load %struct._object*, %struct._object** %object, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %19, i64 1
  %20 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end

cond.false:                                       ; preds = %cond.true.18
  %21 = load %struct._object*, %struct._object** %object, align 8
  %22 = bitcast %struct._object* %21 to %struct.PyCompactUnicodeObject*
  %add.ptr25 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %22, i64 1
  %23 = bitcast %struct.PyCompactUnicodeObject* %add.ptr25 to i8*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.24
  %cond = phi i8* [ %20, %cond.true.24 ], [ %23, %cond.false ]
  br label %cond.end.27

cond.false.26:                                    ; preds = %cond.true
  %24 = load %struct._object*, %struct._object** %object, align 8
  %25 = bitcast %struct._object* %24 to %struct.PyUnicodeObject*
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %25, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %26 = load i8*, i8** %any, align 8
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.26, %cond.end
  %cond28 = phi i8* [ %cond, %cond.end ], [ %26, %cond.false.26 ]
  %arrayidx = getelementptr i8, i8* %cond28, i64 %11
  %27 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %27 to i32
  br label %cond.end.87

cond.false.29:                                    ; preds = %for.body
  %28 = load %struct._object*, %struct._object** %object, align 8
  %29 = bitcast %struct._object* %28 to %struct.PyASCIIObject*
  %state30 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %29, i32 0, i32 3
  %30 = bitcast %struct.anon* %state30 to i32*
  %bf.load31 = load i32, i32* %30, align 4
  %bf.lshr32 = lshr i32 %bf.load31, 2
  %bf.clear33 = and i32 %bf.lshr32, 7
  %cmp34 = icmp eq i32 %bf.clear33, 2
  br i1 %cmp34, label %cond.true.36, label %cond.false.61

cond.true.36:                                     ; preds = %cond.false.29
  %31 = load i64, i64* %i, align 8
  %32 = load %struct._object*, %struct._object** %object, align 8
  %33 = bitcast %struct._object* %32 to %struct.PyASCIIObject*
  %state37 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %33, i32 0, i32 3
  %34 = bitcast %struct.anon* %state37 to i32*
  %bf.load38 = load i32, i32* %34, align 4
  %bf.lshr39 = lshr i32 %bf.load38, 5
  %bf.clear40 = and i32 %bf.lshr39, 1
  %tobool41 = icmp ne i32 %bf.clear40, 0
  br i1 %tobool41, label %cond.true.42, label %cond.false.54

cond.true.42:                                     ; preds = %cond.true.36
  %35 = load %struct._object*, %struct._object** %object, align 8
  %36 = bitcast %struct._object* %35 to %struct.PyASCIIObject*
  %state43 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %36, i32 0, i32 3
  %37 = bitcast %struct.anon* %state43 to i32*
  %bf.load44 = load i32, i32* %37, align 4
  %bf.lshr45 = lshr i32 %bf.load44, 6
  %bf.clear46 = and i32 %bf.lshr45, 1
  %tobool47 = icmp ne i32 %bf.clear46, 0
  br i1 %tobool47, label %cond.true.48, label %cond.false.50

cond.true.48:                                     ; preds = %cond.true.42
  %38 = load %struct._object*, %struct._object** %object, align 8
  %39 = bitcast %struct._object* %38 to %struct.PyASCIIObject*
  %add.ptr49 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %39, i64 1
  %40 = bitcast %struct.PyASCIIObject* %add.ptr49 to i8*
  br label %cond.end.52

cond.false.50:                                    ; preds = %cond.true.42
  %41 = load %struct._object*, %struct._object** %object, align 8
  %42 = bitcast %struct._object* %41 to %struct.PyCompactUnicodeObject*
  %add.ptr51 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %42, i64 1
  %43 = bitcast %struct.PyCompactUnicodeObject* %add.ptr51 to i8*
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.50, %cond.true.48
  %cond53 = phi i8* [ %40, %cond.true.48 ], [ %43, %cond.false.50 ]
  br label %cond.end.57

cond.false.54:                                    ; preds = %cond.true.36
  %44 = load %struct._object*, %struct._object** %object, align 8
  %45 = bitcast %struct._object* %44 to %struct.PyUnicodeObject*
  %data55 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %45, i32 0, i32 1
  %any56 = bitcast %union.anon* %data55 to i8**
  %46 = load i8*, i8** %any56, align 8
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.54, %cond.end.52
  %cond58 = phi i8* [ %cond53, %cond.end.52 ], [ %46, %cond.false.54 ]
  %47 = bitcast i8* %cond58 to i16*
  %arrayidx59 = getelementptr i16, i16* %47, i64 %31
  %48 = load i16, i16* %arrayidx59, align 2
  %conv60 = zext i16 %48 to i32
  br label %cond.end.85

cond.false.61:                                    ; preds = %cond.false.29
  %49 = load i64, i64* %i, align 8
  %50 = load %struct._object*, %struct._object** %object, align 8
  %51 = bitcast %struct._object* %50 to %struct.PyASCIIObject*
  %state62 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %51, i32 0, i32 3
  %52 = bitcast %struct.anon* %state62 to i32*
  %bf.load63 = load i32, i32* %52, align 4
  %bf.lshr64 = lshr i32 %bf.load63, 5
  %bf.clear65 = and i32 %bf.lshr64, 1
  %tobool66 = icmp ne i32 %bf.clear65, 0
  br i1 %tobool66, label %cond.true.67, label %cond.false.79

cond.true.67:                                     ; preds = %cond.false.61
  %53 = load %struct._object*, %struct._object** %object, align 8
  %54 = bitcast %struct._object* %53 to %struct.PyASCIIObject*
  %state68 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %54, i32 0, i32 3
  %55 = bitcast %struct.anon* %state68 to i32*
  %bf.load69 = load i32, i32* %55, align 4
  %bf.lshr70 = lshr i32 %bf.load69, 6
  %bf.clear71 = and i32 %bf.lshr70, 1
  %tobool72 = icmp ne i32 %bf.clear71, 0
  br i1 %tobool72, label %cond.true.73, label %cond.false.75

cond.true.73:                                     ; preds = %cond.true.67
  %56 = load %struct._object*, %struct._object** %object, align 8
  %57 = bitcast %struct._object* %56 to %struct.PyASCIIObject*
  %add.ptr74 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %57, i64 1
  %58 = bitcast %struct.PyASCIIObject* %add.ptr74 to i8*
  br label %cond.end.77

cond.false.75:                                    ; preds = %cond.true.67
  %59 = load %struct._object*, %struct._object** %object, align 8
  %60 = bitcast %struct._object* %59 to %struct.PyCompactUnicodeObject*
  %add.ptr76 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %60, i64 1
  %61 = bitcast %struct.PyCompactUnicodeObject* %add.ptr76 to i8*
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.75, %cond.true.73
  %cond78 = phi i8* [ %58, %cond.true.73 ], [ %61, %cond.false.75 ]
  br label %cond.end.82

cond.false.79:                                    ; preds = %cond.false.61
  %62 = load %struct._object*, %struct._object** %object, align 8
  %63 = bitcast %struct._object* %62 to %struct.PyUnicodeObject*
  %data80 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %63, i32 0, i32 1
  %any81 = bitcast %union.anon* %data80 to i8**
  %64 = load i8*, i8** %any81, align 8
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.79, %cond.end.77
  %cond83 = phi i8* [ %cond78, %cond.end.77 ], [ %64, %cond.false.79 ]
  %65 = bitcast i8* %cond83 to i32*
  %arrayidx84 = getelementptr i32, i32* %65, i64 %49
  %66 = load i32, i32* %arrayidx84, align 4
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.end.82, %cond.end.57
  %cond86 = phi i32 [ %conv60, %cond.end.57 ], [ %66, %cond.end.82 ]
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.end.85, %cond.end.27
  %cond88 = phi i32 [ %conv, %cond.end.27 ], [ %cond86, %cond.end.85 ]
  store i32 %cond88, i32* %ch, align 4
  %67 = load i32, i32* %ch, align 4
  %cmp89 = icmp ult i32 %67, 10
  br i1 %cmp89, label %if.then.91, label %if.else

if.then.91:                                       ; preds = %cond.end.87
  %68 = load i32, i32* %ressize, align 4
  %add = add i32 %68, 4
  store i32 %add, i32* %ressize, align 4
  br label %if.end.123

if.else:                                          ; preds = %cond.end.87
  %69 = load i32, i32* %ch, align 4
  %cmp92 = icmp ult i32 %69, 100
  br i1 %cmp92, label %if.then.94, label %if.else.96

if.then.94:                                       ; preds = %if.else
  %70 = load i32, i32* %ressize, align 4
  %add95 = add i32 %70, 5
  store i32 %add95, i32* %ressize, align 4
  br label %if.end.122

if.else.96:                                       ; preds = %if.else
  %71 = load i32, i32* %ch, align 4
  %cmp97 = icmp ult i32 %71, 1000
  br i1 %cmp97, label %if.then.99, label %if.else.101

if.then.99:                                       ; preds = %if.else.96
  %72 = load i32, i32* %ressize, align 4
  %add100 = add i32 %72, 6
  store i32 %add100, i32* %ressize, align 4
  br label %if.end.121

if.else.101:                                      ; preds = %if.else.96
  %73 = load i32, i32* %ch, align 4
  %cmp102 = icmp ult i32 %73, 10000
  br i1 %cmp102, label %if.then.104, label %if.else.106

if.then.104:                                      ; preds = %if.else.101
  %74 = load i32, i32* %ressize, align 4
  %add105 = add i32 %74, 7
  store i32 %add105, i32* %ressize, align 4
  br label %if.end.120

if.else.106:                                      ; preds = %if.else.101
  %75 = load i32, i32* %ch, align 4
  %cmp107 = icmp ult i32 %75, 100000
  br i1 %cmp107, label %if.then.109, label %if.else.111

if.then.109:                                      ; preds = %if.else.106
  %76 = load i32, i32* %ressize, align 4
  %add110 = add i32 %76, 8
  store i32 %add110, i32* %ressize, align 4
  br label %if.end.119

if.else.111:                                      ; preds = %if.else.106
  %77 = load i32, i32* %ch, align 4
  %cmp112 = icmp ult i32 %77, 1000000
  br i1 %cmp112, label %if.then.114, label %if.else.116

if.then.114:                                      ; preds = %if.else.111
  %78 = load i32, i32* %ressize, align 4
  %add115 = add i32 %78, 9
  store i32 %add115, i32* %ressize, align 4
  br label %if.end.118

if.else.116:                                      ; preds = %if.else.111
  %79 = load i32, i32* %ressize, align 4
  %add117 = add i32 %79, 10
  store i32 %add117, i32* %ressize, align 4
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
  br label %for.inc

for.inc:                                          ; preds = %if.end.123
  %80 = load i64, i64* %i, align 8
  %inc = add i64 %80, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %81 = load i32, i32* %ressize, align 4
  %conv124 = sext i32 %81 to i64
  %call125 = call %struct._object* @PyUnicode_New(i64 %conv124, i32 127)
  store %struct._object* %call125, %struct._object** %res, align 8
  %82 = load %struct._object*, %struct._object** %res, align 8
  %cmp126 = icmp eq %struct._object* %82, null
  br i1 %cmp126, label %if.then.128, label %if.end.134

if.then.128:                                      ; preds = %for.end
  br label %do.body

do.body:                                          ; preds = %if.then.128
  %83 = load %struct._object*, %struct._object** %object, align 8
  store %struct._object* %83, %struct._object** %_py_decref_tmp, align 8
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 0
  %85 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %85, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp129 = icmp ne i64 %dec, 0
  br i1 %cmp129, label %if.then.131, label %if.else.132

if.then.131:                                      ; preds = %do.body
  br label %if.end.133

if.else.132:                                      ; preds = %do.body
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 1
  %87 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %87, i32 0, i32 4
  %88 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %88(%struct._object* %89)
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.132, %if.then.131
  br label %do.end

do.end:                                           ; preds = %if.end.133
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.134:                                       ; preds = %for.end
  %90 = load %struct._object*, %struct._object** %res, align 8
  %91 = bitcast %struct._object* %90 to %struct.PyASCIIObject*
  %state135 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %91, i32 0, i32 3
  %92 = bitcast %struct.anon* %state135 to i32*
  %bf.load136 = load i32, i32* %92, align 4
  %bf.lshr137 = lshr i32 %bf.load136, 5
  %bf.clear138 = and i32 %bf.lshr137, 1
  %tobool139 = icmp ne i32 %bf.clear138, 0
  br i1 %tobool139, label %cond.true.140, label %cond.false.152

cond.true.140:                                    ; preds = %if.end.134
  %93 = load %struct._object*, %struct._object** %res, align 8
  %94 = bitcast %struct._object* %93 to %struct.PyASCIIObject*
  %state141 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %94, i32 0, i32 3
  %95 = bitcast %struct.anon* %state141 to i32*
  %bf.load142 = load i32, i32* %95, align 4
  %bf.lshr143 = lshr i32 %bf.load142, 6
  %bf.clear144 = and i32 %bf.lshr143, 1
  %tobool145 = icmp ne i32 %bf.clear144, 0
  br i1 %tobool145, label %cond.true.146, label %cond.false.148

cond.true.146:                                    ; preds = %cond.true.140
  %96 = load %struct._object*, %struct._object** %res, align 8
  %97 = bitcast %struct._object* %96 to %struct.PyASCIIObject*
  %add.ptr147 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %97, i64 1
  %98 = bitcast %struct.PyASCIIObject* %add.ptr147 to i8*
  br label %cond.end.150

cond.false.148:                                   ; preds = %cond.true.140
  %99 = load %struct._object*, %struct._object** %res, align 8
  %100 = bitcast %struct._object* %99 to %struct.PyCompactUnicodeObject*
  %add.ptr149 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %100, i64 1
  %101 = bitcast %struct.PyCompactUnicodeObject* %add.ptr149 to i8*
  br label %cond.end.150

cond.end.150:                                     ; preds = %cond.false.148, %cond.true.146
  %cond151 = phi i8* [ %98, %cond.true.146 ], [ %101, %cond.false.148 ]
  br label %cond.end.155

cond.false.152:                                   ; preds = %if.end.134
  %102 = load %struct._object*, %struct._object** %res, align 8
  %103 = bitcast %struct._object* %102 to %struct.PyUnicodeObject*
  %data153 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %103, i32 0, i32 1
  %any154 = bitcast %union.anon* %data153 to i8**
  %104 = load i8*, i8** %any154, align 8
  br label %cond.end.155

cond.end.155:                                     ; preds = %cond.false.152, %cond.end.150
  %cond156 = phi i8* [ %cond151, %cond.end.150 ], [ %104, %cond.false.152 ]
  store i8* %cond156, i8** %outp, align 8
  %105 = load i64, i64* %start, align 8
  store i64 %105, i64* %i, align 8
  br label %for.cond.157

for.cond.157:                                     ; preds = %for.inc.291, %cond.end.155
  %106 = load i64, i64* %i, align 8
  %107 = load i64, i64* %end, align 8
  %cmp158 = icmp slt i64 %106, %107
  br i1 %cmp158, label %for.body.160, label %for.end.293

for.body.160:                                     ; preds = %for.cond.157
  %108 = load %struct._object*, %struct._object** %object, align 8
  %109 = bitcast %struct._object* %108 to %struct.PyASCIIObject*
  %state161 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %109, i32 0, i32 3
  %110 = bitcast %struct.anon* %state161 to i32*
  %bf.load162 = load i32, i32* %110, align 4
  %bf.lshr163 = lshr i32 %bf.load162, 2
  %bf.clear164 = and i32 %bf.lshr163, 7
  %cmp165 = icmp eq i32 %bf.clear164, 1
  br i1 %cmp165, label %cond.true.167, label %cond.false.192

cond.true.167:                                    ; preds = %for.body.160
  %111 = load i64, i64* %i, align 8
  %112 = load %struct._object*, %struct._object** %object, align 8
  %113 = bitcast %struct._object* %112 to %struct.PyASCIIObject*
  %state168 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %113, i32 0, i32 3
  %114 = bitcast %struct.anon* %state168 to i32*
  %bf.load169 = load i32, i32* %114, align 4
  %bf.lshr170 = lshr i32 %bf.load169, 5
  %bf.clear171 = and i32 %bf.lshr170, 1
  %tobool172 = icmp ne i32 %bf.clear171, 0
  br i1 %tobool172, label %cond.true.173, label %cond.false.185

cond.true.173:                                    ; preds = %cond.true.167
  %115 = load %struct._object*, %struct._object** %object, align 8
  %116 = bitcast %struct._object* %115 to %struct.PyASCIIObject*
  %state174 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %116, i32 0, i32 3
  %117 = bitcast %struct.anon* %state174 to i32*
  %bf.load175 = load i32, i32* %117, align 4
  %bf.lshr176 = lshr i32 %bf.load175, 6
  %bf.clear177 = and i32 %bf.lshr176, 1
  %tobool178 = icmp ne i32 %bf.clear177, 0
  br i1 %tobool178, label %cond.true.179, label %cond.false.181

cond.true.179:                                    ; preds = %cond.true.173
  %118 = load %struct._object*, %struct._object** %object, align 8
  %119 = bitcast %struct._object* %118 to %struct.PyASCIIObject*
  %add.ptr180 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %119, i64 1
  %120 = bitcast %struct.PyASCIIObject* %add.ptr180 to i8*
  br label %cond.end.183

cond.false.181:                                   ; preds = %cond.true.173
  %121 = load %struct._object*, %struct._object** %object, align 8
  %122 = bitcast %struct._object* %121 to %struct.PyCompactUnicodeObject*
  %add.ptr182 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %122, i64 1
  %123 = bitcast %struct.PyCompactUnicodeObject* %add.ptr182 to i8*
  br label %cond.end.183

cond.end.183:                                     ; preds = %cond.false.181, %cond.true.179
  %cond184 = phi i8* [ %120, %cond.true.179 ], [ %123, %cond.false.181 ]
  br label %cond.end.188

cond.false.185:                                   ; preds = %cond.true.167
  %124 = load %struct._object*, %struct._object** %object, align 8
  %125 = bitcast %struct._object* %124 to %struct.PyUnicodeObject*
  %data186 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %125, i32 0, i32 1
  %any187 = bitcast %union.anon* %data186 to i8**
  %126 = load i8*, i8** %any187, align 8
  br label %cond.end.188

cond.end.188:                                     ; preds = %cond.false.185, %cond.end.183
  %cond189 = phi i8* [ %cond184, %cond.end.183 ], [ %126, %cond.false.185 ]
  %arrayidx190 = getelementptr i8, i8* %cond189, i64 %111
  %127 = load i8, i8* %arrayidx190, align 1
  %conv191 = zext i8 %127 to i32
  br label %cond.end.250

cond.false.192:                                   ; preds = %for.body.160
  %128 = load %struct._object*, %struct._object** %object, align 8
  %129 = bitcast %struct._object* %128 to %struct.PyASCIIObject*
  %state193 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %129, i32 0, i32 3
  %130 = bitcast %struct.anon* %state193 to i32*
  %bf.load194 = load i32, i32* %130, align 4
  %bf.lshr195 = lshr i32 %bf.load194, 2
  %bf.clear196 = and i32 %bf.lshr195, 7
  %cmp197 = icmp eq i32 %bf.clear196, 2
  br i1 %cmp197, label %cond.true.199, label %cond.false.224

cond.true.199:                                    ; preds = %cond.false.192
  %131 = load i64, i64* %i, align 8
  %132 = load %struct._object*, %struct._object** %object, align 8
  %133 = bitcast %struct._object* %132 to %struct.PyASCIIObject*
  %state200 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %133, i32 0, i32 3
  %134 = bitcast %struct.anon* %state200 to i32*
  %bf.load201 = load i32, i32* %134, align 4
  %bf.lshr202 = lshr i32 %bf.load201, 5
  %bf.clear203 = and i32 %bf.lshr202, 1
  %tobool204 = icmp ne i32 %bf.clear203, 0
  br i1 %tobool204, label %cond.true.205, label %cond.false.217

cond.true.205:                                    ; preds = %cond.true.199
  %135 = load %struct._object*, %struct._object** %object, align 8
  %136 = bitcast %struct._object* %135 to %struct.PyASCIIObject*
  %state206 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %136, i32 0, i32 3
  %137 = bitcast %struct.anon* %state206 to i32*
  %bf.load207 = load i32, i32* %137, align 4
  %bf.lshr208 = lshr i32 %bf.load207, 6
  %bf.clear209 = and i32 %bf.lshr208, 1
  %tobool210 = icmp ne i32 %bf.clear209, 0
  br i1 %tobool210, label %cond.true.211, label %cond.false.213

cond.true.211:                                    ; preds = %cond.true.205
  %138 = load %struct._object*, %struct._object** %object, align 8
  %139 = bitcast %struct._object* %138 to %struct.PyASCIIObject*
  %add.ptr212 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %139, i64 1
  %140 = bitcast %struct.PyASCIIObject* %add.ptr212 to i8*
  br label %cond.end.215

cond.false.213:                                   ; preds = %cond.true.205
  %141 = load %struct._object*, %struct._object** %object, align 8
  %142 = bitcast %struct._object* %141 to %struct.PyCompactUnicodeObject*
  %add.ptr214 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %142, i64 1
  %143 = bitcast %struct.PyCompactUnicodeObject* %add.ptr214 to i8*
  br label %cond.end.215

cond.end.215:                                     ; preds = %cond.false.213, %cond.true.211
  %cond216 = phi i8* [ %140, %cond.true.211 ], [ %143, %cond.false.213 ]
  br label %cond.end.220

cond.false.217:                                   ; preds = %cond.true.199
  %144 = load %struct._object*, %struct._object** %object, align 8
  %145 = bitcast %struct._object* %144 to %struct.PyUnicodeObject*
  %data218 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %145, i32 0, i32 1
  %any219 = bitcast %union.anon* %data218 to i8**
  %146 = load i8*, i8** %any219, align 8
  br label %cond.end.220

cond.end.220:                                     ; preds = %cond.false.217, %cond.end.215
  %cond221 = phi i8* [ %cond216, %cond.end.215 ], [ %146, %cond.false.217 ]
  %147 = bitcast i8* %cond221 to i16*
  %arrayidx222 = getelementptr i16, i16* %147, i64 %131
  %148 = load i16, i16* %arrayidx222, align 2
  %conv223 = zext i16 %148 to i32
  br label %cond.end.248

cond.false.224:                                   ; preds = %cond.false.192
  %149 = load i64, i64* %i, align 8
  %150 = load %struct._object*, %struct._object** %object, align 8
  %151 = bitcast %struct._object* %150 to %struct.PyASCIIObject*
  %state225 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %151, i32 0, i32 3
  %152 = bitcast %struct.anon* %state225 to i32*
  %bf.load226 = load i32, i32* %152, align 4
  %bf.lshr227 = lshr i32 %bf.load226, 5
  %bf.clear228 = and i32 %bf.lshr227, 1
  %tobool229 = icmp ne i32 %bf.clear228, 0
  br i1 %tobool229, label %cond.true.230, label %cond.false.242

cond.true.230:                                    ; preds = %cond.false.224
  %153 = load %struct._object*, %struct._object** %object, align 8
  %154 = bitcast %struct._object* %153 to %struct.PyASCIIObject*
  %state231 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %154, i32 0, i32 3
  %155 = bitcast %struct.anon* %state231 to i32*
  %bf.load232 = load i32, i32* %155, align 4
  %bf.lshr233 = lshr i32 %bf.load232, 6
  %bf.clear234 = and i32 %bf.lshr233, 1
  %tobool235 = icmp ne i32 %bf.clear234, 0
  br i1 %tobool235, label %cond.true.236, label %cond.false.238

cond.true.236:                                    ; preds = %cond.true.230
  %156 = load %struct._object*, %struct._object** %object, align 8
  %157 = bitcast %struct._object* %156 to %struct.PyASCIIObject*
  %add.ptr237 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %157, i64 1
  %158 = bitcast %struct.PyASCIIObject* %add.ptr237 to i8*
  br label %cond.end.240

cond.false.238:                                   ; preds = %cond.true.230
  %159 = load %struct._object*, %struct._object** %object, align 8
  %160 = bitcast %struct._object* %159 to %struct.PyCompactUnicodeObject*
  %add.ptr239 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %160, i64 1
  %161 = bitcast %struct.PyCompactUnicodeObject* %add.ptr239 to i8*
  br label %cond.end.240

cond.end.240:                                     ; preds = %cond.false.238, %cond.true.236
  %cond241 = phi i8* [ %158, %cond.true.236 ], [ %161, %cond.false.238 ]
  br label %cond.end.245

cond.false.242:                                   ; preds = %cond.false.224
  %162 = load %struct._object*, %struct._object** %object, align 8
  %163 = bitcast %struct._object* %162 to %struct.PyUnicodeObject*
  %data243 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %163, i32 0, i32 1
  %any244 = bitcast %union.anon* %data243 to i8**
  %164 = load i8*, i8** %any244, align 8
  br label %cond.end.245

cond.end.245:                                     ; preds = %cond.false.242, %cond.end.240
  %cond246 = phi i8* [ %cond241, %cond.end.240 ], [ %164, %cond.false.242 ]
  %165 = bitcast i8* %cond246 to i32*
  %arrayidx247 = getelementptr i32, i32* %165, i64 %149
  %166 = load i32, i32* %arrayidx247, align 4
  br label %cond.end.248

cond.end.248:                                     ; preds = %cond.end.245, %cond.end.220
  %cond249 = phi i32 [ %conv223, %cond.end.220 ], [ %166, %cond.end.245 ]
  br label %cond.end.250

cond.end.250:                                     ; preds = %cond.end.248, %cond.end.188
  %cond251 = phi i32 [ %conv191, %cond.end.188 ], [ %cond249, %cond.end.248 ]
  store i32 %cond251, i32* %ch, align 4
  %167 = load i8*, i8** %outp, align 8
  %incdec.ptr = getelementptr i8, i8* %167, i32 1
  store i8* %incdec.ptr, i8** %outp, align 8
  store i8 38, i8* %167, align 1
  %168 = load i8*, i8** %outp, align 8
  %incdec.ptr252 = getelementptr i8, i8* %168, i32 1
  store i8* %incdec.ptr252, i8** %outp, align 8
  store i8 35, i8* %168, align 1
  %169 = load i32, i32* %ch, align 4
  %cmp253 = icmp ult i32 %169, 10
  br i1 %cmp253, label %if.then.255, label %if.else.256

if.then.255:                                      ; preds = %cond.end.250
  store i32 1, i32* %digits, align 4
  store i32 1, i32* %base, align 4
  br label %if.end.282

if.else.256:                                      ; preds = %cond.end.250
  %170 = load i32, i32* %ch, align 4
  %cmp257 = icmp ult i32 %170, 100
  br i1 %cmp257, label %if.then.259, label %if.else.260

if.then.259:                                      ; preds = %if.else.256
  store i32 2, i32* %digits, align 4
  store i32 10, i32* %base, align 4
  br label %if.end.281

if.else.260:                                      ; preds = %if.else.256
  %171 = load i32, i32* %ch, align 4
  %cmp261 = icmp ult i32 %171, 1000
  br i1 %cmp261, label %if.then.263, label %if.else.264

if.then.263:                                      ; preds = %if.else.260
  store i32 3, i32* %digits, align 4
  store i32 100, i32* %base, align 4
  br label %if.end.280

if.else.264:                                      ; preds = %if.else.260
  %172 = load i32, i32* %ch, align 4
  %cmp265 = icmp ult i32 %172, 10000
  br i1 %cmp265, label %if.then.267, label %if.else.268

if.then.267:                                      ; preds = %if.else.264
  store i32 4, i32* %digits, align 4
  store i32 1000, i32* %base, align 4
  br label %if.end.279

if.else.268:                                      ; preds = %if.else.264
  %173 = load i32, i32* %ch, align 4
  %cmp269 = icmp ult i32 %173, 100000
  br i1 %cmp269, label %if.then.271, label %if.else.272

if.then.271:                                      ; preds = %if.else.268
  store i32 5, i32* %digits, align 4
  store i32 10000, i32* %base, align 4
  br label %if.end.278

if.else.272:                                      ; preds = %if.else.268
  %174 = load i32, i32* %ch, align 4
  %cmp273 = icmp ult i32 %174, 1000000
  br i1 %cmp273, label %if.then.275, label %if.else.276

if.then.275:                                      ; preds = %if.else.272
  store i32 6, i32* %digits, align 4
  store i32 100000, i32* %base, align 4
  br label %if.end.277

if.else.276:                                      ; preds = %if.else.272
  store i32 7, i32* %digits, align 4
  store i32 1000000, i32* %base, align 4
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
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.282
  %175 = load i32, i32* %digits, align 4
  %dec283 = add i32 %175, -1
  store i32 %dec283, i32* %digits, align 4
  %cmp284 = icmp sgt i32 %175, 0
  br i1 %cmp284, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %176 = load i32, i32* %ch, align 4
  %177 = load i32, i32* %base, align 4
  %div = udiv i32 %176, %177
  %add286 = add i32 48, %div
  %conv287 = trunc i32 %add286 to i8
  %178 = load i8*, i8** %outp, align 8
  %incdec.ptr288 = getelementptr i8, i8* %178, i32 1
  store i8* %incdec.ptr288, i8** %outp, align 8
  store i8 %conv287, i8* %178, align 1
  %179 = load i32, i32* %base, align 4
  %180 = load i32, i32* %ch, align 4
  %rem = urem i32 %180, %179
  store i32 %rem, i32* %ch, align 4
  %181 = load i32, i32* %base, align 4
  %div289 = sdiv i32 %181, 10
  store i32 %div289, i32* %base, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %182 = load i8*, i8** %outp, align 8
  %incdec.ptr290 = getelementptr i8, i8* %182, i32 1
  store i8* %incdec.ptr290, i8** %outp, align 8
  store i8 59, i8* %182, align 1
  br label %for.inc.291

for.inc.291:                                      ; preds = %while.end
  %183 = load i64, i64* %i, align 8
  %inc292 = add i64 %183, 1
  store i64 %inc292, i64* %i, align 8
  br label %for.cond.157

for.end.293:                                      ; preds = %for.cond.157
  %184 = load %struct._object*, %struct._object** %res, align 8
  %185 = load i64, i64* %end, align 8
  %call294 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), %struct._object* %184, i64 %185)
  store %struct._object* %call294, %struct._object** %restuple, align 8
  br label %do.body.295

do.body.295:                                      ; preds = %for.end.293
  %186 = load %struct._object*, %struct._object** %object, align 8
  store %struct._object* %186, %struct._object** %_py_decref_tmp296, align 8
  %187 = load %struct._object*, %struct._object** %_py_decref_tmp296, align 8
  %ob_refcnt297 = getelementptr inbounds %struct._object, %struct._object* %187, i32 0, i32 0
  %188 = load i64, i64* %ob_refcnt297, align 8
  %dec298 = add i64 %188, -1
  store i64 %dec298, i64* %ob_refcnt297, align 8
  %cmp299 = icmp ne i64 %dec298, 0
  br i1 %cmp299, label %if.then.301, label %if.else.302

if.then.301:                                      ; preds = %do.body.295
  br label %if.end.305

if.else.302:                                      ; preds = %do.body.295
  %189 = load %struct._object*, %struct._object** %_py_decref_tmp296, align 8
  %ob_type303 = getelementptr inbounds %struct._object, %struct._object* %189, i32 0, i32 1
  %190 = load %struct._typeobject*, %struct._typeobject** %ob_type303, align 8
  %tp_dealloc304 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %190, i32 0, i32 4
  %191 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc304, align 8
  %192 = load %struct._object*, %struct._object** %_py_decref_tmp296, align 8
  call void %191(%struct._object* %192)
  br label %if.end.305

if.end.305:                                       ; preds = %if.else.302, %if.then.301
  br label %do.end.306

do.end.306:                                       ; preds = %if.end.305
  %193 = load %struct._object*, %struct._object** %restuple, align 8
  store %struct._object* %193, %struct._object** %retval
  br label %return

if.else.307:                                      ; preds = %entry
  %194 = load %struct._object*, %struct._object** %exc.addr, align 8
  call void @wrong_exception_type(%struct._object* %194)
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.307, %do.end.306, %do.end, %if.then.10, %if.then.6, %if.then.3
  %195 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %195
}

declare %struct._object* @PyUnicodeEncodeError_GetObject(%struct._object*) #2

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
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8
  %1 = load %struct._object*, %struct._object** @PyExc_UnicodeEncodeError, align 8
  %call = call i32 @PyObject_IsInstance(%struct._object* %0, %struct._object* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else.291

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call1 = call i32 @PyUnicodeEncodeError_GetStart(%struct._object* %2, i64* %start)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call4 = call i32 @PyUnicodeEncodeError_GetEnd(%struct._object* %3, i64* %end)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call8 = call %struct._object* @PyUnicodeEncodeError_GetObject(%struct._object* %4)
  store %struct._object* %call8, %struct._object** %object, align 8
  %tobool9 = icmp ne %struct._object* %call8, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  %5 = load i64, i64* %start, align 8
  store i64 %5, i64* %i, align 8
  store i32 0, i32* %ressize, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %6 = load i64, i64* %i, align 8
  %7 = load i64, i64* %end, align 8
  %cmp = icmp slt i64 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._object*, %struct._object** %object, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %9, i32 0, i32 3
  %10 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %10, align 4
  %bf.lshr = lshr i32 %bf.load, 2
  %bf.clear = and i32 %bf.lshr, 7
  %cmp12 = icmp eq i32 %bf.clear, 1
  br i1 %cmp12, label %cond.true, label %cond.false.29

cond.true:                                        ; preds = %for.body
  %11 = load i64, i64* %i, align 8
  %12 = load %struct._object*, %struct._object** %object, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyASCIIObject*
  %state13 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %13, i32 0, i32 3
  %14 = bitcast %struct.anon* %state13 to i32*
  %bf.load14 = load i32, i32* %14, align 4
  %bf.lshr15 = lshr i32 %bf.load14, 5
  %bf.clear16 = and i32 %bf.lshr15, 1
  %tobool17 = icmp ne i32 %bf.clear16, 0
  br i1 %tobool17, label %cond.true.18, label %cond.false.26

cond.true.18:                                     ; preds = %cond.true
  %15 = load %struct._object*, %struct._object** %object, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyASCIIObject*
  %state19 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %16, i32 0, i32 3
  %17 = bitcast %struct.anon* %state19 to i32*
  %bf.load20 = load i32, i32* %17, align 4
  %bf.lshr21 = lshr i32 %bf.load20, 6
  %bf.clear22 = and i32 %bf.lshr21, 1
  %tobool23 = icmp ne i32 %bf.clear22, 0
  br i1 %tobool23, label %cond.true.24, label %cond.false

cond.true.24:                                     ; preds = %cond.true.18
  %18 = load %struct._object*, %struct._object** %object, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %19, i64 1
  %20 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end

cond.false:                                       ; preds = %cond.true.18
  %21 = load %struct._object*, %struct._object** %object, align 8
  %22 = bitcast %struct._object* %21 to %struct.PyCompactUnicodeObject*
  %add.ptr25 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %22, i64 1
  %23 = bitcast %struct.PyCompactUnicodeObject* %add.ptr25 to i8*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.24
  %cond = phi i8* [ %20, %cond.true.24 ], [ %23, %cond.false ]
  br label %cond.end.27

cond.false.26:                                    ; preds = %cond.true
  %24 = load %struct._object*, %struct._object** %object, align 8
  %25 = bitcast %struct._object* %24 to %struct.PyUnicodeObject*
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %25, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %26 = load i8*, i8** %any, align 8
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.26, %cond.end
  %cond28 = phi i8* [ %cond, %cond.end ], [ %26, %cond.false.26 ]
  %arrayidx = getelementptr i8, i8* %cond28, i64 %11
  %27 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %27 to i32
  br label %cond.end.87

cond.false.29:                                    ; preds = %for.body
  %28 = load %struct._object*, %struct._object** %object, align 8
  %29 = bitcast %struct._object* %28 to %struct.PyASCIIObject*
  %state30 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %29, i32 0, i32 3
  %30 = bitcast %struct.anon* %state30 to i32*
  %bf.load31 = load i32, i32* %30, align 4
  %bf.lshr32 = lshr i32 %bf.load31, 2
  %bf.clear33 = and i32 %bf.lshr32, 7
  %cmp34 = icmp eq i32 %bf.clear33, 2
  br i1 %cmp34, label %cond.true.36, label %cond.false.61

cond.true.36:                                     ; preds = %cond.false.29
  %31 = load i64, i64* %i, align 8
  %32 = load %struct._object*, %struct._object** %object, align 8
  %33 = bitcast %struct._object* %32 to %struct.PyASCIIObject*
  %state37 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %33, i32 0, i32 3
  %34 = bitcast %struct.anon* %state37 to i32*
  %bf.load38 = load i32, i32* %34, align 4
  %bf.lshr39 = lshr i32 %bf.load38, 5
  %bf.clear40 = and i32 %bf.lshr39, 1
  %tobool41 = icmp ne i32 %bf.clear40, 0
  br i1 %tobool41, label %cond.true.42, label %cond.false.54

cond.true.42:                                     ; preds = %cond.true.36
  %35 = load %struct._object*, %struct._object** %object, align 8
  %36 = bitcast %struct._object* %35 to %struct.PyASCIIObject*
  %state43 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %36, i32 0, i32 3
  %37 = bitcast %struct.anon* %state43 to i32*
  %bf.load44 = load i32, i32* %37, align 4
  %bf.lshr45 = lshr i32 %bf.load44, 6
  %bf.clear46 = and i32 %bf.lshr45, 1
  %tobool47 = icmp ne i32 %bf.clear46, 0
  br i1 %tobool47, label %cond.true.48, label %cond.false.50

cond.true.48:                                     ; preds = %cond.true.42
  %38 = load %struct._object*, %struct._object** %object, align 8
  %39 = bitcast %struct._object* %38 to %struct.PyASCIIObject*
  %add.ptr49 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %39, i64 1
  %40 = bitcast %struct.PyASCIIObject* %add.ptr49 to i8*
  br label %cond.end.52

cond.false.50:                                    ; preds = %cond.true.42
  %41 = load %struct._object*, %struct._object** %object, align 8
  %42 = bitcast %struct._object* %41 to %struct.PyCompactUnicodeObject*
  %add.ptr51 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %42, i64 1
  %43 = bitcast %struct.PyCompactUnicodeObject* %add.ptr51 to i8*
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.50, %cond.true.48
  %cond53 = phi i8* [ %40, %cond.true.48 ], [ %43, %cond.false.50 ]
  br label %cond.end.57

cond.false.54:                                    ; preds = %cond.true.36
  %44 = load %struct._object*, %struct._object** %object, align 8
  %45 = bitcast %struct._object* %44 to %struct.PyUnicodeObject*
  %data55 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %45, i32 0, i32 1
  %any56 = bitcast %union.anon* %data55 to i8**
  %46 = load i8*, i8** %any56, align 8
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.54, %cond.end.52
  %cond58 = phi i8* [ %cond53, %cond.end.52 ], [ %46, %cond.false.54 ]
  %47 = bitcast i8* %cond58 to i16*
  %arrayidx59 = getelementptr i16, i16* %47, i64 %31
  %48 = load i16, i16* %arrayidx59, align 2
  %conv60 = zext i16 %48 to i32
  br label %cond.end.85

cond.false.61:                                    ; preds = %cond.false.29
  %49 = load i64, i64* %i, align 8
  %50 = load %struct._object*, %struct._object** %object, align 8
  %51 = bitcast %struct._object* %50 to %struct.PyASCIIObject*
  %state62 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %51, i32 0, i32 3
  %52 = bitcast %struct.anon* %state62 to i32*
  %bf.load63 = load i32, i32* %52, align 4
  %bf.lshr64 = lshr i32 %bf.load63, 5
  %bf.clear65 = and i32 %bf.lshr64, 1
  %tobool66 = icmp ne i32 %bf.clear65, 0
  br i1 %tobool66, label %cond.true.67, label %cond.false.79

cond.true.67:                                     ; preds = %cond.false.61
  %53 = load %struct._object*, %struct._object** %object, align 8
  %54 = bitcast %struct._object* %53 to %struct.PyASCIIObject*
  %state68 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %54, i32 0, i32 3
  %55 = bitcast %struct.anon* %state68 to i32*
  %bf.load69 = load i32, i32* %55, align 4
  %bf.lshr70 = lshr i32 %bf.load69, 6
  %bf.clear71 = and i32 %bf.lshr70, 1
  %tobool72 = icmp ne i32 %bf.clear71, 0
  br i1 %tobool72, label %cond.true.73, label %cond.false.75

cond.true.73:                                     ; preds = %cond.true.67
  %56 = load %struct._object*, %struct._object** %object, align 8
  %57 = bitcast %struct._object* %56 to %struct.PyASCIIObject*
  %add.ptr74 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %57, i64 1
  %58 = bitcast %struct.PyASCIIObject* %add.ptr74 to i8*
  br label %cond.end.77

cond.false.75:                                    ; preds = %cond.true.67
  %59 = load %struct._object*, %struct._object** %object, align 8
  %60 = bitcast %struct._object* %59 to %struct.PyCompactUnicodeObject*
  %add.ptr76 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %60, i64 1
  %61 = bitcast %struct.PyCompactUnicodeObject* %add.ptr76 to i8*
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.75, %cond.true.73
  %cond78 = phi i8* [ %58, %cond.true.73 ], [ %61, %cond.false.75 ]
  br label %cond.end.82

cond.false.79:                                    ; preds = %cond.false.61
  %62 = load %struct._object*, %struct._object** %object, align 8
  %63 = bitcast %struct._object* %62 to %struct.PyUnicodeObject*
  %data80 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %63, i32 0, i32 1
  %any81 = bitcast %union.anon* %data80 to i8**
  %64 = load i8*, i8** %any81, align 8
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.79, %cond.end.77
  %cond83 = phi i8* [ %cond78, %cond.end.77 ], [ %64, %cond.false.79 ]
  %65 = bitcast i8* %cond83 to i32*
  %arrayidx84 = getelementptr i32, i32* %65, i64 %49
  %66 = load i32, i32* %arrayidx84, align 4
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.end.82, %cond.end.57
  %cond86 = phi i32 [ %conv60, %cond.end.57 ], [ %66, %cond.end.82 ]
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.end.85, %cond.end.27
  %cond88 = phi i32 [ %conv, %cond.end.27 ], [ %cond86, %cond.end.85 ]
  store i32 %cond88, i32* %c, align 4
  %67 = load i32, i32* %c, align 4
  %cmp89 = icmp uge i32 %67, 65536
  br i1 %cmp89, label %if.then.91, label %if.else

if.then.91:                                       ; preds = %cond.end.87
  %68 = load i32, i32* %ressize, align 4
  %add = add i32 %68, 10
  store i32 %add, i32* %ressize, align 4
  br label %if.end.99

if.else:                                          ; preds = %cond.end.87
  %69 = load i32, i32* %c, align 4
  %cmp92 = icmp uge i32 %69, 256
  br i1 %cmp92, label %if.then.94, label %if.else.96

if.then.94:                                       ; preds = %if.else
  %70 = load i32, i32* %ressize, align 4
  %add95 = add i32 %70, 6
  store i32 %add95, i32* %ressize, align 4
  br label %if.end.98

if.else.96:                                       ; preds = %if.else
  %71 = load i32, i32* %ressize, align 4
  %add97 = add i32 %71, 4
  store i32 %add97, i32* %ressize, align 4
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.96, %if.then.94
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then.91
  br label %for.inc

for.inc:                                          ; preds = %if.end.99
  %72 = load i64, i64* %i, align 8
  %inc = add i64 %72, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %73 = load i32, i32* %ressize, align 4
  %conv100 = sext i32 %73 to i64
  %call101 = call %struct._object* @PyUnicode_New(i64 %conv100, i32 127)
  store %struct._object* %call101, %struct._object** %res, align 8
  %74 = load %struct._object*, %struct._object** %res, align 8
  %cmp102 = icmp eq %struct._object* %74, null
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %for.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.105:                                       ; preds = %for.end
  %75 = load i64, i64* %start, align 8
  store i64 %75, i64* %i, align 8
  %76 = load %struct._object*, %struct._object** %res, align 8
  %77 = bitcast %struct._object* %76 to %struct.PyASCIIObject*
  %state106 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %77, i32 0, i32 3
  %78 = bitcast %struct.anon* %state106 to i32*
  %bf.load107 = load i32, i32* %78, align 4
  %bf.lshr108 = lshr i32 %bf.load107, 5
  %bf.clear109 = and i32 %bf.lshr108, 1
  %tobool110 = icmp ne i32 %bf.clear109, 0
  br i1 %tobool110, label %cond.true.111, label %cond.false.123

cond.true.111:                                    ; preds = %if.end.105
  %79 = load %struct._object*, %struct._object** %res, align 8
  %80 = bitcast %struct._object* %79 to %struct.PyASCIIObject*
  %state112 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %80, i32 0, i32 3
  %81 = bitcast %struct.anon* %state112 to i32*
  %bf.load113 = load i32, i32* %81, align 4
  %bf.lshr114 = lshr i32 %bf.load113, 6
  %bf.clear115 = and i32 %bf.lshr114, 1
  %tobool116 = icmp ne i32 %bf.clear115, 0
  br i1 %tobool116, label %cond.true.117, label %cond.false.119

cond.true.117:                                    ; preds = %cond.true.111
  %82 = load %struct._object*, %struct._object** %res, align 8
  %83 = bitcast %struct._object* %82 to %struct.PyASCIIObject*
  %add.ptr118 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %83, i64 1
  %84 = bitcast %struct.PyASCIIObject* %add.ptr118 to i8*
  br label %cond.end.121

cond.false.119:                                   ; preds = %cond.true.111
  %85 = load %struct._object*, %struct._object** %res, align 8
  %86 = bitcast %struct._object* %85 to %struct.PyCompactUnicodeObject*
  %add.ptr120 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %86, i64 1
  %87 = bitcast %struct.PyCompactUnicodeObject* %add.ptr120 to i8*
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.false.119, %cond.true.117
  %cond122 = phi i8* [ %84, %cond.true.117 ], [ %87, %cond.false.119 ]
  br label %cond.end.126

cond.false.123:                                   ; preds = %if.end.105
  %88 = load %struct._object*, %struct._object** %res, align 8
  %89 = bitcast %struct._object* %88 to %struct.PyUnicodeObject*
  %data124 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %89, i32 0, i32 1
  %any125 = bitcast %union.anon* %data124 to i8**
  %90 = load i8*, i8** %any125, align 8
  br label %cond.end.126

cond.end.126:                                     ; preds = %cond.false.123, %cond.end.121
  %cond127 = phi i8* [ %cond122, %cond.end.121 ], [ %90, %cond.false.123 ]
  store i8* %cond127, i8** %outp, align 8
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc.282, %cond.end.126
  %91 = load i64, i64* %i, align 8
  %92 = load i64, i64* %end, align 8
  %cmp129 = icmp slt i64 %91, %92
  br i1 %cmp129, label %for.body.131, label %for.end.284

for.body.131:                                     ; preds = %for.cond.128
  %93 = load %struct._object*, %struct._object** %object, align 8
  %94 = bitcast %struct._object* %93 to %struct.PyASCIIObject*
  %state132 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %94, i32 0, i32 3
  %95 = bitcast %struct.anon* %state132 to i32*
  %bf.load133 = load i32, i32* %95, align 4
  %bf.lshr134 = lshr i32 %bf.load133, 2
  %bf.clear135 = and i32 %bf.lshr134, 7
  %cmp136 = icmp eq i32 %bf.clear135, 1
  br i1 %cmp136, label %cond.true.138, label %cond.false.163

cond.true.138:                                    ; preds = %for.body.131
  %96 = load i64, i64* %i, align 8
  %97 = load %struct._object*, %struct._object** %object, align 8
  %98 = bitcast %struct._object* %97 to %struct.PyASCIIObject*
  %state139 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %98, i32 0, i32 3
  %99 = bitcast %struct.anon* %state139 to i32*
  %bf.load140 = load i32, i32* %99, align 4
  %bf.lshr141 = lshr i32 %bf.load140, 5
  %bf.clear142 = and i32 %bf.lshr141, 1
  %tobool143 = icmp ne i32 %bf.clear142, 0
  br i1 %tobool143, label %cond.true.144, label %cond.false.156

cond.true.144:                                    ; preds = %cond.true.138
  %100 = load %struct._object*, %struct._object** %object, align 8
  %101 = bitcast %struct._object* %100 to %struct.PyASCIIObject*
  %state145 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %101, i32 0, i32 3
  %102 = bitcast %struct.anon* %state145 to i32*
  %bf.load146 = load i32, i32* %102, align 4
  %bf.lshr147 = lshr i32 %bf.load146, 6
  %bf.clear148 = and i32 %bf.lshr147, 1
  %tobool149 = icmp ne i32 %bf.clear148, 0
  br i1 %tobool149, label %cond.true.150, label %cond.false.152

cond.true.150:                                    ; preds = %cond.true.144
  %103 = load %struct._object*, %struct._object** %object, align 8
  %104 = bitcast %struct._object* %103 to %struct.PyASCIIObject*
  %add.ptr151 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %104, i64 1
  %105 = bitcast %struct.PyASCIIObject* %add.ptr151 to i8*
  br label %cond.end.154

cond.false.152:                                   ; preds = %cond.true.144
  %106 = load %struct._object*, %struct._object** %object, align 8
  %107 = bitcast %struct._object* %106 to %struct.PyCompactUnicodeObject*
  %add.ptr153 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %107, i64 1
  %108 = bitcast %struct.PyCompactUnicodeObject* %add.ptr153 to i8*
  br label %cond.end.154

cond.end.154:                                     ; preds = %cond.false.152, %cond.true.150
  %cond155 = phi i8* [ %105, %cond.true.150 ], [ %108, %cond.false.152 ]
  br label %cond.end.159

cond.false.156:                                   ; preds = %cond.true.138
  %109 = load %struct._object*, %struct._object** %object, align 8
  %110 = bitcast %struct._object* %109 to %struct.PyUnicodeObject*
  %data157 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %110, i32 0, i32 1
  %any158 = bitcast %union.anon* %data157 to i8**
  %111 = load i8*, i8** %any158, align 8
  br label %cond.end.159

cond.end.159:                                     ; preds = %cond.false.156, %cond.end.154
  %cond160 = phi i8* [ %cond155, %cond.end.154 ], [ %111, %cond.false.156 ]
  %arrayidx161 = getelementptr i8, i8* %cond160, i64 %96
  %112 = load i8, i8* %arrayidx161, align 1
  %conv162 = zext i8 %112 to i32
  br label %cond.end.221

cond.false.163:                                   ; preds = %for.body.131
  %113 = load %struct._object*, %struct._object** %object, align 8
  %114 = bitcast %struct._object* %113 to %struct.PyASCIIObject*
  %state164 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %114, i32 0, i32 3
  %115 = bitcast %struct.anon* %state164 to i32*
  %bf.load165 = load i32, i32* %115, align 4
  %bf.lshr166 = lshr i32 %bf.load165, 2
  %bf.clear167 = and i32 %bf.lshr166, 7
  %cmp168 = icmp eq i32 %bf.clear167, 2
  br i1 %cmp168, label %cond.true.170, label %cond.false.195

cond.true.170:                                    ; preds = %cond.false.163
  %116 = load i64, i64* %i, align 8
  %117 = load %struct._object*, %struct._object** %object, align 8
  %118 = bitcast %struct._object* %117 to %struct.PyASCIIObject*
  %state171 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %118, i32 0, i32 3
  %119 = bitcast %struct.anon* %state171 to i32*
  %bf.load172 = load i32, i32* %119, align 4
  %bf.lshr173 = lshr i32 %bf.load172, 5
  %bf.clear174 = and i32 %bf.lshr173, 1
  %tobool175 = icmp ne i32 %bf.clear174, 0
  br i1 %tobool175, label %cond.true.176, label %cond.false.188

cond.true.176:                                    ; preds = %cond.true.170
  %120 = load %struct._object*, %struct._object** %object, align 8
  %121 = bitcast %struct._object* %120 to %struct.PyASCIIObject*
  %state177 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %121, i32 0, i32 3
  %122 = bitcast %struct.anon* %state177 to i32*
  %bf.load178 = load i32, i32* %122, align 4
  %bf.lshr179 = lshr i32 %bf.load178, 6
  %bf.clear180 = and i32 %bf.lshr179, 1
  %tobool181 = icmp ne i32 %bf.clear180, 0
  br i1 %tobool181, label %cond.true.182, label %cond.false.184

cond.true.182:                                    ; preds = %cond.true.176
  %123 = load %struct._object*, %struct._object** %object, align 8
  %124 = bitcast %struct._object* %123 to %struct.PyASCIIObject*
  %add.ptr183 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %124, i64 1
  %125 = bitcast %struct.PyASCIIObject* %add.ptr183 to i8*
  br label %cond.end.186

cond.false.184:                                   ; preds = %cond.true.176
  %126 = load %struct._object*, %struct._object** %object, align 8
  %127 = bitcast %struct._object* %126 to %struct.PyCompactUnicodeObject*
  %add.ptr185 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %127, i64 1
  %128 = bitcast %struct.PyCompactUnicodeObject* %add.ptr185 to i8*
  br label %cond.end.186

cond.end.186:                                     ; preds = %cond.false.184, %cond.true.182
  %cond187 = phi i8* [ %125, %cond.true.182 ], [ %128, %cond.false.184 ]
  br label %cond.end.191

cond.false.188:                                   ; preds = %cond.true.170
  %129 = load %struct._object*, %struct._object** %object, align 8
  %130 = bitcast %struct._object* %129 to %struct.PyUnicodeObject*
  %data189 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %130, i32 0, i32 1
  %any190 = bitcast %union.anon* %data189 to i8**
  %131 = load i8*, i8** %any190, align 8
  br label %cond.end.191

cond.end.191:                                     ; preds = %cond.false.188, %cond.end.186
  %cond192 = phi i8* [ %cond187, %cond.end.186 ], [ %131, %cond.false.188 ]
  %132 = bitcast i8* %cond192 to i16*
  %arrayidx193 = getelementptr i16, i16* %132, i64 %116
  %133 = load i16, i16* %arrayidx193, align 2
  %conv194 = zext i16 %133 to i32
  br label %cond.end.219

cond.false.195:                                   ; preds = %cond.false.163
  %134 = load i64, i64* %i, align 8
  %135 = load %struct._object*, %struct._object** %object, align 8
  %136 = bitcast %struct._object* %135 to %struct.PyASCIIObject*
  %state196 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %136, i32 0, i32 3
  %137 = bitcast %struct.anon* %state196 to i32*
  %bf.load197 = load i32, i32* %137, align 4
  %bf.lshr198 = lshr i32 %bf.load197, 5
  %bf.clear199 = and i32 %bf.lshr198, 1
  %tobool200 = icmp ne i32 %bf.clear199, 0
  br i1 %tobool200, label %cond.true.201, label %cond.false.213

cond.true.201:                                    ; preds = %cond.false.195
  %138 = load %struct._object*, %struct._object** %object, align 8
  %139 = bitcast %struct._object* %138 to %struct.PyASCIIObject*
  %state202 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %139, i32 0, i32 3
  %140 = bitcast %struct.anon* %state202 to i32*
  %bf.load203 = load i32, i32* %140, align 4
  %bf.lshr204 = lshr i32 %bf.load203, 6
  %bf.clear205 = and i32 %bf.lshr204, 1
  %tobool206 = icmp ne i32 %bf.clear205, 0
  br i1 %tobool206, label %cond.true.207, label %cond.false.209

cond.true.207:                                    ; preds = %cond.true.201
  %141 = load %struct._object*, %struct._object** %object, align 8
  %142 = bitcast %struct._object* %141 to %struct.PyASCIIObject*
  %add.ptr208 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %142, i64 1
  %143 = bitcast %struct.PyASCIIObject* %add.ptr208 to i8*
  br label %cond.end.211

cond.false.209:                                   ; preds = %cond.true.201
  %144 = load %struct._object*, %struct._object** %object, align 8
  %145 = bitcast %struct._object* %144 to %struct.PyCompactUnicodeObject*
  %add.ptr210 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %145, i64 1
  %146 = bitcast %struct.PyCompactUnicodeObject* %add.ptr210 to i8*
  br label %cond.end.211

cond.end.211:                                     ; preds = %cond.false.209, %cond.true.207
  %cond212 = phi i8* [ %143, %cond.true.207 ], [ %146, %cond.false.209 ]
  br label %cond.end.216

cond.false.213:                                   ; preds = %cond.false.195
  %147 = load %struct._object*, %struct._object** %object, align 8
  %148 = bitcast %struct._object* %147 to %struct.PyUnicodeObject*
  %data214 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %148, i32 0, i32 1
  %any215 = bitcast %union.anon* %data214 to i8**
  %149 = load i8*, i8** %any215, align 8
  br label %cond.end.216

cond.end.216:                                     ; preds = %cond.false.213, %cond.end.211
  %cond217 = phi i8* [ %cond212, %cond.end.211 ], [ %149, %cond.false.213 ]
  %150 = bitcast i8* %cond217 to i32*
  %arrayidx218 = getelementptr i32, i32* %150, i64 %134
  %151 = load i32, i32* %arrayidx218, align 4
  br label %cond.end.219

cond.end.219:                                     ; preds = %cond.end.216, %cond.end.191
  %cond220 = phi i32 [ %conv194, %cond.end.191 ], [ %151, %cond.end.216 ]
  br label %cond.end.221

cond.end.221:                                     ; preds = %cond.end.219, %cond.end.159
  %cond222 = phi i32 [ %conv162, %cond.end.159 ], [ %cond220, %cond.end.219 ]
  store i32 %cond222, i32* %c, align 4
  %152 = load i8*, i8** %outp, align 8
  %incdec.ptr = getelementptr i8, i8* %152, i32 1
  store i8* %incdec.ptr, i8** %outp, align 8
  store i8 92, i8* %152, align 1
  %153 = load i32, i32* %c, align 4
  %cmp223 = icmp uge i32 %153, 65536
  br i1 %cmp223, label %if.then.225, label %if.else.254

if.then.225:                                      ; preds = %cond.end.221
  %154 = load i8*, i8** %outp, align 8
  %incdec.ptr226 = getelementptr i8, i8* %154, i32 1
  store i8* %incdec.ptr226, i8** %outp, align 8
  store i8 85, i8* %154, align 1
  %155 = load i32, i32* %c, align 4
  %shr = lshr i32 %155, 28
  %and = and i32 %shr, 15
  %idxprom = zext i32 %and to i64
  %156 = load i8*, i8** @Py_hexdigits, align 8
  %arrayidx227 = getelementptr i8, i8* %156, i64 %idxprom
  %157 = load i8, i8* %arrayidx227, align 1
  %158 = load i8*, i8** %outp, align 8
  %incdec.ptr228 = getelementptr i8, i8* %158, i32 1
  store i8* %incdec.ptr228, i8** %outp, align 8
  store i8 %157, i8* %158, align 1
  %159 = load i32, i32* %c, align 4
  %shr229 = lshr i32 %159, 24
  %and230 = and i32 %shr229, 15
  %idxprom231 = zext i32 %and230 to i64
  %160 = load i8*, i8** @Py_hexdigits, align 8
  %arrayidx232 = getelementptr i8, i8* %160, i64 %idxprom231
  %161 = load i8, i8* %arrayidx232, align 1
  %162 = load i8*, i8** %outp, align 8
  %incdec.ptr233 = getelementptr i8, i8* %162, i32 1
  store i8* %incdec.ptr233, i8** %outp, align 8
  store i8 %161, i8* %162, align 1
  %163 = load i32, i32* %c, align 4
  %shr234 = lshr i32 %163, 20
  %and235 = and i32 %shr234, 15
  %idxprom236 = zext i32 %and235 to i64
  %164 = load i8*, i8** @Py_hexdigits, align 8
  %arrayidx237 = getelementptr i8, i8* %164, i64 %idxprom236
  %165 = load i8, i8* %arrayidx237, align 1
  %166 = load i8*, i8** %outp, align 8
  %incdec.ptr238 = getelementptr i8, i8* %166, i32 1
  store i8* %incdec.ptr238, i8** %outp, align 8
  store i8 %165, i8* %166, align 1
  %167 = load i32, i32* %c, align 4
  %shr239 = lshr i32 %167, 16
  %and240 = and i32 %shr239, 15
  %idxprom241 = zext i32 %and240 to i64
  %168 = load i8*, i8** @Py_hexdigits, align 8
  %arrayidx242 = getelementptr i8, i8* %168, i64 %idxprom241
  %169 = load i8, i8* %arrayidx242, align 1
  %170 = load i8*, i8** %outp, align 8
  %incdec.ptr243 = getelementptr i8, i8* %170, i32 1
  store i8* %incdec.ptr243, i8** %outp, align 8
  store i8 %169, i8* %170, align 1
  %171 = load i32, i32* %c, align 4
  %shr244 = lshr i32 %171, 12
  %and245 = and i32 %shr244, 15
  %idxprom246 = zext i32 %and245 to i64
  %172 = load i8*, i8** @Py_hexdigits, align 8
  %arrayidx247 = getelementptr i8, i8* %172, i64 %idxprom246
  %173 = load i8, i8* %arrayidx247, align 1
  %174 = load i8*, i8** %outp, align 8
  %incdec.ptr248 = getelementptr i8, i8* %174, i32 1
  store i8* %incdec.ptr248, i8** %outp, align 8
  store i8 %173, i8* %174, align 1
  %175 = load i32, i32* %c, align 4
  %shr249 = lshr i32 %175, 8
  %and250 = and i32 %shr249, 15
  %idxprom251 = zext i32 %and250 to i64
  %176 = load i8*, i8** @Py_hexdigits, align 8
  %arrayidx252 = getelementptr i8, i8* %176, i64 %idxprom251
  %177 = load i8, i8* %arrayidx252, align 1
  %178 = load i8*, i8** %outp, align 8
  %incdec.ptr253 = getelementptr i8, i8* %178, i32 1
  store i8* %incdec.ptr253, i8** %outp, align 8
  store i8 %177, i8* %178, align 1
  br label %if.end.272

if.else.254:                                      ; preds = %cond.end.221
  %179 = load i32, i32* %c, align 4
  %cmp255 = icmp uge i32 %179, 256
  br i1 %cmp255, label %if.then.257, label %if.else.269

if.then.257:                                      ; preds = %if.else.254
  %180 = load i8*, i8** %outp, align 8
  %incdec.ptr258 = getelementptr i8, i8* %180, i32 1
  store i8* %incdec.ptr258, i8** %outp, align 8
  store i8 117, i8* %180, align 1
  %181 = load i32, i32* %c, align 4
  %shr259 = lshr i32 %181, 12
  %and260 = and i32 %shr259, 15
  %idxprom261 = zext i32 %and260 to i64
  %182 = load i8*, i8** @Py_hexdigits, align 8
  %arrayidx262 = getelementptr i8, i8* %182, i64 %idxprom261
  %183 = load i8, i8* %arrayidx262, align 1
  %184 = load i8*, i8** %outp, align 8
  %incdec.ptr263 = getelementptr i8, i8* %184, i32 1
  store i8* %incdec.ptr263, i8** %outp, align 8
  store i8 %183, i8* %184, align 1
  %185 = load i32, i32* %c, align 4
  %shr264 = lshr i32 %185, 8
  %and265 = and i32 %shr264, 15
  %idxprom266 = zext i32 %and265 to i64
  %186 = load i8*, i8** @Py_hexdigits, align 8
  %arrayidx267 = getelementptr i8, i8* %186, i64 %idxprom266
  %187 = load i8, i8* %arrayidx267, align 1
  %188 = load i8*, i8** %outp, align 8
  %incdec.ptr268 = getelementptr i8, i8* %188, i32 1
  store i8* %incdec.ptr268, i8** %outp, align 8
  store i8 %187, i8* %188, align 1
  br label %if.end.271

if.else.269:                                      ; preds = %if.else.254
  %189 = load i8*, i8** %outp, align 8
  %incdec.ptr270 = getelementptr i8, i8* %189, i32 1
  store i8* %incdec.ptr270, i8** %outp, align 8
  store i8 120, i8* %189, align 1
  br label %if.end.271

if.end.271:                                       ; preds = %if.else.269, %if.then.257
  br label %if.end.272

if.end.272:                                       ; preds = %if.end.271, %if.then.225
  %190 = load i32, i32* %c, align 4
  %shr273 = lshr i32 %190, 4
  %and274 = and i32 %shr273, 15
  %idxprom275 = zext i32 %and274 to i64
  %191 = load i8*, i8** @Py_hexdigits, align 8
  %arrayidx276 = getelementptr i8, i8* %191, i64 %idxprom275
  %192 = load i8, i8* %arrayidx276, align 1
  %193 = load i8*, i8** %outp, align 8
  %incdec.ptr277 = getelementptr i8, i8* %193, i32 1
  store i8* %incdec.ptr277, i8** %outp, align 8
  store i8 %192, i8* %193, align 1
  %194 = load i32, i32* %c, align 4
  %and278 = and i32 %194, 15
  %idxprom279 = zext i32 %and278 to i64
  %195 = load i8*, i8** @Py_hexdigits, align 8
  %arrayidx280 = getelementptr i8, i8* %195, i64 %idxprom279
  %196 = load i8, i8* %arrayidx280, align 1
  %197 = load i8*, i8** %outp, align 8
  %incdec.ptr281 = getelementptr i8, i8* %197, i32 1
  store i8* %incdec.ptr281, i8** %outp, align 8
  store i8 %196, i8* %197, align 1
  br label %for.inc.282

for.inc.282:                                      ; preds = %if.end.272
  %198 = load i64, i64* %i, align 8
  %inc283 = add i64 %198, 1
  store i64 %inc283, i64* %i, align 8
  br label %for.cond.128

for.end.284:                                      ; preds = %for.cond.128
  %199 = load %struct._object*, %struct._object** %res, align 8
  %200 = load i64, i64* %end, align 8
  %call285 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), %struct._object* %199, i64 %200)
  store %struct._object* %call285, %struct._object** %restuple, align 8
  br label %do.body

do.body:                                          ; preds = %for.end.284
  %201 = load %struct._object*, %struct._object** %object, align 8
  store %struct._object* %201, %struct._object** %_py_decref_tmp, align 8
  %202 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %202, i32 0, i32 0
  %203 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %203, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp286 = icmp ne i64 %dec, 0
  br i1 %cmp286, label %if.then.288, label %if.else.289

if.then.288:                                      ; preds = %do.body
  br label %if.end.290

if.else.289:                                      ; preds = %do.body
  %204 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %204, i32 0, i32 1
  %205 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %205, i32 0, i32 4
  %206 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %207 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %206(%struct._object* %207)
  br label %if.end.290

if.end.290:                                       ; preds = %if.else.289, %if.then.288
  br label %do.end

do.end:                                           ; preds = %if.end.290
  %208 = load %struct._object*, %struct._object** %restuple, align 8
  store %struct._object* %208, %struct._object** %retval
  br label %return

if.else.291:                                      ; preds = %entry
  %209 = load %struct._object*, %struct._object** %exc.addr, align 8
  call void @wrong_exception_type(%struct._object* %209)
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.291, %do.end, %if.then.104, %if.then.10, %if.then.6, %if.then.3
  %210 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %210
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i8* @PyMem_Malloc(i64) #2

declare %struct._object* @PyErr_NoMemory() #2

declare %struct._object* @PyUnicode_FromString(i8*) #2

declare void @PyMem_Free(i8*) #2

declare %struct._object* @PyObject_GetAttrString(%struct._object*, i8*) #2

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @args_tuple(%struct._object* %object, i8* %errors) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %object.addr = alloca %struct._object*, align 8
  %errors.addr = alloca i8*, align 8
  %args = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %object, %struct._object** %object.addr, align 8
  store i8* %errors, i8** %errors.addr, align 8
  %0 = load i8*, i8** %errors.addr, align 8
  %cmp = icmp ne i8* %0, null
  %conv = zext i1 %cmp to i32
  %add = add i32 1, %conv
  %conv1 = sext i32 %add to i64
  %call = call %struct._object* @PyTuple_New(i64 %conv1)
  store %struct._object* %call, %struct._object** %args, align 8
  %1 = load %struct._object*, %struct._object** %args, align 8
  %cmp2 = icmp eq %struct._object* %1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %object.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %4 = load %struct._object*, %struct._object** %object.addr, align 8
  %5 = load %struct._object*, %struct._object** %args, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %6, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %4, %struct._object** %arrayidx, align 8
  %7 = load i8*, i8** %errors.addr, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.then.4, label %if.end.17

if.then.4:                                        ; preds = %if.end
  %8 = load i8*, i8** %errors.addr, align 8
  %call5 = call %struct._object* @PyUnicode_FromString(i8* %8)
  store %struct._object* %call5, %struct._object** %v, align 8
  %9 = load %struct._object*, %struct._object** %v, align 8
  %cmp6 = icmp eq %struct._object* %9, null
  br i1 %cmp6, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %if.then.4
  br label %do.body

do.body:                                          ; preds = %if.then.8
  %10 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt9 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt9, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt9, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body
  br label %if.end.13

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.13
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.then.4
  %17 = load %struct._object*, %struct._object** %v, align 8
  %18 = load %struct._object*, %struct._object** %args, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyTupleObject*
  %ob_item15 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %19, i32 0, i32 1
  %arrayidx16 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item15, i32 0, i64 1
  store %struct._object* %17, %struct._object** %arrayidx16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.14, %if.end
  %20 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %20, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.17, %do.end, %if.then
  %21 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %21
}

; Function Attrs: nounwind uwtable
define internal void @wrap_codec_error(i8* %operation, i8* %encoding) #0 {
entry:
  %operation.addr = alloca i8*, align 8
  %encoding.addr = alloca i8*, align 8
  store i8* %operation, i8** %operation.addr, align 8
  store i8* %encoding, i8** %encoding.addr, align 8
  %0 = load i8*, i8** %operation.addr, align 8
  %1 = load i8*, i8** %encoding.addr, align 8
  %call = call %struct._object* (i8*, ...) @_PyErr_TrySetFromCause(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i32 0, i32 0), i8* %0, i8* %1)
  ret void
}

declare %struct._object* @_PyErr_TrySetFromCause(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @codec_getitem_checked(i8* %encoding, i8* %alternate_command, i32 %index) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %encoding.addr = alloca i8*, align 8
  %alternate_command.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  %codec = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8
  store i8* %alternate_command, i8** %alternate_command.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load i8*, i8** %encoding.addr, align 8
  %1 = load i8*, i8** %alternate_command.addr, align 8
  %call = call %struct._object* @_PyCodec_LookupTextEncoding(i8* %0, i8* %1)
  store %struct._object* %call, %struct._object** %codec, align 8
  %2 = load %struct._object*, %struct._object** %codec, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct._object*, %struct._object** %codec, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %5, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom
  %6 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %6, %struct._object** %v, align 8
  %7 = load %struct._object*, %struct._object** %v, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %codec, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt1 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt1, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt1, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %16 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %16, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %17 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %17
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @strict_errors(%struct._object* %self, %struct._object* %exc) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %exc.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call = call %struct._object* @PyCodec_StrictErrors(%struct._object* %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ignore_errors(%struct._object* %self, %struct._object* %exc) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %exc.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call = call %struct._object* @PyCodec_IgnoreErrors(%struct._object* %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @replace_errors(%struct._object* %self, %struct._object* %exc) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %exc.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call = call %struct._object* @PyCodec_ReplaceErrors(%struct._object* %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @xmlcharrefreplace_errors(%struct._object* %self, %struct._object* %exc) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %exc.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call = call %struct._object* @PyCodec_XMLCharRefReplaceErrors(%struct._object* %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @backslashreplace_errors(%struct._object* %self, %struct._object* %exc) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %exc.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call = call %struct._object* @PyCodec_BackslashReplaceErrors(%struct._object* %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @surrogatepass_errors(%struct._object* %self, %struct._object* %exc) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %exc.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call = call %struct._object* @PyCodec_SurrogatePassErrors(%struct._object* %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @surrogateescape_errors(%struct._object* %self, %struct._object* %exc) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %exc.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call = call %struct._object* @PyCodec_SurrogateEscapeErrors(%struct._object* %0)
  ret %struct._object* %call
}

declare %struct._object* @PyList_New(i64) #2

declare %struct._object* @PyDict_New() #2

declare %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef*, %struct._object*, %struct._object*) #2

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #4

declare %struct._object* @PyImport_ImportModuleNoBlock(i8*) #2

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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  %_py_decref_tmp46 = alloca %struct._object*, align 8
  %_py_decref_tmp60 = alloca %struct._object*, align 8
  %ch = alloca i32, align 4
  %_py_decref_tmp161 = alloca %struct._object*, align 8
  %_py_decref_tmp173 = alloca %struct._object*, align 8
  %_py_decref_tmp232 = alloca %struct._object*, align 8
  %_py_decref_tmp244 = alloca %struct._object*, align 8
  %p = alloca i8*, align 8
  %ch259 = alloca i32, align 4
  %_py_decref_tmp276 = alloca %struct._object*, align 8
  %_py_decref_tmp292 = alloca %struct._object*, align 8
  %_py_decref_tmp308 = alloca %struct._object*, align 8
  %_py_decref_tmp320 = alloca %struct._object*, align 8
  %_py_decref_tmp334 = alloca %struct._object*, align 8
  %_py_decref_tmp429 = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8
  %1 = load %struct._object*, %struct._object** @PyExc_UnicodeEncodeError, align 8
  %call = call i32 @PyObject_IsInstance(%struct._object* %0, %struct._object* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else.255

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call1 = call i32 @PyUnicodeEncodeError_GetStart(%struct._object* %2, i64* %start)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call4 = call i32 @PyUnicodeEncodeError_GetEnd(%struct._object* %3, i64* %end)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call8 = call %struct._object* @PyUnicodeEncodeError_GetObject(%struct._object* %4)
  store %struct._object* %call8, %struct._object** %object, align 8
  %tobool9 = icmp ne %struct._object* %call8, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  %5 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call12 = call %struct._object* @PyUnicodeEncodeError_GetEncoding(%struct._object* %5)
  store %struct._object* %call12, %struct._object** %encode, align 8
  %tobool13 = icmp ne %struct._object* %call12, null
  br i1 %tobool13, label %if.end.17, label %if.then.14

if.then.14:                                       ; preds = %if.end.11
  br label %do.body

do.body:                                          ; preds = %if.then.14
  %6 = load %struct._object*, %struct._object** %object, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.body
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.16
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.11
  %13 = load %struct._object*, %struct._object** %encode, align 8
  %call18 = call i8* @PyUnicode_AsUTF8(%struct._object* %13)
  store i8* %call18, i8** %encoding, align 8
  %tobool19 = icmp ne i8* %call18, null
  br i1 %tobool19, label %if.end.43, label %if.then.20

if.then.20:                                       ; preds = %if.end.17
  br label %do.body.21

do.body.21:                                       ; preds = %if.then.20
  %14 = load %struct._object*, %struct._object** %object, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp22, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt23, align 8
  %dec24 = add i64 %16, -1
  store i64 %dec24, i64* %ob_refcnt23, align 8
  %cmp25 = icmp ne i64 %dec24, 0
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.body.21
  br label %if.end.30

if.else.27:                                       ; preds = %do.body.21
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  call void %19(%struct._object* %20)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  br label %do.body.32

do.body.32:                                       ; preds = %do.end.31
  %21 = load %struct._object*, %struct._object** %encode, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp33, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt34, align 8
  %dec35 = add i64 %23, -1
  store i64 %dec35, i64* %ob_refcnt34, align 8
  %cmp36 = icmp ne i64 %dec35, 0
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %do.body.32
  br label %if.end.41

if.else.38:                                       ; preds = %do.body.32
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  call void %26(%struct._object* %27)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.37
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.43:                                        ; preds = %if.end.17
  %28 = load i8*, i8** %encoding, align 8
  %call44 = call i32 @get_standard_encoding(i8* %28, i32* %bytelength)
  store i32 %call44, i32* %code, align 4
  br label %do.body.45

do.body.45:                                       ; preds = %if.end.43
  %29 = load %struct._object*, %struct._object** %encode, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp46, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt47, align 8
  %dec48 = add i64 %31, -1
  store i64 %dec48, i64* %ob_refcnt47, align 8
  %cmp49 = icmp ne i64 %dec48, 0
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body.45
  br label %if.end.54

if.else.51:                                       ; preds = %do.body.45
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_type52 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type52, align 8
  %tp_dealloc53 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc53, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  call void %34(%struct._object* %35)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.51, %if.then.50
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  %36 = load i32, i32* %bytelength, align 4
  %conv = sext i32 %36 to i64
  %37 = load i64, i64* %end, align 8
  %38 = load i64, i64* %start, align 8
  %sub = sub i64 %37, %38
  %mul = mul i64 %conv, %sub
  %call56 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %mul)
  store %struct._object* %call56, %struct._object** %res, align 8
  %39 = load %struct._object*, %struct._object** %res, align 8
  %tobool57 = icmp ne %struct._object* %39, null
  br i1 %tobool57, label %if.end.71, label %if.then.58

if.then.58:                                       ; preds = %do.end.55
  br label %do.body.59

do.body.59:                                       ; preds = %if.then.58
  %40 = load %struct._object*, %struct._object** %object, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp60, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  %ob_refcnt61 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt61, align 8
  %dec62 = add i64 %42, -1
  store i64 %dec62, i64* %ob_refcnt61, align 8
  %cmp63 = icmp ne i64 %dec62, 0
  br i1 %cmp63, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %do.body.59
  br label %if.end.69

if.else.66:                                       ; preds = %do.body.59
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8
  %tp_dealloc68 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc68, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  call void %45(%struct._object* %46)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.66, %if.then.65
  br label %do.end.70

do.end.70:                                        ; preds = %if.end.69
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.71:                                        ; preds = %do.end.55
  %47 = load %struct._object*, %struct._object** %res, align 8
  %call72 = call i8* @PyBytes_AsString(%struct._object* %47)
  store i8* %call72, i8** %outp, align 8
  %48 = load i64, i64* %start, align 8
  store i64 %48, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.71
  %49 = load i64, i64* %i, align 8
  %50 = load i64, i64* %end, align 8
  %cmp73 = icmp slt i64 %49, %50
  br i1 %cmp73, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load %struct._object*, %struct._object** %object, align 8
  %52 = bitcast %struct._object* %51 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %52, i32 0, i32 3
  %53 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %53, align 4
  %bf.lshr = lshr i32 %bf.load, 2
  %bf.clear = and i32 %bf.lshr, 7
  %cmp75 = icmp eq i32 %bf.clear, 1
  br i1 %cmp75, label %cond.true, label %cond.false.94

cond.true:                                        ; preds = %for.body
  %54 = load i64, i64* %i, align 8
  %55 = load %struct._object*, %struct._object** %object, align 8
  %56 = bitcast %struct._object* %55 to %struct.PyASCIIObject*
  %state77 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %56, i32 0, i32 3
  %57 = bitcast %struct.anon* %state77 to i32*
  %bf.load78 = load i32, i32* %57, align 4
  %bf.lshr79 = lshr i32 %bf.load78, 5
  %bf.clear80 = and i32 %bf.lshr79, 1
  %tobool81 = icmp ne i32 %bf.clear80, 0
  br i1 %tobool81, label %cond.true.82, label %cond.false.90

cond.true.82:                                     ; preds = %cond.true
  %58 = load %struct._object*, %struct._object** %object, align 8
  %59 = bitcast %struct._object* %58 to %struct.PyASCIIObject*
  %state83 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %59, i32 0, i32 3
  %60 = bitcast %struct.anon* %state83 to i32*
  %bf.load84 = load i32, i32* %60, align 4
  %bf.lshr85 = lshr i32 %bf.load84, 6
  %bf.clear86 = and i32 %bf.lshr85, 1
  %tobool87 = icmp ne i32 %bf.clear86, 0
  br i1 %tobool87, label %cond.true.88, label %cond.false

cond.true.88:                                     ; preds = %cond.true.82
  %61 = load %struct._object*, %struct._object** %object, align 8
  %62 = bitcast %struct._object* %61 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %62, i64 1
  %63 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end

cond.false:                                       ; preds = %cond.true.82
  %64 = load %struct._object*, %struct._object** %object, align 8
  %65 = bitcast %struct._object* %64 to %struct.PyCompactUnicodeObject*
  %add.ptr89 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %65, i64 1
  %66 = bitcast %struct.PyCompactUnicodeObject* %add.ptr89 to i8*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.88
  %cond = phi i8* [ %63, %cond.true.88 ], [ %66, %cond.false ]
  br label %cond.end.91

cond.false.90:                                    ; preds = %cond.true
  %67 = load %struct._object*, %struct._object** %object, align 8
  %68 = bitcast %struct._object* %67 to %struct.PyUnicodeObject*
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %68, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %69 = load i8*, i8** %any, align 8
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.90, %cond.end
  %cond92 = phi i8* [ %cond, %cond.end ], [ %69, %cond.false.90 ]
  %arrayidx = getelementptr i8, i8* %cond92, i64 %54
  %70 = load i8, i8* %arrayidx, align 1
  %conv93 = zext i8 %70 to i32
  br label %cond.end.152

cond.false.94:                                    ; preds = %for.body
  %71 = load %struct._object*, %struct._object** %object, align 8
  %72 = bitcast %struct._object* %71 to %struct.PyASCIIObject*
  %state95 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %72, i32 0, i32 3
  %73 = bitcast %struct.anon* %state95 to i32*
  %bf.load96 = load i32, i32* %73, align 4
  %bf.lshr97 = lshr i32 %bf.load96, 2
  %bf.clear98 = and i32 %bf.lshr97, 7
  %cmp99 = icmp eq i32 %bf.clear98, 2
  br i1 %cmp99, label %cond.true.101, label %cond.false.126

cond.true.101:                                    ; preds = %cond.false.94
  %74 = load i64, i64* %i, align 8
  %75 = load %struct._object*, %struct._object** %object, align 8
  %76 = bitcast %struct._object* %75 to %struct.PyASCIIObject*
  %state102 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %76, i32 0, i32 3
  %77 = bitcast %struct.anon* %state102 to i32*
  %bf.load103 = load i32, i32* %77, align 4
  %bf.lshr104 = lshr i32 %bf.load103, 5
  %bf.clear105 = and i32 %bf.lshr104, 1
  %tobool106 = icmp ne i32 %bf.clear105, 0
  br i1 %tobool106, label %cond.true.107, label %cond.false.119

cond.true.107:                                    ; preds = %cond.true.101
  %78 = load %struct._object*, %struct._object** %object, align 8
  %79 = bitcast %struct._object* %78 to %struct.PyASCIIObject*
  %state108 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %79, i32 0, i32 3
  %80 = bitcast %struct.anon* %state108 to i32*
  %bf.load109 = load i32, i32* %80, align 4
  %bf.lshr110 = lshr i32 %bf.load109, 6
  %bf.clear111 = and i32 %bf.lshr110, 1
  %tobool112 = icmp ne i32 %bf.clear111, 0
  br i1 %tobool112, label %cond.true.113, label %cond.false.115

cond.true.113:                                    ; preds = %cond.true.107
  %81 = load %struct._object*, %struct._object** %object, align 8
  %82 = bitcast %struct._object* %81 to %struct.PyASCIIObject*
  %add.ptr114 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %82, i64 1
  %83 = bitcast %struct.PyASCIIObject* %add.ptr114 to i8*
  br label %cond.end.117

cond.false.115:                                   ; preds = %cond.true.107
  %84 = load %struct._object*, %struct._object** %object, align 8
  %85 = bitcast %struct._object* %84 to %struct.PyCompactUnicodeObject*
  %add.ptr116 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %85, i64 1
  %86 = bitcast %struct.PyCompactUnicodeObject* %add.ptr116 to i8*
  br label %cond.end.117

cond.end.117:                                     ; preds = %cond.false.115, %cond.true.113
  %cond118 = phi i8* [ %83, %cond.true.113 ], [ %86, %cond.false.115 ]
  br label %cond.end.122

cond.false.119:                                   ; preds = %cond.true.101
  %87 = load %struct._object*, %struct._object** %object, align 8
  %88 = bitcast %struct._object* %87 to %struct.PyUnicodeObject*
  %data120 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %88, i32 0, i32 1
  %any121 = bitcast %union.anon* %data120 to i8**
  %89 = load i8*, i8** %any121, align 8
  br label %cond.end.122

cond.end.122:                                     ; preds = %cond.false.119, %cond.end.117
  %cond123 = phi i8* [ %cond118, %cond.end.117 ], [ %89, %cond.false.119 ]
  %90 = bitcast i8* %cond123 to i16*
  %arrayidx124 = getelementptr i16, i16* %90, i64 %74
  %91 = load i16, i16* %arrayidx124, align 2
  %conv125 = zext i16 %91 to i32
  br label %cond.end.150

cond.false.126:                                   ; preds = %cond.false.94
  %92 = load i64, i64* %i, align 8
  %93 = load %struct._object*, %struct._object** %object, align 8
  %94 = bitcast %struct._object* %93 to %struct.PyASCIIObject*
  %state127 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %94, i32 0, i32 3
  %95 = bitcast %struct.anon* %state127 to i32*
  %bf.load128 = load i32, i32* %95, align 4
  %bf.lshr129 = lshr i32 %bf.load128, 5
  %bf.clear130 = and i32 %bf.lshr129, 1
  %tobool131 = icmp ne i32 %bf.clear130, 0
  br i1 %tobool131, label %cond.true.132, label %cond.false.144

cond.true.132:                                    ; preds = %cond.false.126
  %96 = load %struct._object*, %struct._object** %object, align 8
  %97 = bitcast %struct._object* %96 to %struct.PyASCIIObject*
  %state133 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %97, i32 0, i32 3
  %98 = bitcast %struct.anon* %state133 to i32*
  %bf.load134 = load i32, i32* %98, align 4
  %bf.lshr135 = lshr i32 %bf.load134, 6
  %bf.clear136 = and i32 %bf.lshr135, 1
  %tobool137 = icmp ne i32 %bf.clear136, 0
  br i1 %tobool137, label %cond.true.138, label %cond.false.140

cond.true.138:                                    ; preds = %cond.true.132
  %99 = load %struct._object*, %struct._object** %object, align 8
  %100 = bitcast %struct._object* %99 to %struct.PyASCIIObject*
  %add.ptr139 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %100, i64 1
  %101 = bitcast %struct.PyASCIIObject* %add.ptr139 to i8*
  br label %cond.end.142

cond.false.140:                                   ; preds = %cond.true.132
  %102 = load %struct._object*, %struct._object** %object, align 8
  %103 = bitcast %struct._object* %102 to %struct.PyCompactUnicodeObject*
  %add.ptr141 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %103, i64 1
  %104 = bitcast %struct.PyCompactUnicodeObject* %add.ptr141 to i8*
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.false.140, %cond.true.138
  %cond143 = phi i8* [ %101, %cond.true.138 ], [ %104, %cond.false.140 ]
  br label %cond.end.147

cond.false.144:                                   ; preds = %cond.false.126
  %105 = load %struct._object*, %struct._object** %object, align 8
  %106 = bitcast %struct._object* %105 to %struct.PyUnicodeObject*
  %data145 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %106, i32 0, i32 1
  %any146 = bitcast %union.anon* %data145 to i8**
  %107 = load i8*, i8** %any146, align 8
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.false.144, %cond.end.142
  %cond148 = phi i8* [ %cond143, %cond.end.142 ], [ %107, %cond.false.144 ]
  %108 = bitcast i8* %cond148 to i32*
  %arrayidx149 = getelementptr i32, i32* %108, i64 %92
  %109 = load i32, i32* %arrayidx149, align 4
  br label %cond.end.150

cond.end.150:                                     ; preds = %cond.end.147, %cond.end.122
  %cond151 = phi i32 [ %conv125, %cond.end.122 ], [ %109, %cond.end.147 ]
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.end.150, %cond.end.91
  %cond153 = phi i32 [ %conv93, %cond.end.91 ], [ %cond151, %cond.end.150 ]
  store i32 %cond153, i32* %ch, align 4
  %110 = load i32, i32* %ch, align 4
  %cmp154 = icmp ule i32 55296, %110
  br i1 %cmp154, label %land.lhs.true, label %if.then.158

land.lhs.true:                                    ; preds = %cond.end.152
  %111 = load i32, i32* %ch, align 4
  %cmp156 = icmp ule i32 %111, 57343
  br i1 %cmp156, label %if.end.184, label %if.then.158

if.then.158:                                      ; preds = %land.lhs.true, %cond.end.152
  %112 = load %struct._object*, %struct._object** %exc.addr, align 8
  %ob_type159 = getelementptr inbounds %struct._object, %struct._object* %112, i32 0, i32 1
  %113 = load %struct._typeobject*, %struct._typeobject** %ob_type159, align 8
  %114 = bitcast %struct._typeobject* %113 to %struct._object*
  %115 = load %struct._object*, %struct._object** %exc.addr, align 8
  call void @PyErr_SetObject(%struct._object* %114, %struct._object* %115)
  br label %do.body.160

do.body.160:                                      ; preds = %if.then.158
  %116 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %116, %struct._object** %_py_decref_tmp161, align 8
  %117 = load %struct._object*, %struct._object** %_py_decref_tmp161, align 8
  %ob_refcnt162 = getelementptr inbounds %struct._object, %struct._object* %117, i32 0, i32 0
  %118 = load i64, i64* %ob_refcnt162, align 8
  %dec163 = add i64 %118, -1
  store i64 %dec163, i64* %ob_refcnt162, align 8
  %cmp164 = icmp ne i64 %dec163, 0
  br i1 %cmp164, label %if.then.166, label %if.else.167

if.then.166:                                      ; preds = %do.body.160
  br label %if.end.170

if.else.167:                                      ; preds = %do.body.160
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp161, align 8
  %ob_type168 = getelementptr inbounds %struct._object, %struct._object* %119, i32 0, i32 1
  %120 = load %struct._typeobject*, %struct._typeobject** %ob_type168, align 8
  %tp_dealloc169 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %120, i32 0, i32 4
  %121 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc169, align 8
  %122 = load %struct._object*, %struct._object** %_py_decref_tmp161, align 8
  call void %121(%struct._object* %122)
  br label %if.end.170

if.end.170:                                       ; preds = %if.else.167, %if.then.166
  br label %do.end.171

do.end.171:                                       ; preds = %if.end.170
  br label %do.body.172

do.body.172:                                      ; preds = %do.end.171
  %123 = load %struct._object*, %struct._object** %object, align 8
  store %struct._object* %123, %struct._object** %_py_decref_tmp173, align 8
  %124 = load %struct._object*, %struct._object** %_py_decref_tmp173, align 8
  %ob_refcnt174 = getelementptr inbounds %struct._object, %struct._object* %124, i32 0, i32 0
  %125 = load i64, i64* %ob_refcnt174, align 8
  %dec175 = add i64 %125, -1
  store i64 %dec175, i64* %ob_refcnt174, align 8
  %cmp176 = icmp ne i64 %dec175, 0
  br i1 %cmp176, label %if.then.178, label %if.else.179

if.then.178:                                      ; preds = %do.body.172
  br label %if.end.182

if.else.179:                                      ; preds = %do.body.172
  %126 = load %struct._object*, %struct._object** %_py_decref_tmp173, align 8
  %ob_type180 = getelementptr inbounds %struct._object, %struct._object* %126, i32 0, i32 1
  %127 = load %struct._typeobject*, %struct._typeobject** %ob_type180, align 8
  %tp_dealloc181 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %127, i32 0, i32 4
  %128 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc181, align 8
  %129 = load %struct._object*, %struct._object** %_py_decref_tmp173, align 8
  call void %128(%struct._object* %129)
  br label %if.end.182

if.end.182:                                       ; preds = %if.else.179, %if.then.178
  br label %do.end.183

do.end.183:                                       ; preds = %if.end.182
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.184:                                       ; preds = %land.lhs.true
  %130 = load i32, i32* %code, align 4
  switch i32 %130, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.194
    i32 1, label %sw.bb.200
    i32 4, label %sw.bb.206
    i32 3, label %sw.bb.218
  ]

sw.bb:                                            ; preds = %if.end.184
  %131 = load i32, i32* %ch, align 4
  %shr = lshr i32 %131, 12
  %or = or i32 224, %shr
  %conv185 = trunc i32 %or to i8
  %132 = load i8*, i8** %outp, align 8
  %incdec.ptr = getelementptr i8, i8* %132, i32 1
  store i8* %incdec.ptr, i8** %outp, align 8
  store i8 %conv185, i8* %132, align 1
  %133 = load i32, i32* %ch, align 4
  %shr186 = lshr i32 %133, 6
  %and = and i32 %shr186, 63
  %or187 = or i32 128, %and
  %conv188 = trunc i32 %or187 to i8
  %134 = load i8*, i8** %outp, align 8
  %incdec.ptr189 = getelementptr i8, i8* %134, i32 1
  store i8* %incdec.ptr189, i8** %outp, align 8
  store i8 %conv188, i8* %134, align 1
  %135 = load i32, i32* %ch, align 4
  %and190 = and i32 %135, 63
  %or191 = or i32 128, %and190
  %conv192 = trunc i32 %or191 to i8
  %136 = load i8*, i8** %outp, align 8
  %incdec.ptr193 = getelementptr i8, i8* %136, i32 1
  store i8* %incdec.ptr193, i8** %outp, align 8
  store i8 %conv192, i8* %136, align 1
  br label %sw.epilog

sw.bb.194:                                        ; preds = %if.end.184
  %137 = load i32, i32* %ch, align 4
  %conv195 = trunc i32 %137 to i8
  %138 = load i8*, i8** %outp, align 8
  %incdec.ptr196 = getelementptr i8, i8* %138, i32 1
  store i8* %incdec.ptr196, i8** %outp, align 8
  store i8 %conv195, i8* %138, align 1
  %139 = load i32, i32* %ch, align 4
  %shr197 = lshr i32 %139, 8
  %conv198 = trunc i32 %shr197 to i8
  %140 = load i8*, i8** %outp, align 8
  %incdec.ptr199 = getelementptr i8, i8* %140, i32 1
  store i8* %incdec.ptr199, i8** %outp, align 8
  store i8 %conv198, i8* %140, align 1
  br label %sw.epilog

sw.bb.200:                                        ; preds = %if.end.184
  %141 = load i32, i32* %ch, align 4
  %shr201 = lshr i32 %141, 8
  %conv202 = trunc i32 %shr201 to i8
  %142 = load i8*, i8** %outp, align 8
  %incdec.ptr203 = getelementptr i8, i8* %142, i32 1
  store i8* %incdec.ptr203, i8** %outp, align 8
  store i8 %conv202, i8* %142, align 1
  %143 = load i32, i32* %ch, align 4
  %conv204 = trunc i32 %143 to i8
  %144 = load i8*, i8** %outp, align 8
  %incdec.ptr205 = getelementptr i8, i8* %144, i32 1
  store i8* %incdec.ptr205, i8** %outp, align 8
  store i8 %conv204, i8* %144, align 1
  br label %sw.epilog

sw.bb.206:                                        ; preds = %if.end.184
  %145 = load i32, i32* %ch, align 4
  %conv207 = trunc i32 %145 to i8
  %146 = load i8*, i8** %outp, align 8
  %incdec.ptr208 = getelementptr i8, i8* %146, i32 1
  store i8* %incdec.ptr208, i8** %outp, align 8
  store i8 %conv207, i8* %146, align 1
  %147 = load i32, i32* %ch, align 4
  %shr209 = lshr i32 %147, 8
  %conv210 = trunc i32 %shr209 to i8
  %148 = load i8*, i8** %outp, align 8
  %incdec.ptr211 = getelementptr i8, i8* %148, i32 1
  store i8* %incdec.ptr211, i8** %outp, align 8
  store i8 %conv210, i8* %148, align 1
  %149 = load i32, i32* %ch, align 4
  %shr212 = lshr i32 %149, 16
  %conv213 = trunc i32 %shr212 to i8
  %150 = load i8*, i8** %outp, align 8
  %incdec.ptr214 = getelementptr i8, i8* %150, i32 1
  store i8* %incdec.ptr214, i8** %outp, align 8
  store i8 %conv213, i8* %150, align 1
  %151 = load i32, i32* %ch, align 4
  %shr215 = lshr i32 %151, 24
  %conv216 = trunc i32 %shr215 to i8
  %152 = load i8*, i8** %outp, align 8
  %incdec.ptr217 = getelementptr i8, i8* %152, i32 1
  store i8* %incdec.ptr217, i8** %outp, align 8
  store i8 %conv216, i8* %152, align 1
  br label %sw.epilog

sw.bb.218:                                        ; preds = %if.end.184
  %153 = load i32, i32* %ch, align 4
  %shr219 = lshr i32 %153, 24
  %conv220 = trunc i32 %shr219 to i8
  %154 = load i8*, i8** %outp, align 8
  %incdec.ptr221 = getelementptr i8, i8* %154, i32 1
  store i8* %incdec.ptr221, i8** %outp, align 8
  store i8 %conv220, i8* %154, align 1
  %155 = load i32, i32* %ch, align 4
  %shr222 = lshr i32 %155, 16
  %conv223 = trunc i32 %shr222 to i8
  %156 = load i8*, i8** %outp, align 8
  %incdec.ptr224 = getelementptr i8, i8* %156, i32 1
  store i8* %incdec.ptr224, i8** %outp, align 8
  store i8 %conv223, i8* %156, align 1
  %157 = load i32, i32* %ch, align 4
  %shr225 = lshr i32 %157, 8
  %conv226 = trunc i32 %shr225 to i8
  %158 = load i8*, i8** %outp, align 8
  %incdec.ptr227 = getelementptr i8, i8* %158, i32 1
  store i8* %incdec.ptr227, i8** %outp, align 8
  store i8 %conv226, i8* %158, align 1
  %159 = load i32, i32* %ch, align 4
  %conv228 = trunc i32 %159 to i8
  %160 = load i8*, i8** %outp, align 8
  %incdec.ptr229 = getelementptr i8, i8* %160, i32 1
  store i8* %incdec.ptr229, i8** %outp, align 8
  store i8 %conv228, i8* %160, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.184, %sw.bb.218, %sw.bb.206, %sw.bb.200, %sw.bb.194, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %161 = load i64, i64* %i, align 8
  %inc = add i64 %161, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %162 = load %struct._object*, %struct._object** %res, align 8
  %163 = load i64, i64* %end, align 8
  %call230 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), %struct._object* %162, i64 %163)
  store %struct._object* %call230, %struct._object** %restuple, align 8
  br label %do.body.231

do.body.231:                                      ; preds = %for.end
  %164 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %164, %struct._object** %_py_decref_tmp232, align 8
  %165 = load %struct._object*, %struct._object** %_py_decref_tmp232, align 8
  %ob_refcnt233 = getelementptr inbounds %struct._object, %struct._object* %165, i32 0, i32 0
  %166 = load i64, i64* %ob_refcnt233, align 8
  %dec234 = add i64 %166, -1
  store i64 %dec234, i64* %ob_refcnt233, align 8
  %cmp235 = icmp ne i64 %dec234, 0
  br i1 %cmp235, label %if.then.237, label %if.else.238

if.then.237:                                      ; preds = %do.body.231
  br label %if.end.241

if.else.238:                                      ; preds = %do.body.231
  %167 = load %struct._object*, %struct._object** %_py_decref_tmp232, align 8
  %ob_type239 = getelementptr inbounds %struct._object, %struct._object* %167, i32 0, i32 1
  %168 = load %struct._typeobject*, %struct._typeobject** %ob_type239, align 8
  %tp_dealloc240 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %168, i32 0, i32 4
  %169 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc240, align 8
  %170 = load %struct._object*, %struct._object** %_py_decref_tmp232, align 8
  call void %169(%struct._object* %170)
  br label %if.end.241

if.end.241:                                       ; preds = %if.else.238, %if.then.237
  br label %do.end.242

do.end.242:                                       ; preds = %if.end.241
  br label %do.body.243

do.body.243:                                      ; preds = %do.end.242
  %171 = load %struct._object*, %struct._object** %object, align 8
  store %struct._object* %171, %struct._object** %_py_decref_tmp244, align 8
  %172 = load %struct._object*, %struct._object** %_py_decref_tmp244, align 8
  %ob_refcnt245 = getelementptr inbounds %struct._object, %struct._object* %172, i32 0, i32 0
  %173 = load i64, i64* %ob_refcnt245, align 8
  %dec246 = add i64 %173, -1
  store i64 %dec246, i64* %ob_refcnt245, align 8
  %cmp247 = icmp ne i64 %dec246, 0
  br i1 %cmp247, label %if.then.249, label %if.else.250

if.then.249:                                      ; preds = %do.body.243
  br label %if.end.253

if.else.250:                                      ; preds = %do.body.243
  %174 = load %struct._object*, %struct._object** %_py_decref_tmp244, align 8
  %ob_type251 = getelementptr inbounds %struct._object, %struct._object* %174, i32 0, i32 1
  %175 = load %struct._typeobject*, %struct._typeobject** %ob_type251, align 8
  %tp_dealloc252 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %175, i32 0, i32 4
  %176 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc252, align 8
  %177 = load %struct._object*, %struct._object** %_py_decref_tmp244, align 8
  call void %176(%struct._object* %177)
  br label %if.end.253

if.end.253:                                       ; preds = %if.else.250, %if.then.249
  br label %do.end.254

do.end.254:                                       ; preds = %if.end.253
  %178 = load %struct._object*, %struct._object** %restuple, align 8
  store %struct._object* %178, %struct._object** %retval
  br label %return

if.else.255:                                      ; preds = %entry
  %179 = load %struct._object*, %struct._object** %exc.addr, align 8
  %180 = load %struct._object*, %struct._object** @PyExc_UnicodeDecodeError, align 8
  %call256 = call i32 @PyObject_IsInstance(%struct._object* %179, %struct._object* %180)
  %tobool257 = icmp ne i32 %call256, 0
  br i1 %tobool257, label %if.then.258, label %if.else.456

if.then.258:                                      ; preds = %if.else.255
  store i32 0, i32* %ch259, align 4
  %181 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call260 = call i32 @PyUnicodeDecodeError_GetStart(%struct._object* %181, i64* %start)
  %tobool261 = icmp ne i32 %call260, 0
  br i1 %tobool261, label %if.then.262, label %if.end.263

if.then.262:                                      ; preds = %if.then.258
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.263:                                       ; preds = %if.then.258
  %182 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call264 = call i32 @PyUnicodeDecodeError_GetEnd(%struct._object* %182, i64* %end)
  %tobool265 = icmp ne i32 %call264, 0
  br i1 %tobool265, label %if.then.266, label %if.end.267

if.then.266:                                      ; preds = %if.end.263
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.267:                                       ; preds = %if.end.263
  %183 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call268 = call %struct._object* @PyUnicodeDecodeError_GetObject(%struct._object* %183)
  store %struct._object* %call268, %struct._object** %object, align 8
  %tobool269 = icmp ne %struct._object* %call268, null
  br i1 %tobool269, label %if.end.271, label %if.then.270

if.then.270:                                      ; preds = %if.end.267
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.271:                                       ; preds = %if.end.267
  %184 = load %struct._object*, %struct._object** %object, align 8
  %call272 = call i8* @PyBytes_AsString(%struct._object* %184)
  store i8* %call272, i8** %p, align 8
  %tobool273 = icmp ne i8* %call272, null
  br i1 %tobool273, label %if.end.287, label %if.then.274

if.then.274:                                      ; preds = %if.end.271
  br label %do.body.275

do.body.275:                                      ; preds = %if.then.274
  %185 = load %struct._object*, %struct._object** %object, align 8
  store %struct._object* %185, %struct._object** %_py_decref_tmp276, align 8
  %186 = load %struct._object*, %struct._object** %_py_decref_tmp276, align 8
  %ob_refcnt277 = getelementptr inbounds %struct._object, %struct._object* %186, i32 0, i32 0
  %187 = load i64, i64* %ob_refcnt277, align 8
  %dec278 = add i64 %187, -1
  store i64 %dec278, i64* %ob_refcnt277, align 8
  %cmp279 = icmp ne i64 %dec278, 0
  br i1 %cmp279, label %if.then.281, label %if.else.282

if.then.281:                                      ; preds = %do.body.275
  br label %if.end.285

if.else.282:                                      ; preds = %do.body.275
  %188 = load %struct._object*, %struct._object** %_py_decref_tmp276, align 8
  %ob_type283 = getelementptr inbounds %struct._object, %struct._object* %188, i32 0, i32 1
  %189 = load %struct._typeobject*, %struct._typeobject** %ob_type283, align 8
  %tp_dealloc284 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %189, i32 0, i32 4
  %190 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc284, align 8
  %191 = load %struct._object*, %struct._object** %_py_decref_tmp276, align 8
  call void %190(%struct._object* %191)
  br label %if.end.285

if.end.285:                                       ; preds = %if.else.282, %if.then.281
  br label %do.end.286

do.end.286:                                       ; preds = %if.end.285
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.287:                                       ; preds = %if.end.271
  %192 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call288 = call %struct._object* @PyUnicodeDecodeError_GetEncoding(%struct._object* %192)
  store %struct._object* %call288, %struct._object** %encode, align 8
  %tobool289 = icmp ne %struct._object* %call288, null
  br i1 %tobool289, label %if.end.303, label %if.then.290

if.then.290:                                      ; preds = %if.end.287
  br label %do.body.291

do.body.291:                                      ; preds = %if.then.290
  %193 = load %struct._object*, %struct._object** %object, align 8
  store %struct._object* %193, %struct._object** %_py_decref_tmp292, align 8
  %194 = load %struct._object*, %struct._object** %_py_decref_tmp292, align 8
  %ob_refcnt293 = getelementptr inbounds %struct._object, %struct._object* %194, i32 0, i32 0
  %195 = load i64, i64* %ob_refcnt293, align 8
  %dec294 = add i64 %195, -1
  store i64 %dec294, i64* %ob_refcnt293, align 8
  %cmp295 = icmp ne i64 %dec294, 0
  br i1 %cmp295, label %if.then.297, label %if.else.298

if.then.297:                                      ; preds = %do.body.291
  br label %if.end.301

if.else.298:                                      ; preds = %do.body.291
  %196 = load %struct._object*, %struct._object** %_py_decref_tmp292, align 8
  %ob_type299 = getelementptr inbounds %struct._object, %struct._object* %196, i32 0, i32 1
  %197 = load %struct._typeobject*, %struct._typeobject** %ob_type299, align 8
  %tp_dealloc300 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %197, i32 0, i32 4
  %198 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc300, align 8
  %199 = load %struct._object*, %struct._object** %_py_decref_tmp292, align 8
  call void %198(%struct._object* %199)
  br label %if.end.301

if.end.301:                                       ; preds = %if.else.298, %if.then.297
  br label %do.end.302

do.end.302:                                       ; preds = %if.end.301
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.303:                                       ; preds = %if.end.287
  %200 = load %struct._object*, %struct._object** %encode, align 8
  %call304 = call i8* @PyUnicode_AsUTF8(%struct._object* %200)
  store i8* %call304, i8** %encoding, align 8
  %tobool305 = icmp ne i8* %call304, null
  br i1 %tobool305, label %if.end.331, label %if.then.306

if.then.306:                                      ; preds = %if.end.303
  br label %do.body.307

do.body.307:                                      ; preds = %if.then.306
  %201 = load %struct._object*, %struct._object** %object, align 8
  store %struct._object* %201, %struct._object** %_py_decref_tmp308, align 8
  %202 = load %struct._object*, %struct._object** %_py_decref_tmp308, align 8
  %ob_refcnt309 = getelementptr inbounds %struct._object, %struct._object* %202, i32 0, i32 0
  %203 = load i64, i64* %ob_refcnt309, align 8
  %dec310 = add i64 %203, -1
  store i64 %dec310, i64* %ob_refcnt309, align 8
  %cmp311 = icmp ne i64 %dec310, 0
  br i1 %cmp311, label %if.then.313, label %if.else.314

if.then.313:                                      ; preds = %do.body.307
  br label %if.end.317

if.else.314:                                      ; preds = %do.body.307
  %204 = load %struct._object*, %struct._object** %_py_decref_tmp308, align 8
  %ob_type315 = getelementptr inbounds %struct._object, %struct._object* %204, i32 0, i32 1
  %205 = load %struct._typeobject*, %struct._typeobject** %ob_type315, align 8
  %tp_dealloc316 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %205, i32 0, i32 4
  %206 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc316, align 8
  %207 = load %struct._object*, %struct._object** %_py_decref_tmp308, align 8
  call void %206(%struct._object* %207)
  br label %if.end.317

if.end.317:                                       ; preds = %if.else.314, %if.then.313
  br label %do.end.318

do.end.318:                                       ; preds = %if.end.317
  br label %do.body.319

do.body.319:                                      ; preds = %do.end.318
  %208 = load %struct._object*, %struct._object** %encode, align 8
  store %struct._object* %208, %struct._object** %_py_decref_tmp320, align 8
  %209 = load %struct._object*, %struct._object** %_py_decref_tmp320, align 8
  %ob_refcnt321 = getelementptr inbounds %struct._object, %struct._object* %209, i32 0, i32 0
  %210 = load i64, i64* %ob_refcnt321, align 8
  %dec322 = add i64 %210, -1
  store i64 %dec322, i64* %ob_refcnt321, align 8
  %cmp323 = icmp ne i64 %dec322, 0
  br i1 %cmp323, label %if.then.325, label %if.else.326

if.then.325:                                      ; preds = %do.body.319
  br label %if.end.329

if.else.326:                                      ; preds = %do.body.319
  %211 = load %struct._object*, %struct._object** %_py_decref_tmp320, align 8
  %ob_type327 = getelementptr inbounds %struct._object, %struct._object* %211, i32 0, i32 1
  %212 = load %struct._typeobject*, %struct._typeobject** %ob_type327, align 8
  %tp_dealloc328 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %212, i32 0, i32 4
  %213 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc328, align 8
  %214 = load %struct._object*, %struct._object** %_py_decref_tmp320, align 8
  call void %213(%struct._object* %214)
  br label %if.end.329

if.end.329:                                       ; preds = %if.else.326, %if.then.325
  br label %do.end.330

do.end.330:                                       ; preds = %if.end.329
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.331:                                       ; preds = %if.end.303
  %215 = load i8*, i8** %encoding, align 8
  %call332 = call i32 @get_standard_encoding(i8* %215, i32* %bytelength)
  store i32 %call332, i32* %code, align 4
  br label %do.body.333

do.body.333:                                      ; preds = %if.end.331
  %216 = load %struct._object*, %struct._object** %encode, align 8
  store %struct._object* %216, %struct._object** %_py_decref_tmp334, align 8
  %217 = load %struct._object*, %struct._object** %_py_decref_tmp334, align 8
  %ob_refcnt335 = getelementptr inbounds %struct._object, %struct._object* %217, i32 0, i32 0
  %218 = load i64, i64* %ob_refcnt335, align 8
  %dec336 = add i64 %218, -1
  store i64 %dec336, i64* %ob_refcnt335, align 8
  %cmp337 = icmp ne i64 %dec336, 0
  br i1 %cmp337, label %if.then.339, label %if.else.340

if.then.339:                                      ; preds = %do.body.333
  br label %if.end.343

if.else.340:                                      ; preds = %do.body.333
  %219 = load %struct._object*, %struct._object** %_py_decref_tmp334, align 8
  %ob_type341 = getelementptr inbounds %struct._object, %struct._object* %219, i32 0, i32 1
  %220 = load %struct._typeobject*, %struct._typeobject** %ob_type341, align 8
  %tp_dealloc342 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %220, i32 0, i32 4
  %221 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc342, align 8
  %222 = load %struct._object*, %struct._object** %_py_decref_tmp334, align 8
  call void %221(%struct._object* %222)
  br label %if.end.343

if.end.343:                                       ; preds = %if.else.340, %if.then.339
  br label %do.end.344

do.end.344:                                       ; preds = %if.end.343
  %223 = load i64, i64* %start, align 8
  %224 = load i8*, i8** %p, align 8
  %add.ptr345 = getelementptr i8, i8* %224, i64 %223
  store i8* %add.ptr345, i8** %p, align 8
  %225 = load %struct._object*, %struct._object** %object, align 8
  %226 = bitcast %struct._object* %225 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %226, i32 0, i32 1
  %227 = load i64, i64* %ob_size, align 8
  %228 = load i64, i64* %start, align 8
  %sub346 = sub i64 %227, %228
  %229 = load i32, i32* %bytelength, align 4
  %conv347 = sext i32 %229 to i64
  %cmp348 = icmp sge i64 %sub346, %conv347
  br i1 %cmp348, label %if.then.350, label %if.end.427

if.then.350:                                      ; preds = %do.end.344
  %230 = load i32, i32* %code, align 4
  switch i32 %230, label %sw.epilog.426 [
    i32 0, label %sw.bb.351
    i32 2, label %sw.bb.382
    i32 1, label %sw.bb.389
    i32 4, label %sw.bb.396
    i32 3, label %sw.bb.411
  ]

sw.bb.351:                                        ; preds = %if.then.350
  %231 = load i8*, i8** %p, align 8
  %arrayidx352 = getelementptr i8, i8* %231, i64 0
  %232 = load i8, i8* %arrayidx352, align 1
  %conv353 = zext i8 %232 to i32
  %and354 = and i32 %conv353, 240
  %cmp355 = icmp eq i32 %and354, 224
  br i1 %cmp355, label %land.lhs.true.357, label %if.end.381

land.lhs.true.357:                                ; preds = %sw.bb.351
  %233 = load i8*, i8** %p, align 8
  %arrayidx358 = getelementptr i8, i8* %233, i64 1
  %234 = load i8, i8* %arrayidx358, align 1
  %conv359 = zext i8 %234 to i32
  %and360 = and i32 %conv359, 192
  %cmp361 = icmp eq i32 %and360, 128
  br i1 %cmp361, label %land.lhs.true.363, label %if.end.381

land.lhs.true.363:                                ; preds = %land.lhs.true.357
  %235 = load i8*, i8** %p, align 8
  %arrayidx364 = getelementptr i8, i8* %235, i64 2
  %236 = load i8, i8* %arrayidx364, align 1
  %conv365 = zext i8 %236 to i32
  %and366 = and i32 %conv365, 192
  %cmp367 = icmp eq i32 %and366, 128
  br i1 %cmp367, label %if.then.369, label %if.end.381

if.then.369:                                      ; preds = %land.lhs.true.363
  %237 = load i8*, i8** %p, align 8
  %arrayidx370 = getelementptr i8, i8* %237, i64 0
  %238 = load i8, i8* %arrayidx370, align 1
  %conv371 = zext i8 %238 to i32
  %and372 = and i32 %conv371, 15
  %shl = shl i32 %and372, 12
  %239 = load i8*, i8** %p, align 8
  %arrayidx373 = getelementptr i8, i8* %239, i64 1
  %240 = load i8, i8* %arrayidx373, align 1
  %conv374 = zext i8 %240 to i32
  %and375 = and i32 %conv374, 63
  %shl376 = shl i32 %and375, 6
  %add = add i32 %shl, %shl376
  %241 = load i8*, i8** %p, align 8
  %arrayidx377 = getelementptr i8, i8* %241, i64 2
  %242 = load i8, i8* %arrayidx377, align 1
  %conv378 = zext i8 %242 to i32
  %and379 = and i32 %conv378, 63
  %add380 = add i32 %add, %and379
  store i32 %add380, i32* %ch259, align 4
  br label %if.end.381

if.end.381:                                       ; preds = %if.then.369, %land.lhs.true.363, %land.lhs.true.357, %sw.bb.351
  br label %sw.epilog.426

sw.bb.382:                                        ; preds = %if.then.350
  %243 = load i8*, i8** %p, align 8
  %arrayidx383 = getelementptr i8, i8* %243, i64 1
  %244 = load i8, i8* %arrayidx383, align 1
  %conv384 = zext i8 %244 to i32
  %shl385 = shl i32 %conv384, 8
  %245 = load i8*, i8** %p, align 8
  %arrayidx386 = getelementptr i8, i8* %245, i64 0
  %246 = load i8, i8* %arrayidx386, align 1
  %conv387 = zext i8 %246 to i32
  %or388 = or i32 %shl385, %conv387
  store i32 %or388, i32* %ch259, align 4
  br label %sw.epilog.426

sw.bb.389:                                        ; preds = %if.then.350
  %247 = load i8*, i8** %p, align 8
  %arrayidx390 = getelementptr i8, i8* %247, i64 0
  %248 = load i8, i8* %arrayidx390, align 1
  %conv391 = zext i8 %248 to i32
  %shl392 = shl i32 %conv391, 8
  %249 = load i8*, i8** %p, align 8
  %arrayidx393 = getelementptr i8, i8* %249, i64 1
  %250 = load i8, i8* %arrayidx393, align 1
  %conv394 = zext i8 %250 to i32
  %or395 = or i32 %shl392, %conv394
  store i32 %or395, i32* %ch259, align 4
  br label %sw.epilog.426

sw.bb.396:                                        ; preds = %if.then.350
  %251 = load i8*, i8** %p, align 8
  %arrayidx397 = getelementptr i8, i8* %251, i64 3
  %252 = load i8, i8* %arrayidx397, align 1
  %conv398 = zext i8 %252 to i32
  %shl399 = shl i32 %conv398, 24
  %253 = load i8*, i8** %p, align 8
  %arrayidx400 = getelementptr i8, i8* %253, i64 2
  %254 = load i8, i8* %arrayidx400, align 1
  %conv401 = zext i8 %254 to i32
  %shl402 = shl i32 %conv401, 16
  %or403 = or i32 %shl399, %shl402
  %255 = load i8*, i8** %p, align 8
  %arrayidx404 = getelementptr i8, i8* %255, i64 1
  %256 = load i8, i8* %arrayidx404, align 1
  %conv405 = zext i8 %256 to i32
  %shl406 = shl i32 %conv405, 8
  %or407 = or i32 %or403, %shl406
  %257 = load i8*, i8** %p, align 8
  %arrayidx408 = getelementptr i8, i8* %257, i64 0
  %258 = load i8, i8* %arrayidx408, align 1
  %conv409 = zext i8 %258 to i32
  %or410 = or i32 %or407, %conv409
  store i32 %or410, i32* %ch259, align 4
  br label %sw.epilog.426

sw.bb.411:                                        ; preds = %if.then.350
  %259 = load i8*, i8** %p, align 8
  %arrayidx412 = getelementptr i8, i8* %259, i64 0
  %260 = load i8, i8* %arrayidx412, align 1
  %conv413 = zext i8 %260 to i32
  %shl414 = shl i32 %conv413, 24
  %261 = load i8*, i8** %p, align 8
  %arrayidx415 = getelementptr i8, i8* %261, i64 1
  %262 = load i8, i8* %arrayidx415, align 1
  %conv416 = zext i8 %262 to i32
  %shl417 = shl i32 %conv416, 16
  %or418 = or i32 %shl414, %shl417
  %263 = load i8*, i8** %p, align 8
  %arrayidx419 = getelementptr i8, i8* %263, i64 2
  %264 = load i8, i8* %arrayidx419, align 1
  %conv420 = zext i8 %264 to i32
  %shl421 = shl i32 %conv420, 8
  %or422 = or i32 %or418, %shl421
  %265 = load i8*, i8** %p, align 8
  %arrayidx423 = getelementptr i8, i8* %265, i64 3
  %266 = load i8, i8* %arrayidx423, align 1
  %conv424 = zext i8 %266 to i32
  %or425 = or i32 %or422, %conv424
  store i32 %or425, i32* %ch259, align 4
  br label %sw.epilog.426

sw.epilog.426:                                    ; preds = %if.then.350, %sw.bb.411, %sw.bb.396, %sw.bb.389, %sw.bb.382, %if.end.381
  br label %if.end.427

if.end.427:                                       ; preds = %sw.epilog.426, %do.end.344
  br label %do.body.428

do.body.428:                                      ; preds = %if.end.427
  %267 = load %struct._object*, %struct._object** %object, align 8
  store %struct._object* %267, %struct._object** %_py_decref_tmp429, align 8
  %268 = load %struct._object*, %struct._object** %_py_decref_tmp429, align 8
  %ob_refcnt430 = getelementptr inbounds %struct._object, %struct._object* %268, i32 0, i32 0
  %269 = load i64, i64* %ob_refcnt430, align 8
  %dec431 = add i64 %269, -1
  store i64 %dec431, i64* %ob_refcnt430, align 8
  %cmp432 = icmp ne i64 %dec431, 0
  br i1 %cmp432, label %if.then.434, label %if.else.435

if.then.434:                                      ; preds = %do.body.428
  br label %if.end.438

if.else.435:                                      ; preds = %do.body.428
  %270 = load %struct._object*, %struct._object** %_py_decref_tmp429, align 8
  %ob_type436 = getelementptr inbounds %struct._object, %struct._object* %270, i32 0, i32 1
  %271 = load %struct._typeobject*, %struct._typeobject** %ob_type436, align 8
  %tp_dealloc437 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %271, i32 0, i32 4
  %272 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc437, align 8
  %273 = load %struct._object*, %struct._object** %_py_decref_tmp429, align 8
  call void %272(%struct._object* %273)
  br label %if.end.438

if.end.438:                                       ; preds = %if.else.435, %if.then.434
  br label %do.end.439

do.end.439:                                       ; preds = %if.end.438
  %274 = load i32, i32* %ch259, align 4
  %cmp440 = icmp ule i32 55296, %274
  br i1 %cmp440, label %land.lhs.true.442, label %if.then.445

land.lhs.true.442:                                ; preds = %do.end.439
  %275 = load i32, i32* %ch259, align 4
  %cmp443 = icmp ule i32 %275, 57343
  br i1 %cmp443, label %if.end.447, label %if.then.445

if.then.445:                                      ; preds = %land.lhs.true.442, %do.end.439
  %276 = load %struct._object*, %struct._object** %exc.addr, align 8
  %ob_type446 = getelementptr inbounds %struct._object, %struct._object* %276, i32 0, i32 1
  %277 = load %struct._typeobject*, %struct._typeobject** %ob_type446, align 8
  %278 = bitcast %struct._typeobject* %277 to %struct._object*
  %279 = load %struct._object*, %struct._object** %exc.addr, align 8
  call void @PyErr_SetObject(%struct._object* %278, %struct._object* %279)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.447:                                       ; preds = %land.lhs.true.442
  %280 = load i32, i32* %ch259, align 4
  %call448 = call %struct._object* @PyUnicode_FromOrdinal(i32 %280)
  store %struct._object* %call448, %struct._object** %res, align 8
  %281 = load %struct._object*, %struct._object** %res, align 8
  %cmp449 = icmp eq %struct._object* %281, null
  br i1 %cmp449, label %if.then.451, label %if.end.452

if.then.451:                                      ; preds = %if.end.447
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.452:                                       ; preds = %if.end.447
  %282 = load %struct._object*, %struct._object** %res, align 8
  %283 = load i64, i64* %start, align 8
  %284 = load i32, i32* %bytelength, align 4
  %conv453 = sext i32 %284 to i64
  %add454 = add i64 %283, %conv453
  %call455 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), %struct._object* %282, i64 %add454)
  store %struct._object* %call455, %struct._object** %retval
  br label %return

if.else.456:                                      ; preds = %if.else.255
  %285 = load %struct._object*, %struct._object** %exc.addr, align 8
  call void @wrong_exception_type(%struct._object* %285)
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.456, %if.end.452, %if.then.451, %if.then.445, %do.end.330, %do.end.302, %do.end.286, %if.then.270, %if.then.266, %if.then.262, %do.end.254, %do.end.183, %do.end.70, %do.end.42, %do.end, %if.then.10, %if.then.6, %if.then.3
  %286 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %286
}

declare %struct._object* @PyUnicodeEncodeError_GetEncoding(%struct._object*) #2

declare i8* @PyUnicode_AsUTF8(%struct._object*) #2

; Function Attrs: nounwind uwtable
define internal i32 @get_standard_encoding(i8* %encoding, i32* %bytelength) #0 {
entry:
  %retval = alloca i32, align 4
  %encoding.addr = alloca i8*, align 8
  %bytelength.addr = alloca i32*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8
  store i32* %bytelength, i32** %bytelength.addr, align 8
  %0 = load i8*, i8** %encoding.addr, align 8
  %arrayidx = getelementptr i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %and = and i32 %conv, 255
  %conv1 = trunc i32 %and to i8
  %idxprom = zext i8 %conv1 to i64
  %arrayidx2 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv3, 117
  br i1 %cmp, label %land.lhs.true, label %if.end.161

land.lhs.true:                                    ; preds = %entry
  %3 = load i8*, i8** %encoding.addr, align 8
  %arrayidx5 = getelementptr i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %4 to i32
  %and7 = and i32 %conv6, 255
  %conv8 = trunc i32 %and7 to i8
  %idxprom9 = zext i8 %conv8 to i64
  %arrayidx10 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom9
  %5 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %5 to i32
  %cmp12 = icmp eq i32 %conv11, 116
  br i1 %cmp12, label %land.lhs.true.14, label %if.end.161

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %6 = load i8*, i8** %encoding.addr, align 8
  %arrayidx15 = getelementptr i8, i8* %6, i64 2
  %7 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %7 to i32
  %and17 = and i32 %conv16, 255
  %conv18 = trunc i32 %and17 to i8
  %idxprom19 = zext i8 %conv18 to i64
  %arrayidx20 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom19
  %8 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %8 to i32
  %cmp22 = icmp eq i32 %conv21, 102
  br i1 %cmp22, label %if.then, label %if.end.161

if.then:                                          ; preds = %land.lhs.true.14
  %9 = load i8*, i8** %encoding.addr, align 8
  %add.ptr = getelementptr i8, i8* %9, i64 3
  store i8* %add.ptr, i8** %encoding.addr, align 8
  %10 = load i8*, i8** %encoding.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv24 = sext i8 %11 to i32
  %cmp25 = icmp eq i32 %conv24, 45
  br i1 %cmp25, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %12 = load i8*, i8** %encoding.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv27 = sext i8 %13 to i32
  %cmp28 = icmp eq i32 %conv27, 95
  br i1 %cmp28, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %lor.lhs.false, %if.then
  %14 = load i8*, i8** %encoding.addr, align 8
  %incdec.ptr = getelementptr i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %encoding.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.30, %lor.lhs.false
  %15 = load i8*, i8** %encoding.addr, align 8
  %arrayidx31 = getelementptr i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx31, align 1
  %conv32 = sext i8 %16 to i32
  %cmp33 = icmp eq i32 %conv32, 49
  br i1 %cmp33, label %land.lhs.true.35, label %if.else

land.lhs.true.35:                                 ; preds = %if.end
  %17 = load i8*, i8** %encoding.addr, align 8
  %arrayidx36 = getelementptr i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx36, align 1
  %conv37 = sext i8 %18 to i32
  %cmp38 = icmp eq i32 %conv37, 54
  br i1 %cmp38, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %land.lhs.true.35
  %19 = load i8*, i8** %encoding.addr, align 8
  %add.ptr41 = getelementptr i8, i8* %19, i64 2
  store i8* %add.ptr41, i8** %encoding.addr, align 8
  %20 = load i32*, i32** %bytelength.addr, align 8
  store i32 2, i32* %20, align 4
  %21 = load i8*, i8** %encoding.addr, align 8
  %22 = load i8, i8* %21, align 1
  %conv42 = sext i8 %22 to i32
  %cmp43 = icmp eq i32 %conv42, 0
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.40
  store i32 2, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.then.40
  %23 = load i8*, i8** %encoding.addr, align 8
  %24 = load i8, i8* %23, align 1
  %conv47 = sext i8 %24 to i32
  %cmp48 = icmp eq i32 %conv47, 45
  br i1 %cmp48, label %if.then.54, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %if.end.46
  %25 = load i8*, i8** %encoding.addr, align 8
  %26 = load i8, i8* %25, align 1
  %conv51 = sext i8 %26 to i32
  %cmp52 = icmp eq i32 %conv51, 95
  br i1 %cmp52, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %lor.lhs.false.50, %if.end.46
  %27 = load i8*, i8** %encoding.addr, align 8
  %incdec.ptr55 = getelementptr i8, i8* %27, i32 1
  store i8* %incdec.ptr55, i8** %encoding.addr, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %lor.lhs.false.50
  %28 = load i8*, i8** %encoding.addr, align 8
  %arrayidx57 = getelementptr i8, i8* %28, i64 1
  %29 = load i8, i8* %arrayidx57, align 1
  %conv58 = sext i8 %29 to i32
  %and59 = and i32 %conv58, 255
  %conv60 = trunc i32 %and59 to i8
  %idxprom61 = zext i8 %conv60 to i64
  %arrayidx62 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom61
  %30 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %30 to i32
  %cmp64 = icmp eq i32 %conv63, 101
  br i1 %cmp64, label %land.lhs.true.66, label %if.end.94

land.lhs.true.66:                                 ; preds = %if.end.56
  %31 = load i8*, i8** %encoding.addr, align 8
  %arrayidx67 = getelementptr i8, i8* %31, i64 2
  %32 = load i8, i8* %arrayidx67, align 1
  %conv68 = sext i8 %32 to i32
  %cmp69 = icmp eq i32 %conv68, 0
  br i1 %cmp69, label %if.then.71, label %if.end.94

if.then.71:                                       ; preds = %land.lhs.true.66
  %33 = load i8*, i8** %encoding.addr, align 8
  %arrayidx72 = getelementptr i8, i8* %33, i64 0
  %34 = load i8, i8* %arrayidx72, align 1
  %conv73 = sext i8 %34 to i32
  %and74 = and i32 %conv73, 255
  %conv75 = trunc i32 %and74 to i8
  %idxprom76 = zext i8 %conv75 to i64
  %arrayidx77 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom76
  %35 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %35 to i32
  %cmp79 = icmp eq i32 %conv78, 98
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.then.71
  store i32 1, i32* %retval
  br label %return

if.end.82:                                        ; preds = %if.then.71
  %36 = load i8*, i8** %encoding.addr, align 8
  %arrayidx83 = getelementptr i8, i8* %36, i64 0
  %37 = load i8, i8* %arrayidx83, align 1
  %conv84 = sext i8 %37 to i32
  %and85 = and i32 %conv84, 255
  %conv86 = trunc i32 %and85 to i8
  %idxprom87 = zext i8 %conv86 to i64
  %arrayidx88 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom87
  %38 = load i8, i8* %arrayidx88, align 1
  %conv89 = zext i8 %38 to i32
  %cmp90 = icmp eq i32 %conv89, 108
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.end.82
  store i32 2, i32* %retval
  br label %return

if.end.93:                                        ; preds = %if.end.82
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %land.lhs.true.66, %if.end.56
  br label %if.end.160

if.else:                                          ; preds = %land.lhs.true.35, %if.end
  %39 = load i8*, i8** %encoding.addr, align 8
  %arrayidx95 = getelementptr i8, i8* %39, i64 0
  %40 = load i8, i8* %arrayidx95, align 1
  %conv96 = sext i8 %40 to i32
  %cmp97 = icmp eq i32 %conv96, 51
  br i1 %cmp97, label %land.lhs.true.99, label %if.end.159

land.lhs.true.99:                                 ; preds = %if.else
  %41 = load i8*, i8** %encoding.addr, align 8
  %arrayidx100 = getelementptr i8, i8* %41, i64 1
  %42 = load i8, i8* %arrayidx100, align 1
  %conv101 = sext i8 %42 to i32
  %cmp102 = icmp eq i32 %conv101, 50
  br i1 %cmp102, label %if.then.104, label %if.end.159

if.then.104:                                      ; preds = %land.lhs.true.99
  %43 = load i8*, i8** %encoding.addr, align 8
  %add.ptr105 = getelementptr i8, i8* %43, i64 2
  store i8* %add.ptr105, i8** %encoding.addr, align 8
  %44 = load i32*, i32** %bytelength.addr, align 8
  store i32 4, i32* %44, align 4
  %45 = load i8*, i8** %encoding.addr, align 8
  %46 = load i8, i8* %45, align 1
  %conv106 = sext i8 %46 to i32
  %cmp107 = icmp eq i32 %conv106, 0
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %if.then.104
  store i32 4, i32* %retval
  br label %return

if.end.110:                                       ; preds = %if.then.104
  %47 = load i8*, i8** %encoding.addr, align 8
  %48 = load i8, i8* %47, align 1
  %conv111 = sext i8 %48 to i32
  %cmp112 = icmp eq i32 %conv111, 45
  br i1 %cmp112, label %if.then.118, label %lor.lhs.false.114

lor.lhs.false.114:                                ; preds = %if.end.110
  %49 = load i8*, i8** %encoding.addr, align 8
  %50 = load i8, i8* %49, align 1
  %conv115 = sext i8 %50 to i32
  %cmp116 = icmp eq i32 %conv115, 95
  br i1 %cmp116, label %if.then.118, label %if.end.120

if.then.118:                                      ; preds = %lor.lhs.false.114, %if.end.110
  %51 = load i8*, i8** %encoding.addr, align 8
  %incdec.ptr119 = getelementptr i8, i8* %51, i32 1
  store i8* %incdec.ptr119, i8** %encoding.addr, align 8
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.118, %lor.lhs.false.114
  %52 = load i8*, i8** %encoding.addr, align 8
  %arrayidx121 = getelementptr i8, i8* %52, i64 1
  %53 = load i8, i8* %arrayidx121, align 1
  %conv122 = sext i8 %53 to i32
  %and123 = and i32 %conv122, 255
  %conv124 = trunc i32 %and123 to i8
  %idxprom125 = zext i8 %conv124 to i64
  %arrayidx126 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom125
  %54 = load i8, i8* %arrayidx126, align 1
  %conv127 = zext i8 %54 to i32
  %cmp128 = icmp eq i32 %conv127, 101
  br i1 %cmp128, label %land.lhs.true.130, label %if.end.158

land.lhs.true.130:                                ; preds = %if.end.120
  %55 = load i8*, i8** %encoding.addr, align 8
  %arrayidx131 = getelementptr i8, i8* %55, i64 2
  %56 = load i8, i8* %arrayidx131, align 1
  %conv132 = sext i8 %56 to i32
  %cmp133 = icmp eq i32 %conv132, 0
  br i1 %cmp133, label %if.then.135, label %if.end.158

if.then.135:                                      ; preds = %land.lhs.true.130
  %57 = load i8*, i8** %encoding.addr, align 8
  %arrayidx136 = getelementptr i8, i8* %57, i64 0
  %58 = load i8, i8* %arrayidx136, align 1
  %conv137 = sext i8 %58 to i32
  %and138 = and i32 %conv137, 255
  %conv139 = trunc i32 %and138 to i8
  %idxprom140 = zext i8 %conv139 to i64
  %arrayidx141 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom140
  %59 = load i8, i8* %arrayidx141, align 1
  %conv142 = zext i8 %59 to i32
  %cmp143 = icmp eq i32 %conv142, 98
  br i1 %cmp143, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %if.then.135
  store i32 3, i32* %retval
  br label %return

if.end.146:                                       ; preds = %if.then.135
  %60 = load i8*, i8** %encoding.addr, align 8
  %arrayidx147 = getelementptr i8, i8* %60, i64 0
  %61 = load i8, i8* %arrayidx147, align 1
  %conv148 = sext i8 %61 to i32
  %and149 = and i32 %conv148, 255
  %conv150 = trunc i32 %and149 to i8
  %idxprom151 = zext i8 %conv150 to i64
  %arrayidx152 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom151
  %62 = load i8, i8* %arrayidx152, align 1
  %conv153 = zext i8 %62 to i32
  %cmp154 = icmp eq i32 %conv153, 108
  br i1 %cmp154, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %if.end.146
  store i32 4, i32* %retval
  br label %return

if.end.157:                                       ; preds = %if.end.146
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %land.lhs.true.130, %if.end.120
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %land.lhs.true.99, %if.else
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %if.end.94
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %land.lhs.true.14, %land.lhs.true, %entry
  %63 = load i32*, i32** %bytelength.addr, align 8
  store i32 3, i32* %63, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.161, %if.then.156, %if.then.145, %if.then.109, %if.then.92, %if.then.81, %if.then.45
  %64 = load i32, i32* %retval
  ret i32 %64
}

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #2

declare i8* @PyBytes_AsString(%struct._object*) #2

declare i32 @PyUnicodeDecodeError_GetStart(%struct._object*, i64*) #2

declare %struct._object* @PyUnicodeDecodeError_GetObject(%struct._object*) #2

declare %struct._object* @PyUnicodeDecodeError_GetEncoding(%struct._object*) #2

declare %struct._object* @PyUnicode_FromOrdinal(i32) #2

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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %ch = alloca i32, align 4
  %_py_decref_tmp104 = alloca %struct._object*, align 8
  %_py_decref_tmp116 = alloca %struct._object*, align 8
  %_py_decref_tmp132 = alloca %struct._object*, align 8
  %_py_decref_tmp144 = alloca %struct._object*, align 8
  %str = alloca %struct._object*, align 8
  %p = alloca i8*, align 8
  %ch159 = alloca [4 x i16], align 2
  %consumed = alloca i32, align 4
  %_py_decref_tmp176 = alloca %struct._object*, align 8
  %_py_decref_tmp210 = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8
  %1 = load %struct._object*, %struct._object** @PyExc_UnicodeEncodeError, align 8
  %call = call i32 @PyObject_IsInstance(%struct._object* %0, %struct._object* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else.155

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call1 = call i32 @PyUnicodeEncodeError_GetStart(%struct._object* %2, i64* %start)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call4 = call i32 @PyUnicodeEncodeError_GetEnd(%struct._object* %3, i64* %end)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call8 = call %struct._object* @PyUnicodeEncodeError_GetObject(%struct._object* %4)
  store %struct._object* %call8, %struct._object** %object, align 8
  %tobool9 = icmp ne %struct._object* %call8, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  %5 = load i64, i64* %end, align 8
  %6 = load i64, i64* %start, align 8
  %sub = sub i64 %5, %6
  %call12 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %sub)
  store %struct._object* %call12, %struct._object** %res, align 8
  %7 = load %struct._object*, %struct._object** %res, align 8
  %tobool13 = icmp ne %struct._object* %7, null
  br i1 %tobool13, label %if.end.17, label %if.then.14

if.then.14:                                       ; preds = %if.end.11
  br label %do.body

do.body:                                          ; preds = %if.then.14
  %8 = load %struct._object*, %struct._object** %object, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.body
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.16
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.11
  %15 = load %struct._object*, %struct._object** %res, align 8
  %call18 = call i8* @PyBytes_AsString(%struct._object* %15)
  store i8* %call18, i8** %outp, align 8
  %16 = load i64, i64* %start, align 8
  store i64 %16, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.17
  %17 = load i64, i64* %i, align 8
  %18 = load i64, i64* %end, align 8
  %cmp19 = icmp slt i64 %17, %18
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct._object*, %struct._object** %object, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %20, i32 0, i32 3
  %21 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %21, align 4
  %bf.lshr = lshr i32 %bf.load, 2
  %bf.clear = and i32 %bf.lshr, 7
  %cmp20 = icmp eq i32 %bf.clear, 1
  br i1 %cmp20, label %cond.true, label %cond.false.37

cond.true:                                        ; preds = %for.body
  %22 = load i64, i64* %i, align 8
  %23 = load %struct._object*, %struct._object** %object, align 8
  %24 = bitcast %struct._object* %23 to %struct.PyASCIIObject*
  %state21 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %24, i32 0, i32 3
  %25 = bitcast %struct.anon* %state21 to i32*
  %bf.load22 = load i32, i32* %25, align 4
  %bf.lshr23 = lshr i32 %bf.load22, 5
  %bf.clear24 = and i32 %bf.lshr23, 1
  %tobool25 = icmp ne i32 %bf.clear24, 0
  br i1 %tobool25, label %cond.true.26, label %cond.false.34

cond.true.26:                                     ; preds = %cond.true
  %26 = load %struct._object*, %struct._object** %object, align 8
  %27 = bitcast %struct._object* %26 to %struct.PyASCIIObject*
  %state27 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %27, i32 0, i32 3
  %28 = bitcast %struct.anon* %state27 to i32*
  %bf.load28 = load i32, i32* %28, align 4
  %bf.lshr29 = lshr i32 %bf.load28, 6
  %bf.clear30 = and i32 %bf.lshr29, 1
  %tobool31 = icmp ne i32 %bf.clear30, 0
  br i1 %tobool31, label %cond.true.32, label %cond.false

cond.true.32:                                     ; preds = %cond.true.26
  %29 = load %struct._object*, %struct._object** %object, align 8
  %30 = bitcast %struct._object* %29 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %30, i64 1
  %31 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end

cond.false:                                       ; preds = %cond.true.26
  %32 = load %struct._object*, %struct._object** %object, align 8
  %33 = bitcast %struct._object* %32 to %struct.PyCompactUnicodeObject*
  %add.ptr33 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %33, i64 1
  %34 = bitcast %struct.PyCompactUnicodeObject* %add.ptr33 to i8*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.32
  %cond = phi i8* [ %31, %cond.true.32 ], [ %34, %cond.false ]
  br label %cond.end.35

cond.false.34:                                    ; preds = %cond.true
  %35 = load %struct._object*, %struct._object** %object, align 8
  %36 = bitcast %struct._object* %35 to %struct.PyUnicodeObject*
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %36, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %37 = load i8*, i8** %any, align 8
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.34, %cond.end
  %cond36 = phi i8* [ %cond, %cond.end ], [ %37, %cond.false.34 ]
  %arrayidx = getelementptr i8, i8* %cond36, i64 %22
  %38 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %38 to i32
  br label %cond.end.95

cond.false.37:                                    ; preds = %for.body
  %39 = load %struct._object*, %struct._object** %object, align 8
  %40 = bitcast %struct._object* %39 to %struct.PyASCIIObject*
  %state38 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %40, i32 0, i32 3
  %41 = bitcast %struct.anon* %state38 to i32*
  %bf.load39 = load i32, i32* %41, align 4
  %bf.lshr40 = lshr i32 %bf.load39, 2
  %bf.clear41 = and i32 %bf.lshr40, 7
  %cmp42 = icmp eq i32 %bf.clear41, 2
  br i1 %cmp42, label %cond.true.44, label %cond.false.69

cond.true.44:                                     ; preds = %cond.false.37
  %42 = load i64, i64* %i, align 8
  %43 = load %struct._object*, %struct._object** %object, align 8
  %44 = bitcast %struct._object* %43 to %struct.PyASCIIObject*
  %state45 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %44, i32 0, i32 3
  %45 = bitcast %struct.anon* %state45 to i32*
  %bf.load46 = load i32, i32* %45, align 4
  %bf.lshr47 = lshr i32 %bf.load46, 5
  %bf.clear48 = and i32 %bf.lshr47, 1
  %tobool49 = icmp ne i32 %bf.clear48, 0
  br i1 %tobool49, label %cond.true.50, label %cond.false.62

cond.true.50:                                     ; preds = %cond.true.44
  %46 = load %struct._object*, %struct._object** %object, align 8
  %47 = bitcast %struct._object* %46 to %struct.PyASCIIObject*
  %state51 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %47, i32 0, i32 3
  %48 = bitcast %struct.anon* %state51 to i32*
  %bf.load52 = load i32, i32* %48, align 4
  %bf.lshr53 = lshr i32 %bf.load52, 6
  %bf.clear54 = and i32 %bf.lshr53, 1
  %tobool55 = icmp ne i32 %bf.clear54, 0
  br i1 %tobool55, label %cond.true.56, label %cond.false.58

cond.true.56:                                     ; preds = %cond.true.50
  %49 = load %struct._object*, %struct._object** %object, align 8
  %50 = bitcast %struct._object* %49 to %struct.PyASCIIObject*
  %add.ptr57 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %50, i64 1
  %51 = bitcast %struct.PyASCIIObject* %add.ptr57 to i8*
  br label %cond.end.60

cond.false.58:                                    ; preds = %cond.true.50
  %52 = load %struct._object*, %struct._object** %object, align 8
  %53 = bitcast %struct._object* %52 to %struct.PyCompactUnicodeObject*
  %add.ptr59 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %53, i64 1
  %54 = bitcast %struct.PyCompactUnicodeObject* %add.ptr59 to i8*
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.58, %cond.true.56
  %cond61 = phi i8* [ %51, %cond.true.56 ], [ %54, %cond.false.58 ]
  br label %cond.end.65

cond.false.62:                                    ; preds = %cond.true.44
  %55 = load %struct._object*, %struct._object** %object, align 8
  %56 = bitcast %struct._object* %55 to %struct.PyUnicodeObject*
  %data63 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %56, i32 0, i32 1
  %any64 = bitcast %union.anon* %data63 to i8**
  %57 = load i8*, i8** %any64, align 8
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.62, %cond.end.60
  %cond66 = phi i8* [ %cond61, %cond.end.60 ], [ %57, %cond.false.62 ]
  %58 = bitcast i8* %cond66 to i16*
  %arrayidx67 = getelementptr i16, i16* %58, i64 %42
  %59 = load i16, i16* %arrayidx67, align 2
  %conv68 = zext i16 %59 to i32
  br label %cond.end.93

cond.false.69:                                    ; preds = %cond.false.37
  %60 = load i64, i64* %i, align 8
  %61 = load %struct._object*, %struct._object** %object, align 8
  %62 = bitcast %struct._object* %61 to %struct.PyASCIIObject*
  %state70 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %62, i32 0, i32 3
  %63 = bitcast %struct.anon* %state70 to i32*
  %bf.load71 = load i32, i32* %63, align 4
  %bf.lshr72 = lshr i32 %bf.load71, 5
  %bf.clear73 = and i32 %bf.lshr72, 1
  %tobool74 = icmp ne i32 %bf.clear73, 0
  br i1 %tobool74, label %cond.true.75, label %cond.false.87

cond.true.75:                                     ; preds = %cond.false.69
  %64 = load %struct._object*, %struct._object** %object, align 8
  %65 = bitcast %struct._object* %64 to %struct.PyASCIIObject*
  %state76 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %65, i32 0, i32 3
  %66 = bitcast %struct.anon* %state76 to i32*
  %bf.load77 = load i32, i32* %66, align 4
  %bf.lshr78 = lshr i32 %bf.load77, 6
  %bf.clear79 = and i32 %bf.lshr78, 1
  %tobool80 = icmp ne i32 %bf.clear79, 0
  br i1 %tobool80, label %cond.true.81, label %cond.false.83

cond.true.81:                                     ; preds = %cond.true.75
  %67 = load %struct._object*, %struct._object** %object, align 8
  %68 = bitcast %struct._object* %67 to %struct.PyASCIIObject*
  %add.ptr82 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %68, i64 1
  %69 = bitcast %struct.PyASCIIObject* %add.ptr82 to i8*
  br label %cond.end.85

cond.false.83:                                    ; preds = %cond.true.75
  %70 = load %struct._object*, %struct._object** %object, align 8
  %71 = bitcast %struct._object* %70 to %struct.PyCompactUnicodeObject*
  %add.ptr84 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %71, i64 1
  %72 = bitcast %struct.PyCompactUnicodeObject* %add.ptr84 to i8*
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.83, %cond.true.81
  %cond86 = phi i8* [ %69, %cond.true.81 ], [ %72, %cond.false.83 ]
  br label %cond.end.90

cond.false.87:                                    ; preds = %cond.false.69
  %73 = load %struct._object*, %struct._object** %object, align 8
  %74 = bitcast %struct._object* %73 to %struct.PyUnicodeObject*
  %data88 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %74, i32 0, i32 1
  %any89 = bitcast %union.anon* %data88 to i8**
  %75 = load i8*, i8** %any89, align 8
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.87, %cond.end.85
  %cond91 = phi i8* [ %cond86, %cond.end.85 ], [ %75, %cond.false.87 ]
  %76 = bitcast i8* %cond91 to i32*
  %arrayidx92 = getelementptr i32, i32* %76, i64 %60
  %77 = load i32, i32* %arrayidx92, align 4
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.end.90, %cond.end.65
  %cond94 = phi i32 [ %conv68, %cond.end.65 ], [ %77, %cond.end.90 ]
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.end.93, %cond.end.35
  %cond96 = phi i32 [ %conv, %cond.end.35 ], [ %cond94, %cond.end.93 ]
  store i32 %cond96, i32* %ch, align 4
  %78 = load i32, i32* %ch, align 4
  %cmp97 = icmp ult i32 %78, 56448
  br i1 %cmp97, label %if.then.101, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.95
  %79 = load i32, i32* %ch, align 4
  %cmp99 = icmp ugt i32 %79, 56575
  br i1 %cmp99, label %if.then.101, label %if.end.127

if.then.101:                                      ; preds = %lor.lhs.false, %cond.end.95
  %80 = load %struct._object*, %struct._object** %exc.addr, align 8
  %ob_type102 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 1
  %81 = load %struct._typeobject*, %struct._typeobject** %ob_type102, align 8
  %82 = bitcast %struct._typeobject* %81 to %struct._object*
  %83 = load %struct._object*, %struct._object** %exc.addr, align 8
  call void @PyErr_SetObject(%struct._object* %82, %struct._object* %83)
  br label %do.body.103

do.body.103:                                      ; preds = %if.then.101
  %84 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %84, %struct._object** %_py_decref_tmp104, align 8
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8
  %ob_refcnt105 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 0
  %86 = load i64, i64* %ob_refcnt105, align 8
  %dec106 = add i64 %86, -1
  store i64 %dec106, i64* %ob_refcnt105, align 8
  %cmp107 = icmp ne i64 %dec106, 0
  br i1 %cmp107, label %if.then.109, label %if.else.110

if.then.109:                                      ; preds = %do.body.103
  br label %if.end.113

if.else.110:                                      ; preds = %do.body.103
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8
  %ob_type111 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 1
  %88 = load %struct._typeobject*, %struct._typeobject** %ob_type111, align 8
  %tp_dealloc112 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %88, i32 0, i32 4
  %89 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc112, align 8
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8
  call void %89(%struct._object* %90)
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.110, %if.then.109
  br label %do.end.114

do.end.114:                                       ; preds = %if.end.113
  br label %do.body.115

do.body.115:                                      ; preds = %do.end.114
  %91 = load %struct._object*, %struct._object** %object, align 8
  store %struct._object* %91, %struct._object** %_py_decref_tmp116, align 8
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp116, align 8
  %ob_refcnt117 = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 0
  %93 = load i64, i64* %ob_refcnt117, align 8
  %dec118 = add i64 %93, -1
  store i64 %dec118, i64* %ob_refcnt117, align 8
  %cmp119 = icmp ne i64 %dec118, 0
  br i1 %cmp119, label %if.then.121, label %if.else.122

if.then.121:                                      ; preds = %do.body.115
  br label %if.end.125

if.else.122:                                      ; preds = %do.body.115
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp116, align 8
  %ob_type123 = getelementptr inbounds %struct._object, %struct._object* %94, i32 0, i32 1
  %95 = load %struct._typeobject*, %struct._typeobject** %ob_type123, align 8
  %tp_dealloc124 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %95, i32 0, i32 4
  %96 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc124, align 8
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp116, align 8
  call void %96(%struct._object* %97)
  br label %if.end.125

if.end.125:                                       ; preds = %if.else.122, %if.then.121
  br label %do.end.126

do.end.126:                                       ; preds = %if.end.125
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.127:                                       ; preds = %lor.lhs.false
  %98 = load i32, i32* %ch, align 4
  %sub128 = sub i32 %98, 56320
  %conv129 = trunc i32 %sub128 to i8
  %99 = load i8*, i8** %outp, align 8
  %incdec.ptr = getelementptr i8, i8* %99, i32 1
  store i8* %incdec.ptr, i8** %outp, align 8
  store i8 %conv129, i8* %99, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.127
  %100 = load i64, i64* %i, align 8
  %inc = add i64 %100, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %101 = load %struct._object*, %struct._object** %res, align 8
  %102 = load i64, i64* %end, align 8
  %call130 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), %struct._object* %101, i64 %102)
  store %struct._object* %call130, %struct._object** %restuple, align 8
  br label %do.body.131

do.body.131:                                      ; preds = %for.end
  %103 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %103, %struct._object** %_py_decref_tmp132, align 8
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp132, align 8
  %ob_refcnt133 = getelementptr inbounds %struct._object, %struct._object* %104, i32 0, i32 0
  %105 = load i64, i64* %ob_refcnt133, align 8
  %dec134 = add i64 %105, -1
  store i64 %dec134, i64* %ob_refcnt133, align 8
  %cmp135 = icmp ne i64 %dec134, 0
  br i1 %cmp135, label %if.then.137, label %if.else.138

if.then.137:                                      ; preds = %do.body.131
  br label %if.end.141

if.else.138:                                      ; preds = %do.body.131
  %106 = load %struct._object*, %struct._object** %_py_decref_tmp132, align 8
  %ob_type139 = getelementptr inbounds %struct._object, %struct._object* %106, i32 0, i32 1
  %107 = load %struct._typeobject*, %struct._typeobject** %ob_type139, align 8
  %tp_dealloc140 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %107, i32 0, i32 4
  %108 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc140, align 8
  %109 = load %struct._object*, %struct._object** %_py_decref_tmp132, align 8
  call void %108(%struct._object* %109)
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.138, %if.then.137
  br label %do.end.142

do.end.142:                                       ; preds = %if.end.141
  br label %do.body.143

do.body.143:                                      ; preds = %do.end.142
  %110 = load %struct._object*, %struct._object** %object, align 8
  store %struct._object* %110, %struct._object** %_py_decref_tmp144, align 8
  %111 = load %struct._object*, %struct._object** %_py_decref_tmp144, align 8
  %ob_refcnt145 = getelementptr inbounds %struct._object, %struct._object* %111, i32 0, i32 0
  %112 = load i64, i64* %ob_refcnt145, align 8
  %dec146 = add i64 %112, -1
  store i64 %dec146, i64* %ob_refcnt145, align 8
  %cmp147 = icmp ne i64 %dec146, 0
  br i1 %cmp147, label %if.then.149, label %if.else.150

if.then.149:                                      ; preds = %do.body.143
  br label %if.end.153

if.else.150:                                      ; preds = %do.body.143
  %113 = load %struct._object*, %struct._object** %_py_decref_tmp144, align 8
  %ob_type151 = getelementptr inbounds %struct._object, %struct._object* %113, i32 0, i32 1
  %114 = load %struct._typeobject*, %struct._typeobject** %ob_type151, align 8
  %tp_dealloc152 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %114, i32 0, i32 4
  %115 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc152, align 8
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp144, align 8
  call void %115(%struct._object* %116)
  br label %if.end.153

if.end.153:                                       ; preds = %if.else.150, %if.then.149
  br label %do.end.154

do.end.154:                                       ; preds = %if.end.153
  %117 = load %struct._object*, %struct._object** %restuple, align 8
  store %struct._object* %117, %struct._object** %retval
  br label %return

if.else.155:                                      ; preds = %entry
  %118 = load %struct._object*, %struct._object** %exc.addr, align 8
  %119 = load %struct._object*, %struct._object** @PyExc_UnicodeDecodeError, align 8
  %call156 = call i32 @PyObject_IsInstance(%struct._object* %118, %struct._object* %119)
  %tobool157 = icmp ne i32 %call156, 0
  br i1 %tobool157, label %if.then.158, label %if.else.234

if.then.158:                                      ; preds = %if.else.155
  store i32 0, i32* %consumed, align 4
  %120 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call160 = call i32 @PyUnicodeDecodeError_GetStart(%struct._object* %120, i64* %start)
  %tobool161 = icmp ne i32 %call160, 0
  br i1 %tobool161, label %if.then.162, label %if.end.163

if.then.162:                                      ; preds = %if.then.158
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.163:                                       ; preds = %if.then.158
  %121 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call164 = call i32 @PyUnicodeDecodeError_GetEnd(%struct._object* %121, i64* %end)
  %tobool165 = icmp ne i32 %call164, 0
  br i1 %tobool165, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %if.end.163
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.167:                                       ; preds = %if.end.163
  %122 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call168 = call %struct._object* @PyUnicodeDecodeError_GetObject(%struct._object* %122)
  store %struct._object* %call168, %struct._object** %object, align 8
  %tobool169 = icmp ne %struct._object* %call168, null
  br i1 %tobool169, label %if.end.171, label %if.then.170

if.then.170:                                      ; preds = %if.end.167
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.171:                                       ; preds = %if.end.167
  %123 = load %struct._object*, %struct._object** %object, align 8
  %call172 = call i8* @PyBytes_AsString(%struct._object* %123)
  store i8* %call172, i8** %p, align 8
  %tobool173 = icmp ne i8* %call172, null
  br i1 %tobool173, label %if.end.187, label %if.then.174

if.then.174:                                      ; preds = %if.end.171
  br label %do.body.175

do.body.175:                                      ; preds = %if.then.174
  %124 = load %struct._object*, %struct._object** %object, align 8
  store %struct._object* %124, %struct._object** %_py_decref_tmp176, align 8
  %125 = load %struct._object*, %struct._object** %_py_decref_tmp176, align 8
  %ob_refcnt177 = getelementptr inbounds %struct._object, %struct._object* %125, i32 0, i32 0
  %126 = load i64, i64* %ob_refcnt177, align 8
  %dec178 = add i64 %126, -1
  store i64 %dec178, i64* %ob_refcnt177, align 8
  %cmp179 = icmp ne i64 %dec178, 0
  br i1 %cmp179, label %if.then.181, label %if.else.182

if.then.181:                                      ; preds = %do.body.175
  br label %if.end.185

if.else.182:                                      ; preds = %do.body.175
  %127 = load %struct._object*, %struct._object** %_py_decref_tmp176, align 8
  %ob_type183 = getelementptr inbounds %struct._object, %struct._object* %127, i32 0, i32 1
  %128 = load %struct._typeobject*, %struct._typeobject** %ob_type183, align 8
  %tp_dealloc184 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %128, i32 0, i32 4
  %129 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc184, align 8
  %130 = load %struct._object*, %struct._object** %_py_decref_tmp176, align 8
  call void %129(%struct._object* %130)
  br label %if.end.185

if.end.185:                                       ; preds = %if.else.182, %if.then.181
  br label %do.end.186

do.end.186:                                       ; preds = %if.end.185
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.187:                                       ; preds = %if.end.171
  br label %while.cond

while.cond:                                       ; preds = %if.end.200, %if.end.187
  %131 = load i32, i32* %consumed, align 4
  %cmp188 = icmp slt i32 %131, 4
  br i1 %cmp188, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %132 = load i32, i32* %consumed, align 4
  %conv190 = sext i32 %132 to i64
  %133 = load i64, i64* %end, align 8
  %134 = load i64, i64* %start, align 8
  %sub191 = sub i64 %133, %134
  %cmp192 = icmp slt i64 %conv190, %sub191
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %135 = phi i1 [ false, %while.cond ], [ %cmp192, %land.rhs ]
  br i1 %135, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %136 = load i64, i64* %start, align 8
  %137 = load i32, i32* %consumed, align 4
  %conv194 = sext i32 %137 to i64
  %add = add i64 %136, %conv194
  %138 = load i8*, i8** %p, align 8
  %arrayidx195 = getelementptr i8, i8* %138, i64 %add
  %139 = load i8, i8* %arrayidx195, align 1
  %conv196 = zext i8 %139 to i32
  %cmp197 = icmp slt i32 %conv196, 128
  br i1 %cmp197, label %if.then.199, label %if.end.200

if.then.199:                                      ; preds = %while.body
  br label %while.end

if.end.200:                                       ; preds = %while.body
  %140 = load i64, i64* %start, align 8
  %141 = load i32, i32* %consumed, align 4
  %conv201 = sext i32 %141 to i64
  %add202 = add i64 %140, %conv201
  %142 = load i8*, i8** %p, align 8
  %arrayidx203 = getelementptr i8, i8* %142, i64 %add202
  %143 = load i8, i8* %arrayidx203, align 1
  %conv204 = zext i8 %143 to i32
  %add205 = add i32 56320, %conv204
  %conv206 = trunc i32 %add205 to i16
  %144 = load i32, i32* %consumed, align 4
  %idxprom = sext i32 %144 to i64
  %arrayidx207 = getelementptr [4 x i16], [4 x i16]* %ch159, i32 0, i64 %idxprom
  store i16 %conv206, i16* %arrayidx207, align 2
  %145 = load i32, i32* %consumed, align 4
  %inc208 = add i32 %145, 1
  store i32 %inc208, i32* %consumed, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then.199, %land.end
  br label %do.body.209

do.body.209:                                      ; preds = %while.end
  %146 = load %struct._object*, %struct._object** %object, align 8
  store %struct._object* %146, %struct._object** %_py_decref_tmp210, align 8
  %147 = load %struct._object*, %struct._object** %_py_decref_tmp210, align 8
  %ob_refcnt211 = getelementptr inbounds %struct._object, %struct._object* %147, i32 0, i32 0
  %148 = load i64, i64* %ob_refcnt211, align 8
  %dec212 = add i64 %148, -1
  store i64 %dec212, i64* %ob_refcnt211, align 8
  %cmp213 = icmp ne i64 %dec212, 0
  br i1 %cmp213, label %if.then.215, label %if.else.216

if.then.215:                                      ; preds = %do.body.209
  br label %if.end.219

if.else.216:                                      ; preds = %do.body.209
  %149 = load %struct._object*, %struct._object** %_py_decref_tmp210, align 8
  %ob_type217 = getelementptr inbounds %struct._object, %struct._object* %149, i32 0, i32 1
  %150 = load %struct._typeobject*, %struct._typeobject** %ob_type217, align 8
  %tp_dealloc218 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %150, i32 0, i32 4
  %151 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc218, align 8
  %152 = load %struct._object*, %struct._object** %_py_decref_tmp210, align 8
  call void %151(%struct._object* %152)
  br label %if.end.219

if.end.219:                                       ; preds = %if.else.216, %if.then.215
  br label %do.end.220

do.end.220:                                       ; preds = %if.end.219
  %153 = load i32, i32* %consumed, align 4
  %tobool221 = icmp ne i32 %153, 0
  br i1 %tobool221, label %if.end.224, label %if.then.222

if.then.222:                                      ; preds = %do.end.220
  %154 = load %struct._object*, %struct._object** %exc.addr, align 8
  %ob_type223 = getelementptr inbounds %struct._object, %struct._object* %154, i32 0, i32 1
  %155 = load %struct._typeobject*, %struct._typeobject** %ob_type223, align 8
  %156 = bitcast %struct._typeobject* %155 to %struct._object*
  %157 = load %struct._object*, %struct._object** %exc.addr, align 8
  call void @PyErr_SetObject(%struct._object* %156, %struct._object* %157)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.224:                                       ; preds = %do.end.220
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %ch159, i32 0, i32 0
  %158 = bitcast i16* %arraydecay to i8*
  %159 = load i32, i32* %consumed, align 4
  %conv225 = sext i32 %159 to i64
  %call226 = call %struct._object* @PyUnicode_FromKindAndData(i32 2, i8* %158, i64 %conv225)
  store %struct._object* %call226, %struct._object** %str, align 8
  %160 = load %struct._object*, %struct._object** %str, align 8
  %cmp227 = icmp eq %struct._object* %160, null
  br i1 %cmp227, label %if.then.229, label %if.end.230

if.then.229:                                      ; preds = %if.end.224
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.230:                                       ; preds = %if.end.224
  %161 = load %struct._object*, %struct._object** %str, align 8
  %162 = load i64, i64* %start, align 8
  %163 = load i32, i32* %consumed, align 4
  %conv231 = sext i32 %163 to i64
  %add232 = add i64 %162, %conv231
  %call233 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), %struct._object* %161, i64 %add232)
  store %struct._object* %call233, %struct._object** %retval
  br label %return

if.else.234:                                      ; preds = %if.else.155
  %164 = load %struct._object*, %struct._object** %exc.addr, align 8
  call void @wrong_exception_type(%struct._object* %164)
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.234, %if.end.230, %if.then.229, %if.then.222, %do.end.186, %if.then.170, %if.then.166, %if.then.162, %do.end.154, %do.end.126, %do.end, %if.then.10, %if.then.6, %if.then.3
  %165 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %165
}

declare %struct._object* @PyUnicode_FromKindAndData(i32, i8*, i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 139711}
!2 = !{i32 139551}
