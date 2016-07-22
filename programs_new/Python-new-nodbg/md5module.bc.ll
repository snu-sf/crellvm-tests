; ModuleID = './md5module.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._object = type { i64, %struct._typeobject* }
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
%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct.MD5object = type { %struct._object, %struct.md5_state }
%struct.md5_state = type { i64, [4 x i32], i32, [64 x i8] }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }
%struct.PyCompactUnicodeObject = type { %struct.PyASCIIObject, i64, i8*, i64 }
%struct.PyUnicodeObject = type { %struct.PyCompactUnicodeObject, %union.anon }
%union.anon = type { i8* }

@PyType_Type = external global %struct._typeobject, align 8
@MD5type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 112, i64 0, void (%struct._object*)* @MD5_dealloc, i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([5 x %struct.PyMethodDef], [5 x %struct.PyMethodDef]* @MD5_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* getelementptr inbounds ([4 x %struct.PyGetSetDef], [4 x %struct.PyGetSetDef]* @MD5_getseters, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@_md5module = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* null, i64 -1, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @MD5_functions, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [8 x i8] c"MD5Type\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"_md5.md5\00", align 1
@MD5_methods = internal global [5 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.MD5object*, %struct._object*)* @MD5_copy to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @MD5_copy__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.MD5object*, %struct._object*)* @MD5_digest to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @MD5_digest__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.MD5object*, %struct._object*)* @MD5_hexdigest to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @MD5_hexdigest__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.MD5object*, %struct._object*)* @MD5_update to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @MD5_update__doc__, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@MD5_getseters = internal global [4 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* @MD5_get_block_size, i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* @MD5_get_name, i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* @md5_get_digest_size, i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@MD5_copy__doc__ = internal global [34 x i8] c"Return a copy of the hash object.\00", align 16
@.str.3 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@MD5_digest__doc__ = internal global [52 x i8] c"Return the digest value as a string of binary data.\00", align 16
@.str.4 = private unnamed_addr constant [10 x i8] c"hexdigest\00", align 1
@MD5_hexdigest__doc__ = internal global [59 x i8] c"Return the digest value as a string of hexadecimal digits.\00", align 16
@.str.5 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@MD5_update__doc__ = internal global [58 x i8] c"Update this hash object's state with the provided string.\00", align 16
@Py_hexdigits = external global i8*, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"O:update\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.7 = private unnamed_addr constant [47 x i8] c"Unicode-objects must be encoded before hashing\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"object supporting the buffer API required\00", align 1
@PyExc_BufferError = external global %struct._object*, align 8
@.str.9 = private unnamed_addr constant [32 x i8] c"Buffer must be single dimension\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"block_size\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"digest_size\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"_md5\00", align 1
@MD5_functions = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @MD5_new to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @MD5_new__doc__, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@MD5_new__doc__ = internal global [68 x i8] c"Return a new MD5 hash object; optionally initialized with a string.\00", align 16
@MD5_new.kwlist = internal global [2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* null], align 16
@.str.15 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"|O:new\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__md5() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  store %struct._typeobject* @PyType_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @MD5type, i32 0, i32 0, i32 0, i32 1), align 8
  %call = call i32 @PyType_Ready(%struct._typeobject* @MD5type)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @_md5module, i32 1013)
  store %struct._object* %call1, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp2 = icmp eq %struct._object* %0, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %1 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @MD5type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @MD5type, i32 0, i32 0, i32 0, i32 0), align 8
  %2 = load %struct._object*, %struct._object** %m, align 8
  %call5 = call i32 @PyModule_AddObject(%struct._object* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @MD5type, i32 0, i32 0, i32 0))
  %3 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

declare i32 @PyType_Ready(%struct._typeobject*) #1

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal void @MD5_dealloc(%struct._object* %ptr) #0 {
entry:
  %ptr.addr = alloca %struct._object*, align 8
  store %struct._object* %ptr, %struct._object** %ptr.addr, align 8
  %0 = load %struct._object*, %struct._object** %ptr.addr, align 8
  %1 = bitcast %struct._object* %0 to i8*
  call void @PyObject_Free(i8* %1)
  ret void
}

declare void @PyObject_Free(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @MD5_copy(%struct.MD5object* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.MD5object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %newobj = alloca %struct.MD5object*, align 8
  store %struct.MD5object* %self, %struct.MD5object** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct.MD5object*, %struct.MD5object** %self.addr, align 8
  %1 = bitcast %struct.MD5object* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %2, @MD5type
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call %struct.MD5object* @newMD5object()
  store %struct.MD5object* %call, %struct.MD5object** %newobj, align 8
  %cmp1 = icmp eq %struct.MD5object* %call, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.7

if.else:                                          ; preds = %entry
  %call3 = call %struct.MD5object* @newMD5object()
  store %struct.MD5object* %call3, %struct.MD5object** %newobj, align 8
  %cmp4 = icmp eq %struct.MD5object* %call3, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.end
  %3 = load %struct.MD5object*, %struct.MD5object** %newobj, align 8
  %hash_state = getelementptr inbounds %struct.MD5object, %struct.MD5object* %3, i32 0, i32 1
  %4 = load %struct.MD5object*, %struct.MD5object** %self.addr, align 8
  %hash_state8 = getelementptr inbounds %struct.MD5object, %struct.MD5object* %4, i32 0, i32 1
  %5 = bitcast %struct.md5_state* %hash_state to i8*
  %6 = bitcast %struct.md5_state* %hash_state8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 96, i32 8, i1 false)
  %7 = load %struct.MD5object*, %struct.MD5object** %newobj, align 8
  %8 = bitcast %struct.MD5object* %7 to %struct._object*
  store %struct._object* %8, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.5, %if.then.2
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @MD5_digest(%struct.MD5object* %self, %struct._object* %unused) #0 {
entry:
  %self.addr = alloca %struct.MD5object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %digest = alloca [16 x i8], align 16
  %temp = alloca %struct.md5_state, align 8
  store %struct.MD5object* %self, %struct.MD5object** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct.MD5object*, %struct.MD5object** %self.addr, align 8
  %hash_state = getelementptr inbounds %struct.MD5object, %struct.MD5object* %0, i32 0, i32 1
  %1 = bitcast %struct.md5_state* %temp to i8*
  %2 = bitcast %struct.md5_state* %hash_state to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 96, i32 8, i1 false)
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %digest, i32 0, i32 0
  call void @md5_done(%struct.md5_state* %temp, i8* %arraydecay)
  %arraydecay1 = getelementptr inbounds [16 x i8], [16 x i8]* %digest, i32 0, i32 0
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* %arraydecay1, i64 16)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @MD5_hexdigest(%struct.MD5object* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.MD5object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %digest = alloca [16 x i8], align 16
  %temp = alloca %struct.md5_state, align 8
  %retval1 = alloca %struct._object*, align 8
  %hex_digest = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %c = alloca i8, align 1
  store %struct.MD5object* %self, %struct.MD5object** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct.MD5object*, %struct.MD5object** %self.addr, align 8
  %hash_state = getelementptr inbounds %struct.MD5object, %struct.MD5object* %0, i32 0, i32 1
  %1 = bitcast %struct.md5_state* %temp to i8*
  %2 = bitcast %struct.md5_state* %hash_state to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 96, i32 8, i1 false)
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %digest, i32 0, i32 0
  call void @md5_done(%struct.md5_state* %temp, i8* %arraydecay)
  %call = call %struct._object* @PyUnicode_New(i64 32, i32 127)
  store %struct._object* %call, %struct._object** %retval1, align 8
  %3 = load %struct._object*, %struct._object** %retval1, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %retval1, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %5, i32 0, i32 3
  %6 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %6, align 4
  %bf.lshr = lshr i32 %bf.load, 5
  %bf.clear = and i32 %bf.lshr, 1
  %tobool2 = icmp ne i32 %bf.clear, 0
  br i1 %tobool2, label %cond.true, label %cond.false.10

cond.true:                                        ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %retval1, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyASCIIObject*
  %state3 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %8, i32 0, i32 3
  %9 = bitcast %struct.anon* %state3 to i32*
  %bf.load4 = load i32, i32* %9, align 4
  %bf.lshr5 = lshr i32 %bf.load4, 6
  %bf.clear6 = and i32 %bf.lshr5, 1
  %tobool7 = icmp ne i32 %bf.clear6, 0
  br i1 %tobool7, label %cond.true.8, label %cond.false

cond.true.8:                                      ; preds = %cond.true
  %10 = load %struct._object*, %struct._object** %retval1, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %11, i64 1
  %12 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %13 = load %struct._object*, %struct._object** %retval1, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyCompactUnicodeObject*
  %add.ptr9 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %14, i64 1
  %15 = bitcast %struct.PyCompactUnicodeObject* %add.ptr9 to i8*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.8
  %cond = phi i8* [ %12, %cond.true.8 ], [ %15, %cond.false ]
  br label %cond.end.11

cond.false.10:                                    ; preds = %if.end
  %16 = load %struct._object*, %struct._object** %retval1, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyUnicodeObject*
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %17, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %18 = load i8*, i8** %any, align 8
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.10, %cond.end
  %cond12 = phi i8* [ %cond, %cond.end ], [ %18, %cond.false.10 ]
  store i8* %cond12, i8** %hex_digest, align 8
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.11
  %19 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %19, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %i, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr [16 x i8], [16 x i8]* %digest, i32 0, i64 %idxprom
  %21 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %21 to i32
  %shr = ashr i32 %conv, 4
  %and = and i32 %shr, 15
  %conv13 = trunc i32 %and to i8
  store i8 %conv13, i8* %c, align 1
  %22 = load i8, i8* %c, align 1
  %idxprom14 = zext i8 %22 to i64
  %23 = load i8*, i8** @Py_hexdigits, align 8
  %arrayidx15 = getelementptr i8, i8* %23, i64 %idxprom14
  %24 = load i8, i8* %arrayidx15, align 1
  %25 = load i32, i32* %j, align 4
  %inc = add i32 %25, 1
  store i32 %inc, i32* %j, align 4
  %idxprom16 = sext i32 %25 to i64
  %26 = load i8*, i8** %hex_digest, align 8
  %arrayidx17 = getelementptr i8, i8* %26, i64 %idxprom16
  store i8 %24, i8* %arrayidx17, align 1
  %27 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %27 to i64
  %arrayidx19 = getelementptr [16 x i8], [16 x i8]* %digest, i32 0, i64 %idxprom18
  %28 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %28 to i32
  %and21 = and i32 %conv20, 15
  %conv22 = trunc i32 %and21 to i8
  store i8 %conv22, i8* %c, align 1
  %29 = load i8, i8* %c, align 1
  %idxprom23 = zext i8 %29 to i64
  %30 = load i8*, i8** @Py_hexdigits, align 8
  %arrayidx24 = getelementptr i8, i8* %30, i64 %idxprom23
  %31 = load i8, i8* %arrayidx24, align 1
  %32 = load i32, i32* %j, align 4
  %inc25 = add i32 %32, 1
  store i32 %inc25, i32* %j, align 4
  %idxprom26 = sext i32 %32 to i64
  %33 = load i8*, i8** %hex_digest, align 8
  %arrayidx27 = getelementptr i8, i8* %33, i64 %idxprom26
  store i8 %31, i8* %arrayidx27, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, i32* %i, align 4
  %inc28 = add i32 %34, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load %struct._object*, %struct._object** %retval1, align 8
  store %struct._object* %35, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %36 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %36
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @MD5_update(%struct.MD5object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.MD5object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %obj = alloca %struct._object*, align 8
  %buf = alloca %struct.bufferinfo, align 8
  store %struct.MD5object* %self, %struct.MD5object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), %struct._object** %obj)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %1 = load %struct._object*, %struct._object** %obj, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %do.body
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %do.body
  %5 = load %struct._object*, %struct._object** %obj, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %tp_as_buffer = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 18
  %7 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer, align 8
  %cmp4 = icmp ne %struct.PyBufferProcs* %7, null
  br i1 %cmp4, label %land.lhs.true, label %if.then.8

land.lhs.true:                                    ; preds = %if.end.2
  %8 = load %struct._object*, %struct._object** %obj, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %tp_as_buffer6 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 18
  %10 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer6, align 8
  %bf_getbuffer = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %10, i32 0, i32 0
  %11 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer, align 8
  %cmp7 = icmp ne i32 (%struct._object*, %struct.bufferinfo*, i32)* %11, null
  br i1 %cmp7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true, %if.end.2
  %12 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %land.lhs.true
  %13 = load %struct._object*, %struct._object** %obj, align 8
  %call10 = call i32 @PyObject_GetBuffer(%struct._object* %13, %struct.bufferinfo* %buf, i32 0)
  %cmp11 = icmp eq i32 %call10, -1
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.9
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 5
  %14 = load i32, i32* %ndim, align 4
  %cmp14 = icmp sgt i32 %14, 1
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  %15 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0))
  call void @PyBuffer_Release(%struct.bufferinfo* %buf)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.13
  br label %do.end

do.end:                                           ; preds = %if.end.16
  %16 = load %struct.MD5object*, %struct.MD5object** %self.addr, align 8
  %hash_state = getelementptr inbounds %struct.MD5object, %struct.MD5object* %16, i32 0, i32 1
  %buf17 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 0
  %17 = load i8*, i8** %buf17, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 2
  %18 = load i64, i64* %len, align 8
  call void @md5_process(%struct.md5_state* %hash_state, i8* %17, i64 %18)
  call void @PyBuffer_Release(%struct.bufferinfo* %buf)
  %19 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.15, %if.then.12, %if.then.8, %if.then.1, %if.then
  %20 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %20
}

; Function Attrs: nounwind uwtable
define internal %struct.MD5object* @newMD5object() #0 {
entry:
  %call = call %struct._object* @_PyObject_New(%struct._typeobject* @MD5type)
  %0 = bitcast %struct._object* %call to %struct.MD5object*
  ret %struct.MD5object* %0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare %struct._object* @_PyObject_New(%struct._typeobject*) #1

; Function Attrs: nounwind uwtable
define internal void @md5_done(%struct.md5_state* %md5, i8* %out) #0 {
entry:
  %md5.addr = alloca %struct.md5_state*, align 8
  %out.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.md5_state* %md5, %struct.md5_state** %md5.addr, align 8
  store i8* %out, i8** %out.addr, align 8
  %0 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %curlen = getelementptr inbounds %struct.md5_state, %struct.md5_state* %0, i32 0, i32 2
  %1 = load i32, i32* %curlen, align 4
  %mul = mul i32 %1, 8
  %conv = zext i32 %mul to i64
  %2 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %length = getelementptr inbounds %struct.md5_state, %struct.md5_state* %2, i32 0, i32 0
  %3 = load i64, i64* %length, align 8
  %add = add i64 %3, %conv
  store i64 %add, i64* %length, align 8
  %4 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %curlen1 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %4, i32 0, i32 2
  %5 = load i32, i32* %curlen1, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %curlen1, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %buf = getelementptr inbounds %struct.md5_state, %struct.md5_state* %6, i32 0, i32 3
  %arrayidx = getelementptr [64 x i8], [64 x i8]* %buf, i32 0, i64 %idxprom
  store i8 -128, i8* %arrayidx, align 1
  %7 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %curlen2 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %7, i32 0, i32 2
  %8 = load i32, i32* %curlen2, align 4
  %cmp = icmp ugt i32 %8, 56
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %9 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %curlen4 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %9, i32 0, i32 2
  %10 = load i32, i32* %curlen4, align 4
  %cmp5 = icmp ult i32 %10, 64
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %curlen7 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %11, i32 0, i32 2
  %12 = load i32, i32* %curlen7, align 4
  %inc8 = add i32 %12, 1
  store i32 %inc8, i32* %curlen7, align 4
  %idxprom9 = zext i32 %12 to i64
  %13 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %buf10 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %13, i32 0, i32 3
  %arrayidx11 = getelementptr [64 x i8], [64 x i8]* %buf10, i32 0, i64 %idxprom9
  store i8 0, i8* %arrayidx11, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %15 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %buf12 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %15, i32 0, i32 3
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %buf12, i32 0, i32 0
  call void @md5_compress(%struct.md5_state* %14, i8* %arraydecay)
  %16 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %curlen13 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %16, i32 0, i32 2
  store i32 0, i32* %curlen13, align 4
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  br label %while.cond.14

while.cond.14:                                    ; preds = %while.body.18, %if.end
  %17 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %curlen15 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %17, i32 0, i32 2
  %18 = load i32, i32* %curlen15, align 4
  %cmp16 = icmp ult i32 %18, 56
  br i1 %cmp16, label %while.body.18, label %while.end.24

while.body.18:                                    ; preds = %while.cond.14
  %19 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %curlen19 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %19, i32 0, i32 2
  %20 = load i32, i32* %curlen19, align 4
  %inc20 = add i32 %20, 1
  store i32 %inc20, i32* %curlen19, align 4
  %idxprom21 = zext i32 %20 to i64
  %21 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %buf22 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %21, i32 0, i32 3
  %arrayidx23 = getelementptr [64 x i8], [64 x i8]* %buf22, i32 0, i64 %idxprom21
  store i8 0, i8* %arrayidx23, align 1
  br label %while.cond.14

while.end.24:                                     ; preds = %while.cond.14
  %22 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %length25 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %22, i32 0, i32 0
  %23 = load i64, i64* %length25, align 8
  %shr = ashr i64 %23, 56
  %and = and i64 %shr, 255
  %conv26 = trunc i64 %and to i8
  %24 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %buf27 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %24, i32 0, i32 3
  %arraydecay28 = getelementptr inbounds [64 x i8], [64 x i8]* %buf27, i32 0, i32 0
  %add.ptr = getelementptr i8, i8* %arraydecay28, i64 56
  %arrayidx29 = getelementptr i8, i8* %add.ptr, i64 7
  store i8 %conv26, i8* %arrayidx29, align 1
  %25 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %length30 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %25, i32 0, i32 0
  %26 = load i64, i64* %length30, align 8
  %shr31 = ashr i64 %26, 48
  %and32 = and i64 %shr31, 255
  %conv33 = trunc i64 %and32 to i8
  %27 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %buf34 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %27, i32 0, i32 3
  %arraydecay35 = getelementptr inbounds [64 x i8], [64 x i8]* %buf34, i32 0, i32 0
  %add.ptr36 = getelementptr i8, i8* %arraydecay35, i64 56
  %arrayidx37 = getelementptr i8, i8* %add.ptr36, i64 6
  store i8 %conv33, i8* %arrayidx37, align 1
  %28 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %length38 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %28, i32 0, i32 0
  %29 = load i64, i64* %length38, align 8
  %shr39 = ashr i64 %29, 40
  %and40 = and i64 %shr39, 255
  %conv41 = trunc i64 %and40 to i8
  %30 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %buf42 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %30, i32 0, i32 3
  %arraydecay43 = getelementptr inbounds [64 x i8], [64 x i8]* %buf42, i32 0, i32 0
  %add.ptr44 = getelementptr i8, i8* %arraydecay43, i64 56
  %arrayidx45 = getelementptr i8, i8* %add.ptr44, i64 5
  store i8 %conv41, i8* %arrayidx45, align 1
  %31 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %length46 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %31, i32 0, i32 0
  %32 = load i64, i64* %length46, align 8
  %shr47 = ashr i64 %32, 32
  %and48 = and i64 %shr47, 255
  %conv49 = trunc i64 %and48 to i8
  %33 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %buf50 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %33, i32 0, i32 3
  %arraydecay51 = getelementptr inbounds [64 x i8], [64 x i8]* %buf50, i32 0, i32 0
  %add.ptr52 = getelementptr i8, i8* %arraydecay51, i64 56
  %arrayidx53 = getelementptr i8, i8* %add.ptr52, i64 4
  store i8 %conv49, i8* %arrayidx53, align 1
  %34 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %length54 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %34, i32 0, i32 0
  %35 = load i64, i64* %length54, align 8
  %shr55 = ashr i64 %35, 24
  %and56 = and i64 %shr55, 255
  %conv57 = trunc i64 %and56 to i8
  %36 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %buf58 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %36, i32 0, i32 3
  %arraydecay59 = getelementptr inbounds [64 x i8], [64 x i8]* %buf58, i32 0, i32 0
  %add.ptr60 = getelementptr i8, i8* %arraydecay59, i64 56
  %arrayidx61 = getelementptr i8, i8* %add.ptr60, i64 3
  store i8 %conv57, i8* %arrayidx61, align 1
  %37 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %length62 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %37, i32 0, i32 0
  %38 = load i64, i64* %length62, align 8
  %shr63 = ashr i64 %38, 16
  %and64 = and i64 %shr63, 255
  %conv65 = trunc i64 %and64 to i8
  %39 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %buf66 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %39, i32 0, i32 3
  %arraydecay67 = getelementptr inbounds [64 x i8], [64 x i8]* %buf66, i32 0, i32 0
  %add.ptr68 = getelementptr i8, i8* %arraydecay67, i64 56
  %arrayidx69 = getelementptr i8, i8* %add.ptr68, i64 2
  store i8 %conv65, i8* %arrayidx69, align 1
  %40 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %length70 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %40, i32 0, i32 0
  %41 = load i64, i64* %length70, align 8
  %shr71 = ashr i64 %41, 8
  %and72 = and i64 %shr71, 255
  %conv73 = trunc i64 %and72 to i8
  %42 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %buf74 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %42, i32 0, i32 3
  %arraydecay75 = getelementptr inbounds [64 x i8], [64 x i8]* %buf74, i32 0, i32 0
  %add.ptr76 = getelementptr i8, i8* %arraydecay75, i64 56
  %arrayidx77 = getelementptr i8, i8* %add.ptr76, i64 1
  store i8 %conv73, i8* %arrayidx77, align 1
  %43 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %length78 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %43, i32 0, i32 0
  %44 = load i64, i64* %length78, align 8
  %and79 = and i64 %44, 255
  %conv80 = trunc i64 %and79 to i8
  %45 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %buf81 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %45, i32 0, i32 3
  %arraydecay82 = getelementptr inbounds [64 x i8], [64 x i8]* %buf81, i32 0, i32 0
  %add.ptr83 = getelementptr i8, i8* %arraydecay82, i64 56
  %arrayidx84 = getelementptr i8, i8* %add.ptr83, i64 0
  store i8 %conv80, i8* %arrayidx84, align 1
  %46 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %47 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %buf85 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %47, i32 0, i32 3
  %arraydecay86 = getelementptr inbounds [64 x i8], [64 x i8]* %buf85, i32 0, i32 0
  call void @md5_compress(%struct.md5_state* %46, i8* %arraydecay86)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end.24
  %48 = load i32, i32* %i, align 4
  %cmp87 = icmp slt i32 %48, 4
  br i1 %cmp87, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %49 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %49 to i64
  %50 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %state = getelementptr inbounds %struct.md5_state, %struct.md5_state* %50, i32 0, i32 1
  %arrayidx90 = getelementptr [4 x i32], [4 x i32]* %state, i32 0, i64 %idxprom89
  %51 = load i32, i32* %arrayidx90, align 4
  %shr91 = lshr i32 %51, 24
  %and92 = and i32 %shr91, 255
  %conv93 = trunc i32 %and92 to i8
  %52 = load i8*, i8** %out.addr, align 8
  %53 = load i32, i32* %i, align 4
  %mul94 = mul i32 4, %53
  %idx.ext = sext i32 %mul94 to i64
  %add.ptr95 = getelementptr i8, i8* %52, i64 %idx.ext
  %arrayidx96 = getelementptr i8, i8* %add.ptr95, i64 3
  store i8 %conv93, i8* %arrayidx96, align 1
  %54 = load i32, i32* %i, align 4
  %idxprom97 = sext i32 %54 to i64
  %55 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %state98 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %55, i32 0, i32 1
  %arrayidx99 = getelementptr [4 x i32], [4 x i32]* %state98, i32 0, i64 %idxprom97
  %56 = load i32, i32* %arrayidx99, align 4
  %shr100 = lshr i32 %56, 16
  %and101 = and i32 %shr100, 255
  %conv102 = trunc i32 %and101 to i8
  %57 = load i8*, i8** %out.addr, align 8
  %58 = load i32, i32* %i, align 4
  %mul103 = mul i32 4, %58
  %idx.ext104 = sext i32 %mul103 to i64
  %add.ptr105 = getelementptr i8, i8* %57, i64 %idx.ext104
  %arrayidx106 = getelementptr i8, i8* %add.ptr105, i64 2
  store i8 %conv102, i8* %arrayidx106, align 1
  %59 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %59 to i64
  %60 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %state108 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %60, i32 0, i32 1
  %arrayidx109 = getelementptr [4 x i32], [4 x i32]* %state108, i32 0, i64 %idxprom107
  %61 = load i32, i32* %arrayidx109, align 4
  %shr110 = lshr i32 %61, 8
  %and111 = and i32 %shr110, 255
  %conv112 = trunc i32 %and111 to i8
  %62 = load i8*, i8** %out.addr, align 8
  %63 = load i32, i32* %i, align 4
  %mul113 = mul i32 4, %63
  %idx.ext114 = sext i32 %mul113 to i64
  %add.ptr115 = getelementptr i8, i8* %62, i64 %idx.ext114
  %arrayidx116 = getelementptr i8, i8* %add.ptr115, i64 1
  store i8 %conv112, i8* %arrayidx116, align 1
  %64 = load i32, i32* %i, align 4
  %idxprom117 = sext i32 %64 to i64
  %65 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %state118 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %65, i32 0, i32 1
  %arrayidx119 = getelementptr [4 x i32], [4 x i32]* %state118, i32 0, i64 %idxprom117
  %66 = load i32, i32* %arrayidx119, align 4
  %and120 = and i32 %66, 255
  %conv121 = trunc i32 %and120 to i8
  %67 = load i8*, i8** %out.addr, align 8
  %68 = load i32, i32* %i, align 4
  %mul122 = mul i32 4, %68
  %idx.ext123 = sext i32 %mul122 to i64
  %add.ptr124 = getelementptr i8, i8* %67, i64 %idx.ext123
  %arrayidx125 = getelementptr i8, i8* %add.ptr124, i64 0
  store i8 %conv121, i8* %arrayidx125, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %69 = load i32, i32* %i, align 4
  %inc126 = add i32 %69, 1
  store i32 %inc126, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @md5_compress(%struct.md5_state* %md5, i8* %buf) #0 {
entry:
  %md5.addr = alloca %struct.md5_state*, align 8
  %buf.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %W = alloca [16 x i32], align 16
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  store %struct.md5_state* %md5, %struct.md5_state** %md5.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i32, i32* %i, align 4
  %mul = mul i32 4, %2
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext
  %arrayidx = getelementptr i8, i8* %add.ptr, i64 3
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 255
  %conv1 = sext i32 %and to i64
  %shl = shl i64 %conv1, 24
  %4 = load i8*, i8** %buf.addr, align 8
  %5 = load i32, i32* %i, align 4
  %mul2 = mul i32 4, %5
  %idx.ext3 = zext i32 %mul2 to i64
  %add.ptr4 = getelementptr i8, i8* %4, i64 %idx.ext3
  %arrayidx5 = getelementptr i8, i8* %add.ptr4, i64 2
  %6 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %6 to i32
  %and7 = and i32 %conv6, 255
  %conv8 = sext i32 %and7 to i64
  %shl9 = shl i64 %conv8, 16
  %or = or i64 %shl, %shl9
  %7 = load i8*, i8** %buf.addr, align 8
  %8 = load i32, i32* %i, align 4
  %mul10 = mul i32 4, %8
  %idx.ext11 = zext i32 %mul10 to i64
  %add.ptr12 = getelementptr i8, i8* %7, i64 %idx.ext11
  %arrayidx13 = getelementptr i8, i8* %add.ptr12, i64 1
  %9 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %9 to i32
  %and15 = and i32 %conv14, 255
  %conv16 = sext i32 %and15 to i64
  %shl17 = shl i64 %conv16, 8
  %or18 = or i64 %or, %shl17
  %10 = load i8*, i8** %buf.addr, align 8
  %11 = load i32, i32* %i, align 4
  %mul19 = mul i32 4, %11
  %idx.ext20 = zext i32 %mul19 to i64
  %add.ptr21 = getelementptr i8, i8* %10, i64 %idx.ext20
  %arrayidx22 = getelementptr i8, i8* %add.ptr21, i64 0
  %12 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %12 to i32
  %and24 = and i32 %conv23, 255
  %conv25 = sext i32 %and24 to i64
  %or26 = or i64 %or18, %conv25
  %conv27 = trunc i64 %or26 to i32
  %13 = load i32, i32* %i, align 4
  %idxprom = zext i32 %13 to i64
  %arrayidx28 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 %idxprom
  store i32 %conv27, i32* %arrayidx28, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %state = getelementptr inbounds %struct.md5_state, %struct.md5_state* %15, i32 0, i32 1
  %arrayidx29 = getelementptr [4 x i32], [4 x i32]* %state, i32 0, i64 0
  %16 = load i32, i32* %arrayidx29, align 4
  store i32 %16, i32* %a, align 4
  %17 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %state30 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %17, i32 0, i32 1
  %arrayidx31 = getelementptr [4 x i32], [4 x i32]* %state30, i32 0, i64 1
  %18 = load i32, i32* %arrayidx31, align 4
  store i32 %18, i32* %b, align 4
  %19 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %state32 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %19, i32 0, i32 1
  %arrayidx33 = getelementptr [4 x i32], [4 x i32]* %state32, i32 0, i64 2
  %20 = load i32, i32* %arrayidx33, align 4
  store i32 %20, i32* %c, align 4
  %21 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %state34 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %21, i32 0, i32 1
  %arrayidx35 = getelementptr [4 x i32], [4 x i32]* %state34, i32 0, i64 3
  %22 = load i32, i32* %arrayidx35, align 4
  store i32 %22, i32* %d, align 4
  %23 = load i32, i32* %a, align 4
  %24 = load i32, i32* %d, align 4
  %25 = load i32, i32* %b, align 4
  %26 = load i32, i32* %c, align 4
  %27 = load i32, i32* %d, align 4
  %xor = xor i32 %26, %27
  %and36 = and i32 %25, %xor
  %xor37 = xor i32 %24, %and36
  %add = add i32 %23, %xor37
  %arrayidx38 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 0
  %28 = load i32, i32* %arrayidx38, align 4
  %add39 = add i32 %add, %28
  %conv40 = zext i32 %add39 to i64
  %add41 = add i64 %conv40, 3614090360
  %conv42 = trunc i64 %add41 to i32
  store i32 %conv42, i32* %a, align 4
  %29 = load i32, i32* %a, align 4
  %conv43 = zext i32 %29 to i64
  %shl44 = shl i64 %conv43, 7
  %30 = load i32, i32* %a, align 4
  %conv45 = zext i32 %30 to i64
  %and46 = and i64 %conv45, 4294967295
  %shr = lshr i64 %and46, 25
  %or47 = or i64 %shl44, %shr
  %and48 = and i64 %or47, 4294967295
  %31 = load i32, i32* %b, align 4
  %conv49 = zext i32 %31 to i64
  %add50 = add i64 %and48, %conv49
  %conv51 = trunc i64 %add50 to i32
  store i32 %conv51, i32* %a, align 4
  %32 = load i32, i32* %d, align 4
  %33 = load i32, i32* %c, align 4
  %34 = load i32, i32* %a, align 4
  %35 = load i32, i32* %b, align 4
  %36 = load i32, i32* %c, align 4
  %xor52 = xor i32 %35, %36
  %and53 = and i32 %34, %xor52
  %xor54 = xor i32 %33, %and53
  %add55 = add i32 %32, %xor54
  %arrayidx56 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 1
  %37 = load i32, i32* %arrayidx56, align 4
  %add57 = add i32 %add55, %37
  %conv58 = zext i32 %add57 to i64
  %add59 = add i64 %conv58, 3905402710
  %conv60 = trunc i64 %add59 to i32
  store i32 %conv60, i32* %d, align 4
  %38 = load i32, i32* %d, align 4
  %conv61 = zext i32 %38 to i64
  %shl62 = shl i64 %conv61, 12
  %39 = load i32, i32* %d, align 4
  %conv63 = zext i32 %39 to i64
  %and64 = and i64 %conv63, 4294967295
  %shr65 = lshr i64 %and64, 20
  %or66 = or i64 %shl62, %shr65
  %and67 = and i64 %or66, 4294967295
  %40 = load i32, i32* %a, align 4
  %conv68 = zext i32 %40 to i64
  %add69 = add i64 %and67, %conv68
  %conv70 = trunc i64 %add69 to i32
  store i32 %conv70, i32* %d, align 4
  %41 = load i32, i32* %c, align 4
  %42 = load i32, i32* %b, align 4
  %43 = load i32, i32* %d, align 4
  %44 = load i32, i32* %a, align 4
  %45 = load i32, i32* %b, align 4
  %xor71 = xor i32 %44, %45
  %and72 = and i32 %43, %xor71
  %xor73 = xor i32 %42, %and72
  %add74 = add i32 %41, %xor73
  %arrayidx75 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 2
  %46 = load i32, i32* %arrayidx75, align 4
  %add76 = add i32 %add74, %46
  %conv77 = zext i32 %add76 to i64
  %add78 = add i64 %conv77, 606105819
  %conv79 = trunc i64 %add78 to i32
  store i32 %conv79, i32* %c, align 4
  %47 = load i32, i32* %c, align 4
  %conv80 = zext i32 %47 to i64
  %shl81 = shl i64 %conv80, 17
  %48 = load i32, i32* %c, align 4
  %conv82 = zext i32 %48 to i64
  %and83 = and i64 %conv82, 4294967295
  %shr84 = lshr i64 %and83, 15
  %or85 = or i64 %shl81, %shr84
  %and86 = and i64 %or85, 4294967295
  %49 = load i32, i32* %d, align 4
  %conv87 = zext i32 %49 to i64
  %add88 = add i64 %and86, %conv87
  %conv89 = trunc i64 %add88 to i32
  store i32 %conv89, i32* %c, align 4
  %50 = load i32, i32* %b, align 4
  %51 = load i32, i32* %a, align 4
  %52 = load i32, i32* %c, align 4
  %53 = load i32, i32* %d, align 4
  %54 = load i32, i32* %a, align 4
  %xor90 = xor i32 %53, %54
  %and91 = and i32 %52, %xor90
  %xor92 = xor i32 %51, %and91
  %add93 = add i32 %50, %xor92
  %arrayidx94 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 3
  %55 = load i32, i32* %arrayidx94, align 4
  %add95 = add i32 %add93, %55
  %conv96 = zext i32 %add95 to i64
  %add97 = add i64 %conv96, 3250441966
  %conv98 = trunc i64 %add97 to i32
  store i32 %conv98, i32* %b, align 4
  %56 = load i32, i32* %b, align 4
  %conv99 = zext i32 %56 to i64
  %shl100 = shl i64 %conv99, 22
  %57 = load i32, i32* %b, align 4
  %conv101 = zext i32 %57 to i64
  %and102 = and i64 %conv101, 4294967295
  %shr103 = lshr i64 %and102, 10
  %or104 = or i64 %shl100, %shr103
  %and105 = and i64 %or104, 4294967295
  %58 = load i32, i32* %c, align 4
  %conv106 = zext i32 %58 to i64
  %add107 = add i64 %and105, %conv106
  %conv108 = trunc i64 %add107 to i32
  store i32 %conv108, i32* %b, align 4
  %59 = load i32, i32* %a, align 4
  %60 = load i32, i32* %d, align 4
  %61 = load i32, i32* %b, align 4
  %62 = load i32, i32* %c, align 4
  %63 = load i32, i32* %d, align 4
  %xor109 = xor i32 %62, %63
  %and110 = and i32 %61, %xor109
  %xor111 = xor i32 %60, %and110
  %add112 = add i32 %59, %xor111
  %arrayidx113 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 4
  %64 = load i32, i32* %arrayidx113, align 4
  %add114 = add i32 %add112, %64
  %conv115 = zext i32 %add114 to i64
  %add116 = add i64 %conv115, 4118548399
  %conv117 = trunc i64 %add116 to i32
  store i32 %conv117, i32* %a, align 4
  %65 = load i32, i32* %a, align 4
  %conv118 = zext i32 %65 to i64
  %shl119 = shl i64 %conv118, 7
  %66 = load i32, i32* %a, align 4
  %conv120 = zext i32 %66 to i64
  %and121 = and i64 %conv120, 4294967295
  %shr122 = lshr i64 %and121, 25
  %or123 = or i64 %shl119, %shr122
  %and124 = and i64 %or123, 4294967295
  %67 = load i32, i32* %b, align 4
  %conv125 = zext i32 %67 to i64
  %add126 = add i64 %and124, %conv125
  %conv127 = trunc i64 %add126 to i32
  store i32 %conv127, i32* %a, align 4
  %68 = load i32, i32* %d, align 4
  %69 = load i32, i32* %c, align 4
  %70 = load i32, i32* %a, align 4
  %71 = load i32, i32* %b, align 4
  %72 = load i32, i32* %c, align 4
  %xor128 = xor i32 %71, %72
  %and129 = and i32 %70, %xor128
  %xor130 = xor i32 %69, %and129
  %add131 = add i32 %68, %xor130
  %arrayidx132 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 5
  %73 = load i32, i32* %arrayidx132, align 4
  %add133 = add i32 %add131, %73
  %conv134 = zext i32 %add133 to i64
  %add135 = add i64 %conv134, 1200080426
  %conv136 = trunc i64 %add135 to i32
  store i32 %conv136, i32* %d, align 4
  %74 = load i32, i32* %d, align 4
  %conv137 = zext i32 %74 to i64
  %shl138 = shl i64 %conv137, 12
  %75 = load i32, i32* %d, align 4
  %conv139 = zext i32 %75 to i64
  %and140 = and i64 %conv139, 4294967295
  %shr141 = lshr i64 %and140, 20
  %or142 = or i64 %shl138, %shr141
  %and143 = and i64 %or142, 4294967295
  %76 = load i32, i32* %a, align 4
  %conv144 = zext i32 %76 to i64
  %add145 = add i64 %and143, %conv144
  %conv146 = trunc i64 %add145 to i32
  store i32 %conv146, i32* %d, align 4
  %77 = load i32, i32* %c, align 4
  %78 = load i32, i32* %b, align 4
  %79 = load i32, i32* %d, align 4
  %80 = load i32, i32* %a, align 4
  %81 = load i32, i32* %b, align 4
  %xor147 = xor i32 %80, %81
  %and148 = and i32 %79, %xor147
  %xor149 = xor i32 %78, %and148
  %add150 = add i32 %77, %xor149
  %arrayidx151 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 6
  %82 = load i32, i32* %arrayidx151, align 4
  %add152 = add i32 %add150, %82
  %conv153 = zext i32 %add152 to i64
  %add154 = add i64 %conv153, 2821735955
  %conv155 = trunc i64 %add154 to i32
  store i32 %conv155, i32* %c, align 4
  %83 = load i32, i32* %c, align 4
  %conv156 = zext i32 %83 to i64
  %shl157 = shl i64 %conv156, 17
  %84 = load i32, i32* %c, align 4
  %conv158 = zext i32 %84 to i64
  %and159 = and i64 %conv158, 4294967295
  %shr160 = lshr i64 %and159, 15
  %or161 = or i64 %shl157, %shr160
  %and162 = and i64 %or161, 4294967295
  %85 = load i32, i32* %d, align 4
  %conv163 = zext i32 %85 to i64
  %add164 = add i64 %and162, %conv163
  %conv165 = trunc i64 %add164 to i32
  store i32 %conv165, i32* %c, align 4
  %86 = load i32, i32* %b, align 4
  %87 = load i32, i32* %a, align 4
  %88 = load i32, i32* %c, align 4
  %89 = load i32, i32* %d, align 4
  %90 = load i32, i32* %a, align 4
  %xor166 = xor i32 %89, %90
  %and167 = and i32 %88, %xor166
  %xor168 = xor i32 %87, %and167
  %add169 = add i32 %86, %xor168
  %arrayidx170 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 7
  %91 = load i32, i32* %arrayidx170, align 4
  %add171 = add i32 %add169, %91
  %conv172 = zext i32 %add171 to i64
  %add173 = add i64 %conv172, 4249261313
  %conv174 = trunc i64 %add173 to i32
  store i32 %conv174, i32* %b, align 4
  %92 = load i32, i32* %b, align 4
  %conv175 = zext i32 %92 to i64
  %shl176 = shl i64 %conv175, 22
  %93 = load i32, i32* %b, align 4
  %conv177 = zext i32 %93 to i64
  %and178 = and i64 %conv177, 4294967295
  %shr179 = lshr i64 %and178, 10
  %or180 = or i64 %shl176, %shr179
  %and181 = and i64 %or180, 4294967295
  %94 = load i32, i32* %c, align 4
  %conv182 = zext i32 %94 to i64
  %add183 = add i64 %and181, %conv182
  %conv184 = trunc i64 %add183 to i32
  store i32 %conv184, i32* %b, align 4
  %95 = load i32, i32* %a, align 4
  %96 = load i32, i32* %d, align 4
  %97 = load i32, i32* %b, align 4
  %98 = load i32, i32* %c, align 4
  %99 = load i32, i32* %d, align 4
  %xor185 = xor i32 %98, %99
  %and186 = and i32 %97, %xor185
  %xor187 = xor i32 %96, %and186
  %add188 = add i32 %95, %xor187
  %arrayidx189 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 8
  %100 = load i32, i32* %arrayidx189, align 4
  %add190 = add i32 %add188, %100
  %conv191 = zext i32 %add190 to i64
  %add192 = add i64 %conv191, 1770035416
  %conv193 = trunc i64 %add192 to i32
  store i32 %conv193, i32* %a, align 4
  %101 = load i32, i32* %a, align 4
  %conv194 = zext i32 %101 to i64
  %shl195 = shl i64 %conv194, 7
  %102 = load i32, i32* %a, align 4
  %conv196 = zext i32 %102 to i64
  %and197 = and i64 %conv196, 4294967295
  %shr198 = lshr i64 %and197, 25
  %or199 = or i64 %shl195, %shr198
  %and200 = and i64 %or199, 4294967295
  %103 = load i32, i32* %b, align 4
  %conv201 = zext i32 %103 to i64
  %add202 = add i64 %and200, %conv201
  %conv203 = trunc i64 %add202 to i32
  store i32 %conv203, i32* %a, align 4
  %104 = load i32, i32* %d, align 4
  %105 = load i32, i32* %c, align 4
  %106 = load i32, i32* %a, align 4
  %107 = load i32, i32* %b, align 4
  %108 = load i32, i32* %c, align 4
  %xor204 = xor i32 %107, %108
  %and205 = and i32 %106, %xor204
  %xor206 = xor i32 %105, %and205
  %add207 = add i32 %104, %xor206
  %arrayidx208 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 9
  %109 = load i32, i32* %arrayidx208, align 4
  %add209 = add i32 %add207, %109
  %conv210 = zext i32 %add209 to i64
  %add211 = add i64 %conv210, 2336552879
  %conv212 = trunc i64 %add211 to i32
  store i32 %conv212, i32* %d, align 4
  %110 = load i32, i32* %d, align 4
  %conv213 = zext i32 %110 to i64
  %shl214 = shl i64 %conv213, 12
  %111 = load i32, i32* %d, align 4
  %conv215 = zext i32 %111 to i64
  %and216 = and i64 %conv215, 4294967295
  %shr217 = lshr i64 %and216, 20
  %or218 = or i64 %shl214, %shr217
  %and219 = and i64 %or218, 4294967295
  %112 = load i32, i32* %a, align 4
  %conv220 = zext i32 %112 to i64
  %add221 = add i64 %and219, %conv220
  %conv222 = trunc i64 %add221 to i32
  store i32 %conv222, i32* %d, align 4
  %113 = load i32, i32* %c, align 4
  %114 = load i32, i32* %b, align 4
  %115 = load i32, i32* %d, align 4
  %116 = load i32, i32* %a, align 4
  %117 = load i32, i32* %b, align 4
  %xor223 = xor i32 %116, %117
  %and224 = and i32 %115, %xor223
  %xor225 = xor i32 %114, %and224
  %add226 = add i32 %113, %xor225
  %arrayidx227 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 10
  %118 = load i32, i32* %arrayidx227, align 4
  %add228 = add i32 %add226, %118
  %conv229 = zext i32 %add228 to i64
  %add230 = add i64 %conv229, 4294925233
  %conv231 = trunc i64 %add230 to i32
  store i32 %conv231, i32* %c, align 4
  %119 = load i32, i32* %c, align 4
  %conv232 = zext i32 %119 to i64
  %shl233 = shl i64 %conv232, 17
  %120 = load i32, i32* %c, align 4
  %conv234 = zext i32 %120 to i64
  %and235 = and i64 %conv234, 4294967295
  %shr236 = lshr i64 %and235, 15
  %or237 = or i64 %shl233, %shr236
  %and238 = and i64 %or237, 4294967295
  %121 = load i32, i32* %d, align 4
  %conv239 = zext i32 %121 to i64
  %add240 = add i64 %and238, %conv239
  %conv241 = trunc i64 %add240 to i32
  store i32 %conv241, i32* %c, align 4
  %122 = load i32, i32* %b, align 4
  %123 = load i32, i32* %a, align 4
  %124 = load i32, i32* %c, align 4
  %125 = load i32, i32* %d, align 4
  %126 = load i32, i32* %a, align 4
  %xor242 = xor i32 %125, %126
  %and243 = and i32 %124, %xor242
  %xor244 = xor i32 %123, %and243
  %add245 = add i32 %122, %xor244
  %arrayidx246 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 11
  %127 = load i32, i32* %arrayidx246, align 4
  %add247 = add i32 %add245, %127
  %conv248 = zext i32 %add247 to i64
  %add249 = add i64 %conv248, 2304563134
  %conv250 = trunc i64 %add249 to i32
  store i32 %conv250, i32* %b, align 4
  %128 = load i32, i32* %b, align 4
  %conv251 = zext i32 %128 to i64
  %shl252 = shl i64 %conv251, 22
  %129 = load i32, i32* %b, align 4
  %conv253 = zext i32 %129 to i64
  %and254 = and i64 %conv253, 4294967295
  %shr255 = lshr i64 %and254, 10
  %or256 = or i64 %shl252, %shr255
  %and257 = and i64 %or256, 4294967295
  %130 = load i32, i32* %c, align 4
  %conv258 = zext i32 %130 to i64
  %add259 = add i64 %and257, %conv258
  %conv260 = trunc i64 %add259 to i32
  store i32 %conv260, i32* %b, align 4
  %131 = load i32, i32* %a, align 4
  %132 = load i32, i32* %d, align 4
  %133 = load i32, i32* %b, align 4
  %134 = load i32, i32* %c, align 4
  %135 = load i32, i32* %d, align 4
  %xor261 = xor i32 %134, %135
  %and262 = and i32 %133, %xor261
  %xor263 = xor i32 %132, %and262
  %add264 = add i32 %131, %xor263
  %arrayidx265 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 12
  %136 = load i32, i32* %arrayidx265, align 4
  %add266 = add i32 %add264, %136
  %conv267 = zext i32 %add266 to i64
  %add268 = add i64 %conv267, 1804603682
  %conv269 = trunc i64 %add268 to i32
  store i32 %conv269, i32* %a, align 4
  %137 = load i32, i32* %a, align 4
  %conv270 = zext i32 %137 to i64
  %shl271 = shl i64 %conv270, 7
  %138 = load i32, i32* %a, align 4
  %conv272 = zext i32 %138 to i64
  %and273 = and i64 %conv272, 4294967295
  %shr274 = lshr i64 %and273, 25
  %or275 = or i64 %shl271, %shr274
  %and276 = and i64 %or275, 4294967295
  %139 = load i32, i32* %b, align 4
  %conv277 = zext i32 %139 to i64
  %add278 = add i64 %and276, %conv277
  %conv279 = trunc i64 %add278 to i32
  store i32 %conv279, i32* %a, align 4
  %140 = load i32, i32* %d, align 4
  %141 = load i32, i32* %c, align 4
  %142 = load i32, i32* %a, align 4
  %143 = load i32, i32* %b, align 4
  %144 = load i32, i32* %c, align 4
  %xor280 = xor i32 %143, %144
  %and281 = and i32 %142, %xor280
  %xor282 = xor i32 %141, %and281
  %add283 = add i32 %140, %xor282
  %arrayidx284 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 13
  %145 = load i32, i32* %arrayidx284, align 4
  %add285 = add i32 %add283, %145
  %conv286 = zext i32 %add285 to i64
  %add287 = add i64 %conv286, 4254626195
  %conv288 = trunc i64 %add287 to i32
  store i32 %conv288, i32* %d, align 4
  %146 = load i32, i32* %d, align 4
  %conv289 = zext i32 %146 to i64
  %shl290 = shl i64 %conv289, 12
  %147 = load i32, i32* %d, align 4
  %conv291 = zext i32 %147 to i64
  %and292 = and i64 %conv291, 4294967295
  %shr293 = lshr i64 %and292, 20
  %or294 = or i64 %shl290, %shr293
  %and295 = and i64 %or294, 4294967295
  %148 = load i32, i32* %a, align 4
  %conv296 = zext i32 %148 to i64
  %add297 = add i64 %and295, %conv296
  %conv298 = trunc i64 %add297 to i32
  store i32 %conv298, i32* %d, align 4
  %149 = load i32, i32* %c, align 4
  %150 = load i32, i32* %b, align 4
  %151 = load i32, i32* %d, align 4
  %152 = load i32, i32* %a, align 4
  %153 = load i32, i32* %b, align 4
  %xor299 = xor i32 %152, %153
  %and300 = and i32 %151, %xor299
  %xor301 = xor i32 %150, %and300
  %add302 = add i32 %149, %xor301
  %arrayidx303 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 14
  %154 = load i32, i32* %arrayidx303, align 4
  %add304 = add i32 %add302, %154
  %conv305 = zext i32 %add304 to i64
  %add306 = add i64 %conv305, 2792965006
  %conv307 = trunc i64 %add306 to i32
  store i32 %conv307, i32* %c, align 4
  %155 = load i32, i32* %c, align 4
  %conv308 = zext i32 %155 to i64
  %shl309 = shl i64 %conv308, 17
  %156 = load i32, i32* %c, align 4
  %conv310 = zext i32 %156 to i64
  %and311 = and i64 %conv310, 4294967295
  %shr312 = lshr i64 %and311, 15
  %or313 = or i64 %shl309, %shr312
  %and314 = and i64 %or313, 4294967295
  %157 = load i32, i32* %d, align 4
  %conv315 = zext i32 %157 to i64
  %add316 = add i64 %and314, %conv315
  %conv317 = trunc i64 %add316 to i32
  store i32 %conv317, i32* %c, align 4
  %158 = load i32, i32* %b, align 4
  %159 = load i32, i32* %a, align 4
  %160 = load i32, i32* %c, align 4
  %161 = load i32, i32* %d, align 4
  %162 = load i32, i32* %a, align 4
  %xor318 = xor i32 %161, %162
  %and319 = and i32 %160, %xor318
  %xor320 = xor i32 %159, %and319
  %add321 = add i32 %158, %xor320
  %arrayidx322 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 15
  %163 = load i32, i32* %arrayidx322, align 4
  %add323 = add i32 %add321, %163
  %conv324 = zext i32 %add323 to i64
  %add325 = add i64 %conv324, 1236535329
  %conv326 = trunc i64 %add325 to i32
  store i32 %conv326, i32* %b, align 4
  %164 = load i32, i32* %b, align 4
  %conv327 = zext i32 %164 to i64
  %shl328 = shl i64 %conv327, 22
  %165 = load i32, i32* %b, align 4
  %conv329 = zext i32 %165 to i64
  %and330 = and i64 %conv329, 4294967295
  %shr331 = lshr i64 %and330, 10
  %or332 = or i64 %shl328, %shr331
  %and333 = and i64 %or332, 4294967295
  %166 = load i32, i32* %c, align 4
  %conv334 = zext i32 %166 to i64
  %add335 = add i64 %and333, %conv334
  %conv336 = trunc i64 %add335 to i32
  store i32 %conv336, i32* %b, align 4
  %167 = load i32, i32* %a, align 4
  %168 = load i32, i32* %c, align 4
  %169 = load i32, i32* %d, align 4
  %170 = load i32, i32* %c, align 4
  %171 = load i32, i32* %b, align 4
  %xor337 = xor i32 %170, %171
  %and338 = and i32 %169, %xor337
  %xor339 = xor i32 %168, %and338
  %add340 = add i32 %167, %xor339
  %arrayidx341 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 1
  %172 = load i32, i32* %arrayidx341, align 4
  %add342 = add i32 %add340, %172
  %conv343 = zext i32 %add342 to i64
  %add344 = add i64 %conv343, 4129170786
  %conv345 = trunc i64 %add344 to i32
  store i32 %conv345, i32* %a, align 4
  %173 = load i32, i32* %a, align 4
  %conv346 = zext i32 %173 to i64
  %shl347 = shl i64 %conv346, 5
  %174 = load i32, i32* %a, align 4
  %conv348 = zext i32 %174 to i64
  %and349 = and i64 %conv348, 4294967295
  %shr350 = lshr i64 %and349, 27
  %or351 = or i64 %shl347, %shr350
  %and352 = and i64 %or351, 4294967295
  %175 = load i32, i32* %b, align 4
  %conv353 = zext i32 %175 to i64
  %add354 = add i64 %and352, %conv353
  %conv355 = trunc i64 %add354 to i32
  store i32 %conv355, i32* %a, align 4
  %176 = load i32, i32* %d, align 4
  %177 = load i32, i32* %b, align 4
  %178 = load i32, i32* %c, align 4
  %179 = load i32, i32* %b, align 4
  %180 = load i32, i32* %a, align 4
  %xor356 = xor i32 %179, %180
  %and357 = and i32 %178, %xor356
  %xor358 = xor i32 %177, %and357
  %add359 = add i32 %176, %xor358
  %arrayidx360 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 6
  %181 = load i32, i32* %arrayidx360, align 4
  %add361 = add i32 %add359, %181
  %conv362 = zext i32 %add361 to i64
  %add363 = add i64 %conv362, 3225465664
  %conv364 = trunc i64 %add363 to i32
  store i32 %conv364, i32* %d, align 4
  %182 = load i32, i32* %d, align 4
  %conv365 = zext i32 %182 to i64
  %shl366 = shl i64 %conv365, 9
  %183 = load i32, i32* %d, align 4
  %conv367 = zext i32 %183 to i64
  %and368 = and i64 %conv367, 4294967295
  %shr369 = lshr i64 %and368, 23
  %or370 = or i64 %shl366, %shr369
  %and371 = and i64 %or370, 4294967295
  %184 = load i32, i32* %a, align 4
  %conv372 = zext i32 %184 to i64
  %add373 = add i64 %and371, %conv372
  %conv374 = trunc i64 %add373 to i32
  store i32 %conv374, i32* %d, align 4
  %185 = load i32, i32* %c, align 4
  %186 = load i32, i32* %a, align 4
  %187 = load i32, i32* %b, align 4
  %188 = load i32, i32* %a, align 4
  %189 = load i32, i32* %d, align 4
  %xor375 = xor i32 %188, %189
  %and376 = and i32 %187, %xor375
  %xor377 = xor i32 %186, %and376
  %add378 = add i32 %185, %xor377
  %arrayidx379 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 11
  %190 = load i32, i32* %arrayidx379, align 4
  %add380 = add i32 %add378, %190
  %conv381 = zext i32 %add380 to i64
  %add382 = add i64 %conv381, 643717713
  %conv383 = trunc i64 %add382 to i32
  store i32 %conv383, i32* %c, align 4
  %191 = load i32, i32* %c, align 4
  %conv384 = zext i32 %191 to i64
  %shl385 = shl i64 %conv384, 14
  %192 = load i32, i32* %c, align 4
  %conv386 = zext i32 %192 to i64
  %and387 = and i64 %conv386, 4294967295
  %shr388 = lshr i64 %and387, 18
  %or389 = or i64 %shl385, %shr388
  %and390 = and i64 %or389, 4294967295
  %193 = load i32, i32* %d, align 4
  %conv391 = zext i32 %193 to i64
  %add392 = add i64 %and390, %conv391
  %conv393 = trunc i64 %add392 to i32
  store i32 %conv393, i32* %c, align 4
  %194 = load i32, i32* %b, align 4
  %195 = load i32, i32* %d, align 4
  %196 = load i32, i32* %a, align 4
  %197 = load i32, i32* %d, align 4
  %198 = load i32, i32* %c, align 4
  %xor394 = xor i32 %197, %198
  %and395 = and i32 %196, %xor394
  %xor396 = xor i32 %195, %and395
  %add397 = add i32 %194, %xor396
  %arrayidx398 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 0
  %199 = load i32, i32* %arrayidx398, align 4
  %add399 = add i32 %add397, %199
  %conv400 = zext i32 %add399 to i64
  %add401 = add i64 %conv400, 3921069994
  %conv402 = trunc i64 %add401 to i32
  store i32 %conv402, i32* %b, align 4
  %200 = load i32, i32* %b, align 4
  %conv403 = zext i32 %200 to i64
  %shl404 = shl i64 %conv403, 20
  %201 = load i32, i32* %b, align 4
  %conv405 = zext i32 %201 to i64
  %and406 = and i64 %conv405, 4294967295
  %shr407 = lshr i64 %and406, 12
  %or408 = or i64 %shl404, %shr407
  %and409 = and i64 %or408, 4294967295
  %202 = load i32, i32* %c, align 4
  %conv410 = zext i32 %202 to i64
  %add411 = add i64 %and409, %conv410
  %conv412 = trunc i64 %add411 to i32
  store i32 %conv412, i32* %b, align 4
  %203 = load i32, i32* %a, align 4
  %204 = load i32, i32* %c, align 4
  %205 = load i32, i32* %d, align 4
  %206 = load i32, i32* %c, align 4
  %207 = load i32, i32* %b, align 4
  %xor413 = xor i32 %206, %207
  %and414 = and i32 %205, %xor413
  %xor415 = xor i32 %204, %and414
  %add416 = add i32 %203, %xor415
  %arrayidx417 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 5
  %208 = load i32, i32* %arrayidx417, align 4
  %add418 = add i32 %add416, %208
  %conv419 = zext i32 %add418 to i64
  %add420 = add i64 %conv419, 3593408605
  %conv421 = trunc i64 %add420 to i32
  store i32 %conv421, i32* %a, align 4
  %209 = load i32, i32* %a, align 4
  %conv422 = zext i32 %209 to i64
  %shl423 = shl i64 %conv422, 5
  %210 = load i32, i32* %a, align 4
  %conv424 = zext i32 %210 to i64
  %and425 = and i64 %conv424, 4294967295
  %shr426 = lshr i64 %and425, 27
  %or427 = or i64 %shl423, %shr426
  %and428 = and i64 %or427, 4294967295
  %211 = load i32, i32* %b, align 4
  %conv429 = zext i32 %211 to i64
  %add430 = add i64 %and428, %conv429
  %conv431 = trunc i64 %add430 to i32
  store i32 %conv431, i32* %a, align 4
  %212 = load i32, i32* %d, align 4
  %213 = load i32, i32* %b, align 4
  %214 = load i32, i32* %c, align 4
  %215 = load i32, i32* %b, align 4
  %216 = load i32, i32* %a, align 4
  %xor432 = xor i32 %215, %216
  %and433 = and i32 %214, %xor432
  %xor434 = xor i32 %213, %and433
  %add435 = add i32 %212, %xor434
  %arrayidx436 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 10
  %217 = load i32, i32* %arrayidx436, align 4
  %add437 = add i32 %add435, %217
  %conv438 = zext i32 %add437 to i64
  %add439 = add i64 %conv438, 38016083
  %conv440 = trunc i64 %add439 to i32
  store i32 %conv440, i32* %d, align 4
  %218 = load i32, i32* %d, align 4
  %conv441 = zext i32 %218 to i64
  %shl442 = shl i64 %conv441, 9
  %219 = load i32, i32* %d, align 4
  %conv443 = zext i32 %219 to i64
  %and444 = and i64 %conv443, 4294967295
  %shr445 = lshr i64 %and444, 23
  %or446 = or i64 %shl442, %shr445
  %and447 = and i64 %or446, 4294967295
  %220 = load i32, i32* %a, align 4
  %conv448 = zext i32 %220 to i64
  %add449 = add i64 %and447, %conv448
  %conv450 = trunc i64 %add449 to i32
  store i32 %conv450, i32* %d, align 4
  %221 = load i32, i32* %c, align 4
  %222 = load i32, i32* %a, align 4
  %223 = load i32, i32* %b, align 4
  %224 = load i32, i32* %a, align 4
  %225 = load i32, i32* %d, align 4
  %xor451 = xor i32 %224, %225
  %and452 = and i32 %223, %xor451
  %xor453 = xor i32 %222, %and452
  %add454 = add i32 %221, %xor453
  %arrayidx455 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 15
  %226 = load i32, i32* %arrayidx455, align 4
  %add456 = add i32 %add454, %226
  %conv457 = zext i32 %add456 to i64
  %add458 = add i64 %conv457, 3634488961
  %conv459 = trunc i64 %add458 to i32
  store i32 %conv459, i32* %c, align 4
  %227 = load i32, i32* %c, align 4
  %conv460 = zext i32 %227 to i64
  %shl461 = shl i64 %conv460, 14
  %228 = load i32, i32* %c, align 4
  %conv462 = zext i32 %228 to i64
  %and463 = and i64 %conv462, 4294967295
  %shr464 = lshr i64 %and463, 18
  %or465 = or i64 %shl461, %shr464
  %and466 = and i64 %or465, 4294967295
  %229 = load i32, i32* %d, align 4
  %conv467 = zext i32 %229 to i64
  %add468 = add i64 %and466, %conv467
  %conv469 = trunc i64 %add468 to i32
  store i32 %conv469, i32* %c, align 4
  %230 = load i32, i32* %b, align 4
  %231 = load i32, i32* %d, align 4
  %232 = load i32, i32* %a, align 4
  %233 = load i32, i32* %d, align 4
  %234 = load i32, i32* %c, align 4
  %xor470 = xor i32 %233, %234
  %and471 = and i32 %232, %xor470
  %xor472 = xor i32 %231, %and471
  %add473 = add i32 %230, %xor472
  %arrayidx474 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 4
  %235 = load i32, i32* %arrayidx474, align 4
  %add475 = add i32 %add473, %235
  %conv476 = zext i32 %add475 to i64
  %add477 = add i64 %conv476, 3889429448
  %conv478 = trunc i64 %add477 to i32
  store i32 %conv478, i32* %b, align 4
  %236 = load i32, i32* %b, align 4
  %conv479 = zext i32 %236 to i64
  %shl480 = shl i64 %conv479, 20
  %237 = load i32, i32* %b, align 4
  %conv481 = zext i32 %237 to i64
  %and482 = and i64 %conv481, 4294967295
  %shr483 = lshr i64 %and482, 12
  %or484 = or i64 %shl480, %shr483
  %and485 = and i64 %or484, 4294967295
  %238 = load i32, i32* %c, align 4
  %conv486 = zext i32 %238 to i64
  %add487 = add i64 %and485, %conv486
  %conv488 = trunc i64 %add487 to i32
  store i32 %conv488, i32* %b, align 4
  %239 = load i32, i32* %a, align 4
  %240 = load i32, i32* %c, align 4
  %241 = load i32, i32* %d, align 4
  %242 = load i32, i32* %c, align 4
  %243 = load i32, i32* %b, align 4
  %xor489 = xor i32 %242, %243
  %and490 = and i32 %241, %xor489
  %xor491 = xor i32 %240, %and490
  %add492 = add i32 %239, %xor491
  %arrayidx493 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 9
  %244 = load i32, i32* %arrayidx493, align 4
  %add494 = add i32 %add492, %244
  %conv495 = zext i32 %add494 to i64
  %add496 = add i64 %conv495, 568446438
  %conv497 = trunc i64 %add496 to i32
  store i32 %conv497, i32* %a, align 4
  %245 = load i32, i32* %a, align 4
  %conv498 = zext i32 %245 to i64
  %shl499 = shl i64 %conv498, 5
  %246 = load i32, i32* %a, align 4
  %conv500 = zext i32 %246 to i64
  %and501 = and i64 %conv500, 4294967295
  %shr502 = lshr i64 %and501, 27
  %or503 = or i64 %shl499, %shr502
  %and504 = and i64 %or503, 4294967295
  %247 = load i32, i32* %b, align 4
  %conv505 = zext i32 %247 to i64
  %add506 = add i64 %and504, %conv505
  %conv507 = trunc i64 %add506 to i32
  store i32 %conv507, i32* %a, align 4
  %248 = load i32, i32* %d, align 4
  %249 = load i32, i32* %b, align 4
  %250 = load i32, i32* %c, align 4
  %251 = load i32, i32* %b, align 4
  %252 = load i32, i32* %a, align 4
  %xor508 = xor i32 %251, %252
  %and509 = and i32 %250, %xor508
  %xor510 = xor i32 %249, %and509
  %add511 = add i32 %248, %xor510
  %arrayidx512 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 14
  %253 = load i32, i32* %arrayidx512, align 4
  %add513 = add i32 %add511, %253
  %conv514 = zext i32 %add513 to i64
  %add515 = add i64 %conv514, 3275163606
  %conv516 = trunc i64 %add515 to i32
  store i32 %conv516, i32* %d, align 4
  %254 = load i32, i32* %d, align 4
  %conv517 = zext i32 %254 to i64
  %shl518 = shl i64 %conv517, 9
  %255 = load i32, i32* %d, align 4
  %conv519 = zext i32 %255 to i64
  %and520 = and i64 %conv519, 4294967295
  %shr521 = lshr i64 %and520, 23
  %or522 = or i64 %shl518, %shr521
  %and523 = and i64 %or522, 4294967295
  %256 = load i32, i32* %a, align 4
  %conv524 = zext i32 %256 to i64
  %add525 = add i64 %and523, %conv524
  %conv526 = trunc i64 %add525 to i32
  store i32 %conv526, i32* %d, align 4
  %257 = load i32, i32* %c, align 4
  %258 = load i32, i32* %a, align 4
  %259 = load i32, i32* %b, align 4
  %260 = load i32, i32* %a, align 4
  %261 = load i32, i32* %d, align 4
  %xor527 = xor i32 %260, %261
  %and528 = and i32 %259, %xor527
  %xor529 = xor i32 %258, %and528
  %add530 = add i32 %257, %xor529
  %arrayidx531 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 3
  %262 = load i32, i32* %arrayidx531, align 4
  %add532 = add i32 %add530, %262
  %conv533 = zext i32 %add532 to i64
  %add534 = add i64 %conv533, 4107603335
  %conv535 = trunc i64 %add534 to i32
  store i32 %conv535, i32* %c, align 4
  %263 = load i32, i32* %c, align 4
  %conv536 = zext i32 %263 to i64
  %shl537 = shl i64 %conv536, 14
  %264 = load i32, i32* %c, align 4
  %conv538 = zext i32 %264 to i64
  %and539 = and i64 %conv538, 4294967295
  %shr540 = lshr i64 %and539, 18
  %or541 = or i64 %shl537, %shr540
  %and542 = and i64 %or541, 4294967295
  %265 = load i32, i32* %d, align 4
  %conv543 = zext i32 %265 to i64
  %add544 = add i64 %and542, %conv543
  %conv545 = trunc i64 %add544 to i32
  store i32 %conv545, i32* %c, align 4
  %266 = load i32, i32* %b, align 4
  %267 = load i32, i32* %d, align 4
  %268 = load i32, i32* %a, align 4
  %269 = load i32, i32* %d, align 4
  %270 = load i32, i32* %c, align 4
  %xor546 = xor i32 %269, %270
  %and547 = and i32 %268, %xor546
  %xor548 = xor i32 %267, %and547
  %add549 = add i32 %266, %xor548
  %arrayidx550 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 8
  %271 = load i32, i32* %arrayidx550, align 4
  %add551 = add i32 %add549, %271
  %conv552 = zext i32 %add551 to i64
  %add553 = add i64 %conv552, 1163531501
  %conv554 = trunc i64 %add553 to i32
  store i32 %conv554, i32* %b, align 4
  %272 = load i32, i32* %b, align 4
  %conv555 = zext i32 %272 to i64
  %shl556 = shl i64 %conv555, 20
  %273 = load i32, i32* %b, align 4
  %conv557 = zext i32 %273 to i64
  %and558 = and i64 %conv557, 4294967295
  %shr559 = lshr i64 %and558, 12
  %or560 = or i64 %shl556, %shr559
  %and561 = and i64 %or560, 4294967295
  %274 = load i32, i32* %c, align 4
  %conv562 = zext i32 %274 to i64
  %add563 = add i64 %and561, %conv562
  %conv564 = trunc i64 %add563 to i32
  store i32 %conv564, i32* %b, align 4
  %275 = load i32, i32* %a, align 4
  %276 = load i32, i32* %c, align 4
  %277 = load i32, i32* %d, align 4
  %278 = load i32, i32* %c, align 4
  %279 = load i32, i32* %b, align 4
  %xor565 = xor i32 %278, %279
  %and566 = and i32 %277, %xor565
  %xor567 = xor i32 %276, %and566
  %add568 = add i32 %275, %xor567
  %arrayidx569 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 13
  %280 = load i32, i32* %arrayidx569, align 4
  %add570 = add i32 %add568, %280
  %conv571 = zext i32 %add570 to i64
  %add572 = add i64 %conv571, 2850285829
  %conv573 = trunc i64 %add572 to i32
  store i32 %conv573, i32* %a, align 4
  %281 = load i32, i32* %a, align 4
  %conv574 = zext i32 %281 to i64
  %shl575 = shl i64 %conv574, 5
  %282 = load i32, i32* %a, align 4
  %conv576 = zext i32 %282 to i64
  %and577 = and i64 %conv576, 4294967295
  %shr578 = lshr i64 %and577, 27
  %or579 = or i64 %shl575, %shr578
  %and580 = and i64 %or579, 4294967295
  %283 = load i32, i32* %b, align 4
  %conv581 = zext i32 %283 to i64
  %add582 = add i64 %and580, %conv581
  %conv583 = trunc i64 %add582 to i32
  store i32 %conv583, i32* %a, align 4
  %284 = load i32, i32* %d, align 4
  %285 = load i32, i32* %b, align 4
  %286 = load i32, i32* %c, align 4
  %287 = load i32, i32* %b, align 4
  %288 = load i32, i32* %a, align 4
  %xor584 = xor i32 %287, %288
  %and585 = and i32 %286, %xor584
  %xor586 = xor i32 %285, %and585
  %add587 = add i32 %284, %xor586
  %arrayidx588 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 2
  %289 = load i32, i32* %arrayidx588, align 4
  %add589 = add i32 %add587, %289
  %conv590 = zext i32 %add589 to i64
  %add591 = add i64 %conv590, 4243563512
  %conv592 = trunc i64 %add591 to i32
  store i32 %conv592, i32* %d, align 4
  %290 = load i32, i32* %d, align 4
  %conv593 = zext i32 %290 to i64
  %shl594 = shl i64 %conv593, 9
  %291 = load i32, i32* %d, align 4
  %conv595 = zext i32 %291 to i64
  %and596 = and i64 %conv595, 4294967295
  %shr597 = lshr i64 %and596, 23
  %or598 = or i64 %shl594, %shr597
  %and599 = and i64 %or598, 4294967295
  %292 = load i32, i32* %a, align 4
  %conv600 = zext i32 %292 to i64
  %add601 = add i64 %and599, %conv600
  %conv602 = trunc i64 %add601 to i32
  store i32 %conv602, i32* %d, align 4
  %293 = load i32, i32* %c, align 4
  %294 = load i32, i32* %a, align 4
  %295 = load i32, i32* %b, align 4
  %296 = load i32, i32* %a, align 4
  %297 = load i32, i32* %d, align 4
  %xor603 = xor i32 %296, %297
  %and604 = and i32 %295, %xor603
  %xor605 = xor i32 %294, %and604
  %add606 = add i32 %293, %xor605
  %arrayidx607 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 7
  %298 = load i32, i32* %arrayidx607, align 4
  %add608 = add i32 %add606, %298
  %conv609 = zext i32 %add608 to i64
  %add610 = add i64 %conv609, 1735328473
  %conv611 = trunc i64 %add610 to i32
  store i32 %conv611, i32* %c, align 4
  %299 = load i32, i32* %c, align 4
  %conv612 = zext i32 %299 to i64
  %shl613 = shl i64 %conv612, 14
  %300 = load i32, i32* %c, align 4
  %conv614 = zext i32 %300 to i64
  %and615 = and i64 %conv614, 4294967295
  %shr616 = lshr i64 %and615, 18
  %or617 = or i64 %shl613, %shr616
  %and618 = and i64 %or617, 4294967295
  %301 = load i32, i32* %d, align 4
  %conv619 = zext i32 %301 to i64
  %add620 = add i64 %and618, %conv619
  %conv621 = trunc i64 %add620 to i32
  store i32 %conv621, i32* %c, align 4
  %302 = load i32, i32* %b, align 4
  %303 = load i32, i32* %d, align 4
  %304 = load i32, i32* %a, align 4
  %305 = load i32, i32* %d, align 4
  %306 = load i32, i32* %c, align 4
  %xor622 = xor i32 %305, %306
  %and623 = and i32 %304, %xor622
  %xor624 = xor i32 %303, %and623
  %add625 = add i32 %302, %xor624
  %arrayidx626 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 12
  %307 = load i32, i32* %arrayidx626, align 4
  %add627 = add i32 %add625, %307
  %conv628 = zext i32 %add627 to i64
  %add629 = add i64 %conv628, 2368359562
  %conv630 = trunc i64 %add629 to i32
  store i32 %conv630, i32* %b, align 4
  %308 = load i32, i32* %b, align 4
  %conv631 = zext i32 %308 to i64
  %shl632 = shl i64 %conv631, 20
  %309 = load i32, i32* %b, align 4
  %conv633 = zext i32 %309 to i64
  %and634 = and i64 %conv633, 4294967295
  %shr635 = lshr i64 %and634, 12
  %or636 = or i64 %shl632, %shr635
  %and637 = and i64 %or636, 4294967295
  %310 = load i32, i32* %c, align 4
  %conv638 = zext i32 %310 to i64
  %add639 = add i64 %and637, %conv638
  %conv640 = trunc i64 %add639 to i32
  store i32 %conv640, i32* %b, align 4
  %311 = load i32, i32* %a, align 4
  %312 = load i32, i32* %b, align 4
  %313 = load i32, i32* %c, align 4
  %xor641 = xor i32 %312, %313
  %314 = load i32, i32* %d, align 4
  %xor642 = xor i32 %xor641, %314
  %add643 = add i32 %311, %xor642
  %arrayidx644 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 5
  %315 = load i32, i32* %arrayidx644, align 4
  %add645 = add i32 %add643, %315
  %conv646 = zext i32 %add645 to i64
  %add647 = add i64 %conv646, 4294588738
  %conv648 = trunc i64 %add647 to i32
  store i32 %conv648, i32* %a, align 4
  %316 = load i32, i32* %a, align 4
  %conv649 = zext i32 %316 to i64
  %shl650 = shl i64 %conv649, 4
  %317 = load i32, i32* %a, align 4
  %conv651 = zext i32 %317 to i64
  %and652 = and i64 %conv651, 4294967295
  %shr653 = lshr i64 %and652, 28
  %or654 = or i64 %shl650, %shr653
  %and655 = and i64 %or654, 4294967295
  %318 = load i32, i32* %b, align 4
  %conv656 = zext i32 %318 to i64
  %add657 = add i64 %and655, %conv656
  %conv658 = trunc i64 %add657 to i32
  store i32 %conv658, i32* %a, align 4
  %319 = load i32, i32* %d, align 4
  %320 = load i32, i32* %a, align 4
  %321 = load i32, i32* %b, align 4
  %xor659 = xor i32 %320, %321
  %322 = load i32, i32* %c, align 4
  %xor660 = xor i32 %xor659, %322
  %add661 = add i32 %319, %xor660
  %arrayidx662 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 8
  %323 = load i32, i32* %arrayidx662, align 4
  %add663 = add i32 %add661, %323
  %conv664 = zext i32 %add663 to i64
  %add665 = add i64 %conv664, 2272392833
  %conv666 = trunc i64 %add665 to i32
  store i32 %conv666, i32* %d, align 4
  %324 = load i32, i32* %d, align 4
  %conv667 = zext i32 %324 to i64
  %shl668 = shl i64 %conv667, 11
  %325 = load i32, i32* %d, align 4
  %conv669 = zext i32 %325 to i64
  %and670 = and i64 %conv669, 4294967295
  %shr671 = lshr i64 %and670, 21
  %or672 = or i64 %shl668, %shr671
  %and673 = and i64 %or672, 4294967295
  %326 = load i32, i32* %a, align 4
  %conv674 = zext i32 %326 to i64
  %add675 = add i64 %and673, %conv674
  %conv676 = trunc i64 %add675 to i32
  store i32 %conv676, i32* %d, align 4
  %327 = load i32, i32* %c, align 4
  %328 = load i32, i32* %d, align 4
  %329 = load i32, i32* %a, align 4
  %xor677 = xor i32 %328, %329
  %330 = load i32, i32* %b, align 4
  %xor678 = xor i32 %xor677, %330
  %add679 = add i32 %327, %xor678
  %arrayidx680 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 11
  %331 = load i32, i32* %arrayidx680, align 4
  %add681 = add i32 %add679, %331
  %conv682 = zext i32 %add681 to i64
  %add683 = add i64 %conv682, 1839030562
  %conv684 = trunc i64 %add683 to i32
  store i32 %conv684, i32* %c, align 4
  %332 = load i32, i32* %c, align 4
  %conv685 = zext i32 %332 to i64
  %shl686 = shl i64 %conv685, 16
  %333 = load i32, i32* %c, align 4
  %conv687 = zext i32 %333 to i64
  %and688 = and i64 %conv687, 4294967295
  %shr689 = lshr i64 %and688, 16
  %or690 = or i64 %shl686, %shr689
  %and691 = and i64 %or690, 4294967295
  %334 = load i32, i32* %d, align 4
  %conv692 = zext i32 %334 to i64
  %add693 = add i64 %and691, %conv692
  %conv694 = trunc i64 %add693 to i32
  store i32 %conv694, i32* %c, align 4
  %335 = load i32, i32* %b, align 4
  %336 = load i32, i32* %c, align 4
  %337 = load i32, i32* %d, align 4
  %xor695 = xor i32 %336, %337
  %338 = load i32, i32* %a, align 4
  %xor696 = xor i32 %xor695, %338
  %add697 = add i32 %335, %xor696
  %arrayidx698 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 14
  %339 = load i32, i32* %arrayidx698, align 4
  %add699 = add i32 %add697, %339
  %conv700 = zext i32 %add699 to i64
  %add701 = add i64 %conv700, 4259657740
  %conv702 = trunc i64 %add701 to i32
  store i32 %conv702, i32* %b, align 4
  %340 = load i32, i32* %b, align 4
  %conv703 = zext i32 %340 to i64
  %shl704 = shl i64 %conv703, 23
  %341 = load i32, i32* %b, align 4
  %conv705 = zext i32 %341 to i64
  %and706 = and i64 %conv705, 4294967295
  %shr707 = lshr i64 %and706, 9
  %or708 = or i64 %shl704, %shr707
  %and709 = and i64 %or708, 4294967295
  %342 = load i32, i32* %c, align 4
  %conv710 = zext i32 %342 to i64
  %add711 = add i64 %and709, %conv710
  %conv712 = trunc i64 %add711 to i32
  store i32 %conv712, i32* %b, align 4
  %343 = load i32, i32* %a, align 4
  %344 = load i32, i32* %b, align 4
  %345 = load i32, i32* %c, align 4
  %xor713 = xor i32 %344, %345
  %346 = load i32, i32* %d, align 4
  %xor714 = xor i32 %xor713, %346
  %add715 = add i32 %343, %xor714
  %arrayidx716 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 1
  %347 = load i32, i32* %arrayidx716, align 4
  %add717 = add i32 %add715, %347
  %conv718 = zext i32 %add717 to i64
  %add719 = add i64 %conv718, 2763975236
  %conv720 = trunc i64 %add719 to i32
  store i32 %conv720, i32* %a, align 4
  %348 = load i32, i32* %a, align 4
  %conv721 = zext i32 %348 to i64
  %shl722 = shl i64 %conv721, 4
  %349 = load i32, i32* %a, align 4
  %conv723 = zext i32 %349 to i64
  %and724 = and i64 %conv723, 4294967295
  %shr725 = lshr i64 %and724, 28
  %or726 = or i64 %shl722, %shr725
  %and727 = and i64 %or726, 4294967295
  %350 = load i32, i32* %b, align 4
  %conv728 = zext i32 %350 to i64
  %add729 = add i64 %and727, %conv728
  %conv730 = trunc i64 %add729 to i32
  store i32 %conv730, i32* %a, align 4
  %351 = load i32, i32* %d, align 4
  %352 = load i32, i32* %a, align 4
  %353 = load i32, i32* %b, align 4
  %xor731 = xor i32 %352, %353
  %354 = load i32, i32* %c, align 4
  %xor732 = xor i32 %xor731, %354
  %add733 = add i32 %351, %xor732
  %arrayidx734 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 4
  %355 = load i32, i32* %arrayidx734, align 4
  %add735 = add i32 %add733, %355
  %conv736 = zext i32 %add735 to i64
  %add737 = add i64 %conv736, 1272893353
  %conv738 = trunc i64 %add737 to i32
  store i32 %conv738, i32* %d, align 4
  %356 = load i32, i32* %d, align 4
  %conv739 = zext i32 %356 to i64
  %shl740 = shl i64 %conv739, 11
  %357 = load i32, i32* %d, align 4
  %conv741 = zext i32 %357 to i64
  %and742 = and i64 %conv741, 4294967295
  %shr743 = lshr i64 %and742, 21
  %or744 = or i64 %shl740, %shr743
  %and745 = and i64 %or744, 4294967295
  %358 = load i32, i32* %a, align 4
  %conv746 = zext i32 %358 to i64
  %add747 = add i64 %and745, %conv746
  %conv748 = trunc i64 %add747 to i32
  store i32 %conv748, i32* %d, align 4
  %359 = load i32, i32* %c, align 4
  %360 = load i32, i32* %d, align 4
  %361 = load i32, i32* %a, align 4
  %xor749 = xor i32 %360, %361
  %362 = load i32, i32* %b, align 4
  %xor750 = xor i32 %xor749, %362
  %add751 = add i32 %359, %xor750
  %arrayidx752 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 7
  %363 = load i32, i32* %arrayidx752, align 4
  %add753 = add i32 %add751, %363
  %conv754 = zext i32 %add753 to i64
  %add755 = add i64 %conv754, 4139469664
  %conv756 = trunc i64 %add755 to i32
  store i32 %conv756, i32* %c, align 4
  %364 = load i32, i32* %c, align 4
  %conv757 = zext i32 %364 to i64
  %shl758 = shl i64 %conv757, 16
  %365 = load i32, i32* %c, align 4
  %conv759 = zext i32 %365 to i64
  %and760 = and i64 %conv759, 4294967295
  %shr761 = lshr i64 %and760, 16
  %or762 = or i64 %shl758, %shr761
  %and763 = and i64 %or762, 4294967295
  %366 = load i32, i32* %d, align 4
  %conv764 = zext i32 %366 to i64
  %add765 = add i64 %and763, %conv764
  %conv766 = trunc i64 %add765 to i32
  store i32 %conv766, i32* %c, align 4
  %367 = load i32, i32* %b, align 4
  %368 = load i32, i32* %c, align 4
  %369 = load i32, i32* %d, align 4
  %xor767 = xor i32 %368, %369
  %370 = load i32, i32* %a, align 4
  %xor768 = xor i32 %xor767, %370
  %add769 = add i32 %367, %xor768
  %arrayidx770 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 10
  %371 = load i32, i32* %arrayidx770, align 4
  %add771 = add i32 %add769, %371
  %conv772 = zext i32 %add771 to i64
  %add773 = add i64 %conv772, 3200236656
  %conv774 = trunc i64 %add773 to i32
  store i32 %conv774, i32* %b, align 4
  %372 = load i32, i32* %b, align 4
  %conv775 = zext i32 %372 to i64
  %shl776 = shl i64 %conv775, 23
  %373 = load i32, i32* %b, align 4
  %conv777 = zext i32 %373 to i64
  %and778 = and i64 %conv777, 4294967295
  %shr779 = lshr i64 %and778, 9
  %or780 = or i64 %shl776, %shr779
  %and781 = and i64 %or780, 4294967295
  %374 = load i32, i32* %c, align 4
  %conv782 = zext i32 %374 to i64
  %add783 = add i64 %and781, %conv782
  %conv784 = trunc i64 %add783 to i32
  store i32 %conv784, i32* %b, align 4
  %375 = load i32, i32* %a, align 4
  %376 = load i32, i32* %b, align 4
  %377 = load i32, i32* %c, align 4
  %xor785 = xor i32 %376, %377
  %378 = load i32, i32* %d, align 4
  %xor786 = xor i32 %xor785, %378
  %add787 = add i32 %375, %xor786
  %arrayidx788 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 13
  %379 = load i32, i32* %arrayidx788, align 4
  %add789 = add i32 %add787, %379
  %conv790 = zext i32 %add789 to i64
  %add791 = add i64 %conv790, 681279174
  %conv792 = trunc i64 %add791 to i32
  store i32 %conv792, i32* %a, align 4
  %380 = load i32, i32* %a, align 4
  %conv793 = zext i32 %380 to i64
  %shl794 = shl i64 %conv793, 4
  %381 = load i32, i32* %a, align 4
  %conv795 = zext i32 %381 to i64
  %and796 = and i64 %conv795, 4294967295
  %shr797 = lshr i64 %and796, 28
  %or798 = or i64 %shl794, %shr797
  %and799 = and i64 %or798, 4294967295
  %382 = load i32, i32* %b, align 4
  %conv800 = zext i32 %382 to i64
  %add801 = add i64 %and799, %conv800
  %conv802 = trunc i64 %add801 to i32
  store i32 %conv802, i32* %a, align 4
  %383 = load i32, i32* %d, align 4
  %384 = load i32, i32* %a, align 4
  %385 = load i32, i32* %b, align 4
  %xor803 = xor i32 %384, %385
  %386 = load i32, i32* %c, align 4
  %xor804 = xor i32 %xor803, %386
  %add805 = add i32 %383, %xor804
  %arrayidx806 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 0
  %387 = load i32, i32* %arrayidx806, align 4
  %add807 = add i32 %add805, %387
  %conv808 = zext i32 %add807 to i64
  %add809 = add i64 %conv808, 3936430074
  %conv810 = trunc i64 %add809 to i32
  store i32 %conv810, i32* %d, align 4
  %388 = load i32, i32* %d, align 4
  %conv811 = zext i32 %388 to i64
  %shl812 = shl i64 %conv811, 11
  %389 = load i32, i32* %d, align 4
  %conv813 = zext i32 %389 to i64
  %and814 = and i64 %conv813, 4294967295
  %shr815 = lshr i64 %and814, 21
  %or816 = or i64 %shl812, %shr815
  %and817 = and i64 %or816, 4294967295
  %390 = load i32, i32* %a, align 4
  %conv818 = zext i32 %390 to i64
  %add819 = add i64 %and817, %conv818
  %conv820 = trunc i64 %add819 to i32
  store i32 %conv820, i32* %d, align 4
  %391 = load i32, i32* %c, align 4
  %392 = load i32, i32* %d, align 4
  %393 = load i32, i32* %a, align 4
  %xor821 = xor i32 %392, %393
  %394 = load i32, i32* %b, align 4
  %xor822 = xor i32 %xor821, %394
  %add823 = add i32 %391, %xor822
  %arrayidx824 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 3
  %395 = load i32, i32* %arrayidx824, align 4
  %add825 = add i32 %add823, %395
  %conv826 = zext i32 %add825 to i64
  %add827 = add i64 %conv826, 3572445317
  %conv828 = trunc i64 %add827 to i32
  store i32 %conv828, i32* %c, align 4
  %396 = load i32, i32* %c, align 4
  %conv829 = zext i32 %396 to i64
  %shl830 = shl i64 %conv829, 16
  %397 = load i32, i32* %c, align 4
  %conv831 = zext i32 %397 to i64
  %and832 = and i64 %conv831, 4294967295
  %shr833 = lshr i64 %and832, 16
  %or834 = or i64 %shl830, %shr833
  %and835 = and i64 %or834, 4294967295
  %398 = load i32, i32* %d, align 4
  %conv836 = zext i32 %398 to i64
  %add837 = add i64 %and835, %conv836
  %conv838 = trunc i64 %add837 to i32
  store i32 %conv838, i32* %c, align 4
  %399 = load i32, i32* %b, align 4
  %400 = load i32, i32* %c, align 4
  %401 = load i32, i32* %d, align 4
  %xor839 = xor i32 %400, %401
  %402 = load i32, i32* %a, align 4
  %xor840 = xor i32 %xor839, %402
  %add841 = add i32 %399, %xor840
  %arrayidx842 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 6
  %403 = load i32, i32* %arrayidx842, align 4
  %add843 = add i32 %add841, %403
  %conv844 = zext i32 %add843 to i64
  %add845 = add i64 %conv844, 76029189
  %conv846 = trunc i64 %add845 to i32
  store i32 %conv846, i32* %b, align 4
  %404 = load i32, i32* %b, align 4
  %conv847 = zext i32 %404 to i64
  %shl848 = shl i64 %conv847, 23
  %405 = load i32, i32* %b, align 4
  %conv849 = zext i32 %405 to i64
  %and850 = and i64 %conv849, 4294967295
  %shr851 = lshr i64 %and850, 9
  %or852 = or i64 %shl848, %shr851
  %and853 = and i64 %or852, 4294967295
  %406 = load i32, i32* %c, align 4
  %conv854 = zext i32 %406 to i64
  %add855 = add i64 %and853, %conv854
  %conv856 = trunc i64 %add855 to i32
  store i32 %conv856, i32* %b, align 4
  %407 = load i32, i32* %a, align 4
  %408 = load i32, i32* %b, align 4
  %409 = load i32, i32* %c, align 4
  %xor857 = xor i32 %408, %409
  %410 = load i32, i32* %d, align 4
  %xor858 = xor i32 %xor857, %410
  %add859 = add i32 %407, %xor858
  %arrayidx860 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 9
  %411 = load i32, i32* %arrayidx860, align 4
  %add861 = add i32 %add859, %411
  %conv862 = zext i32 %add861 to i64
  %add863 = add i64 %conv862, 3654602809
  %conv864 = trunc i64 %add863 to i32
  store i32 %conv864, i32* %a, align 4
  %412 = load i32, i32* %a, align 4
  %conv865 = zext i32 %412 to i64
  %shl866 = shl i64 %conv865, 4
  %413 = load i32, i32* %a, align 4
  %conv867 = zext i32 %413 to i64
  %and868 = and i64 %conv867, 4294967295
  %shr869 = lshr i64 %and868, 28
  %or870 = or i64 %shl866, %shr869
  %and871 = and i64 %or870, 4294967295
  %414 = load i32, i32* %b, align 4
  %conv872 = zext i32 %414 to i64
  %add873 = add i64 %and871, %conv872
  %conv874 = trunc i64 %add873 to i32
  store i32 %conv874, i32* %a, align 4
  %415 = load i32, i32* %d, align 4
  %416 = load i32, i32* %a, align 4
  %417 = load i32, i32* %b, align 4
  %xor875 = xor i32 %416, %417
  %418 = load i32, i32* %c, align 4
  %xor876 = xor i32 %xor875, %418
  %add877 = add i32 %415, %xor876
  %arrayidx878 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 12
  %419 = load i32, i32* %arrayidx878, align 4
  %add879 = add i32 %add877, %419
  %conv880 = zext i32 %add879 to i64
  %add881 = add i64 %conv880, 3873151461
  %conv882 = trunc i64 %add881 to i32
  store i32 %conv882, i32* %d, align 4
  %420 = load i32, i32* %d, align 4
  %conv883 = zext i32 %420 to i64
  %shl884 = shl i64 %conv883, 11
  %421 = load i32, i32* %d, align 4
  %conv885 = zext i32 %421 to i64
  %and886 = and i64 %conv885, 4294967295
  %shr887 = lshr i64 %and886, 21
  %or888 = or i64 %shl884, %shr887
  %and889 = and i64 %or888, 4294967295
  %422 = load i32, i32* %a, align 4
  %conv890 = zext i32 %422 to i64
  %add891 = add i64 %and889, %conv890
  %conv892 = trunc i64 %add891 to i32
  store i32 %conv892, i32* %d, align 4
  %423 = load i32, i32* %c, align 4
  %424 = load i32, i32* %d, align 4
  %425 = load i32, i32* %a, align 4
  %xor893 = xor i32 %424, %425
  %426 = load i32, i32* %b, align 4
  %xor894 = xor i32 %xor893, %426
  %add895 = add i32 %423, %xor894
  %arrayidx896 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 15
  %427 = load i32, i32* %arrayidx896, align 4
  %add897 = add i32 %add895, %427
  %conv898 = zext i32 %add897 to i64
  %add899 = add i64 %conv898, 530742520
  %conv900 = trunc i64 %add899 to i32
  store i32 %conv900, i32* %c, align 4
  %428 = load i32, i32* %c, align 4
  %conv901 = zext i32 %428 to i64
  %shl902 = shl i64 %conv901, 16
  %429 = load i32, i32* %c, align 4
  %conv903 = zext i32 %429 to i64
  %and904 = and i64 %conv903, 4294967295
  %shr905 = lshr i64 %and904, 16
  %or906 = or i64 %shl902, %shr905
  %and907 = and i64 %or906, 4294967295
  %430 = load i32, i32* %d, align 4
  %conv908 = zext i32 %430 to i64
  %add909 = add i64 %and907, %conv908
  %conv910 = trunc i64 %add909 to i32
  store i32 %conv910, i32* %c, align 4
  %431 = load i32, i32* %b, align 4
  %432 = load i32, i32* %c, align 4
  %433 = load i32, i32* %d, align 4
  %xor911 = xor i32 %432, %433
  %434 = load i32, i32* %a, align 4
  %xor912 = xor i32 %xor911, %434
  %add913 = add i32 %431, %xor912
  %arrayidx914 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 2
  %435 = load i32, i32* %arrayidx914, align 4
  %add915 = add i32 %add913, %435
  %conv916 = zext i32 %add915 to i64
  %add917 = add i64 %conv916, 3299628645
  %conv918 = trunc i64 %add917 to i32
  store i32 %conv918, i32* %b, align 4
  %436 = load i32, i32* %b, align 4
  %conv919 = zext i32 %436 to i64
  %shl920 = shl i64 %conv919, 23
  %437 = load i32, i32* %b, align 4
  %conv921 = zext i32 %437 to i64
  %and922 = and i64 %conv921, 4294967295
  %shr923 = lshr i64 %and922, 9
  %or924 = or i64 %shl920, %shr923
  %and925 = and i64 %or924, 4294967295
  %438 = load i32, i32* %c, align 4
  %conv926 = zext i32 %438 to i64
  %add927 = add i64 %and925, %conv926
  %conv928 = trunc i64 %add927 to i32
  store i32 %conv928, i32* %b, align 4
  %439 = load i32, i32* %a, align 4
  %440 = load i32, i32* %c, align 4
  %441 = load i32, i32* %b, align 4
  %442 = load i32, i32* %d, align 4
  %neg = xor i32 %442, -1
  %or929 = or i32 %441, %neg
  %xor930 = xor i32 %440, %or929
  %add931 = add i32 %439, %xor930
  %arrayidx932 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 0
  %443 = load i32, i32* %arrayidx932, align 4
  %add933 = add i32 %add931, %443
  %conv934 = zext i32 %add933 to i64
  %add935 = add i64 %conv934, 4096336452
  %conv936 = trunc i64 %add935 to i32
  store i32 %conv936, i32* %a, align 4
  %444 = load i32, i32* %a, align 4
  %conv937 = zext i32 %444 to i64
  %shl938 = shl i64 %conv937, 6
  %445 = load i32, i32* %a, align 4
  %conv939 = zext i32 %445 to i64
  %and940 = and i64 %conv939, 4294967295
  %shr941 = lshr i64 %and940, 26
  %or942 = or i64 %shl938, %shr941
  %and943 = and i64 %or942, 4294967295
  %446 = load i32, i32* %b, align 4
  %conv944 = zext i32 %446 to i64
  %add945 = add i64 %and943, %conv944
  %conv946 = trunc i64 %add945 to i32
  store i32 %conv946, i32* %a, align 4
  %447 = load i32, i32* %d, align 4
  %448 = load i32, i32* %b, align 4
  %449 = load i32, i32* %a, align 4
  %450 = load i32, i32* %c, align 4
  %neg947 = xor i32 %450, -1
  %or948 = or i32 %449, %neg947
  %xor949 = xor i32 %448, %or948
  %add950 = add i32 %447, %xor949
  %arrayidx951 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 7
  %451 = load i32, i32* %arrayidx951, align 4
  %add952 = add i32 %add950, %451
  %conv953 = zext i32 %add952 to i64
  %add954 = add i64 %conv953, 1126891415
  %conv955 = trunc i64 %add954 to i32
  store i32 %conv955, i32* %d, align 4
  %452 = load i32, i32* %d, align 4
  %conv956 = zext i32 %452 to i64
  %shl957 = shl i64 %conv956, 10
  %453 = load i32, i32* %d, align 4
  %conv958 = zext i32 %453 to i64
  %and959 = and i64 %conv958, 4294967295
  %shr960 = lshr i64 %and959, 22
  %or961 = or i64 %shl957, %shr960
  %and962 = and i64 %or961, 4294967295
  %454 = load i32, i32* %a, align 4
  %conv963 = zext i32 %454 to i64
  %add964 = add i64 %and962, %conv963
  %conv965 = trunc i64 %add964 to i32
  store i32 %conv965, i32* %d, align 4
  %455 = load i32, i32* %c, align 4
  %456 = load i32, i32* %a, align 4
  %457 = load i32, i32* %d, align 4
  %458 = load i32, i32* %b, align 4
  %neg966 = xor i32 %458, -1
  %or967 = or i32 %457, %neg966
  %xor968 = xor i32 %456, %or967
  %add969 = add i32 %455, %xor968
  %arrayidx970 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 14
  %459 = load i32, i32* %arrayidx970, align 4
  %add971 = add i32 %add969, %459
  %conv972 = zext i32 %add971 to i64
  %add973 = add i64 %conv972, 2878612391
  %conv974 = trunc i64 %add973 to i32
  store i32 %conv974, i32* %c, align 4
  %460 = load i32, i32* %c, align 4
  %conv975 = zext i32 %460 to i64
  %shl976 = shl i64 %conv975, 15
  %461 = load i32, i32* %c, align 4
  %conv977 = zext i32 %461 to i64
  %and978 = and i64 %conv977, 4294967295
  %shr979 = lshr i64 %and978, 17
  %or980 = or i64 %shl976, %shr979
  %and981 = and i64 %or980, 4294967295
  %462 = load i32, i32* %d, align 4
  %conv982 = zext i32 %462 to i64
  %add983 = add i64 %and981, %conv982
  %conv984 = trunc i64 %add983 to i32
  store i32 %conv984, i32* %c, align 4
  %463 = load i32, i32* %b, align 4
  %464 = load i32, i32* %d, align 4
  %465 = load i32, i32* %c, align 4
  %466 = load i32, i32* %a, align 4
  %neg985 = xor i32 %466, -1
  %or986 = or i32 %465, %neg985
  %xor987 = xor i32 %464, %or986
  %add988 = add i32 %463, %xor987
  %arrayidx989 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 5
  %467 = load i32, i32* %arrayidx989, align 4
  %add990 = add i32 %add988, %467
  %conv991 = zext i32 %add990 to i64
  %add992 = add i64 %conv991, 4237533241
  %conv993 = trunc i64 %add992 to i32
  store i32 %conv993, i32* %b, align 4
  %468 = load i32, i32* %b, align 4
  %conv994 = zext i32 %468 to i64
  %shl995 = shl i64 %conv994, 21
  %469 = load i32, i32* %b, align 4
  %conv996 = zext i32 %469 to i64
  %and997 = and i64 %conv996, 4294967295
  %shr998 = lshr i64 %and997, 11
  %or999 = or i64 %shl995, %shr998
  %and1000 = and i64 %or999, 4294967295
  %470 = load i32, i32* %c, align 4
  %conv1001 = zext i32 %470 to i64
  %add1002 = add i64 %and1000, %conv1001
  %conv1003 = trunc i64 %add1002 to i32
  store i32 %conv1003, i32* %b, align 4
  %471 = load i32, i32* %a, align 4
  %472 = load i32, i32* %c, align 4
  %473 = load i32, i32* %b, align 4
  %474 = load i32, i32* %d, align 4
  %neg1004 = xor i32 %474, -1
  %or1005 = or i32 %473, %neg1004
  %xor1006 = xor i32 %472, %or1005
  %add1007 = add i32 %471, %xor1006
  %arrayidx1008 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 12
  %475 = load i32, i32* %arrayidx1008, align 4
  %add1009 = add i32 %add1007, %475
  %conv1010 = zext i32 %add1009 to i64
  %add1011 = add i64 %conv1010, 1700485571
  %conv1012 = trunc i64 %add1011 to i32
  store i32 %conv1012, i32* %a, align 4
  %476 = load i32, i32* %a, align 4
  %conv1013 = zext i32 %476 to i64
  %shl1014 = shl i64 %conv1013, 6
  %477 = load i32, i32* %a, align 4
  %conv1015 = zext i32 %477 to i64
  %and1016 = and i64 %conv1015, 4294967295
  %shr1017 = lshr i64 %and1016, 26
  %or1018 = or i64 %shl1014, %shr1017
  %and1019 = and i64 %or1018, 4294967295
  %478 = load i32, i32* %b, align 4
  %conv1020 = zext i32 %478 to i64
  %add1021 = add i64 %and1019, %conv1020
  %conv1022 = trunc i64 %add1021 to i32
  store i32 %conv1022, i32* %a, align 4
  %479 = load i32, i32* %d, align 4
  %480 = load i32, i32* %b, align 4
  %481 = load i32, i32* %a, align 4
  %482 = load i32, i32* %c, align 4
  %neg1023 = xor i32 %482, -1
  %or1024 = or i32 %481, %neg1023
  %xor1025 = xor i32 %480, %or1024
  %add1026 = add i32 %479, %xor1025
  %arrayidx1027 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 3
  %483 = load i32, i32* %arrayidx1027, align 4
  %add1028 = add i32 %add1026, %483
  %conv1029 = zext i32 %add1028 to i64
  %add1030 = add i64 %conv1029, 2399980690
  %conv1031 = trunc i64 %add1030 to i32
  store i32 %conv1031, i32* %d, align 4
  %484 = load i32, i32* %d, align 4
  %conv1032 = zext i32 %484 to i64
  %shl1033 = shl i64 %conv1032, 10
  %485 = load i32, i32* %d, align 4
  %conv1034 = zext i32 %485 to i64
  %and1035 = and i64 %conv1034, 4294967295
  %shr1036 = lshr i64 %and1035, 22
  %or1037 = or i64 %shl1033, %shr1036
  %and1038 = and i64 %or1037, 4294967295
  %486 = load i32, i32* %a, align 4
  %conv1039 = zext i32 %486 to i64
  %add1040 = add i64 %and1038, %conv1039
  %conv1041 = trunc i64 %add1040 to i32
  store i32 %conv1041, i32* %d, align 4
  %487 = load i32, i32* %c, align 4
  %488 = load i32, i32* %a, align 4
  %489 = load i32, i32* %d, align 4
  %490 = load i32, i32* %b, align 4
  %neg1042 = xor i32 %490, -1
  %or1043 = or i32 %489, %neg1042
  %xor1044 = xor i32 %488, %or1043
  %add1045 = add i32 %487, %xor1044
  %arrayidx1046 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 10
  %491 = load i32, i32* %arrayidx1046, align 4
  %add1047 = add i32 %add1045, %491
  %conv1048 = zext i32 %add1047 to i64
  %add1049 = add i64 %conv1048, 4293915773
  %conv1050 = trunc i64 %add1049 to i32
  store i32 %conv1050, i32* %c, align 4
  %492 = load i32, i32* %c, align 4
  %conv1051 = zext i32 %492 to i64
  %shl1052 = shl i64 %conv1051, 15
  %493 = load i32, i32* %c, align 4
  %conv1053 = zext i32 %493 to i64
  %and1054 = and i64 %conv1053, 4294967295
  %shr1055 = lshr i64 %and1054, 17
  %or1056 = or i64 %shl1052, %shr1055
  %and1057 = and i64 %or1056, 4294967295
  %494 = load i32, i32* %d, align 4
  %conv1058 = zext i32 %494 to i64
  %add1059 = add i64 %and1057, %conv1058
  %conv1060 = trunc i64 %add1059 to i32
  store i32 %conv1060, i32* %c, align 4
  %495 = load i32, i32* %b, align 4
  %496 = load i32, i32* %d, align 4
  %497 = load i32, i32* %c, align 4
  %498 = load i32, i32* %a, align 4
  %neg1061 = xor i32 %498, -1
  %or1062 = or i32 %497, %neg1061
  %xor1063 = xor i32 %496, %or1062
  %add1064 = add i32 %495, %xor1063
  %arrayidx1065 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 1
  %499 = load i32, i32* %arrayidx1065, align 4
  %add1066 = add i32 %add1064, %499
  %conv1067 = zext i32 %add1066 to i64
  %add1068 = add i64 %conv1067, 2240044497
  %conv1069 = trunc i64 %add1068 to i32
  store i32 %conv1069, i32* %b, align 4
  %500 = load i32, i32* %b, align 4
  %conv1070 = zext i32 %500 to i64
  %shl1071 = shl i64 %conv1070, 21
  %501 = load i32, i32* %b, align 4
  %conv1072 = zext i32 %501 to i64
  %and1073 = and i64 %conv1072, 4294967295
  %shr1074 = lshr i64 %and1073, 11
  %or1075 = or i64 %shl1071, %shr1074
  %and1076 = and i64 %or1075, 4294967295
  %502 = load i32, i32* %c, align 4
  %conv1077 = zext i32 %502 to i64
  %add1078 = add i64 %and1076, %conv1077
  %conv1079 = trunc i64 %add1078 to i32
  store i32 %conv1079, i32* %b, align 4
  %503 = load i32, i32* %a, align 4
  %504 = load i32, i32* %c, align 4
  %505 = load i32, i32* %b, align 4
  %506 = load i32, i32* %d, align 4
  %neg1080 = xor i32 %506, -1
  %or1081 = or i32 %505, %neg1080
  %xor1082 = xor i32 %504, %or1081
  %add1083 = add i32 %503, %xor1082
  %arrayidx1084 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 8
  %507 = load i32, i32* %arrayidx1084, align 4
  %add1085 = add i32 %add1083, %507
  %conv1086 = zext i32 %add1085 to i64
  %add1087 = add i64 %conv1086, 1873313359
  %conv1088 = trunc i64 %add1087 to i32
  store i32 %conv1088, i32* %a, align 4
  %508 = load i32, i32* %a, align 4
  %conv1089 = zext i32 %508 to i64
  %shl1090 = shl i64 %conv1089, 6
  %509 = load i32, i32* %a, align 4
  %conv1091 = zext i32 %509 to i64
  %and1092 = and i64 %conv1091, 4294967295
  %shr1093 = lshr i64 %and1092, 26
  %or1094 = or i64 %shl1090, %shr1093
  %and1095 = and i64 %or1094, 4294967295
  %510 = load i32, i32* %b, align 4
  %conv1096 = zext i32 %510 to i64
  %add1097 = add i64 %and1095, %conv1096
  %conv1098 = trunc i64 %add1097 to i32
  store i32 %conv1098, i32* %a, align 4
  %511 = load i32, i32* %d, align 4
  %512 = load i32, i32* %b, align 4
  %513 = load i32, i32* %a, align 4
  %514 = load i32, i32* %c, align 4
  %neg1099 = xor i32 %514, -1
  %or1100 = or i32 %513, %neg1099
  %xor1101 = xor i32 %512, %or1100
  %add1102 = add i32 %511, %xor1101
  %arrayidx1103 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 15
  %515 = load i32, i32* %arrayidx1103, align 4
  %add1104 = add i32 %add1102, %515
  %conv1105 = zext i32 %add1104 to i64
  %add1106 = add i64 %conv1105, 4264355552
  %conv1107 = trunc i64 %add1106 to i32
  store i32 %conv1107, i32* %d, align 4
  %516 = load i32, i32* %d, align 4
  %conv1108 = zext i32 %516 to i64
  %shl1109 = shl i64 %conv1108, 10
  %517 = load i32, i32* %d, align 4
  %conv1110 = zext i32 %517 to i64
  %and1111 = and i64 %conv1110, 4294967295
  %shr1112 = lshr i64 %and1111, 22
  %or1113 = or i64 %shl1109, %shr1112
  %and1114 = and i64 %or1113, 4294967295
  %518 = load i32, i32* %a, align 4
  %conv1115 = zext i32 %518 to i64
  %add1116 = add i64 %and1114, %conv1115
  %conv1117 = trunc i64 %add1116 to i32
  store i32 %conv1117, i32* %d, align 4
  %519 = load i32, i32* %c, align 4
  %520 = load i32, i32* %a, align 4
  %521 = load i32, i32* %d, align 4
  %522 = load i32, i32* %b, align 4
  %neg1118 = xor i32 %522, -1
  %or1119 = or i32 %521, %neg1118
  %xor1120 = xor i32 %520, %or1119
  %add1121 = add i32 %519, %xor1120
  %arrayidx1122 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 6
  %523 = load i32, i32* %arrayidx1122, align 4
  %add1123 = add i32 %add1121, %523
  %conv1124 = zext i32 %add1123 to i64
  %add1125 = add i64 %conv1124, 2734768916
  %conv1126 = trunc i64 %add1125 to i32
  store i32 %conv1126, i32* %c, align 4
  %524 = load i32, i32* %c, align 4
  %conv1127 = zext i32 %524 to i64
  %shl1128 = shl i64 %conv1127, 15
  %525 = load i32, i32* %c, align 4
  %conv1129 = zext i32 %525 to i64
  %and1130 = and i64 %conv1129, 4294967295
  %shr1131 = lshr i64 %and1130, 17
  %or1132 = or i64 %shl1128, %shr1131
  %and1133 = and i64 %or1132, 4294967295
  %526 = load i32, i32* %d, align 4
  %conv1134 = zext i32 %526 to i64
  %add1135 = add i64 %and1133, %conv1134
  %conv1136 = trunc i64 %add1135 to i32
  store i32 %conv1136, i32* %c, align 4
  %527 = load i32, i32* %b, align 4
  %528 = load i32, i32* %d, align 4
  %529 = load i32, i32* %c, align 4
  %530 = load i32, i32* %a, align 4
  %neg1137 = xor i32 %530, -1
  %or1138 = or i32 %529, %neg1137
  %xor1139 = xor i32 %528, %or1138
  %add1140 = add i32 %527, %xor1139
  %arrayidx1141 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 13
  %531 = load i32, i32* %arrayidx1141, align 4
  %add1142 = add i32 %add1140, %531
  %conv1143 = zext i32 %add1142 to i64
  %add1144 = add i64 %conv1143, 1309151649
  %conv1145 = trunc i64 %add1144 to i32
  store i32 %conv1145, i32* %b, align 4
  %532 = load i32, i32* %b, align 4
  %conv1146 = zext i32 %532 to i64
  %shl1147 = shl i64 %conv1146, 21
  %533 = load i32, i32* %b, align 4
  %conv1148 = zext i32 %533 to i64
  %and1149 = and i64 %conv1148, 4294967295
  %shr1150 = lshr i64 %and1149, 11
  %or1151 = or i64 %shl1147, %shr1150
  %and1152 = and i64 %or1151, 4294967295
  %534 = load i32, i32* %c, align 4
  %conv1153 = zext i32 %534 to i64
  %add1154 = add i64 %and1152, %conv1153
  %conv1155 = trunc i64 %add1154 to i32
  store i32 %conv1155, i32* %b, align 4
  %535 = load i32, i32* %a, align 4
  %536 = load i32, i32* %c, align 4
  %537 = load i32, i32* %b, align 4
  %538 = load i32, i32* %d, align 4
  %neg1156 = xor i32 %538, -1
  %or1157 = or i32 %537, %neg1156
  %xor1158 = xor i32 %536, %or1157
  %add1159 = add i32 %535, %xor1158
  %arrayidx1160 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 4
  %539 = load i32, i32* %arrayidx1160, align 4
  %add1161 = add i32 %add1159, %539
  %conv1162 = zext i32 %add1161 to i64
  %add1163 = add i64 %conv1162, 4149444226
  %conv1164 = trunc i64 %add1163 to i32
  store i32 %conv1164, i32* %a, align 4
  %540 = load i32, i32* %a, align 4
  %conv1165 = zext i32 %540 to i64
  %shl1166 = shl i64 %conv1165, 6
  %541 = load i32, i32* %a, align 4
  %conv1167 = zext i32 %541 to i64
  %and1168 = and i64 %conv1167, 4294967295
  %shr1169 = lshr i64 %and1168, 26
  %or1170 = or i64 %shl1166, %shr1169
  %and1171 = and i64 %or1170, 4294967295
  %542 = load i32, i32* %b, align 4
  %conv1172 = zext i32 %542 to i64
  %add1173 = add i64 %and1171, %conv1172
  %conv1174 = trunc i64 %add1173 to i32
  store i32 %conv1174, i32* %a, align 4
  %543 = load i32, i32* %d, align 4
  %544 = load i32, i32* %b, align 4
  %545 = load i32, i32* %a, align 4
  %546 = load i32, i32* %c, align 4
  %neg1175 = xor i32 %546, -1
  %or1176 = or i32 %545, %neg1175
  %xor1177 = xor i32 %544, %or1176
  %add1178 = add i32 %543, %xor1177
  %arrayidx1179 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 11
  %547 = load i32, i32* %arrayidx1179, align 4
  %add1180 = add i32 %add1178, %547
  %conv1181 = zext i32 %add1180 to i64
  %add1182 = add i64 %conv1181, 3174756917
  %conv1183 = trunc i64 %add1182 to i32
  store i32 %conv1183, i32* %d, align 4
  %548 = load i32, i32* %d, align 4
  %conv1184 = zext i32 %548 to i64
  %shl1185 = shl i64 %conv1184, 10
  %549 = load i32, i32* %d, align 4
  %conv1186 = zext i32 %549 to i64
  %and1187 = and i64 %conv1186, 4294967295
  %shr1188 = lshr i64 %and1187, 22
  %or1189 = or i64 %shl1185, %shr1188
  %and1190 = and i64 %or1189, 4294967295
  %550 = load i32, i32* %a, align 4
  %conv1191 = zext i32 %550 to i64
  %add1192 = add i64 %and1190, %conv1191
  %conv1193 = trunc i64 %add1192 to i32
  store i32 %conv1193, i32* %d, align 4
  %551 = load i32, i32* %c, align 4
  %552 = load i32, i32* %a, align 4
  %553 = load i32, i32* %d, align 4
  %554 = load i32, i32* %b, align 4
  %neg1194 = xor i32 %554, -1
  %or1195 = or i32 %553, %neg1194
  %xor1196 = xor i32 %552, %or1195
  %add1197 = add i32 %551, %xor1196
  %arrayidx1198 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 2
  %555 = load i32, i32* %arrayidx1198, align 4
  %add1199 = add i32 %add1197, %555
  %conv1200 = zext i32 %add1199 to i64
  %add1201 = add i64 %conv1200, 718787259
  %conv1202 = trunc i64 %add1201 to i32
  store i32 %conv1202, i32* %c, align 4
  %556 = load i32, i32* %c, align 4
  %conv1203 = zext i32 %556 to i64
  %shl1204 = shl i64 %conv1203, 15
  %557 = load i32, i32* %c, align 4
  %conv1205 = zext i32 %557 to i64
  %and1206 = and i64 %conv1205, 4294967295
  %shr1207 = lshr i64 %and1206, 17
  %or1208 = or i64 %shl1204, %shr1207
  %and1209 = and i64 %or1208, 4294967295
  %558 = load i32, i32* %d, align 4
  %conv1210 = zext i32 %558 to i64
  %add1211 = add i64 %and1209, %conv1210
  %conv1212 = trunc i64 %add1211 to i32
  store i32 %conv1212, i32* %c, align 4
  %559 = load i32, i32* %b, align 4
  %560 = load i32, i32* %d, align 4
  %561 = load i32, i32* %c, align 4
  %562 = load i32, i32* %a, align 4
  %neg1213 = xor i32 %562, -1
  %or1214 = or i32 %561, %neg1213
  %xor1215 = xor i32 %560, %or1214
  %add1216 = add i32 %559, %xor1215
  %arrayidx1217 = getelementptr [16 x i32], [16 x i32]* %W, i32 0, i64 9
  %563 = load i32, i32* %arrayidx1217, align 4
  %add1218 = add i32 %add1216, %563
  %conv1219 = zext i32 %add1218 to i64
  %add1220 = add i64 %conv1219, 3951481745
  %conv1221 = trunc i64 %add1220 to i32
  store i32 %conv1221, i32* %b, align 4
  %564 = load i32, i32* %b, align 4
  %conv1222 = zext i32 %564 to i64
  %shl1223 = shl i64 %conv1222, 21
  %565 = load i32, i32* %b, align 4
  %conv1224 = zext i32 %565 to i64
  %and1225 = and i64 %conv1224, 4294967295
  %shr1226 = lshr i64 %and1225, 11
  %or1227 = or i64 %shl1223, %shr1226
  %and1228 = and i64 %or1227, 4294967295
  %566 = load i32, i32* %c, align 4
  %conv1229 = zext i32 %566 to i64
  %add1230 = add i64 %and1228, %conv1229
  %conv1231 = trunc i64 %add1230 to i32
  store i32 %conv1231, i32* %b, align 4
  %567 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %state1232 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %567, i32 0, i32 1
  %arrayidx1233 = getelementptr [4 x i32], [4 x i32]* %state1232, i32 0, i64 0
  %568 = load i32, i32* %arrayidx1233, align 4
  %569 = load i32, i32* %a, align 4
  %add1234 = add i32 %568, %569
  %570 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %state1235 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %570, i32 0, i32 1
  %arrayidx1236 = getelementptr [4 x i32], [4 x i32]* %state1235, i32 0, i64 0
  store i32 %add1234, i32* %arrayidx1236, align 4
  %571 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %state1237 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %571, i32 0, i32 1
  %arrayidx1238 = getelementptr [4 x i32], [4 x i32]* %state1237, i32 0, i64 1
  %572 = load i32, i32* %arrayidx1238, align 4
  %573 = load i32, i32* %b, align 4
  %add1239 = add i32 %572, %573
  %574 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %state1240 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %574, i32 0, i32 1
  %arrayidx1241 = getelementptr [4 x i32], [4 x i32]* %state1240, i32 0, i64 1
  store i32 %add1239, i32* %arrayidx1241, align 4
  %575 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %state1242 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %575, i32 0, i32 1
  %arrayidx1243 = getelementptr [4 x i32], [4 x i32]* %state1242, i32 0, i64 2
  %576 = load i32, i32* %arrayidx1243, align 4
  %577 = load i32, i32* %c, align 4
  %add1244 = add i32 %576, %577
  %578 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %state1245 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %578, i32 0, i32 1
  %arrayidx1246 = getelementptr [4 x i32], [4 x i32]* %state1245, i32 0, i64 2
  store i32 %add1244, i32* %arrayidx1246, align 4
  %579 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %state1247 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %579, i32 0, i32 1
  %arrayidx1248 = getelementptr [4 x i32], [4 x i32]* %state1247, i32 0, i64 3
  %580 = load i32, i32* %arrayidx1248, align 4
  %581 = load i32, i32* %d, align 4
  %add1249 = add i32 %580, %581
  %582 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %state1250 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %582, i32 0, i32 1
  %arrayidx1251 = getelementptr [4 x i32], [4 x i32]* %state1250, i32 0, i64 3
  store i32 %add1249, i32* %arrayidx1251, align 4
  ret void
}

declare %struct._object* @PyUnicode_New(i64, i32) #1

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i32 @PyObject_GetBuffer(%struct._object*, %struct.bufferinfo*, i32) #1

declare void @PyBuffer_Release(%struct.bufferinfo*) #1

; Function Attrs: nounwind uwtable
define internal void @md5_process(%struct.md5_state* %md5, i8* %in, i64 %inlen) #0 {
entry:
  %md5.addr = alloca %struct.md5_state*, align 8
  %in.addr = alloca i8*, align 8
  %inlen.addr = alloca i64, align 8
  %n = alloca i64, align 8
  store %struct.md5_state* %md5, %struct.md5_state** %md5.addr, align 8
  store i8* %in, i8** %in.addr, align 8
  store i64 %inlen, i64* %inlen.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.26, %entry
  %0 = load i64, i64* %inlen.addr, align 8
  %cmp = icmp sgt i64 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %curlen = getelementptr inbounds %struct.md5_state, %struct.md5_state* %1, i32 0, i32 2
  %2 = load i32, i32* %curlen, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %3 = load i64, i64* %inlen.addr, align 8
  %cmp2 = icmp sge i64 %3, 64
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %5 = load i8*, i8** %in.addr, align 8
  call void @md5_compress(%struct.md5_state* %4, i8* %5)
  %6 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %length = getelementptr inbounds %struct.md5_state, %struct.md5_state* %6, i32 0, i32 0
  %7 = load i64, i64* %length, align 8
  %add = add i64 %7, 512
  store i64 %add, i64* %length, align 8
  %8 = load i8*, i8** %in.addr, align 8
  %add.ptr = getelementptr i8, i8* %8, i64 64
  store i8* %add.ptr, i8** %in.addr, align 8
  %9 = load i64, i64* %inlen.addr, align 8
  %sub = sub i64 %9, 64
  store i64 %sub, i64* %inlen.addr, align 8
  br label %if.end.26

if.else:                                          ; preds = %land.lhs.true, %while.body
  %10 = load i64, i64* %inlen.addr, align 8
  %11 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %curlen3 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %11, i32 0, i32 2
  %12 = load i32, i32* %curlen3, align 4
  %sub4 = sub i32 64, %12
  %conv = zext i32 %sub4 to i64
  %cmp5 = icmp sgt i64 %10, %conv
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %13 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %curlen7 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %13, i32 0, i32 2
  %14 = load i32, i32* %curlen7, align 4
  %sub8 = sub i32 64, %14
  %conv9 = zext i32 %sub8 to i64
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %15 = load i64, i64* %inlen.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv9, %cond.true ], [ %15, %cond.false ]
  store i64 %cond, i64* %n, align 8
  %16 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %buf = getelementptr inbounds %struct.md5_state, %struct.md5_state* %16, i32 0, i32 3
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  %17 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %curlen10 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %17, i32 0, i32 2
  %18 = load i32, i32* %curlen10, align 4
  %idx.ext = zext i32 %18 to i64
  %add.ptr11 = getelementptr i8, i8* %arraydecay, i64 %idx.ext
  %19 = load i8*, i8** %in.addr, align 8
  %20 = load i64, i64* %n, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr11, i8* %19, i64 %20, i32 1, i1 false)
  %21 = load i64, i64* %n, align 8
  %conv12 = trunc i64 %21 to i32
  %22 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %curlen13 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %22, i32 0, i32 2
  %23 = load i32, i32* %curlen13, align 4
  %add14 = add i32 %23, %conv12
  store i32 %add14, i32* %curlen13, align 4
  %24 = load i64, i64* %n, align 8
  %25 = load i8*, i8** %in.addr, align 8
  %add.ptr15 = getelementptr i8, i8* %25, i64 %24
  store i8* %add.ptr15, i8** %in.addr, align 8
  %26 = load i64, i64* %n, align 8
  %27 = load i64, i64* %inlen.addr, align 8
  %sub16 = sub i64 %27, %26
  store i64 %sub16, i64* %inlen.addr, align 8
  %28 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %curlen17 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %28, i32 0, i32 2
  %29 = load i32, i32* %curlen17, align 4
  %cmp18 = icmp eq i32 %29, 64
  br i1 %cmp18, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %cond.end
  %30 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %31 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %buf21 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %31, i32 0, i32 3
  %arraydecay22 = getelementptr inbounds [64 x i8], [64 x i8]* %buf21, i32 0, i32 0
  call void @md5_compress(%struct.md5_state* %30, i8* %arraydecay22)
  %32 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %length23 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %32, i32 0, i32 0
  %33 = load i64, i64* %length23, align 8
  %add24 = add i64 %33, 512
  store i64 %add24, i64* %length23, align 8
  %34 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %curlen25 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %34, i32 0, i32 2
  store i32 0, i32* %curlen25, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.20, %cond.end
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @MD5_get_block_size(%struct._object* %self, i8* %closure) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 64)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @MD5_get_name(%struct._object* %self, i8* %closure) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %call = call %struct._object* @PyUnicode_FromStringAndSize(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i64 3)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @md5_get_digest_size(%struct._object* %self, i8* %closure) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 16)
  ret %struct._object* %call
}

declare %struct._object* @PyLong_FromLong(i64) #1

declare %struct._object* @PyUnicode_FromStringAndSize(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @MD5_new(%struct._object* %self, %struct._object* %args, %struct._object* %kwdict) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwdict.addr = alloca %struct._object*, align 8
  %new = alloca %struct.MD5object*, align 8
  %data_obj = alloca %struct._object*, align 8
  %buf = alloca %struct.bufferinfo, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwdict, %struct._object** %kwdict.addr, align 8
  store %struct._object* null, %struct._object** %data_obj, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwdict.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @MD5_new.kwlist, i32 0, i32 0), %struct._object** %data_obj)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %data_obj, align 8
  %tobool1 = icmp ne %struct._object* %2, null
  br i1 %tobool1, label %if.then.2, label %if.end.19

if.then.2:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.2
  %3 = load %struct._object*, %struct._object** %data_obj, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %do.body
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %data_obj, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %tp_as_buffer = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 18
  %9 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer, align 8
  %cmp6 = icmp ne %struct.PyBufferProcs* %9, null
  br i1 %cmp6, label %land.lhs.true, label %if.then.10

land.lhs.true:                                    ; preds = %if.end.4
  %10 = load %struct._object*, %struct._object** %data_obj, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %tp_as_buffer8 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 18
  %12 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer8, align 8
  %bf_getbuffer = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %12, i32 0, i32 0
  %13 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer, align 8
  %cmp9 = icmp ne i32 (%struct._object*, %struct.bufferinfo*, i32)* %13, null
  br i1 %cmp9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true, %if.end.4
  %14 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %land.lhs.true
  %15 = load %struct._object*, %struct._object** %data_obj, align 8
  %call12 = call i32 @PyObject_GetBuffer(%struct._object* %15, %struct.bufferinfo* %buf, i32 0)
  %cmp13 = icmp eq i32 %call12, -1
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.11
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 5
  %16 = load i32, i32* %ndim, align 4
  %cmp16 = icmp sgt i32 %16, 1
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  %17 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0))
  call void @PyBuffer_Release(%struct.bufferinfo* %buf)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.end.15
  br label %do.end

do.end:                                           ; preds = %if.end.18
  br label %if.end.19

if.end.19:                                        ; preds = %do.end, %if.end
  %call20 = call %struct.MD5object* @newMD5object()
  store %struct.MD5object* %call20, %struct.MD5object** %new, align 8
  %cmp21 = icmp eq %struct.MD5object* %call20, null
  br i1 %cmp21, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %if.end.19
  %18 = load %struct._object*, %struct._object** %data_obj, align 8
  %tobool23 = icmp ne %struct._object* %18, null
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.22
  call void @PyBuffer_Release(%struct.bufferinfo* %buf)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.then.22
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.26:                                        ; preds = %if.end.19
  %19 = load %struct.MD5object*, %struct.MD5object** %new, align 8
  %hash_state = getelementptr inbounds %struct.MD5object, %struct.MD5object* %19, i32 0, i32 1
  call void @md5_init(%struct.md5_state* %hash_state)
  %call27 = call %struct._object* @PyErr_Occurred()
  %tobool28 = icmp ne %struct._object* %call27, null
  br i1 %tobool28, label %if.then.29, label %if.end.39

if.then.29:                                       ; preds = %if.end.26
  br label %do.body.30

do.body.30:                                       ; preds = %if.then.29
  %20 = load %struct.MD5object*, %struct.MD5object** %new, align 8
  %21 = bitcast %struct.MD5object* %20 to %struct._object*
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp31 = icmp ne i64 %dec, 0
  br i1 %cmp31, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %do.body.30
  br label %if.end.34

if.else:                                          ; preds = %do.body.30
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %if.then.32
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  %28 = load %struct._object*, %struct._object** %data_obj, align 8
  %tobool36 = icmp ne %struct._object* %28, null
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %do.end.35
  call void @PyBuffer_Release(%struct.bufferinfo* %buf)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %do.end.35
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.39:                                        ; preds = %if.end.26
  %29 = load %struct._object*, %struct._object** %data_obj, align 8
  %tobool40 = icmp ne %struct._object* %29, null
  br i1 %tobool40, label %if.then.41, label %if.end.44

if.then.41:                                       ; preds = %if.end.39
  %30 = load %struct.MD5object*, %struct.MD5object** %new, align 8
  %hash_state42 = getelementptr inbounds %struct.MD5object, %struct.MD5object* %30, i32 0, i32 1
  %buf43 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 0
  %31 = load i8*, i8** %buf43, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 2
  %32 = load i64, i64* %len, align 8
  call void @md5_process(%struct.md5_state* %hash_state42, i8* %31, i64 %32)
  call void @PyBuffer_Release(%struct.bufferinfo* %buf)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.41, %if.end.39
  %33 = load %struct.MD5object*, %struct.MD5object** %new, align 8
  %34 = bitcast %struct.MD5object* %33 to %struct._object*
  store %struct._object* %34, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.44, %if.end.38, %if.end.25, %if.then.17, %if.then.14, %if.then.10, %if.then.3, %if.then
  %35 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %35
}

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

; Function Attrs: nounwind uwtable
define internal void @md5_init(%struct.md5_state* %md5) #0 {
entry:
  %md5.addr = alloca %struct.md5_state*, align 8
  store %struct.md5_state* %md5, %struct.md5_state** %md5.addr, align 8
  %0 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %state = getelementptr inbounds %struct.md5_state, %struct.md5_state* %0, i32 0, i32 1
  %arrayidx = getelementptr [4 x i32], [4 x i32]* %state, i32 0, i64 0
  store i32 1732584193, i32* %arrayidx, align 4
  %1 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %state1 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %1, i32 0, i32 1
  %arrayidx2 = getelementptr [4 x i32], [4 x i32]* %state1, i32 0, i64 1
  store i32 -271733879, i32* %arrayidx2, align 4
  %2 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %state3 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %2, i32 0, i32 1
  %arrayidx4 = getelementptr [4 x i32], [4 x i32]* %state3, i32 0, i64 2
  store i32 -1732584194, i32* %arrayidx4, align 4
  %3 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %state5 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %3, i32 0, i32 1
  %arrayidx6 = getelementptr [4 x i32], [4 x i32]* %state5, i32 0, i64 3
  store i32 271733878, i32* %arrayidx6, align 4
  %4 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %curlen = getelementptr inbounds %struct.md5_state, %struct.md5_state* %4, i32 0, i32 2
  store i32 0, i32* %curlen, align 4
  %5 = load %struct.md5_state*, %struct.md5_state** %md5.addr, align 8
  %length = getelementptr inbounds %struct.md5_state, %struct.md5_state* %5, i32 0, i32 0
  store i64 0, i64* %length, align 8
  ret void
}

declare %struct._object* @PyErr_Occurred() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
